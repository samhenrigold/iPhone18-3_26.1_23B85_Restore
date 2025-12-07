uint64_t sub_24B4DECD4(uint64_t a1)
{
  v2 = sub_24B4DF6B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseContent.sectionDescriptors.getter()
{
  v1 = type metadata accessor for BrowseGalleryDescriptor(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for EditorialCollectionDetail(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BrowseContent(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B4E0AC8(v0, v9, type metadata accessor for BrowseContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_24B4E0108(v9, v3, type metadata accessor for BrowseGalleryDescriptor);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD040, &qword_24B521170);
      v11 = *(type metadata accessor for BrowseSectionDescriptor(0) - 8);
      v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_24B521160;
      sub_24B4E0AC8(v3, v13 + v12, type metadata accessor for BrowseGalleryDescriptor);
      swift_storeEnumTagMultiPayload();
      sub_24B4E11B4(v3, type metadata accessor for BrowseGalleryDescriptor);
    }

    else
    {
      return *v9;
    }
  }

  else
  {
    sub_24B4E0108(v9, v6, type metadata accessor for EditorialCollectionDetail);
    v13 = *&v6[*(v4 + 24)];

    sub_24B4E11B4(v6, type metadata accessor for EditorialCollectionDetail);
  }

  return v13;
}

uint64_t BrowseContent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD648, &qword_24B521178);
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v39 = &v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD650, &qword_24B521180);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v36 = &v31 - v5;
  v34 = type metadata accessor for BrowseGalleryDescriptor(0);
  MEMORY[0x28223BE20](v34);
  v35 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD658, &qword_24B521188);
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for EditorialCollectionDetail(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BrowseContent(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD660, &unk_24B521190);
  v43 = *(v16 - 8);
  v44 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4DF65C();
  sub_24B517FDC();
  sub_24B4E0AC8(v42, v15, type metadata accessor for BrowseContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = v35;
      sub_24B4E0108(v15, v35, type metadata accessor for BrowseGalleryDescriptor);
      v47 = 1;
      sub_24B4DF704();
      v21 = v36;
      v22 = v44;
      sub_24B517E3C();
      sub_24B4E0B78(&qword_27EFFCCE8, type metadata accessor for BrowseGalleryDescriptor, &protocol conformance descriptor for BrowseGalleryDescriptor);
      v23 = v38;
      sub_24B517EBC();
      (*(v37 + 8))(v21, v23);
      sub_24B4E11B4(v20, type metadata accessor for BrowseGalleryDescriptor);
      return (*(v43 + 8))(v18, v22);
    }

    else
    {
      v27 = *v15;
      v48 = 2;
      sub_24B4DF6B0();
      v28 = v39;
      v29 = v44;
      sub_24B517E3C();
      v45 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCB80, &qword_24B51CA80);
      sub_24B4E006C(&qword_27EFFCB88, &qword_27EFFCB90, &protocol conformance descriptor for BrowseSectionDescriptor, MEMORY[0x277D83948]);
      v30 = v41;
      sub_24B517EBC();
      (*(v40 + 8))(v28, v30);
      (*(v43 + 8))(v18, v29);
    }
  }

  else
  {
    sub_24B4E0108(v15, v12, type metadata accessor for EditorialCollectionDetail);
    v46 = 0;
    sub_24B4DF758();
    v25 = v44;
    sub_24B517E3C();
    sub_24B4E0B78(&qword_27EFFD688, type metadata accessor for EditorialCollectionDetail, &protocol conformance descriptor for EditorialCollectionDetail);
    v26 = v33;
    sub_24B517EBC();
    (*(v32 + 8))(v9, v26);
    sub_24B4E11B4(v12, type metadata accessor for EditorialCollectionDetail);
    return (*(v43 + 8))(v18, v25);
  }
}

unint64_t sub_24B4DF65C()
{
  result = qword_27EFFD668;
  if (!qword_27EFFD668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD668);
  }

  return result;
}

unint64_t sub_24B4DF6B0()
{
  result = qword_27EFFD670;
  if (!qword_27EFFD670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD670);
  }

  return result;
}

unint64_t sub_24B4DF704()
{
  result = qword_27EFFD678;
  if (!qword_27EFFD678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD678);
  }

  return result;
}

unint64_t sub_24B4DF758()
{
  result = qword_27EFFD680;
  if (!qword_27EFFD680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD680);
  }

  return result;
}

uint64_t BrowseContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD690, &qword_24B5211A0);
  v60 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v64 = &v50 - v3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD698, &qword_24B5211A8);
  v59 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v63 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD6A0, &qword_24B5211B0);
  v6 = *(v5 - 8);
  v55 = v5;
  v56 = v6;
  MEMORY[0x28223BE20](v5);
  v61 = &v50 - v7;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD6A8, &unk_24B5211B8);
  v66 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v9 = &v50 - v8;
  v10 = type metadata accessor for BrowseContent(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v50 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v50 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v50 - v20;
  v22 = a1[3];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_24B4DF65C();
  v23 = v67;
  sub_24B517FCC();
  if (!v23)
  {
    v52 = v19;
    v53 = v16;
    v51 = v13;
    v24 = v63;
    v25 = v64;
    v54 = v21;
    v67 = v10;
    v26 = v65;
    v28 = v61;
    v27 = v62;
    v29 = sub_24B517E1C();
    v30 = (2 * *(v29 + 16)) | 1;
    v69 = v29;
    v70 = v29 + 32;
    v71 = 0;
    v72 = v30;
    v31 = sub_24B4A39B8();
    v32 = v27;
    if (v31 == 3 || v71 != v72 >> 1)
    {
      v37 = sub_24B517D0C();
      swift_allocError();
      v39 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0);
      *v39 = v67;
      sub_24B517D8C();
      sub_24B517CFC();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
      swift_willThrow();
      (*(v66 + 8))(v9, v32);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v31)
      {
        if (v31 == 1)
        {
          LOBYTE(v73) = 1;
          sub_24B4DF704();
          v33 = v27;
          sub_24B517D7C();
          v34 = v26;
          type metadata accessor for BrowseGalleryDescriptor(0);
          sub_24B4E0B78(&qword_27EFFCD68, type metadata accessor for BrowseGalleryDescriptor, &protocol conformance descriptor for BrowseGalleryDescriptor);
          v35 = v53;
          v36 = v57;
          sub_24B517E0C();
          (*(v59 + 8))(v24, v36);
          (*(v66 + 8))(v9, v33);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v48 = v35;
        }

        else
        {
          LOBYTE(v73) = 2;
          sub_24B4DF6B0();
          sub_24B517D7C();
          v34 = v26;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFCB80, &qword_24B51CA80);
          sub_24B4E006C(&qword_27EFFCBA8, &qword_27EFFCBB0, &protocol conformance descriptor for BrowseSectionDescriptor, MEMORY[0x277D83978]);
          v46 = v58;
          sub_24B517E0C();
          v47 = v66;
          (*(v60 + 8))(v25, v46);
          (*(v47 + 8))(v9, v27);
          swift_unknownObjectRelease();
          v49 = v51;
          *v51 = v73;
          swift_storeEnumTagMultiPayload();
          v48 = v49;
        }

        v45 = v54;
        sub_24B4E0108(v48, v54, type metadata accessor for BrowseContent);
      }

      else
      {
        LOBYTE(v73) = 0;
        sub_24B4DF758();
        v41 = v28;
        v42 = v27;
        sub_24B517D7C();
        type metadata accessor for EditorialCollectionDetail(0);
        sub_24B4E0B78(&qword_27EFFD6B0, type metadata accessor for EditorialCollectionDetail, &protocol conformance descriptor for EditorialCollectionDetail);
        v43 = v52;
        v44 = v55;
        sub_24B517E0C();
        (*(v56 + 8))(v41, v44);
        (*(v66 + 8))(v9, v42);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v45 = v54;
        sub_24B4E0108(v43, v54, type metadata accessor for BrowseContent);
        v34 = v26;
      }

      sub_24B4E0108(v45, v34, type metadata accessor for BrowseContent);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v68);
}

uint64_t sub_24B4E006C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCB80, &qword_24B51CA80);
    sub_24B4E0B78(a2, type metadata accessor for BrowseSectionDescriptor, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B4E0108(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t BrowseContent.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for BrowseGalleryDescriptor(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BrowseSectionDescriptor(0);
  v29 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v12 = type metadata accessor for EditorialCollectionDetail(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for BrowseContent(0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24B4E0AC8(v1, v17, type metadata accessor for BrowseContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_24B4E0108(v17, v5, type metadata accessor for BrowseGalleryDescriptor);
      MEMORY[0x24C241D70](1);
      BrowseDisplayStyle.rawValue.getter(*v5);
      sub_24B517B3C();

      sub_24B517B3C();
      sub_24B4844E8(a1, *(v5 + 3));
      MEMORY[0x24C241D70](v5[32]);
      sub_24B516B8C();
      sub_24B4E0B78(&qword_2810EED98, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
      sub_24B517A9C();
      return sub_24B4E11B4(v5, type metadata accessor for BrowseGalleryDescriptor);
    }

    else
    {
      v24 = *v17;
      MEMORY[0x24C241D70](2);
      MEMORY[0x24C241D70](*(v24 + 16));
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = v24 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
        v27 = *(v29 + 72);
        do
        {
          sub_24B4E0AC8(v26, v9, type metadata accessor for BrowseSectionDescriptor);
          BrowseSectionDescriptor.hash(into:)(a1);
          sub_24B4E11B4(v9, type metadata accessor for BrowseSectionDescriptor);
          v26 += v27;
          --v25;
        }

        while (v25);
      }
    }
  }

  else
  {
    sub_24B4E0108(v17, v14, type metadata accessor for EditorialCollectionDetail);
    MEMORY[0x24C241D70](0);
    sub_24B4AF9C8(a1);
    EditorialCollection.hash(into:)(a1);
    v20 = *&v14[*(v12 + 24)];
    MEMORY[0x24C241D70](*(v20 + 16));
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = v20 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
      v23 = *(v29 + 72);
      do
      {
        sub_24B4E0AC8(v22, v11, type metadata accessor for BrowseSectionDescriptor);
        BrowseSectionDescriptor.hash(into:)(a1);
        sub_24B4E11B4(v11, type metadata accessor for BrowseSectionDescriptor);
        v22 += v23;
        --v21;
      }

      while (v21);
    }

    return sub_24B4E11B4(v14, type metadata accessor for EditorialCollectionDetail);
  }
}

uint64_t BrowseContent.hashValue.getter()
{
  sub_24B517F7C();
  BrowseContent.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4E064C()
{
  sub_24B517F7C();
  BrowseContent.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4E0690(uint64_t a1)
{
  sub_24B517F7C();
  BrowseContent.hash(into:)(v2);
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing13BrowseContentO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseGalleryDescriptor(0);
  MEMORY[0x28223BE20](v4 - 8);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EditorialCollectionDetail(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BrowseContent(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v30 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD720, &unk_24B521730);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v30 - v20;
  v22 = *(v19 + 56);
  sub_24B4E0AC8(a1, &v30 - v20, type metadata accessor for BrowseContent);
  sub_24B4E0AC8(a2, &v21[v22], type metadata accessor for BrowseContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_24B4E0AC8(v21, v15, type metadata accessor for BrowseContent);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v24 = v31;
        sub_24B4E0108(&v21[v22], v31, type metadata accessor for BrowseGalleryDescriptor);
        v25 = _s15FitnessBrowsing23BrowseGalleryDescriptorV2eeoiySbAC_ACtFZ_0(v15, v24);
        sub_24B4E11B4(v24, type metadata accessor for BrowseGalleryDescriptor);
        v26 = v15;
        v27 = type metadata accessor for BrowseGalleryDescriptor;
LABEL_13:
        sub_24B4E11B4(v26, v27);
        goto LABEL_14;
      }

      sub_24B4E11B4(v15, type metadata accessor for BrowseGalleryDescriptor);
    }

    else
    {
      sub_24B4E0AC8(v21, v12, type metadata accessor for BrowseContent);
      v28 = *v12;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v25 = sub_24B4840D8(v28, *&v21[v22]);

LABEL_14:
        sub_24B4E11B4(v21, type metadata accessor for BrowseContent);
        return v25 & 1;
      }
    }
  }

  else
  {
    sub_24B4E0AC8(v21, v17, type metadata accessor for BrowseContent);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_24B4E0108(&v21[v22], v8, type metadata accessor for EditorialCollectionDetail);
      v25 = _s15FitnessBrowsing25EditorialCollectionDetailV2eeoiySbAC_ACtFZ_0(v17, v8);
      sub_24B4E11B4(v8, type metadata accessor for EditorialCollectionDetail);
      v26 = v17;
      v27 = type metadata accessor for EditorialCollectionDetail;
      goto LABEL_13;
    }

    sub_24B4E11B4(v17, type metadata accessor for EditorialCollectionDetail);
  }

  sub_24B4E114C(v21);
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_24B4E0AC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B4E0B78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24B4E0C04()
{
  result = qword_27EFFD6C0;
  if (!qword_27EFFD6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD6C0);
  }

  return result;
}

unint64_t sub_24B4E0C5C()
{
  result = qword_27EFFD6C8;
  if (!qword_27EFFD6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD6C8);
  }

  return result;
}

unint64_t sub_24B4E0CB4()
{
  result = qword_27EFFD6D0;
  if (!qword_27EFFD6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD6D0);
  }

  return result;
}

unint64_t sub_24B4E0D0C()
{
  result = qword_27EFFD6D8;
  if (!qword_27EFFD6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD6D8);
  }

  return result;
}

unint64_t sub_24B4E0D64()
{
  result = qword_27EFFD6E0;
  if (!qword_27EFFD6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD6E0);
  }

  return result;
}

unint64_t sub_24B4E0DBC()
{
  result = qword_27EFFD6E8;
  if (!qword_27EFFD6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD6E8);
  }

  return result;
}

unint64_t sub_24B4E0E14()
{
  result = qword_27EFFD6F0;
  if (!qword_27EFFD6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD6F0);
  }

  return result;
}

unint64_t sub_24B4E0E6C()
{
  result = qword_27EFFD6F8;
  if (!qword_27EFFD6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD6F8);
  }

  return result;
}

unint64_t sub_24B4E0EC4()
{
  result = qword_27EFFD700;
  if (!qword_27EFFD700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD700);
  }

  return result;
}

unint64_t sub_24B4E0F1C()
{
  result = qword_27EFFD708;
  if (!qword_27EFFD708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD708);
  }

  return result;
}

unint64_t sub_24B4E0F74()
{
  result = qword_27EFFD710;
  if (!qword_27EFFD710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD710);
  }

  return result;
}

unint64_t sub_24B4E0FCC()
{
  result = qword_27EFFD718;
  if (!qword_27EFFD718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD718);
  }

  return result;
}

uint64_t sub_24B4E1020(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000019 && 0x800000024B5279A0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024B5279C0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B527730 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_24B517EEC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24B4E114C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD720, &unk_24B521730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B4E11B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B4E1218()
{
  v1 = 1954047348;
  if (*v0 != 1)
  {
    v1 = 0x6E694C6F65646976;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7241726564616568;
  }
}

uint64_t sub_24B4E127C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4E3484(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4E12A4(uint64_t a1)
{
  v2 = sub_24B4E2DC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4E12E0(uint64_t a1)
{
  v2 = sub_24B4E2DC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4E131C(uint64_t a1)
{
  v2 = sub_24B4E2F20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4E1358(uint64_t a1)
{
  v2 = sub_24B4E2F20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4E1394(uint64_t a1)
{
  v2 = sub_24B4E2ECC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4E13D0(uint64_t a1)
{
  v2 = sub_24B4E2ECC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4E140C(uint64_t a1)
{
  v2 = sub_24B4E2E78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4E1448(uint64_t a1)
{
  v2 = sub_24B4E2E78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseDetailContent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD728, &qword_24B521740);
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = &v30 - v3;
  v38 = type metadata accessor for BrowseDetailVideoLinkItem(0);
  MEMORY[0x28223BE20](v38);
  v39 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD730, &qword_24B521748);
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v35 = &v30 - v6;
  v33 = type metadata accessor for BrowseDetailTextItem(0);
  MEMORY[0x28223BE20](v33);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD738, &qword_24B521750);
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v30 = type metadata accessor for BrowseDetailArtworkItem(0);
  MEMORY[0x28223BE20](v30);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BrowseDetailContent(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD740, &qword_24B521758);
  v16 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v18 = &v30 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4E2DC0();
  sub_24B517FDC();
  sub_24B4E2E14(v43, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = (v16 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = type metadata accessor for BrowseDetailTextItem;
      v22 = v34;
      sub_24B4E2F74(v15, v34, type metadata accessor for BrowseDetailTextItem);
      v46 = 1;
      sub_24B4E2ECC();
      v23 = v35;
      v24 = v44;
      sub_24B517E3C();
      sub_24B4E3674(&qword_27EFFD768, type metadata accessor for BrowseDetailTextItem, &protocol conformance descriptor for BrowseDetailTextItem);
      v25 = v37;
      sub_24B517EBC();
      v26 = v36;
    }

    else
    {
      v21 = type metadata accessor for BrowseDetailVideoLinkItem;
      v22 = v39;
      sub_24B4E2F74(v15, v39, type metadata accessor for BrowseDetailVideoLinkItem);
      v47 = 2;
      sub_24B4E2E78();
      v23 = v40;
      v24 = v44;
      sub_24B517E3C();
      sub_24B4E3674(&qword_27EFFD758, type metadata accessor for BrowseDetailVideoLinkItem, &protocol conformance descriptor for BrowseDetailVideoLinkItem);
      v25 = v42;
      sub_24B517EBC();
      v26 = v41;
    }

    (*(v26 + 8))(v23, v25);
    sub_24B4E3614(v22, v21);
    return (*v20)(v18, v24);
  }

  else
  {
    sub_24B4E2F74(v15, v12, type metadata accessor for BrowseDetailArtworkItem);
    v45 = 0;
    sub_24B4E2F20();
    v27 = v44;
    sub_24B517E3C();
    sub_24B4E3674(&qword_27EFFD778, type metadata accessor for BrowseDetailArtworkItem, &protocol conformance descriptor for BrowseDetailArtworkItem);
    v28 = v32;
    sub_24B517EBC();
    (*(v31 + 8))(v10, v28);
    sub_24B4E3614(v12, type metadata accessor for BrowseDetailArtworkItem);
    return (*v20)(v18, v27);
  }
}

uint64_t BrowseDetailContent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD780, &qword_24B521760);
  v4 = *(v3 - 8);
  v63 = v3;
  v64 = v4;
  MEMORY[0x28223BE20](v3);
  v67 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD788, &qword_24B521768);
  v7 = *(v6 - 8);
  v61 = v6;
  v62 = v7;
  MEMORY[0x28223BE20](v6);
  v66 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD790, &qword_24B521770);
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x28223BE20](v9);
  v65 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD798, &unk_24B521778);
  v69 = *(v11 - 8);
  v70 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - v12;
  v14 = type metadata accessor for BrowseDetailContent(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v54 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v54 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v54 - v24;
  v26 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_24B4E2DC0();
  v27 = v71;
  sub_24B517FCC();
  if (!v27)
  {
    v55 = v20;
    v56 = v23;
    v57 = v17;
    v29 = v65;
    v28 = v66;
    v71 = 0;
    v58 = v14;
    v31 = v67;
    v30 = v68;
    v32 = v70;
    v33 = sub_24B517E1C();
    v34 = (2 * *(v33 + 16)) | 1;
    v73 = v33;
    v74 = v33 + 32;
    v75 = 0;
    v76 = v34;
    v35 = sub_24B4A39B8();
    if (v35 == 3 || v75 != v76 >> 1)
    {
      v39 = sub_24B517D0C();
      swift_allocError();
      v41 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0);
      *v41 = v58;
      sub_24B517D8C();
      sub_24B517CFC();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
      swift_willThrow();
    }

    else
    {
      if (v35)
      {
        if (v35 == 1)
        {
          v77 = 1;
          sub_24B4E2ECC();
          v36 = v71;
          sub_24B517D7C();
          v37 = v30;
          v38 = v69;
          if (v36)
          {
            goto LABEL_9;
          }

          v71 = v25;
          type metadata accessor for BrowseDetailTextItem(0);
          sub_24B4E3674(&qword_27EFFD7A8, type metadata accessor for BrowseDetailTextItem, &protocol conformance descriptor for BrowseDetailTextItem);
          v51 = v55;
          v52 = v61;
          sub_24B517E0C();
          (*(v62 + 8))(v28, v52);
          (*(v38 + 8))(v13, v70);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v44 = v51;
        }

        else
        {
          v77 = 2;
          sub_24B4E2E78();
          v46 = v31;
          v47 = v71;
          sub_24B517D7C();
          v48 = v69;
          if (v47)
          {
            goto LABEL_9;
          }

          v37 = v30;
          v71 = v25;
          type metadata accessor for BrowseDetailVideoLinkItem(0);
          sub_24B4E3674(&qword_27EFFD7A0, type metadata accessor for BrowseDetailVideoLinkItem, &protocol conformance descriptor for BrowseDetailVideoLinkItem);
          v49 = v57;
          v50 = v63;
          sub_24B517E0C();
          (*(v64 + 8))(v46, v50);
          (*(v48 + 8))(v13, v32);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v44 = v49;
        }

LABEL_17:
        v53 = v71;
        sub_24B4E2F74(v44, v71, type metadata accessor for BrowseDetailContent);
        sub_24B4E2F74(v53, v37, type metadata accessor for BrowseDetailContent);
        return __swift_destroy_boxed_opaque_existential_1(v72);
      }

      v77 = 0;
      sub_24B4E2F20();
      v43 = v71;
      sub_24B517D7C();
      if (!v43)
      {
        v71 = v25;
        type metadata accessor for BrowseDetailArtworkItem(0);
        sub_24B4E3674(&qword_27EFFD7B0, type metadata accessor for BrowseDetailArtworkItem, &protocol conformance descriptor for BrowseDetailArtworkItem);
        v44 = v56;
        v45 = v60;
        sub_24B517E0C();
        (*(v59 + 8))(v29, v45);
        (*(v69 + 8))(v13, v32);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v37 = v30;
        goto LABEL_17;
      }
    }

LABEL_9:
    (*(v69 + 8))(v13, v32);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v72);
}

