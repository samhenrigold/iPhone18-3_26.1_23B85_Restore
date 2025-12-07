unint64_t sub_29D6E8960()
{
  result = qword_2A17B20E8;
  if (!qword_2A17B20E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B20E8);
  }

  return result;
}

id sub_29D6E89B4(uint64_t a1)
{
  result = [objc_opt_self() sharedInstanceForHealthStore_];
  if (result)
  {
    v3 = result;
    v4 = sub_29D93A138();
    v5 = [v3 displayTypeWithIdentifier_];

    if (v5)
    {
      v6 = [objc_allocWithZone(MEMORY[0x29EDC47D8]) initWithDisplayType:v5 healthStore:a1 shouldEmbedInScrollView:0];

      return v6;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_29D6E8A7C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 profileIdentifier];
  v4 = [v3 type];

  if (v4 == 1)
  {
    sub_29D6EA34C(0, v5);
    v7 = (a2 + *(v6 + 80));
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    *a2 = sub_29D9334A8();
    a2[1] = v8;
    a2[2] = sub_29D9334A8();
    a2[3] = v9;
    sub_29D939D68();
    v22 = sub_29D939E88();
    v23 = v10;
    sub_29D939E38();
    a2[4] = v22;
    a2[5] = v23;
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *v7 = sub_29D6EA5B4;
    v7[1] = v11;
    v12 = *MEMORY[0x29EDC15B8];
    v13 = sub_29D934538();
    (*(*(v13 - 8) + 104))(v7, v12, v13);
    v14 = *MEMORY[0x29EDC15E8];
    v15 = sub_29D934548();
    (*(*(v15 - 8) + 104))(a2, v14, v15);

    return a1;
  }

  else
  {
    if (qword_2A1A257A0 != -1)
    {
      swift_once();
    }

    *a2 = sub_29D9334A8();
    a2[1] = v17;
    *(a2 + 16) = 0;
    v18 = *MEMORY[0x29EDC1630];
    v19 = sub_29D934548();
    v20 = *(*(v19 - 8) + 104);

    return v20(a2, v18, v19);
  }
}

void sub_29D6E8E08(void *a1, void *a2)
{
  v3 = a2;
  sub_29D93A388();
  v4 = objc_allocWithZone(sub_29D936F58());
  v7 = sub_29D936F48();
  [v7 setAccessType_];
  v5 = [a1 navigationController];
  if (v5)
  {
    v6 = v5;
    [v5 pushViewController:v7 animated:1];
  }
}

void sub_29D6E8EC8(void *a1)
{
  v2 = sub_29D934548();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v136 = v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6E9F34(0, &qword_2A1A247B0, MEMORY[0x29EDB9B18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v121 = v118 - v8;
  sub_29D6E9F00(0);
  v10 = v9;
  v11 = *(v9 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v9, v12);
  v15 = v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v13, v16);
  v135 = v118 - v18;
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = (v118 - v20);
  v22 = v3;
  v25 = *(v3 + 56);
  v24 = v3 + 56;
  v23 = v25;
  v25((v118 - v20), 1, 1, v2);
  v119 = a1;
  v26 = sub_29D6E89B4(a1);
  if (v26)
  {
    v27 = v26;
    sub_29D6EA550(v21);
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    *v21 = sub_29D6EA5AC;
    v21[1] = v28;
    (*(v22 + 104))(v21, *MEMORY[0x29EDC15A0], v2);
    v23(v21, 0, 1, v2);
  }

  v134 = v15;
  sub_29D6E9F34(0, &qword_2A17B20F8, sub_29D6E9F00, MEMORY[0x29EDC9E90]);
  v29 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v125 = *(v11 + 72);
  v30 = swift_allocObject();
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v120 = v21;
  v31 = qword_2A1A2C038;
  v32 = sub_29D939D28();
  v33 = [objc_opt_self() imageNamed:v32 inBundle:v31];

  if (!v33)
  {
    __break(1u);
    goto LABEL_18;
  }

  v118[2] = v10;
  v118[1] = v30;
  v34 = v30 + v29;
  *v34 = v33;
  *(v34 + 8) = 0;
  v35 = *(v22 + 104);
  v35(v30 + v29, *MEMORY[0x29EDC1608], v2);
  v23((v30 + v29), 0, 1, v2);
  v132 = v23;
  v36 = (v30 + v29 + v125);
  v129 = v24;
  v123 = "verview_article_hero";
  *v36 = sub_29D9334A8();
  v36[1] = v37;
  v38 = *MEMORY[0x29EDC1610];
  v124 = v2;
  v35(v36, v38, v2);
  v131 = v35;
  v23(v36, 0, 1, v2);
  v39 = v125;
  v40 = v34 + 2 * v125;
  v133 = v22;
  *v40 = sub_29D9334A8();
  *(v40 + 8) = v41;
  *(v40 + 16) = 0;
  v42 = *MEMORY[0x29EDC1630];
  v43 = v31;
  v44 = v124;
  v35(v34 + 2 * v39, v42, v124);
  v45 = v132;
  v132(v34 + 2 * v39, 0, 1, v44);
  v46 = v34 + 3 * v39;
  *v46 = sub_29D9334A8();
  *(v46 + 8) = v47;
  *(v46 + 16) = 0;
  v126 = v42;
  v48 = v42;
  v49 = v124;
  v130 = v22 + 104;
  v131(v46, v48, v124);
  v45(v46, 0, 1, v49);
  v122 = v34;
  v50 = (v34 + 4 * v39);
  v127 = 0xD000000000000013;
  *v50 = sub_29D9334A8();
  v50[1] = v51;
  v128 = v43;
  v50[2] = sub_29D9334A8();
  v50[3] = v52;
  v53 = sub_29D939D68();
  v139 = 0xD00000000000003ELL;
  v140 = 0x800000029D95A520;
  v137 = v53;
  v138 = v54;
  v55 = v39;
  v137 = sub_29D939E88();
  v138 = v56;
  sub_29D939E38();
  v57 = v138;
  v50[4] = v137;
  v50[5] = v57;
  v58 = v121;
  sub_29D9336E8();
  v59 = sub_29D9336F8();
  v60 = *(v59 - 8);
  v61 = (*(v60 + 48))(v58, 1, v59);
  v63 = v124;
  if (v61 == 1)
  {
LABEL_18:
    __break(1u);
    return;
  }

  sub_29D6EA34C(0, v62);
  v65 = *(v64 + 80);
  (*(v60 + 32))(v50 + v65, v58, v59);
  v66 = *MEMORY[0x29EDC15C0];
  v67 = sub_29D934538();
  (*(*(v67 - 8) + 104))(v50 + v65, v66, v67);
  v68 = v131;
  v131(v50, *MEMORY[0x29EDC15E8], v63);
  v69 = v132;
  v132(v50, 0, 1, v63);
  v70 = v122;
  v71 = (v122 + 5 * v55);
  *v71 = sub_29D9334A8();
  v71[1] = v72;
  v71[2] = 0;
  LODWORD(v121) = *MEMORY[0x29EDC15D0];
  v73 = v121;
  v68(v70 + 5 * v55, v121, v63);
  v69(v70 + 5 * v55, 0, 1, v63);
  sub_29D6EA488(v120, v70 + 6 * v55);
  v74 = 7 * v55;
  v75 = 8 * v55;
  v118[0] = v75;
  v76 = (v70 + v74);
  *v76 = sub_29D9334A8();
  v76[1] = v77;
  v76[2] = 0;
  v78 = v131;
  v131(v76, v73, v63);
  v79 = v132;
  v132(v76, 0, 1, v63);
  v80 = v70 + v75;
  *v80 = sub_29D9334A8();
  *(v80 + 8) = v81;
  *(v80 + 16) = 0;
  v78(v70 + v75, v126, v63);
  v79(v70 + v75, 0, 1, v63);
  v82 = v125;
  v83 = v118[0] + v125;
  sub_29D6E8A7C(v119, (v70 + v118[0] + v125));
  v79(v70 + v83, 0, 1, v63);
  v84 = (v70 + 10 * v82);
  *v84 = sub_29D9334A8();
  v84[1] = v85;
  v84[2] = 0;
  v86 = v131;
  v131(v84, v121, v63);
  v79(v84, 0, 1, v63);
  v87 = v70 + 11 * v82;
  *v87 = sub_29D9334A8();
  *(v87 + 8) = v88;
  *(v87 + 16) = 0;
  v86(v87, v126, v63);
  v89 = v132;
  v132(v87, 0, 1, v63);
  v90 = (v70 + 12 * v82);
  *v90 = sub_29D9334A8();
  v90[1] = v91;
  v90[2] = 0;
  v86(v90, v121, v63);
  v89(v90, 0, 1, v63);
  v92 = v70 + 13 * v82;
  *v92 = sub_29D9334A8();
  *(v92 + 8) = v93;
  *(v92 + 16) = 0;
  v86(v92, v126, v63);
  v94 = v132;
  v132(v92, 0, 1, v63);
  v95 = (v70 + 14 * v82);
  *v95 = sub_29D9334A8();
  v95[1] = v96;
  v95[2] = 0;
  v86(v95, v121, v63);
  v94(v95, 0, 1, v63);
  v121 = (16 * v82);
  v97 = v122;
  v98 = v82;
  v99 = v122 + 15 * v82;
  *v99 = sub_29D9334A8();
  *(v99 + 8) = v100;
  *(v99 + 16) = 0;
  v101 = v126;
  v102 = v131;
  v131(v99, v126, v63);
  v103 = v132;
  v132(v99, 0, 1, v63);
  v104 = &v121[v97];
  *v104 = sub_29D9334A8();
  *(v104 + 1) = v105;
  v104[16] = 0;
  v102(v104, v101, v63);
  v103(v104, 0, 1, v63);
  v106 = v134;
  v107 = (v133 + 48);
  v108 = (v133 + 32);
  v109 = MEMORY[0x29EDCA190];
  v110 = 17;
  v111 = v63;
  v112 = v63;
  do
  {
    v113 = v135;
    sub_29D6EA488(v97, v135);
    sub_29D6EA4EC(v113, v106);
    if ((*v107)(v106, 1, v111) == 1)
    {
      sub_29D6EA550(v106);
    }

    else
    {
      v114 = *v108;
      (*v108)(v136, v106, v111);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v109 = sub_29D68FA8C(0, v109[2] + 1, 1, v109);
      }

      v116 = v109[2];
      v115 = v109[3];
      if (v116 >= v115 >> 1)
      {
        v109 = sub_29D68FA8C((v115 > 1), v116 + 1, 1, v109);
      }

      v109[2] = v116 + 1;
      v117 = v109 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v116;
      v111 = v112;
      v114(v117, v136, v112);
      v106 = v134;
    }

    v97 += v98;
    --v110;
  }

  while (v110);
  sub_29D6EA550(v120);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
}

void sub_29D6E9F34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D6E9FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

uint64_t sub_29D6EA0A4()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  return sub_29D9334A8();
}

void sub_29D6EA144()
{
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A2C038;
  v1 = sub_29D939D28();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (!v2)
  {
    __break(1u);
  }
}

uint64_t sub_29D6EA208()
{
  sub_29D6C5040(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D9403F0;
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  *(inited + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA970]);
  *(inited + 40) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA908]);
  sub_29D69567C(0, &qword_2A1A24918, 0x29EDBAA68);
  *(inited + 48) = MEMORY[0x29ED6A6B0](*MEMORY[0x29EDBA490]);
  v1 = sub_29D7AF2C4(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v1;
}

void sub_29D6EA34C(uint64_t a1, uint64_t a2)
{
  if (!qword_2A17B2100)
  {
    MEMORY[0x2A1C7C4A8](a1, a2);
    sub_29D6C5040(255, &qword_2A1A22290, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9C68]);
    sub_29D934538();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_2A17B2100);
    }
  }
}

