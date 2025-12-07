void sub_20BEF1788(uint64_t a1@<X8>)
{
  v90 = a1;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763870, &unk_20C1547A0);
  v99 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v97 = &v86 - v2;
  v3 = sub_20C132264();
  v109 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v108 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761FB8, &unk_20C14F3F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v107 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v106 = &v86 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v86 - v11;
  v92 = sub_20C13BB84();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ContainerNodeBuilder(0);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v89 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v1 + OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_containerBuilder;
  swift_beginAccess();
  v19 = *(v16 + 48);
  v88 = v18;
  v20 = v18 + v19;
  v21 = *v20;
  v22 = *(v20 + 8) | (*(v20 + 12) << 32);
  v23 = *(v20 + 13);
  sub_20B81DC3C(*v20, v22, *(v20 + 13));
  v24 = sub_20B81964C(v21, v22 | (v23 << 40));
  sub_20B81DC54(v21, v22, v23);
  if ((v24 & 0xFF00000000) != 0)
  {
    v25 = *(v1 + 16);
  }

  else
  {
    v25 = *&v24;
  }

  v26 = *(v1 + OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_arrangedBuilders);
  v27 = *(v26 + 16);
  v94 = v14;
  v110 = v5;
  v93 = v12;
  if (v27)
  {
    v127 = MEMORY[0x277D84F90];

    sub_20BB5E020(0, v27, 0);
    v28 = 0;
    v111 = 0;
    v29 = v127;
    v96 = v99 + 16;
    v95 = v99 + 8;
    v87 = v6;
    v103 = (v6 + 8);
    v102 = *MEMORY[0x277CE9CE8];
    v101 = (v109 + 104);
    v100 = v109 + 32;
    v105 = v3;
    v104 = v26;
    while (1)
    {
      v30 = v26 + v28;
      v31 = *(v26 + v28 + 32);
      v113 = *(v26 + v28 + 40);
      v33 = *(v26 + v28 + 48);
      v32 = *(v26 + v28 + 56);
      v34 = *(v26 + v28 + 64) | (*(v26 + v28 + 68) << 32);
      v35 = *(v26 + v28 + 69);
      v36 = *(v30 + 72);
      v37 = *(v30 + 84);
      v38 = *(v30 + 80);
      v39 = v38 | (v37 << 32);
      v40 = *(v30 + 85);
      v117 = v28;
      v118 = v27;
      v116 = v29;
      v122 = v35;
      v123 = v32;
      v120 = v34;
      v121 = v39;
      v119 = v40;
      if (!v40)
      {
        break;
      }

      v124 = v36;
      sub_20B81DC3C(v36, v38 | (v37 << 32), v40);
      swift_unknownObjectRetain();
      sub_20BEF3C88(v33, v123, v34, v35);
      v41 = v36;
      sub_20B81DC3C(v36, v39, v40);
      v42 = v111;
      sub_20BEF2548(&v124);
      if (v42)
      {

        __break(1u);
        return;
      }

      v111 = 0;
      v43 = *(v124 + 16);
      if (v43)
      {
        v44 = v99;
        v45 = v33;
        v46 = v97;
        v47 = v98;
        (*(v99 + 16))(v97, v124 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v99 + 72) * (v43 - 1), v98);

        sub_20C1324A4();
        v48 = *&v124;
        v49 = BYTE4(v124);
        v50 = v46;
        v33 = v45;
        (*(v44 + 8))(v50, v47);
        goto LABEL_11;
      }

      v53 = v25;
      v52 = v114;
LABEL_15:
      v112 = v33;
      ObjectType = swift_getObjectType();
      v55 = v107;
      (*(v113 + 88))(ObjectType);
      v113 = v31;
      v56 = v106;
      v114 = v52 & 0xFFFF000000000000 | v120 & 0xFFFFFFFFFFLL | (v122 << 40);
      v57 = v110;
      sub_20C131F54();
      v58 = *v103;
      (*v103)(v55, v57);
      v115 = v115 & 0xFFFF000000000000 | v121 & 0xFFFFFFFFFFLL | (v119 << 40);
      v59 = sub_20BF7C108(LODWORD(v53), v41, v115);
      v61 = v60;
      v62 = v60 >> 40;
      v63 = v108;
      sub_20C131FF4();
      v64 = sub_20B81DC54(v59, v61, v62);
      v58(v56, v57, v64);
      swift_unknownObjectRelease();
      sub_20B81DC6C(v112, v123, v120, v122);
      v65 = sub_20B81DC54(v41, v121, v119);
      v66 = v105;
      (*v101)(v63, v102, v105, v65);
      v29 = v116;
      v127 = v116;
      v68 = *(v116 + 16);
      v67 = *(v116 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_20BB5E020((v67 > 1), v68 + 1, 1);
        v29 = v127;
      }

      *(v29 + 16) = v68 + 1;
      (*(v109 + 32))(v29 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v68, v63, v66);
      v28 = v117 + 56;
      v27 = v118 - 1;
      v26 = v104;
      if (v118 == 1)
      {

        v14 = v94;
        v5 = v110;
        v6 = v87;
        v12 = v93;
        goto LABEL_19;
      }
    }

    v51 = v35;
    v49 = BYTE4(v36);
    swift_unknownObjectRetain();
    sub_20BEF3C88(v33, v123, v34, v51);
    v41 = v36;
    v48 = *&v36;
LABEL_11:
    v52 = v114;
    if (v49)
    {
      v53 = v25;
    }

    else
    {
      v53 = v48;
    }

    goto LABEL_15;
  }

LABEL_19:
  v69 = v89;
  sub_20B6B5ADC(v88, v89);
  v70 = v90;
  sub_20B7E27F8(v90);

  sub_20B593250(v69);
  sub_20C13B554();
  (*(v6 + 16))(v12, v70, v5);
  v71 = sub_20C13BB74();
  v72 = sub_20C13D1F4();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v127 = v74;
    *v73 = 136315138;
    v75 = sub_20C131FB4();
    v77 = v76;
    v78 = v76 >> 40;
    v79 = sub_20B81964C(v75, v76 & 0xFFFFFFFFFFFFLL);
    v81 = v80;
    sub_20B81DC54(v75, v77, v78);
    v124 = v79;
    v126 = BYTE4(v81);
    v125 = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7702A0, &qword_20C182EF8);
    v82 = sub_20C13D8F4();
    v84 = v83;
    (*(v6 + 8))(v93, v110);
    v85 = sub_20B51E694(v82, v84, &v127);

    *(v73 + 4) = v85;
    _os_log_impl(&dword_20B517000, v71, v72, "Node Container size is %s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v74);
    MEMORY[0x20F2F6A40](v74, -1, -1);
    MEMORY[0x20F2F6A40](v73, -1, -1);

    (*(v91 + 8))(v94, v92);
  }

  else
  {

    (*(v6 + 8))(v12, v5);
    (*(v91 + 8))(v14, v92);
  }
}

uint64_t sub_20BEF21E8()
{
  sub_20B593250(v0 + OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_containerBuilder);
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_parent);

  v1 = OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder__highlightOverlayEnabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0, &unk_20C14F3E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StackedContainerNodeBuilder(uint64_t a1)
{
  result = qword_27C770290;
  if (!qword_27C770290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BEF2314(uint64_t a1)
{
  type metadata accessor for ContainerNodeBuilder(319);
  if (v1 <= 0x3F)
  {
    sub_20B52432C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

__n128 __swift_memcpy54_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_20BEF244C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 54))
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

uint64_t sub_20BEF2494(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 54) = 1;
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

    *(result + 54) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_20BEF24F8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI27StackedContainerNodeBuilder_parent + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

void sub_20BEF2548(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763870, &unk_20C1547A0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A0E98(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20BEF25FC(v5);
  *a1 = v3;
}

void sub_20BEF25FC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C13DF84();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763870, &unk_20C1547A0);
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763870, &unk_20C1547A0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20BEF2A44(v8, v9, a1, v4);
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
    sub_20BEF2740(0, v2, 1, a1);
  }
}

void sub_20BEF2740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763870, &unk_20C1547A0);
  MEMORY[0x28223BE20](v8);
  v50 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  v15.n128_f64[0] = MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  v42 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v20 = *(v14 + 16);
    v19 = v14 + 16;
    v21 = *(v19 + 56);
    v51 = (v19 - 8);
    v52 = v20;
    v53 = v19;
    v48 = (v19 + 16);
    v49 = v18;
    v22 = (v18 + v21 * (a3 - 1));
    v47 = -v21;
    v23 = a1 - a3;
    v41 = v21;
    v24 = v18 + v21 * a3;
LABEL_6:
    v45 = v22;
    v46 = a3;
    v43 = v24;
    v44 = v23;
    v26 = v23;
    v27 = v22;
    while (1)
    {
      v28 = v52;
      (v52)(v17, v24, v8, v15);
      v28(v12, v27, v8);
      sub_20C132494();
      v30 = v29;
      sub_20C132494();
      if (v30 >= v31)
      {
        v25 = *v51;
        (*v51)(v12, v8);
        v25(v17, v8);
LABEL_5:
        a3 = v46 + 1;
        v22 = &v45[v41];
        v23 = v44 - 1;
        v24 = v43 + v41;
        if (v46 + 1 == v42)
        {
          return;
        }

        goto LABEL_6;
      }

      sub_20C1324B4();
      v33 = v32;
      sub_20C1324B4();
      v35 = v34;
      v36 = *v51;
      (*v51)(v12, v8);
      v36(v17, v8);
      if (v33 >= v35)
      {
        goto LABEL_5;
      }

      if (!v49)
      {
        break;
      }

      v37 = *v48;
      v38 = v50;
      (*v48)(v50, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      v37(v27, v38, v8);
      v27 += v47;
      v24 += v47;
      if (__CFADD__(v26++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_20BEF2A44(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v149 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763870, &unk_20C1547A0);
  MEMORY[0x28223BE20](v8);
  v152 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v165 = &v143 - v11;
  MEMORY[0x28223BE20](v12);
  v169 = &v143 - v13;
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v154 = &v143 - v16;
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v143 - v19;
  v26.n128_f64[0] = MEMORY[0x28223BE20](v21);
  v27 = a3[1];
  v159 = v23;
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_100:
    v30 = *v149;
    if (!*v149)
    {
      goto LABEL_138;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = v159;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_102:
      v170 = v29;
      v137 = *(v29 + 16);
      if (v137 >= 2)
      {
        do
        {
          v138 = *a3;
          if (!*a3)
          {
            goto LABEL_136;
          }

          v139 = a3;
          v140 = *(v29 + 16 * v137);
          a3 = v29;
          v141 = *(v29 + 16 * (v137 - 1) + 32);
          v29 = *(v29 + 16 * (v137 - 1) + 40);
          sub_20BEF35F4(v138 + *(v8 + 72) * v140, v138 + *(v8 + 72) * v141, v138 + *(v8 + 72) * v29, v30);
          if (v5)
          {
            break;
          }

          if (v29 < v140)
          {
            goto LABEL_125;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_20B6A07A0(a3);
          }

          if (v137 - 2 >= a3[2])
          {
            goto LABEL_126;
          }

          v142 = &a3[2 * v137];
          *v142 = v140;
          v142[1] = v29;
          v170 = a3;
          sub_20B6A0714(v137 - 1);
          v29 = v170;
          v137 = v170[2];
          a3 = v139;
        }

        while (v137 > 1);
      }

LABEL_110:

      return;
    }

LABEL_132:
    v29 = sub_20B6A07A0(v29);
    goto LABEL_102;
  }

  v148 = &v143 - v22;
  v145 = v20;
  v153 = v25;
  v164 = v24;
  v144 = a4;
  v28 = 0;
  v167 = v23 + 16;
  v168 = (v23 + 8);
  v166 = (v23 + 32);
  v29 = MEMORY[0x277D84F90];
  v151 = a3;
  while (1)
  {
    v30 = v28++;
    if (v28 < v27)
    {
      v157 = v27;
      v31 = *a3;
      v32 = *(v159 + 72);
      v33 = *(v159 + 16);
      v33(v148, v31 + v32 * v28, v8, v26);
      v150 = v30;
      v160 = v32;
      v34 = v31 + v32 * v30;
      v35 = v31;
      v36 = v148;
      v37 = v145;
      v156 = v33;
      (v33)(v145, v34, v8);
      sub_20C132494();
      v39 = v38;
      sub_20C132494();
      v147 = v5;
      if (v39 >= v40)
      {
        LODWORD(v158) = 0;
      }

      else
      {
        sub_20C1324B4();
        v42 = v41;
        sub_20C1324B4();
        LODWORD(v158) = v42 < v43;
      }

      v146 = v29;
      v44 = *v168;
      (*v168)(v37, v8);
      v155 = v44;
      (v44)(v36, v8);
      v45 = v150 + 2;
      v46 = v160 * (v150 + 2);
      v47 = v35 + v46;
      v48 = v160 * v28;
      v49 = v35 + v160 * v28;
      do
      {
        v56 = v45;
        v55 = v28;
        v29 = v48;
        a3 = v46;
        if (v45 >= v157)
        {
          break;
        }

        v161 = v48;
        v163 = v28;
        v5 = v153;
        v57 = v156;
        v156(v153, v47, v8);
        v58 = v154;
        v57(v154, v49, v8);
        sub_20C132494();
        v60 = v59;
        sub_20C132494();
        v162 = a3;
        if (v60 < v61)
        {
          sub_20C1324B4();
          v51 = v50;
          sub_20C1324B4();
          v53 = v51 < v52;
        }

        else
        {
          v53 = 0;
        }

        v54 = v155;
        v155(v58, v8);
        v54(v5, v8);
        v45 = v56 + 1;
        v29 = v161;
        v47 += v160;
        v49 += v160;
        a3 = v162;
        v55 = v163;
        v28 = (v163 + 1);
        v48 = v161 + v160;
        v46 = v162 + v160;
      }

      while (v158 == v53);
      if (v158)
      {
        v30 = v150;
        if (v56 < v150)
        {
          goto LABEL_129;
        }

        if (v150 >= v56)
        {
          v28 = v56;
          v5 = v147;
          a3 = v151;
          v29 = v146;
          goto LABEL_30;
        }

        v62 = v150;
        v63 = v150 * v160;
        do
        {
          if (v62 != v55)
          {
            v65 = *v151;
            if (!*v151)
            {
              goto LABEL_135;
            }

            v66 = v55;
            v163 = *v166;
            (v163)(v152, v65 + v63, v8);
            if (v63 < v29 || v65 + v63 >= a3 + v65)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v63 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            (v163)(v65 + v29, v152, v8);
            v55 = v66;
          }

          ++v62;
          v29 -= v160;
          a3 = (a3 - v160);
          v63 += v160;
        }

        while (v62 < v55--);
      }

      v28 = v56;
      v5 = v147;
      a3 = v151;
      v29 = v146;
      v30 = v150;
    }

LABEL_30:
    v67 = a3[1];
    if (v28 < v67)
    {
      if (__OFSUB__(v28, v30))
      {
        goto LABEL_128;
      }

      if (v28 - v30 < v144)
      {
        break;
      }
    }

LABEL_49:
    if (v28 < v30)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_20BC05740(0, *(v29 + 16) + 1, 1, v29);
    }

    v90 = *(v29 + 16);
    v89 = *(v29 + 24);
    v91 = v90 + 1;
    if (v90 >= v89 >> 1)
    {
      v29 = sub_20BC05740((v89 > 1), v90 + 1, 1, v29);
    }

    *(v29 + 16) = v91;
    v92 = v29 + 16 * v90;
    *(v92 + 32) = v30;
    *(v92 + 40) = v28;
    v163 = *v149;
    if (!v163)
    {
      goto LABEL_137;
    }

    if (v90)
    {
      while (1)
      {
        v30 = v91 - 1;
        if (v91 >= 4)
        {
          break;
        }

        if (v91 == 3)
        {
          v93 = *(v29 + 32);
          v94 = *(v29 + 40);
          v103 = __OFSUB__(v94, v93);
          v95 = v94 - v93;
          v96 = v103;
LABEL_69:
          if (v96)
          {
            goto LABEL_116;
          }

          v109 = (v29 + 16 * v91);
          v111 = *v109;
          v110 = v109[1];
          v112 = __OFSUB__(v110, v111);
          v113 = v110 - v111;
          v114 = v112;
          if (v112)
          {
            goto LABEL_119;
          }

          v115 = (v29 + 32 + 16 * v30);
          v117 = *v115;
          v116 = v115[1];
          v103 = __OFSUB__(v116, v117);
          v118 = v116 - v117;
          if (v103)
          {
            goto LABEL_122;
          }

          if (__OFADD__(v113, v118))
          {
            goto LABEL_123;
          }

          if (v113 + v118 >= v95)
          {
            if (v95 < v118)
            {
              v30 = v91 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        v119 = (v29 + 16 * v91);
        v121 = *v119;
        v120 = v119[1];
        v103 = __OFSUB__(v120, v121);
        v113 = v120 - v121;
        v114 = v103;
LABEL_83:
        if (v114)
        {
          goto LABEL_118;
        }

        v122 = v29 + 16 * v30;
        v124 = *(v122 + 32);
        v123 = *(v122 + 40);
        v103 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v103)
        {
          goto LABEL_121;
        }

        if (v125 < v113)
        {
          goto LABEL_3;
        }

LABEL_90:
        v130 = v30 - 1;
        if (v30 - 1 >= v91)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_131;
        }

        v131 = *a3;
        if (!*a3)
        {
          goto LABEL_134;
        }

        v132 = a3;
        a3 = v29;
        v133 = *(v29 + 32 + 16 * v130);
        v134 = *(v29 + 32 + 16 * v30);
        v29 = *(v29 + 32 + 16 * v30 + 8);
        sub_20BEF35F4(v131 + *(v159 + 72) * v133, v131 + *(v159 + 72) * v134, v131 + *(v159 + 72) * v29, v163);
        if (v5)
        {
          goto LABEL_110;
        }

        if (v29 < v133)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_20B6A07A0(a3);
        }

        if (v130 >= a3[2])
        {
          goto LABEL_113;
        }

        v135 = &a3[2 * v130];
        v135[4] = v133;
        v135[5] = v29;
        v170 = a3;
        sub_20B6A0714(v30);
        v29 = v170;
        v91 = v170[2];
        a3 = v132;
        if (v91 <= 1)
        {
          goto LABEL_3;
        }
      }

      v97 = v29 + 32 + 16 * v91;
      v98 = *(v97 - 64);
      v99 = *(v97 - 56);
      v103 = __OFSUB__(v99, v98);
      v100 = v99 - v98;
      if (v103)
      {
        goto LABEL_114;
      }

      v102 = *(v97 - 48);
      v101 = *(v97 - 40);
      v103 = __OFSUB__(v101, v102);
      v95 = v101 - v102;
      v96 = v103;
      if (v103)
      {
        goto LABEL_115;
      }

      v104 = (v29 + 16 * v91);
      v106 = *v104;
      v105 = v104[1];
      v103 = __OFSUB__(v105, v106);
      v107 = v105 - v106;
      if (v103)
      {
        goto LABEL_117;
      }

      v103 = __OFADD__(v95, v107);
      v108 = v95 + v107;
      if (v103)
      {
        goto LABEL_120;
      }

      if (v108 >= v100)
      {
        v126 = (v29 + 32 + 16 * v30);
        v128 = *v126;
        v127 = v126[1];
        v103 = __OFSUB__(v127, v128);
        v129 = v127 - v128;
        if (v103)
        {
          goto LABEL_124;
        }

        if (v95 < v129)
        {
          v30 = v91 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_69;
    }

LABEL_3:
    v27 = a3[1];
    if (v28 >= v27)
    {
      goto LABEL_100;
    }
  }

  v68 = (v30 + v144);
  if (__OFADD__(v30, v144))
  {
    goto LABEL_130;
  }

  if (v68 >= v67)
  {
    v68 = a3[1];
  }

  if (v68 < v30)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  if (v28 == v68)
  {
    goto LABEL_49;
  }

  v146 = v29;
  v147 = v5;
  v69 = *a3;
  v70 = *(v159 + 72);
  v71 = *(v159 + 16);
  v72 = *a3 + v70 * (v28 - 1);
  v162 = -v70;
  v150 = v30;
  v73 = v30 - v28;
  v163 = v69;
  v155 = v70;
  v156 = v68;
  v74 = &v69[v28 * v70];
  v75 = v164;
LABEL_41:
  v160 = v72;
  v161 = v28;
  v157 = v74;
  v158 = v73;
  while (1)
  {
    v71(v75, v74, v8);
    v71(v169, v72, v8);
    sub_20C132494();
    v78 = v77;
    sub_20C132494();
    if (v78 >= v79)
    {
      v76 = *v168;
      (*v168)(v169, v8);
      v76(v75, v8);
LABEL_40:
      v28 = v161 + 1;
      v72 = v155 + v160;
      v73 = v158 - 1;
      v74 = v155 + v157;
      if ((v161 + 1) == v156)
      {
        v28 = v156;
        v5 = v147;
        a3 = v151;
        v29 = v146;
        v30 = v150;
        goto LABEL_49;
      }

      goto LABEL_41;
    }

    sub_20C1324B4();
    v81 = v80;
    v82 = v169;
    sub_20C1324B4();
    v84 = v83;
    v85 = *v168;
    (*v168)(v82, v8);
    v85(v75, v8);
    if (v81 >= v84)
    {
      goto LABEL_40;
    }

    if (!v163)
    {
      break;
    }

    v86 = v165;
    v87 = *v166;
    (*v166)(v165, v74, v8);
    swift_arrayInitWithTakeFrontToBack();
    v87(v72, v86, v8);
    v72 += v162;
    v74 += v162;
    v88 = __CFADD__(v73++, 1);
    v75 = v164;
    if (v88)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
}

void sub_20BEF35F4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v73 = a4;
  v77 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763870, &unk_20C1547A0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v8);
  v10 = &v67 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v67 - v12;
  MEMORY[0x28223BE20](v14);
  v17 = &v67 - v16;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v20 = a2;
  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_71;
  }

  v21 = v77 - a2;
  if (v77 - a2 != 0x8000000000000000 || v19 != -1)
  {
    v22 = (a2 - a1) / v19;
    v80 = a1;
    v23 = v73;
    v79 = v73;
    v76 = v19;
    if (v22 < v21 / v19)
    {
      v24 = v22 * v19;
      v25 = v73;
      if (v73 < a1 || a1 + v24 <= v73)
      {
        v26 = v20;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v73 == a1)
        {
          goto LABEL_17;
        }

        v26 = v20;
        swift_arrayInitWithTakeBackToFront();
      }

      v20 = v26;
LABEL_17:
      v75 = v23 + v24;
      v78 = v23 + v24;
      if (v24 >= 1 && v20 < v77)
      {
        v29 = *(v7 + 16);
        v74 = v7 + 16;
        v30 = (v7 + 8);
        while (1)
        {
          v31 = v20;
          v29(v17);
          (v29)(v13, v25, v6);
          sub_20C132494();
          v33 = v32;
          sub_20C132494();
          if (v33 >= v34)
          {
            v42 = *v30;
            (*v30)(v13, v6);
            v42(v17, v6);
LABEL_29:
            v40 = v76;
            v43 = v25 + v76;
            if (a1 < v25 || a1 >= v43)
            {
              swift_arrayInitWithTakeFrontToBack();
LABEL_34:
              v40 = v76;
            }

            else if (a1 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
              goto LABEL_34;
            }

            v79 = v43;
            v25 = v43;
            v20 = v31;
            goto LABEL_39;
          }

          sub_20C1324B4();
          v36 = v35;
          sub_20C1324B4();
          v38 = v37;
          v39 = *v30;
          (*v30)(v13, v6);
          v39(v17, v6);
          if (v36 >= v38)
          {
            goto LABEL_29;
          }

          v40 = v76;
          v41 = v31 + v76;
          if (a1 < v31 || a1 >= v41)
          {
            break;
          }

          if (a1 != v31)
          {
            swift_arrayInitWithTakeBackToFront();
LABEL_37:
            v40 = v76;
          }

          v20 = v41;
LABEL_39:
          a1 += v40;
          v80 = a1;
          if (v25 >= v75 || v20 >= v77)
          {
            goto LABEL_69;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_37;
      }

      goto LABEL_69;
    }

    v27 = v21 / v19 * v19;
    v71 = v15;
    if (v73 < a2 || a2 + v27 <= v73)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v73 == a2)
      {
LABEL_44:
        v44 = v23 + v27;
        if (v27 >= 1)
        {
          v45 = -v19;
          v68 = (v7 + 8);
          v69 = (v7 + 16);
          v46 = v23 + v27;
          v47 = v10;
          v76 = -v19;
          while (2)
          {
            while (1)
            {
              v74 = v44;
              v67 = v44;
              v48 = v20 + v45;
              v72 = v20 + v45;
              v70 = v20;
              while (1)
              {
                v50 = v77;
                if (v20 <= a1)
                {
                  v80 = v20;
                  v78 = v67;
                  goto LABEL_69;
                }

                v51 = *v69;
                v75 = v46 + v45;
                v51(v47);
                v52 = v47;
                v53 = v71;
                (v51)(v71, v48, v6);
                sub_20C132494();
                v55 = v54;
                sub_20C132494();
                if (v55 >= v56)
                {
                  v60 = 0;
                }

                else
                {
                  sub_20C1324B4();
                  v58 = v57;
                  sub_20C1324B4();
                  v60 = v58 < v59;
                }

                v77 = v50 + v76;
                v61 = *v68;
                (*v68)(v53, v6);
                v61(v52, v6);
                v47 = v52;
                if (v60)
                {
                  break;
                }

                v62 = v75;
                v63 = v75;
                v64 = v73;
                if (v50 < v46 || v77 >= v46)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v50 != v46)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                v74 = v63;
                v46 = v63;
                v49 = v62 > v64;
                v48 = v72;
                v45 = v76;
                v20 = v70;
                if (!v49)
                {
                  v44 = v74;
                  goto LABEL_68;
                }
              }

              v65 = v73;
              if (v50 < v70 || v77 >= v70)
              {
                break;
              }

              v20 = v72;
              v44 = v74;
              v45 = v76;
              if (v50 != v70)
              {
                swift_arrayInitWithTakeBackToFront();
                v20 = v72;
              }

              if (v46 <= v65)
              {
                goto LABEL_68;
              }
            }

            v66 = v72;
            swift_arrayInitWithTakeFrontToBack();
            v20 = v66;
            v44 = v74;
            v45 = v76;
            if (v46 > v65)
            {
              continue;
            }

            break;
          }
        }

LABEL_68:
        v80 = v20;
        v78 = v44;
LABEL_69:
        sub_20B6A08BC(&v80, &v79, &v78);
        return;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v19 = v76;
    v20 = a2;
    goto LABEL_44;
  }

LABEL_72:
  __break(1u);
}

double sub_20BEF3C88(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 1 <= 1)
  {
  }

  return result;
}

