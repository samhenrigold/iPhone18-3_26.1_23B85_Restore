uint64_t sub_2752C2888@<X0>(uint64_t *a1@<X8>)
{
  result = MusicLibraryPlaylistEditViewModel.rawCoverArtworkRecipe.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Track.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFD98, &qword_2752DEDF8);
  OUTLINED_FUNCTION_3(v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - v5;
  v7 = sub_2752DE048();
  OUTLINED_FUNCTION_0();
  v40 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v39 = (v11 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809BFDA0, &qword_2752DEE00);
  OUTLINED_FUNCTION_3(v12);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v16 = sub_2752DDDA8();
  OUTLINED_FUNCTION_0();
  v38 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  v21 = (v20 - v19);
  v22 = sub_2752DE098();
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1();
  v28 = (v27 - v26);
  if ([a1 hasVideo] && (objc_msgSend(a1, sel_isArtistUploadedContent) & 1) == 0)
  {
    v37 = a1;
    sub_2752C2DC8(v37, &unk_2809BFDA0, &qword_2752DEE00, MEMORY[0x277CD7E58], sub_2752D5378, v15);
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
    {

      v34 = *(v38 + 32);
      v34(v21, v15, v16);
      v34(v28, v21, v16);
      v33 = MEMORY[0x277CD8350];
      goto LABEL_12;
    }

    sub_2752C3990(v15, &unk_2809BFDA0, &qword_2752DEE00);
  }

  if (([a1 hasVideo] & 1) == 0)
  {
    sub_2752C2DC8(a1, &qword_2809BFD98, &qword_2752DEDF8, MEMORY[0x277CD8238], sub_2752D5638, v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      sub_2752C3990(v6, &qword_2809BFD98, &qword_2752DEDF8);
      goto LABEL_9;
    }

    v31 = v39;
    v32 = *(v40 + 32);
    v32(v39, v6, v7);
    v32(v28, v31, v7);
    v33 = MEMORY[0x277CD8368];
LABEL_12:
    (*(v24 + 104))(v28, *v33, v22);
    v30 = v41;
    (*(v24 + 32))(v41, v28, v22);
    v29 = 0;
    return __swift_storeEnumTagSinglePayload(v30, v29, 1, v22);
  }

LABEL_9:
  v29 = 1;
  v30 = v41;
  return __swift_storeEnumTagSinglePayload(v30, v29, 1, v22);
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

uint64_t sub_2752C2DC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(uint64_t, void)@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3(v12);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  v16 = a4(0);
  a5(a1, MEMORY[0x277D84F90]);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16))
  {
    sub_2752C3990(v15, a2, a3);
    v17 = 1;
  }

  else
  {
    (*(*(v16 - 8) + 32))(a6, v15, v16);
    v17 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a6, v17, 1, v16);
}

uint64_t sub_2752C2FF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(uint64_t, void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3(v12);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  a4(a1, MEMORY[0x277D84F90]);
  v16 = a5(0);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16))
  {
    sub_2752C3990(v15, a2, a3);
    v17 = 1;
  }

  else
  {
    (*(*(v16 - 8) + 32))(a6, v15, v16);
    v17 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a6, v17, 1, v16);
}

uint64_t sub_2752C3990(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t MPModelLibraryDownloadedItemsSnapshot.downloadedSongCatalogIDs.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MPModelLibraryDownloadedItemsSnapshot_downloadedSongCatalogIDs;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_2752C3BC4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 downloadedSongCatalogIDs];
  sub_2752C3CD8(0, &qword_2809BFFF0, 0x277CCABB0);
  v4 = sub_2752DE2C8();

  *a2 = v4;
}

void sub_2752C3C38(uint64_t *a1, void **a2)
{
  v2 = *a2;
  sub_2752C3CD8(0, &qword_2809BFFF0, 0x277CCABB0);
  v3 = sub_2752DE2B8();
  [v2 setDownloadedSongCatalogIDs_];
}

uint64_t sub_2752C3CD8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t MusicCollaborativePlaylist.EndCollaborationRequest.init(playlist:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEC0, &qword_2752DEE60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_2752DE148();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  v14 = a1;
  sub_2752C2F40(v14, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {

    sub_2752C3F00(v6);
    v15 = 1;
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v11, v13, v7);
    sub_2752DD748();

    (*(v8 + 8))(v13, v7);
    v15 = 0;
  }

  v16 = sub_2752DD768();
  return __swift_storeEnumTagSinglePayload(a2, v15, 1, v16);
}

uint64_t sub_2752C3F00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEC0, &qword_2752DEE60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MusicCollaborativePlaylist.EndCollaborationRequest.perform()()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_2752C3FF8;

  return MEMORY[0x2821896C8]();
}

uint64_t sub_2752C3FF8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2752C412C, 0, 0);
  }
}

uint64_t sub_2752C412C()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = v0[6];
    sub_2752DE3D8();
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    MEMORY[0x277C74460](0xD000000000000018, 0x80000002752DF680);
    v0[4] = v3;
    sub_2752DE458();
    MEMORY[0x277C74460](0xD00000000000001BLL, 0x80000002752DF6A0);
    return sub_2752DE468();
  }
}

uint64_t Artwork.init(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFFF8, &qword_2752DF090);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v7 - v3;
  v7[4] = &type metadata for SoftLinking_ArtworkCatalog;
  v7[5] = sub_2752C4358();
  v7[1] = a1;
  v5 = sub_2752DE0C8();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  return sub_2752DE0D8();
}

unint64_t sub_2752C4358()
{
  result = qword_2811ACD98;
  if (!qword_2811ACD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811ACD98);
  }

  return result;
}

id static MusicVideo.canBeConverted(from:)(void *a1)
{
  result = [a1 hasVideo];
  if (result)
  {
    return ([a1 isArtistUploadedContent] ^ 1);
  }

  return result;
}

id static MPModelDownloadedSongCatalogStore.shared.getter()
{
  if (qword_2809BFD80 != -1)
  {
    swift_once();
  }

  v1 = qword_2809C0000;

  return v1;
}

id sub_2752C4478()
{
  result = [objc_allocWithZone(MPModelDownloadedSongCatalogStore) init];
  qword_2809C0000 = result;
  return result;
}

MPModelDownloadedSongCatalogStore __swiftcall MPModelDownloadedSongCatalogStore.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for MPModelDownloadedSongCatalogStore()
{
  result = qword_2809C0008;
  if (!qword_2809C0008)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809C0008);
  }

  return result;
}

uint64_t LegacyModelObjectConvertible<>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_2752DE368();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  sub_2752DD9A8();
  v14 = sub_2752DE2D8();
  (*(a3 + 24))(a1, v14, a2, a3);
  if (__swift_getEnumTagSinglePayload(v13, 1, a2))
  {
    (*(v10 + 8))(v13, v8);
    v15 = 1;
  }

  else
  {
    (*(*(a2 - 8) + 32))(a4, v13, a2);
    v15 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a4, v15, 1, a2);
}

uint64_t LegacyModelObjectConvertible<>.init(_:requestedRelationshipProperties:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a4;
  v46 = a6;
  v10 = sub_2752DDD38();
  OUTLINED_FUNCTION_0();
  v43 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = sub_2752DDCB8();
  OUTLINED_FUNCTION_0();
  v44 = v17;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v40 - v22;
  if ((*(a5 + 32))(a1, a3, a5))
  {
    v42 = a2;
    if (dynamic_cast_existential_1_conditional(a3, a3, MEMORY[0x277CD7DA8]))
    {
      v41 = a1;
      v24 = [a1 identifiers];
      v25 = v46;
      v26 = v24;
      sub_2752DDD68();
      sub_2752C4D60(v15, v23);

      (*(v43 + 8))(v15, v10);
      v27 = v44;
      (*(v44 + 16))(v21, v23, v16);
      v48 = 0;
      memset(v47, 0, sizeof(v47));
      sub_2752DD9A8();
      sub_2752DD998();
      v28 = v41;
      sub_2752DE448();

      sub_2752DE028();

      (*(v27 + 8))(v23, v16);
      return __swift_storeEnumTagSinglePayload(v25, 0, 1, a3);
    }

    if (qword_2811ACD90 != -1)
    {
      swift_once();
    }

    v30 = sub_2752DD988();
    __swift_project_value_buffer(v30, qword_2811ACEF0);
    v31 = sub_2752DD968();
    v32 = sub_2752DE348();
    v33 = a1;
    if (os_log_type_enabled(v31, v32))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v47[0] = v35;
      *v34 = 136446210;
      v36 = sub_2752DE558();
      v38 = sub_2752C50C8(v36, v37, v47);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_2752C1000, v31, v32, "Cannot create a MusicIdentifierSet for item type %{public}s, that does not conform to MusicItemTypeValueProviding.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x277C74BF0](v35, -1, -1);
      MEMORY[0x277C74BF0](v34, -1, -1);
    }
  }

  else
  {
  }

  v39 = v46;

  return __swift_storeEnumTagSinglePayload(v39, 1, 1, a3);
}

uint64_t LegacyModelObjectConvertible<>.convertToLegacyModelObject(reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_2752CCBC0(a1, a2, a3);
  v5 = [v4 _underlyingModelObject];
  swift_getAssociatedTypeWitness();
  v6 = swift_dynamicCastUnknownClass();
  if (v6)
  {
    v7 = v6;

    return v7;
  }

  else
  {

    sub_2752DE3D8();
    MEMORY[0x277C74460](0xD000000000000027, 0x80000002752DF7B0);
    v9 = [v4 _underlyingModelObject];
    v10 = [v9 description];
    v11 = sub_2752DE1B8();
    v13 = v12;

    MEMORY[0x277C74460](v11, v13);

    MEMORY[0x277C74460](0x20726F6620, 0xE500000000000000);
    swift_getDynamicType();
    v14 = sub_2752DE558();
    MEMORY[0x277C74460](v14);

    MEMORY[0x277C74460](544432416, 0xE400000000000000);
    v15 = sub_2752DE558();
    MEMORY[0x277C74460](v15);

    MEMORY[0x277C74460](46, 0xE100000000000000);
    result = sub_2752DE468();
    __break(1u);
  }

  return result;
}

uint64_t sub_2752C4D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0010, &qword_2752DEF58);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_2752DDD88();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  sub_2752DDD38();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  (*(v15 + 16))(v13 - v12, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0018, &qword_2752DEF60);
  v16 = sub_2752DDD58();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2752DEEF0;
  (*(v18 + 104))(v20 + v19, *MEMORY[0x277CD7CC8], v16);
  sub_2752DDD78();
  v21 = sub_2752DDD48();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v21);
  v22 = swift_unknownObjectRetain();
  return sub_2752CED14(v22, v14, v10, v6, a2);
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_2752C50C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2752C518C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2752C5650(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2752C518C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2752C528C(a5, a6);
    *a1 = v9;
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
    result = sub_2752DE3F8();
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

uint64_t sub_2752C528C(uint64_t a1, unint64_t a2)
{
  v3 = sub_2752C52D8(a1, a2);
  sub_2752C53F0(&unk_2884050B0);
  return v3;
}

uint64_t sub_2752C52D8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2752DE208())
  {
    result = sub_2752C8ED4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2752DE3C8();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2752DE3F8();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2752C53F0(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_2752C54D4(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_2752C54D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809C0020, &qword_2752DEF68);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_2752C5650(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2752C56C0(void *a1, SEL *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = [a1 *a2];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = sub_2752DE178();

  return v7;
}

uint64_t sub_2752C572C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2752DE1B8();

  return v4;
}

id sub_2752C578C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFFF8, &qword_2752DF090);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_2752DE0C8();
  __swift_storeEnumTagSinglePayload(a2, 1, 1, v7);
  result = [a1 musicKit_existingColorAnalysis];
  if (result)
  {
    v9 = result;
    v10 = [result musicKit_backgroundColor];
    v11 = [v9 musicKit_primaryTextColor];
    v12 = [v9 musicKit_secondaryTextColor];
    v13 = [v9 musicKit_tertiaryTextColor];
    sub_2752DE0B8();
    swift_unknownObjectRelease();
    sub_2752C6614(a2);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
    return sub_2752C667C(v6, a2);
  }

  return result;
}

uint64_t sub_2752C5938()
{
  OUTLINED_FUNCTION_3_0();
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2752C5A38;
  v2 = swift_continuation_init();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0038, &qword_2752DF080);
  OUTLINED_FUNCTION_0_0(v3);
  v0[11] = 1107296256;
  v0[12] = sub_2752C5BCC;
  v0[13] = &block_descriptor_6;
  v0[14] = v2;
  [v1 musicKit:v0 + 10 requestImageDataWithCompletion:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2752C5A38()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_2752C5B64;
  }

  else
  {
    v2 = sub_2752C5B48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2752C5B64()
{
  OUTLINED_FUNCTION_3_0();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2752C5BCC(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_2752C5C68(v5, a3);
  }

  v7 = a2;
  v8 = sub_2752DD648();
  v10 = v9;

  return sub_2752C5CD4(v5, v8, v10);
}

uint64_t sub_2752C5C68(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0040, &qword_2752DF088);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_2752C5CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return swift_continuation_throwingResume();
}

uint64_t sub_2752C5CF8(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_2752C5D0C()
{
  OUTLINED_FUNCTION_3_0();
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2752C5E0C;
  v2 = swift_continuation_init();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0030, &qword_2752DF070);
  OUTLINED_FUNCTION_0_0(v3);
  v0[11] = 1107296256;
  v0[12] = sub_2752C6014;
  v0[13] = &block_descriptor;
  v0[14] = v2;
  [v1 musicKit:v0 + 10 requestColorAnalysisWithCompletionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2752C5E0C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_2752C5EE4, 0, 0);
}

uint64_t sub_2752C5EE4()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = [*(v0 + 144) musicKit_backgroundColor];
    v3 = [v1 musicKit_primaryTextColor];
    v4 = [v1 musicKit_secondaryTextColor];
    v5 = [v1 musicKit_tertiaryTextColor];
  }

  v6 = *(v0 + 152);
  sub_2752DE0B8();
  swift_unknownObjectRelease();
  v7 = sub_2752DE0C8();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2752C6014(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  swift_unknownObjectRetain();

  return sub_2752C6064(v3, a2);
}

id sub_2752C6084(void *a1)
{
  v1 = [a1 musicKit_artworkCatalogWithFittingSize_];

  return v1;
}

uint64_t sub_2752C60B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = swift_getObjectType();
  *a2 = a1;

  return swift_unknownObjectRetain();
}

id (*sub_2752C61F4(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[2] = *v1;
  [v3 musicKit_fittingSize];
  *a1 = v4;
  a1[1] = v5;
  return sub_2752C6248;
}

id sub_2752C6260@<X0>(void *a1@<X8>)
{
  result = sub_2752C6084(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_2752C628C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2752C6320;

  return sub_2752C5924(v2);
}

uint64_t sub_2752C6320()
{
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_2_0();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v0)
  {
    v8 = v5;
    v9 = v3;
  }

  return v10(v8, v9);
}

uint64_t sub_2752C6424(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2752C64C4;

  return sub_2752C5CF8(a1, v4);
}

uint64_t sub_2752C64C4()
{
  v1 = *v0;
  OUTLINED_FUNCTION_2_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2752C6614(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFFF8, &qword_2752DF090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2752C667C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFFF8, &qword_2752DF090);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

void sub_2752C677C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_23();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14(0);
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v35 - v19;
  sub_2752DE008();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  (*(v25 + 16))(v23 - v22, v13);
  (*(v17 + 16))(v20, v5, v15);
  v26 = v11(v20, v24);
  v27 = [v26 _underlyingModelObject];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    OUTLINED_FUNCTION_22();
  }

  else
  {

    OUTLINED_FUNCTION_8();
    sub_2752DE3D8();
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_15();
    MEMORY[0x277C74460](0xD000000000000027);
    v28 = [v26 _underlyingModelObject];
    v29 = [v28 description];
    v30 = sub_2752DE1B8();
    v32 = v31;

    MEMORY[0x277C74460](v30, v32);

    MEMORY[0x277C74460](0x20726F6620, 0xE500000000000000);
    v33 = sub_2752DE558();
    MEMORY[0x277C74460](v33);

    MEMORY[0x277C74460](544432416, 0xE400000000000000);
    sub_2752C3CD8(0, v7, v9);
    v34 = sub_2752DE558();
    MEMORY[0x277C74460](v34);

    MEMORY[0x277C74460](46, 0xE100000000000000);
    OUTLINED_FUNCTION_5();
    v35 = 33;
    sub_2752DE468();
    __break(1u);
  }
}

void MusicLibraryPlaylistEditViewModel.init(_:authorProfile:mediaLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_23();
  v42 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFE78, &unk_2752DF0B0);
  v14 = OUTLINED_FUNCTION_3(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_1();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEC0, &qword_2752DEE60);
  v22 = OUTLINED_FUNCTION_3(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_1();
  v41 = v23 - v24;
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v41 - v29;
  sub_2752DE148();
  OUTLINED_FUNCTION_17();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  if (v12)
  {
    sub_2752C2F40(v12, v28);
    sub_2752C7FD8(v30, &qword_2809BFEC0, &qword_2752DEE60);
    sub_2752C6D44(v28, v30, &qword_2809BFEC0, &qword_2752DEE60);
  }

  sub_2752DD8F8();
  OUTLINED_FUNCTION_17();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  if (v10)
  {
    sub_2752C3158(v10, v17);
    sub_2752C7FD8(v20, &qword_2809BFE78, &unk_2752DF0B0);
    sub_2752C6D44(v17, v20, &qword_2809BFE78, &unk_2752DF0B0);
  }

  sub_2752DDE28();
  v39 = v8;
  sub_2752C9B58(v39);
  sub_2752C6CF4(v30, v41, &qword_2809BFEC0, &qword_2752DEE60);
  sub_2752C6CF4(v20, v17, &qword_2809BFE78, &unk_2752DF0B0);
  v40 = v12;
  sub_2752DD8A8();

  sub_2752C7FD8(v20, &qword_2809BFE78, &unk_2752DF0B0);
  sub_2752C7FD8(v30, &qword_2809BFEC0, &qword_2752DEE60);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_2752C6CF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_21(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_2752C6D44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_21(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13();
  (*(v6 + 32))(v4, v5);
  return v4;
}

void MusicLibraryPlaylistEditViewModel.init(_:initialTracklist:authorProfile:mediaLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_23();
  v52 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFE78, &unk_2752DF0B0);
  v15 = OUTLINED_FUNCTION_3(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_1();
  v53 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v50 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEC0, &qword_2752DEE60);
  v22 = OUTLINED_FUNCTION_3(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_1();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v50 - v27;
  v29 = sub_2752DE148();
  OUTLINED_FUNCTION_0();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1();
  v35 = v34 - v33;
  v51 = v13;
  sub_2752C2F40(v51, v28);
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    sub_2752C7FD8(v28, &qword_2809BFEC0, &qword_2752DEE60);
    OUTLINED_FUNCTION_8();
    sub_2752DE3D8();
    OUTLINED_FUNCTION_19();
    MEMORY[0x277C74460](0xD000000000000027, 0x80000002752DF8A0);
    [v51 description];
    sub_2752DE1B8();
    OUTLINED_FUNCTION_24();
    v43 = OUTLINED_FUNCTION_14();
    MEMORY[0x277C74460](v43);

    OUTLINED_FUNCTION_15();
    MEMORY[0x277C74460](0xD000000000000011);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_11("Fatal error", v44, v45, v46, v47, "_MusicKitInternal_MediaPlayer/MusicLibraryPlaylistEditViewModel+MediaPlayer.swift", v48, v49, 43, v51);
    __break(1u);
  }

  else
  {
    v54 = v11;
    v55 = v6;
    (*(v31 + 32))(v35, v28, v29);
    sub_2752DD8F8();
    OUTLINED_FUNCTION_17();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
    v40 = v53;
    if (v9)
    {
      sub_2752C3158(v9, v53);
      sub_2752C7FD8(v20, &qword_2809BFE78, &unk_2752DF0B0);
      sub_2752C6D44(v40, v20, &qword_2809BFE78, &unk_2752DF0B0);
    }

    sub_2752DDE28();
    v41 = v52;
    sub_2752C9B58(v41);
    (*(v31 + 16))(v25, v35, v29);
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v29);
    sub_2752C6CF4(v20, v40, &qword_2809BFE78, &unk_2752DF0B0);
    v42 = v51;
    sub_2752DD8A8();

    sub_2752C7FD8(v20, &qword_2809BFE78, &unk_2752DF0B0);
    (*(v31 + 8))(v35, v29);
    OUTLINED_FUNCTION_22();
  }
}

uint64_t MusicLibraryPlaylistEditViewModel.tracklist.getter()
{
  result = sub_2752DD878();
  if (result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      result = sub_2752DE468();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2752C71F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return MusicLibraryPlaylistEditViewModel.rawCoverArtworkRecipe.setter(v1, v2);
}

uint64_t (*MusicLibraryPlaylistEditViewModel.rawCoverArtworkRecipe.modify(uint64_t *a1))()
{
  a1[2] = v1;
  *a1 = _s16MusicKitInternal0A28LibraryPlaylistEditViewModelC01_abC12_MediaPlayerE21rawCoverArtworkRecipeSSSgvg_0();
  a1[1] = v3;
  return sub_2752C727C;
}

uint64_t sub_2752C727C(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return _s16MusicKitInternal0A28LibraryPlaylistEditViewModelC01_abC12_MediaPlayerE21rawCoverArtworkRecipeSSSgvs_0();
  }

  _s16MusicKitInternal0A28LibraryPlaylistEditViewModelC01_abC12_MediaPlayerE21rawCoverArtworkRecipeSSSgvs_0();
}

uint64_t sub_2752C72F0()
{
  sub_2752DD848();
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = sub_2752DE468();
    __break(1u);
  }

  return result;
}