uint64_t sub_29D6EA488(uint64_t a1, uint64_t a2)
{
  sub_29D6E9F00(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D6EA4EC(uint64_t a1, uint64_t a2)
{
  sub_29D6E9F00(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D6EA550(uint64_t a1)
{
  sub_29D6E9F00(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for BloodPressurePDFPregnancyChart(uint64_t a1)
{
  result = qword_2A17B2110;
  if (!qword_2A17B2110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D6EA674(uint64_t a1)
{
  sub_29D9339F8();
  if (v1 <= 0x3F)
  {
    sub_29D6EA774(319);
    if (v2 <= 0x3F)
    {
      sub_29D6A08F8(319);
      if (v3 <= 0x3F)
      {
        sub_29D6F0DFC(319, &qword_2A17B1E90, MEMORY[0x29EDCA210], MEMORY[0x29EDC9C68]);
        if (v4 <= 0x3F)
        {
          sub_29D6EA5E0(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_29D6EA7A8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v139 = a1;
  v132 = a2;
  sub_29D6D6C48(0);
  v123 = v2;
  v4 = MEMORY[0x2A1C7C4A8](v2, v3);
  v122 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v119 = &v112 - v7;
  sub_29D6D6634(0);
  v131 = v8;
  MEMORY[0x2A1C7C4A8](v8, v9);
  v129 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F17A0(0);
  MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v14 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F08C0(0, v15);
  v17 = *(v16 - 8);
  v135 = v16;
  v136 = v17;
  MEMORY[0x2A1C7C4A8](v16, v18);
  v133 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F07C8(0, v20);
  v140 = v21;
  v137 = *(v21 - 8);
  MEMORY[0x2A1C7C4A8](v21, v22);
  v134 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F0650(0, v24);
  v120 = v25;
  v118 = *(v25 - 8);
  MEMORY[0x2A1C7C4A8](v25, v26);
  v141 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F0488(0, v28);
  v126 = v29;
  v124 = *(v29 - 8);
  MEMORY[0x2A1C7C4A8](v29, v30);
  v121 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F024C(0, v32);
  v130 = v33;
  v128 = *(v33 - 8);
  v35 = MEMORY[0x2A1C7C4A8](v33, v34);
  v127 = &v112 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v35, v37);
  v138 = &v112 - v38;
  sub_29D6F17D4(0);
  MEMORY[0x2A1C7C4A8](v39 - 8, v40);
  v42 = &v112 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_29D6EB490();
  v144 = v43;
  sub_29D69AB60();
  v44 = sub_29D9392F8();
  v46 = v45;
  v48 = v47;
  sub_29D939198();
  v49 = sub_29D939168();
  (*(*(v49 - 8) + 56))(v42, 1, 1, v49);
  sub_29D9391A8();
  sub_29D6F1810(v42, sub_29D6F17D4);
  v50 = sub_29D9392C8();
  v52 = v51;
  v54 = v53;

  sub_29D69ABB4(v44, v46, v48 & 1);

  v55 = [objc_opt_self() systemGrayColor];
  v143 = sub_29D939528();
  v115 = sub_29D9392B8();
  v117 = v56;
  v116 = v57;
  v59 = v58;
  sub_29D69ABB4(v50, v52, v54 & 1);

  v60 = v139;
  v142 = v139;
  sub_29D6F0924(0);
  sub_29D6F0C40();
  v61 = v133;
  sub_29D937E58();
  v147 = &unk_2A243CF90;
  v62 = sub_29D938028();
  v63 = *(v62 - 8);
  v64 = *(v63 + 56);
  v114 = v62;
  v113 = v64;
  v112 = v63 + 56;
  (v64)(v14, 1, 1);
  sub_29D6F0DFC(0, &qword_2A17B21B8, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9A40]);
  v66 = v65;
  v67 = sub_29D6F00D4(&qword_2A17B21C0, sub_29D6F08C0, MEMORY[0x29EDB8690]);
  v68 = sub_29D6F0E4C();
  v69 = v134;
  v70 = v135;
  sub_29D939358();
  v125 = v14;
  sub_29D6F1810(v14, sub_29D6F17A0);
  (*(v136 + 8))(v61, v70);
  sub_29D6F0EE0(0);
  v72 = v71;
  v143 = v70;
  v144 = v66;
  v145 = v67;
  v146 = v68;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v74 = sub_29D6F00D4(&qword_2A17B21D8, sub_29D6F0EE0, MEMORY[0x29EDB86F8]);
  v75 = v140;
  sub_29D939338();
  (*(v137 + 8))(v69, v75);
  v76 = v60 + *(type metadata accessor for BloodPressurePDFPregnancyChart(0) + 20);
  v77 = sub_29D9339F8();
  sub_29D6F00D4(&qword_2A17B4730, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
  v78 = v60;
  if (sub_29D939CD8())
  {
    v79 = *(v77 - 8);
    v135 = v74;
    v136 = OpaqueTypeConformance2;
    v80 = v79;
    v81 = *(v79 + 16);
    v137 = v59;
    v82 = v119;
    v81(v119, v78, v77);
    v83 = v123;
    v81((v82 + *(v123 + 48)), v76, v77);
    v84 = v122;
    sub_29D6F1870(v82, v122, sub_29D6D6C48);
    v85 = *(v83 + 48);
    v86 = *(v80 + 32);
    v87 = v129;
    v86(v129, v84, v77);
    v134 = v72;
    v88 = *(v80 + 8);
    v88(v84 + v85, v77);
    sub_29D6F1E34(v82, v84, sub_29D6D6C48);
    v89 = *(v83 + 48);
    v90 = v131;
    v86((v87 + *(v131 + 9)), v84 + v89, v77);
    v88(v84, v77);
    v91 = v125;
    v113(v125, 1, 1, v114);
    v143 = v140;
    v144 = v134;
    v145 = v136;
    v146 = v135;
    v92 = swift_getOpaqueTypeConformance2();
    v93 = sub_29D6D66C8();
    v94 = v121;
    v95 = v120;
    v96 = v141;
    sub_29D939348();
    sub_29D6F1810(v91, sub_29D6F17A0);
    sub_29D6F1810(v87, sub_29D6D6634);
    v97 = (*(v118 + 8))(v96, v95);
    v141 = &v112;
    MEMORY[0x2A1C7C4A8](v97, v98);
    *(&v112 - 2) = v139;
    sub_29D6F0F1C(0);
    v143 = v95;
    v144 = v90;
    v145 = v92;
    v146 = v93;
    swift_getOpaqueTypeConformance2();
    sub_29D6F00D4(&qword_2A17B2260, sub_29D6F0F1C, MEMORY[0x29EDB86F8]);
    v99 = v138;
    v100 = v126;
    sub_29D939328();
    (*(v124 + 8))(v94, v100);
    LOBYTE(v143) = v116 & 1;
    v101 = v128;
    v102 = *(v128 + 16);
    v103 = v127;
    v104 = v99;
    v105 = v130;
    v106.n128_f64[0] = v102(v127, v104, v130);
    LOBYTE(v92) = v143;
    v107 = v132;
    v108 = v115;
    v109 = v117;
    *v132 = v115;
    v107[1] = v109;
    *(v107 + 16) = v92;
    v107[3] = v137;
    sub_29D6F01E4(0, v106);
    v102(v107 + *(v110 + 48), v103, v105);
    sub_29D6F18E0(v108, v109, v92);
    v111 = *(v101 + 8);
    sub_29D935E88();
    v111(v138, v105);
    v111(v103, v105);
    sub_29D69ABB4(v108, v109, v143);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D6EB490()
{
  sub_29D6F1DA0(0, &qword_2A17B22C8, sub_29D6F1E00);
  v147 = v1;
  MEMORY[0x2A1C7C4A8](v1, v2);
  v149 = &v140 - v3;
  sub_29D6A08F8(0);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v150 = &v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_29D9339F8();
  v156 = *(v164 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v164, v7);
  v142 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x2A1C7C4A8](v8, v10);
  v151 = &v140 - v12;
  v14 = MEMORY[0x2A1C7C4A8](v11, v13);
  v140 = &v140 - v15;
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v143 = &v140 - v18;
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v153 = &v140 - v21;
  v23 = MEMORY[0x2A1C7C4A8](v20, v22);
  v162 = &v140 - v24;
  MEMORY[0x2A1C7C4A8](v23, v25);
  v27 = &v140 - v26;
  v28 = type metadata accessor for BloodPressurePDFSampleInterval(0);
  v29 = *(v28 - 8);
  v31 = MEMORY[0x2A1C7C4A8](v28, v30);
  v141 = &v140 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x2A1C7C4A8](v31, v33);
  v146 = &v140 - v35;
  v37 = MEMORY[0x2A1C7C4A8](v34, v36);
  v144 = &v140 - v38;
  v40 = MEMORY[0x2A1C7C4A8](v37, v39);
  v145 = &v140 - v41;
  v43 = MEMORY[0x2A1C7C4A8](v40, v42);
  v148 = &v140 - v44;
  v46 = MEMORY[0x2A1C7C4A8](v43, v45);
  v48 = &v140 - v47;
  v50 = MEMORY[0x2A1C7C4A8](v46, v49);
  v152 = &v140 - v51;
  MEMORY[0x2A1C7C4A8](v50, v52);
  v54 = &v140 - v53;
  sub_29D6F1E00(0);
  v57 = MEMORY[0x2A1C7C4A8](v55 - 8, v56);
  v155 = &v140 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v57, v59);
  v61 = (&v140 - v60);
  v157 = type metadata accessor for BloodPressurePDFPregnancyChart(0);
  v158 = v0;
  v62 = *(v0 + v157[6]);
  v63 = *(v62 + 16);
  v165 = v28;
  v163 = v29;
  v154 = v61;
  v161 = v27;
  if (v63)
  {
    v64 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v160 = v62;
    v65 = v62 + v64;
    sub_29D6F1870(v62 + v64, v54, type metadata accessor for BloodPressurePDFSampleInterval);
    v159 = v63;
    v66 = v63 == 1;
    v67 = v29;
    if (!v66)
    {
      v61 = (v156 + 8);
      v105 = 1;
      while (v105 < *(v160 + 16))
      {
        sub_29D6F1870(v65 + *(v67 + 72) * v105, v48, type metadata accessor for BloodPressurePDFSampleInterval);
        sub_29D9331A8();
        v106 = v162;
        sub_29D9331A8();
        v107 = sub_29D933978();
        v108 = *v61;
        v109 = v164;
        (*v61)(v106, v164);
        v108(v27, v109);
        if (v107)
        {
          sub_29D6F1810(v54, type metadata accessor for BloodPressurePDFSampleInterval);
          sub_29D6F1E34(v48, v54, type metadata accessor for BloodPressurePDFSampleInterval);
        }

        else
        {
          sub_29D6F1810(v48, type metadata accessor for BloodPressurePDFSampleInterval);
        }

        ++v105;
        v28 = v165;
        v67 = v163;
        if (v159 == v105)
        {
          goto LABEL_4;
        }
      }

      __break(1u);
      goto LABEL_51;
    }

LABEL_4:
    v61 = v154;
    sub_29D6F1E34(v54, v154, type metadata accessor for BloodPressurePDFSampleInterval);
    v68 = *(v67 + 56);
    v68(v61, 0, 1, v28);
  }

  else
  {
    v68 = *(v29 + 56);
    v68(v61, 1, 1, v28);
    v67 = v29;
  }

  v69 = *(v158 + v157[8]);
  v70 = *(v69 + 16);
  v28 = v152;
  if (v70)
  {
    v71 = v69 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
    v159 = v68;
    v160 = v71;
    sub_29D6F1870(v71, v152, type metadata accessor for BloodPressurePDFSampleInterval);
    v72 = v148;
    if (v70 != 1)
    {
      v61 = (v156 + 8);
      v110 = 1;
      while (v110 < *(v69 + 16))
      {
        sub_29D6F1870(v160 + *(v67 + 72) * v110, v72, type metadata accessor for BloodPressurePDFSampleInterval);
        v111 = v161;
        sub_29D9331A8();
        v112 = v162;
        sub_29D9331A8();
        v113 = sub_29D933978();
        v114 = *v61;
        v115 = v112;
        v116 = v164;
        (*v61)(v115, v164);
        v114(v111, v116);
        if (v113)
        {
          sub_29D6F1810(v28, type metadata accessor for BloodPressurePDFSampleInterval);
          sub_29D6F1E34(v72, v28, type metadata accessor for BloodPressurePDFSampleInterval);
        }

        else
        {
          sub_29D6F1810(v72, type metadata accessor for BloodPressurePDFSampleInterval);
        }

        ++v110;
        v67 = v163;
        if (v70 == v110)
        {
          goto LABEL_8;
        }
      }

LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_8:
    v73 = v28;
    v28 = v155;
    sub_29D6F1E34(v73, v155, type metadata accessor for BloodPressurePDFSampleInterval);
    v74 = 0;
    v61 = v154;
    v68 = v159;
  }

  else
  {
    v74 = 1;
    v28 = v155;
  }

  v75 = v165;
  v68(v28, v74, 1, v165);
  v76 = v67;
  v77 = v150;
  sub_29D6F1870(v158 + v157[7], v150, sub_29D6A08F8);
  v78 = v156;
  v79 = v164;
  v80 = (*(v156 + 48))(v77, 1, v164);
  v81 = v151;
  if (v80 == 1)
  {
    sub_29D6F1810(v77, sub_29D6A08F8);
    if (qword_2A1A24658 == -1)
    {
LABEL_12:
      v82 = sub_29D937898();
      sub_29D69C6C0(v82, qword_2A1A2BF10);
      v83 = sub_29D937878();
      v84 = sub_29D93A288();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = v28;
        v87 = swift_slowAlloc();
        v166[0] = v87;
        *v85 = 136642819;
        *(v85 + 4) = sub_29D6C2364(0xD00000000000001ELL, 0x800000029D942150, v166);
        _os_log_impl(&dword_29D677000, v83, v84, "[%{sensitive}s] Most recent start date not found", v85, 0xCu);
        sub_29D69417C(v87);
        v88 = v87;
        v28 = v86;
        MEMORY[0x29ED6BE30](v88, -1, -1);
        MEMORY[0x29ED6BE30](v85, -1, -1);
      }

      if (qword_2A17B0D98 != -1)
      {
        swift_once();
      }

      v89 = sub_29D9334A8();
      goto LABEL_17;
    }

LABEL_52:
    swift_once();
    goto LABEL_12;
  }

  v163 = 0x800000029D95A780;
  (*(v78 + 32))(v153, v77, v79);
  v91 = v28;
  v92 = *(v147 + 48);
  v93 = v149;
  sub_29D6F1870(v61, v149, sub_29D6F1E00);
  sub_29D6F1870(v91, v93 + v92, sub_29D6F1E00);
  v94 = *(v76 + 48);
  v95 = v94(v93, 1, v75);
  v96 = v94(v93 + v92, 1, v75);
  if (v95 == 1)
  {
    if (v96 == 1)
    {
      if (qword_2A1A24658 != -1)
      {
        swift_once();
      }

      v97 = sub_29D937898();
      sub_29D69C6C0(v97, qword_2A1A2BF10);
      v98 = sub_29D937878();
      v99 = sub_29D93A288();
      v100 = os_log_type_enabled(v98, v99);
      v101 = v153;
      if (v100)
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v166[0] = v103;
        *v102 = 136642819;
        *(v102 + 4) = sub_29D6C2364(0xD00000000000001ELL, 0x800000029D942150, v166);
        _os_log_impl(&dword_29D677000, v98, v99, "[%{sensitive}s] None found", v102, 0xCu);
        sub_29D69417C(v103);
        MEMORY[0x29ED6BE30](v103, -1, -1);
        MEMORY[0x29ED6BE30](v102, -1, -1);
      }

      v104 = v156;
      if (qword_2A17B0D98 != -1)
      {
        swift_once();
      }

      v89 = sub_29D9334A8();
      (*(v104 + 8))(v101, v79);
      v28 = v155;
    }

    else
    {
      v123 = v141;
      sub_29D6F1E34(v149 + v92, v141, type metadata accessor for BloodPressurePDFSampleInterval);
      v124 = v161;
      sub_29D9331A8();
      v89 = sub_29D6EF914(v124, 0xD000000000000022, v163);
      v125 = *(v156 + 8);
      v125(v124, v79);
      sub_29D6F1810(v123, type metadata accessor for BloodPressurePDFSampleInterval);
      v125(v153, v79);
      v28 = v155;
    }
  }

  else
  {
    v117 = 0x800000029D95A760;
    if (v96 == 1)
    {
      v118 = 0xD000000000000022;
      sub_29D6F1E34(v149, v146, type metadata accessor for BloodPressurePDFSampleInterval);
      v119 = v156;
      v120 = *(v156 + 16);
      v120(v81, v153, v79);
      v121 = v81;
      v122 = v142;
      sub_29D933178();
      if (sub_29D933978())
      {
        (*(v119 + 8))(v121, v79);
        v120(v121, v122, v79);
        v117 = v163;
      }

      else
      {
        v118 = 0xD00000000000001DLL;
      }

      v89 = sub_29D6EF914(v121, v118, v117);

      v138 = *(v119 + 8);
      v138(v122, v79);
      v138(v121, v79);
      sub_29D6F1810(v146, type metadata accessor for BloodPressurePDFSampleInterval);
      v138(v153, v79);
      v28 = v155;
    }

    else
    {
      v162 = 0x800000029D95A760;
      v126 = 0xD000000000000022;
      v127 = v149;
      sub_29D6F1E34(v149, v145, type metadata accessor for BloodPressurePDFSampleInterval);
      v128 = v144;
      sub_29D6F1E34(v127 + v92, v144, type metadata accessor for BloodPressurePDFSampleInterval);
      v129 = v143;
      sub_29D933178();
      v130 = v161;
      sub_29D9331A8();
      v131 = sub_29D933968();
      v132 = v156;
      v133 = *(v156 + 8);
      v133(v130, v79);
      if (v131)
      {
        v134 = *(v132 + 16);
        v135 = v140;
        v136 = v164;
        v134(v140, v153, v164);
        if (sub_29D933978())
        {
          v133(v135, v136);
          v134(v135, v129, v136);
          v137 = v163;
          v61 = v154;
          v28 = v155;
        }

        else
        {
          v126 = 0xD00000000000001DLL;
          v61 = v154;
          v28 = v155;
          v137 = v162;
        }

        v89 = sub_29D6EF914(v135, v126, v137);

        v133(v135, v136);
        v133(v129, v136);
        sub_29D6F1810(v144, type metadata accessor for BloodPressurePDFSampleInterval);
        sub_29D6F1810(v145, type metadata accessor for BloodPressurePDFSampleInterval);
        v133(v153, v136);
      }

      else
      {
        sub_29D9331A8();
        v89 = sub_29D6EF914(v130, 0xD000000000000022, v163);
        v139 = v164;
        v133(v130, v164);
        v133(v129, v139);
        sub_29D6F1810(v128, type metadata accessor for BloodPressurePDFSampleInterval);
        sub_29D6F1810(v145, type metadata accessor for BloodPressurePDFSampleInterval);
        v133(v153, v139);
        v61 = v154;
        v28 = v155;
      }
    }
  }

LABEL_17:
  sub_29D6F1810(v28, sub_29D6F1E00);
  sub_29D6F1810(v61, sub_29D6F1E00);
  return v89;
}

uint64_t sub_29D6EC5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  sub_29D6F1DA0(0, &qword_2A17B22B0, sub_29D6F098C);
  v66 = v3 - 8;
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v65 = &v51 - v5;
  v6 = type metadata accessor for BloodPressurePDFPregnancyChart(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v59 = v10;
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v11;
  sub_29D6F098C(0);
  v57 = v12;
  v64 = *(v12 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v12, v13);
  v63 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v14, v16);
  v68 = &v51 - v18;
  v20 = MEMORY[0x2A1C7C4A8](v17, v19);
  v62 = &v51 - v21;
  MEMORY[0x2A1C7C4A8](v20, v22);
  v24 = &v51 - v23;
  v73 = *(a1 + *(v7 + 32));
  v60 = a1;
  v61 = type metadata accessor for BloodPressurePDFPregnancyChart;
  sub_29D6F1870(a1, v11, type metadata accessor for BloodPressurePDFPregnancyChart);
  v25 = *(v8 + 80);
  v56 = (v25 + 16) & ~v25;
  v26 = swift_allocObject();
  v58 = type metadata accessor for BloodPressurePDFPregnancyChart;
  sub_29D6F1E34(v11, v26 + ((v25 + 16) & ~v25), type metadata accessor for BloodPressurePDFPregnancyChart);
  sub_29D6EA774(0);
  sub_29D9339F8();
  sub_29D6F0A90(0);
  v54 = v27;
  v53 = sub_29D6F00D4(&qword_2A17B21A0, sub_29D6EA774, MEMORY[0x29EDC9A80]);
  sub_29D6F0BA8(255);
  v29 = v28;
  v30 = sub_29D938F48();
  v31 = sub_29D937EA8();
  sub_29D935E88();
  v69 = v31;
  v70 = MEMORY[0x29EDBCA98];
  v71 = MEMORY[0x29EDB8698];
  v72 = MEMORY[0x29EDBCA88];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = sub_29D6F00D4(&qword_2A17B2198, MEMORY[0x29EDBC890], MEMORY[0x29EDBC888]);
  v69 = v29;
  v70 = v30;
  v71 = OpaqueTypeConformance2;
  v72 = v33;
  v51 = swift_getOpaqueTypeConformance2();
  sub_29D6F00D4(&qword_2A17B22B8, type metadata accessor for BloodPressurePDFSampleInterval, &unk_29D954464);
  v52 = v24;
  sub_29D9397B8();
  v69 = *(v60 + *(v7 + 40));
  v34 = v55;
  sub_29D6F1870(v60, v55, v61);
  v35 = v56;
  v36 = swift_allocObject();
  sub_29D6F1E34(v34, v36 + v35, v58);
  sub_29D935E88();
  v37 = v62;
  sub_29D9397B8();
  v38 = v64;
  v39 = *(v64 + 16);
  v40 = v68;
  v41 = v57;
  v39(v68, v24, v57);
  v42 = v63;
  v43 = v37;
  v39(v63, v37, v41);
  sub_29D6F0CC0();
  v44 = v65;
  v39(v65, v40, v41);
  v45 = v66;
  v46 = *(v66 + 56);
  v39(&v44[v46], v42, v41);
  v47 = *(v38 + 32);
  v48 = v67;
  v47(v67, v44, v41);
  v47(v48 + *(v45 + 56), &v44[v46], v41);
  v49 = *(v38 + 8);
  v49(v43, v41);
  v49(v52, v41);
  v49(v42, v41);
  return (v49)(v68, v41);
}

uint64_t sub_29D6ECBEC@<X0>(void (*a1)(char *, uint64_t, __n128)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a3;
  v64 = sub_29D938F48();
  MEMORY[0x2A1C7C4A8](v64, v5);
  v50 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F1D4C(0, &qword_2A17B22C0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDB87A0], MEMORY[0x29EDB8620]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v59 = &v49 - v9;
  sub_29D6F1734(0, &qword_2A17B1F80, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB8538], MEMORY[0x29EDB8620]);
  v12 = MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v56 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v52 = &v49 - v15;
  v60 = sub_29D937EA8();
  v58 = *(v60 - 8);
  MEMORY[0x2A1C7C4A8](v60, v16);
  v54 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F0BA8(0);
  v62 = *(v18 - 8);
  v63 = v18;
  MEMORY[0x2A1C7C4A8](v18, v19);
  v61 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29D9339F8();
  v22 = *(v21 - 8);
  v24 = MEMORY[0x2A1C7C4A8](v21, v23);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x2A1C7C4A8](v24, v27);
  v30 = &v49 - v29;
  MEMORY[0x2A1C7C4A8](v28, v31);
  v33 = &v49 - v32;
  sub_29D6ED340();
  v55 = sub_29D939528();
  type metadata accessor for BloodPressurePDFSampleInterval(0);
  v57 = a1;
  sub_29D9331A8();
  sub_29D6F00D4(&qword_2A17B4730, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
  v34 = sub_29D939CC8();
  v53 = v22;
  if (v34)
  {
    (*(v22 + 32))(v33, v30, v21);
  }

  else
  {
    (*(v22 + 8))(v30, v21);
    (*(v22 + 16))(v33, a2, v21);
  }

  sub_29D938C18();
  sub_29D937D48();

  sub_29D938C18();
  v51 = v33;
  sub_29D933178();
  sub_29D937D48();

  v57 = *(v53 + 8);
  (v57)(v26, v21);
  sub_29D938C18();
  v66 = 0;
  sub_29D937D48();

  v35 = v54;
  sub_29D937E98();
  v66 = v55;
  v36 = MEMORY[0x29EDBCA98];
  v38 = v60;
  v37 = v61;
  sub_29D937C48();
  (*(v58 + 8))(v35, v38);
  v39 = *(v64 + 20);
  v40 = *MEMORY[0x29EDBC6F8];
  v41 = sub_29D938C38();
  v42 = v50;
  (*(*(v41 - 8) + 104))(&v50[v39], v40, v41);
  sub_29D938E28();
  *v42 = v43;
  v42[1] = v44;
  v42[2] = v45;
  v42[3] = v46;
  v66 = v38;
  v67 = v36;
  v68 = MEMORY[0x29EDB8698];
  v69 = MEMORY[0x29EDBCA88];
  swift_getOpaqueTypeConformance2();
  sub_29D6F00D4(&qword_2A17B2198, MEMORY[0x29EDBC890], MEMORY[0x29EDBC888]);
  v47 = v63;
  sub_29D937C88();

  sub_29D6F1810(v42, MEMORY[0x29EDBC890]);
  (*(v62 + 8))(v37, v47);
  return (v57)(v51, v21);
}

id sub_29D6ED340()
{
  v0 = [objc_opt_self() pregnancyColors];
  v1 = [v0 keyColor];

  if (v1)
  {
    return v1;
  }

  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v3 = sub_29D937898();
  sub_29D69C6C0(v3, qword_2A1A2BF10);
  v4 = sub_29D937878();
  v5 = sub_29D93A288();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136642819;
    *(v6 + 4) = sub_29D6C2364(0xD00000000000001ELL, 0x800000029D942150, &v9);
    _os_log_impl(&dword_29D677000, v4, v5, "[%{sensitive}s] Could not fetch key color", v6, 0xCu);
    sub_29D69417C(v7);
    MEMORY[0x29ED6BE30](v7, -1, -1);
    MEMORY[0x29ED6BE30](v6, -1, -1);
  }

  v8 = [objc_opt_self() systemMintColor];

  return v8;
}

uint64_t sub_29D6ED500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v61 = sub_29D938F48();
  MEMORY[0x2A1C7C4A8](v61, v5);
  v62 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F1D4C(0, &qword_2A17B22C0, MEMORY[0x29EDC9BA8], MEMORY[0x29EDB87A0], MEMORY[0x29EDB8620]);
  MEMORY[0x2A1C7C4A8](v7 - 8, v8);
  v56 = v50 - v9;
  sub_29D6F1734(0, &qword_2A17B1F80, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB8538], MEMORY[0x29EDB8620]);
  v12 = MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v53 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v50[2] = v50 - v15;
  v57 = sub_29D937EA8();
  v54 = *(v57 - 8);
  MEMORY[0x2A1C7C4A8](v57, v16);
  v52 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F0BA8(0);
  v59 = *(v18 - 8);
  v60 = v18;
  MEMORY[0x2A1C7C4A8](v18, v19);
  v58 = v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_29D9339F8();
  v22 = *(v21 - 8);
  v24 = MEMORY[0x2A1C7C4A8](v21, v23);
  v26 = v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x2A1C7C4A8](v24, v27);
  v30 = v50 - v29;
  MEMORY[0x2A1C7C4A8](v28, v31);
  v33 = v50 - v32;
  sub_29D6ED340();
  sub_29D939528();
  v51 = sub_29D9395A8();

  type metadata accessor for BloodPressurePDFSampleInterval(0);
  v55 = a1;
  sub_29D9331A8();
  sub_29D933948();
  v34 = *(v22 + 8);
  v34(v26, v21);
  sub_29D6F00D4(&qword_2A17B4730, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
  v35 = sub_29D939CC8();
  v50[1] = v22 + 8;
  v64 = v34;
  if (v35)
  {
    (*(v22 + 32))(v33, v30, v21);
  }

  else
  {
    v34(v30, v21);
    (*(v22 + 16))(v33, a2, v21);
  }

  sub_29D938C18();
  sub_29D937D48();

  sub_29D938C18();
  v50[0] = v33;
  sub_29D933178();
  sub_29D937D48();

  v64(v26, v21);
  sub_29D938C18();
  v65 = 0;
  sub_29D937D48();

  v36 = v52;
  sub_29D937E98();
  v65 = v51;
  v37 = MEMORY[0x29EDBCA88];
  v38 = v57;
  v39 = v58;
  sub_29D937C48();
  (*(v54 + 8))(v36, v38);
  v40 = *(v61 + 20);
  v41 = *MEMORY[0x29EDBC6F8];
  v42 = sub_29D938C38();
  v43 = v62;
  (*(*(v42 - 8) + 104))(&v62[v40], v41, v42);
  sub_29D938E28();
  *v43 = v44;
  v43[1] = v45;
  v43[2] = v46;
  v43[3] = v47;
  v65 = v38;
  v66 = MEMORY[0x29EDBCA98];
  v67 = MEMORY[0x29EDB8698];
  v68 = v37;
  swift_getOpaqueTypeConformance2();
  sub_29D6F00D4(&qword_2A17B2198, MEMORY[0x29EDBC890], MEMORY[0x29EDBC888]);
  v48 = v60;
  sub_29D937C88();

  sub_29D6F1810(v43, MEMORY[0x29EDBC890]);
  (*(v59 + 8))(v39, v48);
  return (v64)(v50[0], v21);
}

uint64_t sub_29D6EDC90()
{
  v0 = sub_29D937D68();
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v2 = sub_29D937CB8();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  sub_29D937CA8();
  sub_29D937D58();
  sub_29D937BE8();
  return sub_29D937FA8();
}

uint64_t sub_29D6EDDB0()
{
  if (qword_2A17B0DB8 != -1)
  {
    swift_once();
  }

  sub_29D935E88();
  return sub_29D937BD8();
}

uint64_t sub_29D6EDE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[0] = a1;
  v25[1] = a2;
  v2 = sub_29D937D68();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v4 = sub_29D937CB8();
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v6 = type metadata accessor for BloodPressurePDFPregnancyChart(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v9);
  sub_29D6F18F0(0);
  MEMORY[0x2A1C7C4A8](v10 - 8, v11);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29D933CC8();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29D937CF8();
  MEMORY[0x2A1C7C4A8](v19 - 8, v20);
  (*(v15 + 104))(v18, *MEMORY[0x29EDB9CB8], v14);
  v21 = sub_29D933CE8();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  sub_29D937CD8();
  sub_29D6F1810(v13, sub_29D6F18F0);
  (*(v15 + 8))(v18, v14);
  sub_29D6F1870(v25[0], v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BloodPressurePDFPregnancyChart);
  v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v23 = swift_allocObject();
  sub_29D6F1E34(v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for BloodPressurePDFPregnancyChart);
  sub_29D937CA8();
  sub_29D937D58();
  sub_29D6F0FB0(0);
  sub_29D6F153C(&qword_2A17B2230, sub_29D6F0FB0, sub_29D6F1350);
  return sub_29D937F88();
}

uint64_t sub_29D6EE21C@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v208 = a1;
  v210 = a2;
  sub_29D6F1038(0);
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v199 = &v157 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F193C(0, &qword_2A17B2288, MEMORY[0x29EDB8550], sub_29D6F1114);
  v196 = v5;
  MEMORY[0x2A1C7C4A8](v5, v6);
  v195 = &v157 - v7;
  sub_29D6F10E0(0);
  MEMORY[0x2A1C7C4A8](v8 - 8, v9);
  v197 = &v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x29EDB86C8];
  sub_29D6F193C(0, &qword_2A17B2290, sub_29D6F121C, MEMORY[0x29EDB86C8]);
  v185 = v12;
  MEMORY[0x2A1C7C4A8](v12, v13);
  v184 = &v157 - v14;
  sub_29D6F119C(0, &qword_2A17B2210, sub_29D6F121C, v11);
  v194 = v15;
  v193 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15, v16);
  v186 = &v157 - v17;
  v18 = sub_29D937EE8();
  MEMORY[0x2A1C7C4A8](v18 - 8, v19);
  v181 = &v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_29D937F08();
  v182 = *(v183 - 8);
  v22 = MEMORY[0x2A1C7C4A8](v183, v21);
  v192 = &v157 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v22, v24);
  v191 = &v157 - v25;
  v26 = sub_29D937E18();
  MEMORY[0x2A1C7C4A8](v26 - 8, v27);
  v180 = &v157 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_29D937E48();
  MEMORY[0x2A1C7C4A8](v29 - 8, v30);
  v177 = &v157 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_29D933828();
  v174 = *(v176 - 8);
  MEMORY[0x2A1C7C4A8](v176, v32);
  v171 = &v157 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_29D9338A8();
  v166 = *(v168 - 8);
  MEMORY[0x2A1C7C4A8](v168, v34);
  v165 = &v157 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_29D9338F8();
  v167 = *(v172 - 8);
  v37 = MEMORY[0x2A1C7C4A8](v172, v36);
  v163 = &v157 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x2A1C7C4A8](v37, v39);
  v164 = &v157 - v41;
  MEMORY[0x2A1C7C4A8](v40, v42);
  v169 = &v157 - v43;
  sub_29D6F1D4C(0, &qword_2A17B2220, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
  v175 = v44;
  v173 = *(v44 - 8);
  MEMORY[0x2A1C7C4A8](v44, v45);
  v170 = &v157 - v46;
  sub_29D6F121C(0);
  v179 = v47;
  v178 = *(v47 - 8);
  v49 = MEMORY[0x2A1C7C4A8](v47, v48);
  v189 = &v157 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v49, v51);
  v188 = &v157 - v52;
  sub_29D6F1114(0);
  v55 = MEMORY[0x2A1C7C4A8](v53 - 8, v54);
  v190 = &v157 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v55, v57);
  v198 = &v157 - v58;
  v59 = sub_29D937BE8();
  v204 = *(v59 - 8);
  v205 = v59;
  v61 = MEMORY[0x2A1C7C4A8](v59, v60);
  v203 = &v157 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v61, v63);
  v207 = &v157 - v64;
  sub_29D6F106C(0, &qword_2A17B21F0, sub_29D6F1038, MEMORY[0x29EDB8650]);
  v66 = v65;
  v209 = *(v65 - 8);
  MEMORY[0x2A1C7C4A8](v65, v67);
  v206 = &v157 - v68;
  v200 = sub_29D933CC8();
  v69 = *(v200 - 8);
  MEMORY[0x2A1C7C4A8](v200, v70);
  v72 = &v157 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_29D933CE8();
  v201 = *(v73 - 8);
  v202 = v73;
  MEMORY[0x2A1C7C4A8](v73, v74);
  v76 = &v157 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6A08F8(0);
  MEMORY[0x2A1C7C4A8](v77 - 8, v78);
  v80 = &v157 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_29D9339F8();
  v82 = *(v81 - 8);
  v84 = MEMORY[0x2A1C7C4A8](v81, v83);
  v187 = &v157 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = MEMORY[0x2A1C7C4A8](v84, v86);
  v89 = &v157 - v88;
  MEMORY[0x2A1C7C4A8](v87, v90);
  v92 = &v157 - v91;
  sub_29D937FD8();
  if ((*(v82 + 48))(v80, 1, v81) != 1)
  {
    v162 = v66;
    (*(v82 + 32))(v92, v80, v81);
    sub_29D933C88();
    sub_29D933AD8();
    v96 = v200;
    (*(v69 + 104))(v72, *MEMORY[0x29EDB9CF0], v200);
    v161 = v92;
    v160 = sub_29D933CD8();
    (*(v69 + 8))(v72, v96);
    sub_29D6F1E9C(0, &qword_2A17B1438, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9E90]);
    v97 = *(v82 + 72);
    v98 = (*(v82 + 80) + 32) & ~*(v82 + 80);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_29D93F680;
    v100 = v99 + v98;
    v200 = v82;
    v101 = *(v82 + 16);
    v102 = v208;
    v101(v100, v208, v81);
    v103 = type metadata accessor for BloodPressurePDFPregnancyChart(0);
    v101(v100 + v97, &v102[*(v103 + 20)], v81);
    v104 = sub_29D719CC4(v89, v99);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v160 == sub_29D933AF8())
    {
      if (qword_2A17B0DB8 != -1)
      {
        swift_once();
      }

      v160 = v76;
      v105 = *(&xmmword_2A17D1000 + 1);
      v211 = xmmword_2A17D0FF0;
      v212 = xmmword_2A17D1000;
      v213 = qword_2A17D1010;
      sub_29D935E88();
      sub_29D937BD8();
      v106 = v187;
      sub_29D933948();
      v208 = v89;
      v107 = sub_29D933978();
      v108 = *(v200 + 8);
      v109 = v81;
      v200 += 8;
      v187 = v108;
      v110 = (v108)(v106, v81);
      v111 = 1;
      if (v107)
      {
        v158 = v81;
        v159 = v105;
        v112 = v163;
        MEMORY[0x29ED634A0](v110);
        v113 = v165;
        sub_29D933898();
        v114 = v164;
        sub_29D933808();
        (*(v166 + 8))(v113, v168);
        v115 = *(v167 + 8);
        v116 = v172;
        v115(v112, v172);
        v117 = v171;
        sub_29D933818();
        sub_29D9337C8();
        (*(v174 + 8))(v117, v176);
        v115(v114, v116);
        sub_29D937E38();
        sub_29D937E08();
        sub_29D6F00D4(&qword_2A17B22A8, MEMORY[0x29EDB9BB0], MEMORY[0x29EDB9BA8]);
        v118 = v170;
        sub_29D937D08();
        if (qword_2A17B0DA8 != -1)
        {
          swift_once();
        }

        sub_29D6F12CC();
        v119 = v188;
        v120 = v175;
        sub_29D937EC8();
        (*(v173 + 8))(v118, v120);
        sub_29D935E88();
        sub_29D937ED8();
        v121 = v191;
        sub_29D937EF8();
        v122 = v178;
        v123 = *(v178 + 16);
        v124 = v189;
        v125 = v179;
        v123(v189, v119, v179);
        v126 = v182;
        v127 = *(v182 + 16);
        v128 = v183;
        v127(v192, v121, v183);
        v129 = v184;
        v123(v184, v124, v125);
        v130 = v185;
        v131 = *(v185 + 48);
        v132 = v192;
        v127(&v129[v131], v192, v128);
        v133 = v186;
        (*(v122 + 32))(v186, v129, v125);
        (*(v126 + 32))(v133 + *(v130 + 48), &v129[v131], v128);
        v134 = *(v126 + 8);
        v134(v191, v128);
        v135 = *(v122 + 8);
        v135(v188, v125);
        v134(v132, v128);
        v135(v189, v125);
        sub_29D6F1A20(v133, v198, &qword_2A17B2210, sub_29D6F121C, MEMORY[0x29EDB86C8], sub_29D6F119C);
        v111 = 0;
        v109 = v158;
      }

      v136 = v198;
      (*(v193 + 56))(v198, v111, 1, v194);
      v137 = v203;
      v138 = v204;
      v139 = *(v204 + 16);
      v140 = v205;
      v139(v203, v207, v205);
      v141 = v190;
      sub_29D67C494(v136, v190);
      v142 = v195;
      v139(v195, v137, v140);
      sub_29D6F153C(&qword_2A17B2250, sub_29D6F1114, sub_29D6F15B8);
      v143 = v196;
      v144 = *(v196 + 48);
      sub_29D67C494(v141, &v142[v144]);
      v145 = v197;
      (*(v138 + 32))(v197, v142, v140);
      sub_29D6F19B8(&v142[v144], v145 + *(v143 + 48), sub_29D6F1114);
      sub_29D67C4F8(v136);
      v146 = *(v138 + 8);
      v146(v207, v140);
      v147 = v187;
      (v187)(v208, v109);
      (*(v201 + 8))(v160, v202);
      v147(v161, v109);
      v94 = v210;
      sub_29D67C4F8(v141);
      v146(v137, v140);
      v148 = v199;
      sub_29D6F19B8(v145, v199, sub_29D6F10E0);
      sub_29D6F106C(0, &qword_2A17B22A0, sub_29D6F10E0, MEMORY[0x29EDB8648]);
      swift_storeEnumTagMultiPayload();
      v149 = v206;
      sub_29D6F19B8(v148, v206, sub_29D6F1038);
    }

    else
    {
      if (v104)
      {
        v94 = v210;
        v95 = v162;
        v150 = v161;
        if (qword_2A17B0DB8 != -1)
        {
          swift_once();
        }

        v211 = xmmword_2A17D0FF0;
        v212 = xmmword_2A17D1000;
        v213 = qword_2A17D1010;
        sub_29D935E88();
        v151 = v203;
        sub_29D937BD8();
        v152 = *(v200 + 8);
        v152(v89, v81);
        (*(v201 + 8))(v76, v202);
        v152(v150, v81);
        v153 = v199;
        (*(v204 + 32))(v199, v151, v205);
        sub_29D6F106C(0, &qword_2A17B22A0, sub_29D6F10E0, MEMORY[0x29EDB8648]);
        swift_storeEnumTagMultiPayload();
        v149 = v206;
        sub_29D6F19B8(v153, v206, sub_29D6F1038);
        goto LABEL_17;
      }

      v213 = 0;
      v211 = 0u;
      v212 = 0u;
      v154 = v203;
      sub_29D937BD8();
      v155 = *(v200 + 8);
      v155(v89, v81);
      (*(v201 + 8))(v76, v202);
      v155(v161, v81);
      v149 = v206;
      (*(v204 + 32))(v206, v154, v205);
      v94 = v210;
    }

    v95 = v162;