double sub_20BEF3CA0@<D0>(void *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 != 4)
      {
        if (a1)
        {
          v7 = a1;
          type metadata accessor for CGPath(0);
          goto LABEL_18;
        }

        goto LABEL_21;
      }
    }

    else if (a2 == 7)
    {
      if (a1)
      {
        v7 = a1;
LABEL_14:
        type metadata accessor for CGColor(0);
        goto LABEL_18;
      }

LABEL_21:
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = MEMORY[0x277D85048];
    *a3 = a1;
    return result;
  }

  v7 = a1;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      type metadata accessor for CAShapeLayerLineCap(0);
    }

    else
    {
      type metadata accessor for CAShapeLayerLineJoin(0);
    }
  }

  else
  {
    if (a2)
    {
      if (a1)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }

    type metadata accessor for CALayerCornerCurve(0);
  }

LABEL_18:
  *(a3 + 24) = v4;
  *a3 = v7;

  v5 = v7;
  return result;
}

uint64_t sub_20BEF3DB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 9))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 8);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20BEF3DF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 8) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t WorkoutPlanScheduleEditableItem.init(index:modalityReference:scheduledItem:weekday:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2 & 1;
  v10 = type metadata accessor for WorkoutPlanScheduleEditableItem(0);
  sub_20B5DF134(a3, a6 + v10[5], &qword_27C771090, &qword_20C15A040);
  result = sub_20B5DF134(a4, a6 + v10[6], &qword_27C765810, &qword_20C159480);
  *(a6 + v10[7]) = a5;
  return result;
}

uint64_t type metadata accessor for WorkoutPlanScheduleEditableItem(uint64_t a1)
{
  result = qword_2811008C0;
  if (!qword_2811008C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutPlanScheduleEditableItem.hash(into:)(uint64_t a1)
{
  v2 = sub_20C136864();
  v21 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v20 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765810, &qword_20C159480);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_20C1365F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090, &qword_20C15A040);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  if (*(v1 + 8) == 1)
  {
    sub_20C13E184();
  }

  else
  {
    v14 = *v1;
    sub_20C13E184();
    MEMORY[0x20F2F58E0](v14);
  }

  v15 = type metadata accessor for WorkoutPlanScheduleEditableItem(0);
  sub_20B52F9E8(v1 + *(v15 + 20), v13, &qword_27C771090, &qword_20C15A040);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    sub_20C13E184();
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
    sub_20C13E184();
    sub_20BEF4B08(&qword_27C762F60, MEMORY[0x277D52AF8], MEMORY[0x277D52B00]);
    sub_20C13C7C4();
    (*(v8 + 8))(v10, v7);
  }

  sub_20B52F9E8(v1 + *(v15 + 24), v6, &qword_27C765810, &qword_20C159480);
  v16 = v21;
  if ((*(v21 + 48))(v6, 1, v2) == 1)
  {
    sub_20C13E184();
  }

  else
  {
    v17 = v20;
    (*(v16 + 32))(v20, v6, v2);
    sub_20C13E184();
    sub_20BEF4B08(&qword_27C76CB90, MEMORY[0x277D52CE0], MEMORY[0x277D52CE8]);
    sub_20C13C7C4();
    (*(v16 + 8))(v17, v2);
  }

  v18 = sub_20C137F94();
  return MEMORY[0x20F2F58E0](v18);
}

uint64_t WorkoutPlanScheduleEditableItem.hashValue.getter()
{
  sub_20C13E164();
  WorkoutPlanScheduleEditableItem.hash(into:)(v1);
  return sub_20C13E1B4();
}

uint64_t sub_20BEF437C()
{
  sub_20C13E164();
  WorkoutPlanScheduleEditableItem.hash(into:)(v1);
  return sub_20C13E1B4();
}

uint64_t sub_20BEF43C0(uint64_t a1)
{
  sub_20C13E164();
  WorkoutPlanScheduleEditableItem.hash(into:)(v2);
  return sub_20C13E1B4();
}

BOOL _s9SeymourUI31WorkoutPlanScheduleEditableItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C136864();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765810, &qword_20C159480);
  MEMORY[0x28223BE20](v7 - 8);
  v46 = &v41 - v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765AA0, &qword_20C15A010);
  MEMORY[0x28223BE20](v47);
  v48 = &v41 - v9;
  v10 = sub_20C1365F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090, &qword_20C15A040);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A18, &unk_20C156720);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  v42 = v5;
  v43 = v4;
  v41 = type metadata accessor for WorkoutPlanScheduleEditableItem(0);
  v21 = *(v41 + 20);
  v22 = *(v17 + 48);
  v44 = a1;
  sub_20B52F9E8(a1 + v21, v19, &qword_27C771090, &qword_20C15A040);
  v23 = a2 + v21;
  v24 = a2;
  sub_20B52F9E8(v23, &v19[v22], &qword_27C771090, &qword_20C15A040);
  v25 = *(v11 + 48);
  if (v25(v19, 1, v10) == 1)
  {
    if (v25(&v19[v22], 1, v10) == 1)
    {
      sub_20B520158(v19, &qword_27C771090, &qword_20C15A040);
      goto LABEL_14;
    }

LABEL_12:
    v26 = &qword_27C764A18;
    v27 = &unk_20C156720;
LABEL_20:
    sub_20B520158(v19, v26, v27);
    return 0;
  }

  sub_20B52F9E8(v19, v16, &qword_27C771090, &qword_20C15A040);
  if (v25(&v19[v22], 1, v10) == 1)
  {
    (*(v11 + 8))(v16, v10);
    goto LABEL_12;
  }

  (*(v11 + 32))(v13, &v19[v22], v10);
  sub_20BEF4B08(&qword_27C764300, MEMORY[0x277D52AF8], MEMORY[0x277D52B08]);
  v28 = sub_20C13C894();
  v29 = *(v11 + 8);
  v29(v13, v10);
  v29(v16, v10);
  sub_20B520158(v19, &qword_27C771090, &qword_20C15A040);
  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v30 = *(v41 + 24);
  v19 = v48;
  v31 = *(v47 + 48);
  sub_20B52F9E8(v44 + v30, v48, &qword_27C765810, &qword_20C159480);
  sub_20B52F9E8(v24 + v30, &v19[v31], &qword_27C765810, &qword_20C159480);
  v33 = v42;
  v32 = v43;
  v34 = *(v42 + 48);
  if (v34(v19, 1, v43) != 1)
  {
    v35 = v46;
    sub_20B52F9E8(v19, v46, &qword_27C765810, &qword_20C159480);
    if (v34(&v19[v31], 1, v32) == 1)
    {
      (*(v33 + 8))(v35, v32);
      goto LABEL_19;
    }

    v37 = v45;
    (*(v33 + 32))(v45, &v19[v31], v32);
    sub_20BEF4B08(&qword_27C765AA8, MEMORY[0x277D52CE0], MEMORY[0x277D52CF0]);
    v38 = sub_20C13C894();
    v39 = *(v33 + 8);
    v39(v37, v32);
    v39(v35, v32);
    sub_20B520158(v19, &qword_27C765810, &qword_20C159480);
    if (v38)
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (v34(&v19[v31], 1, v32) != 1)
  {
LABEL_19:
    v26 = &qword_27C765AA0;
    v27 = &qword_20C15A010;
    goto LABEL_20;
  }

  sub_20B520158(v19, &qword_27C765810, &qword_20C159480);
LABEL_23:
  v40 = sub_20C137F94();
  return v40 == sub_20C137F94();
}

