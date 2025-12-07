uint64_t get_enum_tag_for_layout_string_7NewsUI235MagazineFeedLayoutSectionDescriptorO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_21999E730(uint64_t a1, unsigned int a2)
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

uint64_t sub_21999E778(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21999E7C0(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_21999E7EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    v5 = sub_21999F114(a1);
    v6 = sub_21999F48C(a2);
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v5 = sub_218ACE90C(a1);
    v6 = sub_218ACEB00(a2);
LABEL_5:
    sub_2191ED57C(v6);
    return v5;
  }

  return 0;
}

uint64_t sub_21999E870(uint64_t a1)
{
  v2 = sub_21999FC48();

  return MEMORY[0x2821D5BC0](a1, v2);
}

uint64_t sub_21999E8AC(uint64_t a1)
{
  v2 = sub_2187EF004();

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_21999E8EC()
{
  v1 = *(v0 + 16);
  if (!*(v0 + 24))
  {
    return sub_21999F804(v1);
  }

  if (*(v0 + 24) != 1)
  {
    return 0;
  }

  return sub_2193C3E70(v1);
}

uint64_t sub_21999E93C(uint64_t a1)
{
  v2 = type metadata accessor for MagazineFeedLayoutSectionDescriptor.Decoration(0);
  v68 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for MagazineFeedLayoutSectionDescriptor.Footer(0);
  v67 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v6 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for MagazineFeedLayoutSectionDescriptor.Header(0);
  v7 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v9 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE9834();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *MEMORY[0x277D6E758];
  v60 = *(v11 + 104);
  v61 = v11 + 104;
  v60(v14, v15, v10, v12);
  v16 = sub_219BEE054();
  v18 = *(v11 + 8);
  v17 = v11 + 8;
  v62 = v14;
  v59 = v18;
  v18(v14, v10);
  v19 = *(v16 + 16);
  v20 = MEMORY[0x277D84F90];
  v63 = v4;
  v64 = a1;
  if (v19)
  {
    v54[2] = v17;
    v55 = v10;
    v56 = v6;
    v69 = MEMORY[0x277D84F90];
    sub_218C356B0(0, v19, 0);
    v21 = v16;
    v22 = v69;
    v66 = sub_219BF00D4();
    v23 = *(v66 - 1);
    v65 = *(v23 + 16);
    v24 = *(v23 + 80);
    v54[1] = v21;
    v25 = v21 + ((v24 + 32) & ~v24);
    v26 = *(v23 + 72);
    do
    {
      v65(v9, v25, v66);
      swift_storeEnumTagMultiPayload();
      v69 = v22;
      v28 = *(v22 + 16);
      v27 = *(v22 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_218C356B0((v27 > 1), v28 + 1, 1);
        v22 = v69;
      }

      *(v22 + 16) = v28 + 1;
      sub_21999F0AC(v9, v22 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v28, type metadata accessor for MagazineFeedLayoutSectionDescriptor.Header);
      v25 += v26;
      --v19;
    }

    while (v19);

    v4 = v63;
    a1 = v64;
    v10 = v55;
    v6 = v56;
    v20 = MEMORY[0x277D84F90];
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v29 = v62;
  (v60)(v62, *MEMORY[0x277D6E750], v10);
  v30 = sub_219BEE054();
  v31 = v29;
  v32 = v30;
  v59(v31, v10);
  v33 = *(v32 + 16);
  if (v33)
  {
    v69 = v20;
    sub_218C35660(0, v33, 0);
    v34 = v69;
    v66 = sub_219BF00D4();
    v35 = *(v66 - 1);
    v65 = *(v35 + 16);
    v36 = *(v35 + 80);
    v62 = v32;
    v37 = v32 + ((v36 + 32) & ~v36);
    v38 = *(v35 + 72);
    do
    {
      v65(v6, v37, v66);
      swift_storeEnumTagMultiPayload();
      v69 = v34;
      v40 = *(v34 + 16);
      v39 = *(v34 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_218C35660((v39 > 1), v40 + 1, 1);
        v34 = v69;
      }

      *(v34 + 16) = v40 + 1;
      sub_21999F0AC(v6, v34 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v40, type metadata accessor for MagazineFeedLayoutSectionDescriptor.Footer);
      v37 += v38;
      --v33;
    }

    while (v33);

    v4 = v63;
    a1 = v64;
    v20 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  v41 = sub_219BEE044();
  v42 = *(v41 + 16);
  if (v42)
  {
    v69 = v20;
    sub_218C36788(0, v42, 0);
    v43 = v69;
    v67 = sub_219BEE914();
    v44 = *(v67 - 8);
    v45 = *(v44 + 16);
    v65 = v41;
    v66 = v45;
    v46 = v41 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
    v47 = *(v44 + 72);
    do
    {
      v66(v4, v46, v67);
      v69 = v43;
      v48 = v4;
      v50 = *(v43 + 16);
      v49 = *(v43 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_218C36788((v49 > 1), v50 + 1, 1);
        v43 = v69;
      }

      *(v43 + 16) = v50 + 1;
      sub_21999F0AC(v48, v43 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v50, type metadata accessor for MagazineFeedLayoutSectionDescriptor.Decoration);
      v46 += v47;
      --v42;
      v4 = v48;
    }

    while (v42);
    v51 = sub_219BEE074();
    (*(*(v51 - 8) + 8))(v64, v51);
  }

  else
  {

    v52 = sub_219BEE074();
    (*(*(v52 - 8) + 8))(a1, v52);
  }

  return v22;
}

uint64_t sub_21999F0AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21999F114(uint64_t a1)
{
  v26 = type metadata accessor for MagazineFeedLayoutSectionDescriptor.Header(0);
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v30 = MEMORY[0x277D84F90];
    sub_218C34270(0, v8, 0);
    v9 = v30;
    v10 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    do
    {
      sub_21999FB38(v10, v7, type metadata accessor for MagazineFeedLayoutSectionDescriptor.Header);
      sub_21999FB38(v7, v4, type metadata accessor for MagazineFeedLayoutSectionDescriptor.Header);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader(0);
        v29 = sub_21999FC00(qword_280E97070, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader, &unk_219C7C738);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
        sub_21999F0AC(v4, boxed_opaque_existential_1, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
      }

      else
      {
        v13 = sub_219BF00D4();
        v28 = v13;
        v29 = sub_21999FC00(&qword_280E91018, MEMORY[0x277D32BB0], MEMORY[0x277D32BA8]);
        v14 = __swift_allocate_boxed_opaque_existential_1(v27);
        (*(*(v13 - 8) + 32))(v14, v4, v13);
      }

      sub_21999FBA0(v7, type metadata accessor for MagazineFeedLayoutSectionDescriptor.Header);
      v30 = v9;
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_218C34270((v15 > 1), v16 + 1, 1);
      }

      v17 = v28;
      v18 = v29;
      v19 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
      v20 = MEMORY[0x28223BE20](v19);
      v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v23 + 16))(v22, v20);
      sub_218DD76AC(v16, v22, &v30, v17, v18);
      __swift_destroy_boxed_opaque_existential_1(v27);
      v9 = v30;
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_21999F48C(uint64_t a1)
{
  v26 = type metadata accessor for MagazineFeedLayoutSectionDescriptor.Footer(0);
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v30 = MEMORY[0x277D84F90];
    sub_218C34270(0, v8, 0);
    v9 = v30;
    v10 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    do
    {
      sub_21999FB38(v10, v7, type metadata accessor for MagazineFeedLayoutSectionDescriptor.Footer);
      sub_21999FB38(v7, v4, type metadata accessor for MagazineFeedLayoutSectionDescriptor.Footer);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter(0);
        v29 = sub_21999FC00(qword_280E97138, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter, &unk_219C7C7F8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
        sub_21999F0AC(v4, boxed_opaque_existential_1, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
      }

      else
      {
        v13 = sub_219BF00D4();
        v28 = v13;
        v29 = sub_21999FC00(&qword_280E91018, MEMORY[0x277D32BB0], MEMORY[0x277D32BA8]);
        v14 = __swift_allocate_boxed_opaque_existential_1(v27);
        (*(*(v13 - 8) + 32))(v14, v4, v13);
      }

      sub_21999FBA0(v7, type metadata accessor for MagazineFeedLayoutSectionDescriptor.Footer);
      v30 = v9;
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_218C34270((v15 > 1), v16 + 1, 1);
      }

      v17 = v28;
      v18 = v29;
      v19 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
      v20 = MEMORY[0x28223BE20](v19);
      v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v23 + 16))(v22, v20);
      sub_218DD76AC(v16, v22, &v30, v17, v18);
      __swift_destroy_boxed_opaque_existential_1(v27);
      v9 = v30;
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_21999F804(uint64_t a1)
{
  v32 = sub_219BEE914();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MagazineFeedLayoutSectionDescriptor.Decoration(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v36 = MEMORY[0x277D84F90];
    sub_218C35B30(0, v11, 0);
    v12 = v36;
    v13 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v14 = *(v6 + 72);
    v29 = (v2 + 32);
    v30 = v14;
    v15 = (v2 + 8);
    do
    {
      sub_21999FB38(v13, v10, type metadata accessor for MagazineFeedLayoutSectionDescriptor.Decoration);
      v16 = v31;
      sub_21999FB38(v10, v31, type metadata accessor for MagazineFeedLayoutSectionDescriptor.Decoration);
      v17 = v16;
      v18 = v32;
      (*v29)(v4, v17, v32);
      sub_219BEE8F4();
      (*v15)(v4, v18);
      sub_21999FBA0(v10, type metadata accessor for MagazineFeedLayoutSectionDescriptor.Decoration);
      v36 = v12;
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_218C35B30((v19 > 1), v20 + 1, 1);
      }

      v21 = v34;
      v22 = v35;
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
      v24 = MEMORY[0x28223BE20](v23);
      v26 = &v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v26, v24);
      sub_218DD76AC(v20, v26, &v36, v21, v22);
      __swift_destroy_boxed_opaque_existential_1(v33);
      v12 = v36;
      v13 += v30;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_21999FB38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21999FBA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21999FC00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21999FC48()
{
  result = qword_27CC21B80;
  if (!qword_27CC21B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21B80);
  }

  return result;
}

uint64_t sub_21999FCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_219BF00D4();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21999FD58@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 feedConfiguration];
  if (v3 > 10)
  {
    switch(v3)
    {
      case 11:
        v4 = MEMORY[0x277D2F2E0];
        goto LABEL_15;
      case 12:
        v4 = MEMORY[0x277D2F330];
        goto LABEL_15;
      case 13:
        v4 = MEMORY[0x277D2F2B8];
        goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v3 == 3)
  {
    v4 = MEMORY[0x277D2F320];
    goto LABEL_15;
  }

  if (v3 == 8)
  {
LABEL_13:
    v4 = MEMORY[0x277D2F2A0];
    goto LABEL_15;
  }

  if (v3 != 9)
  {
LABEL_12:
    v5 = [sub_219BF6394() isSportsEvent];
    swift_unknownObjectRelease();
    if (v5)
    {
      goto LABEL_13;
    }

    v10 = [v1 backingTag];
    v11 = swift_dynamicCastObjCProtocolConditional();
    swift_unknownObjectRelease();
    if (v11)
    {
      v12 = MEMORY[0x277D2F288];
    }

    else
    {
      if (![v1 backingChannel])
      {
        v13 = *MEMORY[0x277D2F308];
        goto LABEL_23;
      }

      swift_unknownObjectRelease();
      v12 = MEMORY[0x277D2F328];
    }

    v13 = *v12;
LABEL_23:
    v14 = sub_219BE14C4();
    return (*(*(v14 - 8) + 104))(a1, v13, v14);
  }

  v4 = MEMORY[0x277D2F350];
LABEL_15:
  v6 = *v4;
  v7 = sub_219BE14C4();
  v8 = *(*(v7 - 8) + 104);

  return v8(a1, v6, v7);
}

uint64_t sub_21999FF60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListHistoryFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HistoryFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EED10(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  v18 = type metadata accessor for HistoryFeedGroupConfig(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2199A02C0(a1, v20, type metadata accessor for HistoryFeedGroupConfig);
  v21 = *(v12 + 32);
  v21(v17, v20, v11);
  (*(v12 + 16))(v14, v17, v11);
  sub_2199A02C0(a2, v9, type metadata accessor for HistoryFeedGroupKnobs);
  v22 = v9;
  v23 = v6;
  sub_2194DEAFC(v22, v6);
  sub_218718690(v27 + 16, v28);
  type metadata accessor for ArticleListHistoryFeedGroupEmitter(0);
  v24 = swift_allocObject();
  v21((v24 + OBJC_IVAR____TtC7NewsUI234ArticleListHistoryFeedGroupEmitter_config), v14, v11);
  sub_2194DEAFC(v23, v24 + OBJC_IVAR____TtC7NewsUI234ArticleListHistoryFeedGroupEmitter_knobs);
  sub_2186CB1F0(v28, v24 + OBJC_IVAR____TtC7NewsUI234ArticleListHistoryFeedGroupEmitter_formatService);
  *&v28[0] = v24;
  sub_2199A0328(0);
  swift_allocObject();
  sub_218780DB8(&qword_280EA1440, type metadata accessor for ArticleListHistoryFeedGroupEmitter, &unk_219C14BD0);
  v25 = sub_219BEDF84();
  (*(v12 + 8))(v17, v11);
  return v25;
}

uint64_t sub_2199A02C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2199A0328(uint64_t a1)
{
  if (!qword_280E91DC0)
  {
    type metadata accessor for HistoryFeedServiceConfig(255);
    sub_218780DB8(&qword_280EC18D0, type metadata accessor for HistoryFeedServiceConfig, &unk_219C4C2E8);
    v1 = sub_219BEDFA4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91DC0);
    }
  }
}

uint64_t sub_2199A03E4(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleModel);
  v3 = *(v2 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleModel + 8);
  if (*(v2 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleModel + 16))
  {
    v5 = [swift_unknownObjectRetain() identifier];
    v6 = sub_219BF5414();
    v8 = v7;

    v9.n128_f64[0] = sub_218B083E8(v4, v3, 1);
    v4 = v6;
    v3 = v8;
  }

  else
  {
  }

  MEMORY[0x21CECC330](v4, v3, v9);

  return 0x4356656C7A7A7570;
}

uint64_t sub_2199A04BC(void (**a1)(char *, uint64_t), void *a2, void *a3, uint64_t a4, void (*a5)(char *, char *, uint64_t), void *a6, int a7)
{
  LODWORD(v102) = a7;
  v103 = a6;
  v106 = a5;
  *&v105 = a4;
  v97 = a2;
  v107 = sub_219BF28F4();
  v99 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v109 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v90 = &v89 - v11;
  MEMORY[0x28223BE20](v12);
  v108 = &v89 - v13;
  v14 = sub_219BE7724();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v89 - v19;
  v94 = sub_219BE7784();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v100 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21964E420(a1, a3);
  v23 = objc_allocWithZone(MEMORY[0x277D75348]);
  v115 = sub_21964E5A0;
  v116 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218FEA284;
  v114 = &block_descriptor_34_2;
  v24 = _Block_copy(aBlock);
  v25 = [v23 initWithDynamicProvider_];
  _Block_release(v24);

  v95 = a1;
  v96 = a3;
  v26 = sub_21964E4C4(a1, a3);
  v92 = v25;
  if (v22)
  {
    v27 = v22;
  }

  else
  {
    v27 = v25;
  }

  v91 = v22;
  v28 = v103;
  if (v102)
  {
    [v27 ts_luminance];
    if (v29 <= 0.7)
    {
      v28 = 1;
    }

    else
    {
      v28 = 3;
    }
  }

  *v20 = v27;
  *(v20 + 1) = v26;
  v20[16] = 0;
  *(v20 + 3) = 0;
  v30 = *(v15 + 104);
  v30(v20, *MEMORY[0x277D6DB40], v14);
  v30(v17, *MEMORY[0x277D6DB50], v14);
  v103 = v26;
  v98 = v27;
  MEMORY[0x21CEBE4E0](v20, v17, v28, v28, 0, 0);
  sub_2199AEFC0(&qword_280EE5008, MEMORY[0x277D6DB58], MEMORY[0x277D6DB60]);
  sub_219BE2114();
  v104 = v26;
  v31 = v105;
  if (!v105)
  {
    v32 = 0;
    v34 = v107;
    goto LABEL_24;
  }

  v32 = sub_2194B08C8(MEMORY[0x277D84F90]);
  v33 = *(v31 + 16);
  v34 = v107;
  if (!v33)
  {
LABEL_24:
    v42 = sub_21964E4D8(v95, v96);
    v56 = sub_219BF6344();
    v33 = v56;
    if (v56 >> 62)
    {
      goto LABEL_54;
    }

    v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v57)
    {
      goto LABEL_26;
    }

LABEL_55:

    return (*(v93 + 8))(v100, v94);
  }

  v106 = v99[2];
  v35 = (v31 + ((*(v99 + 80) + 32) & ~*(v99 + 80)));
  v36 = v99[9];
  v102 = (v99 + 4);
  *&v105 = v99 + 1;
  v101 = (v99 + 5);
  while (1)
  {
    v38 = v108;
    v39 = v106;
    v106(v108, v35, v34);
    v40 = sub_219BF28D4();
    v42 = v41;
    v39(v109, v38, v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v32;
    v44 = sub_21870F700(v40, v42);
    v46 = v32[2];
    v47 = (v45 & 1) == 0;
    v48 = __OFADD__(v46, v47);
    v49 = v46 + v47;
    if (v48)
    {
      break;
    }

    v50 = v45;
    if (v32[3] < v49)
    {
      sub_21948298C(v49, isUniquelyReferenced_nonNull_native);
      v44 = sub_21870F700(v40, v42);
      if ((v50 & 1) != (v51 & 1))
      {
        goto LABEL_57;
      }

LABEL_18:
      if (v50)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_18;
    }

    v55 = v44;
    sub_219493184();
    v44 = v55;
    if (v50)
    {
LABEL_11:
      v37 = v44;

      v32 = aBlock[0];
      v34 = v107;
      (*v101)(*(aBlock[0] + 56) + v37 * v36, v109, v107);
      (*v105)(v108, v34);
      goto LABEL_12;
    }

LABEL_19:
    v32 = aBlock[0];
    *(aBlock[0] + 8 * (v44 >> 6) + 64) |= 1 << v44;
    v52 = (v32[6] + 16 * v44);
    *v52 = v40;
    v52[1] = v42;
    v34 = v107;
    (*v102)(v32[7] + v44 * v36, v109, v107);
    (*v105)(v108, v34);
    v53 = v32[2];
    v48 = __OFADD__(v53, 1);
    v54 = v53 + 1;
    if (v48)
    {
      goto LABEL_53;
    }

    v32[2] = v54;
LABEL_12:
    v35 += v36;
    if (!--v33)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  v57 = sub_219BF7214();
  if (!v57)
  {
    goto LABEL_55;
  }

LABEL_26:
  if (v57 >= 1)
  {
    v58 = 0;
    v108 = (v33 & 0xC000000000000001);
    v96 = v99 + 2;
    v59 = &unk_27CC21C50;
    v60 = MEMORY[0x277D6D328];
    v95 = (v99 + 1);
    v105 = xmmword_219C189F0;
    v102 = v33;
    v106 = v42;
    v109 = v57;
    while (1)
    {
      if (v108)
      {
        v61 = MEMORY[0x21CECE0F0](v58, v33);
      }

      else
      {
        v61 = *(v33 + 8 * v58 + 32);
      }

      v62 = v61;
      v112 = v61;
      sub_2186C6148(0, &qword_280E8E5D0, 0x277D751E0);
      sub_2186CFDE4(0, v59, v60);
      v63 = v62;
      v64 = v59;
      v65 = v63;
      if (swift_dynamicCast())
      {
        sub_2186CB1F0(v110, aBlock);
        if (v104 && v42)
        {
          if (v32)
          {
            sub_219BE7274();
            v66 = swift_dynamicCastClass();
            v67 = v103;
            if (!v66)
            {
              v84 = v42;
              goto LABEL_48;
            }

            v101 = v67;
            v68 = v65;
            v69 = v42;

            v70 = sub_219BE7254();
            if (v32[2])
            {
              v97 = v69;
              v72 = sub_21870F700(v70, v71);
              v74 = v73;

              if (v74)
              {
                v75 = v90;
                (v99[2])(v90, v32[7] + v99[9] * v72, v34);

                if (sub_219BF28E4())
                {

                  __swift_project_boxed_opaque_existential_1(aBlock, v114);
                  sub_2199AE594(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
                  v76 = swift_allocObject();
                  *(v76 + 16) = v105;
                  v77 = v98;
                  v78 = v101;
                  *(v76 + 32) = v98;
                  *(v76 + 40) = v78;
                  v79 = v77;
                  v80 = v78;
                  v34 = v107;
                  sub_219BE5BB4();

                  (*v95)(v75, v34);
LABEL_50:
                  __swift_destroy_boxed_opaque_existential_1(aBlock);
                  v42 = v106;
                  v59 = &unk_27CC21C50;
                  v60 = MEMORY[0x277D6D328];
                  goto LABEL_29;
                }

                (*v95)(v75, v34);
LABEL_47:

LABEL_48:
                v81 = v103;
LABEL_49:
                __swift_project_boxed_opaque_existential_1(aBlock, v114);
                sub_2199AE594(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
                v85 = swift_allocObject();
                *(v85 + 16) = v105;
                *(v85 + 32) = v81;
                *(v85 + 40) = v42;
                v86 = v81;
                v87 = v42;
                sub_219BE5BB4();

                v34 = v107;
                v33 = v102;
                goto LABEL_50;
              }
            }

            else
            {
            }

            goto LABEL_47;
          }

          v81 = v103;
          v82 = v103;
          v83 = v42;
          goto LABEL_49;
        }

        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v59 = &unk_27CC21C50;
      }

      else
      {

        v111 = 0;
        memset(v110, 0, sizeof(v110));
        sub_2199AF158(v110, &qword_27CC21C58, v64, v60, sub_2186CFDE4);
        v59 = v64;
      }

LABEL_29:
      if (v109 == ++v58)
      {
        goto LABEL_55;
      }
    }
  }

  __break(1u);
LABEL_57:
  result = sub_219BF79A4();
  __break(1u);
  return result;
}

uint64_t sub_2199A1050@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D33A08];
  sub_218760490(0, &unk_280E90358, MEMORY[0x277D33A08], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v16[-v8];
  v10 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController____lazy_storage___radarBarButtonItem;
  swift_beginAccess();
  sub_2199AF008(v1 + v10, v9, &unk_280E90358, v3);
  v11 = sub_219BF28F4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  v13 = MEMORY[0x277D33A08];
  sub_2187460CC(v9, &unk_280E90358, MEMORY[0x277D33A08], MEMORY[0x277D83D88], sub_218760490);
  v14 = sub_219BF39D4();
  sub_21965DD14(v14, a1);
  swift_unknownObjectRelease();
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_2199AF088(v6, v1 + v10, &unk_280E90358, v13);
  return swift_endAccess();
}

id sub_2199A12E0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController____lazy_storage___puzzleMenuAction;
  v3 = *(v1 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController____lazy_storage___puzzleMenuAction);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController____lazy_storage___puzzleMenuAction);
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleRadarReporter);
    v6 = v1;
    v7 = sub_219BF39D4();
    v8 = OBJC_IVAR____TtC7NewsUI219PuzzleRadarReporter_puzzleRadarScript;
    [v7 removeScript_];
    [v7 addScript_];
    sub_2186C6148(0, &qword_280E8D9D0, 0x277D750C8);
    v9 = sub_219BF53D4();
    v10 = [objc_opt_self() systemImageNamed_];

    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    *(v13 + 24) = v12;

    v14 = sub_219BF6E14();

    swift_unknownObjectRelease();
    v15 = *(v6 + v2);
    *(v6 + v2) = v14;
    v4 = v14;

    v3 = 0;
  }

  v16 = v3;
  return v4;
}

