uint64_t sub_1B80335D8(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_1B8030464(v12, v7, a1, a2);
      MEMORY[0x1B8CB8970](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  MEMORY[0x1EEE9AC00](v9);
  bzero(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_1B80330D0((v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_1B8033798(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1B80337A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B803380C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B8033878()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for ClientID(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1B7FC253C;

  return sub_1B801BF2C(v7, v0 + v3, v0 + v6);
}

uint64_t sub_1B80339F0()
{
  v2 = *(type metadata accessor for ClientID(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B7FC253C;

  return sub_1B802C190(v4, v0 + v3);
}

uint64_t sub_1B8033B08()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for ClientID(0) - 8);
  v6 = (v4 + *(v5 + 80) + 9) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = v0 + v4;
  v9 = *(v0 + v4);
  v10 = *(v8 + 8);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1B7FC253C;

  return sub_1B801ACBC(v7, v0 + v3, v9, v10, v0 + v6);
}

uint64_t sub_1B8033CA8()
{
  v2 = *(type metadata accessor for ClientID(0) - 8);
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B7FC253C;

  return sub_1B802BE8C(v4, v5, v6, v0 + v3);
}

uint64_t sub_1B8033DD8()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = (v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for ClientID(0);
  v17 = *(v0 + 16);
  v7 = v0 + v5;
  v8 = *(v0 + v5);
  v14 = *(v0 + v6 + 16);
  v15 = *(v0 + v6 + 8);
  v9 = *(v0 + v6 + 24);
  v10 = *(v0 + v6);
  v11 = *(v7 + 8);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = sub_1B7FBA3EC;

  return sub_1B80196DC(v17, v0 + v3, v8, v11, v10, v15, v14, v9);
}

uint64_t objectdestroy_81Tm()
{
  v1 = (type metadata accessor for ClientID(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 77) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_1B80C8E9C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v3, v5);

  v8 = v1[9];
  if (!(*(v6 + 48))(v0 + v3 + v8, 1, v5))
  {
    v7(v0 + v3 + v8, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1B8034128()
{
  v2 = *(type metadata accessor for ClientID(0) - 8);
  v3 = (*(v2 + 80) + 77) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B7FC253C;

  return sub_1B802B534(v4, v0 + 24, v0 + v3);
}

uint64_t sub_1B803428C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  v9 = *v5;
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1B7FC253C;

  return sub_1B801DEE4(v4, v0 + v3, v9, v6, v7, v8);
}

uint64_t sub_1B80343E0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B7FC253C;

  return sub_1B802C678(v2, v0 + 24);
}

uint64_t sub_1B80344D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B803453C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B80345F0()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66118, &qword_1B80D2FD8) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for ClientID(0);
  v15 = *(v0 + 16);
  v13 = *(v0 + v4 + 8);
  v12 = *(v0 + v4 + 16);
  v11 = *(v0 + v4 + 24);
  v5 = v0 + ((v4 + 39) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v0 + v4);
  v8 = *(v5 + 8);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1B7FC253C;

  return sub_1B801D098(v15, v0 + v3, v7, v13, v12, v11, v6, v8);
}

uint64_t sub_1B80347E4(uint64_t a1)
{
  v4 = *(type metadata accessor for Location(0) - 8);
  v5 = (*(v4 + 80) + 216) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FBA3EC;

  return sub_1B8025790(a1, v6, v7, v8, (v1 + 5), v1 + v5);
}

uint64_t sub_1B8034910(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8034958, v1, 0);
}

uint64_t sub_1B8034958()
{
  v12 = v0;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDF28);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B7FB84FC(0xD000000000000032, 0x80000001B80CD130, &v11);
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  else
  {
  }

  v6 = *(v0 + 40);
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  v7[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v7[2].i64[0] = v6;
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66110, &qword_1B80D2FD0);
  *v8 = v0;
  v8[1] = sub_1B7FF8D20;

  return MEMORY[0x1EEE04418](v0 + 16, 0xD000000000000032, 0x80000001B80CD130, sub_1B804D064, v7, v9);
}

uint64_t sub_1B8034B88(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B8034BD4, v2, 0);
}

uint64_t sub_1B8034BD4()
{
  v14 = v0;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDF28);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B7FB84FC(0xD00000000000001ELL, 0x80000001B80CD300, &v13);
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  else
  {
  }

  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  v9 = *(v0 + 24);
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  *(v8 + 40) = v6;
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66110, &qword_1B80D2FD0);
  *v10 = v0;
  v10[1] = sub_1B8034E04;

  return MEMORY[0x1EEE04418](v0 + 16, 0xD00000000000001ELL, 0x80000001B80CD300, sub_1B804DBC8, v8, v11);
}

uint64_t sub_1B8034E04()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_1B801DC0C;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1B7FFF178;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B8034F2C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  *(v4 + 72) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1B8034F80, v3, 0);
}

uint64_t sub_1B8034F80()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  v5 = *(v0 + 16);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_1B8035088;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v6, 0xD00000000000002ELL, 0x80000001B80CD1A0, sub_1B804E0A0, v4, v7);
}

uint64_t sub_1B8035088()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1B7FF8E48;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1B7FFAF5C;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B80351B0(uint64_t a1, uint64_t a2)
{
  *(v3 + 80) = a2;
  *(v3 + 88) = v2;
  *(v3 + 96) = *v2;
  v4 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 61) = *(a1 + 45);
  return MEMORY[0x1EEE6DFA0](sub_1B8035210, v2, 0);
}

uint64_t sub_1B8035210()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = swift_allocObject();
  v0[13] = v3;
  swift_weakInit();
  v4 = swift_task_alloc();
  v0[14] = v4;
  v4[2] = v3;
  v4[3] = v0 + 2;
  v4[4] = v2;
  v4[5] = v1;
  v5 = swift_task_alloc();
  v0[15] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66110, &qword_1B80D2FD0);
  *v5 = v0;
  v5[1] = sub_1B803534C;

  return MEMORY[0x1EEE04418](v0 + 9, 0xD000000000000024, 0x80000001B80CD320, sub_1B804DE0C, v4, v6);
}

uint64_t sub_1B803534C()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = sub_1B8035498;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1B803547C;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B8035498()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8035504(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B803554C, v1, 0);
}

uint64_t sub_1B803554C()
{
  v1 = v0[2].i64[0];
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  v2[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2[2].i64[0] = v1;
  v3 = swift_task_alloc();
  v0[3].i64[0] = v3;
  *v3 = v0;
  v3[1] = sub_1B8035644;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v3, 0xD000000000000025, 0x80000001B80CD170, sub_1B804E03C, v2, v4);
}

uint64_t sub_1B8035644()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_1B8011C5C;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1B8011C90;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B803576C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1B80357B8, v3, 0);
}

uint64_t sub_1B80357B8()
{
  v1 = *(v0 + 48);
  v7 = *(v0 + 24);
  v2 = swift_allocObject();
  *(v0 + 56) = v2;
  swift_weakInit();
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v7;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1B80358EC;
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE04418](v5, 0xD00000000000001DLL, 0x80000001B80CD110, sub_1B804E020, v3, &type metadata for DecodedLocationNotification);
}

uint64_t sub_1B80358EC()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[5];

    return MEMORY[0x1EEE6DFA0](sub_1B8035A34, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1B8035A34()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1B8035AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = sub_1B80C92CC();
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v14;
    v16[5] = a1;
    v16[6] = a3;
    v16[7] = a4;
    v16[8] = a5;

    sub_1B80A1D3C(0, 0, v11, &unk_1B80D32A0, v16);
  }

  return result;
}

uint64_t sub_1B8035C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B8035C2C, 0, 0);
}

uint64_t sub_1B8035C2C()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = swift_allocObject();
  v0[15] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[16] = v4;
  v5 = _s18LocationConnectionCMa(0);
  v6 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa, &unk_1B80D2C70);
  *v4 = v0;
  v4[1] = sub_1B8035D64;

  return MEMORY[0x1EEE04428](v0 + 8, sub_1B804CFAC, v3, v5, v6);
}

uint64_t sub_1B8035D64()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1B8035FB8;
  }

  else
  {

    v2 = sub_1B8035E80;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8035E80()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[8];
  v4 = sub_1B80C90AC();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v0[6] = sub_1B804CFB4;
  v0[7] = v5;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FC5CCC;
  v0[5] = &block_descriptor_232;
  v6 = _Block_copy(v0 + 2);

  [v3 decryptNotificationWithPayload:v4 completion:v6];
  _Block_release(v6);

  swift_unknownObjectRelease();
  v7 = v0[1];

  return v7();
}

uint64_t sub_1B8035FB8()
{
  v14 = v0;

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000001DLL, 0x80000001B80CD110, &v13);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v10 = v0[17];
  v0[9] = v10;
  sub_1B80C8ACC();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1B80361C0(void *a1)
{
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000001DLL, 0x80000001B80CD110, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

void sub_1B8036380(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = a3;
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v5 = sub_1B80C900C();
    __swift_project_value_buffer(v5, qword_1ED8DDF28);
    v6 = v3;
    v7 = sub_1B80C8FEC();
    v8 = sub_1B80C93FC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *&v38[0] = v10;
      *v9 = 136446210;
      *&v26 = v3;
      v11 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v12 = sub_1B80C90EC();
      v14 = sub_1B7FB84FC(v12, v13, v38);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_1B7FB5000, v7, v8, "data(for:) failed with %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x1B8CB8970](v10, -1, -1);
      MEMORY[0x1B8CB8970](v9, -1, -1);
    }

    *&v38[0] = v3;
    goto LABEL_9;
  }

  if (a2 >> 60 == 15)
  {
    sub_1B8010040();
    v3 = swift_allocError();
    *v15 = 1;
    *&v38[0] = v3;
LABEL_9:
    sub_1B80C8ACC();

    return;
  }

  sub_1B80C8CBC();
  swift_allocObject();
  sub_1B7FC62D8(a1, a2);
  sub_1B80C8CAC();
  sub_1B804CFBC();
  v18 = a1;
  v19 = a2;
  sub_1B80C8C9C();

  v34 = v38[8];
  v35 = v38[9];
  v36 = v38[10];
  v37 = v38[11];
  v30 = v38[4];
  v31 = v38[5];
  v32 = v38[6];
  v33 = v38[7];
  v26 = v38[0];
  v27 = v38[1];
  v28 = v38[2];
  v29 = v38[3];
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v20 = sub_1B80C900C();
  __swift_project_value_buffer(v20, qword_1ED8DDF28);
  v21 = sub_1B80C8FEC();
  v22 = sub_1B80C941C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v25[0] = v24;
    *v23 = 136446210;
    *(v23 + 4) = sub_1B7FB84FC(0xD00000000000001DLL, 0x80000001B80CD110, v25);
    _os_log_impl(&dword_1B7FB5000, v21, v22, "%{public}s session data serialized.", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x1B8CB8970](v24, -1, -1);
    MEMORY[0x1B8CB8970](v23, -1, -1);
  }

  v25[8] = v34;
  v25[9] = v35;
  v25[10] = v36;
  v25[11] = v37;
  v25[4] = v30;
  v25[5] = v31;
  v25[6] = v32;
  v25[7] = v33;
  v25[0] = v26;
  v25[1] = v27;
  v25[2] = v28;
  v25[3] = v29;
  sub_1B80C8ADC();
  sub_1B7FC72F8(v18, v19);
  sub_1B804D010(&v26);
}

double sub_1B8036918(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ClientID(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v36 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v39 = Strong;
    v40 = v10;
    v41 = a4;
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v18 = sub_1B80C900C();
    __swift_project_value_buffer(v18, qword_1ED8DDF28);
    sub_1B7FCE69C(a3, v46);
    v19 = sub_1B80C8FEC();
    v20 = sub_1B80C941C();
    sub_1B7FD0404(a3);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v38 = a1;
      v22 = v21;
      v23 = swift_slowAlloc();
      v45 = v23;
      *v22 = 136315138;
      v24 = a3[1];
      v42 = *a3;
      v43 = v24;
      *v44 = a3[2];
      *&v44[13] = *(a3 + 45);
      sub_1B7FCE69C(a3, v46);
      v25 = LocationRequest.description.getter();
      v37 = v15;
      v26 = a5;
      v28 = v27;
      v46[0] = v42;
      v46[1] = v43;
      v47[0] = *v44;
      *(v47 + 13) = *&v44[13];
      sub_1B7FD0404(v46);
      v29 = sub_1B7FB84FC(v25, v28, &v45);
      a5 = v26;
      v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v15 = v37;

      *(v22 + 4) = v29;
      _os_log_impl(&dword_1B7FB5000, v19, v20, "startRefreshingLocation: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1B8CB8970](v23, -1, -1);
      v30 = v22;
      a1 = v38;
      MEMORY[0x1B8CB8970](v30, -1, -1);
    }

    v31 = v41;
    v32 = sub_1B80C92CC();
    (*(*(v32 - 8) + 56))(v15, 1, 1, v32);
    sub_1B804D0A0(v31, v12, type metadata accessor for ClientID);
    v33 = (*(v40 + 80) + 101) & ~*(v40 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    *(v34 + 32) = v39;
    *(v34 + 40) = a1;
    v35 = a3[1];
    *(v34 + 48) = *a3;
    *(v34 + 64) = v35;
    *(v34 + 80) = a3[2];
    *(v34 + 93) = *(a3 + 45);
    sub_1B804D108(v12, v34 + v33);
    *(v34 + ((v11 + v33 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;
    sub_1B7FCE69C(a3, v46);

    sub_1B80A1D3C(0, 0, v15, &unk_1B80D3400, v34);
  }

  return result;
}

uint64_t sub_1B8036D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[17] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B8036D30, 0, 0);
}

uint64_t sub_1B8036D30()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = swift_allocObject();
  v0[22] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[23] = v4;
  v5 = _s18LocationConnectionCMa(0);
  v6 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa, &unk_1B80D2C70);
  *v4 = v0;
  v4[1] = sub_1B8036E68;

  return MEMORY[0x1EEE04428](v0 + 15, sub_1B804DF54, v3, v5, v6);
}

uint64_t sub_1B8036E68()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1B80373A8;
  }

  else
  {

    v2 = sub_1B8036F84;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8036F84()
{
  v34 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 152);
  v3 = *(v0 + 120);
  sub_1B80C8CEC();
  swift_allocObject();
  sub_1B80C8CDC();
  v5 = v2[1];
  v4 = v2[2];
  v6 = *v2;
  *(v0 + 61) = *(v2 + 45);
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  *(v0 + 16) = v6;
  sub_1B804DF5C();
  v7 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v12 = sub_1B80C900C();
    __swift_project_value_buffer(v12, qword_1ED8DDF28);
    v13 = v1;
    v14 = sub_1B80C8FEC();
    v15 = sub_1B80C93FC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33 = v18;
      *v16 = 136446466;
      *(v16 + 4) = sub_1B7FB84FC(0xD000000000000024, 0x80000001B80CD320, &v33);
      *(v16 + 12) = 2114;
      v19 = sub_1B80C8CFC();
      *(v16 + 14) = v19;
      *v17 = v19;
      _os_log_impl(&dword_1B7FB5000, v14, v15, "Failed to create proxy in %{public}s: %{public}@", v16, 0x16u);
      sub_1B7FB86D4(v17, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1B8CB8970](v18, -1, -1);
      MEMORY[0x1B8CB8970](v16, -1, -1);
    }

    *(v0 + 128) = v1;
    sub_1B80C8ACC();
  }

  else
  {
    v9 = v7;
    v10 = v8;

    swift_allocObject();
    sub_1B80C8CDC();
    type metadata accessor for ClientID(0);
    sub_1B7FCD1B8(&qword_1ED8DBC40, type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
    v11 = sub_1B80C8CCC();
    v22 = *(v0 + 168);
    v23 = *(v0 + 144);
    v24 = v11;
    v26 = v25;

    v31 = v10;
    v32 = v9;
    v27 = sub_1B80C8D1C();
    v28 = sub_1B80C8D1C();
    v29 = swift_allocObject();
    *(v29 + 16) = v23;
    *(v29 + 24) = v22;
    *(v0 + 104) = sub_1B804DFB0;
    *(v0 + 112) = v29;
    *(v0 + 72) = MEMORY[0x1E69E9820];
    *(v0 + 80) = 1107296256;
    *(v0 + 88) = sub_1B7FC5CCC;
    *(v0 + 96) = &block_descriptor_440;
    v30 = _Block_copy((v0 + 72));

    [v3 startRefreshingLocationWithRequest:v27 clientID:v28 completion:v30];
    _Block_release(v30);

    sub_1B7FC3CCC(v24, v26);
    sub_1B7FC3CCC(v32, v31);
    swift_unknownObjectRelease();
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1B80373A8()
{
  v13 = v0;

  v1 = v0[24];
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000024, 0x80000001B80CD320, &v12);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v0[16] = v1;
  sub_1B80C8ACC();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B80375A8(void *a1)
{
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000024, 0x80000001B80CD320, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

void sub_1B8037768(uint64_t a1, unint64_t a2, void *a3)
{
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v6 = sub_1B80C900C();
  __swift_project_value_buffer(v6, qword_1ED8DDF28);
  sub_1B804C5D4(a1, a2);
  v7 = sub_1B80C8FEC();
  v8 = sub_1B80C93EC();
  sub_1B7FC72F8(a1, a2);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v35[1] = a2;
    v36 = v10;
    *v9 = 136315138;
    v35[0] = a1;
    v11 = a2;
    sub_1B804C5D4(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66168, &qword_1B80D3408);
    v12 = sub_1B80C90EC();
    v14 = sub_1B7FB84FC(v12, v13, &v36);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1B7FB5000, v7, v8, "startRefreshingLocation response: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CB8970](v10, -1, -1);
    MEMORY[0x1B8CB8970](v9, -1, -1);

    if (a3)
    {
LABEL_5:
      v15 = a3;
      v16 = sub_1B80C8FEC();
      v17 = sub_1B80C93FC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v35[0] = v19;
        *v18 = 136446210;
        v36 = a3;
        v20 = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
        v21 = sub_1B80C90EC();
        v23 = sub_1B7FB84FC(v21, v22, v35);

        *(v18 + 4) = v23;
        _os_log_impl(&dword_1B7FB5000, v16, v17, "startRefreshingLocation failed with %{public}s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x1B8CB8970](v19, -1, -1);
        MEMORY[0x1B8CB8970](v18, -1, -1);
      }

      v35[0] = a3;
      sub_1B80C8ACC();

      return;
    }
  }

  else
  {
    v11 = a2;

    if (a3)
    {
      goto LABEL_5;
    }
  }

  if (v11 >> 60 == 15)
  {
    sub_1B8010040();
    v24 = swift_allocError();
    *v25 = 1;
    v35[0] = v24;
    sub_1B80C8ACC();
  }

  else
  {
    v26 = v11;
    sub_1B80C8CBC();
    swift_allocObject();
    sub_1B7FC62D8(a1, v11);
    sub_1B80C8CAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66110, &qword_1B80D2FD0);
    sub_1B804D2AC();
    sub_1B80C8C9C();

    v27 = v35[0];

    v28 = sub_1B80C8FEC();
    v29 = sub_1B80C941C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v35[0] = v31;
      *v30 = 136446723;
      *(v30 + 4) = sub_1B7FB84FC(0xD000000000000024, 0x80000001B80CD320, v35);
      *(v30 + 12) = 2160;
      *(v30 + 14) = 1752392040;
      *(v30 + 22) = 2081;
      type metadata accessor for Location(0);
      sub_1B8032C04();
      v32 = sub_1B80C902C();
      v34 = sub_1B7FB84FC(v32, v33, v35);

      *(v30 + 24) = v34;
      _os_log_impl(&dword_1B7FB5000, v28, v29, "%{public}s with locations:%{private,mask.hash}s", v30, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v31, -1, -1);
      MEMORY[0x1B8CB8970](v30, -1, -1);
    }

    v35[0] = v27;
    sub_1B80C8ADC();
    sub_1B7FC72F8(a1, v26);
  }
}

