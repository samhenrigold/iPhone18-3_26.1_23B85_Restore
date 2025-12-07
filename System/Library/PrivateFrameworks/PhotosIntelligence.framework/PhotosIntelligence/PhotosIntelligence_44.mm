uint64_t static StoryGenerationStrings.DynamicLifeContextForGlobalTraitsGeneration.prominentSettingsString(from:randomizer:shufflePromptParameters:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v26 = a3;
    v27 = a2;
    v28 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v7, 0, a4, a5, a6, a7);
    v8 = v28;
    v10 = (a1 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v11, v12);
      MEMORY[0x1CCA5CD70](34, 0xE100000000000000);

      v18 = v28[2];
      v17 = v28[3];
      if (v18 >= v17 >> 1)
      {
        sub_1C6F7ED9C(v17 > 1, v18 + 1, 1, v13, v14, v15, v16);
      }

      v28[2] = v18 + 1;
      v19 = &v28[2 * v18];
      v19[4] = 34;
      v19[5] = 0xE100000000000000;
      v10 += 2;
      --v7;
    }

    while (v7);
    a2 = v27;
    a3 = v26;
  }

  if (a3)
  {
    __swift_mutable_project_boxed_opaque_existential_0(a2, *(a2 + 24));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C72AF5EC(&qword_1EDD06AA8, MEMORY[0x1E69E6318]);
    sub_1C72AF5EC(&qword_1EDD06A98, MEMORY[0x1E69E6338]);
    sub_1C755062C();
  }

  if (!v8[2])
  {

    v8 = &unk_1F46A92F0;
  }

  v20 = OUTLINED_FUNCTION_15_53(v8);
  v22 = v21;

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v24 = OUTLINED_FUNCTION_95(v23);
  *(v24 + 16) = xmmword_1C755BAB0;
  *(v24 + 56) = MEMORY[0x1E69E6158];
  *(v24 + 64) = sub_1C6F6D524();
  *(v24 + 32) = v20;
  *(v24 + 40) = v22;
  return sub_1C75506BC();
}

uint64_t sub_1C72AF5EC(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC217A00, &qword_1C755BD70);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_1C72AF734(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_44()
{

  return sub_1C754F27C();
}

char *sub_1C72AF804(void *a1, uint64_t a2)
{
  v5 = *(v2 + qword_1EC21B180);
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v6 = v5;
  PerformanceMeasure.init(name:log:)();
  v7 = a1;
  v8 = sub_1C754FEEC();
  v9 = sub_1C755117C();

  v10 = &selRef_clsSceneClassifications;
  if (os_log_type_enabled(v8, v9))
  {
    v11 = swift_slowAlloc();
    v54[0] = swift_slowAlloc();
    *v11 = 136380931;
    v12 = a2;
    v13 = [v7 title];
    v14 = sub_1C755068C();
    v16 = v15;

    v17 = sub_1C6F765A4(v14, v16, v54);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2080;
    v18 = [v7 localIdentifier];
    v19 = sub_1C755068C();
    v21 = v20;

    v22 = v19;
    a2 = v12;
    v23 = sub_1C6F765A4(v22, v21, v54);

    *(v11 + 14) = v23;
    v10 = &selRef_clsSceneClassifications;
    _os_log_impl(&dword_1C6F5C000, v8, v9, "Start electing assets for Event (%{private}s) %s", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_0_65();
    MEMORY[0x1CCA5F8E0](v11, -1, -1);
  }

  v24 = sub_1C70A65EC();
  result = [objc_opt_self() fetchCuratedAssetsInAssetCollection:v7 options:v24];
  if (result)
  {
    v26 = result;
    if ([result count])
    {
      sub_1C70A51F4(v26, a2);
      v28 = v27;
      v29 = objc_allocWithZone(type metadata accessor for AssetElectionResult());
      v30 = AssetElectionResult.init(fetchResult:)(v28);

      sub_1C6F85170();

      return v30;
    }

    else
    {
      v31 = v7;
      v32 = sub_1C754FEEC();
      v33 = sub_1C755117C();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v54[0] = swift_slowAlloc();
        v35 = v54[0];
        *v34 = 136315138;
        v36 = [v31 v10[481]];
        v37 = v31;
        v38 = sub_1C755068C();
        v40 = v39;

        v41 = v38;
        v31 = v37;
        v42 = sub_1C6F765A4(v41, v40, v54);

        *(v34 + 4) = v42;
        v10 = &selRef_clsSceneClassifications;
        _os_log_impl(&dword_1C6F5C000, v32, v33, "Found 0 asset in event %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        OUTLINED_FUNCTION_0_65();
        MEMORY[0x1CCA5F8E0](v34, -1, -1);
      }

      v43 = objc_allocWithZone(type metadata accessor for AssetElectionResult());
      v44 = v26;
      v45 = AssetElectionResult.init(fetchResult:)(v44);
      v46 = [v31 v10[481]];
      v47 = sub_1C755068C();
      v49 = v48;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217920, &unk_1C756CA30);
      sub_1C710D370();
      v50 = swift_allocError();
      *v51 = 5;
      *(v51 + 8) = v47;
      *(v51 + 16) = v49;
      *(v51 + 24) = 1;

      v52 = OBJC_IVAR____TtC18PhotosIntelligence19AssetElectionResult_error;
      swift_beginAccess();
      v53 = *&v45[v52];
      *&v45[v52] = v50;

      sub_1C6F85170();

      return v45;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id EventAssetElector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EventAssetElector(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EventAssetElector(uint64_t a1)
{
  result = qword_1EC21A170;
  if (!qword_1EC21A170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StoryMusicCurationOptions.init(musicTypes:maxKeywords:storyPrompt:storyPromptAttributes:extendedTokens:globalTraits:musicKeywordCurationApproach:appleMusicSearchSortByMoodUpToIndex:queryTypesAllowingExplicitSongs:recentlyUsedAppleMusicSongIds:recentlyUsedFlexMusicSongIds:appleMusicSmartSearchUsageScenario:appleMusicUseMaestroMood:appleMusicSubscriptionStateOverride:preCuratedMoods:preCuratedKeywords:shouldFilterOutNotAppropriateSongs:shouldSortSongsOnMemoryAppropriateScore:languageOverrides:regionOverrides:flexSongProviderName:scoreForSecondaryLanguages:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, const void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char *a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v30 = a12;
  v31 = *(a5 + 4);
  v32 = *(a5 + 20);
  v42 = *a15;
  v33 = type metadata accessor for StoryMusicCurationOptions(0);
  *(a9 + v33[19]) = 2;
  *a9 = a1;
  *(a9 + 8) = a2;
  memcpy(&v44[6], a6, 0x50uLL);
  v34 = a9 + v33[22];
  *v34 = 0;
  *(v34 + 8) = a3;
  *(v34 + 16) = a4;
  v35 = *a5;
  *(v34 + 40) = a5[1];
  *(v34 + 24) = v35;
  *(v34 + 56) = v31;
  *(v34 + 64) = v32;
  memcpy((v34 + 66), v44, 0x56uLL);
  *(v34 + 152) = a7;
  *(v34 + 160) = a18;
  *(v34 + 168) = a19;
  *(a9 + 16) = 9;
  *(a9 + 32) = a8;
  *(a9 + 40) = a11;
  if (!a12[2])
  {

    type metadata accessor for StoryMusicCurator(0);
    if (static StoryMusicCurator.isUserAllowedExplicitContent()())
    {
      v30 = &unk_1F46A9268;
    }

    else
    {
      v30 = MEMORY[0x1E69E7CC0];
    }
  }

  *(a9 + 56) = v30;
  *(a9 + 24) = v42;
  *(a9 + 48) = a16 & 1;
  *(a9 + v33[20]) = a20 & 1;
  *(a9 + v33[21]) = a21 & 1;
  *(a9 + 64) = a13;
  *(a9 + 72) = a14;
  result = sub_1C72B18F0(a17, a9 + v33[14]);
  *(a9 + v33[15]) = a22;
  *(a9 + v33[16]) = a23;
  v37 = (a9 + v33[17]);
  *v37 = a24;
  v37[1] = a25;
  *(a9 + v33[18]) = a10;
  return result;
}

uint64_t StoryMusicType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6973754D78656C66;
  }

  else
  {
    return 0x73754D656C707061;
  }
}

uint64_t sub_1C72B002C@<X0>(uint64_t *a1@<X8>)
{
  result = StoryMusicType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

PhotosIntelligence::StoryMusicCurationTechnique_optional __swiftcall StoryMusicCurationTechnique.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_29_0();
  v2 = sub_1C7551B2C();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

unint64_t StoryMusicCurationTechnique.rawValue.getter()
{
  result = 0x656C65536F747561;
  switch(*v0)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C72B022C@<X0>(unint64_t *a1@<X8>)
{
  result = StoryMusicCurationTechnique.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

PhotosIntelligence::MusicKeywordCurationApproach_optional __swiftcall MusicKeywordCurationApproach.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_29_0();
  v2 = sub_1C7551B2C();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

unint64_t MusicKeywordCurationApproach.rawValue.getter()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x79726F7453657375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x61626F6C47657375;
  }
}

unint64_t sub_1C72B040C@<X0>(unint64_t *a1@<X8>)
{
  result = MusicKeywordCurationApproach.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C72B050C()
{
  OUTLINED_FUNCTION_29_0();
  v1 = sub_1C7551B2C();

  if (v1 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!v1)
  {
    v3 = 0;
  }

  *v0 = v3;
  return result;
}

uint64_t AppleMusicSmartSearchUsageScenario.rawValue.getter()
{
  if (*v0)
  {
    return 0x49636973754D6F6ELL;
  }

  else
  {
    return 0x516E49636973756DLL;
  }
}

uint64_t sub_1C72B05DC@<X0>(uint64_t *a1@<X8>)
{
  result = AppleMusicSmartSearchUsageScenario.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t StoryMusicCurationOptions.languageOverrides.getter()
{
  type metadata accessor for StoryMusicCurationOptions(0);

  return sub_1C75504FC();
}

uint64_t StoryMusicCurationOptions.regionOverrides.getter()
{
  type metadata accessor for StoryMusicCurationOptions(0);

  return sub_1C75504FC();
}

uint64_t StoryMusicCurationOptions.flexSongProviderName.getter()
{
  type metadata accessor for StoryMusicCurationOptions(0);
  sub_1C75504FC();
  return OUTLINED_FUNCTION_90();
}

uint64_t StoryMusicCurationOptions.fallbackCurationTechnique.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StoryMusicCurationOptions(0);
  *a1 = *(v1 + *(result + 76));
  return result;
}

uint64_t StoryMusicCurationOptions.fallbackCurationTechnique.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for StoryMusicCurationOptions(0);
  *(v1 + *(result + 76)) = v2;
  return result;
}

uint64_t StoryMusicCurationOptions.MusicCurationIngredients.storyPromptAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 64);
  return sub_1C72B1960(v2, v3, v4, v5);
}

uint64_t StoryMusicCurationOptions.MusicCurationIngredients.extendedTokens.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 72), sizeof(__dst));
  memcpy(a1, (v1 + 72), 0x50uLL);
  return sub_1C712A774(__dst, &v4, &qword_1EC21A180, &qword_1C757ED38);
}

void *StoryMusicCurationOptions.MusicCurationIngredients.init(storyPrompt:maestroKeywords:storyPromptAttributes:extendedTokens:globalTraits:preCuratedMoods:preCuratedKeywords:)@<X0>(void *__src@<X4>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v12 = *(a5 + 16);
  *(a9 + 24) = *a5;
  v13 = *(a5 + 32);
  v14 = *(a5 + 40);
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 40) = v12;
  *(a9 + 56) = v13;
  *(a9 + 64) = v14;
  *a9 = a4;
  *(a9 + 152) = a6;
  result = memcpy((a9 + 72), __src, 0x50uLL);
  *(a9 + 160) = a7;
  *(a9 + 168) = a8;
  return result;
}

uint64_t type metadata accessor for StoryMusicCurationOptions(uint64_t a1)
{
  result = qword_1EDD0DA98;
  if (!qword_1EDD0DA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C72B0B18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4B6F72747365616DLL && a2 == 0xEF7364726F777965;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F725079726F7473 && a2 == 0xEB0000000074706DLL;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x80000001C75A8EC0 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6465646E65747865 && a2 == 0xEE00736E656B6F54;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x72546C61626F6C67 && a2 == 0xEC00000073746961;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7461727543657270 && a2 == 0xEF73646F6F4D6465;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000012 && 0x80000001C75A8EE0 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C7551DBC();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C72B0D74(char a1)
{
  result = 0x4B6F72747365616DLL;
  switch(a1)
  {
    case 1:
      result = 0x6F725079726F7473;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x6465646E65747865;
      break;
    case 4:
      result = 0x72546C61626F6C67;
      break;
    case 5:
      result = 0x7461727543657270;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C72B0E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C72B0B18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C72B0EB0(uint64_t a1)
{
  v2 = sub_1C72B19A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C72B0EEC(uint64_t a1)
{
  v2 = sub_1C72B19A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StoryMusicCurationOptions.MusicCurationIngredients.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A188, &qword_1C757ED40);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_158();
  v9 = *v0;
  v14 = v0[4];
  v15 = v0[3];
  v12 = v0[6];
  v13 = v0[5];
  v11 = v0[7];
  v10 = *(v0 + 32);
  memcpy(v18, v0 + 9, 0x50uLL);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1C72B19A0();
  sub_1C75504FC();
  sub_1C755200C();
  v17[0] = v9;
  v16[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155F0, &unk_1C756AF00);
  sub_1C72B1A34(&qword_1EDD06B50);
  sub_1C7551CBC();

  if (v1)
  {
    (*(v7 + 8))(v2, v5);
  }

  else
  {
    sub_1C7551C7C();
    v17[0] = v15;
    v17[1] = v14;
    v17[2] = v13;
    v17[3] = v12;
    v17[4] = v11;
    LOWORD(v17[5]) = v10;
    v16[0] = 2;
    sub_1C72B1960(v15, v14, v13, v12);
    sub_1C71A9314();
    sub_1C7551CBC();
    OUTLINED_FUNCTION_43_27();
    memcpy(v17, v18, sizeof(v17));
    v16[87] = 3;
    sub_1C712A774(v18, v16, &qword_1EC21A180, &qword_1C757ED38);
    sub_1C7059260();
    sub_1C7551CBC();
    memcpy(v16, v17, 0x50uLL);
    sub_1C6FD7FC8(v16, &qword_1EC21A180, &qword_1C757ED38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_20_46(&qword_1EDD0CF60, MEMORY[0x1E69E6160]);
    OUTLINED_FUNCTION_31_31();
    sub_1C7551CBC();
    OUTLINED_FUNCTION_31_31();
    sub_1C7551CBC();
    sub_1C7551CBC();
    (*(v7 + 8))(v2, 0);
  }

  OUTLINED_FUNCTION_125();
}

void StoryMusicCurationOptions.MusicCurationIngredients.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A190, &qword_1C757ED48);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_158();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C72B19A0();
  sub_1C7551FFC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    v13 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155F0, &unk_1C756AF00);
    sub_1C72B1A34(&qword_1EC217658);
    OUTLINED_FUNCTION_139();
    sub_1C7551BAC();
    v6 = v22;
    LOBYTE(v22) = 1;
    OUTLINED_FUNCTION_139();
    v7 = sub_1C7551B6C();
    v20 = v8;
    sub_1C72B1ACC();
    OUTLINED_FUNCTION_139();
    sub_1C7551BAC();
    v16 = v22;
    v17 = v23;
    v18 = v24;
    v19 = v25;
    v15 = v26;
    v38 = v27;
    sub_1C70F8328();
    OUTLINED_FUNCTION_139();
    sub_1C7551BAC();
    memcpy(&v37[6], v36, 0x50uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_21_45(&qword_1EDD0CF50);
    OUTLINED_FUNCTION_36_24();
    OUTLINED_FUNCTION_139();
    sub_1C7551BAC();
    v14 = v22;
    LOBYTE(v21[0]) = 5;
    OUTLINED_FUNCTION_36_24();
    OUTLINED_FUNCTION_139();
    sub_1C7551BAC();
    v9 = v22;
    OUTLINED_FUNCTION_139();
    sub_1C7551BAC();
    v10 = OUTLINED_FUNCTION_11_53();
    v11(v10);
    v12 = v35;
    v21[0] = v6;
    v21[1] = v7;
    v21[2] = v20;
    v21[3] = v16;
    v21[4] = v17;
    v21[5] = v18;
    v21[6] = v19;
    v21[7] = v15;
    LOWORD(v21[8]) = v38;
    memcpy(&v21[8] + 2, v37, 0x56uLL);
    v21[19] = v14;
    v21[20] = v9;
    v21[21] = v35;
    memcpy(v13, v21, 0xB0uLL);
    sub_1C72B1B88(v21, &v22);
    __swift_destroy_boxed_opaque_existential_1(v2);
    v22 = v6;
    v23 = v7;
    v24 = v20;
    v25 = v16;
    v26 = v17;
    v27 = v18;
    v28 = v19;
    v29 = v15;
    v30 = v38;
    memcpy(v31, v37, sizeof(v31));
    v32 = v14;
    v33 = v9;
    v34 = v12;
    sub_1C72B1BC0(&v22);
  }

  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C72B18F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C60, &qword_1C757ED30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C72B1960(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C71AACA4(result);

    return sub_1C75504FC();
  }

  return result;
}

unint64_t sub_1C72B19A0()
{
  result = qword_1EDD09108[0];
  if (!qword_1EDD09108[0])
  {
    result = swift_getWitnessTable(asc_1C757F6D4, &type metadata for StoryMusicCurationOptions.MusicCurationIngredients.CodingKeys, v0, v1);
    atomic_store(result, qword_1EDD09108);
  }

  return result;
}

uint64_t sub_1C72B19F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C71AACF0(result);
  }

  return result;
}

unint64_t sub_1C72B1A34(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v5 = v4;
    v6 = v3;
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2155F0, &unk_1C756AF00);
    v8 = sub_1C72B3E74(v6);
    result = swift_getWitnessTable(v5, v7, &v8);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C72B1ACC()
{
  result = qword_1EC21A198;
  if (!qword_1EC21A198)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryPromptAttributes, &type metadata for StoryPromptAttributes, v0, v1);
    atomic_store(result, &qword_1EC21A198);
  }

  return result;
}