LABEL_17:
    sub_29D6F106C(0, &qword_2A17B2298, sub_29D6F1038, MEMORY[0x29EDB8648]);
    swift_storeEnumTagMultiPayload();
    sub_29D6F1A20(v149, v94, &qword_2A17B21F0, sub_29D6F1038, MEMORY[0x29EDB8650], sub_29D6F106C);
    v93 = 0;
    return (*(v209 + 56))(v94, v93, 1, v95);
  }

  sub_29D6F1810(v80, sub_29D6A08F8);
  v93 = 1;
  v94 = v210;
  v95 = v66;
  return (*(v209 + 56))(v94, v93, 1, v95);
}

uint64_t sub_29D6EF914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25[1] = a3;
  sub_29D69A444(0);
  MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D933788();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29D9337B8();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D933798();
  sub_29D933768();
  v17 = sub_29D9339C8();
  v19 = v18;
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
  v20 = sub_29D933AA8();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  if (qword_2A17B0D98 != -1)
  {
    swift_once();
  }

  sub_29D6F1E9C(0, &qword_2A1A24860, sub_29D69ACC0, MEMORY[0x29EDC9E90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_29D93DDB0;
  *(v21 + 56) = MEMORY[0x29EDC99B0];
  *(v21 + 64) = sub_29D69AD24();
  *(v21 + 32) = v17;
  *(v21 + 40) = v19;
  v22 = sub_29D9334A8();
  if (*(v21 + 16))
  {
    v23 = sub_29D939D78();
  }

  else
  {
    v23 = v22;
  }

  sub_29D6F1810(v6, sub_29D69A444);
  return v23;
}

void sub_29D6EFC74(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D6F011C(0);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + *(a1 + 36)) == 1)
  {
    v9 = sub_29D938C88();
  }

  else
  {
    v9 = sub_29D938C78();
  }

  *v8 = v9;
  *(v8 + 1) = 0x4014000000000000;
  v8[16] = 0;
  sub_29D6F16CC(0);
  sub_29D6EA7A8(v2, &v8[*(v10 + 44)]);
  v11 = *(v2 + *(a1 + 40));
  sub_29D6F19B8(v8, a2, sub_29D6F011C);
  sub_29D6F1734(0, &qword_2A17B2278, sub_29D6F011C, MEMORY[0x29EDBC428], MEMORY[0x29EDBC558]);
  v13 = (a2 + *(v12 + 36));
  *v13 = v11;
  v13[1] = 0;
}

uint64_t sub_29D6EFE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D6F00D4(&qword_2A17B2138, type metadata accessor for BloodPressurePDFPregnancyChart, &unk_29D9421C0);

  return MEMORY[0x2A1C635D0](a1, a2, a3, v6);
}

uint64_t sub_29D6EFEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_29D6F00D4(&qword_2A17B2138, type metadata accessor for BloodPressurePDFPregnancyChart, &unk_29D9421C0);

  return a4(a1, a2, v6);
}

uint64_t sub_29D6EFF4C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_29D6F00D4(&qword_2A17B2128, type metadata accessor for BloodPressurePDFPregnancyChart, &unk_29D942218);
  *v3 = v1;
  v3[1] = sub_29D68E20C;

  return MEMORY[0x2A1C61D30](a1, v4);
}

uint64_t sub_29D6F00D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D6F011C(uint64_t a1)
{
  if (!qword_2A17B2140)
  {
    sub_29D6F01B0(255);
    sub_29D6F00D4(&qword_2A17B2268, sub_29D6F01B0, MEMORY[0x29EDBCC30]);
    v1 = sub_29D939758();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2140);
    }
  }
}

void sub_29D6F01E4(uint64_t a1, __n128 a2)
{
  if (!qword_2A17B2150)
  {
    sub_29D6F024C(255, a2);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B2150);
    }
  }
}

void sub_29D6F024C(uint64_t a1, __n128 a2)
{
  if (!qword_2A17B2158)
  {
    sub_29D6F0488(255, a2);
    sub_29D6F0F1C(255);
    sub_29D6F0650(255, v2);
    sub_29D6D6634(255);
    sub_29D6F07C8(255, v3);
    sub_29D6F0EE0(255);
    sub_29D6F08C0(255, v4);
    sub_29D6F0DFC(255, &qword_2A17B21B8, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9A40]);
    sub_29D6F00D4(&qword_2A17B21C0, sub_29D6F08C0, MEMORY[0x29EDB8690]);
    sub_29D6F0E4C();
    swift_getOpaqueTypeConformance2();
    v5 = MEMORY[0x29EDB86F8];
    sub_29D6F00D4(&qword_2A17B21D8, sub_29D6F0EE0, MEMORY[0x29EDB86F8]);
    swift_getOpaqueTypeConformance2();
    sub_29D6D66C8();
    swift_getOpaqueTypeConformance2();
    sub_29D6F00D4(&qword_2A17B2260, sub_29D6F0F1C, v5);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B2158);
    }
  }
}

void sub_29D6F0488(uint64_t a1, __n128 a2)
{
  if (!qword_2A17B2160)
  {
    sub_29D6F0650(255, a2);
    sub_29D6D6634(255);
    sub_29D6F07C8(255, v2);
    sub_29D6F0EE0(255);
    sub_29D6F08C0(255, v3);
    sub_29D6F0DFC(255, &qword_2A17B21B8, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9A40]);
    sub_29D6F00D4(&qword_2A17B21C0, sub_29D6F08C0, MEMORY[0x29EDB8690]);
    sub_29D6F0E4C();
    swift_getOpaqueTypeConformance2();
    sub_29D6F00D4(&qword_2A17B21D8, sub_29D6F0EE0, MEMORY[0x29EDB86F8]);
    swift_getOpaqueTypeConformance2();
    sub_29D6D66C8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B2160);
    }
  }
}

void sub_29D6F0650(uint64_t a1, __n128 a2)
{
  if (!qword_2A17B2168)
  {
    sub_29D6F07C8(255, a2);
    sub_29D6F0EE0(255);
    sub_29D6F08C0(255, v2);
    sub_29D6F0DFC(255, &qword_2A17B21B8, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9A40]);
    sub_29D6F00D4(&qword_2A17B21C0, sub_29D6F08C0, MEMORY[0x29EDB8690]);
    sub_29D6F0E4C();
    swift_getOpaqueTypeConformance2();
    sub_29D6F00D4(&qword_2A17B21D8, sub_29D6F0EE0, MEMORY[0x29EDB86F8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B2168);
    }
  }
}

void sub_29D6F07C8(uint64_t a1, __n128 a2)
{
  if (!qword_2A17B2170)
  {
    sub_29D6F08C0(255, a2);
    sub_29D6F0DFC(255, &qword_2A17B21B8, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9A40]);
    sub_29D6F00D4(&qword_2A17B21C0, sub_29D6F08C0, MEMORY[0x29EDB8690]);
    sub_29D6F0E4C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B2170);
    }
  }
}

void sub_29D6F08C0(uint64_t a1, __n128 a2)
{
  if (!qword_2A17B2178)
  {
    sub_29D6F0924(255);
    sub_29D6F0C40();
    v2 = sub_29D937E68();
    if (!v3)
    {
      atomic_store(v2, &qword_2A17B2178);
    }
  }
}

void sub_29D6F0924(uint64_t a1)
{
  if (!qword_2A17B2180)
  {
    sub_29D6F098C(255);
    v1 = sub_29D937BF8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2180);
    }
  }
}

void sub_29D6F098C(uint64_t a1)
{
  if (!qword_2A17B2188)
  {
    sub_29D6EA774(255);
    sub_29D9339F8();
    sub_29D6F0A90(255);
    sub_29D6F00D4(&qword_2A17B21A0, sub_29D6EA774, MEMORY[0x29EDC9A80]);
    sub_29D6F00D4(&qword_2A17B1360, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
    v1 = sub_29D9397E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2188);
    }
  }
}

void sub_29D6F0A90(uint64_t a1)
{
  if (!qword_2A17B2190)
  {
    sub_29D6F0BA8(255);
    sub_29D938F48();
    sub_29D937EA8();
    swift_getOpaqueTypeConformance2();
    sub_29D6F00D4(&qword_2A17B2198, MEMORY[0x29EDBC890], MEMORY[0x29EDBC888]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B2190);
    }
  }
}

void sub_29D6F0BA8(uint64_t a1)
{
  if (!qword_2A17B1EE0)
  {
    sub_29D937EA8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B1EE0);
    }
  }
}

unint64_t sub_29D6F0C40()
{
  result = qword_2A17B21A8;
  if (!qword_2A17B21A8)
  {
    sub_29D6F0924(255);
    sub_29D6F0CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B21A8);
  }

  return result;
}

unint64_t sub_29D6F0CC0()
{
  result = qword_2A17B21B0;
  if (!qword_2A17B21B0)
  {
    sub_29D6F098C(255);
    sub_29D6F0BA8(255);
    sub_29D938F48();
    sub_29D937EA8();
    swift_getOpaqueTypeConformance2();
    sub_29D6F00D4(&qword_2A17B2198, MEMORY[0x29EDBC890], MEMORY[0x29EDBC888]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B21B0);
  }

  return result;
}

void sub_29D6F0DFC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29D6F0E4C()
{
  result = qword_2A17B21C8;
  if (!qword_2A17B21C8)
  {
    sub_29D6F0DFC(255, &qword_2A17B21B8, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B21C8);
  }

  return result;
}

void sub_29D6F0F1C(uint64_t a1)
{
  if (!qword_2A17B21E0)
  {
    sub_29D6F0FB0(255);
    sub_29D6F153C(&qword_2A17B2230, sub_29D6F0FB0, sub_29D6F1350);
    v1 = sub_29D937FC8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B21E0);
    }
  }
}

void sub_29D6F0FB0(uint64_t a1)
{
  if (!qword_2A17B21E8)
  {
    sub_29D6F106C(255, &qword_2A17B21F0, sub_29D6F1038, MEMORY[0x29EDB8650]);
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B21E8);
    }
  }
}

void sub_29D6F106C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_29D937BE8();
    v9 = a4(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D6F1114(uint64_t a1)
{
  if (!qword_2A17B2208)
  {
    sub_29D6F119C(255, &qword_2A17B2210, sub_29D6F121C, MEMORY[0x29EDB86C8]);
    v1 = sub_29D93A7F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2208);
    }
  }
}

void sub_29D6F119C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_29D937BF8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D6F121C(uint64_t a1)
{
  if (!qword_2A17B2218)
  {
    sub_29D6F1D4C(255, &qword_2A17B2220, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
    sub_29D6F12CC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B2218);
    }
  }
}

unint64_t sub_29D6F12CC()
{
  result = qword_2A17B2228;
  if (!qword_2A17B2228)
  {
    sub_29D6F1D4C(255, &qword_2A17B2220, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2228);
  }

  return result;
}

unint64_t sub_29D6F1350()
{
  result = qword_2A17B2238;
  if (!qword_2A17B2238)
  {
    sub_29D6F106C(255, &qword_2A17B21F0, sub_29D6F1038, MEMORY[0x29EDB8650]);
    sub_29D6F1400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2238);
  }

  return result;
}

unint64_t sub_29D6F1400()
{
  result = qword_2A17B2240;
  if (!qword_2A17B2240)
  {
    sub_29D6F1038(255);
    sub_29D6F1480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2240);
  }

  return result;
}

unint64_t sub_29D6F1480()
{
  result = qword_2A17B2248;
  if (!qword_2A17B2248)
  {
    sub_29D6F10E0(255);
    sub_29D6F153C(&qword_2A17B2250, sub_29D6F1114, sub_29D6F15B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2248);
  }

  return result;
}

uint64_t sub_29D6F153C(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D6F15B8()
{
  result = qword_2A17B2258;
  if (!qword_2A17B2258)
  {
    sub_29D6F119C(255, &qword_2A17B2210, sub_29D6F121C, MEMORY[0x29EDB86C8]);
    sub_29D6F1D4C(255, &qword_2A17B2220, MEMORY[0x29EDC9F80], MEMORY[0x29EDBCC40], MEMORY[0x29EDB8610]);
    sub_29D6F12CC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2258);
  }

  return result;
}

void sub_29D6F16CC(uint64_t a1)
{
  if (!qword_2A17B2270)
  {
    sub_29D6F01B0(255);
    v1 = sub_29D938788();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2270);
    }
  }
}

void sub_29D6F1734(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_29D6F1810(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D6F1870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D6F18E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_29D935E88();
  }
}

void sub_29D6F193C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_29D6F19B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D6F1A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

uint64_t sub_29D6F1AAC()
{
  v1 = type metadata accessor for BloodPressurePDFPregnancyChart(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v13 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  v5 = sub_29D9339F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v3, v5);
  v7(v0 + v3 + v1[5], v5);

  v8 = v1[7];
  if (!(*(v6 + 48))(v0 + v3 + v8, 1, v5))
  {
    v7(v4 + v8, v5);
  }

  v9 = v1[13];
  v10 = sub_29D9356C8();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v4 + v9, 1, v10))
  {
    (*(v11 + 8))(v4 + v9, v10);
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v13, v2 | 7);
}

