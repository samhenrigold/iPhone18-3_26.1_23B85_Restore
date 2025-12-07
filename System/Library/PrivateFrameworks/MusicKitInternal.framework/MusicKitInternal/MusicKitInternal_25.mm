uint64_t static MusicLibraryMapping.ItemContent<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48[1] = a5;
  v53 = a1;
  v54 = a2;
  OUTLINED_FUNCTION_1_0();
  v50 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v49 = v9 - v8;
  v12 = type metadata accessor for MusicLibraryMapping.ItemContent(0, v10, v11, v11);
  OUTLINED_FUNCTION_1_0();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = v48 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = v48 - v22;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_1_0();
  v52 = v25;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = v48 - v28;
  v30 = v48 + *(v27 + 48) - v28;
  v51 = v14;
  v31 = *(v14 + 16);
  (v31)(v48 - v28, v53, v12);
  (v31)(v30, v54, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v42 = v49;
    v41 = v50;
    OUTLINED_FUNCTION_2_59();
    v31();
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v41 + 8))(v23, a3);
LABEL_19:
      v40 = 0;
      v39 = v52;
      v12 = TupleTypeMetadata2;
      goto LABEL_25;
    }

    (*(v41 + 32))(v42, v30, a3);
    v40 = sub_1D5614D18();
    v46 = *(v41 + 8);
    v46(v42, a3);
    v46(v23, a3);
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_2_59();
    v31();
    v44 = *v18;
    v43 = v18[1];
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_18;
    }

    if (v44 == *v30 && v43 == *(v30 + 1))
    {

      v40 = 1;
    }

    else
    {
      v40 = sub_1D5616168();
    }

LABEL_24:
    v39 = v51;
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_2_59();
  v31();
  v34 = *v21;
  v33 = *(v21 + 1);
  v35 = v21[16];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_18:

    goto LABEL_19;
  }

  v36 = v30[16];
  if (v34 == *v30 && v33 == *(v30 + 1))
  {

    v39 = v51;
    goto LABEL_22;
  }

  v38 = sub_1D5616168();

  v39 = v51;
  if (v38)
  {
LABEL_22:
    v40 = v35 == v36;
    goto LABEL_25;
  }

  v40 = 0;
LABEL_25:
  (*(v39 + 8))(v29, v12);
  return v40 & 1;
}

uint64_t MusicLibraryMapping.ItemContent<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v12, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = v10[16];
      MEMORY[0x1DA6EC0D0](1);
      sub_1D5614E28();

      return MEMORY[0x1DA6EC0D0](v14);
    }

    else
    {
      MEMORY[0x1DA6EC0D0](2);
      sub_1D5614E28();
    }
  }

  else
  {
    (*(v5 + 32))(v8, v10, v4);
    MEMORY[0x1DA6EC0D0](0);
    sub_1D5614CB8();
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t MusicLibraryMapping.ItemContent<>.hashValue.getter()
{
  sub_1D56162D8();
  OUTLINED_FUNCTION_2_59();
  MusicLibraryMapping.ItemContent<>.hash(into:)(v0, v1, v2);
  return sub_1D5616328();
}

uint64_t sub_1D50B99DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1D56162D8();
  MusicLibraryMapping.ItemContent<>.hash(into:)(v6, a2, v4);
  return sub_1D5616328();
}

uint64_t MusicLibraryMapping.ItemContent.id.getter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D560D838();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - v12;
  v14 = *(a1 + 16);
  OUTLINED_FUNCTION_1_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  (*(v25 + 16))(v23 - v22, v2, a1);
  if (swift_getEnumCaseMultiPayload())
  {
    return *v24;
  }

  (*(v16 + 32))(v20, v24, v14);
  sub_1D560EC98();
  sub_1D560D7A8();
  (*(v6 + 8))(v10, v4);
  v27 = sub_1D560F148();
  if (__swift_getEnumTagSinglePayload(v13, 1, v27) == 1)
  {
    sub_1D50B9D4C(v13);
    v26 = sub_1D560EC18();
  }

  else
  {
    v26 = sub_1D560F138();
    (*(*(v27 - 8) + 8))(v13, v27);
  }

  (*(v16 + 8))(v20, v14);
  return v26;
}

uint64_t sub_1D50B9D24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = MusicLibraryMapping.ItemContent.id.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1D50B9D4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D50B9DFC(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1D50BA170();
    if (v2 <= 0x3F)
    {
      sub_1D4E5DF6C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D50B9E88(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 17;
  if (*(v3 + 64) > 0x11uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1D50B9FAC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x11)
  {
    v5 = 17;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

void sub_1D50BA170()
{
  if (!qword_1EDD53A28)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDD53A28);
    }
  }
}

uint64_t sub_1D50BA1D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return MusicPlayer.Queue.playActivityFeatureName.setter(v1, v2, v3);
}

uint64_t (*MusicPlayer.Queue.playActivityFeatureName.modify(uint64_t *a1))()
{
  a1[2] = v1;
  *a1 = _s8MusicKit0A6PlayerC5QueueC0aB8InternalE23playActivityFeatureNameSSSgvg_0();
  a1[1] = v3;
  return sub_1D50BA264;
}

uint64_t sub_1D50BA264(void *a1, char a2, __n128 a3)
{
  if ((a2 & 1) == 0)
  {
    return _s8MusicKit0A6PlayerC5QueueC0aB8InternalE23playActivityFeatureNameSSSgvs_0();
  }

  _s8MusicKit0A6PlayerC5QueueC0aB8InternalE23playActivityFeatureNameSSSgvs_0();
}

uint64_t sub_1D50BA2DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1D50BA3D8(*a1, v2);
  return MusicPlayer.Queue.playActivityRecommendationData.setter(v1, v2);
}

uint64_t (*MusicPlayer.Queue.playActivityRecommendationData.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  *a1 = _s8MusicKit0A6PlayerC5QueueC0aB8InternalE30playActivityRecommendationData10Foundation0I0VSgvg_0();
  a1[1] = v3;
  return sub_1D50BA36C;
}

uint64_t sub_1D50BA36C(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = OUTLINED_FUNCTION_128();
    sub_1D50BA3D8(v2, v3);
    OUTLINED_FUNCTION_128();
    _s8MusicKit0A6PlayerC5QueueC0aB8InternalE30playActivityRecommendationData10Foundation0I0VSgvs_0();
    v4 = OUTLINED_FUNCTION_128();

    return sub_1D50153E4(v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_128();
    return _s8MusicKit0A6PlayerC5QueueC0aB8InternalE30playActivityRecommendationData10Foundation0I0VSgvs_0();
  }
}

uint64_t sub_1D50BA3D8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D4F48DE4(result, a2);
  }

  return result;
}

double MusicPlayer.Queue.container.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1D560EF38();
  if (!v4)
  {
    sub_1D4E6C9CC(v3, &unk_1EC7F65C0, &qword_1D562E6B0);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADC8, &qword_1D561DBB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF760, &qword_1D5632BB8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t MusicPlayer.Queue.container.setter(uint64_t a1)
{
  sub_1D50BA5C0(a1, v7);
  v2 = v8;
  if (v8)
  {
    v3 = v9;
    v4 = __swift_project_boxed_opaque_existential_1(v7, v8);
    *(&v11 + 1) = v2;
    v12 = *(v3 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v10);
    (*(*(v2 - 8) + 16))(boxed_opaque_existential_0, v4, v2);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_1D4E6C9CC(v7, &unk_1EC7F65D0, &qword_1D5638870);
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
  }

  sub_1D560EF48();
  return sub_1D4E6C9CC(a1, &unk_1EC7F65D0, &qword_1D5638870);
}

uint64_t sub_1D50BA5C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F65D0, &qword_1D5638870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*MusicPlayer.Queue.container.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v3;
  v3[10] = v1;
  MusicPlayer.Queue.container.getter(v3);
  return sub_1D50BA694;
}

void sub_1D50BA694(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1D50BA5C0(*a1, v2 + 40);
    MusicPlayer.Queue.container.setter(v2 + 40);
    sub_1D4E6C9CC(v2, &unk_1EC7F65D0, &qword_1D5638870);
  }

  else
  {
    MusicPlayer.Queue.container.setter(*a1);
  }

  free(v2);
}

uint64_t MusicCatalogSearchRequest.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  sub_1D560DEE8();
  sub_1D560CCE8();
  (*(v4 + 8))(v7, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  v14 = type metadata accessor for MusicRequestConfiguration(0);
  v15 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v13, v15 ^ 1u, 1, v14);
  sub_1D4F73F78(v13, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v14) == 1)
  {
    static MusicRequestConfiguration.globalDefault.getter(a1);
    if (__swift_getEnumTagSinglePayload(v11, 1, v14) != 1)
    {
      sub_1D4FEF060(v11);
    }
  }

  else
  {
    sub_1D4E56C6C(v11, a1);
  }

  return sub_1D4FEF060(v13);
}

uint64_t sub_1D50BA908(uint64_t a1)
{
  v2 = type metadata accessor for MusicRequestConfiguration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4F5A490(a1, v4);
  return MusicCatalogSearchRequest.configuration.setter(v4);
}

uint64_t MusicCatalogSearchRequest.configuration.setter(uint64_t a1)
{
  v2 = sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  type metadata accessor for MusicRequestConfiguration(0);
  sub_1D4E48388();
  sub_1D560E6C8();
  (*(v4 + 16))(v8, v10, v2);
  sub_1D560DEF8();
  sub_1D4F581B8(a1);
  return (*(v4 + 8))(v10, v2);
}

void (*MusicCatalogSearchRequest.configuration.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1D560CD48();
  v3[1] = v4;
  v3[2] = *(v4 - 8);
  v3[3] = OUTLINED_FUNCTION_2_60();
  v3[4] = OUTLINED_FUNCTION_2_60();
  v3[5] = type metadata accessor for MusicRequestConfiguration(0);
  v3[6] = OUTLINED_FUNCTION_2_60();
  v5 = OUTLINED_FUNCTION_2_60();
  v3[7] = v5;
  MusicCatalogSearchRequest.configuration.getter(v5);
  return sub_1D50BABC0;
}

void sub_1D50BABC0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v7 = *(*a1 + 16);
  v6 = *(*a1 + 24);
  v8 = *(*a1 + 8);
  if (a2)
  {
    sub_1D4F5A490(*(*a1 + 56), v3);
    sub_1D4E48388();
    sub_1D560E6C8();
    v9 = OUTLINED_FUNCTION_178();
    v10(v9);
    sub_1D560DEF8();
    (*(v7 + 8))(v5, v8);
    sub_1D4F581B8(v3);
  }

  else
  {
    sub_1D4E48388();
    sub_1D560E6C8();
    v11 = OUTLINED_FUNCTION_178();
    v12(v11);
    sub_1D560DEF8();
    (*(v7 + 8))(v5, v8);
  }

  sub_1D4F581B8(v4);
  free(v4);
  free(v3);
  free(v5);
  free(v6);

  free(v2);
}

uint64_t sub_1D50BAD00(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCEBA0](a1);
}

uint64_t sub_1D50BADCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = Presto_MusicLibrary.DownloadStatus.DownloadPauseReasons.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D50BAE0C@<X0>(uint64_t *a1@<X8>)
{
  result = Presto_MusicLibrary.DownloadStatus.DownloadPauseReasons.rawValue.getter();
  *a1 = result;
  return result;
}

BOOL static Presto_MusicLibrary.DownloadStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) != 1)
    {
      switch(*&v2)
      {
        case 1:
          return v4 == 2 && *&v3 == 1;
        case 2:
          return v4 == 2 && *&v3 == 2;
        case 3:
          return v4 == 2 && *&v3 == 3;
        case 4:
          return v4 == 2 && *&v3 == 4;
        default:
          return v4 == 2 && *&v3 == 0;
      }
    }

    if (v4 == 1)
    {
      return *&v2 == *&v3;
    }

    return 0;
  }

  return !*(a2 + 8) && v2 == v3;
}

uint64_t Presto_MusicLibrary.DownloadStatus.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    if (*(v0 + 8) == 1)
    {
      MEMORY[0x1DA6EC0D0](6);
      v2 = v1;
    }

    else
    {
      switch(v1)
      {
        case 1:
          v2 = 1;
          break;
        case 2:
          v2 = 2;
          break;
        case 3:
          v2 = 4;
          break;
        case 4:
          v2 = 5;
          break;
        default:
          v2 = 0;
          break;
      }
    }

    return MEMORY[0x1DA6EC0D0](v2);
  }

  else
  {
    MEMORY[0x1DA6EC0D0](3);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    return MEMORY[0x1DA6EC100](v4);
  }
}

uint64_t Presto_MusicLibrary.DownloadStatus.hashValue.getter()
{
  sub_1D56162D8();
  Presto_MusicLibrary.DownloadStatus.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D50BB004(uint64_t a1)
{
  sub_1D56162D8();
  Presto_MusicLibrary.DownloadStatus.hash(into:)();
  return sub_1D5616328();
}

unint64_t sub_1D50BB058()
{
  result = qword_1EC7EF768;
  if (!qword_1EC7EF768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF768);
  }

  return result;
}

unint64_t sub_1D50BB0B0()
{
  result = qword_1EC7EF770;
  if (!qword_1EC7EF770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF770);
  }

  return result;
}

unint64_t sub_1D50BB104()
{
  result = qword_1EC7EF778;
  if (!qword_1EC7EF778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF778);
  }

  return result;
}

unint64_t sub_1D50BB15C()
{
  result = qword_1EC7EF780;
  if (!qword_1EC7EF780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF780);
  }

  return result;
}

unint64_t sub_1D50BB1B4()
{
  result = qword_1EC7EF788;
  if (!qword_1EC7EF788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF788);
  }

  return result;
}

uint64_t sub_1D50BB22C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for MusicSuggestedPivotRound(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1D4F0430C(0, v10, 0);
  v11 = v21;
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = a3 + v18;
  v13 = *(v7 + 72);
  while (1)
  {
    v19(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1D4F0430C(v14 > 1, v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_1D50C1544(v9, v11 + v18 + v15 * v13);
    v12 += v13;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D50BB3D4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for MusicSuggestedPivotEntry(0);
  v7 = OUTLINED_FUNCTION_69(v6);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = *(a3 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (!v13)
  {
    return v14;
  }

  v24 = MEMORY[0x1E69E7CC0];
  sub_1D4F04364(0, v13, 0);
  v14 = v24;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF878, &qword_1D5633210);
  OUTLINED_FUNCTION_69(v15);
  v17 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v22 = *(v18 + 72);
  while (1)
  {
    a1(v17);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v20 = *(v24 + 16);
    v19 = *(v24 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1D4F04364(v19 > 1, v20 + 1, 1);
    }

    *(v24 + 16) = v20 + 1;
    sub_1D50C1544(v12, v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v20);
    v17 += v22;
    if (!--v13)
    {
      return v14;
    }
  }

  __break(1u);
  return result;
}

uint64_t MusicSuggestedPivotsViewModel.__allocating_init(seed:limit:)(uint64_t a1, uint64_t a2)
{
  v2 = swift_allocObject();
  MusicSuggestedPivotsViewModel.init(seed:limit:)();
  return v2;
}

void MusicSuggestedPivotsViewModel.init(seed:limit:)()
{
  OUTLINED_FUNCTION_47();
  v108 = v0;
  v115 = v1;
  v113 = v2;
  v116 = type metadata accessor for MusicSuggestedPivotSeed(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v98 = v5 - v4;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF790, &qword_1D5632E90);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_59_0();
  v114 = v7 - v8;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v89 - v10;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  v112 = &v89 - v12;
  sub_1D560C368();
  OUTLINED_FUNCTION_4();
  v110 = v14;
  v111 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v109 = v16 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF798, &qword_1D5632E98);
  OUTLINED_FUNCTION_4();
  v106 = v18;
  v107 = v17;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v105 = &v89 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7A0, &unk_1D5632EA0);
  OUTLINED_FUNCTION_4();
  v103 = v22;
  v104 = v21;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v102 = &v89 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7A8, &qword_1D5641DA0);
  OUTLINED_FUNCTION_4();
  v99 = v26;
  v100 = v25;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_59_0();
  v101 = v27 - v28;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v89 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7B0, &qword_1D5632EB0);
  OUTLINED_FUNCTION_4();
  v34 = v33;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v89 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7B8, &qword_1D5632EB8);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v89 - v41;
  v43 = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel__node;
  type metadata accessor for MusicSuggestedPivotNode(0);
  v44 = OUTLINED_FUNCTION_41_23();
  v89 = v45;
  __swift_storeEnumTagSinglePayload(v44, v46, v47, v45);
  v48 = OUTLINED_FUNCTION_46_1();
  sub_1D4E69970(v48, v49, &qword_1EC7EF7B8, &qword_1D5632EB8);
  v91 = v38;
  sub_1D560C8B8();
  v90 = v42;
  sub_1D4E50004(v42, &qword_1EC7EF7B8, &qword_1D5632EB8);
  v96 = v34;
  v50 = *(v34 + 32);
  v93 = v43;
  v95 = v37;
  v97 = v32;
  v51 = v32;
  v52 = v108;
  v50(v108 + v43, v37, v51);
  v53 = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel__pivotEntries;
  type metadata accessor for MusicSuggestedPivotEntry(0);
  sub_1D50C09A4();
  v54 = MEMORY[0x1E69E7CC0];
  sub_1D560D9F8();
  v56 = v99;
  v55 = v100;
  (*(v99 + 16))(v101, v31, v100);
  v57 = v102;
  OUTLINED_FUNCTION_46_1();
  sub_1D560C8B8();
  (*(v56 + 8))(v31, v55);
  (*(v103 + 32))(v52 + v53, v57, v104);
  v58 = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel__status;
  LOBYTE(v117[0]) = 2;
  v59 = v105;
  sub_1D560C8B8();
  (*(v106 + 32))(v52 + v58, v59, v107);
  __swift_storeEnumTagSinglePayload(v52 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_seed, 1, 1, v116);
  v60 = (v52 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_sessionID);
  *v60 = 0;
  v60[1] = 0;
  *(v52 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_offeredPivotRounds) = v54;
  v61 = (v52 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id);
  v62 = v109;
  sub_1D560C358();
  v63 = sub_1D560C338();
  v65 = v64;
  (*(v110 + 8))(v62, v111);
  *v61 = v63;
  v61[1] = v65;
  if (qword_1EC7E90C0 != -1)
  {
    OUTLINED_FUNCTION_0_78(&qword_1EC7E90C0);
  }

  v66 = sub_1D560C758();
  __swift_project_value_buffer(v66, qword_1EC87C2E8);
  v67 = v112;
  v68 = v113;
  sub_1D4E69970(v113, v112, &qword_1EC7EF790, &qword_1D5632E90);

  v69 = sub_1D560C738();
  v70 = sub_1D56156E8();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = OUTLINED_FUNCTION_138_0();
    v117[0] = OUTLINED_FUNCTION_34_24();
    *v71 = 136446722;
    v72 = *v61;
    v73 = v61[1];

    v74 = sub_1D4E6835C(v72, v73, v117);

    *(v71 + 4) = v74;
    *(v71 + 12) = 2082;
    sub_1D4E69970(v67, v92, &qword_1EC7EF790, &qword_1D5632E90);
    v75 = sub_1D5614DB8();
    v76 = v67;
    v77 = v75;
    v79 = v78;
    sub_1D4E50004(v76, &qword_1EC7EF790, &qword_1D5632E90);
    v80 = sub_1D4E6835C(v77, v79, v117);

    *(v71 + 14) = v80;
    *(v71 + 22) = 2050;
    v81 = v115;
    *(v71 + 24) = v115;
    _os_log_impl(&dword_1D4E3F000, v69, v70, "MusicSuggestedPivotsViewModel (%{public}s): Init with seed=%{public}s, limit=%{public}ld.", v71, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_122();
  }

  else
  {

    sub_1D4E50004(v67, &qword_1EC7EF790, &qword_1D5632E90);
    v81 = v115;
  }

  v82 = v114;
  sub_1D4E69970(v68, v114, &qword_1EC7EF790, &qword_1D5632E90);
  if (__swift_getEnumTagSinglePayload(v82, 1, v116) == 1)
  {
    sub_1D4E50004(v68, &qword_1EC7EF790, &qword_1D5632E90);
    sub_1D4E50004(v82, &qword_1EC7EF790, &qword_1D5632E90);
  }

  else
  {
    OUTLINED_FUNCTION_16_37();
    v83 = v98;
    sub_1D50C1544(v82, v98);
    OUTLINED_FUNCTION_15_39();
    v84 = v90;
    sub_1D50C12F0(v83, v90);
    v85 = v89;
    swift_storeEnumTagMultiPayload();
    __swift_storeEnumTagSinglePayload(v84, 0, 1, v85);
    v86 = v95;
    sub_1D560C8B8();
    sub_1D4E50004(v68, &qword_1EC7EF790, &qword_1D5632E90);
    OUTLINED_FUNCTION_1_71();
    sub_1D50C1348(v83, v87);
    v88 = v93;
    OUTLINED_FUNCTION_54_0(v52 + v93, v117);
    (*(v96 + 40))(v52 + v88, v86, v97);
    swift_endAccess();
  }

  *(v52 + 16) = v81;
  OUTLINED_FUNCTION_46();
}

uint64_t MusicSuggestedPivotsViewModel.deinit()
{
  v1 = v0;
  if (qword_1EC7E90C0 != -1)
  {
    OUTLINED_FUNCTION_0_78(&qword_1EC7E90C0);
  }

  v2 = sub_1D560C758();
  __swift_project_value_buffer(v2, qword_1EC87C2E8);
  OUTLINED_FUNCTION_82();

  v3 = sub_1D560C738();
  v4 = sub_1D56156E8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_138_0();
    v16 = v6;
    *v5 = 136446210;
    v7 = OUTLINED_FUNCTION_27_25(OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id);
    *(v5 + 4) = sub_1D4E6835C(v7, v8, &v16);
    _os_log_impl(&dword_1D4E3F000, v3, v4, "MusicSuggestedPivotsViewModel (%{public}s): Deinit.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  v9 = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel__node;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7B0, &qword_1D5632EB0);
  OUTLINED_FUNCTION_14();
  (*(v10 + 8))(v1 + v9);
  v11 = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel__pivotEntries;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7A0, &unk_1D5632EA0);
  OUTLINED_FUNCTION_14();
  (*(v12 + 8))(v1 + v11);
  v13 = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel__status;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF798, &qword_1D5632E98);
  OUTLINED_FUNCTION_14();
  (*(v14 + 8))(v1 + v13);
  sub_1D4E50004(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_seed, &qword_1EC7EF790, &qword_1D5632E90);

  return v1;
}

