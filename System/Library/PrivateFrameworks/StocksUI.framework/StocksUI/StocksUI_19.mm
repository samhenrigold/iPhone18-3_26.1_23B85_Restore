uint64_t sub_220685F18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_220686448(0, qword_28128B590, type metadata accessor for NewsStockFeedGroupKnobs);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v17 - v7;
  sub_220686564(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2206865C0();
  sub_220892A4C();
  if (!v3)
  {
    v15 = v19;
    type metadata accessor for NewsStockFeedGroupKnobs(0);
    v17[0] = 0x626F6E4B7377656ELL;
    v17[1] = 0xE900000000000073;
    v17[2] = 0;
    v18 = 1;
    sub_220453520(&qword_28128B5D8, type metadata accessor for NewsStockFeedGroupKnobs, "Iӗa");
    sub_22089276C();
    sub_22068599C(v8, v15);
    (*(v11 + 8))(v14, v10);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_22068618C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

void sub_2206861AC(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_2206861BC(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v6 || (v7 = sub_2208928BC(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_220686240()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2208929EC();
  sub_22089146C();
  sub_220892A0C();
  if (v2 != 1)
  {
    MEMORY[0x223D8ABA0](v1);
  }

  return sub_220892A2C();
}

uint64_t sub_2206862CC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_22089146C();
  if (v3 == 1)
  {
    return sub_220892A0C();
  }

  sub_220892A0C();
  return MEMORY[0x223D8ABA0](v2);
}

uint64_t sub_220686330()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2208929EC();
  sub_22089146C();
  sub_220892A0C();
  if (v2 != 1)
  {
    MEMORY[0x223D8ABA0](v1);
  }

  return sub_220892A2C();
}

uint64_t sub_2206863B8(uint64_t a1)
{
  v2 = sub_2206865C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2206863F4(uint64_t a1)
{
  v2 = sub_2206865C0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_220686448(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_22068649C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220686448(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_220686508(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220686448(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_220686564(uint64_t a1)
{
  if (!qword_28127E268)
  {
    sub_2206865C0();
    v1 = sub_2208927BC();
    if (!v2)
    {
      atomic_store(v1, &qword_28127E268);
    }
  }
}

unint64_t sub_2206865C0()
{
  result = qword_28128FB70;
  if (!qword_28128FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128FB70);
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

uint64_t sub_220686628(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_220686670(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2206866C8()
{
  result = qword_27CF58790;
  if (!qword_27CF58790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58790);
  }

  return result;
}

unint64_t sub_220686720()
{
  result = qword_28128FB60;
  if (!qword_28128FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128FB60);
  }

  return result;
}

unint64_t sub_220686778()
{
  result = qword_28128FB68;
  if (!qword_28128FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128FB68);
  }

  return result;
}

uint64_t sub_2206867CC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22068681C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_220686870(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_220686898(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  v111 = a8;
  v110 = a7;
  v108 = a6;
  v106 = a5;
  v105 = a4;
  v104 = a3;
  v112 = a2;
  v109 = a10;
  v107 = a9;
  sub_22047C320(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v91 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_22089065C();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90, v14);
  v88 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206874BC(0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_22089011C();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93, v20);
  v22 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_22088AB1C();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95, v23);
  v25 = (&v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_22088698C();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v100 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v88 - v32;
  v99 = v34;
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v88 - v37;
  sub_220454720(0);
  v40 = v39;
  sub_22088FF6C();
  v41 = v27;
  v121 = MEMORY[0x277D84F90];
  v43 = *(v27 + 16);
  v42 = v27 + 16;
  v98 = v43;
  v43(v33, v38, v26);
  v44 = (*(v41 + 88))(v33, v26);
  v45 = v44 == *MEMORY[0x277D69850];
  v103 = v26;
  v102 = v38;
  if (v45)
  {
    v96 = v42;
    v97 = v41;
    (*(v41 + 96))(v33, v26);
    swift_unknownObjectRelease();
    sub_22088FF8C();
    v113 = v104;
    v114 = v105;
    v115 = v106;
    v116 = v108;
    v117 = v110;
    v118 = v111;
    v119 = v107;
    v120 = v109;
    sub_22088A8AC();
    v91 = sub_22088A88C();
    sub_2204FF8CC(v22);
    sub_2208900BC();
    (*(v92 + 8))(v22, v93);
    v46 = sub_22088F64C();
    v47 = (*(*(v46 - 8) + 48))(v19, 1, v46);
    sub_220687694(v19, sub_2206874BC);
    v48 = sub_2208868DC();
    v49 = sub_22088FF4C();
    *v25 = v48;
    v51 = v25 + 1;
    if (v47 == 1)
    {
      *v51 = 0;
      v25[2] = 0;
      v51 = v25 + 3;
      v52 = MEMORY[0x277D31A58];
      v53 = 4;
    }

    else
    {
      v52 = MEMORY[0x277D31A20];
      v53 = 2;
    }

    *v51 = v49;
    v25[v53] = v50;
    v66 = v94;
    v67 = v95;
    (*(v94 + 104))(v25, *v52, v95);
    sub_22052EC94(0);
    v69 = *(v68 + 48);
    v101 = a1;
    sub_22088FF8C();
    LODWORD(v93) = v113;
    v70 = MEMORY[0x223D82CB0](v25, v91);

    sub_2205D32EC(v70);
    (*(v66 + 8))(v25, v67);
    v71 = sub_220885CDC();
    (*(*(v71 - 8) + 8))(&v33[v69], v71);
  }

  else
  {
    v95 = v40;
    if (v44 != *MEMORY[0x277D69840])
    {
      v113 = v104;
      v114 = v105;
      v115 = v106;
      v116 = v108;
      v117 = v110;
      v118 = v111;
      v119 = v107;
      v120 = v109;
      v72 = sub_22088A8AC();
      (*(*(v72 - 8) + 8))(v112, v72);
      (*(*(v95 - 8) + 8))(a1);
      v73 = v103;
      (*(v41 + 8))(v33, v103);
      v74 = v102;
LABEL_20:
      v85 = 0;
      goto LABEL_21;
    }

    v96 = v42;
    v97 = v41;
    (*(v41 + 96))(v33, v103);
    v54 = sub_22088B17C();
    v56 = sub_22065E5E8(v102, v112, v104, v105, v106, v108, v110, v111, v55, v107, v109);
    sub_2208868DC();
    v57 = v89;
    v58 = v88;
    v59 = v90;
    (*(v89 + 104))(v88, *MEMORY[0x277D33970], v90);
    v60 = sub_22088B16C();
    swift_unknownObjectRelease();
    (*(v57 + 8))(v58, v59);
    sub_22047A054(0, &qword_28127E080, sub_2205D3A54, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    v62 = inited;
    *(inited + 16) = xmmword_22089B140;
    if (v56)
    {
      v63 = MEMORY[0x277D6D630];
      v64 = v56;
      v65 = v54;
    }

    else
    {
      v64 = 0;
      v65 = 0;
      v63 = 0;
      *(inited + 40) = 0;
      *(inited + 48) = 0;
    }

    *(inited + 32) = v64;
    *(inited + 56) = v65;
    *(inited + 64) = v63;
    if (v60)
    {
      v75 = MEMORY[0x277D6D630];
      v76 = v54;
    }

    else
    {
      v76 = 0;
      v75 = 0;
      *(inited + 80) = 0;
      *(inited + 88) = 0;
    }

    *(inited + 72) = v60;
    *(inited + 96) = v76;
    *(inited + 104) = v75;
    swift_getObjectType();

    v77 = v91;
    sub_220891DCC();
    v78 = sub_22088B0DC();
    sub_220687694(v77, sub_22047C320);
    if (v78)
    {
      v79 = MEMORY[0x277D6D630];
    }

    else
    {
      v54 = 0;
      v79 = 0;
      v62[15] = 0;
      v62[16] = 0;
    }

    v62[14] = v78;
    v62[17] = v54;
    v62[18] = v79;
    sub_2205D32EC(v62);
    swift_unknownObjectRelease();

    LODWORD(v93) = 1;
    v40 = v95;
    v101 = a1;
  }

  v80 = v100;
  v74 = v102;
  v73 = v103;
  v98(v100, v102, v103);
  v81 = v97;
  v82 = (*(v97 + 80) + 16) & ~*(v97 + 80);
  v83 = v82 + v99;
  v84 = swift_allocObject();
  (*(v81 + 32))(v84 + v82, v80, v73);
  *(v84 + v83) = v93;
  v41 = v81;
  v85 = sub_22088AABC();
  v113 = v104;
  v114 = v105;
  v115 = v106;
  v116 = v108;
  v117 = v110;
  v118 = v111;
  v119 = v107;
  v120 = v109;
  v86 = sub_22088A8AC();
  (*(*(v86 - 8) + 8))(v112, v86);
  (*(*(v40 - 8) + 8))(v101, v40);
  if (!v85)
  {
    goto LABEL_20;
  }

LABEL_21:
  (*(v41 + 8))(v74, v73);
  return v85;
}

uint64_t sub_2206874F0(uint64_t a1, uint64_t a2)
{
  sub_220890B3C();
  sub_2208868DC();
  type metadata accessor for ShareLinkProvider();
  *(swift_allocObject() + 16) = 0;
  sub_2204587F8(&qword_281291720, type metadata accessor for ShareLinkProvider, &protocol conformance descriptor for ShareLinkProvider);
  type metadata accessor for MailShareLinkTextProvider();
  swift_allocObject();
  sub_2204587F8(&qword_281289990, type metadata accessor for MailShareLinkTextProvider, &protocol conformance descriptor for MailShareLinkTextProvider);
  return sub_220890B2C();
}

uint64_t sub_220687614()
{
  v1 = *(sub_22088698C() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  return sub_2206874F0(v2, v3);
}

uint64_t sub_220687694(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2206876F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22047A054(0, &qword_28127E080, sub_2205D3A54, MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_220899920;
  sub_22048BC00();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22089B130;
  *(inited + 32) = sub_220622DE8(a2, a3, a4, xmmword_22089B130);
  v9 = sub_2205AFA24(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v10 = sub_22088B4FC();
  sub_2205AFBDC(v9);

  sub_22088B4DC();

  v11 = sub_22088B4EC();
  v12 = MEMORY[0x277D6D798];
  *(v7 + 96) = v10;
  *(v7 + 104) = v12;
  *(v7 + 72) = v11;
  return v7;
}

void sub_220687884(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v31 = a5;
  v42 = a4(0);
  MEMORY[0x28223BE20](v42, v9);
  v39 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v12);
  v41 = &v31 - v15;
  v38 = *(a3 + 16);
  if (v38)
  {
    v16 = 0;
    v35 = (v13 + 8);
    v36 = (v13 + 32);
    v37 = v13 + 16;
    v40 = MEMORY[0x277D84F90];
    v33 = a2;
    v34 = a3;
    v32 = a1;
    while (v16 < *(a3 + 16))
    {
      v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v18 = *(v13 + 72);
      v19 = a3;
      v20 = a3 + v17 + v18 * v16;
      v21 = v13;
      v22 = a1;
      v23 = v41;
      (*(v13 + 16))(v41, v20, v42, v14);
      v24 = v23;
      a1 = v22;
      v25 = v22(v24);
      if (v5)
      {
        (*v35)(v41, v42);

        return;
      }

      if (v25)
      {
        v26 = *v36;
        (*v36)(v39, v41, v42);
        v27 = v40;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v31(0, *(v27 + 16) + 1, 1);
          v27 = v43;
        }

        v30 = *(v27 + 16);
        v29 = *(v27 + 24);
        if (v30 >= v29 >> 1)
        {
          v31(v29 > 1, v30 + 1, 1);
          v27 = v43;
        }

        *(v27 + 16) = v30 + 1;
        v40 = v27;
        v26((v27 + v17 + v30 * v18), v39, v42);
        a3 = v34;
        a1 = v32;
      }

      else
      {
        (*v35)(v41, v42);
        a3 = v19;
      }

      ++v16;
      v13 = v21;
      if (v38 == v16)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
LABEL_14:
  }
}

uint64_t sub_220687B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v7 = v6;
  v107 = a2;
  v108 = a6;
  v109 = a1;
  v10 = *v7;
  v111 = a3;
  v112 = v10;
  v11 = sub_220886A4C();
  v115 = *(v11 - 8);
  v12 = *(v115 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v113 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v117 = &v90 - v16;
  sub_2204475D4(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v90 - v19;
  v21 = sub_22088685C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v114 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v116 = &v90 - v27;
  v28 = type metadata accessor for WatchlistMembershipCommandContext(0);
  sub_220576A98(a4 + *(v28 + 20), v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_22068BD1C(v20, &qword_281299060, MEMORY[0x277D69810]);
  }

  v30 = *(v22 + 32);
  v110 = v22 + 32;
  v103 = v30;
  v30(v116, v20, v21);
  v105 = *(v115 + 16);
  v106 = v115 + 16;
  v105(v117, a4, v11);
  __swift_project_boxed_opaque_existential_1(v7 + 2, v7[5]);
  v104 = v22;
  if (a5)
  {
    v31 = v113;
    sub_220885F0C();
    v32 = sub_220886A1C();
    v33 = v115;
    (*(v115 + 8))(v31, v11);
    v34 = v116;
    v35 = sub_22088681C();
    v101 = v21;
    v118[0] = v35;
    v118[1] = v36;
    MEMORY[0x28223BE20](v35, v36);
    *(&v90 - 2) = v118;
    LODWORD(v99) = sub_2206A3BCC(sub_2206540FC, (&v90 - 4), v32);

    MEMORY[0x28223BE20](v37, v38);
    *(&v90 - 4) = v7;
    *(&v90 - 3) = v34;
    v39 = v117;
    *(&v90 - 2) = v117;
    v102 = sub_220888FBC();
    sub_22044D56C(0, &qword_28127E7C0, 0x277D85C78);
    v95 = sub_220891D0C();
    v40 = v104 + 16;
    v100 = *(v104 + 16);
    v41 = v101;
    v100(v114, v34, v101);
    v97 = v40;
    v42 = v113;
    v105(v113, v39, v11);
    v43 = *(v40 + 64);
    v44 = *(v33 + 80);
    v92 = v7;
    v45 = (v43 + 16) & ~v43;
    v46 = (v23 + v44 + v45) & ~v44;
    v98 = v46 + v12;
    v96 = v46;
    v94 = v43 | v44;
    v47 = (v46 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v91 = ((v47 + 15) & 0xFFFFFFFFFFFFFFF8);
    v48 = (v47 + 31) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    v103(v49 + v45, v114, v41);
    v93 = *(v33 + 32);
    v93(v49 + v46, v42, v11);
    *(v49 + v47) = v108;
    v50 = v91 + v49;
    *v50 = v92;
    v50[8] = v99 & 1;
    v51 = (v49 + v48);
    v52 = v107;
    *v51 = v109;
    v51[1] = v52;
    *(v49 + ((v48 + 23) & 0xFFFFFFFFFFFFFFF8)) = v111;

    swift_unknownObjectRetain();

    v53 = v95;
    sub_220888E6C();

    v54 = v114;
    v55 = v101;
    v100(v114, v116, v101);
    v105(v42, v117, v11);
    v56 = swift_allocObject();
    v57 = v56 + v45;
    v58 = v55;
    v103(v57, v54, v55);
    v93(v56 + v96, v42, v11);
  }

  else
  {
    v60 = sub_220885FCC();
    v102 = v11;
    MEMORY[0x28223BE20](v60, v61);
    v62 = v116;
    *(&v90 - 2) = v116;
    sub_220687884(sub_22068BD8C, (&v90 - 4), v63, MEMORY[0x277D698E0], sub_22070C274);
    v97 = v64;
    MEMORY[0x28223BE20](v64, v65);
    *(&v90 - 4) = v7;
    *(&v90 - 3) = v62;
    v66 = v117;
    *(&v90 - 2) = v117;
    v100 = sub_220888FBC();
    sub_22044D56C(0, &qword_28127E7C0, 0x277D85C78);
    v93 = sub_220891D0C();
    v68 = *(v22 + 16);
    v67 = v22 + 16;
    v96 = v67;
    v99 = v68;
    v68(v114, v62, v21);
    v105(v113, v66, v102);
    v69 = *(v67 + 64);
    v70 = (v69 + 16) & ~v69;
    v71 = v115;
    v72 = *(v115 + 80);
    v95 = v70;
    v73 = (v23 + v72 + v70) & ~v72;
    v98 = v73 + v12;
    v94 = v73;
    v92 = (v69 | v72);
    v74 = (v73 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
    v76 = v21;
    v77 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
    v78 = swift_allocObject();
    v79 = v78 + v70;
    v80 = v76;
    v81 = v76;
    v82 = v103;
    v103(v79, v114, v80);
    v91 = *(v71 + 32);
    v83 = v78 + v73;
    v84 = v113;
    v91(v83, v113, v102);
    v85 = v107;
    *(v78 + v74) = v108;
    v11 = v102;
    *(v78 + v75) = v97;
    v86 = (v78 + v77);
    *v86 = v109;
    v86[1] = v85;
    *(v78 + ((v77 + 23) & 0xFFFFFFFFFFFFFFF8)) = v111;

    swift_unknownObjectRetain();

    v87 = v93;
    sub_220888E6C();

    v88 = v114;
    v58 = v81;
    v99(v114, v116, v81);
    v105(v84, v117, v11);
    v89 = swift_allocObject();
    v82(v89 + v95, v88, v58);
    v91(v89 + v94, v84, v11);
  }

  v59 = sub_220888D9C();
  sub_220888E9C();

  (*(v115 + 8))(v117, v11);
  return (*(v104 + 8))(v116, v58);
}

uint64_t sub_22068865C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v54 = a8;
  v48 = a7;
  v41[2] = a6;
  v44 = a1;
  v52 = a10;
  v53 = a9;
  v47 = sub_220886A4C();
  v45 = *(v47 - 8);
  v13 = *(v45 + 64);
  MEMORY[0x28223BE20](v47, v14);
  v51 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v50 = v41 - v17;
  v55 = sub_22088685C();
  v43 = *(v55 - 8);
  v18 = *(v43 + 64);
  MEMORY[0x28223BE20](v55, v19);
  v49 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22048D7F8(0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_220899920;
  v42 = a3;
  v21 = sub_22088681C();
  v23 = v22;
  v24 = MEMORY[0x277D837D0];
  *(v20 + 56) = MEMORY[0x277D837D0];
  v25 = sub_22048D860();
  *(v20 + 64) = v25;
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  v46 = a4;
  v26 = sub_220886A0C();
  *(v20 + 96) = v24;
  *(v20 + 104) = v25;
  *(v20 + 72) = v26;
  *(v20 + 80) = v27;
  sub_22044D56C(0, &qword_28127E420, 0x277D86200);
  v28 = sub_2208922DC();
  v29 = sub_220891AFC();
  sub_22088A7EC("Successfully added stock %{public}@ to watchlist %{public}@ using command", 73, 2, &dword_22043F000, v28, v29, v20);

  if (a5)
  {
    sub_22088C4AC();
    sub_2204446D4(0, &qword_281297F10, MEMORY[0x277D6D540]);
    sub_22088731C();
    if (swift_dynamicCast())
    {
      v41[1] = v56;
      v41[0] = swift_allocObject();
      swift_weakInit();
      v30 = v43;
      v31 = v45;
      (*(v43 + 16))(v49, v42, v55);
      v32 = *(v31 + 16);
      v33 = v47;
      v32(v50, v44, v47);
      v32(v51, v46, v33);
      v34 = (*(v30 + 80) + 24) & ~*(v30 + 80);
      v35 = *(v31 + 80);
      v36 = (v18 + v35 + v34) & ~v35;
      v37 = (v13 + v35 + v36) & ~v35;
      v38 = swift_allocObject();
      *(v38 + 16) = v41[0];
      (*(v30 + 32))(v38 + v34, v49, v55);
      v39 = *(v31 + 32);
      v39(v38 + v36, v50, v33);
      v39(v38 + v37, v51, v33);
      *(v38 + v37 + v13) = v48 & 1;

      sub_22088726C();
    }
  }

  swift_getObjectType();
  if (qword_281296F90 != -1)
  {
    swift_once();
  }

  sub_22088B75C();
  type metadata accessor for WatchlistMembershipCommandContext(0);
  return sub_22088B75C();
}

void sub_220688AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v124 = a6;
  v132 = a5;
  v146 = a4;
  v147 = a3;
  v131 = sub_22088685C();
  v129 = *(v131 - 8);
  MEMORY[0x28223BE20](v131, v7);
  v130 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_220889B2C();
  v144 = *(v142 - 8);
  MEMORY[0x28223BE20](v142, v9);
  v139 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_22088944C();
  v152 = *(v141 - 8);
  MEMORY[0x28223BE20](v141, v11);
  v122 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v140 = &v103 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v128 = &v103 - v18;
  v19 = sub_220886A4C();
  v153 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v120 = &v103 - v25;
  MEMORY[0x28223BE20](v26, v27);
  v126 = &v103 - v28;
  v138 = sub_22088943C();
  v143 = *(v138 - 8);
  MEMORY[0x28223BE20](v138, v29);
  v121 = &v103 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v127 = &v103 - v33;
  v34 = sub_22088915C();
  MEMORY[0x28223BE20](v34 - 8, v35);
  v37 = &v103 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_22088699C();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v40);
  v42 = &v103 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_22088914C();
  v151 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v44);
  v46 = &v103 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v123 = Strong;
    v119 = v22;
    v154 = a1;
    sub_22088681C();
    v125 = v19;
    sub_2208867CC();
    sub_22067D2D4(v37);
    v48 = *(v39 + 8);
    v113 = v42;
    v115 = v38;
    v114 = v39 + 8;
    v112 = v48;
    v48(v42, v38);
    sub_22088683C();
    v117 = v37;
    sub_22088912C();
    sub_2204475D4(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v137 = v49;
    v50 = sub_220886F8C();
    v51 = v151;
    v145 = v50;
    v52 = *(v50 - 8);
    v53 = *(v52 + 80);
    v135 = ((v53 + 32) & ~v53) + *(v52 + 72);
    v54 = (v53 + 32) & ~v53;
    v150 = v54;
    v136 = v53;
    v55 = swift_allocObject();
    v149 = xmmword_220899360;
    *(v55 + 16) = xmmword_220899360;
    v148 = *MEMORY[0x277CEAD18];
    v57 = *(v52 + 104);
    v56 = v52 + 104;
    v134 = v57;
    v57(v55 + v54);
    v133 = " %{public}@ using command";
    v111 = sub_22068C51C(&qword_281298578, MEMORY[0x277D68270], MEMORY[0x277D68268]);
    sub_220886F1C();

    v58 = *(v51 + 8);
    v116 = v46;
    v118 = v43;
    v151 = v51 + 8;
    v106 = v58;
    v58(v46, v43);
    v59 = v153;
    v60 = v126;
    v61 = v125;
    (*(v153 + 16))(v126, v146, v125);
    v62 = sub_2208869AC();
    v63 = v152;
    v64 = *(v152 + 104);
    v65 = MEMORY[0x277D68560];
    if ((v62 & 1) == 0)
    {
      v65 = MEMORY[0x277D68558];
    }

    v66 = *v65;
    v67 = v128;
    v68 = v141;
    v110 = v152 + 104;
    v109 = v64;
    v64(v128, v66, v141);
    v69 = *(v63 + 16);
    v108 = v63 + 16;
    v107 = v69;
    v69(v140, v67, v68);
    v70 = v127;
    sub_22088942C();
    v71 = *(v63 + 8);
    v152 = v63 + 8;
    v105 = v71;
    v71(v67, v68);
    v72 = *(v59 + 8);
    v153 = v59 + 8;
    v128 = v72;
    (v72)(v60, v61);
    v73 = swift_allocObject();
    *(v73 + 16) = v149;
    v74 = v134;
    v134(v73 + v150, v148, v145);
    v75 = sub_22068C51C(&qword_2812984F0, MEMORY[0x277D68550], MEMORY[0x277D68548]);
    v76 = v138;
    v126 = v75;
    sub_220886F1C();
    v77 = v142;

    v78 = v143 + 8;
    v103 = *(v143 + 8);
    v103(v70, v76);
    sub_220886A1C();
    v79 = v139;
    sub_220889B1C();
    v80 = swift_allocObject();
    *(v80 + 16) = v149;
    v146 = v56;
    v74(v80 + v150, v148, v145);
    v127 = sub_22068C51C(&qword_27CF58798, MEMORY[0x277D68A80], MEMORY[0x277D68A78]);
    sub_220886F1C();

    v81 = v144 + 8;
    v104 = *(v144 + 8);
    v104(v79, v77);
    sub_2208897DC();
    (*(v129 + 16))(v130);
    *(&v156 + 1) = sub_22088A79C();
    __swift_allocate_boxed_opaque_existential_1(&v155);
    sub_22088A78C();
    v131 = sub_22068C51C(&qword_281298460, MEMORY[0x277D687D0], MEMORY[0x277D687B8]);
    sub_220886F3C();
    sub_22056D130(&v155);
    if (sub_2208869AC() & 1) != 0 || (v124)
    {
    }

    else
    {
      sub_22088681C();
      v143 = v78;
      v144 = v81;
      v82 = v113;
      sub_2208867CC();
      sub_22067D2D4(v117);
      v112(v82, v115);
      sub_22088683C();
      v83 = v116;
      sub_22088912C();
      v84 = swift_allocObject();
      *(v84 + 16) = v149;
      v134(v84 + v150, v148, v145);
      v85 = v118;
      sub_220886F1C();

      v106(v83, v85);
      v86 = v123;
      __swift_project_boxed_opaque_existential_1((v123 + 16), *(v123 + 40));
      v87 = v120;
      sub_220885F0C();
      v88 = sub_2208869AC();
      v89 = MEMORY[0x277D68560];
      if ((v88 & 1) == 0)
      {
        v89 = MEMORY[0x277D68558];
      }

      v90 = v122;
      v91 = v141;
      v109(v122, *v89, v141);
      v107(v140, v90, v91);
      v92 = v121;
      sub_22088942C();
      v105(v90, v91);
      v93 = v87;
      v94 = v125;
      v95 = v128;
      (v128)(v93, v125);
      v96 = swift_allocObject();
      *(v96 + 16) = v149;
      v97 = v145;
      v134(v96 + v150, v148, v145);
      v98 = v138;
      sub_220886F1C();

      v103(v92, v98);
      __swift_project_boxed_opaque_existential_1((v86 + 16), *(v86 + 40));
      v99 = v119;
      sub_220885F0C();
      sub_220886A1C();
      v95(v99, v94);
      v100 = v139;
      sub_220889B1C();
      v101 = swift_allocObject();
      *(v101 + 16) = v149;
      v134(v101 + v150, v148, v97);
      v102 = v142;
      sub_220886F1C();

      v104(v100, v102);
      v155 = 0u;
      v156 = 0u;
      sub_220886F3C();

      sub_22056D130(&v155);
    }
  }
}

uint64_t sub_220689ADC(uint64_t a1)
{
  if (sub_2208869AC())
  {
    v1 = 0;
  }

  else
  {
    v2 = sub_220886A1C();
    v6[0] = sub_22088681C();
    v6[1] = v3;
    MEMORY[0x28223BE20](v6[0], v3);
    v5[2] = v6;
    v1 = sub_2206A3BCC(sub_2206540FC, v5, v2);
  }

  return v1 & 1;
}

uint64_t sub_220689BB4(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  sub_22088681C();
  v3 = sub_220885FBC();

  return v3;
}

uint64_t sub_220689C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v47 = a8;
  v42 = a6;
  v45 = a9;
  v46 = a7;
  v41 = sub_220886A4C();
  v38 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v12);
  v39 = v13;
  v44 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_22088685C();
  v37 = *(v48 - 8);
  v14 = *(v37 + 64);
  MEMORY[0x28223BE20](v48, v15);
  v43 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22048D7F8(0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_220899920;
  v17 = a3;
  v18 = sub_22088681C();
  v20 = v19;
  v21 = MEMORY[0x277D837D0];
  *(v16 + 56) = MEMORY[0x277D837D0];
  v22 = sub_22048D860();
  *(v16 + 64) = v22;
  *(v16 + 32) = v18;
  *(v16 + 40) = v20;
  v40 = a4;
  v23 = sub_220886A0C();
  *(v16 + 96) = v21;
  *(v16 + 104) = v22;
  *(v16 + 72) = v23;
  *(v16 + 80) = v24;
  sub_22044D56C(0, &qword_28127E420, 0x277D86200);
  v25 = sub_2208922DC();
  v26 = sub_220891AFC();
  sub_22088A7EC("Successfully removed stock %{public}@ from watchlist %{public}@ using command", 77, 2, &dword_22043F000, v25, v26, v16);

  if (a5)
  {
    sub_22088C4AC();
    sub_2204446D4(0, &qword_281297F10, MEMORY[0x277D6D540]);
    sub_22088731C();
    if (swift_dynamicCast())
    {
      v36[1] = v49;
      v27 = v37;
      v28 = v48;
      (*(v37 + 16))(v43, v17, v48);
      v29 = v38;
      v30 = v41;
      (*(v38 + 16))(v44, v40, v41);
      v31 = (*(v27 + 80) + 16) & ~*(v27 + 80);
      v32 = (v14 + *(v29 + 80) + v31) & ~*(v29 + 80);
      v33 = (v39 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
      v34 = swift_allocObject();
      (*(v27 + 32))(v34 + v31, v43, v28);
      (*(v29 + 32))(v34 + v32, v44, v30);
      *(v34 + v33) = v42;

      sub_22088726C();
    }
  }

  swift_getObjectType();
  if (qword_281296F90 != -1)
  {
    swift_once();
  }

  sub_22088B75C();
  type metadata accessor for WatchlistMembershipCommandContext(0);
  return sub_22088B75C();
}

uint64_t sub_22068A030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v130 = a4;
  v177 = a3;
  v189 = a1;
  v139 = sub_22088685C();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139, v5);
  v137 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_220889B2C();
  v175 = *(v170 - 8);
  MEMORY[0x28223BE20](v170, v7);
  v169 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_22088944C();
  v174 = *(v168 - 8);
  MEMORY[0x28223BE20](v168, v9);
  v163 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v167 = &v116 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v186 = &v116 - v16;
  v191 = sub_220886A4C();
  v176 = *(v191 - 8);
  MEMORY[0x28223BE20](v191, v17);
  v162 = &v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v190 = &v116 - v21;
  MEMORY[0x28223BE20](v22, v23);
  v180 = &v116 - v24;
  v166 = sub_22088943C();
  v173 = *(v166 - 8);
  MEMORY[0x28223BE20](v166, v25);
  v161 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v143 = &v116 - v29;
  v160 = sub_22088915C();
  v134 = *(v160 - 8);
  MEMORY[0x28223BE20](v160, v30);
  v159 = &v116 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v116 - v34;
  v36 = sub_22088699C();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v38);
  v158 = &v116 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v41);
  v152 = &v116 - v42;
  MEMORY[0x28223BE20](v43, v44);
  v46 = &v116 - v45;
  v165 = sub_22088914C();
  v47 = *(v165 - 8);
  MEMORY[0x28223BE20](v165, v48);
  v156 = &v116 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50, v51);
  v53 = &v116 - v52;
  sub_22088681C();
  v164 = a2;
  sub_2208867CC();
  sub_22067D2D4(v35);
  v136 = v37;
  v54 = *(v37 + 8);
  v155 = v36;
  v154 = v37 + 8;
  v153 = v54;
  (v54)(v46, v36);
  sub_22088683C();
  v55 = v191;
  sub_22088912C();
  sub_2204475D4(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v181 = v56;
  v185 = sub_220886F8C();
  v57 = *(v185 - 8);
  v58 = *(v57 + 72);
  v172 = *(v57 + 80);
  v184 = ((v172 + 32) & ~v172) + v58;
  v59 = (v172 + 32) & ~v172;
  v171 = v59;
  v60 = swift_allocObject();
  v188 = xmmword_220899360;
  *(v60 + 16) = xmmword_220899360;
  v183 = *MEMORY[0x277CEAD18];
  v62 = *(v57 + 104);
  v61 = (v57 + 104);
  v182 = v62;
  (v62)(v60 + v59);
  v187 = " %{public}@ using command";
  v63 = sub_22068C51C(&qword_281298578, MEMORY[0x277D68270], MEMORY[0x277D68268]);
  v64 = v165;
  v151 = v63;
  sub_220886F1C();

  v65 = *(v47 + 8);
  v157 = v47 + 8;
  v150 = v65;
  v65(v53, v64);
  v66 = v176;
  v67 = *(v176 + 16);
  v68 = v180;
  v142 = v176 + 16;
  v67(v180, v177, v55);
  v69 = sub_2208869AC();
  v70 = v174;
  v71 = *(v174 + 104);
  v72 = MEMORY[0x277D68560];
  if ((v69 & 1) == 0)
  {
    v72 = MEMORY[0x277D68558];
  }

  v73 = *v72;
  v74 = v186;
  v75 = v168;
  v149 = v174 + 104;
  v148 = v71;
  v71(v186, v73, v168);
  v76 = *(v70 + 16);
  v147 = v70 + 16;
  v146 = v76;
  v76(v167, v74, v75);
  v77 = v143;
  sub_22088942C();
  v78 = *(v70 + 8);
  v174 = v70 + 8;
  v145 = v78;
  v78(v74, v75);
  v179 = *(v66 + 8);
  v180 = (v66 + 8);
  v179(v68, v55);
  v79 = swift_allocObject();
  *(v79 + 16) = v188;
  v182(v79 + v171, v183, v185);
  v80 = sub_22068C51C(&qword_2812984F0, MEMORY[0x277D68550], MEMORY[0x277D68548]);
  v81 = v166;
  v144 = v80;
  sub_220886F1C();

  v82 = *(v173 + 8);
  v173 += 8;
  v143 = v82;
  (v82)(v77, v81);
  sub_220886A1C();
  v83 = v169;
  sub_220889B1C();
  v84 = swift_allocObject();
  *(v84 + 16) = v188;
  v186 = v61;
  v182(v84 + v171, v183, v185);
  v85 = sub_22068C51C(&qword_27CF58798, MEMORY[0x277D68A80], MEMORY[0x277D68A78]);
  v86 = v170;
  v141 = v85;
  sub_220886F1C();
  v87 = v164;

  v88 = *(v175 + 8);
  v175 += 8;
  v140 = v88;
  v88(v83, v86);
  v89 = sub_22088994C();
  (*(v138 + 16))(v137, v87, v139);
  *(&v193 + 1) = sub_22088A7BC();
  __swift_allocate_boxed_opaque_existential_1(&v192);
  sub_22088A7AC();
  v90 = sub_22068C51C(&qword_27CF587A0, MEMORY[0x277D688E8], MEMORY[0x277D688D0]);
  v139 = v89;
  v138 = v90;
  sub_220886F3C();
  sub_22056D130(&v192);
  result = sub_2208869AC();
  if (result)
  {
    v92 = *(v130 + 16);
    if (v92)
    {
      v137 = (v136 + 2);
      v136 += 11;
      v135 = *MEMORY[0x277D69898];
      v129 = *MEMORY[0x277D698A0];
      v127 = *MEMORY[0x277D69870];
      v125 = *MEMORY[0x277D69888];
      v123 = *MEMORY[0x277D69878];
      v121 = *MEMORY[0x277D69890];
      v119 = *MEMORY[0x277D69880];
      v117 = *MEMORY[0x277D69868];
      v116 = *MEMORY[0x277D68278];
      v134 += 13;
      v118 = *MEMORY[0x277D682B0];
      v120 = *MEMORY[0x277D68298];
      v122 = *MEMORY[0x277D68288];
      v124 = *MEMORY[0x277D68290];
      v126 = *MEMORY[0x277D68280];
      v128 = *MEMORY[0x277D682A8];
      v133 = *MEMORY[0x277D682A0];
      v132 = *MEMORY[0x277D68558];
      v131 = *MEMORY[0x277D68560];
      v93 = v130 + ((*(v176 + 80) + 32) & ~*(v176 + 80));
      v130 = *(v176 + 72);
      v178 = v67;
      v94 = v183;
      while (1)
      {
        v177 = v92;
        v176 = v93;
        (v67)(v190);
        sub_22088681C();
        v111 = v152;
        sub_2208867CC();
        v112 = v158;
        v113 = v155;
        (*v137)(v158, v111, v155);
        v114 = (*v136)(v112, v113);
        v115 = v133;
        if (v114 != v135)
        {
          v115 = v128;
          if (v114 != v129)
          {
            v115 = v126;
            if (v114 != v127)
            {
              v115 = v124;
              if (v114 != v125)
              {
                v115 = v122;
                if (v114 != v123)
                {
                  v115 = v120;
                  if (v114 != v121)
                  {
                    v115 = v118;
                    if (v114 != v119)
                    {
                      v115 = v116;
                      if (v114 != v117)
                      {
                        break;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v153(v111);
        (*v134)(v159, v115, v160);
        sub_22088683C();
        v95 = v156;
        sub_22088912C();
        v96 = swift_allocObject();
        *(v96 + 16) = v188;
        v97 = v171;
        v182(v96 + v171, v183, v185);
        v98 = v165;
        sub_220886F1C();

        v150(v95, v98);
        v99 = v162;
        v178(v162, v190, v191);
        if (sub_2208869AC())
        {
          v100 = v131;
        }

        else
        {
          v100 = v132;
        }

        v101 = v163;
        v102 = v168;
        v148(v163, v100, v168);
        v146(v167, v101, v102);
        v103 = v161;
        sub_22088942C();
        v145(v101, v102);
        v179(v99, v191);
        v104 = swift_allocObject();
        *(v104 + 16) = v188;
        v105 = v185;
        v106 = v182;
        v182(v104 + v97, v94, v185);
        v107 = v166;
        sub_220886F1C();

        (v143)(v103, v107);
        sub_220886A1C();
        v108 = v169;
        sub_220889B1C();
        v109 = swift_allocObject();
        *(v109 + 16) = v188;
        v106(v109 + v97, v94, v105);
        v67 = v178;
        v110 = v170;
        sub_220886F1C();

        v140(v108, v110);
        v192 = 0u;
        v193 = 0u;
        sub_220886F3C();
        sub_22056D130(&v192);
        result = (v179)(v190, v191);
        v93 = v176 + v130;
        v92 = v177 - 1;
        if (v177 == 1)
        {
          return result;
        }
      }

      result = sub_2208928AC();
      __break(1u);
    }
  }

  return result;
}

void sub_22068B3B0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5)
{
  sub_22048D7F8(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22089B140;
  v8 = sub_22088681C();
  v10 = v9;
  v11 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v12 = sub_22048D860();
  *(v7 + 64) = v12;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v13 = sub_220886A0C();
  *(v7 + 96) = v11;
  *(v7 + 104) = v12;
  *(v7 + 72) = v13;
  *(v7 + 80) = v14;
  sub_2204446D4(0, &qword_28127DE30, MEMORY[0x277D84948]);
  sub_22089264C();
  *(v7 + 136) = v11;
  *(v7 + 144) = v12;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0xE000000000000000;
  sub_22044D56C(0, &qword_28127E420, 0x277D86200);
  v15 = sub_2208922DC();
  v16 = sub_220891AFC();
  sub_22088A7EC(a4, a5, 2, &dword_22043F000, v15, v16, v7);
}

uint64_t sub_22068B50C(uint64_t a1)
{
  v1 = sub_2208869BC();
  v3 = v2;
  if (v1 == sub_2208869BC() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2208928BC();
  }

  return v5 & 1;
}

uint64_t sub_22068B5A8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_22054B9F8(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_22068B610@<X0>(char *a1@<X3>, _BYTE *a2@<X8>)
{
  result = sub_22068B8A0(a1);
  *a2 = result & 1;
  return result;
}

BOOL sub_22068B644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277D69810];
  sub_2204475D4(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for WatchlistMembershipCommandContext(0);
  sub_220576A98(a4 + *(v10 + 20), v9);
  v11 = sub_22088685C();
  v12 = (*(*(v11 - 8) + 48))(v9, 1, v11) != 1;
  sub_22068BD1C(v9, &qword_281299060, v5);
  return v12;
}

uint64_t sub_22068B758()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    if (qword_281296F90 != -1)
    {
      swift_once();
    }

    sub_22088685C();
    sub_22088B75C();
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    if (qword_281296FD8 != -1)
    {
      swift_once();
    }

    type metadata accessor for WatchlistMembershipCommandContext(0);
    sub_22088B75C();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22068B8A0(char *a1)
{
  v3 = MEMORY[0x277D83D88];
  sub_2204475D4(0, &qword_281298FF0, MEMORY[0x277D698E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v35[-1] - v6;
  v8 = sub_220886A4C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v35[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204475D4(0, &qword_281299060, MEMORY[0x277D69810], v3);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v35[-1] - v15;
  v17 = sub_22088685C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v35[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for WatchlistMembershipCommandContext(0);
  sub_220576A98(&a1[*(v22 + 20)], v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v23 = &qword_281299060;
    v24 = MEMORY[0x277D69810];
    v25 = v16;
  }

  else
  {
    v34 = v12;
    (*(v18 + 32))(v21, v16, v17);
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    v26 = sub_220885FCC();
    MEMORY[0x28223BE20](v26, v27);
    *(&v34 - 2) = a1;
    sub_22059C558(sub_22068BCFC, v26, v7);

    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      v29 = v34;
      (*(v9 + 32))(v34, v7, v8);
      v30 = sub_220886A1C();
      v35[0] = sub_22088681C();
      v35[1] = v31;
      MEMORY[0x28223BE20](v35[0], v31);
      *(&v34 - 2) = v35;
      v32 = sub_2206A3BCC(sub_2205AB898, (&v34 - 4), v30);

      (*(v9 + 8))(v29, v8);
      (*(v18 + 8))(v21, v17);

      v28 = v32 ^ 1;
      return v28 & 1;
    }

    (*(v18 + 8))(v21, v17);
    v23 = &qword_281298FF0;
    v24 = MEMORY[0x277D698E0];
    v25 = v7;
  }

  sub_22068BD1C(v25, v23, v24);
  v28 = 1;
  return v28 & 1;
}

uint64_t sub_22068BD1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2204475D4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22068BDCC(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_22088685C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_220886A4C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_220689C38(a1, a2, v2 + v6, v2 + v9, *(v2 + v10), *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_22068BF8C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_22088685C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_220886A4C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_22068865C(a1, a2, v2 + v6, v2 + v9, *(v2 + v10), *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v10 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v10 + 31) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((((v10 + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_3Tm_0()
{
  v1 = sub_22088685C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_220886A4C();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

void sub_22068C234(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = *(sub_22088685C() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_220886A4C() - 8);
  sub_22068B3B0(a1, v3 + v8, v3 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)), a2, a3);
}

void sub_22068C314(uint64_t a1)
{
  v3 = *(sub_22088685C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_220886A4C() - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(v1 + 16);
  v11 = v1 + ((v9 + v7 + v8) & ~v7);
  v12 = *(v11 + v9);

  sub_220688AF4(a1, v10, v1 + v4, v1 + v8, v11, v12);
}

uint64_t sub_22068C41C(uint64_t a1)
{
  v3 = *(sub_22088685C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_220886A4C() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_22068A030(a1, v1 + v4, v1 + v7, v8);
}

uint64_t sub_22068C51C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_22068C58C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockSearchSectionDescriptor(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v22 - v10;
  sub_22068D3D8(a1, &v22 - v10);
  sub_220495338(0);
  v13 = v12;
  v14 = *(*(v12 - 8) + 48);
  v15 = v14(v11, 2, v12);
  if (v15)
  {
    v16 = v15 != 1;
  }

  else
  {

    v17 = sub_220886A4C();
    (*(*(v17 - 8) + 8))(v11, v17);
    v16 = 2;
  }

  sub_22068D3D8(a2, v7);
  v18 = v14(v7, 2, v13);
  if (v18)
  {
    v19 = v18 != 1;
  }

  else
  {

    v20 = sub_220886A4C();
    (*(*(v20 - 8) + 8))(v7, v20);
    v19 = 2;
  }

  return v16 >= v19;
}

double sub_22068C760()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();
  v4 = v3;

  qword_27CF587A8 = v2;
  unk_27CF587B0 = v4;
  result = 0.0;
  xmmword_27CF587B8 = 0u;
  *&qword_27CF587C8 = 0u;
  qword_27CF587D8 = 0;
  return result;
}

double sub_22068C834()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();
  v4 = v3;

  qword_27CF587E0 = v2;
  *algn_27CF587E8 = v4;
  result = 0.0;
  xmmword_27CF587F0 = 0u;
  *&qword_27CF58800 = 0u;
  qword_27CF58810 = 0;
  return result;
}

void sub_22068C904(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_220886A4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StockSearchSectionDescriptor(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22068D3D8(v2, v12);
  sub_220495338(0);
  v14 = v13;
  v15 = (*(*(v13 - 8) + 48))(v12, 2, v13);
  if (v15)
  {
    if (v15 == 1)
    {
      if (qword_27CF55AC8 != -1)
      {
        swift_once();
      }

      v16 = &qword_27CF587A8;
    }

    else
    {
      if (qword_27CF55AD0 != -1)
      {
        swift_once();
      }

      v16 = &qword_27CF587E0;
    }

    v18 = *v16;
    v20 = v16[1];
    v24 = v16[2];
    v25 = v16[3];
    v21 = v16[4];
    v23 = v16[5];
    v17 = v16[6];

    sub_2204CF2E4(v24, v25, v21, v23, v17);
  }

  else
  {
    v17 = *&v12[*(v14 + 48)];
    (*(v5 + 32))(v8, v12, v4);
    v18 = sub_220886A0C();
    v20 = v19;
    if ((sub_22088F0DC() & 1) != 0 && *(v17 + 16) < 2uLL)
    {
      (*(v5 + 8))(v8, v4);

      v18 = 0;
      v20 = 0;
      v24 = 0;
      v25 = 0;
      v21 = 0;
      v23 = 0;
      v17 = 0;
    }

    else
    {

      v21 = sub_2208869BC();
      v23 = v22;
      (*(v5 + 8))(v8, v4);
      v24 = v18;
      v25 = v20;
    }
  }

  *a1 = v18;
  a1[1] = v20;
  a1[2] = v24;
  a1[3] = v25;
  a1[4] = v21;
  a1[5] = v23;
  a1[6] = v17;
}

uint64_t sub_22068CBDC(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1 - 8, a2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22068D3D8(v2, v4);
  sub_220495338(0);
  v6 = (*(*(v5 - 8) + 48))(v4, 2, v5);
  if (v6)
  {
    if (v6 == 1)
    {
      return 0x73696C6863746177;
    }

    else
    {
      return 0x736C6F626D7973;
    }
  }

  else
  {

    v8 = sub_220886A4C();
    (*(*(v8 - 8) + 8))(v4, v8);
    return 0x7461576F54646461;
  }
}

unint64_t sub_22068CD2C()
{
  result = qword_281286DE8;
  if (!qword_281286DE8)
  {
    type metadata accessor for StockSearchSectionDescriptor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281286DE8);
  }

  return result;
}

BOOL sub_22068CD90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockSearchSectionDescriptor(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v22 - v10;
  sub_22068D3D8(a2, &v22 - v10);
  sub_220495338(0);
  v13 = v12;
  v14 = *(*(v12 - 8) + 48);
  v15 = v14(v11, 2, v12);
  if (v15)
  {
    v16 = v15 != 1;
  }

  else
  {

    v17 = sub_220886A4C();
    (*(*(v17 - 8) + 8))(v11, v17);
    v16 = 2;
  }

  sub_22068D3D8(a1, v7);
  v18 = v14(v7, 2, v13);
  if (v18)
  {
    v19 = v18 != 1;
  }

  else
  {

    v20 = sub_220886A4C();
    (*(*(v20 - 8) + 8))(v7, v20);
    v19 = 2;
  }

  return v16 >= v19;
}

BOOL sub_22068CF6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockSearchSectionDescriptor(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v22 - v10;
  sub_22068D3D8(a2, &v22 - v10);
  sub_220495338(0);
  v13 = v12;
  v14 = *(*(v12 - 8) + 48);
  v15 = v14(v11, 2, v12);
  if (v15)
  {
    v16 = v15 != 1;
  }

  else
  {

    v17 = sub_220886A4C();
    (*(*(v17 - 8) + 8))(v11, v17);
    v16 = 2;
  }

  sub_22068D3D8(a1, v7);
  v18 = v14(v7, 2, v13);
  if (v18)
  {
    v19 = v18 != 1;
  }

  else
  {

    v20 = sub_220886A4C();
    (*(*(v20 - 8) + 8))(v7, v20);
    v19 = 2;
  }

  return v16 < v19;
}

uint64_t sub_22068D140(uint64_t a1, uint64_t a2)
{
  v4 = 0xE900000000000074;
  v5 = 0x73696C6863746177;
  v6 = type metadata accessor for StockSearchSectionDescriptor(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v25 - v12;
  sub_22068D3D8(a1, &v25 - v12);
  sub_220495338(0);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = v16(v13, 2, v14);
  if (v17)
  {
    if (v17 == 1)
    {
      v18 = 0x73696C6863746177;
    }

    else
    {
      v18 = 0x736C6F626D7973;
    }

    if (v17 == 1)
    {
      v19 = 0xE900000000000074;
    }

    else
    {
      v19 = 0xE700000000000000;
    }
  }

  else
  {
    v18 = 0x7461576F54646461;

    v20 = sub_220886A4C();
    (*(*(v20 - 8) + 8))(v13, v20);
    v19 = 0xEE007473696C6863;
  }

  sub_22068D3D8(a2, v9);
  v21 = v16(v9, 2, v15);
  if (v21)
  {
    if (v21 != 1)
    {
      v4 = 0xE700000000000000;
      v5 = 0x736C6F626D7973;
    }

    if (v18 != v5)
    {
      goto LABEL_17;
    }
  }

  else
  {

    v22 = sub_220886A4C();
    (*(*(v22 - 8) + 8))(v9, v22);
    v4 = 0xEE007473696C6863;
    if (v18 != 0x7461576F54646461)
    {
LABEL_17:
      v23 = sub_2208928BC();
      goto LABEL_18;
    }
  }

  if (v19 != v4)
  {
    goto LABEL_17;
  }

  v23 = 1;
LABEL_18:

  return v23 & 1;
}

uint64_t sub_22068D3D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockSearchSectionDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_22068D43C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockSearchSectionDescriptor(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v22 - v10;
  sub_22068D3D8(a1, &v22 - v10);
  sub_220495338(0);
  v13 = v12;
  v14 = *(*(v12 - 8) + 48);
  v15 = v14(v11, 2, v12);
  if (v15)
  {
    v16 = v15 != 1;
  }

  else
  {

    v17 = sub_220886A4C();
    (*(*(v17 - 8) + 8))(v11, v17);
    v16 = 2;
  }

  sub_22068D3D8(a2, v7);
  v18 = v14(v7, 2, v13);
  if (v18)
  {
    v19 = v18 != 1;
  }

  else
  {

    v20 = sub_220886A4C();
    (*(*(v20 - 8) + 8))(v7, v20);
    v19 = 2;
  }

  return v16 < v19;
}

uint64_t sub_22068D610(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ManageWatchlistsContentMode(319);
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

double sub_22068D70C()
{
  (*(*(*v0 + 88) + 40))(v0 + *(*v0 + 152), *(*v0 + 80));
  sub_22059115C(0);
  sub_220690798(&qword_27CF58898, sub_22059115C, MEMORY[0x277D6D890]);
  sub_22088B6DC();

  return result;
}

uint64_t sub_22068D844(uint64_t a1, char a2, __n128 a3)
{
  v5 = sub_2208854AC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088BC8C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088CEFC();
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == *MEMORY[0x277D6DA60])
  {
    v16.n128_f64[0] = (*(v11 + 96))(v14, v10);
    sub_220690814(0, v16);
    (*(v6 + 32))(v9, &v14[*(v17 + 48)], v5);
    v18 = sub_22068DEB8(a1, v9);
    v19 = *(v6 + 8);
    v19(v9, v5, v18);
    return (v19)(v14, v5);
  }

  if (v15 == *MEMORY[0x277D6DA68])
  {
    (*(v11 + 8))(v14, v10);
    return sub_22088CF0C();
  }

  if (v15 == *MEMORY[0x277D6DA70])
  {
    return sub_22068DAC8(a1, a2 & 1);
  }

  if (v15 == *MEMORY[0x277D6DA78])
  {
    return sub_22088CF0C();
  }

  sub_22088CF0C();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_22068DAC8(uint64_t a1, int a2)
{
  v3 = v2;
  v34 = a2;
  v5 = *v3;
  v33 = v3;
  v32[1] = v5;
  sub_2204961E0(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ManageWatchlistsModel(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055DDDC(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v17);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_220886A4C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088CEEC();
  sub_22088AD8C();
  (*(v16 + 8))(v19, v15);
  sub_22071D07C(v9);
  sub_2206903FC(v13, type metadata accessor for ManageWatchlistsModel);
  if ((*(v21 + 48))(v9, 1, v20) == 1)
  {
    sub_2206903FC(v9, sub_2204961E0);
    return sub_22088CF0C();
  }

  else
  {
    v26 = (*(v21 + 32))(v24, v9, v20);
    if (v34)
    {
      MEMORY[0x28223BE20](v26, v27);
      v28 = v33;
      v32[-2] = v33;
      v32[-1] = v24;
      sub_220888FBC();
      v29 = swift_allocObject();
      *(v29 + 16) = a1;
      *(v29 + 24) = v28;

      v30 = sub_220888D9C();
      sub_220888E6C();
    }

    else if (swift_unknownObjectWeakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_220690534(v24, a1, Strong);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    return (*(v21 + 8))(v24, v20);
  }
}

double sub_22068DEB8(uint64_t a1, uint64_t a2)
{
  v84 = a2;
  v83 = *v2;
  sub_220690B14(0, &qword_27CF56C48, MEMORY[0x277D6EC60]);
  v81 = v4;
  v79 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v78 = &v67 - v6;
  sub_2206111C4(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v80 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204961E0(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v76 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v82 = &v67 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v67 - v18;
  v20 = type metadata accessor for ManageWatchlistsModel(0);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v75 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v67 - v25;
  sub_22055DDDC(0);
  v28 = v27;
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_220886A4C();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v35);
  v73 = &v67 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v38);
  v40 = &v67 - v39;
  sub_22088CEEC();
  sub_22088AD8C();
  v77 = v29;
  v74 = *(v29 + 8);
  v74(v32, v28);
  sub_22071D07C(v19);
  sub_2206903FC(v26, type metadata accessor for ManageWatchlistsModel);
  v41 = *(v34 + 48);
  if (v41(v19, 1, v33) == 1)
  {
    sub_2206903FC(v19, sub_2204961E0);
    sub_22088CF0C();
    return result;
  }

  v71 = v41;
  v72 = a1;
  v68 = *(v34 + 32);
  v68(v40, v19, v33);
  if (sub_22088548C())
  {
    v69 = v34;
    v70 = v40;
    sub_22088B6BC();
    v86 = v87;
    sub_220595CA8(0);
    sub_220690798(&qword_27CF56F30, sub_220595CA8, MEMORY[0x277D6D8C8]);
    v43 = v78;
    sub_22088BF9C();

    v44 = v80;
    v45 = v81;
    sub_22088E71C();
    (*(v79 + 8))(v43, v45);
    if ((*(v77 + 48))(v44, 1, v28) == 1)
    {
      sub_2206903FC(v44, sub_2206111C4);
      v46 = v69;
      v47 = v82;
      (*(v69 + 56))(v82, 1, 1, v33);
    }

    else
    {
      v50 = v75;
      sub_22088AD8C();
      v74(v44, v28);
      v47 = v82;
      sub_22071D07C(v82);
      sub_2206903FC(v50, type metadata accessor for ManageWatchlistsModel);
      v51 = v71(v47, 1, v33);
      v46 = v69;
      if (v51 != 1)
      {
        v52 = v73;
        v68(v73, v47, v33);
        v49 = v70;
        v53 = sub_2208869BC();
        v55 = v54;
        v56 = sub_2208869BC();
        v58 = v85;
        if (v53 == v56 && v55 == v57)
        {
        }

        else
        {
          v59 = sub_2208928BC();

          if ((v59 & 1) == 0)
          {
            __swift_project_boxed_opaque_existential_1((v58 + *(*v58 + 128)), *(v58 + *(*v58 + 128) + 24));
            v60 = v76;
            (*(v46 + 16))(v76, v52, v33);
            (*(v46 + 56))(v60, 0, 1, v33);
            sub_220885F9C();

            sub_2206903FC(v60, sub_2204961E0);
          }
        }

        (*(v46 + 8))(v52, v33);
        goto LABEL_15;
      }
    }

    sub_2206903FC(v47, sub_2204961E0);
    v49 = v70;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v85 + *(*v85 + 128)), *(v85 + *(*v85 + 128) + 24));
    v48 = v76;
    (*(v34 + 56))(v76, 1, 1, v33);
    sub_220885F9C();

    sub_2206903FC(v48, sub_2204961E0);
    v46 = v34;
    v49 = v40;
  }

LABEL_15:
  v61 = sub_22088548C();
  v63 = *(v83 + 80);
  v62 = *(v83 + 88);
  v64 = v72;
  v87 = (*(v62 + 64))(v49, v61, v72, v63, v62);
  v65 = swift_allocObject();
  swift_weakInit();
  v66 = swift_allocObject();
  v66[2] = v63;
  v66[3] = v62;
  v66[4] = v65;
  v66[5] = v64;
  sub_22059115C(0);
  sub_220690798(&qword_27CF58898, sub_22059115C, MEMORY[0x277D6D890]);

  sub_22088B6DC();

  (*(v46 + 8))(v49, v33);

  return result;
}

uint64_t sub_22068E808()
{
  v1 = v0;
  sub_2206907E0(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ManageWatchlistsContentMode(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088685C();
  v34 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v33 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204961E0(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ManageWatchlistsModel(0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_220886A4C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055DDDC(0);
  sub_22088AD8C();
  sub_22071D07C(v16);
  sub_2206903FC(v20, type metadata accessor for ManageWatchlistsModel);
  if ((*(v22 + 48))(v16, 1, v21) == 1)
  {
    return sub_2206903FC(v16, sub_2204961E0);
  }

  (*(v22 + 32))(v25, v16, v21);
  sub_220596A24(v0 + *(*v0 + 152), v9);
  sub_22057B2D0();
  if ((*(*(v27 - 8) + 48))(v9, 1, v27) == 1)
  {
    (*(v22 + 8))(v25, v21);
    return sub_2206903FC(v9, type metadata accessor for ManageWatchlistsContentMode);
  }

  else
  {
    v28 = v33;
    v29 = v34;
    (*(v34 + 32))(v33, v9, v10);
    v32[2] = *(v1 + *(*v1 + 136) + 8);
    v32[1] = swift_getObjectType();
    if (qword_281296FD8 != -1)
    {
      swift_once();
    }

    v32[0] = qword_2812B6C30;
    (*(v22 + 16))(v5, v25, v21);
    v30 = type metadata accessor for WatchlistMembershipCommandContext(0);
    v31 = *(v30 + 20);
    (*(v29 + 16))(&v5[v31], v28, v10);
    (*(v29 + 56))(&v5[v31], 0, 1, v10);
    (*(*(v30 - 8) + 56))(v5, 0, 1, v30);
    sub_22088B81C();
    sub_2206903FC(v5, sub_2206907E0);
    (*(v34 + 8))(v33, v10);
    return (*(v22 + 8))(v25, v21);
  }
}

double sub_22068ED38(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v28 = a2;
  v29 = a3;
  v30 = sub_22088BCAC();
  v5 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088BC8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055DDDC(0);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v19.n128_f64[0] = (*(v18 + 16))(&v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v16);
  sub_220690814(0, v19);
  v21 = *(v20 + 48);
  v22 = sub_2208854AC();
  v23 = *(*(v22 - 8) + 16);
  v23(v13, v28, v22);
  v24 = &v13[v21];
  v25 = v29;
  v23(v24, v29, v22);
  (*(v10 + 104))(v13, *MEMORY[0x277D6DA60], v9);
  (*(v5 + 104))(v8, *MEMORY[0x277D6DAA0], v30);
  sub_22069087C(0, &qword_27CF588B0, MEMORY[0x277D6E3E0]);
  swift_allocObject();
  v26 = sub_22088CEDC();
  sub_22068DEB8(v26, v25);

  return result;
}

uint64_t sub_22068F034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2204961E0(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ManageWatchlistsModel(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_220886A4C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055DDDC(0);
  sub_22088AD8C();
  sub_22071D07C(v9);
  sub_2206903FC(v13, type metadata accessor for ManageWatchlistsModel);
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    return sub_2206903FC(v9, sub_2204961E0);
  }

  v20 = (*(v15 + 32))(v18, v9, v14);
  MEMORY[0x28223BE20](v20, v21);
  *(&v24 - 4) = v3;
  *(&v24 - 3) = v18;
  *(&v24 - 2) = a2;
  *(&v24 - 1) = a3;
  sub_220888FBC();

  v22 = sub_220888D9C();
  sub_220888E6C();

  v23 = sub_220888D9C();
  sub_220888E9C();

  return (*(v15 + 8))(v18, v14);
}

void sub_22068F354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*a2 + 88);
  v4 = *(*a2 + 80);
  (*(v3 + 72))(a1, a2 + *(*a2 + 152), v4, v3);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v5;
  sub_22059115C(0);
  sub_220690798(&qword_27CF58898, sub_22059115C, MEMORY[0x277D6D890]);

  sub_22088B6DC();
}

double sub_22068F4EC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = sub_22088C6AC();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == *MEMORY[0x277D6DF98])
  {
    goto LABEL_2;
  }

  if (v10 != *MEMORY[0x277D6DF90])
  {
    if (v10 != *MEMORY[0x277D6DFA0])
    {
LABEL_2:
      (*(v5 + 8))(v9, v4);
      return result;
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      sub_220889B7C();
      sub_220690798(&qword_27CF588A0, MEMORY[0x277D68AC0], MEMORY[0x277D68AB8]);
      sub_22088730C();
    }
  }

  return result;
}

uint64_t sub_22068F6E4(void *a1, uint64_t a2)
{
  sub_220690500(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088583C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v28 - v14;
  v28[1] = a1;
  v16 = a1;
  sub_22058D5E8();
  v17 = swift_dynamicCast();
  v18 = *(v8 + 56);
  if ((v17 & 1) == 0)
  {
    v18(v6, 1, 1, v7);
    return sub_2206903FC(v6, sub_220690500);
  }

  v18(v6, 0, 1, v7);
  (*(v8 + 32))(v15, v6, v7);
  (*(v8 + 16))(v11, v15, v7);
  v19 = (*(v8 + 88))(v11, v7);
  if (v19 == *MEMORY[0x277D69320])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      v22 = 0;
LABEL_9:
      sub_22066CE28(v22, v21);
      swift_unknownObjectRelease();
      return (*(v8 + 8))(v15, v7);
    }

    return (*(v8 + 8))(v15, v7);
  }

  if (v19 == *MEMORY[0x277D69318])
  {
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v21 = v24;
      v22 = 1;
      goto LABEL_9;
    }

    return (*(v8 + 8))(v15, v7);
  }

  v25 = *MEMORY[0x277D69310];
  v26 = *(v8 + 8);
  v27 = v19;
  result = v26(v15, v7);
  if (v27 != v25)
  {
    return v26(v11, v7);
  }

  return result;
}

void sub_22068F9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*a2 + 88);
  v6 = *(*a2 + 80);
  (*(v5 + 48))(a3, v6, v5);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v5;
  v8[4] = v7;
  v8[5] = a3;
  sub_22059115C(0);
  sub_220690798(&qword_27CF58898, sub_22059115C, MEMORY[0x277D6D890]);

  sub_22088B6DC();
}

void sub_22068FB88(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, __n128), unint64_t *a8, uint64_t (*a9)(uint64_t), uint64_t a10)
{
  v14 = sub_22088C6AC();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v19, a1, v14, v17);
  v20 = (*(v15 + 88))(v19, v14);
  if (v20 == *MEMORY[0x277D6DF98])
  {
    (*(v15 + 8))(v19, v14);
    sub_22088CF0C();
  }

  else if (v20 != *MEMORY[0x277D6DF90])
  {
    if (v20 == *MEMORY[0x277D6DFA0])
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {

        (a7)(0);
        sub_220690798(a8, a9, a10);
        sub_22088730C();
      }
    }

    else
    {
      (*(v15 + 8))(v19, v14);
    }
  }
}

char *sub_22068FDAC()
{
  v1 = *v0;
  sub_22054B9F8((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 128)));
  swift_unknownObjectRelease();

  sub_2206903FC(v0 + *(*v0 + 152), type metadata accessor for ManageWatchlistsContentMode);
  return v0;
}

uint64_t sub_22068FED4()
{
  sub_22068FDAC();

  return swift_deallocClassInstance();
}

double sub_22068FF58(void *a1)
{
  v23 = *v1;
  v24 = a1;
  sub_22061121C(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220690B14(0, &qword_27CF56C48, MEMORY[0x277D6EC60]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v22 - v10;
  sub_22055DE74(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v15);
  v25 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v1 + 4);
  sub_22088B6BC();
  v26 = v27;
  sub_220595CA8(0);
  sub_220690798(&qword_27CF56F30, sub_220595CA8, MEMORY[0x277D6D8C8]);
  sub_22088BF9C();

  sub_22088E83C();
  (*(v8 + 8))(v11, v7);
  v17 = v14;
  if ((*(v14 + 48))(v5, 1, v13) == 1)
  {
    sub_2206903FC(v5, sub_22061121C);
  }

  else
  {
    v19 = *(v14 + 32);
    v20 = v25;
    v19(v25, v5, v13);
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    v21 = *(sub_220885FCC() + 16);

    sub_220690798(&qword_27CF56B40, sub_22055DE74, MEMORY[0x277D6D730]);
    sub_22089193C();
    sub_22089199C();
    if (v21 == sub_22089198C())
    {
      (*(v17 + 8))(v20, v13);
    }

    else
    {
      v27 = (*(*(v23 + 88) + 40))(&v1[*(*v1 + 152)], *(v23 + 80));
      sub_22059115C(0);
      sub_220690798(&qword_27CF58898, sub_22059115C, MEMORY[0x277D6D890]);
      sub_22088B6DC();
      (*(v17 + 8))(v20, v13);
    }
  }

  return result;
}

uint64_t sub_2206903FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22069045C()
{
  v1 = (*(v0 + 16) + *(**(v0 + 16) + 128));
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  return sub_220885F6C();
}

double sub_220690534(uint64_t a1, uint64_t a2, void *a3)
{
  sub_22047C41C(0, &qword_27CF588C8, MEMORY[0x277D698E0], MEMORY[0x277D84560]);
  v6 = sub_220886A4C();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_220899360;
  (*(v7 + 16))(v9 + v8, a1, v6);
  v10 = [a3 presentingViewController];
  if (!v10 || (v11 = v10, v12 = [v10 traitCollection], v11, !v12))
  {
    [a3 traitCollection];
  }

  sub_220690AB8();
  sub_22088E0CC();
  swift_allocObject();
  sub_22088E07C();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a2;

  sub_22088E0AC();

  sub_22088E08C();

  return result;
}

uint64_t sub_220690798(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_220690814(uint64_t a1, __n128 a2)
{
  if (!qword_27CF588A8)
  {
    sub_2208854AC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF588A8);
    }
  }
}

void sub_22069087C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ManageWatchlistsModel(255);
    v7 = sub_220690798(&qword_27CF59130, type metadata accessor for ManageWatchlistsModel, &unk_2208AEFB8);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_220690984()
{
  v1 = (*(v0 + 16) + *(**(v0 + 16) + 128));
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  return sub_220885F5C();
}

uint64_t objectdestroy_8Tm()
{

  return swift_deallocObject();
}

unint64_t sub_220690AB8()
{
  result = qword_27CF588D0;
  if (!qword_27CF588D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF588D0);
  }

  return result;
}

void sub_220690B14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for ManageWatchlistsSectionDescriptor;
    v8[1] = type metadata accessor for ManageWatchlistsModel(255);
    v8[2] = sub_22055DF30();
    v8[3] = sub_220690798(&qword_27CF59130, type metadata accessor for ManageWatchlistsModel, &unk_2208AEFB8);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t type metadata accessor for StockListRouteModel(uint64_t a1)
{
  result = qword_27CF588D8;
  if (!qword_27CF588D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220690C24(uint64_t a1)
{
  sub_22047C320(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

id static NSTimer.repeatingTimer(withTimeInterval:tolerance:block:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = objc_opt_self();
  v12[4] = a1;
  v12[5] = a2;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2205659F0;
  v12[3] = &block_descriptor_23;
  v9 = _Block_copy(v12);

  v10 = [v8 scheduledTimerWithTimeInterval:1 repeats:v9 block:a3];
  _Block_release(v9);
  [v10 setTolerance_];
  return v10;
}

uint64_t sub_220690D88@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v14 = sub_22088ABEC();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v19, *MEMORY[0x277D6D320], v14, v17);
  sub_22088ABDC();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  result = (*(v15 + 8))(v19, v14);
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = v21;
  *(a1 + 40) = v23;
  *(a1 + 48) = v25;
  *(a1 + 56) = v27;
  return result;
}

id sub_220690F14()
{
  type metadata accessor for UnitNumberFormatter();
  v0 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x277D698F0]) init];
  *(v0 + 16) = result;
  qword_27CF6D018 = v0;
  return result;
}

uint64_t StockType.shouldShowCurrencySymbol.getter()
{
  v1 = v0;
  v2 = sub_22088699C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, v1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277D69898] || v8 == *MEMORY[0x277D698A0] || v8 == *MEMORY[0x277D69870] || v8 == *MEMORY[0x277D69888] || v8 == *MEMORY[0x277D69878] || v8 == *MEMORY[0x277D69890])
  {
    return 1;
  }

  if (v8 != *MEMORY[0x277D69880])
  {
    if (v8 != *MEMORY[0x277D69868])
    {
      (*(v3 + 8))(v7, v2);
    }

    return 1;
  }

  return 0;
}

uint64_t sub_220691100(char a1)
{
  if ((*(v2 + 40) & 1) != 0 || (v4 = *(v2 + 32), fabs(v4) >= 9.22337204e18))
  {
    v7 = *(v2 + 64);
LABEL_9:

    return v7;
  }

  if ((~*(v2 + 32) & 0x7FF0000000000000) != 0)
  {
    if (v4 > -9.22337204e18)
    {
      v3 = v2;
      v1 = v4;
      if (qword_27CF55AE0 == -1)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_14:
  v9 = a1;
  swift_once();
  a1 = v9;
LABEL_6:
  v5 = sub_2207DC44C(v1, 0, a1 & 1);
  if (!v6)
  {
    v7 = *(v3 + 64);
    goto LABEL_9;
  }

  return v5;
}

uint64_t sub_2206911F8(void *a1)
{
  sub_220691E6C(0, &qword_27CF58910, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220691E18();
  sub_220892A5C();
  v10[15] = 0;
  sub_2208927DC();
  if (!v1)
  {
    v10[14] = 1;
    sub_2208927DC();
    v10[13] = 2;
    sub_2208927DC();
    v10[12] = 3;
    sub_2208927CC();
    v10[11] = 4;
    sub_22089280C();
    type metadata accessor for PriceViewModel(0);
    v10[10] = 5;
    sub_2208857EC();
    sub_220691ED0(&qword_27CF58918, MEMORY[0x277D692A8], MEMORY[0x277D692B0]);
    sub_22089283C();
    v10[9] = 6;
    sub_22088699C();
    sub_220691ED0(&qword_27CF58920, MEMORY[0x277D698A8], MEMORY[0x277D698B0]);
    sub_22089283C();
    v10[8] = 7;
    sub_2208852DC();
    sub_220691ED0(&qword_27CF58928, MEMORY[0x277CC9788], MEMORY[0x277CC9790]);
    sub_22089283C();
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_22069153C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v50 = sub_2208852DC();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v3);
  v49 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22088699C();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208857EC();
  v54 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220691E6C(0, &qword_27CF588E8, MEMORY[0x277D844C8]);
  v57 = v13;
  v53 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v46 - v15;
  v17 = type metadata accessor for PriceViewModel(0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_220691E18();
  v56 = v16;
  v22 = v58;
  sub_220892A4C();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(v59);
    return;
  }

  v23 = v12;
  v24 = v53;
  v25 = v54;
  v58 = v17;
  v26 = v55;
  v67 = 0;
  v27 = v20;
  *v20 = sub_22089274C();
  v20[8] = v28 & 1;
  v66 = 1;
  *(v20 + 2) = sub_22089274C();
  v20[24] = v29 & 1;
  v65 = 2;
  *(v20 + 4) = sub_22089274C();
  v20[40] = v30 & 1;
  v64 = 3;
  *(v20 + 6) = sub_22089273C();
  *(v20 + 7) = v31;
  v63 = 4;
  v32 = sub_22089277C();
  v46 = 0;
  *(v20 + 8) = v32;
  *(v20 + 9) = v33;
  v62 = 5;
  sub_220691ED0(&qword_27CF588F8, MEMORY[0x277D692A8], MEMORY[0x277D692C8]);
  v34 = v23;
  v35 = v46;
  v36 = v46;
  sub_22089279C();
  v47 = v36;
  if (v36)
  {
    (*(v24 + 8))(v56, v57);
    v37 = 0;
  }

  else
  {
    (*(v25 + 32))(&v27[v58[9]], v34, v9);
    v61 = 6;
    sub_220691ED0(&qword_27CF58900, MEMORY[0x277D698A8], MEMORY[0x277D698C8]);
    v38 = v27;
    v39 = v52;
    v40 = v47;
    sub_22089279C();
    v47 = v40;
    if (!v40)
    {
      (*(v51 + 32))(v38 + v58[10], v8, v39);
      v60 = 7;
      sub_220691ED0(&qword_27CF58908, MEMORY[0x277CC9788], MEMORY[0x277CC97A8]);
      v43 = v49;
      v44 = v50;
      v45 = v47;
      sub_22089279C();
      v47 = v45;
      if (!v45)
      {
        (*(v24 + 8))(v56, v57);
        (*(v48 + 32))(v38 + v58[11], v43, v44);
        sub_22050EF30(v38, v26);
        __swift_destroy_boxed_opaque_existential_1(v59);
        sub_2205F7908(v38);
        return;
      }

      (*(v24 + 8))(v56, v57);
      __swift_destroy_boxed_opaque_existential_1(v59);

      v42 = 1;
      v27 = v38;
      v41 = v58;
      goto LABEL_13;
    }

    (*(v24 + 8))(v56, v57);
    v37 = 1;
    v27 = v38;
    v35 = v46;
  }

  __swift_destroy_boxed_opaque_existential_1(v59);

  v41 = v58;
  if (v35)
  {
    if (!v37)
    {
      return;
    }
  }

  else
  {

    if ((v37 & 1) == 0)
    {
      return;
    }
  }

  v42 = 0;
LABEL_13:
  (*(v25 + 8))(&v27[v41[9]], v9);
  if (v42)
  {
    (*(v51 + 8))(&v27[v41[10]], v52);
  }
}

uint64_t sub_220691C18()
{
  v1 = *v0;
  v2 = 0x6563697270;
  v3 = 0x7079546B636F7473;
  if (v1 != 6)
  {
    v3 = 0x656C61636F6CLL;
  }

  v4 = 0x6B6361626C6C6166;
  if (v1 != 4)
  {
    v4 = 0x65676E6168637865;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000014;
  if (v1 != 2)
  {
    v5 = 0x79636E6572727563;
  }

  if (*v0)
  {
    v2 = 0x6168436563697270;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_220691D38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_220692170(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_220691D6C(uint64_t a1)
{
  v2 = sub_220691E18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_220691DA8(uint64_t a1)
{
  v2 = sub_220691E18();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_220691E18()
{
  result = qword_27CF588F0;
  if (!qword_27CF588F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF588F0);
  }

  return result;
}

void sub_220691E6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_220691E18();
    v7 = a3(a1, &type metadata for PriceViewModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_220691ED0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for PriceViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PriceViewModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22069206C()
{
  result = qword_27CF58930;
  if (!qword_27CF58930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58930);
  }

  return result;
}

unint64_t sub_2206920C4()
{
  result = qword_27CF58938;
  if (!qword_27CF58938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58938);
  }

  return result;
}

unint64_t sub_22069211C()
{
  result = qword_27CF58940;
  if (!qword_27CF58940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58940);
  }

  return result;
}

uint64_t sub_220692170(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6563697270 && a2 == 0xE500000000000000;
  if (v4 || (sub_2208928BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6168436563697270 && a2 == 0xEB0000000065676ELL || (sub_2208928BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002208CC0B0 == a2 || (sub_2208928BC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (sub_2208928BC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xEC00000074786554 || (sub_2208928BC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65676E6168637865 && a2 == 0xEE00737574617453 || (sub_2208928BC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7079546B636F7473 && a2 == 0xE900000000000065 || (sub_2208928BC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_2208928BC();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_220692420(void *a1)
{
  v2 = sub_220886F7C();
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088916C();
  v56 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v55 = &v45 - v12;
  v54 = sub_22088A02C();
  v13 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22088A01C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for WebViewSession(0) + 24)))
  {
    sub_22088729C();
    sub_22069341C(0, &unk_28127E158, MEMORY[0x277CEAE60]);
    v47 = v6;
    v22 = sub_2208871DC();
    v51 = v17;
    v23 = *(v22 - 8);
    v48 = v21;
    v24 = v23;
    v25 = *(v23 + 80);
    v46 = v9;
    v26 = (v25 + 32) & ~v25;
    v27 = swift_allocObject();
    v50 = v18;
    v49 = xmmword_220899360;
    *(v27 + 16) = xmmword_220899360;
    v28 = (v27 + v26);
    strcpy(v28, "widgetHeadline");
    v28[15] = -18;
    (*(v24 + 104))();
    LOBYTE(v26) = sub_220886F6C();

    (*(v52 + 8))(v5, v53);
    v29 = v56;
    v30 = MEMORY[0x277D682D8];
    if ((v26 & 1) == 0)
    {
      v30 = MEMORY[0x277D682F8];
    }

    v31 = v46;
    v32 = v47;
    (*(v56 + 104))(v46, *v30, v47);
    (*(v13 + 104))(v16, *MEMORY[0x277D68F28], v54);
    v33 = v31;
    (*(v29 + 16))(v55, v31, v32);

    v34 = v48;
    sub_22088A00C();
    sub_22069341C(0, &qword_28127E170, MEMORY[0x277CEAD20]);
    v35 = sub_220886F8C();
    v36 = *(v35 - 8);
    v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = v49;
    (*(v36 + 104))(v38 + v37, *MEMORY[0x277CEAD10], v35);
    sub_220693470(&unk_2812982B0, MEMORY[0x277D68F18], MEMORY[0x277D68F10]);
    v39 = v51;
    sub_2208872CC();

    (*(v50 + 8))(v34, v39);
    (*(v29 + 8))(v33, v32);
  }

  else
  {
    (*(v13 + 104))(v16, *MEMORY[0x277D68F28], v54);
    (*(v56 + 104))(v55, *MEMORY[0x277D682B8], v6);

    sub_22088A00C();
    sub_22069341C(0, &qword_28127E170, MEMORY[0x277CEAD20]);
    v40 = sub_220886F8C();
    v41 = *(v40 - 8);
    v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_220899360;
    (*(v41 + 104))(v43 + v42, *MEMORY[0x277CEAD10], v40);
    sub_220693470(&unk_2812982B0, MEMORY[0x277D68F18], MEMORY[0x277D68F10]);
    sub_2208872CC();

    (*(v18 + 8))(v21, v17);
  }

  sub_220889C8C();
  sub_220693470(&qword_27CF58968, MEMORY[0x277D68BC0], MEMORY[0x277D68BB8]);
  return sub_2208872EC();
}

uint64_t sub_220692BF4(uint64_t a1, void *a2, __n128 a3)
{
  v33 = a1;
  v4 = sub_22088944C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v30 - v11;
  v30 = sub_220886A4C();
  v13 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22088943C();
  v18 = *(v17 - 8);
  v31 = v17;
  v32 = v18;
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2 + 4, a2[7]);
  sub_2208863EC();
  v22 = sub_2208869AC();
  v23 = MEMORY[0x277D68560];
  if ((v22 & 1) == 0)
  {
    v23 = MEMORY[0x277D68558];
  }

  (*(v5 + 104))(v12, *v23, v4);
  (*(v5 + 16))(v8, v12, v4);
  sub_22088942C();
  (*(v5 + 8))(v12, v4);
  (*(v13 + 8))(v16, v30);
  sub_22069341C(0, &qword_28127E170, MEMORY[0x277CEAD20]);
  v24 = sub_220886F8C();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_220899360;
  (*(v25 + 104))(v27 + v26, *MEMORY[0x277CEAD18], v24);
  sub_220693470(&qword_2812984F0, MEMORY[0x277D68550], MEMORY[0x277D68548]);
  v28 = v31;
  sub_220886F1C();

  (*(v32 + 8))(v21, v28);
  sub_220889C8C();
  sub_220693470(&qword_27CF58968, MEMORY[0x277D68BC0], MEMORY[0x277D68BB8]);
  memset(v34, 0, sizeof(v34));
  sub_220886F3C();
  return sub_22056D130(v34);
}

uint64_t sub_22069304C()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_220693148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  (a4)(0, a2, a3);
  sub_220693470(a5, a6, a7);
  return sub_22088730C();
}

uint64_t sub_2206931C4(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = a3;
  v5 = sub_22088993C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088A07C();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v15, *MEMORY[0x277D68FB8], v10, v13);
  v16 = sub_22088721C();
  (*(v11 + 8))(v15, v10);
  *(v3 + 16) = v16;
  *(v3 + 24) = a2;
  v17 = v20;
  sub_22046DA2C(v20, v3 + 32);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_2206F6C58();
  sub_220693470(&qword_27CF58950, MEMORY[0x277D688C8], MEMORY[0x277D688C0]);
  sub_2208872CC();
  __swift_destroy_boxed_opaque_existential_1(v17);
  (*(v6 + 8))(v9, v5);
  return v3;
}

void sub_22069341C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089288C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_220693470(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2206934B8(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_22088B50C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220447638(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = v55 - v13;
  v15 = sub_22088CA0C();
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v19 + 104))(v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6E0F8], v17);
  v20 = v3[9];
  v58 = sub_22088731C();
  v59 = sub_22049368C();
  aBlock[0] = v20;

  [a1 frame];
  v61 = v21;
  v62 = v22;
  v63 = v23;
  v64 = v24;
  v65 = 0;
  sub_22088C4DC();
  swift_allocObject();
  v25 = a1;
  v26 = sub_22088C4BC();
  v27 = objc_opt_self();
  v28 = swift_allocObject();
  *(v28 + 16) = v3;
  *(v28 + 24) = v26;
  v59 = sub_2206942E4;
  v60 = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_220721020;
  v58 = &block_descriptor_24;
  v29 = _Block_copy(aBlock);

  v30 = [v27 elementWithUncachedProvider_];
  _Block_release(v29);
  if (a2)
  {
    sub_22044D56C(0, &qword_28127E560, 0x277D75710);
    sub_22048BC00();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_22089B130;
    *(v31 + 32) = v30;
    v32 = sub_220891F5C();
  }

  else
  {
    v56 = v7;
    __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
    v33 = *(sub_220885FCC() + 16);

    sub_22048BC00();
    v55[1] = v34;
    if (v33 == 1)
    {
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_22089B130;
      v36 = (v35 + 32);
      v37 = sub_22088685C();
      (*(*(v37 - 8) + 56))(v14, 1, 1, v37);
    }

    else
    {
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_22089B120;
      v39 = sub_22088685C();
      v40 = *(v39 - 8);
      v55[0] = v30;
      v41 = v10;
      v42 = v6;
      v43 = *(v40 + 56);
      v44.n128_f64[0] = v43(v14, 1, 1, v39);
      v45 = sub_2207E42DC(v44);
      sub_220576A0C(v14);
      *(v35 + 32) = v45;
      v36 = (v35 + 40);
      v43(v14, 1, 1, v39);
      v6 = v42;
      v10 = v41;
      v30 = v55[0];
    }

    v46 = sub_2207E3FA0(v14, 0, 0, v38);
    sub_220576A0C(v14);
    *v36 = v46;
    sub_22088AB2C();
    sub_220447638(0, &qword_28127E088, sub_22062DD90, MEMORY[0x277D84560]);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_220899360;
    (*(v56 + 104))(v10, *MEMORY[0x277D6D7B0], v6);
    sub_2205AF574(v35);

    v48 = sub_22088B4FC();
    swift_allocObject();
    v49 = sub_22088B4CC();
    v50 = MEMORY[0x277D6D798];
    *(v47 + 56) = v48;
    *(v47 + 64) = v50;
    *(v47 + 32) = v49;
    sub_22088AADC();
    v51 = sub_22088AA9C();
    sub_22044D56C(0, &qword_28127E560, 0x277D75710);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_22089B130;
    *(v52 + 32) = v30;
    aBlock[0] = v52;
    v53 = v30;
    sub_2205D29BC(v51);
    v32 = sub_220891F5C();
  }

  return v32;
}

double sub_220693B28(void (*a1)(void), uint64_t a2, void *a3, uint64_t a4, __n128 a5)
{
  v68 = a1;
  v72 = sub_22088BA1C();
  v8 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v9);
  v71 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206350A0();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220447638(0, &qword_27CF57EE8, sub_220635150, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v83 = v65 - v17;
  sub_2206942EC(0);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v82 = v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_220886A4C();
  v21 = *(v78 - 8);
  MEMORY[0x28223BE20](v78, v22);
  v81 = v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = v65 - v26;
  v28 = sub_22088B50C();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30);
  v32 = v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220447638(0, &qword_28127E088, sub_22062DD90, MEMORY[0x277D84560]);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_220899360;
  v33 = *MEMORY[0x277D6D7A8];
  v34 = *(v29 + 104);
  v67 = v32;
  v34(v32, v33, v28);
  v35 = a3[5];
  v79 = a3;
  __swift_project_boxed_opaque_existential_1(a3 + 2, v35);
  v36 = sub_220885FCC();
  v37 = *(v36 + 16);
  if (v37)
  {
    v77 = v14;
    v65[2] = a4;
    v65[3] = a2;
    v85 = MEMORY[0x277D84F90];
    sub_22070BEF4(0, v37, 0);
    v40 = *(v21 + 16);
    v39 = v21 + 16;
    v38 = v40;
    v41 = v8;
    v42 = v85;
    v43 = (*(v39 + 64) + 32) & ~*(v39 + 64);
    v65[1] = v36;
    v44 = v36 + v43;
    v74 = *(v39 + 56);
    v70 = *MEMORY[0x277D6D9B0];
    v69 = (v41 + 104);
    v73 = (v39 - 8);
    v45 = v78;
    v75 = v40;
    v76 = v39;
    do
    {
      v80 = v42;
      v46 = v27;
      v47 = v27;
      v48 = v38;
      v38(v46, v44, v45);
      __swift_project_boxed_opaque_existential_1(v79 + 2, v79[5]);
      v49 = *(sub_220885FCC() + 16);

      if (qword_281296FA0 != -1)
      {
        swift_once();
      }

      v48(v81, v47, v45);

      *&v84 = sub_22088E1FC();
      *(&v84 + 1) = v50;
      MEMORY[0x223D89680](14906, 0xE200000000000000);
      v51 = sub_2208869BC();
      MEMORY[0x223D89680](v51);

      *&v84 = sub_2208869DC();
      *(&v84 + 1) = v52;
      sub_22088CB5C();
      sub_220635150(0);
      (*(*(v53 - 8) + 56))(v83, 1, 1, v53);
      v27 = v47;
      if (v49 < 2)
      {
        (*v69)(v71, v70, v72);
        sub_22088BD8C();
      }

      else
      {
        sub_22088BD7C();
      }

      v42 = v80;
      v54 = sub_22088B17C();
      swift_allocObject();
      v55 = sub_22088B0AC();
      v45 = v78;
      (*v73)(v27, v78);
      v85 = v42;
      v57 = *(v42 + 16);
      v56 = *(v42 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_22070BEF4((v56 > 1), v57 + 1, 1);
        v42 = v85;
      }

      *(v42 + 16) = v57 + 1;
      v58 = v42 + 40 * v57;
      *(v58 + 32) = v55;
      *(v58 + 40) = v84;
      *(v58 + 56) = v54;
      *(v58 + 64) = MEMORY[0x277D6D630];
      v38 = v75;
      v44 += v74;
      --v37;
    }

    while (v37);
  }

  v59 = v68;
  sub_22088AB2C();
  v60 = sub_22088B4FC();
  swift_allocObject();
  v61 = sub_22088B4CC();
  v62 = MEMORY[0x277D6D798];
  v63 = v66;
  *(v66 + 56) = v60;
  *(v63 + 64) = v62;
  *(v63 + 32) = v61;
  sub_22088AADC();
  sub_22088AA9C();
  v59();

  return result;
}

uint64_t sub_22069429C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_2206942EC(uint64_t a1)
{
  if (!qword_27CF58970)
  {
    sub_220886A4C();
    v1 = sub_22088CB6C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF58970);
    }
  }
}

void sub_22069452C()
{
  sub_2206945B8(&qword_281291A70, &unk_2208A8E2C);

  JUMPOUT(0x223D86790);
}

uint64_t sub_2206945B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BrandingTitleView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for QuoteViewLayoutOptions(uint64_t a1)
{
  result = qword_28128CA18;
  if (!qword_28128CA18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_22069483C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28127FF78, &protocol descriptor for DateRangePickerLayoutAttributesFactoryType, 1);
  result = sub_2208884DC();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4, v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for DateRangePickerLayoutAttributesFactory();
    v19[3] = v10;
    v19[4] = &off_283424AC8;
    v19[0] = v9;
    v11 = type metadata accessor for StockChartViewLayoutAttributesFactory();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13, v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_283424AC8;
    v12[2] = v18;
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_28341F720;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_220694A88(void *a1)
{
  sub_22069A9B8(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v57 - v4;
  sub_22088852C();
  swift_allocObject();
  v6 = sub_22088851C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_22088685C();
  sub_2208884DC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22069A320(0);

  v9 = sub_2208884AC();

  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22069A6E0(0);

  v10 = sub_2208884AC();

  v65 = v10;
  if (!v10)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for StockChartInteractionHandler(0);
  v11 = sub_2208884CC();
  if (!v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281283298, &protocol descriptor for StockChartCalloutViewProviderType, 1);
  sub_2208884DC();
  if (!v79[3])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281280CC8, &protocol descriptor for StockChartRangeCalloutViewProviderType, 1);
  sub_2208884DC();
  if (!v78[3])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v64 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128EB28, &protocol descriptor for StockChartStylerType, 1);
  sub_2208884DC();
  if (!v77)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281288DA0, &protocol descriptor for StockChartEventHandlerType, 0);
  sub_2208884DC();
  if (!v74)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v62 = v6;
  v68 = v74;
  v13 = v75;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for DateRangePickerView();
  v14 = sub_2208884CC();
  if (!v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = v14;
  v60 = v13;
  v63 = v12;
  v66 = v8;
  v67 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for StockChartLoadingState();
  v61 = sub_2208884CC();
  if (!v61)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v16 = __swift_mutable_project_boxed_opaque_existential_1(v76, v77);
  v58 = &v57;
  v17 = MEMORY[0x28223BE20](v16, v16);
  v19 = (&v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v19;
  v22 = type metadata accessor for StockChartStyler();
  v72 = v22;
  v73 = &off_283413188;
  v71[0] = v21;
  v59 = type metadata accessor for StockChartViewController(0);
  v23 = objc_allocWithZone(v59);
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v71, v72);
  v57 = &v57;
  v25 = MEMORY[0x28223BE20](v24, v24);
  v27 = (&v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27, v25);
  v29 = *v27;
  v70[4] = &off_283413188;
  v70[3] = v22;
  v70[0] = v29;
  v30 = OBJC_IVAR____TtC8StocksUI24StockChartViewController_topDateRangePickerSeparator;
  v31 = objc_allocWithZone(MEMORY[0x277D75D18]);
  *&v23[v30] = [v31 initWithFrame_];
  v32 = OBJC_IVAR____TtC8StocksUI24StockChartViewController_activityIndicator;
  *&v23[v32] = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  *&v23[OBJC_IVAR____TtC8StocksUI24StockChartViewController_activeCallout] = 0xF000000000000007;
  *&v23[OBJC_IVAR____TtC8StocksUI24StockChartViewController_stateMachine] = 0;
  *&v23[OBJC_IVAR____TtC8StocksUI24StockChartViewController_errorView] = 0;
  (*(v66 + 16))(&v23[OBJC_IVAR____TtC8StocksUI24StockChartViewController_stock], v5, v67);
  v33 = v64;
  *&v23[OBJC_IVAR____TtC8StocksUI24StockChartViewController_lineChartViewController] = v64;
  v34 = v65;
  *&v23[OBJC_IVAR____TtC8StocksUI24StockChartViewController_columnChartViewController] = v65;
  sub_22046DA2C(v70, &v23[OBJC_IVAR____TtC8StocksUI24StockChartViewController_styler]);
  v35 = &v23[OBJC_IVAR____TtC8StocksUI24StockChartViewController_eventHandler];
  v36 = v60;
  *v35 = v68;
  *(v35 + 1) = v36;
  *&v23[OBJC_IVAR____TtC8StocksUI24StockChartViewController_dateRangePicker] = v15;
  v60 = v5;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v38 = objc_opt_self();
  v39 = v15;
  swift_unknownObjectRetain();
  v40 = v34;
  v41 = v33;
  v42 = [v38 bundleForClass_];
  sub_220884CAC();

  v43 = sub_22089132C();

  [v39 setAccessibilityLabel_];

  *&v23[OBJC_IVAR____TtC8StocksUI24StockChartViewController_loadingState] = v61;
  *&v23[OBJC_IVAR____TtC8StocksUI24StockChartViewController_interactionHandler] = v63;
  sub_22046DA2C(v79, &v23[OBJC_IVAR____TtC8StocksUI24StockChartViewController_calloutViewProvider]);
  sub_22046DA2C(v78, &v23[OBJC_IVAR____TtC8StocksUI24StockChartViewController_rangeCalloutViewProvider]);
  v44 = objc_allocWithZone(sub_22088AF1C());
  v45 = v39;

  *&v23[OBJC_IVAR____TtC8StocksUI24StockChartViewController_interactionDisplayView] = sub_22088AEEC();
  v69.receiver = v23;
  v69.super_class = v59;
  v46 = objc_msgSendSuper2(&v69, sel_initWithNibName_bundle_, 0, 0);
  v47 = objc_allocWithZone(MEMORY[0x277D34780]);
  v48 = v46;
  v49 = sub_22089132C();
  v50 = [v47 initWithName_];

  v51 = objc_allocWithZone(MEMORY[0x277D34770]);
  v52 = v48;
  v53 = [v51 initWithState:v50 withOwner:v52];

  v54 = *&v52[OBJC_IVAR____TtC8StocksUI24StockChartViewController_stateMachine];
  *&v52[OBJC_IVAR____TtC8StocksUI24StockChartViewController_stateMachine] = v53;

  if (v53)
  {
    v55 = v53;
    sub_2207FB628(v55);

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v78);
    __swift_destroy_boxed_opaque_existential_1(v79);
    (*(v66 + 8))(v60, v67);
    __swift_destroy_boxed_opaque_existential_1(v70);
    v56 = *&v52[OBJC_IVAR____TtC8StocksUI24StockChartViewController_eventHandler];
    swift_unknownObjectRetain();

    *(v56 + 24) = &off_283424268;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v71);
    __swift_destroy_boxed_opaque_existential_1(v76);
    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_220695518(void *a1, uint64_t *a2)
{
  v3 = *a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5[3] = v3;
  v5[4] = MEMORY[0x277D6CB10];
  v5[0] = a2;
  sub_220446A58(0, &unk_2812987E0, MEMORY[0x277D6CC30], 1);

  sub_22088835C();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

void *sub_220695604(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2208910CC();
  result = sub_2208884CC();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, qword_281288110, &protocol descriptor for StockChartCalloutStylerType, 1);
    result = sub_2208884DC();
    if (v20)
    {
      v4 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
      v5 = MEMORY[0x28223BE20](v4, v4);
      v7 = (v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7, v5);
      v9 = *v7;
      v10 = type metadata accessor for StockChartCalloutStyler();
      v18[3] = v10;
      v18[4] = &off_283424B60;
      v18[0] = v9;
      type metadata accessor for StockChartInteractionHandler(0);
      v11 = swift_allocObject();
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v10);
      v13 = MEMORY[0x28223BE20](v12, v12);
      v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15, v13);
      v17 = sub_220699EFC(v3, *v15, v11);
      __swift_destroy_boxed_opaque_existential_1(v18);
      __swift_destroy_boxed_opaque_existential_1(v19);
      return v17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_220695858(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22069A320(0);
  v2 = sub_2208884CC();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_2206958D8()
{
  type metadata accessor for StockChartLoadingState();
  v0 = swift_allocObject();
  sub_220663558();
  swift_allocObject();
  *(v0 + 16) = sub_220888AAC();
  return v0;
}

void *sub_220695940@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22069A9B8(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v15 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_22088685C();
  sub_2208884DC();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299310, MEMORY[0x277D69398], 0);
  result = sub_2208884DC();
  v11 = v18;
  if (!v18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v12 = v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_2812991E0, MEMORY[0x277D696B8], 1);
  result = sub_2208884DC();
  if (v17)
  {
    type metadata accessor for StockChartDataManager(0);
    v13 = swift_allocObject();
    (*(v9 + 32))(v13 + OBJC_IVAR____TtC8StocksUI21StockChartDataManager_stock, v7, v8);
    v14 = (v13 + OBJC_IVAR____TtC8StocksUI21StockChartDataManager_chartManager);
    *v14 = v11;
    v14[1] = v12;
    result = sub_220457328(&v16, v13 + OBJC_IVAR____TtC8StocksUI21StockChartDataManager_priceDataManager);
    *a2 = v13;
    a2[1] = &off_28341C138;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_220695B98(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StockChartInteractionHandler(0);
  if (sub_2208884CC())
  {
    sub_220456AC8(&qword_2812870A0, type metadata accessor for StockChartInteractionHandler, &unk_2208B06F8);
    sub_220890F1C();
  }

  else
  {
    __break(1u);
  }
}

double sub_220695C60()
{
  sub_220446A58(0, &qword_28128EB28, &protocol descriptor for StockChartStylerType, 1);
  sub_220888BEC();

  sub_220446A58(0, qword_28128EB30, &protocol descriptor for StockChartRouterType, 1);
  sub_220888BEC();
  type metadata accessor for StockChartRouter();
  sub_2208882BC();

  sub_220446A58(0, &qword_281288DA0, &protocol descriptor for StockChartEventHandlerType, 0);
  sub_220888BEC();

  sub_220446A58(0, qword_28128A180, &protocol descriptor for StockChartInteractorType, 0);
  sub_220888BEC();
  type metadata accessor for StockChartInteractor(0);
  sub_2208882BC();

  sub_220446A58(0, qword_281284D88, &protocol descriptor for StockChartDescriptorFactoryType, 1);
  sub_220888BEC();

  sub_220446A58(0, qword_2812827A0, &protocol descriptor for StockChartModelFactoryProviderType, 1);
  sub_220888BEC();

  sub_220446A58(0, &qword_28127FF78, &protocol descriptor for DateRangePickerLayoutAttributesFactoryType, 1);
  sub_220888BEC();

  type metadata accessor for DateRangePickerView();
  sub_220888BDC();

  sub_220446A58(0, qword_281289B70, &protocol descriptor for DateRangePickerStylerType, 1);
  sub_220888BEC();

  sub_220446A58(0, qword_281283298, &protocol descriptor for StockChartCalloutViewProviderType, 1);
  sub_220888BEC();

  sub_220446A58(0, &qword_2812861F8, &protocol descriptor for StockChartCalloutRendererType, 1);
  sub_220888BEC();

  sub_220446A58(0, qword_281283358, &protocol descriptor for StockChartCalloutSizeProviderType, 1);
  sub_220888BEC();

  sub_220446A58(0, &qword_28127FBC8, &protocol descriptor for StockChartCalloutLayoutAttributesFactoryType, 1);
  sub_220888BEC();

  type metadata accessor for StockChartCalloutLayoutAttributesFactory();
  sub_220888BDC();

  sub_220446A58(0, qword_281280CC8, &protocol descriptor for StockChartRangeCalloutViewProviderType, 1);
  sub_220888BEC();

  sub_220446A58(0, &qword_281282798, &protocol descriptor for StockChartRangeCalloutRendererType, 1);
  sub_220888BEC();

  sub_220446A58(0, &qword_28127F2C8, &protocol descriptor for StockChartRangeCalloutLayoutAttributesFactoryType, 1);
  sub_220888BEC();

  sub_220446A58(0, qword_281288110, &protocol descriptor for StockChartCalloutStylerType, 1);
  sub_220888BEC();

  sub_220446A58(0, &qword_2812895F8, &protocol descriptor for StockChartGridFactoryType, 1);
  sub_220888BEC();

  sub_220446A58(0, &qword_281281E88, &protocol descriptor for StockChartLabelFormatterFactoryType, 1);
  sub_220888BEC();

  sub_220446A58(0, &qword_281288DA8, &protocol descriptor for StockChartDateAnalyzerType, 1);
  sub_220888BEC();

  sub_220446A58(0, qword_281281410, &protocol descriptor for StockChartCalloutViewModelFactoryType, 1);
  sub_220888BEC();

  sub_22069A1B8(0);
  sub_220888BDC();

  return result;
}

void *sub_22069633C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338, &protocol descriptor for BaseStylerType, 1);
  result = sub_2208884DC();
  if (v27)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, qword_281289B70, &protocol descriptor for DateRangePickerStylerType, 1);
    result = sub_2208884DC();
    if (v25)
    {
      v5 = type metadata accessor for StockChartStyler();
      v22 = sub_2208852DC();
      v23 = sub_220456AC8(&qword_281299430, MEMORY[0x277CC9788], MEMORY[0x277D6D200]);
      __swift_allocate_boxed_opaque_existential_1(&v21);
      sub_22088528C();
      v7 = v27;
      v6 = v28;
      v8 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
      v9 = MEMORY[0x28223BE20](v8, v8);
      v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v11, v9);
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
      v14 = MEMORY[0x28223BE20](v13, v13);
      v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v16, v14);
      v18 = type metadata accessor for DateRangePickerStyler();
      v19 = sub_220582ACC(&v21, v11, v16, v5, v7, v18, v6, &off_283412460);
      __swift_destroy_boxed_opaque_existential_1(v24);
      result = __swift_destroy_boxed_opaque_existential_1(v26);
      a2[3] = v5;
      a2[4] = &off_283413188;
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

uint64_t sub_220696618@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for StockChartRouter();
  v3 = swift_allocObject();
  result = swift_unknownObjectWeakInit();
  a1[3] = v2;
  a1[4] = &off_283427CD8;
  *a1 = v3;
  return result;
}

void sub_220696678(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StockChartViewController(0);
  v2 = sub_2208884CC();
  swift_unknownObjectWeakAssign();
}

void *sub_2206966F8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128A180, &protocol descriptor for StockChartInteractorType, 0);
  result = sub_2208884DC();
  v5 = v28;
  if (v28)
  {
    v6 = v29;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, qword_28128EB30, &protocol descriptor for StockChartRouterType, 1);
    result = sub_2208884DC();
    if (v27)
    {
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
      v8 = MEMORY[0x28223BE20](v7, v7);
      v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v11 + 16))(v10, v8);
      v12 = *v10;
      v13 = type metadata accessor for StockChartRouter();
      v25[3] = v13;
      v25[4] = &off_283427CD8;
      v25[0] = v12;
      type metadata accessor for StockChartEventHandler();
      v14 = swift_allocObject();
      v15 = __swift_mutable_project_boxed_opaque_existential_1(v25, v13);
      v16 = MEMORY[0x28223BE20](v15, v15);
      v18 = (&v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v20 = *v18;
      v23 = v13;
      v24 = &off_283427CD8;
      *&v22 = v20;
      v14[3] = 0;
      swift_unknownObjectWeakInit();
      v14[4] = v5;
      v14[5] = v6;
      sub_220457328(&v22, (v14 + 6));
      *(v5 + 24) = &off_28341A100;
      swift_unknownObjectWeakAssign();
      __swift_destroy_boxed_opaque_existential_1(v25);
      result = __swift_destroy_boxed_opaque_existential_1(v26);
      *a2 = v14;
      a2[1] = &off_28341A148;
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

void *sub_2206969B4@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281289600, &protocol descriptor for StockChartDataManagerType, 0);
  result = sub_2208884DC();
  if (!v81)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281284D88, &protocol descriptor for StockChartDescriptorFactoryType, 1);
  result = sub_2208884DC();
  if (!v80)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_2812827A0, &protocol descriptor for StockChartModelFactoryProviderType, 1);
  result = sub_2208884DC();
  if (!v78)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281281410, &protocol descriptor for StockChartCalloutViewModelFactoryType, 1);
  result = sub_2208884DC();
  if (!v76)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for StockChartInteractionHandler(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22069A1B8(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v58 = result;
  v59 = v82;
  v60 = v5;
  v61 = v81;
  v62 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299308, MEMORY[0x277D693B0], 1);
  result = sub_2208884DC();
  if (v74)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v79, v80);
    v57[5] = v57;
    v8 = MEMORY[0x28223BE20](v7, v7);
    v10 = (v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v77, v78);
    v57[4] = v57;
    v13 = MEMORY[0x28223BE20](v12, v12);
    v15 = (v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
    v57[3] = v57;
    v18 = MEMORY[0x28223BE20](v17, v17);
    v20 = (v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20, v18);
    v22 = *v10;
    v23 = *v15;
    v24 = *v20;
    v25 = type metadata accessor for StockChartDescriptorFactory(0);
    v72[3] = v25;
    v72[4] = &off_28341FA80;
    v72[0] = v22;
    v26 = type metadata accessor for StockChartModelFactoryProvider();
    v70 = v26;
    v71 = &off_28341B028;
    v69[0] = v23;
    v27 = type metadata accessor for StockChartCalloutViewModelFactory(0);
    v67 = v27;
    v68 = &off_28341F700;
    v66[0] = v24;
    type metadata accessor for StockChartInteractor(0);
    v28 = swift_allocObject();
    v29 = __swift_mutable_project_boxed_opaque_existential_1(v72, v25);
    v57[2] = v57;
    v30 = MEMORY[0x28223BE20](v29, v29);
    v32 = (v57 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v33 + 16))(v32, v30);
    v34 = __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
    v57[1] = v57;
    v35 = MEMORY[0x28223BE20](v34, v34);
    v37 = (v57 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v38 + 16))(v37, v35);
    v39 = __swift_mutable_project_boxed_opaque_existential_1(v66, v67);
    v57[0] = v57;
    v40 = MEMORY[0x28223BE20](v39, v39);
    v42 = (v57 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v43 + 16))(v42, v40);
    v44 = *v32;
    v45 = *v37;
    v46 = *v42;
    v65[3] = v25;
    v65[4] = &off_28341FA80;
    v65[0] = v44;
    v64[3] = v26;
    v64[4] = &off_28341B028;
    v64[0] = v45;
    v63[3] = v27;
    v63[4] = &off_28341F700;
    v63[0] = v46;
    *(v28 + 3) = 0;
    swift_unknownObjectWeakInit();
    *(v28 + 24) = 0;
    *(v28 + 25) = 0;
    v47 = OBJC_IVAR____TtC8StocksUI20StockChartInteractor_activeChartRange;
    v48 = sub_2208854FC();
    (*(*(v48 - 8) + 56))(&v28[v47], 1, 1, v48);
    v49 = OBJC_IVAR____TtC8StocksUI20StockChartInteractor_lastKnownQoute;
    v50 = sub_22088676C();
    (*(*(v50 - 8) + 56))(&v28[v49], 1, 1, v50);
    v28[OBJC_IVAR____TtC8StocksUI20StockChartInteractor_needRefresh] = 0;
    v51 = v60;
    v52 = v59;
    *(v28 + 4) = v61;
    *(v28 + 5) = v52;
    *(v28 + 6) = v51;
    sub_22046DA2C(v65, (v28 + 56));
    sub_22046DA2C(v64, (v28 + 96));
    sub_22046DA2C(v63, (v28 + 136));
    v53 = v58;
    *(v28 + 22) = v6;
    *(v28 + 23) = v53;
    __swift_project_boxed_opaque_existential_1(v73, v74);
    sub_220456AC8(&qword_28128EC58, type metadata accessor for StockChartInteractor, &unk_220899EA0);
    swift_unknownObjectRetain();

    v54 = v53;

    sub_220885B5C();

    v6[13] = &off_283412490;
    swift_unknownObjectWeakAssign();
    swift_allocObject();
    swift_weakInit();
    v55 = sub_2208903CC();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v63);
    __swift_destroy_boxed_opaque_existential_1(v64);
    __swift_destroy_boxed_opaque_existential_1(v65);
    __swift_destroy_boxed_opaque_existential_1(v73);
    __swift_destroy_boxed_opaque_existential_1(v66);
    __swift_destroy_boxed_opaque_existential_1(v69);
    __swift_destroy_boxed_opaque_existential_1(v72);
    __swift_destroy_boxed_opaque_existential_1(v75);
    __swift_destroy_boxed_opaque_existential_1(v77);
    result = __swift_destroy_boxed_opaque_existential_1(v79);
    v56 = v62;
    *v62 = v28;
    v56[1] = &off_2834124B0;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_220697344(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220446A58(0, &qword_281298738, MEMORY[0x277D6CD90], 1);
  result = sub_2208884DC();
  if (v4)
  {
    sub_220457328(&v3, v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_220456AC8(&qword_28128EC40, type metadata accessor for StockChartInteractor, &unk_220899EC8);
    sub_220888BFC();
    __swift_destroy_boxed_opaque_existential_1(&v3);
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_220697440@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_22069A9B8(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v28[-1] - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281289CE8, &protocol descriptor for ChartCategoryProviderType, 1);
  result = sub_2208884DC();
  if (!v32)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281288DA8, &protocol descriptor for StockChartDateAnalyzerType, 1);
  result = sub_2208884DC();
  if (!v30)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v27 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_22088685C();
  sub_2208884DC();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v7, 1, v9);
  if (result != 1)
  {
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
    v12 = MEMORY[0x28223BE20](v11, v11);
    v14 = (&v28[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14, v12);
    v16 = *v14;
    v17 = type metadata accessor for StockChartDateAnalyzer();
    v28[3] = v17;
    v28[4] = &off_2834284C0;
    v28[0] = v16;
    v18 = type metadata accessor for StockChartDescriptorFactory(0);
    v19 = swift_allocObject();
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v28, v17);
    v21 = MEMORY[0x28223BE20](v20, v20);
    v23 = (&v28[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23, v21);
    v25 = *v23;
    v19[10] = v17;
    v19[11] = &off_2834284C0;
    v19[7] = v25;
    sub_220457328(&v31, (v19 + 2));
    (*(v10 + 32))(v19 + OBJC_IVAR____TtC8StocksUI27StockChartDescriptorFactory_stock, v7, v9);
    __swift_destroy_boxed_opaque_existential_1(v28);
    result = __swift_destroy_boxed_opaque_existential_1(v29);
    v26 = v27;
    v27[3] = v18;
    v26[4] = &off_28341FA80;
    *v26 = v19;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_220697800@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128EB28, &protocol descriptor for StockChartStylerType, 1);
  result = sub_2208884DC();
  if (v41)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_2812895F8, &protocol descriptor for StockChartGridFactoryType, 1);
    result = sub_2208884DC();
    if (v39)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
      v33[2] = v33;
      v6 = MEMORY[0x28223BE20](v5, v5);
      v8 = (v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
      v33[1] = v33;
      v11 = MEMORY[0x28223BE20](v10, v10);
      v13 = (v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13, v11);
      v15 = *v8;
      v16 = *v13;
      v17 = type metadata accessor for StockChartStyler();
      v37[3] = v17;
      v37[4] = &off_283413188;
      v37[0] = v15;
      v18 = type metadata accessor for StockChartGridFactory();
      v35 = v18;
      v36 = &off_283414848;
      v34[0] = v16;
      v19 = type metadata accessor for StockChartModelFactoryProvider();
      v20 = swift_allocObject();
      v21 = __swift_mutable_project_boxed_opaque_existential_1(v37, v17);
      v22 = MEMORY[0x28223BE20](v21, v21);
      v24 = (v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v25 + 16))(v24, v22);
      v26 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      v27 = MEMORY[0x28223BE20](v26, v26);
      v29 = (v33 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v30 + 16))(v29, v27);
      v31 = *v24;
      v32 = *v29;
      v20[5] = v17;
      v20[6] = &off_283413188;
      v20[2] = v31;
      v20[10] = v18;
      v20[11] = &off_283414848;
      v20[7] = v32;
      __swift_destroy_boxed_opaque_existential_1(v34);
      __swift_destroy_boxed_opaque_existential_1(v37);
      __swift_destroy_boxed_opaque_existential_1(v38);
      result = __swift_destroy_boxed_opaque_existential_1(v40);
      a2[3] = v19;
      a2[4] = &off_28341B028;
      *a2 = v20;
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

void *sub_220697C38@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281289B70, &protocol descriptor for DateRangePickerStylerType, 1);
  result = sub_2208884DC();
  if (v41)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, qword_281283358, &protocol descriptor for StockChartCalloutSizeProviderType, 1);
    result = sub_2208884DC();
    if (v39)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
      v33[2] = v33;
      v6 = MEMORY[0x28223BE20](v5, v5);
      v8 = (v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
      v33[1] = v33;
      v11 = MEMORY[0x28223BE20](v10, v10);
      v13 = (v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13, v11);
      v15 = *v8;
      v16 = *v13;
      v17 = type metadata accessor for DateRangePickerStyler();
      v37[3] = v17;
      v37[4] = &off_283412460;
      v37[0] = v15;
      v18 = type metadata accessor for StockChartCalloutLayoutAttributesFactory();
      v35 = v18;
      v36 = &off_28341EFD0;
      v34[0] = v16;
      v19 = type metadata accessor for DateRangePickerLayoutAttributesFactory();
      v20 = swift_allocObject();
      v21 = __swift_mutable_project_boxed_opaque_existential_1(v37, v17);
      v22 = MEMORY[0x28223BE20](v21, v21);
      v24 = (v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v25 + 16))(v24, v22);
      v26 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      v27 = MEMORY[0x28223BE20](v26, v26);
      v29 = (v33 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v30 + 16))(v29, v27);
      v31 = *v24;
      v32 = *v29;
      v20[5] = v17;
      v20[6] = &off_283412460;
      v20[2] = v31;
      v20[10] = v18;
      v20[11] = &off_28341EFD0;
      v20[7] = v32;
      __swift_destroy_boxed_opaque_existential_1(v34);
      __swift_destroy_boxed_opaque_existential_1(v37);
      __swift_destroy_boxed_opaque_existential_1(v38);
      result = __swift_destroy_boxed_opaque_existential_1(v40);
      a2[3] = v19;
      a2[4] = &off_283424AC8;
      *a2 = v20;
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

char *sub_220698070(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281289B70, &protocol descriptor for DateRangePickerStylerType, 1);
  result = sub_2208884DC();
  if (v19)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    v3 = MEMORY[0x28223BE20](v2, v2);
    v5 = (v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5, v3);
    v7 = *v5;
    v16 = type metadata accessor for DateRangePickerStyler();
    v17 = &off_283412460;
    v15[0] = v7;
    v8 = objc_allocWithZone(type metadata accessor for DateRangePickerView());
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    v10 = MEMORY[0x28223BE20](v9, v9);
    v12 = (v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12, v10);
    v14 = sub_22069A010(*v12, v8);
    __swift_destroy_boxed_opaque_existential_1(v15);
    __swift_destroy_boxed_opaque_existential_1(v18);
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_22069827C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338, &protocol descriptor for BaseStylerType, 1);
  result = sub_2208884DC();
  v4 = v15;
  if (v15)
  {
    v5 = type metadata accessor for DateRangePickerStyler();
    v6 = v16;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
    v8 = MEMORY[0x28223BE20](v7, v7);
    v10 = &v14[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v10, v8);
    v12 = sub_220476DF0(v10, v5, v4, v6);
    result = __swift_destroy_boxed_opaque_existential_1(v14);
    a2[3] = v5;
    a2[4] = &off_283412460;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2206983DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812861F8, &protocol descriptor for StockChartCalloutRendererType, 1);
  result = sub_2208884DC();
  if (v41)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_28127FBC8, &protocol descriptor for StockChartCalloutLayoutAttributesFactoryType, 1);
    result = sub_2208884DC();
    if (v39)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
      v33[2] = v33;
      v6 = MEMORY[0x28223BE20](v5, v5);
      v8 = (v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
      v33[1] = v33;
      v11 = MEMORY[0x28223BE20](v10, v10);
      v13 = (v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13, v11);
      v15 = *v8;
      v16 = *v13;
      v17 = type metadata accessor for StockChartCalloutRenderer();
      v37[3] = v17;
      v37[4] = &off_283426FA8;
      v37[0] = v15;
      v18 = type metadata accessor for StockChartCalloutLayoutAttributesFactory();
      v35 = v18;
      v36 = &off_28341EFE0;
      v34[0] = v16;
      v19 = type metadata accessor for StockChartCalloutViewProvider();
      v20 = swift_allocObject();
      v21 = __swift_mutable_project_boxed_opaque_existential_1(v37, v17);
      v22 = MEMORY[0x28223BE20](v21, v21);
      v24 = (v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v25 + 16))(v24, v22);
      v26 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      v27 = MEMORY[0x28223BE20](v26, v26);
      v29 = (v33 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v30 + 16))(v29, v27);
      v31 = *v24;
      v32 = *v29;
      v20[10] = v17;
      v20[11] = &off_283426FA8;
      v20[7] = v31;
      v20[5] = v18;
      v20[6] = &off_28341EFE0;
      v20[2] = v32;
      __swift_destroy_boxed_opaque_existential_1(v34);
      __swift_destroy_boxed_opaque_existential_1(v37);
      __swift_destroy_boxed_opaque_existential_1(v38);
      result = __swift_destroy_boxed_opaque_existential_1(v40);
      a2[3] = v19;
      a2[4] = &off_2834271E0;
      *a2 = v20;
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

uint64_t sub_22069884C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = type metadata accessor for StockChartCalloutLayoutAttributesFactory();
  result = sub_2208884CC();
  if (result)
  {
    a3[3] = v5;
    a3[4] = a2;
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2206988BC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2208910CC();
  result = sub_2208884CC();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, qword_281288110, &protocol descriptor for StockChartCalloutStylerType, 1);
    result = sub_2208884DC();
    if (v21)
    {
      v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      v5 = MEMORY[0x28223BE20](v4, v4);
      v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7, v5);
      v9 = *v7;
      v10 = type metadata accessor for StockChartCalloutStyler();
      v19[3] = v10;
      v19[4] = &off_283424B60;
      v19[0] = v9;
      type metadata accessor for StockChartCalloutLayoutAttributesFactory();
      v11 = swift_allocObject();
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
      v13 = MEMORY[0x28223BE20](v12, v12);
      v15 = (v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15, v13);
      v17 = *v15;
      v11[6] = v10;
      v11[7] = &off_283424B60;
      v11[3] = v17;
      v11[8] = sub_2205CF208(MEMORY[0x277D84F90]);
      type metadata accessor for PriceFormatter(0);
      v18 = swift_allocObject();
      sub_22088524C();
      v11[9] = v18;
      v11[2] = v3;
      __swift_destroy_boxed_opaque_existential_1(v19);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_220698B54@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281282798, &protocol descriptor for StockChartRangeCalloutRendererType, 1);
  result = sub_2208884DC();
  if (v41)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_28127F2C8, &protocol descriptor for StockChartRangeCalloutLayoutAttributesFactoryType, 1);
    result = sub_2208884DC();
    if (v39)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
      v33[2] = v33;
      v6 = MEMORY[0x28223BE20](v5, v5);
      v8 = (v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
      v33[1] = v33;
      v11 = MEMORY[0x28223BE20](v10, v10);
      v13 = (v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13, v11);
      v15 = *v8;
      v16 = *v13;
      v17 = type metadata accessor for StockChartRangeCalloutRenderer();
      v37[3] = v17;
      v37[4] = &off_28341DD40;
      v37[0] = v15;
      v18 = type metadata accessor for StockChartRangeCalloutLayoutAttributesFactory();
      v35 = v18;
      v36 = &off_28341D0A8;
      v34[0] = v16;
      v19 = type metadata accessor for StockChartRangeCalloutViewProvider();
      v20 = swift_allocObject();
      v21 = __swift_mutable_project_boxed_opaque_existential_1(v37, v17);
      v22 = MEMORY[0x28223BE20](v21, v21);
      v24 = (v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v25 + 16))(v24, v22);
      v26 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      v27 = MEMORY[0x28223BE20](v26, v26);
      v29 = (v33 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v30 + 16))(v29, v27);
      v31 = *v24;
      v32 = *v29;
      v20[10] = v17;
      v20[11] = &off_28341DD40;
      v20[7] = v31;
      v20[5] = v18;
      v20[6] = &off_28341D0A8;
      v20[2] = v32;
      __swift_destroy_boxed_opaque_existential_1(v34);
      __swift_destroy_boxed_opaque_existential_1(v37);
      __swift_destroy_boxed_opaque_existential_1(v38);
      result = __swift_destroy_boxed_opaque_existential_1(v40);
      a2[3] = v19;
      a2[4] = &off_283415DB8;
      *a2 = v20;
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

uint64_t sub_220698FAC@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

void *sub_220698FFC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2208910CC();
  result = sub_2208884CC();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, qword_281288110, &protocol descriptor for StockChartCalloutStylerType, 1);
    result = sub_2208884DC();
    if (v23)
    {
      v6 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      v7 = MEMORY[0x28223BE20](v6, v6);
      v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9, v7);
      v11 = *v9;
      v12 = type metadata accessor for StockChartCalloutStyler();
      v21[3] = v12;
      v21[4] = &off_283424B60;
      v21[0] = v11;
      v13 = type metadata accessor for StockChartRangeCalloutLayoutAttributesFactory();
      v14 = swift_allocObject();
      v15 = __swift_mutable_project_boxed_opaque_existential_1(v21, v12);
      v16 = MEMORY[0x28223BE20](v15, v15);
      v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v20 = *v18;
      v14[6] = v12;
      v14[7] = &off_283424B60;
      v14[3] = v20;
      v14[8] = sub_2205CF208(MEMORY[0x277D84F90]);
      v14[2] = v5;
      __swift_destroy_boxed_opaque_existential_1(v21);
      result = __swift_destroy_boxed_opaque_existential_1(v22);
      a2[3] = v13;
      a2[4] = &off_28341D0A8;
      *a2 = v14;
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

void *sub_220699280@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338, &protocol descriptor for BaseStylerType, 1);
  result = sub_2208884DC();
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_28128EB28, &protocol descriptor for StockChartStylerType, 1);
    result = sub_2208884DC();
    if (v21)
    {
      v5 = type metadata accessor for StockChartCalloutStyler();
      v7 = v23;
      v6 = v24;
      v8 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      v9 = MEMORY[0x28223BE20](v8, v8);
      v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v11, v9);
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      v14 = MEMORY[0x28223BE20](v13, v13);
      v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v16, v14);
      v18 = type metadata accessor for StockChartStyler();
      v19 = sub_220814958(v11, v16, v5, v7, v18, v6, &off_283413188);
      __swift_destroy_boxed_opaque_existential_1(v20);
      result = __swift_destroy_boxed_opaque_existential_1(v22);
      a2[3] = v5;
      a2[4] = &off_283424B60;
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

