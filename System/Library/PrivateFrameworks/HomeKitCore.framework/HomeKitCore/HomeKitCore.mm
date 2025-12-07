uint64_t sub_2530B9530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253148944();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_253148E44();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = sub_2531491F4();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 40);

  return v15(v16, a2, v14);
}

uint64_t sub_2530B9678(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_253148944();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_253148E44();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
    goto LABEL_5;
  }

  v16 = sub_2531491F4();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 40);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_2530B97CC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2530B9804()
{
  v1 = sub_253148944();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2530B98C8()
{
  v1 = sub_253148944();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2530B99F8()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_2530B9A38()
{

  return swift_deallocObject();
}

uint64_t sub_2530B9A98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580760, &qword_25314C4B8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2530B9BB4()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2530B9BFC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2530B9C6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807D0, &qword_25314C5A0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2530B9D14()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2530B9D84()
{

  return swift_deallocObject();
}

uint64_t sub_2530B9DC4()
{

  return swift_deallocObject();
}

uint64_t sub_2530B9DFC()
{

  return swift_deallocObject();
}

void sub_2530B9E40(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_253148904();
  [v2 setModelID_];
}

id sub_2530B9E9C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isExplicitContentAllowed];
  *a2 = result;
  return result;
}

id sub_2530B9EE4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isiTunesAccountAllowed];
  *a2 = result;
  return result;
}

id sub_2530B9F2C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isDolbyAtmosEnabled];
  *a2 = result;
  return result;
}

id sub_2530B9F74@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isLosslessMusicEnabled];
  *a2 = result;
  return result;
}

id sub_2530B9FBC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPlaybackInfluencesEnabled];
  *a2 = result;
  return result;
}

id sub_2530BA004@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isSiriIdentifyVoiceEnabled];
  *a2 = result;
  return result;
}

id sub_2530BA04C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 user];
  *a2 = result;
  return result;
}

void sub_2530BA0A0(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_253148904();
  [v2 setModelID_];
}

void sub_2530BA100(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_253148B54();
  [v2 setName_];
}

id sub_2530BA164@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 home];
  *a2 = result;
  return result;
}

uint64_t sub_2530BA1BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_253148944();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2530BA228(uint64_t a1, uint64_t a2)
{
  v4 = sub_253148944();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

__n128 sub_2530BA32C(uint64_t a1, uint64_t a2)
{
  v4 = sub_253148944();
  v5 = *(v4 - 8) + 16;
  (*v5)(a2, a1, v4);
  v6 = (*(v5 + 48) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = a1 + v6;
  v8 = a2 + v6;
  v10 = *(v7 + 16);
  result = *(v7 + 32);
  *v8 = *v7;
  *(v8 + 16) = v10;
  *(v8 + 32) = result;
  return result;
}

__n128 sub_2530BA3D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_253148944();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  (*(v5 + 32))(a2, a1 + ((*(v5 + 80) + 48) & ~*(v5 + 80)), v4);
  v7 = a2 + ((v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *(a1 + 16);
  result = *(a1 + 32);
  *v7 = *a1;
  *(v7 + 16) = v9;
  *(v7 + 32) = result;
  return result;
}

__n128 sub_2530BA4FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_253148944();
  v5 = *(v4 - 8) + 16;
  (*v5)(a2, a1, v4);
  v6 = (*(v5 + 48) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = *(v7 + 32);
  result = *(v7 + 16);
  *v8 = *v7;
  *(v8 + 16) = result;
  *(v8 + 32) = v9;
  return result;
}

__n128 sub_2530BA588(uint64_t a1, uint64_t a2)
{
  v4 = sub_253148944();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  (*(v5 + 32))(a2, a1 + ((*(v5 + 80) + 40) & ~*(v5 + 80)), v4);
  v7 = a2 + ((v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *(a1 + 32);
  result = *(a1 + 16);
  *v7 = *a1;
  *(v7 + 16) = result;
  *(v7 + 32) = v8;
  return result;
}

uint64_t sub_2530BA628()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2530BA660()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580DB8, &unk_25314D418);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2530BA744()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2530BA848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RelationshipObserver.Change(255, *(a3 + 16), *(a3 + 24), a4);
  v6 = sub_253148E84();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_2530BA8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for RelationshipObserver.Change(255, *(a4 + 16), *(a4 + 24), a4);
  v6 = sub_253148E84();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a2, v6);
}

uint64_t sub_2530BA974(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_2530BA980()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2530BAA60()
{
  v1 = *(type metadata accessor for HomesStore.AnyChanges(0) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C8, &qword_25314D940);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_2530BAB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253148944();
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

uint64_t sub_2530BAC30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253148944();
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

uint64_t sub_2530BAD04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253148944();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2530BADD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253148944();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

void sub_2530BAE98(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_253148904();
  [v2 setModelID_];
}

void sub_2530BAEF8(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_253148B54();
  [v2 setHandle_];
}

id sub_2530BAF5C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 home];
  *a2 = result;
  return result;
}

id sub_2530BAFAC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 userSharedSettings];
  *a2 = result;
  return result;
}

uint64_t sub_2530BAFFC()
{

  return swift_deallocObject();
}

uint64_t sub_2530BB03C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_2530BB074()
{

  return swift_deallocObject();
}

uint64_t sub_2530BB0BC()
{
  swift_getAssociatedTypeWitness();
  v1 = sub_253148974();
  v2 = *(sub_2531491F4() - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  v4 = *(v1 - 8);
  if (!(*(v4 + 48))(v0 + v3, 1, v1))
  {
    (*(v4 + 8))(v0 + v3, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_2530BB1FC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_2530BB234()
{
  v1 = sub_253148974();
  v2 = *(sub_2531491F4() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  if (!(*(v4 + 48))(v0 + v3, 1, v1))
  {
    (*(v4 + 8))(v0 + v3, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_2530BB38C()
{

  return swift_deallocObject();
}

uint64_t sub_2530BB3C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581610, &qword_25314E3F0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2530BB460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253148944();
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

uint64_t sub_2530BB520(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253148944();
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

uint64_t sub_2530BB5EC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2530BB624()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2530BB674()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581888, &qword_25314E9A8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2530BB708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253148944();
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

uint64_t sub_2530BB7C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253148944();
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

void sub_2530BB884(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_253148904();
  [v2 setModelID_];
}

uint64_t sub_2530BB8E8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2530BB928(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_253148944();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2530BB9D4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_253148944();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2530BBB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253148944();
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

uint64_t sub_2530BBBC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253148944();
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

uint64_t sub_2530BBD50()
{

  return swift_deallocObject();
}

uint64_t sub_2530BBD90(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_253148884();
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
      v13 = type metadata accessor for HomesStore.CoreData.Configuration.StoreType(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2530BBEB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_253148884();
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
      v13 = type metadata accessor for HomesStore.CoreData.Configuration.StoreType(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2530BBFD8()
{
  MEMORY[0x259BFDD40](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2530BC010()
{

  return swift_deallocObject();
}

void sub_2530BC058(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_253148904();
  [v2 setModelID_];
}

void sub_2530BC0B8(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_253148B54();
  [v2 setName_];
}

id sub_2530BC11C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 homesTopology];
  *a2 = result;
  return result;
}

uint64_t sub_2530BC45C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_2530BC51C(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_253148904();
  [v2 setModelID_];
}

void sub_2530BC57C(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_253148B54();
  [v2 setName_];
}

id sub_2530BC5E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 category];
  *a2 = result;
  return result;
}

id sub_2530BC6A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 home];
  *a2 = result;
  return result;
}

id sub_2530BC6F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 room];
  *a2 = result;
  return result;
}

id sub_2530BC748@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 appleMediaDevice];
  *a2 = result;
  return result;
}

uint64_t sub_2530BC798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253148944();
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

uint64_t sub_2530BC858(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253148944();
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

void sub_2530BC938(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_253148904();
  [v2 setModelID_];
}

id sub_2530BC994@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isCurrentDevice];
  *a2 = result;
  return result;
}

id sub_2530BC9E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 accessory];
  *a2 = result;
  return result;
}

uint64_t sub_2530BCA34()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2530BCA6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581DF8, &qword_2531503B0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2530BCB54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2530BCC34()
{
  v1 = *(type metadata accessor for HomesStore.AnyChanges(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C8, &qword_25314D940);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2530BCD44()
{

  return swift_deallocObject();
}

uint64_t sub_2530BCD7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581DF8, &qword_2531503B0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2530BCE4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581DF8, &qword_2531503B0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_2530BCEF8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_2530BCF30()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_2530BCF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253148944();
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

uint64_t sub_2530BD02C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253148944();
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

uint64_t sub_2530BD298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253148944();
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

uint64_t sub_2530BD354(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253148944();
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

uint64_t sub_2530BD40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582420, &qword_2531514F8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2530BD514(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582420, &qword_2531514F8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_2530BD6BC(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_253148904();
  [v2 setModelID_];
}

void sub_2530BD71C(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_253148B54();
  [v2 setName_];
}

id sub_2530BD780@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isDefault];
  *a2 = result;
  return result;
}

id sub_2530BD7C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 home];
  *a2 = result;
  return result;
}

uint64_t sub_2530BD958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253148944();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2530BDA24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_253148944();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2530BDB14(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2530BDB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_253148944();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v14 = type metadata accessor for AsyncStreamContainer.Context(0, a4, a5, v13);
  v15 = *(v14 + 36);
  v16 = sub_253148E44();
  (*(*(v16 - 8) + 32))(a6 + v15, a2, v16);
  v17 = *(v14 + 40);
  v18 = sub_2531491F4();
  v19 = *(*(v18 - 8) + 32);

  return v19(a6 + v17, a3, v18);
}

uint64_t sub_2530BDCAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_253148944();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2530BDD14()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2530BDD6C(uint64_t a1)
{
  result = sub_253148944();
  if (v2 <= 0x3F)
  {
    result = sub_253148E44();
    if (v3 <= 0x3F)
    {
      result = sub_2531491F4();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2530BDE54()
{
  result = qword_27F580560;
  if (!qword_27F580560)
  {
    sub_253148944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580560);
  }

  return result;
}

uint64_t sub_2530BDED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = *v2;
  v61 = a1;
  v62 = v2 + 14;
  v53 = *(v3 + 88);
  v4 = sub_2531491F4();
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x28223BE20](v4);
  v57 = &v45 - v5;
  v6 = *(v3 + 80);
  v58 = type metadata accessor for AsyncStreamContainer.Context(0, v6, v53, v7);
  v56 = *(v58 - 8);
  v8 = MEMORY[0x28223BE20](v58);
  v55 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v54 = &v45 - v10;
  v64 = sub_253148944();
  v11 = *(v64 - 8);
  v48 = *(v11 + 64);
  v12 = MEMORY[0x28223BE20](v64);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - v15;
  v17 = sub_253148E24();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v45 - v19;
  v21 = sub_253148E44();
  v22 = *(v21 - 8);
  v50 = v21;
  v51 = v22;
  v23 = MEMORY[0x28223BE20](v21);
  v49 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v63 = &v45 - v25;
  (*(v18 + 104))(v20, *MEMORY[0x277D85778], v17);
  v26 = v6;
  v47 = v6;
  sub_253148DF4();
  (*(v18 + 8))(v20, v17);
  v46 = v16;
  sub_253148934();
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = *(v11 + 16);
  v29 = v64;
  v28(v14, v16, v64);
  v30 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v31 = swift_allocObject();
  v32 = v53;
  *(v31 + 2) = v26;
  *(v31 + 3) = v32;
  *(v31 + 4) = v27;
  (*(v11 + 32))(&v31[v30], v14, v29);
  v33 = v50;
  v34 = v63;
  sub_253148E14();
  v35 = v14;
  v36 = v46;
  v28(v14, v46, v29);
  v37 = v51;
  v38 = v49;
  v39 = v33;
  (*(v51 + 16))(v49, v34, v33);
  v40 = v57;
  (*(v59 + 16))(v57, v61, v60);
  v41 = v54;
  sub_2530BDB7C(v35, v38, v40, v47, v32, v54);
  v42 = v56;
  v43 = v58;
  (*(v56 + 16))(v55, v41, v58);
  swift_beginAccess();
  sub_253148D64();
  sub_253148D34();
  swift_endAccess();
  (*(v42 + 8))(v41, v43);
  (*(v11 + 8))(v36, v64);
  return (*(v37 + 8))(v63, v39);
}

uint64_t sub_2530BE4A4@<X0>(uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x277D85778];
  v4 = sub_253148E24();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t sub_2530BE51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_253148944();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = sub_253148DE4();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    (*(v9 + 16))(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v8);
    v17 = (*(v9 + 80) + 56) & ~*(v9 + 80);
    v18 = swift_allocObject();
    *(v18 + 2) = 0;
    *(v18 + 3) = 0;
    *(v18 + 4) = a4;
    *(v18 + 5) = a5;
    *(v18 + 6) = v15;
    (*(v9 + 32))(&v18[v17], &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    sub_253112858(0, 0, v13, &unk_25314BDC0, v18);
  }

  return result;
}

uint64_t sub_2530BE730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2530BE750, a4, 0);
}