uint64_t sub_20BEF4B08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20BEF4B50(id a1, uint64_t a2)
{
  v5 = [v2 clickstreamMetricsEvent];
  if (v5 && (v6 = v5, v7 = sub_20C13C754(), v6, sub_20BEF4F70(v7), v9 = v8, , v9))
  {
    v10 = sub_20BEF4D74();
    if (v11)
    {
LABEL_4:
      a1 = v10;
      a2 = v11;
      goto LABEL_7;
    }
  }

  else
  {
    v9 = sub_20B6B1778(MEMORY[0x277D84F90]);

    v10 = sub_20BEF4D74();
    if (v11)
    {
      goto LABEL_4;
    }
  }

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F10, &qword_20C152E08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = 0x6E656D6563616C70;
  v13 = inited + 32;
  v14 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE900000000000074;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  v15 = sub_20B6B1778(inited);
  swift_setDeallocating();
  sub_20B520158(v13, &qword_27C762F18, &unk_20C161740);
  v16 = sub_20BEF524C();
  if (v17)
  {
    v23 = v14;
    *&v22 = v16;
    *(&v22 + 1) = v17;
    sub_20B6B3B74(&v22, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20B91CFC0(v21, 0xD000000000000012, 0x800000020C196B60, isUniquelyReferenced_nonNull_native);
  }

  v19 = swift_isUniquelyReferenced_nonNull_native();
  *&v22 = v15;
  sub_20BEF5D68(v9, sub_20C0B88D4, 0, v19, &v22);

  return v22;
}

id sub_20BEF4D74()
{
  result = [v0 clickstreamMetricsEvent];
  if (result)
  {
    v2 = result;
    v3 = sub_20C13C754();

    sub_20BEF4F70(v3);
    v5 = v4;

    if (v5)
    {
      if (*(v5 + 16))
      {
        v6 = sub_20B65AA60(0x6E6974656B72616DLL, 0xE900000000000067);
        if (v7)
        {
          sub_20B51F1D8(*(v5 + 56) + 32 * v6, v13);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F30, &qword_20C152E28);
          if (swift_dynamicCast())
          {
            if (*(v12 + 16) && (v8 = sub_20B65AA60(0x6E656D6563616C70, 0xE900000000000074), (v9 & 1) != 0))
            {
              sub_20B51F1D8(*(v12 + 56) + 32 * v8, v13);

              if (swift_dynamicCast())
              {

                return v12;
              }
            }

            else
            {
            }
          }
        }
      }

      if (*(v5 + 16))
      {
        v10 = sub_20B65AA60(0x6E656D6563616C70, 0xE900000000000074);
        if (v11)
        {
          sub_20B51F1D8(*(v5 + 56) + 32 * v10, v13);

          if (swift_dynamicCast())
          {
            return v12;
          }

          else
          {
            return 0;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_20BEF4F70(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767A50, &qword_20C154DE8);
    v2 = sub_20C13DE84();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    sub_20B51D968(*(a1 + 48) + 40 * v11, v27);
    sub_20B51F1D8(*(a1 + 56) + 32 * v11, v28 + 8);
    v25[0] = v28[0];
    v25[1] = v28[1];
    v26 = v29;
    v24[0] = v27[0];
    v24[1] = v27[1];
    sub_20B51D968(v24, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_20B51F1D8(v25 + 8, v20);
    sub_20B520158(v24, &qword_27C7702B0, &qword_20C1830B0);
    v21 = v18;
    sub_20B6B3B74(v20, v22);
    v12 = v21;
    sub_20B6B3B74(v22, v23);
    sub_20B6B3B74(v23, &v21);
    v13 = sub_20B65AA60(v12, *(&v12 + 1));
    if (v14)
    {
      *(v2[6] + 16 * v13) = v12;
      v8 = v13;

      v9 = (v2[7] + 32 * v8);
      __swift_destroy_boxed_opaque_existential_1(v9);
      sub_20B6B3B74(&v21, v9);
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      *(v2[6] + 16 * v13) = v12;
      sub_20B6B3B74(&v21, (v2[7] + 32 * v13));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = v7;
  }

  sub_20B520158(v24, &qword_27C7702B0, &qword_20C1830B0);
}

id sub_20BEF524C()
{
  result = [v0 clickstreamMetricsEvent];
  if (result)
  {
    v2 = result;
    v3 = sub_20C13C754();

    sub_20BEF4F70(v3);
    v5 = v4;

    if (v5)
    {
      if (*(v5 + 16))
      {
        v6 = sub_20B65AA60(0x6E6974656B72616DLL, 0xE900000000000067);
        if (v7)
        {
          sub_20B51F1D8(*(v5 + 56) + 32 * v6, v13);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F30, &qword_20C152E28);
          if (swift_dynamicCast())
          {
            if (*(v12 + 16) && (v8 = sub_20B65AA60(0x496567617373656DLL, 0xE900000000000064), (v9 & 1) != 0))
            {
              sub_20B51F1D8(*(v12 + 56) + 32 * v8, v13);

              if (swift_dynamicCast())
              {

                return v12;
              }
            }

            else
            {
            }
          }
        }
      }

      if (*(v5 + 16))
      {
        v10 = sub_20B65AA60(0xD000000000000012, 0x800000020C196B60);
        if (v11)
        {
          sub_20B51F1D8(*(v5 + 56) + 32 * v10, v13);

          if (swift_dynamicCast())
          {
            return v12;
          }

          else
          {
            return 0;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_20BEF5448(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_20B51F1D8(*(v3 + 56) + 32 * v13, v20);
    *&v21 = v16;
    *(&v21 + 1) = v15;
    sub_20B6B3B74(v20, &v22);

    v17 = *(&v21 + 1);
    v18 = v21;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v17)
    {
      v19 = v1[5];
      *&v20[0] = v18;
      *(&v20[0] + 1) = v17;
      v20[1] = v22;
      v20[2] = v23;
      v19(v20);
      sub_20B520158(v20, &qword_27C7702B8, &qword_20C1830B8);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_20BEF55A8(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764F58, &unk_20C157E30);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v42 - v4;
  v45 = sub_20C136FE4();
  v6 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7702C0, &unk_20C1830C0);
  MEMORY[0x28223BE20](v9 - 8);
  v49 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v11);
  v14 = &v42 - v12;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v42 = v5;
  v48 = v18;
  if (v19)
  {
    v44 = a1;
    v20 = v17;
LABEL_11:
    v43 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = (*(v15 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    v28 = v45;
    (*(v6 + 16))(v8, *(v15 + 56) + *(v6 + 72) * v24, v45, v13);
    v29 = v47;
    v30 = *(v47 + 48);
    *v14 = v26;
    *(v14 + 1) = v27;
    v31 = v8;
    v32 = v29;
    (*(v6 + 32))(&v14[v30], v31, v28);
    v33 = v46;
    (*(v46 + 56))(v14, 0, 1, v32);

    v34 = v43;
    a1 = v44;
    v23 = v20;
    v35 = v33;
LABEL_12:
    *v1 = v15;
    v1[1] = v16;
    v36 = v49;
    v1[2] = v48;
    v1[3] = v23;
    v1[4] = v34;
    v37 = v1[5];
    sub_20B5DF134(v14, v36, &unk_27C7702C0, &unk_20C1830C0);
    v38 = 1;
    if ((*(v35 + 48))(v36, 1, v32) != 1)
    {
      v39 = v36;
      v40 = v42;
      sub_20B5DF134(v39, v42, &qword_27C764F58, &unk_20C157E30);
      v37(v40);
      sub_20B520158(v40, &qword_27C764F58, &unk_20C157E30);
      v38 = 0;
    }

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A70, &qword_20C157E20);
    (*(*(v41 - 8) + 56))(a1, v38, 1, v41);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v35 = v46;
        v32 = v47;
        (*(v46 + 56))(&v42 - v12, 1, 1, v47, v13);
        v34 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v44 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_20BEF598C(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A18, &unk_20C171320);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - v4;
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7681E0, &qword_20C1652B0);
  MEMORY[0x28223BE20](v10 - 8);
  v45 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v15 = &v38 - v14;
  v16 = *v1;
  v17 = v1[1];
  v19 = v1[2];
  v18 = v1[3];
  v20 = v1[4];
  v39 = v5;
  v44 = v19;
  if (v20)
  {
    v41 = a1;
    v21 = v18;
LABEL_11:
    v40 = (v20 - 1) & v20;
    v25 = __clz(__rbit64(v20)) | (v21 << 6);
    v26 = v16;
    (*(v7 + 16))(v9, *(v16 + 48) + *(v7 + 72) * v25, v6, v13);
    LOBYTE(v25) = *(*(v26 + 56) + v25);
    v27 = *(v43 + 48);
    v28 = v9;
    v29 = v43;
    (*(v7 + 32))(v15, v28, v6);
    v15[v27] = v25;
    v30 = v42;
    (*(v42 + 56))(v15, 0, 1, v29);
    v31 = v40;
    a1 = v41;
    v24 = v21;
LABEL_12:
    *v1 = v26;
    v1[1] = v17;
    v32 = v45;
    v1[2] = v44;
    v1[3] = v24;
    v1[4] = v31;
    v33 = v1[5];
    sub_20B5DF134(v15, v32, &qword_27C7681E0, &qword_20C1652B0);
    v34 = 1;
    if ((*(v30 + 48))(v32, 1, v29) != 1)
    {
      v35 = v32;
      v36 = v39;
      sub_20B5DF134(v35, v39, &qword_27C767A18, &unk_20C171320);
      v33(v36);
      sub_20B520158(v36, &qword_27C767A18, &unk_20C171320);
      v34 = 0;
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A18, &qword_20C16F260);
    (*(*(v37 - 8) + 56))(a1, v34, 1, v37);
  }

  else
  {
    v22 = (v19 + 64) >> 6;
    if (v22 <= v18 + 1)
    {
      v23 = v18 + 1;
    }

    else
    {
      v23 = (v19 + 64) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= v22)
      {
        v30 = v42;
        v29 = v43;
        v26 = v16;
        (*(v42 + 56))(v15, 1, 1, v43, v13);
        v31 = 0;
        goto LABEL_12;
      }

      v20 = *(v17 + 8 * v21);
      ++v18;
      if (v20)
      {
        v41 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_20BEF5D68(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v46 = a1;
  v47 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v48 = v8;
  v49 = 0;
  v50 = v11 & v9;
  v51 = a2;
  v52 = a3;

  sub_20BEF5448(&v44);
  v12 = *(&v44 + 1);
  if (!*(&v44 + 1))
  {
    goto LABEL_25;
  }

  v13 = v44;
  sub_20B6B3B74(v45, v43);
  v14 = *a5;
  v15 = sub_20B65AA60(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_20BA07354(v20, a4 & 1);
    v15 = sub_20B65AA60(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v15 = sub_20C13E054();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = v15;
    sub_20BA0EE38();
    v15 = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = v15;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_20B6B3B74(v43, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v23[6] + 16 * v15);
  *v27 = v13;
  v27[1] = v12;
  sub_20B6B3B74(v43, (v23[7] + 32 * v15));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_20BEF5448(&v44);
    v12 = *(&v44 + 1);
    if (*(&v44 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v44;
        sub_20B6B3B74(v45, v43);
        v32 = *a5;
        v33 = sub_20B65AA60(v13, v12);
        v35 = v32[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v32[3] < v37)
        {
          sub_20BA07354(v37, 1);
          v33 = sub_20B65AA60(v13, v12);
          if ((a4 & 1) != (v38 & 1))
          {
            goto LABEL_8;
          }
        }

        v39 = *a5;
        if (a4)
        {
          v30 = v33;

          v31 = (v39[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_1(v31);
          sub_20B6B3B74(v43, v31);
        }

        else
        {
          v39[(v33 >> 6) + 8] |= 1 << v33;
          v40 = (v39[6] + 16 * v33);
          *v40 = v13;
          v40[1] = v12;
          sub_20B6B3B74(v43, (v39[7] + 32 * v33));
          v41 = v39[2];
          v19 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v39[2] = v42;
        }

        sub_20BEF5448(&v44);
        v12 = *(&v44 + 1);
      }

      while (*(&v44 + 1));
    }

LABEL_25:
    sub_20B583EDC(v46);

    return;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_20BEF6078(uint64_t a1, uint64_t (*a2)(void), unsigned int a3)
{
  v44 = a3;
  v43 = a2(0);
  v5 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - v6;
  v7 = type metadata accessor for WorkoutPlanPreference(0);
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v32 = v3;
  v48 = MEMORY[0x277D84F90];
  sub_20BB5EA28(0, v10, 0);
  v11 = v48;
  v12 = a1 + 56;
  result = sub_20C13DAA4();
  v14 = v5;
  v15 = result;
  v16 = 0;
  v38 = a1 + 56;
  v39 = v14;
  v36 = v14 + 8;
  v37 = v14 + 16;
  v33 = a1 + 64;
  v34 = v10;
  v35 = a1;
  while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
  {
    if ((*(v12 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
    {
      goto LABEL_21;
    }

    v45 = v16;
    v46 = *(a1 + 36);
    v47 = v15 >> 6;
    v18 = v39;
    v19 = *(a1 + 48) + *(v39 + 72) * v15;
    v20 = *(v39 + 16);
    v21 = v42;
    v22 = v43;
    v20(v42, v19, v43);
    v20(v9, v21, v22);
    swift_storeEnumTagMultiPayload();
    (*(v18 + 8))(v21, v22);
    v48 = v11;
    v24 = *(v11 + 16);
    v23 = *(v11 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_20BB5EA28((v23 > 1), v24 + 1, 1);
      v11 = v48;
    }

    *(v11 + 16) = v24 + 1;
    result = sub_20BEFB0C0(v9, v11 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v24);
    a1 = v35;
    v17 = 1 << *(v35 + 32);
    v12 = v38;
    if (v15 >= v17)
    {
      goto LABEL_22;
    }

    v25 = *(v38 + 8 * v47);
    if ((v25 & (1 << v15)) == 0)
    {
      goto LABEL_23;
    }

    if (v46 != *(v35 + 36))
    {
      goto LABEL_24;
    }

    v26 = v25 & (-2 << (v15 & 0x3F));
    if (v26)
    {
      v17 = __clz(__rbit64(v26)) | v15 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = v47 << 6;
      v28 = v47 + 1;
      v29 = (v33 + 8 * v47);
      while (v28 < (v17 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          result = sub_20B526EA4(v15, v46, 0);
          v17 = __clz(__rbit64(v30)) + v27;
          goto LABEL_4;
        }
      }

      result = sub_20B526EA4(v15, v46, 0);
    }

LABEL_4:
    v16 = v45 + 1;
    v15 = v17;
    if (v45 + 1 == v34)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_20BEF6434(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_20BB5D3CC(0, v1, 0);
    v4 = a1 + 32;
    v2 = v10;
    do
    {
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7675D0, &unk_20C183240);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7675B0, &unk_20C15C100);
      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_20BB5D3CC((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_20BEF6570(uint64_t a1)
{
  v16 = type metadata accessor for ButtonAction(0);
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770330, &qword_20C1875B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v17 = MEMORY[0x277D84F90];
    sub_20BB5D4B4(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_20BEFB058(v11, v4, type metadata accessor for ButtonAction);
      swift_dynamicCast();
      v17 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_20BB5D4B4((v13 > 1), v14 + 1, 1);
        v10 = v17;
      }

      *(v10 + 16) = v14 + 1;
      sub_20B5F67F0(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_20BEF67DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_20BB5D97C(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    type metadata accessor for CGPoint(0);
    do
    {
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_20BB5D97C((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_20B6B3B74(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_20BEF68DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_20BB5DE14(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      v4 += 8;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767630, &qword_20C183250);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_20BB5DE14((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_20BEF6A7C(unint64_t a1, uint64_t (*a2)(BOOL, uint64_t, uint64_t), uint64_t a3)
{
  if (a1 >> 62)
  {
    v6 = sub_20C13DB34();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v22 = MEMORY[0x277D84F90];
  result = a2(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v22;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = 0;
      do
      {
        v10 = MEMORY[0x20F2F5430](v9, a1);
        v12 = *(v22 + 16);
        v11 = *(v22 + 24);
        if (v12 >= v11 >> 1)
        {
          v14 = v10;
          a2(v11 > 1, v12 + 1, 1);
          v10 = v14;
        }

        ++v9;
        *(v22 + 16) = v12 + 1;
        v13 = v22 + 16 * v12;
        *(v13 + 32) = v10;
        *(v13 + 40) = a3;
      }

      while (v6 != v9);
    }

    else
    {
      v15 = (a1 + 32);
      do
      {
        v16 = *(v22 + 16);
        v17 = *(v22 + 24);
        v18 = *v15;
        if (v16 >= v17 >> 1)
        {
          v20 = v17 > 1;
          v21 = v18;
          a2(v20, v16 + 1, 1);
          v18 = v21;
        }

        *(v22 + 16) = v16 + 1;
        v19 = v22 + 16 * v16;
        *(v19 + 32) = v18;
        *(v19 + 40) = a3;
        ++v15;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_20BEF6C24(unint64_t a1)
{
  if (a1 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0, &unk_20C14F970);
    v1 = sub_20C13DE34();
  }

  else
  {
    v1 = a1;

    sub_20C13E004();
  }

  return v1;
}

uint64_t sub_20BEF6CA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_20BB5E2D4(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      ++v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770358, &qword_20C183278);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_20BB5E2D4((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + v6 + 32) = v8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_20BEF6DB0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_20C13DB34();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    result = sub_20C13DD64();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          MEMORY[0x20F2F5430]();
          sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7676B0, &qword_20C183270);
          swift_dynamicCast();
          sub_20C13DD34();
          sub_20C13DD74();
          sub_20C13DD84();
          sub_20C13DD44();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = (a1 + 32);
        sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
        do
        {
          v7 = *v6++;
          v8 = v7;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7676B0, &qword_20C183270);
          swift_dynamicCast();
          sub_20C13DD34();
          sub_20C13DD74();
          sub_20C13DD84();
          sub_20C13DD44();
          --v2;
        }

        while (v2);
      }

      return v9;
    }
  }

  return result;
}

uint64_t sub_20BEF6FEC(uint64_t a1, uint64_t (*a2)(void), void (*a3)(BOOL, unint64_t, uint64_t), uint64_t a4, void (*a5)(uint64_t *, unint64_t))
{
  v24 = a4;
  v25 = a5;
  v7 = a2(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v27 = MEMORY[0x277D84F90];
    v22 = a3;
    (a3)(0, v12, 0, v9);
    v13 = v27;
    v16 = *(v8 + 16);
    v15 = v8 + 16;
    v14 = v16;
    v17 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v23 = *(v15 + 56);
    do
    {
      v14(v11, v17, v7);
      v27 = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        v22(v18 > 1, v19 + 1, 1);
      }

      v26[3] = v7;
      v26[4] = v24;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
      v14(boxed_opaque_existential_1, v11, v7);
      v13 = v27;
      *(v27 + 16) = v19 + 1;
      v25(v26, v13 + 40 * v19 + 32);
      (*(v15 - 8))(v11, v7);
      v17 += v23;
      --v12;
    }

    while (v12);
  }

  return v13;
}

char *sub_20BEF71F0(unint64_t a1, unint64_t *a2, void *a3)
{
  if (a1 >> 62)
  {
    v6 = sub_20C13DB34();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_20BB5D97C(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        MEMORY[0x20F2F5430](i, a1);
        sub_20B51C88C(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v11 = *(v7 + 16);
        v10 = *(v7 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_20BB5D97C((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v11 + 1;
        sub_20B6B3B74(v16, (v7 + 32 * v11 + 32));
      }
    }

    else
    {
      v12 = (a1 + 32);
      sub_20B51C88C(0, a2, a3);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_20BB5D97C((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v15 + 1;
        sub_20B6B3B74(v16, (v7 + 32 * v15 + 32));
        ++v12;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

void *sub_20BEF73E8(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = sub_20C13DB34();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v19 = MEMORY[0x277D84F90];
  result = sub_20BB5D3CC(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v19;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        v8 = MEMORY[0x20F2F5430](v7, a1);
        v10 = *(v19 + 16);
        v9 = *(v19 + 24);
        if (v10 >= v9 >> 1)
        {
          v12 = v8;
          sub_20BB5D3CC((v9 > 1), v10 + 1, 1);
          v8 = v12;
        }

        ++v7;
        *(v19 + 16) = v10 + 1;
        v11 = v19 + 16 * v10;
        *(v11 + 32) = v8;
        *(v11 + 40) = a2;
      }

      while (v4 != v7);
    }

    else
    {
      v13 = (a1 + 32);
      v14 = *(v19 + 16);
      v15 = 16 * v14;
      do
      {
        v16 = *v13;
        v17 = *(v19 + 24);

        if (v14 >= v17 >> 1)
        {
          sub_20BB5D3CC((v17 > 1), v14 + 1, 1);
        }

        *(v19 + 16) = v14 + 1;
        v18 = v19 + v15;
        *(v18 + 32) = v16;
        *(v18 + 40) = a2;
        v15 += 16;
        ++v13;
        ++v14;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_20BEF7574@<X0>(uint64_t *a2@<X8>)
{
  result = sub_20C1365E4();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_20BEF75A0(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v25[0] = a4;
  v25[1] = a3;
  v27 = a5;
  v7 = sub_20C1365F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C1333A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1365B4();
  v26 = a2;
  if (a2)
  {
    v15 = 10;
  }

  else
  {
    v15 = 6;
  }

  LOBYTE(v29[0]) = v15;
  sub_20B8DCF84();
  sub_20B8DD02C();
  v16 = sub_20C13CF84();

  v17 = 0;
  if (v16)
  {
    (*(v12 + 16))(v14, v25[0], v11);
    (*(v8 + 16))(v10, a1, v7);
    type metadata accessor for WorkoutPlanPreferencePickerShelf(0);
    v17 = swift_allocObject();
    *(v17 + 24) = 0;
    swift_unknownObjectWeakInit();
    sub_20C132ED4();
    v18 = v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row;
    sub_20B5D8060(v29);
    v19 = v29[5];
    *(v18 + 64) = v29[4];
    *(v18 + 80) = v19;
    v20 = v29[9];
    v21 = v29[7];
    *(v18 + 128) = v29[8];
    *(v18 + 144) = v20;
    v22 = v29[6];
    *(v18 + 160) = v30;
    *(v18 + 96) = v22;
    *(v18 + 112) = v21;
    v23 = v29[1];
    *v18 = v29[0];
    *(v18 + 16) = v23;
    v24 = v29[3];
    *(v18 + 32) = v29[2];
    *(v18 + 48) = v24;
    *(v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_selectedPreferences) = MEMORY[0x277D84FA0];
    *(v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_preferences) = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
    sub_20C133AA4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
    sub_20C133AA4();
    *(v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_eventHub) = v28;
    (*(v12 + 32))(v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_metricPage, v14, v11);
    (*(v8 + 32))(v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_modalityReference, v10, v7);
    *(v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_preferenceType) = v26 & 1;
  }

  *v27 = v17;
}

uint64_t sub_20BEF7958()
{
  v1 = sub_20C132EE4();
  v38 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v46 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v0[4];
  if (result)
  {
    v4 = v0[5];
    v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_preferencePickerShelves);
    v36 = v0[4];
    v34 = v4;
    sub_20B584050(result, v4);
    v6 = sub_20B6B3854(MEMORY[0x277D84F90]);
    if (v5 >> 62)
    {
LABEL_28:
      v7 = sub_20C13DB34();
      v35 = v0;
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v35 = v0;
      if (v7)
      {
LABEL_4:
        v8 = 0;
        v42 = v5 & 0xFFFFFFFFFFFFFF8;
        v43 = v5 & 0xC000000000000001;
        v44 = (v38 + 16);
        v40 = (v38 + 8);
        v41 = v1;
        v39 = v7;
        v37 = v5;
        while (1)
        {
          if (v43)
          {
            v9 = MEMORY[0x20F2F5430](v8, v5);
            v10 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              goto LABEL_24;
            }
          }

          else
          {
            if (v8 >= *(v42 + 16))
            {
              goto LABEL_25;
            }

            v9 = *(v5 + 8 * v8 + 32);

            v10 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
LABEL_24:
              __break(1u);
LABEL_25:
              __break(1u);
LABEL_26:
              __break(1u);
LABEL_27:
              __break(1u);
              goto LABEL_28;
            }
          }

          v45 = v10;
          v11 = *v44;
          v12 = v46;
          (*v44)(v46, v9 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_identifier, v1);
          v13 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_selectedPreferences;
          swift_beginAccess();
          v14 = *(v9 + v13);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v47 = v6;
          v0 = v6;
          v17 = sub_20B65AAD8(v12);
          v18 = *(v6 + 16);
          v19 = (v16 & 1) == 0;
          v20 = v18 + v19;
          if (__OFADD__(v18, v19))
          {
            goto LABEL_26;
          }

          v21 = v16;
          if (*(v6 + 24) >= v20)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v0 = v47;
              if (v16)
              {
                goto LABEL_5;
              }
            }

            else
            {
              sub_20BA11D50();
              v0 = v47;
              if (v21)
              {
                goto LABEL_5;
              }
            }
          }

          else
          {
            sub_20BA0D744(v20, isUniquelyReferenced_nonNull_native);
            v22 = sub_20B65AAD8(v46);
            if ((v21 & 1) != (v23 & 1))
            {
              result = sub_20C13E054();
              __break(1u);
              return result;
            }

            v17 = v22;
            v0 = v47;
            if (v21)
            {
LABEL_5:
              *(v0[7] + 8 * v17) = v14;

              v1 = v41;
              (*v40)(v46, v41);
              goto LABEL_6;
            }
          }

          v0[(v17 >> 6) + 8] |= 1 << v17;
          v24 = v38;
          v5 = v46;
          v1 = v41;
          v11(v0[6] + *(v38 + 72) * v17, v46, v41);
          *(v0[7] + 8 * v17) = v14;

          (*(v24 + 8))(v5, v1);
          v25 = v0[2];
          v26 = __OFADD__(v25, 1);
          v27 = v25 + 1;
          if (v26)
          {
            goto LABEL_27;
          }

          v0[2] = v27;
          v5 = v37;
LABEL_6:
          ++v8;
          v6 = v0;
          if (v45 == v39)
          {
            goto LABEL_30;
          }
        }
      }
    }

    v0 = v6;
LABEL_30:
    v28 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_originalPreferencesByShelf;
    v29 = v35;
    swift_beginAccess();
    v30 = *(v29 + v28);

    sub_20B9761D4(v0, v30);
    LOBYTE(v29) = v31;

    v32 = v34;
    v33 = v36;
    v36((v29 & 1) == 0);
    return sub_20B583ECC(v33, v32);
  }

  return result;
}

void sub_20BEF7D7C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_preferencePickerShelves);
  if (v2 >> 62)
  {
    v3 = sub_20C13DB34();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v28 = MEMORY[0x277D84F90];
    sub_20BB5E6E0(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      swift_unexpectedError();
      __break(1u);
      return;
    }

    v4 = v28;
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x20F2F5430](v5, v2);
        v7 = sub_20C1365A4();
        v9 = v8;
        v10 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_selectedPreferences;
        swift_beginAccess();
        v11 = *(v6 + v10);

        swift_unknownObjectRelease();
        v28 = v4;
        v13 = v4[2];
        v12 = v4[3];
        if (v13 >= v12 >> 1)
        {
          sub_20BB5E6E0((v12 > 1), v13 + 1, 1);
          v4 = v28;
        }

        ++v5;
        v4[2] = v13 + 1;
        v14 = &v4[3 * v13];
        v14[4] = v7;
        v14[5] = v9;
        v14[6] = v11;
      }

      while (v3 != v5);
    }

    else
    {
      v15 = (v2 + 32);
      do
      {
        v16 = *v15;

        v17 = sub_20C1365A4();
        v19 = v18;
        v20 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_selectedPreferences;
        swift_beginAccess();
        v21 = *(v16 + v20);

        v28 = v4;
        v23 = v4[2];
        v22 = v4[3];
        if (v23 >= v22 >> 1)
        {
          sub_20BB5E6E0((v22 > 1), v23 + 1, 1);
          v4 = v28;
        }

        v4[2] = v23 + 1;
        v24 = &v4[3 * v23];
        v24[4] = v17;
        v24[5] = v19;
        v24[6] = v21;
        ++v15;
        --v3;
      }

      while (v3);
    }

    v1 = v0;
  }

  if (v4[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7692A0, &unk_20C183260);
    v25 = sub_20C13DE84();
  }

  else
  {
    v25 = MEMORY[0x277D84F98];
  }

  v28 = v25;
  sub_20BEF9898(v4, 1, &v28);
  v26 = v28;
  swift_getObjectType();
  v27 = *(v1 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_preferenceType);
  v28 = v26;
  v29 = v27;
  sub_20BEFB124();
  sub_20C13A764();
}

void sub_20BEF8068(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_originalPreferencesByShelf;
  swift_beginAccess();
  if (*(*(v1 + v4) + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v1 + v4);
    *(v1 + v4) = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770338, &qword_20C183258);
    sub_20C13DE14();
    *(v1 + v4) = v10;
  }

  swift_endAccess();
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_preferencePickerShelves);
  if (v5 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
  {
    v7 = 0;
    while ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x20F2F5430](v7, v5);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_13;
      }

LABEL_9:
      v11[0] = v8;
      sub_20BEF81E4(v11, v2, a1);

      ++v7;
      if (v9 == i)
      {
        return;
      }
    }

    if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v8 = *(v5 + 8 * v7 + 32);

    v9 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

void sub_20BEF81E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v84 = a3;
  v93 = sub_20C134E04();
  v86 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v92 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_20C1333E4();
  v77 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_20C132EE4();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for WorkoutPlanPreference(0);
  v76 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v94 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v98 = &v76 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v76 - v13;
  v96 = sub_20C137594();
  v15 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v88 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v87 = &v76 - v18;
  v19 = *a1;

  v21 = sub_20BEFAC88(v20, v19);
  v78 = v3;
  v79 = v19;

  v83 = a2;
  v22 = *(a2 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_preferenceType);
  v23 = v21 + 56;
  v95 = v15 + 16;
  v89 = (v15 + 8);
  v99 = v21;
  if (v22)
  {
    v100 = MEMORY[0x277D84F90];
    v24 = 1 << *(v21 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & *(v21 + 56);
    v27 = (v24 + 63) >> 6;

    v28 = 0;
    while (v26)
    {
      v29 = v28;
      v30 = v99;
LABEL_11:
      v31 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v32 = v88;
      v33 = v96;
      (*(v15 + 16))(v88, *(v30 + 48) + *(v15 + 72) * (v31 | (v29 << 6)), v96);
      v34 = sub_20C137544();
      (*(v15 + 8))(v32, v33);
      sub_20B8D9590(v34);
    }

    v30 = v99;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v29 >= v27)
      {
        goto LABEL_24;
      }

      v26 = *(v23 + 8 * v29);
      ++v28;
      if (v26)
      {
        v28 = v29;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v100 = MEMORY[0x277D84F90];
    v35 = 1 << *(v21 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v21 + 56);
    v38 = (v35 + 63) >> 6;

    v39 = 0;
    while (v37)
    {
      v40 = v39;
      v41 = v99;
LABEL_22:
      v42 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v43 = v87;
      v44 = v96;
      (*(v15 + 16))(v87, *(v41 + 48) + *(v15 + 72) * (v42 | (v40 << 6)), v96);
      v45 = sub_20C137574();
      (*(v15 + 8))(v43, v44);
      sub_20B8D9590(v45);
    }

    v41 = v99;
    while (1)
    {
      v40 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v40 >= v38)
      {
LABEL_24:

        v46 = sub_20B527580(v100);

        v96 = *(v84 + 16);
        if (v96)
        {
          v47 = 0;
          v85 = (*(v76 + 80) + 32) & ~*(v76 + 80);
          v95 = v84 + v85;
          v99 = *(v76 + 72);
          v88 = (v77 + 8);
          v89 = (v77 + 32);
          v87 = v86 + 32;
          v86 += 8;
          v48 = v46 + 56;
          v49 = MEMORY[0x277D84F90];
          v50 = v98;
          do
          {
            sub_20BEFB058(v95 + v99 * v47, v14, type metadata accessor for WorkoutPlanPreference);
            sub_20BEFB058(v14, v50, type metadata accessor for WorkoutPlanPreference);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v51 = v92;
              v52 = v50;
              v53 = v93;
              (*v87)(v92, v52, v93);
              v54 = sub_20C134DD4();
              v56 = v55;
              v57 = v86;
            }

            else
            {
              v51 = v90;
              v58 = v50;
              v53 = v91;
              (*v89)(v90, v58, v91);
              v54 = sub_20C1333B4();
              v56 = v59;
              v57 = v88;
            }

            (*v57)(v51, v53);
            if (*(v46 + 16) && (sub_20C13E164(), sub_20C13CA64(), v60 = sub_20C13E1B4(), v61 = -1 << *(v46 + 32), v62 = v60 & ~v61, ((*(v48 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) != 0))
            {
              v63 = ~v61;
              while (1)
              {
                v64 = (*(v46 + 48) + 16 * v62);
                v65 = *v64 == v54 && v64[1] == v56;
                if (v65 || (sub_20C13DFF4() & 1) != 0)
                {
                  break;
                }

                v62 = (v62 + 1) & v63;
                if (((*(v48 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
                {
                  goto LABEL_26;
                }
              }

              sub_20BEFB0C0(v14, v94);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v101 = v49;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_20BB5EA28(0, *(v49 + 16) + 1, 1);
                v49 = v101;
              }

              v68 = *(v49 + 16);
              v67 = *(v49 + 24);
              if (v68 >= v67 >> 1)
              {
                sub_20BB5EA28((v67 > 1), v68 + 1, 1);
                v49 = v101;
              }

              *(v49 + 16) = v68 + 1;
              sub_20BEFB0C0(v94, v49 + v85 + v68 * v99);
            }

            else
            {
LABEL_26:

              sub_20B8DCED0(v14);
            }

            ++v47;
            v50 = v98;
          }

          while (v47 != v96);
        }

        else
        {
          v49 = MEMORY[0x277D84F90];
        }

        v69 = sub_20B719F18(v49);

        v70 = v81;
        v71 = v80;
        v72 = v82;
        (*(v81 + 16))(v80, v79 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_identifier, v82);
        v73 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_originalPreferencesByShelf;
        v74 = v83;
        swift_beginAccess();

        v75 = swift_isUniquelyReferenced_nonNull_native();
        v101 = *(v74 + v73);
        *(v74 + v73) = 0x8000000000000000;
        sub_20B91EBB4(v69, v71, v75);
        (*(v70 + 8))(v71, v72);
        *(v74 + v73) = v101;
        swift_endAccess();
        sub_20C0678EC(v84, v69);

        return;
      }

      v37 = *(v23 + 8 * v40);
      ++v39;
      if (v37)
      {
        v39 = v40;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
}

uint64_t sub_20BEF8B88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v61 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v51 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7647C8, &qword_20C1767D0);
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  MEMORY[0x28223BE20](v4);
  v56 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770360, &unk_20C183280);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7647C0, &unk_20C156180);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v17);
  v60 = &v51 - v21;
  v62 = v0;
  v22 = *(v0 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_preferencePickerShelves);
  if (v22 >> 62)
  {
    v54 = v19;
    v55 = v18;
    v50 = v20;
    result = sub_20C13DB34();
    v20 = v50;
    v19 = v54;
    v18 = v55;
    if (result < 1)
    {
      return result;
    }
  }

  else
  {
    result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 1)
    {
      return result;
    }
  }

  v51 = v20;
  v52 = v3;
  v54 = v19;
  v55 = v18;
  v53 = v1;
  v24 = *(v62 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_preferenceType);
  __swift_project_boxed_opaque_existential_1((v62 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_catalogClient), *(v62 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_catalogClient + 24));
  if (v24)
  {
    v25 = v57;
    sub_20C13A074();
    v26 = swift_allocObject();
    *(v26 + 16) = sub_20BEF930C;
    *(v26 + 24) = 0;
    v28 = v58;
    v27 = v59;
    v29 = v56;
    (*(v58 + 16))(v56, v25, v59);
    v30 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v31 = swift_allocObject();
    (*(v28 + 32))(v31 + v30, v29, v27);
    v32 = (v31 + ((v5 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v32 = sub_20BEFB178;
    v32[1] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770370, &qword_20C183290);
    v33 = v60;
    sub_20C137C94();
    (*(v28 + 8))(v25, v27);
  }

  else
  {
    sub_20C13A034();
    v34 = swift_allocObject();
    *(v34 + 16) = sub_20BEF92C8;
    *(v34 + 24) = 0;
    (*(v9 + 16))(v11, v14, v8);
    v35 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v36 = swift_allocObject();
    (*(v9 + 32))(v36 + v35, v11, v8);
    v37 = (v36 + ((v10 + v35 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v37 = sub_20BEFB274;
    v37[1] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770370, &qword_20C183290);
    v33 = v60;
    sub_20C137C94();
    (*(v9 + 8))(v14, v8);
  }

  v38 = swift_allocObject();
  swift_weakInit();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20BEFB1E8;
  *(v39 + 24) = v38;
  v41 = v54;
  v40 = v55;
  v42 = v51;
  (*(v54 + 16))(v51, v33, v55);
  v43 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v44 = swift_allocObject();
  (*(v41 + 32))(v44 + v43, v42, v40);
  v45 = (v44 + ((v16 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v45 = sub_20BEFB204;
  v45[1] = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
  v46 = v52;
  sub_20C137C94();
  v47 = v53;
  v48 = sub_20C137CB4();
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  *(v49 + 24) = 0;
  v48(sub_20B52347C, v49);

  (*(v61 + 8))(v46, v47);
  return (*(v41 + 8))(v33, v40);
}

uint64_t sub_20BEF92C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_20BEF6078(*a1, MEMORY[0x277D4FE80], 0);
  *a2 = result;
  return result;
}

uint64_t sub_20BEF930C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_20BEF6078(*a1, MEMORY[0x277D51130], 1u);
  *a2 = result;
  return result;
}

void sub_20BEF9350(uint64_t *a1@<X0>, BOOL *a3@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20BEF8068(v4);
  }

  *a3 = Strong == 0;
}

uint64_t *sub_20BEF93D4()
{
  sub_20B583E6C(v0 + 16);
  sub_20B583ECC(*(v0 + 32), *(v0 + 40));
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_metricPage;
  v2 = sub_20C1333A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_catalogClient));

  return v0;
}

uint64_t sub_20BEF94AC()
{
  sub_20BEF93D4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanPreferencesPageDataProvider(uint64_t a1)
{
  result = qword_27C770308;
  if (!qword_27C770308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BEF9558(uint64_t a1)
{
  result = sub_20C1333A4();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_20BEF9644(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BEF7958();
  }

  return result;
}

uint64_t sub_20BEF96B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_metricPage;
  v5 = sub_20C1333A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_20BEF972C()
{
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20BAC91C4();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  return sub_20BEF8B88();
}

unint64_t *sub_20BEF97FC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_20BEFA9C4(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_20BEF9898(void *a1, char a2, void *a3)
{
  v37 = a1[2];
  if (!v37)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_20B65AA60(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_20BA0C138(v15, v5 & 1);
    v10 = sub_20B65AA60(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_20C13E054();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_20BA11344();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + 8 * v10) = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_20C13DC94();
    MEMORY[0x20F2F4230](0xD00000000000001BLL, 0x800000020C1B67A0);
    sub_20C13DDF4();
    MEMORY[0x20F2F4230](39, 0xE100000000000000);
    sub_20C13DE24();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = a1 + 9;
    v25 = 1;
    while (v25 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v26 = *a3;

      v27 = sub_20B65AA60(v7, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_20BA0C138(v31, 1);
        v27 = sub_20B65AA60(v7, v6);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v7;
      v34[1] = v6;
      *(v33[7] + 8 * v27) = v8;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v25;
      v33[2] = v36;
      v5 += 3;
      if (v37 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

char *sub_20BEF9C2C(uint64_t a1, char *a2, void *a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v98 = a3;
  v99 = a6;
  v103 = a2;
  v104 = a4;
  v100 = a1;
  v8 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v8 - 8);
  *&v106 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  MEMORY[0x28223BE20](v10 - 8);
  v102 = &v94 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v12 - 8);
  v101 = &v94 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v14 - 8);
  v96 = &v94 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v94 - v17;
  v19 = sub_20C1333A4();
  v105 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a5;
  LODWORD(v97) = v22;
  *(v6 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 4) = 0;
  *(v6 + 5) = 0;
  v23 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_originalPreferencesByShelf;
  *&v6[v23] = sub_20B6B3854(MEMORY[0x277D84F90]);
  if (v22)
  {
    v24 = 0x7254796669646F4DLL;
  }

  else
  {
    v24 = 0x754D796669646F4DLL;
  }

  if (v22)
  {
    v25 = 0xEE007372656E6961;
  }

  else
  {
    v25 = 0xEB00000000636973;
  }

  v26 = *MEMORY[0x277D517D8];
  v27 = sub_20C1352F4();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v18, v26, v27);
  (*(v28 + 56))(v18, 0, 1, v27);
  v29 = v6;
  v30 = sub_20C132C14();
  (*(*(v30 - 8) + 56))(v96, 1, 1, v30);
  v31 = sub_20C135ED4();
  (*(*(v31 - 8) + 56))(v101, 1, 1, v31);
  v32 = sub_20C136914();
  (*(*(v32 - 8) + 56))(v102, 1, 1, v32);

  v101 = v25;
  v102 = v24;
  sub_20C133384();
  v33 = *(v105 + 16);
  v98 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_metricPage;
  v104 = v19;
  v33(&v6[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_metricPage], v21, v19);
  v34 = v97;
  v6[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_preferenceType] = v97;
  v96 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_selectedModalityPreferences;
  *&v6[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_selectedModalityPreferences] = v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  v35 = v100;
  sub_20C133AA4();
  v99 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_catalogClient;
  sub_20B51C710(&v120, &v29[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_catalogClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  v36 = v35;
  sub_20C133AA4();
  v37 = *(&v120 + 1);
  *(v29 + 6) = v120;
  *(v29 + 7) = v37;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&v29[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_subscriptionToken] = sub_20C13A914();
  *&v120 = v103;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770C10, &qword_20C1542C0);
  sub_20B69851C();
  v38 = sub_20C13CBF4();

  v107[16] = v34;
  v108 = v36;
  v109 = v21;
  v103 = v21;
  v39 = sub_20B613FCC(sub_20BEFA9A4, v107, v38);

  *&v29[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_preferencePickerShelves] = v39;
  LOBYTE(v120) = v34;
  type metadata accessor for WorkoutPlanPreferenceDescriptionShelf(0);
  swift_allocObject();

  v41 = sub_20C07B8F4(v40, &v120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00, &qword_20C1538C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = v41;
  *(inited + 40) = &off_282304208;
  v100 = v41;

  v44 = sub_20BEF73E8(v43, &off_282303800);

  *&v120 = inited;
  sub_20B8D8FF8(v44);
  v45 = v120;
  LODWORD(v99) = sub_20C1380F4();
  v46 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v98 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v46 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v47 = sub_20C13C724();
  v48 = type metadata accessor for CatalogPageImpressionTracker();
  v49 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v50 = MEMORY[0x277D221C0];
  v49[2] = sub_20C13C6D4();
  v49[3] = v47;
  v49[4] = v50;
  v121 = v48;
  v51 = sub_20B63EE48();
  v122 = v51;
  *&v120 = v49;
  v52 = type metadata accessor for MetricLocationStore();
  v53 = swift_allocObject();
  v54 = MEMORY[0x277D84F98];
  v55 = MEMORY[0x277D84F90];
  *(v53 + 16) = MEMORY[0x277D84F90];
  *(v53 + 24) = v54;
  v56 = __swift_mutable_project_boxed_opaque_existential_1(&v120, v48);
  v97 = &v94;
  v57 = MEMORY[0x28223BE20](v56);
  v59 = (&v94 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v60 + 16))(v59, v57);
  v61 = *v59;
  v119[3] = v48;
  v119[4] = v51;
  v119[0] = v61;
  v118[3] = v52;
  v118[4] = &off_2822B6968;
  v118[0] = v53;
  v62 = *(v45 + 16);
  if (v62)
  {
    v94 = v52;
    v95 = v51;
    v96 = v29;
    v117[0] = v55;
    sub_20BB5D394(0, v62, 0);
    v63 = 32;
    v64 = v117[0];
    do
    {
      v65 = *(v45 + v63);
      v117[0] = v64;
      v67 = *(v64 + 16);
      v66 = *(v64 + 24);
      v106 = v65;
      swift_unknownObjectRetain();
      if (v67 >= v66 >> 1)
      {
        sub_20BB5D394((v66 > 1), v67 + 1, 1);
        v64 = v117[0];
      }

      *(v64 + 16) = v67 + 1;
      v68 = v64 + 24 * v67;
      *(v68 + 32) = v106;
      *(v68 + 48) = 0;
      v63 += 16;
      --v62;
    }

    while (v62);

    v51 = v95;
    v29 = v96;
    v52 = v94;
  }

  else
  {

    v64 = MEMORY[0x277D84F90];
  }

  sub_20B51CC64(v119, v117);
  sub_20B51CC64(v118, v116);
  v69 = __swift_mutable_project_boxed_opaque_existential_1(v117, v117[3]);
  *&v106 = &v94;
  v70 = MEMORY[0x28223BE20](v69);
  v72 = (&v94 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v73 + 16))(v72, v70);
  v74 = __swift_mutable_project_boxed_opaque_existential_1(v116, v116[3]);
  v75 = MEMORY[0x28223BE20](v74);
  v77 = (&v94 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v78 + 16))(v77, v75);
  v79 = *v72;
  v80 = *v77;
  v114 = v48;
  v115 = v51;
  v113[0] = v79;
  v111 = v52;
  v112 = &off_2822B6968;
  v110[0] = v80;
  v81 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v82 = __swift_mutable_project_boxed_opaque_existential_1(v113, v114);
  v83 = MEMORY[0x28223BE20](v82);
  v85 = (&v94 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v86 + 16))(v85, v83);
  v87 = __swift_mutable_project_boxed_opaque_existential_1(v110, v111);
  v88 = MEMORY[0x28223BE20](v87);
  v90 = (&v94 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v91 + 16))(v90, v88);
  v92 = sub_20BE3AA74(v102, v101, v64, v99, v98, *v85, *v90, 2, v81);

  __swift_destroy_boxed_opaque_existential_1(v118);
  __swift_destroy_boxed_opaque_existential_1(v119);
  __swift_destroy_boxed_opaque_existential_1(v110);
  __swift_destroy_boxed_opaque_existential_1(v113);
  __swift_destroy_boxed_opaque_existential_1(v116);
  __swift_destroy_boxed_opaque_existential_1(v117);
  __swift_destroy_boxed_opaque_existential_1(&v120);
  *&v29[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_page] = v92;
  (*(v105 + 8))(v103, v104);
  return v29;
}

void sub_20BEFA9C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a2;
  v40 = a4;
  v33 = a1;
  v5 = sub_20C137594();
  v7.n128_f64[0] = MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 0;
  v10 = 0;
  v41 = a3;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v37 = v6 + 16;
  v38 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_modalityReference;
  v39 = v6;
  v36 = (v6 + 8);
  while (v16)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_12:
    v22 = v19 | (v10 << 6);
    v23 = *(v41 + 48);
    v24 = *(v39 + 72);
    v35 = v22;
    (*(v39 + 16))(v9, v23 + v24 * v22, v5, v7);
    v25 = v9;
    v26 = sub_20C137564();
    v28 = v27;
    if (v26 == sub_20C1365A4() && v28 == v29)
    {

      v9 = v25;
      (*v36)(v25, v5);
      goto LABEL_15;
    }

    v18 = sub_20C13DFF4();

    v9 = v25;
    (*v36)(v25, v5);
    if (v18)
    {
LABEL_15:
      *(v33 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
LABEL_18:
        v31 = v41;

        sub_20BC105C4(v33, v32, v34, v31);
        return;
      }
    }
  }

  v20 = v10;
  while (1)
  {
    v10 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_18;
    }

    v21 = *(v12 + 8 * v10);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v16 = (v21 - 1) & v21;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_20BEFAC88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = *MEMORY[0x277D85DE8];
  v39 = sub_20C137594();
  v6 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = a2;
  v38 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;

  if (v8 > 0xD)
  {
    goto LABEL_22;
  }

  while (2)
  {
    v29 = v9;
    v30 = v3;
    v28[1] = v28;
    MEMORY[0x28223BE20](v11);
    v31 = v28 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v10);
    v32 = 0;
    v3 = 0;
    v12 = a1 + 56;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v9 = v14 & *(a1 + 56);
    v15 = (v13 + 63) >> 6;
    v34 = v6 + 16;
    v35 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_modalityReference;
    v36 = v6;
    v33 = (v6 + 8);
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v6 = v16 | (v3 << 6);
      v19 = a1;
      (*(v36 + 16))(v38, *(a1 + 48) + *(v36 + 72) * v6, v39);
      v10 = sub_20C137564();
      v21 = v20;
      if (v10 == sub_20C1365A4() && v21 == v22)
      {

        (*v33)(v38, v39);
        a1 = v19;
        goto LABEL_16;
      }

      v10 = sub_20C13DFF4();

      (*v33)(v38, v39);
      a1 = v19;
      if (v10)
      {
LABEL_16:
        *&v31[(v6 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v6;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_19:
          v24 = sub_20BC105C4(v31, v29, v32, a1);

          return v24;
        }
      }
    }

    v17 = v3;
    while (1)
    {
      v3 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v3 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v12 + 8 * v3);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v26 = swift_slowAlloc();
  v27 = v37;

  v24 = sub_20BEF97FC(v26, v9, a1, v27);

  MEMORY[0x20F2F6A40](v26, -1, -1);

  return v24;
}

uint64_t sub_20BEFB058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BEFB0C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanPreference(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20BEFB124()
{
  result = qword_27C770348;
  if (!qword_27C770348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770348);
  }

  return result;
}

uint64_t sub_20BEFB2E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

char *sub_20BEFB3D4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_iconView;
  v12 = [objc_allocWithZone(type metadata accessor for ActivityTypeIconView()) initWithFrame_];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v13) = 1148846080;
  [v12 setContentCompressionResistancePriority:0 forAxis:v13];
  LODWORD(v14) = 1148846080;
  [v12 setContentCompressionResistancePriority:1 forAxis:v14];
  LODWORD(v15) = 1148846080;
  [v12 setContentHuggingPriority:0 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [v12 setContentHuggingPriority:1 forAxis:v16];
  v17 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.207843137 alpha:1.0];
  [v12 setBackgroundColor_];

  [v12 setContentMode_];
  *&v4[v11] = v12;
  v18 = &v4[OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_layout];
  *v18 = xmmword_20C1832A0;
  *(v18 + 1) = xmmword_20C1832B0;
  *(v18 + 2) = xmmword_20C1832C0;
  v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  [v19 setAdjustsFontForContentSizeCategory_];
  v20 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938] compatibleWithTraitCollection:0];
  v21 = [v20 fontDescriptorWithSymbolicTraits_];
  if (v21)
  {
    v22 = v21;

    v20 = v22;
  }

  v23 = OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_titleLabel;
  v24 = [objc_opt_self() fontWithDescriptor:v20 size:0.0];

  [v19 setFont_];
  v25 = [objc_opt_self() whiteColor];
  [v19 setTextColor_];

  LODWORD(v26) = 1148846080;
  [v19 setContentCompressionResistancePriority:0 forAxis:v26];
  LODWORD(v27) = 1148846080;
  [v19 setContentCompressionResistancePriority:1 forAxis:v27];
  LODWORD(v28) = 1148846080;
  [v19 setContentHuggingPriority:0 forAxis:v28];
  LODWORD(v29) = 1148846080;
  [v19 setContentHuggingPriority:1 forAxis:v29];
  v30 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.207843137 alpha:1.0];
  [v19 setBackgroundColor_];

  *&v4[v23] = v19;
  v73.receiver = v4;
  v73.super_class = type metadata accessor for ModalityBrickItemCell(0);
  v31 = objc_msgSendSuper2(&v73, sel_initWithFrame_, a1, a2, a3, a4);
  [v31 setClipsToBounds_];
  v32 = [v31 layer];
  [v32 setCornerRadius_];

  v33 = [v31 contentView];
  v34 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.207843137 alpha:1.0];
  [v33 setBackgroundColor_];

  v35 = [v31 contentView];
  v36 = OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_titleLabel;
  [v35 addSubview_];

  v37 = [v31 contentView];
  v38 = OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_iconView;
  [v37 addSubview_];

  v72 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_20C150060;
  v40 = [*&v31[v38] leadingAnchor];
  v41 = [v31 contentView];
  v42 = [v41 leadingAnchor];

  v43 = [v40 constraintEqualToAnchor:v42 constant:10.0];
  *(v39 + 32) = v43;
  v44 = [*&v31[v38] widthAnchor];
  v45 = [v44 constraintEqualToConstant_];

  *(v39 + 40) = v45;
  v46 = [*&v31[v38] centerYAnchor];
  v47 = [v31 contentView];
  v48 = [v47 &selRef_setNumberOfTapsRequired_];

  v49 = [v46 constraintEqualToAnchor_];
  *(v39 + 48) = v49;
  v50 = [*&v31[v38] heightAnchor];
  v51 = [v50 constraintEqualToConstant_];

  *(v39 + 56) = v51;
  v52 = [*&v31[v36] leadingAnchor];
  v53 = [*&v31[v38] trailingAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 constant:4.0];

  *(v39 + 64) = v54;
  v55 = [*&v31[v36] trailingAnchor];
  v56 = [v31 contentView];
  v57 = [v56 trailingAnchor];

  v58 = [v55 constraintEqualToAnchor:v57 constant:-12.0];
  *(v39 + 72) = v58;
  v59 = [*&v31[v36] topAnchor];
  v60 = [v31 contentView];
  v61 = [v60 topAnchor];

  v62 = [v59 constraintGreaterThanOrEqualToAnchor:v61 constant:14.0];
  *(v39 + 80) = v62;
  v63 = [*&v31[v36] bottomAnchor];
  v64 = [v31 contentView];

  v65 = [v64 bottomAnchor];
  v66 = [v63 constraintLessThanOrEqualToAnchor:v65 constant:-14.0];

  *(v39 + 88) = v66;
  v67 = [*&v31[v36] centerYAnchor];
  v68 = [*&v31[v38] centerYAnchor];
  v69 = [v67 constraintEqualToAnchor_];

  *(v39 + 96) = v69;
  sub_20B5E29D0();
  v70 = sub_20C13CC54();

  [v72 activateConstraints_];

  return v31;
}

id sub_20BEFBEF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModalityBrickItemCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ModalityBrickItemCell(uint64_t a1)
{
  result = qword_281102890;
  if (!qword_281102890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BEFBFF8(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_20BEFC0BC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BEFC108@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BEFC160(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BEFC1C4(unint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C134014();
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v11 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) != 0x20)
  {
    sub_20C13B534();

    v38 = v1;
    v39 = sub_20C13BB74();
    v40 = sub_20C13D1D4();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v67[0] = v66;
      *v41 = 138543874;
      *(v41 + 4) = v38;
      *v42 = v38;
      *(v41 + 12) = 2160;
      *(v41 + 14) = 1752392040;
      *(v41 + 22) = 2080;
      v67[2] = a1;
      v43 = sub_20B5F66D0();
      v44 = v38;
      v45 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v43);
      v47 = sub_20B51E694(v45, v46, v67);

      *(v41 + 24) = v47;
      _os_log_impl(&dword_20B517000, v39, v40, "Attempted to configure %{public}@ with item: %{mask.hash}s", v41, 0x20u);
      sub_20B520158(v42, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v42, -1, -1);
      v48 = v66;
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x20F2F6A40](v48, -1, -1);
      MEMORY[0x20F2F6A40](v41, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250, &unk_20C150590);
  v13 = swift_projectBox();
  v14 = v13 + *(v12 + 64);
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  v18 = *(v14 + 24);
  v20 = *(v14 + 32);
  v19 = *(v14 + 40);
  v21 = *(v9 + 16);
  v66 = v8;
  v21(v11, v13, v8);
  v22 = v15;
  v65 = v16;
  v23 = v17;
  v63[3] = v18;
  v64 = v23;

  v63[2] = v20;

  v63[1] = v19;
  v24 = v22;

  v25 = [v22 string];
  v26 = sub_20C13C954();
  v28 = v27;

  v67[0] = v26;
  v67[1] = v28;
  sub_20B5F6EB0();
  v29 = sub_20C13D9E4();
  v31 = v30;

  v32 = *&v2[OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_titleLabel];
  v33 = [v32 text];
  if (!v33)
  {
    goto LABEL_11;
  }

  v34 = v33;
  v35 = sub_20C13C954();
  v37 = v36;

  if (v35 != v29 || v37 != v31)
  {
    v49 = sub_20C13DFF4();

    if (v49)
    {

      goto LABEL_12;
    }

LABEL_11:
    v50 = sub_20C13C914();

    [v32 setText_];

    goto LABEL_12;
  }

LABEL_12:
  v51 = sub_20C133F74();
  v52 = v66;
  if (*(v51 + 16))
  {
    v53 = *(v51 + 32);

    v54 = *&v2[OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_iconView];
    v55 = &v54[OBJC_IVAR____TtC9SeymourUI20ActivityTypeIconView_workoutActivityType];
    if ((v54[OBJC_IVAR____TtC9SeymourUI20ActivityTypeIconView_workoutActivityType + 8] & 1) == 0 && *v55 == v53)
    {
      (*(v9 + 8))(v11, v52);

      return;
    }

    *v55 = v53;
    v55[8] = 0;
    sub_20B9C7E94(v53);
    v56 = sub_20C13C914();

    v57 = [objc_opt_self() smm:v56 systemImageNamed:?];

    v58 = [v57 imageWithRenderingMode_];
    [v54 setImage_];

    v59 = v65;
    v60 = v24;
    v24 = v58;
  }

  else
  {

    v61 = *&v2[OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_iconView];
    v62 = &v61[OBJC_IVAR____TtC9SeymourUI20ActivityTypeIconView_workoutActivityType];
    *v62 = 0;
    v62[8] = 1;
    [v61 setImage_];

    v59 = v64;
    v60 = v65;
  }

  (*(v9 + 8))(v11, v52);
}

void sub_20BEFC80C()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_iconView;
  v4 = [objc_allocWithZone(type metadata accessor for ActivityTypeIconView()) initWithFrame_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v5) = 1148846080;
  [v4 setContentCompressionResistancePriority:0 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [v4 setContentCompressionResistancePriority:1 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [v4 setContentHuggingPriority:0 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [v4 setContentHuggingPriority:1 forAxis:v8];
  v9 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.207843137 alpha:1.0];
  [v4 setBackgroundColor_];

  [v4 setContentMode_];
  *(v0 + v3) = v4;
  v10 = (v0 + OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_layout);
  *v10 = xmmword_20C1832A0;
  v10[1] = xmmword_20C1832B0;
  v10[2] = xmmword_20C1832C0;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setAdjustsFontForContentSizeCategory_];
  v12 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938] compatibleWithTraitCollection:0];
  v13 = [v12 fontDescriptorWithSymbolicTraits_];
  if (v13)
  {
    v14 = v13;

    v12 = v14;
  }

  v15 = OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_titleLabel;
  v16 = [objc_opt_self() fontWithDescriptor:v12 size:0.0];

  [v11 setFont_];
  v17 = [objc_opt_self() whiteColor];
  [v11 setTextColor_];

  LODWORD(v18) = 1148846080;
  [v11 setContentCompressionResistancePriority:0 forAxis:v18];
  LODWORD(v19) = 1148846080;
  [v11 setContentCompressionResistancePriority:1 forAxis:v19];
  LODWORD(v20) = 1148846080;
  [v11 setContentHuggingPriority:0 forAxis:v20];
  LODWORD(v21) = 1148846080;
  [v11 setContentHuggingPriority:1 forAxis:v21];
  v22 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.207843137 alpha:1.0];
  [v11 setBackgroundColor_];

  *(v0 + v15) = v11;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BEFCC04(uint64_t a1)
{
  result = sub_20C134734();
  if (v2 <= 0x3F)
  {
    result = sub_20C137F24();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_20BEFCCC0(uint64_t a1)
{
  result = type metadata accessor for TVFilterRootPropertyUpdated.PropertyType(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_20BEFCD2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_20C13C554();
  v78 = *(v6 - 8);
  v79 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = (&v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B454();
  sub_20C13BB64();
  (*(v10 + 8))(v12, v9);
  v13 = sub_20C133954();
  if ((*(*(v13 - 8) + 48))(a1, 1, v13) == 1 && !*(a2 + 16))
  {
    sub_20B51C88C(0, &qword_27C7713A0, 0x277D750C8);
    swift_allocObject();
    swift_weakInit();
    v77 = sub_20C13D624();
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    v37 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_workoutPlanStringBuilder);
    *(v36 + 32) = 1;
    v38 = *(v37 + 72);
    v39 = *(v37 + 80);
    __swift_project_boxed_opaque_existential_1((v37 + 48), v38);
    *(v36 + 40) = sub_20B5E107C(0xD000000000000018, 0x800000020C1B68A0, v38, v39);
    *(v36 + 48) = v40;
    v41 = *(v37 + 72);
    v42 = *(v37 + 80);
    __swift_project_boxed_opaque_existential_1((v37 + 48), v41);
    *(v36 + 56) = sub_20B5E107C(0xD00000000000001BLL, 0x800000020C1B68C0, v41, v42);
    *(v36 + 64) = v43;
    v44 = sub_20C13C914();
    v45 = [objc_opt_self() systemImageNamed_];

    *(v36 + 72) = v45;
    v46 = *(v37 + 40);
    v47 = *(v37 + 72);
    v48 = *(v37 + 80);
    __swift_project_boxed_opaque_existential_1((v37 + 48), v47);
    v49 = "makeCreatePlanRow()";
    if (v46 >= 3)
    {
      v50 = 0xD000000000000015;
    }

    else
    {
      v49 = "CREATE_WORKOUT_PLAN_TITLE";
      v50 = 0xD000000000000012;
    }

    *(v36 + 80) = sub_20B5E107C(v50, v49 | 0x8000000000000000, v47, v48);
    *(v36 + 88) = v51;
    v52 = v77;
    *(v36 + 96) = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_20C14F980;
    *(v53 + 32) = v36 | 0x1000000000000006;
    v80 = 0uLL;
    LOBYTE(v81) = 1;
    *(&v81 + 1) = 0;
    *&v82 = 0;
    WORD4(v82) = 128;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    LOBYTE(v86) = 0;
    *(&v86 + 1) = v53;
    *&v87[0] = MEMORY[0x277D84F90];
    *(v87 + 8) = 0u;
    *(&v87[1] + 8) = 0u;
    *(&v87[2] + 1) = 0;
    v88 = 2;
    nullsub_1();
    v54 = v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row;
    v55 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 144);
    v97 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 128);
    v98 = v55;
    v99 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 160);
    v56 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 80);
    v93 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 64);
    v94 = v56;
    v57 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 112);
    v95 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 96);
    v96 = v57;
    v58 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 16);
    v89 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row);
    v90 = v58;
    v59 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 48);
    v91 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 32);
    v92 = v59;
    v60 = v87[2];
    *(v54 + 128) = v87[1];
    *(v54 + 144) = v60;
    *(v54 + 160) = v88;
    v61 = v85;
    *(v54 + 64) = v84;
    *(v54 + 80) = v61;
    v62 = v87[0];
    *(v54 + 96) = v86;
    *(v54 + 112) = v62;
    v63 = v81;
    *v54 = v80;
    *(v54 + 16) = v63;
    v64 = v83;
    *(v54 + 32) = v82;
    *(v54 + 48) = v64;
    v65 = v52;

    sub_20B520158(&v89, &qword_27C762340, &unk_20C150290);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      return;
    }

    v67 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      sub_20B61DC48(v3, Strong);
      if (v69)
      {
        v71 = v69;
        v76 = v68;
        v77 = v70;
        sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
        *v8 = sub_20C13D374();
        v73 = v78;
        v72 = v79;
        (*(v78 + 104))(v8, *MEMORY[0x277D85200], v79);
        v74 = sub_20C13C584();
        (*(v73 + 8))(v8, v72);
        if ((v74 & 1) == 0)
        {
          goto LABEL_23;
        }

        sub_20B6212CC(v76, v71, v77, v3, 1, v67);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    goto LABEL_20;
  }

  v80 = 0uLL;
  LOBYTE(v81) = 1;
  *(&v81 + 1) = 0;
  *&v82 = 0;
  WORD4(v82) = 128;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  LOBYTE(v86) = 0;
  *(&v86 + 1) = MEMORY[0x277D84F90];
  *&v87[0] = MEMORY[0x277D84F90];
  *(v87 + 8) = 0u;
  *(&v87[1] + 8) = 0u;
  *(&v87[2] + 1) = 0;
  v88 = 2;
  nullsub_1();
  v14 = v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row;
  v15 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 144);
  v97 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 128);
  v98 = v15;
  v99 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 160);
  v16 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 80);
  v93 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 64);
  v94 = v16;
  v17 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 112);
  v95 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 96);
  v96 = v17;
  v18 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 16);
  v89 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row);
  v90 = v18;
  v19 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 48);
  v91 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 32);
  v92 = v19;
  v20 = v87[2];
  *(v14 + 128) = v87[1];
  *(v14 + 144) = v20;
  *(v14 + 160) = v88;
  v21 = v85;
  *(v14 + 64) = v84;
  *(v14 + 80) = v21;
  v22 = v87[0];
  *(v14 + 96) = v86;
  *(v14 + 112) = v22;
  v23 = v81;
  *v14 = v80;
  *(v14 + 16) = v23;
  v24 = v83;
  *(v14 + 32) = v82;
  *(v14 + 48) = v24;
  sub_20B520158(&v89, &qword_27C762340, &unk_20C150290);
  v25 = swift_unknownObjectWeakLoadStrong();
  if (!v25)
  {
    return;
  }

  if (!*(v25 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    v26 = v25;
    sub_20B61DC48(v3, v25);
    if (!v28)
    {
      sub_20C0C2D50(0);
      goto LABEL_20;
    }

    v30 = v27;
    v31 = v28;
    v32 = v29;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v8 = sub_20C13D374();
    v34 = v78;
    v33 = v79;
    (*(v78 + 104))(v8, *MEMORY[0x277D85200], v79);
    v35 = sub_20C13C584();
    (*(v34 + 8))(v8, v33);
    if (v35)
    {
      sub_20B6212CC(v30, v31, v32, v3, 1, v26);

      goto LABEL_20;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

LABEL_20:
  swift_unknownObjectRelease();
}

double sub_20BEFD520(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BEFD578();
  }

  return result;
}

uint64_t sub_20BEFD578()
{
  v1 = type metadata accessor for ShelfMetricAction(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622D0, &unk_20C14FCE0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    (*(v2 + 56))(v10, 1, 1, v1);
    sub_20B52F9E8(v10, v7, &unk_27C7622D0, &unk_20C14FCE0);
    if ((*(v2 + 48))(v7, 1, v1) == 1)
    {
      sub_20B520158(v7, &unk_27C7622D0, &unk_20C14FCE0);
    }

    else
    {
      sub_20BB91728(v7, v4);
      sub_20BF9FE68(v0, v4, v12);
      sub_20B68D110(v4);
    }

    v13 = v12 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 8);
      ObjectType = swift_getObjectType();
      (*(v14 + 264))(v12, ObjectType, v14);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    return sub_20B520158(v10, &unk_27C7622D0, &unk_20C14FCE0);
  }

  return result;
}

uint64_t sub_20BEFD7C0()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340, &unk_20C150290);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_storefrontLocalizer));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EmptyWorkoutPlanTemplateGalleryShelf(uint64_t a1)
{
  result = qword_27C7703A0;
  if (!qword_27C7703A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BEFD928(uint64_t a1)
{
  result = sub_20C132EE4();
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

uint64_t sub_20BEFD9F0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BEFDA68@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340, &unk_20C150290);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20BEFDB2C()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row;
  sub_20B5D8060(v9);
  v2 = v9[9];
  *(v1 + 128) = v9[8];
  *(v1 + 144) = v2;
  *(v1 + 160) = v10;
  v3 = v9[5];
  *(v1 + 64) = v9[4];
  *(v1 + 80) = v3;
  v4 = v9[7];
  *(v1 + 96) = v9[6];
  *(v1 + 112) = v4;
  v5 = v9[1];
  *v1 = v9[0];
  *(v1 + 16) = v5;
  v6 = v9[3];
  *(v1 + 32) = v9[2];
  *(v1 + 48) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B52E424(&v8, v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_storefrontLocalizer);
  sub_20C133AA4();
  *(v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_platform) = v8;
  type metadata accessor for WorkoutPlanStringBuilder(0);
  sub_20C133AA4();
  *(v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_workoutPlanStringBuilder) = v8;
  return v0;
}

double sub_20BEFDC70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned __int8 a5)
{
  sub_20C13CA64();
  sub_20C13E184();
  if (a4)
  {
    v6 = a4;
    sub_20C13D604();
  }

  sub_20C13CA64();

  return result;
}

uint64_t sub_20BEFDD68()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_20C13E164();
  sub_20BEFDC70(v6, v1, v2, v3, v4);
  return sub_20C13E1B4();
}

uint64_t sub_20BEFDDDC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_20C13E164();
  sub_20BEFDC70(v7, v2, v3, v4, v5);
  return sub_20C13E1B4();
}

unint64_t sub_20BEFDE64()
{
  result = qword_27C7703B0;
  if (!qword_27C7703B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7703B0);
  }

  return result;
}

uint64_t sub_20BEFDEB8(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, void *a7, unsigned __int8 a8)
{
  if ((a1 != a5 || a2 != a6) && (sub_20C13DFF4() & 1) == 0)
  {
    return 0;
  }

  if (!a3)
  {
    if (!a7)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (!a7)
  {
    return 0;
  }

  sub_20B71D438();
  v12 = a7;
  v13 = a3;
  v14 = sub_20C13D5F4();

  if ((v14 & 1) == 0)
  {
    return 0;
  }

LABEL_7:

  return sub_20B968D04(a4, a8);
}

void sub_20BEFDF9C()
{
  v1 = sub_20C13C554();
  v52 = *(v1 - 8);
  v53 = v1;
  MEMORY[0x28223BE20](v1);
  v51 = (&v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_kind);
  v55 = v0;
  v4 = (v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_storefrontLocalizer);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_storefrontLocalizer), *(v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_storefrontLocalizer + 24));
  v54 = sub_20C138CC4();
  v6 = v5;

  v7 = 0;
  v8 = 0;
  if ((v3 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    v7 = sub_20C138CC4();
    v8 = v9;
  }

  v10 = v55;
  if (*(v55 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_platform) == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_20C14F980;
    v12 = swift_allocObject();
    *(v12 + 16) = v54;
    *(v12 + 24) = v6;
    *(v12 + 32) = v7;
    *(v12 + 40) = v8;
    *(v11 + 32) = v12 | 0x3000000000000000;
    v56 = 0uLL;
    LOBYTE(v57) = 1;
    *(&v57 + 1) = 0;
    *&v58 = 0;
    WORD4(v58) = 128;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    LOBYTE(v62) = 0;
    *(&v62 + 1) = v11;
    *&v63[0] = MEMORY[0x277D84F90];
    *(v63 + 8) = 0u;
    *(&v63[1] + 8) = 0u;
    *(&v63[2] + 1) = 0;
    v64 = 2;
    nullsub_1();
    v13 = OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    v50 = sub_20C138D34();
    v14 = v6;
    v16 = v15;
    v17 = sub_20C13C914();

    v18 = [objc_opt_self() systemImageNamed_];

    v19 = swift_allocObject();
    *(v19 + 16) = 1;
    *(v19 + 40) = v54;
    *(v19 + 48) = v14;
    *(v19 + 56) = v7;
    *(v19 + 64) = v8;
    *(v19 + 72) = v18;
    v20 = *(v10 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_retryAction);
    v21 = v18;
    if (v20)
    {
      v22 = v50;
    }

    else
    {

      v22 = 0;
      v16 = 0;
    }

    *(v19 + 80) = v22;
    *(v19 + 88) = v16;
    *(v19 + 96) = v20;
    *(v19 + 24) = 0;
    *(v19 + 32) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_20C14F980;
    *(v23 + 32) = v19 | 0x1000000000000006;
    v24 = v20;

    v56 = 0uLL;
    LOBYTE(v57) = 1;
    *(&v57 + 1) = 0;
    *&v58 = 0;
    WORD4(v58) = 128;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    LOBYTE(v62) = 0;
    *(&v62 + 1) = v23;
    *&v63[0] = MEMORY[0x277D84F90];
    *(v63 + 8) = 0u;
    *(&v63[1] + 8) = 0u;
    *(&v63[2] + 1) = 0;
    v64 = 2;
    nullsub_1();
    v13 = OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row;
    v10 = v55;
  }

  v25 = v10 + v13;
  v26 = *(v25 + 144);
  v65[8] = *(v25 + 128);
  v65[9] = v26;
  v66 = *(v25 + 160);
  v27 = *(v25 + 80);
  v65[4] = *(v25 + 64);
  v65[5] = v27;
  v28 = *(v25 + 112);
  v65[6] = *(v25 + 96);
  v65[7] = v28;
  v29 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v29;
  v30 = *(v25 + 48);
  v65[2] = *(v25 + 32);
  v65[3] = v30;
  v31 = v63[2];
  *(v25 + 128) = v63[1];
  *(v25 + 144) = v31;
  *(v25 + 160) = v64;
  v32 = v61;
  *(v25 + 64) = v60;
  *(v25 + 80) = v32;
  v33 = v63[0];
  *(v25 + 96) = v62;
  *(v25 + 112) = v33;
  v34 = v57;
  *v25 = v56;
  *(v25 + 16) = v34;
  v35 = v59;
  *(v25 + 32) = v58;
  *(v25 + 48) = v35;
  sub_20B634408(v65);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      sub_20B61CE20(v10, Strong);
      if (v39)
      {
        v41 = v38;
        v42 = v39;
        v43 = v40;
        sub_20B5E2E18();
        v44 = sub_20C13D374();
        v46 = v51;
        v45 = v52;
        *v51 = v44;
        v47 = v53;
        (*(v45 + 104))(v46, *MEMORY[0x277D85200], v53);
        v48 = sub_20C13C584();
        (*(v45 + 8))(v46, v47);
        if ((v48 & 1) == 0)
        {
          __break(1u);
          return;
        }

        sub_20B620320(v41, v42, v43, v10, 0, v37);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_20BEFE5A8()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_storefrontLocalizer));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LoadingErrorShelf(uint64_t a1)
{
  result = qword_27C7703D8;
  if (!qword_27C7703D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BEFE700(uint64_t a1)
{
  result = sub_20C132EE4();
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

uint64_t sub_20BEFE7CC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BEFE844@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20BEFE8F4(uint64_t a1, char a2, void *a3)
{
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v6 = v3 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row;
  sub_20B5D8060(v15);
  v7 = v15[9];
  *(v6 + 128) = v15[8];
  *(v6 + 144) = v7;
  *(v6 + 160) = v16;
  v8 = v15[5];
  *(v6 + 64) = v15[4];
  *(v6 + 80) = v8;
  v9 = v15[7];
  *(v6 + 96) = v15[6];
  *(v6 + 112) = v9;
  v10 = v15[1];
  *v6 = v15[0];
  *(v6 + 16) = v10;
  v11 = v15[3];
  *(v6 + 32) = v15[2];
  *(v6 + 48) = v11;
  *(v3 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_kind) = a2 & 1;
  *(v3 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_retryAction) = a3;
  v12 = a3;
  sub_20C133AA4();
  *(v3 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_platform) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B52E424(&v14, v3 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_storefrontLocalizer);
  return v3;
}

unint64_t sub_20BEFEA50()
{
  result = qword_27C7703E8;
  if (!qword_27C7703E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7703E8);
  }

  return result;
}

void sub_20BEFEAA4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *MEMORY[0x277CE5DE0];
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = sub_20B7E9034;
  v10[4] = v8;
  v13[4] = sub_20BEFF55C;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_20B98FE2C;
  v13[3] = &block_descriptor_149;
  v11 = _Block_copy(v13);

  v12 = a4;

  [a3 loadMediaSelectionGroupForMediaCharacteristic:v9 completionHandler:v11];
  _Block_release(v11);
}

double sub_20BEFEBD8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a3;
  v73 = sub_20C13C4B4();
  v9 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C13C4F4();
  v72 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v70 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C13BB84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v62 - v18;
  sub_20C13B574();
  sub_20C13BB64();
  v68 = *(v14 + 8);
  v68(v19, v13);
  if (a2)
  {
    v67 = v9;
    v20 = a2;
    sub_20C13B574();
    v21 = a2;
    v22 = sub_20C13BB74();
    v23 = sub_20C13D1D4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v65 = v24;
      v66 = swift_slowAlloc();
      aBlock = v66;
      *v24 = 136315138;
      swift_getErrorValue();
      v64 = v23;
      v25 = MEMORY[0x20F2F5850](v74, v75);
      v27 = a2;
      v28 = a4;
      v29 = a5;
      v30 = v11;
      v31 = sub_20B51E694(v25, v26, &aBlock);

      v32 = v65;
      *(v65 + 1) = v31;
      v11 = v30;
      a5 = v29;
      a4 = v28;
      a2 = v27;
      _os_log_impl(&dword_20B517000, v22, v64, "Error loading media selection group: %s", v32, 0xCu);
      v33 = v66;
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x20F2F6A40](v33, -1, -1);
      MEMORY[0x20F2F6A40](v32, -1, -1);
    }

    v68(v16, v13);
    v34 = swift_allocObject();
    *(v34 + 16) = a4;
    *(v34 + 24) = a5;
    v81 = sub_20BEFF6BC;
    v82 = v34;
    aBlock = MEMORY[0x277D85DD0];
    v78 = 1107296256;
    v79 = sub_20B7B548C;
    v80 = &block_descriptor_21_2;
    v35 = _Block_copy(&aBlock);

    v36 = v70;
    sub_20C13C4D4();
    v76 = MEMORY[0x277D84F90];
    sub_20BEFF668(&qword_281103AB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
    sub_20B682EA8();
    v37 = v71;
    v38 = v73;
    sub_20C13DA94();
    MEMORY[0x20F2F4AF0](0, v36, v37, v35);
    _Block_release(v35);

    (*(v67 + 8))(v37, v38);
    goto LABEL_16;
  }

  v39 = v9;
  if (!a1)
  {
LABEL_15:
    v57 = swift_allocObject();
    *(v57 + 16) = a4;
    *(v57 + 24) = a5;
    v81 = sub_20BEFF64C;
    v82 = v57;
    aBlock = MEMORY[0x277D85DD0];
    v78 = 1107296256;
    v79 = sub_20B7B548C;
    v80 = &block_descriptor_9;
    v58 = _Block_copy(&aBlock);

    v36 = v70;
    sub_20C13C4D4();
    v76 = MEMORY[0x277D84F90];
    sub_20BEFF668(&qword_281103AB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
    sub_20B682EA8();
    v59 = v71;
    v60 = v73;
    sub_20C13DA94();
    MEMORY[0x20F2F4AF0](0, v36, v59, v58);
    _Block_release(v58);
    (*(v39 + 8))(v59, v60);
LABEL_16:
    (*(v72 + 8))(v36, v11);
    goto LABEL_17;
  }

  v40 = a5;
  v41 = a1;
  v42 = [v41 options];
  if (!v42)
  {
    sub_20B9D0970();
    sub_20C13CC74();
    v42 = sub_20C13CC54();
  }

  v63 = v11;
  v43 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B60, &unk_20C166F48);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_20C14F980;
  if (qword_27C7607D0 != -1)
  {
    swift_once();
  }

  v45 = qword_27C79AB00;
  *(v44 + 32) = qword_27C79AB00;
  type metadata accessor for AVMediaCharacteristic(0);
  v46 = v45;
  v47 = sub_20C13CC54();

  v48 = [v43 mediaSelectionOptionsFromArray:v42 withMediaCharacteristics:v47];

  sub_20B9D0970();
  v49 = sub_20C13CC74();

  if (v49 >> 62)
  {
    v50 = sub_20C13DB34();
  }

  else
  {
    v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v50)
  {

    v11 = v63;
    a5 = v40;
    goto LABEL_15;
  }

  v51 = swift_allocObject();
  v51[2] = a4;
  v51[3] = v40;
  v51[4] = v41;
  v81 = sub_20B6A4BF4;
  v82 = v51;
  aBlock = MEMORY[0x277D85DD0];
  v78 = 1107296256;
  v79 = sub_20B7B548C;
  v80 = &block_descriptor_15_1;
  v52 = _Block_copy(&aBlock);

  v53 = v41;
  v54 = v70;
  sub_20C13C4D4();
  v76 = MEMORY[0x277D84F90];
  sub_20BEFF668(&qword_281103AB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
  sub_20B682EA8();
  v55 = v71;
  v56 = v73;
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v54, v55, v52);
  _Block_release(v52);

  (*(v39 + 8))(v55, v56);
  (*(v72 + 8))(v54, v63);
LABEL_17:

  return result;
}

