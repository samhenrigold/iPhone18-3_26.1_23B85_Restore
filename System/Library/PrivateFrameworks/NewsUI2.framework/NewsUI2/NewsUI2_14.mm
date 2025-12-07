uint64_t sub_21884100C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a2;
  v3 = sub_219BDD804();
  v128 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v129 = (&v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x277D83D88];
  sub_218834EB8(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v125 - v10;
  MEMORY[0x28223BE20](v12);
  v125 = &v125 - v13;
  MEMORY[0x28223BE20](v14);
  v127 = &v125 - v15;
  MEMORY[0x28223BE20](v16);
  v126 = &v125 - v17;
  v132 = sub_219BDB954();
  v133 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v19 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v130 = &v125 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v125 - v23;
  sub_218834EB8(0, &unk_280EE8C10, MEMORY[0x277D30048], v5);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v125 - v26;
  v28 = sub_219BDD944();
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v125 - v32;
  v34 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v125 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v40 = &v125 - v38;
  v41 = *a1;
  v42 = (v41 >> 58) & 0x3C | (v41 >> 1) & 3;
  if (v42 <= 7)
  {
    if (v42 > 3)
    {
      if ((v42 - 5) >= 3)
      {
        v56 = swift_projectBox();
        v57 = v131;
        v58 = v132;
        (*(v133 + 16))(v131, v56, v132);
        v43 = *(v133 + 56);
        v44 = v57;
        v45 = 0;
        v46 = v58;
        goto LABEL_5;
      }

LABEL_4:
      v43 = *(v133 + 56);
      v44 = v131;
      v45 = 1;
      v46 = v132;
LABEL_5:

      return v43(v44, v45, 1, v46, v39);
    }

    if ((v42 - 1) >= 2)
    {
      goto LABEL_4;
    }

    v48 = &v125 - v38;
    sub_2187B2C48(0);
    v40 = v48;
  }

  else if (v42 <= 0x3C)
  {
    if (((1 << ((v41 >> 58) & 0x3C | (v41 >> 1) & 3)) & 0x1FFFFFFFBFCFFE00) != 0)
    {
      goto LABEL_4;
    }

    if (((1 << ((v41 >> 58) & 0x3C | (v41 >> 1) & 3)) & 0x300000) != 0)
    {
      memmove(&__dst, ((v41 & 0xFFFFFFFFFFFFFF9) + 16), 0x48uLL);
      v59 = v148 >> 6;
      if (v59)
      {
        v60 = v132;
        if (v59 == 1)
        {
          sub_219092568(&__dst, v140);
        }

        else
        {
          v140[0] = __dst;
          v140[1] = v143;
          v140[2] = v144;
          v140[3] = v145;
          v140[4] = v146;
          v141 = v147 & 1;
          sub_21896FE24(__dst, v143, v144, v145, v146, v147 & 1);

          sub_219BD47C0();
        }
      }

      else
      {
        v134 = __dst;
        v135 = v143;
        v136 = v144;
        v137 = v145;
        v138 = v146;
        v139 = v147 & 1;
        sub_219092568(&__dst, v140);
        v92 = [sub_219BD4870() identifier];
        sub_219BF5414();

        v60 = v132;
      }

      v93 = objc_opt_self();
      v94 = sub_219BF53D4();
      sub_218AAFFC4(&__dst);

      v95 = [v93 nss:v94 NewsURLForIssueID:?];

      if (v95)
      {
        sub_219BDB8B4();

        v96 = 0;
      }

      else
      {
        v96 = 1;
      }

      v91 = v131;
      (*(v133 + 56))(v8, v96, 1, v60);
      v97 = v8;
      return sub_218AB007C(v97, v91);
    }

    if (v42 == 30)
    {

      v73 = v129;
      sub_219BDE5F4();
      v74 = v128;
      v75 = (*(v128 + 88))(v73, v3);
      if (v75 == *MEMORY[0x277D2FB08])
      {
        v76.n128_f64[0] = (*(v74 + 96))(v73, v3);
        sub_218A27458(0, v76);
        v78 = *(v77 + 48);
        v79 = objc_opt_self();
        v80 = sub_219BF53D4();

        v81 = [v79 nss:v80 NewsURLForRecipeID:0 articleID:?];

        v82 = v131;
        sub_219BDB8B4();

        (*(v133 + 56))(v82, 0, 1, v132);
        goto LABEL_27;
      }

      v99 = v132;
      if (v75 != *MEMORY[0x277D2FAF8])
      {
        if (v75 != *MEMORY[0x277D2FAF0])
        {

          (*(v133 + 56))(v131, 1, 1, v99);
          return (*(v74 + 8))(v73, v3);
        }

        (*(v74 + 96))(v73, v3);

        sub_2197195C0(0);
        v78 = *(v114 + 64);
        v115 = objc_opt_self();
        v116 = sub_219BF53D4();

        v117 = [v115 nss:v116 NewsURLForRecipeID:0 articleID:?];

        v118 = v131;
        sub_219BDB8B4();

        (*(v133 + 56))(v118, 0, 1, v99);
LABEL_27:
        v83 = sub_219BDDBF4();
        return (*(*(v83 - 8) + 8))(v73 + v78, v83);
      }

      (*(v74 + 96))(v73, v3);
      v100 = *v73;
      v101 = [*v73 identifier];
      if (!v101)
      {
        sub_219BF5414();
        v101 = sub_219BF53D4();
      }

      v102 = [v100 articles];
      sub_218731D50();
      v103 = sub_219BF5924();

      if (v103 >> 62)
      {
        result = sub_219BF7214();
        if (result)
        {
          goto LABEL_42;
        }
      }

      else
      {
        result = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
LABEL_42:
          if ((v103 & 0xC000000000000001) != 0)
          {
            v104 = MEMORY[0x21CECE0F0](0, v103);
          }

          else
          {
            if (!*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v104 = *(v103 + 32);
            swift_unknownObjectRetain();
          }

          v105 = [v104 identifier];
          swift_unknownObjectRelease();
          if (v105)
          {
LABEL_62:
            sub_2191B3054(0);
            v121 = *(v120 + 48);
            v122 = [objc_opt_self() nss:v101 NewsURLForRecipeID:v105 articleID:?];

            v123 = v131;
            sub_219BDB8B4();

            (*(v133 + 56))(v123, 0, 1, v99);
            v124 = sub_219BDDBF4();
            return (*(*(v124 - 8) + 8))(v73 + v121, v124);
          }

          sub_219BF5414();
          v105 = sub_219BF53D4();
LABEL_61:

          goto LABEL_62;
        }
      }

      v105 = 0;
      goto LABEL_61;
    }
  }

  v49 = v40;
  v50 = swift_projectBox();
  sub_219719558(v50, v49, type metadata accessor for NewsActivity2.Article);
  sub_219719558(v49, v36, type metadata accessor for NewsActivity2.Article);
  sub_2187B2DA0(0);

  sub_218AAFD90(v36, v33, MEMORY[0x277D2FB40]);
  sub_219BDD934();
  sub_218790094(v33, MEMORY[0x277D2FB40]);
  v51 = sub_219BDE544();
  if ((*(*(v51 - 8) + 48))(v27, 1, v51) == 1)
  {
    v52 = objc_opt_self();
    sub_219719558(v49, v36, type metadata accessor for NewsActivity2.Article);

    sub_218AAFD90(v36, v30, MEMORY[0x277D2FB40]);
    sub_219BDD8A4();
    sub_218790094(v30, MEMORY[0x277D2FB40]);
    v53 = sub_219BF53D4();

    v54 = [v52 nss:v53 NewsURLForArticleID:?];

    if (v54)
    {
      sub_219BDB8B4();

      v55 = 0;
    }

    else
    {
      v55 = 1;
    }

    v91 = v131;
    v98 = v132;
    sub_218790094(v49, type metadata accessor for NewsActivity2.Article);
    (*(v133 + 56))(v11, v55, 1, v98);
    v97 = v11;
    return sub_218AB007C(v97, v91);
  }

  v129 = v49;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v62 = *(v133 + 32);
  if (EnumCaseMultiPayload != 1)
  {
    v84 = v132;
    v62(v24, v27, v132);
    v85 = objc_opt_self();
    sub_219719558(v129, v36, type metadata accessor for NewsActivity2.Article);

    sub_218AAFD90(v36, v30, MEMORY[0x277D2FB40]);
    sub_219BDD8A4();
    sub_218790094(v30, MEMORY[0x277D2FB40]);
    v86 = sub_219BF53D4();

    v87 = sub_219BDB854();
    v88 = [v85 nss:v86 NewsURLForArticleID:v87 routeURL:?];

    if (v88)
    {
      v89 = v126;
      sub_219BDB8B4();

      v90 = 0;
      v91 = v131;
    }

    else
    {
      v90 = 1;
      v91 = v131;
      v89 = v126;
    }

    (*(v133 + 8))(v24, v84);
    sub_218790094(v129, type metadata accessor for NewsActivity2.Article);
    (*(v133 + 56))(v89, v90, 1, v84);
    v97 = v89;
    return sub_218AB007C(v97, v91);
  }

  v63 = v130;
  v64 = v27;
  v65 = v132;
  v128 = *(v133 + 32);
  v62(v130, v64, v132);
  v66 = objc_opt_self();
  v67 = sub_219BDB854();
  v126 = v66;
  v68 = [v66 nss:v67 NewsURLForWebLinkURL:?];

  if (v68)
  {
    sub_219BDB8B4();

    (*(v133 + 8))(v63, v65);
    sub_218790094(v129, type metadata accessor for NewsActivity2.Article);
    v69 = v127;
    v70 = v128;
    (v128)(v127, v19, v65);
    v71 = *(v133 + 56);
    v133 += 56;
    v71(v69, 0, 1, v65);
    v72 = v131;
    v70(v131, v69, v65);
    return (v71)(v72, 0, 1, v65);
  }

  else
  {
    v106 = v65;
    v107 = *(v133 + 56);
    v108 = 1;
    v109 = v127;
    v107(v127, 1, 1, v106);
    sub_219719558(v129, v36, type metadata accessor for NewsActivity2.Article);

    sub_218AAFD90(v36, v30, MEMORY[0x277D2FB40]);
    sub_219BDD8A4();
    sub_218790094(v30, MEMORY[0x277D2FB40]);
    v110 = sub_219BF53D4();

    v111 = [v126 nss:v110 NewsURLForArticleID:?];

    if (v111)
    {
      v112 = v125;
      sub_219BDB8B4();

      v108 = 0;
      v113 = v131;
    }

    else
    {
      v113 = v131;
      v112 = v125;
    }

    v119 = v132;
    (*(v133 + 8))(v130, v132);
    sub_218790094(v129, type metadata accessor for NewsActivity2.Article);
    v107(v112, v108, 1, v119);
    sub_218AB007C(v112, v113);
    result = (*(v133 + 48))(v109, 1, v119);
    if (result != 1)
    {
      return sub_218838478(v109);
    }
  }

  return result;
}

void sub_2188422B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_218842310(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2187609C8;

  return sub_2188424D4();
}

id sub_2188423C4(unint64_t *a1)
{
  v1 = *a1;
  v2 = [objc_allocWithZone(MEMORY[0x277CC34B8]) initWithItemContentType_];
  v7 = v1;
  sub_21883A22C(&v7);
  v3 = sub_219BF53D4();

  [v2 setDisplayName_];

  v7 = v1;
  sub_21883C730(&v7);
  v4 = sub_219BF5904();

  [v2 setKeywords_];

  v7 = v1;
  sub_218842564(&v7);
  v5 = sub_219BF53D4();

  [v2 setIdentifier_];

  return v2;
}

uint64_t sub_2188424D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2187609C8;

  return sub_218842E4C();
}

unint64_t sub_218842564(unint64_t *a1)
{
  v2 = sub_219BDD804();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PuzzleModel(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDD944();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v56 - v17;
  result = 0;
  v20 = *a1;
  switch((v20 >> 58) & 0x3C | (v20 >> 1) & 3)
  {
    case 1uLL:
    case 2uLL:
      sub_2187B2C48(0);
      goto LABEL_4;
    case 6uLL:
    case 0xCuLL:
    case 0xEuLL:
    case 0x11uLL:
    case 0x1FuLL:
      goto LABEL_2;
    case 8uLL:
LABEL_4:
      v21 = swift_projectBox();
      sub_219719558(v21, v18, type metadata accessor for NewsActivity2.Article);
      sub_219719558(v18, v14, type metadata accessor for NewsActivity2.Article);
      sub_2187B2DA0(0);

      sub_218AAFD90(v14, v11, MEMORY[0x277D2FB40]);
      v22 = sub_219BDD8A4();
      sub_218790094(v11, MEMORY[0x277D2FB40]);
      sub_218790094(v18, type metadata accessor for NewsActivity2.Article);
      return v22;
    case 0xAuLL:
    case 0xBuLL:
      v23 = v20 & 0xFFFFFFFFFFFFFF9;
      v24 = *((v20 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v25 = *((v20 & 0xFFFFFFFFFFFFFF9) + 0x18);
      v27 = *((v20 & 0xFFFFFFFFFFFFFF9) + 0x20);
      v26 = *((v20 & 0xFFFFFFFFFFFFFF9) + 0x28);
      v28 = *((v20 & 0xFFFFFFFFFFFFFF9) + 0x30);
      v30 = *((v20 & 0xFFFFFFFFFFFFFF9) + 0x40);
      v29 = *(v23 + 72);
      v32 = *(v23 + 80);
      v31 = *(v23 + 88);
      v33 = *(v23 + 96);
      v34 = v24;
      sub_21908FD7C(v24, v25, v27, v26, v28);
      v35 = sub_218F20858(v30, v29, v32, v31, v33);
      if (v28)
      {

        if (v28 == 1)
        {
          v36 = 1;
        }

        else
        {
          v36 = 2;
        }

        sub_21896FBB0(v34, v25, v27, v26, v36);
        sub_218DFAEC4(v30, v29, v32, v31, v33);
        return v34;
      }

      else
      {
        v51 = v34;
        v52 = [v34 identifier];
        v57 = sub_219BF5414();
        v56[1] = v53;

        sub_21896FBB0(v51, v25, v27, v26, 0);
        sub_218DFAEC4(v30, v29, v32, v31, v33);
        return v57;
      }

    case 0x14uLL:
    case 0x15uLL:
      memmove(&__dst, ((v20 & 0xFFFFFFFFFFFFFF9) + 16), 0x48uLL);
      v37 = v70 >> 6;
      if (v37)
      {
        if (v37 == 1)
        {
          v38 = __dst;

          return v38;
        }

        else
        {
          v58 = __dst;
          v59 = v65;
          v60 = v66;
          v61 = v67;
          v62 = v68;
          v63 = v69 & 1;
          return sub_219BD47C0();
        }
      }

      else
      {
        v58 = __dst;
        v59 = v65;
        v60 = v66;
        v61 = v67;
        v62 = v68;
        v63 = v69 & 1;
        sub_21896FE24(__dst, v65, v66, v67, v68, v69 & 1);

        v54 = [sub_219BD4870() identifier];
        v55 = sub_219BF5414();

        sub_218AAFFC4(&__dst);
        return v55;
      }

    case 0x1AuLL:
      sub_21896FC94((v20 & 0xFFFFFFFFFFFFFF9) + 16, &__dst);
      v50 = __dst;

      sub_218C113E0(&__dst);
      return v50;
    case 0x1BuLL:
      v46 = *((v20 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v47 = *((v20 & 0xFFFFFFFFFFFFFF9) + 0x18);
      if (*((v20 & 0xFFFFFFFFFFFFFF9) + 0x20) > 1u)
      {
        if (*((v20 & 0xFFFFFFFFFFFFFF9) + 0x20) == 2)
        {
          if (v46 <= 1)
          {
            if (v46 | v47)
            {
              return 0x64616F6C6E776F64;
            }

            else
            {
              return 0x676F6C61746163;
            }
          }

          else if (v46 ^ 2 | v47)
          {
            if (v46 ^ 3 | v47)
            {
              return 0x657061707377656ELL;
            }

            else
            {
              return 0x697A6167614D796DLL;
            }
          }

          else
          {
            return 0x656E697A6167616DLL;
          }
        }

        else
        {
          return 0;
        }
      }

      else
      {
        if (*((v20 & 0xFFFFFFFFFFFFFF9) + 0x20))
        {
          v48 = 0x3A64656546676174;
          v49 = 0xE90000000000003ALL;
        }

        else
        {
          v48 = 0x79726F6765746163;
          v49 = 0xEA00000000003A3ALL;
        }

        __dst = v48;
        v65 = v49;
        MEMORY[0x21CECC330](v46, v47, v16);
        return __dst;
      }

    case 0x1EuLL:

      sub_219BDE5F4();
      v39 = sub_219BDD7F4();

      (*(v3 + 8))(v5, v2);
      return v39;
    case 0x3BuLL:
      v40 = swift_projectBox();
      sub_219719558(v40, v8, type metadata accessor for PuzzleModel);
      v42 = *v8;
      v41 = *(v8 + 1);
      if (v8[16])
      {
        v43 = *v8;
        v44 = [swift_unknownObjectRetain() identifier];
        v42 = sub_219BF5414();

        sub_218B083E8(v43, v41, 1);
      }

      else
      {
      }

      sub_218790094(v8, type metadata accessor for PuzzleModel);
      return v42;
    case 0x3CuLL:
      result = 0;
      v45 = __ROR8__(v20 + 0x1000000000000000, 3);
      if (v45 > 9 || ((1 << v45) & 0x349) == 0)
      {
        return result;
      }

LABEL_2:
      __dst = v20;
      NewsActivity2.type.getter(&v58);
      result = NewsActivityType2.rawValue.getter();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_218842E4C()
{
  v1[18] = v0;
  v1[19] = *v0;
  v2 = sub_219BDBD34();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218842F44, 0, 0);
}

uint64_t sub_218842F44()
{
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  *(v0 + 192) = __swift_project_value_buffer(v1, qword_280F625E0);
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2186C1000, v2, v3, "PuzzleBadgingCoordinator: Beginning puzzle badge count update...", v4, 2u);
    MEMORY[0x21CECF960](v4, -1, -1);
  }

  v5 = *(v0 + 144);

  v6 = [*(v5 + 112) cachedSubscription];
  if (objc_getAssociatedObject(v6, v6 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  *(v0 + 16) = v39;
  *(v0 + 32) = v40;
  if (!*(v0 + 40))
  {
    sub_218744870(v0 + 16, sub_21880702C);
    goto LABEL_13;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v7 = 0;
    v9 = 0;
    goto LABEL_14;
  }

  v7 = *(v0 + 136);
  v8 = [v7 integerValue];
  if (v8 == -1)
  {

    goto LABEL_26;
  }

  v9 = v8;
LABEL_14:
  if (objc_getAssociatedObject(v6, ~v9))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  *(v0 + 48) = v39;
  *(v0 + 64) = v40;
  if (!*(v0 + 72))
  {
    sub_218744870(v0 + 48, sub_21880702C);
LABEL_22:

    if (v9)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v10 = *(v0 + 128);
  v11 = [v10 integerValue];

  if ((v11 ^ v9))
  {
LABEL_26:
    __swift_project_boxed_opaque_existential_1((*(v0 + 144) + 72), *(*(v0 + 144) + 96));
    if ((sub_219BF3734() & 1) == 0)
    {
      v22 = [*(*(v0 + 144) + 120) configuration];
      if (v22)
      {
        v25 = *(v0 + 176);
        v24 = *(v0 + 184);
        v26 = *(v0 + 160);
        v27 = *(v0 + 168);
        v28 = [v22 puzzlesConfig];
        swift_unknownObjectRelease();
        [v28 badgingUpdateQuiesenceInterval];
        v30 = v29;

        sub_219BDBD24();
        sub_219BDC754();
        sub_2189B3EFC(&qword_280EC0BE8, &unk_219C0F908);
        sub_219BDC7D4();

        sub_219BDBBE4();
        v32 = v31;
        v33 = *(v27 + 8);
        *(v0 + 200) = v33;
        *(v0 + 208) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v33(v25, v26);
        v33(v24, v26);
        if (v30 > v32)
        {
          v12 = sub_219BE5414();
          v34 = sub_219BF6214();
          if (!os_log_type_enabled(v12, v34))
          {
            goto LABEL_31;
          }

          v14 = swift_slowAlloc();
          *v14 = 134218240;
          *(v14 + 4) = v30;
          *(v14 + 12) = 2048;
          *(v14 + 14) = v32;
          v15 = "PuzzleBadgingCoordinator: Badge count update will be ignored since quiescence interval of %f was not exceeded.\nTime since last badging update: %f seconds.";
          v16 = v34;
          v17 = v12;
          v18 = v14;
          v19 = 22;
          goto LABEL_30;
        }

        v35 = *(v0 + 144);
        v36 = v35[6];
        v37 = v35[7];
        __swift_project_boxed_opaque_existential_1(v35 + 3, v36);
        v38 = swift_task_alloc();
        *(v0 + 216) = v38;
        *v38 = v0;
        v38[1] = sub_2189B2738;
        v22 = v36;
        v23 = v37;
      }

      else
      {
        __break(1u);
      }

      return MEMORY[0x28218F9F0](v22, v23);
    }

    v12 = sub_219BE5414();
    v13 = sub_219BF6214();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "PuzzleBadgingCoordinator: Call to update badge count will be ignored since user has no puzzles in their history.";
      goto LABEL_29;
    }

    goto LABEL_31;
  }

LABEL_23:
  v12 = sub_219BE5414();
  v13 = sub_219BF6214();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "PuzzleBadgingCoordinator: Call to update badge count will be ignored since user is not a News+ subscriber.";
LABEL_29:
    v16 = v13;
    v17 = v12;
    v18 = v14;
    v19 = 2;
LABEL_30:
    _os_log_impl(&dword_2186C1000, v17, v16, v15, v18, v19);
    MEMORY[0x21CECF960](v14, -1, -1);
  }

LABEL_31:

  v20 = *(v0 + 8);

  return v20();
}

unint64_t sub_218843558(unint64_t *a1)
{
  v2 = sub_219BDB954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDD804();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDD944();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  result = 0;
  v20 = *a1;
  v21 = (v20 >> 58) & 0x3C | (v20 >> 1) & 3;
  if (v21 > 19)
  {
    if (v21 <= 0x3C)
    {
      if (((1 << ((v20 >> 58) & 0x3C | (v20 >> 1) & 3)) & 0xFFFFFFFBFC00000) != 0)
      {
        return result;
      }

      if (v21 == 30)
      {

        sub_219BDE5F4();
        v22 = sub_219BDD7F4();

        (*(v7 + 8))(v9, v6);
        return v22;
      }

      if (v21 == 60)
      {
        if (v20 != 0xF000000000000040)
        {
          return 0;
        }

        __dst = 0xF000000000000040;
        NewsActivity2.type.getter(&v31);
        return NewsActivityType2.rawValue.getter();
      }
    }

    memmove(&__dst, ((v20 & 0xFFFFFFFFFFFFFF9) + 16), 0x48uLL);
    v27 = v43 >> 6;
    if (!v27)
    {
      v31 = __dst;
      v32 = v38;
      v33 = v39;
      v34 = v40;
      v35 = v41;
      v36 = v42 & 1;
      sub_21896FE24(__dst, v38, v39, v40, v41, v42 & 1);

      v28 = [sub_219BD4870() identifier];
      v29 = sub_219BF5414();

      sub_218AAFFC4(&__dst);
      return v29;
    }

    if (v27 != 1)
    {
      v31 = __dst;
      v32 = v38;
      v33 = v39;
      v34 = v40;
      v35 = v41;
      v36 = v42 & 1;
      return sub_219BD47C0();
    }

    v24 = __dst;

    return v24;
  }

  if (v21 > 7)
  {
    if ((v21 - 9) < 0xB)
    {
      return result;
    }

LABEL_12:
    v23 = swift_projectBox();
    sub_219719558(v23, v18, type metadata accessor for NewsActivity2.Article);
    sub_219719558(v18, v15, type metadata accessor for NewsActivity2.Article);
    sub_2187B2DA0(0);

    sub_218AAFD90(v15, v12, MEMORY[0x277D2FB40]);
    v24 = sub_219BDD8A4();
    sub_218790094(v12, MEMORY[0x277D2FB40]);
    sub_218790094(v18, type metadata accessor for NewsActivity2.Article);
    return v24;
  }

  if (v21 <= 3)
  {
    if ((v21 - 1) >= 2)
    {
      return result;
    }

    sub_2187B2C48(0);
    goto LABEL_12;
  }

  if ((v21 - 5) >= 3)
  {
    v25 = swift_projectBox();
    (*(v3 + 16))(v5, v25, v2);
    v26 = sub_219BDB804();
    (*(v3 + 8))(v5, v2);
    return v26;
  }

  return result;
}

uint64_t NewsActivity2.eligibilities.getter()
{
  v1 = (*v0 >> 58) & 0x3C | (*v0 >> 1) & 3;
  v2 = v1 > 0x26;
  v3 = (1 << v1) & 0x4000010C00;
  if (v2 || v3 == 0)
  {
    NewsActivity2.type.getter(&v19);
    return NewsActivityType2.eligibilities.getter();
  }

  else
  {
    v5 = *v0 & 0xFFFFFFFFFFFFFF9;
    v6 = *(v5 + 0x10);
    v7 = *(v5 + 0x18);
    v8 = *(v5 + 0x20);
    v9 = *(v5 + 0x28);
    v10 = *(v5 + 0x40);
    v11 = *(v5 + 72);
    v18 = *(v5 + 64);
    v12 = *(v5 + 80);
    v13 = *(v5 + 88);
    v14 = *(v5 + 48);
    v15 = *(v5 + 96);
    sub_21908FD7C(*(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v14);
    sub_218F20858(v10, v11, v12, v13, v15);
    v16 = sub_219090ACC();
    sub_21896FBB0(v6, v7, v8, v9, v14);
    sub_218DFAEC4(v18, v11, v12, v13, v15);
  }

  return v16;
}

uint64_t NewsActivityType2.eligibilities.getter()
{
  result = MEMORY[0x277D84FA0];
  switch(*v0)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 8:
    case 0xC:
    case 0xD:
    case 0xF:
    case 0x12:
    case 0x20:
      sub_218844190(0);
      v2 = sub_219BE8B94();
      v3 = *(v2 - 8);
      v4 = *(v3 + 72);
      v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_219C0B8C0;
      v7 = v6 + v5;
      v8 = *(v3 + 104);
      v8(v7, *MEMORY[0x277D6E1C0], v2);
      v8(v7 + v4, *MEMORY[0x277D6E1B0], v2);
      v8(v7 + 2 * v4, *MEMORY[0x277D6E1B8], v2);
      v9 = sub_2188441E8(v6);
      swift_setDeallocating();
      goto LABEL_3;
    case 7:
      sub_218844190(0);
      v23 = sub_219BE8B94();
      v24 = *(v23 - 8);
      v25 = *(v24 + 72);
      v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_219C09EC0;
      v28 = v27 + v26;
      v29 = *(v24 + 104);
      v29(v28, *MEMORY[0x277D6E1C0], v23);
      v29(v28 + v25, *MEMORY[0x277D6E1B0], v23);
      v9 = sub_2188441E8(v27);
      swift_setDeallocating();
      goto LABEL_3;
    case 0xE:
      sub_218844190(0);
      v17 = sub_219BE8B94();
      v18 = *(v17 - 8);
      v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v20 = swift_allocObject();
      v21 = v20;
      *(v20 + 16) = xmmword_219C09BA0;
      v22 = MEMORY[0x277D6E1C0];
      goto LABEL_9;
    case 0x10:
    case 0x11:
      sub_218844190(0);
      v17 = sub_219BE8B94();
      v18 = *(v17 - 8);
      v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v20 = swift_allocObject();
      v21 = v20;
      *(v20 + 16) = xmmword_219C09BA0;
      v22 = MEMORY[0x277D6E1B0];
LABEL_9:
      (*(v18 + 104))(v20 + v19, *v22, v17);
      v9 = sub_2188441E8(v21);
      swift_setDeallocating();
      (*(v18 + 8))(v21 + v19, v17);
      goto LABEL_4;
    case 0x13:
    case 0x19:
      sub_218844190(0);
      v10 = sub_219BE8B94();
      v11 = *(v10 - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_219C0EE20;
      v15 = v14 + v13;
      v16 = *(v11 + 104);
      v16(v15, *MEMORY[0x277D6E1C0], v10);
      v16(v15 + v12, *MEMORY[0x277D6E1A8], v10);
      v16(v15 + 2 * v12, *MEMORY[0x277D6E1B0], v10);
      v16(v15 + 3 * v12, *MEMORY[0x277D6E1B8], v10);
      v9 = sub_2188441E8(v14);
      swift_setDeallocating();
LABEL_3:
      swift_arrayDestroy();
LABEL_4:
      swift_deallocClassInstance();
      result = v9;
      break;
    default:
      return result;
  }

  return result;
}

void sub_218844190(uint64_t a1)
{
  if (!qword_280E8BDB0)
  {
    sub_219BE8B94();
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8BDB0);
    }
  }
}

uint64_t sub_2188441E8(uint64_t a1)
{
  v2 = sub_219BE8B94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2188444FC(0);
    v9 = sub_219BF72E4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_218751238(&qword_280EE47C0, MEMORY[0x277D6E1C8], MEMORY[0x277D6E1D0]);
      v16 = sub_219BF52E4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_218751238(&qword_280EE47B8, MEMORY[0x277D6E1C8], MEMORY[0x277D6E1D8]);
          v23 = sub_219BF53A4();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_2188444FC(uint64_t a1)
{
  if (!qword_280E8D708)
  {
    sub_219BE8B94();
    sub_218751238(&qword_280EE47C0, MEMORY[0x277D6E1C8], MEMORY[0x277D6E1D0]);
    v1 = sub_219BF72F4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D708);
    }
  }
}

id sub_218844590(unint64_t *a1, __n128 a2)
{
  result = 0;
  v5 = *a1;
  v6 = (v5 >> 58) & 0x3C | (v5 >> 1) & 3;
  if (v6 <= 11)
  {
    if (v6 < 0xA)
    {
      return result;
    }
  }

  else
  {
    if (v6 > 0x3C)
    {
      goto LABEL_10;
    }

    if (((1 << ((v5 >> 58) & 0x3C | (v5 >> 1) & 3)) & 0x1FFFFFBFFFFC0000) != 0)
    {
      return result;
    }

    if (v6 == 17)
    {
      v7 = objc_allocWithZone(type metadata accessor for BridgedNewsActivityData());
      v8 = sub_219BF53D4();
      sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
      v9 = sub_219BF5904();
      v10 = [v7 initWithActivity:4 identifier:v8 object:0 traits:v9];

      v11 = [*(v2 + 16) intentForActivityData_];
      if (v11)
      {
        v12 = v11;
        v13 = [objc_allocWithZone(MEMORY[0x277CD3D58]) initWithIntent:v11 response:0];

        return v13;
      }

      return 0;
    }

    if (v6 != 38)
    {
LABEL_10:
      if ((v6 - 12) < 4)
      {
        return result;
      }
    }
  }

  v14 = v5 & 0xFFFFFFFFFFFFFF9;
  v15 = *(v14 + 48);
  v16 = *(v14 + 80);
  *&v54[16] = *(v14 + 64);
  *&v54[32] = v16;
  *v54 = v15;
  v17 = *(v14 + 32);
  v52 = *(v14 + 16);
  v53 = v17;
  v55 = *(v14 + 96);
  v18 = v55;
  v19 = *(&v16 + 1);
  v46 = *&v54[8];
  v47 = *&v54[24];
  v45 = v17;
  v48 = v52;
  v20 = v15;
  sub_218B5A004(&v52, v51);
  v52 = v48;
  v53 = v45;
  v54[0] = v20;
  *&v54[8] = v46;
  *&v54[24] = v47;
  *&v54[40] = v19;
  v55 = v18;
  if (v20)
  {
    if (v20 == 1)
    {
      v21 = v45 + OBJC_IVAR___TSFeedViewContext_tagName;

      v22 = v45;
      swift_beginAccess();
      if (*(v21 + 8) && (v23 = &v22[OBJC_IVAR___TSFeedViewContext_feedTagType], swift_beginAccess(), (v23[8] & 1) == 0) && *v23 == 1)
      {

        v24 = sub_219BF5624();

        if ((v24 & 1) == 0)
        {

          sub_218B5A060(&v52);

          return 0;
        }

        v25 = sub_219BF53D4();

        v26 = type metadata accessor for BridgedNewsActivityData();
        v27 = objc_allocWithZone(v26);
        *&v27[OBJC_IVAR___TSNewsActivityData_activity] = 2;
        *&v27[OBJC_IVAR___TSNewsActivityData_identifier] = v48;
        *&v27[OBJC_IVAR___TSNewsActivityData_object] = v25;
        *&v27[OBJC_IVAR___TSNewsActivityData_traits] = MEMORY[0x277D84F90];
        v50.receiver = v27;
        v50.super_class = v26;
        v28 = objc_msgSendSuper2(&v50, sel_init);
        v29 = [*(v2 + 16) intentForActivityData_];
        if (v29)
        {
          v30 = v29;
          v31 = [objc_allocWithZone(MEMORY[0x277CD3D58]) initWithIntent:v29 response:0];

LABEL_24:
          sub_218B5A060(&v52);
          return v31;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    swift_unknownObjectRetain();
    if (sub_21971938C())
    {
      v32 = [v48 nameCompact];
      if (!v32)
      {
        v32 = [v48 name];
      }

      v33 = v32;
      sub_219BF5414();

      v34 = [v48 identifier];
      v35 = sub_219BF5414();
      v37 = v36;

      v38 = sub_219BF53D4();

      v39 = type metadata accessor for BridgedNewsActivityData();
      v40 = objc_allocWithZone(v39);
      *&v40[OBJC_IVAR___TSNewsActivityData_activity] = 2;
      v41 = &v40[OBJC_IVAR___TSNewsActivityData_identifier];
      *v41 = v35;
      v41[1] = v37;
      *&v40[OBJC_IVAR___TSNewsActivityData_object] = v38;
      *&v40[OBJC_IVAR___TSNewsActivityData_traits] = MEMORY[0x277D84F90];
      v49.receiver = v40;
      v49.super_class = v39;
      v42 = objc_msgSendSuper2(&v49, sel_init);
      v43 = [*(v2 + 16) intentForActivityData_];
      if (v43)
      {
        v44 = v43;
        v31 = [objc_allocWithZone(MEMORY[0x277CD3D58]) initWithIntent:v43 response:0];
        swift_unknownObjectRelease();

        goto LABEL_24;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  sub_218B5A060(&v52);
  return 0;
}

uint64_t sub_218844C40()
{
  sub_218817724(*(v0 + 48), &qword_280EE33F0, MEMORY[0x277D2D4E0]);

  v1 = *(v0 + 8);

  return v1();
}

void sub_218844CD0(int a1, uint64_t a2)
{
  v3 = sub_219BEB384();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEB394();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = OBJC_IVAR____TtC7NewsUI219TodayViewController_deferLoadingContent;
    if (*(Strong + OBJC_IVAR____TtC7NewsUI219TodayViewController_deferLoadingContent))
    {
      goto LABEL_9;
    }

    v26 = a1;
    v27 = v8;
    v28 = v4;
    v13 = OBJC_IVAR____TtC7NewsUI219TodayViewController_blueprintViewController;
    v14 = Strong;
    sub_219BE86E4();
    v15 = v14;
    v16 = [*(v14 + v13) view];
    if (!v16)
    {
      __break(1u);
      return;
    }

    v17 = v16;
    swift_getObjectType();
    v18 = sub_219BE9E14();

    swift_unknownObjectRelease();
    if ((v18 & 1) == 0)
    {
LABEL_9:

      swift_unknownObjectRelease();
    }

    else
    {
      *(v15 + v12) = 0;
      v25 = sub_219BE8644();
      v19 = v27;
      (*(v27 + 104))(v10, *MEMORY[0x277D6EC88], v7);
      v20 = v28;
      v21 = MEMORY[0x277D6ECB0];
      v22 = v26 & 1;
      if ((v26 & 1) == 0)
      {
        v21 = MEMORY[0x277D6ECA8];
      }

      (*(v28 + 104))(v6, *v21, v3);
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      *(v24 + 16) = v22;
      *(v24 + 24) = v23;

      sub_219BE6BE4();
      swift_unknownObjectRelease();

      (*(v20 + 8))(v6, v3);
      (*(v19 + 8))(v10, v7);
    }
  }
}

uint64_t sub_21884501C()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_218845054()
{

  return swift_deallocObject();
}

void sub_2188450A0(uint64_t a1, void (*a2)(void), uint64_t a3, char a4, void (*a5)(void), uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v51 = a4;
    v52 = a6;
    v46 = a2;
    v47 = a3;
    v12 = Strong;
    v13 = *(Strong + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_userInfo);
    v48 = sub_219BF2FA4();

    v14 = *&v12[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager + 24];
    v15 = *&v12[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager + 32];
    __swift_project_boxed_opaque_existential_1(&v12[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager], v14);
    v50 = (*(v15 + 24))(v14, v15);
    if (qword_280E8D8B0 != -1)
    {
      swift_once();
    }

    v49 = qword_280F61778;
    sub_2186F20D4(0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_219C0EE20;
    v17 = objc_opt_self();
    v18 = [v17 sharedAccount];
    v19 = [v18 isUserSignedInToiCloud];

    if (v19)
    {
      v20 = 1702195828;
    }

    else
    {
      v20 = 0x65736C6166;
    }

    if (v19)
    {
      v21 = 0xE400000000000000;
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    MEMORY[0x21CECC330](v20, v21);

    v22 = MEMORY[0x277D837D0];
    *(v16 + 56) = MEMORY[0x277D837D0];
    v23 = sub_2186FC3BC();
    *(v16 + 64) = v23;
    *(v16 + 32) = 0;
    *(v16 + 40) = 0xE000000000000000;
    v24 = [v17 sharedAccount];
    v25 = [v24 isPrivateDataSyncingEnabled];

    if (v25)
    {
      v26 = 1702195828;
    }

    else
    {
      v26 = 0x65736C6166;
    }

    if (v25)
    {
      v27 = 0xE400000000000000;
    }

    else
    {
      v27 = 0xE500000000000000;
    }

    MEMORY[0x21CECC330](v26, v27);

    *(v16 + 96) = v22;
    *(v16 + 104) = v23;
    *(v16 + 72) = 0;
    *(v16 + 80) = 0xE000000000000000;
    if (v48 == 1)
    {
      v29 = 0xE900000000000064;
      v30 = 0x656472616F626E6FLL;
      v28 = v51;
    }

    else
    {
      v28 = v51;
      if (v48)
      {
        v34 = sub_219BF7894();
        MEMORY[0x21CECC330](v34);

        MEMORY[0x21CECC330](41, 0xE100000000000000);
        v30 = 0x286E776F6E6B6E75;
        v29 = 0xE800000000000000;
      }

      else
      {
        v29 = 0xEC00000064656472;
        v30 = 0x616F626E4F746F6ELL;
      }
    }

    *(v16 + 136) = v22;
    *(v16 + 144) = v23;
    *(v16 + 112) = v30;
    *(v16 + 120) = v29;
    v35 = sub_218845750(v50);
    *(v16 + 176) = v22;
    *(v16 + 184) = v23;
    *(v16 + 152) = v35;
    *(v16 + 160) = v36;
    v37 = sub_219BF6214();
    sub_219BE5314("SportsOnboardingManager determining whether to refresh: isUserSignedIntoiCloud=%{public}@, isPrivateDataSyncingEnabled=%{public}@, onboardingState=%{public}@, syncStatus=%{public}@", 180, 2, &dword_2186C1000, v49, v37, v16);

    if (v28 == 4 && v48 == 1 && v50 == 2)
    {
      sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
      v38 = sub_219BF6F44();
      v39 = sub_219BF6214();
      sub_219BE5314("SportsOnboardingManager does not need to refresh for subscription change event, reason='syncing is enabled and user is onboarded'", 129, 2, &dword_2186C1000, v38, v39, MEMORY[0x277D84F90]);

      a5(0);
    }

    else
    {
      v40 = sub_219BE2CC4();
      *(swift_allocObject() + 16) = v28;
      sub_218845868(0);
      type metadata accessor for SportsOnboardingManager();
      sub_219BE31F4();

      v41 = sub_219BE1C44();
      v42 = swift_allocObject();
      *(v42 + 16) = v28;
      *(v42 + 24) = a5;
      *(v42 + 32) = v52;

      sub_219BE2F94();

      v43 = swift_allocObject();
      *(v43 + 16) = v46;
      *(v43 + 24) = v47;

      v44 = sub_219BE2E54();
      sub_219BE2FD4();

      v45 = sub_219BE2E54();
      sub_219BE3024();
    }
  }

  else
  {
    v31 = sub_219BE1D94();
    sub_218DB220C();
    v32 = swift_allocError();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D6CAE0], v31);
    a2(v32);
  }
}

uint64_t sub_2188456B8()
{

  return swift_deallocObject();
}

id sub_2188456F4(uint64_t a1)
{
  v2 = *v1;
  if ((sub_21884041C(a1) & 1) == 0)
  {
    return 0;
  }

  v3 = *(v2 + OBJC_IVAR____TtC7NewsUI217SportsSyncManager_userInfo);

  return [v3 sportsSyncState];
}

uint64_t sub_218845750(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 3)
    {
      if (a1 == 2)
      {
        return 0x64656C62616E65;
      }

      goto LABEL_8;
    }

    return 0x64656C6261736964;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6D72657465646E75;
      }

LABEL_8:
      v2 = sub_219BF7894();
      MEMORY[0x21CECC330](v2);

      MEMORY[0x21CECC330](41, 0xE100000000000000);
      return 0x286E776F6E6B6E75;
    }

    return 0x616C696176616E75;
  }
}

void sub_218845868(uint64_t a1)
{
  if (!qword_280E8EC90)
  {
    sub_2186D6710(255, &qword_280E8E420, &protocolRef_FCSportsProviding);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8EC90);
    }
  }
}

double sub_2188458D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(v7 + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager + 24);
  v9 = *(v7 + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager + 32);
  __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager), v8);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a2;
  v11[4] = a3;
  v12 = *(v9 + 8);

  v12(a1, sub_218DB24AC, v11, v8, v9);

  return result;
}