uint64_t sub_29D6F1CB8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for BloodPressurePDFPregnancyChart(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

void sub_29D6F1D4C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29D6F1DA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_29D6F1E34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29D6F1E9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D6F1F00()
{
  result = qword_2A17B22D8;
  if (!qword_2A17B22D8)
  {
    sub_29D6F1734(255, &qword_2A17B2278, sub_29D6F011C, MEMORY[0x29EDBC428], MEMORY[0x29EDBC558]);
    sub_29D6F00D4(&qword_2A17B22E0, sub_29D6F011C, MEMORY[0x29EDBCB58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B22D8);
  }

  return result;
}

uint64_t type metadata accessor for BloodPressureJournalLoggingBestPracticesViewController(uint64_t a1)
{
  result = qword_2A17B2308;
  if (!qword_2A17B2308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D6F2098(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for BloodPressureJournalLoggingBestPracticesViewController(0);
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, sel_viewDidLoad);
  if (v1[qword_2A17B22F8] == 1)
  {
    sub_29D936C68();
  }

  else
  {
    sub_29D7B2224(1, 2u);
  }
}

id sub_29D6F2124()
{
  v1 = sub_29D9339F8();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7B2224(1, 1u);
  v6 = *&v0[qword_2A17B22E8];
  if (v6)
  {
    swift_unknownObjectRetain();
    sub_29D9339E8();
    sub_29D81D22C(v5);
    (*(v2 + 8))(v5, v1);
    sub_29D831EC0(v0, v6);
    return sub_29D936978();
  }

  else
  {

    return [v0 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_29D6F2284()
{
  sub_29D936978();
}

id sub_29D6F22D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloodPressureJournalLoggingBestPracticesViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D6F230C(uint64_t a1)
{
  sub_29D936978();
}

uint64_t sub_29D6F2370(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_2A17B22E8);
  *v3 = a1;
  v3[1] = a2;
  return sub_29D936978();
}

uint64_t sub_29D6F238C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29D933CE8();
  MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D938AD8();
  return sub_29D6F2410(v5, a1);
}

uint64_t sub_29D6F2410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29D9376C8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29D933CE8();
  (*(*(v9 - 8) + 32))(a2, a1, v9);
  v10 = type metadata accessor for MonitorHypertensionJournalViewSpecs(0);
  *(a2 + v10[5]) = 0x4018000000000000;
  *(a2 + v10[6]) = 0x4030000000000000;
  v11 = v10[7];
  [objc_allocWithZone(MEMORY[0x29EDC7A00]) initWithRed:0.9 green:0.9 blue:0.92 alpha:1.0];
  *(a2 + v11) = sub_29D939528();
  v12 = v10[8];
  v13 = [objc_opt_self() secondaryLabelColor];
  *(a2 + v12) = sub_29D939528();
  *(a2 + v10[9]) = 0x3FF0000000000000;
  v14 = v10[10];
  if (qword_2A17B0DF8 != -1)
  {
    swift_once();
  }

  v15 = sub_29D69C6C0(v4, qword_2A17D10D8);
  (*(v5 + 16))(v8, v15, v4);
  result = sub_29D9395E8();
  *(a2 + v14) = result;
  *(a2 + v10[11]) = 0x4014000000000000;
  return result;
}

uint64_t type metadata accessor for MonitorHypertensionJournalViewSpecs(uint64_t a1)
{
  result = qword_2A17B2318;
  if (!qword_2A17B2318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D6F2684(uint64_t a1)
{
  result = sub_29D933CE8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for HighHeartRateNotificationsFeatureStatusActionHandler(uint64_t a1)
{
  result = qword_2A1A24490;
  if (!qword_2A1A24490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D6F279C()
{
  ObjectType = swift_getObjectType();
  sub_29D6D22BC(0);
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v3 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29D9346E8();
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D934C58();
  v61 = *(v8 - 8);
  v62 = v8;
  v10 = MEMORY[0x2A1C7C4A8](v8, v9);
  v57 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v58 = &v54 - v13;
  v14 = sub_29D936638();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D936B88();
  sub_29D9369E8();
  v19 = MEMORY[0x29EDC2970];
  sub_29D6F3184(&qword_2A17B1E40, MEMORY[0x29EDC2970], MEMORY[0x29EDC2980]);
  sub_29D6F3184(&qword_2A17B3920, v19, MEMORY[0x29EDC2978]);
  sub_29D936628();
  v20 = *(v15 + 8);
  v20(v18, v14);
  if (!v63[0])
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v37 = sub_29D937898();
    sub_29D69C6C0(v37, qword_2A1A2C008);
    v33 = sub_29D937878();
    v38 = sub_29D93A298();
    if (os_log_type_enabled(v33, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v63[0] = v40;
      *v39 = 136315138;
      v41 = sub_29D93AF08();
      v43 = sub_29D6C2364(v41, v42, v63);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_29D677000, v33, v38, "[%s] Could not access action handler user data!", v39, 0xCu);
      sub_29D69417C(v40);
      MEMORY[0x29ED6BE30](v40, -1, -1);
      MEMORY[0x29ED6BE30](v39, -1, -1);
    }

LABEL_16:

    return;
  }

  v55 = v3;
  sub_29D936B88();
  sub_29D936608();
  v20(v18, v14);
  sub_29D693E2C(v63, v63[3]);
  v21 = sub_29D936588();
  sub_29D69417C(v63);
  sub_29D936B88();
  v22 = sub_29D936618();
  v20(v18, v14);
  sub_29D936B88();
  v23 = v58;
  sub_29D9347B8();
  v20(v18, v14);
  sub_29D9369B8();
  v25 = v59;
  v24 = v60;
  v26 = (*(v59 + 88))(v7, v60);
  v27 = v23;
  if (v26 == *MEMORY[0x29EDC1760])
  {
    v29 = v61;
    v28 = v62;
    v30 = v21;
    v31 = v57;
    (*(v61 + 16))(v57, v27, v62);
    v32 = objc_allocWithZone(type metadata accessor for TachycardiaSettingsViewController(0));
    v33 = v30;
    v34 = sub_29D743DA0(v33, v31, 0);

    v35 = [v22 navigationController];
    if (v35)
    {
      v36 = v35;
      [v35 pushViewController:v34 animated:1];

LABEL_11:
      (*(v29 + 8))(v27, v28);
      return;
    }

    (*(v29 + 8))(v27, v28);

    goto LABEL_16;
  }

  v44 = v21;
  v29 = v61;
  v28 = v62;
  if (v26 == *MEMORY[0x29EDC1768])
  {
    v45 = v57;
    (*(v61 + 16))(v57, v27, v62);
    v46 = objc_allocWithZone(type metadata accessor for TachycardiaSettingsViewController(0));
    v47 = v44;
    v48 = sub_29D743DA0(v47, v45, 1);

    sub_29D7D0030();
    v49 = v48;
    sub_29D9365C8();

    v50 = [objc_allocWithZone(MEMORY[0x29EDC4760]) initWithRootViewController_];
    [v22 presentViewController:v50 animated:1 completion:0];

    goto LABEL_11;
  }

  if (v26 == *MEMORY[0x29EDC1758] || v26 == *MEMORY[0x29EDC1750])
  {
    v51 = v55;
    sub_29D9369D8();
    v52 = sub_29D9336F8();
    v53 = *(v52 - 8);
    if ((*(v53 + 48))(v51, 1, v52) == 1)
    {
      (*(v29 + 8))(v27, v28);

      sub_29D6D96C0(v51);
    }

    else
    {
      sub_29D9336A8();

      (*(v29 + 8))(v27, v28);
      (*(v53 + 8))(v51, v52);
    }
  }

  else
  {
    (*(v61 + 8))(v27, v62);

    (*(v25 + 8))(v7, v24);
  }
}

uint64_t sub_29D6F2FB0(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  (*(v4 + 16))(v7, a1, v3);
  v9 = sub_29D936B98();
  (*(v4 + 8))(a1, v3);
  return v9;
}

id sub_29D6F30B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighHeartRateNotificationsFeatureStatusActionHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D6F3184(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for AFibBurdenOnboardingGetStartedViewController(uint64_t a1)
{
  result = qword_2A17B2340;
  if (!qword_2A17B2340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_29D6F327C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  *(v2 + qword_2A17B2328 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + qword_2A17B2338) = 0;
  type metadata accessor for AFibBurdenGetStartedDataSource(0);
  swift_allocObject();
  sub_29D76FD58(v3);
  *(v2 + qword_2A17B2330) = v4;
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();

  v5 = sub_29D9365F8();
  sub_29D6F39CC();
  v6 = v5;

  sub_29D936AC8();

  return v6;
}

void sub_29D6F3468()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for AFibBurdenOnboardingGetStartedViewController(0);
  objc_msgSendSuper2(&v8, sel_viewDidLoad);

  sub_29D88BBC8(&unk_2A243D1B0);
  v2 = sub_29D939F18();

  v3 = HKUIJoinStringsForAutomationIdentifier();

  if (v3)
  {
    sub_29D6AA360(aContinuebutton_2);
    v4 = [v1 hxui:v3 addContinueButtonWithAccessibilityIdentifier:?];

    v5 = *&v1[qword_2A17B2338];
    *&v1[qword_2A17B2338] = v4;
    v6 = v4;

    v7 = sub_29D76FC80() != 2 && (sub_29D76FC80() & 0xFF00) != 512;
    [v6 setEnabled_];
  }

  else
  {
    __break(1u);
  }
}

void sub_29D6F35C0(void *a1)
{
  v1 = a1;
  sub_29D6F3468();
}

void sub_29D6F3608(char *a1)
{
  v2 = &a1[qword_2A17B2328];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    swift_getObjectType();
    v4 = *(v3 + 8);
    v5 = a1;
    v4();
    sub_29D936978();
  }
}

void sub_29D6F36C8(char *a1)
{
  v2 = &a1[qword_2A17B2328];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    swift_getObjectType();
    v4 = *(v3 + 16);
    v5 = a1;
    v4();
    sub_29D936978();
  }
}

void sub_29D6F37B8()
{
  sub_29D68B77C(v0 + qword_2A17B2328);

  v1 = *(v0 + qword_2A17B2338);
}

id sub_29D6F3808()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AFibBurdenOnboardingGetStartedViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D6F3840(uint64_t a1)
{
  sub_29D68B77C(a1 + qword_2A17B2328);

  v2 = *(a1 + qword_2A17B2338);
}

uint64_t sub_29D6F38D8(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_2A17B2328 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return sub_29D936978();
}

void sub_29D6F3928()
{
  v1 = *(v0 + qword_2A17B2338);
  if (v1)
  {
    v3 = v1;
    v2 = sub_29D76FC80() != 2 && (sub_29D76FC80() & 0xFF00) != 512;
    [v3 setEnabled_];
  }
}

unint64_t sub_29D6F39CC()
{
  result = qword_2A17B2350;
  if (!qword_2A17B2350)
  {
    type metadata accessor for AFibBurdenOnboardingGetStartedViewController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2350);
  }

  return result;
}

uint64_t sub_29D6F3A24(void *a1, void *a2)
{
  v4 = sub_29D9339F8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 startDate];
  sub_29D933998();

  v10 = sub_29D933958();
  v11 = *(v5 + 8);
  v11(v8, v4);
  v12 = [a2 endDate];
  sub_29D933998();

  v13 = sub_29D933958();
  v11(v8, v4);
  v14 = [a1 stringFromDate:v10 toDate:v13];

  v15 = sub_29D939D68();
  return v15;
}

uint64_t sub_29D6F3BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for HypertensionNotificationDetailView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8, v9);
  sub_29D6F8828(0);
  v11 = v10;
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = a2;
  v27 = a1;
  sub_29D9390B8();
  sub_29D6FAF70(0, &qword_2A17B23B0, sub_29D6F88D8, MEMORY[0x29EDBC5F8]);
  sub_29D6F9928();
  sub_29D938688();
  sub_29D938748();
  sub_29D9398A8();
  sub_29D938718();
  v15 = &v14[*(v11 + 36)];
  v16 = v29;
  *v15 = v28;
  v15[1] = v16;
  v15[2] = v30;
  static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243D220);
  swift_arrayDestroy();
  sub_29D6F9B6C();
  sub_29D939438();

  sub_29D6FB39C(v14, sub_29D6F8828);
  sub_29D6FB2D4(a2, &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for HypertensionNotificationDetailView);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  sub_29D6F8744(&v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v18 + v17);
  sub_29D6FAF70(0, &qword_2A17B2568, sub_29D6F9DC4, MEMORY[0x29EDBC918]);
  v20 = (a3 + *(v19 + 36));
  *v20 = sub_29D6F9DAC;
  v20[1] = v18;
  v20[2] = 0;
  v20[3] = 0;
  sub_29D6FB2D4(a2, &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for HypertensionNotificationDetailView);
  v21 = swift_allocObject();
  sub_29D6F8744(&v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v21 + v17);
  sub_29D6F9EB0(0);
  v23 = (a3 + *(v22 + 36));
  sub_29D938778();
  result = sub_29D93A008();
  *v23 = &unk_29D942548;
  v23[1] = v21;
  return result;
}

__n128 sub_29D6F3EEC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a2;
  v72 = a3;
  sub_29D6F8950(0);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F8928(0);
  v9 = v8;
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F8900(0);
  v68 = v13;
  MEMORY[0x2A1C7C4A8](v13, v14);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F88D8(0);
  v69 = v17;
  MEMORY[0x2A1C7C4A8](v17, v18);
  v70 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = sub_29D938C68();
  *(v7 + 1) = 0x4034000000000000;
  v7[16] = 0;
  sub_29D6FA0E4(0, &qword_2A17B2588, sub_29D6F89E4);
  sub_29D6F44EC(a1, &v7[*(v20 + 44)]);
  sub_29D6FA094(0, &qword_2A17B2590, MEMORY[0x29EDBC970], MEMORY[0x29EDC9E90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D93F680;
  v22 = sub_29D939108();
  *(inited + 32) = v22;
  v23 = sub_29D939128();
  *(inited + 33) = v23;
  v24 = sub_29D939118();
  sub_29D939118();
  if (sub_29D939118() != v22)
  {
    v24 = sub_29D939118();
  }

  sub_29D939118();
  if (sub_29D939118() != v23)
  {
    v24 = sub_29D939118();
  }

  v25 = objc_opt_self();
  v26 = [v25 sharedBehavior];
  if (!v26)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    sub_29D93A298();
    v66 = sub_29D9390A8();
    sub_29D937758();

    goto LABEL_12;
  }

  v27 = v26;
  v22 = [v26 isiPad];

  sub_29D938618();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_29D6FA2BC(v7, v12, sub_29D6F8950);
  v36 = &v12[*(v9 + 36)];
  *v36 = v24;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  LOBYTE(v27) = sub_29D9390E8();
  v37 = sub_29D939118();
  sub_29D939118();
  if (sub_29D939118() != v27)
  {
    v37 = sub_29D939118();
  }

  v38 = [v25 sharedBehavior];
  if (!v38)
  {
    goto LABEL_14;
  }

  v39 = v38;
  [v38 isiPad];

  sub_29D938618();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_29D6FA2BC(v12, v16, sub_29D6F8928);
  v48 = &v16[*(v68 + 36)];
  *v48 = v37;
  *(v48 + 1) = v41;
  *(v48 + 2) = v43;
  *(v48 + 3) = v45;
  *(v48 + 4) = v47;
  v48[40] = 0;
  v49 = sub_29D9390F8();
  v50 = sub_29D939118();
  sub_29D939118();
  if (sub_29D939118() != v49)
  {
    v50 = sub_29D939118();
  }

  sub_29D938618();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v22 = v70;
  sub_29D6FA2BC(v16, v70, sub_29D6F8900);
  v59 = &v22[*(v69 + 36)];
  *v59 = v50;
  *(v59 + 1) = v52;
  *(v59 + 2) = v54;
  *(v59 + 3) = v56;
  *(v59 + 4) = v58;
  v59[40] = 0;
  sub_29D938748();
  sub_29D9398A8();
LABEL_12:
  sub_29D9388E8();
  v60 = v72;
  sub_29D6FA2BC(v22, v72, sub_29D6F88D8);
  sub_29D6FAF70(0, &qword_2A17B23B0, sub_29D6F88D8, MEMORY[0x29EDBC5F8]);
  v62 = v60 + *(v61 + 36);
  v63 = v78;
  *(v62 + 64) = v77;
  *(v62 + 80) = v63;
  *(v62 + 96) = v79;
  v64 = v74;
  *v62 = v73;
  *(v62 + 16) = v64;
  result = v76;
  *(v62 + 32) = v75;
  *(v62 + 48) = result;
  return result;
}

uint64_t sub_29D6F44EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29D6F9154(0);
  v123 = *(v4 - 8);
  v124 = v4;
  MEMORY[0x2A1C7C4A8](v4, v5);
  v117 = (&v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = sub_29D938FE8();
  v113 = *(v115 - 8);
  MEMORY[0x2A1C7C4A8](v115, v7);
  v112 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HypertensionNotificationDetailView(0);
  v102 = *(v9 - 8);
  v103 = v9;
  MEMORY[0x2A1C7C4A8](v9, v10);
  v118 = v11;
  v12 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F94E4(0);
  v105 = v13;
  MEMORY[0x2A1C7C4A8](v13, v14);
  v104 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F9444(0);
  v107 = *(v16 - 8);
  v108 = v16;
  MEMORY[0x2A1C7C4A8](v16, v17);
  v119 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F9324(0);
  v111 = v19;
  v109 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19, v20);
  v106 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F91F0(0);
  v110 = v22;
  v24 = MEMORY[0x2A1C7C4A8](v22, v23);
  v116 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24, v26);
  v114 = &v99 - v27;
  sub_29D6F9120(0);
  v30 = MEMORY[0x2A1C7C4A8](v28 - 8, v29);
  v122 = &v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v30, v32);
  v125 = &v99 - v33;
  sub_29D6F8B2C(0);
  v36 = MEMORY[0x2A1C7C4A8](v34 - 8, v35);
  v121 = &v99 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v36, v38);
  v126 = (&v99 - v39);
  v40 = sub_29D939628();
  v41 = *(v40 - 8);
  MEMORY[0x2A1C7C4A8](v40, v42);
  v44 = &v99 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v45 = qword_2A1A2C038;
  sub_29D939678();
  (*(v41 + 104))(v44, *MEMORY[0x29EDBCAB8], v40);
  v120 = sub_29D939668();

  (*(v41 + 8))(v44, v40);
  sub_29D9398A8();
  sub_29D938718();
  LOBYTE(v130) = 1;
  *&v135[3] = *&v135[27];
  *&v135[11] = *&v135[35];
  *&v135[19] = *&v135[43];
  v46 = sub_29D938C78();
  v47 = v126;
  *v126 = v46;
  v47[1] = 0;
  *(v47 + 16) = 0;
  sub_29D6FA0E4(0, &qword_2A17B2598, sub_29D6F8BC0);
  sub_29D6F5234(a1, v47 + *(v48 + 44));
  v49 = sub_29D6F5C38();
  v50 = 1;
  if (v49)
  {
    v100 = v12;
    v101 = type metadata accessor for HypertensionNotificationDetailView;
    sub_29D6FB2D4(a1, v12, type metadata accessor for HypertensionNotificationDetailView);
    v51 = (*(v102 + 80) + 16) & ~*(v102 + 80);
    v52 = swift_allocObject();
    v53 = sub_29D6F8744(v12, v52 + v51);
    v102 = a2;
    MEMORY[0x2A1C7C4A8](v53, v54);
    sub_29D6FA324(0, &qword_2A17B24D0, MEMORY[0x29EDBC7F0]);
    v55 = a1;
    sub_29D6F9734();
    v56 = v104;
    sub_29D9396C8();
    sub_29D939898();
    sub_29D938718();
    v57 = v105;
    v58 = (v56 + *(v105 + 36));
    v59 = *&v135[59];
    *v58 = *&v135[51];
    v58[1] = v59;
    v58[2] = *&v135[67];
    v60 = v55 + *(v103 + 24);
    v61 = *v60;
    v62 = *(v60 + 8);
    LOBYTE(v127) = v61;
    v128 = v62;
    sub_29D6FA094(0, &qword_2A17B2390, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
    sub_29D9396B8();
    v63 = v100;
    sub_29D6FB2D4(v55, v100, v101);
    v64 = swift_allocObject();
    sub_29D6F8744(v63, v64 + v51);
    v65 = sub_29D6F9824();
    v98 = sub_29D6F98D4();
    sub_29D9394A8();

    sub_29D6FB39C(v56, sub_29D6F94E4);
    v66 = v112;
    sub_29D938FD8();
    v130 = v57;
    v131 = &type metadata for BloodPressureJournalCreationFromHypertensionNotificationMainView;
    *v132 = v65;
    *&v132[8] = v98;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v68 = sub_29D6FB6F0(&qword_2A17B2510, MEMORY[0x29EDBC098], MEMORY[0x29EDBC090]);
    v69 = v106;
    v70 = v108;
    v71 = v115;
    v72 = v119;
    sub_29D9393A8();
    (*(v113 + 8))(v66, v71);
    (*(v107 + 8))(v72, v70);
    static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243D320);
    swift_arrayDestroy();
    v130 = v70;
    v131 = v71;
    *v132 = OpaqueTypeConformance2;
    *&v132[8] = v68;
    swift_getOpaqueTypeConformance2();
    v73 = v114;
    v74 = v111;
    sub_29D939438();

    (*(v109 + 8))(v69, v74);
    v75 = sub_29D939558();
    KeyPath = swift_getKeyPath();
    sub_29D6F9288(0);
    v78 = (v73 + *(v77 + 36));
    *v78 = KeyPath;
    v78[1] = v75;
    v79 = (v73 + *(v110 + 36));
    sub_29D6FAB24(0, &qword_2A17B2520, MEMORY[0x29EDBC380], MEMORY[0x29EDBC938]);
    v81 = *(v80 + 28);
    v82 = *MEMORY[0x29EDBC378];
    v83 = sub_29D9386C8();
    (*(*(v83 - 8) + 104))(v79 + v81, v82, v83);
    *v79 = swift_getKeyPath();
    a2 = v102;
    v84 = v116;
    sub_29D6FA148(v73, v116, sub_29D6F91F0);
    v85 = v117;
    *v117 = 0;
    *(v85 + 8) = 1;
    sub_29D6F9188(0);
    sub_29D6FA148(v84, v85 + *(v86 + 48), sub_29D6F91F0);
    sub_29D6FB39C(v73, sub_29D6F91F0);
    sub_29D6FB39C(v84, sub_29D6F91F0);
    sub_29D6FA2BC(v85, v125, sub_29D6F9154);
    v50 = 0;
  }

  v87 = v125;
  (*(v123 + 56))(v125, v50, 1, v124);
  v88 = v121;
  sub_29D6FA148(v126, v121, sub_29D6F8B2C);
  v89 = v122;
  sub_29D6FA148(v87, v122, sub_29D6F9120);
  v90 = v120;
  v127 = v120;
  v128 = 0;
  v129[0] = 1;
  v129[1] = 0;
  *&v129[2] = *v135;
  *&v129[18] = *&v135[8];
  *&v129[34] = *&v135[16];
  *&v129[48] = *&v135[23];
  v91 = v120;
  v92 = *v129;
  v93 = *&v129[16];
  v94 = *&v129[32];
  *(a2 + 64) = *&v135[23];
  *(a2 + 32) = v93;
  *(a2 + 48) = v94;
  *a2 = v91;
  *(a2 + 16) = v92;
  sub_29D6F8A18(0);
  v96 = v95;
  sub_29D6FA148(v88, a2 + *(v95 + 48), sub_29D6F8B2C);
  sub_29D6FA148(v89, a2 + *(v96 + 64), sub_29D6F9120);
  sub_29D6FB2D4(&v127, &v130, sub_29D6F8AA0);
  sub_29D6FB39C(v87, sub_29D6F9120);
  sub_29D6FB39C(v126, sub_29D6F8B2C);
  sub_29D6FB39C(v89, sub_29D6F9120);
  sub_29D6FB39C(v88, sub_29D6F8B2C);
  v130 = v90;
  v131 = 0;
  v132[0] = 1;
  v132[1] = 0;
  *&v132[2] = *v135;
  v133 = *&v135[8];
  *v134 = *&v135[16];
  *&v134[14] = *&v135[23];
  return sub_29D6FB33C(&v130, sub_29D6F8AA0);
}

uint64_t sub_29D6F5234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a1;
  v100 = a2;
  sub_29D6F90C0(0);
  v4 = MEMORY[0x2A1C7C4A8](v2 - 8, v3);
  v101 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v99 = &v88 - v7;
  sub_29D6F8F7C(0);
  v94 = v8;
  MEMORY[0x2A1C7C4A8](v8, v9);
  v93 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6F8F5C(0);
  v13 = MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v98 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v97 = &v88 - v16;
  sub_29D6FB3FC(0, &qword_2A17B2410, sub_29D6F8CCC, sub_29D6F8DB8);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17, v20);
  v22 = &v88 - v21;
  sub_29D6F8C90(0);
  v25 = MEMORY[0x2A1C7C4A8](v23 - 8, v24);
  v96 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v25, v27);
  v102 = &v88 - v28;
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  v92 = qword_2A17D0F10;
  v91 = *algn_2A17D0F18;
  *&v111 = sub_29D9334A8();
  *(&v111 + 1) = v29;
  v90 = sub_29D69AB60();
  v30 = sub_29D9392F8();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  KeyPath = swift_getKeyPath();
  v38 = sub_29D9391C8();
  v39 = swift_getKeyPath();
  LOBYTE(v103) = v34 & 1;
  *&v111 = v30;
  *(&v111 + 1) = v32;
  LOBYTE(v112) = v34 & 1;
  *(&v112 + 1) = v36;
  *&v113 = KeyPath;
  BYTE8(v113) = 0;
  *&v114 = v39;
  *(&v114 + 1) = v38;
  sub_29D939178();
  sub_29D6F8CCC(0);
  v41 = v40;
  v42 = sub_29D6F8DB8();
  sub_29D939398();
  v108[0] = v111;
  v108[1] = v112;
  v108[2] = v113;
  v108[3] = v114;
  v89 = sub_29D6F8CCC;
  sub_29D6FB33C(v108, sub_29D6F8CCC);
  static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243D260);
  swift_arrayDestroy();
  *&v111 = v41;
  *(&v111 + 1) = v42;
  swift_getOpaqueTypeConformance2();
  sub_29D939438();

  (*(v19 + 8))(v22, v18);
  *&v111 = sub_29D9334A8();
  *(&v111 + 1) = v43;
  v44 = sub_29D9392F8();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = swift_getKeyPath();
  v52 = sub_29D9391C8();
  v53 = swift_getKeyPath();
  v107 = v48 & 1;
  *&v103 = v44;
  *(&v103 + 1) = v46;
  LOBYTE(v104) = v48 & 1;
  *(&v104 + 1) = *v110;
  DWORD1(v104) = *&v110[3];
  *(&v104 + 1) = v50;
  *&v105 = v51;
  BYTE8(v105) = 0;
  *(&v105 + 9) = *v109;
  HIDWORD(v105) = *&v109[3];
  *&v106 = v53;
  *(&v106 + 1) = v52;
  sub_29D939188();
  v54 = v93;
  sub_29D939398();
  v111 = v103;
  v112 = v104;
  v113 = v105;
  v114 = v106;
  sub_29D6FB33C(&v111, v89);
  v55 = [objc_opt_self() secondaryLabelColor];
  v56 = sub_29D939528();
  sub_29D6F8FFC(0);
  *(v54 + *(v57 + 36)) = v56;
  v58 = swift_getKeyPath();
  v59 = v54 + *(v94 + 36);
  *v59 = v58;
  *(v59 + 8) = 0;
  *(v59 + 16) = 1;
  static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243D2A0);
  swift_arrayDestroy();
  sub_29D6FA410();
  v60 = v97;
  sub_29D939438();

  sub_29D6FB39C(v54, sub_29D6F8F7C);
  v61 = type metadata accessor for HypertensionNotificationDetailView(0);
  *&v103 = sub_29D6F3A24(*(v95 + *(v61 + 32)), *(v95 + *(v61 + 32) + 8));
  *(&v103 + 1) = v62;
  v63 = sub_29D9392F8();
  v65 = v64;
  LOBYTE(v41) = v66;
  sub_29D939148();
  v67 = sub_29D9392C8();
  v69 = v68;
  LOBYTE(v52) = v70;

  sub_29D69ABB4(v63, v65, v41 & 1);

  sub_29D939178();
  v71 = sub_29D939298();
  v73 = v72;
  LOBYTE(v65) = v74;
  v76 = v75;
  sub_29D69ABB4(v67, v69, v52 & 1);

  *&v103 = v71;
  *(&v103 + 1) = v73;
  LOBYTE(v104) = v65 & 1;
  *(&v104 + 1) = v76;
  static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243D2E0);
  swift_arrayDestroy();
  v77 = v99;
  sub_29D939438();

  sub_29D69ABB4(v71, v73, v65 & 1);

  v78 = v102;
  v79 = v96;
  sub_29D6FA148(v102, v96, sub_29D6F8C90);
  v80 = v98;
  sub_29D6FA148(v60, v98, sub_29D6F8F5C);
  v81 = v101;
  sub_29D6FB2D4(v77, v101, sub_29D6F90C0);
  v82 = v100;
  sub_29D6FA148(v79, v100, sub_29D6F8C90);
  sub_29D6F8BF4(0);
  v84 = v83;
  sub_29D6FA148(v80, v82 + v83[12], sub_29D6F8F5C);
  v85 = v82 + v84[16];
  *v85 = 0x4034000000000000;
  *(v85 + 8) = 0;
  sub_29D6FB2D4(v81, v82 + v84[20], sub_29D6F90C0);
  v86 = v82 + v84[24];
  *v86 = 0x4040000000000000;
  *(v86 + 8) = 0;
  sub_29D6FB33C(v77, sub_29D6F90C0);
  sub_29D6FB39C(v60, sub_29D6F8F5C);
  sub_29D6FB39C(v78, sub_29D6F8C90);
  sub_29D6FB33C(v81, sub_29D6F90C0);
  sub_29D6FB39C(v80, sub_29D6F8F5C);
  return sub_29D6FB39C(v79, sub_29D6F8C90);
}

uint64_t sub_29D6F5C38()
{
  v0 = sub_29D9371A8();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v0, v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = v26 - v7;
  type metadata accessor for HypertensionNotificationDetailView(0);
  sub_29D69567C(0, &qword_2A1A221E0, 0x29EDBABB0);
  sub_29D937278();
  v9 = sub_29D9371B8();
  v10 = [v9 areAllRequirementsSatisfied];

  if (v10)
  {
    (*(v1 + 8))(v8, v0);
    return 1;
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v12 = sub_29D937898();
    sub_29D69C6C0(v12, qword_2A1A2C008);
    (*(v1 + 16))(v5, v8, v0);
    v13 = sub_29D937878();
    v14 = sub_29D93A288();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26[0] = v25;
      *v15 = 136315394;
      *(v15 + 4) = sub_29D6C2364(0xD000000000000022, 0x800000029D942460, v26);
      *(v15 + 12) = 2080;
      v16 = sub_29D9371B8();
      v17 = [v16 unsatisfiedRequirementIdentifiersDescription];

      v18 = sub_29D939D68();
      v20 = v19;

      v21 = *(v1 + 8);
      v21(v5, v0);
      v22 = sub_29D6C2364(v18, v20, v26);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_29D677000, v13, v14, "[%s] Blood Pressure Journal is not enabled due to failing requirements: %s", v15, 0x16u);
      v23 = v25;
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v23, -1, -1);
      MEMORY[0x29ED6BE30](v15, -1, -1);

      v21(v8, v0);
    }

    else
    {

      v24 = *(v1 + 8);
      v24(v5, v0);
      v24(v8, v0);
    }

    return 0;
  }
}

void sub_29D6F6144(uint64_t a1)
{
  v2 = sub_29D9336F8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for HypertensionNotificationDetailView(0);
  v8 = (a1 + *(v7 + 28));
  v9 = *v8;
  v10 = *(v8 + 1);
  v23 = v9;
  v24 = v10;
  sub_29D6FA094(0, &qword_2A17B2390, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
  sub_29D939698();
  if (v20 == 1)
  {
    v11 = [objc_opt_self() sharedApplication];
    v12 = HKHRBloodPressureDetailRoomBaseLink();
    sub_29D9336D8();

    v13 = sub_29D9336B8();
    (*(v3 + 8))(v6, v2);
    sub_29D73F168(MEMORY[0x29EDCA190]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_29D6FB6F0(&qword_2A17B3700, type metadata accessor for OpenExternalURLOptionsKey, &unk_29D93F538);
    v14 = sub_29D939C58();

    [v11 openURL:v13 options:v14 completionHandler:0];
  }

  else
  {
    v15 = (a1 + *(v7 + 24));
    v17 = *(v15 + 1);
    v23 = *v15;
    v16 = v23;
    v24 = v17;

    sub_29D939698();
    v20 = v16;
    v21 = v17;
    v19[7] = (v22 & 1) == 0;
    sub_29D9396A8();

    sub_29D6F63D4(v18);
  }
}

uint64_t sub_29D6F63D4(uint64_t a1)
{
  v2 = HKLogHeartRateCategory();
  v3 = type metadata accessor for HypertensionNotificationDetailView(0);
  v4 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v2 healthDataSource:*(v1 + *(v3 + 36))];

  LOBYTE(v2) = *(v1 + *(v3 + 32) + 16);
  type metadata accessor for HypertensionNotificationRoomInteractionEvent();
  v5 = swift_allocObject();
  v5[16] = 2;
  v5[17] = v2;
  v5[18] = 2;
  v8[4] = sub_29D6F7394;
  v8[5] = 0;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1107296256;
  v8[2] = sub_29D8E44F0;
  v8[3] = &unk_2A2441EB0;
  v6 = _Block_copy(v8);

  [v4 submitEvent:v5 completion:v6];
  _Block_release(v6);
}

uint64_t sub_29D6F651C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43[1] = a2;
  sub_29D6FA324(0, &qword_2A17B25A0, MEMORY[0x29EDBC7E8]);
  MEMORY[0x2A1C7C4A8](v3, v4);
  v6 = v43 - v5;
  sub_29D6F958C(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v7, v10);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = v43 - v15;
  v17 = (a1 + *(type metadata accessor for HypertensionNotificationDetailView(0) + 28));
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v53) = v18;
  *(&v53 + 1) = v19;
  sub_29D6FA094(0, &qword_2A17B2390, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
  sub_29D939698();
  if (v44 == 1)
  {
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    *&v53 = sub_29D9334A8();
    *(&v53 + 1) = v20;
    sub_29D69AB60();
    v21 = sub_29D9392F8();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    sub_29D9398A8();
    sub_29D9388E8();
    v62 = v25 & 1;
    *&v44 = v21;
    *(&v44 + 1) = v23;
    LOBYTE(v45) = v25 & 1;
    *(&v45 + 1) = v27;
    sub_29D6F963C(0, &qword_2A17B24E0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
    v29 = v28;
    v30 = sub_29D6F9690();
    sub_29D939478();
    v59 = v50;
    v60 = v51;
    v61 = v52;
    v55 = v46;
    v56 = v47;
    v57 = v48;
    v58 = v49;
    v53 = v44;
    v54 = v45;
    sub_29D6FA388(&v53);
    (*(v9 + 16))(v6, v16, v8);
    swift_storeEnumTagMultiPayload();
    *&v44 = v29;
    *(&v44 + 1) = v30;
    swift_getOpaqueTypeConformance2();
    sub_29D938DE8();
    return (*(v9 + 8))(v16, v8);
  }

  else
  {
    if (qword_2A1A242C0 != -1)
    {
      swift_once();
    }

    *&v53 = sub_29D9334A8();
    *(&v53 + 1) = v32;
    sub_29D69AB60();
    v33 = sub_29D9392F8();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    sub_29D9398A8();
    sub_29D9388E8();
    v62 = v37 & 1;
    *&v44 = v33;
    *(&v44 + 1) = v35;
    LOBYTE(v45) = v37 & 1;
    *(&v45 + 1) = v39;
    sub_29D6F963C(0, &qword_2A17B24E0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
    v41 = v40;
    v42 = sub_29D6F9690();
    sub_29D939478();
    v59 = v50;
    v60 = v51;
    v61 = v52;
    v55 = v46;
    v56 = v47;
    v57 = v48;
    v58 = v49;
    v53 = v44;
    v54 = v45;
    sub_29D6FA388(&v53);
    (*(v9 + 16))(v6, v13, v8);
    swift_storeEnumTagMultiPayload();
    *&v44 = v41;
    *(&v44 + 1) = v42;
    swift_getOpaqueTypeConformance2();
    sub_29D938DE8();
    return (*(v9 + 8))(v13, v8);
  }
}

uint64_t sub_29D6F6AEC(uint64_t a1)
{
  v2 = sub_29D933DF8();
  MEMORY[0x2A1C7C4A8](v2, v3);
  (*(v5 + 104))(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x29EDC50E8]);
  sub_29D939D68();
  sub_29D933DE8();
  swift_allocObject();
  v6 = sub_29D933DD8();
  v7 = HKLogHeartRateCategory();
  v8 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v7 healthDataSource:*(a1 + *(type metadata accessor for HypertensionNotificationDetailView(0) + 36))];

  aBlock[4] = sub_29D6F6CE0;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D8E44F0;
  aBlock[3] = &unk_2A2441E38;
  v9 = _Block_copy(aBlock);

  [v8 submitEvent:v6 completion:v9];
  _Block_release(v9);
}

