uint64_t sub_2205E33C0()
{
  v34 = type metadata accessor for StockFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v34, v0);
  v2 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205E9AA4(0, &qword_281297DE0, MEMORY[0x277D6D710]);
  v4 = v3;
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v29 - v6;
  sub_22055D1DC(0);
  v31 = v8 - 8;
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055CF9C(0);
  v13 = v12;
  v33 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v29 - v19;
  sub_22088B6BC();
  v35[4] = v35[5];
  sub_2205E9B98(0);
  sub_22044432C(&qword_281297CB0, sub_2205E9B98, MEMORY[0x277D6D8C8]);
  sub_22088BF9C();

  v21 = *(v33 + 16);
  v32 = v20;
  v21(v16, v20, v13);
  sub_22044432C(&qword_281296F28, sub_22055CF9C, MEMORY[0x277D6EC68]);
  sub_2208915BC();
  v22 = *(v31 + 44);
  sub_22044432C(&qword_281296F20, sub_22055CF9C, MEMORY[0x277D6EC70]);
  sub_22089199C();
  if (*&v11[v22] == v35[0])
  {
LABEL_5:
    v26 = 0;
  }

  else
  {
    v23 = (v30 + 16);
    v24 = (v30 + 8);
    while (1)
    {
      v25 = sub_2208919BC();
      (*v23)(v7);
      v25(v35, 0);
      sub_2208919AC();
      sub_22088B2AC();
      (*v24)(v7, v4);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      sub_2205E86C4(v2, type metadata accessor for StockFeedSectionDescriptor);
      sub_22089199C();
      if (*&v11[v22] == v35[0])
      {
        goto LABEL_5;
      }
    }

    sub_220459628(0);
    sub_2205E8724(&v2[*(v27 + 64)], &qword_281296C60, MEMORY[0x277D31C50]);
    v26 = 1;
  }

  sub_2205E86C4(v11, sub_22055D1DC);
  (*(v33 + 8))(v32, v13);
  return v26;
}

double sub_2205E3858(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if ((sub_22088C38C() & 1) == 0)
  {
    return sub_2205E38C8(a3, a4);
  }

  v6 = a3[3];
  v7 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v6);
  MEMORY[0x223D85A60](0, v6, v7);
  return result;
}

double sub_2205E38C8(void *a1, uint64_t a2)
{
  v5 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_22088845C();
  v8 = v7;
  v9 = *(v5 + 88);
  v10 = *(v9 + 96);
  v11 = *(v5 + 80);

  v19 = v10(v6, v8, a2, v11, v9);
  sub_22046DA2C(a1, v18);
  v12 = swift_allocObject();
  sub_220457328(v18, v12 + 16);
  sub_2205E7490(0, v13);
  sub_22044432C(&qword_281297D38, sub_2205E7490, MEMORY[0x277D6D890]);
  sub_22088B6DC();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_1((Strong + 88), *(Strong + 112));
    v15 = off_283424CD8;
    v16 = type metadata accessor for StockFeedTracker(0);
    v15(v16, &off_283424C98);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return result;
}

uint64_t sub_2205E3AD8()
{
  v1 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(*v0 + 128));
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v7 + 16))(v0, &off_283415908, v6, v7);
  v8 = *v0;
  sub_2205E9C00(0, &qword_281299050, MEMORY[0x277D69810], &type metadata for StocksActivity.Options, " options ");
  v10 = *(v9 + 48);
  v11 = *(v8 + 152);
  v12 = sub_22088685C();
  (*(*(v12 - 8) + 16))(v4, v0 + v11, v12);
  *&v4[v10] = 0;
  type metadata accessor for StocksActivity.StockFeed(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_22088BDBC();
  return sub_2205E86C4(v4, type metadata accessor for StocksActivity);
}

uint64_t sub_2205E3C9C()
{
  v1 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(*v0 + 128));
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v7 + 24))(v0, &off_283415908, v6, v7);
  v8 = *v0;
  sub_2205E9C00(0, &qword_281299050, MEMORY[0x277D69810], &type metadata for StocksActivity.Options, " options ");
  v10 = *(v9 + 48);
  v11 = *(v8 + 152);
  v12 = sub_22088685C();
  (*(*(v12 - 8) + 16))(v4, v0 + v11, v12);
  *&v4[v10] = 0;
  type metadata accessor for StocksActivity.StockFeed(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_22088BDAC();
  return sub_2205E86C4(v4, type metadata accessor for StocksActivity);
}

uint64_t sub_2205E3E60(unint64_t a1, uint64_t a2, char *a3)
{
  v4 = a2;
  sub_2205EA904(0, &qword_2812995A0, type metadata accessor for StockFeedRouteModel);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v18[-v8];
  v10 = type metadata accessor for StockFeedRouteModel(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *a3;
  v20 = v15;
  sub_2205E4088(a1, v4, &v20, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_2205E8724(v9, &qword_2812995A0, type metadata accessor for StockFeedRouteModel);
  }

  sub_2205E9F58(v9, v14, type metadata accessor for StockFeedRouteModel);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = v15;
    sub_22083D058(v14, &v19, Strong);
    swift_unknownObjectRelease();
  }

  return sub_2205E86C4(v14, type metadata accessor for StockFeedRouteModel);
}

uint64_t sub_2205E4088@<X0>(unint64_t a1@<X0>, int a2@<W1>, unsigned __int8 *a3@<X2>, id *a4@<X8>)
{
  v5 = v4;
  v110 = a2;
  v129 = a4;
  v127 = *v5;
  v8 = sub_220887C9C();
  v120 = *(v8 - 8);
  v121 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v109 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v113 = &v104 - v13;
  v14 = sub_22088822C();
  v114 = *(v14 - 8);
  v115 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v118 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_220884E9C();
  v123 = *(v17 - 8);
  v124 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v111 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205EA904(0, &qword_2812994E0, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v112 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v122 = &v104 - v25;
  v26 = sub_2208876BC();
  MEMORY[0x28223BE20](v26 - 8, v27);
  v119 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22088698C();
  v126 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v30);
  v107 = &v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v108 = &v104 - v34;
  MEMORY[0x28223BE20](v35, v36);
  v128 = (&v104 - v37);
  sub_2205603E4(0);
  MEMORY[0x28223BE20](v38 - 8, v39);
  v41 = &v104 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220454720(0);
  v43 = v42;
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v45);
  v47 = &v104 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v48, v49);
  v51 = &v104 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = *a3;
  sub_22055D328(0);
  v125 = a1;
  sub_22088AD8C();
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    v80 = type metadata accessor for StockFeedRouteModel(0);
    (*(*(v80 - 8) + 56))(v129, 1, 1, v80);
    return sub_2205E86C4(v51, type metadata accessor for StockFeedModel);
  }

  v52 = *(v44 + 32);
  v117 = v47;
  v52(v47, v51, v43);
  Strong = swift_unknownObjectWeakLoadStrong();
  v54 = v127;
  if (Strong)
  {
    sub_22083CE0C(Strong);
    swift_unknownObjectRelease();
  }

  sub_2208903FC();
  v55 = sub_22089030C();
  v56 = (*(*(v55 - 8) + 48))(v41, 1, v55);
  sub_2205E86C4(v41, sub_2205603E4);
  if (v56 != 1)
  {
    v57 = swift_unknownObjectWeakLoadStrong();
    if (v57)
    {
      __swift_project_boxed_opaque_existential_1((v57 + 88), *(v57 + 112));
      sub_22081A674(v125);
      swift_unknownObjectRelease();
    }
  }

  v58 = v128;
  v59 = v117;
  sub_22088FF6C();
  v60 = v126;
  v61 = (*(v126 + 88))(v58, v29);
  if (v61 != *MEMORY[0x277D69850])
  {
    if (v61 == *MEMORY[0x277D69840])
    {
      (*(v44 + 8))(v59, v43);
      (*(v60 + 96))(v58, v29);
      v82 = v129;
      *v129 = *v58;
      type metadata accessor for StocksActivity.Article(0);
      swift_storeEnumTagMultiPayload();
      v83 = type metadata accessor for StockFeedRouteModel(0);
      swift_storeEnumTagMultiPayload();
      return (*(*(v83 - 8) + 56))(v82, 0, 1, v83);
    }

    goto LABEL_20;
  }

  v106 = v43;
  (*(v60 + 96))(v58, v29);
  v62 = *v58;
  v63 = [*v58 routeURL];
  v105 = v44;
  v104 = v62;
  if (!v63)
  {
    v84 = v122;
    (*(v123 + 56))(v122, 1, 1, v124);
    sub_2205E8724(v84, &qword_2812994E0, MEMORY[0x277CC9260]);
    sub_220887EDC();
    swift_allocObject();
    v85 = sub_220887ECC();
    v86 = *(*v5 + 184);
    *(v5 + v86) = v85;

    v87 = *(v5 + *(*v5 + 136));

    sub_22088AD4C();
    if (*(v5 + v86))
    {
      v130 = v87;
      sub_2205E8780(0);
      v89 = v88;
      swift_allocObject();

      v124 = sub_2208873CC();
      sub_22088AD4C();
      swift_unknownObjectRetain();
      v90 = v108;
      v79 = v117;
      sub_22088FF6C();
      v91 = v126;
      (*(v126 + 16))(v107, v90, v29);
      sub_2208928FC();
      (*(v91 + 8))(v90, v29);
      sub_2208881DC();
      v131 = v89;
      v132 = sub_22044432C(&unk_281299590, sub_2205E8780, MEMORY[0x277D2F928]);
      v130 = v124;
      v54 = v127;
      swift_getWitnessTable();
      sub_220887E9C();
      swift_allocObject();

      sub_220887E8C();
      v93 = v120;
      v92 = v121;
      v94 = MEMORY[0x277D2FEF8];
      if ((v110 & 1) == 0)
      {
        v94 = MEMORY[0x277D2FF08];
      }

      v95 = v109;
      (*(v120 + 104))(v109, *v94, v121);
      v76 = v119;
      sub_2208876AC();

      v96 = v95;
      v78 = v106;
      (*(v93 + 8))(v96, v92);
      v77 = v129;
      goto LABEL_17;
    }

    __break(1u);
LABEL_20:
    result = sub_2208928AC();
    __break(1u);
    return result;
  }

  v64 = v111;
  v65 = v63;
  sub_220884E4C();

  v67 = v122;
  v66 = v123;
  v68 = v124;
  (*(v123 + 32))(v122, v64, v124);
  v69 = *(v66 + 56);
  v69(v67, 0, 1, v68);
  v70 = MEMORY[0x277CC9260];
  sub_2205E8724(v67, &qword_2812994E0, MEMORY[0x277CC9260]);
  swift_unknownObjectRetain();
  v71 = v118;
  sub_2208881FC();
  v72 = v112;
  v69(v112, 1, 1, v68);
  v74 = v120;
  v73 = v121;
  v75 = v113;
  (*(v120 + 104))(v113, *MEMORY[0x277D2FF08], v121);
  v76 = v119;
  sub_22088767C();
  (*(v74 + 8))(v75, v73);
  sub_2205E8724(v72, &qword_2812994E0, v70);
  (*(v114 + 8))(v71, v115);
  v77 = v129;
  v78 = v106;
  v79 = v117;
LABEL_17:
  sub_2205E89AC(v76, v77, MEMORY[0x277D2FB40]);
  v97 = 2 * (v116 != 0);
  sub_22052EC94(0);
  v99 = *(v98 + 48);
  sub_2204481D8(0);
  v101 = (v77 + *(v100 + 64));
  *(v77 + *(v100 + 48)) = v97;
  v101[3] = v54;
  v101[4] = &off_283415930;

  swift_unknownObjectRelease();
  *v101 = v5;
  sub_2205E86C4(v76, MEMORY[0x277D2FB40]);
  (*(v105 + 8))(v79, v78);
  type metadata accessor for StocksActivity.Article(0);
  swift_storeEnumTagMultiPayload();
  v102 = type metadata accessor for StockFeedRouteModel(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v102 - 8) + 56))(v77, 0, 1, v102);
  v103 = sub_220885CDC();
  return (*(*(v103 - 8) + 8))(v128 + v99, v103);
}

void sub_2205E4E14(uint64_t a1)
{
  v27 = a1;
  v2 = *v1;
  v3 = type metadata accessor for StockEarningsModel(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  v7 = sub_220889A6C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v27 - v14;
  v28 = [objc_allocWithZone(MEMORY[0x277CC5A40]) init];
  v16 = [objc_opt_self() authorizationStatusForEntityType_];
  if ((v16 - 1) >= 2)
  {
    if ((v16 - 3) >= 2)
    {
      if (!v16)
      {
        sub_2205E89AC(v27, &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StockEarningsModel);
        v23 = (*(v4 + 80) + 40) & ~*(v4 + 80);
        v24 = swift_allocObject();
        v24[2] = *(v2 + 80);
        v24[3] = *(v2 + 88);
        v24[4] = v1;
        sub_2205E9F58(&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for StockEarningsModel);
        aBlock[4] = sub_2205E74B0;
        aBlock[5] = v24;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_2205E5518;
        aBlock[3] = &block_descriptor_11;
        v25 = _Block_copy(aBlock);

        [v28 requestWriteOnlyAccessToEventsWithCompletion_];

        _Block_release(v25);
        return;
      }
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v18 = Strong;
        (*(v8 + 104))(v15, *MEMORY[0x277D689A0], v7);
        v19 = swift_unknownObjectWeakLoadStrong();
        if (v19)
        {
          sub_2205E7534(v18, v15, v27, v19);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();

        (*(v8 + 8))(v15, v7);
        return;
      }
    }

    goto LABEL_15;
  }

  v20 = swift_unknownObjectWeakLoadStrong();
  if (!v20)
  {
LABEL_15:
    v26 = v28;

    return;
  }

  v21 = v20;
  (*(v8 + 104))(v11, *MEMORY[0x277D68998], v7);
  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    sub_2205E7534(v21, v11, v27, v22);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  (*(v8 + 8))(v11, v7);
}

double sub_2205E5238(int a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = type metadata accessor for StockEarningsModel(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  sub_2205E89AC(a4, &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StockEarningsModel);
  v11 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v12 = swift_allocObject();
  v12[2] = *(v6 + 80);
  v12[3] = *(v6 + 88);
  v12[4] = a3;
  sub_2205E9F58(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for StockEarningsModel);

  sub_220888FEC();

  return result;
}

uint64_t sub_2205E53E4(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_220889A6C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    (*(v6 + 104))(v9, *a3, v5);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_2205E7534(v11, v9, a2, Strong);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

void sub_2205E5518(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_2205E5648()
{
  *(v0 + *(*v0 + 184)) = 0;

  sub_2205E2118(0);
  v1 = sub_220620398();
  sub_22044D56C(0, &qword_28127E420, 0x277D86200);
  v3 = sub_2208922DC();
  v2 = sub_220891AFC();
  if (v1)
  {
    sub_22088A7EC("StockFeed will auto-refresh news", 32, 2, &dword_22043F000, v3, v2, MEMORY[0x277D84F90]);

    sub_2205E5780();
  }

  else
  {
    sub_22088A7EC("StockFeed will not auto-refresh news because not enough time has passed", 71, 2, &dword_22043F000, v3, v2, MEMORY[0x277D84F90]);
  }
}

void sub_2205E5780()
{
  sub_220888FBC();
  sub_22044D56C(0, &qword_28127E7C0, 0x277D85C78);
  v0 = sub_220891D0C();
  sub_220888E6C();

  v1 = sub_220891D0C();
  sub_220888EAC();
}

double sub_2205E58D0(uint64_t a1)
{
  v2 = v1;
  v47 = *v1;
  sub_22046EAA0(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v48 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v46 = &v40 - v9;
  v45 = type metadata accessor for StockFeedQuoteData(0);
  MEMORY[0x28223BE20](v45, v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_220886A4C();
  v13 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_220885D4C();
  v44 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205EA904(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v40 - v23;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v41 = v17;
    v25 = sub_22088676C();
    v26 = *(v25 - 8);
    v27 = *(v26 + 16);
    v42 = a1;
    v27(v24, a1, v25);
    (*(v26 + 56))(v24, 0, 1, v25);
    v28 = (*(v2 + *(*v2 + 120)) + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_watchlistManager);
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    sub_2208863EC();
    sub_2208869CC();
    (*(v13 + 8))(v16, v43);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_2205E8A14(v24, v20, Strong);
      swift_unknownObjectRelease();
    }

    v30 = v41;
    swift_unknownObjectRelease();
    (*(v44 + 8))(v20, v30);
    sub_2205E8724(v24, &qword_2812990C0, MEMORY[0x277D697F8]);
    a1 = v42;
  }

  v31 = sub_22088676C();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v12, a1, v31);
  (*(v32 + 56))(v12, 0, 1, v31);
  v33 = *(v45 + 20);
  v34 = sub_2208855EC();
  (*(*(v34 - 8) + 56))(&v12[v33], 1, 1, v34);
  v35 = v46;
  sub_2205E04EC(v46);
  v36 = v48;
  sub_2205E0728(v48);
  v37 = (*(*(v47 + 88) + 88))(v12, 0, v35, v36, *(v47 + 80));
  sub_2205E86C4(v36, sub_22046EAA0);
  sub_2205E86C4(v35, sub_22046EAA0);
  sub_2205E86C4(v12, type metadata accessor for StockFeedQuoteData);
  v49 = v37;
  sub_2205E7490(0, v38);
  sub_22044432C(&qword_281297D38, sub_2205E7490, MEMORY[0x277D6D890]);
  sub_22088B6DC();

  return result;
}

double sub_2205E5EB8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  sub_22046EAA0(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v17 - v12;
  sub_2205E04EC(v17 - v12);
  sub_2205E0728(v9);
  v14 = (*(*(v5 + 88) + 88))(a1, a3, v13, v9, *(v5 + 80));
  sub_2205E86C4(v9, sub_22046EAA0);
  sub_2205E86C4(v13, sub_22046EAA0);
  v17[1] = v14;
  sub_2205E7490(0, v15);
  sub_22044432C(&qword_281297D38, sub_2205E7490, MEMORY[0x277D6D890]);
  sub_22088B6DC();

  return result;
}

double sub_2205E6084(void *a1, uint64_t a2)
{
  (*(*(*a2 + 88) + 56))(*a1, *(*a2 + 80));
  sub_2205E7490(0, v2);
  sub_22044432C(&qword_281297D38, sub_2205E7490, MEMORY[0x277D6D890]);
  sub_22088B6DC();

  return result;
}

void sub_2205E6184(uint64_t a1)
{
  v1 = sub_220891ADC();
  sub_2205E840C(0, &qword_28127DE60, &qword_28127DE10, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_220899360;
  sub_2204446D4(0, &qword_28127DE30, MEMORY[0x277D84948]);
  sub_22089264C();
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_22048D860();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_22044D56C(0, &qword_28127E420, 0x277D86200);
  v3 = sub_2208922DC();
  sub_22088A7EC("Failed to refresh the news feed, keeping cached headlines around, error=%{public}@", 82, 2, &dword_22043F000, v3, v1, v2);
}

double sub_2205E62C4(uint64_t a1)
{
  (*(*(*v1 + 88) + 104))(a1, *(*v1 + 80));
  sub_2205E7490(0, v2);
  sub_22044432C(&qword_281297D38, sub_2205E7490, MEMORY[0x277D6D890]);
  sub_22088B6DC();
  sub_2205EA534();

  sub_2208886AC();

  return result;
}

uint64_t sub_2205E6458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = a3;
  v63 = a2;
  v75 = a1;
  sub_2205EA904(0, &qword_281299820, MEMORY[0x277D2D430]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v64 = &v58 - v6;
  v7 = sub_22088ECCC();
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v58 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_22088971C();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v10);
  v60 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205EA904(0, &qword_2812993D0, MEMORY[0x277CC9AF8]);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v72 = &v58 - v14;
  v71 = sub_2208854AC();
  v74 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v15);
  v73 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205EA904(0, &unk_281297FA0, sub_22055D328);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v58 - v19;
  sub_22055D328(0);
  v22 = v21;
  v76 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055CF9C(0);
  v27 = v26;
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v29);
  v70 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v58 - v33;
  v67 = v3;
  v69 = *(v3 + 32);
  sub_22088B6BC();
  v79 = v77[0];
  sub_2205E9B98(0);
  v36 = v35;
  sub_22044432C(&qword_281297CB0, sub_2205E9B98, MEMORY[0x277D6D8C8]);
  v68 = v36;
  sub_22088BF9C();

  sub_2208881EC();
  sub_22088E70C();
  v37 = v76;

  if ((*(v37 + 48))(v20, 1, v22) == 1)
  {
    (*(v28 + 8))(v34, v27);
    v38 = &unk_281297FA0;
    v39 = sub_22055D328;
    v40 = v20;
    return sub_2205E8724(v40, v38, v39);
  }

  (*(v37 + 32))(v25, v20, v22);
  v41 = v72;
  sub_22088E7EC();
  v42 = v74;
  v43 = v71;
  if ((*(v74 + 48))(v41, 1, v71) == 1)
  {
    (*(v37 + 8))(v25, v22);
    (*(v28 + 8))(v34, v27);
    v38 = &qword_2812993D0;
    v39 = MEMORY[0x277CC9AF8];
    v40 = v41;
    return sub_2205E8724(v40, v38, v39);
  }

  v75 = v22;
  (*(v42 + 32))(v73, v41, v43);
  sub_22088B6BC();
  v79 = v77[0];
  v45 = v70;
  sub_22088BF9C();

  sub_22044432C(&qword_281293DE0, type metadata accessor for StockFeedModel, &unk_2208B4CC8);
  v46 = sub_22088E7FC();
  v47 = *(v28 + 8);
  result = v47(v45, v27);
  if (v46 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v46 > 0x7FFFFFFF)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v48 = v25;
  v72 = v47;
  v49 = v60;
  sub_22088970C();
  sub_22044432C(&qword_281298470, MEMORY[0x277D68720], MEMORY[0x277D68718]);
  v50 = v62;
  sub_2208872CC();
  (*(v61 + 8))(v49, v50);
  sub_22044432C(&qword_2812995A8, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FD4);
  v51 = v34;
  v52 = v64;
  sub_22088E78C();
  v54 = v65;
  v53 = v66;
  if ((*(v65 + 48))(v52, 1, v66) == 1)
  {
    sub_2205E8724(v52, &qword_281299820, MEMORY[0x277D2D430]);
  }

  else
  {
    v70 = v48;
    v55 = v27;
    v56 = v58;
    (*(v54 + 32))(v58, v52, v53);
    sub_2205EA414(v59, v77);
    if (v78)
    {
      __swift_project_boxed_opaque_existential_1(v77, v78);
      sub_22044432C(&qword_2812995B0, MEMORY[0x277D2D430], MEMORY[0x277D2D428]);
      sub_22088ED7C();
      (*(v54 + 8))(v56, v53);
      __swift_destroy_boxed_opaque_existential_1(v77);
    }

    else
    {
      (*(v54 + 8))(v56, v53);
      sub_2205EA4A4(v77);
    }

    v27 = v55;
    v48 = v70;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_2205EA120(v73, Strong);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  (*(v74 + 8))(v73, v43);
  (*(v76 + 8))(v48, v75);
  return (v72)(v51, v27);
}

uint64_t sub_2205E6E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v45 = a2;
  v2 = sub_22088698C();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220454720(0);
  v39 = v5;
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v36 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v42, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205EA904(0, &unk_281297FA0, sub_22055D328);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v36 - v13;
  sub_22055D328(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v18);
  v43 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055CF9C(0);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088B6BC();
  v46 = v47;
  sub_2205E9B98(0);
  sub_22044432C(&qword_281297CB0, sub_2205E9B98, MEMORY[0x277D6D8C8]);
  sub_22088BF9C();

  sub_2208881EC();
  sub_22088E70C();

  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    (*(v22 + 8))(v25, v21);
    sub_2205E8724(v14, &unk_281297FA0, sub_22055D328);
    v26 = sub_2208898CC();
    return (*(*(v26 - 8) + 56))(v45, 1, 1, v26);
  }

  else
  {
    (*(v17 + 32))(v43, v14, v16);
    v28 = v10;
    sub_22088AD8C();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v29 = v36;
      v30 = v37;
      v31 = v28;
      v32 = v39;
      (*(v37 + 32))(v36, v31, v39);
      v33 = v38;
      sub_22088FF6C();
      sub_22057BB68();
      (*(v40 + 8))(v33, v41);
      (*(v30 + 8))(v29, v32);
      (*(v17 + 8))(v43, v16);
      (*(v22 + 8))(v25, v21);
      v34 = sub_2208898CC();
      return (*(*(v34 - 8) + 56))(v45, 0, 1, v34);
    }

    else
    {
      (*(v17 + 8))(v43, v16);
      (*(v22 + 8))(v25, v21);
      v35 = sub_2208898CC();
      (*(*(v35 - 8) + 56))(v45, 1, 1, v35);
      return sub_2205E86C4(v10, type metadata accessor for StockFeedModel);
    }
  }
}

void sub_2205E7454()
{
  sub_2205E2118(1);

  sub_2205E5780();
}

double sub_2205E74B0(int a1, uint64_t a2)
{
  v5 = *(type metadata accessor for StockEarningsModel(0) - 8);
  v6 = *(v2 + 32);
  v7 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_2205E5238(a1, a2, v6, v7);
}

void sub_2205E7534(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v114 = a4;
  v108 = a3;
  *&v111 = a1;
  sub_2205EA904(0, &qword_2812994E0, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v98 = &v97 - v7;
  v113 = sub_22088990C();
  v110 = *(v113 - 8);
  v8 = *(v110 + 64);
  MEMORY[0x28223BE20](v113, v9);
  v112 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v115 = &v97 - v12;
  v13 = sub_2208853AC();
  v105 = *(v13 - 8);
  v106 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v104 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046EAA0(0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v107 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_22088543C();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103, v19);
  v101 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_2208853CC();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100, v21);
  v109 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_220889A6C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23, v26);
  v27 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v97 - v30;
  v34 = MEMORY[0x28223BE20](v32, v33);
  v36 = &v97 - v35;
  v37 = *(v24 + 16);
  v37(&v97 - v35, a2, v23, v34);
  v38 = (*(v24 + 88))(v36, v23);
  if (v38 == *MEMORY[0x277D68998])
  {
    v39 = *(v24 + 104);
    v40 = v31;
    v97 = v31;
    v39(v31, v38, v23);
    v41 = v110;
    v42 = *(v110 + 104);
    v109 = v8;
    v43 = v115;
    v44 = v113;
    v42();
    *&v111 = *(*__swift_project_boxed_opaque_existential_1((v111 + 88), *(v111 + 112)) + 16);
    (v37)(v27, v40, v23);
    v45 = v112;
    (*(v41 + 16))(v112, v43, v44);
    v46 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v47 = (v25 + *(v41 + 80) + v46) & ~*(v41 + 80);
    v48 = swift_allocObject();
    (*(v24 + 32))(v48 + v46, v27, v23);
    (*(v41 + 32))(v48 + v47, v45, v44);
    sub_22088726C();

    (*(v41 + 8))(v115, v44);
    (*(v24 + 8))(v97, v23);
    v122 = &type metadata for CalendarAccessRequestAlert;
    v123 = sub_2205E83B8();
    sub_22088E0CC();
    swift_allocObject();
    sub_22088E07C();
    sub_22088E09C();

    sub_22088E08C();

    return;
  }

  if (v38 != *MEMORY[0x277D689A0])
  {
    (*(v24 + 8))(v36, v23);
    return;
  }

  v49 = [objc_allocWithZone(MEMORY[0x277CC5A40]) init];
  v50 = [objc_opt_self() eventWithEventStore_];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v52 = objc_opt_self();
  v53 = v50;
  v112 = v52;
  v113 = ObjCClassFromMetadata;
  v54 = [v52 bundleForClass_];
  sub_220884CAC();

  sub_2205E840C(0, &qword_28127DE60, &qword_28127DE10, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v110 = v55;
  v56 = swift_allocObject();
  v111 = xmmword_220899360;
  *(v56 + 16) = xmmword_220899360;
  v57 = v108;
  v58 = sub_22088684C();
  v60 = v59;
  *(v56 + 56) = MEMORY[0x277D837D0];
  v61 = sub_22048D860();
  *(v56 + 64) = v61;
  *(v56 + 32) = v58;
  *(v56 + 40) = v60;
  sub_22089139C();

  v62 = sub_22089132C();

  [v53 setTitle_];

  v115 = v49;
  v63 = [v49 defaultCalendarForNewEvents];
  [v53 setCalendar_];

  sub_22088538C();
  v64 = type metadata accessor for StockEarningsModel(0);
  (*(v102 + 16))(v101, v57 + *(v64 + 28), v103);
  sub_22088539C();
  v66 = v105;
  v65 = v106;
  v67 = v104;
  (*(v105 + 104))(v104, *MEMORY[0x277CC9980], v106);
  v68 = v107;
  sub_22088537C();
  (*(v66 + 8))(v67, v65);
  v69 = sub_22088516C();
  v70 = *(v69 - 8);
  if ((*(v70 + 48))(v68, 1, v69) == 1)
  {
    __break(1u);
    return;
  }

  v71 = sub_22088509C();
  (*(v70 + 8))(v68, v69);
  [v53 setStartDate_];

  v72 = sub_22088509C();
  [v53 setEndDate_];

  [v53 setAllDay_];
  [v53 setAvailability_];
  v73 = sub_22088684C();
  v120 = 0xD000000000000020;
  v121 = 0x80000002208C4FA0;
  MEMORY[0x223D89680](v73);

  v74 = v98;
  sub_220884E8C();

  v75 = sub_220884E9C();
  v76 = *(v75 - 8);
  v77 = 0;
  if ((*(v76 + 48))(v74, 1, v75) != 1)
  {
    v77 = sub_220884E3C();
    (*(v76 + 8))(v74, v75);
  }

  [v53 setURL_];

  v78 = [v112 bundleForClass_];
  sub_220884CAC();

  v79 = swift_allocObject();
  *(v79 + 16) = v111;
  v80 = sub_2208867BC();
  *(v79 + 56) = MEMORY[0x277D837D0];
  *(v79 + 64) = v61;
  *(v79 + 32) = v80;
  *(v79 + 40) = v81;
  v82 = sub_22089139C();
  v84 = v83;

  v85 = sub_2208867BC();
  v87 = v86;
  v88 = sub_2205E0428(v85, v86);
  if (!v89)
  {
    goto LABEL_14;
  }

  if (v88 != 46 || v89 != 0xE100000000000000)
  {
    v90 = sub_2208928BC();

    if (v90)
    {
      goto LABEL_13;
    }

LABEL_14:

    goto LABEL_15;
  }

LABEL_13:
  v120 = v82;
  v121 = v84;
  v118 = v85;
  v119 = v87;

  MEMORY[0x223D89680](46, 0xE100000000000000);
  v116 = v85;
  v117 = v87;
  sub_22059B6A4();
  sub_22089236C();

LABEL_15:
  v91 = v114;
  v92 = v100;
  v93 = v99;
  v94 = sub_22089132C();

  [v53 setNotes_];

  v95 = [objc_allocWithZone(MEMORY[0x277CC5B70]) init];
  [v95 setEditViewDelegate_];
  [v95 setEvent_];
  v96 = v115;
  [v95 setEventStore_];
  [v91 presentViewController:v95 animated:1 completion:0];

  (*(v93 + 8))(v109, v92);
}

