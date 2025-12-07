uint64_t type metadata accessor for ShelfBasedProductPage(uint64_t a1)
{
  result = qword_27F226808;
  if (!qword_27F226808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EA9063C()
{
  result = qword_27F2267F0;
  if (!qword_27F2267F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2267F0);
  }

  return result;
}

unint64_t sub_24EA90690(uint64_t a1)
{
  *(a1 + 8) = sub_24EA906C0();
  result = sub_24EA90714();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24EA906C0()
{
  result = qword_27F2267F8;
  if (!qword_27F2267F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2267F8);
  }

  return result;
}

unint64_t sub_24EA90714()
{
  result = qword_27F226800;
  if (!qword_27F226800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226800);
  }

  return result;
}

uint64_t sub_24EA90768@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27F2267E0;
  return result;
}

uint64_t sub_24EA907B4(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27F2267E0 = v1;
  return result;
}

double sub_24EA907FC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_27F39B8D0;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

unint64_t sub_24EA909C8()
{
  result = qword_27F226818;
  if (!qword_27F226818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226818);
  }

  return result;
}

uint64_t sub_24EA90A1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24EA90A64()
{
  result = qword_27F226828;
  if (!qword_27F226828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226828);
  }

  return result;
}

unint64_t sub_24EA90AB8()
{
  result = qword_27F226838;
  if (!qword_27F226838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225160, &unk_24F97B620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226838);
  }

  return result;
}

uint64_t sub_24EA90B38@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_24E60169C(a3, &v8, &qword_27F2129B0, &unk_24F945320);
  if (v9)
  {
    sub_24E612B0C(&v8, v10);
    sub_24E643A9C(v10, &v8);
    sub_24F929868();
    sub_24E601704(&v8, &qword_27F2129B0, &unk_24F945320);
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_24E601704(&v8, &qword_27F2129B0, &unk_24F945320);
    v7 = sub_24F929888();
    return (*(*(v7 - 8) + 16))(a4, v4, v7);
  }
}

uint64_t sub_24EA90C54()
{
  type metadata accessor for ItemLayoutContext(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  sub_24F928A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  type metadata accessor for TodayCard(0);
  if ((swift_dynamicCast() & 1) == 0 || !v2)
  {
    return 0;
  }

  v0 = TodayCardMedia.Kind.description.getter(*(*(v2 + 64) + 16));

  return v0;
}

uint64_t sub_24EA90D24(uint64_t a1, uint64_t *a2)
{
  v78 = a1;
  v77 = sub_24F929888();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v71 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v72 = &v69 - v5;
  MEMORY[0x28223BE20](v6);
  v73 = &v69 - v7;
  MEMORY[0x28223BE20](v8);
  v74 = &v69 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v69 - v11;
  v13 = sub_24F929598();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v69 - v18;
  v70 = type metadata accessor for ItemLayoutContext(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  v79 = a2;
  sub_24F928A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  type metadata accessor for TodayCard(0);
  v20 = swift_dynamicCast();
  v75 = v12;
  if ((v20 & 1) == 0 || (v21 = v84) == 0)
  {
    v26 = v79;
    sub_24F928A58();
    type metadata accessor for AppSearchResult(0);
    if ((swift_dynamicCast() & 1) != 0 && v84)
    {
      v27 = *(v84 + OBJC_IVAR____TtC12GameStoreKit15AppSearchResult_lockup);
      v28 = *(v27 + 16);
      v29 = *(v27 + 24);

LABEL_28:

LABEL_44:
      v24 = v71;
      v25 = MEMORY[0x277D837D0];
      goto LABEL_45;
    }

    sub_24F928A58();
    type metadata accessor for AdvertsSearchResult(0);
    if ((swift_dynamicCast() & 1) != 0 && v84)
    {
      v69 = v84;
      v30 = *(v84 + OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_lockups);
      if (v30 >> 62)
      {
        goto LABEL_41;
      }

      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v31)
      {
LABEL_42:
        v33 = MEMORY[0x277D84F90];
LABEL_43:
        *&v89 = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
        sub_24E907170();
        v28 = sub_24F92AF68();
        v29 = v49;

        v26 = v79;
        goto LABEL_44;
      }

LABEL_12:
      v32 = 0;
      v80 = v30 & 0xC000000000000001;
      v33 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v80)
        {
          v34 = MEMORY[0x253052270](v32, v30);
          v35 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v34 = *(v30 + 8 * v32 + 32);

          v35 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            v31 = sub_24F92C738();
            if (!v31)
            {
              goto LABEL_42;
            }

            goto LABEL_12;
          }
        }

        v37 = *(v34 + 16);
        v36 = *(v34 + 24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_24E615CF4(0, *(v33 + 2) + 1, 1, v33);
        }

        v39 = *(v33 + 2);
        v38 = *(v33 + 3);
        if (v39 >= v38 >> 1)
        {
          v33 = sub_24E615CF4((v38 > 1), v39 + 1, 1, v33);
        }

        *(v33 + 2) = v39 + 1;
        v40 = &v33[16 * v39];
        *(v40 + 4) = v37;
        *(v40 + 5) = v36;
        ++v32;
        if (v35 == v31)
        {
          goto LABEL_43;
        }
      }
    }

    sub_24F928A58();
    type metadata accessor for AppEventSearchResult(0);
    if ((swift_dynamicCast() & 1) != 0 && v84)
    {
      v41 = *(v84 + OBJC_IVAR____TtC12GameStoreKit20AppEventSearchResult_lockup);

      v28 = *(v41 + 16);
      v29 = *(v41 + 24);

      goto LABEL_28;
    }

    v87 = 0;
    v88 = 0xE000000000000000;
    sub_24F928A58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226850, &unk_24F97B6C0);
    if (swift_dynamicCast())
    {
      v42 = *(&v90 + 1);
      if (*(&v90 + 1))
      {
        v43 = v91;
        __swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
        (*(v43 + 8))(v83, v42, v43);
        v81 = v83[0];
        v82 = v83[1];
        sub_24F92C7F8();
        __swift_destroy_boxed_opaque_existential_1(&v89);
        if (*(&v85 + 1))
        {
          v89 = v84;
          v90 = v85;
          v91 = v86;
LABEL_38:
          v25 = MEMORY[0x277D837D0];
          v48 = sub_24F92C7A8();
          MEMORY[0x253050C20](v48);

          sub_24E6585F8(&v89);
          v28 = v87;
          v29 = v88;
          v24 = v71;
LABEL_45:
          v47 = v70;
          goto LABEL_46;
        }

LABEL_37:
        swift_getKeyPath();
        sub_24F928A48();

        goto LABEL_38;
      }
    }

    else
    {
      v91 = 0;
      v89 = 0u;
      v90 = 0u;
    }

    sub_24E601704(&v89, &qword_27F226858, &qword_24F9BDEE0);
    v84 = 0u;
    v85 = 0u;
    v86 = 0;
    goto LABEL_37;
  }

  v87 = 0;
  v88 = 0xE000000000000000;
  sub_24E60169C(v84 + OBJC_IVAR____TtC12GameStoreKit9TodayCard_impressionMetrics, v19, &qword_27F213E68, &unk_24F93BC80);
  v22 = sub_24F929608();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v19, 1, v22) == 1)
  {
    sub_24E601704(v19, &qword_27F213E68, &unk_24F93BC80);
    sub_24E615E00(v21 + 160, &v89);
    v24 = v71;
    v25 = MEMORY[0x277D837D0];
  }

  else
  {
    sub_24F9295B8();
    (*(v23 + 8))(v19, v22);
    v44 = sub_24F929588();
    v46 = v45;
    (*(v14 + 8))(v16, v13);
    v25 = MEMORY[0x277D837D0];
    *(&v85 + 1) = MEMORY[0x277D837D0];
    v86 = MEMORY[0x277D837E0];
    *&v84 = v44;
    *(&v84 + 1) = v46;
    sub_24E612C80(&v84, &v89);
    v24 = v71;
  }

  v47 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226860, &qword_24F97B740);
  sub_24F92CA38();
  __swift_destroy_boxed_opaque_existential_1(&v89);

  v28 = v87;
  v29 = v88;
  v26 = v79;
LABEL_46:
  *&v89 = 0;
  *(&v89 + 1) = 0xE000000000000000;
  v50 = v26 + *(v47 + 32);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  sub_24F928A48();

  LOBYTE(v87) = v84;
  sub_24F92CA38();
  *(&v85 + 1) = v25;
  *&v84 = v28;
  *(&v84 + 1) = v29;
  swift_getKeyPath();
  v80 = v50;
  sub_24F928A48();

  v51 = sub_24F92C7A8();
  v53 = v52;
  sub_24E6585F8(&v89);
  *(&v90 + 1) = v25;
  *&v89 = v51;
  *(&v89 + 1) = v53;
  sub_24F929878();

  sub_24E601704(&v89, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v84, &qword_27F2129B0, &unk_24F945320);
  swift_getObjectType();
  v54 = sub_24F92D1E8();
  *(&v90 + 1) = v25;
  *&v89 = v54;
  *(&v89 + 1) = v55;
  v56 = v72;
  sub_24F929868();
  v57 = *(v76 + 8);
  v58 = v77;
  v57(v24, v77);
  sub_24E601704(&v89, &qword_27F2129B0, &unk_24F945320);
  v59 = sub_24EA90C54();
  if (v60)
  {
    v61 = MEMORY[0x277D837D0];
  }

  else
  {
    v59 = 0;
    v61 = 0;
    *&v90 = 0;
  }

  *&v89 = v59;
  *(&v89 + 1) = v60;
  *(&v90 + 1) = v61;
  v62 = v73;
  sub_24EA90B38(&v89, v73);
  v57(v56, v58);
  sub_24E601704(&v89, &qword_27F2129B0, &unk_24F945320);
  v63 = *v26;
  v64 = MEMORY[0x277D83B88];
  *(&v90 + 1) = MEMORY[0x277D83B88];
  *&v89 = v63;
  v65 = v74;
  sub_24F929868();
  v57(v62, v58);
  sub_24E601704(&v89, &qword_27F2129B0, &unk_24F945320);
  v66 = *(v80 + *(type metadata accessor for ShelfLayoutContext(0) + 20));
  *(&v90 + 1) = v64;
  *&v89 = v66;
  v67 = v75;
  sub_24F929868();
  v57(v65, v58);
  sub_24E601704(&v89, &qword_27F2129B0, &unk_24F945320);
  MEMORY[0x253051C20](v67);
  return (v57)(v67, v58);
}

double sub_24EA91914(uint64_t a1, double a2)
{
  v3 = sub_24F925818();
  sub_24F925848();
  if (sub_24F925848() == v3)
  {
    a2 = 0.0;
  }

  sub_24F925828();
  sub_24F925848();
  sub_24F925848();
  sub_24F925838();
  sub_24F925848();
  sub_24F925848();
  sub_24F925858();
  sub_24F925848();
  sub_24F925848();
  return a2;
}

double sub_24EA919EC()
{
  if (qword_27F211268 != -1)
  {
    swift_once();
  }

  result = *&qword_27F243168 + 340.0;
  *&qword_27F39B9A8 = *&qword_27F243168 + 340.0;
  return result;
}

double sub_24EA91A54()
{
  sub_24EA98A3C();
  sub_24F924868();
  return v1;
}

uint64_t sub_24EA91A94@<X0>(uint64_t a1@<X8>)
{
  v147 = a1;
  v2 = type metadata accessor for HeroCarouselView(0);
  v125 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v153 = v3;
  v151 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268B0, &qword_24F97B868);
  MEMORY[0x28223BE20](v130);
  v126 = (&v118 - v4);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268B8, &qword_24F97B870);
  v131 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v148 = &v118 - v5;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268C0, &qword_24F97B878);
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v132 = &v118 - v6;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268C8, &qword_24F97B880);
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v150 = &v118 - v7;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268D0, &qword_24F97B888);
  v139 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v138 = &v118 - v8;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268D8, &qword_24F97B890);
  MEMORY[0x28223BE20](v140);
  v10 = &v118 - v9;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268E0, &qword_24F97B898);
  MEMORY[0x28223BE20](v142);
  v144 = &v118 - v11;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268E8, &qword_24F97B8A0);
  MEMORY[0x28223BE20](v146);
  v145 = &v118 - v12;
  v124 = sub_24F922348();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v121 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v122 = &v118 - v15;
  v16 = sub_24F924848();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v118 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = (&v118 - v27);
  MEMORY[0x28223BE20](v29);
  v119 = &v118 - v30;
  sub_24F769764((&v118 - v30));
  v120 = v28;
  sub_24F769764(v28);
  v31 = *(v2 + 44);
  v152 = v1;
  v32 = v1 + v31;
  v33 = *v32;
  v34 = *(v32 + 8) == 1;
  v143 = v10;
  if (v34)
  {
    v36 = *&v33;
  }

  else
  {

    sub_24F92BDC8();
    v35 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v33, 0);
    (*(v17 + 8))(v19, v16);
    v36 = *v161;
  }

  v127 = v19;
  v128 = v17;
  v129 = v16;
  v37 = v152 + *(v2 + 48);
  v39 = *v37;
  v38 = *(v37 + 8);
  v40 = *(v37 + 24);
  v34 = *(v37 + 32) == 1;
  v149 = v2;
  if (v34)
  {
    v44 = *&v39;
  }

  else
  {
    v41 = *(v37 + 16);

    sub_24F92BDC8();
    v42 = sub_24F9257A8();
    sub_24F921FD8();

    v43 = v127;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v39, v38, v41, v40, 0);
    (*(v128 + 8))(v43, v129);
    v44 = *v161;
  }

  v45 = v119;
  sub_24E60169C(v119, v25, &qword_27F215598, &qword_24F945EF0);
  v46 = v120;
  sub_24E60169C(v120, v22, &qword_27F215598, &qword_24F945EF0);
  v47 = sub_24E6B00B4(v36);
  v48 = sub_24F5502F0(v25, v22, v47);
  if (qword_27F210130 != -1)
  {
    swift_once();
  }

  v49 = v121;
  _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
  v50 = v123;
  v51 = v122;
  v52 = v49;
  v53 = v124;
  (*(v123 + 32))(v122, v52, v124);
  sub_24F922308();
  v55 = v54;
  (*(v50 + 8))(v51, v53);
  sub_24E601704(v46, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v45, &qword_27F215598, &qword_24F945EF0);
  v56 = dbl_24F97BED0[v48];
  v57 = sub_24F927608();
  v58 = v126;
  *v126 = v57;
  *(v58 + 8) = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268F0, &qword_24F97B8A8);
  v61 = v152;
  sub_24EA92F08(v152, v58 + *(v60 + 44), v56, v44, v55);
  v124 = *(v61 + 48);
  v123 = *(v61 + 56);
  *&v154 = v124;
  *(&v154 + 1) = v123;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268F8, &qword_24F97B8B0);
  sub_24F926F58();
  v63 = *&v161[8];
  v62 = *v161;
  v64 = *&v161[16];
  swift_getKeyPath();
  *v161 = __PAIR128__(v63, v62);
  *&v161[16] = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226900, &unk_24F97B8E0);
  sub_24F927188();

  v65 = v154;
  v66 = v155;

  v67 = v130;
  v68 = v58 + *(v130 + 36);
  *v68 = v65;
  *(v68 + 16) = v66;
  v69 = v61 + *(v149 + 15);
  v161[0] = *v69;
  *&v161[8] = *(v69 + 8);
  v70 = v151;
  sub_24EA9799C(v61, v151);
  v71 = *(v125 + 80);
  v72 = (v71 + 16) & ~v71;
  v73 = swift_allocObject();
  v125 = type metadata accessor for HeroCarouselView;
  sub_24EA988AC(v70, v73 + v72, type metadata accessor for HeroCarouselView);
  v74 = sub_24EA97A84();
  v75 = sub_24EA97B90();
  sub_24F926AB8();

  sub_24E601704(v58, &qword_27F2268B0, &qword_24F97B868);
  *v161 = v124;
  *&v161[8] = v123;
  sub_24F926F38();
  v76 = v154;
  swift_getKeyPath();
  *v161 = v76;
  sub_24EA9626C(&qword_27F226930, type metadata accessor for HeroPageControlProgressCoordinator, &unk_24FA21704);
  sub_24F91FD88();

  LOBYTE(v51) = *(v76 + 48);

  LOBYTE(v154) = v51;
  v77 = v70;
  sub_24EA9799C(v61, v70);
  v78 = swift_allocObject() + v72;
  v79 = v70;
  v80 = v125;
  sub_24EA988AC(v79, v78, v125);
  *v161 = v67;
  *&v161[8] = &type metadata for HeroPageControlProgressCoordinator.AutoAdvanceConfiguration;
  *&v161[16] = v74;
  *&v161[24] = v75;
  v130 = MEMORY[0x277CE0E30];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v82 = v132;
  v83 = v133;
  v84 = v148;
  sub_24F926AB8();

  (*(v131 + 8))(v84, v83);
  sub_24EA9799C(v61, v77);
  v148 = v71;
  v85 = swift_allocObject();
  v131 = v72;
  sub_24EA988AC(v77, v85 + v72, v80);
  *v161 = v83;
  *&v161[8] = MEMORY[0x277D839B0];
  *&v161[16] = OpaqueTypeConformance2;
  *&v161[24] = MEMORY[0x277D839C8];
  v86 = swift_getOpaqueTypeConformance2();
  v87 = v135;
  sub_24F9267B8();

  (*(v134 + 8))(v82, v87);
  v88 = v61 + *(v149 + 13);
  v89 = *v88;
  if ((*(v88 + 8) & 1) == 0)
  {

    sub_24F92BDC8();
    v90 = sub_24F9257A8();
    sub_24F921FD8();

    v91 = v127;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v89, 0);
    (*(v128 + 8))(v91, v129);
    v89 = *v161;
  }

  *&v154 = v89;
  v92 = v152;
  v93 = v151;
  sub_24EA9799C(v152, v151);
  v94 = v131;
  v95 = swift_allocObject();
  v149 = type metadata accessor for HeroCarouselView;
  sub_24EA988AC(v93, v95 + v94, type metadata accessor for HeroCarouselView);
  *v161 = v87;
  *&v161[8] = v86;
  v96 = swift_getOpaqueTypeConformance2();
  v97 = sub_24EA97F88();
  v98 = v138;
  v99 = v137;
  v100 = v150;
  sub_24F926AB8();

  (*(v136 + 8))(v100, v99);
  *v161 = *(v92 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2180B0, &unk_24F947A78);
  sub_24F926F38();
  sub_24EA9799C(v92, v93);
  v101 = swift_allocObject();
  v102 = v149;
  sub_24EA988AC(v93, v101 + v94, v149);
  *v161 = v99;
  *&v161[8] = MEMORY[0x277D7EB10];
  *&v161[16] = v96;
  *&v161[24] = v97;
  swift_getOpaqueTypeConformance2();
  v103 = v143;
  v104 = v141;
  sub_24F926AB8();

  (*(v139 + 8))(v98, v104);
  sub_24EA9799C(v152, v93);
  v105 = swift_allocObject();
  sub_24EA988AC(v93, v105 + v94, v102);
  v106 = (v103 + *(v140 + 36));
  *v106 = sub_24EA98088;
  v106[1] = v105;
  v106[2] = 0;
  v106[3] = 0;
  sub_24F927618();
  sub_24F9242E8();
  v107 = v144;
  sub_24E6009C8(v103, v144, &qword_27F2268D8, &qword_24F97B890);
  v108 = (v107 + *(v142 + 36));
  v109 = v159;
  v108[4] = v158;
  v108[5] = v109;
  v108[6] = v160;
  v110 = v155;
  *v108 = v154;
  v108[1] = v110;
  v111 = v157;
  v108[2] = v156;
  v108[3] = v111;
  sub_24F927618();
  sub_24F9242E8();
  v112 = v145;
  sub_24E6009C8(v107, v145, &qword_27F2268E0, &qword_24F97B898);
  v113 = (v112 + *(v146 + 36));
  v114 = v165;
  v113[4] = v164;
  v113[5] = v114;
  v113[6] = v166;
  v115 = *&v161[16];
  *v113 = *v161;
  v113[1] = v115;
  v116 = v163;
  v113[2] = v162;
  v113[3] = v116;
  sub_24EA980D0(&qword_27F226940, &qword_27F2268E8, &qword_24F97B8A0, sub_24EA980A0);
  sub_24F926848();
  return sub_24EA98348(v112);
}

void sub_24EA92F08(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226958, &qword_24F97B998);
  v45 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v40 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226960, &qword_24F97B9A0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v46 = &v36 - v16;
  v17 = type metadata accessor for HeroCarouselView(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EA9799C(a1, v20);
  v21 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v38 = v21 + v19;
  v22 = (v21 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v39 = v21;
  sub_24EA988AC(v20, v23 + v21, type metadata accessor for HeroCarouselView);
  v24 = (v23 + v22);
  *v24 = a3;
  v24[1] = a4;
  v24[2] = a5;
  sub_24F927618();
  v25 = 1;
  sub_24F9238C8();
  v44 = v56;
  v43 = v58;
  v42 = v60;
  v41 = v61;
  v55 = v57;
  v54 = v59;
  if (*(*a1 + 16) >= 2uLL)
  {
    v26 = a1;
    sub_24EA948D8(v52);
    v36 = v10;
    v37 = v14;
    v27 = v53;
    v47 = v52[0];
    v48 = v52[1];
    v49 = v52[2];
    v50 = v52[3];
    v51 = v53;
    sub_24E7EC460();
    v28 = v40;
    sub_24F9267E8();
    v10 = v36;

    v14 = v37;
    sub_24EA9799C(v26, v20);
    v29 = swift_allocObject();
    sub_24EA988AC(v20, v29 + v39, type metadata accessor for HeroCarouselView);
    v30 = (v28 + *(v10 + 36));
    *v30 = sub_24E7BC238;
    v30[1] = 0;
    v30[2] = sub_24EA987CC;
    v30[3] = v29;
    sub_24E6009C8(v28, v46, &qword_27F226958, &qword_24F97B998);
    v25 = 0;
  }

  v31 = v46;
  (*(v45 + 56))(v46, v25, 1, v10);
  v32 = v55;
  v33 = v54;
  sub_24E60169C(v31, v14, &qword_27F226960, &qword_24F97B9A0);
  *a2 = sub_24EA98718;
  *(a2 + 8) = v23;
  *(a2 + 16) = v44;
  *(a2 + 24) = v32;
  *(a2 + 32) = v43;
  *(a2 + 40) = v33;
  v34 = v41;
  *(a2 + 48) = v42;
  *(a2 + 56) = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226968, &unk_24F97B9A8);
  sub_24E60169C(v14, a2 + *(v35 + 48), &qword_27F226960, &qword_24F97B9A0);

  sub_24E601704(v31, &qword_27F226960, &qword_24F97B9A0);
  sub_24E601704(v14, &qword_27F226960, &qword_24F97B9A0);
}

