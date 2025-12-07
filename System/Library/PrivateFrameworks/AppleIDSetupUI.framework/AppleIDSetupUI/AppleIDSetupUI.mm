uint64_t type metadata accessor for AppleIDSignInView(uint64_t a1)
{
  result = qword_281210238;
  if (!qword_281210238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_240900B7C(uint64_t a1)
{
  sub_240900C00(319);
  if (v1 <= 0x3F)
  {
    sub_240900D00(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_240900C00(uint64_t a1)
{
  if (!qword_2812100F8[0])
  {
    type metadata accessor for AISSignInSettings();
    sub_240900CB8(qword_2812101B0, type metadata accessor for AISSignInSettings, &protocol conformance descriptor for AISSignInSettings);
    v1 = sub_240A2B1FC();
    if (!v2)
    {
      atomic_store(v1, qword_2812100F8);
    }
  }
}

uint64_t sub_240900CB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_240900D00(uint64_t a1)
{
  if (!qword_2812100F0)
  {
    sub_240A2B33C();
    v1 = sub_240A2BC8C();
    if (!v2)
    {
      atomic_store(v1, &qword_2812100F0);
    }
  }
}

void *sub_240900D64@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_240900DB4(void *a1, uint64_t *a2)
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

uint64_t sub_240900E10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_240A2BF4C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_240900E90(const void *a1)
{
  v2 = _Block_copy(a1);
  v2[2](v2, 0);
  _Block_release(v2);
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_240900F0C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240900F5C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240900FC0(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B548, &qword_240A30928);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B550, qword_240A30930);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_240901150(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B548, &qword_240A30928);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B550, qword_240A30930);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_2409012E4()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090131C()
{
  v1 = type metadata accessor for LoginCard(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;

  v6 = v0 + v3 + v1[5];

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B548, &qword_240A30928) + 32);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B5A0, &unk_240A30A50);
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v6 + v7, 1, v8))
  {
    (*(v9 + 8))(v6 + v7, v8);
  }

  v10 = v5 + v1[6];

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B550, qword_240A30930) + 32);
  v12 = sub_240A2A4DC();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v10 + v11, 1, v12))
  {
    (*(v13 + 8))(v10 + v11, v12);
  }

  v14 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_240A29DBC();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2409015D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_240A2A46C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24090167C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_240A2A46C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_240901720()
{
  v1 = (type metadata accessor for FamilyRepairView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  sub_24091C37C(*(v0 + v3), *(v0 + v3 + 8));
  sub_24090C1E4(*(v5 + 16), *(v5 + 24));

  v6 = v1[9];
  v7 = sub_240A2A46C();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_240901854()
{
  v1 = (type metadata accessor for FamilyRepairView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_24091C37C(*(v0 + v3), *(v0 + v3 + 8));
  sub_24090C1E4(*(v0 + v3 + 16), *(v0 + v3 + 24));

  v5 = v1[9];
  v6 = sub_240A2A46C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240901984()
{
  v1 = (type metadata accessor for FamilyRepairView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  sub_24091C37C(*(v0 + v3), *(v0 + v3 + 8));
  sub_24090C1E4(*(v0 + v3 + 16), *(v0 + v3 + 24));

  v5 = v1[9];
  v6 = sub_240A2A46C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240901AC8()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_240901B10()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240901B48()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240901BA4()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240901C40()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240901C78()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240901CB8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240901CF0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240901D28()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_240901D88(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB80, &unk_240A31718);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_240901E44(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB80, &unk_240A31718);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_240901EF8()
{
  v1 = sub_240A2C53C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_240A2C55C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 17) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v10 | 7);
}

uint64_t sub_240902064()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24090209C()
{
  v1 = sub_240A2C53C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_240A2C55C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 17) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_2409021F4()
{
  v1 = sub_240A2995C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_240902314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BCB0, &qword_240A31A28);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2409023C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BCB0, &qword_240A31A28);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_240902478(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[8];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[9];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[10];

  return v18(v19, a2, v17);
}

uint64_t sub_240902668(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[10];

  return v18(v19, a2, a2, v17);
}

void sub_240902858(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3, uint64_t a4)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  a2(Strong, a1);
}

uint64_t sub_240902A10()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240902A4C()
{
  v1 = type metadata accessor for DiscoveryView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD18, &qword_240A33940) + 32);
  v7 = sub_240A2A10C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  v8 = v0 + v3 + v1[8];

  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0) + 32);
  v10 = sub_240A2976C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v8 + v9, 6, v10))
  {
    (*(v11 + 8))(v8 + v9, v10);
  }

  v12 = v5 + v1[9];
  v13 = sub_240A2975C();
  (*(*(v13 - 8) + 8))(v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);

  v14 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_240A29DBC();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
  }

  v16 = v1[11];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_240A29DBC();
    (*(*(v17 - 8) + 8))(v5 + v16, v17);
  }

  else
  {
  }

  sub_24090C1E4(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_24090C1E4(*(v5 + v1[13]), *(v5 + v1[13] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240902D88()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240902DC0()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_240902DF8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240902F28()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240902F60()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_240902FA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI24RepairCardViewController_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_240903010()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C088, &unk_240A32000) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v5 = sub_240A29B9C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240903130()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C088, &unk_240A32000) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v5 = sub_240A29B9C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240903240(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C0A8, &unk_240A320B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
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
    v14 = *(a1 + a3[8] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_2409033DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C0A8, &unk_240A320B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
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
    *(a1 + a4[8] + 8) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_2409035F0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_240903638()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240903670()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2409036B0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2409036E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50CF00, &qword_240A32530);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

id sub_2409037C0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isRunning];
  *a2 = result;
  return result;
}

uint64_t sub_240903818@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24094787C();
  *a1 = result;
  return result;
}

id sub_240903848@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 videoRotationAngleForHorizonLevelPreview];
  *a2 = v4;
  return result;
}

uint64_t sub_24090387C()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_2409038E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_configuration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_24090394C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_context;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_2409039B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI29ConnectToFamilyViewController_faURLProvider;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_240903A20()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240903A58()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240903A90()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240903AC8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240903B00()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240903B78()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240903BB0()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240903BE8()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_240903C64()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_240903CB4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240903D24@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_240903DDC()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240903E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9D8, &qword_240A336A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_240903F38(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9D8, &qword_240A336A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_2409040B8()
{
  v1 = type metadata accessor for AgeMigrationView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_240A2B2AC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_240904248()
{
  v1 = (type metadata accessor for AgeMigrationViewModel.ServerUIContext(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_240A2946C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v1[10];
  v7 = sub_240A2986C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[11];
  v9 = sub_240A298BC();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240904408()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240904440()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240904480()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2409044E4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240904524(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24090459C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24090461C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090465C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2409046AC(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_24090470C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_2409047B0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2409047F0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_240904850()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240904888()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2409048C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50CF00, &qword_240A32530);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_240904968()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2409049A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_240904B5C@<X0>(_BYTE *a1@<X8>)
{
  sub_2409988A4();
  result = sub_240A2B53C();
  *a1 = v3;
  return result;
}

uint64_t sub_240904BFC@<X0>(void *a1@<X8>)
{
  sub_2409987A8();
  result = sub_240A2B53C();
  *a1 = v3;
  return result;
}

uint64_t sub_240904DB4(char *a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D078, &qword_240A34930);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9D8, &qword_240A336A0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[12];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[13]];

  return v16(v17, a2, v15);
}

char *sub_240904F98(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D078, &qword_240A34930);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9D8, &qword_240A336A0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[12];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[13]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_2409051C4()
{
  v1 = type metadata accessor for SetupView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18) - 8);
  v6 = *(v5 + 80);
  v23 = *(v5 + 64);
  v7 = v0 + v3;

  v8 = v0 + v3 + v1[9];
  v9 = sub_240A2981C();
  (*(*(v9 - 8) + 8))(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);

  v10 = v0 + v3 + v1[10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C708, &unk_240A32F60);
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v10, 1, v11))
  {
    (*(v12 + 8))(v10, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D078, &qword_240A34930);

  if (*(v7 + v1[11]))
  {
  }

  v13 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_240A2B2AC();
    (*(*(v14 - 8) + 8))(v7 + v13, v14);
  }

  else
  {
  }

  v15 = v3 + v4 + v6;
  v16 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_240A29DBC();
    (*(*(v17 - 8) + 8))(v7 + v16, v17);
  }

  else
  {
  }

  v18 = v15 & ~v6;
  v19 = v1[14];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_240A29DBC();
    (*(*(v20 - 8) + 8))(v7 + v19, v20);
  }

  else
  {
  }

  sub_24090C1E4(*(v7 + v1[15]), *(v7 + v1[15] + 8));
  sub_24090C1E4(*(v7 + v1[16]), *(v7 + v1[16] + 8));
  sub_24090C1E4(*(v7 + v1[17]), *(v7 + v1[17] + 8));

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v21 = sub_240A29ACC();
    (*(*(v21 - 8) + 8))(v0 + v18, v21);
  }

  return MEMORY[0x2821FE8E8](v0, v18 + v23, v2 | v6 | 7);
}

uint64_t sub_240905670()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2409056B0()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2409056E8()
{
  v1 = type metadata accessor for SetupView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v20 = *(*(v1 - 1) + 64);
  v22 = sub_240A2A21C();
  v4 = *(v22 - 8);
  v5 = *(v4 + 80);
  v21 = *(v4 + 64);
  v6 = v0 + v3;

  v7 = v0 + v3 + v1[9];
  v8 = sub_240A2981C();
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);

  v9 = v0 + v3 + v1[10];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C708, &unk_240A32F60);
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1, v10))
  {
    (*(v11 + 8))(v9, v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D078, &qword_240A34930);

  if (*(v6 + v1[11]))
  {
  }

  v12 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_240A2B2AC();
    (*(*(v13 - 8) + 8))(v6 + v12, v13);
  }

  else
  {
  }

  v14 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_240A29DBC();
    (*(*(v15 - 8) + 8))(v6 + v14, v15);
  }

  else
  {
  }

  v16 = v1[14];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_240A29DBC();
    (*(*(v17 - 8) + 8))(v6 + v16, v17);
  }

  else
  {
  }

  v18 = (v3 + v20 + v5) & ~v5;
  sub_24090C1E4(*(v6 + v1[15]), *(v6 + v1[15] + 8));
  sub_24090C1E4(*(v6 + v1[16]), *(v6 + v1[16] + 8));
  sub_24090C1E4(*(v6 + v1[17]), *(v6 + v1[17] + 8));

  (*(v4 + 8))(v0 + v18, v22);

  return MEMORY[0x2821FE8E8](v0, v18 + v21, v2 | v5 | 7);
}

uint64_t sub_240905BCC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_240905C88(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_240905D38()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_240905D98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D708, &unk_240A34FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_240905E04(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[11];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[14]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_240905F24(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[14]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[11];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_240906040()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50D708, &unk_240A34FC0);
  sub_240A2A8FC();
  sub_24099E36C();
  sub_24099EC88(&qword_27E50D8B0, MEMORY[0x277CEDC88], MEMORY[0x277CEDC90]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2409060F4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090612C()
{
  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2409061E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_240A2A65C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2409062A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_240A2A54C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2409063D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_240A2A51C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24090642C()
{
  v1 = (type metadata accessor for AuthenticationView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v5 + v1[7];

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D700, &qword_240A34A50) + 32);
  v8 = sub_240A2A9AC();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  v9 = v5 + v1[13];
  v10 = sub_240A2975C();
  (*(*(v10 - 8) + 8))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);

  sub_24091C37C(*(v5 + v1[14]), *(v5 + v1[14] + 8));
  sub_24090C1E4(*(v5 + v1[15]), *(v5 + v1[15] + 8));

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_24090665C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240906694()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2409066D0()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240906708()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240906748()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240906840(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_240A2946C();
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
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_240A2986C();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v15 = sub_240A298BC();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_2409069B4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_240A2946C();
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
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_240A2986C();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = sub_240A298BC();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_240906B70()
{
  v1 = sub_240A2946C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

void sub_240906C6C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_2409AEC1C(v1);
}

uint64_t sub_240906CE8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_240906D28()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_240906D64(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_2409AE678(v1);
}

uint64_t sub_240906DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDA8, &unk_240A35910);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
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

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_240906F24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDA8, &unk_240A35910);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_240907098()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2409070D0()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240907108()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240907148()
{
  v1 = type metadata accessor for DiscoveredView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DDA8, &unk_240A35910) + 32);
  v7 = sub_240A29E6C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_240A29DBC();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[8];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_240A29DBC();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  sub_24090C1E4(*(v5 + v1[9]), *(v5 + v1[9] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240907394()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2409073F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_240907430()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_240907500@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR_____AISSetupViewController_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_24090756C()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2409075BC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2409075F4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v5 = sub_240A29ACC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240907754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2409C4A10(qword_27E50DED0, MEMORY[0x277CED648], MEMORY[0x277CED650]);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_2409077E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2409C4A10(&qword_27E50DEC8, type metadata accessor for AKUserAgeRange, &unk_240A2F594);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_24090787C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NavigationControllerReader.ReaderRepresentable(255, *a1, a1[1], a4);
  sub_240A2B38C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_240A2B6DC();
  sub_240A2B38C();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_24090797C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D218, &qword_240A34A40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[9];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_240907B20(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D218, &qword_240A34A40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5]) = a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_240907CBC()
{
  v1 = type metadata accessor for SignInView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D218, &qword_240A34A40) + 32);
  v6 = sub_240A29B5C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  v7 = v0 + v3 + v1[7];
  v8 = sub_240A2975C();
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);

  v9 = v0 + v3 + v1[9];

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0) + 32);
  v11 = sub_240A2976C();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v9 + v10, 6, v11))
  {
    (*(v12 + 8))(v9 + v10, v11);
  }

  sub_24090C1E4(*(v0 + v3 + v1[10]), *(v0 + v3 + v1[10] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240907F20()
{
  v1 = sub_240A2A18C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for SignInView(0);
  v7 = *(*(v6 - 1) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v18 = *(*(v6 - 1) + 64);
  (*(v2 + 8))(v0 + v4, v1);

  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D218, &qword_240A34A40) + 32);
  v10 = sub_240A29B5C();
  (*(*(v10 - 8) + 8))(v0 + v8 + v9, v10);

  v11 = v0 + v8 + v6[7];
  v12 = sub_240A2975C();
  (*(*(v12 - 8) + 8))(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);

  v13 = v0 + v8 + v6[9];

  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0) + 32);
  v15 = sub_240A2976C();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v13 + v14, 6, v15))
  {
    (*(v16 + 8))(v13 + v14, v15);
  }

  sub_24090C1E4(*(v0 + v8 + v6[10]), *(v0 + v8 + v6[10] + 8));

  return MEMORY[0x2821FE8E8](v0, v8 + v18, v3 | v7 | 7);
}

uint64_t sub_240908208()
{
  v1 = type metadata accessor for SignInView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D218, &qword_240A34A40) + 32);
  v6 = sub_240A29B5C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  v7 = v0 + v3 + v1[7];
  v8 = sub_240A2975C();
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);

  v9 = v0 + v3 + v1[9];

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0) + 32);
  v11 = sub_240A2976C();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v9 + v10, 6, v11))
  {
    (*(v12 + 8))(v9 + v10, v11);
  }

  sub_24090C1E4(*(v0 + v3 + v1[10]), *(v0 + v3 + v1[10] + 8));

  return MEMORY[0x2821FE8E8](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_24090848C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9D8, &qword_240A336A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_2409085C8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9D8, &qword_240A336A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_240908714()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090874C()
{
  v1 = type metadata accessor for SignInOptionsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[6];

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10) + 32);
  v8 = sub_240A2B33C();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_240A2B2AC();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_240908908()
{
  v1 = type metadata accessor for SignInOptionsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;

  v6 = v0 + v3 + v1[6];

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BC98, &qword_240A31A10) + 32);
  v8 = sub_240A2B33C();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_240A2B2AC();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240908AB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E320, &qword_240A366C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240908B90(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3B0, &qword_240A36840);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9D8, &qword_240A336A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_240908CCC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3B0, &qword_240A36840);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9D8, &qword_240A336A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_240908E08()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E3A0, &qword_240A36830);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E398, &qword_240A36828);
  sub_240A29A9C();
  sub_2409DA9E0();
  sub_2409DB744(&qword_27E50E3D0, MEMORY[0x277CED4A0], MEMORY[0x277CED4A8]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_240908EF8()
{
  v1 = type metadata accessor for RepairView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v3 + *(*(v1 - 1) + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C088, &unk_240A32000) - 8);
  v6 = *(v5 + 80);
  v16 = *(v5 + 64);
  v7 = v0 + v3;

  v8 = v0 + v3 + v1[8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C068, &qword_240A31F60);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E3B0, &qword_240A36840);

  if (*(v7 + v1[9]))
  {
  }

  v11 = (v4 + v6) & ~v6;

  v12 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_240A2B2AC();
    (*(*(v13 - 8) + 8))(v7 + v12, v13);
  }

  else
  {
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v14 = sub_240A29B9C();
    (*(*(v14 - 8) + 8))(v0 + v11, v14);
  }

  return MEMORY[0x2821FE8E8](v0, v11 + v16, v2 | v6 | 7);
}