void *sub_220699504@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128EB28, &protocol descriptor for StockChartStylerType, 1);
  result = sub_2208884DC();
  if (v41)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281281E88, &protocol descriptor for StockChartLabelFormatterFactoryType, 1);
    result = sub_2208884DC();
    if (v39)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
      v33[2] = v33;
      v6 = MEMORY[0x28223BE20](v5, v5);
      v8 = (v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
      v33[1] = v33;
      v11 = MEMORY[0x28223BE20](v10, v10);
      v13 = (v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13, v11);
      v15 = *v8;
      v16 = *v13;
      v17 = type metadata accessor for StockChartStyler();
      v37[3] = v17;
      v37[4] = &off_283413188;
      v37[0] = v15;
      v18 = type metadata accessor for StockChartLabelFormatterFactory();
      v35 = v18;
      v36 = &off_283416398;
      v34[0] = v16;
      v19 = type metadata accessor for StockChartGridFactory();
      v20 = swift_allocObject();
      v21 = __swift_mutable_project_boxed_opaque_existential_1(v37, v17);
      v22 = MEMORY[0x28223BE20](v21, v21);
      v24 = (v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v25 + 16))(v24, v22);
      v26 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      v27 = MEMORY[0x28223BE20](v26, v26);
      v29 = (v33 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v30 + 16))(v29, v27);
      v31 = *v24;
      v32 = *v29;
      v20[5] = v17;
      v20[6] = &off_283413188;
      v20[2] = v31;
      v20[10] = v18;
      v20[11] = &off_283416398;
      v20[7] = v32;
      __swift_destroy_boxed_opaque_existential_1(v34);
      __swift_destroy_boxed_opaque_existential_1(v37);
      __swift_destroy_boxed_opaque_existential_1(v38);
      result = __swift_destroy_boxed_opaque_existential_1(v40);
      a2[3] = v19;
      a2[4] = &off_283414848;
      *a2 = v20;
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

