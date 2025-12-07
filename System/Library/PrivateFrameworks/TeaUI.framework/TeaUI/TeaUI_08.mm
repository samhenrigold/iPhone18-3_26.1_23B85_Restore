uint64_t sub_1D7EB5364(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 128);
  OUTLINED_FUNCTION_15_2(v2 + v6, v17);
  v13 = *(v5 + 88);
  v16 = *(v5 + 112);
  v14 = *(&v16 + 1);
  v15 = v13;
  type metadata accessor for Blueprint(0, &v15);
  OUTLINED_FUNCTION_8();
  (*(v7 + 24))(v2 + v6, a1);
  swift_endAccess();
  OUTLINED_FUNCTION_12();
  v9 = *(v8 + 136);
  OUTLINED_FUNCTION_15_2(v2 + v9, &v15);
  type metadata accessor for BlueprintItem(0, *(&v13 + 1), v14, v10);
  OUTLINED_FUNCTION_8();
  (*(v11 + 24))(v2 + v9, a2);
  return swift_endAccess();
}

uint64_t sub_1D7EB54A4(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v10 = *(a4 + 8);
  if (*a1)
  {
    if (*(v8 + 16))
    {
      if (v10 != 1)
      {
        MaxX = *(a3 + 16);
LABEL_14:
        MaxY = CGRectGetMaxY(*&a5);
        goto LABEL_15;
      }

      v11 = *a4;
      MaxX = *(a3 + 16);
LABEL_10:
      MaxY = *(a2 + 24) + v11;
LABEL_15:
      type metadata accessor for BlueprintLayoutCollectionSectionCursor();
      swift_allocObject();
      OUTLINED_FUNCTION_1_5();
      v29 = MaxX;
      v30 = MaxY;
      return sub_1D7E79998(v29, v30, v23, v24, v25, v26, v27, v28, v15, v16, v17, v18, v19, v20, v21, v22, v33, v34);
    }
  }

  else if (*(v8 + 16))
  {
    if (v10 != 1)
    {
      MaxX = *(a2 + 16);
      goto LABEL_14;
    }

    v11 = *a4;
    MaxX = *(a2 + 16);
    goto LABEL_10;
  }

  if (v10 != 1)
  {
    MaxX = CGRectGetMaxX(*&a5);
    MaxY = *(a2 + 24);
    goto LABEL_15;
  }

  v13 = *(a2 + 24);
  v14 = *(a2 + 16) + *a4;
  type metadata accessor for BlueprintLayoutCollectionSectionCursor();
  swift_allocObject();
  OUTLINED_FUNCTION_1_5();
  v29 = v14;
  v30 = v13;
  return sub_1D7E79998(v29, v30, v23, v24, v25, v26, v27, v28, v15, v16, v17, v18, v19, v20, v21, v22, v33, v34);
}

uint64_t sub_1D7EB5614(_BYTE *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  if (*a1)
  {
  }

  else
  {
    if (*(v7 + 16))
    {
      v9 = *(a2 + 16);
    }

    else
    {
      v9 = *(a3 + 16);
    }

    MaxY = CGRectGetMaxY(*&a4);
    type metadata accessor for BlueprintLayoutCollectionSectionCursor();
    swift_allocObject();
    OUTLINED_FUNCTION_1_5();
    return sub_1D7E79998(v9, MaxY, v19, v20, v21, v22, v23, v24, v11, v12, v13, v14, v15, v16, v17, v18, v25, v26);
  }
}

BOOL sub_1D7EB56B4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = type metadata accessor for BlueprintItem(0, *(*a2 + 96), *(*a2 + 120), a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v10 = *(v5 + 136);
  swift_beginAccess();
  v11 = *(v7 + 16);
  v11(v9, &a2[v10], v6);
  LOBYTE(v5) = BlueprintItem.isImpressionable.getter(v6);
  v12 = *(v7 + 8);
  v12(v9, v6);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v13 = &a2[*(*a2 + 168)];
  v14 = *(v13 + 1);
  HIDWORD(v21) = v13[16];
  Strong = swift_unknownObjectWeakLoadStrong();
  v11(v9, &a2[v10], v6);
  v16 = BlueprintItem.impressionTraits.getter(v6);
  v17.n128_f64[0] = v12(v9, v6);
  sub_1D7EA3DD8(Strong, v16, v17);
  v19 = v18;

  if ((v21 & 0x100000000) != 0)
  {
    return v19 < v14;
  }

  else
  {
    return v19 == v14;
  }
}

void sub_1D7EB58E4()
{
  type metadata accessor for ImageCacheInterestToken();
  v0 = swift_allocObject();
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = 0;
  qword_1EDBB8160 = v0;
}

uint64_t sub_1D7EB5918(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v157 = a5;
  LODWORD(v151) = a4;
  v162 = a3;
  v152 = a1;
  v6 = *a2;
  v7 = *a2;
  v9 = *(*a2 + 120);
  *&v168 = *(*a2 + 112);
  v8 = v168;
  *(&v168 + 1) = v9;
  v163 = *(v7 + 11);
  v167 = v163;
  v156 = type metadata accessor for Blueprint(0, &v167);
  v130 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v131 = &v119 - v10;
  v167 = v163;
  *&v168 = v8;
  *(&v168 + 1) = v9;
  active = type metadata accessor for BlueprintActiveImpressionSection(0, &v167);
  v132 = *(active - 8);
  MEMORY[0x1EEE9AC00](active);
  v135 = &v119 - v11;
  v142 = sub_1D818E754();
  v140 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v129 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v128 = &v119 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v141 = &v119 - v16;
  v17 = v6[13];
  v160 = v6[10];
  v161 = v17;
  v139 = type metadata accessor for BlueprintImpressionManager.SectionContext(255, v160, v17, v18);
  v138 = sub_1D8191E84();
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v127 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v136 = &v119 - v21;
  v167 = v163;
  *&v168 = v8;
  *(&v168 + 1) = v9;
  v22 = type metadata accessor for BlueprintSection(255, &v167);
  v144 = sub_1D8191E84();
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v153 = (&v119 - v23);
  v158 = v22;
  v147 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v126 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v146 = &v119 - v27;
  v167 = v163;
  v159 = v8;
  *&v168 = v8;
  *(&v168 + 1) = v9;
  v155 = type metadata accessor for BlueprintActiveImpression(0, &v167);
  v154 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v164 = &v119 - v28;
  v150 = sub_1D818E994();
  v148 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v149 = &v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = v163.i64[1];
  v31 = type metadata accessor for BlueprintItem(0, v163.i64[1], v9, v30);
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v119 - v33;
  v35 = v6[17];
  swift_beginAccess();
  v37 = v32 + 16;
  v36 = *(v32 + 16);
  (v36)(v34, a2 + v35, v31);
  LOBYTE(v8) = BlueprintItem.isImpressionable.getter(v31);
  v40 = *(v32 + 8);
  v38 = v32 + 8;
  v39 = v40;
  v40(v34, v31);
  if (v8)
  {
    v134 = v9;
    Strong = swift_unknownObjectWeakLoadStrong();
    v125 = v35;
    v124 = v37;
    v123 = v36;
    (v36)(v34, a2 + v35, v31);
    v42 = BlueprintItem.impressionTraits.getter(v31);
    v43 = v162;
    v44 = v42;
    v120 = v34;
    v45 = v31;
    v46.n128_f64[0] = v39(v34, v31);
    sub_1D7EA3DD8(Strong, v44, v46);
    v48 = v47;

    v49 = *(a2 + *(*a2 + 152));
    v122 = v38;
    if (v49 > v48)
    {
      return 1;
    }

    v121 = v39;
    v51 = v151 & 0x7F;
    v167.i8[0] = v151 & 0x7F;
    v52 = sub_1D7FBB844(&v167);
    (*(v148 + 16))(v149, v152, v150);
    v165 = v52;
    swift_beginAccess();

    *&v53 = vdupq_laneq_s64(v163, 1).u64[0];
    *(&v53 + 1) = v161;
    v54.i64[0] = v160;
    v167 = vzip1q_s64(v54, v163);
    v168 = v53;
    v169 = v159;
    v170 = v134;
    type metadata accessor for BlueprintImpressionManager.Context(255, &v167);
    sub_1D7E2491C(&qword_1EDBBC6C0, MEMORY[0x1E6969C28], MEMORY[0x1E6969C38]);
    sub_1D8190E14();
    sub_1D8190E34();
    swift_endAccess();
    if (qword_1EDBBB328 != -1)
    {
      swift_once();
    }

    v151 = qword_1EDBC6080;
    LODWORD(v150) = sub_1D81919B4();
    sub_1D7E13630(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1D81A1B70;
    v56 = (v43 + *(*v43 + 160));
    v57 = *v56;
    v58 = v56[1];
    v59 = MEMORY[0x1E69E6158];
    *(v55 + 56) = MEMORY[0x1E69E6158];
    v60 = sub_1D7E13BF4();
    *(v55 + 64) = v60;
    *(v55 + 32) = v57;
    *(v55 + 40) = v58;
    v152 = a2;
    v61 = v45;
    v62 = v120;
    v123();
    sub_1D8190DB4();
    v63 = BlueprintItem.visualDescription.getter(v61);
    v65 = v64;
    v121(v62, v61);
    *(v55 + 96) = v59;
    *(v55 + 104) = v60;
    *(v55 + 72) = v63;
    *(v55 + 80) = v65;
    v66 = v162;
    *(v55 + 136) = MEMORY[0x1E69E7DE0];
    *(v55 + 144) = sub_1D7EA41AC();
    *(v55 + 112) = v48;
    sub_1D818FD44("%{public}@, convert staged to impression for item=%@, visibility=%f", 67, 2, &dword_1D7DFF000, v151, v150, v55);

    v67 = swift_unknownObjectWeakLoadStrong();
    v68 = sub_1D7EA3F14(v67);
    v70 = v69;
    v72 = v71;
    v74 = v73;

    LODWORD(v150) = v51;
    v167.i8[0] = v51;
    v75 = v164;
    v151 = v52;
    sub_1D7EA44EC(&v167, v164, v68, v70, v72, v74);
    v76 = swift_unknownObjectWeakLoadStrong();
    v77 = v134;
    v78 = v161;
    v79 = v160;
    if (v76)
    {
      v80 = v66[4];
      ObjectType = swift_getObjectType();
      (*(v80 + 56))(v66, v75, v79, v163.i64[0], v145, v78, v159, v77, ObjectType, v80);
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    type metadata accessor for BlueprintImpressionManagerProcessor(0, v79, v78, v82);
    sub_1D8190DB4();
    v171 = sub_1D8191324();
    while (v171 != sub_1D8191414())
    {
      v88 = sub_1D81913E4();
      sub_1D81913A4();
      if (v88)
      {
      }

      else
      {
        sub_1D8192204();
      }

      sub_1D8191454();
      sub_1D81251C0();
    }

    (v123)(v62, v152 + v125, v61);
    v83 = BlueprintItem.identifier.getter(v61);
    v121(v62, v61);
    v84 = v153;
    v85 = v156;
    v86 = v157;
    Blueprint.section(forItem:)(v83);

    v87 = v158;
    if (__swift_getEnumTagSinglePayload(v84, 1, v158) == 1)
    {
      (*(v154 + 8))(v164, v155);

      (*(v143 + 8))(v84, v144);
    }

    else
    {
      v89 = v147;
      v90 = v146;
      (*(v147 + 32))(v146, v84, v87);
      v91 = BlueprintSection.isImpressionable.getter(v87);
      v92 = v164;
      if (v91)
      {
        v93 = BlueprintSection.identifier.getter(v87);
        v95 = v94;
        swift_beginAccess();
        v165 = v93;
        v166 = v95;
        v96 = v136;
        v97 = v139;
        sub_1D8190E24();

        swift_endAccess();
        if (__swift_getEnumTagSinglePayload(v96, 1, v97) == 1)
        {
          (*(v137 + 8))(v96, v138);
          v98 = v141;
          sub_1D818E744();
          v99 = v97;
          v100 = BlueprintSection.identifier.getter(v87);
          v149 = v101;
          v153 = *(v140 + 16);
          v102 = v128;
          v153(v128, v98, v142);
          v103 = v150;
          LOBYTE(v171) = v150;
          v104 = v127;
          sub_1D7EB82CC(v102, &v171, v160, v161, v127);
          __swift_storeEnumTagSinglePayload(v104, 0, 1, v99);
          v165 = v100;
          v166 = v149;
          swift_beginAccess();
          sub_1D8190E14();
          sub_1D8190E34();
          swift_endAccess();
          v105 = v131;
          (*(v130 + 16))(v131, v86, v85);
          v106 = v126;
          (*(v147 + 16))(v126, v146, v87);
          v107 = v129;
          v153(v129, v141, v142);
          v108 = v162;
          LOBYTE(v171) = v103;
          v109 = v163.i64[0];
          v110 = v134;
          v111 = v135;
          v112 = v105;
          v113 = v145;
          sub_1D7EB83A4(v112, v106, v107, &v171, *(v152 + *(*v152 + 144)), *(v152 + *(*v152 + 144) + 8), v135);
          if (swift_unknownObjectWeakLoadStrong())
          {
            v114 = v108[4];
            v115 = v113;
            v116 = swift_getObjectType();
            v117 = *(v114 + 64);
            sub_1D8190DB4();
            v118 = v114;
            v111 = v135;
            v117(v108, v135, v160, v109, v115, v161, v159, v110, v116, v118);

            swift_unknownObjectRelease();
          }

          else
          {
            sub_1D8190DB4();
          }

          (*(v132 + 8))(v111, active);
          (*(v140 + 8))(v141, v142);
          (*(v147 + 8))(v146, v158);
          (*(v154 + 8))(v164, v155);
        }

        else
        {

          (*(v89 + 8))(v90, v87);
          (*(v154 + 8))(v92, v155);
          (*(v137 + 8))(v96, v138);
        }
      }

      else
      {

        (*(v89 + 8))(v90, v87);
        (*(v154 + 8))(v92, v155);
      }
    }
  }

  return 0;
}

void BlueprintImpressionManager.updateImpressionModel(at:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v89 = v2;
  v3 = *v0;
  v86 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v79 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_14_1(v6);
  v7 = *(v3 + 88);
  v8 = *(v3 + 80);
  v9 = OUTLINED_FUNCTION_91_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for BlueprintItem(255, v9, AssociatedConformanceWitness, v11);
  v13 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v80 = v14;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v75 - v16;
  v87 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_21_12();
  v88 = v21;
  v22 = OUTLINED_FUNCTION_91_0();
  OUTLINED_FUNCTION_30_8();
  v83 = swift_getAssociatedConformanceWitness();
  v84 = v22;
  v92 = v22;
  v93 = v9;
  v94 = v83;
  v95 = AssociatedConformanceWitness;
  v82 = AssociatedConformanceWitness;
  v23 = OUTLINED_FUNCTION_22_10();
  v25 = type metadata accessor for Blueprint(v23, v24);
  OUTLINED_FUNCTION_9();
  v85 = v26;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v27);
  v29 = v75 - v28;
  if (sub_1D7E481B0())
  {
    OUTLINED_FUNCTION_39_5();
    BlueprintProviderType.blueprint.getter(v8, v7);
    Blueprint.item(indexPath:)();
    OUTLINED_FUNCTION_43_0(v17, 1, v12);
    if (v50)
    {
      (*(v85 + 8))(v29, v25);
      OUTLINED_FUNCTION_14_15();
      v31 = v17;
      v32 = v13;
LABEL_27:
      v30(v31, v32);
      goto LABEL_28;
    }

    v78 = v29;
    v76 = v25;
    (*(v87 + 32))(v88, v17, v12);
    OUTLINED_FUNCTION_49_3((v1 + 5));
    v92 = v8;
    v93 = v84;
    v94 = v9;
    v95 = v7;
    v33 = v82;
    v96 = v83;
    v97 = v82;
    v34 = OUTLINED_FUNCTION_22_10();
    v36 = type metadata accessor for BlueprintImpressionManager.Context(v34, v35);
    OUTLINED_FUNCTION_0_87();
    v39 = sub_1D7E2491C(v37, v38, MEMORY[0x1E6969C38]);
    v75[1] = v36;
    sub_1D8190E24();
    v40 = v90;
    v80 = v12;
    v77 = v39;
    if (v90)
    {
      swift_endAccess();
      v41 = *(*v40 + 136);
      OUTLINED_FUNCTION_8_4(v40 + v41, &v90);
      v42 = v87;
      v43 = OUTLINED_FUNCTION_28_8();
      v44(v43);
      v45 = BlueprintItem.identifier.getter(v12);
      v47 = v46;
      (*(v42 + 8))(v41, v12);
      v48 = BlueprintItem.identifier.getter(v12);
      v50 = v45 == v48 && v47 == v49;
      if (v50)
      {

        v52 = OUTLINED_FUNCTION_40_5();
      }

      else
      {
        v51 = OUTLINED_FUNCTION_76_3(v48);

        v52 = OUTLINED_FUNCTION_40_5();
        if ((v51 & 1) == 0)
        {

          v33 = v82;
          goto LABEL_15;
        }
      }

      sub_1D7EA261C(v52, v88);
      OUTLINED_FUNCTION_38_6();
      v53(v81, v89, v86);
      v98 = v40;
      OUTLINED_FUNCTION_25_7((v1 + 5));
      sub_1D8190E14();

      sub_1D8190E34();
      swift_endAccess();

      v33 = v82;
    }

    else
    {
      swift_endAccess();
    }

LABEL_15:
    OUTLINED_FUNCTION_49_3((v1 + 7));
    v92 = v8;
    v93 = v84;
    v94 = v9;
    v95 = v7;
    v96 = v83;
    v97 = v33;
    v54 = OUTLINED_FUNCTION_22_10();
    type metadata accessor for BlueprintImpressionManager.StagedContext(v54, v55);
    sub_1D8190E24();
    v56 = v91;
    if (v91)
    {
      swift_endAccess();
      OUTLINED_FUNCTION_41_4();
      v58 = *(v57 + 136);
      OUTLINED_FUNCTION_8_4(v56 + v58, &v92);
      v59 = v87;
      OUTLINED_FUNCTION_67_2();
      v60 = OUTLINED_FUNCTION_28_8();
      v61 = v80;
      v62(v60);
      v63 = BlueprintItem.identifier.getter(v61);
      v65 = v64;
      v66 = *(v59 + 8);
      v66(v58, v61);
      v67 = v61;
      v68 = v88;
      if (v63 == BlueprintItem.identifier.getter(v67) && v65 == v69)
      {
      }

      else
      {
        v71 = sub_1D8192634();

        if ((v71 & 1) == 0)
        {

          v66(v68, v80);
LABEL_23:
          v30 = *(v85 + 8);
          v31 = v78;
LABEL_26:
          v32 = v76;
          goto LABEL_27;
        }
      }

      v72 = v78;
      sub_1D7EA261C(v78, v68);
      OUTLINED_FUNCTION_46_7();
      v73 = OUTLINED_FUNCTION_33_7();
      v74(v73);
      v91 = v56;
      OUTLINED_FUNCTION_15_2((v1 + 7), &v98);
      sub_1D8190E14();

      OUTLINED_FUNCTION_78_1();
      sub_1D8190E34();
      swift_endAccess();

      v66(v68, v80);
      v30 = *(v85 + 8);
      v31 = v72;
      goto LABEL_26;
    }

    swift_endAccess();
    (*(v87 + 8))(v88, v80);
    goto LABEL_23;
  }

LABEL_28:
  OUTLINED_FUNCTION_100();
}

double sub_1D7EB7498(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = *(a1 + 16) + a2;
  CGRectGetWidth(*&a2);
  v11.origin.x = a2;
  v11.origin.y = a3;
  v11.size.width = a4;
  v11.size.height = a5;
  CGRectGetHeight(v11);
  return v9;
}

Swift::Bool __swiftcall Blueprint.contains(identifier:)(Swift::String identifier)
{
  OUTLINED_FUNCTION_45_15();
  OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_16_50(v1[1], v1[2], v2, v3, v1, v4, v5, v6, v7, v8, v9, v10, v11, v12);
  OUTLINED_FUNCTION_4_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_56();
  sub_1D818F394();
  OUTLINED_FUNCTION_14_0();
  sub_1D818F364();
  OUTLINED_FUNCTION_46_15();
  return result;
}

uint64_t sub_1D7EB75CC(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7EB7624()
{
  v1 = *(*v0 + 128);
  v8 = *(*v0 + 112);
  v9[0] = *(*v0 + 88);
  v7 = *(&v9[0] + 1);
  v9[1] = v8;
  v2 = type metadata accessor for Blueprint(0, v9);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 136);
  v5 = type metadata accessor for BlueprintItem(0, v7, *(&v8 + 1), v4);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  MEMORY[0x1DA715E30](v0 + *(*v0 + 160));
  return v0;
}

Swift::Void __swiftcall Blueprint.remove(for:)(Swift::String a1)
{
  OUTLINED_FUNCTION_120();
  v15 = *(v3 + 16);
  v4 = OUTLINED_FUNCTION_33_19();
  OUTLINED_FUNCTION_107();
  v5 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21_11();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15_10();
  Blueprint.subscript.getter();
  OUTLINED_FUNCTION_43_0(v2, 1, v4);
  if (v12)
  {
    (*(v7 + 8))(v2, v5);
  }

  else
  {
    (*(v10 + 32))(v1, v2, v4);
    OUTLINED_FUNCTION_8_66();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_4_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_68();
    sub_1D81918C4();
    if (BYTE8(v15) != 1)
    {
      Blueprint.remove(at:)(v15);
    }

    v13 = OUTLINED_FUNCTION_85();
    v14(v13);
  }

  OUTLINED_FUNCTION_100();
}

void sub_1D7EB7964(double a1, double a2, double a3, double a4)
{
  if (CGRectIsEmpty(*&a1))
  {
    if (*(v4 + 56))
    {
      v5.origin.x = OUTLINED_FUNCTION_0_142();
      if (CGRectGetMaxY(v5) > 0.0)
      {
        v6.origin.x = OUTLINED_FUNCTION_1_102();
        CGRectIsEmpty(v6);
        v7.origin.x = OUTLINED_FUNCTION_0_142();
        CGRectGetHeight(v7);
        v8.origin.x = OUTLINED_FUNCTION_1_102();
        CGRectGetWidth(v8);
        v9.origin.x = OUTLINED_FUNCTION_0_142();
        CGRectGetWidth(v9);
      }
    }

    else
    {
      v10.origin.x = OUTLINED_FUNCTION_0_142();
      if (CGRectGetMaxX(v10) > 0.0)
      {
        v11.origin.x = OUTLINED_FUNCTION_1_102();
        CGRectIsEmpty(v11);
        v12.origin.x = OUTLINED_FUNCTION_0_142();
        CGRectGetWidth(v12);
        v13.origin.x = OUTLINED_FUNCTION_1_102();
        CGRectGetHeight(v13);
        v14.origin.x = OUTLINED_FUNCTION_0_142();
        CGRectGetHeight(v14);
      }
    }
  }

  OUTLINED_FUNCTION_1_102();
}

Swift::Void __swiftcall Blueprint.remove(at:)(Swift::Int at)
{
  OUTLINED_FUNCTION_120();
  v15 = *(v1 + 40);
  v16[0] = *(v1 + 16);
  OUTLINED_FUNCTION_34_20(*(v1 + 24));
  v17 = v2;
  v3 = type metadata accessor for BlueprintSection(0, v16);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15_10();
  OUTLINED_FUNCTION_4_2();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  v6 = swift_getWitnessTable();
  OUTLINED_FUNCTION_107();
  sub_1D818F394();
  sub_1D818F3B4();
  sub_1D818F334();
  v8 = type metadata accessor for BlueprintItem(255, v14, v15, v7);
  OUTLINED_FUNCTION_7_5();
  v9 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_44();
  v10 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  v11 = swift_getWitnessTable();
  v16[0] = v3;
  v16[1] = v8;
  v16[2] = v9;
  v17 = WitnessTable;
  v18 = v6;
  v19 = v10;
  OUTLINED_FUNCTION_24_30(v11);
  sub_1D818F764();
  v12 = OUTLINED_FUNCTION_85();
  v13(v12);
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7EB7C3C@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v4 = *(*v1 + 16);
  if (v3 == v4)
  {
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
    return result;
  }

  if (v3 >= v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = *v1 + 40 * v3;
  v1[1] = v3 + 1;
  v6 = v1[2];
  *&v9[0] = v6;
  result = sub_1D7E25380(v5 + 32, v9 + 8);
  if (__OFADD__(v6, 1))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v1[2] = v6 + 1;
  v8 = v9[1];
  *a1 = v9[0];
  a1[1] = v8;
  a1[2] = v9[2];
  return result;
}

uint64_t sub_1D7EB7CDC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  memcpy(__dst, (v0 + 64), 0x235uLL);
  sub_1D7E4C1A0(__dst);
  return swift_deallocClassInstance();
}

void sub_1D7EB7D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  OUTLINED_FUNCTION_17_37();
  if ((v11 & 1) == 0)
  {
    v12 = v10;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_16();
  if (v13 == v14)
  {
LABEL_7:
    v15 = *(v7 + 16);
    if (v12 <= v15)
    {
      v16 = *(v7 + 16);
    }

    else
    {
      v16 = v12;
    }

    if (v16)
    {
      v17 = OUTLINED_FUNCTION_16_44();
      sub_1D7EB0164(v17, v18, v19, v20);
      v21 = OUTLINED_FUNCTION_23_2();
      v22 = _swift_stdlib_malloc_size(v21);
      v21[2] = v15;
      v21[3] = 2 * ((v22 - 32) / 16);
      if (v8)
      {
LABEL_12:
        a7(v7 + 32, v15, v21 + 4);
        *(v7 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
      if (v8)
      {
        goto LABEL_12;
      }
    }

    sub_1D7E31228();
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v13)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t BlueprintActiveImpression.item.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 52);
  v6 = type metadata accessor for BlueprintItem(0, *(a1 + 24), *(a1 + 40), a2);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t sub_1D7EB7EF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D818E754();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2 + 6;
  }

  return result;
}

void sub_1D7EB7F98(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void *a4@<X3>, const void *a5@<X4>, uint64_t (**a8)()@<X8>, uint64_t a9, uint64_t a10)
{
  v12 = a1[4];
  v28 = a1[3];
  v26 = v12;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  memcpy(__dst, a4, 0x4E8uLL);
  memcpy(v32, a5, 0x235uLL);
  v27 = *(v12 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = swift_getAssociatedTypeWitness();
  v15 = swift_getAssociatedTypeWitness();
  v16 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = v14;
  v18 = swift_getAssociatedConformanceWitness();
  v19 = swift_getAssociatedConformanceWitness();
  v20 = swift_getAssociatedConformanceWitness();
  v21 = v27(a2, a3, __dst, v32, AssociatedTypeWitness, v17, v15, v16, AssociatedConformanceWitness, v18, v19, v20, v28, v26);
  v23 = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  *(v24 + 24) = v23;
  *a8 = sub_1D7E74D6C;
  a8[1] = v24;
}

uint64_t sub_1D7EB81D8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EB8224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D818E754();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 36));
    if (v8 >= 7)
    {
      return v8 - 6;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D7EB82CC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = sub_1D818E754();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for BlueprintImpressionManager.SectionContext(0, a3, a4, v11);
  *(a5 + *(result + 36)) = v9;
  return result;
}