unint64_t sub_1C72B1B20(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v5 = v4;
    v6 = v3;
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC217A00, &qword_1C755BD70);
    v8 = v6;
    result = swift_getWitnessTable(v5, v7, &v8);
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C72B1BF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954636973756DLL && a2 == 0xEA00000000007365;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F7779654B78616DLL && a2 == 0xEB00000000736472;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000020 && 0x80000001C75A8F00 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000022 && 0x80000001C75A8F30 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001CLL && 0x80000001C75A8F60 == a2;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000023 && 0x80000001C75A8F80 == a2;
            if (v10 || (sub_1C7551DBC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000018 && 0x80000001C75A8FB0 == a2;
              if (v11 || (sub_1C7551DBC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD00000000000001FLL && 0x80000001C75A8FD0 == a2;
                if (v12 || (sub_1C7551DBC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001DLL && 0x80000001C75A8FF0 == a2;
                  if (v13 || (sub_1C7551DBC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD00000000000001CLL && 0x80000001C75A9010 == a2;
                    if (v14 || (sub_1C7551DBC() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000023 && 0x80000001C75A9030 == a2;
                      if (v15 || (sub_1C7551DBC() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000011 && 0x80000001C75A9060 == a2;
                        if (v16 || (sub_1C7551DBC() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x764F6E6F69676572 && a2 == 0xEF73656469727265;
                          if (v17 || (sub_1C7551DBC() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000014 && 0x80000001C75A9080 == a2;
                            if (v18 || (sub_1C7551DBC() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD00000000000001ALL && 0x80000001C75A90A0 == a2;
                              if (v19 || (sub_1C7551DBC() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000019 && 0x80000001C75A90C0 == a2;
                                if (v20 || (sub_1C7551DBC() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000022 && 0x80000001C75A90E0 == a2;
                                  if (v21 || (sub_1C7551DBC() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000027 && 0x80000001C75A9110 == a2;
                                    if (v22 || (sub_1C7551DBC() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else if (a1 == 0xD000000000000018 && 0x80000001C75A9140 == a2)
                                    {

                                      return 18;
                                    }

                                    else
                                    {
                                      v24 = sub_1C7551DBC();

                                      if (v24)
                                      {
                                        return 18;
                                      }

                                      else
                                      {
                                        return 19;
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
      }
    }
  }
}

unint64_t sub_1C72B2188(char a1)
{
  result = 0x707954636973756DLL;
  switch(a1)
  {
    case 1:
      result = 0x6F7779654B78616DLL;
      break;
    case 2:
      result = 0xD000000000000020;
      break;
    case 3:
    case 16:
      result = 0xD000000000000022;
      break;
    case 4:
    case 9:
      result = 0xD00000000000001CLL;
      break;
    case 5:
    case 10:
      result = 0xD000000000000023;
      break;
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD00000000000001FLL;
      break;
    case 8:
      result = 0xD00000000000001DLL;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x764F6E6F69676572;
      break;
    case 13:
      result = 0xD000000000000014;
      break;
    case 14:
      result = 0xD00000000000001ALL;
      break;
    case 15:
      result = 0xD000000000000019;
      break;
    case 17:
      result = 0xD000000000000027;
      break;
    case 18:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C72B23CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C72B1BF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C72B23F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C72B2180();
  *a1 = result;
  return result;
}

uint64_t sub_1C72B241C(uint64_t a1)
{
  v2 = sub_1C72B2A2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C72B2458(uint64_t a1)
{
  v2 = sub_1C72B2A2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StoryMusicCurationOptions.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A1A0, &qword_1C757ED50);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9 - 8];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1C72B2A2C();
  sub_1C755200C();
  v16[0] = *v2;
  v15[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A1A8, &qword_1C757ED58);
  sub_1C72B2A80();
  OUTLINED_FUNCTION_8_60();
  OUTLINED_FUNCTION_13_58();
  sub_1C7551D2C();
  if (v1)
  {
    (*(v7 + 8))(v10, v5);
  }

  else
  {
    OUTLINED_FUNCTION_5_66(1);
    sub_1C7551D1C();
    OUTLINED_FUNCTION_5_66(2);
    sub_1C7551D1C();
    LOBYTE(v16[0]) = *(v2 + 24);
    v15[0] = 3;
    sub_1C72B2B58();
    OUTLINED_FUNCTION_7_59();
    sub_1C7551D2C();
    v16[0] = *(v2 + 32);
    v15[0] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A1B8, &qword_1C757ED60);
    sub_1C72B2BAC();
    OUTLINED_FUNCTION_8_60();
    OUTLINED_FUNCTION_13_58();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_5_66(5);
    sub_1C7551D1C();
    OUTLINED_FUNCTION_5_66(6);
    sub_1C7551CDC();
    v16[0] = *(v2 + 56);
    v15[0] = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A1C0, &qword_1C757ED68);
    sub_1C72B2C84();
    OUTLINED_FUNCTION_8_60();
    OUTLINED_FUNCTION_13_58();
    sub_1C7551D2C();
    v16[0] = *(v2 + 64);
    v15[0] = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_20_46(&qword_1EDD0CF60, MEMORY[0x1E69E6160]);
    OUTLINED_FUNCTION_8_60();
    OUTLINED_FUNCTION_13_58();
    sub_1C7551D2C();
    v16[0] = *(v2 + 72);
    v15[0] = 9;
    OUTLINED_FUNCTION_8_60();
    OUTLINED_FUNCTION_13_58();
    sub_1C7551D2C();
    v13 = type metadata accessor for StoryMusicCurationOptions(0);
    LOBYTE(v16[0]) = 10;
    type metadata accessor for AppleMusicSubscriptionState(0);
    OUTLINED_FUNCTION_17_56();
    sub_1C72B3E74(v11);
    OUTLINED_FUNCTION_13_58();
    sub_1C7551CBC();
    v16[0] = *(v2 + v13[15]);
    v15[0] = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214F30, &qword_1C757ED70);
    sub_1C72B3A90(&qword_1EC217C48);
    OUTLINED_FUNCTION_8_60();
    OUTLINED_FUNCTION_13_58();
    sub_1C7551D2C();
    v16[0] = *(v2 + v13[16]);
    v15[0] = 12;
    OUTLINED_FUNCTION_8_60();
    OUTLINED_FUNCTION_13_58();
    sub_1C7551D2C();
    LOBYTE(v16[0]) = 13;
    OUTLINED_FUNCTION_13_58();
    sub_1C7551C7C();
    LOBYTE(v16[0]) = 14;
    OUTLINED_FUNCTION_13_58();
    sub_1C7551CFC();
    LOBYTE(v16[0]) = *(v2 + v13[19]);
    v15[0] = 15;
    sub_1C7135F40();
    OUTLINED_FUNCTION_7_59();
    sub_1C7551D2C();
    OUTLINED_FUNCTION_5_66(16);
    sub_1C7551CDC();
    OUTLINED_FUNCTION_7_59();
    sub_1C7551CDC();
    v12 = v13[22];
    memcpy(v16, (v2 + v12), 0xB0uLL);
    memcpy(v15, (v2 + v12), sizeof(v15));
    sub_1C72B1B88(v16, v14);
    sub_1C72B2D5C();
    OUTLINED_FUNCTION_7_59();
    sub_1C7551D2C();
    memcpy(v14, v15, sizeof(v14));
    sub_1C72B1BC0(v14);
    (*(v7 + 8))(v10, v5);
  }

  OUTLINED_FUNCTION_125();
}

unint64_t sub_1C72B2A2C()
{
  result = qword_1EDD090E8;
  if (!qword_1EDD090E8)
  {
    result = swift_getWitnessTable(a5_3, &type metadata for StoryMusicCurationOptions.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD090E8);
  }

  return result;
}

unint64_t sub_1C72B2A80()
{
  result = qword_1EC21A1B0;
  if (!qword_1EC21A1B0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21A1A8, &qword_1C757ED58);
    v4[0] = sub_1C72B2B04();
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EC21A1B0);
  }

  return result;
}

unint64_t sub_1C72B2B04()
{
  result = qword_1EDD0BF80;
  if (!qword_1EDD0BF80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryMusicType, &type metadata for StoryMusicType, v0, v1);
    atomic_store(result, &qword_1EDD0BF80);
  }

  return result;
}

unint64_t sub_1C72B2B58()
{
  result = qword_1EDD07448[0];
  if (!qword_1EDD07448[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppleMusicSmartSearchUsageScenario, &type metadata for AppleMusicSmartSearchUsageScenario, v0, v1);
    atomic_store(result, qword_1EDD07448);
  }

  return result;
}

unint64_t sub_1C72B2BAC()
{
  result = qword_1EDD06B08;
  if (!qword_1EDD06B08)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21A1B8, &qword_1C757ED60);
    v4[0] = sub_1C72B2C30();
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EDD06B08);
  }

  return result;
}

unint64_t sub_1C72B2C30()
{
  result = qword_1EDD087E0;
  if (!qword_1EDD087E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MusicKeywordCurationApproach, &type metadata for MusicKeywordCurationApproach, v0, v1);
    atomic_store(result, &qword_1EDD087E0);
  }

  return result;
}

unint64_t sub_1C72B2C84()
{
  result = qword_1EDD06B30;
  if (!qword_1EDD06B30)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21A1C0, &qword_1C757ED68);
    v4[0] = sub_1C72B2D08();
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EDD06B30);
  }

  return result;
}

unint64_t sub_1C72B2D08()
{
  result = qword_1EDD09478;
  if (!qword_1EDD09478)
  {
    result = swift_getWitnessTable("Q֒'07\b", &type metadata for AppleMusicSearchQueryType, v0, v1);
    atomic_store(result, &qword_1EDD09478);
  }

  return result;
}

unint64_t sub_1C72B2D5C()
{
  result = qword_1EDD090F0;
  if (!qword_1EDD090F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryMusicCurationOptions.MusicCurationIngredients, &type metadata for StoryMusicCurationOptions.MusicCurationIngredients, v0, v1);
    atomic_store(result, &qword_1EDD090F0);
  }

  return result;
}

void StoryMusicCurationOptions.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C60, &qword_1C757ED30);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_158();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A1D0, &qword_1C757ED78);
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v74 - v10;
  type metadata accessor for StoryMusicCurationOptions(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_0();
  v79 = v13;
  v14 = *(v13 + 76);
  v81 = (v16 - v15);
  *(v81 + v14) = 2;
  v17 = v3[3];
  v77 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v17);
  sub_1C72B2A2C();
  v76 = v11;
  sub_1C7551FFC();
  if (v0)
  {
    OUTLINED_FUNCTION_40_31();
    v18 = 0;
    v19 = 0;
    OUTLINED_FUNCTION_1_93();
    v20 = 0;
  }

  else
  {
    v75 = v1;
    v74[1] = v14;
    v74[0] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A1A8, &qword_1C757ED58);
    sub_1C72B37B4();
    OUTLINED_FUNCTION_18_40();
    v8 = v78;
    v18 = v76;
    sub_1C7551C1C();
    OUTLINED_FUNCTION_100();
    v23 = v81;
    *v81 = v24;
    OUTLINED_FUNCTION_9_65(1);
    v23[1] = sub_1C7551C0C();
    OUTLINED_FUNCTION_9_65(2);
    v23[2] = sub_1C7551C0C();
    sub_1C72B388C();
    OUTLINED_FUNCTION_18_40();
    sub_1C7551C1C();
    *(v23 + 24) = v82[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A1B8, &qword_1C757ED60);
    sub_1C72B38E0();
    OUTLINED_FUNCTION_18_40();
    OUTLINED_FUNCTION_44_24(v25, v26, v27, v28, v29);
    OUTLINED_FUNCTION_100();
    v23[4] = v30;
    OUTLINED_FUNCTION_9_65(5);
    v23[5] = sub_1C7551C0C();
    OUTLINED_FUNCTION_9_65(6);
    *(v23 + 48) = sub_1C7551BCC() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A1C0, &qword_1C757ED68);
    sub_1C72B39B8();
    OUTLINED_FUNCTION_18_40();
    OUTLINED_FUNCTION_44_24(v31, v32, v33, v34, v35);
    OUTLINED_FUNCTION_100();
    v36 = v81;
    v81[7] = v37;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_21_45(&qword_1EDD0CF50);
    OUTLINED_FUNCTION_18_40();
    OUTLINED_FUNCTION_37_26();
    sub_1C7551C1C();
    OUTLINED_FUNCTION_176();
    OUTLINED_FUNCTION_100();
    v36[8] = v38;
    OUTLINED_FUNCTION_18_40();
    OUTLINED_FUNCTION_37_26();
    v39 = v80;
    sub_1C7551C1C();
    OUTLINED_FUNCTION_176();
    if (!v39)
    {
      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_38_24();
      *(v43 + 72) = v42;
      type metadata accessor for AppleMusicSubscriptionState(0);
      v82[0] = 10;
      OUTLINED_FUNCTION_17_56();
      sub_1C72B3E74(v44);
      OUTLINED_FUNCTION_32_28();
      OUTLINED_FUNCTION_10_63();
      sub_1C7551BAC();
      OUTLINED_FUNCTION_176();
      OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_38_24();
      sub_1C72B18F0(v75, v46 + v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214F30, &qword_1C757ED70);
      sub_1C72B3A90(&unk_1EC21A218);
      OUTLINED_FUNCTION_18_40();
      OUTLINED_FUNCTION_32_28();
      OUTLINED_FUNCTION_10_63();
      sub_1C7551C1C();
      OUTLINED_FUNCTION_176();
      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_35_20();
      *(v49 + v48) = v47;
      OUTLINED_FUNCTION_18_40();
      OUTLINED_FUNCTION_32_28();
      OUTLINED_FUNCTION_10_63();
      sub_1C7551C1C();
      OUTLINED_FUNCTION_176();
      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_35_20();
      *(v52 + v51) = v50;
      OUTLINED_FUNCTION_3_81(13);
      sub_1C7551B6C();
      OUTLINED_FUNCTION_176();
      OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_38_24();
      v55 = (v54 + v53);
      *v55 = v56;
      v55[1] = v57;
      OUTLINED_FUNCTION_3_81(14);
      sub_1C7551BEC();
      OUTLINED_FUNCTION_176();
      OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_38_24();
      *(v59 + v58) = v60;
      sub_1C72B3AFC();
      OUTLINED_FUNCTION_18_40();
      OUTLINED_FUNCTION_32_28();
      OUTLINED_FUNCTION_10_63();
      sub_1C7551C1C();
      OUTLINED_FUNCTION_176();
      OUTLINED_FUNCTION_35_20();
      *(v63 + v62) = v61;
      OUTLINED_FUNCTION_3_81(16);
      sub_1C7551BCC();
      OUTLINED_FUNCTION_176();
      OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_35_20();
      *(v66 + v64) = v65;
      OUTLINED_FUNCTION_3_81(17);
      sub_1C7551BCC();
      OUTLINED_FUNCTION_176();
      OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_35_20();
      *(v69 + v67) = v68;
      sub_1C72B3B50();
      OUTLINED_FUNCTION_18_40();
      OUTLINED_FUNCTION_32_28();
      OUTLINED_FUNCTION_10_63();
      sub_1C7551C1C();
      v80 = 0;
      v70 = OUTLINED_FUNCTION_34_27();
      v71(v70);
      OUTLINED_FUNCTION_50();
      v73 = v81;
      memcpy(v81 + *(v72 + 88), v82, 0xB0uLL);
      sub_1C72B3BA4(v73, v74[0]);
      __swift_destroy_boxed_opaque_existential_1(v77);
      sub_1C72B3C08(v73);
      goto LABEL_22;
    }

    v40 = OUTLINED_FUNCTION_2_87();
    v41(v40);
    LODWORD(v17) = 0;
    LODWORD(v1) = 0;
    OUTLINED_FUNCTION_0_127();
    v19 = 1;
    LODWORD(v14) = 1;
  }

  v21 = v81;
  __swift_destroy_boxed_opaque_existential_1(v77);
  if (v18)
  {

    if (v19)
    {
      goto LABEL_15;
    }

LABEL_6:
    v22 = v79;
    if (!v14)
    {
      goto LABEL_16;
    }

LABEL_7:

    if (v17)
    {
      goto LABEL_17;
    }

LABEL_8:
    if (!v1)
    {
      goto LABEL_18;
    }

LABEL_9:
    sub_1C6FD7FC8(v21 + *(v22 + 56), &qword_1EC215C60, &qword_1C757ED30);
    if (v8)
    {
      goto LABEL_19;
    }

LABEL_10:
    if (!v78)
    {
      goto LABEL_20;
    }

LABEL_11:

    if ((v20 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (!v19)
  {
    goto LABEL_6;
  }

LABEL_15:

  v22 = v79;
  if (v14)
  {
    goto LABEL_7;
  }

LABEL_16:
  if (!v17)
  {
    goto LABEL_8;
  }

LABEL_17:

  if (v1)
  {
    goto LABEL_9;
  }

LABEL_18:
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_19:

  if (v78)
  {
    goto LABEL_11;
  }

LABEL_20:
  if (v20)
  {
LABEL_21:
  }

LABEL_22:
  OUTLINED_FUNCTION_125();
}

unint64_t sub_1C72B37B4()
{
  result = qword_1EC21A1D8;
  if (!qword_1EC21A1D8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21A1A8, &qword_1C757ED58);
    v4[0] = sub_1C72B3838();
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &qword_1EC21A1D8);
  }

  return result;
}

unint64_t sub_1C72B3838()
{
  result = qword_1EC21A1E0;
  if (!qword_1EC21A1E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryMusicType, &type metadata for StoryMusicType, v0, v1);
    atomic_store(result, &qword_1EC21A1E0);
  }

  return result;
}

unint64_t sub_1C72B388C()
{
  result = qword_1EC21A1E8;
  if (!qword_1EC21A1E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppleMusicSmartSearchUsageScenario, &type metadata for AppleMusicSmartSearchUsageScenario, v0, v1);
    atomic_store(result, &qword_1EC21A1E8);
  }

  return result;
}

unint64_t sub_1C72B38E0()
{
  result = qword_1EC21A1F0;
  if (!qword_1EC21A1F0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21A1B8, &qword_1C757ED60);
    v4[0] = sub_1C72B3964();
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &qword_1EC21A1F0);
  }

  return result;
}

unint64_t sub_1C72B3964()
{
  result = qword_1EC21A1F8;
  if (!qword_1EC21A1F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MusicKeywordCurationApproach, &type metadata for MusicKeywordCurationApproach, v0, v1);
    atomic_store(result, &qword_1EC21A1F8);
  }

  return result;
}

unint64_t sub_1C72B39B8()
{
  result = qword_1EC21A200;
  if (!qword_1EC21A200)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21A1C0, &qword_1C757ED68);
    v4[0] = sub_1C72B3A3C();
    result = swift_getWitnessTable(MEMORY[0x1E69E6330], v3, v4);
    atomic_store(result, &qword_1EC21A200);
  }

  return result;
}

unint64_t sub_1C72B3A3C()
{
  result = qword_1EC21A208;
  if (!qword_1EC21A208)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppleMusicSearchQueryType, &type metadata for AppleMusicSearchQueryType, v0, v1);
    atomic_store(result, &qword_1EC21A208);
  }

  return result;
}

unint64_t sub_1C72B3A90(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v6 = v5;
    v7 = v4;
    v8 = v3;
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC214F30, &qword_1C757ED70);
    v10[0] = v8;
    v10[1] = v7;
    result = swift_getWitnessTable(v6, v9, v10);
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1C72B3AFC()
{
  result = qword_1EC21A220;
  if (!qword_1EC21A220)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryMusicCurationTechnique, &type metadata for StoryMusicCurationTechnique, v0, v1);
    atomic_store(result, &qword_1EC21A220);
  }

  return result;
}

unint64_t sub_1C72B3B50()
{
  result = qword_1EC21A228;
  if (!qword_1EC21A228)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryMusicCurationOptions.MusicCurationIngredients, &type metadata for StoryMusicCurationOptions.MusicCurationIngredients, v0, v1);
    atomic_store(result, &qword_1EC21A228);
  }

  return result;
}

uint64_t sub_1C72B3BA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoryMusicCurationOptions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C72B3C08(uint64_t a1)
{
  v2 = type metadata accessor for StoryMusicCurationOptions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t StoryMusicCurationOptions.jsonDescription.getter()
{
  v0 = sub_1C75506DC();
  MEMORY[0x1EEE9AC00](v0 - 8);
  OUTLINED_FUNCTION_14_0();
  v1 = sub_1C754D76C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_14_0();
  sub_1C754D7AC();
  swift_allocObject();
  sub_1C754D79C();
  sub_1C754D75C();
  sub_1C754D77C();
  type metadata accessor for StoryMusicCurationOptions(0);
  sub_1C72B3E74(&qword_1EDD090D0);
  OUTLINED_FUNCTION_90();
  v3 = sub_1C754D78C();
  v5 = v4;
  sub_1C75506CC();
  v6 = sub_1C75506AC();
  v8 = v7;
  sub_1C6FC1640(v3, v5);
  if (v8)
  {
  }

  else
  {
    v2 = StoryMusicCurationOptions.debugDescription.getter();
    MEMORY[0x1CCA5CD70](v2);

    return 0xD000000000000038;
  }

  return v6;
}

unint64_t sub_1C72B3E74(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v5 = v4;
    v6 = v3(255);
    result = swift_getWitnessTable(v5, v6);
    atomic_store(result, v1);
  }

  return result;
}

uint64_t StoryMusicCurationOptions.debugDescription.getter()
{
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000026, 0x80000001C75A8E60);
  v1 = MEMORY[0x1CCA5D090](*v0, &type metadata for StoryMusicType);
  MEMORY[0x1CCA5CD70](v1);

  MEMORY[0x1CCA5CD70](0x79654B78616D202CLL, 0xEE003D7364726F77);
  v2 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v2);

  MEMORY[0x1CCA5CD70](0xD000000000000023, 0x80000001C75A8E90);
  v3 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v3);

  v20 = v13;
  v4 = v0 + *(type metadata accessor for StoryMusicCurationOptions(0) + 88);
  v5 = *(v4 + 2);
  if (v5)
  {
    v6 = *(v4 + 1);
    sub_1C755180C();

    strcpy(&v13, ", storyPrompt=");
    HIBYTE(v13) = -18;
    MEMORY[0x1CCA5CD70](v6, v5);
    MEMORY[0x1CCA5CD70](32, 0xE100000000000000);
    MEMORY[0x1CCA5CD70](v13, *(&v13 + 1));
  }

  v7 = *(v4 + 6);
  if (v7)
  {
    v8 = *(v4 + 32);
    v9 = *(v4 + 7);
    v10 = *(v4 + 5);
    v18 = 0x3D5551202CLL;
    v19 = 0xE500000000000000;
    v13 = *(v4 + 24);
    v14 = v10;
    v15 = v7;
    v16 = v9;
    v17 = v8 & 0xFF01;
    v11 = StoryPromptAttributes.description.getter();
    MEMORY[0x1CCA5CD70](v11);

    MEMORY[0x1CCA5CD70](0x3D5551202CLL, 0xE500000000000000);
  }

  return v20;
}

unint64_t sub_1C72B4124()
{
  result = qword_1EC21A230;
  if (!qword_1EC21A230)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryMusicType, &type metadata for StoryMusicType, v0, v1);
    atomic_store(result, &qword_1EC21A230);
  }

  return result;
}

unint64_t sub_1C72B417C()
{
  result = qword_1EC21A238;
  if (!qword_1EC21A238)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryMusicCurationTechnique, &type metadata for StoryMusicCurationTechnique, v0, v1);
    atomic_store(result, &qword_1EC21A238);
  }

  return result;
}

unint64_t sub_1C72B41D4()
{
  result = qword_1EC21A240;
  if (!qword_1EC21A240)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MusicKeywordCurationApproach, &type metadata for MusicKeywordCurationApproach, v0, v1);
    atomic_store(result, &qword_1EC21A240);
  }

  return result;
}

unint64_t sub_1C72B425C()
{
  result = qword_1EC21A250;
  if (!qword_1EC21A250)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppleMusicSmartSearchUsageScenario, &type metadata for AppleMusicSmartSearchUsageScenario, v0, v1);
    atomic_store(result, &qword_1EC21A250);
  }

  return result;
}