uint64_t MusicLibraryPlaylistEditViewModel.append(_:)(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_2752C73A0()
{
  v1 = v0[18];
  v2 = sub_2752C72F0();
  v0[20] = v2;
  v0[2] = v0;
  v0[3] = sub_2752C74CC;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0048, &qword_2752DF0C8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2752C7690;
  v0[13] = &block_descriptor_0;
  v0[14] = v3;
  [v2 appendItem:v1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2752C74CC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 168) = v4;
  if (v4)
  {
    v5 = sub_2752C7628;
  }

  else
  {
    v5 = sub_2752C75CC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2752C75CC()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_10();

  return v1();
}

uint64_t sub_2752C7628()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(v0 + 160);
  swift_willThrow();

  OUTLINED_FUNCTION_10();

  return v2();
}

uint64_t sub_2752C7690(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;

    return sub_2752C5C64(v3, v4);
  }

  else
  {

    return j__swift_continuation_throwingResume();
  }
}

uint64_t MusicLibraryPlaylistEditViewModel.insert(_:after:)(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_2752C7730()
{
  v1 = v0;
  v2 = v0 + 18;
  v3 = v1[27];
  v4 = v1[26];
  if (v3)
  {
    v5 = v1 + 10;
    v6 = v3;
    v7 = sub_2752C72F0();
    v1[29] = v7;
    v1[10] = v1;
    v1[11] = sub_2752C78F0;
    v8 = swift_continuation_init();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0048, &qword_2752DF0C8);
    OUTLINED_FUNCTION_2_1(v9);
    v1[19] = 1107296256;
    OUTLINED_FUNCTION_3_1();
    v1[21] = v10;
    v1[22] = v8;
    [v7 insertItem:v4 afterEntry:v6 completion:v2];
  }

  else
  {
    v5 = v1 + 2;
    v11 = sub_2752C72F0();
    v1[31] = v11;
    v1[2] = v1;
    v1[3] = sub_2752C7A54;
    v12 = swift_continuation_init();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0048, &qword_2752DF0C8);
    OUTLINED_FUNCTION_2_1(v13);
    v1[19] = 1107296256;
    OUTLINED_FUNCTION_3_1();
    v1[21] = v14;
    v1[22] = v12;
    [v11 insertItemAtStart:v4 completion:v2];
  }

  return MEMORY[0x282200938](v5);
}

uint64_t sub_2752C78F0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 112);
  *(v1 + 240) = v4;
  if (v4)
  {
    v5 = sub_2752C7BB0;
  }

  else
  {
    v5 = sub_2752C79F0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2752C79F0()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 216);

  OUTLINED_FUNCTION_10();

  return v2();
}

uint64_t sub_2752C7A54()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 256) = v4;
  if (v4)
  {
    v5 = sub_2752C7C20;
  }

  else
  {
    v5 = sub_2752C7B54;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2752C7B54()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_10();

  return v1();
}

uint64_t sub_2752C7BB0()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  swift_willThrow();

  OUTLINED_FUNCTION_10();

  return v3();
}

uint64_t sub_2752C7C20()
{
  OUTLINED_FUNCTION_3_0();
  v1 = *(v0 + 248);
  swift_willThrow();

  OUTLINED_FUNCTION_10();

  return v2();
}

void MusicLibraryPlaylistEditViewModel.move(_:after:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_23();
  v7 = v6;
  v9 = v8;
  v10 = sub_2752DE138();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFE98, &qword_2752DEE38);
  v18 = OUTLINED_FUNCTION_3(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_1();
  v21 = v19 - v20;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v43 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v43 - v26;
  OUTLINED_FUNCTION_17();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v10);
  v31 = v9;
  sub_2752C3194(v31, v25);
  if (__swift_getEnumTagSinglePayload(v25, 1, v10) == 1)
  {
    sub_2752C7FD8(v25, &qword_2809BFE98, &qword_2752DEE38);
    OUTLINED_FUNCTION_8();
    sub_2752DE3D8();
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_16();
    [v31 description];
    sub_2752DE1B8();
    OUTLINED_FUNCTION_24();
    v34 = OUTLINED_FUNCTION_14();
    MEMORY[0x277C74460](v34);

    OUTLINED_FUNCTION_15();
    MEMORY[0x277C74460](0xD000000000000013);
    OUTLINED_FUNCTION_5();
    v41 = 103;
  }

  else
  {
    v32 = *(v12 + 32);
    v32(v16, v25, v10);
    if (!v7)
    {
LABEL_5:
      OUTLINED_FUNCTION_14();
      sub_2752DD888();
      (*(v12 + 8))(v16, v10);
      sub_2752C7FD8(v27, &qword_2809BFE98, &qword_2752DEE38);
      OUTLINED_FUNCTION_22();
      return;
    }

    v33 = v7;
    sub_2752C3194(v33, v21);
    if (__swift_getEnumTagSinglePayload(v21, 1, v10) != 1)
    {
      sub_2752C7FD8(v27, &qword_2809BFE98, &qword_2752DEE38);

      v32(v27, v21, v10);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v10);
      goto LABEL_5;
    }

    sub_2752C7FD8(v21, &qword_2809BFE98, &qword_2752DEE38);
    OUTLINED_FUNCTION_8();
    sub_2752DE3D8();
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_16();
    [v33 description];
    sub_2752DE1B8();
    OUTLINED_FUNCTION_24();
    v42 = OUTLINED_FUNCTION_14();
    MEMORY[0x277C74460](v42);

    OUTLINED_FUNCTION_15();
    MEMORY[0x277C74460](0xD000000000000013);
    OUTLINED_FUNCTION_5();
    v41 = 107;
  }

  OUTLINED_FUNCTION_11("Fatal error", v35, v36, v37, v38, "_MusicKitInternal_MediaPlayer/MusicLibraryPlaylistEditViewModel+MediaPlayer.swift", v39, v40, v41, v44);
  __break(1u);
}

uint64_t sub_2752C7FD8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_13();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t MusicLibraryPlaylistEditViewModel.remove(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFE98, &qword_2752DEE38);
  v3 = OUTLINED_FUNCTION_3(v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - v4;
  v6 = sub_2752DE138();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = a1;
  sub_2752C3194(v13, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2752C7FD8(v5, &qword_2809BFE98, &qword_2752DEE38);
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_2752DE3D8();
    MEMORY[0x277C74460](0xD000000000000027, 0x80000002752DF9D0);
    v15 = [v13 description];
    sub_2752DE1B8();
    OUTLINED_FUNCTION_24();
    v16 = OUTLINED_FUNCTION_14();
    MEMORY[0x277C74460](v16);

    OUTLINED_FUNCTION_15();
    MEMORY[0x277C74460](0xD000000000000015);
    result = OUTLINED_FUNCTION_11("Fatal error", v17, v18, v21, v22, "_MusicKitInternal_MediaPlayer/MusicLibraryPlaylistEditViewModel+MediaPlayer.swift", v19, v20, 127, 0);
    __break(1u);
  }

  else
  {
    (*(v8 + 32))(v12, v5, v6);
    sub_2752DD898();
    return (*(v8 + 8))(v12, v6);
  }

  return result;
}

uint64_t MusicLibraryPlaylistEditViewModel.commit()()
{
  OUTLINED_FUNCTION_3_0();
  v1 = sub_2752DE008();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_2752DE148();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v3 = swift_task_alloc();
  v0[7] = v3;
  v6 = (*MEMORY[0x277D2A6F8] + MEMORY[0x277D2A6F8]);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_2752C83B8;

  return v6(v3);
}

uint64_t sub_2752C83B8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_7();
  *v2 = v1;
  *(v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_2752C85EC;
  }

  else
  {
    v3 = sub_2752C84BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2752C84BC()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  (*(v6 + 104))(v4, *MEMORY[0x277CD8188], v5);
  sub_2752C677C(v4, MEMORY[0x277CD8608], sub_2752DBC28, 0x277CD5EF0, &unk_2809C0070);
  v8 = v7;
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_2752C85EC()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_10();

  return v0();
}

uint64_t MusicLibraryPlaylistEditViewModel.Error.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_2752DE498();

  *a3 = v4 != 0;
  return result;
}

unint64_t sub_2752C8724()
{
  result = qword_2809C0050;
  if (!qword_2809C0050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809C0058, &qword_2752DF160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0050);
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

unint64_t sub_2752C87E4()
{
  result = qword_2809C0060;
  if (!qword_2809C0060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0060);
  }

  return result;
}

uint64_t sub_2752C883C()
{
  sub_2752DE528();
  sub_2752DE1E8();
  return sub_2752DE548();
}

uint64_t _s5ErrorOwet(unsigned int *a1, int a2)
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

_BYTE *_s5ErrorOwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_2752C89D8(uint64_t a1)
{
  sub_2752DE528();
  sub_2752DE1E8();
  return sub_2752DE548();
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t result)
{
  *(v1 + 200) = result;
  *(v1 + 144) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_2752DE468();
}

void OUTLINED_FUNCTION_16()
{

  JUMPOUT(0x277C74460);
}

void OUTLINED_FUNCTION_19()
{
  v1 = *(v0 - 88);
  *(v0 - 96) = *(v0 - 96);
  *(v0 - 88) = v1;
}

uint64_t OUTLINED_FUNCTION_21(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void OUTLINED_FUNCTION_24()
{
}

uint64_t sub_2752C8BC8()
{
  result = sub_2752DDA58();
  v2 = v1;
  v3 = HIBYTE(v1) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    goto LABEL_71;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    v7 = sub_2752C8F44(result, v2, 10);
    v23 = v26;
LABEL_70:

    if ((v23 & 1) == 0)
    {
LABEL_72:
      sub_2752C94CC();
      v24 = sub_2752DDA28();
      return sub_2752C8E58(v7, v24, v25);
    }

LABEL_71:
    v7 = 0;
    goto LABEL_72;
  }

  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_2752DE3F8();
    }

    v6 = *result;
    if (v6 == 43)
    {
      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_2();
              if (!v9 & v8)
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_0_1();
              if (!v9)
              {
                goto LABEL_68;
              }

              v7 = v16 + v15;
              if (__OFADD__(v16, v15))
              {
                goto LABEL_68;
              }

              OUTLINED_FUNCTION_2_2();
              if (v9)
              {
                goto LABEL_69;
              }
            }
          }

          goto LABEL_59;
        }

        goto LABEL_68;
      }

      goto LABEL_78;
    }

    if (v6 != 45)
    {
      if (v4)
      {
        v7 = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_68;
            }

            v20 = 10 * v7;
            if ((v7 * 10) >> 64 != (10 * v7) >> 63)
            {
              goto LABEL_68;
            }

            v7 = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              goto LABEL_68;
            }

            ++result;
            if (!--v4)
            {
              goto LABEL_59;
            }
          }
        }

        goto LABEL_59;
      }

LABEL_68:
      v7 = 0;
      v12 = 1;
      goto LABEL_69;
    }

    if (v4 >= 1)
    {
      if (v4 != 1)
      {
        v7 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_2();
            if (!v9 & v8)
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_0_1();
            if (!v9)
            {
              goto LABEL_68;
            }

            v7 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_68;
            }

            OUTLINED_FUNCTION_2_2();
            if (v9)
            {
              goto LABEL_69;
            }
          }
        }

LABEL_59:
        v12 = 0;
LABEL_69:
        v23 = v12;
        goto LABEL_70;
      }

      goto LABEL_68;
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (result != 43)
  {
    if (result != 45)
    {
      if (v3)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_2();
          if (!v9 & v8)
          {
            break;
          }

          OUTLINED_FUNCTION_0_1();
          if (!v9)
          {
            break;
          }

          v7 = v22 + v21;
          if (__OFADD__(v22, v21))
          {
            break;
          }

          OUTLINED_FUNCTION_2_2();
          if (v9)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    if (v3)
    {
      if (v3 != 1)
      {
        OUTLINED_FUNCTION_3_2();
        while (1)
        {
          OUTLINED_FUNCTION_1_2();
          if (!v9 & v8)
          {
            break;
          }

          OUTLINED_FUNCTION_0_1();
          if (!v9)
          {
            break;
          }

          v7 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          OUTLINED_FUNCTION_2_2();
          if (v9)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    goto LABEL_77;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      OUTLINED_FUNCTION_3_2();
      while (1)
      {
        OUTLINED_FUNCTION_1_2();
        if (!v9 & v8)
        {
          break;
        }

        OUTLINED_FUNCTION_0_1();
        if (!v9)
        {
          break;
        }

        v7 = v18 + v17;
        if (__OFADD__(v18, v17))
        {
          break;
        }

        OUTLINED_FUNCTION_2_2();
        if (v9)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_68;
  }

LABEL_79:
  __break(1u);
  return result;
}

id sub_2752C8E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_2752DE1A8();

  v6 = [v4 initWithValue:a1 databaseID:v5];

  return v6;
}

void *sub_2752C8ED4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809C0020, &qword_2752DEF68);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unsigned __int8 *sub_2752C8F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_2752DE258();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2752C9510(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2752DE3F8();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unint64_t sub_2752C94CC()
{
  result = qword_2809C0078;
  if (!qword_2809C0078)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809C0078);
  }

  return result;
}

uint64_t sub_2752C9510(unint64_t a1, unint64_t a2)
{
  v2 = sub_2752C957C(sub_2752C9578, 0, a1, a2);
  v6 = sub_2752C95B0(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_2752C957C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return MEMORY[0x2821FBFB0](15, v5 | (v4 << 16));
}

uint64_t sub_2752C95B0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_2752DE378();
    if (!v9 || (v10 = v9, v11 = sub_2752C8ED4(v9, 0), v12 = sub_2752C9710(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_2752DE1D8();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2752DE1D8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2752DE3F8();
LABEL_4:

  return sub_2752DE1D8();
}

unint64_t sub_2752C9710(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_2752C9920(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2752DE238();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2752DE3F8();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_2752C9920(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_2752DE218();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_2752C9920(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2752DE248();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x277C74490](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

id MPStoreLyricsRequest.init(song:)(uint64_t a1)
{
  v2 = sub_2752DE008();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  (*(v3 + 104))(v5, *MEMORY[0x277CD8158], v2);
  v7 = v6;
  sub_2752C6740(v5);
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  [v7 setSong_];

  v10 = sub_2752DE048();
  (*(*(v10 - 8) + 8))(a1, v10);
  return v7;
}

uint64_t sub_2752C9B58(void *a1)
{
  v5[3] = sub_2752C9FBC();
  v5[0] = a1;
  objc_allocWithZone(MEMORY[0x277CD86A0]);
  v2 = a1;
  sub_2752C9EE0(v5);
  v3 = sub_2752DDDE8();

  return v3;
}

id MusicLibrary.mediaLibrary.getter()
{
  if (sub_2752DDE08())
  {
    goto LABEL_8;
  }

  if (qword_2811ACD68 != -1)
  {
    swift_once();
  }

  if (byte_2811ACD70 != 1)
  {
LABEL_8:
    v3 = sub_2752DDE18();
    sub_2752C9E88();
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x277CD7F20], v3);
    return swift_willThrow();
  }

  else
  {
    if (sub_2752DDDF8())
    {
      objc_opt_self();
      v0 = swift_dynamicCastObjCClass();
      if (v0)
      {
        v1 = [v0 _underlyingMediaLibrary];
        swift_unknownObjectRelease();
        return v1;
      }

      swift_unknownObjectRelease();
    }

    sub_2752DE3D8();

    sub_2752DDDF8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0088, &qword_2752DF258);
    v5 = sub_2752DE1C8();
    MEMORY[0x277C74460](v5);

    MEMORY[0x277C74460](46, 0xE100000000000000);
    result = sub_2752DE468();
    __break(1u);
  }

  return result;
}

uint64_t sub_2752C9DE0()
{
  v0 = [objc_opt_self() mainBundle];
  result = sub_2752C9F4C(v0);
  if (v2)
  {
    if (result == 0x6C7070612E6D6F63 && v2 == 0xEF636973754D2E65)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_2752DE4B8();
    }
  }

  else
  {
    v4 = 0;
  }

  byte_2811ACD70 = v4 & 1;
  return result;
}

unint64_t sub_2752C9E88()
{
  result = qword_2809C0080;
  if (!qword_2809C0080)
  {
    sub_2752DDE18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0080);
  }

  return result;
}

id sub_2752C9EE0(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = [v1 initWithUnderlyingMediaLibrary_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_2752C9F4C(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2752DE1B8();

  return v3;
}

unint64_t sub_2752C9FBC()
{
  result = qword_2809C0090;
  if (!qword_2809C0090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809C0090);
  }

  return result;
}

uint64_t MusicCollaborativePlaylist.StartCollaborationRequest.init(playlist:invitationMode:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = sub_2752DE118();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEC0, &qword_2752DEE60);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v28 - v12;
  v14 = sub_2752DE148();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v28 - v21;
  v23 = a1;
  sub_2752C2F40(v23, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    (*(v7 + 8))(a2, v5);

    sub_2752C3F00(v13);
    v24 = 1;
    v25 = v29;
  }

  else
  {
    (*(v16 + 32))(v22, v13, v14);
    (*(v16 + 16))(v20, v22, v14);
    (*(v7 + 16))(v10, a2, v5);
    v25 = v29;
    sub_2752DD7A8();

    (*(v7 + 8))(a2, v5);
    (*(v16 + 8))(v22, v14);
    v24 = 0;
  }

  v26 = sub_2752DD7C8();
  return __swift_storeEnumTagSinglePayload(v25, v24, 1, v26);
}

uint64_t MusicCollaborativePlaylist.StartCollaborationRequest.perform()()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_2752CA344;

  return MEMORY[0x2821896F8]();
}

uint64_t sub_2752CA344(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2752CA478, 0, 0);
  }
}

uint64_t sub_2752CA478()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = v0[6];
    sub_2752DE3D8();
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    MEMORY[0x277C74460](0xD000000000000018, 0x80000002752DF680);
    v0[4] = v3;
    sub_2752DE458();
    MEMORY[0x277C74460](0xD00000000000001BLL, 0x80000002752DF6A0);
    return sub_2752DE468();
  }
}

id static UploadedAudio.canBeConverted(from:)(void *a1)
{
  if ([a1 hasVideo])
  {
    return 0;
  }

  else
  {
    return [a1 isArtistUploadedContent];
  }
}

uint64_t sub_2752CA650()
{
  v0 = sub_2752DD988();
  __swift_allocate_value_buffer(v0, qword_2811ACEF0);
  __swift_project_value_buffer(v0, qword_2811ACEF0);
  return sub_2752DD978();
}

uint64_t sub_2752CA6C4()
{
  v0 = sub_2752DD988();
  __swift_allocate_value_buffer(v0, qword_2809C06C0);
  __swift_project_value_buffer(v0, qword_2809C06C0);
  return sub_2752DD978();
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

uint64_t MusicSiriRepresentation.init(for:title:authorName:artwork:contentRating:url:isLibraryAdded:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10)
{
  v135 = a7;
  v136 = a6;
  v124 = a2;
  v125 = a4;
  v137 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0098, &qword_2752DF2B0);
  OUTLINED_FUNCTION_3(v14);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6();
  v123 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C00A0, &qword_2752DF2B8);
  OUTLINED_FUNCTION_3(v17);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6();
  v122 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C00A8, &qword_2752DF2C0);
  OUTLINED_FUNCTION_3(v20);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6();
  v121 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C00B0, &qword_2752DF2C8);
  OUTLINED_FUNCTION_3(v23);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6();
  v120 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0010, &qword_2752DEF58);
  OUTLINED_FUNCTION_3(v26);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6();
  v119 = v28;
  OUTLINED_FUNCTION_8_0();
  v29 = sub_2752DDD88();
  v30 = OUTLINED_FUNCTION_3(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_9_0();
  v118 = v31;
  OUTLINED_FUNCTION_8_0();
  v32 = sub_2752DDD38();
  v33 = OUTLINED_FUNCTION_3(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_9_0();
  v35 = v34;
  OUTLINED_FUNCTION_8_0();
  sub_2752DDCB8();
  OUTLINED_FUNCTION_0();
  v129 = v37;
  v130 = v36;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_1();
  v40 = v38 - v39;
  MEMORY[0x28223BE20](v41);
  v128 = &v111[-v42];
  OUTLINED_FUNCTION_8_0();
  sub_2752DD6D8();
  OUTLINED_FUNCTION_0();
  v133 = v44;
  v134 = v43;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1_1();
  v126 = v45 - v46;
  MEMORY[0x28223BE20](v47);
  v132 = &v111[-v48];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C00B8, &qword_2752DF2D0);
  OUTLINED_FUNCTION_3(v49);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v50);
  v52 = &v111[-v51];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C00C0, &qword_2752DF2D8);
  OUTLINED_FUNCTION_13();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_1_1();
  v127 = (v55 - v56);
  v58 = MEMORY[0x28223BE20](v57);
  v60 = &v111[-v59];
  MEMORY[0x28223BE20](v58);
  v131 = &v111[-v61];
  v62 = a1;
  v63 = [a1 modelKind];
  if (!v63)
  {
    v65 = a8;

    if (qword_2811ACD90 != -1)
    {
      OUTLINED_FUNCTION_2_3(&qword_2811ACD90);
    }

    v76 = sub_2752DD988();
    __swift_project_value_buffer(v76, qword_2811ACEF0);
    v67 = a1;
    v68 = sub_2752DD968();
    v77 = sub_2752DE338();

    v78 = os_log_type_enabled(v68, v77);
    v71 = v136;
    if (v78)
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *v79 = 138412290;
      *(v79 + 4) = v67;
      *v80 = v67;
      v67 = v67;
      OUTLINED_FUNCTION_11_0(&dword_2752C1000, v81, v82, "Failed to create a Siri representation from legacy identifier set: %@");
      sub_2752C7FD8(v80, &qword_2809C00C8, &unk_2752DF2E0);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    goto LABEL_12;
  }

  v64 = v63;
  sub_2752CB294(v63, v52);
  if (__swift_getEnumTagSinglePayload(v52, 1, v53) == 1)
  {
    v65 = a8;

    sub_2752C7FD8(v52, &qword_2809C00B8, &qword_2752DF2D0);
    if (qword_2811ACD90 != -1)
    {
      OUTLINED_FUNCTION_2_3(&qword_2811ACD90);
    }

    v66 = sub_2752DD988();
    __swift_project_value_buffer(v66, qword_2811ACEF0);
    v67 = v64;
    v68 = sub_2752DD968();
    v69 = sub_2752DE338();

    v70 = os_log_type_enabled(v68, v69);
    v71 = v136;
    if (v70)
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v72 = 138543362;
      *(v72 + 4) = v67;
      *v73 = v64;
      v67 = v67;
      OUTLINED_FUNCTION_11_0(&dword_2752C1000, v74, v75, "Failed to derive a Siri representation kind from legacy model kind: %{public}@.");
      sub_2752C7FD8(v73, &qword_2809C00C8, &unk_2752DF2E0);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

LABEL_12:
    sub_2752C7FD8(v65, &qword_2809C0098, &qword_2752DF2B0);
    sub_2752C7FD8(v135, &qword_2809C00A0, &qword_2752DF2B8);
    sub_2752C7FD8(v71, &qword_2809C00A8, &qword_2752DF2C0);
    v83 = 1;
    goto LABEL_19;
  }

  v113 = v64;
  v114 = a3;
  v115 = a5;
  v112 = a10;
  v84 = v52;
  v85 = v131;
  sub_2752C6D44(v84, v131, &qword_2809C00C0, &qword_2752DF2D8);
  sub_2752C6CF4(v85, v60, &qword_2809C00C0, &qword_2752DF2D8);
  v86 = *(v53 + 48);
  v87 = *(v133 + 32);
  v117 = v40;
  v87();
  v88 = sub_2752DDFE8();
  v89 = *(v88 - 8);
  (*(v89 + 8))(&v60[v86], v88);
  v116 = v62;
  v90 = v35;
  v91 = a8;
  sub_2752DD6C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0018, &qword_2752DEF60);
  v92 = sub_2752DDD58();
  OUTLINED_FUNCTION_0();
  v94 = v93;
  v95 = (*(v93 + 80) + 32) & ~*(v93 + 80);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_2752DEEF0;
  v97 = v136;
  (*(v94 + 104))(v96 + v95, *MEMORY[0x277CD7CC8], v92);
  v98 = v91;
  v99 = v118;
  sub_2752DDD78();
  v100 = sub_2752DDD48();
  v101 = v119;
  __swift_storeEnumTagSinglePayload(v119, 1, 1, v100);
  v102 = v128;
  sub_2752CED14(v116, v90, v99, v101, v128);
  (*(v129 + 16))(v117, v102, v130);
  (*(v133 + 16))(v126, v132, v134);
  v103 = v127;
  sub_2752C6CF4(v131, v127, &qword_2809C00C0, &qword_2752DF2D8);
  v104 = v120;
  (*(v89 + 32))(v120, v103 + *(v53 + 48), v88);
  __swift_storeEnumTagSinglePayload(v104, 0, 1, v88);
  sub_2752C6CF4(v97, v121, &qword_2809C00A8, &qword_2752DF2C0);
  v105 = v135;
  sub_2752C6CF4(v135, v122, &qword_2809C00A0, &qword_2752DF2B8);
  sub_2752C6CF4(v98, v123, &qword_2809C0098, &qword_2752DF2B0);
  if (v112 == 2)
  {
    v106 = v116;
    if ([v116 library])
    {
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_7_0();
  }

  else
  {
    OUTLINED_FUNCTION_7_0();
    v106 = v116;
  }

  sub_2752DD6B8();

  sub_2752C7FD8(v98, &qword_2809C0098, &qword_2752DF2B0);
  sub_2752C7FD8(v105, &qword_2809C00A0, &qword_2752DF2B8);
  sub_2752C7FD8(v97, &qword_2809C00A8, &qword_2752DF2C0);
  (*(v129 + 8))(v128, v130);
  v107 = *(v133 + 8);
  v108 = v134;
  v107(v132, v134);
  sub_2752C7FD8(v131, &qword_2809C00C0, &qword_2752DF2D8);
  v107(v127, v108);
  v83 = 0;
LABEL_19:
  v109 = sub_2752DD6E8();
  return __swift_storeEnumTagSinglePayload(v137, v83, 1, v109);
}

