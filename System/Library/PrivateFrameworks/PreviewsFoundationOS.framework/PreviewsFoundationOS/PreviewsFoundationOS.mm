BOOL sub_25F1A3944(void *a1, uint64_t *a2)
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

uint64_t sub_25F1A39D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25F304E0C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25F1A3A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CrashReportError.Kind(0);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_25F1A3AD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CrashReportError.Kind(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimePeriod(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TimePeriod(uint64_t result, int a2, int a3)
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

uint64_t sub_25F1A3BD4(uint64_t a1, int a2)
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

uint64_t sub_25F1A3BF8()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A3C30()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A3C68()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_25F1A3CB8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_25F1A3D08()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A3D40()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A3D8C()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A3DD0()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A3E10()
{

  return swift_deallocObject();
}

__n128 sub_25F1A3EBC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

void sub_25F1A3EC8(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

__n128 sub_25F1A3FF8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_25F1A4088()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A40D0(void *a1, uint64_t a2)
{
  *(*a2 + 16) = *a1;
}

uint64_t sub_25F1A4114()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A4154()
{

  return swift_deallocObject();
}

__n128 sub_25F1A41D0(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_25F1A42B8()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A42F8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25F1A4310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for CrashReport(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_25F1A4388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for CrashReport(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_25F1A4408@<X0>(uint64_t *a1@<X8>)
{
  result = NSTask.standardOutputPipe.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25F1A4448@<X0>(uint64_t *a1@<X8>)
{
  result = NSTask.standardErrorPipe.getter();
  *a1 = result;
  return result;
}

uint64_t sub_25F1A4488()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53E20, &qword_25F30A570);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_25F1A451C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53E28, &qword_25F30A578);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_25F1A45D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 48);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_25F1A4620(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_25F1A4678(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_25F1A4684()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A46BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F3044DC();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F1A4728(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_25F3044DC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_25F1A47AC()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_25F1A4840()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A4878()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A48C0()
{

  return swift_deallocObject();
}

__n128 sub_25F1A490C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_25F1A4938()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_25F1A4970()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A49B8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v1 = sub_25F30542C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_25F1A4AB4()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A4AF4()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A4C3C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_25F1A4C7C()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A4CE0()
{
  sub_25F202498(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_25F1A4D20()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A4D68()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_25F1A4E08()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A4E64(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CrashReport(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25F1A4F10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CrashReport(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25F1A4FC4()
{
  MEMORY[0x25F8D9600](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_25F1A4FFC()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A5044()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_25F1A5120()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = *(v2 - 8);
  v6 = (v4 + *(v3 + 64) + *(v5 + 80)) & ~*(v5 + 80);

  (*(v3 + 8))(v0 + v4, v1);
  (*(v5 + 8))(v0 + v6, v2);

  return swift_deallocObject();
}

uint64_t sub_25F1A527C()
{
  v2 = *(v0 + 3);
  v1 = *(v0 + 4);
  v10 = *(v0 + 5);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v5 = *(v1 - 8);
  v6 = (v4 + *(v3 + 64) + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v10 - 8);
  v8 = (v6 + *(v5 + 64) + *(v7 + 80)) & ~*(v7 + 80);

  (*(v3 + 8))(&v0[v4], v2);
  (*(v5 + 8))(&v0[v6], v1);
  (*(v7 + 8))(&v0[v8], v10);

  return swift_deallocObject();
}

uint64_t sub_25F1A5460()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A54B8()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A54F0()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A5528()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_25F1A5604()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A563C()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A5674()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v5 = *(v2 - 8);
  v6 = (v4 + *(v3 + 64) + *(v5 + 80)) & ~*(v5 + 80);

  (*(v3 + 8))(v0 + v4, v1);
  (*(v5 + 8))(v0 + v6, v2);

  return swift_deallocObject();
}

uint64_t sub_25F1A57E0()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A5818()
{
  v2 = *(v0 + 4);
  v1 = *(v0 + 5);
  v10 = *(v0 + 6);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 88) & ~*(v3 + 80);
  v5 = *(v1 - 8);
  v6 = (v4 + *(v3 + 64) + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v10 - 8);
  v8 = (v6 + *(v5 + 64) + *(v7 + 80)) & ~*(v7 + 80);

  (*(v3 + 8))(&v0[v4], v2);
  (*(v5 + 8))(&v0[v6], v1);
  (*(v7 + 8))(&v0[v8], v10);

  return swift_deallocObject();
}

uint64_t sub_25F1A5A0C()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A5A44()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A5A7C()
{

  return swift_deallocObject();
}

double sub_25F1A5BE4@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *a1 + *v2;
  *a2 = result;
  return result;
}

uint64_t sub_25F1A5BFC()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x25F8D8900](*&v1);
}

uint64_t sub_25F1A5C8C()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A5CCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F30498C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25F1A5D38(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F30498C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25F1A5DB8()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A5DF0()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A5E30()
{
  v1 = sub_25F30542C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_25F1A5ED0()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A5F08()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A5F40()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A5F8C()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A5FD4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_25F1A605C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CrashReport(0);
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

uint64_t sub_25F1A611C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CrashReport(0);
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

uint64_t sub_25F1A61D8()
{
  v1 = *(v0 + 48);
  v6[0] = *(v0 + 32);
  v6[1] = v1;
  type metadata accessor for ConcurrentInvalidatableCache.InvalidationEvent(255, v6);
  v2 = sub_25F30552C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v2);
  return swift_deallocObject();
}

uint64_t sub_25F1A62C0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_25F1A62F8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_25F1A63B4()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A63F4()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_25F1A6498()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_25F1A64D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(**(*a1 + 16) + 80))();
  v5 = v4;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v5;
  *a2 = sub_25F22DFC8;
  a2[1] = result;
  return result;
}

uint64_t sub_25F1A6564()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A659C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_25F1A65D4()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A660C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_25F22DFC8;
  a2[1] = v5;
}

__n128 sub_25F1A6688(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_25F1A66A8()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A66E8()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A672C()
{

  return swift_deallocObject();
}

__n128 sub_25F1A681C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_25F1A6868()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_25F1A68F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450);
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
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_25F1A69C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55BF8, &qword_25F30F450);
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
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25F1A6A90(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F30462C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25F1A6AFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F30462C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25F1A6B6C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_25F30462C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_25F1A6C18(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_25F30462C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25F1A6CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F1A6D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_25F30574C();
}

uint64_t sub_25F1A6DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F1A6E3C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  v5 = *a1;
  v6 = type metadata accessor for WeakArray(0, *(a1 + a2 - 8), a2, a4);
  result = WeakArray.subscript.getter(v5, v6, v7, v8);
  *a3 = result;
  return result;
}

uint64_t sub_25F1A6EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_25F3054DC();
  v6 = *(*(v5 - 8) + 48);

  return v6(a1, a2, v5);
}

uint64_t sub_25F1A6F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_25F3054DC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a2, v6);
}

id sub_25F1A6FF0@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_25F1A701C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_25F1A7060()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_25F1A7098()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A70D4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_25F1A7114()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_25F1A714C()
{
  v1 = type metadata accessor for CrashReport(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = (((*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = sub_25F30467C();
  (*(*(v5 - 8) + 8))(v4, v5);

  v6 = *(v1 + 32);
  v7 = sub_25F30462C();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);

  if (*(v4 + *(v1 + 40) + 40) != 1)
  {
  }

  v8 = *(v0 + v3);
  if (v8 >= 2)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_25F1A7340()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53BB0, &unk_25F309BA0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);

  v3 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_25F30467C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
    v5 = type metadata accessor for CrashReport(0);

    v6 = *(v5 + 32);
    v7 = sub_25F30462C();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);

    if (*(v3 + *(v5 + 40) + 40) != 1)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_25F1A7530()
{
  v1 = type metadata accessor for CrashReport(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = sub_25F30467C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = *(v1 + 32);
  v5 = sub_25F30462C();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  if (*(v0 + v2 + *(v1 + 40) + 40) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_25F1A7704()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A774C()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A778C()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A77C4()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A77FC()
{

  sub_25F208978(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_25F1A7844()
{
  v1 = type metadata accessor for CrashReport(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = sub_25F30467C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = *(v1 + 32);
  v5 = sub_25F30462C();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  if (*(v0 + v2 + *(v1 + 40) + 40) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_25F1A7A2C()
{

  sub_25F1D93BC(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_25F1A7A70()
{

  return swift_deallocObject();
}

id sub_25F1A7AB4(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_25F208C90(result, a2 & 1);
  }

  return result;
}

void sub_25F1A7AE0(void *result, char a2)
{
  if (a2 != -1)
  {
    sub_25F1C5980(result, a2 & 1);
  }
}

uint64_t sub_25F1A7B0C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_25F1A7B5C()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A7C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for CrashReport(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_25F1A7C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for CrashReport(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void *sub_25F1A7D94@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + a2;
  }

  return result;
}

uint64_t sub_25F1A7DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_25F30574C();
}

uint64_t sub_25F1A7E30(void *a1, void *a2)
{
  v2 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25F1A7E48()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_25F1A7E88()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_25F1A7EC0()
{
  v1 = *(v0 + 24);
  v2 = sub_25F30479C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 - 8);
  v6 = (v4 + *(v3 + 64) + *(v5 + 80)) & ~*(v5 + 80);
  (*(v3 + 8))(v0 + v4, v2);
  (*(v5 + 8))(v0 + v6, v1);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_25F1A8014(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD52F80, &qword_25F309110);
  sub_25F30617C();
  swift_getWitnessTable();
  sub_25F284848();
  sub_25F30615C();
  swift_getWitnessTable();
  sub_25F305FEC();

  return swift_getWitnessTable();
}

uint64_t sub_25F1A80F0()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A8128()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A8170()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v2 = *(sub_25F30678C() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    (*(*(v1 - 8) + 8))(v0 + v3, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_25F1A829C()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A82D8()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_25F1A8370()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 40) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_25F1A83F8()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A8438()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A8478()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A84C4()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A8514(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CrashReport(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25F1A85C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CrashReport(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25F1A8664()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_25F1A86A0()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A86D8()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A8720()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A8758(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_25F1A87C4()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A8824()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

__n128 sub_25F1A89C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a1 + a3 - 32) - 8) + 16;
  (*v5)(a2, a1);
  v6 = (*(v5 + 48) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = a1 + v6;
  v8 = a2 + v6;
  result = *(v7 + 16);
  *v8 = *v7;
  *(v8 + 16) = result;
  return result;
}

__n128 sub_25F1A8ABC(__n128 *a1, uint64_t a2)
{
  v4 = *(a1->n128_u64[0] - 8);
  v5 = *(v4 + 64);
  (*(v4 + 32))(a2, a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));
  v6 = (a2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  result = a1[1];
  *v6 = *a1;
  v6[1] = result;
  return result;
}

uint64_t sub_25F1A8B44()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = *(v2 - 8);
  v6 = (v4 + *(v3 + 64) + *(v5 + 80)) & ~*(v5 + 80);

  (*(v3 + 8))(v0 + v4, v1);
  (*(v5 + 8))(v0 + v6, v2);

  return swift_deallocObject();
}

uint64_t sub_25F1A8C80()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  if (*(v0 + 48))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 72) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_25F1A8D4C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = *(v2 - 8);
  v6 = (v4 + *(v3 + 64) + *(v5 + 80)) & ~*(v5 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);
  (*(v5 + 8))(v0 + v6, v2);

  return swift_deallocObject();
}

uint64_t sub_25F1A8E90()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A8EC8()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A8F10()
{
  v1 = *(v0 + 40);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_25F1A8FD8()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A9010()
{
  v1 = sub_25F30542C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_25F1A90A0()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A90DC()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A9114()
{

  return swift_deallocObject();
}

__n128 sub_25F1A9178(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_25F1A918C()
{

  MEMORY[0x25F8D9600](v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_25F1A91E0()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A9334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F1A93B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_25F30574C();
}

uint64_t sub_25F1A943C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_25F1A94B0()
{

  return swift_deallocObject();
}

void sub_25F1A94E8(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  os_unfair_lock_lock((v3 + 20));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
  *a2 = v4;
}

void sub_25F1A9530(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  os_unfair_lock_lock((v3 + 20));
  *(v3 + 16) = v2;

  os_unfair_lock_unlock((v3 + 20));
}

uint64_t sub_25F1A960C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_25F3054AC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_25F1A96C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_25F3054AC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25F1A9768()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A97B0()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A97E8()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A9844()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A98AC@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27FD57C20;
  return result;
}

uint64_t sub_25F1A98F8(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_27FD57C20 = v1;
  return result;
}

uint64_t sub_25F1A9940@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27FD57C28;
  return result;
}

uint64_t sub_25F1A998C(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_27FD57C28 = v1;
  return result;
}

uint64_t sub_25F1A99D4@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27FD57C30;
  return result;
}

uint64_t sub_25F1A9A20(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_27FD57C30 = v1;
  return result;
}

uint64_t sub_25F1A9A68@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27FD57C38;
  return result;
}

uint64_t sub_25F1A9AB4(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_27FD57C38 = v1;
  return result;
}

uint64_t sub_25F1A9AFC@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27FD57C40;
  return result;
}

uint64_t sub_25F1A9B48(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_27FD57C40 = v1;
  return result;
}

uint64_t sub_25F1A9B90()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A9BD0()
{

  return swift_deallocObject();
}

uint64_t sub_25F1A9C38(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CrashReport(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25F1A9CE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CrashReport(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25F1A9D88(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_25F30462C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25F1A9E34(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_25F30462C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25F1A9ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_25F30574C();
}

uint64_t sub_25F1A9FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_25F30574C();
}

uint64_t sub_25F1AA078()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 40) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_25F1AA0F8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_25F1AA1B4()
{
  v1 = sub_25F3054DC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_25F1AA240()
{

  return swift_deallocObject();
}

uint64_t sub_25F1AA280()
{

  return swift_deallocObject();
}

uint64_t sub_25F1AA2B8()
{

  return swift_deallocObject();
}

uint64_t sub_25F1AA324()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_25F1AA3A4()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_25F1AA3EC()
{

  return swift_deallocObject();
}

uint64_t sub_25F1AA460()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_25F1AA4E4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_25F1AA5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for FutureTermination(0, v5, a3, a4) - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    (*(*(v5 - 8) + 8))(v4 + v7, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_25F1AA6AC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53BB0, &unk_25F309BA0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);

  v3 = (v0 + v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = sub_25F30467C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
    v5 = type metadata accessor for CrashReport(0);

    v6 = *(v5 + 32);
    v7 = sub_25F30462C();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);

    if (*(v3 + *(v5 + 40) + 40) != 1)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_25F1AA89C()
{

  sub_25F1C5980(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_25F1AA8EC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);

  v3 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v5 = sub_25F30467C();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
    v6 = type metadata accessor for CrashReport(0);

    v7 = *(v6 + 32);
    v8 = sub_25F30462C();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);

    if (*(v3 + *(v6 + 40) + 40) != 1)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_25F1AAAE0()
{

  sub_25F1D93BC(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_25F1AAB24()
{

  sub_25F1D93BC(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

unint64_t sub_25F1AAB68(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_25F1AAB7C()
{

  sub_25F1C5980(*(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_25F1AABC0()
{

  return swift_deallocObject();
}

uint64_t sub_25F1AABF8()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v2 = *(sub_25F30678C() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    (*(*(v1 - 8) + 8))(v0 + v3, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_25F1AAD4C()
{

  return swift_deallocObject();
}

uint64_t sub_25F1AAD84()
{

  return swift_deallocObject();
}

uint64_t sub_25F1AADBC()
{

  return swift_deallocObject();
}

__n128 sub_25F1AAE40(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_25F1AAE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CrashReport.ID(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_25F30462C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_25F1AAF74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CrashReport.ID(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_25F30462C();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_25F1AB09C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F30467C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25F1AB108(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F30467C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25F1AB178()
{

  return swift_deallocObject();
}

uint64_t sub_25F1AB1B0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_25F1AB278@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_25F1AB32C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_25F1AB374()
{

  return swift_deallocObject();
}

uint64_t sub_25F1AB3BC()
{

  return swift_deallocObject();
}

uint64_t sub_25F1AB3FC()
{

  return swift_deallocObject();
}

uint64_t sub_25F1AB434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FutureTermination(255, *(v4 + 16), a3, a4);
  v5 = sub_25F30542C();
  (*(*(v5 - 8) + 8))(v4 + ((*(*(v5 - 8) + 80) + 24) & ~*(*(v5 - 8) + 80)), v5);

  return swift_deallocObject();
}

uint64_t sub_25F1AB4DC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_25F1AB52C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_25F1AB5F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CrashReport(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25F1AB69C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CrashReport(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25F1AB740()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_25F1AB778()
{
  v1 = sub_25F30467C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_25F1AB83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F30467C();
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

uint64_t sub_25F1AB8F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25F30467C();
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

uint64_t sub_25F1AB9C0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_25F1AB9F8()
{

  return swift_deallocObject();
}

uint64_t sub_25F1ABA30()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = sub_25F30546C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_25F1ABB74()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = sub_25F30546C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_25F1ABCA4()
{

  return swift_deallocObject();
}

uint64_t sub_25F1ABCDC()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v2 = *(sub_25F30678C() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    (*(*(v1 - 8) + 8))(v0 + v3, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_25F1ABE34()
{
  v1 = *(v0 + 16);
  if (v1 >= 2)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_25F1ABE7C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_25F1ABEB4()
{

  sub_25F2FE044(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 89));

  return swift_deallocObject();
}

uint64_t sub_25F1ABF14()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);

  v3 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v5 = sub_25F30467C();
    (*(*(v5 - 8) + 8))(v0 + v2, v5);
    v6 = type metadata accessor for CrashReport(0);

    v7 = *(v6 + 32);
    v8 = sub_25F30462C();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);

    if (*(v3 + *(v6 + 40) + 40) != 1)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_25F1AC108()
{

  return swift_deallocObject();
}

uint64_t sub_25F1AC140()
{

  return swift_deallocObject();
}

uint64_t sub_25F1AC17C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_25F1AC1CC()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_25F1AC20C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_25F1AC264()
{

  return swift_deallocObject();
}

uint64_t sub_25F1AC2AC()
{

  return swift_deallocObject();
}

uint64_t sub_25F1AC2E4()
{
  v1 = sub_25F30479C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_25F1AC3AC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25F1AC3CC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t getEnumTagSinglePayload for HumanReadableErrorOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HumanReadableErrorOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

void *sub_25F1AC420@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_25F1AC438(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void *sub_25F1AC4C4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_25F1AC4DC(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

unint64_t sub_25F1AC51C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

id UVDebug_NameOfCurrentQueue()
{
  v0 = dispatch_get_current_queue();
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:dispatch_queue_get_label(v0)];

  return v1;
}

id UVCurrentSystemBuildNumberString(uint64_t a1)
{
  if (UVCurrentSystemBuildNumberString_predicate != -1)
  {
    UVCurrentSystemBuildNumberString_cold_1();
  }

  v2 = UVCurrentSystemBuildNumberString_cachedValue;

  return v2;
}

void __UVCurrentSystemBuildNumberString_block_invoke()
{
  v0 = _CFCopySystemVersionDictionary();
  if (!v0)
  {
    v0 = _CFCopyServerVersionDictionary();
  }

  v3 = v0;
  v1 = [v0 objectForKey:*MEMORY[0x277CBEC70]];
  v2 = UVCurrentSystemBuildNumberString_cachedValue;
  UVCurrentSystemBuildNumberString_cachedValue = v1;
}

uint64_t CrashReportError.symbolicationParameters.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for CrashReportError(0) + 20));
}

uint64_t CrashReportError.symbolicationParameters.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for CrashReportError(0) + 20);

  *(v1 + v3) = v2;
  return result;
}

uint64_t CrashReportError.init(report:symbolicationParameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a2;
  v76 = a3;
  v72 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD529B8, &qword_25F3077F0);
  MEMORY[0x28223BE20](v3 - 8);
  v59 = &v54 - v4;
  v5 = type metadata accessor for CrashReportError.MissingPhotoKeyError(0);
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v55 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD529C0, &qword_25F3077F8);
  MEMORY[0x28223BE20](v7 - 8);
  v63 = &v54 - v8;
  v9 = type metadata accessor for CrashReportError.UncaughtExceptionError(0);
  v61 = *(v9 - 8);
  v62 = v9;
  MEMORY[0x28223BE20](v9);
  v56 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD529C8, &qword_25F307800);
  MEMORY[0x28223BE20](v11 - 8);
  v67 = &v54 - v12;
  CrashError = type metadata accessor for CrashReportError.DyldLibraryLoadCrashError(0);
  v65 = *(CrashError - 8);
  v66 = CrashError;
  MEMORY[0x28223BE20](CrashError);
  v60 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD529D0, &qword_25F307808);
  MEMORY[0x28223BE20](v15 - 8);
  v71 = &v54 - v16;
  v17 = type metadata accessor for CrashReportError.ConditionInFileError(0);
  v69 = *(v17 - 8);
  v70 = v17;
  MEMORY[0x28223BE20](v17);
  v64 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CrashReportError(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD529D8, &qword_25F307810);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v54 - v23;
  v25 = type metadata accessor for CrashReportError.IndexOutOfRangeError(0);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v68 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for CrashReport(0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD529E0, &qword_25F307818);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v54 - v32;
  v34 = type metadata accessor for CrashReportError.MissingEnvironmentObjectError(0);
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v54 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *v75;
  v75 = v19;
  v39 = *(v19 + 20);
  v73 = v38;
  v74 = v39;
  *(v76 + v39) = 0;
  v40 = v72;
  sub_25F1AF630(v72, v30, type metadata accessor for CrashReport);
  sub_25F1AD774(v30, v33);
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    sub_25F1AF698(v33, &qword_27FD529E0, &qword_25F307818);
    sub_25F1AF630(v40, v30, type metadata accessor for CrashReport);
    sub_25F1ADBD4(v30, v24);
    if ((*(v26 + 48))(v24, 1, v25) == 1)
    {
      sub_25F1AF698(v24, &qword_27FD529D8, &qword_25F307810);
      sub_25F1AF630(v40, v30, type metadata accessor for CrashReport);
      v41 = v71;
      CrashReportError.ConditionInFileError.init(report:)(v30, v71);
      if ((*(v69 + 48))(v41, 1, v70) == 1)
      {
        sub_25F1AF698(v41, &qword_27FD529D0, &qword_25F307808);
        sub_25F1AF630(v40, v30, type metadata accessor for CrashReport);
        v42 = v67;
        sub_25F1ADF44(v30, v67);
        if ((*(v65 + 48))(v42, 1, v66) == 1)
        {
          sub_25F1AF698(v42, &qword_27FD529C8, &qword_25F307800);
          sub_25F1AF630(v40, v30, type metadata accessor for CrashReport);
          v43 = v63;
          sub_25F1AE3AC(v30, v63);
          if ((*(v61 + 48))(v43, 1, v62) == 1)
          {
            sub_25F1AF698(v43, &qword_27FD529C0, &qword_25F3077F8);
            sub_25F1AF630(v40, v30, type metadata accessor for CrashReport);
            v44 = v59;
            CrashReportError.MissingPhotoKeyError.init(report:)(v30, v59);
            if ((*(v57 + 48))(v44, 1, v58) == 1)
            {
              sub_25F1AF698(v44, &qword_27FD529B8, &qword_25F3077F0);
              *v21 = 0;
              v21[8] = 1;
              v45 = type metadata accessor for CrashReportError.GenericCrashError(0);
              sub_25F1AF6F8(v40, &v21[*(v45 + 20)], type metadata accessor for CrashReport);
            }

            else
            {
              sub_25F1AF760(v40);
              v50 = v55;
              sub_25F1AF6F8(v44, v55, type metadata accessor for CrashReportError.MissingPhotoKeyError);
              sub_25F1AF6F8(v50, v21, type metadata accessor for CrashReportError.MissingPhotoKeyError);
            }
          }

          else
          {
            sub_25F1AF760(v40);
            v49 = v56;
            sub_25F1AF6F8(v43, v56, type metadata accessor for CrashReportError.UncaughtExceptionError);
            sub_25F1AF6F8(v49, v21, type metadata accessor for CrashReportError.UncaughtExceptionError);
          }
        }

        else
        {
          sub_25F1AF760(v40);
          v48 = v60;
          sub_25F1AF6F8(v42, v60, type metadata accessor for CrashReportError.DyldLibraryLoadCrashError);
          sub_25F1AF6F8(v48, v21, type metadata accessor for CrashReportError.DyldLibraryLoadCrashError);
        }
      }

      else
      {
        sub_25F1AF760(v40);
        v47 = v64;
        sub_25F1AF6F8(v41, v64, type metadata accessor for CrashReportError.ConditionInFileError);
        sub_25F1AF6F8(v47, v21, type metadata accessor for CrashReportError.ConditionInFileError);
      }
    }

    else
    {
      sub_25F1AF760(v40);
      v46 = v68;
      sub_25F1AF6F8(v24, v68, type metadata accessor for CrashReportError.IndexOutOfRangeError);
      sub_25F1AF6F8(v46, v21, type metadata accessor for CrashReportError.IndexOutOfRangeError);
    }
  }

  else
  {
    sub_25F1AF760(v40);
    sub_25F1AF6F8(v33, v37, type metadata accessor for CrashReportError.MissingEnvironmentObjectError);
    sub_25F1AF6F8(v37, v21, type metadata accessor for CrashReportError.MissingEnvironmentObjectError);
  }

  type metadata accessor for CrashReportError.Kind(0);
  swift_storeEnumTagMultiPayload();
  v51 = *(v75 + 20);
  *&v21[v51] = 0;

  *&v21[v51] = v73;
  v52 = v76;

  return sub_25F1AF6F8(v21, v52, type metadata accessor for CrashReportError);
}

uint64_t sub_25F1AD774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CrashReportError.MissingEnvironmentObjectError(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CrashReport(0);
  MEMORY[0x28223BE20](v8);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD529E0, &qword_25F307818);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v36 - v12;
  if (qword_27FD52868 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (!qword_27FD56FF8 || !*(a1 + *(v8 + 36)))
  {
    goto LABEL_9;
  }

  v40 = a1;
  v14 = qword_27FD56FF8;

  v39 = v14;
  v16 = sub_25F1B04C8(v15, v14);
  if (!v16[2])
  {

    a1 = v40;
LABEL_9:
    sub_25F1AF760(a1);
    return (*(v5 + 56))(a2, 1, 1, v4);
  }

  v38 = a2;
  v36[1] = v16[4];
  v17 = v16[6];

  v37 = v17;

  sub_25F1AF630(v40, v10, type metadata accessor for CrashReport);
  *v7 = 0;
  v7[8] = 1;
  v18 = &v10[*(v8 + 20)];
  v19 = *(v18 + 1);
  *(v7 + 2) = *v18;
  *(v7 + 3) = v19;

  v20 = sub_25F304DDC();

  v21 = sub_25F304DDC();
  v22 = v37;
  v23 = [v37 rangeWithName_];
  v25 = v24;

  v26 = [v20 substringWithRange_];
  v27 = sub_25F304E0C();
  v29 = v28;

  v41 = v27;
  v42 = v29;
  v30 = sub_25F3050BC();
  v32 = v31;

  *(v7 + 4) = v30;
  *(v7 + 5) = v32;
  sub_25F1AF6F8(v10, &v7[*(v4 + 28)], type metadata accessor for CrashReport);
  sub_25F1AF6F8(v7, v13, type metadata accessor for CrashReportError.MissingEnvironmentObjectError);
  v33 = *(v5 + 56);
  v33(v13, 0, 1, v4);
  sub_25F1AF760(v40);
  if ((*(v5 + 48))(v13, 1, v4))
  {
    sub_25F1AF698(v13, &qword_27FD529E0, &qword_25F307818);
    a2 = v38;
    return (*(v5 + 56))(a2, 1, 1, v4);
  }

  v35 = v38;
  sub_25F1AF6F8(v13, v38, type metadata accessor for CrashReportError.MissingEnvironmentObjectError);
  return (v33)(v35, 0, 1, v4);
}

uint64_t sub_25F1ADBD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CrashReportError.IndexOutOfRangeError(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CrashReport(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD529D8, &qword_25F307810);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  if (qword_27FD52850 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (!qword_27FD56AA0 || !*(a1 + *(v8 + 36)))
  {
    goto LABEL_9;
  }

  v14 = qword_27FD56AA0;

  if (!*(sub_25F1B04C8(v15, v14) + 16))
  {

LABEL_9:
    sub_25F1AF760(a1);
    return (*(v5 + 56))(a2, 1, 1, v4);
  }

  v20 = a2;

  sub_25F1AF630(a1, v10, type metadata accessor for CrashReport);
  *v7 = 0;
  v7[8] = 1;
  sub_25F1AF6F8(v10, &v7[*(v4 + 20)], type metadata accessor for CrashReport);
  sub_25F1AF6F8(v7, v13, type metadata accessor for CrashReportError.IndexOutOfRangeError);
  v16 = *(v5 + 56);
  v16(v13, 0, 1, v4);
  sub_25F1AF760(a1);
  if ((*(v5 + 48))(v13, 1, v4))
  {
    sub_25F1AF698(v13, &qword_27FD529D8, &qword_25F307810);
    a2 = v20;
    return (*(v5 + 56))(a2, 1, 1, v4);
  }

  v18 = v20;
  sub_25F1AF6F8(v13, v20, type metadata accessor for CrashReportError.IndexOutOfRangeError);
  return (v16)(v18, 0, 1, v4);
}

uint64_t sub_25F1ADF44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  CrashError = type metadata accessor for CrashReportError.DyldLibraryLoadCrashError(0);
  v5 = *(CrashError - 8);
  MEMORY[0x28223BE20](CrashError);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CrashReport(0);
  MEMORY[0x28223BE20](v8);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD529C8, &qword_25F307800);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v36 - v12;
  if (qword_27FD52788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (!qword_27FD54CB8 || !*(a1 + *(v8 + 36)))
  {
    goto LABEL_9;
  }

  v40 = a1;
  v14 = qword_27FD54CB8;

  v39 = v14;
  v16 = sub_25F1B04C8(v15, v14);
  if (!v16[2])
  {

    a1 = v40;
LABEL_9:
    sub_25F1AF760(a1);
    return (*(v5 + 56))(a2, 1, 1, CrashError);
  }

  v38 = a2;
  v36[1] = v16[4];
  v17 = v16[6];

  v37 = v17;

  sub_25F1AF630(v40, v10, type metadata accessor for CrashReport);
  *v7 = 0;
  v7[8] = 1;
  v18 = &v10[*(v8 + 20)];
  v19 = *(v18 + 1);
  *(v7 + 2) = *v18;
  *(v7 + 3) = v19;

  v20 = sub_25F304DDC();

  v21 = sub_25F304DDC();
  v22 = v37;
  v23 = [v37 rangeWithName_];
  v25 = v24;

  v26 = [v20 substringWithRange_];
  v27 = sub_25F304E0C();
  v29 = v28;

  v41 = v27;
  v42 = v29;
  v30 = sub_25F3050BC();
  v32 = v31;

  *(v7 + 4) = v30;
  *(v7 + 5) = v32;
  sub_25F1AF6F8(v10, &v7[*(CrashError + 28)], type metadata accessor for CrashReport);
  sub_25F1AF6F8(v7, v13, type metadata accessor for CrashReportError.DyldLibraryLoadCrashError);
  v33 = *(v5 + 56);
  v33(v13, 0, 1, CrashError);
  sub_25F1AF760(v40);
  if ((*(v5 + 48))(v13, 1, CrashError))
  {
    sub_25F1AF698(v13, &qword_27FD529C8, &qword_25F307800);
    a2 = v38;
    return (*(v5 + 56))(a2, 1, 1, CrashError);
  }

  v35 = v38;
  sub_25F1AF6F8(v13, v38, type metadata accessor for CrashReportError.DyldLibraryLoadCrashError);
  return (v33)(v35, 0, 1, CrashError);
}

uint64_t sub_25F1AE3AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CrashReportError.UncaughtExceptionError(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CrashReport(0);
  MEMORY[0x28223BE20](v8);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD529C0, &qword_25F3077F8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v46 - v12;
  if (qword_27FD52988 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (!qword_27FD57CC8 || !*(a1 + *(v8 + 36)))
  {
    goto LABEL_9;
  }

  v50 = v4;
  v14 = qword_27FD57CC8;

  v49 = v14;
  v16 = sub_25F1B04C8(v15, v14);
  if (!v16[2])
  {

    v4 = v50;
LABEL_9:
    sub_25F1AF760(a1);
    return (*(v5 + 56))(a2, 1, 1, v4);
  }

  v48 = a2;
  v46[1] = v16[4];
  v17 = v16[6];

  v18 = v17;

  v47 = a1;
  sub_25F1AF630(a1, v10, type metadata accessor for CrashReport);
  *v7 = 0;
  v7[8] = 1;
  v19 = sub_25F304DDC();

  v20 = &v10[*(v8 + 20)];
  v21 = *(v20 + 1);
  *(v7 + 2) = *v20;
  *(v7 + 3) = v21;

  v22 = sub_25F304DDC();
  v23 = v18;
  v24 = [v18 rangeWithName_];
  v26 = v25;

  v27 = [v19 substringWithRange_];
  v28 = sub_25F304E0C();
  v30 = v29;

  v51 = v28;
  v52 = v30;
  *(v7 + 4) = sub_25F3050BC();
  *(v7 + 5) = v31;
  v32 = sub_25F304DDC();
  v33 = [v23 rangeWithName_];
  v35 = v34;

  v36 = [v19 substringWithRange_];
  v37 = sub_25F304E0C();
  v39 = v38;

  v51 = v37;
  v52 = v39;
  v40 = sub_25F3050BC();
  v42 = v41;

  *(v7 + 6) = v40;
  *(v7 + 7) = v42;
  v4 = v50;
  sub_25F1AF6F8(v10, &v7[*(v50 + 32)], type metadata accessor for CrashReport);
  sub_25F1AF6F8(v7, v13, type metadata accessor for CrashReportError.UncaughtExceptionError);
  v43 = *(v5 + 56);
  v43(v13, 0, 1, v4);
  sub_25F1AF760(v47);
  if ((*(v5 + 48))(v13, 1, v4))
  {
    sub_25F1AF698(v13, &qword_27FD529C0, &qword_25F3077F8);
    a2 = v48;
    return (*(v5 + 56))(a2, 1, 1, v4);
  }

  v45 = v48;
  sub_25F1AF6F8(v13, v48, type metadata accessor for CrashReportError.UncaughtExceptionError);
  return (v43)(v45, 0, 1, v4);
}

uint64_t sub_25F1AE8B4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CrashReportError.Kind(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F1AF630(v2, v6, type metadata accessor for CrashReportError.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        CrashError = type metadata accessor for CrashReportError.IndexOutOfRangeError(0);
        v9 = type metadata accessor for CrashReportError.IndexOutOfRangeError;
        v10 = &off_2871654B0;
      }

      else
      {
        CrashError = type metadata accessor for CrashReportError.ConditionInFileError(0);
        v9 = type metadata accessor for CrashReportError.ConditionInFileError;
        v10 = &off_287169F60;
      }
    }

    else
    {
      CrashError = type metadata accessor for CrashReportError.MissingEnvironmentObjectError(0);
      v9 = type metadata accessor for CrashReportError.MissingEnvironmentObjectError;
      v10 = &off_287166120;
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      CrashError = type metadata accessor for CrashReportError.MissingPhotoKeyError(0);
      v9 = type metadata accessor for CrashReportError.MissingPhotoKeyError;
      v10 = &off_287162668;
    }

    else
    {
      CrashError = type metadata accessor for CrashReportError.GenericCrashError(0);
      v9 = type metadata accessor for CrashReportError.GenericCrashError;
      v10 = &off_28715E6E8;
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    CrashError = type metadata accessor for CrashReportError.DyldLibraryLoadCrashError(0);
    v9 = type metadata accessor for CrashReportError.DyldLibraryLoadCrashError;
    v10 = &off_287160DD8;
  }

  else
  {
    CrashError = type metadata accessor for CrashReportError.UncaughtExceptionError(0);
    v9 = type metadata accessor for CrashReportError.UncaughtExceptionError;
    v10 = &off_287167938;
  }

  a1[3] = CrashError;
  a1[4] = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_25F1AF6F8(v6, boxed_opaque_existential_1, v9);
}

uint64_t CrashReportError.crashReport.getter()
{
  sub_25F1AE8B4(v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v1 + 8))(v0, v1);
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t CrashReportError.highValueTitle.getter()
{
  sub_25F1AE8B4(v4);
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v2 = (*(v1 + 16))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

uint64_t CrashReportError.additionalInfo.getter()
{
  sub_25F1AE8B4(v4);
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v2 = (*(v1 + 24))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

uint64_t CrashReportError.additionalDiagnostics.getter()
{
  v0 = type metadata accessor for CrashReport(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F1AE8B4(v13);
  v3 = v14;
  v4 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (*(v4 + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v13);
  v5 = CrashReport.formattedAsLegacyCrashReport()();
  v6 = sub_25F2EFA04(0, 1, 1, MEMORY[0x277D84F90]);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_25F2EFA04((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  v9 = &v6[24 * v8];
  *(v9 + 2) = v5;
  v9[48] = 0;
  v10 = Array<A>.builtDescription.getter(v6);

  sub_25F1AF760(v2);
  return v10;
}

uint64_t CrashReportError.options.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25F1AE8B4(v9);
  v2 = v10;
  v3 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v3 + 32))(&v7, v2, v3);
  if (v8)
  {
    result = __swift_destroy_boxed_opaque_existential_1(v9);
    v5 = 2;
  }

  else
  {
    v6 = v7;
    result = __swift_destroy_boxed_opaque_existential_1(v9);
    v5 = v6 | 2;
  }

  *a1 = v5;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_25F1AEE18()
{
  sub_25F1AE8B4(v4);
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v2 = (*(v1 + 16))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

uint64_t sub_25F1AEE94()
{
  sub_25F1AE8B4(v4);
  v0 = v5;
  v1 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v2 = (*(v1 + 24))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

double _s20PreviewsFoundationOS25mergeEnvironmentVariables12environments20defaultMergeHandlers010additionaliJ0SDyS2SGSayAFG_SayAA0e8VariableI7Handler_pGAItFfA0__0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD529E8, &qword_25F307820);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_25F3077D0;
  *(v0 + 56) = &type metadata for DYLDEnvironmentVariablePathMergeHandler;
  *(v0 + 64) = &protocol witness table for DYLDEnvironmentVariablePathMergeHandler;
  return result;
}

double default argument 1 of ConcurrentInvalidationHandle.init(name:failureMode:callsite:)@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_25F3077E0;
  *(a1 + 16) = 2;
  return result;
}

uint64_t default argument 0 of static OS_dispatch_queue.runAsync<A>(qos:work:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D851C8];
  v3 = sub_25F30491C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

double default argument 2 of Continuation.init(callsite:initializationInfo:failureMode:resume:)@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_25F3077E0;
  *(a1 + 16) = 2;
  return result;
}

uint64_t sub_25F1AF0A4(double a1)
{
  sub_25F1B0410();
  result = swift_allocError();
  *v3 = a1;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  return result;
}

uint64_t default argument 1 of SimpleTimeoutTimer.init(timeInterval:qos:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D851B0];
  v3 = sub_25F30491C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t default argument 0 of FutureSerialQueue.enqueue<A>(priority:makeFuture:)()
{
  return 1;
}

{
  return 1;
}

void *default argument 2 of ResourceHub.init(serviceName:resourceName:bootstrapResource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  return &unk_25F307828;
}

double default argument 2 of AnyCommandLinePrinter.printInColumns<A, B, C>(headers:rows:attributes:separator:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD529F0, &qword_25F307830);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_25F3077D0;
  *(v0 + 32) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_25F1AF2E0@<X0>(uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x277D85778];
  v4 = sub_25F3054AC();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t sub_25F1AF3C8@<X0>(uint64_t *a1@<X1>, _BYTE *a2@<X8>)
{
  result = sub_25F2F21F0(*a1, a1[1]);
  *a2 = result & 1;
  return result;
}

uint64_t sub_25F1AF3F8@<X0>(_BYTE *a2@<X8>)
{
  result = sub_25F30505C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_25F1AF440@<X0>(_BYTE *a2@<X8>)
{
  result = sub_25F30505C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_25F1AF488@<X0>(_BYTE *a2@<X8>)
{
  result = sub_25F30505C();
  *a2 = result & 1;
  return result;
}

void sub_25F1AF4D4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
}

uint64_t sub_25F1AF4FC@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  *a3 = v3;
  *(a3 + 8) = v4;
  *(a3 + 16) = a2;
}

uint64_t sub_25F1AF52C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CrashReportError.Kind(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F1AF5B0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

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

uint64_t sub_25F1AF630(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F1AF698(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25F1AF6F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F1AF760(uint64_t a1)
{
  v2 = type metadata accessor for CrashReport(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
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

uint64_t sub_25F1AF864()
{
  v0 = sub_25F304E0C();
  v1 = MEMORY[0x25F8D7220](v0);

  return v1;
}

uint64_t sub_25F1AF8A0(uint64_t a1)
{
  sub_25F304E0C();
  sub_25F304F0C();
}

uint64_t sub_25F1AF8F4(uint64_t a1)
{
  sub_25F304E0C();
  sub_25F30671C();
  sub_25F304F0C();
  v1 = sub_25F30676C();

  return v1;
}

uint64_t sub_25F1AF968(uint64_t a1, id *a2)
{
  result = sub_25F304DEC();
  *a2 = 0;
  return result;
}

uint64_t sub_25F1AF9E0(uint64_t a1, id *a2)
{
  v3 = sub_25F304DFC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25F1AFA60@<X0>(uint64_t *a2@<X8>)
{
  sub_25F304E0C();
  v3 = sub_25F304DDC();

  *a2 = v3;
  return result;
}

uint64_t sub_25F1AFAA4(void *a1, uint64_t *a2)
{
  v2 = sub_25F304E0C();
  v4 = v3;
  if (v2 == sub_25F304E0C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_25F30659C();
  }

  return v7 & 1;
}

uint64_t sub_25F1AFB2C(uint64_t a1)
{
  v2 = sub_25F1AFF28(&qword_27FD52B20, type metadata accessor for URLResourceKey, &unk_25F307D60);
  v3 = sub_25F1AFF28(&qword_27FD52B28, type metadata accessor for URLResourceKey, &unk_25F307D00);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_25F1AFBE8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_25F304DDC();

  *a2 = v3;
  return result;
}

uint64_t sub_25F1AFC30(uint64_t a1)
{
  v2 = sub_25F1AFF28(&qword_27FD52B30, type metadata accessor for NSKeyValueChangeKey, &unk_25F307DF0);
  v3 = sub_25F1AFF28(&qword_27FD52B38, type metadata accessor for NSKeyValueChangeKey, &unk_25F307BEC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_25F1AFCEC(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_25F1AFDB0;

  return sub_25F1E2A68();
}

uint64_t sub_25F1AFDB0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25F1AFEA4(uint64_t a1)
{
  *(a1 + 8) = sub_25F1AFF28(&qword_27FD529F8, type metadata accessor for CrashReportError, &protocol conformance descriptor for CrashReportError);
  result = sub_25F1AFF28(&qword_27FD52A00, type metadata accessor for CrashReportError, &protocol conformance descriptor for CrashReportError);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F1AFF28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_25F1AFFE0(uint64_t a1)
{
  type metadata accessor for CrashReportError.Kind(319);
  if (v1 <= 0x3F)
  {
    sub_25F1B088C(319, &qword_27FD52A20, &type metadata for CrashLogSymbolicationParameters, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_25F1B00D8(uint64_t a1)
{
  result = type metadata accessor for CrashReportError.MissingEnvironmentObjectError(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CrashReportError.IndexOutOfRangeError(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for CrashReportError.ConditionInFileError(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for CrashReportError.DyldLibraryLoadCrashError(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for CrashReportError.UncaughtExceptionError(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for CrashReportError.MissingPhotoKeyError(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for CrashReportError.GenericCrashError(319);
              if (v8 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25F1B0294(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25F1B03A0(uint64_t a1, int a2)
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

uint64_t sub_25F1B03C0(uint64_t result, int a2, int a3)
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

unint64_t sub_25F1B0410()
{
  result = qword_27FD52AD0;
  if (!qword_27FD52AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD52AD0);
  }

  return result;
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

uint64_t sub_25F1B04C8(uint64_t a1, void *a2)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v31 = MEMORY[0x277D84F90];
  v33 = v6;
  v34 = v2;
LABEL_4:
  v9 = v8;
  if (!v5)
  {
    goto LABEL_6;
  }

  do
  {
    v8 = v9;
LABEL_9:
    v37 = v5;
    v10 = *(*(a1 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    v11 = *(v10 + 16);

    result = a2;
    v39 = result;
    if (v11)
    {
      v12 = 0;
      v13 = v10 + 40;
      v14 = MEMORY[0x277D84F90];
      v32 = v10 + 40;
      do
      {
        v38 = v14;
        v15 = (v13 + 16 * v12);
        v16 = v12;
        while (1)
        {
          if (v16 >= v11)
          {
            __break(1u);
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

          v12 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_34;
          }

          v18 = *(v15 - 1);
          v17 = *v15;

          v19 = sub_25F304DDC();
          v20 = [v39 firstMatchInString:v19 options:0 range:{0, sub_25F304F2C()}];

          if (v20)
          {
            break;
          }

          ++v16;
          v15 += 2;
          if (v12 == v11)
          {
            v14 = v38;
            goto LABEL_24;
          }
        }

        v14 = v38;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_25F2EFC2C(0, v38[2] + 1, 1, v38);
          v14 = result;
        }

        v22 = v14[2];
        v21 = v14[3];
        if (v22 >= v21 >> 1)
        {
          result = sub_25F2EFC2C((v21 > 1), v22 + 1, 1, v14);
          v14 = result;
        }

        v14[2] = v22 + 1;
        v23 = &v14[3 * v22];
        v23[4] = v18;
        v23[5] = v17;
        v23[6] = v20;
        v13 = v32;
      }

      while (v12 != v11);
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
    }

LABEL_24:
    v5 = (v37 - 1) & v37;

    if (v14[2])
    {
      v24 = v14[4];
      v25 = v14[5];
      v26 = v14[6];

      v27 = v26;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_25F2EFC2C(0, v31[2] + 1, 1, v31);
        v31 = result;
      }

      v29 = v31[2];
      v28 = v31[3];
      if (v29 >= v28 >> 1)
      {
        result = sub_25F2EFC2C((v28 > 1), v29 + 1, 1, v31);
        v31 = result;
      }

      v31[2] = v29 + 1;
      v30 = &v31[3 * v29];
      v30[4] = v24;
      v30[5] = v25;
      v30[6] = v27;
      v6 = v33;
      v2 = v34;
      goto LABEL_4;
    }

    v9 = v8;
    v6 = v33;
    v2 = v34;
  }

  while (v5);
LABEL_6:
  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return v31;
    }

    v5 = *(v2 + 8 * v8);
    ++v9;
    if (v5)
    {
      goto LABEL_9;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_25F1B088C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t static Task.create<>(callsite:)(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v14 - v7;
  v9 = a2[1];
  v14[0] = *a2;
  v14[1] = v9;
  v15[0] = a2[2];
  *(v15 + 9) = *(a2 + 41);
  sub_25F1B0C48(v14, &v16, a3, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  v10 = v16;
  v11 = sub_25F30546C();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a3;
  v12[5] = v10;

  result = sub_25F1B1A9C(0, 0, v8, &unk_25F307EB0, v12, a3);
  *a1 = v10;
  return result;
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  v9 = a2[1];
  v15[0] = *a2;
  v15[1] = v9;
  v16[0] = a2[2];
  *(v16 + 9) = *(a2 + 41);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F1B0C48(v15, &v17, a3, v10, MEMORY[0x277D84950]);
  v11 = v17;
  v12 = sub_25F30546C();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a3;
  v13[5] = v11;

  result = sub_25F1B2738(0, 0, v8, &unk_25F307EC8, v13, a3);
  *a1 = v11;
  return result;
}

uint64_t sub_25F1B0C48@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for PromiseFulfillment(255, a3, a4, a5);
  v8 = sub_25F30542C();
  v9 = sub_25F305C1C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  v13 = a1[1];
  v19[0] = *a1;
  v19[1] = v13;
  v20[0] = a1[2];
  *(v20 + 9) = *(a1 + 41);
  type metadata accessor for FulfillOnceState(0, v9, v7, v14);
  (*(*(v8 - 8) + 56))(v12, 1, 1, v8);
  v17 = xmmword_25F3077E0;
  v18 = 2;
  v15 = sub_25F1D1EE4(v12, v19, 0, 0, &v17, 0x6F7270206B736174, 0xEC0000006573696DLL, 0x656C6C69666C7566, 0xE900000000000064);
  result = (*(v10 + 8))(v12, v9);
  *a2 = v15;
  return result;
}

uint64_t sub_25F1B0E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = type metadata accessor for PromiseFulfillment(0, a5, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F1B0EF4, 0, 0);
}

uint64_t sub_25F1B0EF4()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_25F1B0FE4;
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);

  return MEMORY[0x2822007B8](v3, 0, 0, 0xD000000000000011, 0x800000025F317460, sub_25F1B5158, v1, v4);
}

uint64_t sub_25F1B0FE4()
{

  return MEMORY[0x2822009F8](sub_25F1B10FC, 0, 0);
}

uint64_t sub_25F1B10FC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_25F226D14(v3, v0[2]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F1B1190(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F1B51E0;

  return sub_25F1B0E1C(a1, v4, v5, v6, v7);
}

uint64_t sub_25F1B1250(uint64_t a1, void *a2)
{
  v24 = a1;
  v2 = a2[2];
  v3 = a2[3];
  v4 = a2[4];
  v5 = type metadata accessor for PromiseFulfillment(0, v2, v3, v4);
  v23 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v22 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v21 = sub_25F30542C();
  v10 = sub_25F305C1C();
  updated = type metadata accessor for FulfillOnceState.WaitingStateUpdateResult(0, v10, v5, MEMORY[0x277D84F78] + 8);
  v12 = *(updated - 8);
  v13 = MEMORY[0x28223BE20](updated);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  v26 = v2;
  v27 = v3;
  v28 = v4;
  v29 = v24;
  FulfillOnceState.updateWaitingState<A>(update:)(sub_25F1B5084, v25, MEMORY[0x277D84F78] + 8, v18);
  (*(v12 + 16))(v15, v17, updated);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v23;
    (*(v23 + 32))(v9, v15, v5);
    (*(v19 + 16))(v22, v9, v5);
    swift_checkMetadataState();
    sub_25F30541C();
    (*(v19 + 8))(v9, v5);
  }

  return (*(v12 + 8))(v17, updated);
}

uint64_t sub_25F1B1524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25F1B4740(a3, v25 - v10);
  v12 = sub_25F30546C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25F1B47B0(v11);
  }

  else
  {
    sub_25F30545C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_25F3053EC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_25F304EAC() + 32;
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

      sub_25F1B47B0(a3);

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

  sub_25F1B47B0(a3);
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

uint64_t sub_25F1B17E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25F1B4740(a3, v25 - v10);
  v12 = sub_25F30546C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25F1B47B0(v11);
  }

  else
  {
    sub_25F30545C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_25F3053EC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_25F304EAC() + 32;
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

      sub_25F1B47B0(a3);

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

  sub_25F1B47B0(a3);
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

uint64_t sub_25F1B1A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v26[-1] - v12;
  v27[0] = a4;
  v27[1] = a5;
  sub_25F1B4740(a3, &v26[-1] - v12);
  v14 = sub_25F30546C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_25F1B47B0(v13);
  }

  else
  {
    sub_25F30545C();
    (*(v15 + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_25F3053EC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_25F304EAC();
      sub_25F1B4818(v21 + 32, v27, a6, v26);

      v22 = v26[0];
      sub_25F1B47B0(a3);

      return v22;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25F1B47B0(a3);
  v23 = swift_allocObject();
  v23[2] = a6;
  v23[3] = a4;
  v23[4] = a5;
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}

uint64_t sub_25F1B1E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_25F1B1EA0, 0, 0);
}

uint64_t sub_25F1B1EA0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_25F1B1FA8;
  v6 = v0[4];
  v7 = v0[2];

  return MEMORY[0x282200830](v7, &unk_25F307FB8, v3, sub_25F1B5074, v4, 0, 0, v6);
}

uint64_t sub_25F1B1FA8()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F1B20F0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25F1B20F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_25F1B219C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F1AFDB0;

  return sub_25F1B1E7C(a1, v4, v5, v6, v7);
}

uint64_t sub_25F1B225C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v6 = type metadata accessor for PromiseFulfillment(0, a3, v5, MEMORY[0x277D84950]);
  v3[5] = v6;
  v3[6] = *(v6 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F1B2348, 0, 0);
}

uint64_t sub_25F1B2348()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_25F1B2438;
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);

  return MEMORY[0x2822007B8](v3, 0, 0, 0xD000000000000011, 0x800000025F317460, sub_25F1B507C, v1, v4);
}

uint64_t sub_25F1B2438()
{

  return MEMORY[0x2822009F8](sub_25F1B2550, 0, 0);
}

uint64_t sub_25F1B2550()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_25F226E20(v3, v0[2]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F1B2600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v6 = type metadata accessor for Task.Promise(0, a3, v5, MEMORY[0x277D84950]);
  return sub_25F1B1250(a1, v6);
}

void sub_25F1B2674(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  *&v6 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Task+Promise.swift";
  *(&v6 + 1) = 124;
  v7 = 2;
  v8 = xmmword_25F307E40;
  v9 = "create(callsite:)";
  v10 = 17;
  v11 = 2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v4 = type metadata accessor for Task.Promise(0, a2, v3, MEMORY[0x277D84950]);
  WitnessTable = swift_getWitnessTable();
  PromiseProtocol.cancel<>(callsite:)(&v6, v4, WitnessTable);
}

uint64_t sub_25F1B2738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24[-1] - v11;
  v24[5] = a4;
  v24[6] = a5;
  sub_25F1B4740(a3, &v24[-1] - v11);
  v13 = sub_25F30546C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_25F1B47B0(v12);
  }

  else
  {
    sub_25F30545C();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_25F3053EC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_25F304EAC();
      sub_25F1B4AF4(v20 + 32, v24);

      v21 = v24[0];
      sub_25F1B47B0(a3);

      return v21;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25F1B47B0(a3);
  if (v19 | v17)
  {
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = v17;
    v24[4] = v19;
  }

  return swift_task_create();
}

uint64_t sub_25F1B297C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for PromiseFulfillment(255, a3, a4, a5);
  v7 = sub_25F30542C();
  v8 = sub_25F305C1C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  (*(v9 + 16))(&v16 - v10, a1, v8);
  v12 = *(v7 - 8);
  v13 = (*(v12 + 48))(v11, 1, v7);
  v14 = *(v9 + 8);
  v14(v11, v8);
  if (v13 == 1)
  {
    v14(a1, v8);
    (*(v12 + 16))(a1, a2, v7);
    return (*(v12 + 56))(a1, 0, 1, v7);
  }

  else
  {
    result = sub_25F30627C();
    __break(1u);
  }

  return result;
}

uint64_t Task.Promise.cancel<A>(callsite:onInvalidationOf:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = swift_allocObject();
  *(v12 + 16) = *(a3 + 16);
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  *(v12 + 40) = v11;
  v13 = a1[1];
  *(v12 + 48) = *a1;
  *(v12 + 64) = v13;
  *(v12 + 80) = a1[2];
  *(v12 + 89) = *(a1 + 41);

  ConcurrentInvalidatable.observeInvalidation(_:)(sub_25F1B2D94, v12, a4, a5, &v15);

  if (v15)
  {
    CancelationToken<>.cancel<A>(onInvalidationOf:)(a2, a4, a5);
  }

  return result;
}

void sub_25F1B2CA8(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v13 = a2;
  v5 = a3[1];
  v11[0] = *a3;
  v11[1] = v5;
  v12[0] = a3[2];
  *(v12 + 9) = *(a3 + 41);
  sub_25F30543C();
  sub_25F1B4F70();
  v6 = swift_allocError();
  sub_25F304A2C();
  v10 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v8 = type metadata accessor for Task.Promise(0, a4, v7, MEMORY[0x277D84950]);
  WitnessTable = swift_getWitnessTable();
  sub_25F226F8C(v11, &v10, v8, WitnessTable);
}

uint64_t sub_25F1B2DA4(__int128 *a1, uint64_t a2, char *a3, uint64_t a4, char *a5, void *a6)
{
  v63 = a5;
  v62 = a4;
  v61 = a3;
  v59 = a2;
  v8 = a6[2];
  v7 = a6[3];
  v9 = a6[4];
  v10 = type metadata accessor for PromiseFulfillment(0, v8, v7, v9);
  v52 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v51 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v54 = &v50 - v13;
  v53 = sub_25F30542C();
  v14 = sub_25F305C1C();
  v55 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v50 - v18;
  v56 = v20;
  v58 = v10;
  v22 = type metadata accessor for FulfillOnceState.FulfillmentOutcome(0, v20, v10, v21);
  v57 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = a1[1];
  v76[0] = *a1;
  v76[1] = v26;
  *v77 = a1[2];
  *&v77[9] = *(a1 + 41);
  v71 = v8;
  v72 = v7;
  v73 = v9;
  v74 = v59;
  v75 = v61;
  v65 = v8;
  v66 = v7;
  v67 = v9;
  v28 = &v50 - v27;
  v68 = v62;
  v69 = v63;
  v29 = v78;
  FulfillOnceState.fulfill(callsite:makeFulfilledState:ifAlreadyFulfilled:)(v76, sub_25F1B46F4, v70, sub_25F1B471C, v64);
  if (!v29)
  {
    v31 = v19;
    v32 = v55;
    v63 = v17;
    v33 = v57;
    (*(v57 + 16))(v25, v28, v22);
    v34 = v56;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v36 = (*(*(TupleTypeMetadata2 - 8) + 48))(v25, 1, TupleTypeMetadata2);
    LODWORD(v78) = v36 != 1;
    if (v36 == 1)
    {
      v47 = *(v33 + 8);
      v47(v28, v22);
      v47(v25, v22);
    }

    else
    {
      v61 = v28;
      v62 = v22;
      v37 = *(TupleTypeMetadata2 + 48);
      v38 = v31;
      (*(v32 + 32))(v31, v25, v34);
      v39 = v52;
      v40 = &v25[v37];
      v41 = v38;
      v42 = v54;
      (*(v52 + 32))(v54, v40, v58);
      v43 = v63;
      (*(v32 + 16))(v63, v41, v34);
      v44 = v53;
      v45 = *(v53 - 8);
      if ((*(v45 + 48))(v43, 1, v53) == 1)
      {
        (*(v39 + 8))(v42, v58);
        v46 = *(v32 + 8);
        v46(v41, v34);
        (*(v57 + 8))(v61, v62);
        v46(v43, v34);
      }

      else
      {
        v48 = *(v39 + 16);
        v60 = v41;
        v48(v51, v42, v58);
        sub_25F30541C();
        (*(v39 + 8))(v42, v58);
        (*(v32 + 8))(v60, v34);
        (*(v57 + 8))(v61, v62);
        (*(v45 + 8))(v43, v44);
      }
    }

    v30 = v78;
  }

  return v30 & 1;
}

uint64_t sub_25F1B3408(uint64_t a1, __int128 *a2, uint64_t (*a3)(_OWORD *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = type metadata accessor for PromiseFulfillment(0, a5, a6, a7);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v18 - v12;
  v14 = a2[5];
  v24 = a2[4];
  v25 = v14;
  v26 = *(a2 + 12);
  v15 = a2[1];
  v20 = *a2;
  v21 = v15;
  v16 = a2[3];
  v22 = a2[2];
  v23 = v16;
  (*(v11 + 16))(v18 - v12, a1, v10);
  LODWORD(a2) = swift_getEnumCaseMultiPayload();
  result = (*(v11 + 8))(v13, v10);
  if (a2 <= 1)
  {
    v18[4] = v24;
    v18[5] = v25;
    v19 = v26;
    v18[0] = v20;
    v18[1] = v21;
    v18[3] = v23;
    v18[2] = v22;
    return a3(v18);
  }

  return result;
}

double Continuation.init(wrapping:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  *&v17 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Task+Promise.swift";
  *(&v17 + 1) = 124;
  v18 = 2;
  v19 = xmmword_25F307E50;
  v20 = "init(wrapping:)";
  v21 = 15;
  v22 = 2;
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = v9;
  default argument 2 of Continuation.init(callsite:initializationInfo:failureMode:resume:)(&v15);
  v13 = v15;
  v14 = v16;
  Continuation.init(callsite:initializationInfo:failureMode:resume:)(&v17, 0, 0, &v13, sub_25F1B3780, v10, a2, a3, &v23, a4);
  v11 = v24;
  result = *&v23;
  *a5 = v23;
  *(a5 + 16) = v11;
  return result;
}

uint64_t sub_25F1B36C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a2;
  *&v9 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Task+Promise.swift";
  *(&v9 + 1) = 124;
  v10 = 2;
  v11 = xmmword_25F307E60;
  v12 = "init(wrapping:)";
  v13 = 15;
  v14 = 2;
  v6 = type metadata accessor for Task.Promise(0, a3, a4, a5);
  WitnessTable = swift_getWitnessTable();
  return PromiseProtocol.fulfill(callsite:with:)(&v9, a1, v6, WitnessTable);
}

uint64_t Continuation.track(task:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v9 = *v2;
  v8 = v2[1];
  v10 = v2[2];
  v11 = sub_25F30546C();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = *(a2 + 16);
  *(v12 + 48) = *(a2 + 32);
  *(v12 + 56) = v9;
  *(v12 + 64) = v8;
  *(v12 + 72) = v10;
  *(v12 + 80) = a1;

  sub_25F1B1524(0, 0, v7, &unk_25F307ED8, v12);
}

uint64_t sub_25F1B38D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = v19;
  v8[7] = v20;
  v8[5] = a8;
  v14 = sub_25F30678C();
  v8[8] = v14;
  v8[9] = *(v14 - 8);
  v15 = swift_task_alloc();
  v8[10] = v15;
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v16 = swift_task_alloc();
  v8[11] = v16;
  *v16 = v8;
  v16[1] = sub_25F1B3A30;

  return MEMORY[0x282200440](v15, a7, a8);
}

uint64_t sub_25F1B3A30()
{

  return MEMORY[0x2822009F8](sub_25F1B3B2C, 0, 0);
}

uint64_t sub_25F1B3B2C()
{
  v15 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  *&v9 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Task+Promise.swift";
  *(&v9 + 1) = 124;
  v10 = 2;
  v11 = xmmword_25F307E70;
  v12 = "track(task:)";
  v13 = 12;
  v14 = 2;
  type metadata accessor for Continuation(0, v5, v6, v3);
  Continuation.resume(with:callsite:)(v1, &v9);
  (*(v2 + 8))(v1, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_25F1B3C14(uint64_t a1)
{
  v12 = v1[4];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[10];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_25F1AFDB0;

  return sub_25F1B38D8(a1, v4, v5, v6, v7, v8, v9, v12);
}

uint64_t Continuation.track<A>(task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v13 = *v4;
  v12 = v4[1];
  v14 = v4[2];
  v15 = sub_25F30546C();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = *(a2 + 16);
  v16[5] = a3;
  v16[6] = a4;
  v16[7] = a1;
  v16[8] = v13;
  v16[9] = v12;
  v16[10] = v14;

  sub_25F1B1524(0, 0, v11, &unk_25F307EE8, v16);
}

uint64_t sub_25F1B3E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v15;
  v8[8] = v16;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[9] = *(v15 - 8);
  v8[10] = swift_task_alloc();
  v8[11] = swift_task_alloc();
  v8[12] = *(a8 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = sub_25F30678C();
  v11 = swift_task_alloc();
  v8[15] = v11;
  v12 = swift_task_alloc();
  v8[16] = v12;
  *v12 = v8;
  v12[1] = sub_25F1B4028;

  return MEMORY[0x282200440](v11, a4, a8);
}

uint64_t sub_25F1B4028()
{

  return MEMORY[0x2822009F8](sub_25F1B4124, 0, 0);
}

uint64_t sub_25F1B4124()
{
  v31 = v0;
  v1 = v0[15];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = v0[10];
    v2 = v0[11];
    v4 = v0[9];
    v5 = v0[7];
    v6 = *(v4 + 32);
    v6(v2, v1, v5);
    (*(v4 + 16))(v3, v2, v5);
    v7 = sub_25F30650C();
    v8 = v0[10];
    if (v7)
    {
      v9 = v7;
      (*(v0[9] + 8))(v0[10], v0[7]);
    }

    else
    {
      v15 = v0[7];
      v9 = swift_allocError();
      v6(v16, v8, v15);
    }

    v17 = v0[11];
    v18 = v0[9];
    v19 = v0[6];
    v20 = v0[7];
    v0[2] = v9;
    *&v25 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Task+Promise.swift";
    *(&v25 + 1) = 124;
    v26 = 2;
    v27 = xmmword_25F307E90;
    v28 = "track(task:)";
    v29 = 12;
    v30 = 2;
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    v22 = type metadata accessor for Continuation(0, v19, v21, MEMORY[0x277D84950]);
    Continuation.resume(throwing:callsite:)((v0 + 2), &v25, v22);

    (*(v18 + 8))(v17, v20);
  }

  else
  {
    v11 = v0[12];
    v10 = v0[13];
    v12 = v0[6];
    (*(v11 + 32))(v10, v1, v12);
    *&v25 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Task+Promise.swift";
    *(&v25 + 1) = 124;
    v26 = 2;
    v27 = xmmword_25F307E80;
    v28 = "track(task:)";
    v29 = 12;
    v30 = 2;
    v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
    v14 = type metadata accessor for Continuation(0, v12, v13, MEMORY[0x277D84950]);
    Continuation.resume(returning:callsite:)(v10, &v25, v14);
    (*(v11 + 8))(v10, v12);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_25F1B4424(uint64_t a1)
{
  v12 = v1[4];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[10];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_25F1B51E0;

  return sub_25F1B3E60(a1, v4, v5, v6, v7, v8, v9, v12);
}

uint64_t sub_25F1B4520(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F1B455C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for AnyComparable(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AnyComparable(uint64_t result, int a2, int a3)
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

uint64_t sub_25F1B4740(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F1B47B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F1B4818@<X0>(uint64_t result@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (result)
  {
    v10 = *a5;
    v9 = a5[1];
    v11 = swift_allocObject();
    v11[2] = a6;
    v11[3] = v10;
    v11[4] = v9;

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25F1B4904(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25F1B49FC;

  return v6(a1);
}

uint64_t sub_25F1B49FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25F1B4AF4@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25F1B4BB0(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_25F1B4CA4;

  return v5(v2 + 16);
}

uint64_t sub_25F1B4CA4()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_25F1B4DB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F1B51E0;

  return sub_25F1B4BB0(a1, v4);
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

uint64_t sub_25F1B4EB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F1B51E0;

  return sub_25F1B4904(a1, v4);
}

unint64_t sub_25F1B4F70()
{
  result = qword_27FD52BD0;
  if (!qword_27FD52BD0)
  {
    sub_25F30543C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD52BD0);
  }

  return result;
}

uint64_t sub_25F1B4FC8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F1B51E0;

  return sub_25F1B225C(a1, v4, v5);
}

uint64_t sub_25F1B5090(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F1B51E0;

  return sub_25F1B4904(a1, v4);
}

_OWORD *sub_25F1B51E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1;
  if (a1)
  {
    a1 = type metadata accessor for QueryResolutions.Resolution(0, a4, a5, a4);
  }

  else
  {
    a2 = 0;
    v9[2] = 0;
  }

  v9[0] = v6;
  v9[1] = a2;
  v9[3] = a1;
  return sub_25F24DC78(v9, a3);
}

void *QueryResolutions.init(_:)@<X0>(void *(*a1)(uint64_t *__return_ptr, uint64_t)@<X0>, void *a2@<X8>)
{
  sub_25F1B5A0C(MEMORY[0x277D84F90]);

  result = a1(&v6, v4);
  *a2 = v6;
  return result;
}

uint64_t QueryResolutions.resolutions.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52BD8, &qword_25F307FE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3077D0;
  *(inited + 32) = v3;

  static QueryResolutionsBuilder.buildBlock(_:)(inited, a1);
  swift_setDeallocating();
  return sub_25F1B5B28(inited + 32);
}

uint64_t QueryResolutions.value<A>(for:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_25F1B5440(a3, *v5, a3, a4);
  if (v9)
  {
    v11 = v9;
    v12 = v10;
    v9(a1, a2);

    return sub_25F1AC3AC(v11, v12);
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v15 = *(*(AssociatedTypeWitness - 8) + 56);

    return v15(a5, 1, 1, AssociatedTypeWitness);
  }
}

uint64_t sub_25F1B5440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v7 = sub_25F2192AC(a1);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  sub_25F1B7118(*(a2 + 56) + 32 * v7, v12);
  type metadata accessor for QueryResolutions.Resolution(0, a3, a4, v9);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

unint64_t static QueryResolutions.empty.getter@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25F1B5A0C(MEMORY[0x277D84F90]);
  *a1 = result;
  return result;
}

Swift::Void __swiftcall QueryResolutions.merge(with:)(PreviewsFoundationOS::QueryResolutions with)
{
  v2 = *with.storage.resolutions._rawValue;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  *v1 = 0x8000000000000000;
  sub_25F21F86C(v2, sub_25F21F83C, 0, isUniquelyReferenced_nonNull_native, &v5);

  v4 = v5;

  *v1 = v4;
}

uint64_t sub_25F1B55D0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52BD8, &qword_25F307FE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3077D0;
  *(inited + 32) = v3;

  static QueryResolutionsBuilder.buildBlock(_:)(inited, a1);
  swift_setDeallocating();
  return sub_25F1B5B28(inited + 32);
}

uint64_t static Query.resolve(using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  return sub_25F1B5714(a1, a2, a3, a4, sub_25F1B5B58, a5);
}

{
  return sub_25F1B5714(a1, a2, a3, a4, sub_25F1B5B80, a5);
}

_OWORD *static Query.resolve(using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{

  *a5 = sub_25F1B5A0C(MEMORY[0x277D84F90]);
  return sub_25F1B51E4(a1, a2, a3, a3, a4);
}

uint64_t sub_25F1B5714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, unint64_t *a7@<X8>)
{
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a1;
  v13[5] = a2;

  static Query.resolve(using:)(a6, v13, a3, a4, a7);
}

unint64_t sub_25F1B57B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52CA0, &qword_25F308158);
    v3 = sub_25F30634C();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      sub_25F1B708C(v7, v8, v9);
      result = sub_25F219234(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25F1B58D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C80, &qword_25F308138);
    v3 = sub_25F30634C();
    v4 = a1 + 32;

    while (1)
    {
      sub_25F1B7174(v4, &v16, &qword_27FD52C88, &qword_25F308140);
      v5 = v16;
      v6 = v17;
      result = sub_25F219234(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25F1B5A0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52CB0, &unk_25F30DC70);
    v3 = sub_25F30634C();
    for (i = a1 + 32; ; i += 40)
    {
      sub_25F1B7174(i, &v11, qword_27FD52CB8, &qword_25F308170);
      v5 = v11;
      result = sub_25F2192AC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_25F1B707C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25F1B5BC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C20, &qword_25F3080D8);
    v3 = sub_25F30634C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_25F219234(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25F1B5CCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52CA8, &unk_25F308160);
    v3 = sub_25F30634C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_25F219234(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25F1B5DE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52BE0, &unk_25F30DC60);
  v3 = sub_25F30634C();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_25F21FC78(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 1);
    v13 = *v7;

    result = sub_25F21FC78(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25F1B5EF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C90, &qword_25F308148);
    v3 = sub_25F30634C();
    v4 = a1 + 32;

    while (1)
    {
      sub_25F1B7174(v4, &v13, &qword_27FD52C98, &qword_25F308150);
      v5 = v13;
      v6 = v14;
      result = sub_25F219234(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25F1B707C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_25F1B6020(double *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C78, &qword_25F308130);
  v3 = sub_25F30634C();
  v4 = a1[4];
  v5 = *(a1 + 5);
  v6 = sub_25F2192E8(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_25F2192E8(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25F1B6130(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C68, &qword_25F308120);
    v3 = sub_25F30634C();
    v4 = a1 + 32;

    while (1)
    {
      sub_25F1B7174(v4, v13, &qword_27FD52C70, &qword_25F308128);
      result = sub_25F21935C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_25F1B707C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_25F1B626C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C60, &unk_25F30DC40);
  v3 = sub_25F30634C();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_25F2193A0(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_25F2193A0(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25F1B637C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C50, &qword_25F308108);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C58, &unk_25F308110);
    v7 = sub_25F30634C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25F1B7174(v9, v5, &qword_27FD52C50, &qword_25F308108);
      v11 = *v5;
      v12 = v5[1];
      result = sub_25F219234(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_25F3044DC();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25F1B6568(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C38, &unk_25F3080F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C40, &unk_25F30DC30);
    v7 = sub_25F30634C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25F1B7174(v9, v5, &qword_27FD52C38, &unk_25F3080F0);
      v12 = *v5;
      v11 = v5[1];
      result = sub_25F219234(*v5, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v7[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C48, &qword_25F308100);
      result = sub_25F1B700C(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_25F1B6748(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C30, &qword_25F3080E8);
  v3 = sub_25F30634C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_25F21940C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_25F21940C(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25F1B6850(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C28, &qword_25F3080E0);
    v3 = sub_25F30634C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_25F21FC78(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25F1B692C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C10, &qword_25F3080C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C18, &qword_25F3080D0);
    v7 = sub_25F30634C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_25F1B7174(v9, v5, &qword_27FD52C10, &qword_25F3080C8);
      result = sub_25F219494(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CrashReport.ID(0);
      result = sub_25F1B6FA8(v5, v14 + *(*(v15 - 8) + 72) * v13);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_25F1B6AFC(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C08, &qword_25F3080C0);
  v3 = sub_25F30634C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_25F2192AC(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_25F2192AC(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25F1B6C04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52BF8, &qword_25F3080B0);
  v3 = sub_25F30634C();
  v4 = *(a1 + 80);
  v25 = *(a1 + 64);
  v26 = v4;
  v27[0] = *(a1 + 96);
  *(v27 + 9) = *(a1 + 105);
  v5 = *(a1 + 48);
  v23 = *(a1 + 32);
  v24 = v5;
  v7 = *(&v23 + 1);
  v6 = v23;
  result = sub_25F219518(v23, *(&v23 + 1));
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    sub_25F1B7174(&v23, v22, &qword_27FD52C00, &qword_25F3080B8);
    return v3;
  }

  v10 = (a1 + 128);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v6;
    v11[1] = v7;
    v12 = (v3[7] + 80 * result);
    *v12 = v24;
    v13 = v25;
    v14 = v26;
    v15 = v27[0];
    *(v12 + 57) = *(v27 + 9);
    v12[2] = v14;
    v12[3] = v15;
    v12[1] = v13;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    sub_25F1B7174(&v23, v22, &qword_27FD52C00, &qword_25F3080B8);
    v19 = v10[3];
    v25 = v10[2];
    v26 = v19;
    v27[0] = v10[4];
    *(v27 + 9) = *(v10 + 73);
    v20 = v10[1];
    v23 = *v10;
    v24 = v20;
    v7 = *(&v23 + 1);
    v6 = v23;
    result = sub_25F219518(v23, *(&v23 + 1));
    v10 += 6;
    if (v21)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25F1B6DBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52BF0, &qword_25F30DC00);
    v3 = sub_25F30634C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_25F2192AC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_25F1B6E98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52BE8, &unk_25F3080A0);
  v3 = sub_25F30634C();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_25F21962C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 4 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 2);
    v15 = *v10;

    v8 = sub_25F21962C(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F1B6FA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CrashReport.ID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F1B700C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C48, &qword_25F308100);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_OWORD *sub_25F1B707C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_25F1B708C(uint64_t a1, unint64_t a2, char a3)
{
  if (a3 == 4)
  {
    return sub_25F1B70AC(a1, a2);
  }

  if (!a3)
  {
  }

  return a1;
}

uint64_t sub_25F1B70AC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_25F1B7118(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25F1B7174(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25F1B71DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F1B7218(uint64_t *a1, int a2)
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

uint64_t sub_25F1B7260(uint64_t result, int a2, int a3)
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

uint64_t compare<A, B, C>(_:_:of:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a6;
  v32 = a5;
  v28 = *(*a2 + *MEMORY[0x277D84DE8] + 8);
  v30 = *(v28 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v29 = &v27 - v10;
  v13 = *(v11 + v12 + 8);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v9);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - v18;
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  if (sub_25F304DCC())
  {
    v20 = v29;
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    v21 = v28;
    if (sub_25F304DCC())
    {
      v22 = *(v30 + 8);
      v22(v8, v21);
      v22(v20, v21);
      v23 = 0;
    }

    else
    {
      v23 = sub_25F304CCC();
      v24 = *(v30 + 8);
      v24(v8, v21);
      v24(v20, v21);
    }
  }

  else
  {
    v23 = sub_25F304CCC();
  }

  v25 = *(v14 + 8);
  v25(v17, v13);
  v25(v19, v13);
  return v23 & 1;
}

uint64_t compare<A, B, C, D>(_:_:_:of:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  v49 = a8;
  v50 = a7;
  v53 = a6;
  v9 = *a3;
  v46 = a3;
  v48 = *(v9 + *MEMORY[0x277D84DE8] + 8);
  v47 = *(v48 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v44 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v45 = &v43 - v13;
  v16 = *(v14 + v15 + 8);
  v51 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v12);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v43 - v21;
  v25 = *(v23 + v24 + 8);
  v54 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v20);
  v28 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v43 - v29;
  swift_getAtKeyPath();
  v52 = a5;
  swift_getAtKeyPath();
  if (sub_25F304DCC())
  {
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    if (sub_25F304DCC())
    {
      v53 = v22;
      v31 = v45;
      swift_getAtKeyPath();
      v32 = v44;
      swift_getAtKeyPath();
      v33 = v48;
      if (sub_25F304DCC())
      {
        v34 = *(v47 + 8);
        v34(v32, v33);
        v34(v31, v33);
        v35 = *(v51 + 8);
        v35(v19, v16);
        v35(v53, v16);
        v36 = 0;
      }

      else
      {
        v36 = sub_25F304CCC();
        v38 = v32;
        v39 = *(v47 + 8);
        v39(v38, v33);
        v39(v31, v33);
        v40 = *(v51 + 8);
        v40(v19, v16);
        v40(v53, v16);
      }
    }

    else
    {
      v36 = sub_25F304CCC();
      v37 = *(v51 + 8);
      v37(v19, v16);
      v37(v22, v16);
    }
  }

  else
  {
    v36 = sub_25F304CCC();
  }

  v41 = *(v54 + 8);
  v41(v28, v25);
  v41(v30, v25);
  return v36 & 1;
}

uint64_t compare<A, B, C, D, E>(_:_:_:_:of:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v73 = a8;
  v76 = a7;
  v68 = a3;
  v10 = *a4;
  v65 = a4;
  v67 = *(v10 + *MEMORY[0x277D84DE8] + 8);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v63 = &v62 - v12;
  v13 = MEMORY[0x28223BE20](v12);
  v64 = &v62 - v13;
  v72 = *(v14 + v15 + 8);
  v69 = *(v72 - 8);
  v16 = MEMORY[0x28223BE20](v13);
  v70 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v71 = &v62 - v19;
  v22 = *(v20 + v21 + 8);
  v74 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v18);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v62 - v27;
  v31 = *(v29 + v30 + 8);
  v77 = *(v31 - 8);
  v32 = MEMORY[0x28223BE20](v26);
  v34 = &v62 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v62 - v35;
  v75 = v37;
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  if ((sub_25F304DCC() & 1) == 0)
  {
    v52 = sub_25F304CCC();
    goto LABEL_12;
  }

  swift_getAtKeyPath();
  swift_getAtKeyPath();
  v38 = v22;
  if ((sub_25F304DCC() & 1) == 0)
  {
    v52 = sub_25F304CCC();
    v53 = *(v74 + 8);
    v53(v25, v38);
    v53(v28, v38);
    goto LABEL_12;
  }

  v73 = v22;
  v76 = v28;
  v39 = v71;
  swift_getAtKeyPath();
  v40 = v70;
  v41 = v39;
  swift_getAtKeyPath();
  v42 = v72;
  if (sub_25F304DCC())
  {
    v43 = v64;
    swift_getAtKeyPath();
    v44 = v63;
    swift_getAtKeyPath();
    v45 = v67;
    if (sub_25F304DCC())
    {
      v46 = *(v66 + 8);
      v46(v44, v45);
      v46(v43, v45);
      v47 = *(v69 + 8);
      v48 = v72;
      v47(v70, v72);
      v47(v71, v48);
      v49 = *(v74 + 8);
      v50 = v25;
      v51 = v73;
      v49(v50, v73);
      v49(v76, v51);
      v52 = 0;
      goto LABEL_12;
    }

    v52 = sub_25F304CCC();
    v55 = *(v66 + 8);
    v55(v44, v45);
    v55(v43, v45);
    v56 = *(v69 + 8);
    v57 = v72;
    v56(v70, v72);
    v56(v71, v57);
  }

  else
  {
    v52 = sub_25F304CCC();
    v54 = *(v69 + 8);
    v54(v40, v42);
    v54(v41, v42);
  }

  v58 = v73;
  v59 = *(v74 + 8);
  v59(v25, v73);
  v59(v76, v58);
LABEL_12:
  v60 = *(v77 + 8);
  v60(v34, v31);
  v60(v36, v31);
  return v52 & 1;
}

void *mergeEnvironmentVariables(environments:defaultMergeHandlers:additionalMergeHandlers:)(uint64_t a1, Swift::OpaquePointer a2, Swift::OpaquePointer a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    right._rawValue = *(a1 + 8 * v3 + 24);

    do
    {

      mergeEnvironmentVariables(left:right:defaultMergeHandlers:additionalMergeHandlers:)(v6, &right, a2, a3);

      --v3;
    }

    while (v3);
    return right._rawValue;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];

    return sub_25F1B5CCC(v8);
  }
}

Swift::Void __swiftcall mergeEnvironmentVariables(left:right:defaultMergeHandlers:additionalMergeHandlers:)(Swift::OpaquePointer left, Swift::OpaquePointer *right, Swift::OpaquePointer defaultMergeHandlers, Swift::OpaquePointer additionalMergeHandlers)
{

  v7 = sub_25F1B8970(v6);

  v9 = sub_25F1B8A8C(v8, v7);
  v10 = *(v9 + 16);
  rawValue = left._rawValue;
  if (v10)
  {
    v11 = sub_25F1BAB18(v10, 0, &qword_27FD52E50, &qword_25F3084A0);
    v88 = sub_25F1BE7F8(&v95, v11 + 4, v10, v9);
    v12 = v95;

    sub_25F1BF034(v12);
    if (v88 != v10)
    {
      goto LABEL_71;
    }
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v95 = v11;
  sub_25F1BA5F8(&v95);

  v13 = v95;
  v95 = defaultMergeHandlers._rawValue;

  sub_25F1BA1D8(v14);
  v10 = v95;
  v82 = *(v13 + 2);
  if (v82)
  {
    v15 = 0;
    v85 = v95;
    v86 = *(v95 + 2);
    v81 = v13 + 32;
    v78 = v13;
    v79 = v95 + 32;
    v84 = right;
    while (1)
    {
      if (v15 >= *(v13 + 2))
      {
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v16 = &v81[16 * v15];
      v17 = *v16;
      v18 = v16[1];
      v19 = *(left._rawValue + 2);

      v91 = v17;
      if (v19 && (v20 = sub_25F219234(v17, v18), (v21 & 1) != 0))
      {
        v22 = (*(left._rawValue + 7) + 16 * v20);
        v23 = v22[1];
        v87 = *v22;

        if (!v86)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v87 = 0;
        v23 = 0;
        if (!v86)
        {
LABEL_13:

          if (*(v8 + 16))
          {
            goto LABEL_46;
          }

LABEL_47:
          if (!*(left._rawValue + 2))
          {
            goto LABEL_7;
          }

          v58 = sub_25F219234(v91, v18);
          if ((v59 & 1) == 0)
          {
            goto LABEL_7;
          }

          v60 = (*(left._rawValue + 7) + 16 * v58);
          v61 = *v60;
          v10 = v60[1];

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v95 = right->_rawValue;
          v63 = v95;
          v64 = sub_25F219234(v91, v18);
          v66 = *(v63 + 2);
          v67 = (v65 & 1) == 0;
          v38 = __OFADD__(v66, v67);
          v68 = v66 + v67;
          if (!v38)
          {
            v69 = v65;
            if (*(v63 + 3) >= v68)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_54;
              }

              v73 = v64;
              sub_25F21DEE4();
              v64 = v73;
              v71 = v95;
              if ((v69 & 1) == 0)
              {
                goto LABEL_57;
              }

LABEL_55:
              v72 = (*(v71 + 7) + 16 * v64);
              *v72 = v61;
              v72[1] = v10;

LABEL_59:
              v8 = v71;
              right->_rawValue = v71;
              v10 = v85;
              goto LABEL_8;
            }

            sub_25F21AC68(v68, isUniquelyReferenced_nonNull_native);
            v64 = sub_25F219234(v91, v18);
            if ((v69 & 1) != (v70 & 1))
            {
LABEL_72:
              sub_25F30665C();
              __break(1u);

              __break(1u);
              return;
            }

LABEL_54:
            v71 = v95;
            if (v69)
            {
              goto LABEL_55;
            }

LABEL_57:
            *&v71[8 * (v64 >> 6) + 64] |= 1 << v64;
            v74 = (*(v71 + 6) + 16 * v64);
            *v74 = v91;
            v74[1] = v18;
            v75 = (*(v71 + 7) + 16 * v64);
            *v75 = v61;
            v75[1] = v10;
            v76 = *(v71 + 2);
            v38 = __OFADD__(v76, 1);
            v77 = v76 + 1;
            if (!v38)
            {
              *(v71 + 2) = v77;
              goto LABEL_59;
            }

LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

LABEL_69:
          __break(1u);
          goto LABEL_70;
        }
      }

      v83 = v15;
      v24 = 0;
      v25 = 0;
      v26 = v79;
      v27 = v8;
      v89 = v18;
      v28 = v91;
      do
      {
        if (v25 >= *(v10 + 2))
        {
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        sub_25F1BF03C(v26, &v95);
        v29 = v96;
        v30 = v97;
        __swift_project_boxed_opaque_existential_1(&v95, v96);
        if (v27[2] && (v31 = sub_25F219234(v28, v18), (v32 & 1) != 0))
        {
          v33 = v27;
          v34 = (v27[7] + 16 * v31);
          v35 = *v34;
          v36 = v34[1];

          v37 = v35;
        }

        else
        {
          v33 = v27;
          v37 = 0;
          v36 = 0;
        }

        (*(v30 + 8))(&v93, v91, v89, v87, v23, v37, v36, v29, v30);

        v10 = v94;
        if (v94 == 1)
        {
          v27 = v33;
          v18 = v89;
          v28 = v91;
          goto LABEL_18;
        }

        v87 = v93;

        v38 = __OFADD__(v24++, 1);
        if (v38)
        {
          goto LABEL_65;
        }

        if (v10)
        {
          v39 = swift_isUniquelyReferenced_nonNull_native();
          v27 = v84->_rawValue;
          v18 = v89;
          v28 = v91;
          v40 = sub_25F219234(v91, v89);
          v42 = v27[2];
          v43 = (v41 & 1) == 0;
          v38 = __OFADD__(v42, v43);
          v44 = v42 + v43;
          if (v38)
          {
            goto LABEL_66;
          }

          v45 = v41;
          if (v27[3] >= v44)
          {
            if (v39)
            {
              goto LABEL_36;
            }

            v52 = v40;
            sub_25F21DEE4();
            v40 = v52;
            if ((v45 & 1) == 0)
            {
              goto LABEL_40;
            }

LABEL_37:
            v51 = (v27[7] + 16 * v40);
            *v51 = v87;
            v51[1] = v10;
          }

          else
          {
            sub_25F21AC68(v44, v39);
            v40 = sub_25F219234(v91, v89);
            if ((v45 & 1) != (v46 & 1))
            {
              goto LABEL_72;
            }

LABEL_36:
            if (v45)
            {
              goto LABEL_37;
            }

LABEL_40:
            v27[(v40 >> 6) + 8] |= 1 << v40;
            v53 = (v27[6] + 16 * v40);
            *v53 = v91;
            v53[1] = v89;
            v54 = (v27[7] + 16 * v40);
            *v54 = v87;
            v54[1] = v10;
            v55 = v27[2];
            v38 = __OFADD__(v55, 1);
            v56 = v55 + 1;
            if (v38)
            {
              goto LABEL_67;
            }

            v27[2] = v56;

            sub_25F1BF0A0(v87, v10);
          }

          v84->_rawValue = v27;
          v23 = v10;
          goto LABEL_18;
        }

        v27 = v33;
        v18 = v89;
        v28 = v91;
        v47 = sub_25F219234(v91, v89);
        if (v48)
        {
          v49 = v47;
          v50 = swift_isUniquelyReferenced_nonNull_native();
          v27 = v84->_rawValue;
          v92 = v84->_rawValue;
          if (!v50)
          {
            sub_25F21DEE4();
            v27 = v92;
          }

          sub_25F1BAE98(v49, v27);
          v23 = 0;
          v84->_rawValue = v27;
        }

        else
        {
          v23 = 0;
        }

LABEL_18:
        ++v25;
        __swift_destroy_boxed_opaque_existential_1(&v95);
        v26 += 40;
        v10 = v85;
      }

      while (v86 != v25);
      v8 = v27;

      if (v24)
      {

        v15 = v83;
        right = v84;
        left._rawValue = rawValue;
        v13 = v78;
        goto LABEL_8;
      }

      v15 = v83;
      right = v84;
      left._rawValue = rawValue;
      v13 = v78;
      if (!v27[2])
      {
        goto LABEL_47;
      }

LABEL_46:
      sub_25F219234(v91, v18);
      if ((v57 & 1) == 0)
      {
        goto LABEL_47;
      }

LABEL_7:

LABEL_8:
      if (++v15 == v82)
      {

        return;
      }
    }
  }
}

uint64_t sub_25F1B8970(uint64_t a1)
{
  result = MEMORY[0x25F8D77F0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_25F1BBD78(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F1B8A8C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_25F1BBD78(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t DYLDEnvironmentVariablePathMergeHandler.merge(key:left:right:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>, uint64_t a6@<X0>, uint64_t a7@<X1>)
{
  if (qword_27FD52748 != -1)
  {
    v19 = a6;
    v20 = a7;
    swift_once();
    a6 = v19;
    a7 = v20;
  }

  result = sub_25F1B9878(a6, a7, qword_27FD52D40);
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D48, &unk_25F308200);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25F3081E0;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    *(inited + 48) = a3;
    *(inited + 56) = a4;

    v14 = splitAndDedupeDYLDPathEnvironmentValues(_:)(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D50, &qword_25F3085B0);
    swift_arrayDestroy();
    sub_25F1B9110(v14);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D58, &qword_25F308210);
    sub_25F1BF0B4();
    sub_25F1BF118();
    v15 = sub_25F3051DC();
    v17 = v16;

    if ((v17 & 0x2000000000000000) != 0)
    {
      v18 = HIBYTE(v17) & 0xF;
    }

    else
    {
      v18 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      *a5 = v15;
      a5[1] = v17;
    }

    else
    {

      *a5 = 0;
      a5[1] = 0;
    }
  }

  else
  {
    *a5 = xmmword_25F3081D0;
  }

  return result;
}

Swift::Bool __swiftcall isDYLDParseablePathKey(_:)(Swift::String a1)
{
  if (qword_27FD52748 != -1)
  {
    countAndFlagsBits = a1._countAndFlagsBits;
    object = a1._object;
    swift_once();
    a1._countAndFlagsBits = countAndFlagsBits;
    a1._object = object;
  }

  v2 = qword_27FD52D40;

  return sub_25F1B9878(a1._countAndFlagsBits, a1._object, v2);
}

void *splitAndDedupeDYLDPathEnvironmentValues(_:)(uint64_t a1)
{
  sub_25F1B9BC4(MEMORY[0x277D84F90], &v33);
  v31 = *(a1 + 16);
  if (v31)
  {
    v2 = 0;
    v30 = a1 + 32;
    while (1)
    {
      v3 = (v30 + 16 * v2);
      if (v3[1])
      {
        v4 = *v3;
        v5 = v3[1];
      }

      else
      {
        v4 = 0;
        v5 = 0xE000000000000000;
      }

      v6 = splitDYLDPathEnvironmentValue(_:)(v4, v5);

      v7 = *(v6 + 16);
      if (v7)
      {
        break;
      }

LABEL_3:
      ++v2;

      if (v2 == v31)
      {
        goto LABEL_27;
      }
    }

    v8 = 0;
    v9 = v6 + 32;
    while (1)
    {
      v10 = (v9 + 16 * v8);
      v12 = *v10;
      v11 = v10[1];
      v13 = v34;
      if (*(v34 + 16))
      {
        sub_25F30671C();

        sub_25F304F0C();
        v14 = sub_25F30676C();
        v15 = -1 << *(v13 + 32);
        v16 = v14 & ~v15;
        if ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
        {
          v17 = ~v15;
          while (1)
          {
            v18 = (*(v13 + 48) + 16 * v16);
            v19 = *v18 == v12 && v18[1] == v11;
            if (v19 || (sub_25F30659C() & 1) != 0)
            {
              break;
            }

            v16 = (v16 + 1) & v17;
            if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          goto LABEL_10;
        }
      }

      else
      {
      }

LABEL_22:

      sub_25F1BBD78(&v32, v12, v11);

      v20 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_25F2EFB20(0, *(v20 + 2) + 1, 1, v20);
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_25F2EFB20((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v23 = &v20[16 * v22];
      *(v23 + 4) = v12;
      *(v23 + 5) = v11;
      v33 = v20;
LABEL_10:
      if (++v8 == v7)
      {
        goto LABEL_3;
      }
    }
  }

LABEL_27:
  v24 = v33;
  v25 = v34;
  v26 = *(v33 + 2);
  if (!v26)
  {

    return MEMORY[0x277D84F90];
  }

  v27 = sub_25F1BAB18(*(v33 + 2), 0, &qword_27FD52E50, &qword_25F3084A0);

  v28 = sub_25F1BE710(&v32, v27 + 4, v26, v24, v25);

  if (v28 == v26)
  {

    return v27;
  }

  __break(1u);
  return result;
}

uint64_t sub_25F1B9110(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_25F1BD048(0, v1, 0);
    v2 = v10;
    v4 = a1 + 40;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D50, &qword_25F3085B0);
      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_25F1BD048((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_25F1B9228(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_25F1BD0C8(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v6 = *v4;
      v8 = *(v10 + 16);
      v7 = *(v10 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_25F1BD0C8((v7 > 1), v8 + 1, 1);
      }

      *(v10 + 16) = v8 + 1;
      *(v10 + 8 * v8 + 32) = v5;
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t joinDYLDPathEnvironmentPaths<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[1] = a1;
  v5 = sub_25F305FEC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD52D50, &qword_25F3085B0);
  sub_25F30617C();
  swift_getWitnessTable();
  sub_25F3062FC();
  swift_getWitnessTable();
  v9 = sub_25F30617C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - v11;
  MEMORY[0x25F8D7310](a2, a3);
  swift_getWitnessTable();
  sub_25F30637C();
  (*(v6 + 8))(v8, v5);
  swift_getWitnessTable();
  sub_25F1BF118();
  v13 = sub_25F3051DC();
  v15 = v14;
  (*(v10 + 8))(v12, v9);
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    return 0;
  }

  return v13;
}

uint64_t InjectLibraryFirstEnvironmentVariableMergeHandler.path.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InjectLibraryFirstEnvironmentVariableMergeHandler.path.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

double InjectLibraryFirstEnvironmentVariableMergeHandler.merge(key:left:right:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v14 = *v7;
  v13 = v7[1];
  if (a1 == 0xD000000000000015 && 0x800000025F3171A0 == a2 || (sub_25F30659C() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D48, &unk_25F308200);
    inited = swift_initStackObject();
    *(inited + 32) = v14;
    *(inited + 16) = xmmword_25F3081F0;
    *(inited + 40) = v13;
    *(inited + 48) = a3;
    *(inited + 56) = a4;
    *(inited + 64) = a5;
    *(inited + 72) = a6;

    v16 = splitAndDedupeDYLDPathEnvironmentValues(_:)(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D50, &qword_25F3085B0);
    swift_arrayDestroy();
    sub_25F1B9110(v16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D58, &qword_25F308210);
    sub_25F1BF0B4();
    sub_25F1BF118();
    v17 = sub_25F3051DC();
    v19 = v18;

    if ((v19 & 0x2000000000000000) != 0)
    {
      v20 = HIBYTE(v19) & 0xF;
    }

    else
    {
      v20 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      *a7 = v17;
      a7[1] = v19;
    }

    else
    {

      *a7 = 0;
      a7[1] = 0;
    }
  }

  else
  {
    result = 0.0;
    *a7 = xmmword_25F3081D0;
  }

  return result;
}

uint64_t static EnvironmentVariableMergeHandler<>.injectLibraryFirst(path:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_25F1B9878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_25F30671C();
  sub_25F304F0C();
  v6 = sub_25F30676C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_25F30659C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_25F1B9970(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_25F30671C();
  MEMORY[0x25F8D8900](a1);
  v4 = sub_25F30676C();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t splitDYLDPathEnvironmentValue(_:)(uint64_t a1, unint64_t a2)
{
  v22[0] = 58;
  v22[1] = 0xE100000000000000;
  v21[2] = v22;

  v5 = sub_25F1BA664(0x7FFFFFFFFFFFFFFFLL, 1, sub_25F1BF16C, v21, a1, a2, v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v22[0] = MEMORY[0x277D84F90];
    result = sub_25F1BD008(0, v6, 0);
    v8 = 0;
    v9 = v22[0];
    v10 = (v5 + 56);
    while (v8 < *(v5 + 16))
    {
      v11 = *(v10 - 3);
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = *v10;

      v15 = MEMORY[0x25F8D7070](v11, v12, v13, v14);
      v17 = v16;

      v22[0] = v9;
      v19 = *(v9 + 16);
      v18 = *(v9 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_25F1BD008((v18 > 1), v19 + 1, 1);
        v9 = v22[0];
      }

      ++v8;
      *(v9 + 16) = v19 + 1;
      v20 = v9 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      v10 += 4;
      if (v6 == v8)
      {

        return v9;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_25F1B9BC4@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = result;
  v3 = a2;
  v24 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84FA0];
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 0;
    v22 = result + 32;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v5 >= *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      v7 = (v22 + 16 * v5);
      v9 = *v7;
      v8 = v7[1];
      v10 = v25;
      if (*(v25 + 16))
      {
        sub_25F30671C();

        sub_25F304F0C();
        v11 = sub_25F30676C();
        v12 = -1 << *(v10 + 32);
        v13 = v11 & ~v12;
        if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
        {
          v14 = ~v12;
          while (1)
          {
            v15 = (*(v10 + 48) + 16 * v13);
            v16 = *v15 == v9 && v15[1] == v8;
            if (v16 || (sub_25F30659C() & 1) != 0)
            {
              break;
            }

            v13 = (v13 + 1) & v14;
            if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          goto LABEL_4;
        }
      }

      else
      {
      }

LABEL_17:

      sub_25F1BBD78(&v23, v9, v8);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_25F2EFB20(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v18 = *(v6 + 16);
      v17 = *(v6 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_25F2EFB20((v17 > 1), v18 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 16) = v18 + 1;
      v19 = v6 + 16 * v18;
      *(v19 + 32) = v9;
      *(v19 + 40) = v8;
      v24 = v6;
LABEL_4:
      if (++v5 == v4)
      {

        v20 = v25;
        v3 = a2;
        goto LABEL_24;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84FA0];
LABEL_24:
  *v3 = v6;
  v3[1] = v20;
  return result;
}

uint64_t sub_25F1B9DF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_25F1B9E00()
{
  v0 = sub_25F217FB4(&unk_28715BDA8);
  result = swift_arrayDestroy();
  qword_27FD52D40 = v0;
  return result;
}

uint64_t RejectTestingLibTemporarily_127569585.merge(key:left:right:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x800000025F3171A0 == a2 || (result = sub_25F30659C(), (result & 1) != 0))
  {
    v30 = a7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D48, &unk_25F308200);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25F3081E0;
    *(inited + 32) = a3;
    *(inited + 40) = a4;
    *(inited + 48) = a5;
    *(inited + 56) = a6;

    v14 = splitAndDedupeDYLDPathEnvironmentValues(_:)(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D50, &qword_25F3085B0);
    result = swift_arrayDestroy();
    v15 = v14[2];
    if (v15)
    {
      v16 = 0;
      v17 = v14 + 5;
      v31 = MEMORY[0x277D84F90];
      do
      {
        v18 = &v17[2 * v16];
        v19 = v16;
        while (1)
        {
          if (v19 >= v14[2])
          {
            __break(1u);
            return result;
          }

          v20 = *(v18 - 1);
          v21 = *v18;
          v16 = v19 + 1;
          sub_25F1BF118();

          if ((sub_25F305D5C() & 1) == 0)
          {
            break;
          }

          v18 += 2;
          ++v19;
          if (v15 == v16)
          {
            goto LABEL_18;
          }
        }

        v22 = v31;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_25F1BD008(0, *(v31 + 16) + 1, 1);
          v22 = v31;
        }

        v24 = *(v22 + 16);
        v23 = *(v22 + 24);
        if (v24 >= v23 >> 1)
        {
          result = sub_25F1BD008((v23 > 1), v24 + 1, 1);
          v22 = v31;
        }

        *(v22 + 16) = v24 + 1;
        v31 = v22;
        v25 = v22 + 16 * v24;
        *(v25 + 32) = v20;
        *(v25 + 40) = v21;
        v17 = v14 + 5;
      }

      while (v15 - 1 != v19);
    }

    else
    {
      v31 = MEMORY[0x277D84F90];
    }

LABEL_18:

    sub_25F1B9110(v31);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D58, &qword_25F308210);
    sub_25F1BF0B4();
    sub_25F1BF118();
    v26 = sub_25F3051DC();
    v28 = v27;

    if ((v28 & 0x2000000000000000) != 0)
    {
      v29 = HIBYTE(v28) & 0xF;
    }

    else
    {
      v29 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      *v30 = v26;
      v30[1] = v28;
    }

    else
    {

      *v30 = 0;
      v30[1] = 0;
    }
  }

  else
  {
    *a7 = xmmword_25F3081D0;
  }

  return result;
}

void *sub_25F1BA1D8(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_25F2F022C(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E68, &qword_25F316580);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25F1BA2E0(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_25F2EFB20(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25F1BA3D4(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_25F2F04A0(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25F1BA4CC(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_25F2F0824(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_25F3044DC();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25F1BA5F8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25F2D8AB8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_25F1BBEC8(v5);
  *a1 = v2;
  return result;
}

unint64_t sub_25F1BA664@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
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

    v7 = sub_25F3050CC();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_25F2F0120(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_25F2F0120((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_25F30509C();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_25F304F3C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_25F304F3C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_25F3050CC();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_25F2F0120(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_25F3050CC();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_25F2F0120(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_25F2F0120((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_25F304F3C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void *sub_25F1BAA74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

void *sub_25F1BAB18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

uint64_t sub_25F1BAB94(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25F305E6C() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_25F30671C();
      MEMORY[0x25F8D8900](v9);
      result = sub_25F30676C();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25F1BAD28(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25F305E6C() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      result = sub_25F30670C();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 32 * v3);
          v18 = (v16 + 32 * v6);
          if (v3 != v6 || v17 >= v18 + 2)
          {
            v9 = v18[1];
            *v17 = *v18;
            v17[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25F1BAE98(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25F305E6C() + 1) & ~v5;
    do
    {
      sub_25F30671C();

      sub_25F304F0C();
      v9 = sub_25F30676C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25F1BB048(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25F305E6C() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_25F30671C();
      MEMORY[0x25F8D8900](v9);
      result = sub_25F30676C();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v3);
      v13 = (v11 + 8 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      result = v14 + 32 * v3;
      if (v3 < v6 || result >= v14 + 32 * v6 + 32)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_18:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v15 = *(a2 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v17;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25F1BB1FC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25F305E6C() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_25F30671C();
      if (v9 == 0.0)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = v9;
      }

      MEMORY[0x25F8D8900](*&v10);
      result = sub_25F30676C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v11)
      {
LABEL_13:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25F1BB39C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25F305E6C() + 1) & ~v5;
    do
    {
      sub_25F1BF614(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_25F305E9C();
      result = sub_25F1BF670(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25F1BB540(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25F305E6C() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_25F30671C();
      MEMORY[0x25F8D88E0](v9);
      result = sub_25F30676C();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25F1BB6D4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25F305E6C() + 1) & ~v5;
    while (1)
    {
      sub_25F30671C();

      sub_25F304F0C();
      v9 = sub_25F30676C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_25F3044DC() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}