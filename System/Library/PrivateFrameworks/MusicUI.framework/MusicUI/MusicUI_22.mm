uint64_t sub_2168B408C(uint64_t a1)
{
  v38 = sub_21700C084();
  v2 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21700C2F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D84F90];
  v32 = v11;
  *(v11 + 16) = MEMORY[0x277D84F90];
  v29 = v11 + 16;
  v31 = swift_allocObject();
  *(v31 + 16) = 1;
  v13 = swift_allocObject();
  v30 = v13;
  *(v13 + 16) = v12;
  v14 = (v13 + 16);
  v45 = a1;
  result = sub_2166BF3C8(a1);
  v46 = result;
  if (!result)
  {
LABEL_17:
    v27 = v32;
    sub_2168B4CB0(v30, v31, v32);
    swift_beginAccess();
    v28 = *(v27 + 16);
    sub_21700DF14();

    return v28;
  }

  if (v46 >= 1)
  {
    v44 = v45 & 0xC000000000000001;
    v39 = 1;
    swift_beginAccess();
    swift_beginAccess();
    v16 = 0;
    v42 = (v5 + 88);
    v43 = (v5 + 16);
    v41 = *MEMORY[0x277CD8368];
    v40 = (v5 + 8);
    v35 = (v5 + 96);
    v34 = (v2 + 32);
    v33 = (v2 + 8);
    v36 = v7;
    do
    {
      if (v44)
      {
        MEMORY[0x21CEA0220](v16, v45);
      }

      else
      {
      }

      sub_2168C032C();
      (*v43)(v7, v10, v4);
      v17 = (*v42)(v7, v4);
      if (v17 == v41)
      {
        (*v35)(v7, v4);
        v18 = v37;
        v19 = v38;
        (*v34)(v37, v7, v38);
        v20 = sub_21700BF74();
        v22 = v21;
        (*v33)(v18, v19);
        (*v40)(v10, v4);
        if (v22)
        {
          v7 = v36;
        }

        else
        {
          v7 = v36;
          if (v20 != v39)
          {
            v23 = v30;
            v24 = v31;
            sub_2168B4CB0(v30, v31, v32);
            *(v23 + 16) = MEMORY[0x277D84F90];

            *(v24 + 16) = v20;
            v39 = v20;
          }
        }
      }

      else
      {
        v25 = *v40;
        (*v40)(v10, v4);
        v25(v7, v4);
      }

      swift_beginAccess();

      MEMORY[0x21CE9F610](v26);
      if (*((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21700E874();
      }

      ++v16;
      sub_21700E8C4();
      swift_endAccess();
    }

    while (v46 != v16);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_2168B45C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v68 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB538, &unk_2170239A0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v60 - v9;
  v70 = type metadata accessor for LibraryAlbumDataSource.HeaderType(0);
  MEMORY[0x28223BE20](v70);
  v71 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v69);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_217006224();
  v73 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ComposerSectionHeader(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v19 = *(a1 + 16);
  if (v19 >> 62)
  {
    result = sub_21700F2B4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  result = swift_beginAccess();
  v21 = *(a2 + 24);
  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = *(a2 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v62 = *(a2 + 16);
    v63 = v7;
    v64 = a1;
    v65 = v10;
    v66 = v8;
    v67 = a4;
    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8978, &unk_2170239B0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_217013DA0;
    swift_beginAccess();
    v25 = *(a2 + 32);
    v26 = *(a2 + 40);
    v61 = v23;
    sub_21700DF14();
    sub_21700DF14();
    sub_217006214();
    v27 = sub_2170061F4();
    v29 = v28;
    v30 = *(v73 + 8);
    v73 += 8;
    v60 = v30;
    v30(v15, v72);
    *(v24 + 32) = v27;
    *(v24 + 40) = v29;
    *(v24 + 48) = v25;
    *(v24 + 56) = v26;
    *(v24 + 64) = 0u;
    *(v24 + 80) = 0u;
    *(v24 + 96) = 0;
    swift_beginAccess();
    v31 = *(a2 + 48);
    v32 = sub_21700C0B4();
    if (!v33)
    {
      v32 = sub_21700C164();
    }

    v34 = v32;
    v35 = v33;
    v76 = 1;
    v36 = v69;
    v37 = *(v69 + 24);
    v38 = sub_217005EF4();
    __swift_storeEnumTagSinglePayload(&v13[v37], 1, 1, v38);
    *v13 = 4;
    *(v13 + 40) = 0u;
    *(v13 + 56) = 0u;
    *(v13 + 72) = 0u;
    *(v13 + 8) = 0u;
    *(v13 + 24) = 0u;
    *(v13 + 11) = v34;
    *(v13 + 12) = v35;
    *(v13 + 13) = 0;
    v13[112] = 1;
    v39 = v16[12];
    __swift_storeEnumTagSinglePayload(&v18[v39], 1, 1, v36);
    sub_217006214();
    v40 = sub_2170061F4();
    v42 = v41;
    v60(v15, v72);
    v74 = v40;
    v75 = v42;
    sub_21700F364();
    v43 = &v18[v16[6]];
    v44 = v61;
    *v43 = v62;
    *(v43 + 1) = v44;
    v45 = &v18[v16[7]];
    *v45 = v24;
    v45[8] = 1;
    v46 = &v18[v16[8]];
    *v46 = 0;
    v46[8] = 0;
    v47 = &v18[v16[9]];
    *v47 = v31 * 1000.0;
    v47[8] = 0;
    v48 = &v18[v16[11]];
    *(v48 + 4) = 0;
    *v48 = 0u;
    *(v48 + 1) = 0u;
    v49 = &v18[v16[10]];
    *v49 = 0;
    *(v49 + 1) = 0;
    sub_2166997CC(&v18[v39], &qword_27CAB6A00, &unk_217016B60);
    sub_2168B5AD0();
    __swift_storeEnumTagSinglePayload(&v18[v39], 0, 1, v36);
    v50 = v16[5];
    v51 = sub_21700D7A4();
    __swift_storeEnumTagSinglePayload(&v18[v50], 1, 1, v51);
    sub_2168B5B7C();
    swift_storeEnumTagMultiPayload();
    v52 = v64;
    swift_beginAccess();
    v53 = *(v52 + 16);
    v54 = *(v63 + 48);
    v55 = v65;
    sub_2168B5AD0();
    *(v55 + v54) = v53;
    v56 = v67;
    swift_beginAccess();
    sub_21700DF14();
    sub_216DF3B14(v57);
    v58 = *(*(v56 + 16) + 16);
    sub_216DF3C78(v58);
    v59 = *(v56 + 16);
    *(v59 + 16) = v58 + 1;
    sub_2167A6724(v55, v59 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v58, &qword_27CABB538, &unk_2170239A0);
    *(v56 + 16) = v59;
    swift_endAccess();
    return sub_2168B5B28(v18, type metadata accessor for ComposerSectionHeader);
  }

  return result;
}

uint64_t sub_2168B4CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB538, &unk_2170239A0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - v8;
  v44 = type metadata accessor for LibraryAlbumDataSource.HeaderType(0);
  MEMORY[0x28223BE20](v44);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_217006224();
  v11 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DefaultSectionHeader(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v17 = *(a1 + 16);
  if (v17 >> 62)
  {
    result = sub_21700F2B4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7518, &unk_2170187B0);
  inited = swift_initStackObject();
  v41 = v6;
  v20 = inited;
  *(inited + 16) = xmmword_217013DA0;
  swift_beginAccess();
  v21 = *(a2 + 16);
  v22 = MEMORY[0x277D83C10];
  v20[7] = MEMORY[0x277D83B88];
  v20[8] = v22;
  v20[4] = v21;
  v23 = sub_216983808(10, v20);
  v25 = v24;
  sub_217006214();
  v26 = sub_2170061F4();
  v40 = v9;
  v27 = a1;
  v28 = v26;
  v42 = v7;
  v29 = a3;
  v31 = v30;
  (*(v11 + 8))(v13, v43);
  *(v16 + 8) = 0;
  *(v16 + 2) = 0u;
  *(v16 + 3) = 0u;
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v32 = v14[8];
  v33 = type metadata accessor for Artwork(0);
  __swift_storeEnumTagSinglePayload(&v16[v32], 1, 1, v33);
  *(v16 + 9) = v28;
  *(v16 + 10) = v31;
  *(v16 + 11) = v23;
  *(v16 + 12) = v25;
  *(v16 + 104) = 0u;
  *(v16 + 120) = 0u;
  *(v16 + 136) = 0u;
  *(v16 + 19) = 0;
  v16[v14[9]] = 0;
  v16[v14[11]] = 2;
  v16[v14[10]] = 0;
  sub_2168B5B7C();
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  v34 = *(v27 + 16);
  v35 = *(v41 + 48);
  v36 = v40;
  sub_2168B5AD0();
  *(v36 + v35) = v34;
  swift_beginAccess();
  sub_21700DF14();
  sub_216DF3B14(v37);
  v38 = *(*(v29 + 16) + 16);
  sub_216DF3C78(v38);
  v39 = *(v29 + 16);
  *(v39 + 16) = v38 + 1;
  sub_2167A6724(v36, v39 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v38, &qword_27CABB538, &unk_2170239A0);
  *(v29 + 16) = v39;
  swift_endAccess();
  return sub_2168B5B28(v16, type metadata accessor for DefaultSectionHeader);
}

uint64_t sub_2168B513C()
{
  v1 = OBJC_IVAR____TtC7MusicUI22LibraryAlbumDataSource__album;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB458, &qword_217023738);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC7MusicUI22LibraryAlbumDataSource__headerModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB460, &qword_217023740);
  OUTLINED_FUNCTION_9_0();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC7MusicUI22LibraryAlbumDataSource__footerModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB468, &qword_217023748);
  OUTLINED_FUNCTION_9_0();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC7MusicUI22LibraryAlbumDataSource__trackSections;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB470, &qword_217023750);
  OUTLINED_FUNCTION_9_0();
  (*(v8 + 8))(v0 + v7);

  sub_2166997CC(v0 + OBJC_IVAR____TtC7MusicUI22LibraryAlbumDataSource_libraryData, &qword_27CABB478, &unk_217023758);
  return v0;
}

uint64_t sub_2168B528C()
{
  sub_2168B513C();

  return MEMORY[0x2821FE8D8](v0);
}

void sub_2168B530C(uint64_t a1)
{
  sub_2168B5554(319, &qword_27CABB408, MEMORY[0x277CD82C8]);
  if (v1 <= 0x3F)
  {
    sub_2168B55A8(319, &qword_27CABB410, &qword_27CABB418, &qword_21704BD50, MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      sub_2168B5554(319, &qword_27CABB420, type metadata accessor for ContainerDetailTracklistFooterLockup);
      if (v3 <= 0x3F)
      {
        sub_2168B55A8(319, &qword_27CABB428, &qword_27CABB430, &qword_2170236B0, MEMORY[0x277CBCED0]);
        if (v4 <= 0x3F)
        {
          sub_2168B55A8(319, &qword_27CABB438, &qword_27CABB440, &qword_2170236D0, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_2168B5554(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_217007E14();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2168B55A8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2168B562C(uint64_t a1)
{
  result = type metadata accessor for ComposerSectionHeader(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DefaultSectionHeader(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2168B56A0()
{
  OUTLINED_FUNCTION_82_0();
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB488, &qword_217023770) - 8);
  v3 = *(v0 + ((*(v2 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2168B5BD4;
  OUTLINED_FUNCTION_17_4();

  return sub_2168B20D4(v5, v6, v7, v8, v3);
}

uint64_t sub_2168B57DC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2166F2728;
  OUTLINED_FUNCTION_17_4();

  return sub_2168B08EC(v4, v5, v6, v2);
}

uint64_t sub_2168B5888(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB478, &unk_217023758);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2168B58F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2168B5948(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB520, &qword_217023978);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2168B59B8()
{
  OUTLINED_FUNCTION_93();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB520, &qword_217023978);
  OUTLINED_FUNCTION_36(v2);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2168B5BD4;
  OUTLINED_FUNCTION_17_4();

  return sub_2168B1324(v5, v6, v7, v3, v8);
}

uint64_t sub_2168B5AD0()
{
  v2 = OUTLINED_FUNCTION_102();
  v3(v2);
  OUTLINED_FUNCTION_34();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_2168B5B28(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2168B5B7C()
{
  v2 = OUTLINED_FUNCTION_102();
  v3(v2);
  OUTLINED_FUNCTION_34();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_2168B5BF4@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2170093C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB550, &qword_217023A10);
  return sub_2168B5C44(v2, (a2 + *(v4 + 44)));
}

uint64_t sub_2168B5C44@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB558, &qword_217023A18);
  MEMORY[0x28223BE20](v4);
  v6 = v100 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB560, &qword_217023A20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v100 - v11;
  v13 = type metadata accessor for ContainerDetailTracklistFooterLockup(0);
  v14 = *(a1 + v13[10]);
  v15 = 0;
  v111 = a2;
  if (v14 && (v128[0] = v14, *(v14 + 16)))
  {
    v105 = v13;
    v106 = a1;
    v107 = v6;
    v108 = v4;
    v109 = v12;
    v110 = v9;
    v16 = *(v14 + 32);
    sub_21700DF14();
    sub_216DD3CB4(0);
    v17 = sub_216B59CA0(v16);
    v19 = v18;
    v21 = v20;
    v23 = v22;
    sub_216983738(293);
    sub_217009264();
    v24 = sub_21700A154();
    v115 = v25;
    LODWORD(v114) = v26;
    v28 = v27;
    v29 = *(v128[0] + 16);
    v103 = v17;
    v104 = v23;
    v102 = v19;
    v101 = v21;
    v100[1] = v128[0];
    if (v29)
    {
      v30 = (v128[0] + 32);
      v123 = v29;
      sub_216777114(v17, v19, v21 & 1);
      sub_21700DF14();
      v31 = v17;
      v32 = v19;
      v33 = v21;
      v34 = v23;
      v112 = v24;
      v113 = v28;
      do
      {
        LODWORD(v119) = v33;
        v36 = v30 + 1;
        v35 = *v30;
        KeyPath = v32;
        v121 = v31;
        v122 = v34;
        v37 = sub_21700A064();
        v116 = v38;
        v117 = v37;
        v40 = v39;
        v118 = v41;
        v42 = sub_216B59CA0(v35);
        v44 = v43;
        v46 = v45;
        v47 = sub_21700A064();
        v49 = v48;
        v51 = v50;
        v52 = v42;
        v24 = v112;
        v53 = v44;
        v30 = v36;
        v55 = v54;
        sub_21678817C(v52, v53, v46 & 1);
        v56 = v47;

        sub_21678817C(v117, v116, v40 & 1);

        sub_21678817C(v121, KeyPath, v119 & 1);

        v31 = v47;
        v32 = v49;
        v33 = v55;
        v34 = v51;
        --v123;
      }

      while (v123);
    }

    else
    {
      sub_216777114(v17, v19, v21 & 1);
      sub_21700DF14();
      LOBYTE(v55) = v21;
      v49 = v19;
      v56 = v17;
    }

    LODWORD(v124[0]) = sub_217009834();
    v61 = sub_21700A044();
    v63 = v62;
    v64 = v55;
    v66 = v65;
    sub_21678817C(v56, v49, v64 & 1);

    sub_217009D44();
    v67 = sub_21700A094();
    v122 = v68;
    v123 = v67;
    v70 = v69;
    v121 = v71;

    sub_21678817C(v61, v63, v66 & 1);

    KeyPath = swift_getKeyPath();
    LOBYTE(v61) = sub_217009CA4();
    sub_217007F24();
    v15 = v72;
    v58 = v73;
    v59 = v74;
    v60 = v75;
    sub_21678817C(v24, v115, v114 & 1);

    sub_21678817C(v103, v102, v101 & 1);

    LOBYTE(v124[0]) = v70 & 1;
    LOBYTE(v126[0]) = 0;
    v57 = v70 & 1;
    v119 = v61;
    v12 = v109;
    v9 = v110;
    v6 = v107;
    v4 = v108;
    v13 = v105;
    a1 = v106;
  }

  else
  {
    v122 = 0;
    v123 = 0;
    KeyPath = 0;
    v121 = 0;
    v119 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
  }

  v76 = (a1 + v13[8]);
  v77 = v76[1];
  if (v77)
  {
    v115 = *v76;
    v116 = MEMORY[0x277D84F90];
  }

  else
  {
    v115 = 0;
    v116 = 0;
  }

  v118 = v77;
  sub_21700DF14();
  v114 = sub_217009D44();
  v78 = swift_getKeyPath();
  v79 = sub_21700AD34();
  v113 = swift_getKeyPath();
  v80 = (a1 + v13[9]);
  v81 = v80[1];
  v117 = v78;
  if (v81 && (v82 = v80[2]) != 0 && *(v82 + 16))
  {
    v83 = *v80;
    sub_21700DF14();
    *v6 = sub_2170093C4();
    *(v6 + 1) = 0x4000000000000000;
    v6[16] = 0;
    v84 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB580, &qword_217023AA0) + 44)];
    v85 = v83;
    v78 = v117;
    sub_2168B63C0(v85, v81, v82, v84);

    v86 = sub_217009C94();
    sub_217007F24();
    v87 = &v6[*(v4 + 36)];
    *v87 = v86;
    *(v87 + 1) = v88;
    *(v87 + 2) = v89;
    *(v87 + 3) = v90;
    *(v87 + 4) = v91;
    v87[40] = 0;
    sub_2168B6884(v6, v12);
    v92 = 0;
  }

  else
  {
    v92 = 1;
  }

  __swift_storeEnumTagSinglePayload(v12, v92, 1, v4);
  sub_216681B64(v12, v9, &qword_27CABB560, &qword_217023A20);
  v124[0] = v123;
  v124[1] = v122;
  v112 = v57;
  v124[2] = v57;
  v124[3] = v121;
  v124[4] = KeyPath;
  v124[5] = 0;
  v124[6] = v119;
  v124[7] = v15;
  v124[8] = v58;
  v124[9] = v59;
  v124[10] = v60;
  LOBYTE(v124[11]) = 0;
  v93 = v111;
  memcpy(v111, v124, 0x59uLL);
  v95 = v115;
  v94 = v116;
  v125[0] = v115;
  v125[1] = v118;
  v125[2] = 0;
  v125[3] = v116;
  v125[4] = v78;
  v97 = v113;
  v96 = v114;
  v125[5] = v114;
  v125[6] = v79;
  v125[7] = v113;
  LOBYTE(v125[8]) = 0;
  memcpy(v93 + 96, v125, 0x41uLL);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB568, &qword_217023A88);
  sub_216681B64(v9, &v93[*(v98 + 64)], &qword_27CABB560, &qword_217023A20);
  sub_216681B64(v124, v128, &qword_27CABB570, &qword_217023A90);
  sub_216681B64(v125, v128, &qword_27CABB578, &qword_217023A98);
  sub_21669987C(v12, &qword_27CABB560, &qword_217023A20);
  sub_21669987C(v9, &qword_27CABB560, &qword_217023A20);
  v126[0] = v95;
  v126[1] = v118;
  v126[2] = 0;
  v126[3] = v94;
  v126[4] = v117;
  v126[5] = v96;
  v126[6] = v79;
  v126[7] = v97;
  v127 = 0;
  sub_21669987C(v126, &qword_27CABB578, &qword_217023A98);
  v128[0] = v123;
  v128[1] = v122;
  v128[2] = v112;
  v128[3] = v121;
  v128[4] = KeyPath;
  v128[5] = 0;
  v128[6] = v119;
  v128[7] = v15;
  v128[8] = v58;
  v128[9] = v59;
  v128[10] = v60;
  v129 = 0;
  return sub_21669987C(v128, &qword_27CABB570, &qword_217023A90);
}

uint64_t sub_2168B63C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v23 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB588, &unk_217023AA8);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  sub_2168AE7E0();
  sub_21700DF14();
  sub_21700F074();
  v22 = sub_217009EC4();
  KeyPath = swift_getKeyPath();
  v14 = sub_21700AD34();
  *v12 = sub_21700B3B4();
  *(v12 + 1) = v15;
  *(v12 + 2) = 0;
  v12[24] = 1;
  v24 = a3;
  sub_21700DF14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8968, qword_21701A810);
  sub_2166D9530(&qword_27CAB9CF0, &qword_27CAB8968, qword_21701A810, MEMORY[0x277D83980]);
  sub_2168B68F4();
  sub_2168B6948();
  sub_21700B164();
  sub_216681B64(v12, v9, &qword_27CABB588, &unk_217023AA8);
  v16 = MEMORY[0x277D84F90];
  v18 = v22;
  v17 = v23;
  *a4 = v23;
  a4[1] = a2;
  a4[2] = 0;
  a4[3] = v16;
  a4[4] = KeyPath;
  a4[5] = v18;
  a4[6] = v14;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB5A0, qword_217023AB8);
  sub_216681B64(v9, a4 + *(v19 + 48), &qword_27CABB588, &unk_217023AA8);
  sub_2167770D0(v17, a2, 0, MEMORY[0x277D84F90]);

  sub_21669987C(v12, &qword_27CABB588, &unk_217023AA8);
  sub_21669987C(v9, &qword_27CABB588, &unk_217023AA8);
  sub_2167C4DF0(v17, a2, 0, MEMORY[0x277D84F90]);
}

uint64_t sub_2168B6680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_216681B64(a1 + 32, v12, &qword_27CAB6DB0, &qword_217016C00);
  sub_216681B64(v12, a2, &qword_27CAB6DB0, &qword_217016C00);
  v4 = sub_2168B6734(a1);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = sub_21669987C(v12, &qword_27CAB6DB0, &qword_217016C00);
  *(a2 + 40) = v4;
  *(a2 + 48) = v6;
  *(a2 + 56) = v8 & 1;
  *(a2 + 64) = v10;
  return result;
}

uint64_t sub_2168B6734(uint64_t a1)
{
  sub_2167B2E14();
  sub_21700DF14();
  v1 = sub_21700A174();
  v3 = v2;
  v5 = v4;
  sub_217009D44();
  v6 = sub_21700A094();
  v8 = v7;
  v10 = v9;

  sub_21678817C(v1, v3, v5 & 1);

  sub_21700AC54();
  v11 = sub_21700A044();
  sub_21678817C(v6, v8, v10 & 1);

  return v11;
}

uint64_t sub_2168B6884(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB558, &qword_217023A18);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2168B68F4()
{
  result = qword_27CABB590;
  if (!qword_27CABB590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB590);
  }

  return result;
}

unint64_t sub_2168B6948()
{
  result = qword_27CABB598;
  if (!qword_27CABB598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB598);
  }

  return result;
}

uint64_t sub_2168B699C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerDetailTracklistFooterLockup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ContainerDetailTrackListFooterView(uint64_t a1)
{
  result = qword_280E2EC80;
  if (!qword_280E2EC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2168B6A74(uint64_t a1)
{
  type metadata accessor for ContainerDetailTracklistFooterLockup(319);
  if (v1 <= 0x3F)
  {
    sub_2167B8000();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for CreditArtistContextMenu(uint64_t a1)
{
  result = qword_280E38728;
  if (!qword_280E38728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2168B6B6C(uint64_t a1)
{
  sub_217006E94();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MenuConfiguration(319);
    if (v2 <= 0x3F)
    {
      sub_2167B83B4(319);
      if (v3 <= 0x3F)
      {
        sub_2167EE974(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2168B6DB4(void *a1)
{
  v2 = sub_21700F0A4();
  v3 = sub_21700F094();

  return v3 & 1;
}

uint64_t sub_2168B6E24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_2168B6E64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2168B6EEC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_2168B6F2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2168B6FB0@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PopoverSelectorToolbarContentView(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = &v9[*(v10 + 20)];
  v15[15] = 0;
  sub_21700AEA4();
  v12 = v16;
  *v11 = v15[16];
  *(v11 + 1) = v12;
  v13 = type metadata accessor for PopoverAccessoryButton(0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v13) == 1)
  {
    sub_216697664(a2, &qword_27CABB618, &qword_217023EC8);
    sub_216697664(a1, &qword_27CABB648, &unk_217023EE0);

    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v6);
  }

  else
  {
    sub_2168B9428(a1, v9, type metadata accessor for PopoverAccessoryButton);
    memcpy(&v9[*(v6 + 24)], a2, 0x58uLL);
    sub_2168B9224(v9, a3);
    __swift_storeEnumTagSinglePayload(a3, 0, 1, v6);
    return sub_2168B9288(v9);
  }
}

uint64_t sub_2168B7138@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2170098F4();
  OUTLINED_FUNCTION_1();
  v39 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PopoverSelectorToolbarContentView(0);
  OUTLINED_FUNCTION_1();
  v37 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB658, &qword_217023F68);
  OUTLINED_FUNCTION_1();
  v38 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  sub_2168B7588(v44);
  if (*&v44[8])
  {
    memcpy(__dst, v44, 0x48uLL);
    sub_2167ADC3C(__dst, v44);
    v17 = v1 + *(v8 + 20);
    v36 = a1;
    v18 = *v17;
    v32 = v3;
    v19 = *(v17 + 8);
    v42 = v18;
    v43 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
    sub_21700AED4();
    v45 = v41[0];
    v46 = v41[1];
    v47 = v41[2];
    v42 = v18;
    v43 = v19;
    sub_21700AED4();
    v33 = v41[1];
    v34 = v41[0];
    v35 = LOBYTE(v41[2]);
    sub_2168B9224(v1, &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_2167ADC3C(__dst, v41);
    v20 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v21 = swift_allocObject();
    sub_2168B9428(&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for PopoverSelectorToolbarContentView);
    memcpy((v21 + ((v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)), v41, 0x48uLL);
    *v7 = sub_21700AEF4();
    v22 = v39;
    v23 = v16;
    v24 = v32;
    (*(v39 + 104))(v7, *MEMORY[0x277CDE248], v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6318, &qword_217023F70);
    sub_216776E60();
    sub_2166D9530(&qword_27CAB6328, &qword_27CAB6318, &qword_217023F70, MEMORY[0x277CDD6E0]);
    sub_21700A434();

    (*(v22 + 8))(v7, v24);
    sub_2168B9524(v44);
    sub_2167ADC98(__dst);
    v25 = v36;
    v26 = v40;
    (*(v38 + 32))(v36, v23, v40);
    v27 = v25;
    v28 = 0;
    v29 = v26;
  }

  else
  {
    sub_216697664(v44, &qword_27CAB8100, qword_21701B4C0);
    v27 = a1;
    v28 = 1;
    v29 = v40;
  }

  return __swift_storeEnumTagSinglePayload(v27, v28, 1, v29);
}

void sub_2168B7588(__n128 *a1@<X8>)
{
  v3 = type metadata accessor for PopoverSelectorToolbarContentView(0);
  sub_216681B04(v1 + *(v3 + 24), v7, &qword_27CABB618, &qword_217023EC8);
  if (v7[1])
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB620, &qword_217023ED0);
    MEMORY[0x21CE9BEE0](__src, v4);
    sub_216697664(v7, &qword_27CABB620, &qword_217023ED0);
    if (*(&__src[0] + 1))
    {
      memcpy(a1, __src, 0x48uLL);
      return;
    }
  }

  else
  {
    sub_216697664(v7, &qword_27CABB618, &qword_217023EC8);
    memset(__src, 0, 72);
  }

  v5 = type metadata accessor for PopoverAccessoryButton(0);
  v6 = *(v1 + *(v5 + 24));
  MEMORY[0x28223BE20](v5);
  sub_216C2E7E0();
  if (v7[1])
  {
    memcpy(a1, v7, 0x48uLL);
  }

  else
  {
    sub_216CE09CC(v6, a1);
  }

  if (*(&__src[0] + 1))
  {
    sub_216697664(__src, &qword_27CAB8100, qword_21701B4C0);
  }
}

uint64_t sub_2168B7718(uint64_t a1, uint64_t a2)
{
  sub_217009C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB660, &qword_217023F78);
  sub_2168B955C();
  return sub_217008054();
}

uint64_t sub_2168B77A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_217009854();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB670, &qword_217023F80);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  *v12 = sub_2170093B4();
  *(v12 + 1) = 0;
  v12[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB680, &unk_217023F88);
  sub_2168B79C4(a1, a2);
  sub_217009844();
  sub_2166D9530(&qword_27CABB678, &qword_27CABB670, &qword_217023F80, MEMORY[0x277CE1198]);
  sub_21700A914();
  (*(v7 + 8))(v9, v6);
  sub_216697664(v12, &qword_27CABB670, &qword_217023F80);
  LOBYTE(a2) = sub_217009CE4();
  sub_217007F24();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB660, &qword_217023F78);
  v22 = a3 + *(result + 36);
  *v22 = a2;
  *(v22 + 8) = v14;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_2168B79C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PopoverSelectorToolbarContentView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = *(*(a1 + *(type metadata accessor for PopoverAccessoryButton(0) + 24)) + 16);
  v13 = 0;
  v14 = v7;
  swift_getKeyPath();
  sub_2168B9224(a1, &__src[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
  sub_2167ADC3C(a2, __src);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_2168B9428(&__src[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v9 + v8, type metadata accessor for PopoverSelectorToolbarContentView);
  memcpy((v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)), __src, 0x48uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB688, &qword_217023FB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB690, &qword_217023FB8);
  sub_2168B98BC();
  sub_2166D9530(&qword_27CABB6A8, &qword_27CABB690, &qword_217023FB8, MEMORY[0x277CE14C0]);
  return sub_21700B154();
}

uint64_t sub_2168B7BC8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_21700B134();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB6B0, &qword_217023FC0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  v17 = *a1;
  result = type metadata accessor for PopoverAccessoryButton(0);
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v39 = v9;
  v19 = *(a2 + *(result + 24));
  if (v17 >= *(v19 + 16))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_2167ADC3C(v19 + 72 * v17 + 32, v52);
  v20 = v52[0] == *a3 && v52[1] == a3[1];
  v42 = v13;
  v43 = a4;
  v41 = v8;
  if (v20)
  {
    v21 = 1;
  }

  else
  {
    v21 = sub_21700F7D4();
  }

  sub_2167ADC3C(v52, v49);
  v22 = type metadata accessor for PopoverSelectorToolbarContentView(0);
  v23 = (a2 + *(v22 + 20));
  v24 = *v23;
  v25 = *(v23 + 1);
  v46 = v24;
  v47 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  sub_21700AED4();
  v26 = v44[0];
  v27 = v44[1];
  v28 = v45;
  sub_216681B04(a2 + *(v22 + 24), &v51, &qword_27CABB618, &qword_217023EC8);
  v48[0] = v21 & 1;
  v49[9] = v26;
  v49[10] = v27;
  v50 = v28;
  v29 = sub_216AEE3C0(0, *(v19 + 16));
  if ((v30 & 1) != 0 || v17 != v29)
  {
    v35 = v40;
    sub_21700B124();
    v36 = v35;
    v34 = v41;
    (*(v39 + 32))(v16, v36, v41);
    v31 = 0;
    v33 = v42;
    v32 = v43;
  }

  else
  {
    v31 = 1;
    v33 = v42;
    v32 = v43;
    v34 = v41;
  }

  __swift_storeEnumTagSinglePayload(v16, v31, 1, v34);
  sub_2168B8DC0(v48, v44);
  sub_216681B04(v16, v33, &qword_27CABB6B0, &qword_217023FC0);
  sub_2168B8DC0(v44, v32);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB6B8, &qword_217023FC8);
  sub_216681B04(v33, v32 + *(v37 + 48), &qword_27CABB6B0, &qword_217023FC0);
  sub_216697664(v16, &qword_27CABB6B0, &qword_217023FC0);
  sub_2168B999C(v48);
  sub_2167ADC98(v52);
  sub_216697664(v33, &qword_27CABB6B0, &qword_217023FC0);
  return sub_2168B999C(v44);
}

uint64_t sub_2168B7F20(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for PopoverAccessoryButton(0) + 28));
  if (v2 == *v4 && v3 == v4[1])
  {
    return 1;
  }

  else
  {
    return sub_21700F7D4() & 1;
  }
}