uint64_t sub_24EA93418@<X0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v168 = a3;
  *&v149 = sub_24F91F6B8();
  v147 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v146 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v145 = &v137 - v13;
  v148 = type metadata accessor for CarouselContainerView(0);
  MEMORY[0x28223BE20](v148);
  v169 = &v137 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226970, &qword_24F97B9B8);
  MEMORY[0x28223BE20](v161);
  v160 = &v137 - v15;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226978, &qword_24F97B9C0);
  MEMORY[0x28223BE20](v155);
  v158 = &v137 - v16;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226980, &qword_24F97B9C8);
  MEMORY[0x28223BE20](v154);
  v157 = &v137 - v17;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226988, &qword_24F97B9D0);
  MEMORY[0x28223BE20](v153);
  v156 = &v137 - v18;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226990, &qword_24F97B9D8);
  MEMORY[0x28223BE20](v152);
  v162 = &v137 - v19;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226998, &qword_24F97B9E0);
  MEMORY[0x28223BE20](v159);
  v166 = &v137 - v20;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2269A0, &qword_24F97B9E8);
  MEMORY[0x28223BE20](v151);
  v165 = &v137 - v21;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2269A8, &unk_24F97B9F0);
  MEMORY[0x28223BE20](v163);
  v164 = &v137 - v22;
  v141 = sub_24F924848();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v139 = &v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24F925218();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v138 = &v137 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  v28 = v27 - 8;
  MEMORY[0x28223BE20](v27);
  v30 = &v137 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v31 - 8);
  v142 = &v137 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v137 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = (&v137 - v37);
  v144 = 0x5040302010001uLL >> (8 * *(*&a2 + 8));
  v170 = a1;
  sub_24F923998();
  v40 = v39;
  v143 = type metadata accessor for HeroCarouselView(0);
  v167 = a2;
  sub_24F769764(v38);
  (*(v25 + 104))(v35, *MEMORY[0x277CE0558], v24);
  (*(v25 + 56))(v35, 0, 1, v24);
  v41 = *(v28 + 56);
  sub_24E60169C(v38, v30, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v35, &v30[v41], &qword_27F215598, &qword_24F945EF0);
  v42 = *(v25 + 48);
  if (v42(v30, 1, v24) == 1)
  {
    sub_24E601704(v35, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v38, &qword_27F215598, &qword_24F945EF0);
    if (v42(&v30[v41], 1, v24) == 1)
    {
      sub_24E601704(v30, &qword_27F215598, &qword_24F945EF0);
      v43 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_24E60169C(v30, v142, &qword_27F215598, &qword_24F945EF0);
  if (v42(&v30[v41], 1, v24) == 1)
  {
    sub_24E601704(v35, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v38, &qword_27F215598, &qword_24F945EF0);
    (*(v25 + 8))(v142, v24);
LABEL_6:
    sub_24E601704(v30, &unk_27F254F20, &qword_24F940790);
    v43 = 0;
    goto LABEL_8;
  }

  v44 = v138;
  (*(v25 + 32))(v138, &v30[v41], v24);
  sub_24EA9626C(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v45 = v142;
  v43 = sub_24F92AFF8();
  v46 = *(v25 + 8);
  v46(v44, v24);
  sub_24E601704(v35, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v38, &qword_27F215598, &qword_24F945EF0);
  v46(v45, v24);
  sub_24E601704(v30, &qword_27F215598, &qword_24F945EF0);
LABEL_8:
  v47 = v167;
  v48 = *&v167 + *(v143 + 48);
  v49 = *(v48 + 8);
  v50 = *(v48 + 24);
  v51 = *(v48 + 32) == 1;
  v150 = a6;
  if (v51)
  {
    v56 = *&v49;
    v57 = *&v50;
  }

  else
  {
    v52 = *v48;
    v53 = *(v48 + 16);

    sub_24F92BDC8();
    v54 = sub_24F9257A8();
    sub_24F921FD8();

    v55 = v139;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E669FC4(v52, v49, v53, v50, 0);
    (*(v140 + 8))(v55, v141);
    v56 = *(&v173 + 1);
    v57 = *(&v174 + 1);
  }

  v58 = v149;
  v59 = v147;
  v60 = v56 + v57;
  if (v40 <= 1580.0)
  {
    v61 = v40;
  }

  else
  {
    v61 = 1580.0;
  }

  v62 = 0.0;
  if (v144 <= 2u)
  {
    if (!v144)
    {
      goto LABEL_43;
    }

    if (v144 == 1)
    {
      if (v43)
      {
        if (v60 <= 0.0)
        {
          v62 = 16.0;
        }

        else
        {
          v62 = 0.0;
        }

        goto LABEL_43;
      }

LABEL_40:
      v62 = dbl_24F97BEF0[sub_24E6B00B4(v61)];
      goto LABEL_43;
    }

    v65 = 2;
LABEL_32:
    LOBYTE(v173) = v65;
    sub_24F422FFC(v43 & 1, v61);
    v62 = v66;
    goto LABEL_43;
  }

  if (v144 == 3)
  {
    if (sub_24E6B00B4(v61) < 4u)
    {
      goto LABEL_43;
    }

    v65 = 3;
    goto LABEL_32;
  }

  if (v144 != 4)
  {
    if (qword_27F210748 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_27F2301A8)
    {
      if (v43)
      {
        if (qword_27F210D60 != -1)
        {
          swift_once();
        }

        v62 = *&qword_27F39D300;
        goto LABEL_43;
      }

      if (v61 < 0.0 || v61 >= 376.0)
      {
        if (v61 >= 428.0 || v61 < 376.0)
        {
          v62 = 46.0;
        }

        else
        {
          v62 = 38.0;
        }

        goto LABEL_43;
      }

      *&v67 = 44.0;
    }

    else
    {
      *&v67 = 40.0;
    }

    v62 = *&v67;
    goto LABEL_43;
  }

  if ((v43 & 1) == 0)
  {
    goto LABEL_40;
  }

  v63 = v61 + -420.0;
  if (v60 <= 0.0)
  {
    v62 = 16.0;
    if (v63 > 0.0)
    {
      v134 = v63 * 0.5;
      if (v134 > 16.0)
      {
        v62 = v134;
      }

      else
      {
        v62 = 16.0;
      }
    }
  }

  else if (v63 > 0.0)
  {
    v64 = v63 * 0.5;
    if (v64 > 0.0)
    {
      v62 = v64;
    }

    else
    {
      v62 = 0.0;
    }
  }

LABEL_43:
  sub_24F923998();
  if (qword_27F210130 != -1)
  {
    v136 = v68;
    swift_once();
    v68 = v136;
  }

  if (*&qword_27F39B9A8 < v68)
  {
    v68 = *&qword_27F39B9A8;
  }

  v69 = v61;
  v167 = v68;
  v70 = *(*&v47 + 40);
  v71 = v62 + (v68 - v61) * 0.5;
  *&v173 = *(*&v47 + 32);
  *(&v173 + 1) = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550, &qword_24F9424D0);
  sub_24F926F38();
  v72 = *&v171 + a4;
  sub_24F923988();
  v74 = v73 + a5;
  v76 = v71 + v75;
  v78 = v72 + v77;
  v80 = v71 + v79;
  v171 = *(*&v47 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2180B0, &unk_24F947A78);
  sub_24F926F58();
  v149 = v173;
  v81 = v174;
  v82 = v47;
  v83 = **&v47;
  KeyPath = swift_getKeyPath();
  v85 = v169;
  *(v169 + 88) = KeyPath;
  *(v85 + 96) = 0;
  *(v85 + 104) = swift_getKeyPath();
  *(v85 + 112) = 0;

  v86 = v145;
  sub_24F91F6A8();
  (*(v59 + 16))(v146, v86, v58);
  sub_24F926F28();
  (*(v59 + 8))(v86, v58);
  *v85 = v149;
  *(v85 + 16) = v81;
  *(v85 + 24) = v83;
  *(v85 + 32) = -a5;
  *(v85 + 40) = v74;
  *(v85 + 48) = v76;
  *(v85 + 56) = v78;
  v87 = v150;
  *(v85 + 64) = v80;
  *(v85 + 72) = v87;
  *(v85 + 80) = a4;
  *(swift_allocObject() + 16) = v83;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2269B0, &qword_24F97BA50);
  sub_24F9233C8();
  v88 = *(v83 + 16);
  v89 = MEMORY[0x277D84F90];
  if (v88)
  {
    v176 = MEMORY[0x277D84F90];
    sub_24F457B3C(0, v88, 0);
    v89 = v176;
    v90 = v83 + 32;
    v91 = v82;
    do
    {
      sub_24E615E00(v90, &v171);
      __swift_project_boxed_opaque_existential_1(&v171, v172);
      sub_24F928D68();
      __swift_destroy_boxed_opaque_existential_1(&v171);
      v176 = v89;
      v93 = *(v89 + 16);
      v92 = *(v89 + 24);
      if (v93 >= v92 >> 1)
      {
        sub_24F457B3C((v92 > 1), v93 + 1, 1);
        v89 = v176;
      }

      *(v89 + 16) = v93 + 1;
      v94 = v89 + 40 * v93;
      v95 = v173;
      v96 = v174;
      *(v94 + 64) = v175;
      *(v94 + 32) = v95;
      *(v94 + 48) = v96;
      v90 += 40;
      --v88;
    }

    while (v88);
  }

  else
  {
    v91 = v82;
  }

  v97 = v160;
  sub_24EA988AC(v169, v160, type metadata accessor for CarouselContainerView);
  *(v97 + *(v161 + 52)) = v89;
  v98 = swift_getKeyPath();
  v99 = v97;
  v100 = v158;
  sub_24E6009C8(v99, v158, &qword_27F226970, &qword_24F97B9B8);
  v101 = v100 + *(v155 + 36);
  *v101 = v98;
  *(v101 + 8) = v69 - (v62 + v62);
  v102 = swift_getKeyPath();
  v103 = v157;
  sub_24E6009C8(v100, v157, &qword_27F226978, &qword_24F97B9C0);
  v104 = v103 + *(v154 + 36);
  *v104 = v102;
  *(v104 + 8) = v76;
  v105 = swift_getKeyPath();
  LOBYTE(v100) = *(*&v91 + 8);
  v106 = v103;
  v107 = v156;
  sub_24E6009C8(v106, v156, &qword_27F226980, &qword_24F97B9C8);
  v108 = v107 + *(v153 + 36);
  *v108 = v105;
  *(v108 + 8) = v100;
  *(v108 + 9) = 0;
  v109 = swift_getKeyPath();
  v110 = v107;
  v111 = v162;
  sub_24E6009C8(v110, v162, &qword_27F226988, &qword_24F97B9D0);
  v112 = v111 + *(v152 + 36);
  *v112 = v109;
  *(v112 + 8) = 1;
  *(v112 + 16) = 0;
  v113 = swift_getKeyPath();
  LOBYTE(v100) = sub_24E6B00B4(v167);
  v114 = v111;
  v115 = v166;
  sub_24E6009C8(v114, v166, &qword_27F226990, &qword_24F97B9D8);
  v116 = v115 + *(v159 + 36);
  *v116 = v113;
  *(v116 + 8) = v100;
  v117 = swift_getKeyPath();
  v118 = v165;
  v119 = &v165[*(v151 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215A88, &unk_24F9C5180);
  sub_24F921958();
  *v119 = v117;
  sub_24E6009C8(v115, v118, &qword_27F226998, &qword_24F97B9E0);
  LOBYTE(v117) = sub_24F9257F8();
  v120 = sub_24F924058();
  v121 = v164;
  sub_24E6009C8(v118, v164, &qword_27F2269A0, &qword_24F97B9E8);
  v122 = v121 + *(v163 + 36);
  *v122 = v120;
  *(v122 + 8) = v117;
  sub_24F923988();
  v124 = v123;
  v126 = v125;
  v128 = v127;
  v130 = v129;
  v131 = v168;
  sub_24E6009C8(v121, v168, &qword_27F2269A8, &unk_24F97B9F0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2269B8, &unk_24F97BB00);
  v133 = v131 + *(result + 36);
  *v133 = 0x408F400000000000;
  *(v133 + 8) = v124;
  *(v133 + 16) = v126;
  *(v133 + 24) = v128;
  *(v133 + 32) = v130;
  *(v133 + 40) = 256;
  return result;
}

void sub_24EA94768(uint64_t a1@<X8>)
{
  sub_24F0BB140(&v3);
  v2 = v4;
  *a1 = v3;
  *(a1 + 8) = v2;
}

double sub_24EA947AC(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return sub_24F0BB230(&v3);
}

uint64_t sub_24EA94810(uint64_t a1)
{
  v2 = sub_24F921998();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_24F0BB908(v5);
}

__n128 sub_24EA948D8@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 16);
  v9 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2180B0, &unk_24F947A78);
  sub_24F926F58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268F8, &qword_24F97B8B0);
  sub_24F926F38();
  swift_getKeyPath();
  sub_24EA9626C(&qword_27F226930, type metadata accessor for HeroPageControlProgressCoordinator, &unk_24FA21704);
  sub_24F91FD88();

  v4 = *(v9 + 16);
  v5 = v4;

  *a1 = v3;
  result = v7;
  *(a1 + 8) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v4;
  return result;
}

void sub_24EA94A64(uint64_t a1, double *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268F8, &qword_24F97B8B0);
  sub_24F926F38();
  v6 = *(v12 + 56);
  v7 = *(v12 + 64);
  v8 = *(v12 + 72);

  if (v6 == 2 || ((v3 ^ v6) & 1) != 0 || (v7 == v4 ? (v9 = v8 == v5) : (v9 = 0), !v9))
  {
    sub_24F926F38();
    *(v12 + 56) = v3;
    *(v12 + 64) = v4;
    *(v12 + 72) = v5;
    if (v3)
    {
      v10 = [objc_allocWithZone(MEMORY[0x277D757E8]) initWithPreferredDuration_];
      [v10 setResetsToInitialPageAfterEnd_];
      [v10 resumeTimer];
      sub_24F711B74(v10);
      sub_24F712668();
    }

    else
    {
      if (*(v12 + 16))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_24EA9626C(&qword_27F226930, type metadata accessor for HeroPageControlProgressCoordinator, &unk_24FA21704);
        sub_24F91FD78();
      }

      sub_24F7127A8();
    }

    sub_24F7124E8();
  }
}

uint64_t sub_24EA94C60(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a3 + *(type metadata accessor for HeroCarouselView(0) + 56));
  if (v4)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v4;
    sub_24F923098();

    if ((v3 & 1) == 0)
    {
      if (v7)
      {
        sub_24E85C800();
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    return sub_24F9230A8();
  }

  else
  {
    type metadata accessor for GSKVideoPlaybackCoordinator(0);
    sub_24EA9626C(&qword_27F2141F0, type metadata accessor for GSKVideoPlaybackCoordinator, &unk_24F95FAB8);
    result = sub_24F9243C8();
    __break(1u);
  }

  return result;
}

double sub_24EA94D94(char a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268F8, &qword_24F97B8B0);
  sub_24F926F38();
  *(v4 + 49) = a1;
  sub_24F7124E8();

  return result;
}

double sub_24EA94DF8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268F8, &qword_24F97B8B0);
  sub_24F926F38();
  *(v5 + 50) = v3 != sub_24F921898();
  sub_24F7124E8();

  return result;
}

void sub_24EA94E68(void *a1, void *a2, uint64_t *a3)
{
  v6 = type metadata accessor for HeroCarouselView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  if (*a1 != *a2)
  {
    v9 = a3[7];
    *&v16[0] = a3[6];
    *(&v16[0] + 1) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268F8, &qword_24F97B8B0);
    sub_24F926F38();
    v10 = *a3;
    v16[0] = *(a3 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2180B0, &unk_24F947A78);
    sub_24F926F38();
    if ((v17 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v17 < *(v10 + 16))
    {
      sub_24E615E00(v10 + 40 * v17 + 32, v16);
      v11 = *(a3 + *(v6 + 56));
      if (v11)
      {
        sub_24EA9799C(a3, v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
        v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
        v13 = swift_allocObject();
        sub_24EA988AC(v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for HeroCarouselView);
        v14 = v11;
        sub_24F711600(v16, v15, v14, sub_24EA983C0, v13);

        __swift_destroy_boxed_opaque_existential_1(v16);
        return;
      }

LABEL_9:
      type metadata accessor for GSKVideoPlaybackCoordinator(0);
      sub_24EA9626C(&qword_27F2141F0, type metadata accessor for GSKVideoPlaybackCoordinator, &unk_24F95FAB8);
      sub_24F9243C8();
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_9;
  }
}

void *sub_24EA950C4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2180B0, &unk_24F947A78);
  result = sub_24F926F38();
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else if (*(*a1 + 16))
  {
    return sub_24F926F48();
  }

  __break(1u);
  return result;
}

double sub_24EA95168(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268F8, &qword_24F97B8B0);
  sub_24F926F38();
  swift_getKeyPath();
  sub_24EA9626C(&qword_27F226930, type metadata accessor for HeroPageControlProgressCoordinator, &unk_24FA21704);
  sub_24F91FD88();

  if (!*(v3 + 24))
  {
    swift_getKeyPath();
    sub_24F91FD88();

    v1 = *(v3 + 16);
    if (v1)
    {
      [v1 setCurrentProgress_];
    }
  }

  return result;
}

double sub_24EA95290@<D0>(uint64_t a1@<X8>)
{
  sub_24F92C1F8();
  sub_24F927788();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_24EA952FC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F923238();
  return sub_24E622878;
}

uint64_t sub_24EA95384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24EA99244();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24EA953E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24EA99244();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24EA9544C(uint64_t a1)
{
  v2 = sub_24EA99244();

  return MEMORY[0x282133738](a1, v2);
}

uint64_t sub_24EA9549C@<X0>(uint64_t a1@<X0>, void (*a2)(__n128)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a6;
  v26[1] = a3;
  v27 = a2;
  v8 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v26 - v12;
  v14 = sub_24F92C4A8();
  v28 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v26 - v18;
  swift_getKeyPath();
  v32 = a1;
  sub_24EA9626C(&qword_27F226880, type metadata accessor for DeferredViewState, &unk_24F97B790);
  sub_24F91FD88();

  if (*(a1 + 16) == 1)
  {
    (v27)(v20);
    v21 = v29;
    sub_24E7896B8();
    v22 = *(v8 + 8);
    v22(v10, a4);
    sub_24E7896B8();
    v22(v13, a4);
    (*(v8 + 32))(v16, v10, a4);
    v23 = 0;
  }

  else
  {
    v23 = 1;
    v21 = v29;
  }

  (*(v8 + 56))(v16, v23, 1, a4);
  sub_24E8D5004(v16, v19);
  v24 = *(v28 + 8);
  v24(v16, v14);
  v31 = v21;
  swift_getWitnessTable();
  sub_24E7896B8();
  return (v24)(v19, v14);
}

uint64_t sub_24EA957DC()
{
  swift_getKeyPath();
  sub_24EA9626C(&qword_27F226880, type metadata accessor for DeferredViewState, &unk_24F97B790);
  sub_24F91FD88();

  return *(v0 + 16);
}

void sub_24EA9587C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EA9626C(&qword_27F226880, type metadata accessor for DeferredViewState, &unk_24F97B790);
  sub_24F91FD88();

  *a2 = *(v3 + 16);
}

void sub_24EA95924(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EA9626C(&qword_27F226880, type metadata accessor for DeferredViewState, &unk_24F97B790);
    sub_24F91FD78();
  }
}

uint64_t sub_24EA95A34()
{
  swift_getKeyPath();
  sub_24EA9626C(&qword_27F226880, type metadata accessor for DeferredViewState, &unk_24F97B790);
  sub_24F91FD88();

  return *(v0 + 17);
}

void sub_24EA95AD4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24EA9626C(&qword_27F226880, type metadata accessor for DeferredViewState, &unk_24F97B790);
  sub_24F91FD88();

  *a2 = *(v3 + 17);
}

void sub_24EA95B7C(char a1)
{
  if (*(v1 + 17) == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24EA9626C(&qword_27F226880, type metadata accessor for DeferredViewState, &unk_24F97B790);
    sub_24F91FD78();
  }
}

uint64_t sub_24EA95C8C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKitP33_3A67B35F55B473BE31316F8B9DF9621517DeferredViewState___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24EA95D50(uint64_t a1)
{
  result = sub_24F91FDC8();
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

uint64_t sub_24EA95E68(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_24EA95F38(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EA96008(uint64_t a1)
{
  sub_24EA98FE4(319, &qword_27F226898, &unk_27F23A6A0, &unk_24F9549D0, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_24EA98F40(319, &qword_27F218028, MEMORY[0x277D83B88], MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_24EA98F40(319, &qword_27F218018, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_24EA98F90(319, &qword_27F2268A0, type metadata accessor for HeroPageControlProgressCoordinator);
        if (v4 <= 0x3F)
        {
          sub_24EA98FE4(319, &qword_27F254DC0, &qword_27F215598, &qword_24F945EF0, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_24EA98F40(319, &qword_27F215590, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_24EA98F40(319, &qword_27F254DF0, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
              {
                sub_24EA98F40(319, &qword_27F2268A8, MEMORY[0x277D7EB10], MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
                {
                  sub_24E6DDA68(319);
                  if (v9 <= 0x3F)
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
  }
}

uint64_t sub_24EA9626C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EA962D0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v4 = *(result + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v10 = MEMORY[0x277D84F90];
    sub_24F92C978();
    type metadata accessor for DeferredViewState(0);
    v6 = 0;
    do
    {
      v7 = v6 + 1;
      v8 = v6 == 0;
      v9 = swift_allocObject();
      sub_24F91FDB8();
      *(v9 + 16) = v8;
      *(v9 + 17) = 0;
      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      result = sub_24F92C958();
      v6 = v7;
    }

    while (v4 != v7);
    v5 = v10;
  }

  *a2 = v5;
  return result;
}

double sub_24EA963C0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24F924848();
  v55 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F91F6B8();
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = *(v62 + 64);
  MEMORY[0x28223BE20](v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - v11;
  v13 = *(v1 + 3);
  type metadata accessor for CarouselContainerView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2269D0, &unk_24F97BB70);
  sub_24F9233D8();
  v59 = v65;
  v60 = *(v1 + 56);
  v61 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2269C8, &qword_24F97BB68);
  v64 = v12;
  sub_24F926F38();
  v14 = *(v1 + 2);
  v65 = *v1;
  *&v66 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F2180B8, &unk_24F947A88);
  sub_24F927198();
  v57 = *(&v68 + 1);
  v58 = v68;
  v56 = v69;
  v15 = *(v1 + 11);
  if (*(v2 + 96) == 1)
  {
    v16 = *(v2 + 11);
    v17 = v55;
  }

  else
  {

    sub_24F92BDC8();
    v18 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v15, 0);
    v17 = v55;
    (*(v55 + 8))(v6, v4);
    v16 = *&v65;
  }

  v19 = *(v2 + 13);
  if (*(v2 + 112) == 1)
  {
    v20 = *(v2 + 13);
  }

  else
  {

    sub_24F92BDC8();
    v55 = v4;
    v21 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v19, 0);
    (*(v17 + 8))(v6, v55);
    v20 = *&v65;
  }

  v22 = v16 + v20 + v20;
  v23 = *(v2 + 10);
  v24 = *(v13 + 16);
  v25 = v62;
  v26 = v63;
  (*(v62 + 16))(v9, v64, v63);
  v27 = (*(v25 + 80) + 64) & ~*(v25 + 80);
  v28 = swift_allocObject();
  v29 = v59;
  *(v28 + 16) = v13;
  *(v28 + 24) = v29;
  v30 = v60;
  *(v28 + 32) = v61;
  *(v28 + 48) = v30;
  (*(v25 + 32))(v28 + v27, v9, v26);
  v31 = v57;
  *a1 = v58;
  *(a1 + 8) = v31;
  *(a1 + 16) = v56;
  *(a1 + 24) = v22;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = v23;
  *(a1 + 56) = 0;
  *(a1 + 64) = v24;
  *(a1 + 72) = sub_24EA99364;
  *(a1 + 80) = v28;
  *(a1 + 88) = MEMORY[0x25304CFF0](0.25, 0.9, 0.25);
  *(a1 + 96) = MEMORY[0x25304CFF0](0.25, 0.9, 0.25);
  *(a1 + 104) = 0x3FD51EB851EB851FLL;
  *&v68 = 0;
  sub_24F926F28();
  v32 = *(&v65 + 1);
  *(a1 + 112) = v65;
  *(a1 + 120) = v32;
  LOBYTE(v68) = 1;
  sub_24F926F28();
  v33 = *(&v65 + 1);
  *(a1 + 128) = v65;
  *(a1 + 136) = v33;
  LOBYTE(v68) = 0;
  sub_24F923728();
  v34 = *(&v65 + 1);
  v35 = v66;
  *(a1 + 144) = v65;
  *(a1 + 152) = v34;
  *(a1 + 160) = v35;
  LOBYTE(v68) = 0;
  sub_24F926F28();
  v36 = *(&v65 + 1);
  *(a1 + 176) = v65;
  *(a1 + 184) = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226A30, &qword_24F97BD50);
  v38 = *(v37 + 80);
  *(a1 + v38) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  swift_storeEnumTagMultiPayload();
  v39 = *(v37 + 84);
  *&v68 = 0;
  sub_24F926F28();
  *(a1 + v39) = v65;
  sub_24F9233A8();
  sub_24F927618();
  sub_24F9238C8();
  v40 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226A38, &qword_24F97BD90) + 36));
  v41 = v66;
  *v40 = v65;
  v40[1] = v41;
  v40[2] = v67;
  LOBYTE(v37) = sub_24F925818();
  sub_24F923318();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226A40, &qword_24F97BD98) + 36);
  *v50 = v37;
  *(v50 + 8) = v43;
  *(v50 + 16) = v45;
  *(v50 + 24) = v47;
  *(v50 + 32) = v49;
  *(v50 + 40) = 0;
  sub_24F37921C(&v68);
  (*(v25 + 8))(v64, v26);
  v51 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226A48, &qword_24F97BDA0) + 36);
  result = *&v68;
  v53 = v69;
  *v51 = v68;
  *(v51 + 16) = v53;
  *(v51 + 32) = v70;
  return result;
}