uint64_t BrowseDetailContent.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for BrowseDetailVideoLinkItem(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BrowseDetailTextItem(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BrowseDetailArtworkItem(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BrowseDetailContent(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B4E2E14(v1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_24B4E2F74(v14, v8, type metadata accessor for BrowseDetailTextItem);
      MEMORY[0x24C241D70](1);
      BrowseDetailTextItem.hash(into:)(a1);
      v16 = v8;
      v17 = type metadata accessor for BrowseDetailTextItem;
    }

    else
    {
      sub_24B4E2F74(v14, v5, type metadata accessor for BrowseDetailVideoLinkItem);
      MEMORY[0x24C241D70](2);
      sub_24B516B8C();
      sub_24B4E3674(&qword_2810EED98, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
      sub_24B517A9C();
      sub_24B517B3C();
      v18 = &v5[*(v3 + 24)];
      sub_24B517B3C();
      if (*(v18 + 3))
      {
        sub_24B517F9C();
        sub_24B517B3C();
      }

      else
      {
        sub_24B517F9C();
      }

      type metadata accessor for VideoAsset(0);
      sub_24B516BAC();
      sub_24B4E3674(&qword_2810EED80, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      sub_24B517A9C();
      v17 = type metadata accessor for BrowseDetailVideoLinkItem;
      v16 = v5;
    }
  }

  else
  {
    sub_24B4E2F74(v14, v11, type metadata accessor for BrowseDetailArtworkItem);
    MEMORY[0x24C241D70](0);
    sub_24B4E3674(&qword_27EFFCA88, type metadata accessor for BrowseDetailArtworkItem, &protocol conformance descriptor for BrowseDetailArtworkItem);
    sub_24B517A9C();
    v16 = v11;
    v17 = type metadata accessor for BrowseDetailArtworkItem;
  }

  return sub_24B4E3614(v16, v17);
}

uint64_t BrowseDetailContent.hashValue.getter()
{
  sub_24B517F7C();
  BrowseDetailContent.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4E27C8()
{
  sub_24B517F7C();
  BrowseDetailContent.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4E280C(uint64_t a1)
{
  sub_24B517F7C();
  BrowseDetailContent.hash(into:)(v2);
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing19BrowseDetailContentO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v44 = type metadata accessor for BrowseDetailVideoLinkItem(0);
  MEMORY[0x28223BE20](v44);
  v45 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BrowseDetailTextItem(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BrowseDetailArtworkItem(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BrowseDetailContent(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v43 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v43 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD820, &qword_24B521CD8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v43 - v21;
  v23 = *(v20 + 56);
  sub_24B4E2E14(a1, &v43 - v21);
  sub_24B4E2E14(v46, &v22[v23]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_24B4E2E14(v22, v18);
    if (swift_getEnumCaseMultiPayload())
    {
      v26 = type metadata accessor for BrowseDetailArtworkItem;
      v27 = v18;
LABEL_18:
      sub_24B4E3614(v27, v26);
      sub_24B4E35AC(v22);
LABEL_28:
      v25 = 0;
      return v25 & 1;
    }

    sub_24B4E2F74(&v22[v23], v9, type metadata accessor for BrowseDetailArtworkItem);
    type metadata accessor for BrowseArtwork(0);
    sub_24B4E3674(qword_2810EE948, type metadata accessor for BrowseArtwork, &protocol conformance descriptor for BrowseArtwork);
    if (sub_24B516CBC())
    {
      if (v38 = *(v7 + 20), v39 = *&v18[v38], v40 = *&v18[v38 + 8], v41 = &v9[v38], v39 == *v41) && v40 == *(v41 + 1) || (sub_24B517EEC())
      {
        v34 = type metadata accessor for BrowseDetailArtworkItem;
        sub_24B4E3614(v9, type metadata accessor for BrowseDetailArtworkItem);
        v35 = v18;
        goto LABEL_25;
      }
    }

    v36 = type metadata accessor for BrowseDetailArtworkItem;
    sub_24B4E3614(v9, type metadata accessor for BrowseDetailArtworkItem);
    v37 = v18;
LABEL_27:
    sub_24B4E3614(v37, v36);
    sub_24B4E3614(v22, type metadata accessor for BrowseDetailContent);
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_24B4E2E14(v22, v13);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v26 = type metadata accessor for BrowseDetailVideoLinkItem;
      v27 = v13;
      goto LABEL_18;
    }

    v28 = v45;
    sub_24B4E2F74(&v22[v23], v45, type metadata accessor for BrowseDetailVideoLinkItem);
    if (sub_24B516B7C())
    {
      v29 = *(v44 + 20);
      v30 = *&v13[v29];
      v31 = *&v13[v29 + 8];
      v32 = (v28 + v29);
      v33 = v30 == *v32 && v31 == v32[1];
      if (v33 || (sub_24B517EEC()) && (_s15FitnessBrowsing10VideoAssetV2eeoiySbAC_ACtFZ_0(&v13[*(v44 + 24)], (v28 + *(v44 + 24))))
      {
        v34 = type metadata accessor for BrowseDetailVideoLinkItem;
        sub_24B4E3614(v28, type metadata accessor for BrowseDetailVideoLinkItem);
        v35 = v13;
LABEL_25:
        sub_24B4E3614(v35, v34);
        sub_24B4E3614(v22, type metadata accessor for BrowseDetailContent);
        v25 = 1;
        return v25 & 1;
      }
    }

    v36 = type metadata accessor for BrowseDetailVideoLinkItem;
    sub_24B4E3614(v28, type metadata accessor for BrowseDetailVideoLinkItem);
    v37 = v13;
    goto LABEL_27;
  }

  sub_24B4E2E14(v22, v16);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v26 = type metadata accessor for BrowseDetailTextItem;
    v27 = v16;
    goto LABEL_18;
  }

  sub_24B4E2F74(&v22[v23], v6, type metadata accessor for BrowseDetailTextItem);
  v25 = _s15FitnessBrowsing20BrowseDetailTextItemV2eeoiySbAC_ACtFZ_0(v16, v6);
  sub_24B4E3614(v6, type metadata accessor for BrowseDetailTextItem);
  sub_24B4E3614(v16, type metadata accessor for BrowseDetailTextItem);
  sub_24B4E3614(v22, type metadata accessor for BrowseDetailContent);
  return v25 & 1;
}

unint64_t sub_24B4E2DC0()
{
  result = qword_27EFFD748;
  if (!qword_27EFFD748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD748);
  }

  return result;
}

uint64_t sub_24B4E2E14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseDetailContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B4E2E78()
{
  result = qword_27EFFD750;
  if (!qword_27EFFD750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD750);
  }

  return result;
}

unint64_t sub_24B4E2ECC()
{
  result = qword_27EFFD760;
  if (!qword_27EFFD760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD760);
  }

  return result;
}

unint64_t sub_24B4E2F20()
{
  result = qword_27EFFD770;
  if (!qword_27EFFD770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD770);
  }

  return result;
}

uint64_t sub_24B4E2F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24B4E3068()
{
  result = qword_27EFFD7C0;
  if (!qword_27EFFD7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD7C0);
  }

  return result;
}

unint64_t sub_24B4E30C0()
{
  result = qword_27EFFD7C8;
  if (!qword_27EFFD7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD7C8);
  }

  return result;
}

unint64_t sub_24B4E3118()
{
  result = qword_27EFFD7D0;
  if (!qword_27EFFD7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD7D0);
  }

  return result;
}

unint64_t sub_24B4E3170()
{
  result = qword_27EFFD7D8;
  if (!qword_27EFFD7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD7D8);
  }

  return result;
}

unint64_t sub_24B4E31C8()
{
  result = qword_27EFFD7E0;
  if (!qword_27EFFD7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD7E0);
  }

  return result;
}

unint64_t sub_24B4E3220()
{
  result = qword_27EFFD7E8;
  if (!qword_27EFFD7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD7E8);
  }

  return result;
}

unint64_t sub_24B4E3278()
{
  result = qword_27EFFD7F0;
  if (!qword_27EFFD7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD7F0);
  }

  return result;
}

unint64_t sub_24B4E32D0()
{
  result = qword_27EFFD7F8;
  if (!qword_27EFFD7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD7F8);
  }

  return result;
}

unint64_t sub_24B4E3328()
{
  result = qword_27EFFD800;
  if (!qword_27EFFD800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD800);
  }

  return result;
}

unint64_t sub_24B4E3380()
{
  result = qword_27EFFD808;
  if (!qword_27EFFD808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD808);
  }

  return result;
}

unint64_t sub_24B4E33D8()
{
  result = qword_27EFFD810;
  if (!qword_27EFFD810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD810);
  }

  return result;
}

unint64_t sub_24B4E3430()
{
  result = qword_27EFFD818;
  if (!qword_27EFFD818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD818);
  }

  return result;
}