uint64_t sub_2205E82E4(uint64_t a1)
{
  v3 = *(sub_220889A6C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_22088990C() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_22081C600(a1, v1 + v4, v7);
}

unint64_t sub_2205E83B8()
{
  result = qword_27CF57768;
  if (!qword_27CF57768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57768);
  }

  return result;
}

void sub_2205E840C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2204446D4(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for StockEarningsModel(0);
  v2 = (*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  v4 = sub_22088685C();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = v1[5];
  v6 = sub_22088516C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v2 + v5, v6);
  v9 = v1[6];
  if (!(*(v7 + 48))(v0 + v2 + v9, 1, v6))
  {
    v8(v3 + v9, v6);
  }

  v10 = v1[7];
  v11 = sub_22088543C();
  (*(*(v11 - 8) + 8))(v3 + v10, v11);

  return swift_deallocObject();
}

uint64_t sub_2205E86C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2205E8724(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2205EA904(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2205E8780(uint64_t a1)
{
  if (!qword_281299570)
  {
    sub_2205E88C0(255);
    sub_22044432C(&qword_281297880, sub_2205E88C0, MEMORY[0x277D6DF38]);
    sub_22044432C(&unk_281299578, type metadata accessor for StockFeedLayoutModel, &unk_22089F3A0);
    sub_22044432C(&qword_28128E7E0, type metadata accessor for StockFeedLayoutModel, &unk_22089F3F0);
    sub_22044432C(&qword_281299588, type metadata accessor for StockFeedLayoutModel, &unk_22089F3C8);
    v1 = sub_2208873DC();
    if (!v2)
    {
      atomic_store(v1, &qword_281299570);
    }
  }
}

void sub_2205E88C0(uint64_t a1)
{
  if (!qword_281297878)
  {
    type metadata accessor for StockFeedLayoutSectionDescriptor(255);
    type metadata accessor for StockFeedLayoutModel(255);
    sub_22044432C(qword_281283F90, type metadata accessor for StockFeedLayoutSectionDescriptor, &unk_2208AA7FC);
    sub_22044432C(qword_28128E7F8, type metadata accessor for StockFeedLayoutModel, &unk_22089F1C8);
    v1 = sub_22088C63C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297878);
    }
  }
}

uint64_t sub_2205E89AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2205E8A14(uint64_t a1, uint64_t a2, char *a3)
{
  v135 = a2;
  v136 = sub_220885D4C();
  v134 = *(v136 - 8);
  MEMORY[0x28223BE20](v136, v5);
  v133 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_2208852DC();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132, v7);
  v130 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_2208857EC();
  v127 = *(v129 - 8);
  MEMORY[0x28223BE20](v129, v9);
  v128 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_22088699C();
  v146 = *(v138 - 8);
  MEMORY[0x28223BE20](v138, v11);
  v122 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v144 = &v121 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v19 = (&v121 - v18);
  v20 = MEMORY[0x277D697F8];
  sub_2205EA904(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v121 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v121 - v27;
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v121 - v31;
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v121 - v35;
  MEMORY[0x28223BE20](v37, v38);
  v40 = &v121 - v39;
  v125 = type metadata accessor for PriceViewModel(0);
  MEMORY[0x28223BE20](v125, v41);
  v145 = (&v121 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = OBJC_IVAR____TtC8StocksUI23StockFeedViewController_latestQuote;
  swift_beginAccess();
  sub_22056BA7C(a1, &a3[v43]);
  v44 = swift_endAccess();
  sub_2206434EC(v44, v45);
  sub_2204B27FC(a1, v40, &qword_2812990C0, v20);
  v147 = a3;
  v137 = OBJC_IVAR____TtC8StocksUI23StockFeedViewController_stock;
  v143 = v19;
  sub_2208867CC();
  sub_2204B27FC(v40, v36, &qword_2812990C0, v20);
  v46 = sub_22088676C();
  v47 = *(v46 - 8);
  v48 = *(v47 + 48);
  if (v48(v36, 1, v46) == 1)
  {
    sub_2205E8724(v36, &qword_2812990C0, MEMORY[0x277D697F8]);
    v142 = 0.0;
    LODWORD(v148) = 1;
  }

  else
  {
    v142 = COERCE_DOUBLE(sub_22088675C());
    LODWORD(v148) = v49;
    (*(v47 + 8))(v36, v46);
  }

  sub_2204B27FC(v40, v32, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v48(v32, 1, v46) == 1)
  {
    sub_2205E8724(v32, &qword_2812990C0, MEMORY[0x277D697F8]);
    v139 = 0.0;
    v141 = 1;
  }

  else
  {
    v139 = COERCE_DOUBLE(sub_22088666C());
    v141 = v50;
    (*(v47 + 8))(v32, v46);
  }

  sub_2204B27FC(v40, v28, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v48(v28, 1, v46) == 1)
  {
    sub_2205E8724(v28, &qword_2812990C0, MEMORY[0x277D697F8]);
    v124 = 0;
    LODWORD(v123) = 1;
  }

  else
  {
    v124 = sub_22088671C();
    LODWORD(v123) = v51;
    (*(v47 + 8))(v28, v46);
  }

  v126 = v40;
  sub_2204B27FC(v40, v24, &qword_2812990C0, MEMORY[0x277D697F8]);
  v52 = v48(v24, 1, v46);
  v53 = v138;
  v54 = v146;
  if (v52 == 1)
  {
    sub_2205E8724(v24, &qword_2812990C0, MEMORY[0x277D697F8]);
    v140 = 0;
    v55 = 0;
  }

  else
  {
    v140 = sub_22088668C();
    v55 = v56;
    (*(v47 + 8))(v24, v46);
  }

  v57 = v130;
  v58 = v127;
  v59 = v128;
  v60 = (v54 + 16);
  v61 = *(v54 + 16);
  v62 = v144;
  v61(v144, v143, v53);
  v63 = v129;
  v58[13](v59, *MEMORY[0x277D69288], v129);
  sub_22088524C();
  v64 = v59;
  v65 = v145;
  *v145 = v142;
  *(v65 + 8) = v148 & 1;
  v65[2] = v139;
  *(v65 + 24) = v141 & 1;
  *(v65 + 4) = v124;
  *(v65 + 40) = v123 & 1;
  *(v65 + 6) = v140;
  *(v65 + 7) = v55;
  v130 = v55;
  v66 = v125;
  v124 = *(v125 + 40);
  v67 = v62;
  v68 = v64;
  v128 = v60;
  v127 = v61;
  v61(v65 + v124, v67, v53);
  *(v65 + 8) = 9666786;
  v65[9] = -4.19867257e-140;
  v69 = v58[2];
  v123 = *(v66 + 36);
  v69(v65 + v123, v68, v63);
  v70 = v131;
  v71 = v132;
  (*(v131 + 16))(v65 + *(v66 + 44), v57, v132);
  if (qword_281294078 != -1)
  {
    swift_once();
  }

  v72 = qword_2812B6B48;
  (v58[1])(v68, v63);
  v73 = *(v146 + 8);
  v129 = v146 + 8;
  v73(v144, v53);
  v74 = v143;
  v143 = v73;
  v73(v74, v53);
  sub_2205E8724(v126, &qword_2812990C0, MEMORY[0x277D697F8]);
  v75 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  swift_beginAccess();
  v76 = *(v70 + 40);
  v144 = v72;
  v76(v72 + v75, v57, v71);
  swift_endAccess();
  v78 = v133;
  v77 = v134;
  v79 = v136;
  (*(v134 + 16))(v133, v135, v136);
  v80 = (*(v77 + 88))(v78, v79);
  if (v80 != *MEMORY[0x277D69480])
  {
    if (v80 == *MEMORY[0x277D69468])
    {
      if (((v148 | v141) & 1) == 0)
      {
        if (v142 - v139 <= 0.0)
        {
          v86 = 0.0;
        }

        else
        {
          v86 = v139 / (v142 - v139);
        }

        if (qword_27CF55AB8 == -1)
        {
          goto LABEL_39;
        }

        goto LABEL_71;
      }
    }

    else
    {
      if (v80 != *MEMORY[0x277D69478])
      {
LABEL_73:
        result = sub_2208928AC();
        __break(1u);
        return result;
      }

      if ((sub_2208857CC() & 1) == 0)
      {
        v82 = sub_220691100(0);
        v81 = v91;
        goto LABEL_43;
      }

      if (((v148 | v141) & 1) == 0)
      {
        if (v142 - v139 <= 0.0)
        {
          v86 = 0.0;
        }

        else
        {
          v86 = v139 / (v142 - v139);
        }

        if (qword_27CF55AB8 == -1)
        {
LABEL_39:
          v87 = qword_27CF6D008;
          v88 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
          v89 = [v87 stringFromNumber_];

          if (v89)
          {
            v82 = sub_22089136C();
            v81 = v90;

            goto LABEL_43;
          }

          goto LABEL_41;
        }

LABEL_71:
        swift_once();
        goto LABEL_39;
      }
    }

LABEL_41:
    v81 = 0xA300000000000000;
    v82 = 9666786;
    goto LABEL_43;
  }

  v81 = 0xA300000000000000;
  v82 = 9666786;
  if ((v141 & 1) == 0)
  {
    v83 = v142 >= 5.0;
    if (v142 == 0.0)
    {
      v83 = 1;
    }

    v84 = sub_2204DBC04(v83 & ~v148, v139);
    if (v85)
    {
      v82 = v84;
    }

    else
    {
      v82 = 9666786;
    }

    if (v85)
    {
      v81 = v85;
    }
  }

LABEL_43:
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v93 = [objc_opt_self() bundleForClass_];
  v94 = sub_220884CAC();

  sub_2205E840C(0, &qword_28127DE60, &qword_28127DE10, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_22089B140;
  v96 = sub_22088684C();
  v98 = v97;
  v99 = MEMORY[0x277D837D0];
  *(v95 + 56) = MEMORY[0x277D837D0];
  v100 = sub_22048D860();
  *(v95 + 64) = v100;
  *(v95 + 32) = v96;
  *(v95 + 40) = v98;
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298FC0 != -1)
  {
    swift_once();
  }

  sub_220886B9C();

  v101 = 9666786;
  if (v148)
  {
    v102 = 0xA300000000000000;
  }

  else
  {
    v103 = v142;
    if (v149[0])
    {
      v148 = v94;
      v104 = v82;
      v105 = v146;
      v106 = v122;
      v107 = v138;
      (v127)(v122, v145 + v124, v138);
      v108 = (*(v105 + 88))(v106, v107);
      v109 = 2;
      if (v108 == *MEMORY[0x277D69898])
      {
        v101 = 9666786;
        v110 = v140;
        v82 = v104;
      }

      else
      {
        v101 = 9666786;
        v110 = v140;
        v82 = v104;
        if (v108 != *MEMORY[0x277D698A0] && v108 != *MEMORY[0x277D69870] && v108 != *MEMORY[0x277D69888] && v108 != *MEMORY[0x277D69878] && v108 != *MEMORY[0x277D69890])
        {
          if (v108 == *MEMORY[0x277D69880])
          {
            v109 = 0;
          }

          else
          {
            if (v108 != *MEMORY[0x277D69868])
            {
              v143(v122, v138);
            }

            v109 = 2;
          }
        }
      }
    }

    else
    {
      v109 = 0;
      v110 = v140;
    }

    v111 = sub_2204BD7B8(v110, v130, 5, 1, v109, v103);
    if (v112)
    {
      v101 = v111;
    }

    v102 = 0xA300000000000000;
    if (v112)
    {
      v102 = v112;
    }
  }

  *(v95 + 96) = v99;
  *(v95 + 104) = v100;
  *(v95 + 72) = v101;
  *(v95 + 80) = v102;
  *(v95 + 136) = v99;
  *(v95 + 144) = v100;
  *(v95 + 112) = v82;
  *(v95 + 120) = v81;

  sub_22089139C();

  v113 = sub_22089132C();

  v114 = v147;
  [v147 setTitle_];

  v115 = [v114 view];
  if (!v115)
  {
    __break(1u);
    goto LABEL_73;
  }

  v116 = v115;

  v117 = [v116 window];

  if (v117)
  {
    v118 = [v117 windowScene];

    if (v118)
    {
      v119 = [v147 title];
      [v118 setTitle_];
    }
  }

  return sub_2205E86C4(v145, type metadata accessor for PriceViewModel);
}

void sub_2205E9AA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for StockFeedModel(255);
    v8[2] = sub_22044432C(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
    v8[3] = sub_22044432C(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2205E9C00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2205E9C70()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return MEMORY[0x223D85A60](0, v1, v2);
}

void sub_2205E9D08(uint64_t a1)
{
  if (!qword_281290BC0)
  {
    v4[0] = &type metadata for StockFeedOfflineModel.Loading;
    v4[1] = &type metadata for StockFeedOfflineModel.Expanding;
    v4[2] = sub_2205E9D84();
    v4[3] = sub_2205E9DD8();
    v2 = type metadata accessor for DualOfflineManager.State(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_281290BC0);
    }
  }
}

unint64_t sub_2205E9D84()
{
  result = qword_28128D598;
  if (!qword_28128D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128D598);
  }

  return result;
}

unint64_t sub_2205E9DD8()
{
  result = qword_28128D580;
  if (!qword_28128D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128D580);
  }

  return result;
}

void sub_2205E9E2C(uint64_t a1)
{
  if (!qword_281296900)
  {
    sub_22089030C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281296900);
    }
  }
}

uint64_t sub_2205E9ED8(uint64_t a1, uint64_t a2)
{
  sub_2205EA904(0, &unk_281299470, sub_22046EAA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2205E9F58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2205EA040()
{
  if (!qword_28127DDF0)
  {
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127DDF0);
    }
  }
}

void sub_2205EA120(uint64_t a1, uint64_t a2)
{
  sub_2205EA904(0, &qword_2812993D0, MEMORY[0x277CC9AF8]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v17[-v5];
  sub_22088C72C();
  sub_22088867C();

  if (v17[15] == 1)
  {
    swift_getObjectType();
    v7 = sub_2208854AC();
    v8 = *(v7 - 8);
    (*(v8 + 16))(v6, a1, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    sub_22088DDCC();
  }

  sub_22088C71C();
  v9 = sub_22088BFCC();

  v10 = [v9 indexPathsForVisibleItems];

  v11 = sub_2208854AC();
  v12 = sub_2208916EC();

  v13 = sub_2206FA288(a1, v12);

  sub_22088C71C();
  v14 = sub_22088BFCC();

  if (v13)
  {
    v15 = *(v11 - 8);
    (*(v15 + 16))(v6, a1, v11);
    (*(v15 + 56))(v6, 0, 1, v11);
    sub_220891BDC();

    sub_2205E8724(v6, &qword_2812993D0, MEMORY[0x277CC9AF8]);
  }

  else
  {
    v16 = sub_22088544C();
    [v14 selectItemAtIndexPath:v16 animated:0 scrollPosition:2];
  }
}

uint64_t sub_2205EA414(uint64_t a1, uint64_t a2)
{
  sub_2205E840C(0, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2205EA4A4(uint64_t a1)
{
  sub_2205E840C(0, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2205EA534()
{
  result = qword_27CF57778;
  if (!qword_27CF57778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57778);
  }

  return result;
}

double sub_2205EA58C(uint64_t a1)
{
  v2 = v1;
  v24 = a1;
  v3 = *v1;
  v26 = sub_220886A4C();
  v4 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_220885D4C();
  v8 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D697C0];
  sub_2205EA904(0, &unk_2812990E0, MEMORY[0x277D697C0]);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = v23 - v15;
  v23[1] = v3[14];
  v17 = sub_22088665C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, v24, v17);
  (*(v18 + 56))(v16, 0, 1, v17);
  v19 = (*(v2 + *(*v2 + 120)) + OBJC_IVAR____TtC8StocksUI20StockFeedDataManager_watchlistManager);
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  sub_2208863EC();
  sub_2208869CC();
  (*(v4 + 8))(v7, v26);
  v20 = (*(v3[11] + 120))(v16, v11, v3[10]);
  (*(v8 + 8))(v11, v25);
  sub_2205E8724(v16, &unk_2812990E0, v12);
  v27 = v20;
  sub_2205E7490(0, v21);
  sub_22044432C(&qword_281297D38, sub_2205E7490, MEMORY[0x277D6D890]);
  sub_22088B6DC();

  return result;
}

void sub_2205EA904(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

char *sub_2205EA96C(double a1, double a2, double a3)
{
  v6 = sub_2205EAB4C(a1, a2, a3);
  v20 = MEMORY[0x277D84F90];
  result = sub_2204B40D4(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    goto LABEL_30;
  }

  result = v20;
  v8 = 0;
  v9 = 0;
  if (!v6)
  {
    v12 = a1;
    goto LABEL_16;
  }

  v10 = a1;
  do
  {
    v11 = v10 <= a2;
    if (a3 > 0.0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      if (v8 & 1 | (v10 != a2))
      {
        goto LABEL_28;
      }

      v8 = 1;
      v12 = v10;
    }

    else
    {
      v13 = __OFADD__(v9++, 1);
      if (v13)
      {
        goto LABEL_29;
      }

      v12 = a1 + v9 * a3;
    }

    v21 = result;
    v15 = *(result + 2);
    v14 = *(result + 3);
    if (v15 >= v14 >> 1)
    {
      sub_2204B40D4((v14 > 1), v15 + 1, 1);
      result = v21;
    }

    *(result + 2) = v15 + 1;
    *&result[8 * v15 + 32] = v10;
    v10 = v12;
    --v6;
  }

  while (v6);
  while (1)
  {
LABEL_16:
    v16 = v12 <= a2;
    if (a3 > 0.0)
    {
      v16 = v12 >= a2;
    }

    if (!v16)
    {
      break;
    }

    if ((v12 != a2) | v8 & 1)
    {
      return result;
    }

    v8 = 1;
    v17 = v12;
LABEL_23:
    v22 = result;
    v19 = *(result + 2);
    v18 = *(result + 3);
    if (v19 >= v18 >> 1)
    {
      sub_2204B40D4((v18 > 1), v19 + 1, 1);
      result = v22;
    }

    *(result + 2) = v19 + 1;
    *&result[8 * v19 + 32] = v12;
    v12 = v17;
  }

  v13 = __OFADD__(v9++, 1);
  if (!v13)
  {
    v17 = a1 + v9 * a3;
    goto LABEL_23;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_2205EAB4C(double a1, double a2, double a3)
{
  result = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1;
  do
  {
    v8 = v6 <= a2;
    if (a3 > 0.0)
    {
      v8 = v6 >= a2;
    }

    if (v8)
    {
      if ((v6 != a2) | v4 & 1)
      {
        return result;
      }

      v4 = 1;
    }

    else
    {
      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        goto LABEL_12;
      }

      v6 = a1 + v5 * a3;
    }

    v7 = __OFADD__(result++, 1);
  }

  while (!v7);
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t ShareLinkContext.hashValue.getter()
{
  v1 = *v0;
  sub_2208929EC();
  MEMORY[0x223D8ABA0](v1);
  return sub_220892A2C();
}

uint64_t ShareLinkProvider.shareLink(for:)@<X0>(char *a2@<X8>)
{
  sub_220479EE4(0, &qword_2812994E0, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = sub_220884E9C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_220891DCC();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_2205EB28C(v7, &qword_2812994E0, MEMORY[0x277CC9260]);
    v13 = 1;
  }

  else
  {
    v14 = *(v9 + 32);
    v14(v12, v7, v8);
    if (*(v2 + 16))
    {
      sub_2205EAE58(v12, a2);
      (*(v9 + 8))(v12, v8);
    }

    else
    {
      v14(a2, v12, v8);
    }

    v13 = 0;
  }

  return (*(v9 + 56))(a2, v13, 1, v8);
}

uint64_t sub_2205EAE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_220479EE4(0, &qword_2812994E0, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v23 - v6;
  sub_220479EE4(0, &qword_281299510, MEMORY[0x277CC8958]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v23 - v10;
  v12 = sub_220884B5C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220884ACC();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2205EB28C(v11, &qword_281299510, MEMORY[0x277CC8958]);
    v17 = sub_220884E9C();
    return (*(*(v17 - 8) + 16))(a2, a1, v17);
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v19 = sub_220884AFC();
    v23 = 0x79616C50776F6E2FLL;
    v24 = 0xEB00000000676E69;
    MEMORY[0x223D89680](v19);

    MEMORY[0x223D7CCB0](v23, v24);
    sub_220884ADC();
    (*(v13 + 8))(v16, v12);
    v20 = sub_220884E9C();
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    if (v22(v7, 1, v20) == 1)
    {
      (*(v21 + 16))(a2, a1, v20);
      result = v22(v7, 1, v20);
      if (result != 1)
      {
        return sub_2205EB28C(v7, &qword_2812994E0, MEMORY[0x277CC9260]);
      }
    }

    else
    {
      return (*(v21 + 32))(a2, v7, v20);
    }
  }

  return result;
}

unint64_t sub_2205EB1E8()
{
  result = qword_27CF57780;
  if (!qword_27CF57780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57780);
  }

  return result;
}

uint64_t sub_2205EB28C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220479EE4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2205EB320(uint64_t a1, char *a2, __int128 *a3)
{
  v7 = type metadata accessor for StockChartCalloutLayoutOptions(0);
  v8 = (v7 - 8);
  *&v10 = MEMORY[0x28223BE20](v7, v9).n128_u64[0];
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 bounds];
  v14 = v13;
  v16 = v15;
  v17 = type metadata accessor for StockChartRangeCalloutViewModel(0);
  v18 = v17[6];
  v19 = v8[7];
  v20 = sub_2208854FC();
  v21 = *(*(v20 - 8) + 16);
  v22 = a3[1];
  v45 = *a3;
  v44 = v22;
  v21(&v12[v19], a1 + v18, v20);
  v23 = v17[7];
  v24 = v8[8];
  v25 = sub_22088543C();
  (*(*(v25 - 8) + 16))(&v12[v24], a1 + v23, v25);
  v26 = [a2 traitCollection];
  *v12 = v14;
  *(v12 + 1) = v16;
  *&v12[v8[9]] = v26;
  v27 = &v12[v8[10]];
  v28 = v44;
  *v27 = v45;
  *(v27 + 1) = v28;
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_2206E6BA8(a1, a1 + v17[5], v12, v46);
  v29 = v46[0];
  if (v46[0])
  {
    v31 = *&v46[13];
    v30 = *&v46[14];
    v33 = *&v46[11];
    v32 = *&v46[12];
    v34 = v46[10];
    v36 = *&v46[8];
    v35 = *&v46[9];
    v38 = *&v46[6];
    v37 = *&v46[7];
    v39 = v46[5];
    v40 = *&a2[OBJC_IVAR____TtC8StocksUI26StockChartRangeCalloutView_dateLabel];
    [v40 setFrame_];
    [v40 setAdjustsFontSizeToFitWidth_];
    [v40 setAttributedText_];
    v41 = *&a2[OBJC_IVAR____TtC8StocksUI26StockChartRangeCalloutView_priceChangeLabel];
    [v41 setFrame_];
    [v41 setAttributedText_];
    v42 = *&a2[OBJC_IVAR____TtC8StocksUI26StockChartRangeCalloutView_percentageChangeLabel];
    [v42 setFrame_];
    [v42 setAttributedText_];
    sub_2205EB6B4(v46, sub_2205EB714);
  }

  return sub_2205EB6B4(v12, type metadata accessor for StockChartCalloutLayoutOptions);
}

id sub_2205EB648()
{
  v0 = objc_allocWithZone(type metadata accessor for StockChartRangeCalloutView());

  return [v0 initWithFrame_];
}

uint64_t sub_2205EB6B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2205EB714()
{
  if (!qword_27CF57788)
  {
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF57788);
    }
  }
}

uint64_t sub_2205EB7AC@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v62 = a4;
  v63 = a2;
  v60 = a3;
  v64 = a1;
  v66 = a5;
  v59 = type metadata accessor for EmptyListViewLayoutOptions(0);
  MEMORY[0x28223BE20](v59, v5);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TodayViewLayoutOptions(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v61 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for StockListLayoutModel(0);
  MEMORY[0x28223BE20](v65, v11);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StockViewLayoutOptions(0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = (&v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22046B36C(0);
  sub_22088AD8C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = *v25;
      v28 = v25[1];
      v30 = v25[2];
      v29 = v25[3];
      v31 = sub_22088C32C();
      v7 = v61;
      (*(*(v31 - 8) + 16))(v61, v63, v31);
      __swift_project_boxed_opaque_existential_1(v64 + 7, v64[10]);
      sub_2204BCCB8(v27, v28, v30, v29, v67);
      *v13 = v27;
      *(v13 + 1) = v28;
      *(v13 + 2) = v30;
      *(v13 + 3) = v29;
      v32 = v67[3];
      *(v13 + 4) = v67[2];
      *(v13 + 5) = v32;
      v33 = v67[5];
      *(v13 + 6) = v67[4];
      *(v13 + 7) = v33;
      v34 = v67[1];
      *(v13 + 2) = v67[0];
      *(v13 + 3) = v34;
      swift_storeEnumTagMultiPayload();
      sub_22045BF94(qword_28128E4D0, type metadata accessor for StockListLayoutModel, &unk_22089FFE8);
      sub_22088BC2C();
      v35 = type metadata accessor for TodayViewLayoutOptions;
    }

    else
    {
      v49 = sub_22088C32C();
      (*(*(v49 - 8) + 16))(v7, v63, v49);
      v50 = v59;
      v51 = &v7[*(v59 + 20)];
      *v51 = 0;
      v51[8] = 1;
      v52 = &v7[*(v50 + 24)];
      *v52 = 0;
      v52[8] = 1;
      v7[*(v50 + 28)] = 1;
      __swift_project_boxed_opaque_existential_1(v64 + 17, v64[20]);
      sub_2205ECAF0(v7, v67);
      v53 = v67[7];
      *(v13 + 6) = v67[6];
      *(v13 + 7) = v53;
      *(v13 + 8) = v67[8];
      *(v13 + 72) = v67[9];
      v54 = v67[3];
      *(v13 + 2) = v67[2];
      *(v13 + 3) = v54;
      v55 = v67[5];
      *(v13 + 4) = v67[4];
      *(v13 + 5) = v55;
      v56 = v67[1];
      *v13 = v67[0];
      *(v13 + 1) = v56;
      swift_storeEnumTagMultiPayload();
      sub_22045BF94(qword_28128E4D0, type metadata accessor for StockListLayoutModel, &unk_22089FFE8);
      sub_22088BC2C();
      v35 = type metadata accessor for EmptyListViewLayoutOptions;
    }

    v47 = v35;
    v48 = v7;
  }

  else
  {
    sub_2204BD5B0(v25, v21, type metadata accessor for StockListStockModel);
    v36 = sub_22088C32C();
    (*(*(v36 - 8) + 16))(v17, v63, v36);
    v37 = &v17[v14[5]];
    v38 = v62;
    *v37 = v60;
    v37[1] = v38;
    *&v17[v14[6]] = 0x4020000000000000;
    *&v17[v14[7]] = 0x4037000000000000;
    v39 = &v17[v14[8]];
    __asm { FMOV            V0.2D, #4.0 }

    *v39 = _Q0;
    *(v39 + 1) = _Q0;
    __swift_project_boxed_opaque_existential_1(v64 + 2, v64[5]);

    sub_2204BE814(v21, v17, v67);
    sub_220455E3C(0);
    v46 = *(v45 + 48);
    sub_2204BD680(v21, v13, type metadata accessor for StockViewModel);
    memcpy(&v13[v46], v67, 0x150uLL);
    swift_storeEnumTagMultiPayload();
    sub_22045BF94(qword_28128E4D0, type metadata accessor for StockListLayoutModel, &unk_22089FFE8);
    sub_22088BC2C();
    sub_2204BD394(v17, type metadata accessor for StockViewLayoutOptions);
    v47 = type metadata accessor for StockListStockModel;
    v48 = v21;
  }

  return sub_2204BD394(v48, v47);
}

double sub_2205EBDE0@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v49 = a2;
  v54 = type metadata accessor for StockListLayoutModel(0);
  MEMORY[0x28223BE20](v54, v6);
  v53 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204BC25C(0);
  v52 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B9CF0(0);
  sub_22045BF94(&qword_27CF57790, sub_2204B9CF0, MEMORY[0x277D6DE20]);
  v13 = sub_22089197C();
  v14 = MEMORY[0x277D84F90];
  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    v26 = *(MEMORY[0x277D84F90] + 16);
    if (v26)
    {
      goto LABEL_8;
    }

LABEL_11:
    v4 = 0.0;
    goto LABEL_17;
  }

  v15 = v13;
  v16 = v9;
  v55[0] = MEMORY[0x277D84F90];
  sub_22070BC04(0, v13 & ~(v13 >> 63), 0);
  v17 = v55[0];
  sub_22089193C();
  if (v15 < 0)
  {
    __break(1u);
LABEL_32:
    sub_22070BC04((v18 > 1), a1, 1);
    v37 = v59;
    goto LABEL_19;
  }

  v48[1] = v2;
  v51 = (v16 + 16);
  v50 = (v16 + 8);
  do
  {
    v19 = sub_2208919BC();
    v20 = v52;
    (*v51)(v12);
    v19(v56, 0);
    v21 = v53;
    sub_22088BC3C();
    sub_22045BF94(&unk_28128E4C0, type metadata accessor for StockListLayoutModel, &unk_2208A0020);
    sub_22088D90C();
    v23 = v22;
    sub_2204BD394(v21, type metadata accessor for StockListLayoutModel);
    (*v50)(v12, v20);
    v55[0] = v17;
    v25 = *(v17 + 16);
    v24 = *(v17 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_22070BC04((v24 > 1), v25 + 1, 1);
      v17 = v55[0];
    }

    *(v17 + 16) = v25 + 1;
    *(v17 + 8 * v25 + 32) = v23;
    sub_2208919AC();
    --v15;
  }

  while (v15);
  v14 = MEMORY[0x277D84F90];
  v26 = *(v17 + 16);
  if (!v26)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (v26 <= 3)
  {
    v27 = 0;
    v4 = 0.0;
LABEL_15:
    v30 = v26 - v27;
    v31 = (v17 + 8 * v27 + 32);
    do
    {
      v32 = *v31++;
      v4 = v4 + v32;
      --v30;
    }

    while (v30);
    goto LABEL_17;
  }

  v27 = v26 & 0x7FFFFFFFFFFFFFFCLL;
  v28 = (v17 + 48);
  v4 = 0.0;
  v29 = v26 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v4 = v4 + *(v28 - 2) + *(v28 - 1) + *v28 + v28[1];
    v28 += 4;
    v29 -= 4;
  }

  while (v29);
  if (v26 != v27)
  {
    goto LABEL_15;
  }

LABEL_17:

  sub_22088C34C();
  if (v58 >= 2u)
  {
    v41 = 0.0;
    v39 = v49;
    goto LABEL_30;
  }

  sub_2205ED230(0, &qword_28127DFF0, sub_2205ED294, MEMORY[0x277D84560]);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_220899360;
  *(v33 + 56) = &type metadata for StockListSectionHeaderViewLayoutAttributes;
  *(v33 + 64) = sub_2205ED2F8();
  v34 = swift_allocObject();
  *(v33 + 32) = v34;
  v35 = v56[3];
  *(v34 + 48) = v56[2];
  *(v34 + 64) = v35;
  *(v34 + 80) = v57;
  v36 = v56[1];
  *(v34 + 16) = v56[0];
  *(v34 + 32) = v36;
  v59 = v14;
  sub_22070BC04(0, 1, 0);
  v37 = v59;
  sub_22046DA2C(v33 + 32, v55);
  __swift_project_boxed_opaque_existential_1(v55, v55[3]);
  sub_22088D8CC();
  Height = CGRectGetHeight(v60);
  __swift_destroy_boxed_opaque_existential_1(v55);
  v59 = v37;
  v16 = *(v37 + 16);
  v18 = *(v37 + 24);
  a1 = v16 + 1;
  if (v16 >= v18 >> 1)
  {
    goto LABEL_32;
  }

LABEL_19:
  *(v37 + 16) = a1;
  *(v37 + 8 * v16 + 32) = Height;

  v38 = *(v37 + 16);
  v39 = v49;
  if (v38)
  {
    if (v38 > 3)
    {
      v40 = v38 & 0x7FFFFFFFFFFFFFFCLL;
      v42 = (v37 + 48);
      v41 = 0.0;
      v43 = v38 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v41 = v41 + *(v42 - 2) + *(v42 - 1) + *v42 + v42[1];
        v42 += 4;
        v43 -= 4;
      }

      while (v43);
      if (v38 == v40)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v40 = 0;
      v41 = 0.0;
    }

    v44 = v38 - v40;
    v45 = (v37 + 8 * v40 + 32);
    do
    {
      v46 = *v45++;
      v41 = v41 + v46;
      --v44;
    }

    while (v44);
LABEL_29:

    goto LABEL_30;
  }

  v41 = 0.0;
