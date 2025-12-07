uint64_t sub_2172970C4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v37 - v12;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = *(a1 + 56);
  if (*(v14 + 16) <= a2)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    swift_once();
LABEL_8:
    v52[0] = xmmword_27CB2C8C8;
    v52[1] = xmmword_27CB2C8D8;
    *&v49 = *(a1 + 40);
    LOBYTE(v46) = 4;
    sub_217751DE8();
    sub_217751DE8();
    v37[0] = v13;
    sub_2172B6904(v13, v52, &v49, &v46, v53);
    memcpy(v52, v53, 0x161uLL);
    v23 = *(v43 + 16);
    v40 = v10;
    v23(v54, v10, v44);
    sub_217269EF4(v53, &v49);
    v24 = [v7 itemAtIndexPathBlock];
    *(swift_allocObject() + 16) = v24;
    *&v51[0] = 0;
    v49 = 0u;
    v50 = 0u;
    v46 = xmmword_27CB2C8C8;
    v47 = xmmword_27CB2C8D8;
    v45[0] = *(a1 + 48);
    v25 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
    swift_allocObject();
    sub_217751DE8();
    LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
    *&v52[2] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
    *(&v52[1] + 1) = v25;
    *&v52[0] = v26;
    v27 = *(v38 + 8);

    v27(&v49);
    v29 = v41;
    v28 = v42;
    v30 = *(v41 + 24);
    *(&v47 + 1) = v42;
    v48 = v41;
    __swift_allocate_boxed_opaque_existential_0(&v46);
    v30(v52, &v49, v28, v29);
    sub_2171FF30C(&v46, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
    if (!swift_dynamicCast())
    {
      v50 = 0u;
      memset(v51, 0, 24);
      v49 = 0u;
      BYTE8(v51[1]) = -1;
      sub_2171F0738(&v49, &qword_27CB2CDA0, &qword_21775A310);
      *&v52[0] = 0;
      *(&v52[0] + 1) = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
      sub_217752C78();
      MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
      MEMORY[0x21CEA23B0](0x6C75736552706F54, 0xE900000000000074);
      goto LABEL_20;
    }

    sub_217269F50(v53);
    v52[0] = v49;
    v52[1] = v50;
    v52[2] = v51[0];
    *(&v52[2] + 9) = *(v51 + 9);
    sub_2172843E8(v52, a3);
    sub_2172843E8(a3, &v49);
    swift_beginAccess();
    v31 = *(a1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 56) = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2175034D8();
      v31 = v36;
      *(a1 + 56) = v36;
    }

    v34 = v43;
    v33 = v44;
    v35 = v40;
    if (*(v31 + 16) > a2)
    {
      sub_21729C968(&v49, v31 + (a2 << 6) + 32, &qword_27CB2CDA0, &qword_21775A310);
      *(a1 + 56) = v31;
      swift_endAccess();
      swift_unknownObjectRelease();

      sub_217284444(v52);
      (*(v34 + 8))(v35, v33);
      return __swift_destroy_boxed_opaque_existential_1(&v46);
    }

    __break(1u);
    goto LABEL_17;
  }

  v54 = v10;
  result = sub_2171F50C0(v14 + (a2 << 6) + 32, v53, &qword_27CB2CDA0, &qword_21775A310);
  if (v53[56] != 255)
  {
    v16 = *&v53[16];
    *a3 = *v53;
    a3[1] = v16;
    a3[2] = *&v53[32];
    *(a3 + 41) = *&v53[41];
    return result;
  }

  sub_2171F0738(v53, &qword_27CB2CDA0, &qword_21775A310);
  v17 = dynamic_cast_existential_1_conditional(&type metadata for MusicLibrarySearchResponse.TopResult, &type metadata for MusicLibrarySearchResponse.TopResult, &protocol descriptor for UnderlyingLegacyModelObjectTypeProviding);
  v38 = v18;
  v39 = v17;
  if (v17)
  {
    v10 = v13;
    v37[1] = v3;
    v19 = dynamic_cast_existential_1_conditional(&type metadata for MusicLibrarySearchResponse.TopResult, &type metadata for MusicLibrarySearchResponse.TopResult, &protocol descriptor for UnderlyingLegacyModelObjectConvertible);
    v41 = v20;
    v42 = v19;
    if (!v19)
    {
      *v53 = 0;
      *&v53[8] = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
      MEMORY[0x21CEA23B0](0x6C75736552706F54, 0xE900000000000074);
      MEMORY[0x21CEA23B0](0xD00000000000003CLL, 0x80000002177AAF60);
      goto LABEL_20;
    }

    v43 = v8;
    v44 = v7;
    swift_beginAccess();
    sub_217290620(a2, &unk_282959F58, v13);
    swift_endAccess();
    v7 = *(a1 + 16);
    v21 = sub_217751938();
    v13 = [v7 identifiersForItemAtIndexPath_];

    v22 = qword_27CB23E20;
    swift_unknownObjectRetain();
    if (v22 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_17:
  *v53 = 0;
  *&v53[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
  MEMORY[0x21CEA23B0](0x6C75736552706F54, 0xE900000000000074);
  MEMORY[0x21CEA23B0](0xD00000000000003ELL, 0x80000002177AB1E0);
LABEL_20:
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_2172978D0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v28 - v12;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v14 = *(a1 + 56);
  if (*(v14 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v43 = v10;
  result = sub_2171F50C0(v14 + 56 * a2 + 32, v41, &qword_27CB277F0, &unk_21775A2B0);
  if (*(&v41[0] + 1))
  {
    v16 = v41[1];
    *a3 = v41[0];
    *(a3 + 16) = v16;
    *(a3 + 32) = v41[2];
    *(a3 + 48) = v42;
    return result;
  }

  v29 = v8;
  v30 = v7;
  v28[2] = v3;
  sub_2171F0738(v41, &qword_27CB277F0, &unk_21775A2B0);
  swift_beginAccess();
  v10 = v13;
  sub_217290620(a2, &unk_282959E08, v13);
  swift_endAccess();
  v8 = *(a1 + 16);
  v17 = sub_217751938();
  v13 = [v8 identifiersForItemAtIndexPath_];

  v18 = qword_280BEB230;
  swift_unknownObjectRetain();
  if (v18 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  *v39 = xmmword_280BEB238;
  *&v39[16] = xmmword_280BEB248;
  *&v35 = *(a1 + 40);
  LOBYTE(v32) = 4;
  sub_217751DE8();
  sub_217751DE8();
  v28[1] = v13;
  sub_2172B6904(v13, v39, &v35, &v32, v40);
  memcpy(v39, v40, sizeof(v39));
  v29[2](v43, v10, v30);
  sub_217269EF4(v40, &v35);
  v19 = [v8 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v19;
  *&v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v32 = xmmword_280BEB238;
  v33 = xmmword_280BEB248;
  v31[0] = *(a1 + 48);
  v20 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v39[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v39[24] = v20;
  *v39 = v21;
  *(&v33 + 1) = &type metadata for Song;
  v34 = &protocol witness table for Song;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v32);
  sub_2171FF30C(v39, &v35);

  Song.init(propertyProvider:)(&v35, boxed_opaque_existential_0);
  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_2171FF30C(&v32, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_217269F50(v40);
    *v39 = v35;
    *&v39[16] = v36;
    *&v39[32] = v37;
    *&v39[48] = v38;
    sub_217283AFC(v39, a3);
    sub_217283AFC(a3, &v35);
    swift_beginAccess();
    v23 = *(a1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 56) = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2175034F0();
      v23 = v27;
      *(a1 + 56) = v27;
    }

    v26 = v29;
    v25 = v30;
    if (*(v23 + 16) > a2)
    {
      sub_21729C968(&v35, v23 + 56 * a2 + 32, &qword_27CB277F0, &unk_21775A2B0);
      *(a1 + 56) = v23;
      swift_endAccess();
      swift_unknownObjectRelease();

      sub_217283B58(v39);
      (v26[1])(v10, v25);
      return __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    __break(1u);
  }

  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  sub_2171F0738(&v35, &qword_27CB277F0, &unk_21775A2B0);
  *v39 = 0;
  *&v39[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
  MEMORY[0x21CEA23B0](1735290707, 0xE400000000000000);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217297EEC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v28 - v12;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v14 = *(a1 + 56);
  if (*(v14 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v43 = v10;
  result = sub_2171F50C0(v14 + 56 * a2 + 32, v41, &qword_27CB24550, &qword_217758A58);
  if (*(&v41[0] + 1))
  {
    v16 = v41[1];
    *a3 = v41[0];
    *(a3 + 16) = v16;
    *(a3 + 32) = v41[2];
    *(a3 + 48) = v42;
    return result;
  }

  v29 = v8;
  v30 = v7;
  v28[2] = v3;
  sub_2171F0738(v41, &qword_27CB24550, &qword_217758A58);
  swift_beginAccess();
  v10 = v13;
  sub_217290620(a2, &unk_282959DA8, v13);
  swift_endAccess();
  v8 = *(a1 + 16);
  v17 = sub_217751938();
  v13 = [v8 identifiersForItemAtIndexPath_];

  v18 = qword_280BE7F40;
  swift_unknownObjectRetain();
  if (v18 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  *v39 = xmmword_280BE7F48;
  *&v39[16] = xmmword_280BE7F58;
  *&v35 = *(a1 + 40);
  LOBYTE(v32) = 4;
  sub_217751DE8();
  sub_217751DE8();
  v28[1] = v13;
  sub_2172B6904(v13, v39, &v35, &v32, v40);
  memcpy(v39, v40, sizeof(v39));
  v29[2](v43, v10, v30);
  sub_217269EF4(v40, &v35);
  v19 = [v8 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v19;
  *&v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v32 = xmmword_280BE7F48;
  v33 = xmmword_280BE7F58;
  v31[0] = *(a1 + 48);
  v20 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v39[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v39[24] = v20;
  *v39 = v21;
  *(&v33 + 1) = &type metadata for MusicVideo;
  v34 = &protocol witness table for MusicVideo;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v32);
  sub_2171FF30C(v39, &v35);

  MusicVideo.init(propertyProvider:)(&v35, boxed_opaque_existential_0);
  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_2171FF30C(&v32, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_217269F50(v40);
    *v39 = v35;
    *&v39[16] = v36;
    *&v39[32] = v37;
    *&v39[48] = v38;
    sub_217283BAC(v39, a3);
    sub_217283BAC(a3, &v35);
    swift_beginAccess();
    v23 = *(a1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 56) = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217503508();
      v23 = v27;
      *(a1 + 56) = v27;
    }

    v26 = v29;
    v25 = v30;
    if (*(v23 + 16) > a2)
    {
      sub_21729C968(&v35, v23 + 56 * a2 + 32, &qword_27CB24550, &qword_217758A58);
      *(a1 + 56) = v23;
      swift_endAccess();
      swift_unknownObjectRelease();

      sub_217283C08(v39);
      (v26[1])(v10, v25);
      return __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    __break(1u);
  }

  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  sub_2171F0738(&v35, &qword_27CB24550, &qword_217758A58);
  *v39 = 0;
  *&v39[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
  MEMORY[0x21CEA23B0](0x646956636973754DLL, 0xEA00000000006F65);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217298514@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v28 - v12;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v14 = *(a1 + 56);
  if (*(v14 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v43 = v10;
  result = sub_2171F50C0(v14 + 56 * a2 + 32, v41, &qword_27CB2CD90, &unk_21775A2C0);
  if (*(&v41[0] + 1))
  {
    v16 = v41[1];
    *a3 = v41[0];
    *(a3 + 16) = v16;
    *(a3 + 32) = v41[2];
    *(a3 + 48) = v42;
    return result;
  }

  v29 = v8;
  v30 = v7;
  v28[2] = v3;
  sub_2171F0738(v41, &qword_27CB2CD90, &unk_21775A2C0);
  swift_beginAccess();
  v10 = v13;
  sub_217290620(a2, &unk_282959E68, v13);
  swift_endAccess();
  v8 = *(a1 + 16);
  v17 = sub_217751938();
  v13 = [v8 identifiersForItemAtIndexPath_];

  v18 = qword_280BE2A18;
  swift_unknownObjectRetain();
  if (v18 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  *v39 = xmmword_280BE2A20;
  *&v39[16] = xmmword_280BE2A30;
  *&v35 = *(a1 + 40);
  LOBYTE(v32) = 4;
  sub_217751DE8();
  sub_217751DE8();
  v28[1] = v13;
  sub_2172B6904(v13, v39, &v35, &v32, v40);
  memcpy(v39, v40, sizeof(v39));
  v29[2](v43, v10, v30);
  sub_217269EF4(v40, &v35);
  v19 = [v8 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v19;
  *&v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v32 = xmmword_280BE2A20;
  v33 = xmmword_280BE2A30;
  v31[0] = *(a1 + 48);
  v20 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v39[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v39[24] = v20;
  *v39 = v21;
  *(&v33 + 1) = &type metadata for Artist;
  v34 = &protocol witness table for Artist;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v32);
  sub_2171FF30C(v39, &v35);

  Artist.init(propertyProvider:)(&v35, boxed_opaque_existential_0);
  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_2171FF30C(&v32, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_217269F50(v40);
    *v39 = v35;
    *&v39[16] = v36;
    *&v39[32] = v37;
    *&v39[48] = v38;
    sub_21725CF68(v39, a3);
    sub_21725CF68(a3, &v35);
    swift_beginAccess();
    v23 = *(a1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 56) = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217503520();
      v23 = v27;
      *(a1 + 56) = v27;
    }

    v26 = v29;
    v25 = v30;
    if (*(v23 + 16) > a2)
    {
      sub_21729C968(&v35, v23 + 56 * a2 + 32, &qword_27CB2CD90, &unk_21775A2C0);
      *(a1 + 56) = v23;
      swift_endAccess();
      swift_unknownObjectRelease();

      sub_217284498(v39);
      (v26[1])(v10, v25);
      return __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    __break(1u);
  }

  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  sub_2171F0738(&v35, &qword_27CB2CD90, &unk_21775A2C0);
  *v39 = 0;
  *&v39[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
  MEMORY[0x21CEA23B0](0x747369747241, 0xE600000000000000);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217298B34@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v28 - v12;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v14 = *(a1 + 56);
  if (*(v14 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v43 = v10;
  result = sub_2171F50C0(v14 + 56 * a2 + 32, v41, &unk_27CB2AF60, &qword_217758C00);
  if (*(&v41[0] + 1))
  {
    v16 = v41[1];
    *a3 = v41[0];
    *(a3 + 16) = v16;
    *(a3 + 32) = v41[2];
    *(a3 + 48) = v42;
    return result;
  }

  v29 = v8;
  v30 = v7;
  v28[2] = v3;
  sub_2171F0738(v41, &unk_27CB2AF60, &qword_217758C00);
  swift_beginAccess();
  v10 = v13;
  sub_217290620(a2, &unk_282959EC8, v13);
  swift_endAccess();
  v8 = *(a1 + 16);
  v17 = sub_217751938();
  v13 = [v8 identifiersForItemAtIndexPath_];

  v18 = qword_280BE5130;
  swift_unknownObjectRetain();
  if (v18 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  *v39 = xmmword_280BE5138;
  *&v39[16] = xmmword_280BE5148;
  *&v35 = *(a1 + 40);
  LOBYTE(v32) = 4;
  sub_217751DE8();
  sub_217751DE8();
  v28[1] = v13;
  sub_2172B6904(v13, v39, &v35, &v32, v40);
  memcpy(v39, v40, sizeof(v39));
  v29[2](v43, v10, v30);
  sub_217269EF4(v40, &v35);
  v19 = [v8 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v19;
  *&v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v32 = xmmword_280BE5138;
  v33 = xmmword_280BE5148;
  v31[0] = *(a1 + 48);
  v20 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v39[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v39[24] = v20;
  *v39 = v21;
  *(&v33 + 1) = &type metadata for RecordLabel;
  v34 = &protocol witness table for RecordLabel;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v32);
  sub_2171FF30C(v39, &v35);

  RecordLabel.init(propertyProvider:)(&v35, boxed_opaque_existential_0);
  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_2171FF30C(&v32, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_217269F50(v40);
    *v39 = v35;
    *&v39[16] = v36;
    *&v39[32] = v37;
    *&v39[48] = v38;
    sub_217283C68(v39, a3);
    sub_217283C68(a3, &v35);
    swift_beginAccess();
    v23 = *(a1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 56) = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217503538();
      v23 = v27;
      *(a1 + 56) = v27;
    }

    v26 = v29;
    v25 = v30;
    if (*(v23 + 16) > a2)
    {
      sub_21729C968(&v35, v23 + 56 * a2 + 32, &unk_27CB2AF60, &qword_217758C00);
      *(a1 + 56) = v23;
      swift_endAccess();
      swift_unknownObjectRelease();

      sub_217283CC4(v39);
      (v26[1])(v10, v25);
      return __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    __break(1u);
  }

  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  sub_2171F0738(&v35, &unk_27CB2AF60, &qword_217758C00);
  *v39 = 0;
  *&v39[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
  MEMORY[0x21CEA23B0](0x614C64726F636552, 0xEB000000006C6562);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217299160@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v28 - v12;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v14 = *(a1 + 56);
  if (*(v14 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v43 = v10;
  result = sub_2171F50C0(v14 + 56 * a2 + 32, v41, &qword_27CB24678, &qword_217758BD0);
  if (*(&v41[0] + 1))
  {
    v16 = v41[1];
    *a3 = v41[0];
    *(a3 + 16) = v16;
    *(a3 + 32) = v41[2];
    *(a3 + 48) = v42;
    return result;
  }

  v29 = v8;
  v30 = v7;
  v28[2] = v3;
  sub_2171F0738(v41, &qword_27CB24678, &qword_217758BD0);
  swift_beginAccess();
  v10 = v13;
  sub_217290620(a2, &unk_282959E98, v13);
  swift_endAccess();
  v8 = *(a1 + 16);
  v17 = sub_217751938();
  v13 = [v8 identifiersForItemAtIndexPath_];

  v18 = qword_280BE23C0;
  swift_unknownObjectRetain();
  if (v18 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  *v39 = xmmword_280BE23C8;
  *&v39[16] = xmmword_280BE23D8;
  *&v35 = *(a1 + 40);
  LOBYTE(v32) = 4;
  sub_217751DE8();
  sub_217751DE8();
  v28[1] = v13;
  sub_2172B6904(v13, v39, &v35, &v32, v40);
  memcpy(v39, v40, sizeof(v39));
  v29[2](v43, v10, v30);
  sub_217269EF4(v40, &v35);
  v19 = [v8 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v19;
  *&v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v32 = xmmword_280BE23C8;
  v33 = xmmword_280BE23D8;
  v31[0] = *(a1 + 48);
  v20 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v39[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v39[24] = v20;
  *v39 = v21;
  *(&v33 + 1) = &type metadata for RadioShow;
  v34 = &protocol witness table for RadioShow;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v32);
  sub_2171FF30C(v39, &v35);

  RadioShow.init(propertyProvider:)(&v35, boxed_opaque_existential_0);
  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_2171FF30C(&v32, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_217269F50(v40);
    *v39 = v35;
    *&v39[16] = v36;
    *&v39[32] = v37;
    *&v39[48] = v38;
    sub_217284338(v39, a3);
    sub_217284338(a3, &v35);
    swift_beginAccess();
    v23 = *(a1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 56) = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217503550();
      v23 = v27;
      *(a1 + 56) = v27;
    }

    v26 = v29;
    v25 = v30;
    if (*(v23 + 16) > a2)
    {
      sub_21729C968(&v35, v23 + 56 * a2 + 32, &qword_27CB24678, &qword_217758BD0);
      *(a1 + 56) = v23;
      swift_endAccess();
      swift_unknownObjectRelease();

      sub_217284394(v39);
      (v26[1])(v10, v25);
      return __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    __break(1u);
  }

  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  sub_2171F0738(&v35, &qword_27CB24678, &qword_217758BD0);
  *v39 = 0;
  *&v39[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
  MEMORY[0x21CEA23B0](0x6F68536F69646152, 0xE900000000000077);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217299788@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v31 - v12;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = *(a1 + 56);
  if (*(v14 + 16) <= a2)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_7;
  }

  v46 = v10;
  result = sub_2171F50C0(v14 + 56 * a2 + 32, v45, &qword_27CB246E8, &qword_21776C140);
  if (*&v45[8])
  {
    v16 = *&v45[16];
    *a3 = *v45;
    *(a3 + 16) = v16;
    *(a3 + 32) = *&v45[32];
    *(a3 + 48) = *&v45[48];
    return result;
  }

  v31[2] = v3;
  sub_2171F0738(v45, &qword_27CB246E8, &qword_21776C140);
  v17 = dynamic_cast_existential_1_conditional(&type metadata for Curator, &type metadata for Curator, &protocol descriptor for UnderlyingLegacyModelObjectTypeProviding);
  v32 = v18;
  v33 = v17;
  if (!v17)
  {
    goto LABEL_16;
  }

  v34 = v8;
  v35 = v7;
  swift_beginAccess();
  v10 = v13;
  sub_217290620(a2, &unk_282959E38, v13);
  swift_endAccess();
  v7 = *(a1 + 16);
  v19 = sub_217751938();
  v13 = [v7 identifiersForItemAtIndexPath_];

  v20 = qword_280BE7660;
  swift_unknownObjectRetain();
  if (v20 != -1)
  {
    goto LABEL_14;
  }

LABEL_7:
  v44[0] = xmmword_280BE7668;
  v44[1] = xmmword_280BE7678;
  *&v40 = *(a1 + 40);
  LOBYTE(v37) = 4;
  sub_217751DE8();
  sub_217751DE8();
  v31[1] = v13;
  sub_2172B6904(v13, v44, &v40, &v37, v45);
  memcpy(v44, v45, 0x161uLL);
  (*(v34 + 16))(v46, v10, v35);
  sub_217269EF4(v45, &v40);
  v21 = [v7 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v21;
  *&v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v37 = xmmword_280BE7668;
  v38 = xmmword_280BE7678;
  LOBYTE(v36[0]) = *(a1 + 48);
  v22 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v44[2] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *(&v44[1] + 1) = v22;
  *&v44[0] = v23;
  v24 = *(v32 + 8);

  v24(v36);
  *(&v38 + 1) = &type metadata for Curator;
  v39 = &protocol witness table for Curator;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v37);
  sub_2171FF30C(v44, &v40);
  Curator.init(propertyProvider:)(&v40, boxed_opaque_existential_0);
  __swift_destroy_boxed_opaque_existential_1(v44);
  sub_2171FF30C(&v37, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (!swift_dynamicCast())
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    sub_2171F0738(&v40, &qword_27CB246E8, &qword_21776C140);
    *&v44[0] = 0;
    *(&v44[0] + 1) = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
    sub_217752C78();
    MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
    MEMORY[0x21CEA23B0](0x726F7461727543, 0xE700000000000000);
    goto LABEL_18;
  }

  sub_217269F50(v45);
  v44[0] = v40;
  v44[1] = v41;
  v44[2] = v42;
  *&v44[3] = v43;
  sub_217284288(v44, a3);
  sub_217284288(a3, &v40);
  swift_beginAccess();
  v26 = *(a1 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 56) = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_217503568();
    v26 = v30;
    *(a1 + 56) = v30;
  }

  v29 = v34;
  v28 = v35;
  if (*(v26 + 16) > a2)
  {
    sub_21729C968(&v40, v26 + 56 * a2 + 32, &qword_27CB246E8, &qword_21776C140);
    *(a1 + 56) = v26;
    swift_endAccess();
    swift_unknownObjectRelease();

    sub_2172842E4(v44);
    (*(v29 + 8))(v10, v28);
    return __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  __break(1u);
LABEL_16:
  *v45 = 0;
  *&v45[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
  MEMORY[0x21CEA23B0](0x726F7461727543, 0xE700000000000000);
  MEMORY[0x21CEA23B0](0xD00000000000003ELL, 0x80000002177AB1E0);
LABEL_18:
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_217299EAC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v8 = sub_217751968();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v30 - v13;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v15 = *(a1 + 56);
  if (*(v15 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  result = sub_2171F50C0(v15 + (a2 << 6) + 32, v41, &unk_27CB28AA0, &qword_21775A020);
  if (v42[24] != 255)
  {
    v17 = v41[1];
    *a3 = v41[0];
    a3[1] = v17;
    a3[2] = *v42;
    *(a3 + 41) = *&v42[9];
    return result;
  }

  v31 = v9;
  v43 = v8;
  v30[1] = v3;
  sub_2171F0738(v41, &unk_27CB28AA0, &qword_21775A020);
  swift_beginAccess();
  sub_217290620(a2, &unk_282959FE8, v14);
  swift_endAccess();
  v9 = *(a1 + 16);
  v18 = sub_217751938();
  v19 = [v9 identifiersForItemAtIndexPath_];

  v4 = v19;
  v20 = qword_280BE8588;
  swift_unknownObjectRetain();
  if (v20 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  v39[0] = xmmword_280BE8590;
  v39[1] = xmmword_280BE85A0;
  *&v36 = *(a1 + 40);
  LOBYTE(v33) = 4;
  sub_217751DE8();
  sub_217751DE8();
  v30[0] = v4;
  sub_2172B6904(v4, v39, &v36, &v33, v40);
  memcpy(v39, v40, 0x161uLL);
  v31[2](v11, v14, v43);
  sub_217269EF4(v40, &v36);
  v21 = [v9 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v21;
  *&v38[0] = 0;
  v36 = 0u;
  v37 = 0u;
  v33 = xmmword_280BE8590;
  v34 = xmmword_280BE85A0;
  v32[0] = *(a1 + 48);
  v22 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *(&v39[1] + 1) = v22;
  *&v39[2] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v39[0] = v23;
  *(&v34 + 1) = &type metadata for Track;
  v35 = &protocol witness table for Track;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v33);
  sub_2171FF30C(v39, &v36);

  Track.init(propertyProvider:)(&v36, boxed_opaque_existential_0);
  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_2171FF30C(&v33, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_217269F50(v40);
    v39[0] = v36;
    v39[1] = v37;
    v39[2] = v38[0];
    *(&v39[2] + 9) = *(v38 + 9);
    sub_217275710(v39, a3);
    sub_217275710(a3, &v36);
    swift_beginAccess();
    v25 = *(a1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 56) = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217503580();
      v25 = v29;
      *(a1 + 56) = v29;
    }

    v27 = v43;
    v28 = v31;
    if (*(v25 + 16) > a2)
    {
      sub_21729C968(&v36, v25 + (a2 << 6) + 32, &unk_27CB28AA0, &qword_21775A020);
      *(a1 + 56) = v25;
      swift_endAccess();
      swift_unknownObjectRelease();

      sub_21727576C(v39);
      (v28[1])(v14, v27);
      return __swift_destroy_boxed_opaque_existential_1(&v33);
    }

    __break(1u);
  }

  v37 = 0u;
  memset(v38, 0, 24);
  v36 = 0u;
  BYTE8(v38[1]) = -1;
  sub_2171F0738(&v36, &unk_27CB28AA0, &qword_21775A020);
  *&v39[0] = 0;
  *(&v39[0] + 1) = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
  MEMORY[0x21CEA23B0](0x6B63617254, 0xE500000000000000);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_21729A4D4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v28 - v12;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v14 = *(a1 + 56);
  if (*(v14 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v44 = v10;
  result = sub_2171F50C0(v14 + 56 * a2 + 32, v42, &unk_27CB27760, &unk_21775A2D0);
  if (*(&v42[0] + 1))
  {
    v16 = v42[1];
    *a3 = v42[0];
    *(a3 + 16) = v16;
    *(a3 + 32) = v42[2];
    *(a3 + 48) = v43;
    return result;
  }

  v29 = v8;
  v30 = v7;
  v28[2] = v3;
  sub_2171F0738(v42, &unk_27CB27760, &unk_21775A2D0);
  swift_beginAccess();
  v10 = v13;
  sub_217290620(a2, &unk_28295A048, v13);
  swift_endAccess();
  v8 = *(a1 + 16);
  v17 = sub_217751938();
  v13 = [v8 identifiersForItemAtIndexPath_];

  v18 = qword_280BE2A80;
  swift_unknownObjectRetain();
  if (v18 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  *v40 = xmmword_280BE2A88;
  *&v40[16] = qword_280BE2A98;
  *&v40[24] = unk_280BE2AA0;
  *&v36 = *(a1 + 40);
  LOBYTE(v32) = 4;
  sub_217751DE8();
  sub_217751DE8();
  v28[1] = v13;
  sub_2172B6904(v13, v40, &v36, &v32, v41);
  memcpy(v40, v41, sizeof(v40));
  v29[2](v44, v10, v30);
  sub_217269EF4(v41, &v36);
  v19 = [v8 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v19;
  *&v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v32 = xmmword_280BE2A88;
  v33 = qword_280BE2A98;
  v34 = unk_280BE2AA0;
  v31[0] = *(a1 + 48);
  v20 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v40[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v40[24] = v20;
  *v40 = v21;
  v34 = &type metadata for Genre;
  v35 = &protocol witness table for Genre;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v32);
  sub_2171FF30C(v40, &v36);

  Genre.init(propertyProvider:)(&v36, boxed_opaque_existential_0);
  __swift_destroy_boxed_opaque_existential_1(v40);
  sub_2171FF30C(&v32, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_217269F50(v41);
    *v40 = v36;
    *&v40[16] = v37;
    *&v40[32] = v38;
    *&v40[48] = v39;
    sub_217284130(v40, a3);
    sub_217284130(a3, &v36);
    swift_beginAccess();
    v23 = *(a1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 56) = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_217503598();
      v23 = v27;
      *(a1 + 56) = v27;
    }

    v26 = v29;
    v25 = v30;
    if (*(v23 + 16) > a2)
    {
      sub_21729C968(&v36, v23 + 56 * a2 + 32, &unk_27CB27760, &unk_21775A2D0);
      *(a1 + 56) = v23;
      swift_endAccess();
      swift_unknownObjectRelease();

      sub_21728418C(v40);
      (v26[1])(v10, v25);
      return __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    __break(1u);
  }

  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  sub_2171F0738(&v36, &unk_27CB27760, &unk_21775A2D0);
  *v40 = 0;
  *&v40[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
  MEMORY[0x21CEA23B0](0x65726E6547, 0xE500000000000000);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_21729AAF4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v28 - v12;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v14 = *(a1 + 56);
  if (*(v14 + 16) <= a2)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v44 = v10;
  result = sub_2171F50C0(v14 + 56 * a2 + 32, v42, &unk_27CB2ACC0, &qword_217758AA8);
  if (*(&v42[0] + 1))
  {
    v16 = v42[1];
    *a3 = v42[0];
    *(a3 + 16) = v16;
    *(a3 + 32) = v42[2];
    *(a3 + 48) = v43;
    return result;
  }

  v29 = v8;
  v30 = v7;
  v28[2] = v3;
  sub_2171F0738(v42, &unk_27CB2ACC0, &qword_217758AA8);
  swift_beginAccess();
  v10 = v13;
  sub_217290620(a2, &unk_28295A018, v13);
  swift_endAccess();
  v8 = *(a1 + 16);
  v17 = sub_217751938();
  v13 = [v8 identifiersForItemAtIndexPath_];

  v18 = qword_280BE8508;
  swift_unknownObjectRetain();
  if (v18 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  *v40 = xmmword_280BE8510;
  *&v40[16] = qword_280BE8520;
  *&v40[24] = unk_280BE8528;
  *&v36 = *(a1 + 40);
  LOBYTE(v32) = 4;
  sub_217751DE8();
  sub_217751DE8();
  v28[1] = v13;
  sub_2172B6904(v13, v40, &v36, &v32, v41);
  memcpy(v40, v41, sizeof(v40));
  v29[2](v44, v10, v30);
  sub_217269EF4(v41, &v36);
  v19 = [v8 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v19;
  *&v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v32 = xmmword_280BE8510;
  v33 = qword_280BE8520;
  v34 = unk_280BE8528;
  v31[0] = *(a1 + 48);
  v20 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v40[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v40[24] = v20;
  *v40 = v21;
  v34 = &type metadata for Playlist.Entry;
  v35 = &protocol witness table for Playlist.Entry;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v32);
  sub_2171FF30C(v40, &v36);

  Playlist.Entry.init(propertyProvider:)(&v36, boxed_opaque_existential_0);
  __swift_destroy_boxed_opaque_existential_1(v40);
  sub_2171FF30C(&v32, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    sub_217269F50(v41);
    *v40 = v36;
    *&v40[16] = v37;
    *&v40[32] = v38;
    *&v40[48] = v39;
    sub_217275858(v40, a3);
    sub_217275858(a3, &v36);
    swift_beginAccess();
    v23 = *(a1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 56) = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2175035B0();
      v23 = v27;
      *(a1 + 56) = v27;
    }

    v26 = v29;
    v25 = v30;
    if (*(v23 + 16) > a2)
    {
      sub_21729C968(&v36, v23 + 56 * a2 + 32, &unk_27CB2ACC0, &qword_217758AA8);
      *(a1 + 56) = v23;
      swift_endAccess();
      swift_unknownObjectRelease();

      sub_2172758B4(v40);
      (v26[1])(v10, v25);
      return __swift_destroy_boxed_opaque_existential_1(&v32);
    }

    __break(1u);
  }

  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  sub_2171F0738(&v36, &unk_27CB2ACC0, &qword_217758AA8);
  *v40 = 0;
  *&v40[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
  sub_217752C78();
  MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
  MEMORY[0x21CEA23B0](0x7972746E45, 0xE500000000000000);
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_21729B114@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v43 - v12;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = *(a1 + 56);
  if (*(v14 + 16) <= a2)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    sub_21750363C();
    v38 = v42;
    *(a1 + 56) = v42;
LABEL_10:
    v40 = v54;
    v41 = v52;
    if (*(v38 + 16) > v46)
    {
      sub_21729C968(&v62, v38 + (v46 << 6) + 32, &qword_27CB245B8, &qword_217758AE0);
      *(a1 + 56) = v38;
      swift_endAccess();
      swift_unknownObjectRelease();

      sub_21729C748(v65);
      (*(v40 + 8))(v41, v53);
      return __swift_destroy_boxed_opaque_existential_1(&v58);
    }

    __break(1u);
    goto LABEL_16;
  }

  result = sub_2171F50C0(v14 + (a2 << 6) + 32, v66, &qword_27CB245B8, &qword_217758AE0);
  if (v66[56] != 255)
  {
    v16 = *&v66[16];
    *a3 = *v66;
    a3[1] = v16;
    a3[2] = *&v66[32];
    *(a3 + 41) = *&v66[41];
    return result;
  }

  sub_2171F0738(v66, &qword_27CB245B8, &qword_217758AE0);
  v17 = dynamic_cast_existential_1_conditional(&type metadata for MusicPlayer.Queue.Entry.Item, &type metadata for MusicPlayer.Queue.Entry.Item, &protocol descriptor for UnderlyingLegacyModelObjectTypeProviding);
  v47 = v18;
  v48 = v17;
  if (v17)
  {
    v19 = dynamic_cast_existential_1_conditional(&type metadata for MusicPlayer.Queue.Entry.Item, &type metadata for MusicPlayer.Queue.Entry.Item, &protocol descriptor for UnderlyingLegacyModelObjectConvertible);
    v49 = v20;
    v50 = v19;
    if (!v19)
    {
      *v66 = 0;
      *&v66[8] = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
      MEMORY[0x21CEA23B0](1835365449, 0xE400000000000000);
      MEMORY[0x21CEA23B0](0xD00000000000003CLL, 0x80000002177AAF60);
      goto LABEL_20;
    }

    v51 = v10;
    v43[2] = v3;
    v44 = a3;
    v53 = v7;
    v54 = v8;
    v21 = dynamic_cast_existential_1_conditional(&type metadata for MusicPlayer.Queue.Entry.Item, &type metadata for MusicPlayer.Queue.Entry.Item, &protocol descriptor for MusicItemTypeValueProviding);
    if (!v21)
    {
      *v66 = 0;
      *&v66[8] = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
      MEMORY[0x21CEA23B0](1835365449, 0xE400000000000000);
      MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177AAFA0);
      goto LABEL_20;
    }

    v23 = v21;
    v24 = v22;
    swift_beginAccess();
    v46 = a2;
    sub_217290620(a2, &unk_28295BC18, v13);
    swift_endAccess();
    v45 = *(a1 + 16);
    v25 = v45;
    v26 = sub_217751938();
    v27 = [v25 identifiersForItemAtIndexPath_];

    v28 = *(v24 + 8);
    swift_unknownObjectRetain();
    v28(v65, v23, v24);
    v62 = *v65;
    v63 = *&v65[16];
    *&v58 = *(a1 + 40);
    LOBYTE(v55) = 4;
    sub_217751DE8();
    v43[1] = v27;
    sub_2172B6904(v27, &v62, &v58, &v55, v66);
    memcpy(v65, v66, sizeof(v65));
    v29 = *(v54 + 16);
    v52 = v13;
    v29(v51, v13, v53);
    sub_217269EF4(v66, &v62);
    v30 = [v45 itemAtIndexPathBlock];
    *(swift_allocObject() + 16) = v30;
    *&v64[0] = 0;
    v62 = 0u;
    v63 = 0u;
    v28(&v58, v23, v24);
    v55 = v58;
    v56 = v59;
    v57 = v60;
    v67 = *(a1 + 48);
    v31 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
    swift_allocObject();
    LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
    *&v65[32] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
    *&v65[24] = v31;
    *v65 = v32;
    v33 = *(v47 + 8);

    v33(&v62);
    v35 = v49;
    v34 = v50;
    v36 = *(v49 + 24);
    v60 = v50;
    v61 = v49;
    __swift_allocate_boxed_opaque_existential_0(&v58);
    v36(v65, &v62, v34, v35);
    sub_2171FF30C(&v58, &v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v63 = 0u;
      memset(v64, 0, 24);
      v62 = 0u;
      BYTE8(v64[1]) = -1;
      sub_2171F0738(&v62, &qword_27CB245B8, &qword_217758AE0);
      *v65 = 0;
      *&v65[8] = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
      sub_217752C78();
      MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
      MEMORY[0x21CEA23B0](1835365449, 0xE400000000000000);
      goto LABEL_20;
    }

    sub_217269F50(v66);
    *v65 = v62;
    *&v65[16] = v63;
    *&v65[32] = v64[0];
    *&v65[41] = *(v64 + 9);
    v37 = v44;
    sub_21729C6EC(v65, v44);
    sub_21729C6EC(v37, &v62);
    swift_beginAccess();
    v38 = *(a1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 56) = v38;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    goto LABEL_14;
  }

LABEL_16:
  *v66 = 0;
  *&v66[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
  MEMORY[0x21CEA23B0](1835365449, 0xE400000000000000);
  MEMORY[0x21CEA23B0](0xD00000000000003ELL, 0x80000002177AB1E0);
LABEL_20:
  result = sub_217752D08();
  __break(1u);
  return result;
}

uint64_t sub_21729B9C4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_217751968();
  v8 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v31 - v12;
  swift_beginAccess();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = *(a1 + 56);
  if (*(v14 + 16) <= a2)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_7;
  }

  v45 = v10;
  result = sub_2171F50C0(v14 + (a2 << 6) + 32, v44, &qword_27CB27D20, &qword_217758B80);
  if (v44[56] != 255)
  {
    v16 = *&v44[16];
    *a3 = *v44;
    a3[1] = v16;
    a3[2] = *&v44[32];
    *(a3 + 41) = *&v44[41];
    return result;
  }

  v31[2] = v3;
  sub_2171F0738(v44, &qword_27CB27D20, &qword_217758B80);
  v17 = dynamic_cast_existential_1_conditional(&type metadata for Playlist.Entry.Item, &type metadata for Playlist.Entry.Item, &protocol descriptor for UnderlyingLegacyModelObjectTypeProviding);
  v32 = v18;
  v33 = v17;
  if (!v17)
  {
    goto LABEL_16;
  }

  v34 = v8;
  v35 = v7;
  swift_beginAccess();
  v10 = v13;
  sub_217290620(a2, &unk_28295BC48, v13);
  swift_endAccess();
  v7 = *(a1 + 16);
  v19 = sub_217751938();
  v13 = [v7 identifiersForItemAtIndexPath_];

  v20 = qword_27CB23CF0;
  swift_unknownObjectRetain();
  if (v20 != -1)
  {
    goto LABEL_14;
  }

LABEL_7:
  v43[0] = xmmword_27CB2A468;
  v43[1] = xmmword_27CB2A478;
  *&v40 = *(a1 + 40);
  LOBYTE(v37) = 4;
  sub_217751DE8();
  sub_217751DE8();
  v31[1] = v13;
  sub_2172B6904(v13, v43, &v40, &v37, v44);
  memcpy(v43, v44, 0x161uLL);
  (*(v34 + 16))(v45, v10, v35);
  sub_217269EF4(v44, &v40);
  v21 = [v7 itemAtIndexPathBlock];
  *(swift_allocObject() + 16) = v21;
  *&v42[0] = 0;
  v40 = 0u;
  v41 = 0u;
  v37 = xmmword_27CB2A468;
  v38 = xmmword_27CB2A478;
  LOBYTE(v36[0]) = *(a1 + 48);
  v22 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *&v43[2] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *(&v43[1] + 1) = v22;
  *&v43[0] = v23;
  v24 = *(v32 + 8);

  v24(v36);
  *(&v38 + 1) = &type metadata for Playlist.Entry.Item;
  v39 = &protocol witness table for Playlist.Entry.Item;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v37);
  sub_2171FF30C(v43, &v40);
  Playlist.Entry.Item.init(propertyProvider:)(&v40, boxed_opaque_existential_0);
  __swift_destroy_boxed_opaque_existential_1(v43);
  sub_2171FF30C(&v37, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (!swift_dynamicCast())
  {
    v41 = 0u;
    memset(v42, 0, 24);
    v40 = 0u;
    BYTE8(v42[1]) = -1;
    sub_2171F0738(&v40, &qword_27CB27D20, &qword_217758B80);
    *&v43[0] = 0;
    *(&v43[0] + 1) = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB190);
    sub_217752C78();
    MEMORY[0x21CEA23B0](0xD000000000000022, 0x80000002177AB1B0);
    MEMORY[0x21CEA23B0](1835365449, 0xE400000000000000);
    goto LABEL_18;
  }

  sub_217269F50(v44);
  v43[0] = v40;
  v43[1] = v41;
  v43[2] = v42[0];
  *(&v43[2] + 9) = *(v42 + 9);
  sub_21729C79C(v43, a3);
  sub_21729C79C(a3, &v40);
  swift_beginAccess();
  v26 = *(a1 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 56) = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_217503654();
    v26 = v30;
    *(a1 + 56) = v30;
  }

  v29 = v34;
  v28 = v35;
  if (*(v26 + 16) > a2)
  {
    sub_21729C968(&v40, v26 + (a2 << 6) + 32, &qword_27CB27D20, &qword_217758B80);
    *(a1 + 56) = v26;
    swift_endAccess();
    swift_unknownObjectRelease();

    sub_21729C7F8(v43);
    (*(v29 + 8))(v10, v28);
    return __swift_destroy_boxed_opaque_existential_1(&v37);
  }

  __break(1u);
LABEL_16:
  *v44 = 0;
  *&v44[8] = 0xE000000000000000;
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
  MEMORY[0x21CEA23B0](1835365449, 0xE400000000000000);
  MEMORY[0x21CEA23B0](0xD00000000000003ELL, 0x80000002177AB1E0);
LABEL_18:
  result = sub_217752D08();
  __break(1u);
  return result;
}

unint64_t sub_21729C0E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_217751DE8();
  v6 = sub_21729C1AC(v11, 0, 0, 1, a1, a2);
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
    sub_21721E0AC(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_21729C1AC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21729C2AC(a5, a6);
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
    result = sub_217752B88();
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

void *sub_21729C2AC(uint64_t a1, unint64_t a2)
{
  v3 = sub_21729C2F8(a1, a2);
  sub_21729C410(&unk_282959D80);
  return v3;
}

void *sub_21729C2F8(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
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

  for (; v5; v5 = sub_217752078())
  {
    result = sub_217288D34(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_217752A88();
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

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_217752B88();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
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

void sub_21729C410(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v5 > *(v3 + 3) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    v3 = sub_21729C4F4(isUniquelyReferenced_nonNull_native, v8, 1, v3);
  }

  if (!*(a1 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v9 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v10 = *(v3 + 2);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 2) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

char *sub_21729C4F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24B00, &qword_2177591F0);
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

uint64_t sub_21729C84C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPersonalRecommendation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21729C8B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_43();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_21729C910(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_21729C968(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_99_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_43();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_18_8(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

void OUTLINED_FUNCTION_22_7()
{

  JUMPOUT(0x21CEA4360);
}

uint64_t OUTLINED_FUNCTION_29_7()
{
  v3 = *(v0 + 400);
  *(v0 + 48) = *(v0 + 384);
  *(v0 + 64) = v3;
  *(v0 + 80) = *(v0 + 416);
  *(v0 + 96) = *(v0 + 432);

  return sub_21729C5E8(v1 + 16, v0 + 184);
}

uint64_t OUTLINED_FUNCTION_40_7()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_41_5()
{

  return swift_arrayDestroy();
}

__n128 OUTLINED_FUNCTION_43_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  result = *(&a16 + 1);
  *(v18 + 41) = *(&a16 + 1);
  return result;
}

uint64_t OUTLINED_FUNCTION_46_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_47_4()
{
}

uint64_t OUTLINED_FUNCTION_48_4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2171F50C0(v9, &a9, a1, a2);
}

void OUTLINED_FUNCTION_49_3()
{
  *(v0 + 14) = v1;
  *(v0 + 22) = 1026;
  *(v0 + 24) = v2 & 1;
}

uint64_t OUTLINED_FUNCTION_52_3()
{
  *(v0 + 352) = *(v0 + 256);
  *(v1 + 177) = *(v1 + 81);
  return v2;
}

uint64_t OUTLINED_FUNCTION_56_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_63_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, __int128 a9, __int128 a10, __n128 a12)
{
  *v12 = a9;
  v12[1] = a10;
  result = a12;
  v12[2] = a12;
  return result;
}

void OUTLINED_FUNCTION_64_3()
{
  *(v0 + 14) = v2;
  *(v0 + 22) = 1024;
  *(v0 + 24) = v1;
}

void OUTLINED_FUNCTION_65_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_69_3()
{

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_71_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_73_4()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_74_1@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a7@<X8>)
{

  return sub_217586664(a1, a2, a7);
}

double OUTLINED_FUNCTION_76_2()
{
}

void sub_21729CCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 24))
  {
    v10 = *(a1 + 16);
    v16[0] = *a1;
    v16[1] = v10;
    v16[2] = *(a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2172C7EE4(v16, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native, v12, v13, v14, *v5, *&v16[0], *(&v16[0] + 1));
    *v5 = v15;
  }

  else
  {
    sub_2171F0738(a1, &qword_27CB24B50, &qword_2177595A0);
    sub_2172A4D08(v16);

    sub_2171F0738(v16, &qword_27CB24B50, &qword_2177595A0);
  }
}

_OWORD *sub_21729D124(uint64_t a1, char a2)
{
  if (*(a1 + 24))
  {
    sub_2172124CC(a1, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_2172C84AC(v20, a2 & 1, isUniquelyReferenced_nonNull_native, v5, v6, v7, v8, v9, v17, *v2);
    *v2 = v18;
  }

  else
  {
    sub_2171F0738(a1, &qword_27CB2AD40, &qword_2177583F0);
    v11 = sub_2176327E4(a2 & 1);
    if (v12)
    {
      v13 = v11;
      swift_isUniquelyReferenced_nonNull_native();
      v19 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C80, &unk_217759680);
      sub_217752CB8();
      v14 = sub_2172124CC((*(v19 + 56) + 32 * v13), v20);
      sub_2172A4AFC(v14, v15, v16);
      sub_217752CD8();
      *v2 = v19;
    }

    else
    {
      memset(v20, 0, sizeof(v20));
    }

    return sub_2171F0738(v20, &qword_27CB2AD40, &qword_2177583F0);
  }

  return result;
}

void sub_21729D8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1;
    v39 = MEMORY[0x277D84F90];
    sub_217275C90(0, v7, 0, a4, a5, a6, a7);
    v11 = sub_2172B83A4(v8);
    v12 = 0;
    v13 = v8 + 56;
    v33 = v8 + 64;
    v34 = v8 + 56;
    v35 = v8;
    if ((v11 & 0x8000000000000000) == 0)
    {
      while (v11 < 1 << *(v8 + 32))
      {
        v14 = v11 >> 6;
        if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v8 + 36) != v9)
        {
          goto LABEL_25;
        }

        v38 = v10;
        v36 = v12;
        v37 = v9;
        v15 = (*(v8 + 48) + 16 * v11);
        v16 = *v15;
        v17 = v15[1];
        v19 = *(v39 + 16);
        v18 = *(v39 + 24);
        sub_217751DE8();
        if (v19 >= v18 >> 1)
        {
          sub_217275C90(v18 > 1, v19 + 1, 1, v20, v21, v22, v23);
        }

        *(v39 + 16) = v19 + 1;
        v24 = v39 + 16 * v19;
        *(v24 + 32) = v16;
        *(v24 + 40) = v17;
        if (v38)
        {
          goto LABEL_29;
        }

        v13 = v34;
        v8 = v35;
        v25 = 1 << *(v35 + 32);
        if (v11 >= v25)
        {
          goto LABEL_26;
        }

        v26 = *(v34 + 8 * v14);
        if ((v26 & (1 << v11)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v35 + 36) != v37)
        {
          goto LABEL_28;
        }

        v27 = v26 & (-2 << (v11 & 0x3F));
        if (v27)
        {
          v25 = __clz(__rbit64(v27)) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v28 = v14 << 6;
          v29 = v14 + 1;
          v30 = (v33 + 8 * v14);
          while (v29 < (v25 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              sub_2171FADD4(v11, v37, 0);
              v25 = __clz(__rbit64(v31)) + v28;
              goto LABEL_19;
            }
          }

          sub_2171FADD4(v11, v37, 0);
        }

LABEL_19:
        v12 = v36 + 1;
        if (v36 + 1 == v7)
        {
          return;
        }

        v10 = 0;
        v9 = *(v35 + 36);
        v11 = v25;
        if (v25 < 0)
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
  }
}

uint64_t Genre.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(void *a2@<X1>, uint64_t a3@<X2>, void *a5@<X8>)
{
  v83 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B60, &unk_217759420);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v73 - v8;
  v10 = type metadata accessor for GenrePropertyProvider(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v73 - v15;

  OUTLINED_FUNCTION_135_0(v92);
  v17 = [a2 respondsToSelector_];
  v82 = a2;
  if ((v17 & 1) != 0 && (v18 = [a2 musicKit_modelObjectStorageDictionary]) != 0)
  {
    v19 = v18;
    v20 = sub_217751D98();
  }

  else
  {
    v20 = sub_217751DC8();
  }

  v21 = sub_21729E6F4(v20);

  if (!*(v21 + 16))
  {

    Genre.init(identifierSet:legacyModelObject:)(v82, v83);
    return sub_2171F0738(a3, &qword_27CB27590, &qword_21776ADF0);
  }

  v81 = a3;
  OUTLINED_FUNCTION_135_0(v88);
  if (qword_280BE4BF0 != -1)
  {
    swift_once();
  }

  v86[0] = qword_280BE4BF8;
  v86[1] = unk_280BE4C00;
  LOBYTE(v86[2]) = byte_280BE4C08;
  v85[0] = qword_280BE4BF8;
  v85[1] = unk_280BE4C00;
  LOBYTE(v85[2]) = byte_280BE4C08;
  swift_bridgeObjectRetain_n();
  v93.value.rawValue._countAndFlagsBits = v86;
  v93.value.rawValue._object = v85;
  MusicIdentifierSet.cloudResourceIdentifier(catalogType:libraryType:)(v87, v93, v94);

  countAndFlagsBits = v87[0].type.rawValue._countAndFlagsBits;
  object = v87[0].type.rawValue._object;
  isLibraryType = v87[0].type.isLibraryType;
  v78 = v87[0].href.value._countAndFlagsBits;
  v79 = v87[0].id.rawValue._object;
  v80 = v87[0].href.value._object;
  sub_2171F5110(v81, v87, &qword_27CB27590, &qword_21776ADF0);
  if (!v87[0].type.rawValue._object)
  {
    sub_2171F0738(v87, &qword_27CB27590, &qword_21776ADF0);
    memset(v88, 0, 40);
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24408, &qword_21775A390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD60, &unk_217759470);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v88, 0, 40);
    goto LABEL_16;
  }

  if (!*(&v88[1] + 1))
  {
LABEL_16:
    sub_2171F0738(v88, &qword_27CB24B68, &qword_217759430);
    goto LABEL_17;
  }

  v23 = object;
  sub_2171F3F0C(v88, v89);
  v24 = v90;
  v25 = v91;
  __swift_project_boxed_opaque_existential_1(v89, v90);
  PropertyProviderBackedItem.staticPropertyProvider.getter(v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
    sub_2172A4A44(v9, v13);
    sub_2172A4984(v13, v16);
    memcpy(v88, v92, 0x161uLL);
    v26 = v10[18];
    memcpy(v85, &v13[v26], 0x161uLL);
    memcpy(v84, &v13[v26], sizeof(v84));
    sub_217269EF4(v85, v87);
    MusicIdentifierSet.union(_:)();
    memcpy(v86, v84, 0x161uLL);
    sub_217269F50(v86);
    sub_2172A49E8(v13);
    sub_217269F50(v92);
    v27 = v10[18];
    memcpy(v88, &v16[v27], 0x161uLL);
    sub_217269F50(v88);
    memcpy(&v16[v27], v87, 0x161uLL);
    v28 = &v16[v10[19]];
    sub_217751DE8();

    *v28 = countAndFlagsBits;
    *(v28 + 1) = v23;
    v28[16] = isLibraryType;
    v29 = &v16[v10[20]];

    v30 = v80;
    *v29 = v78;
    v29[1] = v30;
    __swift_destroy_boxed_opaque_existential_1(v89);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v10);
  sub_2171F0738(v9, &qword_27CB24B60, &unk_217759420);
  __swift_destroy_boxed_opaque_existential_1(v89);
  object = v23;
LABEL_17:
  sub_217751DE8();
  v32 = object;
  sub_217751DE8();
  v75 = OUTLINED_FUNCTION_69_4();
  v74 = OUTLINED_FUNCTION_69_4();
  v33 = OUTLINED_FUNCTION_69_4();
  v34 = OUTLINED_FUNCTION_69_4();
  sub_2172A497C(v88);
  memcpy(v16, v88, 0x221uLL);
  *(v16 + 552) = 0u;
  *(v16 + 568) = 0u;
  *(v16 + 73) = 1;
  *(v16 + 37) = 0u;
  *(v16 + 38) = 0u;
  *(v16 + 39) = 0u;
  *(v16 + 80) = 0;
  sub_2177517D8();
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  memcpy(&v16[v10[10]], v88, 0x221uLL);
  v39 = &v16[v10[11]];
  *v39 = 0;
  *(v39 + 1) = 0;
  OUTLINED_FUNCTION_95_2(&v16[v10[12]]);
  sub_2177516D8();
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  v44 = &v16[v10[14]];
  *v44 = 0;
  *(v44 + 1) = 0;
  OUTLINED_FUNCTION_112_2(&v16[v10[15]]);
  *&v16[v10[16]] = 0;
  if (qword_280BE3A58 != -1)
  {
    OUTLINED_FUNCTION_72_3(&qword_280BE3A58);
  }

  v45 = qword_280C01FD0;
  if (qword_280C01FD0 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v73 = sub_217752D28();
    v46 = v80;

    v79 = v45;
    v45 = v73;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
    v46 = v80;
  }

  *&v16[v10[17]] = v45;
  v47 = &v16[v10[20]];
  memcpy(&v16[v10[18]], v92, 0x161uLL);
  v48 = &v16[v10[19]];
  *v48 = countAndFlagsBits;
  *(v48 + 1) = v32;
  v48[16] = isLibraryType;
  *v47 = v78;
  v47[1] = v46;
  v49 = v74;
  *&v16[v10[21]] = v75;
  *&v16[v10[22]] = v49;
  *&v16[v10[23]] = v33;
  *&v16[v10[24]] = v34;
LABEL_22:
  v50 = &v16[v10[11]];
  if (!v50[1])
  {
    OUTLINED_FUNCTION_63_3();
    v52 = sub_2172A3DA0(2, v21, v51);
    if (v53)
    {
      *v50 = v52;
      v50[1] = v53;
    }
  }

  v54 = &v16[v10[14]];
  if (!v54[1])
  {
    OUTLINED_FUNCTION_63_3();
    v56 = sub_2172A3DA0(3, v21, v55);
    if (v57)
    {
      *v54 = v56;
      v54[1] = v57;
    }
  }

  KeyPath = swift_getKeyPath(byte_217759438);
  sub_2173AC988(4, v21);
  if (*(&v88[1] + 1))
  {
    v59 = swift_dynamicCast();
    if (v59)
    {
      v60 = v87[0].id.rawValue._countAndFlagsBits;
    }

    else
    {
      v60 = 0;
    }

    if (v59)
    {
      v61 = v87[0].id.rawValue._object;
    }

    else
    {
      v61 = 0;
    }
  }

  else
  {
    sub_2171F0738(v88, &qword_27CB2AD40, &qword_2177583F0);
    v60 = 0;
    v61 = 0;
  }

  sub_2173AC988(5, v21);
  if (!v86[3])
  {
    sub_2171F0738(v86, &qword_27CB2AD40, &qword_2177583F0);
    if (v61)
    {
      v64 = 0;
      v63 = 0;
      goto LABEL_48;
    }

LABEL_49:

    v87[0].id = xmmword_2177586D0;
    v87[0].type.rawValue = 0u;
    *&v87[0].type.isLibraryType = 0u;
    *&v87[0].href.value._object = 0u;
    goto LABEL_50;
  }

  v62 = swift_dynamicCast();
  if (v62)
  {
    v63 = *&v88[0];
  }

  else
  {
    v63 = 0;
  }

  if (v62)
  {
    v64 = *(&v88[0] + 1);
  }

  else
  {
    v64 = 0;
  }

  if (v61)
  {
    goto LABEL_48;
  }

  if (!v64)
  {
    goto LABEL_49;
  }

  v64 = *(&v88[0] + 1);
LABEL_48:

  v87[0].id.rawValue._countAndFlagsBits = v60;
  v87[0].id.rawValue._object = v61;
  v87[0].type.rawValue._countAndFlagsBits = v63;
  v87[0].type.rawValue._object = v64;
  *&v87[0].type.isLibraryType = 0u;
  *&v87[0].href.value._object = 0u;
LABEL_50:
  v88[0] = v87[0].id;
  v88[1] = v87[0].type.rawValue;
  v88[2] = *&v87[0].type.isLibraryType;
  v88[3] = *&v87[0].href.value._object;
  sub_2172A06E0(KeyPath, v88, 0);

  sub_2171F0738(v87, &qword_27CB24B70, &unk_217759460);
  v65 = v83;
  v83[5] = v10;
  v65[6] = &protocol witness table for GenrePropertyProvider;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v65 + 2);
  sub_2172A4984(v16, boxed_opaque_existential_0);
  swift_unknownObjectRelease();
  v67 = (boxed_opaque_existential_0 + v10[18]);
  v69 = *v67;
  v68 = v67[1];
  sub_217751DE8();
  sub_2171F0738(v81, &qword_27CB27590, &qword_21776ADF0);
  *v65 = v69;
  v65[1] = v68;
  return sub_2172A49E8(v16);
}

uint64_t Genre.init(identifierSet:legacyModelObject:)@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - v6;
  v8 = type metadata accessor for GenrePropertyProvider(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_135_0(v62);
  v12 = [a1 respondsToSelector_];
  v54 = a1;
  if ((v12 & 1) != 0 && (v13 = [a1 musicKit_modelObjectStorageDictionary]) != 0)
  {
    v14 = v13;
    v15 = sub_217751D98();
  }

  else
  {
    v15 = sub_217751DC8();
  }

  v52 = v7;
  v51 = sub_21729E4EC(v15);

  OUTLINED_FUNCTION_135_0(v61);
  if (qword_280BE4A88 != -1)
  {
    OUTLINED_FUNCTION_30_8(&qword_280BE4A88);
  }

  v58[0] = qword_280BE4A90;
  v58[1] = *algn_280BE4A98;
  v59 = byte_280BE4AA0;
  v56[0] = qword_280BE4A90;
  v56[1] = *algn_280BE4A98;
  v57 = byte_280BE4AA0;
  swift_bridgeObjectRetain_n();
  v63.value.rawValue._countAndFlagsBits = v58;
  v63.value.rawValue._object = v56;
  MusicIdentifierSet.cloudResourceIdentifier(catalogType:libraryType:)(&v60, v63, v64);

  object = v60.id.rawValue._object;
  countAndFlagsBits = v60.type.rawValue._countAndFlagsBits;
  v16 = v60.type.rawValue._object;
  isLibraryType = v60.type.isLibraryType;
  v17 = v60.href.value._object;
  v48 = v60.href.value._countAndFlagsBits;
  sub_217751DE8();
  sub_217751DE8();
  v47 = OUTLINED_FUNCTION_70_3();
  v46 = OUTLINED_FUNCTION_70_3();
  v45 = OUTLINED_FUNCTION_70_3();
  v44 = OUTLINED_FUNCTION_70_3();
  sub_2172A497C(v61);
  memcpy(v11, v61, 0x221uLL);
  *(v11 + 552) = 0u;
  *(v11 + 568) = 0u;
  *(v11 + 73) = 1;
  *(v11 + 37) = 0u;
  *(v11 + 38) = 0u;
  *(v11 + 39) = 0u;
  *(v11 + 80) = 0;
  v18 = v8[9];
  v19 = sub_2177517D8();
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  memcpy(&v11[v8[10]], v61, 0x221uLL);
  v23 = &v11[v8[11]];
  *v23 = 0;
  v23[1] = 0;
  OUTLINED_FUNCTION_95_2(&v11[v8[12]]);
  sub_2177516D8();
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  v28 = &v11[v8[14]];
  *v28 = 0;
  *(v28 + 1) = 0;
  OUTLINED_FUNCTION_112_2(&v11[v8[15]]);
  *&v11[v8[16]] = 0;
  if (qword_280BE3A58 != -1)
  {
    OUTLINED_FUNCTION_72_3(&qword_280BE3A58);
  }

  v29 = qword_280C01FD0;
  if (qword_280C01FD0 >> 62)
  {
    v41 = qword_280C01FD0 & 0xFFFFFFFFFFFFFF8;
    if (qword_280C01FD0 < 0)
    {
      v41 = qword_280C01FD0;
    }

    v42 = v41;
    type metadata accessor for AnyMusicProperty();
    OUTLINED_FUNCTION_5_4();
    sub_217751DE8();
    v42 = sub_217752D28();

    object = v29;
    v29 = v42;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  *&v11[v8[17]] = v29;
  v30 = &v11[v8[20]];
  memcpy(&v11[v8[18]], v62, 0x161uLL);
  v31 = &v11[v8[19]];
  *v31 = countAndFlagsBits;
  *(v31 + 1) = v16;
  v31[16] = isLibraryType;
  v32 = v47;
  *v30 = v48;
  v30[1] = v17;
  *&v11[v8[21]] = v32;
  v33 = v45;
  *&v11[v8[22]] = v46;
  *&v11[v8[23]] = v33;
  *&v11[v8[24]] = v44;
  v34 = v51;
  v35 = sub_2172A3798(0, v51);
  if (v36)
  {
    *v23 = v35;
    v23[1] = v36;
  }

  v37 = v52;
  sub_2172A36E4(1, v34, v52);

  if (__swift_getEnumTagSinglePayload(v37, 1, v19) != 1)
  {
    v38 = v43;
    sub_2171F5110(v37, v43, &qword_27CB241C0, &qword_217759480);
    sub_2171F0738(&v11[v18], &qword_27CB241C0, &qword_217759480);
    sub_217260E5C(v38, &v11[v18]);
  }

  sub_2171F0738(v37, &qword_27CB241C0, &qword_217759480);
  v60.type.rawValue._object = v8;
  *&v60.type.isLibraryType = &protocol witness table for GenrePropertyProvider;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v60.id.rawValue._countAndFlagsBits);
  sub_2172A4984(v11, boxed_opaque_existential_0);
  Genre.init(propertyProvider:)(&v60, v53);
  swift_unknownObjectRelease();
  return sub_2172A49E8(v11);
}

void sub_2172A06E0(uint64_t a1, __int128 *a2, char a3)
{
  v4 = *(a2 + 1);
  if ((a3 & 1) == 0)
  {
    OUTLINED_FUNCTION_56_0();
    v5 = swift_getAtKeyPath();
    if (*(&v23 + 1) != 1)
    {
      OUTLINED_FUNCTION_130_0(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17, v18, v19, v20, v21, v22, v23, *(&v23 + 1), v24, *(&v24 + 1), v25);
      sub_2171F0738(&v15, &qword_27CB24B70, &unk_217759460);
      return;
    }

    OUTLINED_FUNCTION_130_0(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17, v18, v19, v20, v21, v22, v23, 1, v24, *(&v24 + 1), v25);
    sub_2171F0738(&v15, &qword_27CB24B70, &unk_217759460);
  }

  if (v4 != 1)
  {
    v13 = a2[1];
    v23 = *a2;
    v24 = v13;
    v14 = a2[3];
    v25 = a2[2];
    v26 = v14;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    OUTLINED_FUNCTION_56_0();
    swift_setAtWritableKeyPath();
  }
}

void sub_2172A07D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    OUTLINED_FUNCTION_56_0();
    swift_getAtKeyPath();
    if (v6)
    {

      return;
    }
  }

  if (a3)
  {
    sub_217751DE8();
    OUTLINED_FUNCTION_56_0();
    swift_setAtWritableKeyPath();
  }
}

void sub_2172A0858(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 || (OUTLINED_FUNCTION_56_0(), swift_getAtKeyPath(), v4 = v5[56], sub_2171F0738(v5, &qword_27CB27D20, &qword_217758B80), v4 == 255))
  {
    if (*(a2 + 56) != 255)
    {
      sub_2171F5110(a2, v5, &qword_27CB27D20, &qword_217758B80);
      OUTLINED_FUNCTION_56_0();
      swift_setAtWritableKeyPath();
    }
  }
}

void sub_2172A08F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) != 0 || (OUTLINED_FUNCTION_56_0(), swift_getAtKeyPath(), !v5))
  {
    if (a3)
    {
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_56_0();
      swift_setAtWritableKeyPath();
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_2172A0968(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 || (OUTLINED_FUNCTION_56_0(), swift_getAtKeyPath(), v4 = v6, sub_2171F0738(v5, &qword_27CB24BA8, &unk_217772FF0), !v4))
  {
    if (*(a2 + 24))
    {
      sub_2171F5110(a2, v5, &qword_27CB24BA8, &unk_217772FF0);
      OUTLINED_FUNCTION_56_0();
      swift_setAtWritableKeyPath();
    }
  }
}

uint64_t Genre.convertToRawDictionary(for:)()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = OUTLINED_FUNCTION_5_4();
  v3(v2, v1);
  __swift_project_boxed_opaque_existential_1(&v97, v99);
  v4 = OUTLINED_FUNCTION_5_4();
  v5(v4);
  __swift_destroy_boxed_opaque_existential_1(&v97);
  if (qword_280BE4A88 != -1)
  {
    OUTLINED_FUNCTION_30_8(&qword_280BE4A88);
  }

  if (v86 == qword_280BE4A90 && v87 == *algn_280BE4A98)
  {

    goto LABEL_20;
  }

  v7 = sub_217753058();

  if (v7)
  {
LABEL_20:
    v40 = Genre.convertToSimpleLegacyModelStorageDictionary()();
    sub_2172A0FAC(v40);
    goto LABEL_33;
  }

  sub_2172A4AA8(v8, v9, v10);
  v101 = sub_217751DC8();
  v11 = objc_opt_self();
  v12 = [v11 rawValueForKind_];
  v13 = MEMORY[0x277D83B88];
  v99 = MEMORY[0x277D83B88];
  v97 = v12;
  sub_21729D33C(&v97, 0, v14, v15, v16, v17, v18, v19, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, *(&v94 + 1));
  if (qword_280BE6A88 != -1)
  {
    OUTLINED_FUNCTION_71(&qword_280BE6A88);
  }

  v20 = MEMORY[0x277D837D0];
  v21 = sub_2172A3F28();
  if (v22)
  {
    v29 = v21;
  }

  else
  {
    v29 = 0;
  }

  v30 = 0xE000000000000000;
  v99 = v20;
  if (v22)
  {
    v30 = v22;
  }

  v97 = v29;
  v98 = v30;
  sub_21729D33C(&v97, 2, v23, v24, v25, v26, v27, v28, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, *(&v94 + 1));
  if (qword_280BE6AF8 != -1)
  {
    swift_once();
  }

  v31 = sub_2172A3F28();
  if (v32)
  {
    v39 = MEMORY[0x277D837D0];
  }

  else
  {
    v31 = 0;
    v39 = 0;
    v100[2] = 0;
  }

  v100[0] = v31;
  v100[1] = v32;
  v100[3] = v39;
  sub_21729D33C(v100, 3, v33, v34, v35, v36, v37, v38, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, *(&v94 + 1));
  if (qword_280BE6AD0 != -1)
  {
    swift_once();
  }

  v49 = qword_280C02228;
  sub_2176CAE24(qword_280C02228, v42, v43, v44, v45, v46, v47, v48, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, *(&v94 + 1), v95, *(&v95 + 1), v96, v97);
  v56 = v98;
  if (v98 == 1 || (v57 = v97, sub_217751DE8(), sub_2171F0738(&v97, &qword_27CB24B70, &unk_217759460), !v56))
  {
    v94 = 0u;
    v95 = 0u;
  }

  else
  {
    *(&v95 + 1) = v20;
    *&v94 = v57;
    *(&v94 + 1) = v56;
  }

  sub_21729D33C(&v94, 4, v50, v51, v52, v53, v54, v55, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, *(&v94 + 1));
  sub_2176CAE24(v49, v58, v59, v60, v61, v62, v63, v64, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, *(&v94 + 1), v95, *(&v95 + 1), v96, v97);
  if (v87 == 1 || (v66 = v88, v65 = v89, sub_217751DE8(), sub_2171F0738(&v86, &qword_27CB24B70, &unk_217759460), !v65))
  {
    OUTLINED_FUNCTION_94_0();
  }

  else
  {
    v85 = v20;
    v82 = v66;
    v83 = v65;
  }

  sub_21729D33C(&v82, 5, v67, v68, v69, v70, v71, v72, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, *(&v94 + 1));
  v73 = [v11 rawValueForSubKind_];
  sub_21729D33C(&v82, 6, v74, v75, v76, v77, v78, v79, v73, v83, v84, v13, v86, v87, v88, v89, v90, v91, v92, v93, v94, *(&v94 + 1));
  sub_2172A1284(v101);
LABEL_33:
  v80 = v41;

  return v80;
}

void sub_2172A0FAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v40 = MEMORY[0x277D84F90];
    sub_217276678(0, v1, 0);
    v2 = v40;
    v5 = sub_2172A4F50(a1);
    v7 = v6;
    v8 = 0;
    v9 = a1 + 64;
    v27 = v6;
    v28 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v10 = v5 >> 6;
      if ((*(v9 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_27;
      }

      if (*(a1 + 36) != v7)
      {
        goto LABEL_28;
      }

      v29 = v4;
      v11 = *(a1 + 56);
      v36 = *(*(a1 + 48) + v5);
      sub_21721E0AC(v11 + 32 * v5, v37);
      v32 = v36;
      sub_2172124CC(v37, &v33);
      if (v32)
      {
        v12 = 0xD000000000000024;
      }

      else
      {
        v12 = 0xD000000000000018;
      }

      v13 = "MPModelPropertyGenreName";
      if (!v32)
      {
        v13 = "toreAssetEndpointType";
      }

      *&v38 = v12;
      *(&v38 + 1) = v13 | 0x8000000000000000;
      *(&v30[0] + 1) = v33;
      v30[1] = v34;
      v31 = v35;
      sub_2172124CC((v30 + 8), v39);
      v40 = v2;
      v15 = *(v2 + 16);
      v14 = *(v2 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_217276678((v14 > 1), v15 + 1, 1);
        v2 = v40;
      }

      *(v2 + 16) = v15 + 1;
      v16 = (v2 + 48 * v15);
      v17 = v38;
      v18 = v39[1];
      v16[3] = v39[0];
      v16[4] = v18;
      v16[2] = v17;
      v19 = 1 << *(a1 + 32);
      if (v5 >= v19)
      {
        goto LABEL_29;
      }

      v9 = a1 + 64;
      v20 = *(a1 + 64 + 8 * v10);
      if ((v20 & (1 << v5)) == 0)
      {
        goto LABEL_30;
      }

      if (*(a1 + 36) != v7)
      {
        goto LABEL_31;
      }

      v21 = v20 & (-2 << (v5 & 0x3F));
      if (v21)
      {
        v19 = __clz(__rbit64(v21)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v10 << 6;
        v23 = v10 + 1;
        v24 = (a1 + 72 + 8 * v10);
        while (v23 < (v19 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            sub_2171FADD4(v5, v7, v29 & 1);
            v19 = __clz(__rbit64(v25)) + v22;
            goto LABEL_24;
          }
        }

        sub_2171FADD4(v5, v7, v29 & 1);
      }

LABEL_24:
      v4 = 0;
      ++v8;
      v5 = v19;
      v7 = v27;
      if (v8 == v28)
      {
        goto LABEL_25;
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
LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_25:
    sub_2175FC8CC(v2);
  }
}

void sub_2172A1284(uint64_t a1)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    OUTLINED_FUNCTION_89_3();
    v27 = v7;
    sub_217276678(0, v5, 0);
    v6 = v34;
    v8 = sub_2172A4F50(v27);
    OUTLINED_FUNCTION_32_6();
    OUTLINED_FUNCTION_98_3();
    OUTLINED_FUNCTION_99_4();
    while ((v8 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_55_3();
      if (v9 == v10)
      {
        break;
      }

      OUTLINED_FUNCTION_31_5();
      if (v11)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_116_2();
      if (!v11)
      {
        goto LABEL_32;
      }

      v26 = v12;
      v14 = *(v13 + 56);
      v32 = *(*(v13 + 48) + v8);
      sub_21721E0AC(v14 + 32 * v8, v33);
      LOBYTE(v30[0]) = v32;
      sub_2172124CC(v33, (v30 + 8));
      v15 = 0xD00000000000001ALL;
      switch(LOBYTE(v30[0]))
      {
        case 1:
          OUTLINED_FUNCTION_79_4();
          v15 = v16 + 3;
          break;
        case 2:
          OUTLINED_FUNCTION_79_4();
          break;
        case 3:
          OUTLINED_FUNCTION_79_4();
          v15 = v18 + 6;
          break;
        case 4:
          OUTLINED_FUNCTION_79_4();
          v15 = v17 + 13;
          break;
        case 5:
          OUTLINED_FUNCTION_79_4();
          v15 = v19 + 8;
          break;
        case 6:
          OUTLINED_FUNCTION_79_4();
          v15 = v20 + 4;
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_87_5(v15);
      v28[0] = v30[0];
      v28[1] = v30[1];
      v29 = v31;
      OUTLINED_FUNCTION_15_15(v28);
      if (v22)
      {
        OUTLINED_FUNCTION_23_11(v21);
        v6 = v34;
      }

      OUTLINED_FUNCTION_9_10();
      OUTLINED_FUNCTION_54_4();
      if (v9 == v10)
      {
        goto LABEL_33;
      }

      if ((*(v3 + 8 * v2) & v1) == 0)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_111_1();
      if (!v11)
      {
        goto LABEL_35;
      }

      if ((v23 & (-2 << (v8 & 0x3F))) != 0)
      {
        OUTLINED_FUNCTION_13_10();
      }

      else
      {
        OUTLINED_FUNCTION_16_13();
        if (v25 >= v24)
        {
          OUTLINED_FUNCTION_41_6(v26);
        }

        else
        {
          OUTLINED_FUNCTION_51_3();
          OUTLINED_FUNCTION_41_6(v26);
          OUTLINED_FUNCTION_50_3();
        }
      }

      OUTLINED_FUNCTION_35_2();
      if (v4 == v5)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
LABEL_29:
    sub_2175FC8CC(v6);
  }
}

void sub_2172A1588(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v44 = MEMORY[0x277D84F90];
    sub_217276678(0, v3, 0);
    v5 = v44;
    v7 = sub_2172A4F50(a1);
    v9 = v8;
    v10 = 0;
    v33 = a1 + 64;
    v29 = v8;
    v30 = v3;
    v11 = 1;
    while ((v7 & 0x8000000000000000) == 0 && v7 < v11 << *(a1 + 32))
    {
      v12 = v7 >> 6;
      v13 = v11 << v7;
      if ((*(v33 + 8 * (v7 >> 6)) & (v11 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_24;
      }

      v32 = v6;
      v14 = *(a1 + 56);
      v40 = *(*(a1 + 48) + v7);
      sub_21721E0AC(v14 + 32 * v7, v41);
      v36 = v40;
      v15 = sub_2172124CC(v41, &v37);
      v42.n128_u64[0] = a2(v15);
      v42.n128_u64[1] = v16;
      *(&v34[0] + 1) = v37;
      v34[1] = v38;
      v35 = v39;
      sub_2172124CC((v34 + 8), v43);
      v17 = v5;
      v44 = v5;
      v19 = *(v5 + 16);
      v18 = *(v5 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_217276678((v18 > 1), v19 + 1, 1);
        v17 = v44;
      }

      *(v17 + 16) = v19 + 1;
      OUTLINED_FUNCTION_77_2((v17 + 48 * v19), v42, v43[0], v43[1]);
      v21 = 1 << *(a1 + 32);
      if (v7 >= v21)
      {
        goto LABEL_25;
      }

      if ((*(v33 + 8 * v12) & v13) == 0)
      {
        goto LABEL_26;
      }

      v5 = v20;
      if (*(a1 + 36) != v9)
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_101_1();
      if (v23)
      {
        v24 = v12 << 6;
        v25 = v12 + 1;
        v26 = (a1 + 72 + 8 * v12);
        while (v25 < (v21 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            sub_2171FADD4(v7, v9, v32 & 1);
            v11 = 1;
            v21 = __clz(__rbit64(v27)) + v24;
            goto LABEL_19;
          }
        }

        sub_2171FADD4(v7, v9, v32 & 1);
        v11 = 1;
      }

      else
      {
        v21 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

LABEL_19:
      v6 = 0;
      ++v10;
      v7 = v21;
      v9 = v29;
      if (v10 == v30)
      {
        v4 = v5;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    sub_2175FC8CC(v4);
  }
}

void sub_2172A184C(uint64_t a1)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    OUTLINED_FUNCTION_89_3();
    v28 = v7;
    sub_217276678(0, v5, 0);
    v6 = v35;
    v8 = sub_2172A4F50(v28);
    OUTLINED_FUNCTION_32_6();
    OUTLINED_FUNCTION_98_3();
    OUTLINED_FUNCTION_99_4();
    while ((v8 & 0x8000000000000000) == 0)
    {
      OUTLINED_FUNCTION_55_3();
      if (v9 == v10)
      {
        break;
      }

      OUTLINED_FUNCTION_31_5();
      if (v11)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_116_2();
      if (!v11)
      {
        goto LABEL_33;
      }

      v27 = v12;
      v14 = *(v13 + 56);
      v33 = *(*(v13 + 48) + v8);
      sub_21721E0AC(v14 + 32 * v8, v34);
      LOBYTE(v31[0]) = v33;
      sub_2172124CC(v34, (v31 + 8));
      v15 = 0xD000000000000022;
      switch(LOBYTE(v31[0]))
      {
        case 1:
          OUTLINED_FUNCTION_45_6();
          v15 = v16 + 7;
          break;
        case 2:
          OUTLINED_FUNCTION_45_6();
          v15 = v17 + 14;
          break;
        case 3:
        case 4:
          OUTLINED_FUNCTION_45_6();
          break;
        case 5:
          OUTLINED_FUNCTION_45_6();
          v15 = v19 + 20;
          break;
        case 6:
          OUTLINED_FUNCTION_45_6();
          v15 = v20 + 8;
          break;
        case 7:
          OUTLINED_FUNCTION_45_6();
          v15 = v18 + 17;
          break;
        case 8:
          OUTLINED_FUNCTION_45_6();
          v15 = v21 + 12;
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_87_5(v15);
      v29[0] = v31[0];
      v29[1] = v31[1];
      v30 = v32;
      OUTLINED_FUNCTION_15_15(v29);
      if (v23)
      {
        OUTLINED_FUNCTION_23_11(v22);
        v6 = v35;
      }

      OUTLINED_FUNCTION_9_10();
      OUTLINED_FUNCTION_54_4();
      if (v9 == v10)
      {
        goto LABEL_34;
      }

      if ((*(v3 + 8 * v2) & v1) == 0)
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_111_1();
      if (!v11)
      {
        goto LABEL_36;
      }

      if ((v24 & (-2 << (v8 & 0x3F))) != 0)
      {
        OUTLINED_FUNCTION_13_10();
      }

      else
      {
        OUTLINED_FUNCTION_16_13();
        if (v26 >= v25)
        {
          OUTLINED_FUNCTION_41_6(v27);
        }

        else
        {
          OUTLINED_FUNCTION_51_3();
          OUTLINED_FUNCTION_41_6(v27);
          OUTLINED_FUNCTION_50_3();
        }
      }

      OUTLINED_FUNCTION_35_2();
      if (v4 == v5)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
LABEL_30:
    sub_2175FC8CC(v6);
  }
}

void sub_2172A1B58(uint64_t a1)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    OUTLINED_FUNCTION_89_3();
    sub_217276678(0, v5, 0);
    v6 = v43;
    sub_2172A4F50(a1);
    OUTLINED_FUNCTION_106_2();
    v31 = v8;
    OUTLINED_FUNCTION_98_3();
    OUTLINED_FUNCTION_99_4();
    v32 = v1;
    while ((v2 & 0x8000000000000000) == 0 && v2 < 1 << *(a1 + 32))
    {
      v10 = v2 >> 6;
      v11 = 1 << v2;
      if ((*(v1 + 8 * (v2 >> 6)) & (1 << v2)) == 0)
      {
        goto LABEL_32;
      }

      if (*(a1 + 36) != v3)
      {
        goto LABEL_33;
      }

      v33 = v9;
      v12 = *(a1 + 56);
      v40 = *(*(a1 + 48) + v2);
      sub_21721E0AC(v12 + 32 * v2, v41);
      v36 = v40;
      sub_2172124CC(v41, &v37);
      v13 = 0xD00000000000001CLL;
      switch(v36)
      {
        case 1:
        case 6:
        case 7:
          OUTLINED_FUNCTION_45_6();
          break;
        case 2:
          OUTLINED_FUNCTION_45_6();
          v13 = v18 + 4;
          break;
        case 3:
          OUTLINED_FUNCTION_45_6();
          v13 = v19 + 14;
          break;
        case 4:
          OUTLINED_FUNCTION_45_6();
          v13 = v15 + 9;
          break;
        case 5:
          OUTLINED_FUNCTION_45_6();
          v13 = v20 + 18;
          break;
        case 8:
          OUTLINED_FUNCTION_45_6();
          v13 = v22 - 2;
          break;
        case 9:
          OUTLINED_FUNCTION_45_6();
          v13 = v17 + 3;
          break;
        case 10:
          OUTLINED_FUNCTION_45_6();
          v13 = v21 + 6;
          break;
        case 11:
          OUTLINED_FUNCTION_45_6();
          v13 = v14 - 6;
          break;
        case 12:
        case 13:
          OUTLINED_FUNCTION_45_6();
          v13 = v16 - 1;
          break;
        default:
          break;
      }

      OUTLINED_FUNCTION_87_5(v13);
      *(&v34[0] + 1) = v37;
      v34[1] = v38;
      v35 = v39;
      sub_2172124CC((v34 + 8), v42);
      v43 = v6;
      OUTLINED_FUNCTION_104_2();
      if (v24)
      {
        OUTLINED_FUNCTION_23_11(v23);
        v6 = v43;
      }

      OUTLINED_FUNCTION_105_4();
      OUTLINED_FUNCTION_77_2(v25, v41[2], v42[0], v42[1]);
      if (v2 >= 1 << *(a1 + 32))
      {
        goto LABEL_34;
      }

      v1 = v32;
      v26 = *(v32 + 8 * v10);
      if ((v26 & v11) == 0)
      {
        goto LABEL_35;
      }

      if (*(a1 + 36) != v3)
      {
        goto LABEL_36;
      }

      if ((v26 & (-2 << (v2 & 0x3F))) != 0)
      {
        OUTLINED_FUNCTION_13_10();
      }

      else
      {
        OUTLINED_FUNCTION_16_13();
        v29 = (a1 + 72 + 8 * v10);
        do
        {
          if (v28 >= v27)
          {
            break;
          }

          v30 = *v29++;
          v11 += 64;
          ++v28;
        }

        while (!v30);
        OUTLINED_FUNCTION_41_6(v33);
      }

      OUTLINED_FUNCTION_35_2();
      v3 = v31;
      if (v4 == v5)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
LABEL_30:
    sub_2175FC8CC(v6);
  }
}

void sub_2172A211C(uint64_t a1)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    OUTLINED_FUNCTION_89_3();
    sub_217276678(0, v5, 0);
    v6 = v40;
    sub_2172A4F50(a1);
    OUTLINED_FUNCTION_106_2();
    v27 = v9;
    v28 = v5;
    v10 = 1;
    v29 = v1;
    while ((v2 & 0x8000000000000000) == 0 && v2 < v10 << *(a1 + 32))
    {
      v11 = v2 >> 6;
      v12 = v10 << v2;
      if ((*(v1 + 8 * (v2 >> 6)) & (v10 << v2)) == 0)
      {
        goto LABEL_27;
      }

      if (*(a1 + 36) != v3)
      {
        goto LABEL_28;
      }

      v30 = v8;
      v13 = *(a1 + 56);
      v37 = *(*(a1 + 48) + v2);
      sub_21721E0AC(v13 + 32 * v2, v38);
      v33 = v37;
      sub_2172124CC(v38, &v34);
      if (v33)
      {
        if (v33 == 1)
        {
          OUTLINED_FUNCTION_92_1();
          v15 = v14 + 8;
        }

        else
        {
          OUTLINED_FUNCTION_92_1();
        }
      }

      else
      {
        OUTLINED_FUNCTION_92_1();
        v15 = v16 + 6;
      }

      OUTLINED_FUNCTION_87_5(v15);
      *(&v31[0] + 1) = v34;
      v31[1] = v35;
      v32 = v36;
      sub_2172124CC((v31 + 8), v39);
      v40 = v6;
      OUTLINED_FUNCTION_104_2();
      if (v18)
      {
        OUTLINED_FUNCTION_23_11(v17);
        v6 = v40;
      }

      OUTLINED_FUNCTION_105_4();
      OUTLINED_FUNCTION_77_2(v19, v38[2], v39[0], v39[1]);
      OUTLINED_FUNCTION_132_0();
      if (v20 == v21)
      {
        goto LABEL_29;
      }

      v1 = v29;
      if ((*(v29 + 8 * v11) & v12) == 0)
      {
        goto LABEL_30;
      }

      if (*(a1 + 36) != v3)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_101_1();
      if (v22)
      {
        OUTLINED_FUNCTION_16_13();
        v25 = (a1 + 72 + 8 * v11);
        do
        {
          if (v24 >= v23)
          {
            break;
          }

          v26 = *v25++;
          v12 += 64;
          ++v24;
        }

        while (!v26);
        OUTLINED_FUNCTION_41_6(v30);
      }

      else
      {
        OUTLINED_FUNCTION_13_10();
      }

      OUTLINED_FUNCTION_35_2();
      v3 = v27;
      if (v4 == v28)
      {
        goto LABEL_25;
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
LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_25:
    sub_2175FC8CC(v6);
  }
}

void sub_2172A238C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v32 = MEMORY[0x277D84F90];
    sub_217276678(0, v1, 0);
    v2 = v32;
    v5 = sub_2172A4F50(a1);
    v7 = v6;
    v8 = 0;
    v9 = a1 + 64;
    v25 = v1;
    v24 = v6;
    v10 = 1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < v10 << *(a1 + 32))
    {
      v11 = v5 >> 6;
      v12 = v10 << v5;
      if ((*(v9 + 8 * (v5 >> 6)) & (v10 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v7)
      {
        goto LABEL_24;
      }

      v26 = v4;
      sub_21721E0AC(*(a1 + 56) + 32 * v5, v29);
      sub_2172124CC(v29, v28);
      v30.n128_u64[0] = 0xD000000000000028;
      v30.n128_u64[1] = 0x80000002177AA020;
      v27[0] = v28[0];
      v27[1] = v28[1];
      sub_2172124CC(v27, v31);
      v32 = v2;
      OUTLINED_FUNCTION_104_2();
      if (v14)
      {
        sub_217276678((v13 > 1), v1, 1);
        v2 = v32;
      }

      OUTLINED_FUNCTION_105_4();
      OUTLINED_FUNCTION_77_2(v15, v30, v31[0], v31[1]);
      OUTLINED_FUNCTION_132_0();
      if (v16 == v17)
      {
        goto LABEL_25;
      }

      if ((*(v9 + 8 * v11) & v12) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v7)
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_101_1();
      if (v18)
      {
        v19 = v11 << 6;
        v20 = v11 + 1;
        v21 = (a1 + 72 + 8 * v11);
        while (v20 < (v1 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            OUTLINED_FUNCTION_41_6(v26);
            v10 = 1;
            v1 = __clz(__rbit64(v22)) + v19;
            goto LABEL_20;
          }
        }

        OUTLINED_FUNCTION_41_6(v26);
        v10 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_13_10();
      }

LABEL_20:
      v4 = 0;
      ++v8;
      v5 = v1;
      v7 = v24;
      v1 = v25;
      if (v8 == v25)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    sub_2175FC8CC(v2);
  }
}

void Genre.underlyingLegacyModelObjectType.getter(char *a1@<X8>)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  OUTLINED_FUNCTION_75_2();
  v5(v3, v4);
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v6 = OUTLINED_FUNCTION_5_4();
  v7(v6);
  __swift_destroy_boxed_opaque_existential_1(v13);
  v9 = v13[5];
  v8 = v13[6];
  if (qword_280BE4A88 != -1)
  {
    OUTLINED_FUNCTION_30_8(&qword_280BE4A88);
  }

  if (v9 == qword_280BE4A90 && v8 == *algn_280BE4A98)
  {

    v12 = 8;
  }

  else
  {
    v11 = sub_217753058();

    if (v11)
    {
      v12 = 8;
    }

    else
    {
      v12 = 1;
    }
  }

  *a1 = v12;
}

void Genre.SimpleLegacyModelGenrePropertyKey.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_217752DC8();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

unint64_t Genre.SimpleLegacyModelGenrePropertyKey.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000024;
  }

  else
  {
    return 0xD000000000000018;
  }
}

unint64_t sub_2172A2B70@<X0>(unint64_t *a1@<X8>)
{
  result = Genre.SimpleLegacyModelGenrePropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_2172A2B9C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v95 = *v2;
  v97 = Genre.convertToSimpleLegacyModelStorageDictionary()();
  v115[3] = &type metadata for Genre;
  v115[4] = &protocol witness table for Genre;
  OUTLINED_FUNCTION_197();
  v115[0] = swift_allocObject();
  sub_217284130(v1, v115[0] + 16);
  v3 = OUTLINED_FUNCTION_131_2();
  v4 = OUTLINED_FUNCTION_33_6(v3);
  sub_21729C5E8(v4, __src);
  OUTLINED_FUNCTION_38_1(__src);
  v5 = OUTLINED_FUNCTION_36_5();
  v6(v5);
  sub_21729C644(__src);
  memcpy(v117, v116, 0x161uLL);
  v7 = OUTLINED_FUNCTION_131_2();
  __swift_destroy_boxed_opaque_existential_1(v7);
  v8 = v117[2];
  v9 = v117[3];
  v10 = v117[4];
  sub_217751DE8();
  sub_217269F50(v117);
  if (v9)
  {
    v116[0] = v8;
    v116[1] = v9;
    LOBYTE(v116[2]) = v10;
    v99 = sub_21750D924();
  }

  else
  {
    v99 = 0;
  }

  __src[3] = &type metadata for Genre;
  __src[4] = &protocol witness table for Genre;
  OUTLINED_FUNCTION_197();
  __src[0] = swift_allocObject();
  OUTLINED_FUNCTION_97_2(__src[0]);
  v11 = OUTLINED_FUNCTION_33_6(__src);
  sub_21729C5E8(v11, __dst);
  OUTLINED_FUNCTION_38_1(__dst);
  v12 = OUTLINED_FUNCTION_36_5();
  v13(v12);
  sub_21729C644(__dst);
  memcpy(v116, v115, 0x161uLL);
  __swift_destroy_boxed_opaque_existential_1(__src);
  v14 = v116[6];
  sub_217751DE8();
  sub_217269F50(v116);
  if (v14)
  {
    OUTLINED_FUNCTION_56_0();
    v98 = sub_217751F18();
  }

  else
  {
    v98 = 0;
  }

  __dst[3] = &type metadata for Genre;
  __dst[4] = &protocol witness table for Genre;
  OUTLINED_FUNCTION_197();
  __dst[0] = swift_allocObject();
  OUTLINED_FUNCTION_97_2(__dst[0]);
  v15 = OUTLINED_FUNCTION_33_6(__dst);
  sub_21729C5E8(v15, v112);
  OUTLINED_FUNCTION_38_1(v112);
  v16 = OUTLINED_FUNCTION_36_5();
  v17(v16);
  sub_21729C644(v112);
  v18 = OUTLINED_FUNCTION_131_2();
  memcpy(v18, __src, 0x161uLL);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  v19 = v115[8];
  sub_217751DE8();
  v20 = OUTLINED_FUNCTION_131_2();
  sub_217269F50(v20);
  if (v19)
  {
    OUTLINED_FUNCTION_56_0();
    v94 = sub_217751F18();
  }

  else
  {
    v94 = 0;
  }

  v112[3] = &type metadata for Genre;
  v112[4] = &protocol witness table for Genre;
  OUTLINED_FUNCTION_197();
  v112[0] = swift_allocObject();
  OUTLINED_FUNCTION_97_2(v112[0]);
  v21 = OUTLINED_FUNCTION_33_6(v112);
  sub_21729C5E8(v21, v111);
  OUTLINED_FUNCTION_38_1(v111);
  v22 = OUTLINED_FUNCTION_36_5();
  v23(v22);
  sub_21729C644(v111);
  memcpy(__src, __dst, 0x161uLL);
  __swift_destroy_boxed_opaque_existential_1(v112);
  v24 = __src[10];
  sub_217751DE8();
  sub_217269F50(__src);
  if (v24)
  {
    OUTLINED_FUNCTION_56_0();
    v93 = sub_217751F18();
  }

  else
  {
    v93 = 0;
  }

  v111[3] = &type metadata for Genre;
  v111[4] = &protocol witness table for Genre;
  OUTLINED_FUNCTION_197();
  v111[0] = swift_allocObject();
  OUTLINED_FUNCTION_97_2(v111[0]);
  v25 = OUTLINED_FUNCTION_33_6(v111);
  sub_21729C5E8(v25, v110);
  OUTLINED_FUNCTION_38_1(v110);
  v26 = OUTLINED_FUNCTION_36_5();
  v27(v26);
  sub_21729C644(v110);
  memcpy(__dst, v112, 0x161uLL);
  __swift_destroy_boxed_opaque_existential_1(v111);
  v28 = __dst[12];
  sub_217751DE8();
  sub_217269F50(__dst);
  if (v28)
  {
    OUTLINED_FUNCTION_56_0();
    v92 = sub_217751F18();
  }

  else
  {
    v92 = 0;
  }

  v110[3] = &type metadata for Genre;
  v110[4] = &protocol witness table for Genre;
  OUTLINED_FUNCTION_197();
  v110[0] = swift_allocObject();
  OUTLINED_FUNCTION_97_2(v110[0]);
  v29 = OUTLINED_FUNCTION_33_6(v110);
  sub_21729C5E8(v29, v109);
  OUTLINED_FUNCTION_38_1(v109);
  v30 = OUTLINED_FUNCTION_36_5();
  v31(v30);
  sub_21729C644(v109);
  memcpy(v112, v111, 0x161uLL);
  __swift_destroy_boxed_opaque_existential_1(v110);
  v32 = v112[14];
  sub_217751DE8();
  sub_217269F50(v112);
  if (v32)
  {
    OUTLINED_FUNCTION_56_0();
    v91 = sub_217751F18();
  }

  else
  {
    v91 = 0;
  }

  v109[3] = &type metadata for Genre;
  v109[4] = &protocol witness table for Genre;
  OUTLINED_FUNCTION_197();
  v109[0] = swift_allocObject();
  OUTLINED_FUNCTION_97_2(v109[0]);
  v33 = OUTLINED_FUNCTION_33_6(v109);
  sub_21729C5E8(v33, v108);
  OUTLINED_FUNCTION_38_1(v108);
  v34 = OUTLINED_FUNCTION_36_5();
  v35(v34);
  sub_21729C644(v108);
  memcpy(v111, v110, 0x161uLL);
  __swift_destroy_boxed_opaque_existential_1(v109);
  v36 = v111[16];
  sub_217751DE8();
  sub_217269F50(v111);
  if (v36)
  {
    v90 = sub_217751F18();
  }

  else
  {
    v90 = 0;
  }

  v108[3] = &type metadata for Genre;
  v108[4] = &protocol witness table for Genre;
  OUTLINED_FUNCTION_197();
  v108[0] = swift_allocObject();
  OUTLINED_FUNCTION_97_2(v108[0]);
  v37 = OUTLINED_FUNCTION_33_6(v108);
  sub_21729C5E8(v37, v107);
  v38 = v107[3];
  v39 = v107[4];
  __swift_project_boxed_opaque_existential_1(v107, v107[3]);
  (*(v39 + 24))(v109, v38, v39);
  sub_21729C644(v107);
  memcpy(v110, v109, 0x161uLL);
  __swift_destroy_boxed_opaque_existential_1(v108);
  v40 = v110[17];
  v41 = v110[18];
  v42 = v110[19];
  v43 = v110[20];
  sub_2172A5428(v110[17], v110[18], v110[19], v110[20]);
  sub_217269F50(v110);
  if (v41)
  {
    v109[0] = v40;
    v109[1] = v41;
    v109[2] = v42;
    v109[3] = v43;
    sub_21725D480();
    v89 = v44;
  }

  else
  {
    v89 = 0;
  }

  v107[3] = &type metadata for Genre;
  v107[4] = &protocol witness table for Genre;
  OUTLINED_FUNCTION_197();
  v107[0] = swift_allocObject();
  OUTLINED_FUNCTION_97_2(v107[0]);
  v45 = OUTLINED_FUNCTION_33_6(v107);
  sub_21729C5E8(v45, v106);
  v46 = v106[3];
  v47 = v106[4];
  __swift_project_boxed_opaque_existential_1(v106, v106[3]);
  (*(v47 + 24))(v108, v46, v47);
  sub_21729C644(v106);
  memcpy(v109, v108, 0x161uLL);
  __swift_destroy_boxed_opaque_existential_1(v107);
  v48 = v109[26];
  sub_217751DE8();
  sub_217269F50(v109);
  if (v48)
  {
    v49 = sub_217751F18();
  }

  else
  {
    v49 = 0;
  }

  v106[3] = &type metadata for Genre;
  v106[4] = &protocol witness table for Genre;
  OUTLINED_FUNCTION_197();
  v106[0] = swift_allocObject();
  OUTLINED_FUNCTION_97_2(v106[0]);
  v50 = OUTLINED_FUNCTION_33_6(v106);
  sub_21729C5E8(v50, v102);
  v51 = v102[3];
  v52 = v102[4];
  __swift_project_boxed_opaque_existential_1(v102, v102[3]);
  (*(v52 + 24))(v107, v51, v52);
  sub_21729C644(v102);
  memcpy(v108, v107, 0x161uLL);
  __swift_destroy_boxed_opaque_existential_1(v106);
  v53 = v108[21];
  v54 = v108[22];
  v55 = v108[23];
  v56 = v108[24];
  sub_2172A5428(v108[21], v108[22], v108[23], v108[24]);
  sub_217269F50(v108);
  if (v54)
  {
    v107[0] = v53;
    v107[1] = v54;
    v107[2] = v55;
    v107[3] = v56;
    sub_21725D480();
    v58 = v57;
  }

  else
  {
    v58 = 0;
  }

  v102[3] = &type metadata for Genre;
  v102[4] = &protocol witness table for Genre;
  OUTLINED_FUNCTION_197();
  v102[0] = swift_allocObject();
  OUTLINED_FUNCTION_97_2(v102[0]);
  v59 = OUTLINED_FUNCTION_33_6(v102);
  sub_21729C5E8(v59, v100);
  v60 = v100[3];
  v61 = v100[4];
  __swift_project_boxed_opaque_existential_1(v100, v100[3]);
  (*(v61 + 24))(v106, v60, v61);
  sub_21729C644(v100);
  memcpy(v107, v106, 0x161uLL);
  __swift_destroy_boxed_opaque_existential_1(v102);
  v62 = v107[28];
  sub_217751DE8();
  sub_217269F50(v107);
  if (v62)
  {
    v63 = sub_217751F18();
  }

  else
  {
    v63 = 0;
  }

  v100[3] = &type metadata for Genre;
  v100[4] = &protocol witness table for Genre;
  OUTLINED_FUNCTION_197();
  v100[0] = swift_allocObject();
  OUTLINED_FUNCTION_97_2(v100[0]);
  v64 = OUTLINED_FUNCTION_33_6(v100);
  sub_21729C5E8(v64, v103);
  v65 = v104;
  v66 = v105;
  __swift_project_boxed_opaque_existential_1(v103, v104);
  (v66[3])(v102, v65, v66);
  sub_21729C644(v103);
  memcpy(v106, v102, 0x161uLL);
  __swift_destroy_boxed_opaque_existential_1(v100);
  v67 = v106[30];
  sub_217751DE8();
  sub_217269F50(v106);
  if (v67)
  {
    v68 = sub_217751F18();
  }

  else
  {
    v68 = 0;
  }

  v69 = objc_opt_self();
  v104 = &type metadata for Genre;
  v105 = &protocol witness table for Genre;
  OUTLINED_FUNCTION_197();
  v103[0] = swift_allocObject();
  OUTLINED_FUNCTION_97_2(v103[0]);
  v70 = OUTLINED_FUNCTION_33_6(v103);
  sub_21729C5E8(v70, v101);
  v71 = v101[4];
  __swift_project_boxed_opaque_existential_1(v101, v101[3]);
  v72 = OUTLINED_FUNCTION_5_4();
  v73(v72, v71);
  sub_21729C644(v101);
  memcpy(v102, v100, 0x161uLL);
  __swift_destroy_boxed_opaque_existential_1(v103);
  v74 = v102[33];
  sub_217751DE8();
  sub_217269F50(v102);
  sub_21729D8EC(v74, v75, v76, v77, v78, v79, v80);
  v82 = v81;

  LOBYTE(v100[0]) = v95;
  v83 = sub_2173AAFE0();
  *&v88 = v49;
  *(&v88 + 1) = v58;
  v96 = sub_2172B82C8(v99, v98, v94, v93, v92, v91, v90, v89, v88, v63, v68, v82, 9, v83, v69);

  sub_2172A0FAC(v97);
  v85 = v84;

  v86 = objc_allocWithZone(MusicKit_SoftLinking_MPModelObject);
  return sub_2175FCB20(v96, 9, v85);
}

uint64_t sub_2172A36E4@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_2176327E4(a1 & 1), (v6 & 1) != 0))
  {
    sub_21721E0AC(*(a2 + 56) + 32 * v5, v10);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  v7 = sub_2177517D8();
  v8 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a3, v8 ^ 1u, 1, v7);
}

uint64_t sub_2172A3798(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = sub_2176327E4(a1 & 1), (v4 & 1) != 0))
  {
    sub_21721E0AC(*(a2 + 56) + 32 * v3, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2172A393C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v2 = sub_217632930(), (v3 & 1) != 0))
  {
    OUTLINED_FUNCTION_83_4(v2, v3, v4, v5, v6, v7, v8, v9, v11);
  }

  else
  {
    OUTLINED_FUNCTION_94_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24B10, &unk_217758190);
  if (swift_dynamicCast())
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2172A3C30(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (*(a2 + 16) && (v4 = a3(a1), (v5 & 1) != 0))
  {
    OUTLINED_FUNCTION_83_4(v4, v5, v6, v7, v8, v9, v10, v11, v15);
  }

  else
  {
    OUTLINED_FUNCTION_94_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  v12 = swift_dynamicCast();
  v13 = v16;
  if (!v12)
  {
    return 0;
  }

  return v13;
}

uint64_t sub_2172A3CD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (*(a2 + 16) && (v3 = a3(a1), (v4 & 1) != 0))
  {
    OUTLINED_FUNCTION_83_4(v3, v4, v5, v6, v7, v8, v9, v10, v12);
  }

  else
  {
    OUTLINED_FUNCTION_94_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  if (swift_dynamicCast())
  {
    return v13;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_2172A3DA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (*(a2 + 16) && (v3 = a3(a1), (v4 & 1) != 0))
  {
    OUTLINED_FUNCTION_83_4(v3, v4, v5, v6, v7, v8, v9, v10, v12);
  }

  else
  {
    OUTLINED_FUNCTION_94_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  if (swift_dynamicCast())
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2172A3E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  if (*(a2 + 16) && (v7 = a3(a1), (v8 & 1) != 0))
  {
    OUTLINED_FUNCTION_83_4(v7, v8, v9, v10, v11, v12, v13, v14, v18);
  }

  else
  {
    OUTLINED_FUNCTION_94_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  v15 = a4(0);
  v16 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a5, v16 ^ 1u, 1, v15);
}

uint64_t sub_2172A3F28()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v1 = OUTLINED_FUNCTION_91_2();
  v2(v1);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v3 = OUTLINED_FUNCTION_74_2();
  v4(v3);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v6[5];
}

uint64_t sub_2172A404C()
{
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v1 = OUTLINED_FUNCTION_91_2();
  v2(v1);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v3 = OUTLINED_FUNCTION_74_2();
  v4(v3);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v6[5];
}

void sub_2172A40FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, unsigned __int8 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_128_1();
  a24 = v26;
  a25 = v27;
  v29 = v28;
  v31 = v30;
  v32 = v25[3];
  v33 = v25[4];
  __swift_project_boxed_opaque_existential_1(v25, v32);
  OUTLINED_FUNCTION_75_2();
  v34(v32, v33);
  v35 = a12;
  v36 = a13;
  __swift_project_boxed_opaque_existential_1(&a9, a12);
  (*(*(v36 + 8) + 8))(&a17, v31, v29, MEMORY[0x277D839B0], v35);
  __swift_destroy_boxed_opaque_existential_1(&a9);
  OUTLINED_FUNCTION_127_1();
}

uint64_t sub_2172A4254(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v9 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v9);
  OUTLINED_FUNCTION_75_2();
  v11(v9, v10);
  v12 = v19;
  v13 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v14 = *(v13 + 8);
  v15 = *(v14 + 8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15(&v21, a1, a4, v16, v12, v14);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v21;
}

void sub_2172A43F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_128_1();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v27 = v22[3];
  v28 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v27);
  OUTLINED_FUNCTION_75_2();
  v29(v27, v28);
  v30 = a12;
  v31 = a13;
  __swift_project_boxed_opaque_existential_1(&a9, a12);
  v32 = *(v31 + 8);
  v33 = *(v32 + 8);
  v34 = type metadata accessor for Album.TracksPopularityProvider();
  v33(&a14, v26, &type metadata for Album, v34, v30, v32);
  __swift_destroy_boxed_opaque_existential_1(&a9);
  OUTLINED_FUNCTION_127_1();
}

uint64_t sub_2172A4984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenrePropertyProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2172A49E8(uint64_t a1)
{
  v2 = type metadata accessor for GenrePropertyProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2172A4A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenrePropertyProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2172A4AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE8568;
  if (!qword_280BE8568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8568);
  }

  return result;
}

unint64_t sub_2172A4AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE76C0;
  if (!qword_280BE76C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE76C0);
  }

  return result;
}

unint64_t sub_2172A4B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE76B8;
  if (!qword_280BE76B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE76B8);
  }

  return result;
}

unint64_t sub_2172A4BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172A4AFC(a1, a2, a3);
  *(a1 + 8) = v4;
  result = sub_2172A4BD8(v4, v5, v6);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2172A4BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24B78;
  if (!qword_27CB24B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24B78);
  }

  return result;
}

_BYTE *_s33SimpleLegacyModelGenrePropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

double sub_2172A4D08@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_217632668();
  if (v4)
  {
    v5 = v3;
    swift_isUniquelyReferenced_nonNull_native();
    v12 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B80, &qword_2177595A8);
    sub_217752CB8();

    v6 = (*(v12 + 56) + 48 * v5);
    v7 = v6[1];
    *a1 = *v6;
    a1[1] = v7;
    a1[2] = v6[2];
    sub_2172A4EFC(v8, v9, v10);
    sub_217752CD8();
    *v1 = v12;
  }

  else
  {
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t sub_2172A4E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_21763246C(a1, a2);
  if (v6)
  {
    v7 = result;
    swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B88, &qword_2177595B0);
    sub_217752CB8();

    v8 = *(v10 + 56) + 24 * v7;
    v9 = *(v8 + 16);
    *a3 = *v8;
    *(a3 + 16) = v9;
    result = sub_217752CD8();
    *v3 = v10;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
  }

  return result;
}

unint64_t sub_2172A4EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE3800[0];
  if (!qword_280BE3800[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE3800);
  }

  return result;
}

unint64_t sub_2172A4F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24B90;
  if (!qword_27CB24B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24B90);
  }

  return result;
}

unint64_t sub_2172A4FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE2680;
  if (!qword_280BE2680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2680);
  }

  return result;
}

unint64_t sub_2172A5038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE8540;
  if (!qword_280BE8540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8540);
  }

  return result;
}

unint64_t sub_2172A508C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24BB8;
  if (!qword_27CB24BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24BB8);
  }

  return result;
}

unint64_t sub_2172A50E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24BC8;
  if (!qword_27CB24BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24BC8);
  }

  return result;
}

unint64_t sub_2172A5134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24BF8;
  if (!qword_27CB24BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24BF8);
  }

  return result;
}