uint64_t sub_24B4E3484(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7241726564616568 && a2 == 0xED00006B726F7774;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E694C6F65646976 && a2 == 0xE90000000000006BLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B517EEC();

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

uint64_t sub_24B4E35AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD820, &qword_24B521CD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B4E3614(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B4E3674(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t BrowseLazyItem.identifier.getter()
{
  v1 = v0;
  v2 = type metadata accessor for BrowseItem(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BrowseLazyItem(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B4ABD68(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(v7 + 7);
  }

  else
  {
    sub_24B4850B8(v7, v4);
    v8 = *&v4[*(v2 + 68)];

    sub_24B4E3800(v4);
  }

  return v8;
}

uint64_t sub_24B4E3800(uint64_t a1)
{
  v2 = type metadata accessor for BrowseItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BrowseLazyItem.referenceType.getter()
{
  v1 = v0;
  v2 = type metadata accessor for BrowseItem(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BrowseLazyItem(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B4ABD68(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = v7[72];
  }

  else
  {
    sub_24B4850B8(v7, v4);
    v8 = v4[*(v2 + 72)];
    sub_24B4E3800(v4);
  }

  return v8;
}

uint64_t BrowseGalleryDescriptor.init(displayStyle:identifier:items:preferredInsetBehavior:title:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5 & 1;
  v9 = *(type metadata accessor for BrowseGalleryDescriptor(0) + 32);
  v10 = sub_24B516B8C();
  v11 = *(*(v10 - 8) + 32);

  return v11(a7 + v9, a6, v10);
}

uint64_t BrowseGalleryDescriptor.identifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t BrowseGalleryDescriptor.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BrowseGalleryDescriptor(0) + 32);
  v4 = sub_24B516B8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24B4E3AF8()
{
  v1 = *v0;
  v2 = 0x5379616C70736964;
  v3 = 0x736D657469;
  v4 = 0xD000000000000016;
  if (v1 != 3)
  {
    v4 = 0x656C746974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x696669746E656469;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B4E3B9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4E4CBC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4E3BC4(uint64_t a1)
{
  v2 = sub_24B4E493C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4E3C00(uint64_t a1)
{
  v2 = sub_24B4E493C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseGalleryDescriptor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD828, &unk_24B521CF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4E493C();
  sub_24B517FDC();
  v14 = *v3;
  v13 = 0;
  sub_24B49B688();
  sub_24B517EBC();
  if (!v2)
  {
    v12 = 1;
    sub_24B517E7C();
    v11 = *(v3 + 3);
    v10[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBDB0, &qword_24B518628);
    sub_24B4E4990(&qword_27EFFBDB8, &qword_27EFFBDC0, &protocol conformance descriptor for BrowseLazyItem, MEMORY[0x277D83948]);
    sub_24B517EBC();
    v10[14] = v3[32];
    v10[13] = 3;
    sub_24B4D1A2C();
    sub_24B517EBC();
    type metadata accessor for BrowseGalleryDescriptor(0);
    v10[12] = 4;
    sub_24B516B8C();
    sub_24B4E4B34(&qword_27EFFC510, MEMORY[0x277CC8C40], MEMORY[0x277CC8C48]);
    sub_24B517EBC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t BrowseGalleryDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_24B516B8C();
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD838, &qword_24B521D00);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v20 - v6;
  v8 = type metadata accessor for BrowseGalleryDescriptor(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_24B4E493C();
  v12 = v25;
  sub_24B517FCC();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v13 = v10;
  v15 = v22;
  v14 = v23;
  v33 = 0;
  sub_24B49C974();
  sub_24B517E0C();
  *v13 = v34;
  v32 = 1;
  *(v13 + 8) = sub_24B517DCC();
  *(v13 + 16) = v16;
  v25 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBDB0, &qword_24B518628);
  v31 = 2;
  sub_24B4E4990(&qword_27EFFBDD0, &qword_27EFFBDD8, &protocol conformance descriptor for BrowseLazyItem, MEMORY[0x277D83978]);
  sub_24B517E0C();
  *(v13 + 24) = v27;
  v29 = 3;
  sub_24B4D1B28();
  sub_24B517E0C();
  *(v13 + 32) = v30;
  v28 = 4;
  sub_24B4E4B34(&qword_27EFFC588, MEMORY[0x277CC8C40], MEMORY[0x277CC8C60]);
  v17 = v5;
  v18 = v24;
  sub_24B517E0C();
  (*(v15 + 8))(v7, v18);
  (*(v21 + 32))(v13 + *(v8 + 32), v17, v3);
  sub_24B4E4A2C(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return sub_24B4E4A90(v13);
}

uint64_t BrowseGalleryDescriptor.hash(into:)(__int128 *a1)
{
  BrowseDisplayStyle.rawValue.getter(*v1);
  sub_24B517B3C();

  sub_24B517B3C();
  sub_24B4844E8(a1, *(v1 + 24));
  MEMORY[0x24C241D70](*(v1 + 32));
  type metadata accessor for BrowseGalleryDescriptor(0);
  sub_24B516B8C();
  sub_24B4E4B34(&qword_2810EED98, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
  return sub_24B517A9C();
}

uint64_t BrowseGalleryDescriptor.hashValue.getter()
{
  sub_24B517F7C();
  BrowseDisplayStyle.rawValue.getter(*v0);
  sub_24B517B3C();

  sub_24B517B3C();
  sub_24B4844E8(v2, *(v0 + 24));
  MEMORY[0x24C241D70](*(v0 + 32));
  type metadata accessor for BrowseGalleryDescriptor(0);
  sub_24B516B8C();
  sub_24B4E4B34(&qword_2810EED98, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
  sub_24B517A9C();
  return sub_24B517FBC();
}

uint64_t sub_24B4E456C()
{
  sub_24B517F7C();
  BrowseDisplayStyle.rawValue.getter(*v0);
  sub_24B517B3C();

  sub_24B517B3C();
  sub_24B4844E8(v2, *(v0 + 24));
  MEMORY[0x24C241D70](*(v0 + 32));
  sub_24B516B8C();
  sub_24B4E4B34(&qword_2810EED98, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
  sub_24B517A9C();
  return sub_24B517FBC();
}

uint64_t sub_24B4E4658(__int128 *a1)
{
  BrowseDisplayStyle.rawValue.getter(*v1);
  sub_24B517B3C();

  sub_24B517B3C();
  sub_24B4844E8(a1, *(v1 + 24));
  MEMORY[0x24C241D70](*(v1 + 32));
  sub_24B516B8C();
  sub_24B4E4B34(&qword_2810EED98, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
  return sub_24B517A9C();
}

uint64_t sub_24B4E472C(uint64_t a1)
{
  sub_24B517F7C();
  BrowseDisplayStyle.rawValue.getter(*v1);
  sub_24B517B3C();

  sub_24B517B3C();
  sub_24B4844E8(v3, *(v1 + 24));
  MEMORY[0x24C241D70](*(v1 + 32));
  sub_24B516B8C();
  sub_24B4E4B34(&qword_2810EED98, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
  sub_24B517A9C();
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing23BrowseGalleryDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = BrowseDisplayStyle.rawValue.getter(*a1);
  v7 = v6;
  if (v5 == BrowseDisplayStyle.rawValue.getter(v4) && v7 == v8)
  {
  }

  else
  {
    v10 = sub_24B517EEC();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16)) && (sub_24B517EEC() & 1) == 0 || (sub_24B483BA0(*(a1 + 24), *(a2 + 24)) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  type metadata accessor for BrowseGalleryDescriptor(0);

  return sub_24B516B7C();
}

unint64_t sub_24B4E493C()
{
  result = qword_27EFFD830;
  if (!qword_27EFFD830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD830);
  }

  return result;
}

uint64_t sub_24B4E4990(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFBDB0, &qword_24B518628);
    sub_24B4E4B34(a2, type metadata accessor for BrowseLazyItem, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B4E4A2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseGalleryDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4E4A90(uint64_t a1)
{
  v2 = type metadata accessor for BrowseGalleryDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B4E4B34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24B4E4BB8()
{
  result = qword_27EFFD848;
  if (!qword_27EFFD848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD848);
  }

  return result;
}

unint64_t sub_24B4E4C10()
{
  result = qword_27EFFD850;
  if (!qword_27EFFD850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD850);
  }

  return result;
}

unint64_t sub_24B4E4C68()
{
  result = qword_27EFFD858;
  if (!qword_27EFFD858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD858);
  }

  return result;
}

uint64_t sub_24B4E4CBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024B5278E0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_24B517EEC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

id sub_24B4E4E9C()
{
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F017B80 = result;
  return result;
}

uint64_t NewAndFeaturedDescriptor.canonicalIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NewAndFeaturedDescriptor.identifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t NewAndFeaturedDescriptor.subtitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NewAndFeaturedDescriptor(0) + 32);

  return sub_24B4D1850(v3, a1);
}

uint64_t NewAndFeaturedDescriptor.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NewAndFeaturedDescriptor(0) + 36);
  v4 = sub_24B516B8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NewAndFeaturedDescriptor.init(canonicalIdentifier:displayStyle:identifier:mediaType:subtitle:title:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  v12 = type metadata accessor for NewAndFeaturedDescriptor(0);
  sub_24B4D18C0(a7, a9 + *(v12 + 32));
  v13 = *(v12 + 36);
  v14 = sub_24B516B8C();
  v15 = *(*(v14 - 8) + 32);

  return v15(a9 + v13, a8, v14);
}

unint64_t sub_24B4E50D4()
{
  v1 = *v0;
  v2 = 0x5379616C70736964;
  v3 = 0x707954616964656DLL;
  v4 = 0x656C746974627573;
  if (v1 != 4)
  {
    v4 = 0x656C746974;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x696669746E656469;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B4E51A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4E645C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4E51C8(uint64_t a1)
{
  v2 = sub_24B4E6118();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4E5204(uint64_t a1)
{
  v2 = sub_24B4E6118();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NewAndFeaturedDescriptor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD860, &qword_24B521F28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4E6118();
  sub_24B517FDC();
  v18 = 0;
  sub_24B517E7C();
  if (!v2)
  {
    v17 = *(v3 + 16);
    v16 = 1;
    sub_24B49B688();
    sub_24B517EBC();
    v15 = 2;
    sub_24B517E7C();
    v14 = *(v3 + 40);
    v13 = 3;
    sub_24B4E616C();
    sub_24B517EBC();
    type metadata accessor for NewAndFeaturedDescriptor(0);
    v12 = 4;
    sub_24B516B8C();
    sub_24B47B6E4(&qword_27EFFC510, MEMORY[0x277CC8C40], MEMORY[0x277CC8C48]);
    sub_24B517E6C();
    v11 = 5;
    sub_24B517EBC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t NewAndFeaturedDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_24B516B8C();
  v27 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD878, &qword_24B521F30);
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = type metadata accessor for NewAndFeaturedDescriptor(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24B4E6118();
  v31 = v11;
  v16 = v32;
  sub_24B517FCC();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  v32 = v5;
  v41 = 0;
  v17 = v29;
  *v14 = sub_24B517DCC();
  *(v14 + 1) = v19;
  v26 = v19;
  v39 = 1;
  sub_24B49C974();
  sub_24B517E0C();
  v20 = v17;
  v14[16] = v40;
  v38 = 2;
  *(v14 + 3) = sub_24B517DCC();
  *(v14 + 4) = v21;
  v36 = 3;
  sub_24B4E61C0();
  sub_24B517E0C();
  v26 = 0;
  v14[40] = v37;
  v35 = 4;
  sub_24B47B6E4(&qword_27EFFC588, MEMORY[0x277CC8C40], MEMORY[0x277CC8C60]);
  v22 = v26;
  sub_24B517DBC();
  v26 = v22;
  if (v22)
  {
    (*(v17 + 8))(v31, v30);
    v23 = 0;
  }

  else
  {
    sub_24B4D18C0(v8, &v14[*(v12 + 32)]);
    v34 = 5;
    v24 = v32;
    v25 = v26;
    sub_24B517E0C();
    v26 = v25;
    if (!v25)
    {
      (*(v20 + 8))(v31, v30);
      (*(v27 + 32))(&v14[*(v12 + 36)], v24, v3);
      sub_24B4E6214(v14, v28);
      __swift_destroy_boxed_opaque_existential_1(v33);
      return sub_24B4E6278(v14);
    }

    (*(v20 + 8))(v31, v30);
    v23 = 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v33);

  if (v23)
  {
    return sub_24B49689C(&v14[*(v12 + 32)], &qword_27EFFC4E8, &qword_24B51F380);
  }

  return result;
}

uint64_t NewAndFeaturedDescriptor.hash(into:)(uint64_t a1)
{
  v2 = sub_24B516B8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_24B517B3C();
  BrowseDisplayStyle.rawValue.getter(*(v1 + 16));
  sub_24B517B3C();

  sub_24B517B3C();
  MEMORY[0x24C241D70](*(v1 + 40));
  v9 = type metadata accessor for NewAndFeaturedDescriptor(0);
  sub_24B4D1850(v1 + *(v9 + 32), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_24B517F9C();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_24B517F9C();
    sub_24B47B6E4(&qword_2810EED98, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
    sub_24B517A9C();
    (*(v3 + 8))(v5, v2);
  }

  sub_24B47B6E4(&qword_2810EED98, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
  return sub_24B517A9C();
}

uint64_t NewAndFeaturedDescriptor.hashValue.getter()
{
  sub_24B517F7C();
  NewAndFeaturedDescriptor.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4E5C9C()
{
  sub_24B517F7C();
  NewAndFeaturedDescriptor.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4E5CE0(uint64_t a1)
{
  sub_24B517F7C();
  NewAndFeaturedDescriptor.hash(into:)(v2);
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing24NewAndFeaturedDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B516B8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC4E8, &qword_24B51F380);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC608, &qword_24B51F5B0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  if (*a1 != *a2 && (sub_24B517EEC() & 1) == 0)
  {
    goto LABEL_17;
  }

  v29 = v5;
  v14 = *(a2 + 16);
  v15 = BrowseDisplayStyle.rawValue.getter(*(a1 + 16));
  v17 = v16;
  if (v15 == BrowseDisplayStyle.rawValue.getter(v14) && v17 == v18)
  {
  }

  else
  {
    v19 = sub_24B517EEC();

    if ((v19 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if ((*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (sub_24B517EEC() & 1) == 0 || *(a1 + 40) != *(a2 + 40))
  {
    goto LABEL_17;
  }

  v20 = *(type metadata accessor for NewAndFeaturedDescriptor(0) + 32);
  v21 = *(v11 + 48);
  sub_24B4D1850(a1 + v20, v13);
  sub_24B4D1850(a2 + v20, &v13[v21]);
  v22 = *(v29 + 48);
  if (v22(v13, 1, v4) == 1)
  {
    if (v22(&v13[v21], 1, v4) == 1)
    {
      sub_24B49689C(v13, &qword_27EFFC4E8, &qword_24B51F380);
LABEL_20:
      v23 = sub_24B516B7C();
      return v23 & 1;
    }

    goto LABEL_16;
  }

  sub_24B4D1850(v13, v10);
  if (v22(&v13[v21], 1, v4) == 1)
  {
    (*(v29 + 8))(v10, v4);
LABEL_16:
    sub_24B49689C(v13, &qword_27EFFC608, &qword_24B51F5B0);
    goto LABEL_17;
  }

  v25 = v29;
  (*(v29 + 32))(v7, &v13[v21], v4);
  sub_24B47B6E4(&qword_2810EED90, MEMORY[0x277CC8C40], MEMORY[0x277CC8C58]);
  v26 = sub_24B517AAC();
  v27 = *(v25 + 8);
  v27(v7, v4);
  v27(v10, v4);
  sub_24B49689C(v13, &qword_27EFFC4E8, &qword_24B51F380);
  if (v26)
  {
    goto LABEL_20;
  }

LABEL_17:
  v23 = 0;
  return v23 & 1;
}

unint64_t sub_24B4E6118()
{
  result = qword_27EFFD868;
  if (!qword_27EFFD868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD868);
  }

  return result;
}

unint64_t sub_24B4E616C()
{
  result = qword_27EFFD870;
  if (!qword_27EFFD870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD870);
  }

  return result;
}

unint64_t sub_24B4E61C0()
{
  result = qword_27EFFD880;
  if (!qword_27EFFD880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD880);
  }

  return result;
}

uint64_t sub_24B4E6214(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewAndFeaturedDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B4E6278(uint64_t a1)
{
  v2 = type metadata accessor for NewAndFeaturedDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B4E6358()
{
  result = qword_27EFFD890;
  if (!qword_27EFFD890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD890);
  }

  return result;
}

unint64_t sub_24B4E63B0()
{
  result = qword_27EFFD898;
  if (!qword_27EFFD898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD898);
  }

  return result;
}

unint64_t sub_24B4E6408()
{
  result = qword_27EFFD8A0;
  if (!qword_27EFFD8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD8A0);
  }

  return result;
}

uint64_t sub_24B4E645C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x800000024B527A30 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065 || (sub_24B517EEC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v5 = sub_24B517EEC();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24B4E6688()
{
  v1 = 0x72616C75676572;
  if (*v0 != 1)
  {
    v1 = 30324;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746361706D6F63;
  }
}

uint64_t sub_24B4E66D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4E7770(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4E6700(uint64_t a1)
{
  v2 = sub_24B4E6C4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4E673C(uint64_t a1)
{
  v2 = sub_24B4E6C4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4E6778(uint64_t a1)
{
  v2 = sub_24B4E6D48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4E67B4(uint64_t a1)
{
  v2 = sub_24B4E6D48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4E67F0(uint64_t a1)
{
  v2 = sub_24B4E6CF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4E682C(uint64_t a1)
{
  v2 = sub_24B4E6CF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4E6868(uint64_t a1)
{
  v2 = sub_24B4E6CA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4E68A4(uint64_t a1)
{
  v2 = sub_24B4E6CA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseSizeClass.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD8A8, &qword_24B522150);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD8B0, &qword_24B522158);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD8B8, &qword_24B522160);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD8C0, &qword_24B522168);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4E6C4C();
  sub_24B517FDC();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_24B4E6CF4();
      v9 = v21;
      sub_24B517E3C();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_24B4E6CA0();
      v9 = v24;
      sub_24B517E3C();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_24B4E6D48();
    sub_24B517E3C();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_24B4E6C4C()
{
  result = qword_27EFFD8C8;
  if (!qword_27EFFD8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD8C8);
  }

  return result;
}

unint64_t sub_24B4E6CA0()
{
  result = qword_27EFFD8D0;
  if (!qword_27EFFD8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD8D0);
  }

  return result;
}

unint64_t sub_24B4E6CF4()
{
  result = qword_27EFFD8D8;
  if (!qword_27EFFD8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD8D8);
  }

  return result;
}

unint64_t sub_24B4E6D48()
{
  result = qword_27EFFD8E0;
  if (!qword_27EFFD8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD8E0);
  }

  return result;
}

uint64_t BrowseSizeClass.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD8E8, &qword_24B522170);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD8F0, &qword_24B522178);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD8F8, &qword_24B522180);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD900, &unk_24B522188);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_24B4E6C4C();
  v15 = v36;
  sub_24B517FCC();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_24B517E1C();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_24B4A39B8();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_24B517D0C();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0);
      *v24 = &type metadata for BrowseSizeClass;
      sub_24B517D8C();
      sub_24B517CFC();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_24B4E6CF4();
          sub_24B517D7C();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_24B4E6CA0();
          v26 = v17;
          sub_24B517D7C();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_24B4E6D48();
        sub_24B517D7C();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t BrowseSizeClass.hashValue.getter()
{
  v1 = *v0;
  sub_24B517F7C();
  MEMORY[0x24C241D70](v1);
  return sub_24B517FBC();
}

unint64_t sub_24B4E73B4()
{
  result = qword_27EFFD908;
  if (!qword_27EFFD908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD908);
  }

  return result;
}

unint64_t sub_24B4E745C()
{
  result = qword_27EFFD910;
  if (!qword_27EFFD910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD910);
  }

  return result;
}

unint64_t sub_24B4E74B4()
{
  result = qword_27EFFD918;
  if (!qword_27EFFD918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD918);
  }

  return result;
}

unint64_t sub_24B4E750C()
{
  result = qword_27EFFD920;
  if (!qword_27EFFD920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD920);
  }

  return result;
}

unint64_t sub_24B4E7564()
{
  result = qword_27EFFD928;
  if (!qword_27EFFD928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD928);
  }

  return result;
}

unint64_t sub_24B4E75BC()
{
  result = qword_27EFFD930;
  if (!qword_27EFFD930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD930);
  }

  return result;
}

unint64_t sub_24B4E7614()
{
  result = qword_27EFFD938;
  if (!qword_27EFFD938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD938);
  }

  return result;
}

unint64_t sub_24B4E766C()
{
  result = qword_27EFFD940;
  if (!qword_27EFFD940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD940);
  }

  return result;
}

unint64_t sub_24B4E76C4()
{
  result = qword_27EFFD948;
  if (!qword_27EFFD948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD948);
  }

  return result;
}

unint64_t sub_24B4E771C()
{
  result = qword_27EFFD950;
  if (!qword_27EFFD950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD950);
  }

  return result;
}

uint64_t sub_24B4E7770(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746361706D6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72616C75676572 && a2 == 0xE700000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 30324 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B517EEC();

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

uint64_t BrowseTextAttributes.fontDescriptor.getter()
{
  v1 = *v0;
  sub_24B49A73C(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));
  return v1;
}

uint64_t BrowseTextAttributes.foregroundColor.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t BrowseTextAttributes.init(fontDescriptor:foregroundColor:textAlignment:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t sub_24B4E7924()
{
  v1 = 0x756F726765726F66;
  if (*v0 != 1)
  {
    v1 = 0x67696C4174786574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x63736544746E6F66;
  }
}

uint64_t sub_24B4E79A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4E8794(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4E79CC(uint64_t a1)
{
  v2 = sub_24B4E7C74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4E7A08(uint64_t a1)
{
  v2 = sub_24B4E7C74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseTextAttributes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD958, &qword_24B5225B0);
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v19 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 32);
  v19[0] = *(v1 + 40);
  v19[1] = v9;
  v25 = *(v1 + 48);
  v10 = a1[3];
  v11 = *(v1 + 24);
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v10);
  sub_24B49A73C(v6, v7, v8, v11);
  sub_24B4E7C74();
  sub_24B517FDC();
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v24 = v11;
  v26 = 0;
  sub_24B4E7CC8();
  v15 = v19[2];
  sub_24B517E6C();
  sub_24B49B870(v6, v7, v8, v11);
  if (v15)
  {
    return (*(v20 + 8))(v5, v14);
  }

  v17 = v25;
  v18 = v20;
  LOBYTE(v21) = 1;
  sub_24B517E4C();
  LOBYTE(v21) = v17;
  v26 = 2;
  sub_24B4E7D1C();
  sub_24B517EBC();
  return (*(v18 + 8))(v5, v14);
}

unint64_t sub_24B4E7C74()
{
  result = qword_27EFFD960;
  if (!qword_27EFFD960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD960);
  }

  return result;
}

unint64_t sub_24B4E7CC8()
{
  result = qword_27EFFD968;
  if (!qword_27EFFD968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD968);
  }

  return result;
}

unint64_t sub_24B4E7D1C()
{
  result = qword_27EFFD970;
  if (!qword_27EFFD970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD970);
  }

  return result;
}

uint64_t BrowseTextAttributes.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD978, &qword_24B5225B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4E7C74();
  sub_24B517FCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  sub_24B4E8028();
  sub_24B517DBC();
  v9 = v21;
  v19 = v22;
  v20 = v23;
  v25 = v24;
  LOBYTE(v21) = 1;
  v17 = sub_24B517D9C();
  v18 = v10;
  v26 = 2;
  sub_24B4E807C();
  sub_24B517E0C();
  (*(v6 + 8))(v8, v5);
  v11 = v21;
  v12 = v9;
  v14 = v19;
  v13 = v20;
  *a2 = v9;
  *(a2 + 8) = v14;
  *(a2 + 16) = v13;
  LOBYTE(v9) = v25;
  *(a2 + 24) = v25;
  v15 = v18;
  *(a2 + 32) = v17;
  *(a2 + 40) = v15;
  *(a2 + 48) = v11;
  sub_24B49A73C(v12, v14, v13, v9);

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_24B49B870(v12, v14, v13, v9);
}

unint64_t sub_24B4E8028()
{
  result = qword_27EFFD980;
  if (!qword_27EFFD980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD980);
  }

  return result;
}

unint64_t sub_24B4E807C()
{
  result = qword_27EFFD988;
  if (!qword_27EFFD988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD988);
  }

  return result;
}

uint64_t BrowseTextAttributes.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  if (v3 == 255)
  {
    sub_24B517F9C();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *(v1 + 8);
    v5 = *(v1 + 16);
    v7 = *v1;
    sub_24B517F9C();
    BrowseFontDescriptor.hash(into:)(a1, v7, v6, v5, v3);
    if (v4)
    {
LABEL_3:
      sub_24B517F9C();
      sub_24B517B3C();
      goto LABEL_6;
    }
  }

  sub_24B517F9C();
LABEL_6:
  sub_24B517B3C();
}

uint64_t BrowseTextAttributes.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 48);
  *&v5[9] = *v0;
  v5[11] = v1;
  v6 = v2;
  v7 = *(v0 + 32);
  v8 = v3;
  sub_24B517F7C();
  BrowseTextAttributes.hash(into:)(v5);
  return sub_24B517FBC();
}

uint64_t sub_24B4E82D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 48);
  *&v5[9] = *v0;
  v5[11] = v1;
  v6 = v2;
  v7 = *(v0 + 32);
  v8 = v3;
  sub_24B517F7C();
  BrowseTextAttributes.hash(into:)(v5);
  return sub_24B517FBC();
}

uint64_t sub_24B4E8348(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 48);
  *&v6[9] = *v1;
  v6[11] = v2;
  v7 = v3;
  v8 = *(v1 + 32);
  v9 = v4;
  sub_24B517F7C();
  BrowseTextAttributes.hash(into:)(v6);
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing20BrowseTextAttributesV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v4 = a1[4];
  v3 = a1[5];
  v5 = *(a1 + 48);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  if (v2 == 255)
  {
    if (v6 != 255)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == 255)
    {
      return 0;
    }

    v10 = a1[1];
    v18 = *a1;
    v19 = *(a2 + 32);
    v11 = a1[2];
    v21 = *(a2 + 48);
    v12 = *(a1 + 48);
    v13 = *a2;
    v14 = *(a2 + 8);
    v15 = *(a2 + 16);
    v20 = *(a2 + 40);
    sub_24B49A750(*a2, v14, v15, v6);
    LOBYTE(v11) = _s15FitnessBrowsing20BrowseFontDescriptorO2eeoiySbAC_ACtFZ_0(v18, v10, v11, v2, v13, v14, v15, v6);
    v16 = v13;
    v5 = v12;
    v9 = v21;
    sub_24B49B870(v16, v14, v15, v6);
    v7 = v19;
    v8 = v20;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  if (!v3)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v8 || (v4 != v7 || v3 != v8) && (sub_24B517EEC() & 1) == 0)
  {
    return 0;
  }

LABEL_11:

  return sub_24B4FE994(v5, v9);
}

unint64_t sub_24B4E851C()
{
  result = qword_27EFFD990;
  if (!qword_27EFFD990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD990);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15FitnessBrowsing20BrowseFontDescriptorOSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24B4E85AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_24B4E8608(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t sub_24B4E8690()
{
  result = qword_27EFFD998;
  if (!qword_27EFFD998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD998);
  }

  return result;
}

unint64_t sub_24B4E86E8()
{
  result = qword_27EFFD9A0;
  if (!qword_27EFFD9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD9A0);
  }

  return result;
}