uint64_t sub_24EA96AA4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v40 = a4;
  v17 = sub_24F929888();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226A50, &unk_24F97BDA8);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v35 - v24;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = sub_24E615E00(a2 + 40 * a1 + 32, v49);
  v39 = a5;
  v38 = v21;
  v37 = v22;
  v36 = v17;
  v35 = v18;
  if ((a3 & 0xC000000000000001) != 0)
  {
LABEL_9:
    v27 = MEMORY[0x253052270](a1, a3, v23);
    goto LABEL_6;
  }

  if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v27 = *(a3 + 8 * a1 + 32);

LABEL_6:
    sub_24E615E00(v49, &v47);
    v28 = swift_allocObject();
    sub_24E612C80(&v47, v28 + 16);
    *(v28 + 56) = a1;
    *(v28 + 64) = v27;
    *(v28 + 72) = a6;
    *(v28 + 80) = a7;
    *(v28 + 88) = a8;
    *(v28 + 96) = a9;
    v44 = v27;
    v45 = sub_24EA99438;
    v46 = v28;
    __swift_project_boxed_opaque_existential_1(v49, v49[3]);
    v48 = MEMORY[0x277D84030];
    *&v47 = swift_allocObject();

    sub_24F928D68();
    v29 = sub_24F91F668();
    v43 = MEMORY[0x277D837D0];
    v41 = v29;
    v42 = v30;
    sub_24F929878();
    sub_24E601704(&v41, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(&v47, &qword_27F2129B0, &unk_24F945320);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226A58, &qword_24F97BDB8);
    v32 = sub_24E602068(&qword_27F226A60, &qword_27F226A58, &qword_24F97BDB8, &unk_24F97BE78);
    sub_24F925EE8();
    (*(v35 + 8))(v20, v36);

    sub_24E615E00(v49, &v47);
    v33 = swift_allocObject();
    v33[2] = v27;
    sub_24E612C80(&v47, (v33 + 3));
    v33[8] = a1;
    v33[9] = a3;

    v41 = v31;
    v42 = v32;
    swift_getOpaqueTypeConformance2();
    v34 = v38;
    sub_24F9267B8();

    (*(v37 + 8))(v25, v34);
    return __swift_destroy_boxed_opaque_existential_1(v49);
  }

  __break(1u);
  return result;
}

uint64_t sub_24EA96F3C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v38 - v14;
  v16 = sub_24F929B38();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226A68, &unk_24FA2E790);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v38 - v22;
  sub_24E615E00(a1, v45);
  type metadata accessor for GSKComponentContentBuilder(0);
  sub_24EA9626C(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder, &unk_24F9FB114);
  v43 = sub_24F923598();
  LOBYTE(v44) = v24 & 1;
  sub_24F929B18();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F92ADC8();
  v25 = sub_24E66C1E0();
  sub_24F925E88();
  sub_24E601704(v15, &qword_27F213E68, &unk_24F93BC80);
  (*(v17 + 8))(v19, v16);
  sub_24E88F154(&v43);
  sub_24F92B7F8();
  v26 = v39;

  v27 = sub_24F92B7E8();
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D85700];
  v28[2] = v27;
  v28[3] = v29;
  v28[4] = v26;
  v30 = sub_24F92B7E8();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = v29;
  sub_24F9271A8();
  v41 = &type metadata for GSKComponentView;
  v42 = v25;
  swift_getOpaqueTypeConformance2();
  v32 = v40;
  sub_24F925EA8();

  (*(v21 + 8))(v23, v20);
  KeyPath = swift_getKeyPath();
  v34 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226A70, &qword_24F97BDE8) + 36);
  *v34 = KeyPath;
  *(v34 + 8) = 5;
  v35 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F226A78, &qword_24F97BE18);
  v37 = v32 + *(result + 36);
  *v37 = v35;
  *(v37 + 8) = a5;
  *(v37 + 16) = a6;
  *(v37 + 24) = a7;
  *(v37 + 32) = a8;
  return result;
}

void sub_24EA9738C(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_24EA9626C(&qword_27F226880, type metadata accessor for DeferredViewState, &unk_24F97B790);
  sub_24F91FD88();

  *a2 = *(a1 + 17);
}

double sub_24EA97434(char a1, unint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v8 = a2;
  if (*(a2 + 17) == (a1 & 1))
  {
    *(a2 + 17) = a1 & 1;
    if ((a1 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v23[0] = v8;
    sub_24EA9626C(&qword_27F226880, type metadata accessor for DeferredViewState, &unk_24F97B790);
    sub_24F91FD78();

    if ((a1 & 1) == 0)
    {
      return result;
    }
  }

  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_24F928D68();
  v12 = sub_24F92C7A8();
  v14 = v13;
  sub_24E6585F8(v23);
  v23[0] = v12;
  v23[1] = v14;
  sub_24E600AEC();
  LOBYTE(v12) = sub_24F92C5F8();

  if ((v12 & 1) == 0)
  {
    if (*(v8 + 16) == 1)
    {
      *(v8 + 16) = 1;
    }

    else
    {
      v16 = swift_getKeyPath();
      MEMORY[0x28223BE20](v16);
      v23[0] = v8;
      sub_24EA9626C(&qword_27F226880, type metadata accessor for DeferredViewState, &unk_24F97B790);
      sub_24F91FD78();
    }

    v17 = a4 + 1;
    if (__OFADD__(a4, 1))
    {
      __break(1u);
    }

    else if (!(a5 >> 62))
    {
      v8 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17 >= v8)
      {
        goto LABEL_19;
      }

LABEL_12:
      if ((a5 & 0xC000000000000001) == 0)
      {
        if (v17 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_38:
          v21 = MEMORY[0x253052270](v15, a5);
LABEL_27:
          if (*(v21 + 16) == 1)
          {
            *(v21 + 16) = 1;
          }

          else
          {
            v22 = swift_getKeyPath();
            MEMORY[0x28223BE20](v22);
            v23[0] = v21;
            sub_24EA9626C(&qword_27F226880, type metadata accessor for DeferredViewState, &unk_24F97B790);
            sub_24F91FD78();
          }

          return result;
        }

        v18 = *(a5 + 8 * v17 + 32);

LABEL_15:
        if (*(v18 + 16) == 1)
        {
          *(v18 + 16) = 1;
        }

        else
        {
          v19 = swift_getKeyPath();
          MEMORY[0x28223BE20](v19);
          v20 = OBJC_IVAR____TtC12GameStoreKitP33_3A67B35F55B473BE31316F8B9DF9621517DeferredViewState___observationRegistrar;
          v23[0] = v18;
          sub_24EA9626C(&qword_27F226880, type metadata accessor for DeferredViewState, &unk_24F97B790);
          v17 = v18 + v20;
          sub_24F91FD78();
        }

        while (1)
        {
LABEL_19:
          if (__OFSUB__(a4, 1))
          {
            goto LABEL_35;
          }

          if (a4 - 1 >= 0)
          {
            v15 = a4 - 1;
          }

          else
          {
            v15 = v8 - 1;
          }

          if (v15 >= v8)
          {
            return result;
          }

          if ((a5 & 0xC000000000000001) != 0)
          {
            goto LABEL_38;
          }

          if (v15 < *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          __break(1u);
LABEL_40:
          v8 = v15;
          if (v17 < v15)
          {
            goto LABEL_12;
          }
        }

        v21 = *(a5 + 8 * v15 + 32);

        goto LABEL_27;
      }

LABEL_36:
      v18 = MEMORY[0x253052270](v17, a5);
      goto LABEL_15;
    }

    v15 = sub_24F92C738();
    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_40;
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  return result;
}

uint64_t sub_24EA9799C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeroCarouselView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_24EA97A04(uint64_t a1, double *a2)
{
  v5 = *(type metadata accessor for HeroCarouselView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_24EA94A64(a1, a2, v6);
}

unint64_t sub_24EA97A84()
{
  result = qword_27F226908;
  if (!qword_27F226908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2268B0, &qword_24F97B868);
    sub_24E602068(&qword_27F226910, &qword_27F226918, &unk_24F97B8F0, MEMORY[0x277CE11A8]);
    sub_24EA97B3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226908);
  }

  return result;
}

unint64_t sub_24EA97B3C()
{
  result = qword_27F226920;
  if (!qword_27F226920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226920);
  }

  return result;
}

unint64_t sub_24EA97B90()
{
  result = qword_27F226928;
  if (!qword_27F226928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226928);
  }

  return result;
}

uint64_t objectdestroyTm_22()
{
  v1 = type metadata accessor for HeroCarouselView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F925218();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  v6 = v1[10];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24F925218();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v2 + v6, 1, v7))
    {
      (*(v8 + 8))(v2 + v6, v7);
    }
  }

  else
  {
  }

  sub_24E62A5EC(*(v2 + v1[11]), *(v2 + v1[11] + 8));
  v9 = v2 + v1[12];
  sub_24E669FC4(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32));
  sub_24E62A5EC(*(v2 + v1[13]), *(v2 + v1[13] + 8));

  return swift_deallocObject();
}

uint64_t sub_24EA97E80(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for HeroCarouselView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24EA94C60(a1, a2, v6);
}

double sub_24EA97F00(char a1)
{
  v3 = *(type metadata accessor for HeroCarouselView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24EA94D94(a1, v4);
}

unint64_t sub_24EA97F88()
{
  result = qword_27F226938;
  if (!qword_27F226938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226938);
  }

  return result;
}

uint64_t sub_24EA97FF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for HeroCarouselView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_24EA980D0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EA98154()
{
  result = qword_27F226950;
  if (!qword_27F226950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2268D8, &qword_24F97B890);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2268D0, &qword_24F97B888);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2268C8, &qword_24F97B880);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2268C0, &qword_24F97B878);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2268B8, &qword_24F97B870);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2268B0, &qword_24F97B868);
    sub_24EA97A84();
    sub_24EA97B90();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24EA97F88();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226950);
  }

  return result;
}

uint64_t sub_24EA98348(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2268E8, &qword_24F97B8A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EA983D8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for HeroCarouselView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_24EA98470()
{
  v1 = type metadata accessor for HeroCarouselView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F925218();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  v6 = v1[10];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24F925218();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v2 + v6, 1, v7))
    {
      (*(v8 + 8))(v2 + v6, v7);
    }
  }

  else
  {
  }

  sub_24E62A5EC(*(v2 + v1[11]), *(v2 + v1[11] + 8));
  v9 = v2 + v1[12];
  sub_24E669FC4(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32));
  sub_24E62A5EC(*(v2 + v1[13]), *(v2 + v1[13] + 8));

  return swift_deallocObject();
}

uint64_t sub_24EA98718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HeroCarouselView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];

  return sub_24EA93418(a1, COERCE_DOUBLE(v2 + v6), a2, v8, v9, v10);
}

uint64_t sub_24EA987CC(void *a1)
{
  v3 = *(type metadata accessor for HeroCarouselView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24EA94A08(a1, v4);
}

uint64_t sub_24EA9886C()
{

  return swift_deallocObject();
}

uint64_t sub_24EA988AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24EA98988(uint64_t a1@<X8>)
{
  sub_24F0BB140(&v3);
  v2 = v4;
  *a1 = v3;
  *(a1 + 8) = v2;
}

double sub_24EA989CC(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return sub_24F0BB230(&v3);
}

unint64_t sub_24EA98A3C()
{
  result = qword_27F2269C0;
  if (!qword_27F2269C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2269C0);
  }

  return result;
}

uint64_t sub_24EA98AA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24EA98AC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_24EA98B18(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2269C8, &qword_24F97BB68);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 48);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2269D0, &unk_24F97BB70);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24EA98C68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2269C8, &qword_24F97BB68);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2269D0, &unk_24F97BB70);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24EA98DA4(uint64_t a1)
{
  sub_24EA98F40(319, &qword_27F218010, MEMORY[0x277D83B88], MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_24EA98FE4(319, &qword_27F226898, &unk_27F23A6A0, &unk_24F9549D0, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_24EA98F40(319, &qword_27F215590, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_24EA98F90(319, &qword_27F2269E8, MEMORY[0x277CC95F0]);
        if (v4 <= 0x3F)
        {
          sub_24EA98FE4(319, &qword_27F2269F0, &qword_27F2269B0, &qword_24F97BA50, MEMORY[0x277CDF338]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24EA98F40(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_24EA98F90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F926F68();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24EA98FE4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_24EA9904C()
{
  result = qword_27F2269F8;
  if (!qword_27F2269F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226A00, qword_24F97BBC0);
    sub_24EA980D0(&qword_27F226940, &qword_27F2268E8, &qword_24F97B8A0, sub_24EA980A0);
    sub_24EA9626C(&qword_27F2141E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2269F8);
  }

  return result;
}

unint64_t sub_24EA99198()
{
  result = qword_27F226A18;
  if (!qword_27F226A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226A18);
  }

  return result;
}

unint64_t sub_24EA991F0()
{
  result = qword_27F226A20;
  if (!qword_27F226A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226A20);
  }

  return result;
}

unint64_t sub_24EA99244()
{
  result = qword_27F226A28;
  if (!qword_27F226A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226A28);
  }

  return result;
}

uint64_t sub_24EA99298()
{
  v1 = sub_24F91F6B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EA99364@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_24F91F6B8() - 8);
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80));

  return sub_24EA96AA4(a1, v6, v7, v12, a2, v8, v9, v10, v11);
}

uint64_t sub_24EA993F8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_24EA9944C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_24EA99484()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_24EA994DC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EA99528()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EA99570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_24EA995C8()
{
  result = qword_27F226B00;
  if (!qword_27F226B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226A48, &qword_24F97BDA0);
    sub_24EA99654();
    sub_24EA99798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226B00);
  }

  return result;
}

unint64_t sub_24EA99654()
{
  result = qword_27F226B08;
  if (!qword_27F226B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226A40, &qword_24F97BD98);
    sub_24EA996E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226B08);
  }

  return result;
}

unint64_t sub_24EA996E0()
{
  result = qword_27F226B10;
  if (!qword_27F226B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226A38, &qword_24F97BD90);
    sub_24E602068(&qword_27F226B18, &qword_27F226A30, &qword_24F97BD50, &unk_24F9479E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226B10);
  }

  return result;
}

unint64_t sub_24EA99798()
{
  result = qword_27F226B20;
  if (!qword_27F226B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226B20);
  }

  return result;
}

uint64_t sub_24EA998B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24E60169C(a3, v25 - v10, &unk_27F21B570, &qword_24F93B020);
  v12 = sub_24F92B858();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24E601704(v11, &unk_27F21B570, &qword_24F93B020);
  }

  else
  {
    sub_24F92B848();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24F92B778();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24F92B1B8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_24E601704(a3, &unk_27F21B570, &qword_24F93B020);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24E601704(a3, &unk_27F21B570, &qword_24F93B020);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24EA99BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24E60169C(a3, v25 - v10, &unk_27F21B570, &qword_24F93B020);
  v12 = sub_24F92B858();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24E601704(v11, &unk_27F21B570, &qword_24F93B020);
  }

  else
  {
    sub_24F92B848();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24F92B778();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24F92B1B8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_24E601704(a3, &unk_27F21B570, &qword_24F93B020);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24E601704(a3, &unk_27F21B570, &qword_24F93B020);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24EA99ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24E60169C(a3, v25 - v10, &unk_27F21B570, &qword_24F93B020);
  v12 = sub_24F92B858();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24E601704(v11, &unk_27F21B570, &qword_24F93B020);
  }

  else
  {
    sub_24F92B848();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24F92B778();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24F92B1B8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_24E601704(a3, &unk_27F21B570, &qword_24F93B020);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24E601704(a3, &unk_27F21B570, &qword_24F93B020);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24EA9A1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24E60169C(a3, v25 - v10, &unk_27F21B570, &qword_24F93B020);
  v12 = sub_24F92B858();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24E601704(v11, &unk_27F21B570, &qword_24F93B020);
  }

  else
  {
    sub_24F92B848();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24F92B778();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24F92B1B8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226C00, &qword_24F9CEF40);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_24E601704(a3, &unk_27F21B570, &qword_24F93B020);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24E601704(a3, &unk_27F21B570, &qword_24F93B020);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226C00, &qword_24F9CEF40);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24EA9A4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24E60169C(a3, v25 - v10, &unk_27F21B570, &qword_24F93B020);
  v12 = sub_24F92B858();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24E601704(v11, &unk_27F21B570, &qword_24F93B020);
  }

  else
  {
    sub_24F92B848();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24F92B778();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24F92B1B8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226C08, &qword_24F985170);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_24E601704(a3, &unk_27F21B570, &qword_24F93B020);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24E601704(a3, &unk_27F21B570, &qword_24F93B020);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226C08, &qword_24F985170);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24EA9A820()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F39B9B0);
  __swift_project_value_buffer(v4, qword_27F39B9B0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

uint64_t sub_24EA9A978()
{
  result = sub_24F92B0D8();
  qword_27F226B28 = result;
  unk_27F226B30 = v1;
  return result;
}

char *VideoPlayer.init(with:)(uint64_t a1)
{
  v2 = v1;
  v34 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F468, &qword_24F962020);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226B38, &qword_24F97BF38);
  v8 = *(v7 - 8);
  v36 = v7;
  v37 = v8;
  MEMORY[0x28223BE20](v7);
  v35 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEA0, &qword_24F962038);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v14 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer__state;
  LOBYTE(v38) = 0;
  sub_24F923058();
  (*(v11 + 32))(&v2[v14], v13, v10);
  v15 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer__events;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F250980, &qword_24F962040);
  swift_allocObject();
  *&v2[v15] = sub_24F922FC8();
  *&v2[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playerItem] = 0;
  v16 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_videoObserver;
  *&v2[v16] = [objc_allocWithZone(type metadata accessor for VideoObserver()) init];
  v17 = &v2[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playbackChecks];
  *v17 = 0;
  v17[2] = 0;
  v18 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_failure;
  v19 = type metadata accessor for VideoPlaybackFailure(0);
  (*(*(v19 - 8) + 56))(&v2[v18], 1, 1, v19);
  *&v2[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_failureCount] = 0;
  *&v2[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_subscriptions] = MEMORY[0x277D84FA0];
  v2[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying] = 0;
  v2[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldLoopPlayback] = 0;
  v20 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_lastPlaybackTimeGuard;
  *&v2[v20] = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  v21 = &v2[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_lastPlaybackTimeUnsynchronized];
  *v21 = 0;
  *(v21 + 1) = 0;
  *(v21 + 2) = 0;
  v21[24] = 1;
  v22 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_videoUrl;
  v23 = sub_24F91F4A8();
  v33 = v23;
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v2[v22], a1, v23);
  (*(v24 + 56))(&v2[v22], 0, 1, v23);
  v25 = type metadata accessor for VideoPlayer(0);
  v40.receiver = v2;
  v40.super_class = v25;
  v26 = objc_msgSendSuper2(&v40, sel_init);
  [v26 setPreventsDisplaySleepDuringVideoPlayback_];
  [v26 setMuted_];
  [v26 setActionAtItemEnd_];
  v38 = *(*&v26[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_videoObserver] + OBJC_IVAR____TtC12GameStoreKit13VideoObserver__changes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226B90, &unk_24F99BA00);
  sub_24E602068(&qword_27F226B98, &qword_27F226B90, &unk_24F99BA00, MEMORY[0x277CBCE20]);
  v38 = sub_24F9230C8();
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v27 = sub_24F92BEF8();
  v39 = v27;
  v28 = sub_24F92BEB8();
  (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226BA0, &qword_24F97BF40);
  sub_24E602068(&qword_27F226BA8, &qword_27F226BA0, &qword_24F97BF40, MEMORY[0x277CBCD90]);
  sub_24EA9B900();
  v29 = v35;
  sub_24F923118();
  sub_24E601704(v6, &qword_27F21F468, &qword_24F962020);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_24E602068(&qword_27F226BB0, &qword_27F226B38, &qword_24F97BF38, MEMORY[0x277CBCD60]);
  v30 = v36;
  sub_24F923148();

  (*(v37 + 8))(v29, v30);
  swift_beginAccess();
  sub_24F922F58();
  swift_endAccess();

  (*(v24 + 8))(v34, v33);
  return v26;
}

void sub_24EA9B014(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_24EA9F178(v2, v3, v4);
  }
}

void sub_24EA9B088(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a2 = v3;
}

uint64_t sub_24EA9B108(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_24F9230A8();
}

double sub_24EA9B178()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return result;
}

uint64_t sub_24EA9B1F0(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEA0, &qword_24F962038);
  sub_24F923068();
  return swift_endAccess();
}

uint64_t sub_24EA9B268(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FE90, &qword_24F962028);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEA0, &qword_24F962038);
  sub_24F923078();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_24EA9B3EC()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEA0, &qword_24F962038);
  sub_24F923068();
  return swift_endAccess();
}

uint64_t sub_24EA9B460()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F250980, &qword_24F962040);
  sub_24E602068(&qword_27F21FEB8, &unk_27F250980, &qword_24F962040, MEMORY[0x277CBCE20]);
  return sub_24F9230C8();
}

void sub_24EA9B52C(void *a1)
{
  v2 = v1;
  v4 = sub_24F927D88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F927DC8();
  v22 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v2[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playerItem];
  if (!v11)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_6;
  }

  if (!a1 || (sub_24E69A5C4(0, &qword_27F226C10, 0x277CE65B0), v12 = v11, v13 = a1, v14 = sub_24F92C408(), v12, v13, (v14 & 1) == 0))
  {
LABEL_6:
    v15 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
    swift_beginAccess();
    if (v2[v15] == 1)
    {
      sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
      v21 = sub_24F92BEF8();
      v16 = swift_allocObject();
      *(v16 + 16) = v2;
      aBlock[4] = sub_24EAA12A8;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24EAF8248;
      aBlock[3] = &block_descriptor_108;
      v17 = _Block_copy(aBlock);
      v18 = v2;

      sub_24F927DA8();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_24EAA0BB4(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
      sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
      sub_24F92C6A8();
      v19 = v21;
      MEMORY[0x2530518B0](0, v10, v7, v17);
      _Block_release(v17);

      (*(v5 + 8))(v7, v4);
      (*(v22 + 8))(v10, v8);
    }
  }
}

uint64_t type metadata accessor for VideoPlayer(uint64_t a1)
{
  result = qword_27F226BE8;
  if (!qword_27F226BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EA9B900()
{
  result = qword_27F21F498;
  if (!qword_27F21F498)
  {
    sub_24E69A5C4(255, &qword_27F222300, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F498);
  }

  return result;
}

uint64_t sub_24EA9B968()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

void sub_24EA9B9B0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong play];
  }
}

uint64_t sub_24EA9BA0C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEC8, &unk_24FA2B3C0);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v30 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_24F92AAE8();
  v31 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v33 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226BE0, &qword_24F97BFB8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for VideoPlaybackFailure(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_failure;
  swift_beginAccess();
  sub_24E60169C(v1 + v16, v11, &qword_27F226BE0, &qword_24F97BFB8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_24E601704(v11, &qword_27F226BE0, &qword_24F97BFB8);
  }

  sub_24EAA114C(v11, v15);
  if (qword_27F210138 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v7, qword_27F39B9B0);
  v19 = v31;
  (*(v31 + 16))(v33, v18, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93FC20;
  sub_24F9283A8();
  *(&v35 + 1) = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v34);
  sub_24EAA11B0(v15, boxed_opaque_existential_1);
  sub_24F928438();
  sub_24E601704(&v34, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  sub_24E60169C(v1 + OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_videoUrl, v6, &qword_27F228530, &unk_24F93C6E0);
  v21 = sub_24F91F4A8();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v6, 1, v21) == 1)
  {
    sub_24E601704(v6, &qword_27F228530, &unk_24F93C6E0);
    v34 = 0u;
    v35 = 0u;
  }

  else
  {
    *(&v35 + 1) = v21;
    v23 = __swift_allocate_boxed_opaque_existential_1(&v34);
    (*(v22 + 32))(v23, v6, v21);
  }

  sub_24F9283B8();
  sub_24E601704(&v34, &qword_27F2129B0, &unk_24F945320);
  v24 = v33;
  sub_24F92A5A8();

  (*(v19 + 8))(v24, v7);
  v25 = v32;
  sub_24EAA11B0(v15, v32);
  v26 = type metadata accessor for VideoPlayer.Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  sub_24F922FB8();
  result = sub_24E601704(v25, &qword_27F21FEC8, &unk_24FA2B3C0);
  v27 = *(v1 + OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_failureCount);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_failureCount) = v29;
    sub_24EA9C004();
    return sub_24EAA1214(v15);
  }

  return result;
}