uint64_t sub_2409091E0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24090924C()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2409092E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240909328()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_240909378()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2409093B8(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[12];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[13];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[15];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9D8, &qword_240A336A0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[17];

  return v17(v18, a2, v16);
}

uint64_t sub_2409095F0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[12];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[13];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[15];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9D8, &qword_240A336A0);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[17];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_240909894()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2409098CC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_240909938@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI23SetupCardViewController_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_2409099A4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v5 = sub_240A29ACC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240909AC4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v5 = sub_240A29ACC();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_240909BF4@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_240909CAC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9D8, &qword_240A336A0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E7F0, qword_240A375F0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_240909DE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9D8, &qword_240A336A0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E7F0, qword_240A375F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_240909F9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E830, &qword_240A37680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24090A004@<X0>(uint64_t *a1@<X8>)
{
  result = sub_240A2B4DC();
  *a1 = result;
  return result;
}

uint64_t sub_24090A05C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_240A2B47C();
  *a1 = result;
  return result;
}

uint64_t sub_24090A0BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E830, &qword_240A37680);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50C3E0, &unk_240A30960);
  sub_2409EB570();
  sub_2409EB7DC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24090A1B4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24090A1F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24090A244@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

id sub_24090A2FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2409EC9B0();
  *a1 = result;
  return result;
}

void sub_24090A328(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR___AISAppleIDSignInController____lazy_storage___hostingViewController);
  *(*a2 + OBJC_IVAR___AISAppleIDSignInController____lazy_storage___hostingViewController) = *a1;
  v3 = v2;
}

uint64_t sub_24090A378()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090A3B0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090A3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA70, &unk_240A37C58);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 252)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 4)
    {
      return v10 - 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24090A520(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA70, &unk_240A37C58);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 252)
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_24090A658()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090A6B8()
{
  v1 = (type metadata accessor for PairingView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA70, &unk_240A37C58) + 32);
  v6 = sub_240A29EFC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_240A29DBC();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_24090A840()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24090A878()
{
  v1 = (type metadata accessor for PairingView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA70, &unk_240A37C58) + 32);
  v6 = sub_240A29EFC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_240A29DBC();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v3 + v4) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_24090AA1C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24090AA54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_240A2B4BC();
  *a1 = result;
  return result;
}

uint64_t sub_24090AABC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24090AAFC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090AB3C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090AB74()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  __swift_destroy_boxed_opaque_existential_0((v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_24090ABC4@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_24090AC90()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24090ACE0@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_24090AD98()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24090ADE8()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090AE20()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24090AE64()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090AE9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24090AED4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR_____AISRepairViewController_shouldAutoDismiss;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24090AF2C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR_____AISRepairViewController_shouldAutoDismiss;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_24090AF80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR_____AISRepairViewController_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_24090AFEC()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24090B03C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090B074()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C088, &unk_240A32000) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v5 = sub_240A29B9C();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24090B194()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24090B1E4()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24090B230()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24090B274()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24090B300()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24090B348()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24090B380()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24090B3D4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24090B434()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090B46C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24090B4AC()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090B50C()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090B544()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24090B584(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C0A8, &unk_240A320B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[8];
    goto LABEL_7;
  }

  if (a2 == 2147483646)
  {
    v16 = *(a1 + a3[9] + 8);
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    v17 = v16 - 1;
    if (v17 < 0)
    {
      v17 = -1;
    }

    return (v17 + 1);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0);
    if (*(*(v18 - 8) + 84) == a2)
    {
      v8 = v18;
      v12 = *(v18 - 8);
      v13 = a3[12];
      goto LABEL_7;
    }

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
    v20 = *(*(v19 - 8) + 48);
    v21 = a1 + a3[13];

    return v20(v21, a2, v19);
  }
}

uint64_t sub_24090B7D4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C0A8, &unk_240A320B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BD30, &qword_240A32570);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[8];
    goto LABEL_7;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[9] + 8) = a2;
    return result;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[12];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[13];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_24090BA44()
{
  MEMORY[0x245CCDEB0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090BA7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C660, &unk_240A39230);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24090BB10()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24090BB50()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C7E0, &qword_240A33150) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = sub_240A295AC();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  v7 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v2 | 7);
}

uint64_t sub_24090BCA8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090BCE0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090BD20()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24090BD58()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24090BDAC()
{
  MEMORY[0x245CCDEB0](v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24090BDF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240A2A18C();
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

uint64_t sub_24090BEB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_240A2A18C();
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

uint64_t sub_24090BF6C()
{
  v1 = sub_240A2A18C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for TermsView(0);
  v7 = *(*(v6 - 1) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  v11 = v0 + v8;
  v10(v0 + v8, v1);
  v12 = (v0 + v8 + v6[5]);
  if (v12[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_24090C0EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDA0, &qword_240A30C88);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24090C1A0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24090C1E4(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_24090C218(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24090C23C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_24090DB54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    v10 = [v9 description];
    NSLog(&cfstr_UnableToCopyMi.isa);

    objc_end_catch();
    JUMPOUT(0x24090DB34);
  }

  _Unwind_Resume(exception_object);
}

void sub_24090E770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24090F9F4(uint64_t a1, int a2)
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

uint64_t sub_24090FA14(uint64_t result, int a2, int a3)
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

void *sub_24090FAD0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_24090FAFC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_24090FBC0(uint64_t a1, id *a2)
{
  result = sub_240A2BF2C();
  *a2 = 0;
  return result;
}

uint64_t sub_24090FC38(uint64_t a1, id *a2)
{
  v3 = sub_240A2BF3C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24090FCB8@<X0>(uint64_t *a2@<X8>)
{
  sub_240A2BF4C();
  v3 = sub_240A2BF1C();

  *a2 = v3;
  return result;
}

uint64_t sub_24090FD0C(uint64_t a1)
{
  v2 = sub_240910334(&qword_27E50B200, type metadata accessor for FAError, &unk_240A2FD68);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_24090FD78(uint64_t a1)
{
  v2 = sub_240910334(&qword_27E50B200, type metadata accessor for FAError, &unk_240A2FD68);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_24090FDE4(void *a1, uint64_t a2)
{
  v4 = sub_240910334(&qword_27E50B200, type metadata accessor for FAError, &unk_240A2FD68);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_24090FE98(uint64_t a1, uint64_t a2)
{
  v4 = sub_240910334(&qword_27E50B200, type metadata accessor for FAError, &unk_240A2FD68);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_24090FF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_240A2C72C();
  sub_240A2BEFC();
  return sub_240A2C74C();
}

uint64_t sub_24090FF74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_240911120(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_24090FFB4(uint64_t a1)
{
  v2 = sub_240910334(&qword_27E50B248, type metadata accessor for AKAppleIDAuthenticationAppProvidedContext, &unk_240A2FBE0);
  v3 = sub_240910334(&qword_27E50B250, type metadata accessor for AKAppleIDAuthenticationAppProvidedContext, &unk_240A2FB88);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_240910070(uint64_t a1)
{
  v2 = sub_240910334(&qword_27E50B258, type metadata accessor for TextStyle, &unk_240A2FA98);
  v3 = sub_240910334(&qword_27E50B260, type metadata accessor for TextStyle, &unk_240A2FA38);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24091012C(uint64_t a1)
{
  v2 = sub_240910334(&qword_27E50B2E0, type metadata accessor for UITextContentType, &unk_240A300EC);
  v3 = sub_240910334(&qword_27E50B2E8, type metadata accessor for UITextContentType, &unk_240A3008C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2409101E8(uint64_t a1)
{
  v2 = sub_240910334(&qword_27E50BAF0, type metadata accessor for AIDAServiceType, &unk_240A2F50C);
  v3 = sub_240910334(&qword_27E50B110, type metadata accessor for AIDAServiceType, &unk_240A2F4B4);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_240910334(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2409103C4(uint64_t a1)
{
  v2 = sub_240910334(&qword_27E50B340, type metadata accessor for ObjectType, &unk_240A30538);
  v3 = sub_240910334(&qword_27E50B348, type metadata accessor for ObjectType, &unk_240A304D8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_240910480(uint64_t a1)
{
  v2 = sub_240910334(&qword_27E50B208, type metadata accessor for FAError, &unk_240A2FEBC);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2409104EC(uint64_t a1)
{
  v2 = sub_240910334(&qword_27E50B208, type metadata accessor for FAError, &unk_240A2FEBC);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_24091055C(uint64_t a1)
{
  v2 = sub_240910334(&qword_27E50B200, type metadata accessor for FAError, &unk_240A2FD68);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_2409105C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240910334(&qword_27E50B200, type metadata accessor for FAError, &unk_240A2FD68);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_24091064C(uint64_t a1)
{
  v2 = sub_240910334(&qword_27E50B310, type metadata accessor for CIContextOption, &unk_240A303F4);
  v3 = sub_240910334(&qword_27E50B318, type metadata accessor for CIContextOption, &unk_240A30348);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_240910708(uint64_t a1)
{
  v2 = sub_240910334(&qword_27E50B2D0, type metadata accessor for AATermsEntry, &unk_240A3027C);
  v3 = sub_240910334(&qword_27E50B2D8, type metadata accessor for AATermsEntry, &unk_240A301DC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2409107C4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_240A2BF1C();

  *a2 = v3;
  return result;
}

uint64_t sub_24091080C(uint64_t a1)
{
  v2 = sub_240910334(&qword_27E50CEB0, type metadata accessor for Key, &unk_240A2F714);
  v3 = sub_240910334(&unk_27E50B100, type metadata accessor for Key, &unk_240A2F668);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_240910BC8()
{
  v0 = sub_240A2BF4C();
  v1 = MEMORY[0x245CCCDD0](v0);

  return v1;
}

uint64_t sub_240910C04(uint64_t a1)
{
  sub_240A2BF4C();
  sub_240A2C09C();
}

uint64_t sub_240910C58()
{
  sub_240A2BF4C();
  sub_240A2C72C();
  sub_240A2C09C();
  v0 = sub_240A2C74C();

  return v0;
}

unint64_t sub_240910FFC()
{
  result = qword_27E50B230;
  if (!qword_27E50B230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B230);
  }

  return result;
}

uint64_t sub_240911098(void *a1, uint64_t *a2)
{
  v2 = sub_240A2BF4C();
  v4 = v3;
  if (v2 == sub_240A2BF4C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_240A2C66C();
  }

  return v7 & 1;
}

uint64_t sub_240911120(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_240911480(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t AISFlowStepChildSignInError.hashValue.getter()
{
  sub_240A2C72C();
  MEMORY[0x245CCD400](0);
  return sub_240A2C74C();
}

uint64_t sub_240911688()
{
  sub_240A2C72C();
  MEMORY[0x245CCD400](0);
  return sub_240A2C74C();
}

uint64_t sub_2409116F4()
{
  sub_240A2C72C();
  MEMORY[0x245CCD400](0);
  return sub_240A2C74C();
}

uint64_t AISFlowStepChildSignIn.hideCreationAndForgotPasswordButton.getter()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_hideCreationAndForgotPasswordButton;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AISFlowStepChildSignIn.hideCreationAndForgotPasswordButton.setter(char a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_hideCreationAndForgotPasswordButton;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_240911894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-v9];
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_childAuthResponse) = 0;
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_hideCreationAndForgotPasswordButton) = 0;
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_selectedMember) = a1;
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_guardianAuthResponse) = a2;
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_settings) = a3;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v13[15] = 0;
  sub_240A2B0DC();
  (*(v8 + 32))(v3 + v11, v10, v7);
  *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return v3;
}

void AISFlowStepChildSignIn.configure(context:)(void *a1)
{
  v2 = v1;
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_240A2974C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setServiceType_];
  [a1 setAuthenticationType_];
  [a1 setAppProvidedContext_];
  v12 = *(v2 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_selectedMember);
  if (v12)
  {
    v13 = v12;
    v14 = [v13 appleID];
    [a1 setUsername_];

    v15 = [v13 contact];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 givenName];

      sub_240A2BF4C();
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v26 = [v13 lastName];
    if (v26)
    {
      v27 = v26;
      sub_240A2BF4C();
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v30 = *(*(v2 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_settings) + 16);
    v31 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
    swift_beginAccess();
    v32 = *(v30 + v31);
    if (v19)
    {
      v33 = sub_240A2BF1C();

      if (v29)
      {
LABEL_15:
        v34 = sub_240A2BF1C();

        goto LABEL_18;
      }
    }

    else
    {
      v33 = 0;
      if (v29)
      {
        goto LABEL_15;
      }
    }

    v34 = 0;
LABEL_18:
    v35 = [objc_allocWithZone(MEMORY[0x277CF02A8]) initWithGivenName:v33 lastName:v34 ageRange:v32];

    [a1 setProtoAccountContext_];
    v36 = [v13 firstName];
    if (v36)
    {
      v37 = v36;
      v38 = sub_240A2BF4C();
      v40 = v39;

      sub_240A2C06C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7C0, &qword_240A305F0);
      v41 = swift_allocObject();
      v48 = xmmword_240A305D0;
      *(v41 + 16) = xmmword_240A305D0;
      *(v41 + 56) = MEMORY[0x277D837D0];
      v42 = sub_240913AEC();
      *(v41 + 64) = v42;
      *(v41 + 32) = v38;
      *(v41 + 40) = v40;

      sub_240A2BF6C();

      v43 = sub_240A2BF1C();

      [a1 setTitle_];

      sub_240A2C06C();
      v44 = swift_allocObject();
      *(v44 + 16) = v48;
      *(v44 + 56) = MEMORY[0x277D837D0];
      *(v44 + 64) = v42;
      *(v44 + 32) = v38;
      *(v44 + 40) = v40;
      sub_240A2BF6C();

      v45 = sub_240A2BF1C();

      [a1 setReason_];
    }

    else if ([v13 memberType] == 2 || objc_msgSend(v13, sel_memberType) == 1)
    {
      sub_240A2C06C();
      v46 = sub_240A2BF1C();

      [a1 setTitle_];

      sub_240A2C06C();
      v47 = sub_240A2BF1C();

      [a1 setReason_];
    }

LABEL_23:

    return;
  }

  (*(v9 + 104))(v11, *MEMORY[0x277CED208], v8);
  v20 = sub_240A2973C();
  (*(v9 + 8))(v11, v8);
  if (v20)
  {
    v21 = *(*(v2 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_settings) + 16);
    v22 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
    swift_beginAccess();
    if (*(v21 + v22) == 2)
    {
      sub_240A2AE9C();
      v23 = sub_240A2AFFC();
      v24 = sub_240A2C29C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_2408FE000, v23, v24, "Adding proto account context to ensure shield is bypassed for teen account sign in", v25, 2u);
        MEMORY[0x245CCDDB0](v25, -1, -1);
      }

      (*(v5 + 8))(v7, v4);
      v13 = [objc_allocWithZone(MEMORY[0x277CF02A8]) init];
      [a1 setProtoAccountContext_];
      goto LABEL_23;
    }
  }
}

uint64_t AISFlowStepChildSignIn.continue(with:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_240A2C21C();
  v2[4] = sub_240A2C20C();
  v4 = sub_240A2C1BC();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_2409121DC, v4, v3);
}

uint64_t sub_2409121DC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_childAuthResponse);
  *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_childAuthResponse) = v2;

  v4 = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_2409122A4;

  return sub_240912428();
}

uint64_t sub_2409122A4()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_2409123C4, v3, v2);
}

uint64_t sub_2409123C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240912428()
{
  v1[21] = v0;
  sub_240A2C21C();
  v1[22] = sub_240A2C20C();
  v3 = sub_240A2C1BC();
  v1[23] = v3;
  v1[24] = v2;

  return MEMORY[0x2822009F8](sub_2409124C0, v3, v2);
}

uint64_t sub_2409124C0()
{
  sub_2409F4D54();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v1 = *(v0[21] + 24), ObjectType = swift_getObjectType(), v3 = (*(v1 + 8))(ObjectType, v1), v0[25] = v3, swift_unknownObjectRelease(), v3))
  {
    v0[2] = v0;
    v0[3] = sub_240912670;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B3F0, &qword_240A307A0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_240913A24;
    v0[13] = &block_descriptor_17;
    v0[14] = v4;
    [v3 waitUntilLoadedWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_240912670()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_240912778, v2, v1);
}

uint64_t sub_240912778()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2409127E4()
{
  v1[21] = v0;
  sub_240A2C21C();
  v1[22] = sub_240A2C20C();
  v3 = sub_240A2C1BC();
  v1[23] = v3;
  v1[24] = v2;

  return MEMORY[0x2822009F8](sub_24091287C, v3, v2);
}

uint64_t sub_24091287C()
{
  sub_2409F4D78();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v1 = *(v0[21] + 24), ObjectType = swift_getObjectType(), v3 = (*(v1 + 8))(ObjectType, v1), v0[25] = v3, swift_unknownObjectRelease(), v3))
  {
    v0[2] = v0;
    v0[3] = sub_240912A2C;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B3F0, &qword_240A307A0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_240913A24;
    v0[13] = &block_descriptor_10;
    v0[14] = v4;
    [v3 waitUntilLoadedWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_240912A2C()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_240913F20, v2, v1);
}

uint64_t sub_240912B34()
{
  v1[21] = v0;
  sub_240A2C21C();
  v1[22] = sub_240A2C20C();
  v3 = sub_240A2C1BC();
  v1[23] = v3;
  v1[24] = v2;

  return MEMORY[0x2822009F8](sub_240912BCC, v3, v2);
}

uint64_t sub_240912BCC()
{
  sub_2409F4D90();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v1 = *(v0[21] + 24), ObjectType = swift_getObjectType(), v3 = (*(v1 + 8))(ObjectType, v1), v0[25] = v3, swift_unknownObjectRelease(), v3))
  {
    v0[2] = v0;
    v0[3] = sub_240912A2C;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B3F0, &qword_240A307A0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_240913A24;
    v0[13] = &block_descriptor_14;
    v0[14] = v4;
    [v3 waitUntilLoadedWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_240912D7C()
{
  v1[21] = v0;
  sub_240A2C21C();
  v1[22] = sub_240A2C20C();
  v3 = sub_240A2C1BC();
  v1[23] = v3;
  v1[24] = v2;

  return MEMORY[0x2822009F8](sub_240912E14, v3, v2);
}

uint64_t sub_240912E14()
{
  sub_2409F4D9C();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v1 = *(v0[21] + 24), ObjectType = swift_getObjectType(), v3 = (*(v1 + 8))(ObjectType, v1), v0[25] = v3, swift_unknownObjectRelease(), v3))
  {
    v0[2] = v0;
    v0[3] = sub_240912A2C;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B3F0, &qword_240A307A0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_240913A24;
    v0[13] = &block_descriptor;
    v0[14] = v4;
    [v3 waitUntilLoadedWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t AISFlowStepChildSignIn.analyticsScreenType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_settings) + 16);
  v4 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (v5 == 2)
  {
    v6 = MEMORY[0x277CEDAF0];
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    v6 = MEMORY[0x277CEDA90];
LABEL_5:
    v7 = *v6;
    v8 = sub_240A2A4AC();
    v9 = *(v8 - 8);
    (*(v9 + 104))(a1, v7, v8);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }

  v11 = sub_240A2A4AC();
  return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
}

uint64_t AISFlowStepChildSignIn.nextStep()()
{
  v1 = v0;
  v2 = sub_240A2B00C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_childAuthResponse);
  if (v9)
  {
    v10 = v9;
    sub_240A2AE9C();
    v11 = sub_240A2AFFC();
    v12 = sub_240A2C2CC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2408FE000, v11, v12, "AISFlowStepChildSignIn: Silent auth is successful. Starting AIDA sign-in step.", v13, 2u);
      MEMORY[0x245CCDDB0](v13, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    v14 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_guardianAuthResponse);
    v15 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_settings);
    type metadata accessor for AISFlowStepAIDASignIn(0);
    v16 = swift_allocObject();
    *(v16 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_guardianAuthResponse) = v14;
    *(v16 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_childAuthResponse) = v10;
    *(v16 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_settings) = v15;
    *(v16 + 24) = 0;
    swift_unknownObjectWeakInit();
    v23 = 0;
    v17 = v14;

    sub_240A2B0DC();
    result = v16;
    *(v16 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  }

  else
  {
    sub_240A2AE9C();
    v19 = sub_240A2AFFC();
    v20 = sub_240A2C2AC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2408FE000, v19, v20, "AISFlowStepChildSignIn: Interactive auth failed.", v21, 2u);
      MEMORY[0x245CCDDB0](v21, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    sub_240913B40();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_240913414()
{
}

uint64_t AISFlowStepChildSignIn.deinit()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AISFlowStepChildSignIn.__deallocating_deinit()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_selectedMember);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_24091366C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_240A2C21C();
  v2[4] = sub_240A2C20C();
  v4 = sub_240A2C1BC();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_240913704, v4, v3);
}

uint64_t sub_240913704()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_childAuthResponse);
  *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_childAuthResponse) = v2;

  v4 = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_2409137CC;

  return sub_240912428();
}