unint64_t sub_1C72B42E0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_147(a1);
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v5);
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoryMusicCurationTechnique(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicKeywordCurationApproach(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C72B44F8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_1C72B45FC(uint64_t a1)
{
  sub_1C72B485C(319, &qword_1EDD0D058, &type metadata for StoryMusicType, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C72B485C(319, &qword_1EDD0CFA8, &type metadata for MusicKeywordCurationApproach, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1C72B485C(319, &qword_1EDD0CFC0, &type metadata for AppleMusicSearchQueryType, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1C72B485C(319, &qword_1EDD0CF70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1C6FF74D0(319);
          if (v5 <= 0x3F)
          {
            sub_1C72B47FC();
            if (v6 <= 0x3F)
            {
              sub_1C72B485C(319, &qword_1EDD0D078, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C72B47FC()
{
  if (!qword_1EDD06C20)
  {
    v0 = sub_1C755055C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD06C20);
    }
  }
}

void sub_1C72B485C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t get_enum_tag_for_layout_string_18PhotosIntelligence21StoryPromptAttributesVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C72B48CC(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 176))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C72B4920(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
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
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoryMusicCurationOptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoryMusicCurationOptions.MusicCurationIngredients.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C72B4B6C()
{
  result = qword_1EC21A268;
  if (!qword_1EC21A268)
  {
    result = swift_getWitnessTable(byte_1C757F5A4, &type metadata for StoryMusicCurationOptions.MusicCurationIngredients.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21A268);
  }

  return result;
}

unint64_t sub_1C72B4BC4()
{
  result = qword_1EC21A270;
  if (!qword_1EC21A270)
  {
    result = swift_getWitnessTable("헑'l;\a", &type metadata for StoryMusicCurationOptions.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21A270);
  }

  return result;
}

unint64_t sub_1C72B4C1C()
{
  result = qword_1EDD090D8;
  if (!qword_1EDD090D8)
  {
    result = swift_getWitnessTable(asc_1C757F5CC, &type metadata for StoryMusicCurationOptions.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD090D8);
  }

  return result;
}

unint64_t sub_1C72B4C74()
{
  result = qword_1EDD090E0;
  if (!qword_1EDD090E0)
  {
    result = swift_getWitnessTable(asc_1C757F5F4, &type metadata for StoryMusicCurationOptions.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD090E0);
  }

  return result;
}

unint64_t sub_1C72B4CCC()
{
  result = qword_1EDD090F8;
  if (!qword_1EDD090F8)
  {
    result = swift_getWitnessTable(asc_1C757F514, &type metadata for StoryMusicCurationOptions.MusicCurationIngredients.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD090F8);
  }

  return result;
}

unint64_t sub_1C72B4D24()
{
  result = qword_1EDD09100;
  if (!qword_1EDD09100)
  {
    result = swift_getWitnessTable(byte_1C757F53C, &type metadata for StoryMusicCurationOptions.MusicCurationIngredients.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09100);
  }

  return result;
}

unint64_t sub_1C72B4D78()
{
  result = qword_1EDD07440;
  if (!qword_1EDD07440)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppleMusicSmartSearchUsageScenario, &type metadata for AppleMusicSmartSearchUsageScenario, v0, v1);
    atomic_store(result, &qword_1EDD07440);
  }

  return result;
}

unint64_t sub_1C72B4DCC()
{
  result = qword_1EDD087D8;
  if (!qword_1EDD087D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MusicKeywordCurationApproach, &type metadata for MusicKeywordCurationApproach, v0, v1);
    atomic_store(result, &qword_1EDD087D8);
  }

  return result;
}

unint64_t sub_1C72B4E20()
{
  result = qword_1EDD08BE8;
  if (!qword_1EDD08BE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryMusicCurationTechnique, &type metadata for StoryMusicCurationTechnique, v0, v1);
    atomic_store(result, &qword_1EDD08BE8);
  }

  return result;
}

unint64_t sub_1C72B4E74()
{
  result = qword_1EC21A278;
  if (!qword_1EC21A278)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryMusicType, &type metadata for StoryMusicType, v0, v1);
    atomic_store(result, &qword_1EC21A278);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_21_45(uint64_t a1)
{

  return sub_1C72B1B20(a1);
}

uint64_t OUTLINED_FUNCTION_43_27()
{
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[27];
  v5 = v0[28];

  return sub_1C72B19F4(v2, v3, v4, v5);
}

void static StoryMusicEmbeddingTerms.termsByTags(_:matchAnyTags:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_223();
  v15 = v14;
  v70 = v16;
  if (sub_1C705CB28(0, v16))
  {
    if (qword_1EDD0DBD0 != -1)
    {
LABEL_44:
      OUTLINED_FUNCTION_0_128(&qword_1EDD0DBD0);
    }

    sub_1C75504FC();
  }

  else if (v15)
  {
    if (qword_1EDD0DBD0 != -1)
    {
      OUTLINED_FUNCTION_0_128(&qword_1EDD0DBD0);
    }

    v17 = 0;
    OUTLINED_FUNCTION_37_27();
    v64 = MEMORY[0x1E69E7CC0];
    while (v17 != a14)
    {
      if (v17 >= *(a13 + 16))
      {
        __break(1u);
        goto LABEL_43;
      }

      v18 = (a12 + 48 * v17);
      v19 = *v18;
      v20 = v18[1];
      v22 = v18[2];
      v21 = v18[3];
      v23 = v18[4];
      v24 = v18[5];
      v25 = *(v24 + 16);
      v26 = sub_1C72B67F4();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      swift_bridgeObjectRetain_n();
      v27 = MEMORY[0x1CCA5D4D0](v25, &type metadata for StoryMusicTermTag, v26);
      v71 = v27;
      v28 = *(v24 + 16);
      if (v28)
      {
        v29 = 32;
        do
        {
          sub_1C70F435C();
          ++v29;
          --v28;
        }

        while (v28);

        v30 = v71;
      }

      else
      {
        v30 = v27;
      }

      ++v17;
      v31 = *(sub_1C72B94AC(v70, v30, sub_1C71FB980, sub_1C72B9884, sub_1C71FD078) + 16);

      if (v31)
      {
        v32 = v64;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_13_49();
          v33 = OUTLINED_FUNCTION_99();
          sub_1C716E3E0(v33, v34, v35);
          v32 = v64;
        }

        v37 = *(v32 + 16);
        v36 = *(v32 + 24);
        if (v37 >= v36 >> 1)
        {
          v39 = OUTLINED_FUNCTION_15(v36);
          sub_1C716E3E0(v39, v37 + 1, 1);
          v32 = v64;
        }

        *(v32 + 16) = v37 + 1;
        v64 = v32;
        v38 = (v32 + 48 * v37);
        v38[4] = v19;
        v38[5] = v20;
        v38[6] = v22;
        v38[7] = v21;
        v38[8] = v23;
        v38[9] = v24;
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_1EDD0DBD0 != -1)
    {
      OUTLINED_FUNCTION_0_128(&qword_1EDD0DBD0);
    }

    v40 = 0;
    v41 = off_1EDD0DBD8;
    v68 = off_1EDD0DBD8 + 32;
    v69 = *(off_1EDD0DBD8 + 2);
    v65 = MEMORY[0x1E69E7CC0];
    while (v40 != v69)
    {
      if (v40 >= v41[2])
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v42 = &v68[48 * v40];
      v43 = *(v42 + 5);
      ++v40;
      v44 = *(v43 + 16);
      if (v44)
      {
        v45 = *(v42 + 1);
        v46 = *(v42 + 3);
        v66 = *(v42 + 2);
        v67 = *v42;
        v47 = *(v42 + 4);
        v48 = sub_1C72B67F4();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        v72 = MEMORY[0x1CCA5D4D0](v44, &type metadata for StoryMusicTermTag, v48);
        v49 = 32;
        do
        {
          sub_1C70F435C();
          ++v49;
          --v44;
        }

        while (v44);
        v50 = v72;
        v51 = *(v70 + 16);
        v52 = MEMORY[0x1CCA5D4D0](v51, &type metadata for StoryMusicTermTag, v48);
        v73 = v52;
        v53 = v70 + 32;
        if (v51)
        {
          do
          {
            ++v53;
            sub_1C70F435C();
            --v51;
          }

          while (v51);
          v54 = v73;
        }

        else
        {
          v54 = v52;
        }

        v55 = sub_1C72B7FAC(v50, v54);

        if (v55)
        {
          v56 = v65;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_13_49();
            v57 = OUTLINED_FUNCTION_99();
            sub_1C716E3E0(v57, v58, v59);
            v56 = v65;
          }

          v61 = *(v56 + 16);
          v60 = *(v56 + 24);
          if (v61 >= v60 >> 1)
          {
            v63 = OUTLINED_FUNCTION_15(v60);
            sub_1C716E3E0(v63, v61 + 1, 1);
            v56 = v65;
          }

          *(v56 + 16) = v61 + 1;
          v65 = v56;
          v62 = (v56 + 48 * v61);
          v62[4] = v67;
          v62[5] = v45;
          v62[6] = v66;
          v62[7] = v46;
          v62[8] = v47;
          v62[9] = v43;
        }

        else
        {
        }
      }
    }
  }

  OUTLINED_FUNCTION_224_0();
}

uint64_t static StoryMusicEmbeddingTerms.filterKeywordsBelowTermThreshold(from:minScoreThreshold:)(uint64_t a1, uint64_t a2, char a3)
{
  v5 = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC0];
  v6 = sub_1C6FB6304();
  for (i = 0; v6 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1CCA5DDD0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v8 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v19 = v8;
    sub_1C72B78A4(&v19, *&a2, a3 & 1, &v18);

    if (v18)
    {
      MEMORY[0x1CCA5D040](v9);
      v10 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v10 >> 1)
      {
        OUTLINED_FUNCTION_15(v10);
        sub_1C7550B9C();
      }

      sub_1C7550BEC();
      v5 = v20;
    }
  }

  if (qword_1EDD09518 == -1)
  {
    goto LABEL_14;
  }

LABEL_21:
  OUTLINED_FUNCTION_1_94(&qword_1EDD09518);
LABEL_14:
  v11 = sub_1C754FF1C();
  __swift_project_value_buffer(v11, qword_1EDD09520);
  sub_1C75504FC();
  sub_1C75504FC();
  v12 = sub_1C754FEEC();
  v13 = sub_1C755118C();
  if (!os_log_type_enabled(v12, v13))
  {

    return v5;
  }

  v14 = swift_slowAlloc();
  *v14 = 134217984;
  v15 = sub_1C6FB6304();
  result = sub_1C6FB6304();
  if (!__OFSUB__(v15, result))
  {
    *(v14 + 4) = v15 - result;

    _os_log_impl(&dword_1C6F5C000, v12, v13, "TrimmedList out keyword %ld", v14, 0xCu);
    OUTLINED_FUNCTION_109();

    return v5;
  }

  __break(1u);
  return result;
}

PhotosIntelligence::StoryMusicTermTag_optional __swiftcall StoryMusicTermTag.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551DFC();

  v5 = 0;
  v6 = 10;
  switch(v3)
  {
    case 0:
      goto LABEL_24;
    case 1:
      v5 = 1;
      goto LABEL_24;
    case 2:
      v5 = 2;
      goto LABEL_24;
    case 3:
      v5 = 3;
      goto LABEL_24;
    case 4:
      v5 = 4;
      goto LABEL_24;
    case 5:
      v5 = 5;
      goto LABEL_24;
    case 6:
      v5 = 6;
      goto LABEL_24;
    case 7:
      v5 = 7;
      goto LABEL_24;
    case 8:
      v5 = 8;
      goto LABEL_24;
    case 9:
      v5 = 9;
LABEL_24:
      v6 = v5;
      break;
    case 10:
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    default:
      v6 = 28;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t StoryMusicTermTag.rawValue.getter()
{
  result = 7105633;
  switch(*v0)
  {
    case 1:
      result = 0x4B6F72747365616DLL;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x7974697669746361;
      break;
    case 6:
      result = 0x656C706F6570;
      break;
    case 7:
      result = 1701669236;
      break;
    case 8:
      result = 0x6563616C70;
      break;
    case 9:
      result = 0x74617262656C6563;
      break;
    case 0xA:
      v2 = 0x6164696C6F68;
      goto LABEL_24;
    case 0xB:
      result = 1885958772;
      break;
    case 0xC:
      v2 = 0x72746E756F63;
LABEL_24:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
      break;
    case 0xD:
      result = 0x41535579746963;
      break;
    case 0xE:
      result = 0xD000000000000011;
      break;
    case 0xF:
      result = 0x6C6175736976;
      break;
    case 0x10:
      result = 0x656E6F54646F6F6DLL;
      break;
    case 0x11:
      result = 0x6E6F697461727563;
      break;
    case 0x12:
      result = 7628144;
      break;
    case 0x13:
      result = 0x6F68577571;
      break;
    case 0x14:
      result = 0x746168577571;
      break;
    case 0x15:
      result = 0x6E6568577571;
      break;
    case 0x16:
      result = 0x65726568577571;
      break;
    case 0x17:
      result = 0x697254726F467369;
      break;
    case 0x18:
      result = 0x726F5769746C756DLL;
      break;
    case 0x19:
      result = 0x646574736F6F62;
      break;
    case 0x1A:
      result = 0x54646574736F6F62;
      break;
    case 0x1B:
      result = 0x6146656C706F6570;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C72B5A74@<X0>(uint64_t *a1@<X8>)
{
  result = StoryMusicTermTag.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t StoryMusicEmbeddingTerm.displayName.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

uint64_t StoryMusicEmbeddingTerm.engineeringName.getter()
{
  v1 = *(v0 + 16);
  sub_1C75504FC();
  return v1;
}

void __swiftcall StoryMusicEmbeddingTerm.init(displayName:engineeringName:tags:scoreThreshold:)(PhotosIntelligence::StoryMusicEmbeddingTerm *__return_ptr retstr, Swift::String displayName, Swift::String engineeringName, Swift::OpaquePointer tags, Swift::OpaquePointer scoreThreshold)
{
  retstr->engineeringName = engineeringName;
  retstr->displayName = displayName;
  retstr->scoreThreshold = scoreThreshold;
  retstr->tags = tags;
}

uint64_t sub_1C72B5BCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7265656E69676E65 && a2 == 0xEF656D614E676E69;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72685465726F6373 && a2 == 0xEE00646C6F687365;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1936154996 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C7551DBC();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1C72B5D38(char a1)
{
  result = 0x4E79616C70736964;
  switch(a1)
  {
    case 1:
      result = 0x7265656E69676E65;
      break;
    case 2:
      result = 0x72685465726F6373;
      break;
    case 3:
      result = 1936154996;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C72B5DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C72B5BCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C72B5E04(uint64_t a1)
{
  v2 = sub_1C72B8D50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C72B5E40(uint64_t a1)
{
  v2 = sub_1C72B8D50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StoryMusicEmbeddingTerm.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A280, &unk_1C757F730);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = v1[2];
  v19 = v1[3];
  v20 = v9;
  v10 = v1[4];
  v17 = v1[5];
  v18 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C72B8D50();
  sub_1C755200C();
  LOBYTE(v23) = 0;
  v11 = v21;
  sub_1C7551CCC();
  if (!v11)
  {
    v12 = v17;
    v13 = v18;
    LOBYTE(v23) = 1;
    sub_1C7551CCC();
    v23 = v13;
    v22 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215708, &qword_1C7570280);
    v14 = sub_1C72B8DF8(&qword_1EDD06C30, MEMORY[0x1E69E6160], MEMORY[0x1E69E63C0], MEMORY[0x1E69E5E38]);
    OUTLINED_FUNCTION_27_35(v14);
    v23 = v12;
    v22 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A288, &qword_1C757F740);
    v15 = sub_1C72B8E68(&qword_1EC21A290, sub_1C72B8DA4, MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_27_35(v15);
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t StoryMusicEmbeddingTerm.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A2A0, &qword_1C757F748);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C72B8D50();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v6 = OUTLINED_FUNCTION_38_25();
  v15 = v7;
  LOBYTE(v16) = 1;
  v8 = OUTLINED_FUNCTION_38_25();
  v14 = v9;
  v13 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215708, &qword_1C7570280);
  sub_1C72B8DF8(&qword_1EDD06C28, MEMORY[0x1E69E6190], MEMORY[0x1E69E63E8], MEMORY[0x1E69E5E58]);
  OUTLINED_FUNCTION_24_29();
  sub_1C7551C1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A288, &qword_1C757F740);
  sub_1C72B8E68(&qword_1EDD06B80, sub_1C72B8EE0, MEMORY[0x1E69E6330]);
  OUTLINED_FUNCTION_24_29();
  sub_1C7551C1C();
  v11 = OUTLINED_FUNCTION_2_10();
  v12(v11);
  *a2 = v6;
  a2[1] = v15;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v16;
  a2[5] = v16;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t StoryMusicEmbeddingTerm.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[5];
  sub_1C755180C();
  OUTLINED_FUNCTION_39_29();
  MEMORY[0x1CCA5CD70](v1, v2);
  OUTLINED_FUNCTION_39_29();
  MEMORY[0x1CCA5CD70](v3, v4);
  MEMORY[0x1CCA5CD70](0xD000000000000011, 0x80000001C75A91A0);
  v6 = sub_1C75504BC();
  MEMORY[0x1CCA5CD70](v6);

  MEMORY[0x1CCA5CD70](0x3D73676154202CLL, 0xE700000000000000);
  v7 = MEMORY[0x1CCA5D090](v5, &type metadata for StoryMusicTermTag);
  MEMORY[0x1CCA5CD70](v7);

  return 0;
}

uint64_t StoryMusicEmbeddingTerm.descriptionAsCSV.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  MEMORY[0x1CCA5D090](v0[5], &type metadata for StoryMusicTermTag);
  sub_1C6FB5E8C();
  v5 = sub_1C755155C();
  v7 = v6;

  sub_1C755180C();

  MEMORY[0x1CCA5CD70](v1, v2);
  MEMORY[0x1CCA5CD70](2239522, 0xE300000000000000);
  MEMORY[0x1CCA5CD70](v3, v4);
  MEMORY[0x1CCA5CD70](11298, 0xE200000000000000);
  v8 = sub_1C75504BC();
  MEMORY[0x1CCA5CD70](v8);

  MEMORY[0x1CCA5CD70](8748, 0xE200000000000000);
  MEMORY[0x1CCA5CD70](v5, v7);

  MEMORY[0x1CCA5CD70](34, 0xE100000000000000);
  return 34;
}

uint64_t sub_1C72B670C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD09520);
  __swift_project_value_buffer(v0, qword_1EDD09520);
  return sub_1C754FEFC();
}

uint64_t sub_1C72B6790()
{
  if (qword_1EDD09568 != -1)
  {
    swift_once();
  }

  off_1EDD0DBD8 = qword_1EDD09570;

  return sub_1C75504FC();
}

unint64_t sub_1C72B67F4()
{
  result = qword_1EDD0ECB0;
  if (!qword_1EDD0ECB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryMusicTermTag, &type metadata for StoryMusicTermTag, v0, v1);
    atomic_store(result, &qword_1EDD0ECB0);
  }

  return result;
}

void sub_1C72B68D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  static StoryMusicEmbeddingTerms.termsByTags(_:matchAnyTags:)(&unk_1F46A6F30, 1, a3, a4, a5, a6, a7, a8, v20, v21, v22, v23, v24, v25);
  v9 = v8;
  v10 = 0;
  v11 = *(v8 + 16);
  v12 = (v8 + 40);
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v11 == v10)
    {

      qword_1EDD09540 = v13;
      return;
    }

    if (v10 >= *(v9 + 16))
    {
      break;
    }

    v15 = *(v12 - 1);
    v14 = *v12;
    sub_1C75504FC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_13_49();
      OUTLINED_FUNCTION_99();
      sub_1C6FB1814();
      v13 = v18;
    }

    v16 = *(v13 + 16);
    if (v16 >= *(v13 + 24) >> 1)
    {
      sub_1C6FB1814();
      v13 = v19;
    }

    *(v13 + 16) = v16 + 1;
    v17 = v13 + 16 * v16;
    *(v17 + 32) = v15;
    *(v17 + 40) = v14;
    v12 += 6;
    ++v10;
  }

  __break(1u);
}

uint64_t sub_1C72B69FC()
{
  result = static StoryMusicEmbeddingTerms.getTextEmbeddingModelVersion()();
  qword_1EDD09558 = result;
  unk_1EDD09560 = v1;
  return result;
}

