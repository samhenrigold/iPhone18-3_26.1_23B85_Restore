uint64_t sub_249D15780()
{
  _Block_release(*(v0 + 32));
  v1 = sub_249D1A5EC();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_249D157BC()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_249D157F4()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_249D17718(*(v0 + 16), v1);
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_249D1583C()
{

  v1 = sub_249D1A5EC();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_249D15884()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_249D158C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

const char *sub_249D158FC(char a1)
{
  result = "BackboneModel";
  switch(a1)
  {
    case 1:
      result = "TopicClassificationModel";
      break;
    case 2:
      result = "CategoryClassificationModel";
      break;
    case 3:
      result = "FoundInModels";
      break;
    case 4:
      result = "IndexNonfileDocuments";
      break;
    case 5:
      result = "SearchAndOrganizationDocumentIngest";
      break;
    case 6:
      result = "AutonamingFromMessages";
      break;
    case 7:
      result = "FoundInUseLLM";
      break;
    case 8:
      result = "FoundInUseLLMExtendedLanguages";
      break;
    case 9:
      result = "PIRGeocoding";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_249D159F8(unsigned __int8 a1)
{
  sub_249D22130();
  MEMORY[0x24C1FFD30](a1);
  return sub_249D22150();
}

uint64_t sub_249D15A5C(uint64_t a1)
{
  v2 = *v1;
  sub_249D22130();
  MEMORY[0x24C1FFD30](v2);
  return sub_249D22150();
}

uint64_t sub_249D15C14(uint64_t a1, char a2, _BYTE *a3)
{
  v7[3] = &type metadata for DocumentUnderstandingFeatureFlags;
  v7[4] = sub_249D15DD4();
  LOBYTE(v7[0]) = a2;
  v5 = sub_249D21E60();
  result = sub_249D15E28(v7);
  *a3 = v5 & 1;
  return result;
}

uint64_t sub_249D15C98(void *a1, unsigned __int8 *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return *a2;
}

id DocumentUnderstandingFeatureFlagReader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DocumentUnderstandingFeatureFlagReader.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DocumentUnderstandingFeatureFlagReader();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DocumentUnderstandingFeatureFlagReader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DocumentUnderstandingFeatureFlagReader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_249D15DD4()
{
  result = qword_280D9DE00;
  if (!qword_280D9DE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D9DE00);
  }

  return result;
}

uint64_t sub_249D15E28(void *a1)
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

uint64_t getEnumTagSinglePayload for DocumentUnderstandingFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DocumentUnderstandingFeatureFlags(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_249D16000()
{
  result = qword_27EF1A5E8;
  if (!qword_27EF1A5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1A5E8);
  }

  return result;
}

uint64_t sub_249D1605C()
{
  v0 = sub_249D21F40();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v22 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  sub_249D17324(&qword_27EF1A608, &qword_249D233A8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_249D23360;
  sub_249D21F10();
  v11 = sub_249D21F00();
  v13 = v12;
  v14 = *(v1 + 8);
  v14(v9, v0);
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  sub_249D21F30();
  v15 = sub_249D21F00();
  v17 = v16;
  v14(v7, v0);
  *(v10 + 48) = v15;
  *(v10 + 56) = v17;
  sub_249D21F20();
  v18 = sub_249D21F00();
  v20 = v19;
  result = (v14)(v4, v0);
  *(v10 + 64) = v18;
  *(v10 + 72) = v20;
  *(v10 + 80) = 0xD00000000000001ELL;
  *(v10 + 88) = 0x8000000249D23D70;
  *(v10 + 96) = 0xD00000000000002CLL;
  *(v10 + 104) = 0x8000000249D23D90;
  *(v10 + 112) = 0xD000000000000016;
  *(v10 + 120) = 0x8000000249D23DC0;
  *(v10 + 128) = 0xD00000000000001FLL;
  *(v10 + 136) = 0x8000000249D23DE0;
  *(v10 + 144) = 0xD000000000000026;
  *(v10 + 152) = 0x8000000249D23E00;
  *(v10 + 160) = 0xD000000000000017;
  *(v10 + 168) = 0x8000000249D23E30;
  *(v10 + 176) = 0xD00000000000001BLL;
  *(v10 + 184) = 0x8000000249D23E50;
  *(v10 + 192) = 0xD00000000000002ELL;
  *(v10 + 200) = 0x8000000249D23E70;
  *(v10 + 208) = 0xD00000000000001CLL;
  *(v10 + 216) = 0x8000000249D23EA0;
  off_27EF1A5F0 = v10;
  return result;
}

uint64_t sub_249D16338()
{
  v0 = sub_249D17324(&qword_27EF1A610, &qword_249D233B0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = sub_249D21F40();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF1A5D0 != -1)
  {
LABEL_15:
    swift_once();
  }

  v6 = off_27EF1A5F0;
  v7 = *(off_27EF1A5F0 + 2);
  v18 = v4;
  v8 = (v4 + 32);

  v4 = 0;
  v9 = (v6 + 5);
  v10 = MEMORY[0x277D84F90];
  v17 = (v6 + 5);
LABEL_3:
  v11 = &v9[16 * v4];
  while (v7 != v4)
  {
    if (v4 >= v6[2])
    {
      __break(1u);
      goto LABEL_15;
    }

    sub_249D21F50();
    if (sub_249D17370(v2, 1, v3) != 1)
    {
      v12 = *v8;
      (*v8)(v19, v2, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_249D16CD4(0, *(v10 + 2) + 1, 1, v10);
      }

      v14 = *(v10 + 2);
      v13 = *(v10 + 3);
      if (v14 >= v13 >> 1)
      {
        v10 = sub_249D16CD4((v13 > 1), v14 + 1, 1, v10);
      }

      ++v4;
      *(v10 + 2) = v14 + 1;
      v12(&v10[((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v14], v19, v3);
      v9 = v17;
      goto LABEL_3;
    }

    sub_249D17398(v2);
    v11 += 16;
    ++v4;
  }

  qword_27EF1A5F8 = v10;
  return result;
}

uint64_t sub_249D16648()
{
  sub_249D17098(&unk_285CF0200);
  sub_249D17098(&unk_285CF0250);
  sub_249D17098(&unk_285CF0280);
  sub_249D17098(&unk_285CF02B0);
  result = sub_249D17098(&unk_285CF02E0);
  qword_27EF1A600 = &unk_285CF0080;
  return result;
}

uint64_t sub_249D166F8(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

id sub_249D1675C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  a3(a1, a2);
  v3 = sub_249D21FD0();

  return v3;
}

BOOL static DUIngestableFiletypes.isFileURLSupported(_:)()
{
  sub_249D21DE0();
  v0 = sub_249D21FB0();
  v2 = v1;

  if (qword_27EF1A5E0 != -1)
  {
    v3 = swift_once();
  }

  v8[0] = v0;
  v8[1] = v2;
  MEMORY[0x28223BE20](v3);
  v7[2] = v8;
  v5 = sub_249D17204(sub_249D172E0, v7, v4);

  return v5;
}

id DUIngestableFiletypes.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DUIngestableFiletypes.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUIngestableFiletypes();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DUIngestableFiletypes.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUIngestableFiletypes();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_249D16CD4(void *result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_249D16EC8(v8, v7);
  v10 = *(sub_249D21F40() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_249D16FC4(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

char *sub_249D16DC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_249D17324(&qword_27EF1A608, &qword_249D233A8);
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

void *sub_249D16EC8(uint64_t a1, uint64_t a2)
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

  sub_249D17324(&qword_27EF1A618, qword_249D233B8);
  v4 = *(sub_249D21F40() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
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

uint64_t sub_249D16FC4(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_249D21F40(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_249D21F40();

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

uint64_t sub_249D17098(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_249D17158(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

char *sub_249D17158(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_249D16DC0(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_249D171C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_249D220B0() & 1;
  }
}

BOOL sub_249D17204(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_249D17324(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_249D17398(uint64_t a1)
{
  v2 = sub_249D17324(&qword_27EF1A610, &qword_249D233B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DUProtobufEncodableProtocol.init(serializedData:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v7 = sub_249D21E90();
  MEMORY[0x28223BE20](v7 - 8);
  sub_249D1824C();
  swift_getAssociatedTypeWitness();
  sub_249D18240();
  sub_249D18234();
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v25 = sub_249D22060();
  sub_249D18210();
  v12 = v11;
  sub_249D18234();
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v26 = a1;
  v16 = MEMORY[0x24C1FFA00](a1);
  v18 = v17;
  v31 = v16;
  v32 = v17;
  swift_getAssociatedConformanceWitness();
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  sub_249D176C0(v16, v18);
  sub_249D21E80();
  sub_249D21EF0();
  (*(a3 + 32))(v10, a2, a3);
  sub_249D17718(v16, v18);

  v19 = sub_249D17370(v15, 1, a2);
  v20 = v27;
  if (v19)
  {
    (*(v12 + 8))(v15, v25);
    v21 = 1;
  }

  else
  {
    sub_249D18240();
    (*(v22 + 32))(v20, v15, a2);
    v21 = 0;
  }

  return sub_249D1825C(v20, v21);
}

void sub_249D176C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t sub_249D17718(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

NSData_optional __swiftcall DUProtobufEncodableProtocol.serializedData()()
{
  v2 = v1;
  v3 = v0;
  swift_getAssociatedTypeWitness();
  sub_249D18210();
  sub_249D18234();
  MEMORY[0x28223BE20](v4);
  sub_249D18224();
  (*(v2 + 24))(v3, v2);
  swift_getAssociatedConformanceWitness();
  v5 = sub_249D21EE0();
  v7 = v6;
  v8 = sub_249D18280();
  v9(v8);
  sub_249D17900();
  v10 = sub_249D17944(v5, v7);
  result.value.super.isa = v10;
  result.is_nil = v11;
  return result;
}

unint64_t sub_249D17900()
{
  result = qword_27EF1A620;
  if (!qword_27EF1A620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF1A620);
  }

  return result;
}

id sub_249D17944(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_249D21E20();
  v6 = [v4 initWithData_];

  sub_249D17718(a1, a2);
  return v6;
}

uint64_t DUProtobufEncodableProtocol.init(jsonString:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a1;
  v33 = a2;
  v35 = a6;
  v10 = sub_249D21E70();
  sub_249D18210();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_249D1824C();
  v16 = v15 - v14;
  swift_getAssociatedTypeWitness();
  sub_249D18240();
  sub_249D18234();
  MEMORY[0x28223BE20](v17);
  sub_249D18224();
  sub_249D22060();
  sub_249D18210();
  v30 = v19;
  v31 = v18;
  sub_249D18234();
  MEMORY[0x28223BE20](v20);
  v22 = &v29 - v21;
  v23 = *(v12 + 16);
  v34 = a3;
  v23(v16, a3, v10);
  swift_getAssociatedConformanceWitness();
  sub_249D21EB0();
  (*(a5 + 32))(v6, a4, a5);
  (*(v12 + 8))(v34, v10);
  v24 = sub_249D17370(v22, 1, a4);
  v25 = v35;
  if (v24)
  {
    (*(v30 + 8))(v22, v31);
    v26 = 1;
  }

  else
  {
    sub_249D18240();
    (*(v27 + 32))(v25, v22, a4);
    v26 = 0;
  }

  return sub_249D1825C(v25, v26);
}

uint64_t DUProtobufEncodableProtocol.jsonString(options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  sub_249D18210();
  sub_249D18234();
  MEMORY[0x28223BE20](v5);
  sub_249D18224();
  (*(a3 + 24))(a2, a3);
  swift_getAssociatedConformanceWitness();
  v6 = sub_249D21EA0();
  v7 = sub_249D18280();
  v8(v7);
  return v6;
}

uint64_t DUProtobufEncodableProtocol.init(jsonUTF8Data:options:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v36 = a1;
  v38 = a5;
  v9 = sub_249D21E70();
  sub_249D18210();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_249D1824C();
  v15 = v14 - v13;
  swift_getAssociatedTypeWitness();
  sub_249D18240();
  sub_249D18234();
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  sub_249D22060();
  sub_249D18210();
  v34 = v20;
  v35 = v19;
  sub_249D18234();
  MEMORY[0x28223BE20](v21);
  sub_249D18224();
  v22 = *(v11 + 16);
  v37 = a2;
  v22(v15, a2, v9);
  v23 = sub_249D18274();
  sub_249D176C0(v23, v24);
  v33 = a4;
  swift_getAssociatedConformanceWitness();
  sub_249D18274();
  sub_249D21ED0();
  (*(v33 + 32))(v18, a3);
  v25 = sub_249D18274();
  sub_249D17718(v25, v26);
  (*(v11 + 8))(v37, v9);
  v27 = sub_249D17370(v5, 1, a3);
  v28 = v38;
  if (v27)
  {
    (*(v34 + 8))(v5, v35);
    v29 = 1;
  }

  else
  {
    sub_249D18240();
    (*(v30 + 32))(v28, v5, a3);
    v29 = 0;
  }

  return sub_249D1825C(v28, v29);
}

uint64_t DUProtobufEncodableProtocol.jsonUTF8Data(options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  sub_249D18210();
  sub_249D18234();
  MEMORY[0x28223BE20](v6);
  sub_249D18224();
  (*(a3 + 24))(a2, a3);
  swift_getAssociatedConformanceWitness();
  v7 = sub_249D21EC0();
  if (v3)
  {

    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  v9 = sub_249D18280();
  v10(v9);
  return v8;
}

uint64_t sub_249D1825C(uint64_t a1, uint64_t a2)
{

  return sub_249D17770(a1, a2, 1, v2);
}

uint64_t sub_249D1829C(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 40) = v3;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return MEMORY[0x2822009F8](sub_249D182C4, 0, 0);
}

uint64_t sub_249D182C4()
{
  sub_249D1A5D4();
  if (qword_27EF1A5C0 != -1)
  {
    swift_once();
  }

  if (byte_27EF1A5C8)
  {
    sub_249D186A0();
    v1 = sub_249D186E4(0xD000000000000011, 0x8000000249D23EE0);
    v0[6] = v1;
    v0[7] = [objc_allocWithZone(MEMORY[0x277CFA5B0]) initWithClientConfig_];
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_249D1846C;

    return sub_249D18B78();
  }

  else
  {
    sub_249D1864C();
    swift_allocError();
    *v4 = 0xD00000000000001CLL;
    v4[1] = 0x8000000249D23EC0;
    swift_willThrow();
    sub_249D1A584();

    return v5();
  }
}

uint64_t sub_249D1846C()
{
  sub_249D1A59C();
  v3 = v2;
  v5 = v4;
  sub_249D1A5A8();
  v7 = v6;
  sub_249D1A578();
  *v8 = v7;
  v9 = *v1;
  sub_249D1A568();
  *v10 = v9;
  v7[9] = v0;

  if (!v0)
  {
    v7[10] = v3;
    v7[11] = v5;
  }

  sub_249D1A62C();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_249D18588()
{
  sub_249D1A590();
  v1 = *(v0 + 48);

  sub_249D1A614();
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);

  return v2(v3, v4);
}

uint64_t sub_249D185EC()
{
  sub_249D1A590();
  v1 = *(v0 + 48);

  sub_249D1A584();

  return v2();
}

unint64_t sub_249D1864C()
{
  result = qword_27EF1A628;
  if (!qword_27EF1A628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1A628);
  }

  return result;
}

unint64_t sub_249D186A0()
{
  result = qword_27EF1A630;
  if (!qword_27EF1A630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF1A630);
  }

  return result;
}

id sub_249D186E4(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_249D21F90();

  v4 = [v2 initWithUseCase_];

  return v4;
}

uint64_t sub_249D187EC(uint64_t a1, void *aBlock, uint64_t a3, double a4)
{
  v4[2] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_249D21FA0();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v4[3] = v8;
  swift_getObjCClassMetadata();
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_249D188D4;

  return sub_249D1829C(a1, v8, a4);
}

void sub_249D188D4()
{
  sub_249D1A59C();
  v2 = v0;
  v4 = v3;
  sub_249D1A5A8();
  v6 = v5;
  sub_249D1A578();
  *v7 = v6;
  v8 = *v1;
  sub_249D1A568();
  *v9 = v8;

  if (v2)
  {
    v10 = sub_249D21DD0();

    v11 = 0;
    v12 = v10;
  }

  else if (v4 >> 60 == 15)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  else
  {
    sub_249D1A620();
    v11 = sub_249D21E20();
    v13 = sub_249D1A620();
    sub_249D1A3F0(v13, v14);
    v10 = 0;
    v12 = v11;
  }

  v15 = *(v6 + 16);
  v15[2](v15, v11, v10);

  _Block_release(v15);
  sub_249D1A584();
  sub_249D1A62C();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_249D18A68(uint64_t a1, uint64_t a2)
{
  v4 = sub_249D17324(&qword_27EF1A638, &qword_249D234E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_249D22000();
  sub_249D17770(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_249D234F0;
  v9[5] = v8;
  sub_249D19E08(0, 0, v6, &unk_249D23500, v9);
}

uint64_t sub_249D18B78()
{
  sub_249D1A590();
  v0[8] = v1;
  v0[6] = v2;
  v0[7] = v3;
  v0[5] = v4;
  v5 = sub_249D21F80();
  v0[9] = v5;
  v0[10] = *(v5 - 8);
  v0[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249D18C3C, 0, 0);
}

uint64_t sub_249D18C3C()
{
  sub_249D1A59C();
  v1 = *(v0 + 6);
  if (v1)
  {
    v2 = *(v0 + 7);
    v3 = *(v0 + 5);
    v4 = swift_allocObject();
    *(v0 + 12) = v4;
    *(v4 + 16) = xmmword_249D23400;
    v5 = swift_allocObject();
    *(v0 + 13) = v5;
    v5[2] = v4;
    v5[3] = v2;
    v5[4] = v3;
    v5[5] = v1;

    v6 = v2;
    v7 = swift_task_alloc();
    *(v0 + 14) = v7;
    *v7 = v0;
    v7[1] = sub_249D18E44;
    v8 = v0[8];

    return sub_249D1C308(&unk_249D23528, v5, v8);
  }

  else
  {
    sub_249D21F70();
    v10 = sub_249D21F60();
    v11 = sub_249D22050();
    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 10);
    v13 = *(v0 + 11);
    v15 = *(v0 + 9);
    if (v12)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_249D14000, v10, v11, "Geocoding called without address.", v16, 2u);
      MEMORY[0x24C200410](v16, -1, -1);
    }

    (*(v14 + 8))(v13, v15);

    sub_249D1A614();

    return v17(0, 0xF000000000000000);
  }
}

uint64_t sub_249D18E44()
{
  sub_249D1A590();
  sub_249D1A5A8();
  v3 = v2;
  sub_249D1A578();
  *v4 = v3;
  v5 = *v1;
  sub_249D1A568();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    v7 = sub_249D18FE8;
  }

  else
  {

    v7 = sub_249D18F4C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_249D18F4C()
{
  sub_249D1A5D4();
  v1 = *(v0 + 96);
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_249D1A498(v2, v3);

  sub_249D1A614();

  return v4(v2, v3);
}

uint64_t sub_249D18FE8()
{
  sub_249D1A590();

  sub_249D1A584();

  return v0();
}

uint64_t sub_249D19058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a3;
  v4[24] = a4;
  v4[21] = a1;
  v4[22] = a2;
  return MEMORY[0x2822009F8](sub_249D1907C, 0, 0);
}

uint64_t sub_249D1907C()
{
  sub_249D1A59C();
  sub_249D22020();
  v1 = v0[22];
  v2 = sub_249D21F90();
  v0[25] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_249D191E8;
  v3 = swift_continuation_init();
  v0[17] = sub_249D17324(&qword_27EF1A640, &qword_249D23530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_249D19424;
  v0[13] = &unk_285CF0548;
  v0[14] = v3;
  [v1 requestDataByStringKeyword:v2 completionHandler:v0 + 10];
  sub_249D1A62C();

  return MEMORY[0x282200938](v4);
}

uint64_t sub_249D191E8()
{
  sub_249D1A590();
  sub_249D1A5A8();
  sub_249D1A578();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 208) = v4;
  if (v4)
  {
    v5 = sub_249D193BC;
  }

  else
  {
    v5 = sub_249D192EC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_249D192EC()
{
  sub_249D1A59C();
  v1 = v0[18];
  v2 = v0[25];
  v3 = v0[21];
  v4 = v0[19];
  swift_beginAccess();
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  sub_249D1A3F0(v5, v6);

  if (sub_249D22010())
  {
    v7 = v0[21];
    swift_beginAccess();
    v8 = *(v7 + 16);
    v9 = *(v3 + 24);
    *(v7 + 16) = 0;
    *(v3 + 24) = 0xF000000000000000;
    sub_249D1A3F0(v8, v9);
  }

  sub_249D1A584();
  sub_249D1A62C();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_249D193BC()
{
  sub_249D1A5D4();
  v1 = *(v0 + 200);
  swift_willThrow();

  sub_249D1A584();

  return v2();
}

uint64_t sub_249D19424(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_249D1A520((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_249D194C8(v5, v6);
  }

  else
  {
    v8 = a2;
    v9 = sub_249D21E30();
    v11 = v10;

    return sub_249D19534(v5, v9, v11);
  }
}

uint64_t sub_249D194C8(uint64_t a1, uint64_t a2)
{
  sub_249D17324(&qword_27EF1A648, &qword_249D23538);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_249D19534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return MEMORY[0x282200950]();
}

id Geocoder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Geocoder.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Geocoder();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Geocoder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Geocoder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of static Geocoder.geocodeAddress(_:withTimeout:)()
{
  sub_249D1A59C();
  v2 = v1;
  v9 = (*(v0 + 80) + **(v0 + 80));
  v3 = swift_task_alloc();
  v4 = sub_249D1A5E0(v3);
  *v4 = v5;
  v4[1] = sub_249D19770;
  v6 = sub_249D1A620();
  v7.n128_u64[0] = v2;

  return v9(v6, v7);
}

uint64_t sub_249D19770()
{
  sub_249D1A5D4();
  sub_249D1A5A8();
  v1 = *v0;
  sub_249D1A568();
  *v2 = v1;

  sub_249D1A614();
  v3 = sub_249D1A620();

  return v4(v3);
}

__n128 sub_249D19864(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_249D19870(uint64_t a1, int a2)
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

uint64_t sub_249D198B0(uint64_t result, int a2, int a3)
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

uint64_t sub_249D198FC()
{
  sub_249D1A59C();
  v1 = *(v0 + 2);
  v2 = v0[3];
  v4 = *(v0 + 4);
  v3 = *(v0 + 5);
  v5 = swift_task_alloc();
  v6 = sub_249D1A5E0(v5);
  *v6 = v7;
  v6[1] = sub_249D199B8;

  return sub_249D187EC(v1, v4, v3, v2);
}

uint64_t sub_249D199B8()
{
  sub_249D1A590();
  sub_249D1A5A8();
  v1 = *v0;
  sub_249D1A568();
  *v2 = v1;

  sub_249D1A584();

  return v3();
}

uint64_t sub_249D19A98(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_249D1A564;

  return v6();
}

void sub_249D19B80()
{
  sub_249D1A59C();
  v0 = swift_task_alloc();
  v1 = sub_249D1A5E0(v0);
  *v1 = v2;
  v1[1] = sub_249D1A564;
  sub_249D1A5FC();
  sub_249D1A62C();

  __asm { BR              X4 }
}

uint64_t sub_249D19C24(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_249D199B8;

  return v7();
}

uint64_t sub_249D19D0C()
{
  swift_unknownObjectRelease();

  v0 = sub_249D1A5EC();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_249D19D44()
{
  sub_249D1A59C();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = sub_249D1A5E0(v6);
  *v7 = v8;
  v7[1] = sub_249D1A564;

  return sub_249D19C24(v2, v3, v4, v5);
}

uint64_t sub_249D19E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_249D17324(&qword_27EF1A638, &qword_249D234E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_249D1A0A4(a3, v22 - v10);
  v12 = sub_249D22000();
  if (sub_249D17370(v11, 1, v12) == 1)
  {
    sub_249D1A114(v11);
  }

  else
  {
    sub_249D21FF0();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_249D21FE0();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_249D21FC0() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_249D1A114(a3);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_249D1A114(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_249D1A0A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_249D17324(&qword_27EF1A638, &qword_249D234E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249D1A114(uint64_t a1)
{
  v2 = sub_249D17324(&qword_27EF1A638, &qword_249D234E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249D1A17C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_249D1A274;

  return v6(a1);
}

uint64_t sub_249D1A274()
{
  sub_249D1A590();
  sub_249D1A5A8();
  v1 = *v0;
  sub_249D1A568();
  *v2 = v1;

  sub_249D1A584();

  return v3();
}

uint64_t sub_249D1A358()
{
  sub_249D1A5D4();
  v0 = swift_task_alloc();
  v1 = sub_249D1A5E0(v0);
  *v1 = v2;
  v3 = sub_249D1A5B4(v1);

  return v4(v3);
}

uint64_t sub_249D1A3F0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_249D17718(result, a2);
  }

  return result;
}

uint64_t sub_249D1A404()
{
  sub_249D1A5D4();
  v0 = swift_task_alloc();
  v1 = sub_249D1A5E0(v0);
  *v1 = v2;
  v1[1] = sub_249D199B8;
  v3 = sub_249D1A5FC();

  return sub_249D19058(v3, v4, v5, v6);
}

void sub_249D1A498(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_249D176C0(a1, a2);
  }
}

uint64_t sub_249D1A4BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_249D1A520(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

BOOL sub_249D1A640(void *a1)
{
  v2 = sub_249D21E50();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_249D17324(&qword_27EF1A650, &unk_249D235B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  sub_249D1A81C(a1);
  if (!v9)
  {
    return 0;
  }

  v10 = [a1 startDate];
  v11 = v10 != 0;
  if (v10)
  {
    v12 = v10;
    sub_249D21E40();

    (*(v3 + 32))(v8, v5, v2);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  sub_249D17770(v8, v13, 1, v2);
  sub_249D1A880(v8);
  return v11;
}

uint64_t sub_249D1A81C(void *a1)
{
  v1 = [a1 eventName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_249D21FA0();

  return v3;
}

uint64_t sub_249D1A880(uint64_t a1)
{
  v2 = sub_249D17324(&qword_27EF1A650, &unk_249D235B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_249D1A8E8(void *a1)
{
  v2 = sub_249D17324(&qword_27EF1A650, &unk_249D235B0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v32 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v32 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  sub_249D1AB88(a1);
  v15 = v14;
  v16 = [a1 startDate];
  if (v16)
  {
    v17 = v16;
    sub_249D21E40();

    v18 = sub_249D21E50();
    v19 = 0;
  }

  else
  {
    v18 = sub_249D21E50();
    v19 = 1;
  }

  v20 = 1;
  sub_249D17770(v11, v19, 1, v18);
  sub_249D1ABEC(v11, v13);
  v21 = [a1 endDate];
  if (v21)
  {
    v22 = v21;
    sub_249D21E40();

    v20 = 0;
  }

  v23 = sub_249D21E50();
  sub_249D17770(v5, v20, 1, v23);
  sub_249D1ABEC(v5, v8);
  sub_249D1C130(a1);
  v25 = v24;
  sub_249D1BDF4(a1);
  v27 = v26;
  v28 = sub_249D17370(v13, 1, v23);
  v29 = sub_249D17370(v8, 1, v23);
  v30 = v27 != 0;
  if (v27)
  {
  }

  if (v15 && (, v28 != 1))
  {
    if (v29 != 1 || v25)
    {

      v30 = 1;
    }
  }

  else
  {

    v30 = 0;
  }

  sub_249D1A880(v8);
  sub_249D1A880(v13);
  return v30;
}

uint64_t sub_249D1AB88(void *a1)
{
  v1 = [a1 eventReservationID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_249D21FA0();

  return v3;
}

uint64_t sub_249D1ABEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_249D17324(&qword_27EF1A650, &unk_249D235B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_249D1ACE4(void *a1)
{
  sub_249D1B1C8(a1);
  if (!v3)
  {
    goto LABEL_14;
  }

  v118 = 0;
  v116 = 0u;
  v117 = 0u;
  v4 = [a1 eventType];
  sub_249D21FA0();
  v6 = v5;

  sub_249D21FA0();
  sub_249D1B398();
  v9 = v9 && v8 == v6;
  if (v9)
  {

LABEL_9:

    v10 = type metadata accessor for SpotlightFlightEventValidator();
    v11 = sub_249D1B37C(v10);
    sub_249D1B3B0(v11, v12, v13, v14, v15, v16, v17, v18, v109, *(&v109 + 1), v110, v111, v112, v113[0], v113[1], v113[2], v114, v115);
    sub_249D1B3A4();
    v19 = &off_285CF0590;
LABEL_10:
    v118 = v19;
    goto LABEL_11;
  }

  sub_249D1B35C(v7);
  sub_249D1B3C8();
  if (v1)
  {
    goto LABEL_9;
  }

  sub_249D21FA0();
  sub_249D1B398();
  if (v9 && v25 == v6)
  {

LABEL_23:

    v27 = type metadata accessor for SpotlightCarEventValidator();
    v28 = sub_249D1B37C(v27);
    sub_249D1B3B0(v28, v29, v30, v31, v32, v33, v34, v35, v109, *(&v109 + 1), v110, v111, v112, v113[0], v113[1], v113[2], v114, v115);
    sub_249D1B3A4();
    v19 = &off_285CF0580;
    goto LABEL_10;
  }

  sub_249D1B35C(v24);
  sub_249D1B3C8();
  if (v1)
  {
    goto LABEL_23;
  }

  sub_249D21FA0();
  sub_249D1B398();
  if (v9 && v37 == v6)
  {

LABEL_31:

    v39 = type metadata accessor for SpotlightHotelEventValidator();
    v40 = sub_249D1B37C(v39);
    sub_249D1B3B0(v40, v41, v42, v43, v44, v45, v46, v47, v109, *(&v109 + 1), v110, v111, v112, v113[0], v113[1], v113[2], v114, v115);
    sub_249D1B3A4();
    v19 = &off_285CF05A0;
    goto LABEL_10;
  }

  sub_249D1B35C(v36);
  sub_249D1B3C8();
  if (v1)
  {
    goto LABEL_31;
  }

  sub_249D21FA0();
  sub_249D1B398();
  if (v9 && v49 == v6)
  {

LABEL_39:

    v51 = type metadata accessor for SpotlightTicketEventValidator();
    v52 = sub_249D1B37C(v51);
    sub_249D1B3B0(v52, v53, v54, v55, v56, v57, v58, v59, v109, *(&v109 + 1), v110, v111, v112, v113[0], v113[1], v113[2], v114, v115);
    sub_249D1B3A4();
    v19 = &off_285CF05E0;
    goto LABEL_10;
  }

  sub_249D1B35C(v48);
  sub_249D1B3C8();
  if (v1)
  {
    goto LABEL_39;
  }

  sub_249D21FA0();
  sub_249D1B398();
  if (v9 && v61 == v6)
  {

LABEL_47:

    v63 = type metadata accessor for SpotlightInvitationEventValidator();
    v64 = sub_249D1B37C(v63);
    sub_249D1B3B0(v64, v65, v66, v67, v68, v69, v70, v71, v109, *(&v109 + 1), v110, v111, v112, v113[0], v113[1], v113[2], v114, v115);
    sub_249D1B3A4();
    v19 = &off_285CF05B0;
    goto LABEL_10;
  }

  sub_249D1B35C(v60);
  sub_249D1B3C8();
  if (v1)
  {
    goto LABEL_47;
  }

  sub_249D21FA0();
  sub_249D1B398();
  if (v9 && v73 == v6)
  {

LABEL_55:

    v75 = type metadata accessor for SpotlightAppointmentEventValidator();
    v76 = sub_249D1B37C(v75);
    sub_249D1B3B0(v76, v77, v78, v79, v80, v81, v82, v83, v109, *(&v109 + 1), v110, v111, v112, v113[0], v113[1], v113[2], v114, v115);
    sub_249D1B3A4();
    v19 = &off_285CF0570;
    goto LABEL_10;
  }

  sub_249D1B35C(v72);
  sub_249D1B3C8();
  if (v1)
  {
    goto LABEL_55;
  }

  sub_249D21FA0();
  sub_249D1B398();
  if (v9 && v85 == v6)
  {

LABEL_63:

    v87 = type metadata accessor for SpotlightTicketedTransportEventValidator();
    v88 = sub_249D1B37C(v87);
    sub_249D1B3B0(v88, v89, v90, v91, v92, v93, v94, v95, v109, *(&v109 + 1), v110, v111, v112, v113[0], v113[1], v113[2], v114, v115);
    sub_249D1B3A4();
    v19 = &off_285CF05D0;
    goto LABEL_10;
  }

  sub_249D1B35C(v84);
  sub_249D1B3C8();
  if (v1)
  {
    goto LABEL_63;
  }

  sub_249D21FA0();
  sub_249D1B398();
  if (v9 && v97 == v6)
  {

    goto LABEL_71;
  }

  v99 = sub_249D1B35C(v96);

  if (v99)
  {
LABEL_71:
    v100 = type metadata accessor for SpotlightRestaurantEventValidator();
    v101 = sub_249D1B37C(v100);
    sub_249D1B3B0(v101, v102, v103, v104, v105, v106, v107, v108, v109, *(&v109 + 1), v110, v111, v112, v113[0], v113[1], v113[2], v114, v115);
    sub_249D1B3A4();
    v19 = &off_285CF05C0;
    goto LABEL_10;
  }

  sub_249D1B22C(&v116);
  v116 = 0u;
  v117 = 0u;
  v118 = 0;
LABEL_11:
  sub_249D1B294(&v116, &v109);
  if (!v111)
  {
    sub_249D1B22C(&v116);
    sub_249D1B22C(&v109);
LABEL_14:
    v22 = 0;
    return v22 & 1;
  }

  sub_249D1B304(&v109, v113);
  v20 = v114;
  v21 = v115;
  sub_249D1A520(v113, v114);
  v22 = (*(v21 + 8))(a1, v20, v21);
  sub_249D1B22C(&v116);
  sub_249D15E28(v113);
  return v22 & 1;
}

id SpotlightEventValidator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SpotlightEventValidator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpotlightEventValidator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SpotlightEventValidator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpotlightEventValidator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_249D1B1C8(void *a1)
{
  v1 = [a1 eventGroupIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_249D21FA0();

  return v3;
}

uint64_t sub_249D1B22C(uint64_t a1)
{
  v2 = sub_249D17324(&qword_27EF1A658, &unk_249D235C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249D1B294(uint64_t a1, uint64_t a2)
{
  v4 = sub_249D17324(&qword_27EF1A658, &unk_249D235C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249D1B304(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_249D1B35C(uint64_t a1)
{

  return sub_249D220B0();
}

uint64_t sub_249D1B37C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_249D1B3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  return sub_249D1B22C(va);
}

uint64_t sub_249D1B3C8()
{
}

BOOL sub_249D1B3E0(void *a1)
{
  v2 = sub_249D17324(&qword_27EF1A650, &unk_249D235B0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v33 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v33 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  sub_249D1B6F4(a1, &selRef_flightNumber);
  v15 = v14;
  sub_249D1B6F4(a1, &selRef_flightCarrierCode);
  v17 = v16;
  v18 = [a1 flightDepartureDateTime];
  if (v18)
  {
    v19 = v18;
    sub_249D21E40();

    v20 = sub_249D21E50();
    v21 = 0;
  }

  else
  {
    v20 = sub_249D21E50();
    v21 = 1;
  }

  v22 = 1;
  sub_249D17770(v11, v21, 1, v20);
  sub_249D1ABEC(v11, v13);
  v23 = [a1 flightArrivalDateTime];
  if (v23)
  {
    v24 = v23;
    sub_249D21E40();

    v22 = 0;
  }

  v25 = sub_249D21E50();
  sub_249D17770(v5, v22, 1, v25);
  sub_249D1ABEC(v5, v8);
  sub_249D1B6F4(a1, &selRef_flightDepartureAirportCode);
  v27 = v26;
  sub_249D1B6F4(a1, &selRef_flightArrivalAirportCode);
  v29 = v28;
  sub_249D1B6F4(a1, &selRef_flightConfirmationNumber);
  v31 = v30;
  if (!v15)
  {

LABEL_14:

    goto LABEL_15;
  }

  if (!v17)
  {

    goto LABEL_18;
  }

  if (sub_249D17370(v13, 1, v25) == 1 || sub_249D17370(v8, 1, v25) == 1)
  {
    goto LABEL_14;
  }

  if (!v27)
  {
LABEL_15:

    goto LABEL_16;
  }

  if (!v29)
  {
LABEL_16:
    v17 = 0;
    goto LABEL_18;
  }

  v17 = v31 != 0;
LABEL_18:

  sub_249D1A880(v8);
  sub_249D1A880(v13);
  return v17;
}

uint64_t sub_249D1B6F4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_249D21FA0();

  return v4;
}

BOOL sub_249D1B754(void *a1)
{
  v2 = sub_249D17324(&qword_27EF1A650, &unk_249D235B0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v34 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v34 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  v14 = [a1 startDate];
  if (v14)
  {
    v15 = v14;
    sub_249D21E40();

    v16 = sub_249D21E50();
    v17 = 0;
  }

  else
  {
    v16 = sub_249D21E50();
    v17 = 1;
  }

  v18 = 1;
  sub_249D17770(v11, v17, 1, v16);
  sub_249D1ABEC(v11, v13);
  v19 = [a1 endDate];
  if (v19)
  {
    v20 = v19;
    sub_249D21E40();

    v18 = 0;
  }

  v21 = sub_249D21E50();
  sub_249D17770(v5, v18, 1, v21);
  sub_249D1ABEC(v5, v8);
  sub_249D1B6F4(a1, &selRef_hotelReservationForName);
  v23 = v22;
  sub_249D1B6F4(a1, &selRef_hotelProvider);
  v25 = v24;
  sub_249D1B6F4(a1, &selRef_hotelReservationForAddress);
  v27 = v26;
  sub_249D1B6F4(a1, &selRef_hotelReservationForStreetAddress);
  v29 = v28;
  v30 = sub_249D17370(v13, 1, v21);
  v31 = sub_249D17370(v8, 1, v21);

  if (v27)
  {

    if (v30 != 1)
    {
      if (v31 != 1 || (v32 = 1, v23))
      {
LABEL_17:

LABEL_18:

        v32 = 1;
        goto LABEL_19;
      }

      goto LABEL_15;
    }

LABEL_12:

    v32 = 0;
    goto LABEL_19;
  }

  if (v30 == 1)
  {
    goto LABEL_12;
  }

  if (v31 != 1)
  {
    goto LABEL_17;
  }

  v32 = v29 != 0;
  if (v23)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (v25)
  {
    goto LABEL_18;
  }

LABEL_19:
  sub_249D1A880(v8);
  sub_249D1A880(v13);
  return v32;
}

BOOL sub_249D1BA5C(void *a1)
{
  v2 = sub_249D21E50();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_249D17324(&qword_27EF1A650, &unk_249D235B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  sub_249D1A81C(a1);
  if (!v9)
  {
    return 0;
  }

  v10 = [a1 startDate];
  v11 = v10 != 0;
  if (v10)
  {
    v12 = v10;
    sub_249D21E40();

    (*(v3 + 32))(v8, v5, v2);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  sub_249D17770(v8, v13, 1, v2);
  sub_249D1A880(v8);
  return v11;
}

BOOL sub_249D1BC28(void *a1)
{
  v2 = sub_249D21E50();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_249D17324(&qword_27EF1A650, &unk_249D235B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  sub_249D1BDF4(a1);
  if (!v9)
  {
    return 0;
  }

  v10 = [a1 startDate];
  v11 = v10 != 0;
  if (v10)
  {
    v12 = v10;
    sub_249D21E40();

    (*(v3 + 32))(v8, v5, v2);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  sub_249D17770(v8, v13, 1, v2);
  sub_249D1A880(v8);
  return v11;
}

uint64_t sub_249D1BDF4(void *a1)
{
  v1 = [a1 eventStartLocationName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_249D21FA0();

  return v3;
}

BOOL sub_249D1BE58(void *a1)
{
  v2 = sub_249D17324(&qword_27EF1A650, &unk_249D235B0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v33 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v33 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  sub_249D1BDF4(a1);
  v15 = v14;
  sub_249D1B6F4(a1, &selRef_eventStartLocationAddress);
  v17 = v16;
  v18 = [a1 endDate];
  if (v18)
  {
    v19 = v18;
    sub_249D21E40();

    v20 = sub_249D21E50();
    v21 = 0;
  }

  else
  {
    v20 = sub_249D21E50();
    v21 = 1;
  }

  v22 = 1;
  sub_249D17770(v11, v21, 1, v20);
  sub_249D1ABEC(v11, v13);
  sub_249D1B6F4(a1, &selRef_eventEndLocationName);
  v24 = v23;
  sub_249D1B6F4(a1, &selRef_eventEndLocationAddress);
  v26 = v25;
  v27 = [a1 startDate];
  if (v27)
  {
    v28 = v27;
    sub_249D21E40();

    v22 = 0;
  }

  v29 = sub_249D21E50();
  sub_249D17770(v5, v22, 1, v29);
  sub_249D1ABEC(v5, v8);
  v30 = sub_249D17370(v13, 1, v29);
  v31 = sub_249D17370(v8, 1, v29) != 1;
  if (v15)
  {
  }

  else if (!v17)
  {

    goto LABEL_15;
  }

  if (v24)
  {

    goto LABEL_12;
  }

  if (v26)
  {
LABEL_12:

    if (v30 != 1)
    {
      goto LABEL_16;
    }
  }

LABEL_15:
  v31 = 0;
LABEL_16:
  sub_249D1A880(v8);
  sub_249D1A880(v13);
  return v31;
}

BOOL sub_249D1C13C(void *a1)
{
  v2 = sub_249D21E50();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_249D17324(&qword_27EF1A650, &unk_249D235B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  sub_249D1A81C(a1);
  if (!v9)
  {
    return 0;
  }

  v10 = [a1 startDate];
  v11 = v10 != 0;
  if (v10)
  {
    v12 = v10;
    sub_249D21E40();

    (*(v3 + 32))(v8, v5, v2);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  sub_249D17770(v8, v13, 1, v2);
  sub_249D1A880(v8);
  return v11;
}

uint64_t sub_249D1C308(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 16) = a3;
  sub_249D1D700();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_249D1C338()
{
  sub_249D1A590();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_249D1C420;

  return MEMORY[0x282200740]();
}

uint64_t sub_249D1C420()
{
  sub_249D1A590();
  sub_249D1A5A8();
  v3 = v2;
  sub_249D1A578();
  *v4 = v3;
  v5 = *v1;
  sub_249D1A568();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  sub_249D1D700();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249D1C548()
{
  sub_249D1A590();

  sub_249D1A584();

  return v0();
}

uint64_t sub_249D1C5A4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a1;
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  *(v5 + 16) = a3;
  sub_249D17324(&qword_27EF1A638, &qword_249D234E0);
  *(v5 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249D1C648, 0, 0);
}

uint64_t sub_249D1C648()
{
  v1 = v0[6];
  v2 = v0[5];
  v4 = v0[3];
  v3 = v0[4];
  sub_249D22000();
  sub_249D1D6E0();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  v5[5] = v3;

  sub_249D1CB20(v1, &unk_249D23798, v5);
  sub_249D1A114(v1);
  sub_249D1D6E0();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;
  sub_249D1CB20(v1, &unk_249D237A8, v6);
  sub_249D1A114(v1);
  v7 = swift_task_alloc();
  v0[7] = v7;
  sub_249D17324(&qword_27EF1A660, &unk_249D237B0);
  *v7 = v0;
  v7[1] = sub_249D1C7D0;
  sub_249D1D700();

  return MEMORY[0x2822004D0](v8);
}

uint64_t sub_249D1C7D0()
{
  sub_249D1A590();
  sub_249D1A5A8();
  sub_249D1A578();
  *v3 = v2;
  v4 = *v1;
  sub_249D1A568();
  *v5 = v4;
  *(v6 + 64) = v0;

  sub_249D1D700();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_249D1C8CC()
{
  sub_249D1A590();
  sub_249D17324(&qword_27EF1A648, &qword_249D23538);
  sub_249D22040();

  sub_249D1A584();

  return v0();
}

uint64_t sub_249D1C968()
{
  sub_249D1A590();

  sub_249D1A584();

  return v0();
}

uint64_t sub_249D1C9C4()
{
  sub_249D1A59C();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 2);
  v6 = *(v0 + 3);
  v7 = v0[4];
  v8 = swift_task_alloc();
  v9 = sub_249D1D6B8(v8);
  *v9 = v10;
  v9[1] = sub_249D199B8;

  return sub_249D1C5A4(v7, v4, v2, v5, v6);
}

uint64_t sub_249D1CA7C()
{
  sub_249D1A59C();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_249D1D6B8(v2);
  *v3 = v4;
  v5 = sub_249D1D6C8(v3);

  return sub_249D19C24(v5, v6, v7, v1);
}

uint64_t sub_249D1CB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_249D17324(&qword_27EF1A638, &qword_249D234E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v17 - v8;
  sub_249D1A0A4(a1, v17 - v8);
  v10 = sub_249D22000();
  if (sub_249D17370(v9, 1, v10) == 1)
  {
    sub_249D1A114(v9);
  }

  else
  {
    sub_249D21FF0();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = sub_249D21FE0();
    v13 = v12;
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = *v4;
  v15 = (v13 | v11);
  if (v13 | v11)
  {
    v18[0] = 0;
    v18[1] = 0;
    v15 = v18;
    v18[2] = v11;
    v18[3] = v13;
  }

  v17[1] = 1;
  v17[2] = v15;
  v17[3] = v14;
  swift_task_create();
}

uint64_t sub_249D1CCCC(double a1)
{
  *(v1 + 16) = a1;
  v2 = sub_249D22080();
  *(v1 + 24) = v2;
  *(v1 + 32) = *(v2 - 8);
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_249D1CD8C, 0, 0);
}

uint64_t sub_249D1CD8C()
{
  v1 = sub_249D22160();
  v3 = v2;
  sub_249D220E0();
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_249D1CE68;

  return sub_249D1D178(v1, v3, 0, 0, 1);
}

uint64_t sub_249D1CE68()
{
  sub_249D1A5A8();
  sub_249D1A578();
  *v3 = v2;
  v5 = v4[5];
  v6 = v4[4];
  v7 = v4[3];
  v8 = *v1;
  sub_249D1A568();
  *v9 = v8;
  *(v10 + 56) = v0;

  (*(v6 + 8))(v5, v7);
  sub_249D1D700();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_249D1CFC4(uint64_t a1)
{
  v2 = *(v1 + 56);
  sub_249D22020();
  if (!v2)
  {
    sub_249D1D60C();
    swift_allocError();
    *v3 = 0xD000000000000032;
    v3[1] = 0x8000000249D24240;
    swift_willThrow();
  }

  sub_249D1A584();

  return v4();
}

uint64_t sub_249D1D07C()
{
  sub_249D1A590();

  sub_249D1A584();

  return v0();
}

uint64_t sub_249D1D0D8()
{
  sub_249D1A59C();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = sub_249D1D6B8(v2);
  *v3 = v4;
  sub_249D1D6C8(v3);

  return sub_249D1CCCC(v1);
}

uint64_t sub_249D1D178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_249D22070();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_249D1D278, 0, 0);
}

uint64_t sub_249D1D278()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_249D22080();
  v5 = sub_249D1D660(&qword_27EF1A670, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_249D220C0();
  sub_249D1D660(&qword_27EF1A678, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_249D22090();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_249D1D408;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_249D1D408()
{
  sub_249D1A59C();
  sub_249D1A5A8();
  v3 = v2;
  sub_249D1A578();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[8];
  v9 = *v1;
  sub_249D1A568();
  *v10 = v9;
  *(v3 + 120) = v0;

  v6(v7, v8);
  if (v0)
  {
    sub_249D1D700();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  else
  {

    sub_249D1A584();

    return v14();
  }
}

uint64_t sub_249D1D5A8()
{
  sub_249D1A590();

  sub_249D1A584();

  return v0();
}

unint64_t sub_249D1D60C()
{
  result = qword_27EF1A668;
  if (!qword_27EF1A668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF1A668);
  }

  return result;
}

uint64_t sub_249D1D660(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_249D1D6E0()
{

  return sub_249D17770(v0, 1, 1, v1);
}

void sub_249D1D810(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = [v2 localizedDescription];
    v4 = 138412290;
    v5 = v3;
    _os_log_error_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error in addSerializedDocument: %@", &v4, 0xCu);
  }
}

void sub_249D1DA94(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = 138412290;
    v4 = v2;
    _os_log_error_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "DocumentUnderstanding: error in DUFileUpdateSpotlightReceiver received from XPC handler: %@", &v3, 0xCu);
  }
}

void sub_249D1DD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_249D1DD4C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_249D1DD64(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = [v6 localizedDescription];
      v10 = 138412290;
      v11 = v9;
      _os_log_error_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error in synchronousEventExtractionWithSerializedDocument: %@", &v10, 0xCu);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
}

void sub_249D1DF44(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = [v6 localizedDescription];
    v8 = 138412290;
    v9 = v7;
    _os_log_error_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error in foundInEventResultWithSerializedDocument: %@", &v8, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_249D1F0F0(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = [v6 localizedDescription];
    v8 = 138412290;
    v9 = v7;
    _os_log_error_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error in requestExtractionOfPersonalIDWithLinesOfText: %@", &v8, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_249D1FE78()
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v0 = [v1 objectForKey:@"DUMockPersonalIDResult"];
  if (v0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&qword_27EF1AAC0, v0);
    }
  }
}

uint64_t sub_249D1FF60()
{
  qword_280D9DE20 = objc_alloc_init(DUInformationExtractor);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_249D1FFF0()
{
  if (+[_TtC27DocumentUnderstandingClient38DocumentUnderstandingFeatureFlagReader isFoundInUseLLMExtendedLanguagesEnabled])
  {
    [MEMORY[0x277CBEB98] setWithObjects:{@"en", @"de", @"es", @"fr", @"it", @"ja", @"pt", 0}];
  }

  else
  {
    [MEMORY[0x277CBEB98] setWithObjects:{@"en", 0, v1, v2, v3, v4, v5, v6}];
  }
  qword_280D9DE10 = ;

  return MEMORY[0x2821F96F8]();
}

void sub_249D20A74(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x24C200510](a2);
  if (v3 == MEMORY[0x277D86468])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    LOWORD(v7) = 0;
    v5 = MEMORY[0x277D86220];
    v6 = "DocumentUndersanding: got an unexpected message back from DocumentUpdateHandler";
    goto LABEL_11;
  }

  if (v3 == MEMORY[0x277D86480])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    LOWORD(v7) = 0;
    v5 = MEMORY[0x277D86220];
    v6 = "DocumentUndersanding: got an error back from DocumentUpdateHandler";
LABEL_11:
    _os_log_error_impl(&dword_249D14000, v5, OS_LOG_TYPE_ERROR, v6, &v7, 2u);
    return;
  }

  if (v3 == MEMORY[0x277D86450] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DocumentUndersanding: successfully got docUConnection: %@", &v7, 0xCu);
  }
}

void sub_249D20F38(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v3;
    _os_log_error_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "DocumentUnderstandingClient remote call to textunderstandingd error - %@", &v4, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_249D212EC(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = 138412290;
    v4 = a2;
    _os_log_error_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "DocumentUnderstandingClient remote call to textunderstandingd error - %@", &v3, 0xCu);
  }
}

void sub_249D2153C()
{
  v2 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v0 = 138412290;
    v1 = @"com.apple.TextUnderstanding.DocumentUnderstandingHarvesting";
    _os_log_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Connection to %@ invalidated.", &v0, 0xCu);
  }
}

void sub_249D215D8()
{
  v2 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v0 = 138412290;
    v1 = @"com.apple.TextUnderstanding.DocumentUnderstandingHarvesting";
    _os_log_error_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Connection to %@ interrupted.", &v0, 0xCu);
  }
}

void sub_249D21718(uint64_t a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = objc_opt_new();
  v3 = qword_280D9DE40;
  qword_280D9DE40 = v2;

  objc_autoreleasePoolPop(v1);
}

void sub_249D21A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_249D21AC4(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v2 = WeakRetained[10];
      v3 = 138412290;
      v4 = v2;
      _os_log_error_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Connection to %@ interrupted.", &v3, 0xCu);
    }

    (*(WeakRetained[13] + 16))();
  }
}

void sub_249D21B8C(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v2 = *(WeakRetained + 10);
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_249D14000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Invalidated connection to %@ .", &v4, 0xCu);
    }

    (*(*(WeakRetained + 14) + 16))();
    pthread_mutex_lock((WeakRetained + 8));
    v3 = *(WeakRetained + 9);
    *(WeakRetained + 9) = 0;

    pthread_mutex_unlock((WeakRetained + 8));
  }
}