void *sub_2168B7F94@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = sub_2170096A4();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB5F8, &qword_217023E40);
  MEMORY[0x28223BE20](v6);
  v8 = (&v26 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB600, &unk_217023E48);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - v11;
  sub_216681B04(v2 + 40, v8, &qword_27CAB6DB0, &qword_217016C00);
  v13 = v6[11];
  v14 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v8 + v13, 1, 1, v14);
  sub_2168B8DC0(v2, v30);
  v15 = swift_allocObject();
  memcpy((v15 + 16), v30, 0xC0uLL);
  sub_2168B8DC0(v2, v29);
  v16 = swift_allocObject();
  memcpy((v16 + 16), v29, 0xC0uLL);
  v17 = v6[12];
  *(v8 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v18 = v8 + v6[13];
  *v18 = swift_getKeyPath();
  v18[40] = 0;
  v8[5] = sub_2168B8DF8;
  v8[6] = v15;
  v8[7] = sub_2168B8E9C;
  v8[8] = v16;
  sub_217009694();
  sub_2166D9530(&qword_27CABB608, &qword_27CABB5F8, &qword_217023E40, &unk_21702C8E0);
  sub_2168B8F8C(&qword_280E2A8F8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v19 = v27;
  sub_21700A364();
  (*(v26 + 8))(v5, v19);
  sub_216697664(v8, &qword_27CABB5F8, &qword_217023E40);
  v20 = sub_21700AD14();
  KeyPath = swift_getKeyPath();
  v22 = &v12[*(v10 + 44)];
  *v22 = KeyPath;
  v22[1] = v20;
  sub_21700B3B4();
  sub_217008BB4();
  v23 = v28;
  sub_21670A3BC(v12, v28);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB610, &qword_217023EC0);
  return memcpy((v23 + *(v24 + 36)), v30, 0x70uLL);
}

void sub_2168B8388(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2170091A4();
  sub_2168B8484(a1, v19);
  *&v18[7] = v19[0];
  *&v18[23] = v19[1];
  *&v18[39] = v20[0];
  *&v18[48] = *(v20 + 9);
  LOBYTE(a1) = sub_217009C94();
  sub_217007F24();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_217009C74();
  sub_217007F24();
  *(a2 + 17) = *v18;
  *(a2 + 33) = *&v18[16];
  *(a2 + 49) = *&v18[32];
  *a2 = v4;
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  *(a2 + 65) = *&v18[48];
  *(a2 + 88) = a1;
  *(a2 + 96) = v6;
  *(a2 + 104) = v8;
  *(a2 + 112) = v10;
  *(a2 + 120) = v12;
  *(a2 + 128) = 0;
  *(a2 + 136) = v13;
  *(a2 + 144) = v14;
  *(a2 + 152) = v15;
  *(a2 + 160) = v16;
  *(a2 + 168) = v17;
  *(a2 + 176) = 0;
}

uint64_t sub_2168B8484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21700ADB4();
  v5 = 0.0;
  if (*a1)
  {
    v5 = 1.0;
  }

  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  v8 = MEMORY[0x277D84F90];
  *(a2 + 32) = 0;
  *(a2 + 40) = v8;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  sub_21700DF14();

  sub_2167770D0(v7, v6, 0, v8);
  sub_2167C4DF0(v7, v6, 0, v8);
}

uint64_t sub_2168B856C(uint64_t a1)
{
  sub_216681B04(a1 + 104, &v8, &qword_27CABB618, &qword_217023EC8);
  if (v9)
  {
    sub_2167ADC3C(a1 + 8, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB620, &qword_217023ED0);
    sub_21700B0D4();
    v2 = &qword_27CABB620;
    v3 = &qword_217023ED0;
  }

  else
  {
    v2 = &qword_27CABB618;
    v3 = &qword_217023EC8;
  }

  sub_216697664(&v8, v2, v3);
  v4 = *(a1 + 88);
  v5 = *(a1 + 96);
  v8 = *(a1 + 80);
  v9 = v4;
  v10 = v5;
  v7[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20, &unk_2170187A0);
  return sub_21700B0D4();
}

uint64_t sub_2168B8678()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB5B8, &qword_217023DD8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13[-v3];
  sub_2168B8C54(v0, __src);
  v5 = swift_allocObject();
  memcpy((v5 + 16), __src, 0x59uLL);
  v14 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB5C0, &qword_217023DE0);
  sub_2168B8C94();
  sub_21700AF14();
  v6 = *(v0 + 24);
  __src[0] = *(v0 + 16);
  __src[1] = v6;
  sub_2167B2E14();
  sub_21700DF14();
  v7 = sub_21700A174();
  v9 = v8;
  v11 = v10;
  sub_2166D9530(&qword_27CABB5E0, &qword_27CABB5B8, &qword_217023DD8, MEMORY[0x277CDF028]);
  sub_21700A6A4();
  sub_21678817C(v7, v9, v11 & 1);

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_2168B8898(uint64_t a1)
{
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB5D8, &unk_217023DE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7BD8, &unk_217018240);
  sub_2166D9530(&qword_27CABB5D0, &qword_27CABB5D8, &unk_217023DE8, MEMORY[0x277CE1138]);
  sub_2167D2750();
  return sub_21700B324();
}

void *sub_2168B89A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2170091A4();
  v10 = 1;
  sub_2168B8A7C(a1, __src);
  memcpy(__dst, __src, 0x81uLL);
  memcpy(v12, __src, 0x81uLL);
  sub_216681B04(__dst, &v7, &qword_27CABB5E8, &qword_217023E28);
  sub_216697664(v12, &qword_27CABB5E8, &qword_217023E28);
  memcpy(&v9[7], __dst, 0x81uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x88uLL);
}

uint64_t sub_2168B8A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  sub_21700DF14();
  v5 = sub_217009CB4();
  sub_217007F24();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_21700ADB4();
  v15 = sub_217009CD4();
  sub_217007F24();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  __src[0] = v4;
  __src[1] = v3;
  v24 = MEMORY[0x277D84F90];
  __src[2] = 0;
  __src[3] = MEMORY[0x277D84F90];
  LOBYTE(__src[4]) = v5;
  __src[5] = v7;
  __src[6] = v9;
  __src[7] = v11;
  __src[8] = v13;
  LOBYTE(__src[9]) = 0;
  memcpy(__dst, __src, 0x49uLL);
  memcpy(a2, __dst, 0x50uLL);
  *(a2 + 80) = v14;
  *(a2 + 88) = v15;
  *(a2 + 96) = v17;
  *(a2 + 104) = v19;
  *(a2 + 112) = v21;
  *(a2 + 120) = v23;
  *(a2 + 128) = 0;
  sub_216681B04(__src, v28, &qword_27CABB5F0, &unk_217023E30);
  v28[0] = v4;
  v28[1] = v3;
  v28[2] = 0;
  v28[3] = v24;
  v29 = v5;
  v30 = v7;
  v31 = v9;
  v32 = v11;
  v33 = v13;
  v34 = 0;
  return sub_216697664(v28, &qword_27CABB5F0, &unk_217023E30);
}

uint64_t sub_2168B8BF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  sub_21700DF14();
  v5 = sub_21700AC54();
  result = swift_getKeyPath();
  *a2 = v4;
  a2[1] = v3;
  v7 = MEMORY[0x277D84F90];
  a2[2] = 0;
  a2[3] = v7;
  a2[4] = result;
  a2[5] = v5;
  return result;
}

unint64_t sub_2168B8C94()
{
  result = qword_27CABB5C8;
  if (!qword_27CABB5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB5C0, &qword_217023DE0);
    sub_2166D9530(&qword_27CABB5D0, &qword_27CABB5D8, &unk_217023DE8, MEMORY[0x277CE1138]);
    sub_2167D2750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB5C8);
  }

  return result;
}

uint64_t sub_2168B8D68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_217008E74();
  *a1 = result;
  return result;
}

uint64_t objectdestroy_7Tm()
{

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[16])
  {

    if (v0[18])
    {

      if (v0[24])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 21);
      }
    }
  }

  return swift_deallocObject();
}

unint64_t sub_2168B8EA4()
{
  result = qword_27CABB628;
  if (!qword_27CABB628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB630, &qword_217023ED8);
    sub_2166D9530(&qword_27CABB5E0, &qword_27CABB5B8, &qword_217023DD8, MEMORY[0x277CDF028]);
    sub_2168B8F8C(&qword_280E2A6F0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB628);
  }

  return result;
}

uint64_t sub_2168B8F8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2168B8FD4()
{
  result = qword_27CABB638;
  if (!qword_27CABB638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB610, &qword_217023EC0);
    sub_2168B9060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB638);
  }

  return result;
}

unint64_t sub_2168B9060()
{
  result = qword_27CABB640;
  if (!qword_27CABB640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB600, &unk_217023E48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB5F8, &qword_217023E40);
    sub_2170096A4();
    sub_2166D9530(&qword_27CABB608, &qword_27CABB5F8, &qword_217023E40, &unk_21702C8E0);
    sub_2168B8F8C(&qword_280E2A8F8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_280E2A718, &qword_27CAB7BE0, &unk_217018250, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB640);
  }

  return result;
}

uint64_t type metadata accessor for PopoverSelectorToolbarContentView(uint64_t a1)
{
  result = qword_280E2F148;
  if (!qword_280E2F148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2168B9224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PopoverSelectorToolbarContentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2168B9288(uint64_t a1)
{
  v2 = type metadata accessor for PopoverSelectorToolbarContentView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2168B930C(uint64_t a1)
{
  type metadata accessor for PopoverAccessoryButton(319);
  if (v1 <= 0x3F)
  {
    sub_216854FAC();
    if (v2 <= 0x3F)
    {
      sub_2168B93A8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2168B93A8(uint64_t a1)
{
  if (!qword_27CABB650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB620, &qword_217023ED0);
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, &qword_27CABB650);
    }
  }
}

uint64_t sub_2168B9428(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2168B9488()
{
  v1 = *(type metadata accessor for PopoverSelectorToolbarContentView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_2168B7718(v0 + v2, v3);
}

unint64_t sub_2168B955C()
{
  result = qword_27CABB668;
  if (!qword_27CABB668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB660, &qword_217023F78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB670, &qword_217023F80);
    sub_2166D9530(&qword_27CABB678, &qword_27CABB670, &qword_217023F80, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB668);
  }

  return result;
}

uint64_t objectdestroy_28Tm()
{
  v1 = type metadata accessor for PopoverSelectorToolbarContentView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64) + v2 + 7;
  v4 = v0 + v2;
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v2));
  v5 = *(type metadata accessor for PopoverAccessoryButton(0) + 20);
  v6 = sub_21700D7A4();
  if (!__swift_getEnumTagSinglePayload(v4 + v5, 1, v6))
  {
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  v7 = v3 & 0xFFFFFFFFFFFFFFF8;

  v8 = (v4 + *(v1 + 24));
  if (v8[1])
  {

    if (v8[3])
    {

      if (v8[9])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v8 + 6);
      }
    }
  }

  if (*(v0 + v7 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + v7 + 32));
  }

  return swift_deallocObject();
}

uint64_t sub_2168B9810@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PopoverSelectorToolbarContentView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2168B7BC8(a1, v2 + v6, v7, a2);
}

unint64_t sub_2168B98BC()
{
  result = qword_27CABB698;
  if (!qword_27CABB698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB688, &qword_217023FB0);
    sub_2168B9948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB698);
  }

  return result;
}

unint64_t sub_2168B9948()
{
  result = qword_27CABB6A0;
  if (!qword_27CABB6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB6A0);
  }

  return result;
}

unint64_t sub_2168B99EC()
{
  result = qword_27CABB6C0;
  if (!qword_27CABB6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABB6C8, qword_217023FD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6318, &qword_217023F70);
    sub_216776E60();
    sub_2166D9530(&qword_27CAB6328, &qword_27CAB6318, &qword_217023F70, MEMORY[0x277CDD6E0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABB6C0);
  }

  return result;
}

void sub_2168B9B04(uint64_t a1)
{
  sub_21668A338(319, &qword_27CABB768, &qword_27CABB770, &unk_217024010);
  if (v1 <= 0x3F)
  {
    sub_21668A338(319, &qword_27CABB778, &qword_27CABA4B0, &unk_217020690);
    if (v2 <= 0x3F)
    {
      sub_21668A338(319, &qword_280E2A1C0, &qword_27CAB8EF0, qword_217024020);
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

char *sub_2168B9CD0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_1();
  v9 = *(v8 + 288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB770, &unk_217024010);
  OUTLINED_FUNCTION_13_1(v4 + v9);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_13_1(v4 + *(v10 + 296));
  OUTLINED_FUNCTION_0_1();
  v12 = *(v11 + 304);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4B0, &unk_217020690);
  __swift_storeEnumTagSinglePayload(v4 + v12, 1, 1, v13);
  OUTLINED_FUNCTION_0_1();
  v15 = *(v14 + 312);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0, qword_217024020);
  OUTLINED_FUNCTION_13_1(v4 + v15);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_13_1(v4 + *(v16 + 320));
  type metadata accessor for UserSocialProfileCoordinator(0);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  OUTLINED_FUNCTION_0_1();
  *(v4 + *(v17 + 272)) = v18;
  type metadata accessor for SocialGraphController(0);
  sub_21700E094();

  OUTLINED_FUNCTION_0_1();
  *(v4 + *(v19 + 280)) = v20;
  return sub_216B12724(a1, a2, a3 & 1);
}

uint64_t sub_2168B9E78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8, &qword_217024050);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v71 = &v65 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB780, &qword_217024058);
  OUTLINED_FUNCTION_36(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v70 = &v65 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB788, &unk_217024060);
  OUTLINED_FUNCTION_36(v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v15 = v3[2];
  v16 = v3[3];
  v3[2] = a1;
  v3[3] = a2;

  sub_21667E91C(v15, v16);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_143();
  v17 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_65_0();
  v18 = swift_allocObject();
  v66 = *(v6 + 264);
  *(v18 + 16) = v66;
  *(v18 + 24) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB790, &qword_217024070);
  v19 = MEMORY[0x277D21A98];
  v68 = MEMORY[0x277D21A98];
  v20 = sub_2166D9530(&qword_280E2A2F8, &qword_27CABB790, &qword_217024070, MEMORY[0x277D21A98]);

  v67 = v20;
  sub_21700D1D4();
  OUTLINED_FUNCTION_4_29();
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(v72);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB770, &unk_217024010);
  v21 = OUTLINED_FUNCTION_3_45();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  OUTLINED_FUNCTION_0_5();
  v26 = *(v25 + 288);
  OUTLINED_FUNCTION_0_59();
  v27 = OUTLINED_FUNCTION_18_16();
  sub_2168BB274(v27, v28, &qword_27CABB788, &unk_217024060);
  swift_endAccess();
  OUTLINED_FUNCTION_143();
  v29 = swift_allocObject();
  OUTLINED_FUNCTION_11_4(v29);
  OUTLINED_FUNCTION_65_0();
  v30 = swift_allocObject();
  v31 = v66;
  *(v30 + 16) = v66;
  *(v30 + 24) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4D0, &qword_21703C4F0);
  sub_2166D9530(&unk_280E2A2E0, &qword_27CABA4D0, &qword_21703C4F0, v19);

  sub_21700D1D4();
  v32 = v70;
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(v72);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4B0, &unk_217020690);
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v33);
  OUTLINED_FUNCTION_0_5();
  v35 = *(v34 + 304);
  OUTLINED_FUNCTION_0_59();
  sub_2168BB274(v32, v3 + v35, &qword_27CABB780, &qword_217024058);
  swift_endAccess();
  OUTLINED_FUNCTION_0_5();
  v70 = *(v3 + *(v36 + 272));
  OUTLINED_FUNCTION_143();
  v37 = swift_allocObject();
  OUTLINED_FUNCTION_11_4(v37);
  OUTLINED_FUNCTION_65_0();
  v38 = swift_allocObject();
  *(v38 + 16) = v31;
  *(v38 + 24) = v35;

  sub_21700D1D4();
  OUTLINED_FUNCTION_4_29();
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(v72);
  v39 = OUTLINED_FUNCTION_3_45();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v69);
  OUTLINED_FUNCTION_0_5();
  v43 = *(v42 + 296);
  OUTLINED_FUNCTION_0_59();
  v44 = OUTLINED_FUNCTION_18_16();
  sub_2168BB274(v44, v45, &qword_27CABB788, &unk_217024060);
  swift_endAccess();
  OUTLINED_FUNCTION_143();
  v46 = swift_allocObject();
  OUTLINED_FUNCTION_11_4(v46);
  OUTLINED_FUNCTION_65_0();
  v47 = swift_allocObject();
  *(v47 + 16) = v31;
  *(v47 + 24) = v43;
  v48 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8F00, &qword_21701BD60);
  sub_2166D9530(&qword_280E2A2C8, &qword_27CAB8F00, &qword_21701BD60, v68);

  OUTLINED_FUNCTION_21_20();
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(v72);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0, qword_217024020);
  v50 = OUTLINED_FUNCTION_3_45();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v49);
  OUTLINED_FUNCTION_0_5();
  v54 = *(v53 + 312);
  OUTLINED_FUNCTION_0_59();
  v55 = OUTLINED_FUNCTION_18_16();
  sub_2168BB274(v55, v56, &qword_27CAB8EF8, &qword_217024050);
  swift_endAccess();
  OUTLINED_FUNCTION_143();
  v57 = swift_allocObject();
  OUTLINED_FUNCTION_11_4(v57);
  OUTLINED_FUNCTION_65_0();
  v58 = swift_allocObject();
  *(v58 + 16) = v48;
  *(v58 + 24) = v54;

  OUTLINED_FUNCTION_21_20();
  OUTLINED_FUNCTION_4_29();
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(v72);
  v59 = OUTLINED_FUNCTION_3_45();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v49);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_0_59();
  v62 = OUTLINED_FUNCTION_18_16();
  sub_2168BB274(v62, v63, &qword_27CAB8EF8, &qword_217024050);
  return swift_endAccess();
}

uint64_t sub_2168BA558(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17_2(a2 + 16, v3);
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_216B12888(result);
  }

  return result;
}

void sub_2168BA5A8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF8, &qword_217024050);
  v3 = OUTLINED_FUNCTION_36(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_77();
  v85 = (v4 - v5);
  MEMORY[0x28223BE20](v6);
  v88 = &v84 - v7;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8EF0, qword_217024020);
  OUTLINED_FUNCTION_1();
  v87 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_77();
  v84 = (v10 - v11);
  MEMORY[0x28223BE20](v12);
  v86 = &v84 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB780, &qword_217024058);
  OUTLINED_FUNCTION_36(v14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v17 = &v84 - v16;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4B0, &unk_217020690);
  OUTLINED_FUNCTION_1();
  v90 = v18;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  v91 = &v84 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB788, &unk_217024060);
  v22 = OUTLINED_FUNCTION_36(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v84 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB770, &unk_217024010);
  OUTLINED_FUNCTION_1();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_77();
  v93 = (v33 - v34);
  MEMORY[0x28223BE20](v35);
  v37 = &v84 - v36;
  OUTLINED_FUNCTION_7_0();
  v39 = *(v38 + 288);
  OUTLINED_FUNCTION_17_2(v1 + v39, v100);
  sub_2166A6E54(v1 + v39, v28, &qword_27CABB788, &unk_217024060);
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    v40 = &qword_27CABB788;
    v41 = &unk_217024060;
    v42 = v28;
  }

  else
  {
    v43 = *(v31 + 32);
    v43(v37, v28, v29);
    OUTLINED_FUNCTION_7_0();
    v45 = *(v44 + 296);
    OUTLINED_FUNCTION_17_2(v1 + v45, v97);
    sub_2166A6E54(v1 + v45, v25, &qword_27CABB788, &unk_217024060);
    if (__swift_getEnumTagSinglePayload(v25, 1, v29) == 1)
    {
      v46 = OUTLINED_FUNCTION_19();
      v47(v46);
      v40 = &qword_27CABB788;
      v41 = &unk_217024060;
      v42 = v25;
    }

    else
    {
      v48 = v93;
      v43(v93, v25, v29);
      OUTLINED_FUNCTION_7_0();
      v50 = *(v49 + 304);
      OUTLINED_FUNCTION_17_2(v1 + v50, v96);
      sub_2166A6E54(v1 + v50, v17, &qword_27CABB780, &qword_217024058);
      v51 = v92;
      if (__swift_getEnumTagSinglePayload(v17, 1, v92) == 1)
      {
        v52 = *(v31 + 8);
        v52(v48, v29);
        v53 = OUTLINED_FUNCTION_19();
        (v52)(v53);
        v40 = &qword_27CABB780;
        v41 = &qword_217024058;
      }

      else
      {
        v54 = v90;
        v55 = v91;
        (*(v90 + 32))(v91, v17, v51);
        OUTLINED_FUNCTION_7_0();
        v57 = *(v56 + 312);
        OUTLINED_FUNCTION_17_2(v1 + v57, v95);
        v17 = v88;
        sub_2166A6E54(v1 + v57, v88, &qword_27CAB8EF8, &qword_217024050);
        v58 = v89;
        if (__swift_getEnumTagSinglePayload(v17, 1, v89) == 1)
        {
          (*(v54 + 8))(v55, v51);
        }

        else
        {
          v59 = v87;
          v60 = *(v87 + 32);
          v61 = v86;
          v60(v86, v17, v58);
          OUTLINED_FUNCTION_7_0();
          v63 = *(v62 + 320);
          OUTLINED_FUNCTION_17_2(v1 + v63, v94);
          v64 = v1 + v63;
          v17 = v85;
          sub_2166A6E54(v64, v85, &qword_27CAB8EF8, &qword_217024050);
          if (__swift_getEnumTagSinglePayload(v17, 1, v58) != 1)
          {
            v78 = v17;
            v79 = v84;
            v60(v84, v78, v58);
            OUTLINED_FUNCTION_7_0();

            sub_21700CC24();

            sub_21700CC24();

            OUTLINED_FUNCTION_7_0();

            v80 = v93;
            sub_21700CC24();

            sub_21700CC24();

            sub_21700CC24();

            v81 = *(v59 + 8);
            v81(v79, v58);
            v81(v61, v58);
            (*(v90 + 8))(v91, v92);
            v82 = *(v31 + 8);
            v82(v80, v29);
            v83 = OUTLINED_FUNCTION_19();
            (v82)(v83);
            return;
          }

          (*(v59 + 8))(v61, v58);
          (*(v90 + 8))(v91, v92);
        }

        v65 = *(v31 + 8);
        v65(v93, v29);
        v66 = OUTLINED_FUNCTION_19();
        (v65)(v66);
        v40 = &qword_27CAB8EF8;
        v41 = &qword_217024050;
      }

      v42 = v17;
    }
  }

  sub_216697664(v42, v40, v41);
  if (qword_27CAB5990 != -1)
  {
    swift_once();
  }

  v67 = sub_217007CA4();
  __swift_project_value_buffer(v67, qword_27CABB6D0);
  v68 = sub_217007C84();
  v69 = sub_21700ED84();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v99 = v71;
    *v70 = 136446466;
    *(v70 + 4) = sub_2166A85FC(0x2928706F7473, 0xE600000000000000, &v99);
    *(v70 + 12) = 2082;
    v72 = [objc_opt_self() callStackSymbols];
    v73 = sub_21700E824();

    v98 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
    sub_2166D9530(&qword_280E29E38, &qword_27CAB74F8, &unk_217017160, MEMORY[0x277D83958]);
    v74 = sub_21700E454();
    v76 = v75;

    v77 = sub_2166A85FC(v74, v76, &v99);

    *(v70 + 14) = v77;
    _os_log_impl(&dword_216679000, v68, v69, "Unbalanced call to %{public}s\nStack:\n%{public}s", v70, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v71, -1, -1);
    MEMORY[0x21CEA1440](v70, -1, -1);
  }
}

uint64_t sub_2168BAF58()
{
  OUTLINED_FUNCTION_0_1();

  OUTLINED_FUNCTION_0_1();

  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10_21(*(v2 + 288));
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10_21(*(v3 + 296));
  OUTLINED_FUNCTION_0_1();
  sub_216697664(v0 + *(v4 + 304), &qword_27CABB780, &qword_217024058);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10_21(*(v5 + 312));
  OUTLINED_FUNCTION_0_1();
  return OUTLINED_FUNCTION_10_21(*(v6 + 320));
}

char *sub_2168BB044()
{
  v0 = sub_216B127F4();

  OUTLINED_FUNCTION_0_5();

  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_14_19(*(v1 + 288));
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_14_19(*(v2 + 296));
  OUTLINED_FUNCTION_0_5();
  sub_216697664(&v0[*(v3 + 304)], &qword_27CABB780, &qword_217024058);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_14_19(*(v4 + 312));
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_14_19(*(v5 + 320));
  return v0;
}

uint64_t sub_2168BB140()
{
  v0 = sub_2168BB044();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2168BB1AC()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABB6D0);
  __swift_project_value_buffer(v0, qword_27CABB6D0);
  sub_21700E5B4();
  return sub_217007C94();
}

uint64_t sub_2168BB274(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_20(a1, a2, a3, a4);
  OUTLINED_FUNCTION_34();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t sub_2168BB2C8()
{
  OUTLINED_FUNCTION_92();
  sub_21700F954();
  v1 = OUTLINED_FUNCTION_139_2();
  sub_216CCA25C(v1, v2, v3);
  v5 = v4;

  if (sub_2166BF3C8(v5))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_21700F934();
  }

  else
  {

    if (qword_280E2C110 != -1)
    {
      OUTLINED_FUNCTION_97_5(&qword_280E2C110);
    }

    v6 = sub_217007CA4();
    __swift_project_value_buffer(v6, qword_280E2C118);
    v7 = sub_217007C84();
    v8 = sub_21700ED84();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      __dst[0] = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_2166A85FC(0x636F4C6B63617254, 0xEB0000000070756BLL, __dst);
      OUTLINED_FUNCTION_144_1(&dword_216679000, v11, v12, "Dropped %{public}s item collection, no items.");
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    v5 = 0;
  }

  sub_217006A94();
  OUTLINED_FUNCTION_34();
  (*(v13 + 8))(v0);
  return v5;
}

uint64_t sub_2168BB4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21700F954();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = __src;
  sub_216CCA694(sub_2168CB5E8, v17, a1);
  v9 = v8;

  if (sub_2166BF3C8(v9))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_21700F934();
  }

  else
  {

    if (qword_280E2C110 != -1)
    {
      swift_once();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_280E2C118);
    v11 = sub_217007C84();
    v12 = sub_21700ED84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      __dst[0] = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_2166A85FC(0x6F4C656C62627542, 0xEC00000070756B63, __dst);
      _os_log_impl(&dword_216679000, v11, v12, "Dropped %{public}s item collection, no items.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }

    v9 = 0;
  }

  v15 = sub_217006A94();
  (*(*(v15 - 8) + 8))(a2, v15);
  return v9;
}

uint64_t sub_2168BB6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21700F954();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = __src;
  sub_216CCA668(sub_2168CB604, v17, a1);
  v9 = v8;

  if (sub_2166BF3C8(v9))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_21700F934();
  }

  else
  {

    if (qword_280E2C110 != -1)
    {
      swift_once();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_280E2C118);
    v11 = sub_217007C84();
    v12 = sub_21700ED84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      __dst[0] = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_2166A85FC(0x65736163776F6C46, 0xEE0070756B636F4CLL, __dst);
      _os_log_impl(&dword_216679000, v11, v12, "Dropped %{public}s item collection, no items.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }

    v9 = 0;
  }

  v15 = sub_217006A94();
  (*(*(v15 - 8) + 8))(a2, v15);
  return v9;
}

uint64_t sub_2168BB938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21700F954();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = __src;
  sub_216CCA63C(sub_2168CB620, v17, a1);
  v9 = v8;

  if (sub_2166BF3C8(v9))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_21700F934();
  }

  else
  {

    if (qword_280E2C110 != -1)
    {
      swift_once();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_280E2C118);
    v11 = sub_217007C84();
    v12 = sub_21700ED84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      __dst[0] = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_2166A85FC(0xD000000000000010, 0x8000000217083BB0, __dst);
      _os_log_impl(&dword_216679000, v11, v12, "Dropped %{public}s item collection, no items.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }

    v9 = 0;
  }

  v15 = sub_217006A94();
  (*(*(v15 - 8) + 8))(a2, v15);
  return v9;
}