double sub_1B8037DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v24 = a6;
  v11 = type metadata accessor for ClientID(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v23 - v16;
  v18 = sub_1B80C92CC();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_1B804D0A0(a4, v14, type metadata accessor for ClientID);
  v19 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v20 = v19 + v13;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a2;
  v21[5] = a1;
  v21[6] = a3;
  sub_1B804D108(v14, v21 + v19);
  *(v21 + v20) = a5;
  *(v21 + (v20 & 0xFFFFFFFFFFFFFFF8) + 8) = v24;

  sub_1B80A1D3C(0, 0, v17, &unk_1B80D32F0, v21);

  return result;
}

uint64_t sub_1B8037FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 112) = a7;
  *(v8 + 120) = v10;
  *(v8 + 152) = a8;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 88) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B8037FE4, 0, 0);
}

uint64_t sub_1B8037FE4()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = swift_allocObject();
  v0[16] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[17] = v4;
  v5 = _s18LocationConnectionCMa(0);
  v6 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa, &unk_1B80D2C70);
  *v4 = v0;
  v4[1] = sub_1B803811C;

  return MEMORY[0x1EEE04428](v0 + 8, sub_1B804D7B4, v3, v5, v6);
}

uint64_t sub_1B803811C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1B80386B0;
  }

  else
  {

    v2 = sub_1B8038238;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8038238()
{
  v32 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 104);
  v3 = *(v0 + 64);
  sub_1B80C8CEC();
  swift_allocObject();
  sub_1B80C8CDC();
  *(v0 + 80) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DE8, &qword_1B80D3A20);
  sub_1B7FDC3C8(&qword_1ED8DBC00, sub_1B7FDC224, MEMORY[0x1E69E6300]);
  v4 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v9 = sub_1B80C900C();
    __swift_project_value_buffer(v9, qword_1ED8DDF28);
    v10 = v1;
    v11 = sub_1B80C8FEC();
    v12 = sub_1B80C93FC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31 = v15;
      *v13 = 136446466;
      *(v13 + 4) = sub_1B7FB84FC(0xD00000000000002ELL, 0x80000001B80CD1A0, &v31);
      *(v13 + 12) = 2114;
      v16 = sub_1B80C8CFC();
      *(v13 + 14) = v16;
      *v14 = v16;
      _os_log_impl(&dword_1B7FB5000, v11, v12, "Failed to create proxy in %{public}s: %{public}@", v13, 0x16u);
      sub_1B7FB86D4(v14, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1B8CB8970](v15, -1, -1);
      MEMORY[0x1B8CB8970](v13, -1, -1);
    }

    *(v0 + 72) = v1;
    sub_1B80C8ACC();
  }

  else
  {
    v6 = v4;
    v7 = v5;

    swift_allocObject();
    sub_1B80C8CDC();
    type metadata accessor for ClientID(0);
    sub_1B7FCD1B8(&qword_1ED8DBC40, type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
    v8 = sub_1B80C8CCC();
    v19 = *(v0 + 120);
    v29 = v8;
    v30 = *(v0 + 152);
    v20 = *(v0 + 96);
    v22 = v21;

    v23 = v6;
    v24 = v7;
    v28 = sub_1B80C8D1C();
    v25 = sub_1B80C8D1C();
    v26 = swift_allocObject();
    *(v26 + 16) = v20;
    *(v26 + 24) = v19;
    *(v0 + 48) = sub_1B804D7BC;
    *(v0 + 56) = v26;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1B7FCE114;
    *(v0 + 40) = &block_descriptor_286;
    v27 = _Block_copy((v0 + 16));

    [v3 stopRefreshingLocationWithHandles:v28 clientID:v25 priority:v30 completion:v27];
    sub_1B7FC3CCC(v23, v24);
    sub_1B7FC3CCC(v29, v22);

    swift_unknownObjectRelease();
    _Block_release(v27);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1B80386B0()
{
  v13 = v0;

  v1 = v0[18];
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000002ELL, 0x80000001B80CD1A0, &v12);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v0[9] = v1;
  sub_1B80C8ACC();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B80388B0(void *a1)
{
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000002ELL, 0x80000001B80CD1A0, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

void sub_1B8038A70(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v3 = sub_1B80C900C();
    __swift_project_value_buffer(v3, qword_1ED8DDF28);
    v4 = a1;
    v5 = sub_1B80C8FEC();
    v6 = sub_1B80C93FC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446210;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v10 = sub_1B80C90EC();
      v12 = sub_1B7FB84FC(v10, v11, &v18);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1B7FB5000, v5, v6, "stopRefreshingLocation failed with %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1B8CB8970](v8, -1, -1);
      MEMORY[0x1B8CB8970](v7, -1, -1);
    }

    v18 = a1;
    sub_1B80C8ACC();
  }

  else
  {
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v13 = sub_1B80C900C();
    __swift_project_value_buffer(v13, qword_1ED8DDF28);
    v14 = sub_1B80C8FEC();
    v15 = sub_1B80C941C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_1B7FB84FC(0xD00000000000002ELL, 0x80000001B80CD1A0, &v18);
      _os_log_impl(&dword_1B7FB5000, v14, v15, "%{public}s succeeded", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B8CB8970](v17, -1, -1);
      MEMORY[0x1B8CB8970](v16, -1, -1);
    }

    sub_1B80C8AEC();
  }
}

uint64_t sub_1B8038D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B8038D4C, 0, 0);
}

uint64_t sub_1B8038D4C()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = swift_allocObject();
  v0[14] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[15] = v4;
  v5 = _s18LocationConnectionCMa(0);
  v6 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa, &unk_1B80D2C70);
  *v4 = v0;
  v4[1] = sub_1B8038E84;

  return MEMORY[0x1EEE04428](v0 + 8, sub_1B804D64C, v3, v5, v6);
}

uint64_t sub_1B8038E84()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1B803931C;
  }

  else
  {

    v2 = sub_1B8038FA0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8038FA0()
{
  v23 = v0;
  v1 = v0[16];
  v2 = v0[8];
  sub_1B80C8CEC();
  swift_allocObject();
  sub_1B80C8CDC();
  type metadata accessor for ClientID(0);
  sub_1B7FCD1B8(&qword_1ED8DBC40, type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
  v3 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v5 = sub_1B80C900C();
    __swift_project_value_buffer(v5, qword_1ED8DDF28);
    v6 = v1;
    v7 = sub_1B80C8FEC();
    v8 = sub_1B80C93FC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v9 = 136446466;
      *(v9 + 4) = sub_1B7FB84FC(0xD000000000000025, 0x80000001B80CD170, &v22);
      *(v9 + 12) = 2114;
      v12 = sub_1B80C8CFC();
      *(v9 + 14) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1B7FB5000, v7, v8, "Failed to create proxy in %{public}s: %{public}@", v9, 0x16u);
      sub_1B7FB86D4(v10, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1B8CB8970](v11, -1, -1);
      MEMORY[0x1B8CB8970](v9, -1, -1);
    }

    v0[9] = v1;
    sub_1B80C8ACC();
  }

  else
  {
    v13 = v0[13];
    v14 = v0[11];
    v15 = v3;
    v16 = v4;

    v17 = sub_1B80C8D1C();
    v18 = swift_allocObject();
    *(v18 + 16) = v14;
    *(v18 + 24) = v13;
    v0[6] = sub_1B804D654;
    v0[7] = v18;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1B7FCE114;
    v0[5] = &block_descriptor_267;
    v19 = _Block_copy(v0 + 2);

    [v2 stopRefreshingAllLocationsWithClientID:v17 completion:v19];
    _Block_release(v19);

    sub_1B7FC3CCC(v15, v16);
    swift_unknownObjectRelease();
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_1B803931C()
{
  v13 = v0;

  v1 = v0[16];
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000025, 0x80000001B80CD170, &v12);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v0[9] = v1;
  sub_1B80C8ACC();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B803951C(void *a1)
{
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000025, 0x80000001B80CD170, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

void sub_1B80396DC(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v3 = sub_1B80C900C();
    __swift_project_value_buffer(v3, qword_1ED8DDF28);
    v4 = a1;
    v5 = sub_1B80C8FEC();
    v6 = sub_1B80C93FC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446210;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v10 = sub_1B80C90EC();
      v12 = sub_1B7FB84FC(v10, v11, &v18);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1B7FB5000, v5, v6, "stopRefreshingAllLocations failed with %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1B8CB8970](v8, -1, -1);
      MEMORY[0x1B8CB8970](v7, -1, -1);
    }

    v18 = a1;
    sub_1B80C8ACC();
  }

  else
  {
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v13 = sub_1B80C900C();
    __swift_project_value_buffer(v13, qword_1ED8DDF28);
    v14 = sub_1B80C8FEC();
    v15 = sub_1B80C941C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_1B7FB84FC(0xD000000000000025, 0x80000001B80CD170, &v18);
      _os_log_impl(&dword_1B7FB5000, v14, v15, "%{public}s succeeded", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B8CB8970](v17, -1, -1);
      MEMORY[0x1B8CB8970](v16, -1, -1);
    }

    sub_1B80C8AEC();
  }
}

double sub_1B8039994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for ClientID(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v21 - v15;
  v17 = sub_1B80C92CC();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_1B804D0A0(a3, &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClientID);
  v18 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a2;
  v19[5] = a1;
  sub_1B804D108(&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  *(v19 + ((v13 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;

  sub_1B80A1D3C(0, 0, v16, a6, v19);

  return result;
}

uint64_t sub_1B8039B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B8039B9C, 0, 0);
}

uint64_t sub_1B8039B9C()
{

  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  v2 = _s18LocationConnectionCMa(0);
  v3 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa, &unk_1B80D2C70);
  *v1 = v0;
  v1[1] = sub_1B8039CA8;
  v4 = *(v0 + 88);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B8011C68, v4, v2, v3);
}

uint64_t sub_1B8039CA8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1B803A140;
  }

  else
  {

    v2 = sub_1B8039DC4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8039DC4()
{
  v23 = v0;
  v1 = v0[15];
  v2 = v0[8];
  sub_1B80C8CEC();
  swift_allocObject();
  sub_1B80C8CDC();
  type metadata accessor for ClientID(0);
  sub_1B7FCD1B8(&qword_1ED8DBC40, type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
  v3 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v5 = sub_1B80C900C();
    __swift_project_value_buffer(v5, qword_1ED8DDF28);
    v6 = v1;
    v7 = sub_1B80C8FEC();
    v8 = sub_1B80C93FC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v9 = 136446466;
      *(v9 + 4) = sub_1B7FB84FC(0xD000000000000032, 0x80000001B80CD130, &v22);
      *(v9 + 12) = 2114;
      v12 = sub_1B80C8CFC();
      *(v9 + 14) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1B7FB5000, v7, v8, "Failed to create proxy in %{public}s: %{public}@", v9, 0x16u);
      sub_1B7FB86D4(v10, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1B8CB8970](v11, -1, -1);
      MEMORY[0x1B8CB8970](v9, -1, -1);
    }

    v0[9] = v1;
    sub_1B80C8ACC();
  }

  else
  {
    v13 = v0[13];
    v14 = v0[11];
    v15 = v3;
    v16 = v4;

    v17 = sub_1B80C8D1C();
    v18 = swift_allocObject();
    *(v18 + 16) = v14;
    *(v18 + 24) = v13;
    v0[6] = sub_1B804D2A4;
    v0[7] = v18;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1B7FC5CCC;
    v0[5] = &block_descriptor_249;
    v19 = _Block_copy(v0 + 2);

    [v2 subscribeToBackgroundProactiveLocationsWithClientID:v17 completion:v19];
    _Block_release(v19);

    sub_1B7FC3CCC(v15, v16);
    swift_unknownObjectRelease();
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_1B803A140()
{
  v13 = v0;

  v1 = v0[15];
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000032, 0x80000001B80CD130, &v12);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v0[9] = v1;
  sub_1B80C8ACC();

  v10 = v0[1];

  return v10();
}

void sub_1B803A340(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = a3;
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v5 = sub_1B80C900C();
    __swift_project_value_buffer(v5, qword_1ED8DDF28);
    v6 = v3;
    v7 = sub_1B80C8FEC();
    v8 = sub_1B80C93FC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v29 = v10;
      *v9 = 136446466;
      *(v9 + 4) = sub_1B7FB84FC(0xD000000000000032, 0x80000001B80CD130, &v29);
      *(v9 + 12) = 2082;
      v11 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v12 = sub_1B80C90EC();
      v14 = sub_1B7FB84FC(v12, v13, &v29);

      *(v9 + 14) = v14;
      _os_log_impl(&dword_1B7FB5000, v7, v8, "%{public}s error %{public}s!", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v10, -1, -1);
      MEMORY[0x1B8CB8970](v9, -1, -1);
    }

    v29 = v3;
    goto LABEL_9;
  }

  if (a2 >> 60 == 15)
  {
    sub_1B8010040();
    v3 = swift_allocError();
    *v15 = 1;
    v29 = v3;
LABEL_9:
    sub_1B80C8ACC();

    return;
  }

  sub_1B80C8CBC();
  swift_allocObject();
  sub_1B7FC62D8(a1, a2);
  sub_1B80C8CAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66110, &qword_1B80D2FD0);
  sub_1B804D2AC();
  v18 = a1;
  v19 = a2;
  sub_1B80C8C9C();

  v20 = v29;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v21 = sub_1B80C900C();
  __swift_project_value_buffer(v21, qword_1ED8DDF28);

  v22 = sub_1B80C8FEC();
  v23 = sub_1B80C941C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29 = v25;
    *v24 = 136446723;
    *(v24 + 4) = sub_1B7FB84FC(0xD000000000000032, 0x80000001B80CD130, &v29);
    *(v24 + 12) = 2160;
    *(v24 + 14) = 1752392040;
    *(v24 + 22) = 2081;
    type metadata accessor for Location(0);
    sub_1B8032C04();
    v26 = sub_1B80C902C();
    v28 = sub_1B7FB84FC(v26, v27, &v29);

    *(v24 + 24) = v28;
    _os_log_impl(&dword_1B7FB5000, v22, v23, "%{public}s decodedLocations: %{private,mask.hash}s", v24, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v25, -1, -1);
    MEMORY[0x1B8CB8970](v24, -1, -1);
  }

  v29 = v20;
  sub_1B80C8ADC();
  sub_1B7FC72F8(v18, v19);
}

uint64_t sub_1B803A944(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B803A98C, v1, 0);
}

uint64_t sub_1B803A98C()
{
  v12 = v0;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDF28);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B7FB84FC(0x6E6F697461636F6CLL, 0xEF293A726F662873, &v11);
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v6 = *(v0 + 40);
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  v7[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v7[2].i64[0] = v6;
  v8 = swift_task_alloc();
  *(v0 + 56) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66110, &qword_1B80D2FD0);
  *v8 = v0;
  v8[1] = sub_1B800BD90;

  return MEMORY[0x1EEE04418](v0 + 16, 0x6E6F697461636F6CLL, 0xEF293A726F662873, sub_1B804DD24, v7, v9);
}

double sub_1B803ABB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_1B80C92CC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  v12[5] = a1;
  v12[6] = a3;
  v12[7] = a4;

  sub_1B80A1D3C(0, 0, v10, &unk_1B80D33F0, v12);

  return result;
}

uint64_t sub_1B803ACE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B803AD0C, 0, 0);
}

uint64_t sub_1B803AD0C()
{

  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  v2 = _s18LocationConnectionCMa(0);
  v3 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa, &unk_1B80D2C70);
  *v1 = v0;
  v1[1] = sub_1B803AE18;
  v4 = *(v0 + 96);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B8011C68, v4, v2, v3);
}