unint64_t sub_2172A5188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE84C8;
  if (!qword_280BE84C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE84C8);
  }

  return result;
}

unint64_t sub_2172A51DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24C10;
  if (!qword_27CB24C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24C10);
  }

  return result;
}

unint64_t sub_2172A5230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE2E80;
  if (!qword_280BE2E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2E80);
  }

  return result;
}

unint64_t sub_2172A5284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE88F0;
  if (!qword_280BE88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE88F0);
  }

  return result;
}

unint64_t sub_2172A52D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE8578;
  if (!qword_280BE8578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8578);
  }

  return result;
}

unint64_t sub_2172A532C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE85F8;
  if (!qword_280BE85F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE85F8);
  }

  return result;
}

unint64_t sub_2172A5380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE7F28;
  if (!qword_280BE7F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE7F28);
  }

  return result;
}

unint64_t sub_2172A53D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE8BA0[0];
  if (!qword_280BE8BA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE8BA0);
  }

  return result;
}

void sub_2172A5428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_217751DE8();

    sub_217751DE8();
  }
}

unint64_t sub_2172A546C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE8618;
  if (!qword_280BE8618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE8618);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_17@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = *(v3 + 56) + 32 * (__clz(__rbit64(v4)) | (a1 << 6));

  return sub_21721E0AC(v6, va);
}