uint64_t sub_2168BBB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21700F954();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = __src;
  sub_216CCA610(sub_2168CB63C, v17, a1);
  v9 = v8;

  if (sub_2166BF3C8(v9))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_21700F934();
  }

  else
  {

    if (qword_280E2C110 != -1)
    {
      swift_once();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_280E2C118);
    v11 = sub_217007C84();
    v12 = sub_21700ED84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      __dst[0] = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_2166A85FC(0xD000000000000016, 0x8000000217083BD0, __dst);
      _os_log_impl(&dword_216679000, v11, v12, "Dropped %{public}s item collection, no items.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }

    v9 = 0;
  }

  v15 = sub_217006A94();
  (*(*(v15 - 8) + 8))(a2, v15);
  return v9;
}

uint64_t sub_2168BBDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21700F954();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = __src;
  sub_216CCA5E4(sub_2168CB658, v17, a1);
  v9 = v8;

  if (sub_2166BF3C8(v9))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_21700F934();
  }

  else
  {

    if (qword_280E2C110 != -1)
    {
      swift_once();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_280E2C118);
    v11 = sub_217007C84();
    v12 = sub_21700ED84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      __dst[0] = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_2166A85FC(0xD000000000000013, 0x8000000217083BF0, __dst);
      _os_log_impl(&dword_216679000, v11, v12, "Dropped %{public}s item collection, no items.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }

    v9 = 0;
  }

  v15 = sub_217006A94();
  (*(*(v15 - 8) + 8))(a2, v15);
  return v9;
}

uint64_t sub_2168BBFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21700F954();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = __src;
  sub_216CCA58C(sub_2168CB758, v17, a1);
  v9 = v8;

  if (sub_2166BF3C8(v9))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_21700F934();
  }

  else
  {

    if (qword_280E2C110 != -1)
    {
      swift_once();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_280E2C118);
    v11 = sub_217007C84();
    v12 = sub_21700ED84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      __dst[0] = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_2166A85FC(0x6F4C726574736F50, 0xEC00000070756B63, __dst);
      _os_log_impl(&dword_216679000, v11, v12, "Dropped %{public}s item collection, no items.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }

    v9 = 0;
  }

  v15 = sub_217006A94();
  (*(*(v15 - 8) + 8))(a2, v15);
  return v9;
}

uint64_t sub_2168BC21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21700F954();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = __src;
  sub_216CCA560(sub_2168CB774, v17, a1);
  v9 = v8;

  if (sub_2166BF3C8(v9))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_21700F934();
  }

  else
  {

    if (qword_280E2C110 != -1)
    {
      swift_once();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_280E2C118);
    v11 = sub_217007C84();
    v12 = sub_21700ED84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      __dst[0] = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_2166A85FC(0xD000000000000012, 0x8000000217083C30, __dst);
      _os_log_impl(&dword_216679000, v11, v12, "Dropped %{public}s item collection, no items.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }

    v9 = 0;
  }

  v15 = sub_217006A94();
  (*(*(v15 - 8) + 8))(a2, v15);
  return v9;
}

uint64_t sub_2168BC454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21700F954();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = __src;
  sub_216CCA534(sub_2168CBA08, v17, a1);
  v9 = v8;

  if (sub_2166BF3C8(v9))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_21700F934();
  }

  else
  {

    if (qword_280E2C110 != -1)
    {
      swift_once();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_280E2C118);
    v11 = sub_217007C84();
    v12 = sub_21700ED84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      __dst[0] = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_2166A85FC(0x6372616553706F54, 0xEF70756B636F4C68, __dst);
      _os_log_impl(&dword_216679000, v11, v12, "Dropped %{public}s item collection, no items.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }

    v9 = 0;
  }

  v15 = sub_217006A94();
  (*(*(v15 - 8) + 8))(a2, v15);
  return v9;
}

uint64_t sub_2168BC694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21700F954();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = __src;
  sub_216CCA508(sub_2168CB790, v17, a1);
  v9 = v8;

  if (sub_2166BF3C8(v9))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_21700F934();
  }

  else
  {

    if (qword_280E2C110 != -1)
    {
      swift_once();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_280E2C118);
    v11 = sub_217007C84();
    v12 = sub_21700ED84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      __dst[0] = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_2166A85FC(0x70756B636F4CLL, 0xE600000000000000, __dst);
      _os_log_impl(&dword_216679000, v11, v12, "Dropped %{public}s item collection, no items.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }

    v9 = 0;
  }

  v15 = sub_217006A94();
  (*(*(v15 - 8) + 8))(a2, v15);
  return v9;
}

uint64_t sub_2168BC8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21700F954();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = __src;
  sub_216CCA4DC(sub_2168CB7AC, v17, a1);
  v9 = v8;

  if (sub_2166BF3C8(v9))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_21700F934();
  }

  else
  {

    if (qword_280E2C110 != -1)
    {
      swift_once();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_280E2C118);
    v11 = sub_217007C84();
    v12 = sub_21700ED84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      __dst[0] = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_2166A85FC(0xD000000000000024, 0x8000000217083C50, __dst);
      _os_log_impl(&dword_216679000, v11, v12, "Dropped %{public}s item collection, no items.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }

    v9 = 0;
  }

  v15 = sub_217006A94();
  (*(*(v15 - 8) + 8))(a2, v15);
  return v9;
}

uint64_t sub_2168BCAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21700F954();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = __src;
  sub_216CCA4B0(sub_2168CB7C8, v17, a1);
  v9 = v8;

  if (sub_2166BF3C8(v9))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_21700F934();
  }

  else
  {

    if (qword_280E2C110 != -1)
    {
      swift_once();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_280E2C118);
    v11 = sub_217007C84();
    v12 = sub_21700ED84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      __dst[0] = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_2166A85FC(0xD00000000000001DLL, 0x8000000217083C80, __dst);
      _os_log_impl(&dword_216679000, v11, v12, "Dropped %{public}s item collection, no items.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }

    v9 = 0;
  }

  v15 = sub_217006A94();
  (*(*(v15 - 8) + 8))(a2, v15);
  return v9;
}

uint64_t sub_2168BCD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21700F954();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = __src;
  sub_216CCA458(sub_2168CB9EC, v17, a1);
  v9 = v8;

  if (sub_2166BF3C8(v9))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_21700F934();
  }

  else
  {

    if (qword_280E2C110 != -1)
    {
      swift_once();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_280E2C118);
    v11 = sub_217007C84();
    v12 = sub_21700ED84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      __dst[0] = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_2166A85FC(0x6F4C657261757153, 0xEC00000070756B63, __dst);
      _os_log_impl(&dword_216679000, v11, v12, "Dropped %{public}s item collection, no items.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }

    v9 = 0;
  }

  v15 = sub_217006A94();
  (*(*(v15 - 8) + 8))(a2, v15);
  return v9;
}

uint64_t sub_2168BCF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21700F954();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = __src;
  sub_216CCA42C(sub_2168CBA40, v17, a1);
  v9 = v8;

  if (sub_2166BF3C8(v9))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_21700F934();
  }

  else
  {

    if (qword_280E2C110 != -1)
    {
      swift_once();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_280E2C118);
    v11 = sub_217007C84();
    v12 = sub_21700ED84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      __dst[0] = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_2166A85FC(0xD000000000000013, 0x8000000217083CC0, __dst);
      _os_log_impl(&dword_216679000, v11, v12, "Dropped %{public}s item collection, no items.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }

    v9 = 0;
  }

  v15 = sub_217006A94();
  (*(*(v15 - 8) + 8))(a2, v15);
  return v9;
}

uint64_t sub_2168BD1A8()
{
  OUTLINED_FUNCTION_92();
  sub_21700F954();
  v1 = OUTLINED_FUNCTION_139_2();
  sub_216CCA6EC(v1, v2, v3);
  v5 = v4;

  if (sub_2166BF3C8(v5))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_21700F934();
  }

  else
  {

    if (qword_280E2C110 != -1)
    {
      OUTLINED_FUNCTION_97_5(&qword_280E2C110);
    }

    v6 = sub_217007CA4();
    __swift_project_value_buffer(v6, qword_280E2C118);
    v7 = sub_217007C84();
    v8 = sub_21700ED84();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      __dst[0] = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_2166A85FC(0x6B636F4C7473694CLL, 0xEA00000000007075, __dst);
      OUTLINED_FUNCTION_144_1(&dword_216679000, v11, v12, "Dropped %{public}s item collection, no items.");
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    v5 = 0;
  }

  sub_217006A94();
  OUTLINED_FUNCTION_34();
  (*(v13 + 8))(v0);
  return v5;
}

uint64_t sub_2168BD398@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, uint64_t a6@<X0>)
{
  v65 = a4;
  v66 = a3;
  v69 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB4A0, &unk_217056DD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v60 - v10;
  v64 = sub_21700C1E4();
  v60 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v61 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v60 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v60 - v17;
  v19 = sub_217006924();
  v63 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v62 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7938, &unk_217017C10);
  MEMORY[0x28223BE20](v67);
  v22 = &v60 - v21;
  v68 = a1;
  sub_2168CBB08();
  v23 = type metadata accessor for ContentDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v15, 1, v23) == 1)
  {

    sub_216697664(v15, &qword_27CAB6A00, &unk_217016B60);
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
LABEL_5:
    v24 = a2;
    v25 = &unk_27CABF9C0;
    v26 = &qword_21701ADB0;
    v27 = v18;
LABEL_6:
    sub_216697664(v27, v25, v26);
    if (qword_280E2C110 != -1)
    {
      swift_once();
    }

    v28 = sub_217007CA4();
    __swift_project_value_buffer(v28, qword_280E2C118);
    v29 = sub_217007C84();
    v30 = sub_21700ED84();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      __dst[0] = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_2166A85FC(0xD000000000000010, 0x8000000217083B70, __dst);
      _os_log_impl(&dword_216679000, v29, v30, "Dropped %{public}s container item collection, no mapped container.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x21CEA1440](v32, -1, -1);
      MEMORY[0x21CEA1440](v31, -1, -1);
    }

    sub_216697664(v68, &qword_27CAB6A00, &unk_217016B60);
LABEL_11:
    v33 = sub_217006A94();
    (*(*(v33 - 8) + 8))(v24, v33);
    return __swift_storeEnumTagSinglePayload(v69, 1, 1, v67);
  }

  sub_216C6C5E8(v18);
  sub_2168CBAB0(v15, type metadata accessor for ContentDescriptor);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {

    goto LABEL_5;
  }

  v35 = v63;
  v36 = v62;
  (*(v63 + 32))();
  v24 = a2;
  sub_216CD2A80();
  v37 = v64;
  if (__swift_getEnumTagSinglePayload(v11, 1, v64) == 1)
  {
    (*(v35 + 8))(v36, v19);

    v25 = &qword_27CABB4A0;
    v26 = &unk_217056DD0;
    v27 = v11;
    goto LABEL_6;
  }

  v38 = v60;
  v39 = v61;
  (*(v60 + 32))(v61, v11, v37);
  v40 = sub_21700F954();
  MEMORY[0x28223BE20](v40);
  *(&v60 - 6) = v39;
  *(&v60 - 5) = v24;
  v41 = v65;
  *(&v60 - 4) = v66;
  *(&v60 - 3) = v41;
  *(&v60 - 2) = __src;
  sub_216CCA6C0(sub_2168CB4CC, (&v60 - 8), a6);
  v43 = v42;

  if (!sub_2166BF3C8(v43))
  {
    v50 = v64;

    if (qword_280E2C110 != -1)
    {
      swift_once();
    }

    v51 = sub_217007CA4();
    __swift_project_value_buffer(v51, qword_280E2C118);
    v52 = sub_217007C84();
    v53 = sub_21700ED84();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v61;
    if (v54)
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      __dst[0] = v57;
      *v56 = 136446210;
      *(v56 + 4) = sub_2166A85FC(0xD000000000000010, 0x8000000217083B70, __dst);
      _os_log_impl(&dword_216679000, v52, v53, "Dropped %{public}s container item collection, no items.", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      v58 = v57;
      v59 = v64;
      MEMORY[0x21CEA1440](v58, -1, -1);
      MEMORY[0x21CEA1440](v56, -1, -1);
    }

    else
    {
      v59 = v50;
    }

    sub_216697664(v68, &qword_27CAB6A00, &unk_217016B60);
    (*(v63 + 8))(v62, v19);
    (*(v60 + 8))(v55, v59);
    goto LABEL_11;
  }

  v44 = v61;
  v45 = v64;
  (*(v38 + 16))(v22, v61, v64);
  v46 = v67;
  *&v22[*(v67 + 52)] = v43;
  memcpy(__dst, __src, 0x48uLL);
  v47 = sub_21700F934();

  sub_216697664(v68, &qword_27CAB6A00, &unk_217016B60);
  (*(v63 + 8))(v62, v19);
  *&v22[*(v46 + 56)] = v47;
  (*(v38 + 8))(v44, v45);
  v48 = v69;
  sub_2168CBB5C();
  __swift_storeEnumTagSinglePayload(v48, 0, 1, v46);
  v49 = sub_217006A94();
  return (*(*(v49 - 8) + 8))(v24, v49);
}

uint64_t sub_2168BDCE0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, uint64_t a6@<X0>)
{
  v65 = a4;
  v66 = a3;
  v69 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B8, &unk_217017110);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v60 - v10;
  v64 = sub_21700C924();
  v60 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v61 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v60 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v60 - v17;
  v19 = sub_217006924();
  v63 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v62 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7940, &unk_21701C440);
  MEMORY[0x28223BE20](v67);
  v22 = &v60 - v21;
  v68 = a1;
  sub_2168CBB08();
  v23 = type metadata accessor for ContentDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v15, 1, v23) == 1)
  {

    sub_216697664(v15, &qword_27CAB6A00, &unk_217016B60);
    __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
LABEL_5:
    v24 = a2;
    v25 = &unk_27CABF9C0;
    v26 = &qword_21701ADB0;
    v27 = v18;
LABEL_6:
    sub_216697664(v27, v25, v26);
    if (qword_280E2C110 != -1)
    {
      swift_once();
    }

    v28 = sub_217007CA4();
    __swift_project_value_buffer(v28, qword_280E2C118);
    v29 = sub_217007C84();
    v30 = sub_21700ED84();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      __dst[0] = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_2166A85FC(0xD000000000000013, 0x8000000217083C10, __dst);
      _os_log_impl(&dword_216679000, v29, v30, "Dropped %{public}s container item collection, no mapped container.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x21CEA1440](v32, -1, -1);
      MEMORY[0x21CEA1440](v31, -1, -1);
    }

    sub_216697664(v68, &qword_27CAB6A00, &unk_217016B60);
LABEL_11:
    v33 = sub_217006A94();
    (*(*(v33 - 8) + 8))(v24, v33);
    return __swift_storeEnumTagSinglePayload(v69, 1, 1, v67);
  }

  sub_216C6C5E8(v18);
  sub_2168CBAB0(v15, type metadata accessor for ContentDescriptor);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {

    goto LABEL_5;
  }

  v35 = v63;
  v36 = v62;
  (*(v63 + 32))();
  v24 = a2;
  sub_216CD2A40();
  v37 = v64;
  if (__swift_getEnumTagSinglePayload(v11, 1, v64) == 1)
  {
    (*(v35 + 8))(v36, v19);

    v25 = &qword_27CAB74B8;
    v26 = &unk_217017110;
    v27 = v11;
    goto LABEL_6;
  }

  v38 = v60;
  v39 = v61;
  (*(v60 + 32))(v61, v11, v37);
  v40 = sub_21700F954();
  MEMORY[0x28223BE20](v40);
  *(&v60 - 6) = v39;
  *(&v60 - 5) = v24;
  v41 = v65;
  *(&v60 - 4) = v66;
  *(&v60 - 3) = v41;
  *(&v60 - 2) = __src;
  sub_216CCA5B8(sub_2168CB674, (&v60 - 8), a6);
  v43 = v42;

  if (!sub_2166BF3C8(v43))
  {
    v50 = v64;

    if (qword_280E2C110 != -1)
    {
      swift_once();
    }

    v51 = sub_217007CA4();
    __swift_project_value_buffer(v51, qword_280E2C118);
    v52 = sub_217007C84();
    v53 = sub_21700ED84();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v61;
    if (v54)
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      __dst[0] = v57;
      *v56 = 136446210;
      *(v56 + 4) = sub_2166A85FC(0xD000000000000013, 0x8000000217083C10, __dst);
      _os_log_impl(&dword_216679000, v52, v53, "Dropped %{public}s container item collection, no items.", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      v58 = v57;
      v59 = v64;
      MEMORY[0x21CEA1440](v58, -1, -1);
      MEMORY[0x21CEA1440](v56, -1, -1);
    }

    else
    {
      v59 = v50;
    }

    sub_216697664(v68, &qword_27CAB6A00, &unk_217016B60);
    (*(v63 + 8))(v62, v19);
    (*(v60 + 8))(v55, v59);
    goto LABEL_11;
  }

  v44 = v61;
  v45 = v64;
  (*(v38 + 16))(v22, v61, v64);
  v46 = v67;
  *&v22[*(v67 + 52)] = v43;
  memcpy(__dst, __src, 0x48uLL);
  v47 = sub_21700F934();

  sub_216697664(v68, &qword_27CAB6A00, &unk_217016B60);
  (*(v63 + 8))(v62, v19);
  *&v22[*(v46 + 56)] = v47;
  (*(v38 + 8))(v44, v45);
  v48 = v69;
  sub_2168CBB5C();
  __swift_storeEnumTagSinglePayload(v48, 0, 1, v46);
  v49 = sub_217006A94();
  return (*(*(v49 - 8) + 8))(v24, v49);
}

uint64_t sub_2168BE628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v14 = a9(a1, a2, a3, a4, a5);
  v15 = v14;
  if (v14)
  {
    sub_216788294(v14 + 16, v17);
    sub_21700F354();
    sub_216788110(v17);
  }

  return v15;
}

uint64_t sub_2168BE6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a5;
  v48 = a4;
  v49 = a2;
  v53 = a3;
  v47 = sub_21700C924();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlaylistTrackLockup(0);
  MEMORY[0x28223BE20](v7);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB810, &qword_217024130);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v42 - v15;
  v17 = sub_21700C894();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v42 - v22;
  sub_216CE3058();
  v43 = v7;
  v24 = *(v7 + 20);
  sub_216DB09E8(v13, a1 + v24);
  sub_216697664(v13, &unk_27CABF9C0, &qword_21701ADB0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_216697664(v16, &qword_27CABB810, &qword_217024130);
    if (qword_27CAB6108 != -1)
    {
      swift_once();
    }

    v25 = sub_217007CA4();
    __swift_project_value_buffer(v25, qword_27CACA410);
    v26 = v50;
    sub_2168CBA5C();
    v27 = sub_217007C84();
    v28 = sub_21700ED84();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v55 = v30;
      *v29 = 136446466;
      *(v29 + 4) = sub_2166A85FC(0xD000000000000013, 0x8000000217083C10, &v55);
      *(v29 + 12) = 2082;
      sub_216788294(v26 + *(v43 + 20), v54);
      sub_2168CBAB0(v26, type metadata accessor for PlaylistTrackLockup);
      v31 = sub_21700F324();
      v33 = v32;
      sub_216788110(v54);
      v34 = sub_2166A85FC(v31, v33, &v55);

      *(v29 + 14) = v34;
      _os_log_impl(&dword_216679000, v27, v28, "Dropped %{public}s container item with id: %{public}s, no music item.", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v30, -1, -1);
      MEMORY[0x21CEA1440](v29, -1, -1);
    }

    else
    {
      sub_2168CBAB0(v26, type metadata accessor for PlaylistTrackLockup);
    }

    return 0;
  }

  else
  {
    (*(v18 + 32))(v23, v16, v17);
    v35 = v52;
    if (v48 && (sub_2166D9530(&qword_27CABB818, &unk_27CABF910, &unk_217023330, &unk_217063360), (v36 = sub_21694D6C0(a1 + v24, v35)) != 0))
    {
      v37 = v36;
      sub_2168C9214(a1, v23, v49);
    }

    else
    {
      sub_2168CBA5C();
      (*(v18 + 16))(v20, v23, v17);
      (*(v45 + 16))(v46, v49, v47);
      swift_allocObject();
      sub_2168C7664();
      v37 = v38;
    }

    v39 = sub_2166D9530(&qword_27CABB818, &unk_27CABF910, &unk_217023330, &unk_217063360);

    sub_21694D824(v40, v51, v35, v39);

    (*(v18 + 8))(v23, v17);
  }

  return v37;
}

uint64_t sub_2168BED24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a5;
  v49 = a4;
  v50 = a2;
  v54 = a3;
  v48 = sub_21700C384();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ArtistDetailHeaderLockup(0);
  MEMORY[0x28223BE20](v7);
  v45 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088, &qword_217020CA0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v43 - v15;
  v17 = sub_2170067A4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v43 - v22;
  sub_216CE27F4();
  v44 = v7;
  v24 = *(v7 + 20);
  sub_216DB076C();
  sub_216697664(v13, &unk_27CABF9C0, &qword_21701ADB0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_216697664(v16, &qword_27CAB7088, &qword_217020CA0);
    if (qword_27CAB6108 != -1)
    {
      swift_once();
    }

    v25 = sub_217007CA4();
    __swift_project_value_buffer(v25, qword_27CACA410);
    v26 = v51;
    sub_2168CBA5C();
    v27 = sub_217007C84();
    v28 = sub_21700ED84();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v56 = v30;
      *v29 = 136446466;
      *(v29 + 4) = sub_2166A85FC(0xD000000000000018, 0x8000000217083B90, &v56);
      *(v29 + 12) = 2082;
      sub_216788294(v26 + *(v44 + 20), v55);
      sub_2168CBAB0(v26, type metadata accessor for ArtistDetailHeaderLockup);
      v31 = sub_21700F324();
      v33 = v32;
      sub_216788110(v55);
      v34 = sub_2166A85FC(v31, v33, &v56);

      *(v29 + 14) = v34;
      _os_log_impl(&dword_216679000, v27, v28, "Dropped %{public}s container item with id: %{public}s, no music item.", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v30, -1, -1);
      MEMORY[0x21CEA1440](v29, -1, -1);
    }

    else
    {
      sub_2168CBAB0(v26, type metadata accessor for ArtistDetailHeaderLockup);
    }

    return 0;
  }

  else
  {
    (*(v18 + 32))(v23, v16, v17);
    v35 = v53;
    if (v49 && (sub_2166D9530(&qword_27CABB800, &qword_27CABB1B0, &qword_217023310, &unk_217063360), (v36 = sub_21694D6C0(a1 + v24, v35)) != 0))
    {
      v37 = v36;
      sub_2168C9510(a1, v23, v50);
    }

    else
    {
      v38 = v45;
      sub_2168CBA5C();
      (*(v18 + 16))(v20, v23, v17);
      v39 = v47;
      (*(v46 + 16))(v47, v50, v48);
      swift_allocObject();
      v37 = sub_2168C792C(v38, v20, v39);
    }

    v40 = sub_2166D9530(&qword_27CABB800, &qword_27CABB1B0, &qword_217023310, &unk_217063360);

    sub_21694D824(v41, v52, v35, v40);

    (*(v18 + 8))(v23, v17);
  }

  return v37;
}

uint64_t sub_2168BF364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a5;
  v48 = a4;
  v49 = a2;
  v53 = a3;
  v47 = sub_21700C1E4();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AlbumTrackLockup(0);
  MEMORY[0x28223BE20](v7);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6AE8, qword_217014050);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v42 - v15;
  v17 = sub_21700C2F4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v42 - v22;
  sub_216CE2BEC();
  v43 = v7;
  v24 = *(v7 + 20);
  sub_216DB0A3C(v13, a1 + v24);
  sub_216697664(v13, &unk_27CABF9C0, &qword_21701ADB0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_216697664(v16, &qword_27CAB6AE8, qword_217014050);
    if (qword_27CAB6108 != -1)
    {
      swift_once();
    }

    v25 = sub_217007CA4();
    __swift_project_value_buffer(v25, qword_27CACA410);
    v26 = v50;
    sub_2168CBA5C();
    v27 = sub_217007C84();
    v28 = sub_21700ED84();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v55 = v30;
      *v29 = 136446466;
      *(v29 + 4) = sub_2166A85FC(0xD000000000000010, 0x8000000217083B70, &v55);
      *(v29 + 12) = 2082;
      sub_216788294(v26 + *(v43 + 20), v54);
      sub_2168CBAB0(v26, type metadata accessor for AlbumTrackLockup);
      v31 = sub_21700F324();
      v33 = v32;
      sub_216788110(v54);
      v34 = sub_2166A85FC(v31, v33, &v55);

      *(v29 + 14) = v34;
      _os_log_impl(&dword_216679000, v27, v28, "Dropped %{public}s container item with id: %{public}s, no music item.", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v30, -1, -1);
      MEMORY[0x21CEA1440](v29, -1, -1);
    }

    else
    {
      sub_2168CBAB0(v26, type metadata accessor for AlbumTrackLockup);
    }

    return 0;
  }

  else
  {
    (*(v18 + 32))(v23, v16, v17);
    v35 = v52;
    if (v48 && (sub_2166D9530(&qword_27CABB7E0, &unk_27CABF8B0, &unk_217033E30, &unk_217063360), (v36 = sub_21694D6C0(a1 + v24, v35)) != 0))
    {
      v37 = v36;
      sub_2168C980C(a1, v23, v49);
    }

    else
    {
      sub_2168CBA5C();
      (*(v18 + 16))(v20, v23, v17);
      (*(v45 + 16))(v46, v49, v47);
      swift_allocObject();
      sub_2168C739C();
      v37 = v38;
    }

    v39 = sub_2166D9530(&qword_27CABB7E0, &unk_27CABF8B0, &unk_217033E30, &unk_217063360);

    sub_21694D824(v40, v51, v35, v39);

    (*(v18 + 8))(v23, v17);
  }

  return v37;
}

uint64_t sub_2168BF9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21700F954();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = __src;
  sub_216CCA484(sub_2168CB850, v17, a1);
  v9 = v8;

  if (sub_2166BF3C8(v9))
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_21700F934();
  }

  else
  {

    if (qword_280E2C110 != -1)
    {
      swift_once();
    }

    v10 = sub_217007CA4();
    __swift_project_value_buffer(v10, qword_280E2C118);
    v11 = sub_217007C84();
    v12 = sub_21700ED84();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      __dst[0] = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_2166A85FC(0xD000000000000011, 0x8000000217083CA0, __dst);
      _os_log_impl(&dword_216679000, v11, v12, "Dropped %{public}s item pair collection, no items.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }

    v9 = 0;
  }

  v15 = sub_217006A94();
  (*(*(v15 - 8) + 8))(a2, v15);
  return v9;
}

uint64_t sub_2168BFBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v13 = a8(a1, a2, a3, a4);
  v14 = v13;
  if (v13)
  {
    sub_216788294(v13 + 16, v16);
    sub_21700F354();
    sub_216788110(v16);
  }

  return v14;
}

uint64_t sub_2168BFC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v6 = type metadata accessor for SplitPosterLockup(0);
  MEMORY[0x28223BE20](v6 - 8);
  v60 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v56 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7088, &qword_217020CA0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v53 - v17;
  v19 = sub_2170067A4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v55 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v54 = &v53 - v23;
  MEMORY[0x28223BE20](v24);
  v57 = &v53 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v53 - v27;
  sub_216CE3604();
  sub_216DB076C();
  sub_216697664(v12, &unk_27CABF9C0, &qword_21701ADB0);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    v15 = v18;
  }

  else
  {
    v53 = a4;
    v29 = *(v20 + 32);
    v29(v28, v18, v19);
    sub_2168C6FD0();
    if (__swift_getEnumTagSinglePayload(v15, 1, v19) != 1)
    {
      v41 = v57;
      v29(v57, v15, v19);
      v42 = v59;
      if (v58 && (sub_2166D9530(&qword_27CABB838, &qword_27CABF9B0, &unk_217033E80, &unk_2170632CC), (v43 = sub_21694D6C0(a1, v42)) != 0))
      {
        v40 = v43;
        sub_2168CA888(a1, v28, v41);
        v44 = v20;
      }

      else
      {
        v45 = v56;
        sub_2168CBA5C();
        v44 = v20;
        v46 = *(v20 + 16);
        v47 = v54;
        v46(v54, v28, v19);
        v48 = v55;
        v46(v55, v41, v19);
        swift_allocObject();
        v40 = sub_2168C9CD0(v45, v47, v48);
      }

      v49 = sub_2166D9530(&qword_27CABB838, &qword_27CABF9B0, &unk_217033E80, &unk_2170632CC);

      sub_21694D824(v50, v53, v42, v49);

      v51 = *(v44 + 8);
      v51(v41, v19);
      v51(v28, v19);
      return v40;
    }

    (*(v20 + 8))(v28, v19);
  }

  sub_216697664(v15, &qword_27CAB7088, &qword_217020CA0);
  v30 = v60;
  if (qword_27CAB6108 != -1)
  {
    swift_once();
  }

  v31 = sub_217007CA4();
  __swift_project_value_buffer(v31, qword_27CACA410);
  sub_2168CBA5C();
  v32 = sub_217007C84();
  v33 = sub_21700ED84();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v62 = v35;
    *v34 = 136446466;
    *(v34 + 4) = sub_2166A85FC(0xD000000000000011, 0x8000000217083CA0, &v62);
    *(v34 + 12) = 2082;
    sub_216788294(v30, v61);
    sub_2168CBAB0(v30, type metadata accessor for SplitPosterLockup);
    v36 = sub_21700F324();
    v38 = v37;
    sub_216788110(v61);
    v39 = sub_2166A85FC(v36, v38, &v62);

    *(v34 + 14) = v39;
    _os_log_impl(&dword_216679000, v32, v33, "Dropped %{public}s item with id: %{public}s, no music item.", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v34, -1, -1);
  }

  else
  {
    sub_2168CBAB0(v30, type metadata accessor for SplitPosterLockup);
  }

  return 0;
}

uint64_t sub_2168C032C()
{
  v0 = OUTLINED_FUNCTION_45_12();
  v15 = type metadata accessor for AlbumTrackLockup(v0);
  v16 = sub_2168CB86C(qword_280E41540, type metadata accessor for AlbumTrackLockup, &unk_217043794);
  v17 = sub_2168CB86C(&qword_280E41520, type metadata accessor for AlbumTrackLockup, &unk_21702C284);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  v1 = OUTLINED_FUNCTION_26_19(&qword_27CABB1A0, &unk_27CABF8B0, &unk_217033E30);
  OUTLINED_FUNCTION_94_2(v1, v2, v3, v4, v5, v6, v15, v16, &off_28293B3C0, v17);

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2(v7, v8, v9, v10, v11);
  sub_21700C2F4();
  OUTLINED_FUNCTION_9();
  v12 = OUTLINED_FUNCTION_105_5();
  return v13(v12);
}