unint64_t sub_24B4E8740()
{
  result = qword_27EFFD9A8;
  if (!qword_27EFFD9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD9A8);
  }

  return result;
}

uint64_t sub_24B4E8794(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63736544746E6F66 && a2 == 0xEE00726F74706972;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F726765726F66 && a2 == 0xEF726F6C6F43646ELL || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x67696C4174786574 && a2 == 0xED0000746E656D6ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B517EEC();

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

uint64_t BrowseTextAlignment.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7265746E6563;
  v2 = 1952867692;
  v3 = 0x6C61727574616ELL;
  if (a1 != 3)
  {
    v3 = 0x7468676972;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x656966697473756ALL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24B4E8964(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x7265746E6563;
  v3 = *a1;
  v4 = 0xE600000000000000;
  v5 = *a2;
  v6 = 0xE400000000000000;
  v7 = 1952867692;
  v8 = 0xE700000000000000;
  v9 = 0x6C61727574616ELL;
  if (v3 != 3)
  {
    v9 = 0x7468676972;
    v8 = 0xE500000000000000;
  }

  if (v3 != 2)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0x656966697473756ALL;
  if (*a1)
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v10 = 0x7265746E6563;
  }

  if (*a1 <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v7;
  }

  if (v3 <= 1)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  v13 = 0xE600000000000000;
  v14 = 0xE400000000000000;
  v15 = 1952867692;
  v16 = 0xE700000000000000;
  v17 = 0x6C61727574616ELL;
  if (v5 != 3)
  {
    v17 = 0x7468676972;
    v16 = 0xE500000000000000;
  }

  if (v5 != 2)
  {
    v15 = v17;
    v14 = v16;
  }

  if (*a2)
  {
    v2 = 0x656966697473756ALL;
    v13 = 0xE900000000000064;
  }

  if (*a2 <= 1u)
  {
    v18 = v2;
  }

  else
  {
    v18 = v15;
  }

  if (*a2 <= 1u)
  {
    v19 = v13;
  }

  else
  {
    v19 = v14;
  }

  if (v11 == v18 && v12 == v19)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_24B517EEC();
  }

  return v20 & 1;
}

uint64_t sub_24B4E8AD4()
{
  sub_24B517F7C();
  sub_24B517B3C();

  return sub_24B517FBC();
}

uint64_t sub_24B4E8BAC(uint64_t a1)
{
  sub_24B517B3C();
}

uint64_t sub_24B4E8C70(uint64_t a1)
{
  sub_24B517F7C();
  sub_24B517B3C();

  return sub_24B517FBC();
}

unint64_t sub_24B4E8D44@<X0>(Swift::String *a1@<X0>, FitnessBrowsing::BrowseTextAlignment_optional *a2@<X8>)
{
  result = _s15FitnessBrowsing19BrowseTextAlignmentO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_24B4E8D74(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x7265746E6563;
  v5 = 0xE400000000000000;
  v6 = 1952867692;
  v7 = 0xE700000000000000;
  v8 = 0x6C61727574616ELL;
  if (v2 != 3)
  {
    v8 = 0x7468676972;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656966697473756ALL;
    v3 = 0xE900000000000064;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t _s15FitnessBrowsing19BrowseTextAlignmentO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_24B517D6C();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24B4E8F18()
{
  result = qword_27EFFD9B0;
  if (!qword_27EFFD9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD9B0);
  }

  return result;
}

unint64_t sub_24B4E8F70()
{
  result = qword_27EFFD9B8;
  if (!qword_27EFFD9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFD9C0, &qword_24B522910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD9B8);
  }

  return result;
}

unint64_t sub_24B4E8FE4()
{
  result = qword_27EFFD9C8;
  if (!qword_27EFFD9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD9C8);
  }

  return result;
}

uint64_t BrowseDetailDescriptor.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for BrowseDetailDescriptor(0) + 20));

  return v1;
}

uint64_t BrowseDetailDescriptor.init(content:identifier:preferredInsetBehavior:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_24B4E9B38(a1, a5);
  result = type metadata accessor for BrowseDetailDescriptor(0);
  v10 = (a5 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  *(a5 + *(result + 24)) = a4;
  return result;
}

unint64_t sub_24B4E912C()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t sub_24B4E9190@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4E9E88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4E91B8(uint64_t a1)
{
  v2 = sub_24B4E9B9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4E91F4(uint64_t a1)
{
  v2 = sub_24B4E9B9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseDetailDescriptor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD9D0, &qword_24B5229D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4E9B9C();
  sub_24B517FDC();
  v11[15] = 0;
  type metadata accessor for BrowseDetailContent(0);
  sub_24B4E9D00(&qword_27EFFCAD8, type metadata accessor for BrowseDetailContent, &protocol conformance descriptor for BrowseDetailContent);
  sub_24B517EBC();
  if (!v2)
  {
    v9 = type metadata accessor for BrowseDetailDescriptor(0);
    v11[14] = 1;
    sub_24B517E7C();
    v11[13] = *(v3 + *(v9 + 24));
    v11[12] = 2;
    sub_24B4D1A2C();
    sub_24B517E6C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t BrowseDetailDescriptor.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for BrowseDetailContent(0);
  MEMORY[0x28223BE20](v4);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFD9E0, &qword_24B5229D8);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for BrowseDetailDescriptor(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4E9B9C();
  sub_24B517FCC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v20;
  v13 = v11;
  v26 = 0;
  sub_24B4E9D00(&qword_27EFFCB00, type metadata accessor for BrowseDetailContent, &protocol conformance descriptor for BrowseDetailContent);
  v14 = v21;
  sub_24B517E0C();
  sub_24B4E9B38(v22, v13);
  v25 = 1;
  v15 = sub_24B517DCC();
  v16 = (v13 + *(v9 + 20));
  *v16 = v15;
  v16[1] = v17;
  v23 = 2;
  sub_24B4D1B28();
  sub_24B517DBC();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 24)) = v24;
  sub_24B4E9BF0(v13, v19, type metadata accessor for BrowseDetailDescriptor);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24B4E9C58(v13, type metadata accessor for BrowseDetailDescriptor);
}

uint64_t BrowseDetailDescriptor.hash(into:)(uint64_t a1)
{
  BrowseDetailContent.hash(into:)(a1);
  v2 = type metadata accessor for BrowseDetailDescriptor(0);
  sub_24B517B3C();
  v3 = *(v1 + *(v2 + 24));
  if (v3 == 2)
  {
    return sub_24B517F9C();
  }

  sub_24B517F9C();
  return MEMORY[0x24C241D70](v3 & 1);
}

uint64_t BrowseDetailDescriptor.hashValue.getter()
{
  sub_24B517F7C();
  BrowseDetailContent.hash(into:)(v4);
  v1 = type metadata accessor for BrowseDetailDescriptor(0);
  sub_24B517B3C();
  v2 = *(v0 + *(v1 + 24));
  sub_24B517F9C();
  if (v2 != 2)
  {
    MEMORY[0x24C241D70](v2 & 1);
  }

  return sub_24B517FBC();
}

uint64_t sub_24B4E9900(uint64_t a1)
{
  sub_24B517F7C();
  BrowseDetailContent.hash(into:)(v5);
  sub_24B517B3C();
  v3 = *(v1 + *(a1 + 24));
  sub_24B517F9C();
  if (v3 != 2)
  {
    MEMORY[0x24C241D70](v3 & 1);
  }

  return sub_24B517FBC();
}

uint64_t sub_24B4E998C(uint64_t a1, uint64_t a2)
{
  BrowseDetailContent.hash(into:)(a1);
  sub_24B517B3C();
  v4 = *(v2 + *(a2 + 24));
  if (v4 == 2)
  {
    return sub_24B517F9C();
  }

  sub_24B517F9C();
  return MEMORY[0x24C241D70](v4 & 1);
}

uint64_t sub_24B4E9A04(uint64_t a1, uint64_t a2)
{
  sub_24B517F7C();
  BrowseDetailContent.hash(into:)(v6);
  sub_24B517B3C();
  v4 = *(v2 + *(a2 + 24));
  sub_24B517F9C();
  if (v4 != 2)
  {
    MEMORY[0x24C241D70](v4 & 1);
  }

  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing22BrowseDetailDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((static BrowseDetailContent.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for BrowseDetailDescriptor(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_24B517EEC() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 24);
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 == 2)
  {
    if (v12 != 2)
    {
      return 0;
    }
  }

  else
  {
    v14 = (v12 ^ v11) & 1;
    if (v12 == 2 || v14 != 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_24B4E9B38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseDetailContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B4E9B9C()
{
  result = qword_27EFFD9D8;
  if (!qword_27EFFD9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD9D8);
  }

  return result;
}

uint64_t sub_24B4E9BF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B4E9C58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B4E9D00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24B4E9D84()
{
  result = qword_27EFFD9F0;
  if (!qword_27EFFD9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD9F0);
  }

  return result;
}

unint64_t sub_24B4E9DDC()
{
  result = qword_27EFFD9F8;
  if (!qword_27EFFD9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFD9F8);
  }

  return result;
}

unint64_t sub_24B4E9E34()
{
  result = qword_27EFFDA00;
  if (!qword_27EFFDA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDA00);
  }

  return result;
}

uint64_t sub_24B4E9E88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024B5278E0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B517EEC();

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

uint64_t sub_24B4E9FC8()
{
  v1 = 0x7552646564697567;
  v2 = 0x697461746964656DLL;
  if (*v0 != 2)
  {
    v2 = 0x6F65646976;
  }

  if (*v0)
  {
    v1 = 0x6157646564697567;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24B4EA050@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4EA980(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4EA078(uint64_t a1)
{
  v2 = sub_24B4EA70C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4EA0B4(uint64_t a1)
{
  v2 = sub_24B4EA70C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4EA0F0(uint64_t a1)
{
  v2 = sub_24B4EA85C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4EA12C(uint64_t a1)
{
  v2 = sub_24B4EA85C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4EA168(uint64_t a1)
{
  v2 = sub_24B4EA808();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4EA1A4(uint64_t a1)
{
  v2 = sub_24B4EA808();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4EA1E0(uint64_t a1)
{
  v2 = sub_24B4EA7B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4EA21C(uint64_t a1)
{
  v2 = sub_24B4EA7B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4EA258(uint64_t a1)
{
  v2 = sub_24B4EA760();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4EA294(uint64_t a1)
{
  v2 = sub_24B4EA760();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseItemMediaType.encode(to:)(void *a1, int a2)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDA08, &qword_24B522BF0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v20 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDA10, &qword_24B522BF8);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v23 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDA18, &qword_24B522C00);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDA20, &qword_24B522C08);
  v20 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDA28, &qword_24B522C10);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4EA70C();
  sub_24B517FDC();
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v32 = 2;
      sub_24B4EA7B4();
      v9 = v23;
      sub_24B517E3C();
      v18 = v24;
      v17 = v25;
    }

    else
    {
      v33 = 3;
      sub_24B4EA760();
      v9 = v26;
      sub_24B517E3C();
      v18 = v27;
      v17 = v28;
    }

    goto LABEL_8;
  }

  if (v29)
  {
    v31 = 1;
    sub_24B4EA808();
    sub_24B517E3C();
    v18 = v21;
    v17 = v22;
LABEL_8:
    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  v30 = 0;
  sub_24B4EA85C();
  sub_24B517E3C();
  (*(v20 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

unint64_t sub_24B4EA70C()
{
  result = qword_27EFFDA30;
  if (!qword_27EFFDA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDA30);
  }

  return result;
}

unint64_t sub_24B4EA760()
{
  result = qword_27EFFDA38;
  if (!qword_27EFFDA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDA38);
  }

  return result;
}

unint64_t sub_24B4EA7B4()
{
  result = qword_27EFFDA40;
  if (!qword_27EFFDA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDA40);
  }

  return result;
}

unint64_t sub_24B4EA808()
{
  result = qword_27EFFDA48;
  if (!qword_27EFFDA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDA48);
  }

  return result;
}

unint64_t sub_24B4EA85C()
{
  result = qword_27EFFDA50;
  if (!qword_27EFFDA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDA50);
  }

  return result;
}

void *sub_24B4EA8C8@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B4EAAF4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t BrowseItemMediaType.hashValue.getter(unsigned __int8 a1)
{
  sub_24B517F7C();
  MEMORY[0x24C241D70](a1);
  return sub_24B517FBC();
}

uint64_t sub_24B4EA980(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7552646564697567 && a2 == 0xE90000000000006ELL;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6157646564697567 && a2 == 0xEA00000000006B6CLL || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697461746964656DLL && a2 == 0xEA00000000006E6FLL || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F65646976 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B517EEC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_24B4EAAF4(void *a1)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDAB8, &qword_24B5230F0);
  v34 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = &v31 - v2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDAC0, &qword_24B5230F8);
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDAC8, &qword_24B523100);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDAD0, &qword_24B523108);
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDAD8, &unk_24B523110);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_24B4EA70C();
  v15 = v43;
  sub_24B517FCC();
  if (v15)
  {
    goto LABEL_11;
  }

  v16 = v9;
  v32 = v7;
  v33 = 0;
  v17 = v41;
  v18 = v42;
  v43 = v11;
  v19 = v13;
  v20 = sub_24B517E1C();
  v21 = (2 * *(v20 + 16)) | 1;
  v45 = v20;
  v46 = v20 + 32;
  v47 = 0;
  v48 = v21;
  v22 = sub_24B4A39B4();
  if (v22 != 4 && v47 == v48 >> 1)
  {
    v11 = v22;
    if (v22 <= 1u)
    {
      if (v22)
      {
        v49 = 1;
        sub_24B4EA808();
        v29 = v33;
        sub_24B517D7C();
        if (!v29)
        {
          (*(v37 + 8))(v6, v38);
          goto LABEL_18;
        }
      }

      else
      {
        v49 = 0;
        sub_24B4EA85C();
        v23 = v33;
        sub_24B517D7C();
        if (!v23)
        {
          (*(v35 + 8))(v16, v32);
LABEL_18:
          (v43[1])(v13, v10);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v44);
          return v11;
        }
      }

      goto LABEL_9;
    }

    v27 = v43;
    if (v22 == 2)
    {
      v49 = 2;
      sub_24B4EA7B4();
      v28 = v33;
      sub_24B517D7C();
      if (!v28)
      {
        (*(v36 + 8))(v17, v40);
LABEL_22:
        (v27[1])(v19, v10);
        goto LABEL_23;
      }
    }

    else
    {
      v49 = 3;
      sub_24B4EA760();
      v30 = v33;
      sub_24B517D7C();
      if (!v30)
      {
        (*(v34 + 8))(v18, v39);
        goto LABEL_22;
      }
    }

    (v27[1])(v19, v10);
    goto LABEL_10;
  }

  v24 = sub_24B517D0C();
  swift_allocError();
  v11 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0);
  *v11 = &type metadata for BrowseItemMediaType;
  sub_24B517D8C();
  sub_24B517CFC();
  (*(*(v24 - 8) + 104))(v11, *MEMORY[0x277D84160], v24);
  swift_willThrow();
LABEL_9:
  (v43[1])(v13, v10);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v11;
}

unint64_t sub_24B4EB138()
{
  result = qword_27EFFDA58;
  if (!qword_27EFFDA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDA58);
  }

  return result;
}

unint64_t sub_24B4EB1F0()
{
  result = qword_27EFFDA60;
  if (!qword_27EFFDA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDA60);
  }

  return result;
}

unint64_t sub_24B4EB248()
{
  result = qword_27EFFDA68;
  if (!qword_27EFFDA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDA68);
  }

  return result;
}

unint64_t sub_24B4EB2A0()
{
  result = qword_27EFFDA70;
  if (!qword_27EFFDA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDA70);
  }

  return result;
}

unint64_t sub_24B4EB2F8()
{
  result = qword_27EFFDA78;
  if (!qword_27EFFDA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDA78);
  }

  return result;
}

unint64_t sub_24B4EB350()
{
  result = qword_27EFFDA80;
  if (!qword_27EFFDA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDA80);
  }

  return result;
}

unint64_t sub_24B4EB3A8()
{
  result = qword_27EFFDA88;
  if (!qword_27EFFDA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDA88);
  }

  return result;
}

unint64_t sub_24B4EB400()
{
  result = qword_27EFFDA90;
  if (!qword_27EFFDA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDA90);
  }

  return result;
}

unint64_t sub_24B4EB458()
{
  result = qword_27EFFDA98;
  if (!qword_27EFFDA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDA98);
  }

  return result;
}

unint64_t sub_24B4EB4B0()
{
  result = qword_27EFFDAA0;
  if (!qword_27EFFDAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDAA0);
  }

  return result;
}

unint64_t sub_24B4EB508()
{
  result = qword_27EFFDAA8;
  if (!qword_27EFFDAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDAA8);
  }

  return result;
}

unint64_t sub_24B4EB560()
{
  result = qword_27EFFDAB0;
  if (!qword_27EFFDAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDAB0);
  }

  return result;
}