double sub_24EA9C004()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEC8, &unk_24FA2B3C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226BE0, &qword_24F97BFB8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_failureCount;
  if ((*&v0[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_failureCount] - 3) >= 0xFFFFFFFFFFFFFFFELL)
  {
    v15 = sub_24F92B858();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
    sub_24F92B7F8();
    v16 = v0;
    v17 = sub_24F92B7E8();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v16;
    sub_24EA998B8(0, 0, v9, &unk_24F97C110, v18);
  }

  else
  {
    v11 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_failure;
    swift_beginAccess();
    sub_24E60169C(&v0[v11], v6, &qword_27F226BE0, &qword_24F97BFB8);
    v12 = type metadata accessor for VideoPlaybackFailure(0);
    LODWORD(v11) = (*(*(v12 - 8) + 48))(v6, 1, v12);
    sub_24E601704(v6, &qword_27F226BE0, &qword_24F97BFB8);
    if (v11 != 1 && *&v0[v10] >= 1)
    {
      v14 = type metadata accessor for VideoPlayer.Event(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v14 - 8) + 56))(v3, 0, 1, v14);
      sub_24F922FB8();
      sub_24E601704(v3, &qword_27F21FEC8, &unk_24FA2B3C0);
    }
  }

  return result;
}

uint64_t sub_24EA9C314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_24F92B7F8();
  v4[4] = sub_24F92B7E8();
  v4[5] = sub_24F92B7E8();
  v6 = sub_24F92B778();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_24EA9C3BC, v6, v5);
}

uint64_t sub_24EA9C3BC()
{
  sub_24EA9EF78();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_24EA9C454;

  return sub_24EA9CDD8();
}

uint64_t sub_24EA9C454()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_24EA9C574, v3, v2);
}

uint64_t sub_24EA9C574()
{

  v1 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EA9C5F8, v1, v0);
}

uint64_t sub_24EA9C5F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EA9C658()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v4 != 4)
  {
    [v0 rate];
    if (v1 > 0.0)
    {
      v2 = [v0 error];
      if (!v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL sub_24EA9C718()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playbackChecks) != 1 || *(v0 + OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playbackChecks + 1) == 0;
  if (!v1 && (*(v0 + OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playbackChecks + 2) & 1) != 0)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v3 - 5 < 0xFFFFFFFD;
}

uint64_t sub_24EA9C7C8()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24EA9C80C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldLoopPlayback;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24EA9C850(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldLoopPlayback;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_24EA9C900()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
  swift_beginAccess();
  v0[v4] = 1;
  if ((sub_24EA9C658() & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    if (v13)
    {
      v5 = *&v0[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playerItem];
      if (v5)
      {
        v6 = v5;
        v7 = [v0 currentItem];
        if (v7)
        {
        }

        else
        {
          [v0 replaceCurrentItemWithPlayerItem_];
        }

        v11 = type metadata accessor for VideoPlayer(0);
        v12.receiver = v0;
        v12.super_class = v11;
        objc_msgSendSuper2(&v12, sel_play);
      }
    }

    else
    {
      v8 = sub_24F92B858();
      (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
      v9 = swift_allocObject();
      v9[2] = 0;
      v9[3] = 0;
      v9[4] = v0;
      v10 = v0;
      sub_24EA998B8(0, 0, v3, &unk_24F97BF98, v9);
    }
  }
}

uint64_t sub_24EA9CAF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E614970;

  return sub_24EA9CDD8();
}

uint64_t sub_24EA9CB88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E6541E4;

  return sub_24EA9CAF4();
}

id sub_24EA9CCE8()
{
  v1 = MEMORY[0x277CC08F0];
  v2 = *MEMORY[0x277CC08F0];
  v3 = *(MEMORY[0x277CC08F0] + 16);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for VideoPlayer(0);
  v5[0] = v2;
  v5[1] = *(v1 + 8);
  v5[2] = v3;
  return objc_msgSendSuper2(&v6, sel_seekToTime_, v5);
}

uint64_t sub_24EA9CDD8()
{
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEC8, &unk_24FA2B3C0);
  v1[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  v1[5] = swift_task_alloc();
  v2 = sub_24F91F4A8();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  sub_24F92B7F8();
  v1[9] = sub_24F92B7E8();
  v4 = sub_24F92B778();
  v1[10] = v4;
  v1[11] = v3;

  return MEMORY[0x2822009F8](sub_24EA9CF3C, v4, v3);
}

uint64_t sub_24EA9CF3C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  sub_24E60169C(*(v0 + 24) + OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_videoUrl, v3, &qword_27F228530, &unk_24F93C6E0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 40);

    sub_24E601704(v4, &qword_27F228530, &unk_24F93C6E0);
LABEL_5:

    v5 = *(v0 + 8);

    return v5();
  }

  (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 40), *(v0 + 48));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (*(v0 + 128))
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));

    goto LABEL_5;
  }

  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 129) = 1;
  v9 = v8;
  sub_24F9230A8();
  v10 = type metadata accessor for VideoPlayer.Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  sub_24F922FB8();
  sub_24E601704(v7, &qword_27F21FEC8, &unk_24FA2B3C0);
  v11 = *&v9[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playerItem];
  if (v11)
  {
    v12 = [v11 asset];
    [v12 cancelLoading];
  }

  return MEMORY[0x2822009F8](sub_24EA9D1F8, 0, 0);
}

uint64_t sub_24EA9D1F8()
{
  v1 = v0[8];
  v2 = swift_task_alloc();
  v0[12] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[13] = v3;
  v4 = sub_24E69A5C4(0, &qword_27F226BD8, 0x277CE6650);
  *v3 = v0;
  v3[1] = sub_24EA9D304;

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000017, 0x800000024FA516F0, sub_24EAA0008, v2, v4);
}

uint64_t sub_24EA9D304()
{

  return MEMORY[0x2822009F8](sub_24EA9D41C, 0, 0);
}

uint64_t sub_24EA9D41C()
{
  v1 = v0[2];
  v0[14] = v1;
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_24EA9D4B8;

  return sub_24EA9D680(v1);
}

uint64_t sub_24EA9D4B8()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_24EA9D5D8, v3, v2);
}

uint64_t sub_24EA9D5D8()
{
  v1 = v0[14];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[7];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24EA9D680(uint64_t a1)
{
  v2[43] = a1;
  v2[44] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226BE0, &qword_24F97BFB8);
  v2[45] = swift_task_alloc();
  v3 = sub_24F92AAE8();
  v2[46] = v3;
  v2[47] = *(v3 - 8);
  v2[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEC8, &unk_24FA2B3C0);
  v2[49] = swift_task_alloc();
  v4 = sub_24F927D88();
  v2[50] = v4;
  v2[51] = *(v4 - 8);
  v2[52] = swift_task_alloc();
  v5 = sub_24F927DC8();
  v2[53] = v5;
  v2[54] = *(v5 - 8);
  v2[55] = swift_task_alloc();
  v6 = sub_24F91F4A8();
  v2[56] = v6;
  v2[57] = *(v6 - 8);
  v2[58] = swift_task_alloc();
  v2[59] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226C18, &unk_24F9B3900);
  v2[60] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = sub_24F92B7F8();
  v2[65] = sub_24F92B7E8();
  v8 = sub_24F92B778();
  v2[66] = v8;
  v2[67] = v7;

  return MEMORY[0x2822009F8](sub_24EA9D98C, v8, v7);
}

uint64_t sub_24EA9D98C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226C20, &qword_24F97C118);
  v1 = sub_24F91FDE8();
  v0[68] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226C28, &qword_24F97C120);
  v2 = sub_24F91FDD8();
  v0[69] = v2;
  v3 = sub_24F92B7E8();
  v0[70] = v3;
  v4 = swift_task_alloc();
  v0[71] = v4;
  *v4 = v0;
  v4[1] = sub_24EA9DAC0;
  v5 = MEMORY[0x277D85700];

  return MEMORY[0x2821FAF08](v0 + 76, v0 + 82, v0 + 2, v1, v2, v0 + 2, v3, v5);
}

uint64_t sub_24EA9DAC0()
{
  v2 = *v1;
  *(*v1 + 576) = v0;

  v3 = *(v2 + 536);
  v4 = *(v2 + 528);
  if (v0)
  {
    v5 = sub_24EA9EC9C;
  }

  else
  {
    v5 = sub_24EA9DC58;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24EA9DC58()
{
  v1 = *(v0 + 504);
  v3 = *(v0 + 472);
  v2 = *(v0 + 480);
  v4 = *(v0 + 448);
  v5 = *(v0 + 456);
  v6 = *(v0 + 352);
  v77 = *(v0 + 656);
  v7 = [*(v0 + 344) URL];
  sub_24F91F428();

  (*(v5 + 56))(v1, 0, 1, v4);
  v8 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_videoUrl;
  v9 = *(v3 + 48);
  sub_24E60169C(v1, v2, &qword_27F228530, &unk_24F93C6E0);
  v75 = v8;
  sub_24E60169C(v6 + v8, v2 + v9, &qword_27F228530, &unk_24F93C6E0);
  v10 = *(v5 + 48);
  if (v10(v2, 1, v4) == 1)
  {
    v11 = *(v0 + 448);
    sub_24E601704(*(v0 + 504), &qword_27F228530, &unk_24F93C6E0);
    if (v10(v2 + v9, 1, v11) == 1)
    {
      sub_24E601704(*(v0 + 480), &qword_27F228530, &unk_24F93C6E0);
      goto LABEL_9;
    }

LABEL_7:
    v17 = *(v0 + 480);
    v18 = &qword_27F226C18;
    v19 = &unk_24F9B3900;
LABEL_26:
    sub_24E601704(v17, v18, v19);
    goto LABEL_27;
  }

  v12 = *(v0 + 448);
  sub_24E60169C(*(v0 + 480), *(v0 + 496), &qword_27F228530, &unk_24F93C6E0);
  if (v10(v2 + v9, 1, v12) == 1)
  {
    v13 = *(v0 + 496);
    v14 = *(v0 + 504);
    v15 = *(v0 + 448);
    v16 = *(v0 + 456);

    sub_24E601704(v14, &qword_27F228530, &unk_24F93C6E0);
    (*(v16 + 8))(v13, v15);
    goto LABEL_7;
  }

  v20 = *(v0 + 496);
  v71 = *(v0 + 504);
  v72 = *(v0 + 480);
  v21 = *(v0 + 456);
  v22 = *(v0 + 464);
  v73 = v6;
  v23 = *(v0 + 448);
  (*(v21 + 32))(v22, v2 + v9, v23);
  sub_24EAA0BB4(&qword_27F226C38, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v24 = sub_24F92AFF8();
  v25 = *(v21 + 8);
  v25(v22, v23);
  sub_24E601704(v71, &qword_27F228530, &unk_24F93C6E0);
  v26 = v23;
  v6 = v73;
  v25(v20, v26);
  sub_24E601704(v72, &qword_27F228530, &unk_24F93C6E0);
  if ((v24 & 1) == 0)
  {

LABEL_27:

    v69 = *(v0 + 8);

    return v69();
  }

LABEL_9:
  if (!v77)
  {

    if (qword_27F210138 != -1)
    {
      swift_once();
    }

    v50 = *(v0 + 488);
    v51 = *(v0 + 448);
    v53 = *(v0 + 376);
    v52 = *(v0 + 384);
    v54 = *(v0 + 368);
    v55 = __swift_project_value_buffer(v54, qword_27F39B9B0);
    (*(v53 + 16))(v52, v55, v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    sub_24E60169C(v6 + v75, v50, &qword_27F228530, &unk_24F93C6E0);
    v56 = v10(v50, 1, v51);
    v57 = *(v0 + 488);
    if (v56 == 1)
    {
      sub_24E601704(*(v0 + 488), &qword_27F228530, &unk_24F93C6E0);
      *(v0 + 224) = 0u;
      *(v0 + 240) = 0u;
    }

    else
    {
      v59 = *(v0 + 448);
      v60 = *(v0 + 456);
      *(v0 + 248) = v59;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 224));
      (*(v60 + 32))(boxed_opaque_existential_1, v57, v59);
    }

    v63 = *(v0 + 376);
    v62 = *(v0 + 384);
    v64 = *(v0 + 360);
    v65 = *(v0 + 368);
    v66 = *(v0 + 352);
    sub_24F928458();
    sub_24E601704(v0 + 224, &qword_27F2129B0, &unk_24F945320);
    sub_24F92A5A8();

    (*(v63 + 8))(v62, v65);
    v67 = type metadata accessor for VideoPlaybackFailure(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v67 - 8) + 56))(v64, 0, 1, v67);
    v68 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_failure;
    swift_beginAccess();
    sub_24EAA0010(v64, v66 + v68);
    swift_endAccess();
    sub_24EA9BA0C();
    v18 = &qword_27F226BE0;
    v19 = &qword_24F97BFB8;
    v17 = v64;
    goto LABEL_26;
  }

  v27 = *(v0 + 352);
  v28 = [objc_allocWithZone(MEMORY[0x277CE65B0]) initWithAsset_];
  *(v0 + 584) = v28;
  [v28 setPreferredForwardBufferDuration_];
  [v28 setAllowProgressiveSwitchUp_];
  [v28 setAllowProgressiveStartup_];
  [v28 setWillNeverSeekBackwardsHint_];
  [v28 setPlaybackLikelyToKeepUpTrigger_];
  v29 = *(v27 + OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_lastPlaybackTimeGuard);
  *(v0 + 592) = v29;
  [v29 lock];
  v30 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_lastPlaybackTimeUnsynchronized;
  *(v0 + 600) = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_lastPlaybackTimeUnsynchronized;
  v31 = (v27 + v30);
  v33 = *v31;
  v32 = v31[1];
  v34 = v31[2];
  LOBYTE(v27) = *(v31 + 24);
  [v29 unlock];
  if (v27)
  {

    v35 = (*(v0 + 352) + OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playbackChecks);
    *v35 = 1;
    if (v35[1] == 1)
    {
      if (v35[2])
      {
        v36 = *(v0 + 352);
        v37 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
        swift_beginAccess();
        if (*(v36 + v37) == 1)
        {
          v38 = *(v0 + 440);
          v39 = *(v0 + 416);
          v76 = *(v0 + 432);
          v78 = *(v0 + 424);
          v40 = *(v0 + 400);
          v41 = *(v0 + 408);
          sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
          v74 = sub_24F92BEF8();
          v42 = swift_allocObject();
          swift_unknownObjectWeakInit();
          *(v0 + 176) = sub_24EAA13FC;
          *(v0 + 184) = v42;
          *(v0 + 144) = MEMORY[0x277D85DD0];
          *(v0 + 152) = 1107296256;
          *(v0 + 160) = sub_24EAF8248;
          *(v0 + 168) = &block_descriptor_114;
          v43 = _Block_copy((v0 + 144));

          sub_24F927DA8();
          *(v0 + 336) = MEMORY[0x277D84F90];
          sub_24EAA0BB4(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
          sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
          sub_24F92C6A8();
          MEMORY[0x2530518B0](0, v38, v39, v43);
          _Block_release(v43);

          (*(v41 + 8))(v39, v40);
          (*(v76 + 8))(v38, v78);
        }
      }
    }

    v44 = *(v0 + 584);
    v45 = *(v0 + 392);
    v46 = *(v0 + 352);
    v47 = *(v46 + OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playerItem);
    *(v46 + OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playerItem) = v44;
    v48 = v44;
    sub_24EA9B52C(v47);

    v49 = type metadata accessor for VideoPlayer.Event(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v49 - 8) + 56))(v45, 0, 1, v49);
    sub_24F922FB8();

    v18 = &qword_27F21FEC8;
    v19 = &unk_24FA2B3C0;
    v17 = v45;
    goto LABEL_26;
  }

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 657;
  *(v0 + 24) = sub_24EA9E78C;
  v58 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226C30, &qword_24F97C128);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_24EA9EF1C;
  *(v0 + 104) = &block_descriptor_117;
  *(v0 + 112) = v58;
  *(v0 + 632) = v33;
  *(v0 + 640) = v32;
  *(v0 + 648) = v34;
  [v28 seekToTime:v0 + 632 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_24EA9E78C()
{
  v1 = *(*v0 + 536);
  v2 = *(*v0 + 528);

  return MEMORY[0x2822009F8](sub_24EA9E894, v2, v1);
}

uint64_t sub_24EA9E894()
{
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[44];

  v4 = v3 + v1;
  [v2 lock];
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
  [v2 unlock];
  v5 = (v0[44] + OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playbackChecks);
  *v5 = 1;
  v6 = v5[1];
  v7 = v5[2];
  if (v6 == 1 && v7 != 0)
  {
    v9 = v0[44];
    v10 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
    swift_beginAccess();
    if (*(v9 + v10) == 1)
    {
      v11 = v0[55];
      v12 = v0[52];
      v26 = v0[54];
      v27 = v0[53];
      v13 = v0[50];
      v14 = v0[51];
      sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
      v25 = sub_24F92BEF8();
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v0[22] = sub_24EAA13FC;
      v0[23] = v15;
      v0[18] = MEMORY[0x277D85DD0];
      v0[19] = 1107296256;
      v0[20] = sub_24EAF8248;
      v0[21] = &block_descriptor_114;
      v16 = _Block_copy(v0 + 18);

      sub_24F927DA8();
      v0[42] = MEMORY[0x277D84F90];
      sub_24EAA0BB4(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
      sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
      sub_24F92C6A8();
      MEMORY[0x2530518B0](0, v11, v12, v16);
      _Block_release(v16);

      (*(v14 + 8))(v12, v13);
      (*(v26 + 8))(v11, v27);
    }
  }

  v17 = v0[73];
  v18 = v0[49];
  v19 = v0[44];
  v20 = *(v19 + OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playerItem);
  *(v19 + OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playerItem) = v17;
  v21 = v17;
  sub_24EA9B52C(v20);

  v22 = type metadata accessor for VideoPlayer.Event(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v22 - 8) + 56))(v18, 0, 1, v22);
  sub_24F922FB8();

  sub_24E601704(v18, &qword_27F21FEC8, &unk_24FA2B3C0);

  v23 = v0[1];

  return v23();
}

uint64_t sub_24EA9EC9C()
{

  if (qword_27F210138 != -1)
  {
    swift_once();
  }

  v1 = v0[72];
  __swift_project_value_buffer(v0[46], qword_27F39B9B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v2 = v0[32];
  v3 = v0[33];
  v0[27] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 24);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v2, v3);
  sub_24F928458();
  sub_24E601704((v0 + 24), &qword_27F2129B0, &unk_24F945320);
  sub_24F92A5A8();

  v5 = v0[1];

  return v5();
}

uint64_t sub_24EA9EF1C(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x282200948](v3);
}

uint64_t sub_24EA9EF78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226BE0, &qword_24F97BFB8);
  *&v2 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v4 = &v18[-1] - v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playerItem;
  v6 = *&v0[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playerItem];
  if (v6)
  {
    v7 = [v6 asset];
  }

  else
  {
    v7 = 0;
  }

  [v7 cancelLoading];

  [v0 pause];
  v8 = MEMORY[0x277CC08F0];
  v9 = *MEMORY[0x277CC08F0];
  v10 = *(MEMORY[0x277CC08F0] + 16);
  v11 = type metadata accessor for VideoPlayer(0);
  v19.receiver = v0;
  v19.super_class = v11;
  v18[0] = v9;
  v18[1] = *(v8 + 8);
  v18[2] = v10;
  objc_msgSendSuper2(&v19, sel_seekToTime_, v18);
  v12 = *&v0[v5];
  *&v0[v5] = 0;
  sub_24EA9B52C(v12);

  v13 = type metadata accessor for VideoPlaybackFailure(0);
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_failure;
  swift_beginAccess();
  sub_24EAA0010(v4, &v0[v14]);
  swift_endAccess();
  sub_24EA9BA0C();
  sub_24E601704(v4, &qword_27F226BE0, &qword_24F97BFB8);
  *&v0[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_failureCount] = 0;
  sub_24EA9C004();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v18[0]) = 0;
  v15 = v0;
  return sub_24F9230A8();
}

void sub_24EA9F178(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEC8, &unk_24FA2B3C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v55 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226BE0, &qword_24F97BFB8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v55 - v11);
  v13 = sub_24F927D88();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F927DC8();
  MEMORY[0x28223BE20](v17);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 <= 1u)
  {
    v57 = v14;
    if (a3)
    {
      v33 = &v3[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playbackChecks];
      v33[1] = a1 & 1;
      if (*v33 != 1)
      {
        return;
      }

      if ((a1 & 1) == 0)
      {
        return;
      }

      if ((v33[2] & 1) == 0)
      {
        return;
      }

      v25 = v19;
      v26 = v18;
      v34 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
      swift_beginAccess();
      if (v3[v34] != 1)
      {
        return;
      }

      sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
      v56 = sub_24F92BEF8();
      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v62 = sub_24EAA0B94;
      v63 = v35;
      aBlock = MEMORY[0x277D85DD0];
      v59 = 1107296256;
      v29 = &block_descriptor_43;
LABEL_24:
      v60 = sub_24EAF8248;
      v61 = v29;
      v36 = _Block_copy(&aBlock);

      sub_24F927DA8();
      aBlock = MEMORY[0x277D84F90];
      sub_24EAA0BB4(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
      sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
      sub_24F92C6A8();
      v37 = v56;
      MEMORY[0x2530518B0](0, v21, v16, v36);
      _Block_release(v36);

      (*(v57 + 8))(v16, v13);
      (*(v25 + 8))(v21, v26);
      return;
    }

    if (a1 != 2)
    {
      if (a1 != 1)
      {
        return;
      }

      v24 = &v3[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playbackChecks];
      v24[2] = 1;
      if (*v24 != 1)
      {
        return;
      }

      if (!v24[1])
      {
        return;
      }

      v25 = v19;
      v26 = v18;
      v27 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
      swift_beginAccess();
      if (v3[v27] != 1)
      {
        return;
      }

      sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
      v56 = sub_24F92BEF8();
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v62 = sub_24EAA13FC;
      v63 = v28;
      aBlock = MEMORY[0x277D85DD0];
      v59 = 1107296256;
      v29 = &block_descriptor_77;
      goto LABEL_24;
    }

    if (!a2)
    {
      goto LABEL_42;
    }

    v43 = a2;
    v44 = [v43 domain];
    v45 = sub_24F92B0D8();
    v47 = v46;

    if (qword_27F210140 != -1)
    {
      swift_once();
    }

    if (v45 == qword_27F226B28 && v47 == unk_27F226B30)
    {
    }

    else
    {
      v49 = sub_24F92CE08();

      if ((v49 & 1) == 0)
      {
LABEL_41:
        sub_24EAA0BFC(2, a2, 0);
LABEL_42:
        v53 = type metadata accessor for VideoPlaybackFailure(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v53 - 8) + 56))(v12, 0, 1, v53);
        v54 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_failure;
        swift_beginAccess();
        sub_24EAA0010(v12, &v3[v54]);
        swift_endAccess();
        sub_24EA9BA0C();
        goto LABEL_43;
      }
    }

    if ([v43 code] == -11839)
    {
      *v12 = a2;
      v50 = type metadata accessor for VideoPlaybackFailure(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v50 - 8) + 56))(v12, 0, 1, v50);
      v51 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_failure;
      swift_beginAccess();
      v52 = v43;
      sub_24EAA0010(v12, &v3[v51]);
      swift_endAccess();
      sub_24EA9BA0C();
      sub_24EAA0BFC(2, a2, 0);
