uint64_t sub_25B03EE64@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_25B03EEA0(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_25B0E2C50();
  }

  else
  {
    sub_25B0E2BA0();
  }

  return sub_25B0E2CA0();
}

uint64_t sub_25B03EF08(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_25B0E2C50();
    sub_25B0E2CA0();
    sub_25B044BE4();
  }

  else
  {
    sub_25B0E2BA0();
    sub_25B0E2CA0();
    sub_25B04556C(&qword_27FA30DB8, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  }

  return swift_getWitnessTable();
}

uint64_t getEnumTagSinglePayload for CurationStack.Metrics.Modifiers(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CurationStack.Metrics.Modifiers(uint64_t result, int a2, int a3)
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

void *sub_25B03F060@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_25B03F0AC(void *a1)
{
  sub_25B0E2C30();

  return swift_getWitnessTable();
}

uint64_t sub_25B03F0F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA30FD0, &qword_25B0E5938);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B03F164(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25B03F20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25B0E2750();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for FacePlacement.Location(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25B03F2FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25B0E2750();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for FacePlacement.Location(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_25B03F3F8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 250)
  {
    v4 = *a1;
    if (v4 >= 6)
    {
      return v4 - 5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_25B0E2540();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_25B03F49C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 250)
  {
    *result = a2 + 5;
  }

  else
  {
    v7 = sub_25B0E2540();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25B03F540()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25B03F578()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25B03F5D0()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31380, &qword_25B0E66D8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_25B03F600()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313A8, &qword_25B0E68B8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_25B03F630()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25B03F670()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25B03F704()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_25B03F744()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25B03F77C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25B03F7CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_25B03F824()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25B03F864()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25B03F8F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + v5));

  return MEMORY[0x2821FE8E8](v0, v5 + 40, v3 | 7);
}

uint64_t sub_25B03F9F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 32) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_25B03FB7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 32) & ~v8;
  v12 = *(v7 + 64);
  v10 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v12, v10 | 7);
}

uint64_t sub_25B03FD28()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25B03FD6C()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A80, &qword_25B0E76E0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_25B03FD9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25B0E23C0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25B03FE08(uint64_t a1, uint64_t a2)
{
  v4 = sub_25B0E23C0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25B03FE78()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31598, &qword_25B0E7068);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_25B03FEA8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25B03FEE0()
{
  v1 = sub_25B0E24A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25B03FFB4()
{
  v1 = sub_25B0E2750();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31638, "rs");
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_25B040110()
{
  v1 = (type metadata accessor for ReplicatedSnapshotProvider(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v3 + *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = v0 + v3;
  v12 = v1[7];
  v13 = sub_25B0E24A0();
  (*(*(v13 - 8) + 8))(v11 + v12, v13);
  v14 = v1[8];
  v15 = sub_25B0E2750();
  (*(*(v15 - 8) + 8))(v11 + v14, v15);
  __swift_destroy_boxed_opaque_existential_1((v11 + v1[9]));

  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_25B0402DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v22 = *(v2 + 64);
  v5 = (type metadata accessor for ReplicatedSnapshotProvider(0) - 8);
  v6 = *(*v5 + 80);
  v7 = (v4 + v22 + v6) & ~v6;
  v8 = *(*v5 + 64);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v9 = *(v21 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v8 + v10) & ~v10;
  v20 = v3 | v6 | v10;
  v12 = (*(v9 + 64) + v3 + v11) & ~v3;
  swift_unknownObjectRelease();
  v13 = *(v2 + 8);
  v13(v0 + v4, v1);
  v14 = v0 + v7;
  v15 = v5[7];
  v16 = sub_25B0E24A0();
  (*(*(v16 - 8) + 8))(v14 + v15, v16);
  v17 = v5[8];
  v18 = sub_25B0E2750();
  (*(*(v18 - 8) + 8))(v14 + v17, v18);
  __swift_destroy_boxed_opaque_existential_1((v14 + v5[9]));

  (*(v9 + 8))(v0 + v11, v21);
  v13(v0 + v12, v1);

  return MEMORY[0x2821FE8E8](v0, v12 + v22, v20 | 7);
}

uint64_t sub_25B040574(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_25B0E24A0();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_25B0E2750();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7] + 24);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_25B040680(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_25B0E24A0();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_25B0E2750();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7] + 24) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_25B04078C()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 88));

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_25B0407F4()
{
  v1 = sub_25B0E24A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_25B040948()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA313B8, &unk_25B0E72A0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_25B0E24A0();
  v6 = *(v5 - 8);
  v21 = v4;
  v19 = v5;
  v20 = *(v6 + 80);
  v7 = (v3 + v4 + v20) & ~v20;
  v8 = *(v6 + 64);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v9 = *(v16 - 8);
  v17 = v7;
  v18 = *(v9 + 80);
  v14 = (v7 + v8 + v18) & ~v18;
  v15 = (*(v9 + 64) + v2 + v14) & ~v2;
  swift_unknownObjectRelease();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31AA0, &qword_25B0E6B40);
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v0 + v3, 1, v10))
  {
    (*(v11 + 8))(v0 + v3, v10);
  }

  (*(v6 + 8))(v0 + v17, v19);
  (*(v9 + 8))(v0 + v14, v16);
  if (!v12(v0 + v15, 1, v10))
  {
    (*(v11 + 8))(v0 + v15, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v15 + v21, v2 | v20 | v18 | 7);
}

uint64_t sub_25B040C00()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_25B040C50()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_25B040CEC()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A80, &qword_25B0E76E0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_25B040D1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A90, &unk_25B0E6FB0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25B040DB0()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31978, &qword_25B0E78B8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_25B040DE0()
{
  MEMORY[0x25F8614C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25B040E18()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_25B040E60()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25B040E98()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25B040ED8()
{
  v1 = (type metadata accessor for FacePlacement(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v5 = v0 + v3;
  v6 = sub_25B0E2750();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[7];
  v8 = v7 + *(type metadata accessor for FacePlacement.Location(0) + 20);
  v9 = sub_25B0E2540();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_25B041038()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_25B041098()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25B0410D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25B041110()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31A80, &qword_25B0E76E0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_25B04115C(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_25B0E2440();
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
      v13 = sub_25B0E24F0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_25B041280(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_25B0E2440();
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
      v13 = sub_25B0E24F0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_25B0413D4()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31D40, &qword_25B0E8AB0);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_25B041404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25B0E2750();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for FacePlacement.Location(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25B0414F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25B0E2750();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for FacePlacement.Location(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_25B0415F0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25B041628()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25B041668()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25B0416F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25B0E2540();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_25B0417BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25B0E2540();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25B04187C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FaceManager.Placement(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25B041928(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FaceManager.Placement(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25B0419D4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25B041A0C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25B041A7C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25B041AB4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25B041AF4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25B041B44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25B0E2DD0();
  *a1 = result;
  return result;
}

uint64_t sub_25B041BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31FF8, &unk_25B0E9380);
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

uint64_t sub_25B041CA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31FF8, &unk_25B0E9380);
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

uint64_t sub_25B041D6C()
{
  v1 = *(type metadata accessor for CuratedGalleryView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32070, &qword_25B0E9490);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_25B0E2C70();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25B041E9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32060, &qword_25B0E9480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B041F0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32060, &qword_25B0E9480);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B041FFC()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_25B04203C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25B042078()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25B0420C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25B0E2750();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for FacePlacement.Location(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_25B0421DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25B0E2750();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for FacePlacement.Location(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_25B0422F0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25B042338@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25B0E2E10();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25B0423A4()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_25B0423F4()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_25B04244C()
{
  MEMORY[0x25F8614C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25B042484()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_25B0424E0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_25B0E2750();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for FacePlacement.Location(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_25B0425E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_25B0E2750();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = type metadata accessor for FacePlacement.Location(0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_25B0426F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25B0E2E30();
  *a1 = result;
  return result;
}

uint64_t sub_25B04274C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25B0E2DF0();
  *a1 = result;
  return result;
}

uint64_t sub_25B042854(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_25B0E2750();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25B042900(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_25B0E2750();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25B0429E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31FF8, &unk_25B0E9380);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25B042AAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31FF8, &unk_25B0E9380);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25B042B74()
{
  v1 = *(type metadata accessor for FacesGrid(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32070, &qword_25B0E9490);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_25B0E2C70();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25B042CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for GalleryGrid(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  v10 = v4 + v8;

  v11 = *(v6 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32A48, &qword_25B0EA620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_25B0E2C80();
    (*(*(v12 - 8) + 8))(v10 + v11, v12);
  }

  else
  {
  }

  (*(*(v5 - 8) + 8))(v10 + *(v6 + 68), v5);

  return MEMORY[0x2821FE8E8](v4, v8 + v9, v7 | 7);
}

uint64_t sub_25B042E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for GalleryGrid(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v7 + 32) & ~v7;
  v18 = *(*(v6 - 8) + 64);
  v9 = sub_25B0E2B80();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v19 = *(v10 + 64);
  v12 = v4 + v8;

  v13 = *(v6 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32A48, &qword_25B0EA620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_25B0E2C80();
    (*(*(v14 - 8) + 8))(v12 + v13, v14);
  }

  else
  {
  }

  v15 = v7 | v11;
  v16 = (v8 + v18 + v11) & ~v11;

  (*(*(v5 - 8) + 8))(v12 + *(v6 + 68), v5);

  (*(v10 + 8))(v4 + v16, v9);

  return MEMORY[0x2821FE8E8](v4, v16 + v19, v15 | 7);
}

uint64_t sub_25B0430DC(void *a1)
{
  sub_25B0E2CA0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32A50, &unk_25B0EA628);
  swift_getTupleTypeMetadata2();
  sub_25B0E35E0();
  swift_getWitnessTable();
  sub_25B0E34B0();
  sub_25B0E2CA0();
  sub_25B0E2CA0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_25B0E2A20();
  swift_getWitnessTable();
  sub_25B0E2BD0();
  return swift_getWitnessTable();
}

uint64_t sub_25B043274()
{

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_25B0432D0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25B043318()
{
  v1 = sub_25B0E2CF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25B0433A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32BB8, &qword_25B0EA8C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B043408()
{
  v1 = sub_25B0E2AA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_25B0E2CF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_25B0435D8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32D80, &qword_25B0EAB20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_25B043694(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32D80, &qword_25B0EAB20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25B043744(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32DA0, &qword_25B0EABD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B0437AC()
{
  v1 = (type metadata accessor for GalleryView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + v1[9];
  v6 = sub_25B0E2C10();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA32D80, &qword_25B0EAB20);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25B043910()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA30DC0, &qword_25B0E5070);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA32DA0, &qword_25B0EABD8);
  sub_25B0D1E3C();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25B043AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for LinkedFace(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_25B043B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for LinkedFace(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_25B043BF0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_25B0E2750();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25B043C9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_25B0E2750();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25B043D40()
{
  MEMORY[0x25F8614C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25B043D78()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25B043E90(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25B043F18()
{
  if (*v0)
  {
    return 0x7972656C6C6167;
  }

  else
  {
    return 0x7365636166;
  }
}

uint64_t sub_25B043F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7365636166 && a2 == 0xE500000000000000;
  if (v6 || (sub_25B0E3E30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7972656C6C6167 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25B0E3E30();

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

uint64_t sub_25B044034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25B0444E4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_25B044070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25B0444E4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_25B0440B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25B04458C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_25B0440F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25B04458C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_25B044130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25B044538(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_25B04416C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_25B044538(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t SceneType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA30D60, &qword_25B0E5030);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA30D68, &qword_25B0E5038);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA30D70, &qword_25B0E5040);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  v12 = *v1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B0444E4(v13, v14, v15);
  v16 = sub_25B0E3F70();
  v19 = (v9 + 8);
  if (v12)
  {
    v28 = 1;
    sub_25B044538(v16, v17, v18);
    v20 = v24;
    sub_25B0E3DC0();
    (*(v25 + 8))(v20, v26);
  }

  else
  {
    v27 = 0;
    sub_25B04458C(v16, v17, v18);
    sub_25B0E3DC0();
    (*(v22 + 8))(v7, v23);
  }

  return (*v19)(v11, v8);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_25B0444E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA30D78;
  if (!qword_27FA30D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA30D78);
  }

  return result;
}

unint64_t sub_25B044538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA30D80;
  if (!qword_27FA30D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA30D80);
  }

  return result;
}

unint64_t sub_25B04458C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA30D88;
  if (!qword_27FA30D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA30D88);
  }

  return result;
}

uint64_t SceneType.hashValue.getter()
{
  v1 = *v0;
  sub_25B0E3F10();
  MEMORY[0x25F860A80](v1);
  return sub_25B0E3F50();
}

uint64_t SceneType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA30D90, &qword_25B0E5048);
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA30D98, &qword_25B0E5050);
  v31 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA30DA0, &qword_25B0E5058);
  v34 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25B0444E4(v13, v14, v15);
  v16 = v36;
  sub_25B0E3F60();
  if (v16)
  {
    goto LABEL_7;
  }

  v30 = v7;
  v36 = a1;
  v18 = v34;
  v17 = v35;
  v19 = v12;
  v20 = sub_25B0E3DB0();
  if (*(v20 + 16) != 1)
  {
    v24 = sub_25B0E3C00();
    swift_allocError();
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA30DA8, &unk_25B0E5060);
    *v26 = &type metadata for SceneType;
    sub_25B0E3D70();
    sub_25B0E3BF0();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
    swift_willThrow();
    (*(v18 + 8))(v19, v10);
    swift_unknownObjectRelease();
    a1 = v36;
LABEL_7:
    v27 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  v29 = v20;
  v23 = *(v20 + 32);
  if (v23)
  {
    v38 = 1;
    sub_25B044538(v20, v21, v22);
    sub_25B0E3D60();
    (*(v33 + 8))(v6, v32);
  }

  else
  {
    v37 = 0;
    sub_25B04458C(v20, v21, v22);
    sub_25B0E3D60();
    (*(v31 + 8))(v9, v30);
  }

  (*(v18 + 8))(v19, v10);
  swift_unknownObjectRelease();
  *v17 = v23;
  v27 = v36;
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t sub_25B044AA8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
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

uint64_t sub_25B044ADC()
{
  v1 = *v0;
  sub_25B0E3F10();
  MEMORY[0x25F860A80](v1);
  return sub_25B0E3F50();
}

uint64_t sub_25B044B24(uint64_t a1)
{
  v2 = *v1;
  sub_25B0E3F10();
  MEMORY[0x25F860A80](v2);
  return sub_25B0E3F50();
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

unint64_t sub_25B044BE4()
{
  result = qword_27FA30DB0;
  if (!qword_27FA30DB0)
  {
    sub_25B0E2C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA30DB0);
  }

  return result;
}

unint64_t sub_25B044C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA30DD8;
  if (!qword_27FA30DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA30DD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SceneType.StorageKey(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SceneType.StorageKey(_WORD *result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25B044DA0(uint64_t a1, int a2)
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

uint64_t sub_25B044DC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25B044E14(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25B044E34(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25B044E90(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25B044EB0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_25B044F18(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25B044F38(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for FaceRequestError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FaceRequestError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25B045118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA30E70;
  if (!qword_27FA30E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA30E70);
  }

  return result;
}

uint64_t sub_25B04516C()
{
  v1 = *v0;
  sub_25B0E3F10();
  MEMORY[0x25F860A80](v1);
  return sub_25B0E3F50();
}

uint64_t sub_25B0451E0(uint64_t a1)
{
  v2 = *v1;
  sub_25B0E3F10();
  MEMORY[0x25F860A80](v2);
  return sub_25B0E3F50();
}

unint64_t sub_25B045228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA30E78;
  if (!qword_27FA30E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA30E78);
  }

  return result;
}

unint64_t sub_25B045280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA30E80;
  if (!qword_27FA30E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA30E80);
  }

  return result;
}

unint64_t sub_25B0452D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA30E88;
  if (!qword_27FA30E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA30E88);
  }

  return result;
}

unint64_t sub_25B045330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA30E90;
  if (!qword_27FA30E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA30E90);
  }

  return result;
}

unint64_t sub_25B045388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA30E98;
  if (!qword_27FA30E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA30E98);
  }

  return result;
}

unint64_t sub_25B0453E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA30EA0;
  if (!qword_27FA30EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA30EA0);
  }

  return result;
}

uint64_t sub_25B045454(uint64_t a1, int a2)
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

uint64_t sub_25B045474(uint64_t result, int a2, int a3)
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

void sub_25B0454D8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_25B04556C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SuperFacesScene.init(content:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *a4 = "super_faces_scene";
  *(a4 + 8) = 17;
  *(a4 + 16) = 2;
  type metadata accessor for SuperFacesScene(0, a2, a3, a3);
  return a1();
}

uint64_t SuperFacesScene.body.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = sub_25B0E2C30();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-v9];
  v11 = *v1;
  v12 = *(v1 + 8);
  v16 = v2;
  v17 = v3;
  v18 = v1;
  sub_25B04596C(v11, v12, *(v1 + 16), "super_faces", 11, 2u, sub_25B045960, v15, v2, v3);
  swift_getWitnessTable();
  (*(v5 + 16))(v10, v8, v4);
  v13 = *(v5 + 8);
  v13(v8, v4);
  sub_25B0E2AE0();
  return (v13)(v10, v4);
}

uint64_t sub_25B045868(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SuperFacesScene(0, v6, v7, v8);
  sub_25B0C75B4();
  sub_25B0C75B4();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_25B04596C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = MEMORY[0x28223BE20](a1);
  v11(v10);
  return sub_25B0E2C20();
}

uint64_t sub_25B045B3C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25B045BBC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
  }

  v8 = ((v6 + 17) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_25B045D1C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 17) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 17] & ~v8;

  v18(v19);
}

id sub_25B045F50()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = type metadata accessor for SuperFacesHostViewController();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC15NanoFaceGalleryP33_40986ADAA0F504397917503E2F9321D528SuperFacesHostViewController_sceneHostingController] = 0;
  v5 = &v4[OBJC_IVAR____TtC15NanoFaceGalleryP33_40986ADAA0F504397917503E2F9321D528SuperFacesHostViewController_bundleIdentifier];
  *v5 = v2;
  *(v5 + 1) = v1;
  v7.receiver = v4;
  v7.super_class = v3;

  return objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_25B04601C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25B046E0C(a1, a2, a3);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_25B046080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25B046E0C(a1, a2, a3);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_25B0460E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25B046E0C(a1, a2, a3);
  sub_25B0E3050();
  __break(1u);
}