uint64_t sub_2409137CC()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_240913F24, v3, v2);
}

uint64_t sub_240913948()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildSignIn_hideCreationAndForgotPasswordButton;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2409139A4(void *a1)
{
  v3 = *v1;

  v4 = a1;
  sub_240978C58(v3, v4);

  sub_240913EB4();
  return sub_240A2BCDC();
}

uint64_t sub_240913A24(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t sub_240913A58(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
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

unint64_t sub_240913AEC()
{
  result = qword_27E50B3B8;
  if (!qword_27E50B3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B3B8);
  }

  return result;
}

unint64_t sub_240913B40()
{
  result = qword_27E50B3C8;
  if (!qword_27E50B3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B3C8);
  }

  return result;
}

unint64_t sub_240913B98()
{
  result = qword_27E50B3D8;
  if (!qword_27E50B3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B3D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AISFlowStepChildSignInError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AISFlowStepChildSignInError(_WORD *result, int a2, int a3)
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

uint64_t type metadata accessor for AISFlowStepChildSignIn(uint64_t a1)
{
  result = qword_27E50B3E0;
  if (!qword_27E50B3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_240913DC0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_240913EB4()
{
  result = qword_27E50B3F8;
  if (!qword_27E50B3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B3F8);
  }

  return result;
}

void sub_240913F28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v28 - v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_240915A6C(Strong);
    v8 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionsCreateAccountController_signInSettings);
    v9 = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
    if (v9)
    {
      v10 = v9;
      v28 = v8;
      v29 = v1;
      v30 = v7;
      v11 = [objc_opt_self() defaultStore];
      if (v11)
      {
        v12 = v11;
        v13 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

        v14 = type metadata accessor for SignInOptionAuthenticationController(0);
        v15 = objc_allocWithZone(v14);
        *&v15[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaSignInController] = 0;
        *&v15[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_navigationController] = 0;
        v16 = OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_authenticationController;
        *&v15[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_authenticationController] = 0;
        v17 = &v15[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_proximitySetupFallback];
        *v17 = 0;
        v17[1] = 0;
        v18 = OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController__isBluetoothDisabled;
        v32 = 0;
        sub_240A2B0DC();
        (*(v2 + 32))(&v15[v18], v4, v29);
        v19 = *&v15[v16];
        *&v15[v16] = v10;
        v20 = v10;

        *&v15[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_signInSettings] = v28;
        *&v15[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaOwnersManager] = v13;
        v15[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_aidaSignInEnabled] = 1;
        v21 = *v17;
        v22 = v17[1];
        *v17 = 0;
        v17[1] = 0;

        v23 = v13;
        sub_24090C1A0(v21, v22);
        v15[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_isAccountCreation] = 1;
        v31.receiver = v15;
        v31.super_class = v14;
        v24 = objc_msgSendSuper2(&v31, sel_init);

        v25 = *&v24[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_navigationController];
        *&v24[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionAuthenticationController_navigationController] = v6;
        v26 = v6;

        v27 = v30;
        sub_240976A18(v30);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id sub_240914230()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24091447C(int a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v3[2](v3, 0);
  _Block_release(v3);
  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_2409147E0(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_240A2B00C();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2409148A0, 0, 0);
}

uint64_t sub_2409148A0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[4].super_class = Strong;
  if (Strong)
  {
    v2 = Strong;
    super_class = v0[2].super_class;
    v4 = *(super_class + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionsCreateAccountController_aidaOwnersManager);
    v5 = type metadata accessor for AIDASignInViewController();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR___AISAIDASignInViewController_cdpUIController] = 0;
    *&v6[OBJC_IVAR___AISAIDASignInViewController_navController] = v2;
    *&v6[OBJC_IVAR___AISAIDASignInViewController_aidaOwnersManager] = v4;
    v6[OBJC_IVAR___AISAIDASignInViewController_isTeenFlow] = 0;
    v0[1].receiver = v6;
    v0[1].super_class = v5;
    v7 = v2;
    v8 = v4;
    v9 = objc_msgSendSuper2(v0 + 1, sel_init);
    v0[5].receiver = v9;
    v10 = *(super_class + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionsCreateAccountController_aidaSignInController);
    *(super_class + OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionsCreateAccountController_aidaSignInController) = v9;
    v9;

    v11 = swift_task_alloc();
    v0[5].super_class = v11;
    *v11 = v0;
    *(v11 + 1) = sub_240914AE8;
    receiver = v0[2].receiver;

    return sub_240A1F058(receiver);
  }

  else
  {
    sub_240A2AE9C();
    v14 = sub_240A2AFFC();
    v15 = sub_240A2C2AC();
    v16 = os_log_type_enabled(v14, v15);
    v18 = v0[3].super_class;
    v17 = v0[4].receiver;
    v19 = v0[3].receiver;
    if (v16)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2408FE000, v14, v15, "Missing navController.", v20, 2u);
      MEMORY[0x245CCDDB0](v20, -1, -1);
    }

    (*(v18 + 1))(v17, v19);

    v21 = v0->super_class;

    return v21(0);
  }
}

uint64_t sub_240914AE8(char a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_240914BE8, 0, 0);
}

uint64_t sub_240914BE8()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 96);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_240914DE4(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B500, &qword_240A30860);
  v5 = sub_240A2BEBC();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_240914ED8;

  return sub_2409147E0(v5);
}

uint64_t sub_240914ED8(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_24091503C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_240A2B00C();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240915118, 0, 0);
}

uint64_t sub_240915118()
{
  v1 = v0[5];
  if (!v1 || (v0[4] = v1, v2 = v1, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820), !swift_dynamicCast()))
  {
    v18 = v0[7];
    sub_240A2AE9C();
    v19 = v18;
    v20 = sub_240A2AFFC();
    v21 = sub_240A2C28C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = v0[7];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v19;
      *v24 = v22;
      v25 = v19;
      _os_log_impl(&dword_2408FE000, v20, v21, "Shield setup did finish with result: %@.", v23, 0xCu);
      sub_240915C68(v24);
      MEMORY[0x245CCDDB0](v24, -1, -1);
      MEMORY[0x245CCDDB0](v23, -1, -1);
    }

    v27 = v0[9];
    v26 = v0[10];
    v28 = v0[8];

    (*(v27 + 8))(v26, v28);
    sub_240A2C21C();
    v0[16] = sub_240A2C20C();
    v14 = sub_240A2C1BC();
    v16 = v29;
    v17 = sub_24091568C;
    goto LABEL_10;
  }

  v3 = v0[2];
  v4 = v0[3];
  v0[13] = v3;
  v0[14] = v4;
  if (v4)
  {
    sub_240A2AE9C();
    sub_240915CD0(v3, v4);
    v5 = sub_240A2AFFC();
    v6 = sub_240A2C2AC();
    sub_240915CE4(v3, v4);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      sub_240915CF8();
      swift_allocError();
      *v9 = v3;
      v9[1] = v4;
      sub_240915CD0(v3, v4);
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_2408FE000, v5, v6, "Shield setup did finish with error: %@.", v7, 0xCu);
      sub_240915C68(v8);
      MEMORY[0x245CCDDB0](v8, -1, -1);
      MEMORY[0x245CCDDB0](v7, -1, -1);
    }

    v11 = v0[11];
    v12 = v0[8];
    v13 = v0[9];

    (*(v13 + 8))(v11, v12);
    sub_240A2C21C();
    v0[15] = sub_240A2C20C();
    v14 = sub_240A2C1BC();
    v16 = v15;
    v17 = sub_240915564;
LABEL_10:

    return MEMORY[0x2822009F8](v17, v14, v16);
  }

  sub_240A2AE9C();
  v30 = sub_240A2AFFC();
  v31 = sub_240A2C28C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_2408FE000, v30, v31, "Starting adult/teen creation flow.", v32, 2u);
    MEMORY[0x245CCDDB0](v32, -1, -1);
  }

  v33 = v0[12];
  v34 = v0[8];
  v35 = v0[9];

  (*(v35 + 8))(v33, v34);
  sub_240913F28();
  sub_240915CE4(v3, 0);

  v36 = v0[1];

  return v36();
}

uint64_t sub_240915564()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];

    v2 = sub_240915610;
  }

  else
  {
    v2 = sub_24091635C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_240915610()
{
  sub_240915CE4(v0[13], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24091568C()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }

  v3 = *(v0 + 8);

  return v3();
}

id sub_240915984(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionsCreateAccountController_aidaSignInController] = 0;
  *&v1[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionsCreateAccountController_signInSettings] = a1;
  v4 = objc_opt_self();

  result = [v4 defaultStore];
  if (result)
  {
    v6 = result;
    v7 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

    *&v1[OBJC_IVAR____TtC14AppleIDSetupUI36SignInOptionsCreateAccountController_aidaOwnersManager] = v7;
    v8.receiver = v1;
    v8.super_class = ObjectType;
    return objc_msgSendSuper2(&v8, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_240915A6C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CF0380]) init];
  [v2 setAuthenticationType_];
  [v2 setNeedsNewAppleID_];
  [v2 setFirstTimeLogin_];
  [v2 setServiceType_];
  [v2 setShouldUpdatePersistentServiceTokens_];
  [v2 setSupportsPiggybacking_];
  [v2 setNeedsCredentialRecovery_];
  [v2 setPresentingViewController_];
  [v2 setForceInlinePresentation_];
  v3 = [objc_allocWithZone(MEMORY[0x277CF02A8]) initWithAgeRange_];
  [v2 setProtoAccountContext_];

  return v2;
}

uint64_t sub_240915BA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_240916360;

  return sub_24091503C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_240915C68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B730, &qword_240A30CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_240915CD0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

uint64_t sub_240915CE4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 6)
  {
  }

  return result;
}

unint64_t sub_240915CF8()
{
  result = qword_27E50EEF0;
  if (!qword_27E50EEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EEF0);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_240915D9C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_240915E50;

  return sub_240914DE4(v2, v3, v4);
}

uint64_t sub_240915E50()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_240915F44()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_240916360;

  return sub_240A0AED4(v2, v3, v4);
}

uint64_t sub_240916004(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_240916360;

  return sub_240A0AFBC(a1, v4, v5, v6);
}

uint64_t sub_2409160D0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_240916360;

  return sub_240916368(v2);
}

uint64_t objectdestroy_23Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2409161BC()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_240916360;

  return sub_240916364(v2);
}