LABEL_43:
      v40 = &qword_27F226BE0;
      v41 = &qword_24F97BFB8;
      v42 = v12;
      goto LABEL_28;
    }

    goto LABEL_41;
  }

  if (a3 == 2)
  {
    *v9 = a1;
    v30 = type metadata accessor for VideoPlayer.Event(0);
LABEL_27:
    swift_storeEnumTagMultiPayload();
    (*(*(v30 - 8) + 56))(v9, 0, 1, v30);
    sub_24F922FB8();
    v40 = &qword_27F21FEC8;
    v41 = &unk_24FA2B3C0;
    v42 = v9;
LABEL_28:
    sub_24E601704(v42, v40, v41);
    return;
  }

  if (a3 != 3)
  {
    v31 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldLoopPlayback;
    swift_beginAccess();
    if (v3[v31] == 1)
    {
      v32 = *(MEMORY[0x277CC08F0] + 16);
      v64 = *MEMORY[0x277CC08F0];
      v65 = *(MEMORY[0x277CC08F0] + 8);
      v66 = v32;
      [v3 seekToTime_];
      [v3 play];
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v64) = 4;
      v38 = v3;
      sub_24F9230A8();
      [v38 pause];
      v39 = *(MEMORY[0x277CC08F0] + 16);
      v64 = *MEMORY[0x277CC08F0];
      v65 = *(MEMORY[0x277CC08F0] + 8);
      v66 = v39;
      [v38 seekToTime_];
    }

    v30 = type metadata accessor for VideoPlayer.Event(0);
    goto LABEL_27;
  }

  if (*&v3[OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_playerItem])
  {
    if (*&a1 == 0.0)
    {
      v22 = OBJC_IVAR____TtC12GameStoreKit11VideoPlayer_shouldBePlaying;
      swift_beginAccess();
      if ((v3[v22] & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v23 = 2;
        goto LABEL_37;
      }
    }

    if (*&a1 > 0.0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v23 = 3;
LABEL_37:
      LOBYTE(v64) = v23;
      v48 = v3;
      sub_24F9230A8();
    }
  }
}

id VideoPlayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VideoPlayer.__allocating_init(url:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_24F91F3B8();
  v5 = [v3 initWithURL_];

  v6 = sub_24F91F4A8();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v5;
}

id VideoPlayer.__allocating_init(playerItem:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithPlayerItem_];

  return v3;
}

id VideoPlayer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoPlayer(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24EA9FEE0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for VideoPlayer(0);
  result = sub_24F922FA8();
  *a2 = result;
  return result;
}

uint64_t sub_24EA9FF20()
{
  v0 = objc_allocWithZone(MEMORY[0x277CE6650]);
  v1 = sub_24F91F3B8();
  [v0 initWithURL:v1 options:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226C40, &qword_24F97C130);
  return sub_24F92B798();
}

id sub_24EA9FFC0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 rate];
  *a2 = v4;
  return result;
}

uint64_t sub_24EAA0010(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226BE0, &qword_24F97BFB8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t keypath_set_19Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

void sub_24EAA0110(uint64_t a1)
{
  sub_24EAA0684();
  if (v1 <= 0x3F)
  {
    sub_24EAA06D4(319, &qword_27F218378, MEMORY[0x277CC9260]);
    if (v2 <= 0x3F)
    {
      sub_24EAA06D4(319, &qword_27F226BF8, type metadata accessor for VideoPlaybackFailure);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of VideoPlayer.startPreloading()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1F8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E6541E4;

  return v5();
}

void sub_24EAA0684()
{
  if (!qword_27F21FE88)
  {
    v0 = sub_24F9230B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F21FE88);
    }
  }
}

void sub_24EAA06D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24EAA0728(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_24EAA1410;

  return v5(v2 + 16);
}

uint64_t sub_24EAA081C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E6541E4;

  return sub_24EAA0728(a1, v4);
}

uint64_t sub_24EAA08D4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_24EAA09C8;

  return v5(v2 + 32);
}

uint64_t sub_24EAA09C8()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_24EAA0ADC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E6541E4;

  return sub_24EAA08D4(a1, v4);
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EAA0BB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24EAA0BFC(uint64_t a1, void *a2, char a3)
{
  if (!a3)
  {
  }
}

uint64_t sub_24EAA0C0C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_24EAA0D00;

  return v5(v2 + 16);
}

uint64_t sub_24EAA0D00()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_24EAA0E30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E6541E4;

  return sub_24EAA0C0C(a1, v4);
}

uint64_t sub_24EAA0EE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E614970;

  return sub_24EAA0C0C(a1, v4);
}

uint64_t sub_24EAA0FA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E6541E4;

  return sub_24EAA08D4(a1, v4);
}

uint64_t objectdestroy_4Tm_2()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EAA1098(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24EA9C314(a1, v4, v5, v6);
}

uint64_t sub_24EAA114C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoPlaybackFailure(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EAA11B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoPlaybackFailure(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EAA1214(uint64_t a1)
{
  v2 = type metadata accessor for VideoPlaybackFailure(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EAA1270()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_115(uint64_t a1, uint64_t a2)
{
  return sub_24E643A9C(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EAA12DC()
{

  return swift_deallocObject();
}

uint64_t sub_24EAA1314(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E6541E4;

  return sub_24E695D48(a1, v4);
}

Swift::Void __swiftcall PageGridCaching.invalidateCache()()
{
  v1 = (*(v0 + 8))();
  swift_beginAccess();
  v2 = MEMORY[0x277D84F98];
  *(v1 + 16) = MEMORY[0x277D84F98];

  swift_beginAccess();
  *(v1 + 24) = v2;
}

uint64_t PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>, double a14@<D6>, double a15@<D7>, double a16, double a17)
{
  v121 = a7;
  v129 = a5;
  v104 = a4;
  v125 = a14;
  v126 = a15;
  v124 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A690, &qword_24F982880);
  MEMORY[0x28223BE20](v26 - 8);
  v106 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v108 = &v102 - v29;
  MEMORY[0x28223BE20](v30);
  v123 = &v102 - v31;
  MEMORY[0x28223BE20](v32);
  v122 = &v102 - v33;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  v127 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v128 = &v102 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  MEMORY[0x28223BE20](v35);
  v105 = &v102 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v107 = &v102 - v38;
  MEMORY[0x28223BE20](v39);
  v103 = &v102 - v40;
  MEMORY[0x28223BE20](v41);
  v112 = &v102 - v42;
  MEMORY[0x28223BE20](v43);
  v110 = &v102 - v44;
  MEMORY[0x28223BE20](v45);
  v130 = &v102 - v46;
  MEMORY[0x28223BE20](v47);
  v49 = &v102 - v48;
  MEMORY[0x28223BE20](v50);
  v52 = &v102 - v51;
  MEMORY[0x28223BE20](v53);
  v55 = &v102 - v54;
  MEMORY[0x28223BE20](v56);
  v58 = &v102 - v57;
  sub_24E60169C(a2, &v102 - v57, &unk_27F23A690, &qword_24F982880);
  sub_24E60169C(a3, &v58[*(v35 + 48)], &unk_27F23A690, &qword_24F982880);
  v59 = a6;
  v60 = *(a6 + 8);
  v61 = v120;
  v62 = v129;
  v116 = v60(v129, v59);
  v118 = v58;
  sub_24E60169C(v58, v55, &unk_27F23A680, &unk_24F981ED0);
  v63 = *(v35 + 48);
  v102 = sub_24EAA21B0(v61, v62, v59);
  v115 = v64;
  sub_24E60169C(v55, v52, &unk_27F23A690, &qword_24F982880);
  v65 = *(v35 + 48);
  v120 = v55;
  v117 = v63;
  sub_24E60169C(&v55[v63], &v52[v65], &unk_27F23A690, &qword_24F982880);
  v66 = v109;
  (*(v127 + 16))(v128, v124, v109);
  v119 = v52;
  sub_24E60169C(v52, v49, &unk_27F23A680, &unk_24F981ED0);
  v67 = *(v35 + 48);
  v68 = v130;
  sub_24EAA34E0(v49, v130);
  sub_24EAA34E0(&v49[v67], v68 + *(v35 + 48));
  swift_getKeyPath();
  sub_24F928A48();

  v114 = v132[0];
  swift_getKeyPath();
  sub_24F928A48();

  v113 = v132[0];
  swift_getKeyPath();
  sub_24F928A48();

  v111 = v132[0];
  swift_getKeyPath();
  sub_24F928A48();

  *&v132[21] = v131[1];
  *&v132[37] = v131[2];
  *&v132[53] = v131[3];
  *&v132[69] = *&v131[4];
  *&v132[5] = v131[0];
  v69 = v68;
  v70 = v122;
  v71 = v110;
  sub_24E60169C(v69, v110, &unk_27F23A680, &unk_24F981ED0);
  v129 = v35;
  v72 = *(v35 + 48);
  v73 = v127;
  v74 = v71;
  sub_24EAA34E0(v71, v70);
  v75 = *(v73 + 48);
  if (v75(v70, 1, v66) == 1)
  {
    sub_24E601704(v71 + v72, &unk_27F23A690, &qword_24F982880);
    sub_24E601704(v70, &unk_27F23A690, &qword_24F982880);
    v76 = v123;
    v77 = v130;
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();

    v78 = LOBYTE(v131[0]);
    (*(v73 + 8))(v70, v66);
    sub_24E601704(v74 + v72, &unk_27F23A690, &qword_24F982880);
    LODWORD(v122) = v78;
    v79 = v78 == 104;
    v76 = v123;
    v77 = v130;
    if (!v79)
    {
      goto LABEL_9;
    }
  }

  v80 = v105;
  sub_24E60169C(v77, v105, &unk_27F23A680, &unk_24F981ED0);
  v81 = v80 + *(v129 + 48);
  v82 = v80;
  v83 = v106;
  sub_24EAA34E0(v82, v106);
  if (v75(v83, 1, v66) == 1)
  {
    sub_24E601704(v81, &unk_27F23A690, &qword_24F982880);
    LODWORD(v122) = 104;
    v81 = v83;
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();
    v77 = v130;
    v76 = v123;

    LODWORD(v122) = LOBYTE(v131[0]);
    (*(v73 + 8))(v83, v66);
  }

  sub_24E601704(v81, &unk_27F23A690, &qword_24F982880);
LABEL_9:
  v84 = v112;
  sub_24E60169C(v77, v112, &unk_27F23A680, &unk_24F981ED0);
  sub_24EAA34E0(v84 + *(v129 + 48), v76);
  if (v75(v76, 1, v66) == 1)
  {
    sub_24E601704(v84, &unk_27F23A690, &qword_24F982880);
    sub_24E601704(v76, &unk_27F23A690, &qword_24F982880);
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();

    v85 = LOBYTE(v131[0]);
    v86 = v76;
    v87 = *(v73 + 8);
    v87(v86, v66);
    sub_24E601704(v84, &unk_27F23A690, &qword_24F982880);
    if (v85 != 104)
    {
      sub_24E601704(v130, &unk_27F23A680, &unk_24F981ED0);
      v87(v128, v66);
      goto LABEL_16;
    }
  }

  v88 = v130;
  v89 = v107;
  sub_24E60169C(v130, v107, &unk_27F23A680, &unk_24F981ED0);
  v90 = v108;
  sub_24EAA34E0(v89 + *(v129 + 48), v108);
  if (v75(v90, 1, v66) == 1)
  {
    sub_24E601704(v88, &unk_27F23A680, &unk_24F981ED0);
    (*(v73 + 8))(v128, v66);
    sub_24E601704(v89, &unk_27F23A690, &qword_24F982880);
    sub_24E601704(v90, &unk_27F23A690, &qword_24F982880);
    LOBYTE(v85) = 104;
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();

    sub_24E601704(v88, &unk_27F23A680, &unk_24F981ED0);
    v91 = *(v73 + 8);
    v91(v128, v66);
    LOBYTE(v85) = v131[0];
    v91(v90, v66);
    sub_24E601704(v89, &unk_27F23A690, &qword_24F982880);
  }

LABEL_16:
  v135 = *&v132[16];
  v136 = *&v132[32];
  *v137 = *&v132[48];
  *&v137[13] = *&v132[61];
  v133[0] = v114;
  v133[1] = v113;
  v133[2] = v111;
  v134 = *v132;
  v138 = v122;
  v139 = v85;
  v141 = WORD2(v131[0]);
  v140 = v131[0];
  v142 = a8;
  v143 = a9;
  v144 = a10;
  v145 = a11;
  v146 = a12;
  v147 = a13;
  v148 = v125;
  v149 = v126;
  v150 = a16;
  v151 = a17;
  v92 = v116;
  swift_beginAccess();
  v93 = *(v92 + 16);
  if (!*(v93 + 16))
  {
LABEL_20:
    v96 = v119;
    v97 = v103;
    sub_24E60169C(v119, v103, &unk_27F23A680, &unk_24F981ED0);
    v98 = *(v129 + 48);
    (v102)(v131, v124, v97, v97 + v98, v104, a8, a9, a10, a11, a12, a13, v125, v126, a16, a17);
    sub_24E601704(v97 + v98, &unk_27F23A690, &qword_24F982880);
    sub_24E601704(v97, &unk_27F23A690, &qword_24F982880);
    memcpy(v132, v131, sizeof(v132));
    swift_beginAccess();
    sub_24E8B9768(v132, v131);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v131[0] = *(v92 + 16);
    *(v92 + 16) = 0x8000000000000000;
    sub_24E81E840(v132, v133, isUniquelyReferenced_nonNull_native);
    sub_24E772830(v133);
    *(v92 + 16) = *&v131[0];
    swift_endAccess();

    sub_24E601704(v96, &unk_27F23A680, &unk_24F981ED0);
    sub_24E601704(v118, &unk_27F23A680, &unk_24F981ED0);
    goto LABEL_21;
  }

  v94 = sub_24E76E2DC(v133);
  if ((v95 & 1) == 0)
  {

    goto LABEL_20;
  }

  memcpy(v132, (*(v93 + 56) + 392 * v94), sizeof(v132));
  sub_24E8B9768(v132, v131);
  sub_24E772830(v133);

  sub_24E601704(v119, &unk_27F23A680, &unk_24F981ED0);
  sub_24E601704(v118, &unk_27F23A680, &unk_24F981ED0);

LABEL_21:
  memcpy(v121, v132, 0x188uLL);
  v100 = v120;
  sub_24E601704(&v120[v117], &unk_27F23A690, &qword_24F982880);
  return sub_24E601704(v100, &unk_27F23A690, &qword_24F982880);
}

uint64_t (*sub_24EAA21B0(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return sub_24EAA3654;
}

uint64_t sub_24EAA22D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17)
{
  v39 = a5;
  v40 = a6;
  v38 = a4;
  v36 = a14;
  v37 = a15;
  v35 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  v27 = v26 - 8;
  MEMORY[0x28223BE20](v26);
  v29 = &v35 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v35 - v31;
  sub_24E60169C(a2, &v35 - v31, &unk_27F23A690, &qword_24F982880);
  sub_24E60169C(a3, &v32[*(v27 + 56)], &unk_27F23A690, &qword_24F982880);
  sub_24E60169C(v32, v29, &unk_27F23A680, &unk_24F981ED0);
  v33 = *(v27 + 56);
  (*(a7 + 24))(v35, v29, &v29[v33], v38, v40, a7, a8, a9, a10, a11, a12, a13, v36, v37, a16, a17);
  sub_24E601704(v32, &unk_27F23A680, &unk_24F981ED0);
  sub_24E601704(&v29[v33], &unk_27F23A690, &qword_24F982880);
  return sub_24E601704(v29, &unk_27F23A690, &qword_24F982880);
}

uint64_t PageGridCaching.supplementaryPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>, double a14@<D6>, double a15@<D7>, double a16, double a17)
{
  v121 = a7;
  v129 = a5;
  v104 = a4;
  v125 = a14;
  v126 = a15;
  v124 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A690, &qword_24F982880);
  MEMORY[0x28223BE20](v26 - 8);
  v106 = &v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v108 = &v102 - v29;
  MEMORY[0x28223BE20](v30);
  v123 = &v102 - v31;
  MEMORY[0x28223BE20](v32);
  v122 = &v102 - v33;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237E00, &qword_24F93B900);
  v127 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v128 = &v102 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  MEMORY[0x28223BE20](v35);
  v105 = &v102 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v107 = &v102 - v38;
  MEMORY[0x28223BE20](v39);
  v103 = &v102 - v40;
  MEMORY[0x28223BE20](v41);
  v112 = &v102 - v42;
  MEMORY[0x28223BE20](v43);
  v110 = &v102 - v44;
  MEMORY[0x28223BE20](v45);
  v130 = &v102 - v46;
  MEMORY[0x28223BE20](v47);
  v49 = &v102 - v48;
  MEMORY[0x28223BE20](v50);
  v52 = &v102 - v51;
  MEMORY[0x28223BE20](v53);
  v55 = &v102 - v54;
  MEMORY[0x28223BE20](v56);
  v58 = &v102 - v57;
  sub_24E60169C(a2, &v102 - v57, &unk_27F23A690, &qword_24F982880);
  sub_24E60169C(a3, &v58[*(v35 + 48)], &unk_27F23A690, &qword_24F982880);
  v59 = a6;
  v60 = *(a6 + 8);
  v61 = v120;
  v62 = v129;
  v116 = v60(v129, v59);
  v118 = v58;
  sub_24E60169C(v58, v55, &unk_27F23A680, &unk_24F981ED0);
  v63 = *(v35 + 48);
  v102 = sub_24EAA31C8(v61, v62, v59);
  v115 = v64;
  sub_24E60169C(v55, v52, &unk_27F23A690, &qword_24F982880);
  v65 = *(v35 + 48);
  v120 = v55;
  v117 = v63;
  sub_24E60169C(&v55[v63], &v52[v65], &unk_27F23A690, &qword_24F982880);
  v66 = v109;
  (*(v127 + 16))(v128, v124, v109);
  v119 = v52;
  sub_24E60169C(v52, v49, &unk_27F23A680, &unk_24F981ED0);
  v67 = *(v35 + 48);
  v68 = v130;
  sub_24EAA34E0(v49, v130);
  sub_24EAA34E0(&v49[v67], v68 + *(v35 + 48));
  swift_getKeyPath();
  sub_24F928A48();

  v114 = v132[0];
  swift_getKeyPath();
  sub_24F928A48();

  v113 = v132[0];
  swift_getKeyPath();
  sub_24F928A48();

  v111 = v132[0];
  swift_getKeyPath();
  sub_24F928A48();

  *&v132[21] = v131[1];
  *&v132[37] = v131[2];
  *&v132[53] = v131[3];
  *&v132[69] = *&v131[4];
  *&v132[5] = v131[0];
  v69 = v68;
  v70 = v122;
  v71 = v110;
  sub_24E60169C(v69, v110, &unk_27F23A680, &unk_24F981ED0);
  v129 = v35;
  v72 = *(v35 + 48);
  v73 = v127;
  v74 = v71;
  sub_24EAA34E0(v71, v70);
  v75 = *(v73 + 48);
  if (v75(v70, 1, v66) == 1)
  {
    sub_24E601704(v71 + v72, &unk_27F23A690, &qword_24F982880);
    sub_24E601704(v70, &unk_27F23A690, &qword_24F982880);
    v76 = v123;
    v77 = v130;
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();

    v78 = LOBYTE(v131[0]);
    (*(v73 + 8))(v70, v66);
    sub_24E601704(v74 + v72, &unk_27F23A690, &qword_24F982880);
    LODWORD(v122) = v78;
    v79 = v78 == 104;
    v76 = v123;
    v77 = v130;
    if (!v79)
    {
      goto LABEL_9;
    }
  }

  v80 = v105;
  sub_24E60169C(v77, v105, &unk_27F23A680, &unk_24F981ED0);
  v81 = v80 + *(v129 + 48);
  v82 = v80;
  v83 = v106;
  sub_24EAA34E0(v82, v106);
  if (v75(v83, 1, v66) == 1)
  {
    sub_24E601704(v81, &unk_27F23A690, &qword_24F982880);
    LODWORD(v122) = 104;
    v81 = v83;
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();
    v77 = v130;
    v76 = v123;

    LODWORD(v122) = LOBYTE(v131[0]);
    (*(v73 + 8))(v83, v66);
  }

  sub_24E601704(v81, &unk_27F23A690, &qword_24F982880);
LABEL_9:
  v84 = v112;
  sub_24E60169C(v77, v112, &unk_27F23A680, &unk_24F981ED0);
  sub_24EAA34E0(v84 + *(v129 + 48), v76);
  if (v75(v76, 1, v66) == 1)
  {
    sub_24E601704(v84, &unk_27F23A690, &qword_24F982880);
    sub_24E601704(v76, &unk_27F23A690, &qword_24F982880);
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();

    v85 = LOBYTE(v131[0]);
    v86 = v76;
    v87 = *(v73 + 8);
    v87(v86, v66);
    sub_24E601704(v84, &unk_27F23A690, &qword_24F982880);
    if (v85 != 104)
    {
      sub_24E601704(v130, &unk_27F23A680, &unk_24F981ED0);
      v87(v128, v66);
      goto LABEL_16;
    }
  }

  v88 = v130;
  v89 = v107;
  sub_24E60169C(v130, v107, &unk_27F23A680, &unk_24F981ED0);
  v90 = v108;
  sub_24EAA34E0(v89 + *(v129 + 48), v108);
  if (v75(v90, 1, v66) == 1)
  {
    sub_24E601704(v88, &unk_27F23A680, &unk_24F981ED0);
    (*(v73 + 8))(v128, v66);
    sub_24E601704(v89, &unk_27F23A690, &qword_24F982880);
    sub_24E601704(v90, &unk_27F23A690, &qword_24F982880);
    LOBYTE(v85) = 104;
  }

  else
  {
    swift_getKeyPath();
    sub_24F928A48();

    sub_24E601704(v88, &unk_27F23A680, &unk_24F981ED0);
    v91 = *(v73 + 8);
    v91(v128, v66);
    LOBYTE(v85) = v131[0];
    v91(v90, v66);
    sub_24E601704(v89, &unk_27F23A690, &qword_24F982880);
  }

LABEL_16:
  v135 = *&v132[16];
  v136 = *&v132[32];
  *v137 = *&v132[48];
  *&v137[13] = *&v132[61];
  v133[0] = v114;
  v133[1] = v113;
  v133[2] = v111;
  v134 = *v132;
  v138 = v122;
  v139 = v85;
  v141 = WORD2(v131[0]);
  v140 = v131[0];
  v142 = a8;
  v143 = a9;
  v144 = a10;
  v145 = a11;
  v146 = a12;
  v147 = a13;
  v148 = v125;
  v149 = v126;
  v150 = a16;
  v151 = a17;
  v92 = v116;
  swift_beginAccess();
  v93 = *(v92 + 24);
  if (!*(v93 + 16))
  {
LABEL_20:
    v96 = v119;
    v97 = v103;
    sub_24E60169C(v119, v103, &unk_27F23A680, &unk_24F981ED0);
    v98 = *(v129 + 48);
    (v102)(v131, v124, v97, v97 + v98, v104, a8, a9, a10, a11, a12, a13, v125, v126, a16, a17);
    sub_24E601704(v97 + v98, &unk_27F23A690, &qword_24F982880);
    sub_24E601704(v97, &unk_27F23A690, &qword_24F982880);
    memcpy(v132, v131, sizeof(v132));
    swift_beginAccess();
    sub_24E8B9768(v132, v131);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v131[0] = *(v92 + 24);
    *(v92 + 24) = 0x8000000000000000;
    sub_24E81E840(v132, v133, isUniquelyReferenced_nonNull_native);
    sub_24E772830(v133);
    *(v92 + 24) = *&v131[0];
    swift_endAccess();

    sub_24E601704(v96, &unk_27F23A680, &unk_24F981ED0);
    sub_24E601704(v118, &unk_27F23A680, &unk_24F981ED0);
    goto LABEL_21;
  }

  v94 = sub_24E76E2DC(v133);
  if ((v95 & 1) == 0)
  {

    goto LABEL_20;
  }

  memcpy(v132, (*(v93 + 56) + 392 * v94), sizeof(v132));
  sub_24E8B9768(v132, v131);
  sub_24E772830(v133);

  sub_24E601704(v119, &unk_27F23A680, &unk_24F981ED0);
  sub_24E601704(v118, &unk_27F23A680, &unk_24F981ED0);

LABEL_21:
  memcpy(v121, v132, 0x188uLL);
  v100 = v120;
  sub_24E601704(&v120[v117], &unk_27F23A690, &qword_24F982880);
  return sub_24E601704(v100, &unk_27F23A690, &qword_24F982880);
}

uint64_t (*sub_24EAA31C8(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v7);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v8, a2);
  return sub_24EAA35B4;
}