_OWORD *OUTLINED_FUNCTION_15_15@<X0>(uint64_t a1@<X8>)
{
  result = sub_2172124CC((a1 + 8), (v2 + 16));
  *(v3 - 104) = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_8(uint64_t a1)
{

  return sub_217752CB8();
}

uint64_t OUTLINED_FUNCTION_29_8(uint64_t a1)
{

  return sub_217752CB8();
}

uint64_t OUTLINED_FUNCTION_34_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v35 = *(v32 + 56);

  return sub_21721E0AC(v35 + 32 * v33, &a32);
}

double OUTLINED_FUNCTION_41_6@<D0>(char a1@<W8>)
{

  return sub_2171FADD4(v1, v2, a1 & 1);
}

_OWORD *OUTLINED_FUNCTION_42_5@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 a6)
{
  *(a1 + v8) = v7;
  v10 = (*(v6 + 56) + 32 * v8);

  return sub_2172124CC(&a6, v10);
}

uint64_t OUTLINED_FUNCTION_43_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);

  return sub_21721E0AC(va1, va);
}

uint64_t OUTLINED_FUNCTION_46_6()
{

  return sub_217752CD8();
}

void *OUTLINED_FUNCTION_47_5()
{
  *(v2 - 104) = v0;

  return sub_217276678(0, v1, 0);
}