uint64_t sub_240916268()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_240916360;

  return sub_24091447C(v2, v3);
}

uint64_t objectdestroy_13Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_24091636C(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B5A0, &unk_240A30A50);
  v58 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v56 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DA90, &qword_240A30970);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v56 - v12);
  v14 = OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_shouldShowPasswordField;
  p_inst_meths = &OBJC_PROTOCOL___FAURLProvider.inst_meths;
  v16 = OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_usernameField;
  v17 = (&OBJC_PROTOCOL___FAURLProvider + 24);
  if (a1[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_shouldShowPasswordField] == 1)
  {
    v18 = *&a1[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_usernameField];
    if (v18)
    {
      v19 = [v18 text];
      if (v19)
      {
        v20 = v19;
        v57 = sub_240A2BF4C();
        v22 = v21;

        v17 = &OBJC_PROTOCOL___FAURLProvider.inst_meths;
        v23 = *&a1[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_passwordField];
        if (v23 && (v56 = v22, (v24 = [v23 text]) != 0))
        {
          v25 = v24;
          v26 = sub_240A2BF4C();
          v28 = v27;

          v59 = v26;
          v60 = v28;
          sub_240A29CEC();
          v29 = v58;
          v30 = *(v58 + 32);
          v30(v7, v5, v2);
          v31 = HIBYTE(v56) & 0xF;
          if ((v56 & 0x2000000000000000) == 0)
          {
            v31 = v57 & 0xFFFFFFFFFFFFLL;
          }

          if (v31)
          {
            v32 = v30;
            sub_240A29CFC();
            v34 = v59;
            v33 = v60;

            v35 = HIBYTE(v33) & 0xF;
            if ((v33 & 0x2000000000000000) == 0)
            {
              v35 = v34 & 0xFFFFFFFFFFFFLL;
            }

            if (v35)
            {
              v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B5A8, &unk_240A30A60) + 48);
              v37 = v56;
              *v13 = v57;
              v13[1] = v37;
              v32(v13 + v36, v7, v2);
              v38 = *MEMORY[0x277CEDB30];
              v39 = sub_240A2A4DC();
              v40 = *(v39 - 8);
              (*(v40 + 104))(v13, v38, v39);
              (*(v40 + 56))(v13, 0, 1, v39);
              v17 = (&OBJC_PROTOCOL___FAURLProvider + 24);
              p_inst_meths = (&OBJC_PROTOCOL___FAURLProvider + 24);
              goto LABEL_28;
            }

            (*(v58 + 8))(v7, v2);
          }

          else
          {
            (*(v29 + 8))(v7, v2);
          }

          v17 = &OBJC_PROTOCOL___FAURLProvider.inst_meths;
        }

        else
        {
        }
      }
    }

    p_inst_meths = &OBJC_PROTOCOL___FAURLProvider.inst_meths;
    if (a1[v14])
    {
      goto LABEL_27;
    }

    v16 = OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_usernameField;
  }

  v41 = *&a1[v16];
  if (v41)
  {
    v42 = [v41 text];
    if (v42)
    {
      v43 = v42;
      v44 = sub_240A2BF4C();
      v46 = v45;

      v47 = HIBYTE(v46) & 0xF;
      if ((v46 & 0x2000000000000000) == 0)
      {
        v47 = v44 & 0xFFFFFFFFFFFFLL;
      }

      if (v47)
      {
        *v13 = v44;
        v13[1] = v46;
        v48 = *MEMORY[0x277CEDB28];
        v49 = sub_240A2A4DC();
        v50 = *(v49 - 8);
        (*(v50 + 104))(v13, v48, v49);
        (*(v50 + 56))(v13, 0, 1, v49);
        goto LABEL_28;
      }
    }
  }

LABEL_27:
  v51 = sub_240A2A4DC();
  (*(*(v51 - 8) + 56))(v13, 1, 1, v51);
LABEL_28:
  type metadata accessor for LoginCard(0);
  sub_240919298(v13, v11, &unk_27E50DA90, &qword_240A30970);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B550, qword_240A30930);
  sub_240A2BCFC();
  sub_240919300(v13, &unk_27E50DA90, &qword_240A30970);
  v52 = *(p_inst_meths[164] + a1);
  if (!v52)
  {
    __break(1u);
    goto LABEL_33;
  }

  [v52 setEnabled_];
  v53 = *(v17[165] + a1);
  if (!v53)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  [v53 setEnabled_];
  v54 = *&a1[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_continueAction];
  if (v54)
  {
    [v54 setEnabled_];
    v55 = sub_240A2BF1C();
    [a1 showActivityIndicatorWithStatus_];

    return;
  }

LABEL_34:
  __break(1u);
}

void sub_24091691C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DAA0, &qword_240A35430);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v56 - v8;
  v10 = *(a1 + OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_continueAction);
  if (!v10)
  {
    __break(1u);
    return;
  }

  v11 = OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_shouldShowPasswordField;
  p_inst_meths = &OBJC_PROTOCOL___FAURLProvider.inst_meths;
  v13 = *(a1 + OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_usernameField);
  if (*(a1 + OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_shouldShowPasswordField) != 1)
  {
    if (v13)
    {
      v28 = v10;
      v29 = [v13 text];
      if (v29)
      {
        v30 = v29;
        v31 = sub_240A2BF4C();
        v33 = v32;

        v34 = HIBYTE(v33) & 0xF;
        v35 = v31 & 0xFFFFFFFFFFFFLL;
        v36 = (v33 & 0x2000000000000000) == 0;
        goto LABEL_14;
      }

LABEL_18:
      v37 = 0;
      goto LABEL_19;
    }

LABEL_17:
    v38 = v10;
    goto LABEL_18;
  }

  if (!v13)
  {
    goto LABEL_17;
  }

  v14 = v10;
  v15 = [v13 text];
  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = v15;
  v17 = sub_240A2BF4C();
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    v37 = 0;
    p_inst_meths = (&OBJC_PROTOCOL___FAURLProvider + 24);
    goto LABEL_19;
  }

  v21 = *(a1 + OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_passwordField);
  p_inst_meths = (&OBJC_PROTOCOL___FAURLProvider + 24);
  if (v21 && (v22 = [v21 text]) != 0)
  {
    v23 = v22;
    v24 = sub_240A2BF4C();
    v26 = v25;

    v58 = v24;
    v59 = v26;
    p_inst_meths = (&OBJC_PROTOCOL___FAURLProvider + 24);
    sub_240A29CEC();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B5A0, &unk_240A30A50);
    (*(*(v27 - 8) + 56))(v9, 0, 1, v27);
  }

  else
  {
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B5A0, &unk_240A30A50);
    (*(*(v52 - 8) + 56))(v9, 1, 1, v52);
  }

  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B5A0, &unk_240A30A50);
  if ((*(*(v53 - 8) + 48))(v9, 1, v53))
  {
    sub_240919300(v9, &qword_27E50DAA0, &qword_240A35430);
    v37 = 0;
    goto LABEL_19;
  }

  sub_240A29CFC();
  v55 = v58;
  v54 = v59;
  sub_240919300(v9, &qword_27E50DAA0, &qword_240A35430);

  v34 = HIBYTE(v54) & 0xF;
  v35 = v55 & 0xFFFFFFFFFFFFLL;
  v36 = (v54 & 0x2000000000000000) == 0;
LABEL_14:
  if (v36)
  {
    v34 = v35;
  }

  v37 = v34 != 0;
LABEL_19:
  [v10 setEnabled_];

  if (*(a1 + v11) != 1)
  {
    return;
  }

  v39 = *(p_inst_meths[164] + a1);
  if (v39 && (v40 = [v39 text]) != 0)
  {
    v41 = v40;
    sub_240A2BF4C();

    v42 = sub_240A2C08C();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  v45 = *(v2 + 8);
  v58 = *v2;
  v59 = v45;
  v60 = *(v2 + 16);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B598, &qword_240A30A48);
  MEMORY[0x245CCC9B0](&v56, v46);
  if (!v44)
  {
    if (!v57)
    {
      return;
    }

    goto LABEL_30;
  }

  if (!v57)
  {
LABEL_30:

LABEL_31:
    v47 = v2 + *(type metadata accessor for LoginCard(0) + 28);
    v48 = *v47;
    v49 = *(v47 + 8);
    LOBYTE(v47) = *(v47 + 16);
    v58 = v48;
    v59 = v49;
    LOBYTE(v60) = v47;
    LOBYTE(v56) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
    sub_240A2BCFC();
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B5A0, &unk_240A30A50);
    (*(*(v50 - 8) + 56))(v7, 1, 1, v50);
    sub_2409178E4(v7);
    return;
  }

  if (v42 == v56 && v44 == v57)
  {

    return;
  }

  v51 = sub_240A2C66C();

  if ((v51 & 1) == 0)
  {
    goto LABEL_31;
  }
}

void sub_240916E28()
{
  v1 = v0;
  v56 = sub_240A29DBC();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v53 = (&v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for LoginCard(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v7;
  MEMORY[0x28223BE20](v6);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DAA0, &qword_240A35430);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v49 - v13;
  v15 = *(v0 + 8);
  aBlock = *v0;
  v60 = v15;
  v61 = *(v0 + 16);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B598, &qword_240A30A48);
  MEMORY[0x245CCC9B0](v64, v16);
  v50 = v64[1];
  v51 = v64[0];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B548, &qword_240A30928);
  MEMORY[0x245CCC9B0](v17);
  v18 = v0 + *(v4 + 36);
  v19 = *v18;
  v20 = *(v18 + 8);
  LOBYTE(v18) = *(v18 + 16);
  aBlock = v19;
  v60 = v20;
  LOBYTE(v61) = v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  MEMORY[0x245CCC9B0](v64, v21);
  v22 = LOBYTE(v64[0]);
  v58 = v11;
  sub_240918C30(v1, v11);
  v23 = *(v5 + 80);
  v24 = (v23 + 16) & ~v23;
  v57 = v9;
  v55 = v23;
  v25 = swift_allocObject();
  sub_240918C94(v11, v25 + v24);
  sub_240918C30(v1, v8);
  v26 = swift_allocObject();
  sub_240918C94(v8, v26 + v24);
  v27 = objc_allocWithZone(type metadata accessor for LoginCard.ContentViewController());
  v28 = sub_240917AAC(v51, v50, v14, v22, sub_240918CF8, v25, sub_240919000, v26);
  sub_240A2C06C();
  v29 = sub_240A2BF1C();

  [v28 setTitle_];

  v30 = v28;
  sub_240A2C06C();
  v31 = sub_240A2BF1C();

  [v30 setSubtitle_];

  [v30 setDismissalType_];
  v52 = v1;
  v32 = v53;
  sub_240945D78(v53);
  sub_240A2C00C();
  v33 = *(v54 + 8);
  v34 = v56;
  v33(v32, v56);
  v35 = sub_240A2BF1C();

  sub_240945D78(v32);
  sub_240A2C00C();
  v33(v32, v34);
  v36 = sub_240A2BF1C();

  sub_240A2C01C();
  v37 = sub_240A2BF1C();

  sub_240A2C01C();
  v38 = sub_240A2BF1C();

  v39 = [v30 dismissalConfirmationActionWithTitle:v35 message:v36 confirmButtonTitle:v37 cancelButtonTitle:v38];

  [v30 setDismissButtonAction_];
  sub_240A2C06C();
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = v58;
  sub_240918C30(v52, v58);
  v42 = (v55 + 24) & ~v55;
  v43 = swift_allocObject();
  *(v43 + 16) = v40;
  sub_240918C94(v41, v43 + v42);

  v44 = sub_240A2BF1C();

  v62 = sub_240919064;
  v63 = v43;
  aBlock = MEMORY[0x277D85DD0];
  v60 = 1107296256;
  *&v61 = sub_2409DFF20;
  *(&v61 + 1) = &block_descriptor_0;
  v45 = _Block_copy(&aBlock);
  v46 = [objc_opt_self() actionWithTitle:v44 style:0 handler:v45];

  _Block_release(v45);

  v47 = *&v30[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_continueAction];
  *&v30[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_continueAction] = v46;
  v48 = v46;

  if (v48)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_24091752C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_24091636C(Strong);
  }
}

id sub_240917584(_BYTE *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DA90, &qword_240A30970);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = (v1 + *(type metadata accessor for LoginCard(0) + 28));
  v7 = *v6;
  v8 = v6[1];
  LOBYTE(v6) = *(v6 + 16);
  v18 = v7;
  v19 = v8;
  v20 = v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B590, &qword_240A30A40);
  MEMORY[0x245CCC9B0]((&v17 + 7), v9);
  v10 = HIBYTE(v17);
  a1[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_shouldShowPasswordField] = HIBYTE(v17);
  v11 = OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_passwordField;
  v12 = *&a1[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_passwordField];
  if (v12)
  {
    [v12 setHidden_];
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B550, qword_240A30930);
  MEMORY[0x245CCC9B0](v13);
  v14 = sub_240A2A4DC();
  v15 = (*(*(v14 - 8) + 48))(v5, 1, v14);
  result = sub_240919300(v5, &unk_27E50DA90, &qword_240A30970);
  if (v15 == 1)
  {
    result = *&a1[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_usernameField];
    if (result)
    {
      [result setEnabled_];
      result = *&a1[v11];
      if (result)
      {
        [result setEnabled_];
        return [a1 hideActivityIndicator];
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2409177A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240918BEC(&qword_27E50B588, &unk_240A30978);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_240917820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_240918BEC(&qword_27E50B588, &unk_240A30978);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2409178A0(uint64_t a1)
{
  sub_240918BEC(&qword_27E50B588, &unk_240A30978);
  sub_240A2B7CC();
  __break(1u);
}

uint64_t sub_2409178E4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DAA0, &qword_240A35430);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_passwordField);
  if (v6)
  {
    sub_240919298(a1, v5, &qword_27E50DAA0, &qword_240A35430);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B5A0, &unk_240A30A50);
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v5, 1, v7) == 1)
    {
      v9 = v6;
      sub_240919300(v5, &qword_27E50DAA0, &qword_240A35430);
      v10 = 0;
    }

    else
    {
      v9 = v6;
      sub_240A29CFC();
      (*(v8 + 8))(v5, v7);
      v10 = sub_240A2BF1C();
    }

    [v9 setText_];
  }

  return sub_240919300(a1, &qword_27E50DAA0, &qword_240A35430);
}

