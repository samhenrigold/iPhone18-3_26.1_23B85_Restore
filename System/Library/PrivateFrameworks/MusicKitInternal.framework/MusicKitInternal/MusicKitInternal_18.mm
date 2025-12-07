uint64_t sub_1D500E484(uint64_t a1, uint64_t a2)
{
  sub_1D500EAE4(&unk_1EC7EDDD8);

  return sub_1D5612A28();
}

unint64_t sub_1D500E508()
{
  result = qword_1EC7EDD80;
  if (!qword_1EC7EDD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDD80);
  }

  return result;
}

unint64_t sub_1D500E55C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v4();
    result = OUTLINED_FUNCTION_73_2();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D500E5CC()
{
  result = qword_1EC7EDD88;
  if (!qword_1EC7EDD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EDD58, qword_1D5636D90);
    sub_1D500EAE4(&unk_1EC7EDD90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDD88);
  }

  return result;
}

unint64_t sub_1D500E680()
{
  result = qword_1EC7EDD98;
  if (!qword_1EC7EDD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EDD68, qword_1D56285B0);
    sub_1D500EAE4(&unk_1EC7EDDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDD98);
  }

  return result;
}

unint64_t sub_1D500E734(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC480, &unk_1D56222E0);
    v4();
    result = OUTLINED_FUNCTION_73_2();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D500E7A4()
{
  result = qword_1EC7EDDB0;
  if (!qword_1EC7EDDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EDD58, qword_1D5636D90);
    sub_1D500EAE4(&unk_1EC7EDDB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDDB0);
  }

  return result;
}

unint64_t sub_1D500E858()
{
  result = qword_1EC7EDDC0;
  if (!qword_1EC7EDDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EDD68, qword_1D56285B0);
    sub_1D500EAE4(&unk_1EC7EDDC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDDC0);
  }

  return result;
}

uint64_t sub_1D500E90C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_71();
  v5(v4);
  return a2;
}

uint64_t sub_1D500E968(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D500E9C0()
{
  v2 = type metadata accessor for StorePlatformTVEpisode(0);
  v3 = *(v0 + *(v2 + 76));
  if (v3 == 2)
  {
    OUTLINED_FUNCTION_11_32();
    sub_1D500EAE4(v4);
    OUTLINED_FUNCTION_13_30(&unk_1EC7EDDD8);
    OUTLINED_FUNCTION_104();
    if ((sub_1D5612A28() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if ((v3 & 1) == 0)
  {
    goto LABEL_13;
  }

  v5 = *(v0 + *(v2 + 112));
  if (v5 != 26)
  {
    v7 = OUTLINED_FUNCTION_54_9(v5);
    if (v7 != v0 || v8 != v1)
    {
      OUTLINED_FUNCTION_63_8(v7);
      OUTLINED_FUNCTION_70_2();
      v6 = v0 ^ 1;
      return v6 & 1;
    }

LABEL_13:
    v6 = 0;
    return v6 & 1;
  }

  v6 = 1;
  return v6 & 1;
}

uint64_t sub_1D500EA9C()
{
  v0 = sub_1D5610088();
  __swift_allocate_value_buffer(v0, qword_1EC87BF30);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  return sub_1D5610078();
}

unint64_t sub_1D500EAE4(uint64_t a1)
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

_BYTE *storeEnumTagSinglePayload for StorePlatformTVEpisode.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE6)
  {
    v6 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
          *result = a2 + 25;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D500EC08()
{
  result = qword_1EC7EDDE0;
  if (!qword_1EC7EDDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDDE0);
  }

  return result;
}

unint64_t sub_1D500EC60()
{
  result = qword_1EC7EDDE8;
  if (!qword_1EC7EDDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDDE8);
  }

  return result;
}

unint64_t sub_1D500ECB8()
{
  result = qword_1EC7EDDF0[0];
  if (!qword_1EC7EDDF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC7EDDF0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_34_18(uint64_t a1, uint64_t a2)
{

  return sub_1D5615F78();
}

uint64_t MusicLibraryMapping.MappedSection.content.getter@<X0>(uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a2, v2, AssociatedTypeWitness);
}

uint64_t sub_1D500EE5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  result = type metadata accessor for MusicLibraryMapping.MappedSection(0, a3, a4, v11);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t static MusicLibraryMapping.MappedSection<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  if (sub_1D5614D18())
  {
    type metadata accessor for MusicLibraryMapping.MappedSection(0, a3, a4, v6);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    type metadata accessor for MusicLibraryMapping.MappedItem(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
    swift_getWitnessTable();
    v10 = sub_1D56152F8();
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t MusicLibraryMapping.MappedSection<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  sub_1D5614CB8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for MusicLibraryMapping.MappedItem(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  swift_getWitnessTable();
  return sub_1D56152E8();
}

uint64_t MusicLibraryMapping.MappedSection<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D56162D8();
  MusicLibraryMapping.MappedSection<>.hash(into:)(v7, a1, v5, a3);
  return sub_1D5616328();
}

uint64_t sub_1D500F220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 16);
  sub_1D56162D8();
  MusicLibraryMapping.MappedSection<>.hash(into:)(v7, a2, v5, v4);
  return sub_1D5616328();
}

uint64_t MusicLibraryMapping.MappedSection<>.id.getter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();

  return sub_1D5615B88();
}

uint64_t sub_1D500F34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1D500F3BC(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    type metadata accessor for MusicLibraryMapping.MappedItem(255, AssociatedTypeWitness, AssociatedConformanceWitness, v5);
    result = sub_1D56152D8();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D500F4C4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  result = swift_getAssociatedTypeWitness();
  v6 = *(*(result - 8) + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(result - 8) + 84);
  }

  v8 = *(*(result - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v6 < 0x7FFFFFFF)
    {
      v16 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {

      return __swift_getEnumTagSinglePayload(a1, v6, result);
    }
  }

  else
  {
    v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = a2 - v7 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *a1;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1D500F654(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  v11 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v10 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v12 = a3 - v9 + 1;
  }

  else
  {
    v12 = 2;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v9 < a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *(a1 + v11) = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v8 < 0x7FFFFFFF)
          {
            v18 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v19 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v19 = (a2 - 1);
            }

            *v18 = v19;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v8, AssociatedTypeWitness);
          }
        }

        break;
    }
  }

  else
  {
    if (((v10 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v10 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v11) = v16;
        break;
      case 2:
        *(a1 + v11) = v16;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *(a1 + v11) = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t MusicDownloadedSongCatalogPropertiesRequest.init(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1D4E58A28();
  a2[1] = v4;
  sub_1D4E58A28();
  a2[2] = v5;
  type metadata accessor for MusicDownloadedSongCatalogPropertiesRequest(0);
  result = _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  *a2 = a1;
  return result;
}

uint64_t MusicDownloadedSongCatalogPropertiesRequest.requiredProperties.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t MusicDownloadedSongCatalogPropertiesRequest.optionalProperties.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t MusicDownloadedSongCatalogPropertiesRequest._configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicDownloadedSongCatalogPropertiesRequest(0) + 28);
  sub_1D560CD48();
  OUTLINED_FUNCTION_14();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t MusicDownloadedSongCatalogPropertiesRequest._configuration.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MusicDownloadedSongCatalogPropertiesRequest(0) + 28);
  sub_1D560CD48();
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t MusicDownloadedSongCatalogPropertiesRequest.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  v3 = OUTLINED_FUNCTION_22(v2);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  type metadata accessor for MusicDownloadedSongCatalogPropertiesRequest(0);
  sub_1D560CCE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  v9 = type metadata accessor for MusicRequestConfiguration(0);
  v10 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v8, v10 ^ 1u, 1, v9);
  sub_1D4FB8150();
  if (__swift_getEnumTagSinglePayload(v6, 1, v9) == 1)
  {
    static MusicRequestConfiguration.globalDefault.getter(a1);
    if (__swift_getEnumTagSinglePayload(v6, 1, v9) != 1)
    {
      sub_1D4E50004(v6, &qword_1EC7EA838, &unk_1D561CB10);
    }
  }

  else
  {
    sub_1D50121C4();
  }

  return sub_1D4E50004(v8, &qword_1EC7EA838, &unk_1D561CB10);
}

uint64_t sub_1D500FC64(uint64_t a1)
{
  v1 = type metadata accessor for MusicRequestConfiguration(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D501216C();
  return MusicDownloadedSongCatalogPropertiesRequest.configuration.setter(v3);
}

uint64_t MusicDownloadedSongCatalogPropertiesRequest.configuration.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D560CD48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicRequestConfiguration(0);
  OUTLINED_FUNCTION_0_48();
  sub_1D5012124(v8, v9, &protocol conformance descriptor for MusicRequestConfiguration);
  sub_1D560E6C8();
  OUTLINED_FUNCTION_5_32();
  sub_1D4E584B8(a1, v10);
  v11 = type metadata accessor for MusicDownloadedSongCatalogPropertiesRequest(0);
  return (*(v5 + 40))(v2 + *(v11 + 28), v7, v4);
}

void (*MusicDownloadedSongCatalogPropertiesRequest.configuration.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1D560CD48();
  v3[1] = v4;
  OUTLINED_FUNCTION_69(v4);
  v3[2] = v5;
  v3[3] = __swift_coroFrameAllocStub(*(v6 + 64));
  v7 = type metadata accessor for MusicRequestConfiguration(0);
  v3[4] = v7;
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[6] = v10;
  MusicDownloadedSongCatalogPropertiesRequest.configuration.getter(v10);
  return sub_1D500FF18;
}

void sub_1D500FF18(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 24);
  if (a2)
  {
    sub_1D501216C();
    OUTLINED_FUNCTION_0_48();
    sub_1D5012124(v6, v7, &protocol conformance descriptor for MusicRequestConfiguration);
    sub_1D560E6C8();
    sub_1D4E584B8(v3, type metadata accessor for MusicRequestConfiguration);
    v8 = type metadata accessor for MusicDownloadedSongCatalogPropertiesRequest(0);
    v9 = OUTLINED_FUNCTION_52_1(v8);
    v10(v9);
    sub_1D4E584B8(v4, type metadata accessor for MusicRequestConfiguration);
  }

  else
  {
    OUTLINED_FUNCTION_0_48();
    sub_1D5012124(v11, v12, &protocol conformance descriptor for MusicRequestConfiguration);
    sub_1D560E6C8();
    OUTLINED_FUNCTION_5_32();
    sub_1D4E584B8(v4, v13);
    v14 = type metadata accessor for MusicDownloadedSongCatalogPropertiesRequest(0);
    v15 = OUTLINED_FUNCTION_52_1(v14);
    v16(v15);
  }

  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t MusicDownloadedSongCatalogPropertiesRequest.response()()
{
  OUTLINED_FUNCTION_60();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFC0, &qword_1D564EA20);
  OUTLINED_FUNCTION_22(v3);
  v1[4] = OUTLINED_FUNCTION_127();
  v4 = _s10PropertiesVMa(0);
  v1[5] = v4;
  OUTLINED_FUNCTION_22(v4);
  v1[6] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D5010138()
{
  OUTLINED_FUNCTION_60();
  if (qword_1EDD5A0C8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1D50101F8;

  return sub_1D52CC5A4();
}

uint64_t sub_1D50101F8(uint64_t a1)
{
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  v5[8] = a1;

  if (v1)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v5[9] = v12;
    *v12 = v7;
    v12[1] = sub_1D501036C;
    v13 = v5[4];

    return sub_1D4F44D0C(v13, a1);
  }
}

uint64_t sub_1D501036C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D5010458()
{
  v1 = v0[5];
  v2 = OUTLINED_FUNCTION_35_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, v3, v1);
  v5 = v0[6];
  if (EnumTagSinglePayload == 1)
  {
    v6 = [objc_opt_self() hours];
    sub_1D4F441CC();
    sub_1D560BA48();
    *v5 = xmmword_1D561F5F0;
    v7 = MEMORY[0x1E69E7CC0];
    *(v5 + v1[7]) = MEMORY[0x1E69E7CC0];
    *(v5 + v1[8]) = v7;
    *(v5 + v1[9]) = v7;
    *(v5 + v1[10]) = v7;
    v8 = OUTLINED_FUNCTION_35_1();
    if (__swift_getEnumTagSinglePayload(v8, v9, v1) != 1)
    {
      sub_1D4E50004(v0[4], &qword_1EC7EBFC0, &qword_1D564EA20);
    }
  }

  else
  {
    sub_1D50121C4();
  }

  v10 = swift_task_alloc();
  v0[10] = v10;
  *v10 = v0;
  v10[1] = sub_1D5010670;

  return sub_1D5010860();
}

uint64_t sub_1D50105EC()
{
  OUTLINED_FUNCTION_60();
  sub_1D5011BDC();
  swift_allocError();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D5010670()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5010770()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_36();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D50107E8()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_9_36();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D5010860()
{
  OUTLINED_FUNCTION_60();
  v1[26] = v2;
  v1[27] = v0;
  v1[24] = v3;
  v1[25] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE0, &qword_1D5628A60);
  OUTLINED_FUNCTION_22(v5);
  v1[28] = OUTLINED_FUNCTION_127();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEE8, &qword_1D5628A68);
  OUTLINED_FUNCTION_22(v6);
  v1[29] = OUTLINED_FUNCTION_127();
  v7 = sub_1D560C328();
  v1[30] = v7;
  OUTLINED_FUNCTION_69(v7);
  v1[31] = v8;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v9 = type metadata accessor for MusicDownloadedSongCatalogProperties(0);
  v1[36] = v9;
  OUTLINED_FUNCTION_69(v9);
  v1[37] = v10;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v11 = type metadata accessor for MusicDownloadedSongCatalogPropertiesRequest(0);
  OUTLINED_FUNCTION_22(v11);
  v1[40] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D5010A10()
{
  v13 = v0;
  if (qword_1EDD54478 != -1)
  {
    swift_once();
  }

  v1 = sub_1D560C758();
  __swift_project_value_buffer(v1, qword_1EDD76A90);
  OUTLINED_FUNCTION_71();
  sub_1D501216C();
  v2 = sub_1D560C738();
  v3 = sub_1D56156E8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    sub_1D4F53BAC();
    v6 = sub_1D5615598();
    v8 = v7;
    OUTLINED_FUNCTION_10_36();
    v9 = sub_1D4E6835C(v6, v8, &v12);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_1D4E3F000, v2, v3, "REQUEST: Fetching properties for %{public}s.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1DA6ED200](v5, -1, -1);
    MEMORY[0x1DA6ED200](v4, -1, -1);
  }

  else
  {

    OUTLINED_FUNCTION_10_36();
  }

  v10 = *(v0 + 200);

  return MEMORY[0x1EEE6DFA0](sub_1D5010BF0, v10, 0);
}

uint64_t sub_1D5010BF0()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[25];
  v0[41] = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_connection);
  v0[42] = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_databaseQueue);

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D5010C80()
{
  v1 = swift_task_alloc();
  *(v0 + 344) = v1;
  *v1 = v0;
  v1[1] = sub_1D5010D40;

  return sub_1D51BA21C();
}

uint64_t sub_1D5010D40()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 352) = v5;
  *(v3 + 360) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

unint64_t sub_1D5010E54()
{
  v1 = *(v0 + 352);
  sub_1D4F53BAC();
  v2 = sub_1D5614BD8();
  result = *(v0 + 352);
  v61 = *(v1 + 16);
  v62 = v1;
  if (!v61)
  {
LABEL_39:

    **(v0 + 192) = v2;

    OUTLINED_FUNCTION_55();

    return v57();
  }

  v4 = 0;
  v64 = *(v0 + 288);
  v60 = *(v0 + 296);
  v58 = *(v0 + 312);
  v5 = &qword_1EC7EDF00;
  while (1)
  {
    if (v4 >= *(v62 + 16))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return result;
    }

    v6 = *(v0 + 312);
    v7 = *(v60 + 72);
    OUTLINED_FUNCTION_7_33();
    sub_1D501216C();
    v8 = *(v6 + *(v64 + 48));
    if ((v8 & 0x40) != 0)
    {
      memmove((v0 + 16), (*(v0 + 312) + *(v64 + 28)), 0xB0uLL);
      if (sub_1D5012280(v0 + 16) != 1 && (*(v0 + 168) & 1) == 0)
      {
        v36 = *(v0 + 160);
        v37 = *(v0 + 208);
        v38 = *(v37 + *(_s10PropertiesVMa(0) + 28));
        v39 = *(v38 + 16);
        v40 = (v38 + 32);
        while (v39)
        {
          v41 = *v40++;
          --v39;
          if (v41 == v36)
          {
            goto LABEL_37;
          }
        }
      }
    }

    v63 = v7;
    if ((v8 & 4) == 0)
    {
      goto LABEL_10;
    }

    v9 = v5;
    sub_1D4FB8150();
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, &unk_1D5628A80);
    v10 = OUTLINED_FUNCTION_35_1();
    if (__swift_getEnumTagSinglePayload(v10, v11, v12) == 1)
    {
      sub_1D4E50004(*(v0 + 232), &qword_1EC7EDEE8, &qword_1D5628A68);
LABEL_10:
      if ((v8 & 0x10) != 0)
      {
LABEL_11:
        sub_1D4FB8150();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEF8, &qword_1D5628A78);
        v13 = OUTLINED_FUNCTION_35_1();
        if (__swift_getEnumTagSinglePayload(v13, v14, v15) == 1)
        {
          sub_1D4E50004(*(v0 + 224), &qword_1EC7EDEE0, &qword_1D5628A60);
        }

        else
        {
          v26 = *(v0 + 224);
          v59 = *(v0 + 208);
          v27 = OUTLINED_FUNCTION_19_25();
          v28(v27);
          sub_1D4E50004(v26, &qword_1EC7EDEF8, &qword_1D5628A78);
          v29 = OUTLINED_FUNCTION_15_28();
          v30(v29);
          v31 = 0;
          v32 = *(*(v59 + *(_s10PropertiesVMa(0) + 40)) + 16);
          while (v32 != v31)
          {
            v33 = sub_1D560BB08();
            OUTLINED_FUNCTION_69(v33);
            OUTLINED_FUNCTION_17_25();
            ++v31;
            if (sub_1D560BAF8())
            {
              v25 = *(v0 + 312);
              goto LABEL_21;
            }
          }

          v44 = OUTLINED_FUNCTION_27_19();
          v45(v44);
        }
      }

      goto LABEL_29;
    }

    v16 = *(v0 + 232);
    v17 = *(v0 + 208);
    v18 = OUTLINED_FUNCTION_19_25();
    v19(v18);
    sub_1D4E50004(v16, v9, &unk_1D5628A80);
    v20 = OUTLINED_FUNCTION_15_28();
    v21(v20);
    v22 = 0;
    v23 = *(*(v17 + *(_s10PropertiesVMa(0) + 36)) + 16);
    v5 = v9;
    while (v23 != v22)
    {
      v24 = sub_1D560BB08();
      OUTLINED_FUNCTION_69(v24);
      OUTLINED_FUNCTION_17_25();
      ++v22;
      if (sub_1D560BAF8())
      {
        v25 = *(v0 + 312);
LABEL_21:
        OUTLINED_FUNCTION_1_46(v25);
        v34 = OUTLINED_FUNCTION_15_28();
        result = v35(v34);
        goto LABEL_38;
      }
    }

    v42 = OUTLINED_FUNCTION_27_19();
    v43(v42);
    if ((v8 & 0x10) != 0)
    {
      goto LABEL_11;
    }

LABEL_29:
    v46 = **(v0 + 312);
    v47 = *(v58 + 8);
    OUTLINED_FUNCTION_7_33();
    sub_1D501216C();
    swift_isUniquelyReferenced_nonNull_native();
    result = sub_1D4F15A78();
    if (__OFADD__(v2[2], (v48 & 1) == 0))
    {
      goto LABEL_46;
    }

    v49 = result;
    v50 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEF0, &qword_1D5628A70);
    if (sub_1D5615D78())
    {
      break;
    }

LABEL_33:
    if (v50)
    {
      sub_1D501221C(*(v0 + 304), v2[7] + v49 * v63);
    }

    else
    {
      v2[(v49 >> 6) + 8] |= 1 << v49;
      v53 = (v2[6] + 16 * v49);
      *v53 = v46;
      v53[1] = v47;
      result = sub_1D50121C4();
      v54 = v2[2];
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_47;
      }

      v2[2] = v56;
    }

LABEL_37:
    result = OUTLINED_FUNCTION_1_46(*(v0 + 312));
LABEL_38:
    if (++v4 == v61)
    {
      goto LABEL_39;
    }
  }

  v51 = sub_1D4F15A78();
  if ((v50 & 1) == (v52 & 1))
  {
    v49 = v51;
    goto LABEL_33;
  }

  return sub_1D5616238();
}