void sub_25B0462A0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA30FD0, &qword_25B0E5938);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v66 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA30FD8, &qword_25B0E5940);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v66 - v7;
  sub_25B046E60(0, &qword_27FA30FE0, 0x277CC1E90);
  v9 = *&v0[OBJC_IVAR____TtC15NanoFaceGalleryP33_40986ADAA0F504397917503E2F9321D528SuperFacesHostViewController_bundleIdentifier];
  v10 = *&v0[OBJC_IVAR____TtC15NanoFaceGalleryP33_40986ADAA0F504397917503E2F9321D528SuperFacesHostViewController_bundleIdentifier + 8];

  v69 = sub_25B0470EC(v9, v10);
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
LABEL_11:
    v25 = v69;

    return;
  }

  v12 = [v11 identities];
  sub_25B046E60(0, &qword_27FA30FE8, 0x277CC1E58);
  v13 = sub_25B0E37F0();

  if (v13 >> 62)
  {
    if (sub_25B0E3CC0())
    {
      goto LABEL_4;
    }
  }

  else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x25F860730](0, v13);
    }

    else
    {
      if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_27;
      }

      v14 = *(v13 + 32);
    }

    v15 = v14;

    v16 = objc_opt_self();
    v17 = v69;
    v69 = v15;
    v18 = [v16 identityForLSApplicationIdentity_LSApplicationRecord_];
    if (v18)
    {
      v19 = v18;
      v68 = v17;
      v20 = objc_allocWithZone(MEMORY[0x277D761F8]);
      v21 = v19;
      v22 = [v20 init];
      v23 = objc_allocWithZone(MEMORY[0x277D761E0]);
      v66 = v22;
      v67 = v21;
      v24 = [v23 initWithProcessIdentity:v21 sceneSpecification:v22];
      sub_25B0E3AB0();
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {
        sub_25B03F0F8(v4);
      }

      else
      {
        (*(v6 + 32))(v8, v4, v5);
        v70[0] = 0;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        sub_25B046EA8(OpaqueTypeConformance2, v27, v28);
        sub_25B046FEC(&qword_27FA30FF8, sub_25B046F44, MEMORY[0x277D84F58]);
        sub_25B046FEC(&qword_27FA31010, sub_25B046F98, MEMORY[0x277D84F40]);
        sub_25B046FEC(&qword_27FA31020, sub_25B047064, MEMORY[0x277D84F48]);
        sub_25B0E29D0();
        (*(v6 + 8))(v8, v5);
      }

      v29 = [objc_allocWithZone(MEMORY[0x277D761F0]) init];
      [v24 setActivationController_];

      v30 = [v24 sceneViewController];
      [v1 addChildViewController_];

      v31 = [v24 sceneView];
      [v31 setTranslatesAutoresizingMaskIntoConstraints_];

      v32 = [v1 view];
      if (v32)
      {
        v33 = v32;
        v34 = [v24 sceneView];
        [v33 addSubview_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F00, &qword_25B0E5948);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_25B0E5720;
        v36 = [v24 sceneView];
        v37 = [v36 leadingAnchor];

        v38 = [v1 view];
        if (v38)
        {
          v39 = v38;
          v40 = [v38 leadingAnchor];

          v41 = [v37 constraintEqualToAnchor_];
          *(v35 + 32) = v41;
          v42 = [v24 sceneView];
          v43 = [v42 trailingAnchor];

          v44 = [v1 view];
          if (v44)
          {
            v45 = v44;
            v46 = [v44 trailingAnchor];

            v47 = [v43 constraintEqualToAnchor_];
            *(v35 + 40) = v47;
            v48 = [v24 sceneView];
            v49 = [v48 bottomAnchor];

            v50 = [v1 view];
            if (v50)
            {
              v51 = v50;
              v52 = [v50 bottomAnchor];

              v53 = [v49 constraintEqualToAnchor_];
              *(v35 + 48) = v53;
              v54 = [v24 sceneView];
              v55 = [v54 topAnchor];

              v56 = [v1 view];
              if (v56)
              {
                v57 = v56;
                v58 = objc_opt_self();
                v59 = [v57 topAnchor];

                v60 = [v55 constraintEqualToAnchor_];
                *(v35 + 56) = v60;
                sub_25B046E60(0, &unk_27FA33020, 0x277CCAAD0);
                v61 = sub_25B0E37E0();

                [v58 activateConstraints_];

                v62 = [v24 sceneViewController];
                [v62 didMoveToParentViewController_];

                v63 = v68;
                v64 = v67;

                v65 = *&v1[OBJC_IVAR____TtC15NanoFaceGalleryP33_40986ADAA0F504397917503E2F9321D528SuperFacesHostViewController_sceneHostingController];
                *&v1[OBJC_IVAR____TtC15NanoFaceGalleryP33_40986ADAA0F504397917503E2F9321D528SuperFacesHostViewController_sceneHostingController] = v24;

                return;
              }

              goto LABEL_31;
            }

LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            return;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    goto LABEL_11;
  }
}

id sub_25B046C68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuperFacesHostViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25B046D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA30FC0;
  if (!qword_27FA30FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA30FC0);
  }

  return result;
}

uint64_t sub_25B046D68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25B046DB0(uint64_t result, int a2, int a3)
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

unint64_t sub_25B046E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA30FC8;
  if (!qword_27FA30FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA30FC8);
  }

  return result;
}

uint64_t sub_25B046E60(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_25B046EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA30FF0;
  if (!qword_27FA30FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA30FF0);
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

unint64_t sub_25B046F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31008;
  if (!qword_27FA31008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31008);
  }

  return result;
}

unint64_t sub_25B046F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31018;
  if (!qword_27FA31018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31018);
  }

  return result;
}

uint64_t sub_25B046FEC(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA31000, &unk_25B0E5950);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25B047064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31028[0];
  if (!qword_27FA31028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FA31028);
  }

  return result;
}

id sub_25B0470EC(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_25B0E3730();

  v7[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() bundleRecordWithApplicationIdentifier:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_25B0E22D0();

    swift_willThrow();
  }

  return v3;
}

uint64_t SuperGalleryScene.init(content:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *a4 = "super_gallery_scene";
  *(a4 + 8) = 19;
  *(a4 + 16) = 2;
  type metadata accessor for SuperGalleryScene(0, a2, a3, a3);
  return a1();
}

uint64_t SuperGalleryScene.body.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = sub_25B0E2C30();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v15[-v9];
  v11 = *v1;
  v12 = *(v1 + 8);
  v16 = v2;
  v17 = v3;
  v18 = v1;
  sub_25B047534(v11, v12, *(v1 + 16), "super_gallery", 13, 2u, sub_25B047528, v15, v2, v3);
  swift_getWitnessTable();
  sub_25B045A50(v8, v4, v10);
  v13 = *(v5 + 8);
  v13(v8, v4);
  sub_25B0E2AE0();
  return (v13)(v10, v4);
}

uint64_t sub_25B047430(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SuperGalleryScene(0, v6, v7, v8);
  sub_25B0C75B4();
  sub_25B0C75B4();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_25B047534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = MEMORY[0x28223BE20](a1);
  v11(v10);
  return sub_25B0E2C20();
}

id sub_25B0476B0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = type metadata accessor for SuperGalleryHostViewController();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC15NanoFaceGalleryP33_9873E3ADB7C49D3A487978D73361BB5230SuperGalleryHostViewController_sceneHostingController] = 0;
  v5 = &v4[OBJC_IVAR____TtC15NanoFaceGalleryP33_9873E3ADB7C49D3A487978D73361BB5230SuperGalleryHostViewController_bundleIdentifier];
  *v5 = v2;
  *(v5 + 1) = v1;
  v7.receiver = v4;
  v7.super_class = v3;

  return objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_25B047734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25B048498(a1, a2, a3);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_25B047798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25B048498(a1, a2, a3);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_25B0477FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25B048498(a1, a2, a3);
  sub_25B0E3050();
  __break(1u);
}

void sub_25B0479B8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA30FD0, &qword_25B0E5938);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v66 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA30FD8, &qword_25B0E5940);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v66 - v7;
  sub_25B046E60(0, &qword_27FA30FE0, 0x277CC1E90);
  v9 = *&v0[OBJC_IVAR____TtC15NanoFaceGalleryP33_9873E3ADB7C49D3A487978D73361BB5230SuperGalleryHostViewController_bundleIdentifier];
  v10 = *&v0[OBJC_IVAR____TtC15NanoFaceGalleryP33_9873E3ADB7C49D3A487978D73361BB5230SuperGalleryHostViewController_bundleIdentifier + 8];

  v69 = sub_25B0470EC(v9, v10);
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
LABEL_11:
    v25 = v69;

    return;
  }

  v12 = [v11 identities];
  sub_25B046E60(0, &qword_27FA30FE8, 0x277CC1E58);
  v13 = sub_25B0E37F0();

  if (v13 >> 62)
  {
    if (sub_25B0E3CC0())
    {
      goto LABEL_4;
    }
  }

  else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x25F860730](0, v13);
    }

    else
    {
      if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_27;
      }

      v14 = *(v13 + 32);
    }

    v15 = v14;

    v16 = objc_opt_self();
    v17 = v69;
    v69 = v15;
    v18 = [v16 identityForLSApplicationIdentity_LSApplicationRecord_];
    if (v18)
    {
      v19 = v18;
      v68 = v17;
      v20 = objc_allocWithZone(MEMORY[0x277D761F8]);
      v21 = v19;
      v22 = [v20 init];
      v23 = objc_allocWithZone(MEMORY[0x277D761E0]);
      v66 = v22;
      v67 = v21;
      v24 = [v23 initWithProcessIdentity:v21 sceneSpecification:v22];
      sub_25B0E3AB0();
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {
        sub_25B03F0F8(v4);
      }

      else
      {
        (*(v6 + 32))(v8, v4, v5);
        v70[0] = 1;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        sub_25B046EA8(OpaqueTypeConformance2, v27, v28);
        sub_25B046FEC(&qword_27FA30FF8, sub_25B046F44, MEMORY[0x277D84F58]);
        sub_25B046FEC(&qword_27FA31010, sub_25B046F98, MEMORY[0x277D84F40]);
        sub_25B046FEC(&qword_27FA31020, sub_25B047064, MEMORY[0x277D84F48]);
        sub_25B0E29D0();
        (*(v6 + 8))(v8, v5);
      }

      v29 = [objc_allocWithZone(MEMORY[0x277D761F0]) init];
      [v24 setActivationController_];

      v30 = [v24 sceneViewController];
      [v1 addChildViewController_];

      v31 = [v24 sceneView];
      [v31 setTranslatesAutoresizingMaskIntoConstraints_];

      v32 = [v1 view];
      if (v32)
      {
        v33 = v32;
        v34 = [v24 sceneView];
        [v33 addSubview_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F00, &qword_25B0E5948);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_25B0E5720;
        v36 = [v24 sceneView];
        v37 = [v36 leadingAnchor];

        v38 = [v1 view];
        if (v38)
        {
          v39 = v38;
          v40 = [v38 leadingAnchor];

          v41 = [v37 constraintEqualToAnchor_];
          *(v35 + 32) = v41;
          v42 = [v24 sceneView];
          v43 = [v42 trailingAnchor];

          v44 = [v1 view];
          if (v44)
          {
            v45 = v44;
            v46 = [v44 trailingAnchor];

            v47 = [v43 constraintEqualToAnchor_];
            *(v35 + 40) = v47;
            v48 = [v24 sceneView];
            v49 = [v48 bottomAnchor];

            v50 = [v1 view];
            if (v50)
            {
              v51 = v50;
              v52 = [v50 bottomAnchor];

              v53 = [v49 constraintEqualToAnchor_];
              *(v35 + 48) = v53;
              v54 = [v24 sceneView];
              v55 = [v54 topAnchor];

              v56 = [v1 view];
              if (v56)
              {
                v57 = v56;
                v58 = objc_opt_self();
                v59 = [v57 topAnchor];

                v60 = [v55 constraintEqualToAnchor_];
                *(v35 + 56) = v60;
                sub_25B046E60(0, &unk_27FA33020, 0x277CCAAD0);
                v61 = sub_25B0E37E0();

                [v58 activateConstraints_];

                v62 = [v24 sceneViewController];
                [v62 didMoveToParentViewController_];

                v63 = v68;
                v64 = v67;

                v65 = *&v1[OBJC_IVAR____TtC15NanoFaceGalleryP33_9873E3ADB7C49D3A487978D73361BB5230SuperGalleryHostViewController_sceneHostingController];
                *&v1[OBJC_IVAR____TtC15NanoFaceGalleryP33_9873E3ADB7C49D3A487978D73361BB5230SuperGalleryHostViewController_sceneHostingController] = v24;

                return;
              }

              goto LABEL_31;
            }

LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            return;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    goto LABEL_11;
  }
}

id sub_25B048384()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuperGalleryHostViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25B048430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA310C0;
  if (!qword_27FA310C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA310C0);
  }

  return result;
}

unint64_t sub_25B048498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA310C8;
  if (!qword_27FA310C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA310C8);
  }

  return result;
}

void sub_25B0484EC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v38 = a2;
  v5 = sub_25B0E24A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FacePlacement(0);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  v16 = sub_25B0E2750();
  v17 = *(*(v16 - 8) + 16);
  v39 = v3;
  v17(v15, v3, v16);
  sub_25B049FAC(a1, &v15[*(v10 + 28)], type metadata accessor for FacePlacement.Location);
  v37 = v15;
  sub_25B049FAC(v15, v13, type metadata accessor for FacePlacement);
  type metadata accessor for OnDemandSnapshotProvider(0);
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC15NanoFaceGallery24OnDemandSnapshotProvider_instanceIdentifier;
  sub_25B0E2490();
  v20 = OBJC_IVAR____TtC15NanoFaceGallery24OnDemandSnapshotProvider_faceQueue;
  if (qword_27FA30C90 != -1)
  {
    swift_once();
  }

  *(v18 + v20) = qword_27FA31318;

  v21 = sub_25B0E2730();
  sub_25B049FAC(v13, v18 + OBJC_IVAR____TtC15NanoFaceGallery24OnDemandSnapshotProvider_placement, type metadata accessor for FacePlacement);
  v22 = *(v6 + 16);
  v22(v8, v18 + v19, v5);
  v23 = type metadata accessor for FaceObserver(0);
  v24 = objc_allocWithZone(v23);
  v25 = &v24[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_continuations];
  *v25 = 0;
  *(v25 + 1) = MEMORY[0x277D84F90];
  *&v24[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_face] = v21;
  v22(&v24[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_instanceIdentifier], v8, v5);
  v40.receiver = v24;
  v40.super_class = v23;
  v26 = v21;
  v27 = objc_msgSendSuper2(&v40, sel_init);
  [v26 addObserver_];
  (*(v6 + 8))(v8, v5);

  sub_25B04A014(v13, type metadata accessor for FacePlacement);
  *(v18 + 16) = v27;
  v28 = sub_25B0E2730();
  v29 = [v28 device];

  if (v29)
  {
    type metadata accessor for LocalStore();
    swift_allocObject();
    v30 = sub_25B04C598(v29);

    v31 = sub_25B0E2730();

    v32 = sub_25B049A9C(v31, v18, v30);
    v33 = type metadata accessor for AutoupdatingPersistedSnapshotProvider();
    swift_allocObject();
    v34 = sub_25B05EBA0(v32);
    v35 = v38;
    v38[3] = v33;
    v35[4] = &off_281E04C18;

    *v35 = v34;
    sub_25B04A014(v37, type metadata accessor for FacePlacement);
  }

  else
  {
    __break(1u);
  }
}