uint64_t sub_2752CB294@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v166 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C00C0, &qword_2752DF2D8);
  v4 = MEMORY[0x28223BE20](v3);
  v162 = &v158 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v161 = &v158 - v6;
  v7 = sub_2752DDFE8();
  v164 = *(v7 - 1);
  v165 = v7;
  MEMORY[0x28223BE20](v7);
  v163 = &v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C00B8, &qword_2752DF2D0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v158 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v158 - v16;
  __swift_storeEnumTagSinglePayload(&v158 - v16, 1, 1, v3);
  v18 = [a1 identityKind];
  sub_2752C3CD8(0, &qword_2811ACD50, 0x277CD5E48);
  v19 = [swift_getObjCClassFromMetadata() identityKind];
  v20 = [v18 isEqual_];

  if (v20)
  {
    v21 = *MEMORY[0x277D2A590];
    v22 = sub_2752DD6D8();
    (*(*(v22 - 8) + 104))(v15, v21, v22);
    sub_2752DDF38();

    sub_2752C7FD8(v17, &qword_2809C00B8, &qword_2752DF2D0);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v3);
    sub_2752C6D44(v15, v17, &qword_2809C00B8, &qword_2752DF2D0);
    v23 = v166;
    v24 = v17;
    return sub_2752C6D44(v24, v23, &qword_2809C00B8, &qword_2752DF2D0);
  }

  v160 = v17;
  sub_2752C3CD8(0, &qword_2811ACD38, 0x277CD5E58);
  v25 = [swift_getObjCClassFromMetadata() identityKind];
  v26 = [v18 isEqual_];

  v27 = v18;
  if (v26)
  {
    v28 = *MEMORY[0x277D2A5A0];
    v29 = sub_2752DD6D8();
    (*(*(v29 - 8) + 104))(v15, v28, v29);
    sub_2752DDF58();
LABEL_7:

    v24 = v160;
    sub_2752C7FD8(v160, &qword_2809C00B8, &qword_2752DF2D0);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v3);
    sub_2752C6D44(v15, v24, &qword_2809C00B8, &qword_2752DF2D0);
    v23 = v166;
    return sub_2752C6D44(v24, v23, &qword_2809C00B8, &qword_2752DF2D0);
  }

  sub_2752C3CD8(0, &qword_2811ACD30, 0x277CD5E60);
  v30 = [swift_getObjCClassFromMetadata() identityKind];
  v31 = [v18 isEqual_];

  if (v31)
  {
    v32 = *MEMORY[0x277D2A5C0];
    v33 = sub_2752DD6D8();
    (*(*(v33 - 8) + 104))(v15, v32, v33);
    sub_2752DDF98();
    goto LABEL_7;
  }

  sub_2752C3CD8(0, &qword_2811ACD18, 0x277CD5E78);
  v35 = [swift_getObjCClassFromMetadata() identityKind];
  v36 = [v18 isEqual_];

  if (v36)
  {
    objc_opt_self();
    v37 = swift_dynamicCastObjCClass();
    v23 = v166;
    v24 = v160;
    v38 = v3;
    if (!v37)
    {
LABEL_16:
      v41 = *MEMORY[0x277D2A5B0];
      v42 = sub_2752DD6D8();
      (*(*(v42 - 8) + 104))(v15, v41, v42);
      sub_2752DDF78();

LABEL_40:
      sub_2752C7FD8(v24, &qword_2809C00B8, &qword_2752DF2D0);
      v80 = v15;
      v81 = v38;
LABEL_41:
      __swift_storeEnumTagSinglePayload(v80, 0, 1, v81);
      sub_2752C6D44(v15, v24, &qword_2809C00B8, &qword_2752DF2D0);
      return sub_2752C6D44(v24, v23, &qword_2809C00B8, &qword_2752DF2D0);
    }

    v39 = a1;
    v40 = [v37 variants];
    if (v40)
    {
      v52 = MEMORY[0x277D2A5B0];
    }

    else if ((v40 & 4) != 0)
    {
      v52 = MEMORY[0x277D2A5D8];
    }

    else
    {
      if ((v40 & 2) == 0)
      {
        if ((v40 & 8) != 0)
        {
          v86 = *MEMORY[0x277D2A5B0];
          v87 = sub_2752DD6D8();
          (*(*(v87 - 8) + 104))(v15, v86, v87);
          sub_2752DDF78();
        }

        else
        {
          if ((v40 & 0x20) == 0)
          {
            goto LABEL_16;
          }

          v110 = *MEMORY[0x277D2A568];
          v111 = sub_2752DD6D8();
          (*(*(v111 - 8) + 104))(v15, v110, v111);
          sub_2752DDEE8();
        }

LABEL_39:

        goto LABEL_40;
      }

      v52 = MEMORY[0x277D2A598];
    }

    v78 = *v52;
    v79 = sub_2752DD6D8();
    (*(*(v79 - 8) + 104))(v15, v78, v79);
    sub_2752DDED8();
    goto LABEL_39;
  }

  sub_2752C3CD8(0, &qword_2811ACD48, 0x277CD5E98);
  v43 = [swift_getObjCClassFromMetadata() &selRef_initWithUnderlyingModelObject_ + 7];
  v44 = [v18 isEqual_];

  if (v44)
  {
    v45 = *MEMORY[0x277D2A598];
    v46 = sub_2752DD6D8();
    (*(*(v46 - 8) + 104))(v15, v45, v46);
    sub_2752DDF48();
    goto LABEL_7;
  }

  sub_2752C3CD8(0, &qword_2811ACD40, 0x277CD5EE8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v48 = [ObjCClassFromMetadata &selRef_initWithUnderlyingModelObject_ + 7];
  v49 = [v18 &off_27A6492F8];

  if (v49)
  {
    v50 = *MEMORY[0x277D2A550];
    v51 = sub_2752DD6D8();
    (*(*(v51 - 8) + 104))(v15, v50, v51);
    sub_2752DDEA8();
    goto LABEL_7;
  }

  sub_2752C3CD8(0, &qword_2811ACD28, 0x277CD5F08);
  v53 = [swift_getObjCClassFromMetadata() &selRef_initWithUnderlyingModelObject_ + 7];
  v54 = [v18 &off_27A6492F8];

  if (v54)
  {
    v55 = *MEMORY[0x277D2A5C8];
    v56 = sub_2752DD6D8();
    (*(*(v56 - 8) + 104))(v15, v55, v56);
    sub_2752DDFA8();
    goto LABEL_7;
  }

  sub_2752C3CD8(0, &qword_2811ACD10, 0x277CD5F00);
  v57 = [swift_getObjCClassFromMetadata() &selRef_initWithUnderlyingModelObject_ + 7];
  v58 = [v18 &off_27A6492F8];

  if (!v58)
  {
    sub_2752C3CD8(0, &qword_2811ACD20, 0x277CD5F30);
    v82 = [swift_getObjCClassFromMetadata() &selRef_initWithUnderlyingModelObject_ + 7];
    v83 = [v18 &off_27A6492F8];

    v23 = v166;
    if (v83)
    {
      v84 = *MEMORY[0x277D2A560];
      v85 = sub_2752DD6D8();
      (*(*(v85 - 8) + 104))(v15, v84, v85);
      sub_2752DDEC8();

      v24 = v160;
LABEL_79:
      sub_2752C7FD8(v24, &qword_2809C00B8, &qword_2752DF2D0);
      v80 = v15;
      v81 = v3;
      goto LABEL_41;
    }

    sub_2752C3CD8(0, &unk_2811ACD58, 0x277CD5F68);
    v88 = [swift_getObjCClassFromMetadata() &selRef_initWithUnderlyingModelObject_ + 7];
    v89 = [v18 &off_27A6492F8];

    v24 = v160;
    if (!v89)
    {
      v112 = v3;
      sub_2752C3CD8(0, &qword_2809C00D0, 0x277CD5F20);
      v113 = [swift_getObjCClassFromMetadata() &selRef_initWithUnderlyingModelObject_ + 7];
      v114 = [v18 &off_27A6492F8];

      if (v114)
      {
        v115 = *MEMORY[0x277D2A5B8];
        v116 = sub_2752DD6D8();
        (*(*(v116 - 8) + 104))(v15, v115, v116);
        sub_2752DDF88();
      }

      else
      {
        sub_2752C3CD8(0, &qword_2809C00D8, 0x277CD5F90);
        v133 = [swift_getObjCClassFromMetadata() &selRef_initWithUnderlyingModelObject_ + 7];
        v134 = [v18 &off_27A6492F8];

        if (v134)
        {
          v135 = *MEMORY[0x277D2A5E0];
          v136 = sub_2752DD6D8();
          (*(*(v136 - 8) + 104))(v15, v135, v136);
          sub_2752DDFD8();
        }

        else
        {
          sub_2752C3CD8(0, &qword_2809C00E0, 0x277CD5FA0);
          v139 = [swift_getObjCClassFromMetadata() &selRef_initWithUnderlyingModelObject_ + 7];
          v140 = [v18 &off_27A6492F8];

          if (v140)
          {
            v141 = *MEMORY[0x277D2A5D0];
            v142 = sub_2752DD6D8();
            (*(*(v142 - 8) + 104))(v15, v141, v142);
            sub_2752DDFC8();
          }

          else
          {
            sub_2752C3CD8(0, &qword_2809C00E8, 0x277CD5FB0);
            v154 = [swift_getObjCClassFromMetadata() &selRef_initWithUnderlyingModelObject_ + 7];
            v155 = [v18 &off_27A6492F8];

            if (!v155)
            {

              return sub_2752C6D44(v24, v23, &qword_2809C00B8, &qword_2752DF2D0);
            }

            v156 = *MEMORY[0x277D2A5A8];
            v157 = sub_2752DD6D8();
            (*(*(v157 - 8) + 104))(v15, v156, v157);
            sub_2752DDF68();
          }
        }
      }

      sub_2752C7FD8(v24, &qword_2809C00B8, &qword_2752DF2D0);
      v80 = v15;
      v81 = v112;
      goto LABEL_41;
    }

    v90 = v18;
    objc_opt_self();
    v91 = swift_dynamicCastObjCClass();
    if (v91)
    {
      v92 = a1;
      v93 = [v91 variants];
      v94 = v93;
      if ((v93 & 4) != 0)
      {
        v137 = sub_2752DD6D8();
        v138 = *(*(v137 - 8) + 104);
        if ((v94 & 2) != 0)
        {
          v138(v15, *MEMORY[0x277D2A580], v137);
          sub_2752DDF18();
        }

        else
        {
          v138(v15, *MEMORY[0x277D2A578], v137);
          sub_2752DDF08();
        }

LABEL_78:
        goto LABEL_79;
      }

      if ((v93 & 2) != 0)
      {
        v38 = v3;
        v152 = *MEMORY[0x277D2A558];
        v153 = sub_2752DD6D8();
        (*(*(v153 - 8) + 104))(v15, v152, v153);
        sub_2752DDEB8();

        goto LABEL_40;
      }
    }

    v38 = v3;
    v95 = *MEMORY[0x277D2A588];
    v96 = sub_2752DD6D8();
    (*(*(v96 - 8) + 104))(v15, v95, v96);
    sub_2752DDF28();

    goto LABEL_40;
  }

  objc_opt_self();
  v59 = swift_dynamicCastObjCClass();
  if (v59)
  {
    v60 = v59;
    v159 = ObjCClassFromMetadata;
    v61 = a1;
    v62 = [v60 kinds];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C00F0, &qword_2752DF2F0);
    a1 = sub_2752DE2C8();

    if (sub_2752CC934(a1))
    {
      v158 = v61;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v63 = MEMORY[0x277C74650](0, a1);
        goto LABEL_31;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v63 = *(a1 + 32);
LABEL_31:
        v64 = v63;

        v65 = [v64 &selRef_initWithUnderlyingModelObject_ + 7];
        sub_2752C3CD8(0, &unk_2811ACD58, 0x277CD5F68);
        v66 = [swift_getObjCClassFromMetadata() &selRef_initWithUnderlyingModelObject_ + 7];
        v67 = [v65 &off_27A6492F8];

        if (v67)
        {
          objc_opt_self();
          v68 = swift_dynamicCastObjCClass();
          if (v68)
          {
            v69 = v68;
            v70 = v64;
            sub_2752CB294(v69, v12);

            v71 = v3;
            if (__swift_getEnumTagSinglePayload(v12, 1, v3) != 1)
            {
              v143 = v160;
              sub_2752C7FD8(v160, &qword_2809C00B8, &qword_2752DF2D0);

              v144 = v12;
              v145 = v161;
              sub_2752C6D44(v144, v161, &qword_2809C00C0, &qword_2752DF2D8);
              v146 = v145;
              v147 = v162;
              v24 = v143;
              sub_2752C6D44(v146, v162, &qword_2809C00C0, &qword_2752DF2D8);
              v75 = v163;
              v77 = v164;
              v76 = v165;
              (v164[4])(v163, v147 + *(v71 + 48), v165);
              v148 = sub_2752DD6D8();
              (*(*(v148 - 8) + 8))(v147, v148);
              v23 = v166;
LABEL_74:
              v149 = *(v71 + 48);
              v150 = *MEMORY[0x277D2A570];
              v151 = sub_2752DD6D8();
              (*(*(v151 - 8) + 104))(v24, v150, v151);
              (v77[2])(v24 + v149, v75, v76);
              __swift_storeEnumTagSinglePayload(v24, 0, 1, v71);
              (v77[1])(v75, v76);
              return sub_2752C6D44(v24, v23, &qword_2809C00B8, &qword_2752DF2D0);
            }

            sub_2752C7FD8(v12, &qword_2809C00B8, &qword_2752DF2D0);
            v27 = v18;
          }
        }

        v72 = v64;
        sub_2752C3CD8(0, &qword_2809C00D8, 0x277CD5F90);
        v73 = [swift_getObjCClassFromMetadata() &selRef_initWithUnderlyingModelObject_ + 7];
        v74 = [v65 &off_27A6492F8];

        if (v74)
        {
          v75 = v163;
          sub_2752DDFD8();

          v24 = v160;
          sub_2752C7FD8(v160, &qword_2809C00B8, &qword_2752DF2D0);
          v76 = v165;
          v23 = v166;
          v71 = v3;
          v77 = v164;
        }

        else
        {
          v130 = v27;
          v131 = [v159 &selRef_initWithUnderlyingModelObject_ + 7];
          v132 = [v65 &off_27A6492F8];

          v23 = v166;
          v71 = v3;
          v75 = v163;
          v77 = v164;
          if (v132)
          {
            sub_2752DDEA8();
          }

          else
          {
            sub_2752DDEF8();
          }

          v24 = v160;
          sub_2752C7FD8(v160, &qword_2809C00B8, &qword_2752DF2D0);
          v76 = v165;
        }

        goto LABEL_74;
      }

      __break(1u);
      goto LABEL_86;
    }

    v165 = v18;

    if (qword_2809BFD88 != -1)
    {
      swift_once();
    }

    v117 = sub_2752DD988();
    __swift_project_value_buffer(v117, qword_2809C06C0);
    v90 = v61;
    v118 = sub_2752DD968();
    v119 = sub_2752DE358();

    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      v167 = v164;
      *v120 = 136446210;
      v121 = v90;
      v122 = [v121 description];
      v123 = sub_2752DE1B8();
      v125 = v124;

      v126 = sub_2752C50C8(v123, v125, &v167);

      *(v120 + 4) = v126;
      _os_log_impl(&dword_2752C1000, v118, v119, "Could not accurately extract underlying catalog resource type from modelKind %{public}s. Defaulting to playlist entry.", v120, 0xCu);
      v127 = v164;
      __swift_destroy_boxed_opaque_existential_0(v164);
      MEMORY[0x277C74BF0](v127, -1, -1);
      MEMORY[0x277C74BF0](v120, -1, -1);
    }

    v23 = v166;
    v24 = v160;
    v128 = *MEMORY[0x277D2A570];
    v129 = sub_2752DD6D8();
    (*(*(v129 - 8) + 104))(v15, v128, v129);
    sub_2752DDEF8();

    goto LABEL_78;
  }

  if (qword_2809BFD88 != -1)
  {
LABEL_86:
    swift_once();
  }

  v97 = sub_2752DD988();
  __swift_project_value_buffer(v97, qword_2809C06C0);
  v98 = a1;
  v99 = sub_2752DD968();
  v100 = sub_2752DE348();

  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v102 = v27;
    v103 = swift_slowAlloc();
    v167 = v103;
    *v101 = 136446210;
    v104 = v98;
    v105 = [v104 description];
    v106 = sub_2752DE1B8();
    v108 = v107;

    v109 = sub_2752C50C8(v106, v108, &v167);

    *(v101 + 4) = v109;
    _os_log_impl(&dword_2752C1000, v99, v100, "modelKind %{public}s could not be cast as an MPModelPlaylistEntryKind.", v101, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v103);
    MEMORY[0x277C74BF0](v103, -1, -1);
    MEMORY[0x277C74BF0](v101, -1, -1);
  }

  else
  {
  }

  sub_2752C7FD8(v160, &qword_2809C00B8, &qword_2752DF2D0);
  return __swift_storeEnumTagSinglePayload(v166, 1, 1, v3);
}

uint64_t sub_2752CC934(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

uint64_t OUTLINED_FUNCTION_2_3(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_11_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_12()
{

  JUMPOUT(0x277C74BF0);
}

id static MPModelLibraryDownloadedItemsCenter.shared.getter()
{
  if (qword_2809BFD90 != -1)
  {
    swift_once();
  }

  v1 = qword_2809C00F8;

  return v1;
}

id sub_2752CCAA0()
{
  result = [objc_allocWithZone(MPModelLibraryDownloadedItemsCenter) init];
  qword_2809C00F8 = result;
  return result;
}

MPModelLibraryDownloadedItemsCenter __swiftcall MPModelLibraryDownloadedItemsCenter.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for MPModelLibraryDownloadedItemsCenter()
{
  result = qword_2809C0100;
  if (!qword_2809C0100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809C0100);
  }

  return result;
}

id sub_2752CCBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_0_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = sub_2752DE008();
  OUTLINED_FUNCTION_0_2();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  v21 = sub_2752CD544();
  (*(v16 + 16))(v20, a1, v14);
  (*(v9 + 16))(v13, v4, a2);
  return sub_2752CD588(v13, v20, v21, a2, a3);
}