uint64_t sub_1D5011530()
{

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t static MusicDownloadedSongCatalogPropertiesRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_69_0();
  sub_1D4F91528(*v0, *v1);
  if ((v2 & 1) == 0 || (sub_1D4FB8200() & 1) == 0 || (sub_1D4FB8200() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MusicDownloadedSongCatalogPropertiesRequest(0);

  return _s16MusicKitInternal0A18UserProfileRequestV2eeoiySbAC_ACtFZ_0();
}

uint64_t MusicDownloadedSongCatalogPropertiesRequest.hash(into:)(void *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_1D4FB6F44(a1, *v8, a3, a4, a5, a6, a7, a8);
  sub_1D4FB8204();
  sub_1D4FB8204();
  type metadata accessor for MusicDownloadedSongCatalogPropertiesRequest(0);
  sub_1D560CD48();
  OUTLINED_FUNCTION_6_35();
  sub_1D5012124(v9, v10, MEMORY[0x1E6974D28]);
  return sub_1D5614CB8();
}

uint64_t MusicDownloadedSongCatalogPropertiesRequest.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D4FB6F44(v10, *v0, v1, v2, v3, v4, v5, v6);
  sub_1D4FB8204();
  sub_1D4FB8204();
  type metadata accessor for MusicDownloadedSongCatalogPropertiesRequest(0);
  sub_1D560CD48();
  OUTLINED_FUNCTION_6_35();
  sub_1D5012124(v7, v8, MEMORY[0x1E6974D28]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D50117F4(uint64_t a1)
{
  sub_1D56162D8();
  MusicDownloadedSongCatalogPropertiesRequest.hash(into:)(v9, v1, v2, v3, v4, v5, v6, v7);
  return sub_1D5616328();
}

void sub_1D5011830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_30_14();
  v31 = v30;
  if (*(v30 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF10, &unk_1D5628A90), v32 = OUTLINED_FUNCTION_11_33(), v33 = v32, (v34 = *(v31 + 16)) != 0))
  {
    v35 = 0;
    v36 = v32 + 56;
    while (v35 < *(v31 + 16))
    {
      v37 = (v31 + 32 + 16 * v35);
      v39 = *v37;
      v38 = v37[1];
      ++v35;
      sub_1D56162D8();

      sub_1D5614E28();
      sub_1D5616328();
      OUTLINED_FUNCTION_16_26();
      v42 = ~v41;
      while (1)
      {
        v43 = v40 & v42;
        v44 = (v40 & v42) >> 6;
        v45 = *(v36 + 8 * v44);
        v46 = 1 << (v40 & v42);
        if ((v46 & v45) == 0)
        {
          break;
        }

        v47 = (*(v33 + 48) + 16 * v43);
        v48 = *v47 == v39 && v47[1] == v38;
        if (v48 || (sub_1D5616168() & 1) != 0)
        {

          goto LABEL_16;
        }

        v40 = v43 + 1;
      }

      *(v36 + 8 * v44) = v46 | v45;
      v49 = (*(v33 + 48) + 16 * v43);
      *v49 = v39;
      v49[1] = v38;
      OUTLINED_FUNCTION_20_33();
      if (v51)
      {
        goto LABEL_19;
      }

      *(v33 + 16) = v50;
LABEL_16:
      if (v35 == v34)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:

    OUTLINED_FUNCTION_31_19();
  }
}

void sub_1D5011990(uint64_t a1)
{
  v1 = a1;
  if (sub_1D4F0B2D8(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDEB0, &qword_1D5628A40);
    v2 = OUTLINED_FUNCTION_11_33();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v20 = sub_1D4E62628(v1);
  if (v20)
  {
    v3 = 0;
    v4 = v2 + 56;
    v18 = v1;
    v19 = v1 & 0xC000000000000001;
    v17 = v1 + 32;
    while (1)
    {
      sub_1D4F0B2FC();
      if (v19)
      {
        v5 = MEMORY[0x1DA6EB9B0](v3, v1);
      }

      else
      {
        v5 = *(v17 + 8 * v3);
      }

      v6 = __OFADD__(v3++, 1);
      if (v6)
      {
        break;
      }

      sub_1D560C818();
      OUTLINED_FUNCTION_4_31();
      sub_1D5012124(&qword_1EC7EDEB8, v7, MEMORY[0x1E695BF18]);
      sub_1D5614CA8();
      OUTLINED_FUNCTION_16_26();
      v10 = ~v9;
      while (1)
      {
        v11 = v8 & v10;
        v12 = (v8 & v10) >> 6;
        v13 = *(v4 + 8 * v12);
        v14 = 1 << (v8 & v10);
        if ((v14 & v13) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_4_31();
        sub_1D5012124(&qword_1EC7EDEC0, v15, MEMORY[0x1E695BF20]);
        if (sub_1D5614D18())
        {

          goto LABEL_17;
        }

        v8 = v11 + 1;
      }

      *(v4 + 8 * v12) = v14 | v13;
      *(*(v2 + 48) + 8 * v11) = v5;
      OUTLINED_FUNCTION_20_33();
      if (v6)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v16;
LABEL_17:
      v1 = v18;
      if (v3 == v20)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t type metadata accessor for MusicDownloadedSongCatalogPropertiesRequest(uint64_t a1)
{
  result = qword_1EC7EDE88;
  if (!qword_1EC7EDE88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D5011BDC()
{
  result = qword_1EC7EDE78;
  if (!qword_1EC7EDE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDE78);
  }

  return result;
}

void sub_1D5011C30(uint64_t a1)
{
  if (sub_1D4F0B2D8(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDED8, &qword_1D5628A58);
    v6 = OUTLINED_FUNCTION_11_33();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CD0];
  }

  if (sub_1D4E62628(a1))
  {
    OUTLINED_FUNCTION_26_22();
    while (1)
    {
      if (v4)
      {
        v7 = MEMORY[0x1DA6EB9B0](v2, a1);
      }

      else
      {
        if (v2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v7 = *(a1 + 32 + 8 * v2);
      }

      v8 = __OFADD__(v2++, 1);
      if (v8)
      {
        break;
      }

      sub_1D56162D8();
      MEMORY[0x1DA6EC0D0](v7);
      sub_1D5616328();
      while (1)
      {
        OUTLINED_FUNCTION_21_22();
        if (v13)
        {
          break;
        }

        if (*(*(v6 + 48) + 8 * v9) == v7)
        {

          goto LABEL_18;
        }
      }

      *(v3 + 8 * v10) = v12 | v11;
      *(*(v6 + 48) + 8 * v9) = v7;
      OUTLINED_FUNCTION_20_33();
      if (v8)
      {
        goto LABEL_21;
      }

      *(v6 + 16) = v14;
LABEL_18:
      if (v2 == v1)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_19:
  }
}

void sub_1D5011DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_30_14();
  v35 = v34;
  if (sub_1D4F0B2D8(v34))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDED0, &qword_1D5628A50);
    v36 = OUTLINED_FUNCTION_11_33();
  }

  else
  {
    v36 = MEMORY[0x1E69E7CD0];
  }

  if (sub_1D4E62628(v35))
  {
    OUTLINED_FUNCTION_26_22();
    while (1)
    {
      sub_1D4F0B2FC();
      if (v33)
      {
        v37 = MEMORY[0x1DA6EB9B0](v31, v35);
      }

      else
      {
        v37 = *(v35 + 32 + 8 * v31);
      }

      v38 = __OFADD__(v31++, 1);
      if (v38)
      {
        break;
      }

      sub_1D56162D8();
      sub_1D5614E28();
      sub_1D5616328();
      OUTLINED_FUNCTION_16_26();
      v41 = ~v40;
      while (1)
      {
        v42 = v39 & v41;
        v43 = (v39 & v41) >> 6;
        v44 = *(v32 + 8 * v43);
        v45 = 1 << (v39 & v41);
        if ((v45 & v44) == 0)
        {
          break;
        }

        v46 = *(*(v36 + 48) + 8 * v42);
        v47 = *(v46 + 16) == *(v37 + 16) && *(v46 + 24) == *(v37 + 24);
        if (v47 || (sub_1D5616168() & 1) != 0)
        {

          goto LABEL_21;
        }

        v39 = v42 + 1;
      }

      *(v32 + 8 * v43) = v45 | v44;
      *(*(v36 + 48) + 8 * v42) = v37;
      OUTLINED_FUNCTION_20_33();
      if (v38)
      {
        goto LABEL_24;
      }

      *(v36 + 16) = v48;
LABEL_21:
      if (v31 == v30)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_22:

    OUTLINED_FUNCTION_31_19();
  }
}

void sub_1D5011F8C(uint64_t a1)
{
  sub_1D5012070(319, &qword_1EC7EDE98, sub_1D4F53BAC, MEMORY[0x1E6975528]);
  if (v1 <= 0x3F)
  {
    sub_1D5012070(319, &qword_1EC7EDEA0, sub_1D50120D0, &type metadata for MusicDownloadedSongCatalogProperties.FulfilledProperty);
    if (v2 <= 0x3F)
    {
      sub_1D560CD48();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D5012070(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1D56155D8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D50120D0()
{
  result = qword_1EC7EDEA8;
  if (!qword_1EC7EDEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDEA8);
  }

  return result;
}

uint64_t sub_1D5012124(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D501216C()
{
  OUTLINED_FUNCTION_69_0();
  v1(0);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_71();
  v3(v2);
  return v0;
}

uint64_t sub_1D50121C4()
{
  OUTLINED_FUNCTION_69_0();
  v1(0);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_71();
  v3(v2);
  return v0;
}

uint64_t sub_1D501221C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicDownloadedSongCatalogProperties(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5012280(uint64_t a1)
{
  v1 = *(a1 + 160);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void MusicDownloadedSongCatalogStore.outputDiagnostics(to:)(char *a1@<X8>)
{
  v180 = a1;
  v183[1] = *MEMORY[0x1E69E9840];
  v151 = sub_1D560C728();
  OUTLINED_FUNCTION_4();
  v150 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_3(v4 - v3);
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F0, &unk_1D561C500);
  OUTLINED_FUNCTION_4();
  v164 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v178 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_11_3(&v145 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF18, &qword_1D5628AB0);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_11_3(&v145 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v16 = OUTLINED_FUNCTION_22(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_11_3(&v145 - v17);
  sub_1D560C298();
  OUTLINED_FUNCTION_4();
  v172 = v19;
  v173 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v169 = v24;
  v170 = v23;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v168 = v26 - v25;
  v27 = sub_1D560BEE8();
  OUTLINED_FUNCTION_4();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  v33 = v32 - v31;
  v174 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v160 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_135();
  v179 = v38;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v42);
  v159 = &v145 - v43;
  v181 = 0xD000000000000012;
  v182 = 0x80000001D5681640;
  LODWORD(v167) = *MEMORY[0x1E6968F58];
  v44 = v29 + 104;
  v175 = *(v29 + 104);
  v177 = v27;
  v175(v33);
  v45 = sub_1D4F53278();
  sub_1D560C098();
  v46 = *(v29 + 8);
  v176 = v29 + 8;
  v46(v33, v27);
  v181 = 0;
  v182 = 0xE000000000000000;
  sub_1D5615B68();

  v181 = 0xD00000000000001ALL;
  v182 = 0x80000001D5681660;
  v47 = v168;
  v48 = sub_1D560C318();
  MEMORY[0x1DA6E1BE0](v48);
  v49 = sub_1D560C228();
  v51 = v50;
  (*(v172 + 8))(v22, v173);
  (*(v169 + 8))(v47, v170);
  MEMORY[0x1DA6EAC70](v49, v51);

  v52 = v167;
  v53 = v177;
  v167 = v44;
  (v175)(v33, v52, v177);
  v166 = v45;
  v54 = v159;
  sub_1D560C098();
  v168 = v33;
  v165 = v46;
  v46(v33, v53);

  v56 = v160 + 8;
  v55 = *(v160 + 8);
  isUniquelyReferenced_nonNull_native = v174;
  v55(v54, v174);
  v156 = objc_opt_self();
  v58 = [v156 defaultManager];
  v59 = sub_1D560BF68();
  v181 = 0;
  LODWORD(v33) = [v58 createDirectoryAtURL:v59 withIntermediateDirectories:1 attributes:0 error:&v181];

  v60 = v181;
  if (!v33)
  {
    v66 = v181;
    sub_1D560BE98();

    swift_willThrow();
    v55(v180, isUniquelyReferenced_nonNull_native);
    return;
  }

  sub_1D501431C(&qword_1EC7E9FC8, MEMORY[0x1E6968FC0]);
  v61 = v60;
  v181 = sub_1D5614BD8();
  v62 = v152;
  sub_1D52CC9C4(v152);
  v63 = _s8LocationVMa(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v62, 1, v63);
  v170 = v55;
  if (EnumTagSinglePayload != 1)
  {
    v65 = v153;
    sub_1D52F9630(v153);
    sub_1D5014360(v62);
    if (__swift_getEnumTagSinglePayload(v65, 1, isUniquelyReferenced_nonNull_native) == 1)
    {
      goto LABEL_6;
    }

    (*(v160 + 32))(v146, v65, isUniquelyReferenced_nonNull_native);
    v69 = v147;
    sub_1D560BFA8();
    v70 = [v156 defaultManager];
    v71 = sub_1D560BF68();
    v183[0] = 0;
    v72 = [v70 contentsOfDirectoryAtURL:v71 includingPropertiesForKeys:0 options:0 error:v183];

    v73 = v183[0];
    if (v72)
    {
      v74 = sub_1D5615168();
      v75 = v73;

      v76 = v74;
    }

    else
    {
      v77 = v183[0];
      v78 = sub_1D560BE98();

      swift_willThrow();
      sub_1D5013458(v69, v78);

      v163 = 0;
      v76 = MEMORY[0x1E69E7CC0];
    }

    v79 = v162;
    v80 = *(v76 + 16);
    if (!v80)
    {
LABEL_37:

      v55(v147, isUniquelyReferenced_nonNull_native);
      v55(v146, isUniquelyReferenced_nonNull_native);
      goto LABEL_38;
    }

    v172 = *(v160 + 16);
    v81 = (*(v160 + 80) + 32) & ~*(v160 + 80);
    v153 = v76;
    v82 = v76 + v81;
    v173 = v160 + 16;
    v169 = *(v160 + 72);
    LODWORD(v159) = *MEMORY[0x1E6968F70];
    v158 = xmmword_1D561C050;
    v157 = v56;
    while (1)
    {
      (v172)(v79, v82, isUniquelyReferenced_nonNull_native);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACD8, &unk_1D561DAB0);
      v83 = swift_allocObject();
      *(v83 + 16) = v158;
      *(v83 + 32) = sub_1D560BF48();
      *(v83 + 40) = v84;
      v85 = v168;
      v86 = v177;
      (v175)(v168, v159, v177);
      v87 = v79;
      v79 = v179;
      sub_1D560C078();

      v165(v85, v86);
      if (sub_1D560BF38())
      {
        sub_1D50142C8();
        v88 = swift_allocError();
        *v89 = 1;
      }

      else
      {
        v90 = [v156 defaultManager];
        v91 = sub_1D560BF68();
        v92 = sub_1D560BF68();
        v183[0] = 0;
        v93 = [v90 copyItemAtURL:v91 toURL:v92 error:v183];

        v94 = v183[0];
        if (v93)
        {
          v95 = v154;
          (v172)(v154, v79, isUniquelyReferenced_nonNull_native);
          swift_storeEnumTagMultiPayload();
          sub_1D50154C8(v95, v155, &qword_1EC7EA5F0, &unk_1D561C500);
          v96 = v94;
          v97 = v181;
          swift_isUniquelyReferenced_nonNull_native();
          v183[0] = v97;
          sub_1D4F0E2E8();
          v99 = v97[2];
          v100 = (v98 & 1) == 0;
          isUniquelyReferenced_nonNull_native = v99 + v100;
          if (__OFADD__(v99, v100))
          {
            goto LABEL_47;
          }

          v101 = v98;
          v79 = v87;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4B8, &qword_1D561E278);
          if (sub_1D5615D78())
          {
            sub_1D4F0E2E8();
            isUniquelyReferenced_nonNull_native = v174;
            if ((v101 & 1) != (v102 & 1))
            {
              goto LABEL_50;
            }
          }

          else
          {
            isUniquelyReferenced_nonNull_native = v174;
          }

          v110 = v183[0];
          if (v101)
          {
            OUTLINED_FUNCTION_6_36();
            sub_1D4F15954(v155, v118);
          }

          else
          {
            v119 = OUTLINED_FUNCTION_8_35();
            v120(v119);
            OUTLINED_FUNCTION_6_36();
            sub_1D50154C8(v155, v121, &qword_1EC7EA5F0, &unk_1D561C500);
            v122 = v110[2];
            v116 = __OFADD__(v122, 1);
            v123 = v122 + 1;
            if (v116)
            {
              __break(1u);
            }

            v110[2] = v123;
          }

          v55 = v170;
          v170(v179, isUniquelyReferenced_nonNull_native);
          v55(v87, isUniquelyReferenced_nonNull_native);
          goto LABEL_36;
        }

        v103 = v183[0];
        v88 = sub_1D560BE98();
      }

      swift_willThrow();
      v104 = v161;
      *v161 = v88;
      swift_storeEnumTagMultiPayload();
      sub_1D50154C8(v104, v178, &qword_1EC7EA5F0, &unk_1D561C500);
      v105 = v88;
      v106 = v181;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v183[0] = v106;
      v79 = v162;
      sub_1D4F0E2E8();
      if (__OFADD__(v106[2], (v107 & 1) == 0))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v108 = v107;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4B8, &qword_1D561E278);
      if (sub_1D5615D78())
      {
        sub_1D4F0E2E8();
        isUniquelyReferenced_nonNull_native = v174;
        if ((v108 & 1) != (v109 & 1))
        {
LABEL_50:
          sub_1D5616238();
          __break(1u);
          return;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_native = v174;
      }

      v110 = v183[0];
      if (v108)
      {
        OUTLINED_FUNCTION_6_36();
        sub_1D4F15954(v178, v111);
      }

      else
      {
        v112 = OUTLINED_FUNCTION_8_35();
        v113(v112);
        OUTLINED_FUNCTION_6_36();
        sub_1D50154C8(v178, v114, &qword_1EC7EA5F0, &unk_1D561C500);
        v115 = v110[2];
        v116 = __OFADD__(v115, 1);
        v117 = v115 + 1;
        if (v116)
        {
          goto LABEL_46;
        }

        v110[2] = v117;
      }

      v55 = v170;
      v170(v179, isUniquelyReferenced_nonNull_native);
      v55(v79, isUniquelyReferenced_nonNull_native);
      v163 = 0;
LABEL_36:
      v181 = v110;
      v82 += v169;
      if (!--v80)
      {
        goto LABEL_37;
      }
    }
  }

  sub_1D4E6C9CC(v62, &qword_1EC7EDF18, &qword_1D5628AB0);
  v65 = v153;
  __swift_storeEnumTagSinglePayload(v153, 1, 1, isUniquelyReferenced_nonNull_native);
LABEL_6:
  sub_1D4E6C9CC(v65, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D50142C8();
  v67 = swift_allocError();
  *v68 = 0;
  sub_1D5013458(v180, v67);

LABEL_38:
  v79 = v148;
  v124 = sub_1D50135C0(v181);
  v126 = v125;

  v127 = sub_1D5013DB0(v124, v126);
  v129 = v128;
  v130 = v149;
  sub_1D560C718();
  sub_1D560BF78();
  (*(v150 + 8))(v130, v151);
  v131 = v163;
  sub_1D560C1D8();
  if (v131)
  {

    sub_1D4E55E1C(v127, v129);
    OUTLINED_FUNCTION_17_26();
    v132();
  }

  else
  {
    OUTLINED_FUNCTION_17_26();
    v133();
    sub_1D4E55E1C(v127, v129);
  }

  if (qword_1EDD54478 != -1)
  {
LABEL_48:
    swift_once();
  }

  v134 = sub_1D560C758();
  __swift_project_value_buffer(v134, qword_1EDD76A90);
  (*(v160 + 16))(v79, v180, isUniquelyReferenced_nonNull_native);
  v135 = sub_1D560C738();
  v136 = sub_1D56156E8();
  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    v183[0] = v138;
    *v137 = 136446210;
    sub_1D501431C(&qword_1EC7EDF28, MEMORY[0x1E6968FE0]);
    v139 = sub_1D56160F8();
    v141 = v140;
    OUTLINED_FUNCTION_17_26();
    v142();
    v143 = sub_1D4E6835C(v139, v141, v183);

    *(v137 + 4) = v143;
    _os_log_impl(&dword_1D4E3F000, v135, v136, "Output diagnostics to %{public}s.", v137, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v138);
    MEMORY[0x1DA6ED200](v138, -1, -1);
    MEMORY[0x1DA6ED200](v137, -1, -1);
  }

  else
  {

    OUTLINED_FUNCTION_17_26();
    v144();
  }
}

uint64_t sub_1D5013458(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5E8, &qword_1D561C4F8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v13 - v5);
  v7 = sub_1D560C0A8();
  MEMORY[0x1EEE9AC00](v7);
  (*(v9 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *v6 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F0, &unk_1D561C500);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  v11 = a2;
  return sub_1D4EC84C0();
}

uint64_t sub_1D50135C0(uint64_t a1)
{
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F0, &unk_1D561C500);
  v64 = *(v70 - 8);
  v2 = MEMORY[0x1EEE9AC00](v70);
  v69 = (&v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = MEMORY[0x1EEE9AC00](v2);
  v76 = &v60 - v5;
  MEMORY[0x1EEE9AC00](v4);
  v63 = &v60 - v6;
  v77 = sub_1D560C0A8();
  v66 = *(v77 - 8);
  v7 = MEMORY[0x1EEE9AC00](v77);
  v75 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v60 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF48, &qword_1D5628BA0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v60 - v14;
  v15 = sub_1D560C298();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D560C328();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = 0xD000000000000012;
  v82 = 0x80000001D56816F0;
  v79 = 0;
  v80 = 0xE000000000000000;
  sub_1D5615B68();

  v79 = 0x746172656E65470ALL;
  v80 = 0xEF203A6E6F206465;
  v23 = sub_1D560C318();
  MEMORY[0x1DA6E1BE0](v23);
  v72 = sub_1D560C228();
  v25 = v24;
  (*(v16 + 8))(v18, v15);
  (*(v20 + 8))(v22, v19);
  MEMORY[0x1DA6EAC70](v72, v25);

  MEMORY[0x1DA6EAC70](v79, v80);

  MEMORY[0x1DA6EAC70](10, 0xE100000000000000);
  if (!*(a1 + 16))
  {
    MEMORY[0x1DA6EAC70](0x73656C6966206F4ELL, 0xE90000000000002ELL);
    return v81;
  }

  v26 = a1;
  v29 = *(a1 + 64);
  v28 = a1 + 64;
  v27 = v29;
  v30 = 1 << *(v26 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v27;
  v33 = (v30 + 63) >> 6;
  v62 = v66 + 16;
  v34 = (v66 + 32);
  v68 = (v66 + 8);
  v65 = v26;

  v36 = 0;
  v72 = v34;
  v73 = v13;
  v37 = v74;
  v61 = v28;
  v67 = v33;
  if (v32)
  {
    while (1)
    {
      v38 = v36;
LABEL_10:
      v39 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v40 = v39 | (v38 << 6);
      v41 = v65;
      v42 = v66;
      (*(v66 + 16))(v71, *(v65 + 48) + *(v66 + 72) * v40, v77);
      v43 = v63;
      sub_1D5015458(*(v41 + 56) + *(v64 + 72) * v40, v63);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF50, &qword_1D5628BA8);
      v45 = *(v44 + 48);
      v46 = *(v42 + 32);
      v34 = v72;
      v13 = v73;
      v46();
      sub_1D50154C8(v43, &v13[v45], &qword_1EC7EA5F0, &unk_1D561C500);
      __swift_storeEnumTagSinglePayload(v13, 0, 1, v44);
      v37 = v74;
      v28 = v61;
LABEL_11:
      sub_1D50154C8(v13, v37, &qword_1EC7EDF48, &qword_1D5628BA0);
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF50, &qword_1D5628BA8);
      if (__swift_getEnumTagSinglePayload(v37, 1, v47) == 1)
      {
        break;
      }

      v48 = *(v47 + 48);
      v49 = v77;
      v50 = *v34;
      (*v34)(v75, v37, v77);
      v51 = v37 + v48;
      v52 = v76;
      sub_1D50154C8(v51, v76, &qword_1EC7EA5F0, &unk_1D561C500);
      v53 = sub_1D560BFF8();
      MEMORY[0x1DA6EAC70](v53);

      MEMORY[0x1DA6EAC70](10, 0xE100000000000000);
      MEMORY[0x1DA6EAC70](0xB386E22009, 0xA500000000000000);
      v54 = v69;
      sub_1D5015458(v52, v69);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v55 = *v54;
        v79 = 0;
        v80 = 0xE000000000000000;
        v78 = v55;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
        sub_1D5615D48();
        MEMORY[0x1DA6EAC70](v79, v80);

        v56 = v68;
      }

      else
      {
        v57 = v71;
        v50(v71, v54, v49);
        v58 = sub_1D560BFF8();
        MEMORY[0x1DA6EAC70](v58);

        v56 = v68;
        (*v68)(v57, v49);
      }

      v33 = v67;
      MEMORY[0x1DA6EAC70](10, 0xE100000000000000);
      sub_1D4E6C9CC(v76, &qword_1EC7EA5F0, &unk_1D561C500);
      result = (*v56)(v75, v77);
      v13 = v73;
      v37 = v74;
      v34 = v72;
      if (!v32)
      {
        goto LABEL_6;
      }
    }

    return v81;
  }

LABEL_6:
  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v38 >= v33)
    {
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF50, &qword_1D5628BA8);
      __swift_storeEnumTagSinglePayload(v13, 1, 1, v59);
      v32 = 0;
      goto LABEL_11;
    }

    v32 = *(v28 + 8 * v38);
    ++v36;
    if (v32)
    {
      v36 = v38;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5013DB0(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v51 = *MEMORY[0x1E69E9840];
  v45[0] = a1;
  v45[1] = a2;
  *&v48 = a1;
  *(&v48 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF38, &qword_1D5628B98);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v46, &v49);
    __swift_project_boxed_opaque_existential_1(&v49, v50);
    sub_1D560BDA8();
    v46[0] = v48;
    __swift_destroy_boxed_opaque_existential_1(&v49);
    goto LABEL_59;
  }

  v47 = 0;
  memset(v46, 0, sizeof(v46));
  sub_1D4E6C9CC(v46, &qword_1EC7EDF40, &qword_1D563AE50);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v46[0] = a1;
    *(&v46[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v46;
    v6 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = sub_1D5615C58();
  }

  sub_1D5014D20(v5, v6, &v49);
  v7 = *(&v49 + 1);
  v8 = v49;
  if (*(&v49 + 1) >> 60 != 15)
  {
    v46[0] = v49;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v46[0] = MEMORY[0x1DA6E1F30](v9);
  *(&v46[0] + 1) = v10;
  MEMORY[0x1EEE9AC00](*&v46[0]);
  v40[2] = v45;
  v11 = sub_1D5014E3C(sub_1D50153C8, v40);
  v13 = *(&v46[0] + 1) >> 62;
  v14 = v11;
  v16 = v15;
  v18 = v17;
  v19 = BYTE14(v46[0]);
  switch(*(&v46[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v20) = DWORD1(v46[0]) - LODWORD(v46[0]);
      if (__OFSUB__(DWORD1(v46[0]), v46[0]))
      {
        goto LABEL_66;
      }

      v20 = v20;
LABEL_22:
      if (v12 == v20)
      {
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        v19 = *(*&v46[0] + 24);
      }

      else if (v13 == 1)
      {
        v19 = *&v46[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v22 = *(*&v46[0] + 16);
      v21 = *(*&v46[0] + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (!v23)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v12)
      {
        v19 = 0;
LABEL_56:
        if (v19 < v12)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_1D560C138();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v40[4] = v4;
      v41 = v8;
      v42 = v7;
      LOBYTE(v24) = 0;
      if ((v16 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v16) & 0xF;
      }

      else
      {
        v25 = v11 & 0xFFFFFFFFFFFFLL;
      }

      v26 = (v11 >> 59) & 1;
      if ((v16 & 0x1000000000000000) == 0)
      {
        LOBYTE(v26) = 1;
      }

      v27 = 4 << v26;
      v43 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v44 = v16 & 0xFFFFFFFFFFFFFFLL;
      *(&v48 + 7) = 0;
      *&v48 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v20 = BYTE14(v46[0]);
      goto LABEL_22;
  }

  while (4 * v25 != v18 >> 14)
  {
    v4 = v18 & 0xC;
    v28 = v18;
    if (v4 == v27)
    {
      v32 = OUTLINED_FUNCTION_14_27();
      v28 = sub_1D53408C0(v32, v33, v34);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v25)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v9 = sub_1D5614EC8();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      v31 = sub_1D5614EF8();
    }

    else if ((v16 & 0x2000000000000000) != 0)
    {
      *&v49 = v14;
      *(&v49 + 1) = v44;
      v31 = *(&v49 + v29);
    }

    else
    {
      v30 = v43;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1D5615C58();
      }

      v31 = *(v30 + v29);
    }

    if (v4 == v27)
    {
      v35 = OUTLINED_FUNCTION_14_27();
      v18 = sub_1D53408C0(v35, v36, v37);
      if ((v16 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v18 = (v18 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v25 <= v18 >> 16)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_14_27();
    v18 = sub_1D5614ED8();
LABEL_46:
    *(&v48 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_61;
    }

    if (v24 == 14)
    {
      OUTLINED_FUNCTION_19_26();
      sub_1D560C158();
      LOBYTE(v24) = 0;
    }
  }

  if (v24)
  {
    OUTLINED_FUNCTION_19_26();
    sub_1D560C158();
    sub_1D50153E4(v41, v42);
    goto LABEL_58;
  }

  sub_1D50153E4(v41, v42);
LABEL_59:
  v38 = v46[0];
  sub_1D4F48DE4(*&v46[0], *(&v46[0] + 1));

  sub_1D4E55E1C(v38, *(&v38 + 1));
  return v38;
}

unint64_t sub_1D5014288(char a1)
{
  if (a1)
  {
    return 0xD00000000000002CLL;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

unint64_t sub_1D50142C8()
{
  result = qword_1EC7EDF20;
  if (!qword_1EC7EDF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDF20);
  }

  return result;
}

uint64_t sub_1D501431C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D560C0A8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5014360(uint64_t a1)
{
  v2 = _s8LocationVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D50143BC(unint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_0_49(a1, a2, a3, a4);
  v9 = type metadata accessor for MusicItemCache.Key(v8);
  v10 = OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21_23(v10, v5 + *(v11 + 72) * v4);
  v12 = (*(a4 + 56) + 48 * v4);
  v13 = a3[2];
  v12[1] = a3[1];
  v12[2] = v13;
  *v12 = *a3;
  OUTLINED_FUNCTION_7_34();
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v14;
  }
}

void sub_1D501444C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_49(a1, a2, a3, a4);
  sub_1D560C368();
  OUTLINED_FUNCTION_3_36();
  (*(v9 + 32))(v6 + *(v9 + 72) * v5, v4);
  *(*(a4 + 56) + 8 * v5) = a3;
  OUTLINED_FUNCTION_7_34();
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v10;
  }
}

void sub_1D50144CC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_0_49(a1, a2, a3, a4);
  v9 = type metadata accessor for LooselyComparableTypedIdentifier(v8);
  v10 = OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21_23(v10, v5 + *(v11 + 72) * v4);
  v12 = *(a4 + 56);
  v13 = type metadata accessor for GenericMusicItem(0);
  OUTLINED_FUNCTION_22(v13);
  sub_1D5015524(a3, v12 + *(v14 + 72) * v4, type metadata accessor for GenericMusicItem);
  OUTLINED_FUNCTION_7_34();
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v15;
  }
}

void sub_1D50145A8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_2_31(a1, a5 + 8 * (a1 >> 6));
  OUTLINED_FUNCTION_15_29(v5, v6, v7, v8, v9);
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_13_31(v10, v11);
  }
}

void sub_1D5014610(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OUTLINED_FUNCTION_2_31(a1, a5 + 8 * (a1 >> 6));
  v8 = (*(v7 + 48) + 16 * v6);
  *v8 = v9;
  v8[1] = v10;
  sub_1D4E519A8(v11, (*(v7 + 56) + 32 * v6));
  OUTLINED_FUNCTION_7_34();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }
}

void sub_1D5014668(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_49(a1, a2, a3, a4);
  sub_1D560C0A8();
  OUTLINED_FUNCTION_3_36();
  (*(v9 + 32))(v6 + *(v9 + 72) * v5, v4);
  v10 = *(a4 + 56);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F0, &unk_1D561C500);
  OUTLINED_FUNCTION_22(v11);
  sub_1D50154C8(a3, v10 + *(v12 + 72) * v5, &qword_1EC7EA5F0, &unk_1D561C500);
  OUTLINED_FUNCTION_7_34();
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v13;
  }
}

_BYTE *_s15DiagnosticErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D5014804()
{
  result = qword_1EC7EDF30;
  if (!qword_1EC7EDF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDF30);
  }

  return result;
}

unint64_t sub_1D5014858(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_1_47(a1, a2, a3, a4);
  *(v5[6] + 8 * result) = v6;
  *(v5[7] + 8 * result) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v5[2] = v10;
  }

  return result;
}

void sub_1D5014894(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = OUTLINED_FUNCTION_2_31(a1, a5 + 8 * (a1 >> 6));
  v10 = (*(v9 + 48) + 16 * v8);
  *v10 = v11;
  v10[1] = v12;
  v13 = *(v9 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3E8, &qword_1D561E208);
  OUTLINED_FUNCTION_3_36();
  (*(v14 + 32))(v13 + *(v14 + 72) * a1, a4);
  OUTLINED_FUNCTION_7_34();
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v15;
  }
}

void sub_1D501495C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a3;
  v8 = OUTLINED_FUNCTION_0_49(a1, a2, a3, a4);
  v9 = type metadata accessor for MusicSuggestedPivotEntry(v8);
  v10 = OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21_23(v10, v5 + *(v11 + 72) * v4);
  *(*(a4 + 56) + v4) = v7;
  OUTLINED_FUNCTION_7_34();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v12;
  }
}

void sub_1D5014A30(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, unint64_t))
{
  OUTLINED_FUNCTION_1_47(a1, a2, a3, a4);
  v12 = *(v11 + 48);
  v13(0);
  OUTLINED_FUNCTION_3_36();
  (*(v14 + 32))(v12 + *(v14 + 72) * a1, a2);
  a6(a3, *(a4 + 56) + 32 * a1);
  OUTLINED_FUNCTION_7_34();
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v15;
  }
}