char *sub_240917AAC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50DAA0, &qword_240A35430);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v46 - v17;
  *&v8[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_usernameField] = 0;
  *&v8[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_passwordField] = 0;
  *&v8[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_stackView] = 0;
  *&v8[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_continueAction] = 0;
  v19 = &v8[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_onChange];
  *v19 = a5;
  v19[1] = a6;
  v20 = &v8[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_onSubmit];
  *v20 = a7;
  v20[1] = a8;
  v47 = a4;
  v8[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_shouldShowPasswordField] = a4;
  v21 = type metadata accessor for LoginCard.ContentViewController();
  v56.receiver = v8;
  v56.super_class = v21;
  v46[0] = a6;

  v46[1] = a8;

  v22 = objc_msgSendSuper2(&v56, sel_initWithContentView_, 0);
  sub_2409190F0(&v57);
  v72 = v61;

  sub_240919300(&v72, &unk_27E50C3E0, &unk_240A30960);
  v79[0] = v57;
  v79[1] = v58;
  v79[2] = v59;
  v80 = v60;
  v81 = a1;
  v83 = v62;
  v82 = a2;
  v84 = v63;
  v85[0] = v57;
  v85[1] = v58;
  v85[2] = v59;
  v86 = v60;
  v87 = a1;
  v88 = a2;
  v90 = v63;
  v89 = v62;
  sub_240919230(v79, v73);
  sub_240919268(v85);
  v23 = [objc_allocWithZone(MEMORY[0x277D43378]) init];
  sub_240918680(v23);
  sub_240919268(v79);
  sub_2409194E8(0, &qword_27E50D8D0, 0x277D750C8);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = sub_240A2C39C();
  [v23 addAction:v24 forControlEvents:983040];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = sub_240A2C39C();
  [v23 addAction:v25 forControlEvents:0x2000];

  v26 = OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_usernameField;
  v27 = *&v22[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_usernameField];
  *&v22[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_usernameField] = v23;

  sub_240919298(v48, v18, &qword_27E50DAA0, &qword_240A35430);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B5A0, &unk_240A30A50);
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v18, 1, v28) == 1)
  {
    sub_240919300(v18, &qword_27E50DAA0, &qword_240A35430);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    sub_240A29CFC();
    v31 = *(&v73[0] + 1);
    v30 = *&v73[0];
    (*(v29 + 8))(v18, v28);
  }

  sub_240919360(&v64);
  v71 = v68;
  sub_240919300(&v71, &unk_27E50C3E0, &unk_240A30960);
  v50[0] = v64;
  v50[1] = v65;
  v50[2] = v66;
  v54 = v69;
  v73[1] = v65;
  v73[2] = v66;
  v73[0] = v64;
  v74 = v67;
  v75 = v30;
  v77 = v69;
  v76 = v31;
  v78 = v70;
  v51 = v67;
  v52 = v30;
  v55 = v70;
  v53 = v31;
  sub_240919230(v73, &v49);
  sub_240919268(v50);
  v32 = [objc_allocWithZone(MEMORY[0x277D43378]) init];
  sub_240918680(v32);
  sub_240919268(v73);
  [v32 setHidden_];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = sub_240A2C39C();
  [v32 addAction:v33 forControlEvents:983040];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = sub_240A2C39C();
  [v32 addAction:v34 forControlEvents:0x2000];

  v35 = OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_passwordField;
  v36 = *&v22[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_passwordField];
  *&v22[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_passwordField] = v32;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  result = swift_allocObject();
  *(result + 1) = xmmword_240A308E0;
  v38 = *&v22[v26];
  if (v38)
  {
    v39 = result;
    *(result + 4) = v38;
    v40 = *&v22[v35];
    if (v40)
    {
      v41 = v38;
      v42 = v40;

      *(v39 + 40) = v42;
      sub_240918234(v39);
      v44 = v43;

      sub_240919300(v48, &qword_27E50DAA0, &qword_240A35430);
      v45 = *&v22[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_stackView];
      *&v22[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_stackView] = v44;

      return v22;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_2409181B0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *&result[*a3];
    v6 = result;

    v5(v6);
  }

  return result;
}

void sub_240918234(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_2409194E8(0, &qword_27E50B5B0, 0x277D75D18);
  v3 = sub_240A2C15C();
  v4 = [v2 initWithArrangedSubviews_];

  v5 = OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_stackView;
  v6 = *&v1[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_stackView];
  *&v1[OBJC_IVAR____TtCV14AppleIDSetupUI9LoginCard21ContentViewController_stackView] = v4;
  v7 = v4;

  if (!v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  [v7 setAxis_];

  v8 = *&v1[v5];
  if (!v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v8 setAlignment_];
  v9 = *&v1[v5];
  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v9 setSpacing_];
  v10 = *&v1[v5];
  if (!v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v10 setDistribution_];
  v11 = *&v1[v5];
  if (!v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v12 = [v1 contentView];
  if (!*&v1[v5])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = v12;
  [v12 addSubview_];

  v14 = [v1 contentView];
  v15 = [v14 mainContentGuide];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_240A308F0;
  v17 = *&v1[v5];
  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = [v17 topAnchor];
  v19 = [v15 topAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v16 + 32) = v20;
  v21 = *&v1[v5];
  if (!v21)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v22 = [v21 bottomAnchor];
  v23 = [v15 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v16 + 40) = v24;
  v25 = *&v1[v5];
  if (!v25)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v26 = [v25 centerXAnchor];
  v27 = [v15 centerXAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v16 + 48) = v28;
  v29 = *&v1[v5];
  if (!v29)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v30 = [v29 centerYAnchor];
  v31 = [v15 centerYAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v16 + 56) = v32;
  v33 = *&v1[v5];
  if (!v33)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v34 = objc_opt_self();
  v35 = [v33 widthAnchor];
  v36 = [v15 widthAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v16 + 64) = v37;
  sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
  v38 = sub_240A2C15C();

  [v34 activateConstraints_];

  v39 = *&v1[v5];
  if (v39)
  {
    v39;

    return;
  }

LABEL_25:
  __break(1u);
}

void sub_240918680(void *a1)
{
  [a1 setTextContentType_];
  [a1 setAutocorrectionType_];
  [a1 setAutocapitalizationType_];
  [a1 setSecureTextEntry_];
  [a1 setEnablesReturnKeyAutomatically_];
  [a1 setReturnKeyType_];
  [a1 setFont_];
  [a1 setBackgroundColor_];
  if (*(v1 + 80))
  {
    v3 = sub_240A2BF1C();
  }

  else
  {
    v3 = 0;
  }

  [a1 setPlaceholder_];

  if (*(v1 + 64))
  {
    v4 = sub_240A2BF1C();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [a1 setText_];
}

id sub_2409187F4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LoginCard.ContentViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for LoginCard(uint64_t a1)
{
  result = qword_27E50B558;
  if (!qword_27E50B558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_240918954(uint64_t a1)
{
  sub_240918AB0(319, &qword_27E50B568, &unk_27E50C3E0, &unk_240A30960);
  if (v1 <= 0x3F)
  {
    sub_240918AB0(319, &qword_27E50B570, &qword_27E50DAA0, &qword_240A35430);
    if (v2 <= 0x3F)
    {
      sub_240918AB0(319, &qword_27E50B578, &unk_27E50DA90, &qword_240A30970);
      if (v3 <= 0x3F)
      {
        sub_240918B04();
        if (v4 <= 0x3F)
        {
          sub_240918B54(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
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

void sub_240918AB0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_240A2BD4C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_240918B04()
{
  if (!qword_27E50B580)
  {
    v0 = sub_240A2BD4C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E50B580);
    }
  }
}

void sub_240918B54(uint64_t a1)
{
  if (!qword_27E50BD80)
  {
    sub_240A29DBC();
    v1 = sub_240A2B1DC();
    if (!v2)
    {
      atomic_store(v1, &qword_27E50BD80);
    }
  }
}

uint64_t sub_240918BEC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LoginCard(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_240918C30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LoginCard(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240918C94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LoginCard(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for LoginCard(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[5];

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B548, &qword_240A30928) + 32);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B5A0, &unk_240A30A50);
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v6 + v7, 1, v8))
  {
    (*(v9 + 8))(v6 + v7, v8);
  }

  v10 = v5 + v1[6];

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B550, qword_240A30930) + 32);
  v12 = sub_240A2A4DC();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v10 + v11, 1, v12))
  {
    (*(v13 + 8))(v10 + v11, v12);
  }

  v14 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_240A29DBC();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_240919064(uint64_t a1)
{
  type metadata accessor for LoginCard(0);
  v3 = *(v1 + 16);

  sub_24091752C(a1, v3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_2409190F0@<D0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D77090];
  v3 = objc_opt_self();
  v4 = *MEMORY[0x277D76918];
  v5 = objc_allocWithZone(MEMORY[0x277D75520]);
  v6 = v2;
  v7 = [v5 initForTextStyle_];
  [v7 scaledValueForValue_];
  v9 = v8;

  v10 = [v3 systemFontOfSize:v9 weight:*MEMORY[0x277D74410]];
  v11 = [objc_opt_self() secondarySystemBackgroundColor];
  v12 = sub_240A2C06C();
  *a1 = v6;
  *&result = 1;
  *(a1 + 8) = xmmword_240A30900;
  *(a1 + 24) = 256;
  *(a1 + 32) = 4;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = v12;
  *(a1 + 80) = v14;
  *(a1 + 88) = 0;
  return result;
}

uint64_t sub_240919298(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_240919300(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_240919360@<D0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D77030];
  v3 = objc_opt_self();
  v4 = *MEMORY[0x277D76918];
  v5 = objc_allocWithZone(MEMORY[0x277D75520]);
  v6 = v2;
  v7 = [v5 initForTextStyle_];
  [v7 scaledValueForValue_];
  v9 = v8;

  v10 = [v3 systemFontOfSize:v9 weight:*MEMORY[0x277D74410]];
  v11 = [objc_opt_self() secondarySystemBackgroundColor];
  v12 = sub_240A2C06C();
  *a1 = v6;
  *&result = 1;
  *(a1 + 8) = xmmword_240A30900;
  *(a1 + 24) = 257;
  *(a1 + 32) = 4;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = v12;
  *(a1 + 80) = v14;
  *(a1 + 88) = 0;
  return result;
}

uint64_t sub_2409194E8(uint64_t a1, unint64_t *a2, void *a3)
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

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_24091954C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_240919594(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_240919608(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_240919658(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2409196AC(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2409196C4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void *sub_2409196FC@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B5B8, &qword_240A30BB8);
  result = sub_240A2BC5C();
  *a1 = v3;
  return result;
}

id sub_240919760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AISAppleIDAuthContextProvider();
  v22[3] = v8;
  v22[4] = &off_285291700;
  v22[0] = a1;
  v9 = type metadata accessor for AISSignInViewModel();
  v10 = objc_allocWithZone(v9);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v22, v8);
  MEMORY[0x28223BE20](v11);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v21[3] = v8;
  v21[4] = &off_285291700;
  v21[0] = v15;
  v16 = OBJC_IVAR____TtC14AppleIDSetupUI18AISSignInViewModel_selectedMember;
  *&v10[OBJC_IVAR____TtC14AppleIDSetupUI18AISSignInViewModel_selectedMember] = 0;
  sub_240919A14(v21, &v10[OBJC_IVAR____TtC14AppleIDSetupUI18AISSignInViewModel_contextProvider]);
  v17 = &v10[OBJC_IVAR____TtC14AppleIDSetupUI18AISSignInViewModel_step];
  *v17 = a2;
  *(v17 + 1) = a4;
  *&v10[v16] = a3;
  v20.receiver = v10;
  v20.super_class = v9;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v21);
  __swift_destroy_boxed_opaque_existential_0(v22);
  return v18;
}

uint64_t sub_2409198E8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for AISAppleIDAuthContextProvider();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC14AppleIDSetupUI29AISAppleIDAuthContextProvider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC14AppleIDSetupUI29AISAppleIDAuthContextProvider_presentingViewController] = a2;
  v10.receiver = v5;
  v10.super_class = v4;
  v6 = a2;
  v7 = objc_msgSendSuper2(&v10, sel_init);

  sub_240919760(v7, a1, 0, &protocol witness table for AISFlowStepParentSignIn);
  type metadata accessor for AISSignInViewModel();
  sub_240A2BC4C();

  return v9;
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

uint64_t sub_240919A14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_240919A78(uint64_t *a1, int a2)
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

uint64_t sub_240919AC0(uint64_t result, int a2, int a3)
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

unint64_t sub_240919B28()
{
  result = qword_27E50B5C0;
  if (!qword_27E50B5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B5C0);
  }

  return result;
}

uint64_t type metadata accessor for FamilyRepairView(uint64_t a1)
{
  result = qword_27E50B5E0;
  if (!qword_27E50B5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_240919BF0(uint64_t a1)
{
  sub_240919D0C(319);
  if (v1 <= 0x3F)
  {
    sub_240919D70(319, &qword_27E50B5F8, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_240A2A46C();
      if (v3 <= 0x3F)
      {
        sub_240919D70(319, &qword_27E50B600, MEMORY[0x277CED748], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_240919DC0();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_240919D0C(uint64_t a1)
{
  if (!qword_27E50B5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50D910, qword_240A35F80);
    v1 = sub_240A2B1DC();
    if (!v2)
    {
      atomic_store(v1, &qword_27E50B5F0);
    }
  }
}

void sub_240919D70(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_240919DC0()
{
  result = qword_27E50B608;
  if (!qword_27E50B608)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27E50B608);
  }

  return result;
}

uint64_t sub_240919E2C()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50B5C8);
  __swift_project_value_buffer(v0, qword_27E50B5C8);
  return sub_240A2AE7C();
}

void sub_240919E78(void *a1, uint64_t a2, void *a3)
{
  v57 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v51 - v6;
  v8 = sub_240A2B52C();
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x28223BE20](v8);
  v54 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for FamilyRepairView(0);
  v61 = *(v59 - 8);
  v10 = *(v61 + 64);
  v11 = MEMORY[0x28223BE20](v59);
  v12 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - v13;
  if (qword_27E50AEB0 != -1)
  {
    swift_once();
  }

  v15 = sub_240A2B00C();
  v16 = __swift_project_value_buffer(v15, qword_27E50B5C8);
  v17 = sub_240A2AFFC();
  v18 = sub_240A2C29C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2408FE000, v17, v18, "Creating context for family repair", v19, 2u);
    MEMORY[0x245CCDDB0](v19, -1, -1);
  }

  sub_24091C54C(a2, v14, type metadata accessor for FamilyRepairView);
  v20 = a1;
  v21 = sub_240A2AFFC();
  v22 = sub_240A2C29C();

  v23 = os_log_type_enabled(v21, v22);
  v60 = v16;
  v58 = v20;
  if (v23)
  {
    v51 = v10;
    v52 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v53 = a2;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136315394;
    swift_getObjectType();
    v26 = sub_240A2C7BC();
    v28 = sub_240925464(v26, v27, aBlock);

    *(v24 + 4) = v28;
    *(v24 + 12) = 1024;
    v29 = *(v14 + 2);
    if (v14[24] != 1)
    {

      sub_240A2C2BC();
      v30 = v7;
      v31 = sub_240A2B84C();
      sub_240A2AFEC();

      v7 = v30;
      v32 = v54;
      sub_240A2B51C();
      swift_getAtKeyPath();
      sub_24090C1E4(v29, 0);
      (*(v55 + 8))(v32, v56);
      LOBYTE(v29) = v62;
    }

    sub_24091C5EC(v14, type metadata accessor for FamilyRepairView);
    *(v24 + 14) = v29 & 1;
    _os_log_impl(&dword_2408FE000, v21, v22, "FamilyRepairView viewController type: %s (teenSetup: %{BOOL}d)", v24, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x245CCDDB0](v25, -1, -1);
    MEMORY[0x245CCDDB0](v24, -1, -1);

    v12 = v52;
    a2 = v53;
  }

  else
  {
    sub_24091C5EC(v14, type metadata accessor for FamilyRepairView);
  }

  v33 = [objc_allocWithZone(MEMORY[0x277D083B0]) initWithEventType_];
  v34 = sub_240A2A40C();
  if (v34)
  {
    aBlock[0] = v34;
    v35 = v34;
    sub_24091BF68(aBlock, v57, &v62);

    v36 = v62;
  }

  else
  {
    v36 = 0;
  }

  [v33 setAuthContext_];

  sub_24091A5CC();
  v37 = sub_240A2BE9C();

  [v33 setAdditionalParameters_];

  v38 = objc_allocWithZone(MEMORY[0x277D083B8]);
  v39 = [v38 initWithPresenter_];
  [v39 setPresentationType_];
  aBlock[4] = sub_24091A7D4;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2409EC704;
  aBlock[3] = &block_descriptor_1;
  v40 = _Block_copy(aBlock);
  [v39 setPresentationHandler_];
  _Block_release(v40);
  v41 = sub_240A2AFFC();
  v42 = sub_240A2C29C();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_2408FE000, v41, v42, "Launching performWithContext on FACircleStateController", v43, 2u);
    MEMORY[0x245CCDDB0](v43, -1, -1);
  }

  v44 = sub_240A2C24C();
  (*(*(v44 - 8) + 56))(v7, 1, 1, v44);
  sub_24091C54C(a2, v12, type metadata accessor for FamilyRepairView);
  sub_240A2C21C();
  v45 = v39;
  v46 = v33;
  v47 = sub_240A2C20C();
  v48 = (*(v61 + 80) + 48) & ~*(v61 + 80);
  v49 = swift_allocObject();
  v50 = MEMORY[0x277D85700];
  v49[2] = v47;
  v49[3] = v50;
  v49[4] = v45;
  v49[5] = v46;
  sub_24091C388(v12, v49 + v48);
  sub_2409230D4(0, 0, v7, &unk_240A30CD8, v49);
}