_OWORD *OUTLINED_FUNCTION_52_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  v14 = (*(v11 + 56) + 32 * v12);

  return sub_2172124CC(&a11, v14);
}

uint64_t OUTLINED_FUNCTION_62_4(_OWORD *a1, _OWORD *a2)
{
  sub_2172124CC(a1, a2);

  return sub_217752DC8();
}

uint64_t OUTLINED_FUNCTION_65_4()
{
  v3 = (*(v0 + 56) + 32 * v1);

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t OUTLINED_FUNCTION_69_4()
{

  return sub_217751DC8();
}

uint64_t OUTLINED_FUNCTION_70_3()
{

  return sub_217751DC8();
}

uint64_t OUTLINED_FUNCTION_72_3(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_77_2(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  a1[3] = a3;
  a1[4] = a4;
  a1[2] = a2;
}

uint64_t OUTLINED_FUNCTION_78_1()
{

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_83_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(v9 + 56) + 32 * a1;

  return sub_21721E0AC(v11, &a9);
}

uint64_t OUTLINED_FUNCTION_88_2@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2172124CC(a1, (a2 + 16));

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_96_1()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_97_2(uint64_t a1)
{

  return sub_217284130(v1, a1 + 16);
}

uint64_t OUTLINED_FUNCTION_109_2(_OWORD *a1)
{
  sub_2172124CC(a1, (v1 + 16));

  return sub_217751DE8();
}

double OUTLINED_FUNCTION_112_2@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_117_3(_OWORD *a1, _OWORD *a2)
{
  sub_2172124CC(a1, a2);

  return swift_isUniquelyReferenced_nonNull_native();
}

double OUTLINED_FUNCTION_120_3()
{
}

_OWORD *OUTLINED_FUNCTION_123_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13)
{

  return sub_2172124CC(&a13, v13);
}

uint64_t OUTLINED_FUNCTION_124_1(uint64_t a1)
{

  return sub_217752DC8();
}

uint64_t OUTLINED_FUNCTION_125_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);

  return sub_21721E0AC(va1, va);
}