uint64_t sub_1D7EB83A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a4;
  v12 = OUTLINED_FUNCTION_3_66();
  type metadata accessor for Blueprint(v12, v13);
  OUTLINED_FUNCTION_0_13();
  (*(v14 + 32))(a7, a1);
  v15 = OUTLINED_FUNCTION_3_66();
  active = type metadata accessor for BlueprintActiveImpressionSection(v15, v16);
  v18 = active[13];
  v19 = OUTLINED_FUNCTION_3_66();
  type metadata accessor for BlueprintSection(v19, v20);
  OUTLINED_FUNCTION_0_13();
  (*(v21 + 32))(a7 + v18, a2);
  v22 = active[14];
  sub_1D818E754();
  OUTLINED_FUNCTION_0_13();
  result = (*(v23 + 32))(a7 + v22, a3);
  *(a7 + active[15]) = v11;
  v25 = (a7 + active[16]);
  *v25 = a5;
  v25[1] = a6;
  return result;
}

void sub_1D7EB84E0()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_13_42(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_9_43();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9_43();
  swift_getAssociatedTypeWitness();
  v6 = OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_81_4(v6, v7, v8, v9, v10);
  OUTLINED_FUNCTION_23_22();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = OUTLINED_FUNCTION_12_45(AssociatedConformanceWitness);
  type metadata accessor for BlueprintActiveImpressionSection(v12, v13);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v14);
  v16 = OUTLINED_FUNCTION_1_144(v15, v30);
  type metadata accessor for BlueprintActiveImpressionSection(v16, v17);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_16_42();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_10_54();
  v21 = *(v20 + 280);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_69_5();
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_30_23();
    v22 = OUTLINED_FUNCTION_11_46();
    v23(v22);
    OUTLINED_FUNCTION_15_41();
    OUTLINED_FUNCTION_32_18();
    v24 = OUTLINED_FUNCTION_20_36();
    v25(v24);

    v26 = OUTLINED_FUNCTION_31_18();
    v27(v26);
    v28 = OUTLINED_FUNCTION_19_32();
    v29(v28);
  }

  OUTLINED_FUNCTION_100();
}

uint64_t BlueprintItem.isExpandable.getter()
{
  OUTLINED_FUNCTION_1_177();
  MEMORY[0x1EEE9AC00](v0);
  v2 = OUTLINED_FUNCTION_0_244(v1, v9[0]);
  v3(v2);
  v4 = sub_1D7E0631C(0, qword_1EDBBC1F8, &protocol descriptor for Expandable);
  if (OUTLINED_FUNCTION_3_137(v4))
  {
    OUTLINED_FUNCTION_2_162();
    v5 = OUTLINED_FUNCTION_3_1();
    v7 = v6(v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }

  else
  {
    OUTLINED_FUNCTION_5_89();
    sub_1D7E9DD24(v9, &qword_1ECA11EB0, qword_1EDBBC1F8, &protocol descriptor for Expandable);
    v7 = 0;
  }

  return v7 & 1;
}

unint64_t sub_1D7EB88FC()
{
  result = qword_1EDBB3430;
  if (!qword_1EDBB3430)
  {
    sub_1D7EAF54C(255, &qword_1EDBB3438, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E5F90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB3430);
  }

  return result;
}

void sub_1D7EB8980()
{
  OUTLINED_FUNCTION_14_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_16(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_4();
    if (v2)
    {
      OUTLINED_FUNCTION_0_1();
      sub_1D7E1B5C8(0, v6, v7, v8);
      v10 = OUTLINED_FUNCTION_22_0(v9);
      OUTLINED_FUNCTION_8_10(v10);
      OUTLINED_FUNCTION_26_0(v11);
      if (v1)
      {
LABEL_8:
        v12 = OUTLINED_FUNCTION_3_13();
        sub_1D80E5DDC(v12, v13, v14);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_7_9();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1D7EB8A44(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

void sub_1D7EB8AB8()
{
  OUTLINED_FUNCTION_31_1();
  if (!(v4 ^ v5 | v3))
  {
    *v0 = v1(v2 > 1);
  }
}

double sub_1D7EB8B0C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

BOOL sub_1D7EB8BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  (*(v13 + 16))(v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14, v11);
  sub_1D7E0631C(0, &qword_1EDBB50A0, &protocol descriptor for BlueprintLayoutFrameAttributesType);
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v21, v23);
    v15 = v24;
    v16 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    (*(v16 + 16))(v15, v16);
    v19 = v18 > 0.0 && v17 > 0.0;
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  else
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_1D7FBDB74(v21, &qword_1ECA0EC60, &qword_1EDBB50A0, &protocol descriptor for BlueprintLayoutFrameAttributesType);
    return (*(a9 + 8))(a5, a9) > 0.0;
  }

  return v19;
}

uint64_t sub_1D7EB8D50(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1D7EB8D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_6_95(a1, a2, a3, a4);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_2_161();

  *v4 = v6;
  return result;
}

uint64_t sub_1D7EB8E9C(char *a1, uint64_t (*a2)(uint64_t, char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *a1;
  type metadata accessor for BlueprintItem(255, a6, a10, a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v12, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_1D7EB8F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, char *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v27[0] = a6;
  v27[1] = a3;
  v17 = type metadata accessor for BlueprintLayoutItem(0, a7, a12, a4);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v27 - v18;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v21 = *(TupleTypeMetadata3 + 48);
  v22 = *(TupleTypeMetadata3 + 64);
  *a8 = a1;
  (*(*(a5 - 8) + 16))(&a8[v21], a2, a5);
  v28[0] = v27[0];
  v28[1] = a7;
  v28[2] = a11;
  v28[3] = a12;
  v23 = type metadata accessor for BlueprintLayoutSection(0, v28);
  BlueprintLayoutSection.subscript.getter(a1, v23, v24, v25);
  (*(*(a7 - 8) + 32))(&a8[v22], v19, a7);
  return __swift_storeEnumTagSinglePayload(a8, 0, 1, TupleTypeMetadata3);
}

uint64_t sub_1D7EB9118(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40 = a2;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v10 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - v15;
  v17 = *(v10 + 16);
  v41 = a1;
  v17(&v38 - v15, a1, TupleTypeMetadata3, v14);
  v39 = *(TupleTypeMetadata3 + 48);
  sub_1D7EB952C();
  if (swift_dynamicCast())
  {
    sub_1D7E17C84(&v46, v49);
    v18 = *(a5 - 8);
    v19 = *(v18 + 8);
    v20 = &v16[v39];
    v21 = v19;
    v39 = v18 + 8;
    v19(v20, a5);
    v22 = v40;
    (v17)(v12, v40, TupleTypeMetadata3);
    v23 = *(TupleTypeMetadata3 + 48);
    if (swift_dynamicCast())
    {
      sub_1D7E17C84(v44, &v46);
      v21(&v12[v23], a5);
      v24 = *v41;
      v25 = v50;
      v26 = v51;
      __swift_project_boxed_opaque_existential_1(v49, v50);
      (*(v26 + 8))(v44, v25, v26);
      v27 = *&v44[0];
      v28 = BYTE8(v44[0]);
      v29 = *v22;
      v30 = *(&v47 + 1);
      v31 = v48;
      __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
      (*(v31 + 8))(&v42, v30, v31);
      v32 = v42;
      v33 = v43;
      sub_1D7EB9588();
      if (v28)
      {
        if (v28 != 2 || v27)
        {
          if (v33)
          {
            if (v33 == 2 && !v32)
            {
              goto LABEL_40;
            }

            if (v28 != 1)
            {
              v34 = v28 == 2 && v27 == 1;
              if (!v34 && v33 != 1 && (v33 != 2 || v32 != 1))
              {
                result = sub_1D8192624();
                __break(1u);
                return result;
              }
            }
          }

          v32 = 0;
LABEL_40:
          __swift_destroy_boxed_opaque_existential_1Tm(&v46);
          __swift_destroy_boxed_opaque_existential_1Tm(v49);
          return v32;
        }

        if (v33)
        {
          if (v33 == 2)
          {
            if (v32)
            {
              v36 = 1;
            }

            else
            {
              v36 = v24 < v29;
            }

            goto LABEL_37;
          }

LABEL_34:
          v32 = 1;
          goto LABEL_40;
        }

        v36 = v24 < v32;
      }

      else
      {
        if (v33)
        {
          if (v33 == 2)
          {
            if (v32)
            {
              v36 = 1;
            }

            else
            {
              v36 = v27 < v29;
            }

            goto LABEL_37;
          }

          goto LABEL_34;
        }

        v36 = v27 < v32;
      }

LABEL_37:
      v32 = v36;
      goto LABEL_40;
    }

    v45 = 0;
    memset(v44, 0, sizeof(v44));
    sub_1D7FC1970(v44);
    v21(&v12[v23], a5);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
  }

  else
  {
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    sub_1D7FC1970(&v46);
    (*(*(a5 - 8) + 8))(&v16[v39], a5);
    v22 = v40;
  }

  return *v41 < *v22;
}

unint64_t sub_1D7EB952C()
{
  result = qword_1EDBBB330;
  if (!qword_1EDBBB330)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBBB330);
  }

  return result;
}

void sub_1D7EB9588()
{
  if (!qword_1EDBBBF60)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBBBF60);
    }
  }
}

