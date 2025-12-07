uint64_t sub_231C667DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70530, &unk_231C8C9F0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_231C668A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70530, &unk_231C8C9F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_231C66954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RecencyRequest(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_231C8BDAC();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_231C66A44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for RecencyRequest(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_231C8BDAC();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_231C66B50()
{
  v1 = sub_231C8BDAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_231C66C14()
{
  v1 = type metadata accessor for RecencyXPCSessionContext(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + *(type metadata accessor for RecencyRequest(0) + 32);
  v6 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload != 3)
        {
          goto LABEL_2;
        }

        goto LABEL_11;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_2;
      }

LABEL_11:

      goto LABEL_2;
    }

    v10 = sub_231C8BCCC();
    (*(*(v10 - 8) + 8))(v5, v10);
  }

LABEL_2:

  v7 = *(v1 + 20);
  v8 = sub_231C8BDAC();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_231C66E04()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231C66E3C()
{
  swift_unknownObjectRelease();
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_231C66E98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_231C66F04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_231C66F74@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_231C66FA4()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x72656B63697473;
  if (*v0 != 2)
  {
    v2 = 0x6574636172616863;
  }

  if (*v0)
  {
    v1 = 0x696A6F6D65;
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

uint64_t sub_231C67020@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_231C87908(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_231C67058(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 252)
  {
    v4 = *a1;
    if (v4 >= 4)
    {
      return v4 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_231C670FC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 252)
  {
    *result = a2 + 3;
  }

  else
  {
    v7 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_231C671AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70528, &qword_231C8D980);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_231C67268(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70528, &qword_231C8D980);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_231C67318(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_231C8C01C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_231C673C4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_231C8C01C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_231C67468()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_231C674A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_231C67544(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70528, &qword_231C8D980);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70530, &unk_231C8C9F0);
  v2[6] = swift_task_alloc();
  v3 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231C67680, v1, 0);
}

uint64_t sub_231C67680()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = OBJC_IVAR____TtC14RecencyService40ImageGlyphLastUsedDateTimeRequestHandler_request;
  v0[10] = OBJC_IVAR____TtC14RecencyService40ImageGlyphLastUsedDateTimeRequestHandler_request;
  v6 = v4 + v5;
  v7 = type metadata accessor for RecencyRequest(0);
  sub_231C67EB0(v6 + *(v7 + 32), v3, &qword_27DD70530, &unk_231C8C9F0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v8 = v0[2];
    sub_231C67FE0(v0[6], &qword_27DD70530, &unk_231C8C9F0);
    *v8 = xmmword_231C8C920;
    v8[1] = 0u;
    v8[2] = 0u;
    v8[3] = 0u;
    *(v8 + 57) = 0u;

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[3];
    sub_231C67F18(v0[6], v0[9], type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    v12 = *(v11 + OBJC_IVAR____TtC14RecencyService40ImageGlyphLastUsedDateTimeRequestHandler_recencyModel);
    v0[11] = v12;

    return MEMORY[0x2822009F8](sub_231C67814, v12, 0);
  }
}

uint64_t sub_231C67814()
{
  v1 = v0[3];
  ImageGlyphRecencyModel.lastEngagement(for:)(v0[9], v0[5]);

  return MEMORY[0x2822009F8](sub_231C67888, v1, 0);
}

uint64_t sub_231C67888()
{
  v1 = v0[4];
  v2 = *(v0[3] + v0[10]);
  sub_231C67EB0(v0[5], v1, &qword_27DD70528, &qword_231C8D980);
  v3 = sub_231C8BC9C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[9];
  v7 = v0[4];
  v8 = v0[5];
  if (v5 == 1)
  {
    sub_231C67FE0(v0[5], &qword_27DD70528, &qword_231C8D980);
    sub_231C67F80(v6, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    sub_231C67FE0(v7, &qword_27DD70528, &qword_231C8D980);
    v9 = 0;
  }

  else
  {
    sub_231C8BC7C();
    v9 = v10;
    sub_231C67FE0(v8, &qword_27DD70528, &qword_231C8D980);
    sub_231C67F80(v6, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    (*(v4 + 8))(v7, v3);
  }

  v11 = v0[2];
  *v11 = v2;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 8) = 0;
  *(v11 + 32) = 1;
  *(v11 + 40) = v9;
  *(v11 + 48) = v5 == 1;
  *(v11 + 56) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = -1;

  v12 = v0[1];

  return v12();
}

uint64_t sub_231C67AA4()
{
  sub_231C67F80(v0 + OBJC_IVAR____TtC14RecencyService40ImageGlyphLastUsedDateTimeRequestHandler_request, type metadata accessor for RecencyRequest);

  sub_231C67FE0(v0 + OBJC_IVAR____TtC14RecencyService40ImageGlyphLastUsedDateTimeRequestHandler_modelMigrator, &qword_27DD70650, &unk_231C8EE00);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for ImageGlyphLastUsedDateTimeRequestHandler(uint64_t a1)
{
  result = qword_27DD70518;
  if (!qword_27DD70518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231C67B7C(uint64_t a1)
{
  result = type metadata accessor for RecencyRequest(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 sub_231C67C30@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_231C67F18(a1, v8 + OBJC_IVAR____TtC14RecencyService40ImageGlyphLastUsedDateTimeRequestHandler_request, type metadata accessor for RecencyRequest);
  *(v8 + OBJC_IVAR____TtC14RecencyService40ImageGlyphLastUsedDateTimeRequestHandler_recencyModel) = a2;
  v9 = v8 + OBJC_IVAR____TtC14RecencyService40ImageGlyphLastUsedDateTimeRequestHandler_modelMigrator;
  result = *a3;
  v11 = *(a3 + 16);
  *v9 = *a3;
  *(v9 + 16) = v11;
  *(v9 + 32) = *(a3 + 32);
  *a4 = v8;
  return result;
}

uint64_t sub_231C67CD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231C67D74;

  return sub_231C67544(a1);
}

uint64_t sub_231C67D74()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
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

uint64_t sub_231C67EB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_231C67F18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_231C67F80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_231C67FE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *RecencyResponse.init(operationType:values:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 1;
  *(a3 + 40) = 0;
  *(a3 + 48) = 1;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  *(a3 + 72) = -1;
  *a3 = v3;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_231C68070()
{
  v0 = sub_231C8BCFC();
  __swift_allocate_value_buffer(v0, qword_280CFA040);
  __swift_project_value_buffer(v0, qword_280CFA040);
  return sub_231C8BCEC();
}

RecencyService::RecencyRequestResponseOperationType_optional __swiftcall RecencyRequestResponseOperationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_231C8C0FC();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t RecencyRequestResponseOperationType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7461447465736572;
  v3 = 1702257011;
  if (v1 != 5)
  {
    v3 = 1684107116;
  }

  if (v1 != 3)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0 > 4u)
  {
    v2 = v3;
  }

  v4 = 0xD00000000000001ALL;
  if (v1 == 1)
  {
    v4 = 0xD000000000000021;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000020;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_231C68238(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006573616261;
  v3 = 0x7461447465736572;
  v4 = a1;
  v5 = 1702257011;
  if (a1 != 5)
  {
    v5 = 1684107116;
  }

  v6 = 0x8000000231C8EE80;
  if (a1 == 3)
  {
    v7 = 0x7461447465736572;
  }

  else
  {
    v7 = 0xD000000000000017;
  }

  if (a1 == 3)
  {
    v6 = 0xED00006573616261;
  }

  if (a1 <= 4u)
  {
    v8 = v6;
  }

  else
  {
    v7 = v5;
    v8 = 0xE400000000000000;
  }

  v9 = 0x8000000231C8EDF0;
  v10 = 0xD000000000000020;
  v11 = 0x8000000231C8EE20;
  v12 = 0xD000000000000021;
  if (v4 != 1)
  {
    v12 = 0xD00000000000001ALL;
    v11 = 0x8000000231C8EE50;
  }

  if (v4)
  {
    v10 = v12;
    v9 = v11;
  }

  if (v4 <= 2)
  {
    v13 = v10;
  }

  else
  {
    v13 = v7;
  }

  if (v4 <= 2)
  {
    v14 = v9;
  }

  else
  {
    v14 = v8;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v2 = 0x8000000231C8EDF0;
      if (v13 != 0xD000000000000020)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    if (a2 == 1)
    {
      v2 = 0x8000000231C8EE20;
      if (v13 != 0xD000000000000021)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    v2 = 0x8000000231C8EE50;
    v3 = 0xD00000000000001ALL;
  }

  else
  {
    if (a2 > 4u)
    {
      v2 = 0xE400000000000000;
      if (a2 == 5)
      {
        if (v13 != 1702257011)
        {
          goto LABEL_40;
        }
      }

      else if (v13 != 1684107116)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    if (a2 != 3)
    {
      v2 = 0x8000000231C8EE80;
      if (v13 != 0xD000000000000017)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }
  }

  if (v13 != v3)
  {
LABEL_40:
    v15 = sub_231C8C23C();
    goto LABEL_41;
  }

LABEL_37:
  if (v14 != v2)
  {
    goto LABEL_40;
  }

  v15 = 1;
LABEL_41:

  return v15 & 1;
}

uint64_t sub_231C68420(uint64_t a1)
{
  sub_231C8BEFC();
}

uint64_t sub_231C68538(uint64_t a1, unsigned __int8 a2)
{
  sub_231C8C2BC();
  sub_231C8BEFC();

  return sub_231C8C2DC();
}

void sub_231C68668(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006573616261;
  v4 = 0x7461447465736572;
  v5 = 1702257011;
  if (v2 != 5)
  {
    v5 = 1684107116;
  }

  if (v2 != 3)
  {
    v4 = 0xD000000000000017;
    v3 = 0x8000000231C8EE80;
  }

  if (*v1 > 4u)
  {
    v4 = v5;
    v3 = 0xE400000000000000;
  }

  v6 = 0x8000000231C8EDF0;
  v7 = 0x8000000231C8EE20;
  v8 = 0xD00000000000001ALL;
  if (v2 == 1)
  {
    v8 = 0xD000000000000021;
  }

  else
  {
    v7 = 0x8000000231C8EE50;
  }

  if (*v1)
  {
    v6 = v7;
  }

  else
  {
    v8 = 0xD000000000000020;
  }

  if (*v1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (*v1 <= 2u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_231C687F8()
{
  v1 = *v0;
  sub_231C8C2BC();
  MEMORY[0x238379510](v1);
  return sub_231C8C2DC();
}

uint64_t sub_231C68840()
{
  v1 = *v0;
  sub_231C8C2BC();
  MEMORY[0x238379510](v1);
  return sub_231C8C2DC();
}

uint64_t sub_231C68884()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0x456E776F6E6B6E75;
  }
}

uint64_t sub_231C688CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x456E776F6E6B6E75 && a2 == 0xEC000000726F7272;
  if (v6 || (sub_231C8C23C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000231C8F100 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_231C8C23C();

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

uint64_t sub_231C689CC(uint64_t a1)
{
  v2 = sub_231C68FA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C68A08(uint64_t a1)
{
  v2 = sub_231C68FA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231C68A6C(uint64_t a1)
{
  v2 = sub_231C68FF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C68AA8(uint64_t a1)
{
  v2 = sub_231C68FF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231C68AE4()
{
  sub_231C8C2BC();
  MEMORY[0x238379510](0);
  return sub_231C8C2DC();
}

uint64_t sub_231C68B28()
{
  sub_231C8C2BC();
  MEMORY[0x238379510](0);
  return sub_231C8C2DC();
}

uint64_t sub_231C68B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_231C8C23C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_231C68BF4(uint64_t a1)
{
  v2 = sub_231C6904C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C68C30(uint64_t a1)
{
  v2 = sub_231C6904C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecencyResponseError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70538, &qword_231C8CA20);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v20 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70540, &qword_231C8CA28);
  v18 = *(v5 - 8);
  v19 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70548, &qword_231C8CA30);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = *v1;
  v23 = v1[1];
  v24 = v12;
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231C68FA4();
  sub_231C8C2FC();
  if (v13)
  {
    v26 = 1;
    sub_231C68FF8();
    v14 = v20;
    sub_231C8C1AC();
    v15 = v22;
    sub_231C8C1FC();
    (*(v21 + 8))(v14, v15);
  }

  else
  {
    v25 = 0;
    sub_231C6904C();
    sub_231C8C1AC();
    v16 = v19;
    sub_231C8C1FC();
    (*(v18 + 8))(v7, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_231C68FA4()
{
  result = qword_27DD70550;
  if (!qword_27DD70550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70550);
  }

  return result;
}

unint64_t sub_231C68FF8()
{
  result = qword_27DD70558;
  if (!qword_27DD70558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70558);
  }

  return result;
}

unint64_t sub_231C6904C()
{
  result = qword_27DD70560;
  if (!qword_27DD70560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70560);
  }

  return result;
}

uint64_t RecencyResponseError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70568, &qword_231C8CA38);
  v31 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70570, &qword_231C8CA40);
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70578, &qword_231C8CA48);
  v9 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v11 = &v30 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_231C68FA4();
  v13 = v34;
  sub_231C8C2EC();
  if (!v13)
  {
    v34 = v9;
    v14 = v32;
    v15 = sub_231C8C19C();
    if (*(v15 + 16) == 1)
    {
      v16 = v33;
      v36 = *(v15 + 32);
      if (v36)
      {
        v38 = 1;
        sub_231C68FF8();
        v17 = v16;
        sub_231C8C10C();
        v18 = sub_231C8C16C();
        v20 = v19;
        (*(v31 + 8))(v5, v3);
        (*(v34 + 8))(v11, v17);
        swift_unknownObjectRelease();
        v14 = v32;
      }

      else
      {
        v37 = 0;
        sub_231C6904C();
        v25 = v8;
        v26 = v16;
        sub_231C8C10C();
        v28 = v6;
        v18 = sub_231C8C16C();
        v20 = v29;
        (*(v30 + 8))(v25, v28);
        (*(v34 + 8))(v11, v26);
        swift_unknownObjectRelease();
      }

      *v14 = v18;
      *(v14 + 8) = v20;
      *(v14 + 16) = v36;
    }

    else
    {
      v21 = sub_231C8C0AC();
      swift_allocError();
      v23 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD70580, &unk_231C8CA50);
      *v23 = &type metadata for RecencyResponseError;
      v24 = v33;
      sub_231C8C11C();
      sub_231C8C09C();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
      swift_willThrow();
      (*(v34 + 8))(v11, v24);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v35);
}

uint64_t sub_231C6953C()
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

uint64_t RecencyRequest.limit.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t RecencyRequest.imageGlyph.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for RecencyRequest(0) + 32);

  return sub_231C696E8(a1, v3);
}

uint64_t sub_231C696E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70530, &unk_231C8C9F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t RecencyRequest.path.getter()
{
  v1 = *(v0 + *(type metadata accessor for RecencyRequest(0) + 36));

  return v1;
}

uint64_t RecencyRequest.path.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RecencyRequest(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RecencyRequest.init(operationType:parameters:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1025;
  v6 = type metadata accessor for RecencyRequest(0);
  v7 = *(v6 + 32);
  v8 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  result = (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  v10 = (a3 + *(v6 + 36));
  *v10 = 0;
  v10[1] = 0;
  *a3 = v5;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_231C69918()
{
  v1 = *v0;
  v2 = 0x6F6974617265706FLL;
  v3 = 0x796C476567616D69;
  v4 = 0x796C476567616D69;
  if (v1 != 4)
  {
    v4 = 1752457584;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6574656D61726170;
  if (v1 != 1)
  {
    v5 = 0x74696D696CLL;
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

uint64_t sub_231C699E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_231C6E744(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_231C69A0C(uint64_t a1)
{
  v2 = sub_231C69D6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C69A48(uint64_t a1)
{
  v2 = sub_231C69D6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecencyRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70590, &qword_231C8CA60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231C69D6C();
  sub_231C8C2FC();
  LOBYTE(v10) = *v3;
  v11 = 0;
  sub_231C69DC0();
  sub_231C8C20C();
  if (!v2)
  {
    v10 = *(v3 + 8);
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD70598, &qword_231C8CA68);
    sub_231C6A3E8(qword_280CFA700, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_231C8C1EC();
    LOBYTE(v10) = 2;
    sub_231C8C1DC();
    LOBYTE(v10) = *(v3 + 25);
    v11 = 3;
    sub_231C69E5C();
    sub_231C8C1EC();
    type metadata accessor for RecencyRequest(0);
    LOBYTE(v10) = 4;
    type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
    sub_231C6A4A8(&qword_280CFA9A0, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation, &protocol conformance descriptor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    sub_231C8C1EC();
    LOBYTE(v10) = 5;
    sub_231C8C1BC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_231C69D6C()
{
  result = qword_280CFA8B8;
  if (!qword_280CFA8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA8B8);
  }

  return result;
}

unint64_t sub_231C69DC0()
{
  result = qword_280CFA8D0;
  if (!qword_280CFA8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA8D0);
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

unint64_t sub_231C69E5C()
{
  result = qword_280CFA6C8;
  if (!qword_280CFA6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA6C8);
  }

  return result;
}

uint64_t RecencyRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70530, &unk_231C8C9F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD705A8, &qword_231C8CA70);
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = type metadata accessor for RecencyRequest(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[25] = 4;
  v13 = *(v10 + 32);
  v14 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  v15 = *(*(v14 - 8) + 56);
  v35 = v12;
  v15(&v12[v13], 1, 1, v14);
  v16 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_231C69D6C();
  v33 = v8;
  v17 = v34;
  sub_231C8C2EC();
  if (v17)
  {
    v21 = v35;
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    return sub_231C67FE0(&v21[v13], &qword_27DD70530, &unk_231C8C9F0);
  }

  else
  {
    v34 = v9;
    v18 = v5;
    v19 = v31;
    v38 = 0;
    sub_231C6A394();
    v20 = v32;
    sub_231C8C17C();
    v22 = v35;
    *v35 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD70598, &qword_231C8CA68);
    v38 = 1;
    sub_231C6A3E8(&qword_280CFA6F8, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_231C8C15C();
    v23 = v19;
    *(v22 + 8) = v37;
    LOBYTE(v37) = 2;
    *(v22 + 16) = sub_231C8C14C();
    *(v22 + 24) = v24 & 1;
    v38 = 3;
    sub_231C6A454();
    sub_231C8C15C();
    *(v22 + 25) = v37;
    LOBYTE(v37) = 4;
    sub_231C6A4A8(&qword_280CFA998, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation, &protocol conformance descriptor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    sub_231C8C15C();
    sub_231C696E8(v18, v22 + v13);
    LOBYTE(v37) = 5;
    v25 = sub_231C8C12C();
    v27 = v26;
    v28 = (v22 + *(v34 + 36));
    (*(v23 + 8))(v33, v20);
    *v28 = v25;
    v28[1] = v27;
    sub_231C702A0(v22, v30, type metadata accessor for RecencyRequest);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    return sub_231C700D0(v22, type metadata accessor for RecencyRequest);
  }
}

unint64_t sub_231C6A394()
{
  result = qword_280CFA8C0;
  if (!qword_280CFA8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA8C0);
  }

  return result;
}

uint64_t sub_231C6A3E8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DD70598, &qword_231C8CA68);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_231C6A454()
{
  result = qword_280CFA4A0;
  if (!qword_280CFA4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA4A0);
  }

  return result;
}

uint64_t sub_231C6A4A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t RecencyResponse.imageGlyphCollection.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t RecencyResponse.frequency.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t RecencyResponse.timeInterval.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t RecencyResponse.error.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 72);
  *(a1 + 16) = v4;
  return sub_231C6A614(v2, v3, v4);
}

uint64_t sub_231C6A614(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_231C6A62C(result, a2);
  }

  return result;
}

uint64_t RecencyResponse.error.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_231C6A674(*(v1 + 56), *(v1 + 64), *(v1 + 72));
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  *(v1 + 72) = v4;
  return result;
}

uint64_t sub_231C6A674(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_231C6A68C(result, a2);
  }

  return result;
}

uint64_t sub_231C6A6B4()
{
  v1 = *v0;
  v2 = 0x6F6974617265706FLL;
  v3 = 0x636E657571657266;
  v4 = 0x65746E49656D6974;
  if (v1 != 4)
  {
    v4 = 0x726F727265;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7365756C6176;
  if (v1 != 1)
  {
    v5 = 0xD000000000000014;
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

uint64_t sub_231C6A784@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_231C6E950(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_231C6A7AC(uint64_t a1)
{
  v2 = sub_231C6AB70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C6A7E8(uint64_t a1)
{
  v2 = sub_231C6AB70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecencyResponse.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD705B0, &qword_231C8CA78);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v28 = *(v1 + 2);
  v29 = v9;
  v10 = *(v1 + 3);
  v33 = v1[32];
  v11 = *(v1 + 5);
  v25 = v1[48];
  v12 = *(v1 + 8);
  v26 = *(v1 + 7);
  v27 = v10;
  v23 = v12;
  v24 = v11;
  v13 = v1[72];
  v14 = a1[3];
  v15 = a1;
  v17 = v16;
  __swift_project_boxed_opaque_existential_1(v15, v14);
  sub_231C6AB70();
  sub_231C8C2FC();
  LOBYTE(v30) = v8;
  v34 = 0;
  sub_231C69DC0();
  sub_231C8C20C();
  if (!v2)
  {
    v18 = v28;
    v22 = v13;
    v19 = v26;
    v30 = v29;
    v34 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD70598, &qword_231C8CA68);
    sub_231C6A3E8(qword_280CFA700, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_231C8C1EC();
    v30 = v18;
    v34 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD705C0, &qword_231C8CA80);
    sub_231C6B0CC(&qword_280CF9FD8, &qword_280CFA9A0, &protocol conformance descriptor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation, MEMORY[0x277D83948]);
    sub_231C8C1EC();
    LOBYTE(v30) = 3;
    sub_231C8C1CC();
    LOBYTE(v30) = 4;
    sub_231C8C1CC();
    v30 = v19;
    v31 = v23;
    v32 = v22;
    v34 = 5;
    sub_231C6A614(v19, v23, v22);
    sub_231C6ABC4();
    sub_231C8C1EC();
    sub_231C6A674(v30, v31, v32);
  }

  return (*(v5 + 8))(v7, v17);
}

unint64_t sub_231C6AB70()
{
  result = qword_280CFA7E8[0];
  if (!qword_280CFA7E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CFA7E8);
  }

  return result;
}

unint64_t sub_231C6ABC4()
{
  result = qword_280CFA220;
  if (!qword_280CFA220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA220);
  }

  return result;
}

uint64_t RecencyResponse.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD705C8, &qword_231C8CA88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231C6AB70();
  sub_231C8C2EC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    return sub_231C6A674(0, 0, 255);
  }

  else
  {
    LOBYTE(v25) = 0;
    sub_231C6A394();
    sub_231C8C17C();
    v9 = v29[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD70598, &qword_231C8CA68);
    LOBYTE(v25) = 1;
    sub_231C6A3E8(&qword_280CFA6F8, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_231C8C15C();
    v24 = v29[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD705C0, &qword_231C8CA80);
    LOBYTE(v25) = 2;
    sub_231C6B0CC(&qword_280CFA6B0, &qword_280CFA998, &protocol conformance descriptor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation, MEMORY[0x277D83978]);
    sub_231C8C15C();
    v10 = v29[0];
    LOBYTE(v29[0]) = 3;
    v23 = sub_231C8C13C();
    v40 = v11 & 1;
    LOBYTE(v29[0]) = 4;
    v22 = sub_231C8C13C();
    v39 = v12 & 1;
    v41 = 5;
    sub_231C6B168();
    sub_231C8C15C();
    (*(v6 + 8))(v8, v5);
    v13 = v36;
    v14 = v37;
    v15 = v38;
    sub_231C6A674(0, 0, 255);
    LOBYTE(v25) = v9;
    *(&v25 + 1) = v24;
    v21 = v10;
    *&v26 = v10;
    *(&v26 + 1) = v23;
    HIDWORD(v20) = v40;
    LOBYTE(v27) = v40;
    v16 = v22;
    *(&v27 + 1) = v22;
    LOBYTE(v10) = v39;
    v28[0] = v39;
    *&v28[8] = v13;
    *&v28[16] = v14;
    v28[24] = v15;
    *(a2 + 57) = *&v28[9];
    v17 = v26;
    *a2 = v25;
    a2[1] = v17;
    v18 = *v28;
    a2[2] = v27;
    a2[3] = v18;
    sub_231C6B1BC(&v25, v29);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    LOBYTE(v29[0]) = v9;
    v29[1] = v24;
    v29[2] = v21;
    v29[3] = v23;
    v30 = BYTE4(v20);
    v31 = v16;
    v32 = v10;
    v33 = v13;
    v34 = v14;
    v35 = v15;
    return sub_231C6B1F4(v29);
  }
}

uint64_t sub_231C6B0CC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD705C0, &qword_231C8CA80);
    sub_231C6A4A8(a2, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_231C6B168()
{
  result = qword_280CFA6B8;
  if (!qword_280CFA6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA6B8);
  }

  return result;
}

uint64_t RecencyXPCSessionContext.message.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecencyXPCSessionContext(0) + 20);
  v4 = sub_231C8BDAC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecencyXPCSessionContext.init(request:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_231C70308(a1, a3, type metadata accessor for RecencyRequest);
  v5 = *(type metadata accessor for RecencyXPCSessionContext(0) + 20);
  v6 = sub_231C8BDAC();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3 + v5, a2, v6);
}

uint64_t RecencyServiceListener.__allocating_init()()
{
  v0 = swift_allocObject();
  RecencyServiceListener.init()();
  return v0;
}

void *RecencyServiceListener.init()()
{
  v1 = sub_231C8C02C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_231C8BFEC();
  MEMORY[0x28223BE20](v5);
  v6 = sub_231C8BE3C();
  MEMORY[0x28223BE20](v6 - 8);
  swift_defaultActor_initialize();
  sub_231C6B6E4();
  v10[0] = "com.apple.stickers.recency";
  sub_231C8BE2C();
  v10[1] = MEMORY[0x277D84F90];
  sub_231C6A4A8(&qword_280CF9FB8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD705D0, &qword_231C8CA90);
  sub_231C6B730();
  sub_231C8C05C();
  v7 = *MEMORY[0x277D85260];
  v8 = *(v2 + 104);
  v8(v4, v7, v1);
  v0[14] = sub_231C8C03C();
  sub_231C8BE2C();
  sub_231C8BFDC();
  v8(v4, v7, v1);
  v0[15] = sub_231C8C03C();
  type metadata accessor for ImageGlyphRecencyModel(0);
  swift_allocObject();
  v0[16] = ImageGlyphRecencyModel.init(shouldDecayFrequencies:)(1);
  v0[17] = 0;
  return v0;
}

unint64_t sub_231C6B6E4()
{
  result = qword_280CF9FB0;
  if (!qword_280CF9FB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CF9FB0);
  }

  return result;
}

unint64_t sub_231C6B730()
{
  result = qword_280CF9FC8;
  if (!qword_280CF9FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DD705D0, &qword_231C8CA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CF9FC8);
  }

  return result;
}

uint64_t RecencyServiceListener.start()()
{
  *(v1 + 16) = v0;
  sub_231C8BD1C();
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231C6B824, v0, 0);
}

uint64_t sub_231C6B824()
{
  v1 = *(v0 + 16);
  if (!*(v1 + 136))
  {
    v2 = *(v1 + 112);

    sub_231C8BD0C();
    sub_231C8BD4C();
    swift_allocObject();
    *(v1 + 136) = sub_231C8BD3C();
  }

  v3 = *(v0 + 8);

  return v3(1);
}

uint64_t sub_231C6BA78(uint64_t a1, uint64_t a2)
{

  sub_231C8BD2C();
}

uint64_t RecencyServiceListener.performMigration(with:force:)(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x2822009F8](sub_231C6BB28, v2, 0);
}

uint64_t sub_231C6BB28()
{
  v1 = v0[3].i8[0];
  v2 = swift_task_alloc();
  v0[2].i64[0] = v2;
  v2[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2[2].i8[0] = v1;
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_231C6BC14;

  return sub_231C6C0E0(0xD000000000000023, 0x8000000231C8EFE0, &unk_231C8CAB8, v2);
}

uint64_t sub_231C6BC14()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_231C6BD24(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 80) = a3;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  return MEMORY[0x2822009F8](sub_231C6BD4C, a1, 0);
}

uint64_t sub_231C6BD4C()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_231C6BDEC;
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);

  return sub_231C72B94(v3, v2);
}

uint64_t sub_231C6BDEC()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    v3 = v2[6];

    return MEMORY[0x2822009F8](sub_231C6BF20, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_231C6BF20()
{
  v15 = v0;
  if (qword_280CFA038 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = sub_231C8BCFC();
  __swift_project_value_buffer(v2, qword_280CFA040);
  MEMORY[0x238379810](v1);
  v3 = sub_231C8BCDC();
  v4 = sub_231C8BFBC();
  MEMORY[0x238379800](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 72);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_231C8C26C();
    v11 = sub_231C7D5C8(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_231C65000, v3, v4, "Could not migrate recency data %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x238379930](v8, -1, -1);
    MEMORY[0x238379930](v7, -1, -1);
    MEMORY[0x238379800](v6);
  }

  else
  {

    MEMORY[0x238379800](v6);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_231C6C0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_231C6C108, v4, 0);
}

uint64_t sub_231C6C108()
{
  v12 = v0;
  v2 = v0[2];
  v1 = v0[3];
  sub_231C8C08C();

  v11[0] = 0xD000000000000024;
  v11[1] = 0x8000000231C8F140;
  MEMORY[0x238379150](v2, v1);
  v0[7] = 0xD000000000000024;
  v0[8] = 0x8000000231C8F140;
  sub_231C8BEEC();
  v0[9] = os_transaction_create();

  if (qword_280CFA038 != -1)
  {
    swift_once();
  }

  v3 = sub_231C8BCFC();
  v0[10] = __swift_project_value_buffer(v3, qword_280CFA040);

  v4 = sub_231C8BCDC();
  v5 = sub_231C8BF9C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_231C7D5C8(0xD000000000000024, 0x8000000231C8F140, v11);
    _os_log_impl(&dword_231C65000, v4, v5, "Beginning expensive work with scoped os_transaction_t named: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x238379930](v7, -1, -1);
    MEMORY[0x238379930](v6, -1, -1);
  }

  v10 = (v0[4] + *v0[4]);
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_231C6C394;

  return v10();
}

uint64_t sub_231C6C394()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_231C6C4A4, v1, 0);
}

uint64_t sub_231C6C4A4()
{
  v12 = v0;

  v1 = sub_231C8BCDC();
  v2 = sub_231C8BF9C();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[8];
  if (v3)
  {
    v5 = v0[7];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    v8 = sub_231C7D5C8(v5, v4, &v11);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_231C65000, v1, v2, "Ending expensive work with scoped os_transaction_t named: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x238379930](v7, -1, -1);
    MEMORY[0x238379930](v6, -1, -1);
  }

  else
  {
  }

  swift_unknownObjectRelease();
  v9 = v0[1];

  return v9();
}

uint64_t sub_231C6C62C()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_231C6C6E4;
  v2 = *(v0 + 16);

  return sub_231C6EB60(0xD00000000000001FLL, 0x8000000231C8F010, v2, v2);
}

uint64_t sub_231C6C6E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_231C6C814()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_231C6C8AC;

  return ImageGlyphRecencyModel.load()();
}

