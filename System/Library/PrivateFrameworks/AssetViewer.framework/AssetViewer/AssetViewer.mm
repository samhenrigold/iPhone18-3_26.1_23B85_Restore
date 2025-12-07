BOOL sub_241218018(_DWORD *a1, int *a2)
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

_DWORD *sub_241218048@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_241218074@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

void *sub_24121816C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_2412181CC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_2412181E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_241353C0C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t storeEnumTagSinglePayload for ScrubberView.TimeValues(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ScrubberView.TimeValues(uint64_t a1, int a2)
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

uint64_t sub_241218378(uint64_t a1, int a2)
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

uint64_t sub_241218398(uint64_t result, int a2, int a3)
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

uint64_t sub_24121840C(uint64_t a1, int a2)
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

uint64_t sub_24121842C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24121846C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2412184A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2412184DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538148, &qword_241365E58);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_241218580()
{
  MEMORY[0x245CE4980](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2412185C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2412185FC()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_241218644()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24121867C()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2412186B4()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2412186FC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_241218724()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24121875C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_241218794()
{

  return MEMORY[0x2821FE8E8](v0, 36, 7);
}

uint64_t sub_2412187CC()
{

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t sub_241218804()
{
  v1 = sub_24135152C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_241218904()
{

  sub_241255E40(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152));

  return MEMORY[0x2821FE8E8](v0, 192, 15);
}

uint64_t sub_2412189A0()
{
  MEMORY[0x245CE4980](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2412189D8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_241218A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24135152C();
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

uint64_t sub_241218AD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24135152C();
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

uint64_t sub_241218B98()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_241218BD8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_241218C58()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_241218C98()
{
  Information = type metadata accessor for AssetLoader.LoadInformation(0);
  v2 = *(*(Information - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(Information - 8) + 64);

  v5 = sub_24135152C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = (v0 + v3 + *(Information + 28));
  if (*v6)
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((((v3 + v4) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_241218DFC()
{
  v1 = sub_24135152C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_241218E90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_241218ECC()
{
  Information = type metadata accessor for AssetLoader.LoadInformation(0);
  v2 = *(*(Information - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v12 = *(*(Information - 8) + 64);
  v4 = sub_24135152C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v7 = *(v5 + 80);
  v13 = *(v5 + 64);
  v6(v0 + v3, v4);

  v8 = (v0 + v3 + *(Information + 28));
  if (*v8)
  {
  }

  v9 = v2 | v7;
  v10 = (((((v12 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;

  v6(v0 + v10, v4);

  return MEMORY[0x2821FE8E8](v0, v10 + v13, v9 | 7);
}

uint64_t sub_241219074()
{
  v1 = sub_24135152C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 120) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_241219278()
{
  MEMORY[0x245CE4980](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2412192B0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_241219334()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24121936C()
{
  MEMORY[0x245CE4980](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2412193A4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2412193E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24121941C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24135164C();
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

uint64_t sub_241219488(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_24135164C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_24121951C()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_24121955C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24121959C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2412195DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24121961C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24121966C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_241219700()
{
  MEMORY[0x245CE4980](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_241219998(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5390D0, &qword_241368168);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_241219A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539130, &qword_241368200);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539138, &unk_241368208);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_241219B44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539130, &qword_241368200);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E539138, &unk_241368208);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_241219C94()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_241219CCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2413533BC();
  *a1 = result;
  return result;
}

uint64_t sub_241219D2C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_241219D64()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_241219D9C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_241219DE4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5391C8, &qword_241368318);
  sub_2412C0EBC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_241219E48()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_241219EDC()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_241219F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24135152C();
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

uint64_t sub_24121A000(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24135152C();
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

uint64_t sub_24121A0BC()
{
  MEMORY[0x245CE4980](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24121A0F4()
{

  v1 = *(v0 + 32);
  if ((v1 - 1) >= 3)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 112, 15);
}

uint64_t sub_24121A140()
{
  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 15);
}

uint64_t sub_24121A1B0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24121A1E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11AssetViewer31DebugRecordReplayViewController_modelURL;
  swift_beginAccess();
  return sub_241246210(v3 + v4, a2, &qword_27E538750, &qword_2413660E0);
}

uint64_t sub_24121A258()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24121A298()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24121A2D8()
{
  MEMORY[0x245CE4980](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24121A310()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24121A358()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24121A390()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24121A3F0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24121A43C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24121A47C()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24121A4BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24121A4F4()
{
  v1 = sub_241352FFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_24121A5F8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24121A640()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24121A688()
{

  if (*(v0 + 208))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 224, 15);
}

uint64_t sub_24121A6E0()
{

  if (*(v0 + 88))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 104, 15);
}

uint64_t sub_24121A730()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24121A800()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24121A840()
{
  MEMORY[0x245CE4980](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24121A878()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24121A8B8()
{
  v1 = sub_24135152C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24121A940()
{
  v1 = sub_24135152C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24121AA08()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24121AA48()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24121AA80()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24121AAD0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24121AB10()
{
  MEMORY[0x245CE4980](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24121AB48()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24121AB90()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24121ABC8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24121AC0C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24121AC44()
{

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24121ACA4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24121ACE4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24121AD24()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_24121AD64(_OWORD *a1@<X8>)
{
  sub_241352C5C();
  sub_24135193C();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
}

void sub_24121AE40(_OWORD *a1@<X8>)
{
  sub_241352C5C();
  sub_2413518DC();
  *a1 = v2;
}

uint64_t sub_24121AECC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750, &qword_2413660E0);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = &a1[*(a3 + 28)];

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538748, &unk_2413670C8);
      v16 = *(*(v15 - 8) + 48);
      v17 = &a1[*(a3 + 32)];

      return v16(v17, a2, v15);
    }
  }
}

_BYTE *sub_24121B008(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750, &qword_2413660E0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 28)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538748, &unk_2413670C8);
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 32)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24121B15C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24121B1A4()
{
  v1 = *(v0 + 8);

  return v1;
}

void sub_24121B2F0(float32x4_t *a1, int8x16_t *a2)
{
  v8 = *a2[3].i64;
  v9 = *a1;
  LODWORD(v3) = simd_float4x4.scale.getter(*a2, a2[1]).u32[0];
  v4.n128_f64[0] = _sSo13simd_float4x4a11AssetViewerE11translation8rotation5scaleABs5SIMD3VySfG_So0A6_quatfaAItcfC_0(v8, v9, v3);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
}

__n128 sub_24121B344@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[3];
  result.n128_u32[3] = 0;
  *a2 = result;
  return result;
}

__n128 sub_24121B354(__n128 *a1, __n128 *a2)
{
  result = *a1;
  result.n128_u32[3] = a2[3].n128_u32[3];
  a2[3] = result;
  return result;
}

uint64_t sub_24121B368()
{
  MEMORY[0x245CE4980](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24121B3A0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 15);
}

void sub_24121B3E4(float32x4_t *a1@<X0>, float *a2@<X8>)
{
  v3 = vmulq_f32(*a1, *a1);
  v3.n128_u32[3] = 0;
  v4 = simd_reduce_add(v3);
  *a2 = _stdlib_squareRootf(v4);
}

__n128 sub_24121B4D0@<Q0>(__n128 *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = a1->n128_u64[0];
  return result;
}

float sub_24121B4DC(void *a1, uint64_t a2)
{
  *&v2 = *a1;
  *(&v2 + 1) = *(a2 + 8);
  *a2 = v2;
  return *&v2;
}

__n128 sub_24121B504@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  result.n128_u32[3] = 0;
  *a2 = result;
  return result;
}

__n128 sub_24121B514(__n128 *a1, __n128 *a2)
{
  result = *a1;
  result.n128_u32[3] = a2->n128_u32[3];
  *a2 = result;
  return result;
}

uint64_t sub_24121B540()
{
  MEMORY[0x245CE4980](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24121B578()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24121B5B8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24121B5F0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24121B628()
{
  v1 = sub_24135152C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_24121B6C4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24121B710()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24121B758()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24121B798()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24121B7D0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24121B810()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24121B848()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24121B898()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24121B8D0()
{
  v1 = sub_24135152C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_24135164C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v12 = *(v7 + 64);
  v10 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v12, v10 | 7);
}

uint64_t sub_24121BA58()
{
  v1 = sub_24135152C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_24135164C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_24121BBC0()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24121BBFC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24121BC40()
{
  v1 = (type metadata accessor for PhysicsState(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_241351F8C();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[8];
  v8 = sub_2413520FC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v0 + v3 + v7, v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24121BDB4()
{

  if (*(v0 + 192))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 208, 15);
}

uint64_t sub_24121BDFC()
{

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 15);
}

uint64_t sub_24121BE44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_241351F8C();
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
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A560, &unk_24136B000);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_24121BF44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_241351F8C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E53A560, &unk_24136B000);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_24121C050(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538868, &qword_241367378);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24121C0C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538868, &qword_241367378);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24121C144()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24121C184()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24121C1EC(uint64_t result, int a2, int a3)
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

uint64_t sub_24121C288(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

id AssetViewerLogHandleForCategory(uint64_t a1)
{
  if (AssetViewerLogHandleForCategory_onceToken != -1)
  {
    AssetViewerLogHandleForCategory_cold_1();
  }

  v2 = AssetViewerLogHandleForCategory_logHandles[a1];

  return v2;
}

void __AssetViewerLogHandleForCategory_block_invoke()
{
  for (i = 0; i != 3; ++i)
  {
    v1 = os_log_create("com.apple.AssetViewer", AssetViewerLogHandleForCategory_categoryNames[i]);
    v2 = AssetViewerLogHandleForCategory_logHandles[i];
    AssetViewerLogHandleForCategory_logHandles[i] = v1;
  }
}

void sub_24121E478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL ASVBadgeSizeForThumbnailSize(double a1, double a2)
{
  if (a1 >= a2)
  {
    a1 = a2;
  }

  return a1 >= 280.0;
}

float getPlaneInfo(float *a1, __n128 *a2, double a3, float32x4_t a4, double a5, float32x4_t a6)
{
  v6 = vmulq_f32(a4, a6);
  result = vaddv_f32(vadd_f32(*v6.i8, *&vextq_s8(v6, v6, 8uLL)));
  *a1 = result;
  *a2 = a4;
  return result;
}

uint64_t ASVQLPreviewControllerDelegateShouldDisplayEditingControls(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [v5 delegate];
  if (!v8)
  {
    goto LABEL_5;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
LABEL_6:
      v9 = 1;
      goto LABEL_8;
    }

LABEL_5:
    if (([v7 conformsToType:*MEMORY[0x277CE1DB0]] & 1) == 0)
    {
      v9 = [v7 conformsToType:*MEMORY[0x277CE1E08]];
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v9 = [v8 previewController:v5 editingModeForPreviewItem:v6] != 0;
LABEL_8:

  return v9;
}

float64_t pointToFloat2(float64x2_t a1, float64_t a2)
{
  a1.f64[1] = a2;
  *&a1.f64[0] = vcvt_f32_f64(a1);
  return a1.f64[0];
}

void arql_print_memory_snapshot()
{
  v0 = arql_memory_snapshot();
  v2 = v1;
  NSLog(&cfstr_ArqlCurrentRes.isa, v3);
  NSLog(&cfstr_ArqlMaxResiden.isa, v0);
  NSLog(&cfstr_ArqlCurrentVir.isa, v2);
}

float arql_memory_snapshot()
{
  v4 = 0u;
  memset(task_info_out, 0, sizeof(task_info_out));
  task_info_outCnt = 12;
  task_info(*MEMORY[0x277D85F48], 0x14u, task_info_out, &task_info_outCnt);
  v0 = vdup_n_s32(0x3A800000u);
  LODWORD(result) = vmul_f32(vmul_f32(vcvt_f32_f64(vcvtq_f64_u64(*(task_info_out + 8))), v0), v0).i32[1];
  return result;
}

void sub_24122586C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241229300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2412296AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL isiPhone()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom] == 0;

  return v1;
}

void __logGPUDebugData(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = [v1 name];
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_241215000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ARQLDevice: Metal device name: %@", &v5, 0xCu);
  }

  if ([v1 supportsFamily:1009])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5) = 0;
      v3 = MEMORY[0x277D86220];
      v4 = "ARQLDevice: Metal device supports MTLGPUFamilyApple9";
LABEL_30:
      _os_log_impl(&dword_241215000, v3, OS_LOG_TYPE_DEFAULT, v4, &v5, 2u);
    }
  }

  else if ([v1 supportsFamily:1008])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5) = 0;
      v3 = MEMORY[0x277D86220];
      v4 = "ARQLDevice: Metal device supports MTLGPUFamilyApple8";
      goto LABEL_30;
    }
  }

  else if ([v1 supportsFamily:1007])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5) = 0;
      v3 = MEMORY[0x277D86220];
      v4 = "ARQLDevice: Metal device supports MTLGPUFamilyApple7";
      goto LABEL_30;
    }
  }

  else if ([v1 supportsFamily:1006])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5) = 0;
      v3 = MEMORY[0x277D86220];
      v4 = "ARQLDevice: Metal device supports MTLGPUFamilyApple6";
      goto LABEL_30;
    }
  }

  else if ([v1 supportsFamily:1005])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5) = 0;
      v3 = MEMORY[0x277D86220];
      v4 = "ARQLDevice: Metal device supports MTLGPUFamilyApple5";
      goto LABEL_30;
    }
  }

  else if ([v1 supportsFamily:1004])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5) = 0;
      v3 = MEMORY[0x277D86220];
      v4 = "ARQLDevice: Metal device supports MTLGPUFamilyApple4";
      goto LABEL_30;
    }
  }

  else if ([v1 supportsFamily:1003])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5) = 0;
      v3 = MEMORY[0x277D86220];
      v4 = "ARQLDevice: Metal device supports MTLGPUFamilyApple3";
      goto LABEL_30;
    }
  }

  else if ([v1 supportsFamily:1002])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5) = 0;
      v3 = MEMORY[0x277D86220];
      v4 = "ARQLDevice: Metal device supports MTLGPUFamilyApple2";
      goto LABEL_30;
    }
  }

  else if ([v1 supportsFamily:1001] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    v3 = MEMORY[0x277D86220];
    v4 = "ARQLDevice: Metal device supports MTLGPUFamilyApple1";
    goto LABEL_30;
  }
}

uint64_t __queryDeviceGPU()
{
  v17 = *MEMORY[0x277D85DE8];
  v0 = MTLCreateSystemDefaultDevice();
  __logGPUDebugData(v0);
  v1 = MGGetBoolAnswer();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109120;
    v16[1] = v1;
    _os_log_impl(&dword_241215000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ARQLDevice: supports feature: %d", v16, 8u);
  }

  if ([v0 supportsFamily:1007])
  {
    v2 = v1 == 0;
    v3 = 7;
LABEL_5:
    if (v2)
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 + 1;
    }

    goto LABEL_25;
  }

  if ([v0 supportsFamily:1005])
  {
    v5 = [v0 name];
    v6 = [v5 containsString:@"X"];

    if (v6 & 1) != 0 || ([v0 name], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "containsString:", @"Z"), v7, (v8) || (objc_msgSend(v0, "name"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "containsString:", @"M1") & v1, v9, (v10))
    {
      v4 = 8;
      goto LABEL_25;
    }
  }

  if ([v0 supportsFamily:1006])
  {
    v4 = 7;
    goto LABEL_25;
  }

  if ([v0 supportsFamily:1005])
  {
    v4 = 6;
    goto LABEL_25;
  }

  if ([v0 supportsFamily:1004])
  {
    v4 = 5;
    goto LABEL_25;
  }

  if ([v0 supportsFamily:1003])
  {
    v11 = [v0 name];
    v12 = [v11 containsString:@"9"];

    if (v12)
    {
      v4 = 2;
      goto LABEL_25;
    }

    v14 = [v0 name];
    v15 = [v14 containsString:@"X"];

    v2 = v15 == 0;
    v3 = 3;
    goto LABEL_5;
  }

  if ([v0 supportsFamily:1002])
  {
    v4 = 1;
  }

  else
  {
    v4 = 9;
  }

LABEL_25:

  return v4;
}

void checkGPUClass()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!gpuClass)
  {
    gpuClass = __queryDeviceGPU();
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v0 = 134217984;
      v1 = gpuClass;
      _os_log_impl(&dword_241215000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ARQLDevice: ARQL gpuClass: %lu", &v0, 0xCu);
    }
  }
}

