uint64_t getEnumTagSinglePayload for CacheRefreshConfiguration(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CacheRefreshConfiguration(uint64_t result, int a2, int a3)
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

void *sub_22F0FF108@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_WORD *sub_22F0FF124@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t sub_22F0FF1C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22F740E20();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22F0FF598()
{
  v1 = sub_22F740B90();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22F0FF6BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_22F0FF704(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_22F0FF748@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_22F0FF798@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_22F0FF7E0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t sub_22F0FF824@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_22F0FF874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22F740390();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_22F73F090();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_22F0FF964(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22F740390();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_22F73F090();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_22F0FFA84()
{
  v1 = sub_22F73F7C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22F0FFB30(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22F73FF10();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_22F0FFBDC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22F73FF10();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22F0FFC80(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MomentGroundedLocation(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22F0FFD2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MomentGroundedLocation(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22F0FFDFC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22F73F090();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22F0FFEA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_22F73F090();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22F100068@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_22F1000B0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_22F1000F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_triggerResults;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22F100154@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_supportsFutureLookup;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_22F1001AC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_supportsFutureLookup;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_22F100200@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph20FallbackSocialGroups_futureLookupResults;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22F100260(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_22F100278@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_22F1002C8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F100300(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22F1003BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22F10046C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___PGPlaceZeroKeyword_displayInfo;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

double sub_22F1004CC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___PGPlaceZeroKeyword_score;
  swift_beginAccess();
  result = *(v3 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_22F100524(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___PGPlaceZeroKeyword_score;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_22F100588()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F1005C8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F100600()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22F1006CC()
{
  v1 = 0x6E696E6E69676562;
  if (*v0 != 1)
  {
    v1 = 0x676E69646E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1852399981;
  }
}

uint64_t sub_22F100720@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F190A34(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F100768()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_22F1007AC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_22F1007BC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph19MusicKitCatalogSongV13RelationshipsVSg_0(unint64_t *a1)
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

uint64_t get_enum_tag_for_layout_string_11PhotosGraph19MusicKitCatalogSongV13RelationshipsV6LyricsV0H4DataV15LyricAttributesVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV17AudioAnalysisDataV23AudioAnalysisAttributesV28AudioAnalysisSavoyAttributesVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 21))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV17AudioAnalysisDataV23AudioAnalysisAttributesV28AudioAnalysisSavoyAttributesVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 20) = 0;
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

  *(result + 21) = v3;
  return result;
}

uint64_t sub_22F10089C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EC0, &qword_22F7867E0);
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

uint64_t sub_22F100964(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EC0, &qword_22F7867E0);
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

uint64_t sub_22F100AE8()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    sub_22F1D20A4(*(v0 + 16), v1 & 1);
  }

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_22F100B3C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F100B98()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F100BEC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F100C28()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F100C88(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_22F100D50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22F100E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
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

uint64_t sub_22F100ECC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
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

uint64_t sub_22F100F94(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22F73F690();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22F101040(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22F73F690();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22F1010F4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F101144(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22F740890();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_22F73F690();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_22F101268(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_22F740890();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_22F73F690();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22F1013C8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22F101408()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22F101450()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F1014B8()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22F101500()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F10153C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F1015E4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22F10162C()
{
  v1 = *(v0 + 24);
  if (v1 != 255)
  {
    sub_22F1D20A4(*(v0 + 16), v1 & 1);
  }

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

double sub_22F101678(void *result, char a2)
{
  if (a2 != -1)
  {
    return sub_22F1D20A4(result, a2 & 1);
  }

  return v2;
}

uint64_t sub_22F1016AC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F1016F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F101730()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22F101830()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2A10, &unk_22F77C698);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_22F1018E0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F101928()
{

  return MEMORY[0x2821FE8E8](v0, 44, 7);
}

uint64_t sub_22F1019AC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F101A10(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22F73FB70();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22F101ABC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22F73FB70();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22F101B68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_22F101BB0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_22F101BF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_triggerResults;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22F101C54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_supportsFutureLookup;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_22F101CAC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_supportsFutureLookup;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_22F101D00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_futureLookupResults;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22F101E8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F101EC4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22F101F28()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F102000()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F102040()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F102078()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22F1020D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_22F10211C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_22F10224C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F102284()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F1022BC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F1022FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_22F102344(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_22F102388@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_triggerResults;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22F1023E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_supportsFutureLookup;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_22F102440(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_supportsFutureLookup;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_22F102494@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_futureLookupResults;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22F102584()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F1025BC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F1026F0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F10272C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph15CurationPlanner_sources;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22F102790()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F1027CC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22F102824()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F102864()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22F1028B4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F1028EC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F10292C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_22F102974(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_22F1029B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_triggerResults;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22F102A18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_supportsFutureLookup;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_22F102A70(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_supportsFutureLookup;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_22F102AC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_futureLookupResults;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22F102B24()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F102B74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_22F102BBC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

id sub_22F102CEC()
{
  v1 = [*v0 graph];

  return v1;
}

uint64_t sub_22F102D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22F740820();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_22F740620();
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

uint64_t sub_22F102E3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22F740820();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_22F740620();
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

uint64_t sub_22F102F44(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22F73FFB0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22F102FF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22F73FFB0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22F1030A4()
{
  v1 = (type metadata accessor for PersonalTraitMomentGraphDataSource(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = sub_22F740820();
  (*(*(v7 - 8) + 8))(v6, v7);
  v8 = v1[7];
  v9 = sub_22F740620();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, ((((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_22F1032C8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F10331C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22F103354()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F1033A8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F1033E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3548, &qword_22F784258);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22F10347C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F1034C8()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F10351C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F3164F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F103560()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_22F1035A0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F1035D8()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22F103620()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F103668()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22F1036C0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F103708()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F103744()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F10377C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F1037CC()
{
  v1 = sub_22F73F690();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_22F10393C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F103974()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F1039D4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F103A0C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22F103A54()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F103A8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F103AC4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F103B10()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F103B48()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F103B88()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F103BD0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22F103C30()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22F103C98()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F103D10(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22F73F690();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22F103DBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22F73F690();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22F103E60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_22F103EA8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_22F103EEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_triggerResults;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22F103F4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_supportsFutureLookup;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_22F103FA4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_supportsFutureLookup;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_22F103FF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph15HistoricalTrips_futureLookupResults;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22F104058()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F104098(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22F740B90();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_22F104144(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22F740B90();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22F1041E8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F1042C0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F104338@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_22F104380(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_22F1043C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_triggerResults;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22F104424@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_supportsFutureLookup;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_22F10447C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_supportsFutureLookup;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_22F1044D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11PhotosGraph11RecentTrips_futureLookupResults;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22F104558()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F104590()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F1045C8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F104618()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_22F104678()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F1046C8()
{
  v1 = sub_22F73EEC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_22F1047DC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F10481C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F104864()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F1048A8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F1048F8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22F104948()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F104990()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F1049C8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F104A40()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22F104A88()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F104AC0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F104B20()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F104B58()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22F104BB4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F104C04()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22F104C74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F104CC8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F104D5C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F104D94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3E00, &unk_22F789090);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22F104E28()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F104E70()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F104F2C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 60);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 64);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_22F105068(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 60);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 64);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

id sub_22F1051A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_22F105200@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_22F15C30C(v3 + 24, a2);
}

uint64_t sub_22F105250@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_22F1052A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 72);
}

uint64_t sub_22F10530C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F1053B0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22F1053E8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F105420()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F10549C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F1054D4@<X0>(uint64_t a1@<X0>, void (**a2)(float *a1@<X8>)@<X8>)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_22F3B6BCC;
  a2[1] = v5;
}

uint64_t sub_22F105560()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F1055D4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F105648()
{
  v1 = (type metadata accessor for PersonalTraitMomentGraphDataSource(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_22F740820();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[7];
  v8 = sub_22F740620();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, ((((((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_22F10581C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F1058A8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22F1058E8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F105920()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F105988()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F1059C0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F1059F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22F73F690();
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

uint64_t sub_22F105AB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22F73F690();
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

uint64_t sub_22F105B6C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F105BA8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22F105BF0()
{
  v1 = (type metadata accessor for DateAndLocation(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;

  v6 = v0 + v3;
  v7 = sub_22F73F690();
  (*(*(v7 - 8) + 8))(v6, v7);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v2 | 7);
}

uint64_t sub_22F105D04()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22F105D3C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB4208, &unk_22F78AAC8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for CacherStatusUpdater(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v7 = type metadata accessor for CacherStatus(0);
    if (!(*(*(v7 - 8) + 48))(v0 + v3, 1, v7))
    {

      v8 = *(v7 + 20);
      v9 = sub_22F73F690();
      v16 = v8;
      v17 = *(v9 - 8);
      v10 = v5 + v8;
      v11 = *(v17 + 48);
      if (!v11(v10, 1, v9))
      {
        (*(v17 + 8))(v5 + v16, v9);
      }

      v12 = *(v7 + 24);
      if (!v11(v5 + v12, 1, v9))
      {
        (*(v17 + 8))(v5 + v12, v9);
      }
    }
  }

  v13 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, ((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_22F105FDC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F106024()
{
  v1 = *(type metadata accessor for CacherStatusUpdater(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for CacherStatus(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v15 = v4;

    v7 = *(v6 + 20);
    v8 = sub_22F73F690();
    v14 = *(v8 - 8);
    v9 = *(v14 + 48);
    if (!v9(v5 + v7, 1, v8))
    {
      (*(v14 + 8))(v5 + v7, v8);
    }

    v10 = *(v6 + 24);
    v11 = v9(v5 + v10, 1, v8);
    v4 = v15;
    if (!v11)
    {
      (*(v14 + 8))(v5 + v10, v8);
    }
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, ((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_22F106224()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22F10625C()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22F1062C4()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_22F106324()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22F106374()
{
  v1 = sub_22F73EEC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_22F106460()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22F1064F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_22F106540(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

_OWORD *sub_22F107D08(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_22F107D18(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_22F107D34@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  *a1 = *(v3 + 16);
  return result;
}

uint64_t sub_22F107E14(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_22F107E24(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_22F107E80(uint64_t a1, int a2)
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

uint64_t sub_22F107EA0(uint64_t result, int a2, int a3)
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

uint64_t sub_22F107EF4()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 32);
}

void sub_22F107F34(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a3;
  v6(a2, v7, a4);
}

uint64_t static PGTuningMetricsProtocol.calculatePrecision(truePositives:trueNegatives:falsePositives:falseNegatives:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result + a3;
  if (__OFADD__(result, a3))
  {
    __break(1u);
  }

  else if (v3 < 1)
  {
    *&result = 0.0;
  }

  else
  {
    *&result = result / v3;
  }

  return result;
}

uint64_t static PGTuningMetricsProtocol.calculateRecall(truePositives:trueNegatives:falsePositives:falseNegatives:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result + a4;
  if (__OFADD__(result, a4))
  {
    __break(1u);
  }

  else if (v4 < 1)
  {
    *&result = 0.0;
  }

  else
  {
    *&result = result / v4;
  }

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

uint64_t sub_22F10821C(uint64_t a1, unsigned int a2)
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

uint64_t sub_22F108278(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22F1083E4(uint64_t a1, int a2)
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

uint64_t sub_22F108404(uint64_t result, int a2, int a3)
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

uint64_t sub_22F1084C8()
{
  sub_22F742170();
  sub_22F7421A0();
  return sub_22F7421D0();
}

uint64_t sub_22F10853C(uint64_t a1)
{
  sub_22F742170();
  sub_22F7421A0();
  return sub_22F7421D0();
}

uint64_t sub_22F108580()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

uint64_t sub_22F1085C8(uint64_t a1)
{
  v2 = *v1;
  sub_22F742170();
  MEMORY[0x231901D30](v2);
  return sub_22F7421D0();
}

uint64_t sub_22F10860C(uint64_t a1, id *a2)
{
  result = sub_22F740E00();
  *a2 = 0;
  return result;
}

uint64_t sub_22F108684(uint64_t a1, id *a2)
{
  v3 = sub_22F740E10();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_22F108704@<X0>(uint64_t *a2@<X8>)
{
  sub_22F740E20();
  v3 = sub_22F740DF0();

  *a2 = v3;
  return result;
}

uint64_t sub_22F1087EC(uint64_t a1, uint64_t a2)
{
  sub_22F742170();
  swift_getWitnessTable();
  sub_22F73FA40();
  return sub_22F7421D0();
}

uint64_t sub_22F108854(void *a1, uint64_t *a2)
{
  v2 = sub_22F740E20();
  v4 = v3;
  if (v2 == sub_22F740E20() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_22F742040();
  }

  return v7 & 1;
}

uint64_t sub_22F108924(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22F10896C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FED10](v4, v5, a3, WitnessTable);
}

uint64_t sub_22F1089D8(uint64_t a1)
{
  v2 = sub_22F108924(&qword_27DAB0270, type metadata accessor for GEOSpatialEventLookupCategory, &unk_22F77042C);
  v3 = sub_22F108924(&qword_27DAB0278, type metadata accessor for GEOSpatialEventLookupCategory, &unk_22F7703CC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_22F108A94@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_22F740DF0();

  *a2 = v3;
  return result;
}

uint64_t sub_22F108ADC(uint64_t a1)
{
  v2 = sub_22F108924(&qword_27DAB0260, type metadata accessor for URLResourceKey, &unk_22F7705F8);
  v3 = sub_22F108924(&qword_27DAB0268, type metadata accessor for URLResourceKey, &unk_22F770598);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22F108D44()
{
  v0 = sub_22F740E20();
  v1 = MEMORY[0x231900BB0](v0);

  return v1;
}

uint64_t sub_22F108D80(uint64_t a1)
{
  sub_22F740E20();
  sub_22F740D60();
}

uint64_t sub_22F108DD4(uint64_t a1)
{
  sub_22F740E20();
  sub_22F742170();
  sub_22F740D60();
  v1 = sub_22F7421D0();

  return v1;
}

void sub_22F10900C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_22F1090AC()
{
  v0 = sub_22F740BB0();
  __swift_allocate_value_buffer(v0, qword_2810AA720);
  *__swift_project_value_buffer(v0, qword_2810AA720) = 5;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

id PGStoryPromptSuggestionQuestionFactory.init(workingContext:questionVersion:)(void *a1, __int16 a2)
{
  v5.super_class = PGStoryPromptSuggestionQuestionFactory;
  v3 = objc_msgSendSuper2(&v5, sel_initWithWorkingContext_questionVersion_, a1, a2);

  return v3;
}

uint64_t PGStoryPromptSuggestionQuestionFactory.generateQuestions(withLimit:progressBlock:)(uint64_t a1, void (*a2)(double), uint64_t a3)
{
  v4 = v3;
  v81 = sub_22F7400A0();
  v84 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_22F7400D0();
  v80 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v77 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22F7404A0();
  v83 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22F7404C0();
  v62 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v64 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22F740B90();
  v63 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_slowAlloc();
  *v18 = 0;
  v67 = a3;
  v68 = a2;
  a2(0.0);
  v66 = v18;
  if (*v18)
  {
    return MEMORY[0x277D84F90];
  }

  v19 = [v4 workingContext];
  v20 = [v19 loggingConnection];

  sub_22F740BA0();
  v65 = a1;
  if (!a1)
  {
LABEL_6:
    (v68)(v66, 1.0);
    (*(v63 + 8))(v17, v15);
    return MEMORY[0x277D84F90];
  }

  v59 = v15;
  v60 = v13;
  v21 = [v4 workingContext];
  v61 = [v21 photoLibrary];

  v86 = MEMORY[0x277D84FA0];
  sub_22F740670();
  v22 = sub_22F740660();
  v23 = *(v22 + 16);
  v58 = v4;
  if (v23)
  {
    v24 = sub_22F10B7CC(v23, 0, &qword_27DAB04D8, &unk_22F7707E8, MEMORY[0x277D3C148]);
    sub_22F11B504(&v85, &v24[(*(v84 + 80) + 32) & ~*(v84 + 80)], v23, v22, MEMORY[0x277D3C148]);
    v15 = v25;
    sub_22F0FF590(v85);
    if (v15 != v23)
    {
      __break(1u);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v27 = v60;
  v28 = v83;
  (*(v83 + 104))(v12, *MEMORY[0x277D3C490], v10);
  v29 = v61;
  sub_22F740490();

  (*(v28 + 8))(v12, v10);
  v30 = sub_22F7404B0();
  v76 = sub_22F11D84C(v29, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB04D8, &unk_22F7707E8);
  v31 = v84;
  v32 = *(v84 + 72);
  v33 = (*(v84 + 80) + 32) & ~*(v84 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_22F7707D0;
  v35 = *(v31 + 104);
  v36 = v81;
  v35(v34 + v33, *MEMORY[0x277D3C128], v81);
  v35(v34 + v33 + v32, *MEMORY[0x277D3C140], v36);
  v35(v34 + v33 + 2 * v32, *MEMORY[0x277D3C130], v36);
  v85 = v30;

  v37 = 0;
  sub_22F11F928(&v85, v34);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  v38 = v85;
  v75 = v85[2];
  if (v75)
  {
    v39 = 0;
    v72 = v85 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
    v71 = v80 + 16;
    v70 = v80 + 8;
    v40 = v65;
    v41 = MEMORY[0x277D84FA0];
    v69 = (v84 + 8);
    v42 = v58;
    v73 = v85;
    v74 = v17;
    while (v39 < v38[2])
    {
      v84 = v41;
      v43 = v80;
      v44 = v77;
      v45 = v78;
      (*(v80 + 16))(v77, &v72[*(v80 + 72) * v39], v78);
      sub_22F740080();
      sub_22F740070();
      v82 = sub_22F7400C0();
      v83 = sub_22F740060();
      v46 = v79;
      sub_22F7400B0();
      (*(v43 + 8))(v44, v45);
      sub_22F740090();
      (*v69)(v46, v81);
      v27 = objc_allocWithZone(PGStoryPromptSuggestionQuestion);
      v47 = sub_22F740DF0();

      v48 = sub_22F740DF0();

      v49 = sub_22F740DF0();
      v41 = v84;

      v50 = [v27 initWithPromptId:v47 promptText:v48 isValidated:v82 & 1 assetCount:v83 source:v49 mcAvailabilityStatus:v76 localFactoryScore:1.0];

      v51 = v50;
      sub_22F109D4C(v41);
      v37 = sub_22F741410();

      LODWORD(v47) = [v42 shouldAddQuestion:v51 toAlreadyGeneratedQuestions:v37];

      if (v47)
      {
        v52 = v51;
        sub_22F10C720(&v85, v52, type metadata accessor for PGStoryPromptSuggestionQuestion, &qword_27DAB07B0, &qword_22F770910, type metadata accessor for PGStoryPromptSuggestionQuestion);

        v41 = v86;
        if ((v86 & 0xC000000000000001) != 0)
        {
          v53 = sub_22F741A00();
        }

        else
        {
          v53 = *(v86 + 16);
        }

        v38 = v73;
        v17 = v74;
        v37 = v66;
        (v68)(v66, v53 / v40);
        if (*v37)
        {

          goto LABEL_26;
        }

        if ((v41 & 0xC000000000000001) != 0)
        {
          v54 = sub_22F741A00();
        }

        else
        {

          v54 = *(v41 + 16);
        }

        if (v54 >= v65)
        {
LABEL_23:

LABEL_26:
          v27 = v60;
          goto LABEL_27;
        }
      }

      else
      {

        v38 = v73;
        v17 = v74;
      }

      if (v75 == ++v39)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  v41 = MEMORY[0x277D84FA0];
LABEL_27:
  v37 = v59;
  (v68)(v66, 1.0);
  v55 = sub_22F10AA88(v41, sub_22F11A068);

  if (v55 < 0 || (v55 & 0x4000000000000000) != 0)
  {
LABEL_32:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0540, &qword_22F7707F8);
    v56 = sub_22F741D50();

    goto LABEL_30;
  }

  sub_22F742060();

  v56 = v55;
LABEL_30:

  (*(v62 + 8))(v64, v27);
  (*(v63 + 8))(v17, v37);
  return v56;
}

uint64_t sub_22F109D4C(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_22F741A00())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = MEMORY[0x277D84FA0];
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = -1 << *(v1 + 32);
    v5 = v1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v1 + 56);

    v7 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB05F0, &qword_22F770838);
  v3 = sub_22F741AD0();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:

  sub_22F7419C0();
  type metadata accessor for PGStoryPromptSuggestionQuestion();
  sub_22F1205EC(&qword_27DAB07B8, type metadata accessor for PGStoryPromptSuggestionQuestion, MEMORY[0x277D85378]);
  result = sub_22F741470();
  v1 = v30;
  v5 = v31;
  v6 = v32;
  v7 = v33;
  v8 = v34;
LABEL_11:
  v12 = v3 + 56;
  while (v1 < 0)
  {
    v16 = sub_22F741A40();
    if (!v16)
    {
LABEL_34:
      sub_22F0FF590(v1);

      return v3;
    }

    *&v27 = v16;
    type metadata accessor for PGStoryPromptSuggestionQuestion();
    swift_dynamicCast();
LABEL_25:
    type metadata accessor for PGStoryPromptSuggestionQuestion();
    swift_dynamicCast();
    result = sub_22F741A70();
    v20 = -1 << *(v3 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) != 0)
    {
      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      do
      {
        if (++v22 == v24 && (v23 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v22);
      }

      while (v26 == -1);
      v13 = __clz(__rbit64(~v26)) + (v22 << 6);
    }

    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v3 + 48) + 40 * v13;
    *(v14 + 32) = v29;
    *v14 = v27;
    *(v14 + 16) = v28;
    ++*(v3 + 16);
  }

  if (v8)
  {
    v15 = v7;
LABEL_24:
    v18 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v19 = *(*(v1 + 48) + ((v15 << 9) | (8 * v18)));
    goto LABEL_25;
  }

  v17 = v7;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v8 = *(v5 + 8 * v15);
    ++v17;
    if (v8)
    {
      v7 = v15;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_22F10A0E0(uint64_t a1, unint64_t *a2, void *a3, unint64_t *a4)
{
  v7 = a1;
  v8 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_22F741A00())
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = MEMORY[0x277D84FA0];
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = -1 << *(v7 + 32);
    v11 = v7 + 56;
    v12 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v7 + 56);

    v32 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB05F0, &qword_22F770838);
  v9 = sub_22F741AD0();
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_4:

  sub_22F7419C0();
  sub_22F120634(0, a2, a3);
  sub_22F11FA28(a4, a2, a3);
  result = sub_22F741470();
  v7 = v36;
  v11 = v37;
  v12 = v38;
  v32 = v39;
  v13 = v40;
LABEL_11:
  v17 = v9 + 56;
  while (v7 < 0)
  {
    v21 = sub_22F741A40();
    if (!v21)
    {
LABEL_34:
      sub_22F0FF590(v7);

      return v9;
    }

    *&v33 = v21;
    sub_22F120634(0, a2, a3);
    swift_dynamicCast();
LABEL_25:
    sub_22F120634(0, a2, a3);
    swift_dynamicCast();
    result = sub_22F741A70();
    v25 = -1 << *(v9 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) != 0)
    {
      v18 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = 0;
      v29 = (63 - v25) >> 6;
      do
      {
        if (++v27 == v29 && (v28 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v30 = v27 == v29;
        if (v27 == v29)
        {
          v27 = 0;
        }

        v28 |= v30;
        v31 = *(v17 + 8 * v27);
      }

      while (v31 == -1);
      v18 = __clz(__rbit64(~v31)) + (v27 << 6);
    }

    *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = *(v9 + 48) + 40 * v18;
    *(v19 + 32) = v35;
    *v19 = v33;
    *(v19 + 16) = v34;
    ++*(v9 + 16);
  }

  if (v13)
  {
    v20 = v32;
LABEL_24:
    v23 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v24 = *(*(v7 + 48) + ((v20 << 9) | (8 * v23)));
    goto LABEL_25;
  }

  v22 = v32;
  while (1)
  {
    v20 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v20 >= ((v12 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v13 = *(v11 + 8 * v20);
    ++v22;
    if (v13)
    {
      v32 = v20;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_22F10A508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a5;
  v9 = sub_22F740710();
  v7[5] = v9;
  v7[6] = *(v9 - 8);
  v7[7] = swift_task_alloc();
  v10 = swift_task_alloc();
  v7[8] = v10;
  sub_22F740770();
  v11 = swift_task_alloc();
  v7[9] = v11;
  *v11 = v7;
  v11[1] = sub_22F10A634;

  return MEMORY[0x28219C948](v10, a4);
}

uint64_t sub_22F10A634(void *a1)
{
  *(*v2 + 80) = v1;

  if (v1)
  {
    v4 = sub_22F10A85C;
  }

  else
  {

    v4 = sub_22F10A750;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22F10A750()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  (*(v4 + 104))(v2, *MEMORY[0x277D3C640], v3);
  v5 = sub_22F740700();
  v6 = *(v4 + 8);
  v6(v2, v3);
  *(v0 + 88) = v5 & 1;
  sub_22F73FC80();
  v6(v1, v3);
  dispatch_group_leave(*(v0 + 32));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22F10A85C()
{
  v1 = *(v0 + 80);
  v2 = v1;
  v3 = sub_22F740B70();
  v4 = sub_22F7415E0();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 80);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22F0FC000, v3, v4, "Error getting MC status: %@", v7, 0xCu);
    sub_22F120ADC(v8, &qword_27DAB07D0, &qword_22F779400);
    MEMORY[0x2319033A0](v8, -1, -1);
    MEMORY[0x2319033A0](v7, -1, -1);
  }

  else
  {
  }

  dispatch_group_leave(*(v0 + 32));

  v11 = *(v0 + 8);

  return v11();
}

void __swiftcall PGStoryPromptSuggestionQuestionFactory.init()(PGStoryPromptSuggestionQuestionFactory *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata(retstr));

  [v1 init];
}

void *sub_22F10AA88(uint64_t a1, uint64_t (*a2)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v4 = sub_22F741A00();
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v5 = sub_22F10B9EC(v4, 0);

    a2 = a2(&v7, (v5 + 4), v4, a1);
    sub_22F0FF590(v7);
    if (a2 == v4)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v4 = *(a1 + 16);
    if (!v4)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v5;
}

void sub_22F10AB90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t **sub_22F10AC84(uint64_t a1, unint64_t *a2, void *a3, uint64_t *a4)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v8 = sub_22F741A00();
  if (!v8)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v9 = sub_22F10B9EC(v8, 0);

    a4 = sub_22F11B7AC(&v11, v9 + 4, v8, a1, a2, a3, a4);
    sub_22F0FF590(v11);
    if (a4 == v8)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v8 = *(a1 + 16);
    if (!v8)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v9;
}

void sub_22F10ADA0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_22F10AE8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0EC0, &unk_22F771510);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_22F10AF5C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 16 * a3), 16 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0560, &qword_22F770808);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 17;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_22F10B068(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
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

void *sub_22F10B220(unint64_t a1, unint64_t *a2, void *a3)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_22F741A00();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v7 = sub_22F10B9EC(v6, 0);

    a3 = sub_22F11D658(&v9, v7 + 4, v6, a1, a2, a3);
    sub_22F0FF590(v9);
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v7;
}

void *sub_22F10B3D0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0610, &qword_22F771500);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_22F10B4C8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0708, &qword_22F7708B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_22F10B5FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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
  v9 = ((v7 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 2) + (v9 >> 63));
  return result;
}

void *sub_22F10B698(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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

void *sub_22F10B728(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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

void *sub_22F10B7CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_22F10B8EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a5, a6) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v11)
  {
    if ((result - v12) != 0x8000000000000000 || v11 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v11);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_22F10B9EC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_22F10BA74(uint64_t a1, uint64_t a2)
{
  sub_22F742170();
  v4 = [*(a1 + 16) localIdentifier];
  sub_22F740E20();

  sub_22F740D60();

  sub_22F7421D0();
  result = sub_22F7419A0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_22F10BB58(uint64_t a1, uint64_t a2)
{
  sub_22F741800();
  result = sub_22F7419A0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_22F10BBDC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_22F742170();
  sub_22F740D60();
  v8 = sub_22F7421D0();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_22F742040() & 1) != 0)
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

    sub_22F112C78(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22F10BD2C(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v4 = type metadata accessor for MomentGroundedLocation(0);
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v33 = &v32 - v9;
  v34 = v2;
  v10 = *v2;
  sub_22F742170();
  v11 = v4[7];
  sub_22F73FF10();
  sub_22F1205EC(&qword_27DAB0780, MEMORY[0x277D3BFE8], MEMORY[0x277D3BFF0]);
  sub_22F740D50();
  v38 = *(a2 + v4[8]);
  MEMORY[0x231901D30]();
  v37 = *(a2 + v4[9]);
  MEMORY[0x231901D30]();
  v12 = sub_22F7421D0();
  v13 = v10 + 56;
  v14 = -1 << *(v10 + 32);
  v15 = v12 & ~v14;
  if ((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = *(v5 + 72);
    v36 = v17;
    do
    {
      v18 = v17 * v15;
      sub_22F12067C(*(v10 + 48) + v17 * v15, v7, type metadata accessor for MomentGroundedLocation);
      if ((sub_22F73FEE0() & 1) != 0 && *&v7[v4[8]] == v38)
      {
        v19 = v4[9];
        v20 = v16;
        v21 = v4;
        v22 = v13;
        v23 = v10;
        v24 = v11;
        v25 = a2;
        v26 = *&v7[v19];
        sub_22F1206E4(v7, type metadata accessor for MomentGroundedLocation);
        v27 = v26 == v37;
        a2 = v25;
        v11 = v24;
        v10 = v23;
        v13 = v22;
        v4 = v21;
        v16 = v20;
        v17 = v36;
        if (v27)
        {
          sub_22F1206E4(a2, type metadata accessor for MomentGroundedLocation);
          sub_22F12067C(*(v10 + 48) + v18, v35, type metadata accessor for MomentGroundedLocation);
          return 0;
        }
      }

      else
      {
        sub_22F1206E4(v7, type metadata accessor for MomentGroundedLocation);
      }

      v15 = (v15 + 1) & v16;
    }

    while (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  v29 = v34;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = v33;
  sub_22F12067C(a2, v33, type metadata accessor for MomentGroundedLocation);
  v39 = *v29;
  sub_22F112DF8(v31, v15, isUniquelyReferenced_nonNull_native);
  *v29 = v39;
  sub_22F120744(a2, v35, type metadata accessor for MomentGroundedLocation);
  return 1;
}

uint64_t sub_22F10C080(uint64_t a1, void *a2)
{
  v33 = a1;
  v4 = type metadata accessor for NamedGroundedLocation(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v30 = (&v30 - v9);
  v31 = v2;
  v10 = *v2;
  sub_22F742170();
  v11 = *a2;
  v12 = a2[1];
  sub_22F740D60();
  v38 = v4;
  v13 = *(v4 + 20);
  v32 = a2;
  v14 = a2 + v13;
  v15 = type metadata accessor for MomentGroundedLocation(0);
  v16 = v15[7];
  sub_22F73FF10();
  sub_22F1205EC(&qword_27DAB0780, MEMORY[0x277D3BFE8], MEMORY[0x277D3BFF0]);
  v36 = v16;
  sub_22F740D50();
  v35 = *&v14[v15[8]];
  MEMORY[0x231901D30]();
  v17 = v15[9];
  v37 = v14;
  v34 = *&v14[v17];
  MEMORY[0x231901D30]();
  v18 = sub_22F7421D0();
  v39 = v10;
  v19 = -1 << *(v10 + 32);
  v20 = v18 & ~v19;
  if ((*(v10 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v21 = ~v19;
    v22 = *(v5 + 72);
    while (1)
    {
      sub_22F12067C(*(v39 + 48) + v22 * v20, v7, type metadata accessor for NamedGroundedLocation);
      v23 = *v7 == v11 && v7[1] == v12;
      if (v23 || (sub_22F742040() & 1) != 0)
      {
        v24 = v7 + *(v38 + 20);
        if ((sub_22F73FEE0() & 1) != 0 && *&v24[v15[8]] == v35 && *&v24[v15[9]] == v34)
        {
          break;
        }
      }

      sub_22F1206E4(v7, type metadata accessor for NamedGroundedLocation);
      v20 = (v20 + 1) & v21;
      if (((*(v10 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    sub_22F1206E4(v7, type metadata accessor for NamedGroundedLocation);
    sub_22F1206E4(v32, type metadata accessor for NamedGroundedLocation);
    sub_22F12067C(*(v39 + 48) + v22 * v20, v33, type metadata accessor for NamedGroundedLocation);
    return 0;
  }

  else
  {
LABEL_13:
    v26 = v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v32;
    v29 = v30;
    sub_22F12067C(v32, v30, type metadata accessor for NamedGroundedLocation);
    v40 = *v26;
    sub_22F113120(v29, v20, isUniquelyReferenced_nonNull_native);
    *v26 = v40;
    sub_22F120744(v28, v33, type metadata accessor for NamedGroundedLocation);
    return 1;
  }
}

uint64_t sub_22F10C40C(uint64_t a1, void *a2)
{
  v30 = a1;
  v4 = type metadata accessor for Song(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v27 = (&v26 - v9);
  v28 = v2;
  v10 = *v2;
  sub_22F742170();
  v11 = *a2;
  v12 = a2[1];
  v29 = a2;
  sub_22F740D60();
  v13 = sub_22F7421D0();
  v14 = -1 << *(v10 + 32);
  v15 = v13 & ~v14;
  if ((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = *(v5 + 72);
    while (1)
    {
      sub_22F12067C(*(v10 + 48) + v17 * v15, v7, type metadata accessor for Song);
      if (*v7 == v11 && v7[1] == v12)
      {
        break;
      }

      v19 = sub_22F742040();
      sub_22F1206E4(v7, type metadata accessor for Song);
      if (v19)
      {
        goto LABEL_11;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_22F1206E4(v7, type metadata accessor for Song);
LABEL_11:
    sub_22F1206E4(v29, type metadata accessor for Song);
    sub_22F12067C(*(v10 + 48) + v17 * v15, v30, type metadata accessor for Song);
    return 0;
  }

  else
  {
LABEL_9:
    v20 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v29;
    v23 = v27;
    sub_22F12067C(v29, v27, type metadata accessor for Song);
    v31 = *v20;
    sub_22F1134B0(v23, v15, isUniquelyReferenced_nonNull_native);
    v24 = v30;
    *v20 = v31;
    sub_22F120744(v22, v24, type metadata accessor for Song);
    return 1;
  }
}

uint64_t sub_22F10C720(uint64_t *a1, void *a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_22F741A10();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v35;
    }

    else
    {
      result = sub_22F741A00();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_22F10F704(v15, result + 1, a4, a5, a6);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_22F112834(v28 + 1, a4, a5);
        }

        v29 = v16;
        sub_22F10BB58(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = sub_22F741800();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_22F741810();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *v11;
      v26 = a2;
      sub_22F11376C(v26, v21, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v36;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_22F10C984(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22F73F690();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_22F1205EC(&qword_2810AC710, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  v33 = a2;
  v11 = sub_22F740D40();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_22F1205EC(&qword_2810AC700, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v21 = sub_22F740DE0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_22F1138F0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_22F10CC88(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_22F742170();
  sub_22F740D60();

  v5 = sub_22F7421D0();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 > 2)
      {
        if (v9 == 3)
        {
          v10 = 0x6557664F74726170;
          v11 = 0xEA00000000006B65;
        }

        else
        {
          if (v9 == 4)
          {
            v10 = 0x616559664F796164;
          }

          else
          {
            v10 = 0x6144664F74726170;
          }

          if (v9 == 4)
          {
            v11 = 0xE900000000000072;
          }

          else
          {
            v11 = 0xE900000000000079;
          }
        }
      }

      else if (*(*(v4 + 48) + v7))
      {
        if (v9 == 1)
        {
          v10 = 0x6E6F73616573;
        }

        else
        {
          v10 = 0x59664F6567646577;
        }

        if (v9 == 1)
        {
          v11 = 0xE600000000000000;
        }

        else
        {
          v11 = 0xEB00000000726165;
        }
      }

      else
      {
        v11 = 0xE400000000000000;
        v10 = 1918985593;
      }

      v12 = 0xE900000000000079;
      v13 = 0x616559664F796164;
      if (a2 == 4)
      {
        v12 = 0xE900000000000072;
      }

      else
      {
        v13 = 0x6144664F74726170;
      }

      if (a2 == 3)
      {
        v13 = 0x6557664F74726170;
        v12 = 0xEA00000000006B65;
      }

      v14 = 0x59664F6567646577;
      if (a2 == 1)
      {
        v14 = 0x6E6F73616573;
      }

      v15 = 0xEB00000000726165;
      if (a2 == 1)
      {
        v15 = 0xE600000000000000;
      }

      if (!a2)
      {
        v14 = 1918985593;
        v15 = 0xE400000000000000;
      }

      v16 = a2 <= 2u ? v14 : v13;
      v17 = a2 <= 2u ? v15 : v12;
      if (v10 == v16 && v11 == v17)
      {
        break;
      }

      v18 = sub_22F742040();

      if (v18)
      {
        goto LABEL_43;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_41;
      }
    }

LABEL_43:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_41:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    sub_22F113D48(a2, v7, isUniquelyReferenced_nonNull_native);
    *v21 = v23;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_22F10D004(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22F73F990();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_22F1205EC(&qword_2810AC6D0, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
  v33 = a2;
  v11 = sub_22F740D40();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_22F1205EC(&unk_2810AC6C0, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
      v21 = sub_22F740DE0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_22F114118(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_22F10D2E4(uint64_t a1, void *a2)
{
  v22 = a1;
  v4 = type metadata accessor for PublicEvent(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  sub_22F742170();
  v21 = a2;
  v9 = *a2;
  MEMORY[0x231901D70](*a2);
  v10 = sub_22F7421D0();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v5 + 72);
    while (1)
    {
      sub_22F12067C(*(v8 + 48) + v14 * v12, v7, type metadata accessor for PublicEvent);
      v15 = *v7;
      sub_22F1206E4(v7, type metadata accessor for PublicEvent);
      if (v15 == v9)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_22F1206E4(v21, type metadata accessor for PublicEvent);
    sub_22F12067C(*(v8 + 48) + v14 * v12, v22, type metadata accessor for PublicEvent);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v21;
    sub_22F12067C(v21, v7, type metadata accessor for PublicEvent);
    v23[0] = *v2;
    sub_22F1143E0(v7, v12, isUniquelyReferenced_nonNull_native);
    v18 = v22;
    *v2 = v23[0];
    sub_22F120744(v17, v18, type metadata accessor for PublicEvent);
    return 1;
  }
}

uint64_t sub_22F10D518(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_22F741A10();

    if (v8)
    {

      type metadata accessor for ImportantEntitiesGraphInferenceMoment();
      swift_dynamicCast();
      result = 0;
      *a1 = v33;
    }

    else
    {
      result = sub_22F741A00();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_22F10FAFC(v7, result + 1);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_22F111708(v28 + 1);
        }

        sub_22F10BA74(v29, v27);

        *v3 = v27;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v30 = v2;
    sub_22F742170();
    v10 = [*(a2 + 16) localIdentifier];
    sub_22F740E20();

    sub_22F740D60();

    v11 = sub_22F7421D0();
    v12 = -1 << *(v6 + 32);
    v13 = v11 & ~v12;
    if ((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      v32 = ~v12;
      while (1)
      {
        v14 = *(*(*(v6 + 48) + 8 * v13) + 16);

        v15 = [v14 localIdentifier];
        v16 = sub_22F740E20();
        v18 = v17;

        v19 = [*(a2 + 16) localIdentifier];
        v20 = sub_22F740E20();
        v22 = v21;

        if (v16 == v20 && v18 == v22)
        {

          goto LABEL_22;
        }

        v24 = sub_22F742040();

        if (v24)
        {
          break;
        }

        v13 = (v13 + 1) & v32;
        if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

LABEL_22:
      *a1 = *(*(v6 + 48) + 8 * v13);

      return 0;
    }

    else
    {
LABEL_15:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = *v30;

      sub_22F114668(v26, v13, isUniquelyReferenced_nonNull_native);
      *v30 = v34;
      *a1 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t sub_22F10D88C(uint64_t a1, void *a2)
{
  v54 = a1;
  v4 = sub_22F73F690();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v57 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v7 - 8);
  v61 = &v51 - v8;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB05B0, &unk_22F771430);
  MEMORY[0x28223BE20](v60);
  v10 = &v51 - v9;
  v11 = type metadata accessor for SongSource(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v52 = (&v51 - v16);
  v53 = v2;
  v17 = *v2;
  sub_22F742170();
  SongSource.hash(into:)(v69);
  v18 = sub_22F7421D0();
  v65 = v17 + 56;
  v66 = v17;
  v19 = -1 << *(v17 + 32);
  v20 = v18 & ~v19;
  v21 = *(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20;
  v67 = a2;
  if ((v21 & 1) == 0)
  {
LABEL_28:
    v47 = v53;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v67;
    v50 = v52;
    sub_22F12067C(v67, v52, type metadata accessor for SongSource);
    v69[0] = *v47;
    sub_22F1148BC(v50, v20, isUniquelyReferenced_nonNull_native);
    *v47 = v69[0];
    sub_22F120744(v49, v54, type metadata accessor for SongSource);
    return 1;
  }

  v63 = ~v19;
  v22 = *a2;
  v23 = a2[1];
  v68 = v22;
  v24 = (v5 + 48);
  v55 = (v5 + 32);
  v59 = (v5 + 8);
  v64 = *(v12 + 72);
  v56 = v11;
  while (1)
  {
    v25 = *(v66 + 48);
    v62 = v64 * v20;
    sub_22F12067C(v25 + v64 * v20, v14, type metadata accessor for SongSource);
    v26 = *v14 == v68 && v14[1] == v23;
    if (!v26 && (sub_22F742040() & 1) == 0)
    {
      goto LABEL_5;
    }

    v27 = v23;
    v28 = *(v11 + 28);
    v29 = *(v60 + 48);
    sub_22F12057C(v14 + v28, v10);
    sub_22F12057C(v67 + v28, &v10[v29]);
    v30 = *v24;
    if ((*v24)(v10, 1, v4) == 1)
    {
      v31 = v30(&v10[v29], 1, v4);
      v23 = v27;
      if (v31 != 1)
      {
        goto LABEL_4;
      }

      sub_22F120ADC(v10, &qword_27DAB0920, &qword_22F770B20);
    }

    else
    {
      sub_22F12057C(v10, v61);
      if (v30(&v10[v29], 1, v4) == 1)
      {
        (*v59)(v61, v4);
        v23 = v27;
LABEL_4:
        sub_22F120ADC(v10, &unk_27DAB05B0, &unk_22F771430);
LABEL_5:
        sub_22F1206E4(v14, type metadata accessor for SongSource);
        goto LABEL_6;
      }

      v32 = &v10[v29];
      v33 = v4;
      v34 = v61;
      v35 = v57;
      (*v55)(v57, v32, v33);
      sub_22F1205EC(&qword_2810AC700, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v58 = sub_22F740DE0();
      v36 = *v59;
      v37 = v35;
      v4 = v33;
      (*v59)(v37, v33);
      v38 = v34;
      v11 = v56;
      v36(v38, v33);
      sub_22F120ADC(v10, &qword_27DAB0920, &qword_22F770B20);
      v23 = v27;
      if ((v58 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v39 = *(v11 + 32);
    v40 = (v14 + v39);
    v41 = *(v14 + v39 + 8);
    v42 = (v67 + v39);
    v43 = v42[1];
    if (!v41)
    {
      if (!v43)
      {
        break;
      }

      goto LABEL_5;
    }

    if (!v43)
    {
      goto LABEL_5;
    }

    if (*v40 == *v42 && v41 == v43)
    {
      break;
    }

    v45 = sub_22F742040();
    sub_22F1206E4(v14, type metadata accessor for SongSource);
    if (v45)
    {
      goto LABEL_27;
    }

LABEL_6:
    v20 = (v20 + 1) & v63;
    if (((*(v65 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  sub_22F1206E4(v14, type metadata accessor for SongSource);
LABEL_27:
  sub_22F1206E4(v67, type metadata accessor for SongSource);
  sub_22F12067C(*(v66 + 48) + v62, v54, type metadata accessor for SongSource);
  return 0;
}

uint64_t sub_22F10DF08(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  sub_22F742170();
  sub_22F2B493C(a2);
  sub_22F740D60();

  v6 = sub_22F7421D0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_84:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_22F114F24(a2, v8, isUniquelyReferenced_nonNull_native);
    *v3 = v21;
    result = 1;
    goto LABEL_87;
  }

  v9 = ~v7;
  while (2)
  {
    v10 = 0xE500000000000000;
    v11 = 0x7465737341;
    switch(*(*(v5 + 48) + v8))
    {
      case 1:
        v11 = 0x6C6F437465737341;
        v10 = 0xEF6E6F697463656CLL;
        break;
      case 2:
        v10 = 0xE600000000000000;
        v11 = 0x6E6F73726550;
        break;
      case 3:
        v10 = 0xE300000000000000;
        v11 = 7628112;
        break;
      case 4:
        v11 = 0x6D75626C41;
        break;
      case 5:
        v11 = 0x656E656353;
        break;
      case 6:
        v10 = 0xE700000000000000;
        v11 = 0x687361486F6547;
        break;
      case 7:
        v11 = 0x73756C4365746144;
        v10 = 0xEB00000000726574;
        break;
      case 8:
        v10 = 0xE400000000000000;
        v11 = 1885958740;
        break;
      case 9:
        v11 = 0x657469726F766146;
        v10 = 0xE900000000000073;
        break;
      case 0xA:
        v11 = 0x746163696C707544;
        v10 = 0xEA00000000007365;
        break;
      case 0xB:
        v10 = 0xE400000000000000;
        v11 = 1701670728;
        break;
      case 0xC:
        v10 = 0xE300000000000000;
        v11 = 7954756;
        break;
      case 0xD:
        v10 = 0xE700000000000000;
        v11 = 0x7961646B656557;
        break;
      case 0xE:
        v11 = 0x68746E6F4DLL;
        break;
      case 0xF:
        v10 = 0xE700000000000000;
        v11 = 0x72657472617551;
        break;
      case 0x10:
        v10 = 0xE400000000000000;
        v11 = 1918985561;
        break;
      case 0x11:
        v10 = 0xE400000000000000;
        v11 = 2037672259;
        break;
      case 0x12:
        v11 = 0x6574617453;
        break;
      case 0x13:
        v10 = 0xE700000000000000;
        v11 = 0x7972746E756F43;
        break;
      case 0x14:
        v11 = 0x764563696C627550;
        v10 = 0xEB00000000746E65;
        break;
      case 0x15:
        v11 = 0xD000000000000013;
        v10 = 0x800000022F78E7B0;
        break;
      case 0x16:
        v11 = 0xD000000000000016;
        v10 = 0x800000022F78E7D0;
        break;
      case 0x17:
        v11 = 0x656D726F66726550;
        v10 = 0xE900000000000072;
        break;
      case 0x18:
        v10 = 0xE800000000000000;
        v11 = 0x7373656E69737542;
        break;
      case 0x19:
        v11 = 0xD000000000000010;
        v10 = 0x800000022F78E800;
        break;
      default:
        break;
    }

    v12 = 0xE500000000000000;
    v13 = 0x7465737341;
    switch(a2)
    {
      case 1:
        v12 = 0xEF6E6F697463656CLL;
        if (v11 == 0x6C6F437465737341)
        {
          goto LABEL_78;
        }

        goto LABEL_79;
      case 2:
        v12 = 0xE600000000000000;
        if (v11 != 0x6E6F73726550)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 3:
        v12 = 0xE300000000000000;
        if (v11 != 7628112)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 4:
        if (v11 != 0x6D75626C41)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 5:
        v16 = 1852138323;
        goto LABEL_68;
      case 6:
        v12 = 0xE700000000000000;
        if (v11 != 0x687361486F6547)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 7:
        v14 = 0x73756C4365746144;
        v15 = 7497076;
        goto LABEL_58;
      case 8:
        v12 = 0xE400000000000000;
        if (v11 != 1885958740)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 9:
        v12 = 0xE900000000000073;
        if (v11 != 0x657469726F766146)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 10:
        v12 = 0xEA00000000007365;
        if (v11 != 0x746163696C707544)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 11:
        v12 = 0xE400000000000000;
        if (v11 != 1701670728)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 12:
        v12 = 0xE300000000000000;
        if (v11 != 7954756)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 13:
        v12 = 0xE700000000000000;
        if (v11 != 0x7961646B656557)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 14:
        if (v11 != 0x68746E6F4DLL)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 15:
        v12 = 0xE700000000000000;
        if (v11 != 0x72657472617551)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 16:
        v12 = 0xE400000000000000;
        if (v11 != 1918985561)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 17:
        v12 = 0xE400000000000000;
        if (v11 != 2037672259)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 18:
        v16 = 1952543827;
LABEL_68:
        if (v11 != (v16 & 0xFFFF0000FFFFFFFFLL | 0x6500000000))
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 19:
        v12 = 0xE700000000000000;
        v13 = 0x7972746E756F43;
        goto LABEL_77;
      case 20:
        v14 = 0x764563696C627550;
        v15 = 7630437;
LABEL_58:
        v12 = v15 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v11 != v14)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 21:
        v12 = 0x800000022F78E7B0;
        if (v11 != 0xD000000000000013)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 22:
        v12 = 0x800000022F78E7D0;
        if (v11 != 0xD000000000000016)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 23:
        v12 = 0xE900000000000072;
        if (v11 != 0x656D726F66726550)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 24:
        v12 = 0xE800000000000000;
        if (v11 != 0x7373656E69737542)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      case 25:
        v12 = 0x800000022F78E800;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_79;
        }

        goto LABEL_78;
      default:
LABEL_77:
        if (v11 != v13)
        {
          goto LABEL_79;
        }

LABEL_78:
        if (v10 != v12)
        {
LABEL_79:
          v17 = sub_22F742040();

          if (v17)
          {
            goto LABEL_86;
          }

          v8 = (v8 + 1) & v9;
          if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_84;
          }

          continue;
        }

LABEL_86:
        result = 0;
        LOBYTE(a2) = *(*(v5 + 48) + v8);
LABEL_87:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_22F10E5F4(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_22F742170();
  sub_22F2897A0(a2);
  sub_22F740D60();

  v5 = sub_22F7421D0();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_102:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v22;
    sub_22F1156B4(a2, v7, isUniquelyReferenced_nonNull_native);
    *v22 = v24;
    result = 1;
    goto LABEL_105;
  }

  v8 = ~v6;
  while (2)
  {
    v9 = 0xED0000657461645FLL;
    v10 = 0x6E6F5F6E656B6174;
    switch(*(*(v4 + 48) + v7))
    {
      case 1:
        v9 = 0xED0000706972745FLL;
        v10 = 0x6E6F5F6E656B6174;
        break;
      case 2:
        v10 = 0x5F6F65675F736168;
        v9 = 0xEC00000068736168;
        break;
      case 3:
        v10 = 0xD000000000000011;
        v9 = 0x800000022F78E520;
        break;
      case 4:
        v10 = 0xD000000000000010;
        v9 = 0x800000022F78E540;
        break;
      case 5:
        v9 = 0xEF6E6F737265705FLL;
        goto LABEL_24;
      case 6:
        v9 = 0xEC0000007465705FLL;
LABEL_24:
        v10 = 0x736E6961746E6F63;
        break;
      case 7:
        v10 = 0x736E6961746E6F63;
        goto LABEL_28;
      case 8:
        v10 = 0x666F5F646C696863;
LABEL_28:
        v9 = 0xEE00656E6563735FLL;
        break;
      case 9:
        v10 = 0x6F7661665F736177;
        v9 = 0xED00006465746972;
        break;
      case 0xA:
        v10 = 0xD00000000000001ALL;
        v9 = 0x800000022F78E5A0;
        break;
      case 0xB:
        v10 = 0x74615F6E656B6174;
        v9 = 0xED0000656D6F685FLL;
        break;
      case 0xC:
        v10 = 0xD000000000000015;
        v9 = 0x800000022F78E5D0;
        break;
      case 0xD:
        v10 = 0x61635F666F5F7369;
        v9 = 0xEE0079726F676574;
        break;
      case 0xE:
        v10 = 0xD000000000000011;
        v9 = 0x800000022F78E600;
        break;
      case 0xF:
        v10 = 0x656D726F66726570;
        v9 = 0xEC00000079625F64;
        break;
      case 0x10:
        v9 = 0xE700000000000000;
        v10 = 0x74615F646C6568;
        break;
      case 0x11:
        v10 = 0xD000000000000010;
        v9 = 0x800000022F78E630;
        break;
      case 0x12:
        v9 = 0xE300000000000000;
        v10 = 7954788;
        break;
      case 0x13:
        v9 = 0xE700000000000000;
        v10 = 0x7961646B656577;
        break;
      case 0x14:
        v9 = 0xE500000000000000;
        v10 = 0x68746E6F6DLL;
        break;
      case 0x15:
        v9 = 0xE700000000000000;
        v10 = 0x72657472617571;
        break;
      case 0x16:
        v9 = 0xE400000000000000;
        v10 = 1918985593;
        break;
      case 0x17:
        v9 = 0xE800000000000000;
        v10 = 0x65746174735F6E69;
        break;
      case 0x18:
        v10 = 0x746E756F635F6E69;
        v9 = 0xEA00000000007972;
        break;
      case 0x19:
        v9 = 0xED0000797469635FLL;
        goto LABEL_36;
      case 0x1A:
        v9 = 0xEE0065746174735FLL;
LABEL_36:
        v10 = 0x6E695F6E656B6174;
        break;
      case 0x1B:
        v10 = 0xD000000000000010;
        v9 = 0x800000022F78E690;
        break;
      case 0x1C:
        v10 = 0xD000000000000012;
        v9 = 0x800000022F78E6B0;
        break;
      case 0x1D:
        v10 = 0xD000000000000011;
        v9 = 0x800000022F78E6D0;
        break;
      case 0x1E:
        v10 = 0xD000000000000017;
        v9 = 0x800000022F78E6F0;
        break;
      default:
        break;
    }

    v11 = 0x6E6F5F6E656B6174;
    v12 = 0xED0000657461645FLL;
    switch(a2)
    {
      case 1:
        v12 = 0xED0000706972745FLL;
        if (v10 == 0x6E6F5F6E656B6174)
        {
          goto LABEL_95;
        }

        goto LABEL_96;
      case 2:
        v15 = 0x5F6F65675F736168;
        v16 = 1752392040;
        goto LABEL_59;
      case 3:
        v12 = 0x800000022F78E520;
        if (v10 != 0xD000000000000011)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 4:
        v12 = 0x800000022F78E540;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 5:
        v12 = 0xEF6E6F737265705FLL;
        goto LABEL_73;
      case 6:
        v12 = 0xEC0000007465705FLL;
LABEL_73:
        if (v10 != 0x736E6961746E6F63)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 7:
        v17 = 0x736E6961746E6F63;
        goto LABEL_80;
      case 8:
        v17 = 0x666F5F646C696863;
LABEL_80:
        v18 = 0x656E6563735FLL;
        goto LABEL_81;
      case 9:
        v13 = 0x6F7661665F736177;
        v14 = 0x6465746972;
        goto LABEL_52;
      case 10:
        v12 = 0x800000022F78E5A0;
        if (v10 != 0xD00000000000001ALL)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 11:
        v13 = 0x74615F6E656B6174;
        v14 = 0x656D6F685FLL;
LABEL_52:
        v12 = v14 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        if (v10 != v13)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 12:
        v12 = 0x800000022F78E5D0;
        if (v10 != 0xD000000000000015)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 13:
        v17 = 0x61635F666F5F7369;
        v18 = 0x79726F676574;
LABEL_81:
        v12 = v18 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v10 != v17)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 14:
        v12 = 0x800000022F78E600;
        if (v10 != 0xD000000000000011)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 15:
        v15 = 0x656D726F66726570;
        v16 = 2036490084;
LABEL_59:
        v12 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v10 != v15)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 16:
        v12 = 0xE700000000000000;
        if (v10 != 0x74615F646C6568)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 17:
        v12 = 0x800000022F78E630;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 18:
        v12 = 0xE300000000000000;
        if (v10 != 7954788)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 19:
        v12 = 0xE700000000000000;
        if (v10 != 0x7961646B656577)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 20:
        v12 = 0xE500000000000000;
        if (v10 != 0x68746E6F6DLL)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 21:
        v12 = 0xE700000000000000;
        if (v10 != 0x72657472617571)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 22:
        v12 = 0xE400000000000000;
        if (v10 != 1918985593)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 23:
        v12 = 0xE800000000000000;
        if (v10 != 0x65746174735F6E69)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 24:
        v12 = 0xEA00000000007972;
        if (v10 != 0x746E756F635F6E69)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 25:
        v12 = 0xED0000797469635FLL;
        goto LABEL_100;
      case 26:
        v12 = 0xEE0065746174735FLL;
LABEL_100:
        if (v10 != 0x6E695F6E656B6174)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 27:
        v12 = 0x800000022F78E690;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 28:
        v12 = 0x800000022F78E6B0;
        if (v10 != 0xD000000000000012)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      case 29:
        v11 = 0xD000000000000011;
        v12 = 0x800000022F78E6D0;
        goto LABEL_94;
      case 30:
        v12 = 0x800000022F78E6F0;
        if (v10 != 0xD000000000000017)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      default:
LABEL_94:
        if (v10 != v11)
        {
          goto LABEL_96;
        }

LABEL_95:
        if (v9 != v12)
        {
LABEL_96:
          v19 = sub_22F742040();

          if (v19)
          {
            goto LABEL_104;
          }

          v7 = (v7 + 1) & v8;
          if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
          {
            goto LABEL_102;
          }

          continue;
        }

LABEL_104:
        result = 0;
        LOBYTE(a2) = *(*(v4 + 48) + v7);
LABEL_105:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_22F10EF00(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22F7409A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_22F1205EC(&qword_2810A94A0, MEMORY[0x277D1F370], MEMORY[0x277D1F378]);
  v33 = a2;
  v11 = sub_22F740D40();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_22F1205EC(&unk_2810A9490, MEMORY[0x277D1F370], MEMORY[0x277D1F380]);
      v21 = sub_22F740DE0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_22F116050(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_22F10F204(unint64_t *a1, unint64_t a2)
{
  v5 = *v2;
  sub_22F742170();
  sub_22F2594CC(v15, a2);
  v6 = sub_22F7421D0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {

      v11 = sub_22F17B5C0(v10, a2);

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v5 + 48) + 8 * v8);

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15[0] = *v2;

    sub_22F116318(v13, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v15[0];
    *a1 = a2;
    return 1;
  }
}

uint64_t sub_22F10F38C(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_22F741A10();

    if (v17)
    {

      sub_22F120634(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_22F741A00();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_22F10F8FC(v15, result + 1, a5, a6, a3, a4);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_22F112834(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_22F10BB58(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_22F120634(0, a3, a4);
    v19 = sub_22F741800();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_22F741810();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_22F113BB8(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_22F10F624(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_22F742160();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_22F1164A4(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_22F10F704(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_22F741AC0();
    v21 = v8;
    sub_22F7419C0();
    if (sub_22F741A40())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          sub_22F112834(v15 + 1, a3, a4);
        }

        v8 = v21;
        result = sub_22F741800();
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (sub_22F741A40());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

uint64_t sub_22F10F8FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_22F741AC0();
    v23 = v10;
    sub_22F7419C0();
    if (sub_22F741A40())
    {
      sub_22F120634(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_22F112834(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_22F741800();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_22F741A40());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_22F10FAFC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0778, &qword_22F7708F0);
    v2 = sub_22F741AC0();
    v16 = v2;
    sub_22F7419C0();
    if (sub_22F741A40())
    {
      type metadata accessor for ImportantEntitiesGraphInferenceMoment();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_22F111708(v10 + 1);
        }

        v2 = v16;
        sub_22F742170();
        v3 = [*(v15 + 16) localIdentifier];
        sub_22F740E20();

        sub_22F740D60();

        result = sub_22F7421D0();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_22F741A40());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_22F10FDA0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0770, &qword_22F78ABC0);
  result = sub_22F741AB0();
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
      sub_22F742170();
      sub_22F740D60();
      result = sub_22F7421D0();
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

uint64_t sub_22F110000(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for MomentGroundedLocation(0);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0790, &qword_22F770900);
  result = sub_22F741AB0();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v34 = *(v32 + 72);
      sub_22F120744(v20 + v34 * (v17 | (v9 << 6)), v5, type metadata accessor for MomentGroundedLocation);
      sub_22F742170();
      v21 = v33;
      sub_22F73FF10();
      sub_22F1205EC(&qword_27DAB0780, MEMORY[0x277D3BFE8], MEMORY[0x277D3BFF0]);
      sub_22F740D50();
      MEMORY[0x231901D30](*&v5[*(v21 + 32)]);
      MEMORY[0x231901D30](*&v5[*(v21 + 36)]);
      result = sub_22F7421D0();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_22F120744(v5, *(v8 + 48) + v16 * v34, type metadata accessor for MomentGroundedLocation);
      ++*(v8 + 16);
      v6 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_22F110380(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for NamedGroundedLocation(0);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0788, &qword_22F7708F8);
  result = sub_22F741AB0();
  v8 = result;
  if (*(v6 + 16))
  {
    v32 = v2;
    v33 = v5;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    v34 = v6;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v37 = *(v35 + 72);
      sub_22F120744(v20 + v37 * (v17 | (v9 << 6)), v5, type metadata accessor for NamedGroundedLocation);
      sub_22F742170();
      sub_22F740D60();
      v21 = &v5[*(v36 + 20)];
      v22 = type metadata accessor for MomentGroundedLocation(0);
      sub_22F73FF10();
      sub_22F1205EC(&qword_27DAB0780, MEMORY[0x277D3BFE8], MEMORY[0x277D3BFF0]);
      sub_22F740D50();
      MEMORY[0x231901D30](*&v21[*(v22 + 32)]);
      MEMORY[0x231901D30](*&v21[*(v22 + 36)]);
      result = sub_22F7421D0();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        v5 = v33;
        v6 = v34;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      v5 = v33;
      v6 = v34;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_22F120744(v5, *(v8 + 48) + v16 * v37, type metadata accessor for NamedGroundedLocation);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_22F110730(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Song(0);
  v31 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0598, &unk_22F7787F0);
  result = sub_22F741AB0();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v31 + 72);
      sub_22F120744(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5, type metadata accessor for Song);
      sub_22F742170();
      sub_22F740D60();
      result = sub_22F7421D0();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_22F120744(v5, *(v8 + 48) + v16 * v20, type metadata accessor for Song);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero((v6 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_22F110A38(uint64_t a1)
{
  v2 = v1;
  v36 = sub_22F73F690();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0768, &qword_22F7708E8);
  result = sub_22F741AB0();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_22F1205EC(&qword_2810AC710, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      result = sub_22F740D40();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_22F110D94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0700, &qword_22F7708B0);
  result = sub_22F741AB0();
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_22F742170();
      sub_22F740D60();

      result = sub_22F7421D0();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22F1110A8(uint64_t a1)
{
  v2 = v1;
  v36 = sub_22F73F990();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0668, &unk_22F77A310);
  result = sub_22F741AB0();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_22F1205EC(&qword_2810AC6D0, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      result = sub_22F740D40();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_22F111404(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for PublicEvent(0);
  v31 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0580, &qword_22F770818);
  result = sub_22F741AB0();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v31 + 72);
      sub_22F120744(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5, type metadata accessor for PublicEvent);
      sub_22F742170();
      MEMORY[0x231901D70](*v5);
      result = sub_22F7421D0();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_22F120744(v5, *(v8 + 48) + v16 * v20, type metadata accessor for PublicEvent);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero((v6 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_22F111708(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0778, &qword_22F7708F0);
  result = sub_22F741AB0();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_22F742170();
      v18 = [*(v17 + 16) localIdentifier];
      sub_22F740E20();

      sub_22F740D60();

      result = sub_22F7421D0();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22F111998(uint64_t a1)
{
  v2 = v1;
  v44 = sub_22F73F690();
  v3 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v39 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v5 - 8);
  v43 = &v35 - v6;
  v46 = type metadata accessor for SongSource(0);
  v42 = *(v46 - 1);
  MEMORY[0x28223BE20](v46);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB05C0, &qword_22F770820);
  result = sub_22F741AB0();
  v11 = result;
  if (*(v9 + 16))
  {
    v12 = 0;
    v13 = (v9 + 56);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = (v3 + 48);
    v41 = v9;
    v38 = (v3 + 32);
    v36 = v1;
    v37 = (v3 + 8);
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = *(v9 + 48);
      v45 = *(v42 + 72);
      sub_22F120744(v23 + v45 * (v20 | (v12 << 6)), v8, type metadata accessor for SongSource);
      sub_22F742170();
      sub_22F740D60();
      if (*&v8[v46[11] + 8])
      {
        sub_22F742190();
        sub_22F740D60();
      }

      else
      {
        sub_22F742190();
      }

      v24 = v43;
      sub_22F12057C(&v8[v46[7]], v43);
      v25 = v44;
      if ((*v40)(v24, 1, v44) == 1)
      {
        sub_22F742190();
      }

      else
      {
        v26 = v39;
        (*v38)(v39, v24, v25);
        sub_22F742190();
        sub_22F1205EC(&qword_2810AC710, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
        sub_22F740D50();
        (*v37)(v26, v25);
      }

      if (*&v8[v46[8] + 8])
      {
        sub_22F742190();
        sub_22F740D60();
      }

      else
      {
        sub_22F742190();
      }

      if (*&v8[v46[12] + 8])
      {
        sub_22F742190();
        sub_22F740D60();
      }

      else
      {
        sub_22F742190();
      }

      v9 = v41;
      result = sub_22F7421D0();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_22F120744(v8, *(v11 + 48) + v19 * v45, type metadata accessor for SongSource);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    v34 = 1 << *(v9 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v9 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_22F111F38(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v5 = v4;
  v6 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22F741AB0();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v6 + 48) + (v17 | (v9 << 6)));
      sub_22F742170();
      a4(v20);
      sub_22F740D60();

      result = sub_22F7421D0();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v6 + 32);
    if (v28 >= 64)
    {
      bzero((v6 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    v5 = v4;
    *(v6 + 16) = 0;
  }

  *v5 = v8;
  return result;
}

uint64_t sub_22F1121BC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_22F7409A0();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB06C8, &qword_22F7708A0);
  result = sub_22F741AB0();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_22F1205EC(&qword_2810A94A0, MEMORY[0x277D1F370], MEMORY[0x277D1F378]);
      result = sub_22F740D40();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_22F11252C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB06B8, &qword_22F770898);
  result = sub_22F741AB0();
  v5 = result;
  if (*(v3 + 16))
  {
    v32 = v1;
    v33 = v3;
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
    while (1)
    {
      if (!v10)
      {
        v15 = v6;
        while (1)
        {
          v6 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            goto LABEL_41;
          }

          if (v6 >= v11)
          {
            break;
          }

          v16 = v7[v6];
          ++v15;
          if (v16)
          {
            v14 = __clz(__rbit64(v16));
            v10 = (v16 - 1) & v16;
            goto LABEL_15;
          }
        }

        v31 = 1 << *(v3 + 32);
        if (v31 >= 64)
        {
          bzero(v7, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v31;
        }

        v2 = v32;
        *(v3 + 16) = 0;
        break;
      }

      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_22F742170();
      if (v17 >> 62)
      {
        v30 = sub_22F741A00();
        MEMORY[0x231901D30](v30);
        result = sub_22F741A00();
        v18 = result;
        if (!result)
        {
          goto LABEL_24;
        }
      }

      else
      {
        result = MEMORY[0x231901D30](*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10));
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_24;
        }
      }

      if (v18 < 1)
      {
        goto LABEL_42;
      }

      if ((v17 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v18; ++i)
        {
          MEMORY[0x2319016F0](i, v17);
          sub_22F741820();
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v20 = (v17 + 32);
        do
        {
          v21 = *v20++;
          v22 = v21;
          sub_22F741820();

          --v18;
        }

        while (v18);
      }

LABEL_24:
      result = sub_22F7421D0();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v33;
    }
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22F112834(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22F741AB0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_22F741800();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_22F112A54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB05D0, &qword_22F770828);
  result = sub_22F741AB0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_22F742160();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22F112C78(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_22F10FDA0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_22F1165C4();
      goto LABEL_16;
    }

    sub_22F117250(v8 + 1);
  }

  v10 = *v4;
  sub_22F742170();
  sub_22F740D60();
  result = sub_22F7421D0();
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

      result = sub_22F742040();
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
  result = sub_22F7420B0();
  __break(1u);
  return result;
}

uint64_t sub_22F112DF8(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for MomentGroundedLocation(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v25 = v8;
  v26 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_22F110000(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_22F116720(type metadata accessor for MomentGroundedLocation, &unk_27DAB0790, &qword_22F770900, type metadata accessor for MomentGroundedLocation);
      goto LABEL_16;
    }

    sub_22F117488(v11 + 1);
  }

  v13 = *v3;
  sub_22F742170();
  sub_22F73FF10();
  sub_22F1205EC(&qword_27DAB0780, MEMORY[0x277D3BFE8], MEMORY[0x277D3BFF0]);
  sub_22F740D50();
  v28 = *(a1 + *(v7 + 32));
  MEMORY[0x231901D30]();
  v27 = *(a1 + *(v7 + 36));
  MEMORY[0x231901D30]();
  v14 = sub_22F7421D0();
  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v17 = *(v8 + 72);
    do
    {
      sub_22F12067C(*(v13 + 48) + v17 * a2, v10, type metadata accessor for MomentGroundedLocation);
      if ((sub_22F73FEE0() & 1) != 0 && *&v10[*(v7 + 32)] == v28)
      {
        v18 = *&v10[*(v7 + 36)];
        sub_22F1206E4(v10, type metadata accessor for MomentGroundedLocation);
        if (v18 == v27)
        {
          sub_22F7420B0();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_22F1206E4(v10, type metadata accessor for MomentGroundedLocation);
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v26;
  *(*v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_22F120744(a1, *(v19 + 48) + *(v25 + 72) * a2, type metadata accessor for MomentGroundedLocation);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

uint64_t sub_22F113120(void *a1, unint64_t a2, char a3)
{
  v38 = type metadata accessor for NamedGroundedLocation(0);
  v34 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(*v3 + 16);
  v10 = *(*v3 + 24);
  v32 = v3;
  v33 = a1;
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_20;
  }

  if (a3)
  {
    sub_22F110380(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_22F116720(type metadata accessor for NamedGroundedLocation, &qword_27DAB0788, &qword_22F7708F8, type metadata accessor for NamedGroundedLocation);
      goto LABEL_20;
    }

    sub_22F1177DC(v9 + 1);
  }

  v11 = *v3;
  sub_22F742170();
  v12 = *a1;
  v13 = a1[1];
  sub_22F740D60();
  v14 = a1 + *(v38 + 20);
  v15 = type metadata accessor for MomentGroundedLocation(0);
  v16 = v15[7];
  sub_22F73FF10();
  sub_22F1205EC(&qword_27DAB0780, MEMORY[0x277D3BFE8], MEMORY[0x277D3BFF0]);
  v36 = v16;
  sub_22F740D50();
  v35 = *&v14[v15[8]];
  MEMORY[0x231901D30]();
  v17 = v15[9];
  v37 = v14;
  v31 = *&v14[v17];
  MEMORY[0x231901D30]();
  v18 = sub_22F7421D0();
  v19 = -1 << *(v11 + 32);
  a2 = v18 & ~v19;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v34 + 72);
    while (1)
    {
      sub_22F12067C(*(v11 + 48) + v21 * a2, v8, type metadata accessor for NamedGroundedLocation);
      v22 = *v8 == v12 && v8[1] == v13;
      if (v22 || (sub_22F742040() & 1) != 0)
      {
        v23 = v8 + *(v38 + 20);
        if ((sub_22F73FEE0() & 1) != 0 && *&v23[v15[8]] == v35 && *&v23[v15[9]] == v31)
        {
          break;
        }
      }

      sub_22F1206E4(v8, type metadata accessor for NamedGroundedLocation);
      a2 = (a2 + 1) & v20;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    sub_22F1206E4(v8, type metadata accessor for NamedGroundedLocation);
    sub_22F7420B0();
    __break(1u);
  }

LABEL_20:
  v24 = v33;
  v25 = *v32;
  *(*v32 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_22F120744(v24, *(v25 + 48) + *(v34 + 72) * a2, type metadata accessor for NamedGroundedLocation);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v29;
  }

  return result;
}

uint64_t sub_22F1134B0(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Song(0);
  v30 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 24);
  v29 = a1;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    v28 = v9;
    sub_22F110730(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_22F116720(type metadata accessor for Song, &qword_27DAB0598, &unk_22F7787F0, type metadata accessor for Song);
      goto LABEL_16;
    }

    v28 = v9;
    sub_22F117B54(v12 + 1);
  }

  v14 = *v4;
  sub_22F742170();
  v15 = *a1;
  v16 = a1[1];
  sub_22F740D60();
  v17 = sub_22F7421D0();
  v18 = -1 << *(v14 + 32);
  a2 = v17 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v20 = *(v30 + 72);
    do
    {
      sub_22F12067C(*(v14 + 48) + v20 * a2, v11, type metadata accessor for Song);
      if (*v11 == v15 && v11[1] == v16)
      {
        goto LABEL_19;
      }

      v22 = sub_22F742040();
      sub_22F1206E4(v11, type metadata accessor for Song);
      if (v22)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_22F120744(v29, *(v23 + 48) + *(v30 + 72) * a2, type metadata accessor for Song);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_19:
  sub_22F1206E4(v11, type metadata accessor for Song);
LABEL_20:
  result = sub_22F7420B0();
  __break(1u);
  return result;
}

void sub_22F11376C(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_22F112834(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_22F116FD0(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_22F119A44(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = sub_22F741800();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_22F741810();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22F7420B0();
  __break(1u);
}

uint64_t sub_22F1138F0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_22F73F690();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22F110A38(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_22F116C20(MEMORY[0x277CC9578], &qword_27DAB0768, &qword_22F7708E8);
      goto LABEL_12;
    }

    sub_22F117E2C(v11 + 1);
  }

  v13 = *v3;
  sub_22F1205EC(&qword_2810AC710, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  v14 = sub_22F740D40();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_22F1205EC(&qword_2810AC700, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v22 = sub_22F740DE0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22F7420B0();
  __break(1u);
  return result;
}

void sub_22F113BB8(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_22F112834(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_22F116FD0(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_22F119A44(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_22F741800();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_22F120634(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_22F741810();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22F7420B0();
  __break(1u);
}

uint64_t sub_22F113D48(uint64_t result, unint64_t a2, char a3)
{
  v25 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_48;
  }

  if (a3)
  {
    sub_22F110D94(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_22F116AF0(&qword_27DAB0700, &qword_22F7708B0);
      goto LABEL_48;
    }

    sub_22F118148(v5 + 1);
  }

  v7 = *v3;
  sub_22F742170();
  sub_22F740D60();

  result = sub_22F7421D0();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v9 = ~v8;
    do
    {
      v10 = *(*(v7 + 48) + a2);
      if (v10 > 2)
      {
        if (v10 == 3)
        {
          v11 = 0x6557664F74726170;
          v12 = 0xEA00000000006B65;
        }

        else
        {
          if (v10 == 4)
          {
            v11 = 0x616559664F796164;
          }

          else
          {
            v11 = 0x6144664F74726170;
          }

          if (v10 == 4)
          {
            v12 = 0xE900000000000072;
          }

          else
          {
            v12 = 0xE900000000000079;
          }
        }
      }

      else if (*(*(v7 + 48) + a2))
      {
        if (v10 == 1)
        {
          v11 = 0x6E6F73616573;
        }

        else
        {
          v11 = 0x59664F6567646577;
        }

        if (v10 == 1)
        {
          v12 = 0xE600000000000000;
        }

        else
        {
          v12 = 0xEB00000000726165;
        }
      }

      else
      {
        v12 = 0xE400000000000000;
        v11 = 1918985593;
      }

      v13 = 0xE900000000000079;
      v14 = 0x616559664F796164;
      if (v25 == 4)
      {
        v13 = 0xE900000000000072;
      }

      else
      {
        v14 = 0x6144664F74726170;
      }

      if (v25 == 3)
      {
        v14 = 0x6557664F74726170;
        v13 = 0xEA00000000006B65;
      }

      v15 = 0x59664F6567646577;
      if (v25 == 1)
      {
        v15 = 0x6E6F73616573;
      }

      v16 = 0xEB00000000726165;
      if (v25 == 1)
      {
        v16 = 0xE600000000000000;
      }

      if (!v25)
      {
        v15 = 1918985593;
        v16 = 0xE400000000000000;
      }

      v17 = v25 <= 2u ? v15 : v14;
      v18 = v25 <= 2u ? v16 : v13;
      if (v11 == v17 && v12 == v18)
      {
        goto LABEL_51;
      }

      v19 = sub_22F742040();

      if (v19)
      {
        goto LABEL_52;
      }

      a2 = (a2 + 1) & v9;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_48:
  v20 = *v24;
  *(*v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + a2) = v25;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_51:

LABEL_52:
  result = sub_22F7420B0();
  __break(1u);
  return result;
}

uint64_t sub_22F114118(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_22F73F990();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22F1110A8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_22F116C20(MEMORY[0x277CC99D0], &qword_27DAB0668, &unk_22F77A310);
      goto LABEL_12;
    }

    sub_22F11842C(v11 + 1);
  }

  v13 = *v3;
  sub_22F1205EC(&qword_2810AC6D0, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
  v14 = sub_22F740D40();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_22F1205EC(&unk_2810AC6C0, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
      v22 = sub_22F740DE0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22F7420B0();
  __break(1u);
  return result;
}

uint64_t sub_22F1143E0(void *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for PublicEvent(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  v30 = a1;
  if (v14 > v13 && (a3 & 1) != 0)
  {
LABEL_13:
    v15 = v9;
    goto LABEL_14;
  }

  if (a3)
  {
    v29 = v10;
    sub_22F111404(v13 + 1);
    goto LABEL_8;
  }

  if (v14 <= v13)
  {
    v29 = v10;
    sub_22F118748(v13 + 1);
LABEL_8:
    v16 = *v4;
    sub_22F742170();
    v17 = *a1;
    MEMORY[0x231901D70](*a1);
    v18 = sub_22F7421D0();
    v19 = -1 << *(v16 + 32);
    a2 = v18 & ~v19;
    if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v20 = ~v19;
      v15 = v9;
      v21 = *(v9 + 72);
      while (1)
      {
        sub_22F12067C(*(v16 + 48) + v21 * a2, v12, type metadata accessor for PublicEvent);
        v22 = *v12;
        sub_22F1206E4(v12, type metadata accessor for PublicEvent);
        if (v22 == v17)
        {
          goto LABEL_17;
        }

        a2 = (a2 + 1) & v20;
        if (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    goto LABEL_13;
  }

  v15 = v9;
  sub_22F116720(type metadata accessor for PublicEvent, &unk_27DAB0580, &qword_22F770818, type metadata accessor for PublicEvent);
LABEL_14:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_22F120744(v30, *(v23 + 48) + *(v15 + 72) * a2, type metadata accessor for PublicEvent);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_17:
  result = sub_22F7420B0();
  __break(1u);
  return result;
}

uint64_t sub_22F114668(uint64_t result, unint64_t a2, char a3)
{
  v27 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_22F111708(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_22F116964();
      goto LABEL_16;
    }

    sub_22F118A1C(v5 + 1);
  }

  v7 = *v3;
  sub_22F742170();
  v8 = [*(v27 + 16) localIdentifier];
  sub_22F740E20();

  sub_22F740D60();

  result = sub_22F7421D0();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    type metadata accessor for ImportantEntitiesGraphInferenceMoment();
    do
    {
      v11 = *(*(*(v7 + 48) + 8 * a2) + 16);

      v12 = [v11 localIdentifier];
      v13 = sub_22F740E20();
      v15 = v14;

      v16 = [*(v27 + 16) localIdentifier];
      v17 = sub_22F740E20();
      v19 = v18;

      if (v13 == v17 && v15 == v19)
      {
        goto LABEL_19;
      }

      v21 = sub_22F742040();

      if (v21)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v22 = *v26;
  *(*v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v22 + 48) + 8 * a2) = v27;
  v23 = *(v22 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v22 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_22F7420B0();
  __break(1u);
  return result;
}

uint64_t sub_22F1148BC(void *a1, unint64_t a2, char a3)
{
  v7 = sub_22F73F690();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v51 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v48 - v11;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB05B0, &unk_22F771430);
  MEMORY[0x28223BE20](v52);
  v14 = &v48 - v13;
  v59 = type metadata accessor for SongSource(0);
  v50 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v16 = (&v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(*v3 + 16);
  v18 = *(*v3 + 24);
  v49 = v3;
  v60 = a1;
  if (v18 <= v17 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22F111998(v17 + 1);
    }

    else
    {
      if (v18 > v17)
      {
        sub_22F116720(type metadata accessor for SongSource, &unk_27DAB05C0, &qword_22F770820, type metadata accessor for SongSource);
        goto LABEL_34;
      }

      sub_22F118C88(v17 + 1);
    }

    v19 = *v3;
    sub_22F742170();
    SongSource.hash(into:)(v62);
    v20 = sub_22F7421D0();
    v21 = v19 + 56;
    v57 = v19 + 56;
    v58 = v19;
    v22 = -1 << *(v19 + 32);
    a2 = v20 & ~v22;
    v23 = v52;
    if ((*(v21 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v56 = ~v22;
      v24 = a1[1];
      v61 = *a1;
      v25 = v8;
      v26 = (v8 + 48);
      v48 = (v25 + 32);
      v27 = *(v50 + 72);
      v54 = (v25 + 8);
      v55 = v27;
      do
      {
        sub_22F12067C(*(v58 + 48) + v55 * a2, v16, type metadata accessor for SongSource);
        v28 = *v16 == v61 && v16[1] == v24;
        if (!v28 && (sub_22F742040() & 1) == 0)
        {
          goto LABEL_12;
        }

        v29 = *(v59 + 28);
        v30 = *(v23 + 48);
        sub_22F12057C(v16 + v29, v14);
        sub_22F12057C(v60 + v29, &v14[v30]);
        v31 = *v26;
        if ((*v26)(v14, 1, v7) == 1)
        {
          if (v31(&v14[v30], 1, v7) != 1)
          {
            goto LABEL_11;
          }

          sub_22F120ADC(v14, &qword_27DAB0920, &qword_22F770B20);
        }

        else
        {
          sub_22F12057C(v14, v12);
          if (v31(&v14[v30], 1, v7) == 1)
          {
            (*v54)(v12, v7);
LABEL_11:
            sub_22F120ADC(v14, &unk_27DAB05B0, &unk_22F771430);
LABEL_12:
            sub_22F1206E4(v16, type metadata accessor for SongSource);
            goto LABEL_13;
          }

          v32 = v12;
          v33 = v51;
          (*v48)(v51, &v14[v30], v7);
          sub_22F1205EC(&qword_2810AC700, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
          v53 = sub_22F740DE0();
          v34 = *v54;
          v35 = v33;
          v12 = v32;
          v23 = v52;
          (*v54)(v35, v7);
          v34(v12, v7);
          sub_22F120ADC(v14, &qword_27DAB0920, &qword_22F770B20);
          if ((v53 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        v36 = *(v59 + 32);
        v37 = (v16 + v36);
        v38 = *(v16 + v36 + 8);
        v39 = (v60 + v36);
        v40 = v39[1];
        if (v38)
        {
          if (!v40)
          {
            goto LABEL_12;
          }

          if (*v37 == *v39 && v38 == v40)
          {
            goto LABEL_37;
          }

          v42 = sub_22F742040();
          sub_22F1206E4(v16, type metadata accessor for SongSource);
          if (v42)
          {
            goto LABEL_38;
          }
        }

        else
        {
          sub_22F1206E4(v16, type metadata accessor for SongSource);
          if (!v40)
          {
            goto LABEL_38;
          }
        }

LABEL_13:
        a2 = (a2 + 1) & v56;
      }

      while (((*(v57 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_34:
  v43 = *v49;
  *(*v49 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_22F120744(v60, *(v43 + 48) + *(v50 + 72) * a2, type metadata accessor for SongSource);
  v45 = *(v43 + 16);
  v46 = __OFADD__(v45, 1);
  v47 = v45 + 1;
  if (v46)
  {
    __break(1u);
LABEL_37:
    sub_22F1206E4(v16, type metadata accessor for SongSource);
LABEL_38:
    result = sub_22F7420B0();
    __break(1u);
  }

  else
  {
    *(v43 + 16) = v47;
  }

  return result;
}

uint64_t sub_22F114F24(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_22F111F38(v7 + 1, &qword_27DAB0648, &qword_22F770860, sub_22F2B493C);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_22F116AF0(&qword_27DAB0648, &qword_22F770860);
        goto LABEL_91;
      }

      sub_22F1191F8(v7 + 1, &qword_27DAB0648, &qword_22F770860, sub_22F2B493C);
    }

    v9 = *v3;
    sub_22F742170();
    sub_22F2B493C(v6);
    sub_22F740D60();

    result = sub_22F7421D0();
    v10 = -1 << *(v9 + 32);
    a2 = result & ~v10;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      while (2)
      {
        v12 = 0xE500000000000000;
        v13 = 0x7465737341;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v13 = 0x6C6F437465737341;
            v12 = 0xEF6E6F697463656CLL;
            break;
          case 2:
            v12 = 0xE600000000000000;
            v13 = 0x6E6F73726550;
            break;
          case 3:
            v12 = 0xE300000000000000;
            v13 = 7628112;
            break;
          case 4:
            v13 = 0x6D75626C41;
            break;
          case 5:
            v13 = 0x656E656353;
            break;
          case 6:
            v12 = 0xE700000000000000;
            v13 = 0x687361486F6547;
            break;
          case 7:
            v13 = 0x73756C4365746144;
            v12 = 0xEB00000000726574;
            break;
          case 8:
            v12 = 0xE400000000000000;
            v13 = 1885958740;
            break;
          case 9:
            v12 = 0xE900000000000073;
            v13 = 0x657469726F766146;
            break;
          case 0xA:
            v13 = 0x746163696C707544;
            v12 = 0xEA00000000007365;
            break;
          case 0xB:
            v12 = 0xE400000000000000;
            v13 = 1701670728;
            break;
          case 0xC:
            v12 = 0xE300000000000000;
            v13 = 7954756;
            break;
          case 0xD:
            v12 = 0xE700000000000000;
            v13 = 0x7961646B656557;
            break;
          case 0xE:
            v13 = 0x68746E6F4DLL;
            break;
          case 0xF:
            v12 = 0xE700000000000000;
            v13 = 0x72657472617551;
            break;
          case 0x10:
            v12 = 0xE400000000000000;
            v13 = 1918985561;
            break;
          case 0x11:
            v12 = 0xE400000000000000;
            v13 = 2037672259;
            break;
          case 0x12:
            v13 = 0x6574617453;
            break;
          case 0x13:
            v12 = 0xE700000000000000;
            v13 = 0x7972746E756F43;
            break;
          case 0x14:
            v13 = 0x764563696C627550;
            v12 = 0xEB00000000746E65;
            break;
          case 0x15:
            v13 = 0xD000000000000013;
            v12 = 0x800000022F78E7B0;
            break;
          case 0x16:
            v13 = 0xD000000000000016;
            v12 = 0x800000022F78E7D0;
            break;
          case 0x17:
            v13 = 0x656D726F66726550;
            v12 = 0xE900000000000072;
            break;
          case 0x18:
            v12 = 0xE800000000000000;
            v13 = 0x7373656E69737542;
            break;
          case 0x19:
            v13 = 0xD000000000000010;
            v12 = 0x800000022F78E800;
            break;
          default:
            break;
        }

        v14 = 0xE500000000000000;
        v15 = 0x7465737341;
        switch(v6)
        {
          case 1:
            v14 = 0xEF6E6F697463656CLL;
            if (v13 == 0x6C6F437465737341)
            {
              goto LABEL_85;
            }

            goto LABEL_86;
          case 2:
            v14 = 0xE600000000000000;
            if (v13 != 0x6E6F73726550)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 3:
            v14 = 0xE300000000000000;
            if (v13 != 7628112)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 4:
            if (v13 != 0x6D75626C41)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 5:
            v18 = 1852138323;
            goto LABEL_75;
          case 6:
            v14 = 0xE700000000000000;
            if (v13 != 0x687361486F6547)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 7:
            v16 = 0x73756C4365746144;
            v17 = 7497076;
            goto LABEL_65;
          case 8:
            v14 = 0xE400000000000000;
            if (v13 != 1885958740)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 9:
            v14 = 0xE900000000000073;
            if (v13 != 0x657469726F766146)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 10:
            v14 = 0xEA00000000007365;
            if (v13 != 0x746163696C707544)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 11:
            v14 = 0xE400000000000000;
            if (v13 != 1701670728)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 12:
            v14 = 0xE300000000000000;
            if (v13 != 7954756)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 13:
            v14 = 0xE700000000000000;
            if (v13 != 0x7961646B656557)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 14:
            if (v13 != 0x68746E6F4DLL)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 15:
            v14 = 0xE700000000000000;
            if (v13 != 0x72657472617551)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 16:
            v14 = 0xE400000000000000;
            if (v13 != 1918985561)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 17:
            v14 = 0xE400000000000000;
            if (v13 != 2037672259)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 18:
            v18 = 1952543827;
LABEL_75:
            if (v13 != (v18 & 0xFFFF0000FFFFFFFFLL | 0x6500000000))
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 19:
            v14 = 0xE700000000000000;
            v15 = 0x7972746E756F43;
            goto LABEL_84;
          case 20:
            v16 = 0x764563696C627550;
            v17 = 7630437;
LABEL_65:
            v14 = v17 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v13 != v16)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 21:
            v14 = 0x800000022F78E7B0;
            if (v13 != 0xD000000000000013)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 22:
            v14 = 0x800000022F78E7D0;
            if (v13 != 0xD000000000000016)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 23:
            v14 = 0xE900000000000072;
            if (v13 != 0x656D726F66726550)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 24:
            v14 = 0xE800000000000000;
            if (v13 != 0x7373656E69737542)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          case 25:
            v14 = 0x800000022F78E800;
            if (v13 != 0xD000000000000010)
            {
              goto LABEL_86;
            }

            goto LABEL_85;
          default:
LABEL_84:
            if (v13 != v15)
            {
              goto LABEL_86;
            }

LABEL_85:
            if (v12 == v14)
            {
              goto LABEL_94;
            }

LABEL_86:
            v19 = sub_22F742040();

            if (v19)
            {
              goto LABEL_95;
            }

            a2 = (a2 + 1) & v11;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_91:
  v20 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + a2) = v6;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_94:

LABEL_95:
    result = sub_22F7420B0();
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v23;
  }

  return result;
}