uint64_t sub_231C6C8AC()
{
  v2 = *v1;
  v2[4] = v0;

  if (v0)
  {
    v3 = v2[2];

    return MEMORY[0x2822009F8](sub_231C6C9E0, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_231C6C9E0()
{
  if (qword_280CFA038 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_231C8BCFC();
  __swift_project_value_buffer(v2, qword_280CFA040);
  MEMORY[0x238379810](v1);
  v3 = sub_231C8BCDC();
  v4 = sub_231C8BFBC();
  MEMORY[0x238379800](v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 32);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    MEMORY[0x238379810](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_231C65000, v3, v4, "Could not load recency model from disk: %@", v7, 0xCu);
    sub_231C67FE0(v8, &qword_27DD705E0, &qword_231C8CAA0);
    MEMORY[0x238379930](v8, -1, -1);
    MEMORY[0x238379930](v7, -1, -1);
    MEMORY[0x238379800](v6);
  }

  else
  {

    MEMORY[0x238379800](v6);
  }

  v10 = *(v0 + 8);

  return v10();
}

double sub_231C6CB84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_231C8BDAC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  if (sub_231C8BD9C())
  {
    (*(v7 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
    v9 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    (*(v7 + 32))(v10 + v9, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

    sub_231C8BD6C();
  }

  else
  {
    sub_231C6CD08(a1);
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_231C6CD08(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70658, &qword_231C8D5C8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - v5;
  v38 = type metadata accessor for RecencyXPCSessionContext(0);
  v7 = *(v38 - 8);
  v8 = MEMORY[0x28223BE20](v38);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD70660, &qword_231C8D5D0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v36 - v14;
  v16 = type metadata accessor for RecencyRequest(0);
  v42 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v39 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280CFA038 != -1)
  {
    swift_once();
  }

  v18 = sub_231C8BCFC();
  v41 = __swift_project_value_buffer(v18, qword_280CFA040);
  v19 = sub_231C8BCDC();
  v20 = sub_231C8BFAC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v37 = v7;
    v22 = a1;
    v23 = v10;
    v24 = v12;
    v25 = v6;
    v26 = v2;
    v27 = v21;
    *v21 = 0;
    _os_log_impl(&dword_231C65000, v19, v20, "Received an XPC message", v21, 2u);
    v28 = v27;
    v2 = v26;
    v6 = v25;
    v12 = v24;
    v10 = v23;
    a1 = v22;
    v7 = v37;
    MEMORY[0x238379930](v28, -1, -1);
  }

  sub_231C6A4A8(qword_280CFA178, type metadata accessor for RecencyRequest, &protocol conformance descriptor for RecencyRequest);
  sub_231C8BD8C();
  (*(v42 + 56))(v15, 0, 1, v16);
  v29 = v39;
  sub_231C70308(v15, v39, type metadata accessor for RecencyRequest);
  sub_231C702A0(v29, v12, type metadata accessor for RecencyRequest);
  v30 = *(v38 + 20);
  v31 = sub_231C8BDAC();
  (*(*(v31 - 8) + 16))(&v12[v30], a1, v31);
  v32 = sub_231C8BF8C();
  (*(*(v32 - 8) + 56))(v6, 1, 1, v32);
  sub_231C702A0(v12, v10, type metadata accessor for RecencyXPCSessionContext);
  v33 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = v2;
  sub_231C70308(v10, v34 + v33, type metadata accessor for RecencyXPCSessionContext);

  sub_231C6DB7C(0, 0, v6, &unk_231C8D5E0, v34);

  sub_231C700D0(v12, type metadata accessor for RecencyXPCSessionContext);
  return sub_231C700D0(v29, type metadata accessor for RecencyRequest);
}

void sub_231C6D288(uint64_t a1)
{
  v2 = sub_231C8BD5C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280CFA038 != -1)
  {
    swift_once();
  }

  v6 = sub_231C8BCFC();
  __swift_project_value_buffer(v6, qword_280CFA040);
  v7 = *(v3 + 16);
  v7(v5, a1, v2);
  v8 = sub_231C8BCDC();
  v9 = sub_231C8BFBC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    sub_231C6A4A8(&qword_280CFA030, MEMORY[0x277D855E8], MEMORY[0x277D855F0]);
    swift_allocError();
    v7(v12, v5, v2);
    v13 = _swift_stdlib_bridgeErrorToNSError();
    (*(v3 + 8))(v5, v2);
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_231C65000, v8, v9, "XPC session was cancelled: %@", v10, 0xCu);
    sub_231C67FE0(v11, &qword_27DD705E0, &qword_231C8CAA0);
    MEMORY[0x238379930](v11, -1, -1);
    MEMORY[0x238379930](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_231C6D50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_231C6D52C, 0, 0);
}

uint64_t sub_231C6D52C()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_231C707EC;

  return sub_231C6C0E0(0xD000000000000023, 0x8000000231C8F190, &unk_231C8D600, v1);
}

uint64_t sub_231C6D610(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for RecencyXPCSessionContext(0);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231C6D6A0, 0, 0);
}

uint64_t sub_231C6D6A0()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_231C702A0(v0[2], v1, type metadata accessor for RecencyXPCSessionContext);
  v3 = *(v2 + 128);
  type metadata accessor for RequestDispatcher(0);
  v4 = swift_allocObject();
  v0[5] = v4;

  swift_defaultActor_initialize();
  sub_231C70308(v1, v4 + OBJC_IVAR____TtC14RecencyService17RequestDispatcher_sessionContext, type metadata accessor for RecencyXPCSessionContext);
  *(v4 + 112) = v3;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0u;
  *(v4 + 152) = 0;

  return MEMORY[0x2822009F8](sub_231C6D78C, v4, 0);
}