uint64_t sub_2168C045C()
{
  v1 = OUTLINED_FUNCTION_45_12();
  v17 = type metadata accessor for PlaylistTrackLockup(v1);
  OUTLINED_FUNCTION_71_9();
  v18 = sub_2168CB86C(v2, v0, &unk_2170490C4);
  v19 = OUTLINED_FUNCTION_85_7(&qword_280E3D5C8);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  v3 = OUTLINED_FUNCTION_26_19(&qword_27CABB1E8, &unk_27CABF910, &unk_217023330);
  OUTLINED_FUNCTION_94_2(v3, v4, v5, v6, v7, v8, v17, v18, &off_28293B280, v19);

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2(v9, v10, v11, v12, v13);
  sub_21700C894();
  OUTLINED_FUNCTION_9();
  v14 = OUTLINED_FUNCTION_105_5();
  return v15(v14);
}

uint64_t sub_2168C0564()
{
  v1 = OUTLINED_FUNCTION_45_12();
  v17 = type metadata accessor for ArtistDetailHeaderLockup(v1);
  OUTLINED_FUNCTION_70_6();
  v18 = sub_2168CB86C(v2, v0, &unk_2170411DC);
  v19 = OUTLINED_FUNCTION_83_9(&qword_280E36D70);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  v3 = OUTLINED_FUNCTION_26_19(&qword_27CABB1A8, &qword_27CABB1B0, &qword_217023310);
  OUTLINED_FUNCTION_94_2(v3, v4, v5, v6, v7, v8, v17, v18, &off_28293B400, v19);

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2(v9, v10, v11, v12, v13);
  sub_2170067A4();
  OUTLINED_FUNCTION_9();
  v14 = OUTLINED_FUNCTION_105_5();
  return v15(v14);
}

void sub_2168C066C(uint64_t result, uint64_t *a2)
{
  v4 = 0;
  v5 = *(result + 16);
  while (v5 != v4)
  {
    v6 = type metadata accessor for ListSection(0);
    sub_2168C0734(*(result + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4++ + *(v6 + 32)), a2);
  }
}

void sub_2168C0734(uint64_t a1, uint64_t *a2)
{
  v39 = a2;
  v3 = sub_217006924();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v37 = v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v32 - v16;
  v18 = 0;
  v40 = *(a1 + 16);
  v35 = a1;
  v36 = (v4 + 32);
  v33 = (v4 + 16);
  v34 = v4;
  v32[2] = v4 + 8;
  v38 = v6;
  while (v40 != v18)
  {
    type metadata accessor for ListLockup(0);
    sub_2168CBB08();
    v19 = type metadata accessor for ContentDescriptor(0);
    if (__swift_getEnumTagSinglePayload(v11, 1, v19) == 1)
    {
      sub_216697664(v11, &qword_27CAB6A00, &unk_217016B60);
      __swift_storeEnumTagSinglePayload(v17, 1, 1, v3);
    }

    else
    {
      sub_216C6C5E8(v17);
      sub_2168CBAB0(v11, type metadata accessor for ContentDescriptor);
    }

    sub_2168CBB08();
    if (__swift_getEnumTagSinglePayload(v14, 1, v3) == 1)
    {
      sub_216697664(v17, &unk_27CABF9C0, &qword_21701ADB0);
      sub_216697664(v14, &unk_27CABF9C0, &qword_21701ADB0);
    }

    else
    {
      v20 = v37;
      v21 = *v36;
      (*v36)(v37, v14, v3);
      (*v33)(v38, v20, v3);
      v22 = v39;
      v23 = *v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v22 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2169375D4(0, *(v23 + 16) + 1, 1, v23);
        v23 = v30;
        *v39 = v30;
      }

      v26 = *(v23 + 16);
      v25 = *(v23 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_2169375D4(v25 > 1, v26 + 1, 1, v23);
        *v39 = v31;
      }

      v27 = v34;
      (*(v34 + 8))(v37, v3);
      sub_216697664(v17, &unk_27CABF9C0, &qword_21701ADB0);
      v28 = v38;
      v29 = *v39;
      *(v29 + 16) = v26 + 1;
      v21((v29 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v26), v28, v3);
    }

    ++v18;
  }
}

void sub_2168C0B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v21;
  a20 = v22;
  v762 = v20;
  v23 = type metadata accessor for VerticalVideoLockup(0);
  v24 = OUTLINED_FUNCTION_0(v23, &v716);
  v697[26] = v25;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_6_0();
  v27 = OUTLINED_FUNCTION_8_0(v26);
  v28 = type metadata accessor for TVMovieDetailHeaderLockup(v27);
  v29 = OUTLINED_FUNCTION_36(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_0();
  v31 = OUTLINED_FUNCTION_8_0(v30);
  v32 = type metadata accessor for TVMovieDescription(v31);
  v33 = OUTLINED_FUNCTION_36(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_6_0();
  v35 = OUTLINED_FUNCTION_8_0(v34);
  v36 = type metadata accessor for SuperHeroLockup(v35);
  v37 = OUTLINED_FUNCTION_36(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_0();
  v39 = OUTLINED_FUNCTION_8_0(v38);
  v40 = type metadata accessor for SquareLockup(v39);
  v41 = OUTLINED_FUNCTION_0(v40, &v715);
  v697[24] = v42;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_6_0();
  v44 = OUTLINED_FUNCTION_8_0(v43);
  v45 = type metadata accessor for SplitPosterLockup(v44);
  v697[22] = *(v45 - 8);
  MEMORY[0x28223BE20](v45 - 8);
  OUTLINED_FUNCTION_6_0();
  v755 = v46;
  v47 = OUTLINED_FUNCTION_4_1();
  v707 = type metadata accessor for SocialProfileHorizontalLockupSection(v47);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_6_0();
  v50 = OUTLINED_FUNCTION_8_0(v49);
  v51 = type metadata accessor for SocialProfileHorizontalLockup(v50);
  v52 = OUTLINED_FUNCTION_0(v51, v728);
  v711[1] = v53;
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_47_1();
  v56 = OUTLINED_FUNCTION_8_0(v55);
  v57 = type metadata accessor for SocialOnboardingSharedPlaylistLockup(v56);
  v58 = OUTLINED_FUNCTION_0(v57, v714);
  v697[21] = v59;
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_6_0();
  v61 = OUTLINED_FUNCTION_8_0(v60);
  v62 = _s6LockupVMa(v61);
  v63 = OUTLINED_FUNCTION_0(v62, &v713);
  v697[19] = v64;
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_6_0();
  v66 = OUTLINED_FUNCTION_8_0(v65);
  v67 = type metadata accessor for TopSearchLockup(v66);
  v68 = OUTLINED_FUNCTION_0(v67, &v726);
  v710[1] = v69;
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_47_1();
  v72 = OUTLINED_FUNCTION_8_0(v71);
  v73 = type metadata accessor for SearchResultsListSection(v72);
  v74 = OUTLINED_FUNCTION_36(v73);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_6_0();
  v76 = OUTLINED_FUNCTION_8_0(v75);
  v77 = type metadata accessor for RecentSearchLockup(v76);
  v78 = OUTLINED_FUNCTION_0(v77, &v712);
  v697[17] = v79;
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_6_0();
  v81 = OUTLINED_FUNCTION_8_0(v80);
  v82 = type metadata accessor for PosterLockup(v81);
  v83 = OUTLINED_FUNCTION_0(v82, v711);
  v697[15] = v84;
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_6_0();
  v86 = OUTLINED_FUNCTION_8_0(v85);
  v87 = type metadata accessor for PlaylistTrackLockup(v86);
  v88 = OUTLINED_FUNCTION_0(v87, v710);
  v697[13] = v89;
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_6_0();
  v91 = OUTLINED_FUNCTION_8_0(v90);
  v92 = type metadata accessor for PlaylistDetailHeaderLockup(v91);
  v93 = OUTLINED_FUNCTION_36(v92);
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_6_0();
  v95 = OUTLINED_FUNCTION_8_0(v94);
  v705 = type metadata accessor for SongDetailList(v95);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_6_0();
  v98 = OUTLINED_FUNCTION_8_0(v97);
  v99 = type metadata accessor for LiveRadioGridLockup(v98);
  v100 = OUTLINED_FUNCTION_0(v99, v709);
  v697[11] = v101;
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_6_0();
  v103 = OUTLINED_FUNCTION_8_0(v102);
  v104 = type metadata accessor for HorizontalPosterLockup(v103);
  v105 = OUTLINED_FUNCTION_0(v104, &v708);
  v697[9] = v106;
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_6_0();
  v108 = OUTLINED_FUNCTION_8_0(v107);
  v109 = type metadata accessor for HorizontalLockup(v108);
  v110 = OUTLINED_FUNCTION_0(v109, &v707);
  v697[7] = v111;
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_6_0();
  v113 = OUTLINED_FUNCTION_8_0(v112);
  v114 = type metadata accessor for HeaderComponentModel(v113);
  v115 = OUTLINED_FUNCTION_36(v114);
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_6_0();
  v117 = OUTLINED_FUNCTION_8_0(v116);
  v118 = type metadata accessor for FlowcaseLockup(v117);
  v119 = OUTLINED_FUNCTION_0(v118, &v706);
  v697[5] = v120;
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_6_0();
  v122 = OUTLINED_FUNCTION_8_0(v121);
  v123 = type metadata accessor for BubbleLockup(v122);
  v124 = OUTLINED_FUNCTION_0(v123, &v704);
  v697[3] = v125;
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v126);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB848, &unk_21705ED20);
  OUTLINED_FUNCTION_36(v127);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v128);
  OUTLINED_FUNCTION_105();
  v130 = OUTLINED_FUNCTION_8_0(v129);
  v131 = type metadata accessor for TrackLockup(v130);
  v132 = OUTLINED_FUNCTION_0(v131, v725);
  v709[1] = v133;
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_47_1();
  v136 = OUTLINED_FUNCTION_8_0(v135);
  v712 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockup(v136);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_6_0();
  v139 = OUTLINED_FUNCTION_8_0(v138);
  v699 = type metadata accessor for ArtistLatestReleaseLockup(v139);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_6_0();
  v142 = OUTLINED_FUNCTION_8_0(v141);
  v702 = type metadata accessor for ArtistDetailHeaderLockup(v142);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v143);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v144);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  v146 = OUTLINED_FUNCTION_36(v145);
  MEMORY[0x28223BE20](v146);
  OUTLINED_FUNCTION_1_0();
  v754 = v147;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v148);
  OUTLINED_FUNCTION_6_4();
  v753 = v149;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v150);
  OUTLINED_FUNCTION_6_4();
  v752 = v151;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v152);
  OUTLINED_FUNCTION_6_4();
  v751 = v153;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v154);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v155);
  OUTLINED_FUNCTION_6_4();
  v750 = v156;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v157);
  OUTLINED_FUNCTION_6_4();
  v749 = v158;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v159);
  OUTLINED_FUNCTION_6_4();
  v748 = v160;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v161);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v162);
  OUTLINED_FUNCTION_6_4();
  v746 = v163;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v164);
  OUTLINED_FUNCTION_6_4();
  v759 = v165;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v166);
  OUTLINED_FUNCTION_6_4();
  v747 = v167;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v168);
  OUTLINED_FUNCTION_6_4();
  v745 = v169;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v170);
  OUTLINED_FUNCTION_6_4();
  v758 = v171;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v172);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v173);
  OUTLINED_FUNCTION_6_4();
  v757 = v174;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v175);
  OUTLINED_FUNCTION_6_4();
  v756 = v176;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v177);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v178);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v179);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_8_0(v180);
  v763 = sub_217006924();
  OUTLINED_FUNCTION_1();
  v760 = v181;
  MEMORY[0x28223BE20](v182);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v183);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v184);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v185);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v186);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v187);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v188);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v189);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v190);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v191);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v192);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v193);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v194);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v195);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v196);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v197);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v198);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v199);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v200);
  OUTLINED_FUNCTION_47_1();
  v202 = OUTLINED_FUNCTION_8_0(v201);
  v203 = type metadata accessor for AlbumTrackLockup(v202);
  v204 = OUTLINED_FUNCTION_0(v203, &v703);
  v697[1] = v205;
  MEMORY[0x28223BE20](v204);
  OUTLINED_FUNCTION_6_0();
  v207 = OUTLINED_FUNCTION_8_0(v206);
  v761 = type metadata accessor for ContentDescriptor(v207);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v208);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v209);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v210);
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  v212 = OUTLINED_FUNCTION_36(v211);
  MEMORY[0x28223BE20](v212);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v213);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v214);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v215);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v216);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v217);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v218);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v219);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v220);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v221);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v222);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v223);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v224);
  v226 = v697 - v225;
  MEMORY[0x28223BE20](v227);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v228);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v229);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v230);
  v232 = v697 - v231;
  MEMORY[0x28223BE20](v233);
  v235 = v697 - v234;
  MEMORY[0x28223BE20](v236);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v237);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v238);
  v240 = v697 - v239;
  MEMORY[0x28223BE20](v241);
  v243 = (v697 - v242);
  MEMORY[0x28223BE20](v244);
  v246 = v697 - v245;
  MEMORY[0x28223BE20](v247);
  OUTLINED_FUNCTION_47_1();
  v249 = OUTLINED_FUNCTION_8_0(v248);
  v250 = type metadata accessor for AlbumDetailHeaderLockup(v249);
  v251 = OUTLINED_FUNCTION_36(v250);
  MEMORY[0x28223BE20](v251);
  OUTLINED_FUNCTION_7();
  v254 = (v253 - v252);
  v255 = type metadata accessor for SectionContent(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v256);
  OUTLINED_FUNCTION_7();
  v259 = v258 - v257;
  OUTLINED_FUNCTION_74_8();
  sub_2168CBA5C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v491 = *v259;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7D8, &unk_21703F640);
      OUTLINED_FUNCTION_17_25();
      sub_2168CB998();
      v492 = *(v491 + 16);
      if (!v492)
      {

        v496 = MEMORY[0x277D84F90];
        goto LABEL_340;
      }

      v762 = *(v697[0] + 104);
      OUTLINED_FUNCTION_12_23();
      v494 = v491 + v493;
      v495 = v761;
      v758 = v491;
      v759 = (v760 + 32);
      v496 = MEMORY[0x277D84F90];
      v498 = *(v497 + 72);
      v235 = &unk_217016B60;
      OUTLINED_FUNCTION_134_2();
      while (1)
      {
        OUTLINED_FUNCTION_124_4();
        sub_2168CBA5C();
        sub_2168CBB08();
        v499 = OUTLINED_FUNCTION_58_0();
        OUTLINED_FUNCTION_31_2(v499, v500, v495);
        if (v267)
        {
          OUTLINED_FUNCTION_87_7();
          sub_216697664(v259, &qword_27CAB6A00, &unk_217016B60);
          OUTLINED_FUNCTION_38_2();
          __swift_storeEnumTagSinglePayload(v501, v502, v503, v763);
        }

        else
        {
          sub_216C6C5E8(v246);
          OUTLINED_FUNCTION_87_7();
          OUTLINED_FUNCTION_0_60();
          sub_2168CBAB0(v259, v504);
          OUTLINED_FUNCTION_31_2(v246, 1, v763);
          if (!v505)
          {
            OUTLINED_FUNCTION_64_9();
            v254(v723, v246, v763);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v511 = OUTLINED_FUNCTION_29_0();
              sub_2169375D4(v511, v512, v513, v496);
              v496 = v514;
            }

            v508 = *(v496 + 16);
            v507 = *(v496 + 24);
            v259 = v508 + 1;
            if (v508 >= v507 >> 1)
            {
              v515 = OUTLINED_FUNCTION_10_22(v507);
              sub_2169375D4(v515, v516, v517, v496);
              v496 = v518;
            }

            *(v496 + 16) = v259;
            OUTLINED_FUNCTION_11_26();
            v254(v496 + v509 + *(v510 + 72) * v508, v723, v763);
            v495 = v761;
            OUTLINED_FUNCTION_134_2();
            goto LABEL_199;
          }
        }

        sub_216697664(v246, &unk_27CABF9C0, &qword_21701ADB0);
LABEL_199:
        v494 += v498;
        if (!--v492)
        {

LABEL_340:
          v764[0] = v496;
          OUTLINED_FUNCTION_101_4();
          v680 = &v729;
          goto LABEL_341;
        }
      }

    case 2u:
    case 3u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xCu:
    case 0xDu:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x16u:
    case 0x18u:
    case 0x1Bu:
    case 0x1Eu:
    case 0x1Fu:
    case 0x21u:
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x26u:
    case 0x27u:
    case 0x28u:
    case 0x29u:
    case 0x2Au:
    case 0x2Bu:
    case 0x2Cu:
    case 0x2Du:
    case 0x2Eu:
    case 0x2Fu:
    case 0x32u:
    case 0x36u:
    case 0x37u:
    case 0x3Cu:
      sub_2168CBAB0(v259, type metadata accessor for SectionContent);
      v762 = 0;
      goto LABEL_346;
    case 4u:
      OUTLINED_FUNCTION_63_7();
      OUTLINED_FUNCTION_107_0();
      sub_2168CB998();
      sub_216CE27F4();
      v449 = sub_2168C42C0();
      sub_216697664(v243, &unk_27CABF9C0, &qword_21701ADB0);
      v450 = MEMORY[0x277D84F90];
      if (v449)
      {
        v450 = v449;
      }

      v764[0] = v450;
      v451 = v701;
      sub_2168CBB08();
      OUTLINED_FUNCTION_35_13();
      if (v267)
      {
        sub_216697664(v451, &qword_27CAB6A00, &unk_217016B60);
        OUTLINED_FUNCTION_38_2();
        __swift_storeEnumTagSinglePayload(v452, v453, v454, v763);
      }

      else
      {
        sub_216C6C5E8(v240);
        OUTLINED_FUNCTION_0_60();
        sub_2168CBAB0(v451, v674);
      }

      sub_2168C448C(v240);
      sub_216697664(v240, &unk_27CABF9C0, &qword_21701ADB0);
      v675 = type metadata accessor for ArtistDetailHeaderLockup;
      goto LABEL_342;
    case 5u:
      OUTLINED_FUNCTION_63_7();
      OUTLINED_FUNCTION_107_0();
      sub_2168CB998();
      OUTLINED_FUNCTION_101_4();
      sub_216CE280C();
      v762 = sub_2168C42C0();
      sub_216697664(v235, &unk_27CABF9C0, &qword_21701ADB0);
      OUTLINED_FUNCTION_39_10();
      v472 = v232;
      goto LABEL_338;
    case 6u:
      OUTLINED_FUNCTION_63_7();
      OUTLINED_FUNCTION_121_3();
      v416 = *(v712 + 32);
      v417 = *&v235[v416];
      if (v417)
      {
        v418 = sub_216B3522C(*&v235[v416]);
        if (v418)
        {
          v419 = v418;
          if (v418 < 1)
          {
            goto LABEL_364;
          }

          OUTLINED_FUNCTION_12_23();
          v421 = v417 + v420;
          OUTLINED_FUNCTION_118_5();
          v762 = v422;
          v423 = MEMORY[0x277D84F90];
          v425 = *(v424 + 72);
          OUTLINED_FUNCTION_116_4();
          while (1)
          {
            OUTLINED_FUNCTION_126_0();
            OUTLINED_FUNCTION_93_3();
            sub_2168CBB08();
            OUTLINED_FUNCTION_35_13();
            if (v267)
            {
              OUTLINED_FUNCTION_21_21();
              sub_2168CBAB0(v243, v426);
              v427 = OUTLINED_FUNCTION_90();
              sub_216697664(v427, v428, &unk_217016B60);
              OUTLINED_FUNCTION_38_2();
              __swift_storeEnumTagSinglePayload(v429, v430, v431, v763);
            }

            else
            {
              sub_216C6C5E8(v255);
              OUTLINED_FUNCTION_21_21();
              sub_2168CBAB0(v243, v432);
              OUTLINED_FUNCTION_0_60();
              sub_2168CBAB0(v417, v433);
              v434 = OUTLINED_FUNCTION_104_5();
              OUTLINED_FUNCTION_31_2(v434, v435, v763);
              if (!v436)
              {
                v243 = *v762;
                (*v762)(v721, v255, v763);
                v437 = swift_isUniquelyReferenced_nonNull_native();
                if ((v437 & 1) == 0)
                {
                  v441 = OUTLINED_FUNCTION_29_0();
                  sub_2169375D4(v441, v442, v443, v423);
                  v423 = v444;
                }

                v255 = *(v423 + 16);
                v438 = *(v423 + 24);
                v417 = v255 + 1;
                if (v255 >= v438 >> 1)
                {
                  v445 = OUTLINED_FUNCTION_10_22(v438);
                  sub_2169375D4(v445, v446, v447, v423);
                  v423 = v448;
                }

                *(v423 + 16) = v417;
                OUTLINED_FUNCTION_11_26();
                v243(v423 + v439 + *(v440 + 72) * v255, v721, v763);
                OUTLINED_FUNCTION_116_4();
                goto LABEL_145;
              }
            }

            sub_216697664(v255, &unk_27CABF9C0, &qword_21701ADB0);
LABEL_145:
            v421 += v425;
            if (!--v419)
            {
              goto LABEL_326;
            }
          }
        }
      }

      v423 = MEMORY[0x277D84F90];
LABEL_326:
      v764[0] = v423;
      v668 = v700;
      sub_2168CBB08();
      v669 = OUTLINED_FUNCTION_58_0();
      OUTLINED_FUNCTION_31_2(v669, v670, v699);
      if (v267)
      {
        sub_216697664(v668, &qword_27CABB848, &unk_21705ED20);
        v676 = v698;
        OUTLINED_FUNCTION_38_2();
        __swift_storeEnumTagSinglePayload(v671, v672, v673, v763);
      }

      else
      {
        v676 = v698;
        sub_216CE280C();
        OUTLINED_FUNCTION_39_10();
        sub_2168CBAB0(v668, v677);
      }

      sub_2168C448C(v676);
      sub_216697664(v676, &unk_27CABF9C0, &qword_21701ADB0);
      OUTLINED_FUNCTION_73_7();
      v563 = v714[1];
      goto LABEL_343;
    case 7u:
      v519 = *(*v259 + 16);
      if (!v519)
      {
        goto LABEL_324;
      }

      OUTLINED_FUNCTION_12_23();
      OUTLINED_FUNCTION_133_0(v520);
      v762 = MEMORY[0x277D84F90];
      v522 = *(v521 + 72);
      v523 = v717;
      v524 = v756;
      while (1)
      {
        OUTLINED_FUNCTION_124_4();
        sub_2168CBA5C();
        sub_2168CBB08();
        v525 = OUTLINED_FUNCTION_58_0();
        OUTLINED_FUNCTION_31_2(v525, v526, v246);
        if (v267)
        {
          OUTLINED_FUNCTION_86_8();
          sub_216697664(v524, &qword_27CAB6A00, &unk_217016B60);
          OUTLINED_FUNCTION_38_2();
          __swift_storeEnumTagSinglePayload(v527, v528, v529, v763);
        }

        else
        {
          sub_216C6C5E8(v235);
          v524 = v756;
          OUTLINED_FUNCTION_86_8();
          OUTLINED_FUNCTION_0_60();
          sub_2168CBAB0(v524, v530);
          OUTLINED_FUNCTION_31_2(v235, 1, v763);
          if (!v531)
          {
            OUTLINED_FUNCTION_64_9();
            (v523)(v722, v235, v763);
            v532 = swift_isUniquelyReferenced_nonNull_native();
            if ((v532 & 1) == 0)
            {
              OUTLINED_FUNCTION_31_19();
              v762 = v534;
            }

            OUTLINED_FUNCTION_141_2();
            if (v271)
            {
              v535 = OUTLINED_FUNCTION_10_22(v533);
              sub_2169375D4(v535, v536, v537, v762);
              v762 = v538;
            }

            OUTLINED_FUNCTION_2_39();
            OUTLINED_FUNCTION_138_3();
            v523();
            v246 = v761;
            v523 = v717;
            v524 = v756;
            goto LABEL_214;
          }
        }

        sub_216697664(v235, &unk_27CABF9C0, &qword_21701ADB0);
LABEL_214:
        v226 += v522;
        if (!--v519)
        {
          goto LABEL_323;
        }
      }

    case 0xBu:
      v539 = *(*v259 + 16);
      if (!v539)
      {
        goto LABEL_324;
      }

      OUTLINED_FUNCTION_12_23();
      OUTLINED_FUNCTION_133_0(v540);
      v762 = MEMORY[0x277D84F90];
      v542 = *(v541 + 72);
      v543 = v718;
      v544 = v757;
      while (1)
      {
        OUTLINED_FUNCTION_124_4();
        sub_2168CBA5C();
        sub_2168CBB08();
        v545 = OUTLINED_FUNCTION_58_0();
        OUTLINED_FUNCTION_31_2(v545, v546, v246);
        if (v267)
        {
          OUTLINED_FUNCTION_82_7();
          sub_216697664(v544, &qword_27CAB6A00, &unk_217016B60);
          OUTLINED_FUNCTION_38_2();
          __swift_storeEnumTagSinglePayload(v547, v548, v549, v763);
        }

        else
        {
          sub_216C6C5E8(v232);
          v544 = v757;
          OUTLINED_FUNCTION_82_7();
          OUTLINED_FUNCTION_0_60();
          sub_2168CBAB0(v544, v550);
          OUTLINED_FUNCTION_31_2(v232, 1, v763);
          if (!v551)
          {
            OUTLINED_FUNCTION_64_9();
            (v543)(v724, v232, v763);
            v552 = swift_isUniquelyReferenced_nonNull_native();
            if ((v552 & 1) == 0)
            {
              OUTLINED_FUNCTION_31_19();
              v762 = v554;
            }

            OUTLINED_FUNCTION_141_2();
            if (v271)
            {
              v555 = OUTLINED_FUNCTION_10_22(v553);
              sub_2169375D4(v555, v556, v557, v762);
              v762 = v558;
            }

            OUTLINED_FUNCTION_2_39();
            OUTLINED_FUNCTION_138_3();
            v543();
            v246 = v761;
            v543 = v718;
            v544 = v757;
            goto LABEL_229;
          }
        }

        sub_216697664(v232, &unk_27CABF9C0, &qword_21701ADB0);
LABEL_229:
        v226 += v542;
        if (!--v539)
        {
          goto LABEL_323;
        }
      }

    case 0xEu:
      OUTLINED_FUNCTION_63_7();
      OUTLINED_FUNCTION_121_3();
      OUTLINED_FUNCTION_43_12();
      sub_216CE2824();
      v762 = sub_2168C42C0();
      sub_216697664(v232, &unk_27CABF9C0, &qword_21701ADB0);
      v338 = type metadata accessor for HeaderComponentModel;
      goto LABEL_307;
    case 0xFu:
      v455 = OUTLINED_FUNCTION_79_10();
      if (!v243)
      {
        goto LABEL_324;
      }

      v456 = *(v697[6] + 76);
      OUTLINED_FUNCTION_4_30(v455);
      OUTLINED_FUNCTION_65_6(MEMORY[0x277D84F90]);
      v457 = v734;
      while (1)
      {
        OUTLINED_FUNCTION_60_6();
        v458 = v744;
        OUTLINED_FUNCTION_59_7(v457 + v456);
        OUTLINED_FUNCTION_33_17();
        if (v267)
        {
          OUTLINED_FUNCTION_93_7();
          OUTLINED_FUNCTION_61_6();
          OUTLINED_FUNCTION_34_14(&v763);
        }

        else
        {
          OUTLINED_FUNCTION_16_24();
          OUTLINED_FUNCTION_67_1();
          sub_216C6C5E8(v459);
          v457 = v734;
          OUTLINED_FUNCTION_93_7();
          OUTLINED_FUNCTION_0_60();
          OUTLINED_FUNCTION_15_21(v460, v461);
          OUTLINED_FUNCTION_23_15();
          if (!v462)
          {
            OUTLINED_FUNCTION_64_9();
            v463 = OUTLINED_FUNCTION_40_9();
            (v254)(v463);
            v464 = swift_isUniquelyReferenced_nonNull_native();
            if ((v464 & 1) == 0)
            {
              OUTLINED_FUNCTION_31_19();
              v762 = v466;
            }

            OUTLINED_FUNCTION_19_21();
            if (v271)
            {
              v467 = OUTLINED_FUNCTION_10_22(v465);
              sub_2169375D4(v467, v468, v469, v762);
              v762 = v470;
            }

            OUTLINED_FUNCTION_1_46();
            OUTLINED_FUNCTION_18_17();
            (v254)();
            v254 = v761;
            v457 = v734;
            goto LABEL_165;
          }
        }

        sub_216697664(v458, &unk_27CABF9C0, &qword_21701ADB0);
LABEL_165:
        OUTLINED_FUNCTION_80_6();
        if (v267)
        {
          goto LABEL_323;
        }
      }

    case 0x10u:
      v582 = *(*v259 + 16);
      if (!v582)
      {
        goto LABEL_324;
      }

      v583 = *(v697[8] + 64);
      OUTLINED_FUNCTION_12_23();
      v757 = v584;
      v586 = v584 + v585;
      OUTLINED_FUNCTION_118_5();
      v759 = v587;
      OUTLINED_FUNCTION_65_6(MEMORY[0x277D84F90]);
      v588 = v763;
      v589 = v719;
      while (1)
      {
        OUTLINED_FUNCTION_126_0();
        OUTLINED_FUNCTION_59_7(v589 + v583);
        OUTLINED_FUNCTION_35_13();
        if (v267)
        {
          OUTLINED_FUNCTION_95_7();
          OUTLINED_FUNCTION_61_6();
          v593 = v742;
          OUTLINED_FUNCTION_38_2();
          __swift_storeEnumTagSinglePayload(v590, v591, v592, v588);
        }

        else
        {
          v593 = v742;
          sub_216C6C5E8(v742);
          v594 = v758;
          OUTLINED_FUNCTION_95_7();
          OUTLINED_FUNCTION_0_60();
          sub_2168CBAB0(v594, v595);
          OUTLINED_FUNCTION_31_2(v593, 1, v588);
          if (!v596)
          {
            v597 = *v759;
            (*v759)(v725[1], v593, v588);
            v598 = swift_isUniquelyReferenced_nonNull_native();
            if ((v598 & 1) == 0)
            {
              OUTLINED_FUNCTION_31_19();
              v762 = v600;
            }

            OUTLINED_FUNCTION_19_21();
            if (v271)
            {
              v601 = OUTLINED_FUNCTION_10_22(v599);
              sub_2169375D4(v601, v602, v603, v762);
              v762 = v604;
            }

            OUTLINED_FUNCTION_1_46();
            OUTLINED_FUNCTION_18_17();
            v597();
            v589 = v719;
            goto LABEL_263;
          }
        }

        sub_216697664(v593, &unk_27CABF9C0, &qword_21701ADB0);
LABEL_263:
        v586 += v240;
        if (!--v582)
        {
          goto LABEL_323;
        }
      }

    case 0x14u:
      v277 = OUTLINED_FUNCTION_79_10();
      if (!v243)
      {
        goto LABEL_324;
      }

      v278 = *(v697[10] + 44);
      OUTLINED_FUNCTION_4_30(v277);
      OUTLINED_FUNCTION_65_6(MEMORY[0x277D84F90]);
      v279 = v735;
      while (1)
      {
        OUTLINED_FUNCTION_60_6();
        v280 = v745;
        OUTLINED_FUNCTION_59_7(v279 + v278);
        OUTLINED_FUNCTION_33_17();
        if (v267)
        {
          OUTLINED_FUNCTION_90_6();
          OUTLINED_FUNCTION_61_6();
          OUTLINED_FUNCTION_34_14(v764);
        }

        else
        {
          OUTLINED_FUNCTION_16_24();
          OUTLINED_FUNCTION_67_1();
          sub_216C6C5E8(v281);
          v279 = v735;
          OUTLINED_FUNCTION_90_6();
          OUTLINED_FUNCTION_0_60();
          OUTLINED_FUNCTION_15_21(v282, v283);
          OUTLINED_FUNCTION_23_15();
          if (!v284)
          {
            OUTLINED_FUNCTION_64_9();
            v285 = OUTLINED_FUNCTION_40_9();
            (v254)(v285);
            v286 = swift_isUniquelyReferenced_nonNull_native();
            if ((v286 & 1) == 0)
            {
              OUTLINED_FUNCTION_31_19();
              v762 = v288;
            }

            OUTLINED_FUNCTION_19_21();
            if (v271)
            {
              v289 = OUTLINED_FUNCTION_10_22(v287);
              sub_2169375D4(v289, v290, v291, v762);
              v762 = v292;
            }

            OUTLINED_FUNCTION_1_46();
            OUTLINED_FUNCTION_18_17();
            (v254)();
            v254 = v761;
            v279 = v735;
            goto LABEL_32;
          }
        }

        sub_216697664(v280, &unk_27CABF9C0, &qword_21701ADB0);
LABEL_32:
        OUTLINED_FUNCTION_80_6();
        if (v267)
        {
          goto LABEL_323;
        }
      }

    case 0x15u:
      OUTLINED_FUNCTION_63_7();
      OUTLINED_FUNCTION_121_3();
      v339 = *(*(v235 + 4) + 16);
      if (v339)
      {
        OUTLINED_FUNCTION_103_7();
        v762 = MEMORY[0x277D84F90];
        v341 = *(v340 + 72);
        OUTLINED_FUNCTION_119_3();
        while (1)
        {
          OUTLINED_FUNCTION_49_0();
          sub_2168CBA5C();
          OUTLINED_FUNCTION_143_1();
          OUTLINED_FUNCTION_35_13();
          if (v267)
          {
            OUTLINED_FUNCTION_22_24();
            sub_2168CBAB0(v240, v342);
            sub_216697664(v259, &qword_27CAB6A00, &unk_217016B60);
            OUTLINED_FUNCTION_38_2();
            __swift_storeEnumTagSinglePayload(v343, v344, v345, v763);
          }

          else
          {
            sub_216C6C5E8(v255);
            OUTLINED_FUNCTION_22_24();
            sub_2168CBAB0(v240, v346);
            OUTLINED_FUNCTION_0_60();
            sub_2168CBAB0(v259, v347);
            v348 = OUTLINED_FUNCTION_104_5();
            OUTLINED_FUNCTION_31_2(v348, v349, v763);
            if (!v350)
            {
              v240 = *v759;
              (*v759)(v728[2], v255, v763);
              v351 = swift_isUniquelyReferenced_nonNull_native();
              if ((v351 & 1) == 0)
              {
                OUTLINED_FUNCTION_31_19();
                v762 = v353;
              }

              OUTLINED_FUNCTION_140_0();
              if (v271)
              {
                v354 = OUTLINED_FUNCTION_10_22(v352);
                sub_2169375D4(v354, v355, v356, v762);
                v762 = v357;
              }

              OUTLINED_FUNCTION_2_39();
              OUTLINED_FUNCTION_138_3();
              (v240)();
              OUTLINED_FUNCTION_119_3();
              goto LABEL_79;
            }
          }

          sub_216697664(v255, &unk_27CABF9C0, &qword_21701ADB0);
LABEL_79:
          v235 += v341;
          if (!--v339)
          {
            goto LABEL_336;
          }
        }
      }

      v762 = MEMORY[0x277D84F90];