void sub_1D5014AD4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_2_31(a1, a5 + 8 * (a1 >> 6));
  v11 = *(v10 + 48);
  v12 = type metadata accessor for MusicRestrictionsObserver.ObservationToken(0);
  OUTLINED_FUNCTION_22(v12);
  sub_1D5015524(a2, v11 + *(v13 + 72) * a1, type metadata accessor for MusicRestrictionsObserver.ObservationToken);
  v14 = (*(a5 + 56) + 16 * a1);
  *v14 = a3;
  v14[1] = a4;
  OUTLINED_FUNCTION_7_34();
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v15;
  }
}

void sub_1D5014B78(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_1_47(a1, a2, a3, a4);
  *(*(v6 + 48) + v5) = v7 & 1;
  sub_1D4E519A8(v8, (*(v6 + 56) + 32 * v5));
  OUTLINED_FUNCTION_7_34();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v9;
  }
}

void sub_1D5014BC8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_0_49(a1, a2, a3, a4);
  v9 = type metadata accessor for MusicSuggestedSongsEntry(v8);
  v10 = OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_21_23(v10, v5 + *(v11 + 72) * v4);
  *(*(a4 + 56) + 8 * v4) = a3;
  OUTLINED_FUNCTION_7_34();
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v12;
  }
}

void sub_1D5014C44(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = OUTLINED_FUNCTION_2_31(a1, a5 + 8 * (a1 >> 6));
  *(v6[6] + 8 * v5) = v7;
  v8 = (v6[7] + 16 * v5);
  *v8 = v9;
  v8[1] = v10;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_13_31(v6, v13);
  }
}

uint64_t sub_1D5014C88(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_2_31(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

void sub_1D5014CD4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_1_47(a1, a2, a3, a4);
  *(*(v6 + 48) + v5) = v7;
  sub_1D4E519A8(v8, (*(v6 + 56) + 32 * v5));
  OUTLINED_FUNCTION_7_34();
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v9;
  }
}

uint64_t sub_1D5014D20@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1D560C0B8();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1D560BCD8();
      swift_allocObject();
      v8 = sub_1D560BC98();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1D560C118();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1D5014DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_1D5015278(sub_1D5015438, v5, a1, a2);
}