uint64_t sub_2530BE750()
{
  sub_2530BE7B0(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2530BE7B0(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  swift_beginAccess();
  type metadata accessor for AsyncStreamContainer.Context(255, v2, v5, v3);
  sub_253148D64();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_253149064();
  return swift_endAccess();
}

uint64_t sub_2530BE8BC(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3)
{
  v49 = a3;
  v48 = a2;
  v5 = *v3;
  v6 = *(*v3 + 80);
  v65 = sub_253148E04();
  v62 = *(v65 - 8);
  v7 = MEMORY[0x28223BE20](v65);
  v64 = &v42 - v8;
  v9 = *(v6 - 8);
  v43 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v66 = &v42 - v10;
  v11 = *(v5 + 88);
  v57 = sub_2531491F4();
  v61 = *(v57 - 8);
  v12 = MEMORY[0x28223BE20](v57);
  v58 = &v42 - v13;
  v14 = *(v11 - 8);
  MEMORY[0x28223BE20](v12);
  v50 = &v42 - v15;
  v60 = v11;
  v17 = type metadata accessor for AsyncStreamContainer.Context(0, v6, v11, v16);
  v59 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  swift_beginAccess();
  v23 = v3[14];

  if (!sub_253148D44())
  {
  }

  v55 = (v59 + 32);
  v56 = (v59 + 16);
  v53 = (v14 + 48);
  v54 = (v61 + 16);
  v47 = (v14 + 32);
  v44 = (v14 + 8);
  v24 = 0;
  v51 = (v59 + 8);
  v63 = (v9 + 16);
  v25 = (v62 + 8);
  v46 = (v61 + 8);
  v61 = v17;
  v45 = v22;
  v52 = v23;
  while (1)
  {
    v27 = sub_253148CF4();
    sub_253148CC4();
    if (v27)
    {
      result = (*(v59 + 16))(v22, v23 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v24, v17);
      v29 = v60;
      v30 = v24;
      v31 = v58;
    }

    else
    {
      v62 = v24;
      v41 = v17;
      result = sub_2531493F4();
      v29 = v60;
      v31 = v58;
      if (v42 != 8)
      {
        goto LABEL_29;
      }

      v67 = result;
      (*v56)(v22, &v67, v41);
      result = swift_unknownObjectRelease();
      v30 = v62;
    }

    v62 = v30 + 1;
    v32 = v57;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    v33 = v20;
    v34 = v20;
    v35 = v61;
    (*v55)(v33, v22, v61);
    (*v54)(v31, &v34[*(v35 + 40)], v32);
    if ((*v53)(v31, 1, v29) == 1)
    {
      (*v51)(v34, v35);
      (*v46)(v31, v32);
      v17 = v35;
      v20 = v34;
    }

    else
    {
      v36 = v50;
      (*v47)();
      if (v48(v36))
      {
        if (sub_253148D44())
        {
          v37 = 0;
          do
          {
            v38 = sub_253148CF4();
            sub_253148CC4();
            if (v38)
            {
              result = (*(v9 + 16))(v66, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v37, v6);
              v39 = v37 + 1;
              if (__OFADD__(v37, 1))
              {
                goto LABEL_26;
              }
            }

            else
            {
              result = sub_2531493F4();
              if (v43 != 8)
              {
                goto LABEL_28;
              }

              v67 = result;
              (*v63)(v66, &v67, v6);
              result = swift_unknownObjectRelease();
              v39 = v37 + 1;
              if (__OFADD__(v37, 1))
              {
LABEL_26:
                __break(1u);
                goto LABEL_27;
              }
            }

            sub_253148E44();
            v40 = v64;
            sub_253148E34();
            (*v25)(v40, v65);
            ++v37;
          }

          while (v39 != sub_253148D44());
        }

        (*v44)(v50, v60);
      }

      else
      {
        (*v44)(v36, v29);
      }

      v20 = v34;
      v17 = v61;
      (*v51)(v34, v61);
      v22 = v45;
    }

    v23 = v52;
    v26 = sub_253148D44();
    v24 = v62;
    if (v62 == v26)
    {
    }
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2530BF050(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(sub_253148944() - 8);
  v6 = v1[4];
  v7 = v1 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_2530BE51C(a1, v6, v7, v3, v4);
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

uint64_t sub_2530BF120(uint64_t a1)
{
  v4 = *(sub_253148944() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2530BF218;

  return sub_2530BE730(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2530BF218()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2530BF34C(uint64_t a1, int a2)
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

uint64_t sub_2530BF36C(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_2530BF3D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2530BF3F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 20) = v3;
  return result;
}

void sub_2530BF430(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_2530BF47C(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v39 = a3;
  v38 = a2;
  v50 = sub_2531491F4();
  v6 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v8 = &v35 - v7;
  v37 = sub_253149874();
  v9 = *(v37 - 8);
  v10 = MEMORY[0x28223BE20](v37);
  v44 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a4 - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v49 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v45 = &v35 - v19;
  v35 = v20;
  MEMORY[0x28223BE20](v18);
  v47 = &v35 - v21;
  swift_bridgeObjectRetain_n();
  v62 = sub_253148AA4();
  sub_253148D64();
  v42 = 0;
  v55 = (v12 + 16);
  v52 = (v12 + 32);
  v48 = (v6 + 8);
  v40 = v12;
  v53 = (v12 + 8);
  v36 = (v9 + 8);
  while (1)
  {
    *&v60 = a1;
    swift_getWitnessTable();
    v24 = sub_253149044();

    if (v24)
    {
    }

    if (sub_253148D44())
    {
      break;
    }

LABEL_2:

    a1 = v62;
    swift_bridgeObjectRetain_n();
    result = sub_253148D54();
    v23 = __OFADD__(v42++, 1);
    if (v23)
    {
      goto LABEL_24;
    }
  }

  v25 = 0;
  v41 = a1;
  while (1)
  {
    v27 = sub_253148CF4();
    sub_253148CC4();
    if (v27)
    {
      v28 = a1 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v25;
      v54 = *(v40 + 16);
      result = v54(v47, v28, a4);
    }

    else
    {
      result = sub_2531493F4();
      if (v35 != 8)
      {
        goto LABEL_25;
      }

      *&v60 = result;
      v54 = *v55;
      v54(v47, &v60, a4);
      result = swift_unknownObjectRelease();
    }

    v23 = __OFADD__(v25, 1);
    v29 = v25 + 1;
    v30 = v45;
    if (v23)
    {
      break;
    }

    v43 = v29;
    v51 = *v52;
    v51(v45, v47, a4);
    v31 = v46;
    v38(v30, v42);
    if (v31)
    {

      (*v53)(v30, a4);
    }

    v46 = 0;
    *(&v61[0] + 1) = a4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v60);
    v54(boxed_opaque_existential_0, v30, a4);
    sub_253149854();
    sub_253149864();
    sub_253149524();

    while (1)
    {
      sub_2531495F4();
      v61[0] = v58[1];
      v61[1] = v59;
      v60 = v58[0];
      if (!*(&v59 + 1))
      {
        break;
      }

      sub_2530C02F4(v61, v58);
      sub_2530C0304(v58, v57);
      v33 = swift_dynamicCast();
      v34 = *(v12 + 56);
      if (v33)
      {
        v34(v8, 0, 1, a4);
        v51(v17, v8, a4);
        v54(v49, v17, a4);
        sub_253148D34();
        (*v53)(v17, a4);
      }

      else
      {
        v34(v8, 1, 1, a4);
        (*v48)(v8, v50);
        sub_2530C0304(v58, v57);
        if (swift_dynamicCast())
        {
          v57[0] = v56;
          swift_getWitnessTable();
          sub_253148D24();
        }
      }

      __swift_destroy_boxed_opaque_existential_0(v58);
    }

    (*v36)(v44, v37);
    (*v53)(v45, a4);
    a1 = v41;
    v26 = sub_253148D44();
    v25 = v43;
    if (v43 == v26)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_2530BFC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = sub_2531491F4();
  v7 = *(v28 - 8);
  v8 = MEMORY[0x28223BE20](v28);
  v10 = &v23 - v9;
  v11 = *(a4 - 8);
  v12 = MEMORY[0x28223BE20](v8);
  v27 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - v14;
  v26 = sub_253149874();
  v25 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_253148AA4();
  *(&v36 + 1) = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&i);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  sub_253149854();
  v24 = v17;
  sub_253149864();
  v19 = sub_253149524();

  v29 = v19;
  sub_2531495F4();
  v36 = v33;
  v37 = v34;
  for (i = v32; *(&v34 + 1); i = v32)
  {

    sub_2530C02F4(&v36, &v32);
    sub_2530C0304(&v32, v31);
    v20 = swift_dynamicCast();
    v21 = *(v11 + 56);
    if (v20)
    {
      v21(v10, 0, 1, a4);
      (*(v11 + 32))(v15, v10, a4);
      (*(v11 + 16))(v27, v15, a4);
      sub_253148D64();
      sub_253148D34();
      (*(v11 + 8))(v15, a4);
    }

    else
    {
      v21(v10, 1, 1, a4);
      (*(v7 + 8))(v10, v28);
      sub_2530C0304(&v32, v31);
      sub_253148D64();
      if (swift_dynamicCast())
      {
        v31[0] = v30;
        swift_getWitnessTable();
        sub_253148D24();
      }
    }

    __swift_destroy_boxed_opaque_existential_0(&v32);
    sub_2531495F4();
    v36 = v33;
    v37 = v34;
  }

  (*(v25 + 8))(v24, v26);

  return v38;
}

uint64_t sub_2530C0090(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_2530BFC14(a1, a2, a5, a6);
  sub_2530BF47C(v9, a3, a4, a6);
}

uint64_t sub_2530C0100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = sub_253148AA4();
  v17[2] = a5;
  v17[3] = a6;
  v17[4] = a7;
  v17[5] = &v18;
  v17[6] = a3;
  v17[7] = a4;
  sub_2530C0090(a1, a2, sub_2530C026C, v17, a5, a6);
  v15 = v18;
  if (v7)
  {
  }

  return v15;
}

uint64_t sub_2530C01C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = MEMORY[0x28223BE20](a1);
  result = v10(v9);
  if (!v8)
  {
    sub_253148D64();
    return sub_253148D34();
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *sub_2530C02F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2530C0304(uint64_t a1, uint64_t a2)
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

uint64_t sub_2530C03E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AnyModelStateChange.Tombstone(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for AnyModelStateChange(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for XPCModelStateChange(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2530C24CC(a1, v9, type metadata accessor for AnyModelStateChange);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_2530C2534(a1, type metadata accessor for AnyModelStateChange);
      sub_2530C2594(v9, v6, type metadata accessor for AnyModelStateChange.Tombstone);
      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580588, &unk_25314BE80) + 48);
      v25 = sub_253148944();
      (*(*(v25 - 8) + 16))(v13, v6, v25);
      v26 = v6[*(v4 + 20)];
      sub_2530C2534(v6, type metadata accessor for AnyModelStateChange.Tombstone);
      v13[v24] = v26;
      swift_storeEnumTagMultiPayload();
      goto LABEL_8;
    }

LABEL_5:
    v16 = *(v9 + 1);
    v33[0] = *v9;
    v33[1] = v16;
    v34 = *(v9 + 4);
    sub_2530C25FC(v33, v30);
    v17 = v31;
    v18 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v19 = sub_253110940(v17, *(v18 + 16));
    v21 = v20;
    v22 = v31;
    v23 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    sub_2530D2104(v22, v23);
    sub_2530C2534(a1, type metadata accessor for AnyModelStateChange);
    sub_2530C26A4(v33);
    *v13 = v29;
    *(v13 + 1) = v19;
    *(v13 + 2) = v21;
    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_0(v30);
LABEL_8:
    sub_2530C2594(v13, a2, type metadata accessor for XPCModelStateChange);
    v15 = 0;
    return (*(v11 + 56))(a2, v15, 1, v10);
  }

  if (EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  sub_2530C2534(a1, type metadata accessor for AnyModelStateChange);
  sub_2530C2534(v9, type metadata accessor for AnyModelStateChange);
  v15 = 1;
  return (*(v11 + 56))(a2, v15, 1, v10);
}

uint64_t sub_2530C087C(uint64_t a1)
{
  v2 = sub_2530C2A2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2530C08B8(uint64_t a1)
{
  v2 = sub_2530C2A2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2530C08F4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580610, &qword_25314BF20);
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x28223BE20](v2);
  v43 = &v39 - v3;
  v4 = sub_253148944();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v48 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580618, &qword_25314BF28);
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580620, &qword_25314BF30);
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v12 = type metadata accessor for XPCModelStateChange(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580628, &qword_25314BF38);
  v16 = *(v15 - 8);
  v51 = v15;
  v52 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2530C2888();
  sub_253149894();
  sub_2530C24CC(v49, v14, type metadata accessor for XPCModelStateChange);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = *v14;
      v21 = *(v14 + 1);
      v22 = *(v14 + 2);
      LOBYTE(v53) = 1;
      sub_2530C2984();
      v23 = v51;
      sub_253149694();
      LOBYTE(v53) = v20;
      v55 = 0;
      sub_2530C2AC4();
      v24 = v42;
      v25 = v50;
      sub_2531496D4();
      if (v25)
      {
        sub_2530C2478(v21, v22);
        (*(v41 + 8))(v8, v24);
        return (*(v52 + 8))(v18, v23);
      }

      v53 = v21;
      v54 = v22;
      v55 = 1;
      sub_2530C2B18();
      sub_2531496D4();
      (*(v41 + 8))(v8, v24);
      (*(v52 + 8))(v18, v23);
      return sub_2530C2478(v21, v22);
    }

    else
    {
      LODWORD(v49) = v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580588, &unk_25314BE80) + 48)];
      v33 = v44;
      v32 = v45;
      v34 = v48;
      (*(v44 + 32))(v48, v14, v45);
      LOBYTE(v53) = 2;
      sub_2530C28DC();
      v35 = v43;
      v36 = v51;
      sub_253149694();
      LOBYTE(v53) = 0;
      sub_2530C2A80(&qword_27F580630, MEMORY[0x277CC95F8]);
      v37 = v47;
      v38 = v50;
      sub_2531496D4();
      if (v38)
      {
        (*(v46 + 8))(v35, v37);
        (*(v33 + 8))(v34, v32);
      }

      else
      {
        LOBYTE(v53) = v49;
        v55 = 1;
        sub_2530C2AC4();
        sub_2531496D4();
        (*(v46 + 8))(v35, v37);
        (*(v33 + 8))(v48, v32);
      }

      return (*(v52 + 8))(v18, v36);
    }
  }

  else
  {
    v26 = *v14;
    v28 = *(v14 + 1);
    v27 = *(v14 + 2);
    LOBYTE(v53) = 0;
    sub_2530C2A2C();
    v23 = v51;
    sub_253149694();
    LOBYTE(v53) = v26;
    v55 = 0;
    sub_2530C2AC4();
    v29 = v40;
    v30 = v50;
    sub_2531496D4();
    if (v30)
    {
      sub_2530C2478(v28, v27);
      (*(v39 + 8))(v11, v29);
      return (*(v52 + 8))(v18, v23);
    }

    v53 = v28;
    v54 = v27;
    v55 = 1;
    sub_2530C2B18();
    sub_2531496D4();
    (*(v39 + 8))(v11, v29);
    (*(v52 + 8))(v18, v23);
    return sub_2530C2478(v28, v27);
  }
}

uint64_t sub_2530C1044@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5805B0, &qword_25314BEF8);
  v4 = *(v3 - 8);
  v73 = v3;
  v74 = v4;
  MEMORY[0x28223BE20](v3);
  v78 = &v63 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5805B8, &qword_25314BF00);
  v71 = *(v6 - 8);
  v72 = v6;
  MEMORY[0x28223BE20](v6);
  v77 = &v63 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5805C0, &qword_25314BF08);
  v69 = *(v8 - 8);
  v70 = v8;
  MEMORY[0x28223BE20](v8);
  v75 = &v63 - v9;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5805C8, &qword_25314BF10);
  v80 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v11 = &v63 - v10;
  v12 = type metadata accessor for XPCModelStateChange(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v63 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v63 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v63 - v22;
  v24 = a1[3];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_2530C2888();
  v25 = v81;
  sub_253149884();
  if (!v25)
  {
    v64 = v21;
    v65 = v18;
    v66 = v23;
    v67 = v15;
    v68 = 0;
    v26 = v75;
    v27 = v76;
    v28 = v77;
    v29 = v78;
    v81 = v12;
    v30 = v79;
    v31 = sub_253149674();
    v32 = *(v31 + 16);
    if (!v32 || ((v33 = *(v31 + 32), v32 == 1) ? (v34 = v33 == 3) : (v34 = 1), v34))
    {
      v35 = v11;
      v36 = sub_253149434();
      swift_allocError();
      v38 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5805D8, &qword_25314BF18);
      *v38 = v81;
      sub_253149624();
      sub_253149424();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
      swift_willThrow();
      (*(v80 + 8))(v35, v27);
    }

    else
    {
      if (*(v31 + 32))
      {
        if (v33 == 1)
        {
          LOBYTE(v83) = 1;
          sub_2530C2984();
          v40 = v68;
          sub_253149614();
          v41 = v27;
          if (!v40)
          {
            v42 = v27;
            LOBYTE(v83) = 0;
            sub_2530C2930();
            v43 = v72;
            sub_253149664();
            v44 = v80;
            v55 = v11;
            v56 = v85;
            v84 = 1;
            sub_2530C29D8();
            sub_253149664();
            (*(v71 + 8))(v28, v43);
            (*(v44 + 8))(v55, v42);
            swift_unknownObjectRelease();
            v61 = v65;
            *v65 = v56;
            *(v61 + 8) = v83;
LABEL_21:
            swift_storeEnumTagMultiPayload();
            v60 = v61;
            goto LABEL_22;
          }
        }

        else
        {
          LOBYTE(v83) = 2;
          sub_2530C28DC();
          v47 = v29;
          v48 = v68;
          sub_253149614();
          v41 = v27;
          if (!v48)
          {
            v52 = v27;
            v77 = v11;
            sub_253148944();
            LOBYTE(v83) = 0;
            sub_2530C2A80(&qword_27F5805E8, MEMORY[0x277CC9618]);
            v53 = v67;
            v54 = v73;
            sub_253149664();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580588, &unk_25314BE80);
            LOBYTE(v83) = 1;
            sub_2530C2930();
            sub_253149664();
            v61 = v53;
            (*(v74 + 8))(v47, v54);
            (*(v80 + 8))(v77, v52);
            swift_unknownObjectRelease();
            goto LABEL_21;
          }
        }
      }

      else
      {
        LOBYTE(v83) = 0;
        sub_2530C2A2C();
        v45 = v26;
        v46 = v68;
        sub_253149614();
        v41 = v27;
        if (!v46)
        {
          v49 = v27;
          LOBYTE(v83) = 0;
          sub_2530C2930();
          v50 = v70;
          sub_253149664();
          v51 = v80;
          v57 = v45;
          v58 = v85;
          v84 = 1;
          sub_2530C29D8();
          sub_253149664();
          (*(v69 + 8))(v57, v50);
          (*(v51 + 8))(v11, v49);
          swift_unknownObjectRelease();
          v59 = v64;
          *v64 = v58;
          *(v59 + 8) = v83;
          swift_storeEnumTagMultiPayload();
          v60 = v59;
LABEL_22:
          v62 = v66;
          sub_2530C2594(v60, v66, type metadata accessor for XPCModelStateChange);
          sub_2530C2594(v62, v30, type metadata accessor for XPCModelStateChange);
          return __swift_destroy_boxed_opaque_existential_0(v82);
        }
      }

      (*(v80 + 8))(v11, v41);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v82);
}

uint64_t sub_2530C1A24()
{
  v1 = *v0;
  sub_253149814();
  MEMORY[0x259BFD420](v1);
  return sub_253149844();
}