void sub_241233558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_241233634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double _Z28calcFinalVelocityFromSamplesIDv2_f19ASVVelocitySample2DET_PT0_S4_(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  [v3 velocity];
  v6 = v5;
  if (v4)
  {
    [v4 deltaTime];
    if (v7 > 0.00000011920929)
    {
      [v4 velocity];
      __asm { FMOV            V1.2S, #0.75 }

      v6 = vmla_f32(v6, _D1, vsub_f32(v8, v6));
    }
  }

  return *&v6;
}

__n128 _Z28calcFinalVelocityFromSamplesIDv3_f19ASVVelocitySample3DET_PT0_S4_(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  [v3 velocity];
  v14 = v5;
  if (v4)
  {
    [v4 deltaTime];
    if (v6 > 0.00000011920929)
    {
      [v4 velocity];
      __asm { FMOV            V1.4S, #0.75 }

      v14 = vmlaq_f32(v14, _Q1, vsubq_f32(v7, v14));
    }
  }

  return v14;
}

void sub_241234338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void ASVInitLogging(uint64_t result, uint64_t a2)
{
  if (ASVInitLogging_once != -1)
  {
    ASVInitLogging_cold_1();
  }
}

void __ASVInitLogging_block_invoke()
{
  v0 = os_log_create("com.apple.assetviewer.inlinepreview", "default");
  v1 = _asvLogHandle;
  _asvLogHandle = v0;
}

void ASVRunInMainThread(void *a1)
{
  v1 = MEMORY[0x277CCACC8];
  block = a1;
  if ([v1 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void sub_24123675C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2412369A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_241237064(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_241237940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_241237DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_24123BD3C(uint64_t a1, float a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController;
  v5 = *(v2 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
  if (v5)
  {
    v6 = *(v5 + OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer);
    if (v6)
    {
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = v7;
        v9 = v6;
        if ([v8 isDecelerating])
        {
          v10 = *(v3 + v4);
          if (!v10)
          {
            __break(1u);
            goto LABEL_20;
          }

          v11 = v10;
          [v8 decelerationYawDelta];
          v13 = v12;
          v14 = [v8 decelerationPitchDelta];
          sub_241247088(v14, v13, v15);

          v9 = v11;
        }
      }
    }

    v16 = *(v3 + v4);
    if (v16)
    {
      v17 = *(v16 + OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer);
      if (v17)
      {
        v18 = v17;
        if (![v18 isScaleAnimating])
        {
LABEL_13:

          goto LABEL_14;
        }

        [v18 animatedScaleValue];
        v20 = *(v3 + v4);
        if (v20)
        {
          v21 = v19;
          v22 = v20;
          v23.n128_u32[0] = v21;
          sub_241249F70(v23);

          v18 = v22;
          goto LABEL_13;
        }

LABEL_20:
        __break(1u);
        return;
      }
    }
  }

LABEL_14:
  sub_2412FD190();
  if (*(v3 + OBJC_IVAR____TtC11AssetViewer15ModelController_arViewDelegateForwarded))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_24135224C();

    swift_unknownObjectRelease();
  }
}

uint64_t sub_24123BF30(uint64_t result, char a2, uint64_t a3)
{
  if (*(v3 + OBJC_IVAR____TtC11AssetViewer15ModelController_arViewDelegateForwarded))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_24135222C();

    return swift_unknownObjectRelease();
  }

  return v4;
}

uint64_t sub_24123BFD8(uint64_t result, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC11AssetViewer15ModelController_arViewDelegateForwarded))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_24135223C();

    return swift_unknownObjectRelease();
  }

  return v3;
}

uint64_t default argument 1 of static QLBundle.write(parentFolder:sessionId:title:usdzURL:)()
{
  v0 = sub_24135164C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24135163C();
  v4 = sub_2413515FC();
  (*(v1 + 8))(v3, v0);
  return v4;
}

id default argument 0 of MRQLFileManager.init(fileManager:)()
{
  v0 = [objc_opt_self() defaultManager];

  return v0;
}

uint64_t default argument 1 of TaskQueue.init(behavior:bufferingPolicy:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D85778];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E537DA0, &qword_2413648F8);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_24123C284(uint64_t a1)
{
  v2 = sub_24123D5F8(&qword_27E537E38, type metadata accessor for Error, &unk_241364D08);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_24123C2F0(uint64_t a1)
{
  v2 = sub_24123D5F8(&qword_27E537E38, type metadata accessor for Error, &unk_241364D08);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_24123C360(uint64_t a1)
{
  v2 = sub_24123D5F8(&qword_27E537E70, type metadata accessor for Error, &unk_241364D48);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_24123C3D4(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x245CE2350](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_24123C428(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x245CE2360](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

uint64_t sub_24123C4A8(uint64_t a1, id *a2)
{
  result = sub_241353BEC();
  *a2 = 0;
  return result;
}

uint64_t sub_24123C520(uint64_t a1, id *a2)
{
  v3 = sub_241353BFC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24123C5A0@<X0>(uint64_t *a2@<X8>)
{
  sub_241353C0C();
  v3 = sub_241353BDC();

  *a2 = v3;
  return result;
}

uint64_t sub_24123C5E4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_24123E218(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_24123C634(uint64_t a1)
{
  v2 = sub_24123D5F8(&qword_27E537E70, type metadata accessor for Error, &unk_241364D48);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_24123C6A0(uint64_t a1)
{
  v2 = sub_24123D5F8(&qword_27E537E70, type metadata accessor for Error, &unk_241364D48);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_24123C70C(void *a1, uint64_t a2)
{
  v4 = sub_24123D5F8(&qword_27E537E70, type metadata accessor for Error, &unk_241364D48);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_24123C7C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24123D5F8(&qword_27E537E70, type metadata accessor for Error, &unk_241364D48);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_24123C83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_241354ADC();
  sub_241353B9C();
  return sub_241354B1C();
}

uint64_t sub_24123C89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24123D5F8(&qword_27E537E70, type metadata accessor for Error, &unk_241364D48);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_24123C920(uint64_t a1)
{
  sub_24123D5F8(&qword_27E537FD0, type metadata accessor for FileAttributeKey, &unk_241365B74);
  sub_24123D5F8(&qword_27E537FD8, type metadata accessor for FileAttributeKey, &unk_241365A8C);

  return sub_24135485C();
}

float sub_24123C9DC@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_24123C9E8(uint64_t a1)
{
  sub_24123D5F8(&qword_27E537FE0, type metadata accessor for UILayoutPriority, &unk_241365994);
  sub_24123D5F8(&qword_27E537FE8, type metadata accessor for UILayoutPriority, &unk_241365934);
  return sub_24135485C();
}

uint64_t sub_24123CAA4(uint64_t a1)
{
  sub_24123D5F8(&qword_27E537FF0, type metadata accessor for AVVideoCodecType, &unk_24136583C);
  sub_24123D5F8(&qword_27E537FF8, type metadata accessor for AVVideoCodecType, &unk_2413657DC);

  return sub_24135485C();
}

uint64_t sub_24123CB60(uint64_t a1)
{
  sub_24123D5F8(&qword_27E537E90, type metadata accessor for UIContentSizeCategory, &unk_241364F10);
  sub_24123D5F8(&qword_27E537E98, type metadata accessor for UIContentSizeCategory, &unk_241364EB0);

  return sub_24135485C();
}

uint64_t sub_24123CC1C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_241353BDC();

  *a2 = v3;
  return result;
}

uint64_t sub_24123CC64(uint64_t a1)
{
  sub_24123D5F8(&qword_27E538000, type metadata accessor for Key, &unk_241365BB8);
  sub_24123D5F8(&qword_27E538008, type metadata accessor for Key, &unk_241365370);

  return sub_24135485C();
}

uint64_t sub_24123CD80()
{
  v0 = sub_241353C0C();
  v1 = MEMORY[0x245CE2120](v0);

  return v1;
}

uint64_t sub_24123CDBC(uint64_t a1)
{
  sub_241353C0C();
  sub_241353CCC();
}

uint64_t sub_24123CE10()
{
  sub_241353C0C();
  sub_241354ADC();
  sub_241353CCC();
  v0 = sub_241354B1C();

  return v0;
}

uint64_t sub_24123CE98(void *a1, uint64_t *a2)
{
  v2 = sub_241353C0C();
  v4 = v3;
  if (v2 == sub_241353C0C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_24135497C();
  }

  return v7 & 1;
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

unint64_t sub_24123CFB0()
{
  result = qword_27E537D38;
  if (!qword_27E537D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E537D30, &qword_2413648C8);
    sub_24123D03C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E537D38);
  }

  return result;
}

unint64_t sub_24123D03C()
{
  result = qword_27E537D40;
  if (!qword_27E537D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E537D48, &qword_2413648D0);
    sub_24123D0C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E537D40);
  }

  return result;
}

unint64_t sub_24123D0C8()
{
  result = qword_27E537D50;
  if (!qword_27E537D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E537D58, &qword_2413648D8);
    sub_24123D370(&qword_27E537D60, &qword_27E537D68, &qword_2413648E0, MEMORY[0x277CDD6E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E537D50);
  }

  return result;
}

unint64_t sub_24123D180()
{
  result = qword_27E537D70;
  if (!qword_27E537D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E537D28, &qword_2413648C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E537D78, &qword_2413648E8);
    sub_24135353C();
    sub_24123D264();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E537D70);
  }

  return result;
}

unint64_t sub_24123D264()
{
  result = qword_27E537D80;
  if (!qword_27E537D80)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E537D78, &qword_2413648E8);
    sub_24123D31C(v1, v2, v3);
    sub_24123D370(&qword_27E537D90, &qword_27E537D98, &qword_2413648F0, MEMORY[0x277CE0800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E537D80);
  }

  return result;
}

unint64_t sub_24123D31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E537D88;
  if (!qword_27E537D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E537D88);
  }

  return result;
}

uint64_t sub_24123D370(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy16_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_16(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24123D494(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24123D4B4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
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

  *(result + 64) = v3;
  return result;
}

__n128 __swift_memcpy48_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
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

uint64_t sub_24123D5F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24123D7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E537E60;
  if (!qword_27E537E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E537E60);
  }

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

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_24123DA8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 152))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_24123DAE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_24123DBBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_24123DC00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_24123E218(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

void sub_24123E264(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_24123E354()
{
  result = sub_2413535EC();
  qword_27E5416B8 = result;
  return result;
}

void sub_24123E374()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8) - 3 > 2 || *(v0 + OBJC_IVAR___ASVPreviewViewControllerInternal_allowShowTriggerAffordanceTime) >= CACurrentMediaTime())
  {
    v80 = sub_241287420();
    *&v80[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_currentTriggerAffordance] = 0;
    [v80 updateStatusPill];

    return;
  }

  sub_241287498();
  v2 = sub_241338918();

  v3 = v2 + 8;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v2[8];
  v7 = OBJC_IVAR___ASVPreviewViewControllerInternal_entityToInteractionsMapping;
  v8 = (v4 + 63) >> 6;

  v9 = 0;
  v75 = 0;
  if (v6)
  {
    while (1)
    {
LABEL_16:
      v6 &= v6 - 1;
      sub_241352C5C();
      swift_unknownObjectRetain();
      v11 = swift_dynamicCastClass();
      if (!v11)
      {
        goto LABEL_11;
      }

      v12 = v11;
      swift_beginAccess();
      v13 = *(v1 + v7);
      if (!*(v13 + 16))
      {
        break;
      }

      v14 = sub_2412FD968(v12);
      if ((v15 & 1) == 0)
      {
        break;
      }

      v16 = *(*(v13 + 56) + 8 * v14);
      swift_endAccess();
      if (v16 >> 62)
      {
        if (!sub_2413544EC())
        {
          goto LABEL_11;
        }

LABEL_21:
        v76 = v7;

        v18 = sub_24123ECA0(v17);

        v78 = v18;
        if (v18 >> 62)
        {
          v19 = sub_2413544EC();
        }

        else
        {
          v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v72 = v2;
        if (v19)
        {
          if (v19 < 1)
          {
            goto LABEL_72;
          }

          v20 = 0;
          v21 = 0;
          v73 = v19;
          do
          {
            if ((v78 & 0xC000000000000001) != 0)
            {
              MEMORY[0x245CE29C0](v20, v78);
            }

            else
            {
            }

            sub_241351FAC();
            if (swift_dynamicCastClass())
            {

              v21 |= 1uLL;
            }

            else
            {
              sub_2413522FC();
              v22 = swift_dynamicCastClass();

              v23 = v22 == 0;
              v19 = v73;
              if (!v23)
              {
                v21 |= 2uLL;
              }
            }

            ++v20;
            v7 = v76;
          }

          while (v19 != v20);
        }

        else
        {
          v21 = 0;
        }

        swift_unknownObjectRelease();

        v75 |= v21;
        v2 = v72;
        if (!v6)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

LABEL_11:
        swift_unknownObjectRelease();
        if (!v6)
        {
          goto LABEL_12;
        }
      }
    }

    swift_endAccess();
    goto LABEL_11;
  }

LABEL_12:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      v24 = 0;
      v25 = 0;
      v74 = 0;
      v26 = OBJC_IVAR___ASVPreviewViewControllerInternal_interactionsShownState;
      v27 = 0x27E537000uLL;
      v28 = qword_27E53A538;
      v29 = v75;
      while (1)
      {
        v30 = v24;
        v31 = *(&unk_2852FD4A0 + v25 + 4);
        if ((v31 & ~v29) == 0)
        {
          break;
        }

LABEL_43:
        v24 = 1;
        v25 = 1;
        if (v30)
        {
          v71 = sub_241287420();
          *&v71[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_currentTriggerAffordance] = v74;
          [v71 updateStatusPill];

          return;
        }
      }

      swift_beginAccess();
      if (*(*(v1 + v26) + 16))
      {
        sub_2412FD858(v31);
        if (v32)
        {
          swift_endAccess();
LABEL_64:
          swift_beginAccess();
          v60 = *(v1 + v26);
          if (*(v60 + 16) && (v61 = sub_2412FD858(v31), (v62 & 1) != 0))
          {
            v63 = *(*(v60 + 56) + 8 * v61);
            swift_endAccess();
            v64 = CACurrentMediaTime() - v63;
            [objc_opt_self() triggerAffordanceShowDuration];
            if (v64 <= v65)
            {
              v74 |= v31;
            }
          }

          else
          {
            swift_endAccess();
          }

          goto LABEL_43;
        }
      }

      v79 = v30;
      swift_endAccess();
      if (*(v27 + 3280) != -1)
      {
        swift_once();
      }

      v81 = v31;
      v33 = sub_241352FFC();
      __swift_project_value_buffer(v33, v28);
      v34 = sub_241352FDC();
      v35 = sub_2413540DC();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v82[0] = v77;
        *v36 = 136315138;
        v37 = sub_2412EC61C(v81);
        v39 = v26;
        v40 = v1;
        v41 = v28;
        v42 = v27;
        v43 = sub_2412DDC2C(v37, v38, v82);

        *(v36 + 4) = v43;
        v27 = v42;
        v28 = v41;
        v1 = v40;
        v26 = v39;
        v44 = v35;
        v45 = v81;
        _os_log_impl(&dword_241215000, v34, v44, "First time showing affordance: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v77);
        v29 = v75;
        MEMORY[0x245CE4870](v77, -1, -1);
        MEMORY[0x245CE4870](v36, -1, -1);
      }

      else
      {

        v45 = v31;
      }

      v46 = CACurrentMediaTime();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = *(v1 + v26);
      *(v1 + v26) = 0x8000000000000000;
      v49 = sub_2412FD858(v45);
      v51 = v48[2];
      v52 = (v50 & 1) == 0;
      v53 = __OFADD__(v51, v52);
      v54 = v51 + v52;
      if (v53)
      {
        goto LABEL_70;
      }

      v55 = v50;
      if (v48[3] >= v54)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v66 = v26;
          v67 = v1;
          v68 = v28;
          v69 = v27;
          v70 = v49;
          sub_2412A7824();
          v49 = v70;
          v27 = v69;
          v28 = v68;
          v1 = v67;
          v26 = v66;
        }

        v31 = v81;
        v57 = v48;
        if (v55)
        {
          goto LABEL_57;
        }
      }

      else
      {
        sub_2412A2D88(v54, isUniquelyReferenced_nonNull_native);
        v31 = v81;
        v49 = sub_2412FD858(v81);
        if ((v55 & 1) != (v56 & 1))
        {
          goto LABEL_73;
        }

        v57 = v48;
        if (v55)
        {
LABEL_57:
          *(v57[7] + 8 * v49) = v46;
LABEL_63:
          *(v1 + v26) = v57;
          swift_endAccess();
          v30 = v79;
          goto LABEL_64;
        }
      }

      v57[(v49 >> 6) + 8] |= 1 << v49;
      *(v57[6] + 8 * v49) = v31;
      *(v57[7] + 8 * v49) = v46;
      v58 = v57[2];
      v53 = __OFADD__(v58, 1);
      v59 = v58 + 1;
      if (v53)
      {
        goto LABEL_71;
      }

      v57[2] = v59;
      goto LABEL_63;
    }

    v6 = v3[v10];
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  sub_2413549DC();
  __break(1u);
}

uint64_t __RKEntityInteraction.hashValue.getter()
{
  sub_241354ADC();
  v0 = sub_241353BBC();
  MEMORY[0x245CE2EA0](v0);
  return sub_241354B1C();
}

uint64_t sub_24123EB84()
{
  sub_241354ADC();
  v0 = sub_241353BBC();
  MEMORY[0x245CE2EA0](v0);
  return sub_241354B1C();
}

unint64_t sub_24123EC04()
{
  result = qword_27E538080;
  if (!qword_27E538080)
  {
    sub_2413520DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538080);
  }

  return result;
}

uint64_t sub_24123EC5C()
{
  sub_241354ADC();
  v0 = sub_241353BBC();
  MEMORY[0x245CE2EA0](v0);
  return sub_241354B1C();
}

unint64_t sub_24123ECA0(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_50;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v25 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v26 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v24 = v1;
    while (1)
    {
      if (v26)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x245CE29C0](v2, v23);
        v4 = __OFADD__(v2++, 1);
        if (v4)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v2 >= *(v25 + 16))
        {
          goto LABEL_45;
        }

        v4 = __OFADD__(v2++, 1);
        if (v4)
        {
          goto LABEL_44;
        }
      }

      sub_2413520CC();
      sub_24135217C();
      if (swift_dynamicCastClass())
      {
        v5 = sub_24135216C();
      }

      else
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900, &qword_241366C30);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_241365C30;
        *(v5 + 32) = sub_2413520CC();
      }

      v6 = v5 >> 62;
      v7 = v5 >> 62 ? sub_2413544EC() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = isUniquelyReferenced_nonNull_bridgeObject + v7;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v7))
      {
        goto LABEL_43;
      }

LABEL_16:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v8)
        {
          v28 = v3;
          v10 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v9 <= *(v10 + 24) >> 1)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

LABEL_22:
        sub_2413544EC();
        goto LABEL_23;
      }

      if (v8)
      {
        goto LABEL_22;
      }

      v28 = v3;
LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = sub_24135461C();
      v28 = isUniquelyReferenced_nonNull_bridgeObject;
      v10 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v11 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v6)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_2413544EC();
        v13 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_28:
          if (((v12 >> 1) - v11) < v7)
          {
            goto LABEL_47;
          }

          v14 = v10 + 8 * v11 + 32;
          if (v6)
          {
            if (v13 < 1)
            {
              goto LABEL_49;
            }

            sub_24123F0E0();
            for (i = 0; i != v13; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538088, &unk_241365CD0);
              v16 = sub_2412EA0D0(v27, i, v5);
              v18 = *v17;

              (v16)(v27, 0);
              *(v14 + 8 * i) = v18;
            }
          }

          else
          {
            sub_241351D7C();
            swift_arrayInitWithCopy();
          }

          v1 = v24;
          if (v7 >= 1)
          {
            v19 = *(v10 + 16);
            v4 = __OFADD__(v19, v7);
            v20 = v19 + v7;
            if (v4)
            {
              goto LABEL_48;
            }

            *(v10 + 16) = v20;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13)
        {
          goto LABEL_28;
        }
      }

      if (v7 > 0)
      {
        goto LABEL_46;
      }

LABEL_5:
      v3 = v28;
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_2413544EC();
    v9 = isUniquelyReferenced_nonNull_bridgeObject + v7;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v7))
    {
      goto LABEL_16;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v21 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_2413544EC();
    isUniquelyReferenced_nonNull_bridgeObject = v21;
  }

  return MEMORY[0x277D84F90];
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

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

unint64_t sub_24123F0E0()
{
  result = qword_27E538090;
  if (!qword_27E538090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E538088, &unk_241365CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538090);
  }

  return result;
}

uint64_t sub_24123F148()
{
  v0 = sub_241352FFC();
  __swift_allocate_value_buffer(v0, qword_27E538098);
  __swift_project_value_buffer(v0, qword_27E538098);
  return sub_241352FEC();
}

double sub_24123F1C8()
{
  result = 0.0078125;
  xmmword_27E5416D0 = xmmword_241364640;
  return result;
}

uint64_t ARQLRenderer.__allocating_init(showBackgroundGradient:assetPathPrefix:opaqueBackground:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = a1;
  v8 = swift_allocObject();
  ARQLRenderer.init(showBackgroundGradient:assetPathPrefix:opaqueBackground:)(v7, a2, a3, v4);
  return v8;
}

uint64_t ARQLRenderer.init(showBackgroundGradient:assetPathPrefix:opaqueBackground:)(char a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  sub_241246158(0, &qword_27E538920, 0x277D85C78);
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0;
  *(v4 + 104) = sub_24135416C();
  *(v4 + 112) = -1;
  v10 = [objc_opt_self() currentThread];
  v11 = [v10 isMainThread];

  if (v11)
  {
    sub_24123F38C(v4, a2, a3, a1 & 1, a4 & 1);
  }

  else
  {
    v12 = sub_24135416C();
    sub_24135417C();
  }

  return v5;
}

uint64_t sub_24123F38C(void *a1, uint64_t a2, unint64_t a3, char a4, int a5)
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = sub_2413517BC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0u;
  memset(v32, 0, sizeof(v32));
  v34 = 0;
  v33 = 0u;
  LODWORD(v31) = 1;
  v30 = 80;
  REEngineDefaultConfigEx();
  *(&v32[1] + 1) = a1[13];
  DWORD2(v33) = 1;
  *(v32 + 8) = xmmword_241365CE0;
  sub_241352DAC();
  sub_241352D6C();
  v14 = REEngineCreate();
  a1[2] = v14;
  if (!v14)
  {
    __break(1u);
    goto LABEL_35;
  }

  LODWORD(v26) = a5;
  REEngineInitEx();
  v15 = a1[2];
  if (!v15)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_241351CEC();
  v29 = MEMORY[0x277D841D8];
  v27 = v15;
  sub_2413516EC();
  __swift_destroy_boxed_opaque_existential_0(&v27);
  v16 = sub_241352CAC();
  (*(v11 + 8))(v13, v10);
  MEMORY[0x245CE0060](v16);
  sub_241351FEC();
  sub_241352DEC();
  if (!a1[2])
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  ServiceLocator = REEngineGetServiceLocator();
  a1[10] = ServiceLocator;
  if (!ServiceLocator)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v18 = MEMORY[0x245CE3A80]();
  a1[11] = v18;
  if (!v18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v27 = 0;
  v28 = 0xE000000000000000;
  sub_2413545EC();

  v27 = a2;
  v28 = a3;
  MEMORY[0x245CE20D0](0xD000000000000026, 0x800000024135DC30);
  sub_241353C9C();

  AssetHandle = REAssetManagerCreateAssetHandle();

  a1[3] = AssetHandle;
  qword_27E5416C0 = AssetHandle;
  if (!a1[10])
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v20 = MEMORY[0x245CE3AB0]();
  a1[12] = v20;
  if (!a1[3])
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (!v20)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  RERenderGraphEmitterAssetRegisterProviders();
  if (!a1[3])
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  result = REAssetHandleLoadNow();
  if (a4)
  {
    goto LABEL_14;
  }

  if (!a1[11])
  {
    __break(1u);
    goto LABEL_55;
  }

  v27 = 0;
  v28 = 0xE000000000000000;
  sub_2413545EC();

  v27 = a2;
  v28 = a3;
  MEMORY[0x245CE20D0](0xD00000000000001ELL, 0x800000024135DC60);
  sub_241353C9C();

  v22 = REAssetManagerCreateAssetHandle();

  if (!v22)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  result = REMaterialAssetSetFloat();
  a1[8] = v22;
LABEL_14:
  if (v26)
  {
    goto LABEL_18;
  }

  if (!a1[11])
  {
    goto LABEL_56;
  }

  v27 = 0;
  v28 = 0xE000000000000000;
  sub_2413545EC();

  v27 = a2;
  v28 = a3;
  MEMORY[0x245CE20D0](0xD00000000000001ELL, 0x800000024135DC60);
  sub_241353C9C();

  v23 = REAssetManagerCreateAssetHandle();

  if (v23)
  {
    REMaterialAssetSetFloat();
    a1[9] = v23;
LABEL_18:
    sub_241353C9C();
    v24 = RESceneCreate();

    a1[4] = v24;
    if (a1[10])
    {
      if (REServiceLocatorGetECSService())
      {
        REECSManagerAddDefaultSystems();
        if (a1[4])
        {
          REECSManagerAddScene();
          v25 = REEntityCreate();
          a1[5] = v25;
          if (v25)
          {
            REEntitySetName();
            if (a1[5])
            {
              REPerspectiveCameraComponentGetComponentType();
              REEntityGetOrAddComponentByClass();
              REPerspectiveCameraComponentSetNear();
              REPerspectiveCameraComponentSetFar();
              REPerspectiveCameraComponentSetFieldOfView();
              if (a1[5])
              {
                RECameraViewDescriptorsComponentGetComponentType();
                REEntityGetOrAddComponentByClass();
                if (a1[5])
                {
                  RETransformComponentGetComponentType();
                  REEntityGetOrAddComponentByClass();
                  if (qword_27E537AF8 != -1)
                  {
                    swift_once();
                  }

                  if (qword_27E537AF0 != -1)
                  {
                    v26 = xmmword_27E5416E0;
                    swift_once();
                  }

                  REMakeLookAtPose();
                  RETransformComponentSetWorldPose();
                  if (a1[4])
                  {
                    if (a1[5])
                    {
                      RESceneAddEntity();
                      sub_2413517EC();
                      REEntityCreate();
                      REEntitySetName();
                      REImageBasedLightComponentGetComponentType();
                      a1[6] = REEntityGetOrAddComponentByClass();
                      REImageBasedLightComponentSetIntensityExponent();
                      sub_24123FD3C(1);
                      if (a1[4])
                      {
                        RESceneAddEntity();
                        sub_2413517EC();
                        if (a1[2])
                        {
                          return MEMORY[0x245CE3610]();
                        }

LABEL_53:
                        __break(1u);
                      }

LABEL_52:
                      __break(1u);
                      goto LABEL_53;
                    }

LABEL_51:
                    __break(1u);
                    goto LABEL_52;
                  }

LABEL_50:
                  __break(1u);
                  goto LABEL_51;
                }

LABEL_49:
                __break(1u);
                goto LABEL_50;
              }

LABEL_48:
              __break(1u);
              goto LABEL_49;
            }

LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_57:
  __break(1u);
  return result;
}

uint64_t ARQLRenderer.deinit()
{
  v1 = v0;
  if (qword_27E537AE8 != -1)
  {
    swift_once();
  }

  v2 = sub_241352FFC();
  __swift_project_value_buffer(v2, qword_27E538098);
  v3 = sub_241352FDC();
  v4 = sub_2413540DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_241215000, v3, v4, "deinit ARQLRenderer - begin", v5, 2u);
    MEMORY[0x245CE4870](v5, -1, -1);
  }

  v6 = [objc_opt_self() currentThread];
  v7 = [v6 isMainThread];

  if (v7)
  {
    sub_24123FB90(v1);
  }

  else
  {
    sub_241246158(0, &qword_27E538920, 0x277D85C78);
    v8 = sub_24135416C();
    sub_24135417C();
  }

  return v1;
}

void sub_24123FB90(void *a1)
{
  if (!a1[2])
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  MEMORY[0x245CE3620]();
  if (a1[8])
  {
    sub_2413517EC();
  }

  if (a1[9])
  {
    sub_2413517EC();
  }

  sub_2413517EC();
  sub_2413517EC();
  if (!a1[10])
  {
    goto LABEL_17;
  }

  if (!REServiceLocatorGetECSService())
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!a1[4])
  {
LABEL_19:
    __break(1u);
    return;
  }

  REECSManagerRemoveScene();
  sub_2413517EC();
  sub_241351CEC();
  MEMORY[0x245CE0060](0);
  sub_2413517EC();
  if (qword_27E537AE8 != -1)
  {
    swift_once();
  }

  v2 = sub_241352FFC();
  __swift_project_value_buffer(v2, qword_27E538098);
  oslog = sub_241352FDC();
  v3 = sub_2413540DC();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_241215000, oslog, v3, "deinit ARQLRenderer - complete", v4, 2u);
    MEMORY[0x245CE4870](v4, -1, -1);
  }
}