uint64_t sub_24EAA32E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17)
{
  v39 = a5;
  v40 = a6;
  v38 = a4;
  v36 = a14;
  v37 = a15;
  v35 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A680, &unk_24F981ED0);
  v27 = v26 - 8;
  MEMORY[0x28223BE20](v26);
  v29 = &v35 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v35 - v31;
  sub_24E60169C(a2, &v35 - v31, &unk_27F23A690, &qword_24F982880);
  sub_24E60169C(a3, &v32[*(v27 + 56)], &unk_27F23A690, &qword_24F982880);
  sub_24E60169C(v32, v29, &unk_27F23A680, &unk_24F981ED0);
  v33 = *(v27 + 56);
  (*(a7 + 32))(v35, v29, &v29[v33], v38, v40, a7, a8, a9, a10, a11, a12, a13, v36, v37, a16, a17);
  sub_24E601704(v32, &unk_27F23A680, &unk_24F981ED0);
  sub_24E601704(&v29[v33], &unk_27F23A690, &qword_24F982880);
  return sub_24E601704(v29, &unk_27F23A690, &qword_24F982880);
}

uint64_t sub_24EAA34E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A690, &qword_24F982880);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_23()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t TrendingSearches.__allocating_init(title:maxNumberOfSearches:searches:pageMetrics:pageRenderEvent:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 2) = a1;
  *(v14 + 3) = a2;
  v15 = OBJC_IVAR____TtC12GameStoreKit16TrendingSearches_pageMetrics;
  v16 = sub_24F928818();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v14[v15], a6, v16);
  *&v14[OBJC_IVAR____TtC12GameStoreKit16TrendingSearches_pageRenderEvent] = a7;
  if (a4)
  {
    goto LABEL_26;
  }

  if (!(a5 >> 62))
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      if (*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a3)
      {
        a4 = a3;
      }

      else
      {
        a4 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

LABEL_7:
      if ((a5 & 0xC000000000000001) != 0 && a4)
      {
        type metadata accessor for SearchAction(0);

        v18 = 0;
        do
        {
          v19 = v18 + 1;
          sub_24F92C8C8();
          v18 = v19;
        }

        while (a4 != v19);
      }

      else
      {
      }

      if (a5 >> 62)
      {
        a3 = sub_24F92CB18();
        v20 = v21;
        v15 = v22;
        a4 = v23;

        if (a4)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v15 = 0;
        a3 = a5 & 0xFFFFFFFFFFFFFF8;
        v20 = (a5 & 0xFFFFFFFFFFFFFF8) + 32;
        a4 = (2 * a4) | 1;
        if (a4)
        {
LABEL_18:
          v29 = v20;
          sub_24F92CEF8();
          swift_unknownObjectRetain_n();
          v25 = swift_dynamicCastClass();
          if (!v25)
          {
            swift_unknownObjectRelease();
            v25 = MEMORY[0x277D84F90];
          }

          v26 = *(v25 + 16);

          if (!__OFSUB__(a4 >> 1, v15))
          {
            if (v26 == (a4 >> 1) - v15)
            {
              a5 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              if (a5)
              {
LABEL_25:

LABEL_26:
                (*(v17 + 8))(a6, v16);
                *(v14 + 4) = a5;
                return v14;
              }

              a5 = MEMORY[0x277D84F90];
LABEL_24:
              swift_unknownObjectRelease();
              goto LABEL_25;
            }

            goto LABEL_39;
          }

LABEL_38:
          __break(1u);
LABEL_39:
          swift_unknownObjectRelease_n();
          v20 = v29;
        }
      }

      sub_24E6B878C(a3, v20, v15, a4);
      a5 = v24;
      goto LABEL_24;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if ((a5 & 0x8000000000000000) != 0)
  {
    v15 = a5;
  }

  else
  {
    v15 = a5 & 0xFFFFFFFFFFFFFF8;
  }

  v28 = sub_24F92C738();
  if (v28 >= a3)
  {
    a4 = a3;
  }

  else
  {
    a4 = v28;
  }

  if (a4 < 0)
  {
    goto LABEL_37;
  }

  result = sub_24F92C738();
  if ((result & 0x8000000000000000) == 0)
  {
    if (sub_24F92C738() >= a4)
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_37;
  }

  __break(1u);
  return result;
}

uint64_t TrendingSearches.init(title:maxNumberOfSearches:searches:pageMetrics:pageRenderEvent:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 2) = a1;
  *(v7 + 3) = a2;
  v13 = OBJC_IVAR____TtC12GameStoreKit16TrendingSearches_pageMetrics;
  v14 = sub_24F928818();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v7[v13], a6, v14);
  *&v7[OBJC_IVAR____TtC12GameStoreKit16TrendingSearches_pageRenderEvent] = a7;
  if (a4)
  {
    goto LABEL_26;
  }

  if (!(a5 >> 62))
  {
    if ((a3 & 0x8000000000000000) == 0)
    {
      if (*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a3)
      {
        a4 = a3;
      }

      else
      {
        a4 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

LABEL_7:
      if ((a5 & 0xC000000000000001) != 0 && a4)
      {
        type metadata accessor for SearchAction(0);

        v16 = 0;
        do
        {
          v17 = v16 + 1;
          sub_24F92C8C8();
          v16 = v17;
        }

        while (a4 != v17);
      }

      else
      {
      }

      if (a5 >> 62)
      {
        a3 = sub_24F92CB18();
        v18 = v19;
        v13 = v20;
        a4 = v21;

        if (a4)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v13 = 0;
        a3 = a5 & 0xFFFFFFFFFFFFFF8;
        v18 = (a5 & 0xFFFFFFFFFFFFFF8) + 32;
        a4 = (2 * a4) | 1;
        if (a4)
        {
LABEL_18:
          v27 = v18;
          sub_24F92CEF8();
          swift_unknownObjectRetain_n();
          v23 = swift_dynamicCastClass();
          if (!v23)
          {
            swift_unknownObjectRelease();
            v23 = MEMORY[0x277D84F90];
          }

          v24 = *(v23 + 16);

          if (!__OFSUB__(a4 >> 1, v13))
          {
            if (v24 == (a4 >> 1) - v13)
            {
              a5 = swift_dynamicCastClass();
              swift_unknownObjectRelease_n();
              if (a5)
              {
LABEL_25:

LABEL_26:
                (*(v15 + 8))(a6, v14);
                *(v7 + 4) = a5;
                return v7;
              }

              a5 = MEMORY[0x277D84F90];
LABEL_24:
              swift_unknownObjectRelease();
              goto LABEL_25;
            }

            goto LABEL_39;
          }

LABEL_38:
          __break(1u);
LABEL_39:
          swift_unknownObjectRelease_n();
          v18 = v27;
        }
      }

      sub_24E6B878C(a3, v18, v13, a4);
      a5 = v22;
      goto LABEL_24;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if ((a5 & 0x8000000000000000) != 0)
  {
    v13 = a5;
  }

  else
  {
    v13 = a5 & 0xFFFFFFFFFFFFFF8;
  }

  v26 = sub_24F92C738();
  if (v26 >= a3)
  {
    a4 = a3;
  }

  else
  {
    a4 = v26;
  }

  if (a4 < 0)
  {
    goto LABEL_37;
  }

  result = sub_24F92C738();
  if ((result & 0x8000000000000000) == 0)
  {
    if (sub_24F92C738() >= a4)
    {
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_37;
  }

  __break(1u);
  return result;
}

void *TrendingSearches.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v123 = a2;
  v3 = sub_24F92AC38();
  v118 = *(v3 - 8);
  v119 = v3;
  MEMORY[0x28223BE20](v3);
  v114 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v110 = &v97 - v6;
  v7 = sub_24F928818();
  v108 = *(v7 - 8);
  v109 = v7;
  MEMORY[0x28223BE20](v7);
  v107 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v113 = &v97 - v10;
  v120 = sub_24F9285B8();
  v122 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v106 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v112 = &v97 - v13;
  MEMORY[0x28223BE20](v14);
  v115 = &v97 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v97 - v17;
  v19 = sub_24F928388();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v105 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v104 = &v97 - v23;
  MEMORY[0x28223BE20](v24);
  v103 = &v97 - v25;
  MEMORY[0x28223BE20](v26);
  v111 = &v97 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v97 - v29;
  v31 = sub_24F92AC28();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v97 - v36;
  v121 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v38 = v19;
  v40 = *(v20 + 8);
  v39 = v20 + 8;
  v41 = v30;
  v42 = v31;
  v43 = v32;
  v44 = v40;
  v40(v41, v19);
  if ((*(v43 + 48))(v18, 1, v42) == 1)
  {
    sub_24E8F2EE8(v18);
    sub_24EAA4E04(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    v45 = v119;
    swift_allocError();
    *v46 = 0x7365686372616573;
    v47 = v117;
    v46[1] = 0xE800000000000000;
    v46[2] = v47;
    (*(v118 + 104))(v46, *MEMORY[0x277D22530], v45);
    swift_willThrow();
    (*(v122 + 8))(v123, v120);
    v44(v121, v19);
    return v38;
  }

  v101 = v44;
  v102 = v39;
  (*(v43 + 32))(v37, v18, v42);
  v99 = v43;
  v48 = *(v43 + 16);
  v100 = v42;
  v48(v34, v37, v42);
  v50 = v122;
  v49 = v123;
  v51 = v120;
  v98 = *(v122 + 16);
  v98(v115, v123, v120);
  v52 = type metadata accessor for SearchAction(0);
  sub_24EAA4E04(&qword_27F226C48, type metadata accessor for SearchAction, &protocol conformance descriptor for Action);
  v53 = v116;
  v54 = sub_24F92B688();
  v55 = v37;
  if (!v53)
  {
    v117 = v52;
    v119 = v54;
    v97 = v38;
    sub_24F928398();
    v98(v112, v49, v51);
    v65 = v113;
    sub_24F928788();
    v118 = 0;
    v116 = v37;
    type metadata accessor for PageRenderMetricsEvent();
    sub_24F928398();
    v98(v106, v49, v51);
    sub_24EAA4E04(&qword_27F2218C0, type metadata accessor for PageRenderMetricsEvent, &protocol conformance descriptor for PageRenderMetricsEvent);
    sub_24F929548();
    v115 = v124;
    v66 = v104;
    sub_24F928398();
    v114 = sub_24F928348();
    v112 = v67;
    v68 = v66;
    v69 = v97;
    v70 = v101;
    v101(v68, v97);
    v71 = v105;
    sub_24F928398();
    v110 = sub_24F928258();
    LODWORD(v111) = v72;
    v70(v71, v69);
    v73 = v107;
    v74 = v108;
    v75 = *(v108 + 16);
    v76 = v109;
    v75(v107, v65, v109);
    type metadata accessor for TrendingSearches(0);
    v38 = swift_allocObject();
    v77 = v112;
    v38[2] = v114;
    v38[3] = v77;
    v75(v38 + OBJC_IVAR____TtC12GameStoreKit16TrendingSearches_pageMetrics, v73, v76);
    *(v38 + OBJC_IVAR____TtC12GameStoreKit16TrendingSearches_pageRenderEvent) = v115;
    if (v111)
    {
      (*(v122 + 8))(v123, v51);
      v70(v121, v97);
      v78 = *(v74 + 8);
      v78(v73, v76);
      v78(v113, v76);
      (*(v99 + 8))(v116, v100);
      v38[4] = v119;
      return v38;
    }

    v79 = v123;
    v80 = v119 >> 62;
    if (!(v119 >> 62))
    {
      v82 = v108;
      v81 = v109;
      if ((v110 & 0x8000000000000000) == 0)
      {
        v83 = v119;
        if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v110)
        {
          v76 = v110;
        }

        else
        {
          v76 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

LABEL_16:
        if ((v83 & 0xC000000000000001) != 0)
        {

          if (v76)
          {
            v84 = 0;
            do
            {
              v85 = v84 + 1;
              sub_24F92C8C8();
              v84 = v85;
            }

            while (v76 != v85);
          }
        }

        else
        {
        }

        if (v80)
        {
          v70 = sub_24F92CB18();
          v80 = v86;
          v73 = v87;
          v76 = v88;
        }

        else
        {
          v73 = 0;
          v70 = (v83 & 0xFFFFFFFFFFFFFF8);
          v80 = (v83 & 0xFFFFFFFFFFFFFF8) + 32;
          v76 = (2 * v76) | 1;
        }

        if ((v76 & 1) == 0)
        {
          goto LABEL_26;
        }

        sub_24F92CEF8();
        swift_unknownObjectRetain_n();
        v92 = swift_dynamicCastClass();
        if (!v92)
        {
          swift_unknownObjectRelease();
          v92 = MEMORY[0x277D84F90];
        }

        v93 = *(v92 + 16);

        if (!__OFSUB__(v76 >> 1, v73))
        {
          if (v93 == (v76 >> 1) - v73)
          {
            v90 = swift_dynamicCastClass();
            swift_unknownObjectRelease_n();
            v91 = v100;
            v82 = v108;
            v81 = v109;
            if (v90)
            {
LABEL_34:
              (*(v122 + 8))(v79, v120);
              v101(v121, v97);
              v94 = *(v82 + 8);
              v94(v107, v81);
              v94(v113, v81);
              (*(v99 + 8))(v116, v91);
              v38[4] = v90;
              return v38;
            }

            v90 = MEMORY[0x277D84F90];
LABEL_33:
            swift_unknownObjectRelease();
            goto LABEL_34;
          }

          goto LABEL_48;
        }

LABEL_47:
        __break(1u);
LABEL_48:
        swift_unknownObjectRelease_n();
        v82 = v108;
        v81 = v109;
LABEL_26:
        sub_24E6B878C(v70, v80, v73, v76);
        v90 = v89;
        v91 = v100;
        goto LABEL_33;
      }

LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (v119 < 0)
    {
      v73 = v119;
    }

    else
    {
      v73 = v119 & 0xFFFFFFFFFFFFFF8;
    }

    v96 = sub_24F92C738();
    if (v96 >= v110)
    {
      v76 = v110;
    }

    else
    {
      v76 = v96;
    }

    if ((v76 & 0x8000000000000000) != 0)
    {
      goto LABEL_46;
    }

    if (sub_24F92C738() < 0)
    {
      __break(1u);
    }

    else if (sub_24F92C738() < v76)
    {
      __break(1u);
      goto LABEL_46;
    }

    v82 = v108;
    v81 = v109;
    v83 = v119;
    goto LABEL_16;
  }

  v124 = v53;
  v56 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  v57 = v114;
  v58 = v119;
  if (swift_dynamicCast())
  {

    v116 = v55;
    v59 = v118;
    v60 = v57;
    v61 = v110;
    (*(v118 + 32))(v110, v60, v58);
    sub_24EAA4E04(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v97 = v38;
    v38 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BA0, &qword_24F97AD70);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_24F93DE60;
    *(v63 + 32) = swift_allocError();
    (*(v59 + 16))(v64, v61, v58);
    *v38 = 0x7365686372616573;
    v38[1] = 0xE800000000000000;
    v38[2] = v117;
    v38[3] = v63;
    (*(v59 + 104))(v38, *MEMORY[0x277D22540], v58);
    swift_willThrow();
    (*(v50 + 8))(v123, v51);
    v101(v121, v97);
    (*(v59 + 8))(v61, v58);
    (*(v99 + 8))(v116, v100);
  }

  else
  {
    (*(v50 + 8))(v123, v51);
    v101(v121, v38);
    (*(v99 + 8))(v55, v100);
  }

  return v38;
}

uint64_t TrendingSearches.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TrendingSearches.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit16TrendingSearches_pageMetrics;
  v4 = sub_24F928818();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TrendingSearches.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit16TrendingSearches_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t TrendingSearches.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit16TrendingSearches_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_24EAA4D48@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = TrendingSearches.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24EAA4D88@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit16TrendingSearches_pageMetrics;
  v5 = sub_24F928818();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_24EAA4E04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for TrendingSearches(uint64_t a1)
{
  result = qword_27F226C50;
  if (!qword_27F226C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EAA4EA0(uint64_t a1)
{
  result = sub_24F928818();
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

void FamilyCircleLookupTask.init()(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v3 = [objc_allocWithZone(type metadata accessor for ArcadeAIDAAccountManagerDelegate()) init];
  v4 = objc_allocWithZone(MEMORY[0x277CED1D0]);
  v5 = v3;
  v6 = [v4 initWithAccountStore_];
  [v6 setDelegate_];

  v7 = [v6 accountStore];
  v8 = [v7 aa_primaryAppleAccount];

  *a1 = v8;
  a1[1] = v6;
  a1[2] = v5;
}

uint64_t FamilyCircleLookupTask.perform()()
{
  if (*v0)
  {
    v1 = *v0;
    v2 = [v1 ams_DSID];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226C60, &unk_24F97C2C0);
    if (v2)
    {
      v3 = sub_24F92A9E8();
      v4 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
      [v4 setPromptUserToResolveAuthenticatonFailure_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_24F941C80;
      *(v5 + 32) = v2;
      sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
      v6 = v2;
      v7 = sub_24F92B588();

      [v4 setExpectedDSIDs_];

      [v4 setQualityOfService_];
      v8 = swift_allocObject();
      v8[2] = v1;
      v8[3] = v6;
      v8[4] = v3;
      v15[4] = sub_24EAA553C;
      v15[5] = v8;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 1107296256;
      v15[2] = sub_24E6251C8;
      v15[3] = &block_descriptor_44;
      v9 = _Block_copy(v15);
      v10 = v1;
      v11 = v6;

      [v4 startRequestWithCompletionHandler_];
      _Block_release(v9);
    }

    else
    {
      sub_24EAA5364();
      swift_allocError();
      *v14 = 0;
      v3 = sub_24F92A978();
    }

    return v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226C60, &unk_24F97C2C0);
    sub_24EAA5364();
    swift_allocError();
    *v12 = 1;
    return sub_24F92A978();
  }
}

unint64_t sub_24EAA5364()
{
  result = qword_27F226C68;
  if (!qword_27F226C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226C68);
  }

  return result;
}

void sub_24EAA53B8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v6 = a2;
  sub_24E69A5C4(0, &qword_27F226D00, 0x277D08248);
  sub_24F92A728();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226D08, &qword_24F97C498);
  sub_24F92A718();
  if (v9)
  {
    v7 = v8;
    sub_24F92A9A8();
    sub_24EAA5C74(v8);
    sub_24EAA5C80(v8, 1);
    sub_24EAA5C80(v8, 1);
  }

  else
  {
    sub_24F92A9C8();
    sub_24EAA5C74(v8);
  }
}

uint64_t sub_24EAA54F4()
{

  return swift_deallocObject();
}

id sub_24EAA5548@<X0>(id *a1@<X0>, void *a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = [*a1 members];
  sub_24E69A5C4(0, qword_27F226D10, 0x277D08268);
  v7 = sub_24F92B5A8();

  if (v7 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v17 = a2;
    v18 = a4;
    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x253052270](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      a4 = v10;
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v12 = [v10 dsid];
      if (v12)
      {
        a2 = v12;
        sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
        v13 = a3;
        v14 = sub_24F92C408();

        if (v14)
        {

          v15 = [a4 isOrganizer];

          result = (*&v15 | 0xFFFFFF80);
LABEL_14:
          a4 = v18;
          goto LABEL_19;
        }
      }

      ++v9;
      if (v11 == i)
      {

        result = [v17 aa_isFamilyEligible];
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  result = [a2 aa_isFamilyEligible];
LABEL_19:
  *a4 = result;
  return result;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for FamilyCircleLookupResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7F)
  {
    goto LABEL_17;
  }

  if (a2 + 129 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 129) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 129;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 129;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 129;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v6 >= 0x7E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for FamilyCircleLookupResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7F)
  {
    v4 = 0;
  }

  if (a2 > 0x7E)
  {
    v5 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_24EAA59FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeAIDAAccountManagerDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24EAA5A4C()
{
  result = qword_27F226CD8;
  if (!qword_27F226CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226CD8);
  }

  return result;
}

unint64_t sub_24EAA5AA0(void *a1)
{
  v1 = [a1 accountStore];
  v2 = [v1 aa_primaryAppleAccount];

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226CF0, &qword_24F97C488);
    inited = swift_initStackObject();
    v4 = MEMORY[0x277CED1A0];
    *(inited + 16) = xmmword_24F93DE60;
    v5 = *v4;
    *(inited + 32) = v5;
    *(inited + 40) = v2;
    v6 = v5;
    v7 = sub_24E60D0C4(inited);
    swift_setDeallocating();
    sub_24EAA5BF0(inited + 32);
    return v7;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];

    return sub_24E60D0C4(v9);
  }
}

unint64_t sub_24EAA5B98()
{
  result = qword_27F2122D8;
  if (!qword_27F2122D8)
  {
    type metadata accessor for AIDAServiceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2122D8);
  }

  return result;
}

uint64_t sub_24EAA5BF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226CF8, &qword_24F97C490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24EAA5C80(id a1, char a2)
{
  if (a2)
  {
  }
}

int *SnapshotUpdate.init(contentSnapshot:animated:useReloadData:isInitialFullPageSnapshot:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = a4;
  v14 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, a5, a6, a4);
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  result = type metadata accessor for SnapshotUpdate(0, a5, a6, v15);
  *(a7 + result[9]) = a2;
  *(a7 + result[10]) = a3;
  *(a7 + result[11]) = v9;
  return result;
}

uint64_t SnapshotUpdate.contentSnapshot.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v5 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, *(a1 + 16), *(a1 + 24), a3);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v3, v5);
}

uint64_t sub_24EAA5E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EAA5EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, *(a3 + 16), *(a3 + 24), a4);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 36));
    if (v11 >= 2)
    {
      return ((v11 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24EAA5FC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, *(a4 + 16), *(a4 + 24), a4);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2 + 1;
  }

  return result;
}

uint64_t MultilineTextLayout.Metrics.init(headingSpace:titleSpace:subtitleSpace:tertiarySpace:offerSpace:maxIndividualLines:maxTotalLines:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_24E601704(a5, &qword_27F22F780, &qword_24F968620);
  *(a8 + 136) = 0u;
  *(a8 + 152) = 0u;
  *(a8 + 168) = 0u;
  *(a8 + 184) = 0u;
  *(a8 + 120) = 0u;
  v15 = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 16) = v15;
  *(a8 + 32) = *(a1 + 32);
  sub_24E612C80(a2, a8 + 40);
  sub_24E612C80(a3, a8 + 80);
  result = sub_24EA63A70(a4, a8 + 120);
  *(a8 + 200) = a6;
  *(a8 + 208) = a7;
  return result;
}

uint64_t MultilineTextLayout.Metrics.subtitleSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 80));

  return sub_24E612C80(a1, v1 + 80);
}

__n128 MultilineTextLayout.init(headingText:titleText:subtitleText:tertiaryText:offerText:metrics:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v12;
  *(a7 + 32) = *(a1 + 32);
  sub_24E612C80(a2, a7 + 40);
  sub_24E612C80(a3, a7 + 80);
  v13 = a6[12];
  *(a7 + 376) = a6[11];
  *(a7 + 392) = v13;
  v14 = a6[10];
  *(a7 + 344) = a6[9];
  *(a7 + 360) = v14;
  v15 = a6[8];
  *(a7 + 312) = a6[7];
  *(a7 + 328) = v15;
  v16 = a6[6];
  *(a7 + 280) = a6[5];
  *(a7 + 296) = v16;
  *(a7 + 264) = a6[4];
  v17 = *(a4 + 16);
  *(a7 + 120) = *a4;
  *(a7 + 136) = v17;
  v18 = *(a5 + 16);
  *(a7 + 160) = *a5;
  *(a7 + 176) = v18;
  v19 = a6[2];
  *(a7 + 248) = a6[3];
  *(a7 + 232) = v19;
  v21 = *a6;
  result = a6[1];
  *(a7 + 216) = result;
  *(a7 + 152) = *(a4 + 32);
  *(a7 + 192) = *(a5 + 32);
  *(a7 + 408) = *(a6 + 26);
  *(a7 + 200) = v21;
  return result;
}