LABEL_336:
      OUTLINED_FUNCTION_38_10();
      v678 = &v731;
      goto LABEL_337;
    case 0x17u:
      OUTLINED_FUNCTION_63_7();
      v559 = v706;
      sub_2168CB998();
      sub_216CE283C();
      v560 = sub_2168C42C0();
      sub_216697664(v226, &unk_27CABF9C0, &qword_21701ADB0);
      v561 = MEMORY[0x277D84F90];
      if (v560)
      {
        v561 = v560;
      }

      v764[0] = v561;
      sub_2168C066C(*(v559 + *(v705 + 28)), v764);
      OUTLINED_FUNCTION_68_8();
      v563 = v559;
      goto LABEL_343;
    case 0x19u:
      OUTLINED_FUNCTION_63_7();
      OUTLINED_FUNCTION_121_3();
      OUTLINED_FUNCTION_43_12();
      sub_216CE2938();
      v762 = sub_2168C42C0();
      sub_216697664(v232, &unk_27CABF9C0, &qword_21701ADB0);
      v338 = type metadata accessor for PlaylistDetailHeaderLockup;
      goto LABEL_307;
    case 0x1Au:
      v235 = *v259;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7C0, &unk_217030FE0);
      OUTLINED_FUNCTION_17_25();
      sub_2168CB998();
      v312 = *(v235 + 2);
      if (v312)
      {
        OUTLINED_FUNCTION_12_23();
        v314 = &v235[v313];
        OUTLINED_FUNCTION_118_5();
        v758 = v235;
        v759 = v315;
        OUTLINED_FUNCTION_65_6(MEMORY[0x277D84F90]);
        v316 = &unk_217016B60;
        v235 = v763;
        while (1)
        {
          OUTLINED_FUNCTION_124_4();
          sub_2168CBA5C();
          v317 = v747;
          OUTLINED_FUNCTION_93_3();
          sub_2168CBB08();
          OUTLINED_FUNCTION_35_13();
          if (v267)
          {
            OUTLINED_FUNCTION_96_3();
            v318 = OUTLINED_FUNCTION_90();
            sub_216697664(v318, v319, v316);
            OUTLINED_FUNCTION_34_14(&a10);
          }

          else
          {
            v320 = v316;
            OUTLINED_FUNCTION_67_1();
            sub_216C6C5E8(v321);
            OUTLINED_FUNCTION_96_3();
            OUTLINED_FUNCTION_0_60();
            v322 = OUTLINED_FUNCTION_100_7();
            sub_2168CBAB0(v322, v323);
            OUTLINED_FUNCTION_23_15();
            if (!v324)
            {
              v325 = *v759;
              v326 = OUTLINED_FUNCTION_40_9();
              (v325)(v326);
              v327 = v762;
              v328 = swift_isUniquelyReferenced_nonNull_native();
              if ((v328 & 1) == 0)
              {
                v330 = OUTLINED_FUNCTION_29_0();
                sub_2169375D4(v330, v331, v332, v327);
                v327 = v333;
              }

              v235 = *(v327 + 16);
              v329 = *(v327 + 24);
              if (v235 >= v329 >> 1)
              {
                v334 = OUTLINED_FUNCTION_10_22(v329);
                sub_2169375D4(v334, v335, v336, v327);
                v327 = v337;
              }

              *(v327 + 16) = v235 + 1;
              OUTLINED_FUNCTION_11_26();
              v762 = v327;
              OUTLINED_FUNCTION_18_17();
              v325();
              v316 = v320;
              goto LABEL_63;
            }
          }

          sub_216697664(v317, &unk_27CABF9C0, &qword_21701ADB0);
LABEL_63:
          v314 += v240;
          if (!--v312)
          {

            v667 = v762;
            goto LABEL_334;
          }
        }
      }

      v667 = MEMORY[0x277D84F90];
LABEL_334:
      v764[0] = v667;
      OUTLINED_FUNCTION_101_4();
      v680 = &v730;
LABEL_341:
      v232 = *(v680 - 32);
      sub_216C6C5E8(v679);
      sub_2168C448C(v235);
      sub_216697664(v235, &unk_27CABF9C0, &qword_21701ADB0);
      v675 = type metadata accessor for ContentDescriptor;
LABEL_342:
      v562 = v675;
      v563 = v232;
LABEL_343:
      sub_2168CBAB0(v563, v562);
LABEL_344:
      v666 = v764[0];
      goto LABEL_345;
    case 0x1Cu:
      v358 = *(*v259 + 16);
      if (!v358)
      {
        goto LABEL_324;
      }

      v359 = *(v697[14] + 60);
      OUTLINED_FUNCTION_8_26();
      v757 = v360;
      v758 = (v760 + 32);
      v762 = MEMORY[0x277D84F90];
      v362 = *(v361 + 72);
      v363 = v763;
      v364 = v720;
      while (1)
      {
        OUTLINED_FUNCTION_126_0();
        OUTLINED_FUNCTION_59_7(v364 + v359);
        OUTLINED_FUNCTION_35_13();
        if (v267)
        {
          OUTLINED_FUNCTION_89_9();
          OUTLINED_FUNCTION_61_6();
          v368 = v743;
          OUTLINED_FUNCTION_38_2();
          __swift_storeEnumTagSinglePayload(v365, v366, v367, v363);
        }

        else
        {
          v368 = v743;
          sub_216C6C5E8(v743);
          v369 = v759;
          OUTLINED_FUNCTION_89_9();
          OUTLINED_FUNCTION_0_60();
          sub_2168CBAB0(v369, v370);
          OUTLINED_FUNCTION_31_2(v368, 1, v363);
          if (!v371)
          {
            v372 = *v758;
            (*v758)(v727, v368, v363);
            v373 = swift_isUniquelyReferenced_nonNull_native();
            if ((v373 & 1) == 0)
            {
              OUTLINED_FUNCTION_31_19();
              v762 = v376;
            }

            OUTLINED_FUNCTION_19_21();
            if (v271)
            {
              v377 = OUTLINED_FUNCTION_10_22(v374);
              sub_2169375D4(v377, v378, v379, v762);
              v762 = v380;
            }

            v375 = OUTLINED_FUNCTION_1_46();
            v363 = v763;
            v372(v375, v727, v763);
            v364 = v720;
            goto LABEL_94;
          }
        }

        sub_216697664(v368, &unk_27CABF9C0, &qword_21701ADB0);
LABEL_94:
        v232 += v362;
        if (!--v358)
        {
          goto LABEL_323;
        }
      }

    case 0x1Du:
      v400 = OUTLINED_FUNCTION_79_10();
      if (!v243)
      {
        goto LABEL_324;
      }

      v401 = *(v697[16] + 52);
      OUTLINED_FUNCTION_4_30(v400);
      OUTLINED_FUNCTION_65_6(MEMORY[0x277D84F90]);
      v402 = v736;
      while (1)
      {
        OUTLINED_FUNCTION_60_6();
        v403 = v746;
        OUTLINED_FUNCTION_59_7(v402 + v401);
        OUTLINED_FUNCTION_33_17();
        if (v267)
        {
          OUTLINED_FUNCTION_84_9();
          OUTLINED_FUNCTION_61_6();
          OUTLINED_FUNCTION_34_14(&a9);
        }

        else
        {
          OUTLINED_FUNCTION_16_24();
          OUTLINED_FUNCTION_67_1();
          sub_216C6C5E8(v404);
          v402 = v736;
          OUTLINED_FUNCTION_84_9();
          OUTLINED_FUNCTION_0_60();
          OUTLINED_FUNCTION_15_21(v405, v406);
          OUTLINED_FUNCTION_23_15();
          if (!v407)
          {
            OUTLINED_FUNCTION_64_9();
            v408 = OUTLINED_FUNCTION_40_9();
            (v254)(v408);
            v409 = swift_isUniquelyReferenced_nonNull_native();
            if ((v409 & 1) == 0)
            {
              OUTLINED_FUNCTION_31_19();
              v762 = v411;
            }

            OUTLINED_FUNCTION_19_21();
            if (v271)
            {
              v412 = OUTLINED_FUNCTION_10_22(v410);
              sub_2169375D4(v412, v413, v414, v762);
              v762 = v415;
            }

            OUTLINED_FUNCTION_1_46();
            OUTLINED_FUNCTION_18_17();
            (v254)();
            v254 = v761;
            v402 = v736;
            goto LABEL_125;
          }
        }

        sub_216697664(v403, &unk_27CABF9C0, &qword_21701ADB0);
LABEL_125:
        OUTLINED_FUNCTION_80_6();
        if (v267)
        {
          goto LABEL_323;
        }
      }

    case 0x20u:
      v260 = OUTLINED_FUNCTION_79_10();
      if (!v243)
      {
        goto LABEL_324;
      }

      v261 = *(v697[18] + 48);
      OUTLINED_FUNCTION_4_30(v260);
      OUTLINED_FUNCTION_65_6(MEMORY[0x277D84F90]);
      v262 = v738;
      while (1)
      {
        OUTLINED_FUNCTION_60_6();
        v263 = v748;
        OUTLINED_FUNCTION_59_7(v262 + v261);
        OUTLINED_FUNCTION_33_17();
        if (v267)
        {
          OUTLINED_FUNCTION_81_4();
          OUTLINED_FUNCTION_61_6();
          OUTLINED_FUNCTION_34_14(&a11);
        }

        else
        {
          OUTLINED_FUNCTION_16_24();
          OUTLINED_FUNCTION_67_1();
          sub_216C6C5E8(v264);
          v262 = v738;
          OUTLINED_FUNCTION_81_4();
          OUTLINED_FUNCTION_0_60();
          OUTLINED_FUNCTION_15_21(v265, v266);
          OUTLINED_FUNCTION_23_15();
          if (!v267)
          {
            OUTLINED_FUNCTION_64_9();
            v268 = OUTLINED_FUNCTION_40_9();
            (v254)(v268);
            v269 = swift_isUniquelyReferenced_nonNull_native();
            if ((v269 & 1) == 0)
            {
              OUTLINED_FUNCTION_31_19();
              v762 = v272;
            }

            OUTLINED_FUNCTION_19_21();
            if (v271)
            {
              v273 = OUTLINED_FUNCTION_10_22(v270);
              sub_2169375D4(v273, v274, v275, v762);
              v762 = v276;
            }

            OUTLINED_FUNCTION_1_46();
            OUTLINED_FUNCTION_18_17();
            (v254)();
            v254 = v761;
            v262 = v738;
            goto LABEL_16;
          }
        }

        sub_216697664(v263, &unk_27CABF9C0, &qword_21701ADB0);
LABEL_16:
        OUTLINED_FUNCTION_80_6();
        if (v267)
        {
          goto LABEL_323;
        }
      }

    case 0x25u:
      v650 = OUTLINED_FUNCTION_79_10();
      if (!v243)
      {
        goto LABEL_324;
      }

      v651 = *(v697[20] + 20);
      OUTLINED_FUNCTION_4_30(v650);
      OUTLINED_FUNCTION_65_6(MEMORY[0x277D84F90]);
      v652 = v739;
      while (1)
      {
        OUTLINED_FUNCTION_60_6();
        v653 = v749;
        OUTLINED_FUNCTION_59_7(v652 + v651);
        OUTLINED_FUNCTION_33_17();
        if (v267)
        {
          OUTLINED_FUNCTION_88_5();
          OUTLINED_FUNCTION_61_6();
          OUTLINED_FUNCTION_34_14(&a12);
        }

        else
        {
          OUTLINED_FUNCTION_16_24();
          OUTLINED_FUNCTION_67_1();
          sub_216C6C5E8(v654);
          v652 = v739;
          OUTLINED_FUNCTION_88_5();
          OUTLINED_FUNCTION_0_60();
          OUTLINED_FUNCTION_15_21(v655, v656);
          OUTLINED_FUNCTION_23_15();
          if (!v657)
          {
            OUTLINED_FUNCTION_64_9();
            v658 = OUTLINED_FUNCTION_40_9();
            (v254)(v658);
            v659 = swift_isUniquelyReferenced_nonNull_native();
            if ((v659 & 1) == 0)
            {
              OUTLINED_FUNCTION_31_19();
              v762 = v661;
            }

            OUTLINED_FUNCTION_19_21();
            if (v271)
            {
              v662 = OUTLINED_FUNCTION_10_22(v660);
              sub_2169375D4(v662, v663, v664, v762);
              v762 = v665;
            }

            OUTLINED_FUNCTION_1_46();
            OUTLINED_FUNCTION_18_17();
            (v254)();
            v254 = v761;
            v652 = v739;
            goto LABEL_321;
          }
        }

        sub_216697664(v653, &unk_27CABF9C0, &qword_21701ADB0);
LABEL_321:
        OUTLINED_FUNCTION_80_6();
        if (v267)
        {
          goto LABEL_323;
        }
      }

    case 0x30u:
      v632 = OUTLINED_FUNCTION_79_10();
      if (!v243)
      {
        goto LABEL_324;
      }

      v633 = *(v711[0] + 52);
      OUTLINED_FUNCTION_4_30(v632);
      OUTLINED_FUNCTION_65_6(MEMORY[0x277D84F90]);
      v634 = v740;
      while (1)
      {
        OUTLINED_FUNCTION_60_6();
        v635 = v750;
        OUTLINED_FUNCTION_59_7(v634 + v633);
        OUTLINED_FUNCTION_33_17();
        if (v267)
        {
          OUTLINED_FUNCTION_20_18();
          sub_2168CBAB0(v634, v636);
          OUTLINED_FUNCTION_61_6();
          OUTLINED_FUNCTION_34_14(&a13);
        }

        else
        {
          OUTLINED_FUNCTION_16_24();
          OUTLINED_FUNCTION_67_1();
          sub_216C6C5E8(v637);
          v634 = v740;
          OUTLINED_FUNCTION_20_18();
          sub_2168CBAB0(v634, v638);
          OUTLINED_FUNCTION_0_60();
          OUTLINED_FUNCTION_15_21(v639, v640);
          OUTLINED_FUNCTION_23_15();
          if (!v641)
          {
            OUTLINED_FUNCTION_64_9();
            v642 = OUTLINED_FUNCTION_40_9();
            (v254)(v642);
            v643 = swift_isUniquelyReferenced_nonNull_native();
            if ((v643 & 1) == 0)
            {
              OUTLINED_FUNCTION_31_19();
              v762 = v645;
            }

            OUTLINED_FUNCTION_19_21();
            if (v271)
            {
              v646 = OUTLINED_FUNCTION_10_22(v644);
              sub_2169375D4(v646, v647, v648, v762);
              v762 = v649;
            }

            OUTLINED_FUNCTION_1_46();
            OUTLINED_FUNCTION_18_17();
            (v254)();
            v254 = v761;
            v634 = v740;
            goto LABEL_303;
          }
        }

        sub_216697664(v635, &unk_27CABF9C0, &qword_21701ADB0);
LABEL_303:
        OUTLINED_FUNCTION_80_6();
        if (v267)
        {
          goto LABEL_323;
        }
      }

    case 0x31u:
      OUTLINED_FUNCTION_63_7();
      OUTLINED_FUNCTION_121_3();
      v293 = *(*&v235[*(v707 + 24)] + 16);
      if (!v293)
      {
        v762 = MEMORY[0x277D84F90];
LABEL_332:
        OUTLINED_FUNCTION_72_9();
        v678 = v732;
LABEL_337:
        v472 = *(v678 - 32);
LABEL_338:
        sub_2168CBAB0(v472, v471);
        goto LABEL_346;
      }

      OUTLINED_FUNCTION_103_7();
      v762 = MEMORY[0x277D84F90];
      v295 = *(v294 + 72);
      OUTLINED_FUNCTION_117_5();
      while (1)
      {
        OUTLINED_FUNCTION_49_0();
        sub_2168CBA5C();
        OUTLINED_FUNCTION_143_1();
        OUTLINED_FUNCTION_35_13();
        if (v267)
        {
          OUTLINED_FUNCTION_20_18();
          sub_2168CBAB0(v240, v296);
          sub_216697664(v259, &qword_27CAB6A00, &unk_217016B60);
          OUTLINED_FUNCTION_38_2();
          __swift_storeEnumTagSinglePayload(v297, v298, v299, v763);
        }

        else
        {
          sub_216C6C5E8(v255);
          OUTLINED_FUNCTION_20_18();
          sub_2168CBAB0(v240, v300);
          OUTLINED_FUNCTION_0_60();
          sub_2168CBAB0(v259, v301);
          v302 = OUTLINED_FUNCTION_104_5();
          OUTLINED_FUNCTION_31_2(v302, v303, v763);
          if (!v304)
          {
            v240 = *v759;
            (*v759)(v732[1], v255, v763);
            v305 = swift_isUniquelyReferenced_nonNull_native();
            if ((v305 & 1) == 0)
            {
              OUTLINED_FUNCTION_31_19();
              v762 = v307;
            }

            OUTLINED_FUNCTION_140_0();
            if (v271)
            {
              v308 = OUTLINED_FUNCTION_10_22(v306);
              sub_2169375D4(v308, v309, v310, v762);
              v762 = v311;
            }

            OUTLINED_FUNCTION_2_39();
            OUTLINED_FUNCTION_138_3();
            (v240)();
            OUTLINED_FUNCTION_117_5();
            goto LABEL_48;
          }
        }

        sub_216697664(v255, &unk_27CABF9C0, &qword_21701ADB0);
LABEL_48:
        v235 += v295;
        if (!--v293)
        {
          goto LABEL_332;
        }
      }

    case 0x33u:
      v605 = *v259;
      v606 = *(*v259 + 16);
      if (v606)
      {
        v764[0] = MEMORY[0x277D84F90];
        sub_2168CAEF4(v606);
        OUTLINED_FUNCTION_12_23();
        v608 = v605 + v607;
        v610 = *(v609 + 72);
        v611 = v764[0];
        do
        {
          v612 = v755;
          sub_2168CBA5C();
          v613 = sub_2168C46AC();
          sub_2168CBAB0(v612, type metadata accessor for SplitPosterLockup);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_216AB97E8(0, *(v611 + 16) + 1, 1);
            v611 = v764[0];
          }

          v615 = *(v611 + 16);
          v614 = *(v611 + 24);
          if (v615 >= v614 >> 1)
          {
            sub_216AB97E8(v614 > 1, v615 + 1, 1);
            v611 = v764[0];
          }

          *(v611 + 16) = v615 + 1;
          *(v611 + 8 * v615 + 32) = v613;
          v608 += v610;
          --v606;
        }

        while (v606);
      }

      else
      {

        v611 = MEMORY[0x277D84F90];
      }

      v681 = sub_216B3522C(v611);
      v682 = 0;
      v683 = MEMORY[0x277D84F90];
      v684 = MEMORY[0x277D84F90];
      while (2)
      {
        if (v681 == v682)
        {

          v764[0] = v683;
          v693 = sub_216B3522C(v684);
          for (i = 0; ; i = v695)
          {
            if (v693 == i)
            {

              goto LABEL_344;
            }

            if (i >= *(v684 + 16))
            {
              break;
            }

            v695 = i + 1;
            v696 = sub_21700DF14();
            sub_216BDD204(v696);
          }
        }

        else
        {
          if (v682 < *(v611 + 16))
          {
            v685 = *(v611 + 8 * v682++ + 32);
            if (v685)
            {
              sub_21700DF14();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v688 = OUTLINED_FUNCTION_29_0();
                sub_216937908(v688, v689, v690, v684);
                v684 = v691;
              }

              v687 = *(v684 + 16);
              v686 = *(v684 + 24);
              if (v687 >= v686 >> 1)
              {
                sub_216937908(v686 > 1, v687 + 1, 1, v684);
                v684 = v692;
              }

              *(v684 + 16) = v687 + 1;
              *(v684 + 8 * v687 + 32) = v685;
            }

            continue;
          }

          __break(1u);
        }

        break;
      }

      __break(1u);
LABEL_364:
      __break(1u);
      return;
    case 0x34u:
      v616 = OUTLINED_FUNCTION_79_10();
      if (!v243)
      {
        goto LABEL_324;
      }

      v617 = *(v697[23] + 80);
      OUTLINED_FUNCTION_4_30(v616);
      OUTLINED_FUNCTION_65_6(MEMORY[0x277D84F90]);
      v618 = v741;
      while (1)
      {
        OUTLINED_FUNCTION_60_6();
        v619 = v751;
        OUTLINED_FUNCTION_59_7(v618 + v617);
        OUTLINED_FUNCTION_33_17();
        if (v267)
        {
          OUTLINED_FUNCTION_91_9();
          OUTLINED_FUNCTION_61_6();
          OUTLINED_FUNCTION_34_14(&a14);
        }

        else
        {
          OUTLINED_FUNCTION_16_24();
          OUTLINED_FUNCTION_67_1();
          sub_216C6C5E8(v620);
          v618 = v741;
          OUTLINED_FUNCTION_91_9();
          OUTLINED_FUNCTION_0_60();
          OUTLINED_FUNCTION_15_21(v621, v622);
          OUTLINED_FUNCTION_23_15();
          if (!v623)
          {
            OUTLINED_FUNCTION_64_9();
            v624 = OUTLINED_FUNCTION_40_9();
            (v254)(v624);
            v625 = swift_isUniquelyReferenced_nonNull_native();
            if ((v625 & 1) == 0)
            {
              OUTLINED_FUNCTION_31_19();
              v762 = v627;
            }

            OUTLINED_FUNCTION_19_21();
            if (v271)
            {
              v628 = OUTLINED_FUNCTION_10_22(v626);
              sub_2169375D4(v628, v629, v630, v762);
              v762 = v631;
            }

            OUTLINED_FUNCTION_1_46();
            OUTLINED_FUNCTION_18_17();
            (v254)();
            v254 = v761;
            v618 = v741;
            goto LABEL_287;
          }
        }

        sub_216697664(v619, &unk_27CABF9C0, &qword_21701ADB0);
LABEL_287:
        OUTLINED_FUNCTION_80_6();
        if (v267)
        {
          goto LABEL_323;
        }
      }

    case 0x35u:
      OUTLINED_FUNCTION_63_7();
      OUTLINED_FUNCTION_121_3();
      OUTLINED_FUNCTION_43_12();
      sub_216CE2A08();
      v762 = sub_2168C42C0();
      sub_216697664(v232, &unk_27CABF9C0, &qword_21701ADB0);
      v338 = type metadata accessor for SuperHeroLockup;
      goto LABEL_307;
    case 0x38u:
      v564 = OUTLINED_FUNCTION_79_10();
      if (!v243)
      {
        goto LABEL_324;
      }

      v565 = *(v710[0] + 72);
      OUTLINED_FUNCTION_4_30(v564);
      OUTLINED_FUNCTION_65_6(MEMORY[0x277D84F90]);
      v566 = v737;
      while (1)
      {
        OUTLINED_FUNCTION_60_6();
        v567 = v752;
        OUTLINED_FUNCTION_59_7(v566 + v565);
        OUTLINED_FUNCTION_33_17();
        if (v267)
        {
          OUTLINED_FUNCTION_22_24();
          sub_2168CBAB0(v566, v568);
          OUTLINED_FUNCTION_61_6();
          OUTLINED_FUNCTION_34_14(&a15);
        }

        else
        {
          OUTLINED_FUNCTION_16_24();
          OUTLINED_FUNCTION_67_1();
          sub_216C6C5E8(v569);
          v566 = v737;
          OUTLINED_FUNCTION_22_24();
          sub_2168CBAB0(v566, v570);
          OUTLINED_FUNCTION_0_60();
          OUTLINED_FUNCTION_15_21(v571, v572);
          OUTLINED_FUNCTION_23_15();
          if (!v573)
          {
            OUTLINED_FUNCTION_64_9();
            v574 = OUTLINED_FUNCTION_40_9();
            (v254)(v574);
            v575 = swift_isUniquelyReferenced_nonNull_native();
            if ((v575 & 1) == 0)
            {
              OUTLINED_FUNCTION_31_19();
              v762 = v577;
            }

            OUTLINED_FUNCTION_19_21();
            if (v271)
            {
              v578 = OUTLINED_FUNCTION_10_22(v576);
              sub_2169375D4(v578, v579, v580, v762);
              v762 = v581;
            }

            OUTLINED_FUNCTION_1_46();
            OUTLINED_FUNCTION_18_17();
            (v254)();
            v254 = v761;
            v566 = v737;
            goto LABEL_247;
          }
        }

        sub_216697664(v567, &unk_27CABF9C0, &qword_21701ADB0);
LABEL_247:
        OUTLINED_FUNCTION_80_6();
        if (v267)
        {
          goto LABEL_323;
        }
      }

    case 0x39u:
      v381 = OUTLINED_FUNCTION_79_10();
      if (!v243)
      {
        goto LABEL_324;
      }

      OUTLINED_FUNCTION_4_30(v381);
      OUTLINED_FUNCTION_65_6(MEMORY[0x277D84F90]);
      v382 = v733;
      do
      {
        OUTLINED_FUNCTION_60_6();
        v383 = v753;
        OUTLINED_FUNCTION_93_3();
        sub_2168CBB08();
        OUTLINED_FUNCTION_33_17();
        if (v267)
        {
          OUTLINED_FUNCTION_21_21();
          sub_2168CBAB0(v382, v384);
          v385 = OUTLINED_FUNCTION_90();
          sub_216697664(v385, v386, &unk_217016B60);
          OUTLINED_FUNCTION_34_14(&a16);
LABEL_103:
          sub_216697664(v383, &unk_27CABF9C0, &qword_21701ADB0);
          goto LABEL_109;
        }

        OUTLINED_FUNCTION_67_1();
        sub_216C6C5E8(v387);
        v382 = v733;
        OUTLINED_FUNCTION_21_21();
        sub_2168CBAB0(v382, v388);
        OUTLINED_FUNCTION_0_60();
        v389 = OUTLINED_FUNCTION_100_7();
        sub_2168CBAB0(v389, v390);
        OUTLINED_FUNCTION_23_15();
        if (v391)
        {
          goto LABEL_103;
        }

        OUTLINED_FUNCTION_64_9();
        v392 = OUTLINED_FUNCTION_40_9();
        (v254)(v392);
        v393 = swift_isUniquelyReferenced_nonNull_native();
        if ((v393 & 1) == 0)
        {
          OUTLINED_FUNCTION_31_19();
          v762 = v395;
        }

        OUTLINED_FUNCTION_19_21();
        if (v271)
        {
          v396 = OUTLINED_FUNCTION_10_22(v394);
          sub_2169375D4(v396, v397, v398, v762);
          v762 = v399;
        }

        OUTLINED_FUNCTION_1_46();
        OUTLINED_FUNCTION_18_17();
        (v254)();
        v254 = v761;
        v382 = v733;
LABEL_109:
        OUTLINED_FUNCTION_80_6();
      }

      while (!v267);