void sub_29D6F6CE0(int a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    if (HKShowSensitiveLogItems())
    {
      if (qword_2A1A25718 != -1)
      {
        swift_once();
      }

      v4 = sub_29D937898();
      sub_29D69C6C0(v4, qword_2A1A2C008);
      v5 = a2;
      v6 = sub_29D937878();
      v7 = sub_29D93A288();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v17 = v9;
        *v8 = 136446466;
        type metadata accessor for HypertensionNotificationDetailView(0);
        sub_29D6FA04C();
        v10 = sub_29D939DA8();
        v12 = sub_29D6C2364(v10, v11, &v17);

        *(v8 + 4) = v12;
        *(v8 + 12) = 2082;
        v13 = a2;
        sub_29D6A0CD0();
        v14 = sub_29D939DA8();
        v16 = sub_29D6C2364(v14, v15, &v17);

        *(v8 + 14) = v16;
        _os_log_impl(&dword_29D677000, v6, v7, "[%{public}s] Failed to submit to HTN analytics with error: %{public}s", v8, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6BE30](v9, -1, -1);
        MEMORY[0x29ED6BE30](v8, -1, -1);

        return;
      }
    }
  }
}

uint64_t sub_29D6F6EF8(uint64_t a1)
{
  v1[19] = a1;
  sub_29D939FF8();
  v1[20] = sub_29D939FE8();
  v3 = sub_29D939FD8();
  v1[21] = v3;
  v1[22] = v2;

  return MEMORY[0x2A1C73D48](sub_29D6F6F90, v3, v2);
}

uint64_t sub_29D6F6F90()
{
  v1 = v0[19];
  v2 = type metadata accessor for HypertensionNotificationDetailView(0);
  v0[23] = v2;
  v3 = [objc_allocWithZone(MEMORY[0x29EDC51F8]) initWithHealthStore_];
  v0[24] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_29D6F70D8;
  v4 = swift_continuation_init();
  sub_29D6F9F3C(0);
  v0[17] = v5;
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29D6B458C;
  v0[13] = &unk_2A2441E10;
  v0[14] = v4;
  [v3 fetchActiveJournalWithCompletion_];

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D6F70D8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_29D6F7314;
  }

  else
  {
    v5 = sub_29D6F7208;
  }

  return MEMORY[0x2A1C73D48](v5, v4, v3);
}

uint64_t sub_29D6F7208()
{

  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = *(v0 + 152) + *(*(v0 + 184) + 28);
    v3 = *(v2 + 8);
    *(v0 + 80) = *v2;
    v4 = *(v0 + 192);
    *(v0 + 88) = v3;
    *(v0 + 144) = 1;
    sub_29D6FA094(0, &qword_2A17B2390, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);

    sub_29D9396A8();
  }

  else
  {
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_29D6F7314()
{
  v1 = v0[24];
  v2 = v0[25];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

void sub_29D6F7394(uint64_t a1, void *a2)
{
  if ((a1 & 1) == 0 && HKShowSensitiveLogItems())
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v3 = sub_29D937898();
    sub_29D69C6C0(v3, qword_2A1A2C008);
    v4 = a2;
    oslog = sub_29D937878();
    v5 = sub_29D93A288();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v6 = 136446466;
      *(v6 + 4) = sub_29D6C2364(0xD000000000000022, 0x800000029D942460, &v13);
      *(v6 + 12) = 2112;
      if (a2)
      {
        v9 = a2;
        v10 = _swift_stdlib_bridgeErrorToNSError();
        v11 = v10;
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }

      *(v6 + 14) = v10;
      *v7 = v11;
      _os_log_impl(&dword_29D677000, oslog, v5, "[%{public}s] Failed to submit to HTN analytics with error: %@", v6, 0x16u);
      sub_29D6ACA3C(v7);
      MEMORY[0x29ED6BE30](v7, -1, -1);
      sub_29D69417C(v8);
      MEMORY[0x29ED6BE30](v8, -1, -1);
      MEMORY[0x29ED6BE30](v6, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_29D6F7580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](a1 - 8, a2);
  sub_29D6FB2D4(v3, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HypertensionNotificationDetailView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  result = sub_29D6F8744(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *a3 = sub_29D6F87A8;
  a3[1] = v8;
  return result;
}

uint64_t sub_29D6F7680@<X0>(uint64_t a2@<X8>)
{
  result = sub_29D938C68();
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  return result;
}

__n128 sub_29D6F76B8@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_29D938B88();
  sub_29D6F7680(&v7);
  v3 = v8;
  v4 = v9;
  v5 = v10;
  result = v7;
  *a1 = v2;
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = result;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  return result;
}

uint64_t sub_29D6F7728@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  sub_29D6FB3FC(0, &qword_2A17B26B8, sub_29D6FB48C, sub_29D6FB598);
  v16[0] = v1;
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = v16 - v4;
  v6 = sub_29D939618();
  v7 = [objc_opt_self() systemBlueColor];
  v8 = sub_29D939528();
  v9 = sub_29D939158();
  KeyPath = swift_getKeyPath();
  v17 = v6;
  v18 = v8;
  v19 = KeyPath;
  v20 = v9;
  sub_29D939198();
  sub_29D6FB48C(0);
  v12 = v11;
  v13 = sub_29D6FB598();
  sub_29D939398();

  v17 = v12;
  v18 = v13;
  swift_getOpaqueTypeConformance2();
  v14 = v16[0];
  sub_29D939418();
  return (*(v2 + 8))(v5, v14);
}

uint64_t sub_29D6F7934@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  sub_29D6FAE00(0);
  v3 = MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v61 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v59 = &v56 - v6;
  sub_29D6FAC8C(0);
  v57 = v7;
  MEMORY[0x2A1C7C4A8](v7, v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6FAC00(0);
  v13 = MEMORY[0x2A1C7C4A8](v11 - 8, v12);
  v58 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v62 = &v56 - v16;
  if (qword_2A17B0BE0 != -1)
  {
    swift_once();
  }

  v70 = xmmword_2A17B2358;
  v17 = sub_29D69AB60();
  sub_29D935E88();
  v56 = v17;
  v18 = sub_29D9392F8();
  v20 = v19;
  v22 = v21;
  sub_29D939148();
  v23 = sub_29D9392C8();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  sub_29D69ABB4(v18, v20, v22 & 1);

  KeyPath = swift_getKeyPath();
  *&v70 = v23;
  *(&v70 + 1) = v25;
  LOBYTE(v71) = v27 & 1;
  *(&v71 + 1) = v29;
  *&v72 = KeyPath;
  BYTE8(v72) = 0;
  sub_29D939198();
  sub_29D69A8C4(0);
  sub_29D6FB670(&qword_2A17B2438, sub_29D69A8C4, sub_29D6F8E90);
  sub_29D939398();
  sub_29D69ABB4(v23, v25, v27 & 1);

  v31 = objc_opt_self();
  v32 = [v31 labelColor];
  *&v10[*(v57 + 36)] = sub_29D939528();
  static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243D360);
  swift_arrayDestroy();
  sub_29D6FAFD4();
  sub_29D939438();

  sub_29D6FB39C(v10, sub_29D6FAC8C);
  if (qword_2A17B0BE8 != -1)
  {
    swift_once();
  }

  v70 = xmmword_2A17B2368;
  sub_29D935E88();
  v33 = sub_29D9392F8();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = swift_getKeyPath();
  v41 = v37 & 1;
  LOBYTE(v70) = v37 & 1;
  LOBYTE(v63) = 1;
  v42 = sub_29D939148();
  v43 = swift_getKeyPath();
  v44 = swift_getKeyPath();
  v45 = [v31 secondaryLabelColor];
  v46 = sub_29D939528();
  *&v63 = v33;
  *(&v63 + 1) = v35;
  LOBYTE(v64) = v41;
  *(&v64 + 1) = v39;
  v65 = v40;
  LOBYTE(v66) = 1;
  *(&v66 + 1) = 256;
  *(&v66 + 1) = v43;
  *&v67 = v42;
  *(&v67 + 1) = v44;
  LOBYTE(v68) = 0;
  *(&v68 + 1) = *v69;
  DWORD1(v68) = *&v69[3];
  *(&v68 + 1) = v46;
  static String.hypertensionAccessibilityIdentifier(_:)(&unk_2A243D3A0);
  swift_arrayDestroy();
  sub_29D6FAE20(0);
  sub_29D6FB0BC(&qword_2A17B2698, sub_29D6FAE20, sub_29D6FB148, sub_29D6FA560);
  v47 = v59;
  sub_29D939438();

  v72 = v65;
  v73 = v66;
  v74 = v67;
  v75 = v68;
  v70 = v63;
  v71 = v64;
  sub_29D6FB33C(&v70, sub_29D6FAE20);
  v48 = v62;
  v49 = v58;
  sub_29D6FA148(v62, v58, sub_29D6FAC00);
  v50 = v61;
  sub_29D6FB2D4(v47, v61, sub_29D6FAE00);
  v51 = v60;
  sub_29D6FA148(v49, v60, sub_29D6FAC00);
  sub_29D6FAB88(0);
  v53 = v52;
  sub_29D6FB2D4(v50, v51 + *(v52 + 48), sub_29D6FAE00);
  v54 = v51 + *(v53 + 64);
  *v54 = 0;
  *(v54 + 8) = 1;
  sub_29D6FB33C(v47, sub_29D6FAE00);
  sub_29D6FB39C(v48, sub_29D6FAC00);
  sub_29D6FB33C(v50, sub_29D6FAE00);
  return sub_29D6FB39C(v49, sub_29D6FAC00);
}

uint64_t sub_29D6F800C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_29D938C78();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_29D6FA0E4(0, &qword_2A17B2638, sub_29D6FAAF0);
  return sub_29D6F7934(a2 + *(v3 + 44));
}

void sub_29D6F8068()
{
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  v0 = qword_2A17D0F10;
  sub_29D935E88();
  v1 = sub_29D9334A8();
  v3 = v2;

  *&xmmword_2A17B2358 = v1;
  *(&xmmword_2A17B2358 + 1) = v3;
}

void sub_29D6F8140()
{
  if (qword_2A17B0D68 != -1)
  {
    swift_once();
  }

  v0 = qword_2A17D0F10;
  sub_29D935E88();
  v1 = sub_29D9334A8();
  v3 = v2;

  *&xmmword_2A17B2368 = v1;
  *(&xmmword_2A17B2368 + 1) = v3;
}

uint64_t sub_29D6F8218(uint64_t a1)
{
  v2 = sub_29D9386C8();
  MEMORY[0x2A1C7C4A8](v2, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  return MEMORY[0x29ED68D90](v5);
}

id sub_29D6F82E0()
{
  v0 = sub_29D933AA8();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v0, v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v18 - v7;
  v9 = [objc_allocWithZone(MEMORY[0x29EDB9F88]) init];
  sub_29D933A98();
  v10 = sub_29D933A68();
  v11 = *(v1 + 8);
  v11(v8, v0);
  [v9 setLocale_];

  v12 = sub_29D939D28();
  v13 = [v9 locale];
  if (v13)
  {
    v14 = v13;
    sub_29D933A88();

    v15 = sub_29D933A68();
    v11(v5, v0);
  }

  else
  {
    v15 = 0;
  }

  v16 = [objc_opt_self() dateFormatFromTemplate:v12 options:0 locale:v15];

  [v9 setDateTemplate_];
  return v9;
}

uint64_t type metadata accessor for HypertensionNotificationDetailView(uint64_t a1)
{
  result = qword_2A17B2380;
  if (!qword_2A17B2380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D6F8544(uint64_t a1)
{
  sub_29D6FAB24(319, &qword_2A17B2378, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC390]);
  if (v1 <= 0x3F)
  {
    sub_29D69567C(319, &qword_2A1A221E0, 0x29EDBABB0);
    if (v2 <= 0x3F)
    {
      sub_29D6FA094(319, &qword_2A17B2390, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
      if (v3 <= 0x3F)
      {
        sub_29D69567C(319, &qword_2A1A22230, 0x29EDBABE8);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

__n128 sub_29D6F867C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_29D6F8690(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29D6F86D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29D6F8744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HypertensionNotificationDetailView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D6F87A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for HypertensionNotificationDetailView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_29D6F3BB0(a1, v6, a2);
}

void sub_29D6F8850(uint64_t a1)
{
  if (!qword_2A17B23A8)
  {
    sub_29D6FAF70(255, &qword_2A17B23B0, sub_29D6F88D8, MEMORY[0x29EDBC5F8]);
    sub_29D6F9928();
    v1 = sub_29D938678();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B23A8);
    }
  }
}

void sub_29D6F8950(uint64_t a1)
{
  if (!qword_2A17B23D0)
  {
    sub_29D6F89E4(255);
    sub_29D6FB6F0(&qword_2A17B2528, sub_29D6F89E4, MEMORY[0x29EDBCC30]);
    v1 = sub_29D939758();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B23D0);
    }
  }
}

void sub_29D6F8A18(uint64_t a1)
{
  if (!qword_2A17B23E0)
  {
    sub_29D6F8AA0(255);
    sub_29D6F8B2C(255);
    sub_29D6F9120(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A17B23E0);
    }
  }
}

void sub_29D6F8AA0(uint64_t a1)
{
  if (!qword_2A17B23E8)
  {
    sub_29D6F963C(255, &qword_2A17B1748, MEMORY[0x29EDBCAF8], MEMORY[0x29EDBC728], MEMORY[0x29EDBC558]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B23E8);
    }
  }
}

void sub_29D6F8B2C(uint64_t a1)
{
  if (!qword_2A17B23F0)
  {
    sub_29D6F8BC0(255);
    sub_29D6FB6F0(&qword_2A17B2478, sub_29D6F8BC0, MEMORY[0x29EDBCC30]);
    v1 = sub_29D939758();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B23F0);
    }
  }
}

void sub_29D6F8BF4(uint64_t a1)
{
  if (!qword_2A17B2400)
  {
    sub_29D6F8C90(255);
    sub_29D6F8F5C(255);
    sub_29D6F90C0(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_2A17B2400);
    }
  }
}

void sub_29D6F8CCC(uint64_t a1)
{
  if (!qword_2A17B2418)
  {
    sub_29D69A8C4(255);
    sub_29D6F8D4C(255, &qword_2A17B2420, &qword_2A17B2428, MEMORY[0x29EDBC9F0]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2418);
    }
  }
}

void sub_29D6F8D4C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_29D6FA094(255, a3, a4, MEMORY[0x29EDC9C68]);
    v5 = sub_29D939088();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_29D6F8DB8()
{
  result = qword_2A17B2430;
  if (!qword_2A17B2430)
  {
    sub_29D6F8CCC(255);
    sub_29D6FB670(&qword_2A17B2438, sub_29D69A8C4, sub_29D6F8E90);
    sub_29D6F8F0C(&qword_2A17B2448, &qword_2A17B2420, &qword_2A17B2428, MEMORY[0x29EDBC9F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2430);
  }

  return result;
}

unint64_t sub_29D6F8E90()
{
  result = qword_2A17B2440;
  if (!qword_2A17B2440)
  {
    sub_29D6FA094(255, &qword_2A17B45A0, MEMORY[0x29EDBC400], MEMORY[0x29EDBC938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2440);
  }

  return result;
}

uint64_t sub_29D6F8F0C(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29D6F8D4C(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D6F8F7C(uint64_t a1)
{
  if (!qword_2A17B2458)
  {
    sub_29D6F8FFC(255);
    sub_29D6F8D4C(255, &qword_2A17B1678, &qword_2A17B1680, MEMORY[0x29EDC9BA8]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2458);
    }
  }
}

void sub_29D6F8FFC(uint64_t a1)
{
  if (!qword_2A17B2460)
  {
    sub_29D6FB3FC(255, &qword_2A17B2410, sub_29D6F8CCC, sub_29D6F8DB8);
    sub_29D6F963C(255, &qword_2A17B2468, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], MEMORY[0x29EDBC8E8]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2460);
    }
  }
}

void sub_29D6F90C0(uint64_t a1)
{
  if (!qword_2A17B2470)
  {
    sub_29D939098();
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2470);
    }
  }
}

void sub_29D6F9188(uint64_t a1)
{
  if (!qword_2A17B2490)
  {
    sub_29D6F91F0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B2490);
    }
  }
}

void sub_29D6F91F0(uint64_t a1)
{
  if (!qword_2A17B2498)
  {
    sub_29D6F9288(255);
    sub_29D6FAB24(255, &qword_2A17B2520, MEMORY[0x29EDBC380], MEMORY[0x29EDBC938]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2498);
    }
  }
}

void sub_29D6F9288(uint64_t a1)
{
  if (!qword_2A17B24A0)
  {
    sub_29D6FAC20(255, &qword_2A17B24A8, sub_29D6F9324);
    sub_29D6F8D4C(255, &qword_2A17B2518, &qword_2A17B1730, MEMORY[0x29EDBCA98]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B24A0);
    }
  }
}

void sub_29D6F9324(uint64_t a1)
{
  if (!qword_2A17B24B0)
  {
    sub_29D6F9444(255);
    sub_29D938FE8();
    sub_29D6F94E4(255);
    sub_29D6F9824();
    sub_29D6F98D4();
    swift_getOpaqueTypeConformance2();
    sub_29D6FB6F0(&qword_2A17B2510, MEMORY[0x29EDBC098], MEMORY[0x29EDBC090]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B24B0);
    }
  }
}

void sub_29D6F9444(uint64_t a1)
{
  if (!qword_2A17B24B8)
  {
    sub_29D6F94E4(255);
    sub_29D6F9824();
    sub_29D6F98D4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B24B8);
    }
  }
}

void sub_29D6F950C(uint64_t a1)
{
  if (!qword_2A17B24C8)
  {
    sub_29D6FA324(255, &qword_2A17B24D0, MEMORY[0x29EDBC7F0]);
    sub_29D6F9734();
    v1 = sub_29D939718();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B24C8);
    }
  }
}

void sub_29D6F958C(uint64_t a1)
{
  if (!qword_2A17B24D8)
  {
    sub_29D6F963C(255, &qword_2A17B24E0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
    sub_29D6F9690();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B24D8);
    }
  }
}

void sub_29D6F963C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_29D6F9690()
{
  result = qword_2A17B24E8;
  if (!qword_2A17B24E8)
  {
    sub_29D6F963C(255, &qword_2A17B24E0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B24E8);
  }

  return result;
}

unint64_t sub_29D6F9734()
{
  result = qword_2A17B24F0;
  if (!qword_2A17B24F0)
  {
    sub_29D6FA324(255, &qword_2A17B24D0, MEMORY[0x29EDBC7F0]);
    sub_29D6F963C(255, &qword_2A17B24E0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
    sub_29D6F9690();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B24F0);
  }

  return result;
}

unint64_t sub_29D6F9824()
{
  result = qword_2A17B24F8;
  if (!qword_2A17B24F8)
  {
    sub_29D6F94E4(255);
    sub_29D6FB6F0(&qword_2A17B2500, sub_29D6F950C, MEMORY[0x29EDBC278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B24F8);
  }

  return result;
}

unint64_t sub_29D6F98D4()
{
  result = qword_2A17B2508;
  if (!qword_2A17B2508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2508);
  }

  return result;
}

unint64_t sub_29D6F9928()
{
  result = qword_2A17B2530;
  if (!qword_2A17B2530)
  {
    sub_29D6FAF70(255, &qword_2A17B23B0, sub_29D6F88D8, MEMORY[0x29EDBC5F8]);
    sub_29D6F99FC(&qword_2A17B2538, sub_29D6F88D8, sub_29D6F9A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2530);
  }

  return result;
}

uint64_t sub_29D6F99FC(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D6F9AB4()
{
  result = qword_2A17B2548;
  if (!qword_2A17B2548)
  {
    sub_29D6F8928(255);
    sub_29D6FB6F0(&qword_2A17B2550, sub_29D6F8950, MEMORY[0x29EDBCB58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2548);
  }

  return result;
}

unint64_t sub_29D6F9B6C()
{
  result = qword_2A17B2558;
  if (!qword_2A17B2558)
  {
    sub_29D6F8828(255);
    sub_29D6FB6F0(&qword_2A17B2560, sub_29D6F8850, MEMORY[0x29EDBBEA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2558);
  }

  return result;
}

uint64_t sub_29D6F9C1C()
{
  v1 = type metadata accessor for HypertensionNotificationDetailView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_29D6FAB24(0, &qword_2A17B2398, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC388]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_29D938738();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = (v5 + v1[8]);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29D6F9DE4()
{
  v2 = *(type metadata accessor for HypertensionNotificationDetailView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_29D6AC948;

  return sub_29D6F6EF8(v0 + v3);
}

void sub_29D6F9EB0(uint64_t a1)
{
  if (!qword_2A17B2578)
  {
    sub_29D6FAF70(255, &qword_2A17B2568, sub_29D6F9DC4, MEMORY[0x29EDBC918]);
    sub_29D938778();
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2578);
    }
  }
}

void sub_29D6F9F3C(uint64_t a1)
{
  if (!qword_2A1A22250)
  {
    sub_29D6F9FC4(255, &unk_2A1A221C0, &qword_2A1A221D0, 0x29EDC51F0);
    sub_29D6A0CD0();
    v1 = sub_29D93A038();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A22250);
    }
  }
}

void sub_29D6F9FC4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_29D69567C(255, a3, a4);
    v5 = sub_29D93A7F8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29D6FA034(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29D6FA04C()
{
  result = qword_2A17B2580;
  if (!qword_2A17B2580)
  {
    type metadata accessor for HypertensionNotificationDetailView(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B2580);
  }

  return result;
}

void sub_29D6FA094(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29D6FA0E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29D938788();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D6FA148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D6FA1C8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for HypertensionNotificationDetailView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

id sub_29D6FA244@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for HypertensionNotificationDetailView(0);
  v4 = *(v1 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)) + *(v3 + 36));
  *a1 = v4;

  return v4;
}