_OWORD *OUTLINED_FUNCTION_126_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_2172124CC(&a11, v11);
}

_OWORD *OUTLINED_FUNCTION_129_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_2172124CC(&a11, v11);
}

void *OUTLINED_FUNCTION_135_0(void *a1)
{

  return memcpy(a1, v1, 0x161uLL);
}

uint64_t MusicLibraryRequestPropertyFilter.ComparisonType.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

unint64_t sub_2172A5D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24C90;
  if (!qword_27CB24C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24C90);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2172A5DBC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_2172A5DFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicLibraryRequestPropertyFilter.ComparisonType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t static CloudArtwork.== infix(_:_:)(uint64_t *a1, double *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 24);
  v118 = *(a1 + 40);
  v111 = a1[6];
  v113 = a1[4];
  v114 = a1[7];
  v109 = a1[9];
  v107 = a1[8];
  v108 = *(a1 + 10);
  v103 = a1[11];
  v116 = a1[12];
  v117 = a1[2];
  v99 = a1[14];
  v97 = a1[13];
  v98 = *(a1 + 15);
  v93 = a1[16];
  v101 = a1[17];
  v89 = a1[19];
  v87 = a1[18];
  v88 = *(a1 + 20);
  v83 = a1[21];
  v91 = a1[22];
  v79 = a1[24];
  v77 = a1[23];
  v78 = *(a1 + 25);
  v72 = a1[26];
  v81 = a1[27];
  v67 = a1[28];
  v68 = *(a1 + 30);
  v63 = a1[31];
  v69 = a1[29];
  v70 = a1[32];
  v61 = a1 + 33;
  memcpy(__dst, a1 + 33, sizeof(__dst));
  memcpy(v133, a1 + 43, sizeof(v133));
  v58 = a1[53];
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  v10 = *(a2 + 24);
  v11 = *(a2 + 4);
  v12 = *(a2 + 40);
  v110 = *(a2 + 6);
  v112 = *(a2 + 7);
  v106 = *(a2 + 9);
  v104 = *(a2 + 8);
  v105 = a2[10];
  v102 = *(a2 + 11);
  v115 = *(a2 + 12);
  v96 = *(a2 + 14);
  v94 = *(a2 + 13);
  v95 = a2[15];
  v92 = *(a2 + 16);
  v100 = *(a2 + 17);
  v86 = *(a2 + 19);
  v84 = *(a2 + 18);
  v85 = a2[20];
  v82 = *(a2 + 21);
  v90 = *(a2 + 22);
  v73 = *(a2 + 23);
  v74 = a2[25];
  v75 = *(a2 + 24);
  v76 = *(a2 + 26);
  v80 = *(a2 + 27);
  v66 = *(a2 + 29);
  v64 = *(a2 + 28);
  v65 = a2[30];
  v62 = *(a2 + 31);
  v71 = *(a2 + 32);
  v60 = (a2 + 33);
  memcpy(v134, a2 + 33, sizeof(v134));
  memcpy(v135, a2 + 43, 0x50uLL);
  v13 = *(a2 + 53);
  v14 = v5 == *&v7 && v4 == v8;
  if (!v14 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (v117 == v9)
    {
      v15 = v10;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (v118)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (v113 == v11)
    {
      v16 = v12;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  if (v114)
  {
    v18 = v115;
    v17 = v116;
    if (!v112)
    {
      return 0;
    }

    v19 = v111 == v110 && v114 == v112;
    if (!v19 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v18 = v115;
    v17 = v116;
    if (v112)
    {
      return 0;
    }
  }

  if (!v17)
  {
    if (!v18)
    {

      goto LABEL_47;
    }

LABEL_40:
    sub_217751DE8();
    *&__src[0] = v107;
    OUTLINED_FUNCTION_18_10(*&v108);
    OUTLINED_FUNCTION_5_13(v104);
    OUTLINED_FUNCTION_17_7(*&v105);
    *&__src[4] = v102;
    *(&__src[4] + 1) = v18;
LABEL_66:
    v29 = &unk_27CB24C98;
    v30 = &unk_2177800E0;
LABEL_67:
    sub_2171F06D8(__src, v29, v30);
    return 0;
  }

  if (!v18)
  {
    goto LABEL_40;
  }

  if (*&v107 != *&v104 || *&v109 != *&v106 || v108 != v105)
  {
    goto LABEL_38;
  }

  v22 = v103 == v102 && v17 == v18;
  if (!v22 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

LABEL_47:
  if (!v101)
  {
    v23 = v100;
    if (!v100)
    {

      goto LABEL_70;
    }

LABEL_64:
    v27 = v23;
    sub_217751DE8();
    *&__src[0] = v97;
    OUTLINED_FUNCTION_18_10(*&v98);
    OUTLINED_FUNCTION_5_13(v94);
    OUTLINED_FUNCTION_17_7(*&v95);
    v28 = v92;
LABEL_65:
    *&__src[4] = v28;
    *(&__src[4] + 1) = v27;
    goto LABEL_66;
  }

  v23 = v100;
  if (!v100)
  {
    goto LABEL_64;
  }

  if (*&v97 != *&v94 || *&v99 != *&v96 || v98 != v95)
  {
    goto LABEL_38;
  }

  v26 = v93 == v92 && v101 == v100;
  if (!v26 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

LABEL_70:
  if (!v91)
  {
    v32 = v90;
    if (!v90)
    {

      goto LABEL_89;
    }

    goto LABEL_87;
  }

  v32 = v90;
  if (!v90)
  {
LABEL_87:
    v27 = v32;
    sub_217751DE8();
    *&__src[0] = v87;
    OUTLINED_FUNCTION_18_10(*&v88);
    OUTLINED_FUNCTION_5_13(v84);
    OUTLINED_FUNCTION_17_7(*&v85);
    v28 = v82;
    goto LABEL_65;
  }

  if (*&v87 != *&v84 || *&v89 != *&v86 || v88 != v85)
  {
    goto LABEL_38;
  }

  v35 = v83 == v82 && v91 == v90;
  if (!v35 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

LABEL_89:
  if (!v81)
  {
    v36 = v80;
    if (!v80)
    {

      goto LABEL_108;
    }

    goto LABEL_106;
  }

  v36 = v80;
  if (!v80)
  {
LABEL_106:
    v27 = v36;
    sub_217751DE8();
    *&__src[0] = v77;
    OUTLINED_FUNCTION_18_10(*&v78);
    OUTLINED_FUNCTION_5_13(v73);
    OUTLINED_FUNCTION_17_7(*&v74);
    v28 = v76;
    goto LABEL_65;
  }

  if (*&v77 != *&v73 || *&v79 != *&v75 || v78 != v74)
  {
    goto LABEL_38;
  }

  v39 = v72 == v76 && v81 == v80;
  if (!v39 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

LABEL_108:
  if (!v70)
  {
    if (!v71)
    {
      v42 = v13;

      goto LABEL_127;
    }

    goto LABEL_125;
  }

  if (!v71)
  {
LABEL_125:
    v27 = v71;
    sub_217751DE8();
    *&__src[0] = v67;
    OUTLINED_FUNCTION_18_10(*&v68);
    OUTLINED_FUNCTION_5_13(v64);
    OUTLINED_FUNCTION_17_7(*&v65);
    v28 = v62;
    goto LABEL_65;
  }

  if (*&v67 != *&v64 || *&v69 != *&v66 || v68 != v65)
  {
LABEL_38:
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRelease_n();
    return 0;
  }

  v42 = v13;
  v43 = v63 == v62 && v70 == v71;
  if (!v43 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

LABEL_127:
  *v128 = *&__dst[5];
  v129 = *&__dst[7];
  v44 = __dst[4];
  v130 = __dst[9];
  *v125 = *&v134[5];
  v126 = *&v134[7];
  v45 = v134[4];
  v127 = v134[9];
  if (!__dst[4])
  {
    if (!v134[4])
    {
      OUTLINED_FUNCTION_11_18(__dst, v58, v60, v61);
      *&__src[2] = 0;
      *(&__src[4] + 1) = v52;
      OUTLINED_FUNCTION_10_9(__dst);
      OUTLINED_FUNCTION_10_9(v134);
      OUTLINED_FUNCTION_27(__src);
      goto LABEL_136;
    }

    OUTLINED_FUNCTION_14_10();
    OUTLINED_FUNCTION_14_10();
    goto LABEL_134;
  }

  OUTLINED_FUNCTION_11_18(__dst, v58, v60, v61);
  *&__src[2] = v44;
  *(&__src[4] + 1) = v46;
  memcpy(v131, __src, sizeof(v131));
  if (!v45)
  {
    memcpy(v121, __src, sizeof(v121));
    OUTLINED_FUNCTION_14_10();
    OUTLINED_FUNCTION_14_10();
    OUTLINED_FUNCTION_14_10();
    sub_2172A967C(v121);
LABEL_134:
    v50 = *(v61 + 1);
    __src[0] = *v61;
    __src[1] = v50;
    *(&__src[2] + 8) = *v128;
    *(&__src[3] + 8) = v129;
    *&__src[2] = v44;
    *(&__src[4] + 1) = v130;
    v51 = *(v60 + 1);
    *v123 = *v60;
    *&v123[16] = v51;
    *&v123[32] = v45;
    v124 = v127;
    *&v123[56] = v126;
    *&v123[40] = *v125;
    v29 = &unk_27CB24CA8;
    v30 = &unk_217759778;
    goto LABEL_67;
  }

  v47 = *(v60 + 1);
  v121[0] = *v60;
  v121[1] = v47;
  *(&v121[2] + 8) = *&v134[5];
  *(&v121[3] + 8) = *&v134[7];
  *(&v121[4] + 1) = v134[9];
  *&v121[2] = v45;
  v48 = static CloudArtwork.TextGradient.== infix(_:_:)(v131, v121);
  memcpy(v119, v121, sizeof(v119));
  OUTLINED_FUNCTION_23_12(__dst);
  OUTLINED_FUNCTION_23_12(v134);
  OUTLINED_FUNCTION_23_12(__src);
  sub_2172A967C(v119);
  memcpy(v120, v131, sizeof(v120));
  sub_2172A967C(v120);
  v49 = *(v61 + 1);
  v121[0] = *v61;
  v121[1] = v49;
  *(&v121[2] + 8) = *v128;
  *(&v121[3] + 8) = v129;
  *&v121[2] = v44;
  *(&v121[4] + 1) = v130;
  sub_2171F06D8(v121, &qword_27CB24CA0, &qword_217759770);
  if (!v48)
  {
    return 0;
  }

LABEL_136:
  OUTLINED_FUNCTION_26_9(v119);
  v53 = v133[9];
  v54 = v135[9];
  if (!v133[9])
  {
    if (!v135[9])
    {
      OUTLINED_FUNCTION_26_9(__src);
      *(&__src[4] + 1) = 0;
      OUTLINED_FUNCTION_10_9(v133);
      OUTLINED_FUNCTION_10_9(v135);
      OUTLINED_FUNCTION_27(__src);
      goto LABEL_143;
    }

    goto LABEL_141;
  }

  if (!v135[9])
  {
LABEL_141:
    OUTLINED_FUNCTION_26_9(__src);
    *(&__src[4] + 1) = v53;
    memcpy(v123, v135, sizeof(v123));
    v124 = v54;
    OUTLINED_FUNCTION_10_9(v133);
    OUTLINED_FUNCTION_10_9(v135);
    v29 = &unk_27CB24CB8;
    v30 = &unk_217759788;
    goto LABEL_67;
  }

  memcpy(v120, v135, 0x48uLL);
  v120[9] = v135[9];
  memcpy(__src, v120, sizeof(__src));
  OUTLINED_FUNCTION_26_9(v131);
  v131[9] = v53;
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_14_10();
  sub_2172A95F4(v131, __src);
  v56 = v55;
  OUTLINED_FUNCTION_27(v120);
  memcpy(v121, v119, 0x48uLL);
  *(&v121[4] + 1) = v53;
  OUTLINED_FUNCTION_27(v121);
  if ((v56 & 1) == 0)
  {
    return 0;
  }

LABEL_143:
  if (v59)
  {
    if (!v42)
    {
      return 0;
    }

    sub_217751DE8();
    v57 = sub_2172A9114(v59, v42);

    if ((v57 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_2172A68A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
      if (v7 || (sub_217753058() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 7629921 && a2 == 0xE300000000000000;
        if (v8 || (sub_217753058() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x726F6C6F436762 && a2 == 0xE700000000000000;
          if (v9 || (sub_217753058() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003172;
            if (v10 || (sub_217753058() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003272;
              if (v11 || (sub_217753058() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003372;
                if (v12 || (sub_217753058() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003472;
                  if (v13 || (sub_217753058() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6461724774786574 && a2 == 0xEC000000746E6569;
                    if (v14 || (sub_217753058() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x746E656964617267 && a2 == 0xE800000000000000;
                      if (v15 || (sub_217753058() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x6172546567616D69 && a2 == 0xEB00000000737469)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_217753058();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

uint64_t sub_2172A6C2C(unsigned __int8 a1)
{
  sub_2177531E8();
  MEMORY[0x21CEA3550](a1);
  return sub_217753238();
}

uint64_t sub_2172A6C74(char a1)
{
  result = 7107189;
  switch(a1)
  {
    case 1:
      result = 0x6874646977;
      break;
    case 2:
      result = 0x746867696568;
      break;
    case 3:
      result = 7629921;
      break;
    case 4:
      result = 0x726F6C6F436762;
      break;
    case 5:
      result = 0x6F6C6F4374786574;
      break;
    case 6:
      result = 0x6F6C6F4374786574;
      break;
    case 7:
      result = 0x6F6C6F4374786574;
      break;
    case 8:
      result = 0x6F6C6F4374786574;
      break;
    case 9:
      result = 0x6461724774786574;
      break;
    case 10:
      result = 0x746E656964617267;
      break;
    case 11:
      result = 0x6172546567616D69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2172A6DD0(uint64_t a1)
{
  v2 = *v1;
  sub_2177531E8();
  sub_217230440(v4, v2);
  return sub_217753238();
}

uint64_t sub_2172A6E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2172A68A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2172A6E44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2172A6C24();
  *a1 = result;
  return result;
}

uint64_t sub_2172A6E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172A96D0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2172A6EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2172A96D0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CloudArtwork.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24CC0, &qword_217759790);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = *v1;
  v50 = v1[2];
  v51 = v9;
  v49 = *(v1 + 24);
  v48 = v1[4];
  v47 = *(v1 + 40);
  v10 = v1[6];
  v45 = v1[7];
  v46 = v10;
  v11 = *(v1 + 4);
  v43 = *(v1 + 5);
  v44 = v11;
  v42 = v1[12];
  v12 = *(v1 + 13);
  v40 = *(v1 + 15);
  v41 = v12;
  v39 = v1[17];
  v13 = *(v1 + 9);
  v37 = *(v1 + 10);
  v38 = v13;
  v36 = v1[22];
  v14 = *(v1 + 23);
  v34 = *(v1 + 25);
  v35 = v14;
  v33 = v1[27];
  v15 = *(v1 + 14);
  v31 = *(v1 + 15);
  v32 = v15;
  v30 = v1[32];
  memcpy(__dst, v1 + 33, sizeof(__dst));
  memcpy(__src, v1 + 43, sizeof(__src));
  v29 = v1[53];
  v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2172A96D0(v16, v17, v18);
  sub_2177532F8();
  LOBYTE(v57[0]) = 0;
  v19 = v60;
  sub_217752F48();
  if (v19)
  {
    return (*(v5 + 8))(v8, v3);
  }

  v28 = v5;
  LOBYTE(v57[0]) = 1;
  sub_217752F28();
  LOBYTE(v57[0]) = 2;
  sub_217752F28();
  LOBYTE(v57[0]) = 3;
  v21 = sub_217752EF8();
  v57[0] = v44;
  v57[1] = v43;
  *&v57[2] = v42;
  v56[0] = 4;
  sub_2172A9724(v21, v22, v23);
  sub_217751DE8();
  OUTLINED_FUNCTION_4_23();
  sub_217752F38();

  v57[0] = v41;
  v57[1] = v40;
  *&v57[2] = v39;
  v56[0] = 5;
  sub_217751DE8();
  OUTLINED_FUNCTION_4_23();
  sub_217752F38();

  v57[0] = v38;
  v57[1] = v37;
  *&v57[2] = v36;
  v56[0] = 6;
  sub_217751DE8();
  OUTLINED_FUNCTION_4_23();
  sub_217752F38();

  v57[0] = v35;
  v57[1] = v34;
  *&v57[2] = v33;
  v56[0] = 7;
  sub_217751DE8();
  OUTLINED_FUNCTION_4_23();
  sub_217752F38();

  v57[0] = v32;
  v57[1] = v31;
  *&v57[2] = v30;
  v56[0] = 8;
  sub_217751DE8();
  OUTLINED_FUNCTION_4_23();
  sub_217752F38();

  memcpy(v57, __dst, sizeof(v57));
  v56[87] = 9;
  v24 = sub_2172A9DC0();
  sub_2172A9778(v24, v25, v26);
  sub_217752F38();
  memcpy(v56, v57, 0x50uLL);
  sub_2171F06D8(v56, &qword_27CB24CA0, &qword_217759770);
  memcpy(v55, __src, sizeof(v55));
  v54[87] = 10;
  sub_2172A9DC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24CD0, &qword_217759798);
  sub_2172A9C14(&qword_27CB24CD8, &protocol conformance descriptor for <A> CloudAttribute<A>);
  sub_217752F38();
  memcpy(v54, v55, 0x50uLL);
  sub_2171F06D8(v54, &qword_27CB24CB0, &qword_217759780);
  v53 = v29;
  v52 = 11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24CE0, &qword_2177597A0);
  sub_2172A9C8C(&qword_27CB24CE8, sub_2172A9874, MEMORY[0x277D83B50]);
  sub_217752F38();
  return (*(v28 + 8))(v8, 0);
}

void CloudArtwork.hash(into:)(const void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(v2 + 56);
  v9 = *(v2 + 80);
  v40 = *(v2 + 64);
  v41 = v9;
  v42 = *(v2 + 96);
  v10 = *(v2 + 104);
  v11 = *(v2 + 120);
  v39 = *(v2 + 136);
  v37 = v10;
  v38 = v11;
  v12 = *(v2 + 160);
  v34 = *(v2 + 144);
  v35 = v12;
  v36 = *(v2 + 176);
  v13 = *(v2 + 200);
  v31 = *(v2 + 184);
  v32 = v13;
  v33 = *(v2 + 216);
  v14 = *(v2 + 224);
  v15 = *(v2 + 240);
  v30 = *(v2 + 256);
  v28 = v14;
  v29 = v15;
  v16 = *(v2 + 296);
  v17 = *(v2 + 304);
  v18 = *(v2 + 312);
  v19 = *(v2 + 320);
  v24 = *(v2 + 336);
  v20 = *(v2 + 416);
  v25 = *(v2 + 328);
  v26 = *(v2 + 424);
  sub_217751FF8();
  if (v5 == 1)
  {
    OUTLINED_FUNCTION_25();
    if (!v7)
    {
      goto LABEL_3;
    }

LABEL_6:
    OUTLINED_FUNCTION_25();
    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_24();
  MEMORY[0x21CEA3550](v4);
  if (v7)
  {
    goto LABEL_6;
  }

LABEL_3:
  OUTLINED_FUNCTION_24();
  MEMORY[0x21CEA3550](v6);
  if (v8)
  {
LABEL_4:
    OUTLINED_FUNCTION_24();
    sub_217751FF8();
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_25();
LABEL_8:
  sub_21726519C();
  sub_21726519C();
  sub_21726519C();
  sub_21726519C();
  sub_21726519C();
  if (v16)
  {
    OUTLINED_FUNCTION_24();
    Artwork.Color.hash(into:)(a1);
    __dst[0] = v17;
    __dst[1] = v18;
    __dst[2] = v19;
    __dst[3] = v25;
    __dst[4] = v24;
    Artwork.Color.hash(into:)(a1);
    if (v20)
    {
LABEL_10:
      memcpy(__dst, (v2 + 344), 0x48uLL);
      OUTLINED_FUNCTION_24();
      __dst[9] = v20;
      CloudArtwork.Gradient.hash(into:)();
      sub_217265A08(a1, v20);
      goto LABEL_13;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25();
    if (v20)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_25();
LABEL_13:
  if (v26)
  {
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_25_9();

    sub_2172A9A1C(v21, v22);
  }

  else
  {
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_25_9();
  }
}

uint64_t CloudArtwork.hashValue.getter()
{
  sub_2177531E8();
  CloudArtwork.hash(into:)(v1);
  return sub_217753238();
}

void CloudArtwork.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24CF8, &qword_2177597A8);
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_2172A96D0(v10, v11, v12);
  sub_2177532C8();
  if (!v2)
  {
    v54 = a2;
    LOBYTE(v64) = 0;
    v13 = sub_217752E68();
    v61 = v14;
    OUTLINED_FUNCTION_8_13(1);
    sub_217752E48();
    v111 = v15 & 1;
    OUTLINED_FUNCTION_8_13(2);
    v53 = sub_217752E48();
    v109 = v16 & 1;
    OUTLINED_FUNCTION_8_13(3);
    v52 = sub_217752E18();
    v60 = v17;
    sub_2172A9B6C(v52, v17, v18);
    sub_217752E58();
    v50 = v65;
    v51 = v64;
    v49 = v66;
    v59 = v68;
    OUTLINED_FUNCTION_1_12();
    sub_217752E58();
    v47 = v67;
    v48 = v64;
    v45 = v66;
    v46 = v65;
    v58 = v68;
    OUTLINED_FUNCTION_1_12();
    sub_217752E58();
    v44 = v67;
    v42 = v66;
    v43 = v65;
    v40 = v64;
    v41 = v67;
    v57 = v68;
    OUTLINED_FUNCTION_1_12();
    sub_217752E58();
    v38 = v65;
    v39 = v64;
    v36 = v67;
    v37 = v66;
    v56 = v68;
    LOBYTE(v63[0]) = 8;
    OUTLINED_FUNCTION_1_12();
    v19 = sub_217752E58();
    v34 = v65;
    v35 = v64;
    v32 = v67;
    v33 = v66;
    v55 = v68;
    v104[87] = 9;
    sub_2172A9BC0(v19, v20, v21);
    sub_217752E58();
    v112 = 0;
    memcpy(__src, v105, sizeof(__src));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24CD0, &qword_217759798);
    v103 = 10;
    v22 = sub_2172A9C14(&qword_280BE42E0, &protocol conformance descriptor for <A> CloudAttribute<A>);
    OUTLINED_FUNCTION_22_9(v22, &v103, v23, v24, v22);
    v112 = 0;
    memcpy(v106, v104, sizeof(v106));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24CE0, &qword_2177597A0);
    v101 = 11;
    v25 = sub_2172A9C8C(&qword_280BE2308, sub_2172A9D04, MEMORY[0x277D83B70]);
    OUTLINED_FUNCTION_22_9(v25, &v101, v26, v27, v25);
    v112 = 0;
    v28 = OUTLINED_FUNCTION_9_11();
    v29(v28);
    v63[0] = v13;
    v63[1] = v61;
    v63[2] = 0;
    v30 = v111;
    LOBYTE(v63[3]) = v111;
    v63[4] = v53;
    v62 = v109;
    LOBYTE(v63[5]) = v109;
    v63[6] = v52;
    v63[7] = v60;
    v63[8] = v51;
    v63[9] = v50;
    v63[10] = v49;
    v63[11] = v47;
    v63[12] = v59;
    v63[13] = v48;
    v63[14] = v46;
    v63[15] = v45;
    v63[16] = v44;
    v63[17] = v58;
    v63[18] = v40;
    v63[19] = v43;
    v63[20] = v42;
    v63[21] = v41;
    v63[22] = v57;
    v63[23] = v39;
    v63[24] = v38;
    v63[25] = v37;
    v63[26] = v36;
    v63[27] = v56;
    v63[28] = v35;
    v63[29] = v34;
    v63[30] = v33;
    v63[31] = v32;
    v63[32] = v55;
    memcpy(&v63[33], __src, 0x50uLL);
    memcpy(&v63[43], v106, 0x50uLL);
    v31 = v102;
    v63[53] = v102;
    memcpy(v54, v63, 0x1B0uLL);
    sub_2172A9D58(v63, &v64);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v64 = v13;
    v65 = v61;
    v66 = 0;
    LOBYTE(v67) = v30;
    *(&v67 + 1) = *v110;
    HIDWORD(v67) = *&v110[3];
    v68 = v53;
    v69 = v62;
    *v70 = *v108;
    *&v70[3] = *&v108[3];
    v71 = v52;
    v72 = v60;
    v73 = v51;
    v74 = v50;
    v75 = v49;
    v76 = v47;
    v77 = v59;
    v78 = v48;
    v79 = v46;
    v80 = v45;
    v81 = v44;
    v82 = v58;
    v83 = v40;
    v84 = v43;
    v85 = v42;
    v86 = v41;
    v87 = v57;
    v88 = v39;
    v89 = v38;
    v90 = v37;
    v91 = v36;
    v92 = v56;
    v93 = v35;
    v94 = v34;
    v95 = v33;
    v96 = v32;
    v97 = v55;
    memcpy(v98, __src, sizeof(v98));
    memcpy(v99, v106, sizeof(v99));
    v100 = v31;
    sub_2172A9D90(&v64);
    return;
  }

  v112 = v2;
  OUTLINED_FUNCTION_24_11();
  __swift_destroy_boxed_opaque_existential_1(a1);
  if (v2)
  {

    if (v8)
    {
      goto LABEL_10;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_10:

  if ((v6 & 1) == 0)
  {
LABEL_11:
    if (v9)
    {
      goto LABEL_12;
    }

    return;
  }

LABEL_6:

  if (v9)
  {
LABEL_12:
  }
}

uint64_t sub_2172A80E8(uint64_t a1)
{
  sub_2177531E8();
  CloudArtwork.hash(into:)(v2);
  return sub_217753238();
}

void sub_2172A8160(void *a1@<X8>)
{
  nullsub_1();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t OUTLINED_FUNCTION_52_5@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_217751DE8();
}

double CloudAttribute<A>.convertToArtwork()@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  MEMORY[0x28223BE20](v3 - 8);
  v142 = (&v121 - v4);
  v178 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v123 = v5;
  MEMORY[0x28223BE20](v6);
  v122 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1[1];
  v165 = *v1;
  v148 = v8;
  v9 = v1[2];
  v167 = *(v1 + 24);
  v145 = v1[4];
  v146 = v9;
  v164 = *(v1 + 40);
  v10 = v1[7];
  v144 = v1[6];
  v11 = v1[8];
  v154 = v1[9];
  v155 = v11;
  v12 = *(v1 + 5);
  v14 = v1[12];
  v13 = *(v1 + 13);
  v15 = v1[14];
  v162 = *(v1 + 15);
  v163 = v12;
  v16 = v1[17];
  v166 = *(v1 + 18);
  v17 = v1[19];
  v18 = *(v1 + 10);
  v19 = *(v1 + 23);
  v177 = v1[22];
  v150 = v19;
  v151 = v17;
  v20 = v1[24];
  v160 = *(v1 + 25);
  v161 = v18;
  v21 = v1[28];
  v175 = v1[27];
  v157 = v21;
  v158 = v20;
  v156 = v1[29];
  v159 = *(v1 + 15);
  v22 = v1[32];
  memcpy(v181, v1 + 33, sizeof(v181));
  memcpy(__dst, v1 + 43, sizeof(__dst));
  v24 = v1[54];
  v133 = v1[53];
  v168 = v24;
  v25 = v181[4];
  v176 = v22;
  v170 = v14;
  v171 = v181[4];
  v172 = v16;
  v143 = v10;
  v152 = v13;
  v153 = v15;
  if (v181[4])
  {
    v26 = v181[0];
    *&v23 = v181[1];
    v174 = v23;
    *&v23 = v181[2];
    v149 = v23;
    *&v23 = v181[5];
    v173 = v23;
    *&v23 = v181[6];
    v147 = v23;
    v27 = v181[7];
    v140 = v181[8];
    v141 = v181[3];
    v169 = v181[9];
    v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
    v28 = OUTLINED_FUNCTION_16_7(v138);
    v137 = xmmword_217758490;
    v29 = OUTLINED_FUNCTION_12_8(v28, xmmword_217758490);
    *&qword_217758020[0] = v26;
    v30 = v149;
    v29[2].n128_u64[1] = v174;
    v29[3].n128_u64[0] = v30;
    v29[3].n128_u64[1] = 0x3FF0000000000000;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2172A9DC0();
    v31 = qword_280BE76A0;
    sub_217751DE8();
    if (v31 != -1)
    {
      OUTLINED_FUNCTION_0_16(&qword_280BE76A0);
    }

    v32 = &qword_280C02000;
    v33 = qword_280C023C0;
    if (qword_280C023C0)
    {
      v139 = CGColorCreate(qword_280C023C0, qword_217758020);
    }

    else
    {

      v139 = 0;
    }

    v25 = v169;

    v35 = OUTLINED_FUNCTION_16_7(v138);
    v36 = OUTLINED_FUNCTION_12_8(v35, v137);
    *&qword_217758040[0] = v173;
    v36[2].n128_u64[1] = v147;
    v36[3].n128_u64[0] = v27;
    v36[3].n128_u64[1] = 0x3FF0000000000000;
    sub_217751DE8();
    if (v33)
    {
      v138 = CGColorCreate(v33, qword_217758040);
    }

    else
    {

      v138 = 0;
    }

    v14 = v170;

    sub_217751DE8();
    sub_217751DE8();
    sub_2171F06D8(v181, &qword_27CB24CA0, &qword_217759770);
    v136 = v27;
    v137.n128_u64[0] = v26;
    *&v37 = v173;
    *(&v37 + 1) = v147;
    v173 = v37;
    *&v37 = v174;
    *(&v37 + 1) = v149;
    v174 = v37;
    v34 = v178;
  }

  else
  {
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    v138 = 0;
    v139 = 0;
    v136 = 0;
    v137.n128_u64[0] = 0;
    v140 = 0;
    v141 = 0;
    v173 = 0u;
    v174 = 0u;
    v34 = v178;
    v32 = &qword_280C02000;
  }

  *&v149 = *(&__dst[4] + 1);
  if (*(&__dst[4] + 1))
  {
    v38 = *&__dst[2];
    v39 = __dst[3];
    v131 = *(&__dst[2] + 1);
    v132 = *(&__dst[3] + 1);
    v40 = LOBYTE(__dst[4]);
    v134 = *(&__dst[0] + 1);
    v135 = *&__dst[0];
    v147 = __dst[1];
    if (*&__dst[2])
    {
      LODWORD(v169) = LOBYTE(__dst[4]);
      v41 = *&__dst[0];
      v42 = *&__dst[2];
      v43 = *(&__dst[0] + 1);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
      v45 = OUTLINED_FUNCTION_16_7(v44);
      v46 = OUTLINED_FUNCTION_12_8(v45, xmmword_217758490);
      *(v40 + 32) = v41;
      v47 = (v40 + 32);
      v46[2].n128_u64[1] = v43;
      v38 = v42;
      OUTLINED_FUNCTION_3_22(v46, *&v147);
      sub_2172A9DC0();
      v48 = qword_280BE76A0;
      sub_217751DE8();
      if (v48 != -1)
      {
        OUTLINED_FUNCTION_0_16(&qword_280BE76A0);
      }

      v32 = &qword_280C02000;
      if (qword_280C023C0)
      {
        v130 = CGColorCreate(qword_280C023C0, v47);
      }

      else
      {

        v130 = 0;
      }

      LOBYTE(v40) = v169;

      v128 = 0;
      v34 = v178;
    }

    else if (__dst[3])
    {
      memcpy(v180, __dst, sizeof(v180));
      sub_2172A9DC0();
      v130 = 0;
      v49 = 256;
      if ((v40 & 1) == 0)
      {
        v49 = 0;
      }

      v128 = v49;
    }

    else
    {
      memcpy(v180, __dst, sizeof(v180));
      sub_2172A9DC0();
      v128 = 0;
      v130 = 0;
    }

    v180[0] = v39 & 1;
    v179 = v40 & 1;
    v129 = v39 & 1;
    v127 = v40 & 1;
    sub_217751DE8();
    sub_217751DE8();
    sub_2171F06D8(__dst, &qword_27CB24CB0, &qword_217759780);
    v14 = v170;
  }

  else
  {
    v130 = 0;
    v131 = 0;
    v132 = 0;
    v134 = 0;
    v135 = 0;
    v38 = 0;
    v127 = 0;
    v128 = 0;
    v129 = 0;
    v147 = 0u;
  }

  if (v133)
  {
    v126 = sub_2174FC644(0x656C746954736168);
  }

  else
  {
    v126 = 0;
  }

  v169 = v25;
  v180[0] = v167;
  v179 = v164;
  v133 = v38;
  if (v14)
  {
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
    v51 = OUTLINED_FUNCTION_16_7(v50);
    v52 = v154;
    *(v51 + 32) = v155;
    v53 = (v51 + 32);
    *(v51 + 16) = xmmword_217758490;
    *(v51 + 40) = v52;
    OUTLINED_FUNCTION_3_22(v51, *&v163);
    v54 = qword_280BE76A0;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    v55 = v148;
    sub_217751DE8();
    if (v54 != -1)
    {
      OUTLINED_FUNCTION_0_16(&qword_280BE76A0);
    }

    v32 = &qword_280C02000;
    v56 = v142;
    if (qword_280C023C0)
    {
      v125 = CGColorCreate(qword_280C023C0, v53);
    }

    else
    {

      v125 = 0;
    }

    v59 = v175;

    v57 = v172;
    v34 = v178;
  }

  else
  {
    sub_217751DE8();
    sub_217751DE8();
    v55 = v148;
    sub_217751DE8();
    v57 = v172;
    sub_217751DE8();
    v58 = v175;
    sub_217751DE8();
    v59 = v58;
    sub_217751DE8();
    v125 = 0;
    v56 = v142;
  }

  v60 = &unk_217758000;
  if (v57)
  {
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
    v62 = OUTLINED_FUNCTION_16_7(v61);
    v63 = OUTLINED_FUNCTION_12_8(v62, xmmword_217758490);
    qword_217758020[0] = v152;
    v63[2].n128_u64[1] = v153;
    OUTLINED_FUNCTION_3_22(v63, *&v162);
    if (qword_280BE76A0 != -1)
    {
      OUTLINED_FUNCTION_0_16(&qword_280BE76A0);
    }

    v64 = v32[120];
    if (v64)
    {
      v142 = CGColorCreate(v64, qword_217758020);
    }

    else
    {

      v142 = 0;
    }

    v60 = &unk_217758000;

    v34 = v178;
  }

  else
  {
    v142 = 0;
  }

  v65 = v166;
  v66 = &qword_280BE7000;
  if (v177)
  {
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
    v68 = OUTLINED_FUNCTION_16_7(v67);
    v69 = OUTLINED_FUNCTION_12_8(v68, xmmword_217758490);
    qword_217758020[0] = v65;
    v69[2].n128_u64[1] = v151;
    OUTLINED_FUNCTION_3_22(v69, *&v161);
    if (*(v70 + 1696) != -1)
    {
      OUTLINED_FUNCTION_0_16(&qword_280BE76A0);
    }

    v71 = v32[120];
    if (v71)
    {
      v72 = CGColorCreate(v71, qword_217758020);
    }

    else
    {

      v72 = 0;
    }

    v60 = &unk_217758000;

    v34 = v178;
    v66 = &qword_280BE7000;
    if (v59)
    {
      goto LABEL_55;
    }

LABEL_52:
    v124 = 0;
    goto LABEL_61;
  }

  v72 = 0;
  if (!v59)
  {
    goto LABEL_52;
  }

LABEL_55:
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
  v74 = OUTLINED_FUNCTION_16_7(v73);
  v75 = OUTLINED_FUNCTION_12_8(v74, xmmword_217758490);
  qword_217758020[0] = v150;
  v60 = qword_217758020;
  v75[2].n128_u64[1] = v158;
  OUTLINED_FUNCTION_3_22(v75, *&v160);
  if (v66[212] != -1)
  {
    OUTLINED_FUNCTION_0_16(&qword_280BE76A0);
  }

  v76 = v32[120];
  if (v76)
  {
    v124 = CGColorCreate(v76, qword_217758020);
  }

  else
  {

    v124 = 0;
  }

  v34 = v178;
LABEL_61:
  if (v176)
  {
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
    v78 = OUTLINED_FUNCTION_16_7(v77);
    v79 = OUTLINED_FUNCTION_12_8(v78, xmmword_217758490);
    v80 = v156;
    *(v60 + 4) = v157;
    v81 = v60 + 4;
    v79[2].n128_u64[1] = v80;
    OUTLINED_FUNCTION_3_22(v79, *&v159);
    if (v66[212] != -1)
    {
      OUTLINED_FUNCTION_0_16(&qword_280BE76A0);
    }

    v82 = v32[120];
    if (v82)
    {
      v83 = CGColorCreate(v82, v81);
    }

    else
    {

      v83 = 0;
    }

    v34 = v178;
  }

  else
  {
    v83 = 0;
  }

  sub_2177516C8();
  if (__swift_getEnumTagSinglePayload(v56, 1, v34) == 1)
  {
    sub_2171F06D8(v56, &unk_27CB277C0, &qword_217758DC0);
    v84 = 0;
    v85 = v152;
    v86 = v153;
    v87 = v133;
    v88 = v177;
    v89 = v131;
  }

  else
  {
    v90 = v56;
    v91 = v122;
    v92 = v123;
    (*(v123 + 32))(v122, v90, v34);
    type metadata accessor for ArtworkLoadingProtocol();
    v93 = v72;
    v94 = v34;
    v84 = sub_217576A44(v91);
    v95 = v91;
    v96 = v94;
    v72 = v93;
    v89 = v131;
    v88 = v177;
    v55 = v148;
    (*(v92 + 8))(v95, v96);
    v85 = v152;
    v86 = v153;
    v87 = v133;
  }

  v97 = v166;
  *a1 = v165;
  *(a1 + 8) = v55;
  v98 = v164 == 0;
  v99 = v128 | v127;
  *(a1 + 32) = v144;
  *(a1 + 40) = v143;
  *(a1 + 48) = v125;
  *(a1 + 56) = v142;
  *(a1 + 64) = v72;
  *(a1 + 72) = v124;
  *(a1 + 80) = v83;
  *(a1 + 120) = v155;
  *(a1 + 128) = v154;
  *(a1 + 152) = v170;
  *(a1 + 160) = v85;
  *(a1 + 168) = v86;
  *(a1 + 192) = v172;
  *(a1 + 200) = v97;
  v100 = v150;
  *(a1 + 208) = v151;
  *(a1 + 232) = v88;
  *(a1 + 240) = v100;
  v102 = v145;
  v101 = v146;
  if (v98)
  {
    v103 = v145;
  }

  else
  {
    v103 = 0;
  }

  if (v167)
  {
    v104 = 0;
  }

  else
  {
    v104 = v146;
  }

  v105 = v126 & 1;
  *(a1 + 16) = v104;
  *(a1 + 24) = v103;
  v106 = v180[0];
  v107 = v179;
  *(a1 + 88) = v101;
  *(a1 + 96) = v106;
  *(a1 + 104) = v102;
  *(a1 + 112) = v107;
  v108 = v162;
  *(a1 + 136) = v163;
  *(a1 + 176) = v108;
  v109 = v160;
  *(a1 + 216) = v161;
  *(a1 + 248) = v158;
  *(a1 + 256) = v109;
  v110 = v157;
  *(a1 + 272) = v175;
  *(a1 + 280) = v110;
  *(a1 + 288) = v156;
  *(a1 + 296) = v159;
  v111 = v139;
  *(a1 + 312) = v176;
  *(a1 + 320) = v111;
  v112 = v137.n128_u64[0];
  *(a1 + 328) = v138;
  *(a1 + 336) = v112;
  v113 = v173;
  *(a1 + 344) = v174;
  v114 = v171;
  *(a1 + 360) = v141;
  *(a1 + 368) = v114;
  *(a1 + 376) = v113;
  v115 = v140;
  *(a1 + 392) = v136;
  *(a1 + 400) = v115;
  v116 = v130;
  *(a1 + 408) = v169;
  *(a1 + 416) = v116;
  v117 = v129;
  *(a1 + 424) = v89;
  *(a1 + 432) = v117;
  *(a1 + 440) = v132;
  *(a1 + 448) = v99;
  v118 = v134;
  *(a1 + 456) = v135;
  *(a1 + 464) = v118;
  *(a1 + 472) = v147;
  v119 = v149;
  *(a1 + 488) = v87;
  *(a1 + 496) = v119;
  *(a1 + 504) = v105;
  *(a1 + 512) = v168;
  *(a1 + 520) = v84;
  result = 0.0;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0;
  return result;
}

uint64_t Artwork.convertToCloudArtworkAttribute()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v15 = *v1;
  v30 = v1[4];
  v4 = v1[5];
  v5 = *(v1 + 96);
  v12 = v1[13];
  v13 = v1[11];
  v11 = *(v1 + 112);
  v14 = *(v1 + 15);
  v25 = *(v1 + 17);
  v23 = *(v1 + 21);
  v29 = *(v1 + 27);
  v18 = *(v1 + 25);
  v27 = *(v1 + 35);
  v28 = *(v1 + 31);
  v19 = v1[38];
  v20 = v1[37];
  v6 = *(v1 + 504);
  v26 = v1[64];
  v24 = *(v1 + 19);
  v22 = *(v1 + 23);
  v16 = *(v1 + 33);
  v17 = *(v1 + 29);
  v21 = v1[39];
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  if (v6 == 1)
  {
    sub_217261934(&unk_28295E0D8);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *a1 = v15;
  *(a1 + 8) = v3;
  *(a1 + 16) = v13;
  *(a1 + 24) = v5;
  *(a1 + 32) = v12;
  *(a1 + 40) = v11;
  *&v9 = v30;
  *(&v9 + 1) = v4;
  *(a1 + 48) = v9;
  *(a1 + 64) = v14;
  *(a1 + 80) = v25;
  *(a1 + 96) = v24;
  *(a1 + 112) = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v18;
  *(a1 + 160) = v29;
  *(a1 + 176) = v17;
  *(a1 + 192) = v28;
  *(a1 + 208) = v16;
  *(a1 + 224) = v27;
  *(a1 + 240) = v20;
  *(a1 + 248) = v19;
  *(a1 + 256) = v21;
  bzero((a1 + 264), 0xA0uLL);
  *(a1 + 424) = v8;
  *(a1 + 432) = v26;

  return sub_217751DE8();
}

uint64_t sub_2172A9114(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v21 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      sub_2177531E8();
      sub_217751DE8();
      sub_217751FF8();
      v15 = sub_217753238();
      v16 = ~(-1 << *(a2 + 32));
      do
      {
        v17 = v15 & v16;
        if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {

          return 0;
        }

        v18 = (*(a2 + 48) + 16 * v17);
        if (*v18 == v14 && v18[1] == v13)
        {
          break;
        }

        v20 = sub_217753058();
        v15 = v17 + 1;
      }

      while ((v20 & 1) == 0);

      result = v21;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_2172A92BC()
{
  OUTLINED_FUNCTION_169();
  if (static CloudArtwork.== infix(_:_:)(v2, v3))
  {
    v4 = *(v1 + 432);
    v5 = *(v0 + 432);

    sub_217261FB0(v4, v5);
  }
}

void sub_2172A930C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    if (a5)
    {
      return;
    }

    goto LABEL_8;
  }

  if (a5)
  {
    v8 = a1 == a4 && a2 == a5;
    if (v8 || (sub_217753058() & 1) != 0)
    {
LABEL_8:

      sub_217261FB0(a3, a6);
    }
  }
}

void sub_2172A9384()
{
  OUTLINED_FUNCTION_169();
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(v4, v0, sizeof(v4));
  if (static CloudSpatialTimingInformation.== infix(_:_:)(__dst, v4))
  {
    v2 = v1[21];
    v3 = v0[21];

    sub_217261FB0(v2, v3);
  }
}

void sub_2172A9414(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if ((a6 & 1) == 0)
    {
      return;
    }
  }

  else if ((a6 & 1) != 0 || *&a1 != *&a5)
  {
    return;
  }

  if (a3)
  {
    if (!a7 || (sub_217271798(a3, a7) & 1) == 0)
    {
      return;
    }
  }

  else if (a7)
  {
    return;
  }

  sub_217261FB0(a4, a8);
}

void sub_2172A949C()
{
  OUTLINED_FUNCTION_169();
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  v6 = v0[1];
  v7 = v0[2];
  v8 = v0[3];
  if (!v3)
  {
    if (v6)
    {
      return;
    }

LABEL_10:
    if (v5)
    {
      if (!v8)
      {
        return;
      }

      v10 = v4 == v7 && v5 == v8;
      if (!v10 && (sub_217753058() & 1) == 0)
      {
        return;
      }
    }

    else if (v8)
    {
      return;
    }

    v11 = v1[4];
    v12 = v0[4];

    sub_217261FB0(v11, v12);
    return;
  }

  if (v6)
  {
    v9 = *v1 == *v0 && v3 == v6;
    if (v9 || (sub_217753058() & 1) != 0)
    {
      goto LABEL_10;
    }
  }
}

void sub_2172A9570()
{
  OUTLINED_FUNCTION_169();
  memcpy(__dst, v1, sizeof(__dst));
  memcpy(v4, v0, sizeof(v4));
  if (static CloudEditorialNotes.== infix(_:_:)(__dst, v4))
  {
    v2 = v1[8];
    v3 = v0[8];

    sub_217261FB0(v2, v3);
  }
}

void sub_2172A95F4(uint64_t *__src, void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v6, a2, sizeof(v6));
  if (static CloudArtwork.Gradient.== infix(_:_:)(__dst, v6))
  {
    v4 = __src[9];
    v5 = a2[9];

    sub_217261FB0(v4, v5);
  }
}

unint64_t sub_2172A96D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5118;
  if (!qword_280BE5118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5118);
  }

  return result;
}

unint64_t sub_2172A9724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE2790;
  if (!qword_280BE2790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2790);
  }

  return result;
}

unint64_t sub_2172A9778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24CC8;
  if (!qword_27CB24CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24CC8);
  }

  return result;
}

unint64_t sub_2172A97CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE50C0;
  if (!qword_280BE50C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE50C0);
  }

  return result;
}

unint64_t sub_2172A9820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE50C8;
  if (!qword_280BE50C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE50C8);
  }

  return result;
}

unint64_t sub_2172A9874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24CF0;
  if (!qword_27CB24CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24CF0);
  }

  return result;
}

void sub_2172A98C8(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_217753238();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;
  sub_217751DE8();
  v7 = 0;
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      MEMORY[0x21CEA3550](v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_2177531E8();
        sub_217751DE8();
        sub_217751FF8();
        v10 = sub_217753238();

        v7 ^= v10;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

uint64_t sub_2172A9A1C(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_217753238();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;
  result = sub_217751DE8();
  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x21CEA3550](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_2177531E8();
        sub_217751DE8();
        sub_217751FF8();

        result = sub_217753238();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2172A9B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE2788;
  if (!qword_280BE2788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2788);
  }

  return result;
}

unint64_t sub_2172A9BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE50E8;
  if (!qword_280BE50E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE50E8);
  }

  return result;
}

uint64_t sub_2172A9C14(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24CD0, &qword_217759798);
    v9 = sub_2172A97CC(v4, v5, v6);
    sub_2172A9820(v9, v7, v8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2172A9C8C(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB24CE0, &qword_2177597A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2172A9D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE50F0;
  if (!qword_280BE50F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE50F0);
  }

  return result;
}

uint64_t sub_2172A9DC0()
{
  OUTLINED_FUNCTION_169();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  (*(*(v4 - 8) + 16))(v0, v1, v4);
  return v0;
}

unint64_t sub_2172A9E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24D08;
  if (!qword_27CB24D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24D08);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8MusicKit12CloudArtworkV12TextGradientVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8MusicKit14CloudAttributeVyAA0C7ArtworkV8GradientVGSg(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2172A9EB4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 432))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_2172A9EF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 424) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 432) = 1;
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

    *(result + 432) = 0;
    if (a2)
    {
      goto LABEL_8;
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

uint64_t sub_2172A9FC0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_2172AA000(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CloudArtwork.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CloudArtwork.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2172AA1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB24D10;
  if (!qword_27CB24D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB24D10);
  }

  return result;
}

unint64_t sub_2172AA20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5100;
  if (!qword_280BE5100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5100);
  }

  return result;
}

unint64_t sub_2172AA264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5108;
  if (!qword_280BE5108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5108);
  }

  return result;
}

unint64_t sub_2172AA2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE5110;
  if (!qword_280BE5110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE5110);
  }

  return result;
}

unint64_t sub_2172AA310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE50F8;
  if (!qword_280BE50F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE50F8);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_11_18@<Q0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v5 = a4[1];
  *&STACK[0x2D0] = *a4;
  *&STACK[0x2E0] = v5;
  *(v4 + 120) = *(a1 + 40);
  result = *(a1 + 56);
  *(v4 + 136) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_10()
{

  return sub_2172A9DC0();
}

uint64_t OUTLINED_FUNCTION_22_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_217752E58();
}

void *OUTLINED_FUNCTION_26_9(void *a1)
{

  return memcpy(a1, &STACK[0x470], 0x48uLL);
}

uint64_t _MusicLibraryMapping.Request.mappedItems(scope:)(_BYTE *a1, void *a2)
{
  v5 = a2[2];
  *(v3 + 232) = v5;
  v6 = a2[3];
  *(v3 + 240) = v6;
  v7 = a2[4];
  *(v3 + 248) = v7;
  v8 = type metadata accessor for _MusicLibraryMapping.MappedItem(0, v5, v6, v7);
  *(v3 + 256) = v8;
  v9 = *(v8 - 8);
  *(v3 + 264) = v9;
  *(v3 + 272) = *(v9 + 64);
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  v10 = swift_task_alloc();
  *(v3 + 448) = *a1;
  v11 = *v2;
  *(v3 + 296) = v10;
  *(v3 + 304) = v11;

  return MEMORY[0x2822009F8](sub_2172AA520, 0, 0);
}

uint64_t sub_2172AA520()
{
  v28 = v0;
  v1 = dynamic_cast_existential_1_conditional(v0[29], v0[29], &protocol descriptor for UnderlyingLegacyModelObjectConvertible);
  v0[39] = v1;
  v0[40] = v2;
  if (!v1)
  {
    sub_217752AA8();

    strcpy(v27, "The item type ");
    HIBYTE(v27[1]) = -18;
    v18 = sub_217753348();
    MEMORY[0x21CEA23B0](v18);

    MEMORY[0x21CEA23B0](0xD000000000000012, 0x80000002177AB270, v19);
    return sub_217752D08();
  }

  v3 = dynamic_cast_existential_1_conditional(v0[29], v0[29], &protocol descriptor for MusicItemTypeValueProviding);
  v0[41] = v3;
  v0[42] = v4;
  if (!v3)
  {
    v27[0] = 0;
    v27[1] = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x6D65746920656854, 0xEE00206570797420);
    v20 = sub_217753348();
    MEMORY[0x21CEA23B0](v20);

    MEMORY[0x21CEA23B0](0xD00000000000002DLL, 0x80000002177AAFA0, v21);
    return sub_217752D08();
  }

  v5 = v0[38];
  v7 = v0[30];
  v6 = v0[31];
  v8 = v0[29];
  v9 = [objc_allocWithZone(MusicKit_SoftLinking_MPMutableSectionedCollection) init];
  v0[43] = v9;
  v10 = [objc_allocWithZone(MusicKit_SoftLinking_MPMutableSectionedCollection) init];
  v0[44] = v10;
  v11 = sub_217751F18();
  [v9 appendSection_];

  v12 = sub_217751F18();
  [v10 appendSection_];

  type metadata accessor for _MusicLibraryMapping.Item(0, v8, v7, v6);
  sub_217751DE8();
  v13 = sub_2177522A8();
  v27[0] = v13;
  while (v13 != sub_217752388())
  {
    v14 = sub_217752358();
    sub_2177522D8();
    if (v14)
    {
      v15 = *(v5 + 32 + 8 * v13);
    }

    else
    {
      v15 = sub_217752AC8();
    }

    v16 = sub_2177523E8();
    v17 = MEMORY[0x21CEA3980](v16);
    sub_2172AB3AC(v15, v10, v9);
    objc_autoreleasePoolPop(v17);

    v13 = v27[0];
  }

  sub_2172AC53C();
  v23 = [objc_opt_self() defaultUnpersonalizedRequest];
  v24 = sub_2172AB42C(v23, v9, v10);
  v0[45] = v24;
  v25 = sub_217752338();
  v0[46] = v25;
  v0[24] = v25;
  v0[2] = v0;
  v0[7] = v0 + 25;
  v0[3] = sub_2172AA9E0;
  v26 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D18, &qword_217759BA0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2172AB494;
  v0[13] = &block_descriptor_0;
  v0[14] = v26;
  [v24 performWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2172AA9E0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 376) = v1;
  if (v1)
  {
    v2 = sub_2172AB230;
  }

  else
  {
    v2 = sub_2172AAAF0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2172AAAF0()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 200);
  *(v0 + 384) = v2;
  v29 = *(v0 + 328);
  v27 = *(v0 + 232);
  v28 = *(v0 + 312);
  v3 = [v2 results];
  v4 = swift_allocObject();
  *(v0 + 392) = v4;
  *(v4 + 16) = v27;
  *(v4 + 32) = v1;
  *(v4 + 40) = v2;
  *(v4 + 48) = v29;
  *(v4 + 64) = v28;
  *(v4 + 80) = v0 + 192;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2172AC59C;
  *(v5 + 24) = v4;
  *(v0 + 176) = sub_2172AC5D8;
  *(v0 + 184) = v5;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_2177094CC;
  *(v0 + 168) = &block_descriptor_6;
  v6 = _Block_copy((v0 + 144));
  v7 = v2;

  [v3 enumerateItemIdentifiersUsingBlock_];

  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
LABEL_15:
    v23 = *(v0 + 272);
    result = sub_217752AC8();
    if (v23 != 8)
    {
      __break(1u);
      return result;
    }

    v24 = result;
    v25 = OUTLINED_FUNCTION_3_23();
    *(v0 + 224) = v24;
    v19 = *(v26 + 16);
    (v19)(v25, v0 + 224);
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  if (*(v0 + 448))
  {
    v8 = *(v0 + 360);
    v9 = *(v0 + 344);

    v10 = sub_217751DE8();
LABEL_6:
    OUTLINED_FUNCTION_2_20(v10);

    v14 = OUTLINED_FUNCTION_4_11();

    return v15(v14);
  }

  *(v0 + 208) = sub_217752338();
  *(v0 + 400) = *(v0 + 192);
  sub_217751DE8();
  *(v0 + 216) = sub_2177522A8();
  if (*(v0 + 216) == sub_217752388())
  {
    v11 = *(v0 + 384);
    v13 = *(v0 + 352);
    v12 = *(v0 + 360);

    v10 = *(v0 + 192);
    goto LABEL_6;
  }

  v17 = sub_217752358();
  sub_2177522D8();
  if ((v17 & 1) == 0)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_23();
  v19 = *(v18 + 16);
  OUTLINED_FUNCTION_1_13();
  v19();
LABEL_11:
  *(v0 + 408) = v19;
  sub_2177523E8();
  v20 = swift_task_alloc();
  *(v0 + 416) = v20;
  *v20 = v0;
  v21 = OUTLINED_FUNCTION_0_17(v20);

  return sub_217563DE4(v21, v22);
}