uint64_t sub_1B803AE18()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1B803B2D8;
  }

  else
  {

    v2 = sub_1B803AF34;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B803AF34()
{
  v24 = v0;
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[8];
  sub_1B80C8CEC();
  swift_allocObject();
  sub_1B80C8CDC();
  v0[10] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DE8, &qword_1B80D3A20);
  sub_1B7FDC3C8(&qword_1ED8DBC00, sub_1B7FDC224, MEMORY[0x1E69E6300]);
  v4 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v6 = sub_1B80C900C();
    __swift_project_value_buffer(v6, qword_1ED8DDF28);
    v7 = v1;
    v8 = sub_1B80C8FEC();
    v9 = sub_1B80C93FC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v10 = 136446466;
      *(v10 + 4) = sub_1B7FB84FC(0x6E6F697461636F6CLL, 0xEF293A726F662873, &v23);
      *(v10 + 12) = 2114;
      v13 = sub_1B80C8CFC();
      *(v10 + 14) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1B7FB5000, v8, v9, "Failed to create proxy in %{public}s: %{public}@", v10, 0x16u);
      sub_1B7FB86D4(v11, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v11, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1B8CB8970](v12, -1, -1);
      MEMORY[0x1B8CB8970](v10, -1, -1);
    }

    v0[9] = v1;
    sub_1B80C8ACC();
  }

  else
  {
    v14 = v0[14];
    v15 = v0[12];
    v16 = v4;
    v17 = v5;

    v18 = sub_1B80C8D1C();
    v19 = swift_allocObject();
    *(v19 + 16) = v15;
    *(v19 + 24) = v14;
    v0[6] = sub_1B804DE04;
    v0[7] = v19;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1B7FC5CCC;
    v0[5] = &block_descriptor_423;
    v20 = _Block_copy(v0 + 2);

    [v3 locationsFor:v18 completion:v20];
    _Block_release(v20);

    sub_1B7FC3CCC(v16, v17);
    swift_unknownObjectRelease();
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_1B803B2D8()
{
  v13 = v0;

  v1 = v0[16];
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0x6E6F697461636F6CLL, 0xEF293A726F662873, &v12);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v0[9] = v1;
  sub_1B80C8ACC();

  v10 = v0[1];

  return v10();
}

void sub_1B803B4E0(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = a3;
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v5 = sub_1B80C900C();
    __swift_project_value_buffer(v5, qword_1ED8DDF28);
    v6 = v3;
    v7 = sub_1B80C8FEC();
    v8 = sub_1B80C93FC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v29 = v10;
      *v9 = 136446466;
      *(v9 + 4) = sub_1B7FB84FC(0x6E6F697461636F6CLL, 0xEF293A726F662873, &v29);
      *(v9 + 12) = 2082;
      v11 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v12 = sub_1B80C90EC();
      v14 = sub_1B7FB84FC(v12, v13, &v29);

      *(v9 + 14) = v14;
      _os_log_impl(&dword_1B7FB5000, v7, v8, "%{public}s error %{public}s!", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v10, -1, -1);
      MEMORY[0x1B8CB8970](v9, -1, -1);
    }

    v29 = v3;
    goto LABEL_9;
  }

  if (a2 >> 60 == 15)
  {
    sub_1B8010040();
    v3 = swift_allocError();
    *v15 = 1;
    v29 = v3;
LABEL_9:
    sub_1B80C8ACC();

    return;
  }

  sub_1B80C8CBC();
  swift_allocObject();
  sub_1B7FC62D8(a1, a2);
  sub_1B80C8CAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66110, &qword_1B80D2FD0);
  sub_1B804D2AC();
  v18 = a1;
  v19 = a2;
  sub_1B80C8C9C();

  v20 = v29;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v21 = sub_1B80C900C();
  __swift_project_value_buffer(v21, qword_1ED8DDF28);

  v22 = sub_1B80C8FEC();
  v23 = sub_1B80C941C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29 = v25;
    *v24 = 136446723;
    *(v24 + 4) = sub_1B7FB84FC(0x6E6F697461636F6CLL, 0xEF293A726F662873, &v29);
    *(v24 + 12) = 2160;
    *(v24 + 14) = 1752392040;
    *(v24 + 22) = 2081;
    type metadata accessor for Location(0);
    sub_1B8032C04();
    v26 = sub_1B80C902C();
    v28 = sub_1B7FB84FC(v26, v27, &v29);

    *(v24 + 24) = v28;
    _os_log_impl(&dword_1B7FB5000, v22, v23, "%{public}s decodedLocations: %{private,mask.hash}s", v24, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v25, -1, -1);
    MEMORY[0x1B8CB8970](v24, -1, -1);
  }

  v29 = v20;
  sub_1B80C8ADC();
  sub_1B7FC72F8(v18, v19);
}

double sub_1B803BAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for ClientID(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v20 - v14;
  v16 = sub_1B80C92CC();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_1B804D0A0(a4, &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClientID);
  v17 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a2;
  v18[5] = a1;
  v18[6] = a3;
  sub_1B804D108(&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  *(v18 + ((v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;

  sub_1B80A1D3C(0, 0, v15, &unk_1B80D33E0, v18);

  return result;
}

uint64_t sub_1B803BCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[11] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B803BD24, 0, 0);
}

uint64_t sub_1B803BD24()
{

  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  v2 = _s18LocationConnectionCMa(0);
  v3 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa, &unk_1B80D2C70);
  *v1 = v0;
  v1[1] = sub_1B803BE30;
  v4 = *(v0 + 96);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B7FE58F0, v4, v2, v3);
}

uint64_t sub_1B803BE30()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1B803C3A8;
  }

  else
  {

    v2 = sub_1B803BF4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B803BF4C()
{
  v31 = v0;
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[8];
  sub_1B80C8CEC();
  swift_allocObject();
  sub_1B80C8CDC();
  v0[10] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DE8, &qword_1B80D3A20);
  sub_1B7FDC3C8(&qword_1ED8DBC00, sub_1B7FDC224, MEMORY[0x1E69E6300]);
  v4 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v9 = sub_1B80C900C();
    __swift_project_value_buffer(v9, qword_1ED8DDF28);
    v10 = v1;
    v11 = sub_1B80C8FEC();
    v12 = sub_1B80C93FC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v30 = v15;
      *v13 = 136446466;
      *(v13 + 4) = sub_1B7FB84FC(0xD00000000000001ELL, 0x80000001B80CD300, &v30);
      *(v13 + 12) = 2114;
      v16 = sub_1B80C8CFC();
      *(v13 + 14) = v16;
      *v14 = v16;
      _os_log_impl(&dword_1B7FB5000, v11, v12, "Failed to create proxy in %{public}s: %{public}@", v13, 0x16u);
      sub_1B7FB86D4(v14, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1B8CB8970](v15, -1, -1);
      MEMORY[0x1B8CB8970](v13, -1, -1);
    }

    v0[9] = v1;
    sub_1B80C8ACC();
  }

  else
  {
    v6 = v4;
    v7 = v5;

    swift_allocObject();
    sub_1B80C8CDC();
    type metadata accessor for ClientID(0);
    sub_1B7FCD1B8(&qword_1ED8DBC40, type metadata accessor for ClientID, &protocol conformance descriptor for ClientID);
    v8 = sub_1B80C8CCC();
    v19 = v0[15];
    v20 = v0[12];
    v21 = v8;
    v23 = v22;

    v28 = v7;
    v29 = v6;
    v24 = sub_1B80C8D1C();
    v25 = sub_1B80C8D1C();
    v26 = swift_allocObject();
    *(v26 + 16) = v20;
    *(v26 + 24) = v19;
    v0[6] = sub_1B804DD1C;
    v0[7] = v26;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1B7FC5CCC;
    v0[5] = &block_descriptor_410;
    v27 = _Block_copy(v0 + 2);

    [v3 latestLocationsFor:v24 clientID:v25 completion:v27];
    _Block_release(v27);

    sub_1B7FC3CCC(v21, v23);
    sub_1B7FC3CCC(v29, v28);
    swift_unknownObjectRelease();
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_1B803C3A8()
{
  v13 = v0;

  v1 = v0[17];
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000001ELL, 0x80000001B80CD300, &v12);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v0[9] = v1;
  sub_1B80C8ACC();

  v10 = v0[1];

  return v10();
}

void sub_1B803C5A8(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = a3;
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v5 = sub_1B80C900C();
    __swift_project_value_buffer(v5, qword_1ED8DDF28);
    v6 = v3;
    v7 = sub_1B80C8FEC();
    v8 = sub_1B80C93FC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v29 = v10;
      *v9 = 136446466;
      *(v9 + 4) = sub_1B7FB84FC(0xD00000000000001ELL, 0x80000001B80CD300, &v29);
      *(v9 + 12) = 2082;
      v11 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v12 = sub_1B80C90EC();
      v14 = sub_1B7FB84FC(v12, v13, &v29);

      *(v9 + 14) = v14;
      _os_log_impl(&dword_1B7FB5000, v7, v8, "%{public}s error %{public}s!", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v10, -1, -1);
      MEMORY[0x1B8CB8970](v9, -1, -1);
    }

    v29 = v3;
    goto LABEL_9;
  }

  if (a2 >> 60 == 15)
  {
    sub_1B8010040();
    v3 = swift_allocError();
    *v15 = 1;
    v29 = v3;
LABEL_9:
    sub_1B80C8ACC();

    return;
  }

  sub_1B80C8CBC();
  swift_allocObject();
  sub_1B7FC62D8(a1, a2);
  sub_1B80C8CAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66110, &qword_1B80D2FD0);
  sub_1B804D2AC();
  v18 = a1;
  v19 = a2;
  sub_1B80C8C9C();

  v20 = v29;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v21 = sub_1B80C900C();
  __swift_project_value_buffer(v21, qword_1ED8DDF28);

  v22 = sub_1B80C8FEC();
  v23 = sub_1B80C941C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29 = v25;
    *v24 = 136446723;
    *(v24 + 4) = sub_1B7FB84FC(0xD00000000000001ELL, 0x80000001B80CD300, &v29);
    *(v24 + 12) = 2160;
    *(v24 + 14) = 1752392040;
    *(v24 + 22) = 2081;
    type metadata accessor for Location(0);
    sub_1B8032C04();
    v26 = sub_1B80C902C();
    v28 = sub_1B7FB84FC(v26, v27, &v29);

    *(v24 + 24) = v28;
    _os_log_impl(&dword_1B7FB5000, v22, v23, "%{public}s decodedLocations: %{private,mask.hash}s", v24, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v25, -1, -1);
    MEMORY[0x1B8CB8970](v24, -1, -1);
  }

  v29 = v20;
  sub_1B80C8ADC();
  sub_1B7FC72F8(v18, v19);
}

uint64_t sub_1B803CBAC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B803CC50;

  return sub_1B80351B0(a1, a2);
}

uint64_t sub_1B803CC50(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1B803CD50(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  *(v4 + 72) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1B803CDA4, v3, 0);
}

uint64_t sub_1B803CDA4()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  v5 = *(v0 + 16);
  *(v4 + 16) = v3;
  *(v4 + 24) = v5;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_1B802CFA4;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v6, 0xD00000000000002ELL, 0x80000001B80CD1A0, sub_1B804D65C, v4, v7);
}

uint64_t sub_1B803CEAC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B803CEF4, v1, 0);
}

uint64_t sub_1B803CEF4()
{
  v1 = v0[2].i64[0];
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  v2[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2[2].i64[0] = v1;
  v3 = swift_task_alloc();
  v0[3].i64[0] = v3;
  *v3 = v0;
  v3[1] = sub_1B8035644;
  v4 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v3, 0xD000000000000025, 0x80000001B80CD170, sub_1B804D368, v2, v4);
}

uint64_t sub_1B803CFEC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B804E0A8;

  return sub_1B803A944(a1);
}

uint64_t sub_1B803D080(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B804E0A8;

  return sub_1B8034910(a1);
}

uint64_t sub_1B803D114(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B804E0A8;

  return sub_1B8034B88(a1, a2);
}

uint64_t sub_1B803D1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1B803D204, v3, 0);
}

uint64_t sub_1B803D204()
{
  v1 = *(v0 + 48);
  v7 = *(v0 + 24);
  v2 = swift_allocObject();
  *(v0 + 56) = v2;
  swift_weakInit();
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v7;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1B803D338;
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE04418](v5, 0xD00000000000001DLL, 0x80000001B80CD110, sub_1B804CEC4, v3, &type metadata for DecodedLocationNotification);
}

uint64_t sub_1B803D338()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[5];

    return MEMORY[0x1EEE6DFA0](sub_1B804E0A4, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1B803D480()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803D4C8, v0, 0);
}

uint64_t sub_1B803D4C8()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1B803D600;
  v6 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v0 + 2, v1, v3, 0x6972616853746567, 0xEF292879654B676ELL, sub_1B804CD3C, v4, v6);
}

uint64_t sub_1B803D600()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1B8011C50;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1B804E034;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B803D728()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803D770, v0, 0);
}

uint64_t sub_1B803D770()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1B803D600;
  v6 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v0 + 2, v1, v3, 0x6972616853746567, 0xEF292879654B676ELL, sub_1B804E0D4, v4, v6);
}

uint64_t sub_1B803D8A8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B803D8F4, v2, 0);
}

uint64_t sub_1B803D8F4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v8 = *(v0 + 16);
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v8;
  *(v4 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1B802CFA4;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, v1, v3, 0xD000000000000011, 0x80000001B80CD0F0, sub_1B804CA84, v4, v6);
}

uint64_t sub_1B803DA3C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B803DA88, v2, 0);
}

uint64_t sub_1B803DA88()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v8 = *(v0 + 16);
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v8;
  *(v4 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1B802CFA4;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, v1, v3, 0xD000000000000011, 0x80000001B80CD0F0, sub_1B804E028, v4, v6);
}

uint64_t sub_1B803DBD0()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803DC18, v0, 0);
}

uint64_t sub_1B803DC18()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1B7FFA350;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, v1, v3, 0xD000000000000010, 0x80000001B80CD0D0, sub_1B804C8FC, v4, v6);
}

uint64_t sub_1B803DD4C()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803DD94, v0, 0);
}

uint64_t sub_1B803DD94()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1B803DEC8;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, v1, v3, 0xD000000000000010, 0x80000001B80CD0D0, sub_1B804E0D0, v4, v6);
}

uint64_t sub_1B803DEC8()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_1B7FFAF74;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_1B8011C90;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B803DFF0()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803E038, v0, 0);
}

uint64_t sub_1B803E038()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1B803D600;
  v6 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v0 + 2, v1, v3, 0x6572616853746567, 0xEF29287379654B64, sub_1B804C770, v4, v6);
}

uint64_t sub_1B803E170()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803E1B8, v0, 0);
}

uint64_t sub_1B803E1B8()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1B803D600;
  v6 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v0 + 2, v1, v3, 0x6572616853746567, 0xEF29287379654B64, sub_1B804E0CC, v4, v6);
}

uint64_t sub_1B803E2F0()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803E338, v0, 0);
}

uint64_t sub_1B803E338()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1B803D600;
  v6 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v0 + 2, v1, v3, 0xD000000000000014, 0x80000001B80CD0B0, sub_1B804C5E8, v4, v6);
}

uint64_t sub_1B803E470()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803E4B8, v0, 0);
}

uint64_t sub_1B803E4B8()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1B803D600;
  v6 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v0 + 2, v1, v3, 0xD000000000000014, 0x80000001B80CD0B0, sub_1B804E0C8, v4, v6);
}

uint64_t sub_1B803E5F0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v3[7] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B803E63C, v2, 0);
}

uint64_t sub_1B803E63C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v8 = *(v0 + 32);
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v8;
  *(v4 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_1B803E788;
  v6 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v0 + 16, v1, v3, 0xD00000000000001CLL, 0x80000001B80CD090, sub_1B804C398, v4, v6);
}

uint64_t sub_1B803E788()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_1B804E030;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1B804E034;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B803E8B0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v3[7] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B803E8FC, v2, 0);
}

uint64_t sub_1B803E8FC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v8 = *(v0 + 32);
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v8;
  *(v4 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_1B803EA48;
  v6 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v0 + 16, v1, v3, 0xD00000000000001CLL, 0x80000001B80CD090, sub_1B804E024, v4, v6);
}

uint64_t sub_1B803EA48()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_1B803EB70;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1B804E034;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B803EB70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B803EBD4()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803EC1C, v0, 0);
}

uint64_t sub_1B803EC1C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1B803D600;
  v6 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v0 + 2, v1, v3, 0x6E6F436863746566, 0xED00002928676966, sub_1B804C168, v4, v6);
}

uint64_t sub_1B803ED54()
{
  *(v1 + 32) = v0;
  *(v1 + 40) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803ED9C, v0, 0);
}

uint64_t sub_1B803ED9C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1B803EED4;
  v6 = MEMORY[0x1E6969080];

  return MEMORY[0x1EEE6DE38](v0 + 2, v1, v3, 0x6E6F436863746566, 0xED00002928676966, sub_1B804E0C4, v4, v6);
}

uint64_t sub_1B803EED4()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1B7FF8E48;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1B803EFFC;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B803F018()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803F060, v0, 0);
}

uint64_t sub_1B803F060()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1B7FFA350;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, v1, v3, 0xD000000000000013, 0x80000001B80CD070, sub_1B804BFE0, v4, v6);
}

uint64_t sub_1B803F194()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803F1DC, v0, 0);
}

uint64_t sub_1B803F1DC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1B7FFA350;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, v1, v3, 0xD000000000000013, 0x80000001B80CD070, sub_1B804E0C0, v4, v6);
}

uint64_t sub_1B803F310()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803F358, v0, 0);
}

uint64_t sub_1B803F358()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1B7FFA350;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, v1, v3, 0xD000000000000024, 0x80000001B80CD040, sub_1B804BE58, v4, v6);
}