uint64_t sub_29D6FA2BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29D6FA324(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D6F958C(255);
    v7 = a3(a1, v6, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29D6FA388(uint64_t a1)
{
  sub_29D6F963C(0, &qword_2A17B24E0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D6FA410()
{
  result = qword_2A17B25A8;
  if (!qword_2A17B25A8)
  {
    sub_29D6F8F7C(255);
    sub_29D6FA4B0();
    sub_29D6F8F0C(&qword_2A17B17F0, &qword_2A17B1678, &qword_2A17B1680, MEMORY[0x29EDC9BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B25A8);
  }

  return result;
}

unint64_t sub_29D6FA4B0()
{
  result = qword_2A17B25B0;
  if (!qword_2A17B25B0)
  {
    sub_29D6F8FFC(255);
    sub_29D6F8CCC(255);
    sub_29D6F8DB8();
    swift_getOpaqueTypeConformance2();
    sub_29D6FA560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B25B0);
  }

  return result;
}

unint64_t sub_29D6FA560()
{
  result = qword_2A17B25B8;
  if (!qword_2A17B25B8)
  {
    sub_29D6F963C(255, &qword_2A17B2468, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], MEMORY[0x29EDBC8E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B25B8);
  }

  return result;
}

void sub_29D6FA5F4(uint64_t a1)
{
  if (!qword_2A17B25C8)
  {
    sub_29D6F9EB0(255);
    sub_29D6FB0BC(&qword_2A17B25D0, sub_29D6F9EB0, sub_29D6FA69C, sub_29D6FA7B8);
    v1 = sub_29D938798();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B25C8);
    }
  }
}

unint64_t sub_29D6FA69C()
{
  result = qword_2A17B25D8;
  if (!qword_2A17B25D8)
  {
    sub_29D6FAF70(255, &qword_2A17B2568, sub_29D6F9DC4, MEMORY[0x29EDBC918]);
    sub_29D6FB0BC(&qword_2A17B25E0, sub_29D6F9DC4, sub_29D6F9B6C, sub_29D6FA784);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B25D8);
  }

  return result;
}

void sub_29D6FA828(uint64_t a1)
{
  if (!qword_2A17B25F8)
  {
    sub_29D6FA8BC(255);
    sub_29D6FB6F0(&qword_2A17B2630, sub_29D6FA8BC, MEMORY[0x29EDBCC30]);
    v1 = sub_29D939728();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B25F8);
    }
  }
}

void sub_29D6FA8F0(uint64_t a1)
{
  if (!qword_2A17B2608)
  {
    sub_29D6FA990(255, &qword_2A17B2610, sub_29D6FAA24, &qword_2A17B2628, sub_29D6FAA24);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B2608);
    }
  }
}

void sub_29D6FA990(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29D6FB6F0(a4, a5, MEMORY[0x29EDBCC30]);
    v8 = sub_29D939758();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29D6FAA58()
{
  if (!qword_2A17B2620)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17B2620);
    }
  }
}

void sub_29D6FAB24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D6FAB88(uint64_t a1)
{
  if (!qword_2A17B2648)
  {
    sub_29D6FAC00(255);
    sub_29D6FAE00(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A17B2648);
    }
  }
}

void sub_29D6FAC20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29D939098();
    v4 = sub_29D938838();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D6FACAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29D6F963C(255, &qword_2A17B2468, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], MEMORY[0x29EDBC8E8]);
    v4 = sub_29D938838();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D6FAD44(uint64_t a1)
{
  if (!qword_2A17B2660)
  {
    sub_29D69A8C4(255);
    sub_29D6FB670(&qword_2A17B2438, sub_29D69A8C4, sub_29D6F8E90);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A17B2660);
    }
  }
}

void sub_29D6FAE40(uint64_t a1)
{
  if (!qword_2A17B2678)
  {
    sub_29D6FAECC(255);
    sub_29D6FA094(255, &qword_2A17B45A0, MEMORY[0x29EDBC400], MEMORY[0x29EDBC938]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2678);
    }
  }
}

void sub_29D6FAECC(uint64_t a1)
{
  if (!qword_2A17B2680)
  {
    sub_29D6FAF70(255, &qword_2A17B2688, sub_29D69D93C, MEMORY[0x29EDBC5E8]);
    sub_29D6F8D4C(255, &qword_2A17B2420, &qword_2A17B2428, MEMORY[0x29EDBC9F0]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2680);
    }
  }
}

void sub_29D6FAF70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_29D938838();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_29D6FAFD4()
{
  result = qword_2A17B2690;
  if (!qword_2A17B2690)
  {
    sub_29D6FAC8C(255);
    sub_29D69A8C4(255);
    sub_29D6FB670(&qword_2A17B2438, sub_29D69A8C4, sub_29D6F8E90);
    swift_getOpaqueTypeConformance2();
    sub_29D6FA560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2690);
  }

  return result;
}

uint64_t sub_29D6FB0BC(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29D6FB190()
{
  result = qword_2A17B26A8;
  if (!qword_2A17B26A8)
  {
    sub_29D6FAECC(255);
    sub_29D6FB230();
    sub_29D6F8F0C(&qword_2A17B2448, &qword_2A17B2420, &qword_2A17B2428, MEMORY[0x29EDBC9F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B26A8);
  }

  return result;
}

unint64_t sub_29D6FB230()
{
  result = qword_2A17B26B0;
  if (!qword_2A17B26B0)
  {
    sub_29D6FAF70(255, &qword_2A17B2688, sub_29D69D93C, MEMORY[0x29EDBC5E8]);
    sub_29D69DCA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B26B0);
  }

  return result;
}

uint64_t sub_29D6FB2D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D6FB33C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D6FB39C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D6FB3FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_29D6FB48C(uint64_t a1)
{
  if (!qword_2A17B26C0)
  {
    sub_29D6FB50C(255);
    sub_29D6F8D4C(255, &qword_2A17B2420, &qword_2A17B2428, MEMORY[0x29EDBC9F0]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B26C0);
    }
  }
}

void sub_29D6FB50C(uint64_t a1)
{
  if (!qword_2A17B26C8)
  {
    sub_29D6F963C(255, &qword_2A17B2468, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], MEMORY[0x29EDBC8E8]);
    v1 = sub_29D938838();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B26C8);
    }
  }
}

unint64_t sub_29D6FB598()
{
  result = qword_2A17B26D0;
  if (!qword_2A17B26D0)
  {
    sub_29D6FB48C(255);
    sub_29D6FB670(&qword_2A17B26D8, sub_29D6FB50C, sub_29D6FA560);
    sub_29D6F8F0C(&qword_2A17B2448, &qword_2A17B2420, &qword_2A17B2428, MEMORY[0x29EDBC9F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B26D0);
  }

  return result;
}

uint64_t sub_29D6FB670(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29D6FB6F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29D6FB774()
{
  result = qword_2A17B26F8;
  if (!qword_2A17B26F8)
  {
    sub_29D6FB85C(255, &qword_2A17B2700, &qword_2A17B26B8, sub_29D6FB48C, sub_29D6FB598);
    sub_29D6FB48C(255);
    sub_29D6FB598();
    swift_getOpaqueTypeConformance2();
    sub_29D6FA784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B26F8);
  }

  return result;
}

void sub_29D6FB85C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (!*a2)
  {
    sub_29D6FB3FC(255, a3, a4, a5);
    sub_29D939098();
    v6 = sub_29D938838();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_29D6FB910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29D933A58();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5, v7);
  v9 = &v22[-2] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x29EDC9E90];
  sub_29D6FC800(0, &qword_2A17B54F0, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  sub_29D9359D8();
  v11 = swift_allocObject();
  v21 = xmmword_29D93DDB0;
  *(v11 + 16) = xmmword_29D93DDB0;
  sub_29D6FC800(0, &qword_2A17B1138, sub_29D6FC5F4, v10);
  v12 = swift_allocObject();
  *(v12 + 16) = v21;
  *(v12 + 56) = sub_29D935DA8();
  *(v12 + 64) = sub_29D6FC74C(&qword_2A17B2708, MEMORY[0x29EDC23F8], MEMORY[0x29EDC23E8]);
  v13 = sub_29D693F78((v12 + 32));
  sub_29D6FBCAC(a2, a3, v13);
  sub_29D933A48();
  sub_29D933A18();
  v14 = *(v6 + 8);
  v14(v9, v5);
  sub_29D9359C8();
  v22[0] = 0;
  v22[1] = 0xE000000000000000;
  sub_29D93AA18();

  strcpy(v22, "MutableArray<");
  HIWORD(v22[1]) = -4864;
  sub_29D933A48();
  v15 = sub_29D933A18();
  v17 = v16;
  v14(v9, v5);
  MEMORY[0x29ED6A240](v15, v17);

  MEMORY[0x29ED6A240](62, 0xE100000000000000);
  sub_29D935B98();
  swift_allocObject();
  sub_29D935B28();
  v18 = sub_29D9355C8();

  v19 = sub_29D936338();
  sub_29D6FC658(0);
  swift_allocObject();
  return sub_29D88C5D0(v18, v19, 1);
}

uint64_t sub_29D6FBCAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a1;
  v29 = a2;
  v27 = a3;
  v26 = sub_29D936BE8();
  v24 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26, v3);
  v25 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6FC800(0, &qword_2A17B1848, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v23 = &v23 - v7;
  v8 = sub_29D935C78();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D937B88();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D937B38();
  if (qword_2A1A242C0 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D937B48();
  v18 = [objc_opt_self() systemBlueColor];
  v19 = sub_29D937A98();
  sub_29D937A68();
  v19(v30, 0);
  v30[3] = v13;
  v30[4] = MEMORY[0x29EDC7800];
  v20 = sub_29D693F78(v30);
  (*(v14 + 16))(v20, v17, v13);
  *v12 = 1;
  (*(v9 + 104))(v12, *MEMORY[0x29EDC22C0], v8);
  v21 = sub_29D9379E8();
  (*(*(v21 - 8) + 56))(v23, 1, 1, v21);
  (*(v24 + 104))(v25, *MEMORY[0x29EDC2A38], v26);
  sub_29D935E88();
  sub_29D935D98();
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_29D6FC104(uint64_t a1, uint64_t a2)
{
  v2 = sub_29D935D08();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D935CC8();
  v7 = sub_29D935CF8();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_29D6FC1D8(void *a1)
{
  v2 = sub_29D939968();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29D939998();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7, v9);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D6FC794();
  v12 = sub_29D93A468();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  aBlock[4] = sub_29D6FC7E0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D6C1F10;
  aBlock[3] = &unk_2A2441FE0;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  sub_29D939988();
  aBlock[0] = MEMORY[0x29EDCA190];
  sub_29D6FC74C(&qword_2A1A249D0, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
  sub_29D6FC800(0, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29D6FC864();
  sub_29D93A888();
  MEMORY[0x29ED6A880](0, v11, v6, v14);
  _Block_release(v14);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_29D6FC4B0(uint64_t a1)
{
  type metadata accessor for BloodPressureDataTypeDetailViewController(0);
  if (swift_dynamicCastClass())
  {
    v1 = sub_29D7D0C64();
  }

  else
  {
    v1 = 5;
  }

  v2 = [objc_allocWithZone(MEMORY[0x29EDBABE8]) init];
  v3 = type metadata accessor for BloodPressurePDFProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  sub_29D935EC8();
  v5 = v2;
  *(v4 + 24) = sub_29D935E98();
  *(v4 + 32) = 0x416E285000000000;
  *(v4 + 40) = 1;
  *(v4 + 41) = v1;
  v7[3] = v3;
  v7[4] = sub_29D6FC74C(&qword_2A17B2728, type metadata accessor for BloodPressurePDFProvider, &unk_29D947E8C);
  v7[0] = v4;
  sub_29D93A398();
  return sub_29D69417C(v7);
}

unint64_t sub_29D6FC5F4()
{
  result = qword_2A17B1140;
  if (!qword_2A17B1140)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A17B1140);
  }

  return result;
}

void sub_29D6FC658(uint64_t a1)
{
  if (!qword_2A17B2710)
  {
    sub_29D6FC6EC(255);
    v3 = v2;
    v4 = sub_29D6FC74C(&qword_2A17B2720, sub_29D6FC6EC, MEMORY[0x29EDC2110]);
    v6 = type metadata accessor for BloodPressureJournalHideableDataSource(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_2A17B2710);
    }
  }
}

void sub_29D6FC6EC(uint64_t a1)
{
  if (!qword_2A17B2718)
  {
    sub_29D935B98();
    v1 = sub_29D9357B8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2718);
    }
  }
}

uint64_t sub_29D6FC74C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29D6FC794()
{
  result = qword_2A1A248D0;
  if (!qword_2A1A248D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A248D0);
  }

  return result;
}

uint64_t sub_29D6FC7E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29D6FC800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D6FC864()
{
  result = qword_2A1A24980;
  if (!qword_2A1A24980)
  {
    sub_29D6FC800(255, &qword_2A1A24990, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A24980);
  }

  return result;
}

uint64_t sub_29D6FC8EC()
{
  v0 = sub_29D934148();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29D934178();
  sub_29D6FD494(v5, qword_2A1A2BFA0);
  sub_29D69C6C0(v5, qword_2A1A2BFA0);
  sub_29D933FE8();
  sub_29D6FD4F8(0, &qword_2A1A24898, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v6 = sub_29D933F58();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_29D93DDB0;
  (*(v7 + 104))(v9 + v8, *MEMORY[0x29EDC3790], v6);
  sub_29D6E4080(v9);
  swift_setDeallocating();
  (*(v7 + 8))(v9 + v8, v6);
  swift_deallocClassInstance();
  sub_29D6A0C58();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940030;
  sub_29D6AA400();
  *(inited + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  sub_29D6E3724(inited);
  v12 = v11;
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_29D8E8608(v12);

  (*(v1 + 104))(v4, *MEMORY[0x29EDC3898], v0);
  return sub_29D934168();
}

uint64_t sub_29D6FCBD8()
{
  sub_29D6A0C58();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29D940030;
  sub_29D6AA400();
  *(inited + 32) = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA870]);
  sub_29D6E3724(inited);
  v2 = v1;
  swift_setDeallocating();
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_29D6FCCA0()
{
  v0 = type metadata accessor for AFibBurdenPromotionTileActionHandler(0);
  sub_29D6FD55C();
  return v0;
}

uint64_t sub_29D6FCCD4()
{
  v1 = sub_29D934798();
  MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  if (qword_2A1A257A0 != -1)
  {
    swift_once();
  }

  v3 = qword_2A1A2C038;
  sub_29D934788();
  if (qword_2A17B0D48 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();
  sub_29D9334A8();
  sub_29D9334A8();
  return sub_29D9349E8();
}

uint64_t sub_29D6FCF20()
{
  v1 = OBJC_IVAR____TtC5Heart30HeartFeaturePromotionGenerator_domain;
  v2 = sub_29D934178();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AFibBurdenPromotionGenerator(uint64_t a1)
{
  result = qword_2A1A23F70;
  if (!qword_2A1A23F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *sub_29D6FD060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1;
  v30 = *v4;
  v8 = sub_29D934178();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29D9341E8();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13, v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[3] = type metadata accessor for AFibBurdenSettingsManager();
  v33[4] = &off_2A244C248;
  v32 = a3;
  v33[0] = a2;
  v18 = *(v14 + 16);
  v29 = v13;
  v18(v17, a3, v13);
  v19 = qword_2A1A247A0;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_29D69C6C0(v8, qword_2A1A2BFA0);
  v31 = v9;
  v21 = *(v9 + 16);
  v21(v12, v20, v8);
  *(v4 + OBJC_IVAR____TtC5Heart30HeartFeaturePromotionGenerator_featurePromotionResult) = v7;
  v21(v4 + OBJC_IVAR____TtC5Heart30HeartFeaturePromotionGenerator_domain, v12, v8);
  if (v7 > 1u)
  {

    v23 = 0;
  }

  else
  {
    v22 = sub_29D93AD78();

    v23 = v22 ^ 1;
  }

  v24 = sub_29D8A8360(v7, v23 & 1, v17, v33, 0, 0xF000000000000000);
  v25 = *(v14 + 8);
  v26 = v29;
  v25(v32, v29);
  (*(v31 + 8))(v12, v8);
  v25(v17, v26);
  sub_29D6FD3A4(v33);
  *(v4 + OBJC_IVAR____TtC5Heart30HeartFeaturePromotionGenerator_publisher) = v24;
  return v4;
}

uint64_t sub_29D6FD3A4(uint64_t a1)
{
  sub_29D6FD4F8(0, &qword_2A1A233D8, sub_29D6FD430, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D6FD430()
{
  result = qword_2A1A233E0[0];
  if (!qword_2A1A233E0[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_2A1A233E0);
  }

  return result;
}

uint64_t *sub_29D6FD494(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_29D6FD4F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D6FD55C()
{
  result = qword_2A17B2738;
  if (!qword_2A17B2738)
  {
    type metadata accessor for AFibBurdenPromotionTileActionHandler(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2738);
  }

  return result;
}

uint64_t type metadata accessor for ElectrocardiogramPromotionTileActionHandler(uint64_t a1)
{
  result = qword_2A17B2758;
  if (!qword_2A17B2758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_OWORD *sub_29D6FD664@<X0>(_OWORD *a1@<X8>)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_2A17B2750;
  swift_beginAccess();
  sub_29D6FE77C(v1 + v8, &v15);
  if (v16)
  {
    return sub_29D6940E0(&v15, a1);
  }

  sub_29D6FE6B0(&v15);
  v10 = v1;
  sub_29D936B88();
  sub_29D936608();
  (*(v4 + 8))(v7, v3);
  sub_29D693E2C(&v15, v16);
  v11 = sub_29D936588();
  v12 = [v11 viewControllerFactory];

  sub_29D69417C(&v15);
  v13 = [v12 createElectrocardiogramListDataProvider];

  sub_29D93A868();
  sub_29D936978();
  sub_29D694294(a1, &v15);
  swift_beginAccess();
  sub_29D6FE808(&v15, v10 + v8);
  return swift_endAccess();
}

void sub_29D6FD844()
{
  if (qword_2A1A25718 != -1)
  {
    swift_once();
  }

  v1 = sub_29D937898();
  sub_29D69C6C0(v1, qword_2A1A2C008);
  v2 = v0;
  v3 = sub_29D937878();
  v4 = sub_29D93A2A8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446466;
    swift_getObjectType();
    sub_29D6FE734();
    v7 = sub_29D939DA8();
    v9 = sub_29D6C2364(v7, v8, &v10);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    *(v5 + 14) = sub_29D6C2364(0x2928706154646964, 0xE800000000000000, &v10);
    _os_log_impl(&dword_29D677000, v3, v4, "[%{public}s.%{public}s] On-boarding button tapped", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v6, -1, -1);
    MEMORY[0x29ED6BE30](v5, -1, -1);
  }

  sub_29D6FDD60();
}

void sub_29D6FD9F4(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v3, v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6, v9);
  v11 = &v23 - v10;
  [*(v1 + qword_2A17B2748) dismissOnboarding];
  type metadata accessor for ElectrocardiogramPromotionTileActionHandler(0);
  sub_29D6FE668(&unk_2A17B2778, type metadata accessor for ElectrocardiogramPromotionTileActionHandler, &unk_29D9428E0);
  v12 = sub_29D936AF8();
  if (v12)
  {
    v13 = v12;
    sub_29D936B88();
    sub_29D936608();
    v14 = *(v4 + 8);
    v14(v11, v3);
    sub_29D693E2C(&v24, v25);
    v15 = sub_29D936588();
    v16 = [v15 viewControllerFactory];

    sub_29D69417C(&v24);
    sub_29D6FD664(&v24);
    sub_29D693E2C(&v24, v25);
    v17 = sub_29D93AD68();
    sub_29D69417C(&v24);
    v18 = [v16 createElectrocardiogramDataMetadataViewControllerWithElectrocardiogram:a1 dataProvider:v17];

    sub_29D936978();
    sub_29D936B88();
    v19 = sub_29D936618();
    v14(v8, v3);
    v20 = [v19 tabBarController];

    if (v20)
    {
      sub_29D6C5040(0, &qword_2A1A21EF0, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_29D940030;
      *(v21 + 32) = v18;
      v22 = v18;
      sub_29D74DA28(v13, v21, 0);
    }
  }
}

void sub_29D6FDCF8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_29D6FD9F4(v4);
}

void sub_29D6FDD60()
{
  v1 = sub_29D933CE8();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29D936638();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D936B88();
  sub_29D936608();
  v31 = *(v7 + 8);
  v31(v10, v6);
  sub_29D693E2C(v33, v33[3]);
  v11 = sub_29D936588();
  sub_29D933C88();
  v12 = objc_allocWithZone(MEMORY[0x29EDC4658]);
  v13 = sub_29D933BB8();
  v14 = [v12 initWithCalendar_];

  (*(v2 + 8))(v5, v1);
  LOBYTE(v29) = 1;
  v15 = [objc_allocWithZone(MEMORY[0x29EDC52B8]) initWithOnboardingType:0 isFirstTimeOnboarding:1 healthStore:v11 dateCache:v14 provenance:3 delegate:v0 isSampleInteractive:v29];

  sub_29D69417C(v33);
  v16 = *&v0[qword_2A17B2748];
  *&v0[qword_2A17B2748] = v15;
  v17 = v15;

  if (v17 && (v18 = [v17 onboardingNavigationController], v17, v18))
  {
    [v18 setModalInPresentation_];
    sub_29D936B88();
    v19 = sub_29D936618();
    v31(v10, v6);
    [v19 showViewController:v18 sender:0];
  }

  else
  {
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v20 = sub_29D937898();
    sub_29D69C6C0(v20, qword_2A1A2C008);
    v21 = v0;
    v22 = sub_29D937878();
    v23 = sub_29D93A298();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33[0] = v25;
      *v24 = 136446466;
      ObjectType = swift_getObjectType();
      sub_29D6FE734();
      v26 = sub_29D939DA8();
      v28 = sub_29D6C2364(v26, v27, v33);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2082;
      *(v24 + 14) = sub_29D6C2364(0xD000000000000013, 0x800000029D95AC80, v33);
      _os_log_impl(&dword_29D677000, v22, v23, "[%{public}s.%{public}s] On-boarding navigation controller not initialized", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6BE30](v25, -1, -1);
      MEMORY[0x29ED6BE30](v24, -1, -1);
    }
  }
}

uint64_t sub_29D6FE1B0(uint64_t a1)
{
  v3 = sub_29D936638();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(v1);
  v9 = qword_2A17B2740;
  *&v8[v9] = [objc_opt_self() electrocardiogramType];
  *&v8[qword_2A17B2748] = 0;
  v10 = &v8[qword_2A17B2750];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  (*(v4 + 16))(v7, a1, v3);
  v11 = sub_29D936B98();
  (*(v4 + 8))(a1, v3);
  return v11;
}

uint64_t sub_29D6FE2FC()
{
  v1 = v0 + qword_2A17B2750;

  return sub_29D6FE6B0(v1);
}

id sub_29D6FE34C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ElectrocardiogramPromotionTileActionHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D6FE384(uint64_t a1)
{
  v2 = a1 + qword_2A17B2750;

  return sub_29D6FE6B0(v2);
}

void sub_29D6FE400()
{
  v1 = sub_29D936638();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + qword_2A17B2748);
  *(v0 + qword_2A17B2748) = 0;

  sub_29D936B88();
  v7 = sub_29D936618();
  (*(v2 + 8))(v5, v1);
  v8 = [v7 tabBarController];

  if (v8)
  {
    type metadata accessor for ElectrocardiogramPromotionTileActionHandler(0);
    sub_29D6FE668(&unk_2A17B2778, type metadata accessor for ElectrocardiogramPromotionTileActionHandler, &unk_29D9428E0);
    v9 = sub_29D936AF8();
    if (v9)
    {
      v10 = v9;
      sub_29D74E500(v9, 0);

      v8 = v10;
    }
  }
}

void sub_29D6FE590(void *a1)
{
  v1 = a1;
  sub_29D6FE400();
}

uint64_t sub_29D6FE668(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D6FE6B0(uint64_t a1)
{
  sub_29D6C5040(0, &qword_2A1A24810, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D6FE734()
{
  result = qword_2A17B2788;
  if (!qword_2A17B2788)
  {
    type metadata accessor for ElectrocardiogramPromotionTileActionHandler(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17B2788);
  }

  return result;
}

uint64_t sub_29D6FE77C(uint64_t a1, uint64_t a2)
{
  sub_29D6C5040(0, &qword_2A1A24810, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D6FE808(uint64_t a1, uint64_t a2)
{
  sub_29D6C5040(0, &qword_2A1A24810, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for CardioFitnessRetroComputeFeedItemState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 9))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for CardioFitnessRetroComputeFeedItemState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_29D6FE93C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x80;
  }

  return result;
}

uint64_t sub_29D6FE978(void *a1, uint64_t a2, int a3)
{
  v38 = a3;
  v36 = a2;
  v4 = MEMORY[0x29EDC9E88];
  sub_29D6FFBD0(0, &qword_2A17B27D0, sub_29D6FFA80, &type metadata for CardioFitnessRetroComputeFeedItemState.CompletedCodingKeys, MEMORY[0x29EDC9E88]);
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x2A1C7C4A8](v5, v6);
  v33 = &v29 - v7;
  sub_29D6FFBD0(0, &qword_2A17B27D8, sub_29D6FFAD4, &type metadata for CardioFitnessRetroComputeFeedItemState.InProgressCodingKeys, v4);
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x2A1C7C4A8](v8, v9);
  v11 = &v29 - v10;
  sub_29D6FFBD0(0, &qword_2A17B27E0, sub_29D6FFB28, &type metadata for CardioFitnessRetroComputeFeedItemState.AvailableCodingKeys, v4);
  v13 = v12;
  v30 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12, v14);
  v16 = &v29 - v15;
  sub_29D6FFBD0(0, &qword_2A17B27E8, sub_29D6FFB7C, &type metadata for CardioFitnessRetroComputeFeedItemState.CodingKeys, v4);
  v37 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17, v19);
  v21 = &v29 - v20;
  sub_29D693E2C(a1, a1[3]);
  sub_29D6FFB7C();
  v22 = v38;
  sub_29D93AED8();
  if (!(v22 >> 6))
  {
    v26 = v30;
    v39 = 0;
    sub_29D6FFB28();
    v24 = v37;
    sub_29D93ACA8();
    sub_29D93ACF8();
    (*(v26 + 8))(v16, v13);
    return (*(v18 + 8))(v21, v24);
  }

  if (v22 >> 6 == 1)
  {
    v41 = 2;
    sub_29D6FFA80();
    v23 = v33;
    v24 = v37;
    sub_29D93ACA8();
    v25 = v35;
    sub_29D93ACC8();
    (*(v34 + 8))(v23, v25);
    return (*(v18 + 8))(v21, v24);
  }

  v40 = 1;
  sub_29D6FFAD4();
  v28 = v37;
  sub_29D93ACA8();
  (*(v31 + 8))(v11, v32);
  return (*(v18 + 8))(v21, v28);
}

void sub_29D6FEE14(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65746F6D6F7270 && a2 == 0xE700000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_29D93AD78();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_29D6FEE9C(uint64_t a1)
{
  v2 = sub_29D6FFB28();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D6FEED8(uint64_t a1)
{
  v2 = sub_29D6FFB28();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D6FEF14()
{
  v1 = 0x6572676F72506E69;
  if (*v0 != 1)
  {
    v1 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C62616C69617661;
  }
}

uint64_t sub_29D6FEF78@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29D6FF2AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29D6FEFA0(uint64_t a1)
{
  v2 = sub_29D6FFB7C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D6FEFDC(uint64_t a1)
{
  v2 = sub_29D6FFB7C();

  return MEMORY[0x2A1C73280](a1, v2);
}

void sub_29D6FF034(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000029D95ACA0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_29D93AD78();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_29D6FF0C8(uint64_t a1)
{
  v2 = sub_29D6FFA80();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D6FF104(uint64_t a1)
{
  v2 = sub_29D6FFA80();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D6FF140(uint64_t a1)
{
  v2 = sub_29D6FFAD4();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D6FF17C(uint64_t a1)
{
  v2 = sub_29D6FFAD4();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D6FF1D0@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_29D6FF3E0(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_29D6FF220(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  if (a2 >> 6)
  {
    if (a2 >> 6 == 1)
    {
      if ((a4 & 0xC0) == 0x40)
      {
        if (a2)
        {
          if (a4)
          {
            return 1;
          }
        }

        else if ((a4 & 1) == 0 && *&a1 == *&a3)
        {
          return 1;
        }
      }
    }

    else if ((a4 & 0xC0) == 0x80 && *&a3 == 0.0 && a4 == 128)
    {
      return 1;
    }
  }

  else if (a4 < 0x40u)
  {
    return (a3 ^ a1 ^ 1) & 1;
  }

  return 0;
}

uint64_t sub_29D6FF2AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065 || (sub_29D93AD78() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572676F72506E69 && a2 == 0xEA00000000007373 || (sub_29D93AD78() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v5 = sub_29D93AD78();

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

uint64_t sub_29D6FF3E0(void *a1)
{
  v2 = MEMORY[0x29EDC9E80];
  sub_29D6FFBD0(0, &qword_2A17B2790, sub_29D6FFA80, &type metadata for CardioFitnessRetroComputeFeedItemState.CompletedCodingKeys, MEMORY[0x29EDC9E80]);
  v37 = v3;
  v39 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v4);
  v42 = &v35 - v5;
  sub_29D6FFBD0(0, &qword_2A17B27A0, sub_29D6FFAD4, &type metadata for CardioFitnessRetroComputeFeedItemState.InProgressCodingKeys, v2);
  v38 = v6;
  v36 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6, v7);
  v41 = &v35 - v8;
  sub_29D6FFBD0(0, &qword_2A17B27B0, sub_29D6FFB28, &type metadata for CardioFitnessRetroComputeFeedItemState.AvailableCodingKeys, v2);
  v10 = v9;
  v35 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9, v11);
  v13 = &v35 - v12;
  sub_29D6FFBD0(0, &qword_2A17B27C0, sub_29D6FFB7C, &type metadata for CardioFitnessRetroComputeFeedItemState.CodingKeys, v2);
  v15 = v14;
  v40 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14, v16);
  v18 = &v35 - v17;
  v19 = a1[3];
  v44 = a1;
  sub_29D693E2C(a1, v19);
  sub_29D6FFB7C();
  v20 = v43;
  sub_29D93AEC8();
  if (!v20)
  {
    v21 = v10;
    v23 = v41;
    v22 = v42;
    v24 = v40;
    v25 = sub_29D93AC98();
    v26 = (2 * *(v25 + 16)) | 1;
    v45 = v25;
    v46 = v25 + 32;
    v47 = 0;
    v48 = v26;
    v27 = sub_29D8741F4();
    if (v27 == 3 || v47 != v48 >> 1)
    {
      v13 = sub_29D93AA78();
      swift_allocError();
      v29 = v28;
      sub_29D6CA748(0);
      *v29 = &type metadata for CardioFitnessRetroComputeFeedItemState;
      sub_29D93AC18();
      sub_29D93AA58();
      (*(*(v13 - 8) + 104))(v29, *MEMORY[0x29EDC9DB8], v13);
      swift_willThrow();
      (*(v24 + 8))(v18, v15);
      sub_29D936978();
    }

    else if (v27)
    {
      if (v27 == 1)
      {
        v49 = 1;
        sub_29D6FFAD4();
        sub_29D93AC08();
        (*(v36 + 8))(v23, v38);
        (*(v24 + 8))(v18, v15);
        sub_29D936978();
        v13 = 0;
      }

      else
      {
        v49 = 2;
        sub_29D6FFA80();
        sub_29D93AC08();
        v32 = v37;
        v13 = sub_29D93AC38();
        (*(v39 + 8))(v22, v32);
        (*(v24 + 8))(v18, v15);
        sub_29D936978();
      }
    }

    else
    {
      v49 = 0;
      sub_29D6FFB28();
      v31 = v13;
      sub_29D93AC08();
      v33 = v18;
      v34 = sub_29D93AC68();
      (*(v35 + 8))(v31, v21);
      (*(v24 + 8))(v33, v15);
      sub_29D936978();
      v13 = v34 & 1;
    }
  }

  sub_29D69417C(v44);
  return v13;
}

unint64_t sub_29D6FFA80()
{
  result = qword_2A17B2798;
  if (!qword_2A17B2798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2798);
  }

  return result;
}

unint64_t sub_29D6FFAD4()
{
  result = qword_2A17B27A8;
  if (!qword_2A17B27A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B27A8);
  }

  return result;
}

unint64_t sub_29D6FFB28()
{
  result = qword_2A17B27B8;
  if (!qword_2A17B27B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B27B8);
  }

  return result;
}

unint64_t sub_29D6FFB7C()
{
  result = qword_2A17B27C8;
  if (!qword_2A17B27C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B27C8);
  }

  return result;
}

void sub_29D6FFBD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_29D6FFC7C()
{
  result = qword_2A17B27F0;
  if (!qword_2A17B27F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B27F0);
  }

  return result;
}

unint64_t sub_29D6FFCD4()
{
  result = qword_2A17B27F8;
  if (!qword_2A17B27F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B27F8);
  }

  return result;
}

unint64_t sub_29D6FFD2C()
{
  result = qword_2A17B2800;
  if (!qword_2A17B2800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2800);
  }

  return result;
}

unint64_t sub_29D6FFD84()
{
  result = qword_2A17B2808;
  if (!qword_2A17B2808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2808);
  }

  return result;
}

unint64_t sub_29D6FFDDC()
{
  result = qword_2A17B2810;
  if (!qword_2A17B2810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2810);
  }

  return result;
}

unint64_t sub_29D6FFE34()
{
  result = qword_2A17B2818;
  if (!qword_2A17B2818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2818);
  }

  return result;
}

unint64_t sub_29D6FFE8C()
{
  result = qword_2A17B2820;
  if (!qword_2A17B2820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2820);
  }

  return result;
}