void sub_25B048944(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_25B0484EC(a1, v17);
  v4 = sub_25B0E2730();
  v5 = [v4 usesComplications];

  if (!v5)
  {
LABEL_8:
    sub_25B03F164(v17, a2);
    return;
  }

  v6 = sub_25B0E2730();
  v7 = [v6 device];

  if (v7)
  {
    v8 = [v7 isPaired];

    if (v8)
    {
      if (qword_27FA30CE8 != -1)
      {
        swift_once();
      }

      if ((qword_27FA39988 & 2) == 0)
      {
        sub_25B048AF0(v2);
        v10 = v9;
        sub_25B049F48(v17, v16);
        v14 = type metadata accessor for AutoupdatingPersistedSnapshotProvider();
        v15 = &off_281E04C18;
        *&v13 = v10;
        v11 = type metadata accessor for FallbackSnapshotProvider(0);
        v12 = swift_allocObject();

        sub_25B0E2490();
        sub_25B03F164(&v13, v12 + OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_primary);
        sub_25B03F164(v16, v12 + OBJC_IVAR____TtC15NanoFaceGallery24FallbackSnapshotProvider_fallback);
        a2[3] = v11;
        a2[4] = &off_281E05108;

        *a2 = v12;
        __swift_destroy_boxed_opaque_existential_1(v17);
        return;
      }
    }

    goto LABEL_8;
  }

  __break(1u);
}

void sub_25B048AF0(uint64_t a1)
{
  v41 = sub_25B0E24A0();
  v38 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25B0E2750();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ReplicatedSnapshotProvider(0);
  v8 = MEMORY[0x28223BE20](v7);
  v35 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v39 = v4;
  v12 = *(v4 + 16);
  v42 = a1;
  v12(v6, a1, v3);
  if (qword_27FA30CD0 != -1)
  {
    swift_once();
  }

  v13 = byte_27FA39980;
  if (qword_27FA30CC0 != -1)
  {
    swift_once();
  }

  v14 = qword_27FA39978;
  v15 = &v11[v7[7]];
  v15[3] = type metadata accessor for DaemonListener(0);
  v15[4] = &off_286C5A660;
  *v15 = v14;
  v16 = v7[5];
  v37 = v7;

  sub_25B0E2490();
  v17 = v6;
  v18 = sub_25B0E2730();
  *v11 = v13;
  v12(&v11[v7[6]], v6, v3);
  v36 = v3;
  v19 = v38;
  v20 = *(v38 + 16);
  v21 = &v11[v16];
  v22 = v40;
  v23 = v41;
  v20(v40, v21, v41);
  v24 = type metadata accessor for FaceObserver(0);
  v25 = objc_allocWithZone(v24);
  v26 = &v25[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_continuations];
  *v26 = 0;
  *(v26 + 1) = MEMORY[0x277D84F90];
  *&v25[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_face] = v18;
  v20(&v25[OBJC_IVAR____TtC15NanoFaceGallery12FaceObserver_instanceIdentifier], v22, v23);
  v43.receiver = v25;
  v43.super_class = v24;
  v27 = v18;
  v28 = objc_msgSendSuper2(&v43, sel_init);
  [v27 addObserver_];
  (*(v19 + 8))(v22, v23);

  (*(v39 + 8))(v17, v36);
  *&v11[v37[8]] = v28;
  v29 = sub_25B0E2730();
  v30 = [v29 device];

  if (v30)
  {
    type metadata accessor for ReplicatorStore();
    swift_allocObject();
    v31 = sub_25B04E35C(v30);

    v32 = sub_25B0E2730();
    v33 = v35;
    sub_25B049FAC(v11, v35, type metadata accessor for ReplicatedSnapshotProvider);

    v34 = sub_25B049C90(v32, v33, v31);
    type metadata accessor for AutoupdatingPersistedSnapshotProvider();
    swift_allocObject();
    sub_25B05EBA0(v34);

    sub_25B04A014(v11, type metadata accessor for ReplicatedSnapshotProvider);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25B048FA0()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_25B048FFC()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_25B049050()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_25B0490A4()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t sub_25B049100(uint64_t a1, uint64_t a2)
{
  v3[12] = a1;
  v3[13] = v2;
  sub_25B0E3900();
  v3[14] = sub_25B0E38F0();
  v5 = sub_25B0E3850();
  v3[15] = v5;
  v3[16] = v4;

  return MEMORY[0x2822009F8](sub_25B049198, v5, v4);
}

uint64_t sub_25B049198()
{
  v1 = (v0[13] + OBJC_IVAR____TtC15NanoFaceGallery20FaceSnapshotProvider_underlyingProvider);
  v2 = v1[3];
  v0[17] = v2;
  v3 = v1[4];
  v0[18] = v3;
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 24);
  v0[19] = swift_getAssociatedTypeWitness();
  v5 = sub_25B0E3B10();
  v0[20] = v5;
  v0[21] = *(v5 - 8);
  v6 = swift_task_alloc();
  v0[22] = v6;
  v9 = (v4 + *v4);
  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = sub_25B049370;

  return v9(v6, v2, v3);
}

uint64_t sub_25B049370()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_25B04962C;
  }

  else
  {
    v5 = sub_25B0494AC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25B0494AC()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);

  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 176);
  if (v4 == 1)
  {
    v6 = *(v0 + 96);
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));

    *(v6 + 32) = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;
  }

  else
  {
    v7 = *(v0 + 152);
    v8 = *(v0 + 96);
    *(v0 + 80) = v7;
    *(v0 + 88) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(v3 + 32))(boxed_opaque_existential_1, v5, v7);

    sub_25B03F164((v0 + 56), v0 + 16);
    sub_25B03F164((v0 + 16), v8);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_25B04962C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25B04969C()
{
  v1 = OBJC_IVAR____TtC15NanoFaceGallery20FaceSnapshotProvider_face;
  v2 = sub_25B0E2750();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15NanoFaceGallery20FaceSnapshotProvider_underlyingProvider));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for FaceSnapshotProvider(uint64_t a1)
{
  result = qword_27FA310D0;
  if (!qword_27FA310D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25B04979C(uint64_t a1)
{
  result = sub_25B0E2750();
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

uint64_t sub_25B049840(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25B0498DC;

  return sub_25B049100(a1, v3);
}

uint64_t sub_25B0498DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25B0499D0()
{
  v1 = (*v0 + OBJC_IVAR____TtC15NanoFaceGallery20FaceSnapshotProvider_underlyingProvider);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 32))(v2, v3);
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

uint64_t sub_25B049A9C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v22[3] = &type metadata for SendableNTKFace;
  v22[4] = &off_286C5B7B0;
  v22[0] = a1;
  v20 = type metadata accessor for OnDemandSnapshotProvider(0);
  v21 = &off_281E05220;
  v19[0] = a2;
  v18[3] = v5;
  v18[4] = &off_286C59968;
  v18[0] = a3;
  type metadata accessor for PersistedSnapshotProvider();
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v22, &type metadata for SendableNTKFace);
  MEMORY[0x28223BE20](v7);
  v9 = (v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v17[3] = &type metadata for SendableNTKFace;
  v17[4] = &off_286C5B7B0;
  v17[0] = v11;
  sub_25B049F48(v17, v6 + 16);
  sub_25B049F48(v18, v6 + 96);
  sub_25B049F48(v19, v6 + 56);
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v16[0] = swift_getDynamicType();
  v16[1] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA310E0, &qword_25B0E5BE0);
  v12 = sub_25B0E3760();
  v14 = v13;
  __swift_destroy_boxed_opaque_existential_1(v18);
  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(v17);
  *(v6 + 136) = v12;
  *(v6 + 144) = v14;
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v6;
}

uint64_t sub_25B049C90(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v23[3] = &type metadata for SendableNTKFace;
  v23[4] = &off_286C5B7B0;
  v23[0] = a1;
  v21 = type metadata accessor for ReplicatedSnapshotProvider(0);
  v22 = &off_281E05030;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  sub_25B049E94(a2, boxed_opaque_existential_1);
  v19[3] = v5;
  v19[4] = &off_286C59988;
  v19[0] = a3;
  type metadata accessor for PersistedSnapshotProvider();
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v23, &type metadata for SendableNTKFace);
  MEMORY[0x28223BE20](v8);
  v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v18[3] = &type metadata for SendableNTKFace;
  v18[4] = &off_286C5B7B0;
  v18[0] = v12;
  sub_25B049F48(v18, v7 + 16);
  sub_25B049F48(v19, v7 + 96);
  sub_25B049F48(v20, v7 + 56);
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v17[0] = swift_getDynamicType();
  v17[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA310E0, &qword_25B0E5BE0);
  v13 = sub_25B0E3760();
  v15 = v14;
  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v18);
  *(v7 + 136) = v13;
  *(v7 + 144) = v15;
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v7;
}

uint64_t sub_25B049E94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReplicatedSnapshotProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
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

uint64_t sub_25B049F48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25B049FAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25B04A014(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25B04A074(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_25B04A0BC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_25B04A118()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA310E8);
  __swift_project_value_buffer(v0, qword_27FA310E8);
  return sub_25B0E2960();
}

uint64_t sub_25B04A194()
{
  v20 = sub_25B0E2310();
  v0 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25B0E24A0();
  v3 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25B0E23C0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v8, qword_27FA39928);
  __swift_project_value_buffer(v6, qword_27FA39928);
  sub_25B0E2350();
  sub_25B0E2490();
  v11 = sub_25B0E2460();
  v13 = v12;
  (*(v3 + 8))(v5, v19);
  v21 = v11;
  v22 = v13;
  v14 = v20;
  v15 = (*(v0 + 104))(v2, *MEMORY[0x277CC91D8], v20);
  sub_25B04C9BC(v15, v16, v17);
  sub_25B0E23B0();
  (*(v0 + 8))(v2, v14);

  return (*(v7 + 8))(v10, v6);
}

id sub_25B04A420@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v70 = *MEMORY[0x277D85DE8];
  v3 = sub_25B0E2310();
  v63 = *(v3 - 8);
  v64 = v3;
  MEMORY[0x28223BE20](v3);
  v62 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25B0E24A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25B0E23C0();
  v67 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v62 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v62 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v62 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v62 - v22;
  if (qword_27FA30C78 != -1)
  {
    swift_once();
  }

  if (qword_27FA39958)
  {
    if ([a1 isPaired])
    {
      if (qword_27FA30C48 != -1)
      {
        swift_once();
      }

      v30 = __swift_project_value_buffer(v9, qword_27FA39928);
      (*(v67 + 16))(v23, v30, v9);
      result = [a1 pairingID];
      if (result)
      {
        v32 = result;
        sub_25B0E2480();

        v33 = sub_25B0E2460();
        v35 = v34;
        (*(v6 + 8))(v8, v5);
        v68 = v33;
        v69 = v35;
        v37 = v62;
        v36 = v63;
        v38 = v64;
        v39 = (*(v63 + 104))(v62, *MEMORY[0x277CC91C0], v64);
        sub_25B04C9BC(v39, v40, v41);
        sub_25B0E23B0();
        (*(v36 + 8))(v37, v38);

        return (*(v67 + 8))(v23, v9);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      if (qword_27FA30C48 != -1)
      {
        swift_once();
      }

      v42 = __swift_project_value_buffer(v9, qword_27FA39928);
      v43 = *(v67 + 16);
      v44 = v42;
      v45 = v65;

      return v43(v45, v44, v9);
    }
  }

  else
  {
    v66 = v9;
    v24 = sub_25B0E2330();
    if (MEMORY[0x25F860BB0](v24))
    {
      sub_25B0E2340();
      sub_25B0E2370();
      v25 = *(v67 + 8);
      v25(v15, v66);
      v26 = [objc_opt_self() &selRef__cxx_destruct + 3];
      v27 = sub_25B0E2360();
      v68 = 0;
      v28 = [v26 0x279931EF8];

      if (v28)
      {
        v29 = v68;
      }

      else
      {
        v46 = v68;
        v47 = sub_25B0E22D0();

        swift_willThrow();
      }

      v25(v18, v66);
    }

    sub_25B0E2340();
    sub_25B0E2370();
    v48 = *(v67 + 8);
    v67 += 8;
    v48(v15, v66);
    v49 = [objc_opt_self() defaultManager];
    v50 = sub_25B0E2360();
    v68 = 0;
    v51 = [v49 removeItemAtURL:v50 error:&v68];

    if (v51)
    {
      v52 = v68;
    }

    else
    {
      v53 = v68;
      v54 = sub_25B0E22D0();

      swift_willThrow();
    }

    v68 = 0xD000000000000015;
    v69 = 0x800000025B0EB520;
    v56 = v62;
    v55 = v63;
    v57 = v64;
    v58 = (*(v63 + 104))(v62, *MEMORY[0x277CC91D8], v64);
    sub_25B04C9BC(v58, v59, v60);
    sub_25B0E23B0();
    (*(v55 + 8))(v56, v57);
    v61 = v66;
    v48(v12, v66);
    return (v48)(v21, v61);
  }

  return result;
}

uint64_t sub_25B04AB58(void *a1)
{
  v2 = sub_25B0E2310();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25B0E24A0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v53 - v11;
  v13 = sub_25B0E23C0();
  v58 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v59 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v53 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v53 - v19;
  MEMORY[0x28223BE20](v18);
  v60 = &v53 - v21;
  sub_25B04A420(a1, v20);
  v57 = a1;
  v22 = [a1 pairingID];
  if (v22)
  {
    v23 = v22;
    sub_25B0E2480();

    (*(v7 + 32))(v12, v10, v6);
    v24 = sub_25B0E2460();
    v26 = v25;
    (*(v7 + 8))(v12, v6);
  }

  else
  {
    v26 = 0xE700000000000000;
    v24 = 0x746C7561666544;
  }

  v61[0] = v24;
  v61[1] = v26;
  v27 = (*(v3 + 104))(v5, *MEMORY[0x277CC91D8], v2);
  sub_25B04C9BC(v27, v28, v29);
  v30 = v60;
  sub_25B0E23B0();
  (*(v3 + 8))(v5, v2);
  v31 = v58;
  v32 = v20;
  v33 = *(v58 + 8);
  v33(v32, v13);

  if (qword_27FA30C40 != -1)
  {
    swift_once();
  }

  v34 = sub_25B0E2970();
  __swift_project_value_buffer(v34, qword_27FA310E8);
  v35 = v56;
  v58 = *(v31 + 16);
  (v58)(v56, v30, v13);
  v36 = v57;
  v37 = sub_25B0E2950();
  v38 = sub_25B0E3A50();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v57 = v33;
    v40 = v35;
    v41 = v39;
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v61[0] = v55;
    *v41 = 136315394;
    v42 = sub_25B0E2320();
    v44 = v43;
    v45 = v40;
    v33 = v57;
    v57(v45, v13);
    v46 = sub_25B04BE04(v42, v44, v61);
    v30 = v60;

    *(v41 + 4) = v46;
    *(v41 + 12) = 2112;
    *(v41 + 14) = v36;
    v47 = v54;
    *v54 = v36;
    v48 = v36;
    _os_log_impl(&dword_25B03D000, v37, v38, "Making cache at %s for %@…", v41, 0x16u);
    sub_25B04C3AC(v47);
    MEMORY[0x25F8613E0](v47, -1, -1);
    v49 = v55;
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x25F8613E0](v49, -1, -1);
    MEMORY[0x25F8613E0](v41, -1, -1);
  }

  else
  {

    v33(v35, v13);
  }

  v50 = v59;
  (v58)(v59, v30, v13);
  type metadata accessor for PersistedSnapshotStore(0);
  swift_allocObject();
  v51 = sub_25B06D918(v50);
  v33(v30, v13);
  return v51;
}