double sub_2199A14E8(uint64_t a1)
{
  v1 = sub_219BE2864();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v5 = sub_219BE5434();
  __swift_project_value_buffer(v5, qword_280F625E0);
  v6 = sub_219BE5414();
  v7 = sub_219BF6214();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2186C1000, v6, v7, "visibilityEventManager: Received events embedDidLoad & viewDidAppear. sending request visibility changed to true", v8, 2u);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_eventHandler);
    v11 = Strong;
    swift_unknownObjectRetain();

    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = [v12 presentedViewController];

      if (v14)
      {

        LOBYTE(v14) = 1;
      }
    }

    else
    {
      LOBYTE(v14) = 0;
    }

    v15 = *(v10 + 32);
    v27 = &type metadata for PuzzleVisibilityChangedEvent;
    v28 = sub_2199AD104();
    v25 = 1;
    v26 = v14;
    v16 = objc_allocWithZone(sub_219BF2224());
    v17 = sub_219BF2214();
    [*(v15 + OBJC_IVAR____TtC7NewsUI216PuzzleInteractor_scriptsManager) executeScript:v17 completion:0];
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v20 = v18;

    sub_2194B4C80(&unk_282A2BD58);
    v21 = MEMORY[0x277D6CD38];
    sub_218760490(0, &qword_280E8C090, MEMORY[0x277D6CD38], MEMORY[0x277D84560]);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_219C09BA0;
    sub_219BE2824();
    v24 = v22;
    sub_2199AEFC0(&qword_280EE73C0, MEMORY[0x277D6CD38], MEMORY[0x277D6CD40]);
    sub_218760490(0, &unk_280E8F5C0, v21, MEMORY[0x277D83940]);
    sub_2199AE2D4(&qword_280E8F5B0, &unk_280E8F5C0, v21);
    sub_219BF7164();
    swift_allocObject();
    swift_beginAccess();
    v23 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    sub_219BE1D14();

    (*(v2 + 8))(v4, v1);
  }

  return result;
}

void sub_2199A1964(uint64_t a1)
{
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  __swift_project_value_buffer(v1, qword_280F625E0);
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2186C1000, v2, v3, "visibilityEventManager: Received event viewDidAppear. sending request visibility changed to true", v4, 2u);
    MEMORY[0x21CECF960](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_eventHandler);
    v7 = Strong;
    swift_unknownObjectRetain();

    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = [v8 presentedViewController];

      if (v10)
      {
      }
    }

    v11 = *(v6 + 32);
    sub_2199AD104();
    v12 = objc_allocWithZone(sub_219BF2224());
    v13 = sub_219BF2214();
    [*(v11 + OBJC_IVAR____TtC7NewsUI216PuzzleInteractor_scriptsManager) executeScript:v13 completion:0];
    swift_unknownObjectRelease();
  }
}

void sub_2199A1B44(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *&Strong[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_embedDidLoadCompletion];
    if (v3)
    {
      v4 = *&Strong[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_embedDidLoadCompletion + 8];
      sub_2188202A8(*&Strong[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_embedDidLoadCompletion]);

      v3();
      sub_2187FABEC(v3, v4);
    }

    else
    {
    }
  }
}

void sub_2199A1FFC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_218760490(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  *&v4 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v6 = &v37[-1] - v5;
  v38.receiver = v0;
  v38.super_class = ObjectType;
  objc_msgSendSuper2(&v38, sel_viewDidLoad, v4);
  v7 = [v0 presentationController];
  if (v7)
  {
    v8 = v7;
    [v7 setDelegate_];
  }

  v9 = [v1 navigationController];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 presentationController];

    if (v11)
    {
      [v11 setDelegate_];
    }
  }

  v12 = [v1 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v12;
  [v12 setClipsToBounds_];

  v14 = [v1 view];
  if (!v14)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v14;
  [v14 setAutoresizingMask_];

  v16 = *&v1[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleEmbedViewController];
  [v1 addChildViewController_];
  v17 = [v1 view];
  if (!v17)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = v17;
  v19 = [v16 view];
  if (!v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = v19;
  [v18 addSubview_];

  [v16 didMoveToParentViewController_];
  v21 = [v1 traitCollection];
  sub_218718690(&v1[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_styler], v37);
  __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  v22 = [v1 view];
  if (v22)
  {
    v23 = v22;

    v24 = sub_21964E304();
    [v23 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v37);
    sub_2199A77B8(0, 0);
    sub_218760490(0, &qword_280E8BD50, sub_2187C4338, MEMORY[0x277D84560]);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_219C09EC0;
    v26 = sub_219BEBA34();
    v27 = MEMORY[0x277D74C50];
    *(v25 + 32) = v26;
    *(v25 + 40) = v27;
    v28 = sub_219BEB8B4();
    v29 = MEMORY[0x277D74BF0];
    *(v25 + 48) = v28;
    *(v25 + 56) = v29;
    sub_219BF6604();
    swift_unknownObjectRelease();

    v30 = *(*&v1[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_eventHandler] + 32);
    v31 = sub_219BF5BF4();
    (*(*(v31 - 8) + 56))(v6, 1, 1, v31);
    sub_219BF5BD4();
    swift_unknownObjectRetain();
    v32 = sub_219BF5BC4();
    v33 = swift_allocObject();
    v34 = MEMORY[0x277D85700];
    v33[2] = v32;
    v33[3] = v34;
    v33[4] = v30;
    sub_218AB3D80(0, 0, v6, &unk_219CBB868, v33);

    v35 = sub_219BF65B4();
    [v35 setBackButtonDisplayMode_];

    return;
  }

LABEL_16:
  __break(1u);
}

void sub_2199A2478(uint64_t a1)
{
  v2 = v1;
  v4 = sub_219BF1FE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE4914();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_paywall;
  swift_beginAccess();
  (*(v9 + 16))(v11, &v2[v12], v8);
  LOBYTE(v12) = sub_219BE48A4();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    return;
  }

  v13 = MEMORY[0x277D84F90];
  if (*&v2[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentRightMenuItems])
  {
    v14 = *&v2[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentRightMenuItems];
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v15 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_initialLeadingRightBarButtonItems;
  swift_beginAccess();
  v16 = *&v2[v15];
  if (v16)
  {
    v13 = v16;
  }

  v84 = v14;

  sub_2191EDAB0(v13);
  v17 = v84;
  v18 = 0.0;
  if ((sub_219BED0C4() & 1) == 0)
  {
    v19 = [v2 traitCollection];
    v20 = [v19 horizontalSizeClass];

    if (v20 == 2)
    {
      v18 = 16.0;
    }

    else
    {
      v18 = 4.0;
    }
  }

  v82 = [objc_opt_self() fixedSpaceItemOfWidth_];
  if (sub_219BED0C4())
  {
    v21 = 10;
  }

  else
  {
    v22 = [v2 traitCollection];
    v23 = [v22 horizontalSizeClass];

    if (v23 == 2)
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }
  }

  v24 = v17 >> 62;
  if (v17 >> 62)
  {
    goto LABEL_72;
  }

  v25 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v25 >= v21)
  {
    v26 = v21;
  }

  else
  {
    v26 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v25 < v26)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  while (1)
  {
    v79 = v21;
    if ((v17 & 0xC000000000000001) != 0 && v26)
    {
      sub_2186C6148(0, &qword_280E8E5D0, 0x277D751E0);

      v27 = 0;
      do
      {
        v28 = v27 + 1;
        sub_219BF7334();
        v27 = v28;
      }

      while (v26 != v28);
      v77 = v5;
      v78 = v4;
      if (!v24)
      {
LABEL_26:
        v4 = 0;
        v29 = v17 & 0xFFFFFFFFFFFFFF8;
        v5 = (v17 & 0xFFFFFFFFFFFFFF8) + 32;
        v26 = (2 * v26) | 1;
        goto LABEL_29;
      }
    }

    else
    {

      v77 = v5;
      v78 = v4;
      if (!v24)
      {
        goto LABEL_26;
      }
    }

    v29 = sub_219BF7564();
    v5 = v30;
    v4 = v31;
    v26 = v32;
LABEL_29:
    swift_unknownObjectRetain();
    v33 = sub_219BED0C4();
    v80 = a1;
    v81 = v29;
    if (v33)
    {
      break;
    }

    v36 = v26 >> 1;
    v37 = (v26 >> 1) - v4;
    if (__OFSUB__(v26 >> 1, v4))
    {
      goto LABEL_82;
    }

    if (!v37)
    {
      swift_unknownObjectRelease();
      v26 = MEMORY[0x277D84F90];
      goto LABEL_52;
    }

    v84 = MEMORY[0x277D84F90];
    v26 = &v84;
    sub_219BF73F4();
    swift_unknownObjectRelease();
    if ((v37 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_103;
    }

    if (v4 <= v36)
    {
      v38 = v36;
    }

    else
    {
      v38 = v4;
    }

    a1 = v38 - v4;
    v21 = v5 + 8 * v4;
    while (a1)
    {
      v39 = *v21;
      v21 += 8;
      v4 = v39;
      sub_219BF73D4();
      v5 = *(v84 + 16);
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      --a1;
      if (!--v37)
      {
        v26 = v84;
        a1 = v80;
LABEL_52:
        v45 = sub_218B66DF4(v82);
        sub_2199AB76C(v26, v45);
        v35 = v46;
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_72:
    v61 = sub_219BF7214();
    if (sub_219BF7214() < 0)
    {
      __break(1u);
      return;
    }

    if (v61 >= v21)
    {
      v62 = v21;
    }

    else
    {
      v62 = v61;
    }

    if (v61 >= 0)
    {
      v26 = v62;
    }

    else
    {
      v26 = v21;
    }

    if (sub_219BF7214() < v26)
    {
      goto LABEL_80;
    }
  }

  swift_unknownObjectRelease();
  if (v26)
  {
    sub_219BF7934();
    swift_unknownObjectRetain_n();
    v40 = swift_dynamicCastClass();
    if (!v40)
    {
      swift_unknownObjectRelease();
      v40 = MEMORY[0x277D84F90];
    }

    v41 = *(v40 + 16);

    if (__OFSUB__(v26 >> 1, v4))
    {
      goto LABEL_104;
    }

    if (v41 != (v26 >> 1) - v4)
    {
      goto LABEL_105;
    }

    v26 = v81;
    v35 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v42 = v79;
    if (!v35)
    {
      swift_unknownObjectRelease();
      v35 = MEMORY[0x277D84F90];
    }

    v43 = v17 & 0xFFFFFFFFFFFFFF8;
    if (v24)
    {
      goto LABEL_54;
    }

    goto LABEL_50;
  }

  swift_unknownObjectRetain();
  while (2)
  {
    sub_218B66E88(v29, v5, v4, v26);
    v35 = v34;
    swift_unknownObjectRelease();
LABEL_53:
    v42 = v79;
    v43 = v17 & 0xFFFFFFFFFFFFFF8;
    if (v24)
    {
LABEL_54:
      v44 = sub_219BF7214();
    }

    else
    {
LABEL_50:
      v44 = *(v43 + 16);
    }

    if (__OFSUB__(v44, v42))
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
    }

    else
    {
      v79 = v35;
      v47 = (v44 - v42) & ~((v44 - v42) >> 63);
      if (*&v2[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentLeftMenuItems])
      {
        v24 = *&v2[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentLeftMenuItems];
      }

      else
      {
        v24 = MEMORY[0x277D84F90];
      }

      v48 = sub_2199AD2E0(v47, v17);
      v50 = v49;
      v52 = v51;
      v4 = v53;

      v84 = v24;
      v26 = &v84;
      sub_2191EE9D8(v48, v50, v52, v4);
      v17 = v84;
      if (sub_219BED0C4())
      {
        v54 = sub_219319AE4(v17);
        v55 = v78;
        goto LABEL_86;
      }

      if (!(v17 >> 62))
      {
        v5 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v5)
        {
          goto LABEL_84;
        }

        goto LABEL_63;
      }
    }

    v5 = sub_219BF7214();
    if (!v5)
    {
LABEL_84:

      v60 = MEMORY[0x277D84F90];
      goto LABEL_85;
    }

LABEL_63:
    v84 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    if (v5 < 0)
    {
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      v29 = v81;
      swift_unknownObjectRelease();
      continue;
    }

    break;
  }

  if ((v17 & 0xC000000000000001) != 0)
  {
    v56 = 0;
    do
    {
      v57 = v56 + 1;
      MEMORY[0x21CECE0F0]();
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v56 = v57;
    }

    while (v5 != v57);
  }

  else
  {
    v58 = 32;
    do
    {
      v59 = *(v17 + v58);
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v58 += 8;
      --v5;
    }

    while (v5);
  }

  v60 = v84;
LABEL_85:
  v55 = v78;
  v63 = sub_218B66DF4(v82);
  sub_2199AB76C(v60, v63);
  v54 = v64;
LABEL_86:
  if (*&v2[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_initialLeftBarButtonItems])
  {
    v65 = *&v2[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_initialLeftBarButtonItems];
  }

  else
  {
    v65 = MEMORY[0x277D84F90];
  }

  if (v54 >> 62)
  {
    if (!sub_219BF7214())
    {
      goto LABEL_93;
    }

LABEL_91:
    v66 = sub_218B66DF4(v82);
  }

  else
  {
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_91;
    }

LABEL_93:
    v66 = MEMORY[0x277D84F90];
  }

  v83 = v65;

  sub_2191EDAB0(v66);
  sub_2191EDAB0(v54);
  v67 = sub_219BF65B4();
  [v67 setLeftItemsSupplementBackButton_];

  v68 = v77;
  v69 = *(v77 + 104);
  v69(v7, *MEMORY[0x277D336D8], v55);
  v70 = sub_218C31AE4(v7, a1);
  v71 = *(v68 + 8);
  v71(v7, v55);
  if (v70)
  {
    v72 = sub_219BF65B4();
    sub_2186C6148(0, &qword_280E8E5D0, 0x277D751E0);
    v73 = sub_219BF5904();

    [v72 setLeftBarButtonItems:v73 animated:0];
  }

  else
  {
  }

  v69(v7, *MEMORY[0x277D336E0], v55);
  v74 = sub_218C31AE4(v7, v80);
  v71(v7, v55);
  if (v74)
  {
    v75 = sub_219BF65B4();
    sub_2186C6148(0, &qword_280E8E5D0, 0x277D751E0);
    v76 = sub_219BF5904();

    [v75 setRightBarButtonItems:v76 animated:0];
  }

  else
  {
  }

  swift_unknownObjectRelease();
}