uint64_t ARQLRenderer.__deallocating_deinit()
{
  ARQLRenderer.deinit();

  return swift_deallocClassInstance();
}

void sub_24123FD3C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24135152C();
  MEMORY[0x28223BE20](v4);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v35 - v10;
  if (v1[14] != a1)
  {
    v36 = v9;
    v37 = v8;
    v1[14] = a1;
    if (qword_27E537AE8 != -1)
    {
      swift_once();
    }

    v12 = sub_241352FFC();
    v13 = __swift_project_value_buffer(v12, qword_27E538098);

    v35[1] = v13;
    v14 = sub_241352FDC();
    v15 = sub_2413540DC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = v2[14];

      _os_log_impl(&dword_241215000, v14, v15, "Using IBL version %ld", v16, 0xCu);
      MEMORY[0x245CE4870](v16, -1, -1);
    }

    else
    {
    }

    v35[0] = v6;
    v38 = v11;
    if (v2[7])
    {
      sub_2413517EC();
    }

    type metadata accessor for ARQLRenderer();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v39 = [objc_opt_self() bundleForClass_];
    v40 = 0;
    if (a1 == 2)
    {
      v18 = 6238838;
    }

    else
    {
      v18 = 0;
    }

    if (a1 == 2)
    {
      v19 = 0xE300000000000000;
    }

    else
    {
      v19 = 0xE000000000000000;
    }

    v41 = 0xE000000000000000;
    sub_2413545EC();

    v40 = 0xD00000000000001BLL;
    v41 = 0x800000024135DBE0;
    MEMORY[0x245CE20D0](v18, v19);
    MEMORY[0x245CE20D0](0x2E70616D66666964, 0xEB0000000078746BLL);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_2413545EC();

    v40 = 0xD00000000000001BLL;
    v41 = 0x800000024135DBE0;
    v20 = v39;
    MEMORY[0x245CE20D0](v18, v19);
    MEMORY[0x245CE20D0](0x2E70616D63657073, 0xEB0000000078746BLL);
    v21 = sub_241353BDC();
    v22 = [v20 URLForResource:v21 withExtension:0];

    if (v22)
    {
      v23 = v38;
      sub_2413514AC();

      v24 = sub_241353BDC();
      v25 = [v20 URLForResource:v24 withExtension:0];

      if (v25)
      {
        v26 = v35[0];
        sub_2413514AC();

        if (v2[11])
        {
          if (v2[12])
          {
            v27 = sub_24135144C();
            v28 = sub_24135144C();
            v29 = REAssetManagerImageBasedLightMemoryAssetCreateWithTextureURLsAndOptions();

            v2[7] = v29;
            if (v29)
            {
              REAssetHandleLoadNow();
              if (v2[6])
              {

                REImageBasedLightComponentSetIBLNullable();

                v30 = v37;
                v31 = *(v36 + 8);
                v31(v26, v37);
                v31(v23, v30);
                return;
              }

              goto LABEL_30;
            }

LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_29;
      }

      (*(v36 + 8))(v23, v37);
    }

    v32 = sub_241352FDC();
    v33 = sub_2413540BC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_241215000, v32, v33, "Failed to load IBL", v34, 2u);
      MEMORY[0x245CE4870](v34, -1, -1);
    }
  }
}

uint64_t sub_241240240(uint64_t a1, uint64_t a2, char a3, double a4, double a5)
{
  *(v6 + 544) = v5;
  *(v6 + 369) = a3;
  *(v6 + 536) = a5;
  *(v6 + 528) = a4;
  *(v6 + 520) = a2;
  *(v6 + 512) = a1;
  v7 = sub_24135164C();
  *(v6 + 552) = v7;
  *(v6 + 560) = *(v7 - 8);
  *(v6 + 568) = swift_task_alloc();
  *(v6 + 576) = type metadata accessor for AssetLoader.LoadInformation(0);
  *(v6 + 584) = swift_task_alloc();
  *(v6 + 592) = swift_task_alloc();
  v8 = sub_24135152C();
  *(v6 + 600) = v8;
  *(v6 + 608) = *(v8 - 8);
  *(v6 + 616) = swift_task_alloc();
  *(v6 + 624) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850, &unk_241366BF0);
  *(v6 + 632) = swift_task_alloc();
  *(v6 + 640) = sub_241353ECC();
  *(v6 + 648) = sub_241353EBC();
  v10 = sub_241353E8C();
  *(v6 + 656) = v10;
  *(v6 + 664) = v9;

  return MEMORY[0x2822009F8](sub_24124042C, v10, v9);
}

uint64_t sub_24124042C()
{
  v2 = *(v1 + 528);
  v3 = [objc_opt_self() thumbnailMemoryAvailableForTextures];
  *(v1 + 672) = v3;
  if (v2 <= -2147483650.0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = *(v1 + 528);
  if (v4 >= 2147483650.0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = *(v1 + 536);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(v1 + 536) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_17;
  }

  if (v5 <= -2147483650.0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v5 < 2147483650.0)
  {
    v0 = v3;
    LODWORD(v6) = v4;
    HIDWORD(v6) = v5;
    v25 = v6;
    *(v1 + 680) = v6;
    if (qword_27E537BA0 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  swift_once();
LABEL_8:
  v7 = qword_27E539028;
  v8 = unk_27E539030;
  v9 = dword_27E539038 | (BYTE1(dword_27E539038) << 8);

  LOBYTE(v7) = sub_2412433F4(v7, v8, v9);

  if (v7)
  {
    v10 = *(v1 + 632);
    v11 = *(v1 + 624);
    v12 = *(v1 + 608);
    v13 = *(v1 + 600);
    v14 = *(v1 + 544);
    v15 = *(v1 + 512);
    v16 = sub_241353EEC();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);

    v17 = sub_241353EBC();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v14;
    *(v1 + 688) = sub_241241C74(0, 0, v10, &unk_241365D38, v18);
    (*(v12 + 16))(v11, v15, v13);
    *(v1 + 488) = v0;
    *(v1 + 496) = v25;
    *(v1 + 504) = 0;
    v20 = swift_task_alloc();
    *(v1 + 696) = v20;
    *v20 = v1;
    v20[1] = sub_2412407AC;
    v21 = *(v1 + 624);

    return sub_241344E40(v21, (v1 + 488));
  }

  else
  {
    *(v1 + 744) = sub_241353EBC();
    v24 = sub_241353E8C();
    *(v1 + 752) = v24;
    *(v1 + 760) = v23;

    return MEMORY[0x2822009F8](sub_241240DF8, v24, v23);
  }
}

uint64_t sub_2412407AC(uint64_t a1)
{
  v3 = *v2;
  v3[88] = a1;
  v3[89] = v1;

  v4 = v3[83];
  v5 = v3[82];
  if (v1)
  {
    v6 = sub_241240AD4;
  }

  else
  {
    v6 = sub_2412408CC;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2412408CC()
{
  v1 = sub_241244E30(MEMORY[0x277D84F90]);
  *(v0 + 720) = v1;
  v2 = swift_task_alloc();
  *(v0 + 728) = v2;
  *v2 = v0;
  v2[1] = sub_241240980;

  return sub_241343B70(v0 + 432, v0 + 256, v1);
}

uint64_t sub_241240980()
{
  v2 = *v1;
  *(*v1 + 736) = v0;

  v3 = *(v2 + 664);
  v4 = *(v2 + 656);
  if (v0)
  {
    v5 = sub_2412417A4;
  }

  else
  {
    v5 = sub_241240B98;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_241240AD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_241240B98()
{
  v20 = v0;

  *(v0 + 368) = *(v0 + 288);
  v1 = *(v0 + 448);
  *(v0 + 192) = *(v0 + 432);
  *(v0 + 208) = v1;
  *(v0 + 224) = *(v0 + 464);
  *(v0 + 240) = *(v0 + 480);
  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  v4 = *(v0 + 272);
  v5 = *(v0 + 280);
  v7 = *(v0 + 296);
  v6 = *(v0 + 304);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E539D10, &qword_241369840);
  sub_241353F4C();

  v8 = *(v0 + 368);
  v9 = *(v0 + 736);
  v10 = *(v0 + 536);
  v11 = *(v0 + 528);
  v12 = *(v0 + 520);
  v16[0] = v3;
  v16[1] = v2;
  v16[2] = v4;
  v16[3] = v5;
  v17 = v8;
  v18 = v7;
  v19 = v6;
  sub_2412422D4((v0 + 192), v16, v12, v11, v10);

  v13 = *(v0 + 208);
  if (v9)
  {
    *(v0 + 312) = *(v0 + 192);
    *(v0 + 328) = v13;
    *(v0 + 344) = *(v0 + 224);
    *(v0 + 360) = *(v0 + 240);
    sub_241244AE8(v0 + 312);
  }

  else
  {
    *(v0 + 376) = *(v0 + 192);
    *(v0 + 392) = v13;
    *(v0 + 408) = *(v0 + 224);
    *(v0 + 424) = *(v0 + 240);
    sub_241244AE8(v0 + 376);
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_241240DF8()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 608);
  v3 = *(v0 + 600);
  v4 = *(v0 + 544);
  v5 = *(v0 + 512);
  kdebug_thumbnail_generation_called();
  arql_memory_snapshot();
  format_double_as_uint64();
  format_double_as_uint64();
  kdebug_thumbnail_generation_begin();
  v46 = *(v2 + 16);
  v6 = v46(v1, v5, v3);
  v14 = *(v4 + 16);
  if (v14)
  {
    v15 = *(v0 + 680);
    v45 = *(v0 + 672);
    v42 = *(v0 + 600);
    v43 = *(v0 + 616);
    v16 = *(v0 + 584);
    v17 = *(v0 + 576);
    v18 = *(v0 + 568);
    v19 = *(v0 + 560);
    v20 = *(v0 + 552);
    v44 = *(v0 + 369);
    sub_24135163C();
    v21 = sub_2413515FC();
    v23 = v22;
    (*(v19 + 8))(v18, v20);
    v24 = (v16 + v17[7]);
    *(v16 + v17[10]) = MEMORY[0x277D84F90];
    v46(v16, v43, v42);
    *(v16 + v17[5]) = v14;
    v25 = (v16 + v17[8]);
    *v25 = v21;
    v25[1] = v23;
    v26 = (v16 + v17[6]);
    *v26 = 0;
    v26[1] = 0xE000000000000000;
    *v24 = 0;
    v24[1] = 0;
    v27 = (v16 + v17[9]);
    *v27 = v45;
    v27[1] = v15;
    *(v16 + v17[11]) = v44;
    *(v16 + v17[12]) = 0;
    *(v16 + v17[13]) = 0;
    if (qword_27E537B10 != -1)
    {
      swift_once();
    }

    v28 = sub_241352FFC();
    __swift_project_value_buffer(v28, qword_27E5384A0);
    v29 = sub_241352FDC();
    v30 = sub_2413540DC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 672);
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = v31 / 0x100000;
      _os_log_impl(&dword_241215000, v29, v30, "textureDownsampleMemoryLimit: %ldMB", v32, 0xCu);
      MEMORY[0x245CE4870](v32, -1, -1);
    }

    v33 = *(v0 + 616);
    v34 = *(v0 + 608);
    v35 = *(v0 + 600);
    v36 = *(v0 + 592);
    v37 = *(v0 + 584);

    (*(v34 + 8))(v33, v35);
    sub_241244A20(v37, v36);
    v38 = sub_241353EBC();
    *(v0 + 768) = v38;
    v39 = swift_task_alloc();
    *(v0 + 776) = v39;
    *(v39 + 16) = v36;
    v40 = swift_task_alloc();
    *(v0 + 784) = v40;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5380B0, &qword_241365D28);
    *v40 = v0;
    v40[1] = sub_241241194;
    v8 = MEMORY[0x277D85700];
    v11 = sub_241244A84;
    v6 = v0 + 16;
    v10 = 0x800000024135D9B0;
    v7 = v38;
    v9 = 0xD00000000000007DLL;
    v12 = v39;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822008A0](v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_241241194()
{
  v2 = *v1;
  *(*v1 + 792) = v0;

  if (v0)
  {
    v3 = *(v2 + 760);
    v4 = *(v2 + 752);
    v5 = sub_2412415F4;
  }

  else
  {

    v3 = *(v2 + 760);
    v4 = *(v2 + 752);
    v5 = sub_2412412B8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2412412B8()
{
  v1 = *(v0 + 592);

  v2 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 16);
  *(v0 + 152) = v2;
  *(v0 + 168) = *(v0 + 48);
  *(v0 + 184) = *(v0 + 64);
  v3 = *(v0 + 96);
  *(v0 + 800) = *(v0 + 80);
  *(v0 + 816) = v3;
  *(v0 + 370) = *(v0 + 112);
  *(v0 + 832) = *(v0 + 120);
  sub_241244A8C(v1);
  arql_memory_snapshot();
  format_double_as_uint64();
  format_double_as_uint64();
  format_double_as_uint64();
  format_double_as_uint64();
  kdebug_thumbnail_generation_end();
  v4 = *(v0 + 664);
  v5 = *(v0 + 656);

  return MEMORY[0x2822009F8](sub_2412413CC, v5, v4);
}

uint64_t sub_2412413CC()
{
  v19 = v0;
  v1 = *(v0 + 370);

  v2 = *(v0 + 152);
  *(v0 + 192) = *(v0 + 136);
  *(v0 + 208) = v2;
  *(v0 + 224) = *(v0 + 168);
  *(v0 + 240) = *(v0 + 184);
  *(v0 + 368) = v1;

  v3 = *(v0 + 840);
  v4 = *(v0 + 832);
  v5 = *(v0 + 370);
  v6 = *(v0 + 808);
  v7 = *(v0 + 792);
  v8 = *(v0 + 536);
  v9 = *(v0 + 528);
  v10 = *(v0 + 520);
  v14[0] = *(v0 + 800);
  v14[1] = v6;
  v15 = *(v0 + 816);
  v16 = v5;
  v17 = v4;
  v18 = v3;
  sub_2412422D4((v0 + 192), v14, v10, v9, v8);

  v11 = *(v0 + 208);
  if (v7)
  {
    *(v0 + 312) = *(v0 + 192);
    *(v0 + 328) = v11;
    *(v0 + 344) = *(v0 + 224);
    *(v0 + 360) = *(v0 + 240);
    sub_241244AE8(v0 + 312);
  }

  else
  {
    *(v0 + 376) = *(v0 + 192);
    *(v0 + 392) = v11;
    *(v0 + 408) = *(v0 + 224);
    *(v0 + 424) = *(v0 + 240);
    sub_241244AE8(v0 + 376);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2412415F4()
{
  v1 = v0[74];

  sub_241244A8C(v1);
  arql_memory_snapshot();
  format_double_as_uint64();
  format_double_as_uint64();
  format_double_as_uint64();
  format_double_as_uint64();
  kdebug_thumbnail_generation_end();
  v2 = v0[83];
  v3 = v0[82];

  return MEMORY[0x2822009F8](sub_2412416EC, v3, v2);
}

uint64_t sub_2412416EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2412417A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_241241874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_241353ECC();
  v4[3] = sub_241353EBC();
  v6 = sub_241353E8C();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_24124190C, v6, v5);
}

uint64_t sub_24124190C()
{
  if (qword_27E537AE8 != -1)
  {
    swift_once();
  }

  v1 = sub_241352FFC();
  __swift_project_value_buffer(v1, qword_27E538098);
  v2 = sub_241352FDC();
  v3 = sub_2413540DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_241215000, v2, v3, "Still not loaded", v4, 2u);
    MEMORY[0x245CE4870](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v8 = *(v5 + 16);
  if (v8)
  {
    MEMORY[0x245CE3630]();
    v8 = sub_241241A3C;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_241241A3C()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_241241AD4;

  return MEMORY[0x282200480](100000000);
}

uint64_t sub_241241AD4()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_241241C10;
  }

  else
  {
    v5 = sub_241246478;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_241241C10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_241241C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850, &unk_241366BF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_241246210(a3, v22 - v9, &unk_27E538850, &unk_241366BF0);
  v11 = sub_241353EEC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_241246278(v10, &unk_27E538850, &unk_241366BF0);
  }

  else
  {
    sub_241353EDC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_241353E8C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_241353C9C() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_241246278(a3, &unk_27E538850, &unk_241366BF0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_241246278(a3, &unk_27E538850, &unk_241366BF0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

double sub_241241F20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538148, &qword_241365E58);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  sub_24125EC48(a2, sub_241246390, v10);

  return result;
}

uint64_t sub_24124206C(__int128 *a1)
{
  v1 = a1[5];
  v17 = a1[4];
  v18 = v1;
  v19[0] = a1[6];
  *(v19 + 9) = *(a1 + 105);
  v2 = a1[1];
  v13 = *a1;
  v14 = v2;
  v3 = a1[3];
  v15 = a1[2];
  v16 = v3;
  if (qword_27E537AE8 != -1)
  {
    swift_once();
  }

  v4 = sub_241352FFC();
  __swift_project_value_buffer(v4, qword_27E538098);
  v5 = sub_241352FDC();
  v6 = sub_2413540DC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_241215000, v5, v6, "Finished loading file", v7, 2u);
    MEMORY[0x245CE4870](v7, -1, -1);
  }

  v11[4] = v17;
  v11[5] = v18;
  v12[0] = v19[0];
  *(v12 + 9) = *(v19 + 9);
  v11[0] = v13;
  v11[1] = v14;
  v11[2] = v15;
  v11[3] = v16;
  if (sub_24124640C(v11) == 1)
  {
    nullsub_6();
    nullsub_6();
    v9 = *v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538148, &qword_241365E58);
    return sub_241353E9C();
  }

  else
  {
    nullsub_6();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538148, &qword_241365E58);
    return sub_241353EAC();
  }
}

void sub_2412422D4(void *a1, unint64_t *a2, void *a3, double a4, double a5)
{
  v86 = a3;
  v89 = sub_241352B6C();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_2413517DC();
  v90 = *(v93 - 8);
  v11 = MEMORY[0x28223BE20](v93);
  v92 = v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83[3] = a1[1];
  v13 = a1[3];
  v14 = a1[4];
  v15 = a1[6];
  v16 = *a2;
  *&v103 = MEMORY[0x277D84F90];
  v17 = v16 >> 62;
  if (v16 >> 62)
  {
LABEL_75:
    v18 = sub_2413544EC();
  }

  else
  {
    v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *&v102 = v18;
  v91 = v5;
  v84 = v13;
  v83[2] = v14;
  v83[1] = v15;
  if (v18)
  {
    v19 = 0;
    v14 = v16 & 0xC000000000000001;
    v13 = v102;
    while (1)
    {
      if (v14)
      {
        v15 = MEMORY[0x245CE29C0](v19, v16, v11);
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v19 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        v15 = *(v16 + 8 * v19 + 32);

        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v22 = v103;
          if ((v103 & 0x8000000000000000) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_76;
        }
      }

      ComponentType = RERigidBodyComponentGetComponentType();
      v5 = v15;
      if (sub_24131006C(ComponentType, 1))
      {
        v5 = &v103;
        sub_24135464C();
        sub_24135467C();
        v13 = v102;
        sub_24135468C();
        sub_24135465C();
      }

      else
      {
      }

      ++v19;
      if (v20 == v13)
      {
        goto LABEL_15;
      }
    }
  }

  v22 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_76;
  }

LABEL_18:
  if ((v22 & 0x4000000000000000) != 0)
  {
LABEL_76:
    v95 = sub_2413544EC();
  }

  else
  {
    v95 = *(v22 + 16);
  }

  if (v17)
  {
    v23 = sub_2413544EC();
  }

  else
  {
    v23 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x277D84F90];
  if (v23)
  {
    v107 = MEMORY[0x277D84F90];
    sub_2412DE214(0, v23 & ~(v23 >> 63), 0);
    if (v23 < 0)
    {
      __break(1u);
LABEL_78:
      swift_once();
      goto LABEL_54;
    }

    v24 = 0;
    v14 = v107;
    v94 = v16 & 0xC000000000000001;
    v25 = (v90 + 8);
    do
    {
      if (v94)
      {
        v26 = MEMORY[0x245CE29C0](v24, v16);
      }

      else
      {
        v26 = *(v16 + 8 * v24 + 32);
      }

      if (v95)
      {
        sub_241352E1C();
        v98 = v28;
        v99 = v27;
        v97 = v29;
        sub_241352C5C();
        sub_24135195C();
        v98 = v30;
        v99 = v31;
        *&v33 = simd_matrix4x4(v32);
        v103 = v33;
        v104 = v34;
        v105 = v35;
        v106 = v36;
        sub_24135410C();
        sub_241354A8C();
        sub_241354A9C();
        v98 = v105;
        v99 = v106;
        v97 = v104;
        v96 = v103;
        v37 = v92;
        sub_24135296C();
        sub_2413516FC();
        (*v25)(v37, v93);
        REEntityComputeTightMeshBounds();
        v39 = v38;
        HIDWORD(v39) = HIDWORD(v101);
        HIDWORD(v40) = HIDWORD(v100);
        v100 = v40;
        v101 = v39;
      }

      else
      {
        sub_241352C5C();
        sub_24135191C();
        v39 = v41;
      }

      v107 = v14;
      v43 = *(v14 + 16);
      v42 = *(v14 + 24);
      if (v43 >= v42 >> 1)
      {
        v98 = v40;
        v99 = v39;
        sub_2412DE214((v42 > 1), v43 + 1, 1);
        v40 = v98;
        v39 = v99;
        v14 = v107;
      }

      ++v24;
      *(v14 + 16) = v43 + 1;
      v44 = v14 + 48 * v43;
      *(v44 + 32) = v26;
      *(v44 + 40) = &off_2853034C8;
      *(v44 + 48) = v39;
      *(v44 + 64) = v40;
    }

    while (v23 != v24);
  }

  sub_241300068(v14, 0.1);
  sub_241352C5C();
  swift_allocObject();
  v45 = sub_24135180C();
  if (!*(v91 + 4))
  {
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v46 = v45;
  v47 = v92;
  sub_24135296C();
  sub_2413516FC();
  *&v100 = *(v90 + 8);
  (v100)(v47, v93);
  RESceneAddEntity();
  v48 = v87;
  *&v101 = v46;
  sub_2413518AC();
  v5 = v48;
  sub_241352B4C();
  (*(v88 + 8))(v48, v89);
  if (v102)
  {
    v49 = 0;
    v13 = v16 & 0xC000000000000001;
    v17 = v16 & 0xFFFFFFFFFFFFFF8;
    v15 = 0;
    while (1)
    {
      if (v13)
      {
        v5 = MEMORY[0x245CE29C0](v15, v16);
        v50 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v15 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_74;
        }

        v5 = *(v16 + 8 * v15 + 32);

        v50 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_50:
          __break(1u);
          break;
        }
      }

      v51 = REImageBasedLightComponentGetComponentType();
      if (sub_24131006C(v51, 1))
      {
        IBL = REImageBasedLightComponentGetIBL();

        if (IBL)
        {
          v49 = IBL;
        }

        if (v50 == v102)
        {
          goto LABEL_52;
        }

        v15 = v50;
      }

      else
      {

        ++v15;
        if (v50 == v102)
        {
          goto LABEL_52;
        }
      }
    }
  }

  v49 = 0;
LABEL_52:
  *&v103 = v49;
  v17 = 0x27E537000uLL;
  if (!v49)
  {

    if (qword_27E537AE8 != -1)
    {
      swift_once();
    }

    v61 = sub_241352FFC();
    __swift_project_value_buffer(v61, qword_27E538098);

    v62 = sub_241352FDC();
    v63 = sub_2413540DC();
    v64 = os_log_type_enabled(v62, v63);
    v57 = v91;
    v65 = v84;
    if (v64)
    {
      v66 = swift_slowAlloc();
      *v66 = 134217984;
      *(v66 + 4) = v65;

      _os_log_impl(&dword_241215000, v62, v63, "fileMetadata.preferredIBLVersion: %ld", v66, 0xCu);
      MEMORY[0x245CE4870](v66, -1, -1);
    }

    else
    {
    }

    v59 = v85;
    sub_24123FD3C(v65);
    v60 = v100;
    v17 = 0x27E537000uLL;
    goto LABEL_64;
  }

  if (qword_27E537AE8 != -1)
  {
    goto LABEL_78;
  }

LABEL_54:
  v53 = sub_241352FFC();
  __swift_project_value_buffer(v53, qword_27E538098);
  v54 = sub_241352FDC();
  v55 = sub_2413540DC();
  v56 = os_log_type_enabled(v54, v55);
  v57 = v91;
  if (v56)
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_241215000, v54, v55, "Using custom IBL", v58, 2u);
    MEMORY[0x245CE4870](v58, -1, -1);
  }

  if (!*(v57 + 48))
  {
    goto LABEL_80;
  }

  REImageBasedLightComponentSetIBLNullable();
  v59 = v85;
  v60 = v100;