uint64_t sub_1D7EB961C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v28 = a6;
  v9 = sub_1D818E994();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v15 = &v25 - v14;
  v16 = *(a4 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v15, a1, TupleTypeMetadata3, v18);
  v22 = *(TupleTypeMetadata3 + 48);
  v23 = *(TupleTypeMetadata3 + 64);
  (*(v16 + 32))(v20, &v15[v22], a4);
  swift_dynamicCast();
  MEMORY[0x1DA710B60](*a1, v27);
  sub_1D7EB98BC(v11, a3, v28);
  return (*(*(v26 - 8) + 8))(&v15[v23]);
}

uint64_t sub_1D7EB98BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_3_0();
  (*(v6 + 32))(a3);
  v9 = *(type metadata accessor for BlueprintTraversalCollectionItem(0, a2, v7, v8) + 28);
  sub_1D818E994();
  OUTLINED_FUNCTION_8();
  v11 = *(v10 + 32);

  return v11(a3 + v9, a1);
}

void sub_1D7EB9970(void *a1, uint64_t a2, void *a3, char a4)
{
  if (a1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v7 = a1;

      v8 = a3[3];
      v9 = a3[4];
      __swift_project_boxed_opaque_existential_1(a3, v8);
      v10 = (*(v9 + 16))(v8, v9);
      v12 = v11;
      v13._countAndFlagsBits = v10;
      v13._object = v12;
      MemoryImageCache.cache(image:for:expires:)(v7, v13, a4 & 1);
    }
  }
}

Swift::Void __swiftcall MemoryImageCache.cache(image:for:expires:)(UIImage image, Swift::String a2, Swift::Bool expires)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v8 = v3[6];
  v9 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v8);
  OUTLINED_FUNCTION_0_8();
  v10 = swift_allocObject();
  swift_weakInit();
  v11[2] = v10;
  v11[3] = image.super.isa;
  v11[4] = countAndFlagsBits;
  v11[5] = object;
  v12 = expires;
  (*(v9 + 8))(sub_1D7EB9B38, v11, v8, v9);
}

TeaUI::BlueprintLayoutSectionViewState_optional __swiftcall BlueprintLayout.viewState(at:)(Swift::Int at)
{
  v4 = v2;
  v5 = OUTLINED_FUNCTION_6_86(at, v1);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_3_124();
  v9 = OUTLINED_FUNCTION_14_0();
  BlueprintLayout.subscript.getter(v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
  v23 = (v3 + *(v5 + 56));
  v24 = *v23;
  v25 = v23[1];
  v26 = v23[2];
  v27 = *(v7 + 8);
  sub_1D8190DB4();
  v28 = v27(v3, v5);
  *v4 = v24;
  v4[1] = v25;
  v4[2] = v26;
  result.value.items._rawValue = v30;
  result.value.visibleItemsCount = v29;
  result.value.itemsCount = v28;
  result.is_nil = v31;
  return result;
}

double sub_1D7EB9C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_1D818FC54();
  }

  return result;
}

uint64_t sub_1D7EB9CE8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

void *BlueprintLayoutCollection.layoutAttributes(at:)()
{
  v1 = *(v0 + 1216);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_1D7E7DB08();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(v1 + 56) + 8 * v2);
  v5 = v4;
  return v4;
}

uint64_t BlueprintLayout.layoutOptions.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x235uLL);
  memcpy(a1, v1, 0x235uLL);
  return sub_1D7E222B8(__dst, v4);
}

void sub_1D7EB9DD8(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_1D7EB9F0C();
    v12 = v11;
    v13 = a2[3];
    v14 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v13);
    v15 = (*(v14 + 16))(v13, v14);
    if (v12)
    {
      if (v10 == v15 && v12 == v16)
      {
      }

      else
      {
        v18 = sub_1D8192634();

        if ((v18 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      a3(a5);
    }

    else
    {
    }

LABEL_12:
  }
}

uint64_t sub_1D7EB9F0C()
{

  sub_1D818F534();

  return v1;
}

Swift::Bool __swiftcall RendererEnvironment.match(state:)(TeaUI::RendererState state)
{
  v1 = *state.rawValue;
  RendererEnvironment.rendererOptions.getter(v4);
  v3 = v1;
  return RendererOptions.match(state:)(&v3);
}

Swift::Bool __swiftcall RendererOptions.match(state:)(TeaUI::RendererState state)
{
  if ((*state.rawValue & 1) != 0 && (v1[128] & 1) != 0 || (*state.rawValue & 2) != 0 && !v1[129] || (((*state.rawValue & 4) != 0) & v1[132]) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = ((*state.rawValue & 0x10) == 0) | v1[130] ^ 1;
    if ((((*state.rawValue & 8) != 0) & v1[131]) != 0)
    {
      v2 = 0;
    }
  }

  return v2 & 1;
}

uint64_t sub_1D7EBA060(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t UIImage.croppedImage(of:with:scale:byRoundingCorners:cornerRadius:)(uint64_t a1)
{
  v2[0] = 0;
  v2[1] = 0;
  v3 = 0;
  return UIImage.croppedImage(of:with:scale:byRoundingCorners:cornerRadius:border:supplementActions:)(a1, v2, 0, 0);
}

void UIImage.croppedImage(of:with:scale:clipPath:border:supplementActions:)(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t aBlock, uint64_t a12, uint64_t a13, void *a14, uint64_t (*a15)(), uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_9_20();
  a35 = v37;
  a36 = v40;
  v41 = v36;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  OUTLINED_FUNCTION_7_32();
  v59 = *v58;
  v60 = v58[1];
  v61 = *(v58 + 16);
  v64 = v62 / v63;
  [v41 size];
  CGRect.cropRectAroundFocalFrame(targetSize:targetAspectRation:)(v65, v66, v64, v57, v55, v53, v51);
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v75 = [v41 imageRendererFormat];
  [v75 setScale_];
  [v75 setOpaque_];
  v76 = objc_allocWithZone(MEMORY[0x1E69DCA78]);
  v77 = OUTLINED_FUNCTION_1_23();
  v88 = [v78 v79];
  v80 = swift_allocObject();
  *(v80 + 16) = v47;
  *(v80 + 24) = v39;
  *(v80 + 32) = v38;
  *(v80 + 40) = v68;
  *(v80 + 48) = v70;
  *(v80 + 56) = v72;
  *(v80 + 64) = v74;
  *(v80 + 72) = v41;
  *(v80 + 80) = v45;
  *(v80 + 88) = v43;
  *(v80 + 96) = v59;
  v81 = v60;
  *(v80 + 104) = v60;
  *(v80 + 112) = v61;
  OUTLINED_FUNCTION_0_32();
  v82 = swift_allocObject();
  *(v82 + 16) = sub_1D7EBA5D4;
  *(v82 + 24) = v80;
  a15 = sub_1D7E6FA30;
  a16 = v82;
  OUTLINED_FUNCTION_1_70();
  a12 = 1107296256;
  OUTLINED_FUNCTION_0_93();
  a13 = v83;
  a14 = &block_descriptor_33;
  v84 = _Block_copy(&aBlock);
  v85 = v47;
  v86 = v41;
  sub_1D7E19F24(v45, v43);
  v87 = v81;

  [v88 imageWithActions_];

  _Block_release(v84);
  LOBYTE(v45) = OUTLINED_FUNCTION_22_11(v82, "", 86, 250);

  if (v45)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_8_27();
  }
}

uint64_t sub_1D7EBA420()
{
  if (*(v0 + 80))
  {
  }

  return swift_deallocObject();
}

void CGRect.cropRectAroundFocalFrame(targetSize:targetAspectRation:)(double a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v13 = a1 * a4;
  v16 = a2 * a5;
  v17.origin.x = a4;
  v17.origin.y = a5;
  v17.size.width = a6;
  v17.size.height = a7;
  v14 = CGRectGetWidth(v17) * a1;
  v18.origin.x = a4;
  v18.origin.y = a5;
  v18.size.width = a6;
  v18.size.height = a7;
  v15 = CGRectGetHeight(v18) * a2;
  v19.origin.x = v13;
  v19.origin.y = v16;
  v19.size.width = v14;
  v19.size.height = v15;
  CGRectGetMidX(v19);
  v20.origin.x = v13;
  v20.origin.y = v16;
  v20.size.width = v14;
  v20.size.height = v15;
  CGRectGetMidY(v20);
}

void sub_1D7EBA5F8(void *a1, id a2, void *a3, void (*a4)(uint64_t, double, double, double, double), double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, void *a12, char a13)
{
  [a2 addClip];
  v25 = a5 / a9;
  v26 = -(a5 / a9 * a7);
  v27 = -(v25 * a8);
  [a3 size];
  v29 = v25 * v28;
  [a3 size];
  v31 = v25 * v30;
  if (a4)
  {
    a4(a1, v26, v27, v29, v31);
  }

  v35.origin.x = v26;
  v35.origin.y = v27;
  v35.size.width = v29;
  v35.size.height = v31;
  v36 = CGRectIntegral(v35);
  [a3 drawInRect_];
  if (a12)
  {
    v33[0] = a11;
    v33[1] = a12;
    v34 = a13;
    v32 = a12;
    sub_1D7FCC360(v33, a1, a2, a5, a6);
  }
}

void sub_1D7EBA754()
{
  v1 = v0;
  *&v114 = sub_1D8190C64();
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v112 = &v106 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = CACurrentMediaTime();
  sub_1D7EBB4A4(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v115 = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D819FAB0;
  v6 = *(v0 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_operationDescription);
  v7 = *(v0 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_operationDescription + 8);
  v8 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D7E13BF4();
  *(v5 + 64) = v9;
  v116 = v6;
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  v10 = sub_1D7E0A1A8(0, &qword_1EDBBE110, 0x1E69E9BF8);
  sub_1D8190DB4();
  v11 = sub_1D8191E44();
  v12 = sub_1D81919E4();
  sub_1D818FD44("%{public}@ started", 18, 2, &dword_1D7DFF000, v11, v12, v5);

  v13 = *(v1 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_underlyingCache);
  v14 = (v1 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_request);
  v15 = *(v1 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_request + 24);
  v16 = *(v1 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_request + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_request), v15);
  (*(v16 + 16))(v15, v16);
  v17 = sub_1D8190EE4();

  v18 = [v13 fetchImageForKey_];

  if (v18)
  {
    v19 = CACurrentMediaTime();
    v20 = v9;
    v21 = *(v1 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_processor + 24);
    v22 = *(v1 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_processor + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_processor), v21);
    v23 = (*(v22 + 16))(v14, v18, v21, v22);
    v24 = *(v1 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_image);
    *(v1 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_image) = v23;

    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D819FAC0;
    *(v25 + 56) = v8;
    *(v25 + 64) = v20;
    *(v25 + 32) = v116;
    *(v25 + 40) = v7;
    sub_1D8190DB4();
    v26 = CACurrentMediaTime();
    v27 = MEMORY[0x1E69E6438];
    *(v25 + 96) = MEMORY[0x1E69E63B0];
    *(v25 + 104) = v27;
    *(v25 + 72) = v26 - v19;
    v28 = sub_1D8191E44();
    v29 = sub_1D81919E4();
    sub_1D818FD44("%{public}@ processed image with time: %f", 40, 2, &dword_1D7DFF000, v28, v29, v25);

    sub_1D7EBB284(v1, v3);
    return;
  }

  v107 = v13;
  v109 = v7;
  v110 = v10;
  v117 = dispatch_group_create();
  v30 = v14[3];
  v31 = v14[4];
  v111 = v14;
  __swift_project_boxed_opaque_existential_1(v14, v30);
  v32 = (*(v31 + 8))(v30, v31);
  v33 = v32;
  v34 = 0;
  v35 = v32 + 64;
  v36 = 1 << *(v32 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v32 + 64);
  v108 = v1;
  v39 = (v1 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_downloader);
  v40 = (v36 + 63) >> 6;
  v41 = v9;
  if (!v38)
  {
LABEL_9:
    while (1)
    {
      v42 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v42 >= v40)
      {
        v38 = 0;
        v124 = 0;
        v122 = 0u;
        v123 = 0u;
        v121 = 0u;
        goto LABEL_14;
      }

      v38 = *(v35 + 8 * v42);
      ++v34;
      if (v38)
      {
        v34 = v42;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

  while (1)
  {
    v42 = v34;
LABEL_13:
    v43 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    v44 = v43 | (v42 << 6);
    v45 = (*(v33 + 48) + 16 * v44);
    v47 = *v45;
    v46 = v45[1];
    sub_1D7E0E768(*(v33 + 56) + 40 * v44, &v118);
    *&v121 = v47;
    *(&v121 + 1) = v46;
    sub_1D7E05450(&v118, &v122);
    sub_1D8190DB4();
    v9 = v41;
LABEL_14:
    v125 = v121;
    v126 = v122;
    v127 = v123;
    v128 = v124;
    if (!*(&v121 + 1))
    {
      break;
    }

    sub_1D7E05450(&v126, &v121);
    v48 = *(&v122 + 1);
    v49 = v123;
    __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
    (*(v49 + 16))(&v118, v48, v49);
    v50 = v119;
    if (!v119)
    {
      sub_1D7F5867C(&v118);
LABEL_19:
      v54 = v39[3];
      v55 = v39[4];
      __swift_project_boxed_opaque_existential_1(v39, v54);
      (*(v55 + 8))(&v121, v117, v54, v55);
      goto LABEL_20;
    }

    v51 = v120;
    __swift_project_boxed_opaque_existential_1(&v118, v119);
    (*(v51 + 16))(v50, v51);
    v53 = v52;
    __swift_destroy_boxed_opaque_existential_1Tm(&v118);
    if (!v53)
    {
      goto LABEL_19;
    }

LABEL_20:
    v8 = MEMORY[0x1E69E6158];
    v9 = v41;
    __swift_destroy_boxed_opaque_existential_1Tm(&v121);
    if (!v38)
    {
      goto LABEL_9;
    }
  }

  v56 = CACurrentMediaTime();
  v57 = v112;
  sub_1D8190C44();
  sub_1D8191A44();
  (*(v113 + 8))(v57, v114);
  v58 = swift_allocObject();
  v114 = xmmword_1D819FAC0;
  *(v58 + 16) = xmmword_1D819FAC0;
  *(v58 + 56) = v8;
  *(v58 + 64) = v9;
  *(v58 + 32) = v116;
  *(v58 + 40) = v109;
  sub_1D8190DB4();
  v59 = CACurrentMediaTime();
  v60 = MEMORY[0x1E69E6438];
  *(v58 + 96) = MEMORY[0x1E69E63B0];
  *(v58 + 104) = v60;
  *(v58 + 72) = v59 - v56;
  v61 = sub_1D8191E44();
  v62 = sub_1D81919E4();
  sub_1D818FD44("%{public}@ downloaded assets with time: %f", 42, 2, &dword_1D7DFF000, v61, v62, v58);

  v63 = v111[3];
  v64 = v111[4];
  __swift_project_boxed_opaque_existential_1(v111, v63);
  v65 = (*(v64 + 8))(v63, v64);
  v66 = v65;
  v67 = 0;
  v68 = v65 + 64;
  v69 = 1 << *(v65 + 32);
  v70 = -1;
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  v71 = v70 & *(v65 + 64);
  v72 = (v69 + 63) >> 6;
  if (!v71)
  {
LABEL_27:
    while (1)
    {
      v73 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        break;
      }

      if (v73 >= v72)
      {
        v71 = 0;
        v124 = 0;
        v122 = 0u;
        v123 = 0u;
        v121 = 0u;
        goto LABEL_32;
      }

      v71 = *(v68 + 8 * v73);
      ++v67;
      if (v71)
      {
        v67 = v73;
        goto LABEL_31;
      }
    }

LABEL_48:
    __break(1u);
    return;
  }

  while (1)
  {
    v73 = v67;
LABEL_31:
    v74 = __clz(__rbit64(v71));
    v71 &= v71 - 1;
    v75 = v74 | (v73 << 6);
    v76 = (*(v66 + 48) + 16 * v75);
    v78 = *v76;
    v77 = v76[1];
    sub_1D7E0E768(*(v66 + 56) + 40 * v75, &v118);
    *&v121 = v78;
    *(&v121 + 1) = v77;
    sub_1D7E05450(&v118, &v122);
    sub_1D8190DB4();
LABEL_32:
    v125 = v121;
    v126 = v122;
    v127 = v123;
    v128 = v124;
    if (!*(&v121 + 1))
    {
      break;
    }

    sub_1D7E05450(&v126, &v121);
    v79 = *(&v122 + 1);
    v80 = v123;
    __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
    (*(v80 + 8))(v79, v80);
    if (v81)
    {
    }

    else
    {
      v82 = *(&v122 + 1);
      v83 = v123;
      __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
      v84 = (*(v83 + 24))(v82, v83);
      if (!v84)
      {
        sub_1D7F58628();
        v103 = swift_allocError();
        *v104 = 0;

        v86 = v108;
        v105 = *(v108 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_error);
        *(v108 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_error) = v103;

        __swift_destroy_boxed_opaque_existential_1Tm(&v121);
        goto LABEL_46;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v121);
    if (!v71)
    {
      goto LABEL_27;
    }
  }

  v85 = CACurrentMediaTime();
  v86 = v108;
  v87 = *(v108 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_processor + 24);
  v88 = *(v108 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_processor + 32);
  __swift_project_boxed_opaque_existential_1((v108 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_processor), v87);
  v89 = v111;
  v90 = (*(v88 + 8))(v111, v87, v88);
  if (v90)
  {
    v91 = v90;
    v92 = swift_allocObject();
    *(v92 + 16) = v114;
    *(v92 + 56) = MEMORY[0x1E69E6158];
    *(v92 + 64) = v41;
    *(v92 + 32) = v116;
    *(v92 + 40) = v109;
    sub_1D8190DB4();
    v93 = CACurrentMediaTime();
    *(v92 + 96) = MEMORY[0x1E69E63B0];
    *(v92 + 104) = MEMORY[0x1E69E6438];
    *(v92 + 72) = v93 - v85;
    v94 = sub_1D8191E44();
    v95 = sub_1D81919E4();
    sub_1D818FD44("%{public}@ processed image with time: %f", 40, 2, &dword_1D7DFF000, v94, v95, v92);

    if ((*(v86 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_expires) & 1) == 0)
    {
      v96 = v89[3];
      v97 = v89[4];
      __swift_project_boxed_opaque_existential_1(v89, v96);
      (*(v97 + 16))(v96, v97);
      v98 = sub_1D8190EE4();

      [v107 cache:v91 forKey:v98];
    }

    v99 = *(v86 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_image);
    *(v86 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_image) = v91;
  }

  else
  {
    sub_1D7F58628();
    v100 = swift_allocError();
    *v101 = 1;

    v102 = *(v86 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_error);
    *(v86 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_error) = v100;
  }

LABEL_46:
  sub_1D7EBB284(v86, v3);
}

void sub_1D7EBB284(uint64_t a1, double a2)
{
  v4 = CACurrentMediaTime();
  sub_1D7EBB4A4(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D81A3F90;
  v7 = *(a1 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_operationDescription);
  v6 = *(a1 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_operationDescription + 8);
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D7E13BF4();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;
  v8 = *(a1 + OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_creationTime);
  v9 = MEMORY[0x1E69E63B0];
  v10 = MEMORY[0x1E69E6438];
  *(v5 + 96) = MEMORY[0x1E69E63B0];
  *(v5 + 104) = v10;
  *(v5 + 72) = a2 - v8;
  *(v5 + 136) = v9;
  *(v5 + 144) = v10;
  *(v5 + 112) = v4 - a2;
  *(v5 + 176) = v9;
  *(v5 + 184) = v10;
  *(v5 + 152) = v4 - v8;
  sub_1D7E0A1A8(0, &qword_1EDBBE110, 0x1E69E9BF8);
  sub_1D8190DB4();
  v12 = sub_1D8191E44();
  v11 = sub_1D81919E4();
  sub_1D818FD44("%{public}@ finished with wait time: %f, run time: %f, total time: %f", 68, 2, &dword_1D7DFF000, v12, v11, v5);
}

void sub_1D7EBB3F4(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_115(a1, a2))
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_35();
    v9 = sub_1D7E0631C(v6, v7, v8);
    v10 = v5(v3, v9);
    if (!v11)
    {
      atomic_store(v10, v2);
    }
  }
}

void sub_1D7EBB454(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v3 = OUTLINED_FUNCTION_7_12();
    v4(v3);
    v5 = sub_1D8191E84();
    if (!v6)
    {
      atomic_store(v5, v2);
    }
  }
}