uint64_t sub_1B803F48C()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803F4D4, v0, 0);
}

uint64_t sub_1B803F4D4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1B7FFA350;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, v1, v3, 0xD000000000000024, 0x80000001B80CD040, sub_1B804E0BC, v4, v6);
}

uint64_t sub_1B803F608()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803F650, v0, 0);
}

uint64_t sub_1B803F650()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1B7FFA350;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, v1, v3, 0xD00000000000001CLL, 0x80000001B80CD020, sub_1B804BCD0, v4, v6);
}

uint64_t sub_1B803F784()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B803F7CC, v0, 0);
}

uint64_t sub_1B803F7CC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1B7FFA350;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v5, v1, v3, 0xD00000000000001CLL, 0x80000001B80CD020, sub_1B804E0B8, v4, v6);
}

uint64_t sub_1B803F900(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B803F948, v1, 0);
}

uint64_t sub_1B803F948()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = type metadata accessor for SecureLocationsStewie.PublishResult(0);
  *v5 = v0;
  v5[1] = sub_1B800B9CC;
  v7 = v0[2];

  return MEMORY[0x1EEE6DE38](v7, v1, v3, 0xD000000000000020, 0x80000001B80CCFF0, sub_1B804B9B0, v4, v6);
}

uint64_t sub_1B803FA84(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B803FACC, v1, 0);
}

uint64_t sub_1B803FACC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = type metadata accessor for SecureLocationsStewie.PublishResult(0);
  *v5 = v0;
  v5[1] = sub_1B8000A0C;
  v7 = v0[2];

  return MEMORY[0x1EEE6DE38](v7, v1, v3, 0xD000000000000020, 0x80000001B80CCFF0, sub_1B804E0B4, v4, v6);
}

uint64_t sub_1B803FC08(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B803FC50, v1, 0);
}

uint64_t sub_1B803FC50()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = type metadata accessor for SecureLocationsStewie.PublishResult(0);
  *v5 = v0;
  v5[1] = sub_1B800B9CC;
  v7 = v0[2];

  return MEMORY[0x1EEE6DE38](v7, v1, v3, 0xD000000000000015, 0x80000001B80CCFB0, sub_1B804B724, v4, v6);
}

uint64_t sub_1B803FD8C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B803FDD4, v1, 0);
}

uint64_t sub_1B803FDD4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = type metadata accessor for SecureLocationsStewie.PublishResult(0);
  *v5 = v0;
  v5[1] = sub_1B800B9CC;
  v7 = v0[2];

  return MEMORY[0x1EEE6DE38](v7, v1, v3, 0xD000000000000015, 0x80000001B80CCFB0, sub_1B804E0B0, v4, v6);
}

uint64_t sub_1B803FF10(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B803FF58, v1, 0);
}

uint64_t sub_1B803FF58()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1B800B9CC;
  v6 = v0[2];

  return MEMORY[0x1EEE6DE38](v6, v1, v3, 0xD000000000000014, 0x80000001B80CCF90, sub_1B804B50C, v4, &type metadata for SecureLocationsStewie.ServiceState);
}

uint64_t sub_1B8040090(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80400D8, v1, 0);
}

uint64_t sub_1B80400D8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1B800B9CC;
  v6 = v0[2];

  return MEMORY[0x1EEE6DE38](v6, v1, v3, 0xD000000000000014, 0x80000001B80CCF90, sub_1B804E0AC, v4, &type metadata for SecureLocationsStewie.ServiceState);
}

uint64_t sub_1B8040210()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FBA3EC;

  return sub_1B804029C();
}

uint64_t sub_1B804029C()
{
  v1[8] = v0;
  v1[9] = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66080, &unk_1B80D2C48);
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66090, &qword_1B80D2CF8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B80403D4, v0, 0);
}

uint64_t sub_1B80403D4()
{
  v25 = v0;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDF28);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v24 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B7FB84FC(0xD00000000000001BLL, 0x80000001B80CD2C0, &v24);
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v6 = v0[14];
  v7 = v0[10];
  v8 = v0[11];
  v9 = v0[8];
  v10 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_stewieStateUpdateContinuation;
  swift_beginAccess();
  sub_1B7FB8448(v9 + v10, v6, &qword_1EBA66090, &qword_1B80D2CF8);
  v11 = (*(v8 + 48))(v6, 1, v7);
  v12 = v0[14];
  if (v11)
  {
    sub_1B7FB86D4(v0[14], &qword_1EBA66090, &qword_1B80D2CF8);
  }

  else
  {
    v14 = v0[11];
    v13 = v0[12];
    v15 = v0[10];
    (*(v14 + 16))(v13, v0[14], v15);
    sub_1B7FB86D4(v12, &qword_1EBA66090, &qword_1B80D2CF8);
    sub_1B80C92FC();
    (*(v14 + 8))(v13, v15);
  }

  v16 = v0[13];
  v17 = v0[8];
  v18 = v0[9];
  (*(v0[11] + 56))(v16, 1, 1, v0[10]);
  swift_beginAccess();
  sub_1B7FCD754(v16, v9 + v10);
  swift_endAccess();
  v19 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v20 = swift_task_alloc();
  v0[15] = v20;
  *(v20 + 16) = v17;
  *(v20 + 24) = v18;
  v21 = swift_task_alloc();
  v0[16] = v21;
  *v21 = v0;
  v21[1] = sub_1B804074C;
  v22 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v21, v17, v19, 0xD00000000000001BLL, 0x80000001B80CD2C0, sub_1B804DA40, v20, v22);
}

uint64_t sub_1B804074C()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_1B80408EC;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_1B8040874;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B8040874()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B80408EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8040974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66148, &qword_1B80D3220);
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v5[14] = *(v8 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8040A58, a4, 0);
}

uint64_t sub_1B8040A58()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v2 + 16);
  *(v0 + 136) = v5;
  *(v0 + 144) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v3, v4);
  v6 = *(v2 + 80);
  *(v0 + 192) = v6;
  v7 = (v6 + 16) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 152) = v8;
  v9 = *(v2 + 32);
  *(v0 + 160) = v9;
  *(v0 + 168) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v4);
  v10 = swift_task_alloc();
  *(v0 + 176) = v10;
  v11 = _s18LocationConnectionCMa(0);
  v12 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa, &unk_1B80D2C70);
  *v10 = v0;
  v10[1] = sub_1B8040BF0;

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B804E09C, v8, v11, v12);
}

uint64_t sub_1B8040BF0()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_1B8040E84;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1B8040D18;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B8040D18()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = (*(v0 + 192) + 16) & ~*(v0 + 192);
  v5 = *(v0 + 64);
  (*(v0 + 136))(v2, *(v0 + 88), v3);
  v6 = swift_allocObject();
  v1(v6 + v4, v2, v3);
  *(v0 + 48) = sub_1B804E02C;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FC5CCC;
  *(v0 + 40) = &block_descriptor_213;
  v7 = _Block_copy((v0 + 16));

  [v5 getSharingKeyWithCompletion_];
  _Block_release(v7);
  swift_unknownObjectRelease();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1B8040E84()
{
  v13 = v0;

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0x6972616853746567, 0xEF292879654B676ELL, &v12);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v0[9] = v0[23];
  sub_1B80C927C();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B804109C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v7[14] = v9;
  v10 = *(v9 - 8);
  v7[15] = v10;
  v7[16] = *(v10 + 64);
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8041184, a4, 0);
}

uint64_t sub_1B8041184()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = *(v2 + 16);
  *(v0 + 152) = v5;
  *(v0 + 160) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v2 + 80);
  *(v0 + 208) = v6;
  v7 = (v6 + 16) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 168) = v8;
  v9 = *(v2 + 32);
  *(v0 + 176) = v9;
  *(v0 + 184) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v3);
  v10 = swift_task_alloc();
  *(v0 + 192) = v10;
  v11 = _s18LocationConnectionCMa(0);
  v12 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa, &unk_1B80D2C70);
  *v10 = v0;
  v10[1] = sub_1B8041320;

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B804CD28, v8, v11, v12);
}

uint64_t sub_1B8041320()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_1B80415DC;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1B8041448;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B8041448()
{
  v10 = *(v0 + 176);
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = (*(v0 + 208) + 16) & ~*(v0 + 208);
  v12 = *(v0 + 64);
  v11 = sub_1B80C8D1C();
  v1(v2, v4, v3);
  v6 = swift_allocObject();
  v10(v6 + v5, v2, v3);
  *(v0 + 48) = sub_1B7FCE2F4;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FCE114;
  *(v0 + 40) = &block_descriptor_197;
  v7 = _Block_copy((v0 + 16));

  [v12 setSharingKey:v11 completion:v7];
  _Block_release(v7);

  swift_unknownObjectRelease();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1B80415DC()
{
  v13 = v0;

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000011, 0x80000001B80CD0F0, &v12);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v0[9] = v0[25];
  sub_1B80C927C();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B80417F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v5[14] = *(v8 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B80418D4, a4, 0);
}

uint64_t sub_1B80418D4()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v2 + 16);
  *(v0 + 136) = v5;
  *(v0 + 144) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v3, v4);
  v6 = *(v2 + 80);
  *(v0 + 192) = v6;
  v7 = (v6 + 16) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 152) = v8;
  v9 = *(v2 + 32);
  *(v0 + 160) = v9;
  *(v0 + 168) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v4);
  v10 = swift_task_alloc();
  *(v0 + 176) = v10;
  v11 = _s18LocationConnectionCMa(0);
  v12 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa, &unk_1B80D2C70);
  *v10 = v0;
  v10[1] = sub_1B8041A6C;

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B804E098, v8, v11, v12);
}

uint64_t sub_1B8041A6C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_1B8041D00;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1B8041B94;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B8041B94()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = (*(v0 + 192) + 16) & ~*(v0 + 192);
  v5 = *(v0 + 64);
  (*(v0 + 136))(v2, *(v0 + 88), v3);
  v6 = swift_allocObject();
  v1(v6 + v4, v2, v3);
  *(v0 + 48) = sub_1B7FCE2F8;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FCE114;
  *(v0 + 40) = &block_descriptor_181;
  v7 = _Block_copy((v0 + 16));

  [v5 performKeyRollWithCompletion_];
  _Block_release(v7);
  swift_unknownObjectRelease();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1B8041D00()
{
  v13 = v0;

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000010, 0x80000001B80CD0D0, &v12);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v0[9] = v0[23];
  sub_1B80C927C();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B8041F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66148, &qword_1B80D3220);
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v5[14] = *(v8 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8041FF4, a4, 0);
}

uint64_t sub_1B8041FF4()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v2 + 16);
  *(v0 + 136) = v5;
  *(v0 + 144) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v3, v4);
  v6 = *(v2 + 80);
  *(v0 + 192) = v6;
  v7 = (v6 + 16) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 152) = v8;
  v9 = *(v2 + 32);
  *(v0 + 160) = v9;
  *(v0 + 168) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v4);
  v10 = swift_task_alloc();
  *(v0 + 176) = v10;
  v11 = _s18LocationConnectionCMa(0);
  v12 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa, &unk_1B80D2C70);
  *v10 = v0;
  v10[1] = sub_1B804218C;

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B804E09C, v8, v11, v12);
}

uint64_t sub_1B804218C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_1B8042420;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1B80422B4;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B80422B4()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = (*(v0 + 192) + 16) & ~*(v0 + 192);
  v5 = *(v0 + 64);
  (*(v0 + 136))(v2, *(v0 + 88), v3);
  v6 = swift_allocObject();
  v1(v6 + v4, v2, v3);
  *(v0 + 48) = sub_1B804C8F8;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FC5CCC;
  *(v0 + 40) = &block_descriptor_165;
  v7 = _Block_copy((v0 + 16));

  [v5 getSharedKeysWithCompletion_];
  _Block_release(v7);
  swift_unknownObjectRelease();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1B8042420()
{
  v13 = v0;

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0x6572616853746567, 0xEF29287379654B64, &v12);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v0[9] = v0[23];
  sub_1B80C927C();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B8042638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66148, &qword_1B80D3220);
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v5[14] = *(v8 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B804271C, a4, 0);
}

uint64_t sub_1B804271C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v2 + 16);
  *(v0 + 136) = v5;
  *(v0 + 144) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v3, v4);
  v6 = *(v2 + 80);
  *(v0 + 192) = v6;
  v7 = (v6 + 16) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 152) = v8;
  v9 = *(v2 + 32);
  *(v0 + 160) = v9;
  *(v0 + 168) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v4);
  v10 = swift_task_alloc();
  *(v0 + 176) = v10;
  v11 = _s18LocationConnectionCMa(0);
  v12 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa, &unk_1B80D2C70);
  *v10 = v0;
  v10[1] = sub_1B80428B4;

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B804E09C, v8, v11, v12);
}

uint64_t sub_1B80428B4()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_1B8042B48;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1B80429DC;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B80429DC()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = (*(v0 + 192) + 16) & ~*(v0 + 192);
  v5 = *(v0 + 64);
  (*(v0 + 136))(v2, *(v0 + 88), v3);
  v6 = swift_allocObject();
  v1(v6 + v4, v2, v3);
  *(v0 + 48) = sub_1B804E02C;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FC5CCC;
  *(v0 + 40) = &block_descriptor_149;
  v7 = _Block_copy((v0 + 16));

  [v5 getCachedLocationsWithCompletion_];
  _Block_release(v7);
  swift_unknownObjectRelease();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1B8042B48()
{
  v13 = v0;

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000014, 0x80000001B80CD0B0, &v12);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v0[9] = v0[23];
  sub_1B80C927C();

  v10 = v0[1];

  return v10();
}

double sub_1B8042D58(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  v29 = a4;
  v30 = a5;
  v28 = a3;
  v31 = a9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v28 - v17;
  v19 = sub_1B80C92CC();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v12 + 16))(v15, a1, v11);
  v20 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa, &unk_1B80D2CA0);
  v21 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = a2;
  *(v23 + 3) = v20;
  *(v23 + 4) = a2;
  (*(v12 + 32))(&v23[v21], v15, v11);
  v24 = &v23[v22];
  v26 = v28;
  v25 = v29;
  *v24 = v28;
  v24[1] = v25;
  *&v23[(v22 + 23) & 0xFFFFFFFFFFFFFFF8] = v30;
  swift_retain_n();
  sub_1B7FC62D8(v26, v25);
  sub_1B80A1D3C(0, 0, v18, v31, v23);

  return result;
}

uint64_t sub_1B8042FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66148, &qword_1B80D3220);
  v7[14] = v9;
  v10 = *(v9 - 8);
  v7[15] = v10;
  v7[16] = *(v10 + 64);
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B80430A0, a4, 0);
}

uint64_t sub_1B80430A0()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = *(v2 + 16);
  *(v0 + 152) = v5;
  *(v0 + 160) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v2 + 80);
  *(v0 + 208) = v6;
  v7 = (v6 + 16) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 168) = v8;
  v9 = *(v2 + 32);
  *(v0 + 176) = v9;
  *(v0 + 184) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v3);
  v10 = swift_task_alloc();
  *(v0 + 192) = v10;
  v11 = _s18LocationConnectionCMa(0);
  v12 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa, &unk_1B80D2C70);
  *v10 = v0;
  v10[1] = sub_1B804323C;

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B804E09C, v8, v11, v12);
}

uint64_t sub_1B804323C()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_1B80434F8;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1B8043364;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B8043364()
{
  v10 = *(v0 + 176);
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = (*(v0 + 208) + 16) & ~*(v0 + 208);
  v12 = *(v0 + 64);
  v11 = sub_1B80C8D1C();
  v1(v2, v4, v3);
  v6 = swift_allocObject();
  v10(v6 + v5, v2, v3);
  *(v0 + 48) = sub_1B804E02C;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FC5CCC;
  *(v0 + 40) = &block_descriptor_133;
  v7 = _Block_copy((v0 + 16));

  [v12 processIDSServiceMessage:v11 completion:v7];
  _Block_release(v7);

  swift_unknownObjectRelease();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1B80434F8()
{
  v13 = v0;

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000001CLL, 0x80000001B80CD090, &v12);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v0[9] = v0[25];
  sub_1B80C927C();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B804370C(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66148, &qword_1B80D3220);
    return sub_1B80C927C();
  }

  else
  {
    sub_1B804C5D4(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66148, &qword_1B80D3220);
    return sub_1B80C928C();
  }
}

uint64_t sub_1B80437A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66148, &qword_1B80D3220);
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v5[14] = *(v8 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8043888, a4, 0);
}

uint64_t sub_1B8043888()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v2 + 16);
  *(v0 + 136) = v5;
  *(v0 + 144) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v3, v4);
  v6 = *(v2 + 80);
  *(v0 + 192) = v6;
  v7 = (v6 + 16) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 152) = v8;
  v9 = *(v2 + 32);
  *(v0 + 160) = v9;
  *(v0 + 168) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v4);
  v10 = swift_task_alloc();
  *(v0 + 176) = v10;
  v11 = _s18LocationConnectionCMa(0);
  v12 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa, &unk_1B80D2C70);
  *v10 = v0;
  v10[1] = sub_1B8043A20;

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B804C2F0, v8, v11, v12);
}

uint64_t sub_1B8043A20()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_1B8043CB4;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1B8043B48;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B8043B48()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = (*(v0 + 192) + 16) & ~*(v0 + 192);
  v5 = *(v0 + 64);
  (*(v0 + 136))(v2, *(v0 + 88), v3);
  v6 = swift_allocObject();
  v1(v6 + v4, v2, v3);
  *(v0 + 48) = sub_1B804C304;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FC5CCC;
  *(v0 + 40) = &block_descriptor_117;
  v7 = _Block_copy((v0 + 16));

  [v5 fetchConfigWithCompletion_];
  _Block_release(v7);
  swift_unknownObjectRelease();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1B8043CB4()
{
  v13 = v0;

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0x6E6F436863746566, 0xED00002928676966, &v12);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v0[9] = v0[23];
  sub_1B80C927C();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B8043ECC(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    if (a2 >> 60 != 15)
    {
      sub_1B7FC62D8(a1, a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66148, &qword_1B80D3220);
      return sub_1B80C928C();
    }

    sub_1B8010040();
    swift_allocError();
    *v4 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66148, &qword_1B80D3220);
  return sub_1B80C927C();
}