LABEL_323:

LABEL_346:
      OUTLINED_FUNCTION_26();
      return;
    case 0x3Au:
      OUTLINED_FUNCTION_63_7();
      OUTLINED_FUNCTION_121_3();
      OUTLINED_FUNCTION_43_12();
      sub_216CE2AD8();
      v762 = sub_2168C42C0();
      sub_216697664(v232, &unk_27CABF9C0, &qword_21701ADB0);
      v338 = type metadata accessor for TVMovieDescription;
      goto LABEL_307;
    case 0x3Bu:
      OUTLINED_FUNCTION_63_7();
      OUTLINED_FUNCTION_121_3();
      OUTLINED_FUNCTION_43_12();
      sub_216CE2BD4();
      v762 = sub_2168C42C0();
      sub_216697664(v232, &unk_27CABF9C0, &qword_21701ADB0);
      v338 = type metadata accessor for TVMovieDetailHeaderLockup;
LABEL_307:
      v471 = v338;
      v472 = v235;
      goto LABEL_338;
    case 0x3Du:
      OUTLINED_FUNCTION_79_10();
      if (!v243)
      {
LABEL_324:

        v666 = MEMORY[0x277D84F90];
LABEL_345:
        v762 = v666;
        goto LABEL_346;
      }

      OUTLINED_FUNCTION_8_26();
      OUTLINED_FUNCTION_118_5();
      v758 = v473;
      v759 = v474;
      OUTLINED_FUNCTION_65_6(MEMORY[0x277D84F90]);
      break;
    default:
      OUTLINED_FUNCTION_63_7();
      sub_2168CB998();
      OUTLINED_FUNCTION_101_4();
      sub_216CE27DC();
      v762 = sub_2168C42C0();
      sub_216697664(v235, &unk_27CABF9C0, &qword_21701ADB0);
      OUTLINED_FUNCTION_75_5();
      v472 = v254;
      goto LABEL_338;
  }

  while (1)
  {
    OUTLINED_FUNCTION_60_6();
    v475 = v754;
    OUTLINED_FUNCTION_93_3();
    sub_2168CBB08();
    OUTLINED_FUNCTION_35_13();
    if (v267)
    {
      OUTLINED_FUNCTION_92_5();
      v476 = OUTLINED_FUNCTION_90();
      sub_216697664(v476, v477, &unk_217016B60);
      OUTLINED_FUNCTION_34_14(&a17);
    }

    else
    {
      OUTLINED_FUNCTION_67_1();
      sub_216C6C5E8(v478);
      OUTLINED_FUNCTION_92_5();
      OUTLINED_FUNCTION_0_60();
      v479 = OUTLINED_FUNCTION_100_7();
      sub_2168CBAB0(v479, v480);
      OUTLINED_FUNCTION_23_15();
      if (!v481)
      {
        OUTLINED_FUNCTION_64_9();
        v482 = OUTLINED_FUNCTION_40_9();
        unk_217016B60(v482);
        v483 = swift_isUniquelyReferenced_nonNull_native();
        if ((v483 & 1) == 0)
        {
          OUTLINED_FUNCTION_31_19();
          v762 = v486;
        }

        OUTLINED_FUNCTION_19_21();
        if (v271)
        {
          v487 = OUTLINED_FUNCTION_10_22(v484);
          sub_2169375D4(v487, v488, v489, v762);
          v762 = v490;
        }

        OUTLINED_FUNCTION_1_46();
        OUTLINED_FUNCTION_18_17();
        unk_217016B60(v485);
        goto LABEL_182;
      }
    }

    sub_216697664(v475, &unk_27CABF9C0, &qword_21701ADB0);
LABEL_182:
    OUTLINED_FUNCTION_80_6();
    if (v267)
    {
      goto LABEL_323;
    }
  }
}

uint64_t sub_2168C42C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_217006924();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2168CBB08();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_216697664(v2, &unk_27CABF9C0, &qword_21701ADB0);
    return 0;
  }

  else
  {
    v8 = *(v4 + 32);
    v8(v6, v2, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB858, &qword_21703F5F0);
    v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_217013DA0;
    v8((v7 + v9), v6, v3);
  }

  return v7;
}

uint64_t sub_2168C448C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_217006924();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  sub_2168CBB08();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    return sub_216697664(v4, &unk_27CABF9C0, &qword_21701ADB0);
  }

  v13 = *(v6 + 32);
  v13(v11, v4, v5);
  v14.n128_f64[0] = (*(v6 + 16))(v8, v11, v5);
  sub_216DF3AB4(v14);
  v15 = *(*v1 + 16);
  sub_216DF3C18(v15);
  (*(v6 + 8))(v11, v5);
  v16 = *v1;
  *(v16 + 16) = v15 + 1;
  result = (v13)(v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v8, v5);
  *v1 = v16;
  return result;
}

uint64_t sub_2168C46AC()
{
  v0 = sub_217006924();
  v34 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v36 = v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v32 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB850, &unk_2170241E0);
  v12 = *(v3 + 72);
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_217013D90;
  v32[0] = v14;
  v15 = v14 + v13;
  sub_216CE3604();
  type metadata accessor for SplitPosterLockup(0);
  type metadata accessor for SplitPosterLockup.Item(0);
  sub_2168CBB08();
  v16 = type metadata accessor for ContentDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v16) == 1)
  {
    sub_216697664(v11, &qword_27CAB6A00, &unk_217016B60);
    __swift_storeEnumTagSinglePayload(v15 + v12, 1, 1, v0);
  }

  else
  {
    sub_216C6C5E8(v15 + v12);
    sub_2168CBAB0(v11, type metadata accessor for ContentDescriptor);
  }

  v17 = v0;
  v18 = 0;
  v35 = (v34 + 32);
  v19 = MEMORY[0x277D84F90];
  v20 = &unk_27CABF9C0;
  v32[1] = v12;
  v33 = v0;
  do
  {
    v21 = v18;
    sub_2168CBB08();
    sub_2168CBB5C();
    if (__swift_getEnumTagSinglePayload(v5, 1, v17) == 1)
    {
      sub_216697664(v5, v20, &qword_21701ADB0);
    }

    else
    {
      v22 = v20;
      v23 = v8;
      v24 = v15;
      v25 = *v35;
      (*v35)(v36, v5, v17);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2169375D4(0, *(v19 + 16) + 1, 1, v19);
        v19 = v29;
      }

      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_2169375D4(v26 > 1, v27 + 1, 1, v19);
        v19 = v30;
      }

      *(v19 + 16) = v27 + 1;
      v28 = v19 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v27;
      v17 = v33;
      v25(v28, v36, v33);
      v15 = v24;
      v8 = v23;
      v20 = v22;
    }

    v18 = 1;
  }

  while ((v21 & 1) == 0);
  swift_setDeallocating();
  sub_2169FAC18();
  if (!*(v19 + 16))
  {

    return 0;
  }

  return v19;
}

void sub_2168C4AF4()
{
  OUTLINED_FUNCTION_49();
  v279 = v1;
  v280 = v0;
  v277 = v2;
  v278 = v3;
  v276 = v4;
  v5 = type metadata accessor for TVMovieDetailHeaderLockup(0);
  v6 = OUTLINED_FUNCTION_36(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v270 = v7;
  v8 = OUTLINED_FUNCTION_4_1();
  v9 = type metadata accessor for TVMovieDescription(v8);
  v10 = OUTLINED_FUNCTION_36(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_6_0();
  v269 = v11;
  v12 = OUTLINED_FUNCTION_4_1();
  v13 = type metadata accessor for SuperHeroLockup(v12);
  v14 = OUTLINED_FUNCTION_36(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_0();
  v16 = OUTLINED_FUNCTION_8_0(v15);
  v262 = type metadata accessor for SongDetailList(v16);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_0();
  v271 = v18;
  v19 = OUTLINED_FUNCTION_4_1();
  v266 = type metadata accessor for SocialProfileHorizontalLockupSection(v19);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_0();
  v22 = OUTLINED_FUNCTION_8_0(v21);
  v261 = type metadata accessor for SearchResultsListSection(v22);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_0();
  v268 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB798, &qword_217024078);
  OUTLINED_FUNCTION_36(v25);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v27);
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7940, &unk_21701C440);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_105();
  v30 = OUTLINED_FUNCTION_8_0(v29);
  v31 = type metadata accessor for PlaylistDetailHeaderLockup(v30);
  v32 = OUTLINED_FUNCTION_36(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_0();
  v34 = OUTLINED_FUNCTION_8_0(v33);
  v35 = type metadata accessor for HeaderComponentModel(v34);
  v36 = OUTLINED_FUNCTION_36(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_0();
  v38 = OUTLINED_FUNCTION_8_0(v37);
  v39 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockup(v38);
  v40 = OUTLINED_FUNCTION_36(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_0();
  v42 = OUTLINED_FUNCTION_8_0(v41);
  v43 = type metadata accessor for ArtistLatestReleaseLockup(v42);
  v44 = OUTLINED_FUNCTION_36(v43);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_6_0();
  v46 = OUTLINED_FUNCTION_8_0(v45);
  v263 = type metadata accessor for ArtistDetailHeaderLockup(v46);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_7();
  v50 = v49 - v48;
  sub_217006A94();
  OUTLINED_FUNCTION_1();
  v273 = v51;
  v274 = v52;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_6_0();
  v275 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  OUTLINED_FUNCTION_36(v54);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_105();
  v272 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7A0, &qword_217024080);
  OUTLINED_FUNCTION_36(v57);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v58);
  v60 = &v260[-v59];
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7938, &unk_217017C10);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v62);
  v63 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v64);
  v66 = &v260[-((v65 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v67);
  v69 = &v260[-v68];
  v70 = type metadata accessor for AlbumDetailHeaderLockup(0);
  v71 = OUTLINED_FUNCTION_36(v70);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_7();
  v74 = v73 - v72;
  type metadata accessor for SectionContent(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_7();
  v78 = (v77 - v76);
  OUTLINED_FUNCTION_74_8();
  sub_2168CBA5C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v148 = *v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7D8, &unk_21703F640);
      OUTLINED_FUNCTION_17_25();
      sub_2168CB998();
      OUTLINED_FUNCTION_124_4();
      v149 = v272;
      sub_2168CBA5C();
      OUTLINED_FUNCTION_41();
      __swift_storeEnumTagSinglePayload(v150, v151, v152, v63);
      v153 = v275;
      (*(v274 + 16))(v275, v276, v273);
      OUTLINED_FUNCTION_109_4();
      v154 = v278;

      sub_2168BD398(v149, v153, v63, v154, v60, v148);
      OUTLINED_FUNCTION_0_60();
      sub_2168CBAB0(v69, v155);
      v156 = OUTLINED_FUNCTION_104_5();
      OUTLINED_FUNCTION_31_2(v156, v157, v61);
      if (!v158)
      {
        v78 = &qword_27CAB7938;
        sub_2168CBB5C();
        OUTLINED_FUNCTION_146_1();
        type metadata accessor for MappedSection.Content(0);
        OUTLINED_FUNCTION_30_15();
        goto LABEL_68;
      }

      v159 = &qword_27CABB7A0;
      v160 = &qword_217024080;
      v161 = v60;
      goto LABEL_60;
    case 2u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xCu:
    case 0xDu:
    case 0x11u:
    case 0x12u:
    case 0x16u:
    case 0x18u:
    case 0x1Bu:
    case 0x1Fu:
    case 0x23u:
    case 0x24u:
    case 0x27u:
    case 0x28u:
    case 0x29u:
    case 0x2Au:
    case 0x2Bu:
    case 0x2Cu:
    case 0x2Du:
    case 0x2Fu:
    case 0x32u:
    case 0x3Cu:
      OUTLINED_FUNCTION_37_14();
      type metadata accessor for MappedSection.Content(0);
      OUTLINED_FUNCTION_29_15();
      goto LABEL_68;
    case 3u:
    case 0x13u:
    case 0x1Eu:
    case 0x21u:
    case 0x22u:
    case 0x36u:
      sub_2168C62EC();
      OUTLINED_FUNCTION_78_7(v199, v200);
      OUTLINED_FUNCTION_29_15();
      goto LABEL_68;
    case 4u:
      OUTLINED_FUNCTION_49_0();
      sub_2168CB998();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB1B0, &qword_217023310);
      v78 = sub_2168C6574(v50, v50 + *(v263 + 44), v276, v277, v278);
      sub_2168CBAB0(v50, type metadata accessor for ArtistDetailHeaderLockup);
      if (v78)
      {
        goto LABEL_50;
      }

      goto LABEL_73;
    case 5u:
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_107_0();
      sub_2168CB998();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7D0, &qword_2170479B0);
      OUTLINED_FUNCTION_41_11();
      sub_216CCCDC0();
      v78 = v174;
      OUTLINED_FUNCTION_39_10();
      sub_2168CBAB0(v63, v175);
      if (v78)
      {
        goto LABEL_50;
      }

      goto LABEL_73;
    case 6u:
      OUTLINED_FUNCTION_49_0();
      v190 = v264;
      sub_2168CB998();
      sub_216EB043C(v276, v277, v278, v279);
      OUTLINED_FUNCTION_73_7();
      v192 = v190;
      goto LABEL_76;
    case 7u:
      v142 = OUTLINED_FUNCTION_3_46();
      v143(v142);
      OUTLINED_FUNCTION_109_4();
      OUTLINED_FUNCTION_110_4();
      v144 = OUTLINED_FUNCTION_13_16();
      v87 = sub_2168BB4BC(v144, v145, v146, v147);
      if (v87)
      {
        goto LABEL_67;
      }

      goto LABEL_73;
    case 0xBu:
      v119 = OUTLINED_FUNCTION_3_46();
      v120(v119);
      OUTLINED_FUNCTION_109_4();
      OUTLINED_FUNCTION_110_4();
      v121 = OUTLINED_FUNCTION_13_16();
      v87 = sub_2168BB6F8(v121, v122, v123, v124);
      if (v87)
      {
        goto LABEL_67;
      }

      goto LABEL_73;
    case 0xEu:
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_107_0();
      sub_2168CB998();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9728, &unk_217060FC0);
      OUTLINED_FUNCTION_41_11();
      sub_216CCDCDC();
      v78 = v104;
      v105 = OUTLINED_FUNCTION_69_9();
      sub_2168CBAB0(v105, v106);
      if (v78)
      {
        goto LABEL_50;
      }

      goto LABEL_73;
    case 0xFu:
      v136 = OUTLINED_FUNCTION_3_46();
      v137(v136);
      OUTLINED_FUNCTION_109_4();
      OUTLINED_FUNCTION_110_4();
      v138 = OUTLINED_FUNCTION_13_16();
      v87 = sub_2168BB938(v138, v139, v140, v141);
      if (v87)
      {
        goto LABEL_67;
      }

      goto LABEL_73;
    case 0x10u:
      v98 = OUTLINED_FUNCTION_3_46();
      v99(v98);
      OUTLINED_FUNCTION_109_4();
      OUTLINED_FUNCTION_110_4();
      v100 = OUTLINED_FUNCTION_13_16();
      v87 = sub_2168BBB70(v100, v101, v102, v103);
      if (v87)
      {
        goto LABEL_67;
      }

      goto LABEL_73;
    case 0x14u:
      v162 = OUTLINED_FUNCTION_3_46();
      v163(v162);
      OUTLINED_FUNCTION_109_4();
      OUTLINED_FUNCTION_110_4();
      v164 = OUTLINED_FUNCTION_13_16();
      v87 = sub_2168BBDA8(v164, v165, v166, v167);
      if (v87)
      {
        goto LABEL_67;
      }

      goto LABEL_73;
    case 0x15u:
      OUTLINED_FUNCTION_49_0();
      v176 = v268;
      sub_2168CB998();
      v177 = OUTLINED_FUNCTION_5_28();
      v178(v177);
      OUTLINED_FUNCTION_109_4();
      OUTLINED_FUNCTION_110_4();
      v179 = sub_21700DF14();
      v180 = sub_2168BC454(v179, v69, v63, v66);
      if (v180)
      {
        v182 = v180;
        v183 = v181;
        v184 = *(v176 + 1);
        *&v281[0] = *v176;
        *(&v281[0] + 1) = v184;
        sub_21700DF14();
        v185 = v279;
        sub_21700F364();
        v186 = *(v261 + 28);
        v187 = *(type metadata accessor for MappedSearchResultsList(0) + 24);
        sub_21700D194();
        OUTLINED_FUNCTION_9();
        (*(v188 + 16))(v185 + v187, &v176[v186]);
        OUTLINED_FUNCTION_38_10();
        sub_2168CBAB0(v176, v189);
        v185[5] = v182;
        v185[6] = v183;
        v78 = type metadata accessor for MappedSection.Content(0);
        swift_storeEnumTagMultiPayload();
        goto LABEL_69;
      }

      OUTLINED_FUNCTION_38_10();
      sub_2168CBAB0(v176, v259);
      goto LABEL_73;
    case 0x17u:
      OUTLINED_FUNCTION_49_0();
      v206 = v271;
      sub_2168CB998();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7B8, &unk_217060FB0);
      v208 = v276;
      v207 = v277;
      v209 = v278;
      sub_216CCD51C();
      if (v210)
      {
        v211 = v210;
        v212 = v262;
        MEMORY[0x28223BE20](v210);
        *&v260[-32] = v208;
        *&v260[-24] = v207;
        *&v260[-16] = v209;
        v213 = sub_216CCA288();
        sub_216788294(v206 + *(v212 + 20), v281);
        *(&v282 + 1) = v211;
        v283 = v213;
        v214 = v279;
        v279[6] = v213;
        v215 = v281[1];
        *v214 = v281[0];
        *(v214 + 1) = v215;
        *(v214 + 2) = v282;
        type metadata accessor for MappedSection.Content(0);
        OUTLINED_FUNCTION_30_15();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_41();
        v219 = v211;
      }

      else
      {
        type metadata accessor for MappedSection.Content(0);
        OUTLINED_FUNCTION_38_2();
      }

      __swift_storeEnumTagSinglePayload(v216, v217, v218, v219);
      OUTLINED_FUNCTION_68_8();
      v192 = v206;
LABEL_76:
      sub_2168CBAB0(v192, v191);
      goto LABEL_71;
    case 0x19u:
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_107_0();
      sub_2168CB998();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7C8, &unk_21703D570);
      OUTLINED_FUNCTION_41_11();
      sub_216CCE0A8();
      v78 = v133;
      v134 = OUTLINED_FUNCTION_69_9();
      sub_2168CBAB0(v134, v135);
      if (v78)
      {
        goto LABEL_50;
      }

      goto LABEL_73;
    case 0x1Au:
      v232 = *v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7C0, &unk_217030FE0);
      OUTLINED_FUNCTION_17_25();
      sub_2168CB998();
      OUTLINED_FUNCTION_63_7();
      v233 = v272;
      sub_2168CBA5C();
      OUTLINED_FUNCTION_41();
      __swift_storeEnumTagSinglePayload(v234, v235, v236, v63);
      v237 = v275;
      (*(v274 + 16))(v275, v276, v273);
      OUTLINED_FUNCTION_109_4();
      v238 = v278;

      OUTLINED_FUNCTION_67_1();
      sub_2168BDCE0(v233, v237, v63, v238, v239, v232);
      OUTLINED_FUNCTION_0_60();
      sub_2168CBAB0(v66, v240);
      OUTLINED_FUNCTION_31_2(v74, 1, v265);
      if (v158)
      {
        v159 = &qword_27CABB798;
        v160 = &qword_217024078;
        v161 = v74;
LABEL_60:
        sub_216697664(v161, v159, v160);
LABEL_73:
        type metadata accessor for MappedSection.Content(0);
        OUTLINED_FUNCTION_38_2();
      }

      else
      {
        v78 = &qword_27CAB7940;
        OUTLINED_FUNCTION_107_0();
        sub_2168CBB5C();
        OUTLINED_FUNCTION_146_1();
        type metadata accessor for MappedSection.Content(0);
        OUTLINED_FUNCTION_30_15();
LABEL_68:
        swift_storeEnumTagMultiPayload();
LABEL_69:
        OUTLINED_FUNCTION_41();
        v258 = v78;
      }

      __swift_storeEnumTagSinglePayload(v255, v256, v257, v258);
LABEL_71:
      OUTLINED_FUNCTION_26();
      return;
    case 0x1Cu:
      v220 = OUTLINED_FUNCTION_3_46();
      v221(v220);
      OUTLINED_FUNCTION_109_4();
      OUTLINED_FUNCTION_110_4();
      v222 = OUTLINED_FUNCTION_13_16();
      v87 = sub_2168BBFE0(v222, v223, v224, v225);
      if (v87)
      {
        goto LABEL_67;
      }

      goto LABEL_73;
    case 0x1Du:
      v226 = OUTLINED_FUNCTION_3_46();
      v227(v226);
      OUTLINED_FUNCTION_109_4();
      OUTLINED_FUNCTION_110_4();
      v228 = OUTLINED_FUNCTION_13_16();
      v87 = sub_2168BC21C(v228, v229, v230, v231);
      if (v87)
      {
        goto LABEL_67;
      }

      goto LABEL_73;
    case 0x20u:
      v193 = OUTLINED_FUNCTION_3_46();
      v194(v193);
      OUTLINED_FUNCTION_109_4();
      OUTLINED_FUNCTION_110_4();
      v195 = OUTLINED_FUNCTION_13_16();
      v87 = sub_2168BC694(v195, v196, v197, v198);
      if (v87)
      {
        goto LABEL_67;
      }

      goto LABEL_73;
    case 0x25u:
      v81 = OUTLINED_FUNCTION_3_46();
      v82(v81);
      OUTLINED_FUNCTION_109_4();
      OUTLINED_FUNCTION_110_4();
      v83 = OUTLINED_FUNCTION_13_16();
      v87 = sub_2168BC8C4(v83, v84, v85, v86);
      if (v87)
      {
        goto LABEL_67;
      }

      goto LABEL_73;
    case 0x26u:
    case 0x2Eu:
      OUTLINED_FUNCTION_37_14();
      type metadata accessor for MappedSection.Content(0);
      OUTLINED_FUNCTION_29_15();
      goto LABEL_68;
    case 0x30u:
      v107 = OUTLINED_FUNCTION_3_46();
      v108(v107);
      OUTLINED_FUNCTION_109_4();
      OUTLINED_FUNCTION_110_4();
      v109 = OUTLINED_FUNCTION_13_16();
      v113 = sub_2168BCAFC(v109, v110, v111, v112);
      v115 = v279;
      if (!v113)
      {
        goto LABEL_73;
      }

      *v279 = v113;
      v115[1] = v114;
      goto LABEL_22;
    case 0x31u:
      OUTLINED_FUNCTION_49_0();
      v125 = v267;
      sub_2168CB998();
      v126 = OUTLINED_FUNCTION_5_28();
      v127(v126);
      OUTLINED_FUNCTION_109_4();
      OUTLINED_FUNCTION_110_4();
      v128 = sub_21700DF14();
      v129 = sub_2168BCAFC(v128, v69, v63, v66);
      v78 = v130;
      OUTLINED_FUNCTION_72_9();
      sub_2168CBAB0(v125, v131);
      v132 = v279;
      if (!v129)
      {
        goto LABEL_73;
      }

      *v279 = v129;
      v132[1] = v78;
LABEL_22:
      type metadata accessor for MappedSection.Content(0);
      OUTLINED_FUNCTION_30_15();
      goto LABEL_68;
    case 0x33u:
      v249 = OUTLINED_FUNCTION_3_46();
      v250(v249);
      OUTLINED_FUNCTION_109_4();
      OUTLINED_FUNCTION_110_4();
      v251 = OUTLINED_FUNCTION_13_16();
      v87 = sub_2168BF9A4(v251, v252, v253, v254);
      if (v87)
      {
        goto LABEL_67;
      }

      goto LABEL_73;
    case 0x34u:
      v243 = OUTLINED_FUNCTION_3_46();
      v244(v243);
      OUTLINED_FUNCTION_109_4();
      OUTLINED_FUNCTION_110_4();
      v245 = OUTLINED_FUNCTION_13_16();
      v87 = sub_2168BCD34(v245, v246, v247, v248);
      if (v87)
      {
        goto LABEL_67;
      }

      goto LABEL_73;
    case 0x35u:
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_107_0();
      sub_2168CB998();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB97E0, &unk_21701E200);
      OUTLINED_FUNCTION_41_11();
      sub_216CCE458();
      v78 = v89;
      v90 = OUTLINED_FUNCTION_69_9();
      sub_2168CBAB0(v90, v91);
      if (v78)
      {
        goto LABEL_50;
      }

      goto LABEL_73;
    case 0x37u:
      v241 = sub_2168C6424(*v78);
      OUTLINED_FUNCTION_78_7(v241, v242);
      OUTLINED_FUNCTION_29_15();
      goto LABEL_68;
    case 0x38u:
      v92 = OUTLINED_FUNCTION_3_46();
      v93(v92);
      OUTLINED_FUNCTION_109_4();
      OUTLINED_FUNCTION_110_4();
      v94 = OUTLINED_FUNCTION_13_16();
      v87 = sub_2168BC454(v94, v95, v96, v97);
      if (v87)
      {
        goto LABEL_67;
      }

      goto LABEL_73;
    case 0x39u:
      v201 = OUTLINED_FUNCTION_3_46();
      v202(v201);
      OUTLINED_FUNCTION_109_4();
      OUTLINED_FUNCTION_110_4();
      OUTLINED_FUNCTION_13_16();
      v87 = sub_2168BB2C8();
      if (v87)
      {
        goto LABEL_67;
      }

      goto LABEL_73;
    case 0x3Au:
      OUTLINED_FUNCTION_49_0();
      sub_2168CB998();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7B0, &qword_2170360E0);
      OUTLINED_FUNCTION_41_11();
      sub_216CCE7F8();
      v78 = v116;
      v117 = OUTLINED_FUNCTION_69_9();
      sub_2168CBAB0(v117, v118);
      if (v78)
      {
        goto LABEL_50;
      }

      goto LABEL_73;
    case 0x3Bu:
      OUTLINED_FUNCTION_49_0();
      sub_2168CB998();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7A8, &qword_21705EDD0);
      OUTLINED_FUNCTION_41_11();
      sub_216CCEC40();
      v78 = v203;
      v204 = OUTLINED_FUNCTION_69_9();
      sub_2168CBAB0(v204, v205);
      if (v78)
      {
        goto LABEL_50;
      }

      goto LABEL_73;
    case 0x3Du:
      v168 = OUTLINED_FUNCTION_3_46();
      v169(v168);
      OUTLINED_FUNCTION_109_4();
      OUTLINED_FUNCTION_110_4();
      v170 = OUTLINED_FUNCTION_13_16();
      v87 = sub_2168BCF70(v170, v171, v172, v173);
      if (!v87)
      {
        goto LABEL_73;
      }

LABEL_67:
      OUTLINED_FUNCTION_114_5(v87, v88);
      OUTLINED_FUNCTION_30_15();
      goto LABEL_68;
    default:
      OUTLINED_FUNCTION_49_0();
      sub_2168CB998();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB418, &qword_21704BD50);
      sub_216CCD910();
      v78 = v79;
      OUTLINED_FUNCTION_75_5();
      sub_2168CBAB0(v74, v80);
      if (!v78)
      {
        goto LABEL_73;
      }

LABEL_50:
      OUTLINED_FUNCTION_122_4();
      OUTLINED_FUNCTION_30_15();
      goto LABEL_68;
  }
}

void sub_2168C62EC()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v4(0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  v7 = &v10[-v6];
  sub_21700F954();
  v8 = 0;
  v9 = *(v3 + 16);
  while (1)
  {
    if (v9 == v8)
    {
      memcpy(v11, v10, sizeof(v11));
      sub_21700F934();
      OUTLINED_FUNCTION_26();
      return;
    }

    if (v8 >= *(v3 + 16))
    {
      break;
    }

    sub_2168CBA5C();
    ++v8;
    sub_21700F354();
    sub_2168CBAB0(v7, v1);
  }

  __break(1u);
}

void *sub_2168C6424(uint64_t a1)
{
  v2 = type metadata accessor for TextListComponentModel(0) - 8;
  MEMORY[0x28223BE20](v2);
  v4 = __src - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21700F954();
  v6 = 0;
  v7 = *(a1 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      memcpy(__dst, __src, sizeof(__dst));
      sub_21700F934();
      return a1;
    }

    if (v6 >= *(a1 + 16))
    {
      break;
    }

    sub_2168CBA5C();
    ++v6;
    sub_21700F354();
    result = sub_2168CBAB0(v4, type metadata accessor for TextListComponentModel);
  }

  __break(1u);
  return result;
}