uint64_t sub_2188459E8()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_218845A28(char a1)
{
  v1 = sub_218845E04();
  v2 = v1;
  v22 = MEMORY[0x277D84F90];
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_21:
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (v4 != v5)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x21CECE0F0](v5, v2);
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_20;
      }

      v7 = *(v2 + 8 * v5 + 32);

      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    v9 = [*(v7 + 16) asSports];

    ++v5;
    if (v9)
    {
      MEMORY[0x21CECC690](v10);
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v6 = v22;
      v5 = v8;
    }
  }

  if (v6 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_23;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

  if (!a1)
  {

    MEMORY[0x28223BE20](v11);
    sub_2186C6148(0, &qword_280E8E530, 0x277D31320);
    sub_219BE3204();
    v12 = sub_219BE2E54();
    sub_218845868(0);
    v13 = sub_219BE2F64();

    return v13;
  }

LABEL_23:
  if (qword_280E8D8B0 != -1)
  {
    swift_once();
  }

  v15 = qword_280F61778;
  sub_2186F20D4(0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_219C09BA0;
  if (v6 >> 62)
  {
    sub_219BF7214();
  }

  v17 = sub_219BF7894();
  v19 = v18;
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = sub_2186FC3BC();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  v20 = sub_219BF6214();
  sub_219BE5314("SportsOnboardingManager cachedFavoritedSportsTags.count=%{public}@", 66, 2, &dword_2186C1000, v15, v20, v16);

  sub_218846C98(0, &qword_280EE6A50, sub_218845868, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218845E04()
{
  v1 = *(v0 + 32);
  v2 = [v1 orderedCachedSubscribedTags];
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v2;
  sub_2186D6710(0, &qword_280E8E680, &protocolRef_FCTagProviding);
  v4 = sub_219BF5924();

  v5 = [*(v0 + 40) allPurchasedTagIDs];
  if (v5)
  {
    v6 = v5;
    v7 = sub_219BF5D44();
  }

  else
  {
    v7 = MEMORY[0x277D84FA0];
  }

  v9 = [v1 mutedTagIDs];
  if (v9)
  {
    v10 = v9;
    v11 = sub_219BF5924();
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v12 = sub_218845F78(v11);

  v13 = sub_218846010(v4);

  v14 = sub_2188460E0(v13, v7, v12, v0, v12);

  swift_bridgeObjectRelease_n();
  return v14;
}

uint64_t sub_218845F78(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x21CECCB00](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_219497B60(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_21884603C(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_219BF7214();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2188460E0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_37:
    v31 = a1;
    v32 = a4;
    v33 = a3;
    v34 = sub_219BF7214();
    a3 = v33;
    a4 = v32;
    v6 = v34;
    a1 = v31;
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = a3;
  v37 = a4;
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = 0;
    v38 = a1 & 0xFFFFFFFFFFFFFF8;
    v39 = a1 & 0xC000000000000001;
    v35 = a1;
    v9 = a1 + 32;
    v10 = a5 + 56;
    while (1)
    {
      if (v39)
      {
        v11 = MEMORY[0x21CECE0F0](v8, v35);
        v12 = __OFADD__(v8++, 1);
        if (v12)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v8 >= *(v38 + 16))
        {
          __break(1u);
          goto LABEL_37;
        }

        v11 = *(v9 + 8 * v8);
        swift_unknownObjectRetain();
        v12 = __OFADD__(v8++, 1);
        if (v12)
        {
LABEL_23:
          __break(1u);
LABEL_24:
          v23 = v41;
          v7 = MEMORY[0x277D84F90];
          if ((v41 & 0x8000000000000000) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_38;
        }
      }

      v13 = [v11 identifier];
      v14 = sub_219BF5414();
      v16 = v15;

      if (*(a5 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v17 = sub_219BF7AE4(), v18 = -1 << *(a5 + 32), v19 = v17 & ~v18, ((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0))
      {
        v20 = ~v18;
        while (1)
        {
          v21 = (*(a5 + 48) + 16 * v19);
          v22 = *v21 == v14 && v21[1] == v16;
          if (v22 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
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
        a1 = sub_219BF73E4();
      }

      if (v8 == v6)
      {
        goto LABEL_24;
      }
    }
  }

  v23 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

LABEL_27:
  if ((v23 & 0x4000000000000000) == 0)
  {
    v24 = *(v23 + 16);
    v26 = v36;
    v25 = v37;
    if (v24)
    {
      goto LABEL_29;
    }

LABEL_39:

    return MEMORY[0x277D84F90];
  }

LABEL_38:
  v24 = sub_219BF7214();
  v26 = v36;
  v25 = v37;
  if (!v24)
  {
    goto LABEL_39;
  }

LABEL_29:
  result = sub_219BF73F4();
  if (v24 < 0)
  {
    __break(1u);
  }

  else
  {
    v28 = 0;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x21CECE0F0](v28, v23);
      }

      else
      {
        v29 = *(v23 + 8 * v28 + 32);
        swift_unknownObjectRetain();
      }

      ++v28;
      ObjectType = swift_getObjectType();
      sub_218E97B80(v29, a2, v26, 0, v25, ObjectType);
      swift_unknownObjectRelease();
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
    }

    while (v24 != v28);

    return v7;
  }

  return result;
}

void sub_218846428(uint64_t a1)
{
  if (!qword_280EE69B0)
  {
    sub_2186C6148(255, &qword_280E8E530, 0x277D31320);
    v1 = sub_219BE3114();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE69B0);
    }
  }
}

uint64_t sub_218846490(uint64_t a1)
{
  sub_218846428(0);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_2188464EC()
{
  v0 = off_282A4D798[0];
  type metadata accessor for TagService();
  return v0(25);
}

void sub_218846568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *(a5 + 32);
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);

  v14 = MEMORY[0x21CECD490](a6);
  v15 = swift_allocObject();
  v15[2] = sub_218C1DDD4;
  v15[3] = v12;
  v15[4] = a3;
  v15[5] = a4;
  v17[4] = sub_2188467B4;
  v17[5] = v15;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_218846728;
  v17[3] = &block_descriptor_85;
  v16 = _Block_copy(v17);

  [v13 fetchAllTagsWithCallbackQueue:v14 maximumCachedAge:a6 qualityOfService:v16 completion:1.79769313e308];
  _Block_release(v16);
}

uint64_t sub_2188466E4()
{

  return swift_deallocObject();
}

void sub_218846728(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_2188467C0(void *a1, id a2, void (*a3)(void), uint64_t a4, void (*a5)(void))
{
  if (a1)
  {
    v14 = a1;
    a3();
    v6 = v14;

LABEL_4:

    return;
  }

  if (!a2)
  {
    sub_218E9A2C0();
    v12 = swift_allocError();
    *v13 = 0xD000000000000052;
    *(v13 + 8) = 0x8000000219CFD500;
    *(v13 + 16) = 1;
    a5();
    v6 = v12;

    goto LABEL_4;
  }

  v9 = a2;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  sub_218E9A2C0();
  v10 = swift_allocError();
  *v11 = 0;
  *(v11 + 8) = 0xE000000000000000;
  *(v11 + 16) = 0;
  a5();
}

uint64_t sub_218846958(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_218846990(id *a1)
{
  v1 = [*a1 subscribedTags];
  sub_2186D6710(0, &qword_280E8E680, &protocolRef_FCTagProviding);
  v2 = sub_219BF5924();

  v17 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
LABEL_22:
    v3 = sub_219BF7214();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v16 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x21CECE0F0](v4, v2);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(v2 + 8 * v4 + 32);
      swift_unknownObjectRetain();
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    v7 = [v5 asSports];
    v8 = swift_unknownObjectRelease();
    ++v4;
    if (v7)
    {
      MEMORY[0x21CECC690](v8);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v16 = v17;
      v4 = v6;
    }
  }

  if (qword_280E8D8B0 != -1)
  {
    swift_once();
  }

  v9 = qword_280F61778;
  sub_2186F20D4(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09BA0;
  if (v16 >> 62)
  {
    sub_219BF7214();
  }

  v11 = sub_219BF7894();
  v13 = v12;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_2186FC3BC();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  v14 = sub_219BF6214();
  sub_219BE5314("SportsOnboardingManager favoritedSportsTags.count=%{public}@", 60, 2, &dword_2186C1000, v9, v14, v10);

  sub_218846C98(0, &qword_280EE6A50, sub_218845868, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

void sub_218846C98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218846CFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218846D60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218846DC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218846E28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroy_5Tm()
{
  sub_21896FA3C(0);
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

  return swift_deallocObject();
}

uint64_t objectdestroy_14Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_14Tm_1()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_14Tm_2()
{
  v1 = (type metadata accessor for SearchResponse.SearchResultsGroup(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[9];
  sub_21921898C(0);
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t objectdestroy_14Tm_3()
{
  sub_2187C5110(0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroy_14Tm_4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_14Tm_5(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t sub_218847284(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_shortcutsPluginConfig);
  if (v2)
  {
    v3 = v2 + OBJC_IVAR____TtC7NewsUI215ShortcutsConfig_onRefresh;
    swift_beginAccess();
    v4 = *v3;
    if (*v3)
    {
      v5 = *(v3 + 8);

      v4(v6);
      sub_2187FABEC(v4, v5);
    }
  }

  return sub_218847324(a1, *(a1 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_subscriptionService));
}

uint64_t sub_218847330(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a1;
  v10 = *a2;
  v11 = *MEMORY[0x277D85000];
  v12 = type metadata accessor for TodayPrewarmResult(0);
  v23 = *(v12 - 8);
  v24 = v12;
  v13 = *(v23 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v25[0] = a3;
  v25[1] = a4;
  v25[2] = a5;
  v25[3] = a6;
  v25[0] = (*(*((v11 & v10) + 0x58) + 8))(v22, v25, *((v11 & v10) + 0x50), v14);
  v15 = MEMORY[0x277D6D888];
  sub_21880BB54(0, &qword_280EE56A0, MEMORY[0x277D6D888]);
  sub_21880BB10(&qword_280EE56B0, &qword_280EE56A0, v15, MEMORY[0x277D6D890]);
  sub_219BE6E84();
  sub_2188482CC(v22, &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v17 = swift_allocObject();
  sub_21880BBE4(&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for TodayPrewarmResult);
  v18 = sub_219BE2E54();
  v19 = sub_219BE2F74();

  return v19;
}

uint64_t sub_2188475BC()
{
  v1 = *(type metadata accessor for TodayPrewarmResult(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = type metadata accessor for TodayExpandResult(0);
  v4 = *(v3 + 28);
  v5 = sub_219BEC514();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  v7 = *(v3 + 32);
  v8 = sub_219BE6DF4();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v2 + v7, 1, v8))
  {
    (*(v9 + 8))(v2 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_2188477B4(uint64_t a1, __int128 *a2)
{
  v5 = type metadata accessor for TodayPrewarmBlueprintModifier(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  v11 = *v2;
  sub_218847A50(a1, &v16 - v9, type metadata accessor for TodayPrewarmResult);
  sub_218718690(v11 + 16, &v10[v5[6]]);
  v12 = &v10[v5[5]];
  v13 = a2[1];
  v16 = *a2;
  *v12 = v16;
  *(v12 + 1) = v13;
  v10[v5[7]] = 0;
  sub_218847A50(v10, v7, type metadata accessor for TodayPrewarmBlueprintModifier);
  sub_218847AB8(0);
  swift_allocObject();
  sub_218847B70(qword_280EAE288, type metadata accessor for TodayPrewarmBlueprintModifier, &unk_219C72DE8);

  v14 = sub_219BE6E64();
  sub_21884826C(v10, type metadata accessor for TodayPrewarmBlueprintModifier);
  return v14;
}

uint64_t type metadata accessor for TodayPrewarmBlueprintModifier(uint64_t a1)
{
  result = qword_280EAE270;
  if (!qword_280EAE270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2188479AC(uint64_t a1)
{
  result = type metadata accessor for TodayPrewarmResult(319);
  if (v2 <= 0x3F)
  {
    result = sub_2186CFDE4(319, qword_280EC2CE0, &protocol descriptor for TodaySectionFactoryType);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_218847A50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_218847AB8(uint64_t a1)
{
  if (!qword_280EE56A0)
  {
    type metadata accessor for TodayModel(255);
    sub_2186EB3E8();
    sub_218847B70(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
    v1 = sub_219BE6E74();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE56A0);
    }
  }
}

uint64_t sub_218847B70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218847BB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218847C00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218847C90()
{
  sub_218847DF4(0, &qword_280E8BDD0, MEMORY[0x277D6DE60], MEMORY[0x277D84560]);
  v0 = sub_219BE81C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09EC0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D6DE48], v0);
  v6(v5 + v2, *MEMORY[0x277D6DE50], v0);
  v7 = sub_218847E58(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v7;
}

void sub_218847DF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218847E58(uint64_t a1)
{
  v2 = sub_219BE81C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_21884816C(0);
    v9 = sub_219BF72E4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_218751238(&qword_280EE4D88, MEMORY[0x277D6DE60], MEMORY[0x277D6DE68]);
      v16 = sub_219BF52E4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_218751238(&qword_280EE4D80, MEMORY[0x277D6DE60], MEMORY[0x277D6DE70]);
          v23 = sub_219BF53A4();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_21884816C(uint64_t a1)
{
  if (!qword_280E8D710)
  {
    sub_219BE81C4();
    sub_218751238(&qword_280EE4D88, MEMORY[0x277D6DE60], MEMORY[0x277D6DE68]);
    v1 = sub_219BF72F4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D710);
    }
  }
}

uint64_t sub_218848200(uint64_t a1)
{
  v2 = sub_218847C00(qword_280EAE288, type metadata accessor for TodayPrewarmBlueprintModifier, &unk_219C72DE8);

  return MEMORY[0x2821D4040](a1, v2);
}

uint64_t sub_21884826C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2188482E8(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v111 = a3;
  v112 = a2;
  v109 = a1;
  sub_218849C38(0, &unk_280EE4B30, MEMORY[0x277D6DF88]);
  v117 = v4;
  v116 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v115 = v100 - v5;
  v103 = sub_219BE72A4();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_219BE6DF4();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v118 = v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TodayGapLocation(0);
  MEMORY[0x28223BE20](v8 - 8);
  v105 = (v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v135 = sub_219BF0644();
  v141 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v134 = v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_219BF0BD4();
  v126 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v132 = v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FAD00(0);
  v13 = v12;
  v119 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v104 = v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v131 = v100 - v16;
  v17 = type metadata accessor for TodayFeedGroup(0);
  v128 = *(v17 - 8);
  MEMORY[0x28223BE20](v17 - 8);
  v136 = v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FAC34(0);
  MEMORY[0x28223BE20](v19 - 8);
  sub_21880B928(0);
  v124 = v20;
  v110 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TodayPrewarmResult(0);
  MEMORY[0x28223BE20](v23 - 8);
  v130 = v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = v100 - v26;
  v137 = v3;
  sub_218849FF8(v3, v100 - v26, type metadata accessor for TodayPrewarmResult);
  v28 = *(v27 + 2);
  v120 = v28 & 0x1FFFFFFFFFFFFFFFLL;

  sub_21884A060(v27, type metadata accessor for TodayExpandResult);
  v29 = type metadata accessor for TodayFeedServiceConfig(0);
  v30 = sub_218847C00(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
  sub_219BEF3D4();
  sub_219BEE784();

  v31 = sub_218847C00(&qword_280EE58E0, sub_2187FAD00, MEMORY[0x277D6D720]);
  v32 = sub_218847C00(&qword_280EE58F0, sub_2187FAD00, MEMORY[0x277D6D718]);
  v122 = v13;
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v13, v31, v32);
  v33 = type metadata accessor for TodayModel(0);
  v34 = sub_2186EB3E8();
  v35 = sub_218847C00(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
  v123 = v22;
  v36 = v119;
  v108 = v33;
  v107 = v34;
  v106 = v35;
  sub_219BEB1A4();
  v139 = v29;
  v140 = v28;
  v138 = v30;
  v37 = sub_219BEF3E4();
  v38 = *(v37 + 16);
  if (v38)
  {
    v39 = type metadata accessor for TodayPrewarmBlueprintModifier(0);
    v40 = v137;
    v129 = (v137 + *(v39 + 24));
    v41 = (*(v128 + 80) + 32) & ~*(v128 + 80);
    v100[1] = v37;
    v42 = v37 + v41;
    v128 = *(v128 + 72);
    v127 = (v141 + 8);
    ++v126;
    v121 = (v36 + 8);
    v125 = xmmword_219C0B8C0;
    v43 = v136;
    do
    {
      v141 = v38;
      sub_218849FF8(v42, v43, type metadata accessor for TodayFeedGroup);
      __swift_project_boxed_opaque_existential_1(v129, v129[3]);
      v44 = v130;
      sub_218849FF8(v40, v130, type metadata accessor for TodayPrewarmResult);
      v45 = *(v44 + 24);

      sub_21884A060(v44, type metadata accessor for TodayExpandResult);
      sub_219BEF3D4();
      v46 = v132;
      sub_219BEE7A4();

      sub_219BEF3D4();
      v47 = v46;
      v48 = v134;
      sub_219BEE844();

      v49 = v131;
      sub_21884A0C0(v43, v45, v47, v48, v131);

      (*v127)(v48, v135);
      (*v126)(v47, v133);
      sub_219BEB1E4();
      (*v121)(v49, v122);
      v43 = v136;
      v40 = v137;
      sub_21884A060(v136, type metadata accessor for TodayFeedGroup);
      v42 += v128;
      v38 = v141 - 1;
    }

    while (v141 != 1);
  }

  else
  {

    v40 = v137;
  }

  v50 = v140 >> 61;
  v51 = v118;
  v52 = v124;
  if ((v140 >> 61) <= 1)
  {
    v54 = v123;
    v53 = v40;
    if (!v50)
    {
      sub_21936DB68(0);
      swift_projectBox();
    }

    v63 = swift_allocObject();
    sub_218858D04(0, &qword_280E91AE0, MEMORY[0x277D32188]);
    swift_allocObject();

    *(v63 + 16) = sub_219BEE874();
    v64 = v105;
    *v105 = v63;
    v65 = *MEMORY[0x277D33090];
    sub_218858D04(0, &qword_280E90A00, MEMORY[0x277D33098]);
    v67 = v66;
    v68 = *(v66 - 8);
    (*(v68 + 104))(v64, v65, v66);
    (*(v68 + 56))(v64, 0, 1, v67);
    v69 = v104;
    sub_218858E34(v64, v104);
    sub_21884A060(v64, type metadata accessor for TodayGapLocation);
    v62 = v52;
    sub_219BEB1E4();
    (*(v119 + 8))(v69, v122);
  }

  else
  {
    v53 = v40;
    if (v50 == 2)
    {
      sub_21936DB68(0);
      swift_projectBox();
    }

    v54 = v123;

    if (sub_219BEE854())
    {
      v55 = swift_allocObject();
      sub_218858D04(0, &qword_280E91AE0, MEMORY[0x277D32188]);
      swift_allocObject();
      *(v55 + 16) = sub_219BEE874();
      v56 = v105;
      *v105 = v55;
      v57 = *MEMORY[0x277D33068];
      sub_218858D04(0, &qword_280E90A00, MEMORY[0x277D33098]);
      v59 = v58;
      v60 = *(v58 - 8);
      (*(v60 + 104))(v56, v57, v58);
      (*(v60 + 56))(v56, 0, 1, v59);
      v61 = v104;
      sub_218858E34(v56, v104);
      sub_21884A060(v56, type metadata accessor for TodayGapLocation);
      v62 = v52;
      sub_219BEB1E4();
      (*(v119 + 8))(v61, v122);
    }

    else
    {
      v62 = v52;
    }
  }

  sub_219BEF3D4();
  sub_219BEEFF4();
  sub_219BEEFE4();
  v70 = sub_219BEEFC4();

  v71 = 0;
  if (v70)
  {
    v71 = sub_219BEDC74();
  }

  else
  {
    v145[1] = 0;
    v145[2] = 0;
  }

  v72 = v62;
  v145[0] = v70;
  v146 = v71;
  sub_219BEB2C4();

  v73 = v51;
  sub_218859624(v53, v54, v51);
  sub_2188552DC();
  sub_219BE78F4();
  if (*(v53 + *(type metadata accessor for TodayPrewarmBlueprintModifier(0) + 28)) == 1)
  {
    sub_219BEFAB4();
    sub_218847C00(&unk_280E91270, MEMORY[0x277D32878], MEMORY[0x277D32870]);
    v142 = 0u;
    v143 = 0u;
    v74 = v101;
    sub_219BE7284();
    sub_21936DADC(0);
    v76 = *(v75 + 48);
    v77 = *(v75 + 64);
    v78 = v110;
    v79 = v115;
    (*(v110 + 16))(v115, v54, v72);
    v80 = v113;
    v81 = v73;
    v82 = v114;
    (*(v113 + 16))(&v79[v76], v81, v114);
    v83 = v102;
    v84 = v103;
    (*(v102 + 16))(&v79[v77], v74, v103);
    v85 = v116;
    v86 = v117;
    (*(v116 + 104))(v79, *MEMORY[0x277D6DF58], v117);
    v112(v79);

    (*(v85 + 8))(v79, v86);
    v87 = v74;
    v88 = v124;
    v89 = v82;
    v73 = v118;
    v90 = v84;
    v54 = v123;
    (*(v83 + 8))(v87, v90);
  }

  else
  {
    sub_218847C00(&qword_280EE3730, sub_21880B928, MEMORY[0x277D6EC70]);
    sub_219BF5DF4();
    sub_219BF5E84();
    if (v142 == v144)
    {
      sub_218859B24(0);
      v92 = *(v91 + 48);
      v78 = v110;
      v93 = v115;
      (*(v110 + 16))(v115, v54, v72);
      v80 = v113;
      v89 = v114;
      (*(v113 + 16))(&v93[v92], v73, v114);
      v94 = v116;
      v88 = v72;
      v95 = v117;
      (*(v116 + 104))(v93, *MEMORY[0x277D6DF70], v117);
    }

    else
    {
      v88 = v72;
      __swift_project_boxed_opaque_existential_1(v145, v146);
      v96 = sub_219BE6E54();
      v95 = v117;
      v89 = v114;
      v78 = v110;
      v80 = v113;
      if (v96)
      {
        v94 = v116;
        v93 = v115;
        (*(v116 + 104))(v115, *MEMORY[0x277D6DF80], v117);
      }

      else
      {
        sub_218859B24(0);
        v98 = *(v97 + 48);
        v93 = v115;
        (*(v78 + 16))(v115, v54, v88);
        (*(v80 + 16))(&v93[v98], v73, v89);
        v94 = v116;
        (*(v116 + 104))(v93, *MEMORY[0x277D6DF70], v95);
      }
    }

    v112(v93);

    (*(v94 + 8))(v93, v95);
  }

  (*(v80 + 8))(v73, v89);
  (*(v78 + 8))(v54, v88);
  return __swift_destroy_boxed_opaque_existential_1(v145);
}

uint64_t sub_21884977C()
{

  return swift_deallocObject();
}

void sub_2188497B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_218A1ABB8(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218849878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_2186EF594(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218849938(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_218ADF7A8(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2188499F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_218F70C20(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218849AB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_2186EFA14(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218849B78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_2186EFA5C(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218849C38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_218847C00(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218849CF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_2186EFAA4(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218849DB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_2186EFAEC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218849E78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_219693814(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218849F38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = sub_2186EB3E8();
    v8[3] = sub_2186DFEF0(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218849FF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21884A060(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21884A0C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v952 = a4;
  v999 = a2;
  v1000 = a3;
  v1001 = a5;
  v951 = type metadata accessor for FoodTodayFeedGroup(0);
  MEMORY[0x28223BE20](v951);
  v976 = &v868 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v949 = type metadata accessor for ChannelPickerTodayFeedGroup(0);
  MEMORY[0x28223BE20](v949);
  v975 = &v868 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v948 = type metadata accessor for SavedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v948);
  v950 = &v868 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v947 = type metadata accessor for ChannelTodayFeedGroup(0);
  MEMORY[0x28223BE20](v947);
  v974 = &v868 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v953 = type metadata accessor for ShortcutsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v953);
  v954 = &v868 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v943 = type metadata accessor for IntroToSportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v943);
  v973 = &v868 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v942 = type metadata accessor for MySportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v942);
  v972 = &v868 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v941 = type metadata accessor for EngagementTodayFeedGroup(0);
  MEMORY[0x28223BE20](v941);
  v946 = &v868 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v940 = type metadata accessor for SharedWithYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v940);
  v971 = &v868 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v939 = type metadata accessor for SeenContentMarkTodayFeedGroup(0);
  MEMORY[0x28223BE20](v939);
  v970 = &v868 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v938 = type metadata accessor for SuggestionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v938);
  v969 = &v868 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v937 = type metadata accessor for SpotlightTodayFeedGroup(0);
  MEMORY[0x28223BE20](v937);
  v968 = &v868 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v945 = sub_219BED544();
  v944 = *(v945 - 8);
  MEMORY[0x28223BE20](v945);
  v966 = &v868 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v936 = type metadata accessor for SubscriptionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v936);
  v967 = &v868 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v882 = type metadata accessor for RecommendedIssuesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v882);
  v883 = &v868 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for MyMagazinesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v23 - 8);
  v884 = (&v868 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v881 = type metadata accessor for NewIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v881);
  v890 = &v868 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v880 = type metadata accessor for TrendingMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v880);
  v889 = &v868 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v879 = type metadata accessor for BestOfBundleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v879);
  v888 = &v868 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v878 = type metadata accessor for FeaturedIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v878);
  v887 = &v868 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v877 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v877);
  v886 = &v868 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v876 = type metadata accessor for FeaturedArticleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v876);
  v885 = &v868 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v934 = type metadata accessor for MagazineFeedGroup(0);
  MEMORY[0x28223BE20](v934);
  v935 = &v868 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v955 = &v868 - v33;
  v933 = type metadata accessor for NewFollowTodayFeedGroup(0);
  MEMORY[0x28223BE20](v933);
  v965 = &v868 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v932 = type metadata accessor for TopicTodayFeedGroup(0);
  MEMORY[0x28223BE20](v932);
  v964 = &v868 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v931 = type metadata accessor for MoreForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v931);
  v963 = &v868 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v930 = type metadata accessor for LatestStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v930);
  v962 = &v868 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v929 = type metadata accessor for MissedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v929);
  v961 = &v868 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v927 = type metadata accessor for ForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v927);
  v960 = &v868 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v923 = type metadata accessor for TrendingTodayFeedGroup(0);
  MEMORY[0x28223BE20](v923);
  v959 = &v868 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v921 = type metadata accessor for LocalNewsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v921);
  v958 = &v868 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v918 = type metadata accessor for NewspaperTodayFeedGroup(0);
  MEMORY[0x28223BE20](v918);
  v957 = &v868 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1009 = type metadata accessor for TodayModel(0);
  v985 = *(v1009 - 8);
  MEMORY[0x28223BE20](v1009);
  v1005 = &v868 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v1006 = (&v868 - v45);
  sub_218853400(0);
  v1007 = *(v46 - 8);
  v1008 = v46;
  MEMORY[0x28223BE20](v46);
  v995 = &v868 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v994 = &v868 - v49;
  MEMORY[0x28223BE20](v50);
  v993 = &v868 - v51;
  MEMORY[0x28223BE20](v52);
  v992 = &v868 - v53;
  MEMORY[0x28223BE20](v54);
  v991 = &v868 - v55;
  MEMORY[0x28223BE20](v56);
  v990 = &v868 - v57;
  MEMORY[0x28223BE20](v58);
  v989 = &v868 - v59;
  MEMORY[0x28223BE20](v60);
  v988 = &v868 - v61;
  MEMORY[0x28223BE20](v62);
  v987 = &v868 - v63;
  MEMORY[0x28223BE20](v64);
  v902 = &v868 - v65;
  MEMORY[0x28223BE20](v66);
  v983 = &v868 - v67;
  MEMORY[0x28223BE20](v68);
  v982 = &v868 - v69;
  MEMORY[0x28223BE20](v70);
  v981 = &v868 - v71;
  MEMORY[0x28223BE20](v72);
  v980 = &v868 - v73;
  MEMORY[0x28223BE20](v74);
  v979 = &v868 - v75;
  MEMORY[0x28223BE20](v76);
  v978 = &v868 - v77;
  MEMORY[0x28223BE20](v78);
  v901 = &v868 - v79;
  MEMORY[0x28223BE20](v80);
  v900 = &v868 - v81;
  MEMORY[0x28223BE20](v82);
  v899 = &v868 - v83;
  MEMORY[0x28223BE20](v84);
  v898 = &v868 - v85;
  MEMORY[0x28223BE20](v86);
  v897 = &v868 - v87;
  MEMORY[0x28223BE20](v88);
  v896 = &v868 - v89;
  MEMORY[0x28223BE20](v90);
  v895 = &v868 - v91;
  MEMORY[0x28223BE20](v92);
  v894 = &v868 - v93;
  MEMORY[0x28223BE20](v94);
  v893 = &v868 - v95;
  MEMORY[0x28223BE20](v96);
  v892 = &v868 - v97;
  sub_218853494(0);
  v905 = v98;
  v904 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v928 = &v868 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v100);
  v926 = &v868 - v101;
  MEMORY[0x28223BE20](v102);
  v925 = &v868 - v103;
  MEMORY[0x28223BE20](v104);
  v924 = &v868 - v105;
  MEMORY[0x28223BE20](v106);
  v922[1] = &v868 - v107;
  MEMORY[0x28223BE20](v108);
  v903 = &v868 - v109;
  MEMORY[0x28223BE20](v110);
  v922[0] = &v868 - v111;
  MEMORY[0x28223BE20](v112);
  v920 = &v868 - v113;
  MEMORY[0x28223BE20](v114);
  v919 = &v868 - v115;
  MEMORY[0x28223BE20](v116);
  v917 = &v868 - v117;
  MEMORY[0x28223BE20](v118);
  v916 = &v868 - v119;
  MEMORY[0x28223BE20](v120);
  v977 = &v868 - v121;
  MEMORY[0x28223BE20](v122);
  v875 = &v868 - v123;
  MEMORY[0x28223BE20](v124);
  v874 = &v868 - v125;
  MEMORY[0x28223BE20](v126);
  v873 = &v868 - v127;
  MEMORY[0x28223BE20](v128);
  v872 = &v868 - v129;
  MEMORY[0x28223BE20](v130);
  v871 = &v868 - v131;
  MEMORY[0x28223BE20](v132);
  v870 = &v868 - v133;
  MEMORY[0x28223BE20](v134);
  v915 = &v868 - v135;
  MEMORY[0x28223BE20](v136);
  v914 = &v868 - v137;
  MEMORY[0x28223BE20](v138);
  v913 = &v868 - v139;
  MEMORY[0x28223BE20](v140);
  v912 = &v868 - v141;
  MEMORY[0x28223BE20](v142);
  v911 = &v868 - v143;
  MEMORY[0x28223BE20](v144);
  v910 = &v868 - v145;
  MEMORY[0x28223BE20](v146);
  v909 = &v868 - v147;
  MEMORY[0x28223BE20](v148);
  v908 = &v868 - v149;
  MEMORY[0x28223BE20](v150);
  v907 = &v868 - v151;
  MEMORY[0x28223BE20](v152);
  v906 = &v868 - v153;
  v154 = sub_219BF1904();
  v155 = *(v154 - 8);
  v997 = v154;
  v998 = v155;
  MEMORY[0x28223BE20](v154);
  v996 = &v868 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0);
  v984 = type metadata accessor for CuratedTodayFeedGroup(0);
  MEMORY[0x28223BE20](v984);
  v956 = &v868 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v158);
  v160 = &v868 - v159;
  v161 = type metadata accessor for TodayFeedGroup(0);
  MEMORY[0x28223BE20](v161);
  v1002 = &v868 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v163);
  v165 = &v868 - v164;
  v166 = sub_219BEF8A4();
  v167 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v169 = &v868 - ((v168 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = a1;
  v171 = sub_21882B7BC();
  if (v171)
  {
    v1003 = v5;
    v172 = [v171 identifier];
    swift_unknownObjectRelease();
    v173 = sub_219BF5414();
    v986 = v174;

    sub_218853560(v170, v165, type metadata accessor for TodayFeedGroup);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v891 = v161;
    v869 = v173;
    if (EnumCaseMultiPayload)
    {
      sub_2188536F8(v165, type metadata accessor for TodayFeedGroup);
      (*(v167 + 104))(v169, *MEMORY[0x277D32768], v166);
    }

    else
    {
      sub_2187C5960(v165, v160, type metadata accessor for CuratedTodayFeedGroup);
      (*(v167 + 16))(v169, &v160[*(v984 + 28)], v166);
      sub_2188536F8(v160, type metadata accessor for CuratedTodayFeedGroup);
    }

    v176 = sub_219BEF894();
    (*(v167 + 8))(v169, v166);
    v177 = v1003;
    v178 = v986;
    if ((v176 & 1) == 0)
    {
      v201 = v1004[5];
      v202 = [v201 mutedTagIDs];
      if (!v202)
      {
LABEL_281:
        __break(1u);
        goto LABEL_282;
      }

      v203 = v202;
      v204 = sub_219BF5D44();

      v205 = v869;
      LOBYTE(v203) = sub_2188537B8(v869, v178, v204);

      if (v203)
      {
        goto LABEL_18;
      }

      v206 = [v201 ignoredTagIDs];
      if (!v206)
      {
LABEL_282:
        __break(1u);
        JUMPOUT(0x21885339CLL);
      }

      v207 = v206;
      v208 = sub_219BF5D44();

      LOBYTE(v207) = sub_2188537B8(v205, v178, v208);

      if (v207)
      {
LABEL_18:
        type metadata accessor for TodaySectionFactoryError(0);
        sub_2186EF9CC(&qword_27CC12258, type metadata accessor for TodaySectionFactoryError, &unk_219C3A0D4);
        swift_allocError();
        *v209 = v205;
        v209[1] = v178;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return;
      }
    }

    v6 = v177;
  }

  v986 = sub_2188538B0(MEMORY[0x277D84F90]);
  v1012 = v986;
  v179 = v1002;
  sub_218853560(v170, v1002, type metadata accessor for TodayFeedGroup);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v435 = v957;
      sub_2187C5960(v179, v957, type metadata accessor for NewspaperTodayFeedGroup);
      v436 = swift_allocBox();
      sub_218853560(v435, v437, type metadata accessor for NewspaperTodayFeedGroup);
      v438 = v1004[11];
      v439 = v996;
      sub_219BED874();
      v440 = sub_2188539DC(v436 | 4);
      v442 = v441;
      v443 = sub_219BF18F4();
      MEMORY[0x28223BE20](v443);
      v444 = v1000;
      *(&v868 - 6) = v999;
      *(&v868 - 5) = v438;
      *(&v868 - 4) = v444;
      *(&v868 - 3) = v440;
      *(&v868 - 2) = v442;
      sub_2188555F4(sub_218855814, (&v868 - 8), v443, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);
      v446 = v445;

      (*(v998 + 8))(v439, v997);
      v1011 = v436 | 4;
      v447 = *(v446 + 16);
      if (v447)
      {
        v1003 = v6;
        v1010 = MEMORY[0x277D84F90];
        v1004 = v436;

        sub_21885760C(0, v447, 0);
        v448 = v1010;
        v449 = *(v985 + 80);
        v1002 = v446;
        v450 = v446 + ((v449 + 32) & ~v449);
        v451 = *(v985 + 72);
        v452 = v893;
        do
        {
          v453 = v1006;
          sub_218853560(v450, v1006, type metadata accessor for TodayModel);
          sub_218853560(v453, v1005, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
          sub_219BE5FB4();
          sub_2188536F8(v453, type metadata accessor for TodayModel);
          v1010 = v448;
          v455 = *(v448 + 16);
          v454 = *(v448 + 24);
          if (v455 >= v454 >> 1)
          {
            sub_21885760C((v454 > 1), v455 + 1, 1);
            v448 = v1010;
          }

          *(v448 + 16) = v455 + 1;
          (*(v1007 + 32))(v448 + ((*(v1007 + 80) + 32) & ~*(v1007 + 80)) + *(v1007 + 72) * v455, v452, v1008);
          v450 += v451;
          --v447;
        }

        while (v447);
      }

      else
      {

        v448 = MEMORY[0x277D84F90];
      }

      v707 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
      v708 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v448, v1008, v707, v708);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
      sub_219BE6924();

      v462 = type metadata accessor for NewspaperTodayFeedGroup;
      v688 = &v989;
      goto LABEL_276;
    case 2u:
      v351 = v958;
      sub_2187C5960(v179, v958, type metadata accessor for LocalNewsTodayFeedGroup);
      v352 = swift_allocBox();
      sub_218853560(v351, v353, type metadata accessor for LocalNewsTodayFeedGroup);
      v354 = v1004[11];
      v355 = v996;
      sub_219BED874();
      v356 = sub_2188539DC(v352 | 6);
      v358 = v357;
      v359 = sub_219BF18F4();
      MEMORY[0x28223BE20](v359);
      v360 = v1000;
      *(&v868 - 6) = v999;
      *(&v868 - 5) = v354;
      *(&v868 - 4) = v360;
      *(&v868 - 3) = v356;
      *(&v868 - 2) = v358;
      sub_2188555F4(sub_218855814, (&v868 - 8), v359, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);
      v362 = v361;

      (*(v998 + 8))(v355, v997);
      v1011 = v352 | 6;
      v363 = *(v362 + 16);
      if (v363)
      {
        v1003 = v6;
        v1010 = MEMORY[0x277D84F90];
        v1004 = v352;

        sub_21885760C(0, v363, 0);
        v364 = v1010;
        v365 = *(v985 + 80);
        v1002 = v362;
        v366 = v362 + ((v365 + 32) & ~v365);
        v367 = *(v985 + 72);
        v368 = v894;
        do
        {
          v369 = v1006;
          sub_218853560(v366, v1006, type metadata accessor for TodayModel);
          sub_218853560(v369, v1005, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
          sub_219BE5FB4();
          sub_2188536F8(v369, type metadata accessor for TodayModel);
          v1010 = v364;
          v371 = *(v364 + 16);
          v370 = *(v364 + 24);
          if (v371 >= v370 >> 1)
          {
            sub_21885760C((v370 > 1), v371 + 1, 1);
            v364 = v1010;
          }

          *(v364 + 16) = v371 + 1;
          (*(v1007 + 32))(v364 + ((*(v1007 + 80) + 32) & ~*(v1007 + 80)) + *(v1007 + 72) * v371, v368, v1008);
          v366 += v367;
          --v363;
        }

        while (v363);
      }

      else
      {

        v364 = MEMORY[0x277D84F90];
      }

      v697 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
      v698 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v364, v1008, v697, v698);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
      sub_219BE6924();

      v462 = type metadata accessor for LocalNewsTodayFeedGroup;
      v688 = &v990;
      goto LABEL_276;
    case 3u:
      v393 = v959;
      sub_2187C5960(v179, v959, type metadata accessor for TrendingTodayFeedGroup);
      v394 = swift_allocBox();
      sub_218853560(v393, v395, type metadata accessor for TrendingTodayFeedGroup);
      v396 = v1004[11];
      v397 = v996;
      sub_219BED874();
      v398 = sub_2188539DC(v394 | 0x1000000000000000);
      v400 = v399;
      v401 = sub_219BF18F4();
      MEMORY[0x28223BE20](v401);
      v402 = v1000;
      *(&v868 - 6) = v999;
      *(&v868 - 5) = v396;
      *(&v868 - 4) = v402;
      *(&v868 - 3) = v398;
      *(&v868 - 2) = v400;
      sub_2188555F4(sub_218855814, (&v868 - 8), v401, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);
      v404 = v403;

      (*(v998 + 8))(v397, v997);
      v1011 = v394 | 0x1000000000000000;
      v405 = *(v404 + 16);
      if (v405)
      {
        v1003 = v6;
        v1010 = MEMORY[0x277D84F90];
        v1004 = v394;

        sub_21885760C(0, v405, 0);
        v406 = v1010;
        v407 = *(v985 + 80);
        v1002 = v404;
        v408 = v404 + ((v407 + 32) & ~v407);
        v409 = *(v985 + 72);
        v410 = v895;
        do
        {
          v411 = v1006;
          sub_218853560(v408, v1006, type metadata accessor for TodayModel);
          sub_218853560(v411, v1005, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
          sub_219BE5FB4();
          sub_2188536F8(v411, type metadata accessor for TodayModel);
          v1010 = v406;
          v413 = *(v406 + 16);
          v412 = *(v406 + 24);
          if (v413 >= v412 >> 1)
          {
            sub_21885760C((v412 > 1), v413 + 1, 1);
            v406 = v1010;
          }

          *(v406 + 16) = v413 + 1;
          (*(v1007 + 32))(v406 + ((*(v1007 + 80) + 32) & ~*(v1007 + 80)) + *(v1007 + 72) * v413, v410, v1008);
          v408 += v409;
          --v405;
        }

        while (v405);
      }

      else
      {

        v406 = MEMORY[0x277D84F90];
      }

      v701 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
      v702 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v406, v1008, v701, v702);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
      sub_219BE6924();

      v462 = type metadata accessor for TrendingTodayFeedGroup;
      v688 = &v991;
      goto LABEL_276;
    case 4u:
      v273 = v960;
      sub_2187C5960(v179, v960, type metadata accessor for ForYouTodayFeedGroup);
      v274 = swift_allocBox();
      sub_218853560(v273, v275, type metadata accessor for ForYouTodayFeedGroup);
      v276 = v1004[11];
      v277 = v996;
      sub_219BED874();
      v278 = sub_2188539DC(v274 | 0x1000000000000002);
      v280 = v279;
      v281 = sub_219BF18F4();
      MEMORY[0x28223BE20](v281);
      v282 = v1000;
      *(&v868 - 6) = v999;
      *(&v868 - 5) = v276;
      *(&v868 - 4) = v282;
      *(&v868 - 3) = v278;
      *(&v868 - 2) = v280;
      sub_2188555F4(sub_218855814, (&v868 - 8), v281, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);
      v284 = v283;

      (*(v998 + 8))(v277, v997);
      v1011 = v274 | 0x1000000000000002;
      v285 = *(v284 + 16);
      if (v285)
      {
        v1003 = v6;
        v1010 = MEMORY[0x277D84F90];
        v1004 = v274;

        sub_21885760C(0, v285, 0);
        v286 = v1010;
        v287 = *(v985 + 80);
        v1002 = v284;
        v288 = v284 + ((v287 + 32) & ~v287);
        v289 = *(v985 + 72);
        v290 = v896;
        do
        {
          v291 = v1006;
          sub_218853560(v288, v1006, type metadata accessor for TodayModel);
          sub_218853560(v291, v1005, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
          sub_219BE5FB4();
          sub_2188536F8(v291, type metadata accessor for TodayModel);
          v1010 = v286;
          v293 = *(v286 + 16);
          v292 = *(v286 + 24);
          if (v293 >= v292 >> 1)
          {
            sub_21885760C((v292 > 1), v293 + 1, 1);
            v286 = v1010;
          }

          *(v286 + 16) = v293 + 1;
          (*(v1007 + 32))(v286 + ((*(v1007 + 80) + 32) & ~*(v1007 + 80)) + *(v1007 + 72) * v293, v290, v1008);
          v288 += v289;
          --v285;
        }

        while (v285);
      }

      else
      {

        v286 = MEMORY[0x277D84F90];
      }

      v693 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
      v694 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v286, v1008, v693, v694);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
      sub_219BE6924();

      v462 = type metadata accessor for ForYouTodayFeedGroup;
      v688 = &v992;
      goto LABEL_276;
    case 5u:
      v481 = v961;
      sub_2187C5960(v179, v961, type metadata accessor for MissedStoriesTodayFeedGroup);
      v482 = swift_allocBox();
      sub_218853560(v481, v483, type metadata accessor for MissedStoriesTodayFeedGroup);
      v484 = v1004[11];
      v485 = v996;
      sub_219BED874();
      v486 = sub_2188539DC(v482 | 0x1000000000000004);
      v488 = v487;
      v489 = sub_219BF18F4();
      MEMORY[0x28223BE20](v489);
      v490 = v1000;
      *(&v868 - 6) = v999;
      *(&v868 - 5) = v484;
      *(&v868 - 4) = v490;
      *(&v868 - 3) = v486;
      *(&v868 - 2) = v488;
      sub_2188555F4(sub_218855814, (&v868 - 8), v489, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);
      v492 = v491;

      (*(v998 + 8))(v485, v997);
      v1011 = v482 | 0x1000000000000004;
      v493 = *(v492 + 16);
      if (v493)
      {
        v1003 = v6;
        v1010 = MEMORY[0x277D84F90];
        v1004 = v482;

        sub_21885760C(0, v493, 0);
        v494 = v1010;
        v495 = *(v985 + 80);
        v1002 = v492;
        v496 = v492 + ((v495 + 32) & ~v495);
        v497 = *(v985 + 72);
        v498 = v897;
        do
        {
          v499 = v1006;
          sub_218853560(v496, v1006, type metadata accessor for TodayModel);
          sub_218853560(v499, v1005, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
          sub_219BE5FB4();
          sub_2188536F8(v499, type metadata accessor for TodayModel);
          v1010 = v494;
          v501 = *(v494 + 16);
          v500 = *(v494 + 24);
          if (v501 >= v500 >> 1)
          {
            sub_21885760C((v500 > 1), v501 + 1, 1);
            v494 = v1010;
          }

          *(v494 + 16) = v501 + 1;
          (*(v1007 + 32))(v494 + ((*(v1007 + 80) + 32) & ~*(v1007 + 80)) + *(v1007 + 72) * v501, v498, v1008);
          v496 += v497;
          --v493;
        }

        while (v493);
      }

      else
      {

        v494 = MEMORY[0x277D84F90];
      }

      v709 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
      v710 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v494, v1008, v709, v710);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
      sub_219BE6924();

      v462 = type metadata accessor for MissedStoriesTodayFeedGroup;
      v688 = &v993;
      goto LABEL_276;
    case 6u:
      v544 = v962;
      sub_2187C5960(v179, v962, type metadata accessor for LatestStoriesTodayFeedGroup);
      v545 = swift_allocBox();
      sub_218853560(v544, v546, type metadata accessor for LatestStoriesTodayFeedGroup);
      v547 = v1004[11];
      v548 = v996;
      sub_219BED874();
      v549 = sub_2188539DC(v545 | 0x1000000000000006);
      v551 = v550;
      v552 = sub_219BF18F4();
      MEMORY[0x28223BE20](v552);
      v553 = v1000;
      *(&v868 - 6) = v999;
      *(&v868 - 5) = v547;
      *(&v868 - 4) = v553;
      *(&v868 - 3) = v549;
      *(&v868 - 2) = v551;
      sub_2188555F4(sub_218855814, (&v868 - 8), v552, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);
      v555 = v554;

      (*(v998 + 8))(v548, v997);
      v1011 = v545 | 0x1000000000000006;
      v556 = *(v555 + 16);
      if (v556)
      {
        v1003 = v6;
        v1010 = MEMORY[0x277D84F90];
        v1004 = v545;

        sub_21885760C(0, v556, 0);
        v557 = v1010;
        v558 = *(v985 + 80);
        v1002 = v555;
        v559 = v555 + ((v558 + 32) & ~v558);
        v560 = *(v985 + 72);
        v561 = v898;
        do
        {
          v562 = v1006;
          sub_218853560(v559, v1006, type metadata accessor for TodayModel);
          sub_218853560(v562, v1005, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
          sub_219BE5FB4();
          sub_2188536F8(v562, type metadata accessor for TodayModel);
          v1010 = v557;
          v564 = *(v557 + 16);
          v563 = *(v557 + 24);
          if (v564 >= v563 >> 1)
          {
            sub_21885760C((v563 > 1), v564 + 1, 1);
            v557 = v1010;
          }

          *(v557 + 16) = v564 + 1;
          (*(v1007 + 32))(v557 + ((*(v1007 + 80) + 32) & ~*(v1007 + 80)) + *(v1007 + 72) * v564, v561, v1008);
          v559 += v560;
          --v556;
        }

        while (v556);
      }

      else
      {

        v557 = MEMORY[0x277D84F90];
      }

      v715 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
      v716 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v557, v1008, v715, v716);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
      sub_219BE6924();

      v462 = type metadata accessor for LatestStoriesTodayFeedGroup;
      v688 = &v994;
      goto LABEL_276;
    case 7u:
      v414 = v963;
      sub_2187C5960(v179, v963, type metadata accessor for MoreForYouTodayFeedGroup);
      v415 = swift_allocBox();
      sub_218853560(v414, v416, type metadata accessor for MoreForYouTodayFeedGroup);
      v417 = v1004[11];
      v418 = v996;
      sub_219BED874();
      v419 = sub_2188539DC(v415 | 0x2000000000000000);
      v421 = v420;
      v422 = sub_219BF18F4();
      MEMORY[0x28223BE20](v422);
      v423 = v1000;
      *(&v868 - 6) = v999;
      *(&v868 - 5) = v417;
      *(&v868 - 4) = v423;
      *(&v868 - 3) = v419;
      *(&v868 - 2) = v421;
      sub_2188555F4(sub_218855814, (&v868 - 8), v422, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);
      v425 = v424;

      (*(v998 + 8))(v418, v997);
      v1011 = v415 | 0x2000000000000000;
      v426 = *(v425 + 16);
      if (v426)
      {
        v1003 = v6;
        v1010 = MEMORY[0x277D84F90];
        v1004 = v415;

        sub_21885760C(0, v426, 0);
        v427 = v1010;
        v428 = *(v985 + 80);
        v1002 = v425;
        v429 = v425 + ((v428 + 32) & ~v428);
        v430 = *(v985 + 72);
        v431 = v899;
        do
        {
          v432 = v1006;
          sub_218853560(v429, v1006, type metadata accessor for TodayModel);
          sub_218853560(v432, v1005, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
          sub_219BE5FB4();
          sub_2188536F8(v432, type metadata accessor for TodayModel);
          v1010 = v427;
          v434 = *(v427 + 16);
          v433 = *(v427 + 24);
          if (v434 >= v433 >> 1)
          {
            sub_21885760C((v433 > 1), v434 + 1, 1);
            v427 = v1010;
          }

          *(v427 + 16) = v434 + 1;
          (*(v1007 + 32))(v427 + ((*(v1007 + 80) + 32) & ~*(v1007 + 80)) + *(v1007 + 72) * v434, v431, v1008);
          v429 += v430;
          --v426;
        }

        while (v426);
      }

      else
      {

        v427 = MEMORY[0x277D84F90];
      }

      v703 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
      v704 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v427, v1008, v703, v704);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
      sub_219BE6924();

      v462 = type metadata accessor for MoreForYouTodayFeedGroup;
      v688 = &v995;
      goto LABEL_276;
    case 8u:
      v607 = v964;
      sub_2187C5960(v179, v964, type metadata accessor for TopicTodayFeedGroup);
      v608 = swift_allocBox();
      sub_218853560(v607, v609, type metadata accessor for TopicTodayFeedGroup);
      v610 = v1004[11];
      v611 = v996;
      sub_219BED874();
      v612 = sub_2188539DC(v608 | 0x2000000000000002);
      v614 = v613;
      v615 = sub_219BF18F4();
      MEMORY[0x28223BE20](v615);
      v616 = v1000;
      *(&v868 - 6) = v999;
      *(&v868 - 5) = v610;
      *(&v868 - 4) = v616;
      *(&v868 - 3) = v612;
      *(&v868 - 2) = v614;
      sub_2188555F4(sub_218855814, (&v868 - 8), v615, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);
      v618 = v617;

      (*(v998 + 8))(v611, v997);
      v1011 = v608 | 0x2000000000000002;
      v619 = *(v618 + 16);
      if (v619)
      {
        v1003 = v6;
        v1010 = MEMORY[0x277D84F90];
        v1004 = v608;

        sub_21885760C(0, v619, 0);
        v620 = v1010;
        v621 = *(v985 + 80);
        v1002 = v618;
        v622 = v618 + ((v621 + 32) & ~v621);
        v623 = *(v985 + 72);
        v624 = v900;
        do
        {
          v625 = v1006;
          sub_218853560(v622, v1006, type metadata accessor for TodayModel);
          sub_218853560(v625, v1005, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
          sub_219BE5FB4();
          sub_2188536F8(v625, type metadata accessor for TodayModel);
          v1010 = v620;
          v627 = *(v620 + 16);
          v626 = *(v620 + 24);
          if (v627 >= v626 >> 1)
          {
            sub_21885760C((v626 > 1), v627 + 1, 1);
            v620 = v1010;
          }

          *(v620 + 16) = v627 + 1;
          (*(v1007 + 32))(v620 + ((*(v1007 + 80) + 32) & ~*(v1007 + 80)) + *(v1007 + 72) * v627, v624, v1008);
          v622 += v623;
          --v619;
        }

        while (v619);
      }

      else
      {

        v620 = MEMORY[0x277D84F90];
      }

      v721 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
      v722 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v620, v1008, v721, v722);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
      sub_219BE6924();

      v462 = type metadata accessor for TopicTodayFeedGroup;
      v688 = &v996;
      goto LABEL_276;
    case 9u:
      v305 = v179;
      v306 = v955;
      sub_2187C5960(v305, v955, type metadata accessor for MagazineFeedGroup);
      v307 = v935;
      sub_218853560(v306, v935, type metadata accessor for MagazineFeedGroup);
      v308 = swift_getEnumCaseMultiPayload();
      if (v308 > 5)
      {
        if (v308 > 9)
        {
          if (v308 == 10)
          {
            v832 = v889;
            sub_2187C5960(v307, v889, type metadata accessor for TrendingMagazineFeedGroup);
            v833 = swift_allocBox();
            sub_218853560(v832, v834, type metadata accessor for TrendingMagazineFeedGroup);
            v835 = v1004[11];
            v836 = v996;
            sub_219BED874();
            v837 = sub_2188539DC(v833 | 0x7000000000000006);
            v839 = v838;
            v840 = sub_219BF18F4();
            MEMORY[0x28223BE20](v840);
            v841 = v1000;
            *(&v868 - 6) = v999;
            *(&v868 - 5) = v835;
            *(&v868 - 4) = v841;
            *(&v868 - 3) = v837;
            *(&v868 - 2) = v839;
            sub_2188555F4(sub_218855814, (&v868 - 8), v840, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);
            v843 = v842;

            (*(v998 + 8))(v836, v997);
            v1011 = v833 | 0x7000000000000006;
            v844 = *(v843 + 16);
            if (v844)
            {
              v1003 = v6;
              v1010 = MEMORY[0x277D84F90];
              v1004 = v833;

              sub_218C33FB8(v844);
              v845 = *(v985 + 80);
              v1002 = v843;
              v846 = v843 + ((v845 + 32) & ~v845);
              v847 = *(v985 + 72);
              do
              {
                v848 = v1006;
                sub_218853560(v846, v1006, type metadata accessor for TodayModel);
                sub_218853560(v848, v1005, type metadata accessor for TodayModel);
                sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
                sub_219BE5FB4();
                sub_2188536F8(v848, type metadata accessor for TodayModel);
                v849 = v1010;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_21885760C(0, *(v849 + 16) + 1, 1);
                  v849 = v1010;
                }

                v851 = *(v849 + 16);
                v850 = *(v849 + 24);
                v852 = v982;
                if (v851 >= v850 >> 1)
                {
                  sub_21885760C((v850 > 1), v851 + 1, 1);
                  v852 = v982;
                  v849 = v1010;
                }

                *(v849 + 16) = v851 + 1;
                (*(v1007 + 32))(v849 + ((*(v1007 + 80) + 32) & ~*(v1007 + 80)) + *(v1007 + 72) * v851, v852, v1008);
                v1010 = v849;
                v846 += v847;
                --v844;
              }

              while (v844);
            }

            else
            {

              v849 = MEMORY[0x277D84F90];
            }

            v862 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
            v863 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
            MEMORY[0x21CEB9170](v849, v1008, v862, v863);
            sub_2186EB3E8();
            sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
            sub_219BE6924();

            v746 = type metadata accessor for TrendingMagazineFeedGroup;
            v857 = &v921;
            goto LABEL_274;
          }

          if (v308 == 11)
          {
            v748 = v888;
            sub_2187C5960(v307, v888, type metadata accessor for BestOfBundleMagazineFeedGroup);
            v749 = swift_allocBox();
            sub_218853560(v748, v750, type metadata accessor for BestOfBundleMagazineFeedGroup);
            v751 = v1004[11];
            v752 = v996;
            sub_219BED874();
            v753 = sub_2188539DC(v749 | 0x7000000000000004);
            v755 = v754;
            v756 = sub_219BF18F4();
            MEMORY[0x28223BE20](v756);
            v757 = v1000;
            *(&v868 - 6) = v999;
            *(&v868 - 5) = v751;
            *(&v868 - 4) = v757;
            *(&v868 - 3) = v753;
            *(&v868 - 2) = v755;
            sub_2188555F4(sub_218855814, (&v868 - 8), v756, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);
            v759 = v758;

            (*(v998 + 8))(v752, v997);
            v1011 = v749 | 0x7000000000000004;
            v760 = *(v759 + 16);
            if (v760)
            {
              v1003 = v6;
              v1010 = MEMORY[0x277D84F90];
              v1004 = v749;

              sub_218C33FB8(v760);
              v761 = *(v985 + 80);
              v1002 = v759;
              v762 = v759 + ((v761 + 32) & ~v761);
              v763 = *(v985 + 72);
              do
              {
                v764 = v1006;
                sub_218853560(v762, v1006, type metadata accessor for TodayModel);
                sub_218853560(v764, v1005, type metadata accessor for TodayModel);
                sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
                sub_219BE5FB4();
                sub_2188536F8(v764, type metadata accessor for TodayModel);
                v765 = v1010;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_21885760C(0, *(v765 + 16) + 1, 1);
                  v765 = v1010;
                }

                v767 = *(v765 + 16);
                v766 = *(v765 + 24);
                v768 = v981;
                if (v767 >= v766 >> 1)
                {
                  sub_21885760C((v766 > 1), v767 + 1, 1);
                  v768 = v981;
                  v765 = v1010;
                }

                *(v765 + 16) = v767 + 1;
                (*(v1007 + 32))(v765 + ((*(v1007 + 80) + 32) & ~*(v1007 + 80)) + *(v1007 + 72) * v767, v768, v1008);
                v1010 = v765;
                v762 += v763;
                --v760;
              }

              while (v760);
            }

            else
            {

              v765 = MEMORY[0x277D84F90];
            }

            v866 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
            v867 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
            MEMORY[0x21CEB9170](v765, v1008, v866, v867);
            sub_2186EB3E8();
            sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
            sub_219BE6924();

            v746 = type metadata accessor for BestOfBundleMagazineFeedGroup;
            v857 = &v920;
            goto LABEL_274;
          }
        }

        else
        {
          if (v308 == 6)
          {
            v790 = v890;
            sub_2187C5960(v307, v890, type metadata accessor for NewIssueMagazineFeedGroup);
            v791 = swift_allocBox();
            sub_218853560(v790, v792, type metadata accessor for NewIssueMagazineFeedGroup);
            v793 = v1004[11];
            v794 = v996;
            sub_219BED874();
            v795 = sub_2188539DC(v791 | 0x8000000000000000);
            v797 = v796;
            v798 = sub_219BF18F4();
            MEMORY[0x28223BE20](v798);
            v799 = v1000;
            *(&v868 - 6) = v999;
            *(&v868 - 5) = v793;
            *(&v868 - 4) = v799;
            *(&v868 - 3) = v795;
            *(&v868 - 2) = v797;
            sub_2188555F4(sub_218855814, (&v868 - 8), v798, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);
            v801 = v800;

            (*(v998 + 8))(v794, v997);
            v1011 = v791 | 0x8000000000000000;
            v802 = *(v801 + 16);
            if (v802)
            {
              v1003 = v6;
              v1010 = MEMORY[0x277D84F90];
              v1004 = v791;

              sub_218C33FB8(v802);
              v803 = *(v985 + 80);
              v1002 = v801;
              v804 = v801 + ((v803 + 32) & ~v803);
              v805 = *(v985 + 72);
              do
              {
                v806 = v1006;
                sub_218853560(v804, v1006, type metadata accessor for TodayModel);
                sub_218853560(v806, v1005, type metadata accessor for TodayModel);
                sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
                sub_219BE5FB4();
                sub_2188536F8(v806, type metadata accessor for TodayModel);
                v807 = v1010;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_21885760C(0, *(v807 + 16) + 1, 1);
                  v807 = v1010;
                }

                v809 = *(v807 + 16);
                v808 = *(v807 + 24);
                v810 = v983;
                if (v809 >= v808 >> 1)
                {
                  sub_21885760C((v808 > 1), v809 + 1, 1);
                  v810 = v983;
                  v807 = v1010;
                }

                *(v807 + 16) = v809 + 1;
                (*(v1007 + 32))(v807 + ((*(v1007 + 80) + 32) & ~*(v1007 + 80)) + *(v1007 + 72) * v809, v810, v1008);
                v1010 = v807;
                v804 += v805;
                --v802;
              }

              while (v802);
            }

            else
            {

              v807 = MEMORY[0x277D84F90];
            }

            v858 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
            v859 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
            MEMORY[0x21CEB9170](v807, v1008, v858, v859);
            sub_2186EB3E8();
            sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
            sub_219BE6924();

            v746 = type metadata accessor for NewIssueMagazineFeedGroup;
            v857 = v922;
            goto LABEL_274;
          }

          if (v308 == 8)
          {
            v676 = v307;
            v628 = v883;
            sub_2187C5960(v676, v883, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
            v677 = swift_allocBox();
            v679 = sub_218853560(v628, v678, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
            v1011 = v677 | 0x8000000000000004;
            MEMORY[0x28223BE20](v679);
            v680 = v1000;
            *(&v868 - 4) = v1004;
            *(&v868 - 3) = v680;
            *(&v868 - 2) = v628;
            sub_21894522C(sub_218DE75C8, (&v868 - 6), v681);
            v683 = v682;
            v684 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
            v685 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
            MEMORY[0x21CEB9170](v683, v1008, v684, v685);
            sub_2186EB3E8();
            sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
            sub_219BE6924();
            sub_2188536F8(v955, type metadata accessor for MagazineFeedGroup);
            v633 = type metadata accessor for RecommendedIssuesMagazineFeedGroup;
LABEL_153:
            v462 = v633;
            v463 = v628;
            goto LABEL_277;
          }
        }

        goto LABEL_261;
      }

      if (v308 > 2)
      {
        if (v308 == 3)
        {
          v811 = v886;
          sub_2187C5960(v307, v886, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
          v812 = swift_allocBox();
          sub_218853560(v811, v813, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
          v814 = v1004[11];
          v815 = v996;
          sub_219BED874();
          v816 = sub_2188539DC(v812 | 0x7000000000000000);
          v818 = v817;
          v819 = sub_219BF18F4();
          MEMORY[0x28223BE20](v819);
          v820 = v1000;
          *(&v868 - 6) = v999;
          *(&v868 - 5) = v814;
          *(&v868 - 4) = v820;
          *(&v868 - 3) = v816;
          *(&v868 - 2) = v818;
          sub_2188555F4(sub_218855814, (&v868 - 8), v819, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);
          v822 = v821;

          (*(v998 + 8))(v815, v997);
          v1011 = v812 | 0x7000000000000000;
          v823 = *(v822 + 16);
          if (v823)
          {
            v1003 = v6;
            v1010 = MEMORY[0x277D84F90];
            v1004 = v812;

            sub_218C33FB8(v823);
            v824 = *(v985 + 80);
            v1002 = v822;
            v825 = v822 + ((v824 + 32) & ~v824);
            v826 = *(v985 + 72);
            do
            {
              v827 = v1006;
              sub_218853560(v825, v1006, type metadata accessor for TodayModel);
              sub_218853560(v827, v1005, type metadata accessor for TodayModel);
              sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
              sub_219BE5FB4();
              sub_2188536F8(v827, type metadata accessor for TodayModel);
              v828 = v1010;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_21885760C(0, *(v828 + 16) + 1, 1);
                v828 = v1010;
              }

              v830 = *(v828 + 16);
              v829 = *(v828 + 24);
              v831 = v979;
              if (v830 >= v829 >> 1)
              {
                sub_21885760C((v829 > 1), v830 + 1, 1);
                v831 = v979;
                v828 = v1010;
              }

              *(v828 + 16) = v830 + 1;
              (*(v1007 + 32))(v828 + ((*(v1007 + 80) + 32) & ~*(v1007 + 80)) + *(v1007 + 72) * v830, v831, v1008);
              v1010 = v828;
              v825 += v826;
              --v823;
            }

            while (v823);
          }

          else
          {

            v828 = MEMORY[0x277D84F90];
          }

          v860 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
          v861 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
          MEMORY[0x21CEB9170](v828, v1008, v860, v861);
          sub_2186EB3E8();
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
          sub_219BE6924();

          v746 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
          v857 = &v918;
          goto LABEL_274;
        }

        if (v308 != 5)
        {
          goto LABEL_261;
        }

        v727 = v884;
        sub_2187C5960(v307, v884, type metadata accessor for MyMagazinesMagazineFeedGroup);
        v728 = v1004;
        v729 = v1004[22];
        v730 = v1004[23];
        __swift_project_boxed_opaque_existential_1(v1004 + 19, v729);
        sub_2195ED0E0(v728 + 24, v729, v730);
        v732 = v731;
        sub_2186EBC7C(0);
        v734 = v733;
        v735 = swift_allocBox();
        v737 = v736;
        v738 = *(v734 + 48);
        sub_218853560(v727, v736, type metadata accessor for MyMagazinesMagazineFeedGroup);
        *(v737 + v738) = v732;
        v739 = v999;
        if (*(v999 + 16))
        {
          v740 = sub_21870F700(*v727, v727[1]);
          if (v741)
          {
            v742 = *(*(v739 + 56) + 8 * v740);
            v1011 = v735 | 0x8000000000000002;
            sub_2186E7F54(0, &qword_280E8BFF0, sub_218853400, MEMORY[0x277D84560]);
            v743 = swift_allocObject();
            *(v743 + 16) = xmmword_219C09BA0;
            *v1006 = v742;
            swift_storeEnumTagMultiPayload();
            sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
            swift_retain_n();

            sub_219BE5FB4();
            v744 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
            v745 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
            MEMORY[0x21CEB9150](v743, v1008, v744, v745);
            sub_2186EB3E8();
            sub_219BE6924();

            v746 = type metadata accessor for MyMagazinesMagazineFeedGroup;
            v747 = v727;
            goto LABEL_275;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_281;
      }

      if (v308 == 1)
      {
        v769 = v885;
        sub_2187C5960(v307, v885, type metadata accessor for FeaturedArticleMagazineFeedGroup);
        v770 = swift_allocBox();
        sub_218853560(v769, v771, type metadata accessor for FeaturedArticleMagazineFeedGroup);
        v772 = v1004[11];
        v773 = v996;
        sub_219BED874();
        v774 = sub_2188539DC(v770 | 0x6000000000000006);
        v776 = v775;
        v777 = sub_219BF18F4();
        MEMORY[0x28223BE20](v777);
        v778 = v1000;
        *(&v868 - 6) = v999;
        *(&v868 - 5) = v772;
        *(&v868 - 4) = v778;
        *(&v868 - 3) = v774;
        *(&v868 - 2) = v776;
        sub_2188555F4(sub_218855814, (&v868 - 8), v777, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);
        v780 = v779;

        (*(v998 + 8))(v773, v997);
        v1011 = v770 | 0x6000000000000006;
        v781 = *(v780 + 16);
        if (v781)
        {
          v1003 = v6;
          v1010 = MEMORY[0x277D84F90];
          v1004 = v770;

          sub_218C33FB8(v781);
          v782 = *(v985 + 80);
          v1002 = v780;
          v783 = v780 + ((v782 + 32) & ~v782);
          v784 = *(v985 + 72);
          do
          {
            v785 = v1006;
            sub_218853560(v783, v1006, type metadata accessor for TodayModel);
            sub_218853560(v785, v1005, type metadata accessor for TodayModel);
            sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
            sub_219BE5FB4();
            sub_2188536F8(v785, type metadata accessor for TodayModel);
            v786 = v1010;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_21885760C(0, *(v786 + 16) + 1, 1);
              v786 = v1010;
            }

            v788 = *(v786 + 16);
            v787 = *(v786 + 24);
            v789 = v978;
            if (v788 >= v787 >> 1)
            {
              sub_21885760C((v787 > 1), v788 + 1, 1);
              v789 = v978;
              v786 = v1010;
            }

            *(v786 + 16) = v788 + 1;
            (*(v1007 + 32))(v786 + ((*(v1007 + 80) + 32) & ~*(v1007 + 80)) + *(v1007 + 72) * v788, v789, v1008);
            v1010 = v786;
            v783 += v784;
            --v781;
          }

          while (v781);
        }

        else
        {

          v786 = MEMORY[0x277D84F90];
        }

        v855 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
        v856 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
        MEMORY[0x21CEB9170](v786, v1008, v855, v856);
        sub_2186EB3E8();
        sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
        sub_219BE6924();

        v746 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
        v857 = &v917;
        goto LABEL_274;
      }

      if (v308 == 2)
      {
        v309 = v887;
        sub_2187C5960(v307, v887, type metadata accessor for FeaturedIssueMagazineFeedGroup);
        v310 = swift_allocBox();
        sub_218853560(v309, v311, type metadata accessor for FeaturedIssueMagazineFeedGroup);
        v312 = v1004[11];
        v313 = v996;
        sub_219BED874();
        v314 = sub_2188539DC(v310 | 0x7000000000000002);
        v316 = v315;
        v317 = sub_219BF18F4();
        MEMORY[0x28223BE20](v317);
        v318 = v1000;
        *(&v868 - 6) = v999;
        *(&v868 - 5) = v312;
        *(&v868 - 4) = v318;
        *(&v868 - 3) = v314;
        *(&v868 - 2) = v316;
        sub_2188555F4(sub_218855814, (&v868 - 8), v317, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);
        v320 = v319;

        (*(v998 + 8))(v313, v997);
        v1011 = v310 | 0x7000000000000002;
        v321 = *(v320 + 16);
        if (v321)
        {
          v1003 = v6;
          v1010 = MEMORY[0x277D84F90];
          v1004 = v310;

          sub_218C33FB8(v321);
          v322 = *(v985 + 80);
          v1002 = v320;
          v323 = v320 + ((v322 + 32) & ~v322);
          v324 = *(v985 + 72);
          do
          {
            v325 = v1006;
            sub_218853560(v323, v1006, type metadata accessor for TodayModel);
            sub_218853560(v325, v1005, type metadata accessor for TodayModel);
            sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
            sub_219BE5FB4();
            sub_2188536F8(v325, type metadata accessor for TodayModel);
            v326 = v1010;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_21885760C(0, *(v326 + 16) + 1, 1);
              v326 = v1010;
            }

            v328 = *(v326 + 16);
            v327 = *(v326 + 24);
            v329 = v980;
            if (v328 >= v327 >> 1)
            {
              sub_21885760C((v327 > 1), v328 + 1, 1);
              v329 = v980;
              v326 = v1010;
            }

            *(v326 + 16) = v328 + 1;
            (*(v1007 + 32))(v326 + ((*(v1007 + 80) + 32) & ~*(v1007 + 80)) + *(v1007 + 72) * v328, v329, v1008);
            v1010 = v326;
            v323 += v324;
            --v321;
          }

          while (v321);
        }

        else
        {

          v326 = MEMORY[0x277D84F90];
        }

        v864 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
        v865 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
        MEMORY[0x21CEB9170](v326, v1008, v864, v865);
        sub_2186EB3E8();
        sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
        sub_219BE6924();

        v746 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
        v857 = &v919;
LABEL_274:
        v747 = *(v857 - 32);
LABEL_275:
        sub_2188536F8(v747, v746);
        v462 = type metadata accessor for MagazineFeedGroup;
        v688 = &v987;
LABEL_276:
        v463 = *(v688 - 32);
        goto LABEL_277;
      }

LABEL_261:
      type metadata accessor for TodaySectionFactoryError(0);
      sub_2186EF9CC(&qword_27CC12258, type metadata accessor for TodaySectionFactoryError, &unk_219C3A0D4);
      swift_allocError();
      v853 = v955;
      sub_218853560(v955, v854, type metadata accessor for MagazineFeedGroup);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_2188536F8(v853, type metadata accessor for MagazineFeedGroup);
      v463 = v307;
      v462 = type metadata accessor for MagazineFeedGroup;
LABEL_277:
      sub_2188536F8(v463, v462);
LABEL_278:

      return;
    case 0xAu:
      v586 = v965;
      sub_2187C5960(v179, v965, type metadata accessor for NewFollowTodayFeedGroup);
      v587 = swift_allocBox();
      sub_218853560(v586, v588, type metadata accessor for NewFollowTodayFeedGroup);
      v589 = v1004[11];
      v590 = v996;
      sub_219BED874();
      v591 = sub_2188539DC(v587 | 0x2000000000000006);
      v593 = v592;
      v594 = sub_219BF18F4();
      MEMORY[0x28223BE20](v594);
      v595 = v1000;
      *(&v868 - 6) = v999;
      *(&v868 - 5) = v589;
      *(&v868 - 4) = v595;
      *(&v868 - 3) = v591;
      *(&v868 - 2) = v593;
      sub_2188555F4(sub_218855814, (&v868 - 8), v594, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);
      v597 = v596;

      (*(v998 + 8))(v590, v997);
      v1011 = v587 | 0x2000000000000006;
      v598 = *(v597 + 16);
      if (v598)
      {
        v1003 = v6;
        v1010 = MEMORY[0x277D84F90];
        v1004 = v587;

        sub_21885760C(0, v598, 0);
        v599 = v1010;
        v600 = *(v985 + 80);
        v1002 = v597;
        v601 = v597 + ((v600 + 32) & ~v600);
        v602 = *(v985 + 72);
        v603 = v901;
        do
        {
          v604 = v1006;
          sub_218853560(v601, v1006, type metadata accessor for TodayModel);
          sub_218853560(v604, v1005, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
          sub_219BE5FB4();
          sub_2188536F8(v604, type metadata accessor for TodayModel);
          v1010 = v599;
          v606 = *(v599 + 16);
          v605 = *(v599 + 24);
          if (v606 >= v605 >> 1)
          {
            sub_21885760C((v605 > 1), v606 + 1, 1);
            v599 = v1010;
          }

          *(v599 + 16) = v606 + 1;
          (*(v1007 + 32))(v599 + ((*(v1007 + 80) + 32) & ~*(v1007 + 80)) + *(v1007 + 72) * v606, v603, v1008);
          v601 += v602;
          --v598;
        }

        while (v598);
      }

      else
      {

        v599 = MEMORY[0x277D84F90];
      }

      v719 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
      v720 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v599, v1008, v719, v720);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
      sub_219BE6924();

      v462 = type metadata accessor for NewFollowTodayFeedGroup;
      v688 = &v997;
      goto LABEL_276;
    case 0xBu:
      v252 = v967;
      sub_2187C5960(v179, v967, type metadata accessor for SubscriptionTodayFeedGroup);
      v253 = swift_allocBox();
      sub_218853560(v252, v254, type metadata accessor for SubscriptionTodayFeedGroup);
      v255 = v1004[11];
      v256 = v996;
      sub_219BED874();
      v257 = sub_2188539DC(v253 | 0x3000000000000000);
      v259 = v258;
      v260 = sub_219BF18F4();
      MEMORY[0x28223BE20](v260);
      v261 = v1000;
      *(&v868 - 6) = v999;
      *(&v868 - 5) = v255;
      *(&v868 - 4) = v261;
      *(&v868 - 3) = v257;
      *(&v868 - 2) = v259;
      sub_2188555F4(sub_218855814, (&v868 - 8), v260, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);
      v263 = v262;

      (*(v998 + 8))(v256, v997);
      v1011 = v253 | 0x3000000000000000;
      v264 = *(v263 + 16);
      if (v264)
      {
        v1003 = v6;
        v1010 = MEMORY[0x277D84F90];
        v1004 = v253;

        sub_21885760C(0, v264, 0);
        v265 = v1010;
        v266 = *(v985 + 80);
        v1002 = v263;
        v267 = v263 + ((v266 + 32) & ~v266);
        v268 = *(v985 + 72);
        v269 = v902;
        do
        {
          v270 = v1006;
          sub_218853560(v267, v1006, type metadata accessor for TodayModel);
          sub_218853560(v270, v1005, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
          sub_219BE5FB4();
          sub_2188536F8(v270, type metadata accessor for TodayModel);
          v1010 = v265;
          v272 = *(v265 + 16);
          v271 = *(v265 + 24);
          if (v272 >= v271 >> 1)
          {
            sub_21885760C((v271 > 1), v272 + 1, 1);
            v265 = v1010;
          }

          *(v265 + 16) = v272 + 1;
          (*(v1007 + 32))(v265 + ((*(v1007 + 80) + 32) & ~*(v1007 + 80)) + *(v1007 + 72) * v272, v269, v1008);
          v267 += v268;
          --v264;
        }

        while (v264);
      }

      else
      {

        v265 = MEMORY[0x277D84F90];
      }

      v691 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
      v692 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v265, v1008, v691, v692);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
      sub_219BE6924();

      v462 = type metadata accessor for SubscriptionTodayFeedGroup;
      v688 = &v999;
      goto LABEL_276;
    case 0xCu:
      v1003 = v6;
      v294 = v944;
      v295 = v966;
      v296 = v179;
      v297 = v945;
      (*(v944 + 32))(v966, v296, v945);
      v298 = swift_allocBox();
      (*(v294 + 16))(v299, v295, v297);
      v1005 = v298;
      v1011 = v298 | 0x3000000000000002;
      sub_2186E7F54(0, &qword_280E8BFF0, sub_218853400, MEMORY[0x277D84560]);
      v300 = swift_allocObject();
      v301 = v1004;
      v302 = v300;
      *(v300 + 16) = xmmword_219C09BA0;
      __swift_project_boxed_opaque_existential_1(v301, v301[3]);

      sub_219BEF434();
      swift_storeEnumTagMultiPayload();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
      sub_219BE5FB4();
      v303 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
      v304 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9150](v302, v1008, v303, v304);
      sub_2186EB3E8();
      sub_219BE6924();

      (*(v294 + 8))(v966, v297);
      goto LABEL_278;
    case 0xDu:
      v523 = v968;
      sub_2187C5960(v179, v968, type metadata accessor for SpotlightTodayFeedGroup);
      v524 = swift_allocBox();
      sub_218853560(v523, v525, type metadata accessor for SpotlightTodayFeedGroup);
      v526 = v1004[11];
      v527 = v996;
      sub_219BED874();
      v528 = sub_2188539DC(v524 | 0x3000000000000004);
      v530 = v529;
      v531 = sub_219BF18F4();
      MEMORY[0x28223BE20](v531);
      v532 = v1000;
      *(&v868 - 6) = v999;
      *(&v868 - 5) = v526;
      *(&v868 - 4) = v532;
      *(&v868 - 3) = v528;
      *(&v868 - 2) = v530;
      sub_2188555F4(sub_218855814, (&v868 - 8), v531, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);
      v534 = v533;

      (*(v998 + 8))(v527, v997);
      v1011 = v524 | 0x3000000000000004;
      v535 = *(v534 + 16);
      if (v535)
      {
        v1003 = v6;
        v1010 = MEMORY[0x277D84F90];
        v1004 = v524;

        sub_218C33FB8(v535);
        v536 = *(v985 + 80);
        v1002 = v534;
        v537 = v534 + ((v536 + 32) & ~v536);
        v538 = *(v985 + 72);
        do
        {
          v539 = v1006;
          sub_218853560(v537, v1006, type metadata accessor for TodayModel);
          sub_218853560(v539, v1005, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
          sub_219BE5FB4();
          sub_2188536F8(v539, type metadata accessor for TodayModel);
          v540 = v1010;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21885760C(0, *(v540 + 16) + 1, 1);
            v540 = v1010;
          }

          v542 = *(v540 + 16);
          v541 = *(v540 + 24);
          v543 = v987;
          if (v542 >= v541 >> 1)
          {
            sub_21885760C((v541 > 1), v542 + 1, 1);
            v543 = v987;
            v540 = v1010;
          }

          *(v540 + 16) = v542 + 1;
          (*(v1007 + 32))(v540 + ((*(v1007 + 80) + 32) & ~*(v1007 + 80)) + *(v1007 + 72) * v542, v543, v1008);
          v1010 = v540;
          v537 += v538;
          --v535;
        }

        while (v535);
      }

      else
      {

        v540 = MEMORY[0x277D84F90];
      }

      v713 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
      v714 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v540, v1008, v713, v714);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
      sub_219BE6924();

      v462 = type metadata accessor for SpotlightTodayFeedGroup;
      v688 = &v1000;
      goto LABEL_276;
    case 0xEu:
      v231 = v969;
      sub_2187C5960(v179, v969, type metadata accessor for SuggestionTodayFeedGroup);
      v232 = swift_allocBox();
      sub_218853560(v231, v233, type metadata accessor for SuggestionTodayFeedGroup);
      v234 = v1004[11];
      v235 = v996;
      sub_219BED874();
      v236 = sub_2188539DC(v232 | 0x3000000000000006);
      v238 = v237;
      v239 = sub_219BF18F4();
      MEMORY[0x28223BE20](v239);
      v240 = v1000;
      *(&v868 - 6) = v999;
      *(&v868 - 5) = v234;
      *(&v868 - 4) = v240;
      *(&v868 - 3) = v236;
      *(&v868 - 2) = v238;
      sub_2188555F4(sub_218855814, (&v868 - 8), v239, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);
      v242 = v241;

      (*(v998 + 8))(v235, v997);
      v1011 = v232 | 0x3000000000000006;
      v243 = *(v242 + 16);
      if (v243)
      {
        v1003 = v6;
        v1010 = MEMORY[0x277D84F90];
        v1004 = v232;

        sub_218C33FB8(v243);
        v244 = *(v985 + 80);
        v1002 = v242;
        v245 = v242 + ((v244 + 32) & ~v244);
        v246 = *(v985 + 72);
        do
        {
          v247 = v1006;
          sub_218853560(v245, v1006, type metadata accessor for TodayModel);
          sub_218853560(v247, v1005, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
          sub_219BE5FB4();
          sub_2188536F8(v247, type metadata accessor for TodayModel);
          v248 = v1010;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21885760C(0, *(v248 + 16) + 1, 1);
            v248 = v1010;
          }

          v250 = *(v248 + 16);
          v249 = *(v248 + 24);
          v251 = v988;
          if (v250 >= v249 >> 1)
          {
            sub_21885760C((v249 > 1), v250 + 1, 1);
            v251 = v988;
            v248 = v1010;
          }

          *(v248 + 16) = v250 + 1;
          (*(v1007 + 32))(v248 + ((*(v1007 + 80) + 32) & ~*(v1007 + 80)) + *(v1007 + 72) * v250, v251, v1008);
          v1010 = v248;
          v245 += v246;
          --v243;
        }

        while (v243);
      }

      else
      {

        v248 = MEMORY[0x277D84F90];
      }

      v689 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
      v690 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v248, v1008, v689, v690);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
      sub_219BE6924();

      v462 = type metadata accessor for SuggestionTodayFeedGroup;
      v688 = &v1001;
      goto LABEL_276;
    case 0xFu:
      v372 = v970;
      sub_2187C5960(v179, v970, type metadata accessor for SeenContentMarkTodayFeedGroup);
      v373 = swift_allocBox();
      sub_218853560(v372, v374, type metadata accessor for SeenContentMarkTodayFeedGroup);
      v375 = v1004[11];
      v376 = v996;
      sub_219BED874();
      v377 = sub_2188539DC(v373 | 0x4000000000000000);
      v379 = v378;
      v380 = sub_219BF18F4();
      MEMORY[0x28223BE20](v380);
      v381 = v1000;
      *(&v868 - 6) = v999;
      *(&v868 - 5) = v375;
      *(&v868 - 4) = v381;
      *(&v868 - 3) = v377;
      *(&v868 - 2) = v379;
      sub_2188555F4(sub_218855814, (&v868 - 8), v380, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);
      v383 = v382;

      (*(v998 + 8))(v376, v997);
      v1011 = v373 | 0x4000000000000000;
      v384 = *(v383 + 16);
      if (v384)
      {
        v1003 = v6;
        v1010 = MEMORY[0x277D84F90];
        v1004 = v373;

        sub_218C33FB8(v384);
        v385 = *(v985 + 80);
        v1002 = v383;
        v386 = v383 + ((v385 + 32) & ~v385);
        v387 = *(v985 + 72);
        do
        {
          v388 = v1006;
          sub_218853560(v386, v1006, type metadata accessor for TodayModel);
          sub_218853560(v388, v1005, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
          sub_219BE5FB4();
          sub_2188536F8(v388, type metadata accessor for TodayModel);
          v389 = v1010;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21885760C(0, *(v389 + 16) + 1, 1);
            v389 = v1010;
          }

          v391 = *(v389 + 16);
          v390 = *(v389 + 24);
          v392 = v989;
          if (v391 >= v390 >> 1)
          {
            sub_21885760C((v390 > 1), v391 + 1, 1);
            v392 = v989;
            v389 = v1010;
          }

          *(v389 + 16) = v391 + 1;
          (*(v1007 + 32))(v389 + ((*(v1007 + 80) + 32) & ~*(v1007 + 80)) + *(v1007 + 72) * v391, v392, v1008);
          v1010 = v389;
          v386 += v387;
          --v384;
        }

        while (v384);
      }

      else
      {

        v389 = MEMORY[0x277D84F90];
      }

      v699 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
      v700 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v389, v1008, v699, v700);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
      sub_219BE6924();

      v462 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      v688 = &v1002;
      goto LABEL_276;
    case 0x10u:
      v210 = v971;
      sub_2187C5960(v179, v971, type metadata accessor for SharedWithYouTodayFeedGroup);
      v211 = swift_allocBox();
      sub_218853560(v210, v212, type metadata accessor for SharedWithYouTodayFeedGroup);
      v213 = v1004[11];
      v214 = v996;
      sub_219BED874();
      v215 = sub_2188539DC(v211 | 0x4000000000000004);
      v217 = v216;
      v218 = sub_219BF18F4();
      MEMORY[0x28223BE20](v218);
      v219 = v1000;
      *(&v868 - 6) = v999;
      *(&v868 - 5) = v213;
      *(&v868 - 4) = v219;
      *(&v868 - 3) = v215;
      *(&v868 - 2) = v217;
      sub_2188555F4(sub_218855814, (&v868 - 8), v218, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);
      v221 = v220;

      (*(v998 + 8))(v214, v997);
      v1011 = v211 | 0x4000000000000004;
      v222 = *(v221 + 16);
      if (v222)
      {
        v1003 = v6;
        v1010 = MEMORY[0x277D84F90];
        v1004 = v211;

        sub_218C33FB8(v222);
        v223 = *(v985 + 80);
        v1002 = v221;
        v224 = v221 + ((v223 + 32) & ~v223);
        v225 = *(v985 + 72);
        do
        {
          v226 = v1006;
          sub_218853560(v224, v1006, type metadata accessor for TodayModel);
          sub_218853560(v226, v1005, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
          sub_219BE5FB4();
          sub_2188536F8(v226, type metadata accessor for TodayModel);
          v227 = v1010;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21885760C(0, *(v227 + 16) + 1, 1);
            v227 = v1010;
          }

          v229 = *(v227 + 16);
          v228 = *(v227 + 24);
          v230 = v990;
          if (v229 >= v228 >> 1)
          {
            sub_21885760C((v228 > 1), v229 + 1, 1);
            v230 = v990;
            v227 = v1010;
          }

          *(v227 + 16) = v229 + 1;
          (*(v1007 + 32))(v227 + ((*(v1007 + 80) + 32) & ~*(v1007 + 80)) + *(v1007 + 72) * v229, v230, v1008);
          v1010 = v227;
          v224 += v225;
          --v222;
        }

        while (v222);
      }

      else
      {

        v227 = MEMORY[0x277D84F90];
      }

      v686 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
      v687 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v227, v1008, v686, v687);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
      sub_219BE6924();

      v462 = type metadata accessor for SharedWithYouTodayFeedGroup;
      v688 = &v1003;
      goto LABEL_276;
    case 0x11u:
      v456 = v946;
      sub_2187C5960(v179, v946, type metadata accessor for EngagementTodayFeedGroup);
      v457 = v977;
      sub_218DE66E8(v456, v1004, v977);
      v458 = swift_allocBox();
      sub_218853560(v456, v459, type metadata accessor for EngagementTodayFeedGroup);
      v1011 = v458 | 0x4000000000000006;
      v460 = v904;
      v461 = v905;
      (*(v904 + 16))(v903, v457, v905);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
      sub_219BE6924();
      (*(v460 + 8))(v457, v461);
      v462 = type metadata accessor for EngagementTodayFeedGroup;
      v463 = v456;
      goto LABEL_277;
    case 0x12u:
      v565 = v972;
      sub_2187C5960(v179, v972, type metadata accessor for MySportsTodayFeedGroup);
      v566 = swift_allocBox();
      sub_218853560(v565, v567, type metadata accessor for MySportsTodayFeedGroup);
      v568 = v1004[11];
      v569 = v996;
      sub_219BED874();
      v570 = sub_2188539DC(v566 | 0x5000000000000000);
      v572 = v571;
      v573 = sub_219BF18F4();
      MEMORY[0x28223BE20](v573);
      v574 = v1000;
      *(&v868 - 6) = v999;
      *(&v868 - 5) = v568;
      *(&v868 - 4) = v574;
      *(&v868 - 3) = v570;
      *(&v868 - 2) = v572;
      sub_2188555F4(sub_218855814, (&v868 - 8), v573, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);
      v576 = v575;

      (*(v998 + 8))(v569, v997);
      v1011 = v566 | 0x5000000000000000;
      v577 = *(v576 + 16);
      if (v577)
      {
        v1003 = v6;
        v1010 = MEMORY[0x277D84F90];
        v1004 = v566;

        sub_218C33FB8(v577);
        v578 = *(v985 + 80);
        v1002 = v576;
        v579 = v576 + ((v578 + 32) & ~v578);
        v580 = *(v985 + 72);
        do
        {
          v581 = v1006;
          sub_218853560(v579, v1006, type metadata accessor for TodayModel);
          sub_218853560(v581, v1005, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
          sub_219BE5FB4();
          sub_2188536F8(v581, type metadata accessor for TodayModel);
          v582 = v1010;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21885760C(0, *(v582 + 16) + 1, 1);
            v582 = v1010;
          }

          v584 = *(v582 + 16);
          v583 = *(v582 + 24);
          v585 = v991;
          if (v584 >= v583 >> 1)
          {
            sub_21885760C((v583 > 1), v584 + 1, 1);
            v585 = v991;
            v582 = v1010;
          }

          *(v582 + 16) = v584 + 1;
          (*(v1007 + 32))(v582 + ((*(v1007 + 80) + 32) & ~*(v1007 + 80)) + *(v1007 + 72) * v584, v585, v1008);
          v1010 = v582;
          v579 += v580;
          --v577;
        }

        while (v577);
      }

      else
      {

        v582 = MEMORY[0x277D84F90];
      }

      v717 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
      v718 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v582, v1008, v717, v718);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
      sub_219BE6924();

      v462 = type metadata accessor for MySportsTodayFeedGroup;
      v688 = &v1004;
      goto LABEL_276;
    case 0x13u:
      v634 = v973;
      sub_2187C5960(v179, v973, type metadata accessor for IntroToSportsTodayFeedGroup);
      v635 = swift_allocBox();
      sub_218853560(v634, v636, type metadata accessor for IntroToSportsTodayFeedGroup);
      v637 = v1004[11];
      v638 = v996;
      sub_219BED874();
      v639 = sub_2188539DC(v635 | 0x5000000000000002);
      v641 = v640;
      v642 = sub_219BF18F4();
      MEMORY[0x28223BE20](v642);
      v643 = v1000;
      *(&v868 - 6) = v999;
      *(&v868 - 5) = v637;
      *(&v868 - 4) = v643;
      *(&v868 - 3) = v639;
      *(&v868 - 2) = v641;
      sub_2188555F4(sub_218855814, (&v868 - 8), v642, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);
      v645 = v644;

      (*(v998 + 8))(v638, v997);
      v1011 = v635 | 0x5000000000000002;
      v646 = *(v645 + 16);
      if (v646)
      {
        v1003 = v6;
        v1010 = MEMORY[0x277D84F90];
        v1004 = v635;

        sub_218C33FB8(v646);
        v647 = *(v985 + 80);
        v1002 = v645;
        v648 = v645 + ((v647 + 32) & ~v647);
        v649 = *(v985 + 72);
        do
        {
          v650 = v1006;
          sub_218853560(v648, v1006, type metadata accessor for TodayModel);
          sub_218853560(v650, v1005, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
          sub_219BE5FB4();
          sub_2188536F8(v650, type metadata accessor for TodayModel);
          v651 = v1010;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21885760C(0, *(v651 + 16) + 1, 1);
            v651 = v1010;
          }

          v653 = *(v651 + 16);
          v652 = *(v651 + 24);
          v654 = v992;
          if (v653 >= v652 >> 1)
          {
            sub_21885760C((v652 > 1), v653 + 1, 1);
            v654 = v992;
            v651 = v1010;
          }

          *(v651 + 16) = v653 + 1;
          (*(v1007 + 32))(v651 + ((*(v1007 + 80) + 32) & ~*(v1007 + 80)) + *(v1007 + 72) * v653, v654, v1008);
          v1010 = v651;
          v648 += v649;
          --v646;
        }

        while (v646);
      }

      else
      {

        v651 = MEMORY[0x277D84F90];
      }

      v723 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
      v724 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v651, v1008, v723, v724);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
      sub_219BE6924();

      v462 = type metadata accessor for IntroToSportsTodayFeedGroup;
      v688 = &v1005;
      goto LABEL_276;
    case 0x14u:
      v464 = v954;
      sub_2187C5960(v179, v954, type metadata accessor for ShortcutsTodayFeedGroup);
      v465 = __swift_project_boxed_opaque_existential_1(v1004 + 14, v1004[17]);
      v466 = sub_218C54F50(v465);
      sub_218DDDEAC(v466, &v1012);
      v468 = v467;
      v1003 = v6;

      if (qword_280E8D7A0 != -1)
      {
        swift_once();
      }

      v469 = qword_280F616D8;
      v470 = sub_219BF6214();
      sub_2186E7F54(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v471 = swift_allocObject();
      *(v471 + 16) = xmmword_219C09EC0;
      v472 = sub_219BED784();
      v474 = v473;
      v475 = MEMORY[0x277D837D0];
      *(v471 + 56) = MEMORY[0x277D837D0];
      v476 = sub_2186FC3BC();
      *(v471 + 64) = v476;
      *(v471 + 32) = v472;
      *(v471 + 40) = v474;
      v477 = MEMORY[0x21CECC6D0](v468, v475);
      *(v471 + 96) = v475;
      *(v471 + 104) = v476;
      *(v471 + 72) = v477;
      *(v471 + 80) = v478;
      sub_219BE5314("Make placeholder section for %{public}@ created with %{public}@", 63, 2, &dword_2186C1000, v469, v470, v471);

      v479 = swift_allocBox();
      sub_218853560(v464, v480, type metadata accessor for ShortcutsTodayFeedGroup);
      sub_218DE14BC(v479 | 0x5000000000000004, v464, v1000, v468, v1012, v1001);

      sub_2188536F8(v464, type metadata accessor for ShortcutsTodayFeedGroup);

      return;
    case 0x15u:
      v502 = v974;
      sub_2187C5960(v179, v974, type metadata accessor for ChannelTodayFeedGroup);
      v503 = swift_allocBox();
      sub_218853560(v502, v504, type metadata accessor for ChannelTodayFeedGroup);
      v505 = v1004[11];
      v506 = v996;
      sub_219BED874();
      v507 = sub_2188539DC(v503 | 0x5000000000000006);
      v509 = v508;
      v510 = sub_219BF18F4();
      MEMORY[0x28223BE20](v510);
      v511 = v1000;
      *(&v868 - 6) = v999;
      *(&v868 - 5) = v505;
      *(&v868 - 4) = v511;
      *(&v868 - 3) = v507;
      *(&v868 - 2) = v509;
      sub_2188555F4(sub_218855814, (&v868 - 8), v510, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);
      v513 = v512;

      (*(v998 + 8))(v506, v997);
      v1011 = v503 | 0x5000000000000006;
      v514 = *(v513 + 16);
      if (v514)
      {
        v1003 = v6;
        v1010 = MEMORY[0x277D84F90];
        v1004 = v503;

        sub_218C33FB8(v514);
        v515 = *(v985 + 80);
        v1002 = v513;
        v516 = v513 + ((v515 + 32) & ~v515);
        v517 = *(v985 + 72);
        do
        {
          v518 = v1006;
          sub_218853560(v516, v1006, type metadata accessor for TodayModel);
          sub_218853560(v518, v1005, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
          sub_219BE5FB4();
          sub_2188536F8(v518, type metadata accessor for TodayModel);
          v519 = v1010;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21885760C(0, *(v519 + 16) + 1, 1);
            v519 = v1010;
          }

          v521 = *(v519 + 16);
          v520 = *(v519 + 24);
          v522 = v993;
          if (v521 >= v520 >> 1)
          {
            sub_21885760C((v520 > 1), v521 + 1, 1);
            v522 = v993;
            v519 = v1010;
          }

          *(v519 + 16) = v521 + 1;
          (*(v1007 + 32))(v519 + ((*(v1007 + 80) + 32) & ~*(v1007 + 80)) + *(v1007 + 72) * v521, v522, v1008);
          v1010 = v519;
          v516 += v517;
          --v514;
        }

        while (v514);
      }

      else
      {

        v519 = MEMORY[0x277D84F90];
      }

      v711 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
      v712 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v519, v1008, v711, v712);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
      sub_219BE6924();

      v462 = type metadata accessor for ChannelTodayFeedGroup;
      v688 = &v1006;
      goto LABEL_276;
    case 0x16u:
      v628 = v950;
      sub_2187C5960(v179, v950, type metadata accessor for SavedStoriesTodayFeedGroup);
      sub_218DE215C(v952, v1004);
      v630 = v629;
      v631 = swift_allocBox();
      sub_218853560(v628, v632, type metadata accessor for SavedStoriesTodayFeedGroup);
      sub_218DE2454(v631 | 0x6000000000000000, v628, v1000, v630, v1001);

      v633 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_153;
    case 0x17u:
      v655 = v975;
      sub_2187C5960(v179, v975, type metadata accessor for ChannelPickerTodayFeedGroup);
      v656 = swift_allocBox();
      sub_218853560(v655, v657, type metadata accessor for ChannelPickerTodayFeedGroup);
      v658 = v1004[11];
      v659 = v996;
      sub_219BED874();
      v660 = sub_2188539DC(v656 | 0x6000000000000002);
      v662 = v661;
      v663 = sub_219BF18F4();
      MEMORY[0x28223BE20](v663);
      v664 = v1000;
      *(&v868 - 6) = v999;
      *(&v868 - 5) = v658;
      *(&v868 - 4) = v664;
      *(&v868 - 3) = v660;
      *(&v868 - 2) = v662;
      sub_2188555F4(sub_218855814, (&v868 - 8), v663, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);
      v666 = v665;

      (*(v998 + 8))(v659, v997);
      v1011 = v656 | 0x6000000000000002;
      v667 = *(v666 + 16);
      if (v667)
      {
        v1003 = v6;
        v1010 = MEMORY[0x277D84F90];
        v1004 = v656;

        sub_218C33FB8(v667);
        v668 = *(v985 + 80);
        v1002 = v666;
        v669 = v666 + ((v668 + 32) & ~v668);
        v670 = *(v985 + 72);
        do
        {
          v671 = v1006;
          sub_218853560(v669, v1006, type metadata accessor for TodayModel);
          sub_218853560(v671, v1005, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
          sub_219BE5FB4();
          sub_2188536F8(v671, type metadata accessor for TodayModel);
          v672 = v1010;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21885760C(0, *(v672 + 16) + 1, 1);
            v672 = v1010;
          }

          v674 = *(v672 + 16);
          v673 = *(v672 + 24);
          v675 = v994;
          if (v674 >= v673 >> 1)
          {
            sub_21885760C((v673 > 1), v674 + 1, 1);
            v675 = v994;
            v672 = v1010;
          }

          *(v672 + 16) = v674 + 1;
          (*(v1007 + 32))(v672 + ((*(v1007 + 80) + 32) & ~*(v1007 + 80)) + *(v1007 + 72) * v674, v675, v1008);
          v1010 = v672;
          v669 += v670;
          --v667;
        }

        while (v667);
      }

      else
      {

        v672 = MEMORY[0x277D84F90];
      }

      v725 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
      v726 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v672, v1008, v725, v726);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
      sub_219BE6924();

      v462 = type metadata accessor for ChannelPickerTodayFeedGroup;
      v688 = &v1007;
      goto LABEL_276;
    case 0x18u:
      v330 = v976;
      sub_2187C5960(v179, v976, type metadata accessor for FoodTodayFeedGroup);
      v331 = swift_allocBox();
      sub_218853560(v330, v332, type metadata accessor for FoodTodayFeedGroup);
      v333 = v1004[11];
      v334 = v996;
      sub_219BED874();
      v335 = sub_2188539DC(v331 | 0x6000000000000004);
      v337 = v336;
      v338 = sub_219BF18F4();
      MEMORY[0x28223BE20](v338);
      v339 = v1000;
      *(&v868 - 6) = v999;
      *(&v868 - 5) = v333;
      *(&v868 - 4) = v339;
      *(&v868 - 3) = v335;
      *(&v868 - 2) = v337;
      sub_2188555F4(sub_218855850, (&v868 - 8), v338, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);
      v341 = v340;

      (*(v998 + 8))(v334, v997);
      v1011 = v331 | 0x6000000000000004;
      v342 = *(v341 + 16);
      if (v342)
      {
        v1003 = v6;
        v1010 = MEMORY[0x277D84F90];
        v1004 = v331;

        sub_218C33FB8(v342);
        v343 = *(v985 + 80);
        v1002 = v341;
        v344 = v341 + ((v343 + 32) & ~v343);
        v345 = *(v985 + 72);
        do
        {
          v346 = v1006;
          sub_218853560(v344, v1006, type metadata accessor for TodayModel);
          sub_218853560(v346, v1005, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
          sub_219BE5FB4();
          sub_2188536F8(v346, type metadata accessor for TodayModel);
          v347 = v1010;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21885760C(0, *(v347 + 16) + 1, 1);
            v347 = v1010;
          }

          v349 = *(v347 + 16);
          v348 = *(v347 + 24);
          v350 = v995;
          if (v349 >= v348 >> 1)
          {
            sub_21885760C((v348 > 1), v349 + 1, 1);
            v350 = v995;
            v347 = v1010;
          }

          *(v347 + 16) = v349 + 1;
          (*(v1007 + 32))(v347 + ((*(v1007 + 80) + 32) & ~*(v1007 + 80)) + *(v1007 + 72) * v349, v350, v1008);
          v1010 = v347;
          v344 += v345;
          --v342;
        }

        while (v342);
      }

      else
      {

        v347 = MEMORY[0x277D84F90];
      }

      v695 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
      v696 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v347, v1008, v695, v696);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
      sub_219BE6924();

      v462 = type metadata accessor for FoodTodayFeedGroup;
      v688 = &v1008;
      goto LABEL_276;
    default:
      v180 = v956;
      sub_2187C5960(v179, v956, type metadata accessor for CuratedTodayFeedGroup);
      v181 = swift_allocBox();
      sub_218853560(v180, v182, type metadata accessor for CuratedTodayFeedGroup);
      v183 = v1004[11];
      v184 = v996;
      sub_219BED874();
      v185 = sub_2188539DC(v181 | 2);
      v187 = v186;
      v188 = sub_219BF18F4();
      MEMORY[0x28223BE20](v188);
      v189 = v1000;
      *(&v868 - 6) = v999;
      *(&v868 - 5) = v183;
      *(&v868 - 4) = v189;
      *(&v868 - 3) = v185;
      *(&v868 - 2) = v187;
      sub_2188555F4(sub_218855814, (&v868 - 8), v188, MEMORY[0x277D33BF8], sub_218855FE8, type metadata accessor for TodayModel);
      v191 = v190;

      (*(v998 + 8))(v184, v997);
      v1011 = v181 | 2;
      v192 = *(v191 + 16);
      if (v192)
      {
        v1003 = v6;
        v1010 = MEMORY[0x277D84F90];
        v1004 = v181;

        sub_21885760C(0, v192, 0);
        v193 = v1010;
        v194 = *(v985 + 80);
        v1002 = v191;
        v195 = v191 + ((v194 + 32) & ~v194);
        v196 = *(v985 + 72);
        v197 = v892;
        do
        {
          v198 = v1006;
          sub_218853560(v195, v1006, type metadata accessor for TodayModel);
          sub_218853560(v198, v1005, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
          sub_219BE5FB4();
          sub_2188536F8(v198, type metadata accessor for TodayModel);
          v1010 = v193;
          v200 = *(v193 + 16);
          v199 = *(v193 + 24);
          if (v200 >= v199 >> 1)
          {
            sub_21885760C((v199 > 1), v200 + 1, 1);
            v193 = v1010;
          }

          *(v193 + 16) = v200 + 1;
          (*(v1007 + 32))(v193 + ((*(v1007 + 80) + 32) & ~*(v1007 + 80)) + *(v1007 + 72) * v200, v197, v1008);
          v195 += v196;
          --v192;
        }

        while (v192);
      }

      else
      {

        v193 = MEMORY[0x277D84F90];
      }

      v705 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
      v706 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v193, v1008, v705, v706);
      sub_2186EB3E8();
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
      sub_219BE6924();

      v462 = type metadata accessor for CuratedTodayFeedGroup;
      v688 = &v988;
      goto LABEL_276;
  }
}