uint64_t sub_2172AAE98()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = v2[37];
    v4 = v2[32];
    v5 = v2[33];

    (*(v5 + 8))(v3, v4, v6);

    v7 = sub_2172AB2E8;
  }

  else
  {
    v8 = v2[37];
    v9 = v2[32];
    v10 = v2[33];
    v11 = *(v10 + 8);
    v2[54] = v11;
    v2[55] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v8, v9);
    v7 = sub_2172AB008;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2172AB008()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 288);
  v3 = *(v0 + 256);
  (*(v0 + 408))(*(v0 + 280), v2, v3);
  sub_217752418();
  sub_2177523C8();
  v1(v2, v3);
  if (*(v0 + 216) == sub_217752388())
  {
    v4 = *(v0 + 384);
    v6 = *(v0 + 352);
    v5 = *(v0 + 360);

    OUTLINED_FUNCTION_2_20(*(v0 + 192));

    v7 = OUTLINED_FUNCTION_4_11();

    return v8(v7);
  }

  else
  {
    v10 = sub_217752358();
    sub_2177522D8();
    if (v10)
    {
      OUTLINED_FUNCTION_3_23();
      v12 = *(v11 + 16);
      OUTLINED_FUNCTION_1_13();
      v12();
    }

    else
    {
      v16 = *(v0 + 272);
      result = sub_217752AC8();
      if (v16 != 8)
      {
        __break(1u);
        return result;
      }

      v17 = result;
      v18 = OUTLINED_FUNCTION_3_23();
      *(v0 + 224) = v17;
      v12 = *(v19 + 16);
      (v12)(v18, v0 + 224);
      swift_unknownObjectRelease();
    }

    *(v0 + 408) = v12;
    sub_2177523E8();
    v13 = swift_task_alloc();
    *(v0 + 416) = v13;
    *v13 = v0;
    v14 = OUTLINED_FUNCTION_0_17(v13);

    return sub_217563DE4(v14, v15);
  }
}