LABEL_30:
  result = v4 + v41;
  *v39 = v4 + v41;
  return result;
}

uint64_t sub_2205EC3C4@<X0>(void *a1@<X1>, uint64_t a2@<X2>, CGRect *a3@<X3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v69 = a4;
  v66 = a2;
  v67 = a1;
  v63 = type metadata accessor for EmptyListViewLayoutOptions(0);
  MEMORY[0x28223BE20](v63, v9);
  v65 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TodayViewLayoutOptions(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v64 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for StockListLayoutModel(0);
  MEMORY[0x28223BE20](v68, v14);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StockViewLayoutOptions(0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = (&v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  Height = CGRectGetHeight(*a3);
  sub_22046B36C(0);
  sub_22088AD8C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v31 = *v28;
      v32 = v28[1];
      v33 = v28[2];
      v34 = v28[3];
      v35 = sub_22088C32C();
      v36 = v64;
      (*(*(v35 - 8) + 16))(v64, v66, v35);
      __swift_project_boxed_opaque_existential_1(v67 + 7, v67[10]);
      sub_2204BCCB8(v31, v32, v33, v34, v70);
      *v16 = v31;
      *(v16 + 1) = v32;
      *(v16 + 2) = v33;
      *(v16 + 3) = v34;
      v37 = v70[3];
      *(v16 + 4) = v70[2];
      *(v16 + 5) = v37;
      v38 = v70[5];
      *(v16 + 6) = v70[4];
      *(v16 + 7) = v38;
      v39 = v70[1];
      *(v16 + 2) = v70[0];
      *(v16 + 3) = v39;
      swift_storeEnumTagMultiPayload();
      sub_22045BF94(qword_28128E4D0, type metadata accessor for StockListLayoutModel, &unk_22089FFE8);
      sub_22088BC2C();
      v40 = type metadata accessor for TodayViewLayoutOptions;
      v41 = v36;
    }

    else
    {
      v52 = sub_22088C32C();
      v53 = v65;
      (*(*(v52 - 8) + 16))(v65, v66, v52);
      v54 = v63;
      v55 = v53 + *(v63 + 20);
      *v55 = a6;
      *(v55 + 8) = 0;
      v56 = v53 + *(v54 + 24);
      *v56 = Height + a5;
      *(v56 + 8) = 0;
      *(v53 + *(v54 + 28)) = 1;
      __swift_project_boxed_opaque_existential_1(v67 + 17, v67[20]);
      sub_2205ECAF0(v53, v70);
      v57 = v70[7];
      *(v16 + 6) = v70[6];
      *(v16 + 7) = v57;
      *(v16 + 8) = v70[8];
      *(v16 + 72) = v70[9];
      v58 = v70[3];
      *(v16 + 2) = v70[2];
      *(v16 + 3) = v58;
      v59 = v70[5];
      *(v16 + 4) = v70[4];
      *(v16 + 5) = v59;
      v60 = v70[1];
      *v16 = v70[0];
      *(v16 + 1) = v60;
      swift_storeEnumTagMultiPayload();
      sub_22045BF94(qword_28128E4D0, type metadata accessor for StockListLayoutModel, &unk_22089FFE8);
      sub_22088BC2C();
      v40 = type metadata accessor for EmptyListViewLayoutOptions;
      v41 = v53;
    }
  }

  else
  {
    sub_2204BD5B0(v28, v24, type metadata accessor for StockListStockModel);
    v42 = sub_22088C32C();
    (*(*(v42 - 8) + 16))(v20, v66, v42);
    v43 = &v20[v17[5]];
    *v43 = 0;
    *(v43 + 1) = 0;
    *&v20[v17[6]] = 0x4020000000000000;
    *&v20[v17[7]] = 0x4037000000000000;
    v44 = &v20[v17[8]];
    __asm { FMOV            V0.2D, #4.0 }

    *v44 = _Q0;
    *(v44 + 1) = _Q0;
    __swift_project_boxed_opaque_existential_1(v67 + 2, v67[5]);
    sub_2204BE814(v24, v20, v70);
    sub_220455E3C(0);
    v51 = *(v50 + 48);
    sub_2204BD680(v24, v16, type metadata accessor for StockViewModel);
    memcpy(&v16[v51], v70, 0x150uLL);
    swift_storeEnumTagMultiPayload();
    sub_22045BF94(qword_28128E4D0, type metadata accessor for StockListLayoutModel, &unk_22089FFE8);
    sub_22088BC2C();
    sub_2204BD394(v20, type metadata accessor for StockViewLayoutOptions);
    v40 = type metadata accessor for StockListStockModel;
    v41 = v24;
  }

  return sub_2204BD394(v41, v40);
}

double sub_2205ECAF0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v108 = sub_22088C29C();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108, v6);
  v8 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088C31C();
  v10 = v9;
  sub_22088C22C();
  sub_220891A7C();
  v12 = v11;
  v13 = type metadata accessor for EmptyListViewLayoutOptions(0);
  v14 = a1 + *(v13 + 24);
  if (*(v14 + 8))
  {
    v15 = 0.0;
  }

  else
  {
    v15 = *v14;
  }

  v16 = v10 - v12 - v15 + -16.0;
  sub_22088C31C();
  v18 = v17;
  sub_22088C20C();
  v110 = v19;
  v111 = v20;
  v22 = v21;
  v24 = v23;
  v115 = sub_22088C24C();
  sub_22088C22C();
  v26 = v25;
  sub_22088C31C();
  v28 = v27;
  sub_22088C27C();
  v29 = sub_22088C28C();
  v30 = COERCE_DOUBLE([v29 horizontalSizeClass]);

  v31 = *(a1 + *(v13 + 28));
  v112 = v30;
  if (v31)
  {
    v32 = v28 * 0.5 - v26 - v15;
  }

  else
  {
    v118.origin.x = 0.0;
    v118.origin.y = 0.0;
    v118.size.width = v18;
    v118.size.height = v16;
    v32 = v15 + v26 + (CGRectGetHeight(v118) - v26 - v15) * 0.5;
  }

  v104 = v32;
  v33 = v3[5];
  v34 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v33);
  v35 = *(v34 + 8);
  v36 = *(v35 + 8);
  v117[3] = v33;
  v117[4] = v34;
  __swift_allocate_boxed_opaque_existential_1(v117);
  v37 = v115;
  v36(v115, v33, v35);
  v119.origin.x = 0.0;
  v105 = 0.0;
  v119.origin.y = 0.0;
  v119.size.width = v18;
  v116 = v16;
  v119.size.height = v16;
  v38 = CGRectGetWidth(v119) - v24 - v22;
  v106 = v8;
  v114 = v18;
  sub_2206624CC(v37, v8);
  v40 = v39 * v38;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v42 = objc_opt_self();
  v43 = [v42 bundleForClass_];
  v44 = sub_220884CAC();
  v46 = v45;

  v47 = (*(v34 + 16))(v44, v46, v33, v34);

  v48 = [v42 bundleForClass_];
  v49 = v47;
  v50 = sub_220884CAC();
  v52 = v51;

  v53 = (*(v34 + 24))(v50, v52, v33, v34);

  sub_220891EEC();
  [v47 boundingRectWithSize:1 options:0 context:?];
  v102 = v54;
  v101 = v55;
  v100 = v56;
  v113 = v57;
  v58 = v40;
  sub_220891EEC();
  [v53 boundingRectWithSize:1 options:0 context:?];
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v109 = v24;
  v66 = v65;
  v67 = 0.0;
  v68 = v112;
  if (*&v112 != 1)
  {
    sub_220891A6C();
    v67 = v69;
  }

  v94 = v67;
  v120.origin.x = v60;
  v120.origin.y = v62;
  v120.size.width = v64;
  v120.size.height = v66;
  Height = CGRectGetHeight(v120);
  v98 = v64;
  v70 = v105;
  v121.origin.x = v105;
  v121.origin.y = v105;
  v121.size.width = v114;
  v103 = v22;
  v121.size.height = v116;
  Width = CGRectGetWidth(v121);
  v95 = v58;
  v97 = v66;
  v96 = v60;
  v112 = (Width - v58 - v67) * 0.5;
  v72 = v102;
  v122.origin.x = v102;
  v73 = v101;
  v122.origin.y = v101;
  v74 = v100;
  v122.size.width = v100;
  v122.size.height = v113;
  v104 = v104 - CGRectGetHeight(v122);
  v123.origin.x = v60;
  v123.origin.y = v62;
  v123.size.width = v64;
  v123.size.height = v66;
  v75 = v104 - CGRectGetHeight(v123) * 0.5 + -4.0;
  if (v75 > 0.0)
  {
    v76 = v75;
  }

  else
  {
    v76 = 0.0;
  }

  v104 = v76;
  v124.origin.x = v72;
  v124.origin.y = v73;
  v124.size.width = v74;
  v124.size.height = v113;
  v77 = ceil(CGRectGetHeight(v124));
  v113 = v77;
  v125.origin.x = v70;
  v125.origin.y = v70;
  v78 = v114;
  v125.size.width = v114;
  v125.size.height = v116;
  v79 = CGRectGetWidth(v125);
  v80 = v95;
  v81 = (v79 - v95 - v94) * 0.5;
  v102 = v81;
  v126.origin.x = v112;
  v126.origin.y = v76;
  v126.size.width = v95;
  v126.size.height = v77;
  v82 = CGRectGetMaxY(v126) + 4.0;
  v101 = v82;
  v127.origin.x = v96;
  v127.origin.y = v62;
  v127.size.width = v98;
  v127.size.height = v97;
  v83 = ceil(CGRectGetHeight(v127));
  v128.origin.x = v81;
  v128.origin.y = v82;
  v128.size.width = v80;
  v128.size.height = v83;
  v84 = CGRectGetMaxY(v128) + 8.0;
  v85 = Height;
  v86 = Height + v84;
  v129.origin.x = v70;
  v129.origin.y = v70;
  v129.size.width = v78;
  v129.size.height = v116;
  v87 = CGRectGetHeight(v129);

  (*(v107 + 8))(v106, v108);
  if (v87 <= v86)
  {
    v87 = v86;
  }

  __swift_destroy_boxed_opaque_existential_1(v117);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = v78;
  *(a2 + 24) = v87;
  *(a2 + 32) = v84;
  *(a2 + 40) = v85;
  v88 = v104;
  *(a2 + 48) = v112;
  *(a2 + 56) = v88;
  v89 = v113;
  *(a2 + 64) = v80;
  *(a2 + 72) = v89;
  v90 = v101;
  *(a2 + 80) = v102;
  *(a2 + 88) = v90;
  *(a2 + 96) = v80;
  *(a2 + 104) = v83;
  v91 = v103;
  *(a2 + 112) = v110;
  *(a2 + 120) = v91;
  result = v109;
  *(a2 + 128) = v111;
  *(a2 + 136) = result;
  *(a2 + 144) = 1;
  *(a2 + 145) = *&v68 != 1;
  return result;
}

void sub_2205ED230(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2205ED294()
{
  result = qword_281297220;
  if (!qword_281297220)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281297220);
  }

  return result;
}

unint64_t sub_2205ED2F8()
{
  result = qword_28127FEA8[0];
  if (!qword_28127FEA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28127FEA8);
  }

  return result;
}

uint64_t sub_2205ED394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_220476DF0(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

id sub_2205ED524(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_2204A5DF0(0);
  inited = swift_initStackObject();
  v5 = MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_220899920;
  v6 = *v5;
  *(inited + 32) = *v5;
  v7 = v2[7];
  if (v7)
  {
    v8 = v2[7];
  }

  else
  {
    v8 = *MEMORY[0x277D76840];
  }

  v9 = *MEMORY[0x277D76828];
  v10 = v6;
  v11 = v7;
  if (sub_220891DDC())
  {
    v12 = v9;

    v8 = v12;
  }

  v13 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v14 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v15 = v13;
  v16 = sub_220891F1C();

  v17 = MEMORY[0x277D740C0];
  *(inited + 40) = v16;
  v18 = *v17;
  *(inited + 64) = v14;
  *(inited + 72) = v18;
  v19 = v3[5];
  v20 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v19);
  v21 = *(v20 + 16);
  v22 = *(v21 + 256);
  v23 = v18;
  v24 = v22(v19, v21);
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  *(inited + 80) = v24;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  swift_arrayDestroy();
  v25 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v26 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v27 = sub_22089125C();

  v28 = [v25 initWithString:v26 attributes:v27];

  return v28;
}

id sub_2205ED7AC(uint64_t a1, uint64_t a2)
{
  sub_2204A5DF0(0);
  inited = swift_initStackObject();
  v4 = MEMORY[0x277D740A8];
  *(inited + 16) = xmmword_220899920;
  v5 = *v4;
  *(inited + 32) = *v4;
  v6 = v2[7];
  if (v6)
  {
    v7 = v2[7];
  }

  else
  {
    v7 = *MEMORY[0x277D76840];
  }

  v8 = *MEMORY[0x277D767F8];
  v9 = v5;
  v10 = v6;
  if (sub_220891DDC())
  {
    v11 = v8;

    v7 = v11;
  }

  v12 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  v13 = [objc_opt_self() preferredFontForTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:v12];

  v14 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v15 = MEMORY[0x277D740C0];
  *(inited + 40) = v13;
  v16 = *v15;
  *(inited + 64) = v14;
  *(inited + 72) = v16;
  v17 = v2[5];
  v18 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v17);
  v19 = *(v18 + 16);
  v20 = *(v19 + 264);
  v21 = v16;
  v22 = v20(v17, v19);
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  *(inited + 80) = v22;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  swift_arrayDestroy();
  v23 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v24 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v25 = sub_22089125C();

  v26 = [v23 initWithString:v24 attributes:v25];

  return v26;
}

double sub_2205EDA64(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (v2)
    {
      swift_getObjectType();
      v6 = sub_22088CBCC();
      [v6 setAlpha_];

      v7 = sub_22058B190();
      [v7 setAlpha_];

      v8 = sub_2208582A4();
      [*&v8[OBJC_IVAR____TtC8StocksUI15CardToolbarView_separatorView] setAlpha_];

      v9 = sub_2208582A4();
      [v9 setAlpha_];
    }

    else if ((*(Strong + OBJC_IVAR____TtC8StocksUI25ForYouFeedViewCoordinator_horizontalSizeClass + 8) & 1) == 0)
    {
      v10 = *(Strong + OBJC_IVAR____TtC8StocksUI25ForYouFeedViewCoordinator_horizontalSizeClass);
      if (v10 == 2)
      {
        sub_2205EE35C(Strong, v4);
      }

      else if (v10 == 1)
      {
        sub_2205EE07C();
      }
    }
  }

  return result;
}

void sub_2205EDBA4(__n128 a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, double a10)
{
  v18 = a1.n128_f64[0];
  sub_22088867C();
  if ((v31 & 1) == 0 && (*(v10 + OBJC_IVAR____TtC8StocksUI25ForYouFeedViewCoordinator_horizontalSizeClass + 8) & 1) == 0 && *(v10 + OBJC_IVAR____TtC8StocksUI25ForYouFeedViewCoordinator_horizontalSizeClass) == 1)
  {
    v32.origin.x = v18;
    v32.origin.y = a2;
    v32.size.width = a3;
    v32.size.height = a4;
    v30 = CGRectGetMaxY(v32) - a10 + -10.0;
    v33.origin.x = v18;
    v33.origin.y = a2;
    v33.size.width = a3;
    v33.size.height = a4;
    MaxY = CGRectGetMaxY(v33);
    v34.origin.x = a5;
    v34.origin.y = a6;
    v34.size.width = a7;
    v34.size.height = a8;
    v19 = (MaxY - CGRectGetMinY(v34)) * 0.5;
    v35.origin.x = v18;
    v35.origin.y = a2;
    v35.size.width = a3;
    v35.size.height = a4;
    v20 = fmin((v30 + v19 - CGRectGetMaxY(v35)) / 3.0, 100.0);
    v21 = a9 - (v30 - v20);
    if (v21 < 0.0)
    {
      v21 = 0.0;
    }

    v22 = v21 / v20;
    v23 = 1.0;
    if (v21 / v20 >= 1.0 || (v23 = v21 / v20, v22 > 0.0))
    {
      v24 = sub_22058B190();
      [v24 setHidden_];

      v22 = v23;
    }

    swift_getObjectType();
    v25 = sub_22088CBCC();
    [v25 setAlpha_];

    v26 = sub_22058B190();
    [v26 setAlpha_];

    v27 = sub_2208582A4();
    [*&v27[OBJC_IVAR____TtC8StocksUI15CardToolbarView_separatorView] setAlpha_];

    v28 = sub_2208582A4();
    [v28 setAlpha_];
  }
}

void sub_2205EDDD4(uint64_t a1)
{
  v3 = sub_22088CC6C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22088867C();
  if ((v17[15] & 1) == 0 && (*(v1 + OBJC_IVAR____TtC8StocksUI25ForYouFeedViewCoordinator_horizontalSizeClass + 8) & 1) == 0 && *(v1 + OBJC_IVAR____TtC8StocksUI25ForYouFeedViewCoordinator_horizontalSizeClass) == 1)
  {
    (*(v4 + 16))(v7, a1, v3);
    v8 = (*(v4 + 88))(v7, v3);
    if (v8 != *MEMORY[0x277D6E258])
    {
      if (v8 == *MEMORY[0x277D6E260])
      {
        swift_getObjectType();
        v13 = sub_22088CBCC();
        [v13 setAlpha_];

        v14 = sub_22058B190();
        [v14 setAlpha_];

        v15 = sub_22058B190();
        [v15 setHidden_];

        v16 = sub_2208582A4();
        [*&v16[OBJC_IVAR____TtC8StocksUI15CardToolbarView_separatorView] setAlpha_];

        v12 = sub_2208582A4();
        [v12 setAlpha_];
        goto LABEL_8;
      }

      if (v8 != *MEMORY[0x277D6E250])
      {
        (*(v4 + 8))(v7, v3);
        return;
      }
    }

    swift_getObjectType();
    v9 = sub_22088CBCC();
    [v9 setAlpha_];

    v10 = sub_22058B190();
    [v10 setAlpha_];

    v11 = sub_2208582A4();
    [*&v11[OBJC_IVAR____TtC8StocksUI15CardToolbarView_separatorView] setAlpha_];

    v12 = sub_2208582A4();
    [v12 setAlpha_];
LABEL_8:
  }
}

uint64_t sub_2205EE07C()
{
  v1 = sub_22088CC6C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205EE5D8(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v21 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v21 - v16;
  v18 = OBJC_IVAR____TtC8StocksUI25ForYouFeedViewCoordinator_presentationState;
  swift_beginAccess();
  sub_2205EE630(v0 + v18, v13);
  v19 = *(v2 + 48);
  if (v19(v13, 1, v1) == 1)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = v5;
      sub_2207F8A38(v17);
      v5 = v21;
      swift_unknownObjectRelease();
    }

    else
    {
      (*(v2 + 56))(v17, 1, 1, v1);
    }

    if (v19(v13, 1, v1) != 1)
    {
      sub_2205EE694(v13);
    }
  }

  else
  {
    (*(v2 + 32))(v17, v13, v1);
    (*(v2 + 56))(v17, 0, 1, v1);
  }

  sub_2205EE630(v17, v9);
  if (v19(v9, 1, v1) == 1)
  {
    sub_2205EE694(v17);
    v17 = v9;
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_2205EDDD4(v5);
    (*(v2 + 8))(v5, v1);
  }

  return sub_2205EE694(v17);
}

void sub_2205EE35C(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v2 = sub_22088CBCC();
  [v2 setAlpha_];

  v3 = sub_22058B190();
  [v3 setAlpha_];

  v4 = sub_2208582A4();
  [*&v4[OBJC_IVAR____TtC8StocksUI15CardToolbarView_separatorView] setAlpha_];

  v5 = sub_2208582A4();
  [v5 setAlpha_];
}