uint64_t MultilineTextLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  sub_24E60169C(v3, v9, &unk_27F22B200, &unk_24F9674C0);
  sub_24E601704(v9, &unk_27F22B200, &unk_24F9674C0);
  sub_24E60169C(v3, &v7, &unk_27F22B200, &unk_24F9674C0);
  if (v8)
  {
    sub_24E612C80(&v7, v9);
    __swift_project_boxed_opaque_existential_1(v9, v10);
    sub_24F922288();
    sub_24E60169C((v3 + 25), &v7, &qword_27F22F780, &qword_24F968620);
    if (v8)
    {
      __swift_project_boxed_opaque_existential_1(&v7, v8);
      sub_24F9223C8();
      __swift_destroy_boxed_opaque_existential_1(&v7);
    }

    else
    {
      sub_24E601704(&v7, &qword_27F22F780, &qword_24F968620);
    }

    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    sub_24E601704(&v7, &unk_27F22B200, &unk_24F9674C0);
  }

  __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
  sub_24F922478();
  __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
  sub_24F922288();
  __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
  v4 = sub_24F9224B8();
  __swift_project_boxed_opaque_existential_1(v3 + 10, v3[13]);
  v5 = v3[51];
  result = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    __break(1u);
  }

  else
  {
    sub_24F922478();
    __swift_project_boxed_opaque_existential_1(v3 + 10, v3[13]);
    sub_24F922288();
    __swift_project_boxed_opaque_existential_1(v3 + 30, v3[33]);
    sub_24F9223C8();
    __swift_project_boxed_opaque_existential_1(v3 + 35, v3[38]);
    sub_24F9223C8();
    sub_24E60169C((v3 + 15), v9, &unk_27F22B200, &unk_24F9674C0);
    sub_24E601704(v9, &unk_27F22B200, &unk_24F9674C0);
    sub_24E60169C((v3 + 15), &v7, &unk_27F22B200, &unk_24F9674C0);
    if (v8)
    {
      sub_24E612C80(&v7, v9);
      __swift_project_boxed_opaque_existential_1(v9, v10);
      sub_24F922288();
      sub_24E60169C((v3 + 40), &v7, &qword_27F22F780, &qword_24F968620);
      if (v8)
      {
        __swift_project_boxed_opaque_existential_1(&v7, v8);
        sub_24F9223C8();
        __swift_destroy_boxed_opaque_existential_1(&v7);
      }

      else
      {
        sub_24E601704(&v7, &qword_27F22F780, &qword_24F968620);
      }

      __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      sub_24E601704(&v7, &unk_27F22B200, &unk_24F9674C0);
    }

    sub_24E60169C((v3 + 20), v9, &unk_27F22B200, &unk_24F9674C0);
    sub_24E601704(v9, &unk_27F22B200, &unk_24F9674C0);
    sub_24E60169C((v3 + 20), &v7, &unk_27F22B200, &unk_24F9674C0);
    if (v8)
    {
      sub_24E612C80(&v7, v9);
      __swift_project_boxed_opaque_existential_1(v9, v10);
      sub_24F922288();
      sub_24E60169C((v3 + 45), &v7, &qword_27F22F780, &qword_24F968620);
      if (v8)
      {
        __swift_project_boxed_opaque_existential_1(&v7, v8);
        sub_24F9223C8();
        __swift_destroy_boxed_opaque_existential_1(&v7);
      }

      else
      {
        sub_24E601704(&v7, &qword_27F22F780, &qword_24F968620);
      }

      return __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      return sub_24E601704(&v7, &unk_27F22B200, &unk_24F9674C0);
    }
  }

  return result;
}

uint64_t MultilineTextLayout.placeChildren(relativeTo:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  MinY = CGRectGetMinY(*&a2);
  sub_24E60169C(v5, &v86, &unk_27F22B200, &unk_24F9674C0);
  v78 = a2;
  if (v87)
  {
    v83 = MinY;
    sub_24E612C80(&v86, v88);
    __swift_project_boxed_opaque_existential_1(v88, v89);
    sub_24F922288();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    sub_24E60169C((v5 + 25), &v86, &qword_27F22F780, &qword_24F968620);
    v80 = v16;
    if (v87)
    {
      __swift_project_boxed_opaque_existential_1(&v86, v87);
      sub_24F9223C8();
      v18 = v17;
      __swift_destroy_boxed_opaque_existential_1(&v86);
    }

    else
    {
      sub_24E601704(&v86, &qword_27F22F780, &qword_24F968620);
      v18 = 0.0;
    }

    v90.origin.x = a2;
    v90.origin.y = a3;
    v90.size.width = a4;
    v90.size.height = a5;
    MinX = CGRectGetMinX(v90);
    v91.origin.x = a2;
    v91.origin.y = a3;
    v91.size.width = a4;
    v91.size.height = a5;
    Width = CGRectGetWidth(v91);
    if (Width < v12)
    {
      v12 = Width;
    }

    __swift_project_boxed_opaque_existential_1(v88, v89);
    sub_24F92C1D8();
    sub_24F922228();
    v92.origin.x = MinX;
    v92.origin.y = v83 + v18;
    v92.size.width = v12;
    v92.size.height = v14;
    MinY = CGRectGetMaxY(v92) - v80;
    __swift_destroy_boxed_opaque_existential_1(v88);
  }

  else
  {
    sub_24E601704(&v86, &unk_27F22B200, &unk_24F9674C0);
  }

  __swift_project_boxed_opaque_existential_1(v5 + 5, v5[8]);
  sub_24F922478();
  __swift_project_boxed_opaque_existential_1(v5 + 5, v5[8]);
  sub_24F922288();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  __swift_project_boxed_opaque_existential_1(v5 + 5, v5[8]);
  v27 = sub_24F9224B8();
  __swift_project_boxed_opaque_existential_1(v5 + 10, v5[13]);
  v28 = v5[51];
  result = v28 - v27;
  if (__OFSUB__(v28, v27))
  {
    __break(1u);
  }

  else
  {
    sub_24F922478();
    __swift_project_boxed_opaque_existential_1(v5 + 10, v5[13]);
    sub_24F922288();
    v71 = v30;
    v79 = v31;
    v84 = v32;
    v93.origin.x = v78;
    v93.origin.y = a3;
    v93.size.width = a4;
    v93.size.height = a5;
    rect = a4;
    v33 = a5;
    v34 = a3;
    v35 = CGRectGetMinX(v93);
    __swift_project_boxed_opaque_existential_1(v5 + 30, v5[33]);
    sub_24F9223C8();
    v37 = v36;
    v94.origin.x = v78;
    v94.origin.y = v34;
    v94.size.width = rect;
    v94.size.height = v33;
    v38 = CGRectGetWidth(v94);
    if (v38 < v22)
    {
      v22 = v38;
    }

    __swift_project_boxed_opaque_existential_1(v5 + 5, v5[8]);
    v75 = v22;
    v76 = v35;
    v74 = MinY + v37;
    v77 = v24;
    sub_24F92C1D8();
    sub_24F922228();
    __swift_project_boxed_opaque_existential_1(v5 + 5, v5[8]);
    sub_24F922218();
    v39 = v33;
    v40 = rect;
    v81 = CGRectGetMaxY(v95) - v26;
    v96.origin.x = v78;
    v96.origin.y = v34;
    v96.size.width = rect;
    v96.size.height = v39;
    v41 = CGRectGetMinX(v96);
    __swift_project_boxed_opaque_existential_1(v5 + 35, v5[38]);
    v42 = v71;
    sub_24F9223C8();
    v44 = v43;
    v97.origin.x = v78;
    v97.origin.y = v34;
    v97.size.width = rect;
    v97.size.height = v39;
    v45 = CGRectGetWidth(v97);
    if (v45 < v71)
    {
      v42 = v45;
    }

    v46 = v81 + v44;
    __swift_project_boxed_opaque_existential_1(v5 + 10, v5[13]);
    v82 = v34;
    v72 = v42;
    v73 = v41;
    v70 = v46;
    sub_24F92C1D8();
    sub_24F922228();
    __swift_project_boxed_opaque_existential_1(v5 + 10, v5[13]);
    sub_24F922218();
    v47 = CGRectGetMaxY(v98) - v84;
    sub_24E60169C((v5 + 15), &v86, &unk_27F22B200, &unk_24F9674C0);
    if (v87)
    {
      sub_24E612C80(&v86, v88);
      __swift_project_boxed_opaque_existential_1(v88, v89);
      sub_24F922288();
      v49 = v48;
      v51 = v50;
      v52 = v39;
      v54 = v53;
      sub_24E60169C((v5 + 40), &v86, &qword_27F22F780, &qword_24F968620);
      v67 = v54;
      v68 = v47;
      if (v87)
      {
        __swift_project_boxed_opaque_existential_1(&v86, v87);
        sub_24F9223C8();
        v56 = v55;
        __swift_destroy_boxed_opaque_existential_1(&v86);
      }

      else
      {
        sub_24E601704(&v86, &qword_27F22F780, &qword_24F968620);
        v56 = 0.0;
      }

      v99.origin.x = v78;
      v99.origin.y = v82;
      v40 = rect;
      v99.size.width = rect;
      v99.size.height = v39;
      v57 = CGRectGetMinX(v99);
      v100.origin.x = v78;
      v100.origin.y = v82;
      v100.size.width = rect;
      v100.size.height = v52;
      v58 = CGRectGetWidth(v100);
      if (v58 < v49)
      {
        v49 = v58;
      }

      __swift_project_boxed_opaque_existential_1(v88, v89);
      sub_24F92C1D8();
      sub_24F92C1D8();
      sub_24F922228();
      v101.origin.x = v57;
      v101.origin.y = v68 + v56;
      v101.size.width = v49;
      v101.size.height = v51;
      v47 = CGRectGetMaxY(v101) - v67;
      __swift_destroy_boxed_opaque_existential_1(v88);
    }

    else
    {
      sub_24E601704(&v86, &unk_27F22B200, &unk_24F9674C0);
      v52 = v39;
    }

    sub_24E60169C((v5 + 20), &v86, &unk_27F22B200, &unk_24F9674C0);
    if (v87)
    {
      sub_24E612C80(&v86, v88);
      __swift_project_boxed_opaque_existential_1(v88, v89);
      sub_24F922288();
      v60 = v59;
      v69 = v61;
      sub_24E60169C((v5 + 45), &v86, &qword_27F22F780, &qword_24F968620);
      if (v87)
      {
        __swift_project_boxed_opaque_existential_1(&v86, v87);
        sub_24F9223C8();
        v63 = v62;
        __swift_destroy_boxed_opaque_existential_1(&v86);
      }

      else
      {
        sub_24E601704(&v86, &qword_27F22F780, &qword_24F968620);
        v63 = 0.0;
      }

      v102.origin.x = v78;
      v64 = v82;
      v102.origin.y = v82;
      v102.size.width = v40;
      v102.size.height = v52;
      v65 = CGRectGetMinX(v102);
      v103.origin.x = v78;
      v103.origin.y = v82;
      v103.size.width = v40;
      v103.size.height = v52;
      v66 = CGRectGetWidth(v103);
      if (v66 < v60)
      {
        v60 = v66;
      }

      __swift_project_boxed_opaque_existential_1(v88, v89);
      sub_24F92C1D8();
      sub_24F92C1D8();
      sub_24F922228();
      v104.origin.x = v65;
      v104.origin.y = v47 + v63;
      v104.size.width = v60;
      v104.size.height = v69;
      CGRectGetMaxY(v104);
      __swift_destroy_boxed_opaque_existential_1(v88);
    }

    else
    {
      sub_24E601704(&v86, &unk_27F22B200, &unk_24F9674C0);
      v64 = v82;
    }

    v105.size.width = v75;
    v105.origin.x = v76;
    v105.origin.y = v74;
    v105.size.height = v77;
    CGRectGetMinY(v105);
    v106.origin.x = v78;
    v106.origin.y = v64;
    v106.size.width = v40;
    v106.size.height = v52;
    CGRectGetMinY(v106);
    v107.origin.x = v78;
    v107.origin.y = v64;
    v107.size.width = v40;
    v107.size.height = v52;
    CGRectGetMinX(v107);
    v108.origin.x = v78;
    v108.origin.y = v64;
    v108.size.width = v40;
    v108.size.height = v52;
    CGRectGetMinY(v108);
    v109.origin.x = v78;
    v109.origin.y = v64;
    v109.size.width = v40;
    v109.size.height = v52;
    CGRectGetWidth(v109);
    v110.size.width = v72;
    v110.origin.x = v73;
    v110.origin.y = v70;
    v110.size.height = v79;
    CGRectGetMaxY(v110);
    v111.origin.y = v64;
    v111.origin.x = v78;
    v111.size.width = v40;
    v111.size.height = v52;
    CGRectGetMinY(v111);
    return sub_24F922138();
  }

  return result;
}

uint64_t _s12GameStoreKit19MultilineTextLayoutV23estimatedAXMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1 + 5, a1[8]);
  result = sub_24F9223B8();
  if (__OFSUB__(a1[26], 1))
  {
    __break(1u);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1 + 10, a1[13]);
    sub_24F9223B8();
    sub_24E60169C((a1 + 20), v4, &qword_27F22F780, &qword_24F968620);
    if (v5)
    {
      __swift_project_boxed_opaque_existential_1(v4, v5);
      sub_24F9223B8();
      return __swift_destroy_boxed_opaque_existential_1(v4);
    }

    else
    {
      return sub_24E601704(v4, &qword_27F22F780, &qword_24F968620);
    }
  }

  return result;
}

uint64_t sub_24EAA777C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 416))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EAA77C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 408) = 0;
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
      *(result + 416) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 416) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EAA7880(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EAA78C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MetricsData.init(fields:includingFields:excludingFields:shouldFlush:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
    if (v3)
    {
      sub_24E643A9C(*(a1 + 56) + 32 * v2, v8);
      if (swift_dynamicCast())
      {
        v4 = HIBYTE(v7) & 0xF;
        if ((v7 & 0x2000000000000000) == 0)
        {
          v4 = *v6 & 0xFFFFFFFFFFFFLL;
        }

        if (!v4)
        {
        }
      }
    }
  }

  return sub_24F928658();
}

uint64_t MetricsData.contextualAdamId.getter(uint64_t a1)
{
  v1 = sub_24F928688();
  if (*(v1 + 16) && (v2 = sub_24E76D644(0x6D6164615F74656ALL, 0xEA00000000006449), (v3 & 1) != 0))
  {
    sub_24E643A9C(*(v1 + 56) + 32 * v2, v9);

    if (swift_dynamicCast())
    {
      return v8;
    }
  }

  else
  {
  }

  v5 = sub_24F928688();
  if (*(v5 + 16) && (v6 = sub_24E76D644(0x6449746567726174, 0xE800000000000000), (v7 & 1) != 0))
  {
    sub_24E643A9C(*(v5 + 56) + 32 * v6, v9);

    if (swift_dynamicCast())
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t static PresentPromptAction.addFriend(friendName:)@<X0>(uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = sub_24F9294C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9294B8();
  if (a2)
  {

    sub_24F9294A8();
  }

  v9 = type metadata accessor for PresentPromptAction(0);
  (*(v6 + 16))(&a3[*(v9 + 20)], v8, v5);
  sub_24F928A98();
  result = (*(v6 + 8))(v8, v5);
  *a3 = 0x6E65697246646461;
  *(a3 + 1) = 0xE900000000000064;
  return result;
}

uint64_t type metadata accessor for PresentPromptAction(uint64_t a1)
{
  result = qword_27F226DC8;
  if (!qword_27F226DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static PresentPromptAction.appLaunch()@<X0>(void *a1@<X8>)
{
  type metadata accessor for PresentPromptAction(0);
  sub_24F9294B8();
  result = sub_24F928A98();
  *a1 = 0x636E75614C707061;
  a1[1] = 0xE900000000000068;
  return result;
}

uint64_t PresentPromptAction.triggerKind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PresentPromptAction.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PresentPromptAction(0) + 20);
  v4 = sub_24F9294C8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PresentPromptAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PresentPromptAction(0) + 24);
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24EAA7EA4()
{
  v1 = 0x617461646174656DLL;
  if (*v0 != 1)
  {
    v1 = 0x654D6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4B72656767697274;
  }
}

uint64_t sub_24EAA7F14@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EAA8C00(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EAA7F3C(uint64_t a1)
{
  v2 = sub_24EAA81E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EAA7F78(uint64_t a1)
{
  v2 = sub_24EAA81E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PresentPromptAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226DA0, &qword_24F97C790);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EAA81E4();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for PresentPromptAction(0);
    v8[14] = 1;
    sub_24F9294C8();
    sub_24EAA86AC(&qword_27F226DB0, MEMORY[0x277D21EF0], MEMORY[0x277D21EF8]);
    sub_24F92CD48();
    v8[13] = 2;
    sub_24F928AD8();
    sub_24EAA86AC(&qword_27F216080, MEMORY[0x277D21C88], MEMORY[0x277D21C90]);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24EAA81E4()
{
  result = qword_27F226DA8;
  if (!qword_27F226DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226DA8);
  }

  return result;
}

uint64_t PresentPromptAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v24 = sub_24F928AD8();
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v25 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F9294C8();
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226DB8, &qword_24F97C798);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = &v19 - v7;
  v9 = type metadata accessor for PresentPromptAction(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EAA81E4();
  v28 = v8;
  v12 = v30;
  sub_24F92D108();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v27;
  v33 = 0;
  *v11 = sub_24F92CC28();
  v11[1] = v14;
  v30 = v11;
  v21 = v14;
  v32 = 1;
  sub_24EAA86AC(&qword_27F226DC0, MEMORY[0x277D21EF0], MEMORY[0x277D21F00]);
  sub_24F92CC68();
  v20 = v9;
  v15 = *(v9 + 20);
  v16 = v30;
  (*(v26 + 32))(v30 + v15, v6, v4);
  v31 = 2;
  sub_24EAA86AC(&qword_27F254CB0, MEMORY[0x277D21C88], MEMORY[0x277D21C98]);
  v17 = v24;
  sub_24F92CC68();
  (*(v13 + 8))(v28, v29);
  (*(v22 + 32))(v16 + *(v20 + 24), v25, v17);
  sub_24EAA86F4(v16, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24EAA8758(v16);
}

uint64_t sub_24EAA86AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EAA86F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentPromptAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EAA8758(uint64_t a1)
{
  v2 = type metadata accessor for PresentPromptAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EAA87F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F9294C8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_24F928AD8();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24EAA8930(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_24F9294C8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_24F928AD8();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24EAA8A54(uint64_t a1)
{
  result = sub_24F9294C8();
  if (v2 <= 0x3F)
  {
    result = sub_24F928AD8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24EAA8AFC()
{
  result = qword_27F226DD8;
  if (!qword_27F226DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226DD8);
  }

  return result;
}

unint64_t sub_24EAA8B54()
{
  result = qword_27F226DE0;
  if (!qword_27F226DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226DE0);
  }

  return result;
}

unint64_t sub_24EAA8BAC()
{
  result = qword_27F226DE8;
  if (!qword_27F226DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226DE8);
  }

  return result;
}

uint64_t sub_24EAA8C00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4B72656767697274 && a2 == 0xEB00000000646E69;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

__n128 BrickLayout.init(metrics:artworkView:labelView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for BrickLayout(0);
  sub_24EAA8DB0(a1, a4 + *(v8 + 24));
  sub_24E612C80(a2, a4);
  result = *a3;
  v10 = *(a3 + 16);
  *(a4 + 40) = *a3;
  *(a4 + 56) = v10;
  *(a4 + 72) = *(a3 + 32);
  return result;
}

uint64_t sub_24EAA8DB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrickLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t BrickLayout.Metrics.init(artworkAspectRatio:labelSpace:labelFontSource:isLabelFullWidth:numberOfLines:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for BrickLayout.Metrics(0);
  v13 = a6 + v12[5];
  *(v13 + 32) = 0;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  v14 = v12[6];
  v15 = sub_24F922118();
  (*(*(v15 - 8) + 56))(a6 + v14, 1, 1, v15);
  v16 = sub_24F922348();
  (*(*(v16 - 8) + 32))(a6, a1, v16);
  sub_24E61DA68(a2, v13, &qword_27F22F780, &qword_24F968620);
  result = sub_24E61DA68(a3, a6 + v14, &qword_27F226DF0, &qword_24F97C958);
  *(a6 + v12[7]) = a4;
  *(a6 + v12[8]) = a5;
  return result;
}

uint64_t BrickLayout.Metrics.artworkAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F922348();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t BrickLayout.Metrics.artworkAspectRatio.setter(uint64_t a1)
{
  v3 = sub_24F922348();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t BrickLayout.Metrics.isLabelFullWidth.setter(char a1)
{
  result = type metadata accessor for BrickLayout.Metrics(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t BrickLayout.Metrics.numberOfLines.setter(uint64_t a1)
{
  result = type metadata accessor for BrickLayout.Metrics(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t BrickLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for BrickLayout(0) + 24);

  return sub_24EAA93C8(v3, a1);
}

uint64_t sub_24EAA93C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrickLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BrickLayout.placeChildren(relativeTo:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = v5 + *(type metadata accessor for BrickLayout(0) + 24);
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetWidth(v18);
  sub_24F922308();
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetMinX(v19);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  CGRectGetMinY(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGRectGetWidth(v21);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_24F92C1D8();
  sub_24F922228();
  v11 = type metadata accessor for BrickLayout.Metrics(0);
  sub_24E60169C(&v10[*(v11 + 20)], &v15, &qword_27F22F780, &qword_24F968620);
  if (v16)
  {
    sub_24E612C80(&v15, v17);
    sub_24E60169C((v5 + 5), &v13, &unk_27F22B200, &unk_24F9674C0);
    if (v14)
    {
      sub_24E612C80(&v13, &v15);
      __swift_project_boxed_opaque_existential_1(&v15, v16);
      sub_24F922288();
      __swift_project_boxed_opaque_existential_1(v17, v17[3]);
      sub_24F9223C8();
      v22.origin.x = a2;
      v22.origin.y = a3;
      v22.size.width = a4;
      v22.size.height = a5;
      CGRectGetMinX(v22);
      __swift_project_boxed_opaque_existential_1(v5, v5[3]);
      sub_24F9221F8();
      CGRectGetMaxY(v23);
      if (v10[*(v11 + 28)] == 1)
      {
        v24.origin.x = a2;
        v24.origin.y = a3;
        v24.size.width = a4;
        v24.size.height = a5;
        CGRectGetWidth(v24);
      }

      __swift_project_boxed_opaque_existential_1(&v15, v16);
      sub_24F92C1D8();
      sub_24F922228();
      __swift_destroy_boxed_opaque_existential_1(&v15);
    }

    else
    {
      sub_24E601704(&v13, &unk_27F22B200, &unk_24F9674C0);
    }

    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_24E601704(&v15, &qword_27F22F780, &qword_24F968620);
  }

  return sub_24F922128();
}

uint64_t sub_24EAA9774(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_24EAAA1B8(&qword_27F226E38, &protocol conformance descriptor for BrickLayout);
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x282180FC8](a1, a2, v10, a3, v11, v12);
}

double _s12GameStoreKit11BrickLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t a1, void *a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226DF0, &qword_24F97C958);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24[-1] - v7;
  v9 = sub_24F92CDB8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F922308();
  v13 = type metadata accessor for BrickLayout.Metrics(0);
  sub_24E60169C(a1 + *(v13 + 20), v24, &qword_27F22F780, &qword_24F968620);
  v14 = v25;
  if (v25)
  {
    __swift_project_boxed_opaque_existential_1(v24, v25);
    sub_24E8ED7D8(v14);
    sub_24F9223A8();
    (*(v10 + 8))(v12, v9);
    __swift_destroy_boxed_opaque_existential_1(v24);
    sub_24E60169C(a1 + *(v13 + 24), v8, &qword_27F226DF0, &qword_24F97C958);
    v15 = sub_24F922118();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v8, 1, v15) != 1)
    {
      v20 = [a2 traitCollection];
      v21 = sub_24F922108();

      (*(v16 + 8))(v8, v15);
      [v21 lineHeight];
      sub_24F92C288();
      [v21 descender];

      return a3;
    }

    v17 = &qword_27F226DF0;
    v18 = &qword_24F97C958;
    v19 = v8;
  }

  else
  {
    v17 = &qword_27F22F780;
    v18 = &qword_24F968620;
    v19 = v24;
  }

  sub_24E601704(v19, v17, v18);
  return a3;
}

uint64_t sub_24EAA9B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for BrickLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EAA9C3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for BrickLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EAA9CE0(uint64_t a1)
{
  sub_24EAA9D94();
  if (v1 <= 0x3F)
  {
    sub_24E8EF898(319, &qword_27F221208, &qword_27F221210, &unk_24F9ACE10);
    if (v2 <= 0x3F)
    {
      type metadata accessor for BrickLayout.Metrics(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24EAA9D94()
{
  result = qword_27F237A20;
  if (!qword_27F237A20)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F237A20);
  }

  return result;
}

uint64_t sub_24EAA9E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F922348();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226DF0, &qword_24F97C958);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_24EAA9F60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F922348();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226DF0, &qword_24F97C958);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24EAAA094(uint64_t a1)
{
  sub_24F922348();
  if (v1 <= 0x3F)
  {
    sub_24E8EF898(319, &qword_27F226E20, &qword_27F226E28, &qword_24F999F80);
    if (v2 <= 0x3F)
    {
      sub_24EAAA160(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24EAAA160(uint64_t a1)
{
  if (!qword_27F226E30)
  {
    sub_24F922118();
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F226E30);
    }
  }
}

uint64_t sub_24EAAA1B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BrickLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24EAAA228@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_24F924A78();
  MEMORY[0x28223BE20](v3 - 8);
  sub_24F924A68();
  sub_24F924A58();
  sub_24F924A08();
  sub_24F924A58();
  sub_24F924A98();
  v4 = sub_24F925DE8();
  v6 = v5;
  v8 = v7 & 1;
  *a2 = xmmword_24F97CA70;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x277D84F90];
  *(a2 + 32) = 0;
  *(a2 + 40) = v4;
  *(a2 + 48) = v5;
  *(a2 + 56) = v7 & 1;
  *(a2 + 64) = v9;
  sub_24E5FD138(12336, 0xE200000000000000, 0);

  sub_24E5FD138(v4, v6, v8);

  sub_24E600B40(v4, v6, v8);

  sub_24E600B40(12336, 0xE200000000000000, 0);
}

uint64_t sub_24EAAA3D4@<X0>(uint64_t *a2@<X8>)
{
  v4 = *(v2 + 8);
  *a2 = sub_24F927618();
  a2[1] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226E40, &qword_24F97CB08);
  sub_24EAAA228(&v27);
  KeyPath = swift_getKeyPath();
  v29 = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226E48, &qword_24F97CB40);
  sub_24EAAA57C();
  sub_24F9268B8();
  sub_24EAAA6E4(&v27);
  v6 = sub_24F925838();
  sub_24F923318();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226E78, &qword_24F97CB60) + 36);
  *v15 = v6;
  *(v15 + 1) = v8;
  *(v15 + 2) = v10;
  *(v15 + 3) = v12;
  *(v15 + 4) = v14;
  v15[40] = 0;
  v16 = sub_24F925858();
  sub_24F923318();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226E80, &qword_24F97CB68);
  v26 = a2 + *(result + 36);
  *v26 = v16;
  *(v26 + 1) = v18;
  *(v26 + 2) = v20;
  *(v26 + 3) = v22;
  *(v26 + 4) = v24;
  v26[40] = 0;
  return result;
}