uint64_t sub_2752CCD30()
{
  v1 = sub_2752DDFF8();
  OUTLINED_FUNCTION_0_2();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  (*(v3 + 16))(v6 - v5, v0, v1);
  v8 = (*(v3 + 88))(v7, v1);
  v9 = 0;
  if (v8 == *MEMORY[0x277CD80D8])
  {
    return v9;
  }

  if (v8 == *MEMORY[0x277CD8050])
  {
    return 1;
  }

  if (v8 == *MEMORY[0x277CD80F0])
  {
    return 2;
  }

  if (v8 == *MEMORY[0x277CD8120])
  {
    return 3;
  }

  if (v8 == *MEMORY[0x277CD8058])
  {
    return 4;
  }

  if (v8 == *MEMORY[0x277CD8108])
  {
    return 5;
  }

  if (v8 == *MEMORY[0x277CD8060])
  {
    return 6;
  }

  if (v8 == *MEMORY[0x277CD8068])
  {
    return 7;
  }

  if (v8 == *MEMORY[0x277CD80E0])
  {
    return 9;
  }

  if (v8 == *MEMORY[0x277CD80C0])
  {
    return 11;
  }

  if (v8 == *MEMORY[0x277CD80F8])
  {
    return 12;
  }

  if (v8 == *MEMORY[0x277CD8038])
  {
    return 13;
  }

  if (v8 == *MEMORY[0x277CD8040])
  {
    return 14;
  }

  if (v8 == *MEMORY[0x277CD80C8])
  {
    return 15;
  }

  if (v8 == *MEMORY[0x277CD8110])
  {
    return 16;
  }

  if (v8 == *MEMORY[0x277CD8128])
  {
    return 17;
  }

  if (v8 == *MEMORY[0x277CD80A0])
  {
    return 18;
  }

  if (v8 == *MEMORY[0x277CD8070])
  {
    return 19;
  }

  if (v8 == *MEMORY[0x277CD80B8])
  {
    return 20;
  }

  if (v8 == *MEMORY[0x277CD80A8])
  {
    return 21;
  }

  if (v8 == *MEMORY[0x277CD80B0])
  {
    return 22;
  }

  if (v8 == *MEMORY[0x277CD8138])
  {
    return 24;
  }

  if (v8 == *MEMORY[0x277CD8078])
  {
    return 25;
  }

  if (v8 == *MEMORY[0x277CD8048])
  {
    return 26;
  }

  if (v8 == *MEMORY[0x277CD8080])
  {
    return 27;
  }

  if (v8 == *MEMORY[0x277CD80D0])
  {
    return 28;
  }

  if (v8 == *MEMORY[0x277CD8118])
  {
    return 29;
  }

  if (v8 == *MEMORY[0x277CD8088])
  {
    return 31;
  }

  if (v8 == *MEMORY[0x277CD80E8])
  {
    return 32;
  }

  if (v8 == *MEMORY[0x277CD8140])
  {
    return 33;
  }

  if (v8 == *MEMORY[0x277CD8130])
  {
    return 34;
  }

  if (v8 == *MEMORY[0x277CD8100])
  {
    return 35;
  }

  if (v8 == *MEMORY[0x277CD8090])
  {
    return 36;
  }

  if (v8 == *MEMORY[0x277CD8098])
  {
    return 37;
  }

  result = sub_2752DE468();
  __break(1u);
  return result;
}

uint64_t sub_2752CD200()
{
  v1 = v0;
  v2 = sub_2752DE008();
  OUTLINED_FUNCTION_0_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, v1, v2);
  v9 = (*(v4 + 88))(v8, v2);
  v10 = 0;
  if (v9 == *MEMORY[0x277CD81C0])
  {
    return v10;
  }

  if (v9 == *MEMORY[0x277CD8170])
  {
    return 1;
  }

  if (v9 == *MEMORY[0x277CD8150])
  {
    return 2;
  }

  if (v9 == *MEMORY[0x277CD8188])
  {
    return 3;
  }

  if (v9 == *MEMORY[0x277CD8178])
  {
    return 4;
  }

  if (v9 == *MEMORY[0x277CD8160])
  {
    return 5;
  }

  if (v9 == *MEMORY[0x277CD8180])
  {
    return 6;
  }

  if (v9 == *MEMORY[0x277CD8158])
  {
    return 7;
  }

  if (v9 == *MEMORY[0x277CD8168])
  {
    return 8;
  }

  if (v9 == *MEMORY[0x277CD81B0])
  {
    return 9;
  }

  if (v9 == *MEMORY[0x277CD81A8])
  {
    return 10;
  }

  if (v9 == *MEMORY[0x277CD81A0])
  {
    return 11;
  }

  if (v9 == *MEMORY[0x277CD8148])
  {
    return 12;
  }

  if (v9 == *MEMORY[0x277CD8190])
  {
    return 13;
  }

  if (v9 == *MEMORY[0x277CD81B8])
  {
    return 14;
  }

  if (v9 == *MEMORY[0x277CD8198])
  {
    return 15;
  }

  sub_2752DE3D8();
  MEMORY[0x277C74460](0xD000000000000010, 0x80000002752DFC80);
  sub_2752DE458();
  MEMORY[0x277C74460](0xD000000000000042, 0x80000002752DFCA0);
  result = sub_2752DE468();
  __break(1u);
  return result;
}

unint64_t sub_2752CD544()
{
  result = qword_2809C0108;
  if (!qword_2809C0108)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809C0108);
  }

  return result;
}

id sub_2752CD588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a3;
  v8 = sub_2752DDCB8();
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2752DDFF8();
  v11 = *(v26 - 8);
  v12 = MEMORY[0x28223BE20](v26);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a4 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 32))(v16, a1, a4);
  sub_2752DE038();
  sub_2752DE018();
  v18 = sub_2752CCD30();
  (*(v11 + 8))(v14, v26);
  sub_2752DDD98();
  v19 = sub_2752D0E30(v18, a2);
  (*(v27 + 8))(v10, v28);
  v20 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v21 = sub_2752DE168();

  v22 = [v20 initWithIdentifierSet:v19 modelObjectType:v18 storageDictionary:v21];
  swift_unknownObjectRelease();

  v23 = sub_2752DE008();
  (*(*(v23 - 8) + 8))(a2, v23);
  (*(v29 + 8))(v16, a4);
  return v22;
}

uint64_t sub_2752CD8C0()
{
  sub_2752DD6A8();
  OUTLINED_FUNCTION_0();
  v149 = v2;
  v150 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1();
  v153 = v4 - v3;
  sub_2752DE008();
  OUTLINED_FUNCTION_0();
  v146 = v6;
  v147 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v145 = v8 - v7;
  v137 = sub_2752DDFE8();
  OUTLINED_FUNCTION_0();
  v136 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_1();
  v133 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v135 = &v131 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0110, &qword_2752DF340);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v140 = &v131 - v17;
  v139 = sub_2752DD668();
  OUTLINED_FUNCTION_0();
  v160 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_1();
  v134 = v20 - v21;
  v23 = MEMORY[0x28223BE20](v22);
  v158 = &v131 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v131 - v25;
  v27 = sub_2752DDCB8();
  OUTLINED_FUNCTION_0();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1();
  v33 = v32 - v31;
  v34 = sub_2752DDD38();
  OUTLINED_FUNCTION_0();
  v159 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_1();
  v39 = (v37 - v38);
  MEMORY[0x28223BE20](v40);
  v42 = &v131 - v41;
  sub_2752DDFF8();
  OUTLINED_FUNCTION_0();
  v154 = v44;
  v155 = v43;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1();
  v157 = v46 - v45;
  sub_2752DD688();
  sub_2752DDCA8();
  v47 = *(v29 + 8);
  v142 = v33;
  v48 = v33;
  v49 = v140;
  v143 = v29 + 8;
  v144 = v27;
  v141 = v47;
  v47(v48, v27);
  v50 = v139;
  v51 = v159;
  v148 = v0;
  sub_2752DD698();
  v52 = *(v16 + 56);
  v53 = *(v51 + 16);
  v151 = v42;
  v53(v49, v42, v34);
  v54 = v160;
  (*(v160 + 32))(v49 + v52, v26, v50);
  v55 = *(v54 + 88);
  v156 = v52;
  v138 = v55;
  v56 = v55(v49 + v52, v50);
  v57 = *MEMORY[0x277D2A540];
  v152 = v34;
  if (v56 == v57)
  {
    v58 = v160;
    v59 = v158;
    (*(v160 + 16))(v158, v49 + v156, v50);
    (*(v58 + 96))(v59, v50);

    v60 = *(v59 + 3);
    v132 = *(v59 + 2);
    sub_2752DDD28();
    sub_2752CE618();
    OUTLINED_FUNCTION_3_3();
    LOBYTE(v59) = sub_2752DE198();
    v158 = *(v51 + 8);
    (v158)(v39, v34);
    if (v59)
    {
      v61 = v135;
      sub_2752DDED8();
      v62 = sub_2752DDFB8();
      v64 = v63;
      (*(v136 + 8))(v61, v137);
      v65 = v62 == v132 && v64 == v60;
      if (v65)
      {

        v34 = v152;
LABEL_22:
        OUTLINED_FUNCTION_6_0();
        v88(v157);
        v89 = OUTLINED_FUNCTION_1_3();
        v90(v89);
        v91 = OUTLINED_FUNCTION_5_0();
        (v158)(v91);
        goto LABEL_23;
      }

      v66 = sub_2752DE4B8();

      v34 = v152;
      v51 = v159;
      if (v66)
      {
        goto LABEL_22;
      }
    }

    else
    {

      v34 = v152;
      v51 = v159;
    }
  }

  sub_2752DDD28();
  sub_2752CE618();
  OUTLINED_FUNCTION_3_3();
  v67 = sub_2752DE198();
  v68 = *(v51 + 8);
  v68(v39, v34);
  v158 = v68;
  if (v67)
  {
    OUTLINED_FUNCTION_6_0();
    v69(v157);
    v70 = OUTLINED_FUNCTION_1_3();
    v71(v70);
    v72 = OUTLINED_FUNCTION_5_0();
    (v68)(v72);
LABEL_23:
    v73 = v153;
    v74 = v148;
    goto LABEL_30;
  }

  v135 = v39;
  v65 = v138(v49 + v156, v50) == v57;
  v73 = v153;
  v74 = v148;
  v75 = v157;
  if (!v65)
  {
    goto LABEL_25;
  }

  v76 = v160;
  v77 = v134;
  (*(v160 + 16))(v134, v49 + v156, v50);
  (*(v76 + 96))(v77, v50);

  v78 = *(v77 + 16);
  v79 = *(v77 + 24);
  v138 = v78;
  v80 = v34;
  v81 = v135;
  sub_2752DDD18();
  LOBYTE(v76) = sub_2752DE198();
  (v158)(v81, v80);
  if (v76)
  {
    v82 = v133;
    sub_2752DDED8();
    v83 = sub_2752DDFB8();
    v85 = v84;
    (*(v136 + 8))(v82, v137);
    v137 = v85;
    if (v83 == v138 && v85 == v79)
    {

      v34 = v152;
      v73 = v153;
LABEL_29:
      OUTLINED_FUNCTION_6_0();
      v99(v75);
      v100 = OUTLINED_FUNCTION_1_3();
      v101(v100);
      v102 = OUTLINED_FUNCTION_5_0();
      (v158)(v102);
      goto LABEL_30;
    }

    v87 = sub_2752DE4B8();

    v34 = v152;
    v73 = v153;
    if (v87)
    {
      goto LABEL_29;
    }
  }

  else
  {

    v34 = v152;
    v73 = v153;
  }

LABEL_25:
  v92 = v135;
  sub_2752DDD18();
  OUTLINED_FUNCTION_3_3();
  v93 = sub_2752DE198();
  v94 = v158;
  (v158)(v92, v34);
  if (v93)
  {
    OUTLINED_FUNCTION_6_0();
    v95(v75);
    v96 = OUTLINED_FUNCTION_1_3();
    v97(v96);
    v98 = OUTLINED_FUNCTION_5_0();
    (v94)(v98);
  }

  else
  {
    sub_2752DDCC8();
    sub_2752C3990(v49, &qword_2809C0110, &qword_2752DF340);
  }

LABEL_30:
  v103 = v142;
  sub_2752DD688();
  v104 = sub_2752CCD30();
  v106 = v145;
  v105 = v146;
  v107 = v147;
  (*(v146 + 104))(v145, *MEMORY[0x277CD8190], v147);
  v108 = sub_2752D0E30(v104, v106);
  (*(v105 + 8))(v106, v107);
  v141(v103, v144);
  objc_opt_self();
  v109 = swift_dynamicCastObjCClass();
  v110 = v149;
  if (v109)
  {
    v111 = v109;
    if (qword_2809BFD88 != -1)
    {
      swift_once();
    }

    v112 = sub_2752DD988();
    __swift_project_value_buffer(v112, qword_2809C06C0);
    v113 = v74;
    v114 = v150;
    (*(v110 + 16))(v73, v113, v150);
    swift_unknownObjectRetain();
    v115 = sub_2752DD968();
    v116 = sub_2752DE358();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v160 = v111;
      v118 = v114;
      v119 = v117;
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v162[0] = v121;
      *v119 = 136446466;
      v122 = sub_2752DD678();
      v123 = v73;
      v125 = v124;
      v126 = v118;
      v111 = v160;
      (*(v110 + 8))(v123, v126);
      v127 = sub_2752C50C8(v122, v125, v162);

      *(v119 + 4) = v127;
      *(v119 + 12) = 2112;
      *(v119 + 14) = v111;
      *v120 = v111;
      swift_unknownObjectRetain();
      _os_log_impl(&dword_2752C1000, v115, v116, "Converted Siri representation ID %{public}s to identifier set %@.", v119, 0x16u);
      sub_2752C3990(v120, &qword_2809C00C8, &unk_2752DF2E0);
      MEMORY[0x277C74BF0](v120, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v121);
      MEMORY[0x277C74BF0](v121, -1, -1);
      MEMORY[0x277C74BF0](v119, -1, -1);

      v128 = v151;
      v129 = v152;
    }

    else
    {

      (*(v110 + 8))(v73, v114);
      v128 = v151;
      v129 = v34;
    }

    (v158)(v128, v129);
    (*(v154 + 8))(v157, v155);
    return v111;
  }

  else
  {
    v162[0] = 0;
    v162[1] = 0xE000000000000000;
    sub_2752DE3D8();
    MEMORY[0x277C74460](0xD00000000000002FLL, 0x80000002752DFDC0);
    v161 = v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809C0180, &qword_2752DF348);
    sub_2752DE458();
    MEMORY[0x277C74460](46, 0xE100000000000000);
    result = sub_2752DE468();
    __break(1u);
  }

  return result;
}

unint64_t sub_2752CE618()
{
  result = qword_2809C0118;
  if (!qword_2809C0118)
  {
    sub_2752DDD38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809C0118);
  }

  return result;
}

uint64_t Genre.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_2752DDD38();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2752DDCB8();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v15 = sub_2752DE088();
  OUTLINED_FUNCTION_0();
  v34 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 identifiers];
  sub_2752DDD18();
  sub_2752C4D60(v8, v14);

  (*(v5 + 8))(v8, v3);
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = v21;
    v23 = a1;
    if ([v22 curatorSubKind] == 2)
    {
      v24 = OUTLINED_FUNCTION_1_4();
      v25 = v35;
      v26(v24);
      v39 = 0;
      v37 = 0u;
      v38 = 0u;
      sub_2752DE068();

      (*(v10 + 8))(v14, v25);
      goto LABEL_7;
    }
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    (*(v10 + 8))(v14, v35);
    v31 = 1;
    v30 = v36;
    return __swift_storeEnumTagSinglePayload(v30, v31, 1, v15);
  }

  v27 = OUTLINED_FUNCTION_1_4();
  v28 = v35;
  v29(v27);
  sub_2752DE078();
  (*(v10 + 8))(v14, v28);
LABEL_7:
  v30 = v36;
  (*(v34 + 32))(v36, v19, v15);
  v31 = 0;
  return __swift_storeEnumTagSinglePayload(v30, v31, 1, v15);
}