uint64_t sub_1B8043F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v5[14] = *(v8 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B804406C, a4, 0);
}

uint64_t sub_1B804406C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v2 + 16);
  *(v0 + 136) = v5;
  *(v0 + 144) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v3, v4);
  v6 = *(v2 + 80);
  *(v0 + 192) = v6;
  v7 = (v6 + 16) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 152) = v8;
  v9 = *(v2 + 32);
  *(v0 + 160) = v9;
  *(v0 + 168) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v4);
  v10 = swift_task_alloc();
  *(v0 + 176) = v10;
  v11 = _s18LocationConnectionCMa(0);
  v12 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa, &unk_1B80D2C70);
  *v10 = v0;
  v10[1] = sub_1B8044204;

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B804E098, v8, v11, v12);
}

uint64_t sub_1B8044204()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_1B8044498;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1B804432C;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B804432C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = (*(v0 + 192) + 16) & ~*(v0 + 192);
  v5 = *(v0 + 64);
  (*(v0 + 136))(v2, *(v0 + 88), v3);
  v6 = swift_allocObject();
  v1(v6 + v4, v2, v3);
  *(v0 + 48) = sub_1B7FCE2F8;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FCE114;
  *(v0 + 40) = &block_descriptor_101;
  v7 = _Block_copy((v0 + 16));

  [v5 clearCachedConfigWithCompletion_];
  _Block_release(v7);
  swift_unknownObjectRelease();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1B8044498()
{
  v13 = v0;

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000013, 0x80000001B80CD070, &v12);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v0[9] = v0[23];
  sub_1B80C927C();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B80446A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v5[14] = *(v8 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B804478C, a4, 0);
}

uint64_t sub_1B804478C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v2 + 16);
  *(v0 + 136) = v5;
  *(v0 + 144) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v3, v4);
  v6 = *(v2 + 80);
  *(v0 + 192) = v6;
  v7 = (v6 + 16) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 152) = v8;
  v9 = *(v2 + 32);
  *(v0 + 160) = v9;
  *(v0 + 168) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v4);
  v10 = swift_task_alloc();
  *(v0 + 176) = v10;
  v11 = _s18LocationConnectionCMa(0);
  v12 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa, &unk_1B80D2C70);
  *v10 = v0;
  v10[1] = sub_1B8044924;

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B804E098, v8, v11, v12);
}

uint64_t sub_1B8044924()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_1B8044BB8;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1B8044A4C;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B8044A4C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = (*(v0 + 192) + 16) & ~*(v0 + 192);
  v5 = *(v0 + 64);
  (*(v0 + 136))(v2, *(v0 + 88), v3);
  v6 = swift_allocObject();
  v1(v6 + v4, v2, v3);
  *(v0 + 48) = sub_1B7FCE2F8;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FCE114;
  *(v0 + 40) = &block_descriptor_85;
  v7 = _Block_copy((v0 + 16));

  [v5 triggerStewieProactiveNotificationWithCompletion_];
  _Block_release(v7);
  swift_unknownObjectRelease();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1B8044BB8()
{
  v13 = v0;

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000024, 0x80000001B80CD040, &v12);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v0[9] = v0[23];
  sub_1B80C927C();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B8044DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v5[14] = *(v8 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8044EAC, a4, 0);
}

uint64_t sub_1B8044EAC()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v2 + 16);
  *(v0 + 136) = v5;
  *(v0 + 144) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v3, v4);
  v6 = *(v2 + 80);
  *(v0 + 192) = v6;
  v7 = (v6 + 16) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 152) = v8;
  v9 = *(v2 + 32);
  *(v0 + 160) = v9;
  *(v0 + 168) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v4);
  v10 = swift_task_alloc();
  *(v0 + 176) = v10;
  v11 = _s18LocationConnectionCMa(0);
  v12 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa, &unk_1B80D2C70);
  *v10 = v0;
  v10[1] = sub_1B8045044;

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B804E098, v8, v11, v12);
}

uint64_t sub_1B8045044()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_1B80452D8;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1B804516C;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B804516C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = (*(v0 + 192) + 16) & ~*(v0 + 192);
  v5 = *(v0 + 64);
  (*(v0 + 136))(v2, *(v0 + 88), v3);
  v6 = swift_allocObject();
  v1(v6 + v4, v2, v3);
  *(v0 + 48) = sub_1B7FCE2F8;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FCE114;
  *(v0 + 40) = &block_descriptor_69;
  v7 = _Block_copy((v0 + 16));

  [v5 dismissStewieNotificationsWithCompletion_];
  _Block_release(v7);
  swift_unknownObjectRelease();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1B80452D8()
{
  v13 = v0;

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000001CLL, 0x80000001B80CD020, &v12);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v0[9] = v0[23];
  sub_1B80C927C();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B80454E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66138, &qword_1B80D31C8);
  v6[13] = v8;
  v9 = *(v8 - 8);
  v6[14] = v9;
  v6[15] = *(v9 + 64);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B80455D0, a4, 0);
}

uint64_t sub_1B80455D0()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v2 + 16);
  *(v0 + 144) = v5;
  *(v0 + 152) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v2 + 80);
  *(v0 + 200) = v6;
  v7 = (v6 + 16) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 160) = v8;
  v9 = *(v2 + 32);
  *(v0 + 168) = v9;
  *(v0 + 176) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v3);
  v10 = swift_task_alloc();
  *(v0 + 184) = v10;
  v11 = _s18LocationConnectionCMa(0);
  v12 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa, &unk_1B80D2C70);
  *v10 = v0;
  v10[1] = sub_1B804576C;

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B804BB38, v8, v11, v12);
}

uint64_t sub_1B804576C()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_1B8045A1C;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1B8045894;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B8045894()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = (*(v0 + 200) + 16) & ~*(v0 + 200);
  v11 = *(v0 + 64);
  (*(v0 + 144))(v2, *(v0 + 88), v4);
  v7 = swift_allocObject();
  v1(v7 + v6, v2, v4);
  *(v7 + ((v3 + v6 + 7) & 0xFFFFFFFFFFFFFFF8)) = v5;
  *(v0 + 48) = sub_1B804BBDC;
  *(v0 + 56) = v7;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FC5CCC;
  *(v0 + 40) = &block_descriptor_53;
  v8 = _Block_copy((v0 + 16));

  [v11 publishCurrentLocationToStewieWithCompletion_];
  _Block_release(v8);
  swift_unknownObjectRelease();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1B8045A1C()
{
  v13 = v0;

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000020, 0x80000001B80CCFF0, &v12);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v0[9] = v0[24];
  sub_1B80C927C();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B8045C30(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  v9 = type metadata accessor for SecureLocationsStewie.PublishResult(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v35 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v35 - v17;
  if (a3)
  {
    v39 = a3;
    v19 = a3;
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66138, &qword_1B80D31C8);
    return sub_1B80C927C();
  }

  if (a2 >> 60 == 15)
  {
    sub_1B8010040();
    v20 = swift_allocError();
    *v21 = 1;
    v39 = v20;
    goto LABEL_5;
  }

  v23 = v16;
  sub_1B80C8CBC();
  swift_allocObject();
  sub_1B7FC62D8(a1, a2);
  sub_1B80C8CAC();
  sub_1B7FCD1B8(&qword_1EBA66140, type metadata accessor for SecureLocationsStewie.PublishResult, &protocol conformance descriptor for SecureLocationsStewie.PublishResult);
  v38 = v23;
  sub_1B80C8C9C();

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v24 = sub_1B80C900C();
  __swift_project_value_buffer(v24, qword_1ED8DDF28);
  sub_1B804D0A0(v18, v15, type metadata accessor for SecureLocationsStewie.PublishResult);
  v25 = sub_1B80C8FEC();
  v26 = sub_1B80C941C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v36 = v26;
    v28 = v27;
    v37 = swift_slowAlloc();
    v41[0] = v37;
    *v28 = 136446723;
    *(v28 + 4) = sub_1B7FB84FC(0xD000000000000020, 0x80000001B80CCFF0, v41);
    *(v28 + 12) = 2160;
    *(v28 + 14) = 1752392040;
    *(v28 + 22) = 2081;
    sub_1B804D0A0(v15, v12, type metadata accessor for SecureLocationsStewie.PublishResult);
    v39 = 0;
    v40 = 0xE000000000000000;
    v35 = v25;
    sub_1B80C952C();
    MEMORY[0x1B8CB7A40](0x6C6275507473616CLL, 0xEF203A6465687369);
    sub_1B7FB8448(v12, v8, &unk_1EBA65FD0, &unk_1B80D1920);
    v29 = sub_1B80C90EC();
    MEMORY[0x1B8CB7A40](v29);

    MEMORY[0x1B8CB7A40](0xD000000000000016, 0x80000001B80CCFD0);
    sub_1B80C938C();
    v30 = v39;
    v31 = v40;
    sub_1B804B954(v12);
    sub_1B804B954(v15);
    v32 = sub_1B7FB84FC(v30, v31, v41);

    *(v28 + 24) = v32;
    v33 = v35;
    _os_log_impl(&dword_1B7FB5000, v35, v36, "%{public}s decoded stewiePublishResult: %{private,mask.hash}s", v28, 0x20u);
    v34 = v37;
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v34, -1, -1);
    MEMORY[0x1B8CB8970](v28, -1, -1);
  }

  else
  {

    sub_1B804B954(v15);
  }

  sub_1B804D0A0(v18, v12, type metadata accessor for SecureLocationsStewie.PublishResult);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66138, &qword_1B80D31C8);
  sub_1B80C928C();
  sub_1B7FC72F8(a1, a2);
  return sub_1B804B954(v18);
}

uint64_t sub_1B8046310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66138, &qword_1B80D31C8);
  v6[13] = v8;
  v9 = *(v8 - 8);
  v6[14] = v9;
  v6[15] = *(v9 + 64);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B80463F8, a4, 0);
}

uint64_t sub_1B80463F8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v2 + 16);
  *(v0 + 144) = v5;
  *(v0 + 152) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v2 + 80);
  *(v0 + 200) = v6;
  v7 = (v6 + 16) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 160) = v8;
  v9 = *(v2 + 32);
  *(v0 + 168) = v9;
  *(v0 + 176) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v3);
  v10 = swift_task_alloc();
  *(v0 + 184) = v10;
  v11 = _s18LocationConnectionCMa(0);
  v12 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa, &unk_1B80D2C70);
  *v10 = v0;
  v10[1] = sub_1B8046594;

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B804E094, v8, v11, v12);
}

uint64_t sub_1B8046594()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_1B8046844;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1B80466BC;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B80466BC()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = (*(v0 + 200) + 16) & ~*(v0 + 200);
  v11 = *(v0 + 64);
  (*(v0 + 144))(v2, *(v0 + 88), v4);
  v7 = swift_allocObject();
  v1(v7 + v6, v2, v4);
  *(v7 + ((v3 + v6 + 7) & 0xFFFFFFFFFFFFFFF8)) = v5;
  *(v0 + 48) = sub_1B804B92C;
  *(v0 + 56) = v7;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FC5CCC;
  *(v0 + 40) = &block_descriptor_37;
  v8 = _Block_copy((v0 + 16));

  [v11 stewiePublishResultWithCompletion_];
  _Block_release(v8);
  swift_unknownObjectRelease();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1B8046844()
{
  v13 = v0;

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000015, 0x80000001B80CCFB0, &v12);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v0[9] = v0[24];
  sub_1B80C927C();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B8046A58(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  v9 = type metadata accessor for SecureLocationsStewie.PublishResult(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v35 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v35 - v17;
  if (a3)
  {
    v39 = a3;
    v19 = a3;
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66138, &qword_1B80D31C8);
    return sub_1B80C927C();
  }

  if (a2 >> 60 == 15)
  {
    sub_1B8010040();
    v20 = swift_allocError();
    *v21 = 1;
    v39 = v20;
    goto LABEL_5;
  }

  v23 = v16;
  sub_1B80C8CBC();
  swift_allocObject();
  sub_1B7FC62D8(a1, a2);
  sub_1B80C8CAC();
  sub_1B7FCD1B8(&qword_1EBA66140, type metadata accessor for SecureLocationsStewie.PublishResult, &protocol conformance descriptor for SecureLocationsStewie.PublishResult);
  v38 = v23;
  sub_1B80C8C9C();

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v24 = sub_1B80C900C();
  __swift_project_value_buffer(v24, qword_1ED8DDF28);
  sub_1B804D0A0(v18, v15, type metadata accessor for SecureLocationsStewie.PublishResult);
  v25 = sub_1B80C8FEC();
  v26 = sub_1B80C941C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v36 = v26;
    v28 = v27;
    v37 = swift_slowAlloc();
    v41[0] = v37;
    *v28 = 136446723;
    *(v28 + 4) = sub_1B7FB84FC(0xD000000000000015, 0x80000001B80CCFB0, v41);
    *(v28 + 12) = 2160;
    *(v28 + 14) = 1752392040;
    *(v28 + 22) = 2081;
    sub_1B804D0A0(v15, v12, type metadata accessor for SecureLocationsStewie.PublishResult);
    v39 = 0;
    v40 = 0xE000000000000000;
    v35 = v25;
    sub_1B80C952C();
    MEMORY[0x1B8CB7A40](0x6C6275507473616CLL, 0xEF203A6465687369);
    sub_1B7FB8448(v12, v8, &unk_1EBA65FD0, &unk_1B80D1920);
    v29 = sub_1B80C90EC();
    MEMORY[0x1B8CB7A40](v29);

    MEMORY[0x1B8CB7A40](0xD000000000000016, 0x80000001B80CCFD0);
    sub_1B80C938C();
    v30 = v39;
    v31 = v40;
    sub_1B804B954(v12);
    sub_1B804B954(v15);
    v32 = sub_1B7FB84FC(v30, v31, v41);

    *(v28 + 24) = v32;
    v33 = v35;
    _os_log_impl(&dword_1B7FB5000, v35, v36, "%{public}s decoded stewiePublishResult: %{private,mask.hash}s", v28, 0x20u);
    v34 = v37;
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v34, -1, -1);
    MEMORY[0x1B8CB8970](v28, -1, -1);
  }

  else
  {

    sub_1B804B954(v15);
  }

  sub_1B804D0A0(v18, v12, type metadata accessor for SecureLocationsStewie.PublishResult);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66138, &qword_1B80D31C8);
  sub_1B80C928C();
  sub_1B7FC72F8(a1, a2);
  return sub_1B804B954(v18);
}

uint64_t sub_1B8047138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66128, &qword_1B80D31B0);
  v6[13] = v8;
  v9 = *(v8 - 8);
  v6[14] = v9;
  v6[15] = *(v9 + 64);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8047220, a4, 0);
}

uint64_t sub_1B8047220()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v2 + 16);
  *(v0 + 144) = v5;
  *(v0 + 152) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v2 + 80);
  *(v0 + 200) = v6;
  v7 = (v6 + 16) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 160) = v8;
  v9 = *(v2 + 32);
  *(v0 + 168) = v9;
  *(v0 + 176) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v3);
  v10 = swift_task_alloc();
  *(v0 + 184) = v10;
  v11 = _s18LocationConnectionCMa(0);
  v12 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa, &unk_1B80D2C70);
  *v10 = v0;
  v10[1] = sub_1B80473BC;

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B804B694, v8, v11, v12);
}

uint64_t sub_1B80473BC()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_1B804766C;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1B80474E4;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B80474E4()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = (*(v0 + 200) + 16) & ~*(v0 + 200);
  v11 = *(v0 + 64);
  (*(v0 + 144))(v2, *(v0 + 88), v4);
  v7 = swift_allocObject();
  v1(v7 + v6, v2, v4);
  *(v7 + ((v3 + v6 + 7) & 0xFFFFFFFFFFFFFFF8)) = v5;
  *(v0 + 48) = sub_1B804B6A8;
  *(v0 + 56) = v7;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FC5CCC;
  *(v0 + 40) = &block_descriptor_5;
  v8 = _Block_copy((v0 + 16));

  [v11 currentStewieStateWithCompletion_];
  _Block_release(v8);
  swift_unknownObjectRelease();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1B804766C()
{
  v13 = v0;

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000014, 0x80000001B80CCF90, &v12);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v0[9] = v0[24];
  sub_1B80C927C();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B8047880(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_1B80C896C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  if (a3)
  {
    v7 = a3;
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66128, &qword_1B80D31B0);
    return sub_1B80C927C();
  }

  if (a2 >> 60 == 15)
  {
    sub_1B8010040();
    swift_allocError();
    *v8 = 1;
    goto LABEL_5;
  }

  sub_1B7FC62D8(a1, a2);
  sub_1B7FC62D8(a1, a2);
  sub_1B80C895C();
  sub_1B804B6D0();
  sub_1B80C961C();
  if (v16 == 1 || (SecureLocationsStewie.ServiceState.init(rawValue:)(v15), v15 == 10))
  {
    if (qword_1ED8DD848 != -1)
    {
      swift_once();
    }

    v10 = sub_1B80C900C();
    __swift_project_value_buffer(v10, qword_1ED8DDF28);
    v11 = sub_1B80C8FEC();
    v12 = sub_1B80C93FC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1B7FB5000, v11, v12, "Invalid service state response.", v13, 2u);
      MEMORY[0x1B8CB8970](v13, -1, -1);
    }

    sub_1B8010040();
    swift_allocError();
    *v14 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66128, &qword_1B80D31B0);
    sub_1B80C927C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66128, &qword_1B80D31B0);
    sub_1B80C928C();
  }

  return sub_1B7FC72F8(a1, a2);
}