uint64_t sub_2530C1A6C(uint64_t a1)
{
  v2 = *v1;
  sub_253149814();
  MEMORY[0x259BFD420](v2);
  return sub_253149844();
}

uint64_t sub_2530C1AB0()
{
  v1 = 0x657461647075;
  if (*v0 != 1)
  {
    v1 = 0x6574656C6564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6579297;
  }
}

uint64_t sub_2530C1AFC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2530C3258(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2530C1B30(uint64_t a1)
{
  v2 = sub_2530C2888();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2530C1B6C(uint64_t a1)
{
  v2 = sub_2530C2888();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2530C1BA8(uint64_t a1)
{
  v2 = sub_2530C28DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2530C1BE4(uint64_t a1)
{
  v2 = sub_2530C28DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2530C1C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_253149734() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_253149734();

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

uint64_t sub_2530C1CEC(uint64_t a1)
{
  v2 = sub_2530C2984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2530C1D28(uint64_t a1)
{
  v2 = sub_2530C2984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2530C1D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for XPCModelStateChange(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AnyModelStateChange(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2530C24CC(a1, v6, type metadata accessor for XPCModelStateChange);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v41 = v8;
      v43 = v7;
      v44 = a2;
      v12 = *(v6 + 1);
      v13 = *(v6 + 2);
      LOBYTE(v48[0]) = *v6;
      v14 = HomesStore.ModelType.metaType.getter();
      v16 = v15;
      v17 = sub_2531491F4();
      v42 = &v38;
      v18 = *(v17 - 8);
      MEMORY[0x28223BE20](v17);
      v20 = &v38 - v19;
      sub_25311A1FC(v12, v13, v14, *(v16 + 8));
      v39 = v17;
      v40 = v18;
      v33 = *(v14 - 8);
      if ((*(*(v14 - 8) + 48))(v20, 1, v14) == 1)
      {
        sub_2530C2534(a1, type metadata accessor for XPCModelStateChange);
        sub_2530C2478(v12, v13);
        (*(v40 + 8))(v20, v39);
        v8 = v41;
LABEL_11:
        v7 = v43;
        v32 = 1;
        a2 = v44;
        return (*(v8 + 56))(a2, v32, 1, v7);
      }

      v46 = v14;
      v47 = v16;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v45);
      (*(v33 + 32))(boxed_opaque_existential_0, v20, v14);
      sub_2530C2478(v12, v13);
      sub_2530C2534(a1, type metadata accessor for XPCModelStateChange);
      sub_2530BDB14(&v45, v48);
      sub_2530BDB14(v48, v10);
      v7 = v43;
      swift_storeEnumTagMultiPayload();
      a2 = v44;
      v8 = v41;
    }

    else
    {
      sub_2530C2534(a1, type metadata accessor for XPCModelStateChange);
      v30 = v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580588, &unk_25314BE80) + 48)];
      v31 = sub_253148944();
      (*(*(v31 - 8) + 32))(v10, v6, v31);
      v10[*(type metadata accessor for AnyModelStateChange.Tombstone(0) + 20)] = v30;
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v41 = a1;
    v43 = v7;
    v44 = a2;
    v21 = *(v6 + 1);
    v22 = *(v6 + 2);
    LOBYTE(v48[0]) = *v6;
    v23 = HomesStore.ModelType.metaType.getter();
    v25 = v24;
    v26 = sub_2531491F4();
    v42 = &v38;
    v27 = *(v26 - 8);
    MEMORY[0x28223BE20](v26);
    v29 = &v38 - v28;
    sub_25311A1FC(v21, v22, v23, *(v25 + 8));
    v39 = v26;
    v40 = v27;
    v34 = *(v23 - 8);
    if ((*(*(v23 - 8) + 48))(v29, 1, v23) == 1)
    {
      sub_2530C2534(v41, type metadata accessor for XPCModelStateChange);
      sub_2530C2478(v21, v22);
      (*(v40 + 8))(v29, v39);
      goto LABEL_11;
    }

    v46 = v23;
    v47 = v25;
    v37 = __swift_allocate_boxed_opaque_existential_0(&v45);
    (*(v34 + 32))(v37, v29, v23);
    sub_2530C2478(v21, v22);
    sub_2530C2534(v41, type metadata accessor for XPCModelStateChange);
    sub_2530BDB14(&v45, v48);
    sub_2530BDB14(v48, v10);
    v7 = v43;
    swift_storeEnumTagMultiPayload();
    a2 = v44;
  }

  sub_2530C2594(v10, a2, type metadata accessor for AnyModelStateChange);
  v32 = 0;
  return (*(v8 + 56))(a2, v32, 1, v7);
}

uint64_t type metadata accessor for XPCModelStateChange(uint64_t a1)
{
  result = qword_27F580590;
  if (!qword_27F580590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2530C2478(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2530C24CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2530C2534(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2530C2594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2530C25FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_2530C274C(uint64_t a1)
{
  sub_2530C27C0();
  if (v1 <= 0x3F)
  {
    sub_2530C2820(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2530C27C0()
{
  if (!qword_27F5805A0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F5805A0);
    }
  }
}

void sub_2530C2820(uint64_t a1)
{
  if (!qword_27F5805A8)
  {
    sub_253148944();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F5805A8);
    }
  }
}

unint64_t sub_2530C2888()
{
  result = qword_27F5805D0;
  if (!qword_27F5805D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5805D0);
  }

  return result;
}

unint64_t sub_2530C28DC()
{
  result = qword_27F5805E0;
  if (!qword_27F5805E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5805E0);
  }

  return result;
}

unint64_t sub_2530C2930()
{
  result = qword_27F5805F0;
  if (!qword_27F5805F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5805F0);
  }

  return result;
}

unint64_t sub_2530C2984()
{
  result = qword_27F5805F8;
  if (!qword_27F5805F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5805F8);
  }

  return result;
}

unint64_t sub_2530C29D8()
{
  result = qword_27F580600;
  if (!qword_27F580600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580600);
  }

  return result;
}

unint64_t sub_2530C2A2C()
{
  result = qword_27F580608;
  if (!qword_27F580608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580608);
  }

  return result;
}

uint64_t sub_2530C2A80(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_253148944();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2530C2AC4()
{
  result = qword_27F580638;
  if (!qword_27F580638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580638);
  }

  return result;
}

unint64_t sub_2530C2B18()
{
  result = qword_27F580640;
  if (!qword_27F580640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580640);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCModelStateChange.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for XPCModelStateChange.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s4RoomV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s4RoomV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2530C2E3C()
{
  result = qword_27F580648;
  if (!qword_27F580648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580648);
  }

  return result;
}

unint64_t sub_2530C2E94()
{
  result = qword_27F580650;
  if (!qword_27F580650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580650);
  }

  return result;
}

unint64_t sub_2530C2EEC()
{
  result = qword_27F580658;
  if (!qword_27F580658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580658);
  }

  return result;
}

unint64_t sub_2530C2F44()
{
  result = qword_27F580660;
  if (!qword_27F580660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580660);
  }

  return result;
}

unint64_t sub_2530C2F9C()
{
  result = qword_27F580668;
  if (!qword_27F580668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580668);
  }

  return result;
}

unint64_t sub_2530C2FF4()
{
  result = qword_27F580670;
  if (!qword_27F580670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580670);
  }

  return result;
}

unint64_t sub_2530C304C()
{
  result = qword_27F580678;
  if (!qword_27F580678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580678);
  }

  return result;
}

unint64_t sub_2530C30A4()
{
  result = qword_27F580680;
  if (!qword_27F580680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580680);
  }

  return result;
}

unint64_t sub_2530C30FC()
{
  result = qword_27F580688;
  if (!qword_27F580688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580688);
  }

  return result;
}

unint64_t sub_2530C3154()
{
  result = qword_27F580690;
  if (!qword_27F580690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580690);
  }

  return result;
}

unint64_t sub_2530C31AC()
{
  result = qword_27F580698;
  if (!qword_27F580698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580698);
  }

  return result;
}

unint64_t sub_2530C3204()
{
  result = qword_27F5806A0;
  if (!qword_27F5806A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5806A0);
  }

  return result;
}

uint64_t sub_2530C3258(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579297 && a2 == 0xE300000000000000;
  if (v3 || (sub_253149734() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657461647075 && a2 == 0xE600000000000000 || (sub_253149734() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656C6564 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_253149734();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2530C3394(int a1)
{
  v49 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580778, &qword_25314F570);
  v3 = *(v2 - 8);
  v46 = v2 - 8;
  v53 = v3;
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v48 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = v42 - v6;
  v45 = sub_253148944();
  v7 = *(v45 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v45);
  MEMORY[0x28223BE20](v9);
  v11 = v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580780, &qword_25314C4E0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580788, &qword_25314F560);
  v17 = *(v16 - 8);
  v43 = v16;
  v44 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = v42 - v18;
  (*(v13 + 104))(v15, *MEMORY[0x277D85778], v12);
  sub_253148DF4();
  (*(v13 + 8))(v15, v12);
  sub_253148934();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = *(v7 + 16);
  v22 = v45;
  v21(v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v45);
  v23 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  v51 = v7;
  v25 = v24 + v23;
  v27 = v47;
  v26 = v48;
  (*(v7 + 32))(v25, v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  v28 = v43;
  sub_253148E14();
  v52 = v11;
  v29 = v11;
  v30 = v28;
  v31 = v44;
  v21(v27, v29, v22);
  v32 = v42[1];
  v33 = v46;
  v34 = *(v31 + 16);
  v35 = v27 + *(v46 + 44);
  v50 = v19;
  v34(v35, v19, v30);
  *(v27 + *(v33 + 48)) = v49 & 1;
  v36 = v26;
  sub_2530CD26C(v27, v26, &qword_27F580778, &qword_25314F570);
  swift_beginAccess();
  v37 = *(v32 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v32 + 112) = v37;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v37 = sub_2530F4430(0, v37[2] + 1, 1, v37);
    *(v32 + 112) = v37;
  }

  v40 = v37[2];
  v39 = v37[3];
  if (v40 >= v39 >> 1)
  {
    v37 = sub_2530F4430((v39 > 1), v40 + 1, 1, v37);
  }

  v37[2] = v40 + 1;
  sub_2530CD2D4(v36, v37 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v40, &qword_27F580778, &qword_25314F570);
  *(v32 + 112) = v37;
  swift_endAccess();
  sub_2530CD33C(v27, &qword_27F580778, &qword_25314F570);
  (*(v51 + 8))(v52, v22);
  return (*(v31 + 8))(v50, v30);
}

uint64_t sub_2530C38D8(int a1)
{
  v49 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807E0, &qword_25314C5B8);
  v3 = *(v2 - 8);
  v46 = v2 - 8;
  v53 = v3;
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v48 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v47 = v42 - v6;
  v45 = sub_253148944();
  v7 = *(v45 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v45);
  MEMORY[0x28223BE20](v9);
  v11 = v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807E8, &qword_25314C5C0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807F0, &qword_25314C5C8);
  v17 = *(v16 - 8);
  v43 = v16;
  v44 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = v42 - v18;
  (*(v13 + 104))(v15, *MEMORY[0x277D85778], v12);
  sub_253148DF4();
  (*(v13 + 8))(v15, v12);
  sub_253148934();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = *(v7 + 16);
  v22 = v45;
  v21(v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v45);
  v23 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  v51 = v7;
  v25 = v24 + v23;
  v27 = v47;
  v26 = v48;
  (*(v7 + 32))(v25, v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  v28 = v43;
  sub_253148E14();
  v52 = v11;
  v29 = v11;
  v30 = v28;
  v31 = v44;
  v21(v27, v29, v22);
  v32 = v42[1];
  v33 = v46;
  v34 = *(v31 + 16);
  v35 = v27 + *(v46 + 44);
  v50 = v19;
  v34(v35, v19, v30);
  *(v27 + *(v33 + 48)) = v49 & 1;
  v36 = v26;
  sub_2530CD26C(v27, v26, &qword_27F5807E0, &qword_25314C5B8);
  swift_beginAccess();
  v37 = *(v32 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v32 + 112) = v37;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v37 = sub_2530F46F8(0, v37[2] + 1, 1, v37);
    *(v32 + 112) = v37;
  }

  v40 = v37[2];
  v39 = v37[3];
  if (v40 >= v39 >> 1)
  {
    v37 = sub_2530F46F8((v39 > 1), v40 + 1, 1, v37);
  }

  v37[2] = v40 + 1;
  sub_2530CD2D4(v36, v37 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v40, &qword_27F5807E0, &qword_25314C5B8);
  *(v32 + 112) = v37;
  swift_endAccess();
  sub_2530CD33C(v27, &qword_27F5807E0, &qword_25314C5B8);
  (*(v51 + 8))(v52, v22);
  return (*(v31 + 8))(v50, v30);
}

uint64_t sub_2530C3E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_253148944();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v15 = sub_253148DE4();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    (*(v8 + 16))(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
    v16 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v17 = swift_allocObject();
    *(v17 + 2) = 0;
    *(v17 + 3) = 0;
    *(v17 + 4) = v14;
    (*(v8 + 32))(&v17[v16], &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    sub_253112858(0, 0, v12, a5, v17);
  }

  return result;
}

uint64_t sub_2530C4014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_2530C4034, a4, 0);
}

uint64_t sub_2530C4034()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  swift_beginAccess();
  result = sub_2530CA414(sub_2530CD688, v3, &qword_27F580778, &qword_25314F570, sub_2530CB5C0);
  v5 = *(*(v2 + 112) + 16);
  if (v5 < result)
  {
    __break(1u);
  }

  else
  {
    sub_2530CB79C(result, v5, sub_2530F4430, &qword_27F580778, &qword_25314F570);
    swift_endAccess();

    v6 = v0[1];

    return v6();
  }

  return result;
}

uint64_t sub_2530C415C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_2530C417C, a4, 0);
}

uint64_t sub_2530C417C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  swift_beginAccess();
  result = sub_2530CA414(sub_2530CD560, v3, &qword_27F5807E0, &qword_25314C5B8, sub_2530CB63C);
  v5 = *(*(v2 + 112) + 16);
  if (v5 < result)
  {
    __break(1u);
  }

  else
  {
    sub_2530CB79C(result, v5, sub_2530F46F8, &qword_27F5807E0, &qword_25314C5B8);
    swift_endAccess();

    v6 = v0[1];

    return v6();
  }

  return result;
}

uint64_t sub_2530C42A4()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F5806A8);
  __swift_project_value_buffer(v0, qword_27F5806A8);
  return sub_253148A84();
}

uint64_t sub_2530C43B4()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2530C4420()
{
  v1 = v0;
  if (qword_27F580200 != -1)
  {
    swift_once();
  }

  v2 = sub_253148A94();
  __swift_project_value_buffer(v2, qword_27F5806A8);
  v3 = sub_253148A74();
  v4 = sub_253149094();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2530B8000, v3, v4, "Connection interrupted, cancelling subscriptions", v5, 2u);
    MEMORY[0x259BFDC60](v5, -1, -1);
  }

  result = swift_beginAccess();
  v7 = *(v1 + 152);
  *(v1 + 152) = MEMORY[0x277D84F90];
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_7;
    }
  }

  result = sub_2531492E4();
  v8 = result;
  if (!result)
  {
  }