unint64_t sub_24091A5CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C640, &unk_240A30D00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240A30BE0;
  *(inited + 32) = 0x64497265626D656DLL;
  *(inited + 40) = 0xE800000000000000;
  v1 = sub_240A2A3BC();
  v2 = MEMORY[0x277D837D0];
  *(inited + 48) = v1;
  *(inited + 56) = v3;
  *(inited + 72) = v2;
  *(inited + 80) = 0x44495344746C61;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = sub_240A2A3EC();
  *(inited + 104) = v4;
  *(inited + 120) = v2;
  *(inited + 128) = 0x6574736575716572;
  *(inited + 136) = 0xE900000000000072;
  *(inited + 144) = sub_240A2A3DC();
  *(inited + 152) = v5;
  *(inited + 168) = v2;
  *(inited + 176) = 0xD000000000000010;
  *(inited + 184) = 0x8000000240A3A9F0;
  *(inited + 192) = sub_240A2AEBC();
  *(inited + 200) = v6;
  *(inited + 216) = v2;
  *(inited + 224) = 0xD000000000000017;
  *(inited + 232) = 0x8000000240A3AA10;
  v7 = sub_240A2A41C();
  *(inited + 264) = MEMORY[0x277D839B0];
  *(inited + 240) = v7 & 1;
  v8 = sub_240926374(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BB00, &unk_240A38260);
  swift_arrayDestroy();
  v9 = sub_240A2A3CC();
  if (v10)
  {
    if (qword_27E50AFE0 != -1)
    {
      v15 = v9;
      v16 = v10;
      swift_once();
      v10 = v16;
      v9 = v15;
    }

    v11 = qword_27E516380;
    v12 = *algn_27E516388;
    v19 = v2;
    *&v18 = v9;
    *(&v18 + 1) = v10;
    sub_24091C780(&v18, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2409F6038(v17, v11, v12, isUniquelyReferenced_nonNull_native);
  }

  return v8;
}

void sub_24091A7D4()
{
  if (qword_27E50AEB0 != -1)
  {
    swift_once();
  }

  v0 = sub_240A2B00C();
  __swift_project_value_buffer(v0, qword_27E50B5C8);
  oslog = sub_240A2AFFC();
  v1 = sub_240A2C29C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2408FE000, oslog, v1, "FACircleStateController presentationHandler called", v2, 2u);
    MEMORY[0x245CCDDB0](v2, -1, -1);
  }
}

uint64_t sub_24091A8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[19] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E50B658, &unk_240A30CF0);
  v6[22] = swift_task_alloc();
  v7 = sub_240A2A45C();
  v6[23] = v7;
  v6[24] = *(v7 - 8);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v8 = sub_240A2A46C();
  v6[28] = v8;
  v6[29] = *(v8 - 8);
  v6[30] = swift_task_alloc();
  sub_240A2C21C();
  v6[31] = sub_240A2C20C();
  v10 = sub_240A2C1BC();
  v6[32] = v10;
  v6[33] = v9;

  return MEMORY[0x2822009F8](sub_24091AA60, v10, v9);
}

uint64_t sub_24091AA60()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24091AB88;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C970, &unk_240A33630);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_240A271E4;
  v0[13] = &block_descriptor_11;
  v0[14] = v3;
  [v2 performWithContext:v1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24091AB88()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 256);

  return MEMORY[0x2822009F8](sub_24091AC90, v2, v1);
}

uint64_t sub_24091AC90()
{
  v58 = v0;

  v1 = v0[18];
  if (qword_27E50AEB0 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50B5C8);
  v3 = v1;
  v4 = sub_240A2AFFC();
  v5 = sub_240A2C29C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v57 = v55;
    *v6 = 136315138;
    v7 = v3;
    v8 = [v7 description];
    v9 = v3;
    v10 = sub_240A2BF4C();
    v12 = v11;

    v13 = v10;
    v3 = v9;
    v14 = sub_240925464(v13, v12, &v57);

    *(v6 + 4) = v14;
    _os_log_impl(&dword_2408FE000, v4, v5, "Received response %s from FACircleStateController", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x245CCDDB0](v55, -1, -1);
    MEMORY[0x245CCDDB0](v6, -1, -1);
  }

  v16 = v0[29];
  v15 = v0[30];
  v17 = v0[28];
  v18 = v0[21];
  v56 = type metadata accessor for FamilyRepairView(0);
  (*(v16 + 16))(v15, v18 + *(v56 + 28), v17);
  sub_240A2A3AC();
  if ([v3 loadSuccess])
  {
    v19 = sub_240A2AFFC();
    v20 = sub_240A2C29C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2408FE000, v19, v20, "Family repair succeeded", v21, 2u);
      MEMORY[0x245CCDDB0](v21, -1, -1);
    }
  }

  else
  {
    v22 = [v3 error];
    v23 = v0[27];
    v54 = v3;
    if (v22)
    {
      v24 = v0[26];
      v26 = v0[23];
      v25 = v0[24];
      sub_240A2A44C();
      (*(v25 + 32))(v23, v24, v26);
    }

    else
    {
      v27 = v0[23];
      v28 = v0[24];
      *v23 = 0xD000000000000031;
      v23[1] = 0x8000000240A3A9B0;
      (*(v28 + 104))(v23, *MEMORY[0x277CED980], v27);
    }

    v29 = v0[27];
    v31 = v0[24];
    v30 = v0[25];
    v33 = v0[22];
    v32 = v0[23];
    v34 = *(v31 + 16);
    v34(v33, v29, v32);
    (*(v31 + 56))(v33, 0, 1, v32);
    sub_240A2A43C();
    v34(v30, v29, v32);
    v35 = sub_240A2AFFC();
    v36 = sub_240A2C2AC();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[27];
    v39 = v0[24];
    v40 = v0[25];
    v41 = v0[23];
    if (v37)
    {
      v42 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v42 = 138412290;
      sub_24091CDE0(&qword_27E50DD20, MEMORY[0x277CED988], MEMORY[0x277CED990]);
      swift_allocError();
      v53 = v38;
      v34(v43, v40, v41);
      v44 = _swift_stdlib_bridgeErrorToNSError();
      v45 = *(v39 + 8);
      v45(v40, v41);
      *(v42 + 4) = v44;
      *v52 = v44;
      _os_log_impl(&dword_2408FE000, v35, v36, "Failed to perform family repair with error: %@", v42, 0xCu);
      sub_240915C68(v52);
      MEMORY[0x245CCDDB0](v52, -1, -1);
      MEMORY[0x245CCDDB0](v42, -1, -1);

      v45(v53, v41);
    }

    else
    {

      v46 = *(v39 + 8);
      v46(v40, v41);
      v46(v38, v41);
    }

    v3 = v54;
  }

  v48 = v0[29];
  v47 = v0[30];
  v49 = v0[28];
  (*(v0[21] + *(v56 + 36)))(v47);

  (*(v48 + 8))(v47, v49);

  v50 = v0[1];

  return v50();
}

double sub_24091B23C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v24 = a1;
  v25 = a3;
  v5 = type metadata accessor for FamilyRepairView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_240A2B52C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 16);
  if (*(v3 + 24) != 1)
  {

    sub_240A2C2BC();
    v14 = sub_240A2B84C();
    v23 = v3;
    v15 = a2;
    v16 = v14;
    sub_240A2AFEC();

    a2 = v15;
    v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v3 = v23;
    sub_240A2B51C();
    swift_getAtKeyPath();
    sub_24090C1E4(v13, 0);
    (*(v10 + 8))(v12, v9);
    if ((v31 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_24091C54C(v3, v8, type metadata accessor for FamilyRepairView);
    v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v18 = swift_allocObject();
    sub_24091C388(v8, v18 + v17);
    v26 = v24;
    v27 = a2;
    v28 = sub_24091C488;
    v29 = v18;
    v30 = 1;
    goto LABEL_6;
  }

  if (v13)
  {
    goto LABEL_5;
  }

LABEL_3:
  v26 = v24;
  v27 = a2;
  v28 = sub_24091B58C;
  v29 = 0;
  v30 = 0;
LABEL_6:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B610, &qword_240A30C70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B618, &qword_240A30C78);
  sub_24091CE28(&qword_27E50B620, &qword_27E50B610, &qword_240A30C70, &unk_240A30E00);
  sub_24091CE28(&qword_27E50B628, &qword_27E50B618, &qword_240A30C78, &unk_240A33440);
  sub_240A2B6EC();
  result = *&v31;
  v20 = v32;
  v21 = v33;
  v22 = v25;
  *v25 = v31;
  v22[1] = v20;
  *(v22 + 32) = v21;
  return result;
}

uint64_t sub_24091B590(uint64_t a1)
{
  type metadata accessor for FamilyRepairView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B630, &qword_240A30C80);
  sub_240A2BC5C();
  return sub_24091B610(v2);
}

uint64_t sub_24091B610(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDA0, &qword_240A30C88);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B638, &qword_240A30C90);
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  v10 = type metadata accessor for TeenSetupContinueOnParentOrGuardianView(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    *v12 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
    swift_storeEnumTagMultiPayload();
    sub_24091C54C(v12, v9, type metadata accessor for TeenSetupContinueOnParentOrGuardianView);
    swift_storeEnumTagMultiPayload();
    sub_24091CDE0(&unk_27E50BE90, type metadata accessor for TeenSetupContinueOnParentOrGuardianView, &unk_240A34008);
    sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88, MEMORY[0x277CDD7F8]);
    sub_240A2B6EC();
    return sub_24091C5EC(v12, type metadata accessor for TeenSetupContinueOnParentOrGuardianView);
  }

  else
  {
    v15[0] = sub_240A2C06C();
    v15[1] = v14;
    sub_24091C4F8();
    sub_240A2B24C();
    (*(v4 + 16))(v9, v6, v3);
    swift_storeEnumTagMultiPayload();
    sub_24091CDE0(&unk_27E50BE90, type metadata accessor for TeenSetupContinueOnParentOrGuardianView, &unk_240A34008);
    sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88, MEMORY[0x277CDD7F8]);
    sub_240A2B6EC();
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_24091B9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_24091BA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_24091BA9C(uint64_t a1)
{
  swift_getWitnessTable();
  sub_240A2B7CC();
  __break(1u);
}

double sub_24091BADC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v6 = sub_240945F78(*v2, *(v2 + 8));
  sub_24091C54C(v2, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FamilyRepairView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_24091C388(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *(v8 + ((v5 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v9 = v6;
  sub_24091B23C(sub_24091C3EC, v8, v13);

  v10 = v14;
  result = *v13;
  v12 = v13[1];
  *a2 = v13[0];
  *(a2 + 16) = v12;
  *(a2 + 32) = v10;
  return result;
}

void sub_24091BC38(void *a1)
{
  v2 = v1;
  v4 = [v2 companionDevice];
  if (v4 && (v5 = v4, v6 = [v4 linkType], v5, v6 == 3) || (v7 = objc_msgSend(v2, sel_proxiedDevice)) != 0 && (v8 = v7, v9 = objc_msgSend(v7, sel_linkType), v8, v9 == 3))
  {
    if (qword_27E50AEB0 != -1)
    {
      swift_once();
    }

    v10 = sub_240A2B00C();
    __swift_project_value_buffer(v10, qword_27E50B5C8);
    v11 = v2;
    v12 = a1;
    v13 = sub_240A2AFFC();
    v14 = sub_240A2C28C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = v17;
      *v15 = 138412546;
      *(v15 + 4) = v11;
      *v16 = v11;
      *(v15 + 12) = 2080;
      sub_240A29DEC();
      v18 = v11;
      v19 = v12;
      v20 = sub_240A2BF9C();
      v22 = sub_240925464(v20, v21, &v27);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_2408FE000, v13, v14, "%@: Applying anisette data provider: %s", v15, 0x16u);
      sub_240915C68(v16);
      MEMORY[0x245CCDDB0](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x245CCDDB0](v17, -1, -1);
      MEMORY[0x245CCDDB0](v15, -1, -1);
    }

    [v11 setAnisetteDataProvider_];
  }

  else
  {
    if (qword_27E50AEB0 != -1)
    {
      swift_once();
    }

    v23 = sub_240A2B00C();
    __swift_project_value_buffer(v23, qword_27E50B5C8);
    oslog = sub_240A2AFFC();
    v24 = sub_240A2C29C();
    if (os_log_type_enabled(oslog, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2408FE000, oslog, v24, "Neither companionDevice nor proxiedDevice is client-managed, skipping applying anisette data provider", v25, 2u);
      MEMORY[0x245CCDDB0](v25, -1, -1);
    }
  }
}

void sub_24091BF68(void **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  sub_2409194E8(0, &qword_27E50B648, 0x277CF0170);
  v6 = v5;
  v7 = sub_240A2C34C();
  if (qword_27E50AEB0 != -1)
  {
    swift_once();
  }

  v8 = sub_240A2B00C();
  __swift_project_value_buffer(v8, qword_27E50B5C8);
  v9 = v7;
  v10 = sub_240A2AFFC();
  v11 = sub_240A2C29C();

  if (os_log_type_enabled(v10, v11))
  {
    v31 = a3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_240925464(0xD000000000000011, 0x8000000240A3A970, &v33);
    *(v12 + 12) = 2080;
    [v9 proxiedDevice];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B650, &qword_240A30CE8);
    v14 = sub_240A2BF9C();
    v16 = sub_240925464(v14, v15, &v33);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_2408FE000, v10, v11, "%s ProxiedDevice: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CCDDB0](v13, -1, -1);
    v17 = v12;
    a3 = v31;
    MEMORY[0x245CCDDB0](v17, -1, -1);
  }

  if (a2)
  {
    v18 = v9;
    v19 = a2;
    v20 = sub_240A2AFFC();
    v21 = sub_240A2C29C();

    if (os_log_type_enabled(v20, v21))
    {
      v32 = a3;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v24;
      *v22 = 136315394;
      *(v22 + 4) = sub_240925464(0xD000000000000011, 0x8000000240A3A970, &v33);
      *(v22 + 12) = 2112;
      *(v22 + 14) = v18;
      *v23 = v18;
      v25 = v18;
      _os_log_impl(&dword_2408FE000, v20, v21, "%s Applying peerAnisetteClient (if needed) to %@", v22, 0x16u);
      sub_240915C68(v23);
      MEMORY[0x245CCDDB0](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x245CCDDB0](v24, -1, -1);
      v26 = v22;
      a3 = v32;
      MEMORY[0x245CCDDB0](v26, -1, -1);
    }

    sub_24091BC38(v19);
  }

  else
  {
    v27 = sub_240A2AFFC();
    v28 = sub_240A2C29C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v33 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_240925464(0xD000000000000011, 0x8000000240A3A970, &v33);
      _os_log_impl(&dword_2408FE000, v27, v28, "%s Missing peerAnisetteClient - unexpected state", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x245CCDDB0](v30, -1, -1);
      MEMORY[0x245CCDDB0](v29, -1, -1);
    }
  }

  *a3 = v9;
}