uint64_t sub_2172AB230(uint64_t a1)
{
  v2 = v1[44];
  v3 = v1[45];
  v4 = v1[43];
  swift_willThrow();

  sub_2172202A4(0, 0);

  v5 = v1[1];

  return v5();
}

uint64_t sub_2172AB2E8()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 352);
  v3 = *(v0 + 344);

  OUTLINED_FUNCTION_2_20(*(v0 + 192));
  sub_2172202A4(sub_2172AC59C, v2);

  v4 = *(v0 + 8);

  return v4();
}

void sub_2172AB3AC(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_2176527D8();
  v6 = sub_21726AD78();
  [a2 appendItem_];
  [a3 appendItem_];
}

id sub_2172AB42C(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithUnpersonalizedRequest:a1 unpersonalizedContentDescriptors:a2 representedObjects:a3];

  return v6;
}

uint64_t *sub_2172AB494(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_217718250();
  }

  else if (a2)
  {
    v8 = a2;

    return sub_217718254(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2172AB524(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, _UNKNOWN **a12)
{
  v19 = MEMORY[0x21CEA3980](a1, a2, a3);
  sub_2172AB5E4(a4, a1, a2, a5, a6, a7, a8, a9, a10, a11, a12);

  objc_autoreleasePoolPop(v19);
}

uint64_t sub_2172AB5E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, _UNKNOWN **a11)
{
  v170 = a8;
  v157 = a6;
  v158 = a7;
  v160 = a4;
  v161 = a5;
  v149 = a3;
  v172 = a10;
  v169 = type metadata accessor for _MusicLibraryMapping.MappedItem(0, a9, a10, a11);
  v168 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v166 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v167 = &v122 - v15;
  v16 = sub_217751968();
  v150 = *(v16 - 8);
  v151 = v16;
  MEMORY[0x28223BE20](v16);
  v155 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_2177528F8();
  v171 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v156 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v152 = &v122 - v20;
  MEMORY[0x28223BE20](v21);
  v159 = &v122 - v22;
  MEMORY[0x28223BE20](v23);
  v147 = &v122 - v24;
  MEMORY[0x28223BE20](v25);
  v146 = &v122 - v26;
  MEMORY[0x28223BE20](v27);
  v212 = &v122 - v28;
  v29 = type metadata accessor for _MusicLibraryMapping.Item.Source(0, a9, a10, a11);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v122 - v31;
  v173 = *(a9 - 8);
  MEMORY[0x28223BE20](v33);
  v163 = &v122 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v144 = &v122 - v36;
  v38 = MEMORY[0x28223BE20](v37);
  v164 = &v122 - v39;
  v154 = a1;
  v40 = [a1 representedObjectResults];
  v153 = a2;
  v41 = sub_217751938();
  v42 = [v40 itemAtIndexPath_];

  v162 = a11;
  type metadata accessor for _MusicLibraryMapping.Item(0, a9, v172, a11);
  v172 = swift_dynamicCastClass();
  if (v172)
  {
    (*(v30 + 16))(v32, &v172[*(*v172 + 120)], v29);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v43 = v173;
      v44 = v164;
      v45 = a9;
      (*(v173 + 32))(v164, v32, a9);
LABEL_23:
      v117 = v163;
      (*(v43 + 16))(v163, v44, v45);
      v118 = v167;
      _MusicLibraryMapping.MappedItem.init(item:mappingItem:)(v117, v172, v167);
      v119 = v168;
      v120 = v169;
      (*(v168 + 16))(v166, v118, v169);
      sub_217752418();
      sub_2177523C8();
      (*(v119 + 8))(v118, v120);
      return (*(v43 + 8))(v44, v45);
    }

    v145 = *v32;
    v46 = v165;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v48 = v171;
    v49 = v212;
    (*(v171 + 32))(v212, &v32[*(TupleTypeMetadata2 + 48)], v46);
    v50 = v48 + 16;
    v51 = *(v48 + 16);
    v52 = v146;
    v51(v146, v49, v46);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v52, 1, a9);
    v54 = v173;
    if (EnumTagSinglePayload == 1)
    {
      (*(v48 + 8))(v52, v46);
      v55 = 2;
    }

    else
    {
      v56 = v144;
      (*(v173 + 32))(v144, v52, a9);
      MusicItem.identifierSet.getter(a9, v162, v206);
      (*(v54 + 8))(v56, a9);
      memcpy(v207, v206, sizeof(v207));
      sub_217269F50(v207);
      if (v207[272])
      {
        v55 = 2;
      }

      else
      {
        v55 = 0;
      }
    }

    LODWORD(v146) = v55;
    v57 = v147;
    v51(v147, v212, v46);
    v58 = __swift_getEnumTagSinglePayload(v57, 1, a9);
    v148 = a9;
    if (v58 == 1)
    {
      (*(v48 + 8))(v57, v46);
      v206[0] = v145;
      _MusicLibraryMapping.ItemKind.convertToPublicInnerItemTypeValue()(v207);
      v59 = *v207;
      v60 = *&v207[8];
      v61 = *&v207[16];
      v62 = *&v207[24];
    }

    else
    {
      MusicItem.identifierSet.getter(a9, v162, v207);
      (*(v54 + 8))(v57, a9);
      v59 = *&v207[288];
      v63 = *&v207[296];
      v64 = *&v207[304];
      v65 = *&v207[312];
      sub_217751DE8();
      sub_217269F50(v207);
      v62 = v65;
      v61 = v64;
      v60 = v63;
    }

    v66 = v159;
    v147 = v60;
    if (v59)
    {
      v208 = v59;
      v209 = v60;
      v67 = v62;
      v68 = v61;
      v69 = v60;
      v70 = v59;
      v210 = v61;
      v211 = v62;
    }

    else
    {
      v71 = v61;
      v72 = v50;
      v73 = v62;
      (*(v161 + 8))(&v208);
      v62 = v73;
      v50 = v72;
      v61 = v71;
      v66 = v159;
      v60 = v147;
      v59 = 0;
      v70 = v208;
      v69 = v209;
      v68 = v210;
      v67 = v211;
    }

    *v206 = v70;
    *&v206[8] = v69;
    *&v206[16] = v68;
    *&v206[24] = v67;
    v205[0] = &unk_28295E548;
    LOBYTE(v179) = v146;
    v159 = v59;
    v146 = v61;
    v144 = v62;
    sub_2172AC64C(v59, v60, v61, v62);
    v74 = swift_unknownObjectRetain();
    sub_2172B6904(v74, v206, v205, &v179, v207);
    v149 = v50;
    v143 = v51;
    v51(v66, v212, v46);
    v75 = v148;
    if (__swift_getEnumTagSinglePayload(v66, 1, v148) == 1)
    {
      (*(v171 + 8))(v66, v46);
      v141 = v207[352];
      v139 = *&v207[336];
      v136 = *&v207[288];
      v137 = *&v207[320];
      v138 = *&v207[304];
      v142 = *&v207[312];
      v140 = *&v207[280];
      v76 = v207[272];
      v77 = *&v207[264];
      v134 = *&v207[232];
      v135 = *&v207[248];
      v132 = *&v207[200];
      v133 = *&v207[216];
      v130 = *&v207[168];
      v131 = *&v207[184];
      v128 = *&v207[136];
      v129 = *&v207[152];
      v126 = *&v207[104];
      v127 = *&v207[120];
      v124 = *&v207[72];
      v125 = *&v207[88];
      v122 = *&v207[40];
      v123 = *&v207[56];
      v78 = *&v207[16];
      v79 = *&v207[24];
      v80 = v207[32];
      v81 = *v207;
      v82 = *&v207[8];
      sub_217269EF4(v207, v206);
      v83 = v80;
      v84 = v81;
      v86 = v122;
      v85 = v123;
      v88 = v124;
      v87 = v125;
      v90 = v126;
      v89 = v127;
      v92 = v128;
      v91 = v129;
      v94 = v130;
      v93 = v131;
      v96 = v132;
      v95 = v133;
      v98 = v134;
      v97 = v135;
      v99 = v140;
      v100 = v142;
      v101 = v136;
      v102 = v137;
      v103 = v138;
      v104 = v139;
      v105 = v141;
    }

    else
    {
      MusicItem.identifierSet.getter(v75, v162, v205);
      (*(v173 + 8))(v66, v75);
      memcpy(v178, v207, 0x161uLL);
      memcpy(v177, v205, 0x161uLL);
      v174 = v205[2];
      v175 = v205[3];
      v176 = v205[4];
      sub_217269EF4(v207, v206);
      sub_217751DE8();
      sub_2174FC7B8();

      memcpy(v206, v178, sizeof(v206));
      sub_217269F50(v206);
      sub_217269F50(v205);
      v82 = *(&v179 + 1);
      v84 = v179;
      v79 = *(&v180 + 1);
      v78 = v180;
      v83 = v181;
      v85 = v183;
      v86 = v182;
      v87 = v185;
      v88 = v184;
      v89 = v187;
      v90 = v186;
      v91 = v189;
      v92 = v188;
      v93 = v191;
      v94 = v190;
      v95 = v193;
      v96 = v192;
      v97 = v195;
      v98 = v194;
      v77 = v196;
      v76 = v197;
      v101 = v199;
      v99 = v198;
      v103 = v200;
      v100 = v201;
      v102 = v202;
      v104 = v203;
      v105 = v204;
    }

    *v206 = v84;
    *&v206[8] = v82;
    *&v206[16] = v78;
    *&v206[24] = v79;
    v206[32] = v83;
    *&v206[40] = v86;
    *&v206[56] = v85;
    *&v206[72] = v88;
    *&v206[88] = v87;
    *&v206[104] = v90;
    *&v206[120] = v89;
    *&v206[136] = v92;
    *&v206[152] = v91;
    *&v206[168] = v94;
    *&v206[184] = v93;
    *&v206[200] = v96;
    *&v206[216] = v95;
    *&v206[232] = v98;
    *&v206[248] = v97;
    *&v206[264] = v77;
    v206[272] = v76;
    *&v206[288] = v101;
    *&v206[280] = v99;
    *&v206[304] = v103;
    *&v206[312] = v100;
    *&v206[320] = v102;
    *&v206[336] = v104;
    v206[352] = v105;
    memcpy(v205, v206, 0x161uLL);
    (*(v150 + 16))(v155, v153, v151);
    sub_217269EF4(v206, &v179);
    v106 = [v154 results];
    v107 = [v106 itemAtIndexPathBlock];

    *(swift_allocObject() + 16) = v107;
    v108 = v152;
    v109 = v165;
    v143(v152, v212, v165);
    v45 = v148;
    if (__swift_getEnumTagSinglePayload(v108, 1, v148) == 1)
    {
      (*(v171 + 8))(v108, v109);
      v181 = 0;
      v179 = 0u;
      v180 = 0u;
    }

    else
    {
      *(&v180 + 1) = v45;
      v181 = v162;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v179);
      (*(v173 + 32))(boxed_opaque_existential_0, v108, v45);
    }

    (*(v161 + 8))(v178);
    v177[0] = v178[0];
    v177[1] = v178[1];
    LOBYTE(v174) = 2;
    v111 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
    swift_allocObject();
    LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
    v181 = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
    *(&v180 + 1) = v111;
    *&v179 = v112;
    LOBYTE(v205[0]) = v145;
    _MusicLibraryMapping.ItemKind.convertToUnderlyingLegacyModelType()();
    v113 = v157;
    v114 = v158;
    v115 = *(v158 + 24);
    v205[3] = v157;
    v205[4] = v158;
    __swift_allocate_boxed_opaque_existential_0(v205);

    v115(&v179, v178, v113, v114);
    sub_2171FF30C(v205, &v179);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
    v116 = v156;
    if (swift_dynamicCast())
    {
      sub_2172AC65C(v159);
      sub_217269F50(v207);
      sub_217269F50(v206);

      (*(v171 + 8))(v212, v109);
      __swift_storeEnumTagSinglePayload(v116, 0, 1, v45);
      v43 = v173;
      v44 = v164;
      (*(v173 + 32))(v164, v116, v45);
      __swift_destroy_boxed_opaque_existential_1(v205);
      goto LABEL_23;
    }

    __swift_storeEnumTagSinglePayload(v116, 1, 1, v45);
    (*(v171 + 8))(v116, v109);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  result = sub_217752D08();
  __break(1u);
  return result;
}