uint64_t sub_2752CEA18(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v31 = MEMORY[0x277D84F90];
  sub_2752D1B9C(0, v1, 0);
  v2 = v31;
  result = sub_2752D2B94(v3);
  v7 = result;
  v8 = 0;
  v9 = v3 + 56;
  v25 = v3 + 64;
  v26 = v3 + 56;
  v27 = v3;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_25;
      }

      v30 = v6;
      v28 = v8;
      v29 = v5;
      v11 = (*(v3 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      v15 = *(v31 + 16);
      v14 = *(v31 + 24);

      if (v15 >= v14 >> 1)
      {
        result = sub_2752D1B9C((v14 > 1), v15 + 1, 1);
      }

      *(v31 + 16) = v15 + 1;
      v16 = v31 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      if (v30)
      {
        goto LABEL_29;
      }

      v9 = v26;
      v3 = v27;
      v17 = 1 << *(v27 + 32);
      if (v7 >= v17)
      {
        goto LABEL_26;
      }

      v18 = *(v26 + 8 * v10);
      if ((v18 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v27 + 36) != v29)
      {
        goto LABEL_28;
      }

      v19 = v18 & (-2 << (v7 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v10 << 6;
        v21 = v10 + 1;
        v22 = (v25 + 8 * v10);
        while (v21 < (v17 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_2752D2BD4(v7, v29, 0);
            v17 = __clz(__rbit64(v23)) + v20;
            goto LABEL_19;
          }
        }

        result = sub_2752D2BD4(v7, v29, 0);
      }

LABEL_19:
      v8 = v28 + 1;
      if (v28 + 1 == v1)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v27 + 36);
      v7 = v17;
      if (v17 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2752CEC50(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2752D2D20();
  result = MEMORY[0x277C74560](v2, MEMORY[0x277CD7E90], v3);
  v5 = 0;
  v11 = result;
  v6 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v6 == v5)
    {

      return v11;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    ++v5;
    v9 = *(i - 1);
    v8 = *i;

    sub_2752D1DCC(&v10, v9, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_2752CED14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v320 = a2;
  v315 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0010, &qword_2752DEF58);
  v9 = OUTLINED_FUNCTION_3(v8);
  MEMORY[0x28223BE20](v9);
  v11 = v270 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C01B0, &qword_2752DF3A0);
  v13 = OUTLINED_FUNCTION_3(v12);
  MEMORY[0x28223BE20](v13);
  v276 = v270 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0190, &qword_2752DF380);
  v16 = OUTLINED_FUNCTION_3(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_19_0();
  v298 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0198, &qword_2752DF388);
  v20 = OUTLINED_FUNCTION_3(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_12_0(v22);
  v311 = sub_2752DDA68();
  OUTLINED_FUNCTION_0();
  v271 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_12_0(v26);
  v27 = sub_2752DDD88();
  OUTLINED_FUNCTION_0();
  v305 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_12_0(v30);
  v307 = sub_2752DDD38();
  OUTLINED_FUNCTION_0();
  v309 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_12_0(v34);
  v303 = sub_2752DDE88();
  OUTLINED_FUNCTION_0();
  v277 = v35;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_12_0(v39);
  v330 = sub_2752DDE48();
  OUTLINED_FUNCTION_0();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_4();
  v329 = v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_19_0();
  v326 = v45;
  v332 = sub_2752DDD48();
  OUTLINED_FUNCTION_0();
  v47 = v46;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_9_0();
  v341 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809C01B8, qword_2752DF3A8);
  v51 = OUTLINED_FUNCTION_3(v50);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_25();
  v334 = v53;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_25();
  v331 = v55;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_19_0();
  v343 = v58;
  sub_2752DDD58();
  OUTLINED_FUNCTION_0();
  v60 = v59;
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v64);
  v66 = v270 - v65;
  v67 = *(v60 + 104);
  v274 = *MEMORY[0x277CD7CC8];
  v306 = v68;
  v294 = v60 + 104;
  v293 = v67;
  v67(v270 - v65);
  v69 = sub_2752D2F60(&qword_2811ACDB0, MEMORY[0x277CD7DB0], MEMORY[0x277CD7DB8]);
  v316 = a3;
  v312 = v27;
  v292 = v69;
  sub_2752DE298();
  OUTLINED_FUNCTION_33();
  v299 = v11;
  if (v185)
  {
    MEMORY[0x28223BE20](v70);
    OUTLINED_FUNCTION_16_0();
    *(v71 - 16) = v66;
    v72 = OUTLINED_FUNCTION_17_0();
    v74 = sub_2752D275C(v72, v73);
  }

  else
  {
    v74 = v70;
  }

  v290 = 0;
  v75 = *(v60 + 8);
  v295 = v60 + 8;
  v291 = v75;
  v75(v66, v306);
  if (!v74)
  {
    OUTLINED_FUNCTION_15_0();
    v269 = 36;
LABEL_148:
    v270[0] = v269;
LABEL_149:
    result = sub_2752DE468();
    __break(1u);
    return result;
  }

  v337 = [a1 musicKit_catalogID];
  v76 = [a1 musicKit_libraryID];
  v77 = v332;
  if (v76)
  {
    v78 = v76;
    v310 = sub_2752DE1B8();
    v80 = v79;
  }

  else
  {
    v310 = 0;
    v80 = 0;
  }

  v81 = [a1 musicKit_cloudAlbumLibraryID];
  if (v81)
  {
    v82 = v81;
    v278 = sub_2752DE1B8();
    v308 = v83;
  }

  else
  {
    v278 = 0;
    v308 = 0;
  }

  v335 = [a1 musicKit_deviceLocalID];
  v84 = [a1 musicKit_occurrenceID];
  if (v84)
  {
    v85 = v84;
    v301 = sub_2752DE1B8();
    v319 = v86;
  }

  else
  {
    v301 = 0;
    v319 = 0;
  }

  v314 = v80;
  v300 = a4;
  v87 = sub_2752DDA88();
  v88 = type metadata accessor for MusicPreferredID(0);
  __swift_storeEnumTagSinglePayload(v343, 1, 1, v88);
  v89 = 0;
  v342 = *(v87 + 16);
  v340 = v47 + 16;
  v339 = v47 + 88;
  v338 = *MEMORY[0x277CD7C60];
  v333 = *MEMORY[0x277CD7C58];
  v318 = *MEMORY[0x277CD7C68];
  v304 = *MEMORY[0x277CD7C50];
  v287 = *MEMORY[0x277CD7F30];
  v328 = (v41 + 104);
  v286 = *MEMORY[0x277CD7F50];
  v285 = *MEMORY[0x277CD7F38];
  v284 = *MEMORY[0x277CD7F48];
  v283 = *MEMORY[0x277CD7F58];
  v323 = (v41 + 16);
  v322 = (v41 + 8);
  v282 = *MEMORY[0x277CD7F40];
  v90 = &unk_2809C01B8;
  v281 = *MEMORY[0x277CD7F70];
  v91 = qword_2752DF3A8;
  v327 = *MEMORY[0x277CD7F60];
  v313 = a1;
  v92 = v334;
  v336 = v87;
  v324 = v47;
  v321 = v88;
  while (1)
  {
    if (v342 == v89)
    {

      goto LABEL_45;
    }

    if (v89 >= *(v87 + 16))
    {
      __break(1u);
      goto LABEL_144;
    }

    v93 = v91;
    v94 = v341;
    (*(v47 + 16))(v341, v87 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v89, v77);
    v95 = (*(v47 + 88))(v94, v77);
    if (v95 == v338)
    {
      v91 = v93;
      if (!v337)
      {
        goto LABEL_41;
      }

      v96 = v337;
      v97 = [v96 value];
      sub_2752DE1B8();

      sub_2752DDDB8();
      v98 = [v96 kind];
      v99 = a1;
      v100 = v327;
      switch(v98)
      {
        case 0uLL:
          goto LABEL_39;
        case 1uLL:
          v101 = (&v314 + 4);
          goto LABEL_38;
        case 2uLL:
          v101 = &v315;
          goto LABEL_38;
        case 3uLL:
          v101 = (&v315 + 4);
          goto LABEL_38;
        case 4uLL:
          v101 = &v316;
          goto LABEL_38;
        case 5uLL:
          v101 = (&v316 + 4);
          goto LABEL_38;
        case 6uLL:
          v101 = v317;
          goto LABEL_38;
        case 7uLL:
          v101 = (v317 + 4);
LABEL_38:
          v100 = *(v101 - 64);
LABEL_39:
          v114 = v326;
          v115 = v330;
          (*v328)(v326, v100, v330);
          (*v323)(v329, v114, v115);
          v108 = v325;
          sub_2752DDE68();

          (*v322)(v114, v115);
          v90 = &unk_2809C01B8;
          v91 = v93;
          sub_2752D2EA8(v343, &unk_2809C01B8, v93);
          v88 = v321;
          swift_storeEnumTagMultiPayload();
          a1 = v99;
          v77 = v332;
          v92 = v334;
          v47 = v324;
          break;
        case 8uLL:
          OUTLINED_FUNCTION_15_0();
          v270[0] = 49;
          goto LABEL_149;
        default:
          goto LABEL_149;
      }

      goto LABEL_40;
    }

    v91 = v93;
    if (v95 == v333)
    {
      if (!v335)
      {
        goto LABEL_41;
      }

      v102 = v335;
      [v102 value];
      v317[1] = sub_2752DDDD8();
      v317[0] = v103;
      v104 = [v102 databaseID];
      sub_2752DE1B8();

      v90 = &unk_2809C01B8;
      v92 = v334;
      v105 = v77;
      v106 = v313;
      sub_2752DDDB8();
      v107 = v331;
      sub_2752DDA48();

      OUTLINED_FUNCTION_28();
      swift_storeEnumTagMultiPayload();
      v108 = v107;
      a1 = v106;
      v77 = v105;
      v91 = v93;
      goto LABEL_40;
    }

    if (v95 == v318)
    {
      if (v314)
      {

        v109 = sub_2752DDDB8();
        v110 = v77;
        v111 = a1;
        v113 = v112;
        sub_2752D2EA8(v343, &unk_2809C01B8, v93);
        v108 = v331;
        *v331 = v109;
        v108[1] = v113;
        v91 = v93;
        a1 = v111;
        v77 = v110;
        v90 = &unk_2809C01B8;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v91 = v93;
        if (!v308)
        {
          goto LABEL_41;
        }

LABEL_31:

        v91 = sub_2752DDDB8();
        OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_18();
        swift_storeEnumTagMultiPayload();
        v108 = a1;
        a1 = v77;
        v77 = &unk_2809C01B8;
        v90 = &unk_2809C01B8;
      }

LABEL_40:
      __swift_storeEnumTagSinglePayload(v108, 0, 1, v88);
      sub_2752D2CB0(v108, v343);
      v87 = v336;
      goto LABEL_41;
    }

    if (v95 != v304)
    {
      OUTLINED_FUNCTION_15_0();
      v269 = 70;
      goto LABEL_148;
    }

    if (v319)
    {
      goto LABEL_31;
    }

LABEL_41:
    sub_2752D2C4C(v343, v92, &unk_2809C01B8, v91);
    if (__swift_getEnumTagSinglePayload(v92, 1, v88) != 1)
    {
      break;
    }

    sub_2752D2EA8(v92, &unk_2809C01B8, v91);
    ++v89;
  }

  sub_2752D2EA8(v92, &unk_2809C01B8, qword_2752DF3A8);
LABEL_45:
  v116 = v296;
  sub_2752D2C4C(v343, v296, &unk_2809C01B8, qword_2752DF3A8);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v116, 1, v88);
  v118 = v314;
  if (EnumTagSinglePayload == 1)
  {
    v119 = v279;
    OUTLINED_FUNCTION_11_1();
    v120();
    OUTLINED_FUNCTION_13_0(v119);
    OUTLINED_FUNCTION_33();
    if (v185)
    {
      MEMORY[0x28223BE20](v121);
      OUTLINED_FUNCTION_16_0();
      *(v122 - 16) = v119;
      v123 = OUTLINED_FUNCTION_17_0();
      v124 = v290;
      v133 = sub_2752D275C(v123, v125);
      v290 = v124;
    }

    else
    {
      v133 = v121;
    }

    v134 = v288;
    v135 = v289;
    OUTLINED_FUNCTION_10_0();
    v136();
    if (v133 || ((OUTLINED_FUNCTION_11_1(), v143(), OUTLINED_FUNCTION_13_0(v135), OUTLINED_FUNCTION_33(), v185) ? (MEMORY[0x28223BE20](v144), OUTLINED_FUNCTION_16_0(), *(v145 - 16) = v289, v146 = OUTLINED_FUNCTION_17_0(), v147 = v290, v149 = sub_2752D275C(v146, v148), v290 = v147, v134 = v288) : (v149 = v144), (OUTLINED_FUNCTION_10_0(), v150(), v149) && ((OUTLINED_FUNCTION_11_1(), v151(), OUTLINED_FUNCTION_13_0(v134), OUTLINED_FUNCTION_33(), v185) ? (MEMORY[0x28223BE20](v152), OUTLINED_FUNCTION_16_0(), *(v153 - 16) = v134, v154 = OUTLINED_FUNCTION_17_0(), v176 = sub_2752D275C(v154, v155)) : (v176 = v152), OUTLINED_FUNCTION_10_0(), v177(), !v176)))
    {
      v137 = [a1 musicKit_playbackID];
      if (v137)
      {
        v138 = v137;
        sub_2752DE1B8();
        OUTLINED_FUNCTION_22_0();

        OUTLINED_FUNCTION_23_0();
        sub_2752DDDB8();
        v139 = OUTLINED_FUNCTION_1_5();
        v140(v139);
        v141 = OUTLINED_FUNCTION_0_3();
        v142(v141);
        OUTLINED_FUNCTION_7_1();
        sub_2752DDA98();
        goto LABEL_100;
      }
    }

    v178 = [a1 musicKit_playbackID];
    v87 = v307;
    if (v178)
    {
      v179 = v178;
      sub_2752DE1B8();

      v180 = [a1 musicKit_identifierSetSources];
      if (v180)
      {
        v181 = v180;
        v182 = sub_2752DE2C8();

        if (v182[2])
        {
          a1 = 0xD000000000000010;
          v184 = v182[4];
          v183 = v182[5];

          v185 = v184 == 0xD000000000000010 && 0x80000002752DFF20 == v183;
          if (v185)
          {

            OUTLINED_FUNCTION_26();
          }

          else
          {
            v186 = sub_2752DE4B8();

            OUTLINED_FUNCTION_26();
            if ((v186 & 1) == 0)
            {

              v87 = v307;
              goto LABEL_78;
            }
          }

          sub_2752DDDB8();
          v206 = OUTLINED_FUNCTION_1_5();
          v207(v206);
          v208 = OUTLINED_FUNCTION_0_3();
          v209(v208);
          OUTLINED_FUNCTION_21_0();
          OUTLINED_FUNCTION_7_1();
          sub_2752DDA98();
LABEL_99:
          v118 = v314;
          goto LABEL_100;
        }
      }
    }

LABEL_78:
    v187 = v302;
    sub_2752DDCD8();
    v188 = sub_2752DDCF8();
    v90 = *(v309 + 8);
    v90(v187, v87);
    if (v188)
    {
      v189 = [a1 musicKit_containedDeviceLocalID];
      if (v189)
      {
        v190 = v189;
        [v190 value];
        sub_2752DDDD8();
        OUTLINED_FUNCTION_22_0();
        v191 = [v190 databaseID];
        sub_2752DE1B8();
        OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_29();
        sub_2752DDDB8();
        OUTLINED_FUNCTION_23_0();
        sub_2752DDA48();

        OUTLINED_FUNCTION_5_1();
        v192 = OUTLINED_FUNCTION_31();
        v193(v192);
        OUTLINED_FUNCTION_3_4();
        OUTLINED_FUNCTION_2_4();
        v194();
        OUTLINED_FUNCTION_21_0();
        OUTLINED_FUNCTION_32();
        sub_2752DDBB8();

        goto LABEL_99;
      }
    }

    sub_2752DDDB8();
    (*v328)(v329, v327, v330);
    sub_2752DDE68();
    v195 = OUTLINED_FUNCTION_32();
    v196(v195);
    v197 = a1;
    a1 = *(v309 + 16);
    (a1)(v302, v320, v87);
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_2_4();
    v198();
    OUTLINED_FUNCTION_32();
    sub_2752DDC28();
    if (([v197 musicKit_hasValidIdentifier] & 1) == 0)
    {
      v199 = [v313 musicKit_identifierSetSources];
      if (v199)
      {
        v200 = v199;
        v201 = sub_2752DE2C8();

        if (v201[2])
        {
          v203 = v201[4];
          v202 = v201[5];

          if (v203 == 0x6D6552616964654DLL && v202 == 0xEB0000000065746FLL)
          {

            goto LABEL_142;
          }

          v205 = sub_2752DE4B8();

          v87 = v307;
          if (v205)
          {
LABEL_142:
            v267 = OUTLINED_FUNCTION_24_0();
            v268(v267);
            OUTLINED_FUNCTION_26();
LABEL_98:
            OUTLINED_FUNCTION_21_0();
            goto LABEL_99;
          }
        }

        else
        {
        }
      }
    }

    if (qword_2811ACD90 == -1)
    {
LABEL_94:
      v210 = sub_2752DD988();
      __swift_project_value_buffer(v210, qword_2811ACEF0);
      v211 = v272;
      (a1)(v272, v320, v87);
      OUTLINED_FUNCTION_26();
      swift_unknownObjectRetain();
      v212 = sub_2752DD968();
      v213 = sub_2752DE338();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v212, v213))
      {
        v214 = swift_slowAlloc();
        v215 = swift_slowAlloc();
        v344 = a1;
        v345 = v215;
        *v214 = 136315394;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809C0180, &qword_2752DF348);
        v216 = sub_2752DE1C8();
        v218 = sub_2752C50C8(v216, v217, &v345);

        *(v214 + 4) = v218;
        *(v214 + 12) = 2080;
        v219 = sub_2752DDCE8();
        v221 = v220;
        v90(v211, v307);
        v222 = sub_2752C50C8(v219, v221, &v345);

        *(v214 + 14) = v222;
        _os_log_impl(&dword_2752C1000, v212, v213, "No catalogID, libraryID, or deviceLocalID was found from underlying identifier set %s. A MusicIdentifierSet with empty string, for type %s, is being used.", v214, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x277C74BF0](v215, -1, -1);
        MEMORY[0x277C74BF0](v214, -1, -1);
      }

      else
      {

        v90(v211, v87);
      }

      v223 = OUTLINED_FUNCTION_24_0();
      v224(v223);
      goto LABEL_98;
    }

LABEL_144:
    swift_once();
    goto LABEL_94;
  }

  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v172 = OUTLINED_FUNCTION_1_5();
      v173(v172);
      v174 = OUTLINED_FUNCTION_0_3();
      v175(v174);
      OUTLINED_FUNCTION_7_1();
      sub_2752DDC78();
      break;
    case 2u:
      v160 = OUTLINED_FUNCTION_1_5();
      v161(v160);
      v162 = OUTLINED_FUNCTION_0_3();
      v163(v162);
      OUTLINED_FUNCTION_7_1();
      sub_2752DDB88();
      break;
    case 3u:
      v164 = v271;
      v165 = v273;
      v166 = OUTLINED_FUNCTION_32();
      v167 = v311;
      v168(v166);
      (*(v164 + 16))(v270[1], v165, v167);
      OUTLINED_FUNCTION_5_1();
      v169 = OUTLINED_FUNCTION_31();
      v170(v169);
      OUTLINED_FUNCTION_3_4();
      OUTLINED_FUNCTION_2_4();
      v171();
      sub_2752DDB08();
      (*(v164 + 8))(v165, v167);
      break;
    case 4u:
      v156 = OUTLINED_FUNCTION_1_5();
      v157(v156);
      v158 = OUTLINED_FUNCTION_0_3();
      v159(v158);
      OUTLINED_FUNCTION_7_1();
      sub_2752DDAE8();
      break;
    default:
      v126 = v277;
      v127 = v275;
      v128 = v303;
      (*(v277 + 32))(v275, v116, v303);
      (*(v126 + 16))(v270[0], v127, v128);
      v129 = OUTLINED_FUNCTION_1_5();
      v130(v129);
      v131 = OUTLINED_FUNCTION_0_3();
      v132(v131);
      sub_2752DDC28();
      (*(v126 + 8))(v127, v128);
      break;
  }

LABEL_100:
  sub_2752DDC88();
  if (v225)
  {
  }

  else if (v118)
  {
    sub_2752DDDB8();
    sub_2752DDC98();
  }

  v226 = v297;
  sub_2752DDC38();
  v227 = v303;
  v228 = __swift_getEnumTagSinglePayload(v226, 1, v303);
  sub_2752D2EA8(v226, &qword_2809C0198, &qword_2752DF388);
  if (v228 == 1 && v337)
  {
    v229 = v337;
    v230 = v280;
    sub_2752DD04C(v229);
    __swift_storeEnumTagSinglePayload(v230, 0, 1, v227);
    sub_2752DDC48();
  }

  v231 = v298;
  sub_2752DDB18();
  v232 = __swift_getEnumTagSinglePayload(v231, 1, v311);
  sub_2752D2EA8(v231, &qword_2809C0190, &qword_2752DF380);
  if (v232 == 1 && v335)
  {
    v233 = v335;
    [v233 value];
    sub_2752DDDD8();
    OUTLINED_FUNCTION_22_0();
    v234 = [v233 databaseID];
    sub_2752DE1B8();
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_21_0();
    v235 = sub_2752DDDB8();
    OUTLINED_FUNCTION_9_1(v235, v236);

    OUTLINED_FUNCTION_14_0();
    sub_2752DDB28();
  }

  if ([a1 musicKit_cloudID])
  {
    sub_2752DDDD8();
    sub_2752DDC18();
  }

  v237 = [a1 musicKit_cloudAlbumLibraryID];
  if (v237)
  {
    v238 = v237;
    sub_2752DE1B8();
    OUTLINED_FUNCTION_22_0();

    OUTLINED_FUNCTION_23_0();
    sub_2752DDDB8();
    sub_2752DDBA8();
  }

  if ([a1 musicKit_reportingAdamID])
  {
    sub_2752DDDD8();
    sub_2752DDB78();
  }

  if ([a1 musicKit_purchasedAdamID])
  {
    sub_2752DDDD8();
    sub_2752DDB58();
  }

  if ([a1 musicKit_assetAdamID])
  {
    sub_2752DDDD8();
    sub_2752DDAD8();
  }

  v239 = [a1 musicKit_deviceLocalID];
  if (v239)
  {
    v240 = v239;
    [v240 value];
    sub_2752DDDD8();
    OUTLINED_FUNCTION_22_0();
    v241 = [v240 databaseID];
    sub_2752DE1B8();
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_21_0();
    v242 = sub_2752DDDB8();
    OUTLINED_FUNCTION_9_1(v242, v243);

    OUTLINED_FUNCTION_14_0();
    sub_2752DDB28();
  }

  v244 = [a1 musicKit_formerIDs];
  if (v244)
  {
    v245 = v244;
    v246 = sub_2752DE2C8();

    v247 = *(v246 + 16);
    if (v247)
    {
      v345 = MEMORY[0x277D84F90];
      sub_2752D1B7C(0, v247, 0);
      v248 = v345;
      a1 = (v246 + 40);
      do
      {

        v249 = sub_2752DDDB8();
        v251 = v250;
        v345 = v248;
        v253 = *(v248 + 16);
        v252 = *(v248 + 24);
        if (v253 >= v252 >> 1)
        {
          sub_2752D1B7C((v252 > 1), v253 + 1, 1);
          v248 = v345;
        }

        *(v248 + 16) = v253 + 1;
        v254 = v248 + 16 * v253;
        *(v254 + 32) = v249;
        *(v254 + 40) = v251;
        a1 += 2;
        --v247;
      }

      while (v247);

      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_21_0();
    }

    else
    {

      v248 = MEMORY[0x277D84F90];
    }

    sub_2752CEC50(v248);
    sub_2752DDC68();
  }

  v255 = [a1 musicKit_containedDeviceLocalID];
  if (v255)
  {
    v256 = v255;
    [v256 value];
    sub_2752DDDD8();
    OUTLINED_FUNCTION_22_0();
    v257 = [v256 databaseID];
    sub_2752DE1B8();
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_21_0();
    v258 = sub_2752DDDB8();
    OUTLINED_FUNCTION_9_1(v258, v259);

    OUTLINED_FUNCTION_14_0();
    sub_2752DDBD8();
  }

  v260 = [a1 musicKit_playbackID];
  if (v260)
  {
    v261 = v260;
    sub_2752DE1B8();
    OUTLINED_FUNCTION_22_0();

    OUTLINED_FUNCTION_23_0();
    sub_2752DDDB8();
    sub_2752DDAB8();
  }

  if ([a1 musicKit_syncID])
  {
    sub_2752DDDD8();
    sub_2752DDBF8();
  }

  v262 = sub_2752DDD08();
  if (dynamic_cast_existential_1_conditional(v262, v262, MEMORY[0x277CD7BC0]))
  {
    v263 = [a1 musicKit_modelKind];
    if (v263)
    {
      v264 = v263;
      sub_2752DDA18();

      sub_2752DDB38();
    }
  }

  v265 = v300;
  sub_2752D2C4C(v300, v299, &qword_2809C0010, &qword_2752DEF58);
  sub_2752DDA78();
  swift_unknownObjectRelease();

  sub_2752D2EA8(v265, &qword_2809C0010, &qword_2752DEF58);
  (*(v305 + 8))(v316, v312);
  (*(v309 + 8))(v320, v307);
  return sub_2752D2EA8(v343, &unk_2809C01B8, qword_2752DF3A8);
}

id sub_2752D0E30(id a1, uint64_t a2)
{
  v54 = a2;
  v55 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0190, &qword_2752DF380);
  v3 = OUTLINED_FUNCTION_3(v2);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0198, &qword_2752DF388);
  v10 = OUTLINED_FUNCTION_3(v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  sub_2752DDC38();
  v13 = sub_2752DDE88();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_2752D2EA8(v12, &qword_2809C0198, &qword_2752DF388);
    v57 = 0;
  }

  else
  {
    v57 = sub_2752DD2E8();
    OUTLINED_FUNCTION_27();
    (*(v14 + 8))(v12, v13);
  }

  sub_2752DDC88();
  if (v15)
  {
    v56 = sub_2752DE1A8();
  }

  else
  {
    v56 = 0;
  }

  sub_2752DDB98();
  if (v16)
  {
    v53 = sub_2752DE1A8();
  }

  else
  {
    v53 = 0;
  }

  sub_2752DDC08();
  if (v17)
  {
    v52 = sub_2752DE1A8();
  }

  else
  {
    v52 = 0;
  }

  sub_2752DDB68();
  if (v18)
  {
    v51 = sub_2752DE1A8();
  }

  else
  {
    v51 = 0;
  }

  sub_2752DDB48();
  if (v19)
  {
    v50 = sub_2752DE1A8();
  }

  else
  {
    v50 = 0;
  }

  sub_2752DDAC8();
  if (v20)
  {
    v49 = sub_2752DE1A8();
  }

  else
  {
    v49 = 0;
  }

  sub_2752DDB18();
  v21 = sub_2752DDA68();
  if (__swift_getEnumTagSinglePayload(v8, 1, v21) == 1)
  {
    sub_2752D2EA8(v8, &qword_2809C0190, &qword_2752DF380);
    v48 = 0;
  }

  else
  {
    v48 = sub_2752C8BC8();
    OUTLINED_FUNCTION_27();
    (*(v22 + 8))(v8, v21);
  }

  sub_2752DDAF8();
  if (v23)
  {
    v24 = sub_2752DE1A8();
  }

  else
  {
    v24 = 0;
  }

  sub_2752DDBC8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v21) == 1)
  {
    sub_2752D2EA8(v6, &qword_2809C0190, &qword_2752DF380);
    v25 = 0;
  }

  else
  {
    v25 = sub_2752C8BC8();
    OUTLINED_FUNCTION_27();
    (*(v26 + 8))(v6, v21);
  }

  sub_2752DDBE8();
  if (v27)
  {
    v28 = sub_2752DE1A8();
  }

  else
  {
    v28 = 0;
  }

  sub_2752DDAA8();
  if (v29)
  {
    v30 = sub_2752DE1A8();
  }

  else
  {
    v30 = 0;
  }

  v31 = objc_opt_self();
  v32 = sub_2752DDC58();
  v33 = sub_2752CEA18(v32);

  v34 = sub_2752CD200();
  v46 = v31;
  v45 = v33;
  *&v44 = v24;
  *(&v44 + 1) = v25;
  v35 = v24;
  v37 = v52;
  v36 = v53;
  v38 = v51;
  v39 = v25;
  v41 = v49;
  v40 = v50;
  v42 = v48;
  v55 = sub_2752D2AB8(v57, v56, v53, v52, v51, v50, v49, v48, v44, v28, v30, v45, v55, v34, v46);

  return v55;
}