void sub_1D7EBB4A4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D7E0631C(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D7EBB518(uint64_t a1, void (*a2)(void *, void *))
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = [Strong isCancelled];

  if ((v4 & 1) == 0)
  {
    v5 = swift_unknownObjectUnownedLoadStrong();
    v6 = *&v5[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_image];
    v10 = v6;

    v7 = swift_unknownObjectUnownedLoadStrong();
    v8 = *&v7[OBJC_IVAR____TtC5TeaUIP33_2088E17F5F01413CA71FFC03BB03F42919ImageCacheOperation_error];
    v9 = v8;

    a2(v6, v8);
  }
}

double sub_1D7EBB61C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v14 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    sub_1D7E0E768(a3, v21);
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = v14;
    sub_1D7E05450(v21, v15 + 32);
    *(v15 + 72) = a7 & 1;
    *(v15 + 80) = a2;
    v16 = a1;
    v17 = a2;
    sub_1D7EBB884(a4, a5, sub_1D7EBC9A4, v15, v18, v19, v20);
  }

  return result;
}

uint64_t sub_1D7EBB784()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EBB7B8()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocObject();
}

void sub_1D7EBB80C()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1D7FE5548();
  }
}

void sub_1D7EBB848()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1D80B81D8();
  }
}

double sub_1D7EBB884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6, __n128 a7)
{
  v8 = v7;
  v13 = sub_1D8190BD4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D8190C34();
  v17 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *(v8 + 16);
  v20 = swift_allocObject();
  v20[2] = v8;
  v20[3] = a1;
  v20[4] = a2;
  v20[5] = a3;
  v20[6] = a4;
  aBlock[4] = sub_1D7EBBBE4;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7E64940;
  aBlock[3] = &block_descriptor_70;
  v21 = _Block_copy(aBlock);

  sub_1D8190DB4();

  sub_1D8190BF4();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1D7E1CF48(&qword_1EDBB34B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v22 = MEMORY[0x1E69E7F60];
  sub_1D7E1A888(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D7E1CF90(&qword_1EDBB3340, &qword_1EDBB3348, v22);
  sub_1D8192004();
  MEMORY[0x1DA713CE0](0, v19, v16, v21);
  _Block_release(v21);
  (*(v14 + 8))(v16, v13);
  (*(v17 + 8))(v19, v25);

  return result;
}

uint64_t sub_1D7EBBB8C()
{

  return swift_deallocObject();
}

double sub_1D7EBBBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6, __n128 a7)
{
  v24 = a4;
  v11 = sub_1D8190BD4();
  v27 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D8190C34();
  v14 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v18 = sub_1D7EBBF70(a2, a3, v17);
  swift_endAccess();
  v25 = *(a1 + 32);
  v19 = swift_allocObject();
  v19[2] = v24;
  v19[3] = a5;
  v19[4] = v18;
  aBlock[4] = sub_1D7EBC180;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7E64940;
  aBlock[3] = &block_descriptor_76;
  v20 = _Block_copy(aBlock);

  sub_1D8190BF4();
  v28 = MEMORY[0x1E69E7CC0];
  sub_1D7E1CF48(&qword_1EDBB34B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v21 = MEMORY[0x1E69E7F60];
  sub_1D7E1A888(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D7E1CF90(&qword_1EDBB3340, &qword_1EDBB3348, v21);
  sub_1D8192004();
  MEMORY[0x1DA713CE0](0, v16, v13, v20);
  _Block_release(v20);

  (*(v27 + 8))(v13, v11);
  (*(v14 + 8))(v16, v26);

  return result;
}

uint64_t sub_1D7EBBF30()
{

  return swift_deallocObject();
}

void sub_1D7EBC044(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v3 = OUTLINED_FUNCTION_7_12();
    sub_1D7EBC0A4(v3, v4, v5, v6);
    v7 = sub_1D8192394();
    if (!v8)
    {
      atomic_store(v7, v2);
    }
  }
}

void sub_1D7EBC0A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D7EBC114(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1D7EBC18C();
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  a1(v5);
}

void sub_1D7EBC18C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1 + 48;
  v3 = *(v1 + 16);
  sub_1D8190DB4();
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = (v2 + 24 * v4);
  while (v3 != v4)
  {
    if (v4 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_22;
    }

    v9 = *(v7 - 2);
    v8 = *(v7 - 1);
    v10 = *v7;

    v11 = sub_1D818F8D4();
    if (v11)
    {
      v12 = *(v11 + 16);

      if ((v12 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D7EBC4C4();
        }

        v13 = *(v6 + 16);
        if (v13 >= *(v6 + 24) >> 1)
        {
          sub_1D7EBC4C4();
        }

        ++v4;
        *(v6 + 16) = v13 + 1;
        v14 = (v6 + 24 * v13);
        v14[4] = v9;
        v14[5] = v8;
        v14[6] = v10;
        v5 = MEMORY[0x1E69E7CC0];
        v2 = v1 + 48;
        goto LABEL_2;
      }
    }

    v7 += 3;
    ++v4;
  }

  v15 = *(v6 + 16);
  if (!v15)
  {
LABEL_19:

    return;
  }

  sub_1D7EBC584(0, v15, 0);
  v16 = 0;
  v17 = 32;
  v18 = v5;
  while (v16 < *(v6 + 16))
  {
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    v21 = *(v6 + v17);

    if (v19 >= v20 >> 1)
    {
      sub_1D7EBC584(v20 > 1, v19 + 1, 1);
    }

    ++v16;
    *(v18 + 16) = v19 + 1;
    *(v18 + 16 * v19 + 32) = v21;
    v17 += 24;
    if (v15 == v16)
    {
      goto LABEL_19;
    }
  }

LABEL_22:
  __break(1u);
}

void sub_1D7EBC3C8()
{
  OUTLINED_FUNCTION_14_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_16(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_4();
    if (v2)
    {
      sub_1D7EB0164(0, &qword_1EDBB2BF8, sub_1D7EE5DA8, MEMORY[0x1E69E6F90]);
      v7 = OUTLINED_FUNCTION_22_0(v6);
      OUTLINED_FUNCTION_3_127(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_3_13();
        sub_1D80E5C20(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_1D7EBC4E4(0, &qword_1EDBB2B78);
    OUTLINED_FUNCTION_7_9();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1D7EBC4E4(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    v3 = OUTLINED_FUNCTION_35();
    v4(v3);
    sub_1D7EB0164(255, &qword_1EDBBC428, type metadata accessor for ImageCacheInterestToken, MEMORY[0x1E69D6A90]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, v2);
    }
  }
}

void sub_1D7EBC5D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8)
{
  v9 = a5;
  v31 = a1;
  v13 = sub_1D8190BD4();
  v30 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D8190C34();
  v28 = *(v16 - 8);
  v29 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0, 0x1E69E9610);
  v27 = sub_1D8191AB4();
  sub_1D7E0E768(a4, v33);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  sub_1D7E05450(v33, v19 + 32);
  *(v19 + 72) = v9;
  aBlock[4] = sub_1D7EB98AC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7E64940;
  aBlock[3] = &block_descriptor_82;
  v20 = _Block_copy(aBlock);
  v21 = a2;

  sub_1D8190BF4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7E1CF48(&qword_1EDBB34B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v22 = MEMORY[0x1E69E7F60];
  sub_1D7E1A888(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D7E1CF90(&qword_1EDBB3340, &qword_1EDBB3348, v22);
  sub_1D8192004();
  v23 = v27;
  MEMORY[0x1DA713CE0](0, v18, v15, v20);
  _Block_release(v20);

  (*(v30 + 8))(v15, v13);
  (*(v28 + 8))(v18, v29);
  v24 = *(v31 + 16);
  if (v24)
  {
    v25 = v31 + 40;
    do
    {
      v26 = *(v25 - 8);
      aBlock[0] = a2;
      *&v33[0] = a6;

      v26(aBlock, v33);

      v25 += 16;
      --v24;
    }

    while (v24);
  }
}

uint64_t sub_1D7EBC95C()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1D7EBCA04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7, __n128 a8)
{
  v31 = a6;
  v12 = sub_1D8190BD4();
  v33 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1D8190C34();
  v15 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E11E0C();
  v18 = sub_1D8191AB4();
  sub_1D7E0E768(a4, v35);
  v19 = swift_allocObject();
  v19[2] = a3;
  sub_1D7E05450(v35, (v19 + 3));
  v20 = v31;
  v19[8] = a5;
  v19[9] = v20;
  v19[10] = a1;
  aBlock[4] = sub_1D7EB9D28;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7E64940;
  aBlock[3] = &block_descriptor_45_0;
  v21 = _Block_copy(aBlock);
  v22 = a1;

  v23 = sub_1D8190BF4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7EBCD5C(v28, v29, v23, v24, v25, v26, v27);
  sub_1D7E40724(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D7EBCDB4();
  sub_1D8192004();
  MEMORY[0x1DA713CE0](0, v17, v14, v21);
  _Block_release(v21);

  (*(v33 + 8))(v14, v12);
  return (*(v15 + 8))(v17, v32);
}

uint64_t sub_1D7EBCCF8()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocObject();
}

unint64_t sub_1D7EBCD5C(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = qword_1EDBB34B0;
  if (!qword_1EDBB34B0)
  {
    sub_1D8190BD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB34B0);
  }

  return result;
}

unint64_t sub_1D7EBCDB4()
{
  result = qword_1EDBB3340;
  if (!qword_1EDBB3340)
  {
    sub_1D7E548CC(255, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB3340);
  }

  return result;
}

uint64_t sub_1D7EBCE40()
{
  sub_1D7EBCE70();

  return swift_deallocClassInstance();
}

void sub_1D7EBCF4C()
{
  v0 = sub_1D7E2E834();
  BlueprintCollectionViewLayoutTransition.targetContentOffset.getter(v0);
}

double sub_1D7EBCFB4(void *a1)
{
  v1 = a1;
  sub_1D7EBCF4C();
  v3 = v2;

  return v3;
}

uint64_t BlueprintCollectionViewLayoutTransition.targetContentOffset.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_0_136(a1, &qword_1EDBB4678);
  OUTLINED_FUNCTION_50(v2);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - v4;
  v6 = OBJC_IVAR____TtC5TeaUI39BlueprintCollectionViewLayoutTransition_state;
  OUTLINED_FUNCTION_4_57();
  sub_1D7E6C3B4(v1 + v6, v5);
  v7 = type metadata accessor for BlueprintCollectionViewLayoutTransition.State(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) == 1)
  {
    return 0;
  }

  sub_1D7E319A8(0);
  v8 = *&v5[*(v9 + 48)];
  sub_1D818E794();
  OUTLINED_FUNCTION_8();
  (*(v10 + 8))(v5);
  return v8;
}

void sub_1D7EBD140(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  OUTLINED_FUNCTION_13(a1);
}