LABEL_64:
  v67.n128_f64[0] = sub_2413102D0(v95 != 0);
  *&v72 = sub_2412C6F08(v68, v67, v69, v70, v71, 1.0);
  v101 = v73;
  v102 = v72;
  v99 = v75;
  v100 = v74;
  v76 = v92;
  sub_24135296C();
  sub_2413516FC();
  v60(v76, v93);
  RETransformComponentGetComponentType();
  REEntityGetOrAddComponentByClass();
  RETransformComponentSetWorldMatrix4x4F();
  sub_24124301C(v86, a4, a5);
  if (v59)
  {
    if (*(v17 + 2792) != -1)
    {
      swift_once();
    }

    v77 = sub_241352FFC();
    __swift_project_value_buffer(v77, qword_27E538098);
    v78 = sub_241352FDC();
    v79 = sub_2413540BC();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v107 = v81;
      *v80 = 136315394;
      *(v80 + 4) = sub_2412DDC2C(0xD00000000000002BLL, 0x800000024135DC00, &v107);
      *(v80 + 12) = 2048;
      *(v80 + 14) = 373;
      _os_log_impl(&dword_241215000, v78, v79, "Snapshot failed in %s line: %ld", v80, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x245CE4870](v81, -1, -1);
      MEMORY[0x245CE4870](v80, -1, -1);
    }

    swift_willThrow();
    sub_241242E8C(&v103, v57);
    if (*(v57 + 32))
    {
      goto LABEL_72;
    }

    __break(1u);
  }

  sub_241242E8C(&v103, v57);
  if (*(v57 + 32))
  {
LABEL_72:
    v82 = v92;
    sub_24135296C();
    sub_2413516FC();
    v60(v82, v93);
    RESceneRemoveEntity();

    return;
  }

LABEL_81:
  __break(1u);
}

void sub_241242E8C(void *a1, uint64_t a2)
{
  if (qword_27E537AE8 != -1)
  {
    swift_once();
  }

  v4 = sub_241352FFC();
  __swift_project_value_buffer(v4, qword_27E538098);
  v5 = sub_241352FDC();
  v6 = sub_2413540DC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_241215000, v5, v6, "inside ARQLRenderer defer", v7, 2u);
    MEMORY[0x245CE4870](v7, -1, -1);
  }

  if (*a1)
  {
    v8 = sub_241352FDC();
    v9 = sub_2413540DC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_241215000, v8, v9, "Snapshot finished - Resetting back to default IBL", v10, 2u);
      MEMORY[0x245CE4870](v10, -1, -1);
    }

    if (*(a2 + 48))
    {

      REImageBasedLightComponentSetIBLNullable();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_24124301C(void *a1, double a2, double a3)
{
  v5 = v3;
  if (qword_27E537AE8 != -1)
  {
    swift_once();
  }

  v9 = sub_241352FFC();
  __swift_project_value_buffer(v9, qword_27E538098);
  v10 = sub_241352FDC();
  v11 = sub_2413540DC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134218240;
    *(v12 + 4) = a2;
    *(v12 + 12) = 2048;
    *(v12 + 14) = a3;
    _os_log_impl(&dword_241215000, v10, v11, "_snapshot %fx%f", v12, 0x16u);
    MEMORY[0x245CE4870](v12, -1, -1);
  }

  v13 = MTLCreateSystemDefaultDevice();
  if (!v13)
  {
    sub_2412460C0(0, v14, v15);
    swift_allocError();
    *v16 = 0xD000000000000027;
    *(v16 + 8) = 0x800000024135DB50;
    *(v16 + 16) = 0;
    swift_willThrow();
    return;
  }

  sub_2412453DC(v13, a1, a2, a3);
  if (v4)
  {
    swift_unknownObjectRelease();
    return;
  }

  if (!v5[2])
  {
    __break(1u);
    goto LABEL_15;
  }

  if (!v5[3])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v5[5])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = dispatch_semaphore_create(0);
  if (v5[2])
  {
    MEMORY[0x245CE3630]();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    v19 = v17;
    RECameraViewDescriptorsComponentGetComponentType();
    REEntityGetOrAddComponentByClass();
    RERenderGraphCreateRenderGraphDataStruct();
    RERenderGraphDataStructAddFloat4();
    v20 = swift_allocObject();
    *(v20 + 16) = sub_241246114;
    *(v20 + 24) = v18;
    v22[4] = sub_241246138;
    v22[5] = v20;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 1107296256;
    v22[2] = sub_2412D5698;
    v22[3] = &block_descriptor;
    v21 = _Block_copy(v22);

    RECameraViewDescriptorsComponentSnapshotNextFrameWithSettings();
    _Block_release(v21);

    sub_241243350();
    sub_2413541CC();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_241243350()
{
  result = v0[2];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  MEMORY[0x245CE3630]();
  result = v0[12];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  RenderFrameSettings = RERenderManagerCreateRenderFrameSettings();
  result = v0[12];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  RenderFrameWorkload = RERenderManagerCreateRenderFrameWorkload();
  MEMORY[0x245CE38F0](RenderFrameWorkload, RenderFrameSettings);
  result = v0[3];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!v0[12])
  {
LABEL_13:
    __break(1u);
    return result;
  }

  RERenderGraphEmitterAssetExecute();
  RERenderFrameWorkloadCommitAndWait();
  RERelease();

  return RERelease();
}

uint64_t sub_2412433F4(uint64_t a1, unint64_t a2, __int16 a3)
{
  v6 = sub_241353BDC();
  v7 = sub_241353BDC();
  v8 = CFPreferencesCopyAppValue(v6, v7);

  v22 = v8;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5380B8, &qword_24136A240);
  if (!swift_dynamicCast())
  {
    if ((a3 & 0xFF00) == 0x200)
    {
      v9 = a3;
    }

    else
    {
      v9 = HIBYTE(a3) & 1;
    }

    v22 = 0;
    v23 = 0xE000000000000000;
    v24 = v9 & 1;
    sub_2413546CC();
    if (qword_27E537C70 != -1)
    {
      swift_once();
    }

    v18 = sub_241352FFC();
    __swift_project_value_buffer(v18, qword_27E539ED0);

    v11 = sub_241352FDC();
    v12 = sub_2413540AC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136315394;
      v19 = sub_2412DDC2C(a1, a2, &v22);

      *(v13 + 4) = v19;
      *(v13 + 12) = 2080;
      v20 = sub_2412DDC2C(0, 0xE000000000000000, &v22);

      *(v13 + 14) = v20;
      v17 = "No value for default '%s', using fallback: '%s'";
      goto LABEL_13;
    }

LABEL_14:

    goto LABEL_15;
  }

  v9 = v24;
  v22 = 0;
  v23 = 0xE000000000000000;
  v24 &= 1u;
  sub_2413546CC();
  if (qword_27E537C70 != -1)
  {
    swift_once();
  }

  v10 = sub_241352FFC();
  __swift_project_value_buffer(v10, qword_27E539ED0);

  v11 = sub_241352FDC();
  v12 = sub_2413540AC();

  if (!os_log_type_enabled(v11, v12))
  {
    goto LABEL_14;
  }

  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v22 = v14;
  *v13 = 136315394;
  v15 = sub_2412DDC2C(0, 0xE000000000000000, &v22);

  *(v13 + 4) = v15;
  *(v13 + 12) = 2080;
  v16 = sub_2412DDC2C(a1, a2, &v22);

  *(v13 + 14) = v16;
  v17 = "Read value '%s' for default '%s'";
LABEL_13:
  _os_log_impl(&dword_241215000, v11, v12, v17, v13, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x245CE4870](v14, -1, -1);
  MEMORY[0x245CE4870](v13, -1, -1);

LABEL_15:
  swift_unknownObjectRelease();
  return v9 & 1;
}

uint64_t sub_2412437D0()
{
  v1 = v0;
  v3 = *v0;
  v2 = v0[1];
  v4 = sub_241353BDC();
  v5 = sub_241353BDC();
  v6 = CFPreferencesCopyAppValue(v4, v5);

  v32 = v6;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5380B8, &qword_24136A240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5380F0, &qword_241365E08);
  if (!swift_dynamicCast())
  {
    v17 = v1[4];
    v18 = v1[5];
    v7 = v17;
    v19 = v18;
    if (v18 == 1)
    {
      v7 = v1[2];
      v19 = v1[3];
    }

    v30 = 0;
    v31 = 0xE000000000000000;
    v32 = v7;
    v33 = v19;
    sub_2412461FC(v17, v18);
    sub_2413546CC();
    if (qword_27E537C70 != -1)
    {
      swift_once();
    }

    v20 = sub_241352FFC();
    __swift_project_value_buffer(v20, qword_27E539ED0);
    sub_241246210(v1, &v30, &qword_27E5380F8, &qword_241365E10);

    v10 = sub_241352FDC();
    v21 = sub_2413540AC();

    if (os_log_type_enabled(v10, v21))
    {
      v29 = v3;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136315394;

      sub_241246278(v1, &qword_27E5380F8, &qword_241365E10);
      v24 = v7;
      v25 = sub_2412DDC2C(v29, v2, &v30);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      v26 = sub_2412DDC2C(0, 0xE000000000000000, &v30);

      *(v22 + 14) = v26;
      v7 = v24;
      _os_log_impl(&dword_241215000, v10, v21, "No value for default '%s', using fallback: '%s'", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CE4870](v23, -1, -1);
      MEMORY[0x245CE4870](v22, -1, -1);

      goto LABEL_13;
    }

LABEL_12:
    sub_241246278(v1, &qword_27E5380F8, &qword_241365E10);

    goto LABEL_13;
  }

  v7 = v30;
  v8 = v31;
  v30 = 0;
  v31 = 0xE000000000000000;
  v32 = v7;
  v33 = v8;
  sub_2413546CC();
  if (qword_27E537C70 != -1)
  {
    swift_once();
  }

  v9 = sub_241352FFC();
  __swift_project_value_buffer(v9, qword_27E539ED0);

  sub_241246210(v1, &v30, &qword_27E5380F8, &qword_241365E10);
  v10 = sub_241352FDC();
  v11 = sub_2413540AC();

  if (!os_log_type_enabled(v10, v11))
  {
    goto LABEL_12;
  }

  v28 = v3;
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v30 = v13;
  *v12 = 136315394;
  v14 = v7;
  v15 = sub_2412DDC2C(0, 0xE000000000000000, &v30);

  *(v12 + 4) = v15;
  *(v12 + 12) = 2080;

  sub_241246278(v1, &qword_27E5380F8, &qword_241365E10);
  v16 = sub_2412DDC2C(v28, v2, &v30);

  *(v12 + 14) = v16;
  v7 = v14;
  _os_log_impl(&dword_241215000, v10, v11, "Read value '%s' for default '%s'", v12, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x245CE4870](v13, -1, -1);
  MEMORY[0x245CE4870](v12, -1, -1);

LABEL_13:
  swift_unknownObjectRelease();
  return v7;
}

double sub_241243CE0()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  v4 = sub_241353BDC();
  v5 = sub_241353BDC();
  v6 = CFPreferencesCopyAppValue(v4, v5);

  v23 = *&v6;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5380B8, &qword_24136A240);
  if (!swift_dynamicCast())
  {
    v16 = 24;
    if (*(v1 + 32))
    {
      v16 = 16;
    }

    v7 = *(v1 + v16);
    v21 = 0.0;
    v22 = 0xE000000000000000;
    v23 = v7;
    sub_2413546CC();
    if (qword_27E537C70 != -1)
    {
      swift_once();
    }

    v17 = sub_241352FFC();
    __swift_project_value_buffer(v17, qword_27E539ED0);
    sub_241246210(v1, &v21, &unk_27E538AB0, &unk_2413675F0);

    v9 = sub_241352FDC();
    v10 = sub_2413540AC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = *&v12;
      *v11 = 136315394;
      v18 = sub_2412DDC2C(v2, v3, &v21);
      sub_241246278(v1, &unk_27E538AB0, &unk_2413675F0);
      *(v11 + 4) = v18;
      *(v11 + 12) = 2080;
      v19 = sub_2412DDC2C(0, 0xE000000000000000, &v21);

      *(v11 + 14) = v19;
      v15 = "No value for default '%s', using fallback: '%s'";
      goto LABEL_12;
    }

LABEL_13:

    swift_unknownObjectRelease();
    sub_241246278(v1, &unk_27E538AB0, &unk_2413675F0);
    return v7;
  }

  v7 = v21;
  v21 = 0.0;
  v22 = 0xE000000000000000;
  v23 = v7;
  sub_2413546CC();
  if (qword_27E537C70 != -1)
  {
    swift_once();
  }

  v8 = sub_241352FFC();
  __swift_project_value_buffer(v8, qword_27E539ED0);

  sub_241246210(v1, &v21, &unk_27E538AB0, &unk_2413675F0);
  v9 = sub_241352FDC();
  v10 = sub_2413540AC();

  if (!os_log_type_enabled(v9, v10))
  {
    goto LABEL_13;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v21 = *&v12;
  *v11 = 136315394;
  v13 = sub_2412DDC2C(0, 0xE000000000000000, &v21);

  *(v11 + 4) = v13;
  *(v11 + 12) = 2080;
  v14 = sub_2412DDC2C(v2, v3, &v21);
  sub_241246278(v1, &unk_27E538AB0, &unk_2413675F0);
  *(v11 + 14) = v14;
  v15 = "Read value '%s' for default '%s'";
LABEL_12:
  _os_log_impl(&dword_241215000, v9, v10, v15, v11, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x245CE4870](v12, -1, -1);
  MEMORY[0x245CE4870](v11, -1, -1);

  swift_unknownObjectRelease();
  return v7;
}