unint64_t sub_29D6FFEE4()
{
  result = qword_2A17B2828;
  if (!qword_2A17B2828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2828);
  }

  return result;
}

unint64_t sub_29D6FFF3C()
{
  result = qword_2A17B2830;
  if (!qword_2A17B2830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2830);
  }

  return result;
}

unint64_t sub_29D6FFF94()
{
  result = qword_2A17B2838;
  if (!qword_2A17B2838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2838);
  }

  return result;
}

unint64_t sub_29D6FFFEC()
{
  result = qword_2A17B2840;
  if (!qword_2A17B2840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2840);
  }

  return result;
}

uint64_t sub_29D700040()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();
}

char *sub_29D7000B8()
{
  v1 = *(v0 + 48);
  [v1 removeHeartRhythmAvailabilityObserver_];
  v2 = *(v0 + 56);
  [v2 unregisterObserver_];

  v3 = OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
  sub_29D7007C0(0, &qword_2A1A249E0, sub_29D6D278C, MEMORY[0x29EDB8B00]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_29D7001AC()
{
  sub_29D7000B8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TachycardiaFeatureStatusAvailability(uint64_t a1)
{
  result = qword_2A1A24FF0;
  if (!qword_2A1A24FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D700258(uint64_t a1)
{
  sub_29D7007C0(319, &qword_2A1A249E0, sub_29D6D278C, MEMORY[0x29EDB8B00]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_29D70034C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29D9339F8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_29D9347C8())
  {
    if (![objc_opt_self() activePairedWatchSupportsHeartRateMotionContexts] || (v8 = *(v1 + 48), sub_29D9339E8(), v9 = sub_29D933958(), (*(v4 + 8))(v7, v3), v10 = objc_msgSend(v8, sel_isHeartAgeGatingEnabledOnActiveWatchWithCurrentDate_, v9), v9, v10))
    {
      v11 = MEMORY[0x29EDC1750];
LABEL_5:
      v12 = *v11;
      v13 = sub_29D9346E8();
      v14 = *(v13 - 8);
      (*(v14 + 104))(a1, v12, v13);
      return (*(v14 + 56))(a1, 0, 1, v13);
    }

    v18 = objc_opt_self();
    if (([v18 isBackgroundHeartRateEnabled] & 1) == 0)
    {
      v11 = MEMORY[0x29EDC1758];
      goto LABEL_5;
    }

    v19 = [v18 isTachycardiaDetectionEnabled];
    v20 = sub_29D9346E8();
    v21 = *(v20 - 8);
    v22 = (v21 + 56);
    if (v19)
    {
      v23 = MEMORY[0x29EDC1760];
    }

    else
    {
      v23 = MEMORY[0x29EDC1768];
    }

    (*(v21 + 104))(a1, *v23, v20);
    return (*v22)(a1, 0, 1, v20);
  }

  else
  {
    v16 = sub_29D9346E8();
    v17 = *(*(v16 - 8) + 56);

    return v17(a1, 1, 1, v16);
  }
}

void sub_29D70061C()
{
  v1 = v0;
  [*(v0 + 48) addHeartRhythmAvailabilityObserver_];
  [*(v0 + 56) registerObserver_];
  v2 = objc_allocWithZone(MEMORY[0x29EDB8E78]);
  v3 = sub_29D939D28();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = v1[4];
    v6 = v1[5];
    v7 = v4;
    v8 = sub_29D930B78(v4, v5, v6);

    v1[8] = v8;

    v9 = sub_29D935E88();
    sub_29D930DB4(v9);

    v10 = swift_allocObject();
    swift_weakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = sub_29D700D4C;
    *(v11 + 24) = v10;
    sub_29D700D5C();
    sub_29D700DC0();
    v12 = sub_29D938588();

    v1[9] = v12;
  }
}

void sub_29D7007C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D700824(uint64_t a1)
{
  sub_29D6D278C(0);
  v3 = MEMORY[0x2A1C7C4A8](v1 - 8, v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v10 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_29D70034C(v8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_29D700C8C(v8, v5);
    sub_29D9383D8();
    return sub_29D700CF0(v8);
  }

  return result;
}

uint64_t sub_29D700B14(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D9383C8();
}

uint64_t sub_29D700B90(uint64_t a1, uint64_t *a2)
{
  sub_29D6D278C(0);
  v5 = MEMORY[0x2A1C7C4A8](v3 - 8, v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v12 - v9;
  sub_29D700C8C(a1, &v12 - v9);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D700C8C(v10, v7);

  sub_29D9383D8();
  return sub_29D700CF0(v10);
}

uint64_t sub_29D700C8C(uint64_t a1, uint64_t a2)
{
  sub_29D6D278C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D700CF0(uint64_t a1)
{
  sub_29D6D278C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29D700D5C()
{
  if (!qword_2A1A24A88)
  {
    v0 = sub_29D938238();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A24A88);
    }
  }
}

unint64_t sub_29D700DC0()
{
  result = qword_2A1A24A90;
  if (!qword_2A1A24A90)
  {
    sub_29D700D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A24A90);
  }

  return result;
}

char *sub_29D700E18(void *a1)
{
  sub_29D7007C0(0, &qword_2A1A249E0, sub_29D6D278C, MEMORY[0x29EDB8B00]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3, v6);
  v8 = &v25 - v7;
  sub_29D6D278C(0);
  v11 = MEMORY[0x2A1C7C4A8](v9, v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11, v14);
  v16 = &v25 - v15;
  *(v1 + 2) = sub_29D939D68();
  *(v1 + 3) = v17;
  *(v1 + 4) = sub_29D939D68();
  *(v1 + 5) = v18;
  v19 = [objc_allocWithZone(MEMORY[0x29EDBAEB8]) init];
  v20 = MEMORY[0x29EDCA190];
  *(v1 + 7) = v19;
  *(v1 + 8) = v20;
  *(v1 + 9) = 0;
  v21 = OBJC_IVAR____TtC5Heart36TachycardiaFeatureStatusAvailability__featureStatus;
  v22 = sub_29D9346E8();
  (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
  sub_29D700C8C(v16, v13);
  sub_29D938398();
  sub_29D700CF0(v16);
  (*(v5 + 32))(&v1[v21], v8, v4);
  *(v1 + 6) = a1;
  v23 = a1;
  sub_29D70034C(v16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29D700C8C(v16, v13);

  sub_29D9383D8();
  sub_29D700CF0(v16);
  sub_29D70061C();
  return v1;
}

uint64_t sub_29D7010AC(uint64_t a1)
{
  v2 = sub_29D93A898();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_29D703F90(v2, *(a1 + 36), 0, a1);
  sub_29D935E88();
  return v4;
}

uint64_t sub_29D701128(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_29D93A8C8();
    v5 = v4;
    v6 = sub_29D93A968();
    v8 = v7;
    v9 = MEMORY[0x29ED6ACF0](v3, v5, v6, v7);
    sub_29D703574(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_29D703574(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_29D93A898();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_29D703A8C(v3, v5, v2 != 0, a1, &unk_2A17B37A0, 0x29EDBAD60);
  v12 = v11;
  sub_29D703574(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_29D701254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  sub_29D702D40(0, &qword_2A17B2908, &unk_2A17B37A0, 0x29EDBAD60, MEMORY[0x29EDBA238]);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D701344, 0, 0);
}

uint64_t sub_29D701344()
{
  v1 = v0[6];
  v14 = v0[7];
  sub_29D69567C(0, &qword_2A1A22220, 0x29EDBAB18);
  v0[11] = MEMORY[0x29ED6A7D0](*MEMORY[0x29EDBA4F8]);
  v2 = objc_opt_self();
  v3 = sub_29D933958();
  v4 = sub_29D933958();
  v5 = [v2 predicateForSamplesWithStartDate:v3 endDate:v4 options:0];
  v0[12] = v5;

  v6 = MEMORY[0x29EDBA210];
  sub_29D702DA8(0, &qword_2A17B2910, &qword_2A17B2918, MEMORY[0x29EDBA210]);
  sub_29D702D40(0, &qword_2A17B2918, &unk_2A17B37A0, 0x29EDBAD60, v6);
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  v0[13] = sub_29D69567C(0, &unk_2A17B37A0, 0x29EDBAD60);
  v7 = v5;
  sub_29D939AB8();

  v8 = MEMORY[0x29EDB9980];
  sub_29D702DA8(0, &qword_2A17B2920, &qword_2A17B2928, MEMORY[0x29EDB9980]);
  sub_29D702D40(0, &qword_2A17B2928, &unk_2A17B37A0, 0x29EDBAD60, v8);
  *(swift_allocObject() + 16) = xmmword_29D93DDB0;
  KeyPath = swift_getKeyPath();
  MEMORY[0x29ED63750](KeyPath, 0);
  sub_29D939B28();
  if (v1)
  {
    v10 = v1;
  }

  else
  {
    v10 = v14;
  }

  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_29D7016A4;
  v12 = v0[8];

  return MEMORY[0x2A1C5B578](v10, v12);
}

uint64_t sub_29D7016A4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_29D701D8C;
  }

  else
  {
    v4 = sub_29D7017B8;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29D7017B8()
{
  v54 = v0;
  v1 = v0[15];
  v52 = MEMORY[0x29EDCA190];
  if (v1 >> 62)
  {
LABEL_30:
    v48 = v1 & 0xFFFFFFFFFFFFFF8;
    v2 = sub_29D93A928();
    v3 = v0[15];
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_31:
    v1 = MEMORY[0x29EDCA190];
    goto LABEL_32;
  }

  v48 = v1 & 0xFFFFFFFFFFFFFF8;
  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v3 = v0[15];
  if (!v2)
  {
    goto LABEL_31;
  }

LABEL_3:
  v4 = 0;
  v45 = v3 + 32;
  v46 = v1 & 0xC000000000000001;
  v43 = *MEMORY[0x29EDBA890];
  v42 = *MEMORY[0x29EDBA888];
  v1 = MEMORY[0x29EDCA190];
  v44 = v2;
  while (2)
  {
    v41 = v1;
    v5 = v4;
    while (1)
    {
      if (v46)
      {
        v6 = MEMORY[0x29ED6AE30](v5, v0[15]);
      }

      else
      {
        if (v5 >= *(v48 + 16))
        {
          goto LABEL_29;
        }

        v6 = *(v45 + 8 * v5);
      }

      v7 = v6;
      v4 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (!v8)
      {

        if (qword_2A1A24658 != -1)
        {
          swift_once();
        }

        v19 = sub_29D937898();
        sub_29D69C6C0(v19, qword_2A1A2BF10);
        v20 = v7;
        v21 = sub_29D937878();
        v22 = sub_29D93A288();

        v23 = os_log_type_enabled(v21, v22);
        v25 = v0[11];
        v24 = v0[12];
        v27 = v0[9];
        v26 = v0[10];
        v28 = v0[8];
        if (v23)
        {
          v49 = v0[10];
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v47 = v28;
          v31 = swift_slowAlloc();
          v53 = v31;
          *v29 = 136446466;
          *(v29 + 4) = sub_29D6C2364(0xD000000000000019, 0x800000029D942EE0, &v53);
          *(v29 + 12) = 2112;
          v32 = [v20 sampleType];
          *(v29 + 14) = v32;
          *v30 = v32;
          _os_log_impl(&dword_29D677000, v21, v22, "[%{public}s] Found unexpected sample of type: %@", v29, 0x16u);
          sub_29D6ACA3C(v30);
          MEMORY[0x29ED6BE30](v30, -1, -1);
          sub_29D69417C(v31);
          MEMORY[0x29ED6BE30](v31, -1, -1);
          MEMORY[0x29ED6BE30](v29, -1, -1);

          (*(v27 + 8))(v49, v47);
        }

        else
        {

          (*(v27 + 8))(v26, v28);
        }

        v33 = 0;
        goto LABEL_33;
      }

      v9 = v8;
      sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
      v10 = v7;
      v11 = MEMORY[0x29ED6A6C0](v43);
      v12 = [v9 objectsForType_];

      sub_29D702E20();
      v13 = sub_29D93A0D8();

      v14 = sub_29D701128(v13);

      if (v14)
      {
      }

      v15 = MEMORY[0x29ED6A6C0](v42);
      v16 = [v9 objectsForType_];

      v17 = sub_29D93A0D8();
      v1 = sub_29D701128(v17);

      if (v1)
      {

        if (v14)
        {
          break;
        }
      }

      ++v5;
      v0 = v51;
      if (v4 == v44)
      {
        v1 = v41;
        goto LABEL_32;
      }
    }

    v18 = v10;
    MEMORY[0x29ED6A300]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_29D939F78();
    }

    sub_29D939FA8();

    v0 = v51;
    v1 = v52;
    if (v4 != v44)
    {
      continue;
    }

    break;
  }

LABEL_32:
  v35 = v0[11];
  v34 = v0[12];
  v36 = v0[9];
  v50 = v0[10];
  v37 = v0[8];

  v0[3] = v1;
  swift_getKeyPath();
  sub_29D702D40(0, &qword_2A17B1378, &qword_2A17B1380, 0x29EDBAB10, MEMORY[0x29EDC9A40]);
  sub_29D702E94();
  sub_29D702F18();
  v38 = sub_29D939E98();

  v33 = sub_29D702068(v38);

  (*(v36 + 8))(v50, v37);
LABEL_33:

  v39 = v0[1];

  return v39(v33);
}

uint64_t sub_29D701D8C()
{
  v24 = v0;
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A1A2BF10);
  v3 = v1;
  v4 = sub_29D937878();
  v5 = sub_29D93A288();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 128);
  v8 = *(v0 + 88);
  v9 = *(v0 + 72);
  v10 = *(v0 + 80);
  v11 = *(v0 + 64);
  if (v6)
  {
    v21 = *(v0 + 96);
    v22 = *(v0 + 80);
    v12 = swift_slowAlloc();
    v20 = v11;
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_29D6C2364(0xD000000000000019, 0x800000029D942EE0, &v23);
    *(v12 + 12) = 2080;
    *(v0 + 16) = v7;
    v14 = v7;
    sub_29D6A0CD0();
    v15 = sub_29D939DB8();
    v17 = sub_29D6C2364(v15, v16, &v23);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s] Error querying for samples: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6BE30](v13, -1, -1);
    MEMORY[0x29ED6BE30](v12, -1, -1);

    (*(v9 + 8))(v22, v20);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v18 = *(v0 + 8);

  return v18(0);
}

void sub_29D70200C(id *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v4 = [*a1 *a4];
  sub_29D933998();
}

unint64_t sub_29D702068(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_29D93A928();
    if (v19)
    {
      v20 = v19;
      v1 = sub_29D702BB8(v19, 0);
      sub_29D703348(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x29EDCA190];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_29D93A928();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x29ED6AE30]();
          v11 = MEMORY[0x29ED6AE30](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_29D702C48(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_29D702C48(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
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
  }
}

void sub_29D702278()
{
  v0 = sub_29D933CE8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x29EDB8DB0]) init];
  v6 = [v5 dateByAddingTimeInterval_];

  sub_29D933C88();
  v7 = sub_29D933BB8();
  (*(v1 + 8))(v4, v0);
  v8 = [v6 hk:v7 dateBeforeDateForCalendar:0x2000 rangeUnit:?];

  if (v8)
  {
    sub_29D933998();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D7023D4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_29D9339F8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D7024A0, 0, 0);
}

uint64_t sub_29D7024A0()
{
  sub_29D702278();
  sub_29D9339E8();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_29D702548;
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[2];
  v5 = v0[3];

  return sub_29D701254(v3, v2, v4, v5);
}

uint64_t sub_29D702548(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  v8 = *(v6 + 8);
  v8(v5, v7);
  v8(v4, v7);
  if (v1)
  {
    v9 = sub_29D7028C0;
  }

  else
  {
    v9 = sub_29D7026EC;
  }

  return MEMORY[0x2A1C73D48](v9, 0, 0);
}

uint64_t sub_29D7026EC()
{
  v12 = v0;
  v1 = *(v0 + 72);
  if (v1)
  {
    if (v1 >> 62)
    {
      v2 = sub_29D93A928();
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v3 = v2 > 0;
  }

  else
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v4 = sub_29D937898();
    sub_29D69C6C0(v4, qword_2A1A2BF10);
    v5 = sub_29D937878();
    v6 = sub_29D93A288();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_29D6C2364(0xD000000000000019, 0x800000029D942EE0, &v11);
      _os_log_impl(&dword_29D677000, v5, v6, "[%{public}s] Could not fetch samples", v7, 0xCu);
      sub_29D69417C(v8);
      MEMORY[0x29ED6BE30](v8, -1, -1);
      MEMORY[0x29ED6BE30](v7, -1, -1);
    }

    v3 = 0;
  }

  v9 = *(v0 + 8);

  return v9(v3);
}

uint64_t sub_29D7028C0()
{
  v16 = v0;
  if (qword_2A1A24658 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 80);
  v2 = sub_29D937898();
  sub_29D69C6C0(v2, qword_2A1A2BF10);
  v3 = v1;
  v4 = sub_29D937878();
  v5 = sub_29D93A288();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 80);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_29D6C2364(0xD000000000000019, 0x800000029D942EE0, &v15);
    *(v8 + 12) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_29D677000, v4, v5, "[%{public}s] Could not fetch samples with error: %@", v8, 0x16u);
    sub_29D6ACA3C(v9);
    MEMORY[0x29ED6BE30](v9, -1, -1);
    sub_29D69417C(v10);
    MEMORY[0x29ED6BE30](v10, -1, -1);
    MEMORY[0x29ED6BE30](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13(0);
}

void *sub_29D702AC8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  sub_29D703D28(0);
  v4 = *(sub_29D9339F8() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_29D702BB8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  sub_29D6A0C58();
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_29D702C48(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_29D93A928();
  }

  return sub_29D93AA48();
}

void (*sub_29D702CC0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x29ED6AE30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_29D7042E8;
  }

  __break(1u);
  return result;
}

void sub_29D702D40(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D69567C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D702DA8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29D702D40(255, a3, &unk_2A17B37A0, 0x29EDBAD60, a4);
    v5 = sub_29D93AD48();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_29D702E20()
{
  result = qword_2A17B4C80;
  if (!qword_2A17B4C80)
  {
    sub_29D69567C(255, &unk_2A17B37A0, 0x29EDBAD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4C80);
  }

  return result;
}

unint64_t sub_29D702E94()
{
  result = qword_2A17B2930;
  if (!qword_2A17B2930)
  {
    sub_29D702D40(255, &qword_2A17B1378, &qword_2A17B1380, 0x29EDBAB10, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2930);
  }

  return result;
}

unint64_t sub_29D702F18()
{
  result = qword_2A17B4730;
  if (!qword_2A17B4730)
  {
    sub_29D9339F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B4730);
  }

  return result;
}

void (*sub_29D702F70(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x29ED6AE30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_29D702FF0;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D702FF8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29D93A928();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_29D93A928();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29D702D40(0, &qword_2A17B2968, &qword_2A17B81B0, 0x29EDBA008, MEMORY[0x29EDC9A40]);
          sub_29D703E04();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29D702CC0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_29D69567C(0, &qword_2A17B81B0, 0x29EDBA008);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29D7031A0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29D93A928();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_29D93A928();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29D702D40(0, &qword_2A17B2990, &unk_2A17B3720, 0x29EDC7DA8, MEMORY[0x29EDC9A40]);
          sub_29D703F0C();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29D702CC0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_29D69567C(0, &unk_2A17B3720, 0x29EDC7DA8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29D703348(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29D93A928();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_29D93A928();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29D702D40(0, &qword_2A17B1378, &qword_2A17B1380, 0x29EDBAB10, MEMORY[0x29EDC9A40]);
          sub_29D7034F0();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29D702CC0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_29D69567C(0, &qword_2A17B1380, 0x29EDBAB10);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_29D7034F0()
{
  result = qword_2A17B2938;
  if (!qword_2A17B2938)
  {
    sub_29D702D40(255, &qword_2A17B1378, &qword_2A17B1380, 0x29EDBAB10, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2938);
  }

  return result;
}

double sub_29D703574(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_29D703580(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29D93A928();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_29D93A928();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29D702D40(0, &qword_2A17B2958, &unk_2A17B37A0, 0x29EDBAD60, MEMORY[0x29EDC9A40]);
          sub_29D703D80();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29D702CC0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_29D69567C(0, &unk_2A17B37A0, 0x29EDBAD60);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29D703728(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29D93A928();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_29D93A928();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29D702D40(0, &qword_2A17B2948, &qword_2A17B2940, 0x29EDC6288, MEMORY[0x29EDC9A40]);
          sub_29D703CA4();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29D702F70(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_29D69567C(0, &qword_2A17B2940, 0x29EDC6288);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29D7038D0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29D93A928();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_29D93A928();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29D702D40(0, &qword_2A17B2980, &qword_2A17B2978, 0x29EDC7DA0, MEMORY[0x29EDC9A40]);
          sub_29D703E88();
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29D702CC0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_29D69567C(0, &qword_2A17B2978, 0x29EDC7DA0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_29D703A8C(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x29ED6AD40](a1, a2, v11);
      sub_29D69567C(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_29D69567C(0, a5, a6);
    if (sub_29D93A908() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_29D93A918();
    swift_dynamicCast();
    v6 = v19;
    v12 = sub_29D93A6F8();
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_29D93A708();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

unint64_t sub_29D703CA4()
{
  result = qword_2A17B2950;
  if (!qword_2A17B2950)
  {
    sub_29D702D40(255, &qword_2A17B2948, &qword_2A17B2940, 0x29EDC6288, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2950);
  }

  return result;
}

void sub_29D703D28(uint64_t a1)
{
  if (!qword_2A17B1438)
  {
    sub_29D9339F8();
    v1 = sub_29D93AD48();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B1438);
    }
  }
}

unint64_t sub_29D703D80()
{
  result = qword_2A17B2960;
  if (!qword_2A17B2960)
  {
    sub_29D702D40(255, &qword_2A17B2958, &unk_2A17B37A0, 0x29EDBAD60, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2960);
  }

  return result;
}

unint64_t sub_29D703E04()
{
  result = qword_2A17B2970;
  if (!qword_2A17B2970)
  {
    sub_29D702D40(255, &qword_2A17B2968, &qword_2A17B81B0, 0x29EDBA008, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2970);
  }

  return result;
}

unint64_t sub_29D703E88()
{
  result = qword_2A17B2988;
  if (!qword_2A17B2988)
  {
    sub_29D702D40(255, &qword_2A17B2980, &qword_2A17B2978, 0x29EDC7DA0, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2988);
  }

  return result;
}

unint64_t sub_29D703F0C()
{
  result = qword_2A17B2998;
  if (!qword_2A17B2998)
  {
    sub_29D702D40(255, &qword_2A17B2990, &unk_2A17B3720, 0x29EDC7DA8, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B2998);
  }

  return result;
}

uint64_t sub_29D703F90(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

BOOL sub_29D703FE4(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    if (qword_2A1A24658 != -1)
    {
      swift_once();
    }

    v15 = sub_29D937898();
    sub_29D69C6C0(v15, qword_2A1A2BF10);
    v16 = a1;
    v17 = sub_29D937878();
    v18 = sub_29D93A288();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v24 = v21;
      *v19 = 136446466;
      *(v19 + 4) = sub_29D6C2364(0xD000000000000019, 0x800000029D942EE0, &v24);
      *(v19 + 12) = 2112;
      v22 = [v16 sampleType];
      *(v19 + 14) = v22;
      *v20 = v22;
      _os_log_impl(&dword_29D677000, v17, v18, "[%{public}s] Found unexpected sample of type: %@", v19, 0x16u);
      sub_29D6ACA3C(v20);
      MEMORY[0x29ED6BE30](v20, -1, -1);
      sub_29D69417C(v21);
      MEMORY[0x29ED6BE30](v21, -1, -1);
      MEMORY[0x29ED6BE30](v19, -1, -1);
    }

    return 0;
  }

  v3 = v2;
  sub_29D69567C(0, &qword_2A1A24910, 0x29EDBAD20);
  v4 = *MEMORY[0x29EDBA890];
  v5 = a1;
  v6 = MEMORY[0x29ED6A6C0](v4);
  v7 = [v3 objectsForType_];

  sub_29D69567C(0, &unk_2A17B37A0, 0x29EDBAD60);
  sub_29D702E20();
  v8 = sub_29D93A0D8();

  v9 = sub_29D701128(v8);

  v10 = v9 != 0;
  if (v9)
  {
  }

  v11 = MEMORY[0x29ED6A6C0](*MEMORY[0x29EDBA888]);
  v12 = [v3 objectsForType_];

  v13 = sub_29D93A0D8();
  v14 = sub_29D701128(v13);

  if (!v14)
  {
    return 0;
  }

  return v10;
}

char *sub_29D704304()
{
  v1 = *v0;
  type metadata accessor for BloodPressureJournalCreationFlowManager();
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  *(inited + 32) = 0;
  *(inited + 16) = v1;
  v3 = v1;
  v4 = sub_29D89AE08(1, 2, 4, 6);
  swift_setDeallocating();

  return v4;
}

uint64_t sub_29D7043DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D7044CC();

  return MEMORY[0x2A1C5D108](a1, a2, a3, v6);
}

uint64_t sub_29D704440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29D7044CC();

  return MEMORY[0x2A1C5D0E8](a1, a2, a3, v6);
}

void sub_29D7044A4(uint64_t a1)
{
  sub_29D7044CC();
  sub_29D939058();
  __break(1u);
}

unint64_t sub_29D7044CC()
{
  result = qword_2A17B29A0;
  if (!qword_2A17B29A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17B29A0);
  }

  return result;
}

uint64_t sub_29D7045B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getObjectType();
  sub_29D6B805C(0);
  MEMORY[0x2A1C7C4A8](v4 - 8, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29D9371A8();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + qword_2A17B29B8);
  v14 = OBJC_IVAR____TtC5Heart43AtrialFibrillationFeatureStatusAvailability_status;
  swift_beginAccess();
  sub_29D6E8508(v13 + v14, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_29D70647C(v7, sub_29D6B805C);
    if (qword_2A1A25718 != -1)
    {
      swift_once();
    }

    v15 = sub_29D937898();
    sub_29D69C6C0(v15, qword_2A1A2C008);
    v16 = sub_29D937878();
    v17 = sub_29D93A288();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136446210;
      v20 = sub_29D93AF08();
      v22 = sub_29D6C2364(v20, v21, &v29);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_29D677000, v16, v17, "[%{public}s]: No status available for IRN; reporting 'inactive'", v18, 0xCu);
      sub_29D69417C(v19);
      MEMORY[0x29ED6BE30](v19, -1, -1);
      MEMORY[0x29ED6BE30](v18, -1, -1);
    }

    v23 = *MEMORY[0x29EDC1768];
    v24 = sub_29D9346E8();
    return (*(*(v24 - 8) + 104))(a1, v23, v24);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v26 = sub_29D70D5A0(v12);
    (*(v9 + 8))(v12, v8);
    v27 = sub_29D9346E8();
    if (v26)
    {
      v28 = MEMORY[0x29EDC1760];
    }

    else
    {
      v28 = MEMORY[0x29EDC1768];
    }

    return (*(*(v27 - 8) + 104))(a1, *v28, v27);
  }
}

uint64_t sub_29D704928@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  swift_getObjectType();
  v1 = sub_29D9346E8();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v1, v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v22 - v8;
  v10 = sub_29D934798();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D835400();
  v15 = sub_29D934758();
  (*(v11 + 8))(v14, v10);
  if (v15)
  {
    sub_29D7045B8(v9);
    (*(v2 + 104))(v6, *MEMORY[0x29EDC1760], v1);
    v16 = sub_29D9346D8();
    v17 = *(v2 + 8);
    v17(v6, v1);
    v17(v9, v1);
    sub_29D83548C(v16 & 1, 1);
    sub_29D7045B8(v9);
    sub_29D9347C8();
    sub_29D9347A8();
    v17(v9, v1);
    v18 = v23;
    sub_29D9368E8();
    v19 = 0;
  }

  else
  {
    v19 = 1;
    v18 = v23;
  }

  v20 = sub_29D9368F8();
  return (*(*(v20 - 8) + 56))(v18, v19, 1, v20);
}

uint64_t sub_29D704C0C()
{
  v0 = MEMORY[0x29EDCA190];
  v13 = MEMORY[0x29EDCA190];
  v1 = sub_29D704E2C();
  if (v1)
  {
    v2 = v1;
    v3 = sub_29D70511C();
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      MEMORY[0x29ED6A300]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29D939F78();
      }

      sub_29D939FA8();
      v6 = v4;
      MEMORY[0x29ED6A300]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29D939F78();
      }

      sub_29D939FA8();
      v7 = v13;
      if (v13 >> 62)
      {
        sub_29D935E88();
        v12 = sub_29D93AB48();

        swift_bridgeObjectRelease_n();
        v7 = v12;
      }

      else
      {
        v8 = v13 & 0xFFFFFFFFFFFFFF8;
        sub_29D935E88();
        sub_29D93AD88();
        if (swift_dynamicCastMetatype() || (v10 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
        {
LABEL_9:
        }

        else
        {
          v11 = (v8 + 32);
          while (*v11)
          {
            ++v11;
            if (!--v10)
            {
              goto LABEL_9;
            }
          }

          v7 = v8 | 1;
        }
      }

      return v7;
    }
  }

  if (!(v0 >> 62))
  {
    v7 = MEMORY[0x29EDCA190];
    sub_29D93ABD8();
    return v7;
  }

  return sub_29D93AB48();
}

id sub_29D704E2C()
{
  v1 = objc_opt_self();
  v2 = sub_29D939D28();
  v3 = [v1 groupSpecifierWithID_];

  if (v3)
  {
    v4 = objc_opt_self();
    v5 = [v4 irregularHeartRhythmFooterDescription];
    v6 = v5;
    v7 = v5;
    if (!v5)
    {
      sub_29D939D68();
      v7 = sub_29D939D28();

      sub_29D939D68();
      v6 = sub_29D939D28();
    }

    v8 = v5;
    v9 = [v4 irregularHeartRhythmFooterLinkTitle];
    if (!v9)
    {
      sub_29D939D68();
      v9 = sub_29D939D28();
    }

    v10 = [objc_allocWithZone(MEMORY[0x29EDBA0F8]) initWithString_];

    v11 = [v10 localizedStandardRangeOfString_];
    v13 = v12;

    sub_29D933DC8();
    sub_29D69567C(0, &qword_2A17B2A38, 0x29EDC6268);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = NSStringFromClass(ObjCClassFromMetadata);
    if (!v15)
    {
      sub_29D939D68();
      v15 = sub_29D939D28();
    }

    [v3 setProperty:v15 forKey:*MEMORY[0x29EDC62D0]];

    [v3 setProperty:v7 forKey:*MEMORY[0x29EDC62F0]];
    v20.location = v11;
    v20.length = v13;
    v16 = NSStringFromRange(v20);
    if (!v16)
    {
      sub_29D939D68();
      v16 = sub_29D939D28();
    }

    [v3 setProperty:v16 forKey:*MEMORY[0x29EDC62E0]];

    v17 = [objc_opt_self() valueWithNonretainedObject_];
    [v3 setProperty:v17 forKey:*MEMORY[0x29EDC62E8]];
    v18 = sub_29D939D28();

    [v3 setProperty:v18 forKey:*MEMORY[0x29EDC62D8]];
  }

  return v3;
}

id sub_29D70511C()
{
  v1 = [objc_opt_self() irregularHeartRhythmTitleDescription];
  if (!v1)
  {
    sub_29D939D68();
    v1 = sub_29D939D28();
  }

  v2 = [objc_opt_self() preferenceSpecifierNamed:v1 target:v0 set:sel_setAtrialFibrillationEnabledWithValue_ get:sel_isAtrialFibrillationEnabled detail:0 cell:6 edit:0];

  if (v2)
  {
    v3 = sub_29D939D28();
    [v2 setIdentifier_];

    v4 = sub_29D939FC8();
    [v2 setProperty:v4 forKey:*MEMORY[0x29EDC62A0]];
  }

  return v2;
}

uint64_t sub_29D70523C()
{
  sub_29D7061B8(0);
  MEMORY[0x2A1C7C4A8](v0 - 8, v1);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7061EC(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D706220(0);
  v11 = *(v10 - 8);
  v34 = v10;
  v35 = v11;
  MEMORY[0x2A1C7C4A8](v10, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7062B4(0);
  v16 = *(v15 - 8);
  v36 = v15;
  v37 = v16;
  MEMORY[0x2A1C7C4A8](v15, v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D7063E8(0);
  v21 = *(v20 - 8);
  v38 = v20;
  v39 = v21;
  MEMORY[0x2A1C7C4A8](v20, v22);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_29D70693C(0, &qword_2A1A249E0, sub_29D6D278C, MEMORY[0x29EDB8B00]);

  sub_29D9383A8();
  swift_endAccess();

  sub_29D7068F4(&qword_2A1A249F0, sub_29D7061EC, MEMORY[0x29EDB8AF8]);
  sub_29D938548();
  (*(v6 + 8))(v9, v5);
  sub_29D69567C(0, &qword_2A1A248D0, 0x29EDCA548);
  v25 = sub_29D93A468();
  v40 = v25;
  v26 = sub_29D93A448();
  (*(*(v26 - 8) + 56))(v3, 1, 1, v26);
  sub_29D7068F4(&qword_2A17B2A18, sub_29D706220, MEMORY[0x29EDB8918]);
  sub_29D706380();
  v27 = v34;
  sub_29D938538();
  sub_29D70647C(v3, sub_29D7061B8);

  (*(v35 + 8))(v14, v27);
  swift_allocObject();
  v28 = v33;
  swift_unknownObjectWeakInit();
  sub_29D7068F4(&qword_2A17B2A28, sub_29D7062B4, MEMORY[0x29EDB89E8]);
  v29 = v36;
  sub_29D9384B8();

  (*(v37 + 8))(v19, v29);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29D7068F4(&qword_2A17B2A30, sub_29D7063E8, MEMORY[0x29EDB8968]);
  v30 = v38;
  v31 = sub_29D938588();

  (*(v39 + 8))(v24, v30);
  *(v28 + qword_2A17B29C0) = v31;
}

uint64_t sub_29D705804(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_29D9367B8();
      sub_29D936978();
    }

    v4 = v3[qword_2A17B29C8] ^ 1;
    v3[qword_2A17B29C8] = 0;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_29D7058C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      swift_getObjectType();
      sub_29D9367C8();
      sub_29D936978();
    }
  }
}

id sub_29D705968(void *a1)
{
  v2 = sub_29D9346E8();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v2, v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5, v8);
  v10 = &v15 - v9;
  v11 = a1;
  sub_29D7045B8(v10);
  (*(v3 + 104))(v7, *MEMORY[0x29EDC1760], v2);
  sub_29D9346D8();
  v12 = *(v3 + 8);
  v12(v7, v2);
  v12(v10, v2);
  v13 = sub_29D939FC8();

  return v13;
}