void sub_24091C37C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_24091C388(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FamilyRepairView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24091C3EC(void *a1)
{
  v3 = *(type metadata accessor for FamilyRepairView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_240919E78(a1, v1 + v4, v5);
}

uint64_t sub_24091C488()
{
  v1 = *(type metadata accessor for FamilyRepairView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24091B590(v2);
}

unint64_t sub_24091C4F8()
{
  result = qword_27E50BF70;
  if (!qword_27E50BF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50BF70);
  }

  return result;
}

uint64_t sub_24091C54C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24091C5EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24091C664(uint64_t a1)
{
  v4 = *(type metadata accessor for FamilyRepairView(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_240915E50;

  return sub_24091A8BC(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  return sub_240913DC0(a2 + 32, a1 + 32);
}

{
  return sub_240913DC0(a2 + 32, a1 + 32);
}

uint64_t block_destroy_helper_10(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

{
}

_OWORD *sub_24091C780(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
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

uint64_t sub_24091C7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24091C848(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_24091C890(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_24091C8E8()
{
  result = qword_27E50B6E0;
  if (!qword_27E50B6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B6E8, &qword_240A30D80);
    sub_24091CE28(&qword_27E50B620, &qword_27E50B610, &qword_240A30C70, &unk_240A30E00);
    sub_24091CE28(&qword_27E50B628, &qword_27E50B618, &qword_240A30C78, &unk_240A33440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B6E0);
  }

  return result;
}

id sub_24091C9E8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a1;
  v25 = a2;
  v10 = sub_240A2BE4C();
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_240A2BE6C();
  v27 = *(v13 - 8);
  v28 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  sub_240A2B60C();
  a3();
  v26 = sub_240A2B5DC();
  v17 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);
  v18 = sub_240A2C32C();
  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = a6;
  v20 = v25;
  v19[4] = v24;
  v19[5] = v20;
  v19[6] = a3;
  v19[7] = a4;
  v19[8] = v17;
  aBlock[4] = sub_24091CDB0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2409EC704;
  aBlock[3] = &block_descriptor_23;
  v21 = _Block_copy(aBlock);

  v22 = v17;

  sub_240A2BE5C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24091CDE0(&qword_27E50CF10, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EF90, &unk_240A30E50);
  sub_24091CE28(&qword_27E50CF20, &qword_27E50EF90, &unk_240A30E50, MEMORY[0x277D83970]);
  sub_240A2C3FC();
  MEMORY[0x245CCD000](0, v16, v12, v21);
  _Block_release(v21);

  (*(v29 + 8))(v12, v10);
  (*(v27 + 8))(v16, v28);
  return v22;
}

uint64_t sub_24091CDE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24091CE28(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t AISFlowStepChildCreate.stepLoadTask.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_stepLoadTask;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id AISFlowStepChildCreate.authResponse.getter()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_authResponse;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t AISFlowStepChildCreate.__allocating_init(authResponse:settings:stepLoadTask:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  swift_getObjectType();

  return sub_24091E02C(a1, a2, a3, v6);
}

uint64_t AISFlowStepChildCreate.init(authResponse:settings:stepLoadTask:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();

  return sub_24091E02C(a1, a2, a3, v3);
}

void sub_24091D0CC(void *a1)
{
  v2 = v1;
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setAppProvidedContext_];
  v8 = OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_authResponse;
  swift_beginAccess();
  v9 = *(v1 + v8);
  sub_240A2ABEC();
  v11 = v10;

  if (v11)
  {
    v12 = sub_240A2BF1C();
  }

  else
  {
    v12 = 0;
  }

  [a1 setAltDSID_];

  v13 = *(v2 + v8);
  sub_240A2AC5C();
  v15 = v14;

  if (v15)
  {
    v16 = sub_240A2BF1C();
  }

  else
  {
    v16 = 0;
  }

  [a1 setUsername_];

  [a1 setNeedsNewAppleID_];
  v17 = *(v2 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_settings);
  v18 = *(v17 + 16);
  v19 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  [a1 setRequestedNewAccountAgeRange_];
  [a1 setServiceType_];
  v20 = [objc_allocWithZone(MEMORY[0x277CF02A8]) init];
  v21 = *(v17 + 16);
  v22 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  [v20 setAgeRange_];
  sub_240A2AE9C();
  v23 = a1;
  v24 = sub_240A2AFFC();
  v25 = sub_240A2C2CC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v49 = v2;
    v28 = v8;
    v29 = v7;
    v30 = v20;
    v31 = v5;
    v32 = v4;
    v33 = v27;
    *v26 = 138412290;
    *(v26 + 4) = v23;
    *v27 = v23;
    v34 = v23;
    _os_log_impl(&dword_2408FE000, v24, v25, "Adding proto account context to bypass shielding for child/teen create: %@", v26, 0xCu);
    sub_240915C68(v33);
    v35 = v33;
    v4 = v32;
    v5 = v31;
    v20 = v30;
    v7 = v29;
    v8 = v28;
    v2 = v49;
    MEMORY[0x245CCDDB0](v35, -1, -1);
    MEMORY[0x245CCDDB0](v26, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  [v23 setProtoAccountContext_];
  v36 = [objc_allocWithZone(MEMORY[0x277CCAB70]) init];
  v37 = *(v2 + v8);
  sub_240A2ABAC();
  v39 = v38;

  if (v39)
  {
    v40 = sub_240A2BF1C();
  }

  else
  {
    v40 = 0;
  }

  v41 = *(v2 + v8);
  sub_240A2ABEC();
  v43 = v42;

  if (v43)
  {
    v44 = sub_240A2BF1C();
  }

  else
  {
    v44 = 0;
  }

  [v36 ak:v40 addAuthorizationHeaderWithIdentityToken:v44 forAltDSID:?];

  v45 = [v36 allHTTPHeaderFields];
  if (v45)
  {
    v46 = v45;
    v47 = sub_240A2BEBC();

    sub_240A1E5B4(v47);

    v48 = sub_240A2BE9C();
  }

  else
  {
    v48 = 0;
  }

  [v23 setHttpHeadersForRemoteUI_];
}

uint64_t sub_24091D5C4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_240A2B00C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_stepLoadTask;
  swift_beginAccess();
  [*(v3 + v10) complete];
  if (*(a1 + 16))
  {
    sub_240A1E87C(a1);
    v11 = objc_allocWithZone(sub_240A2AC6C());
    v12 = sub_240A2ABDC();
    v13 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_childAuthResults);
    *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_childAuthResults) = v12;

    if (a2)
    {
      sub_24091E194();
      v14 = swift_allocError();
      *v15 = a2;
    }

    else
    {
      v14 = 0;
    }

    v21 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_error);
    *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_error) = v14;
    v22 = a2;
  }

  else
  {
    sub_240A2AE9C();
    v16 = sub_240A2AFFC();
    v17 = sub_240A2C2AC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2408FE000, v16, v17, "AISFlowStepChildCreate No Auth results!", v18, 2u);
      MEMORY[0x245CCDDB0](v18, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    sub_24091E194();
    v19 = swift_allocError();
    *v20 = 1;
    v21 = *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_error);
    *(v3 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_error) = v19;
  }

  return sub_2409F4D60();
}

uint64_t AISFlowStepChildCreate.analyticsScreenType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_settings) + 16);
  v4 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (v5 == 2)
  {
    v6 = MEMORY[0x277CEDAB8];
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    v6 = MEMORY[0x277CEDAC0];
LABEL_5:
    v7 = *v6;
    v8 = sub_240A2A4AC();
    v9 = *(v8 - 8);
    (*(v9 + 104))(a1, v7, v8);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }

  v11 = sub_240A2A4AC();
  return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
}

uint64_t AISFlowStepChildCreate.nextStep()()
{
  v1 = sub_240A2B00C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v24[-v6];
  v8 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_error);
  if (v8)
  {
    v9 = v8;
LABEL_3:
    swift_willThrow();
    return v0;
  }

  v10 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_childAuthResults);
  if (!v10)
  {
    sub_240A2AE9C();
    v21 = sub_240A2AFFC();
    v0 = sub_240A2C2AC();
    if (os_log_type_enabled(v21, v0))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2408FE000, v21, v0, "This should not happen. Already checking for auth results in process step", v22, 2u);
      MEMORY[0x245CCDDB0](v22, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    sub_24091E194();
    swift_allocError();
    *v23 = 1;
    goto LABEL_3;
  }

  v11 = v0;
  v12 = v10;
  sub_240A2AE9C();
  v13 = sub_240A2AFFC();
  v14 = sub_240A2C2CC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2408FE000, v13, v14, "AISFlowStepChildCreate: Create child/teen is successful. Starting AIDA sign-in step.", v15, 2u);
    MEMORY[0x245CCDDB0](v15, -1, -1);
  }

  (*(v2 + 8))(v7, v1);
  v16 = OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_authResponse;
  swift_beginAccess();
  v17 = *(v11 + v16);
  v18 = *(v11 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_settings);
  type metadata accessor for AISFlowStepAIDASignIn(0);
  v0 = swift_allocObject();
  *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_guardianAuthResponse) = v17;
  *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_childAuthResponse) = v12;
  *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_settings) = v18;
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  v24[47] = 0;
  v19 = v17;

  sub_240A2B0DC();
  *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return v0;
}

uint64_t sub_24091DCA0()
{
  swift_unknownObjectRelease();
}

uint64_t AISFlowStepChildCreate.deinit()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t AISFlowStepChildCreate.__deallocating_deinit()
{
  AISFlowStepChildCreate.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_24091DEA0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_stepLoadTask;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

unint64_t AISFlowStepChildCreateError.description.getter()
{
  v1 = 0xD000000000000013;
  v2 = *v0;
  if (*v0 != 1)
  {
    sub_240A2C47C();
    MEMORY[0x245CCCD90](0xD000000000000039, 0x8000000240A3AA50);
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B708, &qword_240A32E50);
    v4 = sub_240A2BF9C();
    MEMORY[0x245CCCD90](v4);

    return 0;
  }

  return v1;
}

uint64_t sub_24091E02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14[-v10];
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_childAuthResults) = 0;
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_error) = 0;
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_authResponse) = a1;
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_settings) = a2;
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI22AISFlowStepChildCreate_stepLoadTask) = a3;
  *(a4 + 24) = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v14[15] = 0;
  sub_240A2B0DC();
  (*(v9 + 32))(a4 + v12, v11, v8);
  *(a4 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return a4;
}

unint64_t sub_24091E194()
{
  result = qword_27E50B6F8;
  if (!qword_27E50B6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B6F8);
  }

  return result;
}

uint64_t type metadata accessor for AISFlowStepChildCreate(uint64_t a1)
{
  result = qword_27E50B718;
  if (!qword_27E50B718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24091E2D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_24091E31C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14AppleIDSetupUI27AISFlowStepChildCreateErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24091E38C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24091E3E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_24091E444(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

void sub_24091E5A4()
{
  v1 = sub_240A2B00C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() mainScreen];
  [v5 scale];
  v7 = v6;

  v8 = objc_allocWithZone(MicaPlayer);
  v9 = sub_240A2BF1C();
  v10 = [v8 initWithFileName:v9 retinaScale:v7];

  if (v10)
  {
    v11 = [v0 layer];
    [v10 addToLayer:v11 onTop:1 gravity:*MEMORY[0x277CDA710]];

    [v10 play];
    v12 = *&v0[OBJC_IVAR____TtC14AppleIDSetupUI18AISAppleIDMicaView_micaPlayer];
    *&v0[OBJC_IVAR____TtC14AppleIDSetupUI18AISAppleIDMicaView_micaPlayer] = v10;
    v21 = v10;

    v13 = [v21 rootLayer];
    if (v13)
    {
      v14 = [objc_opt_self() systemBlueColor];
      v15 = [v14 CGColor];

      [v13 mp:v15 setFillOfAllShapeLayersToColor:?];
      v16 = v21;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_240A2AE9C();
    v17 = sub_240A2AFFC();
    v18 = sub_240A2C2AC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2408FE000, v17, v18, "AISAppleIDMicaView loadMicaFile failed", v19, 2u);
      MEMORY[0x245CCDDB0](v19, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }
}

id sub_24091E964(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AISAppleIDMicaView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_24091E9CC()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50B748);
  __swift_project_value_buffer(v0, qword_27E50B748);
  return sub_240A2AE9C();
}

char *sub_24091EA18(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = [objc_allocWithZone(MEMORY[0x277D79758]) init];
  *&v5[OBJC_IVAR____TtC14AppleIDSetupUI34DustCloudScannerCardViewController__scannerEngine] = v11;
  v12 = &v5[OBJC_IVAR____TtC14AppleIDSetupUI34DustCloudScannerCardViewController_scannedCodeHandler];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v5[OBJC_IVAR____TtC14AppleIDSetupUI34DustCloudScannerCardViewController_manualPairingHandler];
  *v13 = a4;
  *(v13 + 1) = a5;
  v39.receiver = v5;
  v39.super_class = type metadata accessor for DustCloudScannerCardViewController();

  v14 = objc_msgSendSuper2(&v39, sel_initWithScannerEngine_, v11);
  v15 = sub_240A2BF1C();
  [v14 setTitle_];

  v16 = sub_240A2BF1C();
  [v14 setSubtitle_];

  [v14 setDismissalType_];
  v17 = v14;
  v18 = sub_240A2BF1C();
  v19 = sub_240A2BF1C();
  v20 = sub_240A2BF1C();
  v21 = sub_240A2BF1C();
  v22 = [v17 dismissalConfirmationActionWithTitle:v18 message:v19 confirmButtonTitle:v20 cancelButtonTitle:v21];

  [v17 setDismissButtonAction_];
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v24 = sub_240A2BF1C();
  v37 = sub_24091F118;
  v38 = v23;
  v33 = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_2409DFF20;
  v36 = &block_descriptor_2;
  v25 = _Block_copy(&v33);
  v26 = [objc_opt_self() actionWithTitle:v24 style:1 handler:v25];
  sub_24091F138(a1);

  _Block_release(v25);

  v27 = *(v17 + OBJC_IVAR____TtC14AppleIDSetupUI34DustCloudScannerCardViewController__scannerEngine);
  v28 = swift_allocObject();
  *(v28 + 16) = v17;
  v37 = sub_24091F168;
  v38 = v28;
  v33 = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_2409ED748;
  v36 = &block_descriptor_9;
  v29 = _Block_copy(&v33);
  v30 = v17;
  v31 = v27;

  [v31 setScannedCodeHandler_];
  _Block_release(v29);

  return v30;
}

void sub_24091EDF0(uint64_t a1, uint64_t a2)
{
  if (qword_27E50AEB8 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50B748);
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C28C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "User has elected manual pairing", v5, 2u);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [*(Strong + OBJC_IVAR____TtC14AppleIDSetupUI34DustCloudScannerCardViewController__scannerEngine) stop];
    (*&v7[OBJC_IVAR____TtC14AppleIDSetupUI34DustCloudScannerCardViewController_manualPairingHandler])(v8);
  }
}

id sub_24091F05C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DustCloudScannerCardViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24091F168(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  [v5 showConfirmationRing];
  [*&v5[OBJC_IVAR____TtC14AppleIDSetupUI34DustCloudScannerCardViewController__scannerEngine] stop];
  return (*&v5[OBJC_IVAR____TtC14AppleIDSetupUI34DustCloudScannerCardViewController_scannedCodeHandler])(a1, a2);
}

