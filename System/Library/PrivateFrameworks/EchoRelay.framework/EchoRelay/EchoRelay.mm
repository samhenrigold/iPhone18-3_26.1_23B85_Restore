uint64_t sub_249F5B66C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_249F6F3FC();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_249F5CBE4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_249F5B71C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_249F6F3FC();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_249F5C5CC(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_249F5B7E0()
{
  v1 = (type metadata accessor for BiomePFAUploader(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_249F6F3FC();
  sub_249F6381C();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = v2 + v1[7];
  v7 = sub_249F6382C();
  (v5)(v7);
  v8 = type metadata accessor for CoreAnalyticsUploader(0);
  sub_249F5D4A0((v6 + *(v8 + 20)));
  sub_249F5D4A0((v2 + v1[8]));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_249F5B924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_249F639C4();
  sub_249F6F3FC();
  sub_249F63ABC();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
LABEL_5:

    return sub_249F5CBE4(v9, a2, v8);
  }

  type metadata accessor for CoreAnalyticsUploader(0);
  sub_249F63ABC();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = v3 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(v3 + *(a3 + 24) + 24);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_249F5BA10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_249F639C4();
  sub_249F6F3FC();
  sub_249F63ABC();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    type metadata accessor for CoreAnalyticsUploader(0);
    sub_249F63ABC();
    if (*(v13 + 84) != a3)
    {
      *(v4 + *(a4 + 24) + 24) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = v4 + *(a4 + 20);
  }

  sub_249F5C5CC(v11, a2, a2, v10);
}

uint64_t sub_249F5BAF8()
{

  v0 = sub_249F63A00();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_249F5BB28()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_249F5BB74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = static NSUserDefaults.uploadingEnabled.getter(a2);
  *a1 = result & 1;
  return result;
}

uint64_t sub_249F5BBBC@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = static NSUserDefaults.perStreamElectionStatus.getter(a2);
  *a1 = result;
  return result;
}

uint64_t sub_249F5BC70@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = AMLPET3DeviceUploadWrapper.biomeEventPayload.getter(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_249F5BCA0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_249F68778(*(a1 + 16));
  }

  sub_249F6F1FC();
  v5 = sub_249F68868(*(a3 + 80));

  return sub_249F5CBE4(v5, v6, v7);
}

void sub_249F5BD18()
{
  sub_249F68874();
  if (v3)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_249F6F1FC();
    v5 = sub_249F68868(*(v4 + 80));

    sub_249F5C5CC(v5, v6, v0, v7);
  }
}

uint64_t sub_249F5BD88(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_249F68778(*(a1 + 8));
  }

  sub_249F6F1FC();
  v5 = sub_249F68868(*(a3 + 20));

  return sub_249F5CBE4(v5, v6, v7);
}

void sub_249F5BE00()
{
  sub_249F68874();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_249F6F1FC();
    v5 = sub_249F68868(*(v4 + 20));

    sub_249F5C5CC(v5, v6, v0, v7);
  }
}

uint64_t sub_249F5BE70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_249F687D8();
  v6 = sub_249F6F1FC();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return sub_249F68778(*(v3 + *(a3 + 20)));
  }

  return sub_249F5CBE4(v3, a2, v6);
}

uint64_t sub_249F5BF0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_249F6F1FC();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_249F5C5CC(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_249F5BFC4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_249F6F3FC();
    v9 = a1 + *(a3 + 40);

    return sub_249F5CBE4(v9, a2, v8);
  }
}

uint64_t sub_249F5C04C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_249F6F3FC();
    v8 = v5 + *(a4 + 40);

    return sub_249F5C5CC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_249F5C0F8(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_249F68778(*a1);
  }

  sub_249F6F1FC();
  v5 = sub_249F68868(*(a3 + 28));

  return sub_249F5CBE4(v5, v6, v7);
}

void sub_249F5C170()
{
  sub_249F68874();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_249F6F1FC();
    v5 = sub_249F68868(*(v4 + 28));

    sub_249F5C5CC(v5, v6, v0, v7);
  }
}

uint64_t sub_249F5C1E0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_249F68778(*(a1 + 8));
  }

  sub_249F6F1FC();
  v5 = sub_249F68868(*(a3 + 44));

  return sub_249F5CBE4(v5, v6, v7);
}

void sub_249F5C258()
{
  sub_249F68874();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_249F6F1FC();
    v5 = sub_249F68868(*(v4 + 44));

    sub_249F5C5CC(v5, v6, v0, v7);
  }
}

uint64_t UserDefault.init(key:defaultValue:container:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for UserDefault(0, a5, a3, a4);
  v13 = (a6 + *(v12 + 28));
  *v13 = a1;
  v13[1] = a2;
  result = (*(*(a5 - 8) + 32))(a6, a3, a5);
  *(a6 + *(v12 + 32)) = a4;
  return result;
}

uint64_t UserDefault.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_249F6F5BC();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v14 - v8;
  v10 = *(v2 + *(a1 + 32));
  v11 = sub_249F6F47C();
  v12 = [v10 objectForKey_];

  if (v12)
  {
    sub_249F6F5FC();
    swift_unknownObjectRelease();
    sub_249F5C5F4(v14, v15);
  }

  else
  {
    memset(v15, 0, sizeof(v15));
  }

  sub_249F5C584(qword_27EF2B830, &qword_249F6FCB8);
  if (swift_dynamicCast())
  {
    sub_249F5C5CC(v9, 0, 1, v5);
    return (*(*(v5 - 8) + 32))(a2, v9, v5);
  }

  else
  {
    sub_249F5C5CC(v9, 1, 1, v5);
    return (*(*(v5 - 8) + 16))(a2, v2, v5);
  }
}

uint64_t sub_249F5C584(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

_OWORD *sub_249F5C5F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_249F5C640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  MEMORY[0x28223BE20](a1, a1);
  v6 = &v12 - v5;
  (*(v7 + 16))(&v12 - v5);
  v10 = type metadata accessor for UserDefault(0, v4, v8, v9);
  return UserDefault.wrappedValue.setter(v6, v10);
}

uint64_t UserDefault.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + *(a2 + 32));
  v5 = *(a2 + 16);
  v6 = sub_249F6F6AC();
  v7 = sub_249F6F47C();
  [v4 setObject:v6 forKey:v7];
  swift_unknownObjectRelease();

  v8 = *(*(v5 - 8) + 8);

  return v8(a1, v5);
}

void (*UserDefault.wrappedValue.modify(uint64_t **a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = sub_249F5C970(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v6 = *(a2 + 16);
  v5[2] = v6;
  v7 = *(v6 - 8);
  v5[3] = v7;
  v8 = *(v7 + 64);
  v5[4] = sub_249F5C970(v8);
  v9 = sub_249F5C970(v8);
  v5[5] = v9;
  UserDefault.wrappedValue.getter(a2, v9);
  return sub_249F5C8B0;
}

void sub_249F5C8B0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    UserDefault.wrappedValue.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    UserDefault.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

void *sub_249F5C970(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

Swift::Void __swiftcall UserDefault.removeObject()()
{
  v2 = *(v1 + *(v0 + 32));
  v3 = sub_249F6F47C();
  [v2 removeObjectForKey_];
}

uint64_t sub_249F5CA10(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_249F5CDEC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_249F5CAA0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_249F5CBE4(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_249F5CC0C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
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
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v17 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v17[1] = (a2 - 1);
            }
          }

          else
          {

            sub_249F5C5CC(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_249F5CDEC()
{
  result = qword_27EF2B8B8;
  if (!qword_27EF2B8B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF2B8B8);
  }

  return result;
}

unint64_t FeedbackUploaderConfigurable.cirrusBundleId.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a1);
  MEMORY[0x24C209670](v2);

  return 0xD000000000000014;
}

uint64_t FeedbackUploader.init(config:)@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  *a2 = [objc_opt_self() sharedLoggerWithPersistenceConfiguration_];

  return sub_249F5CFA0(a1, (a2 + 1));
}

uint64_t sub_249F5CFA0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t FeedbackUploader.upload(event:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_249F5CFDC, 0, 0);
}