double sub_241244128()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  v4 = sub_241353BDC();
  v5 = sub_241353BDC();
  v6 = CFPreferencesCopyAppValue(v4, v5);

  v23 = *&v6;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5380B8, &qword_24136A240);
  if (!swift_dynamicCast())
  {
    v16 = 24;
    if (*(v1 + 32))
    {
      v16 = 16;
    }

    v7 = *(v1 + v16);
    v21 = 0.0;
    v22 = 0xE000000000000000;
    v23 = v7;
    sub_2413546CC();
    if (qword_27E537C70 != -1)
    {
      swift_once();
    }

    v17 = sub_241352FFC();
    __swift_project_value_buffer(v17, qword_27E539ED0);
    sub_241246210(v1, &v21, &qword_27E538110, &qword_241365E28);

    v9 = sub_241352FDC();
    v10 = sub_2413540AC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = *&v12;
      *v11 = 136315394;
      v18 = sub_2412DDC2C(v2, v3, &v21);
      sub_241246278(v1, &qword_27E538110, &qword_241365E28);
      *(v11 + 4) = v18;
      *(v11 + 12) = 2080;
      v19 = sub_2412DDC2C(0, 0xE000000000000000, &v21);

      *(v11 + 14) = v19;
      v15 = "No value for default '%s', using fallback: '%s'";
      goto LABEL_12;
    }

LABEL_13:

    swift_unknownObjectRelease();
    sub_241246278(v1, &qword_27E538110, &qword_241365E28);
    return v7;
  }

  v7 = v21;
  v21 = 0.0;
  v22 = 0xE000000000000000;
  v23 = v7;
  sub_2413546CC();
  if (qword_27E537C70 != -1)
  {
    swift_once();
  }

  v8 = sub_241352FFC();
  __swift_project_value_buffer(v8, qword_27E539ED0);

  sub_241246210(v1, &v21, &qword_27E538110, &qword_241365E28);
  v9 = sub_241352FDC();
  v10 = sub_2413540AC();

  if (!os_log_type_enabled(v9, v10))
  {
    goto LABEL_13;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v21 = *&v12;
  *v11 = 136315394;
  v13 = sub_2412DDC2C(0, 0xE000000000000000, &v21);

  *(v11 + 4) = v13;
  *(v11 + 12) = 2080;
  v14 = sub_2412DDC2C(v2, v3, &v21);
  sub_241246278(v1, &qword_27E538110, &qword_241365E28);
  *(v11 + 14) = v14;
  v15 = "Read value '%s' for default '%s'";
LABEL_12:
  _os_log_impl(&dword_241215000, v9, v10, v15, v11, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x245CE4870](v12, -1, -1);
  MEMORY[0x245CE4870](v11, -1, -1);

  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_241244570()
{
  v1 = v0;
  v2 = *v0;
  v25 = v0[1];
  v3 = sub_241353BDC();
  v4 = sub_241353BDC();
  v5 = CFPreferencesCopyAppValue(v3, v4);

  v28 = v5;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5380B8, &qword_24136A240);
  if (!swift_dynamicCast())
  {
    v15 = 24;
    if (*(v1 + 32))
    {
      v15 = 16;
    }

    v6 = *(v1 + v15);
    v26 = 0;
    v27 = 0xE000000000000000;
    v28 = v6;
    sub_2413546CC();
    if (qword_27E537C70 != -1)
    {
      swift_once();
    }

    v16 = sub_241352FFC();
    __swift_project_value_buffer(v16, qword_27E539ED0);
    sub_241246210(v1, &v26, &qword_27E5380C0, &qword_241365DD8);

    v8 = sub_241352FDC();
    v17 = sub_2413540AC();

    if (os_log_type_enabled(v8, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315394;
      v20 = sub_2412DDC2C(v2, v25, &v26);
      v21 = v6;
      v22 = v20;
      sub_241246278(v1, &qword_27E5380C0, &qword_241365DD8);
      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v23 = sub_2412DDC2C(0, 0xE000000000000000, &v26);

      *(v18 + 14) = v23;
      v6 = v21;
      _os_log_impl(&dword_241215000, v8, v17, "No value for default '%s', using fallback: '%s'", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CE4870](v19, -1, -1);
      MEMORY[0x245CE4870](v18, -1, -1);

      goto LABEL_12;
    }

LABEL_13:

    swift_unknownObjectRelease();
    sub_241246278(v1, &qword_27E5380C0, &qword_241365DD8);
    return v6;
  }

  v6 = v26;
  v26 = 0;
  v27 = 0xE000000000000000;
  v28 = v6;
  sub_2413546CC();
  if (qword_27E537C70 != -1)
  {
    swift_once();
  }

  v7 = sub_241352FFC();
  __swift_project_value_buffer(v7, qword_27E539ED0);

  sub_241246210(v1, &v26, &qword_27E5380C0, &qword_241365DD8);
  v8 = sub_241352FDC();
  v9 = sub_2413540AC();

  if (!os_log_type_enabled(v8, v9))
  {
    goto LABEL_13;
  }

  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v26 = v11;
  *v10 = 136315394;
  v12 = v6;
  v13 = sub_2412DDC2C(0, 0xE000000000000000, &v26);

  *(v10 + 4) = v13;
  *(v10 + 12) = 2080;
  v14 = sub_2412DDC2C(v2, v25, &v26);
  sub_241246278(v1, &qword_27E5380C0, &qword_241365DD8);
  *(v10 + 14) = v14;
  v6 = v12;
  _os_log_impl(&dword_241215000, v8, v9, "Read value '%s' for default '%s'", v10, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x245CE4870](v11, -1, -1);
  MEMORY[0x245CE4870](v10, -1, -1);

LABEL_12:
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_241244A20(uint64_t a1, uint64_t a2)
{
  Information = type metadata accessor for AssetLoader.LoadInformation(0);
  (*(*(Information - 8) + 32))(a2, a1, Information);
  return a2;
}

uint64_t sub_241244A8C(uint64_t a1)
{
  Information = type metadata accessor for AssetLoader.LoadInformation(0);
  (*(*(Information - 8) + 8))(a1, Information);
  return a1;
}

uint64_t sub_241244B3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24124647C;

  return sub_241241874(a1, v4, v5, v6);
}

unint64_t sub_241244BF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538138, &qword_241367640);
    v3 = sub_24135483C();
    v4 = a1 + 32;

    while (1)
    {
      sub_241246210(v4, v13, &unk_27E538730, &unk_24136A550);
      result = sub_2412FD8C4(v13);
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
      result = sub_241245AA4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_241244D2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538A70, &qword_241365DF0);
    v3 = sub_24135483C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2412FDA14(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_241244E30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538140, &qword_241365E50);
    v3 = sub_24135483C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2412FDA14(v5, v6);
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

uint64_t dispatch thunk of ARQLRenderer.snapshot(file:iosurface:contentSize:forceUseLegacySceneImportPipeline:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v16 = (*(*v5 + 496) + **(*v5 + 496));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_2412450EC;
  v13.n128_f64[0] = a4;
  v14.n128_f64[0] = a5;

  return v16(a1, a2, a3, v13, v14);
}

uint64_t sub_2412450EC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_2412451E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5388E0, &qword_2413673E0);
    v3 = sub_24135483C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2412FDA14(v5, v6);
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

unint64_t sub_2412452E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5380E8, &qword_241365E00);
    v3 = sub_24135483C();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_2412FD968(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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

id sub_2412453DC(void *a1, void *a2, double a3, double a4)
{
  result = [objc_allocWithZone(MEMORY[0x277CD7058]) init];
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = result;
  result = [result setWidth_];
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (a4 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (a4 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  [v10 setHeight_];
  [v10 setPixelFormat_];
  [v10 setSampleCount_];
  [v10 setUsage_];
  v24[3] = sub_241246158(0, &qword_27E5380E0, 0x277CD2930);
  v24[0] = a2;
  sub_2412461A0(v24, &v22);
  type metadata accessor for IOSurfaceRef(0);
  v11 = a2;
  swift_dynamicCast();
  v12 = [a1 newTextureWithDescriptor:v10 iosurface:v21 plane:0];
  if (v12)
  {
  }

  else
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_2413545EC();

    v22 = 0xD000000000000020;
    v23 = 0x800000024135DBB0;
    v13 = sub_241353F7C();
    MEMORY[0x245CE20D0](v13);

    MEMORY[0x245CE20D0](8236, 0xE200000000000000);
    v14 = sub_241353F7C();
    MEMORY[0x245CE20D0](v14);

    v15 = MEMORY[0x245CE20D0](41, 0xE100000000000000);
    v16 = v22;
    v17 = v23;
    sub_2412460C0(v15, v18, v19);
    swift_allocError();
    *v20 = v16;
    *(v20 + 8) = v17;
    *(v20 + 16) = 0;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_0(v24);
  return v12;
}

unint64_t sub_24124569C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538128, &qword_241365E48);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538130, &unk_241366CE0);
    v7 = sub_24135483C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_241246210(v9, v5, &qword_27E538128, &qword_241365E48);
      result = sub_2412FDA8C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24135152C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
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

unint64_t sub_241245884(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538A90, &qword_241365E30);
    v3 = sub_24135483C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_2412FDB24(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
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

unint64_t sub_241245974(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5388C0, &qword_2413673C0);
    v3 = sub_24135483C();
    v4 = a1 + 32;

    while (1)
    {
      sub_241246210(v4, &v13, &unk_27E538A20, &qword_241368980);
      v5 = v13;
      v6 = v14;
      result = sub_2412FDA14(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_241245AA4(&v15, (v3[7] + 32 * result));
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

_OWORD *sub_241245AA4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_241245AB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5380D8, &qword_241365DF8);
    v3 = sub_24135483C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2412FDA14(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

unint64_t sub_241245BB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538100, &qword_241365E18);
    v3 = sub_24135483C();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2412FDA14(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
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

unint64_t sub_241245CB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538108, &qword_241365E20);
    v3 = sub_24135483C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2412FDA14(v5, v6);
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

unint64_t sub_241245DB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538118, &qword_241365E38);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538120, &qword_241365E40);
    v7 = sub_24135483C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_241246210(v9, v5, &qword_27E538118, &qword_241365E38);
      result = sub_2412FDA8C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_24135152C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
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

unint64_t sub_241245F98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5380C8, &qword_241365DE0);
    v3 = sub_24135483C();
    v4 = a1 + 32;

    while (1)
    {
      sub_241246210(v4, v11, &qword_27E5380D0, &qword_241365DE8);
      v5 = v11[0];
      result = sub_2412FDD88(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_241245AA4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_2412460C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E53A110;
  if (!qword_27E53A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E53A110);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_241246158(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2412461A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2412461FC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_241246210(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_241246278(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double simd_matrix4x4(float32x4_t a1)
{
  _S3 = a1.i32[1];
  _S5 = a1.i32[2];
  __asm { FMLS            S2, S5, V0.S[2] }

  _S7 = a1.i32[3];
  __asm { FMLA            S2, S7, V0.S[3] }

  v10 = vmuls_lane_f32(a1.f32[2], a1, 3);
  LODWORD(v11) = _S2;
  *(&v11 + 1) = (v10 + (a1.f32[0] * a1.f32[1])) + (v10 + (a1.f32[0] * a1.f32[1]));
  __asm
  {
    FMLA            S6, S3, V0.S[1]
    FMLA            S6, S7, V0.S[3]
    FMLA            S16, S5, V0.S[1]
    FMLA            S6, S5, V0.S[2]
    FMLS            S5, S3, V0.S[1]
  }

  return v11;
}

uint64_t sub_241246390(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538148, &qword_241365E58);

  return sub_24124206C(a1);
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

double sub_2412464F8()
{
  v1 = v0;
  v2 = sub_241352B6C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241352C5C();
  sub_2413518AC();
  sub_24124AED4();
  sub_24135403C();
  sub_24135406C();
  if (v13[4] == v13[0])
  {
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v7 = sub_24135408C();

    v7(v13, 0);
    (*(v3 + 8))(v5, v2);
    sub_24135189C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538AC0, &unk_241367600);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241365E60;
    v12 = *(v1 + OBJC_IVAR____TtC11AssetViewer16EntityController_initialAABB);
    REAABBCenter();
    v9 = v12.n128_u32[2];
    HIDWORD(v10) = v12.n128_u32[1];
    *(inited + 32) = v10;
    *(inited + 40) = v9;
    sub_241314E58(inited);
    v12 = v11;
    swift_setDeallocating();
    sub_24135190C();
  }

  return result;
}

float32x2_t sub_24124674C()
{
  sub_241352C5C();
  if (sub_24135188C())
  {

    sub_2413519BC();
    sub_2412AC428(v2, v1, v0);
    v4 = vmulq_f32(v3, v3);
    *&v5 = v4.f32[2] + vaddv_f32(*v4.f32);
    *v4.f32 = vrsqrte_f32(v5);
    *v4.f32 = vmul_f32(*v4.f32, vrsqrts_f32(v5, vmul_f32(*v4.f32, *v4.f32)));
    v12 = vmulq_n_f32(v3, vmul_f32(*v4.f32, vrsqrts_f32(v5, vmul_f32(*v4.f32, *v4.f32))).f32[0]).u64[0];
    sub_24135196C();
    v11 = v6;
    sub_24135196C();
    v8 = vsubq_f32(v11, v7);
    v9 = vmulq_f32(v8, v8);
    return vmul_n_f32(v12, sqrtf(v9.f32[2] + vaddv_f32(*v9.f32)));
  }

  else
  {
    if (qword_27E537C38 != -1)
    {
      swift_once();
    }

    return xmmword_27E541810;
  }
}

double sub_241246C60()
{
  v1 = sub_2413517DC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC11AssetViewer16EntityController_shouldUseTightBoundsSPI) == 1)
  {
    sub_241352E1C();
    v18 = v6;
    v19 = v5;
    v17 = v7;
    sub_241352C5C();
    sub_24135195C();
    *&v11 = sub_2412AC428(v10, v9, v8);
    v18 = v12;
    v19 = v11;
    v16 = v14;
    v17 = v13;
    sub_24135296C();
    sub_2413516FC();
    (*(v2 + 8))(v4, v1);
    REEntityComputeTightMeshBounds();
  }

  else
  {
    sub_241352C5C();
    sub_24135191C();
  }

  return result;
}

id sub_241246DFC()
{
  sub_24124954C();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EntityController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EntityController(uint64_t a1)
{
  result = qword_27E538258;
  if (!qword_27E538258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_241247088(id a1, float a2, float a3)
{
  v4 = v3;
  v7 = *&v3[OBJC_IVAR____TtC11AssetViewer16EntityController_type];
  if (v7)
  {
    [v4 assetScale];
    v9 = fminf(1.0 / (v8 + 0.001), 1.0);
  }

  else
  {
    v9 = 1.0;
  }

  v10 = v9 * a2;
  v11 = v9 * a3;
  v12 = v10 + *&v4[OBJC_IVAR____TtC11AssetViewer16EntityController_currentTurntableYaw];
  *&v4[OBJC_IVAR____TtC11AssetViewer16EntityController_currentTurntableYaw] = v12;
  v13 = v11 + *&v4[OBJC_IVAR____TtC11AssetViewer16EntityController_currentTurntablePitch];
  *&v4[OBJC_IVAR____TtC11AssetViewer16EntityController_currentTurntablePitch] = v13;
  if (v7)
  {

    sub_241259608(1, v12, v13);
  }

  else
  {
    if (v4[OBJC_IVAR____TtC11AssetViewer16EntityController_planeType + 48])
    {
      sub_2412473A8(v10, v11);
    }

    else
    {
      REAABBCenter();
      LODWORD(v14) = 0;
      HIDWORD(v14) = HIDWORD(v15);
      *&v15 = -v10;
      sub_241247204(v15, v14);
    }

    v16 = *&v4[OBJC_IVAR____TtC11AssetViewer16EntityController_planeAnimator];
    sub_241352C5C();
    sub_2413518DC();
    *(v16 + 96) = v17;
  }
}

uint64_t sub_241247204(double a1, float32x4_t a2)
{
  sub_2412FF0BC(*&a1);
  v2.n128_u32[3] = 0;
  v2.n128_u64[0] = vsubq_f32(0, a2).u64[0];
  v2.n128_f32[2] = 0.0 - a2.f32[2];
  sub_2412FEE00(v2);
  sub_2412FEE00(a2);
  sub_241352C5C();
  sub_24135193C();

  return sub_2413518CC();
}

uint64_t sub_2412473A8(float a1, float a2)
{
  sub_241352C5C();
  sub_24135193C();
  sub_24135193C();
  sub_24135193C();
  vmulq_n_f32(xmmword_241365E70, __sincosf_stret(a2 * 0.5).__sinval);
  sub_2413518DC();
  sub_24135192C();
  __sincosf_stret(a1 * 0.5);
  sub_2413518DC();

  return sub_24135192C();
}

void sub_241247664(void *a1)
{
  v2 = v1;
  v4 = v2 + OBJC_IVAR____TtC11AssetViewer16EntityController_lastBoundingBox;
  v64 = *(v2 + OBJC_IVAR____TtC11AssetViewer16EntityController_lastBoundingBox);
  v5 = sub_24135294C();
  v58 = v6;
  v59 = v5;
  v8 = v7;
  v9 = sub_24135294C();
  v11 = v10;
  LOBYTE(v13) = v12;
  sub_24135175C();
  v14 = sub_24135294C();
  v60 = v15;
  v61 = v14;
  v17 = v16;
  sub_24135175C();
  v18 = sub_24135294C();
  v62 = v19;
  v63 = v18;
  v21 = v20;
  v22 = sub_24135294C();
  v24 = v22;
  v25 = v23;
  v65 = v26;
  if (v8)
  {
    v27 = MEMORY[0x277D84F90];
    if (v13)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v57 = v17;
  *&v64 = v11;
  v11 = v9;
  LOBYTE(v9) = v21;
  v28 = v23;
  v25 = v4;
  v4 = v22;
  v27 = sub_2412A167C(0, 1, 1, MEMORY[0x277D84F90]);
  v30 = *(v27 + 2);
  v29 = *(v27 + 3);
  v24 = v30 + 1;
  if (v30 >= v29 >> 1)
  {
LABEL_44:
    v27 = sub_2412A167C((v29 > 1), v24, 1, v27);
  }

  *(v27 + 2) = v24;
  v31 = &v27[16 * v30];
  *(v31 + 4) = v59;
  *(v31 + 5) = v58;
  v24 = v4;
  v4 = v25;
  v25 = v28;
  v21 = v9;
  v9 = v11;
  v11 = v64;
  v17 = v57;
  if ((v13 & 1) == 0)
  {
LABEL_6:
    *&v64 = v4;
    v32 = v25;
    v33 = v24;
    v34 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_2412A167C(0, *(v27 + 2) + 1, 1, v27);
    }

    v36 = *(v27 + 2);
    v35 = *(v27 + 3);
    v13 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      v27 = sub_2412A167C((v35 > 1), v36 + 1, 1, v27);
    }

    *(v27 + 2) = v13;
    v37 = &v27[16 * v36];
    *(v37 + 4) = v9;
    *(v37 + 5) = v11;
    v17 = v34;
    v24 = v33;
    v25 = v32;
    v4 = v64;
  }

LABEL_11:
  if (v17)
  {
    if (v21)
    {
      goto LABEL_13;
    }

LABEL_20:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_2412A167C(0, *(v27 + 2) + 1, 1, v27);
    }

    v42 = *(v27 + 2);
    v41 = *(v27 + 3);
    if (v42 >= v41 >> 1)
    {
      v27 = sub_2412A167C((v41 > 1), v42 + 1, 1, v27);
    }

    *(v27 + 2) = v42 + 1;
    v43 = &v27[16 * v42];
    *(v43 + 4) = v63;
    *(v43 + 5) = v62;
    if (v65)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  LOBYTE(v13) = v21;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_2412A167C(0, *(v27 + 2) + 1, 1, v27);
  }

  v39 = *(v27 + 2);
  v38 = *(v27 + 3);
  if (v39 >= v38 >> 1)
  {
    v27 = sub_2412A167C((v38 > 1), v39 + 1, 1, v27);
  }

  *(v27 + 2) = v39 + 1;
  v40 = &v27[16 * v39];
  *(v40 + 4) = v61;
  *(v40 + 5) = v60;
  if ((v13 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_13:
  if ((v65 & 1) == 0)
  {
LABEL_25:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_2412A167C(0, *(v27 + 2) + 1, 1, v27);
    }

    v45 = *(v27 + 2);
    v44 = *(v27 + 3);
    if (v45 >= v44 >> 1)
    {
      v27 = sub_2412A167C((v44 > 1), v45 + 1, 1, v27);
    }

    *(v27 + 2) = v45 + 1;
    v46 = &v27[16 * v45];
    *(v46 + 4) = v24;
    *(v46 + 5) = v25;
  }

LABEL_30:
  [a1 bounds];
  v67 = CGRectInset(v66, 5.0, 5.0);
  x = v67.origin.x;
  y = v67.origin.y;
  width = v67.size.width;
  height = v67.size.height;
  v29 = (v27 + 40);
  v30 = -*(v27 + 2);
  v28 = -1;
  while (v30 + v28 != -1)
  {
    if (++v28 >= *(v27 + 2))
    {
      __break(1u);
      goto LABEL_44;
    }

    v13 = v29 + 16;
    v68.origin.x = x;
    v68.origin.y = y;
    v68.size.width = width;
    v68.size.height = height;
    v51 = CGRectContainsPoint(v68, *(v29 - 8));
    v29 = v13;
    if (v51)
    {

      return;
    }
  }

  sub_24135292C();
  v52 = sub_2413524BC();

  if (v52)
  {
    sub_241352C5C();
    sub_24135197C();

    if (sub_24135177C())
    {
      if (qword_27E537CD0 != -1)
      {
        swift_once();
      }

      v53 = sub_241352FFC();
      __swift_project_value_buffer(v53, qword_27E53A538);
      v54 = sub_241352FDC();
      v55 = sub_2413540DC();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_241215000, v54, v55, "Camera inside bounding box", v56, 2u);
        MEMORY[0x245CE4870](v56, -1, -1);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_241247C18(char a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v10 = sub_241352DDC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + OBJC_IVAR____TtC11AssetViewer16EntityController_type);
  if (v14)
  {
    *(v4 + OBJC_IVAR____TtC11AssetViewer16EntityController_currentTurntableYaw) = 0;
    v15 = objc_opt_self();

    [v15 floatForKey_];
    *(v5 + OBJC_IVAR____TtC11AssetViewer16EntityController_currentTurntablePitch) = v16;
    if (a1)
    {
      v17 = *(v5 + OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer);
      if (v17)
      {
        v18 = [v17 feedbackGenerator];
        v19 = [v18 snapToScaleFeedbackGenerator];

        if (!v19)
        {
          __break(1u);
          return;
        }

        [v19 prepare];
        swift_unknownObjectRelease();
      }
    }

    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    *(v21 + 32) = a1 & 1;
    *(v21 + 40) = v20;
    v22 = v14[3];
    v58 = v14[2];
    v59 = v22;
    v23 = v14[5];
    v61 = v14[4];
    v62 = v23;
    v24 = a3;
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    v27 = v59;
    *(v26 + 24) = v58;
    *(v26 + 40) = v27;
    v28 = v62;
    *(v26 + 56) = v61;
    *(v26 + 72) = v28;
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = sub_24124AEA4;
    *(v30 + 24) = v21;
    *(v30 + 32) = v29;
    v31 = v62;
    *(v30 + 40) = v61;
    *(v30 + 56) = v31;
    sub_24124AD38(a2, v24);

    sub_2412FCD6C(sub_24124AEB4, v26, sub_24124AEC4, v30, a4);
  }

  else
  {
    v32 = a3;
    v33 = *(v4 + OBJC_IVAR____TtC11AssetViewer16EntityController_levitationHeight);
    if (v33 >= 0.00000011921)
    {
      *(v4 + OBJC_IVAR____TtC11AssetViewer16EntityController_savedLevitationHeight) = v33;
    }

    v34 = *(v4 + OBJC_IVAR____TtC11AssetViewer16EntityController_transformToCameraInObjectMode);
    v56 = *(v4 + OBJC_IVAR____TtC11AssetViewer16EntityController_transformToCameraInObjectMode + 16);
    v57 = v34;
    v55 = *(v4 + OBJC_IVAR____TtC11AssetViewer16EntityController_transformToCameraInObjectMode + 32);
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    v54 = v35;
    *(v36 + 24) = v33;
    *(v36 + 28) = 0;
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = 0;
    *(v38 + 32) = a2;
    *(v38 + 40) = v32;
    v39 = v32;
    v40 = *(v5 + OBJC_IVAR____TtC11AssetViewer16EntityController_entity);
    sub_24124AD38(a2, v39);
    sub_241352C5C();

    sub_2413519BC();
    sub_241352E2C();
    type metadata accessor for RESRT(0);
    sub_241352DCC();
    (*(v11 + 8))(v13, v10);
    v53 = v58;
    v52 = v59;
    v51 = v60;
    v41 = swift_allocObject();
    v42 = v51;
    v43 = v52;
    *(v41 + 16) = v51;
    *(v41 + 32) = v43;
    v45 = v55;
    v44 = v56;
    *(v41 + 48) = v55;
    *(v41 + 64) = v44;
    *(v41 + 80) = v40;
    *(v41 + 96) = v53;
    *(v41 + 112) = v43;
    v46 = v57;
    *(v41 + 128) = v42;
    *(v41 + 144) = v46;
    *(v41 + 160) = v44;
    *(v41 + 176) = v45;
    *(v41 + 192) = sub_24124AD64;
    *(v41 + 200) = v36;
    v47 = swift_allocObject();
    *(v47 + 16) = v40;
    v48 = v56;
    *(v47 + 32) = v57;
    *(v47 + 48) = v48;
    *(v47 + 64) = v55;
    *(v47 + 80) = sub_24124ADCC;
    *(v47 + 88) = v38;
    swift_retain_n();

    v49 = sub_2412FCD6C(sub_24124B1EC, v41, sub_24124B1F8, v47, a4);

    v50 = v5 + OBJC_IVAR____TtC11AssetViewer16EntityController_animationID;
    *v50 = v49;
    *(v50 + 8) = 0;
  }
}

void sub_241248270(void (*a1)(void), uint64_t a2, char a3, uint64_t a4)
{
  if (a1)
  {
    a1();
  }

  if (a3)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = *(Strong + OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer);
      v7 = Strong;
      v8 = v6;

      if (v6)
      {
        v9 = [v8 feedbackGenerator];

        v10 = [v9 snapToScaleFeedbackGenerator];
        if (v10)
        {
          [v10 fire];
          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

void sub_241248358()
{
  v1 = v0;
  v2 = sub_241352DDC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + OBJC_IVAR____TtC11AssetViewer16EntityController_type))
  {
    v6 = *(v0 + OBJC_IVAR____TtC11AssetViewer16EntityController_entity);
    sub_241352C5C();
    sub_2413519BC();
    sub_241352E2C();
    type metadata accessor for RESRT(0);
    sub_241352DCC();
    v7 = *(v3 + 8);
    v7(v5, v2);
    v27 = v31;
    v28 = v30;
    if (qword_27E537C30 != -1)
    {
      swift_once();
    }

    v26 = xmmword_27E541800;
    *(v0 + OBJC_IVAR____TtC11AssetViewer16EntityController_transformToWorldInARMode) = xmmword_27E541800;
    v8 = *(v0 + OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer);
    if (v8)
    {
      v9 = [v8 feedbackGenerator];
      v10 = [v9 snapToScaleFeedbackGenerator];

      if (!v10)
      {
        __break(1u);
        return;
      }

      [v10 prepare];
      swift_unknownObjectRelease();
    }

    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_2413519BC();
    sub_241352E2C();
    sub_241352DCC();
    v7(v5, v2);
    v24 = v30;
    v25 = v29;
    v23 = v31;
    v12 = swift_allocObject();
    v14 = v23;
    v13 = v24;
    *(v12 + 16) = v23;
    *(v12 + 32) = v13;
    v15 = v27;
    v16 = v28;
    *(v12 + 48) = v27;
    *(v12 + 64) = v16;
    *(v12 + 80) = v6;
    v17 = v26;
    *(v12 + 96) = v25;
    *(v12 + 112) = v13;
    *(v12 + 128) = v14;
    *(v12 + 144) = v17;
    *(v12 + 160) = v16;
    *(v12 + 176) = v15;
    *(v12 + 192) = 0;
    *(v12 + 200) = 0;
    v18 = swift_allocObject();
    *(v18 + 16) = v6;
    v19 = v27;
    v20 = v28;
    *(v18 + 32) = v26;
    *(v18 + 48) = v20;
    *(v18 + 64) = v19;
    *(v18 + 80) = sub_24124AD5C;
    *(v18 + 88) = v11;
    swift_retain_n();

    v21 = sub_2412FCD6C(sub_24124B1EC, v12, sub_24124B1F8, v18, 0.35);

    v22 = v1 + OBJC_IVAR____TtC11AssetViewer16EntityController_animationID;
    *v22 = v21;
    *(v22 + 8) = 0;
  }
}

void sub_2412486D8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer);
    v3 = Strong;
    v4 = v2;

    if (v2)
    {
      v5 = [v4 feedbackGenerator];

      v6 = [v5 snapToScaleFeedbackGenerator];
      if (v6)
      {
        [v6 fire];
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_2412487A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v29 = sub_241352DDC();
  v6 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + OBJC_IVAR____TtC11AssetViewer16EntityController_levitationHeight);
  v10 = *(v3 + OBJC_IVAR____TtC11AssetViewer16EntityController_savedLevitationHeight);
  v11 = *(v3 + OBJC_IVAR____TtC11AssetViewer16EntityController_transformToWorldInARMode);
  v31 = *(v3 + OBJC_IVAR____TtC11AssetViewer16EntityController_transformToWorldInARMode + 16);
  v32 = v11;
  v30 = *(v3 + OBJC_IVAR____TtC11AssetViewer16EntityController_transformToWorldInARMode + 32);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v9;
  *(v13 + 28) = v10;
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v10;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  v16 = *(v3 + OBJC_IVAR____TtC11AssetViewer16EntityController_entity);

  sub_24124AD38(a1, a2);
  sub_241352C5C();
  sub_2413519BC();
  sub_241352E2C();
  type metadata accessor for RESRT(0);
  sub_241352DCC();
  (*(v6 + 8))(v8, v29);
  v28 = v34;
  v29 = v33;
  v27 = v35;
  v17 = swift_allocObject();
  v19 = v27;
  v18 = v28;
  *(v17 + 16) = v27;
  *(v17 + 32) = v18;
  v21 = v30;
  v20 = v31;
  *(v17 + 48) = v30;
  *(v17 + 64) = v20;
  *(v17 + 80) = v16;
  *(v17 + 96) = v29;
  *(v17 + 112) = v18;
  v22 = v32;
  *(v17 + 128) = v19;
  *(v17 + 144) = v22;
  *(v17 + 160) = v20;
  *(v17 + 176) = v21;
  *(v17 + 192) = sub_24124B1F4;
  *(v17 + 200) = v13;
  v23 = swift_allocObject();
  *(v23 + 16) = v16;
  v24 = v31;
  *(v23 + 32) = v32;
  *(v23 + 48) = v24;
  *(v23 + 64) = v30;
  *(v23 + 80) = sub_24124B1FC;
  *(v23 + 88) = v15;
  swift_retain_n();

  v25 = sub_2412FCD6C(sub_24124AD48, v17, sub_24124AD4C, v23, 0.35);

  v26 = v3 + OBJC_IVAR____TtC11AssetViewer16EntityController_animationID;
  *v26 = v25;
  *(v26 + 8) = 0;
}

void sub_241248B04(uint64_t a1, float a2, float a3, float a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *&Strong[OBJC_IVAR____TtC11AssetViewer16EntityController_levitationHeight] = a3 + (a2 * (a4 - a3));
  }
}

void sub_241248B80(uint64_t a1, void (*a2)(void), float a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *&Strong[OBJC_IVAR____TtC11AssetViewer16EntityController_levitationHeight] = a3;
  }

  if (a2)
  {
    a2();
  }
}

void sub_241248C00()
{
  v1 = sub_2413517DC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24135296C();
  sub_2413516FC();
  (*(v2 + 8))(v4, v1);
  RECustomMatrixCameraComponentGetComponentType();
  if (REEntityGetComponentByClass())
  {
    RECustomMatrixCameraComponentGetProjectionMatrix();
    v6 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_241365E70, v5.f32[0]), xmmword_241364640, *v5.f32, 1), xmmword_241365E80, v5, 2), xmmword_241365E90, v5, 3);
    v8 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_241365E70, v7.f32[0]), xmmword_241364640, *v7.f32, 1), xmmword_241365E80, v7, 2), xmmword_241365E90, v7, 3);
    v10 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_241365E70, v9.f32[0]), xmmword_241364640, *v9.f32, 1), xmmword_241365E80, v9, 2), xmmword_241365E90, v9, 3);
    v12 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_241365E70, v11.f32[0]), xmmword_241364640, *v11.f32, 1), xmmword_241365E80, v11, 2), xmmword_241365E90, v11, 3);
    v13 = (v0 + OBJC_IVAR____TtC11AssetViewer16EntityController_savedViewToProj);
    v22[2] = v8;
    v22[3] = v6;
    *v13 = v6;
    v13[1] = v8;
    v22[0] = v12;
    v22[1] = v10;
    v13[2] = v10;
    v13[3] = v12;
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v14 = sub_241352FFC();
    __swift_project_value_buffer(v14, qword_27E53A538);
    v15 = sub_241352FDC();
    v16 = sub_2413540DC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315138;
      v19 = sub_2413540EC();
      v21 = sub_2412DDC2C(v19, v20, &v23);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_241215000, v15, v16, "Saved flippedViewToProj: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x245CE4870](v18, -1, -1);
      MEMORY[0x245CE4870](v17, -1, -1);
    }
  }
}

