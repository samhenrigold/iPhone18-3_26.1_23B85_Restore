BOOL sub_27581C9F4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_27581CA70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2759BA298();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_27581CAA0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_27581CABC()
{
  v1 = sub_2759B8508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_27581CBB4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_27581CC70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_27581CE2C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_27581CEE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_27581CF9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27581CFDC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27581D014(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E950, &qword_2759C1820);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_27581D08C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E950, &qword_2759C1820);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_27581D10C()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_27581D17C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_2758657C8(v1);
}

void sub_27581D1B0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_275866968(v1);
}

void sub_27581D1E4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_275865AB8(v1);
}

void sub_27581D218(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_275866C58(v1);
}

void sub_27581D24C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_275865DA8(v1);
}

void sub_27581D280(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_275866F48(v1);
}

void sub_27581D2B4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_275866098(v1);
}

void sub_27581D2E8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_275867238(v1);
}

void sub_27581D31C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_275866388(v1);
}

void sub_27581D350(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_275867528(v1);
}

void sub_27581D384(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_275866678(v1);
}

void sub_27581D3B8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_275867818(v1);
}

void sub_27581D3EC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_275867B08(v1);
}

void sub_27581D420(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_275867DF8(v1);
}

uint64_t sub_27581D4B4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_27581D4F4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2759B8A38();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_27581D624(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_2759B8A38();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_27581D754()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_27581D7A4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_275876AF8(v1);
}

void sub_27581D8D8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_27587A118(v1);
}

uint64_t sub_27581D9B0()
{
  v1 = sub_2759B8508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_27581DA90()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27581DAFC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27581DB34()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27581DC24()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_27581DC64()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_27581DCAC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double sub_27581DD30(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_27587C898(v1, v2);
}

void sub_27581DD98(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_27587BF74(v1);
}

void sub_27581DE0C(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_27581DE1C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_27581DE54(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_27587A394(v1);
}

void sub_27581DEB4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_275879F28(v1);
}

void sub_27581DF0C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_275879D38(v1);
}

void sub_27581DF64(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_275879900(v1);
}

void sub_27581DFC4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_275879564(v1);
}

void sub_27581E01C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_275879374(v1);
}

void sub_27581E074(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_275879184(v1);
}

void sub_27581E0CC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_275878F94(v1);
}

void sub_27581E124(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_275878C38(v1);
}

uint64_t sub_27581E200(void *a1)
{
  sub_2759BA7D8();
  sub_2759B9F58();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F0A0, &qword_2759C3560);
  sub_2759B90A8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v1 = MEMORY[0x277CE04A0];
  sub_27589B02C(&qword_280A0F0A8, &qword_280A0F0A0, &qword_2759C3560, MEMORY[0x277CE04A0]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F0B0, &qword_2759C3330);
  sub_2759B90A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F0B8, &qword_2759C3338);
  sub_2759B90A8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0F0C0, &unk_2759C3340);
  sub_2759B90A8();
  swift_getOpaqueTypeConformance2();
  sub_27589B02C(&qword_280A0F0C8, &qword_280A0F0B0, &qword_2759C3330, v1);
  swift_getWitnessTable();
  sub_27589B02C(&qword_280A0F0D0, &qword_280A0F0B8, &qword_2759C3338, v1);
  swift_getWitnessTable();
  sub_27589B02C(&qword_280A0F0D8, &qword_280A0F0C0, &unk_2759C3340, MEMORY[0x277CE0868]);
  return swift_getWitnessTable();
}

uint64_t sub_27581E4C4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27581E4FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_shouldIgnoreCache;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_27581E554(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14iCloudSettings35ManageStorageAppsListDataController_shouldIgnoreCache;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_27581E5A8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27581E5F8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_27581E648()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27581E698(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F268, &qword_2759C3718);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27581E708()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27581E740()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_27581E780()
{
  swift_unknownObjectRelease();

  sub_27589F7F0(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_27589F7F0(*(v0 + 80), *(v0 + 88), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

void sub_27581E7FC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_2758A5424(v1);
}

void sub_27581E838(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_2758A51B8(v1);
}

uint64_t sub_27581E870()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

double sub_27581E8E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_2758A4418(v1, v2);
}

uint64_t sub_27581E990()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27581E9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5D8, &qword_2759CC5B0);
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

uint64_t sub_27581EAB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5D8, &qword_2759CC5B0);
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