id sub_2199A2E5C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = MEMORY[0x277D338C0];
  sub_218760490(0, &qword_280E90470, MEMORY[0x277D338C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v65 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v60 - v9;
  v11 = sub_219BF24E4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v64 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v60 - v16;
  v67.receiver = v2;
  v67.super_class = ObjectType;
  objc_msgSendSuper2(&v67, sel_viewWillAppear_, a1 & 1, v15);
  v18 = &v2[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleModel];
  v19 = *(type metadata accessor for PuzzleModel(0) + 20);
  sub_2199AF008(&v18[v19], v10, &qword_280E90470, v5);
  v20 = *(v12 + 48);
  if (v20(v10, 1, v11) == 1)
  {
    sub_2187460CC(v10, &qword_280E90470, MEMORY[0x277D338C0], MEMORY[0x277D83D88], sub_218760490);
    goto LABEL_19;
  }

  (*(v12 + 32))(v17, v10, v11);
  if ((sub_219BF24D4() & 1) == 0)
  {
    (*(v12 + 8))(v17, v11);
    goto LABEL_19;
  }

  v63 = v17;
  [v2 setPreferredContentSize_];
  v21 = *&v2[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleViewConfig];
  if (!v21)
  {
LABEL_15:
    v54 = &v2[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_fullScreenModalDelegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v55 = *(v54 + 1);
      v56 = swift_getObjectType();
      (*(v55 + 8))(v56, v55);
      swift_unknownObjectRelease();
    }

    (*(v12 + 8))(v63, v11);
LABEL_19:
    sub_2199A350C();
    sub_2199A3854();
    v57 = v65;
    sub_2199AF008(&v18[v19], v65, &qword_280E90470, MEMORY[0x277D338C0]);
    if (v20(v57, 1, v11) == 1)
    {
      sub_2187460CC(v57, &qword_280E90470, MEMORY[0x277D338C0], MEMORY[0x277D83D88], sub_218760490);
    }

    else
    {
      v58 = v64;
      (*(v12 + 32))(v64, v57, v11);
      v59 = sub_219BF24D4();
      (*(v12 + 8))(v58, v11);
      if (v59)
      {
        return sub_219BE20A4();
      }
    }

    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_219BE7544();
    swift_unknownObjectRelease();
    return sub_219BE20A4();
  }

  v22 = v21;
  v23 = [v2 presentingViewController];
  if (!v23)
  {
LABEL_14:

    goto LABEL_15;
  }

  v61 = v22;
  v62 = v23;
  result = [v23 view];
  if (result)
  {
    v25 = result;
    v26 = [result subviews];

    sub_2186C6148(0, &qword_280E8DAE0, 0x277D75D18);
    v27 = sub_219BF5924();

    v60 = *&v2[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_transitionEffectView];
    v66 = v60;
    MEMORY[0x28223BE20](v28);
    *(&v60 - 2) = &v66;
    LOBYTE(v25) = sub_218FB1EEC(sub_2199AEF58, (&v60 - 4), v27);

    v29 = v61;
    if (v25)
    {
LABEL_13:

      v22 = v62;
      goto LABEL_14;
    }

    v30 = objc_opt_self();
    v31 = [v30 mainScreen];
    [v31 bounds];
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v68.origin.x = v33;
    v68.origin.y = v35;
    v68.size.width = v37;
    v68.size.height = v39;
    Width = CGRectGetWidth(v68);
    v41 = [v30 mainScreen];
    [v41 bounds];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;

    v69.origin.x = v43;
    v69.origin.y = v45;
    v69.size.width = v47;
    v69.size.height = v49;
    Height = CGRectGetHeight(v69);
    if (Width > Height)
    {
      v51 = Width;
    }

    else
    {
      v51 = Height;
    }

    v52 = v60;
    [v60 setFrame_];
    result = [v62 view];
    if (result)
    {
      v53 = result;
      [result addSubview_];

      [v52 setEffect_];
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2199A350C()
{
  v1 = sub_219BF30A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF3984();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF3344();
  v10 = *(v9 - 8);
  *&v12 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v0 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzle);
  if (result)
  {
    v20 = v10;
    v21 = v11;
    v16 = [result puzzleType];
    v19 = v5;
    swift_unknownObjectRetain();
    sub_219BF3324();
    v18[1] = *(v0 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_commands);
    sub_219BEAF54();
    sub_219BEAA94();
    sub_219BF3334();
    (*(v2 + 104))(v4, *MEMORY[0x277D33C90], v1);
    sub_219BF3964();
    v17 = *(v0 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_tracker);
    v22[3] = sub_219BDD274();
    v22[4] = sub_2199AEFC0(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    v22[0] = v17;

    sub_219BE6A74();
    swift_unknownObjectRelease();

    (*(v6 + 8))(v8, v19);
    (*(v20 + 8))(v14, v21);
    return sub_2199AF158(v22, &qword_280EE5AD0, &qword_280EE5AE0, MEMORY[0x277D6D540], sub_2186CFDE4);
  }

  return result;
}

void sub_2199A3854()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_219BF28F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_initialLeftBarButtonItems;
  if (!*(v0 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_initialLeftBarButtonItems))
  {
    v7 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_initialLeadingRightBarButtonItems;
    swift_beginAccess();
    if (!*(v0 + v7))
    {
      v8 = sub_219BF65B4();
      v9 = [v8 leftBarButtonItems];

      if (v9)
      {
        sub_2186C6148(0, &qword_280E8E5D0, 0x277D751E0);
        v10 = sub_219BF5924();
      }

      else
      {
        v10 = MEMORY[0x277D84F90];
      }

      *(v1 + v6) = v10;

      v11 = sub_219BF65B4();
      v12 = [v11 rightBarButtonItems];

      if (v12)
      {
        sub_2186C6148(0, &qword_280E8E5D0, 0x277D751E0);
        v13 = sub_219BF5924();
      }

      else
      {
        v13 = MEMORY[0x277D84F90];
      }

      *(v1 + v7) = v13;

      if (NFInternalBuild() && (sub_219BDC734(), sub_2199AEFC0(&qword_27CC21C90, type metadata accessor for PuzzleViewController, &unk_219CBB7D4), sub_219BDC7D4(), , (v28[0] & 1) == 0) && (v14 = [objc_opt_self() currentTraitCollection], v15 = objc_msgSend(v14, sel_horizontalSizeClass), v14, v15 == 2))
      {
        swift_beginAccess();
        if (*(v1 + v7))
        {
          sub_2199A1050(v5);
          v16 = sub_219BF28A4();
          (*(v3 + 8))(v5, v2);
          if (*(v1 + v7) >> 62 && sub_219BF7214() < 0)
          {
            __break(1u);
            return;
          }

          sub_218953614(0, 0, v16);
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
        }

        sub_218760490(0, &unk_27CC21C40, MEMORY[0x277D336F0], MEMORY[0x277D84560]);
        v20 = sub_219BF1FE4();
        v21 = *(v20 - 8);
        v22 = *(v21 + 72);
        v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_219C09EC0;
        v25 = v24 + v23;
        v26 = *(v21 + 104);
        v26(v25, *MEMORY[0x277D336D8], v20);
        v26(v25 + v22, *MEMORY[0x277D336E0], v20);
        v27 = sub_2194B4D64(v24);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_2199A2478(v27);
      }

      else if (NFInternalBuild())
      {
        sub_219BDC734();
        sub_2199AEFC0(&qword_27CC21C90, type metadata accessor for PuzzleViewController, &unk_219CBB7D4);
        sub_219BDC7D4();

        if ((v28[0] & 1) == 0)
        {
          v17 = [objc_opt_self() currentTraitCollection];
          v18 = [v17 horizontalSizeClass];

          if (v18 != 2)
          {
          }
        }
      }
    }
  }
}

void sub_2199A3DD4(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_218760490(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  *&v6 = MEMORY[0x28223BE20](v5 - 8).n128_u64[0];
  v8 = &v38 - v7;
  v44.receiver = v2;
  v44.super_class = ObjectType;
  objc_msgSendSuper2(&v44, sel_viewDidAppear_, a1 & 1, v6);
  v9 = *&v2[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_bundleSubscriptionManager];
  v10 = [v9 cachedSubscription];
  if (objc_getAssociatedObject(v10, v10 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v42 = v40;
  v43 = v41;
  v11 = MEMORY[0x277D84F70];
  if (*(&v41 + 1))
  {
    sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v12 = v39;
      v13 = [v39 integerValue];
      if (v13 == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }
  }

  else
  {
    sub_2187460CC(&v42, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2199AE594);
  }

  v12 = 0;
  v13 = 0;
LABEL_10:
  if (objc_getAssociatedObject(v10, ~v13))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v42 = v40;
  v43 = v41;
  if (*(&v41 + 1))
  {
    sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v14 = v39;
      v15 = [v14 integerValue];

      v16 = v15 - 99;
      goto LABEL_18;
    }
  }

  else
  {
    sub_2187460CC(&v42, &qword_280E8B4F0, v11 + 8, MEMORY[0x277D83D88], sub_2199AE594);
  }

LABEL_17:

  v16 = -99;
LABEL_18:
  v2[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_subscribed] = ((v16 ^ v13) & 1) == 0;
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v17 = sub_219BE5434();
  __swift_project_value_buffer(v17, qword_280F625E0);
  v18 = sub_219BE5414();
  v19 = sub_219BF6214();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2186C1000, v18, v19, "visibilityEventManager: firing viewDidAppear", v20, 2u);
    MEMORY[0x21CECF960](v20, -1, -1);
  }

  LOBYTE(v42) = 0;
  sub_219BE1D04();
  v21 = [objc_opt_self() current];
  if (!v21)
  {
    __break(1u);
    return;
  }

  v22 = v21;
  v23 = [v21 isPencilInputExpected];

  v2[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_initialIsPencilInputExpected] = v23;
  type metadata accessor for PuzzleModel(0);
  v24 = swift_allocBox();
  sub_2199AED00(&v2[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleModel], v25, type metadata accessor for PuzzleModel);
  *&v42 = v24 | 0xE000000000000006;
  sub_219BE7884();
  sub_218932F9C(v42);
  sub_219BF39F4();
  v26 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_timer;
  v27 = *&v2[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_timer];
  if (v27)
  {
    [v27 invalidate];
    v28 = *&v2[v26];
  }

  else
  {
    v28 = 0;
  }

  *&v2[v26] = 0;

  v29 = [v9 cachedSubscription];
  if (objc_getAssociatedObject(v29, v29 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v42 = v40;
  v43 = v41;
  if (!*(&v41 + 1))
  {
    sub_2187460CC(&v42, &qword_280E8B4F0, v11 + 8, MEMORY[0x277D83D88], sub_2199AE594);
    goto LABEL_34;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_34:
    v30 = 0;
    v32 = 0;
    goto LABEL_35;
  }

  v30 = v39;
  v31 = [v39 integerValue];
  if (v31 == -1)
  {

    goto LABEL_46;
  }

  v32 = v31;
LABEL_35:
  if (objc_getAssociatedObject(v29, ~v32))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v42 = v40;
  v43 = v41;
  if (*(&v41 + 1))
  {
    sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v33 = v39;
      v34 = [v33 integerValue];

      if (((v34 ^ v32) & 1) == 0)
      {
        return;
      }

LABEL_46:
      v35 = *(*&v2[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_eventHandler] + 32);
      v36 = sub_219BF5BF4();
      (*(*(v36 - 8) + 56))(v8, 1, 1, v36);
      v37 = swift_allocObject();
      v37[2] = 0;
      v37[3] = 0;
      v37[4] = v35;
      swift_unknownObjectRetain();
      sub_218AB3D80(0, 0, v8, &unk_219CBB858, v37);

      return;
    }
  }

  else
  {
    sub_2187460CC(&v42, &qword_280E8B4F0, v11 + 8, MEMORY[0x277D83D88], sub_2199AE594);
  }

  if (v32)
  {
    goto LABEL_46;
  }
}

void sub_2199A4584(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = MEMORY[0x277D338C0];
  sub_218760490(0, &qword_280E90470, MEMORY[0x277D338C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = aBlock - v7;
  v9 = sub_219BF24E4();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39.receiver = v2;
  v39.super_class = ObjectType;
  objc_msgSendSuper2(&v39, sel_viewWillDisappear_, a1 & 1, v11);
  v14 = &v2[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleModel];
  v15 = type metadata accessor for PuzzleModel(0);
  sub_2199AF008(&v14[*(v15 + 20)], v8, &qword_280E90470, v5);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2187460CC(v8, &qword_280E90470, MEMORY[0x277D338C0], MEMORY[0x277D83D88], sub_218760490);
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    if (sub_219BF24D4())
    {
      v16 = &v2[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_fullScreenModalDelegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v17 = *(v16 + 1);
        v18 = swift_getObjectType();
        (*(v17 + 16))(v18, v17);
        swift_unknownObjectRelease();
      }
    }

    (*(v10 + 8))(v13, v9);
  }

  v19 = *&v2[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_eventHandler];
  v20 = [v2 presentedViewController];
  v21 = v20;
  if (v20)
  {
  }

  v22 = *(v19 + 32);
  v36 = &type metadata for PuzzleVisibilityChangedEvent;
  v37 = sub_2199AD104();
  LOBYTE(aBlock[0]) = 0;
  BYTE1(aBlock[0]) = v21 != 0;
  v23 = objc_allocWithZone(sub_219BF2224());
  v24 = sub_219BF2214();
  [*(v22 + OBJC_IVAR____TtC7NewsUI216PuzzleInteractor_scriptsManager) executeScript:v24 completion:0];

  v25 = objc_opt_self();
  v26 = swift_allocObject();
  *(v26 + 16) = v2;
  v37 = sub_2199AEF50;
  v38 = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218B66540;
  v36 = &block_descriptor_79;
  v27 = _Block_copy(aBlock);
  v28 = v2;

  v29 = [v25 scheduledTimerWithTimeInterval:0 repeats:v27 block:3.0];
  _Block_release(v27);
  v30 = *&v28[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_timer];
  *&v28[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_timer] = v29;

  v31 = v28[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_initialIsPencilInputExpected];
  if (v31 == 2)
  {
    goto LABEL_12;
  }

  v32 = [objc_opt_self() current];
  if (v32)
  {
    v33 = v32;
    [v32 setPencilInputExpected_];

LABEL_12:
    v34 = [objc_opt_self() sharedApplication];
    [v34 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];

    sub_2199A4B5C(0, 0);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_219BE7534();
    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
}

void sub_2199A4A74()
{
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v0 = sub_219BE5434();
  __swift_project_value_buffer(v0, qword_280F625E0);
  oslog = sub_219BE5414();
  v1 = sub_219BF6214();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2186C1000, oslog, v1, "PuzzleViewController: Timer expired before receiving puzzle progress message", v2, 2u);
    MEMORY[0x21CECF960](v2, -1, -1);
  }
}

void sub_2199A4B5C(void *a1, void *a2)
{
  v3 = (v2 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentAccessoryView);
  v4 = *(v2 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentAccessoryView);
  *v3 = a1;
  v3[1] = a2;
  v5 = a1;

  v6 = *v3;
  if (*v3)
  {
    swift_getObjectType();
    v7 = v6;

    sub_219BF33D4();
  }

  sub_219BF39B4();
  v8 = [objc_opt_self() current];
  if (v8)
  {
    v9 = v8;
    [v8 setPencilInputExpected_];
  }

  else
  {
    __break(1u);
  }
}

void sub_2199A4CC4(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_218760490(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - v6;
  v8 = sub_219BF1CC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = &v31 - v13;
  v40.receiver = v2;
  v40.super_class = ObjectType;
  objc_msgSendSuper2(&v40, sel_viewDidDisappear_, a1 & 1, v12);
  LOBYTE(v39) = 2;
  sub_219BE1D04();
  type metadata accessor for PuzzleModel(0);
  v15 = swift_allocBox();
  sub_2199AED00(&v2[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleModel], v16, type metadata accessor for PuzzleModel);
  v39 = v15 | 0xE000000000000006;
  sub_219BE7864();
  sub_218932F9C(v39);
  v17 = *&v2[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzle];
  if (!v17)
  {
    goto LABEL_7;
  }

  v36 = v10;
  v37 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *&v2[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_eventHandler];
  v19 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_revealTypesUsed;
  swift_beginAccess();
  v20 = *(*&v2[v19] + 16);
  v38 = v14;
  if (!v20)
  {
    swift_unknownObjectRetain();
    v35 = MEMORY[0x277D84F90];
    goto LABEL_6;
  }

  v31 = v18;
  v32 = v7;
  v33 = v9;
  v34 = v8;
  v21 = sub_21947D718(v20, 0);
  v35 = sub_2194B7E48();
  v22 = v39;
  swift_unknownObjectRetain();

  sub_21892DE98(v22);
  if (v35 == v20)
  {
    v35 = v21;
    v9 = v33;
    v8 = v34;
    v18 = v31;
    v7 = v32;
    v14 = v38;
LABEL_6:
    sub_2199A513C(v14);
    v23 = *__swift_project_boxed_opaque_existential_1((v18 + 88), *(v18 + 112));
    v24 = sub_219BF5BF4();
    (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
    v25 = v37;
    (*(v9 + 16))(v37, v14, v8);
    sub_219BF5BD4();
    swift_unknownObjectRetain();

    v26 = sub_219BF5BC4();
    v27 = (*(v9 + 80) + 56) & ~*(v9 + 80);
    v28 = swift_allocObject();
    v29 = MEMORY[0x277D85700];
    *(v28 + 2) = v26;
    *(v28 + 3) = v29;
    *(v28 + 4) = v23;
    *(v28 + 5) = v17;
    *(v28 + 6) = v35;
    (*(v9 + 32))(&v28[v27], v25, v8);
    sub_218AB3D80(0, 0, v7, &unk_219CBB850, v28);
    swift_unknownObjectRelease();

    (*(v9 + 8))(v38, v8);
LABEL_7:
    sub_219BE6AB4();
    v30 = *&v2[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_transitionEffectView];
    [v30 setEffect_];
    [v30 removeFromSuperview];
    return;
  }

  __break(1u);
}

uint64_t sub_2199A513C@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = MEMORY[0x277D83D88];
  sub_218760490(0, &unk_27CC21C30, MEMORY[0x277D33598], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = &v33 - v4;
  v5 = sub_219BF2EB4();
  v34 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D338C0];
  sub_218760490(0, &qword_280E90470, MEMORY[0x277D338C0], v2);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = sub_219BF24E4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  v19 = v1 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleModel;
  v20 = type metadata accessor for PuzzleModel(0);
  sub_2199AF008(v19 + *(v20 + 20), v11, &qword_280E90470, v8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2187460CC(v11, &qword_280E90470, MEMORY[0x277D338C0], MEMORY[0x277D83D88], sub_218760490);
    v21 = *MEMORY[0x277D33588];
    v22 = sub_219BF1CC4();
    return (*(*(v22 - 8) + 104))(v36, v21, v22);
  }

  else
  {
    v24 = v36;
    (*(v13 + 32))(v18, v11, v12);
    (*(v13 + 16))(v15, v18, v12);
    if ((*(v13 + 88))(v15, v12) == *MEMORY[0x277D338B0])
    {
      (*(v13 + 96))(v15, v12);
      v25 = v34;
      (*(v34 + 32))(v7, v15, v5);
      v26 = v35;
      sub_219BF2EA4();
      (*(v25 + 8))(v7, v5);
      (*(v13 + 8))(v18, v12);
      v27 = sub_219BF1CC4();
      v28 = *(v27 - 8);
      v29 = *(v28 + 48);
      if (v29(v26, 1, v27) == 1)
      {
        (*(v28 + 104))(v24, *MEMORY[0x277D33590], v27);
        result = v29(v26, 1, v27);
        if (result != 1)
        {
          return sub_2187460CC(v26, &unk_27CC21C30, MEMORY[0x277D33598], MEMORY[0x277D83D88], sub_218760490);
        }
      }

      else
      {
        return (*(v28 + 32))(v24, v26, v27);
      }
    }

    else
    {
      v30 = *(v13 + 8);
      v30(v18, v12);
      v30(v15, v12);
      v31 = *MEMORY[0x277D33590];
      v32 = sub_219BF1CC4();
      return (*(*(v32 - 8) + 104))(v24, v31, v32);
    }
  }

  return result;
}

void sub_2199A571C()
{
  v1 = v0;
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, sel_viewWillLayoutSubviews);
  if (![v0 view])
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_2186C6148(0, &qword_27CC20370, 0x277D55128);
  v2 = sub_219BF61A4();
  v3 = *&v0[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleEmbedViewController];
  v4 = v2;
  sub_219BF39C4();
  v5 = [v3 view];
  if (!v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [v1 view];
  if (v7)
  {
    v8 = v7;
    [v7 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [v6 setFrame_];
    v17 = [*&v1[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_feedConfigurationFactory] createFeedConfigurationForViewController_];
    sub_219BF39E4();

    return;
  }

LABEL_7:
  __break(1u);
}

id sub_2199A5960(void *a1)
{
  v2 = v1;
  v14.receiver = v1;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_traitCollectionDidChange_, a1);
  if (a1)
  {
    v4 = [a1 userInterfaceStyle];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v1 traitCollection];
  v6 = [v5 userInterfaceStyle];

  v7 = [v2 traitCollection];
  sub_218718690(&v2[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_styler], v13);
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  result = [v2 view];
  if (result)
  {
    v9 = result;

    v10 = sub_21964E304();
    [v9 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v13);
    v11 = sub_2199A77B8(0, 0);
    if (!a1 || v4 != v6)
    {
      v12 = *&v2[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzle];
      if (v12)
      {
        sub_2199A5B00([v12 puzzleType]);
        swift_unknownObjectRelease();
      }
    }

    return sub_2199A5DBC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2199A5B00(uint64_t a1)
{
  v2 = v1;
  sub_218760490(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  *&v5 = MEMORY[0x28223BE20](v4 - 8).n128_u64[0];
  v7 = &v30 - v6;
  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    [v8 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v31.origin.x = v11;
    v31.origin.y = v13;
    v31.size.width = v15;
    v31.size.height = v17;
    Width = CGRectGetWidth(v31);
    v19 = sub_219BDEE54();
    v20 = sub_219BEA814();

    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = a1;
    *(v22 + 24) = v21;
    swift_unknownObjectRetain();

    v23 = sub_219BF65B4();
    v24 = [v23 titleView];

    if (v24)
    {
      [v24 setFrame_];
    }

    v25 = sub_219BF5BF4();
    (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
    sub_219BF5BD4();
    swift_unknownObjectRetain();
    v26 = v2;
    v27 = sub_219BF5BC4();
    v28 = swift_allocObject();
    v29 = MEMORY[0x277D85700];
    *(v28 + 2) = v27;
    *(v28 + 3) = v29;
    *(v28 + 4) = v26;
    *(v28 + 5) = a1;
    v28[6] = Width;
    v28[7] = 28.0;
    sub_218AB3D80(0, 0, v7, &unk_219CBB848, v28);
  }

  else
  {
    __break(1u);
  }
}

id sub_2199A5DBC()
{
  v1 = v0;
  v2 = sub_219BF1664();
  v48 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v47 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_219BF2B84();
  v4 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = (v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = 0x4920656C7A7A7550;
  v54 = 0xEB00000000203A44;
  v6 = &v0[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleModel];
  v8 = *&v0[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleModel];
  v7 = *&v0[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleModel + 8];
  if (v0[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleModel + 16])
  {
    v9 = [swift_unknownObjectRetain() identifier];
    v10 = sub_219BF5414();
    v12 = v11;

    v13.n128_f64[0] = sub_218B083E8(v8, v7, 1);
    v8 = v10;
    v7 = v12;
  }

  else
  {
  }

  MEMORY[0x21CECC330](v8, v7, v13);

  if (*&v1[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzle])
  {
    v51 = 0x6570797420666F20;
    v52 = 0xE900000000000020;
    v14 = [objc_msgSend(swift_unknownObjectRetain() puzzleType)];
    swift_unknownObjectRelease();
    v15 = sub_219BF5414();
    v17 = v16;

    MEMORY[0x21CECC330](v15, v17);

    MEMORY[0x21CECC330](v51, v52);
    swift_unknownObjectRelease();
  }

  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v18 = sub_219BE5434();
  __swift_project_value_buffer(v18, qword_280F625E0);
  v20 = v53;
  v19 = v54;

  v21 = sub_219BE5414();
  v22 = sub_219BF6214();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = v2;
    v25 = v4;
    v26 = swift_slowAlloc();
    v51 = v26;
    *v23 = 136315138;

    v27 = sub_2186D1058(v20, v19, &v51);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_2186C1000, v21, v22, "Loading %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v28 = v26;
    v4 = v25;
    v2 = v24;
    MEMORY[0x21CECF960](v28, -1, -1);
    MEMORY[0x21CECF960](v23, -1, -1);
  }

  v29 = [*&v1[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_feedConfigurationFactory] createFeedConfigurationForViewController_];
  result = [v1 view];
  if (result)
  {
    v31 = v4;

    sub_2186C6148(0, &qword_27CC20370, 0x277D55128);
    v32 = sub_219BF61A4();
    v44[1] = *&v1[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleEmbedViewController];
    v45 = v29;
    v33 = v6;
    v34 = *v6;
    v35 = v33[1];
    v46 = v33;
    v36 = *(v33 + 16);
    if (v36)
    {
      *v49 = v34;
      v37 = MEMORY[0x277D33AF0];
    }

    else
    {
      v38 = v49;
      *v49 = v34;
      v38[1] = v35;
      v37 = MEMORY[0x277D33AE8];
    }

    v39 = v49;
    (*(v31 + 104))(v49, *v37, v50);
    type metadata accessor for PuzzleModel(0);
    v40 = v47;
    v41 = v48;
    (*(v48 + 104))(v47, *MEMORY[0x277D33430], v2);
    sub_218CC4CD0(v34, v35, v36);
    v42 = sub_219BF1654();
    (*(v41 + 8))(v40, v2);
    v43 = v45;
    sub_219BF3A24();

    return (*(v31 + 8))(v39, v50);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2199A639C()
{
  sub_218760490(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - v2;
  v4 = *&v0[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzle];
  if (!v4 || (v0[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_subscribed] & 1) != 0)
  {
    return;
  }

  v5 = *&v0[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_bundleSubscriptionManager];
  swift_unknownObjectRetain();
  v6 = [v5 cachedSubscription];
  if (objc_getAssociatedObject(v6, v6 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24 = v22;
  v25 = v23;
  v7 = MEMORY[0x277D84F70];
  if (!*(&v23 + 1))
  {
    sub_2187460CC(&v24, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2199AE594);
    goto LABEL_11;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v8 = 0;
    v10 = 0;
    goto LABEL_12;
  }

  v8 = v21;
  v9 = [v21 integerValue];
  if (v9 == -1)
  {

    goto LABEL_23;
  }

  v10 = v9;
LABEL_12:
  if (objc_getAssociatedObject(v6, ~v10))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24 = v22;
  v25 = v23;
  if (*(&v23 + 1))
  {
    sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v11 = v21;
      v12 = [v11 integerValue];

      if (((v12 ^ v10) & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }
  }

  else
  {
    sub_2187460CC(&v24, &qword_280E8B4F0, v7 + 8, MEMORY[0x277D83D88], sub_2199AE594);
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_23:
  v13 = v0;
  __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_historyService], *&v0[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_historyService + 24]);
  v14 = [v4 identifier];
  sub_219BF5414();

  v15 = sub_219BF3424();

  if (!v15)
  {
LABEL_26:
    swift_unknownObjectRelease();
    return;
  }

  v16 = [v15 completedDate];
  if (v16)
  {
    v17 = v16;
    sub_219BDBCA4();

    v18 = sub_219BDBD34();
    (*(*(v18 - 8) + 56))(v3, 0, 1, v18);
    sub_2187460CC(v3, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_218760490);
    [v13 dismissViewControllerAnimated:0 completion:0];
    __swift_project_boxed_opaque_existential_1(&v13[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_onboardingManager], *&v13[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_onboardingManager + 24]);
    sub_219BE46C4();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    v19 = sub_219BDBD34();
    (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
    sub_2187460CC(v3, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_218760490);
  }
}

double sub_2199A697C(void *a1, uint64_t a2)
{
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v3 = sub_219BE5434();
  __swift_project_value_buffer(v3, qword_280F625E0);
  swift_unknownObjectRetain();
  v4 = sub_219BE5414();
  v5 = sub_219BF6214();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17[0] = v7;
    *v6 = 136315138;
    v8 = [a1 identifier];
    v9 = sub_219BF5414();
    v11 = v10;

    v12 = sub_2186D1058(v9, v11, v17);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_2186C1000, v4, v5, "Tapped on title. Navigating to %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CECF960](v7, -1, -1);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = *(Strong + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_eventHandler);
    v16 = Strong;
    swift_unknownObjectRetain();

    __swift_project_boxed_opaque_existential_1((v15 + 48), *(v15 + 72));
    sub_219321608(a1);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2199A6B68(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  v8 = sub_219BDD714();
  *(v7 + 56) = v8;
  *(v7 + 64) = *(v8 - 8);
  *(v7 + 72) = swift_task_alloc();
  sub_219BF5BD4();
  *(v7 + 80) = sub_219BF5BC4();
  v10 = sub_219BF5B44();
  *(v7 + 88) = v10;
  *(v7 + 96) = v9;

  return MEMORY[0x2822009F8](sub_2199A6C60, v10, v9);
}

uint64_t sub_2199A6C60(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  sub_2199A7280(v3, a2);
  __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_publisherLogoProvider], *&v3[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_publisherLogoProvider + 24]);
  v2[13] = sub_219BE44C4();
  v4 = swift_task_alloc();
  v2[14] = v4;
  *v4 = v2;
  v4[1] = sub_2199A6D60;

  return MEMORY[0x2821D23D8](v2 + 2);
}

uint64_t sub_2199A6D60()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_2199A6FFC;
  }

  else
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_2199A6E7C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2199A6E7C()
{
  v1 = v0[9];
  v2 = v0[8];
  v13 = v0[7];
  v3 = v0[4];

  v4 = v0[2];
  v5 = [v3 nameForSharing];
  sub_219BF5414();

  v6 = v4;
  sub_219BDD704();
  sub_219BDEE44();
  (*(v2 + 8))(v1, v13);
  v7 = sub_219BF65B4();
  v8 = [v3 nameForSharing];
  if (!v8)
  {
    sub_219BF5414();
    v8 = sub_219BF53D4();
  }

  v9 = v0[3];
  [v7 setBackButtonTitle_];

  v10 = *(v9 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_publisherLogo);
  *(v9 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_publisherLogo) = v4;

  v11 = v0[1];

  return v11();
}

uint64_t sub_2199A6FFC()
{
  v22 = v0;

  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F625E0);
  swift_unknownObjectRetain();
  v3 = v1;
  v4 = sub_219BE5414();
  v5 = sub_219BF61F4();
  swift_unknownObjectRelease();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[15];
  if (v6)
  {
    v8 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136315394;
    v12 = [v8 name];
    v13 = sub_219BF5414();
    v15 = v14;

    v16 = sub_2186D1058(v13, v15, &v21);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2112;
    v17 = v7;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v18;
    *v10 = v18;
    _os_log_impl(&dword_2186C1000, v4, v5, "Error fetching logo for puzzleType= %s error= %@", v9, 0x16u);
    sub_2199AF158(v10, &qword_280E8D9F0, &qword_280E8DA00, 0x277D82BB8, sub_2186C6148);
    MEMORY[0x21CECF960](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x21CECF960](v11, -1, -1);
    MEMORY[0x21CECF960](v9, -1, -1);
  }

  else
  {
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_2199A7280(char *a1, uint64_t a2)
{
  if (!*&a1[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentNavigationBarTheme])
  {
    goto LABEL_7;
  }

  v2 = a1;
  v3 = [swift_unknownObjectRetain() navigationBarBackgroundColor];
  if (!v3)
  {
    swift_unknownObjectRelease();
    a1 = v2;
LABEL_7:
    v9 = [a1 traitCollection];
    v10 = [v9 userInterfaceStyle];

    return v10;
  }

  v4 = v3;
  v5 = [v3 ne_color];

  v6 = [objc_opt_self() whiteColor];
  v7 = [v5 _isSimilarToColor_withinPercentage_];

  swift_unknownObjectRelease();
  if (v7)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

void sub_2199A7398(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218760490(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v20 - v9;
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_historyService), *(v2 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_historyService + 24));
  v11 = [a1 identifier];
  sub_219BF5414();

  v12 = sub_219BF3424();

  if (!v12)
  {
    sub_219BF1D04();
    return;
  }

  v13 = [v12 completedDate];
  if (v13)
  {
    sub_219BDBCA4();

    (*(v5 + 32))(v10, v7, v4);
    (*(v5 + 56))(v10, 0, 1, v4);
    sub_2187460CC(v10, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_218760490);
    [v12 playDuration];
  }

  else
  {
    (*(v5 + 56))(v10, 1, 1, v4);
    sub_2187460CC(v10, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_218760490);
  }

  v14 = [v12 rankID];
  if (v14)
  {
    v15 = v14;
    sub_219BF5414();

    if (!v13)
    {
      goto LABEL_12;
    }

LABEL_10:
    v16 = [v12 score];
    if (v16)
    {
      v17 = v16;
      [v16 integerValue];
    }

    goto LABEL_12;
  }

  if (v13)
  {
    goto LABEL_10;
  }

LABEL_12:
  v18 = [v12 usedReveal];
  if (v18)
  {
    v19 = v18;
    [v18 BOOLValue];
  }

  sub_219BF1D04();
}

double sub_2199A77B8(uint64_t a1, uint64_t a2)
{
  if (!*&v2[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzle])
  {
    return result;
  }

  v3 = v2;
  swift_unknownObjectRetain();
  v5 = [v2 navigationController];
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = v5;
  v25 = [v5 navigationBar];

  if (!v25)
  {
    goto LABEL_16;
  }

  sub_2186C6148(0, &qword_280E8DA00, 0x277D82BB8);
  v7 = sub_219BF6534();
  v8 = sub_219BF6DD4();

  if (v8)
  {
    if (a2)
    {
      __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleNavigationBarThemeProvider], *&v3[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleNavigationBarThemeProvider + 24]);
      v9 = sub_219BF4C94();
      if (v9)
      {
        *&v3[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentNavigationBarTheme] = v9;
        v10 = v9;
        swift_unknownObjectRetain_n();
        swift_unknownObjectRelease();
        v11 = [v3 traitCollection];
LABEL_8:
        v12 = v11;
        v13 = *&v3[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentPuzzleBarButtonItems];
        v14 = *&v3[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_navigationItemStyle];

        sub_2199A04BC(v12, v25, v10, v13, v14, 0, 1);

LABEL_15:
        swift_unknownObjectRelease_n();

LABEL_16:

        swift_unknownObjectRelease();
        return result;
      }
    }

    else
    {
      v16 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentNavigationBarTheme;
      v17 = *&v3[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentNavigationBarTheme];
      if (v17)
      {
        swift_unknownObjectRetain();
        v18 = [v3 traitCollection];
        v19 = *&v3[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentPuzzleBarButtonItems];
        v20 = *&v3[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_navigationItemStyle];

        swift_unknownObjectRetain();
        sub_2199A04BC(v18, v25, v17, v19, v20, 0, 1);

        goto LABEL_15;
      }

      __swift_project_boxed_opaque_existential_1(&v3[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleNavigationBarThemeProvider], *&v3[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleNavigationBarThemeProvider + 24]);
      v24 = sub_219BF4C94();
      if (v24)
      {
        *&v3[v16] = v24;
        v10 = v24;
        swift_unknownObjectRetain_n();
        swift_unknownObjectRelease();
        v11 = [v3 traitCollection];
        goto LABEL_8;
      }
    }

    v21 = [v3 traitCollection];
    v22 = *&v3[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentPuzzleBarButtonItems];
    v23 = *&v3[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_navigationItemStyle];

    sub_2199A04BC(v21, v25, 0, v22, v23, 0, 1);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2199A7BA4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentPuzzleColorTheme;
  swift_beginAccess();
  return sub_2199AF008(v1 + v3, a1, &unk_280E90570, MEMORY[0x277D33680]);
}

void sub_2199A7C6C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_skipModalPresentation] = 0;
  }
}

void sub_2199A7CC4()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v7 = [v1 navigationBar];

    if (v7)
    {
      v3 = *&v0[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentNavigationBarTheme];
      if (v3)
      {
        swift_unknownObjectRetain();
        v4 = [v0 traitCollection];
        v5 = *&v0[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentPuzzleBarButtonItems];
        v6 = *&v0[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_navigationItemStyle];

        swift_unknownObjectRetain();
        sub_2199A04BC(v4, v7, v3, v5, v6, 0, 0);

        swift_unknownObjectRelease_n();
      }

      else
      {
      }
    }
  }
}

id sub_2199A7E18@<X0>(uint64_t a1@<X8>)
{
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = result;
  [result bounds];

  result = [v1 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = result;
  [result safeAreaInsets];

  sub_219BE8104();
  result = [v1 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  v7 = [result traitCollection];

  result = [v1 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = result;
  [result layoutMargins];

  sub_219BE7FA4();
  result = [v1 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = result;
  [result bounds];

  result = [v1 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v10 = result;
  v11 = [result window];

  if (v11)
  {
    [v11 bounds];
  }

  v12 = [objc_opt_self() mainScreen];
  [v12 nativeBounds];

  v13 = [v1 traitCollection];
  result = [v1 view];
  if (!result)
  {
    goto LABEL_19;
  }

  v14 = result;
  v15 = objc_opt_self();
  v16 = [v14 semanticContentAttribute];

  [v15 userInterfaceLayoutDirectionForSemanticContentAttribute_];
  v17 = [v1 traitCollection];
  v18 = [v17 preferredContentSizeCategory];

  sub_219BE41F4();
  v19 = sub_219BE4204();
  v20 = *(*(v19 - 8) + 56);

  return v20(a1, 0, 1, v19);
}

void sub_2199A8218(char a1, int a2)
{
  v3 = v2;
  v52 = a2;
  sub_218760490(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v50 = v45 - v6;
  v51 = sub_219BF1CC4();
  v49 = *(v51 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x28223BE20](v51);
  v8 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v45 - v10;
  v12 = sub_219BE4914();
  v13 = *(v12 - 8);
  *&v14 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v3 view];
  if (!v17)
  {
    __break(1u);
    return;
  }

  v18 = v17;
  v19 = [v17 window];

  if (v19)
  {

    v20 = a1 & 1;
    v3[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_isVisible] = a1 & 1;
    v21 = *&v3[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzle];
    if (!v21)
    {
LABEL_12:
      v38 = v52;
      v39 = *&v3[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_eventHandler];
      if (v52 == 2)
      {
        v40 = [v3 presentedViewController];
        v41 = v40;
        if (v40)
        {
        }

        v42 = *(v39 + 32);
        v55 = &type metadata for PuzzleVisibilityChangedEvent;
        v56 = sub_2199AD104();
        LOBYTE(v53) = v20;
        BYTE1(v53) = v41 != 0;
      }

      else
      {
        v42 = *(v39 + 32);
        v55 = &type metadata for PuzzleVisibilityChangedEvent;
        v56 = sub_2199AD104();
        LOBYTE(v53) = v20;
        BYTE1(v53) = v38 & 1;
      }

      v43 = objc_allocWithZone(sub_219BF2224());
      v44 = sub_219BF2214();
      [*(v42 + OBJC_IVAR____TtC7NewsUI216PuzzleInteractor_scriptsManager) executeScript:v44 completion:0];

      return;
    }

    v48 = a1 & 1;
    v22 = *&v3[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_eventHandler];
    if (a1)
    {
      v23 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_paywall;
      swift_beginAccess();
      (*(v13 + 16))(v16, &v3[v23], v12);
      __swift_project_boxed_opaque_existential_1((v22 + 88), *(v22 + 112));
      v24 = swift_unknownObjectRetain();
      sub_21956F03C(v24, v16);
      swift_unknownObjectRelease();
      (*(v13 + 8))(v16, v12);
LABEL_11:
      v20 = v48;
      goto LABEL_12;
    }

    v25 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_revealTypesUsed;
    swift_beginAccess();
    v26 = *&v3[v25];
    v27 = *(v26 + 16);
    if (v27)
    {
      v47 = sub_21947D718(*(v26 + 16), 0);
      v28 = sub_2194B7E48();
      v29 = v53;
      v45[2] = v54;
      v46 = v28;
      v45[0] = v56;
      v45[1] = v55;
      swift_unknownObjectRetain();

      sub_21892DE98(v29);
      if (v46 == v27)
      {
LABEL_10:
        sub_2199A513C(v11);
        v30 = *__swift_project_boxed_opaque_existential_1((v22 + 88), *(v22 + 112));
        v31 = sub_219BF5BF4();
        (*(*(v31 - 8) + 56))(v50, 1, 1, v31);
        v32 = v49;
        (*(v49 + 16))(v8, v11, v51);
        sub_219BF5BD4();
        swift_unknownObjectRetain();

        v33 = sub_219BF5BC4();
        v34 = (*(v32 + 80) + 56) & ~*(v32 + 80);
        v35 = swift_allocObject();
        v36 = MEMORY[0x277D85700];
        *(v35 + 2) = v33;
        *(v35 + 3) = v36;
        *(v35 + 4) = v30;
        *(v35 + 5) = v21;
        *(v35 + 6) = v47;
        v37 = v51;
        (*(v32 + 32))(&v35[v34], v8, v51);
        sub_218AB3D80(0, 0, v50, &unk_219CBB828, v35);
        swift_unknownObjectRelease();

        (*(v32 + 8))(v11, v37);
        goto LABEL_11;
      }

      __break(1u);
    }

    swift_unknownObjectRetain();
    v47 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }
}

void sub_2199A87C0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;

    sub_219BE2E84();

    if ((v11 & 1) == 0)
    {
      if (qword_280EE5F80 != -1)
      {
        swift_once();
      }

      v3 = sub_219BE5434();
      __swift_project_value_buffer(v3, qword_280F625E0);
      v4 = sub_219BE5414();
      v5 = sub_219BF6214();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_2186C1000, v4, v5, "sceneWillResignActive: timed out performing background task... canceling...", v6, 2u);
        MEMORY[0x21CECF960](v6, -1, -1);
      }

      v7 = [objc_opt_self() sharedApplication];
      [v7 endBackgroundTask_];

      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;

        sub_219BE2E94();
      }
    }
  }
}

void sub_2199A89E0(uint64_t a1)
{
  sub_218760490(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - v4;
  v6 = sub_219BE4914();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    v11 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_hardPaywallViewController;
    v12 = *&v1[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_hardPaywallViewController];
    if (!v12)
    {
      goto LABEL_7;
    }

    [v12 willMoveToParentViewController_];
    v13 = *&v1[v11];
    if (!v13)
    {
      goto LABEL_7;
    }

    v14 = [v13 view];
    if (!v14)
    {
      goto LABEL_12;
    }

    v15 = v14;
    [v14 removeFromSuperview];

    v16 = *&v1[v11];
    if (v16)
    {
      [v16 removeFromParentViewController];
      v17 = *&v1[v11];
    }

    else
    {
LABEL_7:
      v17 = 0;
    }

    *&v1[v11] = 0;

    v18 = [v1 view];
    if (v18)
    {
      v19 = v18;
      [v18 setAccessibilityElementsHidden_];

      (*(v7 + 104))(v10, *MEMORY[0x277D353A8], v6);
      v20 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_paywall;
      swift_beginAccess();
      (*(v7 + 40))(&v1[v20], v10, v6);
      swift_endAccess();
      sub_218760490(0, &unk_27CC21C40, MEMORY[0x277D336F0], MEMORY[0x277D84560]);
      v21 = sub_219BF1FE4();
      v22 = *(v21 - 8);
      v23 = *(v22 + 72);
      v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_219C09EC0;
      v26 = v25 + v24;
      v27 = *(v22 + 104);
      v27(v26, *MEMORY[0x277D336D8], v21);
      v27(v26 + v23, *MEMORY[0x277D336E0], v21);
      v28 = sub_2194B4D64(v25);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_2199A2478(v28);

      v29 = *(*&v1[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_eventHandler] + 32);
      v30 = sub_219BF5BF4();
      (*(*(v30 - 8) + 56))(v5, 1, 1, v30);
      v31 = swift_allocObject();
      v31[2] = 0;
      v31[3] = 0;
      v31[4] = v29;
      swift_unknownObjectRetain();
      sub_218AB3D80(0, 0, v5, &unk_219CBB830, v31);

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }
}

double sub_2199A8E18(uint64_t a1)
{
  v2 = v1;
  v4 = sub_219BF1BF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v8 = sub_219BE5434();
  __swift_project_value_buffer(v8, qword_280F625E0);
  (*(v5 + 16))(v7, a1, v4);
  v9 = sub_219BE5414();
  v10 = sub_219BF6214();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v29[1] = a1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136315138;
    v14 = sub_219BF1BD4();
    v29[0] = v2;
    v16 = v15;
    (*(v5 + 8))(v7, v4);
    v17 = sub_2186D1058(v14, v16, &v30);
    v2 = v29[0];

    *(v12 + 4) = v17;
    _os_log_impl(&dword_2186C1000, v9, v10, "PuzzleViewController: Received puzzle progress=%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x21CECF960](v13, -1, -1);
    MEMORY[0x21CECF960](v12, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v18 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_timer;
  v19 = *(v2 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_timer);
  if (v19)
  {
    [v19 invalidate];
    v20 = *(v2 + v18);
  }

  else
  {
    v20 = 0;
  }

  *(v2 + v18) = 0;

  sub_219BE2E84();

  if ((v31 & 1) == 0)
  {
    v21 = v30;
    v22 = sub_219BE5414();
    v23 = sub_219BF6214();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = v21;
      _os_log_impl(&dword_2186C1000, v22, v23, "puzzleEmbedDidReceiveProgress: ended background task %ld ", v24, 0xCu);
      MEMORY[0x21CECF960](v24, -1, -1);
    }

    if (v21 != *MEMORY[0x277D767B0])
    {
      v25 = [objc_opt_self() sharedApplication];
      [v25 endBackgroundTask_];
    }

    v30 = 0;
    v31 = 1;

    sub_219BE2E94();
  }

  v26 = sub_219BF1BE4();
  sub_2199A77B8(v26, v27);

  return result;
}

void sub_2199A91D4()
{
  ObjectType = swift_getObjectType();
  sub_218760490(0, &qword_280E90470, MEMORY[0x277D338C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v37 - v2;
  v4 = sub_219BED174();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BED1D4();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_219BED214();
  v38 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v15 = sub_219BE5434();
  __swift_project_value_buffer(v15, qword_280F625E0);
  v16 = sub_219BE5414();
  v17 = sub_219BF6214();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2186C1000, v16, v17, "PuzzleViewController: Received embed process terminated.", v18, 2u);
    MEMORY[0x21CECF960](v18, -1, -1);
  }

  v19 = [v0 presentedViewController];
  if (v19)
  {
    v20 = v19;
    v21 = swift_dynamicCastClass();

    if (v21)
    {
      sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
      v22 = sub_219BF66A4();
      sub_219BED1F4();
      sub_219BED244();
      ObjectType = *(v38 + 8);
      ObjectType(v11, v44);
      v23 = swift_allocObject();
      *(v23 + 16) = v0;
      aBlock[4] = sub_2199AE8F4;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_218793E0C;
      aBlock[3] = &block_descriptor_53_1;
      v24 = _Block_copy(aBlock);
      v25 = v0;

      sub_219BED1A4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_2199AEFC0(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      v26 = MEMORY[0x277D85198];
      sub_218760490(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_2199AE2D4(&qword_280E8EFA0, &qword_280E8EFB0, v26);
      v27 = v42;
      sub_219BF7164();
      MEMORY[0x21CECD420](v14, v9, v6, v24);
      _Block_release(v24);

      (*(v41 + 8))(v6, v27);
      (*(v39 + 8))(v9, v40);
      ObjectType(v14, v44);
      return;
    }
  }

  v28 = &v0[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleModel];
  v29 = type metadata accessor for PuzzleModel(0);
  sub_2199AF008(&v28[*(v29 + 20)], v3, &qword_280E90470, MEMORY[0x277D338C0]);
  v30 = sub_219BF24E4();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v3, 1, v30) == 1)
  {
    sub_2187460CC(v3, &qword_280E90470, MEMORY[0x277D338C0], MEMORY[0x277D83D88], sub_218760490);
LABEL_14:
    [v0 dismissViewControllerAnimated:0 completion:0];
    sub_2199A98EC(v0);
    return;
  }

  v32 = (*(v31 + 88))(v3, v30);
  v33 = *MEMORY[0x277D338A8];
  (*(v31 + 8))(v3, v30);
  if (v32 != v33)
  {
    goto LABEL_14;
  }

  v34 = sub_219BE5414();
  v35 = sub_219BF6214();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_2186C1000, v34, v35, "PuzzleViewController: Skipping tear down for teaser content.", v36, 2u);
    MEMORY[0x21CECF960](v36, -1, -1);
  }
}

double sub_2199A98EC(uint64_t a1)
{
  sub_218760490(0, &qword_280E90470, MEMORY[0x277D338C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v26 - v3;
  v5 = sub_219BF1CC4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v26 - v10;
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v12 = sub_219BE5434();
  v26[0] = __swift_project_value_buffer(v12, qword_280F625E0);
  v13 = sub_219BE5414();
  v14 = sub_219BF6214();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2186C1000, v13, v14, "PuzzleViewController: Embed process was terminated. Popping the viewcontroller", v15, 2u);
    MEMORY[0x21CECF960](v15, -1, -1);
  }

  sub_2199A513C(v11);
  (*(v6 + 104))(v8, *MEMORY[0x277D33588], v5);
  sub_2199AEFC0(&unk_27CC21C80, MEMORY[0x277D33598], MEMORY[0x277D335A0]);
  sub_219BF5874();
  sub_219BF5874();
  if (v26[8] == v26[6] && v26[9] == v26[7])
  {
    v16 = *(v6 + 8);
    v16(v8, v5);
    v16(v11, v5);
  }

  else
  {
    v18 = sub_219BF78F4();
    v19 = *(v6 + 8);
    v19(v8, v5);
    v19(v11, v5);

    if ((v18 & 1) == 0)
    {
      return result;
    }
  }

  if ((*(a1 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_isBackgrounded) & 1) == 0)
  {
    v20 = a1 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleModel;
    v21 = type metadata accessor for PuzzleModel(0);
    v22 = MEMORY[0x277D338C0];
    sub_2199AF008(v20 + *(v21 + 20), v4, &qword_280E90470, MEMORY[0x277D338C0]);
    v23 = sub_219BF24E4();
    v24 = (*(*(v23 - 8) + 48))(v4, 1, v23);
    sub_2187460CC(v4, &qword_280E90470, v22, MEMORY[0x277D83D88], sub_218760490);
    if (v24 == 1)
    {
      if (*(a1 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzle))
      {
        __swift_project_boxed_opaque_existential_1((*(a1 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_eventHandler) + 48), *(*(a1 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_eventHandler) + 72));
        v25 = swift_unknownObjectRetain();
        sub_219322E0C(v25, 0);
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

id sub_2199A9E70()
{
  v1 = v0;
  v2 = sub_219BE4914();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218760490(0, &unk_280E90570, MEMORY[0x277D33680], MEMORY[0x277D83D88]);
  *&v7 = MEMORY[0x28223BE20](v6 - 8).n128_u64[0];
  v9 = &v25[-v8];
  v10 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzle;
  v11 = *&v1[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzle];
  if (v11)
  {
    v12 = [v11 puzzleType];
    sub_219BF1E84();
    v13 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentPuzzleColorTheme;
    swift_beginAccess();
    sub_2199AF088(v9, &v1[v13], &unk_280E90570, MEMORY[0x277D33680]);
    swift_endAccess();
  }

  v14 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_paywall;
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v14], v2);
  LOBYTE(v14) = sub_219BE48A4();
  (*(v3 + 8))(v5, v2);
  if (v14)
  {
    v15 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_didSetInitialTitle;
    if ((v1[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_didSetInitialTitle] & 1) == 0)
    {
      v16 = *&v1[v10];
      if (v16)
      {
        v17 = [v16 puzzleType];
        v1[v15] = 1;
        sub_2199A5B00(v17);
        swift_unknownObjectRelease();
      }
    }
  }

  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v18 = sub_219BE5434();
  __swift_project_value_buffer(v18, qword_280F625E0);
  v19 = sub_219BE5414();
  v20 = sub_219BF6214();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2186C1000, v19, v20, "visibilityEventManager: firing embedDidLoad", v21, 2u);
    MEMORY[0x21CECF960](v21, -1, -1);
  }

  v25[7] = 1;
  sub_219BE1D04();
  if (![v1 isViewLoaded])
  {
    return sub_219BE1D04();
  }

  result = [v1 view];
  if (result)
  {
    v23 = result;
    v24 = [result window];

    if (v24)
    {

      sub_219BF39F4();
    }

    return sub_219BE1D04();
  }

  __break(1u);
  return result;
}

void sub_2199AA204(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D83D88];
  sub_218760490(0, &qword_280E90470, MEMORY[0x277D338C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v88 - v6;
  v8 = sub_219BF24E4();
  v92 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v91 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218760490(0, &qword_27CC18678, MEMORY[0x277D33960], v4);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v88 - v11);
  v13 = sub_219BDB954();
  isa = v13[-1].isa;
  MEMORY[0x28223BE20](v13);
  v94 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v93 = &v88 - v17;
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v18 = sub_219BE5434();
  v19 = __swift_project_value_buffer(v18, qword_280F625E0);
  swift_unknownObjectRetain();
  v20 = sub_219BE5414();
  v21 = sub_219BF6214();
  swift_unknownObjectRelease();
  v22 = os_log_type_enabled(v20, v21);
  v95 = isa;
  v96 = v13;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v88 = v8;
    v24 = v23;
    v25 = swift_slowAlloc();
    v89 = v2;
    v90 = v12;
    v26 = v25;
    aBlock[0] = v25;
    *v24 = 136315138;
    v27 = [a1 description];
    v28 = sub_219BF5414();
    v29 = v7;
    v30 = a1;
    v32 = v31;

    v33 = sub_2186D1058(v28, v32, aBlock);
    a1 = v30;
    v7 = v29;

    *(v24 + 4) = v33;
    _os_log_impl(&dword_2186C1000, v20, v21, "Received embed action: type= %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v34 = v26;
    v2 = v89;
    v12 = v90;
    MEMORY[0x21CECF960](v34, -1, -1);
    v35 = v24;
    v8 = v88;
    MEMORY[0x21CECF960](v35, -1, -1);
  }

  if ([a1 type] == 1)
  {
    objc_opt_self();
    v36 = swift_dynamicCastObjCClass();
    if (v36)
    {
      v37 = v36;
      swift_unknownObjectRetain();
      v38 = sub_219BE5414();
      v39 = a1;
      v40 = sub_219BF6214();
      if (os_log_type_enabled(v38, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        aBlock[0] = v42;
        *v41 = 136315138;
        v43 = [v39 description];
        v44 = v2;
        v45 = sub_219BF5414();
        v47 = v46;

        v48 = v45;
        v2 = v44;
        v49 = sub_2186D1058(v48, v47, aBlock);

        *(v41 + 4) = v49;
        _os_log_impl(&dword_2186C1000, v38, v40, "Received URL action [%s]", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x21CECF960](v42, -1, -1);
        MEMORY[0x21CECF960](v41, -1, -1);
      }

      v68 = v95;
      v67 = v96;
      v69 = *&v2[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_eventHandler];
      v70 = [v37 URL];
      v71 = v93;
      sub_219BDB8B4();

      v72 = __swift_project_boxed_opaque_existential_1((v69 + 48), *(v69 + 72));
      v73 = sub_2199ABB88(v71, v2, *v72);
      v74 = *(v68 + 1);
      v74(v71, v67, v73);
      v75 = [v37 URL];
      v76 = v94;
      sub_219BDB8B4();

      v77 = sub_219BDB854();
      if ([v77 fc_isNewsArticleURL] && (v78 = objc_msgSend(v77, sel_fc_NewsArticleID)) != 0)
      {

        (v74)(v76, v67);
        sub_2199A8218(0, 2);
      }

      else
      {

        (v74)(v76, v67);
      }

      goto LABEL_25;
    }
  }

  if ([a1 canHandle])
  {
    v50 = sub_219BE5414();
    v51 = sub_219BF6214();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_2186C1000, v50, v51, "Action is handled internally...", v52, 2u);
      MEMORY[0x21CECF960](v52, -1, -1);
    }

    [a1 perform];
  }

  else if ([a1 type] == 2)
  {
    v53 = *&v2[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzle];
    if (v53)
    {
      v96 = v19;
      swift_unknownObjectRetain();
      sub_2199AAEC0(v2);
      swift_getObjectType();
      sub_219BEAE24();
      sub_2199AE4D4(0);
      v55 = *(v54 + 48);
      v56 = *(v54 + 64);
      *v12 = v53;
      v57 = swift_unknownObjectRetain();
      sub_2199A7398(v57, v12 + v55);
      v58 = sub_219BF1D14();
      (*(*(v58 - 8) + 56))(v12 + v55, 0, 1, v58);
      v59 = *MEMORY[0x277D33970];
      v60 = sub_219BF25F4();
      (*(*(v60 - 8) + 104))(v12 + v56, v59, v60);
      v61 = *MEMORY[0x277D33948];
      v62 = sub_219BF25E4();
      v63 = *(v62 - 8);
      (*(v63 + 104))(v12, v61, v62);
      (*(v63 + 56))(v12, 0, 1, v62);

      sub_219BE7044();
      sub_2187460CC(v12, &qword_27CC18678, MEMORY[0x277D33960], MEMORY[0x277D83D88], sub_218760490);

LABEL_25:
      swift_unknownObjectRelease();
      return;
    }

    v96 = sub_219BE5414();
    v79 = sub_219BF61F4();
    if (os_log_type_enabled(v96, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_2186C1000, v96, v79, "Can't process action. Puzzle is nil.", v80, 2u);
      MEMORY[0x21CECF960](v80, -1, -1);
    }

    v81 = v96;
  }

  else if ([a1 type] == 3)
  {
    [v2 dismissViewControllerAnimated:1 completion:0];
    v64 = &v2[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleModel];
    v65 = type metadata accessor for PuzzleModel(0);
    sub_2199AF008(&v64[*(v65 + 20)], v7, &qword_280E90470, MEMORY[0x277D338C0]);
    v66 = v92;
    if ((*(v92 + 48))(v7, 1, v8) == 1)
    {
      sub_2187460CC(v7, &qword_280E90470, MEMORY[0x277D338C0], MEMORY[0x277D83D88], sub_218760490);
    }

    else
    {
      v82 = v91;
      (*(v66 + 32))(v91, v7, v8);
      v83 = sub_219BF24D4();
      (*(v66 + 8))(v82, v8);
      if ((v83 & 1) != 0 && *&v2[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleViewConfig])
      {
        v84 = objc_opt_self();
        v85 = swift_allocObject();
        *(v85 + 16) = v2;
        aBlock[4] = sub_2199AF364;
        aBlock[5] = v85;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_218793E0C;
        aBlock[3] = &block_descriptor_40_4;
        v86 = _Block_copy(aBlock);
        v87 = v2;

        [v84 animateWithDuration:v86 animations:0.2];
        _Block_release(v86);
      }
    }
  }
}

id sub_2199AAEC0(char *a1)
{
  sub_218760490(0, &qword_280E90470, MEMORY[0x277D338C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v50 - v3;
  v5 = sub_219BF24E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v52 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE89F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v51 = &v50 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  v17 = sub_219BF65B4();
  v18 = [v17 rightBarButtonItems];

  if (!v18)
  {
LABEL_16:
    (*(v9 + 104))(v16, *MEMORY[0x277D6E0F8], v8);
    v40 = *&a1[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_tracker];
    v54 = sub_219BDD274();
    v55 = sub_2199AEFC0(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    v53 = v40;

    [a1 view];
    result = [a1 view];
    if (result)
    {
      v41 = result;
      [result bounds];
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v49 = v48;

      *&v56 = v43;
      *(&v56 + 1) = v45;
      *&v57 = v47;
      *(&v57 + 1) = v49;
      v58 = 0;
      sub_219BE8314();
      swift_allocObject();
      return sub_219BE82F4();
    }

    goto LABEL_21;
  }

  sub_2186C6148(0, &qword_280E8E5D0, 0x277D751E0);
  v19 = sub_219BF5924();

  if (!(v19 >> 62))
  {
    result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = v6;
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  result = sub_219BF7214();
  v21 = v6;
  if (!result)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_4:
  if ((v19 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x21CECE0F0](0, v19);
    goto LABEL_7;
  }

  if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v22 = *(v19 + 32);
LABEL_7:
  v23 = v22;

  v24 = &a1[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleModel];
  v25 = type metadata accessor for PuzzleModel(0);
  sub_2199AF008(&v24[*(v25 + 20)], v4, &qword_280E90470, MEMORY[0x277D338C0]);
  if ((*(v21 + 48))(v4, 1, v5) == 1)
  {
    sub_2187460CC(v4, &qword_280E90470, MEMORY[0x277D338C0], MEMORY[0x277D83D88], sub_218760490);
LABEL_13:
    (*(v9 + 104))(v11, *MEMORY[0x277D6E118], v8);
    v39 = *&a1[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_tracker];
    v54 = sub_219BDD274();
    v55 = sub_2199AEFC0(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    v53 = v39;
    v56 = 0u;
    v57 = 0u;
    v58 = 1;
    sub_219BE8314();
    swift_allocObject();

    return sub_219BE82F4();
  }

  v26 = v52;
  (*(v21 + 32))(v52, v4, v5);
  if ((sub_219BF24D4() & 1) == 0)
  {
    (*(v21 + 8))(v26, v5);
    goto LABEL_13;
  }

  (*(v9 + 104))(v51, *MEMORY[0x277D6E0F8], v8);
  v27 = *&a1[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_tracker];
  v54 = sub_219BDD274();
  v55 = sub_2199AEFC0(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  v53 = v27;

  v28 = [a1 view];
  result = [a1 view];
  if (result)
  {
    v29 = result;
    [result bounds];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    *&v56 = v31;
    *(&v56 + 1) = v33;
    *&v57 = v35;
    *(&v57 + 1) = v37;
    v58 = 0;
    sub_219BE8314();
    swift_allocObject();
    v38 = sub_219BE82F4();

    (*(v21 + 8))(v26, v5);
    return v38;
  }

LABEL_22:
  __break(1u);
  return result;
}

unint64_t sub_2199AB660()
{
  result = qword_27CC21C10;
  if (!qword_27CC21C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21C10);
  }

  return result;
}

unint64_t sub_2199AB6B8()
{
  result = qword_27CC21C18;
  if (!qword_27CC21C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21C18);
  }

  return result;
}

void sub_2199AB70C()
{
  sub_2199A7CC4();

  sub_2199A8218(0, 2);
}

void sub_2199AB76C(uint64_t a1, uint64_t a2)
{
  v22 = MEMORY[0x277D84F90];
  if (!*(a2 + 16))
  {

    v15 = *(a1 + 16);
    if (!v15)
    {
      goto LABEL_28;
    }

    v16 = 0;
    while (v16 < *(a1 + 16))
    {
      v17 = v22;
      v18 = *(v22 + 16);
      v19 = *(a1 + 32 + 8 * v16);
      if (!swift_isUniquelyReferenced_nonNull_native() || (v20 = *(v22 + 24) >> 1, v20 <= v18))
      {
        sub_219BF7404();
        v17 = v22;
        v20 = *(v22 + 24) >> 1;
      }

      v21 = *(v17 + 16);
      if (v20 == v21)
      {
        goto LABEL_33;
      }

      if (v20 <= v21)
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if (!v19)
      {
        goto LABEL_33;
      }

      ++v16;
      *(v17 + 32 + 8 * v21) = v19;
      *(v17 + 16) = v21 + 1;
      sub_219BF73E4();
      if (v15 == v16)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_31;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
LABEL_16:

LABEL_28:

    return;
  }

  v23 = MEMORY[0x277D84F90];
  v4 = *(a1 + 32);
  sub_219BF7404();
  v5 = *(v23 + 16);
  v6 = *(v23 + 24) >> 1;
  if (v6 != v5)
  {
    if (v6 > v5)
    {
      if (v4)
      {
        *(v23 + 32 + 8 * v5) = v4;
        *(v23 + 16) = v5 + 1;
        sub_219BF73E4();
        if (v3 != 1)
        {
          v7 = (a1 + 40);
          v8 = 1;
          while (v8 < *(a1 + 16))
          {
            v9 = *v7;

            sub_2199AB9B8(v10);
            v11 = v23;
            v12 = *(v23 + 16);
            if (!swift_isUniquelyReferenced_nonNull_native() || (v13 = *(v23 + 24) >> 1, v13 <= v12))
            {
              sub_219BF7404();
              v11 = v23;
              v13 = *(v23 + 24) >> 1;
            }

            v14 = *(v11 + 16);
            if (v13 == v14)
            {
              goto LABEL_34;
            }

            if (v13 <= v14)
            {
              goto LABEL_29;
            }

            if (!v9)
            {
              goto LABEL_34;
            }

            ++v8;
            *(v11 + 32 + 8 * v14) = v9;
            *(v11 + 16) = v14 + 1;
            sub_219BF73E4();
            ++v7;
            if (v3 == v8)
            {
              goto LABEL_16;
            }
          }

LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        goto LABEL_16;
      }

      goto LABEL_35;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_35:
  __break(1u);
}

void *sub_2199AB9B8(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || (v6 = *(v3 + 24) >> 1, v6 < (v4 + v2)))
  {
    result = sub_219BF7404();
    v3 = *v1;
    v6 = *(*v1 + 24) >> 1;
  }

  v7 = *(v3 + 16);
  v8 = v6 - v7;
  if (v2)
  {
    if (v8 < v2)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    sub_2186C6148(0, &qword_280E8E5D0, 0x277D751E0);
    result = swift_arrayInitWithCopy();
    v9 = *(v3 + 16);
    v7 = v9 + v2;
    if (__OFADD__(v9, v2))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    *(v3 + 16) = v7;
  }

  if (v2 == v8)
  {
    v10 = v5[2];
    if (v2 != v10)
    {
      if (v2 >= v10)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      v11 = v2 + 1;
      v20 = v5[v2 + 4];
      v12 = v20;
LABEL_14:
      while (1)
      {
        sub_219BF7414();
        v13 = *v1;
        v14 = *(*v1 + 24) >> 1;
        v15 = v14 - v7;
        if (v14 > v7)
        {
          break;
        }

        *(v13 + 16) = v7;
      }

      v16 = (v13 + 8 * v7 + 32);
      v17 = v7 + 1;
      result = v20;
      while (1)
      {
        *v16 = result;
        v18 = v5[2];
        if (v11 == v18)
        {
          *(v13 + 16) = v17;
          goto LABEL_21;
        }

        if (v11 >= v18)
        {
          break;
        }

        v19 = v11 + 1;
        result = v5[v11 + 4];
        ++v16;
        ++v17;
        ++v11;
        if (!--v15)
        {
          v20 = result;
          v7 = v14;
          v11 = v19;
          *(v13 + 16) = v14;
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_25;
    }
  }

LABEL_21:

  return sub_219BF73E4();
}

double sub_2199ABB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v117 = a3;
  v112 = a2;
  v4 = MEMORY[0x277D83D88];
  sub_218760490(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v118 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v115 = &v104[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v113 = &v104[-v8];
  MEMORY[0x28223BE20](v9);
  v11 = &v104[-v10];
  v119 = v12;
  MEMORY[0x28223BE20](v13);
  v120 = &v104[-v14];
  v15 = sub_219BDE924();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v110 = &v104[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218760490(0, &unk_280EE8E70, MEMORY[0x277D2F9F0], v4);
  MEMORY[0x28223BE20](v18 - 8);
  v114 = &v104[-v19];
  sub_218760490(0, &qword_280EE6350, MEMORY[0x277D35078], v4);
  MEMORY[0x28223BE20](v20 - 8);
  v111 = &v104[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v116 = &v104[-v23];
  sub_218760490(0, &qword_280EE8AE0, MEMORY[0x277D30210], v4);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v104[-v25];
  v27 = type metadata accessor for CampaignRouteModel(0);
  MEMORY[0x28223BE20](v27);
  v29 = &v104[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v30);
  v32 = &v104[-v31];
  v109 = sub_2199AEFC0(&unk_27CC21C70, type metadata accessor for PuzzleViewController, &unk_219CBB69C);
  v33 = sub_219BDB854();
  if ([v33 fc_isNewsArticleURL] && (v34 = objc_msgSend(v33, sel_fc_NewsArticleID)) != 0)
  {
    v35 = v34;
    v120 = v32;
    v108 = v11;
    v36 = sub_219BF5414();
    v38 = v37;

    (*(v16 + 56))(v26, 1, 1, v15);
    v39 = sub_219BE4394();
    v40 = *(v39 - 1);
    v41 = *(v40 + 56);
    v115 = v39;
    v107 = v40 + 56;
    v106 = v41;
    (v41)(v116, 1, 1);
    v42 = sub_219BDD4D4();
    (*(*(v42 - 8) + 56))(v114, 1, 1, v42);
    v43 = v29 + v27[14];
    *(v43 + 1) = 0;
    swift_unknownObjectWeakInit();
    *v29 = v36;
    v29[1] = v38;
    v44 = *(v16 + 48);
    if (v44(v26, 1, v15) == 1)
    {
      v105 = *MEMORY[0x277D301F8];
      v45 = sub_219BDE914();
      v46 = v110;
      (*(*(v45 - 8) + 104))(v110, v105, v45);
      (*(v16 + 104))(v46, *MEMORY[0x277D30200], v15);
      v47 = v44(v26, 1, v15);
      v48 = v111;
      if (v47 != 1)
      {
        sub_2187460CC(v26, &qword_280EE8AE0, MEMORY[0x277D30210], MEMORY[0x277D83D88], sub_218760490);
      }
    }

    else
    {
      v46 = v110;
      (*(v16 + 32))(v110, v26, v15);
      v48 = v111;
    }

    (*(v16 + 32))(v29 + v27[5], v46, v15);
    v71 = (v29 + v27[6]);
    *v71 = 0;
    v71[1] = 0;
    v72 = (v29 + v27[7]);
    *v72 = 0;
    v72[1] = 0;
    *(v29 + v27[8]) = MEMORY[0x277D84F90];
    *(v29 + v27[9]) = 0;
    *(v29 + v27[11]) = 0;
    *(v43 + 1) = v109;
    swift_unknownObjectWeakAssign();
    v73 = *(v40 + 48);
    v74 = v116;
    v75 = v115;
    v76 = v73(v116, 1, v115);
    v77 = v108;
    v78 = v120;
    if (v76 == 1)
    {
      v79 = *MEMORY[0x277D34D80];
      v80 = sub_219BE3D74();
      v81 = v79;
      v82 = v116;
      (*(*(v80 - 8) + 104))(v48, v81, v80);
      (*(v40 + 104))(v48, *MEMORY[0x277D35068], v75);
      if (v73(v82, 1, v75) != 1)
      {
        sub_2187460CC(v82, &qword_280EE6350, MEMORY[0x277D35078], MEMORY[0x277D83D88], sub_218760490);
      }
    }

    else
    {
      (*(v40 + 32))(v48, v74, v75);
    }

    v106(v48, 0, 1, v75);
    sub_2199AE5E4(v48, v29 + v27[10], &qword_280EE6350, MEMORY[0x277D35078]);
    *(v29 + v27[13]) = 0;
    sub_2199AE5E4(v114, v29 + v27[12], &unk_280EE8E70, MEMORY[0x277D2F9F0]);
    sub_21899068C(v29, v78);
    v83 = *(v117 + 80);
    v84 = swift_allocBox();
    sub_2199AED00(v78, v85, type metadata accessor for CampaignRouteModel);
    v117 = v84;
    v86 = v84 | 0x1000000000000006;
    v87 = sub_219BDFA44();
    (*(*(v87 - 8) + 56))(v77, 1, 1, v87);
    v133 = 0;
    v131 = 0u;
    v132 = 0u;
    v130 = 0;
    v128 = 0u;
    v129 = 0u;
    v127 = v83;
    sub_2187B1B0C(&v128, &v122, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (*(&v123 + 1))
    {
      sub_2186CB1F0(&v122, &v124);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v89 = qword_280ED32D8;
      v88 = qword_280ED32E0;
      v90 = qword_280ED32E8;

      v116 = v88;
      sub_2188202A8(v88);
      __swift_destroy_boxed_opaque_existential_1(&v124);
    }

    else
    {
      sub_2199AF158(&v122, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186CFDE4);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v89 = qword_280ED32D8;
      v91 = qword_280ED32E0;
      v90 = qword_280ED32E8;

      v116 = v91;
      sub_2188202A8(v91);
    }

    v121 = v86;
    v123 = 0u;
    v122 = 0u;
    v92 = MEMORY[0x277D2DED0];
    v93 = v113;
    sub_2199AF008(v77, v113, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_2187B1B0C(&v131, &v124, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v94 = (*(v118 + 80) + 24) & ~*(v118 + 80);
    v95 = (v119 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
    v96 = (v95 + 47) & 0xFFFFFFFFFFFFFFF8;
    v97 = swift_allocObject();
    *(v97 + 16) = 0;
    sub_2199AE5E4(v93, v97 + v94, &qword_280EE8610, v92);
    v98 = v97 + v95;
    v99 = v125;
    *v98 = v124;
    *(v98 + 16) = v99;
    *(v98 + 32) = v126;
    v100 = (v97 + v96);
    v101 = (v97 + ((v96 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v100 = 0;
    v100[1] = 0;
    v102 = v116;
    *v101 = v89;
    v101[1] = v102;
    v101[2] = v90;

    sub_2188202A8(v102);
    sub_21874EF88(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v102, v90);
    sub_2199AF158(&v128, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186CFDE4);
    sub_2199AF158(&v131, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186CFDE4);
    sub_2187460CC(v108, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218760490);
    sub_2199AF2F0(v120, type metadata accessor for CampaignRouteModel);
  }

  else
  {

    v49 = *(v117 + 80);
    v50 = sub_219BDB954();
    v51 = swift_allocBox();
    (*(*(v50 - 8) + 16))(v52, a1, v50);
    v117 = v51;
    v53 = v51 | 0x6000000000000000;
    v54 = sub_219BDFA44();
    v55 = v120;
    (*(*(v54 - 8) + 56))(v120, 1, 1, v54);
    v133 = 0;
    v131 = 0u;
    v132 = 0u;
    v130 = 0;
    v128 = 0u;
    v129 = 0u;
    v127 = v49;
    sub_2187B1B0C(&v128, &v122, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (*(&v123 + 1))
    {
      sub_2186CB1F0(&v122, &v124);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v57 = qword_280ED32D8;
      v56 = qword_280ED32E0;
      v58 = qword_280ED32E8;

      v116 = v56;
      sub_2188202A8(v56);
      __swift_destroy_boxed_opaque_existential_1(&v124);
    }

    else
    {
      sub_2199AF158(&v122, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186CFDE4);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v57 = qword_280ED32D8;
      v59 = qword_280ED32E0;
      v58 = qword_280ED32E8;

      v116 = v59;
      sub_2188202A8(v59);
    }

    v121 = v53;
    v123 = 0u;
    v122 = 0u;
    v60 = MEMORY[0x277D2DED0];
    v61 = v115;
    sub_2199AF008(v55, v115, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_2187B1B0C(&v131, &v124, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v62 = (*(v118 + 80) + 24) & ~*(v118 + 80);
    v63 = (v119 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
    v64 = (v63 + 47) & 0xFFFFFFFFFFFFFFF8;
    v65 = swift_allocObject();
    *(v65 + 16) = 0;
    sub_2199AE5E4(v61, v65 + v62, &qword_280EE8610, v60);
    v66 = v65 + v63;
    v67 = v125;
    *v66 = v124;
    *(v66 + 16) = v67;
    *(v66 + 32) = v126;
    v68 = (v65 + v64);
    v69 = (v65 + ((v64 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v68 = 0;
    v68[1] = 0;
    v70 = v116;
    *v69 = v57;
    v69[1] = v70;
    v69[2] = v58;

    sub_2188202A8(v70);
    sub_21874EF88(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v70, v58);
    sub_2199AF158(&v128, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186CFDE4);
    sub_2199AF158(&v131, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186CFDE4);
    sub_2187460CC(v120, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218760490);
  }

  sub_2187460CC(&v122, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2199AE594);

  return result;
}

double sub_2199AD098(uint64_t a1)
{
  sub_219BF4154();
  sub_219BF3A04();

  return result;
}

unint64_t sub_2199AD104()
{
  result = qword_27CC21C20;
  if (!qword_27CC21C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21C20);
  }

  return result;
}

double sub_2199AD158()
{
  sub_218760490(0, &unk_27CC21C40, MEMORY[0x277D336F0], MEMORY[0x277D84560]);
  v0 = sub_219BF1FE4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09EC0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D336D8], v0);
  v6(v5 + v2, *MEMORY[0x277D336E0], v0);
  v7 = sub_2194B4D64(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2199A2478(v7);

  return result;
}

uint64_t sub_2199AD2E0(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
LABEL_30:
    v11 = result;
    v5 = sub_219BF7214();
    result = v11;
    v6 = -v5;
    if (!__OFSUB__(0, v5))
    {
      goto LABEL_4;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v3 = a2;
  v4 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_30;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = -v5;
  if (__OFSUB__(0, v5))
  {
    goto LABEL_32;
  }

LABEL_4:
  v7 = -result;
  if (v6 > 0 || v6 <= v7)
  {
    v8 = v5 - result;
    if (__OFADD__(v5, v7))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v5 < v8)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v5 < 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v8 = 0;
    if (!v4)
    {
LABEL_8:
      result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_13;
    }
  }

  result = sub_219BF7214();
LABEL_13:
  if (result < v8)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v8 < 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v4)
  {
    result = sub_219BF7214();
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v5)
  {
    goto LABEL_35;
  }

  if (v5 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if ((v3 & 0xC000000000000001) == 0 || v8 == v5)
  {

    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }

    goto LABEL_28;
  }

  if (v8 < v5)
  {
    sub_2186C6148(0, &qword_280E8E5D0, 0x277D751E0);

    v9 = v8;
    do
    {
      v10 = v9 + 1;
      sub_219BF7334();
      v9 = v10;
    }

    while (v5 != v10);
    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }

LABEL_28:

    return sub_219BF7564();
  }

LABEL_40:
  __break(1u);
  return result;
}

void sub_2199AD4A8()
{
  v1 = v0;
  v2 = sub_219BEA3D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE7784();
  MEMORY[0x28223BE20](v6 - 8);
  *(v0 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_fullScreenModalDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_hardPaywallViewController) = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentPuzzleBarButtonItems) = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_initialLeftBarButtonItems) = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_initialLeadingRightBarButtonItems) = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentRightMenuItems) = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentLeftMenuItems) = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentToolbarMenuItems) = 0;
  v7 = (v0 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentAccessoryView);
  *v7 = 0;
  v7[1] = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_publisherLogo) = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzle) = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_didSetInitialTitle) = 0;
  *(v0 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_initialIsPencilInputExpected) = 2;
  v8 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_paywall;
  v9 = *MEMORY[0x277D353A8];
  v10 = sub_219BE4914();
  (*(*(v10 - 8) + 104))(v1 + v8, v9, v10);
  v11 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentPuzzleColorTheme;
  v12 = sub_219BF1E94();
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  *(v1 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_revealTypesUsed) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_isBackgrounded) = 0;
  *(v1 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_isVisible) = 1;
  v13 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController__backgroundTaskID;
  v24 = 0;
  v25 = 1;
  sub_218760490(0, &qword_27CC21C98, sub_2199AF268, MEMORY[0x277D6CF18]);
  swift_allocObject();
  *(v1 + v13) = sub_219BE2E64();
  v14 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController____lazy_storage___radarBarButtonItem;
  v15 = sub_219BF28F4();
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  *(v1 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController____lazy_storage___puzzleMenuAction) = 0;
  *(v1 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_subscribed) = 0;
  v16 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_visibilityEventManager;
  v17 = MEMORY[0x277D6CAA0];
  sub_21874EF88(0, &unk_27CC21CA8, sub_2194B4CA8, &type metadata for PuzzleViewController.PuzzleVisibilityEventRequirement, MEMORY[0x277D6CAA0]);
  swift_allocObject();
  *(v1 + v16) = sub_219BE1D34();
  v18 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_embedLoadEventManager;
  sub_21874EF88(0, &qword_27CC21CB8, sub_2199AF29C, &type metadata for PuzzleViewController.PuzzleEmbedLoadedRequirement, v17);
  swift_allocObject();
  *(v1 + v18) = sub_219BE1D34();
  *(v1 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_timer) = 0;
  *(v1 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_currentNavigationBarTheme) = 0;
  v19 = (v1 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_embedDidLoadCompletion);
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_transitionEffectView;
  *(v1 + v20) = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  v21 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_navigationItemStyle;
  sub_219BE7774();
  sub_218760490(0, &qword_280EE7BC8, MEMORY[0x277D6DB58], MEMORY[0x277D6CB60]);
  swift_allocObject();
  *(v1 + v21) = sub_219BE20D4();
  v22 = OBJC_IVAR____TtC7NewsUI220PuzzleViewController_titleView;
  (*(v3 + 104))(v5, *MEMORY[0x277D6EA70], v2);
  v23 = objc_allocWithZone(sub_219BDEE74());
  *(v1 + v22) = sub_219BDEE64();
  *(v1 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_skipModalPresentation) = 0;
  sub_219BF7514();
  __break(1u);
}

uint64_t sub_2199AD9D0()
{
  v1 = v0;
  v2 = sub_219BF39A4();
  if (v2)
  {
    v3 = v2;
    swift_getObjectType();
    if (swift_conformsToProtocol2() && (v4 = [v3 superview]) != 0 && (v4, v5 = v1 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_instanceID, v6 = *(v1 + OBJC_IVAR____TtC7NewsUI220PuzzleViewController_instanceID), v7 = *(v5 + 8), v8 = sub_219BF33C4(), v9))
    {
      if (v6 == v8 && v9 == v7)
      {
        v11 = 1;
      }

      else
      {
        v11 = sub_219BF78F4();
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_2199ADAD4(uint64_t a1, __n128 a2)
{
  v5 = *(sub_219BF1CC4() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v2[5];
  v11 = v2[6];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2187609C8;

  return sub_219570214(a1, v7, v8, v9, v10, v11, v2 + v6);
}

void sub_2199ADBE0()
{
  v1 = v0;
  v2 = sub_219BED174();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BED1D4();
  v42 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_219BED214();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;

  sub_219BE2E84();

  if (v45 == 1)
  {
    v14 = *&v0[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzle];
    if (v14)
    {
      v38 = v5;
      v39 = v6;
      v40 = v3;
      v15 = [v14 identifier];
      if (!v15)
      {
        sub_219BF5414();
        v15 = sub_219BF53D4();
      }

      v16 = [objc_opt_self() sharedApplication];
      v17 = [v16 beginBackgroundTaskWithName:v15 expirationHandler:0];

      aBlock = v17;
      LOBYTE(v45) = 0;

      sub_219BE2E94();

      sub_219BE2E84();

      v18 = *MEMORY[0x277D767B0];
      if ((v45 & 1) != 0 || aBlock != v18)
      {
        if (qword_280EE5F80 != -1)
        {
          swift_once();
        }

        v37 = v2;
        v23 = sub_219BE5434();
        __swift_project_value_buffer(v23, qword_280F625E0);
        v24 = v1;
        v25 = sub_219BE5414();
        v26 = sub_219BF6214();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v36 = v24;
          v28 = v27;
          *v27 = 134217984;

          sub_219BE2E84();

          v29 = aBlock;
          if (v45)
          {
            v29 = v18;
          }

          *(v28 + 1) = v29;

          _os_log_impl(&dword_2186C1000, v25, v26, "sceneWillResignActive: requesting additional background time. TaskID=%ld", v28, 0xCu);
          MEMORY[0x21CECF960](v28, -1, -1);
        }

        else
        {

          v25 = v24;
        }

        sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
        v36 = sub_219BF66A4();
        sub_219BED1F4();
        sub_219BED244();
        v41 = *(v41 + 8);
        (v41)(v10, v43);
        v30 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v48 = sub_2199AE2CC;
        v49 = v30;
        aBlock = MEMORY[0x277D85DD0];
        v45 = 1107296256;
        v46 = sub_218793E0C;
        v47 = &block_descriptor_195;
        v31 = _Block_copy(&aBlock);

        sub_219BED1A4();
        aBlock = MEMORY[0x277D84F90];
        sub_2199AEFC0(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        v32 = MEMORY[0x277D85198];
        sub_218760490(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
        sub_2199AE2D4(&qword_280E8EFA0, &qword_280E8EFB0, v32);
        v33 = v37;
        v34 = v38;
        sub_219BF7164();
        v35 = v36;
        MEMORY[0x21CECD420](v13, v8, v34, v31);
        _Block_release(v31);

        (*(v40 + 8))(v34, v33);
        (*(v42 + 8))(v8, v39);
        (v41)(v13, v43);
      }

      else
      {
        if (qword_280EE5F80 != -1)
        {
          swift_once();
        }

        v19 = sub_219BE5434();
        __swift_project_value_buffer(v19, qword_280F625E0);
        v20 = sub_219BE5414();
        v21 = sub_219BF6214();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_2186C1000, v20, v21, "sceneWillResignActive: additional background time request denied.", v22, 2u);
          MEMORY[0x21CECF960](v22, -1, -1);
        }
      }
    }
  }

  sub_2199A8218(0, 2);
}

uint64_t sub_2199AE2D4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_218760490(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2199AE338(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187609C8;

  return sub_218FC6FE4(a1, v4, v5, v6);
}

void sub_2199AE3EC()
{
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v0 = sub_219BE5434();
  __swift_project_value_buffer(v0, qword_280F625E0);
  oslog = sub_219BE5414();
  v1 = sub_219BF6214();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2186C1000, oslog, v1, "PuzzleViewController: Received interaction message", v2, 2u);
    MEMORY[0x21CECF960](v2, -1, -1);
  }
}

void sub_2199AE4D4(uint64_t a1)
{
  if (!qword_27CC21C60)
  {
    sub_21873FA4C();
    sub_218760490(255, &unk_27CC10910, MEMORY[0x277D335C0], MEMORY[0x277D83D88]);
    sub_219BF25F4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC21C60);
    }
  }
}

void sub_2199AE594(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2199AE5E4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_218760490(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_42Tm_0()
{
  sub_218760490(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_219BDFA44();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  }

  swift_unknownObjectRelease();

  if (*(v0 + ((((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2199AE800(void *a1)
{
  sub_218760490(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_2199AE920(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2187609C8;

  return sub_2199A6B68(v8, v9, a1, v4, v5, v6, v7);
}

void sub_2199AE9F4()
{
  v1 = v0;
  v2 = MEMORY[0x277D338C0];
  sub_218760490(0, &qword_280E90470, MEMORY[0x277D338C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = aBlock - v4;
  v6 = sub_219BF24E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v1[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleModel];
  v11 = type metadata accessor for PuzzleModel(0);
  sub_2199AF008(&v10[*(v11 + 20)], v5, &qword_280E90470, v2);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2187460CC(v5, &qword_280E90470, MEMORY[0x277D338C0], MEMORY[0x277D83D88], sub_218760490);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = sub_219BF24D4();
    (*(v7 + 8))(v9, v6);
    if (v12)
    {
      if (*&v1[OBJC_IVAR____TtC7NewsUI220PuzzleViewController_puzzleViewConfig])
      {
        v13 = objc_opt_self();
        v14 = swift_allocObject();
        *(v14 + 16) = v1;
        aBlock[4] = sub_2199AECE0;
        aBlock[5] = v14;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_218793E0C;
        aBlock[3] = &block_descriptor_68_2;
        v15 = _Block_copy(aBlock);
        v16 = v1;

        [v13 animateWithDuration:v15 animations:0.2];
        _Block_release(v15);
      }
    }
  }
}

uint64_t sub_2199AED00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_24Tm_3(__n128 a1)
{
  v2 = sub_219BF1CC4();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2199AEE44(uint64_t a1, __n128 a2)
{
  v5 = *(sub_219BF1CC4() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v2[5];
  v11 = v2[6];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2187608D4;

  return sub_219570214(a1, v7, v8, v9, v10, v11, v2 + v6);
}

uint64_t sub_2199AEFC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2199AF008(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_218760490(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2199AF088(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_218760490(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_56Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t sub_2199AF158(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_218809748(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2199AF1B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187609C8;

  return sub_218FC6808(a1, v4, v5, v6);
}

unint64_t sub_2199AF29C()
{
  result = qword_27CC21CC0;
  if (!qword_27CC21CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21CC0);
  }

  return result;
}

uint64_t sub_2199AF2F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2199AF380()
{
  sub_21896FA3C(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - v6;
  v8 = *(v0 + 24);
  v9 = sub_219BDFA44();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v27 = v8;
  sub_2187B14CC(v28, &v23, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (*(&v24 + 1))
  {
    sub_21875F93C(&v23, v25);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v11 = qword_280ED32D8;
    v10 = qword_280ED32E0;
    v12 = qword_280ED32E8;

    sub_2188202A8(v10);
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_2187448D0(&v23, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v11 = qword_280ED32D8;
    v10 = qword_280ED32E0;
    v12 = qword_280ED32E8;

    sub_2188202A8(v10);
  }

  v22[1] = 0xF000000000000060;
  v24 = 0u;
  v23 = 0u;
  sub_2189B4E2C(v7, v4);
  sub_2187B14CC(v30, v25, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v13 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v14 = (v3 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 47) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  sub_2189B4EAC(v4, v16 + v13);
  v17 = v16 + v14;
  v18 = v25[1];
  *v17 = v25[0];
  *(v17 + 16) = v18;
  *(v17 + 32) = v26;
  v19 = (v16 + v15);
  v20 = (v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v19 = 0;
  v19[1] = 0;
  *v20 = v11;
  v20[1] = v10;
  v20[2] = v12;

  sub_2188202A8(v10);
  sub_2186CF94C(0);
  sub_2199AF9A4(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
  sub_219BEB464();

  sub_2187FABEC(v10, v12);
  sub_2187448D0(v28, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v30, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v7);
  sub_2187448D0(&v23, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
  return 1;
}

uint64_t sub_2199AF9A4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t type metadata accessor for TrendingTodayFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EADDD0;
  if (!qword_280EADDD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2199AFA60(uint64_t a1)
{
  sub_2186DF784(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for TrendingTodayFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510, MEMORY[0x277D33778]);
      if (v3 <= 0x3F)
      {
        sub_218735F3C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2199AFB2C(uint64_t a1)
{
  v2 = type metadata accessor for TrendingTodayFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TrendingTodayFeedGroupEmitter(0);
  v36 = 3;
  sub_2189AE994(0);
  v31 = v1;
  v34 = sub_219BEE964();
  sub_2186D8F44(0, &unk_280E8B8C0, sub_218D907D4, MEMORY[0x277D84560]);
  sub_218D907D4(0);
  v6 = v5;
  v7 = *(v5 - 8);
  v33 = *(v7 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  v32 = v9;
  *(v9 + 16) = xmmword_219C09EC0;
  v10 = (v9 + v8);
  sub_2186DF784(0);
  v30 = v11;
  sub_219BEDD14();
  v12 = sub_219BF1784();
  v14 = v13;
  v15 = sub_219BF1934();
  v16 = *(v15 - 8);
  v28 = *(v16 + 8);
  v29 = v16 + 8;
  v28(v4, v15);
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  *(v17 + 24) = v14;
  sub_2199B3874(0, &qword_280E91230, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D328E0]);
  swift_allocObject();
  *v10 = sub_219BEFB94();
  v18 = *MEMORY[0x277D32308];
  v19 = *(v7 + 104);
  v19(v10, v18, v6);
  sub_219BEDD14();
  v20 = sub_219BF1784();
  v22 = v21;
  v28(v4, v15);
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = v22;
  swift_allocObject();
  v24 = sub_219BEFB94();
  v25 = v33;
  *(v10 + v33) = v24;
  v19((v10 + v25), v18, v6);
  v35 = v34;
  sub_2191EE478(v32);
  return v35;
}

uint64_t sub_2199AFED4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_2186D8F44(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  v3[5] = swift_task_alloc();
  sub_219BEF554();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v5 = sub_219BED8D4();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[11] = v6;
  *v6 = v3;
  v6[1] = sub_2199B0068;

  return sub_2199B05F4(a2);
}

uint64_t sub_2199B0068(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *v3;
  v5[12] = a1;
  v5[13] = a2;

  if (v2)
  {

    v7 = v6[1];

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    v5[14] = v9;
    *v9 = v6;
    v9[1] = sub_2199B0210;
    v10 = v5[3];

    return sub_2199B1720(v10, a1);
  }
}

uint64_t sub_2199B0210(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_219453364;
  }

  else
  {

    *(v4 + 128) = a1;
    v5 = sub_2199B0340;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2199B0340()
{
  v1 = v0[9];
  v2 = v0[10];
  v6 = v0[8];
  v3 = v0[2];
  sub_2186DF784(0);
  sub_219BEDCB4();
  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for TrendingTodayFeedGroupEmitter(0);
  sub_2189AE994(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  type metadata accessor for TrendingTodayFeedGroupKnobs(0);
  sub_2199B3874(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  sub_219BEEC84();
  sub_219BED834();
  (*(v1 + 32))(v3, v2, v6);
  type metadata accessor for TodayFeedGroup(0);
  swift_storeEnumTagMultiPayload();
  sub_2199B3874(0, &qword_280E91700, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D324E8]);
  swift_storeEnumTagMultiPayload();

  v4 = v0[1];

  return v4();
}

uint64_t sub_2199B05F4(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_219BEE6E4();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v4 = sub_219BF0BD4();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2199B0710, 0, 0);
}

uint64_t sub_2199B0710(uint64_t a1)
{
  sub_219BEF164();
  v2 = v1[11];
  v1[18] = v1[4];
  sub_219BEF0B4();
  v3 = v1[5];
  v1[19] = v3;
  v4 = swift_task_alloc();
  v1[20] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v1[21] = v5;
  sub_2186D8F44(0, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
  *v5 = v1;
  v5[1] = sub_2199B08C0;

  return MEMORY[0x2822008A0](v1 + 6, 0, 0, 0xD000000000000026, 0x8000000219D42E20, sub_2199B3964, v4, v6);
}

uint64_t sub_2199B08C0()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_2199B1694;
  }

  else
  {

    v2 = sub_2199B09DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void *sub_2199B09DC()
{
  v1 = v0[18];

  v2 = v0[6];
  v3 = *(v1 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);
  v103 = MEMORY[0x277D84F90];
  *&v93 = v2 >> 62;
  if (v2 >> 62)
  {
LABEL_32:
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  v97 = v2;
  v98 = v0;
  if (v4)
  {
    v6 = 0;
    v99 = v2 & 0xFFFFFFFFFFFFFF8;
    v101 = v2 & 0xC000000000000001;
    v7 = v2 + 32;
    v0 = (v3 + 56);
    while (1)
    {
      if (v101)
      {
        v8 = MEMORY[0x21CECE0F0](v6, v97);
        v9 = __OFADD__(v6++, 1);
        if (v9)
        {
LABEL_23:
          __break(1u);
LABEL_24:
          v5 = v103;
          v0 = v98;
          break;
        }
      }

      else
      {
        if (v6 >= *(v99 + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        v8 = *(v7 + 8 * v6);
        swift_unknownObjectRetain();
        v9 = __OFADD__(v6++, 1);
        if (v9)
        {
          goto LABEL_23;
        }
      }

      v2 = v4;
      v10 = [v8 identifier];
      v11 = sub_219BF5414();
      v13 = v12;

      if (*(v3 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v14 = sub_219BF7AE4(), v15 = -1 << *(v3 + 32), v16 = v14 & ~v15, ((*(v0 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0))
      {
        v17 = ~v15;
        while (1)
        {
          v18 = (*(v3 + 48) + 16 * v16);
          v19 = *v18 == v11 && v18[1] == v13;
          if (v19 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v16 = (v16 + 1) & v17;
          if (((*(v0 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        swift_unknownObjectRelease();
      }

      else
      {
LABEL_5:

        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      v4 = v2;
      if (v6 == v2)
      {
        goto LABEL_24;
      }
    }
  }

  v21 = v0[16];
  v20 = v0[17];
  v22 = v0[15];
  v23 = v0[11];
  v95 = type metadata accessor for TrendingTodayFeedGroupEmitter(0);
  v24 = v23 + *(v95 + 20);
  v100 = type metadata accessor for TrendingTodayFeedGroupKnobs(0);
  v102 = v24;

  sub_219BEF134();
  sub_219BEF524();
  v25 = *(v21 + 8);
  v25(v20, v22);
  v26 = v0[7];
  v27 = v5 < 0 || (v5 & 0x4000000000000000) != 0;
  if (v27)
  {
    v28 = sub_219BF7214();
    if (v28 < v26)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v28 = *(v5 + 16);
    if (v28 < v26)
    {
LABEL_30:

      v29 = sub_219BEEDD4();
      sub_2199B3AE8(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
      swift_allocError();
      v31 = v30;
      *v30 = v26;
      v30[1] = v28;
      v32 = MEMORY[0x277D32400];
LABEL_85:
      (*(*(v29 - 8) + 104))(v31, *v32, v29);
      goto LABEL_86;
    }
  }

  v33 = v0[17];
  v34 = v0[15];
  v96 = v25;
  v35 = *(v102 + *(v100 + 28));
  sub_219BEF134();
  sub_219BEF524();
  v25(v33, v34);
  if (v0[8] > v26)
  {
    v26 = v0[8];
  }

  if (v26 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v27)
    {
      v36 = sub_219BF7214();
      if (sub_219BF7214() < 0)
      {
        __break(1u);
        goto LABEL_109;
      }

      if (v36 >= v26)
      {
        v37 = v26;
      }

      else
      {
        v37 = v36;
      }

      if (v36 < 0)
      {
        v37 = v26;
      }

      if (v26)
      {
        v38 = v37;
      }

      else
      {
        v38 = 0;
      }

      v39 = sub_219BF7214();
    }

    else
    {
      v39 = *(v5 + 16);
      if (v39 >= v26)
      {
        v40 = v26;
      }

      else
      {
        v40 = *(v5 + 16);
      }

      if (v26)
      {
        v38 = v40;
      }

      else
      {
        v38 = 0;
      }
    }

    if (v39 >= v38)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {

        if (v38)
        {
          sub_218731D50();
          v41 = 0;
          do
          {
            v42 = v41 + 1;
            sub_219BF7334();
            v41 = v42;
          }

          while (v38 != v42);
        }
      }

      else
      {
      }

      if (v27)
      {
        v43 = sub_219BF7564();
        v33 = v44;
        v36 = v45;
        v34 = v46;

        v5 = v43;
        if (v34)
        {
LABEL_66:
          sub_219BF7934();
          swift_unknownObjectRetain_n();
          v48 = swift_dynamicCastClass();
          if (!v48)
          {
            swift_unknownObjectRelease();
            v48 = MEMORY[0x277D84F90];
          }

          v49 = *(v48 + 16);

          if (!__OFSUB__(v34 >> 1, v36))
          {
            if (v49 == (v34 >> 1) - v36)
            {
              v35 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              if (v35)
              {
                goto LABEL_73;
              }

              v35 = MEMORY[0x277D84F90];
LABEL_72:
              swift_unknownObjectRelease();
LABEL_73:
              if (qword_280E8D7A0 == -1)
              {
                goto LABEL_74;
              }

              goto LABEL_106;
            }

            goto LABEL_110;
          }

LABEL_109:
          __break(1u);
LABEL_110:
          swift_unknownObjectRelease_n();
        }
      }

      else
      {
        v36 = 0;
        v33 = v5 + 32;
        v34 = (2 * v38) | 1;
        if (v34)
        {
          goto LABEL_66;
        }
      }

      sub_218B667DC(v5, v33, v36, v34);
      v35 = v47;
      goto LABEL_72;
    }
  }

  __break(1u);
LABEL_106:
  swift_once();
LABEL_74:
  sub_2186F20D4(0);
  v51 = v50;
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_219C09EC0;
  v53 = MEMORY[0x277D83B88];
  v54 = MEMORY[0x277D83C10];
  *(v52 + 56) = MEMORY[0x277D83B88];
  *(v52 + 64) = v54;
  *(v52 + 32) = v28;
  v55 = v35 < 0 || (v35 & 0x4000000000000000) != 0;
  if (v55)
  {
    v56 = sub_219BF7214();
  }

  else
  {
    v56 = *(v35 + 16);
  }

  *(v52 + 96) = v53;
  *(v52 + 104) = v54;
  *(v52 + 72) = v56;
  sub_219BF6214();
  sub_219BE5314("Trending group emitter capped headlines from %ld to %ld", v88, v90);

  if (v55)
  {
    if (sub_219BF7214())
    {
      goto LABEL_81;
    }

LABEL_84:

    v29 = sub_219BEEDD4();
    sub_2199B3AE8(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    v31 = v73;
    v32 = MEMORY[0x277D323A8];
    goto LABEL_85;
  }

  if (!*(v35 + 16))
  {
    goto LABEL_84;
  }

LABEL_81:
  v92 = v51;
  v57 = v0[17];
  v91 = v0[15];
  v58 = [*(v0[11] + *(v95 + 28)) readingHistory];
  v59 = [v58 allSeenArticleIDs];

  v60 = sub_219BF5D44();
  *(swift_task_alloc() + 16) = v60;
  sub_218731D50();
  v61 = v35;
  v62 = sub_219BF5954();

  sub_219BEF134();
  v0 = v98;
  sub_219BEF524();
  v96(v57, v91);
  v63 = *(v98 + 9);
  v64 = v62 / v56;
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_219C0EE20;
  v66 = MEMORY[0x277D83B88];
  *(v65 + 56) = MEMORY[0x277D83B88];
  *(v65 + 64) = v54;
  *(v65 + 32) = v62;
  *(v65 + 96) = v66;
  *(v65 + 104) = v54;
  *(v65 + 72) = v56;
  v67 = MEMORY[0x277D839F8];
  v68 = MEMORY[0x277D83A80];
  *(v65 + 136) = MEMORY[0x277D839F8];
  *(v65 + 144) = v68;
  *(v65 + 112) = v64;
  *(v65 + 176) = v67;
  *(v65 + 184) = v68;
  *(v65 + 152) = v63;
  sub_219BF6214();
  sub_219BE5314("Trending group emitter unseen headline count %ld of %ld, ratio=%f, minRequiredRatio=%f", v89, v91, v92, v93);

  if (v63 > v64)
  {

    v69 = sub_219BEEDD4();
    sub_2199B3AE8(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    v71 = v70;
    sub_219BF7314();
    v98[2] = 0;
    v98[3] = 0xE000000000000000;
    MEMORY[0x21CECC330](0x72206E6565736E55, 0xED0000206F697461);
    sub_219BF5CB4();
    MEMORY[0x21CECC330](0xD00000000000002DLL, 0x8000000219D42EF0);
    sub_219BF5CB4();
    v72 = v98[3];
    *v71 = v98[2];
    v71[1] = v72;
    (*(*(v69 - 8) + 104))(v71, *MEMORY[0x277D323D8], v69);
LABEL_86:
    swift_willThrow();

    v74 = v0[1];

    return v74();
  }

  if (v94)
  {
    v76 = sub_219BF7214();
  }

  else
  {
    v76 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v76)
  {
    v104 = MEMORY[0x277D84F90];
    result = sub_218C34B28(0, v76 & ~(v76 >> 63), 0);
    if (v76 < 0)
    {
      __break(1u);
      return result;
    }

    v77 = 0;
    v78 = v98[13];
    v79 = v76;
    do
    {
      if ((v97 & 0xC000000000000001) != 0)
      {
        v80 = MEMORY[0x21CECE0F0](v77, v97);
      }

      else
      {
        v80 = *(v97 + 8 * v77 + 32);
        swift_unknownObjectRetain();
      }

      v81 = [v80 scoreProfile];
      sub_219BEE6C4();
      v83 = *(v104 + 16);
      v82 = *(v104 + 24);
      if (v83 >= v82 >> 1)
      {
        sub_218C34B28((v82 > 1), v83 + 1, 1);
      }

      v84 = v98[14];
      v85 = v98[12];
      ++v77;
      *(v104 + 16) = v83 + 1;
      (*(v78 + 32))(v104 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v83, v84, v85);
    }

    while (v79 != v77);
  }

  sub_219BEF864();
  v86 = sub_219BEF854();

  v87 = v98[1];

  return v87(v61, v86);
}

uint64_t sub_2199B1694()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2199B1720(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = MEMORY[0x277D83D88];
  sub_2186D8F44(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v3[5] = swift_task_alloc();
  sub_2186D8F44(0, &qword_280E90150, MEMORY[0x277D33EC8], v4);
  v3[6] = swift_task_alloc();
  sub_2186D8F44(0, &unk_280E91A10, sub_2189AE994, v4);
  v3[7] = swift_task_alloc();
  v5 = sub_219BF2AB4();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_219BF2034();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  sub_2186D8F44(0, &unk_280E8FF30, sub_218A42400, v4);
  v3[14] = swift_task_alloc();
  sub_2186D8F44(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v4);
  v3[15] = swift_task_alloc();
  v7 = sub_219BDBD64();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  type metadata accessor for TrendingTodayFeedGroupConfigData(0);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v8 = sub_219BF1934();
  v3[21] = v8;
  v3[22] = *(v8 - 8);
  v3[23] = swift_task_alloc();
  v9 = sub_219BF3C84();
  v3[24] = v9;
  v3[25] = *(v9 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v10 = sub_219BF3E84();
  v3[28] = v10;
  v3[29] = *(v10 - 8);
  v3[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2199B1B84, 0, 0);
}

uint64_t sub_2199B1B84()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v66 = MEMORY[0x277D84F90];
    v4 = sub_218C34A88(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return MEMORY[0x2821921B8](v4, v5, v6, v7, v8);
    }

    v9 = *(v0 + 200);
    if ((v1 & 0xC000000000000001) != 0)
    {
      v10 = 0;
      v11 = *MEMORY[0x277D34128];
      do
      {
        v12 = *(v0 + 216);
        v13 = *(v0 + 192);
        *v12 = MEMORY[0x21CECE0F0](v10, *(v0 + 24));
        (*(v9 + 104))(v12, v11, v13);
        v15 = *(v66 + 16);
        v14 = *(v66 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_218C34A88((v14 > 1), v15 + 1, 1);
        }

        v16 = *(v0 + 216);
        v17 = *(v0 + 192);
        ++v10;
        *(v66 + 16) = v15 + 1;
        (*(v9 + 32))(v66 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, v16, v17);
      }

      while (v2 != v10);
    }

    else
    {
      v18 = (*(v0 + 24) + 32);
      v63 = *(v9 + 104);
      do
      {
        **(v0 + 208) = *v18;
        v63();
        v20 = *(v66 + 16);
        v19 = *(v66 + 24);
        swift_unknownObjectRetain();
        if (v20 >= v19 >> 1)
        {
          sub_218C34A88((v19 > 1), v20 + 1, 1);
        }

        v21 = *(v0 + 208);
        v22 = *(v0 + 192);
        *(v66 + 16) = v20 + 1;
        (*(v9 + 32))(v66 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v20, v21, v22);
        ++v18;
        --v2;
      }

      while (v2);
    }

    v3 = MEMORY[0x277D84F90];
  }

  v53 = *(v0 + 240);
  v54 = *(v0 + 232);
  v55 = *(v0 + 224);
  v64 = *(v0 + 168);
  v65 = *(v0 + 176);
  v23 = *(v0 + 144);
  v24 = *(v0 + 152);
  v48 = *(v0 + 136);
  v49 = *(v0 + 128);
  v50 = *(v0 + 160);
  v51 = *(v0 + 120);
  v52 = *(v0 + 112);
  v58 = *(v0 + 56);
  v59 = *(v0 + 48);
  v25 = *(v0 + 32);
  v60 = *(v0 + 40);
  sub_218F0B984(v3);
  sub_218F0BA7C(v3);
  sub_218F0BB90(v3);
  sub_219BF3E74();
  v56 = v25;
  v57 = type metadata accessor for TrendingTodayFeedGroupEmitter(0);
  v26 = (v25 + *(v57 + 24));
  v61 = v26[4];
  v62 = v26[3];
  __swift_project_boxed_opaque_existential_1(v26, v62);
  sub_2186DF784(0);
  sub_219BEDD14();
  sub_219BEDD14();
  v27 = sub_219BF1704();
  v29 = v28;
  v30 = *(v65 + 8);
  *(v0 + 248) = v30;
  *(v0 + 256) = (v65 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v30(v24, v64);
  MEMORY[0x21CECC330](v27, v29);

  MEMORY[0x21CECC330](45, 0xE100000000000000);
  sub_219BDBD54();
  v31 = sub_219BDBD44();
  v33 = v32;
  (*(v48 + 8))(v23, v49);
  MEMORY[0x21CECC330](v31, v33);

  v34 = sub_219BEC004();
  v35 = *(*(v34 - 8) + 56);
  v35(v51, 1, 1, v34);
  sub_218A42400(0);
  (*(*(v36 - 8) + 56))(v52, 1, 1, v36);
  sub_219BF1764();

  sub_2199B38F4(v52, &unk_280E8FF30, sub_218A42400);
  sub_2199B38F4(v51, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  v30(v50, v64);
  sub_2186D8F44(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v37 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_219C09BA0;
  (*(v54 + 16))(v38 + v37, v53, v55);
  v35(v51, 1, 1, v34);
  sub_219A95188(v3);
  sub_219A95188(v3);
  sub_219A951A0(v3);
  sub_219A951B8(v3);
  sub_219A952CC(v3);
  sub_219A952E4(v3);
  sub_219A953F8(v3);
  sub_219BF2024();
  v39 = *(v57 + 20);
  sub_2189AE994(0);
  v41 = v40;
  v42 = *(v40 - 8);
  (*(v42 + 16))(v58, v56 + v39, v40);
  (*(v42 + 56))(v58, 0, 1, v41);
  v43 = sub_219BF35D4();
  (*(*(v43 - 8) + 56))(v59, 1, 1, v43);
  *(v0 + 288) = 3;
  sub_2199B3874(0, &qword_280E90070, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v44 = sub_219BF2774();
  (*(*(v44 - 8) + 56))(v60, 1, 1, v44);
  v45 = qword_280E8D7A0;
  *MEMORY[0x277D30BC8];
  if (v45 != -1)
  {
    swift_once();
  }

  qword_280F616D8;
  sub_219BF2A84();
  v46 = swift_task_alloc();
  *(v0 + 264) = v46;
  *v46 = v0;
  v46[1] = sub_2199B2498;
  v5 = *(v0 + 104);
  v6 = *(v0 + 80);
  v4 = *(v0 + 184);
  v8 = v61;
  v7 = v62;

  return MEMORY[0x2821921B8](v4, v5, v6, v7, v8);
}

uint64_t sub_2199B2498(uint64_t a1)
{
  v3 = *v2;
  v3[34] = v1;

  v15 = v3[31];
  v4 = v3[23];
  v5 = v3[21];
  v6 = v3[13];
  v7 = v3[12];
  v8 = v3[11];
  v9 = v3[10];
  v10 = v3[9];
  v11 = v3[8];
  if (v1)
  {
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v15(v4, v5);
    v12 = sub_2199B2854;
  }

  else
  {
    v3[35] = a1;
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v15(v4, v5);
    v12 = sub_2199B2718;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_2199B2718()
{
  (*(v0[29] + 8))(v0[30], v0[28]);

  v1 = v0[1];
  v2 = v0[35];

  return v1(v2);
}

uint64_t sub_2199B2854()
{
  (*(v0[29] + 8))(v0[30], v0[28]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2199B298C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_2186D8F44(0, qword_280EDB700, type metadata accessor for TodayFeedGroup, MEMORY[0x277D83D88]);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for TodayFeedGroup(0);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2199B2AAC, 0, 0);
}

uint64_t sub_2199B2AAC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_2199B3874(0, &qword_280E91120, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D32AB8]);
  v5 = v4;
  sub_219BEFDA4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2199B38F4(*(v0 + 48), qword_280EDB700, type metadata accessor for TodayFeedGroup);
  }

  else
  {
    sub_2199B3974(*(v0 + 48), *(v0 + 72), type metadata accessor for TodayFeedGroup);
    sub_219BEF164();
    v8 = *(v0 + 72);
    v10 = sub_21899D954(*(v0 + 16));

    sub_2199B3B98(v8, type metadata accessor for TodayFeedGroup);
    if (v10)
    {
      sub_219034698(*(v0 + 40), *(v0 + 24));
      v6 = 0;
      goto LABEL_4;
    }
  }

  v6 = 1;
LABEL_4:
  (*(*(v5 - 8) + 56))(*(v0 + 24), v6, 1, v5);

  v7 = *(v0 + 8);

  return v7();
}

BOOL sub_2199B2CD4(id *a1, uint64_t a2)
{
  v3 = [*a1 articleID];
  v4 = sub_219BF5414();
  v6 = v5;

  LOBYTE(a2) = sub_2188537B8(v4, v6, a2);

  return (a2 & 1) == 0;
}

void sub_2199B2D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v24 = a1;
  v5 = type metadata accessor for TrendingTodayFeedGroupEmitter(0);
  v6 = v5 - 8;
  v25 = *(v5 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v5);
  sub_219457FAC(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v22 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x277D30F70]) init];
  [v12 setQualityOfService_];
  v13 = v12;
  [v13 setRelativePriority_];
  [v13 setPurpose_];

  [v13 setContext_];
  [v13 setConfiguration_];
  v14 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v15 = v9;
  (*(v10 + 16))(&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v9);
  v16 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2199B3B30(a3, v16, type metadata accessor for TrendingTodayFeedGroupEmitter);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = (v11 + *(v25 + 80) + v17) & ~*(v25 + 80);
  v19 = (v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v10 + 32))(v20 + v17, v22, v15);
  sub_2199B3974(v16, v20 + v18, type metadata accessor for TrendingTodayFeedGroupEmitter);
  *(v20 + v19) = v14;
  *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
  aBlock[4] = sub_2199B39DC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218E29720;
  aBlock[3] = &block_descriptor_196;
  v21 = _Block_copy(aBlock);

  [v13 setFetchCompletionHandler_];
  _Block_release(v21);
  [v13 start];
}

void sub_2199B30D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v5 = a1;
    sub_219457FAC(0);
    sub_219BF5B54();
  }

  else
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v9 = [Strong trendingHeadlines];

    if (v9)
    {
      sub_218731D50();
      sub_219BF5924();

      v10 = NewsCoreUserDefaults();
      v11 = [v10 BOOLForKey_];

      if (v11)
      {
        v12 = 151870;
      }

      else
      {
        v12 = 135486;
      }

      v13 = objc_opt_self();
      v14 = [v13 transformationWithFilterOptions:v12 configuration:*(a5 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig) context:*(a3 + *(type metadata accessor for TrendingTodayFeedGroupEmitter(0) + 28))];
      v15 = sub_219BF5904();
      v16 = [v14 transformHeadlines_];

      sub_219BF5924();

      sub_219457FAC(0);
      sub_219BF5B64();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2199B3298(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_2199AFED4(a1, a2);
}

uint64_t sub_2199B3340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2187608D4;

  return sub_2199B298C(a1, a2, a3);
}

uint64_t sub_2199B33F0@<X0>(uint64_t a1@<X8>)
{
  sub_2186DF784(0);
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for TodayFeedGroupConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2199B3470@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for TrendingTodayFeedGroupKnobs(0);
  a2[4] = sub_2199B3AE8(&qword_280EB60B0, type metadata accessor for TrendingTodayFeedGroupKnobs, &unk_219CC2214);
  a2[5] = sub_2199B3AE8(&qword_280EB60B8, type metadata accessor for TrendingTodayFeedGroupKnobs, &unk_219CC223C);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_2199B3B30(v2 + v4, boxed_opaque_existential_1, type metadata accessor for TrendingTodayFeedGroupKnobs);
}

uint64_t sub_2199B3538()
{
  sub_2186DF784(0);

  return sub_219BEDCA4();
}

uint64_t sub_2199B3564@<X0>(uint64_t *a2@<X8>)
{
  sub_2186D8F44(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186DF784(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2199B3B98(inited + 32, sub_2188317B0);
  sub_2186D8F44(0, &qword_280EE78C0, type metadata accessor for TrendingTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a2[3] = v6;
  a2[4] = sub_2199B3BF8();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_2199B36E8(uint64_t a1)
{
  sub_2199B3AE8(&qword_280EADDF8, type metadata accessor for TrendingTodayFeedGroupEmitter, &unk_219CBB948);

  return sub_219BE2324();
}

void sub_2199B3874(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_2199B38F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186D8F44(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2199B3974(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2199B39DC(void *a1)
{
  sub_219457FAC(0);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = *(type metadata accessor for TrendingTodayFeedGroupEmitter(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v8);
  v10 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_2199B30D8(a1, v1 + v4, v1 + v7, v9, v10);
}

uint64_t sub_2199B3AE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2199B3B30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2199B3B98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2199B3BF8()
{
  result = qword_280EE78C8;
  if (!qword_280EE78C8)
  {
    sub_2186D8F44(255, &qword_280EE78C0, type metadata accessor for TrendingTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE78C8);
  }

  return result;
}

uint64_t sub_2199B3CA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v42 = sub_219BF1214();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E26F88(0);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = sub_219BF1934();
  v41 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v44 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2199B44BC(0, &qword_280E8CAD8, MEMORY[0x277D844C8]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199B4468();
  v16 = v45;
  sub_219BF7B34();
  if (v16)
  {
    v23 = a1;
  }

  else
  {
    v45 = a1;
    v17 = v13;
    v18 = v42;
    v19 = v43;
    v47 = 0;
    sub_218E2735C(&qword_280E90808, MEMORY[0x277D33478], MEMORY[0x277D33488]);
    v20 = v15;
    sub_219BF7734();
    v46 = 1;
    sub_218E2735C(&qword_280E90948, MEMORY[0x277D33218], MEMORY[0x277D33228]);
    v21 = v8;
    v22 = v18;
    sub_219BF76E4();
    v37 = v20;
    v25 = v19;
    v26 = v44;
    (*(v41 + 16))(v25, v44, v9);
    v36 = v9;
    v27 = v38;
    sub_218E2712C(v21, v38);
    v28 = *(v40 + 48);
    if (v28(v27, 1, v22) == 1)
    {
      sub_219BF1204();
      sub_218E27190(v21);
      (*(v41 + 8))(v26, v36);
      v29 = v28(v27, 1, v22);
      v30 = v39;
      v31 = v40;
      v32 = v29 == 1;
      v33 = v27;
      v34 = v45;
      if (!v32)
      {
        sub_218E27190(v33);
      }
    }

    else
    {
      sub_218E27190(v21);
      (*(v41 + 8))(v26, v36);
      v30 = v39;
      v31 = v40;
      (*(v40 + 32))(v39, v27, v22);
      v34 = v45;
    }

    v35 = type metadata accessor for ChannelTodayFeedGroupConfigData(0);
    (*(v31 + 32))(v43 + *(v35 + 20), v30, v22);
    (*(v17 + 8))(v37, v12);
    v23 = v34;
  }

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_2199B41B0(void *a1, __n128 a2)
{
  sub_2199B44BC(0, &qword_280E8C3A0, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199B4468();
  sub_219BF7B44();
  v10[15] = 0;
  sub_219BF1934();
  sub_218E2735C(&qword_280E90810, MEMORY[0x277D33478], MEMORY[0x277D33480]);
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for ChannelTodayFeedGroupConfigData(0);
    v10[14] = 1;
    sub_219BF1214();
    sub_218E2735C(&qword_280E90950, MEMORY[0x277D33218], MEMORY[0x277D33220]);
    sub_219BF7834();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2199B43C0(uint64_t a1)
{
  v2 = sub_2199B4468();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2199B43FC(uint64_t a1)
{
  v2 = sub_2199B4468();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2199B4468()
{
  result = qword_280EA9AB8[0];
  if (!qword_280EA9AB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA9AB8);
  }

  return result;
}

void sub_2199B44BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2199B4468();
    v7 = a3(a1, &type metadata for ChannelTodayFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2199B4534()
{
  result = qword_27CC21CC8;
  if (!qword_27CC21CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21CC8);
  }

  return result;
}

unint64_t sub_2199B458C()
{
  result = qword_280EA9AA8;
  if (!qword_280EA9AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA9AA8);
  }

  return result;
}

unint64_t sub_2199B45E4()
{
  result = qword_280EA9AB0;
  if (!qword_280EA9AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA9AB0);
  }

  return result;
}

uint64_t sub_2199B4660@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v25 = a2;
  v4 = sub_219BF1934();
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2199B4D58(0, &qword_27CC21CD0, MEMORY[0x277D844C8]);
  v27 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199B4D04();
  sub_219BF7B34();
  if (!v2)
  {
    v11 = v8;
    v30 = 0;
    v12 = v27;
    v13 = sub_219BF76F4();
    v15 = v14;
    v24 = v13;
    v29 = 1;
    v22 = sub_219BF76F4();
    v23 = v16;
    v28 = 2;
    sub_218933D7C(&qword_280E90808, MEMORY[0x277D33488]);
    sub_219BF7734();
    (*(v11 + 8))(v10, v12);
    v18 = v6;
    v19 = v25;
    *v25 = v24;
    v19[1] = v15;
    v20 = v23;
    v19[2] = v22;
    v19[3] = v20;
    v21 = type metadata accessor for ChannelPickerTodayFeedGroupConfigData(0);
    (*(v26 + 32))(v19 + *(v21 + 24), v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2199B4970(void *a1, __n128 a2)
{
  sub_2199B4D58(0, &qword_27CC21CE0, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199B4D04();
  sub_219BF7B44();
  v10[15] = 0;
  sub_219BF77F4();
  if (!v2)
  {
    v10[14] = 1;
    sub_219BF77F4();
    type metadata accessor for ChannelPickerTodayFeedGroupConfigData(0);
    v10[13] = 2;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810, MEMORY[0x277D33480]);
    sub_219BF7834();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2199B4B4C()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x746E65746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65707974627573;
  }
}

uint64_t sub_2199B4BAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2199B4ED4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2199B4BD4(uint64_t a1)
{
  v2 = sub_2199B4D04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2199B4C10(uint64_t a1)
{
  v2 = sub_2199B4D04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2199B4C7C(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_219BF78F4(), result = 0, (v5 & 1) != 0))
  {
    if (a1[2] == a2[2] && a1[3] == a2[3])
    {
      return 1;
    }

    else
    {

      return sub_219BF78F4();
    }
  }

  return result;
}

unint64_t sub_2199B4D04()
{
  result = qword_27CC21CD8;
  if (!qword_27CC21CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21CD8);
  }

  return result;
}

void sub_2199B4D58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2199B4D04();
    v7 = a3(a1, &type metadata for ChannelPickerTodayFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2199B4DD0()
{
  result = qword_27CC21CE8;
  if (!qword_27CC21CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21CE8);
  }

  return result;
}

unint64_t sub_2199B4E28()
{
  result = qword_27CC21CF0;
  if (!qword_27CC21CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21CF0);
  }

  return result;
}

unint64_t sub_2199B4E80()
{
  result = qword_27CC21CF8;
  if (!qword_27CC21CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21CF8);
  }

  return result;
}

uint64_t sub_2199B4ED4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65707974627573 && a2 == 0xE700000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219D42F20 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

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

uint64_t sub_2199B4FF4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for AudioTrackDetailsModule();
    v7 = swift_allocObject();
    result = sub_2186CB1F0(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &off_282A58BD0;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_2199B50A4()
{
  v0 = sub_219BE2DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186C709C(0, &unk_280EE5AC0, MEMORY[0x277D6D598], 1);
  sub_219BE2914();
  (*(v1 + 104))(v3, *MEMORY[0x277D6CF10], v0);
  sub_219BE19F4();

  (*(v1 + 8))(v3, v0);
  type metadata accessor for AudioTrackDetailsViewController(0);
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC21D00, &protocol descriptor for AudioTrackDetailsStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC21D08, &protocol descriptor for AudioTrackDetailsRouterType, 1);
  sub_219BE2914();
  type metadata accessor for AudioTrackDetailsRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC21D10, &protocol descriptor for AudioTrackDetailsEventHandlerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC21D18, &protocol descriptor for AudioTrackDetailsInteractorType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC21D20, &protocol descriptor for AudioTrackDetailsTrackerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC21D28, &protocol descriptor for AudioTrackDetailsDataManagerType, 0);
  sub_219BE2914();

  return result;
}

void *sub_2199B5420@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199B6C94();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7C04();
    swift_allocObject();
    sub_219BE7BF4();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE5010, MEMORY[0x277D6DB20], 1);
    result = sub_219BE1E34();
    if (v7)
    {
      v5 = sub_219BE58C4();
      swift_allocObject();
      result = sub_219BE58B4();
      v6 = MEMORY[0x277D6D2B0];
      a2[3] = v5;
      a2[4] = v6;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_2199B554C(void *a1)
{
  v2 = type metadata accessor for AudioFeedTrack(0);
  v61 = *(v2 - 8);
  v3 = *(v61 + 64);
  MEMORY[0x28223BE20](v2);
  sub_2187335C8(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC21D00, &protocol descriptor for AudioTrackDetailsStylerType, 1);
  result = sub_219BE1E34();
  if (!v76)
  {
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC21D10, &protocol descriptor for AudioTrackDetailsEventHandlerType, 0);
  result = sub_219BE1E34();
  v8 = v73;
  if (!v73)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v60 = v74;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE1E34();
  result = (*(v61 + 48))(v6, 1, v2);
  if (result == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187182D4(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v59 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDE124();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE89D0, MEMORY[0x277D302C8], 1);
  result = sub_219BE1E34();
  if (!v72)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE5AC0, MEMORY[0x277D6D598], 1);
  result = sub_219BE1DF4();
  if (!v70[3])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v58 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1DF4();
  if (!v69[3])
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v10 = __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
  v57 = &v56;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = *v13;
  v16 = type metadata accessor for AudioTrackDetailsStyler();
  v67 = v16;
  v17 = sub_218704108(&unk_27CC16890, type metadata accessor for AudioTrackDetailsStyler, &unk_219C47590);
  v68 = v17;
  v66[0] = v15;
  v18 = type metadata accessor for AudioTrackDetailsViewController(0);
  v19 = objc_allocWithZone(v18);
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
  v56 = &v56;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = (&v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = *v23;
  v65[3] = v16;
  v65[4] = v17;
  v65[0] = v25;
  v26 = OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_trackView;
  type metadata accessor for AudioTrackDetailsView();
  v27 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  *&v19[v26] = [v27 init];
  sub_218718690(v65, &v19[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_styler]);
  v28 = &v19[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_eventHandler];
  v29 = v60;
  *v28 = v8;
  *(v28 + 1) = v29;
  sub_218C1620C(v6, &v19[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_track]);
  *&v19[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_playbackState] = v9;
  sub_218718690(v71, &v19[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_listeningProgressManager]);
  sub_218718690(v70, &v19[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_logoCache]);
  sub_218718690(v69, &v19[OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_artworkCache]);
  v64.receiver = v19;
  v64.super_class = v18;
  swift_unknownObjectRetain();

  v30 = objc_msgSendSuper2(&v64, sel_initWithNibName_bundle_, 0, 0);
  *(*(v30 + OBJC_IVAR____TtC7NewsUI231AudioTrackDetailsViewController_eventHandler) + 24) = &off_282A5FD90;
  swift_unknownObjectWeakAssign();
  if ((sub_219BED0C4() & 1) == 0)
  {
    v31 = objc_opt_self();
    v32 = [v31 mainScreen];
    [v32 bounds];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;

    v77.origin.x = v34;
    v77.origin.y = v36;
    v77.size.width = v38;
    v77.size.height = v40;
    v41 = CGRectGetWidth(v77) + -32.0;
    v42 = [v31 mainScreen];
    [v42 bounds];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;

    v78.origin.x = v44;
    v78.origin.y = v46;
    v78.size.width = v48;
    v78.size.height = v50;
    [v30 setPreferredContentSize_];
  }

  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = v59;
  sub_218C1620C(v6, v59);
  v53 = (*(v61 + 80) + 24) & ~*(v61 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = v51;
  sub_218C162E4(v52, v54 + v53);
  v55 = v30;
  sub_219BE2104();

  __swift_project_boxed_opaque_existential_1(v62, v63);
  sub_219BE1A04();

  __swift_destroy_boxed_opaque_existential_1(v62);
  __swift_project_boxed_opaque_existential_1(v71, v72);
  sub_219BDECB4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_219BE20F4();

  __swift_project_boxed_opaque_existential_1(v62, v63);
  sub_219BE1A04();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v69);
  __swift_destroy_boxed_opaque_existential_1(v70);
  __swift_destroy_boxed_opaque_existential_1(v65);
  sub_218EB8BCC(v6);
  __swift_destroy_boxed_opaque_existential_1(v62);
  __swift_destroy_boxed_opaque_existential_1(v71);
  __swift_destroy_boxed_opaque_existential_1(v66);
  __swift_destroy_boxed_opaque_existential_1(v75);
  return v55;
}

void *sub_2199B5E38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
  result = sub_219BE1E34();
  if (v24)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_27CC21D30, MEMORY[0x277D339A0], 1);
    result = sub_219BE1E34();
    if (v22[3])
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
      v6 = MEMORY[0x28223BE20](v5);
      v8 = (&v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = *v8;
      v11 = type metadata accessor for BaseStyler(0);
      v21[3] = v11;
      v21[4] = sub_218704108(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
      v21[0] = v10;
      v12 = type metadata accessor for AudioTrackDetailsStyler();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v21, v11);
      v15 = MEMORY[0x28223BE20](v14);
      v17 = (&v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v18 + 16))(v17, v15);
      v19 = sub_2199B6734(*v17, v22, v13);
      __swift_destroy_boxed_opaque_existential_1(v21);
      __swift_destroy_boxed_opaque_existential_1(v23);
      a2[3] = v12;
      result = sub_218704108(&unk_27CC16890, type metadata accessor for AudioTrackDetailsStyler, &unk_219C47590);
      a2[4] = result;
      *a2 = v19;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2199B6124@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186CF94C(0);
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for AudioTrackDetailsRouter();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      result = sub_2186CB1F0(v9, v8 + 24);
      *(v8 + 64) = v5;
      *(v8 + 72) = v6;
      a2[3] = v7;
      a2[4] = &off_282A384C0;
      *a2 = v8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2199B6220(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioTrackDetailsViewController(0);
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

void *sub_2199B62A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC21D18, &protocol descriptor for AudioTrackDetailsInteractorType, 0);
  result = sub_219BE1E34();
  v5 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC21D08, &protocol descriptor for AudioTrackDetailsRouterType, 1);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC21D20, &protocol descriptor for AudioTrackDetailsTrackerType, 1);
  result = sub_219BE1E34();
  if (v19)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v8 = MEMORY[0x28223BE20](v7);
    v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    v13 = MEMORY[0x28223BE20](v12);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = sub_2199B69AC(v5, v6, *v10, *v15);
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v17;
    a2[1] = &off_282A49AD0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_2199B6548@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC21D28, &protocol descriptor for AudioTrackDetailsDataManagerType, 0);
  result = sub_219BE1E34();
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
    result = sub_219BE1E34();
    if (v6)
    {
      type metadata accessor for AudioTrackDetailsInteractor();
      v5 = swift_allocObject();
      v5[3] = 0;
      result = swift_unknownObjectWeakInit();
      v5[4] = v8;
      v5[5] = v9;
      v5[6] = v6;
      v5[7] = v7;
      *a2 = v5;
      a2[1] = &off_282A77150;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2199B666C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for AudioTrackDetailsTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282A808D0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2199B66F4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AudioTrackDetailsDataManager();
  result = swift_allocObject();
  *a1 = result;
  a1[1] = &off_282A893C8;
  return result;
}

uint64_t sub_2199B6734(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = sub_219BDCAF4();
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF1674();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[3] = type metadata accessor for BaseStyler(0);
  v19[4] = sub_218704108(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
  v19[0] = a1;
  v16 = a3;
  sub_218718690(v19, a3 + 16);
  sub_218718690(a2, a3 + 56);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  (*(v10 + 104))(v12, *MEMORY[0x277D33440], v9);
  v13 = v17;
  (*(v6 + 104))(v8, *MEMORY[0x277D6D198], v17);
  sub_219BF2644();
  (*(v6 + 8))(v8, v13);
  (*(v10 + 8))(v12, v9);
  __swift_destroy_boxed_opaque_existential_1(v19);
  v14 = v16;
  sub_2186CB1F0(&v18, v16 + 96);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v14;
}

void *sub_2199B69AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for AudioTrackDetailsRouter();
  v34[3] = v9;
  v34[4] = &off_282A384C0;
  v34[0] = a3;
  v32 = v8;
  v33 = &off_282A808D0;
  v31[0] = a4;
  type metadata accessor for AudioTrackDetailsEventHandler();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v34, v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v12);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v14;
  v22 = *v19;
  v29 = v9;
  v30 = &off_282A384C0;
  v27 = &off_282A808D0;
  *&v28 = v21;
  v26 = v8;
  *&v25 = v22;
  v10[3] = 0;
  swift_unknownObjectWeakInit();
  v10[4] = a1;
  v10[5] = a2;
  sub_2186CB1F0(&v28, (v10 + 6));
  sub_2186CB1F0(&v25, (v10 + 11));
  *(a1 + 24) = &off_282A49AC8;
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v10;
}

void sub_2199B6C08(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AudioFeedTrack(0) - 8);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80)));

  sub_219130964(a1, a2, v6, v7);
}

unint64_t sub_2199B6C94()
{
  result = qword_280EE4FA0;
  if (!qword_280EE4FA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EE4FA0);
  }

  return result;
}

uint64_t sub_2199B6CF8(uint64_t a1, uint64_t a2, char *a3, char *a4)
{
  v50 = a3;
  v51 = a4;
  v55 = a1;
  v5 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953870(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v47 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_219BEF2A4();
  v54 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v49 = (&v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = &v44 - v13;
  v15 = sub_219BEF974();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MagazineFeedLayoutModel(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3ED68(0);
  sub_219BE75E4();
  v52 = v16;
  v53 = v15;
  (*(v16 + 32))(v18, v21, v15);
  v46 = *(v4 + 80);
  swift_getObjectType();
  v22 = swift_allocObject();
  v44 = v4;
  swift_weakInit();
  v23 = v47;
  (*(v9 + 16))(v47, v55, v8);
  v24 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  v26 = v8;
  v27 = v54;
  (*(v9 + 32))(v25 + v24, v23, v26);
  v28 = v48;

  v50 = v18;
  sub_219BEECF4();

  v29 = v49;

  v30 = *(v27 + 16);
  v51 = v14;
  v30(v29, v14, v28);
  if ((*(v27 + 88))(v29, v28) == *MEMORY[0x277D32528])
  {
    (*(v27 + 96))(v29, v28);
    v31 = *v29;
    v49 = sub_219BE7314();
    v32 = *(v44 + 96);
    ObjectType = swift_getObjectType();
    v34 = v45;
    sub_219BE5FC4();
    v35 = sub_219310654();
    v37 = v36;
    sub_2199B76D4(v34);
    (*(v32 + 32))(v35, v37, ObjectType, v32);

    sub_2187EEC28(qword_280EDE170, type metadata accessor for IssueDownload, &protocol conformance descriptor for IssueDownload);
    v38 = v49;
    sub_219BF19C4();

    sub_219BE5FC4();
    sub_2199B76D4(v34);
    v39 = sub_219BE7314();
    v40 = sub_219BF19B4();

    [v40 setHidden_];
    (*(v54 + 8))(v51, v28);
    (*(v52 + 8))(v50, v53);
  }

  else
  {
    v41 = v51;
    v31 = sub_219BEF294();
    v42 = *(v27 + 8);
    v42(v41, v28);
    (*(v52 + 8))(v50, v53);
    v42(v29, v28);
  }

  return v31;
}

double sub_2199B72B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_219BE8C14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF0894();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEDF44();
  if ((*(v9 + 88))(v11, v8) == *MEMORY[0x277D32F88])
  {
    (*(v9 + 96))(v11, v8);
    v12 = sub_219BF13B4();
    v13 = *(v12 - 8);
    if ((*(v13 + 88))(v11, v12) == *MEMORY[0x277D33338])
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v16 = *(Strong + OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_eventHandler);
          sub_219BE8C04();
          sub_218E6DFC0();
          v17 = *(v16 + 40);
          ObjectType = swift_getObjectType();
          (*(v17 + 72))(a3, 1, v7, ObjectType, v17);

          (*(v5 + 8))(v7, v4);
          swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }

    else
    {
      (*(v13 + 8))(v11, v12);
    }
  }

  else
  {
    (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_2199B7630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char *a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_2199B6CF8(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

double sub_2199B7660(uint64_t a1)
{
  sub_218953870(0);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80));

  return sub_2199B72B8(a1, v4, v5);
}

uint64_t sub_2199B76D4(uint64_t a1)
{
  v2 = type metadata accessor for MagazineFeedModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UIApplicationState.description.getter(uint64_t a1)
{
  v1 = 0x6576697463616E69;
  v2 = 0x6E776F6E6B6E75;
  if (a1 == 2)
  {
    v2 = 0x756F72676B636162;
  }

  if (a1 != 1)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x657669746361;
  }
}

uint64_t sub_2199B77A8()
{
  v1 = *v0;
  v2 = 0x6576697463616E69;
  v3 = 0x6E776F6E6B6E75;
  if (*v0 == 2)
  {
    v3 = 0x756F72676B636162;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x657669746361;
  }
}

uint64_t sub_2199B7A54(uint64_t a1)
{
  sub_2186DCF58(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDBD34();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187D96F4(a1, v5);
  v10 = *(v7 + 48);
  if (v10(v5, 1, v6) == 1)
  {
    sub_219BDBBB4();
    sub_2189DD39C(a1);
    if (v10(v5, 1, v6) != 1)
    {
      sub_2189DD39C(v5);
    }
  }

  else
  {
    sub_2189DD39C(a1);
    (*(v7 + 32))(v9, v5, v6);
  }

  v11 = OBJC_IVAR____TtC7NewsUI212MockHeadline__date;
  swift_beginAccess();
  (*(v7 + 40))(v1 + v11, v9, v6);
  return swift_endAccess();
}

id sub_2199B7C68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockHeadline(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MockHeadline(uint64_t a1)
{
  result = qword_27CC21D38;
  if (!qword_27CC21D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2199B7D60(uint64_t a1)
{
  result = sub_219BDBD34();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_2199B7DF8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = off_282A74450[0];
        type metadata accessor for MyMagazinesViewController();
        v5(v4);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2199B7ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v21 = a3;
  v5 = sub_219BED174();
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BED1D4();
  v8 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2199BEAFC(&qword_27CC21F68, type metadata accessor for MyMagazinesBlueprintModifierFactory, &unk_219C81D60);
  v12 = *(v11 + 40);
  v13 = type metadata accessor for MyMagazinesBlueprintModifierFactory();
  v14 = v12(a1, v13, v11);
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v15 = sub_219BF66A4();
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = v14;
  v17 = v21;
  v16[4] = v20;
  v16[5] = v17;
  aBlock[4] = sub_2199BEAE4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_197;
  v18 = _Block_copy(aBlock);

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2199BEAFC(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_21874EAA0(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  MEMORY[0x21CECD460](0, v10, v7, v18);
  _Block_release(v18);

  (*(v23 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v22);
}

double sub_2199B8250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a3;
  v7[4] = a4;
  sub_2194BA890(0);
  sub_2199BEAFC(&qword_27CC1FE38, sub_2194BA890, MEMORY[0x277D6D890]);

  sub_219BE6EF4();

  return result;
}

double sub_2199B8368(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  a3();
  if (Strong)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        v7 = v6;
        v8 = swift_allocObject();
        *(v8 + 16) = v7;
        v9 = swift_allocObject();
        v9[2] = v7;
        v9[3] = sub_21982D378;
        v9[4] = v8;
        swift_unknownObjectRetain_n();

        sub_219BE3494();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

double sub_2199B84A4()
{
  type metadata accessor for MyMagazinesViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC21D50, &protocol descriptor for MyMagazinesStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC21D58, &protocol descriptor for MyMagazinesRouterType, 1);
  sub_219BE2914();
  type metadata accessor for MyMagazinesRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC21D60, &protocol descriptor for MyMagazinesEventHandlerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC21D68, &protocol descriptor for MyMagazinesInteractorType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &unk_27CC21D70, &protocol descriptor for MyMagazinesDataManagerType, 0);
  sub_219BE2914();

  sub_2194CF1EC(0);
  sub_219BE2904();

  type metadata accessor for MyMagazinesBlueprintModifierFactory();
  sub_219BE2904();

  sub_2199BD8B8(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2199BE064(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2199BE258(0);
  sub_219BE2904();

  sub_219BE9C54();
  sub_219BE2904();

  sub_2199BD9A4(0);
  sub_219BE2904();

  sub_2199BE1A0(0);
  sub_219BE2904();

  sub_2194CF394(0);
  sub_219BE2904();

  type metadata accessor for MyMagazinesBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_2199BE2EC(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C6148(0, &qword_280E8E4C0, 0x277D752A0);
  sub_219BE2904();

  sub_2199BDAAC(0);
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_21879AAE0(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  sub_219BE2904();

  sub_2199BDC28(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2199BDDF8(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2199BDF78(0);
  sub_219BE2904();

  type metadata accessor for MyMagazinesBlueprintViewCellProvider();
  sub_219BE2904();

  type metadata accessor for MyMagazinesBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();

  sub_2199BE428(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2199BE4BC(0);
  sub_219BE2904();

  sub_219BE70E4();
  sub_219BE2904();

  sub_2199BE550(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE9C94();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80, MEMORY[0x277D6EA40], 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC21E78, &protocol descriptor for MyMagazinesSectionHeaderViewRendererType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC21E80, &protocol descriptor for MyMagazinesSectionHeaderViewStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC21E88, &protocol descriptor for MyMagazinesSectionHeaderViewLayoutAttributesFactoryType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC21E90, &protocol descriptor for MyMagazinesSectionHeaderSeparatorViewRendererType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC21E98, &protocol descriptor for MyMagazinesSectionHeaderSeparatorViewStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC21EA0, &protocol descriptor for MyMagazinesSectionHeaderSeparatorViewLayoutAttributesFactoryType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC21EA8, &protocol descriptor for MyMagazinesTrackerType, 1);
  sub_219BE2914();

  return result;
}

char *sub_2199B9014(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC21D50, &protocol descriptor for MyMagazinesStylerType, 1);
  result = sub_219BE1E34();
  if (!v40)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC21D60, &protocol descriptor for MyMagazinesEventHandlerType, 0);
  result = sub_219BE1E34();
  v3 = v37;
  if (!v37)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = v38;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199BE2EC(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194CF394(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDA0, MEMORY[0x277D34548], 1);
  result = sub_219BE1E34();
  if (v36[3])
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
    v30[2] = v30;
    v8 = MEMORY[0x28223BE20](v7);
    v10 = (v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = *v10;
    v13 = type metadata accessor for MyMagazinesStyler();
    v34 = v13;
    v35 = &off_282A86750;
    v33[0] = v12;
    v14 = type metadata accessor for MyMagazinesViewController();
    v15 = objc_allocWithZone(v14);
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
    v30[1] = v30;
    v17 = MEMORY[0x28223BE20](v16);
    v19 = (v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19, v17);
    v21 = *v19;
    v32[3] = v13;
    v32[4] = &off_282A86750;
    v32[0] = v21;
    v15[OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_isBeingUsedAsPlugin] = 0;
    *&v15[OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_pluggableDelegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v22 = &v15[OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_lastComputedSize];
    *v22 = 0;
    v22[1] = 0;
    v23 = OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_eventManager;
    sub_21876A460(0, &qword_27CC1B1E8, sub_2194B6B84, &type metadata for MyMagazinesViewController.Event, MEMORY[0x277D6CAA0]);
    swift_allocObject();
    *&v15[v23] = sub_219BE1D34();
    *&v15[OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_blueprintHorizontalShimView] = 0;
    sub_218718690(v32, &v15[OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_styler]);
    v24 = &v15[OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_eventHandler];
    *v24 = v3;
    v24[1] = v4;
    *&v15[OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_blueprintViewController] = v5;
    *&v15[OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_blueprintLayoutProvider] = v6;
    sub_218718690(v36, &v15[OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_offlineAlertControllerFactory]);
    v31.receiver = v15;
    v31.super_class = v14;
    swift_unknownObjectRetain();
    v25 = v5;

    v26 = objc_msgSendSuper2(&v31, sel_initWithNibName_bundle_, 0, 0);
    *(*(v26 + OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_eventHandler) + 24) = &off_282A74438;
    swift_unknownObjectWeakAssign();
    v27 = *(v26 + OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_blueprintViewController);
    v28 = v26;
    v29 = v27;
    sub_219BE8744();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v36);
    __swift_destroy_boxed_opaque_existential_1(v32);
    __swift_destroy_boxed_opaque_existential_1(v33);
    __swift_destroy_boxed_opaque_existential_1(v39);
    return v28;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2199B9548@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_218718690(a1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21876A460(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineMoreActionsFactory();
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for MyMagazinesRouter();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9[8] = v5;
    result = sub_2186CB1F0(v10, (v9 + 3));
    v9[9] = v6;
    v9[10] = v7;
    a2[3] = v8;
    a2[4] = &off_282A46460;
    *a2 = v9;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_2199B96C0(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MyMagazinesViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

void *sub_2199B9740@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC21D68, &protocol descriptor for MyMagazinesInteractorType, 0);
  result = sub_219BE1E34();
  v5 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC21D58, &protocol descriptor for MyMagazinesRouterType, 1);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC21EA8, &protocol descriptor for MyMagazinesTrackerType, 1);
  result = sub_219BE1E34();
  if (v19)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v8 = MEMORY[0x28223BE20](v7);
    v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    v13 = MEMORY[0x28223BE20](v12);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = sub_2199BEC3C(v5, v6, *v10, *v15);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v17;
    a2[1] = &off_282A42CC0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_2199B99F0(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_27CC21D70, &protocol descriptor for MyMagazinesDataManagerType, 0);
  sub_219BE1E34();
  v4 = v24;
  if (!v24)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199BD8B8(0);
  v6 = sub_219BE1E24();
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MyMagazinesBlueprintModifierFactory();
  v8 = sub_219BE1E24();
  if (!v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v8;
  v20 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC41D0, &protocol descriptor for OfflineIssueManagerType, 0);
  sub_219BE1E34();
  v10 = v22;
  if (!v22)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21876A460(0, &qword_280E90690, sub_2186F1660, &type metadata for MagazineFeedOfflineModel, MEMORY[0x277D33538]);
  v12 = sub_219BE1E24();
  if (v12)
  {
    v13 = v12;
    sub_2199BE8A4(0);
    v14 = swift_allocObject();
    v14[3] = 0;
    swift_unknownObjectWeakInit();
    v14[6] = v4;
    v14[7] = v5;
    v14[4] = v7;
    v14[5] = v9;
    v14[8] = v10;
    v14[9] = v11;
    v14[10] = v13;
    ObjectType = swift_getObjectType();
    v16 = *(v11 + 56);
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v17 = v13;
    v16(ObjectType, v11);
    swift_allocObject();
    swift_weakInit();

    v18 = sub_219BE2E54();
    sub_219BE21A4();

    __swift_destroy_boxed_opaque_existential_1(v21);
    *(v14[6] + 24) = &off_282A8B280;
    swift_unknownObjectWeakAssign();
    swift_allocObject();
    swift_weakInit();

    v19 = sub_219BF1AF4();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    *v20 = v14;
    v20[1] = &off_282A8B290;
    return;
  }

LABEL_11:
  __break(1u);
}

void *sub_2199B9D64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ECE3A0, &protocol descriptor for MyMagazinesStoreType, 1);
  result = sub_219BE1E34();
  if (v6)
  {
    type metadata accessor for MyMagazinesDataManager();
    v4 = swift_allocObject();
    *(v4 + 24) = 0;
    swift_unknownObjectWeakInit();
    result = sub_2186CB1F0(&v5, v4 + 32);
    *a2 = v4;
    a2[1] = &off_282A60100;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2199B9E4C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECA990, &protocol descriptor for IssueModelFactoryType, 1);
  result = sub_219BE1E34();
  if (!v24)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B7A520();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC41D0, &protocol descriptor for OfflineIssueManagerType, 0);
  result = sub_219BE1E34();
  v4 = v21;
  if (v21)
  {
    v5 = v22;
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    v7 = MEMORY[0x28223BE20](v6);
    v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v11 = *v9;
    v12 = type metadata accessor for IssueModelFactory();
    v20[3] = v12;
    v20[4] = &off_282A725A8;
    v20[0] = v11;
    type metadata accessor for MyMagazinesBlueprintModifierFactory();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v12);
    v15 = MEMORY[0x28223BE20](v14);
    v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = *v17;
    v13[5] = v12;
    v13[6] = &off_282A725A8;
    v13[2] = v19;
    v13[7] = v3;
    v13[8] = v4;
    v13[9] = v5;
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v23);
    return v13;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2199BA108(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194CF1EC(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2199BD9A4(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_2199BD8B8(0);
      swift_allocObject();
      return sub_219BE6EB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2199BA1EC(uint64_t a1, void *a2)
{
  sub_2199BE7C4(0);
  swift_allocObject();
  sub_219BE96E4();
  sub_2199BE7E4(0, &qword_27CC21F40, MEMORY[0x277D6E3B8]);
  swift_allocObject();
  sub_2199BEAFC(&qword_27CC21F48, sub_2199BE7C4, MEMORY[0x277D6E730]);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2199BE064(0);
  if (sub_219BE1E24())
  {
    swift_allocObject();
    sub_2199BEAFC(&unk_27CC21F50, sub_2199BE064, MEMORY[0x277D6EAC8]);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2199BA384(void *a1)
{
  sub_21874EAA0(0, &qword_280EE3A90, MEMORY[0x277D6EB30], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  sub_219BEA594();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MyMagazinesBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199BE1A0(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2199BE258(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_2199BE064(0);
    swift_allocObject();
    return sub_219BEA474();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_2199BA518(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = sub_219BF0214();
  sub_218718690(a2, &v6);
  v4 = swift_allocObject();
  sub_2186CB1F0(&v6, v4 + 16);
  v5 = sub_219BE1E04();

  if (v5)
  {
    v7 = v3;
    v8 = sub_2199BEAFC(&unk_280E90FE0, MEMORY[0x277D32C00], MEMORY[0x277D32BF8]);
    *&v6 = v5;
    sub_219BEA494();
    __swift_destroy_boxed_opaque_existential_1(&v6);
  }

  else
  {
    __break(1u);
  }
}