uint64_t sub_2205EE42C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_22054B9F8(v0 + 80);
  sub_2205EE694(v0 + OBJC_IVAR____TtC8StocksUI25ForYouFeedViewCoordinator_presentationState);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ForYouFeedViewCoordinator(uint64_t a1)
{
  result = qword_281289A78;
  if (!qword_281289A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2205EE50C(uint64_t a1)
{
  sub_2205EE5D8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2205EE5D8(uint64_t a1)
{
  if (!qword_2812976D0)
  {
    sub_22088CC6C();
    v1 = sub_22089230C();
    if (!v2)
    {
      atomic_store(v1, &qword_2812976D0);
    }
  }
}

uint64_t sub_2205EE630(uint64_t a1, uint64_t a2)
{
  sub_2205EE5D8(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2205EE694(uint64_t a1)
{
  sub_2205EE5D8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2205EE6F0(uint64_t a1, int a2)
{
  v3 = v2;
  v54 = a2;
  v5 = sub_220887C5C();
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v46 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220887D8C();
  v9 = *(v8 - 8);
  v50 = v8;
  v51 = v9;
  MEMORY[0x28223BE20](v8, v10);
  v49 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205EF164(0, &qword_2812989B8, MEMORY[0x277D30338]);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = v45 - v14;
  v55 = sub_22088822C();
  v16 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v17);
  v52 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2208873BC();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22088772C();
  v25 = *(v24 - 8);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v25 + 16);
  v53 = a1;
  v30(v29, a1, v24, v27);
  v31 = (*(v25 + 88))(v29, v24);
  if (v31 == *MEMORY[0x277D2FB70])
  {
    (*(v25 + 96))(v29, v24);
    (*(v20 + 32))(v23, v29, v19);
    v32 = v3;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v50 = *(v3 + 40);
      swift_getObjectType();
      v51 = v15;
      v33 = v52;
      sub_2208873AC();
      sub_22088771C();
      sub_22088739C();
      v32 = v3;
      v15 = v51;
      sub_220887DFC();
      swift_unknownObjectRelease();

      sub_2205EF238(v56, &unk_281296D10, sub_2204693CC);
      (*(v16 + 8))(v33, v55);
    }

    sub_2208873AC();
    (*(v20 + 8))(v23, v19);
    (*(v16 + 56))(v15, 0, 1, v55);
    v34 = OBJC_IVAR____TtC8StocksUI24ArticleViewerCoordinator_currentArticle;
    swift_beginAccess();
    v35 = v32 + v34;
LABEL_5:
    sub_2205EF1B8(v15, v35);
    swift_endAccess();
    return;
  }

  if (v31 != *MEMORY[0x277D2FB58] && v31 != *MEMORY[0x277D2FB68] && v31 == *MEMORY[0x277D2FB60])
  {
    (*(v25 + 96))(v29, v24);
    v36 = v50;
    v37 = v49;
    (*(v51 + 4))(v49, v29, v50);
    Strong = swift_unknownObjectWeakLoadStrong();
    v39 = v47;
    v40 = v48;
    v41 = v46;
    if (Strong)
    {
      v45[1] = *(v3 + 40);
      v45[0] = swift_getObjectType();
      sub_220887D7C();
      v42 = v52;
      sub_220887C4C();
      (*(v39 + 8))(v41, v40);
      sub_22088771C();
      v57 = 0;
      memset(v56, 0, sizeof(v56));
      sub_220887DFC();
      v36 = v50;
      swift_unknownObjectRelease();

      sub_2205EF238(v56, &unk_281296D10, sub_2204693CC);
      v43 = v42;
      v37 = v49;
      (*(v16 + 8))(v43, v55);
    }

    sub_220887D7C();
    sub_220887C4C();
    (*(v39 + 8))(v41, v40);
    (*(v51 + 1))(v37, v36);
    (*(v16 + 56))(v15, 0, 1, v55);
    v44 = OBJC_IVAR____TtC8StocksUI24ArticleViewerCoordinator_currentArticle;
    swift_beginAccess();
    v35 = v3 + v44;
    goto LABEL_5;
  }

  (*(v25 + 8))(v29, v24);
}

uint64_t sub_2205EEDDC()
{
  sub_22054B9F8(v0 + 16);
  sub_22054B9F8(v0 + 32);
  sub_2205EF238(v0 + OBJC_IVAR____TtC8StocksUI24ArticleViewerCoordinator_currentArticle, &qword_2812989B8, MEMORY[0x277D30338]);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArticleViewerCoordinator(uint64_t a1)
{
  result = qword_28128A680;
  if (!qword_28128A680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2205EEEC0(uint64_t a1, __n128 a2)
{
  sub_2205EF164(319, &qword_2812989B8, MEMORY[0x277D30338]);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2205EEFC0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2205EF024(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_2205EF0BC;
}

void sub_2205EF0BC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_2205EF164(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2205EF1B8(uint64_t a1, uint64_t a2)
{
  sub_2205EF164(0, &qword_2812989B8, MEMORY[0x277D30338]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2205EF238(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2205EF164(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2205EF294()
{
  v0 = sub_22088A06C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220887A2C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088759C();
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == *MEMORY[0x277D2FD80])
  {
    v11 = MEMORY[0x277D68F70];
LABEL_8:
    (*(v1 + 104))(v4, *v11, v0);
    return sub_22088927C();
  }

  if (v10 == *MEMORY[0x277D2FD78])
  {
    goto LABEL_7;
  }

  if (v10 == *MEMORY[0x277D2FD68])
  {
    v11 = MEMORY[0x277D68F60];
    goto LABEL_8;
  }

  if (v10 == *MEMORY[0x277D2FD70])
  {
LABEL_7:
    v11 = MEMORY[0x277D68F68];
    goto LABEL_8;
  }

  result = sub_22089267C();
  __break(1u);
  return result;
}

void sub_2205EF4CC(uint64_t a1)
{
  v75 = a1;
  v73 = sub_22088685C();
  v71 = *(v73 - 8);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v73, v1);
  v70 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22088EBFC();
  v4 = *(v3 - 8);
  v68 = v3;
  v69 = v4;
  MEMORY[0x28223BE20](v3, v5);
  v67 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088915C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v63 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_22088699C();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v10);
  v61 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_22088914C();
  v66 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v12);
  v60 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_22088909C();
  v59 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v14);
  v57 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_220889FFC();
  v16 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v17);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_220889FEC();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22088A07C();
  v26 = *(v25 - 8);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 104))(v30, *MEMORY[0x277D68F80], v25, v28);
  v31 = sub_22088721C();
  (*(v26 + 8))(v30, v25);
  v32 = *MEMORY[0x277D68EF0];
  v33 = *(v16 + 104);
  v33(v19, v32, v74);
  sub_22088681C();
  sub_220889FCC();
  sub_2205EFFAC(&qword_2812982D8, MEMORY[0x277D68ED8], MEMORY[0x277D68ED0]);
  sub_2208872CC();
  (*(v21 + 8))(v24, v20);
  v33(v19, v32, v74);
  v34 = v57;
  sub_22088908C();
  sub_2205EFFAC(&qword_281298590, MEMORY[0x277D68210], MEMORY[0x277D68208]);
  v35 = v58;
  v56 = v31;
  sub_2208872CC();
  (*(v59 + 8))(v34, v35);
  v36 = v75;
  sub_22088681C();
  v37 = v61;
  v38 = v36;
  sub_2208867CC();
  sub_22067D2D4(v63);
  (*(v62 + 8))(v37, v64);
  sub_22088683C();
  v39 = v60;
  sub_22088912C();
  sub_2205EFFAC(&qword_281298578, MEMORY[0x277D68270], MEMORY[0x277D68268]);
  v40 = v65;
  sub_2208872CC();
  (*(v66 + 8))(v39, v40);
  v41 = v76;
  __swift_project_boxed_opaque_existential_1((v76 + 64), *(v76 + 88));
  sub_22088ED6C();
  __swift_project_boxed_opaque_existential_1(v78, v78[3]);
  *&v77[0] = 0x2D52454B434954;
  *(&v77[0] + 1) = 0xE700000000000000;
  v42 = sub_22088681C();
  MEMORY[0x223D89680](v42);

  v43 = v67;
  sub_22088EBEC();
  sub_2205EFFAC(&unk_281296D88, MEMORY[0x277D2D120], MEMORY[0x277D2D118]);
  v44 = v68;
  sub_22088ED7C();
  (*(v69 + 8))(v43, v44);
  __swift_project_boxed_opaque_existential_1((v41 + 16), *(v41 + 40));
  type metadata accessor for StockFeedViewController(0);
  sub_22046DA2C(v78, v77);
  v46 = v70;
  v45 = v71;
  v47 = v73;
  (*(v71 + 16))(v70, v38, v73);
  v48 = v45;
  v49 = (*(v45 + 80) + 56) & ~*(v45 + 80);
  v50 = (v72 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  sub_220457328(v77, v51 + 16);
  v52 = v51 + v49;
  v53 = v56;
  (*(v48 + 32))(v52, v46, v47);
  *(v51 + v50) = v53;

  v54 = sub_2208884AC();

  if (v54)
  {
    v55 = v54;
    __swift_destroy_boxed_opaque_existential_1(v78);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2205EFEA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204693CC();
  sub_22088837C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088685C();
  sub_22088837C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  return sub_22088836C();
}

uint64_t sub_2205EFFAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2205EFFF4(void *a1)
{
  v3 = *(sub_22088685C() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2205EFEA8(a1, v1 + 16, v1 + v4, v5);
}

uint64_t sub_2205F0094()
{
  v77 = type metadata accessor for StockSearchModel(0);
  MEMORY[0x28223BE20](v77, v0);
  v2 = &v59 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for StockViewModel(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088685C();
  v78 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v76 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v82 = &v59 - v12;
  sub_2204D4A18(0);
  v75 = v13;
  v79 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v74 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205F099C(0);
  v65 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220576D44(0);
  v21 = v20;
  v73 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v64 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v66 = &v59 - v26;
  sub_2204D4924(0);
  v28 = v27;
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v59 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205F0A30(0);
  v34 = v33 - 8;
  v36 = MEMORY[0x28223BE20](v33, v35);
  v38 = &v59 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = MEMORY[0x277D84F90];
  (*(v29 + 16))(v32, v80, v28, v36);
  v80 = sub_2204D4924;
  sub_2205F0AC4(&qword_2812995C0, sub_2204D4924, MEMORY[0x277D6EC68]);
  sub_2208915BC();
  v68 = *(v34 + 44);
  v39 = v66;
  v40 = v38;
  v41 = sub_2205F0AC4(&qword_281296E80, v80, MEMORY[0x277D6EC70]);
  sub_22089199C();
  if (*(v40 + v68) != v83[0])
  {
    v61 = (v73 + 16);
    v71 = (v79 + 16);
    v70 = (v79 + 8);
    v69 = (v78 + 16);
    v80 = (v78 + 32);
    v60 = (v73 + 8);
    v72 = v19;
    v73 = v2;
    v81 = v7;
    v63 = v28;
    v62 = v40;
    v67 = v41;
    do
    {
      v79 = sub_2208919BC();
      v43 = *v61;
      (*v61)(v39);
      (v79)(v83, 0);
      sub_2208919AC();
      (v43)(v64, v39, v21);
      sub_2205F0AC4(&unk_27CF577A0, sub_220576D44, MEMORY[0x277D6D728]);
      sub_2208915BC();
      v44 = *(v65 + 36);
      sub_2205F0AC4(&qword_27CF56C60, sub_220576D44, MEMORY[0x277D6D730]);
      sub_22089199C();
      v45 = MEMORY[0x277D84F90];
      if (*&v44[v19] != v83[0])
      {
        v79 = v44;
        do
        {
          v46 = v6;
          v47 = sub_2208919BC();
          v48 = v74;
          v49 = v75;
          (*v71)(v74);
          v47(v83, 0);
          sub_2208919AC();
          sub_22088AD8C();
          (*v70)(v48, v49);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_22049550C(0);
            v51 = *(v50 + 48);
            sub_22050381C(v2, v6);
            v52 = sub_220886A4C();
            (*(*(v52 - 8) + 8))(&v2[v51], v52);
          }

          else
          {
            sub_22050381C(v2, v6);
          }

          v53 = v76;
          v54 = v81;
          (*v69)(v76, v6, v81);
          sub_2204D60C8(v6, type metadata accessor for StockViewModel);
          v55 = *v80;
          (*v80)(v82, v53, v54);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = sub_22048E1D8(0, *(v45 + 2) + 1, 1, v45);
          }

          v56 = v79;
          v58 = *(v45 + 2);
          v57 = *(v45 + 3);
          if (v58 >= v57 >> 1)
          {
            v45 = sub_22048E1D8((v57 > 1), v58 + 1, 1, v45);
          }

          *(v45 + 2) = v58 + 1;
          v55(&v45[((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v58], v82, v81);
          v19 = v72;
          sub_22089199C();
          v6 = v46;
          v2 = v73;
        }

        while (*&v56[v19] != v83[0]);
      }

      sub_2204D60C8(v19, sub_2205F099C);
      v39 = v66;
      (*v60)(v66, v21);
      sub_22048E0F8(v45);
      v40 = v62;
      sub_22089199C();
    }

    while (*(v40 + v68) != v83[0]);
  }

  sub_2204D60C8(v40, sub_2205F0A30);
  return v84;
}

void sub_2205F099C(uint64_t a1)
{
  if (!qword_27CF57798)
  {
    sub_220576D44(255);
    sub_2205F0AC4(&qword_27CF56C60, sub_220576D44, MEMORY[0x277D6D730]);
    v1 = sub_22089265C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF57798);
    }
  }
}

void sub_2205F0A30(uint64_t a1)
{
  if (!qword_2812995B8)
  {
    sub_2204D4924(255);
    sub_2205F0AC4(&qword_281296E80, sub_2204D4924, MEMORY[0x277D6EC70]);
    v1 = sub_22089265C();
    if (!v2)
    {
      atomic_store(v1, &qword_2812995B8);
    }
  }
}

uint64_t sub_2205F0AC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_2205F0B5C()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_33;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v3)
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D8A700](v4, v2);
        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v6 = v13;
          goto LABEL_17;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          v3 = sub_2208926AC();
          goto LABEL_3;
        }

        v5 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_2208925CC();
        sub_2208925FC();
        sub_22089260C();
        sub_2208925DC();
      }

      else
      {
      }

      ++v4;
      if (v5 == v3)
      {
        goto LABEL_15;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_17:

  *(v1 + 16) = v6;

  v1 = *(v1 + 16);
  if (v1 >> 62)
  {
    v2 = sub_2208926AC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v7 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223D8A700](v7, v1);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v7 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v8 = *(v1 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_29:
          __break(1u);
          break;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v8 + 24);
        ObjectType = swift_getObjectType();
        (*(v10 + 8))(ObjectType, v10);
        swift_unknownObjectRelease();
      }

      ++v7;
    }

    while (v9 != v2);
  }

  return result;
}

double sub_2205F0DBC(uint64_t *a1)
{
  swift_beginAccess();
  v3 = v1[2];
  v11 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_20:
    v4 = sub_2208926AC();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v10 = v1;
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D8A700](v5, v3);
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v1 = v10;
          v8 = v11;
          goto LABEL_18;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_15;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v1 = Strong, swift_unknownObjectRelease(), v1 == a1))
      {
      }

      else
      {
        sub_2208925CC();
        sub_2208925FC();
        sub_22089260C();
        v1 = &v11;
        sub_2208925DC();
      }

      ++v5;
      if (v6 == v4)
      {
        goto LABEL_16;
      }
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_18:

  v1[2] = v8;

  return result;
}

uint64_t sub_2205F0F44()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2205F0FC4()
{
  sub_22054B9F8(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2205F0FFC(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  sub_22088F8DC();
  sub_2205F3D44(0);
  sub_220891C3C();
  sub_2205F3C48(0);
  sub_220891C3C();
  sub_2205F3B80(0);
  sub_220891C3C();
  sub_2205F39C8(0);
  sub_220891C3C();
  sub_2205F3908(0);
  sub_220891C3C();
  sub_2205144F4(0);
  sub_220891C3C();
  sub_2205F34B4(0);
  return sub_220891C3C();
}

uint64_t (*sub_2205F10F0(uint64_t a1, uint64_t (*a2)(uint64_t a1), void (*a3)(char *, char *, uint64_t), uint64_t a4))(uint64_t a1)
{
  v282 = a4;
  v279 = a2;
  v266 = a1;
  v6 = sub_22088B8CC();
  v7 = *(v6 - 8);
  v244 = v6;
  v245 = v7;
  MEMORY[0x28223BE20](v6, v8);
  v243 = (&v243 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v11);
  v246 = (&v243 - v12);
  v13 = sub_22088C5AC();
  v248 = *(v13 - 8);
  v249 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v247 = &v243 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = sub_2208854AC();
  v275 = *(v265 - 8);
  MEMORY[0x28223BE20](v265, v16);
  v258 = v17;
  v264 = &v243 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D328(0);
  v263 = v18;
  v274 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v256 = v20;
  v273 = &v243 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22088FACC();
  v268 = *(v21 - 8);
  v269 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v262 = (&v243 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24, v25);
  v267 = &v243 - v26;
  v27 = sub_22088FD8C();
  v271 = *(v27 - 8);
  v272 = v27;
  MEMORY[0x28223BE20](v27, v28);
  v276 = &v243 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for StockFeedEarningsViewModel(0);
  v257 = *(v30 - 8);
  MEMORY[0x28223BE20](v30 - 8, v31);
  v259 = v32;
  v260 = &v243 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v34);
  v261 = &v243 - v35;
  v36 = type metadata accessor for QuoteDetailViewModel(0);
  v253 = *(v36 - 8);
  MEMORY[0x28223BE20](v36 - 8, v37);
  v254 = (&v243 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v252 = v38;
  MEMORY[0x28223BE20](v39, v40);
  v255 = (&v243 - v41);
  v42 = type metadata accessor for StockChartModel(0);
  MEMORY[0x28223BE20](v42 - 8, v43);
  v251 = &v243 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for StockFeedMastheadViewLayoutAttributes(0);
  MEMORY[0x28223BE20](v45 - 8, v46);
  v250 = &v243 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for StockFeedMastheadModel(0);
  MEMORY[0x28223BE20](v48 - 8, v49);
  v270 = &v243 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for StockFeedLayoutModel(0);
  MEMORY[0x28223BE20](v51, v52);
  v54 = (&v243 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  v281 = v4;
  sub_22046DA2C(v4 + 32, v290);
  v56 = *(&v290[1] + 1);
  v55 = *&v290[2];
  __swift_project_boxed_opaque_existential_1(v290, *(&v290[1] + 1));
  v280 = a3;
  v57 = [a3 traitCollection];
  v58 = *(v55 + 8);
  v59 = *(v58 + 8);
  v289[3] = v56;
  v289[4] = v55;
  ObjectType = v55;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v289);
  v59(v57, v56, v58);

  __swift_destroy_boxed_opaque_existential_1(v290);
  sub_22055D3C0(0);
  sub_22088BC3C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        sub_2205F3BD8(0, qword_28128EE98, type metadata accessor for QuoteDetailViewModel, &type metadata for QuoteDetailViewLayoutAttributes);
        memcpy(v290, v54 + *(v143 + 48), 0x109uLL);
        v144 = v255;
        sub_2205F3CDC(v54, v255, type metadata accessor for QuoteDetailViewModel);
        sub_2205F39C8(0);
        v68 = sub_220891C1C();
        v145 = sub_22088B9EC();
        sub_220664A10(v144, v290, v145);
        sub_2205D7964(v290);

        v146 = sub_22088B9EC();
        v147 = *&v146[OBJC_IVAR____TtC8StocksUI15QuoteDetailView_attributionButton];

        v148 = *&v147[OBJC_IVAR____TtC8StocksUI17AttributionButton_onTap];
        v149 = swift_allocObject();
        swift_weakInit();
        v150 = v254;
        sub_2205F3A5C(v144, v254, type metadata accessor for QuoteDetailViewModel);
        v151 = (*(v253 + 80) + 24) & ~*(v253 + 80);
        v152 = swift_allocObject();
        *(v152 + 16) = v149;
        sub_2205F3CDC(v150, v152 + v151, type metadata accessor for QuoteDetailViewModel);

        sub_2205F3DD8(v144, type metadata accessor for QuoteDetailViewModel);
        goto LABEL_23;
      }

      sub_2205F3BD8(0, qword_281293018, type metadata accessor for StockChartModel, &type metadata for StockChartViewLayoutAttributes);
      v92 = v54 + *(v91 + 48);
      v93 = *(v92 + 11);
      v290[10] = *(v92 + 10);
      v290[11] = v93;
      *&v290[12] = *(v92 + 24);
      v94 = *(v92 + 7);
      v290[6] = *(v92 + 6);
      v290[7] = v94;
      v95 = *(v92 + 9);
      v290[8] = *(v92 + 8);
      v290[9] = v95;
      v96 = *(v92 + 5);
      v290[4] = *(v92 + 4);
      v290[5] = v96;
      v97 = *(v92 + 3);
      v290[2] = *(v92 + 2);
      v290[3] = v97;
      v98 = *(v92 + 1);
      v290[0] = *v92;
      v290[1] = v98;
      v77 = type metadata accessor for StockChartModel;
      v99 = v251;
      sub_2205F3CDC(v54, v251, type metadata accessor for StockChartModel);
      sub_2205F3B80(0);
      v68 = sub_220891C1C();
      v100 = *(v281 + 224);
      sub_22088A9AC();
      sub_220667344(v99, v290, v100);
      sub_2205D79B8(v290);
      v101 = v99;
      goto LABEL_14;
    }

    if (!EnumCaseMultiPayload)
    {
      sub_22055D8C0(0);
      v62 = *(v61 + 48);
      v279 = type metadata accessor for StockFeedMastheadModel;
      v63 = v270;
      sub_2205F3CDC(v54, v270, type metadata accessor for StockFeedMastheadModel);
      v64 = v250;
      sub_2205F3CDC(v54 + v62, v250, type metadata accessor for StockFeedMastheadViewLayoutAttributes);
      sub_2205F3D44(0);
      v65 = sub_220891C1C();
      v66 = *(ObjectType + 16);
      v67 = *(v66 + 80);
      v68 = v65;
      v69 = v67(v56, v66);
      [v68 setBackgroundColor_];

      v70 = sub_22088B9EC();
      sub_22067AB0C(v63, v64, v70);

      sub_2205F3DD8(v64, type metadata accessor for StockFeedMastheadViewLayoutAttributes);
      sub_2205F3DD8(v63, v279);
      goto LABEL_23;
    }

    sub_2205F3BD8(0, qword_28128C5A8, type metadata accessor for StockFeedMastheadModel, &type metadata for StockFeedPriceViewLayoutAttributes);
    memcpy(v290, v54 + *(v117 + 48), 0x208uLL);
    v77 = type metadata accessor for StockFeedMastheadModel;
    v78 = v270;
    sub_2205F3CDC(v54, v270, type metadata accessor for StockFeedMastheadModel);
    sub_2205F3C48(0);
    v118 = sub_220891C1C();
    v119 = *(ObjectType + 16);
    v120 = *(v119 + 80);
    v68 = v118;
    v121 = v120(v56, v119);
    [v68 setBackgroundColor_];

    v122 = sub_22088B9EC();
    sub_2205D7CD4(v78, v290, v122);

LABEL_13:
    v101 = v78;
LABEL_14:
    sub_2205F3DD8(v101, v77);
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v123 = v54[6];
      v124 = v54[7];
      v125 = v54[8];
      v126 = v54[9];
      sub_2205144F4(0);
      v127 = sub_220891C1C();
      v128 = *(ObjectType + 16);
      v129 = *(v128 + 80);
      v68 = v127;
      v130 = v129(v56, v128);
      [v68 setBackgroundColor_];

      v131 = *(v281 + 136);
      v132 = sub_22088B9EC();
      v133 = OBJC_IVAR____TtC8StocksUI11PlacardView_messageLabel;
      [*&v132[OBJC_IVAR____TtC8StocksUI11PlacardView_messageLabel] setFrame_];
      v134 = *&v132[v133];
      v135 = sub_22089132C();
      [v134 setText_];

      swift_beginAccess();
      v136 = __swift_project_boxed_opaque_existential_1((v131 + 16), *(v131 + 40));
      v137 = *&v132[v133];
      v138 = *v136;
      sub_220561394();
      v139 = sub_220891F2C();
      [v137 setFont_];

      v141 = v138[5];
      v140 = v138[6];
      __swift_project_boxed_opaque_existential_1(v138 + 2, v141);
      v142 = (*(*(v140 + 16) + 40))(v141);
      [v137 setTextColor_];

      goto LABEL_23;
    }

    sub_2205F3BD8(0, &qword_281288D90, type metadata accessor for StockFeedEarningsViewModel, &type metadata for StockFeedEarningsViewLayoutAttributes);
    v72 = v54 + *(v71 + 48);
    v73 = *(v72 + 5);
    v290[4] = *(v72 + 4);
    v290[5] = v73;
    v74 = *(v72 + 7);
    v290[6] = *(v72 + 6);
    v290[7] = v74;
    v75 = *(v72 + 1);
    v290[0] = *v72;
    v290[1] = v75;
    v76 = *(v72 + 3);
    v290[2] = *(v72 + 2);
    v290[3] = v76;
    v77 = type metadata accessor for StockFeedEarningsViewModel;
    v78 = v261;
    sub_2205F3CDC(v54, v261, type metadata accessor for StockFeedEarningsViewModel);
    sub_2205F3908(0);
    v79 = sub_220891C1C();
    v80 = *(ObjectType + 16);
    v81 = *(v80 + 80);
    v68 = v79;
    v82 = v81(v56, v80);
    [v68 setBackgroundColor_];

    v83 = sub_22088B9EC();
    sub_2206F0220(v78, v290, v83);

    v84 = sub_22088B9EC();
    v85 = *&v84[OBJC_IVAR____TtC8StocksUI21StockFeedEarningsView_addCalendarButton];

    v86 = *&v85[qword_28128D6E0];
    v87 = swift_allocObject();
    swift_weakInit();
    v88 = v260;
    sub_2205F3A5C(v78, v260, type metadata accessor for StockFeedEarningsViewModel);
    v89 = (*(v257 + 80) + 24) & ~*(v257 + 80);
    v90 = swift_allocObject();
    *(v90 + 16) = v87;
    sub_2205F3CDC(v88, v90 + v89, type metadata accessor for StockFeedEarningsViewModel);

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v102 = *(v54 + 5);
    v290[4] = *(v54 + 4);
    v290[5] = v102;
    v103 = *(v54 + 7);
    v290[6] = *(v54 + 6);
    v290[7] = v103;
    v104 = *(v54 + 1);
    v290[0] = *v54;
    v290[1] = v104;
    v105 = *(v54 + 3);
    v290[2] = *(v54 + 2);
    v290[3] = v105;
    sub_2205F34B4(0);
    v106 = sub_220891C1C();
    v107 = *(ObjectType + 16);
    v108 = *(v107 + 80);
    v68 = v106;
    v109 = v108(v56, v107);
    [v68 setBackgroundColor_];

    sub_220814B10(v286);
    v283[0] = v286[0];
    v283[1] = v286[1];
    v284 = v287;
    v285 = v288;
    v110 = sub_22088B9EC();
    sub_2205D4B08(v283, v290, v110);

    v111 = sub_22088B9EC();
    v112 = *&v111[OBJC_IVAR____TtC8StocksUI23BilingualFeedPromptView_enableBilingualFeedButton];

    v113 = *&v112[qword_27CF57ED0];
    swift_allocObject();
    swift_weakInit();

    v114 = sub_22088B9EC();
    v115 = *&v114[OBJC_IVAR____TtC8StocksUI23BilingualFeedPromptView_neverShowBilingualFeedPromptsButton];

    v116 = *&v115[qword_27CF57ED0];
    swift_allocObject();
    swift_weakInit();
  }

  else
  {
    (*(v271 + 32))(v276, v54, v272);
    v153 = *(v281 + 216);
    boxed_opaque_existential_1 = *(v281 + 208);
    v279 = v153;
    ObjectType = swift_getObjectType();
    v154 = swift_allocObject();
    swift_weakInit();
    v155 = v274;
    v156 = v263;
    v259 = *(v274 + 16);
    v260 = v274 + 16;
    v259(v273, v266, v263);
    v157 = v275;
    v158 = *(v275 + 16);
    v159 = v264;
    v160 = v265;
    v257 = v275 + 16;
    v255 = v158;
    (v158)(v264, v282, v265);
    v161 = *(v155 + 80);
    v162 = (v161 + 24) & ~v161;
    v163 = *(v157 + 80);
    v164 = (v256 + v163 + v162) & ~v163;
    v256 = v161 | v163;
    v258 += v164;
    v165 = swift_allocObject();
    *(v165 + 16) = v154;
    v166 = *(v155 + 32);
    v261 = v162;
    v274 = v155 + 32;
    v254 = v166;
    (v166)(v165 + v162, v273, v156);
    v167 = *(v157 + 32);
    v270 = v164;
    v275 = v157 + 32;
    v167((v165 + v164), v159, v160);

    v168 = v267;
    v169 = v276;
    sub_22088F8EC();

    v171 = v268;
    v170 = v269;
    v172 = v262;
    (*(v268 + 16))(v262, v168, v269);
    v173 = (*(v171 + 88))(v172, v170);
    if (v173 == *MEMORY[0x277D32538])
    {
      (*(v171 + 96))(v172, v170);
      v174 = *v172;
      v175 = v281;
      v176 = *(v281 + 56);
      v177 = *(v281 + 64);
      v178 = __swift_project_boxed_opaque_existential_1((v281 + 32), v176);
      v179 = *(v176 - 8);
      v180 = MEMORY[0x28223BE20](v178, v178);
      v182 = &v243 - ((v181 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v179 + 16))(v182, v180);
      v183 = *(v177 + 16);
      v184 = *(v183 + 80);
      v68 = v174;
      v185 = v184(v176, v183);
      (*(v179 + 8))(v182, v176);
      [v68 setBackgroundColor_];

      v186 = sub_22088B9CC();
      v187 = v175[7];
      v188 = v175[8];
      v189 = __swift_project_boxed_opaque_existential_1(v175 + 4, v187);
      v190 = *(v187 - 8);
      v191 = MEMORY[0x28223BE20](v189, v189);
      v193 = &v243 - ((v192 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v190 + 16))(v193, v191);
      v194 = (*(*(v188 + 16) + 104))(v187);
      (*(v190 + 8))(v193, v187);
      [v186 setBackgroundColor_];

      v195 = sub_22088B9CC();
      sub_22088C58C();

      v196 = sub_22088B9CC();
      sub_22088C59C();

      v197 = sub_22088B9CC();
      (*(v248 + 104))(v247, *MEMORY[0x277D6DEE8], v249);
      sub_22088C5BC();

      v198 = [v68 layer];
      [v198 setCornerRadius_];

      [v68 setClipsToBounds_];
    }

    else
    {
      if (v173 != *MEMORY[0x277D32540])
      {
        v68 = sub_22088FABC();
        v240 = [v68 layer];
        [v240 setCornerRadius_];

        [v68 setClipsToBounds_];
        v241 = *(v171 + 8);
        v241(v168, v170);
        (*(v271 + 8))(v169, v272);
        v241(v172, v170);
        goto LABEL_23;
      }

      (*(v171 + 96))(v172, v170);
      v279 = *v172;
      v199 = swift_allocObject();
      v200 = sub_22088C91C();
      v201 = MEMORY[0x277D6E038];
      v199[5] = v200;
      v199[6] = v201;
      __swift_allocate_boxed_opaque_existential_1(v199 + 2);
      sub_22088C90C();
      *v246 = v199;
      v202 = v244;
      v203 = v245;
      v204 = *(v245 + 104);
      v204();
      sub_2205F3680(0);
      v206 = v205;
      v207 = swift_allocBox();
      v209 = v208;
      v210 = *(v206 + 48);
      v280 = v167;
      v211 = *(v203 + 16);
      v212 = v246;
      v211(v208, v246, v202);
      v211(v209 + v210, v212, v202);
      v213 = v243;
      *v243 = v207;
      v214 = v202;
      (v204)(v213, *MEMORY[0x277D6D930], v202);
      v215 = v279;
      sub_22088B9DC();
      v216 = v215;
      v217 = sub_22088B9CC();
      v218 = *(v281 + 56);
      v219 = *(v281 + 64);
      v220 = __swift_project_boxed_opaque_existential_1((v281 + 32), v218);
      v221 = *(v218 - 8);
      v222 = MEMORY[0x28223BE20](v220, v220);
      v224 = &v243 - ((v223 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v221 + 16))(v224, v222);
      v225 = (*(*(v219 + 16) + 104))(v218);
      (*(v221 + 8))(v224, v218);
      [v217 setBackgroundColor_];

      v226 = sub_22088B9CC();
      sub_22088C58C();

      v227 = sub_22088B9CC();
      sub_22088C59C();

      v228 = sub_22088B9CC();
      (*(v248 + 104))(v247, *MEMORY[0x277D6DEE8], v249);
      sub_22088C5BC();

      v229 = sub_22088B9EC();
      v230 = sub_22089027C();

      v231 = sub_220890C1C();
      v232 = swift_allocObject();
      swift_weakInit();
      v233 = v273;
      v234 = v263;
      v259(v273, v266, v263);
      v236 = v264;
      v235 = v265;
      (v255)(v264, v282, v265);
      v237 = swift_allocObject();
      *(v237 + 16) = v232;
      (v254)(v237 + v261, v233, v234);
      v280((v237 + v270), v236, v235);
      *&v290[2] = sub_2205F3838;
      *(&v290[2] + 1) = v237;
      *&v290[0] = MEMORY[0x277D85DD0];
      *(&v290[0] + 1) = 1107296256;
      *&v290[1] = sub_2204C35E8;
      *(&v290[1] + 1) = &block_descriptor_12;
      v238 = _Block_copy(v290);

      [v231 onTouchUpInside_];
      _Block_release(v238);

      v68 = v216;
      v239 = [v68 layer];
      [v239 setCornerRadius_];

      [v68 setClipsToBounds_];
      (*(v245 + 8))(v246, v214);
    }

    (*(v268 + 8))(v267, v269);
    (*(v271 + 8))(v276, v272);
  }