uint64_t sub_25B04B0FC(uint64_t a1, uint64_t a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  *(v3 + 112) = *a2;
  *(v3 + 120) = *(a2 + 8);
  *(v3 + 136) = *(a2 + 24);
  return MEMORY[0x2822009F8](sub_25B04B134, 0, 0);
}

uint64_t sub_25B04B134()
{
  v14 = v0;
  if (qword_27FA30C40 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0E2970();
  *(v0 + 144) = __swift_project_value_buffer(v1, qword_27FA310E8);

  v2 = sub_25B0E2950();
  v3 = sub_25B0E3A50();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 128);
    v4 = *(v0 + 136);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_25B04BE04(v5, v4, &v13);
    _os_log_impl(&dword_25B03D000, v2, v3, "Local store fetch for %s…", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x25F8613E0](v7, -1, -1);
    MEMORY[0x25F8613E0](v6, -1, -1);
  }

  v9 = *(v0 + 128);
  v8 = *(v0 + 136);
  v10 = *(v0 + 112);
  v11 = *(*(v0 + 104) + 16);
  *(v0 + 152) = v11;
  *(v0 + 64) = v10;
  *(v0 + 80) = v9;
  *(v0 + 88) = v8;

  return MEMORY[0x2822009F8](sub_25B04B2F0, v11, 0);
}

uint64_t sub_25B04B2F0()
{
  sub_25B06B6E4((v0 + 64), (v0 + 16));

  return MEMORY[0x2822009F8](sub_25B04B360, 0, 0);
}

uint64_t sub_25B04B360()
{
  v18 = v0;
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];

  v16 = v2;
  sub_25B04C4D8(v2, v1, v3, v4, v5, v6);
  v7 = sub_25B0E2950();
  v8 = sub_25B0E3A50();

  if (os_log_type_enabled(v7, v8))
  {
    v14 = v0[16];
    v15 = v0[17];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 67109378;
    *(v9 + 4) = v1 != 0;
    sub_25B04C538(v16, v1, v3, v4, v5, v6);
    *(v9 + 8) = 2080;
    *(v9 + 10) = sub_25B04BE04(v14, v15, &v17);
    _os_log_impl(&dword_25B03D000, v7, v8, "Local store snapshot %{BOOL}d for %s…", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x25F8613E0](v10, -1, -1);
    MEMORY[0x25F8613E0](v9, -1, -1);
  }

  else
  {
    sub_25B04C538(v16, v1, v3, v4, v5, v6);
  }

  v11 = v0[12];
  *v11 = v16;
  v11[1] = v1;
  v11[2] = v3;
  v11[3] = v4;
  v11[4] = v5;
  v11[5] = v6;
  v12 = v0[1];

  return v12();
}

uint64_t sub_25B04B548(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_25B04B56C, 0, 0);
}

uint64_t sub_25B04B56C()
{
  v16 = v0;
  if (qword_27FA30C40 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_25B0E2970();
  v0[11] = __swift_project_value_buffer(v2, qword_27FA310E8);
  sub_25B049F48(v1, (v0 + 2));
  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A50();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = v0[5];
    v8 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
    (*(v8 + 8))(v15, v7, v8);
    v9 = v15[2];
    v10 = v15[3];

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v11 = sub_25B04BE04(v9, v10, &v14);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_25B03D000, v3, v4, "Local store storing snapshot with key %s…", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x25F8613E0](v6, -1, -1);
    MEMORY[0x25F8613E0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v12 = *(v0[10] + 16);
  v0[12] = v12;

  return MEMORY[0x2822009F8](sub_25B04B764, v12, 0);
}

uint64_t sub_25B04B764()
{
  sub_25B06C2CC(*(v0 + 72), (v0 + 16));
  *(v0 + 104) = 0;

  return MEMORY[0x2822009F8](sub_25B04B7F8, 0, 0);
}

uint64_t sub_25B04B7F8()
{
  v25 = v0;
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v22 = *(v0 + 40);
  v4 = *(v0 + 56);
  sub_25B049F48(*(v0 + 72), v0 + 16);
  v5 = sub_25B0E2950();
  v6 = sub_25B0E3A50();
  if (os_log_type_enabled(v5, v6))
  {
    v21 = v1;
    v7 = swift_slowAlloc();
    v20 = v2;
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    v19 = v4;
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
    (*(v10 + 8))(v24, v9, v10);
    v11 = v24[2];
    v12 = v24[3];

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v13 = sub_25B04BE04(v11, v12, &v23);
    v4 = v19;

    *(v7 + 4) = v13;
    _os_log_impl(&dword_25B03D000, v5, v6, "Local stored snapshot with key %s…", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    v14 = v8;
    v2 = v20;
    MEMORY[0x25F8613E0](v14, -1, -1);
    v15 = v7;
    v1 = v21;
    MEMORY[0x25F8613E0](v15, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v16 = *(v0 + 64);
  *v16 = v1;
  *(v16 + 8) = v3;
  *(v16 + 16) = v2;
  *(v16 + 24) = v22;
  *(v16 + 40) = v4;
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_25B04B9E4()
{
  v20 = v0;
  v1 = v0[13];
  sub_25B049F48(v0[9], (v0 + 2));
  v2 = v1;
  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A30();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[13];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v6 = 136315394;
    v9 = v0[5];
    v10 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v9);
    (*(v10 + 8))(v19, v9, v10);
    v11 = v19[2];
    v12 = v19[3];

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v13 = sub_25B04BE04(v11, v12, &v18);

    *(v6 + 4) = v13;
    *(v6 + 12) = 2112;
    v14 = v5;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v15;
    *v7 = v15;
    _os_log_impl(&dword_25B03D000, v3, v4, "Local store failed to store snapshot with key %s - %@", v6, 0x16u);
    sub_25B04C3AC(v7);
    MEMORY[0x25F8613E0](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x25F8613E0](v8, -1, -1);
    MEMORY[0x25F8613E0](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  swift_willThrow();
  v16 = v0[1];

  return v16();
}

uint64_t sub_25B04BBF0()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25B04BC4C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25B0498DC;

  return sub_25B04B0FC(a1, a2);
}

uint64_t sub_25B04BCF8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25B0498DC;

  return sub_25B04B548(a1, a2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_25B04BE04(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25B04BED0(v11, 0, 0, 1, a1, a2);
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
    sub_25B04C414(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_25B04BED0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_25B04BFDC(a5, a6);
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
    result = sub_25B0E3C10();
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

void *sub_25B04BFDC(uint64_t a1, unint64_t a2)
{
  v3 = sub_25B04C028(a1, a2);
  sub_25B04C158(&unk_286C58EB0);
  return v3;
}

void *sub_25B04C028(uint64_t a1, unint64_t a2)
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

  v6 = sub_25B04C244(v5, 0);
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

  result = sub_25B0E3C10();
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
        v10 = sub_25B0E37A0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25B04C244(v10, 0);
        result = sub_25B0E3BB0();
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

uint64_t sub_25B04C158(uint64_t result)
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

  result = sub_25B04C2B8(result, v11, 1, v3);
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

void *sub_25B04C244(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31110, &qword_25B0E5C70);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25B04C2B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31110, &qword_25B0E5C70);
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

uint64_t sub_25B04C3AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA31850, &qword_25B0E74B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B04C414(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
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

void sub_25B04C4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a2)
  {

    v7 = a5;

    v8 = a6;
  }
}

void sub_25B04C538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a2)
  {
  }
}

uint64_t sub_25B04C598(void *a1)
{
  v3 = *v1;
  v39 = sub_25B0E2310();
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25B0E24A0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v14 = sub_25B0E23C0();
  v40 = *(v14 - 8);
  v41 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v37 = v3;
  sub_25B04A420(a1, v17);
  v38 = a1;
  v20 = [a1 pairingID];
  if (v20)
  {
    v21 = v20;
    sub_25B0E2480();

    (*(v8 + 32))(v13, v11, v7);
    v22 = sub_25B0E2460();
    v24 = v23;
    (*(v8 + 8))(v13, v7);
  }

  else
  {
    v24 = 0xE700000000000000;
    v22 = 0x746C7561666544;
  }

  v43 = v22;
  v44 = v24;
  v25 = v39;
  v26 = (*(v4 + 104))(v6, *MEMORY[0x277CC91D8], v39);
  sub_25B04C9BC(v26, v27, v28);
  sub_25B0E23B0();
  (*(v4 + 8))(v6, v25);
  v29 = v41;
  v30 = *(v40 + 8);
  v30(v17, v41);

  if (qword_27FA30C50 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_27FA31100);
  v31 = off_27FA31108;
  if (*(off_27FA31108 + 2) && (v32 = sub_25B065C64(v19), (v33 & 1) != 0))
  {
    v34 = *(v31[7] + 8 * v32);
  }

  else
  {
    v34 = sub_25B04AB58(v38);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = off_27FA31108;
    off_27FA31108 = 0x8000000000000000;
    sub_25B0688BC(v34, v19, isUniquelyReferenced_nonNull_native);
    off_27FA31108 = v43;
  }

  os_unfair_lock_unlock(&dword_27FA31100);
  v30(v19, v29);
  result = v42;
  *(v42 + 16) = v34;
  return result;
}

unint64_t sub_25B04C9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31118;
  if (!qword_27FA31118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31118);
  }

  return result;
}

uint64_t sub_25B04CA10()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA31120);
  __swift_project_value_buffer(v0, qword_27FA31120);
  return sub_25B0E2960();
}

uint64_t sub_25B04CA94()
{
  v20 = sub_25B0E2310();
  v0 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25B0E24A0();
  v3 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25B0E23C0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v8, qword_27FA39940);
  __swift_project_value_buffer(v6, qword_27FA39940);
  sub_25B0E2350();
  sub_25B0E2490();
  v11 = sub_25B0E2460();
  v13 = v12;
  (*(v3 + 8))(v5, v19);
  v21 = v11;
  v22 = v13;
  v14 = v20;
  v15 = (*(v0 + 104))(v2, *MEMORY[0x277CC91D8], v20);
  sub_25B04C9BC(v15, v16, v17);
  sub_25B0E23B0();
  (*(v0 + 8))(v2, v14);

  return (*(v7 + 8))(v10, v6);
}

id sub_25B04CD20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v52 = *MEMORY[0x277D85DE8];
  v47 = sub_25B0E2310();
  v3 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25B0E24A0();
  v46 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25B0E23C0();
  v49 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v46 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v46 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v46 - v19;
  if (qword_27FA30C78 != -1)
  {
    swift_once();
  }

  if (qword_27FA39958)
  {
    if ([a1 isPaired])
    {
      if (qword_27FA30C60 != -1)
      {
        swift_once();
      }

      v26 = __swift_project_value_buffer(v9, qword_27FA39940);
      (*(v49 + 16))(v20, v26, v9);
      result = [a1 pairingID];
      if (result)
      {
        v28 = result;
        sub_25B0E2480();

        v29 = sub_25B0E2460();
        v31 = v30;
        (*(v46 + 8))(v8, v6);
        v50 = v29;
        v51 = v31;
        v32 = v47;
        v33 = (*(v3 + 104))(v5, *MEMORY[0x277CC91C0], v47);
        sub_25B04C9BC(v33, v34, v35);
        sub_25B0E23B0();
        (*(v3 + 8))(v5, v32);

        return (*(v49 + 8))(v20, v9);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      if (qword_27FA30C60 != -1)
      {
        swift_once();
      }

      v42 = __swift_project_value_buffer(v9, qword_27FA39940);
      v43 = *(v49 + 16);
      v44 = v42;
      v45 = v48;

      return v43(v45, v44, v9);
    }
  }

  else
  {
    sub_25B0E2330();
    sub_25B0E2340();
    sub_25B0E2370();
    v21 = *(v49 + 8);
    v49 += 8;
    v21(v12, v9);
    v22 = [objc_opt_self() defaultManager];
    v23 = sub_25B0E2360();
    v50 = 0;
    v24 = [v22 removeItemAtURL:v23 error:&v50];

    if (v24)
    {
      v25 = v50;
    }

    else
    {
      v36 = v50;
      v37 = sub_25B0E22D0();

      swift_willThrow();
    }

    v50 = 0xD00000000000001ALL;
    v51 = 0x800000025B0EB5A0;
    v38 = v47;
    v39 = (*(v3 + 104))(v5, *MEMORY[0x277CC91D8], v47);
    sub_25B04C9BC(v39, v40, v41);
    sub_25B0E23B0();
    (*(v3 + 8))(v5, v38);
    v21(v15, v9);
    return (v21)(v18, v9);
  }

  return result;
}

uint64_t sub_25B04D33C(void *a1)
{
  v2 = sub_25B0E2310();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25B0E24A0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v53 - v11;
  v13 = sub_25B0E23C0();
  v58 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v59 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v53 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v53 - v19;
  MEMORY[0x28223BE20](v18);
  v60 = &v53 - v21;
  sub_25B04CD20(a1, v20);
  v57 = a1;
  v22 = [a1 pairingID];
  if (v22)
  {
    v23 = v22;
    sub_25B0E2480();

    (*(v7 + 32))(v12, v10, v6);
    v24 = sub_25B0E2460();
    v26 = v25;
    (*(v7 + 8))(v12, v6);
  }

  else
  {
    v26 = 0xE700000000000000;
    v24 = 0x746C7561666544;
  }

  v61[0] = v24;
  v61[1] = v26;
  v27 = (*(v3 + 104))(v5, *MEMORY[0x277CC91D8], v2);
  sub_25B04C9BC(v27, v28, v29);
  v30 = v60;
  sub_25B0E23B0();
  (*(v3 + 8))(v5, v2);
  v31 = v58;
  v32 = v20;
  v33 = *(v58 + 8);
  v33(v32, v13);

  if (qword_27FA30C58 != -1)
  {
    swift_once();
  }

  v34 = sub_25B0E2970();
  __swift_project_value_buffer(v34, qword_27FA31120);
  v35 = v56;
  v58 = *(v31 + 16);
  (v58)(v56, v30, v13);
  v36 = v57;
  v37 = sub_25B0E2950();
  v38 = sub_25B0E3A50();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v57 = v33;
    v40 = v35;
    v41 = v39;
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v61[0] = v55;
    *v41 = 136315394;
    v42 = sub_25B0E2320();
    v44 = v43;
    v45 = v40;
    v33 = v57;
    v57(v45, v13);
    v46 = sub_25B04BE04(v42, v44, v61);
    v30 = v60;

    *(v41 + 4) = v46;
    *(v41 + 12) = 2112;
    *(v41 + 14) = v36;
    v47 = v54;
    *v54 = v36;
    v48 = v36;
    _os_log_impl(&dword_25B03D000, v37, v38, "Making cache at %s for %@…", v41, 0x16u);
    sub_25B04C3AC(v47);
    MEMORY[0x25F8613E0](v47, -1, -1);
    v49 = v55;
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x25F8613E0](v49, -1, -1);
    MEMORY[0x25F8613E0](v41, -1, -1);
  }

  else
  {

    v33(v35, v13);
  }

  v50 = v59;
  (v58)(v59, v30, v13);
  type metadata accessor for PersistedSnapshotStore(0);
  swift_allocObject();
  v51 = sub_25B06D918(v50);
  v33(v30, v13);
  return v51;
}

uint64_t sub_25B04D8E0(uint64_t a1, uint64_t a2)
{
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  *(v3 + 64) = *a2;
  *(v3 + 72) = *(a2 + 8);
  *(v3 + 88) = *(a2 + 24);
  return MEMORY[0x2822009F8](sub_25B04D918, 0, 0);
}

uint64_t sub_25B04D918()
{
  v14 = v0;
  if (qword_27FA30C58 != -1)
  {
    swift_once();
  }

  v1 = sub_25B0E2970();
  __swift_project_value_buffer(v1, qword_27FA31120);

  v2 = sub_25B0E2950();
  v3 = sub_25B0E3A50();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_25B04BE04(v5, v4, &v13);
    _os_log_impl(&dword_25B03D000, v2, v3, "Replicator store asked for snapshot of %s…", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x25F8613E0](v7, -1, -1);
    MEMORY[0x25F8613E0](v6, -1, -1);
  }

  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  v10 = *(v0 + 64);
  v11 = *(*(v0 + 56) + 16);
  *(v0 + 96) = v11;
  *(v0 + 16) = v10;
  *(v0 + 32) = v9;
  *(v0 + 40) = v8;

  return MEMORY[0x2822009F8](sub_25B04DAD0, v11, 0);
}