uint64_t sub_249F5CFDC()
{
  v1 = v0[20];
  v2 = *v1;
  v3 = sub_249F6F00C();
  v0[21] = v3;
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  sub_249F5D5D8((v1 + 8), v4);
  (*(v5 + 24))(v4, v5);
  v6 = sub_249F6F47C();
  v0[22] = v6;

  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  sub_249F5D5D8((v1 + 8), v7);
  (*(v8 + 8))(v7, v8);
  v9 = sub_249F6F47C();
  v0[23] = v9;

  v0[2] = v0;
  v0[3] = sub_249F5D1B8;
  v10 = swift_continuation_init();
  v0[17] = sub_249F5C584(&qword_27EF2B8C0, &qword_249F6FD08);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_249F5D3BC;
  v0[13] = &unk_285D1D540;
  v0[14] = v10;
  [v2 reportDataPlatformBatchedEvent:v3 forBundleID:v6 ofSchema:v9 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_249F5D1B8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_249F5D338;
  }

  else
  {
    v2 = sub_249F5D2C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_249F5D2C8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_249F5D338()
{
  v1 = v0[23];
  v3 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_249F5D3BC(uint64_t a1, void *a2)
{
  v3 = sub_249F5D5D8((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_249F5D61C(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume(v7);
  }
}

uint64_t sub_249F5D43C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_249F5D4A0(void *a1)
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

__n128 sub_249F5D528(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_249F5D53C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_249F5D57C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void *sub_249F5D5D8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_249F5D61C(uint64_t a1, uint64_t a2)
{
  sub_249F5C584(&qword_27EF2B8C8, &unk_249F6FD88);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_249F5D698()
{
  v1 = *v0;

  return v1;
}

uint64_t CoreAnalyticsUploader.init(config:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_249F6F3EC();
  v4 = a2 + *(type metadata accessor for CoreAnalyticsUploader(0) + 20);

  return sub_249F5CFA0(a1, v4);
}

uint64_t type metadata accessor for CoreAnalyticsUploader(uint64_t a1)
{
  result = qword_27EF2B8D0;
  if (!qword_27EF2B8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void CoreAnalyticsUploader.upload(payloadBuilder:)(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x24C2098D0]();
  sub_249F5D7FC(v2, a1, a2);

  objc_autoreleasePoolPop(v5);
}

void sub_249F5D7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + *(type metadata accessor for CoreAnalyticsUploader(0) + 20));
  v6 = v5[3];
  v7 = v5[4];
  sub_249F5D5D8(v5, v6);
  (*(v7 + 8))(v6, v7);
  v8 = sub_249F6F47C();

  v18[4] = a2;
  v18[5] = a3;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_249F5DBD4;
  v18[3] = &unk_285D1D678;
  v9 = _Block_copy(v18);

  v10 = AnalyticsSendEventLazy();
  _Block_release(v9);

  v11 = sub_249F6F3DC();
  v12 = sub_249F6F59C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18[0] = v14;
    *v13 = 136315138;
    if (v10)
    {
      v15 = 0x6673736563637553;
    }

    else
    {
      v15 = 0x742064656C696146;
    }

    if (v10)
    {
      v16 = 0xEC000000796C6C75;
    }

    else
    {
      v16 = 0xE90000000000006FLL;
    }

    v17 = sub_249F62A24(v15, v16, v18);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_249F5A000, v11, v12, "%s sent data to CoreAnalytics", v13, 0xCu);
    sub_249F5D4A0(v14);
    MEMORY[0x24C209D30](v14, -1, -1);
    MEMORY[0x24C209D30](v13, -1, -1);
  }
}

uint64_t sub_249F5DA5C(uint64_t a1)
{
  result = sub_249F6F3FC();
  if (v2 <= 0x3F)
  {
    result = sub_249F5DAE0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_249F5DAE0()
{
  result = qword_27EF2B8E0;
  if (!qword_27EF2B8E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27EF2B8E0);
  }

  return result;
}

__n128 sub_249F5DB3C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_249F5DB48(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_249F5DB88(uint64_t result, int a2, int a3)
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

id sub_249F5DBD4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_249F5DC78();
    v4 = sub_249F6F41C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_249F5DC60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_249F5DC78()
{
  result = qword_27EF2B8E8;
  if (!qword_27EF2B8E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF2B8E8);
  }

  return result;
}

uint64_t BiomePFAUploaderConfigurable.cirrusBundleId.getter(uint64_t a1, uint64_t a2)
{
  v6 = (*(a2 + 64))();
  MEMORY[0x24C209670](46, 0xE100000000000000);
  v4 = (*(a2 + 40))(a1, a2);
  MEMORY[0x24C209670](v4);

  return v6;
}

uint64_t BiomePFAUploaderConfigurable.propertiesJSON.getter()
{
  v68 = *MEMORY[0x277D85DE8];
  v0 = sub_249F6F4CC();
  MEMORY[0x28223BE20](v0 - 8, v1);
  v65[0] = v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_249F5C584(&qword_27EF2B8F0, &qword_249F6FE80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249F6FE40;
  strcpy((inited + 32), "biomeUseCase");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v4 = sub_249F6382C();
  v6 = v5(v4);
  v7 = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v8;
  sub_249F63978();
  *(inited + 72) = v7;
  *(inited + 80) = 0xD000000000000012;
  *(inited + 88) = v9;
  v10 = sub_249F6382C();
  *(inited + 96) = v11(v10);
  *(inited + 104) = v12;
  sub_249F63978();
  *(inited + 120) = v7;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = v13;
  v14 = sub_249F6382C();
  *(inited + 144) = v15(v14);
  *(inited + 152) = v16;
  *(inited + 168) = v7;
  strcpy((inited + 176), "dpgSchemaName");
  *(inited + 190) = -4864;
  v17 = sub_249F6382C();
  *(inited + 192) = v18(v17);
  *(inited + 200) = v19;
  *(inited + 216) = v7;
  *(inited + 224) = 0x4E737365636F7270;
  *(inited + 232) = 0xEB00000000656D61;
  v20 = sub_249F6382C();
  *(inited + 240) = v21(v20);
  *(inited + 248) = v22;
  *(inited + 264) = v7;
  *(inited + 272) = 0x6E7265746E497369;
  *(inited + 280) = 0xEA00000000006C61;
  v23 = sub_249F6382C();
  v25 = v24(v23);
  v26 = MEMORY[0x277D839B0];
  *(inited + 288) = v25 & 1;
  *(inited + 312) = v26;
  *(inited + 320) = 0x7963696C6F70;
  *(inited + 328) = 0xE600000000000000;
  v66 = 0;
  v67 = 0xE000000000000000;
  v27 = sub_249F6F17C();
  sub_249F637D4();
  v29 = v28;
  MEMORY[0x28223BE20](v30, v31);
  v33 = v65 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_249F6382C();
  v35(v34);
  sub_249F6F64C();
  (*(v29 + 8))(v33, v27);
  v36 = v67;
  *(inited + 336) = v66;
  *(inited + 344) = v36;
  sub_249F63978();
  *(inited + 360) = v7;
  *(inited + 368) = 0xD000000000000011;
  *(inited + 376) = v37;
  v38 = sub_249F6382C();
  *(inited + 384) = v39(v38);
  *(inited + 392) = v40;
  sub_249F63978();
  *(inited + 408) = v7;
  *(inited + 416) = 0xD000000000000011;
  *(inited + 424) = v41;
  v42 = sub_249F6382C();
  *(inited + 432) = v43(v42);
  *(inited + 440) = v44;
  *(inited + 456) = v7;
  strcpy((inited + 464), "cirrusBundleId");
  *(inited + 479) = -18;
  v45 = sub_249F6382C();
  *(inited + 480) = v46(v45);
  *(inited + 488) = v47;
  *(inited + 504) = v7;
  *(inited + 512) = 0x746E756F4378616DLL;
  *(inited + 520) = 0xE800000000000000;
  v48 = sub_249F6382C();
  v50 = v49(v48);
  v51 = MEMORY[0x277D83B88];
  *(inited + 552) = MEMORY[0x277D83B88];
  *(inited + 528) = v50;
  *(inited + 560) = 0x4E7473616CLL;
  *(inited + 568) = 0xE500000000000000;
  v52 = sub_249F6382C();
  v54 = v53(v52);
  *(inited + 600) = v51;
  *(inited + 576) = v54;
  sub_249F6F43C();
  v55 = objc_opt_self();
  v56 = sub_249F6F41C();

  v66 = 0;
  v57 = [v55 dataWithJSONObject:v56 options:1 error:&v66];

  v58 = v66;
  if (v57)
  {
    sub_249F6F02C();

    sub_249F6F4BC();
    sub_249F63AF4();
    v59 = sub_249F6F49C();
    v60 = sub_249F63AF4();
    sub_249F62288(v60, v61);
  }

  else
  {
    v62 = v58;
    v63 = sub_249F6EFEC();

    swift_willThrow();
    return 0;
  }

  return v59;
}

uint64_t BiomePFAUploader.init(config:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_249F63AD4();
  sub_249F63A44();
  v5 = type metadata accessor for BiomePFAUploader(0);
  v6 = a2 + *(v5 + 20);
  v7 = (v6 + *(type metadata accessor for CoreAnalyticsUploader(0) + 20));
  v7[3] = &type metadata for PET3CoreAnalyticsUploaderConfig;
  v7[4] = &off_285D1D668;
  *v7 = 0x6C7070612E6D6F63;
  v7[1] = v2;
  sub_249F63A44();
  v8 = a2 + *(v5 + 24);

  return sub_249F5CFA0(a1, v8);
}

uint64_t sub_249F5E4E8()
{
  v1 = sub_249F6F43C();
  v2 = (v0 + *(type metadata accessor for BiomePFAUploader(0) + 24));
  v3 = v2[3];
  v4 = v2[4];
  sub_249F5D5D8(v2, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v7 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_249F63134(v5, v7, 0xD000000000000015, 0x8000000249F71790, isUniquelyReferenced_nonNull_native);
  v9 = v2[3];
  v10 = v2[4];
  sub_249F5D5D8(v2, v9);
  v11 = (*(v10 + 8))(v9, v10);
  v13 = v12;
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_249F63134(v11, v13, 0x657355656D6F6962, 0xEC00000065736143, v14);
  v15 = v2[3];
  v16 = v2[4];
  sub_249F5D5D8(v2, v15);
  v17 = (*(v16 + 40))(v15, v16);
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_249F63134(v17, v19, 0x614E746E65696C63, 0xEA0000000000656DLL, v20);
  v21 = v2[3];
  v22 = v2[4];
  sub_249F5D5D8(v2, v21);
  v23 = (*(v22 + 32))(v21, v22);
  v25 = v24;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_249F63134(v23, v25, 0x6D65686353677064, 0xED0000656D614E61, v26);
  return v1;
}

uint64_t sub_249F5E72C()
{
  v1[18] = v0;
  sub_249F5C584(&qword_27EF2B958, &qword_249F6FF10);
  v1[19] = swift_task_alloc();
  v1[20] = type metadata accessor for AMLPET3DeviceUploadWrapper(0);
  v1[21] = swift_task_alloc();
  v1[22] = type metadata accessor for AMLPET3DummyBiomePayload(0);
  v1[23] = swift_task_alloc();
  v1[24] = type metadata accessor for PET3ServiceMetadata(0);
  v1[25] = swift_task_alloc();
  v1[26] = type metadata accessor for AMLPET3Metadata(0);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249F5E894, 0, 0);
}

uint64_t sub_249F5E894()
{
  v73 = v0;
  v1 = v0[28];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[18];
  *v2 = sub_249F638B8();
  v2[1] = 0xEE00337465702E65;
  sub_249F638CC();
  v2[2] = v5;
  v2[3] = v6;
  v2[4] = v7;
  v2[5] = 0xEC00000061642E65;
  sub_249F638F0();
  v2[6] = v8;
  v2[7] = v9;
  sub_249F639A8();
  v2[8] = v10;
  v2[9] = v11;
  sub_249F63B14();
  v2[10] = v12;
  v2[11] = v13;
  sub_249F63B00();
  sub_249F6F3EC();
  v14 = (v2 + *(v3 + 44));
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  sub_249F6B6E8(v1);
  sub_249F63890();
  sub_249F6F1EC();
  v71 = 0;
  v72 = 0xE000000000000000;
  sub_249F6F62C();
  v15 = (v4 + *(type metadata accessor for BiomePFAUploader(0) + 24));
  sub_249F5D5D8(v15, v15[3]);
  v16 = sub_249F639D0();
  v18 = v17(v16);
  v20 = v19;

  v71 = v18;
  v72 = v20;
  sub_249F63914();
  sub_249F637F8();
  v21 = sub_249F637E8();
  v22(v21);
  sub_249F63A68();

  sub_249F63914();
  sub_249F637F8();
  v23 = sub_249F637E8();
  v24(v23);
  sub_249F63A68();

  sub_249F63914();
  sub_249F637F8();
  v25 = sub_249F637E8();
  v26(v25);
  sub_249F63A68();

  sub_249F63914();
  sub_249F637F8();
  v27 = sub_249F637E8();
  v28(v27);
  sub_249F63A68();

  sub_249F63914();
  sub_249F637F8();
  v29 = sub_249F637E8();
  v30(v29);
  sub_249F63A68();

  v31 = v18;

  v32 = sub_249F6F3DC();
  v33 = sub_249F6F58C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = sub_249F63A80();
    v35 = sub_249F639E8();
    v71 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_249F62A24(v31, v20, &v71);
    _os_log_impl(&dword_249F5A000, v32, v33, "emitHeartbeat::%s", v34, 0xCu);
    sub_249F5D4A0(v35);
    sub_249F63984();
    sub_249F63984();
  }

  v36 = v0[23];
  v37 = v0[20];
  v38 = v0[21];
  *v36 = v31;
  v36[1] = v20;
  sub_249F6F1EC();
  v39 = *(v37 + 20);
  if (qword_27EF2B818 != -1)
  {
    swift_once();
  }

  *(v38 + v39) = qword_27EF2BA10;
  sub_249F63860();
  sub_249F632F4(v40, v41);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *(v38 + v39);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AMLPET3DeviceUploadWrapper._StorageClass(0);
    swift_allocObject();
    v43 = sub_249F66F00(v43);
    *(v38 + v39) = v43;
  }

  v44 = v0[26];
  v45 = v0[19];
  sub_249F63860();
  sub_249F6334C(v46, v45);
  sub_249F5C5CC(v45, 0, 1, v44);
  v47 = OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__metadata;
  swift_beginAccess();
  sub_249F633A4(v45, v43 + v47);
  swift_endAccess();
  sub_249F6346C(&qword_27EF2B960, type metadata accessor for AMLPET3DummyBiomePayload, &protocol conformance descriptor for AMLPET3DummyBiomePayload);
  v48 = sub_249F6F2FC();
  v50 = v49;
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *(v38 + v39);
  if ((v51 & 1) == 0)
  {
    type metadata accessor for AMLPET3DeviceUploadWrapper._StorageClass(0);
    swift_allocObject();
    v52 = sub_249F66F00(v52);
    *(v38 + v39) = v52;
  }

  v53 = (v52 + OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__biomeEventPayload);
  swift_beginAccess();
  v54 = *v53;
  v55 = v53[1];
  *v53 = v48;
  v53[1] = v50;
  sub_249F62288(v54, v55);
  sub_249F5D5D8(v15, v15[3]);
  v56 = sub_249F639D0();
  v57(v56);
  sub_249F5E394();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v0[6] = &type metadata for PET3HeartbeatConfig;
  v0[7] = &off_285D1D838;
  v64 = swift_allocObject();
  v0[3] = v64;
  v64[2] = 0xD000000000000027;
  v64[3] = v59;
  v64[4] = v61;
  v64[5] = v63;
  v0[2] = [objc_opt_self() sharedLoggerWithPersistenceConfiguration_];
  sub_249F6346C(&qword_27EF2B968, type metadata accessor for AMLPET3DeviceUploadWrapper, &protocol conformance descriptor for AMLPET3DeviceUploadWrapper);
  v65 = sub_249F6F2FC();
  v0[29] = v65;
  v0[30] = v66;
  v67 = v65;
  v68 = v66;
  v69 = swift_task_alloc();
  v0[31] = v69;
  *v69 = v0;
  v69[1] = sub_249F5EFD8;

  return FeedbackUploader.upload(event:)(v67, v68);
}

uint64_t sub_249F5EFD8()
{
  v2 = *v1;
  sub_249F63AB0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 256) = v0;

  sub_249F62288(*(v2 + 232), *(v2 + 240));
  if (v0)
  {
    v5 = sub_249F5F1DC;
  }

  else
  {
    v5 = sub_249F5F11C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_249F5F11C()
{
  v1 = *(v0 + 168);
  sub_249F63768();
  sub_249F63414(v2, v3);
  sub_249F634B4(v0 + 16);
  sub_249F637BC();
  sub_249F63414(v1, v4);
  sub_249F63780();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_249F5F1DC()
{
  v19 = v0;
  sub_249F634B4((v0 + 2));
  v1 = v0[32];
  v2 = v1;
  v3 = sub_249F6F3DC();
  v4 = sub_249F6F5AC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[28];
    v6 = v0[21];
    v7 = sub_249F63A80();
    v8 = sub_249F639E8();
    v18 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_249F6F6EC();
    v11 = sub_249F62A24(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_249F5A000, v3, v4, "Upload HeartBeat Event failed with error: %s", v7, 0xCu);
    sub_249F5D4A0(v8);
    sub_249F63984();
    sub_249F63984();

    sub_249F63768();
    v13 = v5;
  }

  else
  {
    v14 = v0[28];
    v6 = v0[21];

    sub_249F63768();
    v13 = v14;
  }

  sub_249F63414(v13, v12);
  sub_249F637BC();
  sub_249F63414(v6, v15);
  sub_249F63780();

  v16 = v0[1];

  return v16();
}

uint64_t sub_249F5F3A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_249F5E4E8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_249F63134(0x64616F6C7055, 0xE600000000000000, 0x6D614E746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_249F63134(0x64657472617473, 0xE700000000000000, 0x737574617473, 0xE600000000000000, v8);

  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_249F63134(a1, a2, 1868983913, 0xE400000000000000, v9);
  v10 = v6;
  v11 = *(type metadata accessor for BiomePFAUploader(0) + 20);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = MEMORY[0x24C2098D0]();
  sub_249F5D7FC(v3 + v11, sub_249F63764, v12);
  objc_autoreleasePoolPop(v13);
}

uint64_t sub_249F5F518()
{
  v1 = v0;
  v2 = sub_249F5E4E8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_249F63134(0x6165627472616548, 0xE900000000000074, 0x6D614E746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_249F63134(0x6574656C706D6F63, 0xE900000000000064, 0x737574617473, 0xE600000000000000, v4);
  v5 = v2;
  v6 = *(type metadata accessor for BiomePFAUploader(0) + 20);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = MEMORY[0x24C2098D0]();
  sub_249F5D7FC(v1 + v6, sub_249F63764, v7);
  objc_autoreleasePoolPop(v8);
}

uint64_t sub_249F5F654(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v7 = sub_249F5E4E8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_249F63134(0x64616F6C7055, 0xE600000000000000, 0x6D614E746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_249F63134(0x6574656C706D6F63, 0xE900000000000064, 0x737574617473, 0xE600000000000000, v9);

  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_249F63134(a1, a2, 1868983913, 0xE400000000000000, v10);
  v11 = sub_249F6F69C();
  v13 = v12;
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_249F63134(v11, v13, 0x6F7250746E657665, 0xEE00646573736563, v14);
  sub_249F6F56C();
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_249F63134(0, 0xE000000000000000, 0x657645656D6F6962, 0xEC0000007354746ELL, v15);
  v16 = v7;
  v17 = *(type metadata accessor for BiomePFAUploader(0) + 20);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  v19 = MEMORY[0x24C2098D0]();
  sub_249F5D7FC(v4 + v17, sub_249F63764, v18);
  objc_autoreleasePoolPop(v19);
}

uint64_t sub_249F5F8A0(uint64_t a1, double a2)
{
  v3 = v2;
  v4 = sub_249F5E4E8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_249F63134(0x64616F6C7055, 0xE600000000000000, 0x6D614E746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  swift_getErrorValue();
  v6 = sub_249F6F6EC();
  v8 = v7;
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_249F63134(v6, v8, 0x726F727265, 0xE500000000000000, v9);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_249F63134(0x64656C696146, 0xE600000000000000, 0x737574617473, 0xE600000000000000, v10);
  v11 = sub_249F6F69C();
  v13 = v12;
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_249F63134(v11, v13, 0x6F7250746E657665, 0xEE00646573736563, v14);
  sub_249F6F56C();
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_249F63134(0, 0xE000000000000000, 0x657645656D6F6962, 0xEC0000007354746ELL, v15);
  v16 = v4;
  v17 = *(type metadata accessor for BiomePFAUploader(0) + 20);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  v19 = MEMORY[0x24C2098D0]();
  sub_249F5D7FC(v3 + v17, sub_249F632D8, v18);
  objc_autoreleasePoolPop(v19);
}

void *sub_249F5FAFC(uint64_t a1)
{
  sub_249F5C584(&qword_27EF2B940, &qword_249F6FEF8);
  result = sub_249F6F67C();
  v3 = result;
  v4 = 0;
  v25 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v24 = result + 8;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v25 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];

      sub_249F63AF4();
      v19 = sub_249F6F47C();

      *(v24 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v20 = (v3[6] + 16 * v15);
      *v20 = v18;
      v20[1] = v17;
      *(v3[7] + 8 * v15) = v19;
      v21 = v3[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v3[2] = v23;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return v3;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_249F5FC84(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_249F5D5D8(a1, v2);
  v4 = (*(v3 + 32))(v2, v3);
  v22 = 46;
  v23 = 0xE100000000000000;
  v21[2] = &v22;
  v6 = sub_249F62588(0x7FFFFFFFFFFFFFFFLL, 1, sub_249F63654, v21, v4, v5, &v22);
  v7 = sub_249F5FE10(v6);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  if (!v13)
  {
    v7 = sub_249F6F5CC();
    v9 = v14;
    v11 = v15;
    v13 = v16;
  }

  v17 = a1[3];
  v18 = a1[4];
  sub_249F5D5D8(a1, v17);
  v22 = (*(v18 + 80))(v17, v18);
  v23 = v19;

  MEMORY[0x24C209670](46, 0xE100000000000000);

  v26 = v22;
  v27 = v23;
  v22 = v7;
  v23 = v9;
  v24 = v11;
  v25 = v13;
  sub_249F63674();
  sub_249F6F4FC();

  return v26;
}

uint64_t sub_249F5FE10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32 * v1);

  return v2;
}

uint64_t static BiomePFAUploader.persStreamUploadDPGBundleID(config:)(void *a1)
{
  sub_249F5FC84(a1);
  v2 = a1[3];
  v3 = a1[4];
  sub_249F5D5D8(a1, v2);
  (*(v3 + 64))(v2, v3);
  v4 = sub_249F63AF4();
  sub_249F5D5D8(v4, v5);
  v6 = sub_249F637E8();
  v7(v6);
  sub_249F6232C();
  sub_249F63854();
  v8 = sub_249F6F5EC();

  return v8;
}

id sub_249F5FF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v128 = v4;
  sub_249F63A00();
  v5 = swift_allocObject();
  v4[51] = v5;
  *(v5 + 16) = 0;
  sub_249F63A00();
  v6 = swift_allocObject();
  v125 = v4;
  v4[52] = v6;
  *(v6 + 16) = 0;
  if (sub_249F62380())
  {
    sub_249F63AD4();
    v7 = v4[50];
    sub_249F6F62C();

    sub_249F63978();
    v126 = 0xD000000000000011;
    v127 = v8;
    v9 = type metadata accessor for PET3ServiceMetadata(0) - 8;
    v10 = sub_249F63A2C();
    *v10 = 0x6C7070612E6D6F63;
    v10[1] = v4;
    sub_249F638CC();
    *(v11 + 16) = v12;
    *(v11 + 24) = v13;
    strcpy((v11 + 32), "com.apple.da");
    *(v11 + 45) = 0;
    *(v11 + 46) = -5120;
    sub_249F638F0();
    *(v14 + 48) = v15;
    *(v14 + 56) = v16;
    sub_249F639A8();
    *(v17 + 64) = v18;
    *(v17 + 72) = v19;
    sub_249F63B14();
    *(v20 + 80) = v21;
    *(v20 + 88) = v22;
    sub_249F63B00();
    sub_249F6F3EC();
    v23 = (v10 + *(v9 + 52));
    *v23 = 0;
    v23[1] = 0xE000000000000000;
    v24 = PET3ServiceMetadata.getMetadtaInJson()();
    sub_249F63890();

    MEMORY[0x24C209670](v24._countAndFlagsBits, v24._object);

    sub_249F5F3A8(v126, v127);

    v25 = type metadata accessor for BiomePFAUploader(0);
    v4[53] = v25;
    sub_249F637D4();
    v27 = v26;
    v29 = *(v28 + 64);
    v4[54] = v29;
    v30 = swift_task_alloc();
    sub_249F632F4(v7, v30);
    v31 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v32 = (v29 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = v6;
    v34 = swift_allocObject();
    v125[55] = v34;
    sub_249F6334C(v30, v34 + v31);
    *(v34 + v32) = v6;
    *(v34 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8)) = v5;

    v35 = sub_249F6F13C();
    v125[56] = v35;
    sub_249F637D4();
    v37 = v36;
    v125[57] = v36;
    v121 = swift_task_alloc();
    v125[58] = v121;
    v38 = *(v25 + 24);
    *(v125 + 144) = v38;
    v39 = (v7 + v38);
    v41 = *(v7 + v38 + 24);
    v40 = v39[4];
    sub_249F5D5D8(v39, v39[3]);
    v42 = *(v40 + 48);
    v123 = v33;

    if ((v42(v41, v40) & 1) == 0)
    {
      v48 = v39[3];
      v49 = v39[4];
      sub_249F5D5D8(v39, v48);
      sub_249F6399C();
      v50(v48, v49);
      v45 = sub_249F6F47C();

      v46 = MEMORY[0x277D43118];
LABEL_10:
      *v121 = v45;
      (*(v37 + 104))(v121, *v46, v35);
      v125[59] = sub_249F6F19C();
      sub_249F637D4();
      v124 = v51;
      v125[60] = v51;
      v52 = swift_task_alloc();
      v125[61] = v52;
      v120 = swift_task_alloc();
      (*(v37 + 16))(v120, v121, v35);
      v53 = sub_249F6F14C();
      sub_249F637D4();
      v55 = v54;
      v56 = sub_249F63A2C();
      v57 = v39[4];
      sub_249F5D5D8(v39, v39[3]);
      v58 = sub_249F63AA4();
      *v56 = v59(v58, v57);
      v56[1] = v60;
      (*(v55 + 104))(v56, *MEMORY[0x277D43120], v53);
      sub_249F63A10();
      sub_249F639C4();
      sub_249F6F17C();
      sub_249F63A2C();
      v61 = sub_249F63AC8();
      v62(v61);
      sub_249F5C584(&qword_27EF2B900, &qword_249F6FE90);
      v63 = sub_249F63A2C();
      v64 = sub_249F6F1AC();
      sub_249F5C5CC(v63, 1, 1, v64);
      v66 = v39[3];
      v65 = v39[4];
      sub_249F5D5D8(v39, v66);
      (*(v65 + 88))(v66, v65);

      sub_249F6F18C();

      sub_249F5FC84(v39);
      v125[62] = sub_249F5C584(&qword_27EF2B908, &qword_249F6FE98);
      sub_249F637D4();
      v68 = v67;
      v125[63] = v67;
      v69 = swift_task_alloc();
      v125[64] = v69;
      v70 = swift_task_alloc();
      v71 = v52;
      v72 = *(v124 + 16);
      v122 = v71;
      v72(v70, v71);

      sub_249F63AE8();
      sub_249F6F15C();

      v73 = v39[3];
      v74 = v39[4];
      sub_249F5D5D8(v39, v73);
      v75 = (*(v74 + 16))(v73, v74);
      v77 = v76;
      objc_allocWithZone(MEMORY[0x277CBEBD0]);
      result = sub_249F62224(v75, v77);
      v125[65] = result;
      if (result)
      {
        v79 = result;

        v80 = sub_249F5C584(&qword_27EF2B910, &qword_249F6FEA0);
        v125[66] = v80;
        v125[67] = *(v80 - 8);
        v125[68] = sub_249F63A2C();
        v81 = swift_task_alloc();
        (*(v68 + 16))(v81, v69);
        v82 = swift_task_alloc();
        v72(v82, v122);
        v84 = v39[3];
        v83 = v39[4];
        sub_249F5D5D8(v39, v84);
        v85 = *(v83 + 8);
        v86 = v79;
        v85(v84, v83);
        sub_249F624A4();
        sub_249F6F1BC();

        v87 = swift_task_alloc();
        v125[69] = v87;
        *v87 = v125;
        v87[1] = sub_249F60D64;

        return sub_249F5E72C();
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    if (MEMORY[0x277D211B0] && MEMORY[0x277D211B8] && MEMORY[0x277D211C0])
    {
      sub_249F63A10();
      sub_249F6399C();
      v43 = sub_249F63AC8();
      v44(v43);
      v45 = sub_249F6F40C();

      if (v45)
      {
        v46 = MEMORY[0x277D43110];
        goto LABEL_10;
      }

      sub_249F6F62C();

      sub_249F63978();
      v126 = 0xD000000000000024;
      v127 = v102;
      sub_249F63A10();
      sub_249F6399C();
      v103 = sub_249F63AC8();
      v105 = v104(v103);
      MEMORY[0x24C209670](v105);

      v106 = v127;

      v107 = sub_249F6F3DC();
      v108 = sub_249F6F5AC();

      if (os_log_type_enabled(v107, v108))
      {
        v109 = sub_249F63A80();
        v110 = sub_249F639E8();
        v126 = v110;
        *v109 = 136315138;
        *(v109 + 4) = sub_249F62A24(0xD000000000000024, v106, &v126);
        sub_249F63B60(&dword_249F5A000, v111, v112, "%s");
        sub_249F5D4A0(v110);
        sub_249F63984();
        sub_249F63984();
      }

      sub_249F5C584(&qword_27EF2B8F0, &qword_249F6FE80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249F6FE50;
      *(inited + 32) = sub_249F6F48C();
      *(inited + 40) = v114;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = 0xD000000000000024;
      *(inited + 56) = v106;
      v115 = sub_249F6F43C();
      v116 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v117 = sub_249F638B8();
      v118 = sub_249F62174(v117, 0xEE00337465702E65, -1, v115);
      sub_249F63854();
      swift_beginAccess();
      sub_249F63854();
      swift_beginAccess();
      sub_249F5F8A0(v118, *(v123 + 16));

      v47 = *(v5 + 16);
    }

    else
    {
      v88 = sub_249F6F3DC();
      v89 = sub_249F6F5AC();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = sub_249F63A80();
        v91 = sub_249F639E8();
        v126 = v91;
        *v90 = 136315138;
        *(v90 + 4) = sub_249F62A24(0xD000000000000031, 0x8000000249F71830, &v126);
        sub_249F63B60(&dword_249F5A000, v92, v93, "%s");
        sub_249F5D4A0(v91);
        sub_249F63984();
        sub_249F63984();
      }

      sub_249F5C584(&qword_27EF2B8F0, &qword_249F6FE80);
      v94 = swift_initStackObject();
      *(v94 + 16) = xmmword_249F6FE50;
      *(v94 + 32) = sub_249F6F48C();
      *(v94 + 40) = v95;
      *(v94 + 72) = MEMORY[0x277D837D0];
      *(v94 + 48) = 0xD000000000000031;
      *(v94 + 56) = 0x8000000249F71830;
      v96 = sub_249F6F43C();
      v97 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v98 = sub_249F638B8();
      v99 = sub_249F62174(v98, 0xEE00337465702E65, -1, v96);
      sub_249F63854();
      swift_beginAccess();
      sub_249F63854();
      swift_beginAccess();
      v100 = *(v33 + 16);
      v101 = v99;
      sub_249F5F8A0(v101, v100);

      v47 = *(v5 + 16);
    }
  }

  else
  {

    v47 = 0;
  }

  v119 = v125[1];

  return v119(v47);
}

uint64_t sub_249F60D64()
{
  v1 = *v0;
  sub_249F63AB0();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_249F60E5C, 0, 0);
}

uint64_t sub_249F60E5C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, os_log_t log, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25)
{
  sub_249F63B28();
  a24 = v27;
  a25 = v28;
  a23 = v26;
  v29 = v26[50];
  sub_249F5F518();
  swift_task_alloc();
  sub_249F63878();
  sub_249F632F4(v29, v25);
  v30 = swift_task_alloc();
  sub_249F632F4(v29, v30);
  v31 = swift_task_alloc();
  sub_249F632F4(v29, v31);
  v32 = sub_249F6F3DC();
  v33 = sub_249F6F58C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = v26[53];
    v35 = sub_249F639E8();
    a14 = swift_slowAlloc();
    *v35 = 136315650;
    v36 = (v25 + *(v34 + 24));
    v38 = v36[3];
    v37 = v36[4];
    v64 = v33;
    v39 = sub_249F5D5D8(v36, v38);
    (*(v37 + 24))(v38, v37);
    sub_249F63838();
    v41 = v40;
    sub_249F63414(v25, v40);
    sub_249F62A24(v39, v37, &a14);
    sub_249F63AA4();

    *(v35 + 4) = v39;
    *(v35 + 12) = 2080;
    v42 = v34;
    v43 = (v30 + *(v34 + 24));
    v44 = v43[4];
    sub_249F5D5D8(v43, v43[3]);
    v45 = sub_249F63AA4();
    v46(v45, v44);
    v47 = sub_249F63AC8();
    sub_249F63414(v47, v48);
    v49 = sub_249F63A98();
    v52 = sub_249F62A24(v49, v50, v51);

    *(v35 + 14) = v52;
    *(v35 + 22) = 2080;
    v53 = *(v42 + 24);
    v54 = *(v31 + v53 + 24);
    v55 = *(v31 + v53 + 32);
    sub_249F5D5D8((v31 + v53), v54);
    (*(v55 + 80))(v54, v55);
    sub_249F63414(v31, v41);
    v56 = sub_249F63A98();
    v59 = sub_249F62A24(v56, v57, v58);

    *(v35 + 24) = v59;
    _os_log_impl(&dword_249F5A000, v32, v64, "Start to upload %s to %s against %s...", v35, 0x20u);
    swift_arrayDestroy();
    sub_249F63984();
    sub_249F63984();
  }

  else
  {

    sub_249F63414(v25, type metadata accessor for BiomePFAUploader);
    sub_249F63414(v30, type metadata accessor for BiomePFAUploader);
    sub_249F63414(v31, type metadata accessor for BiomePFAUploader);
  }

  v60 = swift_task_alloc();
  v26[70] = v60;
  *v60 = v26;
  v60[1] = sub_249F611AC;
  sub_249F63B44();

  return MEMORY[0x2821A4280](v61);
}

uint64_t sub_249F611AC(uint64_t a1)
{
  sub_249F63AB0();
  *v4 = v3;
  v5 = *v2;
  sub_249F63AB0();
  *v6 = v5;
  *(v7 + 568) = v1;

  if (v1)
  {
    v8 = sub_249F614F8;
  }

  else
  {
    v8 = sub_249F612B8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_249F612B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_249F63B28();
  v17 = *(v16 + 520);
  v19 = *(v16 + 408);
  v18 = *(v16 + 416);
  v20 = *(v16 + 400);
  v21 = (v20 + *(v16 + 576));
  sub_249F6F62C();

  sub_249F63978();
  v46 = v22;
  sub_249F63854();
  swift_beginAccess();
  *(v16 + 392) = *(v19 + 16);
  v23 = sub_249F6F69C();
  MEMORY[0x24C209670](v23);

  MEMORY[0x24C209670](0x206D6F726620, 0xE600000000000000);
  v24 = v21[3];
  v25 = v21[4];
  sub_249F5D5D8(v21, v24);
  sub_249F6399C();
  v27 = v26(v24, v25);
  MEMORY[0x24C209670](v27);

  v28 = *(v19 + 16);
  sub_249F63854();
  swift_beginAccess();
  sub_249F5F654(0xD000000000000016, v46, *(v18 + 16));

  v29 = sub_249F63958();
  v43 = v30;
  v44 = *(v16 + 416);
  v45 = v29;
  (*(v31 + 8))();
  (*(v18 + 8))(v20, v28);
  (*(v20 + 8))(v46, v25);
  v32 = sub_249F63A98();
  v33(v32);
  sub_249F63854();
  swift_beginAccess();

  sub_249F63B44();

  return v36(v34, v35, v36, v37, v38, v39, v40, v41, v43, v44, v45, 0xD000000000000016, v46, a14, a15, a16);
}

uint64_t sub_249F614F8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_249F63B28();
  a23 = v27;
  a24 = v28;
  a22 = v25;
  v29 = v25[71];
  v30 = v25[50];
  sub_249F63A2C();
  sub_249F63878();
  sub_249F632F4(v30, v24);
  v31 = v29;
  v32 = sub_249F6F3DC();
  v33 = sub_249F6F5AC();

  if (os_log_type_enabled(v32, v33))
  {
    v65 = v25[71];
    v34 = v25[53];
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = sub_249F639E8();
    a13 = v37;
    *v35 = 136315394;
    v38 = (v24 + *(v34 + 24));
    v39 = v38[3];
    v26 = v38[4];
    sub_249F5D5D8(v38, v39);
    sub_249F6399C();
    v40(v39, v26);
    sub_249F63838();
    sub_249F63414(v24, v41);
    sub_249F62A24(v34, v26, &a13);
    sub_249F63AA4();

    *(v35 + 4) = v34;
    *(v35 + 12) = 2112;
    v42 = v65;
    v43 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 14) = v43;
    *v36 = v43;
    _os_log_impl(&dword_249F5A000, v32, v33, "Error uploading %s: %@", v35, 0x16u);
    sub_249F63578(v36, &qword_27EF2B920, &qword_249F6FEB0);
    sub_249F63984();
    sub_249F5D4A0(v37);
    sub_249F63984();
    sub_249F63984();
  }

  else
  {

    sub_249F63414(v24, type metadata accessor for BiomePFAUploader);
  }

  v44 = v25[71];
  v45 = v25[65];
  v46 = v25[55];
  v47 = v25[52];
  v48 = v25[50];

  sub_249F63854();
  swift_beginAccess();
  sub_249F63854();
  swift_beginAccess();
  sub_249F5F8A0(v44, *(v47 + 16));

  v49 = sub_249F63958();
  v63 = v50;
  v64 = v25[52];
  v66 = v49;
  (*(v51 + 8))();
  (*(v26 + 8))(v44, v45);
  (*(v48 + 8))(v46, v47);
  v52 = sub_249F63A98();
  v53(v52);
  sub_249F63854();
  swift_beginAccess();

  sub_249F63B44();

  return v56(v54, v55, v56, v57, v58, v59, v60, v61, a9, v63, v64, v66, a13, a14, a15, a16);
}

uint64_t sub_249F6180C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v74 = a4;
  v75 = a1;
  v76 = a2;
  v9 = sub_249F5C584(&qword_27EF2B958, &qword_249F6FF10);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v72 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v78 = &v72 - v14;
  v77 = type metadata accessor for AMLPET3DeviceUploadWrapper(0);
  MEMORY[0x28223BE20](v77, v15);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PET3ServiceMetadata(0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for AMLPET3Metadata(0);
  v23 = MEMORY[0x28223BE20](v73 - 8, v22);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v23, v26);
  v29 = &v72 - v28;
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v72 - v31;
  v79 = a3;
  v33 = sub_249F6F3DC();
  v34 = sub_249F6F59C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = a5;
    v36 = v17;
    v37 = v29;
    v38 = v32;
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_249F5A000, v33, v34, "innerTransformer started", v39, 2u);
    v40 = v39;
    v32 = v38;
    v29 = v37;
    v17 = v36;
    a5 = v35;
    MEMORY[0x24C209D30](v40, -1, -1);
  }

  strcpy(v21, "com.apple.pet3");
  v21[15] = -18;
  *(v21 + 2) = 0x6E6E416775626564;
  *(v21 + 3) = 0xEF6E6F697461746FLL;
  strcpy(v21 + 32, "com.apple.da");
  v21[45] = 0;
  *(v21 + 23) = -5120;
  *(v21 + 6) = 0x656D697265707845;
  *(v21 + 7) = 0xEF70756F7247746ELL;
  *(v21 + 8) = 0x756F62616B6C6177;
  *(v21 + 9) = 0xE900000000000074;
  *(v21 + 10) = 0x7972726163;
  *(v21 + 11) = 0xE500000000000000;
  sub_249F6F3EC();
  v41 = &v21[*(v18 + 44)];
  *v41 = 0;
  *(v41 + 1) = 0xE000000000000000;
  sub_249F6B6E8(v32);
  sub_249F63414(v21, type metadata accessor for PET3ServiceMetadata);
  sub_249F6F1EC();
  v42 = *(v77 + 20);
  if (qword_27EF2B818 != -1)
  {
    swift_once();
  }

  *&v17[v42] = qword_27EF2BA10;
  sub_249F632F4(v32, v29);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = *&v17[v42];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AMLPET3DeviceUploadWrapper._StorageClass(0);
    swift_allocObject();
    v44 = sub_249F66F00(v44);
    *&v17[v42] = v44;
  }

  v45 = v78;
  sub_249F6334C(v29, v78);
  v46 = v73;
  sub_249F5C5CC(v45, 0, 1, v73);
  v47 = OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__metadata;
  swift_beginAccess();
  sub_249F633A4(v45, v44 + v47);
  swift_endAccess();
  v48 = v44 + v47;
  v49 = v72;
  sub_249F63508(v48, v72);
  if (sub_249F5CBE4(v49, 1, v46) == 1)
  {
    *v25 = 0;
    *(v25 + 1) = 0;
    *(v25 + 2) = 0xE000000000000000;
    *(v25 + 3) = 0;
    *(v25 + 4) = 0xE000000000000000;
    *(v25 + 5) = 0;
    *(v25 + 6) = 0xE000000000000000;
    *(v25 + 14) = 0;
    *(v25 + 8) = 0;
    *(v25 + 9) = 0xE000000000000000;
    *(v25 + 10) = 0;
    *(v25 + 11) = 0xE000000000000000;
    *(v25 + 12) = 0;
    *(v25 + 13) = 0xE000000000000000;
    *(v25 + 14) = 0;
    *(v25 + 15) = 0xE000000000000000;
    *(v25 + 16) = 0;
    *(v25 + 17) = 0xE000000000000000;
    *(v25 + 18) = 0;
    *(v25 + 19) = 0xE000000000000000;
    *(v25 + 20) = 0;
    *(v25 + 21) = 0xE000000000000000;
    sub_249F6F1EC();
    if (sub_249F5CBE4(v49, 1, v46) != 1)
    {
      sub_249F63578(v49, &qword_27EF2B958, &qword_249F6FF10);
    }
  }

  else
  {
    sub_249F6334C(v49, v25);
  }

  *(v25 + 22) = a6;
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *&v17[v42];
  if ((v50 & 1) == 0)
  {
    type metadata accessor for AMLPET3DeviceUploadWrapper._StorageClass(0);
    swift_allocObject();
    v51 = sub_249F66F00(v51);
    *&v17[v42] = v51;
  }

  v52 = v78;
  sub_249F6334C(v25, v78);
  sub_249F5C5CC(v52, 0, 1, v46);
  v53 = OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__metadata;
  swift_beginAccess();
  sub_249F633A4(v52, v51 + v53);
  swift_endAccess();
  v54 = v74;
  swift_beginAccess();
  *(v54 + 16) = a6;
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *&v17[v42];
  if ((v55 & 1) == 0)
  {
    type metadata accessor for AMLPET3DeviceUploadWrapper._StorageClass(0);
    swift_allocObject();
    v56 = sub_249F66F00(v56);
    *&v17[v42] = v56;
  }

  v57 = (v56 + OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__biomeEventPayload);
  swift_beginAccess();
  v58 = *v57;
  v59 = v57[1];
  v61 = v75;
  v60 = v76;
  *v57 = v75;
  v57[1] = v60;
  sub_249F62288(v58, v59);
  sub_249F635D0(v61, v60);
  v62 = sub_249F6F3DC();
  v63 = sub_249F6F59C();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 134217984;
    *(v64 + 4) = a6;
    _os_log_impl(&dword_249F5A000, v62, v63, "timestamp %f", v64, 0xCu);
    MEMORY[0x24C209D30](v64, -1, -1);
  }

  v65 = sub_249F6F3DC();
  v66 = sub_249F6F59C();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_249F5A000, v65, v66, "innerTransformer completed", v67, 2u);
    MEMORY[0x24C209D30](v67, -1, -1);
  }

  result = swift_beginAccess();
  v69 = *(a5 + 16);
  v70 = v69 + 1;
  if (__OFADD__(v69, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    *(a5 + 16) = v70;
    sub_249F6346C(&qword_27EF2B968, type metadata accessor for AMLPET3DeviceUploadWrapper, &protocol conformance descriptor for AMLPET3DeviceUploadWrapper);
    v71 = sub_249F6F2FC();
    sub_249F63414(v32, type metadata accessor for AMLPET3Metadata);
    sub_249F63414(v17, type metadata accessor for AMLPET3DeviceUploadWrapper);
    return v71;
  }

  return result;
}