uint64_t sub_231C6D78C()
{
  sub_231C6D7FC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_231C6D7FC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70658, &qword_231C8D5C8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v21 - v3;
  v5 = type metadata accessor for RecencyRequest(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = os_transaction_create();
  if (result)
  {
    v9 = result;
    v10 = OBJC_IVAR____TtC14RecencyService17RequestDispatcher_sessionContext;
    v11 = *(v1 + 112);
    v12 = *(v1 + OBJC_IVAR____TtC14RecencyService17RequestDispatcher_sessionContext);
    if (v12 <= 2)
    {
      if (*(v1 + OBJC_IVAR____TtC14RecencyService17RequestDispatcher_sessionContext))
      {
        if (v12 == 1)
        {
          UsedDateTimeRequestHandler = type metadata accessor for ImageGlyphRecordEngagementRequestHandler(0);
          v14 = &off_2846E9ED0;
        }

        else
        {
          UsedDateTimeRequestHandler = type metadata accessor for ImageGlyphRecencyRequestHandler(0);
          v14 = &off_2846E97C0;
        }
      }

      else
      {
        UsedDateTimeRequestHandler = type metadata accessor for ImageGlyphLastUsedDateTimeRequestHandler(0);
        v14 = &off_2846E9260;
      }
    }

    else if (*(v1 + OBJC_IVAR____TtC14RecencyService17RequestDispatcher_sessionContext) > 4u)
    {
      if (v12 == 5)
      {
        UsedDateTimeRequestHandler = type metadata accessor for SaveHandler(0);
        v14 = &off_2846E9880;
      }

      else
      {
        UsedDateTimeRequestHandler = type metadata accessor for LoadHandler(0);
        v14 = &off_2846E9EB8;
      }
    }

    else if (v12 == 3)
    {
      UsedDateTimeRequestHandler = type metadata accessor for ResetDatabaseHandler(0);
      v14 = &off_2846E97D8;
    }

    else
    {
      UsedDateTimeRequestHandler = type metadata accessor for PerformMigrationHandler(0);
      v14 = &off_2846E9F88;
    }

    sub_231C702A0(v1 + v10, v7, type metadata accessor for RecencyRequest);
    sub_231C67EB0(v1 + 120, v21, &qword_27DD70650, &unk_231C8EE00);
    v15 = v14[1];
    v23[3] = UsedDateTimeRequestHandler;
    v23[4] = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);

    v15(v7, v11, v21, boxed_opaque_existential_1);
    v17 = sub_231C8BF8C();
    (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
    sub_231C67EB0(v23, v21, &unk_27DD70670, &unk_231C8D610);
    v18 = sub_231C6A4A8(&unk_280CFA148, type metadata accessor for RequestDispatcher, &unk_231C8D3FC);
    v19 = swift_allocObject();
    *(v19 + 16) = v1;
    *(v19 + 24) = v18;
    v20 = v21[1];
    *(v19 + 32) = v21[0];
    *(v19 + 48) = v20;
    *(v19 + 64) = v22;
    *(v19 + 72) = v1;
    *(v19 + 80) = v9;
    swift_retain_n();
    swift_unknownObjectRetain();
    sub_231C6DB7C(0, 0, v4, &unk_231C8D620, v19);
    swift_unknownObjectRelease();

    return sub_231C67FE0(v23, &unk_27DD70670, &unk_231C8D610);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_231C6DB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70658, &qword_231C8D5C8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_231C67EB0(a3, v25 - v10, &qword_27DD70658, &qword_231C8D5C8);
  v12 = sub_231C8BF8C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_231C67FE0(v11, &qword_27DD70658, &qword_231C8D5C8);
  }

  else
  {
    sub_231C8BF7C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_231C8BF6C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_231C8BEEC() + 32;
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

      sub_231C67FE0(a3, &qword_27DD70658, &qword_231C8D5C8);

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

  sub_231C67FE0(a3, &qword_27DD70658, &qword_231C8D5C8);
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

uint64_t RecencyServiceListener.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t RecencyServiceListener.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_231C6DF20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231C6DFB0;

  return RecencyServiceListener.start()();
}

uint64_t sub_231C6DFB0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_231C6E0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 456) = a4;
  *(v5 + 464) = a5;
  return MEMORY[0x2822009F8](sub_231C6E0CC, a5, 0);
}

uint64_t sub_231C6E0CC()
{
  sub_231C67EB0(v0[57], (v0 + 52), &unk_27DD70670, &unk_231C8D610);
  v1 = v0[55];
  if (v1)
  {
    v2 = v0[56];
    __swift_project_boxed_opaque_existential_1(v0 + 52, v0[55]);
    v6 = (*(v2 + 16) + **(v2 + 16));
    v3 = swift_task_alloc();
    v0[59] = v3;
    *v3 = v0;
    v3[1] = sub_231C6E268;

    return v6(v0 + 2, v1, v2);
  }

  else
  {
    sub_231C67FE0((v0 + 52), &unk_27DD70670, &unk_231C8D610);
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_231C6E268()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  v3 = *(v2 + 464);
  if (v0)
  {
    v4 = sub_231C6E4A4;
  }

  else
  {
    v4 = sub_231C6E394;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_231C6E394()
{
  v1 = *(v0 + 64);
  *(v0 + 288) = *(v0 + 48);
  *(v0 + 304) = v1;
  *(v0 + 313) = *(v0 + 73);
  v2 = *(v0 + 32);
  *(v0 + 256) = *(v0 + 16);
  *(v0 + 272) = v2;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 416));
  v3 = *(v0 + 264);
  if (v3 != 1)
  {
    v4 = *(v0 + 256);
    type metadata accessor for RecencyXPCSessionContext(0);
    *(v0 + 336) = v4;
    *(v0 + 344) = v3;
    v5 = *(v0 + 288);
    *(v0 + 352) = *(v0 + 272);
    *(v0 + 368) = v5;
    *(v0 + 384) = *(v0 + 304);
    *(v0 + 393) = *(v0 + 313);
    sub_231C70798();
    sub_231C8BD7C();
    sub_231C67FE0(v0 + 256, &unk_27DD706F0, &unk_231C8D630);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_231C6E4A4()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 464);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 416));
  v3 = *(v2 + OBJC_IVAR____TtC14RecencyService17RequestDispatcher_sessionContext);
  v4 = sub_231C877F4(&unk_2846E9220);
  sub_231C67FE0(&unk_2846E9240, &unk_27DD706E0, &qword_231C8D628);
  *(v0 + 96) = v3;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 104) = v4;
  *(v0 + 128) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 168) = -1;
  type metadata accessor for RecencyXPCSessionContext(0);
  v5 = *(v0 + 112);
  v6 = *(v0 + 144);
  *(v0 + 208) = *(v0 + 128);
  *(v0 + 224) = v6;
  *(v0 + 233) = *(v0 + 153);
  *(v0 + 176) = *(v0 + 96);
  *(v0 + 192) = v5;
  sub_231C70798();
  sub_231C8BD7C();
  MEMORY[0x238379800](v1);
  sub_231C6B1F4(v0 + 96);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_231C6E5E8()
{

  sub_231C67FE0(v0 + 120, &qword_27DD70650, &unk_231C8EE00);
  sub_231C700D0(v0 + OBJC_IVAR____TtC14RecencyService17RequestDispatcher_sessionContext, type metadata accessor for RecencyXPCSessionContext);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_231C6E69C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_231C67D74;

  return sub_231C6BD24(v2, v3, v4);
}