uint64_t sub_25B04DAD0()
{
  sub_25B06B6E4((v0 + 16), *(v0 + 48));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25B04DB38(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return MEMORY[0x2822009F8](sub_25B04DB5C, 0, 0);
}

uint64_t sub_25B04DB5C()
{
  v16 = v0;
  if (qword_27FA30C58 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_25B0E2970();
  v0[11] = __swift_project_value_buffer(v2, qword_27FA31120);
  sub_25B049F48(v1, (v0 + 2));
  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A50();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = v0[5];
    v8 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
    (*(v8 + 8))(v15, v7, v8);
    v9 = v15[2];
    v10 = v15[3];

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v11 = sub_25B04BE04(v9, v10, &v14);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_25B03D000, v3, v4, "Replicator store asked to store snapshot %s…", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x25F8613E0](v6, -1, -1);
    MEMORY[0x25F8613E0](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v12 = *(v0[10] + 16);
  v0[12] = v12;

  return MEMORY[0x2822009F8](sub_25B04DD54, v12, 0);
}

uint64_t sub_25B04DD54()
{
  sub_25B06C2CC(*(v0 + 72), (v0 + 16));
  *(v0 + 104) = 0;

  return MEMORY[0x2822009F8](sub_25B04DDE8, 0, 0);
}

uint64_t sub_25B04DDE8()
{
  v25 = v0;
  v1 = *(v0 + 16);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v22 = *(v0 + 40);
  v4 = *(v0 + 56);
  sub_25B049F48(*(v0 + 72), v0 + 16);
  v5 = sub_25B0E2950();
  v6 = sub_25B0E3A50();
  if (os_log_type_enabled(v5, v6))
  {
    v21 = v1;
    v7 = swift_slowAlloc();
    v20 = v2;
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136315138;
    v19 = v4;
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
    (*(v10 + 8))(v24, v9, v10);
    v11 = v24[2];
    v12 = v24[3];

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v13 = sub_25B04BE04(v11, v12, &v23);
    v4 = v19;

    *(v7 + 4) = v13;
    _os_log_impl(&dword_25B03D000, v5, v6, "Replicator store stored snapshot %s…", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    v14 = v8;
    v2 = v20;
    MEMORY[0x25F8613E0](v14, -1, -1);
    v15 = v7;
    v1 = v21;
    MEMORY[0x25F8613E0](v15, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v16 = *(v0 + 64);
  *v16 = v1;
  *(v16 + 8) = v3;
  *(v16 + 16) = v2;
  *(v16 + 24) = v22;
  *(v16 + 40) = v4;
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_25B04DFD4()
{
  v20 = v0;
  v1 = v0[13];
  sub_25B049F48(v0[9], (v0 + 2));
  v2 = v1;
  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A30();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[13];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v6 = 136315394;
    v9 = v0[5];
    v10 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v9);
    (*(v10 + 8))(v19, v9, v10);
    v11 = v19[2];
    v12 = v19[3];

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v13 = sub_25B04BE04(v11, v12, &v18);

    *(v6 + 4) = v13;
    *(v6 + 12) = 2112;
    v14 = v5;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v15;
    *v7 = v15;
    _os_log_impl(&dword_25B03D000, v3, v4, "Replicator store failed to store snapshot of %s - %@…", v6, 0x16u);
    sub_25B04C3AC(v7);
    MEMORY[0x25F8613E0](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x25F8613E0](v8, -1, -1);
    MEMORY[0x25F8613E0](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  swift_willThrow();
  v16 = v0[1];

  return v16();
}

uint64_t sub_25B04E204(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25B0498DC;

  return sub_25B04D8E0(a1, a2);
}

uint64_t sub_25B04E2B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25B0498DC;

  return sub_25B04DB38(a1, a2);
}

uint64_t sub_25B04E35C(void *a1)
{
  v3 = *v1;
  v39 = sub_25B0E2310();
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25B0E24A0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v14 = sub_25B0E23C0();
  v40 = *(v14 - 8);
  v41 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v37 = v3;
  sub_25B04CD20(a1, v17);
  v38 = a1;
  v20 = [a1 pairingID];
  if (v20)
  {
    v21 = v20;
    sub_25B0E2480();

    (*(v8 + 32))(v13, v11, v7);
    v22 = sub_25B0E2460();
    v24 = v23;
    (*(v8 + 8))(v13, v7);
  }

  else
  {
    v24 = 0xE700000000000000;
    v22 = 0x746C7561666544;
  }

  v43 = v22;
  v44 = v24;
  v25 = v39;
  v26 = (*(v4 + 104))(v6, *MEMORY[0x277CC91D8], v39);
  sub_25B04C9BC(v26, v27, v28);
  sub_25B0E23B0();
  (*(v4 + 8))(v6, v25);
  v29 = v41;
  v30 = *(v40 + 8);
  v30(v17, v41);

  if (qword_27FA30C68 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_27FA31138);
  v31 = off_27FA31140;
  if (*(off_27FA31140 + 2) && (v32 = sub_25B065C64(v19), (v33 & 1) != 0))
  {
    v34 = *(v31[7] + 8 * v32);
  }

  else
  {
    v34 = sub_25B04D33C(v38);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = off_27FA31140;
    off_27FA31140 = 0x8000000000000000;
    sub_25B0688BC(v34, v19, isUniquelyReferenced_nonNull_native);
    off_27FA31140 = v43;
  }

  os_unfair_lock_unlock(&dword_27FA31138);
  v30(v19, v29);
  result = v42;
  *(v42 + 16) = v34;
  return result;
}

uint64_t sub_25B04E780()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA31148);
  __swift_project_value_buffer(v0, qword_27FA31148);
  return sub_25B0E2960();
}

id sub_25B04E804(void *a1)
{
  v1 = a1;
  v2 = sub_25B0E3730();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id sub_25B04E874(void *a1)
{
  v1 = a1;
  v2 = sub_25B0E3730();
  v3 = [v1 BOOLForKey_];

  return v3;
}

id sub_25B04E8E4(void *a1)
{
  v1 = a1;
  v2 = sub_25B0E3730();
  v3 = [v1 BOOLForKey_];

  return v3;
}

uint64_t sub_25B04E954()
{
  result = sub_25B04E974();
  qword_27FA39958 = result;
  return result;
}

uint64_t sub_25B04E974()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_25B0E3730();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    if ([v2 transientLocalStore])
    {
      if (qword_27FA30C70 != -1)
      {
        swift_once();
      }

      v3 = sub_25B0E2970();
      __swift_project_value_buffer(v3, qword_27FA31148);
      v4 = sub_25B0E2950();
      v5 = sub_25B0E3A50();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_25B03D000, v4, v5, "Transient local store enabled", v6, 2u);
        MEMORY[0x25F8613E0](v6, -1, -1);
      }

      v7 = 1;
    }

    else
    {
      v7 = 0;
    }

    if ([v2 transientFallbackStore])
    {
      if (qword_27FA30C70 != -1)
      {
        swift_once();
      }

      v12 = sub_25B0E2970();
      __swift_project_value_buffer(v12, qword_27FA31148);
      v13 = sub_25B0E2950();
      v14 = sub_25B0E3A50();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_25B03D000, v13, v14, "Transient fallback store enabled", v15, 2u);
        MEMORY[0x25F8613E0](v15, -1, -1);
      }

      v7 |= 4uLL;
    }

    if ([v2 transientReplicatorStore])
    {
      if (qword_27FA30C70 != -1)
      {
        swift_once();
      }

      v16 = sub_25B0E2970();
      __swift_project_value_buffer(v16, qword_27FA31148);
      v17 = sub_25B0E2950();
      v18 = sub_25B0E3A50();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_25B03D000, v17, v18, "Transient replicator store enabled", v19, 2u);
        MEMORY[0x25F8613E0](v19, -1, -1);
      }

      return v7 | 2;
    }

    else
    {
    }
  }

  else
  {
    if (qword_27FA30C70 != -1)
    {
      swift_once();
    }

    v8 = sub_25B0E2970();
    __swift_project_value_buffer(v8, qword_27FA31148);
    v9 = sub_25B0E2950();
    v10 = sub_25B0E3A30();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_25B03D000, v9, v10, "Cannot read overrides for 'com.apple.NanoTimeKit.face'", v11, 2u);
      MEMORY[0x25F8613E0](v11, -1, -1);
    }

    return 0;
  }

  return v7;
}

uint64_t sub_25B04ED90()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA31160);
  __swift_project_value_buffer(v0, qword_27FA31160);
  return sub_25B0E2960();
}

