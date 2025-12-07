uint64_t sub_2199652F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219965374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = a3;
  v7[3] = a4;
  return v5(v7);
}

uint64_t sub_219965404(uint64_t a1)
{
  result = type metadata accessor for AudioFeedContentConfig(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI222AudioFeedConfigServiceC6ErrorsO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2199654A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2199654FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_219965578(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000219D40190 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_219BF78F4();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_21996560C(uint64_t a1)
{
  v2 = sub_2199656F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219965648(uint64_t a1)
{
  v2 = sub_2199656F8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_21996569C(uint64_t a1)
{
  if (!qword_27CC215E8)
  {
    sub_2199656F8();
    v1 = sub_219BF7774();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC215E8);
    }
  }
}

unint64_t sub_2199656F8()
{
  result = qword_27CC215F0;
  if (!qword_27CC215F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC215F0);
  }

  return result;
}

unint64_t sub_219965760()
{
  result = qword_27CC215F8;
  if (!qword_27CC215F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC215F8);
  }

  return result;
}

unint64_t sub_2199657B8()
{
  result = qword_27CC21600;
  if (!qword_27CC21600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21600);
  }

  return result;
}

unint64_t sub_219965810()
{
  result = qword_27CC21608;
  if (!qword_27CC21608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21608);
  }

  return result;
}

uint64_t sub_21996586C(void *a1)
{
  if (!a1)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    v5 = sub_219BDB5E4();
    goto LABEL_7;
  }

  v1 = a1;
  v2 = [v1 feedType];
  if (v2 < 7 || v2 <= 0xE && (((1 << v2) & 0x7600) != 0 || v2 == 8 || v2 == 11) || v2 == 7)
  {
    type metadata accessor for Localized();
    v3 = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    v5 = sub_219BDB5E4();

LABEL_7:
    return v5;
  }

  result = sub_219BF7514();
  __break(1u);
  return result;
}