uint64_t sub_231C6E744(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6974617265706FLL && a2 == 0xED0000657079546ELL;
  if (v4 || (sub_231C8C23C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372 || (sub_231C8C23C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74696D696CLL && a2 == 0xE500000000000000 || (sub_231C8C23C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x796C476567616D69 && a2 == 0xEE00657079546870 || (sub_231C8C23C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x796C476567616D69 && a2 == 0xEA00000000006870 || (sub_231C8C23C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1752457584 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_231C8C23C();

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

uint64_t sub_231C6E950(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6974617265706FLL && a2 == 0xED0000657079546ELL;
  if (v4 || (sub_231C8C23C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (sub_231C8C23C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000231C8F120 == a2 || (sub_231C8C23C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xE900000000000079 || (sub_231C8C23C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65746E49656D6974 && a2 == 0xEC0000006C617672 || (sub_231C8C23C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_231C8C23C();

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

uint64_t sub_231C6EB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_231C6EB84, a3, 0);
}

uint64_t sub_231C6EB84()
{
  v12 = v0;
  v2 = v0[2];
  v1 = v0[3];
  sub_231C8C08C();

  v11[0] = 0xD000000000000024;
  v11[1] = 0x8000000231C8F140;
  MEMORY[0x238379150](v2, v1);
  v0[6] = 0xD000000000000024;
  v0[7] = 0x8000000231C8F140;
  sub_231C8BEEC();
  v0[8] = os_transaction_create();

  if (qword_280CFA038 != -1)
  {
    swift_once();
  }

  v3 = sub_231C8BCFC();
  v0[9] = __swift_project_value_buffer(v3, qword_280CFA040);

  v4 = sub_231C8BCDC();
  v5 = sub_231C8BF9C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_231C7D5C8(0xD000000000000024, 0x8000000231C8F140, v11);
    _os_log_impl(&dword_231C65000, v4, v5, "Beginning expensive work with scoped os_transaction_t named: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x238379930](v7, -1, -1);
    MEMORY[0x238379930](v6, -1, -1);
  }

  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_231C6EDB8;
  v9 = v0[5];

  return sub_231C6C7F4(v9);
}

uint64_t sub_231C6EDB8()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_231C6EEC8, v1, 0);
}

uint64_t sub_231C6EEC8()
{
  v12 = v0;

  v1 = sub_231C8BCDC();
  v2 = sub_231C8BF9C();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[7];
  if (v3)
  {
    v5 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    v8 = sub_231C7D5C8(v5, v4, &v11);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_231C65000, v1, v2, "Ending expensive work with scoped os_transaction_t named: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x238379930](v7, -1, -1);
    MEMORY[0x238379930](v6, -1, -1);
  }

  else
  {
  }

  swift_unknownObjectRelease();
  v9 = v0[1];

  return v9();
}

unint64_t sub_231C6F034()
{
  result = qword_27DD705E8;
  if (!qword_27DD705E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD705E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecencyRequestResponseOperationType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RecencyRequestResponseOperationType(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_231C6F208(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_231C6F250(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_231C6F2D8(uint64_t a1)
{
  sub_231C6F3E4(319);
  if (v1 <= 0x3F)
  {
    sub_231C6F4A0(319, &qword_280CFA6D0, MEMORY[0x277D83B88]);
    if (v2 <= 0x3F)
    {
      sub_231C6F4A0(319, &qword_280CFA8D8, &type metadata for ImageGlyphRecencyModel.ImageGlyphType);
      if (v3 <= 0x3F)
      {
        sub_231C6F448(319);
        if (v4 <= 0x3F)
        {
          sub_231C6F4A0(319, &unk_280CFA6D8, MEMORY[0x277D837D0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_231C6F3E4(uint64_t a1)
{
  if (!qword_280CFA6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DD70598, &qword_231C8CA68);
    v1 = sub_231C8C04C();
    if (!v2)
    {
      atomic_store(v1, &qword_280CFA6E8);
    }
  }
}

void sub_231C6F448(uint64_t a1)
{
  if (!qword_280CFA950)
  {
    type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(255);
    v1 = sub_231C8C04C();
    if (!v2)
    {
      atomic_store(v1, &qword_280CFA950);
    }
  }
}

void sub_231C6F4A0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_231C8C04C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_14RecencyService0A13ResponseErrorOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_231C6F524(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 73))
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

uint64_t sub_231C6F580(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_231C6F620(uint64_t a1)
{
  result = type metadata accessor for RecencyRequest(319);
  if (v2 <= 0x3F)
  {
    result = sub_231C8BDAC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_231C6F71C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231C6F754(uint64_t a1)
{
  result = type metadata accessor for RecencyXPCSessionContext(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_231C6F818(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_231C6F8A8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RecencyResponseError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RecencyResponseError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_231C6FACC(unsigned int *a1, int a2)
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

_WORD *sub_231C6FB1C(_WORD *result, int a2, int a3)
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

unint64_t sub_231C6FBAC()
{
  result = qword_27DD705F8;
  if (!qword_27DD705F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD705F8);
  }

  return result;
}

unint64_t sub_231C6FC04()
{
  result = qword_27DD70600;
  if (!qword_27DD70600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70600);
  }

  return result;
}

unint64_t sub_231C6FC5C()
{
  result = qword_27DD70608;
  if (!qword_27DD70608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70608);
  }

  return result;
}

unint64_t sub_231C6FCB4()
{
  result = qword_27DD70610;
  if (!qword_27DD70610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70610);
  }

  return result;
}

unint64_t sub_231C6FD0C()
{
  result = qword_27DD70618;
  if (!qword_27DD70618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70618);
  }

  return result;
}

unint64_t sub_231C6FD64()
{
  result = qword_280CFA7D0;
  if (!qword_280CFA7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA7D0);
  }

  return result;
}

unint64_t sub_231C6FDBC()
{
  result = qword_280CFA7D8;
  if (!qword_280CFA7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA7D8);
  }

  return result;
}

unint64_t sub_231C6FE14()
{
  result = qword_280CFA8A0;
  if (!qword_280CFA8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA8A0);
  }

  return result;
}

unint64_t sub_231C6FE6C()
{
  result = qword_280CFA8A8;
  if (!qword_280CFA8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA8A8);
  }

  return result;
}

unint64_t sub_231C6FEC4()
{
  result = qword_27DD70620;
  if (!qword_27DD70620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70620);
  }

  return result;
}

unint64_t sub_231C6FF1C()
{
  result = qword_27DD70628;
  if (!qword_27DD70628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70628);
  }

  return result;
}

unint64_t sub_231C6FF74()
{
  result = qword_27DD70630;
  if (!qword_27DD70630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70630);
  }

  return result;
}

unint64_t sub_231C6FFCC()
{
  result = qword_27DD70638;
  if (!qword_27DD70638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70638);
  }

  return result;
}

unint64_t sub_231C70024()
{
  result = qword_27DD70640;
  if (!qword_27DD70640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70640);
  }

  return result;
}

unint64_t sub_231C7007C()
{
  result = qword_27DD70648;
  if (!qword_27DD70648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70648);
  }

  return result;
}

uint64_t sub_231C700D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_231C70130()
{
  result = qword_280CFA8C8;
  if (!qword_280CFA8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA8C8);
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

uint64_t sub_231C702A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_231C70308(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_231C70370(uint64_t a1)
{
  v4 = *(type metadata accessor for RecencyXPCSessionContext(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_231C7080C;

  return sub_231C6D50C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_231C70468(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_231C7080C;

  return sub_231C8B2FC(a1, v4);
}

uint64_t sub_231C70520(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_231C67D74;

  return sub_231C8B2FC(a1, v4);
}

uint64_t sub_231C705D8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_231C7080C;

  return sub_231C6D610(v2, v3);
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

uint64_t sub_231C706D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_231C7080C;

  return sub_231C6E0AC(a1, v4, v5, (v1 + 4), v6);
}

unint64_t sub_231C70798()
{
  result = qword_280CFA168;
  if (!qword_280CFA168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CFA168);
  }

  return result;
}

uint64_t sub_231C7083C(uint64_t a1)
{
  *(v2 + 256) = a1;
  *(v2 + 264) = v1;
  return MEMORY[0x2822009F8](sub_231C7085C, v1, 0);
}

uint64_t sub_231C7085C()
{
  v1 = *(v0 + 264);
  v2 = OBJC_IVAR____TtC14RecencyService31ImageGlyphRecencyRequestHandler_request;
  *(v0 + 272) = OBJC_IVAR____TtC14RecencyService31ImageGlyphRecencyRequestHandler_request;
  v3 = v1 + v2;
  *(v0 + 280) = *(v3 + 16);
  *(v0 + 89) = *(v3 + 24);
  v4 = *(v1 + OBJC_IVAR____TtC14RecencyService31ImageGlyphRecencyRequestHandler_recencyModel);
  *(v0 + 288) = v4;
  *(v0 + 176) = *(v3 + 25);
  return MEMORY[0x2822009F8](sub_231C708B0, v4, 0);
}

uint64_t sub_231C708B0()
{
  v1 = *(v0 + 264);
  if (*(v0 + 89))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v0 + 280);
  }

  *(v0 + 296) = ImageGlyphRecencyModel.recentlyUsed(ofType:limit:)((v0 + 176), v2);

  return MEMORY[0x2822009F8](sub_231C70930, v1, 0);
}

uint64_t sub_231C70930()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 256);
  v3 = *(*(v0 + 264) + *(v0 + 272));
  v4 = sub_231C877F4(MEMORY[0x277D84F90]);
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  *(v0 + 112) = v1;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 168) = -1;
  v6 = *(v0 + 128);
  v5 = *(v0 + 144);
  v7 = *(v0 + 153);
  v2[1] = *(v0 + 112);
  v2[2] = v6;
  *(v2 + 57) = v7;
  v2[3] = v5;
  *v2 = *(v0 + 96);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 32) = v1;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = -1;
  sub_231C6B1BC(v0 + 96, v0 + 176);
  sub_231C6B1F4(v0 + 16);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_231C70A3C()
{
  sub_231C70D38(v0 + OBJC_IVAR____TtC14RecencyService31ImageGlyphRecencyRequestHandler_request);

  sub_231C70D94(v0 + OBJC_IVAR____TtC14RecencyService31ImageGlyphRecencyRequestHandler_modelMigrator);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for ImageGlyphRecencyRequestHandler(uint64_t a1)
{
  result = qword_280CFA5B0;
  if (!qword_280CFA5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231C70AF0(uint64_t a1)
{
  result = type metadata accessor for RecencyRequest(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 sub_231C70BA4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_231C70CD4(a1, v8 + OBJC_IVAR____TtC14RecencyService31ImageGlyphRecencyRequestHandler_request);
  *(v8 + OBJC_IVAR____TtC14RecencyService31ImageGlyphRecencyRequestHandler_recencyModel) = a2;
  v9 = v8 + OBJC_IVAR____TtC14RecencyService31ImageGlyphRecencyRequestHandler_modelMigrator;
  result = *a3;
  v11 = *(a3 + 16);
  *v9 = *a3;
  *(v9 + 16) = v11;
  *(v9 + 32) = *(a3 + 32);
  *a4 = v8;
  return result;
}

uint64_t sub_231C70C38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231C67D74;

  return sub_231C7083C(a1);
}

uint64_t sub_231C70CD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecencyRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_231C70D38(uint64_t a1)
{
  v2 = type metadata accessor for RecencyRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231C70D94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70650, &unk_231C8EE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231C70DFC()
{
  sub_231C70D38(v0 + OBJC_IVAR____TtC14RecencyService20ResetDatabaseHandler_request);

  sub_231C70D94(v0 + OBJC_IVAR____TtC14RecencyService20ResetDatabaseHandler_modelMigrator);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for ResetDatabaseHandler(uint64_t a1)
{
  result = qword_27DD70760;
  if (!qword_27DD70760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231C70EB0(uint64_t a1)
{
  result = type metadata accessor for RecencyRequest(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 sub_231C70F64@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_231C70CD4(a1, v8 + OBJC_IVAR____TtC14RecencyService20ResetDatabaseHandler_request);
  *(v8 + OBJC_IVAR____TtC14RecencyService20ResetDatabaseHandler_recencyModel) = a2;
  v9 = v8 + OBJC_IVAR____TtC14RecencyService20ResetDatabaseHandler_modelMigrator;
  result = *a3;
  v11 = *(a3 + 16);
  *v9 = *a3;
  *(v9 + 16) = v11;
  *(v9 + 32) = *(a3 + 32);
  *a4 = v8;
  return result;
}

uint64_t sub_231C70FF8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_231C71018, v3, 0);
}

uint64_t sub_231C71018()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC14RecencyService20ResetDatabaseHandler_recencyModel);
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_231C71044, v1, 0);
}

uint64_t sub_231C71044()
{
  v1 = *(v0 + 24);
  ImageGlyphRecencyModel.reset(shouldPopulateDefaultData:shouldPurgeMigrationRecords:)(1, 0);

  return MEMORY[0x2822009F8](sub_231C710B4, v1, 0);
}

uint64_t sub_231C710B4()
{
  v1 = *(v0 + 16);
  *v1 = xmmword_231C8C920;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  *(v1 + 57) = 0u;
  return (*(v0 + 8))();
}

uint64_t ImageGlyphValidator.ImageGlyphValidatorError.hashValue.getter()
{
  v1 = *v0;
  sub_231C8C2BC();
  MEMORY[0x238379510](v1);
  return sub_231C8C2DC();
}

uint64_t sub_231C71178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ImageGlyphValidator.validate()()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231C71270, 0, 0);
}

uint64_t sub_231C71270()
{
  sub_231C71734(v0[2], v0[4]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[4];
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_231C717EC(v0[4]);
    }

    else
    {
      v8 = *v2;
      v9 = v2[1];
      if (v8 == 58 && v9 == 0xE100000000000000)
      {
      }

      else
      {
        v11 = sub_231C8C23C();

        if ((v11 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      sub_231C71798();
      swift_allocError();
      *v12 = 2;
      swift_willThrow();
    }

LABEL_18:

    v13 = v0[1];

    return v13();
  }

  if (!EnumCaseMultiPayload)
  {
    sub_231C71798();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();
    sub_231C717EC(v2);
    goto LABEL_18;
  }

  v4 = *v2;
  v5 = v2[1];
  v0[5] = v5;
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_231C71458;

  return sub_231C71644(v4, v5);
}

uint64_t sub_231C71458()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_231C715D8;
  }

  else
  {
    v2 = sub_231C7156C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_231C7156C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_231C715D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_231C71644(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_231C71664, 0, 0);
}

uint64_t sub_231C71664()
{
  v1 = v0[3];
  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = v0[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v2 && (v3 = sub_231C8BE9C(), IsSingleEmoji = CEMStringIsSingleEmoji(), v3, IsSingleEmoji))
  {
    v5 = v0[1];
  }

  else
  {
    sub_231C71798();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    v5 = v0[1];
  }

  return v5();
}

uint64_t sub_231C71734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_231C71798()
{
  result = qword_27DD70770;
  if (!qword_27DD70770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70770);
  }

  return result;
}

uint64_t sub_231C717EC(uint64_t a1)
{
  v2 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_231C7184C()
{
  result = qword_27DD70778;
  if (!qword_27DD70778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD70778);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageGlyphValidator.ImageGlyphValidatorError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ImageGlyphValidator.ImageGlyphValidatorError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for ImageGlyphValidator(uint64_t a1)
{
  result = qword_27DD70780;
  if (!qword_27DD70780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231C71A64(uint64_t a1)
{
  result = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_231C71AD0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_231C8BBFC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707A0, &unk_231C8D900);
  v2[7] = swift_task_alloc();
  v4 = sub_231C8BC2C();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231C71C24, v1, 0);
}

uint64_t sub_231C71C24()
{
  v1 = v0[3];
  v2 = v1 + OBJC_IVAR____TtC14RecencyService11SaveHandler_request;
  if (*(v2 + *(type metadata accessor for RecencyRequest(0) + 36) + 8))
  {
    v3 = v0[9];
    v5 = v0[7];
    v4 = v0[8];
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];
    v0[11] = *(v1 + OBJC_IVAR____TtC14RecencyService11SaveHandler_recencyModel);
    (*(v3 + 56))(v5, 1, 1, v4);
    (*(v7 + 104))(v6, *MEMORY[0x277CC91D8], v8);

    sub_231C8BC1C();
    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_231C71DEC;

    return sub_231C7C5F0();
  }

  else
  {
    v11 = v0[2];
    *v11 = xmmword_231C8C920;
    v11[1] = 0u;
    v11[2] = 0u;
    v11[3] = 0u;
    *(v11 + 57) = 0u;

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_231C71DEC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v6[16] = v2;
    v7 = v6[3];
    (*(v6[9] + 8))(v6[10], v6[8]);
    v8 = sub_231C720C0;
    v9 = v7;
  }

  else
  {
    v9 = v6[11];
    v6[14] = a2;
    v6[15] = a1;
    v8 = sub_231C71F4C;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_231C71F4C()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  sub_231C8BC4C();
  sub_231C723D0(v2, v1);
  if (v3)
  {
    v0[16] = v3;
    v4 = v0[3];
    (*(v0[9] + 8))(v0[10], v0[8]);
    v5 = sub_231C720C0;
  }

  else
  {
    v4 = v0[3];
    (*(v0[9] + 8))(v0[10], v0[8]);
    v5 = sub_231C7202C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_231C7202C()
{
  v1 = *(v0 + 16);
  *v1 = xmmword_231C8C920;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  *(v1 + 57) = 0u;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_231C720C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_231C72138()
{
  sub_231C70D38(v0 + OBJC_IVAR____TtC14RecencyService11SaveHandler_request);

  sub_231C70D94(v0 + OBJC_IVAR____TtC14RecencyService11SaveHandler_modelMigrator);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for SaveHandler(uint64_t a1)
{
  result = qword_27DD70790;
  if (!qword_27DD70790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_231C721EC(uint64_t a1)
{
  result = type metadata accessor for RecencyRequest(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 sub_231C722A0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_231C70CD4(a1, v8 + OBJC_IVAR____TtC14RecencyService11SaveHandler_request);
  *(v8 + OBJC_IVAR____TtC14RecencyService11SaveHandler_recencyModel) = a2;
  v9 = v8 + OBJC_IVAR____TtC14RecencyService11SaveHandler_modelMigrator;
  result = *a3;
  v11 = *(a3 + 16);
  *v9 = *a3;
  *(v9 + 16) = v11;
  *(v9 + 32) = *(a3 + 32);
  *a4 = v8;
  return result;
}

uint64_t sub_231C72334(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231C67D74;

  return sub_231C71AD0(a1);
}

uint64_t sub_231C723D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *sub_231C72458()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707A8, "B(");
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v14 - v2);
  result = [objc_opt_self() _emojiSetForIdentifier_];
  if (result)
  {
    v5 = result;
    v6 = sub_231C8BF4C();

    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = 0;
      v9 = (v6 + 16 * v7 + 24);
      v10 = MEMORY[0x277D84F90];
      while (v7 <= *(v6 + 16))
      {
        v11 = *v9;
        *v3 = *(v9 - 1);
        v3[1] = v11;
        type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
        swift_storeEnumTagMultiPayload();
        *(v3 + *(v0 + 48)) = (v8 + 1.0 + v8 + 1.0) / 100.0;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_231C7D2DC(0, v10[2] + 1, 1, v10);
        }

        v13 = v10[2];
        v12 = v10[3];
        if (v13 >= v12 >> 1)
        {
          v10 = sub_231C7D2DC((v12 > 1), v13 + 1, 1, v10);
        }

        --v7;
        v10[2] = v13 + 1;
        sub_231C7268C(v3, v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v13);
        v9 -= 2;
        ++v8;
        if (!v7)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    v10 = MEMORY[0x277D84F90];
LABEL_13:

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_231C7268C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707A8, "B(");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ImageGlyphRecencyModel.lastEngagement(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v41 = a2;
  v5 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_231C8BCCC();
  v12 = *(v40 - 8);
  v13 = MEMORY[0x28223BE20](v40);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  sub_231C859F8(a1, v7, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_231C7DC8C(v7, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  sub_231C859F8(a1, &v11[*(v9 + 28)], type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  *v11 = EnumCaseMultiPayload;
  swift_beginAccess();
  v19 = *(v3 + 144);
  if (*(v19 + 16) && (v20 = sub_231C7DC08(v11), (v21 & 1) != 0))
  {
    v22 = v12;
    v23 = *(v19 + 56) + *(v12 + 72) * v20;
    v24 = *(v12 + 16);
    v25 = v40;
    v24(v15, v23, v40);
    (*(v22 + 32))(v17, v15, v25);
    swift_endAccess();
    sub_231C7DC8C(v11, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    swift_beginAccess();
    v26 = *(v3 + 128);
    if (*(v26 + 16) && (v27 = sub_231C7DB70(v17), (v28 & 1) != 0))
    {
      v29 = v27;
      v30 = *(v26 + 56);
      v31 = sub_231C8BC9C();
      v32 = *(v31 - 8);
      v33 = v32;
      v34 = v30 + *(v32 + 72) * v29;
      v35 = v41;
      (*(v32 + 16))(v41, v34, v31);
      (*(v33 + 56))(v35, 0, 1, v31);
    }

    else
    {
      v38 = sub_231C8BC9C();
      (*(*(v38 - 8) + 56))(v41, 1, 1, v38);
    }

    swift_endAccess();
    return (*(v22 + 8))(v17, v25);
  }

  else
  {
    swift_endAccess();
    sub_231C7DC8C(v11, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    v36 = sub_231C8BC9C();
    return (*(*(v36 - 8) + 56))(v41, 1, 1, v36);
  }
}

uint64_t ImageGlyphRecencyModel.__allocating_init(shouldDecayFrequencies:)(uint64_t a1)
{
  v1 = a1;
  v2 = swift_allocObject();
  ImageGlyphRecencyModel.init(shouldDecayFrequencies:)(v1);
  return v2;
}

uint64_t sub_231C72B94(uint64_t a1, char a2)
{
  *(v3 + 408) = a2;
  *(v3 + 344) = a1;
  *(v3 + 352) = v2;
  _s14AutoSerializerVMa(0);
  *(v3 + 360) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70528, &qword_231C8D980);
  *(v3 + 368) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231C72C60, v2, 0);
}

uint64_t sub_231C72C60()
{
  v40 = v0;
  v1 = *(v0 + 352);
  v2 = OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationControllerVersion;
  *(v0 + 376) = OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationControllerVersion;
  v3 = v1 + v2;
  if (*(v3 + 8) & 1) != 0 || (v17 = *(v0 + 408), v18 = *(v0 + 344), v19 = *v3, v20 = v18[3], v21 = v18[4], __swift_project_boxed_opaque_existential_1(v18, v20), (*(v21 + 8))(v20, v21) > v19) || (v17)
  {
    if (qword_280CFA058 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 344);
    v5 = sub_231C8BCFC();
    *(v0 + 384) = __swift_project_value_buffer(v5, qword_280CFA060);
    sub_231C87A70(v4, v0 + 16);
    sub_231C87A70(v4, v0 + 56);
    v6 = sub_231C8BCDC();
    v7 = sub_231C8BFCC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v39 = v9;
      *v8 = 136315394;
      sub_231C87A70(v0 + 16, v0 + 216);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70958, &qword_231C8EA10);
      v10 = sub_231C8BEDC();
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      v13 = sub_231C7D5C8(v10, v12, &v39);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2048;
      v14 = *(v0 + 80);
      v15 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v14);
      v16 = (*(v15 + 8))(v14, v15);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
      *(v8 + 14) = v16;
      _os_log_impl(&dword_231C65000, v6, v7, "Migrating recents database using: '%s' (version: '%f'", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x238379930](v9, -1, -1);
      MEMORY[0x238379930](v8, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    }

    v31 = *(v0 + 344);
    v30 = *(v0 + 352);
    swift_beginAccess();
    *(v30 + 112) = 0;
    v32 = v31[3];
    v33 = v31[4];
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v38 = (*(v33 + 24) + **(v33 + 24));
    v34 = swift_task_alloc();
    *(v0 + 392) = v34;
    *v34 = v0;
    v34[1] = sub_231C73168;
    v35 = *(v0 + 352);

    return v38(v35, v32, v33);
  }

  else
  {
    if (qword_280CFA058 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 344);
    v23 = sub_231C8BCFC();
    __swift_project_value_buffer(v23, qword_280CFA060);
    sub_231C87A70(v22, v0 + 256);
    v24 = sub_231C8BCDC();
    v25 = sub_231C8BFCC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134218240;
      *(v26 + 4) = v19;
      *(v26 + 12) = 2048;
      v27 = *(v0 + 280);
      v28 = *(v0 + 288);
      __swift_project_boxed_opaque_existential_1((v0 + 256), v27);
      v29 = (*(v28 + 8))(v27, v28);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
      *(v26 + 14) = v29;
      _os_log_impl(&dword_231C65000, v24, v25, "Skipping recency migration; data was migrated with migrator %f and injected migrator declares version %f", v26, 0x16u);
      MEMORY[0x238379930](v26, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
    }

    v37 = *(v0 + 8);

    return v37();
  }
}

uint64_t sub_231C73168()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 352);
  if (v0)
  {
    v4 = sub_231C735A4;
  }

  else
  {
    v4 = sub_231C73294;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_231C73294()
{
  v25 = v0;
  v1 = v0[46];
  v2 = v0[43];
  v3 = v0[44];
  v4 = v3 + v0[47];
  sub_231C8BC8C();
  v5 = sub_231C8BC9C();
  (*(*(v5 - 8) + 56))(v1, 0, 1, v5);
  v6 = OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationDate;
  swift_beginAccess();
  sub_231C87F88(v1, v3 + v6, &qword_27DD70528, &qword_231C8D980);
  swift_endAccess();
  v7 = v2[3];
  v8 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v7);
  *v4 = (*(v8 + 8))(v7, v8);
  *(v4 + 8) = 0;
  sub_231C87A70(v2, (v0 + 12));
  sub_231C87A70(v2, (v0 + 17));
  v9 = sub_231C8BCDC();
  v10 = sub_231C8BFCC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315394;
    sub_231C87A70((v0 + 12), (v0 + 22));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70958, &qword_231C8EA10);
    v13 = sub_231C8BEDC();
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
    v16 = sub_231C7D5C8(v13, v15, &v24);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2048;
    v17 = v0[20];
    v18 = v0[21];
    __swift_project_boxed_opaque_existential_1(v0 + 17, v17);
    v19 = (*(v18 + 8))(v17, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
    *(v11 + 14) = v19;
    _os_log_impl(&dword_231C65000, v9, v10, "Migration complete: '%s' (version: '%f'", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x238379930](v12, -1, -1);
    MEMORY[0x238379930](v11, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  }

  v21 = v0[44];
  v20 = v0[45];
  sub_231C77BB4(v20);
  sub_231C8A3BC();
  sub_231C7DC8C(v20, _s14AutoSerializerVMa);
  *(v21 + 112) = 1;

  v22 = v0[1];

  return v22();
}

uint64_t sub_231C735A4()
{
  *(*(v0 + 352) + 112) = 1;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ImageGlyphRecencyModel.load()()
{
  v1[17] = v0;
  v1[18] = *v0;
  v1[19] = type metadata accessor for ImageGlyphRecencyCodableData(0);
  v1[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707A0, &unk_231C8D900);
  v1[21] = swift_task_alloc();
  v2 = sub_231C8BBFC();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  v3 = sub_231C8BC2C();
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231C737D4, v0, 0);
}

uint64_t sub_231C737D4()
{
  sub_231C7BCCC(v0[27]);
  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[21];
  (*(v0[23] + 104))(v0[24], *MEMORY[0x277CC91D0], v0[22]);
  (*(v3 + 16))(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  sub_231C8BC1C();
  v5 = *(v3 + 8);
  v5(v1, v2);
  v6 = sub_231C8BC3C();
  v7 = v0[28];
  v8 = v0[25];
  v9 = v6;
  v11 = v10;
  sub_231C8BB8C();
  swift_allocObject();
  sub_231C8BB7C();
  sub_231C85D00(&qword_280CFA668, type metadata accessor for ImageGlyphRecencyCodableData, &unk_231C8E9B0);
  sub_231C8BB6C();
  v5(v7, v8);
  sub_231C723D0(v9, v11);

  v13 = v0[20];
  v14 = v0[19];
  v15 = v0[17];
  v16 = v13[1];
  swift_beginAccess();
  v15[15] = v16;

  v17 = v13[2];
  swift_beginAccess();
  v15[16] = v17;

  v18 = v13[3];
  swift_beginAccess();
  v15[17] = v18;

  v19 = v13[4];
  swift_beginAccess();
  v15[18] = v19;

  v20 = *(v14 + 36);
  v21 = OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationDate;
  swift_beginAccess();
  sub_231C7DD0C(v13 + v20, v15 + v21);
  swift_endAccess();
  v22 = v13 + *(v14 + 40);
  v23 = *v22;
  LOBYTE(v21) = v22[8];
  sub_231C7DC8C(v13, type metadata accessor for ImageGlyphRecencyCodableData);
  v24 = v15 + OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationControllerVersion;
  *v24 = v23;
  v24[8] = v21;

  v25 = v0[1];

  return v25();
}

void *ImageGlyphRecencyModel.recentlyUsed(ofType:limit:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v60 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  v64 = *(v60 - 8);
  v6 = MEMORY[0x28223BE20](v60);
  v65 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v58 = &v56 - v9;
  MEMORY[0x28223BE20](v8);
  v59 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707B0, &qword_231C8D988);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v56 - v12;
  v14 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  v63 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_231C8BCCC();
  v17 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *a1;
  swift_beginAccess();
  v20 = *(v3 + 120);
  v21 = *(v20 + 16);
  v61 = v3;
  v66 = v17;
  if (v21)
  {
    v22 = sub_231C7D4CC(v21, 0);
    v23 = sub_231C82910(v74, &v22[(*(v17 + 80) + 32) & ~*(v17 + 80)], v21, v20);
    v24 = v74[0];
    v72 = v74[2];
    v73 = v74[1];
    v70 = v74[4];
    v71 = v74[3];

    sub_231C82BB4(v24);
    if (v23 != v21)
    {
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v3 = v61;
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  v74[0] = v22;

  sub_231C858A8(v74, v3);

  v25 = *(v74[0] + 16);
  if (!v25)
  {

    v73 = MEMORY[0x277D84F90];
    if (a2 >= 1)
    {
      goto LABEL_40;
    }

    return v73;
  }

  v57 = a2;
  v72 = *(v66 + 16);
  v26 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v56 = v74[0];
  v27 = v74[0] + v26;
  v28 = *(v66 + 72);
  v29 = v62;
  v70 = (v63 + 56);
  v71 = v28;
  v68 = (v66 + 8);
  v69 = (v63 + 48);
  v73 = MEMORY[0x277D84F90];
  v66 += 16;
  v72(v19, v74[0] + v26, v62);
  while (1)
  {
    swift_beginAccess();
    v30 = *(v3 + 136);
    if (*(v30 + 16) && (v31 = sub_231C7DB70(v19), (v32 & 1) != 0))
    {
      sub_231C859F8(*(v30 + 56) + *(v63 + 72) * v31, v13, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      v33 = 0;
    }

    else
    {
      v33 = 1;
    }

    (*v70)(v13, v33, 1, v14);
    swift_endAccess();
    if ((*v69)(v13, 1, v14) == 1)
    {
      (*v68)(v19, v29);
      sub_231C67FE0(v13, &qword_27DD707B0, &qword_231C8D988);
      goto LABEL_8;
    }

    sub_231C85990(v13, v16, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    v34 = *(v14 + 20);
    if (v67 == 4)
    {
      sub_231C859F8(&v16[v34], v65, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = sub_231C7D104(0, v73[2] + 1, 1, v73);
      }

      v36 = v73[2];
      v35 = v73[3];
      if (v36 >= v35 >> 1)
      {
        v73 = sub_231C7D104((v35 > 1), v36 + 1, 1, v73);
      }

      sub_231C7DC8C(v16, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      (*v68)(v19, v29);
      v37 = v73;
      v73[2] = v36 + 1;
      v38 = v65;
      v39 = v37 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v36;
    }

    else
    {
      v40 = v16;
      v41 = v14;
      v42 = v40;
      v43 = v59;
      sub_231C859F8(&v40[v34], v59, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_231C7DC8C(v43, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
      if (EnumCaseMultiPayload > 1)
      {
        v3 = v61;
        if (EnumCaseMultiPayload == 2)
        {
          v14 = v41;
          if (v67 != 2)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v14 = v41;
          if (v67 != 3)
          {
LABEL_24:
            v16 = v42;
            sub_231C7DC8C(v42, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
            v29 = v62;
            (*v68)(v19, v62);
            goto LABEL_8;
          }
        }
      }

      else
      {
        v3 = v61;
        if (EnumCaseMultiPayload)
        {
          v14 = v41;
          if (v67 != 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v14 = v41;
          if (v67)
          {
            goto LABEL_24;
          }
        }
      }

      v16 = v42;
      sub_231C859F8(v42 + v34, v58, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = sub_231C7D104(0, v73[2] + 1, 1, v73);
      }

      v29 = v62;
      v46 = v73[2];
      v45 = v73[3];
      if (v46 >= v45 >> 1)
      {
        v73 = sub_231C7D104((v45 > 1), v46 + 1, 1, v73);
      }

      sub_231C7DC8C(v16, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      (*v68)(v19, v29);
      v47 = v73;
      v73[2] = v46 + 1;
      v39 = v47 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v46;
      v38 = v58;
    }

    sub_231C85990(v38, v39, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
LABEL_8:
    v27 += v71;
    if (!--v25)
    {
      break;
    }

    v72(v19, v27, v29);
  }

  a2 = v57;
  if (v57 < 1)
  {
    return v73;
  }

LABEL_40:
  a2 = sub_231C77B20(a2, v73);
  if ((v50 & 1) == 0)
  {
LABEL_41:
    sub_231C7E210(a2, v48, v49, v50);
    v73 = v51;
    goto LABEL_48;
  }

  v23 = v50;
  v14 = v49;
  v21 = v48;
  sub_231C8C24C();
  swift_unknownObjectRetain_n();
  v52 = swift_dynamicCastClass();
  if (!v52)
  {
    swift_unknownObjectRelease();
    v52 = MEMORY[0x277D84F90];
  }

  v53 = *(v52 + 16);

  if (__OFSUB__(v23 >> 1, v14))
  {
    goto LABEL_51;
  }

  if (v53 != (v23 >> 1) - v14)
  {
LABEL_52:
    swift_unknownObjectRelease();
    v50 = v23;
    v49 = v14;
    v48 = v21;
    goto LABEL_41;
  }

  v54 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v73 = v54;
  if (!v54)
  {
    v73 = MEMORY[0x277D84F90];
LABEL_48:
    swift_unknownObjectRelease();
  }

  return v73;
}

Swift::Void __swiftcall ImageGlyphRecencyModel.reset(shouldPopulateDefaultData:shouldPurgeMigrationRecords:)(Swift::Bool shouldPopulateDefaultData, Swift::Bool shouldPurgeMigrationRecords)
{
  v5 = _s14AutoSerializerVMa(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70528, &qword_231C8D980);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  swift_beginAccess();
  v11 = MEMORY[0x277D84F98];
  v2[15] = MEMORY[0x277D84F98];

  swift_beginAccess();
  v2[16] = v11;

  swift_beginAccess();
  v2[17] = v11;

  swift_beginAccess();
  v2[18] = v11;

  if (shouldPurgeMigrationRecords)
  {
    v12 = sub_231C8BC9C();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    v13 = OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationDate;
    swift_beginAccess();
    sub_231C87F88(v10, v2 + v13, &qword_27DD70528, &qword_231C8D980);
    swift_endAccess();
    v14 = v2 + OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationControllerVersion;
    *v14 = 0;
    v14[8] = 1;
  }

  if (shouldPopulateDefaultData)
  {
    sub_231C74BD8();
  }

  sub_231C77BB4(v7);
  sub_231C8A3BC();
  sub_231C7DC8C(v7, _s14AutoSerializerVMa);
}

uint64_t ImageGlyphRecencyModel.save(to:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_231C7477C;

  return sub_231C7C5F0();
}

uint64_t sub_231C7477C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 40) = v2;

  if (v2)
  {
    v8 = v7[1];

    return v8();
  }

  else
  {
    v10 = v6[3];
    v6[6] = a2;
    v6[7] = a1;

    return MEMORY[0x2822009F8](sub_231C748DC, v10, 0);
  }
}

uint64_t sub_231C748DC()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_231C8BC4C();
  sub_231C723D0(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_231C74974()
{
  v0 = sub_231C8BCFC();
  __swift_allocate_value_buffer(v0, qword_280CFA060);
  __swift_project_value_buffer(v0, qword_280CFA060);
  return sub_231C8BCEC();
}

uint64_t ImageGlyphRecencyModel.shouldDecayFrequencies.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 112) = a1;
  return result;
}

uint64_t ImageGlyphRecencyModel.init(shouldDecayFrequencies:)(char a1)
{
  swift_defaultActor_initialize();
  v3 = MEMORY[0x277D84F90];
  *(v1 + 120) = sub_231C830A8(MEMORY[0x277D84F90]);
  *(v1 + 128) = sub_231C83290(v3);
  *(v1 + 136) = sub_231C834B0(v3);
  *(v1 + 144) = sub_231C836CC(v3);
  v4 = OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationDate;
  v5 = sub_231C8BC9C();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = v1 + OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationControllerVersion;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel____lazy_storage____serializer;
  v8 = _s14AutoSerializerVMa(0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  *(v1 + 112) = a1;
  return v1;
}

void *sub_231C74BD8()
{
  v1 = v0;
  v2 = _s14AutoSerializerVMa(0);
  MEMORY[0x28223BE20](v2 - 8);
  v26 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_231C8BC9C();
  v4 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709F0, &unk_231C8EA70);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  swift_beginAccess();
  *(v1 + 112) = 0;
  result = sub_231C72458();
  v17 = 0;
  v30 = result;
  v18 = result[2];
  v27 = v18;
  v28 = (v4 + 8);
  if (v18)
  {
    goto LABEL_3;
  }

LABEL_2:
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707A8, "B(");
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  v17 = v18;
  while (1)
  {
    sub_231C87F18(v13, v15);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707A8, "B(");
    if ((*(*(v23 - 8) + 48))(v15, 1, v23) == 1)
    {

      v25 = v26;
      sub_231C77BB4(v26);
      sub_231C8A3BC();
      result = sub_231C7DC8C(v25, _s14AutoSerializerVMa);
      *(v1 + 112) = 1;
      return result;
    }

    v24 = *&v15[*(v23 + 48)];
    sub_231C85990(v15, v9, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    sub_231C8BC8C();
    ImageGlyphRecencyModel.recordEngagement(for:_:)(v9, v6);
    (*v28)(v6, v29);
    ImageGlyphRecencyModel.set(frequency:for:)(v9, v24);
    result = sub_231C7DC8C(v9, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    if (v17 == v18)
    {
      goto LABEL_2;
    }

LABEL_3:
    if ((v17 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v17 >= v30[2])
    {
      goto LABEL_11;
    }

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707A8, "B(");
    v21 = v1;
    v22 = *(v20 - 8);
    sub_231C67EB0(v30 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v17++, v13, &qword_27DD707A8, "B(");
    (*(v22 + 56))(v13, 0, 1, v20);
    v1 = v21;
    v18 = v27;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t ImageGlyphRecencyModel.recordEngagement(for:_:)(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = _s14AutoSerializerVMa(0);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70528, &qword_231C8D980);
  MEMORY[0x28223BE20](v5 - 8);
  v51 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707B0, &qword_231C8D988);
  MEMORY[0x28223BE20](v7 - 8);
  v57 = &v49 - v8;
  v9 = sub_231C8BCCC();
  v58 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v59 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707B8, &qword_231C8D9A0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v53 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v55 = &v49 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v49 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v49 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v49 - v21;
  v23 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  MEMORY[0x28223BE20](v23);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231C859F8(a1, v25, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_231C7DC8C(v25, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  sub_231C859F8(a1, &v29[*(v26 + 20)], type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  *v29 = EnumCaseMultiPayload;
  sub_231C757BC(v29, 1, v22);
  sub_231C67EB0(v22, v20, &qword_27DD707B8, &qword_231C8D9A0);
  v31 = v58;
  v32 = *(v58 + 48);
  v60 = v58 + 48;
  v61 = v32;
  result = v32(v20, 1, v9);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v34 = v59;
  v50 = *(v31 + 16);
  v50(v59, v20, v9);
  v49 = v29;
  v35 = v29;
  v36 = v57;
  sub_231C859F8(v35, v57, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
  (*(v27 + 56))(v36, 0, 1, v26);
  swift_beginAccess();
  sub_231C776C0(v36, v34);
  swift_endAccess();
  v37 = *(v31 + 8);
  v37(v20, v9);
  v38 = v56;
  sub_231C67EB0(v22, v56, &qword_27DD707B8, &qword_231C8D9A0);
  result = v61(v38, 1, v9);
  if (result == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v39 = v22;
  sub_231C75B08(v38, 1.0);
  v37(v38, v9);
  v40 = v55;
  sub_231C67EB0(v22, v55, &qword_27DD707B8, &qword_231C8D9A0);
  result = v61(v40, 1, v9);
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v41 = v59;
  v50(v59, v40, v9);
  v42 = sub_231C8BC9C();
  v43 = *(v42 - 8);
  v44 = v51;
  (*(v43 + 16))(v51, v52, v42);
  (*(v43 + 56))(v44, 0, 1, v42);
  v45 = v62;
  swift_beginAccess();
  sub_231C778E0(v44, v41);
  swift_endAccess();
  v37(v40, v9);
  sub_231C75CEC(v39);
  v46 = v54;
  sub_231C77BB4(v54);
  sub_231C8A3BC();
  sub_231C7DC8C(v46, _s14AutoSerializerVMa);
  v47 = v53;
  sub_231C67EB0(v39, v53, &qword_27DD707B8, &qword_231C8D9A0);
  result = v61(v47, 1, v9);
  if (result == 1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  swift_beginAccess();
  if (*(*(v45 + 120) + 16))
  {
    sub_231C7DB70(v47);
  }

  v48 = v49;
  swift_endAccess();
  sub_231C67FE0(v39, &qword_27DD707B8, &qword_231C8D9A0);
  sub_231C7DC8C(v48, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
  return (v37)(v47, v9);
}

uint64_t sub_231C757BC@<X0>(unsigned __int8 *a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v30 = a2;
  v31 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707B8, &qword_231C8D9A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29[-v6];
  v8 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_231C8BCCC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v29[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v29[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v29[-v19];
  swift_beginAccess();
  v21 = *(v3 + 144);
  if (*(v21 + 16) && (v22 = sub_231C7DC08(a1), (v23 & 1) != 0))
  {
    (*(v12 + 16))(v18, *(v21 + 56) + *(v12 + 72) * v22, v11);
    v24 = *(v12 + 32);
    v24(v20, v18, v11);
    swift_endAccess();
    v25 = v31;
    v24(v31, v20, v11);
    return (*(v12 + 56))(v25, 0, 1, v11);
  }

  else
  {
    swift_endAccess();
    if (v30)
    {
      sub_231C8BCBC();
      sub_231C859F8(a1, v10, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      (*(v12 + 16))(v7, v15, v11);
      v27 = *(v12 + 56);
      v27(v7, 0, 1, v11);
      swift_beginAccess();
      sub_231C774CC(v7, v10);
      swift_endAccess();
      v28 = v31;
      (*(v12 + 32))(v31, v15, v11);
      return (v27)(v28, 0, 1, v11);
    }

    else
    {
      return (*(v12 + 56))(v31, 1, 1, v11);
    }
  }
}

uint64_t sub_231C75B08(uint64_t a1, double a2)
{
  v4 = v2;
  v7 = sub_231C8BCCC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + 120);
  v21 = v12;
  *(v4 + 120) = 0x8000000000000000;
  v14 = sub_231C7DB70(a1);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v13;
  if (v12[3] >= v17)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v4 + 120) = v12;
      if (v13)
      {
LABEL_9:
        *(v12[7] + 8 * v14) = *(v12[7] + 8 * v14) + a2;
        return swift_endAccess();
      }

LABEL_8:
      (*(v8 + 16))(v10, a1, v7);
      sub_231C810C8(v14, v10, v12, 0.0);
      goto LABEL_9;
    }

LABEL_11:
    sub_231C818D0();
    v12 = v21;
    *(v4 + 120) = v21;
    if (v3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_231C7F3BC(v17, isUniquelyReferenced_nonNull_native);
  v12 = v21;
  v18 = sub_231C7DB70(a1);
  if ((v3 & 1) == (v19 & 1))
  {
    v14 = v18;
    *(v4 + 120) = v12;
    if (v3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  result = sub_231C8C25C();
  __break(1u);
  return result;
}

uint64_t sub_231C75CEC(uint64_t a1)
{
  v2 = v1;
  v96 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70528, &qword_231C8D980);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v74 - v4;
  v6 = sub_231C8BC9C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v78 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v84 = &v74 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707B8, &qword_231C8D9A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v74 - v12;
  v99 = sub_231C8BCCC();
  v14 = *(v99 - 8);
  v15 = MEMORY[0x28223BE20](v99);
  v79 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v74 - v18;
  MEMORY[0x28223BE20](v17);
  v95 = &v74 - v20;
  result = swift_beginAccess();
  if (*(v2 + 112) != 1)
  {
    return result;
  }

  swift_beginAccess();
  v22 = *(v2 + 120);
  v23 = v22 + 64;
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v22 + 64);
  v27 = (v24 + 63) >> 6;
  v97 = v14 + 16;
  v90 = v14 + 32;
  v89 = v14 + 48;
  v91 = v14;
  v98 = (v14 + 8);
  v81 = (v7 + 56);
  v74 = v7 + 16;
  v80 = (v7 + 48);
  v77 = (v7 + 32);
  v75 = v7;
  v76 = (v7 + 8);
  v94 = v22;

  v28 = 0;
  v83 = v5;
  v82 = v6;
  v86 = v13;
  v100 = v19;
  v85 = v27;
  v88 = v23;
  v87 = v2;
  while (v26)
  {
    v29 = v99;
LABEL_14:
    v31 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v32 = *(v94 + 48);
    v33 = v91;
    v92 = *(v91 + 72);
    v34 = v95;
    v93 = *(v91 + 16);
    v93(v95, v32 + v92 * (v31 | (v28 << 6)), v29);
    v35 = *(v33 + 32);
    v35(v100, v34, v29);
    sub_231C67EB0(v96, v13, &qword_27DD707B8, &qword_231C8D9A0);
    if ((*(v33 + 48))(v13, 1, v29) == 1)
    {
      sub_231C67FE0(v13, &qword_27DD707B8, &qword_231C8D9A0);
      v36 = v87;
      v23 = v88;
LABEL_18:
      swift_beginAccess();
      v41 = *(v36 + 128);
      v42 = v82;
      v43 = v83;
      if (*(v41 + 16))
      {
        v44 = v100;
        v45 = sub_231C7DB70(v100);
        if (v46)
        {
          (*(v75 + 16))(v43, *(v41 + 56) + *(v75 + 72) * v45, v42);
          v47 = 0;
        }

        else
        {
          v47 = 1;
        }
      }

      else
      {
        v47 = 1;
        v44 = v100;
      }

      (*v81)(v43, v47, 1, v42);
      swift_endAccess();
      if ((*v80)(v43, 1, v42) == 1)
      {
        sub_231C67FE0(v43, &qword_27DD70528, &qword_231C8D980);
        v48 = 0.0;
      }

      else
      {
        (*v77)(v84, v43, v42);
        swift_beginAccess();
        v49 = *(v36 + 120);
        v50 = 0.0;
        if (*(v49 + 16))
        {
          v51 = sub_231C7DB70(v44);
          if (v52)
          {
            v50 = *(*(v49 + 56) + 8 * v51);
          }
        }

        swift_endAccess();
        v53 = v78;
        sub_231C8BC8C();
        v54 = v84;
        sub_231C8BC5C();
        v56 = v55;
        v57 = *v76;
        (*v76)(v53, v42);
        v58 = exp((v56 + 5.0) * -0.002);
        v57(v54, v42);
        v48 = fmax(v50 * v58, 1.0);
      }

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v101 = *(v36 + 120);
      v60 = v101;
      *(v36 + 120) = 0x8000000000000000;
      v62 = sub_231C7DB70(v100);
      v63 = v60[2];
      v64 = (v61 & 1) == 0;
      v65 = v63 + v64;
      if (__OFADD__(v63, v64))
      {
        goto LABEL_42;
      }

      v66 = v61;
      if (v60[3] >= v65)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_231C818D0();
        }

        v67 = v100;
        v70 = v101;
        if ((v66 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        sub_231C7F3BC(v65, isUniquelyReferenced_nonNull_native);
        v67 = v100;
        v68 = sub_231C7DB70(v100);
        if ((v66 & 1) != (v69 & 1))
        {
          goto LABEL_44;
        }

        v62 = v68;
        v70 = v101;
        if ((v66 & 1) == 0)
        {
LABEL_37:
          v70[(v62 >> 6) + 8] |= 1 << v62;
          v93((v70[6] + v62 * v92), v67, v99);
          *(v70[7] + 8 * v62) = v48;
          v71 = v70[2];
          v72 = __OFADD__(v71, 1);
          v73 = v71 + 1;
          if (v72)
          {
            goto LABEL_43;
          }

          v70[2] = v73;
          goto LABEL_6;
        }
      }

      *(v70[7] + 8 * v62) = v48;
LABEL_6:
      *(v36 + 120) = v70;

      swift_endAccess();
      (*v98)(v67, v99);
      goto LABEL_7;
    }

    v37 = v79;
    v38 = v99;
    v35(v79, v13, v99);
    v39 = sub_231C8BCAC();
    v40 = *v98;
    (*v98)(v37, v38);
    v36 = v87;
    v23 = v88;
    if ((v39 & 1) == 0)
    {
      goto LABEL_18;
    }

    v40(v100, v99);
LABEL_7:
    v13 = v86;
    v27 = v85;
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v27)
    {
    }

    v26 = *(v23 + 8 * v30);
    ++v28;
    if (v26)
    {
      v29 = v99;
      v28 = v30;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_231C8C25C();
  __break(1u);
  return result;
}

double ImageGlyphRecencyModel.frequency(for:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 120);
  v4 = 0.0;
  if (*(v3 + 16))
  {
    v5 = sub_231C7DB70(a1);
    if (v6)
    {
      v4 = *(*(v3 + 56) + 8 * v5);
    }
  }

  swift_endAccess();
  return v4;
}

uint64_t ImageGlyphRecencyModel.removeEngagementHistory(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = _s14AutoSerializerVMa(0);
  MEMORY[0x28223BE20](v4 - 8);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_231C8BCCC();
  v13 = *(v27 - 8);
  v14 = MEMORY[0x28223BE20](v27);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  sub_231C859F8(a1, v8, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_231C7DC8C(v8, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  sub_231C859F8(a1, &v12[*(v10 + 28)], type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  *v12 = EnumCaseMultiPayload;
  swift_beginAccess();
  v20 = *(v2 + 144);
  if (*(v20 + 16) && (v21 = sub_231C7DC08(v12), (v22 & 1) != 0))
  {
    v23 = v27;
    (*(v13 + 16))(v16, *(v20 + 56) + *(v13 + 72) * v21, v27);
    (*(v13 + 32))(v18, v16, v23);
    swift_endAccess();
    sub_231C7DC8C(v12, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    sub_231C76958(v18);
    sub_231C76A38(v18);
    v24 = v28;
    sub_231C77BB4(v28);
    sub_231C8A3BC();
    sub_231C7DC8C(v24, _s14AutoSerializerVMa);
    return (*(v13 + 8))(v18, v23);
  }

  else
  {
    swift_endAccess();
    return sub_231C7DC8C(v12, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
  }
}

uint64_t sub_231C76958(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = sub_231C7DB70(a1);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v1 + 120);
    v12 = *(v2 + 120);
    *(v2 + 120) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_231C818D0();
      v8 = v12;
    }

    v9 = *(v8 + 48);
    v10 = sub_231C8BCCC();
    (*(*(v10 - 8) + 8))(v9 + *(*(v10 - 8) + 72) * v6, v10);
    sub_231C8045C(v6, v8);
    *(v2 + 120) = v8;
  }

  return swift_endAccess();
}

uint64_t sub_231C76A38(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70528, &qword_231C8D980);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  swift_beginAccess();
  v7 = sub_231C7DB70(a1);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v1 + 128);
    v19 = *(v2 + 128);
    *(v2 + 128) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_231C81B44();
      v11 = v19;
    }

    v12 = *(v11 + 48);
    v13 = sub_231C8BCCC();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v9, v13);
    v14 = *(v11 + 56);
    v15 = sub_231C8BC9C();
    v16 = *(v15 - 8);
    (*(v16 + 32))(v6, v14 + *(v16 + 72) * v9, v15);
    sub_231C8010C(v9, v11, MEMORY[0x277CC9578]);
    *(v2 + 128) = v11;

    (*(v16 + 56))(v6, 0, 1, v15);
  }

  else
  {
    v17 = sub_231C8BC9C();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  }

  swift_endAccess();
  return sub_231C67FE0(v6, &qword_27DD70528, &qword_231C8D980);
}

uint64_t ImageGlyphRecencyModel.frequency(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_231C8BCCC();
  v11 = *(v23 - 8);
  v12 = MEMORY[0x28223BE20](v23);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  sub_231C859F8(a1, v6, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_231C7DC8C(v6, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  sub_231C859F8(a1, &v10[*(v8 + 28)], type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  *v10 = EnumCaseMultiPayload;
  swift_beginAccess();
  v18 = *(v2 + 144);
  if (*(v18 + 16) && (v19 = sub_231C7DC08(v10), (v20 & 1) != 0))
  {
    v21 = v23;
    (*(v11 + 16))(v14, *(v18 + 56) + *(v11 + 72) * v19, v23);
    (*(v11 + 32))(v16, v14, v21);
    swift_endAccess();
    sub_231C7DC8C(v10, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    swift_beginAccess();
    if (*(*(v2 + 120) + 16))
    {
      sub_231C7DB70(v16);
    }

    swift_endAccess();
    return (*(v11 + 8))(v16, v21);
  }

  else
  {
    swift_endAccess();
    return sub_231C7DC8C(v10, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
  }
}

uint64_t ImageGlyphRecencyModel.set(frequency:for:)(uint64_t a1, double a2)
{
  v4 = _s14AutoSerializerVMa(0);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707B0, &qword_231C8D988);
  MEMORY[0x28223BE20](v6 - 8);
  v41 = &v38 - v7;
  v44 = sub_231C8BCCC();
  v8 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v40 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707B8, &qword_231C8D9A0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v42 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  v18 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231C859F8(a1, v20, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_231C7DC8C(v20, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  sub_231C859F8(a1, &v24[*(v21 + 20)], type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  *v24 = EnumCaseMultiPayload;
  sub_231C757BC(v24, 1, v17);
  v43 = v17;
  v26 = v17;
  v27 = v44;
  sub_231C67EB0(v26, v15, &qword_27DD707B8, &qword_231C8D9A0);
  v28 = v8;
  v39 = *(v8 + 48);
  result = v39(v15, 1, v27);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v30 = v40;
    (*(v8 + 16))(v40, v15, v27);
    v31 = v41;
    sub_231C859F8(v24, v41, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    (*(v22 + 56))(v31, 0, 1, v21);
    swift_beginAccess();
    sub_231C776C0(v31, v30);
    swift_endAccess();
    v32 = *(v28 + 8);
    v32(v15, v27);
    v34 = v42;
    v33 = v43;
    sub_231C67EB0(v43, v42, &qword_27DD707B8, &qword_231C8D9A0);
    result = v39(v34, 1, v27);
    if (result != 1)
    {
      v35 = v45;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = *(v35 + 120);
      *(v35 + 120) = 0x8000000000000000;
      sub_231C80D44(v34, isUniquelyReferenced_nonNull_native, a2);
      v32(v34, v27);
      *(v35 + 120) = v46;
      swift_endAccess();
      v37 = v38;
      sub_231C77BB4(v38);
      sub_231C8A3BC();
      sub_231C7DC8C(v37, _s14AutoSerializerVMa);
      sub_231C67FE0(v33, &qword_27DD707B8, &qword_231C8D9A0);
      return sub_231C7DC8C(v24, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_231C774CC(uint64_t a1, unsigned __int8 *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707B8, &qword_231C8D9A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_231C8BCCC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_231C67FE0(a1, &qword_27DD707B8, &qword_231C8D9A0);
    sub_231C7E3B0(a2, v7);
    sub_231C7DC8C(a2, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    return sub_231C67FE0(v7, &qword_27DD707B8, &qword_231C8D9A0);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_231C8077C(v11, a2, isUniquelyReferenced_nonNull_native);
    result = sub_231C7DC8C(a2, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    *v2 = v15;
  }

  return result;
}

uint64_t sub_231C776C0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707B0, &qword_231C8D988);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_231C67FE0(a1, &qword_27DD707B0, &qword_231C8D988);
    sub_231C7E54C(a2, v7);
    v12 = sub_231C8BCCC();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_231C67FE0(v7, &qword_27DD707B0, &qword_231C8D988);
  }

  else
  {
    sub_231C85990(a1, v10, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_231C80958(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_231C8BCCC();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_231C778E0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70528, &qword_231C8D980);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_231C8BC9C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_231C67FE0(a1, &qword_27DD70528, &qword_231C8D980);
    sub_231C7E6FC(a2, v7);
    v12 = sub_231C8BCCC();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_231C67FE0(v7, &qword_27DD70528, &qword_231C8D980);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_231C80B40(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_231C8BCCC();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_231C77B20(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
    return a2;
  }

  return result;
}

uint64_t sub_231C77BB4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707C0, &qword_231C8D9A8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel____lazy_storage____serializer;
  swift_beginAccess();
  sub_231C67EB0(v1 + v9, v8, &qword_27DD707C0, &qword_231C8D9A8);
  v10 = _s14AutoSerializerVMa(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_231C85990(v8, a1, _s14AutoSerializerVMa);
  }

  sub_231C67FE0(v8, &qword_27DD707C0, &qword_231C8D9A8);

  sub_231C89DEC(v12, a1);
  sub_231C859F8(a1, v6, _s14AutoSerializerVMa);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_231C87F88(v6, v1 + v9, &qword_27DD707C0, &qword_231C8D9A8);
  return swift_endAccess();
}

uint64_t sub_231C77DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v5 = *(v2 + 128);
  if (*(v5 + 16) && (v6 = sub_231C7DB70(a1), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = sub_231C8BC9C();
    v11 = *(v10 - 8);
    (*(v11 + 16))(a2, v9 + *(v11 + 72) * v8, v10);
    (*(v11 + 56))(a2, 0, 1, v10);
  }

  else
  {
    v12 = sub_231C8BC9C();
    (*(*(v12 - 8) + 56))(a2, 1, 1, v12);
  }

  return swift_endAccess();
}

uint64_t sub_231C77F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70528, &qword_231C8D980);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = sub_231C8BC9C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v35 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - v16;
  swift_beginAccess();
  v18 = *(a3 + 120);
  v19 = 0.0;
  if (*(v18 + 16))
  {
    v20 = sub_231C7DB70(a1);
    if (v21)
    {
      v19 = *(*(v18 + 56) + 8 * v20);
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v22 = *(a3 + 120);
  if (*(v22 + 16) && (v23 = sub_231C7DB70(a2), (v24 & 1) != 0))
  {
    v25 = *(*(v22 + 56) + 8 * v23);
    swift_endAccess();
    if (v19 != v25)
    {
      goto LABEL_15;
    }
  }

  else
  {
    swift_endAccess();
    if (v19 != 0.0)
    {
      v25 = 0.0;
LABEL_15:
      v27 = v25 < v19;
      return v27 & 1;
    }
  }

  v36 = a2;
  v34 = a1;
  sub_231C77DC4(a1, v11);
  v26 = v13[6];
  if (v26(v11, 1, v12) == 1)
  {
    v9 = v11;
  }

  else
  {
    v33 = v13[4];
    v33(v17, v11, v12);
    sub_231C77DC4(v36, v9);
    if (v26(v9, 1, v12) != 1)
    {
      v28 = v35;
      v33(v35, v9, v12);
      v29 = sub_231C8BC6C();
      v30 = v13[1];
      v30(v28, v12);
      v30(v17, v12);
      v27 = v29;
      return v27 & 1;
    }

    (v13[1])(v17, v12);
  }

  sub_231C67FE0(v9, &qword_27DD70528, &qword_231C8D980);
  sub_231C8BCCC();
  sub_231C85D00(&qword_27DD70A08, MEMORY[0x277CC95F0], MEMORY[0x277CC9608]);
  v27 = sub_231C8BE7C();
  return v27 & 1;
}

void *ImageGlyphRecencyModel.deinit()
{

  sub_231C67FE0(v0 + OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationDate, &qword_27DD70528, &qword_231C8D980);
  sub_231C67FE0(v0 + OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel____lazy_storage____serializer, &qword_27DD707C0, &qword_231C8D9A8);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t ImageGlyphRecencyModel.__deallocating_deinit()
{

  sub_231C67FE0(v0 + OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationDate, &qword_27DD70528, &qword_231C8D980);
  sub_231C67FE0(v0 + OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel____lazy_storage____serializer, &qword_27DD707C0, &qword_231C8D9A8);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_231C783EC(uint64_t a1)
{
  v2 = sub_231C85AB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C78428(uint64_t a1)
{
  v2 = sub_231C85AB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231C78464(uint64_t a1)
{
  v2 = sub_231C85A60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C784A0(uint64_t a1)
{
  v2 = sub_231C85A60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231C784DC(uint64_t a1)
{
  v2 = sub_231C85B5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C78518(uint64_t a1)
{
  v2 = sub_231C85B5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231C78554(uint64_t a1)
{
  v2 = sub_231C85B08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C78590(uint64_t a1)
{
  v2 = sub_231C85B08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231C785CC(uint64_t a1)
{
  v2 = sub_231C85BB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C78608(uint64_t a1)
{
  v2 = sub_231C85BB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageGlyphRecencyModel.ImageGlyphType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707C8, &qword_231C8D9B0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707D0, &qword_231C8D9B8);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707D8, &qword_231C8D9C0);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707E0, &qword_231C8D9C8);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707E8, &qword_231C8D9D0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231C85A60();
  sub_231C8C2FC();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_231C85B08();
      v18 = v27;
      sub_231C8C1AC();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_231C85AB4();
      v18 = v30;
      sub_231C8C1AC();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_231C85B5C();
    v18 = v24;
    sub_231C8C1AC();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_231C85BB0();
  sub_231C8C1AC();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t ImageGlyphRecencyModel.ImageGlyphType.hashValue.getter()
{
  v1 = *v0;
  sub_231C8C2BC();
  MEMORY[0x238379510](v1);
  return sub_231C8C2DC();
}

uint64_t ImageGlyphRecencyModel.ImageGlyphType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70808, &qword_231C8D9D8);
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70810, &qword_231C8D9E0);
  v38 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70818, &qword_231C8D9E8);
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70820, &qword_231C8D9F0);
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70828, &unk_231C8D9F8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_231C85A60();
  v15 = v46;
  sub_231C8C2EC();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_231C8C19C();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_231C70808();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_231C8C0AC();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD70580, &unk_231C8CA50);
      *v28 = &type metadata for ImageGlyphRecencyModel.ImageGlyphType;
      sub_231C8C11C();
      sub_231C8C09C();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1Tm(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_231C85B5C();
        v32 = v35;
        sub_231C8C10C();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_231C85BB0();
        v25 = v35;
        sub_231C8C10C();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1Tm(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_231C85B08();
      v31 = v35;
      sub_231C8C10C();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_231C85AB4();
      v33 = v35;
      sub_231C8C10C();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v47);
}

uint64_t sub_231C7918C(uint64_t a1)
{
  v2 = sub_231C85C58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C791C8(uint64_t a1)
{
  v2 = sub_231C85C58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231C79204(uint64_t a1)
{
  v2 = sub_231C85C04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C79240(uint64_t a1)
{
  v2 = sub_231C85C04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231C7927C(uint64_t a1)
{
  v2 = sub_231C85D48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C792B8(uint64_t a1)
{
  v2 = sub_231C85D48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231C792F4(uint64_t a1)
{
  v2 = sub_231C85CAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C79330(uint64_t a1)
{
  v2 = sub_231C85CAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231C7936C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_231C8C23C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_231C793EC(uint64_t a1)
{
  v2 = sub_231C85D9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C79428(uint64_t a1)
{
  v2 = sub_231C85D9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.encode(to:)(void *a1)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70830, &qword_231C8DA08);
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v38 = &v32 - v2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70838, &qword_231C8DA10);
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v39 = &v32 - v3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70840, &qword_231C8DA18);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v5 = &v32 - v4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70848, &qword_231C8DA20);
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v33 = &v32 - v6;
  v7 = sub_231C8BCCC();
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  v13 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70850, &qword_231C8DA28);
  v47 = *(v16 - 8);
  v48 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231C85C04();
  sub_231C8C2FC();
  sub_231C859F8(v46, v15, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v21 = v44;
      v20 = v45;
      (*(v44 + 32))(v10, v15, v45);
      v51 = 2;
      sub_231C85CAC();
      v25 = v39;
      v23 = v48;
      sub_231C8C1AC();
      sub_231C85D00(&qword_27DD70868, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
      v26 = v43;
      sub_231C8C20C();
      (*(v41 + 8))(v25, v26);
      v12 = v10;
      goto LABEL_6;
    }

    v52 = 3;
    sub_231C85C58();
    v30 = v38;
    v28 = v48;
    sub_231C8C1AC();
    v31 = v42;
    sub_231C8C1FC();

    (*(v40 + 8))(v30, v31);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v21 = v44;
      v20 = v45;
      (*(v44 + 32))(v12, v15, v45);
      v49 = 0;
      sub_231C85D9C();
      v22 = v33;
      v23 = v48;
      sub_231C8C1AC();
      sub_231C85D00(&qword_27DD70868, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
      v24 = v37;
      sub_231C8C20C();
      (*(v35 + 8))(v22, v24);
LABEL_6:
      (*(v21 + 8))(v12, v20);
      return (*(v47 + 8))(v18, v23);
    }

    v50 = 1;
    sub_231C85D48();
    v28 = v48;
    sub_231C8C1AC();
    v29 = v36;
    sub_231C8C1FC();

    (*(v34 + 8))(v5, v29);
  }

  return (*(v47 + 8))(v18, v28);
}

uint64_t ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.hash(into:)(uint64_t a1)
{
  v2 = sub_231C8BCCC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231C859F8(v1, v8, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v3 + 32))(v5, v8, v2);
      v10 = 2;
      goto LABEL_6;
    }

    v12 = 3;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v3 + 32))(v5, v8, v2);
      v10 = 0;
LABEL_6:
      MEMORY[0x238379510](v10);
      sub_231C85D00(&qword_280CFA698, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_231C8BE6C();
      return (*(v3 + 8))(v5, v2);
    }

    v12 = 1;
  }

  MEMORY[0x238379510](v12);
  sub_231C8BEFC();
}

uint64_t ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.hashValue.getter()
{
  sub_231C8C2BC();
  ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.hash(into:)(v1);
  return sub_231C8C2DC();
}

uint64_t ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70878, &qword_231C8DA30);
  v77 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v83 = &v66 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70880, &qword_231C8DA38);
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x28223BE20](v4);
  v82 = &v66 - v5;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70888, &qword_231C8DA40);
  v73 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v66 - v6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70890, &qword_231C8DA48);
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v78 = &v66 - v7;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70898, &qword_231C8DA50);
  v84 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v9 = &v66 - v8;
  v80 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  v10 = MEMORY[0x28223BE20](v80);
  v12 = (&v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v66 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v66 - v17);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v66 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v66 - v22;
  v24 = a1[3];
  v88 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_231C85C04();
  v25 = v87;
  sub_231C8C2EC();
  if (!v25)
  {
    v66 = v18;
    v67 = v12;
    v68 = v15;
    v69 = v21;
    v26 = v81;
    v27 = v82;
    v28 = v83;
    v70 = v23;
    v30 = v85;
    v29 = v86;
    v87 = v9;
    v31 = sub_231C8C19C();
    v32 = (2 * *(v31 + 16)) | 1;
    v89 = v31;
    v90 = v31 + 32;
    v91 = 0;
    v92 = v32;
    v33 = sub_231C70808();
    if (v33 == 4 || v91 != v92 >> 1)
    {
      v36 = v29;
      v37 = sub_231C8C0AC();
      swift_allocError();
      v39 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD70580, &unk_231C8CA50);
      *v39 = v80;
      v40 = v87;
      sub_231C8C11C();
      sub_231C8C09C();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
      swift_willThrow();
      (*(v84 + 8))(v40, v36);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v33 > 1u)
      {
        v42 = v84;
        if (v33 == 2)
        {
          v93 = 2;
          sub_231C85CAC();
          v43 = v27;
          v44 = v87;
          sub_231C8C10C();
          v51 = v29;
          sub_231C8BCCC();
          sub_231C85D00(&qword_280CFA688, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
          v52 = v68;
          v53 = v76;
          sub_231C8C17C();
          (*(v75 + 8))(v43, v53);
          (*(v42 + 8))(v44, v51);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v50 = v52;
          v49 = v70;
        }

        else
        {
          v93 = 3;
          sub_231C85C58();
          sub_231C8C10C();
          v49 = v70;
          v58 = v74;
          v62 = sub_231C8C16C();
          v64 = v63;
          (*(v77 + 8))(v28, v58);
          (*(v42 + 8))(v87, v29);
          swift_unknownObjectRelease();
          v65 = v67;
          *v67 = v62;
          v65[1] = v64;
          swift_storeEnumTagMultiPayload();
          v50 = v65;
        }

        v30 = v85;
      }

      else if (v33)
      {
        v93 = 1;
        sub_231C85D48();
        v45 = v79;
        v46 = v87;
        sub_231C8C10C();
        v54 = v26;
        v55 = sub_231C8C16C();
        v56 = v45;
        v57 = v84;
        v60 = v59;
        (*(v73 + 8))(v56, v54);
        (*(v57 + 8))(v46, v29);
        swift_unknownObjectRelease();
        v61 = v66;
        *v66 = v55;
        v61[1] = v60;
        swift_storeEnumTagMultiPayload();
        v50 = v61;
        v49 = v70;
      }

      else
      {
        v93 = 0;
        sub_231C85D9C();
        v34 = v78;
        v35 = v87;
        sub_231C8C10C();
        sub_231C8BCCC();
        sub_231C85D00(&qword_280CFA688, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
        v47 = v69;
        v48 = v72;
        sub_231C8C17C();
        (*(v71 + 8))(v34, v48);
        (*(v84 + 8))(v35, v86);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v49 = v70;
        v50 = v47;
      }

      sub_231C85990(v50, v49, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
      sub_231C85990(v49, v30, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v88);
}

uint64_t sub_231C7A830()
{
  sub_231C8C2BC();
  ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.hash(into:)(v1);
  return sub_231C8C2DC();
}

uint64_t sub_231C7A874()
{
  sub_231C8C2BC();
  ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.hash(into:)(v1);
  return sub_231C8C2DC();
}

uint64_t ImageGlyphRecencyModel.ImageGlyphRecord.init(type:externalRepresentation:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  v5 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  return sub_231C85990(a2, &a3[*(v5 + 20)], type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
}

uint64_t static ImageGlyphRecencyModel.ImageGlyphRecord.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0) + 20);

  return _s14RecencyService010ImageGlyphA5ModelC0cD22ExternalRepresentationO2eeoiySbAE_AEtFZ_0(&a1[v5], &a2[v5]);
}

uint64_t sub_231C7A99C()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_231C7A9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_231C8C23C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000231C8F480 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_231C8C23C();

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

uint64_t sub_231C7AAB8(uint64_t a1)
{
  v2 = sub_231C85DF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C7AAF4(uint64_t a1)
{
  v2 = sub_231C85DF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageGlyphRecencyModel.ImageGlyphRecord.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD708A0, &qword_231C8DA58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231C85DF0();
  sub_231C8C2FC();
  v10[15] = *v3;
  v10[14] = 0;
  sub_231C69E5C();
  sub_231C8C20C();
  if (!v2)
  {
    type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
    v10[13] = 1;
    type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
    sub_231C85D00(&qword_280CFA9A0, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation, &protocol conformance descriptor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    sub_231C8C20C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ImageGlyphRecencyModel.ImageGlyphRecord.hash(into:)(uint64_t a1)
{
  MEMORY[0x238379510](*v1);
  type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  return ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.hash(into:)(a1);
}

uint64_t ImageGlyphRecencyModel.ImageGlyphRecord.hashValue.getter()
{
  sub_231C8C2BC();
  MEMORY[0x238379510](*v0);
  type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.hash(into:)(v2);
  return sub_231C8C2DC();
}

uint64_t ImageGlyphRecencyModel.ImageGlyphRecord.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD708A8, &qword_231C8DA60);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_231C85DF0();
  sub_231C8C2EC();
  if (!v2)
  {
    v14 = v12;
    v15 = v23;
    v27 = 0;
    sub_231C6A454();
    v16 = v24;
    sub_231C8C17C();
    v21 = v14;
    *v14 = v28;
    v26 = 1;
    sub_231C85D00(&qword_280CFA998, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation, &protocol conformance descriptor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    sub_231C8C17C();
    (*(v15 + 8))(v9, v16);
    v17 = *(v10 + 20);
    v18 = v21;
    sub_231C85990(v6, &v21[v17], type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
    sub_231C85990(v18, v22, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v25);
}

uint64_t sub_231C7B09C()
{
  sub_231C8C2BC();
  MEMORY[0x238379510](*v0);
  ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.hash(into:)(v2);
  return sub_231C8C2DC();
}

uint64_t sub_231C7B14C()
{
  sub_231C8C2BC();
  MEMORY[0x238379510](*v0);
  ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.hash(into:)(v2);
  return sub_231C8C2DC();
}

uint64_t sub_231C7B1DC(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return _s14RecencyService010ImageGlyphA5ModelC0cD22ExternalRepresentationO2eeoiySbAE_AEtFZ_0(&a1[*(a3 + 20)], &a2[*(a3 + 20)]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_231C7B204(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70968, &qword_231C8EA20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231C87420();
  sub_231C8C2FC();
  LOBYTE(v11) = 0;
  sub_231C8C21C();
  if (!v2)
  {
    v11 = v3[1];
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70930, &qword_231C8E9E0);
    sub_231C87B34();
    sub_231C8C20C();
    v11 = v3[2];
    HIBYTE(v10) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70938, &qword_231C8E9E8);
    sub_231C87BF0();
    sub_231C8C20C();
    v11 = v3[3];
    HIBYTE(v10) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70940, &qword_231C8E9F0);
    sub_231C87CDC();
    sub_231C8C20C();
    v11 = v3[4];
    HIBYTE(v10) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70948, &qword_231C8E9F8);
    sub_231C87DC8();
    sub_231C8C20C();
    type metadata accessor for ImageGlyphRecencyCodableData(0);
    LOBYTE(v11) = 5;
    sub_231C8BC9C();
    sub_231C85D00(&qword_27DD70980, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_231C8C1EC();
    LOBYTE(v11) = 6;
    sub_231C8C1CC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_231C7B544@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70528, &qword_231C8D980);
  MEMORY[0x28223BE20](v3 - 8);
  v33 = &v29 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70928, &qword_231C8E9D8);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  v8 = type metadata accessor for ImageGlyphRecencyCodableData(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v11 = 1;
  v12 = MEMORY[0x277D84F90];
  v36 = sub_231C830A8(MEMORY[0x277D84F90]);
  *(v11 + 1) = v36;
  v35 = sub_231C83290(v12);
  *(v11 + 2) = v35;
  v34 = sub_231C834B0(v12);
  *(v11 + 3) = v34;
  v13 = sub_231C836CC(v12);
  *(v11 + 4) = v13;
  v14 = *(v9 + 44);
  v15 = sub_231C8BC9C();
  (*(*(v15 - 8) + 56))(&v11[v14], 1, 1, v15);
  v16 = *(v9 + 48);
  v40 = v11;
  v41 = a1;
  v17 = &v11[v16];
  *v17 = 0;
  v17[8] = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231C87420();
  v18 = v39;
  sub_231C8C2EC();
  if (v18)
  {
    v19 = v40;
  }

  else
  {
    v30 = v14;
    v31 = v13;
    v39 = v15;
    v29 = v17;
    v20 = v37;
    LOBYTE(v43) = 0;
    v21 = v38;
    v22 = sub_231C8C18C();
    v19 = v40;
    *v40 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70930, &qword_231C8E9E0);
    v42 = 1;
    sub_231C87474();
    sub_231C8C17C();

    v19[1] = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70938, &qword_231C8E9E8);
    v42 = 2;
    sub_231C87530();
    sub_231C8C17C();

    v19[2] = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70940, &qword_231C8E9F0);
    v42 = 3;
    sub_231C8761C();
    sub_231C8C17C();

    v19[3] = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70948, &qword_231C8E9F8);
    v42 = 4;
    sub_231C87708();
    sub_231C8C17C();

    v19[4] = v43;
    LOBYTE(v43) = 5;
    sub_231C85D00(&qword_280CFA6A8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v24 = v33;
    sub_231C8C15C();
    sub_231C87F88(v24, v19 + v30, &qword_27DD70528, &qword_231C8D980);
    LOBYTE(v43) = 6;
    v25 = sub_231C8C13C();
    v27 = v26;
    (*(v20 + 8))(v7, v21);
    v28 = v29;
    *v29 = v25;
    *(v28 + 8) = v27 & 1;
    sub_231C859F8(v19, v32, type metadata accessor for ImageGlyphRecencyCodableData);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  return sub_231C7DC8C(v19, type metadata accessor for ImageGlyphRecencyCodableData);
}

unint64_t sub_231C7BADC()
{
  v1 = *v0;
  v2 = 0x6556616D65686373;
  v3 = 0xD000000000000011;
  if (v1 != 5)
  {
    v3 = 0xD00000000000001ELL;
  }

  v4 = 0x6365526F5479656BLL;
  if (v1 != 3)
  {
    v4 = 0x6F5464726F636572;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x636E657571657266;
  if (v1 != 1)
  {
    v5 = 0x646573557473616CLL;
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

uint64_t sub_231C7BBF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_231C88108(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_231C7BC24(uint64_t a1)
{
  v2 = sub_231C87420();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_231C7BC60(uint64_t a1)
{
  v2 = sub_231C87420();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_231C7BCCC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707A0, &unk_231C8D900);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v17 - v4;
  v6 = sub_231C8BBFC();
  MEMORY[0x28223BE20](v6);
  (*(v8 + 104))(v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC91C0]);
  v9 = sub_231C8BC2C();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v5, 1, 1, v9);
  sub_231C8BC1C();
  result = sub_231C8BC0C();
  if (!v1)
  {
    if (result)
    {
      return result;
    }

    if (qword_280CFA058 != -1)
    {
      swift_once();
    }

    v12 = sub_231C8BCFC();
    __swift_project_value_buffer(v12, qword_280CFA060);
    v13 = sub_231C8BCDC();
    v14 = sub_231C8BFBC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_231C65000, v13, v14, "Could not access the Recency container directory.", v15, 2u);
      MEMORY[0x238379930](v15, -1, -1);
    }

    sub_231C85F88();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
  }

  return (*(v10 + 8))(a1, v9);
}

uint64_t ImageGlyphRecencyModel.save()()
{
  v1[2] = v0;
  v1[3] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707A0, &unk_231C8D900);
  v1[4] = swift_task_alloc();
  v2 = sub_231C8BBFC();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = sub_231C8BC2C();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231C7C110, v0, 0);
}

uint64_t sub_231C7C110()
{
  sub_231C7BCCC(v0[10]);
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[4];
  (*(v0[6] + 104))(v0[7], *MEMORY[0x277CC91D0], v0[5]);
  (*(v3 + 16))(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  sub_231C8BC1C();
  v5 = *(v3 + 8);
  v0[12] = v5;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_231C7C2F0;

  return sub_231C7C5F0();
}

uint64_t sub_231C7C2F0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 120) = v2;

  if (v2)
  {
    (*(v6 + 96))(*(v6 + 88), *(v6 + 64));
    *(v6 + 144) = v2;
    v7 = *(v6 + 16);
    v8 = sub_231C7C564;
  }

  else
  {
    v7 = *(v6 + 16);
    *(v6 + 128) = a2;
    *(v6 + 136) = a1;
    v8 = sub_231C7C43C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_231C7C43C()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[11];
  v6 = v0[8];
  sub_231C8BC4C();
  v4(v5, v6);
  sub_231C723D0(v2, v1);
  if (v3)
  {
    v0[18] = v3;
    v7 = v0[2];

    return MEMORY[0x2822009F8](sub_231C7C564, v7, 0);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_231C7C564()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_231C7C5F0()
{
  v1[17] = v0;
  v1[18] = type metadata accessor for ImageGlyphRecencyCodableData(0);
  v1[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231C7C684, v0, 0);
}

uint64_t sub_231C7C684()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  swift_beginAccess();
  v4 = v3[15];
  swift_beginAccess();
  v5 = v3[16];
  swift_beginAccess();
  v6 = v3[17];
  swift_beginAccess();
  v7 = v3[18];
  v8 = OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationDate;
  swift_beginAccess();
  sub_231C67EB0(v3 + v8, v1 + *(v2 + 36), &qword_27DD70528, &qword_231C8D980);
  v9 = *(v3 + OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationControllerVersion);
  v10 = *(v3 + OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationControllerVersion + 8);
  *v1 = 1;
  *&v11 = v4;
  *(&v11 + 1) = v5;
  *&v12 = v6;
  *(&v12 + 1) = v7;
  *(v1 + 24) = v12;
  *(v1 + 8) = v11;
  v13 = v1 + *(v2 + 40);
  *v13 = v9;
  *(v13 + 8) = v10;
  sub_231C8BBBC();
  swift_allocObject();

  sub_231C8BBAC();
  sub_231C85D00(&qword_27DD709E8, type metadata accessor for ImageGlyphRecencyCodableData, &unk_231C8DFD0);
  v14 = sub_231C8BB9C();
  v16 = v15;
  sub_231C7DC8C(v0[19], type metadata accessor for ImageGlyphRecencyCodableData);

  v17 = v0[1];

  return v17(v14, v16);
}

uint64_t ImageGlyphRecencyModel.load(from:)(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v2[19] = type metadata accessor for ImageGlyphRecencyCodableData(0);
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231C7C9BC, v1, 0);
}

uint64_t sub_231C7C9BC()
{
  v1 = sub_231C8BC3C();
  v3 = v2;
  sub_231C8BB8C();
  swift_allocObject();
  sub_231C8BB7C();
  sub_231C85D00(&qword_280CFA668, type metadata accessor for ImageGlyphRecencyCodableData, &unk_231C8E9B0);
  sub_231C8BB6C();
  sub_231C723D0(v1, v3);

  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];
  v8 = v5[1];
  swift_beginAccess();
  v7[15] = v8;

  v9 = v5[2];
  swift_beginAccess();
  v7[16] = v9;

  v10 = v5[3];
  swift_beginAccess();
  v7[17] = v10;

  v11 = v5[4];
  swift_beginAccess();
  v7[18] = v11;

  v12 = *(v6 + 36);
  v13 = OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationDate;
  swift_beginAccess();
  sub_231C7DD0C(v5 + v12, v7 + v13);
  swift_endAccess();
  v14 = v5 + *(v6 + 40);
  v15 = *v14;
  LOBYTE(v13) = v14[8];
  sub_231C7DC8C(v5, type metadata accessor for ImageGlyphRecencyCodableData);
  v16 = v7 + OBJC_IVAR____TtC14RecencyService22ImageGlyphRecencyModel__lastMigrationControllerVersion;
  *v16 = v15;
  v16[8] = v13;

  v17 = v0[1];

  return v17();
}

uint64_t ImageGlyphRecencyModel._jsonDump()()
{
  v1[2] = v0;
  sub_231C8BECC();
  v1[3] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[4] = v2;
  *v2 = v1;
  v2[1] = sub_231C7CCF0;

  return sub_231C7C5F0();
}

uint64_t sub_231C7CCF0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v4[5] = a1;
  v4[6] = a2;

  if (v2)
  {

    v6 = v5[1];

    return v6();
  }

  else
  {
    v8 = v4[2];

    return MEMORY[0x2822009F8](sub_231C7CE40, v8, 0);
  }
}

uint64_t sub_231C7CE40()
{
  sub_231C8BEBC();
  result = sub_231C8BEAC();
  if (v2)
  {
    v3 = result;
    v4 = v2;
    sub_231C723D0(v0[5], v0[6]);

    v5 = v0[1];

    return v5(v3, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ImageGlyphRecencyError.hashValue.getter()
{
  v1 = *v0;
  sub_231C8C2BC();
  MEMORY[0x238379510](v1);
  return sub_231C8C2DC();
}

unint64_t ImageGlyphRecencyError.errorDescription.getter()
{
  if (*v0)
  {
    return 0xD000000000000026;
  }

  else
  {
    return 0xD00000000000002ALL;
  }
}

unint64_t sub_231C7CFB8()
{
  if (*v0)
  {
    return 0xD000000000000026;
  }

  else
  {
    return 0xD00000000000002ALL;
  }
}

char *sub_231C7D000(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70A10, &qword_231C8EA90);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_231C7D104(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70A00, &qword_231C8EA88);
  v10 = *(type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_231C7D2DC(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709F8, &qword_231C8EA80);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707A8, "B(") - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD707A8, "B(") - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_231C7D4CC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70A18, &qword_231C8EA98);
  v4 = *(sub_231C8BCCC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_231C7D5C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_231C7D694(v11, 0, 0, 1, a1, a2);
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
    sub_231C87AD4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_231C7D694(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_231C7D7A0(a5, a6);
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
    result = sub_231C8C0BC();
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

void *sub_231C7D7A0(uint64_t a1, unint64_t a2)
{
  v3 = sub_231C7D7EC(a1, a2);
  sub_231C7D91C(&unk_2846E91F8);
  return v3;
}

void *sub_231C7D7EC(uint64_t a1, unint64_t a2)
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

  v6 = sub_231C7DA08(v5, 0);
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

  result = sub_231C8C0BC();
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
        v10 = sub_231C8BF1C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_231C7DA08(v10, 0);
        result = sub_231C8C07C();
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

uint64_t sub_231C7D91C(uint64_t result)
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

  result = sub_231C7DA7C(result, v11, 1, v3);
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

void *sub_231C7DA08(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70960, &qword_231C8EA18);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_231C7DA7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70960, &qword_231C8EA18);
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

unint64_t sub_231C7DB70(uint64_t a1)
{
  sub_231C8BCCC();
  sub_231C85D00(&qword_280CFA698, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_231C8BE5C();

  return sub_231C7DDF4(a1, v2);
}

unint64_t sub_231C7DC08(unsigned __int8 *a1)
{
  sub_231C8C2BC();
  MEMORY[0x238379510](*a1);
  type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  ImageGlyphRecencyModel.ImageGlyphExternalRepresentation.hash(into:)(v4);
  v2 = sub_231C8C2DC();

  return sub_231C7DFB4(a1, v2);
}

uint64_t sub_231C7DC8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_231C7DD0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70528, &qword_231C8D980);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_231C7DD7C(uint64_t a1, uint64_t a2)
{
  sub_231C8C2BC();
  sub_231C8BEFC();
  v4 = sub_231C8C2DC();

  return sub_231C7E158(a1, a2, v4);
}

unint64_t sub_231C7DDF4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_231C8BCCC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_231C85D00(&qword_280CFA690, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_231C8BE8C();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_231C7DFB4(unsigned __int8 *a1, uint64_t a2)
{
  v5 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *a1;
    v13 = *(v6 + 72);
    do
    {
      sub_231C859F8(*(v2 + 48) + v13 * v10, v8, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      if (*v8 == v12)
      {
        v14 = _s14RecencyService010ImageGlyphA5ModelC0cD22ExternalRepresentationO2eeoiySbAE_AEtFZ_0(&v8[*(v5 + 20)], &a1[*(v5 + 20)]);
        sub_231C7DC8C(v8, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
        if (v14)
        {
          return v10;
        }
      }

      else
      {
        sub_231C7DC8C(v8, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_231C7E158(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_231C8C23C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_231C7E210(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD70A00, &qword_231C8EA88);
      v7 = *(type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_231C7E3B0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_231C7DC08(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_231C81274();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
    sub_231C7DC8C(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    v12 = *(v9 + 56);
    v13 = sub_231C8BCCC();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_231C7FC28(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_231C8BCCC();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_231C7E54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_231C7DB70(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_231C815A4();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_231C8BCCC();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
    v20 = *(v13 - 8);
    sub_231C85990(v12 + *(v20 + 72) * v7, a2, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    sub_231C8010C(v7, v9, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_231C7E6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_231C7DB70(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_231C81B44();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_231C8BCCC();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_231C8BC9C();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_231C8010C(v7, v9, MEMORY[0x277CC9578]);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_231C8BC9C();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_231C7E8B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v56 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation(0);
  MEMORY[0x28223BE20](v56);
  v63 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_231C8BCCC();
  v6 = *(v64 - 8);
  v7 = MEMORY[0x28223BE20](v64);
  v52 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v62 = &v49 - v9;
  v10 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  v54 = *(v10 - 8);
  v55 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709C0, &qword_231C8EA48);
  v58 = v4;
  result = sub_231C8C0DC();
  v15 = result;
  if (*(v13 + 16))
  {
    v49 = v2;
    v16 = 0;
    v57 = v13;
    v19 = *(v13 + 64);
    v18 = (v13 + 64);
    v17 = v19;
    v20 = 1 << *(v18 - 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & v17;
    v23 = (v20 + 63) >> 6;
    v51 = v6 + 16;
    v61 = (v6 + 32);
    v50 = (v6 + 8);
    v24 = result + 64;
    v53 = v6;
    while (1)
    {
      if (!v22)
      {
        v27 = v16;
        while (1)
        {
          v16 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            __break(1u);
            goto LABEL_46;
          }

          if (v16 >= v23)
          {
            break;
          }

          v28 = v18[v16];
          ++v27;
          if (v28)
          {
            v26 = __clz(__rbit64(v28));
            v22 = (v28 - 1) & v28;
            goto LABEL_15;
          }
        }

        if ((v58 & 1) == 0)
        {

          v3 = v49;
          goto LABEL_44;
        }

        v47 = v57;
        v48 = 1 << *(v57 + 32);
        v3 = v49;
        if (v48 >= 64)
        {
          bzero(v18, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v18 = -1 << v48;
        }

        *(v47 + 16) = 0;
        break;
      }

      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_15:
      v29 = v26 | (v16 << 6);
      v30 = v57;
      v31 = *(v57 + 48);
      v60 = *(v54 + 72);
      v32 = v31 + v60 * v29;
      if (v58)
      {
        sub_231C85990(v32, v12, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
        v33 = *(v30 + 56);
        v59 = *(v6 + 72);
        (*(v6 + 32))(v62, v33 + v59 * v29, v64);
      }

      else
      {
        sub_231C859F8(v32, v12, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
        v34 = *(v30 + 56);
        v59 = *(v6 + 72);
        (*(v6 + 16))(v62, v34 + v59 * v29, v64);
      }

      sub_231C8C2BC();
      MEMORY[0x238379510](*v12);
      sub_231C859F8(&v12[*(v55 + 20)], v63, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphExternalRepresentation);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v36 = v52;
          v37 = v64;
          (*v61)(v52, v63, v64);
          v38 = 2;
          goto LABEL_23;
        }

        v39 = 3;
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          v36 = v52;
          v37 = v64;
          (*v61)(v52, v63, v64);
          v38 = 0;
LABEL_23:
          MEMORY[0x238379510](v38);
          sub_231C85D00(&qword_280CFA698, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
          sub_231C8BE6C();
          (*v50)(v36, v37);
          goto LABEL_27;
        }

        v39 = 1;
      }

      MEMORY[0x238379510](v39);
      sub_231C8BEFC();

LABEL_27:
      result = sub_231C8C2DC();
      v40 = -1 << *(v15 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      v6 = v53;
      if (((-1 << v41) & ~*(v24 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v24 + 8 * v42);
          if (v46 != -1)
          {
            v25 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_7;
          }
        }

LABEL_46:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v41) & ~*(v24 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      sub_231C85990(v12, *(v15 + 48) + v60 * v25, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      result = (*v61)(*(v15 + 56) + v59 * v25, v62, v64);
      ++*(v15 + 16);
    }
  }

LABEL_44:
  *v3 = v15;
  return result;
}

uint64_t sub_231C7EF1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_231C8BCCC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD709B8, &qword_231C8EA40);
  v43 = v4;
  result = sub_231C8C0DC();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_231C85990(v27 + v28 * v24, v47, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_231C859F8(v29 + v28 * v24, v47, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      }

      sub_231C85D00(&qword_280CFA698, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_231C8BE5C();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_231C85990(v47, *(v12 + 56) + v28 * v20, type metadata accessor for ImageGlyphRecencyModel.ImageGlyphRecord);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}