void *sub_25B04EE24()
{

  sub_25B043E90(*(v0 + 128), *(v0 + 136));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_25B04EE64()
{
  sub_25B04EE24();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25B04EEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25B04EF04(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_25B04EF4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrioritizedQueueStatus(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PrioritizedQueueStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25B04F128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA31278;
  if (!qword_27FA31278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA31278);
  }

  return result;
}

uint64_t sub_25B04F17C()
{
  v0 = sub_25B0E2970();
  __swift_allocate_value_buffer(v0, qword_27FA31280);
  __swift_project_value_buffer(v0, qword_27FA31280);
  return sub_25B0E2960();
}

uint64_t sub_25B04F1FC()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25B04F260()
{
  sub_25B0E3F10();
  MEMORY[0x25F860A80](0);
  return sub_25B0E3F50();
}

uint64_t sub_25B04F2A4(uint64_t a1)
{
  sub_25B0E3F10();
  MEMORY[0x25F860A80](0);
  return sub_25B0E3F50();
}

uint64_t sub_25B04F2E4(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA312A8, &qword_25B0E6058);
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v5 = sub_25B0E24A0();
  v3[26] = v5;
  v3[27] = *(v5 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  sub_25B0E3900();
  v3[30] = sub_25B0E38F0();
  v6 = sub_25B0E3850();
  v3[31] = v6;
  v3[32] = v7;

  return MEMORY[0x2822009F8](sub_25B04F484, v6, v7);
}

uint64_t sub_25B04F484()
{
  v1 = [objc_opt_self() defaultModernSnapshotOptions];
  v0[33] = sub_25B046E60(0, &qword_27FA319D0, 0x277D82BB8);
  v2 = sub_25B0E36A0();

  v3 = sub_25B0E3740();
  v5 = v4;
  sub_25B046E60(0, &qword_27FA312B0, 0x277CCABB0);
  v6 = sub_25B0E3AD0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_25B068F6C(v6, v3, v5, isUniquelyReferenced_nonNull_native);

  v0[34] = v2;
  type metadata accessor for MainThreadAvoidingSnapshotClient();
  v8 = swift_allocObject();
  v0[35] = v8;
  swift_defaultActor_initialize();
  *(v8 + 112) = 0;

  return MEMORY[0x2822009F8](sub_25B04F620, v8, 0);
}

uint64_t sub_25B04F620()
{
  v1 = v0[35];
  v2 = *(v1 + 112);
  if (v2)
  {
    v3 = *(v1 + 112);
  }

  else
  {
    v4 = [objc_opt_self() sharedInstance];
    v5 = *(v1 + 112);
    *(v1 + 112) = v4;
    v3 = v4;

    v2 = 0;
  }

  v0[36] = v3;
  v6 = v0[31];
  v7 = v0[32];
  v8 = v2;

  return MEMORY[0x2822009F8](sub_25B04F710, v6, v7);
}

uint64_t sub_25B04F710(uint64_t a1)
{
  v42 = v1;
  v41[1] = *MEMORY[0x277D85DE8];
  sub_25B0E2490();
  v2 = sub_25B0E2730();
  v1[37] = v2;
  if (qword_27FA30C88 != -1)
  {
    swift_once();
  }

  v4 = v1[28];
  v3 = v1[29];
  v5 = v1[26];
  v6 = v1[27];
  v7 = sub_25B0E2970();
  __swift_project_value_buffer(v7, qword_27FA31280);
  (*(v6 + 16))(v4, v3, v5);
  v8 = v2;
  v9 = sub_25B0E2950();
  v10 = sub_25B0E3A50();
  v40 = v8;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41[0] = v38;
    *v11 = 136315650;
    swift_getObjectType();
    v12 = sub_25B0E3FB0();
    v14 = sub_25B04BE04(v12, v13, v41);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v15 = [v8 unsafeDailySnapshotKey];

    v17 = v1[27];
    v16 = v1[28];
    v18 = v1[26];
    if (!v15)
    {
      v36 = (*(v17 + 8))(v1[28], v1[26]);
      __break(1u);
      return MEMORY[0x282200938](v36);
    }

    v19 = sub_25B0E3740();
    v21 = v20;

    v22 = sub_25B04BE04(v19, v21, v41);

    *(v11 + 14) = v22;
    *(v11 + 22) = 2080;
    sub_25B050618(&qword_27FA31830, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v23 = sub_25B0E3E20();
    v25 = v24;
    v26 = *(v17 + 8);
    v26(v16, v18);
    v27 = sub_25B04BE04(v23, v25, v41);

    *(v11 + 24) = v27;
    _os_log_impl(&dword_25B03D000, v9, v10, "Snapshotting %s - %s - %s…", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F8613E0](v38, -1, -1);
    MEMORY[0x25F8613E0](v11, -1, -1);
  }

  else
  {
    v29 = v1[27];
    v28 = v1[28];
    v30 = v1[26];

    v26 = *(v29 + 8);
    v26(v28, v30);
  }

  v1[38] = v26;
  v39 = v1[36];
  v31 = v1[24];
  v32 = v1[25];
  v33 = v1[23];
  v34 = sub_25B0E3690();
  v1[39] = v34;
  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_25B04FBF0;
  swift_continuation_init();
  v1[17] = v33;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  sub_25B046E60(0, &qword_27FA312B8, 0x277D2C038);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA32F40, &unk_25B0E6060);
  sub_25B0E3860();
  (*(v31 + 32))(boxed_opaque_existential_1, v32, v33);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_25B0503A4;
  v1[13] = &block_descriptor;
  [v39 requestSnapshotOfFace:v40 options:v34 completion:?];
  (*(v31 + 8))(boxed_opaque_existential_1, v33);
  v36 = (v1 + 2);

  return MEMORY[0x282200938](v36);
}

uint64_t sub_25B04FBF0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 320) = v2;
  if (v2)
  {

    v3 = *(v1 + 248);
    v4 = *(v1 + 256);
    v5 = sub_25B050298;
  }

  else
  {
    v3 = *(v1 + 248);
    v4 = *(v1 + 256);
    v5 = sub_25B04FD3C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_25B04FD3C()
{
  v1 = v0[39];
  v2 = v0[37];
  v0[41] = v0[18];

  v3 = [v2 device];
  v0[42] = v3;
  if (!v3)
  {
    __break(1u);
  }

  v4 = v0[35];

  return MEMORY[0x2822009F8](sub_25B04FE08, v4, 0);
}

uint64_t sub_25B04FE08()
{
  *(v0 + 152) = 0;
  v1 = [*(v0 + 328) snapshotResultForGalleryLiteUsingDevice:*(v0 + 336) withError:v0 + 152];
  *(v0 + 344) = v1;
  v2 = *(v0 + 152);
  v3 = *(v0 + 336);
  if (v1)
  {
    v4 = v2;

    v5 = *(v0 + 248);
    v6 = *(v0 + 256);
    v7 = sub_25B04FF14;
  }

  else
  {
    v8 = v2;
    *(v0 + 352) = sub_25B0E22D0();

    swift_willThrow();
    v5 = *(v0 + 248);
    v6 = *(v0 + 256);
    v7 = sub_25B050190;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_25B04FF14()
{
  v37 = v0;
  v36 = *MEMORY[0x277D85DE8];
  v1 = v0[43];

  sub_25B058618(v1, &v29);
  v5 = v30;
  v6 = v0[43];
  v7 = v0[41];
  v27 = v0[37];
  v28 = v0[38];
  v8 = v0[36];
  v9 = v0[29];
  if (v30)
  {
    v25 = v0[41];
    v26 = v0[36];
    v23 = v31;
    v24 = v29;
    v21 = v0[43];
    v10 = v32;
    v11 = v33;
    v12 = v34;
    v13 = v35;
    v14 = v0[26];
    v15 = v0[20];

    v22 = v11;
    v20 = v12;
    v19 = v13;
    v28(v9, v14);

    sub_25B0505A8(v24, v5, v23, v10, v11, v12, v13);

    *v15 = v24;
    v15[1] = v5;
    v15[2] = v23;
    v15[3] = v10;
    v15[4] = v22;
    v15[5] = v20;
    v15[6] = v19;
  }

  else
  {
    v17 = v0[26];
    sub_25B050554(v2, v3, v4);
    swift_allocError();
    swift_willThrow();

    v28(v9, v17);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_25B050190()
{
  v1 = v0[41];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[36];
  v5 = v0[29];
  v6 = v0[26];

  v2(v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_25B050298()
{
  v1 = v0[39];
  v3 = v0[37];
  v2 = v0[38];
  v4 = v0[36];
  v5 = v0[29];
  v6 = v0[26];

  swift_willThrow();

  v2(v5, v6);

  v7 = v0[1];

  return v7();
}

void sub_25B0503A4(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA312A8, &qword_25B0E6058);
    sub_25B0E3870();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA312A8, &qword_25B0E6058);
    sub_25B0E3880();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25B0504E4(uint64_t a1, uint64_t a2)
{
  result = sub_25B050618(&qword_27FA312A0, a2, type metadata accessor for FaceHandler, &unk_25B0E5FF0);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25B050554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA312C0;
  if (!qword_27FA312C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA312C0);
  }

  return result;
}

void sub_25B0505A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  if (a2)
  {
  }
}

uint64_t sub_25B050618(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25B050674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA312C8;
  if (!qword_27FA312C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA312C8);
  }

  return result;
}

uint64_t FacePlacement.init(face:location:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25B0E2750();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for FacePlacement(0) + 20);

  return sub_25B050778(a2, v7);
}

uint64_t sub_25B050778(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FacePlacement.Location(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25B0507FC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

NanoFaceGallery::FacePlacement::Location::Placement_optional __swiftcall FacePlacement.Location.Placement.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x5040302010006uLL >> (8 * rawValue);
  if (rawValue >= 7)
  {
    LOBYTE(v2) = 6;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t FacePlacement.Location.indexPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FacePlacement.Location(0) + 20);
  v4 = sub_25B0E2540();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FacePlacement.Location.indexPath.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FacePlacement.Location(0) + 20);
  v4 = sub_25B0E2540();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FacePlacement.Location.init(placement:indexPath:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  v5 = *(type metadata accessor for FacePlacement.Location(0) + 20);
  v6 = sub_25B0E2540();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t FacePlacement.face.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25B0E2750();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FacePlacement.face.setter(uint64_t a1)
{
  v3 = sub_25B0E2750();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FacePlacement.location.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FacePlacement(0) + 20);

  return sub_25B050BB8(v3, a1);
}

uint64_t sub_25B050BB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FacePlacement.Location(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FacePlacement.location.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FacePlacement(0) + 20);

  return sub_25B050C60(a1, v3);
}

uint64_t sub_25B050C60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FacePlacement.Location(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL static FacePlacement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (MEMORY[0x25F85F260]())
  {
    v4 = type metadata accessor for FacePlacement(0);
    if (*(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20)))
    {
      type metadata accessor for FacePlacement.Location(0);
      if (sub_25B0E2520())
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t FacePlacement.hash(into:)(uint64_t a1)
{
  sub_25B0E2750();
  sub_25B051FA4(&qword_27FA312D0, MEMORY[0x277D2BE00], MEMORY[0x277D2BE08]);
  sub_25B0E36D0();
  v2 = type metadata accessor for FacePlacement(0);
  MEMORY[0x25F860A80](*(v1 + *(v2 + 20)) + 1);
  type metadata accessor for FacePlacement.Location(0);
  sub_25B0E2540();
  sub_25B051FA4(&qword_27FA312D8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  return sub_25B0E36D0();
}

uint64_t FacePlacement.hashValue.getter()
{
  sub_25B0E3F10();
  sub_25B0E2750();
  sub_25B051FA4(&qword_27FA312D0, MEMORY[0x277D2BE00], MEMORY[0x277D2BE08]);
  sub_25B0E36D0();
  v1 = type metadata accessor for FacePlacement(0);
  MEMORY[0x25F860A80](*(v0 + *(v1 + 20)) + 1);
  type metadata accessor for FacePlacement.Location(0);
  sub_25B0E2540();
  sub_25B051FA4(&qword_27FA312D8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  sub_25B0E36D0();
  return sub_25B0E3F50();
}

uint64_t sub_25B050F8C(uint64_t a1)
{
  sub_25B0E3F10();
  sub_25B0E2750();
  sub_25B051FA4(&qword_27FA312D0, MEMORY[0x277D2BE00], MEMORY[0x277D2BE08]);
  sub_25B0E36D0();
  MEMORY[0x25F860A80](*(v1 + *(a1 + 20)) + 1);
  type metadata accessor for FacePlacement.Location(0);
  sub_25B0E2540();
  sub_25B051FA4(&qword_27FA312D8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  sub_25B0E36D0();
  return sub_25B0E3F50();
}

uint64_t sub_25B051098(uint64_t a1, uint64_t a2)
{
  sub_25B0E2750();
  sub_25B051FA4(&qword_27FA312D0, MEMORY[0x277D2BE00], MEMORY[0x277D2BE08]);
  sub_25B0E36D0();
  MEMORY[0x25F860A80](*(v2 + *(a2 + 20)) + 1);
  type metadata accessor for FacePlacement.Location(0);
  sub_25B0E2540();
  sub_25B051FA4(&qword_27FA312D8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  return sub_25B0E36D0();
}

uint64_t sub_25B05118C(uint64_t a1, uint64_t a2)
{
  sub_25B0E3F10();
  sub_25B0E2750();
  sub_25B051FA4(&qword_27FA312D0, MEMORY[0x277D2BE00], MEMORY[0x277D2BE08]);
  sub_25B0E36D0();
  MEMORY[0x25F860A80](*(v2 + *(a2 + 20)) + 1);
  type metadata accessor for FacePlacement.Location(0);
  sub_25B0E2540();
  sub_25B051FA4(&qword_27FA312D8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  sub_25B0E36D0();
  return sub_25B0E3F50();
}

BOOL sub_25B051294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if ((MEMORY[0x25F85F260]() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    type metadata accessor for FacePlacement.Location(0);
    if (sub_25B0E2520())
    {
      return 1;
    }
  }

  return result;
}

uint64_t static FacePlacement.Location.< infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 != v4)
  {
    return v3 < v4;
  }

  type metadata accessor for FacePlacement.Location(0);

  return sub_25B0E2510();
}

BOOL sub_25B05137C(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for FacePlacement(0) + 20);
  v5 = (a2 + v4);
  v6 = (a1 + v4);
  v7 = *(a2 + v4);
  v8 = *v6;
  if (v7 != v8)
  {
    goto LABEL_7;
  }

  type metadata accessor for FacePlacement.Location(0);
  if ((sub_25B0E2520() & 1) == 0)
  {
    v7 = *v5;
    v8 = *v6;
LABEL_7:
    if (v7 == v8)
    {
      type metadata accessor for FacePlacement.Location(0);
      v13 = sub_25B0E2510();
    }

    else
    {
      v13 = v7 < v8;
    }

    return (v13 & 1) == 0;
  }

  v9 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
  v11 = v10;
  if (v9 == _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0() && v11 == v12)
  {

    v13 = 0;
  }

  else
  {
    v14 = sub_25B0E3E30();

    v13 = v14;
  }

  return (v13 & 1) == 0;
}

BOOL sub_25B051498(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for FacePlacement(0) + 20);
  v5 = (a1 + v4);
  v6 = (a2 + v4);
  v7 = *(a1 + v4);
  v8 = *v6;
  if (v7 != v8)
  {
    goto LABEL_7;
  }

  type metadata accessor for FacePlacement.Location(0);
  if ((sub_25B0E2520() & 1) == 0)
  {
    v7 = *v5;
    v8 = *v6;
LABEL_7:
    if (v7 == v8)
    {
      type metadata accessor for FacePlacement.Location(0);
      v13 = sub_25B0E2510();
    }

    else
    {
      v13 = v7 < v8;
    }

    return (v13 & 1) == 0;
  }

  v9 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
  v11 = v10;
  if (v9 == _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0() && v11 == v12)
  {

    v13 = 0;
  }

  else
  {
    v14 = sub_25B0E3E30();

    v13 = v14;
  }

  return (v13 & 1) == 0;
}

uint64_t sub_25B0515B4(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for FacePlacement(0) + 20);
  v5 = (a2 + v4);
  v6 = (a1 + v4);
  v7 = *(a2 + v4);
  v8 = *v6;
  if (v7 == v8)
  {
    type metadata accessor for FacePlacement.Location(0);
    if (sub_25B0E2520())
    {
      v9 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
      v11 = v10;
      if (v9 == _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0() && v11 == v12)
      {

        return 0;
      }

      else
      {
        v14 = sub_25B0E3E30();

        return v14 & 1;
      }
    }

    v7 = *v5;
    v8 = *v6;
  }

  if (v7 != v8)
  {
    return v7 < v8;
  }

  type metadata accessor for FacePlacement.Location(0);

  return sub_25B0E2510();
}

uint64_t FacePlacement.description.getter()
{
  v0 = sub_25B0E2740();
  if (!v1)
  {
    v0 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
  }

  MEMORY[0x25F8602F0](v0);

  MEMORY[0x25F8602F0](8250, 0xE200000000000000);
  type metadata accessor for FacePlacement(0);
  v2 = FacePlacement.Location.description.getter();
  MEMORY[0x25F8602F0](v2);

  return 0;
}

uint64_t sub_25B051774()
{
  v0 = sub_25B0E2740();
  if (!v1)
  {
    v0 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
  }

  MEMORY[0x25F8602F0](v0);

  MEMORY[0x25F8602F0](8250, 0xE200000000000000);
  v2 = FacePlacement.Location.description.getter();
  MEMORY[0x25F8602F0](v2);

  return 0;
}

uint64_t static FacePlacement.Location.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for FacePlacement.Location(0);

  return sub_25B0E2520();
}

uint64_t FacePlacement.Location.hash(into:)(uint64_t a1)
{
  MEMORY[0x25F860A80](*v1 + 1);
  type metadata accessor for FacePlacement.Location(0);
  sub_25B0E2540();
  sub_25B051FA4(&qword_27FA312D8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  return sub_25B0E36D0();
}

uint64_t FacePlacement.Location.hashValue.getter()
{
  sub_25B0E3F10();
  MEMORY[0x25F860A80](*v0 + 1);
  type metadata accessor for FacePlacement.Location(0);
  sub_25B0E2540();
  sub_25B051FA4(&qword_27FA312D8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  sub_25B0E36D0();
  return sub_25B0E3F50();
}

uint64_t sub_25B0519B8()
{
  sub_25B0E3F10();
  MEMORY[0x25F860A80](*v0 + 1);
  sub_25B0E2540();
  sub_25B051FA4(&qword_27FA312D8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  sub_25B0E36D0();
  return sub_25B0E3F50();
}

uint64_t sub_25B051A68(uint64_t a1)
{
  MEMORY[0x25F860A80](*v1 + 1);
  sub_25B0E2540();
  sub_25B051FA4(&qword_27FA312D8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  return sub_25B0E36D0();
}

uint64_t sub_25B051B00(uint64_t a1)
{
  sub_25B0E3F10();
  MEMORY[0x25F860A80](*v1 + 1);
  sub_25B0E2540();
  sub_25B051FA4(&qword_27FA312D8, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B08]);
  sub_25B0E36D0();
  return sub_25B0E3F50();
}

uint64_t sub_25B051BAC(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return sub_25B0E2520();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25B051BD4(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == v4)
  {
    return sub_25B0E2510();
  }

  else
  {
    return v3 < v4;
  }
}

BOOL sub_25B051BFC(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *a1;
  if (v3 == v4)
  {
    v5 = sub_25B0E2510();
  }

  else
  {
    v5 = v3 < v4;
  }

  return (v5 & 1) == 0;
}

BOOL sub_25B051C48(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == v4)
  {
    v5 = sub_25B0E2510();
  }

  else
  {
    v5 = v3 < v4;
  }

  return (v5 & 1) == 0;
}

uint64_t sub_25B051C90(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *a1;
  if (v3 == v4)
  {
    return sub_25B0E2510();
  }

  else
  {
    return v3 < v4;
  }
}

uint64_t FacePlacement.Location.description.getter()
{
  v1 = 0xE700000000000000;
  v2 = 0x66664F2D656E4FLL;
  v3 = 0xE700000000000000;
  v4 = *v0;
  v5 = 0x7972656C6C6147;
  v6 = 0xE900000000000073;
  v7 = 0x65636146206C6C41;
  if (v4 != 4)
  {
    v7 = 0x207972656C6C6147;
    v6 = 0xEE006C6961746544;
  }

  if (v4 != 3)
  {
    v5 = v7;
    v3 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x676E6972616853;
  if (v4 != 1)
  {
    v9 = 0x736563614620794DLL;
    v8 = 0xE800000000000000;
  }

  if (*v0)
  {
    v2 = v9;
    v1 = v8;
  }

  if (*v0 <= 2u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v5;
  }

  if (*v0 <= 2u)
  {
    v11 = v1;
  }

  else
  {
    v11 = v3;
  }

  MEMORY[0x25F8602F0](v10, v11);

  MEMORY[0x25F8602F0](0x209286E220, 0xA500000000000000);
  type metadata accessor for FacePlacement.Location(0);
  sub_25B0E2540();
  sub_25B051FA4(&qword_27FA319A0, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B38]);
  v12 = sub_25B0E3E20();
  MEMORY[0x25F8602F0](v12);

  return 0;
}

uint64_t FacePlacement.Location.Placement.description.getter()
{
  v1 = *v0;
  v2 = 0x66664F2D656E4FLL;
  v3 = 0x7972656C6C6147;
  v4 = 0x65636146206C6C41;
  if (v1 != 4)
  {
    v4 = 0x207972656C6C6147;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x676E6972616853;
  if (v1 != 1)
  {
    v5 = 0x736563614620794DLL;
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

uint64_t sub_25B051F2C()
{
  v1 = *v0;
  sub_25B0E3F10();
  MEMORY[0x25F860A80](v1 + 1);
  return sub_25B0E3F50();
}

uint64_t sub_25B051FA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25B051FEC(uint64_t a1)
{
  v2 = *v1;
  sub_25B0E3F10();
  MEMORY[0x25F860A80](v2 + 1);
  return sub_25B0E3F50();
}

uint64_t sub_25B052030()
{
  v1 = *v0;
  v2 = 0x66664F2D656E4FLL;
  v3 = 0x7972656C6C6147;
  v4 = 0x65636146206C6C41;
  if (v1 != 4)
  {
    v4 = 0x207972656C6C6147;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x676E6972616853;
  if (v1 != 1)
  {
    v5 = 0x736563614620794DLL;
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

uint64_t _s15NanoFaceGallery0B9PlacementV1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for FacePlacement(0) + 20);
  v5 = (a1 + v4);
  v6 = (a2 + v4);
  v7 = *(a1 + v4);
  v8 = *v6;
  if (v7 == v8)
  {
    type metadata accessor for FacePlacement.Location(0);
    if (sub_25B0E2520())
    {
      v9 = _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0();
      v11 = v10;
      if (v9 == _s15NanoFaceGallery0B14LibraryManagerC5EntryV2idSSvg_0() && v11 == v12)
      {

        return 0;
      }

      else
      {
        v14 = sub_25B0E3E30();

        return v14 & 1;
      }
    }

    v7 = *v5;
    v8 = *v6;
  }

  if (v7 != v8)
  {
    return v7 < v8;
  }

  type metadata accessor for FacePlacement.Location(0);

  return sub_25B0E2510();
}

unint64_t sub_25B052228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FA312F0;
  if (!qword_27FA312F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA312F0);
  }

  return result;
}

uint64_t sub_25B0522A4(uint64_t a1)
{
  result = sub_25B0E2750();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FacePlacement.Location(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25B052350(uint64_t a1)
{
  result = sub_25B0E2540();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FacePlacement.Location.Placement(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FacePlacement.Location.Placement(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25B052524()
{
  swift_beginAccess();

  v2 = sub_25B052654(v1);

  swift_beginAccess();
  v3 = *(v0 + 120);
  v4 = *(v3 + 16);
  if (!v4)
  {
    return v2;
  }

  v5 = sub_25B0B32DC(v4, 0);
  v6 = sub_25B0B3510(&v9, v5 + 4, v4, v3);
  v7 = v9;

  result = sub_25B043EC8(v7);
  if (v6 == v4)
  {
    return v2;
  }

  __break(1u);
  return result;
}

unint64_t sub_25B052654(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v31 = (v3 + 63) >> 6;

  v7 = 0;
  v33 = v2;
  v34 = MEMORY[0x277D84F90];
  v32 = result;
  while (1)
  {
    if (!v5)
    {
      v8 = v34;
      while (1)
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v9 >= v31)
        {
          goto LABEL_40;
        }

        v5 = *(v2 + 8 * v9);
        ++v7;
        if (v5)
        {
          v7 = v9;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      return result;
    }

    v8 = v34;
LABEL_12:
    v37 = v5;
    v10 = *(*(v1 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));
    v11 = v10 >> 62;
    v12 = v10;
    v13 = v10 >> 62 ? sub_25B0E3CC0() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = v8 >> 62;
    if (v8 >> 62)
    {
      break;
    }

    v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v15 + v13;
    if (__OFADD__(v15, v13))
    {
      goto LABEL_39;
    }

LABEL_16:

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v35 = v13;
    if (!result)
    {
      if (v14)
      {
LABEL_21:
        sub_25B0E3CC0();
      }

LABEL_22:
      result = sub_25B0E3BE0();
      v34 = result;
      v17 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_23;
    }

    if (v14)
    {
      goto LABEL_21;
    }

    v17 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v16 > *(v17 + 24) >> 1)
    {
      goto LABEL_22;
    }

LABEL_23:
    v18 = *(v17 + 16);
    v19 = *(v17 + 24);
    v20 = v12;
    if (v11)
    {
      result = sub_25B0E3CC0();
      v20 = v12;
      v21 = result;
    }

    else
    {
      v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = (v37 - 1) & v37;
    if (v21)
    {
      if (((v19 >> 1) - v18) < v35)
      {
        goto LABEL_43;
      }

      v22 = v17 + 8 * v18 + 32;
      v37 &= v37 - 1;
      if (v11)
      {
        if (v21 < 1)
        {
          goto LABEL_45;
        }

        sub_25B058150(&qword_27FA31340, &qword_27FA31338, &qword_25B0E6568, MEMORY[0x277D83988]);
        for (i = 0; i != v21; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31338, &qword_25B0E6568);
          v24 = sub_25B057FF8(v36, i, v20);
          v26 = *v25;

          (v24)(v36, 0);
          *(v22 + 8 * i) = v26;
        }
      }

      else
      {
        type metadata accessor for FaceRequest(0);
        swift_arrayInitWithCopy();
      }

      v1 = v32;
      v2 = v33;
      v5 = v37;
      if (v35 >= 1)
      {
        v27 = *(v17 + 16);
        v28 = __OFADD__(v27, v35);
        v29 = v27 + v35;
        if (v28)
        {
          goto LABEL_44;
        }

        *(v17 + 16) = v29;
      }
    }

    else
    {

      v2 = v33;
      if (v35 > 0)
      {
        goto LABEL_42;
      }
    }
  }

  v30 = sub_25B0E3CC0();
  v16 = v30 + v13;
  if (!__OFADD__(v30, v13))
  {
    goto LABEL_16;
  }

LABEL_39:
  __break(1u);
LABEL_40:

  return v8;
}

uint64_t sub_25B0529B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25B05859C;

  return sub_25B052A5C();
}

uint64_t sub_25B052A7C()
{
  v1 = v0[2];
  if (*(v1 + 144))
  {
LABEL_10:
    v10 = v0[1];

    return v10();
  }

  if (qword_27FA30C80 != -1)
  {
    swift_once();
  }

  v2 = sub_25B0E2970();
  v0[3] = __swift_project_value_buffer(v2, qword_27FA31160);
  v3 = sub_25B0E2950();
  v4 = sub_25B0E3A50();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_25B03D000, v3, v4, "Tickle started…", v5, 2u);
    MEMORY[0x25F8613E0](v5, -1, -1);
  }

  v6 = v0[2];

  if (*(v6 + 145))
  {
    v7 = sub_25B0E2950();
    v8 = sub_25B0E3A50();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_25B03D000, v7, v8, "Paused, skipping…", v9, 2u);
      MEMORY[0x25F8613E0](v9, -1, -1);
    }

    goto LABEL_10;
  }

  v12 = v0[2];
  *(v1 + 144) = 1;
  v13 = sub_25B058150(&qword_27FA31328, &qword_27FA31320, &qword_25B0E6420, &unk_25B0E5E20);
  v14 = swift_task_alloc();
  v0[4] = v14;
  *v14 = v0;
  v14[1] = sub_25B052D0C;
  v15 = v0[2];
  v16 = MEMORY[0x277D84F78] + 8;
  v17 = MEMORY[0x277D84F78] + 8;
  v18 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v14, v16, v17, v12, v13, &unk_25B0E6590, v15, v18);
}

uint64_t sub_25B052D0C()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_25B052E1C, v1, 0);
}

uint64_t sub_25B052E1C(uint64_t a1)
{
  v2 = sub_25B0E2950();
  v3 = sub_25B0E3A50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_25B03D000, v2, v3, "Task group finished, cleaning up tickle…", v4, 2u);
    MEMORY[0x25F8613E0](v4, -1, -1);
  }

  v5 = *(v1 + 16);

  *(v5 + 144) = 0;
  v6 = *(v5 + 128);
  if (v6)
  {
    v7 = *(*(v1 + 16) + 136);

    sub_25B052524();
    v6();

    sub_25B043E90(v6, v7);
  }

  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_25B052F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25B058198(a3, v25 - v10);
  v12 = sub_25B0E3940();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25B058448(v11, &qword_27FA31990, &qword_25B0E6920);
  }

  else
  {
    sub_25B0E3930();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_25B0E3850();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_25B0E3770() + 32;
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

      sub_25B058448(a3, &qword_27FA31990, &qword_25B0E6920);

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

  sub_25B058448(a3, &qword_27FA31990, &qword_25B0E6920);
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

uint64_t sub_25B053238(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_25B0E2750();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FA30C80 != -1)
  {
    swift_once();
  }

  v11 = sub_25B0E2970();
  __swift_project_value_buffer(v11, qword_27FA31160);
  v12 = sub_25B0E2950();
  v13 = sub_25B0E3A50();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_25B03D000, v12, v13, "Add…", v14, 2u);
    MEMORY[0x25F8613E0](v14, -1, -1);
  }

  v15 = OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
  (*(v8 + 16))(v10, a1 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement, v7);
  swift_beginAccess();
  v16 = v2[14];
  if (*(v16 + 16) && (v17 = sub_25B065DD0(v10), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
    swift_endAccess();
    v20 = *(v8 + 8);

    v20(v10, v7);
  }

  else
  {
    swift_endAccess();
    (*(v8 + 8))(v10, v7);
    v19 = MEMORY[0x277D84F90];
  }

  v32 = v19;

  MEMORY[0x25F860330](v21);
  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_25B0E3810();
  }

  sub_25B0E3830();
  v22 = v32;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = v2[14];
  v2[14] = 0x8000000000000000;
  sub_25B068BD4(v22, a1 + v15, isUniquelyReferenced_nonNull_native);
  v2[14] = v31;
  swift_endAccess();
  v24 = v2[16];
  if (v24)
  {
    v25 = v2[17];

    sub_25B052524();
    v24();

    sub_25B043E90(v24, v25);
  }

  v26 = sub_25B0E3940();
  (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  v27 = sub_25B058150(&qword_27FA31328, &qword_27FA31320, &qword_25B0E6420, &unk_25B0E5E20);
  v28 = swift_allocObject();
  v28[2] = v2;
  v28[3] = v27;
  v28[4] = v2;
  swift_retain_n();
  sub_25B052F48(0, 0, v6, &unk_25B0E65C0, v28);
}