uint64_t sub_1B8047B18()
{
  v13 = v0;

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000001DLL, 0x80000001B80CD2E0, &v12);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v0[9] = v0[23];
  sub_1B80C927C();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B8047D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v5[14] = *(v8 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8047E0C, a4, 0);
}

uint64_t sub_1B8047E0C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v2 + 16);
  *(v0 + 136) = v5;
  *(v0 + 144) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v3, v4);
  v6 = *(v2 + 80);
  *(v0 + 192) = v6;
  v7 = (v6 + 16) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 152) = v8;
  v9 = *(v2 + 32);
  *(v0 + 160) = v9;
  *(v0 + 168) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v4);
  v10 = swift_task_alloc();
  *(v0 + 176) = v10;
  v11 = _s18LocationConnectionCMa(0);
  v12 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa, &unk_1B80D2C70);
  *v10 = v0;
  v10[1] = sub_1B8047FA4;

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B804E098, v8, v11, v12);
}

uint64_t sub_1B8047FA4()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_1B8048238;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_1B80480CC;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B80480CC()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = (*(v0 + 192) + 16) & ~*(v0 + 192);
  v5 = *(v0 + 64);
  (*(v0 + 136))(v2, *(v0 + 88), v3);
  v6 = swift_allocObject();
  v1(v6 + v4, v2, v3);
  *(v0 + 48) = sub_1B7FCE2F8;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FCE114;
  *(v0 + 40) = &block_descriptor_342;
  v7 = _Block_copy((v0 + 16));

  [v5 stopMonitoringStewieStateWithCompletion_];
  _Block_release(v7);
  swift_unknownObjectRelease();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1B8048238()
{
  v13 = v0;

  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDF28);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000001BLL, 0x80000001B80CD2C0, &v12);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v0[9] = v0[23];
  sub_1B80C927C();

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B8048448(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_1B80C927C();
}

uint64_t Session.locationsForHandles(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80484C4, 0, 0);
}

uint64_t sub_1B80484C4()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B8048560;

  return sub_1B7FC225C();
}

uint64_t sub_1B8048560()
{

  return MEMORY[0x1EEE6DFA0](sub_1B804865C, 0, 0);
}

uint64_t sub_1B804865C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FCE7A0;
  v2 = *(v0 + 16);

  return sub_1B801F5C4(v2);
}

uint64_t Session.locationsUnavailable(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8048718, 0, 0);
}

uint64_t sub_1B8048718()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80487B4;

  return sub_1B7FC225C();
}

uint64_t sub_1B80487B4()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80488B0, 0, 0);
}

uint64_t sub_1B80488B0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FCE788;
  v2 = *(v0 + 16);

  return sub_1B80274A8(v2);
}

uint64_t Session.stewieServiceStateChanged(_:)(_BYTE *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 41) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1B8048974, 0, 0);
}

uint64_t sub_1B8048974()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B8048A10;

  return sub_1B7FC225C();
}

uint64_t sub_1B8048A10()
{

  return MEMORY[0x1EEE6DFA0](sub_1B8048B0C, 0, 0);
}

uint64_t sub_1B8048B0C()
{
  *(v0 + 40) = *(v0 + 41);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B8048BB0;

  return sub_1B8024C3C((v0 + 40));
}

uint64_t sub_1B8048BB0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B8048CA4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8048CC4, 0, 0);
}

uint64_t sub_1B8048CC4()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B8048D60;

  return sub_1B7FC225C();
}

uint64_t sub_1B8048D60()
{

  return MEMORY[0x1EEE6DFA0](sub_1B8048E5C, 0, 0);
}

uint64_t sub_1B8048E5C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FCE788;
  v2 = *(v0 + 16);

  return sub_1B801F5C4(v2);
}

uint64_t sub_1B8048EF8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8048718, 0, 0);
}

uint64_t sub_1B8048F18(_BYTE *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 41) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1B8048F40, 0, 0);
}

uint64_t sub_1B8048F40()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B8048FDC;

  return sub_1B7FC225C();
}

uint64_t sub_1B8048FDC()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80490D8, 0, 0);
}

uint64_t sub_1B80490D8()
{
  *(v0 + 40) = *(v0 + 41);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B804917C;

  return sub_1B8024C3C((v0 + 40));
}

uint64_t sub_1B804917C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B80492A0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = *MEMORY[0x1E69E7D40] & *a3;
  return MEMORY[0x1EEE6DFA0](sub_1B8049300, 0, 0);
}

uint64_t sub_1B8049300()
{
  v12 = v0;
  sub_1B80C8CBC();
  swift_allocObject();
  sub_1B80C8CAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66110, &qword_1B80D2FD0);
  sub_1B804D2AC();
  sub_1B80C8C9C();

  v0[9] = v0[2];
  if (qword_1EBA65AD0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1EBA7AD10);

  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11[0] = v5;
    *v4 = 136446466;
    *(v4 + 4) = sub_1B7FB84FC(0xD000000000000022, 0x80000001B80CD290, v11);
    *(v4 + 12) = 2080;
    type metadata accessor for Location(0);
    sub_1B8032C04();
    v6 = sub_1B80C902C();
    v8 = sub_1B7FB84FC(v6, v7, v11);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s decodedLocations: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v9 = v0[5];

  return MEMORY[0x1EEE6DFA0](sub_1B804973C, v9, 0);
}

uint64_t sub_1B804973C()
{
  *(v0 + 80) = swift_unknownObjectWeakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1B80497AC, 0, 0);
}

uint64_t sub_1B80497AC()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 64);
    v3 = *(v1 + 80);
    v2 = *(v1 + 88);
    v8 = (*(v2 + 8) + **(v2 + 8));
    v4 = swift_task_alloc();
    *(v0 + 88) = v4;
    *v4 = v0;
    v4[1] = sub_1B8049920;
    v5 = *(v0 + 72);

    return v8(v5, v3, v2);
  }

  else
  {

    (*(v0 + 48))(0);
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1B8049920()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    swift_unknownObjectRelease();

    v2 = sub_1B8049A84;
  }

  else
  {

    swift_unknownObjectRelease();
    v2 = sub_1B800E41C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8049A84()
{
  v16 = v0;
  v1 = v0[12];
  if (qword_1EBA65AD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1EBA7AD10);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000022, 0x80000001B80CD290, &v15);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "%{public}s failed with: %@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = v0[6];
  v12 = v1;
  v11(v1);

  v13 = v0[1];

  return v13();
}

double sub_1B8049CF4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1B80C89DC();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v8;
  v16[5] = a3;
  v16[6] = a4;
  sub_1B7FC62D8(a1, a2);

  MEMORY[0x1B8CB72D0](a6, a7, 2, a8, v16);

  return result;
}

uint64_t sub_1B8049DC8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = *MEMORY[0x1E69E7D40] & *a3;
  return MEMORY[0x1EEE6DFA0](sub_1B8049E28, 0, 0);
}

uint64_t sub_1B8049E28()
{
  v13 = v0;
  sub_1B80C8CBC();
  swift_allocObject();
  sub_1B80C8CAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DE8, &qword_1B80D3A20);
  sub_1B7FDC3C8(&qword_1ED8DBB88, sub_1B7FDC440, MEMORY[0x1E69E6330]);
  sub_1B80C8C9C();

  v1 = v0[2];
  v0[9] = v1;
  if (qword_1EBA65AD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1EBA7AD10);

  v3 = sub_1B80C8FEC();
  v4 = sub_1B80C941C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12[0] = v6;
    *v5 = 136446466;
    *(v5 + 4) = sub_1B7FB84FC(0xD000000000000025, 0x80000001B80CD230, v12);
    *(v5 + 12) = 2080;
    v7 = MEMORY[0x1B8CB7B30](v1, &type metadata for Handle);
    v9 = sub_1B7FB84FC(v7, v8, v12);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_1B7FB5000, v3, v4, "%{public}s decodedHandles: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v6, -1, -1);
    MEMORY[0x1B8CB8970](v5, -1, -1);
  }

  v10 = v0[5];

  return MEMORY[0x1EEE6DFA0](sub_1B804A27C, v10, 0);
}

uint64_t sub_1B804A27C()
{
  *(v0 + 80) = swift_unknownObjectWeakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1B804A2EC, 0, 0);
}

uint64_t sub_1B804A2EC()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 64);
    v3 = *(v1 + 80);
    v2 = *(v1 + 88);
    v8 = (*(v2 + 16) + **(v2 + 16));
    v4 = swift_task_alloc();
    *(v0 + 88) = v4;
    *v4 = v0;
    v4[1] = sub_1B804A460;
    v5 = *(v0 + 72);

    return v8(v5, v3, v2);
  }

  else
  {

    (*(v0 + 48))(0);
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1B804A460()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    swift_unknownObjectRelease();

    v2 = sub_1B804A5C4;
  }

  else
  {

    swift_unknownObjectRelease();
    v2 = sub_1B804E038;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B804A5C4()
{
  v16 = v0;
  v1 = v0[12];
  if (qword_1EBA65AD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1EBA7AD10);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000025, 0x80000001B80CD230, &v15);
    *(v6 + 12) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "%{public}s failed with: %@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = v0[6];
  v12 = v1;
  v11(v1);

  v13 = v0[1];

  return v13();
}

double sub_1B804A808(uint64_t a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v10 = _Block_copy(aBlock);
  v11 = a3;

  v12 = sub_1B80C8D3C();
  v14 = v13;

  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  a7(v12, v14, a6, v15);

  sub_1B7FC3CCC(v12, v14);

  return result;
}

double sub_1B804A8DC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B80C89DC();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v9[6] = v4;
  sub_1B7FC62D8(a1, a2);

  MEMORY[0x1B8CB72D0]("stewieServiceStateChanged(_:completion:)", 40, 2, &unk_1B80D3308, v9);

  return result;
}

uint64_t sub_1B804A9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v5[9] = *MEMORY[0x1E69E7D40] & *a5;
  sub_1B80C896C();
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B804AA80, 0, 0);
}

uint64_t sub_1B804AA80()
{
  v28 = v0;
  sub_1B7FC62D8(*(v0 + 32), *(v0 + 40));
  sub_1B80C895C();
  sub_1B804B6D0();
  sub_1B80C961C();
  if (*(v0 + 24))
  {
    if (qword_1EBA65AD0 != -1)
    {
      swift_once();
    }

    v1 = sub_1B80C900C();
    __swift_project_value_buffer(v1, qword_1EBA7AD10);
    v2 = sub_1B80C8FEC();
    v3 = sub_1B80C93FC();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_12;
    }

    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v27 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B7FB84FC(0xD000000000000028, 0x80000001B80CD1D0, &v27);
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s invalid state raw value", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CB8970](v5, -1, -1);
    v6 = v4;
LABEL_11:
    MEMORY[0x1B8CB8970](v6, -1, -1);
LABEL_12:

    v13 = *(v0 + 48);
    sub_1B8010040();
    v14 = swift_allocError();
    *v15 = 0;
    v13();

    v16 = *(v0 + 8);

    return v16();
  }

  v7 = *(v0 + 16);
  SecureLocationsStewie.ServiceState.init(rawValue:)(v7);
  v8 = v27;
  *(v0 + 27) = v27;
  if (v8 == 10)
  {
    if (qword_1EBA65AD0 != -1)
    {
      swift_once();
    }

    v9 = sub_1B80C900C();
    __swift_project_value_buffer(v9, qword_1EBA7AD10);
    v2 = sub_1B80C8FEC();
    v10 = sub_1B80C93FC();
    if (!os_log_type_enabled(v2, v10))
    {
      goto LABEL_12;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136446466;
    *(v11 + 4) = sub_1B7FB84FC(0xD000000000000028, 0x80000001B80CD1D0, &v27);
    *(v11 + 12) = 2050;
    *(v11 + 14) = v7;
    _os_log_impl(&dword_1B7FB5000, v2, v10, "%{public}s unknown state: %{public}ld", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1B8CB8970](v12, -1, -1);
    v6 = v11;
    goto LABEL_11;
  }

  if (qword_1EBA65AD0 != -1)
  {
    swift_once();
  }

  v18 = sub_1B80C900C();
  *(v0 + 88) = __swift_project_value_buffer(v18, qword_1EBA7AD10);
  v19 = sub_1B80C8FEC();
  v20 = sub_1B80C941C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27 = v22;
    *v21 = 136446466;
    *(v21 + 4) = sub_1B7FB84FC(0xD000000000000028, 0x80000001B80CD1D0, &v27);
    *(v21 + 12) = 2082;
    *(v0 + 26) = v8;
    v23 = sub_1B80C90EC();
    v25 = sub_1B7FB84FC(v23, v24, &v27);

    *(v21 + 14) = v25;
    _os_log_impl(&dword_1B7FB5000, v19, v20, "%{public}s state: %{public}s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v22, -1, -1);
    MEMORY[0x1B8CB8970](v21, -1, -1);
  }

  v26 = *(v0 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1B804AF48, v26, 0);
}

uint64_t sub_1B804AF48()
{
  *(v0 + 96) = swift_unknownObjectWeakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1B804AFB8, 0, 0);
}

uint64_t sub_1B804AFB8()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 72);
    *(v0 + 25) = *(v0 + 27);
    v3 = *(v1 + 80);
    v2 = *(v1 + 88);
    v7 = (*(v2 + 24) + **(v2 + 24));
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_1B804B144;

    return v7(v0 + 25, v3, v2);
  }

  else
  {
    (*(v0 + 48))(0);

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1B804B144()
{
  *(*v1 + 112) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
    v2 = sub_1B804B2E4;
  }

  else
  {
    v2 = sub_1B804B274;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B804B274()
{
  (*(v0 + 48))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B804B2E4()
{
  v17 = v0;
  v1 = v0[14];
  v2 = v1;
  v3 = sub_1B80C8FEC();
  v4 = sub_1B80C93FC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[14];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000028, 0x80000001B80CD1D0, &v16);
    *(v6 + 12) = 2112;
    v9 = v5;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v10;
    *v7 = v10;
    _os_log_impl(&dword_1B7FB5000, v3, v4, "%{public}s failed with: %@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = v0[14];
  v12 = v0[6];
  v13 = v11;
  v12(v11);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1B804B554(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66128, &qword_1B80D31B0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B7FC253C;

  return sub_1B8047138(a1, v7, v8, v9, v1 + v6, v10);
}

unint64_t sub_1B804B6D0()
{
  result = qword_1EBA66130;
  if (!qword_1EBA66130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66130);
  }

  return result;
}

uint64_t sub_1B804B76C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66138, &qword_1B80D31C8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B7FC253C;

  return sub_1B8046310(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_1B804B954(uint64_t a1)
{
  v2 = type metadata accessor for SecureLocationsStewie.PublishResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B804B9F8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66138, &qword_1B80D31C8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B7FBA3EC;

  return sub_1B80454E8(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t objectdestroy_20Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v7 + 8, v5 | 7);
}

uint64_t sub_1B804BC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5) - 8);
  v11 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v12 = *(v6 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a6(a1, a2, a3, v6 + v11, v12);
}

uint64_t sub_1B804BD18(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1B7FC253C;

  return sub_1B8044DC8(a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_1B804BEA0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1B7FC253C;

  return sub_1B80446A8(a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_1B804C028(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1B7FC253C;

  return sub_1B8043F88(a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_1B804C1B0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66148, &qword_1B80D3220) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1B7FC253C;

  return sub_1B80437A4(a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_1B804C304(uint64_t a1, unint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66148, &qword_1B80D3220);

  return sub_1B8043ECC(a1, a2, a3);
}

uint64_t sub_1B804C3EC(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66148, &qword_1B80D3220) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1B7FC253C;

  return sub_1B8042FB8(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1B804C5D4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B7FC62D8(result, a2);
  }

  return result;
}

uint64_t sub_1B804C630(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66148, &qword_1B80D3220) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1B7FC253C;

  return sub_1B8042638(a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_1B804C7B8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66148, &qword_1B80D3220) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1B7FC253C;

  return sub_1B8041F10(a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_1B804C944(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1B7FC253C;

  return sub_1B80417F0(a1, v7, v8, v9, v1 + v6);
}

uint64_t objectdestroy_121Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v4 + 8))(v2 + v6, v3);
  sub_1B7FC3CCC(*(v2 + v7), *(v2 + v7 + 8));

  return MEMORY[0x1EEE6BDD0](v2, ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v5 | 7);
}

uint64_t sub_1B804CBC8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1B7FC253C;

  return sub_1B804109C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1B804CD84(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66148, &qword_1B80D3220) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1B7FC253C;

  return sub_1B8040974(a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_1B804CED0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B7FC253C;

  return sub_1B8035C04(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1B804CFBC()
{
  result = qword_1EBA66150;
  if (!qword_1EBA66150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66150);
  }

  return result;
}

uint64_t sub_1B804D0A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B804D108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B804D16C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ClientID(0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1B7FC253C;

  return sub_1B8039B78(a1, v7, v8, v9, v10, v1 + v6, v11);
}

unint64_t sub_1B804D2AC()
{
  result = qword_1ED8DBC28;
  if (!qword_1ED8DBC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA66110, &qword_1B80D2FD0);
    sub_1B7FDC440();
    sub_1B7FCD1B8(&qword_1ED8DBC38, type metadata accessor for Location, &protocol conformance descriptor for Location);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBC28);
  }

  return result;
}

uint64_t objectdestroy_240Tm()
{
  v1 = (type metadata accessor for ClientID(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_1B80C8E9C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v3, v5);

  v8 = v1[9];
  if (!(*(v6 + 48))(v0 + v3 + v8, 1, v5))
  {
    v7(v0 + v3 + v8, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1B804D514(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ClientID(0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1B7FC253C;

  return sub_1B8038D28(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_1B804D660(uint64_t a1)
{
  v3 = *(type metadata accessor for ClientID(0) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + v4 + *(v3 + 64));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B7FC253C;

  return sub_1B8037FB0(a1, v5, v6, v7, v8, v9, v1 + v4, v10);
}

uint64_t sub_1B804D7C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B7FC253C;

  return sub_1B804A9B0(v2, v3, v4, v5, v6);
}

uint64_t sub_1B804D880()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B7FC253C;

  return sub_1B8049DC8(v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_295Tm()
{
  sub_1B7FC3CCC(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B804D984()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B7FC253C;

  return sub_1B80492A0(v2, v3, v4, v5, v6);
}

uint64_t sub_1B804DA88(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1B7FC253C;

  return sub_1B8047D28(a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_1B804DBD4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ClientID(0) - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1B7FC253C;

  return sub_1B803BCFC(a1, v7, v8, v9, v10, v11, v1 + v6, v12);
}

uint64_t sub_1B804DD30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B7FC253C;

  return sub_1B803ACE8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1B804DE18(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ClientID(0) - 8);
  v6 = (*(v5 + 80) + 101) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1B7FC253C;

  return sub_1B8036D08(a1, v7, v8, v9, v10, (v1 + 6), v1 + v6, v11);
}

unint64_t sub_1B804DF5C()
{
  result = qword_1ED8DC198;
  if (!qword_1ED8DC198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC198);
  }

  return result;
}

uint64_t Session.refreshLocation(for:priority:clientID:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 56) = a3;
  *(v4 + 64) = v3;
  *(v4 + 48) = a1;
  *(v4 + 98) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1B804E104, 0, 0);
}

uint64_t sub_1B804E104()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1B804E1A0;

  return sub_1B7FC225C();
}

uint64_t sub_1B804E1A0()
{

  return MEMORY[0x1EEE6DFA0](sub_1B804E29C, 0, 0);
}

uint64_t sub_1B804E29C()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 104);
  v3 = *(v1 + 88);
  *(v0 + 16) = *(v1 + 80);
  LOBYTE(v1) = *(v0 + 98);
  *(v0 + 24) = v3;
  *(v0 + 40) = v2;
  *(v0 + 96) = v1;
  *(v0 + 97) = 3;

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1B804E390;
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);

  return sub_1B801C9B8(v0 + 16, v5, v6, (v0 + 96), 0, (v0 + 97));
}

uint64_t sub_1B804E390(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B804E4F0, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t Session.forceRefreshLocation(for:clientID:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B804E52C, 0, 0);
}

uint64_t sub_1B804E52C()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1B804E5C8;

  return sub_1B7FC225C();
}

uint64_t sub_1B804E5C8()
{

  return MEMORY[0x1EEE6DFA0](sub_1B804E6C4, 0, 0);
}

uint64_t sub_1B804E6C4()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 104);
  v3 = *(v1 + 88);
  *(v0 + 16) = *(v1 + 80);
  *(v0 + 24) = v3;
  *(v0 + 40) = v2;
  *(v0 + 96) = 257;

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1B804E7A4;
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);

  return sub_1B801C9B8(v0 + 16, v5, v6, (v0 + 96), 0, (v0 + 97));
}