void sub_20BEFF568(void (*a1)(void *, uint64_t))
{
  v2 = sub_20C1346A4();
  sub_20BEFF668(&unk_27C7703F0, MEMORY[0x277D509E8], MEMORY[0x277D509F0]);
  v3 = swift_allocError();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D509E0], v2);
  a1(v3, 1);
}

uint64_t sub_20BEFF668(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20BEFF6CC(__n128 a1)
{
  v2 = *(*(*(v1 + OBJC_IVAR____TtC9SeymourUI18RootViewController_dataProvider) + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v33 = *(v2 + 16);
  if (v33)
  {

    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_32;
      }

      v34 = *(v2 + 16 * v4 + 32);
      ObjectType = swift_getObjectType();
      v7 = *(*(&v34 + 1) + 48);
      swift_unknownObjectRetain();
      v7(ObjectType, *(&v34 + 1));
      v37 = v34;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7675B0, &unk_20C15C100);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7704F8, &qword_20C1839D8);
      if (swift_dynamicCast())
      {
        break;
      }

      swift_unknownObjectRelease();
      v36 = 0;
      memset(v35, 0, sizeof(v35));
      sub_20B520158(v35, &unk_27C770500, &unk_20C1839E0);
LABEL_4:
      if (v33 == ++v4)
      {

        goto LABEL_20;
      }
    }

    sub_20B51C710(v35, v38);
    v8 = v39;
    v9 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    v10 = (*(v9 + 16))(v8, v9);
    v11 = v39;
    v12 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    v13 = (*(v12 + 8))(v11, v12);
    sub_20B583ECC(v3, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v35[0] = v5;
    v16 = sub_20B65B430(v10 & 1);
    v17 = *(v5 + 16);
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_33;
    }

    v20 = v15;
    if (*(v5 + 24) >= v19)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v5 = *&v35[0];
        if (v15)
        {
LABEL_15:
          sub_20BE15E50(v13);
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v38);
          v3 = sub_20BEFFEB4;
          goto LABEL_4;
        }
      }

      else
      {
        sub_20BA0FEE8();
        v5 = *&v35[0];
        if (v20)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      sub_20BA098F0(v19, isUniquelyReferenced_nonNull_native);
      v21 = sub_20B65B430(v10 & 1);
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_34;
      }

      v16 = v21;
      v5 = *&v35[0];
      if (v20)
      {
        goto LABEL_15;
      }
    }

    sub_20BE3A4CC(v16, v10 & 1, MEMORY[0x277D84FA0], v5);
    goto LABEL_15;
  }

  v3 = 0;
  v5 = MEMORY[0x277D84F98];