uint64_t sub_2168C6574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = type metadata accessor for ArtistDetailHeaderLockup(0);
  MEMORY[0x28223BE20](v29);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7F8, qword_217046A70);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30[-v12];
  v14 = sub_21700C384();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v30[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2168C6CEC(a3, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_216697664(v13, &qword_27CABB7F8, qword_217046A70);
    if (qword_27CAB6108 != -1)
    {
      swift_once();
    }

    v18 = sub_217007CA4();
    __swift_project_value_buffer(v18, qword_27CACA410);
    sub_2168CBA5C();
    v19 = sub_217007C84();
    v20 = sub_21700ED84();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = v22;
      *v21 = 136446466;
      *(v21 + 4) = sub_2166A85FC(0xD000000000000018, 0x8000000217083B90, &v31);
      *(v21 + 12) = 2082;
      sub_216788294(&v10[*(v29 + 20)], v30);
      sub_2168CBAB0(v10, type metadata accessor for ArtistDetailHeaderLockup);
      v23 = sub_21700F324();
      v25 = v24;
      sub_216788110(v30);
      v26 = sub_2166A85FC(v23, v25, &v31);

      *(v21 + 14) = v26;
      _os_log_impl(&dword_216679000, v19, v20, "Dropped %{public}s container item with id: %{public}s, no container music item.", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CEA1440](v22, -1, -1);
      MEMORY[0x21CEA1440](v21, -1, -1);
    }

    else
    {
      sub_2168CBAB0(v10, type metadata accessor for ArtistDetailHeaderLockup);
    }

    return 0;
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    v27 = sub_2168BED24(a1, v17, a3, a4, a5);
    (*(v15 + 8))(v17, v14);
  }

  return v27;
}

uint64_t sub_2168C6954()
{
  v1 = OUTLINED_FUNCTION_45_12();
  v17 = type metadata accessor for PlaylistTrackLockup(v1);
  OUTLINED_FUNCTION_71_9();
  v18 = sub_2168CB86C(v2, v0, &unk_2170490C4);
  v19 = OUTLINED_FUNCTION_85_7(&qword_280E3D5C8);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  v3 = OUTLINED_FUNCTION_26_19(&qword_27CABB1E8, &unk_27CABF910, &unk_217023330);
  OUTLINED_FUNCTION_94_2(v3, v4, v5, v6, v7, v8, v17, v18, &off_28293B280, v19);

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2(v9, v10, v11, v12, v13);
  sub_21700C924();
  OUTLINED_FUNCTION_9();
  v14 = OUTLINED_FUNCTION_105_5();
  return v15(v14);
}

uint64_t sub_2168C6A5C()
{
  v1 = OUTLINED_FUNCTION_45_12();
  v17 = type metadata accessor for ArtistDetailHeaderLockup(v1);
  OUTLINED_FUNCTION_70_6();
  v18 = sub_2168CB86C(v2, v0, &unk_2170411DC);
  v19 = OUTLINED_FUNCTION_83_9(&qword_280E36D70);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  v3 = OUTLINED_FUNCTION_26_19(&qword_27CABB1A8, &qword_27CABB1B0, &qword_217023310);
  OUTLINED_FUNCTION_94_2(v3, v4, v5, v6, v7, v8, v17, v18, &off_28293B400, v19);

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2(v9, v10, v11, v12, v13);
  sub_21700C384();
  OUTLINED_FUNCTION_9();
  v14 = OUTLINED_FUNCTION_105_5();
  return v15(v14);
}

uint64_t sub_2168C6B64@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AlbumTrackLockup(0);
  sub_2168CB86C(qword_280E41540, type metadata accessor for AlbumTrackLockup, &unk_217043794);
  sub_2168CB86C(&qword_280E41520, type metadata accessor for AlbumTrackLockup, &unk_21702C284);
  swift_getKeyPath();
  v6 = v1;
  sub_2166D9530(&qword_27CABB1A0, &unk_27CABF8B0, &unk_217033E30, &unk_217063200);
  sub_2170066D4();

  v3 = *(*v1 + 136);
  swift_beginAccess();
  v4 = sub_21700C1E4();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_2168C6CEC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v20[1] = a1;
  v4 = sub_217006924();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v20 - v15;
  sub_2168CBB08();
  v17 = type metadata accessor for ContentDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v17) == 1)
  {
    sub_216697664(v10, &qword_27CAB6A00, &unk_217016B60);
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v4);
  }

  else
  {
    sub_216C6C5E8(v16);
    sub_2168CBAB0(v10, type metadata accessor for ContentDescriptor);
  }

  sub_2168CBB08();
  if (__swift_getEnumTagSinglePayload(v13, 1, v4) == 1)
  {
    sub_216697664(v13, &unk_27CABF9C0, &qword_21701ADB0);
    v18 = sub_21700C384();
    __swift_storeEnumTagSinglePayload(a3, 1, 1, v18);
  }

  else
  {
    (*(v5 + 32))(v7, v13, v4);
    sub_216CD2A60();
    (*(v5 + 8))(v7, v4);
  }

  return sub_216697664(v16, &unk_27CABF9C0, &qword_21701ADB0);
}

uint64_t sub_2168C6FD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  type metadata accessor for SplitPosterLockup(0);
  type metadata accessor for SplitPosterLockup.Item(0);
  sub_2168CBB08();
  v6 = type metadata accessor for ContentDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
  {
    sub_216697664(v2, &qword_27CAB6A00, &unk_217016B60);
    v7 = sub_217006924();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  }

  else
  {
    sub_216C6C5E8(v5);
    sub_2168CBAB0(v2, type metadata accessor for ContentDescriptor);
  }

  sub_216DB076C();
  return sub_216697664(v5, &unk_27CABF9C0, &qword_21701ADB0);
}

uint64_t sub_2168C718C()
{
  v1 = OUTLINED_FUNCTION_45_12();
  v17 = type metadata accessor for SplitPosterLockup(v1);
  OUTLINED_FUNCTION_77_8();
  v18 = sub_2168CB86C(v2, v0, &unk_21701BC90);
  v19 = OUTLINED_FUNCTION_94_7(&qword_280E3F778);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  v3 = OUTLINED_FUNCTION_102_6(&qword_27CABB840, &qword_27CABF9B0, &unk_217033E80);
  OUTLINED_FUNCTION_94_2(v3, v4, v5, v6, v7, v8, v17, v18, &off_28293B1E0, v19);

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2(v9, v10, v11, v12, v13);
  sub_2170067A4();
  OUTLINED_FUNCTION_9();
  v14 = OUTLINED_FUNCTION_105_5();
  return v15(v14);
}

uint64_t sub_2168C7294()
{
  v1 = OUTLINED_FUNCTION_45_12();
  v17 = type metadata accessor for SplitPosterLockup(v1);
  OUTLINED_FUNCTION_77_8();
  v18 = sub_2168CB86C(v2, v0, &unk_21701BC90);
  v19 = OUTLINED_FUNCTION_94_7(&qword_280E3F778);
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  v3 = OUTLINED_FUNCTION_102_6(&qword_27CABB840, &qword_27CABF9B0, &unk_217033E80);
  OUTLINED_FUNCTION_94_2(v3, v4, v5, v6, v7, v8, v17, v18, &off_28293B1E0, v19);

  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_93_2(v9, v10, v11, v12, v13);
  sub_2170067A4();
  OUTLINED_FUNCTION_9();
  v14 = OUTLINED_FUNCTION_105_5();
  return v15(v14);
}

void sub_2168C739C()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_0_1();
  sub_217006704();
  v6 = type metadata accessor for AlbumTrackLockup(0);
  OUTLINED_FUNCTION_145_2(v6);
  OUTLINED_FUNCTION_0_1();
  v7 = sub_21700C2F4();
  OUTLINED_FUNCTION_17();
  v9 = v8;
  v10 = OUTLINED_FUNCTION_137_1();
  v11(v10);
  OUTLINED_FUNCTION_0_1();
  sub_21700C1E4();
  OUTLINED_FUNCTION_17();
  v12 = OUTLINED_FUNCTION_125_3();
  v13(v12);
  sub_2168CBB08();
  v14 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_31_2(v1, 1, v14);
  if (v15)
  {
    v16 = OUTLINED_FUNCTION_99_8();
    v17(v16);
    (*(v9 + 8))(v3, v7);
    sub_216697664(v1, &qword_27CAB6A00, &unk_217016B60);
  }

  else
  {
    if (*(v1 + 48))
    {
LABEL_8:
      sub_21700DF14();
      sub_21700BA64();
      v19 = OUTLINED_FUNCTION_135_2();
      v20(v19);
      v21 = OUTLINED_FUNCTION_98_7();
      v22(v21);
      OUTLINED_FUNCTION_0_60();
      sub_2168CBAB0(v1, v23);

      v18 = 1;
      goto LABEL_9;
    }

    if (*(v1 + 16))
    {
      sub_21700DF14();
      goto LABEL_8;
    }

    v25 = OUTLINED_FUNCTION_99_8();
    v26(v25);
    v27 = OUTLINED_FUNCTION_98_7();
    v28(v27);
    OUTLINED_FUNCTION_0_60();
    sub_2168CBAB0(v1, v29);
  }

  v18 = 0;
LABEL_9:
  OUTLINED_FUNCTION_0_1();
  sub_2168CB998();
  OUTLINED_FUNCTION_0_1();
  *(v0 + *(v24 + 144)) = v18;
  OUTLINED_FUNCTION_26();
}

void sub_2168C7664()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_0_1();
  sub_217006704();
  v6 = type metadata accessor for PlaylistTrackLockup(0);
  OUTLINED_FUNCTION_145_2(v6);
  OUTLINED_FUNCTION_0_1();
  v7 = sub_21700C894();
  OUTLINED_FUNCTION_17();
  v9 = v8;
  v10 = OUTLINED_FUNCTION_137_1();
  v11(v10);
  OUTLINED_FUNCTION_0_1();
  sub_21700C924();
  OUTLINED_FUNCTION_17();
  v12 = OUTLINED_FUNCTION_125_3();
  v13(v12);
  sub_2168CBB08();
  v14 = type metadata accessor for ContentDescriptor(0);
  OUTLINED_FUNCTION_31_2(v1, 1, v14);
  if (v15)
  {
    v16 = OUTLINED_FUNCTION_99_8();
    v17(v16);
    (*(v9 + 8))(v3, v7);
    sub_216697664(v1, &qword_27CAB6A00, &unk_217016B60);
  }

  else
  {
    if (*(v1 + 48))
    {
LABEL_8:
      sub_21700DF14();
      sub_21700BA64();
      v19 = OUTLINED_FUNCTION_135_2();
      v20(v19);
      v21 = OUTLINED_FUNCTION_98_7();
      v22(v21);
      OUTLINED_FUNCTION_0_60();
      sub_2168CBAB0(v1, v23);

      v18 = 1;
      goto LABEL_9;
    }

    if (*(v1 + 16))
    {
      sub_21700DF14();
      goto LABEL_8;
    }

    v25 = OUTLINED_FUNCTION_99_8();
    v26(v25);
    v27 = OUTLINED_FUNCTION_98_7();
    v28(v27);
    OUTLINED_FUNCTION_0_60();
    sub_2168CBAB0(v1, v29);
  }

  v18 = 0;
LABEL_9:
  OUTLINED_FUNCTION_0_1();
  sub_2168CB998();
  OUTLINED_FUNCTION_0_1();
  *(v0 + *(v24 + 144)) = v18;
  OUTLINED_FUNCTION_26();
}

uint64_t sub_2168C792C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  sub_217006704();
  v11 = type metadata accessor for ArtistDetailHeaderLockup(0);
  sub_216788294(a1 + *(v11 + 20), v4 + 16);
  v12 = *(*v4 + 128);
  v13 = sub_2170067A4();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v4 + v12, a2, v13);
  v15 = *(*v4 + 136);
  v16 = sub_21700C384();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v4 + v15, a3, v16);
  sub_216957E04(v10);
  v18 = type metadata accessor for ContentDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v18) != 1)
  {
    v22 = a2;
    if (!*(v10 + 6))
    {
      if (!*(v10 + 2))
      {
        (*(v17 + 8))(a3, v16);
        (*(v14 + 8))(v22, v13);
        sub_2168CBAB0(v10, type metadata accessor for ContentDescriptor);
        goto LABEL_3;
      }

      sub_21700DF14();
    }

    sub_21700DF14();
    sub_21700BA64();
    (*(v17 + 8))(a3, v16);
    (*(v14 + 8))(v22, v13);
    sub_2168CBAB0(v10, type metadata accessor for ContentDescriptor);

    v19 = 1;
    goto LABEL_8;
  }

  (*(v17 + 8))(a3, v16);
  (*(v14 + 8))(a2, v13);
  sub_216697664(v10, &qword_27CAB6A00, &unk_217016B60);
LABEL_3:
  v19 = 0;
LABEL_8:
  sub_2168CB998();
  *(v4 + *(*v4 + 144)) = v19;
  return v4;
}

uint64_t sub_2168C7C84(char *a1)
{
  v2 = v1;
  v4 = sub_21700C894();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2168CB86C(&qword_27CABB820, MEMORY[0x277CD8560], MEMORY[0x277CD8568]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v15 - 4) = type metadata accessor for PlaylistTrackLockup(0);
    *(&v15 - 3) = sub_2168CB86C(qword_280E3D5F0, type metadata accessor for PlaylistTrackLockup, &unk_2170490C4);
    *(&v15 - 2) = &off_28293B280;
    *(&v15 - 1) = sub_2168CB86C(&qword_280E3D5C8, type metadata accessor for PlaylistTrackLockup, &unk_21702C150);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v15 - 2) = v2;
    *(&v15 - 1) = a1;
    sub_2168C9BA8(v13, sub_2168CB6F8, (&v15 - 4));
  }

  return v10(a1, v4);
}

uint64_t sub_2168C7F84(char *a1)
{
  v2 = v1;
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2168CB86C(&qword_280E4A478, MEMORY[0x277D2A460], MEMORY[0x277D2A478]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v15 - 4) = type metadata accessor for ArtistDetailHeaderLockup(0);
    *(&v15 - 3) = sub_2168CB86C(&qword_280E36D90, type metadata accessor for ArtistDetailHeaderLockup, &unk_2170411DC);
    *(&v15 - 2) = &off_28293B400;
    *(&v15 - 1) = sub_2168CB86C(&qword_280E36D70, type metadata accessor for ArtistDetailHeaderLockup, &unk_21702C310);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v15 - 2) = v2;
    *(&v15 - 1) = a1;
    sub_2168C9BA8(v13, sub_2168CBBB0, (&v15 - 4));
  }

  return v10(a1, v4);
}

uint64_t sub_2168C8284(char *a1)
{
  v2 = v1;
  v4 = sub_21700C2F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2168CB86C(&qword_27CABB7E8, MEMORY[0x277CD83B8], MEMORY[0x277CD83D0]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v15 - 4) = type metadata accessor for AlbumTrackLockup(0);
    *(&v15 - 3) = sub_2168CB86C(qword_280E41540, type metadata accessor for AlbumTrackLockup, &unk_217043794);
    *(&v15 - 2) = &off_28293B3C0;
    *(&v15 - 1) = sub_2168CB86C(&qword_280E41520, type metadata accessor for AlbumTrackLockup, &unk_21702C284);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v15 - 2) = v2;
    *(&v15 - 1) = a1;
    sub_2168C9BA8(v13, sub_2168CB528, (&v15 - 4));
  }

  return v10(a1, v4);
}

uint64_t sub_2168C8584(char *a1)
{
  v2 = v1;
  v4 = sub_21700C924();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 136);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2168CB86C(&qword_27CABB828, MEMORY[0x277CD8608], MEMORY[0x277CD8620]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v15 - 4) = type metadata accessor for PlaylistTrackLockup(0);
    *(&v15 - 3) = sub_2168CB86C(qword_280E3D5F0, type metadata accessor for PlaylistTrackLockup, &unk_2170490C4);
    *(&v15 - 2) = &off_28293B280;
    *(&v15 - 1) = sub_2168CB86C(&qword_280E3D5C8, type metadata accessor for PlaylistTrackLockup, &unk_21702C150);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v15 - 2) = v2;
    *(&v15 - 1) = a1;
    sub_2168C9BA8(v13, sub_2168CB6C8, (&v15 - 4));
  }

  return v10(a1, v4);
}

uint64_t sub_2168C8884(char *a1)
{
  v2 = v1;
  v4 = sub_21700C384();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 136);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2168CB86C(&qword_27CABB808, MEMORY[0x277CD8428], MEMORY[0x277CD8440]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v15 - 4) = type metadata accessor for ArtistDetailHeaderLockup(0);
    *(&v15 - 3) = sub_2168CB86C(&qword_280E36D90, type metadata accessor for ArtistDetailHeaderLockup, &unk_2170411DC);
    *(&v15 - 2) = &off_28293B400;
    *(&v15 - 1) = sub_2168CB86C(&qword_280E36D70, type metadata accessor for ArtistDetailHeaderLockup, &unk_21702C310);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v15 - 2) = v2;
    *(&v15 - 1) = a1;
    sub_2168C9BA8(v13, sub_2168CB588, (&v15 - 4));
  }

  return v10(a1, v4);
}

uint64_t sub_2168C8B84(char *a1)
{
  v2 = v1;
  v4 = sub_21700C1E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 136);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2168CB86C(&qword_27CABB7F0, MEMORY[0x277CD82C8], MEMORY[0x277CD82E0]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v15 - 4) = type metadata accessor for AlbumTrackLockup(0);
    *(&v15 - 3) = sub_2168CB86C(qword_280E41540, type metadata accessor for AlbumTrackLockup, &unk_217043794);
    *(&v15 - 2) = &off_28293B3C0;
    *(&v15 - 1) = sub_2168CB86C(&qword_280E41520, type metadata accessor for AlbumTrackLockup, &unk_21702C284);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v15 - 2) = v2;
    *(&v15 - 1) = a1;
    sub_2168C9BA8(v13, sub_2168CB4F8, (&v15 - 4));
  }

  return v10(a1, v4);
}

uint64_t sub_2168C8E84(uint64_t a1)
{
  v8 = type metadata accessor for PlaylistTrackLockup(0);
  v9 = sub_2168CB86C(qword_280E3D5F0, type metadata accessor for PlaylistTrackLockup, &unk_2170490C4);
  v10 = &off_28293B280;
  v11 = sub_2168CB86C(&qword_280E3D5C8, type metadata accessor for PlaylistTrackLockup, &unk_21702C150);
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_2168C9BA8(KeyPath, sub_2168CB728, &v5);

  return sub_2168CBAB0(a1, type metadata accessor for PlaylistTrackLockup);
}

uint64_t sub_2168C8FB4(uint64_t a1)
{
  v8 = type metadata accessor for ArtistDetailHeaderLockup(0);
  v9 = sub_2168CB86C(&qword_280E36D90, type metadata accessor for ArtistDetailHeaderLockup, &unk_2170411DC);
  v10 = &off_28293B400;
  v11 = sub_2168CB86C(&qword_280E36D70, type metadata accessor for ArtistDetailHeaderLockup, &unk_21702C310);
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_2168C9BA8(KeyPath, sub_2168CB5B8, &v5);

  return sub_2168CBAB0(a1, type metadata accessor for ArtistDetailHeaderLockup);
}

uint64_t sub_2168C90E4(uint64_t a1)
{
  v8 = type metadata accessor for AlbumTrackLockup(0);
  v9 = sub_2168CB86C(qword_280E41540, type metadata accessor for AlbumTrackLockup, &unk_217043794);
  v10 = &off_28293B3C0;
  v11 = sub_2168CB86C(&qword_280E41520, type metadata accessor for AlbumTrackLockup, &unk_21702C284);
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_2168C9BA8(KeyPath, sub_2168CB558, &v5);

  return sub_2168CBAB0(a1, type metadata accessor for AlbumTrackLockup);
}

uint64_t sub_2168C9214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v4 = sub_21700C924();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21700C894();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PlaylistTrackLockup(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2168CBA5C();
  sub_2168C8E84(v14);
  sub_2168C045C();
  sub_2168CB86C(&qword_27CABB820, MEMORY[0x277CD8560], MEMORY[0x277CD8568]);
  v15 = sub_21700E494();
  (*(v9 + 8))(v11, v8);
  if ((v15 & 1) == 0)
  {
    (*(v9 + 16))(v11, a2, v8);
    sub_2168C7C84(v11);
  }

  sub_2168C6954();
  sub_2168CB86C(&qword_27CABB828, MEMORY[0x277CD8608], MEMORY[0x277CD8620]);
  v16 = v20;
  v17 = sub_21700E494();
  result = (*(v5 + 8))(v7, v4);
  if ((v17 & 1) == 0)
  {
    (*(v5 + 16))(v7, v16, v4);
    return sub_2168C8584(v7);
  }

  return result;
}

uint64_t sub_2168C9510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v4 = sub_21700C384();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2170067A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ArtistDetailHeaderLockup(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2168CBA5C();
  sub_2168C8FB4(v14);
  sub_2168C0564();
  sub_2168CB86C(&qword_280E4A478, MEMORY[0x277D2A460], MEMORY[0x277D2A478]);
  v15 = sub_21700E494();
  (*(v9 + 8))(v11, v8);
  if ((v15 & 1) == 0)
  {
    (*(v9 + 16))(v11, a2, v8);
    sub_2168C7F84(v11);
  }

  sub_2168C6A5C();
  sub_2168CB86C(&qword_27CABB808, MEMORY[0x277CD8428], MEMORY[0x277CD8440]);
  v16 = v20;
  v17 = sub_21700E494();
  result = (*(v5 + 8))(v7, v4);
  if ((v17 & 1) == 0)
  {
    (*(v5 + 16))(v7, v16, v4);
    return sub_2168C8884(v7);
  }

  return result;
}

uint64_t sub_2168C980C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v4 = sub_21700C1E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21700C2F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AlbumTrackLockup(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2168CBA5C();
  sub_2168C90E4(v14);
  sub_2168C032C();
  sub_2168CB86C(&qword_27CABB7E8, MEMORY[0x277CD83B8], MEMORY[0x277CD83D0]);
  v15 = sub_21700E494();
  (*(v9 + 8))(v11, v8);
  if ((v15 & 1) == 0)
  {
    (*(v9 + 16))(v11, a2, v8);
    sub_2168C8284(v11);
  }

  sub_2168C6B64(v7);
  sub_2168CB86C(&qword_27CABB7F0, MEMORY[0x277CD82C8], MEMORY[0x277CD82E0]);
  v16 = v20;
  v17 = sub_21700E494();
  result = (*(v5 + 8))(v7, v4);
  if ((v17 & 1) == 0)
  {
    (*(v5 + 16))(v7, v16, v4);
    return sub_2168C8B84(v7);
  }

  return result;
}

uint64_t sub_2168C9B44()
{
  OUTLINED_FUNCTION_54_12();
  OUTLINED_FUNCTION_113_6(v0, v1);
  sub_2168CB944();
  return swift_endAccess();
}

uint64_t sub_2168C9BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_1();
  sub_2166D9530(v3, v4, v5, v6);
  return sub_2170066C4();
}

uint64_t sub_2168C9CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v7 - 8);
  v25 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  sub_217006704();
  sub_216788294(a1, v3 + 16);
  v12 = *(*v3 + 128);
  v13 = sub_2170067A4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  v27 = a2;
  v15(v3 + v12, a2, v13);
  v16 = v3 + *(*v3 + 136);
  v26 = a3;
  v15(v16, a3, v13);
  type metadata accessor for SplitPosterLockup(0);
  v28 = a1;
  type metadata accessor for SplitPosterLockup.Item(0);
  sub_2168CBB08();
  v17 = type metadata accessor for ContentDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v11, 1, v17) == 1)
  {
    sub_216697664(v11, &qword_27CAB6A00, &unk_217016B60);
    goto LABEL_3;
  }

  if (*(v11 + 6))
  {
LABEL_12:
    sub_21700DF14();
    sub_21700BA64();
    sub_2168CBAB0(v11, type metadata accessor for ContentDescriptor);

    v21 = *(v14 + 8);
    v21(v26, v13);
    v21(v27, v13);
    v20 = 1;
    goto LABEL_16;
  }

  if (*(v11 + 2))
  {
    sub_21700DF14();
    goto LABEL_12;
  }

  sub_2168CBAB0(v11, type metadata accessor for ContentDescriptor);
LABEL_3:
  v18 = v25;
  sub_2168CBB08();
  if (__swift_getEnumTagSinglePayload(v18, 1, v17) != 1)
  {
    if (!*(v18 + 48))
    {
      if (!*(v18 + 16))
      {
        v24 = *(v14 + 8);
        v24(v26, v13);
        v24(v27, v13);
        sub_2168CBAB0(v18, type metadata accessor for ContentDescriptor);
        goto LABEL_5;
      }

      sub_21700DF14();
    }

    sub_21700DF14();
    sub_21700BA64();
    v22 = *(v14 + 8);
    v22(v26, v13);
    v22(v27, v13);
    sub_2168CBAB0(v18, type metadata accessor for ContentDescriptor);

    v20 = 1;
    goto LABEL_16;
  }

  v19 = *(v14 + 8);
  v19(v26, v13);
  v19(v27, v13);
  sub_216697664(v18, &qword_27CAB6A00, &unk_217016B60);
LABEL_5:
  v20 = 0;
LABEL_16:
  sub_2168CB998();
  *(v3 + *(*v3 + 144)) = v20;
  return v3;
}

uint64_t sub_2168CA158(char *a1)
{
  v2 = v1;
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 128);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2168CB86C(&qword_280E4A478, MEMORY[0x277D2A460], MEMORY[0x277D2A478]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v15 - 4) = type metadata accessor for SplitPosterLockup(0);
    *(&v15 - 3) = sub_2168CB86C(qword_280E3F790, type metadata accessor for SplitPosterLockup, &unk_21701BC90);
    *(&v15 - 2) = &off_28293B1E0;
    *(&v15 - 1) = sub_2168CB86C(&qword_280E3F778, type metadata accessor for SplitPosterLockup, &unk_21702C2D8);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v15 - 2) = v2;
    *(&v15 - 1) = a1;
    sub_2168C9BA8(v13, sub_2168CB8E4, (&v15 - 4));
  }

  return v10(a1, v4);
}

uint64_t sub_2168CA458(char *a1)
{
  v2 = v1;
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 136);
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_2168CB86C(&qword_280E4A478, MEMORY[0x277D2A460], MEMORY[0x277D2A478]);
  v9 = sub_21700E494();
  v10 = *(v5 + 8);
  v11 = v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    MEMORY[0x28223BE20](v11);
    *(&v15 - 4) = type metadata accessor for SplitPosterLockup(0);
    *(&v15 - 3) = sub_2168CB86C(qword_280E3F790, type metadata accessor for SplitPosterLockup, &unk_21701BC90);
    *(&v15 - 2) = &off_28293B1E0;
    *(&v15 - 1) = sub_2168CB86C(&qword_280E3F778, type metadata accessor for SplitPosterLockup, &unk_21702C2D8);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v15 - 2) = v2;
    *(&v15 - 1) = a1;
    sub_2168C9BA8(v13, sub_2168CB8B4, (&v15 - 4));
  }

  return v10(a1, v4);
}

uint64_t sub_2168CA758(uint64_t a1)
{
  v8 = type metadata accessor for SplitPosterLockup(0);
  v9 = sub_2168CB86C(qword_280E3F790, type metadata accessor for SplitPosterLockup, &unk_21701BC90);
  v10 = &off_28293B1E0;
  v11 = sub_2168CB86C(&qword_280E3F778, type metadata accessor for SplitPosterLockup, &unk_21702C2D8);
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_2168C9BA8(KeyPath, sub_2168CB914, &v5);

  return sub_2168CBAB0(a1, type metadata accessor for SplitPosterLockup);
}

uint64_t sub_2168CA888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2170067A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SplitPosterLockup(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2168CBA5C();
  sub_2168CA758(v11);
  sub_2168C718C();
  sub_2168CB86C(&qword_280E4A478, MEMORY[0x277D2A460], MEMORY[0x277D2A478]);
  v12 = sub_21700E494();
  v13 = *(v6 + 8);
  v13(v8, v5);
  if ((v12 & 1) == 0)
  {
    (*(v6 + 16))(v8, a2, v5);
    sub_2168CA158(v8);
  }

  sub_2168C7294();
  v14 = sub_21700E494();
  result = (v13)(v8, v5);
  if ((v14 & 1) == 0)
  {
    (*(v6 + 16))(v8, a3, v5);
    return sub_2168CA458(v8);
  }

  return result;
}

uint64_t sub_2168CAB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_79_0();
  (*(v8 + 16))(v5);
  return a5(v5);
}

uint64_t sub_2168CAC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_131_1();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = OUTLINED_FUNCTION_115_5(v8, v12);
  v10(v9);
  return a5(v5);
}

uint64_t sub_2168CACC4()
{
  OUTLINED_FUNCTION_54_12();
  v4 = *(v3 + 128);
  OUTLINED_FUNCTION_113_6(v5, v6);
  v0(0);
  OUTLINED_FUNCTION_9();
  (*(v7 + 24))(v2 + v4, v1);
  return swift_endAccess();
}

uint64_t sub_2168CAD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  OUTLINED_FUNCTION_131_1();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = OUTLINED_FUNCTION_115_5(v10, v14);
  v12(v11);
  return a7(v7);
}

uint64_t sub_2168CAE4C()
{
  OUTLINED_FUNCTION_54_12();
  v4 = *(v3 + 136);
  OUTLINED_FUNCTION_113_6(v5, v6);
  v0(0);
  OUTLINED_FUNCTION_9();
  (*(v7 + 24))(v2 + v4, v1);
  return swift_endAccess();
}

uint64_t sub_2168CAEF4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_216AB97E8(result, v5, 0);
  }

  return result;
}