uint64_t sub_24B4EB5C4()
{
  v1 = 0x656E6F6870;
  v2 = 0x6863746177;
  if (*v0 != 2)
  {
    v2 = 30324;
  }

  if (*v0)
  {
    v1 = 0x74656C626174;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24B4EB628@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4EBF58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4EB650(uint64_t a1)
{
  v2 = sub_24B4EBCE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4EB68C(uint64_t a1)
{
  v2 = sub_24B4EBCE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4EB6C8(uint64_t a1)
{
  v2 = sub_24B4EBE34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4EB704(uint64_t a1)
{
  v2 = sub_24B4EBE34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4EB740(uint64_t a1)
{
  v2 = sub_24B4EBDE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4EB77C(uint64_t a1)
{
  v2 = sub_24B4EBDE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4EB7B8(uint64_t a1)
{
  v2 = sub_24B4EBD38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4EB7F4(uint64_t a1)
{
  v2 = sub_24B4EBD38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4EB830(uint64_t a1)
{
  v2 = sub_24B4EBD8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4EB86C(uint64_t a1)
{
  v2 = sub_24B4EBD8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowsePlatform.encode(to:)(void *a1, int a2)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDAE0, &qword_24B523120);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v20 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDAE8, &qword_24B523128);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x28223BE20](v5);
  v23 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDAF0, &qword_24B523130);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDAF8, &qword_24B523138);
  v20 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDB00, &qword_24B523140);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4EBCE4();
  sub_24B517FDC();
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v32 = 2;
      sub_24B4EBD8C();
      v9 = v23;
      sub_24B517E3C();
      v18 = v24;
      v17 = v25;
    }

    else
    {
      v33 = 3;
      sub_24B4EBD38();
      v9 = v26;
      sub_24B517E3C();
      v18 = v27;
      v17 = v28;
    }

    goto LABEL_8;
  }

  if (v29)
  {
    v31 = 1;
    sub_24B4EBDE0();
    sub_24B517E3C();
    v18 = v21;
    v17 = v22;
LABEL_8:
    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  v30 = 0;
  sub_24B4EBE34();
  sub_24B517E3C();
  (*(v20 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

unint64_t sub_24B4EBCE4()
{
  result = qword_27EFFDB08;
  if (!qword_27EFFDB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB08);
  }

  return result;
}

unint64_t sub_24B4EBD38()
{
  result = qword_27EFFDB10;
  if (!qword_27EFFDB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB10);
  }

  return result;
}

unint64_t sub_24B4EBD8C()
{
  result = qword_27EFFDB18;
  if (!qword_27EFFDB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB18);
  }

  return result;
}

unint64_t sub_24B4EBDE0()
{
  result = qword_27EFFDB20;
  if (!qword_27EFFDB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB20);
  }

  return result;
}

unint64_t sub_24B4EBE34()
{
  result = qword_27EFFDB28;
  if (!qword_27EFFDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB28);
  }

  return result;
}

void *sub_24B4EBEA0@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B4EC0A8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t BrowsePlatform.hashValue.getter(unsigned __int8 a1)
{
  sub_24B517F7C();
  MEMORY[0x24C241D70](a1);
  return sub_24B517FBC();
}

uint64_t sub_24B4EBF58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6F6870 && a2 == 0xE500000000000000;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74656C626174 && a2 == 0xE600000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6863746177 && a2 == 0xE500000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 30324 && a2 == 0xE200000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B517EEC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_24B4EC0A8(void *a1)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDB90, &qword_24B5235E8);
  v34 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = &v31 - v2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDB98, &qword_24B5235F0);
  v36 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDBA0, &qword_24B5235F8);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDBA8, &qword_24B523600);
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDBB0, &qword_24B523608);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_24B4EBCE4();
  v15 = v43;
  sub_24B517FCC();
  if (v15)
  {
    goto LABEL_11;
  }

  v16 = v9;
  v32 = v7;
  v33 = 0;
  v17 = v41;
  v18 = v42;
  v43 = v11;
  v19 = v13;
  v20 = sub_24B517E1C();
  v21 = (2 * *(v20 + 16)) | 1;
  v45 = v20;
  v46 = v20 + 32;
  v47 = 0;
  v48 = v21;
  v22 = sub_24B4A39B4();
  if (v22 != 4 && v47 == v48 >> 1)
  {
    v11 = v22;
    if (v22 <= 1u)
    {
      if (v22)
      {
        v49 = 1;
        sub_24B4EBDE0();
        v29 = v33;
        sub_24B517D7C();
        if (!v29)
        {
          (*(v37 + 8))(v6, v38);
          goto LABEL_18;
        }
      }

      else
      {
        v49 = 0;
        sub_24B4EBE34();
        v23 = v33;
        sub_24B517D7C();
        if (!v23)
        {
          (*(v35 + 8))(v16, v32);
LABEL_18:
          (v43[1])(v13, v10);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v44);
          return v11;
        }
      }

      goto LABEL_9;
    }

    v27 = v43;
    if (v22 == 2)
    {
      v49 = 2;
      sub_24B4EBD8C();
      v28 = v33;
      sub_24B517D7C();
      if (!v28)
      {
        (*(v36 + 8))(v17, v40);
LABEL_22:
        (v27[1])(v19, v10);
        goto LABEL_23;
      }
    }

    else
    {
      v49 = 3;
      sub_24B4EBD38();
      v30 = v33;
      sub_24B517D7C();
      if (!v30)
      {
        (*(v34 + 8))(v18, v39);
        goto LABEL_22;
      }
    }

    (v27[1])(v19, v10);
    goto LABEL_10;
  }

  v24 = sub_24B517D0C();
  swift_allocError();
  v11 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0);
  *v11 = &type metadata for BrowsePlatform;
  sub_24B517D8C();
  sub_24B517CFC();
  (*(*(v24 - 8) + 104))(v11, *MEMORY[0x277D84160], v24);
  swift_willThrow();
LABEL_9:
  (v43[1])(v13, v10);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v11;
}

unint64_t sub_24B4EC6EC()
{
  result = qword_27EFFDB30;
  if (!qword_27EFFDB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB30);
  }

  return result;
}

unint64_t sub_24B4EC7A4()
{
  result = qword_27EFFDB38;
  if (!qword_27EFFDB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB38);
  }

  return result;
}

unint64_t sub_24B4EC7FC()
{
  result = qword_27EFFDB40;
  if (!qword_27EFFDB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB40);
  }

  return result;
}

unint64_t sub_24B4EC854()
{
  result = qword_27EFFDB48;
  if (!qword_27EFFDB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB48);
  }

  return result;
}

unint64_t sub_24B4EC8AC()
{
  result = qword_27EFFDB50;
  if (!qword_27EFFDB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB50);
  }

  return result;
}

unint64_t sub_24B4EC904()
{
  result = qword_27EFFDB58;
  if (!qword_27EFFDB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB58);
  }

  return result;
}

unint64_t sub_24B4EC95C()
{
  result = qword_27EFFDB60;
  if (!qword_27EFFDB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB60);
  }

  return result;
}

unint64_t sub_24B4EC9B4()
{
  result = qword_27EFFDB68;
  if (!qword_27EFFDB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB68);
  }

  return result;
}

unint64_t sub_24B4ECA0C()
{
  result = qword_27EFFDB70;
  if (!qword_27EFFDB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB70);
  }

  return result;
}

unint64_t sub_24B4ECA64()
{
  result = qword_27EFFDB78;
  if (!qword_27EFFDB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB78);
  }

  return result;
}

unint64_t sub_24B4ECABC()
{
  result = qword_27EFFDB80;
  if (!qword_27EFFDB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB80);
  }

  return result;
}

unint64_t sub_24B4ECB14()
{
  result = qword_27EFFDB88;
  if (!qword_27EFFDB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDB88);
  }

  return result;
}

uint64_t sub_24B4ECB68()
{
  v0 = sub_24B516F1C();
  __swift_allocate_value_buffer(v0, qword_27F017B88);
  __swift_project_value_buffer(v0, qword_27F017B88);
  return sub_24B516F0C();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_24B4ECC78()
{
  v1 = 0xD000000000000019;
  if (*v0 != 1)
  {
    v1 = 0x6D6574737973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x63696D616E7964;
  }
}

uint64_t sub_24B4ECCD4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4EE0F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4ECCFC(uint64_t a1)
{
  v2 = sub_24B4ED7F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4ECD38(uint64_t a1)
{
  v2 = sub_24B4ED7F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4ECD74()
{
  v1 = 0x6E6769736564;
  if (*v0 != 1)
  {
    v1 = 0x63696C6F626D7973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C79745374786574;
  }
}

uint64_t sub_24B4ECDDC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4EE20C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4ECE04(uint64_t a1)
{
  v2 = sub_24B4EDA98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4ECE40(uint64_t a1)
{
  v2 = sub_24B4EDA98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4ECE7C()
{
  v1 = 0x6C79745374786574;
  v2 = 0x6E6769736564;
  if (*v0 != 2)
  {
    v2 = 0x63696C6F626D7973;
  }

  if (*v0)
  {
    v1 = 0x746867696577;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24B4ECF00@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4EE330(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4ECF28(uint64_t a1)
{
  v2 = sub_24B4ED9F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4ECF64(uint64_t a1)
{
  v2 = sub_24B4ED9F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4ECFA0()
{
  v1 = 0x657A6953746E6F66;
  v2 = 0x6E6769736564;
  if (*v0 != 2)
  {
    v2 = 0x63696C6F626D7973;
  }

  if (*v0)
  {
    v1 = 0x746867696577;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24B4ED020@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4EE49C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4ED048(uint64_t a1)
{
  v2 = sub_24B4ED84C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4ED084(uint64_t a1)
{
  v2 = sub_24B4ED84C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseFontDescriptor.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v43 = a2;
  v33 = a4;
  v34 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDBB8, &qword_24B523610);
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v39 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDBC0, &qword_24B523618);
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x28223BE20](v9);
  v36 = &v32 - v10;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDBC8, &qword_24B523620);
  v11 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDBD0, &qword_24B523628);
  v44 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4ED7F8();
  v17 = v16;
  sub_24B517FDC();
  if (!a5)
  {
    v24 = v11;
    LOBYTE(v46) = 0;
    sub_24B4EDA98();
    sub_24B517E3C();
    v25 = BYTE1(v43);
    LOBYTE(v46) = v43;
    v45 = 0;
    sub_24B4EDA44();
    v26 = v35;
    v27 = v42;
    sub_24B517EBC();
    if (!v27)
    {
      LOBYTE(v46) = v25 & 1;
      v45 = 1;
      sub_24B4ED948();
      sub_24B517EBC();
      v46 = v34;
      v45 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDC00, &qword_24B523630);
      sub_24B4EF6D4(&qword_27EFFDC08, sub_24B4ED99C, MEMORY[0x277D83B50]);
      sub_24B517EBC();
    }

    (*(v24 + 8))(v13, v26);
    return (*(v44 + 8))(v17, v14);
  }

  if (a5 != 1)
  {
    LOBYTE(v46) = 2;
    sub_24B4ED84C();
    v28 = v39;
    sub_24B517E3C();
    v46 = v43;
    v45 = 0;
    sub_24B4ED8A0();
    v30 = v41;
    v29 = v42;
    sub_24B517EBC();
    if (!v29)
    {
      v31 = BYTE1(v34);
      LOBYTE(v46) = v34;
      v45 = 1;
      sub_24B4ED8F4();
      sub_24B517EBC();
      LOBYTE(v46) = v31 & 1;
      v45 = 2;
      sub_24B4ED948();
      sub_24B517EBC();
      v46 = v33;
      v45 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDC00, &qword_24B523630);
      sub_24B4EF6D4(&qword_27EFFDC08, sub_24B4ED99C, MEMORY[0x277D83B50]);
      sub_24B517EBC();
    }

    (*(v40 + 8))(v28, v30);
    return (*(v44 + 8))(v17, v14);
  }

  LOBYTE(v46) = 1;
  sub_24B4ED9F0();
  v18 = v36;
  v19 = v17;
  sub_24B517E3C();
  v20 = v43;
  LOBYTE(v46) = v43;
  v45 = 0;
  sub_24B4EDA44();
  v21 = v38;
  v22 = v42;
  sub_24B517EBC();
  if (!v22)
  {
    LOBYTE(v46) = BYTE1(v20);
    v45 = 1;
    sub_24B4ED8F4();
    sub_24B517EBC();
    LOBYTE(v46) = BYTE2(v20) & 1;
    v45 = 2;
    sub_24B4ED948();
    sub_24B517EBC();
    v46 = v34;
    v45 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDC00, &qword_24B523630);
    sub_24B4EF6D4(&qword_27EFFDC08, sub_24B4ED99C, MEMORY[0x277D83B50]);
    sub_24B517EBC();
  }

  (*(v37 + 8))(v18, v21);
  return (*(v44 + 8))(v19, v14);
}

unint64_t sub_24B4ED7F8()
{
  result = qword_27EFFDBD8;
  if (!qword_27EFFDBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDBD8);
  }

  return result;
}

unint64_t sub_24B4ED84C()
{
  result = qword_27EFFDBE0;
  if (!qword_27EFFDBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDBE0);
  }

  return result;
}

unint64_t sub_24B4ED8A0()
{
  result = qword_27EFFDBE8;
  if (!qword_27EFFDBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDBE8);
  }

  return result;
}

unint64_t sub_24B4ED8F4()
{
  result = qword_27EFFDBF0;
  if (!qword_27EFFDBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDBF0);
  }

  return result;
}

unint64_t sub_24B4ED948()
{
  result = qword_27EFFDBF8;
  if (!qword_27EFFDBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDBF8);
  }

  return result;
}

unint64_t sub_24B4ED99C()
{
  result = qword_27EFFDC10;
  if (!qword_27EFFDC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC10);
  }

  return result;
}

unint64_t sub_24B4ED9F0()
{
  result = qword_27EFFDC18;
  if (!qword_27EFFDC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC18);
  }

  return result;
}

unint64_t sub_24B4EDA44()
{
  result = qword_27EFFDC20;
  if (!qword_27EFFDC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC20);
  }

  return result;
}

unint64_t sub_24B4EDA98()
{
  result = qword_27EFFDC28;
  if (!qword_27EFFDC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC28);
  }

  return result;
}

void *BrowseFontDescriptor.init(from:)(void *a1)
{
  result = sub_24B4EE600(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

void *sub_24B4EDB14@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_24B4EE600(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
  }

  return result;
}

uint64_t BrowseFontDescriptor.hash(into:)(__int128 *a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a3;
  if (a5)
  {
    if (a5 == 1)
    {
      v8 = a2 >> 8;
      MEMORY[0x24C241D70](1, a2, a3, a4);
      BrowseFontTextStyle.rawValue.getter(a2);
      sub_24B517B3C();

      sub_24B49A1D4(a1, v8);
    }

    else
    {
      MEMORY[0x24C241D70](2);
      if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }

      MEMORY[0x24C241D90](v10);
      sub_24B49A1D4(a1, v5);
      v5 = a4;
    }
  }

  else
  {
    MEMORY[0x24C241D70](0, a2, a3, a4);
    BrowseFontTextStyle.rawValue.getter(a2);
    sub_24B517B3C();
  }

  sub_24B517B3C();

  return sub_24B48AC84(a1, v5);
}

uint64_t BrowseFontDescriptor.hashValue.getter(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_24B517F7C();
  BrowseFontDescriptor.hash(into:)(v9, a1, a2, a3, a4);
  return sub_24B517FBC();
}

uint64_t sub_24B4EDD20()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_24B517F7C();
  BrowseFontDescriptor.hash(into:)(v6, v1, v2, v3, v4);
  return sub_24B517FBC();
}

uint64_t sub_24B4EDD94(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_24B517F7C();
  BrowseFontDescriptor.hash(into:)(v7, v2, v3, v4, v5);
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing20BrowseFontDescriptorO2eeoiySbAC_ACtFZ_0(unint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = a5;
  v11 = a1;
  if (!a4)
  {
    if (a8)
    {
      return 0;
    }

    v16 = BrowseFontTextStyle.rawValue.getter(a1);
    v18 = v17;
    if (v16 == BrowseFontTextStyle.rawValue.getter(v9) && v18 == v19)
    {
    }

    else
    {
      v29 = sub_24B517EEC();

      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }

    if ((v11 & 0x100) != 0)
    {
      v27 = 0x6465646E756F72;
    }

    else
    {
      v27 = 0x746C7561666564;
    }

    v28 = (v9 & 0x100) == 0;
LABEL_33:
    if (v28)
    {
      v30 = 0x746C7561666564;
    }

    else
    {
      v30 = 0x6465646E756F72;
    }

    if (v27 == v30)
    {
      swift_bridgeObjectRelease_n();
LABEL_39:
      v25 = a2;
      v24 = a6;
      goto LABEL_40;
    }

    v31 = sub_24B517EEC();
    swift_bridgeObjectRelease_n();
    if (v31)
    {
      goto LABEL_39;
    }

    return 0;
  }

  if (a4 == 1)
  {
    if (a8 != 1)
    {
      return 0;
    }

    v12 = BrowseFontTextStyle.rawValue.getter(a1);
    v14 = v13;
    if (v12 == BrowseFontTextStyle.rawValue.getter(v9) && v14 == v15)
    {
    }

    else
    {
      v26 = sub_24B517EEC();

      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }

    if ((sub_24B4FEB0C(BYTE1(v11), BYTE1(v9)) & 1) == 0)
    {
      return 0;
    }

    if ((*&v11 & 0x10000) != 0)
    {
      v27 = 0x6465646E756F72;
    }

    else
    {
      v27 = 0x746C7561666564;
    }

    v28 = (*&v9 & 0x10000) == 0;
    goto LABEL_33;
  }

  if (a8 != 2 || *&a1 != *&a5 || (sub_24B4FEB0C(a2, a6) & 1) == 0)
  {
    return 0;
  }

  if ((a2 & 0x100) != 0)
  {
    v22 = 0x6465646E756F72;
  }

  else
  {
    v22 = 0x746C7561666564;
  }

  if ((a6 & 0x100) != 0)
  {
    v23 = 0x6465646E756F72;
  }

  else
  {
    v23 = 0x746C7561666564;
  }

  if (v22 != v23)
  {
    v33 = sub_24B517EEC();
    swift_bridgeObjectRelease_n();
    v24 = a7;
    v25 = a3;
    if (v33)
    {
      goto LABEL_40;
    }

    return 0;
  }

  swift_bridgeObjectRelease_n();
  v24 = a7;
  v25 = a3;
LABEL_40:

  return sub_24B512CFC(v25, v24);
}

uint64_t sub_24B4EE0F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63696D616E7964 && a2 == 0xE700000000000000;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024B527A70 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6574737973 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B517EEC();

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

uint64_t sub_24B4EE20C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C79745374786574 && a2 == 0xE900000000000065;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6769736564 && a2 == 0xE600000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x63696C6F626D7973 && a2 == 0xEE00737469617254)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B517EEC();

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

uint64_t sub_24B4EE330(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C79745374786574 && a2 == 0xE900000000000065;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696577 && a2 == 0xE600000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6769736564 && a2 == 0xE600000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x63696C6F626D7973 && a2 == 0xEE00737469617254)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B517EEC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24B4EE49C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657A6953746E6F66 && a2 == 0xE800000000000000;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696577 && a2 == 0xE600000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6769736564 && a2 == 0xE600000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x63696C6F626D7973 && a2 == 0xEE00737469617254)
  {

    return 3;
  }

  else
  {
    v6 = sub_24B517EEC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_24B4EE600(void *a1)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDC98, &qword_24B523C28);
  v41 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v42 = &v36 - v2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDCA0, &qword_24B523C30);
  v40 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v4 = &v36 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDCA8, &qword_24B523C38);
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = (&v36 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDCB0, &unk_24B523C40);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  v12 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_24B4ED7F8();
  v13 = v43;
  sub_24B517FCC();
  if (!v13)
  {
    v14 = v42;
    v15 = sub_24B517E1C();
    v16 = (2 * *(v15 + 16)) | 1;
    v49 = v15;
    v50 = v15 + 32;
    v51 = 0;
    v52 = v16;
    v17 = sub_24B4A39B8();
    if (v17 == 3 || v51 != v52 >> 1)
    {
      v19 = sub_24B517D0C();
      swift_allocError();
      v7 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0);
      *v7 = &type metadata for BrowseFontDescriptor;
      sub_24B517D8C();
      sub_24B517CFC();
      (*(*(v19 - 8) + 104))(v7, *MEMORY[0x277D84160], v19);
      swift_willThrow();
      (*(v9 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else if (v17)
    {
      LODWORD(v43) = v17;
      if (v17 == 1)
      {
        LOBYTE(v53) = 1;
        sub_24B4ED9F0();
        sub_24B517D7C();
        LOBYTE(v53) = 0;
        sub_24B4EF7A0();
        v18 = v37;
        sub_24B517E0C();
        v28 = v46;
        LOBYTE(v53) = 1;
        sub_24B4EF62C();
        sub_24B517E0C();
        v29 = v48;
        LOBYTE(v53) = 2;
        sub_24B4EF680();
        sub_24B517E0C();
        LODWORD(v42) = v47;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDC00, &qword_24B523630);
        v45 = 3;
        sub_24B4EF6D4(&qword_27EFFDCD0, sub_24B4EF74C, MEMORY[0x277D83B70]);
        sub_24B517E0C();
        v41 = v29;
        (*(v40 + 8))(v4, v18);
        (*(v9 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v35 = 0x10000;
        if (!v42)
        {
          v35 = 0;
        }

        v7 = (v28 | (v41 << 8) | v35);
      }

      else
      {
        LOBYTE(v53) = 2;
        sub_24B4ED84C();
        v26 = v14;
        sub_24B517D7C();
        LOBYTE(v46) = 0;
        sub_24B4EF5D8();
        v27 = v39;
        sub_24B517E0C();
        v33 = v26;
        v7 = v53;
        LOBYTE(v46) = 1;
        sub_24B4EF62C();
        sub_24B517E0C();
        LOBYTE(v46) = 2;
        sub_24B4EF680();
        sub_24B517E0C();
        LODWORD(v40) = v47;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDC00, &qword_24B523630);
        v45 = 3;
        sub_24B4EF6D4(&qword_27EFFDCD0, sub_24B4EF74C, MEMORY[0x277D83B70]);
        sub_24B517E0C();
        (*(v41 + 8))(v33, v27);
        (*(v9 + 8))(v11, v8);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v22 = v17;
      LOBYTE(v53) = 0;
      sub_24B4EDA98();
      v23 = v7;
      sub_24B517D7C();
      LODWORD(v43) = v22;
      v24 = v11;
      LOBYTE(v53) = 0;
      sub_24B4EF7A0();
      sub_24B517E0C();
      v25 = v9;
      v30 = v23;
      v31 = v46;
      LOBYTE(v53) = 1;
      sub_24B4EF680();
      sub_24B517E0C();
      v32 = v38;
      LODWORD(v42) = v48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDC00, &qword_24B523630);
      v47 = 2;
      sub_24B4EF6D4(&qword_27EFFDCD0, sub_24B4EF74C, MEMORY[0x277D83B70]);
      sub_24B517E0C();
      (*(v32 + 8))(v30, v5);
      (*(v25 + 8))(v24, v8);
      swift_unknownObjectRelease();
      v34 = 256;
      if (!v42)
      {
        v34 = 0;
      }

      v7 = (v34 | v31);
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v44);
  return v7;
}

unint64_t sub_24B4EF068()
{
  result = qword_27EFFDC30;
  if (!qword_27EFFDC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC30);
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

uint64_t sub_24B4EF0D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24B4EF118(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_24B4EF1BC()
{
  result = qword_27EFFDC38;
  if (!qword_27EFFDC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC38);
  }

  return result;
}

unint64_t sub_24B4EF214()
{
  result = qword_27EFFDC40;
  if (!qword_27EFFDC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC40);
  }

  return result;
}

unint64_t sub_24B4EF26C()
{
  result = qword_27EFFDC48;
  if (!qword_27EFFDC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC48);
  }

  return result;
}

unint64_t sub_24B4EF2C4()
{
  result = qword_27EFFDC50;
  if (!qword_27EFFDC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC50);
  }

  return result;
}