void sub_29D705AD4(_BYTE *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  a1[qword_2A17B29C8] = 1;
  v9 = a3;
  v6 = a1;
  v7 = [v9 BOOLValue];
  v8 = *(*&v6[qword_2A17B29B8] + 16);
  sub_29D835258(v7, v8, ObjectType, &off_2A2442300);
}

uint64_t sub_29D705B94(char *a1)
{
  swift_getObjectType();
  v2 = sub_29D9336F8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1;

  sub_29D8356A8(v8, &off_2A2442300, v6);

  sub_29D9336A8();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_29D705CD4()
{

  v1 = v0 + qword_2A17B29D0;

  return sub_29D68B77C(v1);
}

uint64_t sub_29D705D64(uint64_t a1)
{

  v2 = a1 + qword_2A17B29D0;

  return sub_29D68B77C(v2);
}

uint64_t sub_29D705EA0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_2A17B29D0;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return sub_29D936978();
}

void (*sub_29D705F0C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_2A17B29D0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_29D705FAC;
}

void sub_29D705FAC(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    sub_29D936978();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_29D936978();
  }

  free(v3);
}

void (*sub_29D70603C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x29EDCA1B0])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_29D936958();
  return sub_29D69F0C0;
}

id sub_29D706170(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_29D706220(uint64_t a1)
{
  if (!qword_2A17B2A08)
  {
    sub_29D7061EC(255);
    sub_29D7068F4(&qword_2A1A249F0, sub_29D7061EC, MEMORY[0x29EDB8AF8]);
    v1 = sub_29D938108();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2A08);
    }
  }
}

void sub_29D7062B4(uint64_t a1)
{
  if (!qword_2A17B2A10)
  {
    sub_29D706220(255);
    sub_29D69567C(255, &qword_2A1A248D0, 0x29EDCA548);
    sub_29D7068F4(&qword_2A17B2A18, sub_29D706220, MEMORY[0x29EDB8918]);
    sub_29D706380();
    v1 = sub_29D9381E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2A10);
    }
  }
}

unint64_t sub_29D706380()
{
  result = qword_2A1A248E0;
  if (!qword_2A1A248E0)
  {
    sub_29D69567C(255, &qword_2A1A248D0, 0x29EDCA548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A248E0);
  }

  return result;
}

void sub_29D7063E8(uint64_t a1)
{
  if (!qword_2A17B2A20)
  {
    sub_29D7062B4(255);
    sub_29D7068F4(&qword_2A17B2A28, sub_29D7062B4, MEMORY[0x29EDB89E8]);
    v1 = sub_29D938168();
    if (!v2)
    {
      atomic_store(v1, &qword_2A17B2A20);
    }
  }
}

uint64_t sub_29D70647C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_29D7064EC(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  sub_29D70693C(0, &qword_2A17B1FF0, MEMORY[0x29EDC1C10], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = (v2 + qword_2A17B29A8);
  *v9 = 0xD00000000000001CLL;
  v9[1] = 0x800000029D95AFD0;
  v10 = (v2 + qword_2A17B29B0);
  *v10 = 0xD00000000000001ALL;
  v10[1] = 0x800000029D95AFF0;
  *(v2 + qword_2A17B29C0) = 0;
  *(v2 + qword_2A17B29C8) = 0;
  *(v2 + qword_2A17B29D0 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + qword_2A17B29B8) = a1;
  sub_29D8353E4();
  v11 = sub_29D934C58();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v8, a2, v11);
  (*(v12 + 56))(v8, 0, 1, v11);

  v13 = sub_29D934C48();
  sub_29D70523C();

  (*(v12 + 8))(a2, v11);
  return v13;
}

id sub_29D706714(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = sub_29D934C58();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  v9 = objc_allocWithZone(type metadata accessor for AtrialFibrillationSpecifierDataSource(0));
  v10 = sub_29D7064EC(a1, v8);
  sub_29D7068F4(&qword_2A17B2A40, type metadata accessor for AtrialFibrillationSpecifierDataSource, &unk_29D94319C);
  v11 = v10;
  v12 = sub_29D9365D8();
  sub_29D835A38();
  v13 = sub_29D939D28();

  [v12 setTitle_];

  (*(v5 + 8))(a2, v4);
  return v12;
}

uint64_t sub_29D7068F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29D70693C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29D7069A0(void *a1, void *a2, char a3)
{
  v53 = a2;
  sub_29D708E14(0, &unk_2A17B5550, MEMORY[0x29EDC1D90]);
  MEMORY[0x2A1C7C4A8](v6 - 8, v7);
  v9 = &v52 - v8;
  v10 = &v3[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_consumedHealthExperienceStore];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v11 = OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_objectType;
  *&v3[v11] = [objc_opt_self() electrocardiogramType];
  *&v3[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_cancellables] = MEMORY[0x29EDCA1A0];
  v12 = [a1 profile];
  v13 = [v12 healthStore];

  if (!v13)
  {
    __break(1u);
    goto LABEL_21;
  }

  *&v3[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_providedHealthStore] = v13;
  v14 = objc_opt_self();
  v15 = [a1 profile];
  v16 = [v15 healthStore];

  v17 = [v14 sharedInstanceForHealthStore_];
  if (!v17)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v18 = [v17 displayTypeForObjectType_];

  if (!v18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v19 = OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_displayType;
  *&v3[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_displayType] = v18;
  *&v3[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_viewControllerFactory] = a1;
  sub_29D6945AC(v53, &v3[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_pinnedContentManager]);
  v20 = a1;
  v21 = [v20 profile];
  v22 = [v21 healthStore];

  if (!v22)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v23 = [v22 profileIdentifier];

  v24 = [v23 type];
  *&v3[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_profileType] = v24;
  if (a3 != 4)
  {
    v3[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_dataTypeDetailMode] = a3;
    v30 = qword_29D9432F8[a3];
LABEL_9:
    v31 = *&v3[v19];
    v32 = [v20 profile];
    v33 = type metadata accessor for ElectrocardiogramDataTypeDetailViewController();
    v56.receiver = v3;
    v56.super_class = v33;
    v34 = objc_msgSendSuper2(&v56, sel_initWithDisplayType_profile_mode_, v31, v32, v30);

    v35 = *&v34[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_displayType];
    v36 = v34;
    if ([v35 allowsManualEntry])
    {
      v37 = sub_29D9354E8();
      v39 = v38;
      if (v37 == sub_29D9354E8() && v39 == v40)
      {
      }

      else
      {
        v42 = sub_29D93AD78();

        if ((v42 & 1) == 0)
        {
LABEL_19:

          sub_29D69417C(v53);
          return;
        }
      }

      v43 = [objc_allocWithZone(MEMORY[0x29EDC7940]) initWithBarButtonSystemItem:4 target:v36 action:sel_showAddDataVC];
      v54 = 0;
      v55 = 0xE000000000000000;
      v44 = v43;
      sub_29D93AA18();
      v45 = sub_29D939D68();
      v47 = v46;

      v54 = v45;
      v55 = v47;
      MEMORY[0x29ED6A240](0xD000000000000013, 0x800000029D95B180);
      v48 = sub_29D939D28();

      [v44 setAccessibilityIdentifier_];

      v49 = qword_2A1A257A0;
      v41 = v44;
      if (v49 != -1)
      {
        swift_once();
      }

      sub_29D9334A8();
      v50 = sub_29D939D28();

      [v41 setAccessibilityValue_];

      v51 = [v36 navigationItem];
      [v51 setRightBarButtonItem_];

      v20 = v51;
    }

    else
    {
      v41 = v36;
    }

    goto LABEL_19;
  }

  v25 = [v20 profile];
  v26 = [v25 healthStore];

  if (v26)
  {
    v27 = [v26 profileIdentifier];

    v28 = sub_29D9350C8();
    (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
    v29 = MEMORY[0x29ED658D0](v27, v9);

    sub_29D708C88(v9, &unk_2A17B5550, MEMORY[0x29EDC1D90]);
    v30 = 0;
    v3[OBJC_IVAR____TtC5Heart45ElectrocardiogramDataTypeDetailViewController_dataTypeDetailMode] = v29;
    goto LABEL_9;
  }

LABEL_24:
  __break(1u);
}