id sub_249F62174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_249F6F47C();

  if (a4)
  {
    v8 = sub_249F6F41C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

id sub_249F62224(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_249F6F47C();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_249F62288(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t type metadata accessor for BiomePFAUploader(uint64_t a1)
{
  result = qword_27EF2B928;
  if (!qword_27EF2B928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_249F6232C()
{
  result = qword_27EF2B8F8;
  if (!qword_27EF2B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2B8F8);
  }

  return result;
}

BOOL sub_249F62380()
{
  if (MEMORY[0x277D43130])
  {
    v0 = MEMORY[0x277D43138] == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0 && MEMORY[0x277D43128] != 0 && MEMORY[0x277D43148] != 0 && MEMORY[0x277D43140] != 0 && MEMORY[0x277D43150] != 0 && MEMORY[0x277D43158] != 0;
}

uint64_t sub_249F623DC(uint64_t a1, uint64_t a2, double a3)
{
  v7 = *(type metadata accessor for BiomePFAUploader(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + v9);
  v11 = *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_249F6180C(a1, a2, v3 + v8, v10, v11, a3);
}

unint64_t sub_249F624A4()
{
  result = qword_27EF2B918;
  if (!qword_27EF2B918)
  {
    sub_249F624FC(&qword_27EF2B908, &qword_249F6FE98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2B918);
  }

  return result;
}

uint64_t sub_249F624FC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_249F62544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_249F6F6BC() & 1;
  }
}

char *sub_249F62588@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_249F6F53C();
    v11 = v29;
    v12 = v30;
    v13 = v31;

    v14 = sub_249F62924(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 2);
    a7 = *(v14 + 3);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_38:
      *(v14 + 2) = v10;
      v35 = &v14[32 * v9];
      *(v35 + 4) = v7;
      *(v35 + 5) = v11;
      *(v35 + 6) = v12;
      *(v35 + 7) = v13;
      return v14;
    }

LABEL_41:
    v14 = sub_249F62924((a7 > 1), v10, 1, v14);
    goto LABEL_38;
  }

  v7 = a4;
  v14 = (4 * v16);
  v43 = MEMORY[0x277D84F90];
  v17 = 15;
  while (1)
  {
    v41 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if ((v17 >> 14) == v14)
      {
        v17 = v41;
        goto LABEL_30;
      }

      v18 = sub_249F6F52C();
      v12 = v19;
      v44[0] = v18;
      v44[1] = v19;
      v20 = v45(v44);
      if (v8)
      {

        return v14;
      }

      v21 = v20;

      if (v21)
      {
        break;
      }

      v17 = sub_249F6F4EC();
    }

    v23 = (v41 >> 14 == v13) & a2;
    if (v23)
    {
      goto LABEL_20;
    }

    if (v13 < v41 >> 14)
    {
      break;
    }

    v42 = sub_249F6F53C();
    v37 = v25;
    v38 = v24;
    v36 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_249F62924(0, *(v43 + 2) + 1, 1, v43);
    }

    v13 = *(v43 + 2);
    v27 = *(v43 + 3);
    v12 = v13 + 1;
    if (v13 >= v27 >> 1)
    {
      v43 = sub_249F62924((v27 > 1), v13 + 1, 1, v43);
    }

    *(v43 + 2) = v12;
    v28 = &v43[32 * v13];
    *(v28 + 4) = v42;
    *(v28 + 5) = v38;
    *(v28 + 6) = v37;
    *(v28 + 7) = v36;
LABEL_20:
    v17 = sub_249F6F4EC();
    if ((v23 & 1) == 0 && *(v43 + 2) == a1)
    {
LABEL_30:
      if (v17 >> 14) == v14 && (a2)
      {

        return v43;
      }

      if (v14 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        v7 = sub_249F6F53C();
        v11 = v32;
        v12 = v33;
        v13 = v34;

        v14 = v43;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v14 + 2);
          a7 = *(v14 + 3);
          goto LABEL_37;
        }
      }

      v14 = sub_249F62924(0, *(v14 + 2) + 1, 1, v14);
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