uint64_t sub_1D5014E3C(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v18[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v10 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1D4E55E1C(v7, v6);
      *v5 = xmmword_1D5628AA0;
      sub_1D4E55E1C(0, 0xC000000000000000);
      v11 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v11 < v7)
      {
        goto LABEL_23;
      }

      v12 = sub_1D560BCA8();
      if (v12)
      {
        v4 = v12;
        if (__OFSUB__(v7, sub_1D560BCC8()))
        {
          goto LABEL_24;
        }
      }

      sub_1D560BCD8();
      swift_allocObject();
      v13 = sub_1D560BC88();

      v10 = v13;
LABEL_16:
      if (v11 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      sub_1D50152DC(v7, v7 >> 32, a1);
      OUTLINED_FUNCTION_20_34();

      v9 = v10 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1D4E55E1C(v7, v6);
      v16 = v7;
      v17 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_1D5628AA0;
      sub_1D4E55E1C(0, 0xC000000000000000);
      sub_1D560C0C8();
      v7 = v16;
      sub_1D50152DC(*(v16 + 16), *(v16 + 24), a1);
      if (v3)
      {
        v9 = v17 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v9;
      }

      else
      {
        OUTLINED_FUNCTION_20_34();
        v9 = v17 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v9;
      }

      return v4;
    case 3uLL:
      memset(v18, 0, 15);
      a1(&v16, v18, v18);
      if (!v3)
      {
        return v16;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_1D4E55E1C(v7, v6);
      v18[0] = v7;
      LOWORD(v18[1]) = v6;
      BYTE2(v18[1]) = BYTE2(v6);
      BYTE3(v18[1]) = BYTE3(v6);
      BYTE4(v18[1]) = BYTE4(v6);
      BYTE5(v18[1]) = BYTE5(v6);
      BYTE6(v18[1]) = BYTE6(v6);
      a1(&v16, v18, v18 + BYTE6(v6));
      if (!v3)
      {
        v4 = v16;
      }

      OUTLINED_FUNCTION_12_30();
      return v4;
  }
}

uint64_t sub_1D50151B8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1D560C0B8();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1DA6E1EC0]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1DA6E1ED0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1D5015230(uint64_t result)
{
  if (result)
  {
    result = sub_1D5615B78();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D5015278(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1D50152DC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1D560BCA8();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1D560BCC8();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1D560BCB8();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

void *sub_1D5015390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1D5014DE8(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1D50153E4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D4E55E1C(result, a2);
  }

  return result;
}

uint64_t sub_1D50153F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5015230(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1D5015458(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F0, &unk_1D561C500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D50154C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3_36();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D5015524(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3_36();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t MusicDownloadedSongCatalogPropertiesResponse.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v3 + 16) && (v4 = sub_1D4F15A78(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = type metadata accessor for MusicDownloadedSongCatalogProperties(0);
    sub_1D5015700(v7 + *(*(v8 - 8) + 72) * v6, a1);
    v9 = a1;
    v10 = 0;
    v11 = v8;
  }

  else
  {
    v11 = type metadata accessor for MusicDownloadedSongCatalogProperties(0);
    v9 = a1;
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, 1, v11);
}

uint64_t MusicDownloadedSongCatalogPropertiesResponse.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D4F30ABC();
  return sub_1D5616328();
}

uint64_t sub_1D50156BC(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D4F30ABC();
  return sub_1D5616328();
}

uint64_t sub_1D5015700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicDownloadedSongCatalogProperties(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D5015768()
{
  result = qword_1EC7EDF58;
  if (!qword_1EC7EDF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDF58);
  }

  return result;
}

uint64_t sub_1D50157BC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D50157FC(uint64_t result, int a2, int a3)
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

uint64_t sub_1D5015848(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v1 = type metadata accessor for MusicLibraryMapping.ItemContent(319, AssociatedTypeWitness, AssociatedConformanceWitness, v5);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

uint64_t sub_1D501593C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = 17;
  if (*(v8 + 64) > 0x11uLL)
  {
    v9 = *(v8 + 64);
  }

  if (v7 <= 0xFD)
  {
    v10 = 253;
  }

  else
  {
    v10 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(v8 + 80) & 0xF8 | 7;
  v12 = *(v6 + 64) + v11;
  if (a2 <= v10)
  {
    goto LABEL_27;
  }

  v13 = v9 + (v12 & ~v11) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v10 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v7 < 0xFD)
      {
        v21 = *(((a1 + v12) & ~v11) + v9);
        if (v21 >= 3)
        {
          return (v21 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {

        return __swift_getEnumTagSinglePayload(a1, v7, v5);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v19 = v13;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v10 + (v20 | v18) + 1;
}

void sub_1D5015B8C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 64);
  if (v11 <= 0x11)
  {
    v11 = 17;
  }

  if (v9 <= 0xFD)
  {
    v12 = 253;
  }

  else
  {
    v12 = v9;
  }

  v13 = *(v10 + 80) & 0xF8 | 7;
  v14 = *(v8 + 64) + v13;
  v15 = v11 + 1;
  v16 = (v14 & ~v13) + v11 + 1;
  v17 = 8 * v16;
  if (a3 <= v12)
  {
    v18 = 0;
  }

  else if (v16 <= 3)
  {
    v21 = ((a3 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v12 >= a2)
  {
    switch(v18)
    {
      case 1:
        a1[v16] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v16] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_57:
        __break(1u);
        break;
      case 4:
        *&a1[v16] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          if (v9 < 0xFD)
          {
            v24 = (&a1[v14] & ~v13);
            if (a2 > 0xFD)
            {
              if (v15 <= 3)
              {
                v25 = ~(-1 << (8 * v15));
              }

              else
              {
                v25 = -1;
              }

              if (v15)
              {
                v26 = v25 & (a2 - 254);
                if (v15 <= 3)
                {
                  v27 = v15;
                }

                else
                {
                  v27 = 4;
                }

                bzero(v24, v15);
                switch(v27)
                {
                  case 2:
                    *v24 = v26;
                    break;
                  case 3:
                    *v24 = v26;
                    v24[2] = BYTE2(v26);
                    break;
                  case 4:
                    *v24 = v26;
                    break;
                  default:
                    *v24 = v26;
                    break;
                }
              }
            }

            else
            {
              v24[v11] = -a2;
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v19 = ~v12 + a2;
    if (v16 < 4)
    {
      v20 = (v19 >> v17) + 1;
      if (v16)
      {
        v23 = v19 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v16 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v19;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v19;
      v20 = 1;
    }

    switch(v18)
    {
      case 1:
        a1[v16] = v20;
        break;
      case 2:
        *&a1[v16] = v20;
        break;
      case 3:
        goto LABEL_57;
      case 4:
        *&a1[v16] = v20;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1D5015F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_1_0();
  v14 = v8;
  (*(v9 + 16))(a4, a1, a2);
  v10 = *(a3 + 48);
  _s10FrozenItemVMa(0, a2, a3, v11);
  v10(a2, a3);
  v12 = *(v14 + 8);

  return v12(a1, a2);
}

uint64_t sub_1D5016040(int a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v84 = a2;
  LODWORD(v85) = a1;
  v6 = *(a3 + 16);
  OUTLINED_FUNCTION_1_0();
  v89 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v91 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4_32();
  v82 = sub_1D56158D8();
  OUTLINED_FUNCTION_1_0();
  v80 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v76 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v88 = &v76 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE10, &qword_1D5634400);
  MEMORY[0x1EEE9AC00](v18 - 8);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v19);
  v87 = &v76 - v20;
  OUTLINED_FUNCTION_1_0();
  v86 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v76 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v76 - v27;
  v90 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = OUTLINED_FUNCTION_4_32();
  v33 = type metadata accessor for MusicLibraryMapping.ItemContent(v30, v31, AssociatedConformanceWitness, v32);
  OUTLINED_FUNCTION_1_0();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v76 - v37;
  (*(v35 + 16))(&v76 - v37, v4 + *(a3 + 36), v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v53 = v86;
    (*(v86 + 32))(v28, v38, AssociatedTypeWitness);
    OUTLINED_FUNCTION_4_32();
    OUTLINED_FUNCTION_2_32();
    v85 = sub_1D560CAE8();
    sub_1D560EC18();
    sub_1D560EC88();
    v54 = OUTLINED_FUNCTION_7_35();
    v55(v54, v28, AssociatedTypeWitness);
    OUTLINED_FUNCTION_0_50(v35, 0);
    v57(*(v56 - 256), v4, v4);
    v51 = sub_1D560CA78();
    (*(v53 + 8))(v28, AssociatedTypeWitness);
    return v51;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (*(v35 + 8))(v38, v33);
    return 0;
  }

  v40 = *v38;
  v41 = *(v38 + 1);
  v42 = v38[16];
  if ((v85 & 1) == 0)
  {
LABEL_12:
    OUTLINED_FUNCTION_4_32();
    OUTLINED_FUNCTION_2_32();
    sub_1D560CAE8();
    LOBYTE(v100) = v42;
    sub_1D540C614(v87);
    OUTLINED_FUNCTION_0_50(v88, 1);
    v59(*(v58 - 256), v4, v4);
    return sub_1D560CA78();
  }

  if (qword_1EDD5BC20 != -1)
  {
    swift_once();
  }

  LOBYTE(v95[0]) = v42;
  sub_1D53185E4(v40, v41, v95, v84, &v98);
  if (!v99)
  {
    sub_1D4E6C9CC(&v98, &qword_1EC7EEC40, &unk_1D561C070);
    goto LABEL_12;
  }

  v85 = v4;
  sub_1D4E48324(&v98, &v100);
  sub_1D4E628D4(&v100, &v98);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  v44 = swift_dynamicCast();
  v78 = v40;
  if (v44)
  {
    OUTLINED_FUNCTION_31_4(v16, 0);
    v45 = v86;
    (*(v86 + 32))(v26, v16, AssociatedTypeWitness);
    v46 = v87;
    sub_1D560EC88();
    OUTLINED_FUNCTION_4_32();
    OUTLINED_FUNCTION_2_32();
    sub_1D560CAE8();
    sub_1D5016E34(v46, v83);
    v47 = OUTLINED_FUNCTION_7_35();
    v48(v47, v26, AssociatedTypeWitness);
    OUTLINED_FUNCTION_0_50(v40, 0);
    v50(*(v49 - 256), v85, v4);
    v51 = sub_1D560CA78();
    sub_1D4E6C9CC(v46, &qword_1EC7ECE10, &qword_1D5634400);
    (*(v45 + 8))(v26, AssociatedTypeWitness);
    v52 = &v100;
LABEL_17:
    __swift_destroy_boxed_opaque_existential_1(v52);
    return v51;
  }

  OUTLINED_FUNCTION_31_4(v16, 1);
  v61 = v80 + 8;
  v60 = *(v80 + 8);
  v60(v16, v82);
  if (dynamic_cast_existential_1_conditional(AssociatedTypeWitness, AssociatedTypeWitness, MEMORY[0x1E69769D8]))
  {
    v77 = v60;
    v84 = v41;
    sub_1D4E628D4(&v100, v95);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3A8, &unk_1D561C1E0);
    v80 = v43;
    if (swift_dynamicCast())
    {
      v62 = sub_1D4E48324(&v92, &v98);
      MEMORY[0x1EEE9AC00](v62);
      __swift_project_boxed_opaque_existential_1(&v98, v99);
      sub_1D5612B18();
      v63 = v96;
      v64 = v97;
      v65 = __swift_project_boxed_opaque_existential_1(v95, v96);
      *(&v93 + 1) = v63;
      v94 = *(v64 + 8);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v92);
      (*(*(v63 - 8) + 16))(boxed_opaque_existential_0, v65, v63);
      sub_1D56131E8();
      __swift_destroy_boxed_opaque_existential_1(v95);
      v67 = v81;
      if (swift_dynamicCast())
      {
        OUTLINED_FUNCTION_31_4(v67, 0);
        v68 = v86;
        v69 = v79;
        (*(v86 + 32))(v79, v67, AssociatedTypeWitness);
        v70 = v87;
        sub_1D560EC88();
        OUTLINED_FUNCTION_4_32();
        OUTLINED_FUNCTION_2_32();
        sub_1D560CAE8();
        sub_1D5016E34(v70, v83);
        v71 = v88;
        (*(v68 + 16))(v88, v69, AssociatedTypeWitness);
        OUTLINED_FUNCTION_0_50(v71, 0);
        v73(*(v72 - 256), v85, v61);
        v51 = sub_1D560CA78();
        sub_1D4E6C9CC(v70, &qword_1EC7ECE10, &qword_1D5634400);
        (*(v68 + 8))(v69, AssociatedTypeWitness);
        __swift_destroy_boxed_opaque_existential_1(&v100);
        v52 = &v98;
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_31_4(v67, 1);
      v77(v67, v82);
      __swift_destroy_boxed_opaque_existential_1(&v98);
    }

    else
    {
      v94 = 0;
      v92 = 0u;
      v93 = 0u;
      sub_1D4E6C9CC(&v92, &qword_1EC7EA368, &unk_1D5629620);
    }
  }

  *&v98 = 0;
  *(&v98 + 1) = 0xE000000000000000;
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0x746920646E756F46, 0xEB00000000206D65);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](0xD00000000000006ALL, 0x80000001D5681750);
  v75 = sub_1D5616458();
  MEMORY[0x1DA6EAC70](v75);

  MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D5016BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_1D5614D18() & 1) == 0)
  {
    return 0;
  }

  v12 = *(_s10FrozenItemVMa(0, a3, a4, v11) + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  return static MusicLibraryMapping.ItemContent<>.== infix(_:_:)(a1 + v12, a2 + v12, AssociatedTypeWitness, AssociatedConformanceWitness, a6);
}

uint64_t sub_1D5016C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D5614CB8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for MusicLibraryMapping.ItemContent(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  return MusicLibraryMapping.ItemContent<>.hash(into:)(a1, v9, a4);
}

uint64_t sub_1D5016D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D56162D8();
  sub_1D5016C98(v7, a1, a2, a3);
  return sub_1D5616328();
}

uint64_t sub_1D5016DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 16);
  v4 = *(a3 - 8);
  sub_1D56162D8();
  sub_1D5016C98(v7, a2, v4, v5);
  return sub_1D5616328();
}

uint64_t sub_1D5016E34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE10, &qword_1D5634400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MusicLibrarySearchResponse.TopResult.siriRepresentation.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  sub_1D5613838();
  OUTLINED_FUNCTION_4();
  v60 = v4;
  v61 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v59 = v6 - v5;
  sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v57 = v8;
  v58 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v56 = v10 - v9;
  sub_1D560EEA8();
  OUTLINED_FUNCTION_4();
  v62 = v12;
  v63 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = sub_1D5613EF8();
  OUTLINED_FUNCTION_4();
  v64 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  v29 = sub_1D560E038();
  OUTLINED_FUNCTION_4();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  v35 = v34 - v33;
  (*(v31 + 16))(v34 - v33, v2, v29);
  v36 = (*(v31 + 88))(v35, v29);
  if (v36 == *MEMORY[0x1E69751A8])
  {
    v37 = OUTLINED_FUNCTION_2_33();
    v38(v37);
    (*(v24 + 32))(v28, v35, v22);
    Album.siriRepresentation.getter();
    return (*(v24 + 8))(v28, v22);
  }

  if (v36 == *MEMORY[0x1E69751B0])
  {
    v40 = OUTLINED_FUNCTION_2_33();
    v41(v40);
    (*(v64 + 32))(v21, v35, v16);
    Artist.siriRepresentation.getter(a1);
    return (*(v64 + 8))(v21, v16);
  }

  if (v36 == *MEMORY[0x1E6975198])
  {
    v42 = OUTLINED_FUNCTION_2_33();
    v43(v42);
    (*(v62 + 32))(v15, v35, v63);
    MusicVideo.siriRepresentation.getter(a1);
    return (*(v62 + 8))(v15, v63);
  }

  if (v36 == *MEMORY[0x1E69751B8])
  {
    v44 = OUTLINED_FUNCTION_2_33();
    v45(v44);
    v47 = v56;
    v46 = v57;
    v48 = OUTLINED_FUNCTION_3_37();
    v49 = v58;
    v50(v48);
    Playlist.siriRepresentation.getter();
  }

  else
  {
    if (v36 != *MEMORY[0x1E69751A0])
    {
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000005ELL, 0x80000001D5681800);
      sub_1D5017424();
      v55 = sub_1D56160F8();
      MEMORY[0x1DA6EAC70](v55);

      MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
      result = sub_1D5615E08();
      __break(1u);
      return result;
    }

    v51 = OUTLINED_FUNCTION_2_33();
    v52(v51);
    v47 = v59;
    v46 = v60;
    v53 = OUTLINED_FUNCTION_3_37();
    v49 = v61;
    v54(v53);
    Song.siriRepresentation.getter();
  }

  return (*(v46 + 8))(v47, v49);
}

unint64_t sub_1D5017424()
{
  result = qword_1EC7EDF60;
  if (!qword_1EC7EDF60)
  {
    sub_1D560E038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDF60);
  }

  return result;
}

void *sub_1D5017480()
{
  type metadata accessor for MusicSuggestedSongsRequestObserver();
  swift_allocObject();
  result = sub_1D50174BC();
  qword_1EC87BF48 = result;
  return result;
}

void *sub_1D50174BC()
{
  v1 = sub_1D5614D38();
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  return v0;
}

void sub_1D50174F4()
{
  v1 = *(v0 + 32);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  v4 = v2;
  if (*(v0 + 24))
  {
    if ((v4 & 1) == 0)
    {
      *(v0 + 32) = v3;
      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (v4)
  {
LABEL_11:
    __break(1u);
    return;
  }

  *(v0 + 32) = v3;
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  swift_weakInit();
  v10[4] = sub_1D5017894;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D51FDC68;
  v10[3] = &block_descriptor_5;
  v7 = _Block_copy(v10);

  v8 = [v5 scheduledTimerWithTimeInterval:0 repeats:v7 block:1.0];
  _Block_release(v7);
  v9 = *(v0 + 24);
  *(v0 + 24) = v8;
}

uint64_t sub_1D5017628(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D5017680();
  }

  return result;
}

void sub_1D5017680()
{
  [*(v0 + 24) invalidate];
  v1 = *(v0 + 24);
  *(v0 + 24) = 0;

  sub_1D50176C0();
}

void sub_1D50176C0()
{
  v1 = v0;
  if (*(v0 + 32) >= 4)
  {
    v2 = objc_opt_self();
    v3 = *(v0 + 16);
    v4 = sub_1D5614D38();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000042, 0x80000001D56818F0);
    v8 = *(v0 + 32);
    v5 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v5);

    v6 = sub_1D5614D38();

    v7 = sub_1D5614D38();
    [v2 snapshotWithDomain:v3 type:v4 subType:v6 context:v7 triggerThresholdValues:0 events:0 completion:{0, v8, 0, 0xE000000000000000}];
  }

  *(v1 + 32) = 0;
}

uint64_t sub_1D501783C()
{
  sub_1D5017814();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1D50178B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852141679 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D5681980 == a2)
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

uint64_t sub_1D5017984(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 1852141679;
  }
}

uint64_t sub_1D50179C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D50178B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D50179E8(uint64_t a1)
{
  v2 = sub_1D5017DDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5017A24(uint64_t a1)
{
  v2 = sub_1D5017DDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5017A60(uint64_t a1)
{
  v2 = sub_1D5017E84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5017A9C(uint64_t a1)
{
  v2 = sub_1D5017E84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5017AD8(uint64_t a1)
{
  v2 = sub_1D5017E30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5017B14(uint64_t a1)
{
  v2 = sub_1D5017E30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Playlist.Collaboration.InvitationMode.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF68, &qword_1D5628D90);
  OUTLINED_FUNCTION_4();
  v25 = v4;
  v26 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v24 = &v22 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF70, &qword_1D5628D98);
  OUTLINED_FUNCTION_4();
  v22 = v8;
  v23 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF78, &qword_1D5628DA0);
  OUTLINED_FUNCTION_4();
  v14 = v13;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  v18 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5017DDC();
  sub_1D56163D8();
  v19 = (v14 + 8);
  if (v18)
  {
    v28 = 1;
    sub_1D5017E30();
    v20 = v24;
    sub_1D5616018();
    (*(v25 + 8))(v20, v26);
  }

  else
  {
    v27 = 0;
    sub_1D5017E84();
    sub_1D5616018();
    (*(v22 + 8))(v11, v23);
  }

  return (*v19)(v17, v12);
}

unint64_t sub_1D5017DDC()
{
  result = qword_1EC7EDF80;
  if (!qword_1EC7EDF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDF80);
  }

  return result;
}

unint64_t sub_1D5017E30()
{
  result = qword_1EC7EDF88;
  if (!qword_1EC7EDF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDF88);
  }

  return result;
}

unint64_t sub_1D5017E84()
{
  result = qword_1EC7EDF90;
  if (!qword_1EC7EDF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDF90);
  }

  return result;
}

uint64_t Playlist.Collaboration.InvitationMode.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t Playlist.Collaboration.InvitationMode.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v41 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF98, &qword_1D5628DA8);
  OUTLINED_FUNCTION_4();
  v40 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDFA0, &qword_1D5628DB0);
  OUTLINED_FUNCTION_4();
  v39 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDFA8, &unk_1D5628DB8);
  OUTLINED_FUNCTION_4();
  v42 = v13;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v36 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5017DDC();
  v17 = v44;
  sub_1D5616398();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v7;
  v38 = v11;
  v44 = a1;
  v18 = v43;
  sub_1D5615FE8();
  result = sub_1D4FE35F0();
  if (v21 == v22 >> 1)
  {
    v43 = result;
LABEL_9:
    v32 = sub_1D5615C18();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640);
    *v34 = &type metadata for Playlist.Collaboration.InvitationMode;
    sub_1D5615F28();
    sub_1D5615BF8();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v42 + 8))(v16, v12);
    a1 = v44;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36[1] = 0;
  if (v21 >= (v22 >> 1))
  {
    __break(1u);
  }

  else
  {
    v23 = *(v20 + v21);
    v24 = sub_1D4FE35EC();
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    if (v26 != v28 >> 1)
    {
      v43 = v24;
      goto LABEL_9;
    }

    v45 = v23;
    if (v23)
    {
      v47 = 1;
      sub_1D5017E30();
      v29 = v6;
      OUTLINED_FUNCTION_3_0(&_s14InvitationModeO26RequiresApprovalCodingKeysON, &v47);
      v30 = v41;
      v31 = v42;
      swift_unknownObjectRelease();
      (*(v40 + 8))(v29, v18);
    }

    else
    {
      v46 = 0;
      sub_1D5017E84();
      v35 = v38;
      OUTLINED_FUNCTION_3_0(&_s14InvitationModeO14OpenCodingKeysON, &v46);
      v30 = v41;
      v31 = v42;
      swift_unknownObjectRelease();
      (*(v39 + 8))(v35, v37);
    }

    (*(v31 + 8))(v16, v26);
    *v30 = v45;
    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  return result;
}

unint64_t sub_1D501840C()
{
  result = qword_1EC7EDFB0;
  if (!qword_1EC7EDFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EDFB8, &qword_1D5628DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDFB0);
  }

  return result;
}

unint64_t sub_1D5018474()
{
  result = qword_1EC7EDFC0;
  if (!qword_1EC7EDFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDFC0);
  }

  return result;
}

_BYTE *sub_1D50184D8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D50185D8()
{
  result = qword_1EC7EDFC8;
  if (!qword_1EC7EDFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDFC8);
  }

  return result;
}

unint64_t sub_1D5018630()
{
  result = qword_1EC7EDFD0;
  if (!qword_1EC7EDFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDFD0);
  }

  return result;
}

unint64_t sub_1D5018688()
{
  result = qword_1EC7EDFD8;
  if (!qword_1EC7EDFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDFD8);
  }

  return result;
}

unint64_t sub_1D50186E0()
{
  result = qword_1EC7EDFE0;
  if (!qword_1EC7EDFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDFE0);
  }

  return result;
}

unint64_t sub_1D5018738()
{
  result = qword_1EC7EDFE8;
  if (!qword_1EC7EDFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDFE8);
  }

  return result;
}

unint64_t sub_1D5018790()
{
  result = qword_1EC7EDFF0;
  if (!qword_1EC7EDFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDFF0);
  }

  return result;
}

unint64_t sub_1D50187E8()
{
  result = qword_1EC7EDFF8;
  if (!qword_1EC7EDFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EDFF8);
  }

  return result;
}