void *sub_22069993C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128EB28, &protocol descriptor for StockChartStylerType, 1);
  result = sub_2208884DC();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4, v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for StockChartStyler();
    v19[3] = v10;
    v19[4] = &off_283413188;
    v19[0] = v9;
    v11 = type metadata accessor for StockChartLabelFormatterFactory();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13, v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_283413188;
    v12[2] = v18;
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_283416398;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220699B68@<X0>(uint64_t *a1@<X8>)
{
  sub_22069A9B8(0, &unk_2812993E0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v17 - v4;
  v6 = sub_2208853CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StockChartDateAnalyzer();
  v12 = swift_allocObject();
  sub_22088538C();
  sub_2208853EC();
  v13 = sub_22088543C();
  result = (*(*(v13 - 8) + 48))(v5, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_22088539C();
    sub_22069A214(0, v15);
    v16 = swift_allocObject();
    *(v16 + ((*(*v16 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
    result = (*(v7 + 32))(v16 + *(*v16 + *MEMORY[0x277D841D0] + 16), v10, v6);
    *(v12 + 16) = v16;
    a1[3] = v11;
    a1[4] = &off_2834284C0;
    *a1 = v12;
  }

  return result;
}

uint64_t sub_220699DD0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for StockChartCalloutViewModelFactory(0);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC8StocksUI33StockChartCalloutViewModelFactory_chart;
  v5 = sub_22088665C();
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  a1[3] = v2;
  a1[4] = &off_28341F700;
  *a1 = v3;
  return result;
}

void *sub_220699E6C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281296850, MEMORY[0x277D33678], 1);
  result = sub_2208884DC();
  if (v4)
  {
    sub_22069A1B8(0);
    v3 = objc_allocWithZone(v2);
    return sub_2208903DC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220699EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = type metadata accessor for StockChartCalloutStyler();
  v12 = &off_283424B60;
  *&v10 = a2;
  swift_unknownObjectWeakInit();
  *(a3 + 72) = 0;
  v6 = type metadata accessor for StockChartCalloutHandleLayer();
  *(a3 + 80) = [objc_allocWithZone(v6) init];
  *(a3 + 88) = [objc_allocWithZone(v6) init];
  *(a3 + 104) = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC8StocksUI28StockChartInteractionHandler_chartModel;
  v8 = sub_220890D2C();
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  *(a3 + OBJC_IVAR____TtC8StocksUI28StockChartInteractionHandler_trend) = 2;
  *(a3 + 16) = a1;
  sub_220457328(&v10, a3 + 32);
  return a3;
}

char *sub_22069A010(uint64_t a1, char *a2)
{
  v14[3] = type metadata accessor for DateRangePickerStyler();
  v14[4] = &off_283412460;
  v14[0] = a1;
  v4 = &a2[OBJC_IVAR____TtC8StocksUI19DateRangePickerView_onChange];
  sub_22069A27C(0);
  *v4 = 0;
  *(v4 + 1) = 0;
  v6 = [objc_allocWithZone(v5) init];
  *&a2[OBJC_IVAR____TtC8StocksUI19DateRangePickerView_segmentedControl] = v6;
  sub_22046DA2C(v14, &a2[OBJC_IVAR____TtC8StocksUI19DateRangePickerView_styler]);
  v13.receiver = a2;
  v13.super_class = type metadata accessor for DateRangePickerView();
  v7 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v8 = OBJC_IVAR____TtC8StocksUI19DateRangePickerView_segmentedControl;
  v9 = *&v7[OBJC_IVAR____TtC8StocksUI19DateRangePickerView_segmentedControl];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = v7;
  v11 = v9;
  sub_22088B5DC();

  [v10 addSubview_];
  [v10 setAlwaysBounceVertical_];
  [v10 setShowsVerticalScrollIndicator_];
  [v10 setShowsHorizontalScrollIndicator_];
  [v10 setDirectionalLockEnabled_];

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v10;
}

void sub_22069A1B8(uint64_t a1)
{
  if (!qword_281296898)
  {
    sub_22056A8B4();
    v1 = sub_22089040C();
    if (!v2)
    {
      atomic_store(v1, &qword_281296898);
    }
  }
}

void sub_22069A214(uint64_t a1, __n128 a2)
{
  if (!qword_28127E3B8)
  {
    sub_2208853CC();
    type metadata accessor for os_unfair_lock_s(255);
    v2 = sub_22089258C();
    if (!v3)
    {
      atomic_store(v2, &qword_28127E3B8);
    }
  }
}

void sub_22069A27C(uint64_t a1)
{
  if (!qword_281297D78)
  {
    sub_2208854FC();
    sub_220456AC8(&qword_2812993A8, MEMORY[0x277D69160], &protocol conformance descriptor for ChartRange);
    v1 = sub_22088B60C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297D78);
    }
  }
}

void sub_22069A320(uint64_t a1)
{
  if (!qword_28127ED48)
  {
    sub_22069A564(255);
    sub_22089101C();
    sub_2208910CC();
    v1 = MEMORY[0x277D6C678];
    sub_22069A9B8(255, &qword_28127EE00, MEMORY[0x277D6C678], MEMORY[0x277D6C658]);
    sub_22069A5F8(255);
    sub_220456A34(255);
    sub_220456AC8(&qword_28127EDA8, sub_22069A564, MEMORY[0x277D6C6D0]);
    sub_220456AC8(&qword_28127ED18, MEMORY[0x277D6C748], MEMORY[0x277D6C738]);
    sub_220456AC8(&qword_28127ECE8, MEMORY[0x277D6C780], MEMORY[0x277D6C778]);
    sub_22069A67C(&qword_28127EE08, &qword_28127EE00, v1);
    sub_220456AC8(&qword_28127ED08, sub_22069A5F8, MEMORY[0x277D6C750]);
    sub_220456AC8(&qword_28127ED68, sub_220456A34, MEMORY[0x277D6C6F8]);
    v2 = sub_220890F9C();
    if (!v3)
    {
      atomic_store(v2, &qword_28127ED48);
    }
  }
}

void sub_22069A564(uint64_t a1)
{
  if (!qword_28127EDA0)
  {
    sub_220890D2C();
    sub_220456AC8(&qword_28127EDF8, MEMORY[0x277D6C670], MEMORY[0x277D6C668]);
    v1 = sub_220890E6C();
    if (!v2)
    {
      atomic_store(v1, &qword_28127EDA0);
    }
  }
}

void sub_22069A5F8(uint64_t a1)
{
  if (!qword_28127ED00)
  {
    sub_22089113C();
    sub_22089112C();
    v1 = sub_22089102C();
    if (!v2)
    {
      atomic_store(v1, &qword_28127ED00);
    }
  }
}

uint64_t sub_22069A67C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_22069A9B8(255, a2, a3, MEMORY[0x277D6C658]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22069A6E0(uint64_t a1)
{
  if (!qword_28127ED40)
  {
    sub_22069A924(255);
    sub_22089103C();
    sub_22089110C();
    v1 = MEMORY[0x277D6C6A8];
    sub_22069A9B8(255, &qword_28127EE10, MEMORY[0x277D6C6A8], MEMORY[0x277D6C658]);
    sub_22069A5F8(255);
    sub_22069AA1C(255);
    sub_220456AC8(&qword_28127ED98, sub_22069A924, MEMORY[0x277D6C6D0]);
    sub_220456AC8(&qword_28127ECF8, MEMORY[0x277D6C760], MEMORY[0x277D6C758]);
    sub_220456AC8(&qword_28127ECE0, MEMORY[0x277D6C798], MEMORY[0x277D6C790]);
    sub_22069A67C(&qword_28127EE18, &qword_28127EE10, v1);
    sub_220456AC8(&qword_28127ED08, sub_22069A5F8, MEMORY[0x277D6C750]);
    sub_220456AC8(&qword_28127ED58, sub_22069AA1C, MEMORY[0x277D6C6F8]);
    v2 = sub_220890F9C();
    if (!v3)
    {
      atomic_store(v2, &qword_28127ED40);
    }
  }
}

void sub_22069A924(uint64_t a1)
{
  if (!qword_28127ED90)
  {
    sub_220890DFC();
    sub_220456AC8(&qword_28127EDD0, MEMORY[0x277D6C6A0], MEMORY[0x277D6C698]);
    v1 = sub_220890E6C();
    if (!v2)
    {
      atomic_store(v1, &qword_28127ED90);
    }
  }
}

void sub_22069A9B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22069AA1C(uint64_t a1)
{
  if (!qword_28127ED50)
  {
    sub_22089100C();
    sub_220456AC8(&unk_28127ED20, MEMORY[0x277D6C730], MEMORY[0x277D6C728]);
    v1 = sub_220890F2C();
    if (!v2)
    {
      atomic_store(v1, &qword_28127ED50);
    }
  }
}

char *sub_22069AB40(uint64_t a1, uint64_t a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v7, sel_accessibilityElements);
  if (result)
  {
    v4 = result;
    v5 = sub_2208916EC();

    v6 = v5;

    sub_22069AE88(&v6);

    return v6;
  }

  return result;
}

BOOL sub_22069AC90(uint64_t a1, uint64_t a2)
{
  sub_2204A7FA8(a1, v9);
  sub_2205B6C48();
  if (swift_dynamicCast())
  {
    [v8 accessibilityFrame];
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  sub_2204A7FA8(a2, v9);
  if (swift_dynamicCast())
  {
    [v8 accessibilityFrame];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  return v4 < v6;
}

void sub_22069AE88(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2207D31D4(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_22069AEF4(v4);
  *a1 = v2;
}

void sub_22069AEF4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22089286C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_22089178C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_22069B194(v7, v8, a1, v4);
      *(v6 + 16) = 0;

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
    sub_22069AFF0(0, v2, 1, a1);
  }
}

uint64_t sub_22069AFF0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 32 * a3);
    v6 = result - a3;
LABEL_5:
    v17 = v5;
    v18 = a3;
    v7 = v6;
    while (1)
    {
      sub_2204A7FA8(v5, v21);
      sub_2204A7FA8((v5 - 2), v20);
      sub_2204A7FA8(v21, v19);
      sub_2205B6C48();
      if (swift_dynamicCast())
      {
        v8 = v22;
        [v22 accessibilityFrame];
        v10 = v9;
      }

      else
      {
        v10 = 0.0;
      }

      sub_2204A7FA8(v20, v19);
      if (swift_dynamicCast())
      {
        v11 = v22;
        [v22 accessibilityFrame];
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      __swift_destroy_boxed_opaque_existential_1(v20);
      result = __swift_destroy_boxed_opaque_existential_1(v21);
      if (v10 >= v13)
      {
LABEL_4:
        a3 = v18 + 1;
        v5 = v17 + 2;
        --v6;
        if (v18 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_2204A62A4(v5, v21);
      v14 = *(v5 - 1);
      *v5 = *(v5 - 2);
      v5[1] = v14;
      result = sub_2204A62A4(v21, v5 - 2);
      v5 -= 2;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22069B194(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_104:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_106;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = (v7 + 1);
    if (v10 >= v6)
    {
      v17 = v10;
    }

    else
    {
      v11 = *a3;
      sub_2204A7FA8(*a3 + 32 * v10, v106);
      sub_2204A7FA8(v11 + 32 * v9, v105);
      v12 = v5;
      v13 = sub_22069AC90(v106, v105);
      if (v5)
      {
        __swift_destroy_boxed_opaque_existential_1(v105);
        __swift_destroy_boxed_opaque_existential_1(v106);
        goto LABEL_116;
      }

      v14 = v13;
      __swift_destroy_boxed_opaque_existential_1(v105);
      __swift_destroy_boxed_opaque_existential_1(v106);
      v15 = (v9 + 2);
      v96 = v9;
      v9 *= 32;
      v16 = v11 + v9 + 64;
      v17 = v6;
      while (v6 != v15)
      {
        sub_2204A7FA8(v16, v106);
        sub_2204A7FA8(v16 - 32, v105);
        sub_2204A7FA8(v106, v104);
        sub_2205B6C48();
        if (swift_dynamicCast())
        {
          [v103 accessibilityFrame];
          v20 = v19;
        }

        else
        {
          v20 = 0.0;
        }

        sub_2204A7FA8(v105, v104);
        if (swift_dynamicCast())
        {
          [v103 accessibilityFrame];
          v18 = v21;
        }

        else
        {
          v18 = 0.0;
        }

        __swift_destroy_boxed_opaque_existential_1(v105);
        __swift_destroy_boxed_opaque_existential_1(v106);
        ++v15;
        v16 += 32;
        if (((v14 ^ (v20 >= v18)) & 1) == 0)
        {
          v17 = (v15 - 1);
          break;
        }
      }

      if (v14)
      {
        if (v17 < v96)
        {
          goto LABEL_137;
        }

        if (v96 >= v17)
        {
          v9 = v96;
        }

        else
        {
          v22 = 32 * v17 - 32;
          v23 = v17;
          v24 = v96;
          do
          {
            if (v24 != --v17)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v26 = (v25 + v9);
              v27 = (v25 + v22);
              sub_2204A62A4((v25 + v9), v106);
              v28 = v27[1];
              *v26 = *v27;
              *(v26 + 1) = v28;
              sub_2204A62A4(v106, v27);
            }

            ++v24;
            v22 -= 32;
            v9 += 32;
          }

          while (v24 < v17);
          v5 = v12;
          v9 = v96;
          v17 = v23;
        }
      }

      else
      {
        v9 = v96;
      }
    }

    v29 = a3[1];
    if (v17 < v29)
    {
      if (__OFSUB__(v17, v9))
      {
        goto LABEL_134;
      }

      if (v17 - v9 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v17 < v9)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_220587F84(0, *(v8 + 2) + 1, 1, v8);
    }

    v44 = *(v8 + 2);
    v43 = *(v8 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      v8 = sub_220587F84((v43 > 1), v44 + 1, 1, v8);
    }

    *(v8 + 2) = v45;
    v46 = &v8[16 * v44];
    *(v46 + 4) = v9;
    *(v46 + 5) = v17;
    v47 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    v100 = v17;
    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v8 + 4);
          v50 = *(v8 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_73:
          if (v52)
          {
            goto LABEL_122;
          }

          v65 = &v8[16 * v45];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_125;
          }

          v71 = &v8[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_128;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_129;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v75 = &v8[16 * v45];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_87:
        if (v70)
        {
          goto LABEL_124;
        }

        v78 = &v8[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_127;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_94:
        v86 = v48 - 1;
        if (v48 - 1 >= v45)
        {
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
          goto LABEL_140;
        }

        v87 = *&v8[16 * v86 + 32];
        v9 = *&v8[16 * v48 + 40];
        sub_22069B9A4((*a3 + 32 * v87), (*a3 + 32 * *&v8[16 * v48 + 32]), (*a3 + 32 * v9), v47);
        if (v5)
        {
          goto LABEL_116;
        }

        if (v9 < v87)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2207D2DE0(v8);
        }

        if (v86 >= *(v8 + 2))
        {
          goto LABEL_119;
        }

        v88 = &v8[16 * v86];
        *(v88 + 4) = v87;
        *(v88 + 5) = v9;
        v107 = v8;
        sub_2207D2D54(v48);
        v8 = v107;
        v45 = *(v107 + 2);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v8[16 * v45 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_120;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_121;
      }

      v60 = &v8[16 * v45];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_123;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_126;
      }

      if (v64 >= v56)
      {
        v82 = &v8[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_130;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v6 = a3[1];
    v7 = v100;
    if (v100 >= v6)
    {
      goto LABEL_104;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_135;
  }

  v101 = v17;
  if (v9 + a4 >= v29)
  {
    v30 = a3[1];
  }

  else
  {
    v30 = v9 + a4;
  }

  if (v30 < v9)
  {
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    v8 = sub_2207D2DE0(v8);
LABEL_106:
    v89 = v5;
    v107 = v8;
    v90 = *(v8 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v5 = v90 - 1;
        v91 = *&v8[16 * v90];
        v92 = *&v8[16 * v90 + 24];
        sub_22069B9A4((*a3 + 32 * v91), (*a3 + 32 * *&v8[16 * v90 + 16]), (*a3 + 32 * v92), v9);
        if (v89)
        {
          goto LABEL_116;
        }

        if (v92 < v91)
        {
          goto LABEL_131;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2207D2DE0(v8);
        }

        if (v90 - 2 >= *(v8 + 2))
        {
          goto LABEL_132;
        }

        v93 = &v8[16 * v90];
        *v93 = v91;
        *(v93 + 1) = v92;
        v107 = v8;
        sub_2207D2D54(v90 - 1);
        v8 = v107;
        v90 = *(v107 + 2);
        if (v90 <= 1)
        {
          goto LABEL_116;
        }
      }

      goto LABEL_142;
    }

LABEL_116:

    return;
  }

  if (v101 == v30)
  {
    v17 = v101;
    goto LABEL_53;
  }

  v94 = v5;
  v31 = v9;
  v32 = *a3;
  v33 = *a3 + 32 * v101;
  v97 = v31;
  v34 = v31 - v101;
  v99 = v30;
LABEL_40:
  v35 = v34;
  v36 = v33;
  while (1)
  {
    sub_2204A7FA8(v36, v106);
    sub_2204A7FA8((v36 - 2), v105);
    sub_2204A7FA8(v106, v104);
    sub_2205B6C48();
    if (swift_dynamicCast())
    {
      [v103 accessibilityFrame];
      v38 = v37;
    }

    else
    {
      v38 = 0.0;
    }

    sub_2204A7FA8(v105, v104);
    if (swift_dynamicCast())
    {
      [v103 accessibilityFrame];
      v40 = v39;
    }

    else
    {
      v40 = 0.0;
    }

    __swift_destroy_boxed_opaque_existential_1(v105);
    __swift_destroy_boxed_opaque_existential_1(v106);
    if (v38 >= v40)
    {
LABEL_39:
      v17 = v99;
      v33 += 32;
      --v34;
      if (++v101 != v99)
      {
        goto LABEL_40;
      }

      v5 = v94;
      v9 = v97;
      goto LABEL_53;
    }

    if (!v32)
    {
      break;
    }

    sub_2204A62A4(v36, v106);
    v41 = *(v36 - 1);
    *v36 = *(v36 - 2);
    v36[1] = v41;
    sub_2204A62A4(v106, v36 - 2);
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

uint64_t sub_22069B9A4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 >= v12 >> 5)
  {
    if (a4 != __src || &__src[32 * v13] <= a4)
    {
      memmove(a4, __src, 32 * v13);
    }

    v14 = &v4[32 * v13];
    if (v11 < 32 || v6 <= v7)
    {
LABEL_48:
      v24 = v6;
    }

    else
    {
      do
      {
        v24 = v6 - 32;
        v25 = v14 - 32;
        v5 -= 32;
        while (1)
        {
          sub_2204A7FA8(v25, v39);
          sub_2204A7FA8((v6 - 32), v38);
          sub_2204A7FA8(v39, v37);
          sub_2205B6C48();
          if (swift_dynamicCast())
          {
            v28 = v40;
            [v40 accessibilityFrame];
            v30 = v29;
          }

          else
          {
            v30 = 0.0;
          }

          sub_2204A7FA8(v38, v37);
          if (swift_dynamicCast())
          {
            v31 = v40;
            [v40 accessibilityFrame];
            v33 = v32;
          }

          else
          {
            v33 = 0.0;
          }

          __swift_destroy_boxed_opaque_existential_1(v38);
          __swift_destroy_boxed_opaque_existential_1(v39);
          if (v30 < v33)
          {
            break;
          }

          if (v5 + 32 != v25 + 32)
          {
            v34 = *(v25 + 1);
            *v5 = *v25;
            *(v5 + 1) = v34;
          }

          v26 = v25 - 32;
          v5 -= 32;
          v27 = v25 > v4;
          v25 -= 32;
          if (!v27)
          {
            v14 = v26 + 32;
            goto LABEL_48;
          }
        }

        if (v5 + 32 != v6)
        {
          v35 = *(v6 - 1);
          *v5 = *v24;
          *(v5 + 1) = v35;
        }

        v14 = v25 + 32;
        if (v25 + 32 <= v4)
        {
          break;
        }

        v6 -= 32;
      }

      while (v24 > v7);
      v14 = v25 + 32;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 >= 32 && v6 < v5)
    {
      while (1)
      {
        sub_2204A7FA8(v6, v39);
        sub_2204A7FA8(v4, v38);
        sub_2204A7FA8(v39, v37);
        sub_2205B6C48();
        if (swift_dynamicCast())
        {
          v15 = v40;
          [v40 accessibilityFrame];
          v17 = v16;
        }

        else
        {
          v17 = 0.0;
        }

        sub_2204A7FA8(v38, v37);
        if (swift_dynamicCast())
        {
          v18 = v40;
          [v40 accessibilityFrame];
          v20 = v19;
        }

        else
        {
          v20 = 0.0;
        }

        __swift_destroy_boxed_opaque_existential_1(v38);
        __swift_destroy_boxed_opaque_existential_1(v39);
        if (v17 >= v20)
        {
          break;
        }

        v21 = v6;
        v22 = v7 == v6;
        v6 += 32;
        if (!v22)
        {
          goto LABEL_22;
        }

LABEL_23:
        v7 += 32;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_25;
        }
      }

      v21 = v4;
      v22 = v7 == v4;
      v4 += 32;
      if (v22)
      {
        goto LABEL_23;
      }

LABEL_22:
      v23 = *(v21 + 1);
      *v7 = *v21;
      *(v7 + 1) = v23;
      goto LABEL_23;
    }

LABEL_25:
    v24 = v7;
  }

  if (v24 != v4 || v24 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v24, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

uint64_t sub_22069BD68()
{
  v1 = sub_22088A1EC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22069CC98(0, qword_281298170, MEMORY[0x277D35380], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v31 - v8;
  v10 = sub_22088A61C();
  v11 = *(v10 - 8);
  *&v13 = MEMORY[0x28223BE20](v10, v12).n128_u64[0];
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [*(v0 + 56) cachedSubscription];
  v17 = [v16 isPaidBundleViaOfferActivated];

  if (v17)
  {
    if (qword_27CF55BB0 != -1)
    {
      swift_once();
    }

    v18 = sub_22088A84C();
    __swift_project_value_buffer(v18, qword_27CF6D150);
    v19 = sub_22088A82C();
    v20 = sub_220891AFC();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_12;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "isPaidBundleViaOfferEligible: isPaidBundleViaOfferActivated = true. Not eligible.";
LABEL_11:
    _os_log_impl(&dword_22043F000, v19, v20, v22, v21, 2u);
    MEMORY[0x223D8B7F0](v21, -1, -1);
LABEL_12:

    return 0;
  }

  v32 = v15;
  swift_getObjectType();
  (*(v2 + 104))(v5, *MEMORY[0x277D34D60], v1);
  sub_22088A31C();
  (*(v2 + 8))(v5, v1);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2206774AC(v9, v23);
    if (qword_27CF55BB0 != -1)
    {
      swift_once();
    }

    v24 = sub_22088A84C();
    __swift_project_value_buffer(v24, qword_27CF6D150);
    v19 = sub_22088A82C();
    v20 = sub_220891AFC();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_12;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "isPaidBundleViaOfferEligible: no cached best offer found. Not eligible.";
    goto LABEL_11;
  }

  v26 = v32;
  (*(v11 + 32))(v32, v9, v10);
  if ((sub_22088A5CC() & 1) == 0)
  {
    if (qword_27CF55BB0 != -1)
    {
      swift_once();
    }

    v27 = sub_22088A84C();
    __swift_project_value_buffer(v27, qword_27CF6D150);
    v28 = sub_22088A82C();
    v29 = sub_220891AFC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22043F000, v28, v29, "isPaidBundleViaOfferEligible: isPaidBundleViaOffer = false. Not eligible.", v30, 2u);
      MEMORY[0x223D8B7F0](v30, -1, -1);
    }

    (*(v11 + 8))(v26, v10);
    return 0;
  }

  (*(v11 + 8))(v26, v10);
  return 1;
}

uint64_t sub_22069C24C()
{
  if ([*(v0 + 56) validatedCachedSubscription])
  {
    sub_22069CC98(0, &unk_27CF589B0, sub_22069CC14, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_220888ECC();
  }

  else
  {
    sub_22069CC98(0, &unk_27CF589B0, sub_22069CC14, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_220888F2C();
  }

  swift_getObjectType();
  sub_22088A32C();
  v1 = sub_220888D9C();
  sub_220888E4C();

  v2 = sub_220888D9C();
  sub_220888F0C();

  sub_220888F8C();

  v3 = sub_220888D9C();
  v4 = sub_220888E6C();

  return v4;
}

uint64_t sub_22069C484@<X0>(_BYTE *a2@<X8>)
{
  result = sub_22088A5CC();
  *a2 = result & 1;
  return result;
}

void sub_22069C4C4(void *a1@<X0>, _BYTE *a2@<X8>)
{
  if (qword_27CF55BB0 != -1)
  {
    swift_once();
  }

  v4 = sub_22088A84C();
  __swift_project_value_buffer(v4, qword_27CF6D150);
  v5 = a1;
  v6 = sub_22088A82C();
  v7 = sub_220891ADC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_22089297C();
    v12 = sub_2204A7B78(v10, v11, &v13);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_22043F000, v6, v7, "offerManager refresh() failed: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x223D8B7F0](v9, -1, -1);
    MEMORY[0x223D8B7F0](v8, -1, -1);
  }

  *a2 = 0;
}

void sub_22069C644(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = qword_27CF55BB0;
  v5 = *a1;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_22088A84C();
  __swift_project_value_buffer(v6, qword_27CF6D150);
  v7 = v5;
  v8 = sub_22088A82C();
  v9 = sub_220891AFC();
  if (!os_log_type_enabled(v8, v9))
  {

    if (!v3)
    {
      goto LABEL_5;
    }

LABEL_7:
    v12 = [v7 isPaidBundleViaOfferActivated];

    v11 = v12 ^ 1;
    goto LABEL_8;
  }

  v10 = swift_slowAlloc();
  *v10 = 67109376;
  *(v10 + 4) = v3;
  *(v10 + 8) = 1024;
  *(v10 + 10) = [v7 isPaidBundleViaOfferActivated];

  _os_log_impl(&dword_22043F000, v8, v9, "isPaidBundleViaOfferPromise: isPaidBundleViaOffer %{BOOL}d isPaidBundleViaOfferActivated %{BOOL}d", v10, 0xEu);
  MEMORY[0x223D8B7F0](v10, -1, -1);

  if (v3)
  {
    goto LABEL_7;
  }

LABEL_5:

  v11 = 0;
LABEL_8:
  *a2 = v11;
}

uint64_t sub_22069C7BC()
{
  if ([*(v0 + 56) validatedCachedSubscription])
  {
    sub_22069CC98(0, &unk_27CF589B0, sub_22069CC14, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_220888ECC();
  }

  else
  {
    sub_22069CC98(0, &unk_27CF589B0, sub_22069CC14, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_220888F2C();
  }

  v1 = sub_220888D9C();
  v2 = sub_220888E4C();

  return v2;
}

id sub_22069C904@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isPaidBundleViaOfferActivated];
  *a2 = result;
  return result;
}

void sub_22069C940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + 56);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_22069CC60;
  *(v10 + 24) = v8;
  v12[4] = sub_220685948;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2205659F0;
  v12[3] = &block_descriptor_25;
  v11 = _Block_copy(v12);

  [v9 refreshBundleSubscriptionWithCachePolicy:1 completion:v11];
  _Block_release(v11);
}

uint64_t sub_22069CA58()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22069CAEC()
{
  v1 = *v0;
  __swift_project_boxed_opaque_existential_1((*v0 + 16), *(*v0 + 40));
  if (sub_22088619C())
  {
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    sub_22088612C();
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    v2 = sub_22088657C();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

unint64_t sub_22069CC14()
{
  result = qword_28127E6D8;
  if (!qword_28127E6D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28127E6D8);
  }

  return result;
}

uint64_t sub_22069CC60(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void sub_22069CC98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22069CD40(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t sub_22069CD84(void *a1, void *a2)
{
  sub_22044D56C(0, &qword_27CF589D8, 0x277D6ED48);
  v14 = a1;
  v4 = a1;
  sub_22058D5E8();
  if (swift_dynamicCast())
  {

    sub_22089254C();
    MEMORY[0x223D89680](0xD000000000000013, 0x80000002208CC460);
    v5 = sub_220892A9C();
    MEMORY[0x223D89680](v5);

    MEMORY[0x223D89680](0xD000000000000026, 0x80000002208CC480);
    v6 = [a2 description];
    v7 = sub_22089136C();
    v9 = v8;

    MEMORY[0x223D89680](v7, v9);

    sub_22069DBA0();
    swift_allocError();
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    sub_22069DB48(0, &qword_27CF589E8, &qword_27CF589D8, 0x277D6ED48);
    swift_allocObject();
    v11 = sub_220888EBC();

    return v11;
  }

  else
  {

    sub_22069DB48(0, &qword_27CF589E8, &qword_27CF589D8, 0x277D6ED48);
    swift_allocObject();
    v13 = a1;
    return sub_220888EBC();
  }
}

void sub_22069CFC4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22089132C();
  v8 = [a1 objectForKey_];

  if (v8)
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
    sub_2204A62A4(&v18, &v19);
    sub_22044D56C(0, &qword_27CF56C10, 0x277D75A50);
    v9 = swift_dynamicCast();
    MEMORY[0x28223BE20](v9, v10);
    sub_22044D56C(0, &qword_27CF589D8, 0x277D6ED48);
    sub_220888FBC();
    *(swift_allocObject() + 16) = v3;
    v11 = v3;
    v12 = sub_220888D9C();
    sub_220888E3C();

    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;

    v14 = sub_220888D9C();
    sub_220888E4C();

    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;

    v16 = sub_220888D9C();
    sub_220888E9C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22069D25C(void *a1)
{
  sub_22069DB48(0, &qword_27CF589E0, &qword_28127E800, 0x277D75D28);
  sub_22044D56C(0, &qword_28127E7C0, 0x277D85C78);
  v2 = sub_220891D0C();
  *(swift_allocObject() + 16) = a1;
  sub_22044D56C(0, &qword_27CF589D8, 0x277D6ED48);
  v3 = a1;
  sub_220888E8C();

  *(swift_allocObject() + 16) = v3;
  v4 = v3;
  v5 = sub_220888D9C();
  v6 = sub_220888EFC();

  return v6;
}

uint64_t sub_22069D3BC(void **a1, void *a2)
{
  v3 = *a1;
  sub_220888FBC();
  v4 = swift_allocObject();
  v4[2] = a2;
  v4[3] = v3;
  v4[4] = 20;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_22069D9CC;
  *(v5 + 24) = v4;
  v6 = a2;
  v7 = v3;
  v8 = sub_220888D9C();
  v9 = sub_220888E3C();

  return v9;
}

double sub_22069D4D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  sub_22088830C();

  return result;
}

uint64_t sub_22069D5F4(uint64_t a1, uint64_t a2)
{
  sub_220888FBC();
  v2 = sub_220888D9C();
  v3 = sub_220888E3C();

  return v3;
}

uint64_t sub_22069D694(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
    __break(1u);
  }

  else if (a3 == 1)
  {
    sub_22046D934();
    swift_allocObject();
    return sub_220888ECC();
  }

  else
  {
    MEMORY[0x28223BE20](result, a2);
    v5 = v4;
    v7 = v6;
    sub_220888FBC();
    v8 = swift_allocObject();
    v8[2] = v5;
    v8[3] = v7;
    v8[4] = v3;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_22069DC24;
    *(v9 + 24) = v8;
    v10 = v5;
    v11 = v7;
    v12 = sub_220888D9C();
    v13 = sub_220888E3C();

    return v13;
  }

  return result;
}

uint64_t sub_22069D7EC(__n128 a1)
{
  v1 = sub_22088F17C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v13 - v8;
  sub_22088F16C();
  sub_22088F18C();
  v10 = *(v2 + 8);
  v10(v5, v1);
  v11 = sub_220888D6C();
  v10(v9, v1);
  return v11;
}

uint64_t sub_22069D910(void *a1)
{
  [a1 keyboardOrActionSwitchToNextViewController];
  sub_22046D934();
  swift_allocObject();
  return sub_220888ECC();
}

uint64_t sub_22069DA10@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v7[4] = sub_22069CD00;
  v7[5] = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_22069CD40;
  v7[3] = &block_descriptor_26;
  v4 = _Block_copy(v7);

  v5 = SUFirstViewControllerPassing(a1, 1, v4);
  _Block_release(v4);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {

      result = 0;
    }

    *a2 = result;
  }

  return result;
}

void sub_22069DB48(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_22044D56C(255, a3, a4);
    v5 = sub_220888F3C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_22069DBA0()
{
  result = qword_27CF589F0;
  if (!qword_27CF589F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF589F0);
  }

  return result;
}

uint64_t sub_22069DC28@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2208857EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_220886BCC();
  sub_220886BAC();
  sub_220886A5C();
  sub_220886B9C();

  if (v12[15] & 1) != 0 || (sub_22088669C(), v7 = sub_2208857CC(), (*(v3 + 8))(v6, v2), (v7))
  {
    v8 = sub_2208854FC();
    (*(*(v8 - 8) + 56))(a1, 1, 3, v8);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = type metadata accessor for QuoteSummaryTimeRange(0);
  return (*(*(v10 - 8) + 56))(a1, v9, 1, v10);
}

uint64_t sub_22069DDE0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_2208852DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v83 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_22088699C();
  v10 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v11);
  v85 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2208857EC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v81 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v68 - v19;
  LODWORD(v80) = a2;
  if (a2)
  {
    sub_220886BCC();
    sub_220886BAC();
    sub_220886A5C();
    v84 = v14;
    sub_220886B9C();

    v14 = v84;

    if (v86 == 1)
    {
      sub_22069FA4C(a1, a3);
      v21 = type metadata accessor for PriceViewModel(0);
      return (*(*(v21 - 8) + 56))(a3, 0, 1, v21);
    }
  }

  sub_22088669C();
  v23 = (*(v14 + 88))(v20, v13);
  if (v23 == *MEMORY[0x277D69290])
  {
    goto LABEL_5;
  }

  if (v23 == *MEMORY[0x277D692A0])
  {
    if (v80)
    {
      sub_2208866BC();
      if (v26)
      {
        goto LABEL_6;
      }

      v84 = sub_2208866BC();
      LODWORD(v77) = v27;
      v76 = sub_22088672C();
      v75 = v28;
      v74 = sub_22088671C();
      v73 = v29;
      v30 = sub_22088668C();
      v71 = v31;
      v72 = v30;
      v78 = v10;
      v79 = v6;
      v32 = v82;
      v80 = v7;
      v33 = *(v10 + 16);
      v34 = a1;
      v35 = v85;
      v33(v85, v34, v82);
      v36 = v81;
      v37 = v35;
      sub_22088669C();
      sub_22088524C();
      *a3 = v84;
      *(a3 + 8) = v77 & 1;
      *(a3 + 16) = v76;
      *(a3 + 24) = v75 & 1;
      *(a3 + 32) = v74;
      *(a3 + 40) = v73 & 1;
      v38 = v71;
      *(a3 + 48) = v72;
      *(a3 + 56) = v38;
      v39 = type metadata accessor for PriceViewModel(0);
      v33((a3 + v39[10]), v35, v32);
      v41 = v79;
      v40 = v80;
      v42 = v83;
      *(a3 + 64) = 0;
      *(a3 + 72) = 0xE000000000000000;
      (*(v14 + 16))(a3 + v39[9], v36, v13);
      (*(v40 + 16))(a3 + v39[11], v42, v41);
      if (qword_281294078 != -1)
      {
        swift_once();
      }

      v43 = qword_2812B6B48;
      (*(v14 + 8))(v36, v13);
      (*(v78 + 8))(v37, v82);
      v44 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
      swift_beginAccess();
      (*(v40 + 40))(v43 + v44, v42, v41);
LABEL_16:
      swift_endAccess();
      return (*(*(v39 - 1) + 56))(a3, 0, 1, v39);
    }

LABEL_5:
    sub_2208866CC();
    if (v24)
    {
LABEL_6:
      v25 = type metadata accessor for PriceViewModel(0);
      return (*(*(v25 - 8) + 56))(a3, 1, 1, v25);
    }

    v76 = sub_2208866CC();
    v75 = v45;
    v74 = sub_22088673C();
    v73 = v46;
    v47 = sub_22088671C();
    v79 = v6;
    v80 = v7;
    v72 = v47;
    v77 = v13;
    LODWORD(v71) = v48;
    v49 = sub_22088668C();
    v50 = v82;
    v51 = v83;
    v69 = v52;
    v70 = v49;
    v84 = v14;
    v78 = v10;
    v53 = *(v10 + 16);
    v54 = v85;
    v53(v85, a1, v82);
    v55 = v81;
    sub_22088669C();
    sub_22088524C();
    *a3 = v76;
    *(a3 + 8) = v75 & 1;
    *(a3 + 16) = v74;
    *(a3 + 24) = v73 & 1;
    *(a3 + 32) = v72;
    v56 = v79;
    v57 = v80;
    *(a3 + 40) = v71 & 1;
    v58 = v69;
    *(a3 + 48) = v70;
    *(a3 + 56) = v58;
    v39 = type metadata accessor for PriceViewModel(0);
    v59 = v54;
    v60 = v56;
    v61 = v84;
    v53((a3 + v39[10]), v59, v50);
    v62 = v55;
    v63 = v51;
    v64 = v77;
    *(a3 + 64) = 0;
    *(a3 + 72) = 0xE000000000000000;
    (*(v61 + 16))(a3 + v39[9], v55, v64);
    (*(v57 + 16))(a3 + v39[11], v63, v60);
    if (qword_281294078 != -1)
    {
      swift_once();
    }

    v65 = qword_2812B6B48;
    (*(v61 + 8))(v62, v64);
    (*(v78 + 8))(v85, v50);
    v66 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
    swift_beginAccess();
    (*(v57 + 40))(v65 + v66, v63, v60);
    goto LABEL_16;
  }

  if (v23 == *MEMORY[0x277D69280])
  {
    goto LABEL_5;
  }

  v67 = type metadata accessor for PriceViewModel(0);
  (*(*(v67 - 8) + 56))(a3, 1, 1, v67);
  return (*(v14 + 8))(v20, v13);
}