LABEL_7:
  if (v8 >= 1)
  {
    v9 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x259BFD000](v9, v7);
      }

      else
      {
      }

      ++v9;
      sub_2530CB28C();
      v10 = swift_allocError();
      *v11 = 0;
      v12 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8);
      sub_253148EF4();
    }

    while (v8 != v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_2530C4630(uint64_t a1)
{
  if (qword_27F580200 != -1)
  {
    swift_once();
  }

  v3 = sub_253148A94();
  __swift_project_value_buffer(v3, qword_27F5806A8);

  v4 = sub_253148A74();
  v5 = sub_253149094();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15[0] = v7;
    *v6 = 136315138;
    sub_253148944();
    sub_2530CCD48(&qword_27F5807B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v8 = sub_2531496F4();
    v10 = sub_253146498(v8, v9, v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2530B8000, v4, v5, "Removing subscription %s after invalidation", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x259BFDC60](v7, -1, -1);
    MEMORY[0x259BFDC60](v6, -1, -1);
  }

  swift_beginAccess();

  v11 = sub_2530CB9E4((v1 + 152), a1);

  v13 = *(v1 + 152);
  if (v13 >> 62)
  {
    result = sub_2531492E4();
    v14 = result;
    if (result >= v11)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14 >= v11)
    {
LABEL_7:
      sub_2530CBD0C(v11, v14);
      return swift_endAccess();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2530C486C(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return MEMORY[0x2822009F8](sub_2530C4890, v2, 0);
}

uint64_t sub_2530C4890()
{
  if (qword_27F580200 != -1)
  {
    swift_once();
  }

  v1 = sub_253148A94();
  __swift_project_value_buffer(v1, qword_27F5806A8);

  v2 = sub_253148A74();
  v3 = sub_253149094();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[13];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&dword_2530B8000, v2, v3, "Registering for model updates for %ld model types", v6, 0xCu);
    MEMORY[0x259BFDC60](v6, -1, -1);
  }

  else
  {
  }

  v7 = v0[13];
  sub_2530C25FC(v0[14] + 112, (v0 + 2));
  v8 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v9 = swift_allocObject();
  v0[15] = v9;
  *(v9 + 16) = v7;
  v10 = *v8;
  v0[16] = v10;

  return MEMORY[0x2822009F8](sub_2530C4A34, v10, 0);
}

uint64_t sub_2530C4A34()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = sub_2530CCD48(&qword_27F5806C8, type metadata accessor for XPCConnectionWrapper, &unk_25314F518);
  v4 = swift_task_alloc();
  v0[17] = v4;
  v4[2] = v1;
  v4[3] = &unk_25314C550;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[18] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807A8, &qword_25314C560);
  *v5 = v0;
  v5[1] = sub_2530C4B90;

  return MEMORY[0x2822008A0](v0 + 10, v1, v3, 0xD000000000000019, 0x800000025314A7E0, sub_2530CCAE0, v4, v6);
}

uint64_t sub_2530C4B90()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = sub_2530C4E2C;
  }

  else
  {
    v5 = *(v2 + 112);

    *(v2 + 160) = *(v2 + 80);
    v4 = sub_2530C4CD0;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2530C4CD0()
{
  v1 = *(v0 + 112);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  swift_beginAccess();

  MEMORY[0x259BFC870](v2);
  if (*((*(v1 + 152) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 152) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_253148CD4();
  }

  v3 = *(v0 + 112);
  v7 = *(v0 + 160);
  sub_253148D14();
  swift_endAccess();
  v4 = swift_allocObject();
  *(v4 + 16) = v7;
  *(v4 + 32) = v3;
  type metadata accessor for AnyModelStateChange(0);

  sub_253148F34();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2530C4E2C()
{
  v1 = *(v0 + 112);

  return MEMORY[0x2822009F8](sub_2530C4EA0, v1, 0);
}

uint64_t sub_2530C4EA0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2530C4F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807D0, &qword_25314C5A0);
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v3[13] = *(v5 + 64);
  v3[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807D8, &unk_25314D920);
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8);
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C8, &qword_25314D940);
  v3[21] = v8;
  v3[22] = *(v8 - 8);
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530C5114, 0, 0);
}

uint64_t sub_2530C5114()
{
  v1 = v0[10];
  v2 = *(v1 + 16);
  if (v2)
  {
    v30 = MEMORY[0x277D84F90];
    sub_2530F4D50(0, v2, 0);
    v3 = (v1 + 32);
    v4 = *(v30 + 16);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *(v30 + 24);
      if (v4 >= v7 >> 1)
      {
        sub_2530F4D50((v7 > 1), v4 + 1, 1);
      }

      *(v30 + 16) = v4 + 1;
      *(v30 + 8 * v4++ + 32) = v5;
      --v2;
    }

    while (v2);
  }

  v8 = v0[23];
  v9 = v0[20];
  v23 = v0[22];
  v24 = v0[21];
  v10 = v0[19];
  v11 = v0[16];
  v12 = v0[17];
  v13 = v0[15];
  v27 = v0[14];
  v28 = v0[13];
  v21 = v0[12];
  v22 = v0[18];
  v25 = v0[9];
  v26 = v0[11];
  v29 = v0[8];
  type metadata accessor for XPCSubscription(0);
  v14 = swift_allocObject();
  sub_253148934();
  type metadata accessor for AnyModelStateChange(0);
  (*(v11 + 104))(v12, *MEMORY[0x277D858A0], v13);
  sub_253148ED4();
  (*(v11 + 8))(v12, v13);
  (*(v10 + 32))(v14 + OBJC_IVAR____TtC11HomeKitCore15XPCSubscription_continuation, v9, v22);
  (*(v23 + 32))(v14 + OBJC_IVAR____TtC11HomeKitCore15XPCSubscription_changes, v8, v24);

  v15 = sub_253148C84();

  (*(v21 + 16))(v27, v25, v26);
  v16 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v17 = swift_allocObject();
  (*(v21 + 32))(v17 + v16, v27, v26);
  *(v17 + ((v28 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  v0[6] = sub_2530CD050;
  v0[7] = v17;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2530C556C;
  v0[5] = &block_descriptor_122;
  v18 = _Block_copy(v0 + 2);

  [v29 registerObserver:v14 modelTypes:v15 completionHandler:v18];
  _Block_release(v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_2530C54AC(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807D0, &qword_25314C5A0);
    return sub_253148D94();
  }

  if (!a1)
  {
    sub_2530CB28C();
    swift_allocError();
    *v6 = 1;
    goto LABEL_3;
  }

  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807D0, &qword_25314C5A0);
  return sub_253148DA4();
}

uint64_t sub_2530C556C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_2530C55EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2530C5610, 0, 0);
}

uint64_t sub_2530C5610()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807B0, &qword_25314D460);
  *v3 = v0;
  v3[1] = sub_2530C5714;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  return MEMORY[0x282200830](v5, &unk_25314C580, v6, sub_2530CCC7C, v2, 0, 0, v4);
}

uint64_t sub_2530C5714()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2530C5850, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2530C5850()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2530C58B4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C0, &qword_25314C598);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530C5980, 0, 0);
}

uint64_t sub_2530C5980()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C8, &qword_25314D940);
  sub_253148E54();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_2530C5A5C;
  v2 = v0[4];
  v3 = v0[2];

  return MEMORY[0x2822005B0](v3, v2);
}

uint64_t sub_2530C5A5C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2530C5BF0;
  }

  else
  {
    v2 = sub_2530C5B70;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2530C5B70()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2530C5BF0()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2530C5C70(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  if (qword_27F580200 != -1)
  {
    swift_once();
  }

  v8 = sub_253148A94();
  __swift_project_value_buffer(v8, qword_27F5806A8);
  v9 = sub_253148A74();
  v10 = sub_253149094();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2530B8000, v9, v10, "Stream has been cancelled, cleaning up...", v11, 2u);
    MEMORY[0x259BFDC60](v11, -1, -1);
  }

  [a1 cancel];
  v12 = sub_253148DE4();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v13;
  v14[5] = a3;

  sub_253112858(0, 0, v7, &unk_25314C590, v14);
}

uint64_t sub_2530C5E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](sub_2530C5E9C, 0, 0);
}

uint64_t sub_2530C5E9C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_2530C5F54, Strong, 0);
  }

  else
  {
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_2530C5F54()
{
  sub_2530C4630(*(v0 + 48));

  return MEMORY[0x2822009F8](sub_2530C5FBC, 0, 0);
}

uint64_t sub_2530C5FBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2530C601C()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  v1[3] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580760, &qword_25314C4B8);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v1[6] = *(v3 + 64);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530C6134, v0, 0);
}

uint64_t sub_2530C6134()
{
  v1 = v0[2];
  if (v1[20])
  {
    sub_2530CB28C();
    swift_allocError();
    *v2 = 2;
    swift_willThrow();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = __swift_project_boxed_opaque_existential_1(v1 + 14, v1[17]);
    v6 = *v5;
    v0[9] = *v5;

    return MEMORY[0x2822009F8](sub_2530C624C, v6, 0);
  }
}

uint64_t sub_2530C624C()
{
  v1 = *(*(v0 + 72) + 120);
  *(v0 + 80) = v1;
  return MEMORY[0x2822009F8](sub_2530C6270, v1, 0);
}

uint64_t sub_2530C6270()
{
  v1 = *(v0 + 16);
  sub_2530C3394(1);

  return MEMORY[0x2822009F8](sub_2530C62E4, v1, 0);
}

uint64_t sub_2530C62E4()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v16 = v5;
  v7 = v0[2];
  v8 = sub_253148DE4();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(v1, v2, v6);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  (*(v4 + 32))(v12 + v10, v1, v6);
  *(v12 + v11) = v9;
  v13 = sub_253112858(0, 0, v16, &unk_25314C4C8, v12);
  (*(v4 + 8))(v2, v6);
  *(v7 + 160) = v13;

  v14 = v0[1];

  return v14();
}

uint64_t sub_2530C64BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580768, &qword_25314C4D0);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530C6588, 0, 0);
}

uint64_t sub_2530C6588()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580760, &qword_25314C4B8);
  sub_253148E54();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_2530C6670;
  v2 = *(v0 + 56);

  return MEMORY[0x2822003E8](v0 + 96, 0, 0, v2);
}

uint64_t sub_2530C6670()
{

  return MEMORY[0x2822009F8](sub_2530C676C, 0, 0);
}

uint64_t sub_2530C676C()
{
  if ((*(v0 + 96) & 1) != 0 || (Strong = swift_weakLoadStrong(), (*(v0 + 88) = Strong) == 0))
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2530C683C, Strong, 0);
  }
}

uint64_t sub_2530C683C()
{
  sub_2530C4420();

  return MEMORY[0x2822009F8](sub_2530C68A4, 0, 0);
}

uint64_t sub_2530C68A4()
{

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_2530C6670;
  v2 = *(v0 + 56);

  return MEMORY[0x2822003E8](v0 + 96, 0, 0, v2);
}

uint64_t sub_2530C6954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a2;
  v4[9] = a3;
  v4[7] = a1;
  return MEMORY[0x2822009F8](sub_2530C6978, v3, 0);
}

uint64_t sub_2530C6978()
{
  v1 = v0[8];
  v0[5] = &_s14descr2864E9281O3XPCC5ProxyVN;
  v0[6] = &off_2864EA688;
  v1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_2530C6A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807A0, &qword_25314C520);
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v4[14] = *(v6 + 64);
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530C6AF4, 0, 0);
}

uint64_t sub_2530C6AF4()
{
  v13 = v0;
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[8];
  v5 = v0[9];
  (*(v0[11] + 48))(&v12);
  v6 = v12;
  (*(v3 + 16))(v1, v5, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_2530CC990;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2530C6C94;
  v0[5] = &block_descriptor_80;
  v9 = _Block_copy(v0 + 2);

  [v4 fetchModelsWithType:v6 completionHandler:v9];
  _Block_release(v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2530C6C94(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_253148C94();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_2530C6D2C(uint64_t a1)
{
  v2[27] = a1;
  v2[28] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5806C0, &qword_25314C460);
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530C6E24, v1, 0);
}

uint64_t sub_2530C6E24()
{
  v1 = *(v0 + 224);
  if (*(v1 + 160))
  {

    return MEMORY[0x2822009F8](sub_2530C70C0, v1, 0);
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 256) = v2;
    *v2 = v0;
    v2[1] = sub_2530C6F38;

    return sub_2530C601C();
  }
}

uint64_t sub_2530C6F38()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 224);

    return MEMORY[0x2822009F8](sub_2530C70C0, v6, 0);
  }
}

uint64_t sub_2530C70C0()
{
  v1 = v0[27];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v13 = MEMORY[0x277D84F90];
    sub_2530F4D50(0, v2, 0);
    v3 = v13;
    v4 = (v1 + 32);
    v5 = *(v13 + 16);
    do
    {
      v7 = *v4++;
      v6 = v7;
      v8 = *(v13 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_2530F4D50((v8 > 1), v5 + 1, 1);
      }

      *(v13 + 16) = v5 + 1;
      *(v13 + 8 * v5++ + 32) = v6;
      --v2;
    }

    while (v2);
  }

  sub_2530C25FC(v0[28] + 112, (v0 + 2));
  v9 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v10 = swift_allocObject();
  v0[33] = v10;
  *(v10 + 16) = v3;
  v11 = *v9;
  v0[34] = *v9;

  return MEMORY[0x2822009F8](sub_2530C7230, v11, 0);
}

uint64_t sub_2530C7230()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = sub_2530CCD48(&qword_27F5806C8, type metadata accessor for XPCConnectionWrapper, &unk_25314F518);
  v4 = swift_task_alloc();
  v0[35] = v4;
  v4[2] = v1;
  v4[3] = &unk_25314C478;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[36] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5806D0, &qword_25314C480);
  *v5 = v0;
  v5[1] = sub_2530C73B8;

  return MEMORY[0x2822008A0](v0 + 25, v1, v3, 0xD000000000000019, 0x800000025314A7E0, sub_2530CA9D0, v4, v6);
}

uint64_t sub_2530C73B8()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = v2[34];
    v4 = sub_2530C7FB8;
  }

  else
  {
    v5 = v2[28];

    v2[38] = v2[25];
    v4 = sub_2530C7540;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2530C7540()
{
  v64 = v0;
  v63[2] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 304);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v2 = v1 + 64;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;
  v59 = v1;
  v7 = *(v0 + 296);

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v57 = v6;
  v58 = v1 + 64;
  while (1)
  {
    v62 = v9;
    if (!v5)
    {
      break;
    }

LABEL_11:
    v11 = (*(v59 + 56) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
    v12 = *v11;
    v13 = v11[1];
    v14 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_2530CAA1C(v12, v13);
    sub_2530CAA1C(v12, v13);

    v15 = sub_2531488A4();
    *(v0 + 208) = 0;
    v16 = [v14 initForReadingFromData:v15 error:v0 + 208];

    v17 = *(v0 + 208);
    if (!v16)
    {
      v51 = v17;
      sub_253148844();

      swift_willThrow();
      sub_2530C2478(v12, v13);
LABEL_58:

      sub_2530C2478(v12, v13);

      v52 = *(v0 + 8);

      return v52();
    }

    v18 = v17;
    sub_2530C2478(v12, v13);
    sub_253148B64();
    sub_2530CAA70();
    sub_2531490E4();
    if (v7)
    {

      goto LABEL_58;
    }

    v60 = v13;

    v19 = *(v0 + 176);
    if (v19 == 8)
    {
      *(v0 + 128) = 0;
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;

      sub_2530C2478(v12, v60);
    }

    else
    {
      v20 = *(v0 + 184);
      v21 = *(v0 + 192);
      v22 = *(v0 + 176);
      v55 = *(v0 + 176);
      v56 = v12;
      if (v19 > 3u)
      {
        if (*(v0 + 176) > 5u)
        {
          if (v22 == 6)
          {
            v23 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice(0);
            v24 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice;
            v25 = &protocol conformance descriptor for HomesStore.Accessory.AppleMediaDevice;
            v26 = &unk_27F5806F0;
          }

          else
          {
            v23 = type metadata accessor for HomesStore.User.SharedSettings(0);
            v24 = type metadata accessor for HomesStore.User.SharedSettings;
            v25 = &protocol conformance descriptor for HomesStore.User.SharedSettings;
            v26 = &unk_27F5806E8;
          }
        }

        else if (v22 == 4)
        {
          v23 = type metadata accessor for HomesStore.User(0);
          v24 = type metadata accessor for HomesStore.User;
          v25 = &protocol conformance descriptor for HomesStore.User;
          v26 = &unk_27F580700;
        }

        else
        {
          v23 = type metadata accessor for HomesStore.Zone(0);
          v24 = type metadata accessor for HomesStore.Zone;
          v25 = &protocol conformance descriptor for HomesStore.Zone;
          v26 = &qword_27F5806F8;
        }
      }

      else if (*(v0 + 176) > 1u)
      {
        if (v22 == 2)
        {
          v23 = type metadata accessor for HomesStore.Home(0);
          v24 = type metadata accessor for HomesStore.Home;
          v25 = &protocol conformance descriptor for HomesStore.Home;
          v26 = &qword_27F580710;
        }

        else
        {
          v23 = type metadata accessor for HomesStore.HomesRelationshipModel(0);
          v24 = type metadata accessor for HomesStore.HomesRelationshipModel;
          v25 = &protocol conformance descriptor for HomesStore.HomesRelationshipModel;
          v26 = &qword_27F580708;
        }
      }

      else if (*(v0 + 176))
      {
        v23 = type metadata accessor for HomesStore.Room(0);
        v24 = type metadata accessor for HomesStore.Room;
        v25 = &protocol conformance descriptor for HomesStore.Room;
        v26 = &qword_27F580718;
      }

      else
      {
        v23 = type metadata accessor for HomesStore.Accessory(0);
        v24 = type metadata accessor for HomesStore.Accessory;
        v25 = &protocol conformance descriptor for HomesStore.Accessory;
        v26 = &qword_27F580720;
      }

      v27 = sub_2530CCD48(v26, v24, v25);
      v54 = sub_2531491F4();
      v28 = *(v54 - 8);
      v29 = swift_task_alloc();
      sub_2530CAA1C(v20, v21);
      v30 = v27;
      v31 = *(v27 + 8);
      v32 = v20;
      sub_25311A1FC(v20, v21, v23, v31);
      sub_2530CAAC4(v55, v20, v21);
      v33 = *(v23 - 8);
      if ((*(v33 + 48))(v29, 1, v23) == 1)
      {
        sub_2530CAAC4(v55, v32, v21);
        (*(v28 + 8))(v29, v54);

        *(v0 + 128) = 0;
        *(v0 + 96) = 0u;
        *(v0 + 112) = 0u;

        sub_2530C2478(v56, v60);
      }

      else
      {
        *(v0 + 120) = v23;
        *(v0 + 128) = v30;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 96));
        (*(v33 + 32))(boxed_opaque_existential_0, v29, v23);
        sub_2530CAAC4(v55, v32, v21);

        sub_2530C2478(v56, v60);
      }

      v9 = v62;
    }

    v6 = v57;
    v2 = v58;
    v35 = (v0 + 96);
    if (*(v0 + 120))
    {
      sub_2530BDB14(v35, v0 + 56);
      sub_2530BDB14((v0 + 56), v0 + 136);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_2530F4454(0, v9[2] + 1, 1, v9);
      }

      v37 = v9[2];
      v36 = v9[3];
      if (v37 >= v36 >> 1)
      {
        v9 = sub_2530F4454((v36 > 1), v37 + 1, 1, v9);
      }

      v9[2] = v37 + 1;
      sub_2530BDB14((v0 + 136), &v9[5 * v37 + 4]);
    }

    else
    {
      sub_2530CD33C(v35, &qword_27F5806E0, &qword_25314D900);
    }

    v7 = 0;
    v5 &= v5 - 1;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_11;
    }
  }

  v38 = v9[2];
  if (v38)
  {
    v61 = v7;
    v39 = *(v0 + 232);
    v40 = *(v0 + 240);
    v63[0] = MEMORY[0x277D84F90];
    sub_2530F4D70(0, v38, 0);
    v41 = v63[0];
    v42 = (v9 + 4);
    do
    {
      v43 = (*(v0 + 248) + *(v39 + 48));
      sub_2530C25FC(v42, v43);
      __swift_project_boxed_opaque_existential_1(v43, v43[3]);
      sub_2531493D4();
      v63[0] = v41;
      v45 = *(v41 + 16);
      v44 = *(v41 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_2530F4D70((v44 > 1), v45 + 1, 1);
        v41 = v63[0];
      }

      v46 = *(v0 + 248);
      *(v41 + 16) = v45 + 1;
      sub_2530CD2D4(v46, v41 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v45, &qword_27F5806C0, &qword_25314C460);
      v42 += 40;
      --v38;
    }

    while (v38);

    v7 = v61;
    if (*(v41 + 16))
    {
      goto LABEL_46;
    }
  }

  else
  {

    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_46:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580728, &qword_25314C488);
      v47 = sub_2531495D4();
      goto LABEL_49;
    }
  }

  v47 = MEMORY[0x277D84F98];