uint64_t sub_1D7EBD160(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1D7EBD19C(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_1D7EBD240@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1D7EE2164(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1D7EBD2B8(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1_9(a1);
  result = sub_1D7EBD128(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1D7EBD2E0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1_9(a1);
  result = sub_1D7EBD138(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1D7EBD368(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1_9(a1);
  result = sub_1D7EBD1CC(v2, v3);
  *v1 = result;
  return result;
}

void *sub_1D7EBD3B8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D7EBD3D0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1D7EDFB94(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1D7EBD404(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return OUTLINED_FUNCTION_12_5(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7EBD41C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1D7EBD448(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_12_5(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7EBD6FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D7EECE68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D7EBD7DC()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBD814(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    return OUTLINED_FUNCTION_37_1(*(a1 + 8));
  }

  sub_1D818F824();
  OUTLINED_FUNCTION_95();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[6];
  }

  else
  {
    sub_1D818E794();
    OUTLINED_FUNCTION_95();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v10 = a3[7];
    }

    else
    {
      v9 = sub_1D818E644();
      v10 = a3[8];
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

uint64_t sub_1D7EBD910(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    sub_1D818F824();
    OUTLINED_FUNCTION_95();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[6];
    }

    else
    {
      sub_1D818E794();
      OUTLINED_FUNCTION_95();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        v10 = sub_1D818E644();
        v11 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1D7EBDA54(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return OUTLINED_FUNCTION_98_0(*a1);
  }

  else
  {
    return OUTLINED_FUNCTION_0_2();
  }
}

uint64_t sub_1D7EBDA6C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 73))
  {
    return OUTLINED_FUNCTION_98_0(*a1);
  }

  else
  {
    return OUTLINED_FUNCTION_0_2();
  }
}

uint64_t sub_1D7EBDA84(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
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

  *(result + 73) = v3;
  return result;
}

uint64_t sub_1D7EBDAEC()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBDB24()
{

  if (*(v0 + 72) != 255)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EBDB9C(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    return OUTLINED_FUNCTION_140(result, a2);
  }

  return result;
}

uint64_t sub_1D7EBDC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_76_0();
  type metadata accessor for JSONSchema.SchemaType.ObjectType(v6);
  OUTLINED_FUNCTION_95();
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_37_1(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

void sub_1D7EBDCA4(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_113();
  type metadata accessor for JSONSchema.SchemaType.ObjectType(v8);
  OUTLINED_FUNCTION_95();
  if (*(v9 + 84) == a3)
  {
    v10 = OUTLINED_FUNCTION_145();

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    *(v4 + *(a4 + 20)) = a2;
  }
}

uint64_t sub_1D7EBDD84()
{

  return swift_deallocObject();
}

void sub_1D7EBDE18()
{
  OUTLINED_FUNCTION_30_0();
  sub_1D7EFC4E4(v1, v2);
  *v0 = v3;
}

uint64_t sub_1D7EBDE44()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7EFC58C(v1, v2);
  *v0 = result & 1;
  return result;
}

uint64_t sub_1D7EBDE98()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7EFC62C(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_1D7EBDF38()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7EFF808();
  *v0 = result & 1;
  return result;
}

void sub_1D7EBDFA4()
{
  OUTLINED_FUNCTION_30_0();
  sub_1D7EFC74C(v1, v2);
  *v0 = v3;
}

uint64_t sub_1D7EBDFD0()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7EFD090(v1, v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

uint64_t sub_1D7EBE018(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = *(a3 + 24);
  sub_1D7E9F1D8(0, a4);

  return __swift_getEnumTagSinglePayload(a1 + v6, a2, v7);
}

uint64_t sub_1D7EBE06C(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 24);
  sub_1D7E9F1D8(0, a3);

  return __swift_storeEnumTagSinglePayload(a1 + v7, a2, a2, v8);
}

uint64_t sub_1D7EBE138()
{
  sub_1D7EF4CE0(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D7EBE180()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBE1C0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBE200()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D7EBE240()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBE288()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBE2C4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D7EBE2FC()
{

  return swift_deallocObject();
}

__n128 sub_1D7EBE370(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id sub_1D7EBE37C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D7F0A084();
  *a1 = result;
  return result;
}

uint64_t sub_1D7EBE3B0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBE44C()
{
  switch(*(v0 + 89))
  {
    case 0:

      break;
    case 1:
    case 3:
      v1 = (v0 + 16);
LABEL_3:
      __swift_destroy_boxed_opaque_existential_1Tm(v1);
      break;
    case 2:
      switch(*(v0 + 88))
      {
        case 0:

          goto LABEL_10;
        case 1:

          sub_1D7F0C9E0(*(v0 + 48), *(v0 + 56));
          goto LABEL_10;
        case 2:

          sub_1D7F0C9E0(*(v0 + 64), *(v0 + 72));
LABEL_10:

          break;
        case 3:

          v1 = (v0 + 32);
          goto LABEL_3;
        default:
          goto LABEL_11;
      }

      break;
    default:
      break;
  }

LABEL_11:

  return swift_deallocObject();
}

uint64_t sub_1D7EBE58C()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EBE5C0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBE5F8()
{

  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

__n128 sub_1D7EBE640(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1D7EBE654()
{
  swift_unknownObjectRelease();
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EBE73C()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EBE774()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBE7BC()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBE7F8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBE838()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBE890@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_12();
  result = (*(v2 + 112))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D7EBE8DC()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBE918()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBE950()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBE9D0(uint64_t a1, char a2)
{
  sub_1D8190FF4();
}

uint64_t sub_1D7EBEB7C@<X0>(uint64_t *a1@<X8>)
{
  result = ContainerManager.carPlayContainer.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D7EBECA8()
{

  OUTLINED_FUNCTION_7_0();

  return swift_deallocObject();
}

uint64_t sub_1D7EBECE0()
{

  OUTLINED_FUNCTION_7_0();

  return swift_deallocObject();
}

uint64_t sub_1D7EBED1C()
{

  OUTLINED_FUNCTION_7_0();

  return swift_deallocObject();
}

uint64_t sub_1D7EBED4C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBED90()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EBEE60(uint64_t a1, uint64_t a2)
{
  sub_1D7F1E3C8(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 4)
  {
    return EnumTagSinglePayload - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D7EBEEA8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  sub_1D7F1E3C8(0);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

id sub_1D7EBEFF4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentAlpha];
  *a2 = v4;
  return result;
}

id sub_1D7EBF03C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 verticalOffset];
  *a2 = v4;
  return result;
}

uint64_t sub_1D7EBF0D0()
{
  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7EBF120()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBF158()
{
  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7EBF1E8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D7EBF2C0()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 40) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D7EBF348()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBF380()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBF3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_35();
  sub_1D7E19388(0, v6, v7, MEMORY[0x1E69E6720]);
  if (*(*(v8 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v8);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

void sub_1D7EBF490(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_35();
  sub_1D7E19388(0, v8, v9, MEMORY[0x1E69E6720]);
  if (*(*(v10 - 8) + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }
}

uint64_t sub_1D7EBF55C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBF594()
{
  type metadata accessor for CopyCommandContext(0);
  OUTLINED_FUNCTION_4_20();
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  if (*(v1 + 16))
  {
  }

  v5 = sub_1D818E644();
  if (!OUTLINED_FUNCTION_7_16(v5))
  {
    OUTLINED_FUNCTION_3_0();
    (*(v6 + 8))(v1 + v4, v2);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v4 + *(v0 + 20)));

  return swift_deallocObject();
}

uint64_t sub_1D7EBF694()
{
  type metadata accessor for CopyCommandContext(0);
  OUTLINED_FUNCTION_4_20();
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  v5 = sub_1D818E644();
  if (!OUTLINED_FUNCTION_7_16(v5))
  {
    OUTLINED_FUNCTION_3_0();
    (*(v6 + 8))(v1 + v4, v2);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v4 + *(v0 + 20)));

  return swift_deallocObject();
}

uint64_t sub_1D7EBF794()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EBF7E4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBF81C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBF8A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D7F2BFF8(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D7EBF914()
{

  return swift_deallocObject();
}

__n128 sub_1D7EBF9C0(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D7EBFA6C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBFB38()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBFBDC()
{

  return swift_deallocObject();
}

__n128 sub_1D7EBFC50(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D7EBFC68()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBFCA0()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EBFCD8()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1D7EBFDA4()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

__n128 sub_1D7EBFDEC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D7EBFE7C()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EBFEB4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EBFF18()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC00A8()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_19();

  return swift_deallocObject();
}

uint64_t sub_1D7EC00D8()
{
  swift_unknownObjectUnownedDestroy();
  OUTLINED_FUNCTION_19();

  return swift_deallocObject();
}

uint64_t sub_1D7EC0108()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC014C()
{
  OUTLINED_FUNCTION_19();

  return swift_deallocObject();
}

uint64_t sub_1D7EC017C()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7F45AF4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D7EC01A8()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7F45C60();
  *v0 = result;
  return result;
}

id sub_1D7EC01FC()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7F46AE4();
  *v0 = result;
  return result;
}

uint64_t sub_1D7EC02A0()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_19();

  return swift_deallocObject();
}

uint64_t sub_1D7EC02D0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC0310()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_19();

  return swift_deallocObject();
}

uint64_t sub_1D7EC0340()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC0380()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC03E0()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC0438(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1D818E994();
    v9 = &a1[*(a3 + 20)];

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

_BYTE *sub_1D7EC04B8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1D818E994();
    v8 = &v5[*(a4 + 20)];

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D7EC055C()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1D7EC05D0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D7EC0618()
{
  swift_unknownObjectUnownedDestroy();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC064C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC0694()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC06CC()
{

  OUTLINED_FUNCTION_7_0();

  return swift_deallocObject();
}

uint64_t sub_1D7EC06FC()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC0734()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC077C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC07D4()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC0814()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC0858()
{

  OUTLINED_FUNCTION_7_2();

  return swift_deallocObject();
}

uint64_t sub_1D7EC08A0()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7F606A8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D7EC08F4()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7F60808();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1D7EC0948()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7F60AB0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

id sub_1D7EC099C()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7F60C60();
  *v0 = result;
  return result;
}

uint64_t sub_1D7EC09C8()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7F60EF0();
  *v0 = result;
  return result;
}

void *sub_1D7EC0A20()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7F617C4();
  *v0 = result;
  return result;
}

void *sub_1D7EC0A4C()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7F61ADC();
  *v0 = result;
  return result;
}

void *sub_1D7EC0A78()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7F61C40();
  *v0 = result;
  return result;
}

uint64_t sub_1D7EC0AA4()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC0AD8()
{

  if (*(v0 + 32))
  {
  }

  OUTLINED_FUNCTION_7_2();

  return swift_deallocObject();
}

uint64_t sub_1D7EC0B18()
{

  OUTLINED_FUNCTION_7_2();

  return swift_deallocObject();
}

uint64_t sub_1D7EC0B60()
{
  OUTLINED_FUNCTION_7_2();

  return swift_deallocObject();
}

__n128 sub_1D7EC0BB8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D7EC0BD0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7EC0C08()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC0C40()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1D7EC0D80()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC0DB4()
{
  swift_unknownObjectUnownedDestroy();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC0DEC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D7EC0E34()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D7EC0E84()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC0EBC()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC0F04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D7F69284();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D7EC0F5C()
{
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC0F90()
{
  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7EC0FE8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC1030()
{
  sub_1D7EFB554(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_1D7EFB554(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1D7EC1078()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC10D0()
{

  sub_1D7EFB554(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC112C()
{

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7EC11AC(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1D7EC1244()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D7EC12EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D818E8B4();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D7EC139C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D818E8B4();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D7EC1448()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7EC149C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7EC14E8()
{

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7EC151C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC155C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC15A0()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EC15D8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC1618()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC1664()
{
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC16B8()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EC1760()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D7EC179C()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EC17D4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC1814()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8_6();
  v0 = OUTLINED_FUNCTION_2_11();
  v1(v0);

  OUTLINED_FUNCTION_7_26();

  return swift_deallocObject();
}

uint64_t sub_1D7EC18CC()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8_6();
  v2 = OUTLINED_FUNCTION_2_11();
  v3(v2);

  OUTLINED_FUNCTION_7_26();

  return swift_deallocObject();
}

uint64_t sub_1D7EC19B0()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC19E4()
{
  swift_unknownObjectUnownedDestroy();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC1A18()
{

  return swift_deallocObject();
}

double sub_1D7EC1A58(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = OUTLINED_FUNCTION_140_0(a1, a2, a3);
  v5 = v3;
  v6 = BlueprintTableViewDelegate.tableView(_:heightForHeaderInSection:)();

  return v6;
}

double sub_1D7EC1AAC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = OUTLINED_FUNCTION_140_0(a1, a2, a3);
  v5 = v3;
  v6 = BlueprintTableViewDelegate.tableView(_:heightForFooterInSection:)();

  return v6;
}

void sub_1D7EC1B00(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = OUTLINED_FUNCTION_140_0(a1, a2, a3);
  v6 = v3;
  v7 = v4;
  BlueprintTableViewDelegate.tableView(_:willDisplayFooterView:forSection:)(v5, v6, v7);
}

void sub_1D7EC1B74(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = OUTLINED_FUNCTION_140_0(a1, a2, a3);
  v6 = v3;
  v8 = v4;
  BlueprintTableViewDelegate.tableView(_:didEndDisplayingFooterView:forSection:)(v8, v6, v7);
}

uint64_t sub_1D7EC1BE0()
{
  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7EC1C1C()
{

  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC1C50()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7EC1C8C()
{
  v1 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

__n128 sub_1D7EC1D50(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1D7EC1DA0()
{
  OUTLINED_FUNCTION_124();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = OUTLINED_FUNCTION_107();
  v6 = type metadata accessor for BlueprintItem(v2, v3, v4, v5);
  OUTLINED_FUNCTION_15_15(v6);
  v8 = *(v7 + 80);
  v9 = (v8 + 88) & ~v8;
  type metadata accessor for BlueprintViewAction(0);
  OUTLINED_FUNCTION_108_0();
  v10 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v12 = v11;

  OUTLINED_FUNCTION_3_0();
  (*(v13 + 8))(v0 + v9, AssociatedTypeWitness);
  OUTLINED_FUNCTION_11_0();
  swift_getEnumCaseMultiPayload();

  sub_1D7F9E220(0);
  OUTLINED_FUNCTION_139_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v18 = *(v12 + 8);
    v18((v8 + 88) & ~v8, v10);
    sub_1D7F9E3F0(0);
    v18(v9 + *(v15 + 48), v10);
  }

  OUTLINED_FUNCTION_120_0();
  (*(v12 + 8))(v0 + v16, v10);

  return swift_deallocObject();
}

uint64_t sub_1D7EC2050()
{
  type metadata accessor for BlueprintViewAction(0);
  OUTLINED_FUNCTION_108_0();
  v2 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v4 = v3;

  OUTLINED_FUNCTION_11_0();
  swift_getEnumCaseMultiPayload();

  sub_1D7F9E220(0);
  OUTLINED_FUNCTION_139_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v9 = *(v4 + 8);
    v9(v1, v2);
    sub_1D7F9E3F0(0);
    v9(v1 + *(v6 + 48), v2);
  }

  OUTLINED_FUNCTION_120_0();
  (*(v4 + 8))(v0 + v7, v2);

  return swift_deallocObject();
}

uint64_t sub_1D7EC2234()
{

  return swift_deallocObject();
}

__n128 sub_1D7EC2290(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D7EC22E4()
{
  sub_1D7F387B0(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D7EC2340()
{
  v1 = sub_1D818E794();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1D7EC2488()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC24BC()
{
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC2550()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC2584()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC25C4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D818E754();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      sub_1D7E313D0(0);
      v9 = v11;
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1D7EC2690(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D818E754();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      sub_1D7E313D0(0);
      v9 = v11;
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1D7EC282C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC2864()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC28B8()
{
  v1 = *(v0 + 16);
  v2 = *(sub_1D8191E84() - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);

  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v1))
  {
    (*(*(v1 - 8) + 8))(v0 + v3, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC29B0()
{
  v1 = *(v0 + 16);
  v2 = *(sub_1D8191E84() - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  if (*(v0 + 40))
  {
  }

  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v1))
  {
    (*(*(v1 - 8) + 8))(v0 + v3, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC2AC0()
{
  sub_1D7E57C40(*(v0 + 256), *(v0 + 264), *(v0 + 272));
  sub_1D7E57C40(*(v0 + 280), *(v0 + 288), *(v0 + 296));
  sub_1D7E57C40(*(v0 + 304), *(v0 + 312), *(v0 + 320));
  if (*(v0 + 608))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 584));
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC2B44()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC2B8C()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EC2BC4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC2C14()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 48) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D7EC2C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D818E994();
  OUTLINED_FUNCTION_95();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_1_61();
    type metadata accessor for Blueprint(v9, v10);
    OUTLINED_FUNCTION_95();
    if (*(v12 + 84) == a2)
    {
      return __swift_getEnumTagSinglePayload(a1 + *(a3 + 84), a2, v11);
    }

    else
    {
      v13 = *(a1 + *(a3 + 88) + 128);
      if (v13 >= 0xFFFFFFFF)
      {
        LODWORD(v13) = -1;
      }

      return (v13 + 1);
    }
  }
}

void sub_1D7EC2DA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D818E994();
  OUTLINED_FUNCTION_95();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_1_61();
    type metadata accessor for Blueprint(v10, v11);
    OUTLINED_FUNCTION_95();
    if (*(v13 + 84) == a3)
    {
      __swift_storeEnumTagSinglePayload(a1 + *(a4 + 84), a2, a2, v12);
    }

    else
    {
      *(a1 + *(a4 + 88) + 128) = (a2 - 1);
    }
  }
}

uint64_t sub_1D7EC2ED0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1D7FB1718(a2);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D7EC2F2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1D7FB17E8(a2);
  *a1 = result & 1;
  return result;
}

void *sub_1D7EC2F88@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1D7FB1950(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1D7EC2FCC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7EC300C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC30D4()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EC310C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC314C()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC3180()
{

  OUTLINED_FUNCTION_1_63();

  return swift_deallocObject();
}

uint64_t sub_1D7EC31B4()
{
  swift_unknownObjectUnownedDestroy();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC31EC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7EC322C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC3264@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D7FB70D0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D7EC332C()
{

  sub_1D7F2FBA8(*(v0 + 24), *(v0 + 32), *(v0 + 40));

  OUTLINED_FUNCTION_8_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC339C()
{
  swift_unknownObjectUnownedDestroy();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC33D0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC3410()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D7EC3554()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC3588()
{

  OUTLINED_FUNCTION_21_0();

  return swift_deallocObject();
}

uint64_t sub_1D7EC35CC()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC3620()
{
  v1 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1D7EC370C()
{
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC37A8()
{

  sub_1D7FCB664(*(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

uint64_t sub_1D7EC3834()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC3874()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC38B4()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC38FC()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC394C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC398C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC39EC()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC3A34()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC3AA4()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EC3ADC()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC3B24()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC3B64()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7FCE678(v1, v2);
  *v0 = result;
  return result;
}

__n128 sub_1D7EC3B94(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

void sub_1D7EC3BA8()
{
  OUTLINED_FUNCTION_30_0();
  sub_1D7FCE7D4();
  *v0 = v1;
}

uint64_t sub_1D7EC3BFC()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7FCE8AC();
  *v0 = result & 1;
  return result;
}

void *sub_1D7EC3C80()
{
  OUTLINED_FUNCTION_30_0();
  result = sub_1D7FCECE0(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_1D7EC3D00()
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_41_6();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_39_6();
  v5 = *(type metadata accessor for PageBlueprint(v1, v2, v3, v4) - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);

  sub_1D818F394();
  OUTLINED_FUNCTION_8();
  (*(v7 + 8))(v0 + v6);

  return swift_deallocObject();
}

uint64_t sub_1D7EC3E48()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC3EB8()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  v11 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 39) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v11, AssociatedTypeWitness);
  if (*(v0 + v12 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + v12));
  }

  if (*(v0 + v13))
  {
  }

  if (*(v0 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC4134()
{
  sub_1D7EF4CE0(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D7EC417C()
{

  OUTLINED_FUNCTION_21_0();

  return swift_deallocObject();
}

uint64_t sub_1D7EC41B8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_15_17();

  return swift_deallocObject();
}

uint64_t sub_1D7EC41F4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC422C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC4268()
{

  sub_1D7EF4CE0(*(v0 + 24), *(v0 + 32));

  OUTLINED_FUNCTION_15_17();

  return swift_deallocObject();
}

uint64_t sub_1D7EC42B4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC42FC()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D7EC4360()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC43A0()
{

  return swift_deallocObject();
}

id sub_1D7EC43E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D7FDFCE4();
  *a1 = result;
  return result;
}

__n128 sub_1D7EC4420(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D7EC442C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_0_98();
  v8 = type metadata accessor for BlueprintModifierResult(v6, v7);
  if (*(*(v8 - 8) + 84) == a2)
  {
    return __swift_getEnumTagSinglePayload(a1, a2, v8);
  }

  v10 = *(a1 + *(a3 + 52));
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

uint64_t sub_1D7EC44D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_0_98();
  result = type metadata accessor for BlueprintModifierResult(v8, v9);
  if (*(*(result - 8) + 84) == a3)
  {
    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  *(a1 + *(a4 + 52)) = (a2 - 1);
  return result;
}

uint64_t sub_1D7EC4570()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EC45A8()
{

  return swift_deallocObject();
}

__n128 sub_1D7EC4604(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1D7EC4618()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EC4650()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7EC46B8()
{

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7EC46F4()
{

  OUTLINED_FUNCTION_1_63();

  return swift_deallocObject();
}

uint64_t sub_1D7EC4730()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC4768()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1D7EC47B8()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1D7EC4808()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7EC48D0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC4908(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D818F654();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1D7EC4990(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D818F654();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D7EC4A78()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC4AB8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC4AF8@<X0>(_BYTE *a1@<X8>)
{
  result = ImplicitAnimationGroup.isReversed.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D7EC4BA4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D7EC4BE4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7EC4C1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D7FED540();
  *a1 = result;
  return result;
}

__n128 sub_1D7EC4C58(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1D7EC4C6C()
{
  OUTLINED_FUNCTION_3_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D7EC4D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_60();
  v7 = *(v6 + 40);
  v21 = *(v6 + 24);
  v8 = OUTLINED_FUNCTION_3_66();
  type metadata accessor for Blueprint(v8, v9);
  OUTLINED_FUNCTION_95();
  if (*(v12 + 84) == v3)
  {
    v13 = v10;
    v14 = v4;
    return __swift_getEnumTagSinglePayload(v14, v3, v13);
  }

  type metadata accessor for BlueprintItem(0, v21, v7, v11);
  OUTLINED_FUNCTION_95();
  if (*(v16 + 84) == v3)
  {
    v13 = v15;
    v17 = *(a3 + 52);
LABEL_7:
    v14 = v4 + v17;
    return __swift_getEnumTagSinglePayload(v14, v3, v13);
  }

  sub_1D818E754();
  OUTLINED_FUNCTION_95();
  if (*(v19 + 84) == v3)
  {
    v13 = v18;
    v17 = *(a3 + 56);
    goto LABEL_7;
  }

  return OUTLINED_FUNCTION_2_73();
}

void sub_1D7EC4E34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_60();
  v9 = *(v8 + 40);
  v22 = *(v8 + 24);
  v10 = OUTLINED_FUNCTION_3_66();
  type metadata accessor for Blueprint(v10, v11);
  OUTLINED_FUNCTION_95();
  if (*(v14 + 84) == a3)
  {
    v15 = v12;
    v16 = v5;
LABEL_8:
    __swift_storeEnumTagSinglePayload(v16, v4, v4, v15);
    return;
  }

  type metadata accessor for BlueprintItem(0, v22, v9, v13);
  OUTLINED_FUNCTION_95();
  if (*(v18 + 84) == a3)
  {
    v15 = v17;
    v19 = *(a4 + 52);
LABEL_7:
    v16 = v5 + v19;
    goto LABEL_8;
  }

  sub_1D818E754();
  OUTLINED_FUNCTION_95();
  if (*(v21 + 84) == a3)
  {
    v15 = v20;
    v19 = *(a4 + 56);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_44();
}

uint64_t sub_1D7EC4F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_60();
  v6 = OUTLINED_FUNCTION_0_98();
  type metadata accessor for Blueprint(v6, v7);
  OUTLINED_FUNCTION_95();
  if (*(v9 + 84) == v3)
  {
    v10 = v8;
    v11 = v4;
    return __swift_getEnumTagSinglePayload(v11, v3, v10);
  }

  v12 = OUTLINED_FUNCTION_0_98();
  type metadata accessor for BlueprintSection(v12, v13);
  OUTLINED_FUNCTION_95();
  if (*(v15 + 84) == v3)
  {
    v10 = v14;
    v16 = *(a3 + 52);
LABEL_7:
    v11 = v4 + v16;
    return __swift_getEnumTagSinglePayload(v11, v3, v10);
  }

  sub_1D818E754();
  OUTLINED_FUNCTION_95();
  if (*(v18 + 84) == v3)
  {
    v10 = v17;
    v16 = *(a3 + 56);
    goto LABEL_7;
  }

  return OUTLINED_FUNCTION_2_73();
}

void sub_1D7EC509C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_60();
  v8 = OUTLINED_FUNCTION_0_98();
  type metadata accessor for Blueprint(v8, v9);
  OUTLINED_FUNCTION_95();
  if (*(v11 + 84) == a3)
  {
    v12 = v10;
    v13 = v5;
LABEL_8:
    __swift_storeEnumTagSinglePayload(v13, v4, v4, v12);
    return;
  }

  v14 = OUTLINED_FUNCTION_0_98();
  type metadata accessor for BlueprintSection(v14, v15);
  OUTLINED_FUNCTION_95();
  if (*(v17 + 84) == a3)
  {
    v12 = v16;
    v18 = *(a4 + 52);
LABEL_7:
    v13 = v5 + v18;
    goto LABEL_8;
  }

  sub_1D818E754();
  OUTLINED_FUNCTION_95();
  if (*(v20 + 84) == a3)
  {
    v12 = v19;
    v18 = *(a4 + 56);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_44();
}

uint64_t sub_1D7EC51D0()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D7EC5210()
{
  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7EC524C()
{
  if (*(v0 + 16))
  {
  }

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

id sub_1D7EC5288@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D7FF16E4();
  *a1 = result;
  return result;
}

uint64_t sub_1D7EC52B8()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D7EC5300()
{
  sub_1D7FF3308();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D7EC53C4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC53FC()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EC5434()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC547C@<X0>(uint64_t *a1@<X8>)
{
  result = LazyViewController.loadedViewController.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D7EC5500()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7EC5624()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC5664()
{

  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC5698()
{
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC56CC()
{

  OUTLINED_FUNCTION_1_63();

  return swift_deallocObject();
}

__n128 sub_1D7EC571C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_1D7EC5774()
{

  OUTLINED_FUNCTION_115_1();

  return swift_deallocObject();
}

uint64_t sub_1D7EC57C8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC5824()
{

  return swift_deallocObject();
}

__n128 sub_1D7EC5868(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_1D7EC59DC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1D7EC59F4()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EC5A2C()
{
  OUTLINED_FUNCTION_23_11();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_23_11();
  v2 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_68();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_68();
  v4 = swift_getAssociatedConformanceWitness();
  v24 = AssociatedTypeWitness;
  v25 = v2;
  v26 = AssociatedConformanceWitness;
  v27 = v4;
  v5 = type metadata accessor for Blueprint(0, &v24);
  v23 = *(*(v5 - 8) + 80);

  v6 = v0 + ((v23 + 72) & ~v23);

  if (*(v6 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v6 + 16));
  }

  v7 = *(v5 + 56);
  v24 = AssociatedTypeWitness;
  v25 = v2;
  v26 = AssociatedConformanceWitness;
  v27 = v4;
  v8 = type metadata accessor for BlueprintSection(255, &v24);
  WitnessTable = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  sub_1D818F394();
  OUTLINED_FUNCTION_8();
  (*(v11 + 8))(v6 + v7);
  v12 = *(v5 + 60);
  v13 = OUTLINED_FUNCTION_13_20();
  v17 = type metadata accessor for BlueprintItem(v13, v14, v15, v16);
  v18 = swift_getWitnessTable();
  OUTLINED_FUNCTION_20_10();
  v19 = swift_getWitnessTable();
  OUTLINED_FUNCTION_20_10();
  v20 = swift_getWitnessTable();
  v24 = v8;
  v25 = v17;
  v26 = v18;
  v27 = WitnessTable;
  v28 = v10;
  v29 = v19;
  v30 = v20;
  sub_1D818F784();
  OUTLINED_FUNCTION_8();
  (*(v21 + 8))(v6 + v12);

  return swift_deallocObject();
}

uint64_t sub_1D7EC5CF0()
{
  swift_unownedRelease();
  OUTLINED_FUNCTION_8_8();

  return swift_deallocObject();
}

__n128 sub_1D7EC5D30(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D7EC5D9C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  sub_1D8019CE4(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 168));

  return swift_deallocObject();
}

uint64_t sub_1D7EC5E5C()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t _s5TeaUI12RotationRateVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s5TeaUI12RotationRateVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1D7EC5F20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D801C60C(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D7EC5F88()
{
  type metadata accessor for BlueprintBookmark(0);
  OUTLINED_FUNCTION_20_19();
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v3 = sub_1D818E994();
      v4 = OUTLINED_FUNCTION_0_110();
      if (!__swift_getEnumTagSinglePayload(v4, v5, v3))
      {
        OUTLINED_FUNCTION_3_0();
        v6 = OUTLINED_FUNCTION_31();
        goto LABEL_6;
      }

      break;
    case 1u:
      sub_1D818E994();
      OUTLINED_FUNCTION_4_3();
      v7 = *(v8 + 8);
      v6 = v0 + v2;
LABEL_6:
      v7(v6);
      break;
    case 2u:
    case 3u:
    case 4u:

      break;
    default:
      break;
  }

  return swift_deallocObject();
}

__n128 sub_1D7EC6100(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D7EC610C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7EC6164()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC61B8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7EC61F8()
{
  switch(*(v0 + 89))
  {
    case 0:

      break;
    case 1:
    case 3:
      v1 = (v0 + 16);
LABEL_3:
      __swift_destroy_boxed_opaque_existential_1Tm(v1);
      break;
    case 2:
      switch(*(v0 + 88))
      {
        case 0:

          goto LABEL_10;
        case 1:

          sub_1D7F0C9E0(*(v0 + 48), *(v0 + 56));
          goto LABEL_10;
        case 2:

          sub_1D7F0C9E0(*(v0 + 64), *(v0 + 72));
LABEL_10:

          break;
        case 3:

          v1 = (v0 + 32);
          goto LABEL_3;
        default:
          goto LABEL_11;
      }

      break;
    default:
      break;
  }

LABEL_11:

  return swift_deallocObject();
}

uint64_t sub_1D7EC6438@<X0>(_BYTE *a1@<X8>)
{
  result = CoverViewManager.isCovering.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D7EC64C4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC6550()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC6588()
{
  v1 = *(v0 + 16);
  v2 = sub_1D8191E84();
  OUTLINED_FUNCTION_15_15(v2);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);

  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v1))
  {
    (*(*(v1 - 8) + 8))(v0 + v4, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC6690()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC6768()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC67B0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC67E8()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC6830()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EC6868()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC68D8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC69B0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC69F8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D7EC6B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_5_47(*(a1 + 8));
  }

  v7 = sub_1D818E754();
  v8 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1D7EC6B9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D818E754();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D7EC6C1C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v2 + 64) + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v6, v1);

  return swift_deallocObject();
}

uint64_t sub_1D7EC6CD0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC6D08()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 24) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D7EC6DC0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC6E64()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC6E98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D8038394();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_1D7EC6EC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D8038500();
  *a1 = result;
  return result;
}

uint64_t sub_1D7EC6F2C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC6F6C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7EC6FB4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1D7EC7004(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

uint64_t sub_1D7EC7014()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC7054@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D7E2E834();
  *a1 = result;
  return result;
}

__n128 sub_1D7EC7088(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D7EC70C0@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D7E6E97C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1D7EC70FC()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_19();

  return swift_deallocObject();
}

uint64_t sub_1D7EC713C()
{
  OUTLINED_FUNCTION_19();

  return swift_deallocObject();
}

uint64_t sub_1D7EC716C()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC71B0()
{

  OUTLINED_FUNCTION_0_127();

  return swift_deallocObject();
}

uint64_t sub_1D7EC7218()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC7250()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

id sub_1D7EC7334@<X0>(uint64_t *a1@<X8>)
{
  result = CollapsingButton.menu.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D7EC73B4()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EC73EC()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7EC7424()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC745C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC74C8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC771C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC776C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for JSONSchema(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_0_150();
    sub_1D7E1898C(0, v11, v12, MEMORY[0x1E697DCC0]);
    v7 = v13;
    v8 = a1 + *(a3 + 44);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 40) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1D7EC7860(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for JSONSchema(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 40) + 8) = (a2 - 1);
      return result;
    }

    OUTLINED_FUNCTION_0_150();
    sub_1D7E1898C(0, v11, v12, MEMORY[0x1E697DCC0]);
    v9 = v13;
    v10 = a1 + *(a4 + 44);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1D7EC7978()
{
  sub_1D8056E68(255);
  sub_1D80573A4(255);
  sub_1D8056C60(255);
  sub_1D8057064(255);
  sub_1D8056108(255);
  sub_1D8056DD8(255);
  sub_1D8055844(255);
  sub_1D805620C(255);
  OUTLINED_FUNCTION_14_27();
  sub_1D8055F70(v0, v1, MEMORY[0x1E697CD20]);
  OUTLINED_FUNCTION_13_29();
  sub_1D8055F70(v2, v3, MEMORY[0x1E697C1A8]);
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_15_27();
  sub_1D8055F70(v4, v5, MEMORY[0x1E697BE60]);
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_18_23();
  sub_1D8057164(v6, v7, sub_1D80571D4, MEMORY[0x1E6982090]);
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_16_26();
  sub_1D8055F70(v8, v9, MEMORY[0x1E6981F48]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D7EC7B7C()
{
  type metadata accessor for JSONSchemaView(0);
  OUTLINED_FUNCTION_4_20();
  v4 = (*(v3 + 80) + 41) & ~*(v3 + 80);
  sub_1D8057284(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  OUTLINED_FUNCTION_42_10();
  type metadata accessor for JSONSchema(0);
  OUTLINED_FUNCTION_29_13();
  OUTLINED_FUNCTION_4_3();
  (*(v5 + 8))(v0 + v4 + v2);
  OUTLINED_FUNCTION_41_9();
  OUTLINED_FUNCTION_4_3();
  (*(v6 + 8))(v0 + v4 + v2);
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_4_3();
  (*(v7 + 8))(v0 + v4 + v1);
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_28_14();

  OUTLINED_FUNCTION_36_9();
  OUTLINED_FUNCTION_0_150();
  sub_1D7E1898C(0, v8, v9, MEMORY[0x1E697DCB8]);
  OUTLINED_FUNCTION_17_7();
  swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_39_11();
  if (v2 == 1)
  {

    OUTLINED_FUNCTION_27_17();
    OUTLINED_FUNCTION_4_3();
    (*(v10 + 8))(v1 + v2);
  }

  OUTLINED_FUNCTION_19_21();

  OUTLINED_FUNCTION_9_28();
  if (!v12)
  {
    OUTLINED_FUNCTION_26_14(v11);
  }

  OUTLINED_FUNCTION_21_21();
  if (v13)
  {
  }

  OUTLINED_FUNCTION_35_12();

  return swift_deallocObject();
}

uint64_t sub_1D7EC7DAC()
{
  type metadata accessor for JSONSchemaView(0);
  OUTLINED_FUNCTION_4_20();
  v4 = v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  OUTLINED_FUNCTION_42_10();
  type metadata accessor for JSONSchema(0);
  OUTLINED_FUNCTION_29_13();
  OUTLINED_FUNCTION_4_3();
  (*(v5 + 8))(v4 + v2);
  OUTLINED_FUNCTION_41_9();
  OUTLINED_FUNCTION_4_3();
  (*(v6 + 8))(v4 + v2);
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_4_3();
  (*(v7 + 8))(v4 + v1);
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_28_14();

  OUTLINED_FUNCTION_36_9();
  OUTLINED_FUNCTION_0_150();
  sub_1D7E1898C(0, v8, v9, MEMORY[0x1E697DCB8]);
  OUTLINED_FUNCTION_17_7();
  swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_39_11();
  if (v2 == 1)
  {

    OUTLINED_FUNCTION_27_17();
    OUTLINED_FUNCTION_4_3();
    (*(v10 + 8))(v1 + v2);
  }

  OUTLINED_FUNCTION_19_21();

  OUTLINED_FUNCTION_9_28();
  if (!v12)
  {
    OUTLINED_FUNCTION_26_14(v11);
  }

  OUTLINED_FUNCTION_21_21();
  if (v13)
  {
  }

  OUTLINED_FUNCTION_35_12();

  return swift_deallocObject();
}

uint64_t sub_1D7EC7FD0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7EC80BC()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC80F4()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EC812C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC8164()
{

  return swift_deallocObject();
}

__n128 sub_1D7EC81C0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id sub_1D7EC81D8@<X0>(void *a1@<X8>)
{
  result = MastheadViewController.displayOptions.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D7EC820C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC8254()
{
  swift_unownedRelease();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC82AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for Route(0, v5, *(v4 + 24), a4) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  (*(*(v5 - 8) + 8))(v4 + v7, v5);

  v8 = (v4 + v7 + v6[13]);
  if (v8[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC83F0()
{

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7EC8430()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC8464()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC8498()
{

  sub_1D7E57C40(*(v0 + 272), *(v0 + 280), *(v0 + 288));
  sub_1D7E57C40(*(v0 + 296), *(v0 + 304), *(v0 + 312));
  sub_1D7E57C40(*(v0 + 320), *(v0 + 328), *(v0 + 336));

  return swift_deallocObject();
}

uint64_t sub_1D7EC8524()
{

  sub_1D7E57C40(*(v0 + 312), *(v0 + 320), *(v0 + 328));
  sub_1D7E57C40(*(v0 + 336), *(v0 + 344), *(v0 + 352));
  sub_1D7E57C40(*(v0 + 360), *(v0 + 368), *(v0 + 376));

  sub_1D7E57C40(*(v0 + 880), *(v0 + 888), *(v0 + 896));
  sub_1D7E57C40(*(v0 + 904), *(v0 + 912), *(v0 + 920));
  sub_1D7E57C40(*(v0 + 928), *(v0 + 936), *(v0 + 944));

  sub_1D7E57C40(*(v0 + 1568), *(v0 + 1576), *(v0 + 1584));
  sub_1D7E57C40(*(v0 + 1592), *(v0 + 1600), *(v0 + 1608));
  sub_1D7E57C40(*(v0 + 1616), *(v0 + 1624), *(v0 + 1632));

  sub_1D7E57C40(*(v0 + 2136), *(v0 + 2144), *(v0 + 2152));
  sub_1D7E57C40(*(v0 + 2160), *(v0 + 2168), *(v0 + 2176));
  sub_1D7E57C40(*(v0 + 2184), *(v0 + 2192), *(v0 + 2200));

  return swift_deallocObject();
}

uint64_t sub_1D7EC8788()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC87FC()
{

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7EC8860@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D806A644();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D7EC8890@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D806A748();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D7EC8908()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7EC8940()
{
  v1 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1D7EC8B00()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7EC8B38()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC8C10()
{
  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC8C90()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC8CE0()
{

  return swift_deallocObject();
}

id sub_1D7EC8D1C()
{
  OUTLINED_FUNCTION_30_0();
  result = LabelBarButtonItem.attributedText.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D7EC8D48()
{
  OUTLINED_FUNCTION_30_0();
  result = LabelBarButtonItem.text.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

id sub_1D7EC8D74()
{
  OUTLINED_FUNCTION_30_0();
  result = LabelBarButtonItem.font.getter();
  *v0 = result;
  return result;
}

id sub_1D7EC8DA0()
{
  OUTLINED_FUNCTION_30_0();
  result = LabelBarButtonItem.textColor.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1D7EC8E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_76_0();
  v6 = sub_1D818E8B4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 32));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1D7EC8EAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D818E8B4();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D7EC8F54()
{

  OUTLINED_FUNCTION_1_63();

  return swift_deallocObject();
}

void sub_1D7EC8F88()
{
  OUTLINED_FUNCTION_120();
  v82 = *(v0 + 40);
  v83 = *(v0 + 16);
  v1 = OUTLINED_FUNCTION_12_35(v82, v83);
  v3 = type metadata accessor for BlueprintPipelineUpdate(v1, v2);
  OUTLINED_FUNCTION_20_19();
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v7 = *(v6 + 64) + v5;

  v8 = (v0 + v5);
  v9 = OUTLINED_FUNCTION_7_51();
  type metadata accessor for BlueprintPipelineUpdate.Action(v9, v10);
  v80 = (v0 + v5);
  v81 = v3;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      if (v8[5])
      {
        v11 = v8 + 2;
        goto LABEL_8;
      }

      break;
    case 1u:
    case 3u:
      OUTLINED_FUNCTION_71_2();
      break;
    case 2u:
      OUTLINED_FUNCTION_71_2();
      if (v8[11])
      {
        v11 = v8 + 8;
        goto LABEL_8;
      }

      break;
    case 4u:
      v11 = (v0 + v5);
LABEL_8:
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      break;
    case 5u:
      v12 = v0;

      if (v8[5])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v8 + 2);
      }

      v25 = OUTLINED_FUNCTION_7_51();
      v27 = *(type metadata accessor for Blueprint(v25, v26) + 56);
      OUTLINED_FUNCTION_10_44();
      type metadata accessor for BlueprintSection(255, v28);
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      WitnessTable = swift_getWitnessTable();
      OUTLINED_FUNCTION_13_33(WitnessTable);
      OUTLINED_FUNCTION_4_3();
      v31 = (*(v30 + 8))(v8 + v27);
      OUTLINED_FUNCTION_60_7(v31, v32, v33, v34);
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_23_16();
      v8 = v80;
      OUTLINED_FUNCTION_123_0();
      sub_1D818F784();
      OUTLINED_FUNCTION_4_3();
      (*(v35 + 8))(v80 + v27);
      v36 = OUTLINED_FUNCTION_76_6();
      MEMORY[0x1EEE9AC00](v36);
      OUTLINED_FUNCTION_50_6();
      OUTLINED_FUNCTION_5_52(v37);
      v84 = sub_1D7E0631C(255, &qword_1EDBBA670, &protocol descriptor for BlueprintDiffType);
      OUTLINED_FUNCTION_8_40(v84, qword_1EDBB68A8);
      v39 = OUTLINED_FUNCTION_15_31(v38, MEMORY[0x1E69E6370]);
      __swift_destroy_boxed_opaque_existential_1Tm((v80 + *(v39 + 48)));
      goto LABEL_15;
    case 6u:
      v12 = v0;

      if (v8[5])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v8 + 2);
      }

      v40 = OUTLINED_FUNCTION_7_51();
      v42 = *(type metadata accessor for Blueprint(v40, v41) + 56);
      OUTLINED_FUNCTION_10_44();
      type metadata accessor for BlueprintSection(255, v43);
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      v44 = swift_getWitnessTable();
      OUTLINED_FUNCTION_13_33(v44);
      OUTLINED_FUNCTION_4_3();
      v46 = (*(v45 + 8))(v8 + v42);
      OUTLINED_FUNCTION_60_7(v46, v47, v48, v49);
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_70_6();
      v8 = v80;
      OUTLINED_FUNCTION_18_26(v50);
      OUTLINED_FUNCTION_4_3();
      (*(v51 + 8))(v80 + v42);
      OUTLINED_FUNCTION_76_6();
      v52 = sub_1D7E0631C(255, &qword_1EDBBA670, &protocol descriptor for BlueprintDiffType);
      v54 = OUTLINED_FUNCTION_41_10(v52, v53, v52, "blueprint diff ");
      __swift_destroy_boxed_opaque_existential_1Tm((v80 + *(v54 + 48)));
      goto LABEL_19;
    case 7u:
      v12 = v0;

      if (v8[5])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v8 + 2);
      }

      v13 = OUTLINED_FUNCTION_7_51();
      v15 = *(type metadata accessor for Blueprint(v13, v14) + 56);
      OUTLINED_FUNCTION_10_44();
      type metadata accessor for BlueprintSection(255, v16);
      OUTLINED_FUNCTION_4_2();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_3_11();
      v17 = swift_getWitnessTable();
      OUTLINED_FUNCTION_13_33(v17);
      OUTLINED_FUNCTION_4_3();
      v19 = (*(v18 + 8))(v8 + v15);
      OUTLINED_FUNCTION_60_7(v19, v20, v21, v22);
      OUTLINED_FUNCTION_7_5();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_0_44();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_1_1();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_70_6();
      v8 = v80;
      OUTLINED_FUNCTION_18_26(v23);
      OUTLINED_FUNCTION_4_3();
      (*(v24 + 8))(v80 + v15);
LABEL_15:

LABEL_19:
      v0 = v12;
      v3 = v81;
      break;
    default:
      break;
  }

  v55 = v7 + 7;
  OUTLINED_FUNCTION_78_4();
  OUTLINED_FUNCTION_78_4();
  v56 = v8 + *(v3 + 60);
  v57 = type metadata accessor for BlueprintBookmark(0);
  switch(OUTLINED_FUNCTION_53_5(v57))
  {
    case 0u:
      v58 = sub_1D818E994();
      if (!OUTLINED_FUNCTION_24_18(v58))
      {
        OUTLINED_FUNCTION_3_0();
        v59 = OUTLINED_FUNCTION_55_0();
        goto LABEL_25;
      }

      break;
    case 1u:
      sub_1D818E994();
      OUTLINED_FUNCTION_4_3();
      v60 = *(v61 + 8);
      v59 = v56;
LABEL_25:
      v60(v59);
      break;
    case 2u:
    case 3u:
    case 4u:

      break;
    default:
      break;
  }

  v62 = v55 & 0xFFFFFFFFFFFFFFF8;
  v63 = v8 + *(v3 + 64);

  if (*(v63 + 5))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v63 + 2);
  }

  v78 = v62 + 39;
  v79 = v62;
  v64 = OUTLINED_FUNCTION_123_0();
  v66 = type metadata accessor for Blueprint(v64, v65);
  OUTLINED_FUNCTION_10_44();
  type metadata accessor for BlueprintSection(255, v67);
  OUTLINED_FUNCTION_4_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_11();
  v68 = swift_getWitnessTable();
  OUTLINED_FUNCTION_19_23(v68);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_72_6(*(v69 + 8));
  v70();
  type metadata accessor for BlueprintItem(255, v83.n128_i64[1], v82.n128_i64[1], v71);
  OUTLINED_FUNCTION_7_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_44();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_38_11();
  OUTLINED_FUNCTION_123_0();
  v72 = sub_1D818F784();
  OUTLINED_FUNCTION_8();
  v74 = *(v73 + 8);
  v75 = OUTLINED_FUNCTION_47_10();
  v74(v75);
  OUTLINED_FUNCTION_65_7();
  v76 = v80 + *(v81 + 68);

  if (*(v76 + 5))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v76 + 2);
  }

  OUTLINED_FUNCTION_39_12();
  v77();
  (v74)(&v76[*(v66 + 60)], v72);

  if (*(v0 + v79 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + v79));
  }

  if (*(v0 + (v78 & 0xFFFFFFFFFFFFFFF8)))
  {
  }

  swift_deallocObject();
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7EC9744()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC98B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D807BD14();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D7EC993C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC9978()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC99C8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC9A00()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC9A40()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC9A7C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7EC9AF8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC9B38()
{
  OUTLINED_FUNCTION_0_163();
  sub_1D7E1D3F8(0, v1, v2, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_15_15(v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0 + v6;
  v9 = type metadata accessor for SwipeActionRestoreState(0);
  if (!__swift_getEnumTagSinglePayload(v8, 1, v9))
  {

    v10 = *(v9 + 20);
    sub_1D818E994();
    OUTLINED_FUNCTION_8();
    (*(v11 + 8))(v8 + v10);
  }

  if (*(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7EC9C8C()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EC9E3C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC9E7C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EC9EB4()
{
  sub_1D7FF3308();
  OUTLINED_FUNCTION_4_3();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D7ECA0A0()
{
  OUTLINED_FUNCTION_19();

  return swift_deallocObject();
}

uint64_t sub_1D7ECA0D0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECA124()
{
  if (*(v0 + 32))
  {
  }

  OUTLINED_FUNCTION_21_0();

  return swift_deallocObject();
}

uint64_t sub_1D7ECA168()
{
  swift_unknownObjectUnownedDestroy();
  OUTLINED_FUNCTION_19();

  return swift_deallocObject();
}

uint64_t sub_1D7ECA198()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_19();

  return swift_deallocObject();
}

uint64_t sub_1D7ECA1D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = OUTLINED_FUNCTION_0_98();
  type metadata accessor for Blueprint(v6, v7);
  OUTLINED_FUNCTION_95();
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = a1;
    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }

  v12 = OUTLINED_FUNCTION_0_98();
  type metadata accessor for BlueprintSection(v12, v13);
  OUTLINED_FUNCTION_95();
  if (*(v15 + 84) == a2)
  {
    v10 = v14;
    v16 = a3[13];
LABEL_7:
    v11 = a1 + v16;
    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }

  sub_1D818E754();
  OUTLINED_FUNCTION_95();
  if (*(v18 + 84) == a2)
  {
    v10 = v17;
    v16 = a3[14];
    goto LABEL_7;
  }

  v20 = *(a1 + a3[18] + 8);
  if (v20 >= 0xFFFFFFFF)
  {
    LODWORD(v20) = -1;
  }

  return (v20 + 1);
}

void sub_1D7ECA31C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = OUTLINED_FUNCTION_0_98();
  type metadata accessor for Blueprint(v8, v9);
  OUTLINED_FUNCTION_95();
  if (*(v11 + 84) == a3)
  {
    v12 = v10;
    v13 = a1;
LABEL_8:
    __swift_storeEnumTagSinglePayload(v13, a2, a2, v12);
    return;
  }

  v14 = OUTLINED_FUNCTION_0_98();
  type metadata accessor for BlueprintSection(v14, v15);
  OUTLINED_FUNCTION_95();
  if (*(v17 + 84) == a3)
  {
    v12 = v16;
    v18 = a4[13];
LABEL_7:
    v13 = a1 + v18;
    goto LABEL_8;
  }

  sub_1D818E754();
  OUTLINED_FUNCTION_95();
  if (*(v20 + 84) == a3)
  {
    v12 = v19;
    v18 = a4[14];
    goto LABEL_7;
  }

  *(a1 + a4[18] + 8) = (a2 - 1);
}

uint64_t sub_1D7ECA460()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECA49C()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7ECA4D0()
{

  OUTLINED_FUNCTION_8_8();

  return swift_deallocObject();
}

__n128 sub_1D7ECA53C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D7ECA55C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7ECA590@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D809B744(a2, a3);
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1D7ECA5C0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECA5F8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECA668()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7ECA6D4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7ECA70C()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7ECA798()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECA7D8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECA810()
{
  OUTLINED_FUNCTION_1_125();
  if (*(v0 + 24))
  {
  }

  v1 = OUTLINED_FUNCTION_56_7();
  v2(v1);
  OUTLINED_FUNCTION_54_5();

  return swift_deallocObject();
}

uint64_t sub_1D7ECA8C4()
{
  OUTLINED_FUNCTION_2();

  v0 = OUTLINED_FUNCTION_2_11();
  v1(v0);
  OUTLINED_FUNCTION_7_26();

  return swift_deallocObject();
}

uint64_t sub_1D7ECA978()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7ECA9C0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECA9FC()
{

  OUTLINED_FUNCTION_21_0();

  return swift_deallocObject();
}

uint64_t sub_1D7ECAA40()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECAA80()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECAADC()
{
  OUTLINED_FUNCTION_1_125();
  OUTLINED_FUNCTION_60_8();
  v2 = OUTLINED_FUNCTION_56_7();
  v3(v2);
  v4 = v0 + v1;
  if (*(v0 + v1))
  {

    if (*(v4 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1Tm((v4 + 16));
    }
  }

  OUTLINED_FUNCTION_54_5();

  return swift_deallocObject();
}

uint64_t sub_1D7ECABA0()
{

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_21_0();

  return swift_deallocObject();
}

uint64_t sub_1D7ECABE4()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

__n128 sub_1D7ECACD4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D7ECAD30()
{
  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7ECAD6C()
{

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7ECADA0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECADDC()
{

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7ECAE3C()
{
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  }

  return swift_deallocObject();
}

__n128 sub_1D7ECAEC4(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D7ECAEDC()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for BlueprintItem(0, AssociatedTypeWitness, AssociatedConformanceWitness, v3);
  OUTLINED_FUNCTION_15_15(v4);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  v9 = *(type metadata accessor for BlueprintViewAction(0) - 8);
  v10 = (v6 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  OUTLINED_FUNCTION_3_0();
  (*(v11 + 8))(v0 + v6, AssociatedTypeWitness);
  LODWORD(v8) = swift_getEnumCaseMultiPayload();

  sub_1D7F9E220(0);
  v13 = v0 + v10 + *(v12 + 48);
  type metadata accessor for BlueprintViewAction.Action(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (v8 == 1)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v15 = sub_1D818E994();
        v16 = *(*(v15 - 8) + 8);
        v16(v13, v15);
        sub_1D7F9E3F0(0);
        v16(v13 + *(v17 + 48), v15);
      }

      goto LABEL_9;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_8;
  }

  if (!EnumCaseMultiPayload)
  {
    v18 = sub_1D818E994();
    OUTLINED_FUNCTION_3_0();
    v20 = *(v19 + 8);
    v20(v13, v18);
    sub_1D7F9E3F0(0);
    v20(v13 + *(v21 + 48), v18);
  }

LABEL_9:

  return swift_deallocObject();
}

uint64_t sub_1D7ECB1C0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D7ECB1F8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECB23C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7ECB274()
{

  sub_1D7E57C40(*(v0 + 296), *(v0 + 304), *(v0 + 312));
  sub_1D7E57C40(*(v0 + 320), *(v0 + 328), *(v0 + 336));
  sub_1D7E57C40(*(v0 + 344), *(v0 + 352), *(v0 + 360));
  if (*(v0 + 648))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 624));
  }

  sub_1D7E57C40(*(v0 + 904), *(v0 + 912), *(v0 + 920));
  sub_1D7E57C40(*(v0 + 928), *(v0 + 936), *(v0 + 944));
  sub_1D7E57C40(*(v0 + 952), *(v0 + 960), *(v0 + 968));

  return swift_deallocObject();
}

uint64_t sub_1D7ECB350()
{

  return swift_deallocObject();
}

__n128 sub_1D7ECB450(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D7ECB484()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECB4E4()
{
  if (*(v0 + 16) >= 6uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7ECB544()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7ECB578()
{

  OUTLINED_FUNCTION_8_8();

  return swift_deallocObject();
}

__n128 sub_1D7ECB5E0(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_1D7ECB73C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D7ECB770(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D818E754();
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      sub_1D7E313D0(0);
      v9 = v11;
      v10 = *(a3 + 24);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_1D7ECB83C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D818E754();
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      sub_1D7E313D0(0);
      v9 = v11;
      v10 = *(a4 + 24);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1D7ECB990@<X0>(uint64_t *a1@<X8>)
{
  result = BlueprintCompositionalListDataSourceProxy.dragReorderDelegate.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

__n128 sub_1D7ECB9CC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

double sub_1D7ECBA8C()
{
  v0.n128_f64[0] = ViewControllerPreviewable.previewInsets.getter(&v12);
  *&result = OUTLINED_FUNCTION_2_120(v1, v2, v3, v4, v5, v6, v7, v8, v0, v11, v9, v12, v13).n128_u64[0];
  return result;
}

uint64_t sub_1D7ECBAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D7ECBB94()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECBBE4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECBC78(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    OUTLINED_FUNCTION_1_137();
    sub_1D80CCB44(0, v8, v9, MEMORY[0x1E697DCC0]);
    v11 = v10;
    v12 = a1 + *(a3 + 64);

    return __swift_getEnumTagSinglePayload(v12, a2, v11);
  }
}

void *sub_1D7ECBD20(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_1_137();
    sub_1D80CCB44(0, v7, v8, MEMORY[0x1E697DCC0]);
    v10 = v9;
    v11 = v5 + *(a4 + 64);

    return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1D7ECBDD0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v10[0] = *(v0 + 16);
  v10[1] = v2;
  v11 = v1;
  v3 = (type metadata accessor for JSONSchemaPresetSelectorView(0, v10) - 8);
  v4 = v0 + ((*(*v3 + 80) + 56) & ~*(*v3 + 80));

  v5 = v3[18];
  OUTLINED_FUNCTION_1_137();
  sub_1D80CCB44(0, v6, v7, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D8190364();
    OUTLINED_FUNCTION_8();
    (*(v8 + 8))(v4 + v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7ECBF10()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v18 = *(v0 + 16);
  v17 = v18;
  v19 = v1;
  v20 = v2;
  v21 = v3;
  v4 = (type metadata accessor for JSONSchemaPresetSelectorView(0, &v18) - 8);
  v5 = *(*v4 + 80);
  v6 = *(*v4 + 64);
  v7 = *(v3 + 8);
  *&v18 = v17;
  v8 = (v5 + 56) & ~v5;
  *(&v18 + 1) = v1;
  v19 = v2;
  v20 = v7;
  v9 = type metadata accessor for JSONSchema.LabeledValue(0, &v18);
  OUTLINED_FUNCTION_9();
  v11 = *(v10 + 80);

  v12 = v4[18];
  OUTLINED_FUNCTION_1_137();
  sub_1D80CCB44(0, v13, v14, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D8190364();
    OUTLINED_FUNCTION_8();
    (*(v15 + 8))(v0 + v8 + v12);
  }

  else
  {
  }

  (*(*(v17 - 8) + 8))(v0 + ((v8 + v6 + v11) & ~v11) + *(v9 + 52), v17);
  return swift_deallocObject();
}

uint64_t sub_1D7ECC130@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8190514();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D7ECC198@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D81904D4();
  *a1 = result;
  return result;
}

uint64_t sub_1D7ECC1F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v12 = *a1;
  v1 = v12;
  v13 = *(a1 + 16);
  v14 = v3;
  type metadata accessor for JSONSchema.LabeledValue(255, &v12);
  v4 = sub_1D8191484();
  sub_1D80C8DFC(255);
  v6 = v5;
  OUTLINED_FUNCTION_16_39();
  WitnessTable = swift_getWitnessTable();
  v12 = v4;
  *&v13 = v1;
  *(&v13 + 1) = v6;
  v14 = WitnessTable;
  v15 = v2;
  v8 = sub_1D8190AE4();
  OUTLINED_FUNCTION_15_37();
  sub_1D80CCBA4(v9);
  OUTLINED_FUNCTION_4_81();
  v10 = swift_getWitnessTable();
  v12 = MEMORY[0x1E69E73E0];
  *&v13 = v8;
  *(&v13 + 1) = MEMORY[0x1E69E73F0];
  v14 = v10;
  sub_1D81907D4();
  OUTLINED_FUNCTION_17_32();
  return swift_getWitnessTable();
}

uint64_t sub_1D7ECC53C()
{
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7ECC578()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECC5B0@<X0>(uint64_t *a1@<X8>)
{
  result = BlueprintPrewarmState.state.getter();
  *a1 = result;
  return result;
}

__n128 sub_1D7ECC5EC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D7ECC5F8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECC704()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECC764()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECC79C()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_3_0();
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v2 + 64) + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v6, v1);

  return swift_deallocObject();
}

uint64_t sub_1D7ECC84C()
{
  OUTLINED_FUNCTION_3_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D7ECC8C8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECCB14()
{

  return swift_deallocObject();
}

__n128 sub_1D7ECCB60(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1D7ECCBB4()
{

  sub_1D7E57C40(*(v0 + 312), *(v0 + 320), *(v0 + 328));
  sub_1D7E57C40(*(v0 + 336), *(v0 + 344), *(v0 + 352));
  sub_1D7E57C40(*(v0 + 360), *(v0 + 368), *(v0 + 376));

  return swift_deallocObject();
}

uint64_t sub_1D7ECCC58()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7ECCC90()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECCCF0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECCD30()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7ECCD64()
{

  OUTLINED_FUNCTION_33_17();

  return swift_deallocObject();
}

uint64_t sub_1D7ECCDD4()
{
  OUTLINED_FUNCTION_124();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_124();
  v2 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_68();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_68();
  v4 = swift_getAssociatedConformanceWitness();
  v21 = AssociatedTypeWitness;
  v22 = v2;
  v23 = AssociatedConformanceWitness;
  v24 = v4;
  v5 = type metadata accessor for Blueprint(0, &v21);
  v20 = *(*(v5 - 8) + 80);

  v6 = v0 + ((v20 + 144) & ~v20);

  if (*(v6 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v6 + 16));
  }

  v7 = *(v5 + 56);
  v21 = AssociatedTypeWitness;
  v22 = v2;
  v23 = AssociatedConformanceWitness;
  v24 = v4;
  v8 = type metadata accessor for BlueprintSection(255, &v21);
  WitnessTable = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  sub_1D818F394();
  OUTLINED_FUNCTION_4_3();
  (*(v11 + 8))(v6 + v7);
  v12 = *(v5 + 60);
  v14 = type metadata accessor for BlueprintItem(255, v2, v4, v13);
  OUTLINED_FUNCTION_7_5();
  v15 = swift_getWitnessTable();
  OUTLINED_FUNCTION_20_10();
  v16 = swift_getWitnessTable();
  OUTLINED_FUNCTION_20_10();
  v17 = swift_getWitnessTable();
  v21 = v8;
  v22 = v14;
  v23 = v15;
  v24 = WitnessTable;
  v25 = v10;
  v26 = v16;
  v27 = v17;
  sub_1D818F784();
  OUTLINED_FUNCTION_4_3();
  (*(v18 + 8))(v6 + v12);

  return swift_deallocObject();
}

uint64_t sub_1D7ECD084()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECD0D4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECD114()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECD17C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECD1B4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECD2E4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECD320()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7ECD354()
{
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7ECD388@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = DockContainerViewController.rootViewController.getter(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D7ECD3B8()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7ECD3EC()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7ECD44C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECD484()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECD4BC()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECD4FC()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7ECD530()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_8_8();

  return swift_deallocObject();
}

__n128 sub_1D7ECD58C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_1D7ECD5D8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D7ECD61C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  sub_1D8019CE4(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 168));

  return swift_deallocObject();
}

uint64_t sub_1D7ECD6AC()
{

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7ECD708()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECD75C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECD79C()
{
  OUTLINED_FUNCTION_12_51();

  return swift_deallocObject();
}

uint64_t sub_1D7ECD7D4()
{
  OUTLINED_FUNCTION_12_51();

  return swift_deallocObject();
}

uint64_t sub_1D7ECD80C()
{
  OUTLINED_FUNCTION_12_51();

  return swift_deallocObject();
}

uint64_t sub_1D7ECD85C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECD8CC()
{
  v2 = OUTLINED_FUNCTION_1_151();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1D7ECD908()
{
  OUTLINED_FUNCTION_1_151();
  v0 = OUTLINED_FUNCTION_145();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

BOOL sub_1D7ECD9A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D81924B4();

  return v2 != 0;
}

uint64_t sub_1D7ECDAA0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECDB20(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_217();
  v4 = sub_1D818F394();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1D7ECDB6C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_217();
  v4 = sub_1D818F394();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D7ECDC1C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECDCE0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D818E754();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D7ECDE9C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECDEE0()
{

  return swift_deallocObject();
}

__n128 sub_1D7ECDF9C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D7ECDFA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8121904(a2, a3);
  *a1 = result & 1;
  return result;
}

id sub_1D7ECE010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = _s5TeaUI18CollectionViewCellC22traversedDisposerTokenSo8NSObjectCvg_0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7ECE044@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8122DF8(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D7ECE0A0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECE0F8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

double sub_1D7ECE168@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1D7ECE174()
{
  v1 = *(v0 + 16);
  v2 = sub_1D8191E84();
  OUTLINED_FUNCTION_15_15(v2);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);

  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v1))
  {
    OUTLINED_FUNCTION_3_0();
    (*(v5 + 8))(v0 + v4, v1);
  }

  OUTLINED_FUNCTION_37_16();

  return swift_deallocObject();
}

uint64_t sub_1D7ECE288()
{
  v1 = *(v0 + 16);
  v2 = sub_1D8191E84();
  OUTLINED_FUNCTION_15_15(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);

  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v1))
  {
    OUTLINED_FUNCTION_3_0();
    (*(v5 + 8))(v0 + v4, v1);
  }

  OUTLINED_FUNCTION_37_16();

  return swift_deallocObject();
}

uint64_t sub_1D7ECE4C4(void *a1)
{
  swift_getTupleTypeMetadata2();
  sub_1D8190B84();
  OUTLINED_FUNCTION_1_163();
  swift_getWitnessTable();
  sub_1D8190A74();
  OUTLINED_FUNCTION_0_227();

  return swift_getWitnessTable();
}

uint64_t sub_1D7ECE594()
{

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

id sub_1D7ECE5C8()
{
  v0 = sub_1D8137BA4();

  return v0;
}

uint64_t sub_1D7ECE5FC()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7ECE630@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D8136418();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D7ECE6A0()
{
  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

id sub_1D7ECE6F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

id sub_1D7ECE740@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 safeAreaInsets];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_1D7ECE794()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECE7E4()
{
  v0 = OUTLINED_FUNCTION_11_55();
  OUTLINED_FUNCTION_15_15(v0);
  if (!OUTLINED_FUNCTION_10_59())
  {
    OUTLINED_FUNCTION_5_85();
    v1 = OUTLINED_FUNCTION_26_25();
    v2(v1);
  }

  OUTLINED_FUNCTION_9_52();

  OUTLINED_FUNCTION_54_5();

  return swift_deallocObject();
}

uint64_t sub_1D7ECE97C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECE9B4()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7ECE9EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D8142D04();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D7ECEA54()
{
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7ECEA98()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7ECEACC()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7ECEB04()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECEC10()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECECF8()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7ECEDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_76_0();
  v6 = sub_1D818F824();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_5_47(*(v3 + *(a3 + 24) + 8));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v6);
}

uint64_t sub_1D7ECEE58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D818F824();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D7ECEF04()
{
  sub_1D81510E4(255);
  sub_1D8153B90(255);
  sub_1D8150A88(255);
  OUTLINED_FUNCTION_5_87();
  sub_1D8150E10(v0, v1, MEMORY[0x1E697CCF0]);
  OUTLINED_FUNCTION_8_61();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_6_94();
  sub_1D8150E10(v2, v3, MEMORY[0x1E697C1A8]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D7ECEFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_5_47(*(a1 + 8));
  }

  v7 = sub_1D818F824();
  v8 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1D7ECF058(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D818F824();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D7ECF0D8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECF110()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECF19C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7ECF1E0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECF218()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECF254()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8_6();
  v0 = OUTLINED_FUNCTION_2_11();
  v1(v0);

  return swift_deallocObject();
}

uint64_t sub_1D7ECF354()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

__n128 sub_1D7ECF3C0(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D7ECF3CC()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECF404()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECF4A0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECF52C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  OUTLINED_FUNCTION_7_84(a1, &qword_1ECA10BE8, MEMORY[0x1E6981148], MEMORY[0x1E6981138]);
  type metadata accessor for CheckboxView.CheckToggleStyle(255, v1, v2, v3);
  sub_1D8168438();
  OUTLINED_FUNCTION_2_165();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_96();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_8_63();
  sub_1D8191E84();
  OUTLINED_FUNCTION_8_63();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_8_63();
  sub_1D8190B84();
  OUTLINED_FUNCTION_1_163();
  swift_getWitnessTable();
  sub_1D8190A14();
  OUTLINED_FUNCTION_5_92();
  return swift_getWitnessTable();
}

uint64_t sub_1D7ECF610()
{
  v1 = sub_1D8190744();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D7ECF6C0()
{
  sub_1D816855C(255);
  sub_1D8190464();
  OUTLINED_FUNCTION_4_101();
  sub_1D81688BC(v0, v1, MEMORY[0x1E697D680]);
  OUTLINED_FUNCTION_3_141();
  sub_1D81688BC(v2, v3, MEMORY[0x1E697C240]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D7ECF778()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7ECF7C0@<X0>(_BYTE *a1@<X8>)
{
  result = ModalHostViewController.isCloseButtonHidden.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D7ECF818()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_1D7ECF8AC()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECF8E4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECF98C()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7ECF9C0()
{
  v1 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1D7ECFAA4()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7ECFADC()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7ECFB2C()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1D7ECFB8C()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1D7ECFBD4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECFC0C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D7ECFC4C()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

__n128 sub_1D7ECFD40(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D7ECFD4C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D7ECFDC8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D7ECFE24(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D818E994();
    v9 = a1 + *(a3 + 84);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1D7ECFEAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D818E994();
    v8 = v5 + *(a4 + 84);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D7ECFF2C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECFF70()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ECFFC4()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

id sub_1D7ED00A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D817F6D4();
  *a1 = result;
  return result;
}

uint64_t sub_1D7ED00D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D818E994();
  OUTLINED_FUNCTION_95();
  if (*(v7 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_1_61();
    type metadata accessor for Blueprint(v9, v10);
    OUTLINED_FUNCTION_95();
    if (*(v12 + 84) == a2)
    {
      return __swift_getEnumTagSinglePayload(a1 + *(a3 + 84), a2, v11);
    }

    else
    {
      v13 = *(a1 + *(a3 + 88) + 128);
      if (v13 >= 0xFFFFFFFF)
      {
        LODWORD(v13) = -1;
      }

      return (v13 + 1);
    }
  }
}

void sub_1D7ED01E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D818E994();
  OUTLINED_FUNCTION_95();
  if (*(v9 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(a1, a2, a2, v8);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_1_61();
    type metadata accessor for Blueprint(v10, v11);
    OUTLINED_FUNCTION_95();
    if (*(v13 + 84) == a3)
    {
      __swift_storeEnumTagSinglePayload(a1 + *(a4 + 84), a2, a2, v12);
    }

    else
    {
      *(a1 + *(a4 + 88) + 128) = (a2 - 1);
    }
  }
}

uint64_t sub_1D7ED02EC()
{
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7ED032C@<X0>(uint64_t *a1@<X8>)
{
  result = DebugWindow.observableRootViewController.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D7ED03C0()
{
  MEMORY[0x1DA715E30](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7ED047C()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7ED04C4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7ED0504()
{

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7ED0538()
{

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7ED0570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(sub_1D818E644() - 8) + 84) == a2)
  {
    v6 = OUTLINED_FUNCTION_1_187();

    return __swift_getEnumTagSinglePayload(v6, a2, v7);
  }

  else
  {
    v9 = *(a1 + *(a3 + 28));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 1;
    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D7ED0624(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D818E644();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

double sub_1D7ED06CC(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    sub_1D8190DB4();
  }

  return result;
}

char *sub_1D7ED0768(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_201(a3, result);
  }

  return result;
}

void *sub_1D7ED0788(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D7ED07B8(uint64_t result, char a2)
{
  if (a2 != -1)
  {
  }

  return v2;
}

uint64_t sub_1D7ED07CC()
{
  v1 = OUTLINED_FUNCTION_2_15();
  result = sub_1D7E4DCF0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

double NFClamp(double a1, double a2, double a3)
{
  if (a1 >= a2)
  {
    a2 = a1;
    if (a1 > a3)
    {
      return a3;
    }
  }

  return a2;
}

id TSAccessibilityCharacterLiteralAttributedString(void *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696AAB0];
  v2 = a1;
  v3 = [v1 alloc];
  v7 = *MEMORY[0x1E6988EA8];
  v8[0] = MEMORY[0x1E695E118];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [v3 initWithString:v2 attributes:v4];

  return v5;
}

uint64_t TUDeviceIsSlow(uint64_t a1, uint64_t a2)
{
  if (TUDeviceIsSlow_onceToken[0] != -1)
  {
    TUDeviceIsSlow_cold_1();
  }

  return TUDeviceIsSlow_result;
}

uint64_t __TUDeviceIsSlow_block_invoke()
{
  result = MGIsDeviceOneOfType();
  TUDeviceIsSlow_result = result;
  return result;
}

void sub_1D7ED9954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D7ED9AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D7ED9C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D7ED9E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void TUModifyAnimation(void *a1)
{
  v1 = a1;
  v3 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [MEMORY[0x1E69DD250] _modifyAnimationsWithPreferredFrameRateRange:1376258 updateReason:v1 animations:{*&v3.minimum, *&v3.maximum, *&v3.preferred}];
}

uint64_t UISceneSession.mainViewControllerIdentifier.getter()
{
  if (!sub_1D7E89164(v0))
  {
    v3 = 0u;
    v4 = 0u;
    goto LABEL_8;
  }

  sub_1D7EDF26C();

  if (!*(&v4 + 1))
  {
LABEL_8:
    sub_1D7E7BAAC(&v3);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

double sub_1D7EDF26C()
{
  OUTLINED_FUNCTION_16_6();
  if (!v2)
  {
    return OUTLINED_FUNCTION_6_3();
  }

  v3 = sub_1D7E11428(v0, v1);
  if ((v4 & 1) == 0)
  {
    return OUTLINED_FUNCTION_6_3();
  }

  v5 = OUTLINED_FUNCTION_4_9(v3);

  sub_1D7E1B288(v5, v6);
  return result;
}

double sub_1D7EDF2EC()
{
  OUTLINED_FUNCTION_10_9();
  if (!v0)
  {
    return OUTLINED_FUNCTION_6_3();
  }

  v1 = sub_1D7F04FD8();
  if ((v2 & 1) == 0)
  {
    return OUTLINED_FUNCTION_6_3();
  }

  v3 = OUTLINED_FUNCTION_4_9(v1);

  sub_1D7E1B288(v3, v4);
  return result;
}

uint64_t sub_1D7EDF340(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1D7E7E198(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_19(v2);
  return swift_unknownObjectRetain();
}

uint64_t sub_1D7EDF38C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1D7E7E198(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_19(v2);
}

void sub_1D7EDF3D8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = sub_1D7E7E198(a1);
    if (v3)
    {
      OUTLINED_FUNCTION_3_19(v2);
      sub_1D8190DB4();
    }
  }
}

void *sub_1D7EDF424(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1D7F061F8();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

double sub_1D7EDF46C()
{
  OUTLINED_FUNCTION_10_9();
  if (!v0)
  {
    return OUTLINED_FUNCTION_6_3();
  }

  v1 = sub_1D7F05094();
  if ((v2 & 1) == 0)
  {
    return OUTLINED_FUNCTION_6_3();
  }

  v3 = OUTLINED_FUNCTION_4_9(v1);

  sub_1D7E1B288(v3, v4);
  return result;
}

uint64_t sub_1D7EDF4EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_16_6();
  if (v10 && (v11 = v9, v12 = v8, v13 = sub_1D7E11428(v6, v7), (v14 & 1) != 0))
  {
    v15 = v13;
    v16 = *(v12 + 56);
    a4(0);
    OUTLINED_FUNCTION_8();
    sub_1D7EE2204(v16 + *(v17 + 72) * v15, v4, v11);
    v18 = OUTLINED_FUNCTION_17_2();
  }

  else
  {
    a4(0);
    v18 = OUTLINED_FUNCTION_15_0();
  }

  return __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
}

void sub_1D7EDF594(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (*(a3 + 16))
  {
    v4 = sub_1D7F050D0(a1, a2, a4);
    if (v5)
    {
      OUTLINED_FUNCTION_3_19(v4);
      sub_1D8190DB4();
    }
  }
}

uint64_t sub_1D7EDF5E0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v5 = sub_1D7F050D0(a1, a2, a4);
  if (v6)
  {
    return *(*(a3 + 56) + 16 * v5);
  }

  else
  {
    return 0;
  }
}

double sub_1D7EDF644()
{
  OUTLINED_FUNCTION_16_6();
  if (v3 && (v4 = sub_1D7E11428(v1, v2), (v5 & 1) != 0))
  {
    OUTLINED_FUNCTION_19_1(v4);
  }

  else
  {
    *(v0 + 32) = 0;
    return OUTLINED_FUNCTION_6_3();
  }

  return result;
}

uint64_t sub_1D7EDF684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1D7E11428(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_14_7(v4);
  sub_1D8190DB4();
  return v3;
}