uint64_t sub_25B053670()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25B0498DC;

  return sub_25B052A5C();
}

uint64_t sub_25B053714()
{
  swift_beginAccess();

  sub_25B052654(v0);

  v5 = sub_25B057C2C(v1);
  sub_25B056820(&v5);

  v2 = v5;
  if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
  {
    if (*(v5 + 16))
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  if (!sub_25B0E3CC0())
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x25F860730](0, v2);
    goto LABEL_7;
  }

  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);

LABEL_7:

    return v3;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_25B05381C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[40] = a3;
  v4[41] = v3;
  v4[38] = a1;
  v4[39] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31348, &unk_25B0E6870);
  v4[42] = v5;
  v4[43] = *(v5 - 8);
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v6 = sub_25B0E2750();
  v4[46] = v6;
  v4[47] = *(v6 - 8);
  v4[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B053954, v3, 0);
}

uint64_t sub_25B053954()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[38];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = v2[15];
  v2[15] = 0x8000000000000000;
  sub_25B068A88(v3, v1, isUniquelyReferenced_nonNull_native);
  v2[15] = v46;
  swift_endAccess();
  v5 = v2[16];
  if (v5)
  {
    v6 = v2[17];

    sub_25B052524();
    v5();

    sub_25B043E90(v5, v6);
  }

  v7 = v0[38] + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState;
  os_unfair_lock_lock(v7);
  v8 = *(v7 + 8);
  os_unfair_lock_unlock(v7);
  if (v8 != 1)
  {
    v21 = swift_task_alloc();
    v0[49] = v21;
    *v21 = v0;
    v21[1] = sub_25B053F10;
    v22 = v0[38];

    return sub_25B04F2E4((v0 + 2), v22);
  }

  if (qword_27FA30C80 != -1)
  {
    goto LABEL_30;
  }

LABEL_5:
  v9 = sub_25B0E2970();
  __swift_project_value_buffer(v9, qword_27FA31160);
  v10 = sub_25B0E2950();
  v11 = sub_25B0E3A50();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_25B03D000, v10, v11, "Request is cancelled, moving on…", v12, 2u);
    MEMORY[0x25F8613E0](v12, -1, -1);
  }

  v13 = v0[41];
  v14 = v0[38];

  v15 = OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
  swift_beginAccess();
  v16 = *(v13 + 112);
  v17 = MEMORY[0x277D84F90];
  v45 = v15;
  if (*(v16 + 16))
  {
    v18 = sub_25B065DD0(v14 + v15);
    if (v19)
    {
      v20 = *(*(v16 + 56) + 8 * v18);
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  swift_endAccess();
  v47 = v17;
  if (!(v20 >> 62))
  {
    v24 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      goto LABEL_32;
    }

    goto LABEL_17;
  }

  v24 = sub_25B0E3CC0();
  if (v24)
  {
LABEL_17:
    v44 = v2;
    v25 = 0;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x25F860730](v25, v20);
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
LABEL_27:
          __break(1u);
LABEL_28:
          v29 = v47;
          v2 = v44;
          goto LABEL_33;
        }
      }

      else
      {
        if (v25 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_30:
          swift_once();
          goto LABEL_5;
        }

        v26 = *(v20 + 8 * v25 + 32);

        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_27;
        }
      }

      v28 = v26 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState;
      os_unfair_lock_lock((v26 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState));
      v2 = *(v28 + 8);
      os_unfair_lock_unlock(v28);
      if (v2)
      {
      }

      else
      {
        sub_25B0E3C30();
        v2 = *(v47 + 16);
        sub_25B0E3C60();
        sub_25B0E3C70();
        sub_25B0E3C40();
      }

      ++v25;
      if (v27 == v24)
      {
        goto LABEL_28;
      }
    }
  }

LABEL_32:
  v29 = MEMORY[0x277D84F90];
LABEL_33:
  v31 = v0[47];
  v30 = v0[48];
  v32 = v0[46];

  (*(v31 + 16))(v30, v14 + v45, v32);
  if ((v29 & 0x8000000000000000) == 0 && (v29 & 0x4000000000000000) == 0)
  {
    if (*(v29 + 16))
    {
      goto LABEL_36;
    }

LABEL_39:

    swift_beginAccess();
    goto LABEL_40;
  }

  if (!sub_25B0E3CC0())
  {
    goto LABEL_39;
  }

LABEL_36:
  swift_beginAccess();
  if (v29)
  {
    v34 = v0[47];
    v33 = v0[48];
    v35 = v0[46];
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v48 = *(v13 + 112);
    *(v13 + 112) = 0x8000000000000000;
    sub_25B068BD4(v29, v33, v36);
    (*(v34 + 8))(v33, v35);
    *(v13 + 112) = v48;
  }

  else
  {
LABEL_40:
    v38 = v0[47];
    v37 = v0[48];
    v39 = v0[46];
    sub_25B056758(v37);

    (*(v38 + 8))(v37, v39);
  }

  v40 = v0[40];
  swift_endAccess();
  swift_beginAccess();
  sub_25B05EDD8(0, v40);
  swift_endAccess();
  v41 = v2[16];
  if (v41)
  {
    v42 = *(v0[41] + 136);

    sub_25B052524();
    v41();

    sub_25B043E90(v41, v42);
  }

  v43 = v0[1];

  return v43();
}

uint64_t sub_25B053F10()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 328);
  if (v0)
  {
    v4 = sub_25B054878;
  }

  else
  {
    v4 = sub_25B05403C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25B05403C()
{
  v1 = v0[2];
  v3 = v0[4];
  v2 = v0[5];
  v74 = v0[6];
  v71 = v0[3];
  v72 = v0[7];
  v4 = v0[8];
  v5 = 0x27FA30000uLL;
  if (qword_27FA30C80 != -1)
  {
LABEL_51:
    swift_once();
  }

  v89 = v1;
  v67 = v4;
  v6 = sub_25B0E2970();
  __swift_project_value_buffer(v6, qword_27FA31160);
  v7 = sub_25B0E2950();
  v8 = sub_25B0E3A50();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_25B03D000, v7, v8, "Handler generated result", v9, 2u);
    MEMORY[0x25F8613E0](v9, -1, -1);
  }

  v10 = v69[41];
  v11 = v69[38];

  v12 = OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
  swift_beginAccess();
  v13 = *(v10 + 112);
  if (*(v13 + 16) && (v14 = sub_25B065DD0(v11 + v12), (v15 & 1) != 0))
  {
    v65 = *(*(v13 + 56) + 8 * v14);
  }

  else
  {
    v65 = 0;
  }

  swift_endAccess();
  if (*(v5 + 3200) != -1)
  {
    swift_once();
  }

  v68 = __swift_project_value_buffer(v6, qword_27FA31160);
  v16 = sub_25B0E2950();
  v17 = sub_25B0E3A50();
  v5 = v71;
  v18 = v72;
  if (os_log_type_enabled(v16, v17))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_25B03D000, v16, v17, "Clearing request(s)…", v19, 2u);
    v20 = v19;
    v18 = v72;
    MEMORY[0x25F8613E0](v20, -1, -1);
  }

  swift_beginAccess();
  sub_25B056758(v11 + v12);
  swift_endAccess();

  v21 = v65;
  if (v65)
  {
    v88 = v3;

    v22 = sub_25B0E2950();
    v23 = sub_25B0E3A50();
    v24 = v65 >> 62;
    v3 = v67;
    if (os_log_type_enabled(v22, v23))
    {
      v25 = v18;
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      v27 = v65 & 0xFFFFFFFFFFFFFF8;
      if (v24)
      {
        v28 = sub_25B0E3CC0();
      }

      else
      {
        v28 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v26 + 4) = v28;
      v21 = v65;

      _os_log_impl(&dword_25B03D000, v22, v23, "Invoking callbacks for %ld request(s)…", v26, 0xCu);
      MEMORY[0x25F8613E0](v26, -1, -1);

      v18 = v25;
    }

    else
    {

      v27 = v65 & 0xFFFFFFFFFFFFFF8;
    }

    v1 = 0;
    v4 = v68;
    v70 = v27;
    v75 = v21 + 32;
    v76 = v21 & 0xC000000000000001;
    v66 = v69[43];
    v87 = v2;
    while (1)
    {
      if (v24)
      {
        if (v1 == sub_25B0E3CC0())
        {
          goto LABEL_44;
        }
      }

      else if (v1 == *(v27 + 16))
      {
        goto LABEL_44;
      }

      if (v76)
      {
        v79 = MEMORY[0x25F860730](v1, v65);
        v29 = __OFADD__(v1, 1);
        v30 = v1 + 1;
        if (v29)
        {
LABEL_43:
          __break(1u);
LABEL_44:
          sub_25B0505A8(v89, v5, v88, v2, v74, v18, v3);

          goto LABEL_45;
        }
      }

      else
      {
        if (v1 >= *(v27 + 16))
        {
          __break(1u);
          goto LABEL_51;
        }

        v79 = *(v75 + 8 * v1);

        v29 = __OFADD__(v1, 1);
        v30 = v1 + 1;
        if (v29)
        {
          goto LABEL_43;
        }
      }

      v78 = v30;
      v31 = v79 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState;
      os_unfair_lock_lock((v79 + OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_internalState));
      v32 = *(v31 + 8);
      lock = v31;
      os_unfair_lock_unlock(v31);
      v33 = sub_25B0E2950();
      v34 = sub_25B0E3A50();
      v35 = os_log_type_enabled(v33, v34);
      if (v32)
      {
        if (v35)
        {
          v36 = v18;
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_25B03D000, v33, v34, "Skipping callback, request cancelled…", v37, 2u);
          v38 = v37;
          v18 = v36;
          MEMORY[0x25F8613E0](v38, -1, -1);
        }
      }

      else
      {
        if (v35)
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_25B03D000, v33, v34, "Invoking request handler…", v39, 2u);
          v40 = v39;
          v27 = v70;
          MEMORY[0x25F8613E0](v40, -1, -1);
        }

        if (v5)
        {

          v41 = v74;
          v85 = v18;
          v42 = v3;
          v43 = v2;
          v44 = v3;
          os_unfair_lock_lock(lock);
          v46 = *&lock[6]._os_unfair_lock_opaque;
          v45 = *&lock[8]._os_unfair_lock_opaque;
          v82 = *&lock[12]._os_unfair_lock_opaque;
          v84 = *&lock[10]._os_unfair_lock_opaque;
          v80 = *&lock[16]._os_unfair_lock_opaque;
          v81 = *&lock[14]._os_unfair_lock_opaque;
          v73 = *&lock[18]._os_unfair_lock_opaque;

          v47 = v5;
          v48 = v41;
          v49 = v85;
          v50 = v44;
          sub_25B0505A8(v46, v45, v84, v82, v81, v80, v73);
          *&lock[6]._os_unfair_lock_opaque = v89;
          *&lock[8]._os_unfair_lock_opaque = v47;
          *&lock[10]._os_unfair_lock_opaque = v88;
          *&lock[12]._os_unfair_lock_opaque = v43;
          v18 = v72;
          *&lock[14]._os_unfair_lock_opaque = v74;
          *&lock[16]._os_unfair_lock_opaque = v72;
          *&lock[18]._os_unfair_lock_opaque = v3;
          v51 = *&lock[4]._os_unfair_lock_opaque;
          v52 = *(v51 + 16);
          if (v52)
          {
            v53 = v51 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
            v86 = *(v66 + 72);
            v83 = *(v66 + 16);
            do
            {
              v54 = v69[45];
              v55 = v69[42];
              v83(v54, v53, v55);
              v69[9] = v89;
              v69[10] = v71;
              v69[11] = v88;
              v69[12] = v87;
              v69[13] = v48;
              v69[14] = v49;
              v69[15] = v50;

              v56 = v48;
              v57 = v49;
              v58 = v50;
              sub_25B0E3880();
              (*(v66 + 8))(v54, v55);
              v53 += v86;
              --v52;
            }

            while (v52);

            v42 = v67;
            v18 = v72;
          }

          else
          {
          }

          *&lock[4]._os_unfair_lock_opaque = MEMORY[0x277D84F90];
          os_unfair_lock_unlock(lock);
          v5 = v71;
          v2 = v87;
          v3 = v42;
          sub_25B0505A8(v89, v71, v88, v87, v74, v18, v42);
          v24 = v65 >> 62;
          v4 = v68;
          v27 = v70;
        }
      }

      v1 = v78;
    }
  }

  sub_25B0505A8(v89, v71, v3, v2, v74, v18, v67);