LABEL_20:
  v23 = 0;
  v24 = 1 << *(v5 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v5 + 64);
  v27 = (v24 + 63) >> 6;
  while (v26)
  {
    v28 = v23;
LABEL_28:
    v29 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v30 = *(*(v5 + 48) + (v29 | (v28 << 6)));

    sub_20B90C118(v31, v30);
  }

  while (1)
  {
    v28 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v28 >= v27)
    {

      return sub_20B583ECC(v3, 0);
    }

    v26 = *(v5 + 64 + 8 * v28);
    ++v23;
    if (v26)
    {
      v23 = v28;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_20C13E054();
  __break(1u);
  return result;
}

uint64_t sub_20BEFFAD0(void *a1, void *a2, __n128 a3)
{
  v4 = *(*(*(v3 + *a1) + *a2) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v35 = *(v4 + 16);
  if (v35)
  {

    v5 = 0;
    v6 = 0;
    v7 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_32;
      }

      v36 = *(v4 + 16 * v6 + 32);
      ObjectType = swift_getObjectType();
      v9 = *(*(&v36 + 1) + 48);
      swift_unknownObjectRetain();
      v9(ObjectType, *(&v36 + 1));
      v39 = v36;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7675B0, &unk_20C15C100);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7704F8, &qword_20C1839D8);
      if (swift_dynamicCast())
      {
        break;
      }

      swift_unknownObjectRelease();
      v38 = 0;
      memset(v37, 0, sizeof(v37));
      sub_20B520158(v37, &unk_27C770500, &unk_20C1839E0);
LABEL_4:
      if (v35 == ++v6)
      {

        goto LABEL_20;
      }
    }

    sub_20B51C710(v37, v40);
    v10 = v41;
    v11 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v12 = (*(v11 + 16))(v10, v11);
    v13 = v41;
    v14 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v15 = (*(v14 + 8))(v13, v14);
    sub_20B583ECC(v5, 0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v37[0] = v7;
    v18 = sub_20B65B430(v12 & 1);
    v19 = *(v7 + 16);
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_33;
    }

    v22 = v17;
    if (*(v7 + 24) >= v21)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v7 = *&v37[0];
        if (v17)
        {
LABEL_15:
          sub_20BE15E50(v15);
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v40);
          v5 = sub_20BEFFEB4;
          goto LABEL_4;
        }
      }

      else
      {
        sub_20BA0FEE8();
        v7 = *&v37[0];
        if (v22)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      sub_20BA098F0(v21, isUniquelyReferenced_nonNull_native);
      v23 = sub_20B65B430(v12 & 1);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_34;
      }

      v18 = v23;
      v7 = *&v37[0];
      if (v22)
      {
        goto LABEL_15;
      }
    }

    sub_20BE3A4CC(v18, v12 & 1, MEMORY[0x277D84FA0], v7);
    goto LABEL_15;
  }

  v5 = 0;
  v7 = MEMORY[0x277D84F98];