uint64_t static StoryMusicEmbeddingTerms.getTextEmbeddingModelVersion()()
{
  v0 = [objc_opt_self() modelVersion];
  if (v0)
  {
    v1 = v0;
    v8 = sub_1C755103C();
    v2 = sub_1C7551D8C();
  }

  else
  {
    if (qword_1EDD09518 != -1)
    {
      OUTLINED_FUNCTION_1_94(&qword_1EDD09518);
    }

    v3 = sub_1C754FF1C();
    __swift_project_value_buffer(v3, qword_1EDD09520);
    v1 = sub_1C754FEEC();
    v4 = sub_1C755119C();
    if (!os_log_type_enabled(v1, v4))
    {

      return 56;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    v2 = 56;
    *(v5 + 4) = sub_1C6F765A4(56, 0xE100000000000000, &v8);
    _os_log_impl(&dword_1C6F5C000, v1, v4, "PNTextEmbeddingService.modelVersion() is nil. Using fallback model version: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  return v2;
}

uint64_t static StoryMusicEmbeddingTerms.textEmbeddingModelVersion.getter()
{
  if (qword_1EDD09550 != -1)
  {
    OUTLINED_FUNCTION_15_55(&qword_1EDD09550);
  }

  v0 = qword_1EDD09558;
  sub_1C75504FC();
  return v0;
}

double static StoryMusicEmbeddingTerms.termByDisplayName(_:)()
{
  OUTLINED_FUNCTION_223();
  v28 = v0;
  if (qword_1EDD0DBD0 != -1)
  {
LABEL_22:
    OUTLINED_FUNCTION_0_128(&qword_1EDD0DBD0);
  }

  v1 = 0;
  v31 = off_1EDD0DBD8;
  v32 = -*(off_1EDD0DBD8 + 2);
  v2 = off_1EDD0DBD8 + 40;
  v29 = off_1EDD0DBD8 + 40;
  v30 = MEMORY[0x1E69E7CC0];
LABEL_3:
  v3 = &v2[48 * v1];
  v4 = v1 + 1;
  while (v32 + v4 != 1)
  {
    if ((v4 - 1) >= v31[2])
    {
      __break(1u);
      goto LABEL_22;
    }

    v33 = v4;
    v6 = *(v3 - 1);
    v5 = *v3;
    v7 = *(v3 + 1);
    v8 = *(v3 + 2);
    v9 = *(v3 + 3);
    v10 = *(v3 + 4);
    v11 = sub_1C75506FC();
    v13 = v12;
    if (v11 == sub_1C75506FC() && v13 == v14)
    {
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();

LABEL_13:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = OUTLINED_FUNCTION_99();
        sub_1C716E3E0(v19, v20, v21);
        v18 = v30;
      }

      v23 = v18[2];
      v22 = v18[3];
      if (v23 >= v22 >> 1)
      {
        v25 = OUTLINED_FUNCTION_15(v22);
        sub_1C716E3E0(v25, v23 + 1, 1);
        v18 = v30;
      }

      v18[2] = v23 + 1;
      v30 = v18;
      v24 = &v18[6 * v23];
      v24[4] = v6;
      v24[5] = v5;
      v24[6] = v7;
      v24[7] = v8;
      v24[8] = v9;
      v24[9] = v10;
      v1 = v33;
      v2 = v29;
      goto LABEL_3;
    }

    v16 = sub_1C7551DBC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();

    if (v16)
    {
      goto LABEL_13;
    }

    v4 = v33 + 1;
    v3 += 48;
  }

  sub_1C710DC4C(v30, v28);
  OUTLINED_FUNCTION_224_0();

  return result;
}

void static StoryMusicEmbeddingTerms.termByEngineeringName(_:)(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  v3 = static StoryMusicEmbeddingTerms.allTerms(matching:)(a2, a3);
  v4 = 0;
  v28 = *(v3 + 16);
  v29 = v3;
  v27 = v3 + 32;
  v5 = MEMORY[0x1E69E7CC0];
LABEL_2:
  while (v4 != v28)
  {
    if (v4 >= *(v29 + 16))
    {
      __break(1u);
      return;
    }

    v6 = (v27 + 48 * v4);
    v7 = v6[3];
    v30 = v6[2];
    v31 = *v6;
    v8 = v6[4];
    v9 = v6[5];
    v32 = v4 + 1;
    v10 = *(v9 + 16);
    v11 = (v9 + 32);
    v34 = v6[1];
    sub_1C75504FC();
    v33 = v7;
    sub_1C75504FC();
    sub_1C75504FC();
    swift_bridgeObjectRetain_n();
    v12 = (v9 + 32);
    while (v10)
    {
      switch(*v12)
      {
        case 1:
          goto LABEL_95;
        case 3:
          OUTLINED_FUNCTION_35_21();
          break;
        case 4:
          OUTLINED_FUNCTION_23_35();
          break;
        case 5:
          OUTLINED_FUNCTION_9_66();
          break;
        case 6:
          OUTLINED_FUNCTION_16_48();
          break;
        case 7:
          OUTLINED_FUNCTION_29_31();
          break;
        case 8:
          OUTLINED_FUNCTION_21_46();
          break;
        case 9:
          OUTLINED_FUNCTION_5_67();
          break;
        case 0xA:
          OUTLINED_FUNCTION_19_52();
          break;
        case 0xB:
          OUTLINED_FUNCTION_28_26();
          break;
        case 0xC:
          OUTLINED_FUNCTION_18_41();
          break;
        case 0xD:
          OUTLINED_FUNCTION_12_52();
          break;
        case 0xE:
          OUTLINED_FUNCTION_22_48();
          break;
        case 0xF:
          OUTLINED_FUNCTION_17_57();
          break;
        case 0x10:
          OUTLINED_FUNCTION_8_61();
          break;
        case 0x11:
          OUTLINED_FUNCTION_10_64();
          break;
        case 0x13:
          OUTLINED_FUNCTION_20_47();
          break;
        case 0x14:
        case 0x15:
          OUTLINED_FUNCTION_6_73();
          break;
        case 0x16:
          OUTLINED_FUNCTION_11_54();
          break;
        case 0x17:
          OUTLINED_FUNCTION_7_60();
          break;
        case 0x18:
          OUTLINED_FUNCTION_2_88();
          break;
        case 0x19:
          OUTLINED_FUNCTION_13_59();
          break;
        case 0x1A:
          OUTLINED_FUNCTION_4_72();
          break;
        case 0x1B:
          OUTLINED_FUNCTION_3_82();
          break;
        default:
          break;
      }

      v13 = sub_1C7551DBC();

      ++v12;
      --v10;
      if (v13)
      {
        goto LABEL_61;
      }
    }

    v14 = *(v9 + 16);
    v15 = (v9 + 32);
    while (v14)
    {
      switch(*v15)
      {
        case 2:
LABEL_95:

          goto LABEL_61;
        case 3:
          OUTLINED_FUNCTION_35_21();
          break;
        case 4:
          OUTLINED_FUNCTION_23_35();
          break;
        case 5:
          OUTLINED_FUNCTION_9_66();
          break;
        case 6:
          OUTLINED_FUNCTION_16_48();
          break;
        case 7:
          OUTLINED_FUNCTION_29_31();
          break;
        case 8:
          OUTLINED_FUNCTION_21_46();
          break;
        case 9:
          OUTLINED_FUNCTION_5_67();
          break;
        case 0xA:
          OUTLINED_FUNCTION_19_52();
          break;
        case 0xB:
          OUTLINED_FUNCTION_28_26();
          break;
        case 0xC:
          OUTLINED_FUNCTION_18_41();
          break;
        case 0xD:
          OUTLINED_FUNCTION_12_52();
          break;
        case 0xE:
          OUTLINED_FUNCTION_22_48();
          break;
        case 0xF:
          OUTLINED_FUNCTION_17_57();
          break;
        case 0x10:
          OUTLINED_FUNCTION_8_61();
          break;
        case 0x11:
          OUTLINED_FUNCTION_10_64();
          break;
        case 0x13:
          OUTLINED_FUNCTION_20_47();
          break;
        case 0x14:
        case 0x15:
          OUTLINED_FUNCTION_6_73();
          break;
        case 0x16:
          OUTLINED_FUNCTION_11_54();
          break;
        case 0x17:
          OUTLINED_FUNCTION_7_60();
          break;
        case 0x18:
          OUTLINED_FUNCTION_2_88();
          break;
        case 0x19:
          OUTLINED_FUNCTION_13_59();
          break;
        case 0x1A:
          OUTLINED_FUNCTION_4_72();
          break;
        case 0x1B:
          OUTLINED_FUNCTION_3_82();
          break;
        default:
          break;
      }

      v16 = sub_1C7551DBC();

      ++v15;
      --v14;
      if (v16)
      {
        goto LABEL_61;
      }
    }

    v23 = *(v9 + 16);
    while (v23)
    {
      switch(*v11)
      {
        case 3:

          goto LABEL_94;
        case 4:
          OUTLINED_FUNCTION_23_35();
          break;
        case 5:
          OUTLINED_FUNCTION_9_66();
          break;
        case 6:
          OUTLINED_FUNCTION_16_48();
          break;
        case 7:
          OUTLINED_FUNCTION_29_31();
          break;
        case 8:
          OUTLINED_FUNCTION_21_46();
          break;
        case 9:
          OUTLINED_FUNCTION_5_67();
          break;
        case 0xA:
          OUTLINED_FUNCTION_19_52();
          break;
        case 0xB:
          OUTLINED_FUNCTION_28_26();
          break;
        case 0xC:
          OUTLINED_FUNCTION_18_41();
          break;
        case 0xD:
          OUTLINED_FUNCTION_12_52();
          break;
        case 0xE:
          OUTLINED_FUNCTION_22_48();
          break;
        case 0xF:
          OUTLINED_FUNCTION_17_57();
          break;
        case 0x10:
          OUTLINED_FUNCTION_8_61();
          break;
        case 0x11:
          OUTLINED_FUNCTION_10_64();
          break;
        case 0x13:
          OUTLINED_FUNCTION_20_47();
          break;
        case 0x14:
        case 0x15:
          OUTLINED_FUNCTION_6_73();
          break;
        case 0x16:
          OUTLINED_FUNCTION_11_54();
          break;
        case 0x17:
          OUTLINED_FUNCTION_7_60();
          break;
        case 0x18:
          OUTLINED_FUNCTION_2_88();
          break;
        case 0x19:
          OUTLINED_FUNCTION_13_59();
          break;
        case 0x1A:
          OUTLINED_FUNCTION_4_72();
          break;
        case 0x1B:
          OUTLINED_FUNCTION_3_82();
          break;
        default:
          break;
      }

      v24 = sub_1C7551DBC();

      ++v11;
      --v23;
      if (v24)
      {

LABEL_94:

        v4 = v32;
        goto LABEL_2;
      }
    }

LABEL_61:
    v4 = v32;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_13_49();
      v17 = OUTLINED_FUNCTION_99();
      sub_1C716E3E0(v17, v18, v19);
    }

    v21 = v5[2];
    v20 = v5[3];
    if (v21 >= v20 >> 1)
    {
      v25 = OUTLINED_FUNCTION_15(v20);
      sub_1C716E3E0(v25, v21 + 1, 1);
    }

    v5[2] = v21 + 1;
    v22 = &v5[6 * v21];
    v22[4] = v31;
    v22[5] = v34;
    v22[6] = v30;
    v22[7] = v33;
    v22[8] = v8;
    v22[9] = v9;
  }

  sub_1C710DC4C(v5, a1);
}

uint64_t static StoryMusicEmbeddingTerms.allTerms(matching:)(uint64_t a1, uint64_t a2)
{
  if (qword_1EDD0DBD0 != -1)
  {
LABEL_39:
    OUTLINED_FUNCTION_0_128(&qword_1EDD0DBD0);
  }

  v2 = 0;
  OUTLINED_FUNCTION_37_27();
  v56 = MEMORY[0x1E69E7CC0];
  while (v2 != v61)
  {
    if (v2 >= *(v60 + 16))
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v3 = (v59 + 48 * v2);
    v4 = v3[1];
    v62 = *v3;
    v5 = v3[3];
    v6 = v3[4];
    v7 = v3[5];
    ++v2;
    v67 = v3[2];
    v8 = sub_1C75506FC();
    v10 = v9;
    v12 = v8 == sub_1C75506FC() && v10 == v11;
    v65 = v6;
    v66 = v7;
    if (v12)
    {
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();

LABEL_31:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v56;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v48 = OUTLINED_FUNCTION_99();
        sub_1C716E3E0(v48, v49, v50);
        v47 = v56;
      }

      v52 = *(v47 + 16);
      v51 = *(v47 + 24);
      if (v52 >= v51 >> 1)
      {
        v54 = OUTLINED_FUNCTION_15(v51);
        sub_1C716E3E0(v54, v52 + 1, 1);
        v47 = v56;
      }

      *(v47 + 16) = v52 + 1;
      v56 = v47;
      v53 = (v47 + 48 * v52);
      v53[4] = v62;
      v53[5] = v4;
      v53[6] = v67;
      v53[7] = v5;
      v53[8] = v65;
      v53[9] = v66;
    }

    else
    {
      v13 = sub_1C7551DBC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();

      if (v13)
      {
        goto LABEL_31;
      }

      v64 = v4;
      sub_1C6FB5E8C();
      v14 = sub_1C755152C();
      v15 = v14;
      v16 = v5;
      v17 = *(v14 + 16);
      if (v17 <= 1)
      {
      }

      else
      {
        v57 = v16;
        v58 = v2;
        v18 = 0;
        v19 = v14 + 40;
        v20 = MEMORY[0x1E69E7CC0];
        v63 = v14 + 40;
LABEL_12:
        v21 = (v19 + 16 * v18);
        while (v17 != v18)
        {
          if (v18 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_38;
          }

          v23 = *(v21 - 1);
          v22 = *v21;
          v24 = sub_1C75506FC();
          v26 = v25;
          if (v24 == sub_1C75506FC() && v26 == v27)
          {
            sub_1C75504FC();

LABEL_22:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_13_49();
              v30 = OUTLINED_FUNCTION_99();
              sub_1C6F7ED9C(v30, v31, v32, v33, v34, v35, v36);
            }

            v38 = *(v20 + 16);
            v37 = *(v20 + 24);
            if (v38 >= v37 >> 1)
            {
              v40 = OUTLINED_FUNCTION_15(v37);
              sub_1C6F7ED9C(v40, v38 + 1, 1, v41, v42, v43, v44);
            }

            ++v18;
            *(v20 + 16) = v38 + 1;
            v39 = v20 + 16 * v38;
            *(v39 + 32) = v23;
            *(v39 + 40) = v22;
            v19 = v63;
            goto LABEL_12;
          }

          v29 = sub_1C7551DBC();
          sub_1C75504FC();

          if (v29)
          {
            goto LABEL_22;
          }

          v21 += 2;
          ++v18;
        }

        v45 = *(v20 + 16);

        v5 = v57;
        v2 = v58;
        v4 = v64;
        if (v45)
        {
          goto LABEL_31;
        }
      }
    }
  }

  return v56;
}

void sub_1C72B78A4(uint64_t *a1@<X0>, double a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v7 = *a1;
  static StoryMusicEmbeddingTerms.termByDisplayName(_:)();
  v8 = v43;
  if (v43)
  {
    v9 = v42;
    v10 = static StoryMusicEmbeddingTerms.normalizedThreshold(for:)(&v42);
    if ((a3 & 1) == 0)
    {
      v11 = a2;
      if (v10 < a2)
      {
        v38 = a2;
        if (qword_1EDD09518 != -1)
        {
          swift_once();
        }

        v12 = sub_1C754FF1C();
        __swift_project_value_buffer(v12, qword_1EDD09520);
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        v13 = sub_1C754FEEC();
        v14 = sub_1C755118C();
        sub_1C72B9804(v9, v8);
        v40 = v14;
        v15 = v14;
        v16 = v13;
        if (os_log_type_enabled(v13, v15))
        {
          v17 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v42 = v35;
          *v17 = 136315650;
          sub_1C75504FC();
          v36 = sub_1C6F765A4(v9, v8, &v42);

          *(v17 + 4) = v36;
          *(v17 + 12) = 2080;
          sub_1C75504FC();
          v33 = sub_1C75504BC();
          v37 = v16;
          v19 = v18;

          v34 = sub_1C6F765A4(v33, v19, &v42);

          *(v17 + 14) = v34;
          *(v17 + 22) = 2048;
          *(v17 + 24) = v38;
          _os_log_impl(&dword_1C6F5C000, v37, v40, "Forcing score threshold for keyword '%s' from %s to %f", v17, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1CCA5F8E0](v35, -1, -1);
          MEMORY[0x1CCA5F8E0](v17, -1, -1);
        }

        else
        {
        }

        v10 = v11;
      }
    }

    if (v10 <= *(v7 + 32))
    {
      sub_1C72B9804(v9, v8);
      *a4 = v7;
    }

    else
    {
      if (qword_1EDD09518 != -1)
      {
        swift_once();
      }

      v20 = sub_1C754FF1C();
      __swift_project_value_buffer(v20, qword_1EDD09520);
      sub_1C72B97A0(v9, v8);

      v21 = sub_1C754FEEC();
      v22 = sub_1C755118C();
      sub_1C72B9804(v9, v8);

      if (os_log_type_enabled(v21, v22))
      {
        v39 = v22;
        v23 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v42 = v41;
        *v23 = 136315394;
        sub_1C75504FC();
        sub_1C72B9804(v9, v8);
        v24 = sub_1C75504BC();
        v25 = v21;
        v27 = v26;

        v28 = sub_1C6F765A4(v24, v27, &v42);

        *(v23 + 4) = v28;
        *(v23 + 12) = 2080;

        v29 = MusicKeywordCompletion.description.getter();
        v31 = v30;

        v32 = sub_1C6F765A4(v29, v31, &v42);

        *(v23 + 14) = v32;
        _os_log_impl(&dword_1C6F5C000, v25, v39, "Trimming out keyword since its below the threshold %s: %s", v23, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v41, -1, -1);
        MEMORY[0x1CCA5F8E0](v23, -1, -1);
      }

      else
      {

        sub_1C72B9804(v9, v8);
      }

      *a4 = 0;
    }
  }

  else
  {
    *a4 = 0;
  }
}

double static StoryMusicEmbeddingTerms.normalizedThreshold(for:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[4];
  if (qword_1EDD09550 != -1)
  {
    OUTLINED_FUNCTION_15_55(&qword_1EDD09550);
  }

  if (*(v3 + 16))
  {
    v4 = sub_1C6F78124(qword_1EDD09558, unk_1EDD09560);
    if (v5)
    {
      return *(*(v3 + 56) + 8 * v4);
    }

    if (*(v3 + 16))
    {
      v4 = sub_1C6F78124(56, 0xE100000000000000);
      if (v6)
      {
        return *(*(v3 + 56) + 8 * v4);
      }
    }
  }

  if (qword_1EDD09518 != -1)
  {
    OUTLINED_FUNCTION_1_94(&qword_1EDD09518);
  }

  v8 = sub_1C754FF1C();
  __swift_project_value_buffer(v8, qword_1EDD09520);
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v9 = sub_1C754FEEC();
  v10 = sub_1C755119C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1C6F765A4(v1, v2, &v13);
    *(v11 + 12) = 2048;
    *(v11 + 14) = 0x3FEB333333333333;
    _os_log_impl(&dword_1C6F5C000, v9, v10, "For term: %s no exact or fallbackScoreThreshold so using default score threshold: %f", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  return 0.85;
}

uint64_t sub_1C72B7FAC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;
  result = sub_1C75504FC();
  v11 = 0;
  v30 = v2;
  v28 = v8;
  v29 = v4;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_10:
      if (!*(a1 + 16))
      {
        break;
      }

      v13 = *(*(v2 + 48) + (__clz(__rbit64(v7)) | (v12 << 6)));
      v14 = sub_1C72DE9F8(*(a1 + 40), v13);
      v15 = -1 << *(a1 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v17 = ~v15;
      while (1)
      {
        v18 = 0xE300000000000000;
        v19 = 7105633;
        switch(*(*(a1 + 48) + v16))
        {
          case 1:
            v19 = 0x4B6F72747365616DLL;
            v18 = 0xEE0064726F777965;
            break;
          case 2:
            v19 = 0xD000000000000010;
            v18 = 0x80000001C7596010;
            break;
          case 3:
            v19 = 0xD000000000000017;
            v18 = 0x80000001C7596030;
            break;
          case 4:
            v19 = 0xD000000000000013;
            v18 = 0x80000001C7596050;
            break;
          case 5:
            v18 = 0xE800000000000000;
            v19 = 0x7974697669746361;
            break;
          case 6:
            v18 = 0xE600000000000000;
            v19 = 0x656C706F6570;
            break;
          case 7:
            v18 = 0xE400000000000000;
            v19 = 1701669236;
            break;
          case 8:
            v18 = 0xE500000000000000;
            v19 = 0x6563616C70;
            break;
          case 9:
            v19 = 0x74617262656C6563;
            v21 = 7237481;
            goto LABEL_42;
          case 0xA:
            v18 = 0xE700000000000000;
            v20 = 0x6164696C6F68;
            goto LABEL_36;
          case 0xB:
            v18 = 0xE400000000000000;
            v19 = 1885958772;
            break;
          case 0xC:
            v18 = 0xE700000000000000;
            v20 = 0x72746E756F63;
LABEL_36:
            v19 = v20 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
            break;
          case 0xD:
            v18 = 0xE700000000000000;
            v19 = 0x41535579746963;
            break;
          case 0xE:
            v19 = 0xD000000000000011;
            v18 = 0x80000001C75960A0;
            break;
          case 0xF:
            v18 = 0xE600000000000000;
            v19 = 0x6C6175736976;
            break;
          case 0x10:
            v18 = 0xE800000000000000;
            v19 = 0x656E6F54646F6F6DLL;
            break;
          case 0x11:
            v18 = 0xE800000000000000;
            v19 = 0x6E6F697461727563;
            break;
          case 0x12:
            v19 = 7628144;
            break;
          case 0x13:
            v18 = 0xE500000000000000;
            v19 = 0x6F68577571;
            break;
          case 0x14:
            v18 = 0xE600000000000000;
            v19 = 0x746168577571;
            break;
          case 0x15:
            v18 = 0xE600000000000000;
            v19 = 0x6E6568577571;
            break;
          case 0x16:
            v18 = 0xE700000000000000;
            v19 = 0x65726568577571;
            break;
          case 0x17:
            v19 = 0x697254726F467369;
            v18 = 0xE900000000000070;
            break;
          case 0x18:
            v19 = 0x726F5769746C756DLL;
            v18 = 0xEF65736172685064;
            break;
          case 0x19:
            v18 = 0xE700000000000000;
            v19 = 0x646574736F6F62;
            break;
          case 0x1A:
            v19 = 0x54646574736F6F62;
            v21 = 7367026;
LABEL_42:
            v18 = v21 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            break;
          case 0x1B:
            v19 = 0x6146656C706F6570;
            v18 = 0xEC000000796C696DLL;
            break;
          default:
            break;
        }

        v22 = 0xE300000000000000;
        v23 = 7105633;
        switch(v13)
        {
          case 1:
            v23 = 0x4B6F72747365616DLL;
            v22 = 0xEE0064726F777965;
            break;
          case 2:
            v23 = 0xD000000000000010;
            v22 = 0x80000001C7596010;
            break;
          case 3:
            v23 = 0xD000000000000017;
            v22 = 0x80000001C7596030;
            break;
          case 4:
            v23 = 0xD000000000000013;
            v22 = 0x80000001C7596050;
            break;
          case 5:
            v22 = 0xE800000000000000;
            v23 = 0x7974697669746361;
            break;
          case 6:
            v22 = 0xE600000000000000;
            v23 = 0x656C706F6570;
            break;
          case 7:
            v22 = 0xE400000000000000;
            v23 = 1701669236;
            break;
          case 8:
            v22 = 0xE500000000000000;
            v23 = 0x6563616C70;
            break;
          case 9:
            v23 = 0x74617262656C6563;
            v25 = 7237481;
            goto LABEL_72;
          case 10:
            v22 = 0xE700000000000000;
            v24 = 0x6164696C6F68;
            goto LABEL_66;
          case 11:
            v22 = 0xE400000000000000;
            v23 = 1885958772;
            break;
          case 12:
            v22 = 0xE700000000000000;
            v24 = 0x72746E756F63;
LABEL_66:
            v23 = v24 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
            break;
          case 13:
            v22 = 0xE700000000000000;
            v23 = 0x41535579746963;
            break;
          case 14:
            v23 = 0xD000000000000011;
            v22 = 0x80000001C75960A0;
            break;
          case 15:
            v22 = 0xE600000000000000;
            v23 = 0x6C6175736976;
            break;
          case 16:
            v22 = 0xE800000000000000;
            v23 = 0x656E6F54646F6F6DLL;
            break;
          case 17:
            v22 = 0xE800000000000000;
            v23 = 0x6E6F697461727563;
            break;
          case 18:
            v23 = 7628144;
            break;
          case 19:
            v22 = 0xE500000000000000;
            v23 = 0x6F68577571;
            break;
          case 20:
            v22 = 0xE600000000000000;
            v23 = 0x746168577571;
            break;
          case 21:
            v22 = 0xE600000000000000;
            v23 = 0x6E6568577571;
            break;
          case 22:
            v22 = 0xE700000000000000;
            v23 = 0x65726568577571;
            break;
          case 23:
            v23 = 0x697254726F467369;
            v22 = 0xE900000000000070;
            break;
          case 24:
            v23 = 0x726F5769746C756DLL;
            v22 = 0xEF65736172685064;
            break;
          case 25:
            v22 = 0xE700000000000000;
            v23 = 0x646574736F6F62;
            break;
          case 26:
            v23 = 0x54646574736F6F62;
            v25 = 7367026;
LABEL_72:
            v22 = v25 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            break;
          case 27:
            v23 = 0x6146656C706F6570;
            v22 = 0xEC000000796C696DLL;
            break;
          default:
            break;
        }

        if (v19 == v23 && v18 == v22)
        {
          break;
        }

        v27 = sub_1C7551DBC();

        if (v27)
        {
          goto LABEL_81;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_83;
        }
      }

LABEL_81:
      v11 = v12;
      v2 = v30;
      v8 = v28;
      v4 = v29;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

LABEL_83:

    return 0;
  }

LABEL_7:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_1C72B86EC()
{
  OUTLINED_FUNCTION_223();
  if (*(v0 + 16) < *(v1 + 16))
  {
LABEL_2:
    OUTLINED_FUNCTION_224_0();
    return;
  }

  v2 = v1;
  v3 = v0;
  v4 = 0;
  v5 = v1 + 56;
  v6 = 1 << *(v1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v1 + 56);
  v9 = (v6 + 63) >> 6;
  v10 = v0 + 56;
  if (v8)
  {
LABEL_7:
    v11 = v4;
LABEL_11:
    if (*(v3 + 16))
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = *(*(v2 + 48) + (v12 | (v11 << 6)));
      sub_1C7551F3C();
      MEMORY[0x1CCA5E460](v13);
      v14 = sub_1C7551FAC();
      v15 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v16 = v14 & v15;
        if (((*(v10 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        v14 = v16 + 1;
        if (*(*(v3 + 48) + v16) == v13)
        {
          v4 = v11;
          if (!v8)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }
      }
    }

    goto LABEL_2;
  }

LABEL_8:
  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      goto LABEL_2;
    }

    v8 = *(v5 + 8 * v11);
    ++v4;
    if (v8)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1C72B8828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_223();
  if (*(v30 + 16) < *(v31 + 16))
  {
LABEL_21:
    OUTLINED_FUNCTION_224_0();
  }

  else
  {
    v32 = v31;
    v33 = v30;
    v34 = v31 + 56;
    v35 = 1 << *(v31 + 32);
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v37 = v36 & *(v31 + 56);
    v38 = (v35 + 63) >> 6;
    v39 = v30 + 56;
    sub_1C75504FC();
    v40 = 0;
    v52 = v32;
    if (v37)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v41 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v41 >= v38)
      {
        goto LABEL_22;
      }

      v37 = *(v34 + 8 * v41);
      ++v40;
      if (v37)
      {
        v40 = v41;
LABEL_10:
        while (2)
        {
          if (!*(v33 + 16))
          {
LABEL_22:

            goto LABEL_21;
          }

          v42 = __clz(__rbit64(v37));
          v37 &= v37 - 1;
          v43 = (*(v32 + 48) + ((v40 << 10) | (16 * v42)));
          v45 = *v43;
          v44 = v43[1];
          sub_1C7551F3C();
          sub_1C75504FC();
          sub_1C75505AC();
          v46 = sub_1C7551FAC();
          v47 = ~(-1 << *(v33 + 32));
          do
          {
            v48 = v46 & v47;
            if (((*(v39 + (((v46 & v47) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v46 & v47)) & 1) == 0)
            {

              goto LABEL_21;
            }

            v49 = (*(v33 + 48) + 16 * v48);
            if (*v49 == v45 && v49[1] == v44)
            {
              break;
            }

            v51 = sub_1C7551DBC();
            v46 = v48 + 1;
          }

          while ((v51 & 1) == 0);

          v32 = v52;
          if (v37)
          {
            continue;
          }

          break;
        }
      }
    }

    __break(1u);
  }
}

void sub_1C72B89D0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = sub_1C75516BC();
  }

  else
  {
    v5 = *(a2 + 16);
  }

  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_1C75516BC();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  if (v7 < v5)
  {
    return;
  }

  if (v4)
  {
    sub_1C75504FC();
    sub_1C755165C();
    sub_1C70BBDD4();
    sub_1C72B96F4();
    sub_1C7550FEC();
    v2 = v31;
    v8 = v32;
    v9 = v33;
    v10 = v34;
    v11 = v35;
  }

  else
  {
    v12 = -1 << *(v2 + 32);
    v8 = v2 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v2 + 56);
    sub_1C75504FC();
    v10 = 0;
  }

  sub_1C70BBDD4();
  v27 = v8;
  v15 = (v9 + 64) >> 6;
  v28 = v2;