LABEL_23:
  __swift_destroy_boxed_opaque_existential_1(v289);
  return v68;
}

double sub_2205F2CFC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = type metadata accessor for QuoteDetailViewModel(0);
      sub_220649320(a2 + *(v4 + 20));

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

double sub_2205F2D94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = type metadata accessor for StockFeedEarningsViewModel(0);
      sub_2206496E0(a2 + *(v4 + 20), *(a2 + *(v4 + 32)), *(a2 + *(v4 + 32) + 8));

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

double sub_2205F2E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_22088FFCC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088F52C();
  if ((*(v7 + 88))(v10, v6) == *MEMORY[0x277D32F88])
  {
    (*(v7 + 96))(v10, v6);
    v11 = sub_22089023C();
    v12 = *(v11 - 8);
    if ((*(v12 + 88))(v10, v11) == *MEMORY[0x277D33338])
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_220649BE8(a3, a4);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }

    else
    {
      (*(v12 + 8))(v10, v11);
    }
  }

  else
  {
    (*(v7 + 8))(v10, v6);
  }

  return result;
}

double sub_2205F3044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_220649BE8(a2, a3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

double sub_2205F30DC(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      a2();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2205F3168()
{
  sub_22054B9F8(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 168));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 232));
  return v0;
}

uint64_t sub_2205F31E0()
{
  sub_2205F3168();

  return swift_deallocClassInstance();
}

uint64_t (*sub_2205F3260@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t a1)@<X1>, void (**a3)(char *, char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t (**a5)(uint64_t a1)@<X8>))(uint64_t a1)
{
  result = sub_2205F10F0(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_2205F3290(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_22046DA2C(v2 + 32, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(v5 + 8);
  v7 = *(v6 + 8);
  v10 = v4;
  v11 = v5;
  __swift_allocate_boxed_opaque_existential_1(&v9);
  v7(a2, v4, v6);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v2 + 32));
  sub_220457328(&v9, v2 + 32);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v12);
  swift_getObjectType();
  sub_22088D31C();
  swift_getObjectType();
  sub_22088D31C();
  swift_getObjectType();
  sub_22088D31C();
  swift_getObjectType();
  sub_22088D31C();
  swift_getObjectType();
  return sub_22088D31C();
}

void sub_2205F34B4(uint64_t a1)
{
  if (!qword_281297B70)
  {
    type metadata accessor for BilingualFeedPromptView();
    sub_220514614(&qword_28128BEF8, type metadata accessor for BilingualFeedPromptView, &unk_2208A3B70);
    v1 = sub_22088B9FC();
    if (!v2)
    {
      atomic_store(v1, &qword_281297B70);
    }
  }
}

double sub_2205F35A8(uint64_t a1)
{
  sub_22055D328(0);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  v6 = *(sub_2208854AC() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2205F2E38(a1, v7, v1 + v4, v8);
}

void sub_2205F3680(uint64_t a1)
{
  if (!qword_281297C28)
  {
    sub_22088B8CC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281297C28);
    }
  }
}

uint64_t objectdestroy_5Tm()
{
  sub_22055D328(0);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = sub_2208854AC();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);

  (*(v3 + 8))(v0 + v4, v2);
  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

double sub_2205F3838()
{
  sub_22055D328(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(sub_2208854AC() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2205F3044(v5, v0 + v2, v6);
}

void sub_2205F3908(uint64_t a1)
{
  if (!qword_281297B80)
  {
    type metadata accessor for StockFeedEarningsView();
    sub_220514614(&qword_28128D6C0, type metadata accessor for StockFeedEarningsView, &unk_2208B2ABC);
    v1 = sub_22088B9FC();
    if (!v2)
    {
      atomic_store(v1, &qword_281297B80);
    }
  }
}

void sub_2205F39C8(uint64_t a1)
{
  if (!qword_281297B90)
  {
    type metadata accessor for QuoteDetailView();
    sub_220514614(&qword_281293178, type metadata accessor for QuoteDetailView, &unk_2208B0F8C);
    v1 = sub_22088B9FC();
    if (!v2)
    {
      atomic_store(v1, &qword_281297B90);
    }
  }
}

uint64_t sub_2205F3A5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2205F3AF0(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

void sub_2205F3B80(uint64_t a1)
{
  if (!qword_281298060)
  {
    type metadata accessor for StockChartViewController(255);
    v1 = sub_22088A9BC();
    if (!v2)
    {
      atomic_store(v1, &qword_281298060);
    }
  }
}

void sub_2205F3BD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_2205F3C48(uint64_t a1)
{
  if (!qword_281297B88)
  {
    type metadata accessor for StockFeedPriceView();
    sub_220514614(&qword_281290628, type metadata accessor for StockFeedPriceView, &unk_2208A2F8C);
    v1 = sub_22088B9FC();
    if (!v2)
    {
      atomic_store(v1, &qword_281297B88);
    }
  }
}

uint64_t sub_2205F3CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2205F3D44(uint64_t a1)
{
  if (!qword_281297B78)
  {
    type metadata accessor for StockFeedMastheadView();
    sub_220514614(&qword_28128D5B8, type metadata accessor for StockFeedMastheadView, &unk_2208A3ACC);
    v1 = sub_22088B9FC();
    if (!v2)
    {
      atomic_store(v1, &qword_281297B78);
    }
  }
}

uint64_t sub_2205F3DD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id StockActivityItemsConfiguration.__allocating_init(stock:quote:)(char *a1, uint64_t a2)
{
  v24 = a2;
  v25 = a1;
  sub_220453FB8(0, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v24 - v7;
  v9 = sub_22088685C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(v2);
  sub_22048BC00();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22089B130;
  v16 = *(v10 + 16);
  v16(v13, a1, v9);
  sub_2204B1CA8(a2, v8);
  v17 = type metadata accessor for StockShareActivityItemSource(0);
  v18 = objc_allocWithZone(v17);
  v16(&v18[OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_stock], v13, v9);
  sub_2204B1CA8(v8, &v18[OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_quote]);
  v26.receiver = v18;
  v26.super_class = v17;
  v19 = objc_msgSendSuper2(&v26, sel_init);
  sub_220570398(v8);
  v20 = *(v10 + 8);
  v20(v13, v9);
  *(v15 + 32) = v19;
  sub_22044869C(0, &qword_28127E6C8, &protocolRef_UIActivityItemSource);
  v21 = sub_2208916DC();

  v22 = [v14 initNAWithActivityItemSources_];

  sub_220570398(v24);
  v20(v25, v9);
  return v22;
}

uint64_t type metadata accessor for StockShareActivityItemSource(uint64_t a1)
{
  result = qword_281286C80;
  if (!qword_281286C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_2205F41A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t), SEL *a5)
{
  v10 = objc_allocWithZone(v5);
  a4(0, a2, a3);
  v11 = sub_2208916DC();

  v12 = [v10 *a5];

  return v12;
}

id sub_2205F4268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t), SEL *a5)
{
  ObjectType = swift_getObjectType();
  a4(0, a2, a3);
  v11 = sub_2208916DC();

  v14.receiver = v5;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, *a5, v11);

  return v12;
}

id sub_2205F431C(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v7, *a4, a3);
}

uint64_t sub_2205F4390(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v286 = sub_220884E9C();
  v284 = *(v286 - 8);
  MEMORY[0x28223BE20](v286, v6);
  v283 = &v239 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302 = sub_220885D4C();
  v303 = *(v302 - 8);
  MEMORY[0x28223BE20](v302, v8);
  v279 = &v239 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v298 = &v239 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v277 = &v239 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v278 = &v239 - v18;
  v276 = sub_22088501C();
  v275 = *(v276 - 8);
  MEMORY[0x28223BE20](v276, v19);
  v272 = &v239 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = sub_22088502C();
  v273 = *(v274 - 8);
  MEMORY[0x28223BE20](v274, v21);
  v271 = &v239 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = sub_220884FFC();
  v269 = *(v270 - 8);
  MEMORY[0x28223BE20](v270, v23);
  v268 = &v239 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = sub_220884F9C();
  v266 = *(v267 - 8);
  MEMORY[0x28223BE20](v267, v25);
  v263 = &v239 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = sub_220884FAC();
  v264 = *(v265 - 8);
  MEMORY[0x28223BE20](v265, v27);
  v262 = &v239 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22088543C();
  MEMORY[0x28223BE20](v29 - 8, v30);
  v259 = &v239 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2208853CC();
  MEMORY[0x28223BE20](v32 - 8, v33);
  v258 = &v239 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_220884DAC();
  MEMORY[0x28223BE20](v35 - 8, v36);
  v256 = &v239 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x277D83D88];
  sub_220453FB8(0, &qword_2812994C8, MEMORY[0x277CC9388], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v39 - 8, v40);
  v254 = &v239 - v41;
  sub_220453FB8(0, &qword_2812994C0, MEMORY[0x277CC93A0], v38);
  MEMORY[0x28223BE20](v42 - 8, v43);
  v294 = &v239 - v44;
  v261 = sub_22088505C();
  v260 = *(v261 - 8);
  MEMORY[0x28223BE20](v261, v45);
  v253 = &v239 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47, v48);
  v255 = &v239 - v49;
  MEMORY[0x28223BE20](v50, v51);
  v257 = &v239 - v52;
  MEMORY[0x28223BE20](v53, v54);
  v296 = &v239 - v55;
  v297 = sub_22088516C();
  v301 = *(v297 - 8);
  MEMORY[0x28223BE20](v297, v56);
  v295 = &v239 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = sub_2208852DC();
  v251 = *(v252 - 8);
  MEMORY[0x28223BE20](v252, v58);
  v293 = &v239 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = sub_2208857EC();
  v249 = *(v250 - 8);
  MEMORY[0x28223BE20](v250, v60);
  v247 = &v239 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_22088699C();
  v292 = *(v248 - 1);
  MEMORY[0x28223BE20](v248, v62);
  v291 = &v239 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64, v65);
  v289 = &v239 - v66;
  v246 = type metadata accessor for PriceViewModel(0);
  MEMORY[0x28223BE20](v246, v67);
  v299 = (&v239 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_220453FB8(0, &qword_2812990C0, MEMORY[0x277D697F8], v38);
  MEMORY[0x28223BE20](v69 - 8, v70);
  v245 = (&v239 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v72, v73);
  v244 = &v239 - v74;
  MEMORY[0x28223BE20](v75, v76);
  v281 = &v239 - v77;
  MEMORY[0x28223BE20](v78, v79);
  *&v243 = &v239 - v80;
  MEMORY[0x28223BE20](v81, v82);
  v290 = &v239 - v83;
  MEMORY[0x28223BE20](v84, v85);
  v87 = &v239 - v86;
  v88 = sub_22088676C();
  v89 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v90);
  v304 = &v239 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v317 = a1;
  v318 = a2;
  __swift_allocate_boxed_opaque_existential_1(&v316);
  sub_22088C17C();
  __swift_mutable_project_boxed_opaque_existential_1(&v316, v317);
  sub_22088C13C();
  v314 = a1;
  v315 = a2;
  __swift_allocate_boxed_opaque_existential_1(&v313);
  v287 = a1;
  v288 = a2;
  sub_22088C17C();
  v92 = OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_stock;
  v309 = sub_22088684C();
  v310 = v93;

  MEMORY[0x223D89680](548913696, 0xA400000000000000);

  v95 = v309;
  v94 = v310;
  v96 = sub_2208867BC();
  v98 = v97;
  v309 = v95;
  v310 = v94;
  v99 = v88;
  v100 = v89;

  MEMORY[0x223D89680](v96, v98);

  v101 = v310;
  __swift_mutable_project_boxed_opaque_existential_1(&v313, v314);
  sub_22088C14C();
  v102 = v3;
  sub_2204B1CA8(v3 + OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_quote, v87);
  v103 = *(v100 + 6);
  v104 = v103(v87, 1, v99);
  v285 = v102;
  v282 = v92;
  if (v104 == 1)
  {

    sub_220570398(v87);
LABEL_92:
    sub_22046DA2C(&v313, &v309);
    __swift_mutable_project_boxed_opaque_existential_1(&v316, v317);
    sub_22088C15C();
    sub_2205F7828(&v309);
    v227 = v287;
    v228 = v288;
    v311 = v287;
    v312 = v288;
    __swift_allocate_boxed_opaque_existential_1(&v309);
    sub_22088C17C();
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v230 = objc_opt_self();
    v231 = [v230 bundleForClass_];
    v232 = sub_220884CAC();
    v234 = v233;

    v306[0] = v232;
    v306[1] = v234;

    MEMORY[0x223D89680](32, 0xE100000000000000);

    __swift_mutable_project_boxed_opaque_existential_1(&v309, v311);
    sub_22088C12C();

    v235 = v283;
    sub_22088678C();
    sub_220884E0C();
    (*(v284 + 8))(v235, v286);
    __swift_mutable_project_boxed_opaque_existential_1(&v309, v311);
    sub_22088C11C();

    sub_22046DA2C(&v309, v306);
    __swift_mutable_project_boxed_opaque_existential_1(&v316, v317);
    sub_22088C15C();
    sub_2205F7828(v306);
    v307 = v227;
    v308 = v228;
    __swift_allocate_boxed_opaque_existential_1(v306);
    sub_22088C17C();
    v236 = [v230 bundleForClass_];
    sub_220884CAC();

    __swift_mutable_project_boxed_opaque_existential_1(v306, v307);
    sub_22088C12C();

    sub_22046DA2C(v306, v305);
    __swift_mutable_project_boxed_opaque_existential_1(&v316, v317);
    sub_22088C15C();
    sub_2205F7828(v305);
    __swift_project_boxed_opaque_existential_1(&v316, v317);
    v237 = sub_22088C16C();
    __swift_destroy_boxed_opaque_existential_1(v306);
    __swift_destroy_boxed_opaque_existential_1(&v309);
    __swift_destroy_boxed_opaque_existential_1(&v313);
    __swift_destroy_boxed_opaque_existential_1(&v316);
    return v237;
  }

  v242 = v101;
  v105 = v304;
  (*(v100 + 4))(v304, v87, v99);
  __swift_mutable_project_boxed_opaque_existential_1(&v313, v314);
  sub_22088C13C();
  v106 = v290;
  (*(v100 + 2))(v290, v105, v99);
  (*(v100 + 7))(v106, 0, 1, v99);
  v107 = v289;
  sub_2208867CC();
  v108 = *&v243;
  sub_2204B1CA8(v106, *&v243);
  if (v103(v108, 1, v99) == 1)
  {
    sub_220570398(v108);
    v280 = 0.0;
    v300 = 1;
  }

  else
  {
    v280 = COERCE_DOUBLE(sub_22088675C());
    v300 = v109;
    (*(v100 + 1))(v108, v99);
  }

  v110 = v292;
  v111 = v281;
  sub_2204B1CA8(v106, v281);
  if (v103(v111, 1, v99) == 1)
  {
    sub_220570398(v111);
    v243 = 0.0;
    LODWORD(v281) = 1;
  }

  else
  {
    v243 = COERCE_DOUBLE(sub_22088666C());
    LODWORD(v281) = v112;
    (*(v100 + 1))(v111, v99);
  }

  v113 = v244;
  sub_2204B1CA8(v106, v244);
  if (v103(v113, 1, v99) == 1)
  {
    sub_220570398(v113);
    v241 = 0;
    v240 = 1;
  }

  else
  {
    v241 = sub_22088671C();
    v240 = v114;
    (*(v100 + 1))(v113, v99);
  }

  v115 = v245;
  v245 = v100;
  sub_2204B1CA8(v106, v115);
  v116 = v103(v115, 1, v99);
  v239 = v99;
  if (v116 == 1)
  {
    sub_220570398(v115);
    v244 = 0;
    v117 = 0;
  }

  else
  {
    v244 = sub_22088668C();
    v117 = v118;
    v245[1](v115, v99);
  }

  v119 = v299;
  v120 = v291;
  v121 = *(v110 + 2);
  v122 = v248;
  v121(v291, v107, v248);
  v123 = v249;
  v124 = v247;
  v125 = v120;
  v126 = v250;
  (*(v249 + 104))(v247, *MEMORY[0x277D69288], v250);
  v127 = v293;
  sub_22088524C();
  *v119 = v280;
  *(v119 + 8) = v300 & 1;
  v119[2] = v243;
  *(v119 + 24) = v281 & 1;
  *(v119 + 4) = v241;
  *(v119 + 40) = v240 & 1;
  *(v119 + 6) = v244;
  *(v119 + 7) = v117;
  v128 = v246;
  v121(v119 + *(v246 + 40), v125, v122);
  *(v119 + 8) = 9666786;
  v119[9] = -4.19867257e-140;
  v129 = *(v123 + 16);
  v244 = *(v128 + 36);
  v129(v119 + v244, v124, v126);
  v130 = *(v128 + 44);
  v131 = v251;
  v132 = v252;
  (*(v251 + 16))(v119 + v130, v127, v252);
  if (qword_281294078 != -1)
  {
    swift_once();
  }

  v133 = qword_2812B6B48;
  (*(v123 + 8))(v124, v126);
  v134 = *(v292 + 1);
  v134(v291, v122);
  v134(v289, v122);
  sub_220570398(v290);
  v135 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  swift_beginAccess();
  (*(v131 + 40))(v133 + v135, v127, v132);
  swift_endAccess();
  if ((v300 & 1) == 0)
  {
    v136 = v280;
    if (v280 == 0.0 || fabs(v280) >= 5.0)
    {
      if (qword_281294138 != -1)
      {
        swift_once();
      }

      v137 = &qword_2812B6B60;
    }

    else
    {
      if (qword_27CF55B40 != -1)
      {
        swift_once();
      }

      v137 = &qword_27CF6D0B0;
    }

    v138 = *v137;
    [v138 setNumberStyle_];
    v139 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v140 = [v138 stringFromNumber_];

    if (v140)
    {
      v246 = sub_22089136C();
      v247 = v141;

      goto LABEL_30;
    }
  }

  v247 = 0xA300000000000000;
  v246 = 9666786;