uint64_t sub_24091F1E0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a1)
  {
    v6 = sub_240A2BFCC();
    v40 = v7;
    v41 = v6;
    v8 = sub_240A2BFDC();
    v38 = v9;
    v39 = v8;
    v10 = sub_240A2BFDC();
    v36 = v11;
    v37 = v10;
    v12 = sub_240A2BFDC();
    v14 = v13;
    v15 = sub_240A2BFDC();
    v17 = v16;
    v18 = sub_240A2BFDC();
    v20 = v19;
    v21 = sub_240A2BFDC();
  }

  else
  {
    v23 = sub_240A2C00C();
    v40 = v24;
    v41 = v23;
    v25 = sub_240A2C01C();
    v38 = v26;
    v39 = v25;
    v27 = sub_240A2C01C();
    v36 = v28;
    v37 = v27;
    v12 = sub_240A2C01C();
    v14 = v29;
    v15 = sub_240A2C01C();
    v17 = v30;
    v18 = sub_240A2C01C();
    v20 = v31;
    v21 = sub_240A2C01C();
  }

  v32 = v21;
  v33 = v22;
  v34 = sub_240A29DBC();
  result = (*(*(v34 - 8) + 8))(a2, v34);
  *a4 = v41;
  a4[1] = v40;
  a4[2] = v39;
  a4[3] = v38;
  a4[4] = v37;
  a4[5] = v36;
  a4[6] = a3;
  a4[7] = v12;
  a4[8] = v14;
  a4[9] = v15;
  a4[10] = v17;
  a4[11] = v18;
  a4[12] = v20;
  a4[13] = v32;
  a4[14] = v33;
  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_24091F430(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_24091F478(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24091F4EC(uint64_t a1, unint64_t a2, double a3)
{
  type metadata accessor for QRCodeGenerator(0);
  swift_allocObject();

  return sub_240978EF0(a1, a2, a3);
}

uint64_t sub_24091F558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = sub_240A2B58C();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B778, &qword_240A311C8);
  sub_24091F750(a1, a2, a3 & 1, a4 + *(v8 + 44));
  v9 = sub_240A2B86C();
  sub_240A2B1AC();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B780, &qword_240A311D0) + 36);
  *v18 = v9;
  *(v18 + 8) = v11;
  *(v18 + 16) = v13;
  *(v18 + 24) = v15;
  *(v18 + 32) = v17;
  *(v18 + 40) = 0;
  v19 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B788, &qword_240A311D8) + 36);
  sub_240A2BDBC();
  v20 = sub_240A2B86C();
  *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B790, &qword_240A311E0) + 36)) = v20;
  type metadata accessor for QRCodeGenerator(0);
  sub_240920600();
  v21 = *(sub_240A2B1EC() + OBJC_IVAR____TtC14AppleIDSetupUI15QRCodeGenerator_scale);

  v22 = v21 / 10.0;
  v23 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7A0, &qword_240A311E8) + 36));
  v24 = *(sub_240A2B3FC() + 20);
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_240A2B57C();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = v22;
  v23[1] = v22;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7A8, &qword_240A311F0);
  *(v23 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_24091F750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v97 = a3;
  v108 = a2;
  v98 = a1;
  v107 = a4;
  v95 = sub_240A2BBDC();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_240A2BBEC();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7B0, &qword_240A311F8);
  MEMORY[0x28223BE20](v105);
  v96 = &v85 - v6;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7B8, &qword_240A31200);
  MEMORY[0x28223BE20](v101);
  v103 = &v85 - v7;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7C0, &qword_240A31208);
  MEMORY[0x28223BE20](v102);
  v89 = &v85 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7C8, &qword_240A31210);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v106 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v104 = &v85 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7D0, &qword_240A31218);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v85 - v14;
  v16 = sub_240A2B97C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7D8, &qword_240A31220);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v100 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v85 - v23;
  *&v115[0] = sub_240A2C06C();
  *(&v115[0] + 1) = v25;
  sub_24091C4F8();
  v26 = sub_240A2B9CC();
  v28 = v27;
  v30 = v29;
  (*(v17 + 104))(v19, *MEMORY[0x277CE0A80], v16);
  v31 = sub_240A2B8CC();
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v87 = v31;
  v86 = v33;
  v85 = v32 + 56;
  (v33)(v15, 1, 1);
  sub_240A2B8DC();
  sub_240A2B92C();
  v88 = v15;
  sub_240919300(v15, &qword_27E50B7D0, &qword_240A31218);
  (*(v17 + 8))(v19, v16);
  v34 = sub_240A2B9AC();
  v36 = v35;
  LOBYTE(v15) = v37;

  sub_240920658(v26, v28, v30 & 1);

  LODWORD(v115[0]) = sub_240A2B70C();
  v38 = sub_240A2B98C();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_240920658(v34, v36, v15 & 1);

  KeyPath = swift_getKeyPath();
  v46 = sub_240A2B85C();
  v114 = v42 & 1;
  v113 = 1;
  *&v109 = v38;
  *(&v109 + 1) = v40;
  LOBYTE(v110) = v42 & 1;
  *(&v110 + 1) = v44;
  *&v111 = KeyPath;
  BYTE8(v111) = 1;
  v112[0] = v46;
  memset(&v112[8], 0, 32);
  v112[40] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7E0, &unk_240A378B0);
  sub_240920668();
  v99 = v24;
  sub_240A2BA6C();
  v115[2] = v111;
  v115[3] = *v112;
  *v116 = *&v112[16];
  *&v116[9] = *&v112[25];
  v115[0] = v109;
  v115[1] = v110;
  sub_240919300(v115, &qword_27E50B7E0, &unk_240A378B0);
  type metadata accessor for QRCodeGenerator(0);
  sub_240920600();
  sub_240A2B1EC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  if (v109)
  {
    v47 = v109;
    sub_240A2BBBC();
    v48 = v91;
    v49 = v90;
    v50 = v92;
    (*(v91 + 104))(v90, *MEMORY[0x277CE0FF8], v92);
    sub_240A2BBFC();

    (*(v48 + 8))(v49, v50);
    v51 = v94;
    v52 = v93;
    v53 = v95;
    (*(v94 + 104))(v93, *MEMORY[0x277CE0FE0], v95);
    v54 = sub_240A2BC1C();

    (*(v51 + 8))(v52, v53);
    v55 = *(sub_240A2B1EC() + OBJC_IVAR____TtC14AppleIDSetupUI15QRCodeGenerator_scale);

    v56 = v96;
    v57 = &v96[*(v105 + 36)];
    v58 = v55 / 10.0;
    v59 = *(sub_240A2B3FC() + 20);
    v60 = *MEMORY[0x277CE0118];
    v61 = sub_240A2B57C();
    (*(*(v61 - 8) + 104))(v57 + v59, v60, v61);
    *v57 = v58;
    v57[1] = v58;
    *(v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7A8, &qword_240A311F0) + 36)) = 256;
    *v56 = v54;
    *(v56 + 8) = 0;
    *(v56 + 16) = 1;
    *(v56 + 24) = 0x3FF0000000000000;
    *(v56 + 32) = 0;
    sub_240919298(v56, v103, &qword_27E50B7B0, &qword_240A311F8);
    swift_storeEnumTagMultiPayload();
    sub_2409207AC();
    sub_240920974();
    v62 = v104;
    sub_240A2B6EC();

    v63 = v56;
    v64 = &qword_27E50B7B0;
    v65 = &qword_240A311F8;
  }

  else
  {
    v96 = sub_240A2BBCC();
    sub_240A2B1EC();

    v66 = v88;
    v86(v88, 1, 1, v87);
    v95 = sub_240A2B91C();
    sub_240919300(v66, &qword_27E50B7D0, &qword_240A31218);
    v94 = swift_getKeyPath();
    v93 = sub_240A2BB9C();
    v92 = swift_getKeyPath();
    v67 = sub_240A2B86C();
    LOBYTE(v109) = 1;
    v68 = sub_240A2B71C();
    v69 = sub_240A2B86C();
    v70 = *(sub_240A2B1EC() + OBJC_IVAR____TtC14AppleIDSetupUI15QRCodeGenerator_scale);

    v71 = v89;
    v72 = &v89[*(v102 + 36)];
    v73 = v70 / 10.0;
    v74 = *(sub_240A2B3FC() + 20);
    v75 = *MEMORY[0x277CE0118];
    v76 = sub_240A2B57C();
    (*(*(v76 - 8) + 104))(v72 + v74, v75, v76);
    *v72 = v73;
    v72[1] = v73;
    *(v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7A8, &qword_240A311F0) + 36)) = 256;
    v77 = v94;
    *v71 = v96;
    *(v71 + 8) = v77;
    v78 = v92;
    *(v71 + 16) = v95;
    *(v71 + 24) = v78;
    *(v71 + 32) = v93;
    *(v71 + 40) = v67;
    *(v71 + 48) = 0u;
    *(v71 + 64) = 0u;
    *(v71 + 80) = 1;
    *(v71 + 84) = v68;
    *(v71 + 88) = v69;
    sub_240919298(v71, v103, &qword_27E50B7C0, &qword_240A31208);
    swift_storeEnumTagMultiPayload();
    sub_2409207AC();
    sub_240920974();
    v62 = v104;
    sub_240A2B6EC();
    v63 = v71;
    v64 = &qword_27E50B7C0;
    v65 = &qword_240A31208;
  }

  sub_240919300(v63, v64, v65);
  v79 = v99;
  v80 = v100;
  sub_240919298(v99, v100, &qword_27E50B7D8, &qword_240A31220);
  v81 = v106;
  sub_240919298(v62, v106, &qword_27E50B7C8, &qword_240A31210);
  v82 = v107;
  sub_240919298(v80, v107, &qword_27E50B7D8, &qword_240A31220);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B8B8, &qword_240A31360);
  sub_240919298(v81, v82 + *(v83 + 48), &qword_27E50B7C8, &qword_240A31210);
  sub_240919300(v62, &qword_27E50B7C8, &qword_240A31210);
  sub_240919300(v79, &qword_27E50B7D8, &qword_240A31220);
  sub_240919300(v81, &qword_27E50B7C8, &qword_240A31210);
  return sub_240919300(v80, &qword_27E50B7D8, &qword_240A31220);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_240920548(uint64_t a1, unsigned int a2)
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

uint64_t sub_240920590(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_240920600()
{
  result = qword_27E50B798;
  if (!qword_27E50B798)
  {
    type metadata accessor for QRCodeGenerator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B798);
  }

  return result;
}

uint64_t sub_240920658(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_240920668()
{
  result = qword_27E50B7E8;
  if (!qword_27E50B7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B7E0, &unk_240A378B0);
    sub_2409206F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B7E8);
  }

  return result;
}

unint64_t sub_2409206F4()
{
  result = qword_27E50B7F0;
  if (!qword_27E50B7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B7F8, &unk_240A31260);
    sub_24091CE28(&qword_27E50B800, &qword_27E50B808, &qword_240A378C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B7F0);
  }

  return result;
}

unint64_t sub_2409207AC()
{
  result = qword_27E50B810;
  if (!qword_27E50B810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B7B0, &qword_240A311F8);
    sub_240920864();
    sub_24091CE28(&qword_27E50B838, &qword_27E50B7A8, &qword_240A311F0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B810);
  }

  return result;
}

unint64_t sub_240920864()
{
  result = qword_27E50B818;
  if (!qword_27E50B818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B820, &qword_240A31318);
    sub_2409208F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B818);
  }

  return result;
}

unint64_t sub_2409208F0()
{
  result = qword_27E50B828;
  if (!qword_27E50B828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B830, &qword_240A31320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B828);
  }

  return result;
}

unint64_t sub_240920974()
{
  result = qword_27E50B840;
  if (!qword_27E50B840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B7C0, &qword_240A31208);
    sub_240920A2C();
    sub_24091CE28(&qword_27E50B838, &qword_27E50B7A8, &qword_240A311F0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B840);
  }

  return result;
}

unint64_t sub_240920A2C()
{
  result = qword_27E50B848;
  if (!qword_27E50B848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B850, &qword_240A31328);
    sub_240920AE4();
    sub_24091CE28(&qword_27E50B8A8, &qword_27E50B8B0, &qword_240A31358, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B848);
  }

  return result;
}

unint64_t sub_240920AE4()
{
  result = qword_27E50B858;
  if (!qword_27E50B858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B860, &qword_240A31330);
    sub_240920B70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B858);
  }

  return result;
}

unint64_t sub_240920B70()
{
  result = qword_27E50B868;
  if (!qword_27E50B868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B870, &qword_240A31338);
    sub_240920C28();
    sub_24091CE28(&qword_27E50B898, &qword_27E50B8A0, &qword_240A31350, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B868);
  }

  return result;
}

unint64_t sub_240920C28()
{
  result = qword_27E50B878;
  if (!qword_27E50B878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B880, &qword_240A31340);
    sub_24091CE28(&qword_27E50B888, &qword_27E50B890, &qword_240A31348, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B878);
  }

  return result;
}

unint64_t sub_240920CE0()
{
  result = qword_27E50B8C0;
  if (!qword_27E50B8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B7A0, &qword_240A311E8);
    sub_240920D98();
    sub_24091CE28(&qword_27E50B838, &qword_27E50B7A8, &qword_240A311F0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B8C0);
  }

  return result;
}

unint64_t sub_240920D98()
{
  result = qword_27E50B8C8;
  if (!qword_27E50B8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B788, &qword_240A311D8);
    sub_240920E50();
    sub_24091CE28(&qword_27E50B8E8, &qword_27E50B790, &qword_240A311E0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B8C8);
  }

  return result;
}

unint64_t sub_240920E50()
{
  result = qword_27E50B8D0;
  if (!qword_27E50B8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50B780, &qword_240A311D0);
    sub_24091CE28(&qword_27E50B8D8, &qword_27E50B8E0, &qword_240A31368, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50B8D0);
  }

  return result;
}

id ReadyForTeenViewController.init(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC14AppleIDSetupUI26ReadyForTeenViewController_completionHandler];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = objc_opt_self();
  sub_24090C23C(a1, a2);
  [v6 deviceIsiPad];
  sub_240A2C01C();
  sub_240A2C01C();
  v7 = sub_240A2BF1C();

  v8 = sub_240A2BF1C();

  v17.receiver = v2;
  v17.super_class = type metadata accessor for ReadyForTeenViewController();
  v9 = objc_msgSendSuper2(&v17, sel_initWithTitle_detailText_symbolName_contentLayout_, v7, v8, 0, 2);

  v10 = v9;
  v11 = [v10 buttonTray];
  v12 = [objc_opt_self() boldButton];
  sub_240A2C01C();
  v13 = sub_240A2BF1C();

  [v12 setTitle:v13 forState:0];

  sub_2409194E8(0, &qword_27E50D8D0, 0x277D750C8);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = sub_240A2C39C();
  [v12 addAction:v15 forControlEvents:{64, 0, 0, 0, sub_2409214E8, v14}];

  [v11 addButton_];
  sub_24090C1A0(a1, a2);

  return v10;
}

void sub_240921208()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for ReadyForTeenViewController();
  objc_msgSendSuper2(&v14, sel_viewDidLoad);
  v1 = sub_240921790();
  if (v1)
  {
    v2 = v1;
    v3 = [v0 headerView];
    v4 = [v3 customIconContainerView];

    if (v4)
    {
      [v4 addSubview_];
      v5 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_240A308E0;
      v7 = [v2 centerXAnchor];
      v8 = [v4 centerXAnchor];
      v9 = [v7 constraintEqualToAnchor_];

      *(v6 + 32) = v9;
      v10 = [v2 centerYAnchor];
      v11 = [v4 centerYAnchor];
      v12 = [v10 constraintEqualToAnchor_];

      *(v6 + 40) = v12;
      sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
      v13 = sub_240A2C15C();

      [v5 activateConstraints_];

      v2 = v13;
    }
  }
}

void sub_240921458(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC14AppleIDSetupUI26ReadyForTeenViewController_completionHandler);
    if (v4)
    {
      v5 = *(Strong + OBJC_IVAR____TtC14AppleIDSetupUI26ReadyForTeenViewController_completionHandler + 8);

      v4(0);
      sub_24090C1A0(v4, v5);
    }
  }
}

id ReadyForTeenViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_240A2BF1C();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_240A2BF1C();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_240A2BF1C();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id ReadyForTeenViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_240A2BF1C();

  if (a4)
  {
    v12 = sub_240A2BF1C();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id ReadyForTeenViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReadyForTeenViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_240921790()
{
  [objc_opt_self() deviceIsiPad];
  v0 = objc_opt_self();
  v1 = [v0 configurationWithPointSize_];
  v2 = sub_240A2BF1C();

  v3 = objc_opt_self();
  v4 = [v3 systemImageNamed:v2 withConfiguration:v1];

  v5 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  v6 = v5;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = [v0 configurationWithPointSize:7 weight:24.0];
  v8 = sub_240A2BF1C();
  v9 = [v3 systemImageNamed:v8 withConfiguration:v7];

  v10 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  v11 = v10;
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v12 = [v0 configurationWithPointSize_];
  v13 = sub_240A2BF1C();
  v14 = [v3 systemImageNamed:v13 withConfiguration:v12];

  v15 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  v16 = v15;
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [v17 addSubview_];
  [v17 addSubview_];
  [v17 addSubview_];
  v42 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_240A31370;
  v19 = [v6 leadingAnchor];
  v20 = [v17 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v18 + 32) = v21;
  v22 = [v11 leadingAnchor];
  v23 = [v6 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:1.0];

  *(v18 + 40) = v24;
  v25 = [v16 leadingAnchor];
  v26 = [v11 trailingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:10.0];

  *(v18 + 48) = v27;
  v28 = [v16 trailingAnchor];
  v29 = [v17 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v18 + 56) = v30;
  v31 = [v6 centerYAnchor];

  v32 = [v17 centerYAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v18 + 64) = v33;
  v34 = [v11 centerYAnchor];

  v35 = [v17 centerYAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v18 + 72) = v36;
  v37 = [v16 centerYAnchor];

  v38 = [v17 centerYAnchor];
  v39 = [v37 constraintEqualToAnchor_];

  *(v18 + 80) = v39;
  sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
  v40 = sub_240A2C15C();

  [v42 activateConstraints_];

  return v17;
}