LABEL_49:
  v63[0] = v47;

  sub_2530CAAE0(v48, 1, v63);
  if (v7)
  {

    return MEMORY[0x2821FEBD8](v7, "Swift/Dictionary.swift", 22, 1, 490);
  }

  else
  {

    v49 = v63[0];

    v50 = *(v0 + 8);

    return v50(v49);
  }
}

uint64_t sub_2530C7FB8()
{
  v1 = *(v0 + 224);

  return MEMORY[0x2822009F8](sub_2530C8064, v1, 0);
}

uint64_t sub_2530C8064()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2530C80FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580738, &qword_25314C490);
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v3[13] = *(v5 + 64);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530C81D4, 0, 0);
}

uint64_t sub_2530C81D4()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[8];
  v6 = sub_253148C84();
  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[6] = sub_2530CB278;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2530C841C;
  v0[5] = &block_descriptor_33;
  v9 = _Block_copy(v0 + 2);

  [v5 fetchModelsWithTypes:v6 completionHandler:v9];
  _Block_release(v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2530C8368(uint64_t a1, id a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2)
  {
    v7 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    return sub_253148D94();
  }

  if (!a1)
  {
    sub_2530CB28C();
    swift_allocError();
    *v9 = 1;
    goto LABEL_3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  return sub_253148DA4();
}

uint64_t sub_2530C841C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_253148AD4();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_2530C84C4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2530C84E8, v2, 0);
}

uint64_t sub_2530C84E8()
{
  v1 = *(v0 + 32);
  if (*(v1 + 160))
  {

    return MEMORY[0x2822009F8](sub_2530C86FC, v1, 0);
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 40) = v2;
    *v2 = v0;
    v2[1] = sub_2530C85B8;

    return sub_2530C601C();
  }
}

uint64_t sub_2530C85B8()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 32);

    return MEMORY[0x2822009F8](sub_2530C86FC, v6, 0);
  }
}

uint64_t sub_2530C86FC()
{
  v13 = v0;
  v1 = v0[3];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_2530F4DB0(0, v2, 0);
    v3 = v11;
    v4 = v1 + 40;
    do
    {
      (*(*v4 + 48))(&v12);
      v5 = v12;
      v7 = *(v11 + 16);
      v6 = *(v11 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_2530F4DB0((v6 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      *(v11 + v7 + 32) = v5;
      v4 += 16;
      --v2;
    }

    while (v2);
  }

  v0[6] = v3;
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_2530C885C;
  v9 = v0[2];

  return sub_2530C486C(v9, v3);
}

uint64_t sub_2530C885C()
{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {
    v3 = v2[4];

    return MEMORY[0x2822009F8](sub_2530C8998, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_2530C8998()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2530C89FC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2530BF218;

  return sub_2530C84C4(a1, a2);
}

uint64_t sub_2530C8AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_2530CD6C0;

  return sub_2530CBDE4(a3, a4);
}

uint64_t sub_2530C8B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2530C8C20;

  return sub_2530CC53C();
}

uint64_t sub_2530C8C20(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_2530C8D20(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2530CD6C0;

  return sub_2530C6D2C(a1);
}

uint64_t sub_2530C8DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2530CD684;

  return sub_2530C6954(a1, a2, a3);
}

uint64_t sub_2530C8E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v25 = a3;
  v26 = a8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580568, &qword_25314BDB0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v25 - v17;
  v19 = sub_253148DE4();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v12 + 16))(v15, a1, v11);
  v20 = sub_2530CCD48(&qword_27F5806C8, type metadata accessor for XPCConnectionWrapper, &unk_25314F518);
  v21 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  *(v22 + 3) = v20;
  *(v22 + 4) = a2;
  (*(v12 + 32))(&v22[v21], v15, v11);
  v23 = &v22[(v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v23 = v25;
  v23[1] = a4;
  swift_retain_n();

  sub_253112858(0, 0, v18, v26, v22);
}

uint64_t sub_2530C90B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[17] = a6;
  v7[18] = a7;
  v7[15] = a4;
  v7[16] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F581E00, &unk_25314F540);
  v7[19] = v9;
  v7[20] = *(v9 - 8);
  v7[21] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807D0, &qword_25314C5A0);
  v7[22] = v10;
  v11 = *(v10 - 8);
  v7[23] = v11;
  v7[24] = *(v11 + 64);
  v7[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530C91F4, a4, 0);
}

uint64_t sub_2530C91F4()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[15];
  (*(v3 + 16))(v1, v0[16], v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = *(v4 + 112);
  if (v7)
  {
    v8 = *(v4 + 112);
  }

  else
  {
    v10 = v0[20];
    v9 = v0[21];
    v11 = v0[19];
    v12 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v13 = sub_253148B54();
    v14 = [v12 initWithMachServiceName:v13 options:4096];

    v0[12] = v14;
    v15 = sub_2530CB1C0();
    v8 = v14;
    MEMORY[0x259BFC580](v0 + 12, v15);
    sub_25310A894();
    (*(v10 + 8))(v9, v11);
    v7 = 0;
  }

  v0[6] = sub_2530CD03C;
  v0[7] = v6;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2530CA3AC;
  v0[5] = &block_descriptor_115;
  v16 = _Block_copy(v0 + 2);
  v17 = v7;

  v18 = [v8 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);

  sub_253149224();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580748, &qword_25314C4B0);
  if (swift_dynamicCast())
  {
    v19 = v0[17];
    v20 = v0[13];
    v0[26] = v20;

    v26 = (v19 + *v19);
    v21 = swift_task_alloc();
    v0[27] = v21;
    *v21 = v0;
    v21[1] = sub_2530C95C8;
    v22 = v0[16];

    return v26(v20, v22);
  }

  else
  {
    sub_2530CB224();
    v24 = swift_allocError();
    swift_willThrow();

    v0[14] = v24;
    sub_253148D94();

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_2530C95C8()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 120);
  if (v0)
  {
    v4 = sub_2530C9768;
  }

  else
  {
    v4 = sub_2530C96F4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2530C96F4()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2530C9768()
{
  swift_unknownObjectRelease();
  v0[14] = v0[28];
  sub_253148D94();

  v1 = v0[1];

  return v1();
}

uint64_t sub_2530C97F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[17] = a6;
  v7[18] = a7;
  v7[15] = a4;
  v7[16] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F581E00, &unk_25314F540);
  v7[19] = v9;
  v7[20] = *(v9 - 8);
  v7[21] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807A0, &qword_25314C520);
  v7[22] = v10;
  v11 = *(v10 - 8);
  v7[23] = v11;
  v7[24] = *(v11 + 64);
  v7[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530C9938, a4, 0);
}

uint64_t sub_2530C9938()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[15];
  (*(v3 + 16))(v1, v0[16], v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = *(v4 + 112);
  if (v7)
  {
    v8 = *(v4 + 112);
  }

  else
  {
    v10 = v0[20];
    v9 = v0[21];
    v11 = v0[19];
    v12 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v13 = sub_253148B54();
    v14 = [v12 initWithMachServiceName:v13 options:4096];

    v0[12] = v14;
    v15 = sub_2530CB1C0();
    v8 = v14;
    MEMORY[0x259BFC580](v0 + 12, v15);
    sub_25310A894();
    (*(v10 + 8))(v9, v11);
    v7 = 0;
  }

  v0[6] = sub_2530CC8FC;
  v0[7] = v6;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2530CA3AC;
  v0[5] = &block_descriptor_73;
  v16 = _Block_copy(v0 + 2);
  v17 = v7;

  v18 = [v8 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);

  sub_253149224();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580748, &qword_25314C4B0);
  if (swift_dynamicCast())
  {
    v19 = v0[17];
    v20 = v0[13];
    v0[26] = v20;

    v26 = (v19 + *v19);
    v21 = swift_task_alloc();
    v0[27] = v21;
    *v21 = v0;
    v21[1] = sub_2530C9D0C;
    v22 = v0[16];

    return v26(v20, v22);
  }

  else
  {
    sub_2530CB224();
    v24 = swift_allocError();
    swift_willThrow();

    v0[14] = v24;
    sub_253148D94();

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_2530C9D0C()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 120);
  if (v0)
  {
    v4 = sub_2530CD6A4;
  }

  else
  {
    v4 = sub_2530CD6A8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2530C9E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[17] = a6;
  v7[18] = a7;
  v7[15] = a4;
  v7[16] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F581E00, &unk_25314F540);
  v7[19] = v9;
  v7[20] = *(v9 - 8);
  v7[21] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580738, &qword_25314C490);
  v7[22] = v10;
  v11 = *(v10 - 8);
  v7[23] = v11;
  v7[24] = *(v11 + 64);
  v7[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530C9F7C, a4, 0);
}

uint64_t sub_2530C9F7C()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[15];
  (*(v3 + 16))(v1, v0[16], v2);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = *(v4 + 112);
  if (v7)
  {
    v8 = *(v4 + 112);
  }

  else
  {
    v10 = v0[20];
    v9 = v0[21];
    v11 = v0[19];
    v12 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v13 = sub_253148B54();
    v14 = [v12 initWithMachServiceName:v13 options:4096];

    v0[12] = v14;
    v15 = sub_2530CB1C0();
    v8 = v14;
    MEMORY[0x259BFC580](v0 + 12, v15);
    sub_25310A894();
    (*(v10 + 8))(v9, v11);
    v7 = 0;
  }

  v0[6] = sub_2530CB1AC;
  v0[7] = v6;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2530CA3AC;
  v0[5] = &block_descriptor;
  v16 = _Block_copy(v0 + 2);
  v17 = v7;

  v18 = [v8 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);

  sub_253149224();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580748, &qword_25314C4B0);
  if (swift_dynamicCast())
  {
    v19 = v0[17];
    v20 = v0[13];
    v0[26] = v20;

    v26 = (v19 + *v19);
    v21 = swift_task_alloc();
    v0[27] = v21;
    *v21 = v0;
    v21[1] = sub_2530C9D0C;
    v22 = v0[16];

    return v26(v20, v22);
  }

  else
  {
    sub_2530CB224();
    v24 = swift_allocError();
    swift_willThrow();

    v0[14] = v24;
    sub_253148D94();

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_2530CA350(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_253148D94();
}

void sub_2530CA3AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2530CA414(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v50 = a5;
  v7 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v48 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v48 - v18;
  v52 = v5;
  v20 = *v5;
  v60 = a1;
  v21 = v62;
  result = sub_2530CA77C(a1, a2, v20, v7, a4);
  if (!v21)
  {
    v56 = v19;
    v51 = v17;
    v49 = v14;
    v62 = 0;
    if (v23)
    {
      return *(v20 + 16);
    }

    v54 = a2;
    v57 = a4;
    v59 = result;
    v24 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v25 = v20;
      v27 = (v20 + 16);
      v26 = *(v20 + 16);
      v28 = v56;
      if (v24 == v26)
      {
        return v59;
      }

      v29 = v60;
      v53 = v11;
      while (v24 < v26)
      {
        v30 = (*(v11 + 80) + 32) & ~*(v11 + 80);
        v61 = v25;
        v55 = v30;
        v31 = v25 + v30;
        v32 = v29;
        v33 = *(v11 + 72);
        v58 = v33 * v24;
        v34 = v7;
        v35 = v57;
        sub_2530CD26C(v31 + v33 * v24, v28, v7, v57);
        v36 = v28;
        v37 = v62;
        v38 = v32(v28);
        v39 = v36;
        v7 = v34;
        result = sub_2530CD33C(v39, v34, v35);
        v62 = v37;
        if (v37)
        {
          return result;
        }

        if (v38)
        {
          v29 = v60;
          v25 = v61;
          v11 = v53;
        }

        else
        {
          v40 = v59;
          if (v24 == v59)
          {
            v29 = v60;
            v25 = v61;
            v11 = v53;
          }

          else
          {
            if ((v59 & 0x8000000000000000) != 0)
            {
              goto LABEL_27;
            }

            v41 = *v27;
            if (v59 >= v41)
            {
              goto LABEL_28;
            }

            v42 = v33 * v59;
            v43 = v31 + v33 * v59;
            v44 = v57;
            result = sub_2530CD26C(v43, v51, v34, v57);
            if (v24 >= v41)
            {
              goto LABEL_29;
            }

            v45 = v49;
            sub_2530CD26C(v31 + v58, v49, v34, v44);
            v46 = v44;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v29 = v60;
              v25 = v61;
            }

            else
            {
              v25 = v50(v61);
              v29 = v60;
            }

            v11 = v53;
            v47 = v25 + v55;
            result = sub_2530CD590(v45, v25 + v55 + v42, v7, v46);
            if (v24 >= *(v25 + 16))
            {
              goto LABEL_30;
            }

            result = sub_2530CD590(v51, v47 + v58, v7, v46);
            *v52 = v25;
            v40 = v59;
          }

          v59 = v40 + 1;
        }

        v28 = v56;
        ++v24;
        v27 = (v25 + 16);
        v26 = *(v25 + 16);
        if (v24 == v26)
        {
          return v59;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2530CA77C(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *(a3 + 16);
  if (!v6)
  {
    return 0;
  }

  v11 = 0;
  while (1)
  {
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5) - 8);
    v13 = a1(a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11);
    if (v5 || (v13 & 1) != 0)
    {
      break;
    }

    if (v6 == ++v11)
    {
      return 0;
    }
  }

  return v11;
}

uint64_t sub_2530CA884(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_2531492E4();
LABEL_9:
  result = sub_253149414();
  *v2 = result;
  return result;
}

uint64_t sub_2530CA924(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2530CD684;

  return sub_2530C80FC(a1, a2, v6);
}

uint64_t sub_2530CAA1C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_2530CAA70()
{
  result = qword_27F5806D8;
  if (!qword_27F5806D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5806D8);
  }

  return result;
}

uint64_t sub_2530CAAC4(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 8)
  {
    return sub_2530C2478(a2, a3);
  }

  return result;
}