uint64_t MusicSuggestedPivotsViewModel.__deallocating_deinit()
{
  MusicSuggestedPivotsViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1D50BC27C(uint64_t a1)
{
  v118 = a1;
  v1 = type metadata accessor for MusicSuggestedPivotEntry(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v110 = &v104 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF790, &qword_1D5632E90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v116 = &v104 - v4;
  v115 = type metadata accessor for MusicSuggestedPivotSeed(0);
  MEMORY[0x1EEE9AC00](v115);
  v108 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MusicSuggestedPivotNode(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v109 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v105 = &v104 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v107 = &v104 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v113 = &v104 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v117 = &v104 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v114 = &v104 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF880, qword_1D5633218);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v104 - v20;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7B8, &qword_1D5632EB8);
  v22 = MEMORY[0x1EEE9AC00](v112);
  v111 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v106 = &v104 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v104 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v104 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v104 - v32;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v34 = *(v19 + 56);
  v35 = v6;
  sub_1D4E69970(v118, v21, &qword_1EC7EF7B8, &qword_1D5632EB8);
  sub_1D4E69970(v33, &v21[v34], &qword_1EC7EF7B8, &qword_1D5632EB8);
  if (__swift_getEnumTagSinglePayload(v21, 1, v6) != 1)
  {
    sub_1D4E69970(v21, v31, &qword_1EC7EF7B8, &qword_1D5632EB8);
    if (__swift_getEnumTagSinglePayload(&v21[v34], 1, v6) != 1)
    {
      v55 = v114;
      sub_1D50C1544(&v21[v34], v114);
      v56 = static MusicSuggestedPivotNode.== infix(_:_:)(v31, v55);
      sub_1D50C1348(v55, type metadata accessor for MusicSuggestedPivotNode);
      sub_1D4E50004(v33, &qword_1EC7EF7B8, &qword_1D5632EB8);
      sub_1D50C1348(v31, type metadata accessor for MusicSuggestedPivotNode);
      v35 = v6;
      sub_1D4E50004(v21, &qword_1EC7EF7B8, &qword_1D5632EB8);
      v37 = v119;
      if (v56)
      {
        goto LABEL_15;
      }

LABEL_7:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1D560C8F8();

      if (__swift_getEnumTagSinglePayload(v28, 1, v35) == 1)
      {
        sub_1D4E50004(v28, &qword_1EC7EF7B8, &qword_1D5632EB8);
        v38 = v116;
        __swift_storeEnumTagSinglePayload(v116, 1, 1, v115);
        sub_1D50BEE24();
        sub_1D4E50004(v38, &qword_1EC7EF790, &qword_1D5632E90);
        return;
      }

      v39 = v117;
      sub_1D50C1544(v28, v117);
      v40 = v39;
      v41 = v113;
      sub_1D50C12F0(v40, v113);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v42 = v110;
        sub_1D50C1544(v41, v110);
        if (qword_1EC7E90C0 != -1)
        {
          swift_once();
        }

        v43 = sub_1D560C758();
        __swift_project_value_buffer(v43, qword_1EC87C2E8);
        v44 = v105;
        sub_1D50C12F0(v117, v105);

        v45 = sub_1D560C738();
        v46 = sub_1D56156E8();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v121[0] = v119;
          *v47 = 136446466;
          *(v47 + 4) = sub_1D4E6835C(*(v37 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id), *(v37 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id + 8), v121);
          *(v47 + 12) = 2082;
          v48 = v44;
          sub_1D50C12F0(v44, v114);
          v49 = sub_1D5614DB8();
          v50 = v35;
          v52 = v51;
          sub_1D50C1348(v48, type metadata accessor for MusicSuggestedPivotNode);
          v53 = sub_1D4E6835C(v49, v52, v121);
          v35 = v50;

          *(v47 + 14) = v53;
          _os_log_impl(&dword_1D4E3F000, v45, v46, "MusicSuggestedPivotsViewModel (%{public}s): Did set new node=%{public}s.", v47, 0x16u);
          v54 = v119;
          swift_arrayDestroy();
          MEMORY[0x1DA6ED200](v54, -1, -1);
          MEMORY[0x1DA6ED200](v47, -1, -1);
        }

        else
        {

          sub_1D50C1348(v44, type metadata accessor for MusicSuggestedPivotNode);
        }

        v76 = v106;
        sub_1D4E69970(v118, v106, &qword_1EC7EF7B8, &qword_1D5632EB8);
        if (__swift_getEnumTagSinglePayload(v76, 1, v35) == 1)
        {
          sub_1D4E50004(v76, &qword_1EC7EF7B8, &qword_1D5632EB8);
          LOBYTE(v121[0]) = 1;
          sub_1D50BDDF8(v121);

          v77 = sub_1D560C738();
          v78 = sub_1D56156C8();

          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            v121[0] = v80;
            *v79 = 136446210;
            *(v79 + 4) = sub_1D4E6835C(*(v37 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id), *(v37 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id + 8), v121);
            _os_log_impl(&dword_1D4E3F000, v77, v78, "MusicSuggestedPivotsViewModel (%{public}s): Failed to update offered pivot rounds. Setting a pivot entry as node with no previous node.", v79, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v80);
            MEMORY[0x1DA6ED200](v80, -1, -1);
            MEMORY[0x1DA6ED200](v79, -1, -1);
          }

          sub_1D50C1348(v117, type metadata accessor for MusicSuggestedPivotNode);
          v81 = type metadata accessor for MusicSuggestedPivotEntry;
          v82 = v42;
          goto LABEL_35;
        }

        v84 = v109;
        sub_1D50C1544(v76, v109);
        v85 = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_offeredPivotRounds;
        v86 = swift_beginAccess();
        v87 = *(v37 + v85);
        MEMORY[0x1EEE9AC00](v86);
        *(&v104 - 2) = v84;
        *(&v104 - 1) = v42;

        v88 = sub_1D50BB22C(sub_1D50C159C, (&v104 - 4), v87);

        *(v37 + v85) = v88;

        v89 = sub_1D560C738();
        v90 = sub_1D56156E8();

        if (os_log_type_enabled(v89, v90))
        {
          v91 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v120[0] = v92;
          *v91 = 136446466;
          *(v91 + 4) = sub_1D4E6835C(*(v37 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id), *(v37 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id + 8), v120);
          *(v91 + 12) = 2082;
          swift_getKeyPath();
          swift_getKeyPath();
          sub_1D560C8F8();

          v93 = sub_1D5614DB8();
          v95 = sub_1D4E6835C(v93, v94, v120);

          *(v91 + 14) = v95;
          _os_log_impl(&dword_1D4E3F000, v89, v90, "MusicSuggestedPivotsViewModel (%{public}s): Fetching pivots for node=%{public}s.", v91, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1DA6ED200](v92, -1, -1);
          MEMORY[0x1DA6ED200](v91, -1, -1);
        }

        sub_1D50C1348(v109, type metadata accessor for MusicSuggestedPivotNode);
        v83 = type metadata accessor for MusicSuggestedPivotEntry;
      }

      else
      {
        v42 = v108;
        sub_1D50C1544(v41, v108);
        v65 = v116;
        sub_1D50C12F0(v42, v116);
        __swift_storeEnumTagSinglePayload(v65, 0, 1, v115);
        sub_1D50BEE24();
        sub_1D4E50004(v65, &qword_1EC7EF790, &qword_1D5632E90);
        if (qword_1EC7E90C0 != -1)
        {
          swift_once();
        }

        v66 = sub_1D560C758();
        __swift_project_value_buffer(v66, qword_1EC87C2E8);
        v67 = v107;
        sub_1D50C12F0(v117, v107);

        v68 = sub_1D560C738();
        v69 = sub_1D56156E8();

        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v121[0] = v71;
          *v70 = 136446466;
          *(v70 + 4) = sub_1D4E6835C(*(v37 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id), *(v37 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id + 8), v121);
          *(v70 + 12) = 2082;
          sub_1D50C12F0(v67, v114);
          v72 = sub_1D5614DB8();
          v74 = v73;
          sub_1D50C1348(v67, type metadata accessor for MusicSuggestedPivotNode);
          v75 = sub_1D4E6835C(v72, v74, v121);

          *(v70 + 14) = v75;
          _os_log_impl(&dword_1D4E3F000, v68, v69, "MusicSuggestedPivotsViewModel (%{public}s): Fetching initial set of pivots for node=%{public}s.", v70, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1DA6ED200](v71, -1, -1);
          MEMORY[0x1DA6ED200](v70, -1, -1);
        }

        else
        {

          sub_1D50C1348(v67, type metadata accessor for MusicSuggestedPivotNode);
        }

        v83 = type metadata accessor for MusicSuggestedPivotSeed;
      }

      sub_1D50C1348(v42, v83);
      v96 = v117;
      sub_1D50BF158(v117, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115);
      v81 = type metadata accessor for MusicSuggestedPivotNode;
      v82 = v96;
LABEL_35:
      sub_1D50C1348(v82, v81);
      return;
    }

    sub_1D4E50004(v33, &qword_1EC7EF7B8, &qword_1D5632EB8);
    sub_1D50C1348(v31, type metadata accessor for MusicSuggestedPivotNode);
    v37 = v119;
LABEL_6:
    sub_1D4E50004(v21, &qword_1EC7EF880, qword_1D5633218);
    goto LABEL_7;
  }

  sub_1D4E50004(v33, &qword_1EC7EF7B8, &qword_1D5632EB8);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v21[v34], 1, v6);
  v37 = v119;
  if (EnumTagSinglePayload != 1)
  {
    goto LABEL_6;
  }

  sub_1D4E50004(v21, &qword_1EC7EF7B8, &qword_1D5632EB8);
LABEL_15:
  if (qword_1EC7E90C0 != -1)
  {
    swift_once();
  }

  v57 = sub_1D560C758();
  __swift_project_value_buffer(v57, qword_1EC87C2E8);

  v58 = sub_1D560C738();
  v59 = sub_1D56156E8();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v121[0] = v61;
    *v60 = 136446466;
    *(v60 + 4) = sub_1D4E6835C(*(v37 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id), *(v37 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id + 8), v121);
    *(v60 + 12) = 2082;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D560C8F8();

    v62 = sub_1D5614DB8();
    v64 = sub_1D4E6835C(v62, v63, v121);

    *(v60 + 14) = v64;
    _os_log_impl(&dword_1D4E3F000, v58, v59, "MusicSuggestedPivotsViewModel (%{public}s): Attempting to set the same node=%{public}s. Ignoring fetching new set of pivots.", v60, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v61, -1, -1);
    MEMORY[0x1DA6ED200](v60, -1, -1);
  }
}

void sub_1D50BD314(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = static MusicSuggestedPivotNode.== infix(_:_:)(a1, a2);
  sub_1D50C12F0(a1, a3);
  if (v5)
  {
    v6 = *(type metadata accessor for MusicSuggestedPivotRound(0) + 20);
    swift_isUniquelyReferenced_nonNull_native();
    v7 = *(a3 + v6);
    sub_1D4F145E4();
    *(a3 + v6) = v7;
  }
}

void sub_1D50BD3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = OUTLINED_FUNCTION_128();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  v27 = OUTLINED_FUNCTION_22(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_59_0();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4E69970(v23, v30, &qword_1EC7EF7B8, &qword_1D5632EB8);

  sub_1D560C908();
  sub_1D50BC27C(v33);
  sub_1D4E50004(v23, &qword_1EC7EF7B8, &qword_1D5632EB8);
  sub_1D4E50004(v33, &qword_1EC7EF7B8, &qword_1D5632EB8);
  OUTLINED_FUNCTION_46();
}

uint64_t (*sub_1D50BD524(void *a1))()
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7B8, &qword_1D5632EB8);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  a1[2] = __swift_coroFrameAllocStub(v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  return sub_1D50BD600;
}

uint64_t sub_1D50BD6B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF800, &qword_1D5632F08);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_3(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_21_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7B0, &qword_1D5632EB0);
  OUTLINED_FUNCTION_47_3(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_128();
  return v6(v5);
}

void (*sub_1D50BD7A0(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF800, &qword_1D5632F08);
  v3[4] = v4;
  OUTLINED_FUNCTION_69(v4);
  v3[5] = v5;
  v7 = *(v6 + 64);
  v3[6] = __swift_coroFrameAllocStub(v7);
  v3[7] = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_54_0(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel__node, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7B0, &qword_1D5632EB0);
  sub_1D560C8C8();
  swift_endAccess();
  return sub_1D50BD8B4;
}

void sub_1D50BD8B4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    v7 = OUTLINED_FUNCTION_46_1();
    v8(v7);
    sub_1D50BD6B4();
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1D50BD6B4();
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1D50BD9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_31();
  (*(v11 + 16))(v7, a1);
  return a7(v7);
}

uint64_t sub_1D50BDA80(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();
}

uint64_t sub_1D50BDAF0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7A8, &qword_1D5641DA0);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31();
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v5 + 16))(v1, a1, v3);

  sub_1D560C908();
  v7 = OUTLINED_FUNCTION_128();
  return v8(v7);
}

uint64_t sub_1D50BDC20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF870, &qword_1D5633208);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_3(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_21_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7A0, &unk_1D5632EA0);
  OUTLINED_FUNCTION_47_3(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_128();
  return v6(v5);
}

void *sub_1D50BDD0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D50BDD80();
  *a1 = v3;
  return result;
}

uint64_t sub_1D50BDD80()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();
}

uint64_t sub_1D50BDDF8(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t sub_1D50BDE84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF868, &qword_1D5633200);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_1_3(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_21_17();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF798, &qword_1D5632E98);
  OUTLINED_FUNCTION_47_3(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_128();
  return v6(v5);
}

void sub_1D50BDF70()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7B8, &qword_1D5632EB8);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40[-1] - v6;
  v8 = type metadata accessor for MusicSuggestedPivotNode(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1D4E50004(v7, &qword_1EC7EF7B8, &qword_1D5632EB8);
    if (qword_1EC7E90C0 != -1)
    {
      OUTLINED_FUNCTION_0_78(&qword_1EC7E90C0);
    }

    v13 = sub_1D560C758();
    __swift_project_value_buffer(v13, qword_1EC87C2E8);
    OUTLINED_FUNCTION_82();

    v14 = sub_1D560C738();
    v15 = sub_1D56156C8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_144();
      v41[0] = OUTLINED_FUNCTION_34_24();
      *v16 = 136446466;
      v17 = OUTLINED_FUNCTION_27_25(OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id);
      *(v16 + 4) = sub_1D4E6835C(v17, v18, v41);
      *(v16 + 12) = 2082;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1D560C8F8();

      v19 = sub_1D5614DB8();
      v21 = sub_1D4E6835C(v19, v20, v41);

      *(v16 + 14) = v21;
      OUTLINED_FUNCTION_45_18(&dword_1D4E3F000, v22, v23, "MusicSuggestedPivotsViewModel (%{public}s): Failed to find offered pivot entries for current node=%{public}s.");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_50();
    sub_1D50C1544(v7, v12);
    v24 = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_offeredPivotRounds;
    v25 = OUTLINED_FUNCTION_35_25(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_offeredPivotRounds);
    v26 = *(v1 + v24);
    MEMORY[0x1EEE9AC00](v25);
    *(&v39 - 2) = v12;
    *(&v39 - 1) = v3;

    v27 = sub_1D50BB22C(sub_1D50C09FC, (&v39 - 4), v26);

    *(v1 + v24) = v27;

    if (qword_1EC7E90C0 != -1)
    {
      OUTLINED_FUNCTION_0_78(&qword_1EC7E90C0);
    }

    v28 = sub_1D560C758();
    __swift_project_value_buffer(v28, qword_1EC87C2E8);
    OUTLINED_FUNCTION_82();

    v29 = sub_1D560C738();
    v30 = sub_1D56156E8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_144();
      v40[0] = OUTLINED_FUNCTION_34_24();
      *v31 = 136446466;
      v32 = OUTLINED_FUNCTION_27_25(OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id);
      *(v31 + 4) = sub_1D4E6835C(v32, v33, v40);
      *(v31 + 12) = 2082;
      v34 = type metadata accessor for MusicSuggestedPivotEntry(0);
      v35 = MEMORY[0x1DA6EAF70](v3, v34);
      v37 = sub_1D4E6835C(v35, v36, v40);

      *(v31 + 14) = v37;
      _os_log_impl(&dword_1D4E3F000, v29, v30, "MusicSuggestedPivotsViewModel (%{public}s): Did interact [impressed] pivot entries=%{public}s.", v31, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_83();
    }

    OUTLINED_FUNCTION_3_62();
    sub_1D50C1348(v12, v38);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D50BE3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for MusicSuggestedPivotEntry(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MusicSuggestedPivotRound(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((static MusicSuggestedPivotNode.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return sub_1D50C12F0(a1, a4);
  }

  v29 = a4;
  v30 = v4;
  sub_1D50C12F0(a1, v15);
  v16 = *(a3 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = *(v13 + 20);
    v19 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v20 = *(v10 + 72);
    v31 = *(a3 + 16);
    do
    {
      sub_1D50C12F0(v19 + v20 * v17, v12);
      v21 = *&v15[v18];
      if (*(v21 + 16) && (v22 = sub_1D4F0DDE0(v12), (v23 & 1) != 0))
      {
        for (i = 0; i != 4; ++i)
        {
          if (byte_1F50A2FA0[i + 32] == *(*(v21 + 56) + v22))
          {
            v25 = sub_1D525C410(1u, &unk_1F50A19B0);
            if ((v26 & 1) == 0 && i < v25)
            {
              swift_isUniquelyReferenced_nonNull_native();
              v32 = *&v15[v18];
              sub_1D4F145E4();
              sub_1D50C1348(v12, type metadata accessor for MusicSuggestedPivotEntry);
              *&v15[v18] = v32;
              goto LABEL_15;
            }

            break;
          }
        }

        sub_1D50C1348(v12, type metadata accessor for MusicSuggestedPivotEntry);
LABEL_15:
        v16 = v31;
      }

      else
      {
        sub_1D50C1348(v12, type metadata accessor for MusicSuggestedPivotEntry);
      }

      ++v17;
    }

    while (v17 != v16);
  }

  return sub_1D50C1544(v15, v29);
}

uint64_t sub_1D50BE6C4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB048, &unk_1D561DDF0);
  v2 = type metadata accessor for MusicSuggestedPivotEntry(0);
  OUTLINED_FUNCTION_69(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_1D561C050;
  OUTLINED_FUNCTION_8_46();
  sub_1D50C12F0(a1, v5 + v4);
  sub_1D50BDF70();
}

void sub_1D50BE79C()
{
  OUTLINED_FUNCTION_47();
  v1 = OUTLINED_FUNCTION_147();
  v45 = type metadata accessor for MusicSuggestedPivotEntry(v1);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_59_0();
  v44 = v3 - v4;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7B8, &qword_1D5632EB8);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  v12 = type metadata accessor for MusicSuggestedPivotNode(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1D4E50004(v11, &qword_1EC7EF7B8, &qword_1D5632EB8);
    if (qword_1EC7E90C0 != -1)
    {
      OUTLINED_FUNCTION_0_78(&qword_1EC7E90C0);
    }

    v17 = sub_1D560C758();
    __swift_project_value_buffer(v17, qword_1EC87C2E8);
    OUTLINED_FUNCTION_82();

    v18 = sub_1D560C738();
    v19 = sub_1D56156C8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_144();
      v47[0] = OUTLINED_FUNCTION_34_24();
      *v20 = 136446466;
      v21 = OUTLINED_FUNCTION_27_25(OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id);
      *(v20 + 4) = sub_1D4E6835C(v21, v22, v47);
      *(v20 + 12) = 2082;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1D560C8F8();

      v23 = sub_1D5614DB8();
      v25 = sub_1D4E6835C(v23, v24, v47);

      *(v20 + 14) = v25;
      OUTLINED_FUNCTION_45_18(&dword_1D4E3F000, v26, v27, "MusicSuggestedPivotsViewModel (%{public}s): Failed to find offered pivot entries for current node=%{public}s.");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_83();
      OUTLINED_FUNCTION_122();
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_50();
    sub_1D50C1544(v11, v16);
    v28 = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_offeredPivotRounds;
    v29 = OUTLINED_FUNCTION_35_25(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_offeredPivotRounds);
    v30 = *(v0 + v28);
    MEMORY[0x1EEE9AC00](v29);
    *(&v43 - 2) = v16;
    *(&v43 - 1) = v0;

    v31 = sub_1D50BB22C(sub_1D50C0A1C, (&v43 - 4), v30);

    *(v0 + v28) = v31;

    if (qword_1EC7E90C0 != -1)
    {
      OUTLINED_FUNCTION_0_78(&qword_1EC7E90C0);
    }

    v32 = sub_1D560C758();
    __swift_project_value_buffer(v32, qword_1EC87C2E8);
    OUTLINED_FUNCTION_8_46();
    sub_1D50C12F0(v0, v7);

    v33 = sub_1D560C738();
    v34 = sub_1D56156E8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_144();
      v46[0] = OUTLINED_FUNCTION_34_24();
      *v35 = 136446466;
      v36 = OUTLINED_FUNCTION_27_25(OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id);
      *(v35 + 4) = sub_1D4E6835C(v36, v37, v46);
      *(v35 + 12) = 2082;
      OUTLINED_FUNCTION_8_46();
      sub_1D50C12F0(v7, v44);
      v38 = sub_1D5614DB8();
      v40 = v39;
      OUTLINED_FUNCTION_20_42();
      v41 = sub_1D4E6835C(v38, v40, v46);

      *(v35 + 14) = v41;
      _os_log_impl(&dword_1D4E3F000, v33, v34, "MusicSuggestedPivotsViewModel (%{public}s): Did interact [previewed] pivot entry=%{public}s.", v35, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    else
    {

      OUTLINED_FUNCTION_20_42();
    }

    OUTLINED_FUNCTION_3_62();
    sub_1D50C1348(v16, v42);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D50BEC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MusicSuggestedPivotRound(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((static MusicSuggestedPivotNode.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return sub_1D50C12F0(a1, a4);
  }

  sub_1D50C12F0(a1, v10);
  v11 = *(v8 + 20);
  v12 = sub_1D4ED092C(a3, *&v10[v11]);
  if (v12 != 4)
  {
    v13 = sub_1D525C410(v12, &unk_1F50A19B0);
    if ((v14 & 1) == 0)
    {
      v15 = v13;
      v16 = sub_1D525C410(2u, &unk_1F50A19B0);
      if ((v17 & 1) == 0 && v15 < v16)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v20 = *&v10[v11];
        sub_1D4F145E4();
        *&v10[v11] = v20;
      }
    }
  }

  return sub_1D50C1544(v10, a4);
}

void sub_1D50BEE24()
{
  OUTLINED_FUNCTION_47();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7A8, &qword_1D5641DA0);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF790, &qword_1D5632E90);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_59_0();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  if (qword_1EC7E90C0 != -1)
  {
    OUTLINED_FUNCTION_0_78(&qword_1EC7E90C0);
  }

  v14 = sub_1D560C758();
  __swift_project_value_buffer(v14, qword_1EC87C2E8);
  sub_1D4E69970(v4, v13, &qword_1EC7EF790, &qword_1D5632E90);

  v15 = sub_1D560C738();
  v16 = sub_1D56156E8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_144();
    v28 = OUTLINED_FUNCTION_34_24();
    v30[0] = v28;
    *v17 = 136446466;
    v18 = OUTLINED_FUNCTION_27_25(OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id);
    *(v17 + 4) = sub_1D4E6835C(v18, v19, v30);
    *(v17 + 12) = 2082;
    v29 = v1;
    sub_1D4E69970(v13, v10, &qword_1EC7EF790, &qword_1D5632E90);
    v20 = sub_1D5614DB8();
    v22 = v21;
    sub_1D4E50004(v13, &qword_1EC7EF790, &qword_1D5632E90);
    v23 = sub_1D4E6835C(v20, v22, v30);

    *(v17 + 14) = v23;
    v1 = v29;
    _os_log_impl(&dword_1D4E3F000, v15, v16, "MusicSuggestedPivotsViewModel (%{public}s): Did set new seed=%{public}s.", v17, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_122();
  }

  else
  {

    sub_1D4E50004(v13, &qword_1EC7EF790, &qword_1D5632E90);
  }

  sub_1D4E69970(v4, v10, &qword_1EC7EF790, &qword_1D5632E90);
  v24 = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_seed;
  OUTLINED_FUNCTION_54_0(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_seed, v30);
  sub_1D50C14D4(v10, v2 + v24);
  swift_endAccess();
  v25 = (v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_sessionID);
  *v25 = 0;
  v25[1] = 0;

  v26 = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_offeredPivotRounds;
  OUTLINED_FUNCTION_35_25(v2 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_offeredPivotRounds);
  *(v2 + v26) = MEMORY[0x1E69E7CC0];

  type metadata accessor for MusicSuggestedPivotEntry(0);
  sub_1D50C09A4();
  sub_1D560D9F8();
  sub_1D50BDAF0(v1);
  OUTLINED_FUNCTION_46();
}

void sub_1D50BF158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v23 = OUTLINED_FUNCTION_147();
  v24 = type metadata accessor for MusicSuggestedPivotNode(v23);
  v25 = OUTLINED_FUNCTION_69(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v30 = &a9 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v31);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;
  v36 = *(v20 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id);
  v35 = *(v20 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id + 8);
  sub_1D5615458();
  v37 = OUTLINED_FUNCTION_41_23();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  v41 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_2_61();
  sub_1D50C12F0(v20, v30);
  sub_1D56153C8();

  v42 = sub_1D56153B8();
  v43 = (*(v27 + 80) + 40) & ~*(v27 + 80);
  v44 = (v29 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v46 = MEMORY[0x1E69E85E0];
  v45[2] = v42;
  v45[3] = v46;
  v45[4] = v41;
  OUTLINED_FUNCTION_6_50();
  sub_1D50C1544(v30, v47 + v43);
  v48 = (v45 + v44);
  *v48 = v36;
  v48[1] = v35;

  sub_1D51EC8B4(0, 0, v34, &unk_1D56331F0, v45);

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D50BF33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v7[13] = type metadata accessor for MusicSuggestedPivotNode(0);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  sub_1D56153C8();
  v7[16] = sub_1D56153B8();
  v9 = sub_1D5615338();
  v7[17] = v9;
  v7[18] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D50BF414, v9, v8);
}

uint64_t sub_1D50BF414()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59(v0[9] + 16, (v0 + 2));
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[20] = v2;
    *v2 = v0;
    v2[1] = sub_1D50BF50C;

    return sub_1D50BF954();
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v4();
  }
}