uint64_t sub_1B804E7A4(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B804E4F0, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t Session.startRanging(to:)(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B804E92C, 0, 0);
}

uint64_t sub_1B804E92C()
{
  v4 = v0;
  v3 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *v1 = v0;
  v1[1] = sub_1B804E9CC;

  return sub_1B7FC225C();
}

uint64_t sub_1B804E9CC()
{

  return MEMORY[0x1EEE6DFA0](sub_1B804EAC8, 0, 0);
}

uint64_t sub_1B804EAC8()
{
  v1 = *(v0 + 200);
  v3 = v1[1];
  v2 = v1[2];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  v4 = v1[6];
  v6 = v1[3];
  v5 = v1[4];
  *(v0 + 96) = v1[5];
  *(v0 + 112) = v4;
  *(v0 + 64) = v6;
  *(v0 + 80) = v5;
  v7 = v1[10];
  v9 = v1[7];
  v8 = v1[8];
  *(v0 + 160) = v1[9];
  *(v0 + 176) = v7;
  *(v0 + 128) = v9;
  *(v0 + 144) = v8;
  v10 = swift_task_alloc();
  *(v0 + 224) = v10;
  *v10 = v0;
  v10[1] = sub_1B804EB98;
  v11 = *(v0 + 192);

  return sub_1B7FF2A0C(v11, (v0 + 16));
}

uint64_t sub_1B804EB98()
{
  v2 = *v1;
  *(v2 + 232) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B804ECCC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t Session.startOwnerRanging()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B804ED04, 0, 0);
}

uint64_t sub_1B804ED04()
{
  v4 = v0;
  v3 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B804EDA4;

  return sub_1B7FC225C();
}

uint64_t sub_1B804EDA4()
{

  return MEMORY[0x1EEE6DFA0](sub_1B804EEA0, 0, 0);
}

uint64_t sub_1B804EEA0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FCE7A0;
  v2 = *(v0 + 16);

  return sub_1B7FF30A4(v2);
}

uint64_t sub_1B804EF5C()
{
  v4 = v0;
  v3 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B804EFFC;

  return sub_1B7FC225C();
}

uint64_t sub_1B804EFFC()
{

  return MEMORY[0x1EEE6DFA0](sub_1B804F0F8, 0, 0);
}

uint64_t sub_1B804F0F8()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B8048BB0;

  return sub_1B7FFA214();
}

uint64_t sub_1B804F1AC()
{
  v4 = v0;
  v3 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B804F24C;

  return sub_1B7FC225C();
}

uint64_t sub_1B804F24C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B804F348, 0, 0);
}

uint64_t sub_1B804F348()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B804FA0C;

  return sub_1B7FFB848();
}

uint64_t Session.removePeerToken(for:)(uint64_t a1)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B804F3FC, 0, 0);
}

uint64_t sub_1B804F3FC()
{
  v4 = v0;
  v3 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_1B804F49C;

  return sub_1B7FC225C();
}

uint64_t sub_1B804F49C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B804F598, 0, 0);
}

uint64_t sub_1B804F598()
{
  v1 = *(v0 + 192);
  v3 = v1[1];
  v2 = v1[2];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  v4 = v1[6];
  v6 = v1[3];
  v5 = v1[4];
  *(v0 + 96) = v1[5];
  *(v0 + 112) = v4;
  *(v0 + 64) = v6;
  *(v0 + 80) = v5;
  v7 = v1[10];
  v9 = v1[7];
  v8 = v1[8];
  *(v0 + 160) = v1[9];
  *(v0 + 176) = v7;
  *(v0 + 128) = v9;
  *(v0 + 144) = v8;
  v10 = swift_task_alloc();
  *(v0 + 216) = v10;
  *v10 = v0;
  v10[1] = sub_1B804F664;

  return sub_1B7FFC1EC((v0 + 16));
}

uint64_t sub_1B804F664()
{
  v2 = *v1;
  *(v2 + 224) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B804F798, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t Session.requestOwnerToken(force:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B804F7D4, 0, 0);
}

uint64_t sub_1B804F7D4()
{
  v4 = v0;
  v3 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B804F874;

  return sub_1B7FC225C();
}

uint64_t sub_1B804F874()
{

  return MEMORY[0x1EEE6DFA0](sub_1B804F970, 0, 0);
}

uint64_t sub_1B804F970()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B804FA0C;
  v2 = *(v0 + 40);

  return sub_1B7FFCFA4(v2);
}

uint64_t sub_1B804FA10()
{
  sub_1B804FB98(v0 + 112);
  sub_1B7FB86D4(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_serviceDescription, &qword_1EBA65EA0, &qword_1B80D23B0);

  sub_1B7FBE244(*(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_disconnectionHandler), *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_disconnectionHandler + 8));
  sub_1B804FBC0(*(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDevice), *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDevice + 8), *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDevice + 16), *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDevice + 24), *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDevice + 32), *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDevice + 40));
  sub_1B7FB86D4(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDeviceContinuation, &qword_1EBA66180, &qword_1B80D35B0);
  sub_1B7FB86D4(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_preferenceContinuation, &qword_1EBA66188, &qword_1B80D35B8);
  swift_weakDestroy();
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B804FB24()
{
  v3 = *(v0 + 8);

  return v3(v1);
}

void sub_1B804FBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t sub_1B804FC10(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA661C0, &qword_1B80D3630);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B804FD04, v1, 0);
}

uint64_t sub_1B804FD04()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = swift_task_alloc();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1B80C934C();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B804FDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66180, &qword_1B80D35B0);
  v5[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B804FE98, a4, 0);
}

uint64_t sub_1B804FE98()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66170, &qword_1B80D3508);
  v5 = *(v4 - 8);
  (*(v5 + 16))(v2, v1, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDeviceContinuation;
  swift_beginAccess();
  sub_1B7FF450C(v2, v3 + v6, &qword_1EBA66180, &qword_1B80D35B0);
  swift_endAccess();
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1B8050004;

  return sub_1B8052280();
}

uint64_t sub_1B8050004()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[6];

    return MEMORY[0x1EEE6DFA0](sub_1B8050140, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1B8050140()
{
  v17 = v0;
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD000000000000032, 0x80000001B80CD450, &v16);
    *(v8 + 12) = 2082;
    v0[5] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    v11 = sub_1B80C90EC();
    v13 = sub_1B7FB84FC(v11, v12, &v16);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "%{public}s error: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v9, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1B8050354(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA661B8, &qword_1B80D3610);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8050448, v1, 0);
}

uint64_t sub_1B8050448()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = swift_task_alloc();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1B80C934C();

  v7 = v0[1];

  return v7();
}

double sub_1B805053C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v23 - v16;
  v18 = sub_1B80C92CC();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v11 + 16))(v14, a1, v10);
  v19 = sub_1B8051EF4();
  v20 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = a2;
  *(v21 + 3) = v19;
  *(v21 + 4) = a2;
  (*(v11 + 32))(&v21[v20], v14, v10);
  *&v21[(v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8] = a3;
  swift_retain_n();
  sub_1B80A1D3C(0, 0, v17, v24, v21);

  return result;
}

uint64_t sub_1B8050740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66188, &qword_1B80D35B8);
  v5[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B80507E0, a4, 0);
}

uint64_t sub_1B80507E0()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66178, &qword_1B80D3510);
  v5 = *(v4 - 8);
  (*(v5 + 16))(v2, v1, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_preferenceContinuation;
  swift_beginAccess();
  sub_1B7FF450C(v2, v3 + v6, &qword_1EBA66188, &qword_1B80D35B8);
  swift_endAccess();
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1B805094C;

  return sub_1B8052280();
}

uint64_t sub_1B805094C()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[6];

    return MEMORY[0x1EEE6DFA0](sub_1B8050A88, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1B8050A88()
{
  v17 = v0;
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_1B7FB84FC(0xD000000000000022, 0x80000001B80CD420, &v16);
    *(v8 + 12) = 2082;
    v0[5] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    v11 = sub_1B80C90EC();
    v13 = sub_1B7FB84FC(v11, v12, &v16);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "%{public}s error: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v9, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1B8050C9C()
{
  v1[8] = v0;
  v1[9] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66188, &qword_1B80D35B8);
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66180, &qword_1B80D35B0);
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8050D98, v0, 0);
}

uint64_t sub_1B8050D98()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDeviceContinuation;
  swift_beginAccess();
  sub_1B7FB8448(v2 + v3, v1, &qword_1EBA66180, &qword_1B80D35B0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66170, &qword_1B80D3508);
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_1B7FB86D4(v1, &qword_1EBA66180, &qword_1B80D35B0);
  if (v2 == 1 && (v5 = v0[10], v6 = v0[8], v7 = OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_preferenceContinuation, swift_beginAccess(), sub_1B7FB8448(v6 + v7, v5, &qword_1EBA66188, &qword_1B80D35B8), v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66178, &qword_1B80D3510), LODWORD(v6) = (*(*(v8 - 8) + 48))(v5, 1, v8), sub_1B7FB86D4(v5, &qword_1EBA66188, &qword_1B80D35B8), v6 == 1))
  {

    v9 = v0[1];

    return v9();
  }

  else
  {
    v12 = v0[8];
    v11 = v0[9];
    v13 = swift_task_alloc();
    v0[12] = v13;
    *(v13 + 16) = v12;
    *(v13 + 24) = v11;
    v14 = swift_task_alloc();
    v0[13] = v14;
    *v14 = v0;
    v14[1] = sub_1B7FEA0D0;
    v15 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE04418](v14, 0xD00000000000002BLL, 0x80000001B80CD490, sub_1B8052214, v13, v15);
  }
}

uint64_t sub_1B8051038(uint64_t a1)
{
  *(v2 + 376) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA661A0, &qword_1B80D35F8);
  *(v2 + 384) = v4;
  *(v2 + 392) = *(v4 - 8);
  *(v2 + 400) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66188, &qword_1B80D35B8);
  *(v2 + 408) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66178, &qword_1B80D3510);
  *(v2 + 416) = v5;
  *(v2 + 424) = *(v5 - 8);
  *(v2 + 432) = swift_task_alloc();
  v6 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v6;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 61) = *(a1 + 45);

  return MEMORY[0x1EEE6DFA0](sub_1B80511C0, v1, 0);
}

uint64_t sub_1B80511C0()
{
  v48 = v0;
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDEE8);
  sub_1B8051DAC(v0 + 16, v0 + 72);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  sub_1B8051E08(v0 + 16);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v44 = v5;
    *v4 = 136446466;
    *(v4 + 4) = sub_1B7FB84FC(0xD000000000000016, 0x80000001B80CD400, &v44);
    *(v4 + 12) = 2080;
    v6 = *(v0 + 32);
    v45 = *(v0 + 16);
    v46 = v6;
    *v47 = *(v0 + 48);
    *&v47[13] = *(v0 + 61);
    sub_1B8051DAC(v0 + 16, v0 + 296);
    v7 = PreferenceStreamChange.description.getter();
    v9 = v8;
    v10 = v46;
    *(v0 + 240) = v45;
    *(v0 + 256) = v10;
    *(v0 + 272) = *v47;
    *(v0 + 285) = *&v47[13];
    sub_1B8051E08(v0 + 240);
    v11 = sub_1B7FB84FC(v7, v9, &v44);

    *(v4 + 14) = v11;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s with: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  if (!*(v0 + 68))
  {
    v12 = *(v0 + 376);
    v13 = *(v0 + 64);
    v15 = *(v0 + 48);
    v14 = *(v0 + 56);
    v17 = *(v0 + 32);
    v16 = *(v0 + 40);
    v18 = *(v0 + 24);
    *&v45 = *(v0 + 16);
    v19 = v45;
    *(&v45 + 1) = v18;
    *&v46 = v17;
    *(&v46 + 1) = v16;
    *v47 = v15;
    *&v47[8] = v14;
    *&v47[16] = v13;
    sub_1B8051638(&v45);
    v20 = v12 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDevice;
    v21 = *(v12 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDevice);
    v42 = *(v20 + 16);
    v43 = *(v20 + 8);
    v41 = *(v20 + 24);
    v39 = *(v20 + 40);
    v40 = *(v20 + 32);
    *v20 = v19;
    *(v20 + 8) = v18;
    *(v20 + 16) = v17;
    *(v20 + 24) = v16;
    *(v20 + 32) = v15;
    *(v20 + 40) = v14;
    *(v20 + 48) = v13;
    sub_1B8051E5C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
    sub_1B804FBC0(v21, v43, v42, v41, v40, v39);
  }

  v23 = *(v0 + 416);
  v22 = *(v0 + 424);
  v24 = *(v0 + 408);
  v25 = *(v0 + 376);
  v26 = OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_preferenceContinuation;
  swift_beginAccess();
  sub_1B7FB8448(v25 + v26, v24, &qword_1EBA66188, &qword_1B80D35B8);
  if ((*(v22 + 48))(v24, 1, v23) == 1)
  {
    sub_1B7FB86D4(*(v0 + 408), &qword_1EBA66188, &qword_1B80D35B8);
    v27 = sub_1B80C8FEC();
    v28 = sub_1B80C93FC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1B7FB5000, v27, v28, "Missing preferenceContinuation!", v29, 2u);
      MEMORY[0x1B8CB8970](v29, -1, -1);
    }
  }

  else
  {
    v31 = *(v0 + 424);
    v30 = *(v0 + 432);
    v32 = *(v0 + 416);
    v34 = *(v0 + 392);
    v33 = *(v0 + 400);
    v35 = *(v0 + 384);
    (*(v31 + 32))(v30, *(v0 + 408), v32);
    v36 = *(v0 + 32);
    *(v0 + 128) = *(v0 + 16);
    *(v0 + 144) = v36;
    *(v0 + 160) = *(v0 + 48);
    *(v0 + 173) = *(v0 + 61);
    sub_1B8051DAC(v0 + 16, v0 + 184);
    sub_1B80C92EC();
    (*(v34 + 8))(v33, v35);
    (*(v31 + 8))(v30, v32);
  }

  v37 = *(v0 + 8);

  return v37();
}