LABEL_15:
  while (v2 < 0)
  {
    if (!sub_1C75516FC())
    {
LABEL_34:
      sub_1C6F61E88(v2);
      return;
    }

    swift_dynamicCast();
    v20 = v11;
    v18 = v30;
    v29 = v20;
    if (!v6)
    {
LABEL_26:
      v26 = v6;
      if (*(a1 + 16))
      {
        v21 = sub_1C75513DC();
        v22 = ~(-1 << *(a1 + 32));
        while (1)
        {
          v23 = v21 & v22;
          if (((*(a1 + 56 + (((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v22)) & 1) == 0)
          {
            break;
          }

          v24 = *(*(a1 + 48) + 8 * v23);
          v25 = sub_1C75513EC();

          v21 = v23 + 1;
          if (v25)
          {

            v8 = v27;
            v2 = v28;
            v6 = v26;
            v11 = v29;
            goto LABEL_15;
          }
        }
      }

      v2 = v28;
LABEL_32:
      sub_1C6F61E88(v2);
      return;
    }

LABEL_22:
    v19 = sub_1C755170C();

    v11 = v29;
    if ((v19 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v16 = v11;
  if (v11)
  {
LABEL_21:
    v29 = (v16 - 1) & v16;
    v30 = *(*(v2 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v16)))));
    v18 = v30;
    if (!v6)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v17 = v10;
  while (1)
  {
    v10 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v10 >= v15)
    {
      goto LABEL_34;
    }

    v16 = *(v8 + 8 * v10);
    ++v17;
    if (v16)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
}

uint64_t sub_1C72B8CBC(uint64_t a1, uint64_t a2)
{

  return sub_1C72B94AC(a1, a2, sub_1C71FB7FC, sub_1C702AC5C, sub_1C71FD078);
}

unint64_t sub_1C72B8D50()
{
  result = qword_1EDD097E8;
  if (!qword_1EDD097E8)
  {
    result = swift_getWitnessTable(asc_1C757FA8C, &type metadata for StoryMusicEmbeddingTerm.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD097E8);
  }

  return result;
}

unint64_t sub_1C72B8DA4()
{
  result = qword_1EC21A298;
  if (!qword_1EC21A298)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryMusicTermTag, &type metadata for StoryMusicTermTag, v0, v1);
    atomic_store(result, &qword_1EC21A298);
  }

  return result;
}

uint64_t sub_1C72B8DF8(unint64_t *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215708, &qword_1C7570280);
    v10[0] = a2;
    v10[1] = a3;
    result = swift_getWitnessTable(a4, v9, v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C72B8E68(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21A288, &qword_1C757F740);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C72B8EE0()
{
  result = qword_1EDD0A990;
  if (!qword_1EDD0A990)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryMusicTermTag, &type metadata for StoryMusicTermTag, v0, v1);
    atomic_store(result, &qword_1EDD0A990);
  }

  return result;
}

unint64_t sub_1C72B8F38()
{
  result = qword_1EDD0ECA8;
  if (!qword_1EDD0ECA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryMusicTermTag, &type metadata for StoryMusicTermTag, v0, v1);
    atomic_store(result, &qword_1EDD0ECA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StoryMusicTermTag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE5)
  {
    if (a2 + 27 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 27) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 28;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v5 = v6 - 28;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StoryMusicTermTag(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE4)
  {
    v6 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
          *result = a2 + 27;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoryMusicEmbeddingTerms(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoryMusicEmbeddingTerm.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C72B9280()
{
  result = qword_1EC21A2A8;
  if (!qword_1EC21A2A8)
  {
    result = swift_getWitnessTable("哑'", &type metadata for StoryMusicEmbeddingTerm.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21A2A8);
  }

  return result;
}

unint64_t sub_1C72B92D8()
{
  result = qword_1EDD097D8;
  if (!qword_1EDD097D8)
  {
    result = swift_getWitnessTable(byte_1C757F9D4, &type metadata for StoryMusicEmbeddingTerm.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD097D8);
  }

  return result;
}

unint64_t sub_1C72B9330()
{
  result = qword_1EDD097E0;
  if (!qword_1EDD097E0)
  {
    result = swift_getWitnessTable(a5_4, &type metadata for StoryMusicEmbeddingTerm.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD097E0);
  }

  return result;
}

uint64_t sub_1C72B9384(uint64_t a1, uint64_t a2)
{

  return sub_1C72B94AC(a1, a2, sub_1C71FC07C, sub_1C72B9868, sub_1C71FD078);
}

uint64_t sub_1C72B9418(uint64_t a1, uint64_t a2)
{

  return sub_1C72B94AC(a1, a2, sub_1C71FCADC, sub_1C72B96D8, sub_1C71FD078);
}

uint64_t sub_1C72B94AC(uint64_t isStackAllocationSafe, uint64_t a2, uint64_t (*a3)(char *, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t (*a5)(void))
{
  v7 = isStackAllocationSafe;
  v15[6] = *MEMORY[0x1E69E9840];
  v15[0] = isStackAllocationSafe;
  v8 = *(a2 + 32);
  v15[3] = v15;
  v15[4] = a2;
  v9 = ((1 << v8) + 63) >> 6;
  v10 = 8 * v9;
  if (v8 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    sub_1C71FAC38(0, v9, &v15[-1] - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0));
    v11 = a3(&v15[-1] - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v9, v7, a2);
  }

  else
  {
    swift_slowAlloc();
    v11 = a5();

    OUTLINED_FUNCTION_109();
  }

  return v11;
}

void sub_1C72B9648(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1C71FB980(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = v7;
  }
}

void sub_1C72B9678(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1C71FC07C(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = v7;
  }
}

void sub_1C72B96A8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1C71FCADC(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = v7;
  }
}

unint64_t sub_1C72B96F4()
{
  result = qword_1EDD0FAA8;
  if (!qword_1EDD0FAA8)
  {
    v3 = sub_1C70BBDD4();
    result = swift_getWitnessTable(MEMORY[0x1E69E81B8], v3, v0, v1);
    atomic_store(result, &qword_1EDD0FAA8);
  }

  return result;
}

unint64_t sub_1C72B974C()
{
  result = qword_1EDD0A998;
  if (!qword_1EDD0A998)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryMusicTermTag, &type metadata for StoryMusicTermTag, v0, v1);
    atomic_store(result, &qword_1EDD0A998);
  }

  return result;
}

uint64_t sub_1C72B97A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();

    return sub_1C75504FC();
  }

  return result;
}

uint64_t sub_1C72B9804(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t FeatureSurveySection.name.getter()
{
  v1 = *(v0 + 16);
  sub_1C75504FC();
  return v1;
}

void sub_1C72B9920()
{
  v1 = *(v0 + 32);
  v2 = sub_1C6FB6304();
  v3 = 0;
  do
  {
    v4 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_1_95();
      v5 = v6;
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v7 = (*(*v5 + 136))(v6);

    v3 = v4 + 1;
  }

  while ((v7 & 1) == 0);
}

void sub_1C72B99FC()
{
  v1 = *(v0 + 32);
  v2 = sub_1C6FB6304();
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1CCA5DDD0](v3, v1);
      v5 = v6;
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    v8 = (*(*v5 + 144))(v6);
    v10 = v9;

    ++v3;
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v4 = v13;
      }

      v11 = *(v4 + 16);
      if (v11 >= *(v4 + 24) >> 1)
      {
        sub_1C6FB1814();
        v4 = v14;
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v10;
      v3 = v7;
    }
  }

  if (*(v4 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C703328C();
    sub_1C75505FC();
  }
}

void sub_1C72B9BCC()
{
  v5 = *(v0 + 32);
  sub_1C6FB6304();
  OUTLINED_FUNCTION_140();
  while (v1 != v2)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_1_95();
      v6 = v7;
    }

    else
    {
      if (v2 >= *(v4 + 16))
      {
        goto LABEL_14;
      }

      v6 = *(v5 + 8 * v2 + 32);
    }

    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      return;
    }

    if ((*(*v6 + 136))(v7))
    {
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
    }

    else
    {
    }

    ++v2;
  }
}

void sub_1C72B9CE0()
{
  v14 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  v5 = *(v0 + 32);
  sub_1C6FB6304();
  OUTLINED_FUNCTION_140();
  while (1)
  {
    if (v1 == v2)
    {
      v8 = sub_1C6FB6304();
      if (v8)
      {
        v9 = v8;
        if (v8 < 1)
        {
          goto LABEL_27;
        }

        for (i = 0; i != v9; ++i)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            OUTLINED_FUNCTION_1_95();
            v12 = v11;
          }

          else
          {
            v12 = *(v14 + 8 * i + 32);
          }

          if ((*(*v12 + 152))())
          {
          }

          else
          {

            MEMORY[0x1CCA5D040](v13);
            if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1C7550B9C();
            }

            sub_1C7550BEC();
          }
        }
      }

      return;
    }

    if (v3)
    {
      OUTLINED_FUNCTION_1_95();
      v6 = v7;
    }

    else
    {
      if (v2 >= *(v4 + 16))
      {
        goto LABEL_26;
      }

      v6 = *(v5 + 8 * v2 + 32);
    }

    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (*(v6 + 88))
    {
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
    }

    else
    {
    }

    ++v2;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t FeatureSurveySection.deinit()
{

  return v0;
}

uint64_t FeatureSurveySection.__deallocating_deinit()
{
  FeatureSurveySection.deinit();

  return swift_deallocClassInstance();
}

void sub_1C72B9F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a1;
  v45 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = sub_1C75516BC();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  if (v8)
  {
    v52 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v8 & ~(v8 >> 63), 0, a4, a5, a6, a7);
    v47 = v52;
    v49 = sub_1C719D930();
    v50 = v9;
    v51 = v10 & 1;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v43 = v7 + 56;
      v42 = v7 + 64;
      v44 = v8;
      while (!__OFADD__(v11++, 1))
      {
        v13 = v49;
        v14 = v51;
        v46 = v50;
        v15 = v7;
        sub_1C719D85C(v49, v50, v51, v7);
        v17 = v16;
        v18 = [v16 normalizedText];
        v19 = sub_1C755068C();
        v21 = v20;

        v26 = v47;
        v52 = v47;
        v28 = *(v47 + 16);
        v27 = *(v47 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1C6F7ED9C(v27 > 1, v28 + 1, 1, v22, v23, v24, v25);
          v26 = v52;
        }

        *(v26 + 16) = v28 + 1;
        v29 = v26 + 16 * v28;
        *(v29 + 32) = v19;
        *(v29 + 40) = v21;
        v47 = v26;
        if (v45)
        {
          if (!v14)
          {
            goto LABEL_36;
          }

          v7 = v15;
          if (sub_1C755166C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v34 = v44;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A2E8, &unk_1C757FB80);
          v35 = sub_1C7550FCC();
          sub_1C755172C();
          v35(v48, 0);
        }

        else
        {
          if (v14)
          {
            goto LABEL_37;
          }

          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_32;
          }

          v7 = v15;
          v30 = 1 << *(v15 + 32);
          if (v13 >= v30)
          {
            goto LABEL_32;
          }

          v31 = v13 >> 6;
          v32 = *(v43 + 8 * (v13 >> 6));
          if (((v32 >> v13) & 1) == 0)
          {
            goto LABEL_33;
          }

          if (*(v15 + 36) != v46)
          {
            goto LABEL_34;
          }

          v33 = v32 & (-2 << (v13 & 0x3F));
          if (v33)
          {
            v30 = __clz(__rbit64(v33)) | v13 & 0x7FFFFFFFFFFFFFC0;
            v34 = v44;
          }

          else
          {
            v36 = v31 << 6;
            v37 = v31 + 1;
            v38 = (v42 + 8 * v31);
            v34 = v44;
            while (v37 < (v30 + 63) >> 6)
            {
              v40 = *v38++;
              v39 = v40;
              v36 += 64;
              ++v37;
              if (v40)
              {
                sub_1C6F9ED50(v13, v46, 0);
                v30 = __clz(__rbit64(v39)) + v36;
                goto LABEL_27;
              }
            }

            sub_1C6F9ED50(v13, v46, 0);
          }

LABEL_27:
          v41 = *(v15 + 36);
          v49 = v30;
          v50 = v41;
          v51 = 0;
        }

        if (v11 == v34)
        {
          sub_1C6F9ED50(v49, v50, v51);
          return;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }
}

uint64_t QueryGenerator.AnnotatedQueryComponents.init(searchEntityCategoryTypes:metadata:aliasNames:debugAliasNames:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for QueryGenerator.AnnotatedQueryComponents(0);
  v11 = v10[6];
  v12 = sub_1C754E2FC();
  result = (*(*(v12 - 8) + 32))(a5, a1, v12);
  *(a5 + v10[5]) = a2;
  *(a5 + v11) = a3;
  *(a5 + v10[7]) = a4;
  return result;
}

uint64_t type metadata accessor for QueryGenerator.AnnotatedQueryComponents(uint64_t a1)
{
  result = qword_1EC21A2B0;
  if (!qword_1EC21A2B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t QueryGenerator.rewrite(annotatedQueryComponents:substring:range:)(uint64_t a1, uint64_t a2)
{
  v23[1] = a2;
  v3 = sub_1C754E2FC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  if (sub_1C754E2DC())
  {
    v8 = sub_1C754FEEC();
    v9 = sub_1C755117C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      OUTLINED_FUNCTION_2_89(v10);
      OUTLINED_FUNCTION_3_83(&dword_1C6F5C000, v11, v12, "Trying to rewrite date query annotation");
      OUTLINED_FUNCTION_1_96();
    }

    v13 = OUTLINED_FUNCTION_0_129();
    sub_1C72BA558(v13, v14, v15);
  }

  if (sub_1C754E2DC())
  {
    v16 = sub_1C754FEEC();
    v17 = sub_1C755117C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      OUTLINED_FUNCTION_2_89(v18);
      OUTLINED_FUNCTION_3_83(&dword_1C6F5C000, v19, v20, "Trying to rewrite what query annotation");
      OUTLINED_FUNCTION_1_96();
    }

    v21 = OUTLINED_FUNCTION_0_129();
    sub_1C72BAAD0(v21);
  }

  return (*(v4 + 8))(v7, v3);
}

void sub_1C72BA558(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for QueryGenerator.AnnotatedQueryComponents(0);
  v7 = *(a1 + *(v6 + 24));
  if (v7 && *(v7 + 16))
  {
    v8 = v6;
    v9 = sub_1C75504FC();
    if (sub_1C72BAE08(v9, &qword_1EC21A2D8, &unk_1C757FB60, MEMORY[0x1E69C19C0], MEMORY[0x1E69C19F0]))
    {
      sub_1C75504FC();
      v10 = sub_1C754FEEC();
      v11 = sub_1C755117C();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v29 = v13;
        *v12 = 136642819;
        *(v12 + 4) = sub_1C6F765A4(a2, a3, &v29);
        _os_log_impl(&dword_1C6F5C000, v10, v11, "Rewrite query annotation, convert %{sensitive}s to partOfDay query token", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x1CCA5F8E0](v13, -1, -1);
        MEMORY[0x1CCA5F8E0](v12, -1, -1);
      }

      sub_1C72BACA4(a1, 1);
      sub_1C754E2AC();
      v14 = [objc_opt_self() entityCategoryTypeKeyForEntityTypeCategory_];
    }

    else if (sub_1C72BAE08(v7, &qword_1EC21A2D0, &unk_1C7580750, MEMORY[0x1E69C1748], MEMORY[0x1E69C1750]))
    {
      sub_1C75504FC();
      v17 = sub_1C754FEEC();
      v18 = sub_1C755117C();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v29 = v20;
        *v19 = 136642819;
        *(v19 + 4) = sub_1C6F765A4(a2, a3, &v29);
        _os_log_impl(&dword_1C6F5C000, v17, v18, "Rewrite query annotation, convert %{sensitive}s to partOfWeek query token", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x1CCA5F8E0](v20, -1, -1);
        MEMORY[0x1CCA5F8E0](v19, -1, -1);
      }

      sub_1C72BACA4(a1, 1);
      sub_1C754E2AC();
      v14 = [objc_opt_self() entityCategoryTypeKeyForEntityTypeCategory_];
    }

    else
    {
      if (!sub_1C72BAE08(v7, &qword_1EC21A2C8, &unk_1C757FB50, MEMORY[0x1E69C1978], MEMORY[0x1E69C1980]))
      {
LABEL_22:

        return;
      }

      sub_1C75504FC();
      v21 = sub_1C754FEEC();
      v22 = sub_1C755117C();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v29 = v24;
        *v23 = 136642819;
        *(v23 + 4) = sub_1C6F765A4(a2, a3, &v29);
        _os_log_impl(&dword_1C6F5C000, v21, v22, "Rewrite query annotation, convert %{sensitive}s to season query token", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x1CCA5F8E0](v24, -1, -1);
        MEMORY[0x1CCA5F8E0](v23, -1, -1);
      }

      sub_1C72BACA4(a1, 1);
      sub_1C754E2AC();
      v14 = [objc_opt_self() entityCategoryTypeKeyForEntityTypeCategory_];
    }

    v25 = v14;
    if (v25)
    {
      v26 = v25;
      sub_1C755068C();

      sub_1C71BA98C(v7);

      v27 = *(v8 + 20);
      swift_isUniquelyReferenced_nonNull_native();
      v29 = *(a1 + v27);
      sub_1C6FC918C();

      *(a1 + v27) = v29;
      return;
    }

    goto LABEL_22;
  }

  oslog = sub_1C754FEEC();
  v15 = sub_1C755117C();
  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1C6F5C000, oslog, v15, "No alias names (expansions) to be used for date query annotation rewriting, immediately return", v16, 2u);
    MEMORY[0x1CCA5F8E0](v16, -1, -1);
  }
}