uint64_t sub_241248E98(uint64_t a1, float a2, float a3, double a4, double a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = sub_2413517DC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24135296C();
  sub_2413516FC();
  (*(v15 + 8))(v17, v14);
  RECustomMatrixCameraComponentGetComponentType();
  result = REEntityGetComponentByClass();
  if (result)
  {
    if (a8)
    {
      *&v19 = (a2 * (a3 + -1.0)) + 1.0;
      v26[4] = v19;
      v20 = a8;
      v21 = [v20 camera];
      [v21 projectionMatrixForOrientation:a7 viewportSize:a4 zNear:a5 zFar:{0.01, 1000.0}];
      v26[2] = v23;
      v26[3] = v22;
      v26[0] = v25;
      v26[1] = v24;
    }

    return RECustomMatrixCameraComponentSetProjectionFromMatrix();
  }

  return result;
}

uint64_t sub_2412490D4(int a1, id a2, int a3, uint64_t a4, uint64_t (*a5)(uint64_t, __n128), int a6, int a7, int a8, double a9, float a10, float32x4_t a11, float32_t a12, float32x4_t a13, float32x4_t a14, float32_t a15, float32x4_t a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 a22)
{
  *&a9 = a10;
  [a2 _solveForInput_];
  v24.n128_f32[0] = v23;
  v28 = v24;
  simd_slerp(a13, a16, v23);
  REComposeMatrix();
  sub_241352C5C();
  result = sub_2413518CC();
  if (a5)
  {
    return a5(result, v28);
  }

  return result;
}

uint64_t sub_2412491E0(double a1, __n128 a2, float32x4_t a3, float32x4_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  sub_2412AC428(a4, a3, a2);
  sub_241352C5C();
  result = sub_2413518CC();
  if (a7)
  {
    return a7(result);
  }

  return result;
}

float32x2_t sub_241249270()
{
  sub_241352C5C();
  sub_24135196C();
  v4 = v2 - *(v0 + OBJC_IVAR____TtC11AssetViewer16EntityController_levitationHeight);
  v5 = v1.i32[0];
  v1.f32[1] = v4;
  v6 = v1;
  if ([objc_opt_self() useSceneReconstructionMeshForOrientation])
  {
    return v6;
  }

  else
  {
    result = v6;
    if ((*(v0 + OBJC_IVAR____TtC11AssetViewer16EntityController_planeType + 48) & 1) == 0)
    {
      return vsub_f32(__PAIR64__(LODWORD(v4), v5), sub_24124674C());
    }
  }

  return result;
}

id sub_241249344(void *a1)
{
  [a1 worldTransform];
  v3 = objc_opt_self();
  if (([v3 useSceneReconstructionMeshForOrientation] & 1) == 0 && (*(v1 + OBJC_IVAR____TtC11AssetViewer16EntityController_planeType + 48) & 1) == 0)
  {
    sub_24124674C();
  }

  sub_241352C5C();
  sub_24135190C();
  result = [v3 useSceneReconstructionMeshForOrientation];
  if (result)
  {
    [a1 worldTransform];
    v6 = vmulq_f32(v5, v5);
    *&v7 = v6.f32[2] + vaddv_f32(*v6.f32);
    *v6.f32 = vrsqrte_f32(v7);
    *v6.f32 = vmul_f32(*v6.f32, vrsqrts_f32(v7, vmul_f32(*v6.f32, *v6.f32)));
    v14 = vmulq_n_f32(v5, vmul_f32(*v6.f32, vrsqrts_f32(v7, vmul_f32(*v6.f32, *v6.f32))).f32[0]);
    sub_2413519BC();
    sub_2412AC428(v10, v9, v8);
    v12 = vmulq_f32(v11, v11);
    *&v13 = v12.f32[2] + vaddv_f32(*v12.f32);
    *v12.f32 = vrsqrte_f32(v13);
    *v12.f32 = vmul_f32(*v12.f32, vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32)));
    simd_quaternion(vmulq_n_f32(v11, vmul_f32(*v12.f32, vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32))).f32[0]), v14);
    sub_2413518EC();
    return sub_2413518FC();
  }

  return result;
}

void sub_24124954C()
{
  v1 = OBJC_IVAR____TtC11AssetViewer16EntityController_trackedRaycast;
  [*&v0[OBJC_IVAR____TtC11AssetViewer16EntityController_trackedRaycast] stopTracking];
  v2 = *&v0[v1];
  *&v0[v1] = 0;
  [v2 stopTracking];

  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v3 = sub_241352FFC();
  __swift_project_value_buffer(v3, qword_27E53A538);
  v4 = v0;
  v5 = sub_241352FDC();
  v6 = sub_2413540DC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&dword_241215000, v5, v6, "stopTrackedRaycast on %@", v7, 0xCu);
    sub_241246278(v8, &unk_27E539B90, &unk_2413660D0);
    MEMORY[0x245CE4870](v8, -1, -1);
    MEMORY[0x245CE4870](v7, -1, -1);
  }

  if ([objc_opt_self() wantsTrackedRaycastStatus])
  {
    v10 = [objc_opt_self() defaultCenter];
    if (qword_27E537C78 != -1)
    {
      swift_once();
    }

    v11 = qword_27E5418D8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538720, &unk_2413660C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241365EA0;
    sub_24135456C();
    *(inited + 96) = MEMORY[0x277D839B0];
    *(inited + 72) = 0;
    sub_241244BF0(inited);
    swift_setDeallocating();
    sub_241246278(inited + 32, &unk_27E538730, &unk_24136A550);
    v13 = sub_241353B4C();

    [v10 postNotificationName:v11 object:0 userInfo:v13];
  }
}

void sub_24124985C(uint64_t a1)
{
  sub_2412499C8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2412499C8(uint64_t a1)
{
  if (!qword_280DA2A50)
  {
    sub_24135152C();
    v1 = sub_24135432C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DA2A50);
    }
  }
}

double sub_241249AA0()
{
  [objc_opt_self() useSceneReconstructionMeshForOrientation];
  sub_241352C5C();
  sub_24135196C();
  return result;
}

double sub_241249B64()
{
  v1 = *&v0[OBJC_IVAR____TtC11AssetViewer16EntityController_projectPointHandler];
  v2 = 0.0;
  if (v1)
  {
    v3 = *&v0[OBJC_IVAR____TtC11AssetViewer16EntityController_projectPointHandler + 8];

    v4 = v1([v0 assetWorldPosition]);
    v6 = v5;
    v8 = v7;
    sub_2412186FC(v1, v3);
    if ((v8 & 1) == 0)
    {
      *&v9.f64[0] = v4;
      v9.f64[1] = v6;
      return COERCE_DOUBLE(vcvt_f32_f64(v9));
    }
  }

  return v2;
}

float sub_241249C9C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AssetViewer16EntityController_type);
  if (v1)
  {
    return fmaxf(*(v1 + 60), 0.00001) / fmaxf(*(v1 + 52), 0.00001);
  }

  sub_241352C5C();
  sub_24135194C();
  return v3;
}

uint64_t initializeBufferWithCopyOfBuffer for EntityController.PlaneType(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy49_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for EntityController.PlaneType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EntityController.PlaneType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
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

  *(result + 49) = v3;
  return result;
}

uint64_t sub_241249E18(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_241249E34(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    *(result + 48) = 1;
  }

  else
  {
    *(result + 48) = 0;
  }

  return result;
}

uint64_t sub_241249E84(uint64_t *a1, unsigned int a2)
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