uint64_t sub_1D50BF50C()
{
  OUTLINED_FUNCTION_60();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  v2[21] = v0;

  if (v0)
  {
    v6 = v2[17];
    v7 = v2[18];
    v8 = sub_1D50BF684;
  }

  else
  {

    v6 = v2[17];
    v7 = v2[18];
    v8 = sub_1D50BF61C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1D50BF61C()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D50BF684()
{
  v30 = v0;
  v1 = v0[9];

  OUTLINED_FUNCTION_59(v1 + 16, (v0 + 5));
  if (swift_weakLoadStrong())
  {
    v28 = 0;
    sub_1D50BDDF8(&v28);
  }

  if (qword_1EC7E90C0 != -1)
  {
    OUTLINED_FUNCTION_0_78(&qword_1EC7E90C0);
  }

  v2 = v0[21];
  v3 = v0[15];
  v4 = v0[10];
  v5 = sub_1D560C758();
  __swift_project_value_buffer(v5, qword_1EC87C2E8);
  OUTLINED_FUNCTION_2_61();
  sub_1D50C12F0(v4, v3);

  v6 = v2;
  v7 = sub_1D560C738();
  v8 = sub_1D56156C8();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[21];
  v11 = v0[15];
  if (v9)
  {
    v12 = v0[14];
    v13 = v0[11];
    v14 = v0[12];
    v15 = OUTLINED_FUNCTION_138_0();
    v29 = swift_slowAlloc();
    *v15 = 136446722;
    *(v15 + 4) = sub_1D4E6835C(v13, v14, &v29);
    *(v15 + 12) = 2080;
    OUTLINED_FUNCTION_2_61();
    sub_1D50C12F0(v11, v12);
    v16 = sub_1D5614DB8();
    v18 = v17;
    OUTLINED_FUNCTION_3_62();
    sub_1D50C1348(v11, v19);
    v20 = sub_1D4E6835C(v16, v18, &v29);

    *(v15 + 14) = v20;
    *(v15 + 22) = 2082;
    v0[8] = v10;
    v21 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v22 = sub_1D5614DB8();
    v24 = sub_1D4E6835C(v22, v23, &v29);

    *(v15 + 24) = v24;
    _os_log_impl(&dword_1D4E3F000, v7, v8, "MusicSuggestedPivotsViewModel (%{public}s): Failed to fetch pivots for node=%s with error=%{public}s.", v15, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_122();
  }

  else
  {

    OUTLINED_FUNCTION_3_62();
    sub_1D50C1348(v11, v25);
  }

  OUTLINED_FUNCTION_55();

  return v26();
}

uint64_t sub_1D50BF954()
{
  OUTLINED_FUNCTION_60();
  v1[11] = v2;
  v1[12] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF858, &qword_1D56331D8);
  OUTLINED_FUNCTION_22(v3);
  v1[13] = OUTLINED_FUNCTION_127();
  v4 = type metadata accessor for MusicSuggestedPivotNode(0);
  OUTLINED_FUNCTION_22(v4);
  v1[14] = OUTLINED_FUNCTION_127();
  v5 = type metadata accessor for MusicSuggestedPivotRound(0);
  OUTLINED_FUNCTION_22(v5);
  v1[15] = OUTLINED_FUNCTION_127();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF7A8, &qword_1D5641DA0);
  v1[16] = v6;
  OUTLINED_FUNCTION_69(v6);
  v1[17] = v7;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v8 = type metadata accessor for MusicSuggestedPivotsResponse(0);
  v1[20] = v8;
  OUTLINED_FUNCTION_22(v8);
  v1[21] = OUTLINED_FUNCTION_127();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADD0, &qword_1D56331E0);
  OUTLINED_FUNCTION_22(v9);
  v1[22] = OUTLINED_FUNCTION_127();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB90, &qword_1D5621260);
  OUTLINED_FUNCTION_22(v10);
  v1[23] = OUTLINED_FUNCTION_127();
  v11 = type metadata accessor for MusicSuggestedPivotsRequest(0);
  v1[24] = v11;
  OUTLINED_FUNCTION_22(v11);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF790, &qword_1D5632E90);
  OUTLINED_FUNCTION_22(v12);
  v1[27] = OUTLINED_FUNCTION_127();
  v13 = type metadata accessor for MusicSuggestedPivotSeed(0);
  v1[28] = v13;
  OUTLINED_FUNCTION_22(v13);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  sub_1D56153C8();
  v1[31] = sub_1D56153B8();
  OUTLINED_FUNCTION_82();
  v15 = sub_1D5615338();
  v1[32] = v15;
  v1[33] = v14;

  return MEMORY[0x1EEE6DFA0](sub_1D50BFBD4, v15, v14);
}

uint64_t sub_1D50BFBD4()
{
  v50 = v0;
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[12];
  v4 = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_seed;
  OUTLINED_FUNCTION_59(v3 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_seed, (v0 + 2));
  sub_1D4E69970(v3 + v4, v1, &qword_1EC7EF790, &qword_1D5632E90);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v5 = v0[27];

    sub_1D4E50004(v5, &qword_1EC7EF790, &qword_1D5632E90);
    v47 = 1;
    sub_1D50BDDF8(&v47);
    if (qword_1EC7E90C0 != -1)
    {
      OUTLINED_FUNCTION_0_78(&qword_1EC7E90C0);
    }

    v6 = sub_1D560C758();
    __swift_project_value_buffer(v6, qword_1EC87C2E8);

    v7 = sub_1D560C738();
    v8 = sub_1D56156D8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[12];
      v10 = swift_slowAlloc();
      v11 = OUTLINED_FUNCTION_138_0();
      v48 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_1D4E6835C(*(v9 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id), *(v9 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id + 8), &v48);
      _os_log_impl(&dword_1D4E3F000, v7, v8, "MusicSuggestedPivotsViewModel (%{public}s): Attempting to fetch pivot without a seed.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    OUTLINED_FUNCTION_23_32();

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_16_5();

    __asm { BRAA            X1, X16 }
  }

  v15 = v0[29];
  v14 = v0[30];
  v16 = v0[28];
  v17 = v0[24];
  v18 = v0[25];
  v19 = v0[22];
  v20 = v0[12];
  OUTLINED_FUNCTION_16_37();
  sub_1D50C1544(v21, v14);
  v49 = 3;
  sub_1D50BDDF8(&v49);
  OUTLINED_FUNCTION_15_39();
  sub_1D50C12F0(v14, v15);
  v22 = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_sessionID;
  v0[34] = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_sessionID;
  v23 = (v20 + v22);
  v24 = v23[1];
  v46 = *v23;
  v25 = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_offeredPivotRounds;
  v0[35] = OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_offeredPivotRounds;
  OUTLINED_FUNCTION_59(v20 + v25, (v0 + 5));
  v26 = *(v20 + v25);
  *v18 = 0;
  *(v18 + 8) = 1;

  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  v27 = *(v17 + 24);
  sub_1D5613D28();
  OUTLINED_FUNCTION_14();
  (*(v28 + 16))(v18 + v27, v15);
  sub_1D4E69970(v15 + *(v16 + 20), v19, &qword_1EC7EADD0, &qword_1D56331E0);
  v29 = type metadata accessor for MusicSuggestedPivotContainer(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v29);
  v31 = v0[29];
  v32 = v0[22];
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_1_71();
    sub_1D50C1348(v31, v33);
    sub_1D4E50004(v32, &qword_1EC7EADD0, &qword_1D56331E0);
    v34 = 1;
  }

  else
  {
    sub_1D51FCAB8();
    OUTLINED_FUNCTION_1_71();
    sub_1D50C1348(v31, v35);
    sub_1D50C1348(v32, type metadata accessor for MusicSuggestedPivotContainer);
    v34 = 0;
  }

  v37 = v0[25];
  v36 = v0[26];
  v38 = v0[23];
  v39 = v0[24];
  v40 = v0[12];
  v41 = sub_1D5612478();
  __swift_storeEnumTagSinglePayload(v38, v34, 1, v41);
  sub_1D50C1280(v38, v37 + v39[7]);
  v42 = (v37 + v39[8]);
  *v42 = v46;
  v42[1] = v24;
  *(v37 + v39[9]) = v26;
  sub_1D50C1544(v37, v36);
  *v36 = *(v40 + 16);
  *(v36 + 8) = 0;
  v43 = swift_task_alloc();
  v0[36] = v43;
  *v43 = v0;
  v43[1] = sub_1D50C0098;
  OUTLINED_FUNCTION_16_5();

  return sub_1D55C2464();
}

uint64_t sub_1D50C0098()
{
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 296) = v0;

  v5 = *(v2 + 264);
  v6 = *(v2 + 256);
  if (v0)
  {
    v7 = sub_1D50C061C;
  }

  else
  {
    v7 = sub_1D50C01D0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

void sub_1D50C01D0()
{
  v1 = v0[34];
  v2 = v0[21];
  v46 = v0[20];
  v3 = v0[19];
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[14];
  v40 = v0[15];
  v41 = v0[35];
  v7 = v0[12];
  v43 = v0[13];
  v8 = v0[11];

  v44 = (v7 + v1);
  v9 = *(v5 + 16);
  v9(v3, v2, v4);
  sub_1D50BDAF0(v3);
  OUTLINED_FUNCTION_2_61();
  sub_1D50C12F0(v8, v6);
  v9(v3, v2, v4);
  sub_1D538677C(v6, v3, v40);
  OUTLINED_FUNCTION_54_0(v7 + v41, (v0 + 8));
  sub_1D50C12F0(v40, v43);
  sub_1D526CFB4(0, 0, v43);
  swift_endAccess();
  v10 = (v2 + *(v46 + 20));
  v11 = v10[1];
  *v44 = *v10;
  v44[1] = v11;

  v48 = 4;
  sub_1D50BDDF8(&v48);
  if (qword_1EC7E90C0 != -1)
  {
    OUTLINED_FUNCTION_0_78(&qword_1EC7E90C0);
  }

  v12 = sub_1D560C758();
  __swift_project_value_buffer(v12, qword_1EC87C2E8);
  v13 = OUTLINED_FUNCTION_71();
  (v9)(v13);

  v14 = sub_1D560C738();
  v15 = sub_1D56156E8();

  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[30];
  v18 = v0[26];
  v19 = v0[21];
  v21 = v0[17];
  v20 = v0[18];
  v23 = v0[15];
  v22 = v0[16];
  if (v16)
  {
    v47 = v0[30];
    v24 = v0[12];
    v45 = v0[21];
    v25 = OUTLINED_FUNCTION_144();
    v49 = OUTLINED_FUNCTION_34_24();
    *v25 = 136446466;
    *(v25 + 4) = sub_1D4E6835C(*(v24 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id), *(v24 + OBJC_IVAR____TtC16MusicKitInternal29MusicSuggestedPivotsViewModel_id + 8), &v49);
    *(v25 + 12) = 2082;
    sub_1D4E62A60(&qword_1EC7EF860, &qword_1EC7EF7A8, &qword_1D5641DA0, MEMORY[0x1E6975028]);
    v26 = sub_1D56160F8();
    v42 = v18;
    v28 = v27;
    (*(v21 + 8))(v20, v22);
    v29 = sub_1D4E6835C(v26, v28, &v49);

    *(v25 + 14) = v29;
    _os_log_impl(&dword_1D4E3F000, v14, v15, "MusicSuggestedPivotsViewModel (%{public}s): Pivot entries updated %{public}s.", v25, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();

    OUTLINED_FUNCTION_18_38();
    sub_1D50C1348(v23, v30);
    OUTLINED_FUNCTION_17_35();
    sub_1D50C1348(v45, v31);
    OUTLINED_FUNCTION_7_51();
    sub_1D50C1348(v42, v32);
    OUTLINED_FUNCTION_1_71();
    v34 = v47;
  }

  else
  {

    (*(v21 + 8))(v20, v22);
    OUTLINED_FUNCTION_18_38();
    sub_1D50C1348(v23, v35);
    OUTLINED_FUNCTION_17_35();
    sub_1D50C1348(v19, v36);
    OUTLINED_FUNCTION_7_51();
    sub_1D50C1348(v18, v37);
    OUTLINED_FUNCTION_1_71();
    v34 = v17;
  }

  sub_1D50C1348(v34, v33);
  OUTLINED_FUNCTION_23_32();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_16_5();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1D50C061C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 208);

  OUTLINED_FUNCTION_7_51();
  sub_1D50C1348(v2, v3);
  OUTLINED_FUNCTION_1_71();
  sub_1D50C1348(v1, v4);

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D50C0744@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MusicSuggestedPivotsViewModel(0);
  result = sub_1D560C838();
  *a2 = result;
  return result;
}

BOOL static MusicSuggestedPivotsViewModel.Status.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 2:
      return v3 == 2;
    case 3:
      return v3 == 3;
    case 4:
      return v3 == 4;
  }

  if ((v3 - 2) < 3)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

uint64_t MusicSuggestedPivotsViewModel.Status.hash(into:)()
{
  v1 = *v0;
  v2 = v1 - 2;
  if ((v1 - 2) >= 3)
  {
    MEMORY[0x1DA6EC0D0](3);
    v2 = v1 & 1;
  }

  return MEMORY[0x1DA6EC0D0](v2);
}

uint64_t MusicSuggestedPivotsViewModel.Status.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  v2 = v1 - 2;
  if ((v1 - 2) >= 3)
  {
    MEMORY[0x1DA6EC0D0](3);
    v2 = v1 & 1;
  }

  MEMORY[0x1DA6EC0D0](v2);
  return sub_1D5616328();
}

uint64_t sub_1D50C08C0(uint64_t a1)
{
  sub_1D56162D8();
  MusicSuggestedPivotsViewModel.Status.hash(into:)();
  return sub_1D5616328();
}

uint64_t MusicSuggestedPivotsViewModel.LoadingError.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t sub_1D50C09A4()
{
  result = qword_1EC7EF7D0;
  if (!qword_1EC7EF7D0)
  {
    type metadata accessor for MusicSuggestedPivotEntry(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF7D0);
  }

  return result;
}

unint64_t sub_1D50C0A40()
{
  result = qword_1EC7EF808;
  if (!qword_1EC7EF808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF808);
  }

  return result;
}

unint64_t sub_1D50C0ADC()
{
  result = qword_1EC7EF820;
  if (!qword_1EC7EF820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF820);
  }

  return result;
}