LABEL_30:
  v142 = v295;
  sub_2208866FC();
  v143 = v294;
  sub_220884EFC();
  v144 = sub_220884F0C();
  v145 = *(v144 - 8);
  v251 = *(v145 + 56);
  v252 = v145 + 56;
  (v251)(v143, 0, 1, v144);
  v249 = sub_220884EEC();
  v146 = *(v249 - 8);
  v248 = *(v146 + 56);
  v250 = v146 + 56;
  v147 = v254;
  (v248)(v254, 1, 1, v249);
  sub_220884D8C();
  sub_22088524C();
  sub_22088533C();
  sub_22088540C();
  v148 = v296;
  sub_220884F2C();
  v290 = sub_2205F78B0(v149);
  v150 = v148;
  v151 = v261;
  sub_22088514C();
  v260 = *(v260 + 8);
  (v260)(v150, v151);
  v289 = *(v301 + 8);
  v301 += 8;
  (v289)(v142, v297);
  v291 = v309;
  v292 = v310;
  sub_2208866FC();
  (v251)(v294, 1, 1, v144);
  (v248)(v147, 1, 1, v249);
  sub_220884D8C();
  sub_22088524C();
  sub_22088533C();
  sub_22088540C();
  v152 = v253;
  sub_220884F2C();
  v153 = v263;
  sub_220884F8C();
  v154 = v262;
  sub_220884F7C();
  (*(v266 + 8))(v153, v267);
  v155 = v255;
  sub_220884F3C();
  (*(v264 + 8))(v154, v265);
  v156 = v152;
  v157 = v260;
  (v260)(v156, v151);
  v158 = v268;
  sub_220884FEC();
  v159 = v257;
  sub_22088503C();
  (*(v269 + 8))(v158, v270);
  v157(v155, v151);
  v160 = v275;
  v161 = v272;
  v162 = v276;
  (*(v275 + 104))(v272, *MEMORY[0x277CC9400], v276);
  v163 = v271;
  sub_22088500C();
  (*(v160 + 8))(v161, v162);
  v164 = v296;
  sub_22088504C();
  (*(v273 + 8))(v163, v274);
  v157(v159, v151);
  v165 = v295;
  sub_22088514C();
  v157(v164, v151);
  v166 = v297;
  v167 = v289;
  (v289)(v165, v297);
  v168 = v309;
  v169 = v310;
  sub_2208866FC();
  v170 = sub_220838C44();
  v167(v165, v166);
  type metadata accessor for Localized();
  v171 = swift_getObjCClassFromMetadata();
  v172 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();
  v174 = v173;

  sub_220448068(0, &qword_28127DE60, &qword_28127DE10, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v175 = swift_allocObject();
  *(v175 + 16) = xmmword_22089B140;
  v176 = MEMORY[0x277D83C10];
  *(v175 + 56) = MEMORY[0x277D83B88];
  *(v175 + 64) = v176;
  *(v175 + 32) = v170;
  v177 = MEMORY[0x277D837D0];
  *(v175 + 96) = MEMORY[0x277D837D0];
  v178 = sub_22048D860();
  v179 = v292;
  *(v175 + 72) = v291;
  *(v175 + 80) = v179;
  *(v175 + 136) = v177;
  *(v175 + 144) = v178;
  *(v175 + 104) = v178;
  *(v175 + 112) = v168;
  *(v175 + 120) = v169;

  v297 = v169;

  v294 = v174;
  v295 = sub_22089139C();
  v296 = v180;
  v181 = *MEMORY[0x277D69480];
  v182 = v303;
  v183 = v278;
  v184 = *MEMORY[0x277D69480];
  v185 = v302;
  v301 = v303[13];
  (v301)(v278, v184, v302);
  v186 = v182[2];
  v187 = v277;
  v186(v277, v183, v185);
  v188 = v182[11];
  v189 = v188(v187, v185);
  if (v189 != v181)
  {
    if (v189 == *MEMORY[0x277D69468])
    {
      if ((v300 | v281))
      {
        v190 = 0xA300000000000000;
        v191 = 9666786;
        goto LABEL_60;
      }

      if (v280 - v243 <= 0.0)
      {
        v195 = 0.0;
      }

      else
      {
        v195 = v243 / (v280 - v243);
      }

      if (qword_27CF55AB8 == -1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (v189 != *MEMORY[0x277D69478])
      {
        goto LABEL_98;
      }

      if ((sub_2208857CC() & 1) == 0)
      {
        v191 = sub_220691100(0);
        v190 = v200;
        goto LABEL_59;
      }

      if ((v300 | v281))
      {
        goto LABEL_57;
      }

      if (v280 - v243 <= 0.0)
      {
        v195 = 0.0;
      }

      else
      {
        v195 = v243 / (v280 - v243);
      }

      if (qword_27CF55AB8 == -1)
      {
LABEL_55:
        v196 = qword_27CF6D008;
        v197 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
        v198 = [v196 stringFromNumber_];

        if (v198)
        {
          v191 = sub_22089136C();
          v190 = v199;

LABEL_59:
          v182 = v303;
          goto LABEL_60;
        }

LABEL_57:
        v190 = 0xA300000000000000;
        v191 = 9666786;
        goto LABEL_59;
      }
    }

    swift_once();
    goto LABEL_55;
  }

  v190 = 0xA300000000000000;
  v191 = 9666786;
  if ((v281 & 1) == 0)
  {
    v192 = v280 >= 5.0;
    if (v280 == 0.0)
    {
      v192 = 1;
    }

    v193 = sub_2204DBC04(v192 & ~v300, v243);
    if (v194)
    {
      v191 = v193;
    }

    else
    {
      v191 = 9666786;
    }

    if (v194)
    {
      v190 = v194;
    }
  }

LABEL_60:
  v291 = v191;
  v293 = v190;
  v201 = v182[1];
  v202 = v302;
  v303 = v182 + 1;
  v201(v183, v302);
  v203 = *MEMORY[0x277D69468];
  v204 = v298;
  (v301)(v298, *MEMORY[0x277D69468], v202);
  v205 = v279;
  v186(v279, v204, v202);
  v206 = v188(v205, v202);
  if (v206 == v181)
  {
    v207 = 0xA300000000000000;
    v208 = v304;
    if (v281)
    {
      v209 = v299;
      v210 = 9666786;
    }

    else
    {
      v211 = v280 >= 5.0;
      if (v280 == 0.0)
      {
        v211 = 1;
      }

      v212 = sub_2204DBC04(v211 & ~v300, v243);
      v210 = 9666786;
      if (v213)
      {
        v210 = v212;
        v207 = v213;
      }

      v209 = v299;
    }

    goto LABEL_87;
  }

  v208 = v304;
  if (v206 != v203)
  {
    v209 = v299;
    if (v206 != *MEMORY[0x277D69478])
    {
      goto LABEL_98;
    }

    v210 = 9666786;
    if ((sub_2208857CC() & 1) == 0)
    {
      v210 = sub_220691100(0);
      v207 = v219;
      goto LABEL_87;
    }

    if ((v300 | v281))
    {
      goto LABEL_85;
    }

    if (v280 - v243 <= 0.0)
    {
      v214 = 0.0;
    }

    else
    {
      v214 = v243 / (v280 - v243);
    }

    if (qword_27CF55AB8 == -1)
    {
LABEL_83:
      v215 = qword_27CF6D008;
      v216 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v217 = [v215 stringFromNumber_];

      if (v217)
      {
        v210 = sub_22089136C();
        v207 = v218;

        goto LABEL_87;
      }

LABEL_85:
      v207 = 0xA300000000000000;
      goto LABEL_87;
    }

LABEL_94:
    swift_once();
    goto LABEL_83;
  }

  v209 = v299;
  v210 = 9666786;
  if (((v300 | v281) & 1) == 0)
  {
    if (v280 - v243 <= 0.0)
    {
      v214 = 0.0;
    }

    else
    {
      v214 = v243 / (v280 - v243);
    }

    if (qword_27CF55AB8 == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_94;
  }

  v207 = 0xA300000000000000;
LABEL_87:
  v201(v298, v302);
  sub_22088668C();
  if (!v220)
  {

    v226 = 0;
    v225 = 0xE000000000000000;
    goto LABEL_91;
  }

  v221 = sub_22088668C();
  if (v222)
  {
    v223 = v221;
    v224 = v222;

    v309 = v223;
    v310 = v224;

    MEMORY[0x223D89680](32, 0xE100000000000000);

    v226 = v309;
    v225 = v310;
LABEL_91:
    v309 = v246;
    v310 = v247;

    MEMORY[0x223D89680](32, 0xE100000000000000);

    MEMORY[0x223D89680](v226, v225);

    MEMORY[0x223D89680](v295, v296);

    __swift_mutable_project_boxed_opaque_existential_1(&v313, v314);
    sub_22088C12C();

    __swift_mutable_project_boxed_opaque_existential_1(&v313, v314);
    sub_22088C13C();
    v309 = v291;
    v310 = v293;

    MEMORY[0x223D89680](32, 0xE100000000000000);

    MEMORY[0x223D89680](v210, v207);

    __swift_mutable_project_boxed_opaque_existential_1(&v313, v314);
    sub_22088C12C();

    sub_2205F7908(v209);
    v245[1](v208, v239);
    goto LABEL_92;
  }

  __break(1u);
LABEL_98:
  result = sub_2208928AC();
  __break(1u);
  return result;
}

void sub_2205F6AC0(uint64_t a1)
{
  sub_22088685C();
  if (v1 <= 0x3F)
  {
    sub_220453FB8(319, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double sub_2205F6D0C@<D0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    *(a2 + 24) = sub_220884E9C();
    __swift_allocate_boxed_opaque_existential_1(a2);
    sub_22088678C();
    return result;
  }

  v4 = sub_22089136C();
  v6 = v5;
  if (v4 == sub_22089136C() && v6 == v7)
  {
    v11 = a1;

LABEL_12:
    v12 = sub_22088BB2C();
    v13 = sub_2205F4390(v12, MEMORY[0x277D6DA38]);
    if (v14)
    {
      v15 = v13;
      v16 = v14;
      *(a2 + 24) = MEMORY[0x277D837D0];

      *a2 = v15;
      *(a2 + 8) = v16;
    }

    else
    {

      result = 0.0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }

    return result;
  }

  v9 = sub_2208928BC();
  v17 = a1;

  if (v9)
  {
    goto LABEL_12;
  }

  *(a2 + 24) = sub_220884E9C();
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_22088678C();

  return result;
}

uint64_t sub_2205F7134()
{
  sub_22048BC00();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22089B130;
  *(v1 + 32) = v0;
  sub_220453FB8(0, &qword_27CF57720, type metadata accessor for ActivityType, MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22089D630;
  v3 = *MEMORY[0x277D54708];
  v4 = *MEMORY[0x277D54778];
  *(v2 + 32) = *MEMORY[0x277D54708];
  *(v2 + 40) = v4;
  v5 = *MEMORY[0x277D54718];
  v6 = *MEMORY[0x277D54780];
  *(v2 + 48) = *MEMORY[0x277D54718];
  *(v2 + 56) = v6;
  v7 = *MEMORY[0x277D54750];
  v8 = *MEMORY[0x277D54768];
  *(v2 + 64) = *MEMORY[0x277D54750];
  *(v2 + 72) = v8;
  v9 = *MEMORY[0x277D54720];
  *(v2 + 80) = *MEMORY[0x277D54720];
  v10 = objc_allocWithZone(sub_22088C8CC());
  v11 = v20;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  return sub_22088C8BC();
}

NSData *sub_2205F72B0()
{
  v0 = sub_220884E9C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CD46C8]) init];
  sub_22088678C();
  v6 = sub_220884E3C();
  v7 = *(v1 + 8);
  v7(v4, v0);
  [v5 setOriginalURL_];

  sub_22088678C();
  v8 = sub_220884E3C();
  v7(v4, v0);
  [v5 setURL_];

  v9 = [objc_allocWithZone(MEMORY[0x277CD46F8]) init];
  sub_220448068(0, &qword_28127DE60, &qword_28127DE10, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_220899920;
  v11 = sub_22088684C();
  v13 = v12;
  v14 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v15 = sub_22048D860();
  *(v10 + 64) = v15;
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  v16 = sub_2208867BC();
  *(v10 + 96) = v14;
  *(v10 + 104) = v15;
  *(v10 + 72) = v16;
  *(v10 + 80) = v17;
  sub_22089139C();
  v18 = sub_22089132C();

  [v9 setCombinedTitle_];

  sub_22088684C();
  v19 = sub_22089132C();

  [v9 setTitle_];

  sub_2208867BC();
  v20 = sub_22089132C();

  [v9 setSubtitle_];

  v21 = sub_22089132C();
  [v9 setFootnote_];

  v22 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v23 = sub_22089132C();
  v24 = [v22 initWithBundleIdentifier_];

  v25 = [objc_opt_self() mainScreen];
  [v25 scale];
  v27 = v26;

  v28 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:60.0 scale:{60.0, v27}];
  sub_22048BC00();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_22089B130;
  *(v29 + 32) = v28;
  sub_22044D56C(0, &qword_27CF577C0, 0x277D1B1C8);
  v30 = v28;
  v31 = sub_2208916DC();

  [v24 prepareImagesForImageDescriptors_];

  v32 = [v24 imageForDescriptor_];
  if (!v32)
  {
    goto LABEL_5;
  }

  v33 = v32;
  result = [v32 CGImage];
  if (result)
  {
    v35 = result;
    v46 = v5;
    v36 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

    result = UIImagePNGRepresentation(v36);
    if (result)
    {
      v37 = result;
      v38 = sub_220884ECC();
      v40 = v39;

      v41 = objc_allocWithZone(MEMORY[0x277CD46B0]);
      v42 = sub_220884EBC();
      v43 = sub_22089132C();
      v44 = [v41 initWithData:v42 MIMEType:v43];

      sub_220457EE8(v38, v40);
      [v9 setIcon_];

      v5 = v46;
LABEL_5:
      [v5 setSpecialization_];

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2205F7828(uint64_t a1)
{
  sub_220448068(0, &qword_27CF577C8, &qword_27CF577D0, MEMORY[0x277D6DDB0], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2205F78B0(__n128 a1)
{
  result = qword_2812994B8;
  if (!qword_2812994B8)
  {
    sub_22088505C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812994B8);
  }

  return result;
}

uint64_t sub_2205F7908(uint64_t a1)
{
  v2 = type metadata accessor for PriceViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2205F7968()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

double sub_2205F7A00(uint64_t a1)
{
  sub_22089146C();

  return result;
}

uint64_t sub_2205F7A84()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

unint64_t sub_2205F7B18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2205F7E4C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2205F7B48(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEB00000000647261;
  v5 = 0x63616C507377656ELL;
  if (v2 != 1)
  {
    v5 = 25697;
    v4 = 0xE200000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1937204590;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_2205F7BA0()
{
  result = qword_281290648;
  if (!qword_281290648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281290648);
  }

  return result;
}

uint64_t sub_2205F7BF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x63616C507377656ELL;
  v4 = 0xEB00000000647261;
  if (v2 != 1)
  {
    v3 = 25697;
    v4 = 0xE200000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1937204590;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x63616C507377656ELL;
  v8 = 0xEB00000000647261;
  if (*a2 != 1)
  {
    v7 = 25697;
    v8 = 0xE200000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1937204590;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2208928BC();
  }

  return v11 & 1;
}

unint64_t sub_2205F7D98()
{
  result = qword_281290640;
  if (!qword_281290640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281290640);
  }

  return result;
}

uint64_t sub_2205F7DFC()
{
  v1 = 0x616C50207377654ELL;
  if (*v0 != 1)
  {
    v1 = 25665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1937204558;
  }
}

unint64_t sub_2205F7E4C(uint64_t a1, uint64_t a2)
{
  v2 = sub_22089270C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2205F7EAC()
{
  result = qword_27CF577D8;
  if (!qword_27CF577D8)
  {
    sub_2205F7F04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF577D8);
  }

  return result;
}

void sub_2205F7F04()
{
  if (!qword_27CF577E0)
  {
    v0 = sub_2208917AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF577E0);
    }
  }
}

void *sub_2205F7F54(uint64_t a1)
{
  v3 = type metadata accessor for WatchlistCreationRouteModel(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3, v7);
  v8 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextInputAlert();
  v9 = swift_allocObject();
  v9[5] = &type metadata for WatchlistCreationAlert;
  v9[6] = &off_28341FF18;
  v9[9] = 0;
  v9[10] = 0;
  v9[12] = 0;
  v9[13] = 0;
  v9[11] = sub_22045F7BC;
  sub_2205F8458(a1, v8);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  sub_2205F84BC(v8, v11 + v10);
  v9[7] = sub_2205F8520;
  v9[8] = v11;
  v12 = (a1 + *(v4 + 28));
  v13 = *v12;
  v14 = v12[1];
  if (*v12)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = v14;
    v9[9] = sub_2204D48F4;
    v9[10] = v15;
  }

  v9[11] = sub_2205F83D0;
  v9[12] = 0;

  sub_2204A80F4(v13, v14);
  return v9;
}

double sub_2205F8108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a3;
  v8 = type metadata accessor for WatchlistCreationRouteModel(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v11;
  v13 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v4;
  v28 = a1;
  v29 = a2;
  type metadata accessor for WatchlistCreationResult(0);
  sub_220888FBC();
  v26 = sub_22046D5B4();
  v14 = sub_220891D0C();
  sub_2205F8458(a3, v13);
  v15 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v25 = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  sub_2205F84BC(v13, v16 + v15);
  sub_220886A4C();

  sub_220888E3C();

  v17 = v24;
  sub_2205F8458(v24, v13);
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  sub_2205F84BC(v13, v18 + v15);

  v19 = sub_220888D9C();
  sub_220888E3C();

  v20 = sub_220891D0C();
  sub_2205F8458(v17, v13);
  v21 = swift_allocObject();
  *(v21 + 16) = v4;
  sub_2205F84BC(v13, v21 + v15);

  sub_220888E4C();

  return result;
}

BOOL sub_2205F83D0(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  return v2 != 0;
}

uint64_t sub_2205F83EC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_2205F8458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WatchlistCreationRouteModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2205F84BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WatchlistCreationRouteModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2205F859C(uint64_t a1, uint64_t a2, unint64_t a3, __n128 a4)
{
  v7 = type metadata accessor for WatchlistCreationResult(0);
  MEMORY[0x28223BE20](v7, v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v13 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    MEMORY[0x28223BE20](v9, v10);
    v20[-4] = a1;
    v20[-3] = a2;
    v20[-2] = a3;
    sub_220886A4C();
    sub_220888FBC();
    v14 = sub_220888D9C();
    sub_220888E3C();

    v15 = sub_220888D9C();
    v16 = sub_220888EFC();

    return v16;
  }

  else
  {
    v18 = *(v7 + 20);
    v19 = sub_220886A4C();
    (*(*(v19 - 8) + 56))(&v12[v18], 1, 1, v19);
    *v12 = 1;
    sub_22047C3B8(0, &qword_27CF57808, type metadata accessor for WatchlistCreationResult, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_220888ECC();
  }
}

uint64_t type metadata accessor for WatchlistCreationResult(uint64_t a1)
{
  result = qword_27CF57818;
  if (!qword_27CF57818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2205F8824(char *a1, uint64_t a2, uint64_t a3)
{
  sub_22047C3B8(0, &qword_281298FF0, MEMORY[0x277D698E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v25 - v7;
  v9 = sub_220886A4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v25 - v16;
  v18 = *a1;
  if (v18 == 3)
  {
    v19 = type metadata accessor for WatchlistCreationResult(0);
    sub_2205FAF20(&a1[*(v19 + 20)], v8, &qword_281298FF0, MEMORY[0x277D698E0], MEMORY[0x277D83D88], sub_22047C3B8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      v20 = MEMORY[0x277D698E0];
      sub_2205FB270(v8, &qword_281298FF0, MEMORY[0x277D698E0], MEMORY[0x277D83D88], sub_22047C3B8);
      sub_2205F8C4C(2, a3);
      sub_2205FACD4();
      swift_allocError();
      *v21 = 2;
      sub_22047C3B8(0, &qword_27CF577E8, v20, MEMORY[0x277D6CF30]);
      swift_allocObject();
      return sub_220888EBC();
    }

    else
    {
      (*(v10 + 32))(v17, v8, v9);
      (*(v10 + 16))(v13, v17, v9);
      sub_22047C3B8(0, &qword_27CF577E8, MEMORY[0x277D698E0], MEMORY[0x277D6CF30]);
      swift_allocObject();
      v24 = sub_220888ECC();
      (*(v10 + 8))(v17, v9);
      return v24;
    }
  }

  else
  {
    sub_2205F8C4C(*a1, a3);
    sub_2205FACD4();
    swift_allocError();
    *v23 = v18;
    sub_22047C3B8(0, &qword_27CF577E8, MEMORY[0x277D698E0], MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_220888EBC();
  }
}

uint64_t sub_2205F8C4C(char a1, uint64_t a2)
{
  v3 = v2;
  v41 = a2;
  sub_22047C3B8(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v39 = *(v5 - 8);
  v6 = *(v39 + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v39 - v10;
  v12 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for WatchlistCreationRouteModel(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8, v19);
  *(&v50 + 1) = &type metadata for WatchlistCreationErrorAlert;
  v51 = sub_2205FAD28();
  LOBYTE(v49) = a1;
  sub_22088E0CC();
  swift_allocObject();
  v20 = sub_22088E07C();
  sub_2205F8458(v41, &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v3;
  v23 = v11;
  sub_2205F84BC(&v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);

  sub_22088E0AC();

  v24 = *(v3 + 56);
  v41 = v20;
  *v15 = v20;
  v15[40] = 0;
  swift_storeEnumTagMultiPayload();
  v25 = sub_22088969C();
  (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  v46 = v24;
  sub_2205FAF20(v47, &v42, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  if (*(&v43 + 1))
  {
    sub_220458198(&v42, v44);

    v26 = sub_220597454(v44);
    v28 = v27;
    v30 = v29;
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {

    sub_2205FB270(&v42, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v26 = qword_2812908F8;
    v28 = qword_281290900;
    v30 = qword_281290908;

    sub_2204A80F4(v28, v30);
  }

  v43 = 0u;
  v42 = 0u;
  v31 = v40;
  sub_2205FAF20(v23, v40, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_22047C3B8);
  sub_2205FAF20(&v49, v44, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  v32 = (*(v39 + 80) + 24) & ~*(v39 + 80);
  v33 = (v6 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  sub_2205A0994(v31, v34 + v32);
  v35 = v34 + v33;
  v36 = v44[1];
  *v35 = v44[0];
  *(v35 + 16) = v36;
  *(v35 + 32) = v45;
  v37 = (v34 + ((v33 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v37 = v26;
  v37[1] = v28;
  v37[2] = v30;

  sub_2204A80F4(v28, v30);
  sub_2204549FC(0);
  sub_2205FAF98(&unk_281297EC0, sub_2204549FC, MEMORY[0x277D6D5F8]);
  sub_22088E92C();

  sub_2204DA45C(v28, v30);

  sub_2205FB270(v47, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_2205FB270(&v49, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_2205FB270(v23, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_22047C3B8);
  sub_2205BA954(v15);
  return sub_2205FB270(&v42, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205FB3E0);
}

uint64_t sub_2205F94B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v5 = sub_220886A4C();
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047C3B8(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = sub_22088685C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a2;
  sub_22088B48C();
  if (v26)
  {
    sub_2204446D4(0, &qword_281297F10, MEMORY[0x277D6D540]);
    sub_22088731C();
    if (swift_dynamicCast())
    {
      sub_220889A7C();
      v21 = v8;
      sub_2205FAF98(&qword_27CF577F0, MEMORY[0x277D689B0], MEMORY[0x277D689A8]);
      v8 = v21;
      sub_22088730C();
    }
  }

  else
  {
    sub_2205FB270(v25, &unk_281297F00, &qword_281297F10, MEMORY[0x277D6D540], sub_220448010);
  }

  sub_2205FAF20(v24, v12, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88], sub_22047C3B8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2205FB270(v12, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88], sub_22047C3B8);
    (*(v23 + 16))(v8, a1, v5);
    sub_22047C3B8(0, &qword_27CF577E8, MEMORY[0x277D698E0], MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_220888ECC();
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    sub_22046DA2C(v22 + 16, v25);
    __swift_project_boxed_opaque_existential_1(v25, v26);
    v19 = sub_220885FFC();
    (*(v14 + 8))(v17, v13);
    __swift_destroy_boxed_opaque_existential_1(v25);
    return v19;
  }
}

uint64_t sub_2205F99F0(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = a3;
  v5 = MEMORY[0x277D83D88];
  sub_22047C3B8(0, &qword_281298FF0, MEMORY[0x277D698E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v27 = &v27 - v8;
  v9 = MEMORY[0x277D69810];
  sub_22047C3B8(0, &qword_281299060, MEMORY[0x277D69810], v5);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v27 - v12;
  v14 = a2[5];
  v15 = __swift_project_boxed_opaque_existential_1(a2 + 2, v14);
  v16 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v15, v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v17);
  sub_220885F4C();
  (*(v16 + 8))(v19, v14);
  v20 = a1;
  sub_22088EB7C();

  sub_2205FAF20(v28, v13, &qword_281299060, v9, v5, sub_22047C3B8);
  v21 = sub_22088685C();
  LODWORD(v14) = (*(*(v21 - 8) + 48))(v13, 1, v21);
  result = sub_2205FB270(v13, &qword_281299060, v9, v5, sub_22047C3B8);
  if (v14 == 1)
  {
    sub_22088B45C();
    swift_getObjectType();
    if (qword_281297010 != -1)
    {
      swift_once();
    }

    v23 = sub_220886A4C();
    v24 = *(v23 - 8);
    v25 = v27;
    (*(v24 + 16))(v27, v20, v23);
    (*(v24 + 56))(v25, 0, 1, v23);
    v26 = v29;
    sub_22088B81C();
    if (v26)
    {

      swift_unknownObjectRelease();
      return sub_2205FB270(v25, &qword_281298FF0, MEMORY[0x277D698E0], MEMORY[0x277D83D88], sub_22047C3B8);
    }

    else
    {
      sub_2205FB270(v25, &qword_281298FF0, MEMORY[0x277D698E0], MEMORY[0x277D83D88], sub_22047C3B8);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_2205F9EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22046DA2C(a1 + 16, v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3 = sub_220885F1C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_2205F9F70(uint64_t a1)
{
  v2 = type metadata accessor for WatchlistCreationResult(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 28);
  v8 = sub_220886A4C();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v5[v7], a1, v8);
  (*(v9 + 56))(&v5[v7], 0, 1, v8);
  *v5 = 3;
  sub_22047C3B8(0, &qword_27CF57808, type metadata accessor for WatchlistCreationResult, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_220888ECC();
}

uint64_t sub_2205FA0C4(void *a1)
{
  v2 = type metadata accessor for WatchlistCreationResult(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047C3B8(0, &qword_27CF57810, MEMORY[0x277D69328], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v34 - v8;
  v10 = sub_22088583C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = v34 - v17;
  v34[1] = a1;
  v19 = a1;
  sub_2204446D4(0, &qword_28127DE30, MEMORY[0x277D84948]);
  v20 = swift_dynamicCast();
  v21 = *(v11 + 56);
  if ((v20 & 1) == 0)
  {
    v21(v9, 1, 1, v10);
    sub_2205FB270(v9, &qword_27CF57810, MEMORY[0x277D69328], MEMORY[0x277D83D88], sub_22047C3B8);
    goto LABEL_5;
  }

  v21(v9, 0, 1, v10);
  (*(v11 + 32))(v18, v9, v10);
  (*(v11 + 16))(v14, v18, v10);
  v22 = (*(v11 + 88))(v14, v10);
  if (v22 != *MEMORY[0x277D69320])
  {
    if (v22 == *MEMORY[0x277D69318])
    {
      v28 = *(v2 + 20);
      v29 = sub_220886A4C();
      (*(*(v29 - 8) + 56))(&v5[v28], 1, 1, v29);
      *v5 = 1;
      goto LABEL_10;
    }

    if (v22 == *MEMORY[0x277D69310])
    {
      v30 = *(v2 + 20);
      v31 = sub_220886A4C();
      (*(*(v31 - 8) + 56))(&v5[v30], 1, 1, v31);
      *v5 = 2;
      goto LABEL_10;
    }

    v33 = *(v11 + 8);
    v33(v18, v10);
    v33(v14, v10);
LABEL_5:
    v25 = *(v2 + 20);
    v26 = sub_220886A4C();
    (*(*(v26 - 8) + 56))(&v5[v25], 1, 1, v26);
    *v5 = 2;
    sub_22047C3B8(0, &qword_27CF57808, type metadata accessor for WatchlistCreationResult, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_220888ECC();
  }

  v23 = *(v2 + 20);
  v24 = sub_220886A4C();
  (*(*(v24 - 8) + 56))(&v5[v23], 1, 1, v24);
  *v5 = 0;
LABEL_10:
  sub_22047C3B8(0, &qword_27CF57808, type metadata accessor for WatchlistCreationResult, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v32 = sub_220888ECC();
  (*(v11 + 8))(v18, v10);
  return v32;
}

uint64_t sub_2205FA5F8(uint64_t a1, uint64_t a2)
{
  sub_22047C3B8(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8, v7);
  v8 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v31[-v11];
  v13 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v31[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(a1 + 56);
  sub_2205F8458(a2, v16);
  swift_storeEnumTagMultiPayload();
  v18 = sub_22088969C();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v36 = v17;
  sub_2205FAF20(v37, &v32, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  if (*(&v33 + 1))
  {
    sub_220458198(&v32, v34);
    v19 = sub_220597454(v34);
    v21 = v20;
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    sub_2205FB270(&v32, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v19 = qword_2812908F8;
    v21 = qword_281290900;
    v23 = qword_281290908;

    sub_2204A80F4(v21, v23);
  }

  v33 = 0u;
  v32 = 0u;
  sub_2205FAF20(v12, v8, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_22047C3B8);
  sub_2205FAF20(v39, v34, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  v24 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v25 = (v6 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  sub_2205A0994(v8, v26 + v24);
  v27 = v26 + v25;
  v28 = v34[1];
  *v27 = v34[0];
  *(v27 + 16) = v28;
  *(v27 + 32) = v35;
  v29 = (v26 + ((v25 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v29 = v19;
  v29[1] = v21;
  v29[2] = v23;

  sub_2204A80F4(v21, v23);
  sub_2204549FC(0);
  sub_2205FAF98(&unk_281297EC0, sub_2204549FC, MEMORY[0x277D6D5F8]);
  sub_22088E92C();

  sub_2204DA45C(v21, v23);
  sub_2205FB270(v37, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_2205FB270(v39, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_2205FB270(v12, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_22047C3B8);
  sub_2205BA954(v16);
  return sub_2205FB270(&v32, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205FB3E0);
}

unint64_t sub_2205FACD4()
{
  result = qword_27CF577F8;
  if (!qword_27CF577F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF577F8);
  }

  return result;
}

unint64_t sub_2205FAD28()
{
  result = qword_27CF57800;
  if (!qword_27CF57800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57800);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for WatchlistCreationRouteModel(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = sub_22088685C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  if (*(v0 + v2 + *(v1 + 20)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2205FAEBC()
{
  v1 = *(type metadata accessor for WatchlistCreationRouteModel(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_2205FA5F8(v2, v3);
}

uint64_t sub_2205FAF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_2205FAF98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_19Tm()
{
  sub_22047C3B8(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_22088969C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  }

  if (*(v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2205FB16C()
{
  sub_22047C3B8(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);

  return sub_220598700();
}

uint64_t sub_2205FB270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_2205FB308(uint64_t a1)
{
  sub_2205FB3E0(319, &qword_27CF57828, &type metadata for WatchlistCreationError, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_22047C3B8(319, &qword_281298FF0, MEMORY[0x277D698E0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2205FB3E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_2205FB434()
{
  result = qword_27CF57830;
  if (!qword_27CF57830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57830);
  }

  return result;
}

void *sub_2205FB48C(void *a1)
{
  v3 = sub_22088F11C();
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v29 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088F14C();
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v27 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088F17C();
  v26 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v25 - v16;
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2205FBB10(0, &qword_281298908, sub_2204953AC, MEMORY[0x277D6CB60]);
  swift_allocObject();
  v1[2] = sub_22088866C();
  v28 = a1;
  sub_22046DA2C(a1, (v1 + 3));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2205FBC20(&qword_281281AF8, v18, type metadata accessor for GoToWatchlistMenuGroupOptionProvider, &unk_2208A0EB8);

  sub_220885FAC();

  sub_22046D5B4();
  v19 = sub_220891D0C();
  sub_22088F16C();
  sub_22088F18C();
  v20 = *(v10 + 8);
  v25 = v10 + 8;
  v20(v13, v9);
  aBlock[4] = sub_2205FBB08;
  v34 = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2204C35E8;
  aBlock[3] = &block_descriptor_13;
  v21 = _Block_copy(aBlock);

  v22 = v27;
  sub_22088F13C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2205FBC20(&qword_281296CA0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_22056D204(0);
  sub_2205FBC20(&qword_28127EA50, 255, sub_22056D204, MEMORY[0x277D83970]);
  v23 = v29;
  sub_2208923FC();
  MEMORY[0x223D89E80](v17, v22, v23, v21);
  _Block_release(v21);

  (*(v32 + 8))(v23, v3);
  (*(v30 + 8))(v22, v31);
  v20(v17, v26);
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);

  aBlock[0] = sub_220885FCC();
  sub_2205FBB74();
  sub_2208886AC();

  __swift_destroy_boxed_opaque_existential_1(v28);
  return v1;
}

double sub_2205FB994(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1 + 3, a1[6]);

  sub_220885FCC();
  sub_2205FBB74();
  sub_2208886AC();

  return result;
}

uint64_t sub_2205FBA1C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

double sub_2205FBA80()
{
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));

  sub_220885FCC();
  sub_2205FBB74();
  sub_2208886AC();

  return result;
}

void sub_2205FBB10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2205FBB74()
{
  result = qword_28127EB20;
  if (!qword_28127EB20)
  {
    sub_2204953AC(255);
    sub_2205FBC20(&qword_281298FF8, 255, MEMORY[0x277D698E0], MEMORY[0x277D698E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127EB20);
  }

  return result;
}

uint64_t sub_2205FBC20(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2205FBC94()
{
  v1 = v0;
  v2 = sub_22088685C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205FBE28(v1, v10);
  v11 = (*(v3 + 48))(v10, 2, v2);
  if (v11)
  {
    if (v11 == 1)
    {
      return 0x7961646F74;
    }

    else
    {
      return 1701736302;
    }
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v13 = sub_22088677C();
    (*(v3 + 8))(v6, v2);
    return v13;
  }
}

uint64_t sub_2205FBE28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockListSelectionModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2205FBE8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088685C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StockListSelectionModel(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205FC158(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 56);
  sub_2205FBE28(a1, v16);
  sub_2205FBE28(a2, &v16[v18]);
  v19 = *(v5 + 48);
  v20 = v19(v16, 2, v4);
  if (!v20)
  {
    sub_2205FBE28(v16, v12);
    if (!v19(&v16[v18], 2, v4))
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      v24 = MEMORY[0x223D7E940](v12, v8);
      v26 = *(v5 + 8);
      v26(v8, v4);
      v26(v12, v4);
      v22 = type metadata accessor for StockListSelectionModel;
      goto LABEL_10;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_9;
  }

  if (v20 == 1)
  {
    v21 = v19(&v16[v18], 2, v4);
    v22 = type metadata accessor for StockListSelectionModel;
    if (v21 == 1)
    {
      goto LABEL_8;
    }

LABEL_9:
    v24 = 0;
    v22 = sub_2205FC158;
    goto LABEL_10;
  }

  v23 = v19(&v16[v18], 2, v4);
  v22 = type metadata accessor for StockListSelectionModel;
  if (v23 != 2)
  {
    goto LABEL_9;
  }

LABEL_8:
  v24 = 1;
LABEL_10:
  sub_220479404(v16, v22);
  return v24 & 1;
}

void sub_2205FC158(uint64_t a1)
{
  if (!qword_28128ACE0[0])
  {
    type metadata accessor for StockListSelectionModel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_28128ACE0);
    }
  }
}

uint64_t sub_2205FC1C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2205FC210(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2205FC274(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v386 = a3;
  v387 = a2;
  v394 = a1;
  v366 = sub_22088B64C();
  v365 = *(v366 - 8);
  MEMORY[0x28223BE20](v366, v4);
  v364 = &v351 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206006E8(0, &qword_281297850, MEMORY[0x277D6DF88]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v9);
  v11 = (&v351 - v10);
  v383 = sub_22088F23C();
  v410 = *(v383 - 8);
  MEMORY[0x28223BE20](v383, v12);
  v379 = &v351 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v431 = sub_22088698C();
  v427 = *(v431 - 8);
  MEMORY[0x28223BE20](v431, v14);
  v424 = &v351 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v423 = (&v351 - v18);
  MEMORY[0x28223BE20](v19, v20);
  v425 = &v351 - v21;
  MEMORY[0x28223BE20](v22, v23);
  v422 = &v351 - v24;
  MEMORY[0x28223BE20](v25, v26);
  v421 = (&v351 - v27);
  v363 = type metadata accessor for NewsStockFeedGroup(0);
  MEMORY[0x28223BE20](v363, v28);
  v382 = &v351 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v362 = (&v351 - v32);
  MEMORY[0x28223BE20](v33, v34);
  v373 = &v351 - v35;
  v428 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v428, v36);
  v413 = &v351 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v39);
  v414 = (&v351 - v40);
  MEMORY[0x28223BE20](v41, v42);
  v393 = (&v351 - v43);
  sub_22055D328(0);
  v429 = *(v44 - 8);
  v430 = v44;
  MEMORY[0x28223BE20](v44, v45);
  v412 = &v351 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47, v48);
  v411 = (&v351 - v49);
  MEMORY[0x28223BE20](v50, v51);
  v378 = &v351 - v52;
  sub_22055D524(0);
  MEMORY[0x28223BE20](v53 - 8, v54);
  v368 = (&v351 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v56, v57);
  v367 = (&v351 - v58);
  MEMORY[0x28223BE20](v59, v60);
  v392 = &v351 - v61;
  v403 = type metadata accessor for StockFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v403, v62);
  v375 = (&v351 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v64, v65);
  v372 = (&v351 - v66);
  MEMORY[0x28223BE20](v67, v68);
  v374 = (&v351 - v69);
  MEMORY[0x28223BE20](v70, v71);
  v371 = (&v351 - v72);
  MEMORY[0x28223BE20](v73, v74);
  v391 = &v351 - v75;
  v370 = type metadata accessor for NewsPlacardStockFeedGroup(0);
  MEMORY[0x28223BE20](v370, v76);
  v360 = (&v351 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v78, v79);
  v381 = &v351 - v80;
  MEMORY[0x28223BE20](v81, v82);
  *&v359 = &v351 - v83;
  MEMORY[0x28223BE20](v84, v85);
  v380 = &v351 - v86;
  v432 = sub_22088FFFC();
  v418 = *(v432 - 8);
  MEMORY[0x28223BE20](v432, v87);
  v420 = &v351 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v89, v90);
  v415 = &v351 - v91;
  MEMORY[0x28223BE20](v92, v93);
  v419 = &v351 - v94;
  MEMORY[0x28223BE20](v95, v96);
  v417 = &v351 - v97;
  MEMORY[0x28223BE20](v98, v99);
  v426 = &v351 - v100;
  v399 = type metadata accessor for StockFeedGroup(0);
  v395 = *(v399 - 8);
  MEMORY[0x28223BE20](v399, v101);
  v377 = (&v351 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v103, v104);
  v384 = &v351 - v105;
  MEMORY[0x28223BE20](v106, v107);
  v397 = &v351 - v108;
  MEMORY[0x28223BE20](v109, v110);
  v376 = &v351 - v111;
  MEMORY[0x28223BE20](v112, v113);
  v385 = &v351 - v114;
  MEMORY[0x28223BE20](v115, v116);
  v396 = &v351 - v117;
  MEMORY[0x28223BE20](v118, v119);
  v121 = &v351 - v120;
  MEMORY[0x28223BE20](v122, v123);
  v416 = (&v351 - v124);
  sub_2206006E8(0, &unk_281296F10, MEMORY[0x277D6EC60]);
  v126 = v125;
  v369 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v127);
  v400 = &v351 - v128;
  sub_22055E01C(0);
  MEMORY[0x28223BE20](v129 - 8, v130);
  v132 = &v351 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055CE80(0);
  v134 = v133;
  v135 = *(v133 - 8);
  MEMORY[0x28223BE20](v133, v136);
  v390 = &v351 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v138, v139);
  v389 = &v351 - v140;
  MEMORY[0x28223BE20](v141, v142);
  v361 = (&v351 - v143);
  MEMORY[0x28223BE20](v144, v145);
  v147 = &v351 - v146;
  v398 = v3;
  v401 = v126;
  v148 = v394;
  sub_22088E76C();
  if ((*(v135 + 48))(v132, 1, v134) == 1)
  {
    sub_220600894(v132, sub_22055E01C);
    sub_2206007DC();
    *v11 = swift_allocError();
    (*(v8 + 104))(v11, *MEMORY[0x277D6DF68], v7);
    v387(v11);
    (*(v8 + 8))(v11, v7);
    return;
  }

  v356 = v8;
  v358 = v11;
  v357 = v7;
  (*(v135 + 32))(v147, v132, v134);
  v149 = sub_2206D141C(v147);
  v150 = v134;
  if (v151)
  {
    sub_2206007DC();
    v152 = swift_allocError();
    v153 = v358;
    *v358 = v152;
    v154 = v356;
    v155 = v357;
    (*(v356 + 104))(v153, *MEMORY[0x277D6DF68], v357);
    v387(v153);
    (*(v154 + 8))(v153, v155);
    (*(v135 + 8))(v147, v134);
    return;
  }

  v156 = v149;
  v355 = v147;
  v354 = v135;
  (*(v369 + 16))(v400, v148, v401);
  v158 = v398[4];
  v159 = v158 >> 61;
  v388 = v134;
  if ((v158 >> 61) <= 1)
  {
    v352 = v156;
    if (!v159)
    {
      sub_2206009C4(0, v157);
      v241 = v240;
      v242 = swift_projectBox();
      v243 = *(v242 + *(v241 + 48));
      v244 = v416;
      sub_2206008F4(v242, v416, type metadata accessor for StockFeedGroup);
      __swift_project_boxed_opaque_existential_1(v398 + 5, v398[8]);
      type metadata accessor for StockFeedServiceConfig(0);
      sub_220444374(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig, &unk_22089CCD0);

      v245 = v426;
      sub_22088F6CC();
      v246 = v361;
      sub_22072933C(v244, v245, v361);
      (*(v418 + 1))(v245, v432);
      sub_22088E75C();
      v247 = *(v354 + 8);
      v247(v246, v150);
      sub_2208544BC(v243, v246);
      if (__OFADD__(v352, 1))
      {
        goto LABEL_185;
      }

      sub_22088E73C();
      v247(v246, v150);
      sub_22088FA1C();
      sub_22088FA0C();
      v248 = sub_22088F9EC();

      v249 = 0;
      if (v248)
      {
        v249 = sub_22088F45C();
      }

      else
      {
        *(&v433 + 1) = 0;
        *&v434 = 0;
      }

      v347 = v358;
      *&v433 = v248;
      *(&v434 + 1) = v249;
      v253 = v401;
      v257 = v400;
      sub_22088E7BC();

      sub_220600894(v416, type metadata accessor for StockFeedGroup);
      goto LABEL_180;
    }

    v260 = *((v158 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v384 = *((v158 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    sub_22088B2BC();
    sub_22088E74C();

    v390 = v260;
    v261 = v373;
    v262 = v371;
    v382 = *(v260 + 2);
    if (!v382)
    {
LABEL_166:
      v344 = v361;
      sub_2208544BC(v384, v361);
      if (__OFADD__(v352, *(v390 + 2)))
      {
        goto LABEL_186;
      }

      sub_22088E73C();
      (*(v354 + 8))(v344, v150);
      sub_22088FA1C();

      sub_22088FA0C();
      type metadata accessor for StockFeedServiceConfig(0);
      sub_220444374(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig, &unk_22089CCD0);
      v345 = sub_22088F9EC();

      v346 = 0;
      if (v345)
      {
        v346 = sub_22088F45C();
      }

      else
      {
        *(&v433 + 1) = 0;
        *&v434 = 0;
      }

      *&v433 = v345;
      *(&v434 + 1) = v346;
      v253 = v401;
      v257 = v400;
      sub_22088E7BC();

      v347 = v358;
      goto LABEL_180;
    }

    v263 = 0;
    v381 = &v390[(*(v395 + 80) + 32) & ~*(v395 + 80)];
    v375 = (v410 + 32);
    v372 = (v410 + 16);
    v368 = (v410 + 8);
    v415 = v418 + 8;
    v424 = (v427 + 16);
    v423 = v418 + 16;
    v407 = (v427 + 8);
    v406 = v429 + 32;
    v360 = (v429 + 8);
    v377 = (v354 + 8);
    v353 = xmmword_220899360;
    while (1)
    {
      if (v263 >= *(v390 + 2))
      {
        goto LABEL_184;
      }

      v272 = *(v395 + 72);
      v397 = v263;
      v273 = v396;
      sub_2206008F4(&v381[v272 * v263], v396, type metadata accessor for StockFeedGroup);
      v274 = __swift_project_boxed_opaque_existential_1(v398 + 5, v398[8]);
      type metadata accessor for StockFeedServiceConfig(0);
      sub_220444374(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig, &unk_22089CCD0);
      sub_22088F6CC();
      v416 = *v274;
      v275 = v385;
      sub_2206008F4(v273, v385, type metadata accessor for StockFeedGroup);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload != 1)
      {
        v264 = v379;
        v265 = v383;
        (*v375)(v379, v275, v383);
        (*v372)(v391, v264, v265);
        swift_storeEnumTagMultiPayload();
        sub_220600830(0, &qword_28127E100, sub_22055D328, MEMORY[0x277D84560]);
        v266 = swift_allocObject();
        *(v266 + 16) = v353;
        __swift_project_boxed_opaque_existential_1(v416 + 7, v416[10]);
        sub_22088FB2C();
        swift_storeEnumTagMultiPayload();
        sub_220444374(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
        sub_22088AD7C();
        v267 = sub_220444374(&qword_281297FB8, sub_22055D328, MEMORY[0x277D6D408]);
        v268 = sub_220444374(&qword_281297FC0, sub_22055D328, MEMORY[0x277D6D3F8]);
        MEMORY[0x223D80A10](v266, v430, v267, v268);
        sub_220444374(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
        v269 = v389;
        sub_22088B29C();
        v270 = v264;
        v262 = v371;
        v261 = v373;
        v271 = v265;
        v150 = v388;
        (*v368)(v270, v271);
LABEL_94:
        (*v415)(v417, v432);
        goto LABEL_95;
      }

      sub_22060095C(v275, v261, type metadata accessor for NewsStockFeedGroup);
      sub_2206008F4(v396, v376, type metadata accessor for StockFeedGroup);
      v277 = swift_getEnumCaseMultiPayload();
      if (v277)
      {
        if (v277 == 1)
        {
          v278 = v362;
          sub_22060095C(v376, v362, type metadata accessor for NewsStockFeedGroup);
          sub_220459628(0);
          v280 = *(v279 + 64);
          v281 = v278[1];
          *v262 = *v278;
          *(v262 + 8) = v281;
          v282 = *(v363 + 32);
          *(v262 + 16) = *(v278 + *(v363 + 28));
          sub_22051E1E0(v278 + v282, v262 + v280);

          sub_220600894(v278, type metadata accessor for NewsStockFeedGroup);
        }

        else
        {
          (*v375)(v262, v376, v383);
        }
      }

      else
      {
        v290 = v359;
        sub_22060095C(v376, v359, type metadata accessor for NewsPlacardStockFeedGroup);
        sub_220600894(v290, type metadata accessor for NewsPlacardStockFeedGroup);
      }

      swift_storeEnumTagMultiPayload();
      sub_2206008F4(v262, v374, type metadata accessor for StockFeedSectionDescriptor);
      v291 = v261[2];
      v292 = *(v291 + 2);
      if (v292)
      {
        v438 = MEMORY[0x277D84F90];
        sub_22070BC24(0, v292, 0);
        v293 = 0;
        v294 = v438;
        v295 = *v261;
        v296 = v261[1];
        v410 = v295;
        v408 = &v291[(*(v427 + 80) + 32) & ~*(v427 + 80)];
        v297 = &off_27844B000;
        v413 = v291;
        v412 = v292;
        v409 = v296;
        while (1)
        {
          if (v293 >= *(v291 + 2))
          {
            goto LABEL_182;
          }

          v298 = *(v427 + 16);
          v299 = v421;
          v300 = v431;
          (v298)(v421, &v408[*(v427 + 72) * v293], v431);
          (v298)(v422, v299, v300);
          v418 = *v423;
          (v418)(v419, v417, v432);
          v301 = v416[12];

          v302 = sub_2208868DC();
          v303 = [v302 isPaid];
          if ([v302 respondsToSelector_])
          {
            v304 = [v302 v297[495]];
          }

          else
          {
            v304 = 0;
          }

          v305 = [v302 sourceChannel];
          if (v305)
          {
            v306 = [v305 identifier];
            swift_unknownObjectRelease();
            v307 = sub_22089136C();
            v309 = v308;
          }

          else
          {
            v307 = 0;
            v309 = 0;
          }

          v420 = v294;
          if (v303)
          {
            v310 = [v301 purchaseProvider];
            if (v309)
            {
              v404 = v301;
              v405 = v298;
              v402 = v310;
              v311 = [v310 purchasedTagIDs];
              v312 = sub_2208918EC();

              if (*(v312 + 16))
              {
                sub_2208929EC();
                sub_22089146C();
                v313 = sub_220892A2C();
                v314 = -1 << *(v312 + 32);
                v315 = v313 & ~v314;
                if ((*(v312 + 56 + ((v315 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v315))
                {
                  v316 = ~v314;
                  while (1)
                  {
                    v317 = (*(v312 + 48) + 16 * v315);
                    v318 = *v317 == v307 && v309 == v317[1];
                    if (v318 || (sub_2208928BC() & 1) != 0)
                    {
                      break;
                    }

                    v315 = (v315 + 1) & v316;
                    if (((*(v312 + 56 + ((v315 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v315) & 1) == 0)
                    {
                      goto LABEL_131;
                    }
                  }

                  swift_unknownObjectRelease();

                  swift_unknownObjectRelease();
                  v319 = 1;
                  v298 = v405;
                  goto LABEL_158;
                }
              }

LABEL_131:

              v298 = v405;
              v301 = v404;
            }

            swift_unknownObjectRelease();
            if (v304)
            {
LABEL_135:
              if (!v309)
              {
                goto LABEL_156;
              }

              v320 = [objc_msgSend(v301 bundleSubscriptionProvider)];
              swift_unknownObjectRelease();
              if (objc_getAssociatedObject(v320, v320 + 1))
              {
                sub_2208923BC();
                swift_unknownObjectRelease();
              }

              else
              {
                v436 = 0u;
                v437 = 0u;
              }

              v433 = v436;
              v434 = v437;
              if (*(&v437 + 1))
              {
                sub_2204DD8BC();
                if (swift_dynamicCast())
                {
                  v321 = v435;
                  v322 = [v435 integerValue];
                  if (v322 == -1)
                  {

LABEL_152:
                    v328 = [objc_msgSend(v301 bundleSubscriptionProvider)];
                    swift_unknownObjectRelease();
                    v329 = [v328 bundleChannelIDs];

                    v330 = sub_22089132C();
                    v319 = [v329 containsObject_];

                    swift_unknownObjectRelease();
                    goto LABEL_158;
                  }

LABEL_146:
                  v402 = v322;
                  if (objc_getAssociatedObject(v320, ~v322))
                  {
                    sub_2208923BC();
                    swift_unknownObjectRelease();
                  }

                  else
                  {
                    v436 = 0u;
                    v437 = 0u;
                  }

                  v433 = v436;
                  v434 = v437;
                  if (*(&v437 + 1))
                  {
                    sub_2204DD8BC();
                    if (swift_dynamicCast())
                    {
                      v323 = v435;
                      v405 = v298;
                      v324 = v323;
                      v325 = [v323 integerValue];
                      v404 = v301;
                      v326 = v325;

                      v298 = v405;
                      v327 = v326 ^ v402;
                      v301 = v404;
                      if ((v327 & 1) == 0)
                      {
                        goto LABEL_155;
                      }

                      goto LABEL_152;
                    }
                  }

                  else
                  {
                    sub_220600894(&v433, sub_22055F87C);
                  }

                  if ((v402 & 1) == 0)
                  {
LABEL_155:

LABEL_156:
                    swift_unknownObjectRelease();
                    v319 = 0;
                    goto LABEL_158;
                  }

                  goto LABEL_152;
                }
              }

              else
              {
                sub_220600894(&v433, sub_22055F87C);
              }

              v321 = 0;
              v322 = 0;
              goto LABEL_146;
            }

            swift_unknownObjectRelease();

            v319 = 0;
          }

          else
          {
            if (v304)
            {
              goto LABEL_135;
            }

            swift_unknownObjectRelease();

            v319 = 1;
          }

LABEL_158:
          v331 = v422;
          v332 = v431;
          (v298)(v425, v422, v431);
          v333 = v419;
          v334 = v432;
          (v418)(v426, v419, v432);
          LOBYTE(v433) = v319;
          v335 = MEMORY[0x277D69858];
          sub_220444374(&unk_281299030, MEMORY[0x277D69858], MEMORY[0x277D69860]);
          sub_220444374(&unk_281299040, v335, MEMORY[0x277D69848]);
          sub_22088FF9C();
          (*v415)(v333, v334);
          v336 = *v407;
          (*v407)(v331, v332);
          swift_storeEnumTagMultiPayload();
          sub_220444374(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
          v337 = v411;
          sub_22088AD7C();
          v336(v421, v332);
          v294 = v420;
          v438 = v420;
          v339 = *(v420 + 2);
          v338 = *(v420 + 3);
          if (v339 >= v338 >> 1)
          {
            sub_22070BC24((v338 > 1), v339 + 1, 1);
            v294 = v438;
          }

          ++v293;
          *(v294 + 2) = v339 + 1;
          (*(v429 + 32))(&v294[((*(v429 + 80) + 32) & ~*(v429 + 80)) + *(v429 + 72) * v339], v337, v430);
          v297 = &off_27844B000;
          v291 = v413;
          if (v293 == v412)
          {
            v150 = v388;
            v261 = v373;
            v262 = v371;
            goto LABEL_163;
          }
        }
      }

      v294 = MEMORY[0x277D84F90];
LABEL_163:
      v340 = sub_220444374(&qword_281297FB8, sub_22055D328, MEMORY[0x277D6D408]);
      v341 = sub_220444374(&qword_281297FC0, sub_22055D328, MEMORY[0x277D6D3F8]);
      MEMORY[0x223D80A20](v294, v430, v340, v341);
      sub_220444374(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
      sub_220444374(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
      v269 = v389;
      sub_22088B29C();
      sub_220600894(v262, type metadata accessor for StockFeedSectionDescriptor);
      (*v415)(v417, v432);
      sub_220600894(v261, type metadata accessor for NewsStockFeedGroup);
LABEL_95:
      v263 = v397 + 1;
      sub_22088E72C();
      (*v377)(v269, v150);
      sub_220600894(v396, type metadata accessor for StockFeedGroup);
      if (v263 == v382)
      {
        goto LABEL_166;
      }
    }

    sub_22060095C(v275, v380, type metadata accessor for NewsPlacardStockFeedGroup);
    __swift_project_boxed_opaque_existential_1(v416 + 2, v416[5]);
    if ((sub_220885E7C() & 1) != 0 && *(v380 + *(v370 + 20)) == 1)
    {
      swift_storeEnumTagMultiPayload();
      v283 = sub_220444374(&qword_281297FB8, sub_22055D328, MEMORY[0x277D6D408]);
      v284 = sub_220444374(&qword_281297FC0, sub_22055D328, MEMORY[0x277D6D3F8]);
      MEMORY[0x223D80A10](MEMORY[0x277D84F90], v430, v283, v284);
      sub_220444374(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
      sub_220444374(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
      sub_22088B29C();
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      v285 = sub_220444374(&qword_281297FB8, sub_22055D328, MEMORY[0x277D6D408]);
      v286 = sub_220444374(&qword_281297FC0, sub_22055D328, MEMORY[0x277D6D3F8]);
      MEMORY[0x223D80A10](MEMORY[0x277D84F90], v430, v285, v286);
      sub_220444374(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
      sub_220444374(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
      sub_22088B29C();
      if (qword_281299528 != -1)
      {
        swift_once();
      }

      v287 = *algn_2812B6D88;
      v288 = v393;
      *v393 = qword_2812B6D80;
      v288[1] = v287;
      swift_storeEnumTagMultiPayload();
    }

    v289 = v378;
    sub_22088AD7C();
    v269 = v389;
    sub_22088B30C();
    (*v360)(v289, v430);
    sub_220600894(v380, type metadata accessor for NewsPlacardStockFeedGroup);
    goto LABEL_94;
  }

  if (v159 == 2)
  {
    sub_2206009C4(0, v157);
    v250 = swift_projectBox();
    sub_2206008F4(v250, v121, type metadata accessor for StockFeedGroup);
    __swift_project_boxed_opaque_existential_1(v398 + 5, v398[8]);
    type metadata accessor for StockFeedServiceConfig(0);
    sub_220444374(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig, &unk_22089CCD0);

    v251 = v426;
    sub_22088F6CC();
    v252 = v361;
    sub_22072933C(v121, v251, v361);
    (*(v418 + 1))(v251, v432);
    v253 = v401;
    v254 = v400;
    sub_22088E75C();
    (*(v354 + 8))(v252, v388);
    sub_22088FA1C();
    sub_22088FA0C();
    v255 = sub_22088F9EC();

    v256 = 0;
    if (v255)
    {
      v256 = sub_22088F45C();
    }

    else
    {
      *(&v433 + 1) = 0;
      *&v434 = 0;
    }

    v347 = v358;
    *&v433 = v255;
    *(&v434 + 1) = v256;
    sub_22088E7BC();

    sub_220600894(v121, type metadata accessor for StockFeedGroup);
    v257 = v254;
    goto LABEL_180;
  }

  if (v159 != 3)
  {

    sub_22088B2BC();
    v253 = v401;
    v257 = v400;
    sub_22088E74C();

    sub_22088FA1C();
    sub_22088FA0C();
    type metadata accessor for StockFeedServiceConfig(0);
    sub_220444374(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig, &unk_22089CCD0);
    v258 = sub_22088F9EC();

    v259 = 0;
    if (v258)
    {
      v259 = sub_22088F45C();
    }

    else
    {
      *(&v433 + 1) = 0;
      *&v434 = 0;
    }

    v347 = v358;
    *&v433 = v258;
    *(&v434 + 1) = v259;
    sub_22088E7BC();
    goto LABEL_177;
  }

  v160 = *((v158 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v389 = *((v158 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_22088B2BC();
  sub_22088E74C();

  v385 = v160;
  v161 = v372;
  v162 = v384;
  v380 = *(v160 + 16);
  if (!v380)
  {
LABEL_164:
    sub_22088FA1C();

    sub_22088FA0C();
    type metadata accessor for StockFeedServiceConfig(0);
    sub_220444374(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig, &unk_22089CCD0);
    v342 = sub_22088F9EC();

    v343 = 0;
    if (v342)
    {
      v343 = sub_22088F45C();
    }

    else
    {
      *(&v433 + 1) = 0;
      *&v434 = 0;
    }

    v253 = v401;
    v257 = v400;
    v347 = v358;
    *&v433 = v342;
    *(&v434 + 1) = v343;
    sub_22088E7BC();
LABEL_177:

LABEL_180:
    v348 = v365;
    v349 = v364;
    v350 = v366;
    (*(v365 + 104))(v364, *MEMORY[0x277D6D868], v366);
    sub_220444374(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
    sub_220444374(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
    sub_220444374(&unk_281288C00, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A205C);
    sub_22088C67C();
    (*(v348 + 8))(v349, v350);
    v387(v347);
    (*(v356 + 8))(v347, v357);
    (*(v369 + 8))(v257, v253);
    (*(v354 + 8))(v355, v388);
    return;
  }

  v163 = 0;
  v376 = v385 + ((*(v395 + 80) + 32) & ~*(v395 + 80));
  v373 = (v410 + 32);
  v371 = (v410 + 16);
  v367 = (v410 + 8);
  v411 = (v418 + 8);
  v422 = (v427 + 16);
  v421 = (v418 + 16);
  v405 = (v427 + 8);
  v404 = (v429 + 32);
  v361 = (v429 + 8);
  v374 = (v354 + 8);
  v359 = xmmword_220899360;
  while (1)
  {
    if (v163 >= *(v385 + 16))
    {
      goto LABEL_183;
    }

    v174 = *(v395 + 72);
    v396 = v163;
    v175 = v397;
    sub_2206008F4(v376 + v174 * v163, v397, type metadata accessor for StockFeedGroup);
    v176 = __swift_project_boxed_opaque_existential_1(v398 + 5, v398[8]);
    type metadata accessor for StockFeedServiceConfig(0);
    sub_220444374(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig, &unk_22089CCD0);
    sub_22088F6CC();
    v414 = *v176;
    sub_2206008F4(v175, v162, type metadata accessor for StockFeedGroup);
    v177 = swift_getEnumCaseMultiPayload();
    if (!v177)
    {
      sub_22060095C(v162, v381, type metadata accessor for NewsPlacardStockFeedGroup);
      __swift_project_boxed_opaque_existential_1(v414 + 2, v414[5]);
      if ((sub_220885E7C() & 1) != 0 && v381[*(v370 + 20)] == 1)
      {
        swift_storeEnumTagMultiPayload();
        v185 = sub_220444374(&qword_281297FB8, sub_22055D328, MEMORY[0x277D6D408]);
        v186 = sub_220444374(&qword_281297FC0, sub_22055D328, MEMORY[0x277D6D3F8]);
        MEMORY[0x223D80A10](MEMORY[0x277D84F90], v430, v185, v186);
        sub_220444374(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
        sub_220444374(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
        sub_22088B29C();
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        v187 = sub_220444374(&qword_281297FB8, sub_22055D328, MEMORY[0x277D6D408]);
        v188 = sub_220444374(&qword_281297FC0, sub_22055D328, MEMORY[0x277D6D3F8]);
        MEMORY[0x223D80A10](MEMORY[0x277D84F90], v430, v187, v188);
        sub_220444374(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
        sub_220444374(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
        sub_22088B29C();
        if (qword_281299528 != -1)
        {
          swift_once();
        }

        v189 = *algn_2812B6D88;
        v190 = v393;
        *v393 = qword_2812B6D80;
        v190[1] = v189;
        swift_storeEnumTagMultiPayload();
      }

      v191 = v378;
      sub_22088AD7C();
      v171 = v388;
      v169 = v390;
      sub_22088B30C();
      (*v361)(v191, v430);
      sub_220600894(v381, type metadata accessor for NewsPlacardStockFeedGroup);
      (*v411)(v415, v432);
      goto LABEL_12;
    }

    if (v177 == 1)
    {
      break;
    }

    v164 = v379;
    v165 = v383;
    (*v373)(v379, v384, v383);
    (*v371)(v391, v164, v165);
    swift_storeEnumTagMultiPayload();
    sub_220600830(0, &qword_28127E100, sub_22055D328, MEMORY[0x277D84560]);
    v166 = swift_allocObject();
    *(v166 + 16) = v359;
    __swift_project_boxed_opaque_existential_1(v414 + 7, v414[10]);
    sub_22088FB2C();
    swift_storeEnumTagMultiPayload();
    sub_220444374(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
    sub_22088AD7C();
    v167 = sub_220444374(&qword_281297FB8, sub_22055D328, MEMORY[0x277D6D408]);
    v168 = sub_220444374(&qword_281297FC0, sub_22055D328, MEMORY[0x277D6D3F8]);
    MEMORY[0x223D80A10](v166, v430, v167, v168);
    sub_220444374(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
    v161 = v372;
    v169 = v390;
    sub_22088B29C();
    v170 = v164;
    v162 = v384;
    (*v367)(v170, v165);
    (*v411)(v415, v432);
LABEL_11:
    v171 = v388;
LABEL_12:
    v172 = v396 + 1;
    sub_22088E72C();
    v173 = v171;
    v163 = v172;
    (*v374)(v169, v173);
    sub_220600894(v397, type metadata accessor for StockFeedGroup);
    if (v172 == v380)
    {
      goto LABEL_164;
    }
  }

  v178 = v382;
  sub_22060095C(v162, v382, type metadata accessor for NewsStockFeedGroup);
  sub_2206008F4(v397, v377, type metadata accessor for StockFeedGroup);
  v179 = swift_getEnumCaseMultiPayload();
  if (v179)
  {
    if (v179 == 1)
    {
      v180 = v362;
      sub_22060095C(v377, v362, type metadata accessor for NewsStockFeedGroup);
      sub_220459628(0);
      v182 = *(v181 + 64);
      v183 = v180[1];
      *v161 = *v180;
      *(v161 + 8) = v183;
      v184 = *(v363 + 32);
      *(v161 + 16) = *(v180 + *(v363 + 28));
      sub_22051E1E0(v180 + v184, v161 + v182);
      v178 = v382;

      sub_220600894(v180, type metadata accessor for NewsStockFeedGroup);
    }

    else
    {
      (*v373)(v161, v377, v383);
    }
  }

  else
  {
    v192 = v360;
    sub_22060095C(v377, v360, type metadata accessor for NewsPlacardStockFeedGroup);
    sub_220600894(v192, type metadata accessor for NewsPlacardStockFeedGroup);
    v178 = v382;
  }

  swift_storeEnumTagMultiPayload();
  sub_2206008F4(v161, v375, type metadata accessor for StockFeedSectionDescriptor);
  v193 = *(v178 + 16);
  v194 = *(v193 + 16);
  if (!v194)
  {
    v197 = MEMORY[0x277D84F90];
LABEL_82:
    v238 = sub_220444374(&qword_281297FB8, sub_22055D328, MEMORY[0x277D6D408]);
    v239 = sub_220444374(&qword_281297FC0, sub_22055D328, MEMORY[0x277D6D3F8]);
    MEMORY[0x223D80A20](v197, v430, v238, v239);
    sub_220444374(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
    sub_220444374(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
    v169 = v390;
    sub_22088B29C();
    sub_220600894(v161, type metadata accessor for StockFeedSectionDescriptor);
    (*v411)(v415, v432);
    sub_220600894(v382, type metadata accessor for NewsStockFeedGroup);
    goto LABEL_11;
  }

  v195 = v178;
  v438 = MEMORY[0x277D84F90];
  sub_22070BC24(0, v194, 0);
  v196 = 0;
  v197 = v438;
  v198 = v195[1];
  v408 = *v195;
  v406 = v193 + ((*(v427 + 80) + 32) & ~*(v427 + 80));
  v410 = v193;
  v409 = v194;
  v407 = v198;
  while (v196 < *(v193 + 16))
  {
    v419 = v197;
    v199 = *(v427 + 16);
    v200 = v423;
    v201 = v431;
    (v199)(v423, v406 + *(v427 + 72) * v196, v431);
    v418 = v199;
    (v199)(v424, v200, v201);
    v417 = *v421;
    (v417)(v420, v415, v432);
    v416 = v414[12];

    v202 = sub_2208868DC();
    v203 = [v202 isPaid];
    if ([v202 respondsToSelector_])
    {
      v204 = [v202 isBundlePaid];
    }

    else
    {
      v204 = 0;
    }

    v205 = [v202 sourceChannel];
    if (v205)
    {
      v206 = [v205 identifier];
      swift_unknownObjectRelease();
      v207 = sub_22089136C();
      v209 = v208;

      if (!v203)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v207 = 0;
      v209 = 0;
      if (!v203)
      {
LABEL_50:
        if ((v204 & 1) == 0)
        {
          swift_unknownObjectRelease();

LABEL_74:
          v219 = 1;
          goto LABEL_77;
        }

LABEL_51:
        if (!v209)
        {
          goto LABEL_72;
        }

        v220 = [objc_msgSend(v416 bundleSubscriptionProvider)];
        swift_unknownObjectRelease();
        if (objc_getAssociatedObject(v220, v220 + 1))
        {
          sub_2208923BC();
          swift_unknownObjectRelease();
        }

        else
        {
          v436 = 0u;
          v437 = 0u;
        }

        v433 = v436;
        v434 = v437;
        if (*(&v437 + 1))
        {
          sub_2204DD8BC();
          if (swift_dynamicCast())
          {
            v221 = v435;
            v222 = [v435 integerValue];
            if (v222 == -1)
            {

LABEL_76:
              v226 = [objc_msgSend(v416 bundleSubscriptionProvider)];
              swift_unknownObjectRelease();
              v227 = [v226 bundleChannelIDs];

              v228 = sub_22089132C();
              v219 = [v227 containsObject_];

              swift_unknownObjectRelease();
              goto LABEL_77;
            }

            v223 = v222;
LABEL_62:
            if (objc_getAssociatedObject(v220, ~v223))
            {
              sub_2208923BC();
              swift_unknownObjectRelease();
            }

            else
            {
              v436 = 0u;
              v437 = 0u;
            }

            v433 = v436;
            v434 = v437;
            if (*(&v437 + 1))
            {
              sub_2204DD8BC();
              if (swift_dynamicCast())
              {
                v224 = v435;
                v225 = [v224 integerValue];

                if ((v225 ^ v223))
                {
                  goto LABEL_76;
                }

                goto LABEL_71;
              }
            }

            else
            {
              sub_220600894(&v433, sub_22055F87C);
            }

            if (v223)
            {
              goto LABEL_76;
            }

LABEL_71:

LABEL_72:
            swift_unknownObjectRelease();
            v219 = 0;
            goto LABEL_77;
          }
        }

        else
        {
          sub_220600894(&v433, sub_22055F87C);
        }

        v221 = 0;
        v223 = 0;
        goto LABEL_62;
      }
    }

    v210 = [v416 purchaseProvider];
    if (v209)
    {
      v402 = v210;
      v211 = [v210 purchasedTagIDs];
      v212 = sub_2208918EC();

      if (*(v212 + 16))
      {
        sub_2208929EC();
        sub_22089146C();
        v213 = sub_220892A2C();
        v214 = -1 << *(v212 + 32);
        v215 = v213 & ~v214;
        if ((*(v212 + 56 + ((v215 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v215))
        {
          v216 = ~v214;
          while (1)
          {
            v217 = (*(v212 + 48) + 16 * v215);
            v218 = *v217 == v207 && v209 == v217[1];
            if (v218 || (sub_2208928BC() & 1) != 0)
            {
              break;
            }

            v215 = (v215 + 1) & v216;
            if (((*(v212 + 56 + ((v215 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v215) & 1) == 0)
            {
              goto LABEL_46;
            }
          }

          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          goto LABEL_74;
        }
      }

LABEL_46:
    }

    swift_unknownObjectRelease();
    if (v204)
    {
      goto LABEL_51;
    }

    swift_unknownObjectRelease();

    v219 = 0;
LABEL_77:
    v229 = v424;
    v230 = v431;
    (v418)(v425, v424, v431);
    v231 = v420;
    v232 = v432;
    (v417)(v426, v420, v432);
    LOBYTE(v433) = v219;
    v233 = MEMORY[0x277D69858];
    sub_220444374(&unk_281299030, MEMORY[0x277D69858], MEMORY[0x277D69860]);
    sub_220444374(&unk_281299040, v233, MEMORY[0x277D69848]);
    sub_22088FF9C();
    (*v411)(v231, v232);
    v234 = *v405;
    (*v405)(v229, v230);
    swift_storeEnumTagMultiPayload();
    sub_220444374(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
    v235 = v412;
    sub_22088AD7C();
    v234(v423, v230);
    v197 = v419;
    v438 = v419;
    v237 = *(v419 + 2);
    v236 = *(v419 + 3);
    if (v237 >= v236 >> 1)
    {
      sub_22070BC24((v236 > 1), v237 + 1, 1);
      v197 = v438;
    }

    ++v196;
    *(v197 + 2) = v237 + 1;
    (*(v429 + 32))(&v197[((*(v429 + 80) + 32) & ~*(v429 + 80)) + *(v429 + 72) * v237], v235, v430);
    v193 = v410;
    if (v196 == v409)
    {
      v161 = v372;
      v162 = v384;
      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
}

uint64_t sub_2206004B0()
{
  sub_220600830(0, &qword_28127E048, MEMORY[0x277D6DE60], MEMORY[0x277D84560]);
  v0 = sub_22088C37C();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_220899360;
  (*(v1 + 104))(v3 + v2, *MEMORY[0x277D6DE38], v0);
  v4 = sub_2207E15E8(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  swift_deallocClassInstance();
  return v4;
}

unint64_t sub_220600604()
{
  result = qword_281280508;
  if (!qword_281280508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281280508);
  }

  return result;
}

void sub_2206006E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for StockFeedModel(255);
    v8[2] = sub_220444374(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
    v8[3] = sub_220444374(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_2206007DC()
{
  result = qword_27CF57838;
  if (!qword_27CF57838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57838);
  }

  return result;
}

void sub_220600830(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_220600894(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2206008F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22060095C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2206009C4(uint64_t a1, __n128 a2)
{
  if (!qword_27CF57840)
  {
    type metadata accessor for StockFeedGroup(255);
    sub_220600A34(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF57840);
    }
  }
}

void sub_220600A34(uint64_t a1)
{
  if (!qword_281296B60)
  {
    type metadata accessor for StockFeedServiceConfig(255);
    sub_220444374(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig, &unk_22089CCD0);
    v1 = sub_22088F6DC();
    if (!v2)
    {
      atomic_store(v1, &qword_281296B60);
    }
  }
}

unint64_t sub_220600ADC()
{
  result = qword_27CF57848;
  if (!qword_27CF57848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57848);
  }

  return result;
}

uint64_t sub_220600B30(uint64_t a1, uint64_t a2)
{
  v5 = sub_2208854FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088665C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046DA2C(v2 + 16, v32);
  (*(v11 + 16))(v14, a1, v10);
  (*(v6 + 16))(v9, a2, v5);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v32, v32[3]);
  v16 = MEMORY[0x28223BE20](v15, v15);
  v18 = (v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = *v18;
  v21 = type metadata accessor for StockChartStyler();
  v31[3] = v21;
  v31[4] = &off_283413188;
  v31[0] = v20;
  type metadata accessor for StockChartCategoryLabelFormatter(0);
  v22 = swift_allocObject();
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v31, v21);
  v24 = MEMORY[0x28223BE20](v23, v23);
  v26 = (v31 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28.n128_f64[0] = (*(v27 + 16))(v26, v24);
  v29 = sub_220600E64(*v26, v14, v9, v22, v28);
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v29;
}

uint64_t sub_220600E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v9 = sub_2208853CC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for StockChartStyler();
  v25 = &off_283413188;
  *&v23 = a1;
  v14 = OBJC_IVAR____TtC8StocksUI32StockChartCategoryLabelFormatter_calendar;
  v15 = [objc_opt_self() currentCalendar];
  sub_22088534C();

  (*(v10 + 32))(a4 + v14, v13, v9);
  v16 = OBJC_IVAR____TtC8StocksUI32StockChartCategoryLabelFormatter_dateFormatters;
  *(a4 + v16) = sub_2205CE888(MEMORY[0x277D84F90]);
  sub_220457328(&v23, a4 + 16);
  v17 = OBJC_IVAR____TtC8StocksUI32StockChartCategoryLabelFormatter_chart;
  v18 = sub_22088665C();
  (*(*(v18 - 8) + 32))(a4 + v17, a2, v18);
  v19 = OBJC_IVAR____TtC8StocksUI32StockChartCategoryLabelFormatter_chartRange;
  v20 = sub_2208854FC();
  (*(*(v20 - 8) + 32))(a4 + v19, a3, v20);
  return a4;
}

uint64_t sub_220601044(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_22060108C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2206010E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_220601148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[3] = type metadata accessor for TickerCardContainerStyler();
  v11[4] = &off_28341A918;
  v11[0] = a3;
  *(a4 + qword_281285D80 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + qword_281285D70) = 0;
  v7 = qword_281285D78;
  *(a4 + v7) = [objc_allocWithZone(MEMORY[0x277D355A8]) init];
  v8 = qword_281285D88;
  *(a4 + v8) = [objc_allocWithZone(sub_22088AEDC()) initWithFrame_];
  *(a4 + qword_281285D98) = 0;
  *(a4 + qword_281285D90) = a2;
  sub_22046DA2C(v11, a4 + qword_281285D68);
  v9 = sub_22088C7DC();
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v9;
}

uint64_t sub_220601268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34[3] = type metadata accessor for TickerCardContainerStyler();
  v34[4] = &off_28341A918;
  v34[0] = a3;
  *(a4 + qword_281282170 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + qword_281282160) = 0;
  v7 = qword_281282168;
  *(a4 + v7) = [objc_allocWithZone(MEMORY[0x277D355A8]) init];
  v8 = qword_281282178;
  *(a4 + v8) = [objc_allocWithZone(sub_22088AEDC()) initWithFrame_];
  *(a4 + qword_281282190) = 0;
  *(a4 + qword_281282180) = 0x4062A00000000000;
  *(a4 + qword_281282188) = a2;
  sub_22046DA2C(v34, a4 + qword_281282158);
  sub_2206010E4(0, &qword_28127E008, sub_2206016CC, MEMORY[0x277D84560]);
  sub_2206016CC(0);
  v10 = v9;
  v11 = *(*(v9 - 8) + 72);
  v12 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_22089EF70;
  v13 = *(v10 + 48);
  v14 = *MEMORY[0x277D6E260];
  v15 = sub_22088CC6C();
  v30 = *(*(v15 - 8) + 104);
  v30(v33 + v12, v14, v15);
  *(v33 + v12 + v13) = 0x4062A00000000000;
  v16 = *MEMORY[0x277D6E5F8];
  v17 = sub_22088D2AC();
  v18 = *(*(v17 - 8) + 104);
  v18(v33 + v12 + v13, v16, v17);
  v31 = v18;
  v32 = v11;
  v19 = v33 + v12 + v11;
  v20 = *(v10 + 48);
  v30(v19, *MEMORY[0x277D6E250], v15);
  *(v19 + v20) = 0x3FE0000000000000;
  v18(v19 + v20, *MEMORY[0x277D6E5E8], v17);
  v21 = 2 * v11;
  v22 = v33 + v12 + 2 * v11;
  v23 = *(v10 + 48);
  v30(v22, *MEMORY[0x277D6E258], v15);
  v24 = objc_opt_self();

  *(v22 + v23) = [v24 largeDetent];
  v25 = *MEMORY[0x277D6E5F0];
  v31(v22 + v23, v25, v17);
  v26 = v33 + v12 + v21 + v32;
  v27 = *(v10 + 48);
  v30(v26, *MEMORY[0x277D6E230], v15);
  *(v26 + v27) = [v24 largeDetent];
  v31(v26 + v27, v25, v17);
  sub_2205CECAC(v33);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v28 = sub_22088D24C();
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v28;
}

void sub_2206016CC(uint64_t a1)
{
  if (!qword_2812976C8)
  {
    sub_22088CC6C();
    sub_22088D2AC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2812976C8);
    }
  }
}

id sub_220601798(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_22060182C()
{
  v1 = OBJC_IVAR____TtC8StocksUI18StockSparklineView_sparklineView;
  *(v0 + v1) = [objc_allocWithZone(sub_220890CDC()) initWithFrame_];
  v2 = OBJC_IVAR____TtC8StocksUI18StockSparklineView_baselineIndicatorLayer;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v3 = OBJC_IVAR____TtC8StocksUI18StockSparklineView_nonAnimatingDelegate;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for StockSparklineView.NonAnimatingDelegate()) init];
  sub_22089267C();
  __break(1u);
}

uint64_t sub_220601908(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  v5 = *(v4 + 8);
  v6 = *(v5 + 8);
  *&v9[25] = v3;
  *&v9[33] = v4;
  __swift_allocate_boxed_opaque_existential_1(&v9[1]);
  v6(a1, v3, v5);
  sub_220601A1C();
  v7 = *(v4 + 16);
  (*(v7 + 48))(v3, v7);
  (*(v7 + 24))(v9, v3, v7);
  sub_22088D95C();
  return __swift_destroy_boxed_opaque_existential_1(&v9[1]);
}

unint64_t sub_220601A1C()
{
  result = qword_27CF578D0;
  if (!qword_27CF578D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF578D0);
  }

  return result;
}

uint64_t type metadata accessor for StockFeedQuoteData(uint64_t a1)
{
  result = qword_281290618;
  if (!qword_281290618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220601AE4(uint64_t a1)
{
  sub_22045401C(319, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v1 <= 0x3F)
  {
    sub_22045401C(319, &qword_281299370, MEMORY[0x277D69178]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id sub_220601BA0()
{
  v1 = v0;
  v2 = sub_2208902EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s8StocksUI16OfflineAlertableV5titleSSSgvg_0();
  _s8StocksUI16OfflineAlertableV7messageSSSgvg_0();
  v7 = sub_22089132C();

  v8 = sub_22089132C();

  v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  result = [v9 view];
  if (result)
  {
    v11 = result;
    v13 = v1[5];
    v12 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v13);
    v14 = (*(*(v12 + 16) + 136))(v13);
    [v11 setTintColor_];

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = objc_opt_self();
    v17 = [v16 bundleForClass_];
    sub_220884CAC();

    v18 = sub_22089132C();

    v19 = objc_opt_self();
    v20 = [v19 actionWithTitle:v18 style:0 handler:0];

    [v9 addAction_];
    v21 = sub_2208902FC();
    (*(v3 + 104))(v6, *MEMORY[0x277D333B0], v2);
    v22 = sub_2206FA2D0(v6, v21);

    (*(v3 + 8))(v6, v2);
    if (v22)
    {
      v23 = [v16 bundleForClass_];
      sub_220884CAC();

      v24 = sub_22089132C();

      aBlock[4] = sub_22060215C;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2205659F0;
      aBlock[3] = &block_descriptor_14;
      v25 = _Block_copy(aBlock);

      v26 = [v19 actionWithTitle:v24 style:0 handler:v25];
      _Block_release(v25);

      [v9 addAction_];
    }

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220602038(uint64_t a1)
{
  v6[3] = type metadata accessor for OfflineAlertable(0);
  v6[4] = sub_220602104();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
  v3 = sub_22089030C();
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, a1, v3);
  sub_22088E0CC();
  swift_allocObject();
  v4 = sub_22088E07C();
  sub_22088E0BC();

  return v4;
}

unint64_t sub_220602104()
{
  result = qword_27CF578D8;
  if (!qword_27CF578D8)
  {
    type metadata accessor for OfflineAlertable(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF578D8);
  }

  return result;
}

uint64_t sub_220602160@<X0>(uint64_t a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1((v1 + qword_27CF578E8), *(v1 + qword_27CF578E8 + 24));
  v3 = sub_22088F8FC();
  if (v3 > 3)
  {
    if (v3 == 4 || v3 == 5)
    {
      sub_2205E9E2C(0);
      v5 = v6;
      sub_2208907BC();
      sub_2208907BC();
      goto LABEL_13;
    }

    if (v3 == 6)
    {
LABEL_12:
      sub_2205E9E2C(0);
      v5 = v14;
      sub_2208907CC();
      sub_2208907CC();
      goto LABEL_13;
    }

LABEL_17:
    result = sub_22089267C();
    __break(1u);
    return result;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      sub_2205E9E2C(0);
      v5 = v4;
      sub_2208907AC();
      sub_2208907AC();
LABEL_13:
      v8 = *(*(v5 - 8) + 56);
      v10 = a1;
      v11 = 0;
      v9 = v5;
      goto LABEL_14;
    }

    if (v3 == 3)
    {
      v12 = sub_220891ADC();
      sub_22048D2F4();
      v13 = sub_2208922DC();
      sub_22088A7EC("Offline manager reporting unsupported region but is not allowed for Stocks", 74, 2, &dword_22043F000, v13, v12, MEMORY[0x277D84F90]);

      goto LABEL_12;
    }

    goto LABEL_17;
  }

  sub_2205E9E2C(0);
  v8 = *(*(v7 - 8) + 56);
  v9 = v7;
  v10 = a1;
  v11 = 1;
LABEL_14:

  return v8(v10, v11, 1, v9);
}

void sub_2206023F0(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_2206025A8();
  swift_unknownObjectRelease();
}

uint64_t sub_2206024B8(uint64_t a1)
{
  sub_2204DA45C(*(a1 + qword_27CF578E0), *(a1 + qword_27CF578E0 + 8));
  v2 = (a1 + qword_27CF578E8);

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_220602510(uint64_t a1)
{
  sub_2205E9E2C(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_2206025A8()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v10[0] = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v10[1] = v1;
  v2 = type metadata accessor for DualOfflineManager.State(0, v10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v10 - v5;
  v7 = *(v0 + qword_27CF578E0);
  if (v7)
  {
    v8 = *(v0 + qword_27CF578E0 + 8);

    sub_220602160(v6);
    v7(v6);
    v9 = sub_2204DA45C(v7, v8);
    (*(v3 + 8))(v6, v2, v9);
  }
}

uint64_t sub_220602898@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22088594C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2206028F8()
{
  sub_220885ACC();
  sub_220888FBC();
  v0 = sub_220888D9C();
  v1 = sub_220888E4C();

  return v1;
}

uint64_t sub_220602A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a2;
  v81 = a3;
  sub_220603D2C(0, qword_28128B590, type metadata accessor for NewsStockFeedGroupKnobs);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v69 = &v68 - v6;
  v72 = type metadata accessor for StockFeedGroupKnobs(0);
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v7);
  v73 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220603D2C(0, &qword_28128FB18, type metadata accessor for StockFeedGroupKnobs);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v75 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v68 - v14;
  sub_220603D2C(0, qword_28128E858, type metadata accessor for StockFeedKnobsConfig);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v79 = &v68 - v18;
  v74 = type metadata accessor for StockFeedKnobsConfig(0);
  v80 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v19);
  v71 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v77 = &v68 - v23;
  sub_220603D2C(0, &qword_281296B78, MEMORY[0x277D32028]);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = &v68 - v26;
  sub_220603D2C(0, &qword_281299480, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v31 = &v68 - v30;
  sub_220603D2C(0, qword_281292F18, type metadata accessor for StockFeedConfig);
  MEMORY[0x28223BE20](v32 - 8, v33);
  v35 = &v68 - v34;
  v36 = type metadata accessor for StockFeedConfig(0);
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v38);
  v40 = (&v68 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = a1;
  sub_220603DE8(a1, v35, qword_281292F18, type metadata accessor for StockFeedConfig);
  v41 = *(v37 + 48);
  if (v41(v35, 1, v36) == 1)
  {
    sub_22088515C();
    v42 = sub_22088516C();
    (*(*(v42 - 8) + 56))(v31, 0, 1, v42);
    v43 = sub_22088F67C();
    (*(*(v43 - 8) + 56))(v27, 1, 1, v43);
    *v40 = MEMORY[0x277D84F90];
    sub_220528A8C(v31, v40 + *(v36 + 20), &qword_281299480, MEMORY[0x277CC9578]);
    sub_220528A8C(v27, v40 + *(v36 + 24), &qword_281296B78, MEMORY[0x277D32028]);
    if (v41(v35, 1, v36) != 1)
    {
      sub_220603E54(v35, qword_281292F18, type metadata accessor for StockFeedConfig);
    }
  }

  else
  {
    sub_220603D80(v35, v40, type metadata accessor for StockFeedConfig);
  }

  v44 = v40;
  v45 = v81;
  sub_220603D80(v44, v81, type metadata accessor for StockFeedConfig);
  v46 = v76;
  v47 = v79;
  sub_220603DE8(v76, v79, qword_28128E858, type metadata accessor for StockFeedKnobsConfig);
  v49 = v80 + 48;
  v48 = *(v80 + 48);
  v50 = v74;
  v51 = v48(v47, 1, v74);
  v52 = v77;
  v53 = v75;
  if (v51 == 1)
  {
    v54 = v15;
    v55 = v70;
    v56 = v72;
    (*(v70 + 56))(v54, 1, 1, v72);
    sub_220603DE8(v54, v53, &qword_28128FB18, type metadata accessor for StockFeedGroupKnobs);
    v57 = *(v55 + 48);
    if (v57(v53, 1, v56) == 1)
    {
      v58 = type metadata accessor for NewsStockFeedGroupKnobs(0);
      v59 = *(*(v58 - 8) + 56);
      v70 = v54;
      v60 = v69;
      v59(v69, 1, 1, v58);
      v80 = v49;
      v61 = v56;
      v62 = v73;
      sub_22068599C(v60, v73);
      sub_220603E54(v46, qword_28128E858, type metadata accessor for StockFeedKnobsConfig);
      sub_220603E54(v78, qword_281292F18, type metadata accessor for StockFeedConfig);
      sub_220603E54(v70, &qword_28128FB18, type metadata accessor for StockFeedGroupKnobs);
      if (v57(v53, 1, v61) != 1)
      {
        sub_220603E54(v53, &qword_28128FB18, type metadata accessor for StockFeedGroupKnobs);
      }
    }

    else
    {
      sub_220603E54(v46, qword_28128E858, type metadata accessor for StockFeedKnobsConfig);
      sub_220603E54(v78, qword_281292F18, type metadata accessor for StockFeedConfig);
      sub_220603E54(v54, &qword_28128FB18, type metadata accessor for StockFeedGroupKnobs);
      v62 = v73;
      sub_220603D80(v53, v73, type metadata accessor for StockFeedGroupKnobs);
    }

    v63 = v71;
    sub_220603D80(v62, v71, type metadata accessor for StockFeedGroupKnobs);
    *(v63 + *(v50 + 20)) = 0x7FFFFFFFFFFFFFFFLL;
    sub_220603D80(v63, v52, type metadata accessor for StockFeedKnobsConfig);
    v64 = v79;
    v65 = v48(v79, 1, v50);
    v45 = v81;
    if (v65 != 1)
    {
      sub_220603E54(v64, qword_28128E858, type metadata accessor for StockFeedKnobsConfig);
    }
  }

  else
  {
    sub_220603E54(v46, qword_28128E858, type metadata accessor for StockFeedKnobsConfig);
    sub_220603E54(v78, qword_281292F18, type metadata accessor for StockFeedConfig);
    sub_220603D80(v47, v52, type metadata accessor for StockFeedKnobsConfig);
  }

  v66 = type metadata accessor for StockFeedContentConfig(0);
  return sub_220603D80(v52, v45 + *(v66 + 20), type metadata accessor for StockFeedKnobsConfig);
}