uint64_t sub_241249ED4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_241249F28(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_241249F40(void *result, int a2)
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

void sub_241249F70(__n128 a1)
{
  if (*(v1 + OBJC_IVAR____TtC11AssetViewer16EntityController_type))
  {

    sub_24125954C(1, a1);
  }

  else if (*(v1 + OBJC_IVAR____TtC11AssetViewer16EntityController_planeType + 48))
  {
    sub_241352C5C();
    sub_24135199C();
  }

  else
  {
    sub_241352C5C();
    sub_24135196C();
    sub_24135199C();
    sub_24135196C();
    sub_24135196C();
    sub_24135190C();
  }
}

id sub_24124A108(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, char a6)
{
  v7 = v6;
  v14 = sub_241352DDC();
  v81 = *(v14 - 8);
  v82 = v14;
  MEMORY[0x28223BE20](v14);
  v80 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v7[OBJC_IVAR____TtC11AssetViewer16EntityController_animationID];
  *v16 = 0;
  v16[8] = 1;
  *&v7[OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer] = 0;
  *&v7[OBJC_IVAR____TtC11AssetViewer16EntityController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v7[OBJC_IVAR____TtC11AssetViewer16EntityController_entityWorldPosistionRefreshGuard] = 5;
  *&v7[OBJC_IVAR____TtC11AssetViewer16EntityController_lastARFrameTimestampForMovement] = 0xBFF0000000000000;
  __asm { FMOV            V0.2S, #-1.0 }

  *&v7[OBJC_IVAR____TtC11AssetViewer16EntityController_lastScreenPointForMovement] = _D0;
  v22 = &v7[OBJC_IVAR____TtC11AssetViewer16EntityController_lastBoundingBox];
  sub_24135178C();
  *v22 = v23;
  v22[1] = v24;
  *&v7[OBJC_IVAR____TtC11AssetViewer16EntityController_debugVisualizationEntity] = 0;
  *&v7[OBJC_IVAR____TtC11AssetViewer16EntityController_debugBoundingBoxEntities] = MEMORY[0x277D84F90];
  *&v7[OBJC_IVAR____TtC11AssetViewer16EntityController_currentTurntableYaw] = 0;
  v25 = OBJC_IVAR____TtC11AssetViewer16EntityController_currentTurntablePitch;
  [objc_opt_self() floatForKey_];
  *&v7[v25] = v26;
  *&v7[OBJC_IVAR____TtC11AssetViewer16EntityController_levitationHeight] = 0;
  *&v7[OBJC_IVAR____TtC11AssetViewer16EntityController_savedLevitationHeight] = 0;
  v27 = &v7[OBJC_IVAR____TtC11AssetViewer16EntityController_transformToCameraInObjectMode];
  if (qword_27E537C48 != -1)
  {
    swift_once();
  }

  v28 = xmmword_27E541860;
  v29 = *algn_27E541870;
  v30 = xmmword_27E541880;
  *v27 = xmmword_27E541860;
  v27[1] = v29;
  v27[2] = v30;
  v31 = &v7[OBJC_IVAR____TtC11AssetViewer16EntityController_transformToWorldInARMode];
  *v31 = v28;
  v31[1] = v29;
  v31[2] = v30;
  v32 = &v7[OBJC_IVAR____TtC11AssetViewer16EntityController_projectPointHandler];
  *v32 = 0;
  v32[1] = 0;
  v33 = &v7[OBJC_IVAR____TtC11AssetViewer16EntityController_shouldDisableGesturesHandler];
  *v33 = 0;
  v33[1] = 0;
  v34 = &v7[OBJC_IVAR____TtC11AssetViewer16EntityController_planeType];
  *v34 = 0u;
  *(v34 + 1) = 0u;
  *(v34 + 2) = 0u;
  v34[48] = 1;
  *&v7[OBJC_IVAR____TtC11AssetViewer16EntityController_trackedRaycast] = 0;
  *&v7[OBJC_IVAR____TtC11AssetViewer16EntityController_groundPlaneEntity] = 0;
  v35 = &v7[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState];
  *v35 = 0;
  v35[8] = 0;
  *(v35 + 2) = 4;
  *(v35 + 24) = 0u;
  *(v35 + 40) = 0u;
  *(v35 + 56) = 0u;
  *(v35 + 72) = 0u;
  *(v35 + 81) = 0u;
  v36 = OBJC_IVAR____TtC11AssetViewer16EntityController_accessibilityAssetURL;
  v37 = sub_24135152C();
  (*(*(v37 - 8) + 56))(&v7[v36], 1, 1, v37);
  v38 = &v7[OBJC_IVAR____TtC11AssetViewer16EntityController_savedViewToProj];
  *v38 = 0u;
  v38[1] = 0u;
  v38[2] = 0u;
  v38[3] = 0u;
  v39 = &v7[OBJC_IVAR____TtC11AssetViewer16EntityController_savedInlineModelToCameraTransform];
  sub_241352E3C();
  *v39 = v40;
  v39[1] = v41;
  v39[2] = v42;
  *&v7[OBJC_IVAR____TtC11AssetViewer16EntityController_entity] = a1;
  *&v7[OBJC_IVAR____TtC11AssetViewer16EntityController_type] = a2;
  *&v7[OBJC_IVAR____TtC11AssetViewer16EntityController_animationManager] = a3;
  _s13PlaneAnimaterCMa();
  swift_allocObject();

  swift_retain_n();
  swift_retain_n();
  *&v7[OBJC_IVAR____TtC11AssetViewer16EntityController_planeAnimator] = sub_2412DE3D0(a1, a3);
  v43 = &v7[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager];
  *v43 = a4;
  v43[1] = a5;

  sub_24133AFBC(a4, a5);
  v7[OBJC_IVAR____TtC11AssetViewer16EntityController_shouldUseTightBoundsSPI] = a6 & 1;
  v44.n128_f64[0] = sub_2413102D0(a6 & 1);
  v44.n128_u32[2] = v45;
  v47.n128_u32[2] = v46;
  v48 = &v7[OBJC_IVAR____TtC11AssetViewer16EntityController_initialAABB];
  *v48 = v44;
  v48[1] = v47;
  REAABBExtents();
  *&v7[OBJC_IVAR____TtC11AssetViewer16EntityController__assetNaturalSize] = v49;
  if (a2)
  {
    v79 = v49;
    v50 = *&v7[v25];
    v51 = v48[1];
    v77 = *v48;
    v78 = v51;
    v52 = v77.n128_f32[2];
    v53 = v51.n128_f32[2];

    sub_24125913C(v50, v77.n128_f64[0], v52, v78, v53, v54);
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v55 = sub_241352FFC();
    __swift_project_value_buffer(v55, qword_27E53A538);
    v56 = v7;
    v57 = sub_241352FDC();
    v58 = sub_2413540DC();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v85 = v60;
      *v59 = 136315394;
      v78 = v48[1];
      v83.n128_u64[0] = 0x7B42424141;
      v83.n128_u64[1] = 0xE500000000000000;
      v61 = sub_241302460();
      MEMORY[0x245CE20D0](v61);

      MEMORY[0x245CE20D0](8236, 0xE200000000000000);
      v62 = sub_241302460();
      MEMORY[0x245CE20D0](v62);

      MEMORY[0x245CE20D0](125, 0xE100000000000000);
      v63 = sub_2412DDC2C(v83.n128_i64[0], v83.n128_u64[1], &v85);

      *(v59 + 4) = v63;
      *(v59 + 12) = 2080;
      v64 = *v27;
      v77 = v27[1];
      v78 = v64;
      v76 = v27[2];
      type metadata accessor for RESRT(0);
      v84 = v65;
      v66 = swift_allocObject();
      v83.n128_u64[0] = v66;
      v67 = v77;
      *(v66 + 16) = v78;
      *(v66 + 32) = v67;
      *(v66 + 48) = v76;
      v68 = v80;
      sub_241352DBC();
      __swift_destroy_boxed_opaque_existential_0(&v83);
      sub_241352DFC();
      v78 = v69;
      (*(v81 + 8))(v68, v82);
      v83 = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538B20, &qword_24136BA00);
      sub_24124A868();
      v70 = sub_2413549BC();
      v72 = sub_2412DDC2C(v70, v71, &v85);

      *(v59 + 14) = v72;
      _os_log_impl(&dword_241215000, v57, v58, "rootEntity.identityAABB = %s, setting scale %s", v59, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CE4870](v60, -1, -1);
      MEMORY[0x245CE4870](v59, -1, -1);
    }

    v49 = v79;
  }

  *&v7[OBJC_IVAR____TtC11AssetViewer16EntityController__assetScaleToFitUnitBox] = 1.0 / fmaxf(fmaxf(*&v49, *(&v49 + 2)), *(&v49 + 1));
  sub_241352C5C();
  swift_allocObject();
  v73 = sub_24135180C();
  sub_241352C1C();
  *&v7[OBJC_IVAR____TtC11AssetViewer16EntityController_verticalPlacementMarker] = v73;
  v74 = type metadata accessor for EntityController(0);
  v86.receiver = v7;
  v86.super_class = v74;
  return objc_msgSendSuper2(&v86, sel_init);
}

unint64_t sub_24124A868()
{
  result = qword_27E539BA0;
  if (!qword_27E539BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E538B20, &qword_24136BA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E539BA0);
  }

  return result;
}

double sub_24124A8CC(uint64_t a1)
{
  v22 = *(v1 + OBJC_IVAR____TtC11AssetViewer16EntityController_initialAABB + 16);
  REAABBCenter();
  v20 = v2;
  REAABBCenter();
  v21 = v3;
  sub_241352C5C();
  sub_24135194C();
  v19 = v4;
  sub_24135196C();
  v7 = *(v1 + OBJC_IVAR____TtC11AssetViewer16EntityController_projectPointHandler);
  v8 = 0.0;
  if (v7)
  {
    v9 = *(v1 + OBJC_IVAR____TtC11AssetViewer16EntityController_projectPointHandler + 8);
    v10.n128_u64[0] = vadd_f32(vmul_f32(__PAIR64__(DWORD1(v22), v20), *v19.f32), v5);
    v10.n128_f32[2] = vmuls_lane_f32(v21, v19, 2) + v6;
    v10.n128_u32[3] = 0;
    v23 = v10;

    v12 = v7(v11, v23);
    v14 = v13;
    v16 = v15;
    sub_2412186FC(v7, v9);
    if ((v16 & 1) == 0)
    {
      *&v17.f64[0] = v12;
      v17.f64[1] = v14;
      return COERCE_DOUBLE(vcvt_f32_f64(v17));
    }
  }

  return v8;
}

double simd_quaternion(float32x4_t a1, float32x4_t a2)
{
  v2 = vmulq_f32(a1, a2);
  if ((v2.f32[2] + vaddv_f32(*v2.f32)) >= 0.0)
  {
    v34 = vaddq_f32(a1, a2);
    v35 = vmulq_f32(v34, v34);
    *&v36 = v35.f32[2] + vaddv_f32(*v35.f32);
    *v35.f32 = vrsqrte_f32(v36);
    *v35.f32 = vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32)));
    v37 = vmulq_n_f32(v34, vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32))).f32[0]);
    v38 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL), vnegq_f32(a1)), v37, vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL));
    v33 = vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL).u64[0];
  }

  else
  {
    v4 = vmulq_f32(a1, a1);
    v3 = vaddv_f32(*v4.f32);
    v4.i32[1] = 0;
    *&v5 = v4.f32[2] + v3;
    v6 = vrsqrte_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v3));
    v7 = vmul_f32(v6, vrsqrts_f32(v5, vmul_f32(v6, v6)));
    v8 = vmulq_n_f32(a1, vmul_f32(v7, vrsqrts_f32(v5, vmul_f32(v7, v7))).f32[0]);
    v9 = vmulq_f32(a2, a2);
    *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
    *v9.f32 = vrsqrte_f32(v10);
    *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
    v11 = vaddq_f32(v8, vmulq_n_f32(a2, vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32))).f32[0]));
    v12 = vmulq_f32(v11, v11);
    v13 = v12.f32[2] + vaddv_f32(*v12.f32);
    if (v13 <= 1.4211e-14)
    {
      v39 = vabsq_f32(a1);
      v40 = v39.f32[1];
      v41 = v39.f32[2];
      if (v39.f32[0] > v39.f32[1] || v39.f32[0] > v39.f32[2])
      {
        v42 = vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL);
        if (v40 <= v41)
        {
          v43 = vmulq_f32(a1, xmmword_241365EC0);
          v44 = xmmword_241364640;
        }

        else
        {
          v43 = vmulq_f32(a1, xmmword_241365ED0);
          v44 = xmmword_241365EE0;
        }
      }

      else
      {
        v42 = vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL);
        v43 = vmulq_f32(a1, xmmword_241365EB0);
        v44 = xmmword_241365E70;
      }

      v45 = vmlaq_f32(v43, v44, v42);
      v46 = vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL);
      v47 = vmulq_f32(v45, v45);
      *&v48 = v47.f32[1] + (v47.f32[2] + v47.f32[0]);
      *v47.f32 = vrsqrte_f32(v48);
      *v47.f32 = vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32)));
      v33 = vmulq_n_f32(v46, vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32))).f32[0]).u64[0];
    }

    else
    {
      v14 = v13;
      v15 = vrsqrte_f32(LODWORD(v13));
      v16 = vmul_f32(v15, vrsqrts_f32(LODWORD(v14), vmul_f32(v15, v15)));
      v17 = vmulq_n_f32(v11, vmul_f32(v16, vrsqrts_f32(LODWORD(v14), vmul_f32(v16, v16))).f32[0]);
      v18 = vaddq_f32(a1, v17);
      v19 = vmulq_f32(v18, v18);
      *&v20 = v19.f32[2] + vaddv_f32(*v19.f32);
      *v19.f32 = vrsqrte_f32(v20);
      *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32)));
      v21 = vmulq_n_f32(v18, vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32))).f32[0]);
      v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), vnegq_f32(a1)), v21, vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL));
      v23 = vmulq_f32(v21, a1);
      v24 = vaddq_f32(a2, v17);
      v25 = vmulq_f32(v24, v24);
      v4.f32[0] = v25.f32[2] + vaddv_f32(*v25.f32);
      *v25.f32 = vrsqrte_f32(*v4.f32);
      *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(*v4.f32, vmul_f32(*v25.f32, *v25.f32)));
      v26 = vmulq_n_f32(v24, vmul_f32(*v25.f32, vrsqrts_f32(*v4.f32, vmul_f32(*v25.f32, *v25.f32))).f32[0]);
      v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), vnegq_f32(v17)), v26, vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL));
      v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
      v29 = vmulq_f32(v17, v26);
      v28.f32[3] = v29.f32[2] + vaddv_f32(*v29.f32);
      v30 = vnegq_f32(v28);
      v31 = vtrn2q_s32(v28, vtrn1q_s32(v28, v30));
      v32 = vrev64q_s32(v28);
      v32.i32[0] = v30.i32[1];
      v32.i32[3] = v30.i32[2];
      v33 = vaddq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, v23.f32[2] + vaddv_f32(*v23.f32)), v32, *v22.f32, 1), vmlaq_laneq_f32(vmulq_n_f32(vextq_s8(v28, v30, 8uLL), v22.f32[0]), vextq_s8(v31, v31, 8uLL), v22, 2)).u64[0];
    }
  }

  return *&v33;
}

double sub_24124AD38(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t objectdestroy_103Tm()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_106Tm()
{

  if (*(v0 + 192))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 208, 15);
}

uint64_t objectdestroy_109Tm()
{

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 96, 15);
}

unint64_t sub_24124AED4()
{
  result = qword_27E538B00;
  if (!qword_27E538B00)
  {
    sub_241352B6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538B00);
  }

  return result;
}

uint64_t sub_24124AF2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750, &qword_2413660E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24124AF9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538750, &qword_2413660E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_24124B034(id result)
{
  if (result != 4)
  {
    sub_24124B044(result);
  }
}

void sub_24124B044(id a1)
{
  if (a1 - 1 >= 3)
  {
  }
}

void simd_slerp(float32x4_t a1, float32x4_t a2, float a3)
{
  v3 = vmulq_f32(a1, a2);
  v4 = vextq_s8(v3, v3, 8uLL);
  *v3.f32 = vadd_f32(*v3.f32, *v4.f32);
  v3.f32[0] = vaddv_f32(*v3.f32);
  v4.i64[0] = 0;
  _simd_slerp_internal(a1, vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v3, v4)), 0), vnegq_f32(a2), a2), a3);
}

void _simd_slerp_internal(float32x4_t a1, float32x4_t a2, float a3)
{
  v5 = 1.0 - a3;
  v6 = vsubq_f32(a1, a2);
  v7 = vmulq_f32(v6, v6);
  v8 = vaddq_f32(a1, a2);
  v9 = vmulq_f32(v8, v8);
  v10 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)))));
  v11 = v10 + v10;
  if ((v10 + v10) != 0.0)
  {
    sinf(v11);
  }

  if ((v5 * v11) != 0.0)
  {
    sinf(v5 * v11);
  }

  v12 = v11 * a3;
  if (v12 != 0.0)
  {
    sinf(v12);
  }
}

uint64_t sub_24124B200()
{
  v0 = sub_241352FFC();
  __swift_allocate_value_buffer(v0, qword_27E5382C8);
  __swift_project_value_buffer(v0, qword_27E5382C8);
  return sub_241352FEC();
}

void sub_24124B284()
{
  v0 = sub_241353BDC();
  v1 = NSClassFromString(v0);

  if (v1)
  {
    goto LABEL_8;
  }

  v2 = [objc_opt_self() processInfo];
  v3 = [v2 processName];

  v4 = sub_241353C0C();
  v6 = v5;

  if (v4 == 0x6569766572504358 && v6 == 0xEE00746E65674177)
  {

LABEL_8:
    v8 = 1;
    goto LABEL_9;
  }

  v8 = sub_24135497C();

LABEL_9:
  byte_27E5382E0 = v8 & 1;
}

uint64_t static AnalyticsHelper.isRunningUnitTests.getter()
{
  if (qword_27E537B08 != -1)
  {
    swift_once();
  }

  return byte_27E5382E0;
}

uint64_t getEnumTagSinglePayload for AnalyticsHelper(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AnalyticsHelper(_WORD *result, int a2, int a3)
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

void sub_24124B4D0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ([objc_opt_self() isAppleInternalInstall])
  {
    if (qword_27E537B00 != -1)
    {
      swift_once();
    }

    v5 = sub_241352FFC();
    __swift_project_value_buffer(v5, qword_27E5382C8);

    v6 = sub_241352FDC();
    v7 = sub_2413540DC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_2412DDC2C(a1, a2, &v15);
      *(v8 + 12) = 2080;
      sub_24124B70C();
      v10 = sub_241353B6C();
      v12 = sub_2412DDC2C(v10, v11, &v15);

      *(v8 + 14) = v12;
      _os_log_impl(&dword_241215000, v6, v7, "Sending event %s, payload: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CE4870](v9, -1, -1);
      MEMORY[0x245CE4870](v8, -1, -1);
    }
  }

  v13 = sub_241353BDC();
  sub_24124B70C();
  v14 = sub_241353B4C();
  AnalyticsSendEvent();
}

unint64_t sub_24124B70C()
{
  result = qword_27E5382E8;
  if (!qword_27E5382E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E5382E8);
  }

  return result;
}

char *sub_24124B758(uint64_t *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v54 = a3;
  v55 = a2;
  v47 = sub_241352FFC();
  v6 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24135164C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v52 = a1[1];
  v53 = v13;
  v51 = a1[2];
  v50 = *(a1 + 24);
  *(v4 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView) = 0;
  v14 = a1[4];
  v48 = a1[5];
  v49 = v14;
  v15 = (v4 + OBJC_IVAR____TtC11AssetViewer15ModelController_arViewDelegateForwarded);
  *v15 = 0;
  v15[1] = 0;
  *(v4 + OBJC_IVAR____TtC11AssetViewer15ModelController_cameraController) = 0;
  v16 = OBJC_IVAR____TtC11AssetViewer15ModelController_animationManager;
  type metadata accessor for ARQLAnimationManager();
  v17 = swift_allocObject();
  v17[2] = 1;
  v17[3] = 0;
  v18 = MEMORY[0x277D84F98];
  v17[4] = 0;
  v17[5] = v18;
  *(v4 + v16) = v17;
  v19 = OBJC_IVAR____TtC11AssetViewer15ModelController_feedbackGenerator;
  v20 = [objc_allocWithZone(MEMORY[0x277D755F0]) initWithStyle_];
  v21 = [objc_allocWithZone(MEMORY[0x277D755F0]) initWithStyle_];
  v22 = [objc_allocWithZone(ASVGestureFeedbackGenerator) initWithSnapToGenerator:v20 snapAwayFromGenerator:v21];

  *(v4 + v19) = v22;
  *(v4 + OBJC_IVAR____TtC11AssetViewer15ModelController_loadingState) = 0;
  v23 = v4 + OBJC_IVAR____TtC11AssetViewer15ModelController_fileMetadata;
  sub_24135163C();
  v24 = sub_2413515FC();
  v26 = v25;
  (*(v10 + 8))(v12, v9);
  if (qword_27E537C60 != -1)
  {
    swift_once();
  }

  v27 = *(&xmmword_27E541898 + 1);
  v28 = xmmword_27E541898;
  v29 = qword_27E5418A8;
  *v23 = v24;
  *(v23 + 8) = v26;
  *(v23 + 16) = 512;
  *(v23 + 18) = 2;
  *(v23 + 24) = 3;
  *(v23 + 32) = __PAIR128__(v27, v28);
  *(v23 + 48) = v29;
  v30 = (v4 + OBJC_IVAR____TtC11AssetViewer15ModelController_additionalSetupAfterSceneSetupCallback);
  *v30 = 0;
  v30[1] = 0;
  *(v4 + OBJC_IVAR____TtC11AssetViewer15ModelController_variantLoader) = 0;
  v31 = v4 + OBJC_IVAR____TtC11AssetViewer15ModelController_sceneInfo;
  *v31 = 0u;
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0u;
  *(v31 + 48) = 0;
  *(v4 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers) = MEMORY[0x277D84F90];
  *(v4 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController) = 0;
  *(v4 + OBJC_IVAR____TtC11AssetViewer15ModelController_sceneContainsPhysics) = 0;
  *(v4 + OBJC_IVAR____TtC11AssetViewer15ModelController_isFaceAnchoredScene) = 0;
  v32 = OBJC_IVAR____TtC11AssetViewer15ModelController_anchoringComponentTarget;
  v33 = sub_241351DEC();
  (*(*(v33 - 8) + 56))(v4 + v32, 1, 1, v33);
  *(v4 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityHologramInitialized) = 0;
  v34 = OBJC_IVAR____TtC11AssetViewer15ModelController_modelAnimationController;
  type metadata accessor for ModelAnimationController(0);
  swift_allocObject();

  result = sub_24134C5C0();
  *(v4 + v34) = result;
  v36 = v4 + OBJC_IVAR____TtC11AssetViewer15ModelController_configuration;
  v37 = v52;
  *v36 = v53;
  *(v36 + 8) = v37;
  *(v36 + 16) = v51;
  *(v36 + 24) = v50;
  v38 = v48;
  *(v36 + 32) = v49;
  *(v36 + 40) = v38;
  v39 = v55;
  if (v54)
  {
    v39 = qword_27E539578 + 1;
    if (__OFADD__(qword_27E539578, 1))
    {
      __break(1u);
      return result;
    }

    ++qword_27E539578;
  }

  v57 = 0xD000000000000010;
  v58 = 0x800000024135E540;
  v56 = v39;
  v40 = sub_24135491C();
  MEMORY[0x245CE20D0](v40);

  sub_241352FEC();
  (*(v6 + 32))(v4 + OBJC_IVAR____TtC11AssetViewer15ModelController_logger, v8, v47);
  v41 = sub_241352FDC();
  v42 = sub_2413540DC();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_241215000, v41, v42, "Created ModelController", v43, 2u);
    MEMORY[0x245CE4870](v43, -1, -1);
  }

  v44 = sub_241352FDC();
  v45 = sub_2413540DC();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_241215000, v44, v45, "Inline preview enabled", v46, 2u);
    MEMORY[0x245CE4870](v46, -1, -1);
  }

  return v4;
}