uint64_t sub_1C72BACA4(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_1C754E2DC();
    if (result)
    {
      v3 = sub_1C754FEEC();
      v4 = sub_1C755117C();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 134217984;
        *(v5 + 4) = a2;
        _os_log_impl(&dword_1C6F5C000, v3, v4, "Remove %lu annotation and metadata", v5, 0xCu);
        MEMORY[0x1CCA5F8E0](v5, -1, -1);
      }

      sub_1C754E2BC();
      result = [objc_opt_self() entityCategoryTypeKeyForEntityTypeCategory_];
      if (result)
      {
        v6 = result;
        v7 = sub_1C755068C();
        v9 = v8;

        type metadata accessor for QueryGenerator.AnnotatedQueryComponents(0);
        sub_1C7236EDC(v7, v9, v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }
  }

  return result;
}

BOOL sub_1C72BAE08(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(void))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = *(a1 + 16);
  v14 = (a1 + 40);
  while (v13)
  {
    v16 = *(v14 - 1);
    v15 = *v14;
    sub_1C75504FC();
    a4(v16, v15);

    v17 = a5(0);
    if (__swift_getEnumTagSinglePayload(v12, 1, v17) != 1)
    {
      sub_1C7030CDC(v12, a2, a3);
      return v13 != 0;
    }

    sub_1C7030CDC(v12, a2, a3);
    v14 += 2;
    --v13;
  }

  return v13 != 0;
}

void sub_1C72BAF30(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v13 = sub_1C75506FC();
  v15 = v14;
  v16 = [objc_opt_self() entityCategoryTypeKeyForEntityTypeCategory_];
  if (v16)
  {
    v17 = v16;
    sub_1C755068C();

    if (qword_1EDD099B0 != -1)
    {
      v18 = swift_once();
    }

    v71 = v13;
    v72 = v15;
    MEMORY[0x1EEE9AC00](v18);
    v19 = sub_1C70735F4();
    if (v19)
    {

      if (qword_1EDD09980 != -1)
      {
        swift_once();
      }

      v21 = qword_1EDD09988;
      v20 = unk_1EDD09990;
      sub_1C75504FC();
      sub_1C75504FC();
      v22 = sub_1C754FEEC();
      v23 = sub_1C755117C();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v71 = v25;
        *v24 = 136642819;
        *(v24 + 4) = sub_1C6F765A4(a2, a3, &v71);
        _os_log_impl(&dword_1C6F5C000, v22, v23, "Rewrite query annotation, convert %{sensitive}s to location query token", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x1CCA5F8E0](v25, -1, -1);
        MEMORY[0x1CCA5F8E0](v24, -1, -1);
      }

      sub_1C72BACA4(a1, 6);
      sub_1C754E2AC();
      v71 = v21;
      v72 = v20;
      sub_1C6FB5E8C();
      swift_bridgeObjectRetain_n();
      v26 = sub_1C755152C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0, &unk_1C755BE10);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1C755BAB0;
      *(v27 + 56) = &type metadata for GroundedLocation;
      v28 = swift_allocObject();
      *(v27 + 32) = v28;
      v28[2] = v21;
      v28[3] = v20;
      v28[4] = v21;
      v28[5] = v20;
      v28[6] = v26;
      v28[7] = 0;
      v28[8] = 0;
      v28[9] = 4;
      v29 = type metadata accessor for QueryGenerator.AnnotatedQueryComponents(0);
      v30 = v29[5];
      swift_isUniquelyReferenced_nonNull_native();
      v71 = *(a1 + v30);
      sub_1C6FC918C();

      *(a1 + v30) = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1C755BAB0;
      *(v31 + 32) = v21;
      *(v31 + 40) = v20;
      v32 = v29[6];

      *(a1 + v32) = v31;
      v33 = v29[7];

      v34 = &unk_1F46A88C8;
LABEL_23:
      *(a1 + v33) = v34;
      return;
    }

    if (qword_1EDD09998 != -1)
    {
      v19 = swift_once();
    }

    v71 = v13;
    v72 = v15;
    MEMORY[0x1EEE9AC00](v19);
    if (sub_1C70735F4())
    {

      if (qword_1EDD09968 != -1)
      {
        swift_once();
      }

      v38 = qword_1EDD09970;
      v37 = *algn_1EDD09978;
      sub_1C75504FC();
      sub_1C75504FC();
      v39 = sub_1C754FEEC();
      v40 = sub_1C755117C();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v71 = v42;
        *v41 = 136642819;
        *(v41 + 4) = sub_1C6F765A4(a2, a3, &v71);
        _os_log_impl(&dword_1C6F5C000, v39, v40, "Rewrite query annotation, convert %{sensitive}s to location query token", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x1CCA5F8E0](v42, -1, -1);
        MEMORY[0x1CCA5F8E0](v41, -1, -1);
      }

      sub_1C72BACA4(a1, 6);
      sub_1C754E2AC();
      v71 = v38;
      v72 = v37;
      sub_1C6FB5E8C();
      swift_bridgeObjectRetain_n();
      v43 = sub_1C755152C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0, &unk_1C755BE10);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1C755BAB0;
      *(v44 + 56) = &type metadata for GroundedLocation;
      v45 = swift_allocObject();
      *(v44 + 32) = v45;
      v45[2] = v38;
      v45[3] = v37;
      v45[4] = v38;
      v45[5] = v37;
      v45[6] = v43;
      v45[7] = 0;
      v45[8] = 0;
      v45[9] = 4;
      v46 = type metadata accessor for QueryGenerator.AnnotatedQueryComponents(0);
      v47 = v46[5];
      swift_isUniquelyReferenced_nonNull_native();
      v71 = *(a1 + v47);
      sub_1C6FC918C();

      *(a1 + v47) = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1C755BAB0;
      *(v48 + 32) = v38;
      *(v48 + 40) = v37;
      v49 = v46[6];

      *(a1 + v49) = v48;
      v33 = v46[7];

      v34 = &unk_1F46A88F8;
      goto LABEL_23;
    }

    if (a7)
    {
      sub_1C75504FC();

      v15 = a7;
    }

    else
    {
      a6 = v13;
    }

    v50 = objc_opt_self();
    v51 = sub_1C755065C();
    v52 = sub_1C7550B3C();
    v53 = [v50 performDisambiguationForLocationName:v51 expansionStringValues:v52 allowedSearchIndexCategories:0 photoLibrary:*(v7 + *(type metadata accessor for QueryGenerator(0) + 24))];

    sub_1C72BD590();
    sub_1C72BD5D4(&qword_1EDD06910, sub_1C72BD590, MEMORY[0x1E69E81B8]);
    v54 = sub_1C7550F8C();

    sub_1C72B9F6C(v54, v55, v56, v57, v58, v59, v60);

    sub_1C706D154();
    LOBYTE(v54) = sub_1C7009C30(a6, v15, v61);

    if (v54)
    {
      sub_1C75504FC();
      v62 = sub_1C754FEEC();
      v63 = sub_1C755117C();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v71 = v65;
        *v64 = 136642819;
        *(v64 + 4) = sub_1C6F765A4(a2, a3, &v71);
        _os_log_impl(&dword_1C6F5C000, v62, v63, "Rewrite query annotation, convert %{sensitive}s to location query token since there is an exact location match in photolibrary", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v65);
        MEMORY[0x1CCA5F8E0](v65, -1, -1);
        MEMORY[0x1CCA5F8E0](v64, -1, -1);
      }

      sub_1C72BACA4(a1, 6);
      sub_1C754E2AC();
      v71 = a6;
      v72 = v15;
      sub_1C6FB5E8C();
      sub_1C75504FC();
      v66 = sub_1C755152C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0, &unk_1C755BE10);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1C755BAB0;
      *(v67 + 56) = &type metadata for GroundedLocation;
      v68 = swift_allocObject();
      *(v67 + 32) = v68;
      v68[2] = a6;
      v68[3] = v15;
      v68[4] = a6;
      v68[5] = v15;
      v68[6] = v66;
      v68[7] = 0;
      v68[8] = 0;
      v68[9] = 4;
      v69 = *(type metadata accessor for QueryGenerator.AnnotatedQueryComponents(0) + 20);
      swift_isUniquelyReferenced_nonNull_native();
      v71 = *(a1 + v69);
      sub_1C6FC918C();

      *(a1 + v69) = v71;
    }

    else
    {
    }
  }

  else
  {

    v70 = sub_1C754FEEC();
    v35 = sub_1C755119C();
    if (os_log_type_enabled(v70, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1C6F5C000, v70, v35, "Unexpectedly, no location metadata key is found", v36, 2u);
      MEMORY[0x1CCA5F8E0](v36, -1, -1);
    }
  }
}

uint64_t sub_1C72BB998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v70 = a3;
  v66 = a2;
  v71 = a1;
  v68 = type metadata accessor for GroundedGenericLocation(0);
  MEMORY[0x1EEE9AC00](v68);
  v69 = (v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1C754E13C();
  v67 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C754E15C();
  v65 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2177A8, &qword_1C757FB70);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v64 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A2E0, &qword_1C757FB78);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v64 - v20;
  v22 = sub_1C754F4DC();
  v73 = *(v22 - 8);
  v74 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v72 = v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1C754E5EC();
  v75[3] = v24;
  v75[4] = sub_1C72BD5D4(&qword_1EDD0F9B0, MEMORY[0x1E69BDD60], MEMORY[0x1E69BDD10]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v75);
  (*(*(v24 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x1E69BDD38], v24);
  LOBYTE(v24) = sub_1C754E3AC();
  result = __swift_destroy_boxed_opaque_existential_1(v75);
  if ((v24 & 1) != 0 && a7)
  {
    sub_1C75504FC();
    sub_1C754F4BC();
    v27 = v74;
    if (__swift_getEnumTagSinglePayload(v21, 1, v74) == 1)
    {
      return sub_1C7030CDC(v21, &qword_1EC21A2E0, &qword_1C757FB78);
    }

    else
    {
      (*(v73 + 32))(v72, v21, v27);
      v28 = [objc_opt_self() entityCategoryTypeKeyForEntityTypeCategory_];
      if (v28)
      {
        v29 = v28;
        v64[1] = sub_1C755068C();
        v64[2] = v30;

        sub_1C75504FC();
        v64[0] = v7;
        v31 = sub_1C754FEEC();
        v32 = sub_1C755117C();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v75[0] = v34;
          *v33 = 136642819;
          *(v33 + 4) = sub_1C6F765A4(v66, v70, v75);
          _os_log_impl(&dword_1C6F5C000, v31, v32, "Rewrite query annotation, convert %{sensitive}s to generic location query token", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v34);
          MEMORY[0x1CCA5F8E0](v34, -1, -1);
          MEMORY[0x1CCA5F8E0](v33, -1, -1);
        }

        sub_1C72BACA4(v71, 6);
        sub_1C754E2AC();
        v38 = sub_1C75506FC();
        v40 = v39;
        sub_1C754E0AC();
        sub_1C754E14C();
        (*(v65 + 8))(v15, v13);
        sub_1C754E12C();
        (*(v67 + 8))(v12, v10);
        v41 = sub_1C754E07C();
        if (__swift_getEnumTagSinglePayload(v18, 1, v41) == 1)
        {
          sub_1C7030CDC(v18, &qword_1EC2177A8, &qword_1C757FB70);
        }

        else
        {
          sub_1C754E05C();
          (*(*(v41 - 8) + 8))(v18, v41);
        }

        static StoryGenerationUtilities.lemmatize(text:languageIdentifier:)();
        v43 = v42;
        v45 = v44;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
        inited = swift_initStackObject();
        v70 = xmmword_1C755BAB0;
        *(inited + 16) = xmmword_1C755BAB0;
        *(inited + 32) = v43;
        *(inited + 40) = v45;
        v47 = MEMORY[0x1E69E7CC0];
        v48 = *(inited + 32);
        v49 = *(inited + 40);
        v50 = v48 == v38 && v49 == v40;
        if (!v50 && (sub_1C7551DBC() & 1) == 0)
        {
          sub_1C75504FC();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB1814();
            v47 = v53;
          }

          v51 = *(v47 + 16);
          if (v51 >= *(v47 + 24) >> 1)
          {
            sub_1C6FB1814();
            v47 = v54;
          }

          *(v47 + 16) = v51 + 1;
          v52 = v47 + 16 * v51;
          *(v52 + 32) = v48;
          *(v52 + 40) = v49;
        }

        swift_setDeallocating();
        sub_1C6FDC9DC();
        v55 = v68;
        v56 = v69;
        v58 = v72;
        v57 = v73;
        v59 = v74;
        (*(v73 + 16))(v69 + *(v68 + 20), v72, v74);
        *v56 = v38;
        v56[1] = v40;
        *(v56 + *(v55 + 24)) = v47;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0, &unk_1C755BE10);
        v60 = swift_allocObject();
        *(v60 + 16) = v70;
        *(v60 + 56) = v55;
        v61 = __swift_allocate_boxed_opaque_existential_0((v60 + 32));
        sub_1C72BD52C(v56, v61);
        v62 = *(type metadata accessor for QueryGenerator.AnnotatedQueryComponents(0) + 20);
        v63 = v71;
        swift_isUniquelyReferenced_nonNull_native();
        v75[0] = *(v63 + v62);
        sub_1C6FC918C();

        *(v63 + v62) = v75[0];
        sub_1C71AFE7C(v56);
        return (*(v57 + 8))(v58, v59);
      }

      else
      {
        v35 = sub_1C754FEEC();
        v36 = sub_1C755119C();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_1C6F5C000, v35, v36, "Unexpectedly, no generic location metadata key is found", v37, 2u);
          MEMORY[0x1CCA5F8E0](v37, -1, -1);
        }

        return (*(v73 + 8))(v72, v27);
      }
    }
  }

  return result;
}

void sub_1C72BC230(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v86 = a1;
  v82 = a2;
  v83 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216320, &unk_1C7563B80);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v82 - v10;
  v84 = sub_1C754F24C();
  v12 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v82 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216328, &qword_1C7575BE0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v82 - v19;
  v21 = sub_1C754F14C();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a7)
  {
    swift_bridgeObjectRetain_n();
    sub_1C754F12C();
    if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
    {
      sub_1C7030CDC(v20, &qword_1EC216328, &qword_1C7575BE0);
      sub_1C75504FC();
      sub_1C754F22C();
      v25 = v84;
      if (__swift_getEnumTagSinglePayload(v11, 1, v84) == 1)
      {
        sub_1C7030CDC(v11, &qword_1EC216320, &unk_1C7563B80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1C755BAB0;
        *(v26 + 32) = a6;
        *(v26 + 40) = a7;
        v27 = *(type metadata accessor for QueryGenerator.AnnotatedQueryComponents(0) + 24);
        v28 = v86;

        *(v28 + v27) = v26;
      }

      else
      {

        v46 = v17;
        v47 = v12;
        (*(v12 + 32))(v46, v11, v25);
        v48 = sub_1C754E5EC();
        v89 = v48;
        v90 = sub_1C72BD5D4(&qword_1EDD0F9B0, MEMORY[0x1E69BDD60], MEMORY[0x1E69BDD10]);
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v88);
        (*(*(v48 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x1E69BDD50], v48);
        LOBYTE(v48) = sub_1C754E3AC();
        __swift_destroy_boxed_opaque_existential_1(v88);
        if ((v48 & 1) != 0 || ((*(v12 + 104))(v14, *MEMORY[0x1E69C1810], v25), v50 = sub_1C6FA39AC(v46, v14), v51 = *(v12 + 8), v51(v14, v25), (v50 & 1) == 0))
        {
          v55 = v83;
          sub_1C75504FC();
          v56 = sub_1C754FEEC();
          v57 = sub_1C755117C();

          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            v88[0] = v59;
            *v58 = 136642819;
            *(v58 + 4) = sub_1C6F765A4(v82, v55, v88);
            _os_log_impl(&dword_1C6F5C000, v56, v57, "Rewrite query annotation, convert %{sensitive}s to personal event query token", v58, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v59);
            MEMORY[0x1CCA5F8E0](v59, -1, -1);
            MEMORY[0x1CCA5F8E0](v58, -1, -1);
          }

          v60 = v86;
          sub_1C72BACA4(v86, 6);
          sub_1C72BACA4(v60, 1);
          sub_1C754E2AC();
          v61 = [objc_opt_self() entityCategoryTypeKeyForEntityTypeCategory_];
          if (v61)
          {
            v62 = v61;
            sub_1C755068C();

            v63 = sub_1C754F1FC();
            v65 = v64;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1C7565670;
            v67 = objc_allocWithZone(MEMORY[0x1E6978A60]);
            *(inited + 32) = sub_1C73A7E74(v63, v65, MEMORY[0x1E69E7CC0]);
            sub_1C71BB468(inited, v75, v68, v69, v70, v71, v72, v73, v74, v76, v82, v83, v84, v85, v86, *(&v86 + 1), v87[0], v87[1], v87[2], v87[3], v87[4], v88[0], v88[1], v88[2], v89, v90);
            swift_setDeallocating();
            sub_1C6FDCA68();
            v77 = type metadata accessor for QueryGenerator.AnnotatedQueryComponents(0);
            v78 = *(v77 + 20);
            swift_isUniquelyReferenced_nonNull_native();
            v88[0] = *(v60 + v78);
            sub_1C6FC918C();

            *(v60 + v78) = v88[0];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
            v79 = swift_allocObject();
            *(v79 + 16) = xmmword_1C755BAB0;
            *(v79 + 32) = sub_1C754F23C();
            *(v79 + 40) = v80;
            (*(v47 + 8))(v46, v84);
            v81 = *(v77 + 28);

            *(v60 + v81) = v79;
          }

          else
          {
            (*(v47 + 8))(v46, v84);
          }
        }

        else
        {
          v52 = sub_1C754FEEC();
          v53 = sub_1C755117C();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            *v54 = 0;
            _os_log_impl(&dword_1C6F5C000, v52, v53, "The feature flag (MemoryCreationPersonalEventsBeyondMeanings) is not enabled and the current personalEvent is .unnamed, do not need to rewrite the what query annotation", v54, 2u);
            MEMORY[0x1CCA5F8E0](v54, -1, -1);
          }

          v51(v46, v25);
        }
      }
    }

    else
    {

      v29 = v22;
      (*(v22 + 32))(v24, v20, v21);
      v30 = v83;
      sub_1C75504FC();
      v31 = sub_1C754FEEC();
      v32 = sub_1C755117C();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v88[0] = v34;
        *v33 = 136642819;
        *(v33 + 4) = sub_1C6F765A4(v82, v30, v88);
        _os_log_impl(&dword_1C6F5C000, v31, v32, "Rewrite query annotation, convert %{sensitive}s to public event query token", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x1CCA5F8E0](v34, -1, -1);
        MEMORY[0x1CCA5F8E0](v33, -1, -1);
      }

      v35 = v86;
      sub_1C72BACA4(v86, 6);
      sub_1C72BACA4(v35, 1);
      sub_1C754E2AC();
      v36 = [objc_opt_self() entityCategoryTypeKeyForEntityTypeCategory_];
      if (v36)
      {
        v37 = v36;
        sub_1C755068C();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0, &unk_1C755BE10);
        v38 = swift_allocObject();
        v86 = xmmword_1C755BAB0;
        *(v38 + 16) = xmmword_1C755BAB0;
        v39 = sub_1C754F10C();
        *(v38 + 56) = MEMORY[0x1E69E6158];
        *(v38 + 32) = v39;
        *(v38 + 40) = v40;
        v41 = type metadata accessor for QueryGenerator.AnnotatedQueryComponents(0);
        v42 = *(v41 + 20);
        swift_isUniquelyReferenced_nonNull_native();
        v88[0] = *(v35 + v42);
        sub_1C6FC918C();

        *(v35 + v42) = v88[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
        v43 = swift_allocObject();
        *(v43 + 16) = v86;
        *(v43 + 32) = sub_1C754F13C();
        *(v43 + 40) = v44;
        (*(v29 + 8))(v24, v21);
        v45 = *(v41 + 28);

        *(v35 + v45) = v43;
      }

      else
      {
        (*(v22 + 8))(v24, v21);
      }
    }
  }
}