unint64_t sub_24EAAA57C()
{
  result = qword_27F226E50;
  if (!qword_27F226E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226E48, &qword_24F97CB40);
    sub_24EAAA634();
    sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226E50);
  }

  return result;
}

unint64_t sub_24EAAA634()
{
  result = qword_27F226E58;
  if (!qword_27F226E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226E60, &qword_24F97CB48);
    sub_24E602068(&qword_27F226E68, &qword_27F226E70, &unk_24F97CB50, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226E58);
  }

  return result;
}

uint64_t sub_24EAAA6E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226E48, &qword_24F97CB40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EAAA750()
{
  result = qword_27F226E88;
  if (!qword_27F226E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226E80, &qword_24F97CB68);
    sub_24EAAA7DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226E88);
  }

  return result;
}

unint64_t sub_24EAAA7DC()
{
  result = qword_27F226E90;
  if (!qword_27F226E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226E78, &qword_24F97CB60);
    sub_24E602068(&qword_27F226E98, &qword_27F226EA0, &unk_24F97CB70, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226E90);
  }

  return result;
}

uint64_t sub_24EAAA8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LeaderboardEntry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 32);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24EAAA9F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LeaderboardEntry(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 32) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for BaseLeaderboardRowView(uint64_t a1)
{
  result = qword_27F226EA8;
  if (!qword_27F226EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EAAAB70(uint64_t a1)
{
  type metadata accessor for LeaderboardEntry(319);
  if (v1 <= 0x3F)
  {
    sub_24E684120(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit22BaseLeaderboardRowViewV22IndicatorConfigurationVSg(uint64_t a1)
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

__n128 __swift_memcpy99_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 95) = *(a2 + 95);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24EAAAC5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 99))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EAAACA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 98) = 0;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 99) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 99) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EAAAD30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226EC8, &qword_24F97CC70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226ED0, &qword_24F97CC78);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226ED8, &qword_24F97CC80);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v25 - v18;
  v20 = *(a1 + *(type metadata accessor for BaseLeaderboardRowView(0) + 20) + 97);
  if (v20 == 2 || (v20 & 0x100) == 0)
  {
    (*(v11 + 56))(v19, 1, 1, v10);
  }

  else
  {
    sub_24EAAB050(v20 & 1);
    sub_24E6009C8(v13, v19, &qword_27F226ED0, &qword_24F97CC78);
    (*(v11 + 56))(v19, 0, 1, v10);
  }

  *v9 = sub_24F9249A8();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226EE0, &qword_24F97CC88);
  sub_24EAAB260(a1, &v9[*(v22 + 44)]);
  sub_24E60169C(v19, v16, &qword_27F226ED8, &qword_24F97CC80);
  sub_24E60169C(v9, v6, &qword_27F226EC8, &qword_24F97CC70);
  sub_24E60169C(v16, a2, &qword_27F226ED8, &qword_24F97CC80);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226EE8, &qword_24F97CC90);
  sub_24E60169C(v6, a2 + *(v23 + 48), &qword_27F226EC8, &qword_24F97CC70);
  sub_24E601704(v9, &qword_27F226EC8, &qword_24F97CC70);
  sub_24E601704(v19, &qword_27F226ED8, &qword_24F97CC80);
  sub_24E601704(v6, &qword_27F226EC8, &qword_24F97CC70);
  return sub_24E601704(v16, &qword_27F226ED8, &qword_24F97CC80);
}

uint64_t sub_24EAAB050(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226EF0, &qword_24F97CC98);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226EF8, &qword_24F97CCA0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  if (a1)
  {
    swift_storeEnumTagMultiPayload();
    sub_24EAACC38();
    return sub_24F924E28();
  }

  else
  {
    sub_24EAAC2B4(v1, &v14 - v7);
    v10 = sub_24F9251A8();
    *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226F10, &qword_24F97CCA8) + 36)] = v10;
    v11 = *(v6 + 36);
    v12 = *MEMORY[0x277CE13B8];
    v13 = sub_24F927748();
    (*(*(v13 - 8) + 104))(&v8[v11], v12, v13);
    sub_24E60169C(v8, v5, &qword_27F226EF8, &qword_24F97CCA0);
    swift_storeEnumTagMultiPayload();
    sub_24EAACC38();
    sub_24F924E28();
    return sub_24E601704(v8, &qword_27F226EF8, &qword_24F97CCA0);
  }
}

void sub_24EAAB260(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v166 = a2;
  v3 = sub_24F925218();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v141 = &v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v159);
  v7 = &v141 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v8 - 8);
  v142 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v141 - v11;
  MEMORY[0x28223BE20](v13);
  v168 = (&v141 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v141 - v16;
  v169 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v169);
  v158 = (&v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226F60, &qword_24F97CCF0);
  MEMORY[0x28223BE20](v170);
  v173 = &v141 - v19;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226F68, &qword_24F97CCF8);
  MEMORY[0x28223BE20](v171);
  v175 = &v141 - v20;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226F70, &unk_24F97CD00);
  MEMORY[0x28223BE20](v174);
  v176 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v172 = &v141 - v23;
  MEMORY[0x28223BE20](v24);
  v177 = &v141 - v25;
  v26 = type metadata accessor for BaseLeaderboardRowView(0);
  v27 = a1 + *(v26 + 20);
  if (*v27 == 1 && (v28 = *(a1 + *(type metadata accessor for LeaderboardEntry(0) + 24)), v28 <= 99))
  {
    v162 = v28;
    v29 = (a1 + *(v26 + 24));
    v30 = v29[5];
    v31 = v29[9];
    v160 = v29[13];
    v161 = v31;
    v178 = v30;
    swift_retain_n();
  }

  else
  {
    v161 = 0;
    v162 = 0;
    v178 = 0;
    v160 = 0;
  }

  v33 = *(v27 + 10);
  v32 = *(v27 + 11);
  v34 = v27[96];
  v167 = v12;
  v164 = v7;
  v165 = v3;
  v163 = v4;
  v145 = v26;
  v156 = v33;
  LODWORD(v155) = v34;
  v154 = v32;
  if (v32 == 1)
  {
    sub_24E88EBA4(&v235);
  }

  else
  {
    v35 = (a1 + *(v26 + 24));
    v36 = v35[5];
    v214 = v35[4];
    v215 = v36;
    v216 = v35[6];
    v37 = v35[1];
    v210 = *v35;
    v211 = v37;
    v38 = v35[2];
    v213 = v35[3];
    v212 = v38;
    *(v190 + 7) = v210;
    *(&v190[1] + 7) = v37;
    *(&v190[2] + 7) = v38;
    *(&v190[3] + 7) = v213;
    *(&v190[6] + 7) = v216;
    *(&v190[4] + 7) = v214;
    *(&v190[5] + 7) = v36;
    *v191 = v33;
    *&v191[8] = v32;
    v191[16] = v34 & 1;
    *&v191[65] = v190[3];
    *&v191[49] = v190[2];
    *&v191[33] = v190[1];
    *&v191[17] = v190[0];
    *&v191[128] = *(&v216 + 1);
    *&v191[113] = v190[6];
    *&v191[97] = v190[5];
    *&v191[81] = v190[4];
    CGSizeMake();
    sub_24E784FF8(&v210, &v235);
    v241 = *&v191[96];
    v242 = *&v191[112];
    v243 = *&v191[128];
    v237 = *&v191[32];
    v238 = *&v191[48];
    v240 = *&v191[80];
    v239 = *&v191[64];
    v236 = *&v191[16];
    v235 = *v191;
  }

  v157 = type metadata accessor for LeaderboardEntry(0);
  v39 = a1 + *(v157 + 20);
  v40 = *(v39 + 3);
  v153 = *(v39 + 2);
  v41 = type metadata accessor for PlayerAvatar.Overlay(0);
  v42 = *(*(v41 - 8) + 56);
  v42(v17, 1, 1, v41);
  memset(v191, 0, 40);
  v143 = a1;
  v43 = v169;
  v44 = *(v169 + 20);
  v45 = v158;
  v42(v158 + v44, 1, 1, v41);
  v46 = v45 + *(v43 + 24);
  memset(v190, 0, 40);
  *v46 = 0u;
  *(v46 + 16) = 0u;
  *(v46 + 32) = 0;
  sub_24E6AD46C(v156, v154);

  sub_24E61DA68(v190, v46, qword_27F21B590, &unk_24F93BE30);
  *v45 = v153;
  v45[1] = v40;
  sub_24E61DA68(v17, v45 + v44, &qword_27F22DF80, &unk_24F942E50);
  sub_24E61DA68(v191, v46, qword_27F21B590, &unk_24F93BE30);
  v191[0] = 7;
  v47 = v173;
  sub_24F8319B8(v45, v191, v173);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226F78, &qword_24F97CD10);
  v49 = v47 + *(v48 + 44);
  *(v49 + 24) = MEMORY[0x277CE1120];
  *(v49 + 32) = sub_24E63E454();
  v50 = v47 + *(v48 + 48);
  *v50 = swift_getKeyPath();
  *(v50 + 8) = 0;
  v51 = v143;
  v52 = (v143 + *(v145 + 24));
  sub_24F927618();
  sub_24F9238C8();
  v53 = (v47 + *(v170 + 36));
  v54 = v245;
  *v53 = v244;
  v53[1] = v54;
  v53[2] = v246;
  LOBYTE(v50) = sub_24F925838();
  sub_24F923318();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = v175;
  sub_24E6009C8(v47, v175, &qword_27F226F60, &qword_24F97CCF0);
  v64 = v63 + *(v171 + 36);
  *v64 = v50;
  *(v64 + 8) = v56;
  *(v64 + 16) = v58;
  *(v64 + 24) = v60;
  *(v64 + 32) = v62;
  *(v64 + 40) = 0;
  LOBYTE(v50) = sub_24F925868();
  sub_24F923318();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = v63;
  v74 = v172;
  sub_24E6009C8(v73, v172, &qword_27F226F68, &qword_24F97CCF8);
  v75 = v74 + *(v174 + 36);
  *v75 = v50;
  *(v75 + 8) = v66;
  *(v75 + 16) = v68;
  *(v75 + 24) = v70;
  *(v75 + 32) = v72;
  *(v75 + 40) = 0;
  sub_24E6009C8(v74, v177, &qword_27F226F70, &unk_24F97CD00);
  v76 = v52[3];
  v77 = v52[5];
  v221 = v52[4];
  v222 = v77;
  v78 = v52[5];
  v223 = v52[6];
  v79 = v52[1];
  v219[0] = *v52;
  v219[1] = v79;
  v80 = v52[2];
  v82 = *v52;
  v81 = v52[1];
  v220 = v52[3];
  v219[2] = v80;
  v83 = *(v27 + 1);
  v84 = *(v27 + 2);
  v85 = *(v27 + 4);
  v172 = *(v27 + 3);
  v173 = v83;
  v86 = *(v27 + 6);
  v171 = *(v27 + 5);
  LODWORD(v170) = v27[56];
  v87 = *(v27 + 9);
  v157 = *(v27 + 8);
  v158 = v87;
  v231 = v221;
  v232 = v78;
  v233 = v52[6];
  v227 = v82;
  v228 = v81;
  v88 = v220;
  v230 = v76;
  v229 = v80;

  v175 = v84;

  v174 = v85;

  v156 = v86;

  sub_24E784FF8(v219, v191);
  v146 = v88;

  LODWORD(v169) = sub_24F925838();
  sub_24F923318();
  v154 = v90;
  v155 = v89;
  v152 = v92;
  v153 = v91;
  v191[0] = 0;
  v151 = sub_24F925868();
  sub_24F923318();
  v149 = v94;
  v150 = v93;
  v147 = v96;
  v148 = v95;
  v97 = v51[1];
  v144 = *v51;
  v145 = v97;

  v98 = v168;
  sub_24F769764(v168);
  v99 = v163;
  v100 = v167;
  v101 = v165;
  (*(v163 + 104))(v167, *MEMORY[0x277CE0558], v165);
  (*(v99 + 56))(v100, 0, 1, v101);
  v102 = *(v159 + 48);
  v103 = v164;
  sub_24E60169C(v98, v164, &qword_27F215598, &qword_24F945EF0);
  v159 = v102;
  sub_24E60169C(v100, v103 + v102, &qword_27F215598, &qword_24F945EF0);
  v104 = *(v99 + 48);
  if (v104(v103, 1, v101) != 1)
  {
    v106 = v142;
    sub_24E60169C(v103, v142, &qword_27F215598, &qword_24F945EF0);
    v107 = v159;
    if (v104(v103 + v159, 1, v101) != 1)
    {
      v138 = v141;
      (*(v99 + 32))(v141, v103 + v107, v101);
      sub_24EAACF48(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v139 = sub_24F92AFF8();
      v140 = *(v99 + 8);
      v140(v138, v101);
      sub_24E601704(v167, &qword_27F215598, &qword_24F945EF0);
      sub_24E601704(v168, &qword_27F215598, &qword_24F945EF0);
      v140(v106, v101);
      sub_24E601704(v103, &qword_27F215598, &qword_24F945EF0);
      v105 = 0.0;
      if (v139)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    sub_24E601704(v167, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v168, &qword_27F215598, &qword_24F945EF0);
    (*(v99 + 8))(v106, v101);
LABEL_13:
    sub_24E601704(v103, &unk_27F254F20, &qword_24F940790);
LABEL_14:
    v105 = *(&v223 + 1) + *(&v223 + 1);
    goto LABEL_15;
  }

  sub_24E601704(v100, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v98, &qword_27F215598, &qword_24F945EF0);
  if (v104(v103 + v159, 1, v101) != 1)
  {
    goto LABEL_13;
  }

  sub_24E601704(v103, &qword_27F215598, &qword_24F945EF0);
  v105 = 0.0;
LABEL_15:
  v167 = *&v105;
  v168 = *(&v222 + 1);
  v185 = v241;
  v186 = v242;
  v187 = v243;
  v181 = v237;
  v182 = v238;
  v183 = v239;
  v184 = v240;
  v179 = v235;
  v180 = v236;
  v108 = v176;
  sub_24E60169C(v177, v176, &qword_27F226F70, &unk_24F97CD00);
  v109 = v186;
  v188[6] = v185;
  v188[7] = v186;
  v110 = v181;
  v111 = v182;
  v188[2] = v181;
  v188[3] = v182;
  v113 = v183;
  v112 = v184;
  v188[4] = v183;
  v188[5] = v184;
  v115 = v179;
  v114 = v180;
  v188[0] = v179;
  v188[1] = v180;
  v116 = v166;
  *(v166 + 128) = v185;
  *(v116 + 144) = v109;
  *(v116 + 64) = v110;
  *(v116 + 80) = v111;
  *(v116 + 96) = v113;
  *(v116 + 112) = v112;
  v117 = v178;
  *v116 = v162;
  *(v116 + 8) = v117;
  v118 = v160;
  *(v116 + 16) = v161;
  *(v116 + 24) = v118;
  v189 = v187;
  *(v116 + 160) = v187;
  *(v116 + 32) = v115;
  *(v116 + 48) = v114;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226F80, &qword_24F97CD40);
  sub_24E60169C(v108, v116 + v119[16], &qword_27F226F70, &unk_24F97CD00);
  v120 = v119[20];
  *(&v190[4] + 8) = v227;
  *(&v190[5] + 8) = v228;
  *(&v190[7] + 8) = v230;
  *(&v190[8] + 8) = v231;
  *(&v190[9] + 8) = v232;
  *(&v190[10] + 8) = v233;
  *&v190[0] = v173;
  *(&v190[0] + 1) = v175;
  *&v190[1] = v172;
  *(&v190[1] + 1) = v174;
  *&v190[2] = v171;
  v121 = v156;
  v122 = v157;
  *(&v190[2] + 1) = v156;
  LOBYTE(v190[3]) = v170;
  *(&v190[3] + 1) = *v234;
  DWORD1(v190[3]) = *&v234[3];
  *(&v190[3] + 1) = v157;
  v123 = v158;
  *&v190[4] = v158;
  *(&v190[6] + 8) = v229;
  BYTE8(v190[11]) = v169;
  HIDWORD(v190[11]) = *&v226[3];
  *(&v190[11] + 9) = *v226;
  v125 = v154;
  v124 = v155;
  *&v190[12] = v155;
  *(&v190[12] + 1) = v154;
  v127 = v152;
  v126 = v153;
  *&v190[13] = v153;
  *(&v190[13] + 1) = v152;
  LOBYTE(v190[14]) = 0;
  *(&v190[14] + 1) = *v225;
  DWORD1(v190[14]) = *&v225[3];
  v128 = v151;
  BYTE8(v190[14]) = v151;
  HIDWORD(v190[14]) = *&v224[3];
  *(&v190[14] + 9) = *v224;
  v130 = v149;
  v129 = v150;
  *&v190[15] = v150;
  *(&v190[15] + 1) = v149;
  v131 = v147;
  v132 = v148;
  *&v190[16] = v148;
  *(&v190[16] + 1) = v147;
  LOBYTE(v190[17]) = 0;
  memcpy((v116 + v120), v190, 0x111uLL);
  v133 = v116 + v119[24];
  *v133 = 0;
  *(v133 + 8) = 1;
  v134 = (v116 + v119[28]);

  sub_24E60169C(v188, v191, &qword_27F226F88, &qword_24F97CD48);
  sub_24E60169C(v190, v191, &qword_27F226F90, &qword_24F97CD50);
  v135 = v145;

  v136 = v146;

  *v134 = v144;
  v134[1] = v135;
  v134[2] = v136;
  v137 = v167;
  v134[3] = v168;
  v134[4] = v137;
  sub_24E601704(v177, &qword_27F226F70, &unk_24F97CD00);

  *&v191[120] = v230;
  v192 = v231;
  v193 = v232;
  v194 = v233;
  *&v191[72] = v227;
  *&v191[88] = v228;
  *v191 = v173;
  *&v191[8] = v175;
  *&v191[16] = v172;
  *&v191[24] = v174;
  *&v191[32] = v171;
  *&v191[40] = v121;
  v191[48] = v170;
  *&v191[49] = *v234;
  *&v191[52] = *&v234[3];
  *&v191[56] = v122;
  *&v191[64] = v123;
  *&v191[104] = v229;
  v195 = v169;
  *&v196[3] = *&v226[3];
  *v196 = *v226;
  v197 = v124;
  v198 = v125;
  v199 = v126;
  v200 = v127;
  v201 = 0;
  *v202 = *v225;
  *&v202[3] = *&v225[3];
  v203 = v128;
  *&v204[3] = *&v224[3];
  *v204 = *v224;
  v205 = v129;
  v206 = v130;
  v207 = v132;
  v208 = v131;
  v209 = 0;
  sub_24E601704(v191, &qword_27F226F90, &qword_24F97CD50);
  sub_24E601704(v176, &qword_27F226F70, &unk_24F97CD00);
  v216 = v185;
  v217 = v186;
  v218 = v187;
  v212 = v181;
  v213 = v182;
  v215 = v184;
  v214 = v183;
  v211 = v180;
  v210 = v179;
  sub_24E601704(&v210, &qword_27F226F88, &qword_24F97CD48);
}

uint64_t sub_24EAAC2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v47 = a2;
  v2 = sub_24F924258();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226F50, &unk_24F97CCD0);
  MEMORY[0x28223BE20](v46);
  v6 = &v41 - v5;
  v7 = sub_24F925218();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v41 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v14 - 8);
  v44 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v41 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = (&v41 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226F58, &unk_24F97CCE0);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v41 - v24;
  v26 = *(v3 + 56);
  v45 = v25;
  v48 = v2;
  v26(v23);
  type metadata accessor for BaseLeaderboardRowView(0);
  sub_24F769764(v21);
  (*(v8 + 104))(v18, *MEMORY[0x277CE0558], v7);
  (*(v8 + 56))(v18, 0, 1, v7);
  v27 = *(v11 + 56);
  sub_24E60169C(v21, v13, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v18, &v13[v27], &qword_27F215598, &qword_24F945EF0);
  v28 = *(v8 + 48);
  if (v28(v13, 1, v7) == 1)
  {
    sub_24E601704(v18, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v21, &qword_27F215598, &qword_24F945EF0);
    if (v28(&v13[v27], 1, v7) == 1)
    {
      sub_24E601704(v13, &qword_27F215598, &qword_24F945EF0);
      v29 = v45;
LABEL_9:
      v35 = sub_24F9257F8();
      sub_24F923318();
      *v6 = v35;
      *(v6 + 1) = v36;
      *(v6 + 2) = v37;
      *(v6 + 3) = v38;
      *(v6 + 4) = v39;
      v6[40] = 0;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226F40, &unk_24F97CCC0);
      sub_24EAACEBC();
      sub_24EAACF48(&qword_27F226F48, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE8]);
      sub_24F924E28();
      return sub_24E601704(v29, &qword_27F226F58, &unk_24F97CCE0);
    }

    goto LABEL_6;
  }

  sub_24E60169C(v13, v44, &qword_27F215598, &qword_24F945EF0);
  if (v28(&v13[v27], 1, v7) == 1)
  {
    sub_24E601704(v18, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v21, &qword_27F215598, &qword_24F945EF0);
    (*(v8 + 8))(v44, v7);
LABEL_6:
    sub_24E601704(v13, &unk_27F254F20, &qword_24F940790);
    v29 = v45;
    goto LABEL_7;
  }

  v31 = &v13[v27];
  v32 = v41;
  (*(v8 + 32))(v41, v31, v7);
  sub_24EAACF48(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v33 = v44;
  LODWORD(v43) = sub_24F92AFF8();
  v34 = *(v8 + 8);
  v34(v32, v7);
  sub_24E601704(v18, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v21, &qword_27F215598, &qword_24F945EF0);
  v34(v33, v7);
  sub_24E601704(v13, &qword_27F215598, &qword_24F945EF0);
  v29 = v45;
  if (v43)
  {
    goto LABEL_9;
  }

LABEL_7:
  v30 = v42;
  sub_24EAAC9C4(v29, v42);
  sub_24E6EB910(v30, v6);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226F40, &unk_24F97CCC0);
  sub_24EAACEBC();
  sub_24EAACF48(&qword_27F226F48, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE8]);
  sub_24F924E28();
  sub_24E6EB974(v30);
  return sub_24E601704(v29, &qword_27F226F58, &unk_24F97CCE0);
}