uint64_t sub_2168CAF6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_2168BFBDC(a1, a2, a3, a4, a5, &unk_27CABF990, &unk_217033E70, sub_216CCD170);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_2168CAFBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_2168BFBDC(a1, a2, a3, a4, a5, &unk_27CABF9A0, &qword_217044270, sub_216CCF044);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_2168CB00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_2168BFBDC(a1, a2, a3, a4, a5, &unk_27CABF970, &unk_217033E60, sub_216CCF448);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_2168CB05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_2168BFBDC(a1, a2, a3, a4, a5, &qword_27CABF9B0, &unk_217033E80, sub_2168BFC90);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_2168CB0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_2168BFBDC(a1, a2, a3, a4, a5, &unk_27CABF960, &qword_21703B100, sub_216CCF7E8);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_2168CB0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_2168BFBDC(a1, a2, a3, a4, a5, &qword_27CABF950, &unk_217033E50, sub_216CCFBCC);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_2168CB14C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_2168BFBDC(a1, a2, a3, a4, a5, &unk_27CABF940, &qword_21701E1F0, sub_216CCFF90);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_2168CB19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_2168BFBDC(a1, a2, a3, a4, a5, &unk_27CABF980, &qword_21701ABF0, sub_216CD03D8);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_2168CB1EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_2168BFBDC(a1, a2, a3, a4, a5, &unk_27CABF930, &qword_217033480, sub_216CD07DC);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_2168CB23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_2168BFBDC(a1, a2, a3, a4, a5, &unk_27CABF920, &qword_21701F310, sub_216CD0B90);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_2168CB28C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  result = sub_2168BE628(a1, a2, a3, a4, a5, a6, &unk_27CABF910, &unk_217023330, sub_2168BE6E4);
  if (!v7)
  {
    *a7 = result;
  }

  return result;
}

uint64_t sub_2168CB2E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_2168BFBDC(a1, a2, a3, a4, a5, &unk_27CABF900, &qword_217016AD0, sub_216CD0F8C);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_2168CB334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_2168BFBDC(a1, a2, a3, a4, a5, &unk_27CABF8F0, &unk_217033E40, sub_216CD1384);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_2168CB384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_2168BFBDC(a1, a2, a3, a4, a5, &unk_27CABF8E0, &unk_217040040, sub_216CD1788);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_2168CB3D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_2168BFBDC(a1, a2, a3, a4, a5, &unk_27CABF8D0, &qword_21701E160, sub_216CD1B48);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_2168CB424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_2168BFBDC(a1, a2, a3, a4, a5, &unk_27CABF8C0, &unk_21701E140, sub_216CD1F5C);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_2168CB474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  result = sub_2168BE628(a1, a2, a3, a4, a5, a6, &unk_27CABF8B0, &unk_217033E30, sub_2168BF364);
  if (!v7)
  {
    *a7 = result;
  }

  return result;
}

uint64_t sub_2168CB7E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_2168BFBDC(a1, a2, a3, a4, a5, &qword_27CABB830, &qword_21705ED80, sub_216CD22F4);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_2168CB86C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2168CB944()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_2168CB998()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_2168CBA5C()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_2168CBAB0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2168CBB08()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_9();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_2168CBB5C()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_9();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t OUTLINED_FUNCTION_88_5()
{

  return sub_2168CBAB0(v0, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
}

uint64_t OUTLINED_FUNCTION_89_9()
{

  return sub_2168CBAB0(v0, type metadata accessor for PosterLockup);
}

uint64_t OUTLINED_FUNCTION_92_5()
{

  return sub_2168CBAB0(v0, type metadata accessor for VerticalVideoLockup);
}

uint64_t OUTLINED_FUNCTION_94_7(unint64_t *a1)
{

  return sub_2168CB86C(a1, v1, &unk_21702C2D8);
}

uint64_t OUTLINED_FUNCTION_97_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_109_4()
{
}

uint64_t OUTLINED_FUNCTION_121_3()
{

  return sub_2168CB998();
}

uint64_t OUTLINED_FUNCTION_126_0()
{

  return sub_2168CBA5C();
}

uint64_t OUTLINED_FUNCTION_133_0(uint64_t result)
{
  v2 = *(v1 - 136) + 32;
  *(v1 - 152) = result;
  *(v1 - 144) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_143_1()
{

  return sub_2168CBB08();
}

uint64_t OUTLINED_FUNCTION_145_2(uint64_t a1)
{
  v4 = v2 + *(a1 + 20);

  return sub_216788294(v4, v1 + 16);
}

uint64_t OUTLINED_FUNCTION_146_1()
{

  return sub_2168CBB5C();
}

uint64_t type metadata accessor for SocialProfileEditorPageIntent(uint64_t a1)
{
  result = qword_27CABB860;
  if (!qword_27CABB860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2168CBF00(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - v5;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v8 = result;
    sub_2166F1DCC();
    v15[0] = type metadata accessor for SocialProfileEditorPageIntent(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB888, &unk_2170242F0);
    v9 = sub_21700E594();
    v15[3] = MEMORY[0x277D837D0];
    v15[0] = v9;
    v15[1] = v10;
    v11 = a1;
    v12 = sub_2166F1E10(v15, a1);
    sub_2166F1F64(v12, 0x646E696B24, 0xE500000000000000);
    sub_2168CC268(v2, v6);
    v13 = type metadata accessor for ReferrerInfo(0);
    if (__swift_getEnumTagSinglePayload(v6, 1, v13) == 1)
    {
      sub_2168CC2D8(v6);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(v11).super.isa;
      sub_2168CC340(v6);
    }

    sub_2166F1F64(isa, 0x7265727265666572, 0xEC0000006F666E49);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2168CC144(uint64_t a1)
{
  result = sub_2166CE3E4(&qword_27CABB878, type metadata accessor for SocialProfileEditorPageIntent, &unk_21702422C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2168CC1E4(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE3E4(&qword_27CABB878, type metadata accessor for SocialProfileEditorPageIntent, &unk_21702422C);
  result = sub_2166CE3E4(&qword_27CABB880, type metadata accessor for SocialProfileEditorPageIntent, &unk_217024210);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2168CC268(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2168CC2D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2168CC340(uint64_t a1)
{
  v2 = type metadata accessor for ReferrerInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2168CC39C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  *(v1 + 16) = a1;
  type metadata accessor for ObjectGraph(0);

  sub_21700E094();

  (*(v5 + 32))(v1 + OBJC_IVAR____TtC7MusicUI27GoToAlbumMenuActionProvider_actionDispatcher, v8, v3);
  return v1;
}

uint64_t sub_2168CC4A4(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v16 - v7);
  v9 = *(type metadata accessor for MenuConfiguration(0) + 20);
  v10 = sub_21700BFF4();
  sub_2168CC5F0(a1, &a3[v9], v10, v11, a2, a3, v8);

  v12 = sub_21678C1C4();
  sub_2166997CC(v8, &qword_27CAB6DF0, &unk_2170152D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = v12;
  v14 = sub_2167A2998(inited);
  swift_setDeallocating();
  sub_2169FAC94();
  return v14;
}

uint64_t sub_2168CC5F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t *a7@<X8>)
{
  v101 = a6;
  v124 = a5;
  v112 = a4;
  v111 = a3;
  v122 = a1;
  v127 = sub_2170075A4();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v123 = v10;
  v125 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_21700C084();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v115 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for GoToAlbumAction(0);
  v119 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v121 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = v12;
  MEMORY[0x28223BE20](v13);
  v116 = &v95 - v14;
  v108 = sub_21700CFB4();
  v103 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v107 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_217005EF4();
  v99 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v98 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_21700D704();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v102 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v95 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v22 - 8);
  v100 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v95 - v25;
  v110 = sub_21700D284();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v128 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v28);
  v104 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v95 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v95 - v34;
  v113 = a2;
  sub_2168CD8CC(a2, &v95 - v34, type metadata accessor for MenuContext);
  LODWORD(a2) = swift_getEnumCaseMultiPayload();
  sub_2168CD6E4(v35);
  if (a2 == 2)
  {
    v36 = type metadata accessor for MenuAction(0);
    return __swift_storeEnumTagSinglePayload(a7, 1, 1, v36);
  }

  else
  {
    v96 = a7;
    v97 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217015230;
    *(inited + 32) = 0x4E6E6F6974636573;
    *(inited + 40) = 0xEB00000000656D61;
    v39 = type metadata accessor for MenuConfiguration(0);
    v40 = v16;
    v41 = v26;
    v42 = v101;
    v43 = &v101[*(v39 + 36)];
    v44 = *(v43 + 1);
    v45 = MEMORY[0x277D837D0];
    *(inited + 48) = *v43;
    *(inited + 56) = v44;
    *(inited + 72) = v45;
    *(inited + 80) = 1684957547;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = 1735290739;
    *(inited + 104) = 0xE400000000000000;
    *(inited + 120) = v45;
    *(inited + 128) = 0x657461676976616ELL;
    *(inited + 168) = v45;
    *(inited + 136) = 0xEA00000000006F54;
    *(inited + 144) = 0x6D75626C61;
    *(inited + 152) = 0xE500000000000000;
    sub_21700DF14();
    v46 = sub_21700E384();
    v47 = *(v39 + 20);
    v95 = v28;
    swift_storeEnumTagMultiPayload();
    LOBYTE(inited) = sub_216B88F54(&v42[v47], v32);
    sub_2168CD6E4(v32);
    __swift_storeEnumTagSinglePayload(v41, 1, 1, v40);
    v101 = v21;
    sub_21700D6F4();
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    *&v131 = v46;
    sub_2166EF9C4(&v131, &v130);
    v48 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v129 = v48;
    sub_2166EF9D4();
    v49 = v129;
    v132 = v45;
    *&v131 = 0x657461676976616ELL;
    *(&v131 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v131, &v130);
    swift_isUniquelyReferenced_nonNull_native();
    v129 = v49;
    sub_2166EF9D4();
    v50 = v129;
    v51 = 0xD000000000000015;
    if (inited)
    {
      v51 = 0xD000000000000010;
      v52 = "ern";
    }

    else
    {
      v52 = "searchQueryContext";
    }

    v132 = v45;
    *&v131 = v51;
    *(&v131 + 1) = v52 | 0x8000000000000000;
    sub_2166EF9C4(&v131, &v130);
    swift_isUniquelyReferenced_nonNull_native();
    v129 = v50;
    sub_2166EF9D4();
    v53 = v129;
    v54 = v100;
    sub_2167DE934(v41, v100);
    if (__swift_getEnumTagSinglePayload(v54, 1, v40) == 1)
    {
      sub_2166997CC(v54, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      v55 = v99;
      v56 = v98;
      (*(v99 + 32))(v98, v54, v40);
      v57 = sub_217005DE4();
      v132 = v45;
      *&v131 = v57;
      *(&v131 + 1) = v58;
      sub_2166EF9C4(&v131, &v130);
      swift_isUniquelyReferenced_nonNull_native();
      v129 = v53;
      sub_2166EF9D4();
      v53 = v129;
      (*(v55 + 8))(v56, v40);
    }

    v59 = v101;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v60 = sub_21700CF84();
    v61 = __swift_project_value_buffer(v60, qword_280E73DB0);
    v62 = v107;
    MEMORY[0x21CE9DD70](v111, v112, 0x6E6F74747562, 0xE600000000000000, v53, v61);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
    v63 = v103;
    v64 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_217013DA0;
    v66 = v65 + v64;
    v67 = v108;
    (*(v63 + 16))(v66, v62, v108);
    v68 = v105;
    v69 = v106;
    (*(v105 + 16))(v102, v59, v106);
    sub_21700D244();
    (*(v63 + 8))(v62, v67);
    (*(v68 + 8))(v59, v69);
    sub_2166997CC(v41, &qword_27CABA820, &unk_217018CE0);
    v70 = v117;
    v71 = v115;
    v72 = v118;
    (*(v117 + 16))(v115, v122, v118);
    v73 = v104;
    sub_2168CD8CC(v113, v104, type metadata accessor for MenuContext);
    v74 = 1;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v74 = *v73;
        break;
      case 2u:
      case 4u:
      case 5u:
      case 7u:
      case 8u:
        goto LABEL_12;
      case 3u:
      case 6u:
        break;
      default:
        v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0);
        sub_2166997CC(&v73[*(v93 + 48)], &qword_27CAB74B8, &unk_217017110);
        v94 = sub_21700C8E4();
        (*(*(v94 - 8) + 8))(v73, v94);
LABEL_12:
        v74 = 2;
        break;
    }

    v75 = v114;
    v76 = v109;
    v77 = v116;
    v78 = v128;
    v79 = v110;
    (*(v109 + 16))(&v116[*(v114 + 24)], v128, v110);
    (*(v70 + 32))(v77, v71, v72);
    *(v77 + *(v75 + 20)) = v74;
    v80 = sub_21700BF54();
    v82 = v81;
    (*(v76 + 8))(v78, v79);
    v83 = v96;
    *v96 = v80;
    *(v83 + 8) = v82;
    type metadata accessor for MenuActionType(0);
    swift_storeEnumTagMultiPayload();
    v84 = v121;
    sub_2168CD740(v77, v121);
    v85 = v126;
    v86 = v125;
    v87 = v127;
    (*(v126 + 16))(v125, v124, v127);
    v88 = (*(v119 + 80) + 24) & ~*(v119 + 80);
    v89 = (v120 + *(v85 + 80) + v88) & ~*(v85 + 80);
    v90 = swift_allocObject();
    *(v90 + 16) = v97;
    sub_2168CD740(v84, v90 + v88);
    (*(v85 + 32))(v90 + v89, v86, v87);
    v91 = type metadata accessor for MenuAction(0);
    v92 = (v83 + *(v91 + 20));
    *v92 = sub_2168CD7A4;
    v92[1] = v90;
    __swift_storeEnumTagSinglePayload(v83, 0, 1, v91);
  }
}

uint64_t sub_2168CD468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[3] = type metadata accessor for GoToAlbumAction(0);
  v6[4] = sub_2168CD874();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  sub_2168CD8CC(a2, boxed_opaque_existential_1, type metadata accessor for GoToAlbumAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_2168CD528()
{

  v1 = OBJC_IVAR____TtC7MusicUI27GoToAlbumMenuActionProvider_actionDispatcher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t type metadata accessor for GoToAlbumMenuActionProvider(uint64_t a1)
{
  result = qword_280E33B00;
  if (!qword_280E33B00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2168CD620(uint64_t a1)
{
  sub_216692BBC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2168CD6E4(uint64_t a1)
{
  v2 = type metadata accessor for MenuContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2168CD740(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GoToAlbumAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2168CD7A4()
{
  v1 = *(type metadata accessor for GoToAlbumAction(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_2170075A4() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2168CD468(v5, v0 + v2, v6);
}

unint64_t sub_2168CD874()
{
  result = qword_27CAB74A8;
  if (!qword_27CAB74A8)
  {
    type metadata accessor for GoToAlbumAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB74A8);
  }

  return result;
}

uint64_t sub_2168CD8CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2168CD934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_21700D284();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2168CD9F8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21700F7D4();
  }
}

uint64_t sub_2168CDA30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v69 = a3;
  v73 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  v65 = v8;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v9);
  v11 = &v58 - v10;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v71 = v12;
  v72 = v13;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v64 = v14;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v15);
  v66 = &v58 - v16;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v17);
  v67 = &v58 - v18;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v19);
  v20 = sub_21700D194();
  OUTLINED_FUNCTION_1();
  v68 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a1;
  sub_21700CE04();
  v25 = v6;
  v26 = *(v6 + 16);
  v27 = v73;
  v26(v11, a2);
  v28 = v70;
  sub_21700D134();
  if (v28)
  {
    (*(v25 + 8))(a2, v27);
    return (*(v72 + 1))(v74, v71);
  }

  v59 = v26;
  v30 = v66;
  v63 = v25;
  v70 = a2;
  v31 = type metadata accessor for SearchResultsListSection(0);
  v32 = *(v31 + 28);
  v33 = *(v68 + 32);
  v60 = v31;
  v61 = v32;
  v62 = v20;
  v33(&v69[v32], v24, v20);
  v34 = v67;
  sub_21700CE04();
  v35 = sub_21700CDB4();
  v37 = v36;
  v38 = v71;
  v40 = v72 + 8;
  v39 = *(v72 + 1);
  v39(v34, v71);
  if (v37)
  {
    v72 = v35;
    v41 = v30;
    v42 = 0x8000000217083D10;
    sub_21700CE04();
    v67 = sub_21700CDB4();
    v44 = v43;
    v39(v41, v38);
    v66 = v44;
    if (v44)
    {
      v45 = v69;
      *v69 = v72;
      *(v45 + 1) = v37;
      sub_21700CE04();
      v72 = v40;
      v46 = v70;
      v47 = v73;
      v59(v65, v70, v73);
      type metadata accessor for TopSearchLockup(0);
      v48 = v38;
      sub_2168CE164(&qword_280E41CF8, type metadata accessor for TopSearchLockup, &unk_21703FEA0);
      v49 = sub_21700E944();
      (*(v63 + 8))(v46, v47);
      result = (v39)(v74, v48);
      v50 = v66;
      *(v45 + 2) = v67;
      *(v45 + 3) = v50;
      *(v45 + 4) = v49;
      return result;
    }

    v51 = 0xD000000000000013;
    v72 = v39;
    v52 = v38;
    v53 = v74;
  }

  else
  {
    v42 = 0xE200000000000000;
    v51 = 25705;
    v72 = v39;
    v52 = v38;
    v53 = v74;
  }

  v54 = v69;
  v55 = v73;
  v56 = sub_21700E2E4();
  sub_2168CE164(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
  swift_allocError();
  *v57 = v51;
  v57[1] = v42;
  v57[2] = v60;
  (*(*(v56 - 8) + 104))(v57, *MEMORY[0x277D22530], v56);
  swift_willThrow();
  (*(v63 + 8))(v70, v55);
  (v72)(v53, v52);
  return (*(v68 + 8))(&v54[v61], v62);
}

uint64_t sub_2168CDFE0()
{
  sub_21700F8F4();
  sub_21700E614();
  return sub_21700F944();
}

uint64_t sub_2168CE03C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_21700DF14();
}

uint64_t sub_2168CE050(uint64_t a1)
{
  sub_21700F8F4();
  sub_21700E614();
  return sub_21700F944();
}

uint64_t sub_2168CE130()
{
  v1 = *(v0 + 16);
  sub_21700DF14();
  return v1;
}

uint64_t sub_2168CE164(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for RoutedAction(uint64_t a1)
{
  result = qword_280E44808;
  if (!qword_280E44808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2168CE220(uint64_t a1)
{
  sub_21700D284();
  if (v1 <= 0x3F)
  {
    sub_216689C64(319);
    if (v2 <= 0x3F)
    {
      sub_216688680(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for ReplayIntent(uint64_t a1)
{
  result = qword_27CABB890;
  if (!qword_27CABB890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2168CE330(uint64_t a1)
{
  sub_2168CE3B4();
  if (v1 <= 0x3F)
  {
    sub_216688680(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2168CE3B4()
{
  if (!qword_280E29DA0)
  {
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E29DA0);
    }
  }
}

uint64_t sub_2168CE44C@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for AnyReplayRequestBody.OneOf_InnerBody(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for ReplayRequestBody(0);
  v13 = v1;
  sub_2168CE788(&qword_27CABB8B0, type metadata accessor for ReplayRequestBody, &unk_21707A798);
  sub_217007A44();
  v7 = v1 + *(type metadata accessor for ReplayIntent(0) + 24);
  v8 = type metadata accessor for AnyReplayRequest(0);
  v11 = v6;
  v12 = v7;
  sub_2168CE788(&qword_27CABB8B8, type metadata accessor for AnyReplayRequest, &unk_21707AA68);
  sub_217007A44();
  result = sub_2168CE7D0(v6);
  if (!v2)
  {
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v8);
  }

  return result;
}

uint64_t sub_2168CE5EC(uint64_t result, uint64_t *a2, double a3)
{
  v4 = result;
  if ((a2[1] & 1) == 0)
  {
    v5 = *a2;
    result = type metadata accessor for ReplayRequestBody(0);
    v6 = v4 + *(result + 20);
    *v6 = v5;
    *(v6 + 8) = 0;
  }

  if ((a2[3] & 1) == 0)
  {
    v7 = a2[2];
    result = type metadata accessor for ReplayRequestBody(0);
    v8 = v4 + *(result + 24);
    *v8 = v7;
    *(v8 + 8) = 0;
  }

  return result;
}

uint64_t sub_2168CE6CC(uint64_t a1)
{
  *(a1 + 8) = sub_2168CE788(&qword_27CABB8A0, type metadata accessor for ReplayIntent, &unk_217024534);
  result = sub_2168CE788(&qword_27CABB8A8, type metadata accessor for ReplayIntent, &unk_217024518);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2168CE788(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2168CE7D0(uint64_t a1)
{
  v2 = type metadata accessor for AnyReplayRequestBody.OneOf_InnerBody(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2168CE82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v171 = a2;
  v172 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8, &qword_217030A40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v169 - v8;
  v170 = sub_2170061E4();
  v10 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v12 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v169 - v14;
  MEMORY[0x28223BE20](v16);
  v173 = &v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MusicEvent.Event(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v169 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = v3;
  sub_2168CF038(v3, v20);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v142 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB8C0, &qword_21705EE80) + 48);
      v143 = OUTLINED_FUNCTION_8_27();
      v144(v143);
      sub_2168CF09C(&v20[v142], v9);
      v145 = OUTLINED_FUNCTION_6_5();
      type metadata accessor for ExpirationDateObserver(v145, v146, v147, v148);
      v149 = OUTLINED_FUNCTION_0_61();
      v150(v149);
      v151 = v170;
      (*(v10 + 16))(v12, v15, v170);
      type metadata accessor for MusicEvent(0);
      OUTLINED_FUNCTION_3_47();
      sub_2168CF10C(v9, v6);
      sub_216E2C700();
      v38 = sub_216B12B40();

      sub_2168CF17C(v9);
      (*(v10 + 8))(v15, v151);
      return v38;
    case 2u:
      v96 = *v20;
      v98 = *(v20 + 1);
      v97 = *(v20 + 2);
      v99 = OUTLINED_FUNCTION_6_5();
      type metadata accessor for InvalidationActionObserver(v99, v100, v101, v102);
      v103 = OUTLINED_FUNCTION_1_47();
      v104(v103);
      v105 = v174 + *(type metadata accessor for MusicEvent(0) + 20);
      v106 = *v105;
      v107 = *(v105 + 8);
      v108 = v171;

      sub_2167F2EE0(v3, v106, v107, v96, v98, v97, v108);
      goto LABEL_19;
    case 3u:
    case 4u:
      v175 = 0;
      v176 = 0xE000000000000000;
      sub_21700F3B4();
      MEMORY[0x21CE9F490](39, 0xE100000000000000);
      type metadata accessor for MusicEvent(0);
      sub_21700F544();
      MEMORY[0x21CE9F490](0xD000000000000022, 0x8000000217083D60);
      result = sub_21700F584();
      __break(1u);
      return result;
    case 5u:
      v133 = OUTLINED_FUNCTION_6_5();
      type metadata accessor for ApplicationDidBecomeActiveObserver(v133, v134, v135, v136);
      v137 = OUTLINED_FUNCTION_0_61();
      v138(v137);
      type metadata accessor for MusicEvent(0);
      v139 = OUTLINED_FUNCTION_2_40();
      sub_2168D10D4(v139, v140, v141);
      goto LABEL_19;
    case 6u:
      v127 = OUTLINED_FUNCTION_6_5();
      type metadata accessor for ArtistFavoritesChangeObserver(v127, v128, v129, v130);
      v131 = OUTLINED_FUNCTION_0_61();
      v132(v131);
      type metadata accessor for MusicEvent(0);
      OUTLINED_FUNCTION_3_47();
      OUTLINED_FUNCTION_7_30();
      OUTLINED_FUNCTION_4_31();
      sub_216E2D420();
      goto LABEL_19;
    case 7u:
      v75 = OUTLINED_FUNCTION_6_5();
      type metadata accessor for PlayActivityObserver(v75, v76, v77, v78);
      v79 = OUTLINED_FUNCTION_0_61();
      v80(v79);
      type metadata accessor for MusicEvent(0);
      v81 = OUTLINED_FUNCTION_2_40();
      sub_2168EC558(v81, v82, v83);
      goto LABEL_19;
    case 8u:
      v90 = OUTLINED_FUNCTION_6_5();
      type metadata accessor for PlayActivityPushNotificationObserver(v90, v91, v92, v93);
      v94 = OUTLINED_FUNCTION_0_61();
      v95(v94);
      type metadata accessor for MusicEvent(0);
      OUTLINED_FUNCTION_3_47();
      OUTLINED_FUNCTION_7_30();
      OUTLINED_FUNCTION_5_29();
      sub_216B6AE58();
      goto LABEL_19;
    case 9u:
      v63 = OUTLINED_FUNCTION_6_5();
      type metadata accessor for PlaylistCollaboratorsChangeObserver(v63, v64, v65, v66);
      v67 = OUTLINED_FUNCTION_0_61();
      v68(v67);
      type metadata accessor for MusicEvent(0);
      OUTLINED_FUNCTION_3_47();
      OUTLINED_FUNCTION_7_30();
      OUTLINED_FUNCTION_5_29();
      sub_216BA0894();
      goto LABEL_19;
    case 0xAu:
      v118 = OUTLINED_FUNCTION_6_5();
      type metadata accessor for RecentLibrarySearchesChangeObserver(v118, v119, v120, v121);
      v122 = OUTLINED_FUNCTION_0_61();
      v123(v122);
      type metadata accessor for MusicEvent(0);
      v124 = OUTLINED_FUNCTION_2_40();
      sub_2168D10D4(v124, v125, v126);
      goto LABEL_19;
    case 0xBu:
      v54 = OUTLINED_FUNCTION_6_5();
      type metadata accessor for RestrictionsChangeObserver(v54, v55, v56, v57);
      v58 = OUTLINED_FUNCTION_0_61();
      v59(v58);
      type metadata accessor for MusicEvent(0);
      v60 = OUTLINED_FUNCTION_2_40();
      sub_2168D10D4(v60, v61, v62);
      goto LABEL_19;
    case 0xCu:
      v109 = OUTLINED_FUNCTION_6_5();
      type metadata accessor for SearchResultsPageLoadObserver(v109, v110, v111, v112);
      v113 = OUTLINED_FUNCTION_0_61();
      v114(v113);
      type metadata accessor for MusicEvent(0);
      v115 = OUTLINED_FUNCTION_2_40();
      sub_2168D10D4(v115, v116, v117);
      goto LABEL_19;
    case 0xDu:
      v39 = OUTLINED_FUNCTION_6_5();
      type metadata accessor for SubscriptionContentRestrictionChangeObserver(v39, v40, v41, v42);
      v43 = OUTLINED_FUNCTION_0_61();
      v44(v43);
      type metadata accessor for MusicEvent(0);
      v45 = OUTLINED_FUNCTION_2_40();
      sub_2168D10D4(v45, v46, v47);
      goto LABEL_19;
    case 0xEu:
      v48 = OUTLINED_FUNCTION_6_5();
      type metadata accessor for SubscriptionStatusChangeObserver(v48, v49, v50, v51);
      v52 = OUTLINED_FUNCTION_0_61();
      v53(v52);
      type metadata accessor for MusicEvent(0);
      OUTLINED_FUNCTION_3_47();
      OUTLINED_FUNCTION_7_30();
      OUTLINED_FUNCTION_5_29();
      sub_216E4FCE8();
      goto LABEL_19;
    case 0xFu:
      v84 = OUTLINED_FUNCTION_6_5();
      type metadata accessor for SocialOnboardingStatusChangeObserver(v84, v85, v86, v87);
      v88 = OUTLINED_FUNCTION_0_61();
      v89(v88);
      type metadata accessor for MusicEvent(0);
      OUTLINED_FUNCTION_3_47();
      OUTLINED_FUNCTION_7_30();
      OUTLINED_FUNCTION_4_31();
      sub_21692A14C();
      goto LABEL_19;
    case 0x10u:
      v152 = OUTLINED_FUNCTION_6_5();
      type metadata accessor for SocialGraphStatusChangeObserver(v152, v153, v154, v155);
      v156 = OUTLINED_FUNCTION_0_61();
      v157(v156);
      type metadata accessor for MusicEvent(0);
      OUTLINED_FUNCTION_3_47();
      OUTLINED_FUNCTION_7_30();
      v158 = OUTLINED_FUNCTION_4_31();
      sub_2168B9C6C(v158, v159, v160, v161);
      goto LABEL_19;
    case 0x11u:
      v69 = OUTLINED_FUNCTION_6_5();
      type metadata accessor for CloudLibraryStatusObserver(v69, v70, v71, v72);
      v73 = OUTLINED_FUNCTION_0_61();
      v74(v73);
      type metadata accessor for MusicEvent(0);
      OUTLINED_FUNCTION_3_47();
      OUTLINED_FUNCTION_7_30();
      OUTLINED_FUNCTION_4_31();
      sub_216819E74();
      goto LABEL_19;
    case 0x12u:
      v162 = OUTLINED_FUNCTION_6_5();
      type metadata accessor for SharedWithYouChangeObserver(v162, v163, v164, v165);
      v166 = OUTLINED_FUNCTION_0_61();
      v167(v166);
      type metadata accessor for MusicEvent(0);
      OUTLINED_FUNCTION_3_47();
      OUTLINED_FUNCTION_7_30();
      OUTLINED_FUNCTION_5_29();
      sub_216C9422C();
LABEL_19:
      v38 = sub_216B12B40();

      break;
    default:
      v21 = v10;
      v22 = OUTLINED_FUNCTION_8_27();
      v23 = v170;
      v24(v22);
      v25 = OUTLINED_FUNCTION_6_5();
      v29 = type metadata accessor for ExpirationDateObserver(v25, v26, v27, v28);
      v30 = OUTLINED_FUNCTION_1_47();
      v31(v30);
      (*(v21 + 16))(v12, v15, v23);
      type metadata accessor for MusicEvent(0);
      __swift_storeEnumTagSinglePayload(v9, 1, 1, v23);
      v32 = sub_216E2C700();
      v33 = OUTLINED_FUNCTION_6_5();
      type metadata accessor for AnyInvalidationObserver(v33, v34, v35, v36);
      WitnessTable = swift_getWitnessTable();
      v38 = sub_216B12C38(v32, v29, WitnessTable);
      (*(v21 + 8))(v15, v23);
      break;
  }

  return v38;
}