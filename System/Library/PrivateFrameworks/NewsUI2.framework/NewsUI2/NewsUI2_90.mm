uint64_t sub_2190D25FC(uint64_t a1, uint64_t a2)
{
  sub_219BF7AA4();
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_2190D266C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2190D29B4();

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_2190D26B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219BF7AA4();
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_2190D2724()
{
  v1 = [*(*v0 + 16) identifier];
  v2 = sub_219BF5414();

  return v2;
}

uint64_t sub_2190D2780(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  type metadata accessor for HeadlineModel(0);
  if ((sub_21912DF5C(v2, v8) & 1) == 0)
  {
    return 0;
  }

  v12 = v3 == v7 && v5 == v10;
  if (!v12 && (sub_219BF78F4() & 1) == 0)
  {
    return 0;
  }

  if (v4 == v9 && v6 == v11)
  {
    return 1;
  }

  return sub_219BF78F4();
}

unint64_t sub_2190D28AC()
{
  result = qword_280EDB140;
  if (!qword_280EDB140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDB140);
  }

  return result;
}

unint64_t sub_2190D2904()
{
  result = qword_27CC15EF0;
  if (!qword_27CC15EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15EF0);
  }

  return result;
}

unint64_t sub_2190D295C()
{
  result = qword_280EDB148[0];
  if (!qword_280EDB148[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EDB148);
  }

  return result;
}

unint64_t sub_2190D29B4()
{
  result = qword_27CC15EF8;
  if (!qword_27CC15EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15EF8);
  }

  return result;
}

unint64_t sub_2190D2A0C()
{
  result = qword_27CC15F00;
  if (!qword_27CC15F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15F00);
  }

  return result;
}