LABEL_20:
  v25 = 0;
  v26 = 1 << *(v7 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v7 + 64);
  v29 = (v26 + 63) >> 6;
  while (v28)
  {
    v30 = v25;
LABEL_28:
    v31 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v32 = *(*(v7 + 48) + (v31 | (v30 << 6)));

    sub_20B90C118(v33, v32);
  }

  while (1)
  {
    v30 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v30 >= v29)
    {

      return sub_20B583ECC(v5, 0);
    }

    v28 = *(v7 + 64 + 8 * v30);
    ++v25;
    if (v28)
    {
      v25 = v30;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_20C13E054();
  __break(1u);
  return result;
}

void sub_20BEFFEC4(void *a1, uint64_t a2, int a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v46 = a2;
  v47 = a6;
  v44 = a5;
  LODWORD(v10) = a3;
  v12 = sub_20C1333A4();
  v45 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C13B884();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a4)
    {
      if (v10)
      {
        v21 = v47;
        if (!v47)
        {
          v22 = a4;
          sub_20BF9A51C(v22, a1, v46);
          v23 = v20;
          v20 = v22;
LABEL_12:

          goto LABEL_13;
        }

LABEL_8:
        v31 = v10;
        v32 = a7;
        v23 = v21;
        v33 = [v20 viewIfLoaded];
        v34 = [v33 window];

        if (v34)
        {

          if (v31)
          {
            ObjectType = swift_getObjectType();
            v36 = *&v20[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_marketingMessageViewControllerHandler];
            v37 = *(v32 + 16);
            v38 = v36;
            v37(v36, ObjectType, v32);
            v23 = v23;
            sub_20BF9A774(v23, a1, v46);
          }

          else
          {
            v39 = *(*&v20[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI30CatalogWorkoutPageDataProvider_page);
            v40 = v46;
            sub_20C0C1FA8(a1, v46);

            sub_20BF9AD80(v23, v32, a1, v40);
          }
        }

        goto LABEL_12;
      }

      v24 = a4;
      v42 = v16;
      v25 = v24;
      v26 = a1;
      v43 = v10;
      v10 = a7;
      v27 = a1;
      v28 = v46;
      sub_20BF99674(v26, v46, 0, 0);
      v29 = v27;
      v30 = v28;
      a1 = v27;
      a7 = v10;
      sub_20BF9B198(v25, v44, v29, v30);
      sub_20C13B874();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767750, "^[\t");
      sub_20C13B834();
      *(swift_allocObject() + 16) = xmmword_20C14F980;
      sub_20C13B824();
      sub_20C13B854();

      (*(v42 + 8))(v18, v15);
      sub_20C10FB64(v14);
      LOBYTE(v10) = v43;
      sub_20B90D720(v14);

      (*(v45 + 8))(v14, v12);
    }

    v21 = v47;
    if (!v47)
    {
LABEL_13:

      return;
    }

    goto LABEL_8;
  }
}

void sub_20BF00338(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

double sub_20BF003BC(__n128 a1)
{
  sub_20BEFFAD0(&OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_dataProvider, &OBJC_IVAR____TtC9SeymourUI30CatalogWorkoutPageDataProvider_page, a1);
  sub_20BF01674();
  swift_getObjectType();
  sub_20C13AF74();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v2);

  return result;
}

void sub_20BF00540(uint64_t a1)
{
  v2 = a1;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CatalogWorkoutDetailViewController();
  objc_msgSendSuper2(&v10, sel_viewWillAppear_, v2 & 1);
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_currentNavigationBarTintColor];
  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_currentNavigationBarTintColor];
  }

  else
  {
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_standardNavigationBarTintColor];
    v3 = 0;
  }

  v5 = v3;
  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 navigationBar];

    [v8 setTintColor_];
  }

  v9 = v1[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_currentContentInsetBehavior + 16];
  if (v9 <= 0xFB)
  {
    if (v9 >> 6 > 1)
    {
      sub_20C13DC94();
      MEMORY[0x20F2F4230](0xD000000000000023, 0x800000020C199DA0);
      sub_20C13DDF4();
      sub_20C1380E4();
    }

    else
    {
      sub_20BE8F76C();
    }
  }
}

uint64_t sub_20BF007D0(char a1)
{
  v2 = v1;
  v19 = sub_20C1333A4();
  v4 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8, &unk_20C14FB80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for CatalogWorkoutDetailViewController();
  v21.receiver = v2;
  v21.super_class = v10;
  objc_msgSendSuper2(&v21, sel_viewDidAppear_, a1 & 1);
  v11 = *&v2[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_dataProvider];
  sub_20C1101DC();
  v12 = OBJC_IVAR____TtC9SeymourUI30CatalogWorkoutPageDataProvider_workoutDetail;
  swift_beginAccess();
  sub_20B52F9E8(v11 + v12, v9, &qword_27C7620C8, &unk_20C14FB80);
  v13 = sub_20C135AE4();
  v14 = (*(*(v13 - 8) + 48))(v9, 1, v13);
  sub_20B520158(v9, &qword_27C7620C8, &unk_20C14FB80);
  if (v14 == 1)
  {
    *(v11 + OBJC_IVAR____TtC9SeymourUI30CatalogWorkoutPageDataProvider_shouldPublishPageEventWhenAvailable) = 1;
  }

  else
  {
    v20 = v11;
    sub_20C10FB64(v6);
    type metadata accessor for CatalogWorkoutPageDataProvider(0);
    sub_20BF02C58(&qword_27C770540, 255, type metadata accessor for CatalogWorkoutPageDataProvider, &unk_20C190360);
    sub_20C138C54();
    (*(v4 + 8))(v6, v19);
  }

  sub_20BF02C58(&unk_27C770518, v15, type metadata accessor for CatalogWorkoutDetailViewController, &unk_20C183770);
  sub_20BF02C58(&unk_27C770530, v16, type metadata accessor for CatalogWorkoutDetailViewController, &unk_20C1836E8);
  return sub_20C139364();
}

void sub_20BF00C94(char a1)
{
  v2 = v1;
  v4 = sub_20C132E94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CatalogWorkoutDetailViewController();
  v18.receiver = v2;
  v18.super_class = v8;
  objc_msgSendSuper2(&v18, sel_viewWillDisappear_, a1 & 1);
  v17 = v2;
  sub_20C132E84();
  sub_20BF02C58(&unk_27C770518, v9, type metadata accessor for CatalogWorkoutDetailViewController, &unk_20C183770);
  sub_20C139274();
  (*(v5 + 8))(v7, v4);
  sub_20BF99F98(0, 0);
  v10 = [v2 navigationController];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 viewControllers];
    sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
    v13 = sub_20C13CC74();

    v17 = v2;
    MEMORY[0x28223BE20](v14);
    *(&v16 - 2) = &v17;
    LOBYTE(v12) = sub_20B79AEEC(sub_20B5978BC, (&v16 - 4), v13);

    if ((v12 & 1) == 0)
    {
      v17 = v2;
      sub_20BF02C58(&qword_27C770528, v15, type metadata accessor for CatalogWorkoutDetailViewController, &unk_20C183730);
      sub_20C138C64();
    }
  }
}

void sub_20BF00F54(uint64_t a1)
{
  v37[3] = type metadata accessor for CatalogWorkoutDetailViewController();
  v37[0] = v1;
  type metadata accessor for MoreOptionsButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = v1;
  v4 = [ObjCClassFromMetadata buttonWithType_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = &v4[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_appearance];
  [v4 setTintColor_];
  v6 = *(v5 + 10);
  v7 = *&v4[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_scrollEdgeTintColor];
  *&v4[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_scrollEdgeTintColor] = v6;
  v8 = v6;

  *&v4[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_behaviors] = MEMORY[0x277D84FA0];

  sub_20BCC01CC(v4[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_isBeyondScrollBoundary], 0);
  sub_20B52F9E8(v37, v35, &unk_27C768A00, &qword_20C152F90);
  v9 = v36;
  if (v36)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v35, v36);
    v11 = *(v9 - 8);
    v12 = MEMORY[0x28223BE20](v10);
    v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = sub_20C13DFD4();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {
    v15 = 0;
  }

  [v4 addTarget:v15 action:sel_moreOptionsButtonTapped_ forControlEvents:0x2000];
  swift_unknownObjectRelease();
  sub_20B520158(v37, &unk_27C768A00, &qword_20C152F90);
  v16 = type metadata accessor for DynamicScrollObservingBarButtonItem();
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR____TtC9SeymourUI35DynamicScrollObservingBarButtonItem_observerView];
  *v18 = v4;
  *(v18 + 1) = &off_2822DD228;
  v34.receiver = v17;
  v34.super_class = v16;
  v19 = v4;
  v20 = objc_msgSendSuper2(&v34, sel_init);
  [v20 setCustomView_];

  v21 = *&v3[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_upNextQueueButton];
  v22 = objc_allocWithZone(v16);
  v23 = &v22[OBJC_IVAR____TtC9SeymourUI35DynamicScrollObservingBarButtonItem_observerView];
  *v23 = v21;
  *(v23 + 1) = &off_2822C8C68;
  v33.receiver = v22;
  v33.super_class = v16;
  v24 = v21;
  v25 = objc_msgSendSuper2(&v33, sel_init);
  [v25 setCustomView_];

  if (v3[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_platform] == 1)
  {
    v26 = [v3 navigationItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_20C150040;
    *(v29 + 32) = [objc_opt_self() fixedSpaceItemOfWidth_];
    *(v29 + 40) = v20;
    v28 = (v29 + 48);
    goto LABEL_8;
  }

  if (!v3[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_platform])
  {
    v26 = [v3 navigationItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_20C151490;
    *(v27 + 32) = v20;
    v28 = (v27 + 40);
LABEL_8:
    *v28 = v25;
    sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
    v30 = v20;
    v31 = v25;
    v32 = sub_20C13CC54();

    [v26 setRightBarButtonItems_];
  }
}

double sub_20BF013B4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong navigationItem];

    v5 = [v4 rightBarButtonItems];
    if (v5)
    {
      sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
      v6 = sub_20C13CC74();

      if (v6 >> 62)
      {
LABEL_21:
        v7 = sub_20C13DB34();
        if (v7)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v7)
        {
LABEL_5:
          v8 = 0;
          do
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x20F2F5430](v8, v6);
            }

            else
            {
              if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_20;
              }

              v10 = *(v6 + 8 * v8 + 32);
            }

            v11 = v10;
            v12 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              __break(1u);
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }

            v13 = [v10 customView];
            if (v13)
            {
              v9 = v13;
              type metadata accessor for MoreOptionsButton();
              if (swift_dynamicCastClass())
              {

                swift_beginAccess();
                v14 = swift_unknownObjectWeakLoadStrong();
                if (v14)
                {
                  v15 = v14;
                  v16 = v11;
                  sub_20C03AE14(v11, 0);
                }

                else
                {
                }

                return result;
              }
            }

            else
            {
              v9 = v11;
            }

            ++v8;
          }

          while (v12 != v7);
        }
      }
    }
  }

  return result;
}

double sub_20BF01674()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_networkEvaluator), *(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_networkEvaluator + 24));
  v4 = sub_20C13A884();
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_upNextQueueButton);
  if (v4)
  {
    v5[OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_prefersVisible] = 0;

    [v5 setHidden_];
  }

  else
  {
    v5[OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_prefersVisible] = 1;
    [v5 setHidden_];
    v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_upNextQueueButtonPresenter);
    v8 = sub_20C13CDF4();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;

    sub_20B6383D0(0, 0, v3, &unk_20C181438, v9);
  }

  return result;
}

id sub_20BF01860(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CatalogWorkoutDetailViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_20BF01A64(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_20BF01674();
  }
}

void sub_20BF01ADC(char a1)
{
  if (v1[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_isBeyondScrollBoundary] != (a1 & 1))
  {
    v1[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_isBeyondScrollBoundary] = a1 & 1;
    if (a1)
    {
      v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    }

    else
    {
      v2 = *&v1[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_standardNavigationBarTintColor];
    }

    v3 = *&v1[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_currentNavigationBarTintColor];
    *&v1[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_currentNavigationBarTintColor] = v2;
    v4 = v2;

    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = v4;
    v10[4] = sub_20B7C9A90;
    v10[5] = v6;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_20B7B548C;
    v10[3] = &block_descriptor_150;
    v7 = _Block_copy(v10);
    v8 = v4;
    v9 = v1;

    [v5 animateWithDuration:v7 animations:0.2];
    _Block_release(v7);
  }
}

uint64_t sub_20BF01C8C(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_currentContentInsetBehavior;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  return result;
}

double sub_20BF01E44()
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

double sub_20BF01E8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BF01F44(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_20C139364();
}

uint64_t sub_20BF01FA8(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_20C139374();
}

char *sub_20BF02044(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_20C1333A4();
  MEMORY[0x28223BE20](v12 - 8);
  v67 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C13C654();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72[3] = a5;
  v72[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v72);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  v19 = &a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_currentContentInsetBehavior];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = -4;
  a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_isTransitioningContentInset] = 0;
  a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_visibility] = 1;
  v20 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_controllerDisplayCoordinator;
  type metadata accessor for MarketingControllerDisplayCoordinator();
  v21 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710C0, &unk_20C180F80);
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  *(v22 + 16) = MEMORY[0x277D84F98];
  *(v21 + 16) = v22;
  *&a4[v20] = v21;
  v23 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_dynamicOfferCoordinator;
  *&a4[v23] = [objc_allocWithZone(type metadata accessor for MarketingDynamicOfferCoordinator()) init];
  v24 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_purchaseCoordinator;
  *&a4[v24] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseCoordinator()) init];
  v25 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_purchaseHandler;
  *&a4[v25] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseHandler()) init];
  *&a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_resignActiveObserver] = 0;
  v26 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_webUserInterfaceCoordinator;
  *&a4[v26] = [objc_allocWithZone(type metadata accessor for MarketingWebUserInterfaceCoordinator()) init];
  v27 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_standardNavigationBarTintColor;
  *&a4[v27] = [objc_opt_self() whiteColor];
  *&a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_currentNavigationBarTintColor] = 0;
  a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_isBeyondScrollBoundary] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00, &unk_20C14FD60);
  sub_20C133AA4();
  sub_20B51C710(&v69, &a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_accountProvider]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080, &unk_20C14F930);
  sub_20C133AA4();
  *&a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_bag] = v69;
  *&a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_dependencies] = a1;
  *&a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_dataProvider] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_eventHub] = v69;
  sub_20C13C734();

  v28 = sub_20C13C724();
  sub_20C13C644();
  v29 = type metadata accessor for MarketingOverlayImpressionsTracker(0);
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D221C0];
  *(v30 + 16) = v28;
  *(v30 + 24) = v31;
  (*(v15 + 32))(v30 + OBJC_IVAR____TtC9SeymourUI34MarketingOverlayImpressionsTracker_context, v17, v14);
  v70 = v29;
  v71 = sub_20BF02C58(&qword_27C76FC30, 255, type metadata accessor for MarketingOverlayImpressionsTracker, &unk_20C161718);
  *&v69 = v30;
  type metadata accessor for MarketingHostedControllerCoordinator();
  v32 = swift_allocObject();
  v33 = __swift_mutable_project_boxed_opaque_existential_1(&v69, v29);
  v34 = MEMORY[0x28223BE20](v33);
  v36 = (&v66 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v37 + 16))(v36, v34);
  v38 = sub_20BE8C464(a1, *v36, v32);

  __swift_destroy_boxed_opaque_existential_1(&v69);
  *&a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_marketingHostedContentCoordinator] = v38;
  sub_20B51CC64(v38 + 40, &v69);
  v39 = v70;
  v40 = __swift_project_boxed_opaque_existential_1(&v69, v70);

  v41 = v67;
  v42 = sub_20C10FB64(v67);
  v43 = MEMORY[0x28223BE20](v42);
  v45 = (&v66 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v46 + 16))(v45, v40, v39, v43);
  v47 = sub_20BE8C638(a1, v38, *v45, v41);

  __swift_destroy_boxed_opaque_existential_1(&v69);
  *&a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_marketingMessageViewControllerHandler] = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762090, &unk_20C14F940);
  sub_20C133AA4();
  sub_20B51C710(&v69, &a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_marketingMetricFieldsProvider]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769450, &unk_20C1839F0);
  sub_20C133AA4();
  sub_20B51C710(&v69, &a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_marketingSubscriptionStatusProvider]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E40, &unk_20C16DEE0);
  sub_20C133AA4();
  sub_20B51C710(&v69, &a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_networkEvaluator]);
  sub_20B51CC64(v72, &a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_pageNavigator]);
  sub_20C133AA4();
  v48 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_platform;
  a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_platform] = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(&v69, &a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_serviceSubscriptionCache]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(&v69, &a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_storefrontLocalizer]);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_subscriptionToken] = sub_20C13A914();
  v49 = &a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_contentInsetInitialBehavior];
  v50 = 0x4030000000000000;
  if (a4[v48] == 1)
  {
    v51 = 0;
  }

  else
  {
    v50 = 0;
    v51 = 3;
  }

  *v49 = v50;
  v49[8] = v51;
  type metadata accessor for UpNextQueueButtonPresenter();
  swift_allocObject();

  *&a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_upNextQueueButtonPresenter] = sub_20B887320(v52);
  v53 = sub_20BE8C450(&unk_28228D548);

  v55 = sub_20BAB9360(v54, v53, 0);

  *&a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_upNextQueueButton] = v55;
  v56 = type metadata accessor for CatalogWorkoutDetailViewController();
  v68.receiver = a4;
  v68.super_class = v56;
  v57 = objc_msgSendSuper2(&v68, sel_initWithNibName_bundle_, 0, 0);
  *(a2 + 24) = &off_2822F54D8;
  swift_unknownObjectWeakAssign();
  v58 = *&v57[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_marketingHostedContentCoordinator];
  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = *(v58 + 136);
  v61 = *(v58 + 144);
  *(v58 + 136) = sub_20BF02BE4;
  *(v58 + 144) = v59;
  v62 = v57;

  sub_20B583ECC(v60, v61);

  v63 = &v62[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_eventHub];
  *(*&v62[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_purchaseHandler] + OBJC_IVAR____TtC9SeymourUI24MarketingPurchaseHandler_eventHub + 8) = *&v62[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_eventHub + 8];
  swift_unknownObjectWeakAssign();
  v64 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_purchaseCoordinator;
  swift_unknownObjectWeakAssign();
  *(*&v62[v64] + OBJC_IVAR____TtC9SeymourUI28MarketingPurchaseCoordinator_eventHub + 8) = *(v63 + 1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  *(*&v62[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_dynamicOfferCoordinator] + OBJC_IVAR____TtC9SeymourUI32MarketingDynamicOfferCoordinator_eventHub + 8) = *(v63 + 1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_getObjectType();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20B86FA88();
  swift_unknownObjectRetain();

  sub_20C13A784();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v69);
  swift_getObjectType();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  sub_20B86FB30();
  sub_20C13A784();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v69);
  __swift_destroy_boxed_opaque_existential_1(v72);
  return v62;
}

uint64_t sub_20BF02C58(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_20BF02CA0()
{
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_currentContentInsetBehavior;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = -4;
  *(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_isTransitioningContentInset) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_visibility) = 1;
  v2 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_controllerDisplayCoordinator;
  type metadata accessor for MarketingControllerDisplayCoordinator();
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710C0, &unk_20C180F80);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = MEMORY[0x277D84F98];
  *(v3 + 16) = v4;
  *(v0 + v2) = v3;
  v5 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_dynamicOfferCoordinator;
  *(v0 + v5) = [objc_allocWithZone(type metadata accessor for MarketingDynamicOfferCoordinator()) init];
  v6 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_purchaseCoordinator;
  *(v0 + v6) = [objc_allocWithZone(type metadata accessor for MarketingPurchaseCoordinator()) init];
  v7 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_purchaseHandler;
  *(v0 + v7) = [objc_allocWithZone(type metadata accessor for MarketingPurchaseHandler()) init];
  *(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_resignActiveObserver) = 0;
  v8 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_webUserInterfaceCoordinator;
  *(v0 + v8) = [objc_allocWithZone(type metadata accessor for MarketingWebUserInterfaceCoordinator()) init];
  v9 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_standardNavigationBarTintColor;
  *(v0 + v9) = [objc_opt_self() whiteColor];
  *(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_currentNavigationBarTintColor) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_isBeyondScrollBoundary) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t RemoteBrowsingAuthenticationInterceptor.__allocating_init(dependencies:)(uint64_t a1)
{
  v2 = swift_allocObject();
  RemoteBrowsingAuthenticationInterceptor.init(dependencies:)(a1);
  return v2;
}

uint64_t RemoteBrowsingAuthenticationInterceptor.init(dependencies:)(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC9SeymourUI39RemoteBrowsingAuthenticationInterceptor_state;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80, &qword_20C183A00);
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  type metadata accessor for RemoteBrowsingDiscoveryPresenter(0);
  swift_allocObject();

  *(v2 + 24) = sub_20BAF9E58(v5, 2);
  type metadata accessor for RemoteBrowsingGuestPairingPresenter();
  swift_allocObject();

  *(v2 + 32) = sub_20B8F2124(v6);
  sub_20C133AA4();
  *(v2 + 16) = v32[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767920, &unk_20C1765F0);
  sub_20C133AA4();
  sub_20B51C710(v32, v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763CE8, &qword_20C16D960);
  sub_20C133AA4();
  sub_20B51C710(v32, v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();

  sub_20B51C710(v32, v2 + 120);
  v7 = *(v2 + 32);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = *(v7 + 208);
  v10 = *(v7 + 216);
  *(v7 + 208) = sub_20BF098C4;
  *(v7 + 216) = v8;

  sub_20B583ECC(v9, v10);

  v11 = *(v2 + 24);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = (v11 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onParticipantConnected);
  v14 = *(v11 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onParticipantConnected);
  v15 = *(v11 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onParticipantConnected + 8);
  *v13 = sub_20BF03338;
  v13[1] = v12;

  sub_20B583ECC(v14, v15);

  v16 = *(v2 + 24);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = (v16 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onNewGuestFlowSelected);
  v19 = *(v16 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onNewGuestFlowSelected);
  v20 = *(v16 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onNewGuestFlowSelected + 8);
  *v18 = sub_20BF03354;
  v18[1] = v17;

  sub_20B583ECC(v19, v20);

  v21 = *(v2 + 24);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = (v21 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onDiscoveryTimeout);
  v24 = *(v21 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onDiscoveryTimeout);
  v25 = *(v21 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onDiscoveryTimeout + 8);
  *v23 = sub_20BF098C0;
  v23[1] = v22;

  sub_20B583ECC(v24, v25);

  v26 = *(v2 + 24);
  v27 = swift_allocObject();
  swift_weakInit();

  v28 = (v26 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onSkipSelected);
  v29 = *(v26 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onSkipSelected);
  v30 = *(v26 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onSkipSelected + 8);
  *v28 = sub_20BF033E4;
  v28[1] = v27;

  sub_20B583ECC(v29, v30);

  return v2;
}

double sub_20BF032C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BF037DC(a1, a2);
  }

  return result;
}

double sub_20BF03384(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a2();
  }

  return result;
}

uint64_t sub_20BF03414()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250, &unk_20C155D00);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - v3;
  v5 = type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for NavigationRequest(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C13BB84();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  (*(v15 + 8))(v17, v14);
  v18 = OBJC_IVAR____TtC9SeymourUI39RemoteBrowsingAuthenticationInterceptor_state;
  swift_beginAccess();
  sub_20BF08794(v1 + v18, v10, type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80, &qword_20C183A00);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v10, 1, v19) == 1)
  {
    v21 = type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State;
    v22 = v10;
  }

  else
  {
    swift_unknownObjectRelease();
    v25 = *&v10[*(v19 + 64)];
    sub_20B75B150(v10, v13);
    (*(v20 + 56))(v7, 1, 1, v19);
    swift_beginAccess();
    sub_20BF0885C(v7, v1 + v18);
    swift_endAccess();
    sub_20BF08794(v13, v4, type metadata accessor for NavigationRequest);
    swift_storeEnumTagMultiPayload();
    v25(v4);

    sub_20B520158(v4, &unk_27C76D250, &unk_20C155D00);
    v21 = type metadata accessor for NavigationRequest;
    v22 = v13;
  }

  return sub_20BF087FC(v22, v21);
}