uint64_t sub_1D5018840()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EC7EE000);
  v1 = __swift_project_value_buffer(v0, qword_1EC7EE000);
  v2 = *MEMORY[0x1E69767E0];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static SocialProfile.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7E8B18 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  __swift_project_value_buffer(v2, qword_1EC7EE000);
  OUTLINED_FUNCTION_24_0();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t SocialProfile.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v119 = a4;
  v107 = a5;
  v106 = sub_1D5612B88();
  OUTLINED_FUNCTION_4();
  v120 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v105 = v11 - v10;
  OUTLINED_FUNCTION_70_0();
  v12 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v111 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v110 = v16 - v15;
  OUTLINED_FUNCTION_70_0();
  v116 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v115 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v102 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE018, &unk_1D5629170);
  v22 = OUTLINED_FUNCTION_22(v21);
  MEMORY[0x1EEE9AC00](v22);
  v118 = &v100 - v23;
  v24 = OUTLINED_FUNCTION_70_0();
  v112 = type metadata accessor for SocialProfilePropertyProvider(v24);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_59_0();
  v101 = v26 - v27;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v100 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v32 = OUTLINED_FUNCTION_22(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_59_0();
  v35 = v33 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v100 - v37;
  v104 = sub_1D5612478();
  OUTLINED_FUNCTION_4();
  v103 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5();
  v43 = v42 - v41;

  v117 = a2;
  sub_1D560F7E8();
  v113 = sub_1D5019548();
  v119 = sub_1D5614C68();

  sub_1D560FF18();
  __swift_storeEnumTagSinglePayload(v38, 0, 1, v12);
  sub_1D560FF18();
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v12);
  v114 = v43;
  OUTLINED_FUNCTION_0_51();
  sub_1D560D4D8();
  sub_1D4E7661C(v35, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E7661C(v38, &qword_1EC7EA358, &unk_1D561DF50);
  v108 = a3;
  sub_1D4EC76A8(a3, v121);
  v109 = a1;
  if (!v122)
  {
    sub_1D4E7661C(v121, &qword_1EC7EEC40, &unk_1D561C070);
    v123 = 0u;
    v124 = 0u;
    v125 = 0;
LABEL_8:
    v44 = v30;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3A8, &unk_1D561C1E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v125 = 0;
    v123 = 0u;
    v124 = 0u;
    goto LABEL_8;
  }

  v44 = v30;
  if (!*(&v124 + 1))
  {
LABEL_9:
    sub_1D4E7661C(&v123, &qword_1EC7EA368, &unk_1D5629620);
    v46 = v112;
    goto LABEL_10;
  }

  sub_1D4E48324(&v123, &v126);
  __swift_project_boxed_opaque_existential_1(&v126, v127);
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  v45 = v118;
  v46 = v112;
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v45, 0, 1, v46);
    v47 = v101;
    sub_1D501AB90(v45, v101);
    sub_1D501AAD0(v47, v44);
    v48 = v102;
    sub_1D560D718();
    (*(v115 + 40))(v44 + v46[12], v48, v116);
    v49 = v110;
    sub_1D5612468();
    (*(v111 + 40))(v44 + v46[13], v49, v12);
    v50 = sub_1D5612458();
    v52 = v51;
    sub_1D501AB34(v47);
    v53 = (v44 + v46[14]);

    *v53 = v50;
    v53[1] = v52;
    __swift_destroy_boxed_opaque_existential_1(&v126);
    goto LABEL_15;
  }

  __swift_storeEnumTagSinglePayload(v45, 1, 1, v46);
  sub_1D4E7661C(v45, &qword_1EC7EE018, &unk_1D5629170);
  __swift_destroy_boxed_opaque_existential_1(&v126);
LABEL_10:
  v54 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v44, 1, 1, v54);
  v55 = v46[10];
  v56 = sub_1D560C0A8();
  __swift_storeEnumTagSinglePayload(v44 + v55, 1, 1, v56);
  (*(v115 + 16))(v44 + v46[12], a1, v116);
  sub_1D5612468();
  v57 = sub_1D5612458();
  v118 = v58;
  sub_1D5614A88();
  v111 = OUTLINED_FUNCTION_6_37();
  v59 = OUTLINED_FUNCTION_6_37();
  v60 = OUTLINED_FUNCTION_6_37();
  v61 = OUTLINED_FUNCTION_6_37();
  v62 = (v44 + v46[5]);
  *v62 = 0;
  v62[1] = 0;
  *(v44 + v46[6]) = 2;
  *(v44 + v46[7]) = 2;
  *(v44 + v46[8]) = 2;
  v63 = (v44 + v46[9]);
  *v63 = 0;
  v63[1] = 0;
  if (qword_1EDD54CF8 != -1)
  {
    swift_once();
  }

  v64 = qword_1EDD76B58;
  if (qword_1EDD76B58 >> 62)
  {
    sub_1D560CDE8();

    v99 = sub_1D5615E18();

    v64 = v99;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *(v44 + v46[11]) = v64;
  v65 = (v44 + v46[14]);
  v66 = v118;
  *v65 = v57;
  v65[1] = v66;
  *(v44 + v46[15]) = v111;
  *(v44 + v46[16]) = v59;
  *(v44 + v46[17]) = v60;
  *(v44 + v46[18]) = v61;
LABEL_15:
  swift_getKeyPath();
  LOBYTE(v126) = 0;
  v67 = *MEMORY[0x1E6976668];
  v68 = v120;
  v69 = *(v120 + 104);
  v111 = v120 + 104;
  v70 = v105;
  v71 = v106;
  v69(v105, v67, v106);
  v102 = sub_1D501AF34(&qword_1EDD54CF0, type metadata accessor for SocialProfilePropertyProvider, &unk_1D5633BA0);
  sub_1D5610D98();

  v72 = *(v68 + 8);
  v73 = OUTLINED_FUNCTION_0_33();
  v72(v73);
  v120 = v68 + 8;
  swift_getKeyPath();
  LOBYTE(v126) = 1;
  v74 = *MEMORY[0x1E6976670];
  v118 = v69;
  v69(v70, v74, v71);
  OUTLINED_FUNCTION_3_38();
  sub_1D5610D68();

  v75 = OUTLINED_FUNCTION_0_33();
  v72(v75);
  KeyPath = swift_getKeyPath();
  LOBYTE(v126) = 2;
  LODWORD(v110) = v74;
  v69(v70, v74, v71);
  v77 = v102;
  OUTLINED_FUNCTION_19_27(KeyPath, v119, &v126, v70, 0, &type metadata for SocialProfile.LegacyModelSocialProfilePropertyKey);

  v78 = OUTLINED_FUNCTION_0_33();
  v72(v78);
  v79 = swift_getKeyPath();
  LOBYTE(v126) = 3;
  (v118)(v70, v74, v71);
  OUTLINED_FUNCTION_19_27(v79, v119, &v126, v70, 0, &type metadata for SocialProfile.LegacyModelSocialProfilePropertyKey);

  v80 = OUTLINED_FUNCTION_0_33();
  v72(v80);
  swift_getKeyPath();
  v81 = OUTLINED_FUNCTION_12_31(4);
  v82(v81);
  v83 = OUTLINED_FUNCTION_3_38();
  OUTLINED_FUNCTION_19_27(v83, v84, v85, v86, v87, &type metadata for SocialProfile.LegacyModelSocialProfilePropertyKey);

  v88 = OUTLINED_FUNCTION_0_33();
  v72(v88);
  swift_getKeyPath();
  v89 = OUTLINED_FUNCTION_12_31(5);
  v90(v89);
  v91 = OUTLINED_FUNCTION_3_38();
  OUTLINED_FUNCTION_19_27(v91, v92, v93, v94, v95, &type metadata for SocialProfile.LegacyModelSocialProfilePropertyKey);

  v96 = OUTLINED_FUNCTION_0_33();
  v72(v96);
  v127 = v112;
  v128 = v77;
  v97 = __swift_allocate_boxed_opaque_existential_0(&v126);
  sub_1D501AAD0(v44, v97);
  SocialProfile.init(propertyProvider:)(&v126, v107);
  swift_unknownObjectRelease();
  sub_1D4E7661C(v108, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v115 + 8))(v109, v116);
  (*(v103 + 8))(v114, v104);
  return sub_1D501AB34(v44);
}

unint64_t sub_1D5019548()
{
  result = qword_1EC7EE020;
  if (!qword_1EC7EE020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE020);
  }

  return result;
}