uint64_t type metadata accessor for HistoryFeedRefreshBlueprintModifier(uint64_t a1)
{
  result = qword_27CC15F08;
  if (!qword_27CC15F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2190D2AF0(uint64_t a1)
{
  result = type metadata accessor for HistoryFeedRefreshResult(319);
  if (v2 <= 0x3F)
  {
    result = sub_2190D2B74();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2190D2B74()
{
  result = qword_280EB0508[0];
  if (!qword_280EB0508[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280EB0508);
  }

  return result;
}

void sub_2190D2BD8(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v116 = a3;
  v117 = a2;
  v118 = a1;
  v113 = sub_219BE6DF4();
  v122 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v5 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190D3EBC(0, &unk_280EE4AF8, MEMORY[0x277D6DF88]);
  v114 = *(v6 - 8);
  v115 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v101 - v7;
  sub_218DC260C(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190D3EBC(0, &qword_280EE3638, MEMORY[0x277D6EC60]);
  v111 = *(v12 - 8);
  v112 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v109 = &v101 - v16;
  sub_218A8CBB8(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for HistoryFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ArticleListHistoryFeedGroup(0);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v110 = v3;
  if (!*(*(v3 + 16) + 16))
  {
    sub_218954178(0);
    v32 = v31;
    v33 = sub_2190D3E2C(&qword_280EE5978, sub_218954178, MEMORY[0x277D6D720]);
    v34 = sub_2190D3E2C(&qword_280EE5988, sub_218954178, MEMORY[0x277D6D718]);
    MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v32, v33, v34);
    type metadata accessor for HistoryFeedModel(0);
    v35 = sub_2190D3E2C(&qword_280EB4200, type metadata accessor for HistoryFeedSectionDescriptor, &unk_219C7A558);
    v36 = sub_2190D3E2C(&qword_280ED8650, type metadata accessor for HistoryFeedModel, &unk_219C441A0);
    sub_219BEB2D4();
    v37 = v122;
    v38 = v113;
    (*(v122 + 104))(v5, *MEMORY[0x277D6D868], v113);
    v99 = v35;
    v100 = v36;
    v97 = v36;
    v98 = sub_2190D3E2C(&qword_280EB41F8, type metadata accessor for HistoryFeedSectionDescriptor, &unk_219C7A530);
    sub_219BE85E4();
    (*(v37 + 8))(v5, v38);
    (*(v111 + 8))(v14, v112);
    v117(v8);
    (*(v114 + 8))(v8, v115);
    return;
  }

  v104 = *(v3 + 16);
  v106 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = v11;
  v105 = v20;
  v121 = v5;
  v108 = v8;
  sub_218C87D64(v19);
  sub_218954178(0);
  v27 = v26;
  v28 = *(v26 - 8);
  if ((*(v28 + 48))(v19, 1, v26) == 1)
  {
    v29 = sub_218A8CBB8;
    v30 = v19;
LABEL_7:
    sub_2190D4020(v30, v29);
    v39 = v115;
    v40 = v114;
    v41 = v108;
    v42 = v117;
    sub_2190D3FB0();
    *v41 = swift_allocError();
    (*(v40 + 104))(v41, *MEMORY[0x277D6DF68], v39);
    v42(v41);
    (*(v40 + 8))(v41, v39);
    return;
  }

  sub_219BE6934();
  (*(v28 + 8))(v19, v27);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v29 = type metadata accessor for HistoryFeedSectionDescriptor;
    v30 = v22;
    goto LABEL_7;
  }

  v102 = v27;
  v43 = v106;
  sub_218B73F4C(v22, v106);
  v123 = *(v43 + *(v23 + 24));

  sub_2191ED6C8(v44);
  v45 = v123;
  if (v123 >> 62)
  {
    goto LABEL_34;
  }

  v46 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v47 = v121;
  v48 = v122;
  if (v46)
  {
LABEL_10:
    v49 = 0;
    v120 = v45 & 0xC000000000000001;
    v107 = v45 & 0xFFFFFFFFFFFFFF8;
    v50 = MEMORY[0x277D84F98];
    v119 = v45;
    while (1)
    {
      if (v120)
      {
        v51 = MEMORY[0x21CECE0F0](v49, v45);
        v52 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v49 >= *(v107 + 16))
        {
          goto LABEL_33;
        }

        v51 = *(v45 + 8 * v49 + 32);
        swift_unknownObjectRetain();
        v52 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          v46 = sub_219BF7214();
          v47 = v121;
          v48 = v122;
          if (!v46)
          {
            break;
          }

          goto LABEL_10;
        }
      }

      v53 = v50;
      v54 = [v51 identifier];
      v45 = sub_219BF5414();
      v56 = v55;

      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v123 = v53;
      v58 = sub_21870F700(v45, v56);
      v60 = v53;
      v61 = v58;
      v62 = v60[2];
      v63 = (v59 & 1) == 0;
      v64 = v62 + v63;
      if (__OFADD__(v62, v63))
      {
        goto LABEL_31;
      }

      v65 = v59;
      if (v60[3] >= v64)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v48 = v122;
          if (v59)
          {
            goto LABEL_11;
          }
        }

        else
        {
          sub_2194902C8();
          v48 = v122;
          if (v65)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        sub_21947DE18(v64, isUniquelyReferenced_nonNull_native);
        v66 = sub_21870F700(v45, v56);
        if ((v65 & 1) != (v67 & 1))
        {
LABEL_56:
          sub_219BF79A4();
          __break(1u);
          return;
        }

        v61 = v66;
        v48 = v122;
        if (v65)
        {
LABEL_11:

          v50 = v123;
          *(*(v123 + 56) + 8 * v61) = v51;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_12;
        }
      }

      v50 = v123;
      *(v123 + 8 * (v61 >> 6) + 64) |= 1 << v61;
      v68 = (v50[6] + 16 * v61);
      *v68 = v45;
      v68[1] = v56;
      *(v50[7] + 8 * v61) = v51;
      swift_unknownObjectRelease();
      v69 = v50[2];
      v70 = __OFADD__(v69, 1);
      v71 = v69 + 1;
      if (v70)
      {
        goto LABEL_32;
      }

      v50[2] = v71;
LABEL_12:
      ++v49;
      v47 = v121;
      v45 = v119;
      if (v52 == v46)
      {
        goto LABEL_36;
      }
    }
  }

  v50 = MEMORY[0x277D84F98];
LABEL_36:

  v73 = MEMORY[0x277D84F90];
  v123 = MEMORY[0x277D84F90];
  v74 = *(v104 + 16);
  if (!v74)
  {
    goto LABEL_50;
  }

  v75 = 0;
  v76 = v104 + 40;
  do
  {
    v77 = (v76 + 16 * v75);
    v78 = v75;
    while (1)
    {
      if (v78 >= v74)
      {
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v75 = v78 + 1;
      if (__OFADD__(v78, 1))
      {
        goto LABEL_55;
      }

      if (v50[2])
      {
        break;
      }

LABEL_39:
      ++v78;
      v77 += 2;
      if (v75 == v74)
      {
        v47 = v121;
        v48 = v122;
        goto LABEL_50;
      }
    }

    v79 = *(v77 - 1);
    v80 = *v77;

    sub_21870F700(v79, v80);
    if ((v81 & 1) == 0)
    {

      goto LABEL_39;
    }

    swift_unknownObjectRetain();

    MEMORY[0x21CECC690](v82);
    if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    v72 = sub_219BF5A54();
    v48 = v122;
    v73 = v123;
    v47 = v121;
  }

  while (v75 != v74);
LABEL_50:
  v120 = v50;
  MEMORY[0x28223BE20](v72);
  v99 = v73;
  v100 = v110;
  v83 = sub_218F8FEF8(sub_2190D4004, &v97);

  v84 = sub_2190D3E2C(&qword_280EE5978, sub_218954178, MEMORY[0x277D6D720]);
  v85 = sub_2190D3E2C(&qword_280EE5988, sub_218954178, MEMORY[0x277D6D718]);
  MEMORY[0x21CEB9170](v83, v102, v84, v85);
  type metadata accessor for HistoryFeedModel(0);
  v86 = sub_2190D3E2C(&qword_280EB4200, type metadata accessor for HistoryFeedSectionDescriptor, &unk_219C7A558);
  v87 = sub_2190D3E2C(&qword_280ED8650, type metadata accessor for HistoryFeedModel, &unk_219C441A0);
  sub_219BEB2D4();
  v88 = sub_2195CF9D4();
  sub_219BEEFF4();
  sub_219BEEFE4();
  type metadata accessor for HistoryFeedServiceConfig(0);
  sub_2190D3E2C(&qword_280EC18D0, type metadata accessor for HistoryFeedServiceConfig, &unk_219C4C2E8);
  v89 = sub_219BEEFC4();

  v90 = 0;
  if (v89)
  {
    v90 = sub_219BEDC74();
  }

  else
  {
    v124 = 0;
    v125 = 0;
  }

  v91 = v112;
  v92 = v113;
  v123 = v89;
  v126 = v90;
  v93 = v109;
  sub_219BEB2C4();
  v94 = sub_21885AB78(v88);
  (*(v48 + 104))(v47, *MEMORY[0x277D6D868], v92, v94);
  v95 = sub_2190D3E2C(&qword_280EB41F8, type metadata accessor for HistoryFeedSectionDescriptor, &unk_219C7A530);
  v99 = v86;
  v100 = v87;
  v97 = v87;
  v98 = v95;
  v96 = v108;
  sub_219BE85E4();
  (*(v48 + 8))(v47, v92);
  v117(v96);
  (*(v114 + 8))(v96, v115);
  (*(v111 + 8))(v93, v91);
  sub_2190D4020(v106, type metadata accessor for ArticleListHistoryFeedGroup);
}

uint64_t sub_2190D39C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a2;
  v34 = a3;
  v6 = type metadata accessor for HistoryFeedGroup(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ArticleListHistoryFeedGroup(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  v16 = type metadata accessor for HistoryFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954178(0);
  v20 = v19;
  sub_219BE6934();
  if ((*(v10 + 48))(v18, 1, v9) == 1)
  {
    v21 = *(v20 - 8);
    (*(v21 + 16))(a4, a1, v20);
  }

  else
  {
    sub_218B73F4C(v18, v15);
    v22 = *v15;
    v23 = *(v15 + 1);
    v24 = *(v9 + 20);
    v25 = sub_219BED8D4();
    (*(*(v25 - 8) + 16))(&v12[v24], &v15[v24], v25);
    *v12 = v22;
    *(v12 + 1) = v23;
    v26 = *(v9 + 24);
    v32 = a4;
    *&v12[v26] = v33;
    refreshed = type metadata accessor for HistoryFeedRefreshBlueprintModifier(0);
    v28 = v34;
    __swift_project_boxed_opaque_existential_1((v34 + *(refreshed + 20)), *(v34 + *(refreshed + 20) + 24));
    sub_218CFCC10(v12, v8);
    v29 = *(type metadata accessor for HistoryFeedRefreshResult(0) + 28);

    a4 = v32;

    sub_2195D2344(v8, v28 + v29, a4);
    sub_2190D4020(v8, type metadata accessor for HistoryFeedGroup);
    sub_2190D4020(v12, type metadata accessor for ArticleListHistoryFeedGroup);
    sub_2190D4020(v15, type metadata accessor for ArticleListHistoryFeedGroup);
    v21 = *(v20 - 8);
  }

  return (*(v21 + 56))(a4, 0, 1, v20);
}

uint64_t sub_2190D3D30(uint64_t a1)
{
  v2 = sub_2190D3E2C(&qword_27CC15F28, type metadata accessor for HistoryFeedRefreshBlueprintModifier, &unk_219C5B7EC);

  return MEMORY[0x2821D4040](a1, v2);
}

uint64_t sub_2190D3E2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2190D3EBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for HistoryFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for HistoryFeedModel(255);
    v8[2] = sub_2190D3E2C(&qword_280EB4200, type metadata accessor for HistoryFeedSectionDescriptor, &unk_219C7A558);
    v8[3] = sub_2190D3E2C(&qword_280ED8650, type metadata accessor for HistoryFeedModel, &unk_219C441A0);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_2190D3FB0()
{
  result = qword_27CC15F20;
  if (!qword_27CC15F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15F20);
  }

  return result;
}

uint64_t sub_2190D4020(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2190D4094()
{
  result = qword_27CC15F30;
  if (!qword_27CC15F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15F30);
  }

  return result;
}

id AppEntityAssociator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppEntityAssociator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppEntityAssociator();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_2190D4150(uint64_t a1)
{
  sub_218AC1C94(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF1634();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  sub_219BF1624();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_2190D42D8(v3);
  }

  (*(v5 + 32))(v7, v3, v4);
  sub_2190D4334();
  sub_219BF6354();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2190D42D8(uint64_t a1)
{
  sub_218AC1C94(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2190D4334()
{
  result = qword_280E90868;
  if (!qword_280E90868)
  {
    sub_219BF1634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E90868);
  }

  return result;
}

id AppEntityAssociator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppEntityAssociator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2190D4724@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t PuzzleContinuePlayingConfig.deinit()
{
  v1 = OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_feedContext;
  v2 = sub_219BF0BD4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_formatContent;
  v4 = sub_219BF1904();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_unknownObjectRelease();

  v5 = OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_feedKind;
  v6 = sub_219BF0634();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t PuzzleContinuePlayingConfig.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_feedContext;
  v2 = sub_219BF0BD4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_formatContent;
  v4 = sub_219BF1904();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_unknownObjectRelease();

  v5 = OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_feedKind;
  v6 = sub_219BF0634();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t PuzzleContinuePlayingModule.createPlugin(config:)(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for PuzzleContinuePlayingViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();

  swift_unownedRetain();

  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  v4 = sub_219BE1E04();

  result = swift_unownedRelease();
  if (v4)
  {
    sub_2190D5034();
    sub_219BF17D4();
    sub_219BEA8C4();
    swift_allocObject();
    v6 = sub_219BEA8A4();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2190D4C10(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218809C38();
  swift_unknownObjectRetain();
  sub_219BE1B84();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();

  sub_219BDD224();

  sub_219BDD274();
  sub_219BE1B94();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for PuzzleContinuePlayingConfig(0);
  return sub_219BE1B94();
}

uint64_t PuzzleContinuePlayingModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t PuzzleContinuePlayingModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_2190D4E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();

  return sub_2190D4EB4(a1, a2, a3, a4, a5, a6, a7, v17, a9, a10);
}

uint64_t sub_2190D4EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = *a7;
  v18 = a7[1];
  v19 = OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_feedContext;
  v20 = sub_219BF0BD4();
  (*(*(v20 - 8) + 32))(a8 + v19, a1, v20);
  v21 = OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_formatContent;
  v22 = sub_219BF1904();
  (*(*(v22 - 8) + 32))(a8 + v21, a2, v22);
  v23 = (a8 + OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_layoutOptionsProvider);
  *v23 = a3;
  v23[1] = a10;
  *(a8 + OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_log) = a4;
  v24 = OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_feedKind;
  v25 = sub_219BF0634();
  (*(*(v25 - 8) + 32))(a8 + v24, a5, v25);
  *(a8 + OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_puzzleType) = a6;
  v26 = (a8 + OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_knobConfig);
  *v26 = v17;
  v26[1] = v18;
  return a8;
}

unint64_t sub_2190D5034()
{
  result = qword_280E9CB10;
  if (!qword_280E9CB10)
  {
    type metadata accessor for PuzzleContinuePlayingViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9CB10);
  }

  return result;
}

uint64_t type metadata accessor for PuzzleContinuePlayingConfig(uint64_t a1)
{
  result = qword_280EB7A60;
  if (!qword_280EB7A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2190D50E0(uint64_t a1)
{
  result = sub_219BF0BD4();
  if (v2 <= 0x3F)
  {
    result = sub_219BF1904();
    if (v3 <= 0x3F)
    {
      result = sub_219BF0634();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_2190D528C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, char *, __n128), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v28 = a3;
  v30 = a2;
  sub_2190D6F8C(0);
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v34 = a1;
  v10 = a4 + 64;
  v11 = 1 << *(a4 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a4 + 64);
  v14 = (v11 + 63) >> 6;
  v31 = a4;
  v15 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  v16 = 0;
  if (v13)
  {
    while (1)
    {
      v17 = v15;
      v27 = a1;
      v32 = v5;
      v18 = v16;
LABEL_9:
      v19 = __clz(__rbit64(v13)) | (v18 << 6);
      v20 = *(v31 + 56);
      v21 = (*(v31 + 48) + 16 * v19);
      v22 = *v21;
      v23 = v21[1];
      v24 = v20 + *(*(type metadata accessor for SportsOnboardingTagFeedGroupKnobs(0) - 8) + 72) * v19;
      v15 = v17;
      sub_2190D6FF8(v24, &v17[*(v29 + 48)], type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
      *v17 = v22;
      *(v17 + 1) = v23;

      v25 = v32;
      (v30)(&v33, &v34, v17);
      v5 = v25;
      if (v25)
      {
        break;
      }

      v13 &= v13 - 1;
      sub_2190D70C8(v17, sub_2190D6F8C);
      a1 = v33;
      v34 = v33;
      v16 = v18;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    sub_2190D70C8(v17, sub_2190D6F8C);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v14)
      {

        return;
      }

      v13 = *(v10 + 8 * v18);
      ++v16;
      if (v13)
      {
        v17 = v15;
        v27 = a1;
        v32 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2190D54F8(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AffinityTagFeedGroupKnobs(0);

  v4 = sub_219BEF264();

  v5 = [objc_msgSend(a1 backingTag)];
  v6 = swift_unknownObjectRelease();
  if (v5)
  {
    MEMORY[0x28223BE20](v6);
    sub_219BE3204();
    *(swift_allocObject() + 16) = v4;
    v7 = sub_219BE2E54();
    type metadata accessor for TagFeedPoolService();
    v8 = sub_219BE2F94();

    return v8;
  }

  v10 = [objc_msgSend(a1 backingTag)];
  swift_unknownObjectRelease();
  if (!v10)
  {
    if (*(v4 + 16))
    {
      sub_2190D6C8C(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_219C09BA0;
      v13 = [objc_msgSend(a1 backingTag)];
      swift_unknownObjectRelease();
      v14 = sub_219BF5414();
      v16 = v15;

      *(inited + 32) = v14;
      *(inited + 40) = v16;
      sub_2194AD74C(inited);
      swift_setDeallocating();
      sub_2189AD3D8(inited + 32);
      sub_2190D6C8C(0, &qword_27CC15FA8, &type metadata for AffinityCurationLists, MEMORY[0x277D6CF30]);
      swift_allocObject();
      return sub_219BE3014();
    }

    else
    {

      sub_2190D6CDC(0);
      v8 = v17;
      sub_2190D6D70(&qword_27CC15FC0, sub_2190D6CDC, MEMORY[0x277D31FC0]);
      swift_allocError();
      v19 = v18;
      *v18 = [a1 feedConfiguration];
      v19[1] = 0xD000000000000010;
      v19[2] = 0x8000000219D0B020;
      (*(*(v8 - 8) + 104))(v19, *MEMORY[0x277D31FB8], v8);
      swift_willThrow();
    }

    return v8;
  }

  v11 = sub_2190D6DB8(v10, v4);

  swift_unknownObjectRelease();
  return v11;
}

char *sub_2190D5904(unint64_t *a1, uint64_t a2)
{
  v53 = a2;
  v52 = type metadata accessor for TagFeedCurationRequest(0);
  v54 = *(v52 - 8);
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  MEMORY[0x28223BE20](v5);
  v7 = &v50 - v6;
  v8 = *a1;
  v51 = a1[1];
  v9 = a1[2];
  if (v8 >> 62)
  {
    v10 = sub_219BF7214();
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v58 = v7;
  v59 = v2;
  v56 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v9;
  v55 = v4;
  if (v10)
  {
    v60 = MEMORY[0x277D84F90];

    result = sub_218C35E18(0, v10 & ~(v10 >> 63), 0);
    if (v10 < 0)
    {
      __break(1u);
      return result;
    }

    v12 = 0;
    v13 = v60;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x21CECE0F0](v12, v8);
      }

      else
      {
        v14 = *(v8 + 8 * v12 + 32);
        swift_unknownObjectRetain();
      }

      v60 = v13;
      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_218C35E18((v15 > 1), v16 + 1, 1);
        v13 = v60;
      }

      ++v12;
      *(v13 + 16) = v16 + 1;
      v17 = v13 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = 0;
    }

    while (v10 != v12);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v18 = v51;
  v19 = v51[2];
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v60 = MEMORY[0x277D84F90];
    sub_218C35E48(0, v19, 0);
    v20 = v60;
    v21 = v18 + 5;
    do
    {
      v22 = *(v21 - 1);
      v23 = *v21;
      v60 = v20;
      v25 = *(v20 + 16);
      v24 = *(v20 + 24);

      if (v25 >= v24 >> 1)
      {
        sub_218C35E48((v24 > 1), v25 + 1, 1);
        v20 = v60;
      }

      *(v20 + 16) = v25 + 1;
      v26 = (v20 + 24 * v25);
      v26[4] = v22;
      v26[5] = v23;
      v26[6] = 0;
      v21 += 2;
      --v19;
    }

    while (v19);
  }

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v27 = *MEMORY[0x277D30BC0];
  v28 = qword_280F61708;
  v51 = v27;
  v29 = sub_2194AD74C(&unk_282A24130);
  swift_arrayDestroy();
  v30 = sub_2194AD74C(&unk_282A24170);
  swift_arrayDestroy();
  v31 = v52;
  v32 = *(v52 + 44);
  v33 = *MEMORY[0x277D32950];
  v34 = sub_219BEFBD4();
  v35 = v58;
  (*(*(v34 - 8) + 104))(&v58[v32], v33, v34);
  v36 = *(v31 + 48);
  v37 = *MEMORY[0x277D32840];
  v38 = sub_219BEF9C4();
  (*(*(v38 - 8) + 104))(&v35[v36], v37, v38);
  *v35 = v13;
  *(v35 + 1) = v20;
  v39 = v51;
  *(v35 + 2) = v28;
  *(v35 + 3) = v39;
  *(v35 + 4) = v29;
  *(v35 + 5) = v30;
  v40 = MEMORY[0x277D84FA0];
  *(v35 + 6) = MEMORY[0x277D84FA0];
  *(v35 + 7) = v40;
  v41 = *(v53 + 248);
  v42 = sub_219BF6214();
  sub_219BE5314("Tag curation service fetching curations...", 42, 2, &dword_2186C1000, v28, v42, MEMORY[0x277D84F90]);
  sub_2190D6C8C(0, &unk_280EE6E20, &type metadata for TagFeedCurationResult, MEMORY[0x277D6CF30]);
  v53 = v43;
  v44 = v56;
  sub_2190D6FF8(v35, v56, type metadata accessor for TagFeedCurationRequest);
  v45 = *(v54 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = v41;
  sub_2190D7060(v44, v46 + ((v45 + 24) & ~v45), type metadata accessor for TagFeedCurationRequest);

  sub_219BE2F54();
  sub_2190D6FF8(v35, v44, type metadata accessor for TagFeedCurationRequest);
  v47 = swift_allocObject();
  sub_2190D7060(v44, v47 + ((v45 + 16) & ~v45), type metadata accessor for TagFeedCurationRequest);
  v48 = sub_219BE2E54();
  sub_219BE3024();

  v60 = v57;
  sub_2190D6AE4(0, &qword_280EE69E0, sub_2186E2394, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_219BE3014();
  v49 = sub_219BE31C4();

  sub_2190D70C8(v35, type metadata accessor for TagFeedCurationRequest);
  return v49;
}

void sub_2190D5F1C(void *a1, uint64_t a2)
{
  v40 = a2;
  v58 = sub_219BF1934();
  v3 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v51 = &v38 - v6;
  v57 = type metadata accessor for CuratedTagFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v57);
  v43 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v50 = &v38 - v9;
  v10 = type metadata accessor for TagFeedCuration(0);
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x28223BE20](v10);
  v42 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  v15 = *a1;
  v47 = *(*a1 + 16);
  if (v47)
  {
    v16 = 0;
    v41 = a1[3];
    v39 = OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_subscriptionController;
    v55 = (v3 + 8);
    v56 = (v3 + 16);
    v45 = MEMORY[0x277D84F90];
    v46 = v15;
    v54 = &v38 - v13;
    while (v16 < *(v15 + 16))
    {
      v17 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v52 = *(v48 + 72);
      v53 = v17;
      sub_2190D6FF8(v15 + v17 + v52 * v16, v14, type metadata accessor for TagFeedCuration);
      sub_218A27A84(0);
      v18 = v50;
      sub_219BEDD14();
      v19 = *v56;
      v20 = v51;
      v21 = v58;
      (*v56)(v51, v18 + *(v57 + 20), v58);
      sub_2190D70C8(v18, type metadata accessor for CuratedTagFeedGroupConfigData);
      sub_219BF1784();
      v23 = v22;
      v24 = *v55;
      (*v55)(v20, v21);
      if (v23 && (v25 = *(v40 + v39), v26 = sub_219BF53D4(), , v27 = [v25 hasMutedSubscriptionForTagID_], v26, (v27 & 1) != 0) || (v28 = v43, sub_219BEDD14(), v29 = v58, v30 = v44, v19(v44, v28 + *(v57 + 20), v58), sub_2190D70C8(v28, type metadata accessor for CuratedTagFeedGroupConfigData), v31 = sub_219BF1734(), v24(v30, v29), LOBYTE(v29) = sub_2190D6964(v31, v41), , (v29 & 1) != 0))
      {
        v14 = v54;
        sub_2190D70C8(v54, type metadata accessor for TagFeedCuration);
      }

      else
      {
        v32 = v54;
        sub_2190D7060(v54, v42, type metadata accessor for TagFeedCuration);
        v33 = v45;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = v33;
        v59 = v33;
        v14 = v32;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_218C35E68(0, *(v35 + 16) + 1, 1);
          v35 = v59;
        }

        v37 = *(v35 + 16);
        v36 = *(v35 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_218C35E68((v36 > 1), v37 + 1, 1);
          v35 = v59;
        }

        *(v35 + 16) = v37 + 1;
        v45 = v35;
        sub_2190D7060(v42, v35 + v53 + v37 * v52, type metadata accessor for TagFeedCuration);
      }

      ++v16;
      v15 = v46;
      if (v47 == v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v45 = MEMORY[0x277D84F90];
LABEL_15:
    v59 = v45;
    sub_2190D6AE4(0, &unk_280EE6B60, sub_2190D6AB0, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE3014();
  }
}

uint64_t sub_2190D6480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(*(*(a2 + 24) + 24) + 16) + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsOnboardingKnobs);
  v10[2] = a3;

  sub_2190D528C(0, sub_2190D6F70, v10, v4);
  v6 = v5;

  __swift_project_boxed_opaque_existential_1((a1 + 336), *(a1 + 360));
  v7 = off_282A97438;
  v8 = type metadata accessor for MySportsTagService();
  return v7(v6, 1, v8);
}

void sub_2190D655C(unint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = *a1 >> 62;
  if (v7)
  {
    v30 = *a1;
    v31 = sub_219BF7214();
    v6 = v30;
    v8 = v31;
  }

  else
  {
    v8 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = v6;
    v37 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v8 & ~(v8 >> 63), 0);
    if (v8 < 0)
    {
      __break(1u);
      return;
    }

    v32 = a2;
    v33 = v7;
    v34 = a3;
    v35 = v3;
    v11 = 0;
    v9 = v37;
    v6 = v10;
    v36 = v10 & 0xC000000000000001;
    v12 = v10;
    v13 = v8;
    do
    {
      if (v36)
      {
        v14 = MEMORY[0x21CECE0F0](v11, v6);
      }

      else
      {
        v14 = *(v6 + 8 * v11 + 32);
        swift_unknownObjectRetain();
      }

      v15 = [v14 identifier];
      v16 = sub_219BF5414();
      v18 = v17;
      swift_unknownObjectRelease();

      v20 = *(v37 + 16);
      v19 = *(v37 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_21870B65C((v19 > 1), v20 + 1, 1);
      }

      ++v11;
      *(v37 + 16) = v20 + 1;
      v21 = v37 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      v6 = v12;
    }

    while (v13 != v11);
    a3 = v34;
    a2 = v32;
    v7 = v33;
  }

  v22 = v6;
  sub_219A09690(v6, v6);
  v24 = v23;

  sub_2191ED3E8(v24);
  if (v7)
  {
    sub_2186D8870();

    v28 = sub_219BF7534();

    v22 = v28;
  }

  else
  {
    v25 = v22 & 0xFFFFFFFFFFFFFF8;

    sub_219BF7924();
    sub_2186D8870();
    if (!swift_dynamicCastMetatype())
    {
      v26 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v26)
      {
        v27 = v25 + 32;
        while (swift_dynamicCastObjCProtocolConditional())
        {
          v27 += 8;
          if (!--v26)
          {
            goto LABEL_21;
          }
        }

        v22 = v25 | 1;
      }
    }
  }

LABEL_21:
  v29 = sub_218845F78(v9);

  *a3 = v22;
  a3[1] = a2;
  a3[2] = v29;
}

uint64_t sub_2190D67E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  sub_2190D6F8C(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SportsOnboardingTagFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  sub_2190D6FF8(a2, v10, sub_2190D6F8C);

  sub_2190D7060(&v10[*(v8 + 56)], v13, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
  result = sub_219BEF524();
  v16 = v14 + v18;
  if (__OFADD__(v14, v18))
  {
    __break(1u);
  }

  else
  {
    result = sub_2190D70C8(v13, type metadata accessor for SportsOnboardingTagFeedGroupKnobs);
    *a4 = v16;
  }

  return result;
}

uint64_t sub_2190D6964(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_5;
    }

    v7 = (v5 + 16 * v4);
    v9 = *v7;
    v8 = v7[1];
    sub_219BF7AA4();

    sub_219BF5524();
    v10 = sub_219BF7AE4();
    v11 = -1 << *(a2 + 32);
    v12 = v10 & ~v11;
    if ((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      break;
    }

LABEL_4:

LABEL_5:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v13 = ~v11;
  while (1)
  {
    v14 = (*(a2 + 48) + 16 * v12);
    v15 = *v14 == v9 && v14[1] == v8;
    if (v15 || (sub_219BF78F4() & 1) != 0)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

void sub_2190D6AE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2190D6B48(uint64_t a1)
{
  v4 = *(type metadata accessor for TagFeedCurationRequest(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187608D4;

  return sub_218E5B864(a1, v6, v1 + v5);
}

double sub_2190D6C2C()
{
  v1 = *(type metadata accessor for TagFeedCurationRequest(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_218E5D138(v2);
}

void sub_2190D6C8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2190D6CDC(uint64_t a1)
{
  if (!qword_27CC15FB0)
  {
    type metadata accessor for TagFeedServiceConfig(255);
    sub_2190D6D70(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    v1 = sub_219BEE2E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC15FB0);
    }
  }
}

uint64_t sub_2190D6D70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2190D6DB8(void *a1, uint64_t a2)
{
  v3 = [a1 sportsParentTagIdentifiers];
  if (v3)
  {
    v4 = v3;
    v5 = sub_219BF5924();
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  sub_2191ED3E8(v5);
  sub_2190D6C8C(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  v7 = [a1 identifier];
  v8 = sub_219BF5414();
  v10 = v9;

  *(inited + 32) = v8;
  *(inited + 40) = v10;
  sub_218845F78(inited);
  swift_setDeallocating();
  sub_2189AD3D8(inited + 32);
  sub_2190D6C8C(0, &qword_27CC15FA8, &type metadata for AffinityCurationLists, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

void sub_2190D6F8C(uint64_t a1)
{
  if (!qword_280E8F8F0)
  {
    type metadata accessor for SportsOnboardingTagFeedGroupKnobs(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F8F0);
    }
  }
}

uint64_t sub_2190D6FF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2190D7060(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2190D70C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2190D7150(uint64_t a1)
{
  v2 = sub_2190D7C24();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_2190D7190()
{
  result = qword_27CC15FC8;
  if (!qword_27CC15FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15FC8);
  }

  return result;
}

uint64_t sub_2190D722C(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v67 = a3;
  v68 = a2;
  sub_2190D7B08(0, &qword_280EE4B20, MEMORY[0x277D6DF88]);
  v66 = v6;
  v65 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v64 = v60 - v7;
  sub_218954350(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v76 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v77 = v60 - v13;
  sub_218B5B3A0(0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BCDC(0);
  MEMORY[0x28223BE20](v18 - 8);
  v60[3] = v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408(0);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v24 = v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v61 = v60 - v26;
  v60[2] = sub_219BEB1B4();
  v60[1] = v27;
  v63 = v22;
  v28 = *(v22 + 16);
  v62 = a1;
  v28(v24, a1, v21);
  sub_2186CC2B4(&qword_280EE36E0, sub_218954408, MEMORY[0x277D6EC68]);
  sub_219BF56A4();
  v29 = *(v15 + 44);
  sub_2186CC2B4(&unk_280EE36D0, sub_218954408, MEMORY[0x277D6EC70]);
  sub_219BF5E84();
  if (*&v17[v29] != v78[0])
  {
    v37 = (v10 + 16);
    v38 = v10;
    v39 = a4;
    v40 = a4 + 56;
    v69 = (v38 + 8);
    v71 = v38;
    v72 = v37;
    v75 = (v38 + 32);
    v30 = MEMORY[0x277D84F90];
    v73 = v29;
    v74 = v9;
    v70 = v21;
    while (1)
    {
      v41 = sub_219BF5EC4();
      (*v72)(v77);
      v41(v78, 0);
      sub_219BF5E94();
      sub_219BE6934();
      v42 = sub_2194444D4(v78[0]);

      if (v42)
      {
        v43 = [v42 identifier];
        v44 = sub_219BF5414();
        v46 = v45;

        if (*(v39 + 16))
        {
          sub_219BF7AA4();
          sub_219BF5524();
          v47 = sub_219BF7AE4();
          v48 = -1 << *(v39 + 32);
          v49 = v47 & ~v48;
          if ((*(v40 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
          {
            v50 = ~v48;
            while (1)
            {
              v51 = (*(v39 + 48) + 16 * v49);
              v52 = *v51 == v44 && v51[1] == v46;
              if (v52 || (sub_219BF78F4() & 1) != 0)
              {
                break;
              }

              v49 = (v49 + 1) & v50;
              if (((*(v40 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
              {
                goto LABEL_18;
              }
            }

            swift_unknownObjectRelease();
            v9 = v74;
            (*v69)(v77, v74);
            v21 = v70;
            goto LABEL_7;
          }

LABEL_18:

          swift_unknownObjectRelease();
          v21 = v70;
        }

        else
        {

          swift_unknownObjectRelease();
        }

        v9 = v74;
      }

      v53 = *v75;
      (*v75)(v76, v77, v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_218C357A0(0, *(v30 + 16) + 1, 1);
        v30 = v79;
      }

      v56 = *(v30 + 16);
      v55 = *(v30 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_218C357A0((v55 > 1), v56 + 1, 1);
        v30 = v79;
      }

      *(v30 + 16) = v56 + 1;
      v57 = v30 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v56;
      v9 = v74;
      v53(v57, v76, v74);
LABEL_7:
      sub_219BF5E84();
      if (*&v17[v73] == v78[0])
      {
        goto LABEL_3;
      }
    }
  }

  v30 = MEMORY[0x277D84F90];
LABEL_3:
  sub_2190D7BC8(v17);
  v31 = sub_2186CC2B4(&qword_280EE5870, sub_218954350, MEMORY[0x277D6D720]);
  v32 = sub_2186CC2B4(&qword_280EE5880, sub_218954350, MEMORY[0x277D6D718]);
  MEMORY[0x21CEB9170](v30, v9, v31, v32);
  type metadata accessor for TagFeedModel(0);
  sub_2186F7410();
  sub_2186CC2B4(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
  v33 = v61;
  sub_219BEB1A4();
  v34 = sub_219759E94();
  sub_219BEEFF4();
  sub_219BEEFE4();
  type metadata accessor for TagFeedServiceConfig(0);
  sub_2186CC2B4(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
  v35 = sub_219BEEFC4();

  v36 = 0;
  if (v35)
  {
    v36 = sub_219BEDC74();
  }

  else
  {
    v78[1] = 0;
    v78[2] = 0;
  }

  v78[0] = v35;
  v78[3] = v36;
  sub_219BEB2C4();
  sub_21885AB78(v34);
  v58 = v64;
  sub_219BE85C4();
  v68(v58);
  (*(v65 + 8))(v58, v66);
  return (*(v63 + 8))(v33, v21);
}

void sub_2190D7B08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TagFeedSectionDescriptor;
    v8[1] = type metadata accessor for TagFeedModel(255);
    v8[2] = sub_2186F7410();
    v8[3] = sub_2186CC2B4(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2190D7BC8(uint64_t a1)
{
  sub_218B5B3A0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2190D7C24()
{
  result = qword_27CC15FD0;
  if (!qword_27CC15FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15FD0);
  }

  return result;
}

uint64_t sub_2190D7CA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v39 = type metadata accessor for AudioHistoryFeedConfig(0);
  MEMORY[0x28223BE20](v39);
  v40 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D83D88];
  sub_2186DD818(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v38 - v6;
  sub_2186DD818(0, &qword_280EE7D08, sub_2190D87C8, v4);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  sub_2186DD818(0, &qword_280EE9C40, MEMORY[0x277CC9578], v4);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  sub_2190D894C(0, &qword_280EE72C0, MEMORY[0x277D6CE98]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190D8894();
  v18 = v43;
  sub_219BF7B04();
  if (v18)
  {
    v31 = a1;
  }

  else
  {
    v19 = v15;
    v43 = a1;
    v20 = v42;
    sub_219BDBD34();
    v46 = 0;
    sub_2190D8A88(&unk_280EE9C70, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v21 = v17;
    sub_219BE2C94();
    v38 = v12;
    sub_2190D87C8(0);
    v23 = v22;
    v45 = 1;
    sub_2190D8A88(&qword_280EE7D18, sub_2190D87C8, MEMORY[0x277D6CB08]);
    v24 = v9;
    sub_219BE2C94();
    v25 = v19;
    v26 = *(v23 - 8);
    if ((*(v26 + 48))(v24, 1, v23) == 1)
    {
      sub_2187105EC(v24, &qword_280EE7D08, sub_2190D87C8);
      v27 = 0;
    }

    else
    {
      v28 = sub_219BE1E44();
      v29 = v24;
      v27 = v28;
      (*(v26 + 8))(v29, v23);
    }

    v30 = v40;
    sub_219BEE5B4();
    v44 = 2;
    sub_2190D8A88(&qword_280E91B88, MEMORY[0x277D32028], MEMORY[0x277D32038]);
    sub_219BE2C94();
    v33 = MEMORY[0x277CC9578];
    v34 = v27;
    v35 = v38;
    sub_21872ABDC(v38, v30, &qword_280EE9C40, MEMORY[0x277CC9578]);
    if (!v34)
    {
      v34 = MEMORY[0x277D84F90];
    }

    sub_2187105EC(v35, &qword_280EE9C40, v33);
    (*(v25 + 8))(v21, v14);
    v36 = v20;
    v37 = v39;
    *(v30 + *(v39 + 20)) = v34;
    sub_2189A1E30(v41, v30 + *(v37 + 24));
    sub_2190D88E8(v30, v36);
    v31 = v43;
  }

  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t sub_2190D8294(void *a1)
{
  v3 = v1;
  sub_2190D894C(0, &qword_27CC15FE0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190D8894();
  sub_219BF7B44();
  v13 = 0;
  sub_219BDBD34();
  sub_2190D8A88(&qword_280EE9CA0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_219BF77E4();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for AudioHistoryFeedConfig(0) + 20));
    v11[15] = 1;
    sub_2186DD818(0, &qword_280E8F0A8, type metadata accessor for AudioHistoryFeedGroupConfig, MEMORY[0x277D83940]);
    sub_2190D89B0();
    sub_219BF7834();
    v11[14] = 2;
    sub_219BEE5B4();
    sub_2190D8A88(&unk_280E91B90, MEMORY[0x277D32028], MEMORY[0x277D32030]);
    sub_219BF77E4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2190D8524(uint64_t a1)
{
  v2 = sub_2190D8894();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2190D8560(uint64_t a1)
{
  v2 = sub_2190D8894();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2190D8618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v8 = MEMORY[0x277CC9578];
  sub_2186DD818(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v13 - v10;
  sub_21872ABDC(v5, &v13 - v10, &qword_280EE9C40, v8);
  sub_21872ABDC(v5 + *(a2 + 24), a3 + *(a2 + 24), &qword_280E91B80, MEMORY[0x277D32028]);
  sub_21872ABDC(v11, a3, &qword_280EE9C40, v8);

  result = sub_2187105EC(v11, &qword_280EE9C40, v8);
  *(a3 + *(a2 + 20)) = a1;
  return result;
}

void sub_2190D87C8(uint64_t a1)
{
  if (!qword_280EE7D10)
  {
    type metadata accessor for AudioHistoryFeedGroupConfig(255);
    sub_2190D8A88(&qword_280EB9448, type metadata accessor for AudioHistoryFeedGroupConfig, &unk_219CAC03C);
    sub_2190D8A88(&qword_280EB9450, type metadata accessor for AudioHistoryFeedGroupConfig, &unk_219CAC014);
    v1 = sub_219BE1E54();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE7D10);
    }
  }
}

unint64_t sub_2190D8894()
{
  result = qword_280EC8C18[0];
  if (!qword_280EC8C18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EC8C18);
  }

  return result;
}

uint64_t sub_2190D88E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioHistoryFeedConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2190D894C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2190D8894();
    v7 = a3(a1, &type metadata for AudioHistoryFeedConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2190D89B0()
{
  result = qword_27CC15FE8;
  if (!qword_27CC15FE8)
  {
    sub_2186DD818(255, &qword_280E8F0A8, type metadata accessor for AudioHistoryFeedGroupConfig, MEMORY[0x277D83940]);
    sub_2190D8A88(&qword_280EB9450, type metadata accessor for AudioHistoryFeedGroupConfig, &unk_219CAC014);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15FE8);
  }

  return result;
}

uint64_t sub_2190D8A88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2190D8AE4()
{
  result = qword_27CC15FF0;
  if (!qword_27CC15FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15FF0);
  }

  return result;
}

unint64_t sub_2190D8B3C()
{
  result = qword_280EC8C08;
  if (!qword_280EC8C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC8C08);
  }

  return result;
}

unint64_t sub_2190D8B94()
{
  result = qword_280EC8C10;
  if (!qword_280EC8C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC8C10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TagViewBadge(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 18))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TagViewBadge(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 18) = v3;
  return result;
}

uint64_t sub_2190D8C38(uint64_t a1)
{
  if (*(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2190D8C54(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 17) = 1;
  }

  else
  {
    *(result + 17) = 0;
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TagAccessorySetting(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFFD)
  {
    if ((a2 + 33550339) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16773123;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16773123;
      }
    }
  }

  v4 = (*a1 & 0xFC | (((*(a1 + 2) >> 1) & 0xF) << 8) | (*(a1 + 2) >> 5) & 3) ^ 0xFFF;
  if (v4 >= 0xFFC)
  {
    v4 = -1;
  }

  return v4 + 1;
}

uint64_t storeEnumTagSinglePayload for TagAccessorySetting(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33550339) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFFC)
  {
    v3 = 0;
  }

  if (a2 > 0xFFC)
  {
    *result = a2 - 4093;
    *(result + 2) = (a2 - 4093) >> 16;
    if (v3)
    {
      v4 = ((a2 - 4093) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = -a2 & 0xFC;
      *(result + 2) = (-a2 & 0xFC | (((-a2 & 0xFFC) << 9) - (a2 << 21)) & 0x7E00FC) >> 16;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_2190D8DD0(unsigned __int16 *a1)
{
  v1 = *(a1 + 2);
  v2 = *a1 | (v1 << 16);
  v3 = v1 >> 7;
  v4 = (v1 >> 5) & 3;
  v5 = (v2 & 3 | (4 * ((v2 >> 8) & 0x1FF)) & 0xFFFFF7FF | ((v3 & 1) << 11)) + 3;
  if (v4 == 3)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

unsigned __int16 *sub_2190D8E04(unsigned __int16 *result)
{
  v1 = *result;
  v2 = (v1 | (*(result + 2) << 16)) & 0xFF9FFFFF;
  *result = v1;
  *(result + 2) = BYTE2(v2);
  return result;
}

unsigned __int16 *sub_2190D8E24(unsigned __int16 *result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = (*result | (*(result + 2) << 16)) & 0xFF81FF03 | (a2 << 21);
  }

  else
  {
    v2 = ((a2 - 3) << 6) & 0x1FF00 | (a2 - 3) & 3 | (((a2 - 3) >> 11) << 23) | 0x600000;
  }

  *result = v2;
  *(result + 2) = BYTE2(v2);
  return result;
}

uint64_t sub_2190D8E84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2190D8ECC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2190D8F20(uint64_t a1, uint64_t a2, __int16 a3)
{
  if ((a3 & 0x100) != 0)
  {
    return 0;
  }

  if ((a3 & 1) != 0 || a2 >= a1)
  {
    return sub_219BF7894();
  }

  v4 = sub_219BF7894();
  MEMORY[0x21CECC330](43, 0xE100000000000000);
  return v4;
}

id sub_2190D8FB8(uint64_t a1)
{
  if (sub_219BED0C4())
  {
    v1 = [objc_opt_self() labelColor];

    return v1;
  }

  else
  {
    if (qword_280E8DA88 != -1)
    {
      swift_once();
    }

    v3 = qword_280F617F8;

    return v3;
  }
}

BOOL sub_2190D9050(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 64))(a1);
  if ((v4 & 0x100) == 0)
  {
    return 0;
  }

  return !v4 && (v2 | v3) == 0;
}

uint64_t sub_2190D909C()
{
  v1 = v0;
  v2 = sub_219BE16E4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D2F818])
  {
    return 0;
  }

  if (v7 == *MEMORY[0x277D2F800])
  {
    return 23;
  }

  if (v7 == *MEMORY[0x277D2F858])
  {
    return 24;
  }

  if (v7 == *MEMORY[0x277D2F598])
  {
    return 25;
  }

  if (v7 == *MEMORY[0x277D2F848])
  {
    return 2;
  }

  if (v7 == *MEMORY[0x277D2F5E8])
  {
    return 0;
  }

  if (v7 == *MEMORY[0x277D2F648])
  {
    return 30;
  }

  if (v7 == *MEMORY[0x277D2F7F0])
  {
    return 28;
  }

  if (v7 == *MEMORY[0x277D2F7E0])
  {
    return 9;
  }

  if (v7 == *MEMORY[0x277D2F6E0])
  {
    return 32;
  }

  if (v7 == *MEMORY[0x277D2F7A8])
  {
    return 33;
  }

  if (v7 == *MEMORY[0x277D2F778])
  {
    return 0;
  }

  if (v7 == *MEMORY[0x277D2F840])
  {
    return 29;
  }

  if (v7 == *MEMORY[0x277D2F868])
  {
    return 7;
  }

  v8 = 0;
  if (v7 != *MEMORY[0x277D2F5A0] && v7 != *MEMORY[0x277D2F690])
  {
    if (v7 == *MEMORY[0x277D2F5D0])
    {
      return 34;
    }

    if (v7 == *MEMORY[0x277D2F788])
    {
      return 35;
    }

    if (v7 == *MEMORY[0x277D2F600])
    {
      return 31;
    }

    if (v7 == *MEMORY[0x277D2F7F8])
    {
      return 22;
    }

    if (v7 == *MEMORY[0x277D2F5C8])
    {
      return 26;
    }

    if (v7 == *MEMORY[0x277D2F830])
    {
      return 18;
    }

    if (v7 == *MEMORY[0x277D2F810])
    {
      return 19;
    }

    if (v7 == *MEMORY[0x277D2F7E8])
    {
      return 13;
    }

    if (v7 == *MEMORY[0x277D2F728])
    {
      return 12;
    }

    if (v7 == *MEMORY[0x277D2F5F8])
    {
      return 14;
    }

    if (v7 == *MEMORY[0x277D2F6B8])
    {
      return 3;
    }

    if (v7 == *MEMORY[0x277D2F780])
    {
      return 36;
    }

    v8 = 0;
    if (v7 != *MEMORY[0x277D2F5E0] && v7 != *MEMORY[0x277D2F5D8] && v7 != *MEMORY[0x277D2F790])
    {
      if (v7 == *MEMORY[0x277D2F5B0])
      {
        return 10;
      }

      if (v7 == *MEMORY[0x277D2F850])
      {
        return 11;
      }

      if (v7 == *MEMORY[0x277D2F660])
      {
        return 8;
      }

      v8 = 0;
      if (v7 != *MEMORY[0x277D2F7D0] && v7 != *MEMORY[0x277D2F6F0])
      {
        if (v7 == *MEMORY[0x277D2F668])
        {
          return 5;
        }

        if (v7 == *MEMORY[0x277D2F738])
        {
          return 20;
        }

        if (v7 == *MEMORY[0x277D2F798])
        {
          return 21;
        }

        if (v7 != *MEMORY[0x277D2F808])
        {
          if (v7 == *MEMORY[0x277D2F838])
          {
            return 38;
          }

          if (v7 == *MEMORY[0x277D2F658])
          {
            return 39;
          }

          if (v7 == *MEMORY[0x277D2F610])
          {
            return 40;
          }

          if (v7 == *MEMORY[0x277D2F6A8])
          {
            return 41;
          }

          if (v7 == *MEMORY[0x277D2F7B8])
          {
            return 42;
          }

          if (v7 == *MEMORY[0x277D2F718])
          {
            return 43;
          }

          if (v7 == *MEMORY[0x277D2F6C8])
          {
            return 44;
          }

          if (v7 == *MEMORY[0x277D2F7D8])
          {
            return 45;
          }

          (*(v3 + 8))(v6, v2);
        }

        return 0;
      }
    }
  }

  return v8;
}

uint64_t sub_2190D9694@<X0>(unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v5 = sub_219BEFAC4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  sub_219BDC8D4();
  sub_219BDC8B4();
  sub_219BDC8A4();

  (*(v6 + 32))(v8, v11, v5);
  v12 = (*(v6 + 88))(v8, v5);
  if (v12 == *MEMORY[0x277D328B0])
  {
    v13 = MEMORY[0x277D32288];
LABEL_9:
    v14 = *v13;
    v15 = sub_219BEEAF4();
    v16 = *(*(v15 - 8) + 104);
    v17 = a3;
    v18 = v14;
    return v16(v17, v18, v15);
  }

  if (v12 == *MEMORY[0x277D32890])
  {
    v13 = MEMORY[0x277D32270];
    goto LABEL_9;
  }

  if (v12 == *MEMORY[0x277D328A0])
  {
    v13 = MEMORY[0x277D32280];
    goto LABEL_9;
  }

  if (v12 == *MEMORY[0x277D32898])
  {
    v13 = MEMORY[0x277D32278];
    goto LABEL_9;
  }

  v20 = *MEMORY[0x277D328A8];
  v21 = v12;
  v15 = sub_219BEEAF4();
  v16 = *(*(v15 - 8) + 104);
  if (v21 == v20)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v22 = MEMORY[0x277D32280];
      }

      else
      {
        v22 = MEMORY[0x277D32278];
      }
    }

    else if (a2)
    {
      v22 = MEMORY[0x277D32288];
    }

    else
    {
      v22 = MEMORY[0x277D32270];
    }

    v18 = *v22;
    v17 = a3;
    return v16(v17, v18, v15);
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v23 = MEMORY[0x277D32280];
    }

    else
    {
      v23 = MEMORY[0x277D32278];
    }
  }

  else if (a2)
  {
    v23 = MEMORY[0x277D32288];
  }

  else
  {
    v23 = MEMORY[0x277D32270];
  }

  v16(a3, *v23, v15);
  return (*(v6 + 8))(v8, v5);
}

void *sub_2190D9998(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v1566 = a4;
  v1565 = a3;
  v1564 = a2;
  v1626 = a1;
  v1563 = type metadata accessor for TopicRecipesTagFeedGroupKnobs(0);
  v1607 = *(v1563 - 8);
  MEMORY[0x28223BE20](v1563);
  v1440 = &v1260 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1542 = type metadata accessor for TrendingRecipesTagFeedGroupKnobs(0);
  v1541 = *(v1542 - 8);
  MEMORY[0x28223BE20](v1542);
  v1439 = &v1260 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1540 = type metadata accessor for SavedRecipesTagFeedGroupKnobs(0);
  v1539 = *(v1540 - 8);
  MEMORY[0x28223BE20](v1540);
  v1438 = &v1260 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1615 = type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs(0);
  v1538 = *(v1615 - 8);
  MEMORY[0x28223BE20](v1615);
  v1363 = &v1260 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v1437 = &v1260 - v9;
  v1606 = type metadata accessor for LatestRecipesTagFeedGroupKnobs(0);
  v1611 = *(v1606 - 8);
  MEMORY[0x28223BE20](v1606);
  v1362 = &v1260 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v1434 = &v1260 - v12;
  v13 = sub_219BF0354();
  MEMORY[0x28223BE20](v13 - 8);
  v1360 = &v1260 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1605 = type metadata accessor for ForYouRecipesTagFeedGroupKnobs(0);
  v1537 = *(v1605 - 8);
  MEMORY[0x28223BE20](v1605);
  v1361 = &v1260 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v1433 = &v1260 - v17;
  v1562 = type metadata accessor for ChannelRecipesTagFeedGroupKnobs(0);
  v1604 = *(v1562 - 8);
  MEMORY[0x28223BE20](v1562);
  v1359 = &v1260 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v1432 = &v1260 - v20;
  v1536 = type metadata accessor for SponsoredBannerTagFeedGroupKnobs(0);
  v1535 = *(v1536 - 8);
  MEMORY[0x28223BE20](v1536);
  v1430 = &v1260 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1533 = type metadata accessor for AffinityTagFeedGroupKnobs(0);
  v1561 = *(v1533 - 8);
  MEMORY[0x28223BE20](v1533);
  v1429 = &v1260 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1560 = type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs(0);
  v1532 = *(v1560 - 8);
  MEMORY[0x28223BE20](v1560);
  v1350 = &v1260 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v1428 = &v1260 - v25;
  v1531 = type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs(0);
  v1530 = *(v1531 - 8);
  MEMORY[0x28223BE20](v1531);
  v1425 = &v1260 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1559 = type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs(0);
  v1529 = *(v1559 - 8);
  MEMORY[0x28223BE20](v1559);
  v1347 = &v1260 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v1424 = &v1260 - v29;
  v1528 = type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs(0);
  v1527 = *(v1528 - 8);
  MEMORY[0x28223BE20](v1528);
  v1344 = &v1260 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v1423 = &v1260 - v32;
  v1557 = type metadata accessor for PuzzleArchiveTagFeedGroupKnobs(0);
  v1526 = *(v1557 - 8);
  MEMORY[0x28223BE20](v1557);
  v1342 = &v1260 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v1421 = &v1260 - v35;
  v1525 = type metadata accessor for PuzzleListTagFeedGroupKnobs(0);
  v1524 = *(v1525 - 8);
  MEMORY[0x28223BE20](v1525);
  v1340 = &v1260 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v1420 = &v1260 - v38;
  v1573 = type metadata accessor for SportsEventTopicTagFeedGroupKnobs(0);
  v1523 = *(v1573 - 8);
  MEMORY[0x28223BE20](v1573);
  v1337 = &v1260 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v1418 = &v1260 - v41;
  v1522 = type metadata accessor for SportsMastheadTagFeedGroupKnobs(0);
  v1521 = *(v1522 - 8);
  MEMORY[0x28223BE20](v1522);
  v1416 = &v1260 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1520 = type metadata accessor for DateRangeTagFeedGroupKnobs(0);
  v1519 = *(v1520 - 8);
  MEMORY[0x28223BE20](v1520);
  v1415 = &v1260 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1556 = type metadata accessor for RecentStoriesTagFeedGroupKnobs(0);
  v1518 = *(v1556 - 8);
  MEMORY[0x28223BE20](v1556);
  v1328 = &v1260 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v1477 = &v1260 - v46;
  sub_2186EDD04(0, &qword_280E912E0, MEMORY[0x277D32720]);
  MEMORY[0x28223BE20](v47 - 8);
  v1436 = &v1260 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v1435 = &v1260 - v50;
  MEMORY[0x28223BE20](v51);
  v1355 = &v1260 - v52;
  MEMORY[0x28223BE20](v53);
  v1413 = &v1260 - v54;
  MEMORY[0x28223BE20](v55);
  v1411 = &v1260 - v56;
  v1517 = type metadata accessor for ForYouTagFeedGroupKnobs(0);
  v1516 = *(v1517 - 8);
  MEMORY[0x28223BE20](v1517);
  v1327 = &v1260 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v1412 = &v1260 - v59;
  v1555 = type metadata accessor for HighlightsTagFeedGroupKnobs(0);
  v1515 = *(v1555 - 8);
  MEMORY[0x28223BE20](v1555);
  v1324 = &v1260 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v1409 = &v1260 - v62;
  v1514 = type metadata accessor for WeatherTagFeedGroupKnobs(0);
  v1513 = *(v1514 - 8);
  MEMORY[0x28223BE20](v1514);
  v1408 = &v1260 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1554 = type metadata accessor for SportsFavoritesTagFeedGroupKnobs(0);
  v1512 = *(v1554 - 8);
  MEMORY[0x28223BE20](v1554);
  v1322 = &v1260 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v1471 = &v1260 - v66;
  v1553 = type metadata accessor for SportsTopStoriesTagFeedGroupKnobs(0);
  v1511 = *(v1553 - 8);
  MEMORY[0x28223BE20](v1553);
  v1319 = &v1260 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v1406 = &v1260 - v69;
  v1510 = type metadata accessor for SportsScheduleTagFeedGroupKnobs(0);
  v1509 = *(v1510 - 8);
  MEMORY[0x28223BE20](v1510);
  v1317 = &v1260 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v1403 = &v1260 - v72;
  v1508 = type metadata accessor for SportsNavigationTagFeedGroupKnobs(0);
  v1507 = *(v1508 - 8);
  MEMORY[0x28223BE20](v1508);
  v1399 = &v1260 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1506 = type metadata accessor for SportsRecordTagFeedGroupKnobs(0);
  v1505 = *(v1506 - 8);
  MEMORY[0x28223BE20](v1506);
  v1398 = &v1260 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1552 = type metadata accessor for SportsEventArticlesTagFeedGroupKnobs(0);
  v1504 = *(v1552 - 8);
  MEMORY[0x28223BE20](v1552);
  v1313 = &v1260 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76);
  v1397 = &v1260 - v77;
  v1551 = type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs(0);
  v1503 = *(v1551 - 8);
  MEMORY[0x28223BE20](v1551);
  v1310 = &v1260 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v79);
  v1396 = &v1260 - v80;
  v1550 = type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs(0);
  v1502 = *(v1550 - 8);
  MEMORY[0x28223BE20](v1550);
  v1309 = &v1260 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82);
  v1392 = &v1260 - v83;
  v1549 = type metadata accessor for SportsEventInfoTagFeedGroupKnobs(0);
  v1501 = *(v1549 - 8);
  MEMORY[0x28223BE20](v1549);
  v1307 = &v1260 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v85);
  v1391 = &v1260 - v86;
  v1548 = type metadata accessor for SportsBoxScoresTagFeedGroupKnobs(0);
  v1500 = *(v1548 - 8);
  MEMORY[0x28223BE20](v1548);
  v1304 = &v1260 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v88);
  v1388 = &v1260 - v89;
  v1547 = type metadata accessor for SportsBracketTagFeedGroupKnobs(0);
  v1499 = *(v1547 - 8);
  MEMORY[0x28223BE20](v1547);
  v1303 = &v1260 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v91);
  v1386 = &v1260 - v92;
  v1546 = type metadata accessor for SportsStandingsTagFeedGroupKnobs(0);
  v1498 = *(v1546 - 8);
  MEMORY[0x28223BE20](v1546);
  v1300 = &v1260 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v94);
  v1383 = &v1260 - v95;
  v96 = sub_219BEF244();
  v1613 = *(v96 - 8);
  v1614 = v96;
  MEMORY[0x28223BE20](v96);
  v1358 = &v1260 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v98);
  v1353 = &v1260 - v99;
  MEMORY[0x28223BE20](v100);
  v1332 = &v1260 - v101;
  MEMORY[0x28223BE20](v102);
  v1296 = &v1260 - v103;
  sub_2186EDD04(0, &qword_280E916D0, MEMORY[0x277D324F0]);
  MEMORY[0x28223BE20](v104 - 8);
  v1357 = &v1260 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v106);
  v1490 = &v1260 - v107;
  MEMORY[0x28223BE20](v108);
  v1351 = &v1260 - v109;
  MEMORY[0x28223BE20](v110);
  v1489 = &v1260 - v111;
  MEMORY[0x28223BE20](v112);
  v1331 = &v1260 - v113;
  MEMORY[0x28223BE20](v114);
  v1478 = &v1260 - v115;
  MEMORY[0x28223BE20](v116);
  v1295 = &v1260 - v117;
  MEMORY[0x28223BE20](v118);
  v1454 = &v1260 - v119;
  v1572 = type metadata accessor for MySportsTopicTagFeedGroupKnobs(0);
  v1571 = *(v1572 - 8);
  MEMORY[0x28223BE20](v1572);
  v1380 = &v1260 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v121);
  v1381 = &v1260 - v122;
  v1497 = type metadata accessor for SportsLinksTagFeedGroupKnobs(0);
  v1496 = *(v1497 - 8);
  MEMORY[0x28223BE20](v1497);
  v1378 = &v1260 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1568 = type metadata accessor for SportsScoresTagFeedGroupKnobs(0);
  v1612 = *(v1568 - 8);
  MEMORY[0x28223BE20](v1568);
  v1290 = &v1260 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v125);
  v1377 = &v1260 - v126;
  MEMORY[0x28223BE20](v127);
  v1448 = &v1260 - v128;
  MEMORY[0x28223BE20](v129);
  v1376 = &v1260 - v130;
  v1545 = type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs(0);
  v1570 = *(v1545 - 8);
  MEMORY[0x28223BE20](v1545);
  v1285 = &v1260 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v132);
  v1374 = &v1260 - v133;
  v1544 = type metadata accessor for ChannelSectionTagFeedGroupKnobs(0);
  v1608 = *(v1544 - 8);
  MEMORY[0x28223BE20](v1544);
  v1283 = &v1260 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v135);
  v1372 = &v1260 - v136;
  v1543 = type metadata accessor for ArticleListTagFeedGroupKnobs(0);
  v1569 = *(v1543 - 8);
  MEMORY[0x28223BE20](v1543);
  v1280 = &v1260 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v138);
  v1371 = &v1260 - v139;
  v1443 = type metadata accessor for IssueListTagFeedGroupKnobs(0);
  v1495 = *(v1443 - 8);
  MEMORY[0x28223BE20](v1443);
  v1369 = &v1260 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1493 = type metadata accessor for PaywallTagFeedGroupKnobs(0);
  v1494 = *(v1493 - 8);
  MEMORY[0x28223BE20](v1493);
  v1368 = &v1260 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8(0);
  v143 = *(v142 - 8);
  v1624 = v142;
  v1625 = v143;
  MEMORY[0x28223BE20](v142);
  v1356 = &v1260 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v145);
  v1352 = &v1260 - v146;
  MEMORY[0x28223BE20](v147);
  v1348 = &v1260 - v148;
  MEMORY[0x28223BE20](v149);
  v1345 = &v1260 - v150;
  MEMORY[0x28223BE20](v151);
  v1341 = &v1260 - v152;
  MEMORY[0x28223BE20](v153);
  v1338 = &v1260 - v154;
  MEMORY[0x28223BE20](v155);
  v1335 = &v1260 - v156;
  MEMORY[0x28223BE20](v157);
  v1333 = &v1260 - v158;
  MEMORY[0x28223BE20](v159);
  v1329 = &v1260 - v160;
  MEMORY[0x28223BE20](v161);
  v1326 = &v1260 - v162;
  MEMORY[0x28223BE20](v163);
  v1323 = &v1260 - v164;
  MEMORY[0x28223BE20](v165);
  v1320 = &v1260 - v166;
  MEMORY[0x28223BE20](v167);
  v1318 = &v1260 - v168;
  MEMORY[0x28223BE20](v169);
  v1316 = &v1260 - v170;
  MEMORY[0x28223BE20](v171);
  v1314 = &v1260 - v172;
  MEMORY[0x28223BE20](v173);
  v1312 = &v1260 - v174;
  MEMORY[0x28223BE20](v175);
  v1308 = &v1260 - v176;
  MEMORY[0x28223BE20](v177);
  v1306 = &v1260 - v178;
  MEMORY[0x28223BE20](v179);
  v1305 = &v1260 - v180;
  MEMORY[0x28223BE20](v181);
  v1301 = &v1260 - v182;
  MEMORY[0x28223BE20](v183);
  v1299 = &v1260 - v184;
  MEMORY[0x28223BE20](v185);
  v1298 = &v1260 - v186;
  MEMORY[0x28223BE20](v187);
  v1294 = &v1260 - v188;
  MEMORY[0x28223BE20](v189);
  v1289 = &v1260 - v190;
  MEMORY[0x28223BE20](v191);
  v1287 = &v1260 - v192;
  MEMORY[0x28223BE20](v193);
  v1284 = &v1260 - v194;
  MEMORY[0x28223BE20](v195);
  v1282 = &v1260 - v196;
  MEMORY[0x28223BE20](v197);
  v1278 = &v1260 - v198;
  MEMORY[0x28223BE20](v199);
  v1277 = &v1260 - v200;
  MEMORY[0x28223BE20](v201);
  v1275 = &v1260 - v202;
  sub_2186EDD04(0, &qword_280E91A70, sub_2189AD5C8);
  MEMORY[0x28223BE20](v203 - 8);
  v1354 = &v1260 - ((v204 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v205);
  v1431 = &v1260 - v206;
  MEMORY[0x28223BE20](v207);
  v1349 = &v1260 - v208;
  MEMORY[0x28223BE20](v209);
  v1488 = &v1260 - v210;
  MEMORY[0x28223BE20](v211);
  v1346 = &v1260 - v212;
  MEMORY[0x28223BE20](v213);
  v1558 = &v1260 - v214;
  MEMORY[0x28223BE20](v215);
  v1343 = &v1260 - v216;
  MEMORY[0x28223BE20](v217);
  v1422 = &v1260 - v218;
  MEMORY[0x28223BE20](v219);
  v1339 = &v1260 - v220;
  MEMORY[0x28223BE20](v221);
  v1419 = &v1260 - v222;
  MEMORY[0x28223BE20](v223);
  v1336 = &v1260 - v224;
  MEMORY[0x28223BE20](v225);
  v1484 = &v1260 - v226;
  MEMORY[0x28223BE20](v227);
  v1334 = &v1260 - v228;
  MEMORY[0x28223BE20](v229);
  v1481 = &v1260 - v230;
  MEMORY[0x28223BE20](v231);
  v1330 = &v1260 - v232;
  MEMORY[0x28223BE20](v233);
  v1414 = &v1260 - v234;
  MEMORY[0x28223BE20](v235);
  v1475 = &v1260 - v236;
  MEMORY[0x28223BE20](v237);
  v1476 = &v1260 - v238;
  MEMORY[0x28223BE20](v239);
  v1325 = &v1260 - v240;
  MEMORY[0x28223BE20](v241);
  v1410 = &v1260 - v242;
  MEMORY[0x28223BE20](v243);
  v1321 = &v1260 - v244;
  MEMORY[0x28223BE20](v245);
  v1407 = &v1260 - v246;
  MEMORY[0x28223BE20](v247);
  v1405 = &v1260 - v248;
  MEMORY[0x28223BE20](v249);
  v1469 = &v1260 - v250;
  MEMORY[0x28223BE20](v251);
  v1400 = &v1260 - v252;
  MEMORY[0x28223BE20](v253);
  v1401 = &v1260 - v254;
  MEMORY[0x28223BE20](v255);
  v1315 = &v1260 - v256;
  MEMORY[0x28223BE20](v257);
  v1467 = &v1260 - v258;
  MEMORY[0x28223BE20](v259);
  v1311 = &v1260 - v260;
  MEMORY[0x28223BE20](v261);
  v1465 = &v1260 - v262;
  MEMORY[0x28223BE20](v263);
  v1394 = &v1260 - v264;
  MEMORY[0x28223BE20](v265);
  v1395 = &v1260 - v266;
  MEMORY[0x28223BE20](v267);
  v1389 = &v1260 - v268;
  MEMORY[0x28223BE20](v269);
  v1462 = &v1260 - v270;
  MEMORY[0x28223BE20](v271);
  v1387 = &v1260 - v272;
  MEMORY[0x28223BE20](v273);
  v1461 = &v1260 - v274;
  MEMORY[0x28223BE20](v275);
  v1302 = &v1260 - v276;
  MEMORY[0x28223BE20](v277);
  v1459 = &v1260 - v278;
  MEMORY[0x28223BE20](v279);
  v1382 = &v1260 - v280;
  MEMORY[0x28223BE20](v281);
  v1458 = &v1260 - v282;
  MEMORY[0x28223BE20](v283);
  v1297 = &v1260 - v284;
  MEMORY[0x28223BE20](v285);
  v1456 = &v1260 - v286;
  MEMORY[0x28223BE20](v287);
  v1292 = &v1260 - v288;
  MEMORY[0x28223BE20](v289);
  v1293 = &v1260 - v290;
  MEMORY[0x28223BE20](v291);
  v1291 = &v1260 - v292;
  MEMORY[0x28223BE20](v293);
  v1452 = &v1260 - v294;
  MEMORY[0x28223BE20](v295);
  v1288 = &v1260 - v296;
  MEMORY[0x28223BE20](v297);
  v1379 = &v1260 - v298;
  MEMORY[0x28223BE20](v299);
  v1286 = &v1260 - v300;
  MEMORY[0x28223BE20](v301);
  v1375 = &v1260 - v302;
  MEMORY[0x28223BE20](v303);
  v1281 = &v1260 - v304;
  MEMORY[0x28223BE20](v305);
  v1373 = &v1260 - v306;
  MEMORY[0x28223BE20](v307);
  v1279 = &v1260 - v308;
  MEMORY[0x28223BE20](v309);
  v1444 = &v1260 - v310;
  MEMORY[0x28223BE20](v311);
  v1367 = &v1260 - v312;
  MEMORY[0x28223BE20](v313);
  v1370 = &v1260 - v314;
  MEMORY[0x28223BE20](v315);
  v1366 = &v1260 - v316;
  MEMORY[0x28223BE20](v317);
  v1276 = &v1260 - v318;
  MEMORY[0x28223BE20](v319);
  v1623 = &v1260 - v320;
  MEMORY[0x28223BE20](v321);
  v1273 = &v1260 - v322;
  MEMORY[0x28223BE20](v323);
  v1364 = &v1260 - v324;
  v1442 = type metadata accessor for PromotedArticleListTagFeedGroupKnobs(0);
  v1492 = *(v1442 - 8);
  MEMORY[0x28223BE20](v1442);
  v1274 = &v1260 - ((v325 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v326);
  v1365 = &v1260 - v327;
  sub_2186EDD04(0, qword_280EADF38, type metadata accessor for TopicRecipesTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v328 - 8);
  v1491 = &v1260 - ((v329 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v330);
  v1534 = &v1260 - v331;
  sub_2186EDD04(0, qword_280EA4098, type metadata accessor for TrendingRecipesTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v332 - 8);
  v1427 = &v1260 - ((v333 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v334);
  v1603 = &v1260 - v335;
  sub_2186EDD04(0, qword_280EAF280, type metadata accessor for SavedRecipesTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v336 - 8);
  v1426 = &v1260 - ((v337 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v338);
  v1602 = &v1260 - v339;
  sub_2186EDD04(0, qword_280E98068, type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v340 - 8);
  v1487 = &v1260 - ((v341 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v342);
  v1601 = &v1260 - v343;
  sub_2186EDD04(0, qword_280EAC6F0, type metadata accessor for LatestRecipesTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v344 - 8);
  v1441 = &v1260 - ((v345 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v346);
  v1600 = &v1260 - v347;
  sub_2186EDD04(0, qword_280EAC9F0, type metadata accessor for ForYouRecipesTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v348 - 8);
  v1486 = &v1260 - ((v349 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v350);
  v1610 = &v1260 - v351;
  sub_2186EDD04(0, qword_280EA9BD8, type metadata accessor for ChannelRecipesTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v352 - 8);
  v1485 = &v1260 - ((v353 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v354);
  v1599 = &v1260 - v355;
  sub_2186EDD04(0, &qword_280EA4A98, type metadata accessor for SponsoredBannerTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v356 - 8);
  v1417 = &v1260 - ((v357 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v358);
  v1598 = &v1260 - v359;
  sub_2186EDD04(0, qword_280EBF9A0, type metadata accessor for AffinityTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v360 - 8);
  v1483 = &v1260 - ((v361 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v362);
  v1597 = &v1260 - v363;
  sub_2186EDD04(0, qword_280EA2608, type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v364 - 8);
  v1482 = &v1260 - ((v365 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v366);
  v1596 = &v1260 - v367;
  sub_2186EDD04(0, &qword_280E9F820, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v368 - 8);
  v1480 = &v1260 - ((v369 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v370);
  v1621 = &v1260 - v371;
  sub_2186EDD04(0, qword_280EA86A0, type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v372 - 8);
  v1479 = &v1260 - ((v373 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v374);
  v1595 = &v1260 - v375;
  sub_2186EDD04(0, qword_280E981F8, type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v376 - 8);
  v1474 = &v1260 - ((v377 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v378);
  v1594 = &v1260 - v379;
  sub_2186EDD04(0, qword_280EABA58, type metadata accessor for PuzzleArchiveTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v380 - 8);
  v1473 = &v1260 - ((v381 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v382);
  v1593 = &v1260 - v383;
  sub_2186EDD04(0, qword_280EB7648, type metadata accessor for PuzzleListTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v384 - 8);
  v1472 = &v1260 - ((v385 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v386);
  v1592 = &v1260 - v387;
  sub_2186EDD04(0, qword_280EA1DD8, type metadata accessor for SportsEventTopicTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v388 - 8);
  v1470 = &v1260 - ((v389 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v390);
  v1591 = &v1260 - v391;
  sub_2186EDD04(0, &qword_280EA8080, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v392 - 8);
  v1404 = &v1260 - ((v393 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v394);
  v1590 = &v1260 - v395;
  sub_2186EDD04(0, qword_280EBB968, type metadata accessor for DateRangeTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v396 - 8);
  v1402 = &v1260 - ((v397 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v398);
  v1589 = &v1260 - v399;
  sub_2186EDD04(0, qword_280EAB8E8, type metadata accessor for RecentStoriesTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v400 - 8);
  v1468 = &v1260 - ((v401 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v402);
  v1588 = &v1260 - v403;
  sub_2186EDD04(0, qword_280EC4D68, type metadata accessor for ForYouTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v404 - 8);
  v1466 = &v1260 - ((v405 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v406);
  v1609 = &v1260 - v407;
  sub_2186EDD04(0, qword_280EB87C0, type metadata accessor for HighlightsTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v408 - 8);
  v1464 = &v1260 - ((v409 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v410);
  v1587 = &v1260 - v411;
  sub_2186EDD04(0, &qword_280EBFB10, type metadata accessor for WeatherTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v412 - 8);
  v1393 = &v1260 - ((v413 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v414);
  v1617 = &v1260 - v415;
  sub_2186EDD04(0, qword_280EA4788, type metadata accessor for SportsFavoritesTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v416 - 8);
  v1463 = &v1260 - ((v417 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v418);
  v1586 = &v1260 - v419;
  sub_2186EDD04(0, qword_280EA18A0, type metadata accessor for SportsTopStoriesTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v420 - 8);
  v1390 = &v1260 - ((v421 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v422);
  v1585 = &v1260 - v423;
  sub_2186EDD04(0, qword_280EA7F10, type metadata accessor for SportsScheduleTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v424 - 8);
  v1460 = &v1260 - ((v425 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v426);
  v1584 = &v1260 - v427;
  sub_2186EDD04(0, &qword_280EA1AF0, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v428 - 8);
  v1385 = &v1260 - ((v429 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v430);
  v1583 = &v1260 - v431;
  sub_2186EDD04(0, &qword_280EAEC50, type metadata accessor for SportsRecordTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v432 - 8);
  v1384 = &v1260 - ((v433 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v434);
  v1582 = &v1260 - v435;
  sub_2186EDD04(0, qword_280EAC298, type metadata accessor for MySportsTopicTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v436 - 8);
  v1446 = &v1260 - ((v437 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v438);
  v1620 = &v1260 - v439;
  sub_2186EDD04(0, qword_280E9A708, type metadata accessor for SportsEventArticlesTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v440 - 8);
  v1457 = &v1260 - ((v441 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v442);
  v1581 = &v1260 - v443;
  sub_2186EDD04(0, qword_280EA1D08, type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v444 - 8);
  v1455 = &v1260 - ((v445 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v446);
  v1622 = &v1260 - v447;
  sub_2186EDD04(0, qword_280E9A648, type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v448 - 8);
  v1453 = &v1260 - ((v449 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v450);
  v1580 = &v1260 - v451;
  sub_2186EDD04(0, qword_280EA4848, type metadata accessor for SportsEventInfoTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v452 - 8);
  v1451 = &v1260 - ((v453 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v454);
  v1616 = &v1260 - v455;
  sub_2186EDD04(0, qword_280EA49D8, type metadata accessor for SportsBoxScoresTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v456 - 8);
  v1450 = &v1260 - ((v457 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v458);
  v1619 = &v1260 - v459;
  sub_2186EDD04(0, qword_280EAB210, type metadata accessor for SportsBracketTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v460 - 8);
  v1449 = &v1260 - ((v461 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v462);
  v1579 = &v1260 - v463;
  sub_2186EDD04(0, qword_280EA46C0, type metadata accessor for SportsStandingsTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v464 - 8);
  v1447 = &v1260 - ((v465 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v466);
  v1578 = &v1260 - v467;
  sub_2186EDD04(0, qword_280EB2970, type metadata accessor for SportsLinksTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v468 - 8);
  v1445 = &v1260 - ((v469 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v470);
  v1618 = &v1260 - v471;
  sub_2186EDD04(0, qword_280EAE9A8, type metadata accessor for SportsScoresTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v472 - 8);
  v474 = &v1260 - ((v473 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v475);
  v477 = &v1260 - v476;
  MEMORY[0x28223BE20](v478);
  v1576 = &v1260 - v479;
  MEMORY[0x28223BE20](v480);
  v1577 = &v1260 - v481;
  sub_2186EDD04(0, qword_280E965F8, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v482 - 8);
  v484 = &v1260 - ((v483 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v485);
  v1575 = &v1260 - v486;
  sub_2186EDD04(0, qword_280EA9B18, type metadata accessor for ChannelSectionTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v487 - 8);
  v489 = &v1260 - ((v488 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v490);
  v1574 = &v1260 - v491;
  sub_2186EDD04(0, qword_280EB5908, type metadata accessor for ArticleListTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v492 - 8);
  v494 = &v1260 - ((v493 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v495);
  v497 = &v1260 - v496;
  sub_2186EDD04(0, &qword_280EBB648, type metadata accessor for IssueListTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v498 - 8);
  v500 = &v1260 - ((v499 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v501);
  v503 = &v1260 - v502;
  sub_2186EDD04(0, qword_280EC0C60, type metadata accessor for PaywallTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v504 - 8);
  v506 = &v1260 - ((v505 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v507);
  v509 = &v1260 - v508;
  sub_2186EDD04(0, qword_280E9ACF8, type metadata accessor for PromotedArticleListTagFeedGroupKnobs);
  MEMORY[0x28223BE20](v510 - 8);
  v517 = MEMORY[0x28223BE20](v511);
  if (v1626)
  {
    v518 = v1626;
    v519 = v1567;
  }

  else
  {
    v1262 = v506;
    v1263 = v500;
    v1265 = v494;
    v1266 = v489;
    v1267 = v484;
    v1268 = v477;
    v1269 = v474;
    v520 = v1492;
    v521 = &v1260 - v515;
    v522 = v516;
    v523 = v1442;
    (*(v1492 + 56))(&v1260 - v515, 1, 1, v1442, v517);
    v524 = *(v1494 + 56);
    v1270 = v509;
    v524(v509, 1, 1, v1493);
    v525 = *(v1495 + 56);
    v1271 = v503;
    v526 = v503;
    v527 = v1443;
    v525(v526, 1, 1, v1443);
    v528 = *(v1569 + 56);
    v1272 = v497;
    v528(v497, 1, 1, v1543);
    (*(v1608 + 56))(v1574, 1, 1, v1544);
    (*(v1570 + 56))(v1575, 1, 1, v1545);
    v529 = v1612[7];
    v530 = v1568;
    v529(v1577, 1, 1, v1568);
    v529(v1576, 1, 1, v530);
    v531 = v522;
    (*(v1496 + 56))(v1618, 1, 1, v1497);
    (*(v1498 + 56))(v1578, 1, 1, v1546);
    (*(v1499 + 56))(v1579, 1, 1, v1547);
    (*(v1500 + 56))(v1619, 1, 1, v1548);
    (*(v1501 + 56))(v1616, 1, 1, v1549);
    (*(v1502 + 56))(v1580, 1, 1, v1550);
    (*(v1503 + 56))(v1622, 1, 1, v1551);
    (*(v1504 + 56))(v1581, 1, 1, v1552);
    (*(v1571 + 56))(v1620, 1, 1, v1572);
    (*(v1505 + 56))(v1582, 1, 1, v1506);
    (*(v1507 + 56))(v1583, 1, 1, v1508);
    (*(v1509 + 56))(v1584, 1, 1, v1510);
    (*(v1511 + 56))(v1585, 1, 1, v1553);
    (*(v1512 + 56))(v1586, 1, 1, v1554);
    (*(v1513 + 56))(v1617, 1, 1, v1514);
    (*(v1515 + 56))(v1587, 1, 1, v1555);
    (*(v1516 + 56))(v1609, 1, 1, v1517);
    (*(v1518 + 56))(v1588, 1, 1, v1556);
    (*(v1519 + 56))(v1589, 1, 1, v1520);
    (*(v1521 + 56))(v1590, 1, 1, v1522);
    (*(v1523 + 56))(v1591, 1, 1, v1573);
    (*(v1524 + 56))(v1592, 1, 1, v1525);
    (*(v1526 + 56))(v1593, 1, 1, v1557);
    (*(v1527 + 56))(v1594, 1, 1, v1528);
    (*(v1529 + 56))(v1595, 1, 1, v1559);
    (*(v1530 + 56))(v1621, 1, 1, v1531);
    (*(v1532 + 56))(v1596, 1, 1, v1560);
    (*(v1561 + 56))(v1597, 1, 1, v1533);
    (*(v1535 + 56))(v1598, 1, 1, v1536);
    (*(v1604 + 56))(v1599, 1, 1, v1562);
    (*(v1537 + 56))(v1610, 1, 1, v1605);
    (*(v1611 + 56))(v1600, 1, 1, v1606);
    (*(v1538 + 56))(v1601, 1, 1, v1615);
    (*(v1539 + 56))(v1602, 1, 1, v1540);
    (*(v1541 + 56))(v1603, 1, 1, v1542);
    (*(v1607 + 56))(v1534, 1, 1, v1563);
    type metadata accessor for TagFeedGroupKnobs(0);
    v1626 = swift_allocObject();
    v1264 = v521;
    sub_2190E9A34(v521, v522, qword_280E9ACF8, type metadata accessor for PromotedArticleListTagFeedGroupKnobs);
    v534 = *(v520 + 48);
    v532 = v520 + 48;
    v533 = v534;
    if (v534(v531, 1, v523) == 1)
    {
      v1261 = v531;
      v1492 = v532;
      v536 = v1624;
      v535 = v1625;
      v537 = v1364;
      (*(v1625 + 56))(v1364, 1, 1, v1624);
      v538 = v537;
      v539 = v1273;
      sub_2190E9A34(v538, v1273, &qword_280E91A70, sub_2189AD5C8);
      v540 = *(v535 + 48);
      if (v540(v539, 1, v536) == 1)
      {
        type metadata accessor for TagFeedServiceConfig(0);
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
        v541 = v1275;
        sub_219BEE974();
        v542 = v540(v539, 1, v536);
        v543 = v1270;
        if (v542 != 1)
        {
          sub_2190E9AA0(v539, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v541 = v1275;
        (*(v535 + 32))(v1275, v539, v536);
        v543 = v1270;
      }

      v548 = *(v535 + 32);
      v549 = v1274;
      v548(v1274, v541, v536);
      v1627 = 0x7FFFFFFFFFFFFFFFLL;
      sub_2186F9548();
      swift_allocObject();
      v550 = sub_219BEF534();
      sub_2190E9AA0(v1364, &qword_280E91A70, sub_2189AD5C8);
      v551 = v1442;
      *(v549 + *(v1442 + 20)) = v550;
      *(v549 + *(v551 + 24)) = 0;
      v546 = v1365;
      sub_2190E9AFC(v549, v1365, type metadata accessor for PromotedArticleListTagFeedGroupKnobs);
      v552 = v1261;
      v553 = v533(v1261, 1, v551);
      v544 = v1443;
      v547 = v1262;
      if (v553 != 1)
      {
        sub_2190E9AA0(v552, qword_280E9ACF8, type metadata accessor for PromotedArticleListTagFeedGroupKnobs);
      }
    }

    else
    {
      v544 = v527;
      v545 = v531;
      v546 = v1365;
      sub_2190E9AFC(v545, v1365, type metadata accessor for PromotedArticleListTagFeedGroupKnobs);
      v543 = v1270;
      v547 = v1262;
    }

    v554 = v1626;
    sub_2190E9AFC(v546, v1626 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_promotedArticleListKnobs, type metadata accessor for PromotedArticleListTagFeedGroupKnobs);
    sub_2190E9A34(v543, v547, qword_280EC0C60, type metadata accessor for PaywallTagFeedGroupKnobs);
    v555 = *(v1494 + 48);
    v556 = v1493;
    v557 = v555(v547, 1, v1493);
    v558 = v1623;
    v559 = v1369;
    v560 = v1263;
    if (v557 == 1)
    {
      (*(v1625 + 56))(v1623, 1, 1, v1624);
      v561 = v1368;
      sub_219686328(v558, 0, 1, v1368);
      v562 = v555(v547, 1, v556);
      v563 = v1543;
      v564 = v1265;
      if (v562 != 1)
      {
        sub_2190E9AA0(v547, qword_280EC0C60, type metadata accessor for PaywallTagFeedGroupKnobs);
      }
    }

    else
    {
      v561 = v1368;
      sub_2190E9AFC(v547, v1368, type metadata accessor for PaywallTagFeedGroupKnobs);
      v563 = v1543;
      v564 = v1265;
    }

    v565 = v554;
    sub_2190E9AFC(v561, v554 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_paywallKnobs, type metadata accessor for PaywallTagFeedGroupKnobs);
    sub_2190E9A34(v1271, v560, &qword_280EBB648, type metadata accessor for IssueListTagFeedGroupKnobs);
    v566 = *(v1495 + 48);
    v567 = v566(v560, 1, v544);
    v568 = v1569;
    if (v567 == 1)
    {
      v569 = v1623;
      (*(v1625 + 56))(v1623, 1, 1, v1624);
      sub_2189AD728(v569, v559);
      v570 = v566(v560, 1, v544);
      v571 = v1618;
      v572 = v1366;
      v573 = v1620;
      if (v570 != 1)
      {
        sub_2190E9AA0(v560, &qword_280EBB648, type metadata accessor for IssueListTagFeedGroupKnobs);
      }
    }

    else
    {
      sub_2190E9AFC(v560, v559, type metadata accessor for IssueListTagFeedGroupKnobs);
      v571 = v1618;
      v572 = v1366;
      v573 = v1620;
    }

    sub_2190E9AFC(v559, v565 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_issueListKnobs, type metadata accessor for IssueListTagFeedGroupKnobs);
    sub_2190E9A34(v1272, v564, qword_280EB5908, type metadata accessor for ArticleListTagFeedGroupKnobs);
    v576 = *(v568 + 48);
    v575 = v568 + 48;
    v574 = v576;
    if (v576(v564, 1, v563) == 1)
    {
      v577 = v574;
      v579 = v1624;
      v578 = v1625;
      v580 = v1276;
      (*(v1625 + 56))(v1276, 1, 1, v1624);
      sub_2190E9A34(v580, v572, &qword_280E91A70, sub_2189AD5C8);
      v581 = *(v578 + 48);
      v582 = v581(v572, 1, v579);
      v1569 = v575;
      if (v582 == 1)
      {
        type metadata accessor for TagFeedServiceConfig(0);
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
        v583 = v1277;
        sub_219BEE974();
        v584 = v581(v572, 1, v579) == 1;
        v585 = v572;
        v586 = v1280;
        if (!v584)
        {
          sub_2190E9AA0(v585, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v583 = v1277;
        (*(v578 + 32))(v1277, v572, v579);
        v586 = v1280;
      }

      (*(v578 + 32))(v586, v583, v579);
      v1627 = 6;
      sub_2186F9548();
      swift_allocObject();
      v589 = sub_219BEF534();
      v590 = v1543;
      *(v586 + *(v1543 + 20)) = v589;
      LOBYTE(v1627) = 0;
      sub_2190E9B64(0);
      swift_allocObject();
      *(v586 + v590[6]) = sub_219BEF534();
      LOBYTE(v1627) = 1;
      sub_2186F95C4();
      swift_allocObject();
      *(v586 + v590[7]) = sub_219BEF534();
      v1627 = 0;
      sub_2186ECA28();
      swift_allocObject();
      *(v586 + v590[8]) = sub_219BEF534();
      v1627 = 0x7FEFFFFFFFFFFFFFLL;
      swift_allocObject();
      v591 = sub_219BEF534();
      sub_2190E9AA0(v580, &qword_280E91A70, sub_2189AD5C8);
      *(v586 + v590[9]) = v591;
      *(v586 + v590[10]) = 0;
      v587 = v1371;
      sub_2190E9AFC(v586, v1371, type metadata accessor for ArticleListTagFeedGroupKnobs);
      v592 = v1265;
      v593 = v577(v1265, 1, v590);
      v573 = v1620;
      v571 = v1618;
      v588 = v1266;
      if (v593 != 1)
      {
        sub_2190E9AA0(v592, qword_280EB5908, type metadata accessor for ArticleListTagFeedGroupKnobs);
      }
    }

    else
    {
      v587 = v1371;
      sub_2190E9AFC(v564, v1371, type metadata accessor for ArticleListTagFeedGroupKnobs);
      v588 = v1266;
    }

    sub_2190E9AFC(v587, v565 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_articleListKnobs, type metadata accessor for ArticleListTagFeedGroupKnobs);
    *(v565 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_curatedKnobs) = sub_2194AF724(MEMORY[0x277D84F90]);
    sub_2190E9A34(v1574, v588, qword_280EA9B18, type metadata accessor for ChannelSectionTagFeedGroupKnobs);
    v594 = *(v1608 + 48);
    v1608 += 48;
    v595 = v594(v588, 1, v1544);
    v596 = v1625;
    v597 = v1370;
    v598 = v1367;
    if (v595 == 1)
    {
      v1569 = v594;
      v599 = v1624;
      (*(v1625 + 56))(v1370, 1, 1, v1624);
      sub_2190E9A34(v597, v598, &qword_280E91A70, sub_2189AD5C8);
      v600 = *(v596 + 48);
      if (v600(v598, 1, v599) == 1)
      {
        type metadata accessor for TagFeedServiceConfig(0);
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
        v601 = v1278;
        sub_219BEE974();
        v602 = v600(v598, 1, v599);
        v603 = v1283;
        if (v602 != 1)
        {
          sub_2190E9AA0(v598, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v601 = v1278;
        (*(v596 + 32))(v1278, v598, v599);
        v603 = v1283;
      }

      (*(v596 + 32))(v603, v601, v599);
      v1627 = 1;
      sub_2186F9548();
      swift_allocObject();
      v608 = sub_219BEF534();
      v609 = v1544;
      *(v603 + *(v1544 + 20)) = v608;
      v1627 = 5;
      swift_allocObject();
      *(v603 + v609[6]) = sub_219BEF534();
      v1627 = 1;
      swift_allocObject();
      *(v603 + v609[7]) = sub_219BEF534();
      v1627 = 0x7FFFFFFFFFFFFFFFLL;
      swift_allocObject();
      *(v603 + v609[8]) = sub_219BEF534();
      sub_219BF5CE4();
      v1627 = v610;
      sub_2186ECA28();
      swift_allocObject();
      *(v603 + v609[9]) = sub_219BEF534();
      sub_219BF5D04();
      v1627 = v611;
      swift_allocObject();
      *(v603 + v609[10]) = sub_219BEF534();
      LOBYTE(v1627) = 0;
      sub_2190E9CE4(0);
      swift_allocObject();
      *(v603 + v609[11]) = sub_219BEF534();
      v1627 = 0;
      v1628 = 0xE000000000000000;
      sub_2190E9E64();
      swift_allocObject();
      v612 = sub_219BEF534();
      sub_2190E9AA0(v597, &qword_280E91A70, sub_2189AD5C8);
      *(v603 + v609[12]) = v612;
      v604 = v1372;
      sub_2190E9AFC(v603, v1372, type metadata accessor for ChannelSectionTagFeedGroupKnobs);
      v613 = v1266;
      v614 = (v1569)(v1266, 1, v609);
      v573 = v1620;
      v571 = v1618;
      v607 = v1575;
      v605 = v1444;
      v606 = v1570;
      if (v614 != 1)
      {
        sub_2190E9AA0(v613, qword_280EA9B18, type metadata accessor for ChannelSectionTagFeedGroupKnobs);
      }
    }

    else
    {
      v604 = v1372;
      sub_2190E9AFC(v588, v1372, type metadata accessor for ChannelSectionTagFeedGroupKnobs);
      v605 = v1444;
      v606 = v1570;
      v607 = v1575;
    }

    sub_2190E9AFC(v604, v565 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_channelSectionGroupKnobs, type metadata accessor for ChannelSectionTagFeedGroupKnobs);
    v615 = v607;
    v616 = v1267;
    sub_2190E9A34(v615, v1267, qword_280E965F8, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
    v619 = *(v606 + 48);
    v618 = v606 + 48;
    v617 = v619;
    if (v619(v616, 1, v1545) == 1)
    {
      v620 = v1624;
      (*(v596 + 56))(v605, 1, 1, v1624);
      v621 = v1279;
      sub_2190E9A34(v605, v1279, &qword_280E91A70, sub_2189AD5C8);
      v622 = *(v596 + 48);
      v623 = v622(v621, 1, v620);
      v1570 = v618;
      if (v623 == 1)
      {
        type metadata accessor for TagFeedServiceConfig(0);
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
        v624 = v1282;
        sub_219BEE974();
        v625 = v622(v621, 1, v620);
        v626 = v1612;
        v627 = v1285;
        if (v625 != 1)
        {
          sub_2190E9AA0(v621, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v624 = v1282;
        (*(v596 + 32))(v1282, v621, v620);
        v626 = v1612;
        v627 = v1285;
      }

      v596 = v1625;
      (*(v1625 + 32))(v627, v624, v620);
      v1627 = 3;
      sub_2186F9548();
      swift_allocObject();
      v630 = sub_219BEF534();
      v631 = v1545;
      *(v627 + *(v1545 + 20)) = v630;
      v1627 = 0x7FFFFFFFFFFFFFFFLL;
      swift_allocObject();
      v632 = sub_219BEF534();
      sub_2190E9AA0(v1444, &qword_280E91A70, sub_2189AD5C8);
      *(v627 + *(v631 + 24)) = v632;
      v633 = v1374;
      sub_2190E9AFC(v627, v1374, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
      v634 = v1267;
      v635 = v617(v1267, 1, v631);
      v628 = v633;
      v573 = v1620;
      v571 = v1618;
      v629 = v1268;
      if (v635 != 1)
      {
        sub_2190E9AA0(v634, qword_280E965F8, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
      }
    }

    else
    {
      v628 = v1374;
      sub_2190E9AFC(v616, v1374, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
      v626 = v1612;
      v629 = v1268;
    }

    sub_2190E9AFC(v628, v565 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_channelSectionDirectoryGroupKnobs, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
    sub_2190E9A34(v1577, v629, qword_280EAE9A8, type metadata accessor for SportsScoresTagFeedGroupKnobs);
    v1608 = v626[6];
    v636 = (v1608)(v629, 1, v1568);
    v637 = v1619;
    v1612 = v626 + 6;
    if (v636 == 1)
    {
      v638 = v1373;
      v639 = v1624;
      (*(v596 + 56))(v1373, 1, 1, v1624);
      v640 = v1281;
      sub_2190E9A34(v638, v1281, &qword_280E91A70, sub_2189AD5C8);
      v641 = *(v596 + 48);
      if (v641(v640, 1, v639) == 1)
      {
        type metadata accessor for TagFeedServiceConfig(0);
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
        v642 = v1284;
        sub_219BEE974();
        v643 = v641(v640, 1, v639);
        v644 = v1448;
        v645 = v1568;
        if (v643 != 1)
        {
          sub_2190E9AA0(v640, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v642 = v1284;
        (*(v596 + 32))(v1284, v640, v639);
        v644 = v1448;
        v645 = v1568;
      }

      (*(v1625 + 32))(v644, v642, v639);
      v1627 = 0x7FFFFFFFFFFFFFFFLL;
      sub_2186F9548();
      swift_allocObject();
      *&v644[v645[5]] = sub_219BEF534();
      v1627 = 1;
      swift_allocObject();
      *&v644[v645[6]] = sub_219BEF534();
      sub_218D554B0(0);
      swift_allocObject();
      v1570 = sub_219BEF274();
      sub_218D55534(0);
      swift_allocObject();
      v649 = sub_219BEF274();
      v1627 = 0;
      sub_218D556B4(0);
      swift_allocObject();
      v650 = sub_219BEF534();
      LOBYTE(v1627) = 1;
      sub_2186F95C4();
      swift_allocObject();
      v651 = sub_219BEF534();
      v652 = &v1448[v645[7]];
      *v652 = v1570;
      v652[1] = v649;
      v652[2] = v650;
      v652[3] = v651;
      swift_allocObject();
      v653 = sub_219BEF274();
      swift_allocObject();
      v654 = sub_219BEF274();
      v1627 = 0;
      v648 = v645;
      swift_allocObject();
      v655 = sub_219BEF534();
      LOBYTE(v1627) = 1;
      swift_allocObject();
      v656 = sub_219BEF534();
      v657 = v1448;
      v658 = &v1448[v645[8]];
      *v658 = v653;
      v658[1] = v654;
      v658[2] = v655;
      v658[3] = v656;
      LOBYTE(v1627) = 1;
      swift_allocObject();
      *(v657 + v645[9]) = sub_219BEF534();
      v1627 = 14;
      swift_allocObject();
      *(v657 + v645[10]) = sub_219BEF534();
      LOBYTE(v1627) = 1;
      sub_218D528A0(0);
      swift_allocObject();
      *(v657 + v645[11]) = sub_219BEF534();
      v659 = sub_219BF1F54();
      sub_218C3DB88(v659);

      sub_218BE9934(0);
      swift_allocObject();
      *(v657 + v645[12]) = sub_219BEEE04();
      swift_allocObject();
      v660 = sub_219BEEE04();
      sub_2190E9AA0(v1373, &qword_280E91A70, sub_2189AD5C8);
      *(v657 + v645[13]) = v660;
      v646 = v1376;
      sub_2190E9AFC(v657, v1376, type metadata accessor for SportsScoresTagFeedGroupKnobs);
      v661 = v1268;
      v662 = (v1608)(v1268, 1, v648);
      v565 = v1626;
      v637 = v1619;
      v573 = v1620;
      v571 = v1618;
      v647 = v1445;
      if (v662 != 1)
      {
        sub_2190E9AA0(v661, qword_280EAE9A8, type metadata accessor for SportsScoresTagFeedGroupKnobs);
      }
    }

    else
    {
      v646 = v1376;
      sub_2190E9AFC(v629, v1376, type metadata accessor for SportsScoresTagFeedGroupKnobs);
      v647 = v1445;
      v648 = v1568;
    }

    sub_2190E9AFC(v646, v565 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsScoresKnobs, type metadata accessor for SportsScoresTagFeedGroupKnobs);
    v663 = v1269;
    sub_2190E9A34(v1576, v1269, qword_280EAE9A8, type metadata accessor for SportsScoresTagFeedGroupKnobs);
    if ((v1608)(v663, 1, v648) == 1)
    {
      v665 = v1624;
      v664 = v1625;
      v666 = v1375;
      (*(v1625 + 56))(v1375, 1, 1, v1624);
      v667 = v1286;
      sub_2190E9A34(v666, v1286, &qword_280E91A70, sub_2189AD5C8);
      v668 = *(v664 + 48);
      if (v668(v667, 1, v665) == 1)
      {
        type metadata accessor for TagFeedServiceConfig(0);
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
        v669 = v1287;
        sub_219BEE974();
        v670 = v668(v667, 1, v665);
        v671 = v1290;
        if (v670 != 1)
        {
          sub_2190E9AA0(v667, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v669 = v1287;
        (*(v664 + 32))(v1287, v667, v665);
        v671 = v1290;
      }

      (*(v664 + 32))(v671, v669, v665);
      v1627 = 0x7FFFFFFFFFFFFFFFLL;
      sub_2186F9548();
      swift_allocObject();
      *(v671 + v648[5]) = sub_219BEF534();
      v1627 = 1;
      swift_allocObject();
      *(v671 + v648[6]) = sub_219BEF534();
      sub_218D554B0(0);
      swift_allocObject();
      v1570 = sub_219BEF274();
      sub_218D55534(0);
      swift_allocObject();
      v1569 = sub_219BEF274();
      v1627 = 0;
      sub_218D556B4(0);
      swift_allocObject();
      v673 = sub_219BEF534();
      LOBYTE(v1627) = 1;
      sub_2186F95C4();
      swift_allocObject();
      v674 = sub_219BEF534();
      v675 = (v671 + v648[7]);
      v676 = v1569;
      *v675 = v1570;
      v675[1] = v676;
      v675[2] = v673;
      v675[3] = v674;
      swift_allocObject();
      v677 = sub_219BEF274();
      swift_allocObject();
      v678 = sub_219BEF274();
      v1627 = 0;
      swift_allocObject();
      v679 = sub_219BEF534();
      LOBYTE(v1627) = 1;
      swift_allocObject();
      v680 = sub_219BEF534();
      v681 = (v671 + v648[8]);
      *v681 = v677;
      v681[1] = v678;
      v681[2] = v679;
      v681[3] = v680;
      LOBYTE(v1627) = 1;
      swift_allocObject();
      *(v671 + v648[9]) = sub_219BEF534();
      v1627 = 14;
      swift_allocObject();
      *(v671 + v648[10]) = sub_219BEF534();
      LOBYTE(v1627) = 1;
      sub_218D528A0(0);
      swift_allocObject();
      *(v671 + v648[11]) = sub_219BEF534();
      v682 = sub_219BF1F54();
      sub_218C3DB88(v682);

      sub_218BE9934(0);
      swift_allocObject();
      *(v671 + v648[12]) = sub_219BEEE04();
      swift_allocObject();
      v683 = sub_219BEEE04();
      sub_2190E9AA0(v1375, &qword_280E91A70, sub_2189AD5C8);
      *(v671 + v648[13]) = v683;
      v672 = v1377;
      sub_2190E9AFC(v671, v1377, type metadata accessor for SportsScoresTagFeedGroupKnobs);
      v684 = v1269;
      v685 = (v1608)(v1269, 1, v648);
      v565 = v1626;
      v637 = v1619;
      v573 = v1620;
      v571 = v1618;
      v647 = v1445;
      if (v685 != 1)
      {
        sub_2190E9AA0(v684, qword_280EAE9A8, type metadata accessor for SportsScoresTagFeedGroupKnobs);
      }
    }

    else
    {
      v672 = v1377;
      sub_2190E9AFC(v663, v1377, type metadata accessor for SportsScoresTagFeedGroupKnobs);
    }

    sub_2190E9AFC(v672, v565 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsScoresCondensedKnobs, type metadata accessor for SportsScoresTagFeedGroupKnobs);
    sub_2190E9A34(v571, v647, qword_280EB2970, type metadata accessor for SportsLinksTagFeedGroupKnobs);
    v686 = *(v1496 + 48);
    v687 = v1497;
    if (v686(v647, 1, v1497) == 1)
    {
      v688 = v647;
      v689 = v1623;
      (*(v1625 + 56))(v1623, 1, 1, v1624);
      v690 = v1378;
      sub_218B5BC90(v689, MEMORY[0x277D84F90], v1378);
      v691 = v686(v688, 1, v687);
      v692 = v1622;
      v693 = v1447;
      if (v691 != 1)
      {
        sub_2190E9AA0(v688, qword_280EB2970, type metadata accessor for SportsLinksTagFeedGroupKnobs);
      }
    }

    else
    {
      v690 = v1378;
      sub_2190E9AFC(v647, v1378, type metadata accessor for SportsLinksTagFeedGroupKnobs);
      v692 = v1622;
      v693 = v1447;
    }

    sub_2190E9AFC(v690, v565 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsLinksKnobs, type metadata accessor for SportsLinksTagFeedGroupKnobs);
    v694 = v1446;
    sub_2190E9A34(v573, v1446, qword_280EAC298, type metadata accessor for MySportsTopicTagFeedGroupKnobs);
    v696 = v1571 + 48;
    v695 = *(v1571 + 48);
    if ((v695)(v694, 1, v1572) == 1)
    {
      v1612 = v695;
      v697 = v1624;
      v698 = v1625;
      v699 = v1379;
      (*(v1625 + 56))(v1379, 1, 1, v1624);
      (*(v1613 + 56))(v1454, 1, 1, v1614);
      v700 = v1288;
      sub_2190E9A34(v699, v1288, &qword_280E91A70, sub_2189AD5C8);
      v701 = *(v698 + 48);
      v702 = v701(v700, 1, v697);
      v1571 = v696;
      if (v702 == 1)
      {
        type metadata accessor for TagFeedServiceConfig(0);
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
        v703 = v1289;
        sub_219BEE974();
        v704 = v701(v700, 1, v697);
        v705 = v1380;
        if (v704 != 1)
        {
          sub_2190E9AA0(v700, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v703 = v1289;
        (*(v698 + 32))(v1289, v700, v697);
        v705 = v1380;
      }

      (*(v1625 + 32))(v705, v703, v697);
      v1627 = 1;
      sub_2186F9548();
      swift_allocObject();
      v710 = sub_219BEF534();
      v711 = v1572;
      *&v705[*(v1572 + 24)] = v710;
      v1627 = 5;
      swift_allocObject();
      *&v705[v711[5]] = sub_219BEF534();
      LOBYTE(v1627) = 1;
      sub_2186F95C4();
      swift_allocObject();
      *&v705[v711[7]] = sub_219BEF534();
      v1627 = 0;
      sub_2186ECA28();
      swift_allocObject();
      *&v705[v711[8]] = sub_219BEF534();
      v1627 = 0x40E5180000000000;
      swift_allocObject();
      *&v705[v711[9]] = sub_219BEF534();
      v1627 = 30;
      swift_allocObject();
      *&v705[v711[10]] = sub_219BEF534();
      LOBYTE(v1627) = 1;
      sub_218D525A0(0);
      swift_allocObject();
      *&v705[v711[11]] = sub_219BEF534();
      v1627 = 1;
      swift_allocObject();
      *&v705[v711[12]] = sub_219BEF534();
      v1627 = 5;
      swift_allocObject();
      *&v705[v711[13]] = sub_219BEF534();
      LOBYTE(v1627) = 1;
      swift_allocObject();
      *&v705[v711[14]] = sub_219BEF534();
      v1627 = 1;
      swift_allocObject();
      *&v705[v711[15]] = sub_219BEF534();
      v1627 = 0x7FFFFFFFFFFFFFFFLL;
      swift_allocObject();
      *&v705[v711[16]] = sub_219BEF534();
      sub_218D554B0(0);
      swift_allocObject();
      v712 = sub_219BEF274();
      sub_218D55534(0);
      swift_allocObject();
      v713 = sub_219BEF274();
      v1627 = 0;
      sub_218D556B4(0);
      swift_allocObject();
      v714 = sub_219BEF534();
      LOBYTE(v1627) = 1;
      swift_allocObject();
      v715 = sub_219BEF534();
      v716 = &v705[v711[17]];
      *v716 = v712;
      v716[1] = v713;
      v716[2] = v714;
      v716[3] = v715;
      v717 = v1295;
      sub_2190E9A34(v1454, v1295, &qword_280E916D0, MEMORY[0x277D324F0]);
      v719 = v1613;
      v718 = v1614;
      v720 = *(v1613 + 48);
      if (v720(v717, 1, v1614) == 1)
      {
        v721 = v1296;
        sub_219BEF1C4();
        if (v720(v717, 1, v718) != 1)
        {
          sub_2190E9AA0(v717, &qword_280E916D0, MEMORY[0x277D324F0]);
        }
      }

      else
      {
        v721 = v1296;
        (*(v719 + 32))(v1296, v717, v718);
      }

      v722 = v1572;
      v723 = v1380;
      (*(v1613 + 32))(&v1380[*(v1572 + 72)], v721, v718);
      v1627 = 0x7FFFFFFFFFFFFFFFLL;
      swift_allocObject();
      *(v723 + v722[19]) = sub_219BEF534();
      sub_2190E9EE0(0);
      swift_allocObject();
      *(v723 + v722[20]) = sub_219BEEE04();
      LOBYTE(v1627) = 1;
      sub_218D528A0(0);
      swift_allocObject();
      *(v723 + v722[21]) = sub_219BEF534();
      v1627 = 6;
      swift_allocObject();
      *(v723 + v722[22]) = sub_219BEF534();
      v1627 = 0x4059000000000000;
      swift_allocObject();
      *(v723 + v722[23]) = sub_219BEF534();
      v1627 = 0;
      swift_allocObject();
      *(v723 + v722[24]) = sub_219BEF534();
      LOBYTE(v1627) = 1;
      swift_allocObject();
      v724 = sub_219BEF534();
      sub_2190E9AA0(v1454, &qword_280E916D0, MEMORY[0x277D324F0]);
      sub_2190E9AA0(v1379, &qword_280E91A70, sub_2189AD5C8);
      *(v723 + v722[25]) = v724;
      v707 = v1381;
      sub_2190E9AFC(v723, v1381, type metadata accessor for MySportsTopicTagFeedGroupKnobs);
      v725 = v1446;
      v726 = (v1612)(v1446, 1, v722);
      v708 = v1624;
      v692 = v1622;
      v709 = v1616;
      v637 = v1619;
      v565 = v1626;
      v693 = v1447;
      if (v726 != 1)
      {
        sub_2190E9AA0(v725, qword_280EAC298, type metadata accessor for MySportsTopicTagFeedGroupKnobs);
      }
    }

    else
    {
      v706 = v694;
      v707 = v1381;
      sub_2190E9AFC(v706, v1381, type metadata accessor for MySportsTopicTagFeedGroupKnobs);
      v708 = v1624;
      v709 = v1616;
    }

    sub_2190E9AFC(v707, v565 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_mySportsTopicKnobs, type metadata accessor for MySportsTopicTagFeedGroupKnobs);
    sub_2190E9A34(v1578, v693, qword_280EA46C0, type metadata accessor for SportsStandingsTagFeedGroupKnobs);
    v727 = *(v1498 + 48);
    v728 = v727(v693, 1, v1546);
    v729 = v1383;
    v730 = v1452;
    if (v728 == 1)
    {
      v731 = v1625;
      (*(v1625 + 56))(v1452, 1, 1, v708);
      v732 = v730;
      v733 = v1291;
      sub_2190E9A34(v732, v1291, &qword_280E91A70, sub_2189AD5C8);
      v734 = *(v731 + 48);
      if (v734(v733, 1, v708) == 1)
      {
        type metadata accessor for TagFeedServiceConfig(0);
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
        v735 = v1294;
        sub_219BEE974();
        v584 = v734(v733, 1, v708) == 1;
        v736 = v733;
        v737 = v1300;
        if (!v584)
        {
          sub_2190E9AA0(v736, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v738 = *(v731 + 32);
        v735 = v1294;
        v738(v1294, v733, v708);
        v737 = v1300;
      }

      (*(v1625 + 32))(v737, v735, v708);
      v1627 = 0x7FFFFFFFFFFFFFFFLL;
      sub_2186F9548();
      swift_allocObject();
      v739 = sub_219BEF534();
      v740 = v1546;
      *(v737 + *(v1546 + 20)) = v739;
      v1627 = 1;
      swift_allocObject();
      v741 = sub_219BEF534();
      sub_2190E9AA0(v1452, &qword_280E91A70, sub_2189AD5C8);
      *(v737 + *(v740 + 24)) = v741;
      sub_2190E9AFC(v737, v729, type metadata accessor for SportsStandingsTagFeedGroupKnobs);
      v742 = v727(v693, 1, v740);
      v692 = v1622;
      v709 = v1616;
      v637 = v1619;
      if (v742 != 1)
      {
        sub_2190E9AA0(v693, qword_280EA46C0, type metadata accessor for SportsStandingsTagFeedGroupKnobs);
      }
    }

    else
    {
      sub_2190E9AFC(v693, v1383, type metadata accessor for SportsStandingsTagFeedGroupKnobs);
    }

    v743 = v1626;
    sub_2190E9AFC(v729, v1626 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsStandingsKnobs, type metadata accessor for SportsStandingsTagFeedGroupKnobs);
    v744 = v1449;
    sub_2190E9A34(v1579, v1449, qword_280EAB210, type metadata accessor for SportsBracketTagFeedGroupKnobs);
    v745 = *(v1499 + 48);
    if (v745(v744, 1, v1547) == 1)
    {
      v746 = v1625;
      v747 = v1293;
      (*(v1625 + 56))(v1293, 1, 1, v708);
      v748 = v1292;
      sub_2190E9A34(v747, v1292, &qword_280E91A70, sub_2189AD5C8);
      v749 = *(v746 + 48);
      if (v749(v748, 1, v708) == 1)
      {
        type metadata accessor for TagFeedServiceConfig(0);
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
        v750 = v1298;
        sub_219BEE974();
        v751 = v749(v748, 1, v708);
        v752 = v1303;
        if (v751 != 1)
        {
          sub_2190E9AA0(v748, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v750 = v1298;
        (*(v746 + 32))(v1298, v748, v708);
        v752 = v1303;
      }

      (*(v746 + 32))(v752, v750, v708);
      v1627 = 0x7FFFFFFFFFFFFFFFLL;
      sub_2186F9548();
      swift_allocObject();
      v755 = sub_219BEF534();
      v756 = v1547;
      *(v752 + *(v1547 + 20)) = v755;
      v1627 = 1;
      swift_allocObject();
      v757 = sub_219BEF534();
      sub_2190E9AA0(v747, &qword_280E91A70, sub_2189AD5C8);
      *(v752 + *(v756 + 24)) = v757;
      v758 = v1386;
      sub_2190E9AFC(v752, v1386, type metadata accessor for SportsBracketTagFeedGroupKnobs);
      v759 = v1449;
      v760 = v745(v1449, 1, v756);
      v753 = v758;
      v692 = v1622;
      v709 = v1616;
      v637 = v1619;
      v754 = v1456;
      v743 = v1626;
      if (v760 != 1)
      {
        sub_2190E9AA0(v759, qword_280EAB210, type metadata accessor for SportsBracketTagFeedGroupKnobs);
      }
    }

    else
    {
      v753 = v1386;
      sub_2190E9AFC(v744, v1386, type metadata accessor for SportsBracketTagFeedGroupKnobs);
      v754 = v1456;
      v746 = v1625;
    }

    sub_2190E9AFC(v753, v743 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsBracketKnobs, type metadata accessor for SportsBracketTagFeedGroupKnobs);
    v761 = v637;
    v762 = v1450;
    sub_2190E9A34(v761, v1450, qword_280EA49D8, type metadata accessor for SportsBoxScoresTagFeedGroupKnobs);
    v763 = *(v1500 + 48);
    if (v763(v762, 1, v1548) == 1)
    {
      (*(v746 + 56))(v754, 1, 1, v708);
      v764 = v754;
      v765 = v1297;
      sub_2190E9A34(v764, v1297, &qword_280E91A70, sub_2189AD5C8);
      v766 = *(v746 + 48);
      if (v766(v765, 1, v708) == 1)
      {
        type metadata accessor for TagFeedServiceConfig(0);
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
        v767 = v1299;
        sub_219BEE974();
        v768 = v766(v765, 1, v708);
        v769 = v1304;
        if (v768 != 1)
        {
          sub_2190E9AA0(v765, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v767 = v1299;
        (*(v746 + 32))(v1299, v765, v708);
        v769 = v1304;
      }

      (*(v746 + 32))(v769, v767, v708);
      v772 = sub_219BF1F54();
      sub_218C3DB88(v772);

      sub_218BE9934(0);
      swift_allocObject();
      v773 = sub_219BEEE04();
      v774 = v1548;
      *(v769 + *(v1548 + 20)) = v773;
      swift_allocObject();
      v775 = sub_219BEEE04();
      sub_2190E9AA0(v1456, &qword_280E91A70, sub_2189AD5C8);
      *(v769 + *(v774 + 24)) = v775;
      v771 = v1388;
      sub_2190E9AFC(v769, v1388, type metadata accessor for SportsBoxScoresTagFeedGroupKnobs);
      v776 = v1450;
      v777 = v763(v1450, 1, v774);
      v692 = v1622;
      v709 = v1616;
      v743 = v1626;
      if (v777 != 1)
      {
        sub_2190E9AA0(v776, qword_280EA49D8, type metadata accessor for SportsBoxScoresTagFeedGroupKnobs);
      }
    }

    else
    {
      v770 = v762;
      v771 = v1388;
      sub_2190E9AFC(v770, v1388, type metadata accessor for SportsBoxScoresTagFeedGroupKnobs);
    }

    sub_2190E9AFC(v771, v743 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsBoxScoresKnobs, type metadata accessor for SportsBoxScoresTagFeedGroupKnobs);
    v778 = v1451;
    sub_2190E9A34(v709, v1451, qword_280EA4848, type metadata accessor for SportsEventInfoTagFeedGroupKnobs);
    v779 = *(v1501 + 48);
    v780 = v779(v778, 1, v1549);
    v781 = v1458;
    v782 = v1382;
    if (v780 == 1)
    {
      (*(v746 + 56))(v1458, 1, 1, v708);
      sub_2190E9A34(v781, v782, &qword_280E91A70, sub_2189AD5C8);
      v783 = *(v746 + 48);
      if (v783(v782, 1, v708) == 1)
      {
        type metadata accessor for TagFeedServiceConfig(0);
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
        v784 = v1301;
        sub_219BEE974();
        v785 = v783(v782, 1, v708);
        v786 = v1307;
        if (v785 != 1)
        {
          sub_2190E9AA0(v782, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v784 = v1301;
        (*(v746 + 32))(v1301, v782, v708);
        v786 = v1307;
      }

      (*(v746 + 32))(v786, v784, v708);
      v788 = sub_219BF1F54();
      sub_218C3DB88(v788);

      sub_218BE9934(0);
      swift_allocObject();
      v789 = sub_219BEEE04();
      v790 = v1549;
      *(v786 + *(v1549 + 20)) = v789;
      swift_allocObject();
      *(v786 + v790[6]) = sub_219BEEE04();
      v1627 = 2;
      sub_2186F9548();
      swift_allocObject();
      *(v786 + v790[7]) = sub_219BEF534();
      v1627 = 2;
      swift_allocObject();
      *(v786 + v790[8]) = sub_219BEF534();
      v1627 = 1;
      swift_allocObject();
      *(v786 + v790[9]) = sub_219BEF534();
      v1627 = 1;
      swift_allocObject();
      v791 = sub_219BEF534();
      sub_2190E9AA0(v1458, &qword_280E91A70, sub_2189AD5C8);
      *(v786 + v790[10]) = v791;
      v787 = v1391;
      sub_2190E9AFC(v786, v1391, type metadata accessor for SportsEventInfoTagFeedGroupKnobs);
      v792 = v1451;
      v793 = v779(v1451, 1, v790);
      v692 = v1622;
      if (v793 != 1)
      {
        sub_2190E9AA0(v792, qword_280EA4848, type metadata accessor for SportsEventInfoTagFeedGroupKnobs);
      }
    }

    else
    {
      v787 = v1391;
      sub_2190E9AFC(v778, v1391, type metadata accessor for SportsEventInfoTagFeedGroupKnobs);
    }

    sub_2190E9AFC(v787, v1626 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsEventInfoKnobs, type metadata accessor for SportsEventInfoTagFeedGroupKnobs);
    v794 = v1453;
    sub_2190E9A34(v1580, v1453, qword_280E9A648, type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs);
    v795 = *(v1502 + 48);
    v796 = v795(v794, 1, v1550);
    v797 = v1459;
    if (v796 == 1)
    {
      v798 = v1625;
      (*(v1625 + 56))(v1459, 1, 1, v708);
      v799 = v1302;
      sub_2190E9A34(v797, v1302, &qword_280E91A70, sub_2189AD5C8);
      v800 = *(v798 + 48);
      if (v800(v799, 1, v708) == 1)
      {
        type metadata accessor for TagFeedServiceConfig(0);
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
        v801 = v1305;
        sub_219BEE974();
        v802 = v800(v799, 1, v708);
        v803 = v1309;
        if (v802 != 1)
        {
          sub_2190E9AA0(v799, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v801 = v1305;
        (*(v798 + 32))(v1305, v799, v708);
        v803 = v1309;
      }

      (*(v798 + 32))(v803, v801, v708);
      v807 = sub_219BF1F54();
      sub_218C3DB88(v807);

      sub_218BE9934(0);
      swift_allocObject();
      v808 = sub_219BEEE04();
      v809 = v1550;
      *(v803 + *(v1550 + 20)) = v808;
      swift_allocObject();
      v810 = sub_219BEEE04();
      sub_2190E9AA0(v1459, &qword_280E91A70, sub_2189AD5C8);
      *(v803 + *(v809 + 24)) = v810;
      v804 = v1392;
      sub_2190E9AFC(v803, v1392, type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs);
      v811 = v1453;
      v812 = v795(v1453, 1, v809);
      v692 = v1622;
      v805 = v1461;
      v806 = v1387;
      if (v812 != 1)
      {
        sub_2190E9AA0(v811, qword_280E9A648, type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs);
      }
    }

    else
    {
      v804 = v1392;
      sub_2190E9AFC(v794, v1392, type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs);
      v798 = v1625;
      v805 = v1461;
      v806 = v1387;
    }

    v813 = v1626;
    sub_2190E9AFC(v804, v1626 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsInjuryReportsKnobs, type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs);
    v814 = v692;
    v815 = v1455;
    sub_2190E9A34(v814, v1455, qword_280EA1D08, type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs);
    v816 = *(v1503 + 48);
    if (v816(v815, 1, v1551) == 1)
    {
      (*(v798 + 56))(v805, 1, 1, v708);
      sub_2190E9A34(v805, v806, &qword_280E91A70, sub_2189AD5C8);
      v817 = *(v798 + 48);
      if (v817(v806, 1, v708) == 1)
      {
        type metadata accessor for TagFeedServiceConfig(0);
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
        v818 = v1306;
        sub_219BEE974();
        v819 = v817(v806, 1, v708);
        v820 = v1310;
        if (v819 != 1)
        {
          sub_2190E9AA0(v806, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v818 = v1306;
        (*(v798 + 32))(v1306, v806, v708);
        v820 = v1310;
      }

      (*(v798 + 32))(v820, v818, v708);
      v1627 = 0x7FFFFFFFFFFFFFFFLL;
      sub_2186F9548();
      swift_allocObject();
      v823 = sub_219BEF534();
      v824 = v1551;
      *(v820 + *(v1551 + 20)) = v823;
      v1627 = 1;
      swift_allocObject();
      *(v820 + v824[6]) = sub_219BEF534();
      v825 = sub_219BF1F54();
      sub_218C3DB88(v825);

      sub_218BE9934(0);
      swift_allocObject();
      *(v820 + v824[7]) = sub_219BEEE04();
      swift_allocObject();
      v826 = sub_219BEEE04();
      sub_2190E9AA0(v1461, &qword_280E91A70, sub_2189AD5C8);
      *(v820 + v824[8]) = v826;
      v821 = v1396;
      sub_2190E9AFC(v820, v1396, type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs);
      v827 = v1455;
      v828 = v816(v1455, 1, v824);
      v822 = v1552;
      v813 = v1626;
      if (v828 != 1)
      {
        sub_2190E9AA0(v827, qword_280EA1D08, type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs);
      }
    }

    else
    {
      v821 = v1396;
      sub_2190E9AFC(v815, v1396, type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs);
      v822 = v1552;
    }

    sub_2190E9AFC(v821, v813 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsKeyPlayersKnobs, type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs);
    v829 = v1457;
    sub_2190E9A34(v1581, v1457, qword_280E9A708, type metadata accessor for SportsEventArticlesTagFeedGroupKnobs);
    v830 = *(v1504 + 48);
    v831 = v830(v829, 1, v822);
    v832 = v1462;
    v833 = v1389;
    if (v831 == 1)
    {
      v834 = v1625;
      (*(v1625 + 56))(v1462, 1, 1, v708);
      sub_2190E9A34(v832, v833, &qword_280E91A70, sub_2189AD5C8);
      v835 = *(v834 + 48);
      if (v835(v833, 1, v708) == 1)
      {
        type metadata accessor for TagFeedServiceConfig(0);
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
        v836 = v1308;
        sub_219BEE974();
        v837 = v835(v833, 1, v708);
        v838 = v1313;
        if (v837 != 1)
        {
          sub_2190E9AA0(v833, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v836 = v1308;
        (*(v834 + 32))(v1308, v833, v708);
        v838 = v1313;
      }

      (*(v834 + 32))(v838, v836, v708);
      v844 = sub_219BF1F54();
      sub_218C3DB88(v844);

      sub_218BE9934(0);
      swift_allocObject();
      v845 = sub_219BEEE04();
      v846 = v1552;
      *(v838 + *(v1552 + 20)) = v845;
      swift_allocObject();
      *(v838 + v846[6]) = sub_219BEEE04();
      v1627 = 5;
      sub_2186F9548();
      swift_allocObject();
      *(v838 + v846[7]) = sub_219BEF534();
      v1627 = 1;
      swift_allocObject();
      *(v838 + v846[8]) = sub_219BEF534();
      LOBYTE(v1627) = 1;
      sub_2186F95C4();
      swift_allocObject();
      *(v838 + v846[9]) = sub_219BEF534();
      v1627 = 0;
      sub_2186ECA28();
      swift_allocObject();
      v847 = sub_219BEF534();
      sub_2190E9AA0(v1462, &qword_280E91A70, sub_2189AD5C8);
      *(v838 + v846[10]) = v847;
      v840 = v1397;
      sub_2190E9AFC(v838, v1397, type metadata accessor for SportsEventArticlesTagFeedGroupKnobs);
      v848 = v1457;
      v849 = v830(v1457, 1, v846);
      v841 = v1582;
      v842 = v1506;
      v843 = v1505;
      v813 = v1626;
      if (v849 != 1)
      {
        sub_2190E9AA0(v848, qword_280E9A708, type metadata accessor for SportsEventArticlesTagFeedGroupKnobs);
      }
    }

    else
    {
      v839 = v829;
      v840 = v1397;
      sub_2190E9AFC(v839, v1397, type metadata accessor for SportsEventArticlesTagFeedGroupKnobs);
      v841 = v1582;
      v842 = v1506;
      v843 = v1505;
    }

    sub_2190E9AFC(v840, v813 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsEventArticlesKnobs, type metadata accessor for SportsEventArticlesTagFeedGroupKnobs);
    v850 = v1384;
    sub_2190E9A34(v841, v1384, &qword_280EAEC50, type metadata accessor for SportsRecordTagFeedGroupKnobs);
    v851 = *(v843 + 48);
    v852 = v851(v850, 1, v842);
    v853 = v1584;
    v854 = v1583;
    if (v852 == 1)
    {
      v855 = v1625;
      v856 = v708;
      v857 = v1623;
      (*(v1625 + 56))(v1623, 1, 1, v856);
      v858 = v1398;
      sub_218ED3A90(v857, v1398);
      v859 = v851(v850, 1, v842);
      v860 = v1395;
      if (v859 != 1)
      {
        sub_2190E9AA0(v850, &qword_280EAEC50, type metadata accessor for SportsRecordTagFeedGroupKnobs);
      }
    }

    else
    {
      v858 = v1398;
      sub_2190E9AFC(v850, v1398, type metadata accessor for SportsRecordTagFeedGroupKnobs);
      v855 = v1625;
      v860 = v1395;
    }

    sub_2190E9AFC(v858, v813 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsRecordKnobs, type metadata accessor for SportsRecordTagFeedGroupKnobs);
    v861 = v1385;
    sub_2190E9A34(v854, v1385, &qword_280EA1AF0, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
    v862 = *(v1507 + 48);
    v863 = v1508;
    if (v862(v861, 1, v1508) == 1)
    {
      v864 = v1623;
      (*(v855 + 56))(v1623, 1, 1, v1624);
      v865 = v863;
      v866 = v1399;
      sub_2196EACD4(v864, v1399);
      v867 = v862(v861, 1, v865);
      v868 = v1617;
      v869 = v1394;
      v870 = v1460;
      if (v867 != 1)
      {
        sub_2190E9AA0(v861, &qword_280EA1AF0, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
      }
    }

    else
    {
      v866 = v1399;
      sub_2190E9AFC(v861, v1399, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
      v868 = v1617;
      v869 = v1394;
      v870 = v1460;
    }

    sub_2190E9AFC(v866, v1626 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsNavigationKnobs, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
    sub_2190E9A34(v853, v870, qword_280EA7F10, type metadata accessor for SportsScheduleTagFeedGroupKnobs);
    v871 = *(v1509 + 48);
    v872 = v1510;
    if (v871(v870, 1, v1510) == 1)
    {
      v873 = v1624;
      (*(v855 + 56))(v860, 1, 1, v1624);
      sub_2190E9A34(v860, v869, &qword_280E91A70, sub_2189AD5C8);
      v874 = *(v855 + 48);
      if (v874(v869, 1, v873) == 1)
      {
        type metadata accessor for TagFeedServiceConfig(0);
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
        v875 = v1312;
        sub_219BEE974();
        v876 = v874(v869, 1, v873);
        v877 = v1317;
        if (v876 != 1)
        {
          sub_2190E9AA0(v869, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v875 = v1312;
        (*(v855 + 32))(v1312, v869, v873);
        v877 = v1317;
      }

      (*(v855 + 32))(v877, v875, v873);
      LOBYTE(v1627) = 0;
      sub_218DF8B4C(0);
      swift_allocObject();
      *(v877 + v872[5]) = sub_219BEF534();
      LOBYTE(v1627) = 1;
      sub_218D528A0(0);
      swift_allocObject();
      *(v877 + v872[6]) = sub_219BEF534();
      v1627 = 14;
      sub_2186F9548();
      swift_allocObject();
      v879 = sub_219BEF534();
      sub_2190E9AA0(v860, &qword_280E91A70, sub_2189AD5C8);
      *(v877 + v872[7]) = v879;
      v878 = v1403;
      sub_2190E9AFC(v877, v1403, type metadata accessor for SportsScheduleTagFeedGroupKnobs);
      v880 = v1460;
      v881 = v871(v1460, 1, v872);
      v868 = v1617;
      if (v881 != 1)
      {
        sub_2190E9AA0(v880, qword_280EA7F10, type metadata accessor for SportsScheduleTagFeedGroupKnobs);
      }
    }

    else
    {
      v878 = v1403;
      sub_2190E9AFC(v870, v1403, type metadata accessor for SportsScheduleTagFeedGroupKnobs);
      v873 = v1624;
    }

    sub_2190E9AFC(v878, v1626 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsScheduleKnobs, type metadata accessor for SportsScheduleTagFeedGroupKnobs);
    v882 = v1390;
    sub_2190E9A34(v1585, v1390, qword_280EA18A0, type metadata accessor for SportsTopStoriesTagFeedGroupKnobs);
    v883 = *(v1511 + 48);
    v884 = v883(v882, 1, v1553);
    v885 = v1467;
    v886 = v1465;
    if (v884 == 1)
    {
      (*(v855 + 56))(v1465, 1, 1, v873);
      v887 = v1311;
      sub_2190E9A34(v886, v1311, &qword_280E91A70, sub_2189AD5C8);
      v888 = *(v855 + 48);
      if (v888(v887, 1, v873) == 1)
      {
        type metadata accessor for TagFeedServiceConfig(0);
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
        v889 = v1314;
        sub_219BEE974();
        v584 = v888(v887, 1, v873) == 1;
        v890 = v887;
        v891 = v1319;
        if (!v584)
        {
          sub_2190E9AA0(v890, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v889 = v1314;
        (*(v855 + 32))(v1314, v887, v873);
        v891 = v1319;
      }

      (*(v855 + 32))(v891, v889, v873);
      v1627 = 0x7FFFFFFFFFFFFFFFLL;
      sub_2186F9548();
      swift_allocObject();
      v894 = sub_219BEF534();
      v895 = v1553;
      *(v891 + *(v1553 + 20)) = v894;
      v1627 = 1;
      swift_allocObject();
      *(v891 + v895[6]) = sub_219BEF534();
      LOBYTE(v1627) = 1;
      sub_2186F95C4();
      swift_allocObject();
      *(v891 + v895[7]) = sub_219BEF534();
      v1627 = 0;
      sub_2186ECA28();
      swift_allocObject();
      *(v891 + v895[8]) = sub_219BEF534();
      LOBYTE(v1627) = 1;
      sub_2190E9B64(0);
      swift_allocObject();
      *(v891 + v895[9]) = sub_219BEF534();
      v1627 = 0x7FEFFFFFFFFFFFFFLL;
      swift_allocObject();
      v896 = sub_219BEF534();
      sub_2190E9AA0(v1465, &qword_280E91A70, sub_2189AD5C8);
      *(v891 + v895[10]) = v896;
      v892 = v1406;
      sub_2190E9AFC(v891, v1406, type metadata accessor for SportsTopStoriesTagFeedGroupKnobs);
      v897 = v883(v882, 1, v895);
      v868 = v1617;
      v893 = v1471;
      v885 = v1467;
      if (v897 != 1)
      {
        sub_2190E9AA0(v882, qword_280EA18A0, type metadata accessor for SportsTopStoriesTagFeedGroupKnobs);
      }
    }

    else
    {
      v892 = v1406;
      sub_2190E9AFC(v882, v1406, type metadata accessor for SportsTopStoriesTagFeedGroupKnobs);
      v893 = v1471;
    }

    v898 = v1626;
    sub_2190E9AFC(v892, v1626 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsTopStoriesKnobs, type metadata accessor for SportsTopStoriesTagFeedGroupKnobs);
    v899 = v1463;
    sub_2190E9A34(v1586, v1463, qword_280EA4788, type metadata accessor for SportsFavoritesTagFeedGroupKnobs);
    v900 = *(v1512 + 48);
    if (v900(v899, 1, v1554) == 1)
    {
      v901 = v1625;
      (*(v1625 + 56))(v885, 1, 1, v873);
      v902 = v1315;
      sub_2190E9A34(v885, v1315, &qword_280E91A70, sub_2189AD5C8);
      v903 = *(v901 + 48);
      if (v903(v902, 1, v873) == 1)
      {
        type metadata accessor for TagFeedServiceConfig(0);
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
        v904 = v1316;
        sub_219BEE974();
        v905 = v903(v902, 1, v873);
        v906 = v1322;
        if (v905 != 1)
        {
          sub_2190E9AA0(v902, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v904 = v1316;
        (*(v901 + 32))(v1316, v902, v873);
        v906 = v1322;
      }

      (*(v901 + 32))(v906, v904, v873);
      v1627 = 1;
      sub_2186F9548();
      swift_allocObject();
      v907 = sub_219BEF534();
      v908 = v1554;
      *(v906 + *(v1554 + 20)) = v907;
      v1627 = 0x7FFFFFFFFFFFFFFFLL;
      swift_allocObject();
      v909 = sub_219BEF534();
      sub_2190E9AA0(v885, &qword_280E91A70, sub_2189AD5C8);
      *(v906 + *(v908 + 24)) = v909;
      v893 = v1471;
      sub_2190E9AFC(v906, v1471, type metadata accessor for SportsFavoritesTagFeedGroupKnobs);
      v910 = v1463;
      v911 = v900(v1463, 1, v908);
      v868 = v1617;
      v898 = v1626;
      if (v911 != 1)
      {
        sub_2190E9AA0(v910, qword_280EA4788, type metadata accessor for SportsFavoritesTagFeedGroupKnobs);
      }
    }

    else
    {
      sub_2190E9AFC(v899, v893, type metadata accessor for SportsFavoritesTagFeedGroupKnobs);
      v901 = v1625;
    }

    sub_2190E9AFC(v893, v898 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsFavoritesKnobs, type metadata accessor for SportsFavoritesTagFeedGroupKnobs);
    v912 = v1393;
    sub_2190E9A34(v868, v1393, &qword_280EBFB10, type metadata accessor for WeatherTagFeedGroupKnobs);
    v913 = *(v1513 + 48);
    v914 = v1514;
    v915 = v913(v912, 1, v1514);
    v916 = v1587;
    v917 = v1408;
    if (v915 == 1)
    {
      v918 = v1623;
      (*(v901 + 56))(v1623, 1, 1, v873);
      sub_21973E880(v918, v917);
      v919 = v913(v912, 1, v914);
      v920 = v1609;
      v921 = v1401;
      v922 = v1400;
      if (v919 != 1)
      {
        sub_2190E9AA0(v912, &qword_280EBFB10, type metadata accessor for WeatherTagFeedGroupKnobs);
      }
    }

    else
    {
      sub_2190E9AFC(v912, v1408, type metadata accessor for WeatherTagFeedGroupKnobs);
      v920 = v1609;
      v921 = v1401;
      v922 = v1400;
    }

    sub_2190E9AFC(v917, v1626 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_weatherKnobs, type metadata accessor for WeatherTagFeedGroupKnobs);
    v923 = v916;
    v924 = v1464;
    sub_2190E9A34(v923, v1464, qword_280EB87C0, type metadata accessor for HighlightsTagFeedGroupKnobs);
    v925 = *(v1515 + 48);
    if (v925(v924, 1, v1555) == 1)
    {
      v926 = v1624;
      (*(v901 + 56))(v921, 1, 1, v1624);
      sub_2190E9A34(v921, v922, &qword_280E91A70, sub_2189AD5C8);
      v927 = *(v901 + 48);
      if (v927(v922, 1, v926) == 1)
      {
        type metadata accessor for TagFeedServiceConfig(0);
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
        v928 = v1318;
        sub_219BEE974();
        v929 = v927(v922, 1, v926);
        v930 = v1324;
        if (v929 != 1)
        {
          sub_2190E9AA0(v922, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v928 = v1318;
        (*(v901 + 32))(v1318, v922, v926);
        v930 = v1324;
      }

      (*(v901 + 32))(v930, v928, v926);
      v1627 = 1;
      sub_2186F9548();
      swift_allocObject();
      v933 = sub_219BEF534();
      v934 = v1555;
      *(v930 + *(v1555 + 20)) = v933;
      v1627 = 0x7FFFFFFFFFFFFFFFLL;
      swift_allocObject();
      *(v930 + *(v934 + 24)) = sub_219BEF534();
      v1627 = 0x4122750000000000;
      sub_2186ECA28();
      swift_allocObject();
      v935 = sub_219BEF534();
      sub_2190E9AA0(v921, &qword_280E91A70, sub_2189AD5C8);
      *(v930 + *(v934 + 28)) = v935;
      v932 = v1409;
      sub_2190E9AFC(v930, v1409, type metadata accessor for HighlightsTagFeedGroupKnobs);
      v936 = v1464;
      v937 = v925(v1464, 1, v934);
      v920 = v1609;
      if (v937 != 1)
      {
        sub_2190E9AA0(v936, qword_280EB87C0, type metadata accessor for HighlightsTagFeedGroupKnobs);
      }
    }

    else
    {
      v931 = v924;
      v932 = v1409;
      sub_2190E9AFC(v931, v1409, type metadata accessor for HighlightsTagFeedGroupKnobs);
    }

    sub_2190E9AFC(v932, v1626 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_highlightsKnobs, type metadata accessor for HighlightsTagFeedGroupKnobs);
    v938 = v1466;
    sub_2190E9A34(v920, v1466, qword_280EC4D68, type metadata accessor for ForYouTagFeedGroupKnobs);
    v939 = *(v1516 + 48);
    v940 = v1517;
    v941 = v939(v938, 1, v1517);
    v942 = v1469;
    v943 = v1405;
    if (v941 == 1)
    {
      v944 = v1624;
      (*(v901 + 56))(v1469, 1, 1, v1624);
      v945 = sub_219BEF814();
      (*(*(v945 - 8) + 56))(v1411, 1, 1, v945);
      sub_2190E9A34(v942, v943, &qword_280E91A70, sub_2189AD5C8);
      v946 = *(v901 + 48);
      if (v946(v943, 1, v944) == 1)
      {
        type metadata accessor for TagFeedServiceConfig(0);
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
        v947 = v1320;
        sub_219BEE974();
        v584 = v946(v943, 1, v944) == 1;
        v948 = v943;
        v949 = v1327;
        if (!v584)
        {
          sub_2190E9AA0(v948, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v947 = v1320;
        (*(v901 + 32))(v1320, v943, v944);
        v949 = v1327;
      }

      (*(v901 + 32))(v949, v947, v944);
      *(v949 + v940[5]) = 0;
      v1627 = 1;
      sub_2186F9548();
      swift_allocObject();
      *(v949 + v940[6]) = sub_219BEF534();
      v1627 = 5;
      swift_allocObject();
      *(v949 + v940[7]) = sub_219BEF534();
      LOBYTE(v1627) = 0;
      sub_2186F95C4();
      swift_allocObject();
      *(v949 + v940[8]) = sub_219BEF534();
      *(v949 + v940[9]) = 1;
      v953 = MEMORY[0x277D32720];
      v954 = v1411;
      sub_2190E9A34(v1411, v949 + v940[10], &qword_280E912E0, MEMORY[0x277D32720]);
      sub_219BF5CE4();
      v1627 = v955;
      sub_2186ECA28();
      swift_allocObject();
      *(v949 + v940[11]) = sub_219BEF534();
      v1627 = 30;
      swift_allocObject();
      v956 = sub_219BEF534();
      sub_2190E9AA0(v954, &qword_280E912E0, v953);
      sub_2190E9AA0(v1469, &qword_280E91A70, sub_2189AD5C8);
      *(v949 + v940[12]) = v956;
      v950 = v1412;
      sub_2190E9AFC(v949, v1412, type metadata accessor for ForYouTagFeedGroupKnobs);
      v957 = v1466;
      v958 = v939(v1466, 1, v940);
      v951 = v1477;
      v952 = v1556;
      if (v958 != 1)
      {
        sub_2190E9AA0(v957, qword_280EC4D68, type metadata accessor for ForYouTagFeedGroupKnobs);
      }
    }

    else
    {
      v950 = v1412;
      sub_2190E9AFC(v938, v1412, type metadata accessor for ForYouTagFeedGroupKnobs);
      v951 = v1477;
      v952 = v1556;
    }

    sub_2190E9AFC(v950, v1626 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_forYouKnobs, type metadata accessor for ForYouTagFeedGroupKnobs);
    v959 = v1468;
    sub_2190E9A34(v1588, v1468, qword_280EAB8E8, type metadata accessor for RecentStoriesTagFeedGroupKnobs);
    v960 = *(v1518 + 48);
    v961 = v960(v959, 1, v952);
    v962 = v1407;
    if (v961 == 1)
    {
      v964 = v1624;
      v963 = v1625;
      (*(v1625 + 56))(v1407, 1, 1, v1624);
      v965 = sub_219BEF814();
      (*(*(v965 - 8) + 56))(v1413, 1, 1, v965);
      v966 = v1321;
      sub_2190E9A34(v962, v1321, &qword_280E91A70, sub_2189AD5C8);
      v967 = *(v963 + 48);
      if (v967(v966, 1, v964) == 1)
      {
        type metadata accessor for TagFeedServiceConfig(0);
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
        v968 = v1323;
        sub_219BEE974();
        v969 = v967(v966, 1, v964);
        v970 = v1328;
        if (v969 != 1)
        {
          sub_2190E9AA0(v966, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v968 = v1323;
        (*(v963 + 32))(v1323, v966, v964);
        v970 = v1328;
      }

      (*(v963 + 32))(v970, v968, v964);
      v1627 = 0x7FEFFFFFFFFFFFFFLL;
      sub_2186ECA28();
      swift_allocObject();
      v975 = sub_219BEF534();
      v976 = v1556;
      *(v970 + *(v1556 + 20)) = v975;
      v1627 = 1;
      sub_2186F9548();
      swift_allocObject();
      *(v970 + v976[6]) = sub_219BEF534();
      v1627 = 5;
      swift_allocObject();
      v977 = sub_219BEF534();
      sub_2190E9AA0(v962, &qword_280E91A70, sub_2189AD5C8);
      *(v970 + v976[7]) = v977;
      *(v970 + v976[8]) = 1;
      sub_218E2E3D4(v1413, v970 + v976[9]);
      v951 = v1477;
      sub_2190E9AFC(v970, v1477, type metadata accessor for RecentStoriesTagFeedGroupKnobs);
      v978 = v1468;
      v979 = v960(v1468, 1, v976);
      v971 = v1589;
      v972 = v1520;
      v973 = v1519;
      v974 = v1626;
      if (v979 != 1)
      {
        sub_2190E9AA0(v978, qword_280EAB8E8, type metadata accessor for RecentStoriesTagFeedGroupKnobs);
      }
    }

    else
    {
      sub_2190E9AFC(v959, v951, type metadata accessor for RecentStoriesTagFeedGroupKnobs);
      v971 = v1589;
      v972 = v1520;
      v973 = v1519;
      v974 = v1626;
    }

    v980 = v974;
    sub_2190E9AFC(v951, v974 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_recentStoriesKnobs, type metadata accessor for RecentStoriesTagFeedGroupKnobs);
    v981 = v1402;
    sub_2190E9A34(v971, v1402, qword_280EBB968, type metadata accessor for DateRangeTagFeedGroupKnobs);
    v982 = *(v973 + 48);
    v983 = v982(v981, 1, v972);
    v984 = v1591;
    v985 = v1416;
    v986 = v1623;
    if (v983 == 1)
    {
      v987 = v1625;
      (*(v1625 + 56))(v1623, 1, 1, v1624);
      v988 = v1415;
      sub_21912C508(v986, 0, v1415);
      v989 = v982(v981, 1, v972);
      v990 = v1404;
      if (v989 != 1)
      {
        sub_2190E9AA0(v981, qword_280EBB968, type metadata accessor for DateRangeTagFeedGroupKnobs);
      }
    }

    else
    {
      v988 = v1415;
      sub_2190E9AFC(v981, v1415, type metadata accessor for DateRangeTagFeedGroupKnobs);
      v987 = v1625;
      v990 = v1404;
    }

    sub_2190E9AFC(v988, v980 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_dateRangeKnobs, type metadata accessor for DateRangeTagFeedGroupKnobs);
    sub_2190E9A34(v1590, v990, &qword_280EA8080, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
    v991 = *(v1521 + 48);
    v992 = v1522;
    if (v991(v990, 1, v1522) == 1)
    {
      (*(v987 + 56))(v986, 1, 1, v1624);
      sub_219B3C008(v986, v985);
      v584 = v991(v990, 1, v992) == 1;
      v993 = v1621;
      v994 = v990;
      v995 = v1525;
      v996 = v1524;
      v997 = v1478;
      v998 = v1475;
      if (!v584)
      {
        sub_2190E9AA0(v994, &qword_280EA8080, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
      }
    }

    else
    {
      sub_2190E9AFC(v990, v985, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
      v993 = v1621;
      v995 = v1525;
      v996 = v1524;
      v997 = v1478;
      v998 = v1475;
    }

    sub_2190E9AFC(v985, v980 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsMastheadKnobs, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
    v999 = v984;
    v1000 = v1470;
    sub_2190E9A34(v999, v1470, qword_280EA1DD8, type metadata accessor for SportsEventTopicTagFeedGroupKnobs);
    v1001 = *(v1523 + 48);
    if ((v1001)(v1000, 1, v1573) == 1)
    {
      v1612 = v1001;
      v1002 = v987;
      v1003 = *(v987 + 56);
      v1004 = v1410;
      v1005 = v1624;
      v1003(v1410, 1, 1, v1624);
      (*(v1613 + 56))(v997, 1, 1, v1614);
      v1006 = v1325;
      sub_2190E9A34(v1004, v1325, &qword_280E91A70, sub_2189AD5C8);
      v1007 = *(v1002 + 48);
      if (v1007(v1006, 1, v1005) == 1)
      {
        type metadata accessor for TagFeedServiceConfig(0);
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
        v1008 = v1326;
        sub_219BEE974();
        if (v1007(v1006, 1, v1005) != 1)
        {
          sub_2190E9AA0(v1006, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v1008 = v1326;
        (*(v1002 + 32))(v1326, v1006, v1005);
      }

      v1012 = *(v1002 + 32);
      v1013 = v1337;
      v1012(v1337, v1008, v1005);
      v1014 = sub_219BF1F54();
      sub_218C3DB88(v1014);

      sub_218BE9934(0);
      swift_allocObject();
      v1015 = sub_219BEEE04();
      v1016 = v1573;
      *(v1013 + *(v1573 + 20)) = v1015;
      swift_allocObject();
      *(v1013 + v1016[6]) = sub_219BEEE04();
      v1627 = 30;
      sub_2186F9548();
      swift_allocObject();
      *(v1013 + v1016[7]) = sub_219BEF534();
      v1627 = 1;
      swift_allocObject();
      *(v1013 + v1016[8]) = sub_219BEF534();
      v1627 = 5;
      swift_allocObject();
      *(v1013 + v1016[9]) = sub_219BEF534();
      sub_219BF5CE4();
      v1627 = v1017;
      sub_2186ECA28();
      swift_allocObject();
      *(v1013 + v1016[10]) = sub_219BEF534();
      LOBYTE(v1627) = 1;
      sub_2186F95C4();
      swift_allocObject();
      *(v1013 + v1016[11]) = sub_219BEF534();
      v1627 = 0;
      swift_allocObject();
      *(v1013 + v1016[12]) = sub_219BEF534();
      v1018 = v1478;
      v1019 = v1331;
      sub_2190E9A34(v1478, v1331, &qword_280E916D0, MEMORY[0x277D324F0]);
      v1020 = v1613;
      v1021 = v1614;
      v1022 = *(v1613 + 48);
      if (v1022(v1019, 1, v1614) == 1)
      {
        v1023 = v1332;
        sub_219BEF1C4();
        sub_2190E9AA0(v1018, &qword_280E916D0, MEMORY[0x277D324F0]);
        sub_2190E9AA0(v1410, &qword_280E91A70, sub_2189AD5C8);
        v1024 = v1022(v1019, 1, v1021);
        v993 = v1621;
        if (v1024 != 1)
        {
          sub_2190E9AA0(v1019, &qword_280E916D0, MEMORY[0x277D324F0]);
        }
      }

      else
      {
        sub_2190E9AA0(v1018, &qword_280E916D0, MEMORY[0x277D324F0]);
        sub_2190E9AA0(v1410, &qword_280E91A70, sub_2189AD5C8);
        v1025 = *(v1020 + 32);
        v1023 = v1332;
        v1025(v1332, v1019, v1021);
        v993 = v1621;
      }

      v1026 = v1573;
      (*(v1613 + 32))(v1013 + *(v1573 + 52), v1023, v1021);
      v1010 = v1418;
      sub_2190E9AFC(v1013, v1418, type metadata accessor for SportsEventTopicTagFeedGroupKnobs);
      v1027 = v1470;
      v1028 = (v1612)(v1470, 1, v1026);
      v1011 = v1624;
      v987 = v1625;
      v998 = v1475;
      if (v1028 != 1)
      {
        sub_2190E9AA0(v1027, qword_280EA1DD8, type metadata accessor for SportsEventTopicTagFeedGroupKnobs);
      }
    }

    else
    {
      v1009 = v1000;
      v1010 = v1418;
      sub_2190E9AFC(v1009, v1418, type metadata accessor for SportsEventTopicTagFeedGroupKnobs);
      v1011 = v1624;
    }

    v1029 = v1626;
    sub_2190E9AFC(v1010, v1626 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsEventTopicKnobs, type metadata accessor for SportsEventTopicTagFeedGroupKnobs);
    *(v1029 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sportsOnboardingKnobs) = sub_2194AF95C(MEMORY[0x277D84F90]);
    v1030 = v1472;
    sub_2190E9A34(v1592, v1472, qword_280EB7648, type metadata accessor for PuzzleListTagFeedGroupKnobs);
    v1031 = *(v996 + 48);
    v1032 = v1031(v1030, 1, v995);
    v1033 = v1476;
    if (v1032 == 1)
    {
      (*(v987 + 56))(v1476, 1, 1, v1011);
      sub_2190E9A34(v1033, v998, &qword_280E91A70, sub_2189AD5C8);
      v1034 = *(v987 + 48);
      if (v1034(v998, 1, v1011) == 1)
      {
        type metadata accessor for TagFeedServiceConfig(0);
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
        v1035 = v1329;
        sub_219BEE974();
        v584 = v1034(v998, 1, v1011) == 1;
        v1036 = v998;
        v1037 = v1340;
        if (!v584)
        {
          sub_2190E9AA0(v1036, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v1035 = v1329;
        (*(v987 + 32))(v1329, v998, v1011);
        v1037 = v1340;
      }

      (*(v987 + 32))(v1037, v1035, v1011);
      v1627 = 2;
      sub_2186F9548();
      swift_allocObject();
      *&v1037[v995[5]] = sub_219BEF534();
      v1627 = 6;
      swift_allocObject();
      *&v1037[v995[6]] = sub_219BEF534();
      LOBYTE(v1627) = 0;
      sub_2186F95C4();
      swift_allocObject();
      *&v1037[v995[7]] = sub_219BEF534();
      LOBYTE(v1627) = 0;
      swift_allocObject();
      v1040 = sub_219BEF534();
      sub_2190E9AA0(v1476, &qword_280E91A70, sub_2189AD5C8);
      *&v1037[v995[8]] = v1040;
      *&v1037[v995[9]] = 0;
      v1041 = v1037;
      v1038 = v1420;
      sub_2190E9AFC(v1041, v1420, type metadata accessor for PuzzleListTagFeedGroupKnobs);
      v1042 = v1472;
      v1043 = v1031(v1472, 1, v995);
      v993 = v1621;
      v1039 = v1473;
      if (v1043 != 1)
      {
        sub_2190E9AA0(v1042, qword_280EB7648, type metadata accessor for PuzzleListTagFeedGroupKnobs);
      }
    }

    else
    {
      v1038 = v1420;
      sub_2190E9AFC(v1030, v1420, type metadata accessor for PuzzleListTagFeedGroupKnobs);
      v1039 = v1473;
    }

    sub_2190E9AFC(v1038, v1626 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleListKnobs, type metadata accessor for PuzzleListTagFeedGroupKnobs);
    sub_2190E9A34(v1593, v1039, qword_280EABA58, type metadata accessor for PuzzleArchiveTagFeedGroupKnobs);
    v1044 = *(v1526 + 48);
    v1045 = v1044(v1039, 1, v1557);
    v1046 = v1481;
    if (v1045 == 1)
    {
      v1047 = v1414;
      (*(v987 + 56))(v1414, 1, 1, v1011);
      v1048 = v1330;
      sub_2190E9A34(v1047, v1330, &qword_280E91A70, sub_2189AD5C8);
      v1049 = *(v987 + 48);
      if (v1049(v1048, 1, v1011) == 1)
      {
        type metadata accessor for TagFeedServiceConfig(0);
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
        v1050 = v1333;
        sub_219BEE974();
        v1051 = v1049(v1048, 1, v1011);
        v1052 = v1342;
        if (v1051 != 1)
        {
          sub_2190E9AA0(v1048, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v1050 = v1333;
        (*(v987 + 32))(v1333, v1048, v1011);
        v1052 = v1342;
      }

      (*(v987 + 32))(v1052, v1050, v1011);
      v1627 = 1;
      sub_2186F9548();
      swift_allocObject();
      v1055 = sub_219BEF534();
      v1056 = v1557;
      *(v1052 + *(v1557 + 20)) = v1055;
      v1627 = 5;
      swift_allocObject();
      v1057 = sub_219BEF534();
      sub_2190E9AA0(v1414, &qword_280E91A70, sub_2189AD5C8);
      *(v1052 + *(v1056 + 24)) = v1057;
      v1054 = v1421;
      sub_2190E9AFC(v1052, v1421, type metadata accessor for PuzzleArchiveTagFeedGroupKnobs);
      v1058 = v1473;
      v1059 = v1044(v1473, 1, v1056);
      v993 = v1621;
      v1046 = v1481;
      if (v1059 != 1)
      {
        sub_2190E9AA0(v1058, qword_280EABA58, type metadata accessor for PuzzleArchiveTagFeedGroupKnobs);
      }
    }

    else
    {
      v1053 = v1039;
      v1054 = v1421;
      sub_2190E9AFC(v1053, v1421, type metadata accessor for PuzzleArchiveTagFeedGroupKnobs);
    }

    sub_2190E9AFC(v1054, v1626 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleArchiveKnobs, type metadata accessor for PuzzleArchiveTagFeedGroupKnobs);
    v1060 = v1474;
    sub_2190E9A34(v1594, v1474, qword_280E981F8, type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs);
    v1061 = *(v1527 + 48);
    v1062 = v1528;
    if (v1061(v1060, 1, v1528) == 1)
    {
      (*(v987 + 56))(v1046, 1, 1, v1011);
      v1063 = v1334;
      sub_2190E9A34(v1046, v1334, &qword_280E91A70, sub_2189AD5C8);
      v1064 = *(v987 + 48);
      if (v1064(v1063, 1, v1011) == 1)
      {
        type metadata accessor for TagFeedServiceConfig(0);
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
        v1065 = v1335;
        sub_219BEE974();
        v1066 = v1064(v1063, 1, v1011);
        v1067 = v1344;
        if (v1066 != 1)
        {
          sub_2190E9AA0(v1063, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v1065 = v1335;
        (*(v987 + 32))(v1335, v1063, v1011);
        v1067 = v1344;
      }

      (*(v987 + 32))(v1067, v1065, v1011);
      v1627 = 0x4122750000000000;
      sub_2186ECA28();
      swift_allocObject();
      *&v1067[*(v1062 + 20)] = sub_219BEF534();
      v1627 = 5;
      sub_2186F9548();
      swift_allocObject();
      v1070 = sub_219BEF534();
      sub_2190E9AA0(v1046, &qword_280E91A70, sub_2189AD5C8);
      *&v1067[*(v1062 + 24)] = v1070;
      v1071 = v1067;
      v1068 = v1423;
      sub_2190E9AFC(v1071, v1423, type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs);
      v1072 = v1474;
      v1073 = v1061(v1474, 1, v1062);
      v993 = v1621;
      v1069 = v1531;
      if (v1073 != 1)
      {
        sub_2190E9AA0(v1072, qword_280E981F8, type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs);
      }
    }

    else
    {
      v1068 = v1423;
      sub_2190E9AFC(v1060, v1423, type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs);
      v1069 = v1531;
    }

    sub_2190E9AFC(v1068, v1626 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleContinuePlayingKnobs, type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs);
    v1074 = v1479;
    sub_2190E9A34(v1595, v1479, qword_280EA86A0, type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs);
    v1075 = *(v1529 + 48);
    v1076 = v1075(v1074, 1, v1559);
    v1077 = v1484;
    v1078 = v1480;
    if (v1076 == 1)
    {
      (*(v987 + 56))(v1484, 1, 1, v1011);
      v1079 = v1336;
      sub_2190E9A34(v1077, v1336, &qword_280E91A70, sub_2189AD5C8);
      v1080 = *(v987 + 48);
      if (v1080(v1079, 1, v1011) == 1)
      {
        type metadata accessor for TagFeedServiceConfig(0);
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
        v1081 = v1338;
        sub_219BEE974();
        v1082 = v1080(v1079, 1, v1011);
        v1083 = v1347;
        if (v1082 != 1)
        {
          sub_2190E9AA0(v1079, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v1081 = v1338;
        (*(v987 + 32))(v1338, v1079, v1011);
        v1083 = v1347;
      }

      (*(v987 + 32))(v1083, v1081, v1011);
      v1627 = 1;
      sub_2186F9548();
      swift_allocObject();
      v1087 = sub_219BEF534();
      v1088 = v1559;
      *&v1083[*(v1559 + 20)] = v1087;
      v1627 = 5;
      swift_allocObject();
      *&v1083[v1088[6]] = sub_219BEF534();
      LOBYTE(v1627) = 0;
      sub_2186F95C4();
      swift_allocObject();
      *&v1083[v1088[7]] = sub_219BEF534();
      LOBYTE(v1627) = 0;
      swift_allocObject();
      v1089 = sub_219BEF534();
      sub_2190E9AA0(v1484, &qword_280E91A70, sub_2189AD5C8);
      *&v1083[v1088[8]] = v1089;
      v1090 = v1083;
      v1085 = v1424;
      sub_2190E9AFC(v1090, v1424, type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs);
      v1091 = v1479;
      v1092 = v1075(v1479, 1, v1088);
      v993 = v1621;
      v1078 = v1480;
      v1086 = v1530;
      if (v1092 != 1)
      {
        sub_2190E9AA0(v1091, qword_280EA86A0, type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs);
      }
    }

    else
    {
      v1084 = v1074;
      v1085 = v1424;
      sub_2190E9AFC(v1084, v1424, type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs);
      v1086 = v1530;
    }

    sub_2190E9AFC(v1085, v1626 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleFeaturedKnobs, type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs);
    sub_2190E9A34(v993, v1078, &qword_280E9F820, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
    v1093 = *(v1086 + 48);
    v1094 = v1093(v1078, 1, v1069);
    v1095 = v1596;
    v1096 = v1425;
    v1097 = v1483;
    if (v1094 == 1)
    {
      v1098 = v1623;
      (*(v987 + 56))(v1623, 1, 1, v1011);
      sub_218DAEB34(v1098, v1096);
      v1099 = v1093(v1078, 1, v1069);
      v1100 = v1561;
      v1101 = v1558;
      if (v1099 != 1)
      {
        sub_2190E9AA0(v1078, &qword_280E9F820, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
      }
    }

    else
    {
      sub_2190E9AFC(v1078, v1425, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
      v1100 = v1561;
      v1101 = v1558;
    }

    sub_2190E9AFC(v1096, v1626 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleFullArchiveKnobs, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
    v1102 = v1095;
    v1103 = v1482;
    sub_2190E9A34(v1102, v1482, qword_280EA2608, type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs);
    v1104 = *(v1532 + 48);
    if (v1104(v1103, 1, v1560) == 1)
    {
      v1105 = v1419;
      (*(v987 + 56))(v1419, 1, 1, v1011);
      v1106 = v1339;
      sub_2190E9A34(v1105, v1339, &qword_280E91A70, sub_2189AD5C8);
      v1107 = *(v987 + 48);
      if (v1107(v1106, 1, v1011) == 1)
      {
        type metadata accessor for TagFeedServiceConfig(0);
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
        v1108 = v1341;
        sub_219BEE974();
        v1109 = v1107(v1106, 1, v1011);
        v1110 = v1350;
        if (v1109 != 1)
        {
          sub_2190E9AA0(v1106, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v1108 = v1341;
        (*(v987 + 32))(v1341, v1106, v1011);
        v1110 = v1350;
      }

      (*(v987 + 32))(v1110, v1108, v1011);
      v1627 = 2;
      sub_2186F9548();
      swift_allocObject();
      v1113 = sub_219BEF534();
      v1114 = v1560;
      *(v1110 + *(v1560 + 20)) = v1113;
      v1627 = 6;
      swift_allocObject();
      v1115 = sub_219BEF534();
      sub_2190E9AA0(v1419, &qword_280E91A70, sub_2189AD5C8);
      *(v1110 + *(v1114 + 24)) = v1115;
      *(v1110 + *(v1114 + 28)) = 0;
      v1112 = v1428;
      sub_2190E9AFC(v1110, v1428, type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs);
      v1116 = v1482;
      v1117 = v1104(v1482, 1, v1114);
      v1100 = v1561;
      v1101 = v1558;
      v1097 = v1483;
      if (v1117 != 1)
      {
        sub_2190E9AA0(v1116, qword_280EA2608, type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs);
      }
    }

    else
    {
      v1111 = v1103;
      v1112 = v1428;
      sub_2190E9AFC(v1111, v1428, type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs);
    }

    sub_2190E9AFC(v1112, v1626 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleScoreboardKnobs, type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs);
    sub_2190E9A34(v1597, v1097, qword_280EBF9A0, type metadata accessor for AffinityTagFeedGroupKnobs);
    v1118 = *(v1100 + 48);
    v1119 = v1533;
    v1120 = v1118(v1097, 1, v1533);
    v1121 = v1430;
    v1122 = v1536;
    if (v1120 == 1)
    {
      v1123 = v1623;
      (*(v987 + 56))(v1623, 1, 1, v1011);
      v1124 = v1119;
      v1125 = v1429;
      sub_218C4F3A4(v1123, 0, v1429);
      v1126 = v1118(v1097, 1, v1124);
      v1127 = v1125;
      v1128 = v1489;
      v1129 = v1598;
      if (v1126 != 1)
      {
        sub_2190E9AA0(v1097, qword_280EBF9A0, type metadata accessor for AffinityTagFeedGroupKnobs);
      }
    }

    else
    {
      v1127 = v1429;
      sub_2190E9AFC(v1097, v1429, type metadata accessor for AffinityTagFeedGroupKnobs);
      v1128 = v1489;
      v1129 = v1598;
    }

    sub_2190E9AFC(v1127, v1626 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_affinityKnobs, type metadata accessor for AffinityTagFeedGroupKnobs);
    v1130 = v1417;
    sub_2190E9A34(v1129, v1417, &qword_280EA4A98, type metadata accessor for SponsoredBannerTagFeedGroupKnobs);
    v1131 = *(v1535 + 48);
    if (v1131(v1130, 1, v1122) == 1)
    {
      v1132 = v1624;
      v1133 = v1623;
      (*(v1625 + 56))(v1623, 1, 1, v1624);
      sub_219584360(v1133, v1121);
      v1134 = v1131(v1130, 1, v1122);
      v1135 = v1615;
      v1136 = v1610;
      v1137 = v1604;
      if (v1134 != 1)
      {
        sub_2190E9AA0(v1130, &qword_280EA4A98, type metadata accessor for SponsoredBannerTagFeedGroupKnobs);
      }
    }

    else
    {
      sub_2190E9AFC(v1130, v1121, type metadata accessor for SponsoredBannerTagFeedGroupKnobs);
      v1135 = v1615;
      v1136 = v1610;
      v1137 = v1604;
      v1132 = v1624;
    }

    sub_2190E9AFC(v1121, v1626 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_sponsoredSuperfeedKnobs, type metadata accessor for SponsoredBannerTagFeedGroupKnobs);
    v1138 = v1485;
    sub_2190E9A34(v1599, v1485, qword_280EA9BD8, type metadata accessor for ChannelRecipesTagFeedGroupKnobs);
    v1141 = *(v1137 + 48);
    v1140 = v1137 + 48;
    v1139 = v1141;
    if (v1141(v1138, 1, v1562) == 1)
    {
      v1604 = v1140;
      v1142 = v1625;
      v1143 = v1422;
      (*(v1625 + 56))(v1422, 1, 1, v1132);
      v1144 = sub_219BEF814();
      v1145 = v1355;
      (*(*(v1144 - 8) + 56))(v1355, 1, 1, v1144);
      v1146 = v1343;
      sub_2190E9A34(v1143, v1343, &qword_280E91A70, sub_2189AD5C8);
      v1147 = *(v1142 + 48);
      if (v1147(v1146, 1, v1132) == 1)
      {
        type metadata accessor for TagFeedServiceConfig(0);
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
        v1148 = v1345;
        sub_219BEE974();
        v1149 = v1147(v1146, 1, v1132);
        v1150 = v1562;
        v1151 = v1359;
        if (v1149 != 1)
        {
          sub_2190E9AA0(v1146, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v1148 = v1345;
        (*(v1142 + 32))(v1345, v1146, v1132);
        v1150 = v1562;
        v1151 = v1359;
      }

      (*(v1625 + 32))(v1151, v1148, v1132);
      v1154 = MEMORY[0x277D32720];
      sub_2190E9A34(v1145, v1151 + v1150[5], &qword_280E912E0, MEMORY[0x277D32720]);
      sub_218CC4F9C();
      swift_allocObject();
      v1155 = MEMORY[0x277D84F90];
      *(v1151 + v1150[6]) = sub_219BEEE04();
      v1627 = 0;
      sub_2186ECA28();
      swift_allocObject();
      *(v1151 + v1150[7]) = sub_219BEF534();
      LOBYTE(v1627) = 0;
      sub_2186F95C4();
      swift_allocObject();
      *(v1151 + v1150[8]) = sub_219BEF534();
      LOBYTE(v1627) = 0;
      swift_allocObject();
      *(v1151 + v1150[9]) = sub_219BEF534();
      v1156 = sub_2194AE724(v1155);
      sub_2190E9AA0(v1145, &qword_280E912E0, v1154);
      sub_2190E9AA0(v1422, &qword_280E91A70, sub_2189AD5C8);
      *(v1151 + v1150[10]) = v1156;
      v1153 = v1432;
      sub_2190E9AFC(v1151, v1432, type metadata accessor for ChannelRecipesTagFeedGroupKnobs);
      v1157 = v1485;
      v1158 = v1139(v1485, 1, v1150);
      v1135 = v1615;
      v1128 = v1489;
      v1136 = v1610;
      v1101 = v1558;
      if (v1158 != 1)
      {
        sub_2190E9AA0(v1157, qword_280EA9BD8, type metadata accessor for ChannelRecipesTagFeedGroupKnobs);
      }
    }

    else
    {
      v1152 = v1138;
      v1153 = v1432;
      sub_2190E9AFC(v1152, v1432, type metadata accessor for ChannelRecipesTagFeedGroupKnobs);
    }

    sub_2190E9AFC(v1153, v1626 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_channelRecipesKnobs, type metadata accessor for ChannelRecipesTagFeedGroupKnobs);
    v1159 = v1486;
    sub_2190E9A34(v1136, v1486, qword_280EAC9F0, type metadata accessor for ForYouRecipesTagFeedGroupKnobs);
    v1160 = *(v1537 + 48);
    v1161 = v1160(v1159, 1, v1605);
    v1162 = v1613;
    if (v1161 == 1)
    {
      v1163 = v1625;
      (*(v1625 + 56))(v1101, 1, 1, v1132);
      (*(v1162 + 56))(v1128, 1, 1, v1614);
      v1164 = v1101;
      v1165 = v1346;
      sub_2190E9A34(v1164, v1346, &qword_280E91A70, sub_2189AD5C8);
      v1166 = *(v1163 + 48);
      if (v1166(v1165, 1, v1132) == 1)
      {
        type metadata accessor for TagFeedServiceConfig(0);
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
        v1167 = v1348;
        sub_219BEE974();
        if (v1166(v1165, 1, v1132) != 1)
        {
          sub_2190E9AA0(v1165, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v1170 = *(v1163 + 32);
        v1167 = v1348;
        v1170(v1348, v1165, v1132);
      }

      v1171 = v1361;
      (*(v1625 + 32))(v1361, v1167, v1132);
      v1627 = 1;
      sub_2186F9548();
      swift_allocObject();
      v1172 = sub_219BEF534();
      v1173 = v1605;
      *(v1171 + *(v1605 + 20)) = v1172;
      v1627 = 15;
      swift_allocObject();
      *(v1171 + *(v1173 + 24)) = sub_219BEF534();
      v1174 = v1351;
      sub_2190E9A34(v1128, v1351, &qword_280E916D0, MEMORY[0x277D324F0]);
      v1175 = *(v1162 + 48);
      v1176 = v1614;
      if (v1175(v1174, 1, v1614) == 1)
      {
        v1177 = v1353;
        sub_219BEF1C4();
        v1178 = v1177;
        if (v1175(v1174, 1, v1176) != 1)
        {
          sub_2190E9AA0(v1174, &qword_280E916D0, MEMORY[0x277D324F0]);
        }
      }

      else
      {
        v1178 = v1353;
        (*(v1162 + 32))(v1353, v1174, v1176);
      }

      v1179 = v1605;
      (*(v1162 + 32))(v1171 + *(v1605 + 28), v1178, v1176);
      sub_219BF0344();
      sub_2190E9FE4(0);
      swift_allocObject();
      *(v1171 + *(v1179 + 32)) = sub_219BEF534();
      LOBYTE(v1627) = 1;
      sub_2186F95C4();
      swift_allocObject();
      v1180 = sub_219BEF534();
      sub_2190E9AA0(v1128, &qword_280E916D0, MEMORY[0x277D324F0]);
      sub_2190E9AA0(v1558, &qword_280E91A70, sub_2189AD5C8);
      *(v1171 + *(v1179 + 36)) = v1180;
      v1169 = v1433;
      sub_2190E9AFC(v1171, v1433, type metadata accessor for ForYouRecipesTagFeedGroupKnobs);
      v1181 = v1486;
      v1182 = v1160(v1486, 1, v1179);
      v1135 = v1615;
      v1132 = v1624;
      if (v1182 != 1)
      {
        sub_2190E9AA0(v1181, qword_280EAC9F0, type metadata accessor for ForYouRecipesTagFeedGroupKnobs);
      }
    }

    else
    {
      v1168 = v1159;
      v1169 = v1433;
      sub_2190E9AFC(v1168, v1433, type metadata accessor for ForYouRecipesTagFeedGroupKnobs);
    }

    sub_2190E9AFC(v1169, v1626 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_forYouRecipesKnobs, type metadata accessor for ForYouRecipesTagFeedGroupKnobs);
    v1183 = v1441;
    sub_2190E9A34(v1600, v1441, qword_280EAC6F0, type metadata accessor for LatestRecipesTagFeedGroupKnobs);
    v1184 = *(v1611 + 48);
    v1611 += 48;
    v1185 = v1184(v1183, 1, v1606);
    v1186 = v1601;
    v1187 = v1488;
    if (v1185 == 1)
    {
      v1188 = v1625;
      (*(v1625 + 56))(v1488, 1, 1, v1132);
      (*(v1162 + 56))(v1490, 1, 1, v1614);
      v1189 = v1349;
      sub_2190E9A34(v1187, v1349, &qword_280E91A70, sub_2189AD5C8);
      v1190 = *(v1188 + 48);
      if (v1190(v1189, 1, v1132) == 1)
      {
        type metadata accessor for TagFeedServiceConfig(0);
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
        v1191 = v1352;
        sub_219BEE974();
        if (v1190(v1189, 1, v1132) != 1)
        {
          sub_2190E9AA0(v1189, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v1193 = *(v1188 + 32);
        v1191 = v1352;
        v1193(v1352, v1189, v1132);
      }

      v1194 = v1362;
      (*(v1625 + 32))(v1362, v1191, v1132);
      v1627 = 1;
      sub_2186F9548();
      swift_allocObject();
      v1195 = sub_219BEF534();
      v1196 = v1606;
      *(v1194 + *(v1606 + 20)) = v1195;
      v1627 = 12;
      swift_allocObject();
      *(v1194 + *(v1196 + 24)) = sub_219BEF534();
      v1197 = v1357;
      sub_2190E9A34(v1490, v1357, &qword_280E916D0, MEMORY[0x277D324F0]);
      v1198 = *(v1162 + 48);
      v1199 = v1614;
      if (v1198(v1197, 1, v1614) == 1)
      {
        v1200 = v1358;
        sub_219BEF1C4();
        v1201 = v1198(v1197, 1, v1199);
        v1202 = v1200;
        v1183 = v1441;
        if (v1201 != 1)
        {
          sub_2190E9AA0(v1197, &qword_280E916D0, MEMORY[0x277D324F0]);
        }
      }

      else
      {
        v1202 = v1358;
        (*(v1162 + 32))(v1358, v1197, v1199);
      }

      v1203 = v1606;
      (*(v1162 + 32))(v1194 + *(v1606 + 28), v1202, v1199);
      LOBYTE(v1627) = 1;
      sub_2186F95C4();
      swift_allocObject();
      v1204 = sub_219BEF534();
      sub_2190E9AA0(v1490, &qword_280E916D0, MEMORY[0x277D324F0]);
      sub_2190E9AA0(v1488, &qword_280E91A70, sub_2189AD5C8);
      *(v1194 + *(v1203 + 32)) = v1204;
      v1192 = v1434;
      sub_2190E9AFC(v1194, v1434, type metadata accessor for LatestRecipesTagFeedGroupKnobs);
      v1205 = v1184(v1183, 1, v1203);
      v1135 = v1615;
      if (v1205 != 1)
      {
        sub_2190E9AA0(v1183, qword_280EAC6F0, type metadata accessor for LatestRecipesTagFeedGroupKnobs);
      }
    }

    else
    {
      v1192 = v1434;
      sub_2190E9AFC(v1183, v1434, type metadata accessor for LatestRecipesTagFeedGroupKnobs);
    }

    sub_2190E9AFC(v1192, v1626 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_latestRecipesKnobs, type metadata accessor for LatestRecipesTagFeedGroupKnobs);
    v1206 = v1487;
    sub_2190E9A34(v1186, v1487, qword_280E98068, type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs);
    v1207 = *(v1538 + 48);
    v1208 = v1207(v1206, 1, v1135);
    v1209 = v1491;
    v1210 = v1431;
    if (v1208 == 1)
    {
      v1211 = v1625;
      (*(v1625 + 56))(v1431, 1, 1, v1132);
      v1212 = v1354;
      sub_2190E9A34(v1210, v1354, &qword_280E91A70, sub_2189AD5C8);
      v1213 = *(v1211 + 48);
      if (v1213(v1212, 1, v1132) == 1)
      {
        type metadata accessor for TagFeedServiceConfig(0);
        sub_21877C990(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
        v1214 = v1356;
        sub_219BEE974();
        v1215 = v1213(v1212, 1, v1132);
        v1216 = v1363;
        if (v1215 != 1)
        {
          sub_2190E9AA0(v1212, &qword_280E91A70, sub_2189AD5C8);
        }
      }

      else
      {
        v1214 = v1356;
        (*(v1211 + 32))(v1356, v1212, v1132);
        v1216 = v1363;
      }

      (*(v1625 + 32))(v1216, v1214, v1132);
      v1627 = 12;
      sub_2186F9548();
      swift_allocObject();
      v1219 = sub_219BEF534();
      v1220 = v1615;
      *(v1216 + *(v1615 + 20)) = v1219;
      v1627 = 0x4143C68000000000;
      sub_2186ECA28();
      swift_allocObject();
      v1221 = sub_219BEF534();
      sub_2190E9AA0(v1210, &qword_280E91A70, sub_2189AD5C8);
      *(v1216 + *(v1220 + 24)) = v1221;
      v1217 = v1437;
      sub_2190E9AFC(v1216, v1437, type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs);
      v1222 = v1487;
      v1223 = v1207(v1487, 1, v1220);
      v1209 = v1491;
      v1218 = v1539;
      if (v1223 != 1)
      {
        sub_2190E9AA0(v1222, qword_280E98068, type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs);
      }
    }

    else
    {
      v1217 = v1437;
      sub_2190E9AFC(v1206, v1437, type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs);
      v1218 = v1539;
    }

    sub_2190E9AFC(v1217, v1626 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_recentlyViewedRecipesKnobs, type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs);
    v1224 = v1426;
    sub_2190E9A34(v1602, v1426, qword_280EAF280, type metadata accessor for SavedRecipesTagFeedGroupKnobs);
    v1225 = *(v1218 + 48);
    v1226 = v1540;
    v1227 = v1225(v1224, 1, v1540);
    v1228 = v1439;
    v1229 = v1438;
    v1230 = v1603;
    if (v1227 == 1)
    {
      v1231 = v1625;
      v1232 = v1209;
      v1233 = v1623;
      (*(v1625 + 56))(v1623, 1, 1, v1624);
      v1234 = v1233;
      v1209 = v1232;
      sub_218FFFEBC(v1234, 0, v1229);
      if (v1225(v1224, 1, v1226) != 1)
      {
        sub_2190E9AA0(v1224, qword_280EAF280, type metadata accessor for SavedRecipesTagFeedGroupKnobs);
      }
    }

    else
    {
      sub_2190E9AFC(v1224, v1438, type metadata accessor for SavedRecipesTagFeedGroupKnobs);
      v1231 = v1625;
    }

    sub_2190E9AFC(v1229, v1626 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_savedRecipesKnobs, type metadata accessor for SavedRecipesTagFeedGroupKnobs);
    v1235 = v1427;
    sub_2190E9A34(v1230, v1427, qword_280EA4098, type metadata accessor for TrendingRecipesTagFeedGroupKnobs);
    v1236 = *(v1541 + 48);
    v1237 = v1542;
    if (v1236(v1235, 1, v1542) == 1)
    {
      v1238 = v1623;
      (*(v1231 + 56))(v1623, 1, 1, v1624);
      sub_218C6AC0C(v1238, 0, 0, v1228);
      v1239 = v1236(v1235, 1, v1237);
      v1240 = v1436;
      v1241 = v1435;
      v1242 = v1601;
      if (v1239 != 1)
      {
        sub_2190E9AA0(v1235, qword_280EA4098, type metadata accessor for TrendingRecipesTagFeedGroupKnobs);
      }
    }

    else
    {
      sub_2190E9AFC(v1235, v1228, type metadata accessor for TrendingRecipesTagFeedGroupKnobs);
      v1240 = v1436;
      v1241 = v1435;
      v1242 = v1601;
    }

    sub_2190E9AFC(v1228, v1626 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_trendingRecipesKnobs, type metadata accessor for TrendingRecipesTagFeedGroupKnobs);
    v1243 = v1534;
    sub_2190E9A34(v1534, v1209, qword_280EADF38, type metadata accessor for TopicRecipesTagFeedGroupKnobs);
    v1245 = v1607 + 48;
    v1244 = *(v1607 + 48);
    if (v1244(v1209, 1, v1563) == 1)
    {
      v1246 = v1209;
      v1247 = v1623;
      (*(v1625 + 56))(v1623, 1, 1, v1624);
      v1248 = sub_219BEF814();
      v1607 = v1245;
      v1249 = v1242;
      v1250 = v1248;
      v1251 = v1244;
      v1252 = *(*(v1248 - 8) + 56);
      v1252(v1241, 1, 1, v1248);
      v1252(v1240, 1, 1, v1250);
      v1253 = v1440;
      v1254 = v1247;
      v1255 = v1246;
      sub_218D1D278(v1254, v1241, v1240, 0, 0, 0, 0, 0, v1440);
      sub_2190E9AA0(v1243, qword_280EADF38, type metadata accessor for TopicRecipesTagFeedGroupKnobs);
      sub_2190E9AA0(v1603, qword_280EA4098, type metadata accessor for TrendingRecipesTagFeedGroupKnobs);
      sub_2190E9AA0(v1602, qword_280EAF280, type metadata accessor for SavedRecipesTagFeedGroupKnobs);
      sub_2190E9AA0(v1249, qword_280E98068, type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs);
      sub_2190E9AA0(v1600, qword_280EAC6F0, type metadata accessor for LatestRecipesTagFeedGroupKnobs);
      sub_2190E9AA0(v1610, qword_280EAC9F0, type metadata accessor for ForYouRecipesTagFeedGroupKnobs);
      sub_2190E9AA0(v1599, qword_280EA9BD8, type metadata accessor for ChannelRecipesTagFeedGroupKnobs);
      sub_2190E9AA0(v1598, &qword_280EA4A98, type metadata accessor for SponsoredBannerTagFeedGroupKnobs);
      sub_2190E9AA0(v1597, qword_280EBF9A0, type metadata accessor for AffinityTagFeedGroupKnobs);
      sub_2190E9AA0(v1596, qword_280EA2608, type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs);
      sub_2190E9AA0(v1621, &qword_280E9F820, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
      sub_2190E9AA0(v1595, qword_280EA86A0, type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs);
      sub_2190E9AA0(v1594, qword_280E981F8, type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs);
      sub_2190E9AA0(v1593, qword_280EABA58, type metadata accessor for PuzzleArchiveTagFeedGroupKnobs);
      sub_2190E9AA0(v1592, qword_280EB7648, type metadata accessor for PuzzleListTagFeedGroupKnobs);
      sub_2190E9AA0(v1591, qword_280EA1DD8, type metadata accessor for SportsEventTopicTagFeedGroupKnobs);
      sub_2190E9AA0(v1590, &qword_280EA8080, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
      sub_2190E9AA0(v1589, qword_280EBB968, type metadata accessor for DateRangeTagFeedGroupKnobs);
      sub_2190E9AA0(v1588, qword_280EAB8E8, type metadata accessor for RecentStoriesTagFeedGroupKnobs);
      sub_2190E9AA0(v1609, qword_280EC4D68, type metadata accessor for ForYouTagFeedGroupKnobs);
      sub_2190E9AA0(v1587, qword_280EB87C0, type metadata accessor for HighlightsTagFeedGroupKnobs);
      sub_2190E9AA0(v1617, &qword_280EBFB10, type metadata accessor for WeatherTagFeedGroupKnobs);
      sub_2190E9AA0(v1586, qword_280EA4788, type metadata accessor for SportsFavoritesTagFeedGroupKnobs);
      sub_2190E9AA0(v1585, qword_280EA18A0, type metadata accessor for SportsTopStoriesTagFeedGroupKnobs);
      sub_2190E9AA0(v1584, qword_280EA7F10, type metadata accessor for SportsScheduleTagFeedGroupKnobs);
      sub_2190E9AA0(v1583, &qword_280EA1AF0, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
      sub_2190E9AA0(v1582, &qword_280EAEC50, type metadata accessor for SportsRecordTagFeedGroupKnobs);
      sub_2190E9AA0(v1620, qword_280EAC298, type metadata accessor for MySportsTopicTagFeedGroupKnobs);
      sub_2190E9AA0(v1581, qword_280E9A708, type metadata accessor for SportsEventArticlesTagFeedGroupKnobs);
      sub_2190E9AA0(v1622, qword_280EA1D08, type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs);
      sub_2190E9AA0(v1580, qword_280E9A648, type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs);
      sub_2190E9AA0(v1616, qword_280EA4848, type metadata accessor for SportsEventInfoTagFeedGroupKnobs);
      sub_2190E9AA0(v1619, qword_280EA49D8, type metadata accessor for SportsBoxScoresTagFeedGroupKnobs);
      sub_2190E9AA0(v1579, qword_280EAB210, type metadata accessor for SportsBracketTagFeedGroupKnobs);
      sub_2190E9AA0(v1578, qword_280EA46C0, type metadata accessor for SportsStandingsTagFeedGroupKnobs);
      sub_2190E9AA0(v1618, qword_280EB2970, type metadata accessor for SportsLinksTagFeedGroupKnobs);
      sub_2190E9AA0(v1576, qword_280EAE9A8, type metadata accessor for SportsScoresTagFeedGroupKnobs);
      sub_2190E9AA0(v1577, qword_280EAE9A8, type metadata accessor for SportsScoresTagFeedGroupKnobs);
      sub_2190E9AA0(v1575, qword_280E965F8, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
      sub_2190E9AA0(v1574, qword_280EA9B18, type metadata accessor for ChannelSectionTagFeedGroupKnobs);
      sub_2190E9AA0(v1272, qword_280EB5908, type metadata accessor for ArticleListTagFeedGroupKnobs);
      sub_2190E9AA0(v1271, &qword_280EBB648, type metadata accessor for IssueListTagFeedGroupKnobs);
      sub_2190E9AA0(v1270, qword_280EC0C60, type metadata accessor for PaywallTagFeedGroupKnobs);
      sub_2190E9AA0(v1264, qword_280E9ACF8, type metadata accessor for PromotedArticleListTagFeedGroupKnobs);
      v1256 = v1251(v1246, 1, v1563);
      v519 = v1567;
      if (v1256 != 1)
      {
        sub_2190E9AA0(v1255, qword_280EADF38, type metadata accessor for TopicRecipesTagFeedGroupKnobs);
      }
    }

    else
    {
      sub_2190E9AA0(v1243, qword_280EADF38, type metadata accessor for TopicRecipesTagFeedGroupKnobs);
      sub_2190E9AA0(v1603, qword_280EA4098, type metadata accessor for TrendingRecipesTagFeedGroupKnobs);
      sub_2190E9AA0(v1602, qword_280EAF280, type metadata accessor for SavedRecipesTagFeedGroupKnobs);
      sub_2190E9AA0(v1242, qword_280E98068, type metadata accessor for RecentlyViewedRecipesTagFeedGroupKnobs);
      sub_2190E9AA0(v1600, qword_280EAC6F0, type metadata accessor for LatestRecipesTagFeedGroupKnobs);
      sub_2190E9AA0(v1610, qword_280EAC9F0, type metadata accessor for ForYouRecipesTagFeedGroupKnobs);
      sub_2190E9AA0(v1599, qword_280EA9BD8, type metadata accessor for ChannelRecipesTagFeedGroupKnobs);
      sub_2190E9AA0(v1598, &qword_280EA4A98, type metadata accessor for SponsoredBannerTagFeedGroupKnobs);
      sub_2190E9AA0(v1597, qword_280EBF9A0, type metadata accessor for AffinityTagFeedGroupKnobs);
      sub_2190E9AA0(v1596, qword_280EA2608, type metadata accessor for PuzzleScoreboardTagFeedGroupKnobs);
      sub_2190E9AA0(v1621, &qword_280E9F820, type metadata accessor for PuzzleFullArchiveTagFeedGroupKnobs);
      sub_2190E9AA0(v1595, qword_280EA86A0, type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs);
      sub_2190E9AA0(v1594, qword_280E981F8, type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs);
      sub_2190E9AA0(v1593, qword_280EABA58, type metadata accessor for PuzzleArchiveTagFeedGroupKnobs);
      sub_2190E9AA0(v1592, qword_280EB7648, type metadata accessor for PuzzleListTagFeedGroupKnobs);
      sub_2190E9AA0(v1591, qword_280EA1DD8, type metadata accessor for SportsEventTopicTagFeedGroupKnobs);
      sub_2190E9AA0(v1590, &qword_280EA8080, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
      sub_2190E9AA0(v1589, qword_280EBB968, type metadata accessor for DateRangeTagFeedGroupKnobs);
      sub_2190E9AA0(v1588, qword_280EAB8E8, type metadata accessor for RecentStoriesTagFeedGroupKnobs);
      sub_2190E9AA0(v1609, qword_280EC4D68, type metadata accessor for ForYouTagFeedGroupKnobs);
      sub_2190E9AA0(v1587, qword_280EB87C0, type metadata accessor for HighlightsTagFeedGroupKnobs);
      sub_2190E9AA0(v1617, &qword_280EBFB10, type metadata accessor for WeatherTagFeedGroupKnobs);
      sub_2190E9AA0(v1586, qword_280EA4788, type metadata accessor for SportsFavoritesTagFeedGroupKnobs);
      sub_2190E9AA0(v1585, qword_280EA18A0, type metadata accessor for SportsTopStoriesTagFeedGroupKnobs);
      sub_2190E9AA0(v1584, qword_280EA7F10, type metadata accessor for SportsScheduleTagFeedGroupKnobs);
      sub_2190E9AA0(v1583, &qword_280EA1AF0, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
      sub_2190E9AA0(v1582, &qword_280EAEC50, type metadata accessor for SportsRecordTagFeedGroupKnobs);
      sub_2190E9AA0(v1620, qword_280EAC298, type metadata accessor for MySportsTopicTagFeedGroupKnobs);
      sub_2190E9AA0(v1581, qword_280E9A708, type metadata accessor for SportsEventArticlesTagFeedGroupKnobs);
      sub_2190E9AA0(v1622, qword_280EA1D08, type metadata accessor for SportsKeyPlayersTagFeedGroupKnobs);
      sub_2190E9AA0(v1580, qword_280E9A648, type metadata accessor for SportsInjuryReportsTagFeedGroupKnobs);
      sub_2190E9AA0(v1616, qword_280EA4848, type metadata accessor for SportsEventInfoTagFeedGroupKnobs);
      sub_2190E9AA0(v1619, qword_280EA49D8, type metadata accessor for SportsBoxScoresTagFeedGroupKnobs);
      sub_2190E9AA0(v1579, qword_280EAB210, type metadata accessor for SportsBracketTagFeedGroupKnobs);
      sub_2190E9AA0(v1578, qword_280EA46C0, type metadata accessor for SportsStandingsTagFeedGroupKnobs);
      sub_2190E9AA0(v1618, qword_280EB2970, type metadata accessor for SportsLinksTagFeedGroupKnobs);
      sub_2190E9AA0(v1576, qword_280EAE9A8, type metadata accessor for SportsScoresTagFeedGroupKnobs);
      sub_2190E9AA0(v1577, qword_280EAE9A8, type metadata accessor for SportsScoresTagFeedGroupKnobs);
      sub_2190E9AA0(v1575, qword_280E965F8, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
      sub_2190E9AA0(v1574, qword_280EA9B18, type metadata accessor for ChannelSectionTagFeedGroupKnobs);
      sub_2190E9AA0(v1272, qword_280EB5908, type metadata accessor for ArticleListTagFeedGroupKnobs);
      sub_2190E9AA0(v1271, &qword_280EBB648, type metadata accessor for IssueListTagFeedGroupKnobs);
      sub_2190E9AA0(v1270, qword_280EC0C60, type metadata accessor for PaywallTagFeedGroupKnobs);
      sub_2190E9AA0(v1264, qword_280E9ACF8, type metadata accessor for PromotedArticleListTagFeedGroupKnobs);
      v1253 = v1440;
      sub_2190E9AFC(v1209, v1440, type metadata accessor for TopicRecipesTagFeedGroupKnobs);
      v519 = v1567;
    }

    v518 = v1626;
    sub_2190E9AFC(v1253, v1626 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_topicRecipesKnobs, type metadata accessor for TopicRecipesTagFeedGroupKnobs);
  }

  v1257 = v1566;
  v1258 = v1564 & ~(v1564 >> 63);
  if (v1565)
  {
    v1258 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v519[2] = v518;
  v519[3] = v1258;
  if (!v1257)
  {
    LOBYTE(v1627) = 3;
    sub_2190EA0E8(0, v512, v513, v514);
    swift_allocObject();
    v1257 = sub_219BEF534();
  }

  v519[4] = v1257;
  return v519;
}

uint64_t sub_2190E91CC(void *a1)
{
  v3 = v1;
  sub_2190EA518(0, &qword_27CC15FF8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190EA4C4();
  sub_219BF7B44();
  v15 = *(v3 + 16);
  HIBYTE(v14) = 0;
  type metadata accessor for TagFeedGroupKnobs(0);
  sub_21877C990(&qword_27CC16000, type metadata accessor for TagFeedGroupKnobs, &unk_219CA8FD4);
  sub_219BF7834();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_219BF7824();
    v15 = *(v3 + 32);
    HIBYTE(v14) = 2;
    sub_2190EA0E8(0, v10, v11, v12);
    sub_21877C990(&qword_27CC16008, sub_2190EA0E8, MEMORY[0x277D32610]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2190E9408(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x70756F724778616DLL;
  v4 = 0xE900000000000073;
  if (v2 != 1)
  {
    v3 = 0x5368736572666572;
    v4 = 0xEF79676574617274;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6F6E4B70756F7267;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000007362;
  }

  v7 = 0x70756F724778616DLL;
  v8 = 0xE900000000000073;
  if (*a2 != 1)
  {
    v7 = 0x5368736572666572;
    v8 = 0xEF79676574617274;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6F6E4B70756F7267;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000007362;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_2190E952C()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_2190E95E4(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_2190E9688(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_2190E973C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2190EA694(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2190E976C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007362;
  v4 = 0xE900000000000073;
  v5 = 0x70756F724778616DLL;
  if (v2 != 1)
  {
    v5 = 0x5368736572666572;
    v4 = 0xEF79676574617274;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F6E4B70756F7267;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2190E97E0()
{
  v1 = 0x70756F724778616DLL;
  if (*v0 != 1)
  {
    v1 = 0x5368736572666572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F6E4B70756F7267;
  }
}

unint64_t sub_2190E9850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2190EA694(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2190E9878(uint64_t a1)
{
  v2 = sub_2190EA4C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2190E98B4(uint64_t a1)
{
  v2 = sub_2190EA4C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2190E98F0()
{

  return swift_deallocClassInstance();
}

void *sub_2190E9954@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2190EA23C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2190E99B0@<X0>(uint64_t a2@<X8>)
{
  sub_219BEF524();
  v3 = v5;
  if (qword_280EE95D8 != -1)
  {
    swift_once();
    v3 = v5;
  }

  return sub_2190D9694(v3, a2);
}

uint64_t sub_2190E9A34(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2186EDD04(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2190E9AA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186EDD04(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2190E9AFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2190E9B64(uint64_t a1)
{
  if (!qword_280E91510)
  {
    sub_2190E9BE8();
    sub_2190E9C3C();
    sub_2190E9C90();
    v1 = sub_219BEF544();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91510);
    }
  }
}

unint64_t sub_2190E9BE8()
{
  result = qword_280EA9F20;
  if (!qword_280EA9F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA9F20);
  }

  return result;
}

unint64_t sub_2190E9C3C()
{
  result = qword_280EA9F30;
  if (!qword_280EA9F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA9F30);
  }

  return result;
}

unint64_t sub_2190E9C90()
{
  result = qword_280EA9F28;
  if (!qword_280EA9F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA9F28);
  }

  return result;
}

void sub_2190E9CE4(uint64_t a1)
{
  if (!qword_280E91508)
  {
    sub_2190E9D68();
    sub_2190E9DBC();
    sub_2190E9E10();
    v1 = sub_219BEF544();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91508);
    }
  }
}

unint64_t sub_2190E9D68()
{
  result = qword_280EE2428;
  if (!qword_280EE2428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE2428);
  }

  return result;
}

unint64_t sub_2190E9DBC()
{
  result = qword_280EE2438[0];
  if (!qword_280EE2438[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EE2438);
  }

  return result;
}

unint64_t sub_2190E9E10()
{
  result = qword_280EE2430;
  if (!qword_280EE2430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE2430);
  }

  return result;
}

void sub_2190E9E64()
{
  if (!qword_280E91420)
  {
    v0 = sub_219BEF544();
    if (!v1)
    {
      atomic_store(v0, &qword_280E91420);
    }
  }
}

void sub_2190E9EE0(uint64_t a1)
{
  if (!qword_280E917A8)
  {
    sub_219BF3DC4();
    v1 = MEMORY[0x277D341E0];
    sub_21877C990(&unk_280E8FF90, MEMORY[0x277D341E0], MEMORY[0x277D34200]);
    sub_21877C990(&unk_280E8FFB0, v1, MEMORY[0x277D341E8]);
    sub_21877C990(&qword_280E8FFA8, v1, MEMORY[0x277D341F0]);
    v2 = sub_219BEEE14();
    if (!v3)
    {
      atomic_store(v2, &qword_280E917A8);
    }
  }
}

void sub_2190E9FE4(uint64_t a1)
{
  if (!qword_280E91448)
  {
    sub_219BF0354();
    v1 = MEMORY[0x277D32C58];
    sub_21877C990(&qword_280E90F78, MEMORY[0x277D32C58], MEMORY[0x277D32C70]);
    sub_21877C990(&qword_280E90F88, v1, MEMORY[0x277D32C60]);
    sub_21877C990(&qword_280E90F80, v1, MEMORY[0x277D32C68]);
    v2 = sub_219BEF544();
    if (!v3)
    {
      atomic_store(v2, &qword_280E91448);
    }
  }
}

void sub_2190EA0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_280E91538)
  {
    sub_2190EA1EC(255, a2, a3, a4);
    sub_21877C990(&qword_280EABB80, sub_2190EA1EC, &unk_219CBD668);
    sub_21877C990(qword_280EABB90, sub_2190EA1EC, &unk_219CBD640);
    sub_21877C990(&qword_280EABB88, sub_2190EA1EC, &unk_219CBD6D0);
    v4 = sub_219BEF544();
    if (!v5)
    {
      atomic_store(v4, &qword_280E91538);
    }
  }
}

void sub_2190EA1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_280EABB78)
  {
    refreshed = type metadata accessor for OverridableFeedRefreshStrategy(0, &type metadata for Settings.Modules.TagFeed, a3, a4);
    if (!v5)
    {
      atomic_store(refreshed, &qword_280EABB78);
    }
  }
}

void *sub_2190EA23C(void *a1)
{
  sub_2190EA518(0, &qword_280E8CF40, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190EA4C4();
  sub_219BF7B34();
  if (!v1)
  {
    type metadata accessor for TagFeedGroupKnobs(0);
    LOBYTE(v20) = 0;
    sub_21877C990(&qword_280ED4D48, type metadata accessor for TagFeedGroupKnobs, &unk_219CA8FFC);
    sub_219BF7674();
    v17 = v22;
    LOBYTE(v19) = 1;
    sub_219BF7674();
    v9 = v20;
    v10 = v21;
    sub_2190EA0E8(0, v11, v12, v13);
    v18 = 2;
    sub_21877C990(&qword_280E91540, sub_2190EA0E8, MEMORY[0x277D32620]);
    sub_219BF7674();
    v14 = v19;
    type metadata accessor for TagFeedKnobsConfig();
    v8 = swift_allocObject();
    sub_2190D9998(v17, v9, v10, v14);
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_2190EA4C4()
{
  result = qword_280ED2858;
  if (!qword_280ED2858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED2858);
  }

  return result;
}

void sub_2190EA518(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2190EA4C4();
    v7 = a3(a1, &type metadata for TagFeedKnobsConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2190EA590()
{
  result = qword_27CC16010;
  if (!qword_27CC16010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16010);
  }

  return result;
}

unint64_t sub_2190EA5E8()
{
  result = qword_280ED2848;
  if (!qword_280ED2848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED2848);
  }

  return result;
}

unint64_t sub_2190EA640()
{
  result = qword_280ED2850;
  if (!qword_280ED2850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED2850);
  }

  return result;
}

unint64_t sub_2190EA694(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2190EA6E4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI233FeedPuzzleRankStateCommandHandler_puzzleHistory), *(v1 + OBJC_IVAR____TtC7NewsUI233FeedPuzzleRankStateCommandHandler_puzzleHistory + 24));
  v4 = [sub_219BF0AA4() identifier];
  swift_unknownObjectRelease();
  sub_219BF5414();

  v5 = sub_219BF3424();

  if (v5)
  {
    v6 = [v5 rankID];
    if (v6 && (v7 = v6, sub_219BF5414(), v7, __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI233FeedPuzzleRankStateCommandHandler_puzzleRankProvider), *(v2 + OBJC_IVAR____TtC7NewsUI233FeedPuzzleRankStateCommandHandler_puzzleRankProvider + 24)), v8 = [sub_219BF0AA4() puzzleType], swift_unknownObjectRelease(), v9 = objc_msgSend(v8, sel_identifier), swift_unknownObjectRelease(), sub_219BF5414(), v9, v10 = sub_219BF30D4(), , , v10))
    {
      v11 = [v10 index];
    }

    else
    {
      v11 = -1;
    }
  }

  else
  {
    v11 = -1;
  }

  *a1 = v11;
  v12 = *MEMORY[0x277D32248];
  v13 = sub_219BEEAA4();
  v14 = *(*(v13 - 8) + 104);

  return v14(a1, v12, v13);
}

uint64_t sub_2190EA9C8()
{
  sub_2189698E4(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF0A14();
  v3 = sub_219BF2204();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return 0;
  }

  v5 = (*(v4 + 88))(v2, v3);
  if (v5 == *MEMORY[0x277D337A0] || v5 == *MEMORY[0x277D33798])
  {
    return 1;
  }

  if (v5 == *MEMORY[0x277D33790])
  {
    return 0;
  }

  result = sub_219BF78E4();
  __break(1u);
  return result;
}

uint64_t sub_2190EAB10()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_219BEAA14();
    sub_219BF0AC4();
    sub_219BE6FD4();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2190EABF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2190ED054(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2190EAC20(uint64_t a1)
{
  v2 = sub_2187AD790();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2190EAC5C(uint64_t a1)
{
  v2 = sub_2187AD790();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EngagementUpsellOfferEntry.encode(to:)(void *a1)
{
  sub_2187AD6F8(0, &qword_280E8C4E0, sub_2187AD790, &type metadata for EngagementUpsellOfferEntry.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187AD790();
  sub_219BF7B44();
  v13 = 0;
  sub_219BF7804();
  if (!v1)
  {
    v12 = 1;
    sub_219BF7804();
    type metadata accessor for EngagementUpsellOfferEntry(0);
    v11 = 2;
    type metadata accessor for EngagementUpsellBestOffer(0);
    sub_2187ADD20(&qword_280EBEDF0, type metadata accessor for EngagementUpsellBestOffer, &unk_219C5C3C0);
    sub_219BF77E4();
    v10 = 3;
    sub_219BDBD34();
    sub_2187ADD20(&qword_280EE9CA0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t EngagementUpsellOfferEntry.description.getter()
{
  sub_21876CFD0(0, qword_280EBED90, type metadata accessor for EngagementUpsellBestOffer);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - v2;
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_219BF7314();

  v15 = 0x696C456C61697274;
  v16 = 0xEF203A656C626967;
  if (*v0)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*v0)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x21CECC330](v4, v5);

  MEMORY[0x21CECC330](0x66664F7473656220, 0xEC000000203A7265);
  v6 = type metadata accessor for EngagementUpsellOfferEntry(0);
  sub_2190ED1F0(&v0[*(v6 + 24)], v3, qword_280EBED90, type metadata accessor for EngagementUpsellBestOffer);
  v7 = type metadata accessor for EngagementUpsellBestOffer(0);
  if ((*(*(v7 - 8) + 48))(v3, 1, v7) == 1)
  {
    sub_2190ED25C(v3, qword_280EBED90, type metadata accessor for EngagementUpsellBestOffer);
    v8 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E75;
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_219BF7314();
    MEMORY[0x21CECC330](0x7954726566666F28, 0xEC000000203A6570);
    sub_219BE4944();
    sub_219BF7484();
    MEMORY[0x21CECC330](0xD000000000000011, 0x8000000219D0B0E0);
    sub_219BE4144();
    sub_219BF7484();
    MEMORY[0x21CECC330](0xD000000000000017, 0x8000000219D0B100);
    if (v3[*(v7 + 24)])
    {
      v10 = 1702195828;
    }

    else
    {
      v10 = 0x65736C6166;
    }

    if (v3[*(v7 + 24)])
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE500000000000000;
    }

    MEMORY[0x21CECC330](v10, v11);

    MEMORY[0x21CECC330](41, 0xE100000000000000);
    v9 = v13;
    v8 = v14;
    sub_2187AE6C0(v3, type metadata accessor for EngagementUpsellBestOffer);
  }

  MEMORY[0x21CECC330](v9, v8);

  return v15;
}

uint64_t sub_2190EB26C()
{
  sub_219BF7314();
  MEMORY[0x21CECC330](0x7954726566666F28, 0xEC000000203A6570);
  sub_219BE4944();
  sub_219BF7484();
  MEMORY[0x21CECC330](0xD000000000000011, 0x8000000219D0B0E0);
  v1 = type metadata accessor for EngagementUpsellBestOffer(0);
  sub_219BE4144();
  sub_219BF7484();
  MEMORY[0x21CECC330](0xD000000000000017, 0x8000000219D0B100);
  if (*(v0 + *(v1 + 24)))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + *(v1 + 24)))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x21CECC330](v2, v3);

  MEMORY[0x21CECC330](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_2190EB3E0(void *a1)
{
  sub_2187AD6F8(0, &qword_280E8C528, sub_2187AE3A4, &type metadata for EngagementUpsellBestOffer.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187AE3A4();
  sub_219BF7B44();
  v12 = 0;
  sub_219BE4944();
  sub_2187ADD20(&unk_280EE61D8, MEMORY[0x277D353E0], MEMORY[0x277D353E8]);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for EngagementUpsellBestOffer(0);
    v11 = 1;
    sub_219BE4144();
    sub_2187ADD20(&unk_280EE6400, MEMORY[0x277D34FA0], MEMORY[0x277D34FA8]);
    sub_219BF7834();
    v10 = 2;
    sub_219BF7804();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2190EB644@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2190ED330(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2190EB66C(uint64_t a1)
{
  v2 = sub_2187AE3A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2190EB6A8(uint64_t a1)
{
  v2 = sub_2187AE3A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2190EB700@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v87 = sub_219BDBD34();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v83 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for EngagementUpsellOfferEntry(0);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v82 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21876CFD0(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v4 - 8);
  v81 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v80 = &v73 - v7;
  sub_21876CFD0(0, qword_280EBED90, type metadata accessor for EngagementUpsellBestOffer);
  MEMORY[0x28223BE20](v8 - 8);
  v79 = &v73 - v9;
  v90 = type metadata accessor for EngagementUpsellBestOffer(0);
  v78 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v92 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE4144();
  v96 = *(v11 - 8);
  v97 = v11;
  MEMORY[0x28223BE20](v11);
  v73 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v95 = &v73 - v14;
  v91 = sub_219BE4944();
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v74 = (&v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v94 = &v73 - v17;
  v18 = sub_219BE3D64();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x277D35380];
  sub_21876CFD0(0, &qword_280EE6200, MEMORY[0x277D35380]);
  MEMORY[0x28223BE20](v23 - 8);
  v76 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v73 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v73 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v73 - v32;
  v77 = v1;
  v75 = v1 + OBJC_IVAR____TtC7NewsUI228EngagementUpsellOfferManager_offerManager;
  swift_getObjectType();
  (*(v19 + 104))(v21, *MEMORY[0x277D34D60], v18);
  swift_unknownObjectRetain();
  sub_219BE3F44();
  swift_unknownObjectRelease();
  (*(v19 + 8))(v21, v18);
  v93 = v33;
  sub_2190ED1F0(v33, v30, &qword_280EE6200, v22);
  v34 = sub_219BE4864();
  v35 = *(v34 - 8);
  v36 = *(v35 + 6);
  if (v36(v30, 1, v34) == 1)
  {
    sub_2190ED25C(v30, &qword_280EE6200, MEMORY[0x277D35380]);
    v37 = v89;
    v38 = v91;
    (*(v89 + 104))(v94, *MEMORY[0x277D353D8], v91);
  }

  else
  {
    v39 = v74;
    sub_219BE4844();
    (*(v35 + 1))(v30, v34);
    v37 = v89;
    v38 = v91;
    (*(v89 + 32))(v94, v39, v91);
  }

  v74 = v35;
  sub_2190ED1F0(v93, v27, &qword_280EE6200, MEMORY[0x277D35380]);
  v40 = v36(v27, 1, v34);
  v41 = v97;
  v42 = v92;
  if (v40 == 1)
  {
    sub_2190ED25C(v27, &qword_280EE6200, MEMORY[0x277D35380]);
    (*(v96 + 104))(v95, *MEMORY[0x277D34F88], v41);
  }

  else
  {
    v43 = v36;
    v44 = v92;
    v45 = v38;
    v46 = v37;
    v47 = v73;
    sub_219BE4834();
    v74[1](v27, v34);
    v48 = v47;
    v37 = v46;
    v38 = v45;
    v42 = v44;
    v36 = v43;
    (*(v96 + 32))(v95, v48, v41);
  }

  v49 = v76;
  sub_2190ED1F0(v93, v76, &qword_280EE6200, MEMORY[0x277D35380]);
  if (v36(v49, 1, v34) == 1)
  {
    sub_2190ED25C(v49, &qword_280EE6200, MEMORY[0x277D35380]);
    v50 = 0;
  }

  else
  {
    v50 = sub_219BE47A4();
    v74[1](v49, v34);
  }

  v51 = v81;
  v52 = v80;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v53 = sub_219BE3F64();
  swift_unknownObjectRelease();
  (*(v37 + 16))(v42, v94, v38);
  v54 = v90;
  (*(v96 + 16))(v42 + *(v90 + 20), v95, v97);
  *(v42 + *(v54 + 24)) = v50 & 1;
  v55 = [*(v77 + OBJC_IVAR____TtC7NewsUI228EngagementUpsellOfferManager_bundleSubscriptionManager) cachedSubscription];
  if (objc_getAssociatedObject(v55, v55 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v99 = 0u;
    v100 = 0u;
  }

  v101 = v99;
  v102 = v100;
  if (*(&v100 + 1))
  {
    sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v56 = v98;
      v57 = [v98 integerValue];
      if (v57 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_19;
    }
  }

  else
  {
    sub_218806FD0(&v101);
  }

  v56 = 0;
  v57 = 0;
LABEL_19:
  if (objc_getAssociatedObject(v55, ~v57))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v99 = 0u;
    v100 = 0u;
  }

  v101 = v99;
  v102 = v100;
  if (*(&v100 + 1))
  {
    sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v58 = v98;
      v59 = [v58 integerValue];

      v60 = v59 - 89;
      goto LABEL_27;
    }
  }

  else
  {
    sub_218806FD0(&v101);
  }

LABEL_26:

  v60 = -89;
LABEL_27:
  v61 = v60 ^ v57;
  v62 = v42;
  v63 = v79;
  sub_2187AE658(v62, v79, type metadata accessor for EngagementUpsellBestOffer);
  (*(v78 + 56))(v63, 0, 1, v90);
  v64 = v86;
  v65 = v87;
  (*(v86 + 56))(v52, 1, 1, v87);
  v66 = v82;
  *v82 = v53 & 1;
  *(v66 + 1) = (v61 & 1) == 0;
  v67 = v85;
  sub_2190ED1F0(v63, v66 + *(v85 + 24), qword_280EBED90, type metadata accessor for EngagementUpsellBestOffer);
  sub_2190ED1F0(v52, v51, &qword_280EE9C40, MEMORY[0x277CC9578]);
  v68 = *(v64 + 48);
  v69 = v51;
  if (v68(v51, 1, v65) == 1)
  {
    v70 = v83;
    sub_219BDBCB4();
    sub_2190ED25C(v52, &qword_280EE9C40, MEMORY[0x277CC9578]);
    sub_2190ED25C(v63, qword_280EBED90, type metadata accessor for EngagementUpsellBestOffer);
    sub_2187AE6C0(v92, type metadata accessor for EngagementUpsellBestOffer);
    (*(v96 + 8))(v95, v97);
    (*(v89 + 8))(v94, v91);
    sub_2190ED25C(v93, &qword_280EE6200, MEMORY[0x277D35380]);
    if (v68(v69, 1, v65) != 1)
    {
      sub_2190ED25C(v69, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    sub_2190ED25C(v52, &qword_280EE9C40, MEMORY[0x277CC9578]);
    sub_2190ED25C(v63, qword_280EBED90, type metadata accessor for EngagementUpsellBestOffer);
    sub_2187AE6C0(v92, type metadata accessor for EngagementUpsellBestOffer);
    (*(v96 + 8))(v95, v97);
    (*(v89 + 8))(v94, v91);
    sub_2190ED25C(v93, &qword_280EE6200, MEMORY[0x277D35380]);
    v70 = v83;
    (*(v64 + 32))(v83, v69, v65);
  }

  (*(v64 + 32))(v66 + *(v67 + 28), v70, v65);
  v71 = v88;
  sub_2187AE8BC(v66, v88);
  return (*(v84 + 56))(v71, 0, 1, v67);
}

uint64_t sub_2190EC578(uint64_t a1)
{
  sub_2186F8278(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_2190EC604(uint64_t a1, uint64_t a2)
{
  sub_21876CFD0(0, qword_280EBB760, type metadata accessor for EngagementUpsellOfferEntry);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v35 - v5;
  v7 = type metadata accessor for EngagementUpsellOfferEntry(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v35 - v12;
  sub_2190EB700(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_2190ED25C(v6, qword_280EBB760, type metadata accessor for EngagementUpsellOfferEntry);
    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v14 = sub_219BE5434();
    __swift_project_value_buffer(v14, qword_280F627F0);
    v15 = sub_219BE5414();
    v16 = sub_219BF61F4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2186C1000, v15, v16, "EngagementUpsellOfferManager prewarm failed: nil upsellOfferEntry", v17, 2u);
      MEMORY[0x21CECF960](v17, -1, -1);
    }

    v18 = (a2 + OBJC_IVAR____TtC7NewsUI228EngagementUpsellOfferManager_store);
    v19 = *(a2 + OBJC_IVAR____TtC7NewsUI228EngagementUpsellOfferManager_store + 24);
    v20 = *(a2 + OBJC_IVAR____TtC7NewsUI228EngagementUpsellOfferManager_store + 32);
    __swift_project_boxed_opaque_existential_1(v18, v19);
    return (*(v20 + 16))(v19, v20);
  }

  else
  {
    sub_2187AE8BC(v6, v13);
    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v22 = sub_219BE5434();
    __swift_project_value_buffer(v22, qword_280F627F0);
    sub_2187AE658(v13, v10, type metadata accessor for EngagementUpsellOfferEntry);
    v23 = sub_219BE5414();
    v24 = sub_219BF6214();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35[1] = v2;
      v27 = v26;
      v36 = v26;
      *v25 = 136315138;
      v28 = EngagementUpsellOfferEntry.description.getter();
      v30 = v29;
      sub_2187AE6C0(v10, type metadata accessor for EngagementUpsellOfferEntry);
      v31 = sub_2186D1058(v28, v30, &v36);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_2186C1000, v23, v24, "EngagementUpsellOfferManager finished refreshing offer state: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x21CECF960](v27, -1, -1);
      MEMORY[0x21CECF960](v25, -1, -1);
    }

    else
    {

      sub_2187AE6C0(v10, type metadata accessor for EngagementUpsellOfferEntry);
    }

    v32 = (a2 + OBJC_IVAR____TtC7NewsUI228EngagementUpsellOfferManager_store);
    v33 = *(a2 + OBJC_IVAR____TtC7NewsUI228EngagementUpsellOfferManager_store + 24);
    v34 = *(a2 + OBJC_IVAR____TtC7NewsUI228EngagementUpsellOfferManager_store + 32);
    __swift_project_boxed_opaque_existential_1(v32, v33);
    (*(v34 + 24))(v13, v33, v34);
    return sub_2187AE6C0(v13, type metadata accessor for EngagementUpsellOfferEntry);
  }
}

void sub_2190ECA70(void *a1)
{
  if (qword_280EE60A0 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F627F0);
  v3 = a1;
  oslog = sub_219BE5414();
  v4 = sub_219BF61F4();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_219BF7A04();
    v9 = sub_2186D1058(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2186C1000, oslog, v4, "EngagementUpsellOfferManager prewarm failed: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  else
  {
  }
}

void sub_2190ECC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  swift_getObjectType();

  swift_unknownObjectRetain();
  sub_219BE3F74();
  swift_unknownObjectRelease();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2187A913C;
  *(v8 + 24) = v7;

  v9 = sub_219BE2E54();
  sub_219BE2F74();

  v10 = swift_allocObject();
  *(v10 + 16) = sub_2187A913C;
  *(v10 + 24) = v7;
  v11 = sub_219BE2E54();
  sub_219BE2FD4();
}

uint64_t sub_2190ECD94(void *a1, uint64_t (*a2)(void))
{
  if (qword_280EE60A0 != -1)
  {
    swift_once();
  }

  v4 = sub_219BE5434();
  __swift_project_value_buffer(v4, qword_280F627F0);
  v5 = a1;
  v6 = sub_219BE5414();
  v7 = sub_219BF61F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_219BF7A04();
    v12 = sub_2186D1058(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2186C1000, v6, v7, "EngagementUpsellOfferManager offerManager refresh() failed: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x21CECF960](v9, -1, -1);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  return a2();
}

unint64_t sub_2190ED000()
{
  result = qword_27CC16040;
  if (!qword_27CC16040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16040);
  }

  return result;
}

uint64_t sub_2190ED054(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x456C616972547369 && a2 == 0xEF656C626967696CLL;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219D0B160 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6566664F74736562 && a2 == 0xE900000000000072 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616470557473616CLL && a2 == 0xEB00000000646574)
  {

    return 3;
  }

  else
  {
    v6 = sub_219BF78F4();

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

uint64_t sub_2190ED1F0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_21876CFD0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2190ED25C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21876CFD0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2190ED2DC()
{
  result = qword_27CC16050;
  if (!qword_27CC16050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16050);
  }

  return result;
}

uint64_t sub_2190ED330(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954726566666FLL && a2 == 0xE900000000000065;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x63536C6C65737075 && a2 == 0xEE006F6972616E65 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000219D0B1B0 == a2)
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

uint64_t sub_2190ED468@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190EDC70(0, &qword_27CC16088, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SportsStandingsTagFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190EDBB8();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_2190EDCD4(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_2190EDC0C(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2190ED714(uint64_t a1)
{
  v2 = sub_2190EDBB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2190ED750(uint64_t a1)
{
  v2 = sub_2190EDBB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2190ED7A4(void *a1)
{
  sub_2190EDC70(0, &qword_27CC16098, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190EDBB8();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_2190EDCD4(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2190ED92C(uint64_t a1)
{
  v2 = sub_2190EDCD4(&qword_27CC16070, type metadata accessor for SportsStandingsTagFeedGroup, &unk_219C5C5B4);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_2190EDAB4(uint64_t a1)
{
  result = sub_2190EDCD4(&unk_27CC1C650, type metadata accessor for SportsStandingsTagFeedGroup, &unk_219C5C688);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2190EDB0C(void *a1)
{
  a1[1] = sub_2190EDCD4(&qword_27CC16070, type metadata accessor for SportsStandingsTagFeedGroup, &unk_219C5C5B4);
  a1[2] = sub_2190EDCD4(&qword_27CC16078, type metadata accessor for SportsStandingsTagFeedGroup, &unk_219C5C660);
  result = sub_2190EDCD4(&qword_27CC16080, type metadata accessor for SportsStandingsTagFeedGroup, &unk_219C5C638);
  a1[3] = result;
  return result;
}

unint64_t sub_2190EDBB8()
{
  result = qword_27CC16090;
  if (!qword_27CC16090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC16090);
  }

  return result;
}

uint64_t sub_2190EDC0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsStandingsTagFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2190EDC70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2190EDBB8();
    v7 = a3(a1, &type metadata for SportsStandingsTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2190EDCD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2190EDD30()
{
  result = qword_27CC160A0;
  if (!qword_27CC160A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC160A0);
  }

  return result;
}

unint64_t sub_2190EDD88()
{
  result = qword_27CC160A8;
  if (!qword_27CC160A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC160A8);
  }

  return result;
}

unint64_t sub_2190EDDE0()
{
  result = qword_27CC160B0;
  if (!qword_27CC160B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC160B0);
  }

  return result;
}

uint64_t sub_2190EDE34@<X0>(uint64_t *a1@<X8>, void *a2@<X0>, void *a3@<X1>)
{
  sub_2190EE044(a2, a3);
  sub_218720FAC();
  swift_allocObject();
  result = sub_219BE2174();
  *a1 = result;
  return result;
}

uint64_t sub_2190EDE88(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE2B94();
  sub_218718690(a2, v9);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  sub_2186CB1F0(v9, v6 + 24);
  *(v6 + 64) = a3;

  swift_unknownObjectRetain();
  v7 = sub_219BE2E54();
  sub_219BE21A4();

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

unint64_t sub_2190EDF90()
{
  result = qword_27CC160C0;
  if (!qword_27CC160C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC160C0);
  }

  return result;
}

uint64_t sub_2190EE044(void *a1, void *a2)
{
  v4 = sub_219BE2A44();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v36 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE2C04();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = v32 - v13;
  v15 = [a2 possiblyUnfetchedAppConfiguration];
  if ([v15 respondsToSelector_])
  {
    v35 = v4;
    v34 = [v15 criticalStorageThreshold];
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BE2BA4();
    (*(v8 + 104))(v10, *MEMORY[0x277D6CE28], v7);
    v16 = sub_219BE2BF4();
    v17 = *(v8 + 8);
    v17(v10, v7);
    v17(v14, v7);
    if (v16)
    {
      return 2;
    }

    v18 = v5;
    v19 = a1[3];
    v32[1] = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v19);
    v20 = *MEMORY[0x277D6CDF0];
    v21 = *(v18 + 104);
    v33 = a2;
    v4 = v35;
    v22 = v36;
    v21(v36, v20, v35);
    v5 = v18;
    v23 = sub_219BE2B84();
    v24 = v22;
    a2 = v33;
    (*(v18 + 8))(v24, v4);
    if (v23 < v34)
    {
      return 2;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v26 = [a2 possiblyUnfetchedAppConfiguration];
  if ([v26 respondsToSelector_])
  {
    v27 = [v26 lowStorageThreshold];
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BE2BA4();
    (*(v8 + 104))(v10, *MEMORY[0x277D6CE20], v7);
    v28 = sub_219BE2BF4();
    v29 = *(v8 + 8);
    v29(v10, v7);
    v29(v14, v7);
    if (v28)
    {
      return 1;
    }

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v30 = v36;
    (*(v5 + 104))(v36, *MEMORY[0x277D6CDE8], v4);
    v31 = sub_219BE2B84();
    (*(v5 + 8))(v30, v4);
    if (v31 < v27)
    {
      return 1;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return 0;
}

double sub_2190EE4B0(void *a1, uint64_t a2)
{
  v3 = sub_219BE15B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Strong = swift_unknownObjectUnownedLoadStrong();

  (*(v4 + 104))(v6, *MEMORY[0x277D2F4D0], v3);
  sub_219BDD0F4();

  (*(v4 + 8))(v6, v3);
  sub_219BDD274();
  sub_219BE1B94();

  return result;
}

uint64_t type metadata accessor for PuzzleScoreboardTagFeedGroupConfigData(uint64_t a1)
{
  result = qword_280E98150;
  if (!qword_280E98150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2190EE750@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190EEC80(0, &qword_280E8C778, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190EEC2C();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808, MEMORY[0x277D33488]);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 40;
    v13 = type metadata accessor for PuzzleScoreboardTagFeedGroupConfigData(0);
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2190EE9B8(void *a1)
{
  v3 = v1;
  sub_2190EEC80(0, &qword_27CC160D8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190EEC2C();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for PuzzleScoreboardTagFeedGroupConfigData(0);
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810, MEMORY[0x277D33480]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2190EEB84(uint64_t a1)
{
  v2 = sub_2190EEC2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2190EEBC0(uint64_t a1)
{
  v2 = sub_2190EEC2C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2190EEC2C()
{
  result = qword_280E98188;
  if (!qword_280E98188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98188);
  }

  return result;
}

void sub_2190EEC80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2190EEC2C();
    v7 = a3(a1, &type metadata for PuzzleScoreboardTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2190EECF8()
{
  result = qword_27CC160E0;
  if (!qword_27CC160E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC160E0);
  }

  return result;
}

unint64_t sub_2190EED50()
{
  result = qword_280E98178;
  if (!qword_280E98178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98178);
  }

  return result;
}

unint64_t sub_2190EEDA8()
{
  result = qword_280E98180;
  if (!qword_280E98180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98180);
  }

  return result;
}

uint64_t sub_2190EEDFC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_218C82C04(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2190F1FE4(v6);
  return sub_219BF73E4();
}

uint64_t sub_2190EEE78(uint64_t a1)
{
  v2 = type metadata accessor for SportsNavigationTagFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SportsNavigationTagFeedGroupEmitter(0);
  sub_2190F3538(v1 + *(v5 + 20), v4, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
  v16 = 17;
  sub_2189AD5C8(0);
  v7 = v6;
  v8 = sub_219BEE964();
  (*(*(v7 - 8) + 8))(v4, v7);
  sub_2190F2F7C(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_219C09BA0;
  sub_218C6FAA0(0);
  swift_allocObject();
  *(v13 + v12) = sub_219BEFB94();
  (*(v11 + 104))(v13 + v12, *MEMORY[0x277D32308], v10);
  v15 = v8;
  sub_2191EDA0C(v13);
  return v15;
}

uint64_t sub_2190EF0C4(uint64_t a1)
{
  v2 = v1;
  sub_218A59C84(0);
  v5 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for SportsNavigationTagFeedGroupEmitter(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEF0B4();
  v12 = *(v37 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v13 = [v12 backingTag];

  v14 = [v13 asSports];
  v15 = swift_unknownObjectRelease();
  if (v14)
  {
    v35 = v5;
    MEMORY[0x28223BE20](v15);
    *(&v32 - 2) = v2;
    sub_219BF29D4();
    sub_219BE3204();
    v36 = type metadata accessor for SportsNavigationTagFeedGroupEmitter;
    v33 = v14;
    sub_2190F3538(v2, &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SportsNavigationTagFeedGroupEmitter);
    v16 = *(v9 + 80);
    v17 = (v16 + 24) & ~v16;
    v18 = v2;
    v19 = swift_allocObject();
    *(v19 + 16) = v14;
    sub_2190F3280(&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v17);
    *(v19 + ((v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
    swift_unknownObjectRetain();

    v20 = sub_219BE2E54();
    sub_218845868(0);
    sub_219BE2F64();

    sub_2190F3538(v18, &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v36);
    v21 = (v16 + 16) & ~v16;
    v34 = v21 + v10;
    v22 = (v21 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    sub_2190F3280(v11, v23 + v21);
    *(v23 + v22) = a1;

    v24 = sub_219BE2E54();
    sub_219BF1904();
    sub_219BE2F64();

    v25 = v36;
    sub_2190F3538(v18, v11, v36);
    v26 = swift_allocObject();
    sub_2190F3280(v11, v26 + v21);
    *(v26 + v22) = v33;
    *(v26 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = a1;
    swift_unknownObjectRetain();

    v27 = sub_219BE2E54();
    sub_219BE2F64();

    sub_2190F3538(v18, v11, v25);
    v28 = swift_allocObject();
    sub_2190F3280(v11, v28 + v21);
    v29 = sub_219BE2E54();
    v30 = sub_219BE3064();
    swift_unknownObjectRelease();

    return v30;
  }

  else
  {
    *v7 = 0xD000000000000025;
    v7[1] = 0x8000000219D0B2F0;
    swift_storeEnumTagMultiPayload();
    sub_2190F2F7C(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_2190EF5B0(uint64_t a1)
{
  v2 = type metadata accessor for SportsNavigationTagFeedGroupEmitter(0);
  __swift_project_boxed_opaque_existential_1((a1 + *(v2 + 28)), *(a1 + *(v2 + 28) + 24));
  return sub_219BF4434();
}

char *sub_2190EF60C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v65 = a3;
  v63 = a4;
  v57 = type metadata accessor for SportsNavigationTagFeedGroupEmitter(0);
  v60 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v61 = v5;
  v62 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190F3600(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF34F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v59 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - v13;
  v58 = v15;
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = &v53 - v18;
  v20 = [a2 identifier];
  v21 = sub_219BF5414();
  v23 = v22;

  sub_219BF29A4();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2190F35A0(v8, sub_2190F3600);
    sub_2190F3634();
    swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v23;
    *(v24 + 16) = 1;
    swift_willThrow();
  }

  else
  {

    v54 = *(v10 + 32);
    v55 = v10 + 32;
    v54(v19, v8, v9);
    v64 = v19;
    v25 = sub_219BF34A4();
    v26 = v10;
    v27 = *(v25 + 16);
    v56 = v26;
    if (v27)
    {
      v28 = v26 + 16;
      v29 = *(v26 + 16);
      v30 = *(v26 + 80);
      v53 = v25;
      v31 = v25 + ((v30 + 32) & ~v30);
      v67 = *(v28 + 56);
      v68 = v29;
      v69 = v28;
      v32 = (v28 - 8);
      v33 = MEMORY[0x277D84F90];
      v66 = v9;
      v29(v14, v31, v9);
      while (1)
      {
        v35 = sub_219BF34D4();
        v37 = v36;
        (*v32)(v14, v9);
        if (v37)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_218840D24(0, *(v33 + 2) + 1, 1, v33);
          }

          v39 = *(v33 + 2);
          v38 = *(v33 + 3);
          if (v39 >= v38 >> 1)
          {
            v33 = sub_218840D24((v38 > 1), v39 + 1, 1, v33);
          }

          *(v33 + 2) = v39 + 1;
          v34 = &v33[16 * v39];
          *(v34 + 4) = v35;
          *(v34 + 5) = v37;
          v9 = v66;
        }

        v31 += v67;
        if (!--v27)
        {
          break;
        }

        v68(v14, v31, v9);
      }
    }

    else
    {

      v33 = MEMORY[0x277D84F90];
    }

    v70 = v33;
    sub_2186D0C48(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_218ACCAC0();
    v8 = sub_219BF56E4();

    v40 = v56;
    v41 = v64;
    if (*(v8 + 2))
    {
      v42 = off_282A4D758;
      type metadata accessor for TagService();
      v42(v8);

      v43 = sub_219BE2E54();
      sub_2186D6710(0, &qword_280E8E420, &protocolRef_FCSportsProviding);
      sub_2190F1E9C(&qword_280E8EFC0, sub_218A3A1C4, MEMORY[0x277D83970]);
      v69 = sub_219BE30C4();

      v44 = v59;
      (*(v40 + 16))(v59, v41, v9);
      v45 = v62;
      sub_2190F3538(v65, v62, type metadata accessor for SportsNavigationTagFeedGroupEmitter);
      v46 = (*(v40 + 80) + 24) & ~*(v40 + 80);
      v47 = (v58 + *(v60 + 80) + v46) & ~*(v60 + 80);
      v48 = swift_allocObject();
      *(v48 + 16) = v63;
      v54((v48 + v46), v44, v9);
      sub_2190F3280(v45, v48 + v47);

      v49 = sub_219BE2E54();
      sub_218845868(0);
      v8 = sub_219BE2F74();

      (*(v40 + 8))(v64, v9);
    }

    else
    {

      v50 = sub_219BEEDD4();
      sub_2190F1E9C(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
      swift_allocError();
      (*(*(v50 - 8) + 104))(v51, *MEMORY[0x277D32428], v50);
      swift_willThrow();
      (*(v40 + 8))(v41, v9);
    }
  }

  return v8;
}

id sub_2190EFD64@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = [*(*a1 + 16) asSports];
  *a2 = result;
  return result;
}

void sub_2190EFDAC(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  sub_219BEF0B4();
  v5 = *(v34 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_subscriptionController);

  v6 = [v5 subscribedTagIDs];

  if (v6)
  {
    v7 = sub_219BF5924();

    v8 = sub_218845F78(v7);

    v36 = MEMORY[0x277D84F90];
    v35 = MEMORY[0x277D84F90];
    if (v4 >> 62)
    {
      goto LABEL_30;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
    {
      v27 = a2;
      v10 = 0;
      v33 = v4 & 0xC000000000000001;
      v30 = v4 & 0xFFFFFFFFFFFFFF8;
      v31 = v4;
      v29 = v4 + 32;
      v4 = v8 + 56;
      v32 = MEMORY[0x277D84F90];
      v28 = MEMORY[0x277D84F90];
      while (v33)
      {
        v12 = MEMORY[0x21CECE0F0](v10, v31);
        v13 = __OFADD__(v10++, 1);
        if (v13)
        {
          goto LABEL_28;
        }

LABEL_14:
        v14 = [v12 identifier];
        v15 = sub_219BF5414();
        a2 = v16;

        if (*(v8 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v17 = sub_219BF7AE4(), v18 = -1 << *(v8 + 32), v19 = v17 & ~v18, ((*(v4 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0))
        {
          v20 = ~v18;
          while (1)
          {
            v21 = (*(v8 + 48) + 16 * v19);
            v22 = *v21 == v15 && v21[1] == a2;
            if (v22 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v19 = (v19 + 1) & v20;
            if (((*(v4 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v23 = swift_unknownObjectRetain();
          MEMORY[0x21CECC690](v23);
          if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_219BF5A14();
          }

          sub_219BF5A54();
          swift_unknownObjectRelease();
          v28 = v36;
          if (v10 == i)
          {
LABEL_27:

            a2 = v27;
            v24 = v32;
            v25 = v28;
            goto LABEL_32;
          }
        }

        else
        {
LABEL_5:

          v11 = swift_unknownObjectRetain();
          MEMORY[0x21CECC690](v11);
          if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_219BF5A14();
          }

          sub_219BF5A54();
          swift_unknownObjectRelease();
          v32 = v35;
          if (v10 == i)
          {
            goto LABEL_27;
          }
        }
      }

      if (v10 >= *(v30 + 16))
      {
        goto LABEL_29;
      }

      v12 = *(v29 + 8 * v10);
      swift_unknownObjectRetain();
      v13 = __OFADD__(v10++, 1);
      if (!v13)
      {
        goto LABEL_14;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      ;
    }

    v24 = MEMORY[0x277D84F90];
    v25 = MEMORY[0x277D84F90];
LABEL_32:
    if (sub_219BF34C4())
    {
      sub_2191EE304(v24);
      v26 = v25;
    }

    else
    {
      v26 = sub_2190F0180();
    }

    *a2 = v26;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_2190F0180()
{

  v5 = sub_2197590B0(v0);
  sub_2190EEDFC(&v5);
  v1 = v5;

  v5 = sub_2197590B0(v2);
  sub_2190EEDFC(&v5);
  v3 = v5;
  v5 = v1;
  sub_2191EE304(v3);
  return v5;
}

void (*sub_2190F0214(unint64_t *a1, uint64_t a2, uint64_t a3))(char *, uint64_t)
{
  v4 = *a1;
  v5 = (a2 + *(type metadata accessor for SportsNavigationTagFeedGroupEmitter(0) + 36));
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v8 = (*(v7 + 16))(v4, v6, v7);
  v10 = v9;
  if (v4 >> 62)
  {
    sub_2186D6710(0, &qword_280E8E680, &protocolRef_FCTagProviding);

    v16 = sub_219BF7534();

    v4 = v16;
  }

  else
  {
    v11 = v4 & 0xFFFFFFFFFFFFFF8;

    sub_219BF7924();
    sub_2186D6710(0, &qword_280E8E680, &protocolRef_FCTagProviding);
    if (!swift_dynamicCastMetatype())
    {
      v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        v13 = v11 + 32;
        while (swift_dynamicCastObjCProtocolConditional())
        {
          v13 += 8;
          if (!--v12)
          {
            goto LABEL_9;
          }
        }

        v4 = v11 | 1;
      }
    }
  }

LABEL_9:
  v14 = sub_2190F03C8(a3, v4, v8, v10);

  return v14;
}

void (*sub_2190F03C8(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4))(char *, uint64_t)
{
  v86 = a4;
  v85 = a3;
  v92 = a1;
  v6 = MEMORY[0x277D83D88];
  sub_2190F2F7C(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v80 - v8;
  sub_2190F2F7C(0, &qword_280E90150, MEMORY[0x277D33EC8], v6);
  MEMORY[0x28223BE20](v10 - 8);
  v90 = &v80 - v11;
  v12 = type metadata accessor for SportsNavigationTagFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v12 - 8);
  v88 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190F2F7C(0, &qword_280E91A70, sub_2189AD5C8, v6);
  MEMORY[0x28223BE20](v14 - 8);
  v89 = &v80 - v15;
  v16 = sub_219BF2AB4();
  v96 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v93 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190F2F7C(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v6);
  MEMORY[0x28223BE20](v18 - 8);
  v87 = &v80 - v19;
  v20 = sub_219BF2034();
  v94 = *(v20 - 8);
  v95 = v20;
  MEMORY[0x28223BE20](v20);
  v91 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for SportsNavigationTagFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v84);
  v102 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BF2124();
  MEMORY[0x28223BE20](v23 - 8);
  v83 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BF3C84();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = (&v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v31 = (&v80 - v30);
  v32 = sub_219BF3E84();
  v100 = *(v32 - 8);
  v101 = v32;
  MEMORY[0x28223BE20](v32);
  v98 = &v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v99 = &v80 - v35;
  v107 = a2;
  if (!(a2 >> 62))
  {
    v36 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
      goto LABEL_3;
    }

LABEL_22:
    v74 = sub_219BEEDD4();
    sub_2190F1E9C(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    (*(*(v74 - 1) + 104))(v76, *MEMORY[0x277D32428], v74);
    swift_willThrow();
    return v74;
  }

  if (!sub_219BF7214())
  {
    goto LABEL_22;
  }

  v36 = sub_219BF7214();
  if (!v36)
  {
    v80 = v16;
    v81 = v9;
    v82 = v4;
    goto LABEL_18;
  }

LABEL_3:
  v109 = MEMORY[0x277D84F90];
  sub_218C34A88(0, v36 & ~(v36 >> 63), 0);
  if (v36 < 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v80 = v16;
  v81 = v9;
  v82 = v4;
  v37 = v109;
  if ((v107 & 0xC000000000000001) != 0)
  {
    v38 = 0;
    LODWORD(v106) = *MEMORY[0x277D34100];
    v105 = v26 + 32;
    do
    {
      *v31 = MEMORY[0x21CECE0F0](v38, v107);
      (*(v26 + 104))(v31, v106, v25);
      v109 = v37;
      v40 = *(v37 + 16);
      v39 = *(v37 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_218C34A88((v39 > 1), v40 + 1, 1);
        v37 = v109;
      }

      ++v38;
      *(v37 + 16) = v40 + 1;
      (*(v26 + 32))(v37 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v40, v31, v25);
    }

    while (v36 != v38);
  }

  else
  {
    v41 = (v107 + 32);
    LODWORD(v106) = *MEMORY[0x277D34100];
    v104 = *(v26 + 104);
    v105 = v26 + 104;
    v103 = v26 + 32;
    do
    {
      *v28 = *v41;
      (v104)(v28, v106, v25);
      v109 = v37;
      v42 = *(v37 + 16);
      v43 = *(v37 + 24);
      swift_unknownObjectRetain();
      if (v42 >= v43 >> 1)
      {
        sub_218C34A88((v43 > 1), v42 + 1, 1);
        v37 = v109;
      }

      *(v37 + 16) = v42 + 1;
      (*(v26 + 32))(v37 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v42, v28, v25);
      ++v41;
      --v36;
    }

    while (v36);
  }

LABEL_18:
  v44 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v44);
  sub_218F0BB90(v44);
  v45 = v99;
  sub_219BF3E74();
  v46 = MEMORY[0x277D84560];
  sub_2190F2F7C(0, &qword_280E8B860, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
  sub_219BF14C4();
  *(swift_allocObject() + 16) = xmmword_219C09BA0;
  sub_219BF20F4();
  sub_219BF14A4();
  sub_218F0B984(v44);
  sub_218F0BA7C(v44);
  sub_218F0BB90(v44);
  v47 = v98;
  sub_219BF3E74();
  v86 = type metadata accessor for SportsNavigationTagFeedGroupEmitter(0);
  v48 = (v97 + *(v86 + 24));
  v49 = v48[3];
  v105 = v48[4];
  v106 = v49;
  v104 = __swift_project_boxed_opaque_existential_1(v48, v49);
  sub_2190F1DD0(0);
  sub_219BEDD14();
  v103 = *(v84 + 20);
  sub_2190F2F7C(0, &unk_280E8B790, MEMORY[0x277D34258], v46);
  v50 = v100;
  v51 = *(v100 + 72);
  v52 = (*(v100 + 80) + 32) & ~*(v100 + 80);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_219C09EC0;
  v54 = v53 + v52;
  v55 = *(v50 + 16);
  v56 = v101;
  v55(v54, v45, v101);
  v55(v54 + v51, v47, v56);
  v57 = sub_219BEC004();
  (*(*(v57 - 8) + 56))(v87, 1, 1, v57);
  v85 = sub_219A95188(v44);
  sub_219A95188(v44);
  sub_219A951A0(v44);
  sub_219A951B8(v44);
  sub_219A952CC(v44);
  sub_219A952E4(v44);
  sub_219A953F8(v44);

  v16 = v91;
  sub_219BF2024();
  v58 = v88;
  sub_2190F3538(v97 + *(v86 + 20), v88, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
  sub_2189AD5C8(0);
  v60 = v59;
  v61 = *(v59 - 8);
  v62 = v89;
  (*(v61 + 32))(v89, v58, v59);
  (*(v61 + 56))(v62, 0, 1, v60);
  sub_219BEF0B4();
  v63 = *(v109 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v64 = sub_219BF35D4();
  (*(*(v64 - 8) + 56))(v90, 1, 1, v64);
  LOBYTE(v108) = 17;
  sub_218C6F8FC(0);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v65 = *(v108 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v66 = sub_219BF2774();
  (*(*(v66 - 8) + 56))(v81, 1, 1, v66);
  v67 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v67 != -1)
  {
LABEL_26:
    swift_once();
  }

  qword_280F61708;
  v68 = v93;
  sub_219BF2A84();
  v69 = v102;
  v70 = v103;
  v71 = v82;
  v72 = sub_219BF2194();
  if (v71)
  {
    (*(v96 + 8))(v68, v80);
    (*(v94 + 8))(v16, v95);
    v73 = v101;
    v74 = *(v100 + 8);
    v74(v98, v101);
    v74(v99, v73);
  }

  else
  {
    v74 = v72;
    (*(v96 + 8))(v68, v80);
    (*(v94 + 8))(v16, v95);
    v77 = v101;
    v78 = *(v100 + 8);
    v78(v98, v101);
    v78(v99, v77);
  }

  v75 = sub_219BF1934();
  (*(*(v75 - 8) + 8))(&v69[v70], v75);
  return v74;
}

uint64_t sub_2190F138C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  sub_218A59C84(0);
  v42 = v6;
  MEMORY[0x28223BE20](v6);
  v40 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190F2F7C(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v39 = v35 - v9;
  v10 = type metadata accessor for SportsNavigationTagFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BEF554();
  MEMORY[0x28223BE20](v13 - 8);
  v35[1] = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v35[2] = v35 - v16;
  v17 = sub_219BF1904();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v20;
  v38 = type metadata accessor for TagFeedGroup(0);
  v21 = MEMORY[0x28223BE20](v38);
  v36 = (v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v20, a1, v17, v21);
  sub_2190F1DD0(0);
  v23 = sub_219BEDCB4();
  v35[3] = v24;
  v35[4] = v23;
  sub_219BEDCC4();
  sub_219BEDCC4();
  v25 = *(type metadata accessor for SportsNavigationTagFeedGroupEmitter(0) + 20);
  sub_2190F3538(a2 + v25, v12, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
  sub_2189AD5C8(0);
  v27 = v26;
  sub_219BEE9B4();
  v28 = *(*(v27 - 8) + 8);
  v28(v12, v27);
  sub_2190F3538(a2 + v25, v12, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
  sub_219BEE984();
  v30 = v29;
  v28(v12, v27);
  v35[0] = v30;
  sub_2190F3538(a2 + v25, v12, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
  sub_219BEE9D4();
  v28(v12, v27);
  v31 = sub_219BEE5D4();
  (*(*(v31 - 8) + 56))(v39, 1, 1, v31);
  type metadata accessor for SportsNavigationTagFeedGroup(0);
  v32 = v36;
  sub_219BED854();
  *v32 = v41;
  swift_storeEnumTagMultiPayload();
  sub_2190F3538(v32, v40, type metadata accessor for TagFeedGroup);
  swift_storeEnumTagMultiPayload();
  sub_2190F2F7C(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  swift_unknownObjectRetain();
  v33 = sub_219BE3014();
  sub_2190F35A0(v32, type metadata accessor for TagFeedGroup);
  return v33;
}

uint64_t sub_2190F18E0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SportsNavigationTagFeedGroupEmitter(0);
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup(0);
  sub_2190F1E9C(&qword_280EDE9C0, type metadata accessor for TagFeedGroup, &unk_219C8E808);
  return sub_219BEF194();
}

uint64_t sub_2190F19D8@<X0>(uint64_t *a1@<X8>)
{
  sub_2190F1DD0(0);
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x2000000000000002;
  return result;
}

uint64_t sub_2190F1A58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for SportsNavigationTagFeedGroupKnobs(0);
  a2[4] = sub_2190F1E9C(qword_280EA1B38, type metadata accessor for SportsNavigationTagFeedGroupKnobs, &unk_219C9DC2C);
  a2[5] = sub_2190F1E9C(&unk_27CC16140, type metadata accessor for SportsNavigationTagFeedGroupKnobs, &unk_219C9DC04);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_2190F3538(v2 + v4, boxed_opaque_existential_1, type metadata accessor for SportsNavigationTagFeedGroupKnobs);
}

uint64_t sub_2190F1B20()
{
  sub_2190F1DD0(0);

  return sub_219BEDCA4();
}

uint64_t sub_2190F1B4C@<X0>(uint64_t *a2@<X8>)
{
  sub_2190F2F7C(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2190F1DD0(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2190F35A0(inited + 32, sub_2188317B0);
  sub_2190F2F48(0);
  a2[3] = v6;
  a2[4] = sub_2190F1E9C(&qword_27CC16108, sub_2190F2F48, MEMORY[0x277D6CC28]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_2190F1CD0(uint64_t a1)
{
  sub_2190F1E9C(&unk_27CC16110, type metadata accessor for SportsNavigationTagFeedGroupEmitter, &unk_219C5CBC8);

  return sub_219BE2324();
}

uint64_t type metadata accessor for SportsNavigationTagFeedGroupEmitter(uint64_t a1)
{
  result = qword_280E9C440;
  if (!qword_280E9C440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2190F1DD0(uint64_t a1)
{
  if (!qword_280E92098)
  {
    type metadata accessor for SportsNavigationTagFeedGroupConfigData(255);
    sub_2190F1E9C(&qword_280E97C40, type metadata accessor for SportsNavigationTagFeedGroupConfigData, &unk_219C579D0);
    sub_2190F1E9C(&qword_280E97C48, type metadata accessor for SportsNavigationTagFeedGroupConfigData, &unk_219C579A8);
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E92098);
    }
  }
}

uint64_t sub_2190F1E9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2190F1EE4(void *a1, void *a2)
{
  v4 = [a1 sportsPrimaryName];
  if (!v4)
  {
    v4 = [a1 name];
  }

  v5 = v4;
  v6 = sub_219BF5414();
  v8 = v7;

  v9 = [a2 sportsPrimaryName];
  if (!v9)
  {
    v9 = [a2 name];
  }

  v10 = v9;
  v11 = sub_219BF5414();
  v13 = v12;

  if (v6 == v11 && v8 == v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = sub_219BF78F4();
  }

  return v15 & 1;
}

void sub_2190F1FE4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_219BF7884();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2186D6710(0, &qword_280E8E420, &protocolRef_FCSportsProviding);
        v6 = sub_219BF5A34();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_2190F22C4(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_2190F20F8(0, v2, 1, a1);
  }
}

void sub_2190F20F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v27 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
    v6 = &selRef_boldSystemFontOfSize_;
LABEL_6:
    v25 = v4;
    v26 = a3;
    v7 = *(v27 + 8 * a3);
    v24 = v5;
    while (1)
    {
      v8 = *v4;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v9 = [v7 v6[50]];
      if (!v9)
      {
        v9 = [v7 name];
      }

      v10 = v9;
      v11 = sub_219BF5414();
      v13 = v12;

      v14 = [v8 v6[50]];
      if (!v14)
      {
        v14 = [v8 name];
      }

      v15 = v14;
      v16 = sub_219BF5414();
      v18 = v17;

      if (v11 == v16 && v13 == v18)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v6 = &selRef_boldSystemFontOfSize_;
LABEL_5:
        a3 = v26 + 1;
        v4 = v25 + 8;
        v5 = v24 - 1;
        if (v26 + 1 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v20 = sub_219BF78F4();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v6 = &selRef_boldSystemFontOfSize_;
      if ((v20 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v27)
      {
        break;
      }

      v21 = *v4;
      v7 = *(v4 + 8);
      *v4 = v7;
      *(v4 + 8) = v21;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_2190F22C4(SEL **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_104:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    v4 = v7;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v99 = v4;
LABEL_107:
      v4 = *(v99 + 2);
      if (v4 >= 2)
      {
        while (*a3)
        {
          v100 = *&v99[16 * v4];
          v101 = v99;
          v102 = *&v99[16 * v4 + 24];
          sub_2190F2ABC((*a3 + 8 * v100), (*a3 + 8 * *&v99[16 * v4 + 16]), (*a3 + 8 * v102), v8);
          if (v116)
          {
            goto LABEL_115;
          }

          if (v102 < v100)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_218C81048(v101);
          }

          if (v4 - 2 >= *(v101 + 2))
          {
            goto LABEL_131;
          }

          v103 = &v101[16 * v4];
          *v103 = v100;
          *(v103 + 1) = v102;
          sub_218C80FBC(v4 - 1);
          v99 = v101;
          v4 = *(v101 + 2);
          if (v4 <= 1)
          {
            goto LABEL_115;
          }
        }

        goto LABEL_141;
      }

LABEL_115:

      return;
    }

LABEL_137:
    v99 = sub_218C81048(v4);
    goto LABEL_107;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v8 = &selRef_boldSystemFontOfSize_;
  while (1)
  {
    v9 = v6 + 1;
    v108 = v6;
    if (v6 + 1 < v5)
    {
      v105 = v7;
      v10 = *(*a3 + 8 * v9);
      v111 = 8 * v6;
      v11 = (*a3 + 8 * v6);
      v13 = *v11;
      v12 = v11 + 2;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v117 = sub_2190F1EE4(v10, v13);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v4 = v6 + 2;
      v113 = v5;
      while (1)
      {
        v8 = &selRef_boldSystemFontOfSize_;
        if (v5 == v4)
        {
          break;
        }

        v15 = *(v12 - 1);
        v16 = *v12;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v17 = [v16 sportsPrimaryName];
        if (!v17)
        {
          v17 = [v16 name];
        }

        v18 = v17;
        v19 = sub_219BF5414();
        v21 = v20;

        v22 = [v15 sportsPrimaryName];
        if (!v22)
        {
          v22 = [v15 name];
        }

        v23 = sub_219BF5414();
        v25 = v24;

        if (v19 == v23 && v21 == v25)
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_219BF78F4();
        }

        v5 = v113;

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        ++v4;
        ++v12;
        if ((v117 ^ v14))
        {
          v5 = v4 - 1;
          v8 = &selRef_boldSystemFontOfSize_;
          break;
        }
      }

      v26 = v111;
      v7 = v105;
      v6 = v108;
      if (v117)
      {
        if (v5 < v108)
        {
          goto LABEL_134;
        }

        if (v108 < v5)
        {
          v27 = 8 * v5 - 8;
          v28 = v5;
          v29 = v108;
          do
          {
            if (v29 != --v28)
            {
              v30 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v31 = *(v30 + v26);
              *(v30 + v26) = *(v30 + v27);
              *(v30 + v27) = v31;
            }

            ++v29;
            v27 -= 8;
            v26 += 8;
          }

          while (v29 < v28);
        }
      }

      v9 = v5;
    }

    v32 = a3[1];
    if (v9 < v32)
    {
      if (__OFSUB__(v9, v6))
      {
        goto LABEL_133;
      }

      if (v9 - v6 < a4)
      {
        break;
      }
    }

LABEL_52:
    if (v9 < v6)
    {
      goto LABEL_132;
    }

    v52 = v7;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v7 = v52;
    }

    else
    {
      v7 = sub_2191F6B60(0, *(v52 + 2) + 1, 1, v52);
    }

    v4 = *(v7 + 2);
    v53 = *(v7 + 3);
    v54 = v4 + 1;
    if (v4 >= v53 >> 1)
    {
      v7 = sub_2191F6B60((v53 > 1), v4 + 1, 1, v7);
    }

    *(v7 + 2) = v54;
    v55 = &v7[16 * v4];
    *(v55 + 4) = v108;
    *(v55 + 5) = v9;
    v56 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    v6 = v9;
    if (v4)
    {
      while (1)
      {
        v57 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v58 = *(v7 + 4);
          v59 = *(v7 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_72:
          if (v61)
          {
            goto LABEL_121;
          }

          v74 = &v7[16 * v54];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_124;
          }

          v80 = &v7[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_128;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v54 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v84 = &v7[16 * v54];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_86:
        if (v79)
        {
          goto LABEL_123;
        }

        v87 = &v7[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_126;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_93:
        v4 = v57 - 1;
        if (v57 - 1 >= v54)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v95 = v7;
        v96 = *&v7[16 * v4 + 32];
        v97 = *&v7[16 * v57 + 40];
        sub_2190F2ABC((*a3 + 8 * v96), (*a3 + 8 * *&v7[16 * v57 + 32]), (*a3 + 8 * v97), v56);
        if (v116)
        {
          goto LABEL_115;
        }

        if (v97 < v96)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_218C81048(v95);
        }

        if (v4 >= *(v95 + 2))
        {
          goto LABEL_118;
        }

        v98 = &v95[16 * v4];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        sub_218C80FBC(v57);
        v7 = v95;
        v54 = *(v95 + 2);
        if (v54 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v7[16 * v54 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_119;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_120;
      }

      v69 = &v7[16 * v54];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_122;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_125;
      }

      if (v73 >= v65)
      {
        v91 = &v7[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_129;
        }

        if (v60 < v94)
        {
          v57 = v54 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_104;
    }
  }

  v33 = v6 + a4;
  if (__OFADD__(v6, a4))
  {
    goto LABEL_135;
  }

  if (v33 >= v32)
  {
    v33 = a3[1];
  }

  if (v33 < v6)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v9 == v33)
  {
    goto LABEL_52;
  }

  v106 = v7;
  v118 = *a3;
  v4 = *a3 + 8 * v9 - 8;
  v34 = v6 - v9;
  v109 = v33;
LABEL_37:
  v112 = v4;
  v114 = v9;
  v35 = *(v118 + 8 * v9);
  v110 = v34;
  v36 = v34;
  while (1)
  {
    v37 = *v4;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v38 = [v35 v8[50]];
    if (!v38)
    {
      v38 = [v35 name];
    }

    v39 = v38;
    v40 = sub_219BF5414();
    v42 = v41;

    v43 = [v37 v8[50]];
    if (!v43)
    {
      v43 = [v37 name];
    }

    v44 = v43;
    v45 = sub_219BF5414();
    v47 = v46;

    if (v40 == v45 && v42 == v47)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v8 = &selRef_boldSystemFontOfSize_;
LABEL_36:
      v9 = v114 + 1;
      v4 = v112 + 8;
      v34 = v110 - 1;
      if (v114 + 1 == v109)
      {
        v9 = v109;
        v7 = v106;
        v6 = v108;
        goto LABEL_52;
      }

      goto LABEL_37;
    }

    v49 = sub_219BF78F4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v8 = &selRef_boldSystemFontOfSize_;
    if ((v49 & 1) == 0)
    {
      goto LABEL_36;
    }

    if (!v118)
    {
      break;
    }

    v50 = *v4;
    v35 = *(v4 + 8);
    *v4 = v35;
    *(v4 + 8) = v50;
    v4 -= 8;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}