uint64_t sub_1C72BCBBC(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    v9 = result;
    result = sub_1C72BCDB0(a6, a7);
    if (result)
    {
      v10 = result;
      sub_1C75504FC();
      v11 = sub_1C754FEEC();
      v12 = sub_1C755117C();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v18 = v14;
        *v13 = 136642819;
        *(v13 + 4) = sub_1C6F765A4(a2, a3, &v18);
        _os_log_impl(&dword_1C6F5C000, v11, v12, "Rewrite query annotation, convert %{sensitive}s to part of day query token", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x1CCA5F8E0](v14, -1, -1);
        MEMORY[0x1CCA5F8E0](v13, -1, -1);
      }

      sub_1C754E2AC();
      v15 = [objc_opt_self() entityCategoryTypeKeyForEntityTypeCategory_];
      if (v15)
      {
        v16 = v15;
        sub_1C755068C();

        sub_1C71BA98C(v10);

        v17 = *(type metadata accessor for QueryGenerator.AnnotatedQueryComponents(0) + 20);
        swift_isUniquelyReferenced_nonNull_native();
        v18 = *(v9 + v17);
        sub_1C6FC918C();

        *(v9 + v17) = v18;
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_1C72BCDB0(uint64_t a1, uint64_t a2)
{
  v62 = sub_1C754F65C();
  v2 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C30, &unk_1C7575BE8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v54 - v5;
  v7 = sub_1C754F0FC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v54 - v12;
  sub_1C754F0DC();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1C7030CDC(v6, &unk_1EC218C30, &unk_1C7575BE8);
    return 0;
  }

  (*(v8 + 32))(v13, v6, v7);
  v15 = *(v8 + 104);
  v15(v10, *MEMORY[0x1E69C1788], v7);
  v16 = v13;
  v17 = sub_1C6FA39F4(v13, v10);
  v20 = *(v8 + 8);
  v18 = v8 + 8;
  v19 = v20;
  v20(v10, v7);
  if (v17)
  {
    v57 = v16;
    v58 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2172C8, &qword_1C7569810);
    v21 = *(v2 + 80);
    v60 = *(v2 + 72);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1C755BAB0;
    (*(v2 + 104))(v22 + ((v21 + 32) & ~v21), *MEMORY[0x1E69C19E0], v62);
  }

  else
  {
    v15(v10, *MEMORY[0x1E69C1778], v7);
    v27 = sub_1C6FA39F4(v16, v10);
    v19(v10, v7);
    if (v27)
    {
      v57 = v16;
      v58 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2172C8, &qword_1C7569810);
      v28 = *(v2 + 72);
      v21 = *(v2 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1C755BAA0;
      v30 = v29 + ((v21 + 32) & ~v21);
      v31 = *(v2 + 104);
      v32 = v62;
      v31(v30, *MEMORY[0x1E69C19E0], v62);
      v31(v30 + v28, *MEMORY[0x1E69C19C8], v32);
      v60 = v28;
      v33 = v30 + 2 * v28;
      v34 = MEMORY[0x1E69C19E8];
    }

    else
    {
      v15(v10, *MEMORY[0x1E69C1780], v7);
      v35 = sub_1C6FA39F4(v16, v10);
      v19(v10, v7);
      if ((v35 & 1) == 0)
      {
        v19(v16, v7);
        return 0;
      }

      v57 = v16;
      v58 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2172C8, &qword_1C7569810);
      v36 = *(v2 + 72);
      v21 = *(v2 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1C755BAA0;
      v37 = v29 + ((v21 + 32) & ~v21);
      v31 = *(v2 + 104);
      v32 = v62;
      v31(v37, *MEMORY[0x1E69C19E8], v62);
      v31(v37 + v36, *MEMORY[0x1E69C19D8], v32);
      v60 = v36;
      v33 = v37 + 2 * v36;
      v34 = MEMORY[0x1E69C19D0];
    }

    v31(v33, *v34, v32);
    v22 = v29;
  }

  v38 = *(v22 + 16);
  if (v38)
  {
    v55 = v19;
    v56 = v7;
    v63 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v38, 0, v23, v24, v25, v26);
    v14 = v63;
    v54 = v22;
    v39 = v22 + ((v21 + 32) & ~v21);
    v59 = *(v2 + 16);
    v40 = (v2 + 8);
    do
    {
      v41 = v61;
      v42 = v62;
      v59(v61, v39, v62);
      v43 = sub_1C754F62C();
      v45 = v44;
      (*v40)(v41, v42);
      v63 = v14;
      v51 = *(v14 + 16);
      v50 = *(v14 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1C6F7ED9C(v50 > 1, v51 + 1, 1, v46, v47, v48, v49);
        v14 = v63;
      }

      *(v14 + 16) = v51 + 1;
      v52 = v14 + 16 * v51;
      *(v52 + 32) = v43;
      *(v52 + 40) = v45;
      v39 += v60;
      --v38;
    }

    while (v38);
    v55(v57, v56);
  }

  else
  {

    v19(v57, v7);
    return MEMORY[0x1E69E7CC0];
  }

  return v14;
}

void sub_1C72BD404(uint64_t a1)
{
  sub_1C754E2FC();
  if (v1 <= 0x3F)
  {
    sub_1C72BD4B8(319);
    if (v2 <= 0x3F)
    {
      sub_1C7028C3C(319);
      if (v3 <= 0x3F)
      {
        sub_1C704303C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C72BD4B8(uint64_t a1)
{
  if (!qword_1EC21A2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC219750, &qword_1C756A310);
    v1 = sub_1C755055C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC21A2C0);
    }
  }
}

uint64_t sub_1C72BD52C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroundedGenericLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C72BD590()
{
  result = qword_1EDD06918;
  if (!qword_1EDD06918)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD06918);
  }

  return result;
}

uint64_t sub_1C72BD5D4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static LLMBackendDiagnosticsGenerator.save()(__n128 a1)
{
  if (PFOSVariantHasInternalDiagnostics())
  {
    sub_1C754DBCC();
    swift_allocObject();
    sub_1C754DBBC();
    sub_1C754DB9C();
    sub_1C72BE45C(&v7);
    sub_1C72BF498();
    v2 = sub_1C754DBAC();
    v4 = v3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217878, &qword_1C756C408);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    strcpy((inited + 32), "llmBackend.xml");
    *(inited + 47) = -18;
    *(inited + 48) = v2;
    *(inited + 56) = v4;
    v6 = sub_1C75504DC();

    return v6;
  }

  else
  {

    return sub_1C75504DC();
  }
}

uint64_t sub_1C72BD960()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21A2F0);
  __swift_project_value_buffer(v0, qword_1EC21A2F0);
  return sub_1C754FEFC();
}

uint64_t sub_1C72BD9E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079546C65646F6DLL && a2 == 0xE900000000000065;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C725565736162 && a2 == 0xE700000000000000;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x706D6F7250646E65 && a2 == 0xEE006E656B6F5474;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x80000001C7597350 == a2;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD00000000000001ELL && 0x80000001C75A9310 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C7551DBC();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C72BDBE4(char a1)
{
  result = 0x7079546C65646F6DLL;
  switch(a1)
  {
    case 1:
      result = 0x6D614E6C65646F6DLL;
      break;
    case 2:
      result = 0x6C725565736162;
      break;
    case 3:
      result = 0x706D6F7250646E65;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD00000000000001ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C72BDCB0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A360, &qword_1C757FE40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - v7;
  v9 = *v3;
  v10 = *(v3 + 1);
  v16[6] = *(v3 + 2);
  v16[7] = v10;
  v11 = *(v3 + 3);
  v16[4] = *(v3 + 4);
  v16[5] = v11;
  v12 = *(v3 + 5);
  v16[2] = *(v3 + 6);
  v16[3] = v12;
  v13 = *(v3 + 16);
  v16[0] = *(v3 + 15);
  v16[1] = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C72BFB28();
  sub_1C755200C();
  LOBYTE(v17) = v9;
  v20 = 0;
  sub_1C6FB5C58();
  sub_1C7551D2C();
  if (!v2)
  {
    LOBYTE(v17) = 1;
    sub_1C7551C7C();
    LOBYTE(v17) = 2;
    sub_1C7551C7C();
    LOBYTE(v17) = 3;
    sub_1C7551C7C();
    v14 = *(v3 + 72);
    v17 = *(v3 + 56);
    v18 = v14;
    v19[0] = *(v3 + 88);
    *(v19 + 9) = *(v3 + 97);
    v20 = 4;
    sub_1C6FB5D28();
    sub_1C7551CBC();
    LOBYTE(v17) = 5;
    sub_1C7551C7C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C72BDF30@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A368, &qword_1C757FE48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - v7;
  v9 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1C72BFB28();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v58);
  }

  v10 = v6;
  v35 = a2;
  LOBYTE(v37[0]) = 0;
  sub_1C72BFB7C();
  v11 = v5;
  sub_1C7551C1C();
  v12 = v38[0];
  v38[0] = 1;
  v13 = v10;
  v14 = sub_1C7551B6C();
  v16 = v15;
  v38[0] = 2;
  v34 = sub_1C7551B6C();
  v36 = v17;
  v38[0] = 3;
  v18 = sub_1C7551B6C();
  v32 = v14;
  v33 = v18;
  v20 = v19;
  v51 = 4;
  sub_1C72BFBD0();
  sub_1C7551BAC();
  v55 = v52;
  v56 = v53;
  v57[0] = v54[0];
  *(v57 + 9) = *(v54 + 9);
  v50 = 5;
  v21 = sub_1C7551B6C();
  v22 = *(v13 + 8);
  v31 = v21;
  v23 = v8;
  v25 = v24;
  v22(v23, v11);
  *&v37[7] = v55;
  *&v37[9] = v56;
  LOBYTE(v37[0]) = v12;
  v26 = v32;
  v37[1] = v32;
  v37[2] = v16;
  v30 = v16;
  v27 = v34;
  v28 = v36;
  v37[3] = v34;
  v37[4] = v36;
  v37[5] = v33;
  v37[6] = v20;
  *&v37[11] = v57[0];
  *(&v37[12] + 1) = *(v57 + 9);
  v37[15] = v31;
  v37[16] = v25;
  memcpy(v35, v37, 0x88uLL);
  sub_1C72BFC24(v37, v38);
  __swift_destroy_boxed_opaque_existential_1(v58);
  v45 = v55;
  v38[0] = v12;
  v39 = v26;
  v40 = v30;
  v41 = v27;
  v42 = v28;
  v43 = v33;
  v44 = v20;
  v46 = v56;
  v47[0] = v57[0];
  *(v47 + 9) = *(v57 + 9);
  v48 = v31;
  v49 = v25;
  return sub_1C72BFC5C(v38);
}

uint64_t sub_1C72BE38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C72BD9E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C72BE3B4(uint64_t a1)
{
  v2 = sub_1C72BFB28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C72BE3F0(uint64_t a1)
{
  v2 = sub_1C72BFB28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C72BE45C@<X0>(_BYTE *a1@<X8>)
{
  v49 = a1;
  v1 = type metadata accessor for LLMConfiguration(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v50 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v47 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v47 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v47 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v47 - v10;
  type metadata accessor for LLMDefaults();
  static LLMDefaults.backendType.getter(v59);
  v48 = LOBYTE(v59[0]);
  static LLMDefaults.backendEnvironment.getter(v59);
  v63 = v59[0];
  v11 = sub_1C755065C();
  v12 = PFStringVersionOfRunTimeLibrary();

  v47 = sub_1C755068C();
  v55 = v13;

  v62 = MEMORY[0x1E69E7CC0];
  sub_1C716E62C(0, 20, 0);
  v14 = 0;
  v15 = v62;
  while (1)
  {
    v57 = byte_1F46A80E0[v14 + 32];
    v16 = v57;
    v17 = static LLMConfiguration.modelCatalogResourceID(for:)(&v57);
    v19 = v18;
    v57 = v16;
    LLMModelType.defaultSamplingParameters.getter(v59);
    v62 = v15;
    v21 = *(v15 + 16);
    v20 = *(v15 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_1C716E62C(v20 > 1, v21 + 1, 1);
      v15 = v62;
    }

    *(v15 + 16) = v21 + 1;
    v22 = v15 + 136 * v21;
    *(v22 + 32) = v16;
    v23 = *v61;
    *(v22 + 36) = *&v61[3];
    *(v22 + 33) = v23;
    *(v22 + 40) = 0u;
    *(v22 + 56) = 0u;
    *(v22 + 72) = 0u;
    v24 = v59[0];
    v25 = v59[1];
    v26 = *v60;
    *(v22 + 129) = *&v60[9];
    *(v22 + 120) = v26;
    *(v22 + 104) = v25;
    *(v22 + 88) = v24;
    v27 = *&v58[3];
    *(v22 + 145) = *v58;
    *(v22 + 148) = v27;
    *(v22 + 152) = v17;
    *(v22 + 160) = v19;
    if (v14 == 19)
    {
      break;
    }

    ++v14;
  }

  type metadata accessor for LLMConfigurationProvider();
  type metadata accessor for LLMWrapperUtils();
  v28 = v64;
  if (qword_1EDD0A988 != -1)
  {
    swift_once();
  }

  v57 = byte_1EC218F88;
  static LLMWrapperUtils.globalTraitsModelType(for:)(&v56);
  if (qword_1EC213FC8 != -1)
  {
    swift_once();
  }

  v29 = sub_1C754FF1C();
  v30 = __swift_project_value_buffer(v29, qword_1EC21A2F0);
  v31 = v54;
  static LLMConfigurationProvider.configuration(for:logger:)(&v56, v28, v30);
  if (v31)
  {
  }

  else
  {
    v57 = byte_1EC218F88;
    static LLMWrapperUtils.storytellerModelType(for:)(&v56);
    v32 = v53;
    static LLMConfigurationProvider.configuration(for:logger:)(&v56, v53, v30);
    v57 = 13;
    v33 = v52;
    static LLMConfigurationProvider.configuration(for:logger:)(&v57, v52, v30);
    v57 = 18;
    static LLMConfigurationProvider.configuration(for:logger:)(&v57, v51, v30);
    v57 = 19;
    static LLMConfigurationProvider.configuration(for:logger:)(&v57, v50, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216550, &unk_1C756BF70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BA90;
    strcpy((inited + 32), "globalTraits");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    *(inited + 48) = LLMConfiguration.description.getter();
    *(inited + 56) = v35;
    *(inited + 64) = 0x6C657479726F7473;
    *(inited + 72) = 0xEB0000000072656CLL;
    *(inited + 80) = LLMConfiguration.description.getter();
    *(inited + 88) = v36;
    strcpy((inited + 96), "assetCuration");
    *(inited + 110) = -4864;
    *(inited + 112) = LLMConfiguration.description.getter();
    *(inited + 120) = v37;
    *(inited + 128) = 0x656C746974;
    *(inited + 136) = 0xE500000000000000;
    v38 = v51;
    *(inited + 144) = LLMConfiguration.description.getter();
    *(inited + 152) = v39;
    *(inited + 160) = 0xD000000000000019;
    *(inited + 168) = 0x80000001C75A9290;
    v40 = v50;
    *(inited + 176) = LLMConfiguration.description.getter();
    *(inited + 184) = v41;
    v42 = sub_1C75504DC();
    sub_1C706CB5C(v40);
    sub_1C706CB5C(v38);
    sub_1C706CB5C(v33);
    sub_1C706CB5C(v32);
    result = sub_1C706CB5C(v28);
    v44 = v63;
    v45 = v49;
    *v49 = v48;
    v45[1] = v44;
    v46 = v55;
    *(v45 + 1) = v47;
    *(v45 + 2) = v46;
    *(v45 + 3) = v15;
    *(v45 + 4) = v42;
  }

  return result;
}

uint64_t sub_1C72BEA30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656B6361426D6C6CLL && a2 == 0xEA0000000000646ELL;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001C75A92B0 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000018 && 0x80000001C75A92D0 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001C75A92F0 == a2;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x72756769666E6F63 && a2 == 0xEE00736E6F697461)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C7551DBC();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C72BEBEC(char a1)
{
  result = 0x656B6361426D6C6CLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x72756769666E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C72BECAC(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A320, &qword_1C757FC58);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = *v1;
  v21 = v1[1];
  v9 = *(v1 + 1);
  v18 = *(v1 + 2);
  v19 = v9;
  v10 = *(v1 + 3);
  v16 = *(v1 + 4);
  v17 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C72BF5A8();
  v11 = v4;
  sub_1C755200C();
  LOBYTE(v20) = v8;
  v22 = 0;
  sub_1C72BF5FC();
  sub_1C7551D2C();
  if (!v2)
  {
    v13 = v16;
    v12 = v17;
    LOBYTE(v20) = v21;
    v22 = 1;
    sub_1C72BF650();
    sub_1C7551D2C();
    LOBYTE(v20) = 2;
    sub_1C7551C7C();
    v20 = v12;
    v22 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A328, &unk_1C757FC60);
    sub_1C72BF7A0(&qword_1EDD06B60, sub_1C72BF6A4, MEMORY[0x1E69E6300]);
    sub_1C7551D2C();
    v20 = v13;
    v22 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C50, &qword_1C75633A0);
    sub_1C703195C(&qword_1EDD06C70, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1C7551D2C();
  }

  return (*(v5 + 8))(v7, v11);
}

uint64_t sub_1C72BEF88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A330, &unk_1C757FC70);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C72BF5A8();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  sub_1C72BF6F8();
  sub_1C7551C1C();
  v9 = v20;
  v22 = 1;
  sub_1C72BF74C();
  sub_1C7551C1C();
  v21 = v9;
  v10 = v20;
  LOBYTE(v20) = 2;
  v11 = sub_1C7551B6C();
  v14 = v13;
  v18 = v11;
  v19 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A328, &unk_1C757FC60);
  v22 = 3;
  sub_1C72BF7A0(&qword_1EC21A348, sub_1C72BF818, MEMORY[0x1E69E6330]);
  sub_1C7551C1C();
  v15 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C50, &qword_1C75633A0);
  v22 = 4;
  sub_1C703195C(&qword_1EC216128, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1C7551C1C();
  (*(v6 + 8))(v8, v5);
  v16 = v20;
  *a2 = v21;
  *(a2 + 1) = v19;
  *(a2 + 8) = v18;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C72BF330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C72BEA30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C72BF358(uint64_t a1)
{
  v2 = sub_1C72BF5A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C72BF394(uint64_t a1)
{
  v2 = sub_1C72BF5A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C72BF400()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21A308);
  __swift_project_value_buffer(v0, qword_1EC21A308);
  return sub_1C754FEFC();
}

unint64_t sub_1C72BF498()
{
  result = qword_1EDD09FD8;
  if (!qword_1EDD09FD8)
  {
    result = swift_getWitnessTable(asc_1C757FC30, &type metadata for LLMBackendDiagnostics, v0, v1);
    atomic_store(result, &qword_1EDD09FD8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LLMBackendDiagnosticsGenerator(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C72BF5A8()
{
  result = qword_1EDD0A010;
  if (!qword_1EDD0A010)
  {
    result = swift_getWitnessTable(aA_12, &type metadata for LLMBackendDiagnostics.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0A010);
  }

  return result;
}

unint64_t sub_1C72BF5FC()
{
  result = qword_1EDD0C050;
  if (!qword_1EDD0C050)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LLMBackendType, &type metadata for LLMBackendType, v0, v1);
    atomic_store(result, &qword_1EDD0C050);
  }

  return result;
}

unint64_t sub_1C72BF650()
{
  result = qword_1EDD09FD0;
  if (!qword_1EDD09FD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LLMBackendEnvironment, &type metadata for LLMBackendEnvironment, v0, v1);
    atomic_store(result, &qword_1EDD09FD0);
  }

  return result;
}

unint64_t sub_1C72BF6A4()
{
  result = qword_1EDD09FE0;
  if (!qword_1EDD09FE0)
  {
    result = swift_getWitnessTable(byte_1C757FDC4, &type metadata for LLMBackendDiagnostics.ModelTypeContext, v0, v1);
    atomic_store(result, &qword_1EDD09FE0);
  }

  return result;
}

unint64_t sub_1C72BF6F8()
{
  result = qword_1EC21A338;
  if (!qword_1EC21A338)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LLMBackendType, &type metadata for LLMBackendType, v0, v1);
    atomic_store(result, &qword_1EC21A338);
  }

  return result;
}

unint64_t sub_1C72BF74C()
{
  result = qword_1EC21A340;
  if (!qword_1EC21A340)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LLMBackendEnvironment, &type metadata for LLMBackendEnvironment, v0, v1);
    atomic_store(result, &qword_1EC21A340);
  }

  return result;
}

uint64_t sub_1C72BF7A0(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21A328, &unk_1C757FC60);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C72BF818()
{
  result = qword_1EC21A350;
  if (!qword_1EC21A350)
  {
    result = swift_getWitnessTable(asc_1C757FD9C, &type metadata for LLMBackendDiagnostics.ModelTypeContext, v0, v1);
    atomic_store(result, &qword_1EC21A350);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LLMBackendDiagnostics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C72BF948(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 136))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C72BF99C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1C72BFA24()
{
  result = qword_1EC21A358;
  if (!qword_1EC21A358)
  {
    result = swift_getWitnessTable(aR_0, &type metadata for LLMBackendDiagnostics.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21A358);
  }

  return result;
}

unint64_t sub_1C72BFA7C()
{
  result = qword_1EDD0A000;
  if (!qword_1EDD0A000)
  {
    result = swift_getWitnessTable(asc_1C757FCE4, &type metadata for LLMBackendDiagnostics.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0A000);
  }

  return result;
}

unint64_t sub_1C72BFAD4()
{
  result = qword_1EDD0A008;
  if (!qword_1EDD0A008)
  {
    result = swift_getWitnessTable(asc_1C757FD0C, &type metadata for LLMBackendDiagnostics.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0A008);
  }

  return result;
}

unint64_t sub_1C72BFB28()
{
  result = qword_1EDD09FF8;
  if (!qword_1EDD09FF8)
  {
    result = swift_getWitnessTable(byte_1C757FF08, &type metadata for LLMBackendDiagnostics.ModelTypeContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09FF8);
  }

  return result;
}

unint64_t sub_1C72BFB7C()
{
  result = qword_1EC21A370;
  if (!qword_1EC21A370)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LLMModelType, &type metadata for LLMModelType, v0, v1);
    atomic_store(result, &qword_1EC21A370);
  }

  return result;
}