unint64_t sub_24B4EF31C()
{
  result = qword_27EFFDC58;
  if (!qword_27EFFDC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC58);
  }

  return result;
}

unint64_t sub_24B4EF374()
{
  result = qword_27EFFDC60;
  if (!qword_27EFFDC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC60);
  }

  return result;
}

unint64_t sub_24B4EF3CC()
{
  result = qword_27EFFDC68;
  if (!qword_27EFFDC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC68);
  }

  return result;
}

unint64_t sub_24B4EF424()
{
  result = qword_27EFFDC70;
  if (!qword_27EFFDC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC70);
  }

  return result;
}

unint64_t sub_24B4EF47C()
{
  result = qword_27EFFDC78;
  if (!qword_27EFFDC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC78);
  }

  return result;
}

unint64_t sub_24B4EF4D4()
{
  result = qword_27EFFDC80;
  if (!qword_27EFFDC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC80);
  }

  return result;
}

unint64_t sub_24B4EF52C()
{
  result = qword_27EFFDC88;
  if (!qword_27EFFDC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC88);
  }

  return result;
}

unint64_t sub_24B4EF584()
{
  result = qword_27EFFDC90;
  if (!qword_27EFFDC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDC90);
  }

  return result;
}

unint64_t sub_24B4EF5D8()
{
  result = qword_27EFFDCB8;
  if (!qword_27EFFDCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDCB8);
  }

  return result;
}

unint64_t sub_24B4EF62C()
{
  result = qword_27EFFDCC0;
  if (!qword_27EFFDCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDCC0);
  }

  return result;
}

unint64_t sub_24B4EF680()
{
  result = qword_27EFFDCC8;
  if (!qword_27EFFDCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDCC8);
  }

  return result;
}

uint64_t sub_24B4EF6D4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFDC00, &qword_24B523630);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B4EF74C()
{
  result = qword_27EFFDCD8;
  if (!qword_27EFFDCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDCD8);
  }

  return result;
}

unint64_t sub_24B4EF7A0()
{
  result = qword_27EFFDCE0;
  if (!qword_27EFFDCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDCE0);
  }

  return result;
}

unint64_t sub_24B4EF800()
{
  v1 = 0x6169726F74696465;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_24B4EF870@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4F1A58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4EF898(uint64_t a1)
{
  v2 = sub_24B4F13FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4EF8D4(uint64_t a1)
{
  v2 = sub_24B4F13FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4EF910(uint64_t a1)
{
  v2 = sub_24B4F14F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4EF94C(uint64_t a1)
{
  v2 = sub_24B4F14F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4EF988()
{
  v1 = 0x5379616C70736964;
  if (*v0 != 1)
  {
    v1 = 0x656C746974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_24B4EF9EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B4F1B90(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B4EFA14(uint64_t a1)
{
  v2 = sub_24B4F14A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4EFA50(uint64_t a1)
{
  v2 = sub_24B4F14A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4EFA8C(uint64_t a1)
{
  v2 = sub_24B4F1450();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4EFAC8(uint64_t a1)
{
  v2 = sub_24B4F1450();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BrowseIdentifier.underlyingValue.getter()
{
  v1 = type metadata accessor for BrowseIdentifier(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B4F1398(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *v3;
  if (EnumCaseMultiPayload == 1)
  {
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDCE8, &qword_24B523C50) + 64);
    v7 = sub_24B516B8C();
    (*(*(v7 - 8) + 8))(&v3[v6], v7);
  }

  return v5;
}

uint64_t BrowseIdentifier.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDCF0, &qword_24B523C58);
  v35 = *(v2 - 8);
  v36 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v33 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDCF8, &qword_24B523C60);
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v37 = &v33 - v6;
  v7 = sub_24B516B8C();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v42 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDD00, &qword_24B523C68);
  v34 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = type metadata accessor for BrowseIdentifier(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDD08, &qword_24B523C70);
  v45 = *(v15 - 8);
  v46 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4F13FC();
  sub_24B517FDC();
  sub_24B4F1398(v43, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      LODWORD(v43) = v14[16];
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDCE8, &qword_24B523C50);
      v20 = v40;
      v21 = &v14[*(v19 + 64)];
      v22 = v41;
      (*(v40 + 32))(v42, v21, v41);
      v52 = 1;
      sub_24B4F14A4();
      v23 = v37;
      v24 = v46;
      sub_24B517E3C();
      v51 = 0;
      v25 = v39;
      v26 = v44;
      sub_24B517E7C();

      if (v26)
      {
        (*(v38 + 8))(v23, v25);
        (*(v20 + 8))(v42, v22);
      }

      else
      {
        v50 = v43;
        v49 = 1;
        sub_24B49B688();
        v31 = v23;
        sub_24B517EBC();
        v48 = 2;
        sub_24B47B72C(&qword_27EFFC510, MEMORY[0x277CC8C40], MEMORY[0x277CC8C48]);
        v32 = v42;
        sub_24B517EBC();
        (*(v38 + 8))(v31, v25);
        (*(v20 + 8))(v32, v22);
      }

      return (*(v45 + 8))(v17, v24);
    }

    else
    {
      v53 = 2;
      sub_24B4F1450();
      v29 = v46;
      sub_24B517E3C();
      v30 = v36;
      sub_24B517E7C();

      (*(v35 + 8))(v4, v30);
      return (*(v45 + 8))(v17, v29);
    }
  }

  else
  {
    v47 = 0;
    sub_24B4F14F8();
    v27 = v46;
    sub_24B517E3C();
    sub_24B517E7C();

    (*(v34 + 8))(v11, v9);
    return (*(v45 + 8))(v17, v27);
  }
}

uint64_t BrowseIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDD30, &qword_24B523C78);
  v67 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v73 = &v60 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDD38, &qword_24B523C80);
  v68 = *(v4 - 8);
  v69 = v4;
  MEMORY[0x28223BE20](v4);
  v76 = &v60 - v5;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDD40, &qword_24B523C88);
  v66 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = &v60 - v6;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDD48, &unk_24B523C90);
  v75 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v8 = &v60 - v7;
  v9 = type metadata accessor for BrowseIdentifier(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v60 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v60 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v60 - v19;
  v21 = a1[3];
  v78 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24B4F13FC();
  v22 = v77;
  sub_24B517FCC();
  if (!v22)
  {
    v61 = v18;
    v62 = v12;
    v63 = v15;
    v24 = v70;
    v23 = v71;
    v64 = 0;
    v77 = v9;
    v26 = v73;
    v25 = v74;
    v27 = v72;
    v28 = sub_24B517E1C();
    v29 = (2 * *(v28 + 16)) | 1;
    v79 = v28;
    v80 = v28 + 32;
    v81 = 0;
    v82 = v29;
    v30 = sub_24B4A39B8();
    v31 = v27;
    if (v30 == 3 || v81 != v82 >> 1)
    {
      v37 = sub_24B517D0C();
      swift_allocError();
      v39 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0);
      *v39 = v77;
      sub_24B517D8C();
      sub_24B517CFC();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
      swift_willThrow();
      (*(v75 + 8))(v8, v31);
    }

    else
    {
      if (v30)
      {
        if (v30 != 1)
        {
          v83 = 2;
          sub_24B4F1450();
          v43 = v26;
          v44 = v31;
          v45 = v64;
          sub_24B517D7C();
          v46 = v75;
          if (!v45)
          {
            v76 = v20;
            v49 = v65;
            v50 = sub_24B517DCC();
            v51 = v43;
            v56 = v50;
            v58 = v57;
            (*(v67 + 8))(v51, v49);
            (*(v46 + 8))(v8, v44);
            swift_unknownObjectRelease();
            v52 = v62;
            *v62 = v56;
            *(v52 + 8) = v58;
            swift_storeEnumTagMultiPayload();
            v20 = v76;
            goto LABEL_18;
          }

          (*(v75 + 8))(v8, v31);
          goto LABEL_9;
        }

        v83 = 1;
        sub_24B4F14A4();
        v32 = v27;
        v33 = v64;
        sub_24B517D7C();
        v34 = v75;
        if (!v33)
        {
          v35 = v20;
          v83 = 0;
          v36 = sub_24B517DCC();
          v52 = v63;
          *v63 = v36;
          *(v52 + 8) = v53;
          v73 = v53;
          v83 = 1;
          sub_24B49C974();
          sub_24B517E0C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDCE8, &qword_24B523C50);
          sub_24B516B8C();
          v83 = 2;
          sub_24B47B72C(&qword_27EFFC588, MEMORY[0x277CC8C40], MEMORY[0x277CC8C60]);
          v59 = v69;
          sub_24B517E0C();
          (*(v68 + 8))(v76, v59);
          (*(v34 + 8))(v8, v27);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v20 = v35;
LABEL_18:
          sub_24B4F154C(v52, v20);
          sub_24B4F154C(v20, v25);
          return __swift_destroy_boxed_opaque_existential_1(v78);
        }
      }

      else
      {
        v83 = 0;
        sub_24B4F14F8();
        v41 = v24;
        v32 = v27;
        v42 = v64;
        sub_24B517D7C();
        if (!v42)
        {
          v47 = sub_24B517DCC();
          v76 = v48;
          v64 = 0;
          v54 = v47;
          (*(v66 + 8))(v41, v23);
          (*(v75 + 8))(v8, v27);
          swift_unknownObjectRelease();
          v52 = v61;
          v55 = v76;
          *v61 = v54;
          *(v52 + 8) = v55;
          swift_storeEnumTagMultiPayload();
          goto LABEL_18;
        }

        v34 = v75;
      }

      (*(v34 + 8))(v8, v32);
    }

LABEL_9:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v78);
}

uint64_t BrowseIdentifier.hash(into:)(uint64_t a1)
{
  v2 = sub_24B516B8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BrowseIdentifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B4F1398(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = v8[16];
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDCE8, &qword_24B523C50);
      (*(v3 + 32))(v5, &v8[*(v11 + 64)], v2);
      MEMORY[0x24C241D70](1);
      sub_24B517B3C();

      BrowseDisplayStyle.rawValue.getter(v10);
      sub_24B517B3C();

      sub_24B47B72C(&qword_2810EED98, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
      sub_24B517A9C();
      return (*(v3 + 8))(v5, v2);
    }

    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  MEMORY[0x24C241D70](v13);
  sub_24B517B3C();
}

uint64_t BrowseIdentifier.hashValue.getter()
{
  sub_24B517F7C();
  BrowseIdentifier.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4F0E74()
{
  sub_24B517F7C();
  BrowseIdentifier.hash(into:)(v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4F0EB8(uint64_t a1)
{
  sub_24B517F7C();
  BrowseIdentifier.hash(into:)(v2);
  return sub_24B517FBC();
}

uint64_t _s15FitnessBrowsing16BrowseIdentifierO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24B516B8C();
  v53 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v52 = &v47 - v8;
  v9 = type metadata accessor for BrowseIdentifier(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v47 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = (&v47 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFFDDB8, &qword_24B524218);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v47 - v20;
  v22 = &v47 + *(v19 + 56) - v20;
  sub_24B4F1398(a1, &v47 - v20);
  sub_24B4F1398(a2, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_24B4F1398(v21, v15);
      v24 = *(v15 + 1);
      v51 = *v15;
      v25 = v15[16];
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDCE8, &qword_24B523C50) + 64);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v27 = *(v22 + 1);
        v50 = *v22;
        v48 = v22[16];
        v49 = v25;
        v28 = *(v53 + 32);
        v29 = &v15[v26];
        v30 = v52;
        v28(v52, v29, v4);
        v28(v7, &v22[v26], v4);
        if (v51 == v50 && v24 == v27)
        {
        }

        else
        {
          v32 = sub_24B517EEC();

          if ((v32 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        v38 = BrowseDisplayStyle.rawValue.getter(v49);
        v40 = v39;
        if (v38 == BrowseDisplayStyle.rawValue.getter(v48) && v40 == v41)
        {
        }

        else
        {
          v43 = sub_24B517EEC();

          if ((v43 & 1) == 0)
          {
LABEL_29:
            v44 = *(v53 + 8);
            v44(v7, v4);
            v44(v30, v4);
LABEL_30:
            sub_24B4F1D18(v21);
            goto LABEL_31;
          }
        }

        v37 = sub_24B516B7C();
        v46 = *(v53 + 8);
        v46(v7, v4);
        v46(v30, v4);
        sub_24B4F1D18(v21);
        return v37 & 1;
      }

      (*(v53 + 8))(&v15[v26], v4);
LABEL_20:

      sub_24B4F1CB0(v21);
LABEL_31:
      v37 = 0;
      return v37 & 1;
    }

    sub_24B4F1398(v21, v12);
    v33 = *v12;
    v34 = v12[1];
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_24B4F1398(v21, v17);
    v33 = *v17;
    v34 = v17[1];
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_20;
    }
  }

  if (v33 == *v22 && v34 == *(v22 + 1))
  {
  }

  else
  {
    v36 = sub_24B517EEC();

    if ((v36 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  sub_24B4F1D18(v21);
  v37 = 1;
  return v37 & 1;
}

uint64_t sub_24B4F1398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B4F13FC()
{
  result = qword_27EFFDD10;
  if (!qword_27EFFDD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDD10);
  }

  return result;
}

unint64_t sub_24B4F1450()
{
  result = qword_27EFFDD18;
  if (!qword_27EFFDD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDD18);
  }

  return result;
}

unint64_t sub_24B4F14A4()
{
  result = qword_27EFFDD20;
  if (!qword_27EFFDD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDD20);
  }

  return result;
}

unint64_t sub_24B4F14F8()
{
  result = qword_27EFFDD28;
  if (!qword_27EFFDD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDD28);
  }

  return result;
}

uint64_t sub_24B4F154C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B4F163C()
{
  result = qword_27EFFDD58;
  if (!qword_27EFFDD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDD58);
  }

  return result;
}

unint64_t sub_24B4F1694()
{
  result = qword_27EFFDD60;
  if (!qword_27EFFDD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDD60);
  }

  return result;
}

unint64_t sub_24B4F16EC()
{
  result = qword_27EFFDD68;
  if (!qword_27EFFDD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDD68);
  }

  return result;
}

unint64_t sub_24B4F1744()
{
  result = qword_27EFFDD70;
  if (!qword_27EFFDD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDD70);
  }

  return result;
}

unint64_t sub_24B4F179C()
{
  result = qword_27EFFDD78;
  if (!qword_27EFFDD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDD78);
  }

  return result;
}

unint64_t sub_24B4F17F4()
{
  result = qword_27EFFDD80;
  if (!qword_27EFFDD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDD80);
  }

  return result;
}

unint64_t sub_24B4F184C()
{
  result = qword_27EFFDD88;
  if (!qword_27EFFDD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDD88);
  }

  return result;
}

unint64_t sub_24B4F18A4()
{
  result = qword_27EFFDD90;
  if (!qword_27EFFDD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDD90);
  }

  return result;
}

unint64_t sub_24B4F18FC()
{
  result = qword_27EFFDD98;
  if (!qword_27EFFDD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDD98);
  }

  return result;
}

unint64_t sub_24B4F1954()
{
  result = qword_27EFFDDA0;
  if (!qword_27EFFDDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDDA0);
  }

  return result;
}

unint64_t sub_24B4F19AC()
{
  result = qword_27EFFDDA8;
  if (!qword_27EFFDDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDDA8);
  }

  return result;
}

unint64_t sub_24B4F1A04()
{
  result = qword_27EFFDDB0;
  if (!qword_27EFFDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDDB0);
  }

  return result;
}