uint64_t sub_2752D12EC(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v3 = sub_2752DDA68();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2752DDE88();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MusicPreferredID(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v44 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v44 - v16);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v44 - v19);
  MEMORY[0x28223BE20](v18);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C01F0, &qword_2752DF460);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v44 - v25;
  v27 = (&v44 + *(v24 + 56) - v25);
  sub_2752D2E44(a1, &v44 - v25);
  sub_2752D2E44(v49, v27);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2752D2E44(v26, v20);
      v29 = *v20;
      v28 = v20[1];
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_15;
    case 2u:
      sub_2752D2E44(v26, v17);
      v31 = *v17;
      v30 = v17[1];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_21;
      }

      if (v31 != *v27 || v30 != v27[1])
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    case 3u:
      sub_2752D2E44(v26, v14);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v34 = v47;
        v33 = v48;
        v35 = v44;
        (*(v47 + 32))(v44, v27, v48);
        v36 = sub_2752DDA38();
        v37 = *(v34 + 8);
        v37(v35, v33);
        v37(v14, v33);
        goto LABEL_28;
      }

      (*(v47 + 8))(v14, v48);
      goto LABEL_25;
    case 4u:
      sub_2752D2E44(v26, v11);
      v29 = *v11;
      v28 = v11[1];
      if (swift_getEnumCaseMultiPayload() != 4)
      {
LABEL_21:

        goto LABEL_25;
      }

LABEL_15:
      if (v29 == *v27 && v28 == v27[1])
      {
LABEL_22:
      }

      else
      {
LABEL_19:
        v39 = sub_2752DE4B8();

        if ((v39 & 1) == 0)
        {
          sub_2752D2F04(v26);
          goto LABEL_26;
        }
      }

      sub_2752D2F04(v26);
      v36 = 1;
      break;
    default:
      sub_2752D2E44(v26, v22);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v45 + 8))(v22, v46);
LABEL_25:
        sub_2752D2EA8(v26, &qword_2809C01F0, &qword_2752DF460);
LABEL_26:
        v36 = 0;
      }

      else
      {
        v41 = v45;
        v40 = v46;
        (*(v45 + 32))(v7, v27, v46);
        v36 = sub_2752DDE38();
        v42 = *(v41 + 8);
        v42(v7, v40);
        v42(v22, v40);
LABEL_28:
        sub_2752D2F04(v26);
      }

      break;
  }

  return v36 & 1;
}

uint64_t sub_2752D17E0(uint64_t a1)
{
  v2 = sub_2752DDA68();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2752DDE88();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MusicPreferredID(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2752D2E44(v1, v12);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v14 = 1;
      goto LABEL_7;
    case 2u:
      v14 = 2;
      goto LABEL_7;
    case 3u:
      (*(v3 + 32))(v5, v12, v2);
      MEMORY[0x277C747A0](3);
      sub_2752D2F60(&qword_2809C01F8, MEMORY[0x277CD7C28], MEMORY[0x277CD7C30]);
      sub_2752DE188();
      return (*(v3 + 8))(v5, v2);
    case 4u:
      v14 = 4;
LABEL_7:
      MEMORY[0x277C747A0](v14);
      sub_2752DE1E8();

      break;
    default:
      (*(v7 + 32))(v9, v12, v6);
      MEMORY[0x277C747A0](0);
      sub_2752D2F60(&unk_2809C0200, MEMORY[0x277CD7F78], MEMORY[0x277CD7F80]);
      sub_2752DE188();
      result = (*(v7 + 8))(v9, v6);
      break;
  }

  return result;
}

uint64_t sub_2752D1AF4()
{
  sub_2752DE528();
  sub_2752D17E0(v1);
  return sub_2752DE548();
}

uint64_t sub_2752D1B40(uint64_t a1)
{
  sub_2752DE528();
  sub_2752D17E0(v2);
  return sub_2752DE548();
}

char *sub_2752D1B7C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2752D1BBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2752D1B9C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2752D1CC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2752D1BBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C01D0, &qword_2752DF3C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2752D1CC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809C01A0, &unk_2752DF390);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

BOOL sub_2752D1DCC(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_2752DE528();
  sub_2752DE1E8();
  v8 = sub_2752DE548();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_2752DE4B8() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_2752D2174(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_2752D1F18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C01C8, &qword_2752DF3C0);
  result = sub_2752DE3B8();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_2752D22DC(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_2752DE528();
    sub_2752DE1E8();
    result = sub_2752DE548();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_2752D2174(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2752D1F18(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_2752D2498(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_2752DE528();
      sub_2752DE1E8();
      result = sub_2752DE548();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_2752DE4B8() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_2752D2340();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_2752DE4D8();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_2752D22DC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2752DF370;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_2752D2340()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C01C8, &qword_2752DF3C0);
  v2 = *v0;
  v3 = sub_2752DE3A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2752D2498(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C01C8, &qword_2752DF3C0);
  result = sub_2752DE3B8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_2752DE528();

        sub_2752DE1E8();
        result = sub_2752DE548();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2752D26CC(uint64_t a1)
{
  sub_2752DDD58();
  sub_2752D2F60(qword_2811ACDB8, MEMORY[0x277CD7CE0], MEMORY[0x277CD7CE8]);
  return sub_2752DE198() & 1;
}

BOOL sub_2752D275C(uint64_t (*a1)(char *), uint64_t a2)
{
  v29 = a1;
  v30 = a2;
  v28 = sub_2752DDD58();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v27 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2752DDD88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809C01D8, &unk_2752DF3D0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  (*(v6 + 16))(v8, v2, v5);
  v13 = MEMORY[0x277CD7DB0];
  sub_2752D2F60(&qword_2811ACDB0, MEMORY[0x277CD7DB0], MEMORY[0x277CD7DB8]);
  sub_2752DE278();
  v14 = *(v10 + 44);
  sub_2752D2F60(&unk_2811ACDA0, v13, MEMORY[0x277CD7DC0]);
  v25 = (v3 + 16);
  v26 = (v3 + 8);
  do
  {
    sub_2752DE308();
    v15 = v32[0];
    v31 = *&v12[v14];
    if (v31 == v32[0])
    {
      break;
    }

    v16 = sub_2752DE328();
    v17 = v5;
    v18 = v27;
    v19 = v28;
    (*v25)(v27);
    v16(v32, 0);
    sub_2752DE318();
    v20 = v33;
    v21 = v29(v18);
    v33 = v20;
    if (v20)
    {
      (*v26)(v18, v19);
      break;
    }

    v22 = v21;
    (*v26)(v18, v19);
    v5 = v17;
  }

  while ((v22 & 1) == 0);
  sub_2752D2EA8(v12, &unk_2809C01D8, &unk_2752DF3D0);
  return v31 != v15;
}

id sub_2752D2AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  v18 = sub_2752DE2B8();

  v19 = [a15 identifierSetWithCatalogID:a1 libraryID:a2 cloudAlbumLibraryID:a3 cloudID:a4 reportingAdamID:a5 purchasedAdamID:a6 assetAdamID:a7 deviceLocalID:a8 occurrenceID:a9 containedDeviceLocalID:a10 syncID:a11 playbackID:v18 formerIDs:a13 modelObjectType:a14 source:?];

  return v19;
}

uint64_t sub_2752D2BD4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t type metadata accessor for MusicPreferredID(uint64_t a1)
{
  result = qword_2811ACE30;
  if (!qword_2811ACE30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2752D2C4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_27();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2752D2CB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809C01B8, qword_2752DF3A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2752D2D20()
{
  result = qword_2811ACD80;
  if (!qword_2811ACD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811ACD80);
  }

  return result;
}

uint64_t sub_2752D2D7C(uint64_t a1)
{
  result = sub_2752DDE88();
  if (v2 <= 0x3F)
  {
    result = sub_2752DDA68();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2752D2E44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPreferredID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2752D2EA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_27();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2752D2F04(uint64_t a1)
{
  v2 = type metadata accessor for MusicPreferredID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2752D2F60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_9_1(uint64_t a1, uint64_t a2)
{

  return sub_2752DDA48();
}

uint64_t OUTLINED_FUNCTION_13_0(uint64_t a1)
{

  return sub_2752DE298();
}

void *OUTLINED_FUNCTION_18()
{
  v3 = *(v2 - 216);
  *v3 = v0;
  v3[1] = v1;
  return v3;
}

uint64_t OUTLINED_FUNCTION_28()
{
  v4 = *(v2 - 120);

  return sub_2752D2EA8(v4, v1, v0);
}

void OUTLINED_FUNCTION_34()
{
}

uint64_t MusicCollaborativePlaylist.UpdateInvitationModeRequest.init(playlist:updatedInvitationMode:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2752DE118();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 identifiers];
  v11 = [v10 library];

  if (v11)
  {
    [v11 persistentID];
    swift_unknownObjectRelease();
    sub_2752DDDD8();
    (*(v7 + 16))(v9, a2, v6);
    sub_2752DD7F8();

    (*(v7 + 8))(a2, v6);
    v12 = sub_2752DD808();
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v12);
  }

  else
  {
    (*(v7 + 8))(a2, v6);

    v14 = sub_2752DD808();

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v14);
  }
}

uint64_t MusicCollaborativePlaylist.ReactionRequest.init(playlist:entry:reaction:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a2;
  v43 = a4;
  v41 = a3;
  v44 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFE98, &qword_2752DEE38);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v39 - v7;
  v9 = sub_2752DE138();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v40 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEC0, &qword_2752DEE60);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v39 - v18;
  v20 = sub_2752DE148();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v39 - v27;
  v29 = a1;
  sub_2752C2F40(v29, v19);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {

    v30 = &qword_2809BFEC0;
    v31 = &qword_2752DEE60;
    v32 = v19;
  }

  else
  {
    (*(v22 + 32))(v28, v19, v20);
    v33 = v42;
    sub_2752C3194(v33, v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
    {
      v36 = *(v11 + 32);
      v42 = v33;
      v36(v16, v8, v9);
      (*(v22 + 16))(v26, v28, v20);
      (*(v11 + 16))(v40, v16, v9);
      v35 = v44;
      sub_2752DD728();

      (*(v11 + 8))(v16, v9);
      (*(v22 + 8))(v28, v20);
      v34 = 0;
      goto LABEL_7;
    }

    (*(v22 + 8))(v28, v20);

    v30 = &qword_2809BFE98;
    v31 = &qword_2752DEE38;
    v32 = v8;
  }

  sub_2752C3990(v32, v30, v31);
  v34 = 1;
  v35 = v44;
LABEL_7:
  v37 = sub_2752DD738();
  return __swift_storeEnumTagSinglePayload(v35, v34, 1, v37);
}

id sub_2752D3854()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_2752D38B0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2752D390C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_15_1(v1);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_5();
  sub_2752DDCB8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_6();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_1();
  v6 = OUTLINED_FUNCTION_73(v5, sel_identifiers);
  OUTLINED_FUNCTION_37();
  v7 = sub_2752DD658();
  OUTLINED_FUNCTION_45();
  v10 = sub_2752D9540(v8, v9, MEMORY[0x277D2A3A0]);
  OUTLINED_FUNCTION_10_1(v10);
  OUTLINED_FUNCTION_33_0();

  v11 = OUTLINED_FUNCTION_18_0();
  v12(v11);
  v13 = OUTLINED_FUNCTION_4_0();
  v14(v13);
  OUTLINED_FUNCTION_5_2();
  if (v15)
  {
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_74();

    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_72();
  }

  else
  {
    v0 = v24;
    v16 = v24;

    sub_2752DE4C8();
    sub_2752DD998();
  }

  OUTLINED_FUNCTION_45();
  sub_2752D9540(v17, v18, MEMORY[0x277D2A3A8]);
  OUTLINED_FUNCTION_2_5();

  v19 = OUTLINED_FUNCTION_17_1();
  v20(v19);
  OUTLINED_FUNCTION_27_0();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v7);
  OUTLINED_FUNCTION_22();
}

void sub_2752D3B14()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_15_1(v1);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_5();
  sub_2752DDCB8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_6();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_1();
  v6 = OUTLINED_FUNCTION_73(v5, sel_identifiers);
  OUTLINED_FUNCTION_37();
  v7 = sub_2752DD8B8();
  OUTLINED_FUNCTION_51();
  v10 = sub_2752D9540(v8, v9, MEMORY[0x277D2A730]);
  OUTLINED_FUNCTION_10_1(v10);
  OUTLINED_FUNCTION_33_0();

  v11 = OUTLINED_FUNCTION_18_0();
  v12(v11);
  v13 = OUTLINED_FUNCTION_4_0();
  v14(v13);
  OUTLINED_FUNCTION_5_2();
  if (v15)
  {
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_74();

    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_72();
  }

  else
  {
    v0 = v24;
    v16 = v24;

    sub_2752DE4C8();
    sub_2752DD998();
  }

  OUTLINED_FUNCTION_51();
  sub_2752D9540(v17, v18, MEMORY[0x277D2A738]);
  OUTLINED_FUNCTION_2_5();

  v19 = OUTLINED_FUNCTION_17_1();
  v20(v19);
  OUTLINED_FUNCTION_27_0();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v7);
  OUTLINED_FUNCTION_22();
}

void sub_2752D3D1C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_15_1(v1);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_5();
  sub_2752DDCB8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_6();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_1();
  v6 = OUTLINED_FUNCTION_73(v5, sel_identifiers);
  OUTLINED_FUNCTION_37();
  v7 = sub_2752DD8C8();
  OUTLINED_FUNCTION_50();
  v10 = sub_2752D9540(v8, v9, MEMORY[0x277D2A790]);
  OUTLINED_FUNCTION_10_1(v10);
  OUTLINED_FUNCTION_33_0();

  v11 = OUTLINED_FUNCTION_18_0();
  v12(v11);
  v13 = OUTLINED_FUNCTION_4_0();
  v14(v13);
  OUTLINED_FUNCTION_5_2();
  if (v15)
  {
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_74();

    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_72();
  }

  else
  {
    v0 = v24;
    v16 = v24;

    sub_2752DE4C8();
    sub_2752DD998();
  }

  OUTLINED_FUNCTION_50();
  sub_2752D9540(v17, v18, MEMORY[0x277D2A7A0]);
  OUTLINED_FUNCTION_2_5();

  v19 = OUTLINED_FUNCTION_17_1();
  v20(v19);
  OUTLINED_FUNCTION_27_0();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v7);
  OUTLINED_FUNCTION_22();
}

void sub_2752D3F24()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_15_1(v1);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_5();
  sub_2752DDCB8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_6();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_1();
  v6 = OUTLINED_FUNCTION_73(v5, sel_identifiers);
  OUTLINED_FUNCTION_37();
  v7 = sub_2752DD8D8();
  OUTLINED_FUNCTION_48();
  v10 = sub_2752D9540(v8, v9, MEMORY[0x277D2A948]);
  OUTLINED_FUNCTION_10_1(v10);
  OUTLINED_FUNCTION_33_0();

  v11 = OUTLINED_FUNCTION_18_0();
  v12(v11);
  v13 = OUTLINED_FUNCTION_4_0();
  v14(v13);
  OUTLINED_FUNCTION_5_2();
  if (v15)
  {
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_74();

    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_72();
  }

  else
  {
    v0 = v24;
    v16 = v24;

    sub_2752DE4C8();
    sub_2752DD998();
  }

  OUTLINED_FUNCTION_48();
  sub_2752D9540(v17, v18, MEMORY[0x277D2A950]);
  OUTLINED_FUNCTION_2_5();

  v19 = OUTLINED_FUNCTION_17_1();
  v20(v19);
  OUTLINED_FUNCTION_27_0();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v7);
  OUTLINED_FUNCTION_22();
}

void sub_2752D412C()
{
  OUTLINED_FUNCTION_23();
  v3 = OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v7 = OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_0();
  v42 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_1();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  if ([v1 curatorKind] == 4)
  {
    v41 = v0;
    v16 = [v1 identifiers];
    OUTLINED_FUNCTION_66();
    v17 = sub_2752DD8E8();
    v40 = v3;
    v18 = v17;
    OUTLINED_FUNCTION_47();
    v21 = sub_2752D9540(v19, v20, MEMORY[0x277D2AAE0]);
    OUTLINED_FUNCTION_87(v21);
    sub_2752C4D60(v2, v15);

    (*(v5 + 8))(v2, v40);
    v22 = OUTLINED_FUNCTION_70();
    v23(v22);
    OUTLINED_FUNCTION_5_2();
    if (v24)
    {
      OUTLINED_FUNCTION_19_1();
      v38 = v1;

      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_91();
    }

    else
    {
      v25 = v1;

      sub_2752DE4C8();
      sub_2752DD998();
    }

    OUTLINED_FUNCTION_47();
    sub_2752D9540(v26, v27, MEMORY[0x277D2AAE8]);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_35(v12, v28, v29);

    (*(v18 + 8))(v15, v7);
    v30 = OUTLINED_FUNCTION_21_1();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v2);
    OUTLINED_FUNCTION_22();
  }

  else
  {

    sub_2752DD8E8();
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_22();

    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  }
}

void sub_2752D43C8()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_15_1(v1);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_5();
  sub_2752DDCB8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_6();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_1();
  v6 = OUTLINED_FUNCTION_73(v5, sel_identifiers);
  OUTLINED_FUNCTION_37();
  v7 = sub_2752DD8F8();
  OUTLINED_FUNCTION_46();
  v10 = sub_2752D9540(v8, v9, MEMORY[0x277D2AB20]);
  OUTLINED_FUNCTION_10_1(v10);
  OUTLINED_FUNCTION_33_0();

  v11 = OUTLINED_FUNCTION_18_0();
  v12(v11);
  v13 = OUTLINED_FUNCTION_4_0();
  v14(v13);
  OUTLINED_FUNCTION_5_2();
  if (v15)
  {
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_74();

    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_72();
  }

  else
  {
    v0 = v24;
    v16 = v24;

    sub_2752DE4C8();
    sub_2752DD998();
  }

  OUTLINED_FUNCTION_46();
  sub_2752D9540(v17, v18, MEMORY[0x277D2AB30]);
  OUTLINED_FUNCTION_2_5();

  v19 = OUTLINED_FUNCTION_17_1();
  v20(v19);
  OUTLINED_FUNCTION_27_0();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v7);
  OUTLINED_FUNCTION_22();
}

void sub_2752D45D0()
{
  OUTLINED_FUNCTION_23();
  v3 = OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  sub_2752DDCB8();
  OUTLINED_FUNCTION_0();
  v34 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_1();
  if (([v0 hasVideo] & 1) != 0 || (objc_msgSend(v0, sel_isArtistUploadedContent) & 1) == 0)
  {

    sub_2752DD908();
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_22();

    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  }

  else
  {
    v13 = [v0 identifiers];
    OUTLINED_FUNCTION_37();
    v14 = sub_2752DD908();
    OUTLINED_FUNCTION_44();
    v17 = sub_2752D9540(v15, v16, MEMORY[0x277D2AB80]);
    OUTLINED_FUNCTION_80(v17);
    sub_2752C4D60(v9, v2);

    (*(v5 + 8))(v9, v3);
    v18 = OUTLINED_FUNCTION_25_0();
    v19(v18);
    OUTLINED_FUNCTION_5_2();
    if (v20)
    {
      OUTLINED_FUNCTION_89();
      v32 = v0;

      sub_2752DE478();
      OUTLINED_FUNCTION_91();
    }

    else
    {
      v21 = v0;

      sub_2752DE4C8();
      sub_2752DD998();
    }

    OUTLINED_FUNCTION_44();
    sub_2752D9540(v22, v23, MEMORY[0x277D2AB90]);
    OUTLINED_FUNCTION_7_2();
    sub_2752DE028();

    (*(v34 + 8))(v2, v14);
    v24 = OUTLINED_FUNCTION_21_1();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v33);
    OUTLINED_FUNCTION_22();
  }
}

void sub_2752D4894()
{
  OUTLINED_FUNCTION_23();
  v3 = OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  sub_2752DDCB8();
  OUTLINED_FUNCTION_0();
  v34 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_8_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_1();
  if ([v0 hasVideo] && (objc_msgSend(v0, sel_isArtistUploadedContent) & 1) != 0)
  {
    v13 = [v0 identifiers];
    OUTLINED_FUNCTION_37();
    v14 = sub_2752DD918();
    OUTLINED_FUNCTION_42();
    v17 = sub_2752D9540(v15, v16, MEMORY[0x277D2ABD0]);
    OUTLINED_FUNCTION_80(v17);
    sub_2752C4D60(v9, v2);

    (*(v5 + 8))(v9, v3);
    v18 = OUTLINED_FUNCTION_25_0();
    v19(v18);
    OUTLINED_FUNCTION_5_2();
    if (v20)
    {
      OUTLINED_FUNCTION_89();
      v32 = v0;

      sub_2752DE478();
      OUTLINED_FUNCTION_91();
    }

    else
    {
      v21 = v0;

      sub_2752DE4C8();
      sub_2752DD998();
    }

    OUTLINED_FUNCTION_42();
    sub_2752D9540(v22, v23, MEMORY[0x277D2ABE0]);
    OUTLINED_FUNCTION_7_2();
    sub_2752DE028();

    (*(v34 + 8))(v2, v14);
    v24 = OUTLINED_FUNCTION_21_1();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v33);
    OUTLINED_FUNCTION_22();
  }

  else
  {

    sub_2752DD918();
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_22();

    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  }
}

void sub_2752D4B58()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_15_1(v1);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_5();
  sub_2752DDCB8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_6();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_1();
  v6 = OUTLINED_FUNCTION_73(v5, sel_identifiers);
  OUTLINED_FUNCTION_37();
  v7 = sub_2752DD928();
  OUTLINED_FUNCTION_41();
  v10 = sub_2752D9540(v8, v9, MEMORY[0x277D2ACC8]);
  OUTLINED_FUNCTION_10_1(v10);
  OUTLINED_FUNCTION_33_0();

  v11 = OUTLINED_FUNCTION_18_0();
  v12(v11);
  v13 = OUTLINED_FUNCTION_4_0();
  v14(v13);
  OUTLINED_FUNCTION_5_2();
  if (v15)
  {
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_74();

    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_72();
  }

  else
  {
    v0 = v24;
    v16 = v24;

    sub_2752DE4C8();
    sub_2752DD998();
  }

  OUTLINED_FUNCTION_41();
  sub_2752D9540(v17, v18, MEMORY[0x277D2ACD8]);
  OUTLINED_FUNCTION_2_5();

  v19 = OUTLINED_FUNCTION_17_1();
  v20(v19);
  OUTLINED_FUNCTION_27_0();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v7);
  OUTLINED_FUNCTION_22();
}