uint64_t sub_27581EC00()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_27581EC90()
{
  v1 = type metadata accessor for ADPSection(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2759B94D8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27581EE04()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27581EE3C()
{
  swift_unknownObjectRelease();

  sub_27589F7F0(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_27589F7F0(*(v0 + 80), *(v0 + 88), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_27581EE9C()
{
  v1 = sub_2759B8508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_27581EF74()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_27581EFC0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_2758B296C(v1);
}

uint64_t sub_27581EFFC()
{
  v1 = sub_2759B8508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7C0, &qword_2759C4600);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_27581F150()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7C8, &qword_2759C4608);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_27581F1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 88);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_27581F2A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 88) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_27581F364()
{
  v1 = type metadata accessor for ManageStorageDrilldownAnimationView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2759B8DA8();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27581F52C()
{
  v1 = type metadata accessor for ManageStorageDrilldownAnimationView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = *(v1 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2759B8DA8();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_27581F70C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_27581F754()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27581F7AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27581F7E4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FAB0, &qword_2759C4DD0);
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
      v13 = sub_2759B8C48();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_27581F914(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FAB0, &qword_2759C4DD0);
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
      v13 = sub_2759B8C48();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_27581FA44()
{
  v1 = type metadata accessor for RemoteUIWebView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FAF8, &qword_2759C4F18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2759B8F38();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 40);
  v9 = sub_2759B8C48();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27581FBEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2759B8508();
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

uint64_t sub_27581FCA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2759B8508();
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

uint64_t sub_27581FD64()
{
  v1 = *(type metadata accessor for WebViewRepresentable(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_2759B8508();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27581FE60()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27581FE98(void *a1)
{
  sub_2759B9DC8();
  sub_2759B9648();
  swift_getWitnessTable();
  sub_2758C82A0();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_2759B9E58();
  return swift_getWitnessTable();
}

uint64_t sub_27581FF88()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_27581FFD8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_275820010(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_2758201A0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_275820354()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2758203A4()
{
  swift_unknownObjectRelease();
  sub_27585A900(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_27582040C@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_2758204C4()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27582050C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27582054C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FEC8, &qword_2759C5AA8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_275820650()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0FEE0, &qword_2759C5B68);
  v0 = sub_27589B02C(&qword_280A0FEF8, &qword_280A0FEE0, &qword_2759C5B68, MEMORY[0x277CDE5A0]);
  sub_27589F2D4(v0, v1, v2);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_275820708()
{
  v1 = sub_2759B8768();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2758207D4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_275820858()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2758208A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

void sub_27582098C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_2758DE27C(v1);
}

uint64_t sub_275820A00()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275820A38()
{
  v1 = sub_2759B8508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_275820B38()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_275820BC4()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275820BFC()
{
  swift_unknownObjectRelease();

  sub_27589F7F0(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_27589F7F0(*(v0 + 80), *(v0 + 88), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_275820CB0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_275820CF8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275820D3C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275820D7C()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275820DB4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_275820E0C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275820E4C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275820E94()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275820ECC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_275820F48()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275820FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5D8, &qword_2759CC5B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A107D0, &unk_2759CAA10);
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

uint64_t sub_2758210C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5D8, &qword_2759CC5B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A107D0, &unk_2759CAA10);
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

uint64_t sub_275821290()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2758212EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5D8, &qword_2759CC5B0);
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

uint64_t sub_2758213B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5D8, &qword_2759CC5B0);
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

uint64_t sub_275821478()
{
  v1 = type metadata accessor for BackupSection(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2759B94D8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27582164C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2759B92E8();
  *a1 = result;
  return result;
}

uint64_t sub_2758216A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2759B91E8();
  *a1 = result;
  return result;
}

uint64_t sub_27582172C()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275821764()
{
  swift_unknownObjectRelease();

  sub_27589F7F0(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_27589F7F0(*(v0 + 80), *(v0 + 88), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_2758217C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_275821904(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_275821A40()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275821A90()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

double sub_275821B00(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_27587C744(v1, v2);
}

uint64_t sub_275821B50()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

void sub_275821BA4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_275878260(v1);
}

void sub_275821C0C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_27587A2C4(v1);
}

void sub_275821C64(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_275879710(v1);
}

uint64_t sub_275821C9C()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275821CE4()
{
  v1 = sub_2759B8508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_275821DB8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 128));

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_275821E58()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_275821EC0()
{
  v1 = sub_2759B8508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_275821F58()
{
  v1 = sub_2759B8508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 9, v3 | 7);
}

uint64_t sub_275822040()
{
  swift_unknownObjectRelease();

  sub_27585A900(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2758220DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2759B8F98();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_275822148(uint64_t a1, uint64_t a2)
{
  v4 = sub_2759B8F98();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2758221C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_275822284(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_275822370()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2758223B4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2758223FC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27582243C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275822490(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EED8, qword_2759C9B60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_27582254C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EED8, qword_2759C9B60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_27582260C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10F48, &qword_2759C9BE8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10F58, &qword_2759C9BF8);
  sub_27592B448();
  sub_27592B4AC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2758226B4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2758226FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
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

uint64_t sub_2758227C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
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

uint64_t sub_275822888()
{
  v1 = *(type metadata accessor for SimpleStorageMeter(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_2759B8DA8();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2758229B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11150, &qword_2759CA1B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_275822A24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11158, &qword_2759CA1B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275822B7C()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275822BB4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_275822BF8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_275822C40()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275822C78()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275822CC0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275822D30()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275822D68()
{
  swift_unknownObjectRelease();

  sub_27589F7F0(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_27589F7F0(*(v0 + 80), *(v0 + 88), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

void sub_275822DCC(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_275936C08(v1);
}

uint64_t sub_275822DFC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A107D0, &unk_2759CAA10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5D8, &qword_2759CC5B0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11240, qword_2759CAA20);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_275822F94(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A107D0, &unk_2759CAA10);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5D8, &qword_2759CC5B0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11240, qword_2759CAA20);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_27582313C()
{
  v1 = type metadata accessor for AppsUsingiCloudSection(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10410, &qword_2759C6CD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2759B87B8();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_2759B94D8();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v5 + v1[7];
  v10 = sub_2759B8F58();
  (*(*(v10 - 8) + 8))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11240, qword_2759CAA20);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27582336C()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2758233A4()
{
  swift_unknownObjectRelease();

  sub_27589F7F0(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_27589F7F0(*(v0 + 80), *(v0 + 88), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_275823408(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2758234C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_275823578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 44) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_275823648(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 36);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 44) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_275823714(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11458, &qword_2759CB370);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2758237C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_27582388C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_275823954(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_275823A10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_275823AC0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11468, &qword_2759CB380);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11188, &unk_2759CA220);
  sub_275947A84();
  sub_275931330();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_275823B8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A116C8, &qword_2759CB868);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_275823C68()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275823CA0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_275823CD8()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_275823D10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F7C8, &qword_2759C4608);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_275823E04()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_275823E4C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275823EB0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275823EFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A119F8, &qword_2759CC5A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275823F6C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5D8, &qword_2759CC5B0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11A10, &qword_2759CC5B8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_2758240A8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5D8, &qword_2759CC5B0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11A10, &qword_2759CC5B8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2758241E8()
{
  v1 = type metadata accessor for ManageStorageAppView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2759B94D8();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11A10, &qword_2759CC5B8);
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2758243CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2759B8C48();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2758244FC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_2759B8C48();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_275824684()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2758246CC(uint64_t *a1)
{
  type metadata accessor for ToolbarBackButton(255);
  sub_2759B90A8();
  sub_27595FBBC();
  return swift_getWitnessTable();
}

uint64_t sub_275824738(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11BE0, qword_2759CCDC0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2758247B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11BE0, qword_2759CCDC0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_27582482C()
{
  v1 = *(type metadata accessor for ToolbarBackButton(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11BE0, qword_2759CCDC0) + 32);
  v6 = sub_2759B9048();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_27582492C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11C08, &qword_2759CCE48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11C10, &qword_2759CCE50);
  sub_27589B02C(&qword_280A11C18, &qword_280A11C08, &qword_2759CCE48, MEMORY[0x277CE04B0]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11C20, &qword_2759CCE58);
  sub_27589B02C(&unk_280A11C28, &qword_280A11C20, &qword_2759CCE58, MEMORY[0x277CDD7A8]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_275824A58()
{
  v1 = sub_2759B8768();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_275824B24()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_275824C0C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275824C54(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11CF8, &unk_2759CD458);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_275824D90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11CF8, &unk_2759CD458);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_275824ED0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275824F18()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_275824F78()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275824FC0()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275824FF8()
{
  swift_unknownObjectRelease();

  sub_27589F7F0(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_27589F7F0(*(v0 + 80), *(v0 + 88), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_275825068()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2758250F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5D8, &qword_2759CC5B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2758251BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5D8, &qword_2759CC5B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2758252DC(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12000, &qword_2759CE420);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5D8, &qword_2759CC5B0);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[7]];

  return v15(v16, a2, v14);
}

char *sub_27582546C(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12000, &qword_2759CE420);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F5D8, &qword_2759CC5B0);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_2758255FC(uint64_t *a1)
{
  sub_2759BA448();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11FB0, &unk_2759CE2F8);
  swift_getWitnessTable();
  sub_2759B9EF8();
  sub_27589B02C(&qword_280A11FB8, &qword_280A11FB0, &unk_2759CE2F8, MEMORY[0x277CDF0A0]);
  swift_getWitnessTable();
  sub_2759B9928();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F58, &qword_2759CE2D0);
  type metadata accessor for SixPackCard(255);
  sub_2759B9EF8();
  sub_27589B02C(&qword_280A11F68, &qword_280A11F58, &qword_2759CE2D0, MEMORY[0x277CDF500]);
  sub_2759B8FE8();
  sub_2759BA448();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F60, &qword_2759CE2D8);
  sub_2759B95F8();
  sub_2759B8FE8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2759B9EF8();
  sub_2759B95F8();
  sub_27589B02C(&qword_280A11F70, &qword_280A11F58, &qword_2759CE2D0, MEMORY[0x277CDF510]);
  sub_27597E8D8(&qword_280A11F38, type metadata accessor for SixPackCard, &unk_2759CE434);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_27597DC18();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2759B9E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F30, &qword_2759CE2C0);
  sub_2759B9EF8();
  sub_27597DB08();
  swift_getWitnessTable();
  sub_2759B9F18();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F90, &qword_2759CE2E8);
  sub_2759B95F8();
  sub_27597DD00();
  swift_getWitnessTable();
  sub_2759B9F18();
  sub_2759B9EF8();
  sub_2759B95F8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2759B9928();
  sub_2759B95F8();
  sub_2759B95F8();
  sub_2759B9E38();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11F18, &qword_2759CE2B8);
  sub_2759B95F8();
  sub_27597DA50();
  swift_getWitnessTable();
  sub_2759B9F18();
  sub_2759B9EF8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2759B9928();
  sub_2759B95F8();
  sub_2759B95F8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_275825D40()
{
  v1 = sub_2759B8508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for SixPackCard(0);
  v7 = *(*(v6 - 1) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = v0 + v8;
  swift_unknownObjectRelease();
  v11 = v6[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_2759B8DA8();
    (*(*(v12 - 8) + 8))(v10 + v11, v12);
  }

  else
  {
  }

  v13 = v6[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FC0, &qword_2759CE388);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_2759B96B8();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v10 + v13, 1, v14))
    {
      (*(v15 + 8))(v10 + v13, v14);
    }
  }

  else
  {
  }

  v16 = v6[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_2759B94D8();
    (*(*(v17 - 8) + 8))(v10 + v16, v17);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_275826024(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A122C8, &qword_2759CE6B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_275826094()
{
  v1 = type metadata accessor for SixPackCard(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  swift_unknownObjectRelease();
  v6 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2759B8DA8();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11FC0, &qword_2759CE388);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2759B96B8();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v5 + v8, 1, v9))
    {
      (*(v10 + 8))(v5 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_2759B94D8();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2758262FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_275826374(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2758263F0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A12038, &qword_2759CE498);
  sub_2759B8DA8();
  sub_27597EC6C();
  sub_27597E8D8(&qword_280A120D8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF3F8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_275826508()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2758265B8()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2758265F0()
{
  swift_unknownObjectRelease();

  sub_27589F7F0(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_27589F7F0(*(v0 + 80), *(v0 + 88), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_2758266EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2759B8F98();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_275826758(uint64_t a1, uint64_t a2)
{
  v4 = sub_2759B8F98();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2758267E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275826824()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275826888()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2758268D0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27582693C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12818, &qword_2759CF420);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_275826A14()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_275826A6C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_275826ABC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275826AF4()
{
  swift_unknownObjectRelease();

  sub_27585A900(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_275826B54()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275826BCC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275826C0C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275826C64(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_275826D20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F8D0, qword_2759C9FD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_275826DF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12900, &qword_2759CF888);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275826EB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2759B9368();
  *a1 = result & 1;
  return result;
}

uint64_t sub_275826F64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2759B93A8();
  *a1 = result;
  return result;
}

uint64_t sub_275826FBC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275827004@<X0>(uint64_t a1@<X8>)
{
  result = sub_2759B9388();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_275827068@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2759B92A8();
  *a1 = result;
  return result;
}

uint64_t sub_275827108()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27582714C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2759B8C48();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_27582727C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_2759B8C48();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FC48, &qword_2759C79C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_275827404(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2759B8C48();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2758274B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2759B8C48();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_275827554()
{
  v1 = (type metadata accessor for ObserveNotificationModifier(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v5 = v1[7];
  v6 = sub_2759B8C48();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_275827668()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2758276B0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_275827714(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12F10, &qword_2759D0E00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_275827784()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2758277BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12F08, &qword_2759D0DF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27582782C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27582786C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2758278AC()
{
  MEMORY[0x277C85960](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2758278E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_27582793C()
{
  v1 = sub_2759B8508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_275827A08()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275827A40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FE0, &unk_2759D1200);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_275827AD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A12FF8, qword_2759D1230);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_275827BA4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275827BDC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_275827C1C()
{
  v1 = sub_2759B8578();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_275827D1C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_275827D68(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_27582B420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void sub_27582CC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getHKHealthManageStorageViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!HealthUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __HealthUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27A6664D0;
    v6 = 0;
    HealthUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (HealthUILibraryCore_frameworkLibrary)
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
  result = objc_getClass("HKHealthManageStorageViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHKHealthManageStorageViewControllerClass_block_invoke_cold_1();
  }

  getHKHealthManageStorageViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __HealthUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  HealthUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_27582EFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  objc_destroyWeak((v18 + 64));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v19 - 72));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27582F448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getPSGBackupUtilsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPSGBackupUtilsClass_softClass;
  v7 = getPSGBackupUtilsClass_softClass;
  if (!getPSGBackupUtilsClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPSGBackupUtilsClass_block_invoke;
    v3[3] = &unk_27A6664B0;
    v3[4] = &v4;
    __getPSGBackupUtilsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2758323FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPSGBackupUtilsClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!GeneralSettingsUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __GeneralSettingsUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27A666648;
    v6 = 0;
    GeneralSettingsUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (GeneralSettingsUILibraryCore_frameworkLibrary)
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
  result = objc_getClass("PSGBackupUtils");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPSGBackupUtilsClass_block_invoke_cold_1();
  }

  getPSGBackupUtilsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __GeneralSettingsUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  GeneralSettingsUILibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_275834EC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_275835314(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_275835994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27583AA14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27583B140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27583CD30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_27583CF14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak(&a9);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_27583D0F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_27583D2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak(&a9);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getINDaemonConnectionClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!iCloudNotificationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __iCloudNotificationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27A666A18;
    v6 = 0;
    iCloudNotificationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (iCloudNotificationLibraryCore_frameworkLibrary)
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
  result = objc_getClass("INDaemonConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINDaemonConnectionClass_block_invoke_cold_1();
  }

  getINDaemonConnectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __iCloudNotificationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  iCloudNotificationLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_27583F180(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2758428F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2758434DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCKCloudSettingsViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!MessagesSettingsUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __MessagesSettingsUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27A666AB8;
    v6 = 0;
    MessagesSettingsUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (MessagesSettingsUILibraryCore_frameworkLibrary)
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
  result = objc_getClass("CKCloudSettingsViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKCloudSettingsViewControllerClass_block_invoke_cold_1();
  }

  getCKCloudSettingsViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MessagesSettingsUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  MessagesSettingsUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_275846B4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_275847CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getPSGBackupUtilsClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPSGBackupUtilsClass_softClass_0;
  v7 = getPSGBackupUtilsClass_softClass_0;
  if (!getPSGBackupUtilsClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPSGBackupUtilsClass_block_invoke_0;
    v3[3] = &unk_27A6664B0;
    v3[4] = &v4;
    __getPSGBackupUtilsClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_275848E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_275849CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27584A2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27584F454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPSGBackupUtilsClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!GeneralSettingsUILibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __GeneralSettingsUILibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27A666CF8;
    v6 = 0;
    GeneralSettingsUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (GeneralSettingsUILibraryCore_frameworkLibrary_0)
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
  result = objc_getClass("PSGBackupUtils");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPSGBackupUtilsClass_block_invoke_cold_1();
  }

  getPSGBackupUtilsClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __GeneralSettingsUILibraryCore_block_invoke_0(uint64_t a1)
{
  result = _sl_dlopen();
  GeneralSettingsUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getHKHealthStoreClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __HealthKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27A666D10;
    v6 = 0;
    HealthKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (HealthKitLibraryCore_frameworkLibrary)
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
  result = objc_getClass("HKHealthStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getHKHealthStoreClass_block_invoke_cold_1();
  }

  getHKHealthStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __HealthKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_275850A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_275851E24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 96));
  _Unwind_Resume(a1);
}

id LogSubsystem(uint64_t a1)
{
  if (LogSubsystem_onceToken != -1)
  {
    LogSubsystem_cold_1();
  }

  v2 = LogSubsystem_log;

  return v2;
}

uint64_t __LogSubsystem_block_invoke()
{
  LogSubsystem_log = os_log_create("com.apple.iCloudSettings", "core");

  return MEMORY[0x2821F96F8]();
}

void sub_275852814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 56));
  objc_destroyWeak(&a25);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_275857070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_275857590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_275857D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_275858930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_275858B9C(uint64_t a1, int a2)
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

uint64_t sub_275858BBC(uint64_t result, int a2, int a3)
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

uint64_t sub_275858C5C(char *a1, void *a2, uint64_t a3, char *a4)
{
  v39 = a4;
  v37 = a2;
  v38 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - v9;
  v11 = sub_2759B8508();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - v16;
  v36 = a1;

  sub_2759B84F8();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_27585A458(v10);
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v18 = sub_2759B89A8();
    __swift_project_value_buffer(v18, qword_280A238A0);
    v19 = sub_2759B8988();
    v20 = sub_2759BA648();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_275819000, v19, v20, "Unable to generate LiftUI data task without url", v21, 2u);
      MEMORY[0x277C85860](v21, -1, -1);
    }

    return 0;
  }

  else
  {
    v34 = *(v12 + 32);
    v35 = v17;
    v34(v17, v10, v11);
    v23 = sub_2759BA518();
    (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
    (*(v12 + 16))(v15, v17, v11);
    v24 = (*(v12 + 80) + 56) & ~*(v12 + 80);
    v25 = (v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = v36;
    v27 = swift_allocObject();
    *(v27 + 2) = 0;
    *(v27 + 3) = 0;
    v28 = v39;
    *(v27 + 4) = v38;
    *(v27 + 5) = v28;
    v39 = v7;
    *(v27 + 6) = v40;
    v34(&v27[v24], v15, v11);
    *&v27[v25] = v26;
    v29 = v37;
    *&v27[(v25 + 15) & 0xFFFFFFFFFFFFFFF8] = v37;
    swift_unknownObjectRetain();
    v30 = v26;
    v31 = v29;
    v32 = sub_27590A198(0, 0, v39, &unk_2759C0750, v27);
    (*(v12 + 8))(v35, v11);
    return v32;
  }
}

uint64_t sub_27585907C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v13;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  v8[2] = a1;
  v9 = sub_2759B8A28();
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();
  v10 = sub_2759B8248();
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2758591AC, 0, 0);
}

uint64_t sub_2758591AC()
{
  sub_2759B8A08();
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[5];
  (*(v3 + 104))(v1, *MEMORY[0x277D23198], v2);
  v5 = sub_27596AD54();
  (*(v3 + 8))(v1, v2, v5);
  v6 = *(v4 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category;
  v7 = *v6;
  v8 = *(v6 + 8);
  if (v8)
  {
    v9 = *v6;
    sub_27585A8D8(v7, *(v6 + 8));
    sub_27585A8EC(v9, v8);
    sub_27585A8EC(0, 0);
  }

  else
  {
    v10 = v0[6];
    sub_27585A8EC(v7, 0);
    sub_27585A8EC(0, 0);
    [v10 isEnabledForDataclass_];
    sub_2759B8238();
  }

  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_2758593F0;
  v12 = v0[14];
  v13 = v0[7];
  v14 = v0[8];

  return MEMORY[0x282182070](v12, v13, v14);
}

uint64_t sub_2758593F0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[16] = a1;
  v4[17] = a2;
  v4[18] = v2;

  if (v2)
  {
    v5 = sub_2758595F0;
  }

  else
  {
    v5 = sub_275859508;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_275859508()
{
  v1 = v0[18];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  sub_2759BA558();
  (*(v3 + 8))(v2, v4);
  if (v1)
  {
    sub_27585A900(v0[16], v0[17]);
  }

  else
  {
    *v0[2] = *(v0 + 8);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_2758595F0()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_275859678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_2759B8A28();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_2759B8248();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_275859798, 0, 0);
}

uint64_t sub_275859798()
{
  sub_2759B8A08();
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  (*(v3 + 104))(v1, *MEMORY[0x277D23198], v2);
  v4 = sub_27596AD54();
  (*(v3 + 8))(v1, v2, v4);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_275859900;
  v6 = v0[11];
  v7 = v0[4];
  v8 = v0[3];

  return MEMORY[0x282182070](v6, v8, v7);
}

uint64_t sub_275859900(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v7 = sub_275859AC0;
  }

  else
  {
    *(v6 + 112) = a2;
    *(v6 + 120) = a1;
    v7 = sub_275859A34;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_275859A34()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];
  v3 = v0[14];
  v2 = v0[15];

  return v1(v2, v3);
}

uint64_t sub_275859AC0()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_275859B54(uint64_t a1, id *a2)
{
  result = sub_2759BA278();
  *a2 = 0;
  return result;
}

uint64_t sub_275859BCC(uint64_t a1, id *a2)
{
  v3 = sub_2759BA288();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_275859C4C@<X0>(uint64_t *a2@<X8>)
{
  sub_2759BA298();
  v3 = sub_2759BA258();

  *a2 = v3;
  return result;
}

uint64_t sub_275859C90(uint64_t a1)
{
  v2 = sub_27585A010(&qword_280A0E4F0, type metadata accessor for Dataclass, &unk_2759C045C);
  v3 = sub_27585A010(&qword_280A0E4F8, type metadata accessor for Dataclass, &unk_2759C0404);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_275859D4C(uint64_t a1)
{
  v2 = sub_27585A010(&qword_280A0E480, type metadata accessor for CALayerContentsGravity, &unk_2759C05B8);
  v3 = sub_27585A010(&qword_280A0E488, type metadata accessor for CALayerContentsGravity, &unk_2759C0558);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_275859E08(uint64_t a1)
{
  v2 = sub_27585A010(&qword_280A0E5C0, type metadata accessor for Key, &unk_2759C0C98);
  v3 = sub_27585A010(&qword_280A0E5C8, type metadata accessor for Key, &unk_2759C0A84);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_275859EC4(uint64_t a1)
{
  v2 = sub_27585A010(&qword_280A0E500, type metadata accessor for AIDAServiceType, &unk_2759C06F0);
  v3 = sub_27585A010(&qword_280A0E508, type metadata accessor for AIDAServiceType, &unk_2759C0304);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_27585A010(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27585A208(uint64_t a1)
{
  v2 = sub_27585A010(&qword_280A0E5B0, type metadata accessor for NSFileProviderItemIdentifier, &unk_2759C0C08);
  v3 = sub_27585A010(&qword_280A0E5B8, type metadata accessor for NSFileProviderItemIdentifier, &unk_2759C0BA8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_27585A2C4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2759BA258();

  *a2 = v3;
  return result;
}

uint64_t sub_27585A30C(uint64_t a1)
{
  v2 = sub_27585A010(&qword_280A0E5D0, type metadata accessor for URLResourceKey, &unk_2759C098C);
  v3 = sub_27585A010(&qword_280A0E5D8, type metadata accessor for URLResourceKey, &unk_2759C092C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
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

uint64_t sub_27585A458(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_27585A4F8()
{
  v0 = sub_2759BA298();
  v1 = MEMORY[0x277C84110](v0);

  return v1;
}

uint64_t sub_27585A534(uint64_t a1)
{
  sub_2759BA298();
  sub_2759BA328();
}

uint64_t sub_27585A588(uint64_t a1)
{
  sub_2759BA298();
  sub_2759BABD8();
  sub_2759BA328();
  v1 = sub_2759BAC08();

  return v1;
}

uint64_t sub_27585A5FC(void *a1, uint64_t *a2)
{
  v2 = sub_2759BA298();
  v4 = v3;
  if (v2 == sub_2759BA298() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2759BAAC8();
  }

  return v7 & 1;
}

uint64_t sub_27585A684(uint64_t a1)
{
  v3 = v2;
  v16 = v1[4];
  v5 = *(sub_2759B8508() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_27585A7E4;

  return sub_27585907C(a1, v8, v9, v10, v1 + v6, v11, v12, v16);
}

uint64_t sub_27585A7E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_27585A8D8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_27585A8EC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_27585A900(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_27585A99C(uint64_t a1, int a2)
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

uint64_t sub_27585A9BC(uint64_t result, int a2, int a3)
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

void sub_27585ACF8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t type metadata accessor for IfMessagesIsInExitStateView(uint64_t a1)
{
  result = qword_280A0E6B8;
  if (!qword_280A0E6B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27585AE04(uint64_t a1)
{
  sub_27585AF10(319, &qword_280A0E6C8, MEMORY[0x277D232D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_27585AF10(319, &qword_280A0E6D0, MEMORY[0x277D231A8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_27585AF74(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_27585AF10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_27585AF74(uint64_t a1)
{
  if (!qword_280A0E6D8)
  {
    sub_2759B8C08();
    sub_27585BFE4(&qword_280A0E6E0, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
    v1 = sub_2759B9178();
    if (!v2)
    {
      atomic_store(v1, &qword_280A0E6D8);
    }
  }
}

id sub_27585B008()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E710, &qword_2759C0E60);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - v2;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v5 = result;
    v6 = [result isInExitState];

    v7 = type metadata accessor for IfMessagesIsInExitStateView(0);
    v8 = 28;
    if (v6)
    {
      v8 = 24;
    }

    sub_27585BD94(v0 + *(v7 + v8), v3);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
    sub_27585BE04();
    return sub_2759B95E8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_27585B140(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1852139636;
  if (v2 != 1)
  {
    v3 = 1702063205;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 25705;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE200000000000000;
  }

  v6 = 1852139636;
  if (*a2 != 1)
  {
    v6 = 1702063205;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 25705;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE200000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2759BAAC8();
  }

  return v9 & 1;
}

uint64_t sub_27585B21C()
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27585B2A4(uint64_t a1)
{
  sub_2759BA328();
}

uint64_t sub_27585B318(uint64_t a1)
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

unint64_t sub_27585B39C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_27585C4B0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_27585B3CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 1852139636;
  if (v2 != 1)
  {
    v4 = 1702063205;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 25705;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_27585B410()
{
  v1 = 1852139636;
  if (*v0 != 1)
  {
    v1 = 1702063205;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

unint64_t sub_27585B450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27585C4B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27585B490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27585BF44(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_27585B4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27585BF44(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_27585B508@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v39 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v40 = &v33 - v7;
  v42 = sub_2759B85A8();
  v38 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E728, &qword_2759C0E68);
  v43 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = type metadata accessor for IfMessagesIsInExitStateView(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v15 + 2) = MEMORY[0x277D84F90];
  v16 = &v15[*(v13 + 32)];
  sub_2759B8C08();
  sub_27585BFE4(&qword_280A0E6E0, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  v44 = sub_2759B9168();
  *v16 = v44;
  v16[1] = v17;
  v18 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27585BF44(v18, v19, v20);
  sub_2759BAC18();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v35 = v15;
    v36 = a1;
    v22 = v41;
    v21 = v42;
    v47 = 0;
    v23 = sub_2759BAA58();
    v26 = v24;
    v34 = v11;
    if (!v24)
    {
      sub_2759B8598();
      v27 = sub_2759B8588();
      v26 = v28;
      (*(v38 + 8))(v22, v21);
      v23 = v27;
    }

    v29 = v35;
    *v35 = v23;
    *(v29 + 8) = v26;
    v42 = v26;
    sub_2759B8A38();
    v46 = 1;
    sub_27585BFE4(&qword_280A0E738, MEMORY[0x277D231A8], MEMORY[0x277D231B0]);
    v30 = v40;
    v31 = v34;
    sub_2759BAA68();
    sub_27585C094(v30, v29 + *(v12 + 24));
    v45 = 2;
    v32 = v39;
    sub_2759BAA68();
    (*(v43 + 8))(v31, v9);
    sub_27585C094(v32, v29 + *(v12 + 28));
    sub_27585C104(v29, v37);
    __swift_destroy_boxed_opaque_existential_1(v36);
    return sub_27585C168(v29);
  }
}

uint64_t sub_27585B9E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_27585BFE4(&qword_280A0E6E8, type metadata accessor for IfMessagesIsInExitStateView, &unk_2759C0E14);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_27585BA68(uint64_t a1, uint64_t a2)
{
  v4 = sub_27585BFE4(&qword_280A0E6F0, type metadata accessor for IfMessagesIsInExitStateView, &unk_2759C0DC4);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_27585BAE4(uint64_t a1)
{
  v2 = sub_27585BFE4(&qword_280A0E6F0, type metadata accessor for IfMessagesIsInExitStateView, &unk_2759C0DC4);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_27585BB60(uint64_t a1, uint64_t a2)
{
  v4 = sub_27585BFE4(&qword_280A0E708, type metadata accessor for IfMessagesIsInExitStateView, &unk_2759C0D8C);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_27585BC00()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_27585BC4C(uint64_t a1, uint64_t a2)
{
  sub_27585BFE4(&qword_280A0E6E8, type metadata accessor for IfMessagesIsInExitStateView, &unk_2759C0E14);
  sub_27585BFE4(&qword_280A0E6F0, type metadata accessor for IfMessagesIsInExitStateView, &unk_2759C0DC4);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_27585BD94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_27585BE04()
{
  result = qword_280A0E718;
  if (!qword_280A0E718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E6B0, &qword_2759C0D00);
    sub_27585BFE4(&qword_280A0E720, MEMORY[0x277D231A8], MEMORY[0x277D231A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E718);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_27585BF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0E730;
  if (!qword_280A0E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E730);
  }

  return result;
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

uint64_t sub_27585BFE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27585C02C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27585C094(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27585C104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IfMessagesIsInExitStateView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27585C168(uint64_t a1)
{
  v2 = type metadata accessor for IfMessagesIsInExitStateView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for IfMessagesIsInExitStateView.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IfMessagesIsInExitStateView.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_27585C324()
{
  result = qword_280A0E740;
  if (!qword_280A0E740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E748, &qword_2759C0E80);
    sub_27585BE04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E740);
  }

  return result;
}

unint64_t sub_27585C3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0E750;
  if (!qword_280A0E750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E750);
  }

  return result;
}

unint64_t sub_27585C404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0E758;
  if (!qword_280A0E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E758);
  }

  return result;
}

unint64_t sub_27585C45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0E760;
  if (!qword_280A0E760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E760);
  }

  return result;
}

unint64_t sub_27585C4B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_2759BAA48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_27585C588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0E768;
  if (!qword_280A0E768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E768);
  }

  return result;
}

unint64_t sub_27585C648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0E770;
  if (!qword_280A0E770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E770);
  }

  return result;
}

unint64_t sub_27585C728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0E778;
  if (!qword_280A0E778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E778);
  }

  return result;
}

uint64_t sub_27585C7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_2759B9A88();
}

uint64_t sub_27585C838(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_2759B93E8();
  return v3;
}

void *keypath_getTm@<X0>(uint64_t (*a1)(void)@<X3>, void *a3@<X8>)
{
  a1();
  result = sub_2759B93E8();
  *a3 = v5;
  return result;
}

uint64_t sub_27585C91C(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v6 = *a1;
  a5();
  v7 = v6;
  return sub_2759B93F8();
}

unint64_t sub_27585C97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0E780;
  if (!qword_280A0E780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E780);
  }

  return result;
}

uint64_t sub_27585CA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_27585D258();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_27585CAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_27585D1B8();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_27585CB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_27585D118();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_27585CB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_27585D02C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.appsListViewModel.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  a1[2] = v3;
  a1[3] = sub_27585C588(a1, a2, a3);
  sub_2759B93E8();
  return sub_27585CC48;
}

void (*EnvironmentValues.appViewModel.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  a1[2] = v3;
  a1[3] = sub_27585C648(a1, a2, a3);
  sub_2759B93E8();
  return sub_27585CCB4;
}

void (*EnvironmentValues.homeViewModel.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  a1[2] = v3;
  a1[3] = sub_27585C728(a1, a2, a3);
  sub_2759B93E8();
  return sub_27585CD20;
}

void (*EnvironmentValues.msDrilldownPresentingController.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  a1[2] = v3;
  a1[3] = sub_27585C97C(a1, a2, a3);
  sub_2759B93E8();
  return sub_27585CD8C;
}

void sub_27585CD98(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *a1;
  *(a1 + 8) = *a1;
  if (a2)
  {
    v5 = v3;
    sub_2759B93F8();
    v6 = *a1;
  }

  else
  {
    sub_2759B93F8();
  }
}

uint64_t getEnumTagSinglePayload for MessagesDaysUntilDeleteTextView.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MessagesDaysUntilDeleteTextView.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy14iCloudSettings021ManageStorageAppsListC5ModelCSgGGAaBHPxAaBHD1__AkA0cI0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_2759B90A8();
  sub_27585CFD8(a4, a2, a3);
  return swift_getWitnessTable();
}

uint64_t sub_27585CFD8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_27585D02C()
{
  result = qword_280A0E7C8;
  if (!qword_280A0E7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E7D0, &qword_2759C1228);
    sub_27585D2F8(&qword_280A0E7D8, sub_27585D0CC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E7C8);
  }

  return result;
}

unint64_t sub_27585D0CC()
{
  result = qword_280A0E7E0;
  if (!qword_280A0E7E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A0E7E0);
  }

  return result;
}

unint64_t sub_27585D118()
{
  result = qword_280A0E7E8;
  if (!qword_280A0E7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E7F0, &unk_2759C1230);
    sub_27585D2F8(&qword_280A0E7F8, type metadata accessor for iCloudHomeViewModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E7E8);
  }

  return result;
}

unint64_t sub_27585D1B8()
{
  result = qword_280A0E800;
  if (!qword_280A0E800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E808, &qword_2759CC1E0);
    sub_27585D2F8(&qword_280A0E810, type metadata accessor for ManageStorageAppViewModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E800);
  }

  return result;
}

unint64_t sub_27585D258()
{
  result = qword_280A10080;
  if (!qword_280A10080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280A11C70, qword_2759C1240);
    sub_27585D2F8(&unk_280A11C80, type metadata accessor for ManageStorageAppsListViewModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10080);
  }

  return result;
}

uint64_t sub_27585D2F8(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t type metadata accessor for IfMessagesEligibleView(uint64_t a1)
{
  result = qword_280A0E818;
  if (!qword_280A0E818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_27585D3C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E710, &qword_2759C0E60);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - v2;
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v5 = result;
    v6 = [result eligibleForTruthZone];

    v7 = type metadata accessor for IfMessagesEligibleView(0);
    v8 = 28;
    if (v6)
    {
      v8 = 24;
    }

    sub_27585BD94(v0 + *(v7 + v8), v3);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
    sub_27585BE04();
    return sub_2759B95E8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_27585D500@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_27585E0A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_27585D530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27585E0A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27585D558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27585DE2C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_27585D594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27585DE2C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_27585D5D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v39 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v40 = &v33 - v7;
  v42 = sub_2759B85A8();
  v38 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E850, &qword_2759C13A0);
  v43 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = type metadata accessor for IfMessagesEligibleView(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v15 + 2) = MEMORY[0x277D84F90];
  v16 = &v15[*(v13 + 32)];
  sub_2759B8C08();
  sub_27585DE80(&qword_280A0E6E0, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  v44 = sub_2759B9168();
  *v16 = v44;
  v16[1] = v17;
  v18 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27585DE2C(v18, v19, v20);
  sub_2759BAC18();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v35 = v15;
    v36 = a1;
    v22 = v41;
    v21 = v42;
    v47 = 0;
    v23 = sub_2759BAA58();
    v26 = v24;
    v34 = v11;
    if (!v24)
    {
      sub_2759B8598();
      v27 = sub_2759B8588();
      v26 = v28;
      (*(v38 + 8))(v22, v21);
      v23 = v27;
    }

    v29 = v35;
    *v35 = v23;
    *(v29 + 8) = v26;
    v42 = v26;
    sub_2759B8A38();
    v46 = 1;
    sub_27585DE80(&qword_280A0E738, MEMORY[0x277D231A8], MEMORY[0x277D231B0]);
    v30 = v40;
    v31 = v34;
    sub_2759BAA68();
    sub_27585C094(v30, v29 + *(v12 + 24));
    v45 = 2;
    v32 = v39;
    sub_2759BAA68();
    (*(v43 + 8))(v31, v9);
    sub_27585C094(v32, v29 + *(v12 + 28));
    sub_27585DEC8(v29, v37);
    __swift_destroy_boxed_opaque_existential_1(v36);
    return sub_27585DF2C(v29);
  }
}

uint64_t sub_27585DAAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_27585DE80(&qword_280A0E828, type metadata accessor for IfMessagesEligibleView, &unk_2759C1350);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_27585DB30(uint64_t a1, uint64_t a2)
{
  v4 = sub_27585DE80(&qword_280A0E830, type metadata accessor for IfMessagesEligibleView, &unk_2759C1300);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_27585DBAC(uint64_t a1)
{
  v2 = sub_27585DE80(&qword_280A0E830, type metadata accessor for IfMessagesEligibleView, &unk_2759C1300);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_27585DC28(uint64_t a1, uint64_t a2)
{
  v4 = sub_27585DE80(&qword_280A0E848, type metadata accessor for IfMessagesEligibleView, &unk_2759C12C8);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_27585DCE4(uint64_t a1, uint64_t a2)
{
  sub_27585DE80(&qword_280A0E828, type metadata accessor for IfMessagesEligibleView, &unk_2759C1350);
  sub_27585DE80(&qword_280A0E830, type metadata accessor for IfMessagesEligibleView, &unk_2759C1300);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_27585DE2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0E858;
  if (!qword_280A0E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E858);
  }

  return result;
}

uint64_t sub_27585DE80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27585DEC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IfMessagesEligibleView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27585DF2C(uint64_t a1)
{
  v2 = type metadata accessor for IfMessagesEligibleView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27585DF9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0E860;
  if (!qword_280A0E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E860);
  }

  return result;
}

unint64_t sub_27585DFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0E868;
  if (!qword_280A0E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E868);
  }

  return result;
}

unint64_t sub_27585E04C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0E870;
  if (!qword_280A0E870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E870);
  }

  return result;
}

unint64_t sub_27585E0A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_2759BAA48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_27585E0EC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6449656C646E7562;
  }

  else
  {
    v3 = 0x6E6F69746361;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6449656C646E7562;
  }

  else
  {
    v5 = 0x6E6F69746361;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2759BAAC8();
  }

  return v8 & 1;
}

uint64_t sub_27585E190()
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27585E210(uint64_t a1)
{
  sub_2759BA328();
}

uint64_t sub_27585E27C(uint64_t a1)
{
  sub_2759BABD8();
  sub_2759BA328();

  return sub_2759BAC08();
}

uint64_t sub_27585E2F8@<X0>(char *a2@<X8>)
{
  v3 = sub_2759BAA48();

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

void sub_27585E358(uint64_t *a1@<X8>)
{
  v2 = 0x6E6F69746361;
  if (*v1)
  {
    v2 = 0x6449656C646E7562;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_27585E394()
{
  if (*v0)
  {
    return 0x6449656C646E7562;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

uint64_t sub_27585E3CC@<X0>(char *a3@<X8>)
{
  v4 = sub_2759BAA48();

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

uint64_t sub_27585E43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27585F3D4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_27585E478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27585F3D4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_27585E4B4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v29 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v32 = v28 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8B0, &qword_2759C1640);
  v35 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v9 = v28 - v8;
  v10 = OBJC_IVAR____TtC14iCloudSettings37ManageStorageDrilldownAnalyticsAction_action;
  v11 = sub_2759B8C48();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v33 = v10;
  v13(v2 + v10, 1, 1, v11);
  v34 = OBJC_IVAR____TtC14iCloudSettings37ManageStorageDrilldownAnalyticsAction_bundleId;
  v13(v2 + OBJC_IVAR____TtC14iCloudSettings37ManageStorageDrilldownAnalyticsAction_bundleId, 1, 1, v11);
  v15 = (v2 + OBJC_IVAR____TtC14iCloudSettings37ManageStorageDrilldownAnalyticsAction_telemetryProvider);
  v15[3] = &type metadata for TelemetryProvider;
  v15[4] = &off_288481108;
  *v15 = sub_27594A594;
  v15[1] = 0;
  v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27585F3D4(v16, v17, v18);
  v30 = v9;
  v19 = v37;
  sub_2759BAC18();
  if (v19)
  {
  }

  else
  {
    v28[0] = a1;
    v28[1] = v14;
    v37 = v13;
    v20 = v29;
    v36 = 0;
    sub_27585F428(&qword_280A0E8C0, MEMORY[0x277D23340], MEMORY[0x277D23348]);
    v21 = v31;
    v22 = v32;
    v23 = v30;
    sub_2759BAA68();
    v24 = v22;
    v25 = v33;
    swift_beginAccess();
    sub_27585F470(v24, v2 + v25);
    swift_endAccess();
    v36 = 1;
    sub_2759BAA68();
    (*(v35 + 8))(v23, v21);
    a1 = v28[0];
    v26 = v34;
    swift_beginAccess();
    sub_27585F470(v20, v2 + v26);
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_27585E8C4()
{
  sub_27585F4E0(v0 + OBJC_IVAR____TtC14iCloudSettings37ManageStorageDrilldownAnalyticsAction_action);
  sub_27585F4E0(v0 + OBJC_IVAR____TtC14iCloudSettings37ManageStorageDrilldownAnalyticsAction_bundleId);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC14iCloudSettings37ManageStorageDrilldownAnalyticsAction_telemetryProvider));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ManageStorageDrilldownAnalyticsAction(uint64_t a1)
{
  result = qword_280A0E878;
  if (!qword_280A0E878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27585E99C(uint64_t a1)
{
  sub_27585EA38(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_27585EA38(uint64_t a1)
{
  if (!qword_280A0E888)
  {
    sub_2759B8C48();
    v1 = sub_2759BA7D8();
    if (!v2)
    {
      atomic_store(v1, &qword_280A0E888);
    }
  }
}

uint64_t sub_27585EA90(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27585F7A0;

  return MEMORY[0x2821820D8](a1, a2);
}

uint64_t sub_27585EB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_27585F7A0;

  return MEMORY[0x2821820C8](a1, a2, a3);
}

uint64_t sub_27585EBE8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_27585A7E4;

  return sub_27585EEF0(a1);
}

uint64_t sub_27585EE08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_27585E4B4(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_27585EEF0(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_2759B8C48();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27585EFBC, 0, 0);
}

uint64_t sub_27585EFBC()
{
  v35 = v0;
  if (qword_280A0E360 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_280A23900);
  v2 = sub_2759B8988();
  v3 = sub_2759BA638();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "ManageStorageDrilldownAnalyticsAction performing action", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  v5 = 0x676E697373696DLL;
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[9];

  v9 = OBJC_IVAR____TtC14iCloudSettings37ManageStorageDrilldownAnalyticsAction_action;
  swift_beginAccess();
  v10 = *(v7 + 48);
  if (v10(v8 + v9, 1, v6))
  {
    v11 = 0xE700000000000000;
    v12 = 0x676E697373696DLL;
  }

  else
  {
    v13 = v0[11];
    (*(v13 + 16))(v0[13], v8 + v9, v0[10]);
    v14 = sub_2759B8C38();
    v11 = v15;
    v12 = 0x676E697373696DLL;
    v5 = v14;
    (*(v13 + 8))(v0[13], v0[10]);
  }

  v17 = v0[9];
  v16 = v0[10];
  v18 = OBJC_IVAR____TtC14iCloudSettings37ManageStorageDrilldownAnalyticsAction_bundleId;
  swift_beginAccess();
  if (v10(v17 + v18, 1, v16))
  {
    v19 = 0xE700000000000000;
    v20 = v5;
  }

  else
  {
    v21 = v0[11];
    (*(v21 + 16))(v0[12], v17 + v18, v0[10]);
    v22 = sub_2759B8C38();
    v19 = v23;
    v12 = v22;
    v20 = v5;
    (*(v21 + 8))(v0[12], v0[10]);
  }

  v24 = v12;

  v25 = sub_2759B8988();
  v26 = sub_2759BA638();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v34[0] = v28;
    *v27 = 136315394;
    *(v27 + 4) = sub_2758937B8(v20, v11, v34);
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_2758937B8(v24, v19, v34);
    _os_log_impl(&dword_275819000, v25, v26, "Resolved values action: %s bundleId: %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v28, -1, -1);
    MEMORY[0x277C85860](v27, -1, -1);
  }

  v29 = v0[9];
  v30 = sub_275908FC8(v20, v11);
  v31 = __swift_project_boxed_opaque_existential_1((v29 + OBJC_IVAR____TtC14iCloudSettings37ManageStorageDrilldownAnalyticsAction_telemetryProvider), *(v29 + OBJC_IVAR____TtC14iCloudSettings37ManageStorageDrilldownAnalyticsAction_telemetryProvider + 24));
  sub_2759516F4(v30, v24, v19, *v31);

  v32 = v0[1];

  return v32();
}

unint64_t sub_27585F3D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0E8B8;
  if (!qword_280A0E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E8B8);
  }

  return result;
}

uint64_t sub_27585F428(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27585F470(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_27585F4E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E8A8, qword_2759C2120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ManageStorageDrilldownAnalyticsAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ManageStorageDrilldownAnalyticsAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_27585F69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0E8C8;
  if (!qword_280A0E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E8C8);
  }

  return result;
}

unint64_t sub_27585F6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0E8D0;
  if (!qword_280A0E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E8D0);
  }

  return result;
}

unint64_t sub_27585F74C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280A0E8D8;
  if (!qword_280A0E8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E8D8);
  }

  return result;
}

void sub_27585F7A4(void *a1)
{
  v3 = v1;
  MEMORY[0x277C84160]();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2759BA3F8();
  }

  sub_2759BA418();
  v4 = [v3 mask];
  if (v4)
  {
    v5 = v4;
    sub_27585F7A4(a1);
  }

  v6 = [v3 sublayers];
  if (v6)
  {
    v7 = v6;
    sub_275861AF8(0, &qword_280A0E8E0, 0x277CD9ED0);
    v8 = sub_2759BA3E8();

    if (v8 >> 62)
    {
      v9 = sub_2759BA9E8();
      if (v9)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
LABEL_8:
        if (v9 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v9; ++i)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x277C846A0](i, v8);
          }

          else
          {
            v11 = *(v8 + 8 * i + 32);
          }

          v12 = v11;
          sub_27585F7A4(a1);
        }
      }
    }
  }
}

unint64_t sub_27585F94C()
{
  v0 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  sub_27585F7A4(&v22);
  v1 = v22;
  v22 = v0;
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2759BA9E8())
  {
    v3 = 0;
    v21 = v1 & 0xC000000000000001;
    v17 = v1 + 32;
    v18 = v1 & 0xFFFFFFFFFFFFFF8;
    v4 = MEMORY[0x277D84F90];
    v19 = i;
    v20 = v1;
    while (1)
    {
      if (v21)
      {
        v5 = MEMORY[0x277C846A0](v3, v1);
      }

      else
      {
        if (v3 >= *(v18 + 16))
        {
          goto LABEL_20;
        }

        v5 = *(v17 + 8 * v3);
      }

      v6 = v5;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      v8 = [v5 animationKeys];
      if (v8)
      {
        v9 = v8;
        v10 = sub_2759BA3E8();

        v11 = *(v10 + 16);
        if (v11)
        {
          v12 = v10 + 40;
          do
          {

            v13 = sub_2759BA258();

            v14 = [v6 animationForKey_];

            if (v14)
            {
              v15 = v14;
              MEMORY[0x277C84160]();
              if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_2759BA3F8();
              }

              sub_2759BA418();

              v4 = v22;
            }

            v12 += 16;
            --v11;
          }

          while (v11);
        }

        i = v19;
        v1 = v20;
      }

      if (v3 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_23:

  return v4;
}

void sub_27585FB70(void *a1, char a2, char a3)
{
  v4 = v3;
  v8 = [v3 superlayer];
  if (!v8)
  {
    return;
  }

  v9 = v8;
  [v8 bounds];
  v11 = v10;
  v13 = v12;
  [v3 bounds];
  if (v15 >= 0.00001)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0.00001;
  }

  if (v14 >= 0.00001)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0.00001;
  }

  if (v13 >= 0.00001)
  {
    v18 = v13;
  }

  else
  {
    v18 = 0.00001;
  }

  if (v11 >= 0.00001)
  {
    v19 = v11;
  }

  else
  {
    v19 = 0.00001;
  }

  v20 = *MEMORY[0x277CDA748];
  if (a2)
  {
    v21 = sub_2759BA298();
    v23 = v22;
    if (v21 == sub_2759BA298() && v23 == v24)
    {
    }

    else
    {
      v26 = sub_2759BAAC8();

      if ((v26 & 1) == 0)
      {
        v27 = *MEMORY[0x277CDA740];
        v28 = sub_2759BA298();
        v30 = v29;
        if (v28 == sub_2759BA298() && v30 == v31)
        {
        }

        else
        {
          v49 = sub_2759BAAC8();

          if ((v49 & 1) == 0)
          {
            v55 = *MEMORY[0x277CDA760];
            v56 = sub_2759BA298();
            v58 = v57;
            if (v56 == sub_2759BA298() && v58 == v59)
            {
            }

            else
            {
              v64 = sub_2759BAAC8();

              if ((v64 & 1) == 0)
              {
                v66 = sub_2759BA298();
                v68 = v67;
                if (v66 == sub_2759BA298() && v68 == v69)
                {

                  v32 = v20;
                }

                else
                {
                  v123 = sub_2759BAAC8();

                  v32 = v20;
                  if ((v123 & 1) == 0)
                  {
                    v32 = v27;
                    v74 = sub_2759BA298();
                    v76 = v75;
                    if (v74 == sub_2759BA298() && v76 == v77)
                    {
                    }

                    else
                    {
                      v79 = sub_2759BAAC8();

                      if ((v79 & 1) == 0)
                      {
                        v80 = sub_2759BA298();
                        v82 = v81;
                        if (v80 == sub_2759BA298() && v82 == v83)
                        {

                          v32 = v55;
                        }

                        else
                        {
                          v89 = sub_2759BAAC8();

                          if (v89)
                          {
                            v32 = v55;
                          }

                          else
                          {
                            v32 = a1;
                          }
                        }
                      }
                    }
                  }
                }

                goto LABEL_27;
              }
            }

            v33 = MEMORY[0x277CDA6D0];
            goto LABEL_26;
          }
        }

        v33 = MEMORY[0x277CDA6B0];
LABEL_26:
        v32 = *v33;
        goto LABEL_27;
      }
    }

    v33 = MEMORY[0x277CDA6B8];
    goto LABEL_26;
  }

  v32 = a1;
LABEL_27:
  v34 = v32;
  v35 = sub_2759BA298();
  v37 = v36;
  if (v35 == sub_2759BA298() && v37 == v38)
  {
    goto LABEL_66;
  }

  v40 = sub_2759BAAC8();

  if ((v40 & 1) == 0)
  {
    v41 = sub_2759BA298();
    v43 = v42;
    if (v41 == sub_2759BA298() && v43 == v44)
    {
LABEL_66:

      goto LABEL_37;
    }

    v45 = sub_2759BAAC8();

    if ((v45 & 1) == 0)
    {
      v50 = sub_2759BA298();
      v52 = v51;
      if (v50 == sub_2759BA298() && v52 == v53)
      {
        goto LABEL_66;
      }

      v54 = sub_2759BAAC8();

      if (v54)
      {
        goto LABEL_37;
      }

      v60 = sub_2759BA298();
      v62 = v61;
      if (v60 == sub_2759BA298() && v62 == v63)
      {
        goto LABEL_66;
      }

      v65 = sub_2759BAAC8();

      if (v65)
      {
        goto LABEL_37;
      }

      v70 = sub_2759BA298();
      v72 = v71;
      if (v70 == sub_2759BA298() && v72 == v73)
      {
        goto LABEL_66;
      }

      v78 = sub_2759BAAC8();

      if (v78)
      {
        goto LABEL_37;
      }

      v84 = sub_2759BA298();
      v86 = v85;
      if (v84 == sub_2759BA298() && v86 == v87)
      {
        goto LABEL_66;
      }

      v88 = sub_2759BAAC8();

      if (v88)
      {
        goto LABEL_37;
      }

      v90 = sub_2759BA298();
      v92 = v91;
      if (v90 == sub_2759BA298() && v92 == v93)
      {
        goto LABEL_66;
      }

      v94 = sub_2759BAAC8();

      v46 = 1.0;
      if (v94)
      {
        goto LABEL_38;
      }

      v95 = sub_2759BA298();
      v97 = v96;
      if (v95 == sub_2759BA298() && v97 == v98)
      {
        goto LABEL_89;
      }

      v99 = sub_2759BAAC8();

      if (v99)
      {
        goto LABEL_38;
      }

      v100 = sub_2759BA298();
      v102 = v101;
      if (v100 == sub_2759BA298() && v102 == v103)
      {
LABEL_89:

        goto LABEL_38;
      }

      v104 = sub_2759BAAC8();

      if (v104)
      {
        goto LABEL_38;
      }

      v105 = sub_2759BA298();
      v107 = v106;
      if (v105 == sub_2759BA298() && v107 == v108)
      {

LABEL_98:
        v47 = v19 / v17;
        v46 = v18 / v16;
        goto LABEL_39;
      }

      v109 = sub_2759BAAC8();

      if (v109)
      {
        goto LABEL_98;
      }

      v110 = sub_2759BA298();
      v112 = v111;
      if (v110 == sub_2759BA298() && v112 == v113)
      {
      }

      else
      {
        v114 = sub_2759BAAC8();

        if ((v114 & 1) == 0)
        {
          v117 = sub_2759BA298();
          v119 = v118;
          if (v117 == sub_2759BA298() && v119 == v120)
          {
          }

          else
          {
            v121 = sub_2759BAAC8();

            if ((v121 & 1) == 0)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E910, &qword_2759C17B8);
              v122 = swift_allocObject();
              *(v122 + 16) = xmmword_2759C17A0;
              v124.m11 = 0.0;
              v124.m12 = -2.68156159e154;
              sub_2759BA8C8();
              MEMORY[0x277C840E0](0xD000000000000011, 0x80000002759DD340);
              v125[0] = v34;
              type metadata accessor for CALayerContentsGravity(0);
              sub_2759BA9C8();
              *(v122 + 56) = MEMORY[0x277D837D0];
              *(v122 + 32) = 0;
              *(v122 + 40) = 0xE000000000000000;
              sub_2759BABC8();

              goto LABEL_38;
            }
          }

          v46 = v19 / v17;
          v115 = v18 / v16;
          if (v18 / v16 >= v19 / v17)
          {
            goto LABEL_104;
          }

          goto LABEL_110;
        }
      }

      v46 = v19 / v17;
      v115 = v18 / v16;
      if (v19 / v17 > v18 / v16)
      {
LABEL_104:
        if ((*&v115 & 0xFFFFFFFFFFFFFLL) != 0)
        {
          v116 = v46;
        }

        else
        {
          v116 = v115;
        }

        if ((~*&v115 & 0x7FF0000000000000) != 0)
        {
          v46 = v115;
        }

        else
        {
          v46 = v116;
        }
      }

LABEL_110:
      v47 = v46;
      goto LABEL_39;
    }
  }

LABEL_37:
  v46 = 1.0;
LABEL_38:
  v47 = 1.0;
LABEL_39:
  if ((a3 & 1) == 0)
  {
    v48 = objc_opt_self();
    [v48 begin];
    [v48 setDisableActions_];
  }

  CATransform3DMakeScale(&v124, v47, v46, 1.0);
  [v4 setTransform_];
  [v4 frame];
  [v4 frame];
  CGPointMake();
  [v4 setFrame_];
  if ((a3 & 1) == 0)
  {
    [objc_opt_self() commit];
  }
}

void sub_2758607AC()
{
  v1 = v0;
  v2 = [objc_allocWithZone(swift_getObjCClassFromObject()) initWithLayer_];
  v3 = [v0 sublayers];
  if (v3)
  {
    v4 = v3;
    sub_275861AF8(0, &qword_280A0E8E0, 0x277CD9ED0);
    v5 = sub_2759BA3E8();

    if (v5 >> 62)
    {
      v6 = sub_2759BA9E8();
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_4:
        if (v6 < 1)
        {
LABEL_59:
          __break(1u);
          return;
        }

        v7 = 0;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x277C846A0](v7, v5);
          }

          else
          {
            v8 = *(v5 + 8 * v7 + 32);
          }

          v9 = v8;
          ++v7;
          sub_2758607AC();
          v11 = v10;
          [v2 addSublayer_];
        }

        while (v6 != v7);
      }
    }
  }

  v12 = [v1 mask];
  if (v12)
  {
    v13 = v12;
    sub_2758607AC();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  [v2 setMask_];

  v16 = sub_275860DBC();
  v17 = v16;
  v18 = 0;
  v19 = v16 + 56;
  v20 = 1 << *(v16 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v16 + 56);
  v23 = (v20 + 63) >> 6;
  while (v22)
  {
LABEL_23:
    v25 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v26 = (*(v17 + 48) + ((v18 << 10) | (16 * v25)));
    v28 = *v26;
    v27 = v26[1];
    v29 = *v26 == 0x726579616C627573 && v27 == 0xE900000000000073;
    if (!v29 && (sub_2759BAAC8() & 1) == 0)
    {
      v30 = v28 == 1802723693 && v27 == 0xE400000000000000;
      if (!v30 && (sub_2759BAAC8() & 1) == 0)
      {

        v31 = sub_2759BA258();
        LODWORD(v48) = [v1 shouldArchiveValueForKey_];

        if (v48)
        {
          v48 = sub_2759BA258();
          v32 = [v1 valueForKey_];

          if (v32)
          {
            sub_2759BA818();
            swift_unknownObjectRelease();
          }

          else
          {
            v49 = 0u;
            v50 = 0u;
          }

          v51[0] = v49;
          v51[1] = v50;
          sub_275860F74(v51, &v49);
          v33 = *(&v50 + 1);
          if (*(&v50 + 1))
          {
            v34 = __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
            v45 = &v45;
            v47 = *(v33 - 8);
            MEMORY[0x28223BE20](v34);
            v46 = &v45 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v47 + 16))();
            v48 = sub_2759BAAB8();
            (*(v47 + 8))(v46, v33);
            __swift_destroy_boxed_opaque_existential_1(&v49);
          }

          else
          {
            v48 = 0;
          }

          v36 = sub_2759BA258();

          [v2 setValue:v48 forKey:v36];
          swift_unknownObjectRelease();

          sub_275860FE4(v51);
        }

        else
        {
        }
      }
    }
  }

  while (1)
  {
    v24 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_59;
    }

    if (v24 >= v23)
    {
      break;
    }

    v22 = *(v19 + 8 * v24);
    ++v18;
    if (v22)
    {
      v18 = v24;
      goto LABEL_23;
    }
  }

  if ([v1 needsDisplay])
  {
    [v2 setNeedsDisplay];
  }

  if ([v1 needsLayout])
  {
    [v2 setNeedsLayout];
  }

  v37 = [v1 animationKeys];
  if (v37)
  {
    v38 = v37;
    v39 = sub_2759BA3E8();

    v48 = v39;
    v40 = *(v39 + 2);
    if (v40)
    {
      v41 = v48 + 40;
      do
      {

        v42 = sub_2759BA258();
        v43 = [v1 animationForKey_];

        if (v43)
        {
          if ([v43 isRemovedOnCompletion])
          {
          }

          else
          {
            v44 = sub_2759BA258();

            [v2 addAnimation:v43 forKey:v44];
          }
        }

        else
        {
        }

        v41 += 16;
        --v40;
      }

      while (v40);
    }
  }
}

uint64_t sub_275860DBC()
{
  v1 = sub_275861A60(&unk_28847D518);
  swift_arrayDestroy();
  sub_275861AF8(0, &qword_280A0E8E8, 0x277CD9FC8);
  if ([v0 isKindOfClass_])
  {
    sub_275861B40(&unk_28847D838);
  }

  else
  {
    sub_275861AF8(0, &qword_280A0E8F0, 0x277CD9F90);
    if ([v0 isKindOfClass_])
    {
      sub_275861B40(&unk_28847D8C8);
    }

    else
    {
      sub_275861AF8(0, &qword_280A0E8F8, 0x277CD9F80);
      if ([v0 isKindOfClass_])
      {
        sub_275861B40(&unk_28847D9A8);
        sub_275861BB0(&unk_28847D9C8);
        return v1;
      }

      sub_275861AF8(0, &qword_280A0E900, 0x277CD9FE0);
      if (![v0 isKindOfClass_])
      {
        return v1;
      }

      sub_275861B40(&unk_28847D9D8);
    }
  }

  swift_arrayDestroy();
  return v1;
}

uint64_t sub_275860F74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0ED70, &qword_2759C6C60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275860FE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0ED70, &qword_2759C6C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27586104C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2759BABD8();
  sub_2759BA328();
  v8 = sub_2759BAC08();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2759BAAC8() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2758613FC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_27586119C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E908, &qword_2759C17B0);
  result = sub_2759BA898();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_2759BABD8();
      sub_2759BA328();
      result = sub_2759BAC08();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2758613FC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_27586119C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_27586157C();
      goto LABEL_16;
    }

    sub_275861828(v8 + 1);
  }

  v10 = *v4;
  sub_2759BABD8();
  sub_2759BA328();
  result = sub_2759BAC08();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2759BAAC8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2759BAB28();
  __break(1u);
  return result;
}

void *sub_27586157C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E908, &qword_2759C17B0);
  v2 = *v0;
  v3 = sub_2759BA888();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_2758616D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E918, &qword_2759C17C0);
  v2 = *v0;
  v3 = sub_2759BA888();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_275861828(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E908, &qword_2759C17B0);
  result = sub_2759BA898();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_2759BABD8();

      sub_2759BA328();
      result = sub_2759BAC08();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_275861A60(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277C84330](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_27586104C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_275861AF8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_275861B40(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_27586104C(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

id sub_275861C04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E950, &qword_2759C1820);
  sub_2759B9F68();
  v0 = type metadata accessor for MicaPlayerUIView();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC14iCloudSettings16MicaPlayerUIView_micaPlayerModel] = v18;
  v17.receiver = v1;
  v17.super_class = v0;
  v2 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 100.0, 100.0);
  sub_2759B9F68();
  v3 = *(v18 + 32);

  v4 = [v2 layer];
  sub_2759B9F68();
  v5 = *(v18 + 24);

  v6 = OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_rootLayer;
  v7 = [*&v3[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_rootLayer] superlayer];
  if (v7)
  {
  }

  else
  {
    sub_2758633B0();
    sub_275863520(0.0);
    [v4 addSublayer_];
    v8 = [*&v3[v6] superlayer];
    if (v8)
    {

      sub_27585FB70(v5, 1, 0);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E980, &qword_2759C1918);
  sub_2759B9718();
  v9 = v18;
  swift_unknownObjectWeakAssign();
  [*&v3[v6] speed];
  if (v10 == 0.0)
  {
    goto LABEL_6;
  }

  if (*&v3[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_documentDuration] != INFINITY)
  {
    goto LABEL_12;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_6;
  }

  swift_unknownObjectRelease();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v15 = [result respondsToSelector_];
  swift_unknownObjectRelease();
  if ((v15 & 1) == 0)
  {
LABEL_6:
    v11 = OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_playbackTimer;
    v12 = *&v3[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_playbackTimer];
    if (v12)
    {
      [v12 invalidate];
      v13 = *&v3[v11];
      *&v3[v11] = 0;

      v9 = v13;
    }
  }

  else
  {
LABEL_12:
    sub_275863750();
  }

  sub_2759B9F68();
  v16 = *(v18 + 16);

  if (v16 == 1)
  {
    sub_275863244();
  }

  return v2;
}

void *sub_275861EE8@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E950, &qword_2759C1820);
  sub_2759B9F68();
  v2 = type metadata accessor for MicaPlayerCoordinator();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC14iCloudSettings21MicaPlayerCoordinator_micaPlayerModel] = v6;
  v5.receiver = v3;
  v5.super_class = v2;
  result = objc_msgSendSuper2(&v5, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_275861FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275862E5C(&qword_280A0E978, type metadata accessor for MicaPlayerView, &unk_2759C1838);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_275862044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275862E5C(&qword_280A0E978, type metadata accessor for MicaPlayerView, &unk_2759C1838);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_2758620D8(uint64_t a1)
{
  sub_275862E5C(&qword_280A0E978, type metadata accessor for MicaPlayerView, &unk_2759C1838);
  sub_2759B95B8();
  __break(1u);
}

uint64_t sub_275862130(void *a1)
{
  v3 = sub_2759BA148();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = sub_2759BA178();
  v7 = *(v16[0] - 8);
  MEMORY[0x28223BE20](v16[0]);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2758628F4();
  v10 = sub_2759BA6A8();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  aBlock[4] = sub_275862940;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_27586249C;
  aBlock[3] = &block_descriptor;
  v12 = _Block_copy(aBlock);
  v13 = v1;
  v14 = a1;
  sub_2759BA168();
  v16[1] = MEMORY[0x277D84F90];
  sub_275862E5C(&qword_280A0E938, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E940, &qword_2759C1818);
  sub_275862960();
  sub_2759BA828();
  MEMORY[0x277C84450](0, v9, v6, v12);
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v16[0]);
}

void sub_2758623E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC14iCloudSettings21MicaPlayerCoordinator_micaPlayerModel);
  *(v2 + 48) = 1;
  v3 = *(a2 + OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_rootLayer);
  [v3 speed];
  if (v4 == 0.0)
  {
    [v3 timeOffset];
  }

  else
  {
    v6 = CACurrentMediaTime();
    [v3 beginTime];
    v8 = v6 - v7;
    [v3 speed];
    v5 = v8 * v9;
  }

  sub_275864E2C(v5);
  *(v2 + 48) = 0;
}