void sub_2530CAAE0(uint64_t a1, char a2, void *a3)
{
  v7 = sub_253148944();
  v53 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5806C0, &qword_25314C460);
  v52 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v46 - v12;
  v50 = *(a1 + 16);
  if (!v50)
  {
    goto LABEL_24;
  }

  v46[1] = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v11 + 48);
  v15 = *(v52 + 80);
  v51 = a1;
  v16 = (v53 + 32);
  v48 = a1 + ((v15 + 32) & ~v15);
  sub_2530CD26C(v48, v13, &qword_27F5806C0, &qword_25314C460);
  v47 = *v16;
  v47(v9, v13, v7);
  v49 = v14;
  sub_2530BDB14(&v13[v14], v56);
  v17 = *a3;
  v19 = sub_25311D834(v9);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v23 = v18;
  if (v17[3] >= v22)
  {
    if (a2)
    {
      if ((v18 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_25312B6DC();
      if ((v23 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_25312C8DC(v22, a2 & 1);
  v24 = sub_25311D834(v9);
  if ((v23 & 1) == (v25 & 1))
  {
    v19 = v24;
    if ((v23 & 1) == 0)
    {
LABEL_14:
      v28 = *a3;
      *(*a3 + 8 * (v19 >> 6) + 64) |= 1 << v19;
      v47((v28[6] + *(v53 + 72) * v19), v9, v7);
      sub_2530BDB14(v56, v28[7] + 40 * v19);
      v29 = v28[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v28[2] = v31;
      if (v50 != 1)
      {
        v32 = 1;
        while (v32 < *(v51 + 16))
        {
          sub_2530CD26C(v48 + *(v52 + 72) * v32, v13, &qword_27F5806C0, &qword_25314C460);
          v33 = *v16;
          (*v16)(v9, v13, v7);
          sub_2530BDB14(&v13[v49], v56);
          v34 = *a3;
          v35 = sub_25311D834(v9);
          v37 = v34[2];
          v38 = (v36 & 1) == 0;
          v30 = __OFADD__(v37, v38);
          v39 = v37 + v38;
          if (v30)
          {
            goto LABEL_26;
          }

          v40 = v36;
          if (v34[3] < v39)
          {
            sub_25312C8DC(v39, 1);
            v35 = sub_25311D834(v9);
            if ((v40 & 1) != (v41 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v40)
          {
            goto LABEL_11;
          }

          v42 = *a3;
          *(*a3 + 8 * (v35 >> 6) + 64) |= 1 << v35;
          v43 = v35;
          v33((v42[6] + *(v53 + 72) * v35), v9, v7);
          sub_2530BDB14(v56, v42[7] + 40 * v43);
          v44 = v42[2];
          v30 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v30)
          {
            goto LABEL_27;
          }

          ++v32;
          v42[2] = v45;
          if (v50 == v32)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v26 = swift_allocError();
    swift_willThrow();
    v57 = v26;
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580730, &qword_25314F190);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_0(v56);
      (*(v53 + 8))(v9, v7);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_253149784();
  __break(1u);
LABEL_29:
  v54 = 0;
  v55 = 0xE000000000000000;
  sub_2531493C4();
  MEMORY[0x259BFC7D0](0xD00000000000001BLL, 0x800000025314A840);
  sub_253149544();
  MEMORY[0x259BFC7D0](39, 0xE100000000000000);
  sub_253149594();
  __break(1u);
}

uint64_t sub_2530CB064(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580738, &qword_25314C490) - 8);
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
  v13[1] = sub_2530CD684;

  return sub_2530C9E38(a1, v7, v8, v9, v1 + v6, v11, v12);
}

unint64_t sub_2530CB1C0()
{
  result = qword_27F580740;
  if (!qword_27F580740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F580740);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2530CB224()
{
  result = qword_27F580750;
  if (!qword_27F580750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580750);
  }

  return result;
}

unint64_t sub_2530CB28C()
{
  result = qword_27F580758;
  if (!qword_27F580758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580758);
  }

  return result;
}

uint64_t sub_2530CB2E0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580760, &qword_25314C4B8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2530BF218;

  return sub_2530C64BC(a1, v6, v7, v1 + v5, v8);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

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

uint64_t sub_2530CB4C8(uint64_t a1)
{
  v4 = *(sub_253148944() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2530CD684;

  return sub_2530C4014(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2530CB5D8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2531492E4();
  }

  return sub_253149414();
}

unint64_t sub_2530CB650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *v5;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v17 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_2530CB79C(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v8 + v10;
  if (__OFADD__(v8, v10))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v7 + 24) >> 1)
  {
    v7 = a3();
    *v5 = v7;
  }

  result = sub_2530CB650(v9, a2, 0, a4, a5);
  *v5 = v7;
  return result;
}

unint64_t sub_2530CB8E0(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = sub_2531492E4();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = MEMORY[0x259BFD000](v4, a1);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_2530CB9E4(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_2530CB8E0(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_2531492E4();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_2531492E4())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v16 = MEMORY[0x259BFD000](v11, v7);
    swift_unknownObjectRelease();
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        v3 = MEMORY[0x259BFD000](v10, v7);
        v14 = MEMORY[0x259BFD000](v11, v7);
        goto LABEL_21;
      }

LABEL_9:
      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v13)
    {
      goto LABEL_40;
    }

    v14 = *(v7 + 32 + 8 * v11);
    if (v14 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v13)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_2530CB5D8(v7);
          v15 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v14;

        if ((v7 & 0x8000000000000000) != 0 || v15)
        {
          v7 = sub_2530CB5D8(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        *(v4 + 8 * v11 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return sub_2531492E4();
}

uint64_t sub_2530CBC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for XPCSubscription(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_2531492E4();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_2531492E4();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2530CBD0C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_2531492E4();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_2531492E4();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_2530CA884(result, 1);

  return sub_2530CBC0C(v5, v3, 0);
}

uint64_t sub_2530CBDE4(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_2530CBE08, v2, 0);
}

uint64_t sub_2530CBE08()
{
  v1 = *(v0 + 88);
  if (*(v1 + 160))
  {

    return MEMORY[0x2822009F8](sub_2530CC01C, v1, 0);
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_2530CBED8;

    return sub_2530C601C();
  }
}

uint64_t sub_2530CBED8()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 88);

    return MEMORY[0x2822009F8](sub_2530CC01C, v6, 0);
  }
}

uint64_t sub_2530CC01C()
{
  v5 = *(v0 + 72);
  sub_2530C25FC(*(v0 + 88) + 112, v0 + 16);
  v1 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v2 = swift_allocObject();
  *(v0 + 104) = v2;
  *(v2 + 16) = v5;
  v3 = *v1;
  *(v0 + 112) = *v1;

  return MEMORY[0x2822009F8](sub_2530CC0C8, v3, 0);
}

uint64_t sub_2530CC0C8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = sub_2530CCD48(&qword_27F5806C8, type metadata accessor for XPCConnectionWrapper, &unk_25314F518);
  v4 = swift_task_alloc();
  v0[15] = v4;
  v4[2] = v1;
  v4[3] = &unk_25314C510;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[16] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580790, &qword_25314C518);
  v0[17] = v6;
  *v5 = v0;
  v5[1] = sub_2530CC228;

  return MEMORY[0x2822008A0](v0 + 7, v1, v3, 0xD000000000000019, 0x800000025314A7E0, sub_2530CC688, v4, v6);
}

uint64_t sub_2530CC228()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = v2[14];
    v4 = sub_2530CC460;
  }

  else
  {
    v5 = v2[11];

    v2[19] = v2[7];
    v4 = sub_2530CC36C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2530CC36C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v7 = *(v0 + 72);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  *(v0 + 64) = v2;
  *(swift_task_alloc() + 16) = v7;
  sub_2530CC708();
  v3 = sub_253148C34();

  v5 = *(v0 + 8);
  if (!v1)
  {
    v4 = v3;
  }

  return v5(v4);
}

uint64_t sub_2530CC460()
{
  v1 = *(v0 + 88);

  return MEMORY[0x2822009F8](sub_2530CC4D8, v1, 0);
}

uint64_t sub_2530CC4D8()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2530CC5D8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2530BF218;

  return sub_2530C6A1C(a1, a2, v7, v6);
}

unint64_t sub_2530CC708()
{
  result = qword_27F580798;
  if (!qword_27F580798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F580790, &qword_25314C518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580798);
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

uint64_t sub_2530CC7B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807A0, &qword_25314C520) - 8);
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
  v13[1] = sub_2530CD684;

  return sub_2530C97F4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_2530CCA34(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2530CD684;

  return sub_2530C4F04(a1, a2, v6);
}

uint64_t sub_2530CCB2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2530CD684;

  return sub_2530C55EC(a1, v4, v5, v6);
}

uint64_t sub_2530CCBE0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2530CD684;

  return sub_2530C58B4(a1, v1);
}

uint64_t sub_2530CCC88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2530CD684;

  return sub_2530C5E7C(a1, v4, v5, v7, v6);
}

uint64_t sub_2530CCD48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_21Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  swift_unknownObjectRelease();

  (*(v4 + 8))(v2 + v5, v3);

  return swift_deallocObject();
}

uint64_t sub_2530CCE70(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807D0, &qword_25314C5A0) - 8);
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
  v13[1] = sub_2530CD684;

  return sub_2530C90B0(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t objectdestroy_25Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  (*(*(v3 - 8) + 8))(v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)), v3);

  return swift_deallocObject();
}

uint64_t sub_2530CD050(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807D0, &qword_25314C5A0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2530C54AC(a1, a2, v2 + v6, v7);
}

uint64_t objectdestroy_47Tm()
{
  v1 = sub_253148944();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2530CD26C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2530CD2D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2530CD33C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_50Tm()
{
  v1 = sub_253148944();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2530CD468(uint64_t a1)
{
  v4 = *(sub_253148944() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2530CD684;

  return sub_2530C415C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2530CD590(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_2530CD61C()
{
  result = qword_27F5807F8;
  if (!qword_27F5807F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5807F8);
  }

  return result;
}

uint64_t sub_2530CD6C4()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F580800);
  __swift_project_value_buffer(v0, qword_27F580800);
  return sub_253148A84();
}

uint64_t sub_2530CD744()
{
  v1 = v0;
  if (qword_27F580208 != -1)
  {
    swift_once();
  }

  v2 = sub_253148A94();
  __swift_project_value_buffer(v2, qword_27F580800);
  v3 = sub_253148A74();
  v4 = sub_253149094();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2530B8000, v3, v4, "Cancelling subscription", v5, 2u);
    MEMORY[0x259BFDC60](v5, -1, -1);
  }

  return (*(v1 + OBJC_IVAR____TtC11HomeKitCore12XPCPublisher_cancelationHandler))();
}

id sub_2530CD880()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_27F580208 != -1)
  {
    swift_once();
  }

  v3 = sub_253148A94();
  __swift_project_value_buffer(v3, qword_27F580800);
  v4 = sub_253148A74();
  v5 = sub_253149094();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2530B8000, v4, v5, "Publisher deinit", v6, 2u);
    MEMORY[0x259BFDC60](v6, -1, -1);
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

uint64_t HomesStore.CoreData.CLIController.Error.hashValue.getter()
{
  sub_253149814();
  MEMORY[0x259BFD420](0);
  return sub_253149844();
}

uint64_t sub_2530CDA98()
{
  sub_253149814();
  MEMORY[0x259BFD420](0);
  return sub_253149844();
}

uint64_t sub_2530CDB04(uint64_t a1)
{
  sub_253149814();
  MEMORY[0x259BFD420](0);
  return sub_253149844();
}

BOOL sub_2530CDBBC(void *a1, uint64_t *a2)
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

void *sub_2530CDBEC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_2530CDC18@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_2530CDCF0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2530CDD24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t HomesStore.CoreData.CLIController.__allocating_init()()
{
  v0 = type metadata accessor for HomesStore.CoreData.Configuration(0);
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_allocObject();
  *v3 = 0x746C7561666544;
  *(v3 + 1) = 0xE700000000000000;
  sub_25311A4D8();
  v5 = &v3[*(v1 + 32)];
  *v5 = 0xD00000000000001ELL;
  *(v5 + 1) = 0x800000025314AA90;
  type metadata accessor for HomesStore.CoreData.Configuration.StoreType(0);
  swift_storeEnumTagMultiPayload();
  *(v4 + 16) = _s11HomeKitCore10HomesStoreC0C4DataO19PersistentContainerC13configurationAgE13ConfigurationV_tcfC_0(v3);
  return v4;
}

uint64_t HomesStore.CoreData.CLIController.init()()
{
  v1 = type metadata accessor for HomesStore.CoreData.Configuration(0);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v4 = 0x746C7561666544;
  *(v4 + 1) = 0xE700000000000000;
  sub_25311A4D8();
  v5 = &v4[*(v2 + 32)];
  *v5 = 0xD00000000000001ELL;
  *(v5 + 1) = 0x800000025314AA90;
  type metadata accessor for HomesStore.CoreData.Configuration.StoreType(0);
  swift_storeEnumTagMultiPayload();
  *(v0 + 16) = _s11HomeKitCore10HomesStoreC0C4DataO19PersistentContainerC13configurationAgE13ConfigurationV_tcfC_0(v4);
  return v0;
}

uint64_t sub_2530CDF70()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2530CE030;

  return sub_2530CEB88(sub_2530CEB88, sub_2530CEFE4, 0);
}

uint64_t sub_2530CE030()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_2530CE15C;
  }

  else
  {
    v2 = sub_2530CE144;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2530CE174(void *a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  type metadata accessor for HMCDHomeModel();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  sub_2531444C0();
  type metadata accessor for HMCDAccessoryModel();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  sub_2531444C0();
  type metadata accessor for HMCDRoomModel();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  sub_2531444C0();
  [v4 setHome_];
  [v4 setRoom_];
  type metadata accessor for HMCDHomesTopologyModel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [ObjCClassFromMetadata entityName];
  if (!v7)
  {
    sub_253148B64();
    v7 = sub_253148B54();
  }

  v8 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];

  v9 = sub_253149154();
  if (v1)
  {

    return;
  }

  if (v9 >> 62)
  {
    if (sub_2531492E4())
    {
      goto LABEL_7;
    }
  }

  else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x259BFD000](0, v9);
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v10 = *(v9 + 32);
    }

    v11 = v10;

    goto LABEL_13;
  }

  v11 = [objc_allocWithZone(ObjCClassFromMetadata) initWithContext_];
LABEL_13:
  v12 = v11;
  [v12 addHomesObject_];
  sub_2531444C0();

  v15[0] = 0;
  if ([a1 save_])
  {
    v13 = v15[0];
  }

  else
  {
    v14 = v15[0];
    sub_253148844();

    swift_willThrow();
  }
}

uint64_t sub_2530CE438(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a6;
  v7[7] = v6;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a1;
  v7[3] = a2;
  v8 = *a3;
  v7[8] = *v6;
  v7[9] = v8;
  return MEMORY[0x2822009F8](sub_2530CE48C, 0, 0);
}

uint64_t sub_2530CE48C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_allocObject();
  v0[10] = v7;
  v7[2] = v4;
  v7[3] = v5;
  v7[4] = v1;
  v7[5] = v6;
  v7[6] = v3;
  v7[7] = v2;

  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_2530CE59C;
  v9 = v0[6];
  v10 = v0[2];

  return sub_2530CE8A8(v10, sub_2530CF000, v7, v9);
}