uint64_t sub_20BF037DC(uint64_t a1, uint64_t a2)
{
  v205 = a2;
  v196 = a1;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250, &unk_20C155D00);
  MEMORY[0x28223BE20](v190);
  v191 = &v157 - v2;
  v3 = sub_20C136084();
  MEMORY[0x28223BE20](v3 - 8);
  v187 = &v157 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v184 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v183 = &v157 - v5;
  v6 = sub_20C132E94();
  MEMORY[0x28223BE20](v6 - 8);
  v182 = &v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_20C1376F4();
  v188 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v186 = &v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120, &unk_20C152470);
  MEMORY[0x28223BE20](v173);
  v172 = &v157 - v9;
  v176 = sub_20C135334();
  v175 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v169 = &v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v166 = &v157 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762370, &qword_20C153BB0);
  MEMORY[0x28223BE20](v13 - 8);
  v170 = &v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v167 = &v157 - v16;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770578, &qword_20C183B18);
  MEMORY[0x28223BE20](v177);
  v171 = &v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v168 = &v157 - v19;
  v181 = sub_20C136C64();
  v198 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v178 = &v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v195 = &v157 - v22;
  MEMORY[0x28223BE20](v23);
  v192 = &v157 - v24;
  MEMORY[0x28223BE20](v25);
  v174 = &v157 - v26;
  v27 = sub_20C135174();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v157 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State(0);
  MEMORY[0x28223BE20](v31 - 8);
  v180 = &v157 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v157 - v34;
  v36 = type metadata accessor for NavigationRequest(0);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v157 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_20C13BB84();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v197 = &v157 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v193 = &v157 - v43;
  MEMORY[0x28223BE20](v44);
  v194 = &v157 - v45;
  MEMORY[0x28223BE20](v46);
  v48 = &v157 - v47;
  MEMORY[0x28223BE20](v49);
  v51 = &v157 - v50;
  MEMORY[0x28223BE20](v52);
  v54 = &v157 - v53;
  sub_20C13B484();
  sub_20C13BB64();
  v55 = *(v40 + 8);
  v203 = v40 + 8;
  v204 = v39;
  v202 = v55;
  v55(v54, v39);
  v56 = v201;
  v57 = OBJC_IVAR____TtC9SeymourUI39RemoteBrowsingAuthenticationInterceptor_state;
  swift_beginAccess();
  sub_20BF08794(v56 + v57, v35, type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80, &qword_20C183A00);
  v179 = *(v58 - 8);
  if ((*(v179 + 48))(v35, 1, v58) == 1)
  {
    v59 = type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State;
    v60 = v35;
  }

  else
  {
    v163 = v57;
    swift_unknownObjectRelease();
    v161 = v58;
    v61 = &v35[*(v58 + 64)];
    v63 = *v61;
    v62 = *(v61 + 1);
    v160 = v63;
    v162 = v62;
    v165 = v38;
    sub_20B75B150(v35, v38);
    sub_20C13B484();
    v64 = *(v28 + 16);
    v159 = v28 + 16;
    v158 = v64;
    v64(v30, v196, v27);
    v65 = sub_20C13BB74();
    v66 = sub_20C13D1F4();
    v67 = os_log_type_enabled(v65, v66);
    v68 = v27;
    v164 = v27;
    if (v67)
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v206 = v70;
      *v69 = 136446210;
      sub_20BF08E74(&unk_27C76B9B0, MEMORY[0x277D515D0], MEMORY[0x277D515E8]);
      v71 = sub_20C13DFA4();
      v72 = v68;
      v74 = v73;
      (*(v28 + 8))(v30, v72);
      v75 = sub_20B51E694(v71, v74, &v206);

      *(v69 + 4) = v75;
      _os_log_impl(&dword_20B517000, v65, v66, "Participant connected: %{public}s", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v70);
      MEMORY[0x20F2F6A40](v70, -1, -1);
      MEMORY[0x20F2F6A40](v69, -1, -1);
    }

    else
    {

      (*(v28 + 8))(v30, v27);
    }

    v202(v51, v204);
    sub_20C13B484();
    v76 = v198;
    v77 = v174;
    v78 = v181;
    v199 = *(v198 + 16);
    v200 = v198 + 16;
    v199(v174, v205, v181);
    v79 = sub_20C13BB74();
    v80 = sub_20C13D1F4();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v206 = v82;
      *v81 = 136446210;
      sub_20BF08E74(&qword_27C770580, MEMORY[0x277D52F00], MEMORY[0x277D52F08]);
      v83 = sub_20C13DFA4();
      v84 = v77;
      v86 = v85;
      v174 = *(v76 + 8);
      (v174)(v84, v78);
      v87 = sub_20B51E694(v83, v86, &v206);

      *(v81 + 4) = v87;
      _os_log_impl(&dword_20B517000, v79, v80, "%{public}s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v82);
      MEMORY[0x20F2F6A40](v82, -1, -1);
      MEMORY[0x20F2F6A40](v81, -1, -1);
    }

    else
    {

      v174 = *(v76 + 8);
      (v174)(v77, v78);
    }

    v202(v48, v204);
    v88 = v197;
    v89 = v192;
    v90 = v194;
    sub_20C13B484();
    v199(v89, v205, v78);
    v91 = sub_20C13BB74();
    v92 = sub_20C13D1F4();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v206 = v94;
      *v93 = 136315138;
      v95 = v166;
      sub_20C136C24();
      v96 = v167;
      sub_20C135314();
      v97 = v96;
      (*(v175 + 8))(v95, v176);
      v98 = sub_20C135D54();
      v99 = *(v98 - 8);
      if ((*(v99 + 48))(v97, 1, v98) == 1)
      {
        sub_20B520158(v97, &unk_27C762370, &qword_20C153BB0);
        v100 = 1;
        v101 = v168;
      }

      else
      {
        v101 = v168;
        sub_20C135D44();
        v89 = v192;
        (*(v99 + 8))(v97, v98);
        v100 = 0;
      }

      v103 = sub_20C1369B4();
      (*(*(v103 - 8) + 56))(v101, v100, 1, v103);
      v104 = sub_20C13D8F4();
      v106 = v105;
      sub_20B520158(v101, &qword_27C770578, &qword_20C183B18);
      v102 = v174;
      (v174)(v89, v78);
      v107 = sub_20B51E694(v104, v106, &v206);

      *(v93 + 4) = v107;
      _os_log_impl(&dword_20B517000, v91, v92, "Subscriber Account: %s", v93, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v94);
      MEMORY[0x20F2F6A40](v94, -1, -1);
      MEMORY[0x20F2F6A40](v93, -1, -1);

      v202(v194, v204);
      v88 = v197;
    }

    else
    {

      v102 = v174;
      (v174)(v89, v78);
      v202(v90, v204);
    }

    v108 = v193;
    sub_20C13B484();
    v109 = v195;
    v199(v195, v205, v78);
    v110 = sub_20C13BB74();
    v111 = sub_20C13D1F4();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v194 = swift_slowAlloc();
      v206 = v194;
      *v112 = 136315138;
      v113 = v169;
      sub_20C136C24();
      v114 = v170;
      sub_20C135304();
      (*(v175 + 8))(v113, v176);
      v115 = sub_20C135D54();
      v116 = *(v115 - 8);
      if ((*(v116 + 48))(v114, 1, v115) == 1)
      {
        sub_20B520158(v114, &unk_27C762370, &qword_20C153BB0);
        v117 = 1;
        v118 = v171;
        v119 = v102;
        v120 = v195;
      }

      else
      {
        v121 = v171;
        sub_20C135D44();
        v118 = v121;
        v120 = v195;
        v122 = v114;
        v119 = v174;
        v108 = v193;
        (*(v116 + 8))(v122, v115);
        v117 = 0;
      }

      v123 = sub_20C1369B4();
      (*(*(v123 - 8) + 56))(v118, v117, 1, v123);
      v124 = v118;
      v125 = sub_20C13D8F4();
      v127 = v126;
      sub_20B520158(v124, &qword_27C770578, &qword_20C183B18);
      v119(v120, v78);
      v128 = sub_20B51E694(v125, v127, &v206);

      *(v112 + 4) = v128;
      _os_log_impl(&dword_20B517000, v110, v111, "Apple Account: %s", v112, 0xCu);
      v129 = v194;
      __swift_destroy_boxed_opaque_existential_1(v194);
      MEMORY[0x20F2F6A40](v129, -1, -1);
      MEMORY[0x20F2F6A40](v112, -1, -1);

      v202(v108, v204);
      v88 = v197;
      v102 = v119;
    }

    else
    {

      v102(v109, v78);
      v202(v108, v204);
    }

    sub_20C13B484();
    v130 = v178;
    v199(v178, v205, v78);
    v131 = sub_20C13BB74();
    v132 = sub_20C13D1F4();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v206 = v134;
      *v133 = 136315138;
      v135 = v172;
      sub_20C1369F4();
      v198 = sub_20C13D8F4();
      v136 = v102;
      v138 = v137;
      sub_20B520158(v135, &unk_27C765120, &unk_20C152470);
      v136(v130, v78);
      v139 = sub_20B51E694(v198, v138, &v206);

      *(v133 + 4) = v139;
      _os_log_impl(&dword_20B517000, v131, v132, "Rings: %s", v133, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v134);
      MEMORY[0x20F2F6A40](v134, -1, -1);
      MEMORY[0x20F2F6A40](v133, -1, -1);

      v140 = v197;
    }

    else
    {

      v102(v130, v78);
      v140 = v88;
    }

    v202(v140, v204);
    v141 = v196;
    v142 = v78;
    sub_20C135104();
    sub_20C132E84();
    v143 = v186;
    sub_20C1376E4();
    v144 = v201;
    __swift_project_boxed_opaque_existential_1((v201 + 40), *(v201 + 64));
    v145 = v183;
    sub_20C1399C4();
    v146 = v185;
    v147 = sub_20C137CB4();
    v148 = swift_allocObject();
    *(v148 + 16) = 0;
    *(v148 + 24) = 0;
    v147(sub_20B5DF6DC, v148);

    (*(v184 + 8))(v145, v146);
    __swift_project_boxed_opaque_existential_1((v144 + 80), *(v144 + 104));
    v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766A10, &qword_20C15E0D0);
    v150 = *(v149 + 48);
    v151 = v187;
    v158(v187, v141, v164);
    v199((v151 + v150), v205, v142);
    (*(*(v149 - 8) + 56))(v151, 0, 1, v149);
    sub_20C13B1A4();
    sub_20BF087FC(v151, MEMORY[0x277D525B8]);
    v152 = v180;
    (*(v179 + 56))(v180, 1, 1, v161);
    v153 = v163;
    swift_beginAccess();
    sub_20BF0885C(v152, v144 + v153);
    swift_endAccess();
    v154 = v165;
    v155 = v191;
    sub_20BF08794(v165, v191, type metadata accessor for NavigationRequest);
    swift_storeEnumTagMultiPayload();
    v160(v155);

    sub_20B520158(v155, &unk_27C76D250, &unk_20C155D00);
    (*(v188 + 8))(v143, v189);
    v59 = type metadata accessor for NavigationRequest;
    v60 = v154;
  }

  return sub_20BF087FC(v60, v59);
}

uint64_t sub_20BF04ED8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - v4;
  v6 = type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  (*(v10 + 8))(v12, v9);
  v13 = OBJC_IVAR____TtC9SeymourUI39RemoteBrowsingAuthenticationInterceptor_state;
  swift_beginAccess();
  sub_20BF08794(v1 + v13, v8, type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80, &qword_20C183A00);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    return sub_20BF087FC(v8, type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State);
  }

  v16 = *&v8[*(v14 + 48) + 8];

  sub_20BF087FC(v8, type metadata accessor for NavigationRequest);
  v17 = objc_allocWithZone(type metadata accessor for RemoteBrowsingDiscoveryViewController());

  v19 = sub_20B7A3E04(v18);
  ObjectType = swift_getObjectType();
  (*(v16 + 8))(v19, 1, ObjectType, v16);
  v21 = sub_20C137CB4();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  v21(sub_20B5DF6DC, v22);
  swift_unknownObjectRelease();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_20BF05278()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - v4;
  v6 = type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  (*(v10 + 8))(v12, v9);
  v13 = OBJC_IVAR____TtC9SeymourUI39RemoteBrowsingAuthenticationInterceptor_state;
  swift_beginAccess();
  sub_20BF08794(v1 + v13, v8, type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80, &qword_20C183A00);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    return sub_20BF087FC(v8, type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State);
  }

  v16 = *&v8[*(v14 + 48) + 8];

  sub_20BF087FC(v8, type metadata accessor for NavigationRequest);
  v17 = objc_allocWithZone(type metadata accessor for RemoteBrowsingGuestPairingViewController());

  v19 = sub_20BF14040(v18);

  ObjectType = swift_getObjectType();
  (*(v16 + 8))(v19, 1, ObjectType, v16);
  v21 = sub_20C137CB4();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  v21(sub_20B52347C, v22);
  swift_unknownObjectRelease();

  return (*(v3 + 8))(v5, v2);
}

double sub_20BF0561C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v106 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764508, &unk_20C183B00);
  v104 = *(v3 - 8);
  v105 = v3;
  v103 = *(v104 + 64);
  MEMORY[0x28223BE20](v3);
  v102 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v101 = &v97 - v6;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230, &unk_20C14FD50);
  v7 = *(v111 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v111);
  MEMORY[0x28223BE20](v9);
  v11 = &v97 - v10;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v119 = *(v114 - 8);
  v112 = *(v119 + 64);
  MEMORY[0x28223BE20](v114);
  v116 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v113 = &v97 - v14;
  MEMORY[0x28223BE20](v15);
  v117 = &v97 - v16;
  MEMORY[0x28223BE20](v17);
  v118 = &v97 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v97 - v20;
  v22 = sub_20C13BB84();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  v115 = 0x800000020C1B6B00;
  sub_20C13BB64();
  (*(v23 + 8))(v25, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390, &unk_20C15EC90);
  v26 = swift_allocBox();
  v28 = v27;
  v29 = sub_20C135734();
  (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770570, &qword_20C183B10);
  v108 = swift_allocBox();
  v31 = v30;
  v32 = sub_20C1376F4();
  (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
  __swift_project_boxed_opaque_existential_1(v2 + 10, v2[13]);
  sub_20C13B184();
  v33 = sub_20C135174();
  v100 = (*(*(v33 - 8) + 48))(v21, 1, v33) == 1;
  sub_20B520158(v21, &unk_27C76BC00, &unk_20C1500B0);
  __swift_project_boxed_opaque_existential_1(v2 + 15, v2[18]);
  v34 = v11;
  sub_20C1392E4();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_20BF08D0C;
  *(v35 + 24) = v26;
  v99 = v26;
  v36 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v111;
  (*(v7 + 16))(v36, v34, v111);
  v38 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v39 = (v8 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = v40 + v38;
  v42 = v37;
  (*(v7 + 32))(v41, v36, v37);
  v43 = (v40 + v39);
  *v43 = sub_20B5D9E70;
  v43[1] = v35;

  v44 = v117;
  sub_20C137C94();
  (*(v7 + 8))(v34, v42);
  v45 = swift_allocObject();
  v45[2] = 0xD000000000000037;
  v45[3] = v115;
  v45[4] = 134;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_20B5DF5EC;
  *(v46 + 24) = v45;
  v47 = v119;
  v48 = *(v119 + 16);
  v97 = v119 + 16;
  v98 = v48;
  v49 = v113;
  v50 = v44;
  v51 = v44;
  v52 = v114;
  v48(v113, v50, v114);
  v53 = *(v47 + 80);
  v54 = v47;
  v110 = (v53 + 16) & ~v53;
  v55 = (v112 + v110 + 7) & 0xFFFFFFFFFFFFFFF8;
  v107 = v55;
  v56 = swift_allocObject();
  v57 = *(v54 + 32);
  v109 = v54 + 32;
  v111 = v57;
  (v57)(v56 + ((v53 + 16) & ~v53), v49, v52);
  v58 = (v56 + v55);
  *v58 = sub_20B5DF4B0;
  v58[1] = v46;
  sub_20C137C94();
  v59 = *(v54 + 8);
  v119 = v54 + 8;
  v112 = v59;
  v59(v51, v52);
  __swift_project_boxed_opaque_existential_1(v2 + 5, v2[8]);
  v60 = v101;
  sub_20C1399A4();
  v61 = swift_allocObject();
  v62 = v108;
  *(v61 + 16) = sub_20BF08D74;
  *(v61 + 24) = v62;
  v64 = v104;
  v63 = v105;
  v65 = v102;
  (*(v104 + 16))(v102, v60, v105);
  v66 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v67 = (v103 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  (*(v64 + 32))(v68 + v66, v65, v63);
  v69 = (v68 + v67);
  *v69 = sub_20BF08DB4;
  v69[1] = v61;

  v70 = v113;
  sub_20C137C94();
  (*(v64 + 8))(v60, v63);
  v71 = swift_allocObject();
  v71[2] = 0xD000000000000037;
  v71[3] = v115;
  v71[4] = 138;
  v72 = swift_allocObject();
  *(v72 + 16) = sub_20B5DF5EC;
  *(v72 + 24) = v71;
  v73 = v116;
  v74 = v114;
  v75 = v98;
  v98(v116, v70, v114);
  v76 = v107;
  v77 = swift_allocObject();
  (v111)(v77 + v110, v73, v74);
  v78 = (v77 + v76);
  *v78 = sub_20B5DF4B0;
  v78[1] = v72;
  v79 = v117;
  sub_20C137C94();
  v80 = v70;
  v81 = v119;
  v112(v70, v74);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368, &unk_20C14FD80);
  v82 = *(v81 + 64);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_20C14F320;
  v84 = v83 + ((v53 + 32) & ~v53);
  v75(v84, v118, v74);
  v75(v84 + v82, v79, v74);
  v85 = v75;
  sub_20B5E2E18();
  v86 = sub_20C13D374();
  sub_20C13A7C4();
  sub_20C137C74();

  v87 = swift_allocObject();
  v88 = v108;
  *(v87 + 16) = v99;
  *(v87 + 24) = v88;
  *(v87 + 32) = v100;
  v89 = swift_allocObject();
  *(v89 + 16) = sub_20BF08DE4;
  *(v89 + 24) = v87;
  v90 = swift_allocObject();
  *(v90 + 16) = sub_20B622D08;
  *(v90 + 24) = v89;
  v91 = v116;
  v85(v116, v80, v74);
  v92 = v107;
  v93 = swift_allocObject();
  (v111)(v93 + v110, v91, v74);
  v94 = (v93 + v92);
  *v94 = sub_20B66A8B4;
  v94[1] = v90;

  sub_20C137C94();
  v95 = v112;
  v112(v80, v74);
  v95(v117, v74);
  v95(v118, v74);

  return result;
}

uint64_t sub_20BF06268(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = swift_projectBox();
  v13 = a5(0);
  v14 = *(v13 - 8);
  (*(v14 + 16))(v11, a1, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  swift_beginAccess();
  return sub_20B5DF2D4(v11, v12, a3, a4);
}

uint64_t sub_20BF063B0(uint64_t a1, uint64_t a2, int a3)
{
  v21 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770570, &qword_20C183B10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_20C132E94();
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C135734();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_projectBox();
  v14 = swift_projectBox();
  swift_beginAccess();
  if ((*(v10 + 48))(v13, 1, v9))
  {
    v15 = 0;
  }

  else
  {
    (*(v10 + 16))(v12, v13, v9);
    sub_20C132E84();
    v15 = sub_20C135704();
    (*(v20 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }

  swift_beginAccess();
  sub_20BF08E04(v14, v5);
  v16 = sub_20C1376F4();
  v17 = (*(*(v16 - 8) + 48))(v5, 1, v16);
  result = sub_20B520158(v5, &qword_27C770570, &qword_20C183B10);
  if (v17 != 1)
  {
    if ((v21 & 1) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (v21 & v15)
  {
LABEL_8:
    sub_20B5D9BA8();
    swift_allocError();
    *v19 = 0;
    return swift_willThrow();
  }

  return result;
}

void *RemoteBrowsingAuthenticationInterceptor.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  sub_20BF087FC(v0 + OBJC_IVAR____TtC9SeymourUI39RemoteBrowsingAuthenticationInterceptor_state, type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State);
  return v0;
}

uint64_t RemoteBrowsingAuthenticationInterceptor.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  sub_20BF087FC(v0 + OBJC_IVAR____TtC9SeymourUI39RemoteBrowsingAuthenticationInterceptor_state, type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State);

  return swift_deallocClassInstance();
}

uint64_t RemoteBrowsingAuthenticationInterceptor.interceptRequest(_:display:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NavigationRequest(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = swift_allocObject();
  swift_weakInit();
  sub_20BF08794(a1, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  sub_20B75B150(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = (v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = a2;
  v12[1] = a3;
  swift_unknownObjectRetain();
  return sub_20C137C94();
}

double sub_20BF06978(void (*a1)(uint64_t), void (*a2)(uint64_t), uint64_t a3, uint64_t a4, void *a5, _DWORD *a6)
{
  v148 = a6;
  v150 = a5;
  v156 = a4;
  v163 = a2;
  v162 = a1;
  v153 = type metadata accessor for NavigationRequest(0);
  v134 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v135 = v7;
  v136 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v141 = *(v142 - 8);
  v8 = *(v141 + 64);
  MEMORY[0x28223BE20](v142);
  v138 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v137 = &v131 - v10;
  MEMORY[0x28223BE20](v11);
  v139 = &v131 - v12;
  MEMORY[0x28223BE20](v13);
  v140 = &v131 - v14;
  v143 = type metadata accessor for NavigationResource(0);
  MEMORY[0x28223BE20](v143);
  v144 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  MEMORY[0x28223BE20](v16 - 8);
  v145 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v147 = &v131 - v19;
  v152 = type metadata accessor for NavigationIntent(0);
  MEMORY[0x28223BE20](v152);
  v146 = &v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v151 = (&v131 - v22);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250, &unk_20C155D00);
  MEMORY[0x28223BE20](v160);
  v161 = (&v131 - v23);
  v24 = sub_20C136084();
  MEMORY[0x28223BE20](v24 - 8);
  v149 = &v131 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v131 - v27;
  v158 = sub_20C136C64();
  v159 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v30 = &v131 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v155 = &v131 - v32;
  v33 = type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State(0);
  MEMORY[0x28223BE20](v33 - 8);
  v154 = &v131 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v131 - v36;
  v38 = sub_20C13BB84();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v131 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v131 - v43;
  sub_20C13B484();
  sub_20C13BB64();
  v45 = *(v39 + 8);
  v45(v44, v38);
  swift_beginAccess();
  v157 = a3;
  Strong = swift_weakLoadStrong();
  if (!Strong || (v47 = OBJC_IVAR____TtC9SeymourUI39RemoteBrowsingAuthenticationInterceptor_state, v48 = Strong, swift_beginAccess(), v49 = v48 + v47, v50 = v163, sub_20BF08794(v49, v37, type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State), , v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80, &qword_20C183A00), v132 = *(v51 - 8), v52 = *(v132 + 48), v133 = v51, LODWORD(v48) = v52(v37, 1), sub_20BF087FC(v37, type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State), v48 != 1))
  {
    sub_20B5D9BA8();
    v70 = swift_allocError();
    *v71 = 3;
    v72 = v161;
    *v161 = v70;
LABEL_10:
    swift_storeEnumTagMultiPayload();
    v162(v72);
    sub_20B520158(v72, &unk_27C76D250, &unk_20C155D00);
    return result;
  }

  sub_20C1369D4();
  v53 = v159;
  v54 = v158;
  if ((*(v159 + 48))(v28, 1, v158) == 1)
  {
    sub_20B520158(v28, &qword_27C768690, &unk_20C14FD90);
    v55 = v157;
    swift_beginAccess();
    v56 = swift_weakLoadStrong();
    v57 = v156;
    if (v56)
    {
      v58 = v56;
      v59 = v133;
      v60 = v154;
      v61 = (v154 + *(v133 + 48));
      v62 = (v154 + *(v133 + 64));
      sub_20BF08794(v156, v154, type metadata accessor for NavigationRequest);
      v63 = v148;
      *v61 = v150;
      v61[1] = v63;
      *v62 = v162;
      v62[1] = v50;
      (*(v132 + 56))(v60, 0, 1, v59);
      v64 = OBJC_IVAR____TtC9SeymourUI39RemoteBrowsingAuthenticationInterceptor_state;
      swift_beginAccess();
      swift_unknownObjectRetain();

      sub_20BF0885C(v60, v58 + v64);
      swift_endAccess();
    }

    v65 = *(v153 + 20);
    v66 = v151;
    sub_20BF08794(v57 + v65, v151, type metadata accessor for NavigationIntent);
    if (swift_getEnumCaseMultiPayload() == 5)
    {

      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0, "\b\b\t");
      sub_20B520158(v66 + *(v67 + 80), &qword_27C766E88, &qword_20C16E290);
      swift_beginAccess();
      v68 = swift_weakLoadStrong();
      if (v68)
      {
        sub_20B51CC64(v68 + 80, &v164);

        __swift_project_boxed_opaque_existential_1(&v164, v165);
        v69 = &v167;
        goto LABEL_17;
      }

      v105 = sub_20C135174();
      v106 = *(*(v105 - 8) + 56);
      v107 = &v167;
      goto LABEL_35;
    }

    sub_20BF087FC(v66, type metadata accessor for NavigationIntent);
    v85 = v57 + v65;
    v86 = v146;
    sub_20BF08794(v85, v146, type metadata accessor for NavigationIntent);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v87 = sub_20C139144();
      (*(*(v87 - 8) + 8))(v86, v87);
      swift_beginAccess();
      v88 = swift_weakLoadStrong();
      if (v88)
      {
        sub_20B51CC64(v88 + 80, &v164);

        __swift_project_boxed_opaque_existential_1(&v164, v165);
        v69 = &v166;
LABEL_17:
        v89 = *(v69 - 32);
        sub_20C13B184();
        __swift_destroy_boxed_opaque_existential_1(&v164);
        v90 = sub_20C135174();
        if ((*(*(v90 - 8) + 48))(v89, 1, v90) != 1)
        {
          sub_20B520158(v89, &unk_27C76BC00, &unk_20C1500B0);
          swift_beginAccess();
          v91 = swift_weakLoadStrong();
          if (v91)
          {
            v92 = v91;
            v93 = v154;
            (*(v132 + 56))(v154, 1, 1, v133);
            v94 = OBJC_IVAR____TtC9SeymourUI39RemoteBrowsingAuthenticationInterceptor_state;
            swift_beginAccess();
            sub_20BF0885C(v93, v92 + v94);
            swift_endAccess();
          }

          v72 = v161;
          sub_20BF08794(v57, v161, type metadata accessor for NavigationRequest);
          goto LABEL_10;
        }

        goto LABEL_36;
      }

      v105 = sub_20C135174();
      v106 = *(*(v105 - 8) + 56);
      v107 = &v166;
LABEL_35:
      v89 = *(v107 - 32);
      v106(v89, 1, 1, v105);
LABEL_36:
      sub_20B520158(v89, &unk_27C76BC00, &unk_20C1500B0);
      goto LABEL_37;
    }

    sub_20BF087FC(v86, type metadata accessor for NavigationIntent);
    v104 = v144;
    sub_20BF08794(v57, v144, type metadata accessor for NavigationResource);
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      if (*v104 == 1)
      {
LABEL_37:
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_20BF04ED8();
        }

        return result;
      }
    }

    else
    {
      sub_20BF087FC(v104, type metadata accessor for NavigationResource);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v108 = v137;
      sub_20BF0561C(v137);

      v109 = v136;
      sub_20BF08794(v57, v136, type metadata accessor for NavigationRequest);
      v110 = (*(v134 + 80) + 40) & ~*(v134 + 80);
      v111 = swift_allocObject();
      v112 = v162;
      v111[2] = v55;
      v111[3] = v112;
      v111[4] = v50;
      sub_20B75B150(v109, v111 + v110);
      v113 = swift_allocObject();
      *(v113 + 16) = sub_20BF09758;
      *(v113 + 24) = v111;
      v114 = v141;
      v115 = *(v141 + 16);
      v161 = (v141 + 16);
      v162 = v115;
      v116 = v138;
      v117 = v142;
      (v115)(v138, v108, v142);
      v118 = *(v114 + 80);
      v160 = (v118 + 16) & ~v118;
      v119 = (v8 + v160 + 7) & 0xFFFFFFFFFFFFFFF8;
      v120 = swift_allocObject();
      v159 = *(v114 + 32);
      (v159)(v120 + ((v118 + 16) & ~v118), v116, v117);
      v121 = (v120 + v119);
      *v121 = sub_20B66A8B4;
      v121[1] = v113;

      v122 = v157;

      v123 = v139;
      sub_20C137C94();
      v163 = *(v114 + 8);
      (v163)(v108, v117);
      v124 = swift_allocObject();
      *(v124 + 16) = sub_20BF097DC;
      *(v124 + 24) = v122;
      (v162)(v116, v123, v117);
      v125 = swift_allocObject();
      (v159)(v125 + v160, v116, v117);
      v126 = (v125 + v119);
      *v126 = sub_20B5DF204;
      v126[1] = v124;

      v127 = v140;
      sub_20C137C94();
      v128 = v163;
      (v163)(v123, v117);
      v129 = sub_20C137CB4();
      v130 = swift_allocObject();
      *(v130 + 16) = 0;
      *(v130 + 24) = 0;
      v129(sub_20B5DF6DC, v130);

      (v128)(v127, v117);
    }
  }

  else
  {
    v74 = v155;
    (*(v53 + 32))(v155, v28, v54);
    sub_20C13B484();
    v75 = *(v53 + 16);
    v152 = v53 + 16;
    v151 = v75;
    (v75)(v30, v74, v54);
    v76 = sub_20C13BB74();
    v77 = sub_20C13D1D4();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v148 = v78;
      v150 = swift_slowAlloc();
      v164 = v150;
      *v78 = 136315138;
      sub_20BF08E74(&qword_27C770580, MEMORY[0x277D52F00], MEMORY[0x277D52F08]);
      v79 = sub_20C13DFA4();
      v81 = v80;
      v153 = *(v159 + 8);
      (v153)(v30, v54);
      v82 = sub_20B51E694(v79, v81, &v164);
      v74 = v155;

      v83 = v148;
      *(v148 + 1) = v82;
      _os_log_impl(&dword_20B517000, v76, v77, "Faking Remote Browsing Environment %s", v83, 0xCu);
      v84 = v150;
      __swift_destroy_boxed_opaque_existential_1(v150);
      MEMORY[0x20F2F6A40](v84, -1, -1);
      MEMORY[0x20F2F6A40](v83, -1, -1);
    }

    else
    {

      v153 = *(v159 + 8);
      (v153)(v30, v54);
    }

    v45(v41, v38);
    swift_beginAccess();
    v95 = swift_weakLoadStrong();
    if (v95)
    {
      sub_20B51CC64(v95 + 80, &v164);

      __swift_project_boxed_opaque_existential_1(&v164, v165);
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766A10, &qword_20C15E0D0);
      v97 = *(v96 + 48);
      v98 = v149;
      sub_20C1350E4();
      (v151)(v98 + v97, v74, v158);
      (*(*(v96 - 8) + 56))(v98, 0, 1, v96);
      sub_20C13B1A4();
      sub_20BF087FC(v98, MEMORY[0x277D525B8]);
      __swift_destroy_boxed_opaque_existential_1(&v164);
    }

    swift_beginAccess();
    v99 = swift_weakLoadStrong();
    if (v99)
    {
      v100 = v99;
      v101 = v154;
      (*(v132 + 56))(v154, 1, 1, v133);
      v102 = OBJC_IVAR____TtC9SeymourUI39RemoteBrowsingAuthenticationInterceptor_state;
      swift_beginAccess();
      sub_20BF0885C(v101, v100 + v102);
      swift_endAccess();
    }

    v103 = v161;
    sub_20BF08794(v156, v161, type metadata accessor for NavigationRequest);
    swift_storeEnumTagMultiPayload();
    v162(v103);
    sub_20B520158(v103, &unk_27C76D250, &unk_20C155D00);
    (v153)(v74, v158);
  }

  return result;
}