void sub_2752D4D60()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_15_1(v1);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_5();
  sub_2752DDCB8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_6();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_1();
  v6 = OUTLINED_FUNCTION_73(v5, sel_identifiers);
  OUTLINED_FUNCTION_37();
  v7 = sub_2752DD938();
  OUTLINED_FUNCTION_40();
  v10 = sub_2752D9540(v8, v9, MEMORY[0x277D2AD18]);
  OUTLINED_FUNCTION_10_1(v10);
  OUTLINED_FUNCTION_33_0();

  v11 = OUTLINED_FUNCTION_18_0();
  v12(v11);
  v13 = OUTLINED_FUNCTION_4_0();
  v14(v13);
  OUTLINED_FUNCTION_5_2();
  if (v15)
  {
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_74();

    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_72();
  }

  else
  {
    v0 = v24;
    v16 = v24;

    sub_2752DE4C8();
    sub_2752DD998();
  }

  OUTLINED_FUNCTION_40();
  sub_2752D9540(v17, v18, MEMORY[0x277D2AD28]);
  OUTLINED_FUNCTION_2_5();

  v19 = OUTLINED_FUNCTION_17_1();
  v20(v19);
  OUTLINED_FUNCTION_27_0();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v7);
  OUTLINED_FUNCTION_22();
}

void sub_2752D4F68()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_15_1(v1);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_5();
  sub_2752DDCB8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_6();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_1();
  v6 = OUTLINED_FUNCTION_73(v5, sel_identifiers);
  OUTLINED_FUNCTION_37();
  v7 = sub_2752DD948();
  OUTLINED_FUNCTION_39();
  v10 = sub_2752D9540(v8, v9, MEMORY[0x277D2AD60]);
  OUTLINED_FUNCTION_10_1(v10);
  OUTLINED_FUNCTION_33_0();

  v11 = OUTLINED_FUNCTION_18_0();
  v12(v11);
  v13 = OUTLINED_FUNCTION_4_0();
  v14(v13);
  OUTLINED_FUNCTION_5_2();
  if (v15)
  {
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_74();

    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_72();
  }

  else
  {
    v0 = v24;
    v16 = v24;

    sub_2752DE4C8();
    sub_2752DD998();
  }

  OUTLINED_FUNCTION_39();
  sub_2752D9540(v17, v18, MEMORY[0x277D2AD70]);
  OUTLINED_FUNCTION_2_5();

  v19 = OUTLINED_FUNCTION_17_1();
  v20(v19);
  OUTLINED_FUNCTION_27_0();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v7);
  OUTLINED_FUNCTION_22();
}

void sub_2752D5170()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_15_1(v1);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_5();
  sub_2752DDCB8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_6();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_1();
  v6 = OUTLINED_FUNCTION_73(v5, sel_identifiers);
  OUTLINED_FUNCTION_37();
  v7 = sub_2752DD958();
  OUTLINED_FUNCTION_38();
  v10 = sub_2752D9540(v8, v9, MEMORY[0x277D2ADC0]);
  OUTLINED_FUNCTION_10_1(v10);
  OUTLINED_FUNCTION_33_0();

  v11 = OUTLINED_FUNCTION_18_0();
  v12(v11);
  v13 = OUTLINED_FUNCTION_4_0();
  v14(v13);
  OUTLINED_FUNCTION_5_2();
  if (v15)
  {
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_74();

    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_72();
  }

  else
  {
    v0 = v24;
    v16 = v24;

    sub_2752DE4C8();
    sub_2752DD998();
  }

  OUTLINED_FUNCTION_38();
  sub_2752D9540(v17, v18, MEMORY[0x277D2ADD0]);
  OUTLINED_FUNCTION_2_5();

  v19 = OUTLINED_FUNCTION_17_1();
  v20(v19);
  OUTLINED_FUNCTION_27_0();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v7);
  OUTLINED_FUNCTION_22();
}

void sub_2752D5378()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  v5 = v4;
  sub_2752DDD38();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v7 = OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_0();
  v28 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_1();
  if ([v5 hasVideo] && !objc_msgSend(v5, sel_isArtistUploadedContent))
  {
    v16 = [v5 identifiers];
    v17 = sub_2752DDDA8();
    OUTLINED_FUNCTION_90(v17, MEMORY[0x277CD7E28]);
    sub_2752C4D60(v0, v1);

    v18 = OUTLINED_FUNCTION_71();
    v19(v18);
    v20 = OUTLINED_FUNCTION_25_0();
    v21(v20);
    OUTLINED_FUNCTION_12_1();
    if (v3 >> 62)
    {
      sub_2752DD998();
      v26 = v5;

      sub_2752DE478();
      OUTLINED_FUNCTION_92();
    }

    else
    {
      v22 = v5;

      sub_2752DE4C8();
      sub_2752DD998();
    }

    OUTLINED_FUNCTION_7_2();
    sub_2752DE028();

    (*(v28 + 8))(v1, v7);
    v23 = OUTLINED_FUNCTION_21_1();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v27);
    OUTLINED_FUNCTION_22();
  }

  else
  {

    sub_2752DDDA8();
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_22();

    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }
}

void sub_2752D5638()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_1();
  if ([v1 hasVideo])
  {

    sub_2752DE048();
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_22();

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    v12 = [v1 identifiers];
    OUTLINED_FUNCTION_66();
    v13 = sub_2752DE048();
    OUTLINED_FUNCTION_90(v13, MEMORY[0x277CD8208]);
    OUTLINED_FUNCTION_79();

    v14 = OUTLINED_FUNCTION_71();
    v15(v14);
    v16 = OUTLINED_FUNCTION_24_1();
    v17(v16);
    OUTLINED_FUNCTION_12_1();
    if (v3 >> 62)
    {
      OUTLINED_FUNCTION_68();
      v24 = v1;

      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_92();
    }

    else
    {
      v18 = v1;

      sub_2752DE4C8();
      sub_2752DD998();
    }

    OUTLINED_FUNCTION_7_2();
    sub_2752DE028();

    v19 = OUTLINED_FUNCTION_75();
    v20(v19);
    v21 = OUTLINED_FUNCTION_21_1();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v25);
    OUTLINED_FUNCTION_22();
  }
}

void sub_2752D590C()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_1();
  if ([v1 curatorSubKind] == 1)
  {
    v7 = [v1 identifiers];
    OUTLINED_FUNCTION_66();
    v8 = sub_2752DE0E8();
    OUTLINED_FUNCTION_90(v8, MEMORY[0x277CD8498]);
    OUTLINED_FUNCTION_79();

    v9 = OUTLINED_FUNCTION_71();
    v10(v9);
    v11 = OUTLINED_FUNCTION_24_1();
    v12(v11);
    OUTLINED_FUNCTION_12_1();
    if (v3 >> 62)
    {
      OUTLINED_FUNCTION_68();
      v24 = v1;

      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_92();
    }

    else
    {
      v13 = v1;

      sub_2752DE4C8();
      sub_2752DD998();
    }

    OUTLINED_FUNCTION_7_2();
    sub_2752DE028();

    v14 = OUTLINED_FUNCTION_75();
    v15(v14);
    v16 = OUTLINED_FUNCTION_21_1();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v25);
    OUTLINED_FUNCTION_22();
  }

  else
  {

    sub_2752DE0E8();
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_22();

    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  }
}

void sub_2752D5B94()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_15_1(v1);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_5();
  sub_2752DDCB8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_6();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_1();
  v6 = OUTLINED_FUNCTION_73(v5, sel_identifiers);
  OUTLINED_FUNCTION_37();
  v7 = sub_2752DE108();
  OUTLINED_FUNCTION_52();
  v10 = sub_2752D9540(v8, v9, MEMORY[0x277D2B2F0]);
  OUTLINED_FUNCTION_10_1(v10);
  OUTLINED_FUNCTION_33_0();

  v11 = OUTLINED_FUNCTION_18_0();
  v12(v11);
  v13 = OUTLINED_FUNCTION_4_0();
  v14(v13);
  OUTLINED_FUNCTION_5_2();
  if (v15)
  {
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_74();

    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_72();
  }

  else
  {
    v0 = v24;
    v16 = v24;

    sub_2752DE4C8();
    sub_2752DD998();
  }

  OUTLINED_FUNCTION_52();
  sub_2752D9540(v17, v18, MEMORY[0x277D2B2F8]);
  OUTLINED_FUNCTION_2_5();

  v19 = OUTLINED_FUNCTION_17_1();
  v20(v19);
  OUTLINED_FUNCTION_27_0();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v7);
  OUTLINED_FUNCTION_22();
}

void sub_2752D5D9C()
{
  OUTLINED_FUNCTION_23();
  v3 = OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v7 = OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_0();
  v42 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_1();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  if ([v1 type] == 3)
  {
    v41 = v0;
    v16 = [v1 identifiers];
    OUTLINED_FUNCTION_66();
    v17 = sub_2752DE128();
    v40 = v3;
    v18 = v17;
    OUTLINED_FUNCTION_49();
    v21 = sub_2752D9540(v19, v20, MEMORY[0x277D2B380]);
    OUTLINED_FUNCTION_87(v21);
    sub_2752C4D60(v2, v15);

    (*(v5 + 8))(v2, v40);
    v22 = OUTLINED_FUNCTION_70();
    v23(v22);
    OUTLINED_FUNCTION_5_2();
    if (v24)
    {
      OUTLINED_FUNCTION_19_1();
      v38 = v1;

      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_91();
    }

    else
    {
      v25 = v1;

      sub_2752DE4C8();
      sub_2752DD998();
    }

    OUTLINED_FUNCTION_49();
    sub_2752D9540(v26, v27, MEMORY[0x277D2B398]);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_35(v12, v28, v29);

    (*(v18 + 8))(v15, v7);
    v30 = OUTLINED_FUNCTION_21_1();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v2);
    OUTLINED_FUNCTION_22();
  }

  else
  {

    sub_2752DE128();
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_22();

    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  }
}

void sub_2752D6060()
{
  OUTLINED_FUNCTION_23();
  v34 = v1;
  v35 = v2;
  v31 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_66();
  v32 = sub_2752DDD38();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v11 = v10 - v9;
  v12 = sub_2752DDCB8();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_6();
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  v33 = v0;
  v19 = [v0 identifiers];
  v20 = OUTLINED_FUNCTION_66();
  v21 = v5(v20);
  sub_2752DDD68();
  sub_2752C4D60(v11, v18);

  (*(v7 + 8))(v11, v32);
  v22 = OUTLINED_FUNCTION_60();
  v23(v22);
  OUTLINED_FUNCTION_5_2();
  if (v24)
  {
    OUTLINED_FUNCTION_19_1();
    v25 = v33;
    v30 = v33;

    OUTLINED_FUNCTION_67();
    OUTLINED_FUNCTION_72();
  }

  else
  {
    v25 = v33;
    v26 = v33;

    sub_2752DE4C8();
    sub_2752DD998();
  }

  sub_2752DE028();

  (*(v14 + 8))(v18, v12);
  OUTLINED_FUNCTION_27_0();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v21);
  OUTLINED_FUNCTION_22();
}

void sub_2752D62A8()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_1();
  if ([v1 curatorSubKind] == 3)
  {
    v7 = [v1 identifiers];
    OUTLINED_FUNCTION_66();
    v8 = sub_2752DE158();
    OUTLINED_FUNCTION_90(v8, MEMORY[0x277CD8640]);
    OUTLINED_FUNCTION_79();

    v9 = OUTLINED_FUNCTION_71();
    v10(v9);
    v11 = OUTLINED_FUNCTION_24_1();
    v12(v11);
    OUTLINED_FUNCTION_12_1();
    if (v3 >> 62)
    {
      OUTLINED_FUNCTION_68();
      v24 = v1;

      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_92();
    }

    else
    {
      v13 = v1;

      sub_2752DE4C8();
      sub_2752DD998();
    }

    OUTLINED_FUNCTION_7_2();
    sub_2752DE028();

    v14 = OUTLINED_FUNCTION_75();
    v15(v14);
    v16 = OUTLINED_FUNCTION_21_1();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v25);
    OUTLINED_FUNCTION_22();
  }

  else
  {

    sub_2752DE158();
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_22();

    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  }
}

uint64_t sub_2752D64E0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2752DDD38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2752DDCB8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  if ([a1 hasVideo] && (objc_msgSend(a1, sel_isArtistUploadedContent) & 1) != 0)
  {
    v34 = a3;
    v17 = sub_2752DD918();
    v32 = v14;
    v18 = v17;
    v19 = [a1 identifiers];
    sub_2752D9540(&qword_2809C0268, MEMORY[0x277D2ABF0], MEMORY[0x277D2ABD0]);
    v31 = a2;
    v33 = v18;
    v20 = v32;
    sub_2752DDD68();
    sub_2752C4D60(v9, v16);

    (*(v7 + 8))(v9, v6);
    v21 = v11;
    v22 = *(v11 + 16);
    v23 = v10;
    v24 = v31;
    v22(v20, v16, v10);
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    if (v24 >> 62)
    {
      sub_2752DD998();
      v30 = a1;

      sub_2752DE478();
    }

    else
    {
      v25 = a1;

      sub_2752DE4C8();
      sub_2752DD998();
    }

    sub_2752D9540(&qword_2809C0270, MEMORY[0x277D2ABF0], MEMORY[0x277D2ABE0]);
    v26 = v34;
    v27 = v33;
    sub_2752DE028();

    (*(v21 + 8))(v16, v23);
    return __swift_storeEnumTagSinglePayload(v26, 0, 1, v27);
  }

  else
  {

    v29 = sub_2752DD918();

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v29);
  }
}

uint64_t sub_2752D68A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2752DDD38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2752DDCB8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  if ([a1 hasVideo] && !objc_msgSend(a1, sel_isArtistUploadedContent))
  {
    v31 = a3;
    v19 = sub_2752DDDA8();
    v29 = a2;
    v20 = v7;
    v21 = v19;
    v22 = [a1 identifiers];
    v30 = v21;
    sub_2752DDD68();
    sub_2752C4D60(v9, v16);

    (*(v20 + 8))(v9, v6);
    v23 = v29;
    (*(v11 + 16))(v14, v16, v10);
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    if (v23 >> 62)
    {
      sub_2752DD998();
      v27 = a1;

      sub_2752DE478();
    }

    else
    {
      v24 = a1;

      sub_2752DE4C8();
      sub_2752DD998();
    }

    v25 = v31;
    v26 = v30;
    sub_2752DE028();

    (*(v11 + 8))(v16, v10);
    return __swift_storeEnumTagSinglePayload(v25, 0, 1, v26);
  }

  else
  {

    v17 = sub_2752DDDA8();

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v17);
  }
}

uint64_t sub_2752D6C04@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2752DDD38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2752DDCB8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - v15;
  if (([a1 hasVideo] & 1) != 0 || (objc_msgSend(a1, sel_isArtistUploadedContent) & 1) == 0)
  {

    v29 = sub_2752DD908();

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v29);
  }

  else
  {
    v34 = a3;
    v17 = sub_2752DD908();
    v32 = v14;
    v18 = v17;
    v19 = [a1 identifiers];
    sub_2752D9540(&qword_2809C02E8, MEMORY[0x277D2AB98], MEMORY[0x277D2AB80]);
    v31 = a2;
    v33 = v18;
    v20 = v32;
    sub_2752DDD68();
    sub_2752C4D60(v9, v16);

    (*(v7 + 8))(v9, v6);
    v21 = v11;
    v22 = *(v11 + 16);
    v23 = v10;
    v24 = v31;
    v22(v20, v16, v10);
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    if (v24 >> 62)
    {
      sub_2752DD998();
      v30 = a1;

      sub_2752DE478();
    }

    else
    {
      v25 = a1;

      sub_2752DE4C8();
      sub_2752DD998();
    }

    sub_2752D9540(&qword_2809C02F0, MEMORY[0x277D2AB98], MEMORY[0x277D2AB90]);
    v26 = v34;
    v27 = v33;
    sub_2752DE028();

    (*(v21 + 8))(v16, v23);
    return __swift_storeEnumTagSinglePayload(v26, 0, 1, v27);
  }
}

uint64_t sub_2752D6FCC@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v5 = sub_2752DDD38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2752DDCB8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  if ([a1 hasVideo])
  {

    v16 = sub_2752DE048();

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v16);
  }

  else
  {
    v26 = a3;
    v18 = sub_2752DE048();
    v19 = [a1 identifiers];
    v25 = v18;
    sub_2752DDD68();
    sub_2752C4D60(v8, v15);

    (*(v6 + 8))(v8, v5);
    (*(v10 + 16))(v13, v15, v9);
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    if (v27 >> 62)
    {
      sub_2752DD998();
      v23 = a1;

      sub_2752DE478();
    }

    else
    {
      v20 = a1;

      sub_2752DE4C8();
      sub_2752DD998();
    }

    v21 = v26;
    v22 = v25;
    sub_2752DE028();

    (*(v10 + 8))(v15, v9);
    return __swift_storeEnumTagSinglePayload(v21, 0, 1, v22);
  }
}