uint64_t sub_2530CE59C()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2530CE6D8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2530CE6D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2530CE73C(void *a1, uint64_t a2, char a3, void (*a4)(uint64_t))
{
  v5 = a4;
  v6 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v7 = *(a2 + 16);
  if (v7)
  {
    v10 = a3 & 1;
    v11 = (a2 + 40);
    while (1)
    {
      v12 = *(v11 - 1);
      v13 = *v11;

      if ((a3 & 2) != 0)
      {

        v14 = sub_2530CF668(v12, v13, a1);
      }

      else
      {
        v14 = 0;
      }

      v19[0] = v12;
      v19[1] = v13;
      v19[2] = 0;
      v20 = v10;
      v21 = v14;
      sub_2530E0500(v19);
      if (v4)
      {
        break;
      }

      sub_2530DAC80(v15);

      v11 += 2;
      if (!--v7)
      {
        v6 = v22;
        v5 = a4;
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v16 = sub_253145238(v6);

    v5(v16);
  }
}

uint64_t sub_2530CE8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_2530CE8D0, 0, 0);
}

uint64_t sub_2530CE8D0()
{
  v1 = v0[6];
  v3 = v0[4];
  v2 = v0[5];
  v4 = *(v0[7] + 16);
  v0[8] = v4;
  v0[2] = v4;
  v5 = swift_allocObject();
  v0[9] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v2;

  v6 = swift_task_alloc();
  v0[10] = v6;
  v7 = type metadata accessor for HomesStore.CoreData.PersistentContainer();
  v8 = sub_2530CF610();
  *v6 = v0;
  v6[1] = sub_2530CE9F8;
  v9 = v0[6];
  v10 = v0[3];

  return sub_25311E60C(v10, sub_2530CF5E4, v5, v7, v9, v8);
}

uint64_t sub_2530CE9F8()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2530CEB70, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2530CEB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_253149144();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2530CEC4C, 0, 0);
}

uint64_t sub_2530CEC4C()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = swift_allocObject();
  v0[9] = v7;
  v7[2] = v6;
  v7[3] = v5;
  v7[4] = v4;
  v8 = *MEMORY[0x277CBE110];
  v9 = *(v2 + 104);

  v9(v1, v8, v3);
  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_2530CED98;
  v11 = v0[8];
  v12 = v0[2];
  v13 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x28210EE50](v12, v11, sub_2530CF9B8, v7, v13);
}

uint64_t sub_2530CED98()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {
    (*(v2[7] + 8))(v2[8], v2[6]);

    return MEMORY[0x2822009F8](sub_2530CEF20, 0, 0);
  }

  else
  {
    v3 = v2[8];
    v4 = v2[6];
    v5 = v2[7];

    (*(v5 + 8))(v3, v4);

    v6 = v2[1];

    return v6();
  }
}

uint64_t sub_2530CEF20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t HomesStore.CoreData.CLIController.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_2530CF028()
{
  result = qword_27F5808E0;
  if (!qword_27F5808E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5808E0);
  }

  return result;
}

unint64_t sub_2530CF080()
{
  result = qword_27F5808E8;
  if (!qword_27F5808E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5808E8);
  }

  return result;
}

unint64_t sub_2530CF0D8()
{
  result = qword_27F5808F0;
  if (!qword_27F5808F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5808F0);
  }

  return result;
}

unint64_t sub_2530CF130()
{
  result = qword_27F5808F8;
  if (!qword_27F5808F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5808F8);
  }

  return result;
}

unint64_t sub_2530CF188()
{
  result = qword_27F580900;
  if (!qword_27F580900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580900);
  }

  return result;
}

uint64_t dispatch thunk of HomesStore.CoreData.CLIController.saveRandomModels()()
{
  v4 = (*(*v0 + 96) + **(*v0 + 96));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2530BF218;

  return v4();
}

uint64_t dispatch thunk of HomesStore.CoreData.CLIController.withManagedObjects<A>(matchingEntityNames:options:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 104) + **(*v6 + 104));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_2530CD684;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t _s13CLIControllerC5ErrorOwet(unsigned int *a1, int a2)
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

_WORD *_s13CLIControllerC5ErrorOwst(_WORD *result, int a2, int a3)
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

uint64_t _s13CLIControllerC7OptionsVwet(uint64_t a1, int a2)
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

uint64_t _s13CLIControllerC7OptionsVwst(uint64_t result, int a2, int a3)
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

unint64_t sub_2530CF610()
{
  result = qword_27F580908;
  if (!qword_27F580908)
  {
    type metadata accessor for HomesStore.CoreData.PersistentContainer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580908);
  }

  return result;
}

uint64_t sub_2530CF668(uint64_t a1, uint64_t a2, id a3)
{
  v5 = [a3 persistentStoreCoordinator];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [v5 managedObjectModel];

  v8 = [v7 entitiesByName];
  sub_2530CF970(0, &qword_27F580910, 0x277CBE408);
  v9 = sub_253148AD4();

  if (!*(v9 + 16) || (v10 = sub_25311D908(a1, a2), (v11 & 1) == 0))
  {

    return 0;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  v13 = [v12 relationshipsByName];
  sub_2530CF970(0, &qword_27F580918, 0x277CBE500);
  v14 = sub_253148AD4();

  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v18 = (v15 + 63) >> 6;

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  while (1)
  {
    v22 = v20;
    if (!v17)
    {
      break;
    }

LABEL_11:
    v23 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v24 = *(*(v14 + 56) + 8 * (v23 | (v20 << 6)));

    v25 = v24;
    if ([v25 isToMany])
    {
      v31 = [v25 name];
      v26 = sub_253148B64();
      v32 = v27;
      v33 = v26;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2530F459C(0, *(v21 + 16) + 1, 1, v21);
        v21 = result;
      }

      v29 = *(v21 + 16);
      v28 = *(v21 + 24);
      if (v29 >= v28 >> 1)
      {
        result = sub_2530F459C((v28 > 1), v29 + 1, 1, v21);
        v21 = result;
      }

      *(v21 + 16) = v29 + 1;
      v30 = v21 + 16 * v29;
      *(v30 + 32) = v33;
      *(v30 + 40) = v32;
    }

    else
    {
    }
  }

  while (1)
  {
    v20 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v20 >= v18)
    {

      return v21;
    }

    v17 = *(v14 + 64 + 8 * v20);
    ++v22;
    if (v17)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2530CF970(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_2530CF9B8()
{
  v1 = *(v0 + 16);
  v3 = *(*(v0 + 32) + 32);
  v2 = v3;
  v1(&v3);
}

uint64_t HomesStoreComposableModelDataSourceError.hashValue.getter()
{
  sub_253149814();
  MEMORY[0x259BFD420](0);
  return sub_253149844();
}

unint64_t sub_2530CFAAC()
{
  result = qword_27F580920;
  if (!qword_27F580920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580920);
  }

  return result;
}

uint64_t dispatch thunk of HomesStoreComposableModelDataSource.fetchModels<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 32))(a1, a2, a3, a4);
}

{
  return (*(a5 + 40))(a1, a2, a3, a4);
}

{
  return (*(a5 + 48))(a1, a2, a3, a4);
}

uint64_t dispatch thunk of HomesStoreComposableModelDataSource.fetchModels<A>(_:where:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return (*(a6 + 56))(a1, a2, a3, a4, a5);
}

{
  return (*(a6 + 64))(a1, a2, a3, a4, a5);
}