uint64_t sub_20BF07ED0(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *), uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250, &unk_20C155D00);
  MEMORY[0x28223BE20](v7);
  v9 = &v18[-v8];
  v10 = type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80, &qword_20C183A00);
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    v16 = OBJC_IVAR____TtC9SeymourUI39RemoteBrowsingAuthenticationInterceptor_state;
    swift_beginAccess();
    sub_20BF0885C(v12, v14 + v16);
    swift_endAccess();
  }

  sub_20BF08794(a5, v9, type metadata accessor for NavigationRequest);
  swift_storeEnumTagMultiPayload();
  a3(v9);
  return sub_20B520158(v9, &unk_27C76D250, &unk_20C155D00);
}

double sub_20BF080C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BF04ED8();
  }

  return result;
}

uint64_t RemoteBrowsingAuthenticationInterceptor.cancel()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v59 = &v48 - v6;
  MEMORY[0x28223BE20](v7);
  v56 = &v48 - v8;
  v9 = type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  v15 = sub_20C13BB84();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  v54 = 0x800000020C1B6B00;
  sub_20C13BB64();
  (*(v16 + 8))(v18, v15);
  v19 = OBJC_IVAR____TtC9SeymourUI39RemoteBrowsingAuthenticationInterceptor_state;
  swift_beginAccess();
  sub_20BF08794(v2 + v19, v14, type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80, &qword_20C183A00);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v14, 1, v20) == 1)
  {
    sub_20BF087FC(v14, type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State);
    return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  }

  else
  {
    v23 = &v14[*(v20 + 48)];
    v25 = *v23;
    v24 = *(v23 + 1);
    v26 = &v14[*(v20 + 64)];
    v27 = *(v26 + 1);
    v51 = *v26;
    v53 = v27;
    sub_20BF087FC(v14, type metadata accessor for NavigationRequest);
    (*(v21 + 56))(v11, 1, 1, v20);
    swift_beginAccess();
    sub_20BF0885C(v11, v2 + v19);
    swift_endAccess();
    v52 = v25;
    ObjectType = swift_getObjectType();
    v29 = v59;
    (*(v24 + 56))(0, ObjectType, v24);
    v30 = swift_allocObject();
    *(v30 + 16) = v51;
    *(v30 + 24) = v27;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_20BF089A8;
    *(v31 + 24) = v30;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_20B5DF3B8;
    *(v32 + 24) = v31;
    v34 = v57;
    v33 = v58;
    v51 = *(v57 + 16);
    v35 = v55;
    v51(v55, v29, v58);
    v36 = *(v34 + 80);
    v50 = (v36 + 16) & ~v36;
    v37 = (v4 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = v37;
    v38 = swift_allocObject();
    v49 = *(v34 + 32);
    v49(v38 + ((v36 + 16) & ~v36), v35, v33);
    v39 = (v38 + v37);
    *v39 = sub_20B5DF3D4;
    v39[1] = v32;

    v40 = v56;
    sub_20C137C94();
    v57 = *(v34 + 8);
    v41 = v59;
    v42 = v33;
    (v57)(v59, v33);
    v43 = swift_allocObject();
    v43[2] = 0xD000000000000037;
    v43[3] = v54;
    v43[4] = 223;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_20B5D9EA0;
    *(v44 + 24) = v43;
    v51(v41, v40, v33);
    v45 = v48;
    v46 = swift_allocObject();
    v49(v46 + v50, v41, v42);
    v47 = (v46 + v45);
    *v47 = sub_20B5D9EC0;
    v47[1] = v44;

    sub_20C137C94();

    swift_unknownObjectRelease();
    return (v57)(v40, v42);
  }
}

uint64_t sub_20BF08794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BF087FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BF0885C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BF088C0(void (*a1)(uint64_t *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250, &unk_20C155D00);
  MEMORY[0x28223BE20](v2);
  v4 = (&v8 - v3);
  sub_20B5D9BA8();
  v5 = swift_allocError();
  *v6 = 2;
  *v4 = v5;
  swift_storeEnumTagMultiPayload();
  a1(v4);
  return sub_20B520158(v4, &unk_27C76D250, &unk_20C155D00);
}

uint64_t sub_20BF089B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NavigationRequest(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = swift_allocObject();
  swift_weakInit();
  sub_20BF08794(a1, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  sub_20B75B150(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = (v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = a2;
  v12[1] = a3;
  swift_unknownObjectRetain();
  return sub_20C137C94();
}

uint64_t sub_20BF08B80(uint64_t a1)
{
  result = sub_20BF08E74(&qword_27C770548, type metadata accessor for RemoteBrowsingAuthenticationInterceptor, &protocol conformance descriptor for RemoteBrowsingAuthenticationInterceptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_20BF08C00(uint64_t a1)
{
  result = type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State(319);
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

uint64_t sub_20BF08E04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770570, &qword_20C183B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BF08E74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_7Tm_0()
{
  v1 = type metadata accessor for NavigationRequest(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = (v0 + v3);
  type metadata accessor for NavigationResource(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v9 = sub_20C132C14();
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      v7 = &unk_27C763FC0;
      v8 = &unk_20C155B00;
      goto LABEL_17;
    case 2u:
      v10 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v17 = sub_20C1387E4();
      (*(*(v17 - 8) + 8))(v0 + v3, v17);
      v7 = &qword_27C7710E0;
      v8 = &unk_20C15F290;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &qword_27C763FD0;
      v8 = &unk_20C155B10;
LABEL_17:
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7, v8) + 48);
      v19 = sub_20C1388F4();
      (*(*(v19 - 8) + 8))(v5 + v18, v19);
      break;
    case 9u:
      v10 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v10 = sub_20C138204();
LABEL_11:
      (*(*(v10 - 8) + 8))(v0 + v3, v10);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v11 = sub_20C1344C4();
        (*(*(v11 - 8) + 8))(v0 + v3, v11);
        v12 = type metadata accessor for WorkoutSessionConfiguration(0);
        v13 = v12[5];
        v14 = sub_20C137254();
        (*(*(v14 - 8) + 8))(v5 + v13, v14);
        v15 = v12[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v16 = sub_20C137EA4();
          (*(*(v16 - 8) + 8))(v5 + v15, v16);
        }

        else
        {
        }

        v36 = v12[9];
        v37 = sub_20C13BA24();
        v38 = *(v37 - 8);
        if (!(*(v38 + 48))(v5 + v36, 1, v37))
        {
          (*(v38 + 8))(v5 + v36, v37);
        }

        v39 = v12[10];
        v40 = sub_20C134A44();
        v41 = *(v40 - 8);
        if (!(*(v41 + 48))(v5 + v39, 1, v40))
        {
          (*(v41 + 8))(v5 + v39, v40);
        }

        if (*(v5 + v12[11] + 8) >= 0xC)
        {
        }

        v42 = v12[12];
        v43 = sub_20C135C54();
        v44 = *(v43 - 8);
        if (!(*(v44 + 48))(v5 + v42, 1, v43))
        {
          (*(v44 + 8))(v5 + v42, v43);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v20 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0, "\b\b\t") + 80);
      v24 = sub_20C1344C4();
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(&v20[v23], 1, v24))
      {
        (*(v25 + 8))(&v20[v23], v24);
      }

      break;
    case 4:

      break;
    case 3:
      v22 = sub_20C139144();
      (*(*(v22 - 8) + 8))(v20, v22);
      break;
  }

  v26 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource(0);
  v27 = swift_getEnumCaseMultiPayload();
  if (v27 == 1)
  {
    v35 = sub_20C135024();
    (*(*(v35 - 8) + 8))(v26, v35);
  }

  else if (!v27)
  {
    v46 = v0;
    v28 = v2;
    v29 = (v2 + 24) & ~v2;
    v30 = v4;
    v31 = sub_20C132C14();
    v32 = *(v31 - 8);
    v33 = *(v32 + 8);
    v33(v26, v31);
    v34 = *(type metadata accessor for NavigationSharingURLInfo(0) + 20);
    if (!(*(v32 + 48))(&v26[v34], 1, v31))
    {
      v33(&v26[v34], v31);
    }

    v4 = v30;
    v3 = v29;
    v2 = v28;
    v0 = v46;
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

double sub_20BF096A4(void (*a1)(uint64_t), void (*a2)(uint64_t))
{
  v5 = *(type metadata accessor for NavigationRequest(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_20BF06978(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t sub_20BF097F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BF098D4(unint64_t a1)
{
  switch((a1 >> 57) & 0x78 | a1 & 7)
  {
    case 6uLL:
    case 0xDuLL:
    case 0x11uLL:
    case 0x15uLL:
    case 0x1AuLL:
    case 0x26uLL:
    case 0x37uLL:
    case 0x3AuLL:
    case 0x3BuLL:
    case 0x3CuLL:
    case 0x43uLL:
      return type metadata accessor for TVFilterOptionsCell(0);
    case 7uLL:
      return type metadata accessor for TVDetailDescriptionHeaderCell(0);
    case 9uLL:
      return type metadata accessor for TVDetailHeaderCell(0);
    case 0xAuLL:
      return type metadata accessor for TVDetailSummaryTextCell(0);
    case 0xEuLL:
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x20))
      {
        return type metadata accessor for ContentUnavailableCell(0);
      }

      else
      {
        return type metadata accessor for ContentUnavailableFixedHeightCell(0);
      }

    case 0xFuLL:
      return type metadata accessor for TVEditorialCollectionDetailHeaderCell(0);
    case 0x16uLL:
      return type metadata accessor for TVFilterResultDetailHeaderCell(0);
    case 0x17uLL:
      return type metadata accessor for TVFilterResultActionsCell(0);
    case 0x18uLL:
      return type metadata accessor for TVFullScreenMessageCell(0);
    case 0x19uLL:
      return type metadata accessor for TVGalleryHeaderCell(0);
    case 0x1CuLL:
    case 0x39uLL:
      return sub_20BF098D4(*((a1 & 0xFFFFFFFFFFFFFF8) + 0x20));
    case 0x1EuLL:
      v4 = &unk_27C7677D0;
      v5 = &unk_20C151840;
      goto LABEL_31;
    case 0x1FuLL:
      v4 = &qword_27C762B80;
      v5 = &unk_20C165750;
LABEL_31:
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      v7 = swift_projectBox();
      v8 = (v9 + 64);
      goto LABEL_32;
    case 0x20uLL:
      v2 = &unk_27C772250;
      v3 = &unk_20C150590;
      goto LABEL_29;
    case 0x21uLL:
      v2 = &qword_27C762B28;
      v3 = &unk_20C1713B0;
      goto LABEL_29;
    case 0x25uLL:
      return type metadata accessor for TVMetadataSectionCell(0);
    case 0x29uLL:
      return type metadata accessor for TVMusicTrackCell(0);
    case 0x2AuLL:
      return type metadata accessor for TVMyLibraryEntryCell(0);
    case 0x32uLL:
      return type metadata accessor for TVRootShowcaseCarouselContainerCell(0);
    case 0x33uLL:
      return type metadata accessor for TVGallerySectionSeparatorShelf(0);
    case 0x3EuLL:
      return type metadata accessor for TVQueueListHeaderCell(0);
    case 0x3FuLL:
      return type metadata accessor for TVQueueEmptyListCell(0);
    case 0x45uLL:
      return type metadata accessor for TVWorkoutPlanBannerCell(0);
    case 0x48uLL:
      return type metadata accessor for TVWorkoutPlanGalleryBrickCell(0);
    case 0x49uLL:
      return type metadata accessor for TVWorkoutPlanDetailHeaderCell(0);
    case 0x4AuLL:
      v2 = &unk_27C762A70;
      v3 = &unk_20C1512E0;
LABEL_29:
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
      v7 = swift_projectBox();
      v8 = (v6 + 48);
LABEL_32:
      result = sub_20BF09B9C(*(v7 + *v8));
      break;
    case 0x4DuLL:
      result = type metadata accessor for LoadingCell(0);
      break;
    default:
      result = sub_20C093BC8(a1);
      break;
  }

  return result;
}

uint64_t sub_20BF09B9C(char a1)
{
  switch(a1)
  {
    case 5:
    case 13:
      result = type metadata accessor for TVGroupedBrickItemCell(0);
      break;
    case 6:
      result = type metadata accessor for TVCircleItemCell(0);
      break;
    case 8:
    case 11:
    case 28:
    case 29:
    case 34:
      result = type metadata accessor for TVStandardBrickRowCell(0);
      break;
    case 9:
    case 31:
      result = type metadata accessor for TVDynamicBrickItemCell(0);
      break;
    case 10:
      result = type metadata accessor for TVEditorialCollectionBrickItemCell(0);
      break;
    case 14:
    case 16:
    case 26:
      result = type metadata accessor for TVProgramBrickItemCell(0);
      break;
    case 18:
    case 20:
    case 32:
    case 33:
    case 38:
    case 47:
    case 48:
      result = type metadata accessor for TVStandardBrickItemCell(0);
      break;
    case 19:
      result = type metadata accessor for TVIndexedBrickItemCell(0);
      break;
    case 22:
      result = type metadata accessor for TVModalityBrickItemCell(0);
      break;
    case 25:
      result = type metadata accessor for TVPlaylistBrickRowCell(0);
      break;
    case 37:
      result = type metadata accessor for TVQueueListCell(0);
      break;
    case 42:
      result = type metadata accessor for TVWorkoutPlanBrickItemCell(0);
      break;
    case 45:
      result = type metadata accessor for TVWorkoutPlanShowcaseBrickItemCell(0);
      break;
    default:
      result = sub_20C093E48(a1);
      break;
  }

  return result;
}

uint64_t sub_20BF09D10(__int128 *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v9 = a1[9];
  v43 = a1[8];
  v44 = v9;
  v45 = *(a1 + 20);
  v10 = a1[5];
  v39 = a1[4];
  v40 = v10;
  v11 = a1[7];
  v41 = a1[6];
  v42 = v11;
  v12 = a1[1];
  v35 = *a1;
  v36 = v12;
  v13 = a1[3];
  v37 = a1[2];
  v38 = v13;
  v14 = sub_20B5EAF8C(&v35);
  result = MEMORY[0x277D84F90];
  if (v14 == 1)
  {
    return result;
  }

  v49 = v43;
  v50 = v44;
  v51 = v45;
  v46[4] = v39;
  v46[5] = v40;
  v47 = v41;
  v48 = v42;
  v46[0] = v35;
  v46[1] = v36;
  v46[2] = v37;
  v46[3] = v38;
  v34 = MEMORY[0x277D84F90];
  if (!v44)
  {
    return result;
  }

  v16 = (v50 & 0x2000000000000000) != 0 ? BYTE7(v50) & 0xF : *(&v49 + 1) & 0xFFFFFFFFFFFFLL;
  if (!v16 || !*(*(&v47 + 1) + 16))
  {
    return result;
  }

  v17 = *(*(&v47 + 1) + 32);

  v18 = sub_20BF098D4(v17);
  if (swift_conformsToProtocol2() && v18)
  {
    v19 = sub_20B911B50(v46, a2);
LABEL_14:
    v21 = v19;
    MEMORY[0x20F2F43B0]();
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20C13CCA4();
    }

    sub_20C13CCE4();

LABEL_17:
    v22 = v34;
    goto LABEL_18;
  }

  v20 = sub_20BF098D4(v17);
  if (swift_conformsToProtocol2() && v20)
  {
    v19 = sub_20BA033CC(v46, a2);
    goto LABEL_14;
  }

  v32 = sub_20BF098D4(v17);
  v33 = swift_conformsToProtocol2();
  v22 = MEMORY[0x277D84F90];
  if (v33 && v32)
  {
    sub_20B885750(v46, a2, a4, a6);
    MEMORY[0x20F2F43B0]();
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20C13CCA4();
    }

    sub_20C13CCE4();
    goto LABEL_17;
  }

LABEL_18:
  if (*(&v46[0] + 1))
  {
    v23 = v22;
    v24 = *&v46[0] & 0xFFFFFFFFFFFFLL;
    if ((*(&v46[0] + 1) & 0x2000000000000000) != 0)
    {
      v24 = HIBYTE(*(&v46[0] + 1)) & 0xFLL;
    }

    if (v24 && (sub_20BF098D4(v17), type metadata accessor for TVMusicTrackCell(0), swift_dynamicCastMetatype()))
    {
      v25 = objc_opt_self();
      v26 = [v25 fractionalWidthDimension_];
      v27 = [v25 absoluteDimension_];
      v28 = [objc_opt_self() sizeWithWidthDimension:v26 heightDimension:v27];

      v29 = sub_20C13C914();
      v30 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v28 elementKind:v29 alignment:8 absoluteOffset:{0.0, -8.0}];

      MEMORY[0x20F2F43B0]();
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      sub_20C13CCE4();

      return v34;
    }

    else
    {

      return v23;
    }
  }

  else
  {
    v31 = v22;

    return v31;
  }
}