void *sub_249F62924(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
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
      sub_249F5C584(&qword_27EF2B978, qword_249F6FF18);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_249F6A50C(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_249F62A24(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_249F62AE8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_249F5D43C(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_249F5D4A0(v11);
  return v7;
}

unint64_t sub_249F62AE8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_249F62BE8(a5, a6);
    *a1 = v9;
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
    result = sub_249F6F63C();
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

uint64_t sub_249F62BE8(uint64_t a1, unint64_t a2)
{
  v3 = sub_249F62C34(a1, a2);
  sub_249F62D4C(&unk_285D1D4C0);
  return v3;
}

uint64_t sub_249F62C34(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_249F6F51C())
  {
    result = sub_249F6CB6C(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_249F6F61C();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_249F6F63C();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_249F62D4C(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_249F62E30(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_249F62E30(char *result, int64_t a2, char a3, char *a4)
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
    sub_249F5C584(&qword_27EF2B950, &unk_249F70590);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_249F6303C(uint64_t a1)
{
  result = sub_249F6F3FC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CoreAnalyticsUploader(319);
    if (v3 <= 0x3F)
    {
      result = sub_249F630D8();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_249F630D8()
{
  result = qword_27EF2B938;
  if (!qword_27EF2B938)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27EF2B938);
  }

  return result;
}

uint64_t sub_249F63134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_249F6A60C(a3, a4);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v12;
  v15 = v13;
  sub_249F5C584(&qword_27EF2B948, &unk_249F6FF00);
  if ((sub_249F6F65C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_249F6A60C(a3, a4);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_249F6F6DC();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v6;
  if (v15)
  {
    v19 = (v18[7] + 16 * v14);
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    sub_249F63288(v14, a3, a4, a1, a2, v18);
  }
}

unint64_t sub_249F63288(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_249F632F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_249F639C4();
  v4(v3);
  sub_249F6381C();
  v5 = sub_249F63AE8();
  v6(v5);
  return a2;
}

uint64_t sub_249F6334C(uint64_t a1, uint64_t a2)
{
  v3 = sub_249F639C4();
  v4(v3);
  sub_249F6381C();
  v5 = sub_249F63AE8();
  v6(v5);
  return a2;
}

uint64_t sub_249F633A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_249F5C584(&qword_27EF2B958, &qword_249F6FF10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_249F63414(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  sub_249F6381C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_249F6346C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_249F63508(uint64_t a1, uint64_t a2)
{
  v4 = sub_249F5C584(&qword_27EF2B958, &qword_249F6FF10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249F63578(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_249F5C584(a2, a3);
  sub_249F6381C();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_249F635D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

unint64_t sub_249F63674()
{
  result = qword_27EF2B970;
  if (!qword_27EF2B970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2B970);
  }

  return result;
}

__n128 sub_249F636C8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_249F636D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_249F63714(uint64_t result, int a2, int a3)
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

uint64_t sub_249F63780()
{
  v2 = *(v0 + 184);

  return sub_249F63414(v2, type metadata accessor for AMLPET3DummyBiomePayload);
}

uint64_t sub_249F63890()
{

  return sub_249F63414(v0, type metadata accessor for PET3ServiceMetadata);
}

void sub_249F63914()
{

  JUMPOUT(0x24C209670);
}

void sub_249F63984()
{

  JUMPOUT(0x24C209D30);
}

uint64_t sub_249F639E8()
{

  return swift_slowAlloc();
}

void *sub_249F63A10()
{
  v2 = v0[3];

  return sub_249F5D5D8(v0, v2);
}

uint64_t sub_249F63A2C()
{

  return swift_task_alloc();
}

uint64_t sub_249F63A44()
{

  return sub_249F6F3EC();
}

void sub_249F63A68()
{

  JUMPOUT(0x24C209670);
}

uint64_t sub_249F63A80()
{

  return swift_slowAlloc();
}

void sub_249F63B60(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_249F63B80(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_249F6F47C();
  v7 = [a4 objectForKey_];

  if (v7)
  {
    sub_249F6F5FC();
    swift_unknownObjectRelease();
    sub_249F5C5F4(&v11, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  sub_249F5C584(qword_27EF2B830, &qword_249F6FCB8);
  v8 = swift_dynamicCast();
  v9 = v11;
  if (!v8)
  {
    v9 = a1;
  }

  return v9 & 1;
}

uint64_t sub_249F63C58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_249F6F47C();
  v7 = [a4 objectForKey_];

  if (v7)
  {
    sub_249F6F5FC();
    swift_unknownObjectRelease();
    sub_249F5C5F4(&v9, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  sub_249F5C584(qword_27EF2B830, &qword_249F6FCB8);
  sub_249F5C584(&qword_27EF2B9C0, &unk_249F6FF80);
  if (swift_dynamicCast())
  {
    return v9;
  }

  return a1;
}

void sub_249F63D4C(char a1)
{
  v2 = *(v1 + 24);
  v3 = sub_249F6F6CC();
  v4 = sub_249F6F47C();
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

void sub_249F63DC4(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_249F5C584(&qword_27EF2B9C0, &unk_249F6FF80);
  v3 = sub_249F6F6CC();
  v4 = sub_249F6F47C();
  [v2 setObject:v3 forKey:v4];
  swift_unknownObjectRelease();
}

uint64_t static NSUserDefaults.uploadingEnabled.getter(uint64_t a1)
{
  if (qword_27EF2B7F0 != -1)
  {
    a1 = sub_249F64508(&qword_27EF2B7F0);
  }

  sub_249F64534(a1);
  v1 = byte_27EF2B980;
  v2 = qword_27EF2B988;
  v3 = unk_27EF2B990;
  v4 = qword_27EF2B998;

  v5 = v4;
  v6 = sub_249F63B80(v1, v2, v3, v5);

  return v6 & 1;
}

uint64_t static NSUserDefaults.uploadingEnabled.setter(char a1)
{
  if (qword_27EF2B7F0 != -1)
  {
    sub_249F64508(&qword_27EF2B7F0);
  }

  sub_249F64528();
  swift_beginAccess();
  sub_249F63D4C(a1 & 1);
  return swift_endAccess();
}

uint64_t (*static NSUserDefaults.uploadingEnabled.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27EF2B7F0 != -1)
  {
    sub_249F64508(&qword_27EF2B7F0);
  }

  sub_249F64554();
  *(a1 + 24) = sub_249F63B80(byte_27EF2B980, qword_27EF2B988, unk_27EF2B990, qword_27EF2B998) & 1;
  return sub_249F63FD8;
}

uint64_t sub_249F63FD8(uint64_t a1)
{
  sub_249F63D4C(*(a1 + 24));

  return swift_endAccess();
}

id sub_249F64024()
{
  sub_249F5CDEC();
  result = static NSUserDefaults.petUserDefaults()();
  byte_27EF2B980 = 1;
  qword_27EF2B988 = 0xD000000000000010;
  unk_27EF2B990 = 0x8000000249F71980;
  qword_27EF2B998 = result;
  return result;
}

id static NSUserDefaults.petUserDefaults()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  result = sub_249F62224(0xD000000000000029, 0x8000000249F718D0);
  if (!result)
  {
    result = sub_249F6F66C();
    __break(1u);
  }

  return result;
}

id static NSUserDefaults.$uploadingEnabled.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EF2B7F0 != -1)
  {
    sub_249F64508(&qword_27EF2B7F0);
  }

  sub_249F64528();
  swift_beginAccess();
  v3 = qword_27EF2B988;
  v2 = unk_27EF2B990;
  v6 = qword_27EF2B998;
  v4 = qword_27EF2B998;
  *a1 = byte_27EF2B980;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;

  return v6;
}

uint64_t static NSUserDefaults.perStreamElectionStatus.getter(uint64_t a1)
{
  if (qword_27EF2B7F8 != -1)
  {
    a1 = sub_249F644E8(&qword_27EF2B7F8);
  }

  sub_249F64534(a1);
  v1 = qword_27EF2B9A0;
  v2 = *algn_27EF2B9A8;
  v4 = qword_27EF2B9B0;
  v3 = unk_27EF2B9B8;

  v5 = v3;
  v6 = sub_249F63C58(v1, v2, v4, v5);

  return v6;
}

uint64_t static NSUserDefaults.perStreamElectionStatus.setter(uint64_t a1)
{
  if (qword_27EF2B7F8 != -1)
  {
    sub_249F644E8(&qword_27EF2B7F8);
  }

  sub_249F64528();
  swift_beginAccess();
  sub_249F63DC4(a1);
  return swift_endAccess();
}

uint64_t (*static NSUserDefaults.perStreamElectionStatus.modify(uint64_t a1))(uint64_t a1, char a2)
{
  if (qword_27EF2B7F8 != -1)
  {
    sub_249F644E8(&qword_27EF2B7F8);
  }

  sub_249F64554();
  *(a1 + 24) = sub_249F63C58(qword_27EF2B9A0, *algn_27EF2B9A8, qword_27EF2B9B0, unk_27EF2B9B8);
  return sub_249F6436C;
}

uint64_t sub_249F6436C(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  if (a2)
  {

    sub_249F63DC4(v3);
  }

  else
  {
    sub_249F63DC4(v2);
  }

  return swift_endAccess();
}

id sub_249F643D4()
{
  v0 = sub_249F6F43C();
  sub_249F5CDEC();
  result = static NSUserDefaults.petUserDefaults()();
  qword_27EF2B9A0 = v0;
  *algn_27EF2B9A8 = 0xD000000000000017;
  qword_27EF2B9B0 = 0x8000000249F71960;
  unk_27EF2B9B8 = result;
  return result;
}

id static NSUserDefaults.$perStreamElectionStatus.getter@<X0>(void *a1@<X8>)
{
  if (qword_27EF2B7F8 != -1)
  {
    sub_249F644E8(&qword_27EF2B7F8);
  }

  sub_249F64528();
  swift_beginAccess();
  v2 = *algn_27EF2B9A8;
  v4 = qword_27EF2B9B0;
  v6 = unk_27EF2B9B8;
  v3 = unk_27EF2B9B8;
  *a1 = qword_27EF2B9A0;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;

  return v6;
}

uint64_t sub_249F644E8(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_249F64508(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_249F64534(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_249F64554()
{

  return swift_beginAccess();
}

uint64_t AMLPET3DummyBiomePayload.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for AMLPET3DummyBiomePayload(0);
  return sub_249F6F1EC();
}

uint64_t AMLPET3DeviceUploadWrapper.init()@<X0>(uint64_t a2@<X8>)
{
  sub_249F6F1EC();
  v3 = *(type metadata accessor for AMLPET3DeviceUploadWrapper(0) + 20);
  if (qword_27EF2B818 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_27EF2BA10;
}

uint64_t AMLPET3DeviceUploadWrapper.metadata.setter(uint64_t a1)
{
  v3 = v2;
  v5 = sub_249F5C584(&qword_27EF2B958, &qword_249F6FF10);
  sub_249F687E4(v5);
  sub_249F6880C();
  MEMORY[0x28223BE20](v6, v7);
  v8 = *(sub_249F68888() + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_249F6878C();
    v11 = sub_249F68750();
    v10 = sub_249F66F00(v11);
    *(v3 + v8) = v10;
  }

  sub_249F67040(a1, v1);
  sub_249F688A8();
  sub_249F5C5CC(v1, 0, 1, v12);
  v13 = OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__metadata;
  swift_beginAccess();
  sub_249F633A4(v1, v10 + v13);
  return swift_endAccess();
}

uint64_t AMLPET3DeviceUploadWrapper.biomeEventPayload.setter()
{
  v3 = v1;
  sub_249F68760();
  v4 = *(type metadata accessor for AMLPET3DeviceUploadWrapper(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_249F6878C();
    v7 = sub_249F68750();
    v6 = sub_249F66F00(v7);
    *(v3 + v4) = v6;
  }

  v8 = (v6 + OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__biomeEventPayload);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = v2;
  v8[1] = v0;
  return sub_249F62288(v9, v10);
}

uint64_t AMLPET3DeviceUploadWrapper.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_249F5C584(&qword_27EF2B958, &qword_249F6FF10);
  sub_249F687E4(v4);
  sub_249F6880C();
  MEMORY[0x28223BE20](v5, v6);
  sub_249F687F0();
  sub_249F687BC();
  v8 = *(v1 + v7);
  v9 = OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__metadata;
  sub_249F68818(v8 + OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__metadata, v12);
  sub_249F63508(v8 + v9, v2);
  v10 = type metadata accessor for AMLPET3Metadata(0);
  if (sub_249F5CBE4(v2, 1, v10) != 1)
  {
    return sub_249F67040(v2, a1);
  }

  AMLPET3Metadata.init()(a1);
  result = sub_249F5CBE4(v2, 1, v10);
  if (result != 1)
  {
    return sub_249F63578(v2, &qword_27EF2B958, &qword_249F6FF10);
  }

  return result;
}

uint64_t AMLPET3Metadata.platform.setter()
{
  sub_249F68760();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t AMLPET3Metadata.device.setter()
{
  sub_249F68760();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t AMLPET3Metadata.build.setter()
{
  sub_249F68760();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t AMLPET3Metadata.country.setter()
{
  sub_249F68760();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t AMLPET3Metadata.language.setter()
{
  sub_249F68760();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t AMLPET3Metadata.configVersion.setter()
{
  sub_249F68760();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t AMLPET3Metadata.bootUuid.setter()
{
  sub_249F68760();

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t AMLPET3Metadata.debugAnnotation.setter()
{
  sub_249F68760();

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t AMLPET3Metadata.automationRackAnnotation.setter()
{
  sub_249F68760();

  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  return result;
}

uint64_t AMLPET3Metadata.schemaVersion.setter()
{
  sub_249F68760();

  *(v1 + 160) = v2;
  *(v1 + 168) = v0;
  return result;
}

uint64_t AMLPET3Metadata.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AMLPET3Metadata(0) + 80);
  sub_249F6F1FC();
  sub_249F6381C();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t AMLPET3Metadata.unknownFields.setter()
{
  v2 = sub_249F687D8();
  v3 = *(type metadata accessor for AMLPET3Metadata(v2) + 80);
  sub_249F6F1FC();
  sub_249F6381C();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*AMLPET3Metadata.unknownFields.modify())()
{
  v0 = sub_249F687D8();
  type metadata accessor for AMLPET3Metadata(v0);
  return nullsub_1;
}

uint64_t AMLPET3Metadata.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xE000000000000000;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0xE000000000000000;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0xE000000000000000;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0xE000000000000000;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0xE000000000000000;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0xE000000000000000;
  *(a1 + 176) = 0;
  type metadata accessor for AMLPET3Metadata(0);
  return sub_249F6F1EC();
}

uint64_t AMLPET3DummyBiomePayload.placeholder.setter()
{
  sub_249F68760();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AMLPET3DummyBiomePayload.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AMLPET3DummyBiomePayload(0) + 20);
  sub_249F6F1FC();
  sub_249F6381C();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t AMLPET3DummyBiomePayload.unknownFields.setter()
{
  v2 = sub_249F687D8();
  v3 = *(type metadata accessor for AMLPET3DummyBiomePayload(v2) + 20);
  sub_249F6F1FC();
  sub_249F6381C();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*AMLPET3DummyBiomePayload.unknownFields.modify())()
{
  v0 = sub_249F687D8();
  type metadata accessor for AMLPET3DummyBiomePayload(v0);
  return nullsub_1;
}

uint64_t sub_249F65254(uint64_t a1)
{
  v2 = type metadata accessor for AMLPET3Metadata(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_249F670FC(a1, v5);
  return AMLPET3DeviceUploadWrapper.metadata.setter(v5);
}

void (*AMLPET3DeviceUploadWrapper.metadata.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_249F5C970(0x38uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = sub_249F5C584(&qword_27EF2B958, &qword_249F6FF10);
  sub_249F687E4(v4);
  v6 = sub_249F5C970(*(v5 + 64));
  v3[4] = v6;
  v7 = type metadata accessor for AMLPET3Metadata(0);
  sub_249F6381C();
  v9 = *(v8 + 64);
  v3[5] = sub_249F5C970(v9);
  v10 = sub_249F5C970(v9);
  v3[6] = v10;
  sub_249F687BC();
  v12 = *(v1 + v11);
  v13 = OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__metadata;
  sub_249F68818(v12 + OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__metadata, v3);
  sub_249F63508(v12 + v13, v6);
  if (sub_249F5CBE4(v6, 1, v7) == 1)
  {
    *v10 = 0;
    v10[1] = 0;
    v10[2] = 0xE000000000000000;
    v10[3] = 0;
    v10[4] = 0xE000000000000000;
    v10[5] = 0;
    v10[6] = 0xE000000000000000;
    *(v10 + 14) = 0;
    v10[8] = 0;
    v10[9] = 0xE000000000000000;
    v10[10] = 0;
    v10[11] = 0xE000000000000000;
    v10[12] = 0;
    v10[13] = 0xE000000000000000;
    v10[14] = 0;
    v10[15] = 0xE000000000000000;
    v10[16] = 0;
    v10[17] = 0xE000000000000000;
    v10[18] = 0;
    v10[19] = 0xE000000000000000;
    v10[20] = 0;
    v10[21] = 0xE000000000000000;
    v10[22] = 0;
    sub_249F6F1EC();
    if (sub_249F5CBE4(v6, 1, v7) != 1)
    {
      sub_249F63578(v6, &qword_27EF2B958, &qword_249F6FF10);
    }
  }

  else
  {
    sub_249F67040(v6, v10);
  }

  return sub_249F65480;
}

void sub_249F65480(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 32);
  if (a2)
  {
    sub_249F670FC(v4, v3);
    AMLPET3DeviceUploadWrapper.metadata.setter(v3);
    sub_249F67160(v4);
  }

  else
  {
    AMLPET3DeviceUploadWrapper.metadata.setter(v4);
  }

  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

BOOL AMLPET3DeviceUploadWrapper.hasMetadata.getter()
{
  v2 = sub_249F5C584(&qword_27EF2B958, &qword_249F6FF10);
  sub_249F687E4(v2);
  sub_249F6880C();
  MEMORY[0x28223BE20](v3, v4);
  sub_249F687F0();
  sub_249F687BC();
  v6 = *(v0 + v5);
  v7 = OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__metadata;
  sub_249F68818(v6 + OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__metadata, v11);
  sub_249F63508(v6 + v7, v1);
  v8 = type metadata accessor for AMLPET3Metadata(0);
  v9 = sub_249F5CBE4(v1, 1, v8) != 1;
  sub_249F63578(v1, &qword_27EF2B958, &qword_249F6FF10);
  return v9;
}

Swift::Void __swiftcall AMLPET3DeviceUploadWrapper.clearMetadata()()
{
  v2 = v1;
  v3 = sub_249F5C584(&qword_27EF2B958, &qword_249F6FF10);
  sub_249F687E4(v3);
  sub_249F6880C();
  MEMORY[0x28223BE20](v4, v5);
  v6 = *(sub_249F68888() + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_249F6878C();
    v9 = sub_249F68750();
    v8 = sub_249F66F00(v9);
    *(v2 + v6) = v8;
  }

  sub_249F688A8();
  sub_249F5C5CC(v0, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__metadata;
  swift_beginAccess();
  sub_249F633A4(v0, v8 + v11);
  swift_endAccess();
}

uint64_t AMLPET3DeviceUploadWrapper.biomeEventPayload.getter(uint64_t a1)
{
  sub_249F687BC();
  sub_249F68818(*(v1 + v2) + OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__biomeEventPayload, v6);
  v3 = sub_249F6885C();
  sub_249F635D0(v3, v4);
  return sub_249F6885C();
}

void (*AMLPET3DeviceUploadWrapper.biomeEventPayload.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = sub_249F5C970(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  sub_249F687BC();
  *(v3 + 18) = v4;
  v5 = (*(v1 + v4) + OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__biomeEventPayload);
  sub_249F68818(v5, v3);
  v6 = *v5;
  v7 = v5[1];
  v3[6] = *v5;
  v3[7] = v7;
  sub_249F635D0(v6, v7);
  return sub_249F657DC;
}

void sub_249F657DC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    sub_249F635D0(*(*a1 + 48), v4);
    AMLPET3DeviceUploadWrapper.biomeEventPayload.setter();
    v5 = *(v2 + 48);
    v6 = *(v2 + 56);
  }

  else
  {
    v7 = *(v2 + 72);
    v8 = *(v2 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 72);
      v12 = *(v2 + 64);
      sub_249F6878C();
      v13 = sub_249F68750();
      v10 = sub_249F66F00(v13);
      *(v12 + v11) = v10;
    }

    v14 = (v10 + OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__biomeEventPayload);
    swift_beginAccess();
    v5 = *v14;
    v6 = v14[1];
    *v14 = v3;
    v14[1] = v4;
  }

  sub_249F62288(v5, v6);

  free(v2);
}

uint64_t AMLPET3DeviceUploadWrapper.unknownFields.getter()
{
  sub_249F6F1FC();
  sub_249F6381C();
  v0 = sub_249F63AE8();

  return v1(v0);
}

uint64_t AMLPET3DeviceUploadWrapper.unknownFields.setter()
{
  sub_249F687D8();
  sub_249F6F1FC();
  sub_249F6381C();
  v0 = sub_249F6885C();

  return v1(v0);
}

uint64_t sub_249F659A0()
{
  v0 = sub_249F6F3CC();
  sub_249F6867C(v0, qword_27EF2B9C8);
  sub_249F671BC(v0, qword_27EF2B9C8);
  sub_249F5C584(&qword_27EF2BAE8, &qword_249F704F0);
  v1 = (sub_249F5C584(&qword_27EF2BAF0, &qword_249F70910) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_249F6FF90;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "deviceUploadTime";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_249F6F3AC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "platform";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "device";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "build";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "isInternal";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "isCarry";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "isSeed";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "isGm";
  *(v21 + 1) = 4;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "country";
  *(v23 + 1) = 7;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "language";
  *(v25 + 1) = 8;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "configVersion";
  *(v27 + 1) = 13;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "bootUUID";
  *(v29 + 1) = 8;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "debugAnnotation";
  *(v31 + 1) = 15;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "automationRackAnnotation";
  *(v33 + 1) = 24;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "schemaVersion";
  *(v35 + 1) = 13;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "biomeEventTs";
  *(v37 + 1) = 12;
  v37[16] = 2;
  v8();
  return sub_249F6F3BC();
}

uint64_t AMLPET3Metadata.decodeMessage<A>(decoder:)()
{
  sub_249F68800();
  while (1)
  {
    sub_249F6382C();
    result = sub_249F6F24C();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_249F6876C();
        sub_249F6F2AC();
        break;
      case 2:
      case 3:
      case 4:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
        sub_249F6876C();
        sub_249F6F28C();
        break;
      case 5:
      case 6:
      case 7:
      case 8:
        sub_249F6876C();
        sub_249F6F25C();
        break;
      case 16:
        sub_249F6876C();
        sub_249F6F27C();
        break;
      default:
        continue;
    }
  }
}

uint64_t AMLPET3Metadata.traverse<A>(visitor:)()
{
  v2 = v1;
  sub_249F68800();
  if (!*v0 || (sub_249F6873C(), result = sub_249F6F37C(), (v2 = v1) == 0))
  {
    sub_249F686F0();
    if (!v6 || (result = sub_249F6871C(v4, v5, 2), (v2 = v1) == 0))
    {
      sub_249F686F0();
      if (!v9 || (result = sub_249F6871C(v7, v8, 3), (v2 = v1) == 0))
      {
        sub_249F686F0();
        if (!v12 || (result = sub_249F6871C(v10, v11, 4), (v2 = v1) == 0))
        {
          if (*(v0 + 56) != 1 || (sub_249F6873C(), result = sub_249F6F32C(), (v2 = v1) == 0))
          {
            if (*(v0 + 57) != 1 || (sub_249F6873C(), result = sub_249F6F32C(), (v2 = v1) == 0))
            {
              if (*(v0 + 58) != 1 || (sub_249F6873C(), result = sub_249F6F32C(), (v2 = v1) == 0))
              {
                if (*(v0 + 59) != 1 || (sub_249F6873C(), result = sub_249F6F32C(), (v2 = v1) == 0))
                {
                  sub_249F686F0();
                  if (!v15 || (result = sub_249F6871C(v13, v14, 9), (v2 = v1) == 0))
                  {
                    sub_249F686F0();
                    if (!v18 || (result = sub_249F6871C(v16, v17, 10), (v2 = v1) == 0))
                    {
                      sub_249F686F0();
                      if (!v21 || (result = sub_249F6871C(v19, v20, 11), (v2 = v1) == 0))
                      {
                        sub_249F686F0();
                        if (!v24 || (result = sub_249F6871C(v22, v23, 12), (v2 = v1) == 0))
                        {
                          sub_249F686F0();
                          if (!v27 || (result = sub_249F6871C(v25, v26, 13), (v2 = v1) == 0))
                          {
                            sub_249F686F0();
                            if (!v30 || (result = sub_249F6871C(v28, v29, 14), (v2 = v1) == 0))
                            {
                              sub_249F686F0();
                              if (!v33 || (result = sub_249F6871C(v31, v32, 15), (v2 = v1) == 0))
                              {
                                if (!*(v0 + 176) || (sub_249F6876C(), result = sub_249F6F34C(), !v2))
                                {
                                  type metadata accessor for AMLPET3Metadata(0);
                                  sub_249F6876C();
                                  return sub_249F6F1DC();
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static AMLPET3Metadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_249F6F6BC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v5 && (sub_249F6F6BC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
  if (!v6 && (sub_249F6F6BC() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56) || *(a1 + 57) != *(a2 + 57) || *(a1 + 58) != *(a2 + 58) || *(a1 + 59) != *(a2 + 59))
  {
    return 0;
  }

  v8 = *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72);
  if (!v8 && (sub_249F6F6BC() & 1) == 0)
  {
    return 0;
  }

  v9 = *(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88);
  if (!v9 && (sub_249F6F6BC() & 1) == 0)
  {
    return 0;
  }

  v10 = *(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104);
  if (!v10 && (sub_249F6F6BC() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a1 + 112) == *(a2 + 112) && *(a1 + 120) == *(a2 + 120);
  if (!v11 && (sub_249F6F6BC() & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + 128) == *(a2 + 128) && *(a1 + 136) == *(a2 + 136);
  if (!v12 && (sub_249F6F6BC() & 1) == 0)
  {
    return 0;
  }

  v13 = *(a1 + 144) == *(a2 + 144) && *(a1 + 152) == *(a2 + 152);
  if (!v13 && (sub_249F6F6BC() & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + 160) == *(a2 + 160) && *(a1 + 168) == *(a2 + 168);
  if (!v14 && (sub_249F6F6BC() & 1) == 0 || *(a1 + 176) != *(a2 + 176))
  {
    return 0;
  }

  type metadata accessor for AMLPET3Metadata(0);
  sub_249F6F1FC();
  sub_249F68704();
  sub_249F67FB0(v15, v16, MEMORY[0x277D216D0]);
  return sub_249F68838() & 1;
}

uint64_t sub_249F66524(uint64_t a1, uint64_t a2)
{
  v4 = sub_249F67FB0(&qword_27EF2BAD8, type metadata accessor for AMLPET3Metadata, &protocol conformance descriptor for AMLPET3Metadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_249F665A4(uint64_t a1)
{
  v2 = sub_249F67FB0(&qword_27EF2BA50, type metadata accessor for AMLPET3Metadata, &protocol conformance descriptor for AMLPET3Metadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_249F66614(uint64_t a1, uint64_t a2)
{
  sub_249F67FB0(&qword_27EF2BA50, type metadata accessor for AMLPET3Metadata, &protocol conformance descriptor for AMLPET3Metadata);

  return sub_249F6F31C();
}

uint64_t sub_249F666AC()
{
  v0 = sub_249F6F3CC();
  sub_249F6867C(v0, qword_27EF2B9E0);
  sub_249F671BC(v0, qword_27EF2B9E0);
  sub_249F5C584(&qword_27EF2BAE8, &qword_249F704F0);
  v1 = (sub_249F5C584(&qword_27EF2BAF0, &qword_249F70910) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249F6FE50;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "placeholder";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_249F6F3AC();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_249F6F3BC();
}

uint64_t AMLPET3DummyBiomePayload.decodeMessage<A>(decoder:)()
{
  sub_249F68800();
  while (1)
  {
    sub_249F6382C();
    result = sub_249F6F24C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_249F6876C();
      sub_249F6F28C();
    }
  }

  return result;
}

uint64_t AMLPET3DummyBiomePayload.traverse<A>(visitor:)()
{
  sub_249F68800();
  sub_249F686F0();
  if (!v3 || (result = sub_249F6871C(v1, v2, 1), !v0))
  {
    type metadata accessor for AMLPET3DummyBiomePayload(0);
    sub_249F6876C();
    return sub_249F6F1DC();
  }

  return result;
}

uint64_t static AMLPET3DummyBiomePayload.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_249F6F6BC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AMLPET3DummyBiomePayload(0);
  sub_249F6F1FC();
  sub_249F68704();
  sub_249F67FB0(v3, v4, MEMORY[0x277D216D0]);
  return sub_249F68838() & 1;
}

uint64_t sub_249F66A78(uint64_t a1, uint64_t a2)
{
  v4 = sub_249F67FB0(&qword_27EF2BAD0, type metadata accessor for AMLPET3DummyBiomePayload, &protocol conformance descriptor for AMLPET3DummyBiomePayload);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_249F66AF8(uint64_t a1)
{
  v2 = sub_249F67FB0(&qword_27EF2B960, type metadata accessor for AMLPET3DummyBiomePayload, &protocol conformance descriptor for AMLPET3DummyBiomePayload);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_249F66B68(uint64_t a1, uint64_t a2)
{
  sub_249F67FB0(&qword_27EF2B960, type metadata accessor for AMLPET3DummyBiomePayload, &protocol conformance descriptor for AMLPET3DummyBiomePayload);

  return sub_249F6F31C();
}

uint64_t sub_249F66C00()
{
  v0 = sub_249F6F3CC();
  sub_249F6867C(v0, qword_27EF2B9F8);
  sub_249F671BC(v0, qword_27EF2B9F8);
  sub_249F5C584(&qword_27EF2BAE8, &qword_249F704F0);
  v1 = (sub_249F5C584(&qword_27EF2BAF0, &qword_249F70910) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249F6FFA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "metadata";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_249F6F3AC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "biomeEventPayload";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_249F6F3BC();
}

uint64_t sub_249F66DEC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_249F6F3CC();
  v7 = sub_249F671BC(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

double sub_249F66E84()
{
  v0 = sub_249F6878C();
  v1 = OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__metadata;
  sub_249F688A8();
  sub_249F5C5CC(v0 + v1, 1, 1, v2);
  result = 0.0;
  *(v0 + OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__biomeEventPayload) = xmmword_249F6FFB0;
  qword_27EF2BA10 = v0;
  return result;
}

uint64_t sub_249F66F00(uint64_t a1)
{
  v4 = sub_249F5C584(&qword_27EF2B958, &qword_249F6FF10);
  sub_249F687E4(v4);
  sub_249F6880C();
  MEMORY[0x28223BE20](v5, v6);
  sub_249F687F0();
  v7 = OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__metadata;
  sub_249F688A8();
  sub_249F5C5CC(v1 + v7, 1, 1, v8);
  v9 = (v1 + OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__biomeEventPayload);
  *(v1 + OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__biomeEventPayload) = xmmword_249F6FFB0;
  v10 = OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__metadata;
  sub_249F68818(a1 + OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__metadata, v20);
  sub_249F63508(a1 + v10, v2);
  swift_beginAccess();
  sub_249F633A4(v2, v1 + v7);
  swift_endAccess();
  v11 = (a1 + OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__biomeEventPayload);
  sub_249F68818(a1 + OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__biomeEventPayload, v19);
  v13 = *v11;
  v12 = v11[1];
  v14 = sub_249F6382C();
  sub_249F635D0(v14, v15);

  swift_beginAccess();
  v16 = *v9;
  v17 = v9[1];
  *v9 = v13;
  v9[1] = v12;
  sub_249F62288(v16, v17);
  return v1;
}

uint64_t sub_249F67040(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMLPET3Metadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_249F670C4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249F670FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMLPET3Metadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249F67160(uint64_t a1)
{
  v2 = type metadata accessor for AMLPET3Metadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249F671BC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_249F671F4()
{
  sub_249F63578(v0 + OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__metadata, &qword_27EF2B958, &qword_249F6FF10);
  sub_249F62288(*(v0 + OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__biomeEventPayload), *(v0 + OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__biomeEventPayload + 8));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t AMLPET3DeviceUploadWrapper.decodeMessage<A>(decoder:)()
{
  v3 = v0;
  sub_249F68800();
  v5 = v4;
  v6 = *(type metadata accessor for AMLPET3DeviceUploadWrapper(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AMLPET3DeviceUploadWrapper._StorageClass(0);
    swift_allocObject();
    v9 = sub_249F68750();
    v8 = sub_249F66F00(v9);
    *(v3 + v6) = v8;
  }

  return sub_249F67318(v8, v5, v2, v1);
}

uint64_t sub_249F67318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_249F6F24C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      sub_249F67480(a2, a1, a3, a4);
    }

    else if (result == 1)
    {
      sub_249F673A4(a2, a1, a3, a4);
    }
  }

  return result;
}

uint64_t sub_249F673A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AMLPET3Metadata(0);
  sub_249F67FB0(&qword_27EF2BA50, type metadata accessor for AMLPET3Metadata, &protocol conformance descriptor for AMLPET3Metadata);
  sub_249F6F2CC();
  return swift_endAccess();
}

uint64_t sub_249F67480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_249F6F26C();
  return swift_endAccess();
}

uint64_t AMLPET3DeviceUploadWrapper.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AMLPET3DeviceUploadWrapper(0);
  sub_249F6876C();
  result = sub_249F67570(v5, v6, v7, a3);
  if (!v3)
  {
    sub_249F6382C();
    return sub_249F6F1DC();
  }

  return result;
}

uint64_t sub_249F67570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_249F6766C(a1, a2, a3, a4);
  if (!v4)
  {
    v7 = (a1 + OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__biomeEventPayload);
    result = swift_beginAccess();
    v8 = *v7;
    v9 = v7[1];
    switch(v9 >> 62)
    {
      case 1uLL:
        v10 = v8;
        v11 = v8 >> 32;
        goto LABEL_8;
      case 2uLL:
        v10 = *(v8 + 16);
        v11 = *(v8 + 24);
LABEL_8:
        if (v10 != v11)
        {
          goto LABEL_9;
        }

        return result;
      case 3uLL:
        return result;
      default:
        if ((v9 & 0xFF000000000000) == 0)
        {
          return result;
        }

LABEL_9:
        sub_249F635D0(v8, v9);
        sub_249F6F33C();
        result = sub_249F62288(v8, v9);
        break;
    }
  }

  return result;
}

uint64_t sub_249F6766C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_249F5C584(&qword_27EF2B958, &qword_249F6FF10);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for AMLPET3Metadata(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__metadata;
  swift_beginAccess();
  sub_249F63508(a1 + v13, v8);
  if (sub_249F5CBE4(v8, 1, v9) == 1)
  {
    return sub_249F63578(v8, &qword_27EF2B958, &qword_249F6FF10);
  }

  sub_249F67040(v8, v12);
  sub_249F67FB0(&qword_27EF2BA50, type metadata accessor for AMLPET3Metadata, &protocol conformance descriptor for AMLPET3Metadata);
  sub_249F6F39C();
  return sub_249F67160(v12);
}

uint64_t static AMLPET3DeviceUploadWrapper.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_249F687BC();
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_249F678F4(v5, v6);

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  sub_249F6F1FC();
  sub_249F68704();
  sub_249F67FB0(v8, v9, MEMORY[0x277D216D0]);
  sub_249F6885C();
  return sub_249F6F46C() & 1;
}

uint64_t sub_249F678F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMLPET3Metadata(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_249F5C584(&qword_27EF2BAE0, &qword_249F704E8);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v33[-v11];
  v13 = sub_249F5C584(&qword_27EF2B958, &qword_249F6FF10);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v33[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v33[-v19];
  v21 = OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__metadata;
  swift_beginAccess();
  sub_249F63508(a1 + v21, v20);
  v22 = OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__metadata;
  swift_beginAccess();
  v23 = *(v9 + 56);
  sub_249F63508(v20, v12);
  sub_249F63508(a2 + v22, &v12[v23]);
  if (sub_249F5CBE4(v12, 1, v4) == 1)
  {

    sub_249F63578(v20, &qword_27EF2B958, &qword_249F6FF10);
    if (sub_249F5CBE4(&v12[v23], 1, v4) == 1)
    {
      sub_249F63578(v12, &qword_27EF2B958, &qword_249F6FF10);
LABEL_9:
      v26 = (a1 + OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__biomeEventPayload);
      swift_beginAccess();
      v27 = *v26;
      v28 = v26[1];
      v29 = (a2 + OBJC_IVAR____TtCV9EchoRelay26AMLPET3DeviceUploadWrapperP33_A7E7AA7FD5D28165875BE742AC0727A413_StorageClass__biomeEventPayload);
      swift_beginAccess();
      v30 = *v29;
      v31 = v29[1];
      sub_249F635D0(v27, v28);
      sub_249F635D0(v30, v31);
      v24 = MEMORY[0x24C209180](v27, v28, v30, v31);
      sub_249F62288(v30, v31);
      sub_249F62288(v27, v28);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_249F63508(v12, v17);
  if (sub_249F5CBE4(&v12[v23], 1, v4) == 1)
  {

    sub_249F63578(v20, &qword_27EF2B958, &qword_249F6FF10);
    sub_249F67160(v17);
LABEL_6:
    sub_249F63578(v12, &qword_27EF2BAE0, &qword_249F704E8);
    goto LABEL_7;
  }

  sub_249F67040(&v12[v23], v7);

  v25 = static AMLPET3Metadata.== infix(_:_:)(v17, v7);
  sub_249F67160(v7);
  sub_249F63578(v20, &qword_27EF2B958, &qword_249F6FF10);
  sub_249F67160(v17);
  sub_249F63578(v12, &qword_27EF2B958, &qword_249F6FF10);
  if (v25)
  {
    goto LABEL_9;
  }

LABEL_7:
  v24 = 0;
LABEL_10:

  return v24 & 1;
}

uint64_t sub_249F67CE8(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_249F6F6FC();
  a1(0);
  sub_249F67FB0(a2, a3, a4);
  sub_249F6F44C();
  return sub_249F6F70C();
}

uint64_t sub_249F67DEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_249F67FB0(&qword_27EF2BAC8, type metadata accessor for AMLPET3DeviceUploadWrapper, &protocol conformance descriptor for AMLPET3DeviceUploadWrapper);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_249F67E6C(uint64_t a1)
{
  v2 = sub_249F67FB0(&qword_27EF2B968, type metadata accessor for AMLPET3DeviceUploadWrapper, &protocol conformance descriptor for AMLPET3DeviceUploadWrapper);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_249F67EDC(uint64_t a1, uint64_t a2)
{
  sub_249F67FB0(&qword_27EF2B968, type metadata accessor for AMLPET3DeviceUploadWrapper, &protocol conformance descriptor for AMLPET3DeviceUploadWrapper);

  return sub_249F6F31C();
}

uint64_t sub_249F67F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_249F6F6FC();
  sub_249F6F44C();
  return sub_249F6F70C();
}

uint64_t sub_249F67FB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_249F68380(uint64_t a1)
{
  result = sub_249F6F1FC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_249F6845C(uint64_t a1)
{
  result = sub_249F6F1FC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_249F68500(uint64_t a1)
{
  result = sub_249F6F1FC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AMLPET3DeviceUploadWrapper._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_249F6858C(uint64_t a1)
{
  sub_249F68624(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_249F68624(uint64_t a1)
{
  if (!qword_27EF2BAC0)
  {
    type metadata accessor for AMLPET3Metadata(255);
    v1 = sub_249F6F5BC();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF2BAC0);
    }
  }
}

uint64_t *sub_249F6867C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_249F6871C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x28217E540](a1, a2, a3, v4, v3);
}

uint64_t sub_249F68778@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t sub_249F6878C()
{
  type metadata accessor for AMLPET3DeviceUploadWrapper._StorageClass(0);

  return swift_allocObject();
}

uint64_t sub_249F68818(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t sub_249F68838()
{

  return sub_249F6F46C();
}

uint64_t sub_249F68888()
{

  return type metadata accessor for AMLPET3DeviceUploadWrapper(0);
}

uint64_t PET3ExtensionConfig.__allocating_init()()
{
  v0 = swift_allocObject();
  PET3ExtensionConfig.init()();
  return v0;
}

uint64_t PET3ExtensionConfig.init()()
{
  sub_249F6B4A4();
  sub_249F5CDEC();
  *(v0 + OBJC_IVAR____TtC9EchoRelay19PET3ExtensionConfig_defaults) = static NSUserDefaults.petUserDefaults()();
  return v0;
}

uint64_t PET3ExtensionConfig.__allocating_init(defaults:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PET3ExtensionConfig.init(defaults:)(a1);
  return v2;
}

uint64_t PET3ExtensionConfig.init(defaults:)(uint64_t a1)
{
  sub_249F6B4A4();
  *(v1 + OBJC_IVAR____TtC9EchoRelay19PET3ExtensionConfig_defaults) = a1;
  return v1;
}

uint64_t sub_249F689C4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AMLPET3ExtensionConfig(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_249F6B52C();
  v6 = (v5 - v4);
  v7 = MEMORY[0x277D84F90];
  *(v5 - v4 + 8) = MEMORY[0x277D84F90];
  sub_249F6F1EC();
  v6[2] = 3223088;
  v6[3] = 0xE300000000000000;
  *v6 = sub_249F68C98();
  v8 = sub_249F6F3DC();
  v9 = sub_249F6F58C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30[0] = v11;
    *v10 = 136315138;
    v12 = a1;
    v13 = type metadata accessor for AMLPET3BiomeStream(0);

    v15 = MEMORY[0x24C2096B0](v14, v13);
    v17 = v16;

    v18 = v15;
    a1 = v12;
    v19 = sub_249F62A24(v18, v17, v30);

    *(v10 + 4) = v19;
    _os_log_impl(&dword_249F5A000, v8, v9, "Default PET3 extension approved streams: %s", v10, 0xCu);
    sub_249F5D4A0(v11);
    sub_249F63984();
    v7 = MEMORY[0x277D84F90];
    sub_249F63984();
  }

  swift_beginAccess();
  v6[1] = v7;
  v20 = sub_249F6F3DC();
  v21 = sub_249F6F58C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v29 = v23;
    *v22 = 136315138;
    v24 = type metadata accessor for AMLPET3BiomeStream(0);
    v25 = MEMORY[0x24C2096B0](MEMORY[0x277D84F90], v24);
    v27 = sub_249F62A24(v25, v26, &v29);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_249F5A000, v20, v21, "Default PET3 extension provisonal streams: %s", v22, 0xCu);
    sub_249F5D4A0(v23);
    sub_249F63984();
    sub_249F63984();
  }

  sub_249F6B1A0(v6, a1, type metadata accessor for AMLPET3ExtensionConfig);
  return sub_249F6B208(v6, type metadata accessor for AMLPET3ExtensionConfig);
}

uint64_t sub_249F68C98()
{
  sub_249F5C584(&qword_27EF2BB30, &qword_249F70558);
  v0 = *(type metadata accessor for AMLPET3BiomeStream(0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_249F70500;
  v3 = v9 + v2;
  sub_249F6F1EC();
  *v3 = 0xD00000000000001BLL;
  *(v3 + 8) = 0x8000000249F71BE0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xD00000000000002ELL;
  *(v3 + 32) = 0x8000000249F71C00;
  *(v3 + 40) = 0;
  *(v3 + 44) = 10000;
  v4 = v9 + v2 + v1;
  *(v3 + 48) = 0x2D35302D35323032;
  *(v3 + 56) = 0xEA00000000003130;
  *(v3 + 64) = 365;
  sub_249F6F1EC();
  *v4 = 0xD00000000000002BLL;
  *(v4 + 8) = 0x8000000249F71C30;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xD000000000000042;
  *(v4 + 32) = 0x8000000249F71C60;
  *(v4 + 40) = 1;
  *(v4 + 44) = 10000;
  v5 = v9 + v2 + 2 * v1;
  *(v4 + 48) = 0x2D37302D35323032;
  *(v4 + 56) = 0xEA00000000003031;
  *(v4 + 64) = 365;
  sub_249F6F1EC();
  *v5 = 0xD00000000000002BLL;
  *(v5 + 8) = 0x8000000249F71CB0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0xD000000000000042;
  *(v5 + 32) = 0x8000000249F71CE0;
  *(v5 + 40) = 1;
  *(v5 + 44) = 10000;
  v6 = v9 + v2 + 3 * v1;
  *(v5 + 48) = 0x2D37302D35323032;
  *(v5 + 56) = 0xEA00000000003031;
  *(v5 + 64) = 365;
  sub_249F6F1EC();
  *v6 = 0xD000000000000018;
  *(v6 + 8) = 0x8000000249F71D30;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0xD000000000000030;
  *(v6 + 32) = 0x8000000249F71D50;
  *(v6 + 40) = 1;
  *(v6 + 44) = 10000;
  v7 = v9 + v2 + 4 * v1;
  *(v6 + 48) = 0x2D37302D35323032;
  *(v6 + 56) = 0xEA00000000003031;
  *(v6 + 64) = 365;
  sub_249F6F1EC();
  *v7 = 0xD000000000000031;
  *(v7 + 8) = 0x8000000249F71D90;
  *(v7 + 16) = 1;
  *(v7 + 24) = 0xD000000000000040;
  *(v7 + 32) = 0x8000000249F71DD0;
  *(v7 + 40) = 1;
  *(v7 + 44) = 10000;
  *(v7 + 48) = 0x2D37302D35323032;
  *(v7 + 56) = 0xEA00000000003031;
  *(v7 + 64) = 456;
  return v9;
}

uint64_t sub_249F68F90(uint64_t a1)
{
  v2 = sub_249F6F11C();
  sub_249F637D4();
  v70 = v3;
  MEMORY[0x28223BE20](v4, v5);
  sub_249F6B52C();
  v8 = v7 - v6;
  sub_249F6F12C();
  sub_249F637D4();
  v68 = v10;
  v69 = v9;
  MEMORY[0x28223BE20](v9, v11);
  sub_249F6B52C();
  v14 = v13 - v12;
  v15 = sub_249F5C584(&qword_27EF2BB08, &unk_249F70520);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v63 - v17;
  v19 = sub_249F6F09C();
  sub_249F637D4();
  v72 = v20;
  MEMORY[0x28223BE20](v21, v22);
  sub_249F6B548();
  v66 = v23;
  sub_249F6B53C();
  MEMORY[0x28223BE20](v24, v25);
  v65 = &v63 - v26;
  sub_249F6B53C();
  MEMORY[0x28223BE20](v27, v28);
  v67 = &v63 - v29;
  sub_249F6B53C();
  MEMORY[0x28223BE20](v30, v31);
  v71 = &v63 - v32;
  sub_249F6B53C();
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v63 - v35;
  v37 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_249F6B044(0x2D4D4D2D79797979, 0xEA00000000006464, v37);
  v38 = sub_249F6F47C();
  v39 = [v37 dateFromString_];

  if (!v39)
  {

    LOBYTE(v40) = 0;
    return v40 & 1;
  }

  v64 = v37;
  sub_249F6F07C();

  v40 = *(a1 + 64);
  if (!v40)
  {
    (*(v72 + 8))(v36, v19);

    return v40 & 1;
  }

  sub_249F6F10C();
  v41 = v70;
  (*(v70 + 104))(v8, *MEMORY[0x277CC9968], v2);
  v63 = v36;
  sub_249F6F0FC();
  (*(v41 + 8))(v8, v2);
  (*(v68 + 8))(v14, v69);
  result = sub_249F5CBE4(v18, 1, v19);
  if (result != 1)
  {
    v43 = v71;
    v44 = v72;
    (*(v72 + 32))(v71, v18, v19);
    v45 = v67;
    sub_249F6F08C();
    v46 = *(v44 + 16);
    v47 = v65;
    v46(v65, v45, v19);
    v48 = v66;
    v46(v66, v43, v19);
    v49 = sub_249F6F3DC();
    v50 = sub_249F6F58C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v73 = v70;
      *v51 = 136315394;
      sub_249F6B0A8(&qword_27EF2BB18, MEMORY[0x277CC95B8]);
      LODWORD(v69) = v50;
      v52 = sub_249F6F69C();
      v54 = v53;
      v55 = *(v72 + 8);
      v55(v47, v19);
      v56 = sub_249F62A24(v52, v54, &v73);

      *(v51 + 4) = v56;
      *(v51 + 12) = 2080;
      v57 = sub_249F6F69C();
      v59 = v58;
      v55(v48, v19);
      v60 = sub_249F62A24(v57, v59, &v73);

      *(v51 + 14) = v60;
      _os_log_impl(&dword_249F5A000, v49, v69, "Current date: %s, expiration date: %s", v51, 0x16u);
      swift_arrayDestroy();
      sub_249F63984();
      v43 = v71;
      sub_249F63984();
    }

    else
    {

      v55 = *(v44 + 8);
      v55(v48, v19);
      v55(v47, v19);
    }

    v61 = v64;
    sub_249F6B0A8(&qword_27EF2BB10, MEMORY[0x277CC9590]);
    if (sub_249F6F45C())
    {

      LOBYTE(v40) = 0;
    }

    else
    {
      v62 = sub_249F6F45C();

      LOBYTE(v40) = v62 ^ 1;
    }

    v55(v45, v19);
    v55(v43, v19);
    v55(v63, v19);
    return v40 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_249F69620()
{
  v1 = *(v0 + OBJC_IVAR____TtC9EchoRelay19PET3ExtensionConfig_defaults);
  v2 = sub_249F6B55C();
  v3 = [v1 BOOLForKey_];

  if (!v3)
  {
    v34 = sub_249F6F3DC();
    v35 = sub_249F6F58C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      v37 = "Uploading is not enabled";
LABEL_28:
      _os_log_impl(&dword_249F5A000, v34, v35, v37, v36, 2u);
      sub_249F63984();
    }

LABEL_29:

    return MEMORY[0x277D84F90];
  }

  v4 = sub_249F6F47C();
  v5 = [v1 dictionaryForKey_];

  if (!v5 || (v6 = sub_249F6F42C(), v5, v7 = sub_249F69A08(v6), , !v7))
  {
    v34 = sub_249F6F3DC();
    v35 = sub_249F6F58C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      v37 = "No stream election status found";
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  v9 = sub_249F6A79C(v7, v8);

  v10 = v9[2];
  if (!v10)
  {

    return MEMORY[0x277D84F90];
  }

  v42 = MEMORY[0x277D84F90];
  sub_249F6AC98(0, v10, 0);
  v11 = v42;
  result = sub_249F6B0EC(v9);
  v15 = result;
  v16 = 0;
  v17 = v9 + 8;
  v38 = v10;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v15 < 1 << *(v9 + 32))
    {
      v18 = v15 >> 6;
      if ((v17[v15 >> 6] & (1 << v15)) == 0)
      {
        goto LABEL_35;
      }

      if (*(v9 + 9) != v13)
      {
        goto LABEL_36;
      }

      v39 = v14;
      v40 = v16;
      v41 = v13;
      v19 = (v9[6] + 16 * v15);
      v21 = *v19;
      v20 = v19[1];
      v23 = *(v42 + 16);
      v22 = *(v42 + 24);

      if (v23 >= v22 >> 1)
      {
        result = sub_249F6AC98((v22 > 1), v23 + 1, 1);
      }

      *(v42 + 16) = v23 + 1;
      v24 = v42 + 16 * v23;
      *(v24 + 32) = v21;
      *(v24 + 40) = v20;
      v25 = 1 << *(v9 + 32);
      if (v15 >= v25)
      {
        goto LABEL_37;
      }

      v17 = v9 + 8;
      v26 = v9[v18 + 8];
      if ((v26 & (1 << v15)) == 0)
      {
        goto LABEL_38;
      }

      if (*(v9 + 9) != v41)
      {
        goto LABEL_39;
      }

      v27 = v26 & (-2 << (v15 & 0x3F));
      if (v27)
      {
        v25 = __clz(__rbit64(v27)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v28 = v38;
      }

      else
      {
        v29 = v18 << 6;
        v30 = v18 + 1;
        v28 = v38;
        v31 = &v9[v18 + 9];
        while (v30 < (v25 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_249F6B12C(v15, v41, v39 & 1);
            v25 = __clz(__rbit64(v32)) + v29;
            goto LABEL_21;
          }
        }

        result = sub_249F6B12C(v15, v41, v39 & 1);
      }

LABEL_21:
      v16 = v40 + 1;
      if (v40 + 1 == v28)
      {

        return v11;
      }

      v14 = 0;
      v13 = *(v9 + 9);
      v15 = v25;
      if (v25 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

unint64_t sub_249F69A08(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_249F5C584(&qword_27EF2BB40, &qword_249F70568);
    v2 = sub_249F6F68C();
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

  v8 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    sub_249F5D43C(*(a1 + 56) + 32 * v10, v24);
    *&v23 = v12;
    *(&v23 + 1) = v13;
    v21[2] = v23;
    v22[0] = v24[0];
    v22[1] = v24[1];
    v14 = v23;
    sub_249F5C5F4(v22, v21);

    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    result = sub_249F6A60C(v14, *(&v14 + 1));
    v15 = result;
    if (v16)
    {
      *(v2[6] + 16 * result) = v14;

      *(v2[7] + v15) = v20 & 1;
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v14;
      *(v2[7] + result) = v20 & 1;
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      v2[2] = v19;
      v8 = v9;
    }
  }

  return 0;
}

BOOL sub_249F69C5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9EchoRelay19PET3ExtensionConfig_defaults);
  v2 = sub_249F6B55C();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_249F6F5FC();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  sub_249F6B138(&v11);
  v4 = sub_249F6F47C();
  v5 = [v1 objectForKey_];

  if (v5)
  {
    sub_249F6F5FC();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  sub_249F6B138(&v11);
  v6 = sub_249F6F3DC();
  v7 = sub_249F6F58C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109376;
    *(v8 + 4) = v3 != 0;
    *(v8 + 8) = 1024;
    *(v8 + 10) = v5 != 0;
    _os_log_impl(&dword_249F5A000, v6, v7, "uploadingEnabled set: %{BOOL}d, perStreamElectionStatus set: %{BOOL}d", v8, 0xEu);
    sub_249F63984();
  }

  if (v3)
  {
    v9 = v5 == 0;
  }

  else
  {
    v9 = 1;
  }

  return !v9;
}

uint64_t sub_249F69E18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMLPET3BiomeStream(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8, v6);
  sub_249F6B548();
  v24 = v7;
  sub_249F6B53C();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v22 - v10;
  v12 = 0;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  while (v13 != v12)
  {
    v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v16 = *(v5 + 72);
    sub_249F6B1A0(a1 + v15 + v16 * v12, v11, type metadata accessor for AMLPET3BiomeStream);
    if (sub_249F6A008(v11, v25, a2))
    {
      sub_249F6B25C(v11, v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_249F6ACB8(0, *(v14 + 16) + 1, 1);
        v14 = v26;
      }

      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v22 = *(v14 + 16);
        v23 = v19 + 1;
        sub_249F6ACB8((v18 > 1), v19 + 1, 1);
        v19 = v22;
        v20 = v23;
        v14 = v26;
      }

      ++v12;
      *(v14 + 16) = v20;
      sub_249F6B25C(v24, v14 + v15 + v19 * v16);
    }

    else
    {
      sub_249F6B4F0();
      ++v12;
    }
  }

  return v14;
}

uint64_t sub_249F6A008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for AMLPET3BiomeStream(0);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v13);
  v15 = (&v40 - v14);
  v16 = OBJC_IVAR____TtC9EchoRelay19PET3ExtensionConfig_logger;
  sub_249F6B1A0(a1, &v40 - v14, type metadata accessor for AMLPET3BiomeStream);
  v45 = v16;
  v17 = sub_249F6F3DC();
  v18 = sub_249F6F59C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v42 = a1;
    v20 = v19;
    v21 = swift_slowAlloc();
    *v20 = 136315138;
    v41 = a3;
    v43 = a2;
    v44[0] = v21;
    v23 = *v15;
    v22 = v15[1];

    sub_249F6B208(v15, type metadata accessor for AMLPET3BiomeStream);
    v24 = sub_249F62A24(v23, v22, v44);
    v4 = v3;

    *(v20 + 4) = v24;
    a3 = v41;
    _os_log_impl(&dword_249F5A000, v17, v18, "checking stream eligibility: %s", v20, 0xCu);
    sub_249F5D4A0(v21);
    MEMORY[0x24C209D30](v21, -1, -1);
    v25 = v20;
    a1 = v42;
    MEMORY[0x24C209D30](v25, -1, -1);

    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (*(a1 + 40))
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v26 = sub_249F6B208(v15, type metadata accessor for AMLPET3BiomeStream);
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v28 = *(a1 + 8);
  v44[0] = *a1;
  v44[1] = v28;
  MEMORY[0x28223BE20](v26, v27);
  *(&v40 - 2) = v44;
  if (sub_249F6AF94(sub_249F63654, (&v40 - 4), a3))
  {
LABEL_4:
    v29 = sub_249F68F90(a1);
    v30 = 1;
    goto LABEL_8;
  }

LABEL_7:
  v30 = 0;
  v29 = 0;
LABEL_8:
  sub_249F6B1A0(a1, v12, type metadata accessor for AMLPET3BiomeStream);
  v31 = sub_249F6F3DC();
  v32 = sub_249F6F59C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v45 = v4;
    v34 = v33;
    v35 = swift_slowAlloc();
    v44[0] = v35;
    *v34 = 136315650;
    v36 = *v12;
    v37 = v12[1];

    sub_249F6B208(v12, type metadata accessor for AMLPET3BiomeStream);
    v38 = sub_249F62A24(v36, v37, v44);

    *(v34 + 4) = v38;
    *(v34 + 12) = 1024;
    *(v34 + 14) = v30;
    *(v34 + 18) = 1024;
    *(v34 + 20) = v29 & 1;
    _os_log_impl(&dword_249F5A000, v31, v32, "stream: %s, isAllowed: %{BOOL}d, isEligible: %{BOOL}d", v34, 0x18u);
    sub_249F5D4A0(v35);
    MEMORY[0x24C209D30](v35, -1, -1);
    MEMORY[0x24C209D30](v34, -1, -1);
  }

  else
  {

    sub_249F6B208(v12, type metadata accessor for AMLPET3BiomeStream);
  }

  return v29 & 1;
}

uint64_t PET3ExtensionConfig.deinit()
{
  v1 = OBJC_IVAR____TtC9EchoRelay19PET3ExtensionConfig_logger;
  sub_249F6F3FC();
  sub_249F6B518();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t PET3ExtensionConfig.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9EchoRelay19PET3ExtensionConfig_logger;
  sub_249F6F3FC();
  sub_249F6B518();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

char *sub_249F6A50C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[32 * a2] <= __dst)
  {
    return memmove(__dst, __src, 32 * a2);
  }

  return __src;
}

uint64_t sub_249F6A538(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for AMLPET3BiomeStream(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for AMLPET3BiomeStream(0);

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

unint64_t sub_249F6A60C(uint64_t a1, uint64_t a2)
{
  sub_249F6F6FC();
  sub_249F6F4DC();
  v4 = sub_249F6F70C();

  return sub_249F6A684(a1, a2, v4);
}

unint64_t sub_249F6A684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_249F6F6BC() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_249F6A738(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_249F70510;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

unint64_t *sub_249F6A79C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v3 = sub_249F6A9EC(v9, v5, v3);
      MEMORY[0x24C209D30](v9, -1, -1);
      return v3;
    }
  }

  MEMORY[0x28223BE20](a1, a2);
  v6 = (v10 - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_249F6A738(0, v5, v6);
  v7 = sub_249F6A900(v6, v5, v3);
  if (!v2)
  {
    return v7;
  }

  swift_willThrow();
  return v3;
}

unint64_t *sub_249F6A900(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + v11) == 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_249F6AA64(result, a2, v4, a3);
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

    if (v5 >= v9)
    {
      return sub_249F6AA64(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_249F6A9EC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_249F6A900(v5, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_249F6AA64(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_249F5C584(&qword_27EF2BB40, &qword_249F70568);
  result = sub_249F6F68C();
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
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v32 = *(v17 + v16);
    sub_249F6F6FC();

    sub_249F6F4DC();
    result = sub_249F6F70C();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    *(*(v9 + 56) + v24) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

char *sub_249F6AC98(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_249F6ACD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_249F6ACB8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_249F6ADE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_249F6ACD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_249F5C584(&qword_27EF2BB38, &qword_249F70560);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_249F6ADE0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  sub_249F5C584(&qword_27EF2BB30, &qword_249F70558);
  v10 = *(type metadata accessor for AMLPET3BiomeStream(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for AMLPET3BiomeStream(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_249F6A538(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

BOOL sub_249F6AF94(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void sub_249F6B044(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_249F6F47C();

  [a3 setDateFormat_];
}

uint64_t sub_249F6B0A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_249F6F09C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_249F6B12C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_249F6B138(uint64_t a1)
{
  v2 = sub_249F5C584(qword_27EF2B830, &qword_249F6FCB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249F6B1A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_249F6B208(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  sub_249F6B518();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_249F6B25C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMLPET3BiomeStream(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PET3ExtensionConfig(uint64_t a1)
{
  result = qword_27EF2BB20;
  if (!qword_27EF2BB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249F6B314(uint64_t a1)
{
  result = sub_249F6F3FC();
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

uint64_t sub_249F6B4A4()
{

  return sub_249F6F3EC();
}

uint64_t sub_249F6B4F0()
{

  return sub_249F6B208(v0, type metadata accessor for AMLPET3BiomeStream);
}

uint64_t sub_249F6B55C()
{

  return sub_249F6F47C();
}

uint64_t PET3ServiceMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  strcpy(a1, "com.apple.pet3");
  *(a1 + 15) = -18;
  *(a1 + 16) = 0x6E6E416775626564;
  *(a1 + 24) = 0xEF6E6F697461746FLL;
  strcpy((a1 + 32), "com.apple.da");
  *(a1 + 45) = 0;
  *(a1 + 46) = -5120;
  *(a1 + 48) = 0x656D697265707845;
  *(a1 + 56) = 0xEF70756F7247746ELL;
  *(a1 + 64) = 0x756F62616B6C6177;
  *(a1 + 72) = 0xE900000000000074;
  *(a1 + 80) = 0x7972726163;
  *(a1 + 88) = 0xE500000000000000;
  v2 = type metadata accessor for PET3ServiceMetadata(0);
  result = sub_249F6F3EC();
  v4 = (a1 + *(v2 + 44));
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  return result;
}

uint64_t type metadata accessor for PET3ServiceMetadata(uint64_t a1)
{
  result = qword_27EF2BB48;
  if (!qword_27EF2BB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_249F6B6E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_249F6F09C();
  sub_249F637D4();
  v6 = v5;
  MEMORY[0x28223BE20](v7, v8);
  sub_249F6B52C();
  v11 = v10 - v9;
  v12 = sub_249F6F0EC();
  sub_249F637D4();
  v14 = v13;
  MEMORY[0x28223BE20](v15, v16);
  sub_249F6B52C();
  v19 = v18 - v17;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0xE000000000000000;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0xE000000000000000;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0xE000000000000000;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0xE000000000000000;
  *(a1 + 176) = 0;
  type metadata accessor for AMLPET3Metadata(0);
  sub_249F6F1EC();
  result = sub_249F6BE48();
  if (!v21)
  {
    goto LABEL_17;
  }

  *(a1 + 24) = result;
  *(a1 + 32) = v21;
  v22 = objc_opt_self();
  result = sub_249F6CC8C(v22);
  if (!v23)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  *(a1 + 40) = result;
  *(a1 + 48) = v23;
  sub_249F6F0DC();
  v24 = sub_249F6F0BC();
  v26 = v25;
  (*(v14 + 8))(v19, v12);
  v27 = 0x6E776F6E6B6E55;
  if (v26)
  {
    v27 = v24;
  }

  v28 = 0xE700000000000000;
  if (v26)
  {
    v28 = v26;
  }

  *(a1 + 64) = v27;
  *(a1 + 72) = v28;
  v29 = v2[4];
  v30 = v2[5];
  objc_allocWithZone(MEMORY[0x277CBEBD0]);

  result = sub_249F62224(v29, v30);
  if (!result)
  {
    goto LABEL_19;
  }

  v31 = result;
  v32 = sub_249F6BD20(result, v2[6], v2[7], v2[10], v2[11]);

  *(a1 + 57) = v32;
  *(a1 + 80) = sub_249F6C900();
  *(a1 + 88) = v33;
  sub_249F6F08C();
  sub_249F6F06C();
  v35 = v34;
  v36 = v34;
  result = (*(v6 + 8))(v11, v4);
  if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v35 <= -1.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v35 >= 1.84467441e19)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *a1 = v35;
  *(a1 + 8) = 5459817;
  *(a1 + 16) = 0xE300000000000000;
  v37 = [objc_opt_self() isInternalBuild];
  *(a1 + 56) = v37;
  result = sub_249F6C0B4();
  *(a1 + 112) = result;
  *(a1 + 120) = v38;
  *(a1 + 58) = 0;
  if (v37)
  {
    *(a1 + 59) = 0;
    result = sub_249F6CA24();
    *(a1 + 128) = result;
    *(a1 + 136) = v39;
  }

  else
  {
    *(a1 + 59) = 1;
  }

  return result;
}

Swift::String __swiftcall PET3ServiceMetadata.getMetadtaInJson()()
{
  v1 = v0;
  v2 = sub_249F6F4CC();
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_249F6B52C();
  v4 = sub_249F6F21C();
  sub_249F637D4();
  v6 = v5;
  MEMORY[0x28223BE20](v7, v8);
  sub_249F6B52C();
  v11 = v10 - v9;
  v12 = type metadata accessor for AMLPET3Metadata(0);
  MEMORY[0x28223BE20](v12, v13);
  sub_249F6B52C();
  v16 = v15 - v14;
  sub_249F6B6E8(v15 - v14);
  sub_249F6F20C();
  sub_249F6BCC8();
  v17 = sub_249F6F2DC();
  v19 = v18;
  (*(v6 + 8))(v11, v4);
  sub_249F6F4BC();
  v20 = sub_249F6F49C();
  if (v21)
  {
    v1 = v20;
    v22 = v21;
    sub_249F62288(v17, v19);
  }

  else
  {
    sub_249F6CF94();
    sub_249F62288(v17, v19);
    v22 = 0xEC0000004E4F534ALL;
  }

  sub_249F67160(v16);
  v23 = v1;
  v24 = v22;
  result._object = v24;
  result._countAndFlagsBits = v23;
  return result;
}

unint64_t sub_249F6BCC8()
{
  result = qword_27EF2BA50;
  if (!qword_27EF2BA50)
  {
    type metadata accessor for AMLPET3Metadata(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2BA50);
  }

  return result;
}

BOOL sub_249F6BD20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_249F6F47C();
  v9 = [a1 valueForKey_];

  if (v9)
  {
    sub_249F6F5FC();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (!*(&v16 + 1))
  {
    sub_249F6CCF0(v17, qword_27EF2B830, &qword_249F6FCB8);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (v13 != a4 || v14 != a5)
  {
    v11 = sub_249F6F6BC();

    return (v11 & 1) != 0;
  }

  return 1;
}

uint64_t sub_249F6BE48()
{
  v19 = *MEMORY[0x277D85DE8];
  v0 = sub_249F6EFDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_249F6F4CC();
  MEMORY[0x28223BE20](v5 - 8, v6);
  bzero(&v16, 0x500uLL);
  if (uname(&v16))
  {
    type metadata accessor for PET3ServiceMetadata(0);
    v7 = sub_249F6F3DC();
    v8 = sub_249F6F5AC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_249F5A000, v7, v8, "uname() failed", v9, 2u);
      MEMORY[0x24C209D30](v9, -1, -1);
    }

    return 0;
  }

  else
  {
    v17 = MEMORY[0x24C2091A0](v16.machine, 256);
    v18 = v11;
    sub_249F6F4BC();
    sub_249F6CF40();
    v10 = sub_249F6F4AC();
    v13 = v12;
    sub_249F62288(v17, v18);
    if (v13)
    {
      v17 = v10;
      v18 = v13;
      sub_249F6EFCC();
      sub_249F6232C();
      v10 = sub_249F6F5DC();
      (*(v1 + 8))(v4, v0);
    }
  }

  return v10;
}

uint64_t sub_249F6C0B4()
{
  v0 = sub_249F6C268();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    type metadata accessor for PET3ServiceMetadata(0);

    v4 = sub_249F6F3DC();
    v5 = sub_249F6F58C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_249F62A24(v2, v3, &v12);
      _os_log_impl(&dword_249F5A000, v4, v5, "Last boot UUID retrieved synchronously via SQL: %s", v6, 0xCu);
      sub_249F5D4A0(v7);
      MEMORY[0x24C209D30](v7, -1, -1);
      MEMORY[0x24C209D30](v6, -1, -1);
    }
  }

  else
  {
    v2 = 0x6E776F6E6B6E55;
    type metadata accessor for PET3ServiceMetadata(0);
    v8 = sub_249F6F3DC();
    v9 = sub_249F6F5AC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_249F5A000, v8, v9, "Failed to retrieve the last boot UUID via SQL. Using fallback.", v10, 2u);
      MEMORY[0x24C209D30](v10, -1, -1);
    }
  }

  return v2;
}

uint64_t sub_249F6C268()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CF1A88]) init];
  v1 = sub_249F6F57C();
  v2 = [v1 error];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for PET3ServiceMetadata(0);
    v4 = v3;
    v5 = sub_249F6F3DC();
    v6 = sub_249F6F5AC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = v4;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_249F5A000, v5, v6, "An error occurred during the Biome SQL query: %@", v7, 0xCu);
      sub_249F6CCF0(v8, &qword_27EF2B920, &qword_249F6FEB0);
      MEMORY[0x24C209D30](v8, -1, -1);
      MEMORY[0x24C209D30](v7, -1, -1);

      return 0;
    }

LABEL_16:

    goto LABEL_21;
  }

  if (![v1 next])
  {
    goto LABEL_18;
  }

  if (!sub_249F6CD50(v1))
  {
    type metadata accessor for PET3ServiceMetadata(0);
    v5 = sub_249F6F3DC();
    v17 = sub_249F6F5AC();
    if (!os_log_type_enabled(v5, v17))
    {
LABEL_21:

      goto LABEL_22;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Results.row was nil or not an NSDictionary.";
LABEL_20:
    _os_log_impl(&dword_249F5A000, v5, v17, v19, v18, 2u);
    MEMORY[0x24C209D30](v18, -1, -1);
    goto LABEL_21;
  }

  v11 = sub_249F6F41C();

  v12 = sub_249F6F47C();
  v13 = [v11 valueForKey_];

  if (!v13)
  {
    type metadata accessor for PET3ServiceMetadata(0);
    v20 = sub_249F6F3DC();
    v21 = sub_249F6F5AC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_249F5A000, v20, v21, "The key 'bootUUID' was not found in the row using KVC.", v22, 2u);
      MEMORY[0x24C209D30](v22, -1, -1);
    }

    v4 = v11;
    v5 = sub_249F6F3DC();
    v23 = sub_249F6F5AC();

    if (os_log_type_enabled(v5, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v4;
      *v25 = v4;
      v26 = v4;
      _os_log_impl(&dword_249F5A000, v5, v23, "Row contents: %@", v24, 0xCu);
      sub_249F6CCF0(v25, &qword_27EF2B920, &qword_249F6FEB0);
      MEMORY[0x24C209D30](v25, -1, -1);
      MEMORY[0x24C209D30](v24, -1, -1);

LABEL_22:
      return 0;
    }

    goto LABEL_16;
  }

  sub_249F6F5FC();
  swift_unknownObjectRelease();
  sub_249F5D43C(v38, v37);
  if (!swift_dynamicCast())
  {
    sub_249F5D4A0(v38);

LABEL_18:
    type metadata accessor for PET3ServiceMetadata(0);
    v5 = sub_249F6F3DC();
    v17 = sub_249F6F5AC();
    if (!os_log_type_enabled(v5, v17))
    {
      goto LABEL_21;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "No boot session event found.";
    goto LABEL_20;
  }

  if (MEMORY[0x24C2091B0]() != 16)
  {
    type metadata accessor for PET3ServiceMetadata(0);
    sub_249F635D0(v35, v36);
    v28 = sub_249F6F3DC();
    v29 = sub_249F6F5AC();
    if (os_log_type_enabled(v28, v29))
    {
      result = swift_slowAlloc();
      *result = 134217984;
      v30 = result;
      v31 = 0;
      switch(v36 >> 62)
      {
        case 1uLL:
          LODWORD(v31) = HIDWORD(v35) - v35;
          if (!__OFSUB__(HIDWORD(v35), v35))
          {
            v31 = v31;
            goto LABEL_32;
          }

          __break(1u);
          goto LABEL_35;
        case 2uLL:
          v33 = *(v35 + 16);
          v32 = *(v35 + 24);
          v34 = __OFSUB__(v32, v33);
          v31 = v32 - v33;
          if (!v34)
          {
            goto LABEL_32;
          }

LABEL_35:
          __break(1u);
          return result;
        case 3uLL:
          goto LABEL_32;
        default:
          v31 = BYTE6(v36);
LABEL_32:
          *(result + 4) = v31;
          sub_249F62288(v35, v36);
          _os_log_impl(&dword_249F5A000, v28, v29, "'bootUUID' data was not 16 bytes long. It was %ld bytes.", v30, 0xCu);
          MEMORY[0x24C209D30](v30, -1, -1);

          goto LABEL_33;
      }
    }

    sub_249F62288(v35, v36);
    v1 = v11;
    v11 = v28;
LABEL_33:

    sub_249F62288(v35, v36);
    sub_249F5D4A0(v38);
    return 0;
  }

  sub_249F635D0(v35, v36);
  v14 = [objc_allocWithZone(MEMORY[0x277CCAD78]) initWithUUIDBytes_];

  v15 = [v14 UUIDString];

  v16 = sub_249F6F48C();
  sub_249F62288(v35, v36);

  sub_249F5D4A0(v38);
  return v16;
}

uint64_t sub_249F6C900()
{
  v0 = 0x6E776F6E6B6E55;
  v1 = sub_249F6F0CC();
  if (v1[2])
  {
    v2 = v1[4];
    v3 = v1[5];

    v4 = MEMORY[0x24C209210](v2, v3);

    v5 = sub_249F6F48C();
    v7 = sub_249F6C9CC(v5, v6, v4);
    v9 = v8;

    if (v9)
    {
      return v7;
    }
  }

  else
  {
  }

  return v0;
}

uint64_t sub_249F6C9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_249F6A60C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_249F6CA24()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[1];
  objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v4 = sub_249F62224(v2, v3);
  if (!v4)
  {
    v5 = 0;
    v11 = 0u;
    v12 = 0u;
LABEL_9:
    sub_249F6CCF0(&v11, qword_27EF2B830, &qword_249F6FCB8);
    goto LABEL_10;
  }

  v5 = v4;
  v6 = sub_249F6F47C();
  v7 = [v5 valueForKey_];

  if (v7)
  {
    sub_249F6F5FC();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {

    return v9;
  }

LABEL_10:

  return 1701736270;
}

void *sub_249F6CB6C(uint64_t a1, uint64_t a2)
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

  sub_249F5C584(&qword_27EF2B950, &unk_249F70590);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_249F6CC04(uint64_t a1)
{
  result = sub_249F6F3FC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_249F6CC8C(void *a1)
{
  v1 = [a1 currentOsBuild];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_249F6F48C();

  return v3;
}

uint64_t sub_249F6CCF0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_249F5C584(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_249F6CD50(void *a1)
{
  v1 = [a1 row];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_249F6F42C();

  return v3;
}

void *sub_249F6CDBC(uint64_t a1, unint64_t a2)
{
  v4 = sub_249F6F05C();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4, v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v10 = HIDWORD(a1) - a1;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    case 2uLL:
      v12 = *(a1 + 16);
      v11 = *(a1 + 24);
      v10 = v11 - v12;
      if (!__OFSUB__(v11, v12))
      {
        goto LABEL_6;
      }

LABEL_12:
      __break(1u);
      return result;
    case 3uLL:
      goto LABEL_9;
    default:
      v10 = BYTE6(a2);
LABEL_6:
      if (!v10)
      {
        goto LABEL_9;
      }

      v13 = sub_249F6CB6C(v10, 0);
      v14 = sub_249F6EFFC();
      sub_249F62288(a1, a2);
      (*(v5 + 8))(v9, v4);
      if (v14 != v10)
      {
        __break(1u);
LABEL_9:
        sub_249F62288(a1, a2);
        return MEMORY[0x277D84F90];
      }

      return v13;
  }
}

unint64_t sub_249F6CF40()
{
  result = qword_27EF2BB58;
  if (!qword_27EF2BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2BB58);
  }

  return result;
}

uint64_t AMLPET3BiomeStream.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  type metadata accessor for AMLPET3BiomeStream(0);
  return sub_249F6F1EC();
}

uint64_t AMLPET3ExtensionConfig.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v2;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  type metadata accessor for AMLPET3ExtensionConfig(0);
  return sub_249F6F1EC();
}

uint64_t AMLPET3ExtensionConfig.approvedStreams.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AMLPET3ExtensionConfig.provisionalStreams.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t AMLPET3ExtensionConfig.configVersion.setter()
{
  sub_249F68760();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t AMLPET3ExtensionConfig.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AMLPET3ExtensionConfig(0) + 28);
  sub_249F6F1FC();
  sub_249F6381C();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t AMLPET3ExtensionConfig.unknownFields.setter()
{
  v2 = sub_249F687D8();
  v3 = *(type metadata accessor for AMLPET3ExtensionConfig(v2) + 28);
  sub_249F6F1FC();
  sub_249F6381C();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*AMLPET3ExtensionConfig.unknownFields.modify())()
{
  v0 = sub_249F687D8();
  type metadata accessor for AMLPET3ExtensionConfig(v0);
  return nullsub_1;
}

uint64_t AMLPET3BiomeStream.biomeStreamIdentifier.setter()
{
  sub_249F68760();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t AMLPET3BiomeStream.dpgSchemaName.setter()
{
  sub_249F68760();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t AMLPET3BiomeStream.startDate.setter()
{
  sub_249F68760();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t AMLPET3BiomeStream.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AMLPET3BiomeStream(0) + 44);
  sub_249F6F1FC();
  sub_249F6381C();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t AMLPET3BiomeStream.unknownFields.setter()
{
  v2 = sub_249F687D8();
  v3 = *(type metadata accessor for AMLPET3BiomeStream(v2) + 44);
  sub_249F6F1FC();
  sub_249F6381C();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*AMLPET3BiomeStream.unknownFields.modify())()
{
  v0 = sub_249F687D8();
  type metadata accessor for AMLPET3BiomeStream(v0);
  return nullsub_1;
}

uint64_t sub_249F6D648()
{
  v0 = sub_249F6F3CC();
  sub_249F6867C(v0, qword_27EF2BB60);
  sub_249F671BC(v0, qword_27EF2BB60);
  sub_249F5C584(&qword_27EF2BAE8, &qword_249F704F0);
  v1 = (sub_249F5C584(&qword_27EF2BAF0, &qword_249F70910) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249F705A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "approvedStreams";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_249F6F3AC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "provisionalStreams";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "configVersion";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  return sub_249F6F3BC();
}

uint64_t AMLPET3ExtensionConfig.decodeMessage<A>(decoder:)()
{
  sub_249F6EFA0();
  while (1)
  {
    result = sub_249F6F24C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_249F6876C();
        sub_249F6F28C();
        break;
      case 2:
        v7 = sub_249F6EF8C();
        sub_249F6D998(v7, v8, v9, v10);
        break;
      case 1:
        v3 = sub_249F6EF8C();
        sub_249F6D8F8(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_249F6D8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AMLPET3BiomeStream(0);
  sub_249F6EA08(&qword_27EF2BB90, type metadata accessor for AMLPET3BiomeStream, &protocol conformance descriptor for AMLPET3BiomeStream);
  return sub_249F6F2BC();
}

uint64_t sub_249F6D998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AMLPET3BiomeStream(0);
  sub_249F6EA08(&qword_27EF2BB90, type metadata accessor for AMLPET3BiomeStream, &protocol conformance descriptor for AMLPET3BiomeStream);
  return sub_249F6F2BC();
}

uint64_t AMLPET3ExtensionConfig.traverse<A>(visitor:)()
{
  sub_249F6EF68();
  if (!*(*v0 + 16) || (type metadata accessor for AMLPET3BiomeStream(0), sub_249F6EF44(), sub_249F6EA08(v3, v4, &protocol conformance descriptor for AMLPET3BiomeStream), sub_249F6EF5C(), result = sub_249F6F38C(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (type metadata accessor for AMLPET3BiomeStream(0), sub_249F6EF44(), sub_249F6EA08(v6, v7, &protocol conformance descriptor for AMLPET3BiomeStream), sub_249F6EF5C(), result = sub_249F6F38C(), !v1))
    {
      sub_249F686F0();
      if (!v8 || (sub_249F6EF5C(), result = sub_249F6EFB4(v9, v10, v11), !v1))
      {
        type metadata accessor for AMLPET3ExtensionConfig(0);
        sub_249F6876C();
        return sub_249F6F1DC();
      }
    }
  }

  return result;
}

uint64_t static AMLPET3ExtensionConfig.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_249F6E784(*a1, *a2) & 1) == 0 || (sub_249F6E784(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_249F6F6BC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AMLPET3ExtensionConfig(0);
  sub_249F6F1FC();
  sub_249F6EF2C();
  sub_249F6EA08(v5, v6, MEMORY[0x277D216D0]);
  return sub_249F68838() & 1;
}

uint64_t sub_249F6DD00(uint64_t a1, uint64_t a2)
{
  v4 = sub_249F6EA08(&unk_27EF2BBE0, type metadata accessor for AMLPET3ExtensionConfig, &protocol conformance descriptor for AMLPET3ExtensionConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_249F6DD80(uint64_t a1)
{
  v2 = sub_249F6EA08(&qword_27EF2BBB0, type metadata accessor for AMLPET3ExtensionConfig, &protocol conformance descriptor for AMLPET3ExtensionConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_249F6DDF0(uint64_t a1, uint64_t a2)
{
  sub_249F6EA08(&qword_27EF2BBB0, type metadata accessor for AMLPET3ExtensionConfig, &protocol conformance descriptor for AMLPET3ExtensionConfig);

  return sub_249F6F31C();
}

uint64_t sub_249F6DE8C()
{
  v0 = sub_249F6F3CC();
  sub_249F6867C(v0, qword_27EF2BB78);
  sub_249F671BC(v0, qword_27EF2BB78);
  sub_249F5C584(&qword_27EF2BAE8, &qword_249F704F0);
  v1 = (sub_249F5C584(&qword_27EF2BAF0, &qword_249F70910) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249F705B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "biomeStreamIdentifier";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_249F6F3AC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isInternal";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "dpgSchemaName";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isEnabledByDefault";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "maxCount";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "startDate";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "timeToLiveDays";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v9();
  return sub_249F6F3BC();
}

uint64_t AMLPET3BiomeStream.decodeMessage<A>(decoder:)()
{
  sub_249F6EFA0();
  while (1)
  {
    result = sub_249F6F24C();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 6:
        sub_249F6876C();
        sub_249F6F28C();
        break;
      case 2:
      case 4:
        sub_249F6876C();
        sub_249F6F25C();
        break;
      case 5:
      case 7:
        sub_249F6876C();
        sub_249F6F29C();
        break;
      default:
        continue;
    }
  }
}

uint64_t AMLPET3BiomeStream.traverse<A>(visitor:)()
{
  sub_249F6EF68();
  sub_249F686F0();
  if (!v2 || (sub_249F6EF5C(), result = sub_249F6EFB4(v3, v4, v5), !v0))
  {
    if (*(v1 + 16) != 1 || (sub_249F6873C(), result = sub_249F6F32C(), !v0))
    {
      sub_249F686F0();
      if (!v7 || (sub_249F6EF5C(), result = sub_249F6EFB4(v8, v9, v10), !v0))
      {
        if (*(v1 + 40) != 1 || (sub_249F6873C(), result = sub_249F6F32C(), !v0))
        {
          if (!*(v1 + 44) || (sub_249F6873C(), result = sub_249F6F36C(), !v0))
          {
            sub_249F686F0();
            if (!v11 || (sub_249F6EF5C(), result = sub_249F6EFB4(v12, v13, v14), !v0))
            {
              if (!*(v1 + 64) || (sub_249F6873C(), result = sub_249F6F36C(), !v0))
              {
                type metadata accessor for AMLPET3BiomeStream(0);
                sub_249F6876C();
                return sub_249F6F1DC();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static AMLPET3BiomeStream.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_249F6F6BC() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v5 && (sub_249F6F6BC() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 40) != *(a2 + 40) || *(a1 + 44) != *(a2 + 44))
  {
    return 0;
  }

  v6 = *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
  if (!v6 && (sub_249F6F6BC() & 1) == 0 || *(a1 + 64) != *(a2 + 64))
  {
    return 0;
  }

  type metadata accessor for AMLPET3BiomeStream(0);
  sub_249F6F1FC();
  sub_249F6EF2C();
  sub_249F6EA08(v7, v8, MEMORY[0x277D216D0]);
  return sub_249F68838() & 1;
}

uint64_t sub_249F6E50C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_249F6F6FC();
  a1(0);
  sub_249F6EA08(a2, a3, a4);
  sub_249F6F44C();
  return sub_249F6F70C();
}

uint64_t sub_249F6E614(uint64_t a1, uint64_t a2)
{
  v4 = sub_249F6EA08(&qword_27EF2BBD8, type metadata accessor for AMLPET3BiomeStream, &protocol conformance descriptor for AMLPET3BiomeStream);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_249F6E694(uint64_t a1)
{
  v2 = sub_249F6EA08(&qword_27EF2BB90, type metadata accessor for AMLPET3BiomeStream, &protocol conformance descriptor for AMLPET3BiomeStream);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_249F6E704(uint64_t a1, uint64_t a2)
{
  sub_249F6EA08(&qword_27EF2BB90, type metadata accessor for AMLPET3BiomeStream, &protocol conformance descriptor for AMLPET3BiomeStream);

  return sub_249F6F31C();
}

uint64_t sub_249F6E784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMLPET3BiomeStream(0);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v12 = &v23 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
LABEL_29:
    v21 = 0;
    return v21 & 1;
  }

  if (v13 && a1 != a2)
  {
    v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v15 = a1 + v14;
    v16 = a2 + v14;
    v17 = *(v10 + 72);
    while (1)
    {
      sub_249F6EE6C(v15, v12);
      sub_249F6EE6C(v16, v8);
      v18 = *v12 == *v8 && *(v12 + 1) == *(v8 + 1);
      if (!v18 && (sub_249F6F6BC() & 1) == 0)
      {
        break;
      }

      if (v12[16] != v8[16])
      {
        break;
      }

      v19 = *(v12 + 3) == *(v8 + 3) && *(v12 + 4) == *(v8 + 4);
      if (!v19 && (sub_249F6F6BC() & 1) == 0)
      {
        break;
      }

      if (v12[40] != v8[40] || *(v12 + 11) != *(v8 + 11))
      {
        break;
      }

      v20 = *(v12 + 6) == *(v8 + 6) && *(v12 + 7) == *(v8 + 7);
      if (!v20 && (sub_249F6F6BC() & 1) == 0 || *(v12 + 16) != *(v8 + 16))
      {
        break;
      }

      sub_249F6F1FC();
      sub_249F6EA08(&qword_27EF2BA28, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v21 = sub_249F6F46C();
      sub_249F6EED0(v8);
      sub_249F6EED0(v12);
      if (v21)
      {
        v16 += v17;
        v15 += v17;
        if (--v13)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    sub_249F6EED0(v8);
    sub_249F6EED0(v12);
    goto LABEL_29;
  }

  v21 = 1;
  return v21 & 1;
}

uint64_t sub_249F6EA08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_249F6ECB8(uint64_t a1)
{
  sub_249F6ED4C(319);
  if (v1 <= 0x3F)
  {
    sub_249F6F1FC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_249F6ED4C(uint64_t a1)
{
  if (!qword_27EF2BBD0)
  {
    type metadata accessor for AMLPET3BiomeStream(255);
    v1 = sub_249F6F55C();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF2BBD0);
    }
  }
}

uint64_t sub_249F6EDCC(uint64_t a1)
{
  result = sub_249F6F1FC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_249F6EE6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMLPET3BiomeStream(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249F6EED0(uint64_t a1)
{
  v2 = type metadata accessor for AMLPET3BiomeStream(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249F6EFB4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x28217E540](a1, a2, a3, v4, v3);
}