{
  return (*(a6 + 72))(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of HomesStoreComposableModelDataSource.fetchModels<A, B>(_:as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return (*(a7 + 80))(a1, a2, a3, a4, a5, a6);
}

{
  return (*(a7 + 88))(a1, a2, a3, a4, a5, a6);
}

{
  return (*(a7 + 96))(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of HomesStoreComposableModelDataSource.fetchModels<A, B>(_:as:where:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return (*(a8 + 104))(a1, a2, a3, a4, a5, a6, a7);
}

{
  return (*(a8 + 112))(a1, a2, a3, a4, a5, a6, a7);
}

{
  return (*(a8 + 120))(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t HomesStore.ModelType.metaType.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    if (*v0 > 5u)
    {
      if (v1 == 6)
      {
        v2 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice(0);
        v3 = &qword_27F5806F0;
        v4 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice;
        v5 = &protocol conformance descriptor for HomesStore.Accessory.AppleMediaDevice;
      }

      else
      {
        v2 = type metadata accessor for HomesStore.User.SharedSettings(0);
        v3 = &unk_27F5806E8;
        v4 = type metadata accessor for HomesStore.User.SharedSettings;
        v5 = &protocol conformance descriptor for HomesStore.User.SharedSettings;
      }
    }

    else if (v1 == 4)
    {
      v2 = type metadata accessor for HomesStore.User(0);
      v3 = &qword_27F580700;
      v4 = type metadata accessor for HomesStore.User;
      v5 = &protocol conformance descriptor for HomesStore.User;
    }

    else
    {
      v2 = type metadata accessor for HomesStore.Zone(0);
      v3 = &qword_27F5806F8;
      v4 = type metadata accessor for HomesStore.Zone;
      v5 = &protocol conformance descriptor for HomesStore.Zone;
    }
  }

  else if (*v0 > 1u)
  {
    if (v1 == 2)
    {
      v2 = type metadata accessor for HomesStore.Home(0);
      v3 = &qword_27F580710;
      v4 = type metadata accessor for HomesStore.Home;
      v5 = &protocol conformance descriptor for HomesStore.Home;
    }

    else
    {
      v2 = type metadata accessor for HomesStore.HomesRelationshipModel(0);
      v3 = &qword_27F580708;
      v4 = type metadata accessor for HomesStore.HomesRelationshipModel;
      v5 = &protocol conformance descriptor for HomesStore.HomesRelationshipModel;
    }
  }

  else if (*v0)
  {
    v2 = type metadata accessor for HomesStore.Room(0);
    v3 = &qword_27F580718;
    v4 = type metadata accessor for HomesStore.Room;
    v5 = &protocol conformance descriptor for HomesStore.Room;
  }

  else
  {
    v2 = type metadata accessor for HomesStore.Accessory(0);
    v3 = &qword_27F580720;
    v4 = type metadata accessor for HomesStore.Accessory;
    v5 = &protocol conformance descriptor for HomesStore.Accessory;
  }

  sub_2530D06D0(v3, v4, v5);
  return v2;
}

unint64_t HomesStore.ModelType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 8;
  if (result < 8)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t HomesStore.ModelType.description.getter()
{
  v1 = *v0;
  v2 = 0x726F737365636341;
  v3 = 0xD000000000000012;
  if (v1 == 6)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 1919251285;
  if (v1 != 4)
  {
    v4 = 1701736282;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000016;
  if (v1 == 2)
  {
    v5 = 1701670728;
  }

  if (*v0)
  {
    v2 = 1836019538;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_2530D0110()
{
  result = qword_27F580928;
  if (!qword_27F580928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580928);
  }

  return result;
}

unint64_t sub_2530D0168()
{
  result = qword_27F580930;
  if (!qword_27F580930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F580938, &qword_25314CC48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580930);
  }

  return result;
}

unint64_t sub_2530D01CC()
{
  v1 = *v0;
  v2 = 0x726F737365636341;
  v3 = 0xD000000000000012;
  if (v1 == 6)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 1919251285;
  if (v1 != 4)
  {
    v4 = 1701736282;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000016;
  if (v1 == 2)
  {
    v5 = 1701670728;
  }

  if (*v0)
  {
    v2 = 1836019538;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t _s9ModelTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9ModelTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2530D0400()
{
  v1 = *v0;
  if (v1 > 3)
  {
    if (*v0 > 5u)
    {
      if (v1 == 6)
      {
        v2 = type metadata accessor for HMCDAppleMediaDeviceModel();
        sub_2530D06D0(&qword_27F580948, type metadata accessor for HMCDAppleMediaDeviceModel, &protocol conformance descriptor for HMCDAppleMediaDeviceModel);
      }

      else
      {
        v2 = type metadata accessor for HMCDUserSharedSettingsModel();
        sub_2530D06D0(&qword_27F580940, type metadata accessor for HMCDUserSharedSettingsModel, &protocol conformance descriptor for HMCDUserSharedSettingsModel);
      }
    }

    else if (v1 == 4)
    {
      v2 = type metadata accessor for HMCDUserModel();
      sub_2530D06D0(&qword_27F580958, type metadata accessor for HMCDUserModel, &protocol conformance descriptor for HMCDUserModel);
    }

    else
    {
      v2 = type metadata accessor for HMCDZoneModel();
      sub_2530D06D0(&qword_27F580950, type metadata accessor for HMCDZoneModel, &protocol conformance descriptor for HMCDZoneModel);
    }
  }

  else if (*v0 > 1u)
  {
    if (v1 == 2)
    {
      v2 = type metadata accessor for HMCDHomeModel();
      sub_2530D06D0(&qword_27F580968, type metadata accessor for HMCDHomeModel, &protocol conformance descriptor for HMCDHomeModel);
    }

    else
    {
      v2 = type metadata accessor for HMCDHomesTopologyModel();
      sub_2530D06D0(&qword_27F580960, type metadata accessor for HMCDHomesTopologyModel, &protocol conformance descriptor for HMCDHomesTopologyModel);
    }
  }

  else if (*v0)
  {
    v2 = type metadata accessor for HMCDRoomModel();
    sub_2530D06D0(&qword_27F580970, type metadata accessor for HMCDRoomModel, &protocol conformance descriptor for HMCDRoomModel);
  }

  else
  {
    v2 = type metadata accessor for HMCDAccessoryModel();
    sub_2530D06D0(&qword_27F580978, type metadata accessor for HMCDAccessoryModel, &protocol conformance descriptor for HMCDAccessoryModel);
  }

  return v2;
}

uint64_t sub_2530D06D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2530D0718()
{
  result = qword_27F580980;
  if (!qword_27F580980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580980);
  }

  return result;
}

void sub_2530D077C(id *a1)
{
  v1 = [*a1 modelID];
  sub_253148924();
}

id sub_2530D07DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 user];
  *a2 = result;
  return result;
}

id HMCDUserSharedSettingsModel.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id HMCDUserSharedSettingsModel.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for HMCDUserSharedSettingsModel();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id HMCDUserSharedSettingsModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMCDUserSharedSettingsModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2530D09B4()
{
  v1 = [v0 modelID];
  sub_253148924();
}

uint64_t sub_2530D0A14(uint64_t a1)
{
  v2 = v1;
  v4 = sub_253148904();
  [v2 setModelID_];

  v5 = sub_253148944();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

uint64_t (*sub_2530D0AA4(void *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2530D0B5C(v2);
  return sub_2530D0B14;
}

void sub_2530D0B14(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_2530D0B5C(void *a1))(void ***a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_253148944();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
    v5[4] = v10;
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v10 = malloc(v9);
    v5[4] = v10;
    v11 = malloc(v9);
  }

  v12 = v11;
  v5[5] = v11;
  v13 = [v1 modelID];
  sub_253148924();

  (*(v8 + 32))(v12, v10, v6);
  return sub_2530D0CD8;
}

void sub_2530D0CD8(void ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    v6[2]((*a1)[3], v4, v7);
    v9 = sub_253148904();
    v10 = v6[1];
    (v10)(v5, v7);
    [v8 setModelID_];

    (v10)(v4, v7);
  }

  else
  {
    v11 = sub_253148904();
    [v8 setModelID_];

    (v6[1])(v4, v7);
  }

  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

unint64_t sub_2530D0E20(uint64_t a1)
{
  result = sub_2530D0E48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2530D0E48()
{
  result = qword_27F580988;
  if (!qword_27F580988)
  {
    type metadata accessor for HMCDUserSharedSettingsModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580988);
  }

  return result;
}

uint64_t sub_2530D0EA8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for HMCDUserSharedSettingsModel();
  result = sub_2531493E4();
  *a2 = result;
  return result;
}

void sub_2530D0F48(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 name];
  v4 = sub_253148B64();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_2530D0FA0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 rooms];
  type metadata accessor for HMCDRoomModel();
  sub_2530D1554(&qword_27F580998, 255, type metadata accessor for HMCDRoomModel, MEMORY[0x277D85378]);
  v4 = sub_253148F74();

  *a2 = v4;
}

void sub_2530D1044(uint64_t *a1, void **a2)
{
  v2 = *a2;
  type metadata accessor for HMCDRoomModel();
  sub_2530D1554(&qword_27F580998, 255, type metadata accessor for HMCDRoomModel, MEMORY[0x277D85378]);
  v3 = sub_253148F64();
  [v2 setRooms_];
}

id HMCDZoneModel.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id HMCDZoneModel.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for HMCDZoneModel();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id HMCDZoneModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMCDZoneModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_2530D1288(void *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_2530D12F8(v2);
  return sub_2530D0B14;
}

void (*sub_2530D12F8(void *a1))(void ***a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_253148944();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
    v5[4] = v10;
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v10 = malloc(v9);
    v5[4] = v10;
    v11 = malloc(v9);
  }

  v12 = v11;
  v5[5] = v11;
  v13 = [v1 modelID];
  sub_253148924();

  (*(v8 + 32))(v12, v10, v6);
  return sub_2530D0CD8;
}

uint64_t sub_2530D1498(uint64_t a1, uint64_t a2)
{
  result = sub_2530D1554(&qword_27F580990, a2, type metadata accessor for HMCDZoneModel, &protocol conformance descriptor for HMCDZoneModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2530D14F0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for HMCDZoneModel();
  result = sub_2531493E4();
  *a2 = result;
  return result;
}

uint64_t sub_2530D1554(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2530D159C()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F5809A0);
  __swift_project_value_buffer(v0, qword_27F5809A0);
  return sub_253148A84();
}

void sub_2530D1620(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580A18, "؍");
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v46 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v44 = v41 - v5;
  v6 = type metadata accessor for HomesStore.CoreData.Configuration(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = (v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = 0x746C7561666544;
  v9[1] = 0xE700000000000000;
  v45 = *(v7 + 28);
  sub_25311A4D8();
  v10 = (v9 + *(v7 + 32));
  *v10 = 0xD00000000000001ELL;
  v10[1] = 0x800000025314AA90;
  type metadata accessor for HomesStore.CoreData.Configuration.StoreType(0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580A20, "؍");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25314CE10;
  *(inited + 32) = sub_253148B64();
  *(inited + 40) = v12;
  v13 = MEMORY[0x277D839B0];
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 80) = sub_253148B64();
  *(inited + 88) = v14;
  *(inited + 120) = v13;
  *(inited + 96) = 1;
  *(inited + 128) = sub_253148B64();
  *(inited + 136) = v15;
  *(inited + 168) = v13;
  *(inited + 144) = 1;
  *(inited + 176) = sub_253148B64();
  *(inited + 184) = v16;
  v48 = MEMORY[0x277D84F90];
  sub_2530F4DF0(0, 1, 0);
  v17 = v48;
  v19 = *(v48 + 16);
  v18 = *(v48 + 24);
  if (v19 >= v18 >> 1)
  {
    sub_2530F4DF0((v18 > 1), v19 + 1, 1);
    v17 = v48;
  }

  *(v17 + 16) = v19 + 1;
  v20 = v17 + 16 * v19;
  *(v20 + 32) = 0xD000000000000019;
  *(v20 + 40) = 0x800000025314A530;
  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580A28, &qword_25314CE50);
  *(inited + 192) = v17;
  *(inited + 224) = sub_253148B64();
  *(inited + 232) = v21;
  *(inited + 264) = MEMORY[0x277D837D0];
  *(inited + 240) = 0xD00000000000001ELL;
  *(inited + 248) = 0x800000025314AA90;
  v22 = sub_253109E70(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580A30, &unk_25314F200);
  swift_arrayDestroy();
  v23 = sub_253148884();
  v24 = *(v23 - 8);
  v25 = *(v24 + 16);
  v26 = v44;
  v42 = a1;
  v25(v44, a1, v23);
  v27 = *(v24 + 56);
  v27(v26, 0, 1, v23);
  v47 = v9;
  v28 = v45 + v9;
  v29 = v46;
  v25(v46, v28, v23);
  v30 = v26;
  v31 = v29;
  v27(v29, 0, 1, v23);
  v41[1] = v22;
  sub_2530D1B78(v22);
  v45 = [objc_allocWithZone(_s14descr2864E9699O21RequestHandlingPolicyCMa()) init];
  v32 = *(v24 + 48);
  v33 = 0;
  if (v32(v30, 1, v23) != 1)
  {
    v33 = sub_253148864();
    (*(v24 + 8))(v30, v23);
  }

  if (v32(v31, 1, v23) == 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = sub_253148864();
    (*(v24 + 8))(v31, v23);
  }

  v35 = v47;
  v36 = objc_allocWithZone(MEMORY[0x277CBE510]);
  v37 = sub_253148AC4();

  v38 = v36;
  v39 = v45;
  v40 = [v38 initForStoreWithURL:v33 usingModelAtURL:v34 options:v37 policy:v45];

  if (v40)
  {

    (*(v24 + 8))(v42, v23);
    sub_2530D20A8(v35);
    *(v43 + 16) = v40;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2530D1B78(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F580A38, &qword_25314CE58);
    v2 = sub_2531495D4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2530C0304(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2530C02F4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2530C02F4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2530C02F4(v31, v32);
    result = sub_253149344();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_2530C02F4(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2530D1E40()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2530D1F10(void *a1, void *a2)
{
  if (qword_27F580210 != -1)
  {
    swift_once();
  }

  v4 = sub_253148A94();
  __swift_project_value_buffer(v4, qword_27F5809A0);
  v5 = a1;
  v6 = a2;
  v7 = sub_253148A74();
  v8 = sub_2531490B4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    if (a1)
    {
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      v13 = v12;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(v9 + 4) = v12;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v6;
    *v10 = v13;
    v10[1] = a2;
    v14 = v6;
    _os_log_impl(&dword_2530B8000, v7, v8, "XPC store requested recovery for error: %@, context: %@", v9, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581E10, &qword_25314F640);
    swift_arrayDestroy();
    MEMORY[0x259BFDC60](v10, -1, -1);
    MEMORY[0x259BFDC60](v9, -1, -1);
  }

  return 0;
}

uint64_t sub_2530D20A8(uint64_t a1)
{
  v2 = type metadata accessor for HomesStore.CoreData.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ModelIdentifierDescriptor.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_253148944();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2530D21A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_253149734();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2530D2220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2530D21A4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2530D2254@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2530CDA90();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2530D2284(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2530D22D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ModelIdentifierDescriptor.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ModelIdentifierDescriptor.CodingKeys(255, *(a2 + 16), *(a2 + 24), a4);
  swift_getWitnessTable();
  v5 = sub_2531496E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_253149894();
  sub_253148944();
  sub_2530C2A80(&qword_27F580630, MEMORY[0x277CC95F8]);
  sub_2531496D4();
  return (*(v6 + 8))(v8, v5);
}

uint64_t ModelIdentifierDescriptor.hash(into:)(uint64_t a1)
{
  sub_253148944();
  sub_2530C2A80(&qword_27F580560, MEMORY[0x277CC9600]);

  return sub_253148B14();
}

uint64_t ModelIdentifierDescriptor.hashValue.getter()
{
  sub_253149814();
  sub_253148944();
  sub_2530C2A80(&qword_27F580560, MEMORY[0x277CC9600]);
  sub_253148B14();
  return sub_253149844();
}

uint64_t ModelIdentifierDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v7 = sub_253148944();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v31 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModelIdentifierDescriptor.CodingKeys(255, a2, a3, v9);
  swift_getWitnessTable();
  v10 = sub_253149684();
  v27 = *(v10 - 8);
  v28 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v14 = type metadata accessor for ModelIdentifierDescriptor(0, a2, a3, v13);
  v25 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v32;
  sub_253149884();
  if (!v17)
  {
    v24 = v16;
    v32 = v14;
    v18 = v27;
    v19 = v29;
    sub_2530C2A80(&qword_27F5805E8, MEMORY[0x277CC9618]);
    v20 = v30;
    v21 = v28;
    sub_253149664();
    (*(v18 + 8))(v12, v21);
    v22 = v24;
    (*(v19 + 32))(v24, v31, v20);
    (*(v25 + 32))(v26, v22, v32);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2530D290C(uint64_t a1)
{
  sub_253149814();
  ModelIdentifierDescriptor.hash(into:)(v2);
  return sub_253149844();
}

uint64_t sub_2530D2968(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  a1[3] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[4] = result;
  return result;
}

uint64_t sub_2530D2A70(uint64_t a1)
{
  result = sub_253148944();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2530D2B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v21 = a5;
  v9 = type metadata accessor for RelationshipResolver(0, a3, a4, a4);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v22 = a3;
  v23 = a4;
  KeyPath = swift_getKeyPath();
  v17 = *(v10 + 16);
  v17(v15, a1, v9);
  v17(v13, a2, v9);
  sub_2530D2CEC(KeyPath, v15, v13, a4, v21);
  v18 = *(v10 + 8);
  v18(a2, v9);
  return (v18)(a1, v9);
}

uint64_t sub_2530D2CEC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = (*a1 + *MEMORY[0x277D84DE8]);
  v11 = *v10;
  v12 = _s14descr2864E94D1O17DescriptorVisitorVMa(0, *v10, v10[1], a4);
  v13 = v12[13];
  sub_253149474();
  *&a5[v13] = sub_253148AB4();
  *a5 = a1;
  v14 = v12[11];
  v16 = type metadata accessor for RelationshipResolver(0, v11, a4, v15);
  v19 = *(*(v16 - 8) + 32);
  (v19)((v16 - 8), &a5[v14], a2, v16);
  v17 = &a5[v12[12]];

  return v19(v17, a3, v16);
}

uint64_t sub_2530D2E28(void *a1, void *a2, uint64_t a3)
{
  sub_2530D4D10(a1, a2, a3);
}

uint64_t sub_2530D2E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = _s14descr2864E94D1O17DescriptorVisitorVMa(0, *(a2 + 16), *(a2 + 16), *(a2 + 24));
  a4(a1, v7, a3);
}

uint64_t sub_2530D2EB4(void *a1, void *a2, uint64_t a3)
{
  sub_2530D4FC4(a1, a2, a3);
}

uint64_t sub_2530D2EDC(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *a1;
  v51 = sub_253148944();
  v44 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v45 = v9;
  v50 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2[2];
  v49 = *(v8 + *MEMORY[0x277D84DE8] + 8);
  v11 = *(v49 + 16);
  v12 = a2[4];
  v62[0] = v10;
  v62[1] = v11;
  v62[2] = v12;
  v62[3] = a3;
  v58 = v12;
  v59 = v11;
  v13 = type metadata accessor for RelationshipResolver.ModelProxy(0, v62);
  v57 = *(v13 - 8);
  v41 = *(v57 + 64);
  MEMORY[0x28223BE20](v13);
  v60 = &v41 - v14;
  v15 = a2[3];
  sub_2531498A4();
  v52 = a1;
  v16 = sub_253149484();
  v18 = type metadata accessor for RelationshipResolver(0, v10, v12, v17);
  v19 = RelationshipResolver.models<A>(at:)(v16, v18, a3);
  v55 = a2;
  v56 = v4;
  v42 = v16;
  v20 = RelationshipResolver.models<A>(at:)(v16, v18, a3);
  v53 = a3;
  v54 = v10;
  v48 = v15;
  v21 = sub_2530DA1E0(v19, v20, v10, v15, v59, v58, a3);

  if (!sub_253148D44())
  {

    if ((v21 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v22 = 0;
  v23 = v21 ^ 1;
  v24 = v57;
  v47 = (v57 + 16);
  v45 += 40;
  v44 += 4;
  v43 = (v57 + 8);
  v46 = v13;
  v25 = v48;
  while (1)
  {
    v26 = sub_253148CF4();
    sub_253148CC4();
    if ((v26 & 1) == 0)
    {
      break;
    }

    (*(v24 + 16))(v60, v19 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22, v13);
    v27 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_10;
    }

LABEL_5:
    v28 = v50;
    v29 = v13;
    v30 = v19;
    v31 = v60;
    v32 = RelationshipResolver.ModelProxy.id.getter(v29);
    MEMORY[0x28223BE20](v32);
    v34 = (&v41 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    v35 = v53;
    *v34 = v54;
    v34[1] = v25;
    v36 = v58;
    v34[2] = v59;
    v34[3] = v36;
    v34[4] = v35;
    (*v44)((v34 + 5), v28, v51);
    swift_getKeyPath();
    sub_2531498A4();
    v37 = sub_253149484();

    sub_2530D4FC4(v37, v55, v35);
    LOBYTE(v28) = v38;

    v39 = v31;
    v19 = v30;
    v13 = v46;
    (*v43)(v39, v46);

    v23 |= v28;
    v24 = v57;
    ++v22;
    if (v27 == sub_253148D44())
    {
      goto LABEL_11;
    }
  }

  result = sub_2531493F4();
  if (v41 != 8)
  {
    __break(1u);
    return result;
  }

  v62[0] = result;
  (*v47)(v60, v62, v13);
  swift_unknownObjectRelease();
  v27 = v22 + 1;
  if (!__OFADD__(v22, 1))
  {
    goto LABEL_5;
  }

LABEL_10:
  __break(1u);
LABEL_11:

  if ((v23 & 1) == 0)
  {
  }

LABEL_12:
  v61 = v42;
  sub_253149474();
  sub_253148FF4();
  sub_253148FA4();
}

uint64_t sub_2530D3410(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = _s14descr2864E94D1O17DescriptorVisitorVMa(0, *(a3 + 16), *(a3 + 16), *(a3 + 24));
  sub_2530D59B0(a1, a2, v7, a4);
}

uint64_t sub_2530D3474(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  sub_2530D59B0(a1, a2, a3, a4);
}

uint64_t sub_2530D349C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = _s14descr2864E94D1O17DescriptorVisitorVMa(0, *(a3 + 16), *(a3 + 16), *(a3 + 24));

  return sub_2530D350C(a1, a2, v9, a4, a5);
}

uint64_t sub_2530D350C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a4;
  v9 = *(*a2 + *MEMORY[0x277D84DE8] + 8);
  v10 = *(v9 + 16);
  v52 = *(v10 - 8);
  MEMORY[0x28223BE20](a1);
  v51 = &v51 - v11;
  v13 = *(v12 + 16);
  v14 = *(v12 + 32);
  v16 = type metadata accessor for RelationshipResolver(0, v13, v14, v15);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v65 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v61 = v14;
  v62 = &v51 - v20;
  v63 = _s14descr2864E94D1O17DescriptorVisitorVMa(0, v13, v9, v14);
  v66 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v60 = &v51 - v21;
  v56 = v13;
  v70[0] = v13;
  v70[1] = v10;
  v53 = v10;
  v70[2] = v14;
  v70[3] = a5;
  v59 = type metadata accessor for RelationshipResolver.ModelProxy(255, v70);
  v68 = sub_2531491F4();
  v58 = *(v68 - 8);
  v22 = MEMORY[0x28223BE20](v68);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v51 - v25;
  v57 = a1;
  v27 = v67;
  v28 = sub_2530D59B0(a1, a2, a3, a5);
  v29 = *(a3 + 44);
  RelationshipResolver.model<A>(at:)(v28, v16, a5, v26);
  v30 = *(v17 + 16);
  v31 = v62;
  v30(v62, v27 + v29, v16);
  v55 = a3;
  v32 = v27 + *(a3 + 48);
  v33 = v65;
  v34 = v16;
  v35 = v60;
  v30(v65, v32, v34);

  v64 = v28;
  v37 = v33;
  v39 = v58;
  v38 = v59;
  sub_2530D2CEC(v36, v31, v37, v61, v35);
  v40 = *(v39 + 16);
  v65 = v26;
  v40(v24, v26, v68);
  v41 = *(v38 - 8);
  if ((*(v41 + 48))(v24, 1, v38) == 1)
  {
    (*(v39 + 8))(v24, v68);
    v42 = v63;
  }

  else
  {
    v43 = v52;
    v44 = v51;
    v45 = v53;
    (*(v52 + 16))(v51, v24, v53);
    (*(v41 + 8))(v24, v38);
    v46 = v54;
    v47 = *(v54 + 16);
    v48 = v63;
    WitnessTable = swift_getWitnessTable();
    v47(v35, v48, WitnessTable, v45, v46);
    (*(v43 + 8))(v44, v45);
    v42 = v48;
  }

  sub_253149474();
  if ((sub_253148FB4() & 1) == 0)
  {
    v70[0] = *&v35[*(v42 + 52)];
    sub_253149474();
    sub_253148FF4();

    swift_getWitnessTable();
    sub_253148FE4();
    v69 = v64;

    sub_253148FA4();

    sub_2531498A4();
    v69 = sub_253149484();
    sub_253148FA4();
  }

  (*(v66 + 8))(v35, v42);
  return (*(v39 + 8))(v65, v68);
}