uint64_t sub_22069E5AC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_2208857EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    sub_220886BCC();
    sub_220886BAC();
    sub_220886A5C();
    sub_220886B9C();

    if (v15[15] == 1)
    {
      goto LABEL_7;
    }
  }

  sub_22088669C();
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 != *MEMORY[0x277D69290])
  {
    if (v9 != *MEMORY[0x277D692A0])
    {
      if (v9 != *MEMORY[0x277D69280])
      {
        v14 = type metadata accessor for QuoteSummaryTimeRange(0);
        (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
        return (*(v5 + 8))(v8, v4);
      }

      goto LABEL_4;
    }

    if (a1)
    {
LABEL_7:
      v11 = sub_2208854FC();
      (*(*(v11 - 8) + 56))(a2, 3, 3, v11);
      goto LABEL_8;
    }
  }

LABEL_4:
  v10 = sub_2208854FC();
  (*(*(v10 - 8) + 56))(a2, 2, 3, v10);
LABEL_8:
  v12 = type metadata accessor for QuoteSummaryTimeRange(0);
  return (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
}

uint64_t sub_22069E834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2208857EC();
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2208854FC();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v13, *MEMORY[0x277D69120], v8, v11);
  sub_2206A03A4();
  sub_22089167C();
  sub_22089167C();
  if (v22 == v21)
  {
    (*(v9 + 8))(v13, v8);
  }

  else
  {
    v14 = sub_2208928BC();
    (*(v9 + 8))(v13, v8);

    if ((v14 & 1) == 0)
    {
      (*(v9 + 16))(a2, a1, v8);
      v15 = 0;
      goto LABEL_9;
    }
  }

  sub_220886BCC();
  sub_220886BAC();
  sub_220886A5C();
  sub_220886B9C();

  if (v22)
  {
    v15 = 1;
  }

  else
  {
    sub_22088669C();
    v16 = sub_2208857CC();
    (*(v19 + 8))(v7, v20);
    v15 = 1;
    if ((v16 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

LABEL_9:
  (*(v9 + 56))(a2, v15, 3, v8);
  v15 = 0;
LABEL_10:
  v17 = type metadata accessor for QuoteSummaryTimeRange(0);
  return (*(*(v17 - 8) + 56))(a2, v15, 1, v17);
}

uint64_t sub_22069EB5C()
{
  v1 = v0;
  v2 = sub_2208854FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for QuoteSummaryTimeRange(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206A02E0(v1, v14);
  if (!(*(v3 + 48))(v14, 3, v2))
  {
    (*(v3 + 32))(v10, v14, v2);
    (*(v3 + 16))(v6, v10, v2);
    v15 = (*(v3 + 88))(v6, v2);
    if (v15 != *MEMORY[0x277D69120] && v15 != *MEMORY[0x277D69128] && v15 != *MEMORY[0x277D69138])
    {
      if (v15 == *MEMORY[0x277D69110])
      {
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v23 = [objc_opt_self() bundleForClass_];
        sub_220884CAC();

        sub_22048D7F8(0);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_220899360;
        v25 = MEMORY[0x277D83C10];
        *(v24 + 56) = MEMORY[0x277D83B88];
        *(v24 + 64) = v25;
        v26 = 3;
LABEL_14:
        *(v24 + 32) = v26;
        v18 = sub_22089133C();

        goto LABEL_7;
      }

      if (v15 == *MEMORY[0x277D69158])
      {
        type metadata accessor for Localized();
        v27 = swift_getObjCClassFromMetadata();
        v28 = [objc_opt_self() bundleForClass_];
        sub_220884CAC();

        sub_22048D7F8(0);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_220899360;
        v29 = MEMORY[0x277D83C10];
        *(v24 + 56) = MEMORY[0x277D83B88];
        *(v24 + 64) = v29;
        v26 = 6;
        goto LABEL_14;
      }

      if (v15 != *MEMORY[0x277D69100] && v15 != *MEMORY[0x277D69130])
      {
        if (v15 == *MEMORY[0x277D69148])
        {
          type metadata accessor for Localized();
          v30 = swift_getObjCClassFromMetadata();
          v31 = [objc_opt_self() bundleForClass_];
          sub_220884CAC();

          sub_22048D7F8(0);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_220899360;
          v32 = MEMORY[0x277D83C10];
          *(v24 + 56) = MEMORY[0x277D83B88];
          *(v24 + 64) = v32;
          v26 = 2;
          goto LABEL_14;
        }

        if (v15 == *MEMORY[0x277D69150])
        {
          type metadata accessor for Localized();
          v33 = swift_getObjCClassFromMetadata();
          v34 = [objc_opt_self() bundleForClass_];
          sub_220884CAC();

          sub_22048D7F8(0);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_220899360;
          v35 = MEMORY[0x277D83C10];
          *(v24 + 56) = MEMORY[0x277D83B88];
          *(v24 + 64) = v35;
          v26 = 5;
          goto LABEL_14;
        }

        if (v15 == *MEMORY[0x277D69140])
        {
          type metadata accessor for Localized();
          v36 = swift_getObjCClassFromMetadata();
          v37 = [objc_opt_self() bundleForClass_];
          sub_220884CAC();

          sub_22048D7F8(0);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_220899360;
          v38 = MEMORY[0x277D83C10];
          *(v24 + 56) = MEMORY[0x277D83B88];
          *(v24 + 64) = v38;
          v26 = 10;
          goto LABEL_14;
        }

        if (v15 != *MEMORY[0x277D69118])
        {
          v39 = *(v3 + 8);
          v39(v10, v2);
          v39(v6, v2);
          return 0;
        }
      }
    }

    type metadata accessor for Localized();
    v19 = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
    v18 = sub_220884CAC();

LABEL_7:
    (*(v3 + 8))(v10, v2);
    return v18;
  }

  type metadata accessor for Localized();
  v16 = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  v18 = sub_220884CAC();

  return v18;
}

uint64_t sub_22069F73C()
{
  v1 = type metadata accessor for QuoteSummaryTimeRange(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206A02E0(v0, v4);
  v5 = sub_2208854FC();
  if ((*(*(v5 - 8) + 48))(v4, 3, v5))
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    v8 = sub_220884CAC();
  }

  else
  {
    type metadata accessor for Localized();
    v6 = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    v8 = sub_220884CAC();

    sub_2206A0344(v4, type metadata accessor for QuoteSummaryTimeRange);
  }

  return v8;
}

void sub_22069FA4C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v4 = sub_2208852DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2208857EC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22088699C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v44 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22088675C();
  v19 = *&v18;
  if (v20)
  {
    v19 = 100.0;
  }

  else if ((v18 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v19 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v19 >= 1.84467441e19)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_12;
  }

  v21 = 0x5851F42D4C957F2DLL * v19 + 1;
  v41 = v5;
  v42 = v4;
    ;
  }

  v22 = v9;
  v23 = (v21 * 0x20000000000001uLL) >> 64;
  v24 = vcvtd_n_f64_u64(v23, 0x35uLL) * 20.0 + -10.0;
  if (v23 == 0x20000000000000)
  {
    v25 = 10.0;
  }

  else
  {
    v25 = v24;
  }

  v26 = v19 + v25;
  v38 = sub_22088671C();
  v37 = v27;
  v36 = sub_22088668C();
  v29 = v28;
  v39 = v15;
  v30 = *(v15 + 16);
  v31 = v44;
  v30(v44, v43, v14);
  v2 = v22;
  v10 = i;
  (*(i + 104))(v13, *MEMORY[0x277D692A0], v2);
  sub_22088524C();
  *a2 = v26;
  *(a2 + 8) = 0;
  *(a2 + 16) = v25;
  *(a2 + 24) = 0;
  *(a2 + 32) = v38;
  *(a2 + 40) = v37 & 1;
  *(a2 + 48) = v36;
  *(a2 + 56) = v29;
  v32 = type metadata accessor for PriceViewModel(0);
  v30((a2 + v32[10]), v31, v14);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0xE000000000000000;
  (*(v10 + 16))(a2 + v32[9], v13, v2);
  v5 = v41;
  v33 = a2 + v32[11];
  a2 = v42;
  (*(v41 + 16))(v33, v8, v42);
  if (qword_281294078 != -1)
  {
    goto LABEL_16;
  }

LABEL_12:
  v34 = qword_2812B6B48;
  (*(v10 + 8))(v13, v2);
  (*(v39 + 8))(v44, v14);
  v35 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  swift_beginAccess();
  (*(v5 + 40))(v34 + v35, v8, a2);
  swift_endAccess();
}

uint64_t sub_22069FEB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2208854FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for QuoteSummaryTimeRange(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206A027C(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 56);
  sub_2206A02E0(a1, v16);
  sub_2206A02E0(a2, &v16[v18]);
  v19 = *(v5 + 48);
  v20 = v19(v16, 3, v4);
  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = v19(&v16[v18], 3, v4);
      v22 = type metadata accessor for QuoteSummaryTimeRange;
      if (v21 != 2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v25 = v19(&v16[v18], 3, v4);
      v22 = type metadata accessor for QuoteSummaryTimeRange;
      if (v25 != 3)
      {
        goto LABEL_11;
      }
    }

LABEL_9:
    LOBYTE(v24) = 1;
    goto LABEL_12;
  }

  if (v20)
  {
    v23 = v19(&v16[v18], 3, v4);
    v22 = type metadata accessor for QuoteSummaryTimeRange;
    if (v23 != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  sub_2206A02E0(v16, v12);
  if (v19(&v16[v18], 3, v4))
  {
    (*(v5 + 8))(v12, v4);
LABEL_11:
    LOBYTE(v24) = 0;
    v22 = sub_2206A027C;
    goto LABEL_12;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  sub_2206A03A4();
  sub_22089167C();
  sub_22089167C();
  if (v30[2] == v30[0] && v30[3] == v30[1])
  {
    v27 = *(v5 + 8);
    v27(v8, v4);

    v27(v12, v4);
    LOBYTE(v24) = 1;
    v22 = type metadata accessor for QuoteSummaryTimeRange;
  }

  else
  {
    v28 = sub_2208928BC();
    v29 = *(v5 + 8);
    v29(v8, v4);

    v29(v12, v4);
    v24 = v28 << 31 >> 31;
    v22 = type metadata accessor for QuoteSummaryTimeRange;
  }

LABEL_12:
  sub_2206A0344(v16, v22);
  return v24 & 1;
}

void sub_2206A027C(uint64_t a1)
{
  if (!qword_28128D8F8[0])
  {
    type metadata accessor for QuoteSummaryTimeRange(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_28128D8F8);
    }
  }
}

uint64_t sub_2206A02E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuoteSummaryTimeRange(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2206A0344(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2206A03A4()
{
  result = qword_281299398;
  if (!qword_281299398)
  {
    sub_2208854FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281299398);
  }

  return result;
}

void *sub_2206A03FC(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a5;
  v65 = a4;
  v5 = sub_2208854AC();
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v61 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088D61C();
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StockSearchSectionHeaderViewLayoutAttributes(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = (&v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for StockSearchLayoutSectionDescriptor(0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = (&v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_220576E38(0);
  sub_22088C34C();
  v20 = *v19;
  v21 = v19[1];
  v22 = v19[2];
  v23 = v19[3];
  v25 = v19[4];
  v24 = v19[5];
  v26 = v19[6];
  sub_220657C74(0);
  v28 = v19 + *(v27 + 48);
  v68 = v15;
  sub_2206580C4(v28, v15);
  if (v21)
  {
    v58 = v20;
    v59 = v24;
    v69[0] = v20;
    v69[1] = v21;
    v69[2] = v22;
    v69[3] = v23;
    v69[4] = v25;
    v69[5] = v24;
    v57 = v26;
    v69[6] = v26;
    sub_2206A0CA0(0);
    v29 = v62;
    v30 = v63;
    (*(v62 + 104))(v11, *MEMORY[0x277D6E758], v63);
    v31 = v61;
    v56 = v22;
    sub_22088D44C();
    v32 = sub_220891C0C();
    (*(v66 + 8))(v31, v67);
    (*(v29 + 8))(v11, v30);
    v33 = v60;
    v34 = sub_22088D32C();
    v35 = v68;
    sub_2207A1FBC(v69, v68, v34);
    v36 = v23;
    v37 = v32;
    sub_220658050(v58, v21, v56, v36, v25, v59, v57);

    __swift_project_boxed_opaque_existential_1((v33 + 72), *(v33 + 96));
    v38 = sub_22088D32C();
    v39 = *&v38[OBJC_IVAR____TtC8StocksUI28StockSearchSectionHeaderView_watchlistSwitcherButton];

    v40 = sub_2206934B8(v39, 1);
    v41 = sub_22088D32C();
    v42 = *&v41[OBJC_IVAR____TtC8StocksUI28StockSearchSectionHeaderView_watchlistSwitcherButton];

    [v42 setShowsMenuAsPrimaryAction_];
    v43 = sub_22088D32C();
    v44 = *&v43[OBJC_IVAR____TtC8StocksUI28StockSearchSectionHeaderView_watchlistSwitcherButton];

    [v44 setMenu_];
    v45 = sub_22088D32C();
    v46 = *&v45[OBJC_IVAR____TtC8StocksUI28StockSearchSectionHeaderView_watchlistSwitcherButton];

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v48 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    v49 = sub_22089132C();

    [v46 setAccessibilityHint_];

    v50 = v35;
  }

  else
  {
    sub_22057CBE0(0);
    v51 = v62;
    v52 = v63;
    (*(v62 + 104))(v11, *MEMORY[0x277D6E758], v63);
    v53 = v61;
    sub_22088D44C();
    v37 = sub_220891C0C();
    (*(v66 + 8))(v53, v67);
    (*(v51 + 8))(v11, v52);
    [v37 setFrame_];
    v50 = v68;
  }

  sub_2206A0C44(v50);
  return v37;
}

uint64_t sub_2206A0984()
{
  v0 = sub_22088D61C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206A0CA0(0);
  v5 = *MEMORY[0x277D6E758];
  v6 = *(v1 + 104);
  v6(v4, v5, v0);
  sub_220891C2C();
  v7 = *(v1 + 8);
  v7(v4, v0);
  sub_22057CBE0(0);
  v6(v4, v5, v0);
  sub_220891C2C();
  return (v7)(v4, v0);
}

uint64_t sub_2206A0C44(uint64_t a1)
{
  v2 = type metadata accessor for StockSearchSectionHeaderViewLayoutAttributes(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2206A0CA0(uint64_t a1)
{
  if (!qword_2812975C0)
  {
    type metadata accessor for StockSearchSectionHeaderView();
    sub_2206A0D34(&qword_281286D38, type metadata accessor for StockSearchSectionHeaderView, &unk_22089DD08);
    v1 = sub_22088D34C();
    if (!v2)
    {
      atomic_store(v1, &qword_2812975C0);
    }
  }
}

uint64_t sub_2206A0D34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2206A0D7C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2206A0D9C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

double sub_2206A0DE8(uint64_t a1)
{
  sub_2206A0E7C();

  sub_22088D90C();
  return result;
}

unint64_t sub_2206A0E28()
{
  result = qword_27CF58A00;
  if (!qword_27CF58A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58A00);
  }

  return result;
}

unint64_t sub_2206A0E7C()
{
  result = qword_27CF58A08;
  if (!qword_27CF58A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58A08);
  }

  return result;
}

uint64_t sub_2206A0ED0(char *a1)
{
  v57 = a1;
  sub_220447AF0(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);
  v52 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v53 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v3;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v51 - v6;
  v8 = sub_2208887CC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088880C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = (&v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22044A8CC(0);
  v24 = MEMORY[0x28223BE20](v22, v23);
  v55 = v26;
  v27 = *(v26 + 16);
  v54 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v28;
  v27(v24);
  sub_220447AF0(0, &qword_281298770, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  sub_22088899C();
  sub_2208887EC();
  (*(v14 + 8))(v17, v13);
  v29 = sub_2208887BC();
  v31 = v30;
  (*(v9 + 8))(v12, v8);
  if (v31)
  {
    v32 = v29;
  }

  else
  {
    v32 = 0;
  }

  v33 = 0xE000000000000000;
  if (v31)
  {
    v33 = v31;
  }

  *v21 = v32;
  v21[1] = v33;
  swift_storeEnumTagMultiPayload();
  v34 = sub_22088969C();
  v35 = *(*(v34 - 8) + 56);
  v57 = v7;
  v35(v7, 1, 1, v34);
  v65 = 0;
  memset(v64, 0, sizeof(v64));
  v63 = 0;
  memset(v62, 0, sizeof(v62));
  sub_22064D288(v62, &v58, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  if (*(&v59 + 1))
  {
    sub_220458198(&v58, v60);
    v36 = sub_220597454(v60);
    v38 = v37;
    v40 = v39;
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  else
  {
    sub_2206A1A74(&v58, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v36 = qword_2812908F8;
    v38 = qword_281290900;
    v40 = qword_281290908;

    sub_2204A80F4(v38, v40);
  }

  v41 = v54;
  v59 = 0u;
  v58 = 0u;
  v42 = v53;
  sub_22064D288(v57, v53, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_220447AF0);
  sub_22064D288(v64, v60, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  v43 = (*(v52 + 80) + 24) & ~*(v52 + 80);
  v44 = (v51 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  sub_2205A0994(v42, v45 + v43);
  v46 = v45 + v44;
  v47 = v60[1];
  *v46 = v60[0];
  *(v46 + 16) = v47;
  *(v46 + 32) = v61;
  v48 = (v45 + ((v44 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v48 = v36;
  v48[1] = v38;
  v48[2] = v40;

  sub_2204A80F4(v38, v40);
  sub_220448B50(&qword_281298040, sub_22044A8CC, MEMORY[0x277D6D358]);
  v49 = v56;
  sub_22088E92C();

  sub_2204DA45C(v38, v40);
  sub_2206A1A74(v62, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_2206A1A74(v64, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_2206A1A74(v57, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88], sub_220447AF0);
  sub_2205BA954(v21);
  (*(v55 + 8))(v41, v49);
  sub_2206A1A74(&v58, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
  return 1;
}

uint64_t sub_2206A1874()
{

  v1 = OBJC_IVAR____TtC8StocksUI22StocksSearchURLHandler_navigator;
  sub_22044A8CC(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2206A1990()
{
  sub_220447AF0(0, &qword_281298480, MEMORY[0x277D686D0], MEMORY[0x277D83D88]);

  return sub_220598700();
}

uint64_t sub_2206A1A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t ArticleViewerViewController.navigateStack(toward:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055F760(0);
  sub_22088E10C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = MEMORY[0x277D6E358];
  v10 = type metadata accessor for StocksActivity;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_2206A1D94(0);
      v12 = *(v11 + 48);
      v13 = sub_22088CC6C();
      (*(*(v13 - 8) + 8))(&v7[v12], v13);
      v10 = type metadata accessor for ForYouSectionDescriptor;
      goto LABEL_5;
    case 4:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 12:
      sub_2205985D8(v7, type metadata accessor for StocksActivity);
      goto LABEL_3;
    case 5:
      v22 = sub_220884E9C();
      (*(*(v22 - 8) + 8))(v7, v22);
      goto LABEL_3;
    case 11:
      sub_220447880(0);

      sub_220576A0C(v7);
LABEL_3:
      v9 = MEMORY[0x277D6E358];
      goto LABEL_11;
    case 13:
      goto LABEL_11;
    default:
LABEL_5:
      sub_2205985D8(v7, v10);
      v14 = [v2 ts_transitionContainerViewController];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 navigationController];

        if (v16)
        {
          goto LABEL_9;
        }
      }

      v17 = [v2 navigationController];
      if (v17)
      {
        v16 = v17;
LABEL_9:
        v18 = v16;
      }

      v9 = MEMORY[0x277D6E350];
LABEL_11:
      v19 = *v9;
      v20 = sub_22088CD4C();
      return (*(*(v20 - 8) + 104))(a1, v19, v20);
  }
}

void sub_2206A1D94(uint64_t a1)
{
  if (!qword_28128B8B0[0])
  {
    type metadata accessor for ForYouSectionDescriptor(255);
    sub_22088CC6C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_28128B8B0);
    }
  }
}

uint64_t ArticleViewerViewController.preview(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6DEF8];
  v3 = sub_22088C5CC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2206A1E7C(uint64_t a1)
{
  result = sub_220448B98(&qword_281298A50, MEMORY[0x277D300D0], &protocol conformance descriptor for ArticleViewerViewController);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2206A1F20@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6DEF8];
  v3 = sub_22088C5CC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2206A1FB8()
{
  sub_2206A374C();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_2206A2000()
{
  v1 = [*(v0 + 16) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_22056D130(&v11);
    goto LABEL_9;
  }

  sub_22044D56C(0, &qword_28127E470, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v2 = 0;
    v3 = 0;
    goto LABEL_10;
  }

  v2 = v8;
  v3 = [v8 integerValue];
  if (v3 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v1, ~v3))
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_22056D130(&v11);
    goto LABEL_17;
  }

  sub_22044D56C(0, &qword_28127E470, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v6 = -60;
    return (v6 ^ v3) & 1;
  }

  v4 = v8;
  v5 = [v4 integerValue];

  v6 = v5 - 60;
  return (v6 ^ v3) & 1;
}

void sub_2206A21D0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v92 = a2;
  v3 = sub_220887E6C();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v88 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220887D5C();
  v90 = *(v6 - 8);
  v91 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v89 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088698C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22044D56C(0, &qword_28127E420, 0x277D86200);
  v14 = sub_2208922FC();
  v15 = sub_220891ACC();
  sub_22048D7F8(0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_220899360;
  v17 = sub_2208868EC();
  v19 = v18;
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = sub_22048D860();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  sub_22088A7EC("AudioTrackFactory: Creating AudioFeedTrack %{public}@", 53, 2, &dword_22043F000, v14, v15, v16);

  v20 = a1;
  v21 = sub_2206A2D24();
  v22 = *(v10 + 16);
  v22(v13, v20, v9);
  v93 = v20;
  v23 = sub_2208868DC();
  v24 = v94;
  sub_2206A2F04(v23);
  if (v24)
  {
    (*(v10 + 8))(v13, v9);
    swift_unknownObjectRelease();

    return;
  }

  v26 = v13;
  v85 = v10 + 16;
  v86 = v22;
  v87 = v25;
  v94 = v21;
  swift_unknownObjectRelease();
  v27 = v93;
  v28 = sub_2208868DC();
  sub_2206A37A0(v28);
  v30 = v29;
  v81 = 0;
  v83 = v26;
  v82 = v10;
  v84 = v9;
  swift_unknownObjectRelease();
  v31 = v95;
  if (sub_2206A2000())
  {
    v32 = 3;
  }

  else
  {
    v32 = 0;
  }

  if ((sub_2206A2000() & 1) == 0)
  {
    v33 = [sub_2208868DC() isFullTrackAvailableToAll];
    swift_unknownObjectRelease();
    if (!v33)
    {
      v32 |= 0x80uLL;
    }
  }

  if (sub_2206A2000() & 1 | (v94 == 0))
  {
    v34 = v32;
  }

  else
  {
    v34 = v32 | 0x100;
  }

  v80 = v34;
  v79 = v31[8];
  v35 = sub_2208868DC();
  v36 = [v35 isPaid];
  if ([v35 respondsToSelector_])
  {
    v37 = [v35 isBundlePaid];
  }

  else
  {
    v37 = 0;
  }

  v38 = [v35 sourceChannel];
  if (v38)
  {
    v39 = [v38 identifier];
    swift_unknownObjectRelease();
    v40 = sub_22089136C();
    v42 = v41;

    if (v36)
    {
      goto LABEL_17;
    }

LABEL_21:
    if ((v37 & 1) == 0)
    {
      v46 = v27;
      swift_unknownObjectRelease();

      goto LABEL_49;
    }

    goto LABEL_25;
  }

  v40 = 0;
  v42 = 0;
  if (!v36)
  {
    goto LABEL_21;
  }

LABEL_17:
  v43 = [v79 purchaseProvider];
  if (v42)
  {
    v44 = [v43 purchasedTagIDs];
    v45 = sub_2208918EC();

    LOBYTE(v44) = sub_22056F244(v40, v42, v45);

    v27 = v93;
    swift_unknownObjectRelease();
    if (v44)
    {
      v46 = v27;

      swift_unknownObjectRelease();
LABEL_49:
      v57 = 1;
      goto LABEL_51;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  if (!v37)
  {
    v46 = v27;
    swift_unknownObjectRelease();

    goto LABEL_50;
  }

LABEL_25:
  if (!v42)
  {
    v46 = v27;
    swift_unknownObjectRelease();
    goto LABEL_50;
  }

  v78 = v42;
  v47 = [objc_msgSend(v79 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v47, v47 + 1))
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v96 = 0u;
    v97 = 0u;
  }

  v98 = v96;
  v99 = v97;
  if (!*(&v97 + 1))
  {
    sub_22056D130(&v98);
    goto LABEL_36;
  }

  sub_22044D56C(0, &qword_28127E470, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:
    v48 = 0;
    v50 = 0;
    goto LABEL_37;
  }

  v48 = v100;
  v49 = [v100 integerValue];
  if (v49 == -1)
  {

    goto LABEL_48;
  }

  v50 = v49;
LABEL_37:
  if (objc_getAssociatedObject(v47, ~v50))
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v96 = 0u;
    v97 = 0u;
  }

  v98 = v96;
  v99 = v97;
  if (!*(&v97 + 1))
  {
    sub_22056D130(&v98);
LABEL_45:

    if (v50)
    {
      goto LABEL_48;
    }

LABEL_46:
    v46 = v27;

    swift_unknownObjectRelease();
    goto LABEL_50;
  }

  sub_22044D56C(0, &qword_28127E470, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_45;
  }

  v77 = v48;
  v51 = v100;
  v52 = [v51 integerValue];

  if (((v52 ^ v50) & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_48:
  v46 = v27;
  v53 = [objc_msgSend(v79 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v54 = [v53 bundleChannelIDs];

  v55 = sub_22089132C();
  v56 = [v54 containsObject_];

  swift_unknownObjectRelease();
  if (v56)
  {
    goto LABEL_49;
  }

LABEL_50:
  v57 = 0;
LABEL_51:
  v58 = v94;
  v59 = v94;
  v60 = sub_2206A339C(v46, v58);
  v61 = type metadata accessor for StocksAudioTrack(0);
  v62 = v92;
  v86(v92 + v61[5], v83, v84);
  *v62 = sub_2208868DC();
  v63 = v87;
  *(v62 + v61[6]) = v87;
  *(v62 + v61[7]) = v30;
  v64 = v80;
  *(v62 + v61[8]) = v80;
  *(v62 + v61[9]) = v57;
  *(v62 + v61[10]) = v58;
  *(v62 + v61[11]) = v60;
  v85 = v61[12];
  v86 = v60;
  v93 = v59;
  v65 = v63;
  v66 = [v65 asset];
  v67 = [v66 asset];

  if ((v64 & 0x100) != 0 && v58 && v60 && (v68 = v93, v69 = [v86 asset], v68, v69))
  {
    [v65 duration];
    [v65 embeddedUpsellStartTime];
    [v65 embeddedUpsellEndTime];
    v70 = v69;
    [v68 duration];
    [v68 playPosition];
    sub_220891E3C();
    v71 = v89;
    sub_220887D4C();
    v72 = v92;
    sub_2208875DC();

    (*(v90 + 8))(v71, v91);
    v73 = v93;
  }

  else
  {
    v72 = v92;
    sub_2208875CC();

    v73 = v93;
  }

  (*(v82 + 8))(v83, v84);
  v74 = v95[13];
  v75 = v95[14];
  __swift_project_boxed_opaque_existential_1(v95 + 10, v74);
  sub_2206C3190(v72, v74, v75);
}

id sub_2206A2D24()
{
  if ((sub_2206A2000() & 1) == 0)
  {
    v1 = sub_22088693C();
    if (v2)
    {
      v3 = v2;
      v4 = v1;
      __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
      v5 = sub_220890A5C();
      v6 = [v5 audioUpsellConfigurationsByID];

      if (v6)
      {
        sub_22044D56C(0, &unk_28127E748, 0x277D30E48);
        v7 = sub_22089126C();

        if (*(v7 + 16))
        {
          v8 = sub_2204AF97C(v4, v3);
          v10 = v9;

          if (v10)
          {
            v11 = *(*(v7 + 56) + 8 * v8);

            return v11;
          }
        }

        else
        {
        }
      }
    }

    else
    {
      sub_22044D56C(0, &qword_28127E420, 0x277D86200);
      v13 = sub_2208922FC();
      v14 = sub_220891ADC();
      sub_22048D7F8(0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_220899360;
      v16 = sub_2208868EC();
      v18 = v17;
      *(v15 + 56) = MEMORY[0x277D837D0];
      *(v15 + 64) = sub_22048D860();
      *(v15 + 32) = v16;
      *(v15 + 40) = v18;
      sub_22088A7EC("AudioTrackFactory: No upsell variant ID for headline ID: %{public}@", 67, 2, &dword_22043F000, v13, v14, v15);
    }
  }

  return 0;
}

void sub_2206A2F04(void *a1)
{
  if (sub_2206A2000())
  {
    if (([a1 respondsToSelector_] & 1) == 0 || !objc_msgSend(a1, sel_narrativeTrack))
    {
      if ([a1 respondsToSelector_])
      {
        v2 = [a1 narrativeTrackSample];
        if (v2)
        {
          v3 = v2;
          sub_22044D56C(0, &qword_28127E420, 0x277D86200);
          v4 = sub_2208922FC();
          v5 = sub_220891ADC();
          sub_22048D7F8(0);
          v6 = swift_allocObject();
          *(v6 + 16) = xmmword_220899920;
          sub_22089264C();
          *(v6 + 56) = MEMORY[0x277D837D0];
          *(v6 + 64) = sub_22048D860();
          *(v6 + 32) = 0;
          *(v6 + 40) = 0xE000000000000000;
          *(v6 + 96) = sub_22044D56C(0, &qword_28127E768, 0x277D30DD0);
          *(v6 + 104) = sub_2206A3A94();
          *(v6 + 72) = v3;
          v7 = v3;
          sub_22088A7EC("AudioTrackFactory: Asked to convert a headline %{public}@ as a subscribed user, but only found a sample track %{public}@", 120, 2, &dword_22043F000, v4, v5, v6);

          sub_2206A3A40();
          swift_allocError();
          *v8 = 1;
LABEL_12:
          swift_willThrow();

          return;
        }
      }

LABEL_13:
      sub_22044D56C(0, &qword_28127E420, 0x277D86200);
      v15 = sub_2208922FC();
      v16 = sub_220891ADC();
      sub_22048D7F8(0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_220899360;
      sub_22044826C();
      sub_22089264C();
      *(v17 + 56) = MEMORY[0x277D837D0];
      *(v17 + 64) = sub_22048D860();
      *(v17 + 32) = 0;
      *(v17 + 40) = 0xE000000000000000;
      sub_22088A7EC("AudioTrackFactory: Asked to convert a headline but found no tracks %{public}@", 77, 2, &dword_22043F000, v15, v16, v17);

      sub_2206A3A40();
      swift_allocError();
      *v18 = 0;
      swift_willThrow();
    }
  }

  else if (([a1 respondsToSelector_] & 1) == 0 || !objc_msgSend(a1, sel_narrativeTrackSample))
  {
    if ([a1 respondsToSelector_])
    {
      v9 = [a1 narrativeTrack];
      if (v9)
      {
        v10 = v9;
        sub_22044D56C(0, &qword_28127E420, 0x277D86200);
        v11 = sub_2208922FC();
        v12 = sub_220891ADC();
        sub_22048D7F8(0);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_220899920;
        sub_22089264C();
        *(v13 + 56) = MEMORY[0x277D837D0];
        *(v13 + 64) = sub_22048D860();
        *(v13 + 32) = 0;
        *(v13 + 40) = 0xE000000000000000;
        *(v13 + 96) = sub_22044D56C(0, &qword_28127E768, 0x277D30DD0);
        *(v13 + 104) = sub_2206A3A94();
        *(v13 + 72) = v10;
        v7 = v10;
        sub_22088A7EC("AudioTrackFactory: Asked to convert a headline %{public}@ as a non-subscribed user, but only found a full track %{public}@", 122, 2, &dword_22043F000, v11, v12, v13);

        sub_2206A3A40();
        swift_allocError();
        *v14 = 2;
        goto LABEL_12;
      }
    }

    goto LABEL_13;
  }
}

id sub_2206A339C(uint64_t a1, void *a2)
{
  v4 = sub_220884E9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v34 - v11;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v34 - v15;
  v17 = sub_2206A2000();
  result = 0;
  if ((v17 & 1) == 0 && a2)
  {
    v19 = a2;
    v20 = [v19 URL];
    if (v20)
    {
      v35 = v19;
      v21 = v20;
      sub_220884E4C();

      v34 = v2;
      v22 = *(v5 + 32);
      v22(v16, v12, v4);
      v38 = 0;
      v39 = 0xE000000000000000;
      sub_22089254C();
      v23 = sub_2208868EC();
      v25 = v24;

      v38 = v23;
      v39 = v25;
      MEMORY[0x223D89680](0xD000000000000012, 0x80000002208CCBF0);
      (*(v5 + 16))(v8, v16, v4);
      v26 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v27 = swift_allocObject();
      v22((v27 + v26), v8, v4);
      v28 = swift_allocObject();
      *(v28 + 16) = sub_2206A3940;
      *(v28 + 24) = v27;
      v36 = sub_2206A39A4;
      v37 = v28;
      sub_2206A39CC();
      v29 = sub_2208913DC();
      MEMORY[0x223D89680](v29);

      v30 = *(v34 + 72);
      v31 = sub_22089132C();

      v32 = sub_220884E3C();
      v33 = [v30 assetWithIdentifier:v31 remoteURL:v32 overrideMIMEType:0];

      (*(v5 + 8))(v16, v4);
      return v33;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_2206A36AC()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  return swift_deallocClassInstance();
}

unint64_t sub_2206A374C()
{
  result = qword_27CF58A18;
  if (!qword_27CF58A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58A18);
  }

  return result;
}

void sub_2206A37A0(void *a1)
{
  if (([a1 respondsToSelector_] & 1) != 0 && (v2 = objc_msgSend(a1, sel_narrativeTrack)) != 0)
  {
    v3 = v2;
    [v2 duration];
  }

  else
  {
    sub_22044D56C(0, &qword_28127E420, 0x277D86200);
    v4 = sub_2208922FC();
    v5 = sub_220891ADC();
    sub_22048D7F8(0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_220899360;
    sub_22044826C();
    sub_22089264C();
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = sub_22048D860();
    *(v6 + 32) = 0;
    *(v6 + 40) = 0xE000000000000000;
    sub_22088A7EC("AudioTrackFactory: No full narrative track found for headline: %{public}@", 73, 2, &dword_22043F000, v4, v5, v6);

    sub_2206A3A40();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
  }
}