uint64_t SocialProfile.convertToLegacyModelStorageDictionary(for:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v1 = OUTLINED_FUNCTION_22(v0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v43 - v2;
  sub_1D4ECCADC();
  v46 = sub_1D5614BD8();
  if (qword_1EDD53F90 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDD76898;
  v5 = sub_1D56140F8();
  sub_1D501AF34(&qword_1EDD57518, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
  sub_1D501AF34(&qword_1EC7EE028, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
  OUTLINED_FUNCTION_11_34(v4, v5);
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    sub_1D4E7661C(v3, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v43 = 0u;
    v44 = 0u;
  }

  else
  {
    sub_1D5613F38();
    OUTLINED_FUNCTION_24_0();
    (*(v12 + 8))(v3, v5);
  }

  sub_1D4EC8650(&v43, 0, v6, v7, v8, v9, v10, v11, v43, *(&v43 + 1), v44, *(&v44 + 1), v45, v46, v47, v48, v49, v50, v51, v52, vars0, vars8);
  if (qword_1EDD53F98 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_11_34(qword_1EDD768A0, MEMORY[0x1E69E6158]);
  if (!*(&v43 + 1))
  {
    *&v44 = 0;
  }

  v13 = OUTLINED_FUNCTION_17_27(*(&v43 + 1));
  sub_1D4EC8650(v13, 1, v14, v15, v16, v17, v18, v19, v43, *(&v43 + 1), v44, *(&v44 + 1), v45, v46, v47, v48, v49, v50, v51, v52, vars0, vars8);
  if (qword_1EDD53F88 != -1)
  {
    swift_once();
  }

  v20 = MEMORY[0x1E69E6370];
  OUTLINED_FUNCTION_11_34(qword_1EDD76890, MEMORY[0x1E69E6370]);
  v21 = OUTLINED_FUNCTION_14_28();
  sub_1D4EC8650(v21, 3, v22, v23, v24, v25, v26, v27, v43, *(&v43 + 1), v44, *(&v44 + 1), v45, v46, v47, v48, v49, v50, v51, v52, vars0, vars8);
  if (qword_1EDD53FD0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_11_34(qword_1EDD768C0, v20);
  v28 = OUTLINED_FUNCTION_14_28();
  sub_1D4EC8650(v28, 4, v29, v30, v31, v32, v33, v34, v43, *(&v43 + 1), v44, *(&v44 + 1), v45, v46, v47, v48, v49, v50, v51, v52, vars0, vars8);
  if (qword_1EDD53FA8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_11_34(qword_1EDD768A8, MEMORY[0x1E69E6158]);
  if (!*(&v43 + 1))
  {
    *&v44 = 0;
  }

  v35 = OUTLINED_FUNCTION_17_27(*(&v43 + 1));
  sub_1D4EC8650(v35, 5, v36, v37, v38, v39, v40, v41, v43, *(&v43 + 1), v44, *(&v44 + 1), v45, v46, v47, v48, v49, v50, v51, v52, vars0, vars8);
  return v46;
}

uint64_t sub_1D5019928()
{
  v1 = sub_1D5614118();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - v5;
  v21 = sub_1D501AF34(&qword_1EDD5D238, MEMORY[0x1E6976FC8], MEMORY[0x1E6976FD0]);
  v7 = sub_1D5614BD8();
  v8 = *MEMORY[0x1E6976FA8];
  v22 = *(v2 + 104);
  v22(v6, v8, v1);
  if (qword_1EDD53FA8 != -1)
  {
    swift_once();
  }

  sub_1D501AF34(&qword_1EDD57518, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
  sub_1D501AF34(&qword_1EC7EE028, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
  v9 = MEMORY[0x1E69E6158];
  v23 = v0;
  sub_1D560EC28();
  v25 = v2;
  if (*(&v28 + 1))
  {
    *(&v29 + 1) = v9;
    sub_1D4E519A8(&v28, v27);
    swift_isUniquelyReferenced_nonNull_native();
    v26 = v7;
    sub_1D4F137BC();
    v7 = v26;
    v10 = *(v2 + 8);
    v10(v6, v1);
  }

  else
  {
    sub_1D4F0E0D0();
    if (v12)
    {
      v13 = v11;
      swift_isUniquelyReferenced_nonNull_native();
      *&v27[0] = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3D8, &qword_1D561E150);
      sub_1D5615D78();
      v7 = *&v27[0];
      v14 = v2 + 8;
      v10 = *(v2 + 8);
      v10((*(*&v27[0] + 48) + *(v14 + 64) * v13), v1);
      sub_1D4E519A8((*(v7 + 56) + 32 * v13), &v28);
      sub_1D5615D98();
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
      v10 = *(v2 + 8);
    }

    v10(v6, v1);
    sub_1D4E7661C(&v28, &qword_1EC7E9F98, &qword_1D561C420);
  }

  v15 = v24;
  v22(v24, *MEMORY[0x1E6976FB0], v1);
  if (qword_1EDD53F98 != -1)
  {
    swift_once();
  }

  v16 = MEMORY[0x1E69E6158];
  sub_1D560EC28();
  if (*(&v28 + 1))
  {
    *(&v29 + 1) = v16;
    sub_1D4E519A8(&v28, v27);
    swift_isUniquelyReferenced_nonNull_native();
    v26 = v7;
    sub_1D4F137BC();
    v7 = v26;
    v10(v15, v1);
  }

  else
  {
    sub_1D4F0E0D0();
    if (v18)
    {
      v19 = v17;
      swift_isUniquelyReferenced_nonNull_native();
      *&v27[0] = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3D8, &qword_1D561E150);
      sub_1D5615D78();
      v7 = *&v27[0];
      v10((*(*&v27[0] + 48) + *(v25 + 72) * v19), v1);
      sub_1D4E519A8((*(v7 + 56) + 32 * v19), &v28);
      sub_1D5615D98();
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }

    v10(v15, v1);
    sub_1D4E7661C(&v28, &qword_1EC7E9F98, &qword_1D561C420);
  }

  return v7;
}

id sub_1D5019E78(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_59_0();
  v114 = v5 - v6;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v7);
  v110 = &v103 - v8;
  OUTLINED_FUNCTION_70_0();
  v9 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_59_0();
  v116 = (v13 - v14);
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_135();
  v115 = v16;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_135();
  v113 = v18;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_135();
  v112 = v20;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_135();
  v109 = v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_135();
  v106 = v24;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_135();
  v104 = v26;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_135();
  v105 = v28;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_135();
  v107 = v30;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_135();
  v108 = v32;
  OUTLINED_FUNCTION_23();
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v103 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = &v103 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v103 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  v43 = OUTLINED_FUNCTION_22(v42);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v103 - v44;
  v118 = a1;
  v117 = sub_1D5019928();
  type metadata accessor for SocialProfile(0);
  sub_1D501AF34(&qword_1EDD57518, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
  OUTLINED_FUNCTION_81_0();
  v122 = v1;
  sub_1D560EC98();
  sub_1D560D7A8();
  v46 = *(v11 + 8);
  v121 = v9;
  v46(v41, v9);
  v47 = sub_1D560F148();
  if (__swift_getEnumTagSinglePayload(v45, 1, v47) == 1)
  {
    sub_1D4E7661C(v45, &unk_1EC7F1970, &qword_1D561F4A0);
    v120 = 0;
  }

  else
  {
    v120 = sub_1D517FFC8();
    OUTLINED_FUNCTION_24_0();
    (*(v48 + 8))(v45, v47);
  }

  OUTLINED_FUNCTION_81_0();
  sub_1D560EC98();
  sub_1D560D808();
  v50 = v49;
  v51 = v121;
  v46(v39, v121);
  if (v50)
  {
    v119 = sub_1D5614D38();
  }

  else
  {
    v119 = 0;
  }

  OUTLINED_FUNCTION_81_0();
  sub_1D560EC98();
  sub_1D560D688();
  v53 = v52;
  v46(v36, v51);
  if (v53)
  {
    v111 = sub_1D5614D38();
  }

  else
  {
    v111 = 0;
  }

  v54 = v108;
  OUTLINED_FUNCTION_0_51();
  sub_1D560EC98();
  sub_1D560D768();
  v56 = v55;
  v46(v54, v51);
  if (v56)
  {
    v108 = sub_1D5614D38();
  }

  else
  {
    v108 = 0;
  }

  v57 = v107;
  OUTLINED_FUNCTION_0_51();
  sub_1D560EC98();
  sub_1D560D648();
  v58 = OUTLINED_FUNCTION_2_34();
  (v46)(v58);
  if (v57)
  {
    v107 = OUTLINED_FUNCTION_20_35();
  }

  else
  {
    v107 = 0;
  }

  v59 = v105;
  OUTLINED_FUNCTION_0_51();
  sub_1D560EC98();
  sub_1D560D628();
  v60 = OUTLINED_FUNCTION_2_34();
  (v46)(v60);
  if (v59)
  {
    v105 = OUTLINED_FUNCTION_20_35();
  }

  else
  {
    v105 = 0;
  }

  v61 = v104;
  OUTLINED_FUNCTION_0_51();
  sub_1D560EC98();
  sub_1D560D568();
  v62 = OUTLINED_FUNCTION_2_34();
  (v46)(v62);
  if (v61)
  {
    v104 = OUTLINED_FUNCTION_20_35();
  }

  else
  {
    v104 = 0;
  }

  v63 = v106;
  OUTLINED_FUNCTION_0_51();
  sub_1D560EC98();
  v64 = v110;
  sub_1D560D5C8();
  v46(v63, v51);
  v65 = sub_1D560D4C8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v64, 1, v65);
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E7661C(v64, &unk_1EC7EBF20, &unk_1D561F530);
    v106 = 0;
  }

  else
  {
    v106 = sub_1D5115F20(EnumTagSinglePayload);
    OUTLINED_FUNCTION_24_0();
    (*(v67 + 8))(v64, v65);
  }

  v68 = v109;
  OUTLINED_FUNCTION_0_51();
  sub_1D560EC98();
  sub_1D560D5A8();
  v69 = OUTLINED_FUNCTION_2_34();
  (v46)(v69);
  if (v68)
  {
    v110 = OUTLINED_FUNCTION_20_35();
  }

  else
  {
    v110 = 0;
  }

  v70 = v112;
  OUTLINED_FUNCTION_0_51();
  sub_1D560EC98();
  v71 = v114;
  sub_1D560D6C8();
  v46(v70, v51);
  v72 = __swift_getEnumTagSinglePayload(v71, 1, v65);
  if (v72 == 1)
  {
    sub_1D4E7661C(v71, &unk_1EC7EBF20, &unk_1D561F530);
    v73 = 0;
  }

  else
  {
    v73 = sub_1D5115F20(v72);
    OUTLINED_FUNCTION_24_0();
    (*(v74 + 8))(v71, v65);
  }

  v75 = v113;
  OUTLINED_FUNCTION_0_51();
  sub_1D560EC98();
  sub_1D560D728();
  v76 = OUTLINED_FUNCTION_16_27();
  (v46)(v76);
  if (v75)
  {
    v77 = sub_1D5614D38();
  }

  else
  {
    v77 = 0;
  }

  v78 = v115;
  OUTLINED_FUNCTION_81_0();
  sub_1D560EC98();
  sub_1D560D548();
  v79 = OUTLINED_FUNCTION_16_27();
  (v46)(v79);
  if (v78)
  {
    v80 = sub_1D5614D38();
  }

  else
  {
    v80 = 0;
  }

  v81 = objc_opt_self();
  v82 = v116;
  OUTLINED_FUNCTION_81_0();
  sub_1D560EC98();
  v83 = sub_1D560D7C8();
  v46(v82, v121);
  sub_1D4F40C50(v83);
  v85 = v84;

  v86 = sub_1D51594D4();
  v102 = v81;
  v101 = v85;
  v100 = v77;
  *(&v99 + 1) = v73;
  v87 = v77;
  v88 = v110;
  *&v99 = v110;
  v89 = v111;
  v91 = v107;
  v90 = v108;
  v93 = v105;
  v92 = v106;
  v94 = v73;
  v95 = v104;
  v122 = sub_1D501AE58(v120, v119, v111, v108, v107, v105, v104, v106, v99, v100, v80, v101, 5, v86, v102);

  sub_1D5614118();
  sub_1D501AF34(&qword_1EDD5D228, MEMORY[0x1E6976FC8], MEMORY[0x1E6976FC0]);
  v96 = sub_1D5614BF8();

  v97 = objc_allocWithZone(MEMORY[0x1E6977640]);
  return sub_1D4ECA8B8(v122, 5, v96);
}

uint64_t SocialProfile.LegacyModelSocialProfilePropertyKey.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1D5615EF8();

  v6 = 6;
  if (v4 < 6)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

unint64_t SocialProfile.LegacyModelSocialProfilePropertyKey.rawValue.getter()
{
  result = 0xD000000000000022;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000021;
      break;
    case 2:
      result = 0xD000000000000030;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    case 4:
      result = 0xD000000000000025;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D501A8F8@<X0>(unint64_t *a1@<X8>)
{
  result = SocialProfile.LegacyModelSocialProfilePropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SocialProfile.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69767E0];
  sub_1D5613158();
  OUTLINED_FUNCTION_24_0();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_1D501A994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D501AF34(&qword_1EC7EE048, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

uint64_t sub_1D501AA48(uint64_t a1, uint64_t a2)
{
  sub_1D501AF34(&qword_1EC7EE040, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);

  return sub_1D56132F8();
}

uint64_t sub_1D501AAD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialProfilePropertyProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D501AB34(uint64_t a1)
{
  v2 = type metadata accessor for SocialProfilePropertyProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D501AB90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialProfilePropertyProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D501ABF8()
{
  result = qword_1EC7EE030;
  if (!qword_1EC7EE030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE030);
  }

  return result;
}

unint64_t sub_1D501AC54()
{
  result = qword_1EC7EE038;
  if (!qword_1EC7EE038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE038);
  }

  return result;
}

uint64_t _s35LegacyModelSocialProfilePropertyKeyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s35LegacyModelSocialProfilePropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

id sub_1D501AE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  v18 = sub_1D5615158();

  v19 = [a15 identifierSetWithCatalogID:a1 libraryID:a2 cloudAlbumLibraryID:a3 cloudID:a4 reportingAdamID:a5 purchasedAdamID:a6 assetAdamID:a7 deviceLocalID:a8 occurrenceID:a9 containedDeviceLocalID:a10 syncID:a11 playbackID:v18 formerIDs:a13 modelObjectType:a14 source:?];

  return v19;
}

uint64_t sub_1D501AF34(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_20_35()
{

  return sub_1D5614D38();
}

uint64_t type metadata accessor for CloudVideoOffer(uint64_t a1)
{
  result = qword_1EDD56FE8;
  if (!qword_1EDD56FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D501B008(uint64_t a1)
{
  sub_1D4E518A0(319, &qword_1EDD52708, MEMORY[0x1E69E6530]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D501B1CC(319, &qword_1EDD5CF48, MEMORY[0x1E6969530]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_1D501B1CC(319, &qword_1EDD533F0, MEMORY[0x1E6975710]);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_1D4E518A0(319, &qword_1EDD52730, MEMORY[0x1E69E63B0]);
    if (v8 > 0x3F)
    {
      return v7;
    }

    sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
    if (v10 > 0x3F)
    {
      return v9;
    }

    sub_1D4E518A0(319, &qword_1EDD5F550, MEMORY[0x1E69E6370]);
    if (v11 > 0x3F)
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

void sub_1D501B1CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D56158D8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D501B268()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE068, &qword_1D56294F8);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13();
  v41 = v4;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  v8 = type metadata accessor for VideoOffer(0);
  OUTLINED_FUNCTION_4();
  v34 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v40 = v12 - v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F8, &qword_1D56294F0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  v16 = *(v1 + 16);
  if (v16)
  {
    OUTLINED_FUNCTION_43_3();
    v18 = v1 + v17;
    v38 = *(v19 + 56);
    v39 = v20;
    v37 = (v19 - 8);
    v21 = MEMORY[0x1E69E7CC0];
    v33 = v8;
    v35 = v19;
    v36 = v7;
    do
    {
      v39(v15, v18, v42);
      sub_1D501DA74(v41);
      (*v37)(v15, v42);
      v22 = v41;
      __swift_storeEnumTagSinglePayload(v41, 0, 1, v8);
      v23 = v22;
      v24 = v36;
      sub_1D4F39A1C(v23, v36, &qword_1EC7EE068, &qword_1D56294F8);
      OUTLINED_FUNCTION_57(v24, 1, v8);
      if (v25)
      {
        sub_1D4E50004(v24, &qword_1EC7EE068, &qword_1D56294F8);
      }

      else
      {
        sub_1D501EDC0(v24, v40);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D4EFFD28();
          v21 = v30;
        }

        v27 = *(v21 + 16);
        if (v27 >= *(v21 + 24) >> 1)
        {
          sub_1D4EFFD28();
          v21 = v31;
        }

        *(v21 + 16) = v27 + 1;
        OUTLINED_FUNCTION_43_3();
        sub_1D501EDC0(v40, v21 + v28 + *(v29 + 72) * v27);
        v8 = v33;
      }

      v18 += v38;
      --v16;
    }

    while (v16);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D501B598()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v2 = type metadata accessor for VideoOffer(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F8, &qword_1D56294F0);
  OUTLINED_FUNCTION_4();
  v8 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  v12 = *(v1 + 16);
  if (v12)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1D4F03E4C(0, v12, 0);
    v13 = v22;
    OUTLINED_FUNCTION_43_3();
    v15 = v1 + v14;
    v20 = *(v3 + 72);
    do
    {
      sub_1D501ED0C(v15, v6, type metadata accessor for VideoOffer);
      sub_1D501E524();
      sub_1D501ED68(v6, type metadata accessor for VideoOffer);
      v22 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D4F03E4C(v16 > 1, v17 + 1, 1);
        v13 = v22;
      }

      *(v13 + 16) = v17 + 1;
      OUTLINED_FUNCTION_43_3();
      (*(v8 + 32))(v13 + v18 + *(v8 + 72) * v17, v11, v21);
      v15 += v20;
      --v12;
    }

    while (v12);
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D501B7A4()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v144 = sub_1D560F548();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v141 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v142 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC60, &unk_1D56294E0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v143 = v14;
  v15 = sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB578, &unk_1D5644D10);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v138 - v26;
  v28 = *(v1 + 8);
  if (*(v3 + 8))
  {
    if (!*(v1 + 8))
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (*v3 != *v1)
    {
      v28 = 1;
    }

    if (v28)
    {
      goto LABEL_27;
    }
  }

  v138 = v5;
  v29 = type metadata accessor for CloudVideoOffer(0);
  v145 = v1;
  v30 = *(v29 + 20);
  v31 = *(v24 + 48);
  v139 = v29;
  v140 = v3;
  sub_1D4F39AB0(v3 + v30, v27, &qword_1EC7EA3B8, &unk_1D561E370);
  v32 = v145 + v30;
  v33 = v145;
  sub_1D4F39AB0(v32, &v27[v31], &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_57(v27, 1, v15);
  if (v38)
  {
    OUTLINED_FUNCTION_57(&v27[v31], 1, v15);
    if (v38)
    {
      sub_1D4E50004(v27, &qword_1EC7EA3B8, &unk_1D561E370);
      goto LABEL_17;
    }

LABEL_15:
    v41 = &qword_1EC7EB578;
    v42 = &unk_1D5644D10;
    v43 = v27;
LABEL_26:
    sub_1D4E50004(v43, v41, v42);
    goto LABEL_27;
  }

  v34 = OUTLINED_FUNCTION_134_0();
  sub_1D4F39AB0(v34, v35, v36, v37);
  OUTLINED_FUNCTION_57(&v27[v31], 1, v15);
  if (v38)
  {
    v39 = OUTLINED_FUNCTION_71();
    v40(v39);
    goto LABEL_15;
  }

  (*(v17 + 32))(v21, &v27[v31], v15);
  OUTLINED_FUNCTION_3_39();
  sub_1D501EE24(v44, v45, MEMORY[0x1E6969550]);
  v46 = sub_1D5614D18();
  v47 = *(v17 + 8);
  v47(v21, v15);
  v48 = OUTLINED_FUNCTION_71();
  (v47)(v48);
  sub_1D4E50004(v27, &qword_1EC7EA3B8, &unk_1D561E370);
  if ((v46 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_17:
  v50 = v139;
  v49 = v140;
  v51 = v139[6];
  v52 = *(v12 + 48);
  v53 = v143;
  sub_1D4F39AB0(v140 + v51, v143, &qword_1EC7EAC58, &unk_1D561DA70);
  sub_1D4F39AB0(v33 + v51, v53 + v52, &qword_1EC7EAC58, &unk_1D561DA70);
  v54 = v144;
  OUTLINED_FUNCTION_57(v53, 1, v144);
  if (!v38)
  {
    v55 = v142;
    sub_1D4F39AB0(v53, v142, &qword_1EC7EAC58, &unk_1D561DA70);
    OUTLINED_FUNCTION_57(v53 + v52, 1, v54);
    if (!v56)
    {
      v57 = v138;
      v58 = v53 + v52;
      v59 = v141;
      (*(v138 + 32))(v141, v58, v54);
      OUTLINED_FUNCTION_2_35();
      sub_1D501EE24(v60, v61, MEMORY[0x1E6975728]);
      v62 = sub_1D5614D18();
      v63 = *(v57 + 8);
      v63(v59, v54);
      v63(v55, v54);
      sub_1D4E50004(v53, &qword_1EC7EAC58, &unk_1D561DA70);
      if ((v62 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_29;
    }

    (*(v138 + 8))(v55, v54);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_57(v53 + v52, 1, v54);
  if (!v38)
  {
LABEL_25:
    v41 = &qword_1EC7EAC60;
    v42 = &unk_1D56294E0;
    v43 = v53;
    goto LABEL_26;
  }

  sub_1D4E50004(v53, &qword_1EC7EAC58, &unk_1D561DA70);
LABEL_29:
  OUTLINED_FUNCTION_6_6();
  if (v65)
  {
    if (!v64)
    {
      goto LABEL_27;
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    if (v66)
    {
      goto LABEL_27;
    }
  }

  OUTLINED_FUNCTION_27_20();
  if (v69)
  {
    if (!v67)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_31_0(v68);
    v72 = v38 && v70 == v71;
    if (!v72 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v67)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_6_6();
  if (v74)
  {
    if (!v73)
    {
      goto LABEL_27;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112_4();
    if (v75)
    {
      goto LABEL_27;
    }
  }

  OUTLINED_FUNCTION_6_6();
  if (v77)
  {
    if (!v76)
    {
      goto LABEL_27;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112_4();
    if (v78)
    {
      goto LABEL_27;
    }
  }

  v79 = v50[11];
  v80 = *(v49 + v79);
  v81 = *(v33 + v79);
  if (v80 == 2)
  {
    if (v81 != 2)
    {
      goto LABEL_27;
    }
  }

  else if (v81 == 2 || ((v81 ^ v80) & 1) != 0)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_6_6();
  if (v83)
  {
    if (!v82)
    {
      goto LABEL_27;
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    if (v84)
    {
      goto LABEL_27;
    }
  }

  OUTLINED_FUNCTION_27_20();
  if (v87)
  {
    if (!v85)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_31_0(v86);
    v90 = v38 && v88 == v89;
    if (!v90 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v85)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_27_20();
  if (v93)
  {
    if (!v91)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_31_0(v92);
    v96 = v38 && v94 == v95;
    if (!v96 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v91)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_6_6();
  if (v98)
  {
    if (!v97)
    {
      goto LABEL_27;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112_4();
    if (v99)
    {
      goto LABEL_27;
    }
  }

  OUTLINED_FUNCTION_6_6();
  if (v101)
  {
    if (!v100)
    {
      goto LABEL_27;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112_4();
    if (v102)
    {
      goto LABEL_27;
    }
  }

  v103 = v139[17];
  v104 = *(v140 + v103 + 8);
  v105 = *(v145 + v103 + 8);
  if (v104)
  {
    if (!v105)
    {
      goto LABEL_27;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112_4();
    if (v106)
    {
      goto LABEL_27;
    }
  }

  OUTLINED_FUNCTION_38_1();
  if (v109)
  {
    if (!v107)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_31_0(v108);
    v112 = v38 && v110 == v111;
    if (!v112 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v107)
  {
    goto LABEL_27;
  }

  v113 = v139[19];
  v114 = *(v140 + v113);
  v115 = *(v145 + v113);
  if (v114 == 2)
  {
    v116 = v145;
    v118 = v139;
    v117 = v140;
    if (v115 != 2)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v115 == 2)
    {
      goto LABEL_27;
    }

    v119 = v115 ^ v114;
    v116 = v145;
    v118 = v139;
    v117 = v140;
    if (v119)
    {
      goto LABEL_27;
    }
  }

  v120 = v118[20];
  v121 = *(v117 + v120);
  v122 = *(v116 + v120);
  if (v121 == 2)
  {
    v123 = v145;
    v124 = v139;
    v125 = v140;
    if (v122 != 2)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v122 == 2)
    {
      goto LABEL_27;
    }

    v126 = v122 ^ v121;
    v123 = v145;
    v124 = v139;
    v125 = v140;
    if (v126)
    {
      goto LABEL_27;
    }
  }

  v127 = v124[21];
  v128 = *(v123 + v127 + 8);
  if (*(v125 + v127 + 8))
  {
    if (!v128)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_31_0(v125 + v127);
    v131 = v38 && v129 == v130;
    if (!v131 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v128)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_38_1();
  if (v134 && v132)
  {
    OUTLINED_FUNCTION_31_0(v133);
    if (v38)
    {
      v137 = v135 == v136;
    }

    else
    {
      v137 = 0;
    }

    if (!v137)
    {
      sub_1D5616168();
    }
  }

LABEL_27:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D501C00C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000016 && 0x80000001D56819A0 == a2;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001D56819C0 == a2;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1684957547 && a2 == 0xE400000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C616E696769726FLL && a2 == 0xED00006563697250;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000016 && 0x80000001D56819E0 == a2;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x72656E776FLL && a2 == 0xE500000000000000;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001ELL && 0x80000001D5681A00 == a2;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x726564726F657270 && a2 == 0xEC000000796C6E4FLL;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6563697270 && a2 == 0xE500000000000000;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x726F466563697270 && a2 == 0xEE0064657474616DLL;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000012 && 0x80000001D5681A20 == a2;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001CLL && 0x80000001D5681A40 == a2;
                        if (v16 || (sub_1D5616168() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x64496C61746E6572 && a2 == 0xE800000000000000;
                          if (v17 || (sub_1D5616168() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000017 && 0x80000001D5681A60 == a2;
                            if (v18 || (sub_1D5616168() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x664F6E6F73616573 && a2 == 0xEF646E694B726566;
                              if (v19 || (sub_1D5616168() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6E4F6E6F73616573 && a2 == 0xEA0000000000796CLL;
                                if (v20 || (sub_1D5616168() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x7550646572616873 && a2 == 0xEE00657361686372;
                                  if (v21 || (sub_1D5616168() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000018 && 0x80000001D5681A80 == a2;
                                    if (v22 || (sub_1D5616168() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else if (a1 == 0x746E6169726176 && a2 == 0xE700000000000000)
                                    {

                                      return 18;
                                    }

                                    else
                                    {
                                      v24 = sub_1D5616168();

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

unint64_t sub_1D501C5C0(char a1)
{
  result = 1684957547;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      return result;
    case 3:
      result = 0x6C616E696769726FLL;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0x72656E776FLL;
      break;
    case 6:
      result = 0xD00000000000001ELL;
      break;
    case 7:
      result = 0x726564726F657270;
      break;
    case 8:
      result = 0x6563697270;
      break;
    case 9:
      result = 0x726F466563697270;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 12:
      result = 0x64496C61746E6572;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0x664F6E6F73616573;
      break;
    case 15:
      result = 0x6E4F6E6F73616573;
      break;
    case 16:
      result = 0x7550646572616873;
      break;
    case 17:
      result = 0xD000000000000018;
      break;
    case 18:
      result = 0x746E6169726176;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_1D501C808(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE058, &qword_1D56294D8);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D501DA20();
  sub_1D56163D8();
  v16 = 0;
  OUTLINED_FUNCTION_29_0();
  sub_1D5616058();
  if (!v1)
  {
    v9 = type metadata accessor for CloudVideoOffer(0);
    v16 = 1;
    sub_1D560C328();
    OUTLINED_FUNCTION_3_39();
    sub_1D501EE24(v10, v11, MEMORY[0x1E6969538]);
    OUTLINED_FUNCTION_41_16();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    v16 = 2;
    sub_1D560F548();
    OUTLINED_FUNCTION_2_35();
    sub_1D501EE24(v12, v13, MEMORY[0x1E6975718]);
    OUTLINED_FUNCTION_41_16();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_154(v9[7]);
    OUTLINED_FUNCTION_1_48(3);
    sub_1D5616048();
    OUTLINED_FUNCTION_35_5(v9[8]);
    OUTLINED_FUNCTION_1_48(4);
    sub_1D5616028();
    OUTLINED_FUNCTION_154(v9[9]);
    OUTLINED_FUNCTION_1_48(5);
    sub_1D5616058();
    OUTLINED_FUNCTION_154(v9[10]);
    OUTLINED_FUNCTION_1_48(6);
    sub_1D5616058();
    v16 = 7;
    OUTLINED_FUNCTION_41_16();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    OUTLINED_FUNCTION_154(v9[12]);
    OUTLINED_FUNCTION_1_48(8);
    sub_1D5616048();
    OUTLINED_FUNCTION_35_5(v9[13]);
    OUTLINED_FUNCTION_1_48(9);
    sub_1D5616028();
    OUTLINED_FUNCTION_35_5(v9[14]);
    OUTLINED_FUNCTION_1_48(10);
    sub_1D5616028();
    OUTLINED_FUNCTION_154(v9[15]);
    OUTLINED_FUNCTION_1_48(11);
    sub_1D5616058();
    OUTLINED_FUNCTION_154(v9[16]);
    OUTLINED_FUNCTION_1_48(12);
    sub_1D5616058();
    OUTLINED_FUNCTION_154(v9[17]);
    OUTLINED_FUNCTION_1_48(13);
    sub_1D5616058();
    OUTLINED_FUNCTION_35_5(v9[18]);
    OUTLINED_FUNCTION_1_48(14);
    sub_1D5616028();
    v16 = 15;
    OUTLINED_FUNCTION_41_16();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    v16 = 16;
    OUTLINED_FUNCTION_41_16();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    OUTLINED_FUNCTION_35_5(v9[21]);
    OUTLINED_FUNCTION_1_48(17);
    sub_1D5616028();
    OUTLINED_FUNCTION_35_5(v9[22]);
    OUTLINED_FUNCTION_1_48(18);
    sub_1D5616028();
  }

  return (*(v5 + 8))(v8, v3);
}

void sub_1D501CBD0()
{
  OUTLINED_FUNCTION_47();
  v2 = sub_1D560F548();
  OUTLINED_FUNCTION_4();
  v34 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v33 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v11 = sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_38_2();
  if (*(v0 + 8) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v20 = *v0;
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v20);
  }

  v21 = type metadata accessor for CloudVideoOffer(0);
  sub_1D4F39AB0(v0 + v21[5], v1, &qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_57(v1, 1, v11);
  if (v22)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v13 + 32))(v17, v1, v11);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_3_39();
    sub_1D501EE24(v23, v24, MEMORY[0x1E6969540]);
    sub_1D5614CB8();
    (*(v13 + 8))(v17, v11);
  }

  sub_1D4F39AB0(v0 + v21[6], v10, &qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_57(v10, 1, v2);
  if (v22)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v26 = v33;
    v25 = v34;
    (*(v34 + 32))(v33, v10, v2);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_2_35();
    sub_1D501EE24(v27, v28, MEMORY[0x1E6975720]);
    sub_1D5614CB8();
    (*(v25 + 8))(v26, v2);
  }

  OUTLINED_FUNCTION_157();
  if (v22)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_25_17();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v29 = v2;
    }

    else
    {
      v29 = 0;
    }

    MEMORY[0x1DA6EC100](v29);
  }

  OUTLINED_FUNCTION_37_17();
  if (v2)
  {
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_29_21();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_157();
  if (v22)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_25_17();
    MEMORY[0x1DA6EC0D0](v2);
  }

  OUTLINED_FUNCTION_157();
  if (v22)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_25_17();
    MEMORY[0x1DA6EC0D0](v2);
  }

  v30 = *(v0 + v21[11]);
  if (v30 != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_157();
  if (v22)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_25_17();
    if ((v30 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    MEMORY[0x1DA6EC100](v31);
  }

  OUTLINED_FUNCTION_37_17();
  if (v30)
  {
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_29_21();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_37_17();
  if (v30)
  {
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_29_21();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_157();
  if (v22)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_25_17();
    MEMORY[0x1DA6EC0D0](v30);
  }

  OUTLINED_FUNCTION_157();
  if (v22)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_25_17();
    MEMORY[0x1DA6EC0D0](v30);
  }

  OUTLINED_FUNCTION_157();
  if (v22)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_25_17();
    MEMORY[0x1DA6EC0D0](v30);
  }

  OUTLINED_FUNCTION_37_17();
  if (v30)
  {
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_29_21();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v21[19]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  v32 = *(v0 + v21[20]);
  if (v32 != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_37_17();
  if (v32)
  {
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_29_21();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v21[22] + 8))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D501D108()
{
  sub_1D56162D8();
  sub_1D501CBD0();
  return sub_1D5616328();
}

uint64_t sub_1D501D148@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_38_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v62 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE050, &qword_1D56294D0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v67 = type metadata accessor for CloudVideoOffer(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v65 = a1;
  v66 = (v15 - v14);
  v17 = a1[3];
  v16 = a1[4];
  v18 = __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D501DA20();
  sub_1D5616398();
  if (!v2)
  {
    v63 = a2;
    v68 = 0;
    v19 = sub_1D5615F68();
    v20 = v66;
    *v66 = v19;
    *(v20 + 8) = v21 & 1;
    sub_1D560C328();
    v68 = 1;
    OUTLINED_FUNCTION_3_39();
    sub_1D501EE24(v22, v23, MEMORY[0x1E6969558]);
    sub_1D5615F78();
    v24 = v67;
    sub_1D4F39A1C(v11, v20 + v67[5], &qword_1EC7EA3B8, &unk_1D561E370);
    sub_1D560F548();
    v68 = 2;
    OUTLINED_FUNCTION_2_35();
    sub_1D501EE24(v25, v26, MEMORY[0x1E6975730]);
    sub_1D5615F78();
    sub_1D4F39A1C(v3, v20 + v24[6], &qword_1EC7EAC58, &unk_1D561DA70);
    OUTLINED_FUNCTION_0_52(3);
    v27 = sub_1D5615F58();
    OUTLINED_FUNCTION_39_1(v27, v28, v20 + v24[7]);
    OUTLINED_FUNCTION_0_52(4);
    v29 = sub_1D5615F38();
    v30 = (v20 + v24[8]);
    *v30 = v29;
    v30[1] = v31;
    OUTLINED_FUNCTION_0_52(5);
    v32 = sub_1D5615F68();
    OUTLINED_FUNCTION_39_1(v32, v33, v20 + v24[9]);
    OUTLINED_FUNCTION_0_52(6);
    v34 = sub_1D5615F68();
    OUTLINED_FUNCTION_39_1(v34, v35, v20 + v24[10]);
    OUTLINED_FUNCTION_0_52(7);
    *(v20 + v24[11]) = sub_1D5615F48();
    OUTLINED_FUNCTION_0_52(8);
    v36 = sub_1D5615F58();
    OUTLINED_FUNCTION_39_1(v36, v37, v20 + v24[12]);
    OUTLINED_FUNCTION_0_52(9);
    v38 = sub_1D5615F38();
    OUTLINED_FUNCTION_47_18(v38, v39, v67[13]);
    OUTLINED_FUNCTION_0_52(10);
    v40 = sub_1D5615F38();
    OUTLINED_FUNCTION_47_18(v40, v41, v67[14]);
    OUTLINED_FUNCTION_0_52(11);
    v42 = sub_1D5615F68();
    OUTLINED_FUNCTION_39_1(v42, v43, v66 + v67[15]);
    OUTLINED_FUNCTION_0_52(12);
    v44 = sub_1D5615F68();
    OUTLINED_FUNCTION_39_1(v44, v45, v66 + v67[16]);
    OUTLINED_FUNCTION_0_52(13);
    v46 = sub_1D5615F68();
    OUTLINED_FUNCTION_39_1(v46, v47, v66 + v67[17]);
    OUTLINED_FUNCTION_0_52(14);
    v48 = sub_1D5615F38();
    OUTLINED_FUNCTION_47_18(v48, v49, v67[18]);
    OUTLINED_FUNCTION_0_52(15);
    *(v66 + v67[19]) = sub_1D5615F48();
    OUTLINED_FUNCTION_0_52(16);
    *(v66 + v67[20]) = sub_1D5615F48();
    OUTLINED_FUNCTION_0_52(17);
    v50 = sub_1D5615F38();
    OUTLINED_FUNCTION_47_18(v50, v51, v67[21]);
    OUTLINED_FUNCTION_0_52(18);
    v52 = sub_1D5615F38();
    v54 = v53;
    v55 = OUTLINED_FUNCTION_14_29();
    v56(v55);
    v57 = v66;
    v58 = (v66 + v67[22]);
    *v58 = v52;
    v58[1] = v54;
    sub_1D501ED0C(v57, v63, type metadata accessor for CloudVideoOffer);
    __swift_destroy_boxed_opaque_existential_1(v65);
    v59 = OUTLINED_FUNCTION_71();
    return sub_1D501ED68(v59, v60);
  }

  OUTLINED_FUNCTION_16_28();
  result = __swift_destroy_boxed_opaque_existential_1(v65);
  if (v17)
  {
    result = OUTLINED_FUNCTION_46_4();
    if ((v16 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else if (!v16)
  {
LABEL_5:
    if (!v18)
    {
      return result;
    }

    return OUTLINED_FUNCTION_46_4();
  }

  result = OUTLINED_FUNCTION_46_4();
  if (v18)
  {
    return OUTLINED_FUNCTION_46_4();
  }

  return result;
}

uint64_t sub_1D501D8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D501C00C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D501D908@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D501C5B8();
  *a1 = result;
  return result;
}

uint64_t sub_1D501D930(uint64_t a1)
{
  v2 = sub_1D501DA20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D501D96C(uint64_t a1)
{
  v2 = sub_1D501DA20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D501D9E4(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D501CBD0();
  return sub_1D5616328();
}

unint64_t sub_1D501DA20()
{
  result = qword_1EDD57018[0];
  if (!qword_1EDD57018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD57018);
  }

  return result;
}

void sub_1D501DA74(double *a1@<X8>)
{
  v164 = a1;
  v148 = sub_1D5611C78();
  OUTLINED_FUNCTION_4();
  v147 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v146 = (v4 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v166 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v165 = v10;
  v11 = type metadata accessor for CloudVideoOffer(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v163 = v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_135();
  v162 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_135();
  v161 = v17;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_135();
  v159 = v19;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_135();
  v158 = v21;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_135();
  v157 = v23;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_135();
  v156 = v25;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_135();
  v155 = v27;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_135();
  v154 = v29;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_135();
  v153 = v31;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_135();
  v152 = v33;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_135();
  v151 = v35;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_135();
  v150 = v37;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_135();
  v149 = v39;
  OUTLINED_FUNCTION_23();
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = v137 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41);
  v46 = v137 - v45;
  v47 = MEMORY[0x1EEE9AC00](v44);
  v49 = v137 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47);
  v52 = v137 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v54 = v137 - v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5F8, &qword_1D56294F0);
  sub_1D5610708();
  v55 = &v54[v11[22]];
  v56 = *(v55 + 1);
  v160 = *v55;

  OUTLINED_FUNCTION_5_33();
  sub_1D501ED68(v54, v57);
  if (v56)
  {
    v148 = v56;
    sub_1D5610708();
    v58 = *v52;
    v59 = v52[8];
    OUTLINED_FUNCTION_5_33();
    sub_1D501ED68(v52, v60);
    v61 = 0.0;
    v62 = 0.0;
    LODWORD(v147) = v59;
    if ((v59 & 1) == 0)
    {
      v62 = v58 / 1000.0;
    }

    OUTLINED_FUNCTION_51_13();
    sub_1D5610708();
    sub_1D4F39AB0(&v49[v11[5]], v165, &qword_1EC7EA3B8, &unk_1D561E370);
    sub_1D501ED68(v49, type metadata accessor for CloudVideoOffer);
    sub_1D5610708();
    sub_1D4F39AB0(&v46[v11[6]], v166, &qword_1EC7EAC58, &unk_1D561DA70);
    sub_1D501ED68(v46, type metadata accessor for CloudVideoOffer);
    sub_1D5610708();
    v63 = &v43[v11[7]];
    v146 = *v63;
    v145 = v63[8];
    sub_1D501ED68(v43, type metadata accessor for CloudVideoOffer);
    v64 = v149;
    OUTLINED_FUNCTION_51_13();
    sub_1D5610708();
    v65 = (v64 + v11[8]);
    v66 = v65[1];
    v143 = *v65;
    v144 = v66;

    sub_1D501ED68(v64, type metadata accessor for CloudVideoOffer);
    v67 = v150;
    OUTLINED_FUNCTION_51_13();
    sub_1D5610708();
    v68 = v67 + v11[9];
    v149 = *v68;
    v142 = *(v68 + 8);
    sub_1D501ED68(v67, type metadata accessor for CloudVideoOffer);
    v69 = v151;
    OUTLINED_FUNCTION_28_24();
    sub_1D5610708();
    v70 = v69 + v11[10];
    v71 = *v70;
    v72 = *(v70 + 8);
    sub_1D501ED68(v69, type metadata accessor for CloudVideoOffer);
    LODWORD(v151) = v72;
    if ((v72 & 1) == 0)
    {
      v61 = v71 / 1000.0;
    }

    v73 = v152;
    OUTLINED_FUNCTION_28_24();
    sub_1D5610708();
    LODWORD(v150) = *(v73 + v11[11]);
    sub_1D501ED68(v73, type metadata accessor for CloudVideoOffer);
    v74 = v153;
    OUTLINED_FUNCTION_28_24();
    sub_1D5610708();
    v75 = v74 + v11[12];
    v152 = *v75;
    v141 = *(v75 + 8);
    v76 = OUTLINED_FUNCTION_134_0();
    sub_1D501ED68(v76, v77);
    v78 = v154;
    OUTLINED_FUNCTION_28_24();
    sub_1D5610708();
    v79 = (v78 + v11[13]);
    v80 = v79[1];
    v140 = *v79;
    v153 = v80;

    v81 = OUTLINED_FUNCTION_134_0();
    sub_1D501ED68(v81, v82);
    v83 = v155;
    OUTLINED_FUNCTION_28_24();
    sub_1D5610708();
    v84 = (v83 + v11[14]);
    v85 = v84[1];
    v139 = *v84;
    v154 = v85;

    v86 = OUTLINED_FUNCTION_134_0();
    sub_1D501ED68(v86, v87);
    v88 = v156;
    OUTLINED_FUNCTION_28_24();
    sub_1D5610708();
    v89 = v88 + v11[15];
    v90 = *v89;
    v91 = *(v89 + 8);
    v92 = OUTLINED_FUNCTION_134_0();
    sub_1D501ED68(v92, v93);
    v94 = 0.0;
    LODWORD(v156) = v91;
    if ((v91 & 1) == 0)
    {
      v94 = v90 / 1000.0;
    }

    v95 = v157;
    OUTLINED_FUNCTION_28_24();
    sub_1D5610708();
    v96 = v95 + v11[16];
    v97 = *v96;
    v98 = *(v96 + 8);
    OUTLINED_FUNCTION_5_33();
    sub_1D501ED68(v95, v99);
    if (v98)
    {
      v157 = 0;
      v155 = 0;
    }

    else
    {
      v167 = v97;
      sub_1D56160F8();
      v157 = sub_1D560EED8();
      v155 = v104;
    }

    v105 = v158;
    OUTLINED_FUNCTION_51_13();
    sub_1D5610708();
    v106 = v105 + v11[17];
    v138 = *v106;
    v137[1] = *(v106 + 8);
    sub_1D501ED68(v105, type metadata accessor for CloudVideoOffer);
    v107 = v159;
    OUTLINED_FUNCTION_28_24();
    sub_1D5610708();
    v108 = (v107 + v11[18]);
    v109 = v108[1];
    v158 = *v108;

    sub_1D501ED68(v107, type metadata accessor for CloudVideoOffer);
    v110 = v161;
    OUTLINED_FUNCTION_28_24();
    sub_1D5610708();
    LODWORD(v159) = *(v110 + v11[19]);
    sub_1D501ED68(v110, type metadata accessor for CloudVideoOffer);
    v111 = v162;
    sub_1D5610708();
    LOBYTE(v110) = *(v111 + v11[20]);
    sub_1D501ED68(v111, type metadata accessor for CloudVideoOffer);
    v112 = v163;
    sub_1D5610708();
    v113 = (v112 + v11[21]);
    v114 = *v113;
    v115 = v113[1];

    sub_1D501ED68(v112, type metadata accessor for CloudVideoOffer);
    v116 = sub_1D5610718();
    v117 = v164;
    *v164 = v62;
    *(v117 + 8) = v147;
    v118 = type metadata accessor for VideoOffer(0);
    sub_1D4F39A1C(v165, v117 + v118[5], &qword_1EC7EA3B8, &unk_1D561E370);
    sub_1D4F39A1C(v166, v117 + v118[6], &qword_1EC7EAC58, &unk_1D561DA70);
    OUTLINED_FUNCTION_34_19((v117 + v118[7]));
    OUTLINED_FUNCTION_39_13(v119);
    v120 = (v117 + v118[8]);
    v121 = v144;
    *v120 = v143;
    v120[1] = v121;
    OUTLINED_FUNCTION_34_19((v117 + v118[9]));
    OUTLINED_FUNCTION_39_13(v122);
    v123 = (v117 + v118[10]);
    *v123 = v61;
    *(v123 + 8) = v151;
    *(v117 + v118[11]) = v150;
    v124 = (v117 + v118[12]);
    *v124 = v152;
    OUTLINED_FUNCTION_39_13(v124);
    v125 = (v117 + v118[13]);
    v126 = v153;
    *v125 = v140;
    v125[1] = v126;
    v127 = (v117 + v118[14]);
    v128 = v154;
    *v127 = v139;
    v127[1] = v128;
    v129 = (v117 + v118[15]);
    *v129 = v94;
    *(v129 + 8) = v156;
    v130 = (v117 + v118[16]);
    v131 = v155;
    *v130 = v157;
    v130[1] = v131;
    OUTLINED_FUNCTION_34_19((v117 + v118[17]));
    OUTLINED_FUNCTION_39_13(v132);
    v133 = (v117 + v118[18]);
    *v133 = v158;
    v133[1] = v109;
    *(v117 + v118[19]) = v159;
    *(v117 + v118[20]) = v110;
    v134 = (v117 + v118[21]);
    *v134 = v114;
    v134[1] = v115;
    v135 = (v117 + v118[22]);
    v136 = v148;
    *v135 = v160;
    v135[1] = v136;
    *(v117 + v118[23]) = v116;
  }

  else
  {
    v100 = v146;
    *v146 = 0x746E6169726176;
    v100[1] = 0xE700000000000000;
    v101 = v147;
    v102 = v148;
    (*(v147 + 104))(v100, *MEMORY[0x1E69763E0], v148);
    sub_1D501EE24(&qword_1EC7EE070, MEMORY[0x1E69763F0], MEMORY[0x1E69763F8]);
    swift_allocError();
    (*(v101 + 16))(v103, v100, v102);
    swift_willThrow();
    (*(v101 + 8))(v100, v102);
  }
}

void sub_1D501E524()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v98 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_38_2();
  v10 = type metadata accessor for CloudVideoOffer(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = 0;
  v16 = *(v0 + 8);
  if (v16)
  {
    goto LABEL_6;
  }

  v17 = *v0 * 1000.0;
  if (COERCE__INT64(fabs(v17)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_95;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v15 = v17;
LABEL_6:
  v124 = v15;
  v125 = v3;
  v3 = type metadata accessor for VideoOffer(0);
  sub_1D4F39AB0(v0 + v3[5], v1, &qword_1EC7EA3B8, &unk_1D561E370);
  sub_1D4F39AB0(v0 + v3[6], v7, &qword_1EC7EAC58, &unk_1D561DA70);
  v18 = 0;
  v19 = (v0 + v3[7]);
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = (v0 + v3[8]);
  v23 = *v22;
  v24 = v22[1];
  v25 = (v0 + v3[9]);
  v26 = *v25;
  v27 = *(v25 + 8);
  v28 = v0 + v3[10];
  v29 = *(v28 + 8);
  if (v29)
  {
    goto LABEL_11;
  }

  v30 = *v28 * 1000.0;
  if (COERCE__INT64(fabs(v30)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_96;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if (v30 >= 9.22337204e18)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v18 = v30;
LABEL_11:
  v31 = *(v0 + v3[11]);
  v32 = (v0 + v3[12]);
  v33 = *v32;
  v34 = *(v32 + 8);
  v35 = v3[14];
  v36 = (v0 + v3[13]);
  v37 = *v36;
  v38 = v36[1];
  v39 = *(v0 + v35);
  v40 = *(v0 + v35 + 8);
  v41 = v0 + v3[15];
  v42 = *(v41 + 8);
  v123 = v16;
  if ((v42 & 1) == 0)
  {
    v43 = *v41 * 1000.0;
    if (COERCE__INT64(fabs(v43)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v43 > -9.22337204e18)
      {
        if (v43 < 9.22337204e18)
        {
          v106 = v43;
          goto LABEL_17;
        }

LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    goto LABEL_99;
  }

  v106 = 0;
LABEL_17:
  v110 = v31;
  v111 = v34;
  v112 = v33;
  v113 = v18;
  v114 = v27;
  v115 = v26;
  v44 = (v0 + v3[16]);
  v45 = v44[1];
  v120 = v1;
  v121 = v7;
  v118 = v20;
  v119 = v23;
  v116 = v29;
  v117 = v21;
  v109 = v42;
  v107 = v37;
  v108 = v39;
  v126 = v38;
  v105 = v40;
  v122 = v24;
  if (!v45 || ((v46 = *v44, v47 = HIBYTE(v45) & 0xF, v48 = v46 & 0xFFFFFFFFFFFFLL, (v45 & 0x2000000000000000) != 0) ? (v49 = HIBYTE(v45) & 0xF) : (v49 = v46 & 0xFFFFFFFFFFFFLL), !v49))
  {

    v103 = 0;
    v104 = 1;
LABEL_92:
    v70 = v3[18];
    v71 = (v0 + v3[17]);
    v102 = *v71;
    v101 = *(v71 + 8);
    v72 = v3[20];
    v99 = *(v0 + v3[19]);
    v100 = *(v0 + v72);
    v74 = *(v0 + v70);
    v73 = *(v0 + v70 + 8);
    v75 = v3[22];
    v76 = (v0 + v3[21]);
    v77 = *v76;
    v78 = v76[1];
    v79 = *(v0 + v75);
    v80 = *(v0 + v75 + 8);
    *v14 = v124;
    *(v14 + 8) = v123;
    sub_1D4F39A1C(v120, v14 + v10[5], &qword_1EC7EA3B8, &unk_1D561E370);
    sub_1D4F39A1C(v121, v14 + v10[6], &qword_1EC7EAC58, &unk_1D561DA70);
    v81 = v14 + v10[7];
    *v81 = v118;
    *(v81 + 8) = v117;
    v82 = (v14 + v10[8]);
    v83 = v122;
    *v82 = v119;
    v82[1] = v83;
    v84 = v14 + v10[9];
    *v84 = v115;
    *(v84 + 8) = v114;
    v85 = v14 + v10[10];
    *v85 = v113;
    *(v85 + 8) = v116;
    *(v14 + v10[11]) = v110;
    v86 = v14 + v10[12];
    *v86 = v112;
    *(v86 + 8) = v111;
    v87 = (v14 + v10[13]);
    v88 = v126;
    *v87 = v107;
    v87[1] = v88;
    v89 = (v14 + v10[14]);
    v90 = v105;
    *v89 = v108;
    v89[1] = v90;
    OUTLINED_FUNCTION_34_19((v14 + v10[15]));
    *(v91 + 8) = v109;
    OUTLINED_FUNCTION_34_19((v14 + v10[16]));
    *(v92 + 8) = v104 & 1;
    OUTLINED_FUNCTION_34_19((v14 + v10[17]));
    OUTLINED_FUNCTION_39_13(v93);
    v94 = (v14 + v10[18]);
    *v94 = v74;
    v94[1] = v73;
    *(v14 + v10[19]) = v99;
    *(v14 + v10[20]) = v100;
    v95 = (v14 + v10[21]);
    *v95 = v77;
    v95[1] = v78;
    v96 = (v14 + v10[22]);
    *v96 = v79;
    v96[1] = v80;

    sub_1D56106F8();
    OUTLINED_FUNCTION_46();
    return;
  }

  if ((v45 & 0x1000000000000000) != 0)
  {

    v52 = sub_1D5341FA0();
    v68 = v97;

    goto LABEL_88;
  }

  if ((v45 & 0x2000000000000000) == 0)
  {
    if ((v46 & 0x1000000000000000) != 0)
    {
      v50 = ((v45 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_26:
      v51 = *v50;
      if (v51 == 43)
      {
        if (v48 >= 1)
        {
          if (v48 != 1)
          {
            v52 = 0;
            if (v50)
            {
              while (1)
              {
                OUTLINED_FUNCTION_22_0();
                if (!v54 & v53)
                {
                  goto LABEL_86;
                }

                OUTLINED_FUNCTION_10_2();
                if (!v54)
                {
                  goto LABEL_86;
                }

                v52 = v61 + v60;
                if (__OFADD__(v61, v60))
                {
                  goto LABEL_86;
                }

                OUTLINED_FUNCTION_40_0();
                if (v54)
                {
                  goto LABEL_87;
                }
              }
            }

            goto LABEL_77;
          }

          goto LABEL_86;
        }

        goto LABEL_106;
      }

      if (v51 != 45)
      {
        if (v48)
        {
          v52 = 0;
          if (v50)
          {
            while (1)
            {
              v64 = *v50 - 48;
              if (v64 > 9)
              {
                goto LABEL_86;
              }

              v65 = 10 * v52;
              if ((v52 * 10) >> 64 != (10 * v52) >> 63)
              {
                goto LABEL_86;
              }

              v52 = v65 + v64;
              if (__OFADD__(v65, v64))
              {
                goto LABEL_86;
              }

              ++v50;
              if (!--v48)
              {
                goto LABEL_77;
              }
            }
          }

          goto LABEL_77;
        }

LABEL_86:
        v52 = 0;
        v57 = 1;
        goto LABEL_87;
      }

      if (v48 >= 1)
      {
        if (v48 != 1)
        {
          v52 = 0;
          if (v50)
          {
            while (1)
            {
              OUTLINED_FUNCTION_22_0();
              if (!v54 & v53)
              {
                goto LABEL_86;
              }

              OUTLINED_FUNCTION_10_2();
              if (!v54)
              {
                goto LABEL_86;
              }

              v52 = v56 - v55;
              if (__OFSUB__(v56, v55))
              {
                goto LABEL_86;
              }

              OUTLINED_FUNCTION_40_0();
              if (v54)
              {
                goto LABEL_87;
              }
            }
          }

LABEL_77:
          v57 = 0;
LABEL_87:
          v129 = v57;
          v68 = v57;

LABEL_88:
          v104 = v68;
          if (v68)
          {
            v69 = 0;
          }

          else
          {
            v69 = v52;
          }

          v103 = v69;
          goto LABEL_92;
        }

        goto LABEL_86;
      }

      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

LABEL_103:
    v50 = sub_1D5615C58();
    goto LABEL_26;
  }

  v127 = v46;
  v128 = v45 & 0xFFFFFFFFFFFFFFLL;
  if (v46 != 43)
  {
    if (v46 != 45)
    {
      if (v47)
      {
        while (1)
        {
          OUTLINED_FUNCTION_22_0();
          if (!v54 & v53)
          {
            break;
          }

          OUTLINED_FUNCTION_10_2();
          if (!v54)
          {
            break;
          }

          v52 = v67 + v66;
          if (__OFADD__(v67, v66))
          {
            break;
          }

          OUTLINED_FUNCTION_40_0();
          if (v54)
          {
            goto LABEL_87;
          }
        }
      }

      goto LABEL_86;
    }

    if (v47)
    {
      if (v47 != 1)
      {
        OUTLINED_FUNCTION_53_12();
        while (1)
        {
          OUTLINED_FUNCTION_22_0();
          if (!v54 & v53)
          {
            break;
          }

          OUTLINED_FUNCTION_10_2();
          if (!v54)
          {
            break;
          }

          v52 = v59 - v58;
          if (__OFSUB__(v59, v58))
          {
            break;
          }

          OUTLINED_FUNCTION_40_0();
          if (v54)
          {
            goto LABEL_87;
          }
        }
      }

      goto LABEL_86;
    }

    goto LABEL_105;
  }

  if (v47)
  {
    if (v47 != 1)
    {
      OUTLINED_FUNCTION_53_12();
      while (1)
      {
        OUTLINED_FUNCTION_22_0();
        if (!v54 & v53)
        {
          break;
        }

        OUTLINED_FUNCTION_10_2();
        if (!v54)
        {
          break;
        }

        v52 = v63 + v62;
        if (__OFADD__(v63, v62))
        {
          break;
        }

        OUTLINED_FUNCTION_40_0();
        if (v54)
        {
          goto LABEL_87;
        }
      }
    }

    goto LABEL_86;
  }

LABEL_107:
  __break(1u);
}

uint64_t sub_1D501ED0C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_71();
  v5(v4);
  return a2;
}

uint64_t sub_1D501ED68(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D501EDC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoOffer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D501EE24(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for CloudVideoOffer.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEE)
  {
    if (a2 + 18 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 18) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 19;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v5 = v6 - 19;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CloudVideoOffer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D501EFD4()
{
  result = qword_1EC7EE078;
  if (!qword_1EC7EE078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE078);
  }

  return result;
}

unint64_t sub_1D501F02C()
{
  result = qword_1EDD57008;
  if (!qword_1EDD57008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD57008);
  }

  return result;
}

unint64_t sub_1D501F084()
{
  result = qword_1EDD57010;
  if (!qword_1EDD57010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD57010);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_47_18@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t sub_1D501F124@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D56109D8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(v31 - v8, v1, v3);
  sub_1D56109A8();
  sub_1D501F810(&unk_1EDD53170, MEMORY[0x1E6975E78]);
  v9 = OUTLINED_FUNCTION_0_53(v7);
  v10 = *(v4 + 8);
  v10(v7, v3);
  if (v9)
  {
    v11 = OUTLINED_FUNCTION_93();
    (v10)(v11);
    return sub_1D560D908();
  }

  if (qword_1EDD53180 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v3, qword_1EDD767D8);
  if (OUTLINED_FUNCTION_0_53(v13))
  {
    v14 = OUTLINED_FUNCTION_93();
    (v10)(v14);
    if (qword_1EDD53D48 != -1)
    {
      swift_once();
    }

    v15 = sub_1D560D9A8();
    v16 = v15;
    v17 = qword_1EDD53D50;
LABEL_9:
    v18 = __swift_project_value_buffer(v15, v17);
    return (*(*(v16 - 8) + 16))(a1, v18, v16);
  }

  sub_1D5610988();
  OUTLINED_FUNCTION_0_53(v7);
  v19 = OUTLINED_FUNCTION_7_10();
  (v10)(v19);
  if (v9)
  {
    v20 = OUTLINED_FUNCTION_93();
    (v10)(v20);
    return sub_1D560D878();
  }

  else
  {
    sub_1D56109C8();
    OUTLINED_FUNCTION_0_53(v7);
    v21 = OUTLINED_FUNCTION_7_10();
    (v10)(v21);
    sub_1D5610998();
    OUTLINED_FUNCTION_0_53(v7);
    v22 = OUTLINED_FUNCTION_7_10();
    (v10)(v22);
    sub_1D56109B8();
    OUTLINED_FUNCTION_0_53(v7);
    v23 = OUTLINED_FUNCTION_7_10();
    (v10)(v23);
    if (qword_1EC7E8B28 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v3, qword_1EC87BF50);
    if (OUTLINED_FUNCTION_0_53(v24))
    {
      v25 = OUTLINED_FUNCTION_93();
      (v10)(v25);
      if (qword_1EDD53C38 != -1)
      {
        swift_once();
      }

      v15 = sub_1D560D9A8();
      v16 = v15;
      v17 = qword_1EDD53C40;
      goto LABEL_9;
    }

    if (qword_1EC7E8B30 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v3, qword_1EC87BF68);
    if (OUTLINED_FUNCTION_0_53(v26))
    {
      v27 = OUTLINED_FUNCTION_93();
      (v10)(v27);
      if (qword_1EC7E8F18 != -1)
      {
        swift_once();
      }

      v15 = sub_1D560D9A8();
      v16 = v15;
      v17 = qword_1EC7F08A0;
      goto LABEL_9;
    }

    if (qword_1EC7E8B38 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v3, qword_1EC87BF80);
    if (OUTLINED_FUNCTION_0_53(v28))
    {
      v29 = OUTLINED_FUNCTION_93();
      (v10)(v29);
      if (qword_1EDD53CE8 != -1)
      {
        swift_once();
      }

      v15 = sub_1D560D9A8();
      v16 = v15;
      v17 = qword_1EDD53CF0;
      goto LABEL_9;
    }

    v31[0] = 0;
    v31[1] = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000001DLL, 0x80000001D5681AE0);
    sub_1D501F810(&qword_1EC7EE080, MEMORY[0x1E6975E80]);
    v30 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v30);

    MEMORY[0x1DA6EAC70](0xD00000000000003ALL, 0x80000001D5681B00);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D501F7B0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D56109D8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1D56109E8();
}

uint64_t sub_1D501F810(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D56109D8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D501F854()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EC7EE088);
  __swift_project_value_buffer(v0, qword_1EC7EE088);
  OUTLINED_FUNCTION_24_0();
  v2 = *(v1 + 104);

  return v2();
}

uint64_t static TVShow.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7E8B40 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  __swift_project_value_buffer(v2, qword_1EC7EE088);
  OUTLINED_FUNCTION_24_0();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t TVShow.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v131 = a3;
  v132 = a4;
  v123 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_48(&v113 - v9);
  v122 = sub_1D5612B88();
  OUTLINED_FUNCTION_4();
  v133 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v13 - v12);
  v14 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v116 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v18 - v17);
  v129 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v128 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v114 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE0A0, &qword_1D5673CE0);
  v24 = OUTLINED_FUNCTION_22(v23);
  MEMORY[0x1EEE9AC00](v24);
  v26 = OUTLINED_FUNCTION_48(&v113 - v25);
  v27 = type metadata accessor for TVShowPropertyProvider(v26);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_59_0();
  v113 = v29 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v134 = &v113 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v34 = OUTLINED_FUNCTION_22(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_59_0();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v113 - v39;
  v120 = sub_1D5612478();
  OUTLINED_FUNCTION_4();
  v119 = v41;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5();
  v45 = v44 - v43;

  v130 = a2;
  sub_1D560F7E8();
  v126 = sub_1D502066C();
  v125 = sub_1D5614C68();

  sub_1D560FFE8();
  __swift_storeEnumTagSinglePayload(v40, 0, 1, v14);
  sub_1D560FFE8();
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v14);
  v127 = v45;
  v132 = a1;
  sub_1D560D4D8();
  sub_1D4E7661C(v37, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E7661C(v40, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4EC76A8(v131, v136);
  v117 = v27;
  if (!v137)
  {
    sub_1D4E7661C(v136, &qword_1EC7EEC40, &unk_1D561C070);
    v138 = 0u;
    v139 = 0u;
    v140 = 0;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3A8, &unk_1D561C1E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v140 = 0;
    v138 = 0u;
    v139 = 0u;
    goto LABEL_8;
  }

  if (!*(&v139 + 1))
  {
LABEL_8:
    sub_1D4E7661C(&v138, &qword_1EC7EA368, &unk_1D5629620);
    goto LABEL_9;
  }

  sub_1D4E48324(&v138, &v141);
  __swift_project_boxed_opaque_existential_1(&v141, v142);
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  v46 = v124;
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v46, 0, 1, v27);
    v47 = v113;
    sub_1D5020FB8(v46, v113);
    v48 = v134;
    sub_1D5020EF8(v47, v134);
    v49 = v114;
    sub_1D560D718();
    (*(v128 + 40))(v48 + v27[25], v49, v129);
    v50 = v115;
    sub_1D5612468();
    (*(v116 + 40))(v48 + v27[26], v50, v14);
    v51 = sub_1D5612458();
    v53 = v52;
    sub_1D5020F5C(v47);
    v54 = (v48 + v27[27]);

    *v54 = v51;
    v54[1] = v53;
    __swift_destroy_boxed_opaque_existential_1(&v141);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v109, v110, v111, v27);
  sub_1D4E7661C(v46, &qword_1EC7EE0A0, &qword_1D5673CE0);
  __swift_destroy_boxed_opaque_existential_1(&v141);
LABEL_9:
  sub_1D56140F8();
  v55 = v134;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  v60 = sub_1D5610978();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v60);
  v64 = sub_1D560C0A8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v64);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v60);
  sub_1D560C328();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
  (*(v128 + 16))(v55 + v27[25], v132, v129);
  sub_1D5612468();
  v124 = sub_1D5612458();
  v116 = v82;
  sub_1D5614A88();
  v83 = OUTLINED_FUNCTION_1_49();
  v84 = OUTLINED_FUNCTION_1_49();
  v85 = OUTLINED_FUNCTION_1_49();
  v86 = OUTLINED_FUNCTION_1_49();
  *(v55 + v27[5]) = 0;
  *(v55 + v27[6]) = 0;
  *(v55 + v27[7]) = 0;
  *(v55 + v27[8]) = 0;
  *(v55 + v27[10]) = 0;
  v87 = v55 + v27[11];
  *v87 = 0;
  *(v87 + 8) = 1;
  *(v55 + v27[12]) = 0;
  *(v55 + v27[13]) = 2;
  *(v55 + v27[14]) = 2;
  *(v55 + v27[16]) = 0;
  v88 = (v55 + v27[17]);
  *v88 = 0;
  v88[1] = 0;
  *(v55 + v27[18]) = 0;
  *(v55 + v27[23]) = 0;
  if (qword_1EC7E9800 != -1)
  {
    swift_once();
  }

  v89 = qword_1EC87C740;
  if (qword_1EC87C740 >> 62)
  {
    sub_1D560CDE8();

    v112 = sub_1D5615E18();

    v89 = v112;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v90 = v134;
  *(v134 + v27[24]) = v89;
  v91 = (v90 + v27[27]);
  v92 = v116;
  *v91 = v124;
  v91[1] = v92;
  *(v90 + v27[28]) = v83;
  *(v90 + v27[29]) = v84;
  *(v90 + v27[30]) = v85;
  *(v90 + v27[31]) = v86;
LABEL_14:
  swift_getKeyPath();
  LOBYTE(v141) = 0;
  v93 = *MEMORY[0x1E6976668];
  v94 = v133;
  v116 = *(v133 + 104);
  v124 = v133 + 104;
  v95 = v118;
  v96 = v122;
  (v116)(v118, v93, v122);
  v115 = sub_1D5021280(&qword_1EC7ED200, type metadata accessor for TVShowPropertyProvider, &unk_1D5673C50);
  sub_1D5610D98();

  v97 = *(v94 + 8);
  v133 = v94 + 8;
  v98 = OUTLINED_FUNCTION_97_1();
  v97(v98);
  swift_getKeyPath();
  LOBYTE(v141) = 4;
  LOBYTE(v138) = 2;
  v136[0] = 8;
  v135 = 6;
  v99 = v121;
  sub_1D5614BE8();
  LODWORD(v114) = *MEMORY[0x1E6976670];
  v100 = v114;
  v101 = v116;
  (v116)(v95, v114, v96);
  sub_1D5610DB8();

  v102 = OUTLINED_FUNCTION_97_1();
  v97(v102);
  sub_1D4E7661C(v99, &qword_1EC7EAC98, &unk_1D561DA80);
  swift_getKeyPath();
  LOBYTE(v141) = 3;
  v101(v95, v100, v96);
  v103 = v115;
  v104 = v134;
  sub_1D5610D68();

  v105 = OUTLINED_FUNCTION_97_1();
  v97(v105);
  swift_getKeyPath();
  LOBYTE(v141) = 7;
  v101(v95, v114, v96);
  sub_1D5610D68();

  v106 = OUTLINED_FUNCTION_97_1();
  v97(v106);
  v142 = v117;
  v143 = v103;
  v107 = __swift_allocate_boxed_opaque_existential_0(&v141);
  sub_1D5020EF8(v104, v107);
  TVShow.init(propertyProvider:)(&v141, v123);
  swift_unknownObjectRelease();
  sub_1D4E7661C(v131, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v128 + 8))(v132, v129);
  (*(v119 + 8))(v127, v120);
  return sub_1D5020F5C(v104);
}

unint64_t sub_1D502066C()
{
  result = qword_1EC7EE0A8;
  if (!qword_1EC7EE0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE0A8);
  }

  return result;
}

uint64_t TVShow.convertToLegacyModelStorageDictionary(for:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  v1 = OUTLINED_FUNCTION_22(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_59_0();
  v4 = v2 - v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v80 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v80 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v12 = OUTLINED_FUNCTION_22(v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v80 - v13;
  sub_1D4ECCA88();
  v85 = sub_1D5614BD8();
  if (qword_1EC7E9538 != -1)
  {
    swift_once();
  }

  v15 = sub_1D56140F8();
  sub_1D5021280(&qword_1EC7EA688, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  sub_1D5021280(&qword_1EC7EC4A0, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1D4E7661C(v14, &qword_1EC7E9CA0, &unk_1D561A0C0);
    OUTLINED_FUNCTION_11_35();
  }

  else
  {
    sub_1D5613F38();
    OUTLINED_FUNCTION_24_0();
    (*(v16 + 8))(v14, v15);
  }

  v17 = OUTLINED_FUNCTION_7_36();
  sub_1D4EC8720(v17, 0, v18, v19, v20, v21, v22, v23, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
  if (qword_1EC7E9550 != -1)
  {
    swift_once();
  }

  v24 = sub_1D5610978();
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_12_7(v10);
  if (v25)
  {
    sub_1D4E7661C(v10, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    v26 = sub_1D5610968();
    v28 = v27;
    OUTLINED_FUNCTION_24_0();
    v29 = OUTLINED_FUNCTION_97_1();
    v30(v29);
    if (v28)
    {
      v83 = MEMORY[0x1E69E6158];
      v80 = v26;
      v81 = v28;
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_11_35();
LABEL_14:
  v31 = OUTLINED_FUNCTION_7_36();
  sub_1D4EC8720(v31, 2, v32, v33, v34, v35, v36, v37, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
  if (qword_1EC7E9558 != -1)
  {
    swift_once();
  }

  v38 = MEMORY[0x1E69E6530];
  sub_1D560EC28();
  v39 = v80;
  if (v81)
  {
    v39 = 0;
  }

  v83 = v38;
  v80 = v39;
  v40 = OUTLINED_FUNCTION_7_36();
  sub_1D4EC8720(v40, 3, v41, v42, v43, v44, v45, v46, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_12_7(v8);
  v47 = MEMORY[0x1E69E6158];
  if (v25)
  {
    sub_1D4E7661C(v8, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    v48 = sub_1D5610948();
    v50 = v49;
    OUTLINED_FUNCTION_24_0();
    (*(v51 + 8))(v8, v24);
    if (v50)
    {
      v83 = v47;
      v80 = v48;
      v81 = v50;
      goto LABEL_24;
    }
  }

  OUTLINED_FUNCTION_11_35();
LABEL_24:
  v52 = OUTLINED_FUNCTION_7_36();
  sub_1D4EC8720(v52, 4, v53, v54, v55, v56, v57, v58, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
  OUTLINED_FUNCTION_3_41();
  OUTLINED_FUNCTION_12_7(v4);
  if (v25)
  {
    sub_1D4E7661C(v4, &qword_1EC7EAC98, &unk_1D561DA80);
LABEL_29:
    OUTLINED_FUNCTION_11_35();
    goto LABEL_30;
  }

  v59 = sub_1D5610958();
  v61 = v60;
  OUTLINED_FUNCTION_24_0();
  (*(v62 + 8))(v4, v24);
  if (!v61)
  {
    goto LABEL_29;
  }

  v83 = v47;
  v80 = v59;
  v81 = v61;
LABEL_30:
  v63 = OUTLINED_FUNCTION_7_36();
  sub_1D4EC8720(v63, 6, v64, v65, v66, v67, v68, v69, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
  v70 = TVShow.name.getter();
  v83 = v47;
  v80 = v70;
  v81 = v71;
  v72 = OUTLINED_FUNCTION_7_36();
  sub_1D4EC8720(v72, 7, v73, v74, v75, v76, v77, v78, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
  return v85;
}

uint64_t TVShow.LegacyModelTVShowPropertyKey.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1D5615EF8();

  v6 = 8;
  if (v4 < 8)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

unint64_t TVShow.LegacyModelTVShowPropertyKey.rawValue.getter()
{
  result = 0xD00000000000001CLL;
  switch(*v0)
  {
    case 1:
    case 4:
      result = 0xD000000000000025;
      break;
    case 2:
      result = 0xD000000000000020;
      break;
    case 3:
      result = 0xD000000000000021;
      break;
    case 5:
      result = 0xD00000000000001FLL;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D5020D20@<X0>(unint64_t *a1@<X8>)
{
  result = TVShow.LegacyModelTVShowPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TVShow.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6976860];
  sub_1D5613158();
  OUTLINED_FUNCTION_24_0();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_1D5020DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5021280(&qword_1EC7EE0C0, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

uint64_t sub_1D5020E70(uint64_t a1, uint64_t a2)
{
  sub_1D5021280(&qword_1EC7EA390, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);

  return sub_1D56132F8();
}

uint64_t sub_1D5020EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVShowPropertyProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5020F5C(uint64_t a1)
{
  v2 = type metadata accessor for TVShowPropertyProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5020FB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVShowPropertyProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D5021020()
{
  result = qword_1EC7EE0B0;
  if (!qword_1EC7EE0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE0B0);
  }

  return result;
}

unint64_t sub_1D502107C()
{
  result = qword_1EC7EE0B8;
  if (!qword_1EC7EE0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EE0B8);
  }

  return result;
}

uint64_t _s28LegacyModelTVShowPropertyKeyOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s28LegacyModelTVShowPropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}