void GenericMusicItem.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_23();
  v464 = v21;
  v465 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEF8, &qword_2752DEE98);
  OUTLINED_FUNCTION_3(v23);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_0(v25);
  v403 = sub_2752DD928();
  OUTLINED_FUNCTION_0();
  v400 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_23_1(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEE0, &qword_2752DEE80);
  OUTLINED_FUNCTION_3(v29);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_0(v31);
  v412 = sub_2752DD948();
  OUTLINED_FUNCTION_0();
  v402 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_23_1(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEB8, &qword_2752DEE58);
  OUTLINED_FUNCTION_3(v35);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_0(v37);
  v418 = sub_2752DD958();
  OUTLINED_FUNCTION_0();
  v410 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_23_1(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFD98, &qword_2752DEDF8);
  OUTLINED_FUNCTION_3(v41);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_0(v43);
  v419 = sub_2752DE048();
  OUTLINED_FUNCTION_0();
  v411 = v44;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_23_1(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFED8, &qword_2752DEE78);
  OUTLINED_FUNCTION_3(v47);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_0(v49);
  v414 = sub_2752DD908();
  OUTLINED_FUNCTION_0();
  v408 = v50;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_23_1(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809BFDA0, &qword_2752DEE00);
  OUTLINED_FUNCTION_3(v53);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_0(v55);
  v417 = sub_2752DDDA8();
  OUTLINED_FUNCTION_0();
  v409 = v56;
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_23_1(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFE80, &qword_2752DEE20);
  OUTLINED_FUNCTION_3(v59);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_0(v61);
  v413 = sub_2752DD918();
  OUTLINED_FUNCTION_0();
  v406 = v62;
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_23_1(v64);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFF10, &qword_2752DEEB0);
  OUTLINED_FUNCTION_3(v65);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_0(v67);
  v422 = sub_2752DE0F8();
  OUTLINED_FUNCTION_0();
  v420 = v68;
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_23_1(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFE78, &unk_2752DF0B0);
  OUTLINED_FUNCTION_3(v71);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_0(v73);
  v425 = sub_2752DD8F8();
  OUTLINED_FUNCTION_0();
  v421[1] = v74;
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_23_1(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEF0, &qword_2752DEE90);
  OUTLINED_FUNCTION_3(v77);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_0(v79);
  v427 = sub_2752DDE98();
  OUTLINED_FUNCTION_0();
  v424 = v80;
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_23_1(v82);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEC0, &qword_2752DEE60);
  OUTLINED_FUNCTION_3(v83);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_0(v85);
  v433 = sub_2752DE148();
  OUTLINED_FUNCTION_0();
  v429 = v86;
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_23_1(v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEB0, &qword_2752DEE50);
  OUTLINED_FUNCTION_3(v89);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_0(v91);
  v442 = sub_2752DD8C8();
  OUTLINED_FUNCTION_0();
  v438 = v92;
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_12_0(v94);
  v452 = sub_2752DDD38();
  OUTLINED_FUNCTION_0();
  v451 = v95;
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_12_0(v97);
  sub_2752DDCB8();
  OUTLINED_FUNCTION_0();
  v455 = v99;
  v456 = v98;
  MEMORY[0x28223BE20](v98);
  OUTLINED_FUNCTION_1_1();
  v453 = v100 - v101;
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_19_0();
  v454 = v103;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFED0, &qword_2752DEE70);
  OUTLINED_FUNCTION_3(v104);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_0(v106);
  v445 = sub_2752DD8E8();
  OUTLINED_FUNCTION_0();
  v441 = v107;
  MEMORY[0x28223BE20](v108);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_23_1(v109);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0210, &qword_2752DF500);
  OUTLINED_FUNCTION_3(v110);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_0(v112);
  sub_2752DE088();
  OUTLINED_FUNCTION_0();
  v457 = v114;
  v458 = v113;
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v116);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_23_1(v118);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEE8, &qword_2752DEE88);
  OUTLINED_FUNCTION_3(v119);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_12_0(v121);
  v436 = sub_2752DE158();
  OUTLINED_FUNCTION_0();
  v432 = v122;
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_23_1(v124);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFE90, &qword_2752DEE30);
  v126 = OUTLINED_FUNCTION_3(v125);
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_12_0(v128);
  v446 = sub_2752DE0E8();
  OUTLINED_FUNCTION_0();
  v459 = v129;
  MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_23_1(v132);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFF00, &qword_2752DEEA0);
  OUTLINED_FUNCTION_3(v133);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_6();
  v463 = v135;
  v462 = sub_2752DD8D8();
  OUTLINED_FUNCTION_0();
  v460 = v136;
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_1();
  v140 = (v139 - v138);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFEC8, &qword_2752DEE68);
  OUTLINED_FUNCTION_3(v141);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v142);
  v144 = &v396 - v143;
  v145 = sub_2752DE0A8();
  OUTLINED_FUNCTION_0();
  v461 = v146;
  MEMORY[0x28223BE20](v147);
  OUTLINED_FUNCTION_3_5();
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BFF08, &qword_2752DEEA8);
  OUTLINED_FUNCTION_3(v148);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v149);
  v151 = &v396 - v150;
  v152 = sub_2752DE058();
  OUTLINED_FUNCTION_0();
  v154 = v153;
  MEMORY[0x28223BE20](v155);
  OUTLINED_FUNCTION_1();
  v158 = (v157 - v156);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0218, &qword_2752DF508);
  v160 = OUTLINED_FUNCTION_3(v159);
  MEMORY[0x28223BE20](v160);
  OUTLINED_FUNCTION_1_1();
  v466 = v161 - v162;
  v164 = MEMORY[0x28223BE20](v163);
  v166 = &v396 - v165;
  MEMORY[0x28223BE20](v164);
  v168 = &v396 - v167;
  v467 = sub_2752DD658();
  v468 = v168;
  v169 = v168;
  v170 = v464;
  __swift_storeEnumTagSinglePayload(v169, 1, 1, v467);
  v171 = objc_opt_self();
  v172 = OUTLINED_FUNCTION_82(v171);
  if (v172)
  {
    v173 = [v172 innerObject];
    if (v173)
    {
      GenericMusicItem.init(_:)(v173, v174, v175, v176, v177, v178, v179, v180, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407);

      OUTLINED_FUNCTION_69(v181, &qword_2809C0218, &qword_2752DF508);
      v182 = OUTLINED_FUNCTION_71();
      sub_2752D94CC(v182, v183);
LABEL_4:
      v184 = v465;
      v185 = v467;
LABEL_5:
      v186 = v466;
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v398 = v154;
  v397 = v20;
  v154 = v462;
  v187 = v463;
  v188 = objc_opt_self();
  v189 = OUTLINED_FUNCTION_82(v188);
  if (v189)
  {
    v190 = [v189 flattenedGenericObject];
    v154 = v468;
    if (!v190)
    {

      goto LABEL_4;
    }

    v191 = v190;
    v192 = v170;
    v193 = [v190 anyObject];

    v186 = v466;
    if (v193)
    {
      GenericMusicItem.init(_:)(v193, v194, v195, v196, v197, v198, v199, v200, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407);

      sub_2752C3990(v154, &qword_2809C0218, &qword_2752DF508);
      v201 = OUTLINED_FUNCTION_71();
      sub_2752D94CC(v201, v202);
    }

    else
    {
    }

    goto LABEL_17;
  }

  v203 = objc_opt_self();
  v204 = OUTLINED_FUNCTION_82(v203);
  if (v204)
  {
    sub_2752C34DC(v204, v151);
    v205 = OUTLINED_FUNCTION_54(v151, 1, v152);
    if (!v206)
    {
      OUTLINED_FUNCTION_69(v205, &qword_2809C0218, &qword_2752DF508);
      v213 = *(v398 + 32);
      v213(v158, v151, v152);
      v213(v154, v158, v152);
LABEL_66:
      v185 = v467;
      OUTLINED_FUNCTION_77();
      (*(v284 + 104))(v154);
      OUTLINED_FUNCTION_27_0();
      __swift_storeEnumTagSinglePayload(v285, v286, v287, v185);
      v184 = v465;
      goto LABEL_5;
    }

    v207 = &qword_2809BFF08;
    v208 = &qword_2752DEEA8;
    v209 = v151;
    goto LABEL_26;
  }

  v210 = objc_opt_self();
  v211 = OUTLINED_FUNCTION_82(v210);
  if (v211)
  {
    sub_2752C3518(v211, v144);
    v212 = OUTLINED_FUNCTION_54(v144, 1, v145);
    if (!v206)
    {
      OUTLINED_FUNCTION_69(v212, &qword_2809C0218, &qword_2752DF508);
      v222 = *(v461 + 32);
      v223 = OUTLINED_FUNCTION_55(v421);
      v222(v223, v144, v145);
      v222(v154, v166, v145);
      goto LABEL_66;
    }

    v207 = &qword_2809BFEC8;
    v208 = &qword_2752DEE68;
    v209 = v144;
LABEL_26:
    sub_2752C3990(v209, v207, v208);
LABEL_27:
    v184 = v465;
    v186 = v466;
    v185 = v467;
    v154 = v468;
    goto LABEL_28;
  }

  v214 = objc_opt_self();
  v215 = OUTLINED_FUNCTION_82(v214);
  if (v215)
  {
    v216 = v187;
    sub_2752C3554(v215, v187);
    v217 = OUTLINED_FUNCTION_43();
    v219 = OUTLINED_FUNCTION_54(v217, v218, v154);
    if (!v206)
    {
      OUTLINED_FUNCTION_69(v219, &qword_2809C0218, &qword_2752DF508);
      v238 = *(v460 + 32);
      v238(v140, v216, v154);
      v238(v154, v140, v154);
      goto LABEL_66;
    }

    v207 = &qword_2809BFF00;
    v208 = &qword_2752DEEA0;
    v209 = v187;
    goto LABEL_26;
  }

  v224 = v170;
  v225 = objc_opt_self();
  v226 = OUTLINED_FUNCTION_83(v225);
  if (v226)
  {
    v227 = v226;
    v228 = v170;
    v229 = [v227 curatorKind];
    v154 = v468;
    if (v229 == 4)
    {
      OUTLINED_FUNCTION_65();
      sub_2752C3608(v227, v259);

      OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_54(v260, v261, v262);
      v186 = v466;
      if (!v206)
      {
        sub_2752C3990(v154, &qword_2809C0218, &qword_2752DF508);
        v274 = *(v441 + 32);
        v275 = OUTLINED_FUNCTION_59(&v470);
        v274(v275);
        v276 = OUTLINED_FUNCTION_34_0();
        v274(v276);
        goto LABEL_62;
      }

      v236 = &qword_2809BFED0;
      v237 = &qword_2752DEE70;
    }

    else
    {
      v186 = v466;
      if (v229 == 2)
      {
        v253 = v444;
        sub_2752C3590(v227, v444);

        OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_54(v254, v255, v256);
        v257 = v459;
        if (!v206)
        {
          sub_2752C3990(v154, &qword_2809C0218, &qword_2752DF508);
          v271 = *(v257 + 32);
          v272 = OUTLINED_FUNCTION_84(&v469);
          v271(v272);
          v273 = OUTLINED_FUNCTION_34_0();
          v271(v273);
          goto LABEL_62;
        }

        v236 = &qword_2809BFE90;
        v237 = &qword_2752DEE30;
        goto LABEL_52;
      }

      v166 = v224;
      v230 = v459;
      if (v229 != 1)
      {
LABEL_47:

LABEL_48:
        v184 = v465;
        v185 = v467;
        goto LABEL_31;
      }

      v231 = [v227 curatorSubKind];
      if (v231 != 3)
      {
        if (v231 != 2)
        {
          if (v231 == 1)
          {
            OUTLINED_FUNCTION_65();
            sub_2752C3590(v227, v232);

            OUTLINED_FUNCTION_63();
            OUTLINED_FUNCTION_36();
            OUTLINED_FUNCTION_54(v233, v234, v235);
            if (!v206)
            {
              sub_2752C3990(v154, &qword_2809C0218, &qword_2752DF508);
              v311 = *(v230 + 32);
              v312 = OUTLINED_FUNCTION_59(&v458);
              v311(v312);
              v313 = OUTLINED_FUNCTION_34_0();
              v311(v313);
LABEL_62:
              v185 = v467;
              goto LABEL_86;
            }

            v236 = &qword_2809BFE90;
            v237 = &qword_2752DEE30;
            goto LABEL_56;
          }

          goto LABEL_47;
        }

        v253 = v437;
        Genre.init(_:)(v227, v437);

        OUTLINED_FUNCTION_54(v253, 1, v458);
        if (!v206)
        {
          sub_2752C3990(v154, &qword_2809C0218, &qword_2752DF508);
          v305 = *(v457 + 32);
          v306 = OUTLINED_FUNCTION_84(&v461);
          v305(v306);
          v307 = OUTLINED_FUNCTION_34_0();
          v305(v307);
          goto LABEL_62;
        }

        v236 = &qword_2809C0210;
        v237 = &qword_2752DF500;
LABEL_52:
        v258 = v253;
LABEL_57:
        sub_2752C3990(v258, v236, v237);
LABEL_17:
        v184 = v465;
        v185 = v467;
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_65();
      sub_2752C35CC(v227, v296);

      OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_54(v297, v298, v299);
      if (!v206)
      {
        sub_2752C3990(v154, &qword_2809C0218, &qword_2752DF508);
        v308 = *(v432 + 32);
        v309 = OUTLINED_FUNCTION_59(&v459);
        v308(v309);
        v310 = OUTLINED_FUNCTION_34_0();
        v308(v310);
        goto LABEL_62;
      }

      v236 = &qword_2809BFEE8;
      v237 = &qword_2752DEE88;
    }

LABEL_56:
    v258 = v166;
    goto LABEL_57;
  }

  v239 = objc_opt_self();
  v240 = OUTLINED_FUNCTION_83(v239);
  v154 = v468;
  if (v240)
  {
    v241 = v240;
    v242 = [v240 identifiers];
    OUTLINED_FUNCTION_65();
    sub_2752DDD18();
    v243 = v454;
    sub_2752C4D60(v166, v454);

    (*(v451 + 8))(v166, v452);
    objc_opt_self();
    v244 = swift_dynamicCastObjCClass();
    v246 = v456;
    v245 = v457;
    v247 = v455;
    if (v244)
    {
      v248 = v244;
      v249 = v241;
      if ([v248 curatorSubKind] == 2)
      {
        v250 = OUTLINED_FUNCTION_60();
        v251(v250);
        OUTLINED_FUNCTION_12_1();
        v252 = v447;
        sub_2752DE068();

LABEL_65:
        (*(v247 + 8))(v243, v246);
        v279 = *(v245 + 32);
        v280 = v449;
        v281 = v252;
        v282 = v458;
        v279(v449, v281, v458);
        sub_2752C3990(v154, &qword_2809C0218, &qword_2752DF508);
        v283 = v448;
        v279(v448, v280, v282);
        v279(v154, v283, v282);
        goto LABEL_66;
      }
    }

    v277 = OUTLINED_FUNCTION_60();
    v278(v277);
    v252 = v447;
    sub_2752DE078();
    goto LABEL_65;
  }

  v263 = objc_opt_self();
  v264 = OUTLINED_FUNCTION_83(v263);
  v186 = v466;
  v185 = v467;
  if (v264)
  {
    OUTLINED_FUNCTION_65();
    sub_2752C3644(v265, v266);
    v267 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_54(v267, v268, v442);
    if (!v206)
    {
      sub_2752C3990(v154, &qword_2809C0218, &qword_2752DF508);
      v293 = *(v438 + 32);
      v294 = OUTLINED_FUNCTION_57(&v468);
      v293(v294);
      v295 = OUTLINED_FUNCTION_76();
      v293(v295);
LABEL_86:
      OUTLINED_FUNCTION_77();
      (*(v326 + 104))(v154);
      OUTLINED_FUNCTION_27_0();
      __swift_storeEnumTagSinglePayload(v327, v328, v329, v185);
      goto LABEL_87;
    }

    v269 = &qword_2809BFEB0;
    v270 = &qword_2752DEE50;
  }

  else
  {
    v288 = objc_opt_self();
    if (OUTLINED_FUNCTION_83(v288))
    {
      OUTLINED_FUNCTION_65();
      sub_2752C2F40(v289, v290);
      v291 = OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_54(v291, v292, v433);
      if (!v206)
      {
        sub_2752C3990(v154, &qword_2809C0218, &qword_2752DF508);
        v314 = *(v429 + 32);
        v315 = OUTLINED_FUNCTION_57(&v456);
        v314(v315);
        v316 = OUTLINED_FUNCTION_76();
        v314(v316);
        goto LABEL_86;
      }

      v269 = &qword_2809BFEC0;
      v270 = &qword_2752DEE60;
    }

    else
    {
      v300 = objc_opt_self();
      if (!OUTLINED_FUNCTION_83(v300))
      {
        objc_opt_self();
        v166 = v224;
        if (swift_dynamicCastObjCClass())
        {
          OUTLINED_FUNCTION_78();
          sub_2752C3158(v317, v318);
          v319 = OUTLINED_FUNCTION_43();
          v321 = OUTLINED_FUNCTION_30(v319, v320, &v452);
          if (!v206)
          {
            OUTLINED_FUNCTION_69(v321, &qword_2809C0218, &qword_2752DF508);
            OUTLINED_FUNCTION_58();
            OUTLINED_FUNCTION_55(&v446);
            OUTLINED_FUNCTION_36();
            v187();
            v336 = OUTLINED_FUNCTION_20_0();
            (v187)(v336);
            goto LABEL_66;
          }

          v207 = &qword_2809BFE78;
          v208 = &unk_2752DF0B0;
          v322 = &v453;
        }

        else
        {
          v330 = objc_opt_self();
          if (OUTLINED_FUNCTION_81(v330))
          {
            OUTLINED_FUNCTION_78();
            sub_2752C36BC(v331, v332);
            v333 = OUTLINED_FUNCTION_43();
            v335 = OUTLINED_FUNCTION_30(v333, v334, &v448);
            if (!v206)
            {
              OUTLINED_FUNCTION_69(v335, &qword_2809C0218, &qword_2752DF508);
              OUTLINED_FUNCTION_58();
              OUTLINED_FUNCTION_55(&v445);
              OUTLINED_FUNCTION_36();
              v187();
              v355 = OUTLINED_FUNCTION_20_0();
              (v187)(v355);
              goto LABEL_66;
            }

            v207 = &qword_2809BFF10;
            v208 = &qword_2752DEEB0;
            v322 = &v449;
          }

          else
          {
            v337 = objc_opt_self();
            v338 = OUTLINED_FUNCTION_81(v337);
            if (v338)
            {
              v339 = v338;
              v340 = v224;
              v341 = [v339 hasVideo];
              v342 = [v339 isArtistUploadedContent];
              if (v341)
              {
                if (v342)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0220, &qword_2752DF510);
                  v343 = swift_allocObject();
                  *(v343 + 16) = xmmword_2752DF4E0;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0240, &qword_2752DF530);
                  v344 = v340;
                  *(v343 + 32) = sub_2752DD9C8();
                  v345 = OUTLINED_FUNCTION_61();
                  sub_2752D64E0(v345, v343, v346);
                  v347 = OUTLINED_FUNCTION_85();
                  OUTLINED_FUNCTION_30(v347, v348, &v436);
                  if (!v206)
                  {

                    OUTLINED_FUNCTION_69(v383, &qword_2809C0218, &qword_2752DF508);
                    OUTLINED_FUNCTION_58();
                    OUTLINED_FUNCTION_55(&v427);
                    OUTLINED_FUNCTION_36();
                    (v340)();
                    v384 = OUTLINED_FUNCTION_20_0();
                    (v340)(v384);
                    goto LABEL_66;
                  }

                  sub_2752C3990(v415, &qword_2809BFE80, &qword_2752DEE20);
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0220, &qword_2752DF510);
                v349 = swift_allocObject();
                *(v349 + 16) = xmmword_2752DF4F0;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0238, &qword_2752DF528);
                *(v349 + 32) = sub_2752DD9D8();
                *(v349 + 40) = sub_2752DD9E8();
                v350 = OUTLINED_FUNCTION_61();
                sub_2752D68A8(v350, v349, v351);

                v352 = OUTLINED_FUNCTION_85();
                v354 = OUTLINED_FUNCTION_30(v352, v353, &v439);
                if (!v206)
                {
                  OUTLINED_FUNCTION_69(v354, &qword_2809C0218, &qword_2752DF508);
                  OUTLINED_FUNCTION_58();
                  OUTLINED_FUNCTION_55(&v430);
                  OUTLINED_FUNCTION_36();
                  (v340)();
                  v380 = OUTLINED_FUNCTION_20_0();
                  (v340)(v380);
                  goto LABEL_66;
                }

                v207 = &unk_2809BFDA0;
                v208 = &qword_2752DEE00;
                v322 = &v442;
              }

              else
              {
                if (v342)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0220, &qword_2752DF510);
                  v362 = swift_allocObject();
                  *(v362 + 16) = xmmword_2752DF4E0;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0230, &qword_2752DF520);
                  v363 = v340;
                  *(v362 + 32) = sub_2752DD9B8();
                  v364 = OUTLINED_FUNCTION_61();
                  sub_2752D6C04(v364, v362, v365);
                  v366 = OUTLINED_FUNCTION_85();
                  OUTLINED_FUNCTION_30(v366, v367, &v437);
                  if (!v206)
                  {

                    OUTLINED_FUNCTION_69(v385, &qword_2809C0218, &qword_2752DF508);
                    OUTLINED_FUNCTION_58();
                    OUTLINED_FUNCTION_55(&v428);
                    OUTLINED_FUNCTION_36();
                    (v340)();
                    v386 = OUTLINED_FUNCTION_20_0();
                    (v340)(v386);
                    goto LABEL_66;
                  }

                  sub_2752C3990(v416, &qword_2809BFED8, &qword_2752DEE78);
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0220, &qword_2752DF510);
                v368 = swift_allocObject();
                *(v368 + 16) = xmmword_2752DF4F0;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809C0228, &qword_2752DF518);
                *(v368 + 32) = sub_2752DD9F8();
                *(v368 + 40) = sub_2752DDA08();
                v369 = OUTLINED_FUNCTION_61();
                sub_2752D6FCC(v369, v368, v370);

                v371 = OUTLINED_FUNCTION_85();
                v373 = OUTLINED_FUNCTION_30(v371, v372, &v441);
                if (!v206)
                {
                  OUTLINED_FUNCTION_69(v373, &qword_2809C0218, &qword_2752DF508);
                  OUTLINED_FUNCTION_58();
                  OUTLINED_FUNCTION_55(&v433);
                  OUTLINED_FUNCTION_36();
                  (v340)();
                  v382 = OUTLINED_FUNCTION_20_0();
                  (v340)(v382);
                  goto LABEL_66;
                }

                v207 = &qword_2809BFD98;
                v208 = &qword_2752DEDF8;
                v322 = &v444;
              }
            }

            else
            {
              v356 = objc_opt_self();
              if (OUTLINED_FUNCTION_81(v356))
              {
                OUTLINED_FUNCTION_78();
                sub_2752C36F8(v357, v358);
                v359 = OUTLINED_FUNCTION_43();
                v361 = OUTLINED_FUNCTION_30(v359, v360, &v440);
                if (!v206)
                {
                  OUTLINED_FUNCTION_69(v361, &qword_2809C0218, &qword_2752DF508);
                  OUTLINED_FUNCTION_58();
                  OUTLINED_FUNCTION_55(&v431);
                  OUTLINED_FUNCTION_36();
                  v187();
                  v381 = OUTLINED_FUNCTION_20_0();
                  (v187)(v381);
                  goto LABEL_66;
                }

                v207 = &qword_2809BFEB8;
                v208 = &qword_2752DEE58;
                v322 = &v443;
              }

              else
              {
                v374 = objc_opt_self();
                if (OUTLINED_FUNCTION_81(v374))
                {
                  OUTLINED_FUNCTION_78();
                  sub_2752C3734(v375, v376);
                  v377 = OUTLINED_FUNCTION_43();
                  v379 = OUTLINED_FUNCTION_30(v377, v378, &v434);
                  if (!v206)
                  {
                    OUTLINED_FUNCTION_69(v379, &qword_2809C0218, &qword_2752DF508);
                    OUTLINED_FUNCTION_58();
                    OUTLINED_FUNCTION_55(&v423);
                    OUTLINED_FUNCTION_36();
                    v187();
                    v394 = OUTLINED_FUNCTION_20_0();
                    (v187)(v394);
                    goto LABEL_66;
                  }

                  v207 = &qword_2809BFEE0;
                  v208 = &qword_2752DEE80;
                  v322 = &v435;
                }

                else
                {
                  v387 = objc_opt_self();
                  v388 = OUTLINED_FUNCTION_81(v387);
                  v154 = v468;
                  if (!v388)
                  {
                    goto LABEL_48;
                  }

                  OUTLINED_FUNCTION_78();
                  sub_2752C3770(v389, v390);
                  v391 = OUTLINED_FUNCTION_43();
                  v393 = OUTLINED_FUNCTION_30(v391, v392, &v425);
                  if (!v206)
                  {
                    OUTLINED_FUNCTION_69(v393, &qword_2809C0218, &qword_2752DF508);
                    OUTLINED_FUNCTION_58();
                    OUTLINED_FUNCTION_55(&v422);
                    OUTLINED_FUNCTION_36();
                    v187();
                    v395 = OUTLINED_FUNCTION_20_0();
                    (v187)(v395);
                    goto LABEL_66;
                  }

                  v207 = &qword_2809BFEF8;
                  v208 = &qword_2752DEE98;
                  v322 = &v426;
                }
              }
            }
          }
        }

        v209 = *(v322 - 32);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_65();
      sub_2752C3680(v301, v302);
      v303 = OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_54(v303, v304, v427);
      if (!v206)
      {
        sub_2752C3990(v154, &qword_2809C0218, &qword_2752DF508);
        v323 = *(v424 + 32);
        v324 = OUTLINED_FUNCTION_57(&v450);
        v323(v324);
        v325 = OUTLINED_FUNCTION_76();
        v323(v325);
        goto LABEL_86;
      }

      v269 = &qword_2809BFEF0;
      v270 = &qword_2752DEE90;
    }
  }

  sub_2752C3990(v166, v269, v270);
LABEL_87:
  v184 = v465;
LABEL_28:
  sub_2752D94CC(v154, v186);
  OUTLINED_FUNCTION_54(v186, 1, v185);
  if (v206)
  {
    v154 = v186;
LABEL_31:
    sub_2752C3990(v154, &qword_2809C0218, &qword_2752DF508);
    v221 = 1;
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_77();
  (*(v220 + 32))(v184, v186, v185);
  v221 = 0;
LABEL_32:
  __swift_storeEnumTagSinglePayload(v184, v221, 1, v185);
  OUTLINED_FUNCTION_22();
}