void *sub_219965BA8(void *result)
{
  if (result)
  {
    v1 = result;
    switch([v1 feedType])
    {
      case 0uLL:
      case 1uLL:
      case 2uLL:
      case 3uLL:
      case 4uLL:
      case 5uLL:
      case 6uLL:
      case 9uLL:
      case 0xAuLL:
      case 0xCuLL:
      case 0xDuLL:
      case 0xEuLL:

        result = 0;
        break;
      case 7uLL:
      case 8uLL:
      case 0xBuLL:
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v3 = [objc_opt_self() bundleForClass_];
        v4 = sub_219BDB5E4();

        result = v4;
        break;
      default:
        result = sub_219BF7514();
        __break(1u);
        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for TopicTodayFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EBFCA8;
  if (!qword_280EBFCA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219965E6C(uint64_t a1)
{
  sub_2189AE994(319);
  if (v1 <= 0x3F)
  {
    sub_2189AE9B4(319);
    if (v2 <= 0x3F)
    {
      sub_2186F9548();
      if (v3 <= 0x3F)
      {
        sub_2186E4FBC(319);
        if (v4 <= 0x3F)
        {
          sub_218D1D174(319);
          if (v5 <= 0x3F)
          {
            sub_218CC4F9C();
            if (v6 <= 0x3F)
            {
              sub_2186F95C4();
              if (v7 <= 0x3F)
              {
                sub_2186ECA28();
                if (v8 <= 0x3F)
                {
                  sub_218CC4F34(319);
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

uint64_t sub_219965FB0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a1;
  v114 = a2;
  sub_2189AE9B4(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v113 = v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v108 = v97 - v8;
  sub_2189AE994(0);
  v10 = v9;
  v11 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v109 = v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v99 = v97 - v14;
  sub_2186E4FBC(0);
  MEMORY[0x28223BE20](v15 - 8);
  v120 = v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v119 = v97 - v18;
  MEMORY[0x28223BE20](v19);
  v118 = v97 - v20;
  sub_2189AF700(0);
  MEMORY[0x28223BE20](v21 - 8);
  v110 = v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v101 = v97 - v24;
  MEMORY[0x28223BE20](v25);
  v123 = v97 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = v97 - v28;
  sub_2189AF720(0);
  MEMORY[0x28223BE20](v30 - 8);
  v107 = v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v98 = v97 - v33;
  MEMORY[0x28223BE20](v34);
  v124 = v97 - v35;
  v37 = MEMORY[0x28223BE20](v36);
  v39 = v97 - v38;
  v112 = *(v11 + 2);
  v112(v97 - v38, v2, v10, v37);
  v111 = v11;
  v106 = *(v11 + 7);
  v116 = v39;
  v40 = v39;
  v41 = v10;
  v106(v40, 0, 1, v10);
  v42 = type metadata accessor for TopicTodayFeedGroupKnobs(0);
  v43 = v42[5];
  v104 = v5[2];
  v104(v29, v2 + v43, v4);
  v115 = v5;
  v103 = v5[7];
  v117 = v29;
  v44 = v29;
  v45 = v123;
  v103(v44, 0, 1, v4);
  v46 = v124;
  (v112)(v124, v2 + v42[6], v41);
  v112 = v41;
  v106(v46, 0, 1, v41);
  v47 = v2;
  v104(v45, v2 + v42[7], v4);
  v48 = v4;
  v103(v45, 0, 1, v4);
  v49 = v105;
  if (*v105)
  {
    v106 = *v105;
  }

  else
  {
    v106 = *(v47 + v42[8]);
  }

  v50 = v47;
  v51 = v42[9];
  v52 = type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides(0);
  v53 = v52[5];

  v54 = &v49[v53];
  v55 = v49;
  sub_219968B68(v47 + v51, v54, v118);
  sub_219968B68(v47 + v42[10], &v49[v52[6]], v119);
  v56 = sub_219968B68(v47 + v42[11], &v49[v52[7]], v120);
  v57 = *&v49[v52[8]];
  v121 = v48;
  if (v57)
  {
    v105 = v57;
  }

  else
  {
    v105 = *(v50 + v42[12]);
  }

  v58 = *(v50 + v42[13]);
  if (*&v49[v52[9]])
  {
    v103 = *&v49[v52[9]];
  }

  else
  {
    v103 = *(v50 + v42[14]);
  }

  if (*&v49[v52[10]])
  {
    v102 = *&v49[v52[10]];
  }

  else
  {
    v102 = *(v50 + v42[15]);
  }

  if (*&v49[v52[11]])
  {
    v100 = *&v49[v52[11]];
  }

  else
  {
    v100 = *(v50 + v42[16]);
  }

  v59 = *(v50 + v42[17]);
  v60 = *&v55[v52[12]];
  v122 = v42;
  v104 = v58;
  if (v60)
  {
    v97[1] = v97;
    MEMORY[0x28223BE20](v56);
    sub_219BF0204();
    v61 = v59;
    sub_219BEF814();

    v62 = sub_219BF5254();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v125[0] = v61;
    sub_219969D1C(v62, sub_218CC7128, 0, isUniquelyReferenced_nonNull_native, v125);

    v59 = v125[0];
  }

  else
  {
  }

  v64 = v114;
  v65 = v121;
  v67 = v111;
  v66 = v112;
  v68 = v101;
  v69 = v99;
  v114 = v59;
  v70 = v98;
  sub_219504A40(v116, v98, sub_2189AF720);
  v71 = *(v67 + 6);
  v72 = (v71)(v70, 1, v66);
  v112 = v71;
  if (v72 == 1)
  {
    v73 = v70;
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_2186DFF38(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    sub_219BEE974();
    v74 = (v71)(v70, 1, v66);
    v75 = v115;
    if (v74 != 1)
    {
      sub_2195049E0(v73, sub_2189AF720);
    }
  }

  else
  {
    (*(v67 + 4))(v69, v70, v66);
    v75 = v115;
  }

  v101 = *(v67 + 4);
  (v101)(v64, v69, v66);
  sub_219504A40(v117, v68, sub_2189AF700);
  v76 = v75[6];
  v77 = v76(v68, 1, v65);
  v78 = v108;
  v111 = v76;
  if (v77 == 1)
  {
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_2186DFF38(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v75 = v115;
    sub_219BEEC74();
    if (v76(v68, 1, v65) != 1)
    {
      sub_2195049E0(v68, sub_2189AF700);
    }
  }

  else
  {
    (v75[4])(v108, v68, v65);
  }

  v79 = v64 + v122[5];
  v115 = v75[4];
  (v115)(v79, v78, v65);
  v80 = v107;
  sub_219504A40(v124, v107, sub_2189AF720);
  v81 = v112;
  if ((v112)(v80, 1, v66) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_2186DFF38(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v82 = v109;
    sub_219BEE974();
    v83 = v81(v80, 1, v66);
    v84 = v82;
    v85 = v113;
    v86 = v101;
    if (v83 != 1)
    {
      sub_2195049E0(v80, sub_2189AF720);
    }
  }

  else
  {
    v84 = v109;
    v86 = v101;
    (v101)(v109, v80, v66);
    v85 = v113;
  }

  v86(v64 + v122[6], v84, v66);
  v87 = v110;
  sub_219504A40(v123, v110, sub_2189AF700);
  v88 = v121;
  v89 = v111;
  if (v111(v87, 1, v121) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_2186DFF38(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    sub_219BEEC74();
    v90 = v89(v87, 1, v88);
    v91 = v115;
    if (v90 != 1)
    {
      sub_2195049E0(v87, sub_2189AF700);
    }
  }

  else
  {
    v91 = v115;
    (v115)(v85, v87, v88);
  }

  v92 = v122;
  v91(v64 + v122[7], v85, v88);
  *(v64 + v92[8]) = v106;
  v93 = v118;
  sub_219504A40(v118, v64 + v92[9], sub_2186E4FBC);
  v94 = v119;
  sub_219504A40(v119, v64 + v92[10], sub_2186E4FBC);
  v95 = v120;
  sub_219504A40(v120, v64 + v92[11], sub_2186E4FBC);
  *(v64 + v92[12]) = v105;
  *(v64 + v92[13]) = v104;
  *(v64 + v92[14]) = v103;
  *(v64 + v92[15]) = v102;
  *(v64 + v92[16]) = v100;
  sub_2195049E0(v95, sub_2186E4FBC);
  sub_2195049E0(v94, sub_2186E4FBC);
  sub_2195049E0(v93, sub_2186E4FBC);
  sub_2195049E0(v123, sub_2189AF700);
  sub_2195049E0(v124, sub_2189AF720);
  sub_2195049E0(v117, sub_2189AF700);
  result = sub_2195049E0(v116, sub_2189AF720);
  *(v64 + v92[17]) = v114;
  return result;
}

uint64_t sub_219966E24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v121 = sub_219BEFD94();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v129 = v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE9B4(0);
  v142 = v4;
  v126 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v125 = v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v123 = v105 - v7;
  sub_2189AE994(0);
  v130 = v8;
  v137 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v124 = v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v122 = v105 - v11;
  v134 = type metadata accessor for TopicTodayFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v134);
  v143 = v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4FBC(0);
  MEMORY[0x28223BE20](v13 - 8);
  v136 = v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v133 = v105 - v16;
  MEMORY[0x28223BE20](v17);
  v138 = v105 - v18;
  sub_2189AF700(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v105 - v23;
  MEMORY[0x28223BE20](v25);
  v140 = v105 - v26;
  MEMORY[0x28223BE20](v27);
  v141 = v105 - v28;
  sub_2189AF720(0);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = v105 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v128 = (v105 - v33);
  MEMORY[0x28223BE20](v34);
  v139 = v105 - v35;
  MEMORY[0x28223BE20](v36);
  v132 = v105 - v37;
  sub_21996A15C(0, &qword_280E8CD78, MEMORY[0x277D844C8]);
  v131 = v38;
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = v105 - v40;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219968B14();
  v42 = v135;
  sub_219BF7B34();
  if (v42)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v107 = v24;
  v108 = v31;
  v112 = v21;
  v115 = 0;
  v117 = v39;
  v116 = a1;
  LOBYTE(v151) = 0;
  sub_2186DFF38(&qword_280E91A28, sub_2189AE994, MEMORY[0x277D321B0]);
  v44 = v132;
  v45 = v130;
  sub_219BF7674();
  LOBYTE(v151) = 1;
  sub_2186DFF38(&qword_280E91868, sub_2189AE9B4, MEMORY[0x277D32328]);
  sub_219BF7674();
  LOBYTE(v151) = 2;
  sub_219BF7674();
  LOBYTE(v151) = 3;
  sub_219BF7674();
  sub_2186F9548();
  v47 = v46;
  LOBYTE(v150) = 4;
  v48 = MEMORY[0x277D32620];
  sub_2186DFF38(&qword_280E913B8, sub_2186F9548, MEMORY[0x277D32620]);
  v105[3] = v47;
  sub_219BF7674();
  v113 = v151;
  sub_219BEF814();
  LOBYTE(v150) = 5;
  sub_2186DFF38(&qword_280E912E8, MEMORY[0x277D32720], MEMORY[0x277D32738]);
  sub_219BF7674();
  LOBYTE(v150) = 6;
  sub_219BF7674();
  LOBYTE(v150) = 7;
  sub_219BF7674();
  sub_218D1D174(0);
  v50 = v49;
  LOBYTE(v149) = 8;
  sub_2186DFF38(&qword_280E91468, sub_218D1D174, v48);
  v105[1] = v50;
  sub_219BF7674();
  v111 = v150;
  sub_218CC4F9C();
  v52 = v51;
  LOBYTE(v148) = 9;
  sub_2186DFF38(&qword_280E91798, sub_218CC4F9C, MEMORY[0x277D32448]);
  v105[2] = v52;
  sub_219BF7674();
  v110 = v149;
  sub_2186F95C4();
  v54 = v53;
  LOBYTE(v147) = 10;
  sub_2186DFF38(&qword_280E913F8, sub_2186F95C4, v48);
  sub_219BF7674();
  v135 = v148;
  sub_2186ECA28();
  v56 = v55;
  LOBYTE(v146) = 11;
  sub_2186DFF38(&qword_280E913D8, sub_2186ECA28, v48);
  v105[4] = v56;
  sub_219BF7674();
  v119 = v147;
  LOBYTE(v145) = 12;
  v105[5] = v54;
  sub_219BF7674();
  v118 = v146;
  sub_218CC4F34(0);
  LOBYTE(v144) = 13;
  sub_218CC84B8();
  sub_219BF7674();
  v109 = v145;
  v57 = v128;
  sub_219504A40(v44, v128, sub_2189AF720);
  v58 = v137;
  v59 = *(v137 + 48);
  v60 = v59(v57, 1, v45);
  v61 = v141;
  v114 = v41;
  v106 = v59;
  if (v60 == 1)
  {
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_2186DFF38(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v62 = v122;
    sub_219BEE974();
    v63 = v59(v57, 1, v45);
    v64 = v123;
    if (v63 != 1)
    {
      sub_2195049E0(v128, sub_2189AF720);
    }
  }

  else
  {
    v62 = v122;
    (*(v58 + 32))(v122, v57, v45);
    v64 = v123;
  }

  v65 = *(v58 + 32);
  v137 = v58 + 32;
  v128 = v65;
  (v65)(v143, v62, v45);
  v66 = v107;
  sub_219504A40(v61, v107, sub_2189AF700);
  v67 = v126;
  v68 = *(v126 + 48);
  v69 = v142;
  v70 = v68(v66, 1, v142);
  v71 = v139;
  v123 = v68;
  if (v70 == 1)
  {
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_2186DFF38(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    sub_219BEEC74();
    v72 = v68(v66, 1, v69);
    v73 = v69;
    v74 = v67;
    if (v72 != 1)
    {
      sub_2195049E0(v66, sub_2189AF700);
      v73 = v69;
    }
  }

  else
  {
    (*(v67 + 32))(v64, v66, v69);
    v73 = v69;
    v74 = v67;
  }

  v75 = *(v74 + 32);
  v75(&v143[*(v134 + 20)], v64, v73);
  v76 = v71;
  v77 = v108;
  sub_219504A40(v76, v108, sub_2189AF720);
  v78 = v130;
  v79 = v106;
  if (v106(v77, 1, v130) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_2186DFF38(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v80 = v124;
    sub_219BEE974();
    v81 = v79(v77, 1, v78) == 1;
    v82 = v140;
    v83 = v119;
    if (!v81)
    {
      sub_2195049E0(v77, sub_2189AF720);
    }
  }

  else
  {
    v80 = v124;
    (v128)(v124, v77, v78);
    v82 = v140;
    v83 = v119;
  }

  v84 = v134;
  (v128)(&v143[*(v134 + 24)], v80, v78);
  v85 = v112;
  sub_219504A40(v82, v112, sub_2189AF700);
  v86 = v142;
  v87 = v123;
  if ((v123)(v85, 1, v142) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_2186DFF38(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v88 = v125;
    v86 = v142;
    sub_219BEEC74();
    v89 = v87(v85, 1, v86);
    v90 = v88;
    v91 = v127;
    v92 = v129;
    if (v89 != 1)
    {
      sub_2195049E0(v85, sub_2189AF700);
    }
  }

  else
  {
    v90 = v125;
    v75(v125, v85, v86);
    v91 = v127;
    v92 = v129;
  }

  v93 = v143;
  v75(&v143[v84[7]], v90, v86);
  if (v113)
  {
    v94 = v113;
  }

  else
  {
    v144 = 0x7FFFFFFFFFFFFFFFLL;
    swift_allocObject();
    v94 = sub_219BEF534();
    v92 = v129;
  }

  v95 = v133;
  v96 = v110;
  *(v93 + v84[8]) = v94;
  sub_219504A40(v138, v93 + v84[9], sub_2186E4FBC);
  sub_219504A40(v95, v93 + v84[10], sub_2186E4FBC);
  sub_219504A40(v136, v93 + v84[11], sub_2186E4FBC);
  v97 = v111;
  if (v111)
  {

    v98 = v97;
  }

  else
  {
    (*(v120 + 104))(v92, *MEMORY[0x277D32A90], v121);
    swift_allocObject();

    v98 = sub_219BEF534();
  }

  v99 = v135;
  *(v93 + v84[12]) = v98;
  if (v96)
  {

    v100 = v96;
  }

  else
  {
    swift_allocObject();

    v100 = sub_219BEEE04();
    v99 = v135;
  }

  *(v93 + v84[13]) = v100;
  if (v99)
  {

    v101 = v99;
  }

  else
  {
    LOBYTE(v144) = 0;
    swift_allocObject();

    v101 = sub_219BEF534();
  }

  *(v93 + v84[14]) = v101;
  if (v83)
  {

    v102 = v83;
  }

  else
  {
    v144 = 0;
    swift_allocObject();

    v102 = sub_219BEF534();
  }

  *(v93 + v84[15]) = v102;
  if (v118)
  {

    v103 = v118;
  }

  else
  {
    LOBYTE(v144) = 0;
    swift_allocObject();

    v103 = sub_219BEF534();
  }

  *(v93 + v84[16]) = v103;
  v104 = v109;
  if (!v109)
  {
    v104 = sub_2194AE724(MEMORY[0x277D84F90]);
  }

  sub_2195049E0(v136, sub_2186E4FBC);
  sub_2195049E0(v95, sub_2186E4FBC);
  sub_2195049E0(v138, sub_2186E4FBC);
  sub_2195049E0(v140, sub_2189AF700);
  sub_2195049E0(v139, sub_2189AF720);
  sub_2195049E0(v141, sub_2189AF700);
  sub_2195049E0(v132, sub_2189AF720);
  (*(v117 + 8))(v114, v131);
  *(v93 + v84[17]) = v104;
  sub_21996A1C0(v93, v91);
  return __swift_destroy_boxed_opaque_existential_1(v116);
}

unint64_t sub_2199681C8(char a1)
{
  result = 0x73656C7572;
  switch(a1)
  {
    case 1:
      result = 0x6C6F6F706572;
      break;
    case 2:
    case 3:
      result = 0x64656E616870726FLL;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    case 5:
      result = 0xD000000000000021;
      break;
    case 6:
      v3 = 9;
      goto LABEL_12;
    case 7:
      v3 = 5;
LABEL_12:
      result = v3 | 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x546465726F6E6769;
      break;
    case 10:
      result = 0xD000000000000025;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000020;
      break;
    case 13:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_219968388(void *a1, __n128 a2)
{
  v4 = v2;
  sub_21996A15C(0, &qword_280E8C530, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219968B14();
  sub_219BF7B44();
  LOBYTE(v18) = 0;
  sub_2189AE994(0);
  sub_2186DFF38(&qword_280E91A30, sub_2189AE994, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (v3)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v16 = v8;
  v14 = type metadata accessor for TopicTodayFeedGroupKnobs(0);
  LOBYTE(v18) = 1;
  sub_2189AE9B4(0);
  sub_2186DFF38(&unk_280E91870, sub_2189AE9B4, MEMORY[0x277D32320]);
  v15 = v4;
  sub_219BF7834();
  v12 = v14;
  LOBYTE(v18) = 2;
  sub_219BF7834();
  LOBYTE(v18) = 3;
  sub_219BF7834();
  v13 = v15;
  v18 = *(v15 + v12[8]);
  v17 = 4;
  sub_2186F9548();
  sub_2186DFF38(&qword_280E913C0, sub_2186F9548, MEMORY[0x277D32610]);
  sub_219BF7834();
  LOBYTE(v18) = 5;
  sub_219BEF814();
  sub_2186DFF38(&qword_280E912F0, MEMORY[0x277D32720], MEMORY[0x277D32728]);
  sub_219BF77E4();
  LOBYTE(v18) = 6;
  sub_219BF77E4();
  LOBYTE(v18) = 7;
  sub_219BF77E4();
  v18 = *(v13 + v12[12]);
  v17 = 8;
  sub_218D1D174(0);
  sub_2186DFF38(&qword_280E91470, sub_218D1D174, MEMORY[0x277D32610]);
  sub_219BF7834();
  v18 = *(v13 + v12[13]);
  v17 = 9;
  sub_218CC4F9C();
  sub_2186DFF38(&qword_280E917A0, sub_218CC4F9C, MEMORY[0x277D32440]);
  sub_219BF7834();
  v18 = *(v13 + v12[14]);
  v17 = 10;
  sub_2186F95C4();
  sub_2186DFF38(&qword_280E91400, sub_2186F95C4, MEMORY[0x277D32610]);
  sub_219BF7834();
  v18 = *(v15 + v14[15]);
  v17 = 11;
  sub_2186ECA28();
  sub_2186DFF38(&qword_280E913E0, sub_2186ECA28, MEMORY[0x277D32610]);
  sub_219BF7834();
  v18 = *(v15 + v14[16]);
  v17 = 12;
  sub_219BF7834();
  v18 = *(v15 + v14[17]);
  v17 = 13;
  sub_218CC4F34(0);
  sub_218CC6A10();
  sub_219BF7834();
  return (*(v16 + 8))(v10, v7);
}

uint64_t sub_219968A40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21996A33C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_219968A68(uint64_t a1)
{
  v2 = sub_219968B14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219968AA4(uint64_t a1)
{
  v2 = sub_219968B14();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219968B14()
{
  result = qword_280EBFCE0[0];
  if (!qword_280EBFCE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EBFCE0);
  }

  return result;
}

uint64_t sub_219968B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_219BF0204();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v27 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = sub_219BEF814();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CC83C8(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 56);
  sub_219504A40(a1, v17, sub_2186E4FBC);
  sub_218AE6D9C(a2, &v17[v19]);
  LODWORD(a2) = (*(v12 + 48))(v17, 1, v11);
  v20 = (*(v6 + 48))(&v17[v19], 1, v5);
  if (a2 == 1)
  {
    if (v20 == 1)
    {
      return (*(v12 + 56))(v28, 1, 1, v11);
    }

    else
    {
      (*(v6 + 32))(v10, &v17[v19], v5);
      (*(v6 + 16))(v27, v10, v5);
      sub_219BEF804();
      return (*(v6 + 8))(v10, v5);
    }
  }

  else
  {
    v22 = *(v12 + 32);
    if (v20 == 1)
    {
      v23 = v28;
      v22(v28, v17, v11);
      v24 = *(v12 + 56);
      v25 = v23;
    }

    else
    {
      v22(v14, v17, v11);
      (*(v6 + 32))(v10, &v17[v19], v5);
      v26 = v28;
      sub_219BEF7D4();
      (*(v6 + 8))(v10, v5);
      (*(v12 + 8))(v14, v11);
      v24 = *(v12 + 56);
      v25 = v26;
    }

    return v24(v25, 0, 1, v11);
  }
}

double sub_219968EE8(uint64_t *a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v47 = a2;
  v52 = a4;
  v46 = a1;
  v48 = sub_219BF0204();
  v7 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4FBC(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_219BEF814();
  v49 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v45 - v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v45 - v20;
  v23 = *a3;
  v22 = a3[1];
  if (*(a5 + 16) && (v24 = sub_21870F700(v23, v22), (v25 & 1) != 0))
  {
    v26 = v49;
    v27 = v45;
    (*(v49 + 16))(v17, *(a5 + 56) + *(v49 + 72) * v24, v45);
    (*(v26 + 32))(v21, v17, v27);
    v28 = v46;
    *v46 = v23;
    v28[1] = v22;

    v29 = v47;
    sub_219BEF7D4();
    (*(v26 + 8))(v21, v27);
    (*(v26 + 56))(v29, 0, 1, v27);
  }

  else
  {
    (*(v7 + 16))(v9, v52, v48, v19);
    sub_219BEF804();
    v31 = v49;
    v32 = v45;
    if ((*(v49 + 48))(v12, 1, v45) == 1)
    {
      sub_2195049E0(v12, sub_2186E4FBC);
      if (qword_280E8D7A0 != -1)
      {
        swift_once();
      }

      v33 = qword_280F616D8;
      v34 = sub_219BF61F4();
      sub_2186EDE54(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_219C09EC0;
      v36 = MEMORY[0x277D837D0];
      *(v35 + 56) = MEMORY[0x277D837D0];
      v37 = sub_2186FC3BC();
      *(v35 + 64) = v37;
      *(v35 + 32) = v23;
      *(v35 + 40) = v22;
      v50 = 0;
      v51 = 0xE000000000000000;

      sub_219BF7484();
      v38 = v50;
      v39 = v51;
      *(v35 + 96) = v36;
      *(v35 + 104) = v37;
      *(v35 + 72) = v38;
      *(v35 + 80) = v39;
      sub_219BE5314("Supplied override clustering knobs for topic %{public}@, but override wasn't complete %{public}@", 96, 2, &dword_2186C1000, v33, v34, v35);

      v41 = v46;
      v40 = v47;
      *v46 = 0;
      v41[1] = 0;
      (*(v49 + 56))(v40, 1, 1, v32);
    }

    else
    {
      v42 = *(v31 + 32);
      v42(v14, v12, v32);
      v43 = v46;
      v44 = v47;
      *v46 = v23;
      v43[1] = v22;
      v42(v44, v14, v32);
      (*(v31 + 56))(v44, 0, 1, v32);
    }
  }

  return result;
}

uint64_t sub_2199693C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BEF814();
  v5 = *(v4 - 8);
  v64 = v4;
  v65 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v56[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2186E4FBC(0);
  MEMORY[0x28223BE20](v8 - 8);
  v62 = &v56[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v56[-v11];
  MEMORY[0x28223BE20](v13);
  v15 = &v56[-v14];
  sub_218CC85CC(0);
  v17 = v16;
  MEMORY[0x28223BE20](v16);
  v63 = &v56[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v21 = &v56[-v20];
  MEMORY[0x28223BE20](v22);
  v24 = &v56[-v23];
  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2186DFF38(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    goto LABEL_27;
  }

  v61 = v7;
  v25 = type metadata accessor for TopicTodayFeedGroupKnobs(0);
  if ((sub_219BEEC64() & 1) == 0)
  {
    goto LABEL_27;
  }

  if ((sub_219BEE9F4() & 1) == 0)
  {
    goto LABEL_27;
  }

  if ((sub_219BEEC64() & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_2186F9548();
  if ((sub_219BEF504() & 1) == 0)
  {
    goto LABEL_27;
  }

  v59 = v25;
  v26 = *(v25 + 36);
  v27 = *(v17 + 48);
  sub_219504A40(a1 + v26, v24, sub_2186E4FBC);
  v60 = v27;
  sub_219504A40(a2 + v26, &v24[v27], sub_2186E4FBC);
  v28 = v64;
  v30 = v65 + 48;
  v29 = *(v65 + 48);
  if (v29(v24, 1, v64) == 1)
  {
    if (v29(&v24[v60], 1, v28) == 1)
    {
      v58 = v29;
      sub_2195049E0(v24, sub_2186E4FBC);
      goto LABEL_13;
    }

LABEL_11:
    v31 = v24;
LABEL_26:
    sub_2195049E0(v31, sub_218CC85CC);
    goto LABEL_27;
  }

  sub_219504A40(v24, v15, sub_2186E4FBC);
  if (v29(&v24[v60], 1, v28) == 1)
  {
    (*(v65 + 8))(v15, v28);
    goto LABEL_11;
  }

  v58 = v29;
  v32 = *(v65 + 32);
  v33 = &v24[v60];
  v60 = v30;
  v34 = v61;
  v32(v61, v33, v28);
  sub_2186DFF38(&qword_27CC10CD8, MEMORY[0x277D32720], MEMORY[0x277D32730]);
  v57 = sub_219BF53A4();
  v35 = *(v65 + 8);
  v36 = v34;
  v30 = v60;
  v35(v36, v64);
  v35(v15, v64);
  v28 = v64;
  sub_2195049E0(v24, sub_2186E4FBC);
  if ((v57 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_13:
  v37 = *(v59 + 40);
  v38 = *(v17 + 48);
  sub_219504A40(a1 + v37, v21, sub_2186E4FBC);
  sub_219504A40(a2 + v37, &v21[v38], sub_2186E4FBC);
  v39 = v58;
  if (v58(v21, 1, v28) == 1)
  {
    if (v39(&v21[v38], 1, v28) == 1)
    {
      v60 = v30;
      sub_2195049E0(v21, sub_2186E4FBC);
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  sub_219504A40(v21, v12, sub_2186E4FBC);
  if (v39(&v21[v38], 1, v28) == 1)
  {
    (*(v65 + 8))(v12, v28);
LABEL_18:
    v31 = v21;
    goto LABEL_26;
  }

  v60 = v30;
  v40 = v65;
  v41 = v61;
  (*(v65 + 32))(v61, &v21[v38], v28);
  sub_2186DFF38(&qword_27CC10CD8, MEMORY[0x277D32720], MEMORY[0x277D32730]);
  v42 = sub_219BF53A4();
  v43 = *(v40 + 8);
  v43(v41, v28);
  v43(v12, v28);
  sub_2195049E0(v21, sub_2186E4FBC);
  if ((v42 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_20:
  v44 = *(v59 + 44);
  v45 = *(v17 + 48);
  v46 = v63;
  sub_219504A40(a1 + v44, v63, sub_2186E4FBC);
  sub_219504A40(a2 + v44, &v46[v45], sub_2186E4FBC);
  v47 = v58;
  if (v58(v46, 1, v28) != 1)
  {
    v48 = v62;
    sub_219504A40(v46, v62, sub_2186E4FBC);
    if (v47(&v46[v45], 1, v28) != 1)
    {
      v51 = v65;
      v52 = v61;
      (*(v65 + 32))(v61, &v46[v45], v28);
      sub_2186DFF38(&qword_27CC10CD8, MEMORY[0x277D32720], MEMORY[0x277D32730]);
      v53 = sub_219BF53A4();
      v54 = *(v51 + 8);
      v54(v52, v28);
      v54(v48, v28);
      sub_2195049E0(v46, sub_2186E4FBC);
      if ((v53 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_30;
    }

    (*(v65 + 8))(v48, v28);
    goto LABEL_25;
  }

  if (v47(&v46[v45], 1, v28) != 1)
  {
LABEL_25:
    v31 = v46;
    goto LABEL_26;
  }

  sub_2195049E0(v46, sub_2186E4FBC);
LABEL_30:
  sub_218D1D174(0);
  v55 = v59;
  if (sub_219BEF504())
  {
    sub_218CC4F9C();
    if (sub_219BEEDE4())
    {
      sub_2186F95C4();
      if (sub_219BEF504())
      {
        sub_2186ECA28();
        if (sub_219BEF504() & 1) != 0 && (sub_219BEF504())
        {
          sub_21931A484(*(a1 + *(v55 + 68)), *(a2 + *(v55 + 68)));
          return v49 & 1;
        }
      }
    }
  }

LABEL_27:
  v49 = 0;
  return v49 & 1;
}

void sub_219969D1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v60 = a5;
  v9 = sub_219BEF814();
  v50 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EDE54(0, &qword_27CC10CC0, sub_21996A0F4, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (v46 - v13);
  v15 = -1 << *(a1 + 32);
  v16 = ~v15;
  v17 = *(a1 + 64);
  v18 = -v15;
  v53 = a1;
  v54 = a1 + 64;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v55 = v16;
  v56 = 0;
  v57 = v19 & v17;
  v58 = a2;
  v59 = a3;

  v46[0] = a3;

  sub_218CC763C(v14);
  sub_21996A0F4(0);
  v21 = v20;
  v22 = *(v20 - 8);
  v23 = *(v22 + 48);
  v48 = v22 + 48;
  v49 = v23;
  if (v23(v14, 1, v20) == 1)
  {
LABEL_5:
    sub_21892DE98(v53);
  }

  else
  {
    v51 = *(v50 + 32);
    v52 = v50 + 32;
    v46[2] = v50 + 40;
    v47 = v21;
    while (1)
    {
      v26 = *v14;
      v25 = v14[1];
      v27 = v14;
      v28 = v14 + *(v21 + 48);
      v29 = v11;
      v30 = v9;
      v51(v11, v28, v9);
      v31 = *v60;
      v33 = sub_21870F700(v26, v25);
      v34 = v31[2];
      v35 = (v32 & 1) == 0;
      v36 = v34 + v35;
      if (__OFADD__(v34, v35))
      {
        break;
      }

      v37 = v32;
      if (v31[3] >= v36)
      {
        if ((a4 & 1) == 0)
        {
          sub_219490C28();
        }
      }

      else
      {
        sub_21947EC48(v36, a4 & 1);
        v38 = sub_21870F700(v26, v25);
        if ((v37 & 1) != (v39 & 1))
        {
          goto LABEL_20;
        }

        v33 = v38;
      }

      v40 = *v60;
      if (v37)
      {

        v24 = v40[7] + *(v50 + 72) * v33;
        v11 = v29;
        v9 = v30;
        (*(v50 + 40))(v24, v29, v30);
      }

      else
      {
        v40[(v33 >> 6) + 8] |= 1 << v33;
        v41 = (v40[6] + 16 * v33);
        *v41 = v26;
        v41[1] = v25;
        v42 = v40[7] + *(v50 + 72) * v33;
        v11 = v29;
        v9 = v30;
        v51(v42, v29, v30);
        v43 = v40[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_19;
        }

        v40[2] = v45;
      }

      v14 = v27;
      sub_218CC763C(v27);
      a4 = 1;
      v21 = v47;
      if (v49(v27, 1, v47) == 1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    sub_219BF79A4();
    __break(1u);
  }
}

void sub_21996A0F4(uint64_t a1)
{
  if (!qword_280E8F7A0)
  {
    sub_219BEF814();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F7A0);
    }
  }
}

void sub_21996A15C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219968B14();
    v7 = a3(a1, &type metadata for TopicTodayFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21996A1C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicTodayFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21996A238()
{
  result = qword_27CC21610;
  if (!qword_27CC21610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21610);
  }

  return result;
}

unint64_t sub_21996A290()
{
  result = qword_280EBFCD0;
  if (!qword_280EBFCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBFCD0);
  }

  return result;
}

unint64_t sub_21996A2E8()
{
  result = qword_280EBFCD8;
  if (!qword_280EBFCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBFCD8);
  }

  return result;
}

uint64_t sub_21996A33C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656E616870726FLL && a2 == 0xED000073656C7552 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656E616870726FLL && a2 == 0xEE006C6F6F706552 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000219CD7660 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000219CD7680 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000219CD76B0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CD76D0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CD76F0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x546465726F6E6769 && a2 == 0xED00007344496761 || (sub_219BF78F4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000219CD7710 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219CD7740 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000219CD6980 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000219CD7760 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_21996A7D8(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  v15 = a1[2];
  v14 = *(a1 + 3);
  v4 = a1[4];
  v7 = 0x6D726177657250;
  v8 = 0xE700000000000000;
  v9 = v1;
  v10 = v2;
  v11 = v15;
  v12 = v3;
  v13 = v4;
  sub_21969F774(0);
  swift_allocObject();
  swift_unknownObjectRetain();

  sub_21996A89C(&v15, v6);
  sub_218A18DB4(&v14, v6);
  sub_21996A900();
  return sub_219BE6E64();
}

uint64_t sub_21996A89C(uint64_t a1, uint64_t a2)
{
  sub_218A3A1C4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21996A900()
{
  result = qword_27CC21618;
  if (!qword_27CC21618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21618);
  }

  return result;
}

id sub_21996A954(void *a1, double a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC7NewsUI222NewsOfflineModeMonitor_observers] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC7NewsUI222NewsOfflineModeMonitor_offlineModeMonitor] = a1;
  v5 = a1;
  v6 = [v5 offlineReason];
  *&v2[OBJC_IVAR____TtC7NewsUI222NewsOfflineModeMonitor_offlineReason] = v6;
  sub_219BE2524();
  v10 = sub_219BE2514();
  sub_21996B9C4(0);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC7NewsUI222NewsOfflineModeMonitor_poorConnectionThrottler] = sub_219BE32D4();
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  [v5 addObserver_];

  return v7;
}

void sub_21996AA60(uint64_t a1)
{
  v3 = v1;
  v5 = sub_219BED224();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2187D9028();
  *v8 = sub_219BF66A4();
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v9 = sub_219BED254();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    goto LABEL_27;
  }

  v2 = OBJC_IVAR____TtC7NewsUI222NewsOfflineModeMonitor_observers;
  swift_beginAccess();
  v5 = *&v2[v3];
  v24 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
LABEL_28:
    v10 = sub_219BF7214();
  }

  else
  {
    v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10)
  {
    v21 = v2;
    v22 = v3;
    v3 = 0;
    v11 = v5 & 0xFFFFFFFFFFFFFF8;
    v23 = v5 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x21CECE0F0](v3, v5);
      }

      else
      {
        if (v3 >= *(v11 + 16))
        {
          goto LABEL_26;
        }

        v12 = *(v5 + 8 * v3 + 32);
      }

      v2 = v12;
      v13 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v15 = Strong;
          swift_unknownObjectRelease();
          if (v15 != a1)
          {
            goto LABEL_17;
          }
        }

        else if (a1)
        {
LABEL_17:
          sub_219BF73D4();
          sub_219BF7414();
          v11 = v23;
          sub_219BF7424();
          sub_219BF73E4();
          goto LABEL_7;
        }
      }

LABEL_7:
      ++v3;
      if (v13 == v10)
      {
        v16 = v24;
        v2 = v21;
        v3 = v22;
        goto LABEL_21;
      }
    }
  }

  v16 = MEMORY[0x277D84F90];
LABEL_21:

  *&v2[v3] = v16;

  if (a1)
  {
    v17 = type metadata accessor for FCNetworkReachabilityObservingProxy();
    v18 = objc_allocWithZone(v17);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v25.receiver = v18;
    v25.super_class = v17;
    objc_msgSendSuper2(&v25, sel_init);
    v19 = swift_beginAccess();
    MEMORY[0x21CECC690](v19);
    if (*((*&v2[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    sub_219BF5A54();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

double sub_21996ADC8(uint64_t a1)
{
  v2 = v1;
  v18 = a1;
  v3 = sub_219BED224();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2187D9028();
  *v6 = sub_219BF66A4();
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v7 = sub_219BED254();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    goto LABEL_24;
  }

  v7 = OBJC_IVAR____TtC7NewsUI222NewsOfflineModeMonitor_observers;
  swift_beginAccess();
  v3 = *(v2 + v7);
  v19 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_25:
    v8 = sub_219BF7214();
  }

  else
  {
    v8 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    v16 = v7;
    v17 = v2;
    v9 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CECE0F0](v9, v3);
      }

      else
      {
        if (v9 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v10 = *(v3 + 8 * v9 + 32);
      }

      v11 = v10;
      v2 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v7 = OBJC_IVAR____TtC7NewsUI235FCNetworkReachabilityObservingProxy_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v7 = Strong;
          swift_unknownObjectRelease();
          if (v7 != v18)
          {
            goto LABEL_17;
          }
        }

        else if (v18)
        {
LABEL_17:
          v7 = &v19;
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
          goto LABEL_7;
        }
      }

LABEL_7:
      ++v9;
      if (v2 == v8)
      {
        v13 = v19;
        v7 = v16;
        v2 = v17;
        goto LABEL_21;
      }
    }
  }

  v13 = MEMORY[0x277D84F90];
LABEL_21:

  *(v2 + v7) = v13;

  return result;
}

double sub_21996B15C(void *a1)
{
  if (qword_280EE6070 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F62790);
  swift_unknownObjectRetain();
  v3 = sub_219BE5414();
  v4 = sub_219BF6214();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = [a1 offlineReason];
    swift_unknownObjectRelease();
    _os_log_impl(&dword_2186C1000, v3, v4, "NewsOfflineModeMonitor throttling state change to offlineReason=%ld", v5, 0xCu);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;
  swift_unknownObjectRetain();

  sub_219BE32F4();

  return result;
}

double sub_21996B314(uint64_t a1, NSObject *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtC7NewsUI222NewsOfflineModeMonitor_offlineModeMonitor;
    v7 = [*(Strong + OBJC_IVAR____TtC7NewsUI222NewsOfflineModeMonitor_offlineModeMonitor) offlineReason];
    swift_getObjectType();
    if (v7 == [a2 offlineReason])
    {
      sub_21996C014(a2, v5);
    }

    else
    {
      if (qword_280EE6070 != -1)
      {
        swift_once();
      }

      v8 = sub_219BE5434();
      __swift_project_value_buffer(v8, qword_280F62790);
      v9 = v5;
      swift_unknownObjectRetain();
      v10 = sub_219BE5414();
      v11 = sub_219BF6214();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 134218240;
        *(v12 + 4) = [*&v5[v6] offlineReason];

        *(v12 + 12) = 2048;
        *(v12 + 14) = [a2 offlineReason];
        swift_unknownObjectRelease();
        _os_log_impl(&dword_2186C1000, v10, v11, "NewsOfflineModeMonitor will not trigger throttled state change when underlying offlineModeMonitor=%ld no longer matches the passed in networkReachability=%ld", v12, 0x16u);
        MEMORY[0x21CECF960](v12, -1, -1);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

double sub_21996B4EC(NSObject *a1)
{
  v3 = OBJC_IVAR____TtC7NewsUI222NewsOfflineModeMonitor_offlineReason;
  v4 = *(v1 + OBJC_IVAR____TtC7NewsUI222NewsOfflineModeMonitor_offlineReason);
  swift_getObjectType();
  if (v4 == [a1 offlineReason])
  {
    return result;
  }

  v6 = [a1 offlineReason];
  if (v6)
  {
    if (v6 != 2 || *(v1 + v3))
    {
LABEL_5:
      sub_219BE32E4();

      sub_21996C014(a1, v1);
      return result;
    }
  }

  else if (*(v1 + v3) != 2)
  {
    goto LABEL_5;
  }

  return sub_21996B15C(a1);
}

void sub_21996B5FC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_219BED224();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2187D9028();
  *v7 = sub_219BF66A4();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = sub_219BED254();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC7NewsUI222NewsOfflineModeMonitor_observers;
    swift_beginAccess();
    v8 = *(v2 + v9);
    if (!(v8 >> 62))
    {
      v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        return;
      }

      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  v10 = sub_219BF7214();
  if (v10)
  {
LABEL_4:
    if (v10 < 1)
    {
      __break(1u);
      return;
    }

    v11 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x21CECE0F0](v11, v8);
      }

      else
      {
        v12 = *(v8 + 8 * v11 + 32);
      }

      v13 = v12;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v15 = Strong;
        if (([Strong respondsToSelector_] & 1) == 0)
        {

          swift_unknownObjectRelease();
          goto LABEL_8;
        }

        [v15 wifiReachabilityDidChange_];
        swift_unknownObjectRelease();
      }

LABEL_8:
      if (v10 == ++v11)
      {

        return;
      }
    }
  }
}

void sub_21996B844(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

void sub_21996B8BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsUI222NewsOfflineModeMonitor_offlineModeMonitor);
  sub_21996BA24(v1, v0);
}

unint64_t sub_21996B970()
{
  result = qword_280EE0A18;
  if (!qword_280EE0A18)
  {
    type metadata accessor for NewsOfflineModeMonitor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE0A18);
  }

  return result;
}

void sub_21996B9C4(uint64_t a1)
{
  if (!qword_280EE6880)
  {
    sub_219BE2524();
    v1 = sub_219BE3304();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE6880);
    }
  }
}

void sub_21996BA24(void *a1, uint64_t a2)
{
  v4 = sub_219BED224();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OBJC_IVAR____TtC7NewsUI222NewsOfflineModeMonitor_offlineReason;
  v10 = *(a2 + OBJC_IVAR____TtC7NewsUI222NewsOfflineModeMonitor_offlineReason);
  if (v10 != [a1 offlineReason])
  {
    v15 = *(a2 + v9);
    if (qword_280EE6070 != -1)
    {
      swift_once();
    }

    v16 = sub_219BE5434();
    __swift_project_value_buffer(v16, qword_280F62790);
    v17 = a1;
    v18 = sub_219BE5414();
    v19 = sub_219BF6214();
    v20 = os_log_type_enabled(v18, v19);
    v46 = v5;
    if (v20)
    {
      v21 = v4;
      v22 = swift_slowAlloc();
      *v22 = 134218240;
      *(v22 + 4) = v15;
      *(v22 + 12) = 2048;
      *(v22 + 14) = [v17 offlineReason];

      _os_log_impl(&dword_2186C1000, v18, v19, "NewsOfflineModeMonitor changing state from=%ld to offlineReason=%ld", v22, 0x16u);
      v23 = v22;
      v4 = v21;
      MEMORY[0x21CECF960](v23, -1, -1);
    }

    else
    {

      v18 = v17;
    }

    *(a2 + v9) = [v17 offlineReason];
    v24 = MEMORY[0x277D85200];
    v25 = &unk_27CC21000;
    v47 = v17;
    if (v15 && [v17 offlineReason])
    {
      v26 = *v24;
      v27 = v46;
      goto LABEL_35;
    }

    sub_2187D9028();
    *v8 = sub_219BF66A4();
    v26 = *v24;
    v27 = v46;
    (*(v46 + 104))(v8, v26, v4);
    v28 = sub_219BED254();
    (*(v27 + 8))(v8, v4);
    if (v28)
    {
      v45 = v4;
      v29 = OBJC_IVAR____TtC7NewsUI222NewsOfflineModeMonitor_observers;
      swift_beginAccess();
      v28 = *(a2 + v29);
      if (!(v28 >> 62))
      {
        v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v30)
        {
          goto LABEL_20;
        }

        goto LABEL_34;
      }
    }

    else
    {
      __break(1u);
    }

    v30 = sub_219BF7214();
    if (v30)
    {
LABEL_20:
      HIDWORD(v44) = v26;
      if (v30 >= 1)
      {

        v31 = 0;
        while (1)
        {
          if ((v28 & 0xC000000000000001) != 0)
          {
            v32 = MEMORY[0x21CECE0F0](v31, v28);
          }

          else
          {
            v32 = *(v28 + 8 * v31 + 32);
          }

          v33 = v32;
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v35 = Strong;
            if (([Strong respondsToSelector_] & 1) == 0)
            {

              swift_unknownObjectRelease();
              goto LABEL_24;
            }

            [v35 networkReachabilityConnectivityDidChange_];
            swift_unknownObjectRelease();
          }

LABEL_24:
          if (v30 == ++v31)
          {

            v4 = v45;
            v27 = v46;
            v25 = &unk_27CC21000;
            v26 = HIDWORD(v44);
            goto LABEL_35;
          }
        }
      }

LABEL_55:
      __break(1u);
      return;
    }

LABEL_34:
    v4 = v45;
LABEL_35:
    sub_2187D9028();
    *v8 = sub_219BF66A4();
    (*(v27 + 104))(v8, v26, v4);
    v36 = sub_219BED254();
    (*(v27 + 8))(v8, v4);
    if (v36)
    {
      v37 = v25[199];
      swift_beginAccess();
      v36 = *(a2 + v37);
      if (!(v36 >> 62))
      {
        v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v38)
        {
          return;
        }

LABEL_38:
        if (v38 < 1)
        {
          __break(1u);
          goto LABEL_55;
        }

        v39 = 0;
        while (1)
        {
          if ((v36 & 0xC000000000000001) != 0)
          {
            v40 = MEMORY[0x21CECE0F0](v39, v36);
          }

          else
          {
            v40 = *(v36 + 8 * v39 + 32);
          }

          v41 = v40;
          v42 = swift_unknownObjectWeakLoadStrong();
          if (v42)
          {
            v43 = v42;
            if (([v42 respondsToSelector_] & 1) == 0)
            {

              swift_unknownObjectRelease();
              goto LABEL_42;
            }

            [v43 networkReachabilityDidChange_];
            swift_unknownObjectRelease();
          }

LABEL_42:
          if (v38 == ++v39)
          {

            return;
          }
        }
      }
    }

    else
    {
      __break(1u);
    }

    v38 = sub_219BF7214();
    if (!v38)
    {
      return;
    }

    goto LABEL_38;
  }

  if (qword_280EE6070 != -1)
  {
    swift_once();
  }

  v11 = sub_219BE5434();
  __swift_project_value_buffer(v11, qword_280F62790);
  v47 = sub_219BE5414();
  v12 = sub_219BF6214();
  if (os_log_type_enabled(v47, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2186C1000, v47, v12, "NewsOfflineModeMonitor will not update offlineReason when it has not changed", v13, 2u);
    MEMORY[0x21CECF960](v13, -1, -1);
  }

  v14 = v47;
}

void sub_21996C014(NSObject *a1, uint64_t a2)
{
  v4 = sub_219BED224();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OBJC_IVAR____TtC7NewsUI222NewsOfflineModeMonitor_offlineReason;
  v10 = *(a2 + OBJC_IVAR____TtC7NewsUI222NewsOfflineModeMonitor_offlineReason);
  if (v10 != [a1 offlineReason])
  {
    v44 = v5;
    v15 = *(a2 + v9);
    if (qword_280EE6070 != -1)
    {
      swift_once();
    }

    v16 = sub_219BE5434();
    __swift_project_value_buffer(v16, qword_280F62790);
    swift_unknownObjectRetain();
    v17 = sub_219BE5414();
    v18 = sub_219BF6214();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = v4;
      v20 = swift_slowAlloc();
      *v20 = 134218240;
      *(v20 + 4) = v15;
      *(v20 + 12) = 2048;
      *(v20 + 14) = [a1 offlineReason];
      swift_unknownObjectRelease();
      _os_log_impl(&dword_2186C1000, v17, v18, "NewsOfflineModeMonitor changing state from=%ld to offlineReason=%ld", v20, 0x16u);
      v21 = v20;
      v4 = v19;
      MEMORY[0x21CECF960](v21, -1, -1);
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v22 = v44;
    *(a2 + v9) = [a1 offlineReason];
    v23 = a1;
    v24 = MEMORY[0x277D85200];
    v45 = v23;
    if (v15 && [v23 offlineReason])
    {
      v25 = *v24;
      goto LABEL_35;
    }

    sub_2187D9028();
    *v8 = sub_219BF66A4();
    v25 = *v24;
    (*(v22 + 104))(v8, v25, v4);
    v26 = sub_219BED254();
    (*(v22 + 8))(v8, v4);
    if (v26)
    {
      v43 = v4;
      v27 = OBJC_IVAR____TtC7NewsUI222NewsOfflineModeMonitor_observers;
      swift_beginAccess();
      v26 = *(a2 + v27);
      if (!(v26 >> 62))
      {
        v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v28)
        {
          goto LABEL_20;
        }

        goto LABEL_34;
      }
    }

    else
    {
      __break(1u);
    }

    v28 = sub_219BF7214();
    if (v28)
    {
LABEL_20:
      HIDWORD(v42) = v25;
      if (v28 >= 1)
      {

        v29 = 0;
        while (1)
        {
          if ((v26 & 0xC000000000000001) != 0)
          {
            v30 = MEMORY[0x21CECE0F0](v29, v26);
          }

          else
          {
            v30 = *(v26 + 8 * v29 + 32);
          }

          v31 = v30;
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v33 = Strong;
            if (([Strong respondsToSelector_] & 1) == 0)
            {

              swift_unknownObjectRelease();
              goto LABEL_24;
            }

            [v33 networkReachabilityConnectivityDidChange_];
            swift_unknownObjectRelease();
          }

LABEL_24:
          if (v28 == ++v29)
          {

            v4 = v43;
            v22 = v44;
            v25 = HIDWORD(v42);
            goto LABEL_35;
          }
        }
      }

LABEL_55:
      __break(1u);
      return;
    }

LABEL_34:
    v4 = v43;
LABEL_35:
    sub_2187D9028();
    *v8 = sub_219BF66A4();
    (*(v22 + 104))(v8, v25, v4);
    v34 = sub_219BED254();
    (*(v22 + 8))(v8, v4);
    if (v34)
    {
      v35 = OBJC_IVAR____TtC7NewsUI222NewsOfflineModeMonitor_observers;
      swift_beginAccess();
      v34 = *(a2 + v35);
      if (!(v34 >> 62))
      {
        v36 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v36)
        {
          return;
        }

LABEL_38:
        if (v36 < 1)
        {
          __break(1u);
          goto LABEL_55;
        }

        v37 = 0;
        while (1)
        {
          if ((v34 & 0xC000000000000001) != 0)
          {
            v38 = MEMORY[0x21CECE0F0](v37, v34);
          }

          else
          {
            v38 = *(v34 + 8 * v37 + 32);
          }

          v39 = v38;
          v40 = swift_unknownObjectWeakLoadStrong();
          if (v40)
          {
            v41 = v40;
            if (([v40 respondsToSelector_] & 1) == 0)
            {

              swift_unknownObjectRelease();
              goto LABEL_42;
            }

            [v41 networkReachabilityDidChange_];
            swift_unknownObjectRelease();
          }

LABEL_42:
          if (v36 == ++v37)
          {

            return;
          }
        }
      }
    }

    else
    {
      __break(1u);
    }

    v36 = sub_219BF7214();
    if (!v36)
    {
      return;
    }

    goto LABEL_38;
  }

  if (qword_280EE6070 != -1)
  {
    swift_once();
  }

  v11 = sub_219BE5434();
  __swift_project_value_buffer(v11, qword_280F62790);
  v45 = sub_219BE5414();
  v12 = sub_219BF6214();
  if (os_log_type_enabled(v45, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2186C1000, v45, v12, "NewsOfflineModeMonitor will not update offlineReason when it has not changed", v13, 2u);
    MEMORY[0x21CECF960](v13, -1, -1);
  }

  v14 = v45;
}

uint64_t sub_21996C610@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21996CE14(0, &qword_280E8CEA0, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for ChannelTodayFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21996CD5C();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_21996CE78(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_21996CDB0(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21996C8BC(uint64_t a1)
{
  v2 = sub_21996CD5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21996C8F8(uint64_t a1)
{
  v2 = sub_21996CD5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21996C974(void *a1, __n128 a2)
{
  sub_21996CE14(0, &qword_280E8C5D8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21996CD5C();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_21996CE78(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  sub_219BF7834();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21996CBD4(uint64_t a1)
{
  result = sub_21996CE78(&qword_280ECB998, type metadata accessor for ChannelTodayFeedGroup, &unk_219CB86E4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21996CC2C(uint64_t a1)
{
  v2 = sub_21996CE78(&qword_280ECB9C8, type metadata accessor for ChannelTodayFeedGroup, &unk_219CB85C8);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_21996CCB0(void *a1)
{
  a1[1] = sub_21996CE78(&qword_280ECB9C8, type metadata accessor for ChannelTodayFeedGroup, &unk_219CB85C8);
  a1[2] = sub_21996CE78(&qword_280ECB9A0, type metadata accessor for ChannelTodayFeedGroup, &unk_219CB86BC);
  result = sub_21996CE78(&qword_280ECB9B0, type metadata accessor for ChannelTodayFeedGroup, &unk_219CB8694);
  a1[3] = result;
  return result;
}

unint64_t sub_21996CD5C()
{
  result = qword_280ECB9E0[0];
  if (!qword_280ECB9E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ECB9E0);
  }

  return result;
}

uint64_t sub_21996CDB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelTodayFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21996CE14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21996CD5C();
    v7 = a3(a1, &type metadata for ChannelTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21996CE78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21996CED4()
{
  result = qword_27CC21650;
  if (!qword_27CC21650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21650);
  }

  return result;
}

unint64_t sub_21996CF2C()
{
  result = qword_280ECB9D0;
  if (!qword_280ECB9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECB9D0);
  }

  return result;
}

unint64_t sub_21996CF84()
{
  result = qword_280ECB9D8;
  if (!qword_280ECB9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECB9D8);
  }

  return result;
}

double sub_21996D054(uint64_t a1, uint64_t a2)
{
  *(*v2 + OBJC_IVAR____TtC7NewsUI216EditorialService_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_21996D0A4()
{
  v1 = [*(*v0 + OBJC_IVAR____TtC7NewsUI216EditorialService_editorialItemProvider) cachedEditorialItems];
  type metadata accessor for EditorialItem(0);
  v2 = sub_219BF5924();

  return v2;
}

double sub_21996D108(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 32))(v4, &off_282A493C8, a1, ObjectType, v6);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_21996D230(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR____TtC7NewsUI220FollowingDataManager_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 24))(v4, &off_282A493C8, a1, ObjectType, v6);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21996D354()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_21996D3D0(id *a1)
{
  v2 = v1;
  v4 = type metadata accessor for AudioFeedTrack(0);
  v40 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v41 = v5;
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E8D808 != -1)
  {
    swift_once();
  }

  v7 = qword_280F61710;
  v8 = sub_219BF6214();
  sub_2186F20D4(0);
  v38 = v9;
  v10 = swift_allocObject();
  v37 = xmmword_219C09BA0;
  *(v10 + 16) = xmmword_219C09BA0;
  v36[1] = sub_2187078D4(&qword_280EDC9E0, &protocol conformance descriptor for AudioFeedTrack);
  v11 = sub_219BF7894();
  v13 = v12;
  *(v10 + 56) = MEMORY[0x277D837D0];
  v36[0] = sub_2186FC3BC();
  *(v10 + 64) = v36[0];
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  v39 = v7;
  sub_219BE5314("AudioCPListItemFactory: Creating list item for track %{public}@", 63, 2, &dword_2186C1000, v7, v8, v10);

  sub_219BDE994();
  v14 = v2[12];
  v15 = v2[13];
  __swift_project_boxed_opaque_existential_1(v2 + 9, v14);
  (*(v15 + 8))(v14, v15);
  sub_2187078D4(&unk_280EDCA20, &protocol conformance descriptor for AudioFeedTrack);
  sub_219BDE974();
  __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
  v16 = sub_219BE6264();
  if (!*(a1 + *(v4 + 32) + 8))
  {
    v17 = [*a1 title];
    if (v17)
    {
      v18 = v17;
      sub_219BF5414();
    }
  }

  v19 = objc_allocWithZone(MEMORY[0x277CBB0D8]);
  v20 = v16;

  v21 = sub_219BF53D4();

  v22 = [v19 initWithText:v21 detailText:0 image:v20 accessoryImage:0 accessoryType:0];

  sub_218C1620C(a1, v6);
  [v22 setUserInfo_];
  swift_unknownObjectRelease();
  aBlock[4] = sub_2199718A0;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21996DEBC;
  aBlock[3] = &block_descriptor_190;
  v23 = _Block_copy(aBlock);

  [v22 setHandler_];
  _Block_release(v23);
  v24 = v22;
  sub_21996F798(v24, v2);

  if (v16)
  {

    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  else
  {
    v25 = sub_219BF6214();
    v26 = swift_allocObject();
    *(v26 + 16) = v37;
    v27 = sub_219BF7894();
    v28 = v36[0];
    *(v26 + 56) = MEMORY[0x277D837D0];
    *(v26 + 64) = v28;
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
    sub_219BE5314("AudioCPListItemFactory: Faulted getting image for track %{public}@, fetching async", 82, 2, &dword_2186C1000, v39, v25, v26);

    __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
    v30 = swift_allocObject();
    swift_weakInit();
    sub_218C1620C(a1, v6);
    v31 = (*(v40 + 80) + 24) & ~*(v40 + 80);
    v32 = (v41 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    *(v33 + 16) = v30;
    sub_21872D2B4(v6, v33 + v31, type metadata accessor for AudioFeedTrack);
    *(v33 + v32) = v24;
    *(v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8)) = vdupq_n_s64(0x4048000000000000uLL);
    v34 = v24;

    sub_219BE6254();

    __swift_destroy_boxed_opaque_existential_1(v43);
  }

  return v24;
}

void sub_21996D984(void *a1, void (*a2)(__n128), void (*a3)(__n128))
{
  v34 = a3;
  v35 = a2;
  sub_219971E54(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v33 - v6;
  v8 = type metadata accessor for AudioFeedTrack(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = v33 - v14;
  if ([a1 userInfo])
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v38[0] = v36;
  v38[1] = v37;
  if (*(&v37 + 1))
  {
    v16 = swift_dynamicCast();
    (*(v9 + 56))(v7, v16 ^ 1u, 1, v8);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      v33[1] = v3;
      sub_21872D2B4(v7, v15, type metadata accessor for AudioFeedTrack);
      if (qword_280E8D808 != -1)
      {
        swift_once();
      }

      v17 = qword_280F61710;
      v18 = sub_219BF6214();
      sub_2186F20D4(0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_219C09BA0;
      sub_2187078D4(&qword_280EDC9E0, &protocol conformance descriptor for AudioFeedTrack);
      v20 = sub_219BF7894();
      v22 = v21;
      *(v19 + 56) = MEMORY[0x277D837D0];
      *(v19 + 64) = sub_2186FC3BC();
      *(v19 + 32) = v20;
      *(v19 + 40) = v22;
      sub_219BE5314("AudioCPListItemFactory: Track selected", 38, 2, &dword_2186C1000, v17, v18, v19);

      v23 = swift_allocObject();
      swift_weakInit();
      sub_218C1620C(v15, v11);
      v24 = (*(v9 + 80) + 24) & ~*(v9 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = v23;
      sub_21872D2B4(v11, v25 + v24, type metadata accessor for AudioFeedTrack);
      v26 = (v25 + ((v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
      v27 = v34;
      *v26 = v35;
      v26[1] = v27;

      sub_219BE3494();

      sub_2199713D0(v15, type metadata accessor for AudioFeedTrack);

      return;
    }
  }

  else
  {
    sub_218806FD0(v38);
    (*(v9 + 56))(v7, 1, 1, v8);
  }

  sub_219971374(v7, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  if (qword_280E8D808 != -1)
  {
    swift_once();
  }

  v28 = qword_280F61710;
  v29 = sub_219BF61F4();
  sub_2186F20D4(0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_219C09BA0;
  *&v38[0] = 0;
  *(&v38[0] + 1) = 0xE000000000000000;
  *&v36 = a1;
  sub_2186D6710(0, &qword_27CC21668, &protocolRef_CPSelectableListItem);
  sub_219BF7484();
  v31 = v38[0];
  *(v30 + 56) = MEMORY[0x277D837D0];
  *(v30 + 64) = sub_2186FC3BC();
  *(v30 + 32) = v31;
  sub_219BE5314("AudioCPListTemplateController: List item contained userInfo that couldn't be case as a AudioFeedTrack, this is unexpected. %{public}@", 133, 2, &dword_2186C1000, v28, v29, v30);

  (v35)(v32);
}

double sub_21996DEBC(uint64_t a1, uint64_t a2, void *aBlock)
{
  v3 = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v6 = swift_unknownObjectRetain();
  v3(v6, sub_2187E8A64, v5);

  swift_unknownObjectRelease();
  return result;
}

void sub_21996DF6C(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, double a6, double a7)
{
  v11 = type metadata accessor for AudioFeedTrack(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (a1)
    {
      sub_218C1620C(a4, &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      v17 = (*(v12 + 80) + 16) & ~*(v12 + 80);
      v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
      v19 = swift_allocObject();
      sub_21872D2B4(v14, v19 + v17, type metadata accessor for AudioFeedTrack);
      *(v19 + v18) = a5;
      *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = a1;
      v20 = a1;
      v21 = a5;
      sub_219BE3494();

LABEL_4:

      return;
    }

    if (!a2)
    {
      if (qword_280E8D808 != -1)
      {
        swift_once();
      }

      v31 = qword_280F61710;
      v32 = sub_219BF61F4();
      sub_219BE5314("AudioCPListItemFactory: Error getting artwork, got back nil image and error", 75, 2, &dword_2186C1000, v31, v32, MEMORY[0x277D84F90]);
      goto LABEL_4;
    }

    v22 = a2;
    if (qword_280E8D808 != -1)
    {
      swift_once();
    }

    v35 = qword_280F61710;
    v34 = sub_219BF61F4();
    sub_2186F20D4(0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_219C09BA0;
    v36 = 0;
    v37 = 0xE000000000000000;
    v38 = a2;
    sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
    sub_219BF7484();
    v24 = v36;
    v25 = v37;
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 64) = sub_2186FC3BC();
    *(v23 + 32) = v24;
    *(v23 + 40) = v25;
    sub_219BE5314("AudioCPListItemFactory: Encountered an error fetching artwork, using fallback %{public}@", 88, 2, &dword_2186C1000, v35, v34, v23);

    v35 = sub_219BDE994();
    v27 = v16[12];
    v26 = v16[13];
    __swift_project_boxed_opaque_existential_1(v16 + 9, v27);
    (*(v26 + 8))(v27, v26);
    sub_219BDE984();
    __swift_project_boxed_opaque_existential_1(v16 + 3, v16[6]);
    sub_218C1620C(a4, &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v28 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v29 = swift_allocObject();
    sub_21872D2B4(v14, v29 + v28, type metadata accessor for AudioFeedTrack);
    *(v29 + ((v13 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;
    v30 = a5;
    sub_219BE6254();

    __swift_destroy_boxed_opaque_existential_1(&v36);
  }
}

double sub_21996E39C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for AudioFeedTrack(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_218C1620C(a3, v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v13 = (v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = swift_allocObject();
    sub_21872D2B4(v11, v14 + v12, type metadata accessor for AudioFeedTrack);
    *(v14 + v13) = a4;
    *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = a1;
    v15 = a1;
    v16 = a4;
    sub_219BE3494();
  }

  else
  {
    if (qword_280E8D808 != -1)
    {
      swift_once();
    }

    v18 = qword_280F61710;
    v19 = sub_219BF61F4();
    sub_2186F20D4(0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_219C09BA0;
    v28 = 0;
    v29 = 0xE000000000000000;
    if (a2)
    {
      swift_getErrorValue();
      v21 = sub_219BF7A04();
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    v27[4] = v21;
    v27[5] = v22;
    v23 = MEMORY[0x277D837D0];
    sub_2186F8728(0, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v24 = sub_219BF5484();
    MEMORY[0x21CECC330](v24);

    v25 = v28;
    v26 = v29;
    *(v20 + 56) = v23;
    *(v20 + 64) = sub_2186FC3BC();
    *(v20 + 32) = v25;
    *(v20 + 40) = v26;
    sub_219BE5314("AudioCPListItemFactory: Encountered an error fetching fallback artwork %{public}@", 81, 2, &dword_2186C1000, v18, v19, v20);
  }

  return result;
}

id sub_21996E628(uint64_t a1, void *a2, uint64_t a3, const char *a4, uint64_t a5)
{
  if (qword_280E8D808 != -1)
  {
    swift_once();
  }

  v9 = qword_280F61710;
  v10 = sub_219BF6214();
  sub_2186F20D4(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09BA0;
  type metadata accessor for AudioFeedTrack(0);
  sub_2187078D4(&qword_280EDC9E0, &protocol conformance descriptor for AudioFeedTrack);
  v12 = sub_219BF7894();
  v14 = v13;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_2186FC3BC();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  sub_219BE5314(a4, a5, 2, &dword_2186C1000, v9, v10, v11);

  return [a2 setImage_];
}

double sub_21996E780(char a1, uint64_t a2, double a3)
{
  v3 = 0.0;
  if (a1)
  {
    type metadata accessor for AudioFeedTrack(0);
    v6 = sub_219BDD6D4();
    if (v7)
    {
      [*(a2 + 8) duration];
    }

    else
    {
      v8 = *&v6;
    }

    v9 = a3 / v8;
    if (v9 <= 0.99)
    {
      v3 = v9;
    }

    else
    {
      v3 = 0.99;
    }

    if (qword_280E8D808 != -1)
    {
      swift_once();
    }

    v10 = qword_280F61710;
    v11 = sub_219BF6214();
    sub_2186F20D4(0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_219C09BA0;
    v13 = sub_219BF5CA4();
    v15 = v14;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_2186FC3BC();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    sub_219BE5314("AudioCPListItemFactory: Updating item playback progress to %{public}@", 69, 2, &dword_2186C1000, v10, v11, v12);
  }

  return v3;
}

uint64_t sub_21996E8C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v83 = a4;
  v84 = a3;
  v86 = a2;
  sub_219971E54(0, &unk_280E90420, sub_218932F68);
  MEMORY[0x28223BE20](v5 - 8);
  v69 = &v63 - v6;
  sub_218932F68(0);
  v73 = v7;
  v72 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v71 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CFB62C(0);
  MEMORY[0x28223BE20](v9 - 8);
  v64 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_219BF1324();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v82 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_219BF1C74();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v81 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_219BF2A04();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v78 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F8728(0, &qword_280E90410, MEMORY[0x277D84F78] + 8, MEMORY[0x277D33910]);
  v68 = v14;
  v67 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v66 = &v63 - v15;
  v85 = type metadata accessor for AudioFeedTrack(0);
  v16 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v65 = (&v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218EE3174(0);
  v19 = v18;
  MEMORY[0x28223BE20](v18);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21883F194(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219971E54(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  MEMORY[0x28223BE20](v25 - 8);
  v70 = (&v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27);
  v29 = &v63 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v63 - v31;
  swift_beginAccess();
  v87 = a1;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_218718690(Strong + 72, &v89);

    v34 = *(&v90 + 1);
    v35 = v91;
    __swift_project_boxed_opaque_existential_1(&v89, *(&v90 + 1));
    (*(v35 + 16))(v34, v35);
    __swift_destroy_boxed_opaque_existential_1(&v89);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_219BE20E4();

    sub_219BDDB74();
    sub_2199713D0(v24, sub_21883F194);
    v36 = v85;
  }

  else
  {
    v36 = v85;
    (*(v16 + 56))(v32, 1, 1, v85);
  }

  v37 = v86;
  sub_218C1620C(v86, v29);
  (*(v16 + 56))(v29, 0, 1, v36);
  v38 = *(v19 + 48);
  sub_219971430(v32, v21, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  sub_219971430(v29, &v21[v38], &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  v39 = *(v16 + 48);
  if (v39(v21, 1, v36) == 1)
  {
    sub_219971374(v29, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
    sub_219971374(v32, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
    if (v39(&v21[v38], 1, v36) == 1)
    {
      sub_219971374(v21, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  v40 = v70;
  sub_219971430(v21, v70, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  if (v39(&v21[v38], 1, v36) == 1)
  {
    sub_219971374(v29, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
    sub_219971374(v32, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
    sub_2199713D0(v40, type metadata accessor for AudioFeedTrack);
LABEL_11:
    sub_2199713D0(v21, sub_218EE3174);
    goto LABEL_12;
  }

  v44 = v65;
  sub_21872D2B4(&v21[v38], v65, type metadata accessor for AudioFeedTrack);
  v45 = [*v40 identifier];
  v46 = sub_219BF5414();
  v48 = v47;

  v49 = [*v44 identifier];
  v50 = sub_219BF5414();
  v52 = v51;

  v53 = v40;
  if (v46 == v50 && v48 == v52)
  {

    v37 = v86;
  }

  else
  {
    v56 = sub_219BF78F4();

    v37 = v86;
    if ((v56 & 1) == 0)
    {
      sub_219971374(v29, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
      sub_219971374(v32, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
      sub_2199713D0(v44, type metadata accessor for AudioFeedTrack);
      sub_2199713D0(v40, type metadata accessor for AudioFeedTrack);
      sub_219971374(v21, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
      goto LABEL_12;
    }
  }

  v57 = sub_2198DB278((v40 + *(v85 + 32)), (v44 + *(v85 + 32)));
  sub_219971374(v29, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  sub_219971374(v32, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  sub_2199713D0(v44, type metadata accessor for AudioFeedTrack);
  sub_2199713D0(v53, type metadata accessor for AudioFeedTrack);
  sub_219971374(v21, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  if (v57)
  {
LABEL_23:
    (*(v74 + 104))(v78, *MEMORY[0x277D33A70], v75);
    (*(v76 + 104))(v81, *MEMORY[0x277D33570], v77);
    (*(v79 + 104))(v82, *MEMORY[0x277D33298], v80);
    v89 = 0u;
    v90 = 0u;
    v58 = v66;
    sub_219BF2564();
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_unknownObjectRetain();

      swift_getObjectType();
      sub_219BEACB4();
      v59 = v67;
      v60 = v64;
      v61 = v68;
      (*(v67 + 16))(v64, v58, v68);
      (*(v59 + 56))(v60, 0, 1, v61);
      sub_219BE7094();
      swift_unknownObjectRelease();

      sub_2199713D0(v60, sub_218CFB62C);
      v54 = (*(v59 + 8))(v58, v61);
    }

    else
    {
      v54 = (*(v67 + 8))(v58, v68);
    }

    return v84(v54);
  }

LABEL_12:
  v88 = *v37;
  (*(v74 + 104))(v78, *MEMORY[0x277D33A70], v75);
  (*(v76 + 104))(v81, *MEMORY[0x277D33570], v77);
  (*(v79 + 104))(v82, *MEMORY[0x277D33298], v80);
  v89 = 0u;
  v90 = 0u;
  sub_2186D6710(0, &qword_280E8E260, &protocolRef_FCHeadlineProviding);
  swift_unknownObjectRetain();
  v41 = v71;
  sub_219BF2564();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    v42 = v73;
    v43 = v72;
    if ((*(v37 + 24) & 0x10) != 0)
    {
      sub_219BEAC54();
    }

    else
    {
      sub_219BEACD4();
    }

    v55 = v69;
    swift_getObjectType();
    (*(v43 + 16))(v55, v41, v42);
    (*(v43 + 56))(v55, 0, 1, v42);
    sub_219BE7094();
    swift_unknownObjectRelease();

    sub_219971374(v55, &unk_280E90420, sub_218932F68);
    v54 = (*(v43 + 8))(v41, v42);
  }

  else
  {
    v54 = (*(v72 + 8))(v41, v73);
  }

  return v84(v54);
}

void sub_21996F798(void *a1, uint64_t a2)
{
  sub_218D58B4C(0);
  v111 = *(v4 - 8);
  v112 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = (&v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219971E54(0, &unk_280EDC8D0, sub_218D58B4C);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v99 - v11;
  sub_218EE3174(0);
  v108 = v13;
  MEMORY[0x28223BE20](v13);
  v109 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21883F194(0);
  MEMORY[0x28223BE20](v15);
  v110 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v99 - v18;
  sub_219971E54(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  MEMORY[0x28223BE20](v20 - 8);
  v107 = (&v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v24 = &v99 - v23;
  MEMORY[0x28223BE20](v25);
  v113 = &v99 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v99 - v28;
  v116 = type metadata accessor for AudioFeedTrack(0);
  v30 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v105 = (&v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v32);
  v114 = &v99 - v33;
  v115 = a1;
  if ([v115 userInfo])
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v117 = 0u;
    v118 = 0u;
  }

  v119[0] = v117;
  v119[1] = v118;
  if (*(&v118 + 1))
  {
    v103 = v9;
    v104 = v12;
    v102 = v6;
    v106 = a2;
    v34 = v116;
    v35 = swift_dynamicCast();
    v36 = *(v30 + 56);
    v36(v29, v35 ^ 1u, 1, v34);
    v37 = *(v30 + 48);
    if (v37(v29, 1, v34) != 1)
    {
      v38 = v29;
      v39 = v114;
      sub_21872D2B4(v38, v114, type metadata accessor for AudioFeedTrack);
      v100 = v37;
      v101 = *(v106 + 64);
      sub_219BE20E4();
      v40 = v24;
      v41 = v113;
      sub_219BDDB74();
      sub_2199713D0(v19, sub_21883F194);
      sub_218C1620C(v39, v40);
      v36(v40, 0, 1, v34);
      v42 = v109;
      v43 = *(v108 + 48);
      sub_219971430(v41, v109, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
      v44 = v100;
      sub_219971430(v40, v42 + v43, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
      if (v44(v42, 1, v34) == 1)
      {
        sub_219971374(v40, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
        sub_219971374(v41, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
        v45 = v44(v42 + v43, 1, v34);
        v46 = v104;
        v47 = v114;
        if (v45 == 1)
        {
          sub_219971374(v42, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
          v48 = 1;
          goto LABEL_22;
        }

        goto LABEL_15;
      }

      v108 = v40;
      v57 = v107;
      sub_219971430(v42, v107, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
      v58 = v44(v42 + v43, 1, v34);
      v46 = v104;
      if (v58 == 1)
      {
        sub_219971374(v108, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
        sub_219971374(v41, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
        sub_2199713D0(v57, type metadata accessor for AudioFeedTrack);
        v47 = v114;
LABEL_15:
        sub_2199713D0(v42, sub_218EE3174);
        v48 = 0;
        goto LABEL_22;
      }

      v59 = v105;
      sub_21872D2B4(v42 + v43, v105, type metadata accessor for AudioFeedTrack);
      v60 = [*v57 identifier];
      v61 = sub_219BF5414();
      v63 = v62;

      v64 = [*v59 identifier];
      v65 = sub_219BF5414();
      v67 = v66;

      if (v61 == v65 && v63 == v67)
      {

        v47 = v114;
        v68 = v116;
        v69 = v107;
      }

      else
      {
        v70 = sub_219BF78F4();

        v48 = 0;
        v47 = v114;
        v68 = v116;
        v69 = v107;
        if ((v70 & 1) == 0)
        {
LABEL_21:
          sub_219971374(v108, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
          sub_219971374(v113, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
          sub_2199713D0(v59, type metadata accessor for AudioFeedTrack);
          sub_2199713D0(v69, type metadata accessor for AudioFeedTrack);
          sub_219971374(v42, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
LABEL_22:
          if (qword_280E8D808 != -1)
          {
            swift_once();
          }

          v71 = qword_280F61710;
          v72 = sub_219BF6214();
          sub_2186F20D4(0);
          v73 = swift_allocObject();
          *(v73 + 16) = xmmword_219C09EC0;
          *&v119[0] = 0;
          *(&v119[0] + 1) = 0xE000000000000000;
          LODWORD(v114) = v48;
          v74 = v48 & 1;
          if (v74)
          {
            v75 = 1702195828;
          }

          else
          {
            v75 = 0x65736C6166;
          }

          if (v74)
          {
            v76 = 0xE400000000000000;
          }

          else
          {
            v76 = 0xE500000000000000;
          }

          MEMORY[0x21CECC330](v75, v76);

          v77 = v119[0];
          v78 = MEMORY[0x277D837D0];
          *(v73 + 56) = MEMORY[0x277D837D0];
          v79 = sub_2186FC3BC();
          *(v73 + 64) = v79;
          *(v73 + 32) = v77;
          sub_2187078D4(&qword_280EDC9E0, &protocol conformance descriptor for AudioFeedTrack);
          v80 = sub_219BF7894();
          *(v73 + 96) = v78;
          *(v73 + 104) = v79;
          *(v73 + 72) = v80;
          *(v73 + 80) = v81;
          sub_219BE5314("AudioCPListItemFactory: Marking playing as %{public}@ for item representing track %{public}@", 92, 2, &dword_2186C1000, v71, v72, v73);

          v82 = v115;
          [v115 setPlaying_];
          v83 = v110;
          sub_219BE20E4();
          sub_218D5862C(v46);
          sub_2199713D0(v83, sub_21883F194);
          v84 = v103;
          sub_219971430(v46, v103, &unk_280EDC8D0, sub_218D58B4C);
          v85 = v112;
          if ((*(v111 + 48))(v84, 1, v112) == 1)
          {
            goto LABEL_38;
          }

          v86 = v102;
          sub_21872D2B4(v84, v102, sub_218D58B4C);
          v87 = *(v86 + *(v85 + 48));
          v88 = [*v86 identifier];
          v89 = sub_219BF5414();
          v91 = v90;

          v92 = [*v47 identifier];
          v93 = sub_219BF5414();
          v95 = v94;

          if (v89 == v93 && v91 == v95)
          {
          }

          else
          {
            v96 = sub_219BF78F4();

            if ((v96 & 1) == 0)
            {
LABEL_37:
              sub_2199713D0(v86, sub_218D58B4C);
LABEL_38:
              sub_219971374(v46, &unk_280EDC8D0, sub_218D58B4C);
              sub_219B743EC(v47);
              v87 = v97;
              goto LABEL_39;
            }
          }

          if (sub_2198DB278((v86 + *(v116 + 32)), (v47 + *(v116 + 32))))
          {
            sub_2199713D0(v86, sub_218D58B4C);
            sub_219971374(v46, &unk_280EDC8D0, sub_218D58B4C);
LABEL_39:
            sub_21997149C(v47, v87);
            v98 = sub_219BF53D4();

            [v82 setDetailText_];

            [v82 setPlaybackProgress_];
            sub_2199713D0(v47, type metadata accessor for AudioFeedTrack);
            return;
          }

          goto LABEL_37;
        }
      }

      v48 = sub_2198DB278((v69 + *(v68 + 32)), (v59 + *(v68 + 32)));
      goto LABEL_21;
    }
  }

  else
  {
    sub_218806FD0(v119);
    (*(v30 + 56))(v29, 1, 1, v116);
  }

  sub_219971374(v29, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  if (qword_280E8D808 != -1)
  {
    swift_once();
  }

  v49 = qword_280F61710;
  v50 = sub_219BF61F4();
  sub_2186F20D4(0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_219C09BA0;
  v52 = v115;
  v53 = [v115 description];
  v54 = sub_219BF5414();
  v56 = v55;

  *(v51 + 56) = MEMORY[0x277D837D0];
  *(v51 + 64) = sub_2186FC3BC();
  *(v51 + 32) = v54;
  *(v51 + 40) = v56;
  sub_219BE5314("AudioCPListItemFactory: Item contained userInfo that couldn't be case as an AudioFeedTrack, this is unexpected. %{public}@", 122, 2, &dword_2186C1000, v49, v50, v51);
}

void sub_2199704F0(uint64_t a1, uint64_t a2)
{
  v120 = a2;
  sub_218D58B4C(0);
  v4 = v3;
  v114 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219971E54(0, &unk_280EDC8D0, sub_218D58B4C);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v115 = v106 - v11;
  sub_218EE3174(0);
  v13 = v12;
  MEMORY[0x28223BE20](v12);
  v116 = v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21883F194(0);
  MEMORY[0x28223BE20](v15);
  v113 = v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v106 - v18;
  sub_219971E54(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  MEMORY[0x28223BE20](v20 - 8);
  v111 = (v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v119 = v106 - v23;
  MEMORY[0x28223BE20](v24);
  v112 = v106 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = v106 - v27;
  v122 = type metadata accessor for AudioFeedTrack(0);
  v29 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v110 = (v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v121 = (v106 - v32);
  objc_opt_self();
  v33 = swift_dynamicCastObjCClass();
  if (!v33)
  {
    if (qword_280E8D808 != -1)
    {
      swift_once();
    }

    v35 = qword_280F61710;
    v36 = sub_219BF61F4();
    sub_2186F20D4(0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_219C09BA0;
    *&v125[0] = 0;
    *(&v125[0] + 1) = 0xE000000000000000;
    *&v123 = a1;
    sub_2186D6710(0, &qword_27CC0ED60, &protocolRef_CPListTemplateItem);
    sub_219BF7484();
    v38 = v125[0];
    *(v37 + 56) = MEMORY[0x277D837D0];
    *(v37 + 64) = sub_2186FC3BC();
    *(v37 + 32) = v38;
    sub_219BE5314("AudioCPListItemFactory: Item couldn't be cast as a list item, this is unexpected. %{public}@", 92, 2, &dword_2186C1000, v35, v36, v37);
    goto LABEL_17;
  }

  v34 = v33;
  v118 = a1;
  swift_unknownObjectRetain();
  v117 = v34;
  if ([v34 userInfo])
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v123 = 0u;
    v124 = 0u;
  }

  v125[0] = v123;
  v125[1] = v124;
  if (!*(&v124 + 1))
  {
    sub_218806FD0(v125);
    (*(v29 + 56))(v28, 1, 1, v122);
    goto LABEL_14;
  }

  v108 = v9;
  v109 = v6;
  v39 = v122;
  v40 = swift_dynamicCast();
  v41 = *(v29 + 56);
  v41(v28, v40 ^ 1u, 1, v39);
  v42 = *(v29 + 48);
  if (v42(v28, 1, v39) == 1)
  {
LABEL_14:
    sub_219971374(v28, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
    if (qword_280E8D808 != -1)
    {
      swift_once();
    }

    v53 = qword_280F61710;
    v54 = sub_219BF61F4();
    sub_2186F20D4(0);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_219C09BA0;
    v56 = [v117 description];
    v57 = sub_219BF5414();
    v59 = v58;

    *(v55 + 56) = MEMORY[0x277D837D0];
    *(v55 + 64) = sub_2186FC3BC();
    *(v55 + 32) = v57;
    *(v55 + 40) = v59;
    sub_219BE5314("AudioCPListItemFactory: Item contained userInfo that couldn't be case as an AudioFeedTrack, this is unexpected. %{public}@", 122, 2, &dword_2186C1000, v53, v54, v55);
    swift_unknownObjectRelease();
LABEL_17:

    return;
  }

  v107 = v4;
  v43 = v121;
  sub_21872D2B4(v28, v121, type metadata accessor for AudioFeedTrack);
  v106[1] = *(v120 + 64);
  sub_219BE20E4();
  v106[0] = v13;
  v44 = v42;
  v45 = v112;
  sub_219BDDB74();
  sub_2199713D0(v19, sub_21883F194);
  v46 = v119;
  sub_218C1620C(v43, v119);
  v41(v46, 0, 1, v39);
  v47 = v45;
  v48 = *(v106[0] + 48);
  v49 = v116;
  sub_219971430(v45, v116, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  sub_219971430(v46, v49 + v48, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  if (v44(v49, 1, v39) == 1)
  {
    sub_219971374(v46, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
    sub_219971374(v45, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
    v50 = v44(v49 + v48, 1, v39);
    v51 = v109;
    if (v50 == 1)
    {
      sub_219971374(v49, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
      v52 = 1;
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  v60 = v111;
  sub_219971430(v49, v111, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  v61 = v44(v49 + v48, 1, v39);
  v51 = v109;
  if (v61 == 1)
  {
    sub_219971374(v119, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
    sub_219971374(v45, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
    sub_2199713D0(v60, type metadata accessor for AudioFeedTrack);
LABEL_20:
    sub_2199713D0(v49, sub_218EE3174);
    v52 = 0;
    goto LABEL_27;
  }

  v62 = v49 + v48;
  v63 = v110;
  sub_21872D2B4(v62, v110, type metadata accessor for AudioFeedTrack);
  v64 = [*v60 identifier];
  v65 = sub_219BF5414();
  v67 = v66;

  v68 = [*v63 identifier];
  v69 = sub_219BF5414();
  v71 = v70;

  if (v65 == v69 && v67 == v71)
  {

    v72 = v111;
LABEL_25:
    v52 = sub_2198DB278((v72 + *(v39 + 32)), (v63 + *(v39 + 32)));
    goto LABEL_26;
  }

  v73 = sub_219BF78F4();

  v52 = 0;
  v72 = v111;
  if (v73)
  {
    goto LABEL_25;
  }

LABEL_26:
  sub_219971374(v119, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  sub_219971374(v47, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  sub_2199713D0(v63, type metadata accessor for AudioFeedTrack);
  sub_2199713D0(v72, type metadata accessor for AudioFeedTrack);
  sub_219971374(v116, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
LABEL_27:
  if (qword_280E8D808 != -1)
  {
    swift_once();
  }

  v74 = qword_280F61710;
  v75 = sub_219BF6214();
  sub_2186F20D4(0);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_219C09EC0;
  *&v125[0] = 0;
  *(&v125[0] + 1) = 0xE000000000000000;
  v77 = v52;
  v78 = v52 & 1;
  if (v52)
  {
    v79 = 1702195828;
  }

  else
  {
    v79 = 0x65736C6166;
  }

  if (v52)
  {
    v80 = 0xE400000000000000;
  }

  else
  {
    v80 = 0xE500000000000000;
  }

  MEMORY[0x21CECC330](v79, v80);

  v81 = v125[0];
  v82 = MEMORY[0x277D837D0];
  *(v76 + 56) = MEMORY[0x277D837D0];
  v83 = sub_2186FC3BC();
  *(v76 + 64) = v83;
  *(v76 + 32) = v81;
  sub_2187078D4(&qword_280EDC9E0, &protocol conformance descriptor for AudioFeedTrack);
  v84 = v121;
  v85 = sub_219BF7894();
  *(v76 + 96) = v82;
  *(v76 + 104) = v83;
  *(v76 + 72) = v85;
  *(v76 + 80) = v86;
  sub_219BE5314("AudioCPListItemFactory: Marking playing as %{public}@ for item representing track %{public}@", 92, 2, &dword_2186C1000, v74, v75, v76);

  v87 = v117;
  v88 = v78;
  v89 = v84;
  [v117 setPlaying_];
  v90 = v113;
  sub_219BE20E4();
  v91 = v115;
  sub_218D5862C(v115);
  sub_2199713D0(v90, sub_21883F194);
  v92 = v108;
  sub_219971430(v91, v108, &unk_280EDC8D0, sub_218D58B4C);
  v93 = v107;
  if ((*(v114 + 48))(v92, 1, v107) == 1)
  {
    goto LABEL_43;
  }

  sub_21872D2B4(v92, v51, sub_218D58B4C);
  v94 = *(v51 + *(v93 + 48));
  v95 = [*v51 identifier];
  v96 = sub_219BF5414();
  v98 = v97;

  v99 = [*v89 identifier];
  v100 = sub_219BF5414();
  v102 = v101;

  if (v96 == v100 && v98 == v102)
  {

    v89 = v121;
  }

  else
  {
    v103 = sub_219BF78F4();

    v89 = v121;
    if ((v103 & 1) == 0)
    {
LABEL_42:
      sub_2199713D0(v51, sub_218D58B4C);
LABEL_43:
      sub_219971374(v91, &unk_280EDC8D0, sub_218D58B4C);
      sub_219B743EC(v89);
      v94 = v104;
      goto LABEL_44;
    }
  }

  if ((sub_2198DB278((v51 + *(v122 + 32)), (v89 + *(v122 + 32))) & 1) == 0)
  {
    goto LABEL_42;
  }

  sub_2199713D0(v51, sub_218D58B4C);
  sub_219971374(v91, &unk_280EDC8D0, sub_218D58B4C);
LABEL_44:
  sub_21997149C(v89, v94);
  v105 = sub_219BF53D4();

  [v87 setDetailText_];

  [v87 setPlaybackProgress_];
  swift_unknownObjectRelease();
  sub_2199713D0(v89, type metadata accessor for AudioFeedTrack);
}

uint64_t sub_219971374(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219971E54(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2199713D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219971430(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_219971E54(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id sub_21997149C(id *a1, double a2)
{
  if (a2 <= 0.0)
  {
    goto LABEL_4;
  }

  v4 = type metadata accessor for AudioFeedTrack(0);
  v5 = COERCE_DOUBLE(sub_219BDD6D4());
  if (v6)
  {
    [a1[1] duration];
    if (v7 <= a2)
    {
      goto LABEL_4;
    }

LABEL_12:
    *&result = COERCE_DOUBLE(sub_219BDD6D4());
    if (v15)
    {
      *&result = COERCE_DOUBLE([a1[1] duration]);
    }

    else
    {
      v16 = *&result;
    }

    v17 = ceil(v16 - a2) / 60.0;
    if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v17 > -9.22337204e18)
      {
        if (v17 < 9.22337204e18)
        {
          v28 = v17;
          v18 = sub_219BF7894();
          MEMORY[0x21CECC330](v18);

          type metadata accessor for Localized();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v14 = [objc_opt_self() bundleForClass_];
          v27 = 0x8000000219D40A00;
          goto LABEL_19;
        }

LABEL_30:
        __break(1u);
        return result;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v5 > a2)
  {
    goto LABEL_12;
  }

LABEL_4:
  v4 = type metadata accessor for AudioFeedTrack(0);
  *&result = COERCE_DOUBLE(sub_219BDD6D4());
  if (v9)
  {
    *&result = COERCE_DOUBLE([a1[1] duration]);
  }

  else
  {
    v10 = *&result;
  }

  v11 = v10 / 60.0;
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v28 = v11;
  v12 = sub_219BF7894();
  MEMORY[0x21CECC330](v12);

  MEMORY[0x21CECC330](32, 0xE100000000000000);
  type metadata accessor for Localized();
  v13 = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v27 = 0x8000000219D409B0;
LABEL_19:
  v20 = sub_219BDB5E4();
  v22 = v21;

  MEMORY[0x21CECC330](v20, v22);

  type metadata accessor for AudioFeedTrack(0);
  v23 = a1 + *(v4 + 32);
  if (*(v23 + 3))
  {
    v24 = *(v23 + 2);
  }

  else
  {
    v25 = [*a1 sourceChannel];
    if (v25)
    {
      v26 = [v25 name];
      swift_unknownObjectRelease();
      v24 = sub_219BF5414();
    }

    else
    {
      v24 = 0;
    }
  }

  MEMORY[0x21CECC330](0x20A280E220, 0xA500000000000000);
  MEMORY[0x21CECC330](0, 0xE000000000000000);

  return v24;
}

void sub_2199718A4(void *a1, void *a2)
{
  v5 = *(type metadata accessor for AudioFeedTrack(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = (v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_21996DF6C(a1, a2, v8, v2 + v6, v9, v11, v12);
}

double sub_219971964(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AudioFeedTrack(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21996E39C(a1, a2, v2 + v6, v7);
}

uint64_t objectdestroy_11Tm_5()
{
  v1 = type metadata accessor for AudioFeedTrack(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v20 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  swift_unknownObjectRelease();

  v4 = v0 + v2 + v1[8];

  if (*(v4 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v4 + 32));
  }

  v5 = type metadata accessor for AudioFeedTrack.Configurables(0);
  v6 = v5[7];
  v7 = sub_219BDBD34();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  if (*(v4 + v5[8] + 8) != 1)
  {
  }

  v9 = v5[9];
  v10 = sub_219BE7434();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v4 + v9, 1, v10))
  {
    (*(v11 + 8))(v4 + v9, v10);
  }

  v12 = v3 + v1[12];
  sub_219BDD6E4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    sub_218C16270(0);
    v15 = *(v14 + 48);
    v16 = sub_219BDE3B4();
    (*(*(v16 - 8) + 8))(v12 + v15, v16);
  }

  v17 = (v20 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;

  return swift_deallocObject();
}

id sub_219971D14(const char *a1, uint64_t a2, ...)
{
  v5 = *(type metadata accessor for AudioFeedTrack(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_21996E628(v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), a1, a2);
}

uint64_t sub_219971DC0()
{
  v1 = *(type metadata accessor for AudioFeedTrack(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_21996E8C8(v3, v0 + v2, v5, v6);
}

void sub_219971E54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_219971EA8(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_219974CD0(319, qword_280EC7DF0, type metadata accessor for MagazineCategoryConfig, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

double sub_219971FE8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_21997218C(a1, a2, 0);
  v7 = sub_219BF1B64();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = *(v5 + 80);
  v9[3] = *(v5 + 88);
  v9[4] = v8;
  v9[5] = a1;
  v9[6] = a2;

  return result;
}

double sub_21997218C(uint64_t a1, uint64_t a2, char a3)
{
  sub_219974CD0(0, &qword_280E8F130, type metadata accessor for MagazineCategoryConfig, MEMORY[0x277D83940]);
  sub_219BE3204();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  v7 = sub_219BE2E54();
  sub_219974D50(0);
  sub_219BE2F84();

  v8 = sub_219BE1C44();
  sub_219BE95D4();
  sub_219BE2F84();

  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v9 = sub_219BF66A4();
  sub_2199751A8(0, &qword_280E8B4E0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D83D88]);
  sub_219BE2F94();

  v10 = sub_219BF66A4();
  *(swift_allocObject() + 16) = a3;
  sub_219BE2FE4();

  return result;
}

void sub_21997242C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_218D74898(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = off_282A9A668[0];
        type metadata accessor for MagazineCatalogViewController();
        v12(v11);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    sub_219974C4C(a1, v9, sub_218D74898);
    v13 = sub_219BF1584();
    if ((*(*(v13 - 8) + 48))(v9, 1, v13) == 1)
    {
      sub_21997218C(a3, a4, 1);
    }

    else
    {

      sub_219974A88(v9, sub_218D74898);
    }
  }
}

double sub_2199725F8(uint64_t a1)
{
  v2 = *v1;
  sub_219BE6EC4();
  v3 = sub_2189828B0();

  if ((v3 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = *(v2 + 80);
  *(v6 + 24) = *(v2 + 88);
  *(v6 + 32) = v5;
  *(v6 + 40) = HIBYTE(v3) & 1;

  sub_219BE6F24();

  return result;
}

double sub_219972790(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if ((a3 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        *(swift_allocObject() + 16) = Strong;
        swift_unknownObjectRetain();
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

uint64_t *sub_219972878()
{
  v1 = *v0;
  sub_218774F78((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();
  sub_219974B68(v0 + *(*v0 + 128), qword_280EC7DF0, type metadata accessor for MagazineCategoryConfig, MEMORY[0x277D83D88], sub_219974CD0);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_2199729F0()
{
  sub_219972878();

  return swift_deallocClassInstance();
}

void sub_219972A6C()
{
  sub_219974CD0(0, qword_280EC7DF0, type metadata accessor for MagazineCategoryConfig, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13[-1] - v2;
  v4 = type metadata accessor for MagazineCategoryConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(*v0 + 128);
  swift_beginAccess();
  sub_219974AE8(v0 + v8, v3, qword_280EC7DF0, type metadata accessor for MagazineCategoryConfig);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_219974B68(v3, qword_280EC7DF0, type metadata accessor for MagazineCategoryConfig, MEMORY[0x277D83D88], sub_219974CD0);
  }

  else
  {
    sub_2199749DC(v3, v7);
    v9 = v7[3];
    v10 = *v7;
    v11 = v7[1];
    v13[0] = v7[2];
    v13[1] = v9;
    v13[2] = v10;
    v13[3] = v11;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
    v22 = v13[0];
    v23 = v9;
    v24 = 0;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_bridgeObjectRetain_n();

      sub_218FBE500(v13);
      sub_218C113E0(v13);
      sub_219974A88(v7, type metadata accessor for MagazineCategoryConfig);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_bridgeObjectRetain_n();

      sub_218C113E0(v13);
      sub_219974A88(v7, type metadata accessor for MagazineCategoryConfig);
    }
  }
}

void sub_219972D4C(uint64_t a1, char a2, void (*a3)(uint64_t), uint64_t a4)
{
  if (a2)
  {
    MEMORY[0x28223BE20](a1);
    sub_219BE3204();
    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v6 = sub_219BF66A4();
    sub_219BE95D4();
    sub_219BE2F84();

    v7 = swift_allocObject();
    *(v7 + 16) = a3;
    *(v7 + 24) = a4;

    v8 = sub_219BE2E54();
    sub_219BE3024();
  }

  else
  {
    a3(a1);
  }
}

uint64_t sub_219972EF4(uint64_t a1)
{
  v1 = *(a1 + *(*a1 + 120));
  __swift_project_boxed_opaque_existential_1((v1 + 32), *(v1 + 56));
  v2 = off_282A6EDF8[0];
  v3 = type metadata accessor for MagazineCategoryConfigService(0);
  return v2(v3);
}

uint64_t sub_219972F78(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v49 = a3;
  v44 = *a2;
  v6 = v44;
  sub_219974CD0(0, qword_280EC7DF0, type metadata accessor for MagazineCategoryConfig, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v45 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  v12 = type metadata accessor for MagazineCategoryConfig(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v46 = v14;
  v47 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v48 = (&v43 - v16);
  v17 = *a1;
  *(a2 + *(v6 + 136)) = *a1;
  v58 = v17;

  v18 = [*(a2 + *(*a2 + 152)) cachedSubscription];
  if (objc_getAssociatedObject(v18, v18 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v53 = 0u;
    v54 = 0u;
  }

  v55 = v53;
  v56 = v54;
  v19 = MEMORY[0x277D84F70];
  if (*(&v54 + 1))
  {
    sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v20 = v52;
      v21 = [v52 integerValue];
      if (v21 == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }
  }

  else
  {
    sub_219974B68(&v55, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2199751A8);
  }

  v20 = 0;
  v21 = 0;
LABEL_10:
  if (objc_getAssociatedObject(v18, ~v21))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v53 = 0u;
    v54 = 0u;
  }

  v55 = v53;
  v56 = v54;
  if (*(&v54 + 1))
  {
    sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v22 = v52;
      v23 = [v22 integerValue];

      v24 = v23 + 62;
      goto LABEL_18;
    }
  }

  else
  {
    sub_219974B68(&v55, &qword_280E8B4F0, v19 + 8, MEMORY[0x277D83D88], sub_2199751A8);
  }

LABEL_17:

  v24 = 62;
LABEL_18:
  sub_219973724((v24 ^ v21) & 1, v58, v49, v50, a2, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_219974B68(v11, qword_280EC7DF0, type metadata accessor for MagazineCategoryConfig, MEMORY[0x277D83D88], sub_219974CD0);
    v26 = type metadata accessor for MagazineCatalogInteractor.Errors(0, *(v44 + 80), *(v44 + 88), v25);
    swift_getWitnessTable();
    v51 = swift_allocError();
    swift_willThrow();
  }

  else
  {
    v27 = v48;
    sub_2199749DC(v11, v48);
    v28 = v45;
    sub_219974C4C(v27, v45, type metadata accessor for MagazineCategoryConfig);
    (*(v13 + 56))(v28, 0, 1, v12);
    v29 = *(*a2 + 128);
    swift_beginAccess();
    sub_2199751F8(v28, a2 + v29, qword_280EC7DF0, type metadata accessor for MagazineCategoryConfig);
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v31 = v27[2];
      v32 = v27[3];
      __swift_project_boxed_opaque_existential_1((Strong + 64), *(Strong + 88));
      v33 = v18;
      v34 = off_282A86498[0];
      type metadata accessor for MagazineCatalogTracker();
      v34(v31, v32);
      v27 = v48;
      v18 = v33;
      swift_unknownObjectRelease();
    }

    v35 = *(a2 + *(*a2 + 120));
    __swift_project_boxed_opaque_existential_1((v35 + 112), *(v35 + 136));
    sub_2190032D0(v27[2], v27[3], *v27, v27[1], &v55);
    sub_218718690(&v55, &v53);
    swift_beginAccess();
    sub_2199751F8(&v53, v35 + 72, &qword_27CC21760, sub_219506950);
    swift_endAccess();
    v36 = *(&v56 + 1);
    v37 = v57;
    __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
    (*(v37 + 64))(4, v36, v37);
    __swift_destroy_boxed_opaque_existential_1(&v55);
    v38 = v47;
    sub_219974C4C(v27, v47, type metadata accessor for MagazineCategoryConfig);
    v39 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = v58;
    sub_2199749DC(v38, v40 + v39);

    v41 = sub_219BE2E54();
    sub_219974D50(0);
    v26 = sub_219BE2F74();

    sub_219974A88(v27, type metadata accessor for MagazineCategoryConfig);
  }

  return v26;
}

uint64_t sub_219973724@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v63 = a6;
  v64 = type metadata accessor for MagazineCategoryConfig(0);
  v11 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v60 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  sub_219974CD0(0, qword_280EC7DF0, type metadata accessor for MagazineCategoryConfig, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v60 = &v60 - v24;
  v26 = MEMORY[0x28223BE20](v25);
  v61 = &v60 - v27;
  v62 = a2;
  v28 = *(a2 + 16);
  if (a1)
  {
    if (v28)
    {
      v29 = v62 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v30 = *(v11 + 72);
      v31 = v28;
      while (1)
      {
        sub_219974C4C(v29, v19, type metadata accessor for MagazineCategoryConfig);
        if (a4)
        {
          v32 = *(v19 + 2) == a3 && *(v19 + 3) == a4;
          if (v32 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }
        }

        sub_219974A88(v19, type metadata accessor for MagazineCategoryConfig);
        v29 += v30;
        if (!--v31)
        {
          goto LABEL_23;
        }
      }

      v33 = v61;
      sub_2199749DC(v19, v61);
      v34 = *(v11 + 56);
      v35 = v64;
      v34(v33, 0, 1, v64);
      v36 = v33;
LABEL_22:
      v41 = v63;
      sub_2199749DC(v36, v63);
      return v34(v41, 0, 1, v35);
    }

LABEL_23:
    v43 = *(v11 + 56);
    v22 = v61;
    v44 = v64;
    v43(v61, 1, 1, v64, v26);
    if (v28)
    {
      v45 = v62 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v46 = *(v11 + 72);
      v47 = v45;
      while (1)
      {
        sub_219974C4C(v47, v16, type metadata accessor for MagazineCategoryConfig);
        if (sub_219973E50(v16, a5))
        {
          break;
        }

        sub_219974A88(v16, type metadata accessor for MagazineCategoryConfig);
        v47 += v46;
        if (!--v28)
        {
          v48 = v60;
          v44 = v64;
          (v43)(v60, 1, 1, v64);
          v49 = v63;
          sub_219974C4C(v45, v63, type metadata accessor for MagazineCategoryConfig);
          v50 = 0;
          v22 = v61;
          goto LABEL_34;
        }
      }

      v57 = v60;
      sub_2199749DC(v16, v60);
      v44 = v64;
      (v43)(v57, 0, 1, v64);
      v58 = v57;
      v59 = v63;
      sub_2199749DC(v58, v63);
      (v43)(v59, 0, 1, v44);
      v56 = *(v11 + 48);
      v22 = v61;
    }

    else
    {
      v50 = 1;
      v48 = v60;
      (v43)(v60, 1, 1, v44);
      v49 = v63;
LABEL_34:
      (v43)(v49, v50, 1, v44);
      v56 = *(v11 + 48);
      if (v56(v48, 1, v44) != 1)
      {
        sub_219974B68(v48, qword_280EC7DF0, type metadata accessor for MagazineCategoryConfig, MEMORY[0x277D83D88], sub_219974CD0);
      }
    }

    result = (v56)(v22, 1, v44);
    if (result == 1)
    {
      return result;
    }

    return sub_219974B68(v22, qword_280EC7DF0, type metadata accessor for MagazineCategoryConfig, MEMORY[0x277D83D88], sub_219974CD0);
  }

  if (v28)
  {
    v37 = v62 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v38 = *(v11 + 72);
    v39 = v37;
    do
    {
      sub_219974C4C(v39, v13, type metadata accessor for MagazineCategoryConfig);
      if (a4)
      {
        v40 = *(v13 + 2) == a3 && *(v13 + 3) == a4;
        if (v40 || (sub_219BF78F4() & 1) != 0)
        {
          sub_2199749DC(v13, v22);
          v34 = *(v11 + 56);
          v35 = v64;
          v34(v22, 0, 1, v64);
          v36 = v22;
          goto LABEL_22;
        }
      }

      sub_219974A88(v13, type metadata accessor for MagazineCategoryConfig);
      v39 += v38;
      --v28;
    }

    while (v28);
    v53 = *(v11 + 56);
    v52 = v64;
    v53(v22, 1, 1, v64);
    v54 = v37;
    v55 = v63;
    sub_219974C4C(v54, v63, type metadata accessor for MagazineCategoryConfig);
    v53(v55, 0, 1, v52);
  }

  else
  {
    v51 = *(v11 + 56);
    v52 = v64;
    v51(v22, 1, 1, v64, v26);
    (v51)(v63, 1, 1, v52);
  }

  result = (*(v11 + 48))(v22, 1, v52);
  if (result != 1)
  {
    return sub_219974B68(v22, qword_280EC7DF0, type metadata accessor for MagazineCategoryConfig, MEMORY[0x277D83D88], sub_219974CD0);
  }

  return result;
}

uint64_t sub_219973E50(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + *(*a2 + 160));
  if (*(a1 + 16) == *v2 && *(a1 + 24) == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_219BF78F4() & 1;
  }
}

uint64_t sub_219973EC0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = a1[1];
  v15[0] = *a1;
  v15[1] = v8;
  v16[0] = a1[2];
  *(v16 + 9) = *(a1 + 41);
  sub_219974D50(0);
  v10 = *(v9 + 48);
  v11 = (a4 + *(v9 + 64));
  *a4 = a2;
  sub_219974C4C(a3, a4 + v10, type metadata accessor for MagazineCategoryConfig);
  v12 = a1[1];
  *v11 = *a1;
  v11[1] = v12;
  v11[2] = a1[2];
  *(v11 + 41) = *(a1 + 41);

  return sub_218B88148(v15, &v14);
}

uint64_t sub_219973F88(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  sub_219974D50(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = (v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for MagazineCategoryConfig(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219974C4C(a1, v7, sub_219974D50);
  v11 = *v7;
  v12 = *(v5 + 56);
  v13 = (v7 + *(v5 + 72));
  *&v19[9] = *(v13 + 41);
  v14 = v13[1];
  v18[0] = *v13;
  v18[1] = v14;
  *v19 = v13[2];
  sub_2199749DC(v7 + v12, v10);
  v15 = (*(*(v3 + 88) + 40))(v11, v10, v18, *(v3 + 80));

  sub_219093EAC(v18);
  v20 = v15;
  sub_218B87F7C(0);
  sub_219974A40(&qword_27CC21758, sub_218B87F7C, MEMORY[0x277D6D890]);
  v16 = sub_219BE6E84();
  sub_219974A88(v10, type metadata accessor for MagazineCategoryConfig);

  return v16;
}

void sub_2199741B0(BOOL *a2@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      *(swift_allocObject() + 16) = v4;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  *a2 = Strong == 0;
}

void sub_21997426C(uint64_t a1, uint64_t a2, char a3)
{
  sub_218D74898(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF1B74();
  v7 = sub_219BF1584();
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (qword_27CC08A30 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v7, qword_27CCD9098);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_219974F84();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if ((a3 & 1) == 0 && swift_unknownObjectWeakLoadStrong())
    {
      if (qword_27CC08A28 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v7, qword_27CCD9080);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_219974F84();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    sub_219974A88(v6, sub_218D74898);
  }
}

uint64_t sub_21997446C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + *(*a1 + 120));
  swift_beginAccess();
  sub_219974AE8(v3 + 72, &v8, &qword_27CC21760, sub_219506950);
  if (v9)
  {
    sub_21875F93C(&v8, v10);
    v4 = v11;
    v5 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v6 = (*(v5 + 64))(a2, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v10);
    return v6;
  }

  else
  {
    sub_219974B68(&v8, &qword_27CC21760, sub_219506950, MEMORY[0x277D83D88], sub_219974CD0);
    sub_219974BC8();
    swift_allocError();
    sub_2199751A8(0, &qword_27CC13080, &type metadata for MagazineGridModel, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE2FF4();
  }
}

uint64_t *sub_21997462C(__int128 *a1, uint64_t **a2)
{
  v4 = *a2;
  v5 = *a2;
  sub_219974CD0(0, qword_280EC7DF0, type metadata accessor for MagazineCategoryConfig, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v23 - v7 + 16;
  v9 = type metadata accessor for MagazineCategoryConfig(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v14 = a1[1];
  v23[0] = *a1;
  v23[1] = v14;
  v24[0] = a1[2];
  *(v24 + 9) = *(a1 + 41);
  if (*(a2 + v4[17]))
  {
    v15 = v5[16];
    swift_beginAccess();
    sub_219974AE8(a2 + v15, v8, qword_280EC7DF0, type metadata accessor for MagazineCategoryConfig);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_2199749DC(v8, v13);
      v17 = v5[10];
      v16 = v5[11];
      v18 = *(v16 + 40);

      v20 = v18(v19, v13, v23, v17, v16);

      v25 = v20;
      sub_218B87F7C(0);
      sub_219974A40(&qword_27CC21758, sub_218B87F7C, MEMORY[0x277D6D890]);
      v5 = sub_219BE6E84();
      sub_219974A88(v13, type metadata accessor for MagazineCategoryConfig);

      return v5;
    }

    sub_219974B68(v8, qword_280EC7DF0, type metadata accessor for MagazineCategoryConfig, MEMORY[0x277D83D88], sub_219974CD0);
  }

  type metadata accessor for MagazineCatalogInteractor.Errors(0, v5[10], v5[11], v11);
  swift_getWitnessTable();
  swift_allocError();
  swift_willThrow();
  return v5;
}

uint64_t sub_2199749DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineCategoryConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219974A40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_219974A88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219974AE8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_219974CD0(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_219974B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_219974BC8()
{
  result = qword_27CC21770;
  if (!qword_27CC21770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21770);
  }

  return result;
}

uint64_t sub_219974C4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_219974CD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_219974D50(uint64_t a1)
{
  if (!qword_27CC21778[0])
  {
    sub_219974CD0(255, &qword_280E8F130, type metadata accessor for MagazineCategoryConfig, MEMORY[0x277D83940]);
    type metadata accessor for MagazineCategoryConfig(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, qword_27CC21778);
    }
  }
}

void sub_219974E30(uint64_t a1)
{
  v7 = *v1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(v7 + 88);
    v6 = *(v3 + 48);
    v4 = a1 + 40;
    do
    {
      v5 = *(v4 - 8);
      v4 += 16;
      j__swift_retain();
      v6(v5 | 0x8000000000000000, 0, 255, *(v7 + 80), v3);
      sub_218B87F7C(0);
      sub_219974A40(&qword_27CC21758, sub_218B87F7C, MEMORY[0x277D6D890]);
      sub_219BE6EF4();
      j__swift_release(v5);

      --v2;
    }

    while (v2);
  }
}

uint64_t sub_219974F84()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BE8644();
  *v7 = sub_219BF1554();
  v7[1] = v8;
  v9 = sub_219BE5AA4();
  v10 = MEMORY[0x277D6D2E8];
  v7[5] = v9;
  v7[6] = v10;
  __swift_allocate_boxed_opaque_existential_1(v7 + 2);
  sub_219BE5A94();
  v7[7] = sub_219BF1534();
  v7[8] = v11;
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC98], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_2199751A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2199751F8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_219974CD0(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for PuzzleContinuePlayingLayoutModel(uint64_t a1)
{
  result = qword_280EA56F8;
  if (!qword_280EA56F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_219975368()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219975BF4(v0, v7);
  (*(v2 + 32))(v4, v7, v1);
  sub_219BEF954();
  v9 = v8;
  (*(v2 + 8))(v4, v1);
  return v9;
}

uint64_t sub_2199754CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219975BF4(v2, v5);
  v6 = sub_219BEF974();
  a2[3] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(v6 - 8) + 32))(boxed_opaque_existential_1, v5, v6);
}

uint64_t sub_2199755B8(uint64_t a1)
{
  v2 = sub_219975C58(&unk_280EA5730, &unk_219CB8B7C);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_21997568C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219975BF4(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t sub_2199757F0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219975BF4(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  a3(v12);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21997596C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219975BF4(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t sub_219975AB0(uint64_t a1)
{
  v2 = sub_219BEF974();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219975BF4(v1, v8);
  (*(v3 + 32))(v5, v8, v2);
  v9 = sub_219BEF924();
  (*(v3 + 8))(v5, v2);
  return v9;
}

uint64_t sub_219975BF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleContinuePlayingLayoutModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219975C58(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PuzzleContinuePlayingLayoutModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_219975CA0()
{
  result = qword_27CC21810;
  if (!qword_27CC21810)
  {
    sub_219975CF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21810);
  }

  return result;
}

void sub_219975CF8()
{
  if (!qword_27CC21818)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC21818);
    }
  }
}

uint64_t sub_219975D48(char a1)
{
  result = 0x73694C6575737369;
  switch(a1)
  {
    case 1:
      return 0x4C656C6369747261;
    case 2:
    case 22:
    case 24:
      return 0xD000000000000013;
    case 3:
      return 0x536C656E6E616863;
    case 4:
      return 0xD000000000000017;
    case 5:
      return 0x72656874616577;
    case 6:
      return 0x6C6C6177796170;
    case 7:
      return 25697;
    case 8:
      return 0x64657461727563;
    case 9:
      return 0x65726F736E6F7073;
    case 10:
      return 0x65527374726F7073;
    case 11:
      return 0xD000000000000010;
    case 12:
      return 0x61467374726F7073;
    case 13:
      return 0x63537374726F7073;
    case 14:
      return 0x63537374726F7073;
    case 15:
      return 0x694C7374726F7073;
    case 16:
      return 0x7374726F7053796DLL;
    case 17:
      return 0xD000000000000010;
    case 18:
      return 0x74537374726F7073;
    case 19:
      return 0x72427374726F7073;
    case 20:
      return 0x6F427374726F7073;
    case 21:
      return 0x76457374726F7073;
    case 23:
      return 0xD000000000000010;
    case 25:
      return 0x6867696C68676968;
    case 26:
      return 0x756F59726F66;
    case 27:
      v4 = 0x756F59726F66;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6552000000000000;
    case 28:
      return 0x526C656E6E616863;
    case 29:
      return 0x7453746E65636572;
    case 30:
    case 37:
      return 0xD000000000000015;
    case 31:
      return 0x676E615265746164;
    case 32:
      return 0xD000000000000010;
    case 33:
      return 0x614D7374726F7073;
    case 34:
      return 0xD000000000000010;
    case 35:
      return 0x694C656C7A7A7570;
    case 36:
      return 0x7241656C7A7A7570;
    case 38:
      return 0x6546656C7A7A7570;
    case 39:
      return 0xD000000000000011;
    case 40:
      return 0xD000000000000010;
    case 41:
      return 0x7974696E69666661;
    case 42:
      v4 = 0x74736574616CLL;
      return v4 & 0xFFFFFFFFFFFFLL | 0x6552000000000000;
    case 43:
      v3 = 0x526465766173;
      goto LABEL_35;
    case 44:
      return 0x676E69646E657274;
    case 45:
      v3 = 0x526369706F74;
LABEL_35:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6365000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_219976294()
{
  v1 = *v0;
  sub_219BF7AA4();
  sub_219975D48(v1);
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_2199762F8(uint64_t a1)
{
  sub_219975D48(*v1);
  sub_219BF5524();

  return result;
}

uint64_t sub_21997634C(uint64_t a1)
{
  v2 = *v1;
  sub_219BF7AA4();
  sub_219975D48(v2);
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_2199763AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_219976A94(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2199763DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_219975D48(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_219976408(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_219975D48(*a1);
  v5 = v4;
  if (v3 == sub_219975D48(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

unint64_t sub_219976554()
{
  result = qword_280ED75F0;
  if (!qword_280ED75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED75F0);
  }

  return result;
}

unint64_t sub_2199765A8(char a1)
{
  result = 0x20656C6369747241;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
    case 22:
    case 24:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x206C656E6E616843;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0x72656874616557;
      break;
    case 6:
      result = 0x6C6C6177796150;
      break;
    case 7:
      result = 25665;
      break;
    case 8:
      result = 0x64657461727543;
      break;
    case 9:
    case 12:
    case 18:
    case 44:
      result = 0xD000000000000010;
      break;
    case 10:
    case 29:
      result = 0x5320746E65636552;
      break;
    case 11:
    case 23:
    case 34:
      result = 0xD000000000000012;
      break;
    case 13:
    case 14:
      result = 0x53207374726F7053;
      break;
    case 15:
      result = 0x4C207374726F7053;
      break;
    case 16:
      result = 0x74726F705320794DLL;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0x42207374726F7053;
      break;
    case 20:
      result = 0xD000000000000011;
      break;
    case 21:
      result = 0xD000000000000011;
      break;
    case 25:
      result = 0x6867696C68676948;
      break;
    case 26:
      result = 0x756F5920726F46;
      break;
    case 27:
      result = 0x20756F5920726F46;
      break;
    case 28:
      result = 0x4320657069636552;
      break;
    case 30:
    case 37:
      result = 0xD000000000000017;
      break;
    case 31:
      result = 0x6E61522065746144;
      break;
    case 32:
      result = 0xD000000000000011;
      break;
    case 33:
      result = 0x4D207374726F7053;
      break;
    case 35:
      result = 0x4C20656C7A7A7550;
      break;
    case 36:
      result = 0x4120656C7A7A7550;
      break;
    case 38:
      result = 0x4620656C7A7A7550;
      break;
    case 39:
      result = 0xD000000000000013;
      break;
    case 40:
      result = 0xD000000000000011;
      break;
    case 41:
      result = 0x7974696E69666641;
      break;
    case 42:
      result = 0x522074736574614CLL;
      break;
    case 43:
      result = 0x6552206465766153;
      break;
    case 45:
      result = 0x5420657069636552;
      break;
    default:
      result = 0x694C206575737349;
      break;
  }

  return result;
}

unint64_t sub_219976A94(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7954();

  if (v2 >= 0x2E)
  {
    return 46;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_219976AE8()
{
  v1 = *v0;
  v2 = v0[3];
  if (v2)
  {
    v3 = v0[2];
    v5 = *v0;

    MEMORY[0x21CECC330](58, 0xE100000000000000);
    MEMORY[0x21CECC330](v3, v2);
    return v5;
  }

  else
  {
  }

  return v1;
}

void sub_219976B70()
{
  v1 = [*(v0 + 24) purchaseLookUpEntriesByTagID];
  if (v1)
  {
    v2 = v1;
    sub_218A15F10();
    v3 = sub_219BF5214();
  }

  else
  {
    v3 = sub_2194AEBB8(MEMORY[0x277D84F90]);
  }

  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (v6)
  {
    v10 = v6;
LABEL_14:
    v6 = (v10 - 1) & v10;
    if (*(v3 + 16))
    {
      v12 = (*(v3 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v10)))));
      v14 = *v12;
      v13 = v12[1];

      v15 = sub_21870F700(v14, v13);
      if ((v16 & 1) != 0 && [*(*(v3 + 56) + 8 * v15) purchaseType] == 1)
      {
        v24 = v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21870B65C(0, *(v9 + 16) + 1, 1);
        }

        v18 = *(v9 + 16);
        v17 = *(v9 + 24);
        v19 = v18 + 1;
        if (v18 >= v17 >> 1)
        {
          v21 = v18 + 1;
          v23 = v18;
          sub_21870B65C((v17 > 1), v18 + 1, 1);
          v19 = v21;
          v18 = v23;
          v9 = v24;
        }

        *(v9 + 16) = v19;
        v20 = v9 + 16 * v18;
        *(v20 + 32) = v14;
        *(v20 + 40) = v13;
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v7)
    {
      break;
    }

    v10 = *(v3 + 64 + 8 * v11);
    ++v8;
    if (v10)
    {
      v8 = v11;
      goto LABEL_14;
    }
  }

  if (*(v9 + 16))
  {
    MEMORY[0x28223BE20](v22);
    sub_219977434(0);
    swift_allocObject();
    sub_219BE30B4();
  }

  else
  {

    sub_219977434(0);
    swift_allocObject();
    sub_219BE3014();
  }
}

uint64_t sub_219976E44(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = *(a5 + 32);

  sub_218E9AF50(a6, v15, a3, a4, a7, sub_218846958, v14);
}

double sub_219976F20(unint64_t a1, char a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7)
{
  if (a2)
  {
    a3(a1);
    return result;
  }

  v9 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v23 = a6;
  if (v10)
  {
LABEL_5:
    v11 = 0;
    v12 = MEMORY[0x277D84F90];
    v24 = v9;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x21CECE0F0](v11, a1, a3, a4);
        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v11 >= *(v9 + 16))
        {
          goto LABEL_19;
        }

        v14 = *(a1 + 8 * v11 + 32);

        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          v20 = a6;
          v21 = a7;
          v22 = sub_219BF7214();
          a7 = v21;
          a6 = v20;
          v10 = v22;
          v23 = a6;
          if (!v22)
          {
            break;
          }

          goto LABEL_5;
        }
      }

      v30 = v14;
      sub_21997712C(&v30, a5, &v27);

      v16 = v28;
      if (v28)
      {
        v17 = v27;
        v26 = v29;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_2191FBBF0(0, *(v12 + 2) + 1, 1, v12);
        }

        v19 = *(v12 + 2);
        v18 = *(v12 + 3);
        if (v19 >= v18 >> 1)
        {
          v12 = sub_2191FBBF0((v18 > 1), v19 + 1, 1, v12);
        }

        *(v12 + 2) = v19 + 1;
        v13 = &v12[32 * v19];
        *(v13 + 4) = v17;
        *(v13 + 5) = v16;
        *(v13 + 3) = v26;
        v9 = v24;
      }

      ++v11;
      if (v15 == v10)
      {
        goto LABEL_22;
      }
    }
  }

  v12 = MEMORY[0x277D84F90];
LABEL_22:
  v23(v12);

  return result;
}

double sub_21997712C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = [*(*a1 + 16) asChannel];
  if (!v6)
  {
    goto LABEL_13;
  }

  if (![v6 isWhitelisted])
  {
    goto LABEL_12;
  }

  v7 = [*(v5 + 16) identifier];
  v8 = sub_219BF5414();
  v10 = v9;

  if (!*(a2 + 16))
  {

    goto LABEL_12;
  }

  v11 = sub_21870F700(v8, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_12:
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v14 = *(*(a2 + 56) + 8 * v11);
  if ([v14 purchaseValidationState] != 1)
  {

    goto LABEL_12;
  }

  v15 = [*(v5 + 16) identifier];
  v16 = sub_219BF5414();
  v18 = v17;

  if (*(a2 + 16))
  {
    v19 = sub_21870F700(v16, v18);
    v21 = v20;

    if (v21)
    {
      v22 = [*(*(a2 + 56) + 8 * v19) purchaseID];
      if (v22)
      {
        v23 = v22;
        v24 = sub_219BF5414();
        v26 = v25;

        v27 = [*(v5 + 16) identifier];
        v28 = sub_219BF5414();
        v30 = v29;
        swift_unknownObjectRelease();

        *a3 = v28;
        a3[1] = v30;
        a3[2] = v24;
        a3[3] = v26;
        return result;
      }
    }
  }

  else
  {
  }

  swift_unknownObjectRelease();

LABEL_13:
  result = 0.0;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  return result;
}

unint64_t sub_2199773D4()
{
  result = qword_280ED01C0;
  if (!qword_280ED01C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED01C0);
  }

  return result;
}

void sub_219977434(uint64_t a1)
{
  if (!qword_280EE6B20)
  {
    sub_218A15EC0(255, &unk_280E8F270, &type metadata for SubscriberAdSegment, MEMORY[0x277D83940]);
    v1 = sub_219BE3114();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE6B20);
    }
  }
}

Swift::Void __swiftcall FakeNewArticleLocalNotificationScheduler.scheduleNotification(for:delay:)(Swift::String a1, Swift::Double delay)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_getObjectType();
  sub_218731D50();
  sub_219BE3204();
  sub_2187D9028();
  v5 = sub_219BF66A4();
  v6 = swift_allocObject();
  *(v6 + 16) = countAndFlagsBits;
  *(v6 + 24) = object;
  *(v6 + 32) = delay;

  sub_219BE2F94();
}

void sub_2199775F8(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v96 = a2;
  v93 = a3;
  v94 = a4;
  v7 = type metadata accessor for UserNotification.DeliveryStatus(0);
  MEMORY[0x28223BE20](v7 - 8);
  v95 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DE118(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v98 = &v82 - v10;
  v92 = type metadata accessor for UserNotification.Kind(0);
  MEMORY[0x28223BE20](v92);
  v12 = (&v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = sub_219BDBD64();
  v13 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v82 - v17;
  v19 = *a1;
  v20 = [objc_opt_self() mainScreen];
  [v20 scale];

  v21 = FCThumbnailForHeadlineMinimumSize();
  v22 = [v21 thumbnailAssetHandle];

  v23 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  v24 = [v19 sourceChannel];
  if (v24)
  {
    v25 = [v24 theme];
    swift_unknownObjectRelease();
    if (v25)
    {
      v26 = [v25 bannerImageForMask];
      swift_unknownObjectRelease();
      v27 = [v26 assetHandle];

      v23 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  v28 = [v19 v23[408]];
  if (v28)
  {
    v29 = [v28 theme];
    swift_unknownObjectRelease();
    if (v29)
    {
      v30 = [v29 compactBannerImage];
      swift_unknownObjectRelease();
      v29 = [v30 assetHandle];
    }

    v23 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  }

  else
  {
    v29 = 0;
  }

  v91 = v29;
  swift_unknownObjectRetain();
  v90 = v22;
  v89 = v27;
  v31 = sub_219978288(v19, v22, v27, v29);
  sub_2186DE118(0, &qword_27CC21830, sub_219978F14, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = sub_219BF5414();
  *(inited + 40) = v33;
  *(inited + 48) = v31;

  v85 = sub_2194B1FA8(inited);
  swift_setDeallocating();
  sub_219978F7C(inited + 32, sub_219978F14);
  sub_219BDBD54();
  v88 = sub_219BDBD44();
  v87 = v34;
  v35 = *(v13 + 8);
  v36 = v86;
  v35(v18, v86);
  sub_219BDBD54();
  v84 = sub_219BDBD44();
  v83 = v37;
  v35(v15, v36);
  v38 = [v19 v23[408]];
  if (v38)
  {
    v39 = [v38 identifier];
    swift_unknownObjectRelease();
    v86 = sub_219BF5414();
    v41 = v40;
  }

  else
  {
    v86 = 0;
    v41 = 0;
  }

  v42 = [v19 v23[408]];
  if (v42)
  {
    v43 = [v42 identifier];
    swift_unknownObjectRelease();
    v44 = sub_219BF5414();
    v46 = v45;
  }

  else
  {
    v44 = 0;
    v46 = 0;
  }

  v47 = sub_219BDBD34();
  (*(*(v47 - 8) + 56))(v98, 1, 1, v47);
  v48 = [v19 clusterID];
  if (v48)
  {
    v49 = v48;
    v50 = sub_219BF5414();
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0;
  }

  v53 = sub_218E9B5CC();

  v54 = v94;
  *v12 = v93;
  v12[1] = v54;
  v55 = v83;
  v12[2] = v84;
  v12[3] = v55;
  v12[4] = v86;
  v12[5] = v41;
  v12[6] = v44;
  v12[7] = v46;
  v56 = type metadata accessor for UserNotification.ArticleData(0);
  sub_218A5DD60(v98, v12 + v56[8]);
  v57 = (v12 + v56[9]);
  *v57 = v50;
  v57[1] = v52;
  *(v12 + v56[10]) = v53;
  swift_storeEnumTagMultiPayload();

  v58 = [v19 sourceChannel];
  if (v58)
  {
    v59 = [v58 name];
    swift_unknownObjectRelease();
    v98 = sub_219BF5414();
    v61 = v60;
  }

  else
  {
    v98 = 0;
    v61 = 0xE000000000000000;
  }

  v62 = [v19 title];
  if (v62)
  {
    v63 = v62;
    v64 = sub_219BF5414();
    v66 = v65;
  }

  else
  {
    v64 = 0;
    v66 = 0xE000000000000000;
  }

  sub_218E95988(v85);
  v68 = v67;

  sub_218C1A090();
  v70 = v95;
  (*(*(v69 - 8) + 56))(v95, 1, 2, v69);
  v71 = type metadata accessor for UserNotification(0);
  v72 = objc_allocWithZone(v71);
  v73 = &v72[OBJC_IVAR____TtC7NewsUI216UserNotification_identifier];
  v74 = v87;
  *v73 = v88;
  v73[1] = v74;
  sub_2198CC4AC(v12, &v72[OBJC_IVAR____TtC7NewsUI216UserNotification_kind], type metadata accessor for UserNotification.Kind);
  v75 = &v72[OBJC_IVAR____TtC7NewsUI216UserNotification_title];
  *v75 = v98;
  *(v75 + 1) = v61;
  v76 = &v72[OBJC_IVAR____TtC7NewsUI216UserNotification_subtitle];
  *v76 = 0;
  *(v76 + 1) = 0xE000000000000000;
  v77 = &v72[OBJC_IVAR____TtC7NewsUI216UserNotification_message];
  *v77 = v64;
  v77[1] = v66;
  v78 = &v72[OBJC_IVAR____TtC7NewsUI216UserNotification_threadIdentifier];
  *v78 = 0xD000000000000035;
  *(v78 + 1) = 0x8000000219D40F30;
  *&v72[OBJC_IVAR____TtC7NewsUI216UserNotification_payload] = v68;
  sub_2198CC4AC(v70, &v72[OBJC_IVAR____TtC7NewsUI216UserNotification_deliveryStatus], type metadata accessor for UserNotification.DeliveryStatus);
  v97.receiver = v72;
  v97.super_class = v71;
  v79 = objc_msgSendSuper2(&v97, sel_init);
  sub_219978F7C(v70, type metadata accessor for UserNotification.DeliveryStatus);
  sub_219978F7C(v12, type metadata accessor for UserNotification.Kind);
  v80 = *(v96 + OBJC_IVAR____TtC7NewsUI240FakeNewArticleLocalNotificationScheduler_notificationService + 24);
  v81 = *(v96 + OBJC_IVAR____TtC7NewsUI240FakeNewArticleLocalNotificationScheduler_notificationService + 32);
  __swift_project_boxed_opaque_existential_1((v96 + OBJC_IVAR____TtC7NewsUI240FakeNewArticleLocalNotificationScheduler_notificationService), v80);
  (*(v81 + 56))(v79, v80, v81, a5);
}

id FakeNewArticleLocalNotificationScheduler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FakeNewArticleLocalNotificationScheduler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2199780B0(uint64_t a1, uint64_t a2, double a3)
{
  sub_218731D50();
  sub_219BE3204();
  sub_2187D9028();
  v6 = sub_219BF66A4();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;

  sub_219BE2F94();
}

uint64_t sub_219978288(void *a1, void *a2, void *a3, void *a4)
{
  v136 = a4;
  v137 = a2;
  v140 = a3;
  v135 = sub_219BDB954();
  v139 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v138 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DE118(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v134 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v133 = &v133 - v9;
  v10 = MEMORY[0x277D84F98];
  v145 = MEMORY[0x277D84F98];
  v11 = sub_219BF5414();
  v13 = v12;
  v14 = a1;
  v15 = [a1 articleID];
  v16 = MEMORY[0x277D837D0];
  if (v15)
  {
    v17 = v15;
    v18 = sub_219BF5414();
    v20 = v19;

    v144 = v16;
    *&v143 = v18;
    *(&v143 + 1) = v20;
    sub_218751558(&v143, v142);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v141 = v10;
    sub_21948CB08(v142, v11, v13, isUniquelyReferenced_nonNull_native);

    v145 = v141;
  }

  else
  {
    sub_2195EA4A0(v11, v13, &v143);

    sub_219978F7C(&v143, sub_21880702C);
  }

  v22 = sub_219BF5414();
  v24 = v23;
  v25 = [v14 articleID];
  v26 = v133;
  if (v25)
  {
    v27 = v25;
    v28 = sub_219BF5414();
    v30 = v29;

    v31 = MEMORY[0x277D837D0];
    v144 = MEMORY[0x277D837D0];
    *&v143 = v28;
    *(&v143 + 1) = v30;
    sub_218751558(&v143, v142);
    v32 = v145;
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v32;
    sub_21948CB08(v142, v22, v24, v33);

    v145 = v141;
    v34 = v136;
  }

  else
  {
    sub_2195EA4A0(v22, v24, &v143);

    sub_219978F7C(&v143, sub_21880702C);
    v34 = v136;
    v31 = MEMORY[0x277D837D0];
  }

  v35 = sub_219BF5414();
  v37 = v36;
  v38 = [v14 title];
  if (v38)
  {
    v39 = v38;
    v40 = sub_219BF5414();
    v42 = v41;

    v144 = v31;
    *&v143 = v40;
    *(&v143 + 1) = v42;
    sub_218751558(&v143, v142);
    v43 = v145;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v43;
    sub_21948CB08(v142, v35, v37, v44);

    v145 = v141;
  }

  else
  {
    sub_2195EA4A0(v35, v37, &v143);

    sub_219978F7C(&v143, sub_21880702C);
  }

  v45 = sub_219BF5414();
  v47 = v46;
  v48 = [v14 shortExcerpt];
  if (v48)
  {
    v49 = v48;
    v50 = sub_219BF5414();
    v52 = v51;

    v144 = v31;
    *&v143 = v50;
    *(&v143 + 1) = v52;
    sub_218751558(&v143, v142);
    v53 = v145;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v53;
    sub_21948CB08(v142, v45, v47, v54);

    v145 = v141;
  }

  else
  {
    sub_2195EA4A0(v45, v47, &v143);

    sub_219978F7C(&v143, sub_21880702C);
  }

  v55 = sub_219BF5414();
  v57 = v56;
  v58 = [v14 sourceChannel];
  if (v58)
  {
    v59 = [v58 identifier];
    swift_unknownObjectRelease();
    v60 = sub_219BF5414();
    v62 = v61;

    v144 = v31;
    *&v143 = v60;
    *(&v143 + 1) = v62;
    sub_218751558(&v143, v142);
    v63 = v145;
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v63;
    sub_21948CB08(v142, v55, v57, v64);

    v145 = v141;
  }

  else
  {
    sub_2195EA4A0(v55, v57, &v143);

    sub_219978F7C(&v143, sub_21880702C);
  }

  v65 = sub_219BF5414();
  v67 = v66;
  v68 = [v14 sourceChannel];
  if (v68)
  {
    v69 = [v68 name];
    swift_unknownObjectRelease();
    v70 = sub_219BF5414();
    v72 = v71;

    v144 = v31;
    *&v143 = v70;
    *(&v143 + 1) = v72;
    sub_218751558(&v143, v142);
    v73 = v145;
    v74 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v73;
    sub_21948CB08(v142, v65, v67, v74);

    v145 = v141;
  }

  else
  {
    sub_2195EA4A0(v65, v67, &v143);

    sub_219978F7C(&v143, sub_21880702C);
  }

  v75 = sub_219BF5414();
  v77 = v76;
  v78 = [v14 sourceChannel];
  if (v78 && (v79 = [v78 nameCompact], swift_unknownObjectRelease(), v79))
  {
    v80 = sub_219BF5414();
    v82 = v81;

    v144 = v31;
    *&v143 = v80;
    *(&v143 + 1) = v82;
    sub_218751558(&v143, v142);
    v83 = v145;
    v84 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v83;
    sub_21948CB08(v142, v75, v77, v84);

    v145 = v141;
  }

  else
  {
    sub_2195EA4A0(v75, v77, &v143);

    sub_219978F7C(&v143, sub_21880702C);
  }

  v85 = v137;
  v86 = v134;
  v87 = sub_219BF5414();
  v89 = v88;
  v90 = [v14 publishDate];
  if (v90)
  {
    v91 = v90;
    sub_219BDBCA4();

    v92 = 0;
  }

  else
  {
    v92 = 1;
  }

  v93 = sub_219BDBD34();
  v94 = *(v93 - 8);
  (*(v94 + 56))(v86, v92, 1, v93);
  sub_218A5DD60(v86, v26);
  if ((*(v94 + 48))(v26, 1, v93) == 1)
  {
    sub_2189DD39C(v26);
    sub_2195EA4A0(v87, v89, &v143);

    sub_219978F7C(&v143, sub_21880702C);
  }

  else
  {
    sub_219BDBC84();
    v144 = MEMORY[0x277D839F8];
    *&v143 = v95;
    (*(v94 + 8))(v26, v93);
    sub_218751558(&v143, v142);
    v96 = v145;
    v97 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v96;
    sub_21948CB08(v142, v87, v89, v97);

    v145 = v141;
  }

  v98 = sub_219BF5414();
  v100 = v98;
  v101 = v99;
  v102 = v135;
  if (v85)
  {
    v103 = [v85 remoteURL];
    v104 = v138;
    sub_219BDB8B4();

    v105 = sub_219BDB804();
    v107 = v106;
    (*(v139 + 8))(v104, v102);
    v144 = MEMORY[0x277D837D0];
    *&v143 = v105;
    *(&v143 + 1) = v107;
    sub_218751558(&v143, v142);
    v108 = v145;
    v109 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v108;
    sub_21948CB08(v142, v100, v101, v109);

    v145 = v141;
  }

  else
  {
    sub_2195EA4A0(v98, v99, &v143);

    sub_219978F7C(&v143, sub_21880702C);
  }

  v111 = sub_219BF5414();
  v112 = v110;
  if (v140)
  {
    v113 = [v140 remoteURL];
    v114 = v138;
    sub_219BDB8B4();

    v115 = sub_219BDB804();
    v117 = v116;
    (*(v139 + 8))(v114, v102);
    v118 = MEMORY[0x277D837D0];
    v144 = MEMORY[0x277D837D0];
    *&v143 = v115;
    *(&v143 + 1) = v117;
    sub_218751558(&v143, v142);
    v119 = v145;
    v120 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v119;
    sub_21948CB08(v142, v111, v112, v120);

    v145 = v141;
  }

  else
  {
    sub_2195EA4A0(v111, v110, &v143);

    sub_219978F7C(&v143, sub_21880702C);
    v118 = MEMORY[0x277D837D0];
  }

  v121 = sub_219BF5414();
  v123 = v121;
  v124 = v122;
  if (v34)
  {
    v125 = [v34 remoteURL];
    v126 = v138;
    sub_219BDB8B4();

    v127 = sub_219BDB804();
    v129 = v128;
    (*(v139 + 8))(v126, v102);
    v144 = v118;
    *&v143 = v127;
    *(&v143 + 1) = v129;
    sub_218751558(&v143, v142);
    v130 = v145;
    v131 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v130;
    sub_21948CB08(v142, v123, v124, v131);

    swift_unknownObjectRelease();
    return v141;
  }

  else
  {
    sub_2195EA4A0(v121, v122, &v143);

    swift_unknownObjectRelease();

    sub_219978F7C(&v143, sub_21880702C);
    return v145;
  }
}

void sub_219978F14(uint64_t a1)
{
  if (!qword_27CC21838)
  {
    sub_218A19674();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC21838);
    }
  }
}

uint64_t sub_219978F7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for SportsManagementDetailLayoutSectionDescriptor(uint64_t a1)
{
  result = qword_27CC21840;
  if (!qword_27CC21840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219979058(uint64_t a1)
{
  sub_218D57484(319);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = type metadata accessor for TitleViewLayoutAttributes(319);
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

double sub_21997912C()
{
  v1 = v0;
  v2 = type metadata accessor for TitleViewLayoutAttributes(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219979270(v1, v8);
  v9 = *(v8 + 6);

  sub_218D57484(0);
  sub_218A52EFC(&v8[*(v10 + 48)], v5);
  Height = CGRectGetHeight(*&v5[*(v3 + 28)]);
  sub_218D57660(v5);
  return Height;
}

uint64_t sub_219979270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsManagementDetailLayoutSectionDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2199792FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  sub_2186F64EC(0);
  v99 = v3;
  v95 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v94 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE8A90(0);
  MEMORY[0x28223BE20](v5 - 8);
  v93 = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3B14(0);
  v90 = v7;
  v89 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v91 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v92 = v69 - v10;
  v100 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v100);
  v101 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE8AB0(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v98 = v69 - v16;
  sub_218CE8B24(0);
  MEMORY[0x28223BE20](v17 - 8);
  v88 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v97 = v69 - v20;
  sub_21997A8E8(0, &qword_280E8C6F8, sub_21997A830, &type metadata for FeaturedIssueArticleMagazineFeedGroupKnobs.Keys, MEMORY[0x277D844C8]);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = v69 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21997A830();
  v26 = v102;
  sub_219BF7B34();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v83 = v23;
  v85 = 0;
  v87 = v14;
  v86 = a1;
  LOBYTE(v113) = 0;
  sub_2186EC6C8(&qword_280E919C8, sub_2186E3B14, MEMORY[0x277D321B0]);
  v28 = v97;
  v29 = v90;
  sub_219BF7674();
  LOBYTE(v113) = 1;
  sub_218CE8B98();
  sub_219BF7674();
  v78 = v118;
  sub_2186F9548();
  LOBYTE(v113) = 2;
  v30 = MEMORY[0x277D32620];
  sub_2186EC6C8(&qword_280E913B8, sub_2186F9548, MEMORY[0x277D32620]);
  sub_219BF7674();
  v102 = v115;
  LOBYTE(v108) = 8;
  sub_219BF7674();
  v77 = v113;
  v76 = v114;
  LOBYTE(v108) = 3;
  sub_219BF7674();
  v80 = v112;
  sub_2186F95C4();
  v32 = v31;
  LOBYTE(v108) = 4;
  sub_2186EC6C8(&qword_280E913F8, sub_2186F95C4, v30);
  v69[1] = v32;
  sub_219BF7674();
  v81 = v111;
  sub_2186ECA28();
  v34 = v33;
  LOBYTE(v108) = 5;
  sub_2186EC6C8(&qword_280E913D8, sub_2186ECA28, v30);
  v69[2] = v34;
  sub_219BF7674();
  v79 = v110;
  LOBYTE(v108) = 6;
  sub_218CE8BEC();
  sub_219BF7674();
  v116 = v117;
  LOBYTE(v106) = 9;
  sub_219BF7674();
  v75 = v108;
  v74 = v109;
  LOBYTE(v104) = 10;
  sub_219BF7674();
  v73 = v106;
  v72 = v107;
  LOBYTE(v103) = 11;
  sub_219BF7674();
  v71 = v104;
  v70 = v105;
  LOBYTE(v103) = 7;
  sub_2186EC6C8(&qword_280E91838, sub_2186F64EC, MEMORY[0x277D32328]);
  v84 = v22;
  v82 = v25;
  sub_219BF7674();
  v35 = v88;
  sub_218CE8CA0(v28, v88, sub_218CE8B24);
  v36 = v89;
  v37 = *(v89 + 48);
  v38 = v37(v35, 1, v29);
  v39 = v29;
  v40 = v36;
  if (v38 == 1)
  {
    v41 = v100;
    v42 = v101;
    if (qword_280E91AB8 != -1)
    {
      swift_once();
    }

    v43 = __swift_project_value_buffer(v39, qword_280F61818);
    v44 = v91;
    (*(v40 + 16))(v91, v43, v39);
    v45 = v44;
    if (v37(v35, 1, v39) != 1)
    {
      sub_218CE8C40(v35, sub_218CE8B24);
    }
  }

  else
  {
    v45 = v91;
    (*(v36 + 32))(v91, v35, v39);
    v41 = v100;
    v42 = v101;
  }

  v46 = sub_219BEDB04();
  v47 = v93;
  (*(*(v46 - 8) + 56))(v93, 1, 1, v46);
  v48 = v92;
  sub_219BEEA04();
  sub_218CE8C40(v47, sub_218CE8A90);
  (*(v40 + 8))(v45, v39);
  (*(v40 + 32))(v42, v48, v39);
  v49 = v78;
  if (v78 == 3)
  {
    v49 = 0;
  }

  v42[v41[5]] = v49;
  if (v102)
  {
    v50 = v102;
  }

  else
  {
    v103 = 8;
    swift_allocObject();
    v50 = sub_219BEF534();
  }

  v51 = v80;
  v52 = v79;
  *&v42[v41[6]] = v50;
  v53 = v81;
  if (v51)
  {

    v54 = v51;
  }

  else
  {
    v103 = 4;
    swift_allocObject();

    v54 = sub_219BEF534();
  }

  v55 = v95;
  *&v42[v41[7]] = v54;
  if (v53)
  {

    v56 = v53;
  }

  else
  {
    LOBYTE(v103) = 1;
    swift_allocObject();

    v56 = sub_219BEF534();
  }

  *&v42[v41[8]] = v56;
  if (v52)
  {
  }

  else
  {
    v103 = 0;
    swift_allocObject();

    v52 = sub_219BEF534();
  }

  *&v42[v41[9]] = v52;
  v57 = v116;
  if (v116 == 4)
  {
    v57 = 0;
  }

  v42[v41[10]] = v57;
  v58 = v98;
  v59 = v87;
  sub_218CE8CA0(v98, v87, sub_218CE8AB0);
  v60 = *(v55 + 48);
  v61 = v99;
  if (v60(v59, 1, v99) == 1)
  {
    type metadata accessor for MagazineFeedServiceConfig(0);
    sub_2186EC6C8(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);
    v62 = v94;
    sub_219BEEC74();

    v63 = v58;
    v64 = v87;
    sub_218CE8C40(v63, sub_218CE8AB0);
    sub_218CE8C40(v97, sub_218CE8B24);
    (*(v83 + 8))(v82, v84);
    v65 = v60(v64, 1, v61);
    v66 = v62;
    v67 = v86;
    if (v65 != 1)
    {
      sub_218CE8C40(v64, sub_218CE8AB0);
    }
  }

  else
  {

    sub_218CE8C40(v58, sub_218CE8AB0);
    sub_218CE8C40(v97, sub_218CE8B24);
    (*(v83 + 8))(v82, v84);
    v66 = v94;
    (*(v55 + 32))(v94, v59, v61);
    v67 = v86;
  }

  v68 = v101;
  (*(v55 + 32))(&v101[*(v100 + 44)], v66, v61);
  sub_21997A884(v68, v96);
  return __swift_destroy_boxed_opaque_existential_1(v67);
}

uint64_t sub_21997A0E0(void *a1, __n128 a2)
{
  v4 = v2;
  sub_21997A8E8(0, &qword_280E8C1C0, sub_21997A950, &type metadata for FeaturedIssueArticleMagazineFeedGroupKnobs.CodingKeys, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21997A950();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2186E3B14(0);
  sub_2186EC6C8(&qword_280E919D0, sub_2186E3B14, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v3)
  {
    v11 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs(0);
    LOBYTE(v14) = *(v4 + v11[5]);
    v15 = 1;
    sub_218CE8E28();
    sub_219BF7834();
    v14 = *(v4 + v11[6]);
    v15 = 2;
    sub_2186F9548();
    sub_2186EC6C8(&qword_280E913C0, sub_2186F9548, MEMORY[0x277D32610]);
    sub_219BF7834();
    v14 = *(v4 + v11[7]);
    v15 = 3;
    sub_219BF7834();
    v14 = *(v4 + v11[8]);
    v15 = 4;
    sub_2186F95C4();
    sub_2186EC6C8(&qword_280E91400, sub_2186F95C4, MEMORY[0x277D32610]);
    sub_219BF7834();
    v14 = *(v4 + v11[9]);
    v15 = 5;
    sub_2186ECA28();
    sub_2186EC6C8(&qword_280E913E0, sub_2186ECA28, MEMORY[0x277D32610]);
    sub_219BF7834();
    LOBYTE(v14) = *(v4 + v11[10]);
    v15 = 6;
    sub_218CE8E7C();
    sub_219BF7834();
    LOBYTE(v14) = 7;
    sub_2186F64EC(0);
    sub_2186EC6C8(&unk_280E91840, sub_2186F64EC, MEMORY[0x277D32320]);
    sub_219BF7834();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_21997A554(uint64_t a1)
{
  v2 = sub_21997A830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21997A590(uint64_t a1)
{
  v2 = sub_21997A830();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21997A5CC(uint64_t a1)
{
  v2 = sub_21997A950();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21997A608(uint64_t a1)
{
  v2 = sub_21997A950();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21997A678(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MagazineFeedServiceConfig(0);
  sub_2186EC6C8(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs(0);
  if (*&aNone_18[8 * *(a1 + *(v4 + 20))] == *&aNone_18[8 * *(a2 + *(v4 + 20))])
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v5 = sub_219BF78F4();
    swift_bridgeObjectRelease_n();
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  sub_2186F9548();
  if ((sub_219BEF504() & 1) == 0)
  {
    return 0;
  }

  if ((sub_219BEF504() & 1) == 0)
  {
    return 0;
  }

  sub_2186F95C4();
  if ((sub_219BEF504() & 1) == 0)
  {
    return 0;
  }

  sub_2186ECA28();
  if ((sub_219BEF504() & 1) == 0 || (sub_21908B134(*(a1 + *(v4 + 40)), *(a2 + *(v4 + 40))) & 1) == 0)
  {
    return 0;
  }

  return sub_219BEEC64();
}

unint64_t sub_21997A830()
{
  result = qword_280E94F10;
  if (!qword_280E94F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E94F10);
  }

  return result;
}

uint64_t sub_21997A884(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21997A8E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_21997A950()
{
  result = qword_280E94F38[0];
  if (!qword_280E94F38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E94F38);
  }

  return result;
}

unint64_t sub_21997A9C8()
{
  result = qword_27CC21850;
  if (!qword_27CC21850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21850);
  }

  return result;
}

unint64_t sub_21997AA20()
{
  result = qword_27CC21858;
  if (!qword_27CC21858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21858);
  }

  return result;
}

unint64_t sub_21997AA78()
{
  result = qword_280E94F28;
  if (!qword_280E94F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E94F28);
  }

  return result;
}

unint64_t sub_21997AAD0()
{
  result = qword_280E94F30;
  if (!qword_280E94F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E94F30);
  }

  return result;
}

unint64_t sub_21997AB28()
{
  result = qword_280E94F18;
  if (!qword_280E94F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E94F18);
  }

  return result;
}

unint64_t sub_21997AB80()
{
  result = qword_280E94F20;
  if (!qword_280E94F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E94F20);
  }

  return result;
}

uint64_t SearchEndpointConfigManager.__allocating_init(appConfigManager:resourceService:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_219BEE324();
  swift_allocObject();
  *(v4 + 16) = sub_219BEE314();
  *(v4 + 24) = a1;
  sub_2186CB1F0(a2, v4 + 32);
  return v4;
}

uint64_t sub_21997AC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2187608D4;

  return SearchEndpointConfigManagerType.fetchConfiguration()(a1, a2, a3);
}

uint64_t SearchEndpointConfigManagerType.fetchConfiguration()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_21997AD18, 0, 0);
}

uint64_t sub_21997AD18()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_21997AE18;
  v4 = *(v0 + 16);

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000014, 0x8000000219D40F70, sub_21997B63C, v2, &type metadata for SearchEndpointConfigs);
}

uint64_t sub_21997AE18()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21997AF54, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_21997AF54()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_21997AFB8(uint64_t a1, uint64_t *a2)
{
  v20 = a1;
  sub_21997C2A0(0);
  v4 = v3;
  v5 = *(v3 - 8);
  v21 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186C61E4();
  sub_219BE3204();

  v8 = sub_219BE2E54();
  sub_2186E9518();
  sub_219BE2F84();

  v9 = sub_219BE2E54();
  v18 = sub_219BE2F94();

  v19 = *(v5 + 16);
  v19(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v17 = *(v5 + 32);
  v17(v11 + v10, v7, v4);
  v12 = sub_219BE2E54();
  v16 = sub_219BE2F74();

  v19(v7, v20, v4);
  v13 = swift_allocObject();
  v17(v13 + v10, v7, v4);
  v14 = sub_219BE2E54();
  sub_219BE2FD4();

  return result;
}

double sub_21997B2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a1;
  sub_21997C2A0(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v7);
  (*(a4 + 16))(a3, a4, v11);
  v20 = *(v9 + 16);
  v20(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  v19 = *(v9 + 32);
  v19(v13 + v12, &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v14 = sub_219BE2E54();
  v18 = sub_219BE2F74();

  v20(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v8);
  v15 = swift_allocObject();
  v19(v15 + v12, &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v16 = sub_219BE2E54();
  sub_219BE2FD4();

  return result;
}

uint64_t sub_21997B51C(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v4, __src, sizeof(v4));
  sub_21997C334(__dst, &v3);
  sub_21997C2A0(0);
  return sub_219BF5B64();
}

uint64_t sub_21997B598(void *a1)
{
  v1 = a1;
  sub_21997C2A0(0);
  return sub_219BF5B54();
}

uint64_t SearchEndpointConfigManager.init(appConfigManager:resourceService:)(uint64_t a1, __int128 *a2)
{
  sub_219BEE324();
  swift_allocObject();
  *(v2 + 16) = sub_219BEE314();
  *(v2 + 24) = a1;
  sub_2186CB1F0(a2, v2 + 32);
  return v2;
}

uint64_t SearchEndpointConfigManager.fetchConfiguration()()
{
  sub_2186C61E4();
  sub_219BE3204();

  v0 = sub_219BE2E54();
  sub_2186E9518();
  sub_219BE2F84();

  v1 = sub_219BE2E54();
  v2 = sub_219BE2F94();

  return v2;
}

uint64_t sub_21997B784(uint64_t a1)
{
  sub_21997C440(0);
  swift_allocObject();
  return sub_219BE30B4();
}

void sub_21997B800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + 24);
  v10 = swift_allocObject();
  v10[2] = sub_2189EB59C;
  v10[3] = v8;
  v10[4] = a5;
  v12[4] = sub_21997C498;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_218C1CBB4;
  v12[3] = &block_descriptor_191;
  v11 = _Block_copy(v12);

  [v9 fetchAppConfigurationIfNeededWithCompletion_];
  _Block_release(v11);
}

uint64_t sub_21997B928(id *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  if (([*a1 respondsToSelector_] & 1) != 0 && (v5 = objc_msgSend(v4, sel_searchEndpointConfigurationResourceID)) != 0)
  {
    v6 = v5;
    v7 = sub_219BF5414();
    v9 = v8;

    if (qword_280E8D828 != -1)
    {
      swift_once();
    }

    v10 = qword_280F61720;
    sub_2186F20D4(0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_219C09BA0;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = sub_2186FC3BC();
    *(v11 + 32) = v7;
    *(v11 + 40) = v9;

    v12 = sub_219BF6214();
    sub_219BE5314("Fetching search endpoint config resource %{public}@", 51, 2, &dword_2186C1000, v10, v12, v11);

    __swift_project_boxed_opaque_existential_1(a3 + 4, a3[7]);
    v13 = sub_219BF2974();

    return v13;
  }

  else
  {
    sub_21997C390();
    swift_allocError();
    *v15 = 0;
    return swift_willThrow();
  }
}

void *sub_21997BAE0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_219BDB954();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v22[-v11 - 8];
  v13 = [*a1 fileURL];
  if (v13)
  {
    v14 = v13;
    sub_219BDB8B4();

    (*(v6 + 32))(v12, v8, v5);
    v15 = sub_219BDB974();
    if (v2)
    {
      return (*(v6 + 8))(v12, v5);
    }

    else
    {
      v19 = v15;
      v20 = v16;
      sub_21997C3E4();
      sub_219BE1974();
      (*(v6 + 8))(v12, v5);
      sub_2186C6190(v19, v20);
      return memcpy(a2, v22, 0x180uLL);
    }
  }

  else
  {
    sub_21997C390();
    swift_allocError();
    *v18 = 1;
    return swift_willThrow();
  }
}

uint64_t SearchEndpointConfigManager.deinit()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  return v0;
}

uint64_t SearchEndpointConfigManager.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_21997BDB8(uint64_t a1)
{
  *(v2 + 16) = *v1;
  *(v2 + 24) = a1;
  return MEMORY[0x2822009F8](sub_21997BDDC, 0, 0);
}

uint64_t sub_21997BDDC()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  *(v1 + 16) = v0 + 2;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_21997BED4;
  v3 = v0[3];

  return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000014, 0x8000000219D40F70, sub_21997C294, v1, &type metadata for SearchEndpointConfigs);
}

uint64_t sub_21997BED4()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_219751410, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_21997C010(uint64_t a1)
{
  sub_2186C61E4();
  sub_219BE3204();

  v1 = sub_219BE2E54();
  sub_2186E9518();
  sub_219BE2F84();

  v2 = sub_219BE2E54();
  v3 = sub_219BE2F94();

  return v3;
}

uint64_t dispatch thunk of SearchEndpointConfigManagerType.fetchConfiguration()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2187608D4;

  return v9(a1, a2, a3);
}

void sub_21997C2A0(uint64_t a1)
{
  if (!qword_27CC21860)
  {
    sub_2186CFDE4(255, &qword_280E8B580, MEMORY[0x277D84948]);
    v1 = sub_219BF5B74();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC21860);
    }
  }
}

unint64_t sub_21997C390()
{
  result = qword_27CC21870;
  if (!qword_27CC21870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21870);
  }

  return result;
}

unint64_t sub_21997C3E4()
{
  result = qword_27CC21878;
  if (!qword_27CC21878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21878);
  }

  return result;
}

void sub_21997C440(uint64_t a1)
{
  if (!qword_280EE6960)
  {
    sub_2186C61E4();
    v1 = sub_219BE3114();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE6960);
    }
  }
}

double sub_21997C498()
{
  v1 = *(v0 + 16);
  v2 = [*(*(v0 + 32) + 24) appConfiguration];
  v1();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_21997C57C(void *a1)
{
  sub_21997C2A0(0);

  return sub_21997B598(a1);
}

unint64_t sub_21997C600()
{
  result = qword_27CC21880;
  if (!qword_27CC21880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21880);
  }

  return result;
}

uint64_t sub_21997C6B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21997CEC0(0, &qword_280E8CDD8, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for ShortcutsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21997CE08();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_21997CF24(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_21997CE5C(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21997C964(uint64_t a1)
{
  v2 = sub_21997CE08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21997C9A0(uint64_t a1)
{
  v2 = sub_21997CE08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21997CA1C(void *a1, __n128 a2)
{
  sub_21997CEC0(0, &qword_280E8C590, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21997CE08();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_21997CF24(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  sub_219BF7834();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21997CC7C(uint64_t a1)
{
  result = sub_21997CF24(&qword_280EC33D8, type metadata accessor for ShortcutsTodayFeedGroup, &unk_219CB9624);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21997CCD4(uint64_t a1)
{
  v2 = sub_21997CF24(&qword_280EC3408, type metadata accessor for ShortcutsTodayFeedGroup, &unk_219CB9508);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_21997CD5C(void *a1)
{
  a1[1] = sub_21997CF24(&qword_280EC3408, type metadata accessor for ShortcutsTodayFeedGroup, &unk_219CB9508);
  a1[2] = sub_21997CF24(&qword_280EC33E0, type metadata accessor for ShortcutsTodayFeedGroup, &unk_219CB95FC);
  result = sub_21997CF24(&qword_280EC33F0, type metadata accessor for ShortcutsTodayFeedGroup, &unk_219CB95D4);
  a1[3] = result;
  return result;
}

unint64_t sub_21997CE08()
{
  result = qword_280EC3420;
  if (!qword_280EC3420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC3420);
  }

  return result;
}

uint64_t sub_21997CE5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutsTodayFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21997CEC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21997CE08();
    v7 = a3(a1, &type metadata for ShortcutsTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21997CF24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21997CF80()
{
  result = qword_27CC21890;
  if (!qword_27CC21890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC21890);
  }

  return result;
}

unint64_t sub_21997CFD8()
{
  result = qword_280EC3410;
  if (!qword_280EC3410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC3410);
  }

  return result;
}

unint64_t sub_21997D030()
{
  result = qword_280EC3418;
  if (!qword_280EC3418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC3418);
  }

  return result;
}

uint64_t type metadata accessor for ChannelIssuesLayoutModel(uint64_t a1)
{
  result = qword_27CC21898;
  if (!qword_27CC21898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_21997D0D0()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21997D790(v0, v7);
  (*(v2 + 32))(v4, v7, v1);
  sub_219BEF954();
  v9 = v8;
  (*(v2 + 8))(v4, v1);
  return v9;
}

uint64_t sub_21997D234@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21997D790(v2, v5);
  v6 = sub_219BEF974();
  a2[3] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(v6 - 8) + 32))(boxed_opaque_existential_1, v5, v6);
}

uint64_t sub_21997D320(uint64_t a1)
{
  v2 = sub_21997D7F4(&qword_27CC218A8, &unk_219CB97B4);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_21997D3C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21997D790(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t sub_21997D510()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21997D790(v0, v7);
  (*(v2 + 32))(v4, v7, v1);
  sub_219BEF8F4();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_21997D64C(uint64_t a1)
{
  v2 = sub_219BEF974();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21997D790(v1, v8);
  (*(v3 + 32))(v5, v8, v2);
  v9 = sub_219BEF944();
  (*(v3 + 8))(v5, v2);
  return v9;
}

uint64_t sub_21997D790(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelIssuesLayoutModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21997D7F4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ChannelIssuesLayoutModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for MissedStoriesTodayFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EA5F70;
  if (!qword_280EA5F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21997D8AC(uint64_t a1)
{
  sub_2189AE994(319);
  if (v1 <= 0x3F)
  {
    sub_2189AE9B4(319);
    if (v2 <= 0x3F)
    {
      sub_2186EE020();
      if (v3 <= 0x3F)
      {
        sub_219791D24(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21997D980@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  sub_2189AE9B4(0);
  v100 = v3;
  v95 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v93 = &v65[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218CE8A90(0);
  MEMORY[0x28223BE20](v5 - 8);
  v92 = &v65[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2189AE994(0);
  v89 = v7;
  v88 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v90 = &v65[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v91 = &v65[-v10];
  v94 = type metadata accessor for MissedStoriesTodayFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v94);
  v12 = &v65[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219791D24(0);
  MEMORY[0x28223BE20](v13 - 8);
  v99 = &v65[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2189AF700(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v65[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v98 = &v65[-v19];
  sub_2189AF720(0);
  MEMORY[0x28223BE20](v20 - 8);
  v97 = &v65[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v87 = &v65[-v23];
  sub_21997EE84(0, &qword_280E8CA30, MEMORY[0x277D844C8]);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v28 = &v65[-v27];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21997EE30();
  v29 = v101;
  sub_219BF7B34();
  if (v29)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v83 = v26;
  v101 = v17;
  v85 = 0;
  v69 = v12;
  v86 = a1;
  LOBYTE(v110) = 0;
  sub_2186DFF80(&qword_280E91A28, sub_2189AE994, MEMORY[0x277D321B0]);
  v31 = v87;
  v32 = v89;
  sub_219BF7674();
  LOBYTE(v110) = 1;
  sub_2186DFF80(&qword_280E91868, sub_2189AE9B4, MEMORY[0x277D32328]);
  sub_219BF7674();
  LOBYTE(v108) = 2;
  sub_219BF7674();
  v81 = v110;
  v80 = v111;
  LOBYTE(v106) = 3;
  sub_219BF7674();
  v79 = v108;
  v78 = v109;
  LOBYTE(v104) = 4;
  sub_219BF7674();
  v77 = v106;
  v76 = v107;
  LOBYTE(v102) = 5;
  sub_219BF7674();
  v75 = v104;
  v74 = v105;
  LOBYTE(v102) = 6;
  sub_219BF7674();
  v73 = v117;
  v116 = 7;
  sub_219BF7674();
  v72 = v102;
  v71 = v103;
  v115 = 8;
  sub_219BF7674();
  v70 = v116;
  type metadata accessor for ForYouTodayFeedGroupClusteringKnobs(0);
  v115 = 9;
  sub_2186DFF80(&qword_280E9D7D0, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs, &unk_219C75F84);
  sub_219BF7674();
  v114 = 10;
  sub_219BF7674();
  v68 = v115;
  v113 = 11;
  sub_219BF7674();
  v67 = v114;
  v112 = 12;
  v84 = v25;
  sub_219BF7674();
  v66 = v113;
  v33 = v31;
  v34 = v97;
  sub_21997F408(v31, v97, sub_2189AF720);
  v35 = v88;
  v36 = *(v88 + 48);
  v37 = v36(v34, 1, v32);
  v38 = v32;
  v82 = v28;
  if (v37 == 1)
  {
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_2186DFF80(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v39 = v97;
    v40 = v90;
    sub_219BEE974();
    v41 = v36(v39, 1, v32);
    v42 = v69;
    if (v41 != 1)
    {
      sub_21997EEE8(v39, sub_2189AF720);
    }
  }

  else
  {
    v40 = v90;
    (*(v35 + 32))(v90, v34, v32);
    v42 = v69;
  }

  v43 = *MEMORY[0x277D31D68];
  v44 = sub_219BEDB04();
  v45 = *(v44 - 8);
  v46 = v92;
  (*(v45 + 104))(v92, v43, v44);
  (*(v45 + 56))(v46, 0, 1, v44);
  v47 = v91;
  sub_219BEEA04();
  sub_21997EEE8(v46, sub_218CE8A90);
  (*(v35 + 8))(v40, v38);
  (*(v35 + 32))(v42, v47, v38);
  v48 = v98;
  v49 = v101;
  sub_21997F408(v98, v101, sub_2189AF700);
  v50 = v95;
  v51 = *(v95 + 48);
  v52 = v100;
  if (v51(v49, 1, v100) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_2186DFF80(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v53 = v93;
    sub_219BEEC74();
    sub_21997EEE8(v48, sub_2189AF700);
    sub_21997EEE8(v33, sub_2189AF720);
    v54 = v101;
    (*(v83 + 8))(v82, v84);
    v55 = v51(v54, 1, v52);
    v56 = v86;
    v57 = v96;
    if (v55 != 1)
    {
      sub_21997EEE8(v54, sub_2189AF700);
    }
  }

  else
  {
    sub_21997EEE8(v48, sub_2189AF700);
    sub_21997EEE8(v33, sub_2189AF720);
    (*(v83 + 8))(v82, v84);
    v53 = v93;
    (*(v50 + 32))(v93, v49, v52);
    v56 = v86;
    v57 = v96;
  }

  v58 = v94;
  (*(v50 + 32))(v42 + *(v94 + 20), v53, v52);
  v59 = v81;
  if (v81 <= 1)
  {
    v59 = 1;
  }

  if (v80)
  {
    v59 = 1;
  }

  *(v42 + v58[6]) = v59;
  v60 = 35;
  if (!v78)
  {
    v60 = v79;
  }

  *(v42 + v58[7]) = v60;
  v61 = 1000;
  if (!v76)
  {
    v61 = v77;
  }

  *(v42 + v58[8]) = v61;
  v62 = 6000;
  if (!v74)
  {
    v62 = v75;
  }

  *(v42 + v58[9]) = v62;
  *(v42 + v58[10]) = v73 & 1;
  v63 = 0x4000000000000000;
  if (!v71)
  {
    v63 = v72;
  }

  v64 = v42 + v58[11];
  *v64 = v63;
  *(v64 + 8) = 0;
  *(v42 + v58[12]) = (v70 == 2) | v70 & 1;
  sub_21997F470(v99, v42 + v58[13], sub_219791D24);
  *(v42 + v58[14]) = v68 & 1;
  *(v42 + v58[15]) = v67 & 1;
  *(v42 + v58[16]) = v66 & 1;
  sub_21997F470(v42, v57, type metadata accessor for MissedStoriesTodayFeedGroupKnobs);
  return __swift_destroy_boxed_opaque_existential_1(v56);
}

unint64_t sub_21997E764(char a1)
{
  result = 0x73656C7572;
  switch(a1)
  {
    case 1:
      result = 0x6C6F6F706572;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x736465654678616DLL;
      break;
    case 4:
      result = 0x736D65744978616DLL;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD00000000000001FLL;
      break;
    case 7:
      result = 0x656D695474736166;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0x6972657473756C63;
      break;
    case 10:
      result = 0xD00000000000001ELL;
      break;
    case 11:
      result = 0xD000000000000019;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21997E90C(void *a1, __n128 a2)
{
  sub_21997EE84(0, &qword_280E8C338, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21997EE30();
  sub_219BF7B44();
  v10[15] = 0;
  sub_2189AE994(0);
  sub_2186DFF80(&qword_280E91A30, sub_2189AE994, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for MissedStoriesTodayFeedGroupKnobs(0);
    v10[14] = 1;
    sub_2189AE9B4(0);
    sub_2186DFF80(&unk_280E91870, sub_2189AE9B4, MEMORY[0x277D32320]);
    sub_219BF7834();
    v10[13] = 2;
    sub_219BF7824();
    v10[12] = 3;
    sub_219BF7824();
    v10[11] = 4;
    sub_219BF7824();
    v10[10] = 5;
    sub_219BF7824();
    v10[9] = 6;
    sub_219BF7804();
    v10[8] = 7;
    sub_219BF77B4();
    v10[7] = 8;
    sub_219BF7804();
    v10[6] = 9;
    type metadata accessor for ForYouTodayFeedGroupClusteringKnobs(0);
    sub_2186DFF80(&qword_280E9D7D8, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs, &unk_219C75F5C);
    sub_219BF77E4();
    v10[5] = 10;
    sub_219BF7804();
    v10[4] = 11;
    sub_219BF7804();
    v10[3] = 12;
    sub_219BF7804();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21997ED5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21997F5F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21997ED84(uint64_t a1)
{
  v2 = sub_21997EE30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21997EDC0(uint64_t a1)
{
  v2 = sub_21997EE30();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21997EE30()
{
  result = qword_280EA5FA0;
  if (!qword_280EA5FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA5FA0);
  }

  return result;
}

void sub_21997EE84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21997EE30();
    v7 = a3(a1, &type metadata for MissedStoriesTodayFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21997EEE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21997EF48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouTodayFeedGroupClusteringKnobs(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219791D24(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219794048(0);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2186DFF80(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
  if (sub_219BEE9F4())
  {
    v28 = v5;
    v15 = type metadata accessor for MissedStoriesTodayFeedGroupKnobs(0);
    if ((sub_219BEEC64() & 1) != 0 && *(a1 + v15[6]) == *(a2 + v15[6]) && *(a1 + v15[7]) == *(a2 + v15[7]) && *(a1 + v15[8]) == *(a2 + v15[8]) && *(a1 + v15[9]) == *(a2 + v15[9]) && *(a1 + v15[10]) == *(a2 + v15[10]))
    {
      v18 = v15[11];
      v19 = (a1 + v18);
      v20 = *(a1 + v18 + 8);
      v21 = (a2 + v18);
      v16 = *(a2 + v18 + 8);
      if (v20)
      {
        if (!v16)
        {
          return v16 & 1;
        }
      }

      else
      {
        if (*v19 != *v21)
        {
          LOBYTE(v16) = 1;
        }

        if (v16)
        {
          goto LABEL_8;
        }
      }

      if (*(a1 + v15[12]) == *(a2 + v15[12]))
      {
        v22 = v15[13];
        v23 = *(v12 + 48);
        sub_21997F408(a1 + v22, v14, sub_219791D24);
        sub_21997F408(a2 + v22, &v14[v23], sub_219791D24);
        v24 = *(v28 + 48);
        if (v24(v14, 1, v4) == 1)
        {
          if (v24(&v14[v23], 1, v4) == 1)
          {
            sub_21997EEE8(v14, sub_219791D24);
LABEL_20:
            if (*(a1 + v15[14]) == *(a2 + v15[14]) && *(a1 + v15[15]) == *(a2 + v15[15]))
            {
              LOBYTE(v16) = *(a1 + v15[16]) ^ *(a2 + v15[16]) ^ 1;
              return v16 & 1;
            }

            goto LABEL_8;
          }

          goto LABEL_25;
        }

        sub_21997F408(v14, v10, sub_219791D24);
        if (v24(&v14[v23], 1, v4) == 1)
        {
          sub_21997EEE8(v10, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
LABEL_25:
          v25 = sub_219794048;
LABEL_26:
          sub_21997EEE8(v14, v25);
          goto LABEL_8;
        }

        sub_21997F470(&v14[v23], v7, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
        if ((MEMORY[0x21CEC6550](v10, v7) & 1) == 0)
        {
          sub_21997EEE8(v7, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
          sub_21997EEE8(v10, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
          v25 = sub_219791D24;
          goto LABEL_26;
        }

        v26 = MEMORY[0x21CEC6CC0](&v10[*(v4 + 20)], &v7[*(v4 + 20)]);
        sub_21997EEE8(v7, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
        sub_21997EEE8(v10, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
        sub_21997EEE8(v14, sub_219791D24);
        if (v26)
        {
          goto LABEL_20;
        }
      }
    }
  }

LABEL_8:
  LOBYTE(v16) = 0;
  return v16 & 1;
}

uint64_t sub_21997F408(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21997F470(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21997F4EC()
{
  result = qword_27CC218B0;
  if (!qword_27CC218B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC218B0);
  }

  return result;
}

unint64_t sub_21997F544()
{
  result = qword_280EA5F90;
  if (!qword_280EA5F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA5F90);
  }

  return result;
}

unint64_t sub_21997F59C()
{
  result = qword_280EA5F98;
  if (!qword_280EA5F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA5F98);
  }

  return result;
}

uint64_t sub_21997F5F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736465654678616DLL && a2 == 0xEF68637465466F54 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736D65744978616DLL && a2 == 0xEF68637465466F54 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219D41000 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000219CEBCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656D695474736166 && a2 == 0xEB0000000074756FLL || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CF5000 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6972657473756C63 && a2 == 0xEF73626F6E4B676ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000219D41020 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000219D41040 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219D41060 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_21997FA04@<X0>(double *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC7NewsUI232FeedPuzzleProgressCommandHandler_puzzleHistory);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI232FeedPuzzleProgressCommandHandler_puzzleHistory), *(v1 + OBJC_IVAR____TtC7NewsUI232FeedPuzzleProgressCommandHandler_puzzleHistory + 24));
  v4 = [sub_219BF0AA4() identifier];
  swift_unknownObjectRelease();
  sub_219BF5414();

  v5 = sub_219BF3424();

  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    v6 = [sub_219BF0AA4() identifier];
    swift_unknownObjectRelease();
    sub_219BF5414();

    v7 = sub_219BF3414();

    if (v7)
    {
      v8 = [v5 playDuration];

      *a1 = v8;
      v9 = MEMORY[0x277D32090];
    }

    else
    {
      v10 = [v5 progressLevel];

      *a1 = v10;
      v9 = MEMORY[0x277D32088];
    }
  }

  else
  {
    v9 = MEMORY[0x277D32078];
  }

  v11 = *v9;
  v12 = sub_219BEE624();
  v13 = *(*(v12 - 8) + 104);

  return v13(a1, v11, v12);
}

uint64_t sub_21997FC94()
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

double sub_21997FDDC()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_219BEAA04();
    sub_219BF0AC4();
    sub_219BE6FD4();

    swift_unknownObjectRelease();
  }

  return result;
}

id sub_21997FEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v244 = a3;
  v245 = a2;
  v226 = type metadata accessor for CuratedMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v226);
  v232 = &v213 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NewspaperMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v7 - 8);
  v231 = &v213 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BestOfBundleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v9 - 8);
  v230 = &v213 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TrendingMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v11 - 8);
  v229 = &v213 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = type metadata accessor for TopicMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v223);
  v227 = &v213 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RecommendedIssuesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v14 - 8);
  v225 = &v213 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PaywallMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v16 - 8);
  v237 = (&v213 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v220 = type metadata accessor for NewIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v220);
  v224 = &v213 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MyMagazinesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v19 - 8);
  v228 = &v213 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for InlineCategoriesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v21 - 8);
  v217 = (&v213 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v215 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v215);
  v222 = &v213 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for FeaturedIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v24 - 8);
  v221 = &v213 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_219BF1904();
  v27 = *(v26 - 8);
  v242 = v26;
  v243 = v27;
  MEMORY[0x28223BE20](v26);
  v241 = &v213 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = type metadata accessor for FeaturedArticleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v214);
  v218 = &v213 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BB8698(0);
  MEMORY[0x28223BE20](v30 - 8);
  v239 = &v213 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v238);
  v216 = (&v213 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33);
  v236 = (&v213 - v34);
  v35 = type metadata accessor for MagazineFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v35);
  v219 = &v213 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v246 = (&v213 - v38);
  v39 = type metadata accessor for CategoriesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v39 - 8);
  v235 = (&v213 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = type metadata accessor for MagazineFeedGroup(0);
  MEMORY[0x28223BE20](v41);
  v43 = &v213 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_219BEF8A4();
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = &v213 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = a1;
  v48 = sub_218CDC10C();
  if (!v48)
  {
    goto LABEL_6;
  }

  v233 = v41;
  v234 = v35;
  v240 = a4;
  v49 = [v48 identifier];
  swift_unknownObjectRelease();
  v50 = sub_219BF5414();
  v52 = v51;

  v53 = v247[11];
  result = [v53 mutedTagIDs];
  if (result)
  {
    v55 = result;
    v56 = sub_219BF5D44();

    v57 = sub_2188537B8(v50, v52, v56);

    sub_218CDF994(v47);
    v58 = sub_219BEF894();
    (*(v45 + 8))(v47, v44);
    result = [v53 ignoredTagIDs];
    if (result)
    {
      v59 = result;
      v60 = sub_219BF5D44();

      v61 = sub_2188537B8(v50, v52, v60);

      v62 = 1;
      a4 = v240;
      if (v57 & ~v58 & 1) != 0 || (v61)
      {
LABEL_25:
        sub_218951DB0(0);
        return (*(*(v203 - 8) + 56))(a4, v62, 1, v203);
      }

LABEL_6:
      sub_219984DF4(v248, v43, type metadata accessor for MagazineFeedGroup);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v145 = v43;
          v77 = v218;
          sub_219984CAC(v145, v218, type metadata accessor for FeaturedArticleMagazineFeedGroup);
          v146 = v247[5];
          v147 = v241;
          sub_219BED874();
          v148 = sub_219BED784();
          v150 = v149;
          v151 = sub_219BF18F4();
          MEMORY[0x28223BE20](v151);
          v152 = v244;
          *(&v213 - 8) = v245;
          *(&v213 - 7) = v146;
          *(&v213 - 6) = 0;
          *(&v213 - 5) = 0;
          *(&v213 - 4) = v152;
          *(&v213 - 3) = v148;
          *(&v213 - 2) = v150;
          sub_218DDFA08(sub_219985028, (&v213 - 10), v151);
          v154 = v153;

          (*(v243 + 8))(v147, v242);
          v155 = v246;
          sub_219984DF4(v77, v246, type metadata accessor for FeaturedArticleMagazineFeedGroup);
          swift_storeEnumTagMultiPayload();
          sub_2199845E4(v155, v154, a4);

          sub_219984BFC(v155, type metadata accessor for MagazineFeedSectionDescriptor);
          v88 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
          goto LABEL_23;
        case 2u:
          v112 = v43;
          v77 = v221;
          sub_219984CAC(v112, v221, type metadata accessor for FeaturedIssueMagazineFeedGroup);
          v113 = v247[5];
          v114 = v241;
          sub_219BED874();
          v115 = sub_219BED784();
          v117 = v116;
          v118 = sub_219BF18F4();
          MEMORY[0x28223BE20](v118);
          v119 = v244;
          *(&v213 - 8) = v245;
          *(&v213 - 7) = v113;
          *(&v213 - 6) = 0;
          *(&v213 - 5) = 0;
          *(&v213 - 4) = v119;
          *(&v213 - 3) = v115;
          *(&v213 - 2) = v117;
          sub_218DDFA08(sub_219985028, (&v213 - 10), v118);
          v121 = v120;

          (*(v243 + 8))(v114, v242);
          v122 = v246;
          sub_219984DF4(v77, v246, type metadata accessor for FeaturedIssueMagazineFeedGroup);
          swift_storeEnumTagMultiPayload();
          sub_2199845E4(v122, v121, a4);

          sub_219984BFC(v122, type metadata accessor for MagazineFeedSectionDescriptor);
          v88 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
          goto LABEL_23;
        case 3u:
          v123 = v43;
          v77 = v222;
          sub_219984CAC(v123, v222, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
          v124 = v247[5];
          v125 = v241;
          sub_219BED874();
          v126 = sub_219BED784();
          v128 = v127;
          v129 = sub_219BF18F4();
          MEMORY[0x28223BE20](v129);
          v130 = v244;
          *(&v213 - 8) = v245;
          *(&v213 - 7) = v124;
          *(&v213 - 6) = 0;
          *(&v213 - 5) = 0;
          *(&v213 - 4) = v130;
          *(&v213 - 3) = v126;
          *(&v213 - 2) = v128;
          sub_218DDFA08(sub_219985028, (&v213 - 10), v129);
          v132 = v131;

          (*(v243 + 8))(v125, v242);
          v133 = v246;
          sub_219984DF4(v77, v246, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
          swift_storeEnumTagMultiPayload();
          sub_2199845E4(v133, v132, a4);

          sub_219984BFC(v133, type metadata accessor for MagazineFeedSectionDescriptor);
          v88 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
          goto LABEL_23;
        case 4u:
          v89 = v217;
          sub_219984CAC(v43, v217, type metadata accessor for InlineCategoriesMagazineFeedGroup);
          sub_219981E38(v89, a4);
          v74 = type metadata accessor for InlineCategoriesMagazineFeedGroup;
          v75 = v89;
          break;
        case 5u:
          v156 = v228;
          sub_219984CAC(v43, v228, type metadata accessor for MyMagazinesMagazineFeedGroup);
          v157 = v247;
          v158 = v247[9];
          v159 = v247[10];
          __swift_project_boxed_opaque_existential_1(v247 + 6, v158);
          sub_2195ED0E0(v157, v158, v159);
          v161 = v160;
          sub_2186EBC7C(0);
          v163 = *(v162 + 48);
          v164 = v219;
          sub_219984DF4(v156, v219, type metadata accessor for MyMagazinesMagazineFeedGroup);
          *(v164 + v163) = v161;
          swift_storeEnumTagMultiPayload();
          sub_219984F7C(0, &unk_280E8BFA8, sub_218953870, MEMORY[0x277D84560]);
          sub_218953870(0);
          v166 = v165;
          v167 = swift_allocObject();
          *(v167 + 16) = xmmword_219C09BA0;
          result = sub_218C87910(v245);
          if (!result)
          {
            goto LABEL_31;
          }

          *v216 = result;
          swift_storeEnumTagMultiPayload();
          sub_219984FE0(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
          sub_219BE5FB4();
          v168 = sub_219984FE0(&qword_280EE5BB8, sub_218953870, MEMORY[0x277D6D408]);
          v169 = sub_219984FE0(&unk_280EE5BC0, sub_218953870, MEMORY[0x277D6D3F8]);
          MEMORY[0x21CEB9150](v167, v166, v168, v169);
          sub_219984FE0(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
          sub_219BE6924();
          v74 = type metadata accessor for MyMagazinesMagazineFeedGroup;
          v75 = v156;
          break;
        case 6u:
          v181 = v43;
          v77 = v224;
          sub_219984CAC(v181, v224, type metadata accessor for NewIssueMagazineFeedGroup);
          v182 = v247[5];
          v183 = v241;
          sub_219BED874();
          v184 = sub_219BED784();
          v186 = v185;
          v187 = sub_219BF18F4();
          MEMORY[0x28223BE20](v187);
          v188 = v244;
          *(&v213 - 8) = v245;
          *(&v213 - 7) = v182;
          *(&v213 - 6) = 0;
          *(&v213 - 5) = 0;
          *(&v213 - 4) = v188;
          *(&v213 - 3) = v184;
          *(&v213 - 2) = v186;
          sub_218DDFA08(sub_219985028, (&v213 - 10), v187);
          v190 = v189;

          (*(v243 + 8))(v183, v242);
          v191 = v246;
          sub_219984DF4(v77, v246, type metadata accessor for NewIssueMagazineFeedGroup);
          swift_storeEnumTagMultiPayload();
          sub_2199845E4(v191, v190, a4);

          sub_219984BFC(v191, type metadata accessor for MagazineFeedSectionDescriptor);
          v88 = type metadata accessor for NewIssueMagazineFeedGroup;
          goto LABEL_23;
        case 7u:
          v134 = v43;
          v135 = v237;
          sub_219984CAC(v134, v237, type metadata accessor for PaywallMagazineFeedGroup);
          result = sub_218C87910(v245);
          if (!result)
          {
            goto LABEL_30;
          }

          v136 = result;
          sub_219984D14(0, &unk_280E8F990, type metadata accessor for PaywallMagazineFeedGroup, "identifier  ");
          v138 = *(v137 + 48);
          v139 = v135[1];
          v140 = v246;
          *v246 = *v135;
          v140[1] = v139;
          sub_219984DF4(v135, v140 + v138, type metadata accessor for PaywallMagazineFeedGroup);
          swift_storeEnumTagMultiPayload();
          sub_219984F7C(0, &unk_280E8BFA8, sub_218953870, MEMORY[0x277D84560]);
          sub_218953870(0);
          v248 = v141;
          v142 = swift_allocObject();
          *(v142 + 16) = xmmword_219C09BA0;
          *v236 = v136;
          swift_storeEnumTagMultiPayload();
          sub_219984FE0(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);

          sub_219BE5FB4();
          v143 = sub_219984FE0(&qword_280EE5BB8, sub_218953870, MEMORY[0x277D6D408]);
          v144 = sub_219984FE0(&unk_280EE5BC0, sub_218953870, MEMORY[0x277D6D3F8]);
          MEMORY[0x21CEB9150](v142, v248, v143, v144);
          sub_219984FE0(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
          sub_219BE6924();

          v74 = type metadata accessor for PaywallMagazineFeedGroup;
          v75 = v237;
          break;
        case 8u:
          v204 = v225;
          v205 = sub_219984CAC(v43, v225, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
          v206 = *(v204 + 64);
          MEMORY[0x28223BE20](v205);
          *(&v213 - 6) = v247;
          *(&v213 - 5) = v207;
          v208 = v244;
          *(&v213 - 4) = 0;
          *(&v213 - 3) = v208;
          *(&v213 - 2) = v204;
          v209 = v207;
          sub_2189465A0(sub_219984C5C, (&v213 - 8), v206);
          v211 = v210;
          v212 = v246;
          sub_219984DF4(v204, v246, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
          swift_storeEnumTagMultiPayload();
          sub_2199845E4(v212, v211, a4);

          sub_219984BFC(v212, type metadata accessor for MagazineFeedSectionDescriptor);
          v74 = type metadata accessor for RecommendedIssuesMagazineFeedGroup;
          v75 = v204;
          break;
        case 9u:
          v101 = v43;
          v77 = v227;
          sub_219984CAC(v101, v227, type metadata accessor for TopicMagazineFeedGroup);
          v102 = v247[5];
          v103 = v241;
          sub_219BED874();
          v104 = sub_219BED784();
          v106 = v105;
          v107 = sub_219BF18F4();
          MEMORY[0x28223BE20](v107);
          v108 = v244;
          *(&v213 - 8) = v245;
          *(&v213 - 7) = v102;
          *(&v213 - 6) = 0;
          *(&v213 - 5) = 0;
          *(&v213 - 4) = v108;
          *(&v213 - 3) = v104;
          *(&v213 - 2) = v106;
          sub_218DDFA08(sub_219985028, (&v213 - 10), v107);
          v110 = v109;

          (*(v243 + 8))(v103, v242);
          v111 = v246;
          sub_219984DF4(v77, v246, type metadata accessor for TopicMagazineFeedGroup);
          swift_storeEnumTagMultiPayload();
          sub_2199845E4(v111, v110, a4);

          sub_219984BFC(v111, type metadata accessor for MagazineFeedSectionDescriptor);
          v88 = type metadata accessor for TopicMagazineFeedGroup;
          goto LABEL_23;
        case 0xAu:
          v192 = v43;
          v77 = v229;
          sub_219984CAC(v192, v229, type metadata accessor for TrendingMagazineFeedGroup);
          v193 = v247[5];
          v194 = v241;
          sub_219BED874();
          v195 = sub_219BED784();
          v197 = v196;
          v198 = sub_219BF18F4();
          MEMORY[0x28223BE20](v198);
          v199 = v244;
          *(&v213 - 8) = v245;
          *(&v213 - 7) = v193;
          *(&v213 - 6) = 0;
          *(&v213 - 5) = 0;
          *(&v213 - 4) = v199;
          *(&v213 - 3) = v195;
          *(&v213 - 2) = v197;
          sub_218DDFA08(sub_219985028, (&v213 - 10), v198);
          v201 = v200;

          (*(v243 + 8))(v194, v242);
          v202 = v246;
          sub_219984DF4(v77, v246, type metadata accessor for TrendingMagazineFeedGroup);
          swift_storeEnumTagMultiPayload();
          sub_2199845E4(v202, v201, a4);

          sub_219984BFC(v202, type metadata accessor for MagazineFeedSectionDescriptor);
          v88 = type metadata accessor for TrendingMagazineFeedGroup;
          goto LABEL_23;
        case 0xBu:
          v76 = v43;
          v77 = v230;
          sub_219984CAC(v76, v230, type metadata accessor for BestOfBundleMagazineFeedGroup);
          v78 = v247[5];
          v79 = v241;
          sub_219BED874();
          v80 = sub_219BED784();
          v82 = v81;
          v83 = sub_219BF18F4();
          MEMORY[0x28223BE20](v83);
          v84 = v244;
          *(&v213 - 8) = v245;
          *(&v213 - 7) = v78;
          *(&v213 - 6) = 0;
          *(&v213 - 5) = 0;
          *(&v213 - 4) = v84;
          *(&v213 - 3) = v80;
          *(&v213 - 2) = v82;
          sub_218DDFA08(sub_219985028, (&v213 - 10), v83);
          v86 = v85;

          (*(v243 + 8))(v79, v242);
          v87 = v246;
          sub_219984DF4(v77, v246, type metadata accessor for BestOfBundleMagazineFeedGroup);
          swift_storeEnumTagMultiPayload();
          sub_2199845E4(v87, v86, a4);

          sub_219984BFC(v87, type metadata accessor for MagazineFeedSectionDescriptor);
          v88 = type metadata accessor for BestOfBundleMagazineFeedGroup;
          goto LABEL_23;
        case 0xCu:
          v90 = v43;
          v77 = v231;
          sub_219984CAC(v90, v231, type metadata accessor for NewspaperMagazineFeedGroup);
          v91 = v247[5];
          v92 = v241;
          sub_219BED874();
          v93 = sub_219BED784();
          v95 = v94;
          v96 = sub_219BF18F4();
          MEMORY[0x28223BE20](v96);
          v97 = v244;
          *(&v213 - 8) = v245;
          *(&v213 - 7) = v91;
          *(&v213 - 6) = 0;
          *(&v213 - 5) = 0;
          *(&v213 - 4) = v97;
          *(&v213 - 3) = v93;
          *(&v213 - 2) = v95;
          sub_218DDFA08(sub_219985028, (&v213 - 10), v96);
          v99 = v98;

          (*(v243 + 8))(v92, v242);
          v100 = v246;
          sub_219984DF4(v77, v246, type metadata accessor for NewspaperMagazineFeedGroup);
          swift_storeEnumTagMultiPayload();
          sub_2199845E4(v100, v99, a4);

          sub_219984BFC(v100, type metadata accessor for MagazineFeedSectionDescriptor);
          v88 = type metadata accessor for NewspaperMagazineFeedGroup;
          goto LABEL_23;
        case 0xDu:
          v170 = v43;
          v77 = v232;
          sub_219984CAC(v170, v232, type metadata accessor for CuratedMagazineFeedGroup);
          v171 = v247[5];
          v172 = v241;
          sub_219BED874();
          v173 = sub_219BED784();
          v175 = v174;
          v176 = sub_219BF18F4();
          MEMORY[0x28223BE20](v176);
          v177 = v244;
          *(&v213 - 8) = v245;
          *(&v213 - 7) = v171;
          *(&v213 - 6) = 0;
          *(&v213 - 5) = 0;
          *(&v213 - 4) = v177;
          *(&v213 - 3) = v173;
          *(&v213 - 2) = v175;
          sub_218DDFA08(sub_219984BE4, (&v213 - 10), v176);
          v179 = v178;

          (*(v243 + 8))(v172, v242);
          v180 = v246;
          sub_219984DF4(v77, v246, type metadata accessor for CuratedMagazineFeedGroup);
          swift_storeEnumTagMultiPayload();
          sub_2199845E4(v180, v179, a4);

          sub_219984BFC(v180, type metadata accessor for MagazineFeedSectionDescriptor);
          v88 = type metadata accessor for CuratedMagazineFeedGroup;
LABEL_23:
          v74 = v88;
          v75 = v77;
          break;
        default:
          v63 = v43;
          v64 = v235;
          sub_219984CAC(v63, v235, type metadata accessor for CategoriesMagazineFeedGroup);
          result = sub_218C87910(v245);
          if (!result)
          {
            goto LABEL_29;
          }

          v65 = result;
          sub_219984D14(0, &unk_280E8F980, type metadata accessor for CategoriesMagazineFeedGroup, "identifier  ");
          v67 = *(v66 + 48);
          v68 = v64[1];
          v69 = v246;
          *v246 = *v64;
          v69[1] = v68;
          sub_219984DF4(v64, v69 + v67, type metadata accessor for CategoriesMagazineFeedGroup);
          swift_storeEnumTagMultiPayload();
          sub_219984F7C(0, &unk_280E8BFA8, sub_218953870, MEMORY[0x277D84560]);
          sub_218953870(0);
          v248 = v70;
          v71 = swift_allocObject();
          *(v71 + 16) = xmmword_219C09BA0;
          *v236 = v65;
          swift_storeEnumTagMultiPayload();
          sub_219984FE0(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);

          sub_219BE5FB4();
          v72 = sub_219984FE0(&qword_280EE5BB8, sub_218953870, MEMORY[0x277D6D408]);
          v73 = sub_219984FE0(&unk_280EE5BC0, sub_218953870, MEMORY[0x277D6D3F8]);
          MEMORY[0x21CEB9150](v71, v248, v72, v73);
          sub_219984FE0(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
          sub_219BE6924();

          v74 = type metadata accessor for CategoriesMagazineFeedGroup;
          v75 = v235;
          break;
      }

      sub_219984BFC(v75, v74);
      v62 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}