void sub_1B8051638(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA661A8, &qword_1B80D3600);
  v61 = *(v3 - 1);
  v62 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v60 = &v54[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66180, &qword_1B80D35B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v54[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66170, &qword_1B80D3508);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v54[-v10];
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 24);
  v63 = *(a1 + 16);
  v64 = v14;
  v15 = *(a1 + 40);
  v66 = *(a1 + 32);
  v67 = v15;
  v65 = *(a1 + 48);
  v16 = OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDeviceContinuation;
  swift_beginAccess();
  sub_1B7FB8448(v1 + v16, v7, &qword_1EBA66180, &qword_1B80D35B0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1B7FB86D4(v7, &qword_1EBA66180, &qword_1B80D35B0);
    if (qword_1ED8DD790 != -1)
    {
      swift_once();
    }

    v17 = sub_1B80C900C();
    __swift_project_value_buffer(v17, qword_1ED8DDEE8);
    v18 = v12;
    v19 = v13;
    v20 = v12;
    v22 = v63;
    v21 = v64;
    v24 = v66;
    v23 = v67;
    v25 = v65;
    sub_1B8051E5C(v18, v19, v63, v64, v66, v67);
    v26 = sub_1B80C8FEC();
    v27 = sub_1B80C93FC();
    sub_1B804FBC0(v20, v19, v22, v21, v24, v23);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v75 = v62;
      *v28 = 136315138;
      v68 = v20;
      v69 = v19;
      v70 = v22;
      v71 = v21;
      v72 = v24;
      v73 = v23;
      v74 = v25;
      sub_1B8051E5C(v20, v19, v22, v21, v24, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA661B0, &qword_1B80D66C0);
      v29 = sub_1B80C90EC();
      v31 = sub_1B7FB84FC(v29, v30, &v75);

      *(v28 + 4) = v31;
      _os_log_impl(&dword_1B7FB5000, v26, v27, "Missing meDeviceCountinuation for %s", v28, 0xCu);
      v32 = v62;
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x1B8CB8970](v32, -1, -1);
      MEMORY[0x1B8CB8970](v28, -1, -1);
    }
  }

  else
  {
    v58 = v9;
    v33 = *(v9 + 32);
    v57 = v11;
    v33(v11, v7, v8);
    if (qword_1ED8DD790 != -1)
    {
      swift_once();
    }

    v34 = sub_1B80C900C();
    __swift_project_value_buffer(v34, qword_1ED8DDEE8);
    v35 = v12;
    v36 = v13;
    v37 = v12;
    v39 = v63;
    v38 = v64;
    v41 = v66;
    v40 = v67;
    v42 = v65;
    sub_1B8051E5C(v35, v36, v63, v64, v66, v67);
    v43 = sub_1B80C8FEC();
    v44 = sub_1B80C941C();
    sub_1B804FBC0(v37, v36, v39, v38, v41, v40);
    v59 = v43;
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v55 = v44;
      v56 = v46;
      v75 = v46;
      *v45 = 136315138;
      v68 = v37;
      v69 = v36;
      v70 = v39;
      v71 = v38;
      v72 = v41;
      v73 = v40;
      v74 = v42;
      sub_1B8051E5C(v37, v36, v39, v38, v41, v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA661B0, &qword_1B80D66C0);
      v47 = sub_1B80C90EC();
      v49 = sub_1B7FB84FC(v47, v48, &v75);
      v40 = v67;

      *(v45 + 4) = v49;
      v41 = v66;
      v50 = v45;
      _os_log_impl(&dword_1B7FB5000, v59, v55, "meDeviceUpdated: %s", v45, 0xCu);
      v51 = v56;
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x1B8CB8970](v51, -1, -1);
      MEMORY[0x1B8CB8970](v50, -1, -1);
    }

    v52 = v57;
    v68 = v37;
    v69 = v36;
    v70 = v39;
    v71 = v38;
    v72 = v41;
    v73 = v40;
    v74 = v42;
    sub_1B8051E5C(v37, v36, v39, v38, v41, v40);
    v53 = v60;
    sub_1B80C92EC();
    (*(v61 + 8))(v53, v62);
    (*(v58 + 8))(v52, v8);
  }
}

uint64_t sub_1B8051C94(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8051CB4, v1, 0);
}

uint64_t sub_1B8051CB4()
{
  sub_1B8051638(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8051D18(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B7FBA3EC;

  return sub_1B8051038(a1);
}

double sub_1B8051E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1B8051EF4()
{
  result = qword_1ED8DD538;
  if (!qword_1ED8DD538)
  {
    _s18SettingsConnectionCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD538);
  }

  return result;
}

uint64_t sub_1B8051F4C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66178, &qword_1B80D3510) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1B7FBA3EC;

  return sub_1B8050740(a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_1B80520D4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66170, &qword_1B80D3508) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1B7FC253C;

  return sub_1B804FDF8(a1, v7, v8, v9, v1 + v6);
}

void sub_1B805221C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1B80C8CFC();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1B8052280()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B80522C8, v0, 0);
}

uint64_t sub_1B80522C8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1B7FFA350;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v4, 0xD00000000000002BLL, 0x80000001B80CD490, sub_1B805C98C, v3, v5);
}

uint64_t sub_1B80523B4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B8052400, v2, 0);
}

uint64_t sub_1B8052400()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v7 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v7;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1B801A858;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v4, 0xD000000000000022, 0x80000001B80CD620, sub_1B805C944, v3, v5);
}

double sub_1B8052508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16 - v11;
  v13 = sub_1B80C92CC();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a2;
  v14[5] = a1;
  v14[6] = a3;
  v14[7] = a4;
  v14[8] = a5;

  sub_1B80A1D3C(0, 0, v12, &unk_1B80D3800, v14);

  return result;
}

uint64_t sub_1B805264C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B8052674, 0, 0);
}

uint64_t sub_1B8052674()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = swift_allocObject();
  v0[15] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[16] = v4;
  v5 = _s18SettingsConnectionCMa(0);
  v6 = sub_1B805B74C();
  *v4 = v0;
  v4[1] = sub_1B805277C;

  return MEMORY[0x1EEE04428](v0 + 8, sub_1B805C4BC, v3, v5, v6);
}

uint64_t sub_1B805277C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1B80529F8;
  }

  else
  {

    v2 = sub_1B8052898;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8052898()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 64);
  v9 = *(v0 + 104);
  v4 = sub_1B80C90AC();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v9;
  *(v0 + 48) = sub_1B805C4C4;
  *(v0 + 56) = v5;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FCE114;
  *(v0 + 40) = &block_descriptor_152;
  v6 = _Block_copy((v0 + 16));

  [v3 setActiveLocationSharingDevice:v4 completion:v6];
  _Block_release(v6);

  swift_unknownObjectRelease();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B80529F8()
{
  v14 = v0;

  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v1 = v0[17];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000022, 0x80000001B80CD620, &v13);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v10 = v0[17];
  v0[9] = v10;
  sub_1B80C8ACC();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1B8052C00(void *a1)
{
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000022, 0x80000001B80CD620, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

void sub_1B8052DC0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    v13 = a1;
    v5 = a1;
    sub_1B80C8ACC();
  }

  else
  {
    sub_1B80C8AEC();
    if (qword_1ED8DD790 != -1)
    {
      swift_once();
    }

    v8 = sub_1B80C900C();
    __swift_project_value_buffer(v8, qword_1ED8DDEE8);

    oslog = sub_1B80C8FEC();
    v9 = sub_1B80C941C();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1B7FB84FC(a3, a4, &v13);
      _os_log_impl(&dword_1B7FB5000, oslog, v9, "setActiveLocationSharingDevice succeeded: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1B8CB8970](v11, -1, -1);
      MEMORY[0x1B8CB8970](v10, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1B8052F64(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 56) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8052FB0, v1, 0);
}

uint64_t sub_1B8052FB0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_1B7FFAE34;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v5, 0xD000000000000017, 0x80000001B80CD600, sub_1B805C95C, v4, v6);
}

uint64_t sub_1B80530B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 88) = a5;
  *(v7 + 96) = a7;
  *(v7 + 128) = a6;
  *(v7 + 80) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B80530D8, 0, 0);
}

uint64_t sub_1B80530D8()
{
  v1 = swift_allocObject();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 88);

  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  v3 = _s18SettingsConnectionCMa(0);
  v4 = sub_1B805B74C();
  *v2 = v0;
  v2[1] = sub_1B80531DC;

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B805C3A0, v1, v3, v4);
}

uint64_t sub_1B80531DC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1B805342C;
  }

  else
  {

    v2 = sub_1B80532F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B80532F8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 64);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v3;
  *(v0 + 48) = sub_1B805C3A8;
  *(v0 + 56) = v5;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FCE114;
  *(v0 + 40) = &block_descriptor_136;
  v6 = _Block_copy((v0 + 16));

  [v4 setHideMyLocationWithHidden:v1 completion:v6];
  _Block_release(v6);
  swift_unknownObjectRelease();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B805342C()
{
  v14 = v0;

  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000017, 0x80000001B80CD600, &v13);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v10 = v0[15];
  v0[9] = v10;
  sub_1B80C8ACC();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1B8053634(void *a1)
{
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000017, 0x80000001B80CD600, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

uint64_t sub_1B80537F4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 56) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8053840, v1, 0);
}

uint64_t sub_1B8053840()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_1B7FFA350;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v5, 0xD000000000000021, 0x80000001B80CD5D0, sub_1B805C958, v4, v6);
}

uint64_t sub_1B8053940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 88) = a5;
  *(v7 + 96) = a7;
  *(v7 + 128) = a6;
  *(v7 + 80) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B8053968, 0, 0);
}

uint64_t sub_1B8053968()
{
  v1 = swift_allocObject();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 88);

  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  v3 = _s18SettingsConnectionCMa(0);
  v4 = sub_1B805B74C();
  *v2 = v0;
  v2[1] = sub_1B8053A6C;

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B805C254, v1, v3, v4);
}

uint64_t sub_1B8053A6C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1B8053CBC;
  }

  else
  {

    v2 = sub_1B8053B88;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B8053B88()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 64);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v3;
  *(v0 + 48) = sub_1B805C25C;
  *(v0 + 56) = v5;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FCE114;
  *(v0 + 40) = &block_descriptor_120;
  v6 = _Block_copy((v0 + 16));

  [v4 allowFriendshipRequestsWithAllowed:v1 completion:v6];
  _Block_release(v6);
  swift_unknownObjectRelease();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B8053CBC()
{
  v14 = v0;

  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000021, 0x80000001B80CD5D0, &v13);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v10 = v0[15];
  v0[9] = v10;
  sub_1B80C8ACC();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1B8053EC4(void *a1)
{
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000021, 0x80000001B80CD5D0, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

void sub_1B8054084(void *a1, uint64_t a2, char a3, uint64_t a4, const char *a5)
{
  if (a1)
  {
    v6 = a1;
    sub_1B80C8ACC();
  }

  else
  {
    sub_1B80C8AEC();
    if (qword_1ED8DD790 != -1)
    {
      swift_once();
    }

    v9 = sub_1B80C900C();
    __swift_project_value_buffer(v9, qword_1ED8DDEE8);
    oslog = sub_1B80C8FEC();
    v10 = sub_1B80C941C();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = a3 & 1;
      _os_log_impl(&dword_1B7FB5000, oslog, v10, a5, v11, 8u);
      MEMORY[0x1B8CB8970](v11, -1, -1);
    }
  }
}

uint64_t sub_1B80541C4(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B8054210, v2, 0);
}

uint64_t sub_1B8054210()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 64);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1B800B9CC;
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE04418](v6, 0xD000000000000024, 0x80000001B80CD5A0, sub_1B805C954, v4, &type metadata for Device);
}

uint64_t sub_1B8054314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 88) = a5;
  *(v7 + 96) = a7;
  *(v7 + 128) = a6;
  *(v7 + 80) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B805433C, 0, 0);
}

uint64_t sub_1B805433C()
{
  v1 = swift_allocObject();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 88);

  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  v3 = _s18SettingsConnectionCMa(0);
  v4 = sub_1B805B74C();
  *v2 = v0;
  v2[1] = sub_1B8054440;

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B805C07C, v1, v3, v4);
}

uint64_t sub_1B8054440()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1B8054690;
  }

  else
  {

    v2 = sub_1B805455C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B805455C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 64);
  v3 = swift_allocObject();
  *(v3 + 16) = *(v0 + 88);
  *(v0 + 48) = sub_1B805C084;
  *(v0 + 56) = v3;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FC5CCC;
  *(v0 + 40) = &block_descriptor_104;
  v4 = _Block_copy((v0 + 16));

  [v2 activeLocationSharingDeviceWithCached:v1 completion:v4];
  _Block_release(v4);
  swift_unknownObjectRelease();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B8054690()
{
  v14 = v0;

  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000024, 0x80000001B80CD5A0, &v13);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v10 = v0[15];
  v0[9] = v10;
  sub_1B80C8ACC();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1B8054898(void *a1)
{
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000024, 0x80000001B80CD5A0, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

void sub_1B8054A58(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    *&v32[0] = a3;
    v4 = a3;
LABEL_5:
    sub_1B80C8ACC();

    return;
  }

  if (a2 >> 60 == 15)
  {
    sub_1B8010040();
    v3 = swift_allocError();
    *v5 = 1;
    *&v32[0] = v3;
    goto LABEL_5;
  }

  sub_1B80C8CBC();
  swift_allocObject();
  sub_1B7FC62D8(a1, a2);
  sub_1B80C8CAC();
  sub_1B805B96C();
  v8 = a1;
  v9 = a2;
  sub_1B80C8C9C();

  v28 = v32[0];
  v29 = v32[1];
  v30 = v32[2];
  v31 = v33;
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v10 = sub_1B80C900C();
  __swift_project_value_buffer(v10, qword_1ED8DDEE8);
  sub_1B805C08C(&v28, &v24);
  v11 = sub_1B80C8FEC();
  v12 = sub_1B80C941C();
  sub_1B805C0E8(&v28);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315138;
    v19 = v28;
    v20 = v29;
    v21 = v30;
    v22 = v31;
    sub_1B805C08C(&v28, &v24);
    v15 = Device.description.getter();
    v17 = v16;
    v24 = v19;
    v25 = v20;
    v26 = v21;
    v27 = v22;
    sub_1B805C0E8(&v24);
    v18 = sub_1B7FB84FC(v15, v17, &v23);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1B7FB5000, v11, v12, "activeLocationSharingDevice succeeded: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1B8CB8970](v14, -1, -1);
    MEMORY[0x1B8CB8970](v13, -1, -1);
  }

  v24 = v28;
  v25 = v29;
  v26 = v30;
  v27 = v31;
  sub_1B80C8ADC();
  sub_1B7FC72F8(v8, v9);
  sub_1B805C0E8(&v28);
}

uint64_t sub_1B8054D64(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8054DAC, v1, 0);
}

uint64_t sub_1B8054DAC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1B8000A0C;
  v5 = v0[2];

  return MEMORY[0x1EEE04418](v5, 0xD000000000000019, 0x80000001B80CD580, sub_1B805C994, v3, &type metadata for DeviceWithCompanion);
}

uint64_t sub_1B8054E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B8054EC0, 0, 0);
}

uint64_t sub_1B8054EC0()
{
  v1 = swift_allocObject();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 88);

  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  v3 = _s18SettingsConnectionCMa(0);
  v4 = sub_1B805B74C();
  *v2 = v0;
  v2[1] = sub_1B8054FC4;

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B805BE50, v1, v3, v4);
}

uint64_t sub_1B8054FC4()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1B8055204;
  }

  else
  {

    v2 = sub_1B80550E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B80550E0()
{
  v1 = *(v0 + 64);
  v2 = swift_allocObject();
  *(v2 + 16) = *(v0 + 88);
  *(v0 + 48) = sub_1B805BE58;
  *(v0 + 56) = v2;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FC5CCC;
  *(v0 + 40) = &block_descriptor_88;
  v3 = _Block_copy((v0 + 16));

  [v1 thisDeviceWithCompanionWithCompletion_];
  _Block_release(v3);
  swift_unknownObjectRelease();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B8055204()
{
  v14 = v0;

  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000019, 0x80000001B80CD580, &v13);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v10 = v0[15];
  v0[9] = v10;
  sub_1B80C8ACC();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1B805540C(void *a1)
{
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDEE8);
  v3 = a1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000019, 0x80000001B80CD580, &v11);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Proxy error in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = a1;
  return sub_1B80C8ACC();
}

void sub_1B80555CC(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    *&v31[0] = a3;
    v4 = a3;
LABEL_5:
    sub_1B80C8ACC();

    return;
  }

  if (a2 >> 60 == 15)
  {
    sub_1B8010040();
    v3 = swift_allocError();
    *v5 = 1;
    *&v31[0] = v3;
    goto LABEL_5;
  }

  sub_1B80C8CBC();
  swift_allocObject();
  sub_1B7FC62D8(a1, a2);
  sub_1B80C8CAC();
  sub_1B805BE60();
  v8 = a1;
  v9 = a2;
  sub_1B80C8C9C();

  v28 = v31[3];
  v29 = v31[4];
  v30[0] = v32[0];
  *(v30 + 12) = *(v32 + 12);
  v25 = v31[0];
  v26 = v31[1];
  v27 = v31[2];
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v10 = sub_1B80C900C();
  __swift_project_value_buffer(v10, qword_1ED8DDEE8);
  sub_1B805BEB4(&v25, &v19);
  v11 = sub_1B80C8FEC();
  v12 = sub_1B80C941C();
  sub_1B805BF10(&v25);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 136315138;
    v23 = v29;
    v24[0] = v30[0];
    *(v24 + 12) = *(v30 + 12);
    v19 = v25;
    v20 = v26;
    v18 = v14;
    v21 = v27;
    v22 = v28;
    v15 = DeviceWithCompanion.description.getter();
    v17 = sub_1B7FB84FC(v15, v16, &v18);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1B7FB5000, v11, v12, "thisDeviceWithCompanion succeeded: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1B8CB8970](v14, -1, -1);
    MEMORY[0x1B8CB8970](v13, -1, -1);
  }

  v23 = v29;
  v24[0] = v30[0];
  *(v24 + 12) = *(v30 + 12);
  v19 = v25;
  v20 = v26;
  v21 = v27;
  v22 = v28;
  sub_1B80C8ADC();
  sub_1B7FC72F8(v8, v9);
  sub_1B805BF10(&v25);
}