unint64_t sub_2172AC53C()
{
  result = qword_280BE2220;
  if (!qword_280BE2220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BE2220);
  }

  return result;
}

uint64_t sub_2172AC5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2172AC64C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    return sub_217751DE8();
  }

  return result;
}

double sub_2172AC65C(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

uint64_t dispatch thunk of ExtendedPlaylistEntryMapping.performExtendedPlaylistEntryMapping<A>(scope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2172AC7B0;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_2172AC7B0()
{
  v1 = *v0;
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2172AC89C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 384) = a3;
  *(v4 + 392) = v3;
  *(v4 + 376) = a1;
  v7 = sub_2177528F8();
  *(v4 + 400) = v7;
  *(v4 + 408) = *(v7 - 8);
  *(v4 + 416) = swift_task_alloc();
  *(v4 + 424) = swift_task_alloc();
  *(v4 + 432) = *(a3 - 8);
  *(v4 + 440) = swift_task_alloc();
  *(v4 + 73) = *a2;
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2172ACDA4(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *v5 = *v2;
  *(v4 + 488) = v1;

  if (!v1)
  {
    *(v4 + 496) = a1;
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2172ACEDC()
{
  v1 = v0[52];
  v2 = v0[48];
  v0[45] = v0[62];
  *(swift_task_alloc() + 16) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D30, &qword_217759C48);
  sub_2172AD8B0();
  v3 = sub_217752148();

  v0[46] = v3;
  sub_217752418();
  swift_getWitnessTable();
  sub_217752728();

  sub_21729C7F8((v0 + 2));

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v5 = v0[56];
  if (EnumTagSinglePayload == 1)
  {
    v6 = v0[52];
    v7 = v0[48];
    v5(v0[47], v0[55], v7);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      (*(v0[51] + 8))(v0[52], v0[50]);
    }
  }

  else
  {
    v8 = v0[52];
    v10 = v0[47];
    v9 = v0[48];
    (*(v0[54] + 8))(v0[55], v9);
    v5(v10, v8, v9);
  }

  OUTLINED_FUNCTION_0_2();

  return v11();
}

uint64_t sub_2172AD0E0()
{
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[48];

  sub_21729C7F8((v0 + 2));
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2172AD198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21729C79C(a1, v9);
  sub_217275858(*(a1 + 64) + 32, &v8);
  Playlist.Entry.init(item:existingEntry:)();
  v6 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a3, v6 ^ 1u, 1, a2);
}

uint64_t sub_2172AD230(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 536) = v3;
  *(v4 + 528) = a3;
  *(v4 + 520) = a1;
  v6 = sub_2177528F8();
  *(v4 + 544) = v6;
  *(v4 + 552) = *(v6 - 8);
  *(v4 + 560) = swift_task_alloc();
  *(v4 + 457) = *a2;
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2172AD304()
{
  v1 = *(v0 + 457);
  sub_217554FF4();
  v3 = v2;
  *(v0 + 568) = v2;
  sub_217751DE8();
  v4 = swift_task_alloc();
  *(v0 + 576) = v4;
  *v4 = v0;
  v4[1] = sub_2172AD3D8;

  return sub_217604A68(v1, v3);
}

uint64_t sub_2172AD3D8()
{
  v10 = *v1;
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *(v10 + 584) = v4;

  if (v0)
  {

    v5 = *(v2 + 8);

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_35_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_2172AD548()
{
  v1 = v0[73];
  v2 = *(v1 + 16);
  if (v2)
  {
    v17 = MEMORY[0x277D84F90];
    sub_217275DB0(0, v2, 0);
    v3 = v1 + 32;
    do
    {
      sub_217202078(v3, (v0 + 41), &unk_27CB2ADA0, &unk_21775A060);
      sub_21729C79C((v0 + 41), (v0 + 50));
      sub_217275858(v0[49] + 32, (v0 + 58));
      Playlist.Entry.init(item:existingEntry:)();
      sub_2171F06D8((v0 + 41), &unk_27CB2ADA0, &unk_21775A060);
      v5 = *(v17 + 16);
      v4 = *(v17 + 24);
      if (v5 >= v4 >> 1)
      {
        sub_217275DB0(v4 > 1, v5 + 1, 1);
      }

      *(v17 + 16) = v5 + 1;
      v6 = v17 + 56 * v5;
      *(v6 + 80) = v21;
      *(v6 + 48) = v19;
      *(v6 + 64) = v20;
      *(v6 + 32) = v18;
      v3 += 72;
      --v2;
    }

    while (v2);
  }

  sub_217202078(v0[67], (v0 + 15), &unk_27CB2ACA0, &unk_217759C60);
  v7 = sub_217751DE8();
  sub_217555BC8(v7);
  sub_217202078((v0 + 2), (v0 + 28), &unk_27CB2ACA0, &unk_217759C60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB2ACA0, &unk_217759C60);
  if (swift_dynamicCast())
  {
    v8 = v0[70];
    v9 = v0[66];
    v10 = v0[65];
    sub_2171F06D8((v0 + 2), &unk_27CB2ACA0, &unk_217759C60);

    __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
    (*(*(v9 - 8) + 32))(v10, v8, v9);

    OUTLINED_FUNCTION_0_2();

    return v11();
  }

  else
  {
    v13 = v0[70];
    v14 = v0[69];
    v15 = v0[68];
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v0[66]);
    (*(v14 + 8))(v13, v15);
    OUTLINED_FUNCTION_4_24();
    OUTLINED_FUNCTION_2_21();
    v16 = sub_217753348();
    MEMORY[0x21CEA23B0](v16);

    return OUTLINED_FUNCTION_5_14("Fatal error");
  }
}