void sub_218853400(uint64_t a1)
{
  if (!qword_280EE5D30)
  {
    type metadata accessor for TodayModel(255);
    sub_2187FADB8(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
    v1 = sub_219BE5FE4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5D30);
    }
  }
}

void sub_218853494(uint64_t a1)
{
  if (!qword_280EE7580)
  {
    sub_218853400(255);
    sub_2186EF594(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
    sub_2186EF594(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE7580);
    }
  }
}

uint64_t sub_218853560(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2188535C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218853630(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218853698(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2188536F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218853758(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2188537B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_219BF7AA4();
  sub_219BF5524();
  v6 = sub_219BF7AE4();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_219BF78F4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_2188538D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_2194B7D34(0, a2, a3, MEMORY[0x277D84460]);
    v5 = sub_219BF75B4();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_21870F700(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2188539DC(uint64_t a1)
{
  v2 = type metadata accessor for FoodTodayFeedGroup(0);
  MEMORY[0x28223BE20](v2 - 8);
  v169 = &v131 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ChannelPickerTodayFeedGroup(0);
  MEMORY[0x28223BE20](v4 - 8);
  v168 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SavedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v6 - 8);
  v167 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChannelTodayFeedGroup(0);
  MEMORY[0x28223BE20](v8 - 8);
  v166 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ShortcutsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v165 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RecommendedIssuesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v12 - 8);
  v164 = (&v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for MyMagazinesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v14 - 8);
  v163 = (&v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v162 = type metadata accessor for NewIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v162);
  v161 = (&v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for TrendingMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v17 - 8);
  v160 = &v131 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for BestOfBundleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v19 - 8);
  v159 = &v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FeaturedIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v21 - 8);
  v158 = &v131 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v157);
  v156 = (&v131 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v155 = type metadata accessor for FeaturedArticleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v155);
  v154 = (&v131 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for IntroToSportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v25 - 8);
  v153 = &v131 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MySportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v27 - 8);
  v152 = &v131 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for EngagementTodayFeedGroup(0);
  MEMORY[0x28223BE20](v29 - 8);
  v151 = &v131 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for SharedWithYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v150);
  v149 = (&v131 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = type metadata accessor for SeenContentMarkTodayFeedGroup(0);
  MEMORY[0x28223BE20](v32 - 8);
  v148 = &v131 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for SuggestionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v34 - 8);
  v147 = &v131 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for SpotlightTodayFeedGroup(0);
  MEMORY[0x28223BE20](v36 - 8);
  v145 = &v131 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218855280(0);
  v146 = v38;
  v144 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v143 = &v131 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_219BED544();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = &v131 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for SubscriptionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v41 - 8);
  v139 = &v131 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for NewFollowTodayFeedGroup(0);
  MEMORY[0x28223BE20](v43 - 8);
  v138 = &v131 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218855330(0);
  v137 = v45;
  v136 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v135 = &v131 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for TopicTodayFeedGroup(0);
  MEMORY[0x28223BE20](v47 - 8);
  v134 = &v131 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for MoreForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v49 - 8);
  v133 = &v131 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for LatestStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v51 - 8);
  v132 = &v131 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for MissedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v53 - 8);
  v131 = &v131 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for ForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v55 - 8);
  v57 = &v131 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for TrendingTodayFeedGroup(0);
  MEMORY[0x28223BE20](v58 - 8);
  v60 = &v131 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for LocalNewsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v61 - 8);
  v63 = &v131 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for NewspaperTodayFeedGroup(0);
  MEMORY[0x28223BE20](v64 - 8);
  v66 = &v131 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for CuratedTodayFeedGroup(0);
  MEMORY[0x28223BE20](v67 - 8);
  v69 = &v131 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for TodayBlueprintCollapsedSection(0);
  v71 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v73 = &v131 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TodaySectionGapDescriptor(0);
  MEMORY[0x28223BE20](a1);
  v75 = &v131 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76);
  v78 = &v131 - v77;
  switch((v79 >> 58) & 0x3C | (v79 >> 1) & 3)
  {
    case 1uLL:
      v102 = swift_projectBox();
      sub_21885AC00(v102, v69, type metadata accessor for CuratedTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for CuratedTodayFeedGroup;
      goto LABEL_40;
    case 2uLL:
      v98 = swift_projectBox();
      sub_21885AC00(v98, v66, type metadata accessor for NewspaperTodayFeedGroup);
      v81 = sub_219BED784();
      v92 = type metadata accessor for NewspaperTodayFeedGroup;
      v93 = v66;
      break;
    case 3uLL:
      v100 = swift_projectBox();
      sub_21885AC00(v100, v63, type metadata accessor for LocalNewsTodayFeedGroup);
      v81 = sub_219BED784();
      v92 = type metadata accessor for LocalNewsTodayFeedGroup;
      v93 = v63;
      break;
    case 4uLL:
      v91 = swift_projectBox();
      sub_21885AC00(v91, v60, type metadata accessor for TrendingTodayFeedGroup);
      v81 = sub_219BED784();
      v92 = type metadata accessor for TrendingTodayFeedGroup;
      v93 = v60;
      break;
    case 5uLL:
      v109 = swift_projectBox();
      sub_21885AC00(v109, v57, type metadata accessor for ForYouTodayFeedGroup);
      v81 = sub_219BED784();
      v92 = type metadata accessor for ForYouTodayFeedGroup;
      v93 = v57;
      break;
    case 6uLL:
      v116 = swift_projectBox();
      v69 = v131;
      sub_21885AC00(v116, v131, type metadata accessor for MissedStoriesTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for MissedStoriesTodayFeedGroup;
      goto LABEL_40;
    case 7uLL:
      v101 = swift_projectBox();
      v69 = v132;
      sub_21885AC00(v101, v132, type metadata accessor for LatestStoriesTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for LatestStoriesTodayFeedGroup;
      goto LABEL_40;
    case 8uLL:
      v119 = swift_projectBox();
      v69 = v133;
      sub_21885AC00(v119, v133, type metadata accessor for MoreForYouTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for MoreForYouTodayFeedGroup;
      goto LABEL_40;
    case 9uLL:
      v95 = swift_projectBox();
      v69 = v134;
      sub_21885AC00(v95, v134, type metadata accessor for TopicTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for TopicTodayFeedGroup;
      goto LABEL_40;
    case 0xAuLL:
      v118 = swift_projectBox();
      v112 = v136;
      v113 = v135;
      v114 = v137;
      (*(v136 + 16))(v135, v118, v137);
      v115 = sub_219BEDE34();
      goto LABEL_29;
    case 0xBuLL:
      v90 = swift_projectBox();
      v69 = v138;
      sub_21885AC00(v90, v138, type metadata accessor for NewFollowTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for NewFollowTodayFeedGroup;
      goto LABEL_40;
    case 0xCuLL:
      v94 = swift_projectBox();
      v69 = v139;
      sub_21885AC00(v94, v139, type metadata accessor for SubscriptionTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for SubscriptionTodayFeedGroup;
      goto LABEL_40;
    case 0xDuLL:
      v111 = swift_projectBox();
      v112 = v141;
      v113 = v140;
      v114 = v142;
      (*(v141 + 16))(v140, v111, v142);
      v115 = sub_219BED4C4();
LABEL_29:
      v81 = v115;
      (*(v112 + 8))(v113, v114);
      return v81;
    case 0xEuLL:
      v88 = swift_projectBox();
      v69 = v145;
      sub_21885AC00(v88, v145, type metadata accessor for SpotlightTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_40;
    case 0xFuLL:
      v99 = swift_projectBox();
      v69 = v147;
      sub_21885AC00(v99, v147, type metadata accessor for SuggestionTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_40;
    case 0x10uLL:
      v86 = swift_projectBox();
      v69 = v148;
      sub_21885AC00(v86, v148, type metadata accessor for SeenContentMarkTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      goto LABEL_40;
    case 0x11uLL:
      v104 = swift_projectBox();
      v105 = v144;
      v106 = v143;
      v107 = v146;
      (*(v144 + 16))(v143, v104, v146);
      sub_219BEE474();
      v81 = sub_2188539DC(v170);

      (*(v105 + 8))(v106, v107);
      return v81;
    case 0x12uLL:
      v117 = swift_projectBox();
      v83 = v149;
      sub_21885AC00(v117, v149, type metadata accessor for SharedWithYouTodayFeedGroup);
      v81 = sub_219BED784();
      v84 = type metadata accessor for SharedWithYouTodayFeedGroup;
      goto LABEL_37;
    case 0x13uLL:
      v123 = swift_projectBox();
      v124 = v151;
      sub_21885AC00(v123, v151, type metadata accessor for EngagementTodayFeedGroup);
      sub_2186F687C(0);
      sub_219BEDD14();
      sub_21885ACD0(v124, type metadata accessor for EngagementTodayFeedGroup);
      v81 = v170;

      return v81;
    case 0x14uLL:
      v108 = swift_projectBox();
      v69 = v152;
      sub_21885AC00(v108, v152, type metadata accessor for MySportsTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_40;
    case 0x15uLL:
      v110 = swift_projectBox();
      v69 = v153;
      sub_21885AC00(v110, v153, type metadata accessor for IntroToSportsTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_40;
    case 0x16uLL:
      v122 = swift_projectBox();
      v69 = v165;
      sub_21885AC00(v122, v165, type metadata accessor for ShortcutsTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_40;
    case 0x17uLL:
      v125 = swift_projectBox();
      v69 = v166;
      sub_21885AC00(v125, v166, type metadata accessor for ChannelTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_40;
    case 0x18uLL:
      v97 = swift_projectBox();
      v69 = v167;
      sub_21885AC00(v97, v167, type metadata accessor for SavedStoriesTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_40;
    case 0x19uLL:
      v96 = swift_projectBox();
      v69 = v168;
      sub_21885AC00(v96, v168, type metadata accessor for ChannelPickerTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_40;
    case 0x1AuLL:
      v128 = swift_projectBox();
      v69 = v169;
      sub_21885AC00(v128, v169, type metadata accessor for FoodTodayFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for FoodTodayFeedGroup;
      goto LABEL_40;
    case 0x1BuLL:
      v82 = swift_projectBox();
      v83 = v154;
      sub_21885AC00(v82, v154, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      v81 = sub_219BED784();
      v84 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
      goto LABEL_37;
    case 0x1CuLL:
      v126 = swift_projectBox();
      v83 = v156;
      sub_21885AC00(v126, v156, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      v81 = sub_219BED784();
      v84 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      goto LABEL_37;
    case 0x1DuLL:
      v127 = swift_projectBox();
      v69 = v158;
      sub_21885AC00(v127, v158, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      goto LABEL_40;
    case 0x1EuLL:
      v120 = swift_projectBox();
      v69 = v159;
      sub_21885AC00(v120, v159, type metadata accessor for BestOfBundleMagazineFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      goto LABEL_40;
    case 0x1FuLL:
      v103 = swift_projectBox();
      v69 = v160;
      sub_21885AC00(v103, v160, type metadata accessor for TrendingMagazineFeedGroup);
      v81 = sub_219BED784();
      v87 = type metadata accessor for TrendingMagazineFeedGroup;
LABEL_40:
      v92 = v87;
      v93 = v69;
      break;
    case 0x20uLL:
      v121 = swift_projectBox();
      v83 = v161;
      sub_21885AC00(v121, v161, type metadata accessor for NewIssueMagazineFeedGroup);
      v81 = sub_219BED784();
      v84 = type metadata accessor for NewIssueMagazineFeedGroup;
      goto LABEL_37;
    case 0x21uLL:
      sub_2186EBC7C(0);
      v89 = swift_projectBox();
      v83 = v163;
      sub_21885AC00(v89, v163, type metadata accessor for MyMagazinesMagazineFeedGroup);
      v81 = *v83;

      v84 = type metadata accessor for MyMagazinesMagazineFeedGroup;
      goto LABEL_37;
    case 0x22uLL:
      v85 = swift_projectBox();
      v83 = v164;
      sub_21885AC00(v85, v164, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
      v81 = *v83;

      v84 = type metadata accessor for RecommendedIssuesMagazineFeedGroup;
LABEL_37:
      v92 = v84;
      v93 = v83;
      break;
    default:
      v80 = swift_projectBox();
      sub_21885AC00(v80, v78, type metadata accessor for TodaySectionGapDescriptor);
      sub_21885AC00(v78, v75, type metadata accessor for TodaySectionGapDescriptor);
      if ((*(v71 + 48))(v75, 1, v70) == 1)
      {
        v81 = 7364967;
      }

      else
      {
        sub_21885E5A0(v75, v73, type metadata accessor for TodayBlueprintCollapsedSection);
        sub_2187FAD00(0);
        v170 = sub_219BE6944();
        v171 = v130;
        MEMORY[0x21CECC330](14906, 0xE200000000000000);
        MEMORY[0x21CECC330](*&v73[*(v70 + 20)], *&v73[*(v70 + 20) + 8]);
        v81 = v170;
        sub_21885ACD0(v73, type metadata accessor for TodayBlueprintCollapsedSection);
      }

      v92 = type metadata accessor for TodaySectionGapDescriptor;
      v93 = v78;
      break;
  }

  sub_21885ACD0(v93, v92);
  return v81;
}

void sub_218855280(uint64_t a1)
{
  if (!qword_280E91BF0)
  {
    sub_2188552DC();
    v1 = sub_219BEE494();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91BF0);
    }
  }
}

unint64_t sub_2188552DC()
{
  result = qword_280EC6348;
  if (!qword_280EC6348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC6348);
  }

  return result;
}

void sub_218855330(uint64_t a1)
{
  if (!qword_280E91F30)
  {
    type metadata accessor for MagazineFeedGroup(255);
    sub_2186EFA5C(&unk_280ED5DE0, type metadata accessor for MagazineFeedGroup, &unk_219C2DEC0);
    sub_2186EFA5C(&unk_280ED5E00, type metadata accessor for MagazineFeedGroup, &unk_219C2DE98);
    v1 = sub_219BEDE84();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91F30);
    }
  }
}

void sub_218855430(uint64_t a1)
{
  sub_2187FAD00(319);
  if (v1 <= 0x3F)
  {
    sub_2188554BC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2188554BC(uint64_t a1)
{
  if (!qword_280E8FBF8)
  {
    sub_218855524(255);
    v1 = sub_219BF52A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8FBF8);
    }
  }
}

void sub_218855524(uint64_t a1)
{
  if (!qword_280EE7028)
  {
    sub_219BE5BA4();
    v1 = sub_219BE3114();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE7028);
    }
  }
}

uint64_t sub_21885559C(uint64_t a1)
{
  v1 = type metadata accessor for TodayBlueprintCollapsedSection(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_2188555F4(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *(a3 + 16);
  if (!v7)
  {
    return;
  }

  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v21 = *(v9 + 72);
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    a1(&v23, v10);
    if (v6)
    {

      return;
    }

    v12 = v23;
    v13 = *(v23 + 16);
    v14 = *(v11 + 16);
    if (__OFADD__(v14, v13))
    {
      break;
    }

    if (swift_isUniquelyReferenced_nonNull_native() && v14 + v13 <= *(v11 + 24) >> 1)
    {
      if (*(v12 + 16))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v11 = a5();
      if (*(v12 + 16))
      {
LABEL_12:
        v15 = (*(v11 + 24) >> 1) - *(v11 + 16);
        a6(0);
        if (v15 < v13)
        {
          goto LABEL_21;
        }

        swift_arrayInitWithCopy();

        if (v13)
        {
          v16 = *(v11 + 16);
          v17 = __OFADD__(v16, v13);
          v18 = v16 + v13;
          if (v17)
          {
            goto LABEL_22;
          }

          *(v11 + 16) = v18;
        }

        goto LABEL_4;
      }
    }

    if (v13)
    {
      goto LABEL_20;
    }

LABEL_4:
    v10 += v21;
    if (!--v7)
    {
      return;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_218855868(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v47 = a4;
  v48 = a5;
  v45 = a2;
  v46 = a3;
  v52 = sub_219BF2094();
  v8 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BF2D74();
  if (*(a1 + 16))
  {
    v13 = sub_21870F700(v11, v12);
    v15 = v14;

    if (v15)
    {
      v16 = *(*(a1 + 56) + 8 * v13);
      sub_218856C8C(0, &qword_280E8BCA8, type metadata accessor for TodayModel, MEMORY[0x277D84560]);
      v17 = *(type metadata accessor for TodayModel(0) - 8);
      v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_219C09BA0;
      *(v19 + v18) = v16;
      swift_storeEnumTagMultiPayload();
      *a6 = v19;

      return;
    }
  }

  else
  {
  }

  v44 = a6;
  v20 = sub_219BF2D94();
  v21 = *(v20 + 16);
  if (!v21)
  {

    v27 = MEMORY[0x277D84F90];
LABEL_24:
    MEMORY[0x28223BE20](v39);
    v40 = v46;
    *(&v43 - 4) = v45;
    *(&v43 - 3) = v40;
    v41 = v48;
    *(&v43 - 2) = v47;
    *(&v43 - 1) = v41;
    v42 = sub_218855CB0(sub_218856200, (&v43 - 6), v27);

    *v44 = v42;
    return;
  }

  v23 = *(v8 + 16);
  v22 = v8 + 16;
  v24 = *(v22 + 64);
  v43 = v20;
  v25 = v20 + ((v24 + 32) & ~v24);
  v49 = *(v22 + 56);
  v50 = v23;
  v51 = v22;
  v26 = (v22 - 8);
  v27 = MEMORY[0x277D84F90];
  while (1)
  {
    v28 = v52;
    v50(v10, v25, v52);
    v29 = sub_219BF2084();
    (*v26)(v10, v28);
    v30 = *(v29 + 16);
    v31 = v27[2];
    v32 = v31 + v30;
    if (__OFADD__(v31, v30))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v32 <= v27[3] >> 1)
    {
      if (*(v29 + 16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v31 <= v32)
      {
        v34 = v31 + v30;
      }

      else
      {
        v34 = v31;
      }

      v27 = sub_218855C7C(isUniquelyReferenced_nonNull_native, v34, 1, v27);
      if (*(v29 + 16))
      {
LABEL_18:
        v35 = (v27[3] >> 1) - v27[2];
        sub_219BF3C84();
        if (v35 < v30)
        {
          goto LABEL_28;
        }

        swift_arrayInitWithCopy();

        if (v30)
        {
          v36 = v27[2];
          v37 = __OFADD__(v36, v30);
          v38 = v36 + v30;
          if (v37)
          {
            goto LABEL_29;
          }

          v27[2] = v38;
        }

        goto LABEL_8;
      }
    }

    if (v30)
    {
      goto LABEL_27;
    }

LABEL_8:
    v25 += v49;
    if (!--v21)
    {

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

void *sub_218855CB0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_218855FC8(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TodayModel(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v30 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(sub_219BF3C84() - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v29 = *(v16 + 72);
  v19 = MEMORY[0x277D84F90];
  v26 = v10;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_218F93498(v9, sub_218855FC8);
    }

    else
    {
      v20 = v28;
      sub_21872D044(v9, v28, type metadata accessor for TodayModel);
      sub_21872D044(v20, v30, type metadata accessor for TodayModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_218855FE8(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_218855FE8((v21 > 1), v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_21872D044(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for TodayModel);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

uint64_t sub_21885601C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = sub_218856CF0(*a1);
  if (qword_280E8D8B0 != -1)
  {
    swift_once();
  }

  v7 = qword_280F61778;
  sub_2186F20D4(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  v9 = sub_219BF2FA4();
  if (v9 == 1)
  {
    v10 = 0xE900000000000064;
    v11 = 0x656472616F626E6FLL;
  }

  else if (v9)
  {
    v12 = sub_219BF7894();
    MEMORY[0x21CECC330](v12);

    MEMORY[0x21CECC330](41, 0xE100000000000000);
    v11 = 0x286E776F6E6B6E75;
    v10 = 0xE800000000000000;
  }

  else
  {
    v10 = 0xEC00000064656472;
    v11 = 0x616F626E4F746F6ELL;
  }

  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_2186FC3BC();
  *(v8 + 32) = v11;
  *(v8 + 40) = v10;
  v13 = sub_219BF6214();
  sub_219BE5314("SportsOnboardingManager refreshing onboarding state, in response to refresh request, onboardingState=%{public}@", 111, 2, &dword_2186C1000, v7, v13, v8);

  sub_218856F00(a3);
  return a4(v6 & 1);
}

uint64_t sub_218856234@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v53 = a4;
  v54 = a2;
  v55 = a3;
  v7 = sub_219BF1D54();
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x28223BE20](v7);
  v49 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D83D88];
  sub_218856C8C(0, &qword_280E90EB0, MEMORY[0x277D32F30], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v46 - v11;
  v13 = sub_219BF1DF4();
  v47 = *(v13 - 8);
  v48 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BF1AD4();
  v52 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218856C8C(0, &unk_280EE34A0, MEMORY[0x277D2D148], v9);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v46 - v20;
  v22 = sub_219BF3C84();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = (v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v23 + 16);
  v46[1] = a1;
  v27(v26, a1, v22, v24);
  v28 = (*(v23 + 88))(v26, v22);
  if (v28 == *MEMORY[0x277D34128])
  {
    (*(v23 + 96))(v26, v22);
    v29 = sub_219BEBD44();
    (*(*(v29 - 8) + 56))(v21, 1, 1, v29);
    sub_219BEE204();
    swift_unknownObjectRelease();
    sub_21885759C(v21, &unk_280EE34A0, MEMORY[0x277D2D148]);
    v30 = type metadata accessor for TodayModel(0);
LABEL_11:
    swift_storeEnumTagMultiPayload();
    return (*(*(v30 - 8) + 56))(a5, 0, 1, v30);
  }

  if (v28 == *MEMORY[0x277D34108])
  {
    (*(v23 + 96))(v26, v22);
    v31 = *v26;
    v32 = sub_219BF0744();
    (*(*(v32 - 8) + 56))(v12, 1, 1, v32);
    sub_219BEE194();

    sub_21885759C(v12, &qword_280E90EB0, MEMORY[0x277D32F30]);
    v30 = type metadata accessor for TodayModel(0);
    goto LABEL_11;
  }

  if (v28 == *MEMORY[0x277D34100])
  {
    (*(v23 + 96))(v26, v22);
    sub_219BEE184();
    swift_unknownObjectRelease();
    v30 = type metadata accessor for TodayModel(0);
    goto LABEL_11;
  }

  if (v28 == *MEMORY[0x277D34130])
  {
    (*(v23 + 96))(v26, v22);
    v33 = v52;
    (*(v52 + 32))(v18, v26, v16);
    sub_219BEE234();
    (*(v33 + 8))(v18, v16);
    v30 = type metadata accessor for TodayModel(0);
    goto LABEL_11;
  }

  if (v28 == *MEMORY[0x277D34118])
  {
    (*(v23 + 96))(v26, v22);
    sub_219BEE1C4();
    swift_unknownObjectRelease();
    v30 = type metadata accessor for TodayModel(0);
    goto LABEL_11;
  }

  if (v28 == *MEMORY[0x277D340E8])
  {
    (*(v23 + 96))(v26, v22);
    sub_219BEE134();
    swift_unknownObjectRelease();
    v35 = type metadata accessor for TodayModel(0);
LABEL_21:
    swift_storeEnumTagMultiPayload();
    return (*(*(v35 - 8) + 56))(a5, 0, 1, v35);
  }

  if (v28 == *MEMORY[0x277D340F8])
  {
    (*(v23 + 96))(v26, v22);
    v37 = v49;
    v36 = v50;
    v38 = v51;
    (*(v50 + 32))(v49, v26, v51);
    sub_219BEE154();
    (*(v36 + 8))(v37, v38);
    v35 = type metadata accessor for TodayModel(0);
    goto LABEL_21;
  }

  if (v28 == *MEMORY[0x277D34120])
  {
    (*(v23 + 96))(v26, v22);
    v39 = *v26;
    sub_219BEE1E4();

    v35 = type metadata accessor for TodayModel(0);
    goto LABEL_21;
  }

  if (v28 == *MEMORY[0x277D34110])
  {
    (*(v23 + 96))(v26, v22);
    v41 = v47;
    v40 = v48;
    (*(v47 + 32))(v15, v26, v48);
    sub_219BEE114();
    (*(v41 + 8))(v15, v40);
    v35 = type metadata accessor for TodayModel(0);
    goto LABEL_21;
  }

  if (v28 != *MEMORY[0x277D340F0])
  {
    sub_218856C8C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_219C09BA0;
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_219BF7484();
    v43 = v56;
    v44 = v57;
    *(v42 + 56) = MEMORY[0x277D837D0];
    *(v42 + 64) = sub_2186FC3BC();
    *(v42 + 32) = v43;
    *(v42 + 40) = v44;
    MEMORY[0x21CEB8D80]("Unknown slot item %s encountered. Please update this switch statement to handle the new case.", v46[0]);
  }

  v45 = type metadata accessor for TodayModel(0);
  (*(*(v45 - 8) + 56))(a5, 1, 1, v45);
  return (*(v23 + 8))(v26, v22);
}

void sub_218856C8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218856CF0(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_userInfo);
  v4 = sub_219BF2FA4();
  if (v4 == 1)
  {
    if (a1 >> 62)
    {
      if (sub_219BF7214())
      {
        return 0;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return 0;
    }

    if (qword_280E8D8B0 != -1)
    {
      swift_once();
    }

    v14 = qword_280F61778;
    v15 = sub_219BF6214();
    v12 = sub_219BE5314("SportsOnboardingManager off-boarding user due to not having any favorited tags", 78, 2, &dword_2186C1000, v14, v15, MEMORY[0x277D84F90]);
    v13 = 0;
    goto LABEL_19;
  }

  if (v4)
  {
    return 0;
  }

  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_5:
    v6 = *(v1 + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager + 24);
    v7 = *(v1 + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager), v6);
    if ((*(v7 + 24))(v6, v7) == 2)
    {
      v8 = [objc_opt_self() sharedAccount];
      v9 = [v8 isUserSignedInToiCloud];

      if (v9)
      {
        if (qword_280E8D8B0 != -1)
        {
          swift_once();
        }

        v10 = qword_280F61778;
        v11 = sub_219BF6214();
        v12 = sub_219BE5314("SportsOnboardingManager onboarding user", 39, 2, &dword_2186C1000, v10, v11, MEMORY[0x277D84F90]);
        v13 = 1;
LABEL_19:
        [v3 setSportsOnboardingState_];
        return 1;
      }
    }

    return 0;
  }

  result = sub_219BF7214();
  if (result)
  {
    goto LABEL_5;
  }

  return result;
}

void sub_218856F00(uint64_t a1)
{
  v2 = v1;
  LOBYTE(v3) = a1;
  ObjectType = swift_getObjectType();
  if (qword_280E8D818 != -1)
  {
    swift_once();
  }

  v4 = qword_280F61718;
  sub_2186F20D4(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  v6 = sub_218857728(v3);
  v8 = v7;
  v9 = MEMORY[0x277D837D0];
  *(v5 + 56) = MEMORY[0x277D837D0];
  v10 = sub_2186FC3BC();
  *(v5 + 64) = v10;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  v11 = sub_219BF6214();
  sub_219BE5314("SportsOnboardingManager refresh onboarding state for observers, reason=%{public}@", 81, 2, &dword_2186C1000, v4, v11, v5);

  v12 = sub_219BF2FA4();
  v13 = v12;
  v14 = &v1[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_lastOnboardingState];
  if ((v1[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_lastOnboardingState + 8] & 1) != 0 || *v14 != v12)
  {
    if (qword_280E8D8B0 != -1)
    {
      swift_once();
    }

    v22 = qword_280F61778;
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_219C09EC0;
    v24 = sub_218857728(v3);
    *(v23 + 56) = v9;
    *(v23 + 64) = v10;
    *(v23 + 32) = v24;
    *(v23 + 40) = v25;
    if (v13 == 1)
    {
      v26 = 0x656472616F626E6FLL;
      v27 = 0xE900000000000064;
    }

    else if (v13)
    {
      v56 = 0x286E776F6E6B6E75;
      v57 = 0xE800000000000000;
      v60[0] = v13;
      v28 = sub_219BF7894();
      MEMORY[0x21CECC330](v28);

      MEMORY[0x21CECC330](41, 0xE100000000000000);
      v26 = 0x286E776F6E6B6E75;
      v27 = 0xE800000000000000;
    }

    else
    {
      v26 = 0x616F626E4F746F6ELL;
      v27 = 0xEC00000064656472;
    }

    *(v23 + 96) = v9;
    *(v23 + 104) = v10;
    *(v23 + 72) = v26;
    *(v23 + 80) = v27;
    v29 = sub_219BF6214();
    sub_219BE5314("SportsOnboardingManager triggering observers because onboarding state did change after refresh, reason=%{public}@, state=%{public}@", 131, 2, &dword_2186C1000, v22, v29, v23);

    *v14 = v13;
    v14[8] = 0;
    if ((v3 - 1) > 1u)
    {
      goto LABEL_22;
    }

    if (qword_280EE5FC8 != -1)
    {
      goto LABEL_42;
    }

    while (1)
    {
      v30 = sub_219BE5434();
      __swift_project_value_buffer(v30, qword_280F62670);
      v31 = sub_219BE5414();
      v32 = sub_219BF6214();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v56 = v34;
        *v33 = 67109378;
        *(v33 + 4) = v13 == 1;
        *(v33 + 8) = 2080;
        v35 = sub_218857728(v3);
        v37 = sub_2186D1058(v35, v36, &v56);

        *(v33 + 10) = v37;
        _os_log_impl(&dword_2186C1000, v31, v32, "SportsOnboardingManager setting sports notification to enabled=%{BOOL}d with reason=%s", v33, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x21CECF960](v34, -1, -1);
        MEMORY[0x21CECF960](v33, -1, -1);
      }

      v38 = *&v2[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_pushNotificationDataManager + 24];
      v39 = *&v2[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_pushNotificationDataManager + 32];
      __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_pushNotificationDataManager], v38);
      (*(v39 + 40))(v13 == 1, v38, v39);
LABEL_22:
      v40 = OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_observers;
      swift_beginAccess();
      v41 = *&v2[v40];
      if (v41 >> 62)
      {
        v3 = sub_219BF7214();
        if (!v3)
        {
          return;
        }
      }

      else
      {
        v3 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v3)
        {
          return;
        }
      }

      if (v3 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_42:
      swift_once();
    }

    v54 = v13;

    for (i = 0; i != v3; ++i)
    {
      if ((v41 & 0xC000000000000001) != 0)
      {
        v50 = MEMORY[0x21CECE0F0](i, v41);
      }

      else
      {
        v50 = *(v41 + 8 * i + 32);
      }

      v58 = ObjectType;
      v59 = &off_282A47430;
      v56 = v2;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v43 = v3;
        v44 = v2;
        v45 = *(v50 + 24);
        v46 = swift_getObjectType();
        v47 = *(v45 + 8);
        v48 = v44;
        v49 = v45;
        v2 = v44;
        v3 = v43;
        v47(&v56, v54, v46, v49);
        swift_unknownObjectRelease();
      }

      else
      {
        v51 = v2;
      }

      __swift_destroy_boxed_opaque_existential_1(&v56);
    }
  }

  else
  {
    v15 = v9;
    if (qword_280E8D8B0 != -1)
    {
      swift_once();
    }

    v16 = qword_280F61778;
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_219C09EC0;
    v18 = sub_218857728(v3);
    *(v17 + 56) = v15;
    *(v17 + 64) = v10;
    *(v17 + 32) = v18;
    *(v17 + 40) = v19;
    if (v13 == 1)
    {
      v20 = 0x656472616F626E6FLL;
      v21 = 0xE900000000000064;
    }

    else if (v13)
    {
      v56 = 0x286E776F6E6B6E75;
      v57 = 0xE800000000000000;
      v60[0] = v13;
      v52 = sub_219BF7894();
      MEMORY[0x21CECC330](v52);

      MEMORY[0x21CECC330](41, 0xE100000000000000);
      v20 = 0x286E776F6E6B6E75;
      v21 = 0xE800000000000000;
    }

    else
    {
      v20 = 0x616F626E4F746F6ELL;
      v21 = 0xEC00000064656472;
    }

    *(v17 + 96) = v15;
    *(v17 + 104) = v10;
    *(v17 + 72) = v20;
    *(v17 + 80) = v21;
    v53 = sub_219BF6214();
    sub_219BE5314("SportsOnboardingManager ignoring observers because state did not change after onboarding state refresh, reason=%{public}@, state=%{public}@", 139, 2, &dword_2186C1000, v16, v53, v17);
  }
}

uint64_t sub_21885759C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218856C8C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_21885760C(void *a1, int64_t a2, char a3)
{
  result = sub_218793218(a1, a2, a3, *v3, &qword_280E8BFF0, sub_218853400, sub_218853400);
  *v3 = result;
  return result;
}

uint64_t sub_21885765C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_219BF5414();
  }

  sub_2186C66AC();
  result = sub_219BF6F54();
  qword_280F61718 = result;
  return result;
}

unint64_t sub_218857728(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    v6 = 0xD000000000000011;
    if (a1 == 1)
    {
      v6 = 0xD000000000000017;
    }

    if (a1)
    {
      return v6;
    }

    else
    {
      return 1953066601;
    }
  }

  else if (a1 > 4u)
  {
    return 0xD000000000000021;
  }

  else if (a1 == 3)
  {
    sub_219BF7314();

    v1 = [objc_opt_self() sharedAccount];
    v2 = [v1 isUserSignedInToiCloud];

    if (v2)
    {
      v3 = 1702195828;
    }

    else
    {
      v3 = 0x65736C6166;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }

    MEMORY[0x21CECC330](v3, v4);

    return 0xD00000000000002ALL;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_2188578D8()
{
  sub_2186EB308(0);
  v82 = *(v0 - 8);
  v83 = v0;
  MEMORY[0x28223BE20](v0);
  v81 = &v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB228(0);
  v79 = *(v2 - 8);
  v80 = v2;
  MEMORY[0x28223BE20](v2);
  v78 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB140(0);
  v76 = *(v4 - 8);
  v77 = v4;
  MEMORY[0x28223BE20](v4);
  v75 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EFC0C(0);
  v73 = *(v6 - 8);
  v74 = v6;
  MEMORY[0x28223BE20](v6);
  v72 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018(0);
  v70 = *(v8 - 8);
  v71 = v8;
  MEMORY[0x28223BE20](v8);
  v69 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAF38(0);
  v67 = *(v10 - 8);
  v68 = v10;
  MEMORY[0x28223BE20](v10);
  v66 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_219BEEC14();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAE28(0);
  v62 = v13;
  v61 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v58 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAD48(0);
  v60 = v15;
  v59 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v57 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BF0D74();
  v56 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAC68(0);
  v21 = v20;
  v55 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88(0);
  v25 = v24;
  v84 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_219BF1584();
  v54 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v30 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v31);
  v33 = &v53 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188584D8(v85, v33);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186EAB00(0, &qword_280ED7560, type metadata accessor for TodayGapLocation, MEMORY[0x277D333C8], "location offlineModel ");
      v43 = v54;
      (*(v54 + 32))(v30, &v33[*(v42 + 48)], v28);
      v34 = sub_219BF1524();
      (*(v43 + 8))(v30, v28);
      sub_2188594E8(v33, type metadata accessor for TodayGapLocation);
      return v34;
    case 2u:
      v40 = v84;
      (*(v84 + 32))(v27, v33, v25);
      v34 = sub_219BF07B4();
      (*(v40 + 8))(v27, v25);
      return v34;
    case 3u:
      v41 = v55;
      (*(v55 + 32))(v23, v33, v21);
      v34 = sub_219BF07B4();
      (*(v41 + 8))(v23, v21);
      return v34;
    case 4u:
      v34 = sub_219BE5B24();

      return v34;
    case 5u:
      v44 = v56;
      (*(v56 + 32))(v19, v33, v17);
      v45 = sub_219BF0D44();
      v46 = v17;
      v34 = v45;
      (*(v44 + 8))(v19, v46);
      return v34;
    case 6u:
      sub_2186EAB00(0, &qword_280E90E70, sub_2186EAD48, sub_2186EAB88, " fallback ");
      v48 = *(v47 + 48);
      v49 = v59;
      v50 = v57;
      v51 = v60;
      (*(v59 + 32))(v57, v33, v60);
      v34 = sub_219BF07B4();
      (*(v49 + 8))(v50, v51);
      (*(v84 + 8))(&v33[v48], v25);
      return v34;
    case 7u:
      v37 = v61;
      v36 = v58;
      v38 = v62;
      (*(v61 + 32))(v58, v33, v62);
      goto LABEL_17;
    case 8u:
      return *v33;
    case 9u:
      v37 = v64;
      v36 = v63;
      v38 = v65;
      (*(v64 + 32))(v63, v33, v65);
      v39 = sub_219BEEBE4();
      goto LABEL_18;
    case 0xAu:
      v36 = v66;
      v37 = v67;
      v38 = v68;
      (*(v67 + 32))(v66, v33, v68);
      goto LABEL_17;
    case 0xBu:
      v36 = v69;
      v37 = v70;
      v38 = v71;
      (*(v70 + 32))(v69, v33, v71);
      goto LABEL_17;
    case 0xCu:
      v36 = v72;
      v37 = v73;
      v38 = v74;
      (*(v73 + 32))(v72, v33, v74);
      goto LABEL_17;
    case 0xDu:
      v36 = v75;
      v37 = v76;
      v38 = v77;
      (*(v76 + 32))(v75, v33, v77);
      goto LABEL_17;
    case 0xEu:
      v36 = v78;
      v37 = v79;
      v38 = v80;
      (*(v79 + 32))(v78, v33, v80);
      goto LABEL_17;
    case 0xFu:
      v36 = v81;
      v37 = v82;
      v38 = v83;
      (*(v82 + 32))(v81, v33, v83);
LABEL_17:
      v39 = sub_219BF07B4();
LABEL_18:
      v34 = v39;
      (*(v37 + 8))(v36, v38);
      break;
    default:
      v34 = *v33;
      sub_2186EA920(0);
      sub_2188594E8(&v33[*(v35 + 48)], type metadata accessor for TodayGapLocation);
      break;
  }

  return v34;
}

id sub_218858444(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC7NewsUI229EmailSignupAutomaticPresentor_newsletterManager);
  result = [v4 isSubscribed];
  if (result)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v6 = &selRef_optIntoSports;
    }

    else
    {
      v6 = &selRef_optOutOfSports;
    }

    v7 = *v6;

    return [v4 v7];
  }

  return result;
}

uint64_t sub_2188584D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21885853C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 64))(v2, &off_282A6CEF8, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_218858610(uint64_t a1)
{
  swift_getObjectType();
  sub_219BE3204();
  *(swift_allocObject() + 16) = a1;
  v2 = sub_219BE2E54();
  sub_219BE2F94();
}

double sub_218858704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a3;
  v24 = a1;
  v4 = *(*v3 + 80);
  v5 = *(*v3 + 88);
  v6 = *(*v3 + 96);
  v7 = *(*v3 + 104);
  v25 = v4;
  v26 = v5;
  v27 = v6;
  v28 = v7;
  v23 = sub_219BEBCF4();
  v20 = *(v23 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x28223BE20](v23);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  if ((sub_219BE0BD4() & 1) != 0 && sub_218858A78(v24, v4, v5, v6, v7))
  {
    v19 = v3[2];
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = v20;
    (*(v20 + 16))(v10, v24, v23);
    v14 = (*(v13 + 80) + 56) & ~*(v13 + 80);
    v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    *(v16 + 2) = v4;
    *(v16 + 3) = v5;
    *(v16 + 4) = v6;
    *(v16 + 5) = v7;
    *(v16 + 6) = v12;
    (*(v13 + 32))(&v16[v14], v10, v23);
    v17 = &v16[v15];
    v18 = v22;
    *v17 = v21;
    v17[1] = v18;

    sub_219BDD264();
  }

  return result;
}

uint64_t sub_21885895C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_218858994()
{
  v1 = sub_219BEBCF4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

BOOL sub_218858A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_219BEC064();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  sub_219BEBCF4();
  sub_219BEBCE4();
  v13 = (*(v10 + 88))(v12, v9);
  v14 = v13 == *MEMORY[0x277D2D4F0];
  if (v13 == *MEMORY[0x277D2D4F0] || v13 == *MEMORY[0x277D2D508])
  {
    goto LABEL_6;
  }

  if (v13 == *MEMORY[0x277D2D4F8] || v13 == *MEMORY[0x277D2D530])
  {
    return 0;
  }

  if (v13 == *MEMORY[0x277D2D520] || v13 == *MEMORY[0x277D2D528] || v13 == *MEMORY[0x277D2D510] || v13 == *MEMORY[0x277D2D518])
  {
    return 1;
  }

  if (v13 == *MEMORY[0x277D2D500])
  {
    return 0;
  }

LABEL_6:
  (*(v10 + 8))(v12, v9);
  return v14;
}

void sub_218858C68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TodayFeedServiceConfig(255);
    v7 = sub_218ADF7A8(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_218858D04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TodayFeedServiceConfig(255);
    v7 = sub_218847C00(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_218858DFC(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_218858E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v33 = a2;
  v29 = sub_219BDBD64();
  v2 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v28);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218853400(0);
  v27 = v7;
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218853494(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v31 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  sub_2186EFB34(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
  sub_2186EFB34(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
  sub_219BE2444();
  sub_2186EA920(0);
  v18 = *(v17 + 48);
  sub_219BDBD54();
  v19 = sub_219BDBD44();
  v21 = v20;
  (*(v2 + 8))(v4, v29);
  *v6 = v19;
  v6[1] = v21;
  sub_218859270(v32, v6 + v18, type metadata accessor for TodayGapLocation);
  swift_storeEnumTagMultiPayload();
  sub_2186EFB34(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
  sub_219BE5FB4();
  sub_219BE2404();
  (*(v30 + 8))(v9, v27);
  type metadata accessor for TodaySectionGapDescriptor(0);
  v22 = swift_allocBox();
  v24 = v23;
  v25 = type metadata accessor for TodayBlueprintCollapsedSection(0);
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  v34 = v22;
  (*(v12 + 16))(v31, v16, v11);
  sub_2186EB3E8();
  sub_219BE6924();
  return (*(v12 + 8))(v16, v11);
}

uint64_t sub_218859270(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_2188592F4(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = sub_219BF2FA4();
  if (qword_280E8D8B0 != -1)
  {
    swift_once();
  }

  v4 = qword_280F61778;
  sub_2186F20D4(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09EC0;
  if (v3 == 1)
  {
    v6 = 0xE900000000000064;
    v7 = 0x656472616F626E6FLL;
  }

  else if (v3)
  {
    v8 = sub_219BF7894();
    MEMORY[0x21CECC330](v8);

    MEMORY[0x21CECC330](41, 0xE100000000000000);
    v7 = 0x286E776F6E6B6E75;
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEC00000064656472;
    v7 = 0x616F626E4F746F6ELL;
  }

  v9 = MEMORY[0x277D837D0];
  *(v5 + 56) = MEMORY[0x277D837D0];
  v10 = sub_2186FC3BC();
  *(v5 + 64) = v10;
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;
  if (v2)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v2)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x21CECC330](v11, v12);

  *(v5 + 96) = v9;
  *(v5 + 104) = v10;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0xE000000000000000;
  v13 = sub_219BF6214();
  sub_219BE5314("SportsOnboardingManager initialized state=%{public}@, updated=%{public}@", 72, 2, &dword_2186C1000, v4, v13, v5);

  return result;
}

uint64_t sub_2188594E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21885955C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_2187FAD00(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }
}

uint64_t sub_218859624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_218847DF4(0, &unk_280EE58B0, sub_2187FAD00, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v38 - v7;
  sub_21880B928(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (a1 + *(type metadata accessor for TodayPrewarmBlueprintModifier(0) + 20));
  v15 = v14[1];
  if (v15)
  {
    v16 = *v14;
    v18 = v14[2];
    v17 = v14[3];
    (*(v11 + 16))(v13, a2, v10);

    sub_219BEB354();
    (*(v11 + 8))(v13, v10);
    sub_2187FAD00(0);
    v20 = (*(*(v19 - 8) + 48))(v8, 1, v19);
    sub_218ADF7F0(v8);
    if (v20 == 1)
    {
      if (qword_280E8D7A0 != -1)
      {
        swift_once();
      }

      v21 = qword_280F616D8;
      sub_2186F20D4(0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_219C09BA0;
      *(v22 + 56) = MEMORY[0x277D837D0];
      *(v22 + 64) = sub_2186FC3BC();
      *(v22 + 32) = v16;
      *(v22 + 40) = v15;
      v23 = sub_219BF6214();
      sub_219BE5314("Skipping bookmark restoration because section is missing, section=%{public}@", 76, 2, &dword_2186C1000, v21, v23, v22);

      v24 = MEMORY[0x277D6D868];
    }

    else
    {
      if (qword_280E8D7A0 != -1)
      {
        swift_once();
      }

      v29 = qword_280F616D8;
      sub_2186F20D4(0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_219C09EC0;
      v31 = MEMORY[0x277D837D0];
      *(v30 + 56) = MEMORY[0x277D837D0];
      v32 = sub_2186FC3BC();
      *(v30 + 64) = v32;
      *(v30 + 32) = v16;
      *(v30 + 40) = v15;
      v39 = 0;
      v40 = 0xE000000000000000;
      v38[0] = v18;
      v38[1] = v17;
      type metadata accessor for CGPoint(0);

      sub_219BF7484();
      v33 = v39;
      v34 = v40;
      *(v30 + 96) = v31;
      *(v30 + 104) = v32;
      *(v30 + 72) = v33;
      *(v30 + 80) = v34;
      v35 = sub_219BF6214();
      sub_219BE5314("Restoring to bookmark with section=%{public}@, offset=%{public}@", 64, 2, &dword_2186C1000, v29, v35, v30);

      *a3 = v16;
      a3[1] = v15;
      a3[2] = v18;
      a3[3] = v17;
      v24 = MEMORY[0x277D6D870];
    }

    v36 = *v24;
    v37 = sub_219BE6DF4();
    return (*(*(v37 - 8) + 104))(a3, v36, v37);
  }

  else
  {
    v25 = *MEMORY[0x277D6D868];
    v26 = sub_219BE6DF4();
    v27 = *(*(v26 - 8) + 104);

    return v27(a3, v25, v26);
  }
}

void sub_218859A8C(uint64_t a1)
{
  sub_218859618(a1, *(a1 + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_subscriptionService));
  [*(a1 + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_userInfo) addObserver_];
  v2 = [objc_opt_self() sharedAccount];
  [v2 addObserver_];
}

void sub_218859B24(uint64_t a1)
{
  if (!qword_280EE3740)
  {
    sub_21880B928(255);
    sub_219BE6DF4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE3740);
    }
  }
}

double sub_218859BA8(const char *a1, uint64_t a2)
{
  if (qword_280E8D8B0 != -1)
  {
    swift_once();
  }

  v4 = qword_280F61778;
  v5 = sub_219BF6214();
  v6 = MEMORY[0x277D84F90];

  return sub_219BE5314(a1, a2, 2, &dword_2186C1000, v4, v5, v6);
}

uint64_t sub_218859C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2187608D4;

  return MEMORY[0x2821D51C0](a1, a2, a3, a4, a5);
}

uint64_t sub_218859D3C(uint64_t a1, void (*a2)(void (**)()), uint64_t a3)
{
  v49 = a3;
  v50 = a2;
  v5 = *v3;
  v6 = *MEMORY[0x277D85000];
  v7 = *MEMORY[0x277D85000] & *v3;
  v8 = sub_219BE99E4();
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x28223BE20](v8);
  v46 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_219BED174();
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x28223BE20](v10);
  v43 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BED1D4();
  v41 = *(v12 - 8);
  v42 = v12;
  MEMORY[0x28223BE20](v12);
  v40 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *((v6 & v5) + 0x68);
  v15 = *((v6 & v5) + 0x70);
  v16 = *((v6 & v5) + 0x98);
  v37 = *((v6 & v5) + 0x88);
  v38 = v14;
  aBlock = v14;
  v53 = v15;
  v54 = v37;
  v55 = v16;
  v17 = sub_219BEB334();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  if (qword_280E8E3C8 != -1)
  {
    swift_once();
  }

  v39 = qword_280E8E3D0;
  (*(v18 + 16))(v21, a1, v17);
  v22 = (*(v18 + 80) + 96) & ~*(v18 + 80);
  v23 = (v19 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = *(v7 + 80);
  v25 = v38;
  *(v24 + 32) = *(v7 + 96);
  *(v24 + 40) = v25;
  *(v24 + 48) = v15;
  *(v24 + 56) = *(v7 + 120);
  v26 = v37;
  *(v24 + 64) = *(v7 + 128);
  *(v24 + 72) = v26;
  *(v24 + 80) = *(v7 + 144);
  *(v24 + 88) = v16;
  (*(v18 + 32))(v24 + v22, v21, v17);
  *(v24 + v23) = v3;
  v56 = sub_21885A3E4;
  v57 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_218793E0C;
  v55 = &block_descriptor_24_7;
  v27 = _Block_copy(&aBlock);
  v28 = v3;
  v29 = v40;
  sub_219BED1A4();
  v51 = MEMORY[0x277D84F90];
  sub_2187FB084(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v30 = MEMORY[0x277D85198];
  sub_2186DDE18(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21875B274(&qword_280E8EFA0, &qword_280E8EFB0, v30);
  v31 = v43;
  v32 = v45;
  sub_219BF7164();
  MEMORY[0x21CECD460](0, v29, v31, v27);
  _Block_release(v27);
  (*(v44 + 8))(v31, v32);
  (*(v41 + 8))(v29, v42);

  v34 = v46;
  v33 = v47;
  *v46 = nullsub_1;
  v34[1] = 0;
  v35 = v48;
  (*(v33 + 104))(v34, *MEMORY[0x277D6E7E0], v48);
  v50(v34);
  return (*(v33 + 8))(v34, v35);
}

uint64_t sub_21885A2E0()
{
  v1 = sub_219BEB334();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_21885A3E4()
{
  v1 = *(sub_219BEB334() - 8);
  v2 = (*(v1 + 80) + 96) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_21885A490(v0 + v2, v3);
}

void sub_21885A490(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = *MEMORY[0x277D85000];
  v53 = *MEMORY[0x277D85000] & *a2;
  v6 = sub_219BDC014();
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x28223BE20](v6);
  v54 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *((v5 & v4) + 0x70);
  v9 = *((v5 & v4) + 0x88);
  v10 = *((v5 & v4) + 0x98);
  v52 = *((v5 & v4) + 0x68);
  v64[0] = v52;
  v64[1] = v8;
  v51 = v8;
  v50 = v9;
  v64[2] = v9;
  v65 = v10;
  v49 = v10;
  v11 = sub_219BEB334();
  v57 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v48 = &v44 - v12;
  v13 = sub_219BF0644();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  v20 = *((v5 & v4) + 0x50);
  v21 = *((v5 & v4) + 0x58);
  v47 = *((v5 & v4) + 0x78);
  v46 = v21;
  swift_getAssociatedConformanceWitness();
  v58 = v11;
  v59 = a1;
  v22 = sub_21885AB90();
  if ((~v22 & 0xF000000000000007) != 0)
  {
    v45 = v22;
    sub_219BEE844();
    (*(v14 + 104))(v16, *MEMORY[0x277D32EF8], v13);
    sub_2187FB084(&unk_280E90EE0, MEMORY[0x277D32F00], MEMORY[0x277D32F10]);
    v23 = sub_219BF53A4();
    v24 = *(v14 + 8);
    v24(v16, v13);
    v24(v19, v13);
    if (v23)
    {
      sub_21885AB78(v45);
    }

    else
    {
      v44 = *((*MEMORY[0x277D85000] & *a2) + 0xF8);
      v25 = v44;
      swift_beginAccess();
      v26 = v58;
      v27 = v57;
      v28 = &a2[v25];
      v29 = v48;
      (*(v57 + 16))(v48, v28, v58);
      v30 = v52;
      v31 = v51;
      v32 = v50;
      v33 = v49;
      sub_219BE78E4();
      (*(v27 + 8))(v29, v26);
      __swift_project_boxed_opaque_existential_1(v64, v65);
      v34 = v54;
      v35 = sub_219BE6E14();
      MEMORY[0x28223BE20](v35);
      v36 = v46;
      *(&v44 - 12) = v20;
      *(&v44 - 11) = v36;
      v37 = v53;
      *(&v44 - 10) = *(v53 + 96);
      *(&v44 - 9) = v30;
      v38 = v47;
      *(&v44 - 8) = v31;
      *(&v44 - 7) = v38;
      *(&v44 - 6) = *(v37 + 128);
      *(&v44 - 5) = v32;
      *(&v44 - 4) = *(v37 + 144);
      *(&v44 - 3) = v33;
      *(&v44 - 2) = v59;
      v60 = v30;
      v61 = v31;
      v62 = v32;
      v63 = v33;
      v52 = sub_219BE6A54();
      sub_2187FB084(&unk_280EE9BE0, MEMORY[0x277CC9A28], MEMORY[0x277CC9A48]);
      v39 = v56;
      v53 = sub_219BF57E4();
      v40 = *(v55 + 8);
      v40(v34, v39);
      __swift_project_boxed_opaque_existential_1(v64, v65);
      v41 = sub_219BE6E04();
      MEMORY[0x28223BE20](v41);
      *(&v44 - 2) = a2;
      v42 = sub_219BF57E4();
      v40(v34, v39);
      v43 = v44;
      swift_beginAccess();
      (*(v57 + 24))(&a2[v43], v59, v58);
      swift_endAccess();
      sub_21885AF14(v53, v42);
      sub_21885AB78(v45);

      __swift_destroy_boxed_opaque_existential_1(v64);
    }
  }
}

double sub_21885AB78(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_21885AB90()
{
  result = sub_219BEB284();
  if ((~result & 0xF000000000000007) != 0)
  {
    v1 = result;
    v2 = sub_219BEE774();
    sub_21885AB78(v1);
    return v2;
  }

  return result;
}

uint64_t sub_21885AC00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21885AC68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21885ACD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21885AD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2187FAD00(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21885AE44@<X0>(uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_219BEB334();
  sub_219BEB364();
  v9 = sub_219BE6A54();
  return (*(*(v9 - 8) + 56))(a4, 0, 1, v9);
}

void sub_21885AF14(uint64_t a1, uint64_t a2)
{
  v179 = a1;
  v4 = *v2;
  v5 = *MEMORY[0x277D85000];
  v167 = type metadata accessor for OfflineReadinessSection(0);
  MEMORY[0x28223BE20](v167);
  v166 = (&v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v165 = type metadata accessor for OfflineFeedGroupProcessorResult(0);
  MEMORY[0x28223BE20](v165);
  v164 = &v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_219BE5434();
  v154 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v153 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v177 = &v151 - v10;
  MEMORY[0x28223BE20](v11);
  v152 = &v151 - v12;
  MEMORY[0x28223BE20](v13);
  v163 = &v151 - v14;
  MEMORY[0x28223BE20](v15);
  v162 = &v151 - v16;
  sub_2186EB77C(0);
  v190 = v17;
  v155 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v168 = &v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v182 = &v151 - v20;
  v21 = *((v5 & v4) + 0x70);
  v22 = *((v5 & v4) + 0x88);
  v192 = v2;
  v23 = *((v5 & v4) + 0x98);
  v183 = v24;
  v200[0] = v24;
  v200[1] = v21;
  v200[2] = v22;
  v201 = v23;
  v25 = sub_219BE6A54();
  v191 = *(v25 - 1);
  MEMORY[0x28223BE20](v25);
  v176 = &v151 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v184 = &v151 - v28;
  MEMORY[0x28223BE20](v29);
  v161 = &v151 - v30;
  MEMORY[0x28223BE20](v31);
  v193 = &v151 - v32;
  MEMORY[0x28223BE20](v33);
  v178 = &v151 - v34;
  v151 = v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v151 - v37;
  if (!sub_219BF5A64())
  {
LABEL_11:
    v44 = v179;
    if (sub_219BF5A64())
    {
      v45 = v192;
      v46 = *v192;
      v47 = *MEMORY[0x277D85000];
      v48 = *((*MEMORY[0x277D85000] & *v192) + 0x100);
      v160 = *((*MEMORY[0x277D85000] & *v192) + 0xE0);
      v157 = *((v47 & v46) + 0xB0);
      v156 = *((v47 & v46) + 0xA8);
      v174 = v48;
      swift_beginAccess();
      v49 = 0;
      v175 = 0;
      v189 = (v191 + 16);
      v180 = (v191 + 32);
      v159 = (v155 + 16);
      v158 = (v155 + 8);
      v50 = (v191 + 8);
      v181 = (v154 + 8);
      *&v51 = 136446210;
      v169 = v51;
      v52 = v184;
      v53 = v178;
      v186 = v191 + 8;
      while (1)
      {
        v56 = sub_219BF5A44();
        sub_219BF59D4();
        if (v56)
        {
          v57 = *(v191 + 16);
          v57(v53, (v44 + ((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v49), v25);
        }

        else
        {
          v118 = sub_219BF7344();
          if (v151 != 8)
          {
            goto LABEL_55;
          }

          v200[0] = v118;
          v57 = *v189;
          (*v189)(v53, v200, v25);
          swift_unknownObjectRelease();
        }

        if (__OFADD__(v49, 1))
        {
          __break(1u);
          goto LABEL_52;
        }

        v187 = v49 + 1;
        (*v180)(v193, v53, v25);
        sub_219BE6934();
        sub_2186CFDE4(0, &qword_280EB0C68, &protocol descriptor for FeedGroupOfflineableProviding);
        v58 = swift_dynamicCast();
        v188 = v49;
        if (!v58)
        {
          break;
        }

        v59 = *(&v195 + 1);
        v60 = v196;
        __swift_project_boxed_opaque_existential_1(&v194, *(&v195 + 1));
        (*(v60 + 8))(&v197, v59, v60);
        __swift_destroy_boxed_opaque_existential_1(&v194);
        if (!*(&v198 + 1))
        {
          goto LABEL_24;
        }

        sub_2186CB1F0(&v197, v200);
        v61 = v168;
        v62 = v190;
        (*v159)(v168, &v45[v174], v190);
        sub_2187FB084(&qword_280EE7460, sub_2186EB77C, MEMORY[0x277D6CC48]);
        sub_219BF5DF4();
        sub_219BF5E84();
        v63 = sub_219BF5E74();
        (*v158)(v61, v62);
        if (v63 >= sub_219BEE524())
        {
          v119 = v152;
          sub_2187FB8F4(v152);
          v120 = v193;
          v57(v52, v193, v25);
          v121 = sub_219BE5414();
          v122 = sub_219BF6214();
          if (os_log_type_enabled(v121, v122))
          {
            v123 = v52;
            v124 = swift_slowAlloc();
            v125 = swift_slowAlloc();
            *&v197 = v125;
            *v124 = v169;
            v126 = sub_219BE6944();
            v128 = v127;
            v129 = *v186;
            (*v186)(v123, v25);
            v130 = sub_2186D1058(v126, v128, &v197);

            *(v124 + 4) = v130;
            _os_log_impl(&dword_2186C1000, v121, v122, "Offline Readiness will ignore inserted section because the group limit has been reached, id=%{public}s", v124, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v125);
            MEMORY[0x21CECF960](v125, -1, -1);
            MEMORY[0x21CECF960](v124, -1, -1);

            (*v181)(v152, v185);
            v129(v193, v25);
          }

          else
          {

            v131 = *v186;
            (*v186)(v52, v25);
            (*v181)(v119, v185);
            v131(v120, v25);
          }

          __swift_destroy_boxed_opaque_existential_1(v200);
          goto LABEL_35;
        }

        v64 = v162;
        v65 = v45;
        sub_2187FB8F4(v162);
        v66 = v161;
        v57(v161, v193, v25);
        v67 = sub_219BE5414();
        v68 = sub_219BF6214();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *&v197 = v70;
          *v69 = v169;
          v71 = sub_219BE6944();
          v73 = v72;
          v74 = *v186;
          v173 = v186 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v74(v66, v25);
          v75 = sub_2186D1058(v71, v73, &v197);

          *(v69 + 4) = v75;
          _os_log_impl(&dword_2186C1000, v67, v68, "Offline Readiness will process inserted section, id=%{public}s", v69, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v70);
          v76 = v192;
          MEMORY[0x21CECF960](v70, -1, -1);
          MEMORY[0x21CECF960](v69, -1, -1);

          v77 = *v181;
          v78 = v185;
          (*v181)(v64, v185);
        }

        else
        {

          v91 = *v186;
          v173 = v186 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v91(v66, v25);
          v77 = *v181;
          v78 = v185;
          (*v181)(v64, v185);
          v76 = v65;
        }

        v92 = *(v76 + v157);
        v93 = v163;
        v94 = sub_2187FB8F4(v163);
        MEMORY[0x28223BE20](v94);
        *(&v151 - 2) = v200;
        *(&v151 - 1) = v93;
        v95 = v175;
        sub_21885E70C(sub_21885E92C, (&v151 - 4), v92);
        v175 = v95;
        v96 = v164;
        sub_2194F8B9C(v97, v164);
        v77(v93, v78);
        v98 = *(v76 + v156);
        type metadata accessor for OfflineFeedManifest(0);
        v99 = objc_allocWithZone(MEMORY[0x277D30F10]);
        sub_219BDB954();
        v100 = sub_219BF5904();
        v101 = sub_219BF5904();
        v102 = sub_219BF5904();
        v103 = sub_219BF5904();
        v104 = sub_219BF5904();
        v105 = [v99 initWithAssetURLs:v100 assetWrappingKeyIDs:v101 recordIDs:v102 avAssetIDs:v103 avAssetKeyIDs:v104];

        v106 = [v98 interestTokenForContentManifest_];
        v172 = sub_219BE6944();
        v171 = v107;
        v108 = v167;
        v109 = v166;
        sub_2187A96A4(v96, v166 + *(v167 + 20), type metadata accessor for OfflineFeedManifest);
        *&v197 = *(v96 + *(v165 + 20));

        sub_2191EF6DC(v110);
        v170 = v197;
        v111 = v201;
        v112 = v202;
        __swift_project_boxed_opaque_existential_1(v200, v201);
        v113 = *(v112 + 80);
        v114 = v106;
        v115 = v113(v111, v112);
        v45 = v192;
        v116 = v171;
        *v109 = v172;
        v109[1] = v116;
        *(v109 + v108[6]) = v170;
        *(v109 + v108[7]) = v114;
        *(v109 + v108[8]) = v115 & 1;
        swift_beginAccess();
        sub_219BE2404();
        swift_endAccess();

        v117 = v193;
        sub_2194CA4D0(v109, type metadata accessor for OfflineReadinessSection);
        v50 = v186;
        (*v186)(v117, v25);
        sub_2194CA4D0(v96, type metadata accessor for OfflineFeedGroupProcessorResult);
        __swift_destroy_boxed_opaque_existential_1(v200);
        v44 = v179;
        v53 = v178;
LABEL_14:
        v55 = sub_219BF5A64();
        v49 = v188 + 1;
        v52 = v184;
        if (v187 == v55)
        {
          goto LABEL_36;
        }
      }

      v196 = 0;
      v194 = 0u;
      v195 = 0u;
      sub_2194CA650(&v194, &qword_27CC1B090, &qword_280EB0C68, &protocol descriptor for FeedGroupOfflineableProviding, sub_2186C6F70);
      v197 = 0u;
      v198 = 0u;
      v199 = 0;
LABEL_24:
      v79 = v53;
      sub_2194CA650(&v197, &qword_280ECED58, qword_280ECED60, &protocol descriptor for FeedGroupOfflineable, sub_2186C6F70);
      v80 = v177;
      sub_2187FB8F4(v177);
      v81 = v176;
      v57(v176, v193, v25);
      v82 = sub_219BE5414();
      v83 = sub_219BF6214();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v200[0] = v85;
        *v84 = v169;
        v86 = sub_219BE6944();
        v88 = v87;
        v89 = *v186;
        (*v186)(v81, v25);
        v90 = sub_2186D1058(v86, v88, v200);
        v53 = v178;

        *(v84 + 4) = v90;
        _os_log_impl(&dword_2186C1000, v82, v83, "Offline Readiness will ignore inserted section because it does not support offline mode, id=%{public}s", v84, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v85);
        MEMORY[0x21CECF960](v85, -1, -1);
        MEMORY[0x21CECF960](v84, -1, -1);

        v50 = v186;
        (*v181)(v80, v185);
        v89(v193, v25);
        v44 = v179;
        v45 = v192;
      }

      else
      {

        v50 = v186;
        v54 = *v186;
        (*v186)(v81, v25);
        (*v181)(v80, v185);
        v54(v193, v25);
        v45 = v192;
        v53 = v79;
      }

      goto LABEL_14;
    }

    v175 = 0;
LABEL_35:
    v45 = v192;
LABEL_36:
    v25 = MEMORY[0x277D85000];
    v132 = *((*MEMORY[0x277D85000] & *v45) + 0x100);
    swift_beginAccess();
    v133 = v45;
    v134 = v155;
    v135 = *(v155 + 16);
    v136 = v168;
    v137 = v190;
    v135(v168, &v133[v132], v190);
    sub_2187FB084(&qword_280EE7460, sub_2186EB77C, MEMORY[0x277D6CC48]);
    sub_219BF5DF4();
    sub_219BF5E84();
    v193 = sub_219BF5E74();
    v138 = *(v134 + 8);
    v138(v136, v137);
    v50 = v133;
    v135(v136, &v133[v132], v137);
    sub_2194C4F08(v136);
    v44 = v139;
    v138(v136, v137);
    v53 = (v44 >> 62);
    if (v44 >> 62)
    {
LABEL_52:
      v150 = sub_219BF7214();
      v140 = *v25;
      if (!v150)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v140 = *v25;
      if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_38:
        v141 = *(v50 + *((v140 & *v50) + 0x108));
        if (!v141)
        {
          goto LABEL_56;
        }

        if (*(v141 + 48) == 1)
        {
          *(v141 + 49) = 1;
        }

        else
        {
          *(v141 + 48) = 1;

          sub_219BE3204();

          v142 = sub_219BE2E54();
          sub_219BE3024();

          v140 = *v25;
        }
      }
    }

    v143 = *((v140 & *v50) + 0xF0);

    sub_219BE2E84();

    if ((v197 & 1) == 0)
    {
      v144 = v153;
      sub_2187FB8F4(v153);

      v145 = sub_219BE5414();
      v146 = sub_219BF6214();
      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        *v147 = 134349312;
        if (v53)
        {
          v148 = sub_219BF7214();
        }

        else
        {
          v148 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v147 + 4) = v148;

        *(v147 + 12) = 2050;
        *(v147 + 14) = v193;
        _os_log_impl(&dword_2186C1000, v145, v146, "Offline Readiness processor will prefetch %{public}ld missing asset handles from %{public}ld sections", v147, 0x16u);
        MEMORY[0x21CECF960](v147, -1, -1);
      }

      else
      {
      }

      (*(v154 + 8))(v144, v185);
    }

    v149 = *(v50 + v143);
    swift_beginAccess();
    *(v149 + 72) = v44;

    sub_2187FC154();

    return;
  }

  v39 = 0;
  v189 = (v191 + 16);
  v40 = (v191 + 8);
  while (1)
  {
    v41 = sub_219BF5A44();
    sub_219BF59D4();
    if (v41)
    {
      (*(v191 + 16))(v38, a2 + ((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v39, v25);
      v42 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    v43 = sub_219BF7344();
    if (v151 != 8)
    {
      break;
    }

    v200[0] = v43;
    (*v189)(v38, v200, v25);
    swift_unknownObjectRelease();
    v42 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

LABEL_5:
    sub_219BE6944();
    (*v40)(v38, v25);
    swift_beginAccess();
    sub_219BE2414();
    swift_endAccess();

    ++v39;
    if (v42 == sub_219BF5A64())
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

uint64_t type metadata accessor for OfflineFeedGroupProcessorResult(uint64_t a1)
{
  result = qword_280EA8C90;
  if (!qword_280EA8C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21885C740(uint64_t a1)
{
  type metadata accessor for OfflineFeedManifest(319);
  if (v1 <= 0x3F)
  {
    sub_21885C7F4(319, &qword_280E8ED48, sub_21897A4D4, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21885C7F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21885C858(uint64_t *a1@<X8>)
{
  v157 = a1;
  v155 = type metadata accessor for FoodTodayFeedGroup(0);
  MEMORY[0x28223BE20](v155);
  v156 = &v108 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for ChannelPickerTodayFeedGroup(0);
  MEMORY[0x28223BE20](v153);
  v154 = &v108 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for SavedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v151);
  v152 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for ChannelTodayFeedGroup(0);
  MEMORY[0x28223BE20](v149);
  v150 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for ShortcutsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v147);
  v148 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for NewIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v145);
  v146 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for TrendingMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v143);
  v144 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for BestOfBundleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v141);
  v142 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for FeaturedIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v139);
  v140 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v137);
  v138 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for FeaturedArticleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v135);
  v136 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for IntroToSportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v133);
  v134 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for MySportsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v131);
  v132 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for SharedWithYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v129);
  v130 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for SeenContentMarkTodayFeedGroup(0);
  MEMORY[0x28223BE20](v127);
  v128 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for SuggestionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v125);
  v126 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for SpotlightTodayFeedGroup(0);
  MEMORY[0x28223BE20](v123);
  v124 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218855280(0);
  v122 = v18;
  v121 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v120 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for SubscriptionTodayFeedGroup(0);
  MEMORY[0x28223BE20](v118);
  v119 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for NewFollowTodayFeedGroup(0);
  MEMORY[0x28223BE20](v116);
  v117 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for TopicTodayFeedGroup(0);
  MEMORY[0x28223BE20](v114);
  v115 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for MoreForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v112);
  v113 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for LatestStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v110);
  v111 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for MissedStoriesTodayFeedGroup(0);
  MEMORY[0x28223BE20](v108);
  v109 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ForYouTodayFeedGroup(0);
  MEMORY[0x28223BE20](v26);
  v28 = &v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for TrendingTodayFeedGroup(0);
  MEMORY[0x28223BE20](v29);
  v31 = &v108 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for LocalNewsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v32);
  v34 = &v108 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for NewspaperTodayFeedGroup(0);
  MEMORY[0x28223BE20](v35);
  v37 = &v108 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for CuratedTodayFeedGroup(0);
  MEMORY[0x28223BE20](v38);
  v40 = &v108 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch((v41 >> 58) & 0x3C | (v41 >> 1) & 3)
  {
    case 1uLL:
      v84 = swift_projectBox();
      sub_21885AC00(v84, v40, type metadata accessor for CuratedTodayFeedGroup);
      v85 = v157;
      v157[3] = v38;
      v85[4] = sub_21885E3D4(&qword_280ECB720, type metadata accessor for CuratedTodayFeedGroup, &unk_219C98D34);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v85);
      v62 = type metadata accessor for CuratedTodayFeedGroup;
      v63 = v40;
      goto LABEL_33;
    case 2uLL:
      v70 = swift_projectBox();
      sub_21885AC00(v70, v37, type metadata accessor for NewspaperTodayFeedGroup);
      v71 = v157;
      v157[3] = v35;
      v71[4] = sub_21885E3D4(&qword_27CC0B9B8, type metadata accessor for NewspaperTodayFeedGroup, &unk_219C85C94);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v71);
      v62 = type metadata accessor for NewspaperTodayFeedGroup;
      v63 = v37;
      goto LABEL_33;
    case 3uLL:
      v90 = swift_projectBox();
      sub_21885AC00(v90, v34, type metadata accessor for LocalNewsTodayFeedGroup);
      v91 = v157;
      v157[3] = v32;
      v91[4] = sub_21885E3D4(&unk_280EE18D0, type metadata accessor for LocalNewsTodayFeedGroup, &unk_219C33204);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v91);
      v62 = type metadata accessor for LocalNewsTodayFeedGroup;
      v63 = v34;
      goto LABEL_33;
    case 4uLL:
      v60 = swift_projectBox();
      sub_21885AC00(v60, v31, type metadata accessor for TrendingTodayFeedGroup);
      v61 = v157;
      v157[3] = v29;
      v61[4] = sub_21885E3D4(&qword_280EC6248, type metadata accessor for TrendingTodayFeedGroup, &unk_219C5DD14);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v61);
      v62 = type metadata accessor for TrendingTodayFeedGroup;
      v63 = v31;
      goto LABEL_33;
    case 5uLL:
      v88 = swift_projectBox();
      sub_21885AC00(v88, v28, type metadata accessor for ForYouTodayFeedGroup);
      v89 = v157;
      v157[3] = v26;
      v89[4] = sub_21885E3D4(&qword_280ECE988, type metadata accessor for ForYouTodayFeedGroup, &unk_219C549C4);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v89);
      v62 = type metadata accessor for ForYouTodayFeedGroup;
      v63 = v28;
      goto LABEL_33;
    case 6uLL:
      v56 = swift_projectBox();
      v44 = v109;
      sub_21885AC00(v56, v109, type metadata accessor for MissedStoriesTodayFeedGroup);
      v57 = v157;
      v157[3] = v108;
      v57[4] = sub_21885E3D4(&qword_280EB7EE8, type metadata accessor for MissedStoriesTodayFeedGroup, &unk_219C619A8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
      v47 = type metadata accessor for MissedStoriesTodayFeedGroup;
      goto LABEL_32;
    case 7uLL:
      v58 = swift_projectBox();
      v44 = v111;
      sub_21885AC00(v58, v111, type metadata accessor for LatestStoriesTodayFeedGroup);
      v59 = v157;
      v157[3] = v110;
      v59[4] = sub_21885E3D4(&qword_280EB8558, type metadata accessor for LatestStoriesTodayFeedGroup, &unk_219C0B3C8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v59);
      v47 = type metadata accessor for LatestStoriesTodayFeedGroup;
      goto LABEL_32;
    case 8uLL:
      v82 = swift_projectBox();
      v44 = v113;
      sub_21885AC00(v82, v113, type metadata accessor for MoreForYouTodayFeedGroup);
      v83 = v157;
      v157[3] = v112;
      v83[4] = sub_21885E3D4(&qword_27CC0B9B0, type metadata accessor for MoreForYouTodayFeedGroup, &unk_219C8D8F8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v83);
      v47 = type metadata accessor for MoreForYouTodayFeedGroup;
      goto LABEL_32;
    case 9uLL:
      v52 = swift_projectBox();
      v44 = v115;
      sub_21885AC00(v52, v115, type metadata accessor for TopicTodayFeedGroup);
      v53 = v157;
      v157[3] = v114;
      v53[4] = sub_21885E3D4(&qword_280ECFA08, type metadata accessor for TopicTodayFeedGroup, &unk_219C2D460);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53);
      v47 = type metadata accessor for TopicTodayFeedGroup;
      goto LABEL_32;
    case 0xBuLL:
      v68 = swift_projectBox();
      v44 = v117;
      sub_21885AC00(v68, v117, type metadata accessor for NewFollowTodayFeedGroup);
      v69 = v157;
      v157[3] = v116;
      v69[4] = sub_21885E3D4(&qword_27CC0B9A8, type metadata accessor for NewFollowTodayFeedGroup, &unk_219C143B4);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v69);
      v47 = type metadata accessor for NewFollowTodayFeedGroup;
      goto LABEL_32;
    case 0xCuLL:
      v50 = swift_projectBox();
      v44 = v119;
      sub_21885AC00(v50, v119, type metadata accessor for SubscriptionTodayFeedGroup);
      v51 = v157;
      v157[3] = v118;
      v51[4] = sub_21885E3D4(&qword_27CC0B9A0, type metadata accessor for SubscriptionTodayFeedGroup, &unk_219CA6B98);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v51);
      v47 = type metadata accessor for SubscriptionTodayFeedGroup;
      goto LABEL_32;
    case 0xEuLL:
      v74 = swift_projectBox();
      v44 = v124;
      sub_21885AC00(v74, v124, type metadata accessor for SpotlightTodayFeedGroup);
      v75 = v157;
      v157[3] = v123;
      v75[4] = sub_21885E3D4(&qword_280EC3198, type metadata accessor for SpotlightTodayFeedGroup, &unk_219C45A84);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
      v47 = type metadata accessor for SpotlightTodayFeedGroup;
      goto LABEL_32;
    case 0xFuLL:
      v86 = swift_projectBox();
      v44 = v126;
      sub_21885AC00(v86, v126, type metadata accessor for SuggestionTodayFeedGroup);
      v87 = v157;
      v157[3] = v125;
      v87[4] = sub_21885E3D4(&qword_280EBFFC0, type metadata accessor for SuggestionTodayFeedGroup, &unk_219C70128);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v87);
      v47 = type metadata accessor for SuggestionTodayFeedGroup;
      goto LABEL_32;
    case 0x10uLL:
      v98 = swift_projectBox();
      v44 = v128;
      sub_21885AC00(v98, v128, type metadata accessor for SeenContentMarkTodayFeedGroup);
      v99 = v157;
      v157[3] = v127;
      v99[4] = sub_21885E3D4(&qword_27CC0B998, type metadata accessor for SeenContentMarkTodayFeedGroup, &unk_219C45D4C);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v99);
      v47 = type metadata accessor for SeenContentMarkTodayFeedGroup;
      goto LABEL_32;
    case 0x11uLL:
      v76 = swift_projectBox();
      v77 = v121;
      v78 = v120;
      v79 = v122;
      (*(v121 + 16))(v120, v76, v122);
      sub_219BEE474();
      sub_21885C858(v157);

      (*(v77 + 8))(v78, v79);
      return;
    case 0x12uLL:
      v80 = swift_projectBox();
      v44 = v130;
      sub_21885AC00(v80, v130, type metadata accessor for SharedWithYouTodayFeedGroup);
      v81 = v157;
      v157[3] = v129;
      v81[4] = sub_21885E3D4(&qword_27CC0B990, type metadata accessor for SharedWithYouTodayFeedGroup, &unk_219CBA898);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v81);
      v47 = type metadata accessor for SharedWithYouTodayFeedGroup;
      goto LABEL_32;
    case 0x14uLL:
      v96 = swift_projectBox();
      v44 = v132;
      sub_21885AC00(v96, v132, type metadata accessor for MySportsTodayFeedGroup);
      v97 = v157;
      v157[3] = v131;
      v97[4] = sub_21885E3D4(&qword_27CC0B988, type metadata accessor for MySportsTodayFeedGroup, &unk_219C704A4);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v97);
      v47 = type metadata accessor for MySportsTodayFeedGroup;
      goto LABEL_32;
    case 0x15uLL:
      v100 = swift_projectBox();
      v44 = v134;
      sub_21885AC00(v100, v134, type metadata accessor for IntroToSportsTodayFeedGroup);
      v101 = v157;
      v157[3] = v133;
      v101[4] = sub_21885E3D4(&qword_280EB8638, type metadata accessor for IntroToSportsTodayFeedGroup, &unk_219C0D888);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v101);
      v47 = type metadata accessor for IntroToSportsTodayFeedGroup;
      goto LABEL_32;
    case 0x16uLL:
      v66 = swift_projectBox();
      v44 = v148;
      sub_21885AC00(v66, v148, type metadata accessor for ShortcutsTodayFeedGroup);
      v67 = v157;
      v157[3] = v147;
      v67[4] = sub_21885E3D4(&qword_280EC33D8, type metadata accessor for ShortcutsTodayFeedGroup, &unk_219CB9624);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v67);
      v47 = type metadata accessor for ShortcutsTodayFeedGroup;
      goto LABEL_32;
    case 0x17uLL:
      v64 = swift_projectBox();
      v44 = v150;
      sub_21885AC00(v64, v150, type metadata accessor for ChannelTodayFeedGroup);
      v65 = v157;
      v157[3] = v149;
      v65[4] = sub_21885E3D4(&qword_280ECB998, type metadata accessor for ChannelTodayFeedGroup, &unk_219CB86E4);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v65);
      v47 = type metadata accessor for ChannelTodayFeedGroup;
      goto LABEL_32;
    case 0x18uLL:
      v106 = swift_projectBox();
      v44 = v152;
      sub_21885AC00(v106, v152, type metadata accessor for SavedStoriesTodayFeedGroup);
      v107 = v157;
      v157[3] = v151;
      v107[4] = sub_21885E3D4(&qword_27CC0B980, type metadata accessor for SavedStoriesTodayFeedGroup, &unk_219CC6818);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v107);
      v47 = type metadata accessor for SavedStoriesTodayFeedGroup;
      goto LABEL_32;
    case 0x19uLL:
      v43 = swift_projectBox();
      v44 = v154;
      sub_21885AC00(v43, v154, type metadata accessor for ChannelPickerTodayFeedGroup);
      v45 = v157;
      v157[3] = v153;
      v45[4] = sub_21885E3D4(&qword_27CC0B978, type metadata accessor for ChannelPickerTodayFeedGroup, &unk_219C42478);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
      v47 = type metadata accessor for ChannelPickerTodayFeedGroup;
      goto LABEL_32;
    case 0x1AuLL:
      v102 = swift_projectBox();
      v44 = v156;
      sub_21885AC00(v102, v156, type metadata accessor for FoodTodayFeedGroup);
      v103 = v157;
      v157[3] = v155;
      v103[4] = sub_21885E3D4(&qword_280ED3B28, type metadata accessor for FoodTodayFeedGroup, &unk_219C96AC0);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v103);
      v47 = type metadata accessor for FoodTodayFeedGroup;
      goto LABEL_32;
    case 0x1BuLL:
      v104 = swift_projectBox();
      v44 = v136;
      sub_21885AC00(v104, v136, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      v105 = v157;
      v157[3] = v135;
      v105[4] = sub_21885E3D4(&qword_280EA6AB8, type metadata accessor for FeaturedArticleMagazineFeedGroup, &unk_219CC51FC);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v105);
      v47 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
      goto LABEL_32;
    case 0x1CuLL:
      v92 = swift_projectBox();
      v44 = v138;
      sub_21885AC00(v92, v138, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      v93 = v157;
      v157[3] = v137;
      v93[4] = sub_21885E3D4(&qword_27CC10E88, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup, &unk_219CC0E90);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v93);
      v47 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      goto LABEL_32;
    case 0x1DuLL:
      v72 = swift_projectBox();
      v44 = v140;
      sub_21885AC00(v72, v140, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      v73 = v157;
      v157[3] = v139;
      v73[4] = sub_21885E3D4(&qword_27CC0FD88, type metadata accessor for FeaturedIssueMagazineFeedGroup, &unk_219C258A8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v73);
      v47 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      goto LABEL_32;
    case 0x1EuLL:
      v94 = swift_projectBox();
      v44 = v142;
      sub_21885AC00(v94, v142, type metadata accessor for BestOfBundleMagazineFeedGroup);
      v95 = v157;
      v157[3] = v141;
      v95[4] = sub_21885E3D4(&qword_280EB12F0, type metadata accessor for BestOfBundleMagazineFeedGroup, &unk_219C761C8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v95);
      v47 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      goto LABEL_32;
    case 0x1FuLL:
      v54 = swift_projectBox();
      v44 = v144;
      sub_21885AC00(v54, v144, type metadata accessor for TrendingMagazineFeedGroup);
      v55 = v157;
      v157[3] = v143;
      v55[4] = sub_21885E3D4(&qword_280EBCA60, type metadata accessor for TrendingMagazineFeedGroup, &unk_219CBF994);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
      v47 = type metadata accessor for TrendingMagazineFeedGroup;
      goto LABEL_32;
    case 0x20uLL:
      v48 = swift_projectBox();
      v44 = v146;
      sub_21885AC00(v48, v146, type metadata accessor for NewIssueMagazineFeedGroup);
      v49 = v157;
      v157[3] = v145;
      v49[4] = sub_21885E3D4(&qword_27CC10E80, type metadata accessor for NewIssueMagazineFeedGroup, &unk_219C38BD4);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
      v47 = type metadata accessor for NewIssueMagazineFeedGroup;
LABEL_32:
      v62 = v47;
      v63 = v44;
LABEL_33:
      sub_21885E5A0(v63, boxed_opaque_existential_1, v62);
      break;
    default:
      v42 = v157;
      v157[4] = 0;
      *v42 = 0u;
      *(v42 + 1) = 0u;
      break;
  }
}