uint64_t sub_24B4F1A58(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000019 && 0x800000024B5279A0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024B5279C0 == a2 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6169726F74696465 && a2 == 0xED0000656761506CLL)
  {

    return 2;
  }

  else
  {
    v5 = sub_24B517EEC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24B4F1B90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B517EEC();

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

uint64_t sub_24B4F1CB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EFFDDB8, &qword_24B524218);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B4F1D18(uint64_t a1)
{
  v2 = type metadata accessor for BrowseIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B4F1D74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707061546D657469 && a2 == 0xEA00000000006465;
  if (v4 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261)
  {

    return 1;
  }

  else
  {
    v6 = sub_24B517EEC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_24B4F1E84(char a1)
{
  sub_24B517F7C();
  MEMORY[0x24C241D70](a1 & 1);
  return sub_24B517FBC();
}

uint64_t sub_24B4F1ECC(char a1)
{
  if (a1)
  {
    return 0x6570704177656976;
  }

  else
  {
    return 0x707061546D657469;
  }
}

uint64_t sub_24B4F1F10(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_24B517EEC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000 || (sub_24B517EEC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B517EEC();

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

uint64_t sub_24B4F201C(char a1)
{
  if (!a1)
  {
    return 12383;
  }

  if (a1 == 1)
  {
    return 0x7363697274656DLL;
  }

  return 0x7865646E69;
}

uint64_t sub_24B4F20A4(uint64_t a1)
{
  sub_24B517F7C();
  sub_24B4F1E5C(v3, *v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4F2134(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24B4F2188(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_24B4F2214(uint64_t a1)
{
  sub_24B517F7C();
  sub_24B498448(v3, *v1);
  return sub_24B517FBC();
}

uint64_t sub_24B4F2288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result;
  return result;
}

uint64_t sub_24B4F22DC@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  return result;
}

uint64_t sub_24B4F2318(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24B4F236C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_24B4F23C0@<X0>(_BYTE *a2@<X8>)
{
  v3 = sub_24B48B6AC();

  *a2 = v3 & 1;
  return result;
}

uint64_t sub_24B4F2410@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24B48B6AC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_24B4F2448(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24B4F249C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t NewAndFeaturedAction.encode(to:)(void *a1, void *a2)
{
  v4 = a2[3];
  v6 = a2[4];
  v5 = a2[5];
  *&v66 = a2[2];
  *(&v66 + 1) = v4;
  v7 = v66;
  *&v67 = v6;
  *(&v67 + 1) = v5;
  v47 = type metadata accessor for NewAndFeaturedAction.ViewAppearedCodingKeys(255, &v66);
  WitnessTable = swift_getWitnessTable();
  v44 = sub_24B517ECC();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v41 = &v39 - v8;
  *&v66 = v7;
  *(&v66 + 1) = v4;
  *&v67 = v6;
  *(&v67 + 1) = v5;
  v9 = type metadata accessor for NewAndFeaturedAction.ItemTappedCodingKeys(255, &v66);
  v10 = swift_getWitnessTable();
  v46 = v9;
  v42 = v10;
  v50 = sub_24B517ECC();
  v49 = *(v50 - 8);
  v11 = MEMORY[0x28223BE20](v50);
  v57 = &v39 - v12;
  v51 = v7;
  v40 = *(v7 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v55 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 - 1);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v66 = v7;
  *(&v66 + 1) = v4;
  v48 = v6;
  *&v67 = v6;
  *(&v67 + 1) = v5;
  type metadata accessor for NewAndFeaturedAction.CodingKeys(255, &v66);
  swift_getWitnessTable();
  v53 = sub_24B517ECC();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v19 = &v39 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v73 = v19;
  v20 = v51;
  sub_24B517FDC();
  (*(v15 + 16))(v17, v54, a2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCEA0, &unk_24B5203F0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  if ((*(*(TupleTypeMetadata3 - 8) + 48))(v17, 1, TupleTypeMetadata3) == 1)
  {
    LOBYTE(v66) = 1;
    v22 = v41;
    v23 = v53;
    v24 = v73;
    sub_24B517E3C();
    (*(v43 + 8))(v22, v44);
    return (*(v52 + 8))(v24, v23);
  }

  else
  {
    v26 = &v17[*(TupleTypeMetadata3 + 48)];
    v27 = *(v26 + 4);
    v28 = *(v26 + 6);
    v71 = *(v26 + 5);
    v72 = v28;
    v29 = *(v26 + 2);
    v69 = *(v26 + 3);
    v70 = v27;
    v30 = *(v26 + 1);
    v66 = *v26;
    v67 = v30;
    v68 = v29;
    v31 = v40;
    (*(v40 + 32))(v55, v17, v20);
    LOBYTE(v59) = 0;
    v32 = v53;
    sub_24B517E3C();
    LOBYTE(v59) = 0;
    v33 = v50;
    v34 = v56;
    sub_24B517EBC();
    v35 = v32;
    if (v34)
    {
      sub_24B49689C(&v66, &qword_27EFFCEA0, &unk_24B5203F0);
      (*(v49 + 8))(v57, v33);
      (*(v31 + 8))(v55, v20);
      return (*(v52 + 8))(v73, v32);
    }

    else
    {
      v63 = v70;
      v64 = v71;
      v65 = v72;
      v59 = v66;
      v60 = v67;
      v62 = v69;
      v61 = v68;
      v58 = 1;
      sub_24B4DA198();
      sub_24B517E6C();
      v36 = v52;
      sub_24B49689C(&v66, &qword_27EFFCEA0, &unk_24B5203F0);
      LOBYTE(v59) = 2;
      sub_24B517EAC();
      v37 = v55;
      v38 = v73;
      (*(v49 + 8))(v57, v33);
      (*(v31 + 8))(v37, v20);
      return (*(v36 + 8))(v38, v35);
    }
  }
}

uint64_t NewAndFeaturedAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v73 = a6;
  *&v77 = a2;
  *(&v77 + 1) = a3;
  *&v78 = a4;
  *(&v78 + 1) = a5;
  v69 = type metadata accessor for NewAndFeaturedAction.ViewAppearedCodingKeys(255, &v77);
  WitnessTable = swift_getWitnessTable();
  v60 = sub_24B517E2C();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v67 = &v56 - v11;
  *&v77 = a2;
  *(&v77 + 1) = a3;
  *&v78 = a4;
  *(&v78 + 1) = a5;
  v12 = type metadata accessor for NewAndFeaturedAction.ItemTappedCodingKeys(255, &v77);
  v13 = swift_getWitnessTable();
  v66 = v12;
  v65 = v13;
  v63 = sub_24B517E2C();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v71 = &v56 - v14;
  *&v77 = a2;
  *(&v77 + 1) = a3;
  *&v78 = a4;
  *(&v78 + 1) = a5;
  type metadata accessor for NewAndFeaturedAction.CodingKeys(255, &v77);
  swift_getWitnessTable();
  v72 = sub_24B517E2C();
  v74 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v16 = &v56 - v15;
  v64 = a2;
  *&v77 = a2;
  *(&v77 + 1) = a3;
  v61 = a3;
  *&v78 = a4;
  *(&v78 + 1) = a5;
  v17 = type metadata accessor for NewAndFeaturedAction(0, &v77);
  v70 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v56 - v21;
  v23 = a1[3];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  v24 = v75;
  sub_24B517FCC();
  if (!v24)
  {
    v25 = v71;
    v58 = v20;
    v57 = v22;
    v75 = v17;
    v26 = v73;
    v27 = v72;
    v28 = v16;
    *&v77 = sub_24B517E1C();
    sub_24B517B8C();
    swift_getWitnessTable();
    *&v79 = sub_24B517CAC();
    *(&v79 + 1) = v29;
    *&v80 = v30;
    *(&v80 + 1) = v31;
    sub_24B517C9C();
    swift_getWitnessTable();
    sub_24B517C4C();
    v32 = v77;
    if (v77 == 2 || (v56 = v79, v77 = v79, v78 = v80, (sub_24B517C5C() & 1) == 0))
    {
      v35 = sub_24B517D0C();
      swift_allocError();
      v37 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0);
      *v37 = v75;
      sub_24B517D8C();
      sub_24B517CFC();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
      swift_willThrow();
      (*(v74 + 8))(v28, v27);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v32)
      {
        LOBYTE(v77) = 1;
        v33 = v67;
        sub_24B517D7C();
        v34 = v70;
        v42 = v26;
        (*(v59 + 8))(v33, v60);
        (*(v74 + 8))(v28, v27);
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCEA0, &unk_24B5203F0);
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v44 = v57;
        (*(*(TupleTypeMetadata3 - 8) + 56))(v57, 1, 1, TupleTypeMetadata3);
        v45 = *(v34 + 32);
        v46 = v75;
      }

      else
      {
        LOBYTE(v77) = 0;
        sub_24B517D7C();
        v42 = v26;
        LOBYTE(v77) = 0;
        v39 = v25;
        v40 = v58;
        v41 = v63;
        sub_24B517E0C();
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCEA0, &unk_24B5203F0);
        v47 = swift_getTupleTypeMetadata3();
        v48 = &v40[*(v47 + 48)];
        LOBYTE(v77) = 1;
        sub_24B4DA234();
        sub_24B517DBC();
        v49 = v41;
        v50 = v74;
        v69 = v48;
        v81 = 2;
        v51 = v49;
        v52 = sub_24B517DFC();
        v69 = *(v47 + 64);
        v53 = v52;
        (*(v62 + 8))(v39, v51);
        (*(v50 + 8))(v28, v27);
        swift_unknownObjectRelease();
        v54 = v58;
        *&v58[v69] = v53;
        (*(*(v47 - 8) + 56))(v54, 0, 1, v47);
        v45 = *(v70 + 32);
        v44 = v57;
        v55 = v75;
        v45(v57, v54, v75);
        v46 = v55;
      }

      v45(v42, v44, v46);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v76);
}

BOOL static NewAndFeaturedAction.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v48 = v7;
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v72 = v8;
  *(&v72 + 1) = v9;
  *&v73 = v10;
  *(&v73 + 1) = v7;
  v11 = type metadata accessor for NewAndFeaturedAction(0, &v72);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v50 = *(TupleTypeMetadata2 - 8);
  v16 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v18 = &v46 - v17;
  v51 = v16;
  v19 = &v46 + *(v16 + 48) - v17;
  v53 = v12;
  v20 = *(v12 + 16);
  v20(&v46 - v17, a1, v11);
  v20(v19, a2, v11);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCEA0, &unk_24B5203F0);
  v54 = a3;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v22 = *(*(TupleTypeMetadata3 - 8) + 48);
  v23 = v22(v18, 1, TupleTypeMetadata3);
  v55 = v18;
  if (v23 == 1)
  {
    if (v22(v19, 1, TupleTypeMetadata3) == 1)
    {
      (*(v53 + 8))(v55, v11);
      return 1;
    }

    goto LABEL_6;
  }

  v47 = v11;
  v20(v14, v18, v11);
  v25 = &v14[*(TupleTypeMetadata3 + 48)];
  v26 = *(v25 + 5);
  v109 = *(v25 + 4);
  v110 = v26;
  v111 = *(v25 + 6);
  v27 = *(v25 + 1);
  v105 = *v25;
  v106 = v27;
  v28 = *(v25 + 3);
  v107 = *(v25 + 2);
  v108 = v28;
  v29 = *&v14[*(TupleTypeMetadata3 + 64)];
  if (v22(v19, 1, TupleTypeMetadata3) != 1)
  {
    v30 = &v19[*(TupleTypeMetadata3 + 48)];
    v31 = *(v30 + 5);
    v102 = *(v30 + 4);
    v103 = v31;
    v104 = *(v30 + 6);
    v32 = *(v30 + 1);
    v98 = *v30;
    v99 = v32;
    v33 = *(v30 + 3);
    v100 = *(v30 + 2);
    v101 = v33;
    v34 = *&v19[*(TupleTypeMetadata3 + 64)];
    v35 = v52;
    v36 = v49;
    v37 = v54;
    (*(v52 + 32))(v49, v19, v54);
    v38 = sub_24B517AAC();
    v39 = *(v35 + 8);
    v39(v14, v37);
    if ((v38 & 1) == 0)
    {
      v39(v36, v37);
      sub_24B49689C(&v105, &qword_27EFFCEA0, &unk_24B5203F0);
      sub_24B49689C(&v98, &qword_27EFFCEA0, &unk_24B5203F0);
      (*(v53 + 8))(v55, v47);
      return 0;
    }

    v52 = v29;
    v40 = v105;
    v94 = v108;
    v95 = v109;
    v96 = v110;
    v97 = v111;
    v92 = v106;
    v93 = v107;
    v41 = v98;
    v90 = v103;
    v91 = v104;
    v88 = v101;
    v89 = v102;
    v86 = v99;
    v87 = v100;
    v42 = v47;
    v43 = v55;
    if (*(&v105 + 1))
    {
      v72 = v105;
      v75 = v108;
      v76 = v109;
      v77 = v110;
      v78 = v111;
      v73 = v106;
      v74 = v107;
      v65 = v105;
      v66 = v106;
      v70 = v110;
      v71 = v111;
      v68 = v108;
      v69 = v109;
      v67 = v107;
      if (*(&v98 + 1))
      {
        v61 = v101;
        v62 = v102;
        v63 = v103;
        v64 = v104;
        v59 = v99;
        v60 = v100;
        v58 = v98;
        v44 = _s15FitnessBrowsing29NewAndFeaturedDataItemMetricsV2eeoiySbAC_ACtFZ_0(&v65, &v58);
        v56[4] = v62;
        v56[5] = v63;
        v56[6] = v64;
        v56[0] = v58;
        v56[1] = v59;
        v56[2] = v60;
        v56[3] = v61;
        sub_24B4D8258(&v72, v57);
        sub_24B4CC6AC(v56);
        v39(v49, v54);
        v57[4] = v69;
        v57[5] = v70;
        v57[6] = v71;
        v57[0] = v65;
        v57[1] = v66;
        v57[2] = v67;
        v57[3] = v68;
        sub_24B4CC6AC(v57);
        v58 = v40;
        v61 = v94;
        v62 = v95;
        v63 = v96;
        v64 = v97;
        v59 = v92;
        v60 = v93;
        sub_24B49689C(&v58, &qword_27EFFCEA0, &unk_24B5203F0);
        if ((v44 & 1) == 0)
        {
          goto LABEL_20;
        }

LABEL_17:
        v45 = v52 == v34;
        (*(v53 + 8))(v43, v42);
        return v45;
      }

      sub_24B4D8258(&v72, &v58);
      v39(v49, v54);
      v62 = v69;
      v63 = v70;
      v64 = v71;
      v58 = v65;
      v59 = v66;
      v60 = v67;
      v61 = v68;
      sub_24B4CC6AC(&v58);
    }

    else
    {
      v39(v49, v54);
      if (!*(&v41 + 1))
      {
        v72 = v40;
        v75 = v94;
        v76 = v95;
        v77 = v96;
        v78 = v97;
        v73 = v92;
        v74 = v93;
        sub_24B49689C(&v72, &qword_27EFFCEA0, &unk_24B5203F0);
        goto LABEL_17;
      }
    }

    v72 = v40;
    v75 = v94;
    v76 = v95;
    v77 = v96;
    v78 = v97;
    v73 = v92;
    v74 = v93;
    v79 = v41;
    v80 = v86;
    v81 = v87;
    v84 = v90;
    v85 = v91;
    v82 = v88;
    v83 = v89;
    sub_24B49689C(&v72, &qword_27EFFD420, &qword_24B524220);
LABEL_20:
    (*(v53 + 8))(v43, v42);
    return 0;
  }

  sub_24B49689C(&v105, &qword_27EFFCEA0, &unk_24B5203F0);
  (*(v52 + 8))(v14, v54);
LABEL_6:
  (*(v50 + 8))(v55, v51);
  return 0;
}

uint64_t NewAndFeaturedAction.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v11, a2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCEA0, &unk_24B5203F0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  if ((*(*(TupleTypeMetadata3 - 8) + 48))(v9, 1, TupleTypeMetadata3) == 1)
  {
    return MEMORY[0x24C241D70](1);
  }

  v14 = &v9[*(TupleTypeMetadata3 + 48)];
  v15 = *(v14 + 5);
  v37 = *(v14 + 4);
  v38 = v15;
  v39 = *(v14 + 6);
  v16 = *(v14 + 1);
  v33 = *v14;
  v34 = v16;
  v17 = *(v14 + 3);
  v35 = *(v14 + 2);
  v36 = v17;
  v18 = *&v9[*(TupleTypeMetadata3 + 64)];
  (*(v4 + 32))(v7, v9, v3);
  MEMORY[0x24C241D70](0);
  sub_24B517A9C();
  if (*(&v33 + 1))
  {
    v25 = v4;
    v32 = v18;
    v24[2] = v33;
    v24[1] = *(&v34 + 1);
    v24[3] = v34;
    v19 = *(&v35 + 1);
    v24[0] = v35;
    v20 = *(&v36 + 1);
    v24[5] = v36;
    v21 = *(&v37 + 1);
    v27 = v37;
    v22 = *(&v38 + 1);
    v29 = v38;
    v23 = *(&v39 + 1);
    v31 = v39;
    sub_24B517F9C();

    v24[4] = v20;

    v26 = v21;

    v28 = v22;

    v30 = v23;

    sub_24B517B3C();
    sub_24B517B3C();
    sub_24B517F9C();
    if (v19)
    {
      sub_24B517B3C();
    }

    sub_24B517B3C();
    sub_24B517B3C();
    sub_24B517B3C();
    sub_24B517B3C();
    sub_24B49689C(&v33, &qword_27EFFCEA0, &unk_24B5203F0);
    sub_24B49689C(&v33, &qword_27EFFCEA0, &unk_24B5203F0);
    v18 = v32;
    v4 = v25;
  }

  else
  {
    sub_24B517F9C();
  }

  MEMORY[0x24C241D70](v18);
  return (*(v4 + 8))(v7, v3);
}

uint64_t NewAndFeaturedAction.hashValue.getter(uint64_t a1)
{
  sub_24B517F7C();
  NewAndFeaturedAction.hash(into:)(v3, a1);
  return sub_24B517FBC();
}

uint64_t sub_24B4F4394(uint64_t a1, uint64_t a2)
{
  sub_24B517F7C();
  NewAndFeaturedAction.hash(into:)(v4, a2);
  return sub_24B517FBC();
}

uint64_t sub_24B4F4404(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFCEA0, &unk_24B5203F0);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return TupleTypeMetadata3;
}

uint64_t sub_24B4F4490(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 - 1 >= a2)
  {
    goto LABEL_27;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 119) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  v11 = v9 + 2;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (v14)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    if (v5 < 0x7FFFFFFE)
    {
      v18 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      if ((v18 + 1) >= 2)
      {
        v17 = v18;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = (*(v4 + 48))(a1);
    }

    if (v17 >= 2)
    {
      return v17 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v13)
  {
    goto LABEL_27;
  }

  v14 = *(a1 + v8);
  if (!v14)
  {
    goto LABEL_27;
  }

LABEL_23:
  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return (v10 | v16) + v7;
}

double sub_24B4F4604(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = v7 - 1;
  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 119) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a3 - v7 + 2;
  if (((((v9 + 7) & 0xFFFFFFF8) + 119) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v11 = 2;
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

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = a2 - v7;
    if (((((v9 + 7) & 0xFFFFFFF8) + 119) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 119) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = a1;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 119) & 0xFFFFFFFFFFFFFFF8) + 8);
      a1 = v17;
      *v17 = v15;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        *(a1 + v10) = v16;
      }

      else
      {
        *(a1 + v10) = v16;
      }
    }

    else if (v14)
    {
      *(a1 + v10) = v16;
    }

    return result;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_35;
    }

    *(a1 + v10) = 0;
  }

  else if (v14)
  {
    *(a1 + v10) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return result;
  }

LABEL_35:
  if (v6 <= 0x7FFFFFFD)
  {
    v20 = (a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (a2 > 0x7FFFFFFD)
    {
      result = 0.0;
      *(v20 + 80) = 0u;
      *(v20 + 96) = 0u;
      *(v20 + 48) = 0u;
      *(v20 + 64) = 0u;
      *(v20 + 16) = 0u;
      *(v20 + 32) = 0u;
      *v20 = 0u;
      *v20 = a2 - 2147483646;
    }

    else
    {
      *(v20 + 8) = a2 + 1;
    }
  }

  else
  {
    v19 = *(v5 + 56);

    v19();
  }

  return result;
}

uint64_t sub_24B4F48F4(uint64_t a1)
{
  v2 = sub_24B4F4ED0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4F4930(uint64_t a1)
{
  v2 = sub_24B4F4ED0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4F496C()
{
  if (*v0)
  {
    return 0x6572616873;
  }

  else
  {
    return 0x6B72616D6B6F6F62;
  }
}

uint64_t sub_24B4F49A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6B72616D6B6F6F62 && a2 == 0xE800000000000000;
  if (v6 || (sub_24B517EEC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6572616873 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24B517EEC();

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

uint64_t sub_24B4F4A7C(uint64_t a1)
{
  v2 = sub_24B4F4E28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4F4AB8(uint64_t a1)
{
  v2 = sub_24B4F4E28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B4F4AF4(uint64_t a1)
{
  v2 = sub_24B4F4E7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B4F4B30(uint64_t a1)
{
  v2 = sub_24B4F4E7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EditorialCollectionDetailFeature.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDF40, &qword_24B524650);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDF48, &qword_24B524658);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDF50, &qword_24B524660);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4F4E28();
  sub_24B517FDC();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_24B4F4E7C();
    sub_24B517E3C();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_24B4F4ED0();
    sub_24B517E3C();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_24B4F4E28()
{
  result = qword_27EFFDF58;
  if (!qword_27EFFDF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDF58);
  }

  return result;
}

unint64_t sub_24B4F4E7C()
{
  result = qword_27EFFDF60;
  if (!qword_27EFFDF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDF60);
  }

  return result;
}

unint64_t sub_24B4F4ED0()
{
  result = qword_27EFFDF68;
  if (!qword_27EFFDF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDF68);
  }

  return result;
}

uint64_t sub_24B4F4F40@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B4F4FFC(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t EditorialCollectionDetailFeature.hashValue.getter(char a1)
{
  sub_24B517F7C();
  MEMORY[0x24C241D70](a1 & 1);
  return sub_24B517FBC();
}

uint64_t sub_24B4F4FFC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDFA8, &qword_24B5249D0);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDFB0, &qword_24B5249D8);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDFB8, &unk_24B5249E0);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B4F4E28();
  v11 = v26;
  sub_24B517FCC();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_24B517E1C();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_24B4A39B0();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_24B517D0C();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFBFA8, &unk_24B5191B0);
    *v19 = &type metadata for EditorialCollectionDetailFeature;
    sub_24B517D8C();
    sub_24B517CFC();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_24B4F4E7C();
    sub_24B517D7C();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_24B4F4ED0();
    sub_24B517D7C();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v31 & 1;
}