LABEL_45:
  v59 = v69[40];
  v60 = v69[41];
  swift_beginAccess();
  sub_25B05EDD8(0, v59);
  swift_endAccess();
  v61 = *(v60 + 128);
  if (v61)
  {
    v62 = *(v69[41] + 136);

    sub_25B052524();
    v61();

    sub_25B043E90(v61, v62);
  }

  v63 = v69[1];

  return v63();
}

uint64_t sub_25B054878()
{
  v1 = v0[50];
  v2 = v1;
  v3 = 0x27FA30000uLL;
  if (qword_27FA30C80 != -1)
  {
LABEL_52:
    swift_once();
  }

  v4 = v0[50];
  v5 = sub_25B0E2970();
  __swift_project_value_buffer(v5, qword_27FA31160);
  v6 = v4;
  v7 = sub_25B0E2950();
  v8 = sub_25B0E3A50();

  v62 = v0;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_25B03D000, v7, v8, "Handler failed %@", v9, 0xCu);
    sub_25B058448(v10, &unk_27FA31850, &qword_25B0E74B0);
    MEMORY[0x25F8613E0](v10, -1, -1);
    MEMORY[0x25F8613E0](v9, -1, -1);
  }

  else
  {
  }

  v12 = v0[41];
  v13 = v0[38];

  v14 = OBJC_IVAR____TtC15NanoFaceGallery11FaceRequest_placement;
  swift_beginAccess();
  v15 = *(v12 + 112);
  if (*(v15 + 16) && (v16 = sub_25B065DD0(v13 + v14), (v17 & 1) != 0))
  {
    v59 = *(*(v15 + 56) + 8 * v16);
  }

  else
  {
    v59 = 0;
  }

  swift_endAccess();
  if (*(v3 + 3200) != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v5, qword_27FA31160);
  v18 = sub_25B0E2950();
  v19 = sub_25B0E3A50();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_25B03D000, v18, v19, "Clearing request(s)…", v20, 2u);
    MEMORY[0x25F8613E0](v20, -1, -1);
  }

  swift_beginAccess();
  sub_25B056758(v13 + v14);
  swift_endAccess();

  v21 = v1;
  if (v59)
  {

    v22 = sub_25B0E2950();
    v23 = sub_25B0E3A50();
    v24 = v59 >> 62;
    if (os_log_type_enabled(v22, v23))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      v26 = v59 & 0xFFFFFFFFFFFFFF8;
      if (v24)
      {
        v27 = sub_25B0E3CC0();
      }

      else
      {
        v27 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v25 + 4) = v27;

      _os_log_impl(&dword_25B03D000, v22, v23, "Invoking callbacks for %ld request(s)…", v25, 0xCu);
      MEMORY[0x25F8613E0](v25, -1, -1);
    }

    else
    {

      v26 = v59 & 0xFFFFFFFFFFFFFF8;
    }

    v28 = 0;
    v29 = v0[43];
    v1 = (v29 + 16);
    v61 = v29;
    v3 = v29 + 8;
    v0 = &qword_27FA31000;
    v63 = v26;
    v60 = (v29 + 16);
    while (1)
    {
      if (v24)
      {
        if (v28 == sub_25B0E3CC0())
        {
          goto LABEL_45;
        }
      }

      else if (v28 == *(v26 + 16))
      {
        goto LABEL_45;
      }

      if ((v59 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x25F860730](v28, v59);
        v31 = __OFADD__(v28, 1);
        v32 = v28 + 1;
        if (v31)
        {
LABEL_44:
          __break(1u);
LABEL_45:
          sub_25B0505A8(0, 0, 0, 0, 0, 0, 0);

          goto LABEL_46;
        }
      }

      else
      {
        if (v28 >= *(v26 + 16))
        {
          __break(1u);
          goto LABEL_52;
        }

        v31 = __OFADD__(v28, 1);
        v32 = v28 + 1;
        if (v31)
        {
          goto LABEL_44;
        }
      }

      v65 = v32;
      v33 = v30 + v0[106];
      os_unfair_lock_lock(v33);
      v1 = *(v33 + 8);
      lock = v33;
      os_unfair_lock_unlock(v33);
      v34 = sub_25B0E2950();
      v35 = sub_25B0E3A50();
      v36 = os_log_type_enabled(v34, v35);
      if (v1)
      {
        if (v36)
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_25B03D000, v34, v35, "Skipping callback, request cancelled…", v37, 2u);
          v38 = v37;
          v24 = v59 >> 62;
          MEMORY[0x25F8613E0](v38, -1, -1);
        }
      }

      else
      {
        if (v36)
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_25B03D000, v34, v35, "Invoking request handler…", v39, 2u);
          v40 = v39;
          v26 = v63;
          MEMORY[0x25F8613E0](v40, -1, -1);
        }

        if (v21)
        {
          v41 = v21;
          v1 = lock;
          os_unfair_lock_lock(lock);
          v42 = *&lock[20]._os_unfair_lock_opaque;
          v43 = v21;

          *&lock[20]._os_unfair_lock_opaque = v21;
          v44 = *&lock[4]._os_unfair_lock_opaque;
          v45 = *(v44 + 16);
          if (v45)
          {
            v1 = v60;
            v46 = v44 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
            v47 = *(v61 + 72);
            v48 = *(v61 + 16);
            do
            {
              v49 = v62[44];
              v50 = v62[42];
              v48(v49, v46, v50);
              v62[37] = v21;
              v51 = v21;
              sub_25B0E3870();
              (*v3)(v49, v50);
              v46 += v47;
              --v45;
            }

            while (v45);

            v26 = v63;
            v24 = v59 >> 62;
            v0 = &qword_27FA31000;
          }

          else
          {
          }

          *&lock[4]._os_unfair_lock_opaque = MEMORY[0x277D84F90];
          os_unfair_lock_unlock(lock);
        }
      }

      v28 = v65;
    }
  }

  sub_25B0505A8(0, 0, 0, 0, 0, 0, 0);

LABEL_46:
  v52 = v62;
  v53 = v62[40];
  v54 = v62[41];
  swift_beginAccess();
  sub_25B05EDD8(0, v53);
  swift_endAccess();
  v55 = *(v54 + 128);
  if (v55)
  {
    v56 = *(v62[41] + 136);

    sub_25B052524();
    v55();

    v52 = v62;

    sub_25B043E90(v55, v56);
  }

  v57 = v52[1];

  return v57();
}

uint64_t sub_25B054FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA31990, &qword_25B0E6920);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B0550A4, a3, 0);
}

uint64_t sub_25B0550A4()
{
  v1 = *(v0[10] + 152);
  if (v1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25B0E3CC0())
  {
    v3 = 0;
    v32 = i;
    v34 = v1 & 0xFFFFFFFFFFFFFF8;
    v35 = v1 & 0xC000000000000001;
    v33 = v1;
    while (v35)
    {
      v5 = MEMORY[0x25F860730](v3, v1);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_25;
      }

LABEL_9:
      v36 = v6;
      v7 = v0[12];
      v9 = v0[9];
      v8 = v0[10];
      v10 = sub_25B0E3940();
      v11 = *(v10 - 8);
      (*(v11 + 56))(v7, 1, 1, v10);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v8;
      v12[5] = v5;
      v12[6] = v3;
      v13 = *v9;

      v14 = swift_taskGroup_addPending();
      v15 = v0[12];
      if (v14)
      {
        v16 = v0[11];
        sub_25B058198(v15, v16);
        v17 = (*(v11 + 48))(v16, 1, v10);
        v18 = v0[11];
        if (v17 == 1)
        {
          sub_25B058448(v0[11], &qword_27FA31990, &qword_25B0E6920);
        }

        else
        {
          sub_25B0E3930();
          (*(v11 + 8))(v18, v10);
        }

        v22 = v32;
        if (v12[2])
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v24 = sub_25B0E3850();
          v26 = v25;
          swift_unknownObjectRelease();
        }

        else
        {
          v24 = 0;
          v26 = 0;
        }

        v1 = v33;
        v27 = swift_allocObject();
        *(v27 + 16) = &unk_25B0E65A0;
        *(v27 + 24) = v12;
        v28 = (v26 | v24);
        if (v26 | v24)
        {
          v28 = v0 + 2;
          v0[2] = 0;
          v0[3] = 0;
          v0[4] = v24;
          v0[5] = v26;
        }

        v4 = v36;
        v29 = v0[12];
        v0[6] = 1;
        v0[7] = v28;
        v0[8] = v13;
        swift_task_create();

        sub_25B058448(v29, &qword_27FA31990, &qword_25B0E6920);
      }

      else
      {
        sub_25B058448(v15, &qword_27FA31990, &qword_25B0E6920);

        if (qword_27FA30C80 != -1)
        {
          swift_once();
        }

        v19 = sub_25B0E2970();
        __swift_project_value_buffer(v19, qword_27FA31160);
        v20 = sub_25B0E2950();
        v21 = sub_25B0E3A50();
        v22 = v32;
        v1 = v33;
        if (os_log_type_enabled(v20, v21))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_25B03D000, v20, v21, "Task cancelled, not adding child task…", v23, 2u);
          MEMORY[0x25F8613E0](v23, -1, -1);
        }

        v4 = v36;
      }

      ++v3;
      if (v4 == v22)
      {
        goto LABEL_28;
      }
    }

    if (v3 >= *(v34 + 16))
    {
      goto LABEL_26;
    }

    v5 = *(v1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

LABEL_28:

  v30 = v0[1];

  return v30();
}

uint64_t sub_25B0554F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  return MEMORY[0x2822009F8](sub_25B05551C, a4, 0);
}

uint64_t sub_25B05551C()
{
  *(v0 + 72) = sub_25B053714();

  return MEMORY[0x2822009F8](sub_25B055588, 0, 0);
}

uint64_t sub_25B055588()
{
  v1 = v0[9];
  if (v1)
  {
    swift_beginAccess();
    v0[10] = 0;
    v0[11] = v1;

    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_25B0556A0;
    v3 = v0[7];
    v4 = v0[8];

    return sub_25B05381C(v1, v3, v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_25B0556A0()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_25B0557B0, v1, 0);
}

uint64_t sub_25B0557D8()
{
  if (*(v0 + 120) == 1)
  {

    if (qword_27FA30C80 != -1)
    {
      swift_once();
    }

    v1 = sub_25B0E2970();
    __swift_project_value_buffer(v1, qword_27FA31160);
    v2 = sub_25B0E2950();
    v3 = sub_25B0E3A50();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_12;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Queue is paused or nil, aborting…";
LABEL_11:
    _os_log_impl(&dword_25B03D000, v2, v3, v5, v4, 2u);
    MEMORY[0x25F8613E0](v4, -1, -1);
LABEL_12:

    v7 = *(v0 + 8);

    return v7();
  }

  if (sub_25B0E39F0())
  {

    if (qword_27FA30C80 != -1)
    {
      swift_once();
    }

    v6 = sub_25B0E2970();
    __swift_project_value_buffer(v6, qword_27FA31160);
    v2 = sub_25B0E2950();
    v3 = sub_25B0E3A50();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_12;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Task is cancelled, aborting…";
    goto LABEL_11;
  }

  v9 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_25B0559EC, v9, 0);
}

uint64_t sub_25B0559EC()
{
  v1 = v0[10];

  sub_25B052654(v2);

  v0[5] = sub_25B057C2C(v3);
  sub_25B056820(v0 + 5);
  v0[13] = v1;
  if (!v1)
  {

    v8 = v0[5];
    if (v8 < 0 || (v8 & 0x4000000000000000) != 0)
    {
      v5 = sub_25B0E3CC0();
      if (v5)
      {
        goto LABEL_8;
      }
    }

    else if (*(v8 + 16))
    {
LABEL_8:
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x25F860730](0, v8);
      }

      else
      {
        if (!*(v8 + 16))
        {
          __break(1u);
          return MEMORY[0x2822009F8](v5, v6, v7);
        }

        v9 = *(v8 + 32);
      }

      v0[14] = v9;
      v10 = sub_25B055B54;
LABEL_14:
      v5 = v10;
      v6 = 0;
      v7 = 0;

      return MEMORY[0x2822009F8](v5, v6, v7);
    }

    v10 = sub_25B055C24;
    goto LABEL_14;
  }
}

uint64_t sub_25B055B54()
{

  v1 = v0[14];
  v0[10] = v0[13];
  v0[11] = v1;

  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_25B0556A0;
  v3 = v0[7];
  v4 = v0[8];

  return sub_25B05381C(v1, v3, v4);
}

uint64_t sub_25B055C24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t FaceQueueState.Status.description.getter()
{
  v1 = 1701602377;
  v2 = 0x676E6973756150;
  if (*v0 != 2)
  {
    v2 = 0x646573756150;
  }

  if (*v0)
  {
    v1 = 0x676E696B726F57;
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

uint64_t FaceQueueState.Status.hashValue.getter()
{
  v1 = *v0;
  sub_25B0E3F10();
  MEMORY[0x25F860A80](v1);
  return sub_25B0E3F50();
}

uint64_t sub_25B055D7C()
{
  v1 = 1701602377;
  v2 = 0x676E6973756150;
  if (*v0 != 2)
  {
    v2 = 0x646573756150;
  }

  if (*v0)
  {
    v1 = 0x676E696B726F57;
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