uint64_t type metadata accessor for MusicSuggestedPivotsViewModel(uint64_t a1)
{
  result = qword_1EC7EF828;
  if (!qword_1EC7EF828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D50C0B84(uint64_t a1)
{
  sub_1D4FE1C04(319, &qword_1EC7EF838, &qword_1EC7EF7B8, &qword_1D5632EB8);
  if (v1 <= 0x3F)
  {
    sub_1D4FE1C04(319, &qword_1EC7EF840, &qword_1EC7EF7A8, &qword_1D5641DA0);
    if (v2 <= 0x3F)
    {
      sub_1D50C0F44();
      if (v3 <= 0x3F)
      {
        sub_1D50C0F94(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of MusicSuggestedPivotsViewModel.didImpress(_:)()
{
  return (*(*v0 + 368))();
}

{
  return (*(*v0 + 376))();
}

void sub_1D50C0F44()
{
  if (!qword_1EC7EF848)
  {
    v0 = sub_1D560C928();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7EF848);
    }
  }
}

void sub_1D50C0F94(uint64_t a1)
{
  if (!qword_1EC7EF850)
  {
    type metadata accessor for MusicSuggestedPivotSeed(255);
    v1 = sub_1D56158D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC7EF850);
    }
  }
}

unsigned __int8 *getEnumTagSinglePayload for MusicSuggestedPivotsViewModel.Status(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 2)
    {
      v7 = v6 - 1;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 4)
    {
      return (v7 - 3);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 4;
    if (a2 + 4 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 4);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicSuggestedPivotsViewModel.Status(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFC)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFB)
  {
    v7 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D50C1170(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D50C1184(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicSuggestedPivotsViewModel.LoadingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D50C1280(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAB90, &qword_1D5621260);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D50C12F0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v4(v3);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return a2;
}

uint64_t sub_1D50C1348(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D50C13A0(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for MusicSuggestedPivotNode(0);
  OUTLINED_FUNCTION_69(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = (v1 + ((*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1D4F22570;

  return sub_1D50BF33C(a1, v9, v10, v11, v1 + v7, v13, v14);
}

uint64_t sub_1D50C14D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF790, &qword_1D5632E90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D50C1544(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v4(v3);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_20_42()
{

  return sub_1D50C1348(v0, type metadata accessor for MusicSuggestedPivotEntry);
}

uint64_t OUTLINED_FUNCTION_34_24()
{

  return swift_slowAlloc();
}

uint64_t type metadata accessor for StorePlatformUploadedAudio(uint64_t a1)
{
  result = qword_1EDD550E8;
  if (!qword_1EDD550E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D50C169C(uint64_t a1)
{
  sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD531B0, &qword_1EC7EA760, &unk_1D56222B0);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD53248, &qword_1EC7EF388, &unk_1D5631100);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_1D4E518A0(319, &qword_1EDD52708, MEMORY[0x1E69E6530]);
    if (v7 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD52910, &qword_1EC7EC9B8, &unk_1D56222D0);
    if (v8 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
    if (v9 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
    if (v10 > 0x3F)
    {
      return v4;
    }

    sub_1D4E518A0(319, &qword_1EDD5F550, MEMORY[0x1E69E6370]);
    if (v12 > 0x3F)
    {
      return v11;
    }

    sub_1D500A1D4(319);
    if (v13 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t sub_1D50C18F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v73 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v72 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v72 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v72 - v15;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF890, &qword_1D5633378);
  OUTLINED_FUNCTION_4();
  v18 = v17;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v72 - v20;
  v78 = type metadata accessor for StorePlatformUploadedAudio(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_0();
  v76 = a1;
  v77 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D50C4164();
  v74 = v21;
  sub_1D5616398();
  if (v2)
  {
    v79 = v2;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    OUTLINED_FUNCTION_6_51();
  }

  else
  {
    v72 = v8;
    LOBYTE(v80) = 0;
    v28 = v74;
    v24 = sub_1D5615F38();
    v33 = v77;
    *v77 = v24;
    v33[1] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    LOBYTE(v80) = 1;
    sub_1D4F886BC();
    sub_1D5615F78();
    v27 = v18;
    v35 = v78;
    sub_1D4F39A1C(v16, v33 + v78[5], &qword_1EC7EB5B8, &unk_1D56206A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
    LOBYTE(v80) = 2;
    sub_1D50C41B8();
    sub_1D5615F78();
    sub_1D4F39A1C(v12, v33 + v35[6], &qword_1EC7EF380, &unk_1D5677480);
    OUTLINED_FUNCTION_26_30(3);
    v36 = sub_1D5615F38();
    v37 = (v33 + v35[7]);
    *v37 = v36;
    v37[1] = v38;
    OUTLINED_FUNCTION_26_30(4);
    v39 = sub_1D5615F68();
    v40 = v33 + v35[8];
    *v40 = v39;
    v40[8] = v41 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    v83 = 5;
    sub_1D4F887A4();
    OUTLINED_FUNCTION_12_8();
    *(v33 + v35[9]) = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v83 = 6;
    sub_1D50C44B0(&qword_1EDD528F8);
    OUTLINED_FUNCTION_12_8();
    *(v33 + v35[10]) = v80;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v83 = 7;
    sub_1D50C42A0(&qword_1EDD52908);
    OUTLINED_FUNCTION_12_8();
    v3 = 0;
    *(v33 + v35[11]) = v80;
    v83 = 8;
    sub_1D4F89C9C();
    sub_1D5615FD8();
    v79 = 0;
    v42 = v81;
    v43 = (v33 + v35[12]);
    *v43 = v80;
    v43[1] = v42;
    OUTLINED_FUNCTION_26_30(9);
    v44 = v79;
    v45 = sub_1D5615F48();
    v79 = v44;
    if (!v44)
    {
      *(v77 + v78[13]) = v45;
      OUTLINED_FUNCTION_8_47(10);
      v46 = sub_1D5615F38();
      v79 = 0;
      v50 = (v77 + v78[14]);
      *v50 = v46;
      v50[1] = v51;
      OUTLINED_FUNCTION_8_47(11);
      v52 = sub_1D5615F38();
      v79 = 0;
      v54 = (v77 + v78[15]);
      *v54 = v52;
      v54[1] = v53;
      sub_1D560C0A8();
      LOBYTE(v80) = 12;
      OUTLINED_FUNCTION_0_79();
      sub_1D50C4660(v55);
      v28 = v74;
      v56 = v79;
      sub_1D5615F78();
      v82 = v56 == 0;
      v79 = v56;
      if (!v56)
      {
        sub_1D4F39A1C(v72, v77 + v78[16], &unk_1EC7E9CA8, &unk_1D561D1D0);
        OUTLINED_FUNCTION_8_47(13);
        v57 = sub_1D5615F48();
        v79 = 0;
        *(v77 + v78[17]) = v57;
        OUTLINED_FUNCTION_8_47(14);
        v58 = sub_1D5615F38();
        v79 = 0;
        v62 = (v77 + v78[18]);
        *v62 = v58;
        v62[1] = v63;
        OUTLINED_FUNCTION_8_47(15);
        v64 = sub_1D5615F38();
        v79 = 0;
        v65 = v64;
        v67 = v66;
        v68 = OUTLINED_FUNCTION_29_26();
        v69(v68);
        v70 = v77;
        v71 = (v77 + v78[19]);
        *v71 = v65;
        v71[1] = v67;
        sub_1D50C4308(v70, v73);
        __swift_destroy_boxed_opaque_existential_1(v76);
        return sub_1D50C436C(v70);
      }

      v59 = OUTLINED_FUNCTION_29_26();
      v60(v59);
      __swift_destroy_boxed_opaque_existential_1(v76);
      OUTLINED_FUNCTION_3_63();
      LODWORD(v74) = v61;
      LODWORD(v75) = v61;
      v32 = 1;
      v29 = v77;
      v30 = v78;
LABEL_6:

      if (v26)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }

    v47 = OUTLINED_FUNCTION_29_26();
    v48(v47);
    LODWORD(v75) = 0;
    v25 = 1;
    OUTLINED_FUNCTION_3_63();
    LODWORD(v74) = v49;
  }

  v29 = v77;
  v30 = v78;
  result = __swift_destroy_boxed_opaque_existential_1(v76);
  if (v25)
  {
    v32 = 0;
    v82 = 0;
    goto LABEL_6;
  }

  v82 = 0;
  v32 = 0;
  if (v26)
  {
LABEL_7:
    result = sub_1D4E50004(v29 + v30[5], &qword_1EC7EB5B8, &unk_1D56206A0);
    if ((v27 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  if (!v27)
  {
LABEL_8:
    if (v28)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = sub_1D4E50004(v29 + v30[6], &qword_1EC7EF380, &unk_1D5677480);
  if (v28)
  {
LABEL_9:
    result = OUTLINED_FUNCTION_46_4();
    if ((v3 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  if (!v3)
  {
LABEL_10:
    if (v16)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:

  if (v16)
  {
LABEL_11:

    if ((v73 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  if (!v73)
  {
LABEL_12:
    if (v74)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:

  if (v74)
  {
LABEL_13:
    result = OUTLINED_FUNCTION_46_4();
    if ((v75 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  if (!v75)
  {
LABEL_14:
    if (v32)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = OUTLINED_FUNCTION_46_4();
  if (v32)
  {
LABEL_15:
    result = OUTLINED_FUNCTION_46_4();
    if (!v82)
    {
      return result;
    }

    return sub_1D4E50004(v29 + v30[16], &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

LABEL_26:
  if (v82)
  {
    return sub_1D4E50004(v29 + v30[16], &unk_1EC7E9CA8, &unk_1D561D1D0);
  }

  return result;
}

uint64_t sub_1D50C22B0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF8A0, &unk_1D5633380);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39[-1] - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D50C4164();
  sub_1D56163D8();
  LOBYTE(v39[0]) = 0;
  OUTLINED_FUNCTION_29_0();
  sub_1D5616028();
  if (!v2)
  {
    v11 = type metadata accessor for StorePlatformUploadedAudio(0);
    v12 = v11[5];
    LOBYTE(v39[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    v13 = sub_1D4F7CD24();
    OUTLINED_FUNCTION_21_0(v3 + v12, v39, v14, v15, v13);
    v16 = v11[6];
    LOBYTE(v39[0]) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
    v17 = sub_1D50C43C8();
    OUTLINED_FUNCTION_21_0(v3 + v16, v39, v18, v19, v17);
    OUTLINED_FUNCTION_35_5(v11[7]);
    OUTLINED_FUNCTION_1_72(3);
    sub_1D5616028();
    OUTLINED_FUNCTION_1_72(4);
    sub_1D5616058();
    v39[0] = *(v3 + v11[9]);
    v40 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    v20 = sub_1D4F7CE0C();
    OUTLINED_FUNCTION_21_0(v39, &v40, v21, v22, v20);
    v39[0] = *(v3 + v11[10]);
    v40 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v23 = sub_1D50C44B0(&qword_1EC7EC9D8);
    OUTLINED_FUNCTION_21_0(v39, &v40, v24, v25, v23);
    v39[0] = *(v3 + v11[11]);
    v40 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v26 = sub_1D50C42A0(&qword_1EC7EC9F0);
    OUTLINED_FUNCTION_21_0(v39, &v40, v27, v28, v26);
    v29 = (v3 + v11[12]);
    v31 = *v29;
    v30 = v29[1];
    v39[0] = v31;
    v39[1] = v30;
    v40 = 8;
    sub_1D4F89BA0();
    OUTLINED_FUNCTION_29_0();
    sub_1D56160C8();
    LOBYTE(v39[0]) = 9;
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    OUTLINED_FUNCTION_35_5(v11[14]);
    OUTLINED_FUNCTION_1_72(10);
    sub_1D5616028();
    OUTLINED_FUNCTION_35_5(v11[15]);
    OUTLINED_FUNCTION_1_72(11);
    sub_1D5616028();
    v32 = v11[16];
    LOBYTE(v39[0]) = 12;
    sub_1D560C0A8();
    OUTLINED_FUNCTION_0_79();
    v34 = sub_1D50C4660(v33);
    OUTLINED_FUNCTION_21_0(v3 + v32, v39, v35, v36, v34);
    LOBYTE(v39[0]) = 13;
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    OUTLINED_FUNCTION_35_5(v11[18]);
    OUTLINED_FUNCTION_1_72(14);
    sub_1D5616028();
    OUTLINED_FUNCTION_35_5(v11[19]);
    OUTLINED_FUNCTION_1_72(15);
    sub_1D5616028();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1D50C2744(void *a1, void *a2)
{
  v4 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v158 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v157 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v160 = v10;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v161 = v12;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
  OUTLINED_FUNCTION_4();
  v165 = v13;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v163 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  v164 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF8B0, &unk_1D5633390);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v166 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v24 = v23;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v154 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v28);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v154 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v154 - v34;
  v36 = a1[1];
  v37 = a2[1];
  if (v36)
  {
    if (!v37)
    {
      return 0;
    }

    v38 = *a1 == *a2 && v36 == v37;
    if (!v38 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v37)
  {
    return 0;
  }

  v154 = v4;
  v39 = type metadata accessor for StorePlatformUploadedAudio(0);
  v162 = a2;
  v40 = *(v39 + 20);
  v41 = *(v32 + 48);
  v155 = v39;
  v156 = a1;
  sub_1D4F39AB0(a1 + v40, v35, &qword_1EC7EB5B8, &unk_1D56206A0);
  sub_1D4F39AB0(v162 + v40, &v35[v41], &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v35, 1, v22);
  if (v38)
  {
    OUTLINED_FUNCTION_57(&v35[v41], 1, v22);
    if (v38)
    {
      sub_1D4E50004(v35, &qword_1EC7EB5B8, &unk_1D56206A0);
      goto LABEL_20;
    }

LABEL_18:
    v45 = &qword_1EC7EC330;
    v46 = &qword_1D56222C0;
    v47 = v35;
LABEL_29:
    sub_1D4E50004(v47, v45, v46);
    return 0;
  }

  sub_1D4F39AB0(v35, v31, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(&v35[v41], 1, v22);
  if (v42)
  {
    v43 = OUTLINED_FUNCTION_71();
    v44(v43);
    goto LABEL_18;
  }

  (*(v24 + 32))(v27, &v35[v41], v22);
  sub_1D50C4518(&qword_1EC7EBEB8);
  v48 = sub_1D5614D18();
  v49 = *(v24 + 8);
  v49(v27, v22);
  v50 = OUTLINED_FUNCTION_71();
  (v49)(v50);
  sub_1D4E50004(v35, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v48 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  v52 = v155;
  v51 = v156;
  v53 = *(v19 + 48);
  v54 = v166;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v55, v56, v57, v58);
  v59 = v162;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v60, v61, v62, v63);
  v64 = v167;
  OUTLINED_FUNCTION_57(v54, 1, v167);
  if (v38)
  {
    OUTLINED_FUNCTION_57(v54 + v53, 1, v64);
    if (v38)
    {
      sub_1D4E50004(v54, &qword_1EC7EF380, &unk_1D5677480);
      goto LABEL_33;
    }

    goto LABEL_28;
  }

  v65 = v164;
  sub_1D4F39AB0(v54, v164, &qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_57(v54 + v53, 1, v64);
  if (v66)
  {
    (*(v165 + 8))(v65, v64);
LABEL_28:
    v45 = &qword_1EC7EF8B0;
    v46 = &unk_1D5633390;
    v47 = v54;
    goto LABEL_29;
  }

  v68 = v165;
  v69 = v54 + v53;
  v70 = v163;
  (*(v165 + 32))(v163, v69, v64);
  sub_1D50C4598(&qword_1EC7EF8B8);
  v71 = sub_1D5614D18();
  v72 = *(v68 + 8);
  v72(v70, v64);
  v72(v65, v64);
  sub_1D4E50004(v54, &qword_1EC7EF380, &unk_1D5677480);
  if ((v71 & 1) == 0)
  {
    return 0;
  }

LABEL_33:
  OUTLINED_FUNCTION_16_38();
  if (v75)
  {
    if (!v73)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v74);
    v78 = v38 && v76 == v77;
    if (!v78 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v73)
  {
    return 0;
  }

  v79 = v52[8];
  v80 = (v51 + v79);
  v81 = *(v51 + v79 + 8);
  v82 = (v59 + v79);
  v83 = *(v59 + v79 + 8);
  if (v81)
  {
    if (!v83)
    {
      return 0;
    }
  }

  else
  {
    if (*v80 != *v82)
    {
      LOBYTE(v83) = 1;
    }

    if (v83)
    {
      return 0;
    }
  }

  v84 = v52[9];
  v85 = *(v59 + v84);
  if (*(v51 + v84))
  {
    if (!v85)
    {
      return 0;
    }

    sub_1D4F2C07C();
    v87 = v86;

    if ((v87 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v85)
  {
    return 0;
  }

  v88 = v52[10];
  v89 = *(v59 + v88);
  if (*(v51 + v88))
  {
    if (!v89)
    {
      return 0;
    }

    sub_1D4F28F1C();
    v91 = v90;

    if ((v91 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v89)
  {
    return 0;
  }

  v92 = v52[11];
  v93 = *(v59 + v92);
  if (*(v51 + v92))
  {
    if (!v93)
    {
      return 0;
    }

    sub_1D4F29174();
    v95 = v94;

    if ((v95 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v93)
  {
    return 0;
  }

  v96 = v52[12];
  v97 = *(v51 + v96);
  v98 = *(v51 + v96 + 8);
  v99 = (v59 + v96);
  v100 = v97 == *v99 && v98 == v99[1];
  if (!v100 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v101 = v52[13];
  v102 = *(v51 + v101);
  v103 = *(v59 + v101);
  if (v102 == 2)
  {
    if (v103 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v103 == 2 || ((v103 ^ v102) & 1) != 0)
    {
      return result;
    }
  }

  OUTLINED_FUNCTION_16_38();
  if (v106)
  {
    if (!v104)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v105);
    v109 = v38 && v107 == v108;
    if (!v109 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v104)
  {
    return 0;
  }

  OUTLINED_FUNCTION_16_38();
  if (v112)
  {
    if (!v110)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v111);
    v115 = v38 && v113 == v114;
    if (!v115 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v110)
  {
    return 0;
  }

  v116 = *(v159 + 48);
  v117 = v161;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v118, v119, v120, v121);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v122, v123, v124, v125);
  OUTLINED_FUNCTION_57(v117, 1, v154);
  if (!v38)
  {
    v126 = v161;
    sub_1D4F39AB0(v161, v160, &unk_1EC7E9CA8, &unk_1D561D1D0);
    OUTLINED_FUNCTION_57(v126 + v116, 1, v154);
    if (!v127)
    {
      v129 = v157;
      v128 = v158;
      v130 = v161;
      v131 = v161 + v116;
      v132 = v154;
      (*(v158 + 32))(v157, v131, v154);
      OUTLINED_FUNCTION_0_79();
      sub_1D50C4660(v133);
      v134 = v160;
      v135 = sub_1D5614D18();
      v136 = *(v128 + 8);
      v136(v129, v132);
      v136(v134, v132);
      sub_1D4E50004(v130, &unk_1EC7E9CA8, &unk_1D561D1D0);
      if ((v135 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_101;
    }

    (*(v158 + 8))(v160, v154);
    goto LABEL_99;
  }

  OUTLINED_FUNCTION_57(v161 + v116, 1, v154);
  if (!v38)
  {
LABEL_99:
    v45 = &qword_1EC7E9FB0;
    v46 = &qword_1D562C590;
    v47 = v161;
    goto LABEL_29;
  }

  sub_1D4E50004(v161, &unk_1EC7E9CA8, &unk_1D561D1D0);
LABEL_101:
  v137 = v155[17];
  v138 = *(v156 + v137);
  v139 = *(v162 + v137);
  if (v138 == 2)
  {
    v140 = v162;
    v141 = v155;
    v142 = v156;
    if (v139 != 2)
    {
      return 0;
    }

    goto LABEL_106;
  }

  result = 0;
  if (v139 != 2)
  {
    v143 = v139 ^ v138;
    v140 = v162;
    v141 = v155;
    v142 = v156;
    if ((v143 & 1) == 0)
    {
LABEL_106:
      v144 = v141[18];
      v145 = *(v140 + v144 + 8);
      if (*(v142 + v144 + 8))
      {
        if (!v145)
        {
          return 0;
        }

        OUTLINED_FUNCTION_31_0(v142 + v144);
        v148 = v38 && v146 == v147;
        if (!v148 && (sub_1D5616168() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v145)
      {
        return 0;
      }

      v149 = v155[19];
      v150 = *(v162 + v149 + 8);
      if (*(v156 + v149 + 8))
      {
        if (v150)
        {
          OUTLINED_FUNCTION_31_0(v156 + v149);
          v153 = v38 && v151 == v152;
          if (v153 || (sub_1D5616168() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v150)
      {
        return 1;
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1D50C3290(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6B6F547465737361 && a2 == 0xEB00000000736E65;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65707954637561 && a2 == 0xE700000000000000;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x80000001D5680650 == a2;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 25705 && a2 == 0xE200000000000000;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x616C696176417369 && a2 == 0xEB00000000656C62;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 1684957547 && a2 == 0xE400000000000000;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 1701667182 && a2 == 0xE400000000000000;
                        if (v16 || (sub_1D5616168() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6C725574736F70 && a2 == 0xE700000000000000;
                          if (v17 || (sub_1D5616168() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000016 && 0x80000001D5681620 == a2;
                            if (v18 || (sub_1D5616168() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x614464616F6C7075 && a2 == 0xEA00000000006574;
                              if (v19 || (sub_1D5616168() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0xD000000000000013 && 0x80000001D5683C10 == a2)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_1D5616168();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
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

unint64_t sub_1D50C376C(char a1)
{
  result = 0x614E747369747261;
  switch(a1)
  {
    case 1:
      result = 0x6B726F77747261;
      break;
    case 2:
      result = 0x6B6F547465737361;
      break;
    case 3:
      result = 0x65707954637561;
      break;
    case 4:
      result = 0x6E6F697461727564;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x6169726F74696465;
      break;
    case 8:
      result = 25705;
      break;
    case 9:
      result = 0x616C696176417369;
      break;
    case 10:
      result = 1684957547;
      break;
    case 11:
      result = 1701667182;
      break;
    case 12:
      result = 0x6C725574736F70;
      break;
    case 13:
      result = 0xD000000000000016;
      break;
    case 14:
      result = 0x614464616F6C7075;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D50C3924(uint64_t a1)
{
  v2 = v1;
  v50 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v47 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v46 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v49 = v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF388, &unk_1D5631100);
  OUTLINED_FUNCTION_4();
  v45 = v9;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v44 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF380, &unk_1D5677480);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v18 = v17;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v43 - v24;
  if (*(v1 + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v26 = type metadata accessor for StorePlatformUploadedAudio(0);
  sub_1D4F39AB0(v1 + v26[5], v25, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v25, 1, v16);
  if (v27)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v18 + 32))(v21, v25, v16);
    OUTLINED_FUNCTION_27();
    sub_1D50C4518(&qword_1EC7EBE78);
    sub_1D5614CB8();
    (*(v18 + 8))(v21, v16);
  }

  sub_1D4F39AB0(v1 + v26[6], v15, &qword_1EC7EF380, &unk_1D5677480);
  v28 = v48;
  OUTLINED_FUNCTION_57(v15, 1, v48);
  if (v27)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v30 = v44;
    v29 = v45;
    (*(v45 + 32))(v44, v15, v28);
    OUTLINED_FUNCTION_27();
    v31 = sub_1D50C4598(&qword_1EC7EF8C8);
    OUTLINED_FUNCTION_28_5(v31);
    (*(v29 + 8))(v30, v28);
  }

  OUTLINED_FUNCTION_33_5();
  if (v28)
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v32 = (v1 + v26[8]);
  if (*(v32 + 8) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v33 = *v32;
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v33);
  }

  if (*(v1 + v26[9]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F35348();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v26[10]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v26[11]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D5614E28();
  v34 = *(v1 + v26[13]);
  if (v34 != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_33_5();
  if (v34)
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_33_5();
  if (v34)
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v35 = v49;
  sub_1D4F39AB0(v2 + v26[16], v49, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v36 = v50;
  OUTLINED_FUNCTION_57(v35, 1, v50);
  if (v27)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v38 = v46;
    v37 = v47;
    (*(v47 + 32))(v46, v35, v36);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_79();
    v40 = sub_1D50C4660(v39);
    OUTLINED_FUNCTION_28_5(v40);
    (*(v37 + 8))(v38, v36);
  }

  v41 = *(v2 + v26[17]);
  if (v41 != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_33_5();
  if (v41)
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (!*(v2 + v26[19] + 8))
  {
    return OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_24();
  return sub_1D5614E28();
}

uint64_t sub_1D50C3F84()
{
  sub_1D56162D8();
  sub_1D50C3924(v1);
  return sub_1D5616328();
}

uint64_t sub_1D50C3FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D50C3290(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D50C3FF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D50C3764();
  *a1 = result;
  return result;
}

uint64_t sub_1D50C401C(uint64_t a1)
{
  v2 = sub_1D50C4164();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50C4058(uint64_t a1)
{
  v2 = sub_1D50C4164();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50C40D0(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D50C3924(v2);
  return sub_1D5616328();
}

unint64_t sub_1D50C4164()
{
  result = qword_1EC7EF898;
  if (!qword_1EC7EF898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF898);
  }

  return result;
}

unint64_t sub_1D50C41B8()
{
  result = qword_1EDD53250;
  if (!qword_1EDD53250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF388, &unk_1D5631100);
    sub_1D50C4660(&unk_1EDD56B40);
    sub_1D50C4660(&unk_1EDD56B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53250);
  }

  return result;
}

unint64_t sub_1D50C42A0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v2();
    result = OUTLINED_FUNCTION_73_2();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D50C4308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformUploadedAudio(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D50C436C(uint64_t a1)
{
  v2 = type metadata accessor for StorePlatformUploadedAudio(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D50C43C8()
{
  result = qword_1EC7EF8A8;
  if (!qword_1EC7EF8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF388, &unk_1D5631100);
    sub_1D50C4660(&unk_1EDD56B40);
    sub_1D50C4660(&unk_1EDD56B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF8A8);
  }

  return result;
}

unint64_t sub_1D50C44B0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC480, &unk_1D56222E0);
    v2();
    result = OUTLINED_FUNCTION_73_2();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D50C4518(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D50C4660(v2);
    result = OUTLINED_FUNCTION_44_1();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D50C4598(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF388, &unk_1D5631100);
    sub_1D50C4660(v2);
    result = OUTLINED_FUNCTION_44_1();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D50C4618()
{
  v0 = sub_1D5610088();
  __swift_allocate_value_buffer(v0, qword_1EC87C098);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  return sub_1D560FF28();
}

unint64_t sub_1D50C4660(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorePlatformUploadedAudio.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StorePlatformUploadedAudio.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D50C480C()
{
  result = qword_1EC7EF8D8;
  if (!qword_1EC7EF8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF8D8);
  }

  return result;
}

unint64_t sub_1D50C4864()
{
  result = qword_1EC7EF8E0;
  if (!qword_1EC7EF8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF8E0);
  }

  return result;
}

unint64_t sub_1D50C48BC()
{
  result = qword_1EC7EF8E8;
  if (!qword_1EC7EF8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF8E8);
  }

  return result;
}

uint64_t type metadata accessor for CloudEditorialCard(uint64_t a1)
{
  result = qword_1EDD56900;
  if (!qword_1EDD56900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D50C4984(uint64_t a1)
{
  sub_1D50C4A80();
  if (v1 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD531D0, &qword_1EC7EC958, &unk_1D5622280);
    if (v2 <= 0x3F)
    {
      sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
      if (v3 <= 0x3F)
      {
        sub_1D4E6D600(319, &qword_1EDD528D0, &qword_1EC7EF8F0, &qword_1D5636520);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D50C4A80()
{
  if (!qword_1EDD56920[0])
  {
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, qword_1EDD56920);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for CloudEditorialCard.Kind(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D50C4B80()
{
  result = qword_1EC7EF8F8;
  if (!qword_1EC7EF8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF8F8);
  }

  return result;
}

uint64_t sub_1D50C4BD4(uint64_t a1)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDF8, &qword_1D5633700);
  OUTLINED_FUNCTION_14();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v39 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v33 - v5;
  v6 = type metadata accessor for EditorialCard(0);
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v46 = MEMORY[0x1E69E7CC0];
  sub_1D4F03A5C(0, v10, 0);
  v11 = v46;
  result = sub_1D5068458();
  v14 = result;
  v15 = a1 + 64;
  v16 = v10 - 1;
  v35 = a1 + 64;
  v36 = v9;
  v34 = a1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v14 < 1 << *(a1 + 32))
    {
      if ((*(v15 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_16;
      }

      if (v13 != *(a1 + 36))
      {
        goto LABEL_17;
      }

      v43 = 1 << v14;
      v44 = v14 >> 6;
      v41 = v16;
      v42 = v13;
      v17 = v40;
      v18 = *(v40 + 48);
      v19 = *(a1 + 56);
      v20 = (*(a1 + 48) + 16 * v14);
      v22 = *v20;
      v21 = v20[1];
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDE8, &unk_1D5623ED0);
      OUTLINED_FUNCTION_4();
      v45 = v11;
      v25 = v24;
      v27 = v38;
      (*(v24 + 16))(&v38[v18], v19 + *(v26 + 72) * v14, v23);
      v28 = v39;
      *v39 = v22;
      *(v28 + 8) = v21;
      v29 = *(v17 + 48);
      v30 = v36;
      (*(v25 + 32))(v28 + v29, &v27[v18], v23);
      v11 = v45;

      sub_1D50C69FC(v22, v21, v30);
      sub_1D4E50004(v28, &qword_1EC7EBDF8, &qword_1D5633700);
      v46 = v11;
      v32 = *(v11 + 16);
      v31 = *(v11 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1D4F03A5C(v31 > 1, v32 + 1, 1);
        v11 = v46;
      }

      *(v11 + 16) = v32 + 1;
      result = sub_1D50C6EAC(v30, v11 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v32);
      a1 = v34;
      v15 = v35;
      if (v14 >= -(-1 << *(v34 + 32)))
      {
        goto LABEL_18;
      }

      if ((*(v35 + 8 * v44) & v43) == 0)
      {
        goto LABEL_19;
      }

      if (v42 != *(v34 + 36))
      {
        goto LABEL_20;
      }

      result = sub_1D5615A18();
      if (!v41)
      {
        return v11;
      }

      v14 = result;
      v13 = *(a1 + 36);
      v16 = v41 - 1;
      if (result < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void *sub_1D50C4F58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v53 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v53 - v8;
  v65 = type metadata accessor for CloudEditorialCard(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v64 = (v12 - v11);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDE8, &unk_1D5623ED0);
  OUTLINED_FUNCTION_4();
  v14 = v13;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v53 - v16;
  v18 = type metadata accessor for EditorialCard(0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v22 = v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 16);
  if (v23)
  {
    v62 = v9;
    v24 = a1 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v53[1] = v14 + 40;
    v53[2] = v14 + 32;
    v25 = MEMORY[0x1E69E7CC8];
    v26 = v19[6];
    v59 = v19[7];
    v60 = v26;
    v27 = v19[8];
    v57 = v19[9];
    v58 = v27;
    v54 = *(v20 + 72);
    v55 = v14;
    v56 = v5;
    v61 = v17;
    while (1)
    {
      sub_1D50C6DF4(v24, v22, type metadata accessor for EditorialCard);
      v28 = *(v22 + 1);
      v66 = *v22;
      v67 = v28;
      v29 = v22[16];
      sub_1D4F1C460(&v22[v60], v5, &qword_1EC7EAC98, &unk_1D561DA80);
      v30 = sub_1D5610978();
      if (__swift_getEnumTagSinglePayload(v5, 1, v30) == 1)
      {
        sub_1D4E50004(v5, &qword_1EC7EAC98, &unk_1D561DA80);
        v31 = 1;
        v32 = v62;
      }

      else
      {
        v32 = v62;
        sub_1D5610918();
        (*(*(v30 - 8) + 8))(v5, v30);
        v31 = 0;
      }

      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
      __swift_storeEnumTagSinglePayload(v32, v31, 1, v33);
      v34 = *&v22[v59];
      v35 = *&v22[v58];
      v37 = v64;
      v36 = v65;
      *v64 = v29;
      sub_1D4FD23EC(v32, &v37[v36[5]], &qword_1EC7EC960, &unk_1D56334C0);
      *&v37[v36[6]] = v34;
      *&v37[v36[7]] = v35;

      v38 = v61;
      sub_1D56106F8();
      swift_isUniquelyReferenced_nonNull_native();
      v68 = v25;
      v39 = sub_1D4E4EFA0(v66, v67);
      if (__OFADD__(v25[2], (v40 & 1) == 0))
      {
        break;
      }

      v41 = v39;
      v42 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF950, &qword_1D56336F8);
      v43 = sub_1D5615D78();
      v44 = v55;
      if (v43)
      {
        v45 = sub_1D4E4EFA0(v66, v67);
        v5 = v56;
        if ((v42 & 1) != (v46 & 1))
        {
          goto LABEL_21;
        }

        v41 = v45;
      }

      else
      {
        v5 = v56;
      }

      v25 = v68;
      if (v42)
      {
        (*(v44 + 40))(v68[7] + *(v44 + 72) * v41, v38, v63);
      }

      else
      {
        v68[(v41 >> 6) + 8] |= 1 << v41;
        v47 = (v25[6] + 16 * v41);
        v48 = v67;
        *v47 = v66;
        v47[1] = v48;
        (*(v44 + 32))(v25[7] + *(v44 + 72) * v41, v38, v63);
        v49 = v25[2];
        v50 = __OFADD__(v49, 1);
        v51 = v49 + 1;
        if (v50)
        {
          goto LABEL_20;
        }

        v25[2] = v51;
      }

      sub_1D50C6E54(v22, type metadata accessor for EditorialCard);
      v24 += v54;
      if (!--v23)
      {
        return v25;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    result = sub_1D5616238();
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

BOOL sub_1D50C54B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D5615EF8();

  return v2 != 0;
}

BOOL sub_1D50C54F8(_BYTE *a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC968, &unk_1D5622290);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  if (*a1)
  {
    if (!*a2)
    {
      return 0;
    }
  }

  else if (*a2)
  {
    return 0;
  }

  v35 = v6;
  v34 = type metadata accessor for CloudEditorialCard(0);
  v18 = *(v34 + 20);
  v19 = *(v14 + 48);
  sub_1D4F1C460(&a1[v18], v17, &qword_1EC7EC960, &unk_1D56334C0);
  sub_1D4F1C460(&a2[v18], &v17[v19], &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_10(v17);
  if (v20)
  {
    OUTLINED_FUNCTION_10(&v17[v19]);
    if (v20)
    {
      sub_1D4E50004(v17, &qword_1EC7EC960, &unk_1D56334C0);
      goto LABEL_16;
    }

LABEL_13:
    sub_1D4E50004(v17, &qword_1EC7EC968, &unk_1D5622290);
    return 0;
  }

  sub_1D4F1C460(v17, v13, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_10(&v17[v19]);
  if (v20)
  {
    (*(v35 + 8))(v13, v4);
    goto LABEL_13;
  }

  v22 = v35;
  (*(v35 + 32))(v9, &v17[v19], v4);
  sub_1D50C6920(&qword_1EC7EC988);
  v23 = sub_1D5614D18();
  v24 = *(v22 + 8);
  v24(v9, v4);
  v24(v13, v4);
  sub_1D4E50004(v17, &qword_1EC7EC960, &unk_1D56334C0);
  if ((v23 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v25 = v34;
  v26 = *(v34 + 24);
  v27 = *&a2[v26];
  if (*&a1[v26])
  {
    if (!v27)
    {
      return 0;
    }

    sub_1D4F28F1C();
    v29 = v28;

    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  v30 = *(v25 + 28);
  v31 = *&a2[v30];
  if (!*&a1[v30])
  {
    return !v31;
  }

  if (!v31)
  {
    return 0;
  }

  sub_1D4F2D63C();
  v33 = v32;

  return (v33 & 1) != 0;
}

uint64_t sub_1D50C5888(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x79616C70736964 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1D5616168();

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

unint64_t sub_1D50C59F0(char a1)
{
  result = 1684957547;
  switch(a1)
  {
    case 1:
      result = 0x6169726F74696465;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x79616C70736964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D50C5A7C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF930, &unk_1D56336E8);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D50C660C();
  sub_1D56163D8();
  LOBYTE(v23) = *v3;
  v24 = 0;
  sub_1D50C6760();
  sub_1D5616068();
  if (!v2)
  {
    v11 = type metadata accessor for CloudEditorialCard(0);
    v12 = v11[5];
    LOBYTE(v23) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    v13 = sub_1D50C67B4(&qword_1EC7EC9E0);
    OUTLINED_FUNCTION_5_54(&v3[v12], &v23, v14, v15, v13);
    v23 = *&v3[v11[6]];
    v24 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v16 = sub_1D4FC7B20();
    OUTLINED_FUNCTION_5_54(&v23, &v24, v17, v18, v16);
    v23 = *&v3[v11[7]];
    v24 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF8F0, &qword_1D5636520);
    v19 = sub_1D50C6874();
    OUTLINED_FUNCTION_5_54(&v23, &v24, v20, v21, v19);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1D50C5CB8(const void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  if (*v1 == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  v13 = type metadata accessor for CloudEditorialCard(0);
  sub_1D4F1C460(&v1[v13[5]], v12, &qword_1EC7EC960, &unk_1D56334C0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v3) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v3);
    OUTLINED_FUNCTION_27();
    sub_1D50C6920(&qword_1EC7ECA38);
    sub_1D5614CB8();
    (*(v5 + 8))(v8, v3);
  }

  if (*&v1[v13[6]])
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v14 = *&v1[v13[7]];
  if (!v14)
  {
    return OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_27();
  return sub_1D4F329DC(a1, v14);
}

uint64_t sub_1D50C5F0C()
{
  sub_1D56162D8();
  sub_1D50C5CB8(v1);
  return sub_1D5616328();
}

uint64_t sub_1D50C5F4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF910, &qword_1D56336E0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v22 = type metadata accessor for CloudEditorialCard(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v23 = (v11 - v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D50C660C();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v21;
  v25 = 0;
  sub_1D50C6660();
  sub_1D5615F78();
  v13 = v23;
  *v23 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  LOBYTE(v24) = 1;
  v14 = sub_1D50C67B4(&qword_1EDD531D8);
  OUTLINED_FUNCTION_3_64(v14, &v24);
  sub_1D4FD23EC(v7, v13 + *(v22 + 20), &qword_1EC7EC960, &unk_1D56334C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  v25 = 2;
  v15 = sub_1D4FCE3FC();
  OUTLINED_FUNCTION_3_64(v15, &v25);
  v16 = v22;
  *(v13 + *(v22 + 24)) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF8F0, &qword_1D5636520);
  v25 = 3;
  v17 = sub_1D50C66B4();
  OUTLINED_FUNCTION_3_64(v17, &v25);
  v18 = OUTLINED_FUNCTION_4_49();
  v19(v18);
  *(v13 + *(v16 + 28)) = v24;
  sub_1D50C6DF4(v13, v12, type metadata accessor for CloudEditorialCard);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D50C6E54(v13, type metadata accessor for CloudEditorialCard);
}

BOOL sub_1D50C6314@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D50C54B0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D50C6440()
{
  result = qword_1EC7EF900;
  if (!qword_1EC7EF900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF908, qword_1D56335B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF900);
  }

  return result;
}

uint64_t sub_1D50C64F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D50C5888(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D50C651C(uint64_t a1)
{
  v2 = sub_1D50C660C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D50C6558(uint64_t a1)
{
  v2 = sub_1D50C660C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D50C65D0(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D50C5CB8(v2);
  return sub_1D5616328();
}

unint64_t sub_1D50C660C()
{
  result = qword_1EC7EF918;
  if (!qword_1EC7EF918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF918);
  }

  return result;
}

unint64_t sub_1D50C6660()
{
  result = qword_1EC7EF920;
  if (!qword_1EC7EF920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF920);
  }

  return result;
}

unint64_t sub_1D50C66B4()
{
  result = qword_1EC7EF928;
  if (!qword_1EC7EF928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF8F0, &qword_1D5636520);
    sub_1D4F88BF4(&qword_1EDD52778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF928);
  }

  return result;
}

unint64_t sub_1D50C6760()
{
  result = qword_1EC7EF938;
  if (!qword_1EC7EF938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF938);
  }

  return result;
}

unint64_t sub_1D50C67B4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D50C69B8(&unk_1EDD530E0);
    sub_1D50C69B8(&unk_1EDD530E8);
    result = OUTLINED_FUNCTION_9_47();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D50C6874()
{
  result = qword_1EC7EF940;
  if (!qword_1EC7EF940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF8F0, &qword_1D5636520);
    sub_1D4F88BF4(&unk_1EC7ECA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF940);
  }

  return result;
}

unint64_t sub_1D50C6920(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D50C69B8(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D50C69B8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

double sub_1D50C69FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a1;
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v34 = &v32[-v8];
  v9 = type metadata accessor for CloudEditorialCard(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v32[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v32[-v14];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v32[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v32[-v19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDE8, &unk_1D5623ED0);
  sub_1D5610708();
  v33 = *v20;
  sub_1D50C6E54(v20, type metadata accessor for CloudEditorialCard);
  sub_1D5610708();
  sub_1D4F1C460(&v18[v9[5]], v6, &qword_1EC7EC960, &unk_1D56334C0);
  sub_1D50C6E54(v18, type metadata accessor for CloudEditorialCard);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  if (__swift_getEnumTagSinglePayload(v6, 1, v21) == 1)
  {
    sub_1D4E50004(v6, &qword_1EC7EC960, &unk_1D56334C0);
    v22 = 1;
    v23 = v34;
  }

  else
  {
    v24 = v34;
    sub_1D5610738();
    (*(*(v21 - 8) + 8))(v6, v21);
    v22 = 0;
    v23 = v24;
  }

  v25 = sub_1D5610978();
  __swift_storeEnumTagSinglePayload(v23, v22, 1, v25);
  sub_1D5610708();
  v26 = *&v15[v9[6]];

  sub_1D50C6E54(v15, type metadata accessor for CloudEditorialCard);
  sub_1D5610708();
  v27 = *&v12[v9[7]];

  sub_1D50C6E54(v12, type metadata accessor for CloudEditorialCard);
  v28 = sub_1D5610718();
  v29 = v36;
  *a3 = v35;
  *(a3 + 8) = v29;
  *(a3 + 16) = v33;
  v30 = type metadata accessor for EditorialCard(0);
  sub_1D4FD23EC(v23, a3 + v30[6], &qword_1EC7EAC98, &unk_1D561DA80);
  *(a3 + v30[7]) = v26;
  *(a3 + v30[8]) = v27;
  *(a3 + v30[9]) = v28;

  return result;
}

unint64_t sub_1D50C6DA0()
{
  result = qword_1EC7EF948;
  if (!qword_1EC7EF948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF948);
  }

  return result;
}

uint64_t sub_1D50C6DF4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D50C6E54(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D50C6EAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialCard(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for CloudEditorialCard.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D50C6FF0()
{
  result = qword_1EC7EF958;
  if (!qword_1EC7EF958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF958);
  }

  return result;
}

unint64_t sub_1D50C7048()
{
  result = qword_1EC7EF960;
  if (!qword_1EC7EF960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF960);
  }

  return result;
}

unint64_t sub_1D50C70A0()
{
  result = qword_1EC7EF968;
  if (!qword_1EC7EF968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF968);
  }

  return result;
}

uint64_t MusicLibrary.AddToPlaylistAction.playlist.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D5614898();
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t MusicLibrary.AddToPlaylistAction.UnsupportedReason.hashValue.getter()
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](0);
  return sub_1D5616328();
}

uint64_t static MusicLibraryAction<>.add(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5614898();
  OUTLINED_FUNCTION_14();
  v6 = *(v5 + 16);

  return v6(a2, a1, v4);
}

uint64_t MusicLibrary.AddToPlaylistAction.duplicateCount(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for MusicLibraryPlaylistDuplicateItemsRequest(0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D50C72F0, 0, 0);
}

uint64_t sub_1D50C72F0()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D5614898();
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(v1, v3);
  *(v1 + *(v2 + 20)) = v4;

  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_1D50C73D8;

  return sub_1D4FBABB4();
}

uint64_t sub_1D50C73D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 56) = v3;

  if (v3)
  {
    v9 = sub_1D50C75BC;
  }

  else
  {
    v8[8] = a3;
    v8[9] = a2;
    v8[10] = a1;
    v9 = sub_1D50C7514;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1D50C7514()
{
  v1 = v0[9];
  sub_1D5059F84(v0[5]);
  v2 = *(v1 + 16);

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1D50C75BC()
{
  sub_1D5059F84(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1D50C7630()
{
  result = qword_1EC7EF970;
  if (!qword_1EC7EF970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EF970);
  }

  return result;
}

uint64_t sub_1D50C7690(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D4FBE678;

  return MusicLibrary.AddToPlaylistAction.duplicateCount(for:)(a1);
}

uint64_t type metadata accessor for MusicLibrary.AddToPlaylistAction(uint64_t a1)
{
  result = qword_1EDD53648;
  if (!qword_1EDD53648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D50C7798(uint64_t a1)
{
  result = sub_1D5614898();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s19AddToPlaylistActionV17UnsupportedReasonOwst(_BYTE *result, int a2, int a3)
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

void GenericMusicItem.init(propertyProvider:underlyingLegacyModelObjectType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v20;
  a20 = v21;
  v183[1] = v22;
  v184 = v23;
  v25 = v24;
  v26 = type metadata accessor for UploadedVideo(0);
  v27 = OUTLINED_FUNCTION_20(v26, &v170);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_0();
  v29 = OUTLINED_FUNCTION_48(v28);
  v30 = type metadata accessor for UploadedAudio(v29);
  v31 = OUTLINED_FUNCTION_20(v30, &v169);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_0();
  v33 = OUTLINED_FUNCTION_48(v32);
  v34 = type metadata accessor for TVShow(v33);
  v35 = OUTLINED_FUNCTION_20(v34, v171);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5_0();
  v37 = OUTLINED_FUNCTION_48(v36);
  v38 = type metadata accessor for TVSeason(v37);
  v39 = OUTLINED_FUNCTION_20(v38, &v172);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5_0();
  v41 = OUTLINED_FUNCTION_48(v40);
  v42 = type metadata accessor for TVEpisode(v41);
  v43 = OUTLINED_FUNCTION_20(v42, v173);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v44);
  v45 = sub_1D5614408();
  v46 = OUTLINED_FUNCTION_12_0(v45, &v174);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v47);
  v48 = sub_1D5613838();
  v49 = OUTLINED_FUNCTION_12_0(v48, &v177);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_5_0();
  v51 = OUTLINED_FUNCTION_48(v50);
  v52 = type metadata accessor for SocialProfile(v51);
  v53 = OUTLINED_FUNCTION_20(v52, &v178);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v54);
  v55 = sub_1D560F8B8();
  v56 = OUTLINED_FUNCTION_12_0(v55, &v182);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_5_0();
  v58 = OUTLINED_FUNCTION_48(v57);
  v59 = type metadata accessor for Playlist.Folder(v58);
  v60 = OUTLINED_FUNCTION_20(v59, v183);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v61);
  v62 = sub_1D5614898();
  v63 = OUTLINED_FUNCTION_12_0(v62, &v186);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v64);
  v65 = sub_1D560EEA8();
  v66 = OUTLINED_FUNCTION_12_0(v65, &v189);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_5_0();
  v68 = OUTLINED_FUNCTION_48(v67);
  v69 = type metadata accessor for MusicMovie(v68);
  v70 = OUTLINED_FUNCTION_20(v69, v190);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_5_0();
  v72 = OUTLINED_FUNCTION_48(v71);
  v73 = type metadata accessor for EditorialItem(v72);
  v74 = OUTLINED_FUNCTION_20(v73, &a11);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v75);
  v76 = sub_1D5613C48();
  v77 = OUTLINED_FUNCTION_12_0(v76, &a15);
  v171[1] = v78;
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v79);
  v80 = sub_1D5614B68();
  v81 = OUTLINED_FUNCTION_12_0(v80, &a10);
  v169 = v82;
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v83);
  v181 = sub_1D5613158();
  OUTLINED_FUNCTION_4();
  v186 = v84;
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v87);
  v173[2] = sub_1D56141F8();
  OUTLINED_FUNCTION_4();
  v173[1] = v88;
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v90);
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v176 = v91;
  v177 = v92;
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_5_0();
  v175 = v93;
  v94 = OUTLINED_FUNCTION_70_0();
  v173[3] = type metadata accessor for CreditArtist(v94);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_5_0();
  v174 = v96;
  OUTLINED_FUNCTION_70_0();
  sub_1D5613EF8();
  OUTLINED_FUNCTION_4();
  v179 = v98;
  v180 = v97;
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_5_0();
  v178 = v99;
  OUTLINED_FUNCTION_70_0();
  v100 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v102 = v101;
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_5();
  v106 = v105 - v104;
  v107 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v109 = v108;
  MEMORY[0x1EEE9AC00](v110);
  OUTLINED_FUNCTION_59_0();
  v113 = v111 - v112;
  MEMORY[0x1EEE9AC00](v114);
  v183[0] = type metadata accessor for GenericMusicItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v115);
  OUTLINED_FUNCTION_5_0();
  v182 = v116;
  v117 = v25[3];
  v185 = v25;
  __swift_project_boxed_opaque_existential_1(v25, v117);
  sub_1D5610CF8();
  sub_1D560FFB8();
  OUTLINED_FUNCTION_30_25();
  sub_1D4E5E488(v118, v119, MEMORY[0x1E6975BE0]);
  OUTLINED_FUNCTION_6_52();
  LOBYTE(v25) = sub_1D5614D18();
  v120 = *(v109 + 8);
  v120(v113, v107);
  if (v25 & 1) != 0 || (sub_1D560FEA8(), OUTLINED_FUNCTION_6_52(), v121 = sub_1D5614D18(), v120(v113, v107), (v121))
  {
    v122 = OUTLINED_FUNCTION_217();
    (v120)(v122);
    OUTLINED_FUNCTION_38_21();
    sub_1D5613978();
    v123 = OUTLINED_FUNCTION_8_48();
    v124(v123);
    v113 = v182;
    (*(v102 + 32))(v182, v106, v100);
  }

  else
  {
    sub_1D560FFD8();
    OUTLINED_FUNCTION_6_52();
    sub_1D5614D18();
    v125 = OUTLINED_FUNCTION_20_43();
    (v120)(v125);
    if (v100)
    {
      v127 = OUTLINED_FUNCTION_217();
      (v120)(v127);
      OUTLINED_FUNCTION_38_21();
      v128 = v178;
      sub_1D5613E28();
      v129 = OUTLINED_FUNCTION_8_48();
      v130(v129);
      v113 = v182;
      (*(v179 + 32))(v182, v128, v180);
    }

    else
    {
      sub_1D560FEE8();
      OUTLINED_FUNCTION_6_52();
      sub_1D5614D18();
      v126 = OUTLINED_FUNCTION_20_43();
      (v120)(v126);
      sub_1D560FE88();
      OUTLINED_FUNCTION_6_52();
      sub_1D5614D18();
      v131 = OUTLINED_FUNCTION_20_43();
      (v120)(v131);
      if (v100)
      {
        v132 = OUTLINED_FUNCTION_217();
        (v120)(v132);
        OUTLINED_FUNCTION_38_21();
        OUTLINED_FUNCTION_81_1();
        v133 = v175;
        OUTLINED_FUNCTION_42_19();
        sub_1D560D708();
        OUTLINED_FUNCTION_15_40();
        v134(v133);
        v113 = v174;
        *v174 = v100;
        *(v113 + 8) = v133;
        __swift_project_boxed_opaque_existential_1(&v187, v190[0]);
        OUTLINED_FUNCTION_71();
        sub_1D5610D28();
        v135 = OUTLINED_FUNCTION_36_23();
        v136(v135);
        __swift_destroy_boxed_opaque_existential_1(&v187);
        OUTLINED_FUNCTION_23_33();
        OUTLINED_FUNCTION_45_19(v137, v138, v139);
      }

      else
      {
        sub_1D560FFF8();
        OUTLINED_FUNCTION_6_52();
        sub_1D5614D18();
        v140 = OUTLINED_FUNCTION_20_43();
        (v120)(v140);
        sub_1D560FE78();
        OUTLINED_FUNCTION_6_52();
        sub_1D5614D18();
        v141 = OUTLINED_FUNCTION_20_43();
        (v120)(v141);
        sub_1D560FED8();
        OUTLINED_FUNCTION_6_52();
        sub_1D5614D18();
        v142 = OUTLINED_FUNCTION_20_43();
        (v120)(v142);
        sub_1D560FFC8();
        OUTLINED_FUNCTION_6_52();
        sub_1D5614D18();
        v143 = OUTLINED_FUNCTION_20_43();
        (v120)(v143);
        sub_1D560FE28();
        OUTLINED_FUNCTION_6_52();
        sub_1D5614D18();
        v144 = OUTLINED_FUNCTION_20_43();
        (v120)(v144);
        sub_1D560FE38();
        OUTLINED_FUNCTION_6_52();
        sub_1D5614D18();
        v145 = OUTLINED_FUNCTION_20_43();
        (v120)(v145);
        sub_1D560FDF8();
        OUTLINED_FUNCTION_6_52();
        sub_1D5614D18();
        v146 = OUTLINED_FUNCTION_20_43();
        (v120)(v146);
        sub_1D5610038();
        OUTLINED_FUNCTION_6_52();
        sub_1D5614D18();
        v147 = OUTLINED_FUNCTION_20_43();
        (v120)(v147);
        sub_1D560FF58();
        OUTLINED_FUNCTION_6_52();
        sub_1D5614D18();
        v148 = OUTLINED_FUNCTION_20_43();
        (v120)(v148);
        sub_1D560FF68();
        OUTLINED_FUNCTION_6_52();
        sub_1D5614D18();
        v149 = OUTLINED_FUNCTION_20_43();
        (v120)(v149);
        sub_1D560FE58();
        v150 = sub_1D5614D18();
        v120(v113, v107);
        if ((v150 & 1) == 0)
        {
          sub_1D560FF18();
          OUTLINED_FUNCTION_19_36();
          v156 = OUTLINED_FUNCTION_32_26();
          (v120)(v156);
          sub_1D560FFA8();
          OUTLINED_FUNCTION_19_36();
          v157 = OUTLINED_FUNCTION_32_26();
          (v120)(v157);
          sub_1D560FE48();
          OUTLINED_FUNCTION_19_36();
          v158 = OUTLINED_FUNCTION_32_26();
          (v120)(v158);
          sub_1D5610008();
          OUTLINED_FUNCTION_19_36();
          v159 = OUTLINED_FUNCTION_32_26();
          (v120)(v159);
          sub_1D5610078();
          OUTLINED_FUNCTION_19_36();
          v160 = OUTLINED_FUNCTION_32_26();
          (v120)(v160);
          sub_1D5610068();
          OUTLINED_FUNCTION_19_36();
          v161 = OUTLINED_FUNCTION_32_26();
          (v120)(v161);
          sub_1D560FFE8();
          OUTLINED_FUNCTION_19_36();
          v162 = OUTLINED_FUNCTION_32_26();
          (v120)(v162);
          sub_1D560FF28();
          OUTLINED_FUNCTION_19_36();
          v163 = OUTLINED_FUNCTION_32_26();
          (v120)(v163);
          sub_1D560FF38();
          OUTLINED_FUNCTION_19_36();
          v164 = OUTLINED_FUNCTION_32_26();
          (v120)(v164);
          sub_1D5610018();
          OUTLINED_FUNCTION_19_36();
          v165 = OUTLINED_FUNCTION_32_26();
          (v120)(v165);
          while (1)
          {
            v187 = 0;
            v188 = 0xE000000000000000;
            sub_1D5615B68();

            v187 = 0xD00000000000002FLL;
            v188 = 0x80000001D5682990;
            OUTLINED_FUNCTION_69_12(v185);
            OUTLINED_FUNCTION_30_25();
            sub_1D4E5E488(v166, v167, MEMORY[0x1E6975BF8]);
            v168 = sub_1D56160F8();
            MEMORY[0x1DA6EAC70](v168);

            v120(v113, v107);
            MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
            sub_1D5615E08();
            __break(1u);
          }
        }

        v151 = OUTLINED_FUNCTION_224();
        (v120)(v151);
        OUTLINED_FUNCTION_38_21();
        OUTLINED_FUNCTION_172();
        sub_1D560F838();
        v152 = OUTLINED_FUNCTION_8_48();
        v153(v152);
        v154 = OUTLINED_FUNCTION_13_38();
        v155(v154);
      }
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_1D50CC018(v113, v184, type metadata accessor for GenericMusicItem);
  __swift_destroy_boxed_opaque_existential_1(v120);
  OUTLINED_FUNCTION_46();
}

void GenericMusicItem.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v20;
  a20 = v21;
  v336[0] = v22;
  v337 = v23;
  v338 = v24;
  v26 = v25;
  v341 = v27;
  v28 = type metadata accessor for TVShow(0);
  v29 = OUTLINED_FUNCTION_22(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_0();
  v31 = OUTLINED_FUNCTION_48(v30);
  v32 = type metadata accessor for TVSeason(v31);
  v33 = OUTLINED_FUNCTION_22(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_0();
  v35 = OUTLINED_FUNCTION_48(v34);
  v36 = type metadata accessor for TVEpisode(v35);
  v37 = OUTLINED_FUNCTION_22(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v38);
  v327 = sub_1D5613D28();
  OUTLINED_FUNCTION_4();
  v326 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v42);
  v43 = sub_1D5614408();
  v44 = OUTLINED_FUNCTION_12_0(v43, &a12);
  v322 = v45;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_5_0();
  v47 = OUTLINED_FUNCTION_48(v46);
  v48 = type metadata accessor for SocialProfile(v47);
  v49 = OUTLINED_FUNCTION_22(v48);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v50);
  v51 = sub_1D560F8B8();
  v52 = OUTLINED_FUNCTION_12_0(v51, &v344);
  v319 = v53;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5_0();
  v55 = OUTLINED_FUNCTION_48(v54);
  v56 = type metadata accessor for Playlist.Folder.Item(v55);
  v57 = OUTLINED_FUNCTION_20(v56, &v343);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_13_2();
  v60 = OUTLINED_FUNCTION_48(v59);
  v61 = type metadata accessor for MusicMovie(v60);
  v62 = OUTLINED_FUNCTION_22(v61);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v63);
  v64 = sub_1D5613C48();
  v65 = OUTLINED_FUNCTION_12_0(v64, &v340);
  v317[7] = v66;
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_5_0();
  v68 = OUTLINED_FUNCTION_48(v67);
  v69 = type metadata accessor for Composer(v68);
  v70 = OUTLINED_FUNCTION_22(v69);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_5_0();
  v72 = OUTLINED_FUNCTION_48(v71);
  v73 = type metadata accessor for CreditArtist(v72);
  v74 = OUTLINED_FUNCTION_22(v73);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v75);
  v76 = sub_1D5613EF8();
  v77 = OUTLINED_FUNCTION_12_0(v76, v336);
  v317[2] = v78;
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_5();
  v81 = v80 - v79;
  v82 = sub_1D5613AF8();
  v83 = OUTLINED_FUNCTION_12_0(v82, &v334);
  v317[0] = v84;
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_5();
  v87 = v86 - v85;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  v89 = OUTLINED_FUNCTION_22(v88);
  MEMORY[0x1EEE9AC00](v89);
  v91 = v317 - v90;
  sub_1D560E728();
  OUTLINED_FUNCTION_4();
  v333 = v92;
  v334 = v93;
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_5_0();
  v332 = v94;
  OUTLINED_FUNCTION_70_0();
  v330 = sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v328 = v95;
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_5();
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v339 = v97;
  v340 = v98;
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_59_0();
  v101 = (v99 - v100);
  v103 = MEMORY[0x1EEE9AC00](v102);
  v105 = v317 - v104;
  v106 = MEMORY[0x1EEE9AC00](v103);
  v329 = v317 - v107;
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_13_2();
  v335 = v108;
  v109 = sub_1D560F7E8();
  sub_1D4F165C4();
  sub_1D5614C68();

  v111 = sub_1D4FBE524(v110);
  v336[1] = v26;
  v112 = sub_1D560F7B8();
  if (!v112)
  {
    OUTLINED_FUNCTION_11_28();
    goto LABEL_44;
  }

  if (v111 == 15)
  {
    v113 = 0;
  }

  else
  {
    v113 = v111;
  }

  v331 = v112;
  switch(v113)
  {
    case 1:

      v287 = sub_1D560D938();
      v288 = OUTLINED_FUNCTION_67_14(v287);
      OUTLINED_FUNCTION_66_9(v288);
      v289 = OUTLINED_FUNCTION_9_48();
      OUTLINED_FUNCTION_59_12(v289);
      sub_1D4E50004(v111, &unk_1EC7EBF30, &qword_1D561C8C0);
      v290 = OUTLINED_FUNCTION_47_23();
      v291(v290);
      v292 = OUTLINED_FUNCTION_31_26();
      v293(v292);
      v294 = OUTLINED_FUNCTION_0_80();
      v295(v294);
      OUTLINED_FUNCTION_41_24();
      sub_1D5613D98();
      swift_unknownObjectRelease();
      sub_1D4E50004(v101, &qword_1EC7EEC40, &unk_1D561C070);
      v296 = OUTLINED_FUNCTION_21_30();
      v101(v296);
      v297 = OUTLINED_FUNCTION_75_2();
      v101(v297);
      v298 = OUTLINED_FUNCTION_34_4();
      v299(v298, v81, v317[3]);
      goto LABEL_41;
    case 2:

      if (qword_1EC7E9090 != -1)
      {
        v195 = swift_once();
      }

      v196 = OUTLINED_FUNCTION_22_33(v195, qword_1EC7F1B20);
      OUTLINED_FUNCTION_65_15(v196);
      v197 = OUTLINED_FUNCTION_9_48();
      OUTLINED_FUNCTION_53_14(v197);
      sub_1D4E50004(v109, &unk_1EC7EBF30, &qword_1D561C8C0);
      v198 = OUTLINED_FUNCTION_33_30();
      v199(v198);
      v200 = OUTLINED_FUNCTION_0_80();
      v201(v200);
      OUTLINED_FUNCTION_41_24();
      v202 = OUTLINED_FUNCTION_5_55();
      CreditArtist.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v202, v203, v204, v205, v206);
      swift_unknownObjectRelease();
      sub_1D4E50004(v101, &qword_1EC7EEC40, &unk_1D561C070);
      v207 = OUTLINED_FUNCTION_21_30();
      v101(v207);
      v208 = OUTLINED_FUNCTION_75_2();
      v101(v208);
      OUTLINED_FUNCTION_23_33();
      OUTLINED_FUNCTION_54_12(v209, v210, v211);
      goto LABEL_41;
    case 3:

      if (qword_1EDD53C80 != -1)
      {
        v212 = swift_once();
      }

      v213 = OUTLINED_FUNCTION_22_33(v212, qword_1EDD53C88);
      OUTLINED_FUNCTION_65_15(v213);
      v214 = OUTLINED_FUNCTION_9_48();
      OUTLINED_FUNCTION_53_14(v214);
      sub_1D4E50004(v109, &unk_1EC7EBF30, &qword_1D561C8C0);
      v215 = OUTLINED_FUNCTION_33_30();
      v216(v215);
      v217 = OUTLINED_FUNCTION_0_80();
      v218(v217);
      OUTLINED_FUNCTION_41_24();
      v219 = OUTLINED_FUNCTION_5_55();
      Composer.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v219, v220, v221, v222, v223);
      swift_unknownObjectRelease();
      sub_1D4E50004(v101, &qword_1EC7EEC40, &unk_1D561C070);
      v224 = OUTLINED_FUNCTION_21_30();
      v101(v224);
      v225 = OUTLINED_FUNCTION_75_2();
      v226 = (v101)(v225);
      OUTLINED_FUNCTION_54_12(v226, v227, type metadata accessor for Composer);
      goto LABEL_41;
    case 4:

      v169 = sub_1D560D918();
      v170 = OUTLINED_FUNCTION_67_14(v169);
      OUTLINED_FUNCTION_66_9(v170);
      v171 = OUTLINED_FUNCTION_9_48();
      OUTLINED_FUNCTION_59_12(v171);
      sub_1D4E50004(v111, &unk_1EC7EBF30, &qword_1D561C8C0);
      v172 = OUTLINED_FUNCTION_47_23();
      v173(v172);
      v174 = OUTLINED_FUNCTION_31_26();
      v175(v174);
      v176 = v329;
      (*(v340 + 16))(v329, v105, v339);
      v177 = v317[5];
      sub_1D5613B58();
      swift_unknownObjectRelease();
      sub_1D4E50004(v337, &qword_1EC7EEC40, &unk_1D561C070);
      v178 = OUTLINED_FUNCTION_21_30();
      (v176)(v178);
      v179 = OUTLINED_FUNCTION_75_2();
      (v176)(v179);
      v180 = OUTLINED_FUNCTION_34_4();
      v181(v180, v177, v317[8]);
      goto LABEL_41;
    case 5:

      if (qword_1EDD53CC0 != -1)
      {
        v300 = swift_once();
      }

      OUTLINED_FUNCTION_22_33(v300, qword_1EDD53CC8);
      sub_1D560D4F8();
      v301 = v331;
      sub_1D560F7D8();
      sub_1D4E50004(v91, &unk_1EC7EBF30, &qword_1D561C8C0);
      v302 = OUTLINED_FUNCTION_33_30();
      v303(v302);
      v304 = v335;
      (*(v340 + 16))(v335, v105, v339);
      OUTLINED_FUNCTION_41_24();
      v305 = v318;
      Playlist.Folder.Item.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v304, v301, v342, v336[0], v318);
      swift_unknownObjectRelease();
      sub_1D4E50004(v101, &qword_1EC7EEC40, &unk_1D561C070);
      v306 = OUTLINED_FUNCTION_21_30();
      v101(v306);
      v307 = OUTLINED_FUNCTION_75_2();
      v101(v307);
      v308 = v321;
      sub_1D50CC018(v305, v321, type metadata accessor for Playlist.Folder.Item);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D5614898();
        OUTLINED_FUNCTION_14();
        (*(v309 + 32))(v338, v308);
      }

      else
      {
        OUTLINED_FUNCTION_28_30();
        sub_1D50CC018(v308, v338, v316);
      }

      goto LABEL_41;
    case 6:
      OUTLINED_FUNCTION_53_9();
      v317[0] = 102;
      OUTLINED_FUNCTION_11_28();
      goto LABEL_44;
    case 7:

      if (qword_1EDD53D48 != -1)
      {
        v245 = swift_once();
      }

      v246 = OUTLINED_FUNCTION_22_33(v245, qword_1EDD53D50);
      OUTLINED_FUNCTION_65_15(v246);
      v247 = OUTLINED_FUNCTION_9_48();
      OUTLINED_FUNCTION_53_14(v247);
      sub_1D4E50004(v109, &unk_1EC7EBF30, &qword_1D561C8C0);
      v248 = OUTLINED_FUNCTION_33_30();
      v249(v248);
      v250 = OUTLINED_FUNCTION_0_80();
      v251(v250);
      OUTLINED_FUNCTION_41_24();
      OUTLINED_FUNCTION_5_55();
      MusicMovie.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)();
      swift_unknownObjectRelease();
      sub_1D4E50004(v101, &qword_1EC7EEC40, &unk_1D561C070);
      v252 = OUTLINED_FUNCTION_21_30();
      v101(v252);
      v253 = OUTLINED_FUNCTION_75_2();
      v101(v253);
      OUTLINED_FUNCTION_29_27();
      OUTLINED_FUNCTION_54_12(v254, v255, v256);
      goto LABEL_41;
    case 8:

      v182 = sub_1D560D888();
      v183 = OUTLINED_FUNCTION_67_14(v182);
      OUTLINED_FUNCTION_66_9(v183);
      v184 = OUTLINED_FUNCTION_9_48();
      OUTLINED_FUNCTION_59_12(v184);
      sub_1D4E50004(v111, &unk_1EC7EBF30, &qword_1D561C8C0);
      v185 = OUTLINED_FUNCTION_47_23();
      v186(v185);
      v187 = OUTLINED_FUNCTION_31_26();
      v188(v187);
      v189 = OUTLINED_FUNCTION_0_80();
      v190(v189);
      OUTLINED_FUNCTION_41_24();
      OUTLINED_FUNCTION_5_55();
      sub_1D560F7F8();
      swift_unknownObjectRelease();
      sub_1D4E50004(v101, &qword_1EC7EEC40, &unk_1D561C070);
      v191 = OUTLINED_FUNCTION_21_30();
      v101(v191);
      v192 = OUTLINED_FUNCTION_75_2();
      v101(v192);
      v193 = OUTLINED_FUNCTION_34_4();
      v194(v193, v87, v320);
      goto LABEL_41;
    case 9:

      if (qword_1EDD53D08 != -1)
      {
        v270 = swift_once();
      }

      v271 = OUTLINED_FUNCTION_22_33(v270, qword_1EDD53D10);
      OUTLINED_FUNCTION_65_15(v271);
      v272 = OUTLINED_FUNCTION_9_48();
      OUTLINED_FUNCTION_53_14(v272);
      sub_1D4E50004(v109, &unk_1EC7EBF30, &qword_1D561C8C0);
      v273 = OUTLINED_FUNCTION_33_30();
      v274(v273);
      v275 = OUTLINED_FUNCTION_0_80();
      v276(v275);
      OUTLINED_FUNCTION_41_24();
      v277 = OUTLINED_FUNCTION_5_55();
      SocialProfile.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v277, v278, v279, v280, v281);
      swift_unknownObjectRelease();
      sub_1D4E50004(v101, &qword_1EC7EEC40, &unk_1D561C070);
      v282 = OUTLINED_FUNCTION_21_30();
      v101(v282);
      v283 = OUTLINED_FUNCTION_75_2();
      v101(v283);
      OUTLINED_FUNCTION_27_26();
      OUTLINED_FUNCTION_54_12(v284, v285, v286);
      goto LABEL_41;
    case 10:

      v156 = sub_1D560D958();
      v157 = OUTLINED_FUNCTION_67_14(v156);
      OUTLINED_FUNCTION_66_9(v157);
      v158 = OUTLINED_FUNCTION_9_48();
      OUTLINED_FUNCTION_59_12(v158);
      sub_1D4E50004(v111, &unk_1EC7EBF30, &qword_1D561C8C0);
      v159 = OUTLINED_FUNCTION_47_23();
      v160(v159);
      v161 = OUTLINED_FUNCTION_31_26();
      v162(v161);
      v163 = OUTLINED_FUNCTION_0_80();
      v164(v163);
      OUTLINED_FUNCTION_41_24();
      OUTLINED_FUNCTION_5_55();
      sub_1D5614228();
      swift_unknownObjectRelease();
      sub_1D4E50004(v101, &qword_1EC7EEC40, &unk_1D561C070);
      v165 = OUTLINED_FUNCTION_21_30();
      v101(v165);
      v166 = OUTLINED_FUNCTION_75_2();
      v101(v166);
      v167 = OUTLINED_FUNCTION_34_4();
      v168(v167, v87, v323);
      goto LABEL_41;
    case 11:
      sub_1D560D928();
      sub_1D560D588();
      sub_1D560D4F8();
      sub_1D560F7D8();
      sub_1D4E50004(v91, &unk_1EC7EBF30, &qword_1D561C8C0);
      v257 = OUTLINED_FUNCTION_33_30();
      v258(v257);
      v259 = OUTLINED_FUNCTION_31_26();
      v260(v259);
      (*(v340 + 16))(v335, v101, v339);
      v261 = v337;
      sub_1D4EC76A8(v337, v342);
      swift_unknownObjectRetain();

      v262 = v325;
      sub_1D5613C88();
      v263 = v326;
      v264 = v324;
      v265 = v327;
      (*(v326 + 16))(v324, v262, v327);
      v266 = (*(v263 + 88))(v264, v265);
      if (v266 == *MEMORY[0x1E6976E18])
      {

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        sub_1D4E50004(v261, &qword_1EC7EEC40, &unk_1D561C070);
        v267 = *(v340 + 8);
        v268 = v339;
        v267(v341, v339);
        (*(v263 + 8))(v262, v265);
        v267(v101, v268);
        (*(v263 + 96))(v264, v265);
        sub_1D5613838();
        OUTLINED_FUNCTION_14();
        (*(v269 + 32))(v338, v264);
      }

      else
      {
        v311 = v339;
        v310 = v340;
        if (v266 != *MEMORY[0x1E6976DF8])
        {
          while (1)
          {
            OUTLINED_FUNCTION_53_9();
            v317[0] = 87;
            OUTLINED_FUNCTION_11_28();
LABEL_44:
            sub_1D5615E08();
            __break(1u);
          }
        }

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        sub_1D4E50004(v261, &qword_1EC7EEC40, &unk_1D561C070);
        v312 = *(v310 + 8);
        v312(v341, v311);
        v313 = v326;
        v314 = v327;
        (*(v326 + 8))(v325, v327);
        v312(v101, v311);
        (*(v313 + 96))(v264, v314);
        sub_1D560EEA8();
        OUTLINED_FUNCTION_14();
        (*(v315 + 32))(v338, v264);
      }

LABEL_41:
      type metadata accessor for GenericMusicItem(0);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_46();
      return;
    case 12:

      if (qword_1EDD53C38 != -1)
      {
        v127 = swift_once();
      }

      v128 = OUTLINED_FUNCTION_22_33(v127, qword_1EDD53C40);
      OUTLINED_FUNCTION_65_15(v128);
      v129 = OUTLINED_FUNCTION_9_48();
      OUTLINED_FUNCTION_53_14(v129);
      sub_1D4E50004(v109, &unk_1EC7EBF30, &qword_1D561C8C0);
      v130 = OUTLINED_FUNCTION_33_30();
      v131(v130);
      v132 = OUTLINED_FUNCTION_0_80();
      v133(v132);
      OUTLINED_FUNCTION_41_24();
      v134 = OUTLINED_FUNCTION_5_55();
      TVEpisode.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v134, v135, v136, v137, v138);
      swift_unknownObjectRelease();
      sub_1D4E50004(v101, &qword_1EC7EEC40, &unk_1D561C070);
      v139 = OUTLINED_FUNCTION_21_30();
      v101(v139);
      v140 = OUTLINED_FUNCTION_75_2();
      v101(v140);
      OUTLINED_FUNCTION_26_31();
      OUTLINED_FUNCTION_54_12(v141, v142, v143);
      goto LABEL_41;
    case 13:

      if (qword_1EDD53C58 != -1)
      {
        v144 = swift_once();
      }

      v145 = OUTLINED_FUNCTION_22_33(v144, qword_1EDD53C60);
      OUTLINED_FUNCTION_65_15(v145);
      v146 = OUTLINED_FUNCTION_9_48();
      OUTLINED_FUNCTION_53_14(v146);
      sub_1D4E50004(v109, &unk_1EC7EBF30, &qword_1D561C8C0);
      v147 = OUTLINED_FUNCTION_33_30();
      v148(v147);
      v149 = OUTLINED_FUNCTION_0_80();
      v150(v149);
      OUTLINED_FUNCTION_41_24();
      OUTLINED_FUNCTION_5_55();
      TVSeason.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)();
      swift_unknownObjectRelease();
      sub_1D4E50004(v101, &qword_1EC7EEC40, &unk_1D561C070);
      v151 = OUTLINED_FUNCTION_21_30();
      v101(v151);
      v152 = OUTLINED_FUNCTION_75_2();
      v101(v152);
      OUTLINED_FUNCTION_25_33();
      OUTLINED_FUNCTION_54_12(v153, v154, v155);
      goto LABEL_41;
    case 14:

      if (qword_1EC7E95E8 != -1)
      {
        v228 = swift_once();
      }

      v229 = OUTLINED_FUNCTION_22_33(v228, qword_1EC7F5D98);
      OUTLINED_FUNCTION_65_15(v229);
      v230 = OUTLINED_FUNCTION_9_48();
      OUTLINED_FUNCTION_53_14(v230);
      sub_1D4E50004(v109, &unk_1EC7EBF30, &qword_1D561C8C0);
      v231 = OUTLINED_FUNCTION_33_30();
      v232(v231);
      v233 = OUTLINED_FUNCTION_0_80();
      v234(v233);
      OUTLINED_FUNCTION_41_24();
      v235 = OUTLINED_FUNCTION_5_55();
      TVShow.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v235, v236, v237, v238, v239);
      swift_unknownObjectRelease();
      sub_1D4E50004(v101, &qword_1EC7EEC40, &unk_1D561C070);
      v240 = OUTLINED_FUNCTION_21_30();
      v101(v240);
      v241 = OUTLINED_FUNCTION_75_2();
      v101(v241);
      OUTLINED_FUNCTION_24_29();
      OUTLINED_FUNCTION_54_12(v242, v243, v244);
      goto LABEL_41;
    default:

      v114 = sub_1D560D908();
      v115 = OUTLINED_FUNCTION_67_14(v114);
      OUTLINED_FUNCTION_66_9(v115);
      v116 = OUTLINED_FUNCTION_9_48();
      OUTLINED_FUNCTION_59_12(v116);
      sub_1D4E50004(v111, &unk_1EC7EBF30, &qword_1D561C8C0);
      v117 = OUTLINED_FUNCTION_47_23();
      v118(v117);
      v119 = OUTLINED_FUNCTION_31_26();
      v120(v119);
      v121 = OUTLINED_FUNCTION_0_80();
      v122(v121);
      OUTLINED_FUNCTION_41_24();
      sub_1D56138E8();
      swift_unknownObjectRelease();
      sub_1D4E50004(v101, &qword_1EC7EEC40, &unk_1D561C070);
      v123 = OUTLINED_FUNCTION_21_30();
      v101(v123);
      v124 = OUTLINED_FUNCTION_75_2();
      v101(v124);
      v125 = OUTLINED_FUNCTION_34_4();
      v126(v125, v87, v317[1]);
      goto LABEL_41;
  }
}

void GenericMusicItem.underlyingLegacyModelObjectType.getter()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v4 = sub_1D5613C48();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1D56141F8();
  OUTLINED_FUNCTION_4();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  type metadata accessor for GenericMusicItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  sub_1D4F26680(v1, v20 - v19);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v22 = MEMORY[0x1E6976850];
      goto LABEL_23;
    case 2u:
      v22 = MEMORY[0x1E6976880];
      goto LABEL_23;
    case 3u:
      v22 = MEMORY[0x1E69767B8];
      goto LABEL_23;
    case 4u:
      (*(v13 + 32))(v17, v21, v11);
      sub_1D56141B8();
      (*(v13 + 8))(v17, v11);
      goto LABEL_24;
    case 5u:
      v22 = MEMORY[0x1E69767C8];
      goto LABEL_23;
    case 6u:
      (*(v6 + 32))(v10, v21, v4);
      sub_1D5613C08();
      (*(v6 + 8))(v10, v4);
      goto LABEL_24;
    case 7u:
      v22 = MEMORY[0x1E6976798];
      goto LABEL_23;
    case 8u:
      v22 = MEMORY[0x1E69767A0];
      goto LABEL_23;
    case 9u:
      v22 = MEMORY[0x1E6976888];
      goto LABEL_23;
    case 0xAu:
      v22 = MEMORY[0x1E6976808];
      goto LABEL_23;
    case 0xBu:
      v22 = MEMORY[0x1E6976898];
      goto LABEL_23;
    case 0xCu:
      v22 = MEMORY[0x1E69767A8];
      goto LABEL_23;
    case 0xDu:
      v22 = MEMORY[0x1E69767E0];
      goto LABEL_23;
    case 0xEu:
      v22 = MEMORY[0x1E6976830];
      goto LABEL_23;
    case 0xFu:
      v22 = MEMORY[0x1E6976878];
      goto LABEL_23;
    case 0x10u:
      v22 = MEMORY[0x1E69768A0];
      goto LABEL_23;
    case 0x11u:
      v22 = MEMORY[0x1E6976890];
      goto LABEL_23;
    case 0x12u:
      v22 = MEMORY[0x1E6976860];
      goto LABEL_23;
    case 0x13u:
      v22 = MEMORY[0x1E69767F0];
      goto LABEL_23;
    case 0x14u:
      v22 = MEMORY[0x1E69767F8];
      goto LABEL_23;
    case 0x15u:
      OUTLINED_FUNCTION_53_9();
      OUTLINED_FUNCTION_11_28();
      OUTLINED_FUNCTION_71_9(v25, v26, v27, v28, v29, v30);
      __break(1u);
      return;
    default:
      v22 = MEMORY[0x1E6976838];
LABEL_23:
      v23 = *v22;
      sub_1D5613158();
      OUTLINED_FUNCTION_14();
      (*(v24 + 104))(v3, v23);
      sub_1D50CC074(v21, type metadata accessor for GenericMusicItem);
LABEL_24:
      OUTLINED_FUNCTION_46();
      return;
  }
}

void GenericMusicItem.convertToRawDictionary(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v175 = v20;
  v176 = v23;
  v174 = type metadata accessor for UploadedVideo(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_0();
  v173 = v25;
  v26 = OUTLINED_FUNCTION_70_0();
  v172 = type metadata accessor for UploadedAudio(v26);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_0();
  v171 = v28;
  v29 = OUTLINED_FUNCTION_70_0();
  v170 = type metadata accessor for TVShow(v29);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_0();
  v169 = v31;
  v32 = OUTLINED_FUNCTION_70_0();
  v168 = type metadata accessor for TVSeason(v32);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_0();
  v167 = v34;
  v35 = OUTLINED_FUNCTION_70_0();
  v166 = type metadata accessor for TVEpisode(v35);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5_0();
  v165 = v37;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614408();
  OUTLINED_FUNCTION_4();
  v163 = v39;
  v164 = v38;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5_0();
  v162 = v40;
  OUTLINED_FUNCTION_70_0();
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v160 = v42;
  v161 = v41;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5_0();
  v159 = v43;
  v44 = OUTLINED_FUNCTION_70_0();
  v158 = type metadata accessor for SocialProfile(v44);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5_0();
  v157 = v46;
  OUTLINED_FUNCTION_70_0();
  v156 = sub_1D560F8B8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v48);
  v49 = sub_1D5614B68();
  v50 = OUTLINED_FUNCTION_12_0(v49, &a16);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5_0();
  v52 = OUTLINED_FUNCTION_48(v51);
  v53 = type metadata accessor for Playlist.Folder(v52);
  v54 = OUTLINED_FUNCTION_20(v53, &a13);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v55);
  v56 = sub_1D5614898();
  v57 = OUTLINED_FUNCTION_12_0(v56, &a11);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v58);
  v59 = sub_1D560EEA8();
  v60 = OUTLINED_FUNCTION_12_0(v59, &v177);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_5_0();
  v62 = OUTLINED_FUNCTION_48(v61);
  v63 = type metadata accessor for MusicMovie(v62);
  v64 = OUTLINED_FUNCTION_20(v63, &v174);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v65);
  v66 = sub_1D5613C48();
  v67 = OUTLINED_FUNCTION_12_0(v66, &v172);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_5_0();
  v69 = OUTLINED_FUNCTION_48(v68);
  v70 = type metadata accessor for EditorialItem(v69);
  v71 = OUTLINED_FUNCTION_20(v70, &v170);
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v72);
  v73 = sub_1D56141F8();
  v74 = OUTLINED_FUNCTION_12_0(v73, &v167);
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_5_0();
  v76 = OUTLINED_FUNCTION_48(v75);
  v77 = type metadata accessor for CreditArtist(v76);
  v78 = OUTLINED_FUNCTION_20(v77, &v165);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_5();
  v81 = v80 - v79;
  type metadata accessor for Composer(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_5();
  v85 = v84 - v83;
  v86 = sub_1D5613EF8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_5();
  v90 = v89 - v88;
  v91 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v93 = v92;
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_5();
  v97 = v96 - v95;
  type metadata accessor for GenericMusicItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_5();
  v101 = v100 - v99;
  sub_1D4F26680(v175, v100 - v99);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_172();
      (*(v124 + 32))(v90, v101, v86);
      sub_1D4E5E488(&qword_1EC7EF9B8, MEMORY[0x1E6976F28], MEMORY[0x1E6976F18]);
      sub_1D56132F8();
      (*(v91 + 8))(v90, v86);
      goto LABEL_27;
    case 2u:
      v115 = OUTLINED_FUNCTION_52_15();
      sub_1D50CC018(v115, v85, v116);
      sub_1D4E5E488(&qword_1EC7EF9A8, type metadata accessor for Composer, &protocol conformance descriptor for Composer);
      OUTLINED_FUNCTION_60_9(&qword_1EC7EF9B0);
      OUTLINED_FUNCTION_51_18();
      sub_1D56132F8();
      v117 = type metadata accessor for Composer;
      v118 = v85;
      goto LABEL_26;
    case 3u:
      OUTLINED_FUNCTION_23_33();
      sub_1D50CC018(v101, v81, v121);
      sub_1D4E5E488(&qword_1EC7EF998, type metadata accessor for CreditArtist, &protocol conformance descriptor for CreditArtist);
      OUTLINED_FUNCTION_60_9(&qword_1EC7EF9A0);
      OUTLINED_FUNCTION_51_18();
      sub_1D56132F8();
      v117 = type metadata accessor for CreditArtist;
      v118 = v81;
      goto LABEL_26;
    case 4u:
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_56_1();
      v111();
      sub_1D4E5E488(&qword_1EC7EF990, MEMORY[0x1E6977048], MEMORY[0x1E6977038]);
      goto LABEL_22;
    case 5u:
      v130 = OUTLINED_FUNCTION_52_15();
      v104 = v150;
      sub_1D50CC018(v130, v150, v131);
      sub_1D4E5E488(&qword_1EC7EB420, type metadata accessor for EditorialItem, &protocol conformance descriptor for EditorialItem);
      OUTLINED_FUNCTION_60_9(&qword_1EC7EF988);
      v132 = OUTLINED_FUNCTION_51_18();
      OUTLINED_FUNCTION_63_11(v132, v151);
      v107 = type metadata accessor for EditorialItem;
      goto LABEL_25;
    case 6u:
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_56_1();
      v135();
      sub_1D5613BD8();
      goto LABEL_23;
    case 7u:
      OUTLINED_FUNCTION_29_27();
      v104 = v152;
      sub_1D50CC018(v101, v152, v122);
      sub_1D4E5E488(&qword_1EDD592F8, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
      OUTLINED_FUNCTION_60_9(&qword_1EC7EA580);
      v123 = OUTLINED_FUNCTION_51_18();
      OUTLINED_FUNCTION_63_11(v123, v153);
      v107 = type metadata accessor for MusicMovie;
      goto LABEL_25;
    case 8u:
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_56_1();
      v140();
      sub_1D4E5E488(&qword_1EC7EA728, MEMORY[0x1E69754E8], MEMORY[0x1E69754D8]);
      goto LABEL_22;
    case 9u:
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_56_1();
      v114();
      sub_1D4E5E488(&qword_1EC7EB4E8, MEMORY[0x1E69773E0], MEMORY[0x1E69773D0]);
      goto LABEL_22;
    case 0xAu:
      OUTLINED_FUNCTION_28_30();
      v104 = v154;
      sub_1D50CC018(v101, v154, v138);
      sub_1D4E5E488(&qword_1EC7EE428, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
      OUTLINED_FUNCTION_60_9(&qword_1EC7EA530);
      v139 = OUTLINED_FUNCTION_51_18();
      OUTLINED_FUNCTION_63_11(v139, v155);
      v107 = type metadata accessor for Playlist.Folder;
      goto LABEL_25;
    case 0xBu:
      OUTLINED_FUNCTION_35_0();
      OUTLINED_FUNCTION_61_8();
      OUTLINED_FUNCTION_56_1();
      v110();
      sub_1D4E5E488(&qword_1EC7EF980, MEMORY[0x1E6977550], MEMORY[0x1E6977540]);
      goto LABEL_22;
    case 0xCu:
      OUTLINED_FUNCTION_35_0();
      v112 = OUTLINED_FUNCTION_61_8();
      v91 = v156;
      v113(v112);
      sub_1D4E5E488(&qword_1EC7EF978, MEMORY[0x1E69758A0], MEMORY[0x1E6975890]);
      goto LABEL_22;
    case 0xDu:
      OUTLINED_FUNCTION_27_26();
      v104 = v157;
      sub_1D50CC018(v101, v157, v133);
      sub_1D4E5E488(&qword_1EC7EE040, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
      OUTLINED_FUNCTION_60_9(&qword_1EC7EA600);
      v134 = OUTLINED_FUNCTION_51_18();
      OUTLINED_FUNCTION_63_11(v134, v158);
      v107 = type metadata accessor for SocialProfile;
      goto LABEL_25;
    case 0xEu:
      v97 = v159;
      v86 = v160;
      v108 = OUTLINED_FUNCTION_62_18();
      v91 = v161;
      v109(v108);
      sub_1D4E5E488(&qword_1EC7EA730, MEMORY[0x1E6976BE8], MEMORY[0x1E6976BD8]);
      goto LABEL_22;
    case 0xFu:
      v97 = v162;
      v86 = v163;
      v119 = OUTLINED_FUNCTION_62_18();
      v91 = v164;
      v120(v119);
      sub_1D4E5E488(&qword_1EC7EB4E0, MEMORY[0x1E6977180], MEMORY[0x1E6977170]);
LABEL_22:
      sub_1D56132F8();
LABEL_23:
      (*(v86 + 8))(v97, v91);
      goto LABEL_27;
    case 0x10u:
      OUTLINED_FUNCTION_26_31();
      v104 = v165;
      sub_1D50CC018(v101, v165, v105);
      sub_1D4E5E488(&qword_1EC7EA720, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
      OUTLINED_FUNCTION_60_9(&qword_1EC7EA578);
      v106 = OUTLINED_FUNCTION_51_18();
      OUTLINED_FUNCTION_63_11(v106, v166);
      v107 = type metadata accessor for TVEpisode;
      goto LABEL_25;
    case 0x11u:
      OUTLINED_FUNCTION_25_33();
      v104 = v167;
      sub_1D50CC018(v101, v167, v125);
      sub_1D4E5E488(&qword_1EC7EA438, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
      OUTLINED_FUNCTION_60_9(&qword_1EC7EA480);
      v126 = OUTLINED_FUNCTION_51_18();
      OUTLINED_FUNCTION_63_11(v126, v168);
      v107 = type metadata accessor for TVSeason;
      goto LABEL_25;
    case 0x12u:
      OUTLINED_FUNCTION_24_29();
      v104 = v169;
      sub_1D50CC018(v101, v169, v136);
      sub_1D4E5E488(&qword_1EC7EA390, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
      OUTLINED_FUNCTION_60_9(&qword_1EC7EA3A0);
      v137 = OUTLINED_FUNCTION_51_18();
      OUTLINED_FUNCTION_63_11(v137, v170);
      v107 = type metadata accessor for TVShow;
      goto LABEL_25;
    case 0x13u:
      v141 = OUTLINED_FUNCTION_52_15();
      v104 = v171;
      sub_1D50CC018(v141, v171, v142);
      sub_1D4E5E488(&qword_1EC7EA718, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
      OUTLINED_FUNCTION_60_9(&qword_1EC7EA588);
      v143 = OUTLINED_FUNCTION_51_18();
      OUTLINED_FUNCTION_63_11(v143, v172);
      v107 = type metadata accessor for UploadedAudio;
      goto LABEL_25;
    case 0x14u:
      v127 = OUTLINED_FUNCTION_52_15();
      v104 = v173;
      sub_1D50CC018(v127, v173, v128);
      sub_1D4E5E488(&qword_1EC7EA710, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
      OUTLINED_FUNCTION_60_9(&qword_1EC7EA590);
      v129 = OUTLINED_FUNCTION_51_18();
      OUTLINED_FUNCTION_63_11(v129, v174);
      v107 = type metadata accessor for UploadedVideo;
LABEL_25:
      v117 = v107;
      v118 = v104;
LABEL_26:
      sub_1D50CC074(v118, v117);
      goto LABEL_27;
    case 0x15u:
      OUTLINED_FUNCTION_53_9();
      OUTLINED_FUNCTION_11_28();
      OUTLINED_FUNCTION_71_9(v144, v145, v146, v147, v148, v149);
      __break(1u);
      return;
    default:
      v102 = OUTLINED_FUNCTION_62_18();
      v103(v102);
      sub_1D4E5E488(&qword_1EC7EB4F0, MEMORY[0x1E6976D28], MEMORY[0x1E6976D18]);
      sub_1D56132F8();
      (*(v93 + 8))(v97, v91);
LABEL_27:
      OUTLINED_FUNCTION_46();
      return;
  }
}

BOOL sub_1D50CBE6C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D5615EF8();

  return v2 != 0;
}

BOOL sub_1D50CBEBC@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D50CBE6C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D50CBF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D4E5E488(&qword_1EDD5C5F8, type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);

  return MEMORY[0x1EEDCE1E8](a1, a3, a2, a4, v8);
}

uint64_t sub_1D50CBF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D4E5E488(&qword_1EC7EB0E0, type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);

  return MEMORY[0x1EEDCE1E0](a1, a2, a3, v6);
}

uint64_t sub_1D50CC018(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_71();
  v5(v4);
  return a2;
}

uint64_t sub_1D50CC074(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *_s38LegacyModelGenericMusicItemPropertyKeyOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D50CC2E4()
{
  result = qword_1EDD5EFD8;
  if (!qword_1EDD5EFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EFD8);
  }

  return result;
}

unint64_t sub_1D50CC33C()
{
  result = qword_1EDD5EFE0;
  if (!qword_1EDD5EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EFE0);
  }

  return result;
}

unint64_t sub_1D50CC394()
{
  result = qword_1EDD5EFD0;
  if (!qword_1EDD5EFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EFD0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_42_19()
{

  return sub_1D5610CD8();
}

uint64_t OUTLINED_FUNCTION_65_15(uint64_t a1)
{

  return sub_1D560D4F8();
}

uint64_t OUTLINED_FUNCTION_66_9(uint64_t a1)
{

  return sub_1D560D4F8();
}

uint64_t OUTLINED_FUNCTION_67_14(uint64_t a1)
{

  return sub_1D560D588();
}

uint64_t OUTLINED_FUNCTION_71_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1D5615E08();
}

uint64_t type metadata accessor for SocialProfilePropertyProvider(uint64_t a1)
{
  result = qword_1EDD5DA40;
  if (!qword_1EDD5DA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D50CC588(uint64_t a1)
{
  sub_1D4EC11C4(319, &qword_1EDD5F190, MEMORY[0x1E6976F68], MEMORY[0x1E69E6720]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_1D4E518A0(319, &qword_1EDD5F550, MEMORY[0x1E69E6370]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_1D4EC11C4(319, &qword_1EDD5F540, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      if (v8 > 0x3F)
      {
        return v6;
      }

      sub_1D4EC11C4(319, &qword_1EDD5D050, MEMORY[0x1E6974D30], MEMORY[0x1E69E62F8]);
      if (v9 > 0x3F)
      {
        return v6;
      }

      v6 = sub_1D560D838();
      if (v10 > 0x3F)
      {
        return v6;
      }

      v6 = sub_1D5610088();
      if (v11 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_1D4E5CF94(319);
        v2 = v12;
        if (v13 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

uint64_t sub_1D50CC7B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF9F8, &unk_1D5633C40);
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002BLL, 0x80000001D567EC90);
    v48 = a1;
    sub_1D560CDE8();
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    v45 = *(&v46 + 1);
    v44 = v46;
    goto LABEL_45;
  }

  v15 = v14;
  v16 = qword_1EDD53F90;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_12_41(&qword_1EDD53F90);
  }

  *&v46 = qword_1EDD76898;
  v48 = v15;
  sub_1D50CE2E8();
  if (sub_1D5614D18())
  {
    sub_1D4E69910(v2, v13, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v17 = sub_1D56140F8();
    OUTLINED_FUNCTION_10(v13);
    if (!v18)
    {
      *(&v47 + 1) = v17;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v46);
      (*(*(v17 - 8) + 32))(boxed_opaque_existential_0, v13, v17);
LABEL_14:

      goto LABEL_15;
    }

    v19 = &qword_1EC7E9CA0;
    v20 = &unk_1D561A0C0;
    v21 = v13;
    goto LABEL_8;
  }

  v23 = qword_1EDD53F98;

  if (v23 != -1)
  {
    OUTLINED_FUNCTION_11_48(&qword_1EDD53F98);
  }

  OUTLINED_FUNCTION_1_2(qword_1EDD768A0);
  OUTLINED_FUNCTION_34_6();
  if (v23)
  {
    v24 = (v2 + *(type metadata accessor for SocialProfilePropertyProvider(0) + 20));
    v25 = v24[1];
    if (!v25)
    {
      v27 = 0;
      v26 = 0;
      goto LABEL_25;
    }

LABEL_13:
    v26 = *v24;

    v27 = MEMORY[0x1E69E6158];
LABEL_25:

    *a2 = v26;
    a2[1] = v25;
    a2[2] = 0;
    a2[3] = v27;
    return result;
  }

  v30 = qword_1EDD53FC0;

  if (v30 != -1)
  {
    OUTLINED_FUNCTION_10_50(&qword_1EDD53FC0);
  }

  OUTLINED_FUNCTION_1_2(qword_1EDD768B8);
  OUTLINED_FUNCTION_34_6();
  if (v30)
  {
    v31 = *(type metadata accessor for SocialProfilePropertyProvider(0) + 24);
  }

  else
  {
    v32 = qword_1EDD53F88;

    if (v32 != -1)
    {
      OUTLINED_FUNCTION_9_49(&qword_1EDD53F88);
    }

    OUTLINED_FUNCTION_1_2(qword_1EDD76890);
    OUTLINED_FUNCTION_34_6();
    if (v32)
    {
      v31 = *(type metadata accessor for SocialProfilePropertyProvider(0) + 28);
    }

    else
    {
      v33 = qword_1EDD53FD0;

      if (v33 != -1)
      {
        OUTLINED_FUNCTION_7_9(&qword_1EDD53FD0);
      }

      OUTLINED_FUNCTION_1_2(qword_1EDD768C0);
      OUTLINED_FUNCTION_34_6();
      if ((v33 & 1) == 0)
      {
        v36 = qword_1EDD53FA8;

        if (v36 != -1)
        {
          OUTLINED_FUNCTION_6_53(&qword_1EDD53FA8);
        }

        OUTLINED_FUNCTION_1_2(qword_1EDD768A8);
        OUTLINED_FUNCTION_34_6();
        if ((v36 & 1) == 0)
        {
          v37 = qword_1EDD53FB0;

          if (v37 != -1)
          {
            OUTLINED_FUNCTION_5_56(&qword_1EDD53FB0);
          }

          v38 = OUTLINED_FUNCTION_1_2(qword_1EDD768B0);

          if ((v38 & 1) == 0)
          {
            while (1)
            {
              *&v46 = 0;
              *(&v46 + 1) = 0xE000000000000000;
              sub_1D5615B68();
              MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
              v48 = a1;
              sub_1D560CDE8();
              sub_1D5615D48();
              MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
              v45 = *(&v46 + 1);
              v44 = v46;
LABEL_45:
              OUTLINED_FUNCTION_17_13("Fatal error", v42, v43, v44, v45, "MusicKitInternal/SocialProfilePropertyProvider.swift");
              __break(1u);
            }
          }

          v39 = type metadata accessor for SocialProfilePropertyProvider(0);
          sub_1D4E69910(v3 + *(v39 + 40), v9, &unk_1EC7E9CA8, &unk_1D561D1D0);
          v40 = sub_1D560C0A8();
          OUTLINED_FUNCTION_10(v9);
          if (!v18)
          {
            *(&v47 + 1) = v40;
            v41 = __swift_allocate_boxed_opaque_existential_0(&v46);
            (*(*(v40 - 8) + 32))(v41, v9, v40);
            goto LABEL_14;
          }

          v19 = &unk_1EC7E9CA8;
          v20 = &unk_1D561D1D0;
          v21 = v9;
LABEL_8:
          result = sub_1D4E50004(v21, v19, v20);
          v46 = 0u;
          v47 = 0u;
LABEL_15:
          v29 = v47;
          *a2 = v46;
          *(a2 + 1) = v29;
          return result;
        }

        v24 = (v2 + *(type metadata accessor for SocialProfilePropertyProvider(0) + 36));
        v25 = v24[1];
        if (!v25)
        {
          v26 = 0;
          v27 = 0;
          goto LABEL_25;
        }

        goto LABEL_13;
      }

      v31 = *(type metadata accessor for SocialProfilePropertyProvider(0) + 32);
    }
  }

  v34 = *(v2 + v31);

  v35 = MEMORY[0x1E69E6370];
  if (v34 == 2)
  {
    v35 = 0;
  }

  *a2 = v34 & 1;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = v35;
  return result;
}

void sub_1D50CCDA8(uint64_t a1, uint64_t a2)
{
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D567EB20);
  sub_1D560CDE8();
  sub_1D5615D48();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_17_13("Fatal error", v2, v3, 0, 0xE000000000000000, "MusicKitInternal/SocialProfilePropertyProvider.swift");
  __break(1u);
}

void sub_1D50CCE54(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF9F0, &unk_1D5633C30);
  if (swift_dynamicCastClass())
  {

    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002ALL, 0x80000001D5683EB0);
    sub_1D5615D48();
  }

  else
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000033, 0x80000001D5683E70);
    sub_1D560D0C8();
    sub_1D5616138();
  }

  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_17_13("Fatal error", v1, v2, 0, 0xE000000000000000, "MusicKitInternal/SocialProfilePropertyProvider.swift");
  __break(1u);
}

uint64_t sub_1D50CCFDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D5621E90;
  if (qword_1EDD53F90 != -1)
  {
    OUTLINED_FUNCTION_12_41(&qword_1EDD53F90);
  }

  *(v0 + 32) = qword_1EDD76898;
  v1 = qword_1EDD53F98;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_11_48(&qword_1EDD53F98);
  }

  *(v0 + 40) = qword_1EDD768A0;
  v2 = qword_1EDD53FC0;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_10_50(&qword_1EDD53FC0);
  }

  *(v0 + 48) = qword_1EDD768B8;
  v3 = qword_1EDD53F88;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_9_49(&qword_1EDD53F88);
  }

  *(v0 + 56) = qword_1EDD76890;
  v4 = qword_1EDD53FD0;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_7_9(&qword_1EDD53FD0);
  }

  *(v0 + 64) = qword_1EDD768C0;
  v5 = qword_1EDD53FA8;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_6_53(&qword_1EDD53FA8);
  }

  *(v0 + 72) = qword_1EDD768A8;
  v6 = qword_1EDD53FB0;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_5_56(&qword_1EDD53FB0);
  }

  *(v0 + 80) = qword_1EDD768B0;
  qword_1EDD76B58 = v0;
}

uint64_t sub_1D50CD18C(uint64_t a1, uint64_t a2)
{
  v89 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v86 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v84 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v84 - v10;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v88 = &v84 - v12;
  v13 = sub_1D56140F8();
  OUTLINED_FUNCTION_4();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v84 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB8, &unk_1D561B9C0);
  OUTLINED_FUNCTION_22(v24);
  OUTLINED_FUNCTION_11();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v84 - v27;
  v29 = *(v26 + 56);
  v90 = a1;
  sub_1D4E69910(a1, &v84 - v27, &qword_1EC7E9CA0, &unk_1D561A0C0);
  v91 = a2;
  sub_1D4E69910(a2, &v28[v29], &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_10(v28);
  if (v30)
  {
    OUTLINED_FUNCTION_10(&v28[v29]);
    if (v30)
    {
      sub_1D4E50004(v28, &qword_1EC7E9CA0, &unk_1D561A0C0);
      goto LABEL_14;
    }

LABEL_9:
    v31 = &qword_1EC7E9FB8;
    v32 = &unk_1D561B9C0;
    v33 = v28;
    goto LABEL_10;
  }

  sub_1D4E69910(v28, v23, &qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_10(&v28[v29]);
  if (v30)
  {
    (*(v15 + 8))(v23, v13);
    goto LABEL_9;
  }

  (*(v15 + 32))(v19, &v28[v29], v13);
  OUTLINED_FUNCTION_2_62();
  sub_1D50CE34C(v36, v37, MEMORY[0x1E6976F80]);
  v38 = sub_1D5614D18();
  v39 = *(v15 + 8);
  v39(v19, v13);
  v39(v23, v13);
  sub_1D4E50004(v28, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if ((v38 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v40 = type metadata accessor for SocialProfilePropertyProvider(0);
  v42 = v90;
  v41 = v91;
  OUTLINED_FUNCTION_21_2();
  if (v45)
  {
    if (!v43)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_31_0(v44);
    v48 = v30 && v46 == v47;
    if (!v48 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v43)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_6_7();
  if (v30)
  {
    if (v49 != 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v34 = 0;
    if (v49 == 2 || ((v49 ^ v50) & 1) != 0)
    {
      return v34 & 1;
    }
  }

  OUTLINED_FUNCTION_6_7();
  if (v30)
  {
    if (v51 != 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v34 = 0;
    if (v51 == 2 || ((v51 ^ v52) & 1) != 0)
    {
      return v34 & 1;
    }
  }

  OUTLINED_FUNCTION_6_7();
  if (v30)
  {
    if (v53 != 2)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

  v34 = 0;
  if (v53 != 2 && ((v53 ^ v54) & 1) == 0)
  {
LABEL_41:
    OUTLINED_FUNCTION_21_2();
    if (v57)
    {
      if (!v55)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_31_0(v56);
      v60 = v30 && v58 == v59;
      if (!v60 && (sub_1D5616168() & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if (v55)
    {
      goto LABEL_11;
    }

    v61 = v40[10];
    v62 = v88;
    v63 = *(v87 + 48);
    sub_1D4E69910(v42 + v61, v88, &unk_1EC7E9CA8, &unk_1D561D1D0);
    sub_1D4E69910(v41 + v61, v62 + v63, &unk_1EC7E9CA8, &unk_1D561D1D0);
    v64 = v89;
    OUTLINED_FUNCTION_4_18(v62, 1);
    if (v30)
    {
      OUTLINED_FUNCTION_4_18(v62 + v63, 1);
      if (v30)
      {
        sub_1D4E50004(v62, &unk_1EC7E9CA8, &unk_1D561D1D0);
LABEL_60:
        OUTLINED_FUNCTION_26_32(v40[11]);
        sub_1D4EF6F7C();
        if (v74 & 1) != 0 && (sub_1D560D6E8() & 1) != 0 && (sub_1D4F3B22C())
        {
          OUTLINED_FUNCTION_21_2();
          if (v77)
          {
            if (v75)
            {
              OUTLINED_FUNCTION_31_0(v76);
              v80 = v30 && v78 == v79;
              if (v80 || (sub_1D5616168() & 1) != 0)
              {
LABEL_72:
                OUTLINED_FUNCTION_26_32(v40[15]);
                sub_1D4F286E0();
                if (v81)
                {
                  OUTLINED_FUNCTION_26_32(v40[16]);
                  sub_1D4F286E0();
                  if (v82)
                  {
                    OUTLINED_FUNCTION_26_32(v40[17]);
                    sub_1D4F286E0();
                    if (v83)
                    {
                      sub_1D4F286E0();
                      return v34 & 1;
                    }
                  }
                }
              }
            }
          }

          else if (!v75)
          {
            goto LABEL_72;
          }
        }

LABEL_11:
        v34 = 0;
        return v34 & 1;
      }
    }

    else
    {
      v65 = v85;
      sub_1D4E69910(v62, v85, &unk_1EC7E9CA8, &unk_1D561D1D0);
      OUTLINED_FUNCTION_4_18(v62 + v63, 1);
      if (!v66)
      {
        v67 = v86;
        v68 = v62 + v63;
        v69 = v84;
        (*(v86 + 32))(v84, v68, v64);
        OUTLINED_FUNCTION_3_65();
        sub_1D50CE34C(v70, v71, MEMORY[0x1E6968FC8]);
        v72 = sub_1D5614D18();
        v73 = *(v67 + 8);
        v73(v69, v64);
        v73(v65, v64);
        sub_1D4E50004(v62, &unk_1EC7E9CA8, &unk_1D561D1D0);
        if ((v72 & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_60;
      }

      (*(v86 + 8))(v65, v64);
    }

    v31 = &qword_1EC7E9FB0;
    v32 = &qword_1D562C590;
    v33 = v62;
LABEL_10:
    sub_1D4E50004(v33, v31, v32);
    goto LABEL_11;
  }

  return v34 & 1;
}

void sub_1D50CD870(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v36 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v35 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = sub_1D56140F8();
  OUTLINED_FUNCTION_4();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v19);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - v21;
  sub_1D4E69910(v2, &v35 - v21, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if (__swift_getEnumTagSinglePayload(v22, 1, v12) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v14 + 32))(v18, v22, v12);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_62();
    sub_1D50CE34C(v23, v24, MEMORY[0x1E6976F78]);
    sub_1D5614CB8();
    (*(v14 + 8))(v18, v12);
  }

  v25 = type metadata accessor for SocialProfilePropertyProvider(0);
  if (*(v2 + v25[5] + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v2 + v25[6]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  if (*(v2 + v25[7]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  if (*(v2 + v25[8]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  if (*(v2 + v25[9] + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4E69910(v2 + v25[10], v11, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_4_18(v11, 1);
  if (v26)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v28 = v35;
    v27 = v36;
    (*(v36 + 32))(v35, v11, v3);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_3_65();
    sub_1D50CE34C(v29, v30, MEMORY[0x1E6968FC0]);
    sub_1D5614CB8();
    (*(v27 + 8))(v28, v3);
  }

  v31 = OUTLINED_FUNCTION_32_2();
  sub_1D4F070FC(v31, v32);
  sub_1D560D838();
  v33 = sub_1D50CE34C(&qword_1EDD53DC0, MEMORY[0x1E6974F58], MEMORY[0x1E6974F68]);
  OUTLINED_FUNCTION_42(v33);
  sub_1D5610088();
  v34 = sub_1D50CE34C(&qword_1EDD53358, MEMORY[0x1E6975BC8], MEMORY[0x1E6975BD8]);
  OUTLINED_FUNCTION_42(v34);
  if (*(v2 + v25[14] + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
  OUTLINED_FUNCTION_32_2();
  sub_1D4F31AC0();
}

uint64_t sub_1D50CDD50()
{
  sub_1D56162D8();
  sub_1D50CD870(v1);
  return sub_1D5616328();
}

void (*sub_1D50CDDA4(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  sub_1D50CC7B8(a2, v5);
  return sub_1D50CDE10;
}

void sub_1D50CDE10(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 64);
    sub_1D4E69910(v2, v2 + 32, &qword_1EC7E9F98, &qword_1D561C420);

    sub_1D50CCDA8(v4, v3);
  }

  sub_1D50CCDA8(v5, v5);
}

uint64_t sub_1D50CDE80(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D50CD870(v2);
  return sub_1D5616328();
}

uint64_t sub_1D50CDF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D50CE34C(&qword_1EC7EF9E8, type metadata accessor for SocialProfilePropertyProvider, &unk_1D5633B58);

  return MEMORY[0x1EEDD02B8](a1, a4, a3, v7);
}

uint64_t sub_1D50CDF98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  sub_1D560D838();
  OUTLINED_FUNCTION_14();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_1D50CE004(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D50CE09C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_1D5610088();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D50CE110(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 56));

  return v2;
}

uint64_t sub_1D50CE154(uint64_t a1)
{
  v2 = sub_1D50CE34C(&qword_1EC7EF9E8, type metadata accessor for SocialProfilePropertyProvider, &unk_1D5633B58);

  return MEMORY[0x1EEDD02B0](a1, v2);
}

uint64_t sub_1D50CE1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D50CE34C(&qword_1EC7EF9D8, type metadata accessor for SocialProfilePropertyProvider, &unk_1D5633B30);

  return MEMORY[0x1EEDD0328](a1, a3, a2, a4, v8);
}

uint64_t sub_1D50CE264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D50CE34C(&qword_1EC7EF9E0, type metadata accessor for SocialProfilePropertyProvider, &unk_1D5633AF0);

  return MEMORY[0x1EEDD0320](a1, a2, a3, v6);
}

unint64_t sub_1D50CE2E8()
{
  result = qword_1EC7EFA00;
  if (!qword_1EC7EFA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF9F8, &unk_1D5633C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFA00);
  }

  return result;
}

uint64_t sub_1D50CE34C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t MusicLibrary.UndoDislikeAction.UnsupportedReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D50CE428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v94 = a4;
  v96 = a1;
  v97 = a2;
  v98 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v92 = &v86 - v8;
  v95 = a3;
  v9 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v86 = &v86 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v89 = &v86 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v90 = &v86 - v17;
  v91 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v88 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v87 = v21 - v20;
  v22 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v93 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v86 - v29;
  v31 = sub_1D560D3F8();
  OUTLINED_FUNCTION_4();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  v37 = v36 - v35;
  sub_1D560D398();
  v38 = sub_1D560D3D8();
  (*(v33 + 8))(v37, v31);
  if ((v38 & 1) == 0)
  {
    (*(v9 + 16))(v12, v96, v95);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
    if (swift_dynamicCast())
    {
      sub_1D4E48324(&v109, v112);
      __swift_project_boxed_opaque_existential_1(v112, v113);
      sub_1D560DB68();
      if (*(&v104 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
        if (swift_dynamicCast())
        {
          if (v107)
          {
            sub_1D4E48324(&v106, &v109);
            v40 = v110;
            __swift_project_boxed_opaque_existential_1(&v109, v110);
            sub_1D4F5E39C(v40, &v106);
            goto LABEL_55;
          }
        }

        else
        {
          v108 = 0;
          *&v56 = OUTLINED_FUNCTION_2_63();
          *v57 = v56;
          v57[1] = v56;
        }
      }

      else
      {
        sub_1D4E6C9CC(&v103, &qword_1EC7EEC40, &unk_1D561C070);
        *&v54 = OUTLINED_FUNCTION_2_63();
        *v55 = v54;
        v55[1] = v54;
        v108 = 0;
      }

      v58 = &qword_1EC7EC548;
      v59 = &qword_1D5621090;
      v60 = &v106;
      goto LABEL_21;
    }

    v111 = 0;
    *&v44 = OUTLINED_FUNCTION_2_63();
    *(v45 + 48) = v44;
    *(v45 + 64) = v44;
    v46 = &qword_1EC7EC548;
    v47 = &qword_1D5621090;
LABEL_39:
    result = sub_1D4E6C9CC(&v109, v46, v47);
    goto LABEL_40;
  }

  result = sub_1D560F0C8();
  if (result)
  {
LABEL_3:
    *v98 = 5;
    return result;
  }

  v41 = v95;
  v42 = v96;
  sub_1D560EC98();
  sub_1D560D5C8();
  (*(v93 + 8))(v27, v22);
  v43 = sub_1D560D4C8();
  if (__swift_getEnumTagSinglePayload(v30, 1, v43) == 1)
  {
    sub_1D4E6C9CC(v30, &unk_1EC7EBF20, &unk_1D561F530);
  }

  else
  {
    v48 = sub_1D560D488();
    v50 = v49;
    (*(*(v43 - 8) + 8))(v30, v43);
    if (v48 == _s8MusicKit0A7LibraryC0aB8InternalE2idSSvg_0() && v50 == v51)
    {

      v42 = v96;
    }

    else
    {
      v53 = sub_1D5616168();

      v42 = v96;
      if ((v53 & 1) == 0)
      {
        goto LABEL_3;
      }
    }
  }

  v61 = *(v9 + 16);
  v61(v90, v42, v41);
  v62 = v92;
  v63 = v91;
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v63);
    v65 = v87;
    v64 = v88;
    (*(v88 + 32))(v87, v62, v63);
    Playlist.variant.getter();
    result = (*(v64 + 8))(v65, v63);
    if (LOBYTE(v112[0]) == 3)
    {
      goto LABEL_40;
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v62, 1, 1, v63);
    sub_1D4E6C9CC(v62, &unk_1EC7F1990, &unk_1D561CEF0);
  }

  v66 = v89;
  v61(v89, v42, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC508, &unk_1D5633D40);
  if ((OUTLINED_FUNCTION_3_66(&v109, v66, v41) & 1) == 0)
  {
    v111 = 0;
    *&v77 = OUTLINED_FUNCTION_2_63();
    *(v78 + 48) = v77;
    *(v78 + 64) = v77;
    v46 = &qword_1EC7EC510;
    v47 = &unk_1D5621040;
    goto LABEL_39;
  }

  sub_1D4E48324(&v109, v112);
  v67 = v113;
  v68 = v114;
  __swift_project_boxed_opaque_existential_1(v112, v113);
  (*(v68 + 24))(&v106, v67, v68);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if ((OUTLINED_FUNCTION_3_66(&v103, &v106, v69) & 1) == 0)
  {
    v105 = 0;
    v103 = 0u;
    v104 = 0u;
    v58 = &qword_1EC7EC510;
    v59 = &unk_1D5621040;
    v60 = &v103;
LABEL_21:
    sub_1D4E6C9CC(v60, v58, v59);
    result = __swift_destroy_boxed_opaque_existential_1(v112);
LABEL_40:
    *v98 = 0;
    return result;
  }

  sub_1D4E48324(&v103, &v109);
  v70 = v86;
  v71 = v95;
  v61(v86, v96, v95);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
  if (OUTLINED_FUNCTION_3_66(&v103, v70, v71))
  {
    sub_1D4E48324(&v103, &v106);
    __swift_project_boxed_opaque_existential_1(&v106, v107);
    sub_1D560DB68();
    if (v99[3])
    {
      if (OUTLINED_FUNCTION_3_66(&v100, v99, v69))
      {
        if (*(&v101 + 1))
        {
          sub_1D4E48324(&v100, &v103);
          v73 = *(&v104 + 1);
          v72 = v105;
          v74 = __swift_project_boxed_opaque_existential_1(&v103, *(&v104 + 1));
          sub_1D4F67E14(v74, v73, v72);
          if ((v100 & 0xC0) == 0x40)
          {
            v75 = v100 & 0x3F;
            if (v75 == 1 || v75 == 2)
            {
              v76 = 3;
              goto LABEL_61;
            }

            if (v75 == 6)
            {
              v76 = 2;
LABEL_61:
              *v98 = v76;
              __swift_destroy_boxed_opaque_existential_1(&v103);
              __swift_destroy_boxed_opaque_existential_1(&v106);
              goto LABEL_59;
            }
          }

          __swift_destroy_boxed_opaque_existential_1(&v103);
          __swift_destroy_boxed_opaque_existential_1(&v106);
          goto LABEL_54;
        }
      }

      else
      {
        v102 = 0;
        v100 = 0u;
        v101 = 0u;
      }
    }

    else
    {
      sub_1D4E6C9CC(v99, &qword_1EC7EEC40, &unk_1D561C070);
      v100 = 0u;
      v101 = 0u;
      v102 = 0;
    }

    sub_1D4E6C9CC(&v100, &qword_1EC7EC548, &qword_1D5621090);
    __swift_destroy_boxed_opaque_existential_1(&v106);
  }

  else
  {
    v105 = 0;
    v103 = 0u;
    v104 = 0u;
    sub_1D4E6C9CC(&v103, &qword_1EC7EC548, &qword_1D5621090);
  }

  v79 = objc_opt_self();
  v80 = [objc_opt_self() autoupdatingActiveAccount];
  v81 = [v79 sharedMonitorForIdentity_];

  v82 = [v81 subscriptionStatus];
  if (!v82 || (v83 = [v82 capabilities], v82, (v83 & 1) != 0))
  {
    sub_1D4E5A1CC();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D560C8F8();

    if (v106 == 2 || v106 != 3 && (v106 & 1) == 0)
    {
LABEL_54:
      v85 = v110;
      __swift_project_boxed_opaque_existential_1(&v109, v110);
      sub_1D4F68014(v85, &v106);
LABEL_55:
      if (v106 > 1u)
      {
        v84 = 6;
      }

      else
      {
        v84 = 1;
      }

      goto LABEL_58;
    }

    v84 = 3;
  }

  else
  {
    v84 = 2;
  }

LABEL_58:
  *v98 = v84;
LABEL_59:
  __swift_destroy_boxed_opaque_existential_1(&v109);
  return __swift_destroy_boxed_opaque_existential_1(v112);
}

unint64_t sub_1D50CEF3C()
{
  result = qword_1EC7EFA08;
  if (!qword_1EC7EFA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFA08);
  }

  return result;
}

_BYTE *_s17UndoDislikeActionVwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s17UndoDislikeActionV17UnsupportedReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D50CF150(uint64_t result, int a2, int a3)
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

unint64_t sub_1D50CF1A0()
{
  result = qword_1EC7EFA10;
  if (!qword_1EC7EFA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFA10);
  }

  return result;
}

uint64_t type metadata accessor for StorePlatformComposer(uint64_t a1)
{
  result = qword_1EDD55A28;
  if (!qword_1EDD55A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D50CF268(uint64_t a1)
{
  sub_1D4F18AF4();
  if (v1 <= 0x3F)
  {
    sub_1D500A1D4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

BOOL sub_1D50CF334(void *a1, void *a2)
{
  v4 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v19 = a1[1];
  v20 = a2[1];
  if (v19)
  {
    if (!v20)
    {
      return 0;
    }

    v21 = *a1 == *a2 && v19 == v20;
    if (!v21 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v22 = *(type metadata accessor for StorePlatformComposer(0) + 20);
  v23 = *(v15 + 48);
  sub_1D50D019C(a1 + v22, v18);
  sub_1D50D019C(a2 + v22, &v18[v23]);
  OUTLINED_FUNCTION_10(v18);
  if (v21)
  {
    OUTLINED_FUNCTION_10(&v18[v23]);
    if (v21)
    {
      sub_1D4E50004(v18, &unk_1EC7E9CA8, &unk_1D561D1D0);
      return 1;
    }

    goto LABEL_18;
  }

  sub_1D50D019C(v18, v14);
  OUTLINED_FUNCTION_10(&v18[v23]);
  if (v24)
  {
    (*(v6 + 8))(v14, v4);
LABEL_18:
    sub_1D4E50004(v18, &qword_1EC7E9FB0, &qword_1D562C590);
    return 0;
  }

  (*(v6 + 32))(v10, &v18[v23], v4);
  OUTLINED_FUNCTION_0_81();
  sub_1D50D0320(v26, v27, MEMORY[0x1E6968FC8]);
  v28 = sub_1D5614D18();
  v29 = *(v6 + 8);
  v29(v10, v4);
  v29(v14, v4);
  sub_1D4E50004(v18, &unk_1EC7E9CA8, &unk_1D561D1D0);
  return (v28 & 1) != 0;
}

uint64_t sub_1D50CF5F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1D5616168();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D50CF6C0(char a1)
{
  if (a1)
  {
    return 7107189;
  }

  else
  {
    return 1701667182;
  }
}