unint64_t sub_24B4F54FC()
{
  result = qword_27EFFDF70;
  if (!qword_27EFFDF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDF70);
  }

  return result;
}

unint64_t sub_24B4F5554()
{
  result = qword_27EFFDF78;
  if (!qword_27EFFDF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDF78);
  }

  return result;
}

unint64_t sub_24B4F55AC()
{
  result = qword_27EFFDF80;
  if (!qword_27EFFDF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDF80);
  }

  return result;
}

unint64_t sub_24B4F5604()
{
  result = qword_27EFFDF88;
  if (!qword_27EFFDF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDF88);
  }

  return result;
}

unint64_t sub_24B4F565C()
{
  result = qword_27EFFDF90;
  if (!qword_27EFFDF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDF90);
  }

  return result;
}

unint64_t sub_24B4F56B4()
{
  result = qword_27EFFDF98;
  if (!qword_27EFFDF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDF98);
  }

  return result;
}

unint64_t sub_24B4F570C()
{
  result = qword_27EFFDFA0;
  if (!qword_27EFFDFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDFA0);
  }

  return result;
}

uint64_t BrowseItemReferenceType.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7974696C61646F6DLL;
    if (a1 != 2)
    {
      v5 = 0x7473696C79616C70;
    }

    if (a1 <= 1u)
    {
      return 0x6169726F74696465;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x72656E69617274;
    v2 = 0x65486C6C65737075;
    if (a1 != 7)
    {
      v2 = 0x74756F6B726F77;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6D6172676F7270;
    if (a1 != 4)
    {
      v3 = 0x2D72656E69617274;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24B4F5894(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = BrowseItemReferenceType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == BrowseItemReferenceType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24B517EEC();
  }

  return v8 & 1;
}

unint64_t sub_24B4F591C@<X0>(Swift::String *a1@<X0>, FitnessBrowsing::BrowseItemReferenceType_optional *a2@<X8>)
{
  result = _s15FitnessBrowsing23BrowseItemReferenceTypeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_24B4F594C@<X0>(uint64_t *a1@<X8>)
{
  result = BrowseItemReferenceType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24B4F5A28()
{
  v1 = *v0;
  sub_24B517F7C();
  BrowseItemReferenceType.rawValue.getter(v1);
  sub_24B517B3C();

  return sub_24B517FBC();
}

uint64_t sub_24B4F5A8C(uint64_t a1)
{
  BrowseItemReferenceType.rawValue.getter(*v1);
  sub_24B517B3C();
}

uint64_t sub_24B4F5AE0(uint64_t a1)
{
  v2 = *v1;
  sub_24B517F7C();
  BrowseItemReferenceType.rawValue.getter(v2);
  sub_24B517B3C();

  return sub_24B517FBC();
}

unint64_t _s15FitnessBrowsing23BrowseItemReferenceTypeO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_24B517D6C();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24B4F5B90()
{
  result = qword_27EFFDFC0;
  if (!qword_27EFFDFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDFC0);
  }

  return result;
}

unint64_t sub_24B4F5BF4()
{
  result = qword_27EFFDFC8;
  if (!qword_27EFFDFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDFC8);
  }

  return result;
}

uint64_t sub_24B4F5C48(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_24B51793C();
}

uint64_t sub_24B4F5E18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC7A8, qword_24B51AF78);
  sub_24B496A60(&qword_27EFFC7B0, &qword_27EFFC7A8, qword_24B51AF78, MEMORY[0x277D04410]);

  return sub_24B516F7C();
}

uint64_t sub_24B4F5EB8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC7B8, &qword_24B51AF90);
  MEMORY[0x28223BE20](v0);
  v2 = &v8 - v1;
  sub_24B4F5E18();
  swift_getKeyPath();
  sub_24B5179CC();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      return *v2;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v4 = *v2;
      v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFC7C0, &qword_24B51AFB8) + 48);
      v6 = sub_24B516BEC();
      (*(*(v6 - 8) + 8))(&v2[v5], v6);
      return v4;
    }

    sub_24B49689C(v2, &qword_27EFFC7B8, &qword_24B51AF90);
  }

  return 0;
}

uint64_t sub_24B4F600C()
{
  sub_24B4F5E18();
  swift_getKeyPath();
  sub_24B5179CC();

  if (v2 == 1 || (sub_24B4F5EB8() & 1) != 0)
  {
    return 1;
  }

  sub_24B4F5E18();
  swift_getKeyPath();
  sub_24B5179CC();

  return v1;
}

uint64_t DynamicBrowseMenuView.init(store:bookmarkActionViewBuilder:sharingActionViewBuilder:modalPresentations:menuStyle:buttonStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void (*a5)(uint64_t)@<X4>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, uint64_t a18)
{
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  *a9 = sub_24B48D8D8;
  *(a9 + 8) = v22;
  *(a9 + 16) = 0;
  v31 = a12;
  v32 = a13;
  v33 = a14;
  v34 = a15;
  v35 = a16;
  v36 = a17;
  v37 = a18;
  v23 = type metadata accessor for DynamicBrowseMenuView(0, &v31);

  v25 = a3(v24);
  a5(v25);

  v26 = (a9 + v23[27]);
  *v26 = a7;
  v26[1] = a8;
  (*(*(a14 - 8) + 32))(a9 + v23[28], a10, a14);
  return (*(*(a15 - 8) + 32))(a9 + v23[29], a11, a15);
}

uint64_t DynamicBrowseMenuView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v41 = *(a1 + 32);
  sub_24B51702C();
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFDFD0, &qword_24B524B10);
  v40 = *(a1 + 16);
  sub_24B517C8C();
  v39 = *(a1 + 24);
  sub_24B517C8C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  v4 = sub_24B51786C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFDFD8, &qword_24B524B18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFDFE0, &qword_24B524B20);
  sub_24B4F68A8();
  sub_24B496A60(qword_27EFFE020, &qword_27EFFDFE0, &qword_24B524B20, MEMORY[0x277D84470]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  v47 = MEMORY[0x277CE1410];
  v48 = WitnessTable;
  v49 = MEMORY[0x277CE1410];
  v50 = v3;
  v51 = v4;
  v52 = OpaqueTypeConformance2;
  v53 = swift_getWitnessTable();
  v7 = sub_24B51745C();
  v8 = *(a1 + 48);
  v9 = swift_getWitnessTable();
  v10 = *(a1 + 88);
  v50 = v7;
  v51 = v8;
  v52 = v9;
  v53 = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v12 = *(a1 + 40);
  v50 = v7;
  v51 = v8;
  v37 = v10;
  v38 = v8;
  v52 = v9;
  v53 = v10;
  v13 = swift_getOpaqueTypeConformance2();
  v14 = *(a1 + 80);
  v50 = OpaqueTypeMetadata2;
  v51 = v12;
  v35 = v14;
  v36 = v12;
  v52 = v13;
  v53 = v14;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  v34[1] = swift_getWitnessTable();
  v15 = sub_24B51782C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v34 - v20;
  v22 = sub_24B51724C();
  v42 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = v34 - v23;
  v25 = v43;
  v26 = sub_24B4F600C();
  if (v26)
  {
    v34[0] = v34;
    MEMORY[0x28223BE20](v26);
    *&v27 = v40;
    *&v28 = v41;
    *(&v27 + 1) = v39;
    *(&v28 + 1) = v36;
    *&v34[-12] = v27;
    *&v34[-10] = v28;
    v34[-8] = v38;
    *&v34[-7] = *(a1 + 56);
    v29 = v35;
    v34[-5] = *(a1 + 72);
    v34[-4] = v29;
    v34[-3] = v37;
    v34[-2] = v25;
    sub_24B5178CC();
    sub_24B51781C();
    v30 = swift_getWitnessTable();
    sub_24B49711C();
    v31 = *(v16 + 8);
    v31(v19, v15);
    sub_24B49711C();
    sub_24B48D144(v19, v15, MEMORY[0x277CE1428], v30, MEMORY[0x277CE1410]);
    v31(v19, v15);
    v31(v21, v15);
  }

  else
  {
    v32 = swift_getWitnessTable();
    sub_24B48D23C(v32, v15, MEMORY[0x277CE1428], v32, MEMORY[0x277CE1410]);
  }

  v45 = swift_getWitnessTable();
  v46 = MEMORY[0x277CE1410];
  swift_getWitnessTable();
  sub_24B49711C();
  return (*(v42 + 8))(v24, v22);
}

unint64_t sub_24B4F68A8()
{
  result = qword_27EFFDFE8;
  if (!qword_27EFFDFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFDFD8, &qword_24B524B18);
    sub_24B4F6960();
    sub_24B496A60(&qword_27EFFE010, &qword_27EFFE018, &qword_24B524B38, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDFE8);
  }

  return result;
}

unint64_t sub_24B4F6960()
{
  result = qword_27EFFDFF0;
  if (!qword_27EFFDFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFDFF8, &qword_24B524B28);
    sub_24B496A60(&qword_27EFFE000, &qword_27EFFE008, &qword_24B524B30, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EFFDFF0);
  }

  return result;
}

uint64_t sub_24B4F6A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v96 = a8;
  v97 = a7;
  v99 = a6;
  v93 = a5;
  v94 = a3;
  v79 = a4;
  v95 = a2;
  v88 = a1;
  v89 = a9;
  v87 = a10;
  v100 = a11;
  v85 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFDFD0, &qword_24B524B10);
  sub_24B517C8C();
  sub_24B517C8C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  v12 = sub_24B51786C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFDFD8, &qword_24B524B18);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFFDFE0, &qword_24B524B20);
  sub_24B4F68A8();
  sub_24B496A60(qword_27EFFE020, &qword_27EFFDFE0, &qword_24B524B20, MEMORY[0x277D84470]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  v125 = MEMORY[0x277CE1410];
  v126 = WitnessTable;
  v127 = MEMORY[0x277CE1410];
  v84 = v12;
  v82 = swift_getWitnessTable();
  v115 = v85;
  v116 = v12;
  v117 = OpaqueTypeConformance2;
  v118 = v82;
  v14 = sub_24B51745C();
  v86 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v80 = &v63 - v15;
  v16 = swift_getWitnessTable();
  v71 = v14;
  v72 = v16;
  v17 = v99;
  v115 = v14;
  v116 = v99;
  v117 = v16;
  v118 = a12;
  v18 = v16;
  v90 = a12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = OpaqueTypeMetadata2;
  v81 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v73 = &v63 - v20;
  v115 = v14;
  v116 = v17;
  v117 = v18;
  v118 = a12;
  v21 = swift_getOpaqueTypeConformance2();
  v22 = v93;
  v115 = OpaqueTypeMetadata2;
  v116 = v93;
  v23 = v100;
  v117 = v21;
  v118 = v100;
  v75 = v21;
  v76 = MEMORY[0x277CDEF98];
  v24 = swift_getOpaqueTypeMetadata2();
  v77 = *(v24 - 8);
  v78 = v24;
  v25 = MEMORY[0x28223BE20](v24);
  v69 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v70 = &v63 - v28;
  v29 = v79;
  v30 = *(v79 - 8);
  MEMORY[0x28223BE20](v27);
  v32 = &v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_24B51702C();
  v34 = *(v33 - 8);
  v91 = v33;
  v92 = v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v63 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v98 = &v63 - v38;
  v114[0] = sub_24B5176DC();
  v115 = v95;
  v116 = v94;
  v117 = v29;
  v118 = v22;
  v119 = v99;
  v120 = v97;
  v39 = v87;
  v121 = v96;
  v122 = v87;
  v123 = v23;
  v124 = v90;
  v64 = type metadata accessor for DynamicBrowseMenuView(0, &v115);
  v40 = v88;
  (*(v88 + *(v64 + 108)))();
  v41 = v37;
  v42 = MEMORY[0x277CE0F70];
  MEMORY[0x24C241440](v32, MEMORY[0x277CE0F78], v29);
  (*(v30 + 8))(v32, v29);

  v114[2] = v42;
  v114[3] = v39;
  v43 = v91;
  v44 = swift_getWitnessTable();
  v65 = v41;
  v66 = v44;
  sub_24B49711C();
  v45 = *(v92 + 8);
  v67 = v92 + 8;
  v68 = v45;
  v45(v41, v43);
  v101 = v95;
  v102 = v94;
  v46 = v93;
  v103 = v29;
  v104 = v93;
  v105 = v99;
  v106 = v97;
  v107 = v96;
  v108 = v39;
  v109 = v100;
  v110 = v90;
  v111 = v40;
  v47 = v80;
  sub_24B51744C();
  v48 = v73;
  v49 = v71;
  sub_24B51754C();
  (*(v86 + 8))(v47, v49);
  v50 = v69;
  v51 = v74;
  v52 = v75;
  v53 = v100;
  sub_24B5176BC();
  (*(v81 + 8))(v48, v51);
  v115 = v51;
  v116 = v46;
  v117 = v52;
  v118 = v53;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = v70;
  v56 = v78;
  sub_24B49711C();
  v57 = v77;
  v58 = *(v77 + 8);
  v58(v50, v56);
  v59 = v91;
  v60 = v65;
  (*(v92 + 16))(v65, v98, v91);
  v115 = v60;
  (*(v57 + 16))(v50, v55, v56);
  v116 = v50;
  v114[0] = v59;
  v114[1] = v56;
  v112 = v66;
  v113 = v54;
  sub_24B4F5C48(&v115, 2uLL, v114);
  v58(v55, v56);
  v61 = v68;
  v68(v98, v59);
  v58(v50, v56);
  return v61(v60, v59);
}

uint64_t sub_24B4F7294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  v28 = a7;
  v29 = a8;
  v26 = a6;
  v27 = a1;
  v30 = a9;
  v25 = a10;
  sub_24B517C8C();
  sub_24B517C8C();
  swift_getTupleTypeMetadata2();
  sub_24B51792C();
  v15 = sub_24B51786C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v25 - v20;
  v31 = a2;
  v32 = a3;
  v33 = a4;
  v34 = a5;
  v35 = v26;
  v36 = v28;
  v37 = v29;
  v38 = v25;
  v39 = a11;
  v40 = v27;
  WitnessTable = swift_getWitnessTable();
  sub_24B51785C();
  v41 = MEMORY[0x277CE1410];
  v42 = WitnessTable;
  v43 = MEMORY[0x277CE1410];
  swift_getWitnessTable();
  sub_24B49711C();
  v23 = *(v16 + 8);
  v23(v19, v15);
  sub_24B49711C();
  return (v23)(v21, v15);
}

uint64_t sub_24B4F74F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  v67 = a6;
  v62 = a5;
  v55 = a4;
  v63 = a9;
  v56 = a11;
  v58 = *(a3 - 8);
  v54 = a10;
  v15 = MEMORY[0x28223BE20](a1);
  v53 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v52 = &v52 - v17;
  v61 = sub_24B517C8C();
  v57 = *(v61 - 8);
  v18 = MEMORY[0x28223BE20](v61);
  v64 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v60 = &v52 - v21;
  v22 = *(a2 - 8);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v52 - v26;
  v28 = sub_24B517C8C();
  v65 = *(v28 - 8);
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v66 = &v52 - v32;
  v73 = a2;
  v74 = a3;
  v59 = a3;
  v75 = v55;
  v76 = v62;
  v77 = v67;
  v78 = a7;
  v67 = a7;
  v62 = a8;
  v79 = a8;
  v80 = v54;
  v81 = v56;
  type metadata accessor for DynamicBrowseMenuView(0, &v73);
  sub_24B4F5E18();
  swift_getKeyPath();
  sub_24B5179CC();

  if (v73 == 1 || (sub_24B4F5EB8() & 1) != 0)
  {
    sub_24B49711C();
    sub_24B49711C();
    (*(v22 + 8))(v27, a2);
    (*(v22 + 32))(v31, v25, a2);
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = 1;
  (*(v22 + 56))(v31, v33, 1, a2);
  sub_24B4A3FB0(v31, v66);
  v35 = *(v65 + 8);
  v36 = v31;
  v37 = v31;
  v38 = v28;
  v56 = v65 + 8;
  v55 = v35;
  v35(v37, v28);
  sub_24B4F5E18();
  swift_getKeyPath();
  sub_24B5179CC();

  v39 = v62;
  v40 = v59;
  v41 = v58;
  if (v73 == 1)
  {
    v42 = v52;
    sub_24B49711C();
    v43 = v53;
    sub_24B49711C();
    (*(v41 + 8))(v42, v40);
    (*(v41 + 32))(v64, v43, v40);
    v34 = 0;
  }

  v44 = v64;
  (*(v41 + 56))(v64, v34, 1, v40);
  v45 = v60;
  sub_24B4A3FB0(v44, v60);
  v46 = v57;
  v47 = *(v57 + 8);
  v48 = v61;
  v47(v44, v61);
  v49 = v66;
  (*(v65 + 16))(v36, v66, v38);
  v73 = v36;
  (*(v46 + 16))(v44, v45, v48);
  v74 = v44;
  v72[0] = v38;
  v72[1] = v48;
  v69 = v67;
  WitnessTable = swift_getWitnessTable();
  v68 = v39;
  v71 = swift_getWitnessTable();
  sub_24B4F5C48(&v73, 2uLL, v72);
  v47(v45, v48);
  v50 = v55;
  v55(v49, v38);
  v47(v44, v48);
  return v50(v36, v38);
}

uint64_t sub_24B4F7BD8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDFE0, &qword_24B524B20);
  MEMORY[0x28223BE20](v0);
  v2 = v15 - v1;
  v3 = sub_24B51742C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24B51774C();
  sub_24B5173DC();
  sub_24B5173FC();

  (*(v4 + 104))(v6, *MEMORY[0x277CE0A10], v3);
  v8 = sub_24B51743C();

  (*(v4 + 8))(v6, v3);
  KeyPath = swift_getKeyPath();
  v10 = sub_24B5176EC();
  v11 = swift_getKeyPath();
  v15[2] = v7;
  v15[3] = v7;
  v15[4] = KeyPath;
  v15[5] = v8;
  v15[6] = v11;
  v15[7] = v10;
  v12 = *MEMORY[0x277CDF9D8];
  v13 = sub_24B51701C();
  (*(*(v13 - 8) + 104))(v2, v12, v13);
  sub_24B4F895C();
  result = sub_24B517AAC();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFFDFD8, &qword_24B524B18);
    sub_24B4F68A8();
    v15[1] = KeyPath;
    sub_24B496A60(qword_27EFFE020, &qword_27EFFDFE0, &qword_24B524B20, MEMORY[0x277D84470]);
    sub_24B51758C();
    sub_24B49689C(v2, &qword_27EFFDFE0, &qword_24B524B20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24B4F7F30(void *a1)
{
  sub_24B4A44D4(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_24B4F88F4();
        if (v4 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            swift_checkMetadataState();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}