uint64_t sub_27586249C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_275862730(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for MicaPlayerUIView();
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  v2 = *&v1[OBJC_IVAR____TtC14iCloudSettings16MicaPlayerUIView_micaPlayerModel];
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v5 = *&v4[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_rootLayer];
  v6 = v4;
  v7 = v3;
  v8 = [v5 superlayer];
  if (v8)
  {

    sub_27585FB70(v7, 1, 0);
    v9 = v6;
  }

  else
  {
    v9 = v7;
    v7 = v6;
  }
}

id sub_275862888(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2758628F4()
{
  result = qword_280A0E930;
  if (!qword_280A0E930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A0E930);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_275862960()
{
  result = qword_280A0E948;
  if (!qword_280A0E948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A0E940, &qword_2759C1818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E948);
  }

  return result;
}

uint64_t sub_2758629C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v5 = sub_2759BA148();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2759BA178();
  v9 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2758628F4();
  v12 = sub_2759BA6A8();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_27586249C;
  aBlock[3] = v18;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  sub_2759BA168();
  v20 = MEMORY[0x277D84F90];
  sub_275862E5C(&qword_280A0E938, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E940, &qword_2759C1818);
  sub_275862960();
  sub_2759BA828();
  MEMORY[0x277C84450](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v19);
}