void sub_24124BCF8(uint64_t result, void (*a2)(void), double a3, double a4, double a5, double a6)
{
  if (!*(v6 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView))
  {
    v8 = result;
    v13 = sub_241352FDC();
    v14 = sub_2413540DC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      *v15 = 136315138;
      if (v8)
      {
        v17 = 0xD000000000000011;
      }

      else
      {
        v17 = 0x5065726170657270;
      }

      if (v8)
      {
        v18 = 0x800000024135E520;
      }

      else
      {
        v18 = 0xEE00776569766572;
      }

      v19 = sub_2412DDC2C(v17, v18, &v20);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_241215000, v13, v14, "calling setupARView() from %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x245CE4870](v16, -1, -1);
      MEMORY[0x245CE4870](v15, -1, -1);
    }

    sub_24124BEB0(a3, a4, a5, a6);
    if (a2)
    {
      a2();
    }
  }
}

void sub_24124BEB0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_2413527AC();
  v113 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v104 - v14;
  v16 = sub_24135170C();
  v114 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC11AssetViewer15ModelController_arView;
  v20 = *(v4 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  v21 = OBJC_IVAR____TtC11AssetViewer15ModelController_logger;
  v115 = sub_241352FDC();
  if (v20)
  {
    v22 = sub_2413540BC();
    if (os_log_type_enabled(v115, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_241215000, v115, v22, "setupARView() called but there is already an ARView", v23, 2u);
      MEMORY[0x245CE4870](v23, -1, -1);
    }

    v24 = v115;

    return;
  }

  v108 = v18;
  v109 = v16;
  v111 = v19;
  v25 = sub_2413540DC();
  v26 = os_log_type_enabled(v115, v25);
  v104[1] = v21;
  v106 = v12;
  v107 = v10;
  v105 = v15;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v117[0] = v28;
    *v27 = 136315138;
    v29 = sub_2413541FC();
    v31 = sub_2412DDC2C(v29, v30, v117);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_241215000, v115, v25, "setupARView() started, requested frame: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x245CE4870](v28, -1, -1);
    MEMORY[0x245CE4870](v27, -1, -1);
  }

  v112 = v5;
  v32 = *(v5 + OBJC_IVAR____TtC11AssetViewer15ModelController_configuration + 8);
  v115 = *(v5 + OBJC_IVAR____TtC11AssetViewer15ModelController_configuration);
  v33 = *(v5 + OBJC_IVAR____TtC11AssetViewer15ModelController_configuration + 16);
  v110 = *(v5 + OBJC_IVAR____TtC11AssetViewer15ModelController_configuration + 24);
  v34 = *(v5 + OBJC_IVAR____TtC11AssetViewer15ModelController_configuration + 32);
  v35 = *(v5 + OBJC_IVAR____TtC11AssetViewer15ModelController_configuration + 40);
  v36 = objc_allocWithZone(type metadata accessor for ARQLView(0));
  v37 = v33;

  sub_24124AD38(v34, v35);
  v38 = [v36 initWithFrame_];
  v39 = &v38[qword_27E53A150];
  v40 = *&v38[qword_27E53A150];
  v41 = *&v38[qword_27E53A150 + 8];
  v42 = *&v38[qword_27E53A150 + 16];
  v43 = *&v38[qword_27E53A150 + 24];
  v44 = *&v38[qword_27E53A150 + 32];
  v45 = *&v38[qword_27E53A150 + 40];
  *v39 = v115;
  v39[1] = v32;
  v46 = v110;
  v39[2] = v33;
  v39[3] = v46;
  v39[4] = v34;
  v39[5] = v35;
  v47 = v38;
  v48 = v40;
  v49 = v112;
  sub_241255C84(v48, v41, v42, v43, v44, v45);
  sub_24131E604();

  v50 = v111;
  v51 = *(v49 + v111);
  *(v49 + v111) = v47;
  v52 = v47;

  sub_24135287C();
  v53 = *(v49 + v50);
  if (!v53)
  {
    __break(1u);
    goto LABEL_34;
  }

  v54 = v53;
  sub_24135289C();

  v55 = *(v49 + v50);
  if (!v55)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v56 = v55;
  sub_24131A3D0(1);

  v57 = *(v49 + v50);
  if (!v57)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v58 = objc_opt_self();
  v59 = v57;
  [v58 wantsOpenInObjectMode];
  sub_24135290C();

  v60 = *(v49 + v50);
  if (!v60)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v61 = v60;
  [v58 wantsOpenInObjectMode];
  sub_24135291C();

  v62 = *(v49 + v50);
  if (!v62)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_241255F40(&qword_27E538358, type metadata accessor for ModelController, &unk_241364FA0);

  v63 = v62;
  sub_24135280C();

  v64 = *(v49 + v50);
  v66 = v108;
  v65 = v109;
  v67 = v114;
  if (!v64)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  [v64 setUserInteractionEnabled_];
  v68 = *(v49 + v50);
  if (!v68)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v68[qword_27E53A1F0] = 0;
  v69 = v68;
  sub_24131A95C();
  sub_241352E5C();
  sub_2413516FC();

  (*(v67 + 8))(v66, v65);
  RERenderGraphAssetSetRuntimeNodeSettingBool();

  v70 = *(v49 + v50);
  if (!v70)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v71 = v70;
  sub_24135292C();
  sub_2413524EC();

  sub_24135243C();
  swift_dynamicCastClassUnconditional();
  sub_2413523FC();
  swift_unknownObjectRelease();
  v72 = *(v49 + v50);
  if (!v72)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v73 = v72;
  sub_2413528DC();

  v74 = *(v49 + v50);
  if (!v74)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v75 = v74;
  v76 = v106;
  sub_24135276C();
  v77 = sub_2413527CC();
  v78 = v105;
  sub_241287D44(v105, v76);
  v79 = *(v113 + 8);
  v80 = v76;
  v81 = v107;
  v79(v80, v107);
  v79(v78, v81);
  v77(v117, 0);

  v82 = *(v49 + v50);
  if (!v82)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v83 = v82;
  sub_24135292C();
  v84 = sub_2413524BC();

  if (!v84)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v85 = *(v49 + v50);
  if (!v85)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v86 = v85;
  v87 = sub_24135283C();

  if (!v87)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  type metadata accessor for CameraController();
  swift_allocObject();
  *(v49 + OBJC_IVAR____TtC11AssetViewer15ModelController_cameraController) = sub_2412590E4(v84, v87);

  v88 = *(v49 + v50);
  if (!v88)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v89 = OBJC_IVAR____TtC11AssetViewer15ModelController_modelAnimationController;
  v90 = *(v49 + OBJC_IVAR____TtC11AssetViewer15ModelController_modelAnimationController);

  v91 = v88;
  sub_24135257C();
  sub_241351C6C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538360, &qword_241366260);
  sub_241351BDC();
  swift_dynamicCast();
  *(v90 + 24) = v116;

  v92 = *(v49 + v50);
  if (!v92)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v93 = *(v49 + v89);

  v94 = v92;
  sub_24135292C();
  sub_2413524EC();

  *(v93 + 32) = swift_dynamicCastClassUnconditional();

  v95 = *(v49 + v50);
  if (!v95)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v96 = *(v49 + v89);

  v97 = v95;
  v98 = sub_2413527BC();

  if (!v98)
  {
    v99 = *(v49 + v50);
    if (v99)
    {
      v100 = v99;
      sub_24135292C();
      v98 = sub_2413524BC();

      if (v98)
      {

        goto LABEL_30;
      }

LABEL_51:
      __break(1u);
      return;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_30:
  *(v96 + 40) = v98;

  v101 = sub_241352FDC();
  v102 = sub_2413540DC();
  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    *v103 = 0;
    _os_log_impl(&dword_241215000, v101, v102, "setupARView() ended", v103, 2u);
    MEMORY[0x245CE4870](v103, -1, -1);
  }
}

void sub_24124C864(uint64_t a1, float a2)
{
  v21 = sub_241352B6C();
  MEMORY[0x28223BE20](v21);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  if (v18)
  {
    v7 = 0;
    v16 = a1 + 32;
    v17 = OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers;
    v8 = (v4 + 8);
    while (1)
    {
      v22 = *(v16 + 8 * v7);
      v9 = *(v19 + v17);
      v20 = v7;
      v10 = v9 >> 62 ? sub_2413544EC() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v10)
      {
        break;
      }

LABEL_3:
      v7 = v20 + 1;

      if (v7 == v18)
      {
        return;
      }
    }

    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x245CE29C0](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      sub_241352C5C();
      sub_2413518AC();
      sub_241310450(1, v6, v22, a2);

      (*v8)(v6, v21);
      ++v11;
      if (v14 == v10)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }
}

void sub_24124CA78(uint64_t a1)
{
  v2 = v1;
  v3 = sub_241352FDC();
  v4 = sub_2413540DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_241215000, v3, v4, "Cleanup called", v5, 2u);
    MEMORY[0x245CE4870](v5, -1, -1);
  }

  v6 = (v2 + OBJC_IVAR____TtC11AssetViewer15ModelController_arViewDelegateForwarded);
  *v6 = 0;
  v6[1] = 0;
  swift_unknownObjectRelease();
  v7 = *(v2 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (v7)
  {
    [v7 removeFromSuperview];
  }

  v8 = *(v2 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
  *(v2 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController) = 0;

  *(v2 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers) = MEMORY[0x277D84F90];

  oslog = sub_241352FDC();
  v9 = sub_2413540DC();
  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_241215000, oslog, v9, "Cleanup done", v10, 2u);
    MEMORY[0x245CE4870](v10, -1, -1);
  }
}

uint64_t sub_24124CC0C()
{
  v1 = *v0;
  sub_241354ADC();
  MEMORY[0x245CE2EA0](v1);
  return sub_241354B1C();
}

uint64_t sub_24124CC54()
{
  v1 = *v0;
  sub_241354ADC();
  MEMORY[0x245CE2EA0](v1);
  return sub_241354B1C();
}

void sub_24124CC98()
{
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v1 = sub_241352FFC();
  __swift_project_value_buffer(v1, qword_27E53A538);

  v2 = sub_241352FDC();
  v3 = sub_2413540DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v0 + OBJC_IVAR____TtC11AssetViewer15ModelController_fileMetadata + 24);

    _os_log_impl(&dword_241215000, v2, v3, "fileMetadata.preferredIBLVersion: %ld", v4, 0xCu);
    MEMORY[0x245CE4870](v4, -1, -1);
  }

  else
  {
  }

  v5 = *(v0 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (v5)
  {
    *&v5[qword_27E53A1B8] = *(v0 + OBJC_IVAR____TtC11AssetViewer15ModelController_fileMetadata + 24);
    v9 = v5;
    v6 = sub_241352FDC();
    v7 = sub_2413540DC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = *&v9[qword_27E53A1C8];
      _os_log_impl(&dword_241215000, v6, v7, "updateIBL for: %ld", v8, 0xCu);
      MEMORY[0x245CE4870](v8, -1, -1);
    }

    sub_24131C5B4(*&v9[qword_27E53A1C8]);
  }

  else
  {
    __break(1u);
  }
}

void sub_24124CEAC(uint64_t a1, NSObject *a2, uint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v6 = v5;
  v134 = a4;
  v135 = a5;
  v136 = a3;
  v132 = a1;
  v133 = a2;
  v7 = sub_24135164C();
  v121 = *(v7 - 8);
  v122 = v7;
  MEMORY[0x28223BE20](v7);
  v120 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2413517BC();
  v118 = *(v9 - 8);
  v119 = v9;
  MEMORY[0x28223BE20](v9);
  v117 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Information = type metadata accessor for AssetLoader.LoadInformation(0);
  MEMORY[0x28223BE20](Information);
  v123 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v129 = &v107 - v13;
  v14 = sub_24135415C();
  v127 = *(v14 - 8);
  v128 = v14;
  MEMORY[0x28223BE20](v14);
  v126 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_24135413C();
  MEMORY[0x28223BE20](v125);
  v17 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2413538FC();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24135152C();
  v131 = *(v21 - 8);
  v22 = *(v131 + 64);
  MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v23);
  v25 = &v107 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v107 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538850, &unk_241366BF0);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = (&v107 - v30);
  *(v6 + OBJC_IVAR____TtC11AssetViewer15ModelController_loadingState) = 1;
  v32 = v6;
  v33 = v6 + OBJC_IVAR____TtC11AssetViewer15ModelController_configuration;
  v34 = *(v6 + OBJC_IVAR____TtC11AssetViewer15ModelController_configuration + 32);
  if (!v34)
  {
    v40 = v31;
    v111 = v28;
    v112 = v25;
    v113 = v20;
    v114 = v17;
    v115 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v116 = v32;
    v130 = v21;
    v41 = objc_opt_self();
    if ([v41 enableVariantsFeature])
    {
      v42 = sub_241353EEC();
      v43 = *(*(v42 - 8) + 56);
      v110 = v40;
      v43(v40, 1, 1, v42);
      v44 = v131;
      v45 = v111;
      (*(v131 + 16))(v111, v132, v130);
      sub_241353ECC();
      v46 = v116;

      v47 = v135;

      v48 = sub_241353EBC();
      v49 = (*(v44 + 80) + 40) & ~*(v44 + 80);
      v50 = (v22 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
      v51 = swift_allocObject();
      v52 = MEMORY[0x277D85700];
      *(v51 + 2) = v48;
      *(v51 + 3) = v52;
      *(v51 + 4) = v46;
      (*(v44 + 32))(&v51[v49], v45, v130);
      v53 = &v51[v50];
      v54 = v136;
      *v53 = v133;
      v53[1] = v54;
      v55 = &v51[(v50 + 23) & 0xFFFFFFFFFFFFFFF8];
      *v55 = v134;
      *(v55 + 1) = v47;
      sub_241327238(0, 0, v110, &unk_241366270, v51);
    }

    else
    {
      v109 = v41;
      v56 = [v41 forceUseLegacySceneImportPipeline];
      v57 = OBJC_IVAR____TtC11AssetViewer15ModelController_logger;
      v58 = sub_241352FDC();
      v59 = sub_2413540DC();
      v60 = os_log_type_enabled(v58, v59);
      v62 = v130;
      v61 = v131;
      if (v60)
      {
        v63 = swift_slowAlloc();
        *v63 = 67109120;
        *(v63 + 4) = v56;
        _os_log_impl(&dword_241215000, v58, v59, "forceUseLegacySceneImportPipeline: %{BOOL}d", v63, 8u);
        MEMORY[0x245CE4870](v63, -1, -1);
      }

      v108 = v56;

      v64 = *(v61 + 16);
      v65 = v112;
      v111 = (v61 + 16);
      (v64)(v112, v132, v62);
      v66 = sub_241352FDC();
      v67 = sub_2413540DC();
      v68 = os_log_type_enabled(v66, v67);
      v107 = v57;
      v110 = v64;
      if (v68)
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *&v139[0] = v70;
        *v69 = 136380675;
        sub_241255F40(&qword_27E539990, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v71 = sub_24135491C();
        v73 = v72;
        v112 = *(v61 + 8);
        v112(v65, v62);
        v74 = sub_2412DDC2C(v71, v73, v139);

        *(v69 + 4) = v74;
        _os_log_impl(&dword_241215000, v66, v67, "loadFile at %{private}s", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v70);
        MEMORY[0x245CE4870](v70, -1, -1);
        MEMORY[0x245CE4870](v69, -1, -1);
      }

      else
      {

        v112 = *(v61 + 8);
        v112(v65, v62);
      }

      sub_241246158(0, &qword_27E538920, 0x277D85C78);
      sub_2413538EC();
      *&v139[0] = MEMORY[0x277D84F90];
      sub_241255F40(&qword_27E538368, MEMORY[0x277D85230], MEMORY[0x277D85238]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538370, &qword_241366D00);
      sub_241255F88(&qword_27E538378, &qword_27E538370, &qword_241366D00);
      sub_24135444C();
      (*(v127 + 104))(v126, *MEMORY[0x277D85260], v128);
      v75 = sub_24135419C();
      (v110)(v115, v132, v130);
      v76 = *(v116 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
      if (!v76)
      {
        __break(1u);
        return;
      }

      v77 = v76;
      sub_24135257C();
      v78 = v117;
      sub_241351C8C();
      sub_2413516FC();

      (*(v118 + 8))(v78, v119);
      v79 = *&v139[0];
      v80 = v75;
      v81 = sub_24135416C();
      v82 = v120;
      sub_24135163C();
      v83 = sub_2413515FC();
      v85 = v84;
      (*(v121 + 8))(v82, v122);
      v86 = [objc_opt_self() viewerMemoryAvailableForTexturesOnThisDevice];
      v87 = v123;
      v88 = Information;
      v89 = &v123[*(Information + 28)];
      *&v123[*(Information + 40)] = MEMORY[0x277D84F90];
      v90 = v87;
      v110();
      *(v90 + v88[5]) = v79;
      v91 = (v90 + v88[8]);
      *v91 = v83;
      v91[1] = v85;
      v92 = (v90 + v88[6]);
      *v92 = 0;
      v92[1] = 0xE000000000000000;
      *v89 = v80;
      *(v89 + 1) = v81;
      v93 = (v90 + v88[9]);
      *v93 = v86;
      v93[1] = 0x100000001000;
      *(v90 + v88[11]) = v108;
      *(v90 + v88[12]) = 0;
      *(v90 + v88[13]) = 0;
      if (qword_27E537B10 != -1)
      {
        swift_once();
      }

      v94 = sub_241352FFC();
      __swift_project_value_buffer(v94, qword_27E5384A0);
      v95 = sub_241352FDC();
      v96 = sub_2413540DC();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        *v97 = 134217984;
        *(v97 + 4) = v86 / 0x100000;
        _os_log_impl(&dword_241215000, v95, v96, "textureDownsampleMemoryLimit: %ldMB", v97, 0xCu);
        MEMORY[0x245CE4870](v97, -1, -1);
      }

      v112(v115, v130);
      v98 = v129;
      sub_241244A20(v90, v129);
      sub_2413375C8();
      kdebug_load_asset_begin();
      v99 = [v109 overrideMaxTextureSize];
      if (v99 >= 1)
      {
        v100 = v99;
        v101 = sub_241352FDC();
        v102 = sub_2413540DC();
        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          *v103 = 67109120;
          *(v103 + 4) = v100;
          _os_log_impl(&dword_241215000, v101, v102, "overrideMaxTextureSize: %d", v103, 8u);
          MEMORY[0x245CE4870](v103, -1, -1);
        }

        v98 = v129;
        *&v129[v88[9] + 8] = vdup_n_s32(v100);
      }

      byte_27E5384B8 = 0;
      v104 = swift_allocObject();
      swift_weakInit();
      v105 = v136;

      v106 = v135;

      sub_24127B0A4(v98, v104, v133, v105, v134, v106);

      sub_241244A8C(v98);
    }

    return;
  }

  v35 = *(v33 + 40);

  v34(v139, v36);
  sub_2412186FC(v34, v35);
  v37 = sub_241352FDC();
  v38 = sub_2413540DC();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_241215000, v37, v38, "Unit test overrode scene info", v39, 2u);
    MEMORY[0x245CE4870](v39, -1, -1);
  }

  v137[4] = v139[4];
  v137[5] = v139[5];
  v138[0] = v140[0];
  *(v138 + 9) = *(v140 + 9);
  v137[0] = v139[0];
  v137[1] = v139[1];
  v137[2] = v139[2];
  v137[3] = v139[3];
  sub_24125072C(v137, v133, v136, v134);
  sub_241246278(v139, &qword_27E538348, &qword_241366C10);
}