unint64_t sub_1C72BFBD0()
{
  result = qword_1EC21A378;
  if (!qword_1EC21A378)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LLMSamplingParameters, &type metadata for LLMSamplingParameters, v0, v1);
    atomic_store(result, &qword_1EC21A378);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LLMBackendDiagnostics.ModelTypeContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C72BFD6C()
{
  result = qword_1EC21A380;
  if (!qword_1EC21A380)
  {
    result = swift_getWitnessTable(aI_15, &type metadata for LLMBackendDiagnostics.ModelTypeContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21A380);
  }

  return result;
}

unint64_t sub_1C72BFDC4()
{
  result = qword_1EDD09FE8;
  if (!qword_1EDD09FE8)
  {
    result = swift_getWitnessTable(byte_1C757FE50, &type metadata for LLMBackendDiagnostics.ModelTypeContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09FE8);
  }

  return result;
}

unint64_t sub_1C72BFE1C()
{
  result = qword_1EDD09FF0;
  if (!qword_1EDD09FF0)
  {
    result = swift_getWitnessTable(byte_1C757FE78, &type metadata for LLMBackendDiagnostics.ModelTypeContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09FF0);
  }

  return result;
}

void sub_1C72BFE70(uint64_t result)
{
  v2 = 0;
  v21 = *(result + 16);
  v20 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = 32 * v2; ; i += 32)
  {
    if (v21 == v2)
    {

      return;
    }

    if (v2 >= *(result + 16))
    {
      break;
    }

    v5 = *(result + i + 32);
    v4 = *(result + i + 40);
    v6 = *(result + i + 48);
    v7 = *(result + i + 56);
    v8 = *(result + i + 57);
    swift_bridgeObjectRetain_n();
    v9 = sub_1C70F082C(v22, v5, v4);

    if (v9)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = v20;
      v23 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716D818(0, *(v20 + 16) + 1, 1, v11, v12, v13, v14);
        v15 = v23;
      }

      v17 = *(v15 + 16);
      v16 = *(v15 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        sub_1C716D818(v16 > 1, v17 + 1, 1, v11, v12, v13, v14);
        v18 = v17 + 1;
        v15 = v23;
      }

      ++v2;
      *(v15 + 16) = v18;
      v20 = v15;
      v19 = v15 + 32 * v17;
      *(v19 + 32) = v5;
      *(v19 + 40) = v4;
      *(v19 + 48) = v6;
      *(v19 + 56) = v7;
      *(v19 + 57) = v8;
      goto LABEL_2;
    }

    ++v2;
  }

  __break(1u);
}

uint64_t sub_1C72BFFE8(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *(a1 + 16);
  v7 = sub_1C6FB6304();
  v8 = v7;
  if (v7 >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  v32 = MEMORY[0x1E69E7CC0];
  result = sub_1C716D7F8(0, v9 & ~(v9 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v31 = a2 >> 62;
    v28 = a2;
    v26 = a1;
    if (!v9)
    {
      v13 = a2 & 0xFFFFFFFFFFFFFF8;
      v30 = a2 & 0xC000000000000001;
      goto LABEL_22;
    }

    v11 = 0;
    v12 = a1 + 32;
    v30 = a2 & 0xC000000000000001;
    v13 = a2 & 0xFFFFFFFFFFFFFF8;
    v27 = v12;
    while (v6 != v11)
    {
      v14 = *(v27 + 8 * v11);
      if (v31)
      {
        result = sub_1C75516BC();
      }

      else
      {
        result = *(v13 + 16);
      }

      if (v11 == result)
      {
        goto LABEL_41;
      }

      if (v30)
      {
        sub_1C75504FC();
        v15 = MEMORY[0x1CCA5DDD0](v11, a2);
      }

      else
      {
        if (v11 >= *(v13 + 16))
        {
          goto LABEL_45;
        }

        v15 = *(a2 + 8 * v11 + 32);
        sub_1C75504FC();
        swift_unknownObjectRetain();
      }

      v16 = a3(v14, v15);
      if (v3)
      {
        swift_unknownObjectRelease();

        return v32;
      }

      v17 = v16;
      swift_unknownObjectRelease();

      v19 = *(v32 + 16);
      v18 = *(v32 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_1C716D7F8(v18 > 1, v19 + 1, 1);
      }

      ++v11;
      *(v32 + 16) = v19 + 1;
      *(v32 + 8 * v19 + 32) = v17;
      a2 = v28;
      if (v9 == v11)
      {
LABEL_22:
        while (v6 != v9)
        {
          if (v9 >= v6)
          {
            goto LABEL_42;
          }

          if (__OFADD__(v9, 1))
          {
            goto LABEL_43;
          }

          v20 = *(v26 + 32 + 8 * v9);
          if (v31)
          {
            result = sub_1C75516BC();
          }

          else
          {
            result = *(v13 + 16);
          }

          if (v9 == result)
          {
            return v32;
          }

          if (v30)
          {
            sub_1C75504FC();
            v21 = MEMORY[0x1CCA5DDD0](v9, a2);
          }

          else
          {
            if (v9 >= *(v13 + 16))
            {
              goto LABEL_44;
            }

            v21 = *(a2 + 8 * v9 + 32);
            sub_1C75504FC();
            swift_unknownObjectRetain();
          }

          v22 = a3(v20, v21);
          if (v3)
          {

            swift_unknownObjectRelease();

            return v32;
          }

          v23 = v22;
          swift_unknownObjectRelease();

          v25 = *(v32 + 16);
          v24 = *(v32 + 24);
          if (v25 >= v24 >> 1)
          {
            result = sub_1C716D7F8(v24 > 1, v25 + 1, 1);
          }

          *(v32 + 16) = v25 + 1;
          *(v32 + 8 * v25 + 32) = v23;
          ++v9;
          a2 = v28;
        }

        return v32;
      }
    }

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
  }

  __break(1u);
  return result;
}

void sub_1C72C0340(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = sub_1C6FB6304();
  v8 = sub_1C6FB6304();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v9;
  }

  v49 = MEMORY[0x1E69E7CC0];
  sub_1C716D888(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
LABEL_63:
    __break(1u);
LABEL_64:

    __break(1u);
    return;
  }

  v48 = a2 >> 62;
  v46 = a3 >> 62;
  v42 = v5;
  v43 = a3;
  v11 = a3;
  v44 = a2;
  if (v10)
  {
    v47 = a2 & 0xC000000000000001;
    v37 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = a3 & 0xFFFFFFFFFFFFFF8;
    v45 = a3 & 0xC000000000000001;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v39 = a3 & 0xFFFFFFFFFFFFFF8;
    v13 = 4;
    v14 = v10;
    while (v13 - v6 != 4)
    {
      v15 = *(v5 + 8 * v13);
      if (v48)
      {
        v16 = sub_1C75516BC();
      }

      else
      {
        v16 = *(v37 + 16);
      }

      v17 = v13 - 4;
      if (v13 - 4 == v16)
      {
        goto LABEL_57;
      }

      if (v47)
      {
        sub_1C75504FC();
        v18 = MEMORY[0x1CCA5DDD0](v13 - 4, v44);
      }

      else
      {
        if (v17 >= *(v37 + 16))
        {
          goto LABEL_62;
        }

        v19 = *(v44 + 8 * v13);
        sub_1C75504FC();
        v18 = v19;
      }

      v7 = v18;
      if (v46)
      {
        v20 = sub_1C75516BC();
      }

      else
      {
        v20 = *(v12 + 16);
      }

      if (v17 == v20)
      {
        goto LABEL_64;
      }

      if (v45)
      {
        v21 = MEMORY[0x1CCA5DDD0](v13 - 4, v11);
      }

      else
      {
        if (v17 >= *(v12 + 16))
        {
          goto LABEL_58;
        }

        v21 = *(v11 + 8 * v13);
        swift_unknownObjectRetain();
      }

      v23 = *(v49 + 16);
      v22 = *(v49 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1C716D888(v22 > 1, v23 + 1, 1);
      }

      *(v49 + 16) = v23 + 1;
      v24 = (v49 + 24 * v23);
      v24[4] = v15;
      v24[5] = v7;
      v24[6] = v21;
      ++v13;
      --v14;
      v5 = v42;
      v11 = v43;
      v12 = v39;
      if (!v14)
      {
        a2 = v44;
        v25 = v6;
        v7 = v37;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v7 = (a2 & 0xFFFFFFFFFFFFFF8);
  v47 = a2 & 0xC000000000000001;
  v12 = a3 & 0xFFFFFFFFFFFFFF8;
  v45 = a3 & 0xC000000000000001;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v25 = v6;
LABEL_32:
  v40 = a2 + 32;
  v41 = v5 + 32;
  v38 = v11 + 32;
  v26 = v7;
  for (i = v12; v25 != v10; v12 = i)
  {
    if (v10 >= v25)
    {
      goto LABEL_59;
    }

    v28 = *(v41 + 8 * v10);
    v29 = v48 ? sub_1C75516BC() : v7[2];
    if (v10 == v29)
    {
      break;
    }

    if (v47)
    {
      sub_1C75504FC();
      v31 = MEMORY[0x1CCA5DDD0](v10, v44);
    }

    else
    {
      if (v10 >= v7[2])
      {
        goto LABEL_60;
      }

      v30 = *(v40 + 8 * v10);
      sub_1C75504FC();
      v31 = v30;
    }

    v7 = v31;
    if (v46)
    {
      v32 = sub_1C75516BC();
    }

    else
    {
      v32 = *(v12 + 16);
    }

    if (v10 == v32)
    {

      break;
    }

    if (v45)
    {
      v33 = MEMORY[0x1CCA5DDD0](v10, v43);
    }

    else
    {
      if (v10 >= *(v12 + 16))
      {
        goto LABEL_61;
      }

      v33 = *(v38 + 8 * v10);
      swift_unknownObjectRetain();
    }

    v35 = *(v49 + 16);
    v34 = *(v49 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_1C716D888(v34 > 1, v35 + 1, 1);
    }

    *(v49 + 16) = v35 + 1;
    v36 = (v49 + 24 * v35);
    v36[4] = v28;
    v36[5] = v7;
    v36[6] = v33;
    ++v10;
    v25 = v6;
    v7 = v26;
  }
}

uint64_t sub_1C72C079C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;

    return sub_1C6FF5694();
  }

  else
  {
    v6 = *v3;

    return j__swift_continuation_throwingResume(v6);
  }
}

void PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher.init(with:)(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 10000;
  sub_1C6F65BE8(0, &qword_1EDD0FA60, 0x1E69E9BF8);
  v4 = sub_1C755146C();
  a2[1] = v4;
  v5 = type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher(0);
  *(a2 + v5[7]) = a1;
  v6 = objc_allocWithZone(PNTextEmbeddingService);
  v7 = v4;
  v8 = a1;
  *(a2 + v5[8]) = [v6 init];
  v9 = (a2 + v5[9]);
  v9[3] = type metadata accessor for PhotosSearchBasedStoryAssetsFetcher(0);
  v9[4] = &protocol witness table for PhotosSearchBasedStoryAssetsFetcher;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9);
  v11 = v8;
  sub_1C754FEFC();
  type metadata accessor for PhotosSearchQueryManagerProxy();
  swift_allocObject();
  *boxed_opaque_existential_0 = sub_1C72FC904(v11, 0);
  sub_1C754FF2C();
}

uint64_t type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher(uint64_t a1)
{
  result = qword_1EDD0F900;
  if (!qword_1EDD0F900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher.preheat(eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v1[183] = v0;
  v1[177] = v2;
  v3 = type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher(0);
  OUTLINED_FUNCTION_18(v3);
  v1[189] = v4;
  v1[195] = *(v5 + 64);
  v1[201] = swift_task_alloc();
  v1[207] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0, &qword_1C7574200);
  OUTLINED_FUNCTION_76(v6);
  v1[213] = swift_task_alloc();
  v7 = sub_1C754F38C();
  v1[214] = v7;
  OUTLINED_FUNCTION_18(v7);
  v1[215] = v8;
  v1[216] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C72C0BD0, 0, 0);
}

uint64_t sub_1C72C0BD0()
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 1704);
  v2 = *(v0 + 1656);
  v17 = *(v0 + 1560);
  v18 = *(v0 + 1608);
  v3 = *(v0 + 1512);
  v4 = *(v0 + 1464);
  v5 = *(v0 + 1416);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v6 = OUTLINED_FUNCTION_45_24();
  OUTLINED_FUNCTION_51_1(v6);
  sub_1C754F61C();
  OUTLINED_FUNCTION_25_8();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  sub_1C754F16C();
  sub_1C6FB5FC8(v1, &qword_1EC214BF0, &qword_1C7574200);
  sub_1C72C6E78(v4, v2);
  sub_1C6FB5E28(v5, v0 + 1336);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v0 + 1736) = v12;
  sub_1C72C6EDC(v2, v12 + v11);
  sub_1C6FD80E4((v0 + 1336), v12 + ((v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_asyncLet_begin();
  sub_1C72C6E78(v4, v18);
  v13 = swift_allocObject();
  *(v0 + 1744) = v13;
  sub_1C72C6EDC(v18, v13 + v11);
  swift_asyncLet_begin();
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DEC0](v14);
}

uint64_t sub_1C72C0DC8(uint64_t a1, uint64_t a2)
{
  *(v3 + 1752) = v2;
  if (v2)
  {
    return MEMORY[0x1EEE6DEB0](v3 + 656, a2, sub_1C72C0F74, v3 + 1376);
  }

  else
  {
    return MEMORY[0x1EEE6DEC0](v3 + 656);
  }
}

uint64_t sub_1C72C0E08(uint64_t a1, uint64_t a2)
{
  *(v3 + 1760) = v2;
  if (v2)
  {
    v4 = sub_1C72C1064;
    v5 = v3 + 656;
    v6 = v3 + 1520;
  }

  else
  {
    v4 = sub_1C72C0E48;
    v5 = v3 + 656;
    v6 = v3 + 1616;
  }

  return MEMORY[0x1EEE6DEB0](v5, a2, v4, v6);
}

uint64_t sub_1C72C0E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v15 = *(v14 + 1728);
  v16 = *(v14 + 1720);
  v17 = *(v14 + 1712);
  v27 = *(v14 + 1656);
  v28 = *(v14 + 1608);
  OUTLINED_FUNCTION_70(*(v14 + 1416), *(*(v14 + 1416) + 24));
  sub_1C754F1AC();
  (*(v16 + 8))(v15, v17);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27, v28, a12, a13, a14);
}

uint64_t sub_1C72C0FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_15_56();
  (*(v16 + 8))(v14, v15);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C72C10A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_15_56();
  (*(v16 + 8))(v14, v15);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C72C1154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1C72C1174, 0, 0);
}

uint64_t sub_1C72C1174()
{
  OUTLINED_FUNCTION_123();
  v1 = v0[2];
  v2 = (v1 + *(type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher(0) + 36));
  v3 = v2[3];
  v4 = v2[4];
  OUTLINED_FUNCTION_70(v2, v3);
  OUTLINED_FUNCTION_31_2();
  v9 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_1C71D2AB8;
  v7 = v0[3];

  return v9(v7, v3, v4);
}

uint64_t sub_1C72C12C0()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[18];
  v2 = *(v1 + *(type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher(0) + 32));
  v0[2] = v0;
  v0[3] = sub_1C72C13C8;
  v3 = swift_continuation_init();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE0, &qword_1C7560100);
  OUTLINED_FUNCTION_62(v4);
  v0[11] = 1107296256;
  v0[12] = sub_1C72C079C;
  v0[13] = &block_descriptor_58;
  v0[14] = v3;
  [v2 prewarmWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C72C13C8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 152) = v4;
  if (v4)
  {
    v5 = sub_1C711BBA8;
  }

  else
  {
    v5 = sub_1C711BB84;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher.performSearch(with:options:eventRecorder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[25] = a4;
  v5[26] = v4;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  return OUTLINED_FUNCTION_0_67(sub_1C72C14E8);
}

uint64_t sub_1C72C14E8()
{
  OUTLINED_FUNCTION_115_0();
  v1 = v0[24];
  if (*v1)
  {
    if (*v1 == 1)
    {
      v2 = *(v1 + 8);
      if (v2 == 1)
      {
        v3 = v0[23];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
        v4 = swift_allocObject();
        v0[28] = v4;
        *(v4 + 16) = xmmword_1C7565670;
        *(v4 + 32) = v3;
        v5 = v3;
        v6 = swift_task_alloc();
        v0[29] = v6;
        *v6 = v0;
        v7 = OUTLINED_FUNCTION_38_26(v6);

        return sub_1C72C2158(v7, v8, v9);
      }

      goto LABEL_15;
    }

    v22 = v0[23];
    v23 = type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher(0);
    v24 = v22;
    v25 = sub_1C754FEEC();
    v26 = sub_1C75511BC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = v0[23];
      v28 = OUTLINED_FUNCTION_41_0();
      v29 = swift_slowAlloc();
      *v28 = 138739971;
      *(v28 + 4) = v27;
      *v29 = v27;
      v30 = v27;
      _os_log_impl(&dword_1C6F5C000, v25, v26, "Perform metadata and embedding search for query %{sensitive}@", v28, 0xCu);
      sub_1C6FB5FC8(v29, &qword_1EC215190, &qword_1C755C730);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v31 = v0[24];

    v2 = *(v31 + 8);
    if (v2 != 1)
    {
LABEL_15:
      v37 = sub_1C72C7108();
      OUTLINED_FUNCTION_166_0(&type metadata for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher.Error, v37);
      *v38 = v2;
      *(v38 + 8) = 0;
      swift_willThrow();
      OUTLINED_FUNCTION_43();

      return v39();
    }

    v32 = v0[26];
    sub_1C72CBA00((v0 + 2));
    v33 = (v32 + *(v23 + 36));
    v13 = v33[3];
    v14 = v33[4];
    OUTLINED_FUNCTION_70(v33, v13);
    OUTLINED_FUNCTION_31_2();
    v40 = (v34 + *v34);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[32] = v35;
    *v35 = v36;
    v35[1] = sub_1C72C1BD0;
    v19 = v0[25];
    v21 = v0[23];
    v20 = v0 + 19;
    v18 = v0 + 2;
  }

  else
  {
    v11 = v0[26];
    v12 = (v11 + *(type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher(0) + 36));
    v13 = v12[3];
    v14 = v12[4];
    OUTLINED_FUNCTION_70(v12, v13);
    OUTLINED_FUNCTION_31_2();
    v40 = (v15 + *v15);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[27] = v16;
    *v16 = v17;
    v16[1] = sub_1C72C1908;
    v18 = v0[24];
    v19 = v0[25];
    v20 = v0[22];
    v21 = v0[23];
  }

  return (v40)(v20, v21, v18, v19, v13, v14);
}

uint64_t sub_1C72C1908()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C72C19E8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 240) = v5;
  *(v3 + 248) = v0;

  if (v0)
  {
    v6 = sub_1C72C202C;
  }

  else
  {

    v6 = sub_1C72C1AF8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C72C1AF8()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 240);
  if (v1[2])
  {
    v2 = *(v0 + 176);
    v3 = v1[4];
    v4 = v1[5];
    v5 = v1[6];
    swift_unknownObjectRetain();
    sub_1C75504FC();
    v6 = v4;

    *v2 = v3;
    v2[1] = v6;
    v2[2] = v5;
  }

  else
  {

    v8 = sub_1C72C7108();
    v9 = OUTLINED_FUNCTION_166_0(&type metadata for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher.Error, v8);
    OUTLINED_FUNCTION_32_29(v9, v10);
    swift_willThrow();
  }

  OUTLINED_FUNCTION_43();

  return v7();
}

uint64_t sub_1C72C1BD0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 264) = v0;

  if (v0)
  {
    v7 = sub_1C72C2088;
  }

  else
  {
    v7 = sub_1C72C1CCC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C72C1CCC()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 184);
  *(v0 + 272) = *(v0 + 152);
  *(v0 + 288) = *(v0 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v2 = swift_allocObject();
  *(v0 + 296) = v2;
  *(v2 + 16) = xmmword_1C7565670;
  *(v2 + 32) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 304) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_38_26(v4);

  return sub_1C72C2158(v5, v6, v7);
}

uint64_t sub_1C72C1DAC()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_20();
  *v5 = v4;
  *(v7 + 312) = v6;
  *(v7 + 320) = v0;

  if (v0)
  {
    v8 = sub_1C72C20E4;
  }

  else
  {
    v8 = sub_1C72C1ED8;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1C72C1ED8(uint64_t a1, uint64_t a2)
{
  v16 = v2;
  v3 = v2[39];
  v4 = v2[35];
  if (v3[2])
  {
    v5 = v2[22];
    v6 = v3[4];
    v7 = v3[5];
    v8 = v3[6];
    swift_unknownObjectRetain();
    sub_1C75504FC();
    v9 = v7;

    v15[0] = v6;
    v15[1] = v9;
    v15[2] = v8;
    FreeformStoryFetching.Result.merging(_:)(v15, v5);
    sub_1C70DF138((v2 + 2));

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_43();
  }

  else
  {

    v11 = sub_1C72C7108();
    v12 = OUTLINED_FUNCTION_166_0(&type metadata for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher.Error, v11);
    OUTLINED_FUNCTION_32_29(v12, v13);
    swift_willThrow();

    swift_unknownObjectRelease();
    sub_1C70DF138((v2 + 2));
    OUTLINED_FUNCTION_43();
  }

  return v10();
}

uint64_t sub_1C72C202C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C72C2088()
{
  OUTLINED_FUNCTION_42();
  sub_1C70DF138(v0 + 16);
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C72C20E4()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 280);

  swift_unknownObjectRelease();
  sub_1C70DF138(v0 + 16);
  OUTLINED_FUNCTION_43();

  return v2();
}