uint64_t type metadata accessor for MicaPlayerView(uint64_t a1)
{
  result = qword_280A0E958;
  if (!qword_280A0E958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_275862D44(uint64_t a1)
{
  sub_275862DB0(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_275862DB0(uint64_t a1)
{
  if (!qword_280A0E968)
  {
    type metadata accessor for MicaPlayerModel(255);
    v1 = sub_2759B9F88();
    if (!v2)
    {
      atomic_store(v1, &qword_280A0E968);
    }
  }
}

uint64_t sub_275862E5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_275862EB4()
{
  v1 = OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_playbackTimer;
  v2 = *&v0[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_playbackTimer];
  if (v2)
  {
    [v2 invalidate];
    v3 = *&v0[v1];
    *&v0[v1] = 0;
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for MicaPlayer(0);
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t type metadata accessor for MicaPlayer(uint64_t a1)
{
  result = qword_280A0E9F8;
  if (!qword_280A0E9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2758630A0(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_publishedObjects);
  if (v7)
  {
    if (*(v7 + 16))
    {
      sub_27586F8A0(a1, a2);
      if (v8)
      {
        return swift_unknownObjectRetain();
      }
    }
  }

  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E910, &qword_2759C17B8);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2759C17A0;
    sub_2759BA8C8();
    MEMORY[0x277C840E0](0xD00000000000001ALL, 0x80000002759DD5B0);
    MEMORY[0x277C840E0](a1, a2);
    MEMORY[0x277C840E0](0xD000000000000014, 0x80000002759DD5D0);
    sub_2759B8508();
    sub_275863BDC();
    v11 = sub_2759BAA98();
    MEMORY[0x277C840E0](v11);

    MEMORY[0x277C840E0](39, 0xE100000000000000);
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 32) = 0;
    *(v10 + 40) = 0xE000000000000000;
    sub_2759BABC8();
  }

  return 0;
}

id sub_275863244()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_rootLayer);
  result = [v1 speed];
  if (v3 == 0.0)
  {
    v4 = CACurrentMediaTime();
    [v1 speed];
    if (v5 == 0.0)
    {
      [v1 timeOffset];
    }

    else
    {
      v7 = CACurrentMediaTime();
      [v1 beginTime];
      v9 = v7 - v8;
      [v1 speed];
      v6 = v9 * v10;
    }

    v11 = OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_preferredPlaybackSpeed;
    [v1 setBeginTime_];
    [v1 setTimeOffset_];
    LODWORD(v12) = *(v0 + v11);
    [v1 setSpeed_];
    sub_275863750();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v13 = result;
      if ([result respondsToSelector_])
      {
        [v13 micaPlayerDidStartPlaying_];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_2758633B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_rootLayer);
  result = [v1 speed];
  if (v3 != 0.0)
  {
    [v1 speed];
    if (v4 == 0.0)
    {
      [v1 timeOffset];
    }

    else
    {
      v6 = CACurrentMediaTime();
      [v1 beginTime];
      v8 = v6 - v7;
      [v1 speed];
      v5 = v8 * v9;
    }

    [v1 setTimeOffset_];
    [v1 setBeginTime_];
    [v1 setSpeed_];
    v10 = OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_playbackTimer;
    v11 = *(v0 + OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_playbackTimer);
    if (v11)
    {
      [v11 invalidate];
      v12 = *(v0 + v10);
      *(v0 + v10) = 0;
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v13 = result;
      if ([result respondsToSelector_])
      {
        [v13 micaPlayerDidStopPlaying_];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_275863520(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_rootLayer);
  [v3 speed];
  v5 = v4;
  v6 = 0.0;
  if (v5 != 0.0)
  {
    v6 = CACurrentMediaTime() - a1;
    a1 = 0.0;
  }

  [v3 setBeginTime_];
  [v3 setTimeOffset_];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    if ([result respondsToSelector_])
    {
      [v8 micaPlayerDidChangePlaybackTime_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_275863750()
{
  v1 = OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_playbackTimer;
  if (!*(v0 + OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_playbackTimer))
  {
    [*(v0 + OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_rootLayer) speed];
    if (v2 != 0.0)
    {
      if (*(v0 + OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_documentDuration) != INFINITY)
      {
        goto LABEL_7;
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {
          __break(1u);
          return;
        }

        v4 = [Strong respondsToSelector_];
        swift_unknownObjectRelease();
        if (v4)
        {
LABEL_7:
          v5 = objc_opt_self();
          v6 = swift_allocObject();
          swift_unknownObjectUnownedInit();
          v10[4] = sub_275863BBC;
          v10[5] = v6;
          v10[0] = MEMORY[0x277D85DD0];
          v10[1] = 1107296256;
          v10[2] = sub_275863A4C;
          v10[3] = &block_descriptor_0;
          v7 = _Block_copy(v10);

          v8 = [v5 scheduledTimerWithTimeInterval:1 repeats:v7 block:0.0333333333];
          _Block_release(v7);
          v9 = *(v0 + v1);
          *(v0 + v1) = v8;
        }
      }
    }
  }
}

void sub_2758638FC(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = *&Strong[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_rootLayer];
  [v2 speed];
  if (v3 == 0.0)
  {
    [v2 timeOffset];
  }

  else
  {
    v5 = CACurrentMediaTime();
    [v2 beginTime];
    v7 = v5 - v6;
    [v2 speed];
    v4 = v7 * v8;
  }

  if (*&Strong[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_documentDuration] + -0.001 <= v4)
  {
    if (Strong[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_shouldLoop] == 1)
    {
      sub_275863520(0.0);
    }

    else
    {
      sub_2758633B0();
    }
  }

  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    if ([v9 respondsToSelector_])
    {
      [v10 micaPlayerDidChangePlaybackTime_];
    }

    swift_unknownObjectRelease();
  }
}

void sub_275863A4C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_275863AE4(uint64_t a1)
{
  result = sub_2759B8508();
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

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_275863BDC()
{
  result = qword_280A10300;
  if (!qword_280A10300)
  {
    sub_2759B8508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10300);
  }

  return result;
}

uint64_t sub_275863C34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EA40, &qword_2759C19B8);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_280A0EA48;
    v3 = &unk_2759C19C0;
  }

  else
  {
    v2 = &qword_280A102F0;
    v3 = &qword_2759C4560;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

uint64_t sub_275863CAC()
{
  v0 = sub_2759B8518();
  v2 = v1;
  sub_275863C34();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C1920;
  *(inited + 32) = sub_275861AF8(0, &qword_280A0E8E0, 0x277CD9ED0);
  *(inited + 40) = sub_275861AF8(0, &qword_280A0EA18, 0x277CBEB38);
  *(inited + 48) = sub_275861AF8(0, &qword_280A0EA20, 0x277CBEA60);
  *(inited + 56) = sub_275861AF8(0, &qword_280A0ED90, 0x277CCABB0);
  *(inited + 64) = sub_275861AF8(0, &qword_280A0EA28, 0x277CCACA8);
  sub_275861AF8(0, &qword_280A0EA30, 0x277CCAAC8);
  sub_27595CCEC(inited);

  sub_2759BA698();

  sub_27585A900(v0, v2);
  if (v5[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EA38, &qword_2759C19B0);
    if (swift_dynamicCast())
    {
      return v5[13];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_275860FE4(v5);
    return 0;
  }
}

id sub_275864150(uint64_t a1, void *a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_preferredPlaybackSpeed] = 1065353216;
  v3[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_shouldLoop] = 0;
  *&v3[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_playbackTimer] = 0;
  v7 = OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_url;
  v8 = sub_2759B8508();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a1, v8);
  v10 = OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_rootLayer;
  *&v3[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_rootLayer] = a2;
  *&v3[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_publishedObjects] = a3;
  [a2 duration];
  *&v3[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_documentDuration] = v11;
  [*&v3[v10] setDuration_];
  v14.receiver = v3;
  v14.super_class = type metadata accessor for MicaPlayer(0);
  v12 = objc_msgSendSuper2(&v14, sel_init);
  (*(v9 + 8))(a1, v8);
  return v12;
}

id sub_2758642B8(uint64_t a1)
{
  v2 = sub_2759B8508();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_275863CAC();
  if (!v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E910, &qword_2759C17B8);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2759C17A0;
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_2759BA8C8();

    v29 = 0xD000000000000026;
    v30 = 0x80000002759DD610;
    v19 = sub_2759B84E8();
    MEMORY[0x277C840E0](v19);

    v17 = v29;
    v18 = v30;
    *(v15 + 56) = MEMORY[0x277D837D0];
    goto LABEL_12;
  }

  v7 = v6;
  v27 = 0x6579614C746F6F72;
  v28 = 0xE900000000000072;
  v8 = MEMORY[0x277D837D0];
  sub_2759BA878();
  if (!*(v7 + 16) || (v9 = sub_2758A24F8(&v29), (v10 & 1) == 0))
  {

    sub_275864C40(&v29);
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E910, &qword_2759C17B8);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2759C17A0;
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_2759BA8C8();

    v29 = 0xD000000000000026;
    v30 = 0x80000002759DD610;
    v16 = sub_2759B84E8();
    MEMORY[0x277C840E0](v16);

    v17 = v29;
    v18 = v30;
    *(v15 + 56) = v8;
LABEL_12:
    *(v15 + 32) = v17;
    *(v15 + 40) = v18;
    sub_2759BABC8();

    (*(v3 + 8))(a1, v2);
    return 0;
  }

  sub_275864C94(*(v7 + 56) + 32 * v9, &v31);
  sub_275864C40(&v29);
  sub_275861AF8(0, &qword_280A0E8E0, 0x277CD9ED0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_10;
  }

  v11 = v27;
  v31 = 0x797274656D6F6567;
  v32 = 0xEF64657070696C46;
  sub_2759BA878();
  if (*(v7 + 16) && (v12 = sub_2758A24F8(&v29), (v13 & 1) != 0))
  {
    sub_275864C94(*(v7 + 56) + 32 * v12, &v31);
    sub_275864C40(&v29);
    if (swift_dynamicCast())
    {
      v14 = v27;
      goto LABEL_17;
    }
  }

  else
  {
    sub_275864C40(&v29);
  }

  v14 = 0;
LABEL_17:
  [v11 setGeometryFlipped_];
  [v11 setGeometryFlipped_];
  [v11 setMasksToBounds_];
  [v11 setRepeatCount_];
  v31 = 0xD000000000000010;
  v32 = 0x80000002759DD540;
  sub_2759BA878();
  if (*(v7 + 16) && (v21 = sub_2758A24F8(&v29), (v22 & 1) != 0))
  {
    sub_275864C94(*(v7 + 56) + 32 * v21, &v31);
    sub_275864C40(&v29);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EA10, &qword_2759C19A8);
    if (swift_dynamicCast())
    {
      v23 = v27;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {

    sub_275864C40(&v29);
    v23 = 0;
  }

  (*(v3 + 16))(v5, a1, v2);
  v24 = objc_allocWithZone(type metadata accessor for MicaPlayer(0));
  v25 = sub_275864150(v5, v11, v23);

  (*(v3 + 8))(a1, v2);
  return v25;
}

unint64_t sub_2758647C4(uint64_t a1)
{
  if (!a1)
  {
    return MEMORY[0x277D84F98];
  }

  v1 = a1;
  if (!*(a1 + 16))
  {
    return MEMORY[0x277D84F98];
  }

  v2 = MEMORY[0x277D84F90];
  v51 = MEMORY[0x277D84F90];
  sub_27585F7A4(&v51);
  v3 = v51;
  v4 = sub_27585F94C();
  v51 = v2;
  sub_27585F7A4(&v51);
  v5 = v51;
  v6 = sub_27585F94C();
  v7 = v1 + 64;
  v8 = 1 << *(v1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v1 + 64);
  v11 = (v8 + 63) >> 6;
  v47 = v4 & 0xFFFFFFFFFFFFFF8;
  v50 = v4;
  v49 = v4 & 0xC000000000000001;
  v38 = v6 & 0xFFFFFFFFFFFFFF8;
  v39 = v6 & 0xC000000000000001;
  v41 = v5 & 0xC000000000000001;
  v42 = v6;
  v43 = v5;
  v40 = v5 & 0xFFFFFFFFFFFFFF8;

  v13 = 0;
  v44 = MEMORY[0x277D84F98];
  v46 = v1;
  v14 = &unk_27A667000;
  if (!v10)
  {
    goto LABEL_6;
  }

  while (2)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v17 = v16 | (v13 << 6);
      v18 = *(v1 + 56);
      v19 = (*(v1 + 48) + 16 * v17);
      v20 = v19[1];
      v45 = *v19;
      v21 = *(v18 + 8 * v17);
      sub_275861AF8(0, &qword_280A0E8E0, 0x277CD9ED0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v48 = v20;

      if ([swift_unknownObjectRetain() v14[371]])
      {
        break;
      }

      sub_275861AF8(0, &qword_280A0EA08, 0x277CD9DF8);
      if (![v21 v14[371]])
      {
        goto LABEL_34;
      }

      if (v50 >> 62)
      {
        v28 = sub_2759BA9E8();
        if (!v28)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v28 = *(v47 + 16);
        if (!v28)
        {
          goto LABEL_34;
        }
      }

      result = swift_unknownObjectRetain();
      v24 = 4;
      while (1)
      {
        v29 = v24 - 4;
        if (!v49)
        {
          break;
        }

        v30 = MEMORY[0x277C846A0](v24 - 4, v50);
        result = swift_unknownObjectRelease();
        if (v30 == v21)
        {
          goto LABEL_39;
        }

LABEL_31:
        v31 = v24 - 3;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_56;
        }

        ++v24;
        if (v31 == v28)
        {
LABEL_33:
          swift_unknownObjectRelease();
          goto LABEL_34;
        }
      }

      if (v29 >= *(v47 + 16))
      {
        goto LABEL_58;
      }

      if (*(v50 + 8 * v24) != v21)
      {
        goto LABEL_31;
      }

LABEL_39:
      if (v39)
      {
        v36 = v24 - 4;
        v37 = v42;
LABEL_51:
        v33 = MEMORY[0x277C846A0](v36, v37);
      }

      else
      {
        if (v29 >= *(v38 + 16))
        {
          goto LABEL_60;
        }

        v32 = v42;
LABEL_42:
        v33 = *(v32 + 8 * v24);
      }

      v34 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v44;
      sub_2759065C0(v34, v45, v48, isUniquelyReferenced_nonNull_native);

      swift_unknownObjectRelease_n();

      v44 = v51;
      v1 = v46;
      v14 = &unk_27A667000;
      if (!v10)
      {
        do
        {
LABEL_6:
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          if (v15 >= v11)
          {

            return v44;
          }

          v10 = *(v7 + 8 * v15);
          ++v13;
        }

        while (!v10);
        v13 = v15;
      }
    }

    if (!(v3 >> 62))
    {
      v23 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
        goto LABEL_13;
      }

LABEL_34:
      swift_unknownObjectRelease();

      v1 = v46;
      v14 = &unk_27A667000;
      if (!v10)
      {
        goto LABEL_6;
      }

      continue;
    }

    break;
  }

  v23 = sub_2759BA9E8();
  if (!v23)
  {
    goto LABEL_34;
  }

LABEL_13:
  result = swift_unknownObjectRetain();
  v24 = 4;
  while (2)
  {
    v25 = v24 - 4;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x277C846A0](v24 - 4, v3);
      result = swift_unknownObjectRelease();
      if (v26 == v21)
      {
        break;
      }

      goto LABEL_19;
    }

    if (v25 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_57;
    }

    if (*(v3 + 8 * v24) != v21)
    {
LABEL_19:
      v27 = v24 - 3;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_55;
      }

      ++v24;
      if (v27 == v23)
      {
        goto LABEL_33;
      }

      continue;
    }

    break;
  }

  if (v41)
  {
    v36 = v24 - 4;
    v37 = v43;
    goto LABEL_51;
  }

  if (v25 < *(v40 + 16))
  {
    v32 = v43;
    goto LABEL_42;
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_275864C94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_275864CF0(char a1)
{
  if (*(v1 + 49) == (a1 & 1))
  {
    *(v1 + 49) = a1 & 1;
    swift_getKeyPath();
    sub_2758653D8();
    sub_2759B8638();

    if (*(v1 + 49) == 1)
    {
      return sub_275863244();
    }

    else
    {
      return sub_2758633B0();
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758653D8();
    sub_2759B8628();
  }
}

void sub_275864E2C(double a1)
{
  if (*(v1 + 56) == a1)
  {
    *(v1 + 56) = a1;
    if ((*(v1 + 48) & 1) == 0)
    {
      swift_getKeyPath();
      sub_2758653D8();
      sub_2759B8638();

      sub_275863520(*(v1 + 56));
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2758653D8();
    sub_2759B8628();
  }
}

uint64_t sub_275864F6C()
{
  swift_getKeyPath();
  sub_2758653D8();
  sub_2759B8638();

  return *(v0 + 49);
}

uint64_t sub_275864FDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2758653D8();
  sub_2759B8638();

  *a2 = *(v3 + 49);
  return result;
}

id sub_275865054(uint64_t a1, char a2)
{
  *(a1 + 49) = a2;
  swift_getKeyPath();
  sub_2758653D8();
  sub_2759B8638();

  if (*(a1 + 49) == 1)
  {
    return sub_275863244();
  }

  else
  {
    return sub_2758633B0();
  }
}

double sub_2758650E8()
{
  swift_getKeyPath();
  sub_2758653D8();
  sub_2759B8638();

  return *(v0 + 56);
}

double *sub_275865158(double *result, double a2)
{
  result[7] = a2;
  if ((result[6] & 1) == 0)
  {
    v2 = result;
    swift_getKeyPath();
    sub_2758653D8();
    sub_2759B8638();

    return sub_275863520(v2[7]);
  }

  return result;
}

uint64_t sub_2758651F0()
{
  v1 = OBJC_IVAR____TtC14iCloudSettings15MicaPlayerModel___observationRegistrar;
  v2 = sub_2759B8678();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MicaPlayerModel(uint64_t a1)
{
  result = qword_280A0EA58;
  if (!qword_280A0EA58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2758652F0(uint64_t a1)
{
  result = sub_2759B8678();
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

unint64_t sub_2758653D8()
{
  result = qword_280A0EA68;
  if (!qword_280A0EA68)
  {
    type metadata accessor for MicaPlayerModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0EA68);
  }

  return result;
}

char *sub_275865450(uint64_t a1, char a2, void *a3)
{
  v7 = sub_2759B8508();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  sub_2759B8668();
  *(v3 + 24) = a3;
  *(v3 + 16) = a2;
  (*(v8 + 16))(v10, a1, v7);
  v11 = a3;
  result = sub_2758642B8(v10);
  if (result)
  {
    v13 = result;
    (*(v8 + 8))(a1, v7);
    *(v3 + 32) = v13;
    *(v3 + 40) = *&v13[OBJC_IVAR____TtC14iCloudSettings10MicaPlayer_documentDuration];
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_275865598@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA68, type metadata accessor for MicaPlayerModel, &unk_2759C1A50);
  sub_2759B8638();

  result = *(v3 + 56);
  *a2 = result;
  return result;
}

void *sub_275865668()
{
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController, &unk_2759C1BA0);
  sub_2759B8638();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

id sub_275865710@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController, &unk_2759C1BA0);
  sub_2759B8638();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_2758657C8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_27586A020(&qword_280A0EA88, type metadata accessor for InteractiveStorageMicaController, &unk_2759C1BA0);
    sub_2759B8628();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_275861AF8(0, &qword_280A0E8E0, 0x277CD9ED0);
  v5 = v4;
  v6 = a1;
  v7 = sub_2759BA788();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 24);
LABEL_8:
  *(v2 + 24) = a1;
}