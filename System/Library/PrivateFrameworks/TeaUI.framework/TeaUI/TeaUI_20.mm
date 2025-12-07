void sub_1D7FCFBB4()
{
  OUTLINED_FUNCTION_7_20();
  v2 = (*MEMORY[0x1E69E7D40] & v1);
  v12 = OUTLINED_FUNCTION_20_14(v2[7], v3, v4, v5, v6, v7, v8, v9, v10, v2[6], v2[5].n128_i64[0], v2[5].n128_i64[1], v2[6].n128_i64[0], v2[6].n128_i64[1], v11);
  v23.receiver = v0;
  v23.super_class = v12;
  objc_msgSendSuper2(&v23, sel_loadView);
  v13 = OUTLINED_FUNCTION_37_9();
  if (v13)
  {
    v14 = v13;
    [v13 frame];
    OUTLINED_FUNCTION_9_0();

    v15 = objc_allocWithZone(type metadata accessor for PageView());
    v16 = OUTLINED_FUNCTION_8_0();
    v19 = [v17 v18];
    v20 = OUTLINED_FUNCTION_37_9();
    if (v20)
    {
      v21 = v20;
      v22 = [v20 autoresizingMask];

      [v19 setAutoresizingMask_];
      [v0 setView_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D7FCFCF4(void *a1)
{
  v1 = a1;
  sub_1D7FCFBB4();
}

void sub_1D7FCFD3C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v0;
  v5 = *((*MEMORY[0x1E69E7D40] & v2) + 0x68);
  v6 = *((*MEMORY[0x1E69E7D40] & v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = OUTLINED_FUNCTION_31_0();
  v11 = type metadata accessor for PageBlueprint(v8, AssociatedTypeWitness, v9, v10);
  OUTLINED_FUNCTION_9();
  v13 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v42.i8[-v15];
  v17 = *((v3 & v2) + 0x70);
  v18 = *((v3 & v2) + 0x78);
  v46 = v6;
  v42 = *(v4 + 88);
  v47 = v42;
  v48 = v5;
  v49 = v17;
  v43 = v18;
  v44 = v17;
  v50 = v18;
  v19 = type metadata accessor for PageViewController(0, &v46);
  v51.receiver = v1;
  v51.super_class = v19;
  objc_msgSendSuper2(&v51, sel_viewDidLoad);
  OUTLINED_FUNCTION_10_19();
  v21 = *&v1[*(v20 + 152)];
  v22 = OUTLINED_FUNCTION_37_9();
  if (!v22)
  {
    __break(1u);
    goto LABEL_7;
  }

  v23 = v22;
  v24 = [v1 view];
  if (!v24)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v25 = v24;
  [v24 bounds];
  OUTLINED_FUNCTION_9_0();

  v26 = OUTLINED_FUNCTION_8_0();
  [v27 v28];

  [v1 addChildViewController_];
  v29 = [v1 view];
  if (!v29)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v30 = v29;
  v31 = OUTLINED_FUNCTION_37_9();
  if (v31)
  {
    v32 = v31;
    [v30 addSubview_];

    [v21 didMoveToParentViewController_];
    OUTLINED_FUNCTION_10_19();
    v33 = *(v5 + 24);
    v33(v6, v5);
    sub_1D818F154();

    sub_1D7FD01F8(v16);
    (*(v13 + 8))(v16, v11);
    v33(v6, v5);
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    v36.i64[0] = v6;
    *&v37 = vdupq_laneq_s64(v42, 1).u64[0];
    *(&v37 + 1) = v5;
    *(v35 + 16) = vzip1q_s64(v36, v42);
    *(v35 + 32) = v37;
    v38 = v43;
    *(v35 + 48) = v44;
    *(v35 + 56) = v38;
    *(v35 + 64) = v34;
    OUTLINED_FUNCTION_0_2();
    sub_1D818F164();

    OUTLINED_FUNCTION_141(&v46, v48);
    sub_1D818ED84();
    __swift_destroy_boxed_opaque_existential_1Tm(&v46);
    sub_1D7E29588(0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1D819FAB0;
    v40 = sub_1D818FE54();
    v41 = MEMORY[0x1E69DC098];
    *(v39 + 32) = v40;
    *(v39 + 40) = v41;
    *(swift_allocObject() + 16) = ObjectType;
    sub_1D8191A24();
    swift_unknownObjectRelease();

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1D7FD01F8(uint64_t a1)
{
  v2 = v1;
  v130 = a1;
  v109 = *MEMORY[0x1E69E7D40] & *v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v117 = swift_getAssociatedTypeWitness();
  v115 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v114 = &v101 - v5;
  v116 = AssociatedConformanceWitness;
  v7 = type metadata accessor for PageBlueprint(255, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v125 = sub_1D8191E84();
  v122 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v121 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v110 = &v101 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v111 = &v101 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v101 - v14;
  v129 = v7;
  v120 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v118 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v108 = &v101 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v101 - v21;
  v23 = sub_1D8191E84();
  v126 = *(v23 - 8);
  v127 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v123 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v124 = &v101 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v112 = &v101 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v113 = &v101 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v101 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v101 - v35;
  v37 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v38);
  v106 = &v101 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v104 = &v101 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v105 = &v101 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v101 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v101 - v48;
  v50 = sub_1D7FCEEE8();
  if (!v50)
  {
    goto LABEL_6;
  }

  v51 = v50;
  v102 = v22;
  ObjectType = swift_getObjectType();
  v53 = dynamic_cast_existential_1_conditional(v51, ObjectType, MEMORY[0x1E69D6488]);
  if (!v53)
  {

LABEL_6:
    v128 = 0;
    v107 = 0;
    goto LABEL_7;
  }

  v55 = v53;
  v103 = v2;
  v101 = v15;
  v119 = v37;
  v56 = v54;
  swift_getObjectType();
  v128 = v55;
  v131 = v55;
  v57 = v51;
  v107 = v56;
  v58 = sub_1D818EF94();
  v59 = v129;
  PageBlueprint.page(for:)(v58);

  if (__swift_getEnumTagSinglePayload(v36, 1, AssociatedTypeWitness) == 1)
  {

    (*(v126 + 8))(v36, v127);
    v37 = v119;
    v2 = v103;
  }

  else
  {
    v37 = v119;
    (*(v119 + 32))(v49, v36, AssociatedTypeWitness);
    v74 = v101;
    v75 = v103;
    sub_1D7FCEFEC(v101);
    if (__swift_getEnumTagSinglePayload(v74, 1, v59) != 1)
    {
      v91 = v102;
      (*(v120 + 32))(v102, v74, v59);
      v62 = v128;
      [*(v75 + *((*MEMORY[0x1E69E7D40] & *v75) + 0x98)) setVisibleViewController_];
      v92 = v130;
      sub_1D7FD5ACC(v91, v130, v49);

      (*(v120 + 8))(v91, v59);
      (*(v37 + 8))(v49, AssociatedTypeWitness);
      v61 = v122;
      v2 = v75;
      goto LABEL_32;
    }

    (*(v37 + 8))(v49, AssociatedTypeWitness);

    (*(v122 + 8))(v74, v125);
    v2 = v75;
  }

LABEL_7:
  sub_1D7FCEA94(v33);
  if (__swift_getEnumTagSinglePayload(v33, 1, AssociatedTypeWitness) == 1)
  {
    v60 = *(v126 + 8);
    v60(v33, v127);
    v61 = v122;
    v62 = v128;
  }

  else
  {
    v63 = *(v37 + 32);
    v63(v46, v33, AssociatedTypeWitness);
    v64 = v114;
    (*(v116 + 40))(AssociatedTypeWitness);
    v65 = PageBlueprint.pagesMatching(marker:)(v64, v129);
    (*(v115 + 8))(v64, v117);
    v131 = v65;
    sub_1D8191484();
    swift_getWitnessTable();
    v66 = v113;
    sub_1D8191844();
    if (__swift_getEnumTagSinglePayload(v66, 1, AssociatedTypeWitness) != 1)
    {
      v72 = v105;
      v63(v105, v66, AssociatedTypeWitness);

      PageViewController.show(page:animated:)(v72);
      v73 = *(v37 + 8);
      v73(v72, AssociatedTypeWitness);
      v73(v46, AssociatedTypeWitness);
      v62 = v128;
      v59 = v129;
      v61 = v122;
LABEL_31:
      v92 = v130;
      goto LABEL_32;
    }

    (*(v37 + 8))(v46, AssociatedTypeWitness);
    v60 = *(v126 + 8);
    v60(v66, v127);

    v61 = v122;
    v62 = v128;
  }

  v67 = v123;
  v68 = v124;
  v59 = v129;
  if (!v62)
  {
    goto LABEL_27;
  }

  v119 = v37;
  v69 = v111;
  sub_1D7FCEFEC(v111);
  if (__swift_getEnumTagSinglePayload(v69, 1, v59))
  {
    v70 = *(v61 + 8);
    v71 = v62;
    v70(v69, v125);
    __swift_storeEnumTagSinglePayload(v68, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v76 = v120;
    v77 = v108;
    (*(v120 + 16))(v108, v69, v59);
    v70 = *(v61 + 8);
    v78 = v128;
    v79 = v69;
    v80 = v78;
    v70(v79, v125);
    swift_getObjectType();
    v131 = v80;
    sub_1D818EF94();
    PageBlueprint.page(after:)(v59, v124);

    v81 = v76;
    v62 = v128;
    v82 = v77;
    v68 = v124;
    (*(v81 + 8))(v82, v59);
    if (__swift_getEnumTagSinglePayload(v68, 1, AssociatedTypeWitness) != 1)
    {
      v37 = v119;
      v84 = v112;
      (*(v119 + 32))(v112, v68, AssociatedTypeWitness);
      __swift_storeEnumTagSinglePayload(v84, 0, 1, AssociatedTypeWitness);
      v67 = v123;
      goto LABEL_25;
    }
  }

  v83 = v110;
  sub_1D7FCEFEC(v110);
  if (__swift_getEnumTagSinglePayload(v83, 1, v59))
  {
    v70(v83, v125);
    v84 = v112;
    __swift_storeEnumTagSinglePayload(v112, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v85 = v120;
    v86 = v108;
    (*(v120 + 16))(v108, v83, v59);
    v70(v83, v125);
    swift_getObjectType();
    v131 = v128;
    sub_1D818EF94();
    v87 = v112;
    PageBlueprint.page(before:)(v59, v112);
    v84 = v87;

    v88 = v85;
    v62 = v128;
    v89 = v86;
    v68 = v124;
    (*(v88 + 8))(v89, v59);
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v68, 1, AssociatedTypeWitness);
  v37 = v119;
  v67 = v123;
  if (EnumTagSinglePayload != 1)
  {
    v60(v68, v127);
  }

LABEL_25:
  if (__swift_getEnumTagSinglePayload(v84, 1, AssociatedTypeWitness) != 1)
  {
    v94 = v104;
    (*(v37 + 32))(v104, v84, AssociatedTypeWitness);
    PageViewController.show(page:animated:)(v94);

    (*(v37 + 8))(v94, AssociatedTypeWitness);
    goto LABEL_31;
  }

  v60(v84, v127);
LABEL_27:
  swift_getWitnessTable();
  v92 = v130;
  sub_1D8191844();
  if (__swift_getEnumTagSinglePayload(v67, 1, AssociatedTypeWitness) == 1)
  {
    v60(v67, v127);
  }

  else
  {
    v93 = v106;
    (*(v37 + 32))(v106, v67, AssociatedTypeWitness);
    PageViewController.show(page:animated:)(v93);
    (*(v37 + 8))(v93, AssociatedTypeWitness);
  }

LABEL_32:
  v95 = v121;
  sub_1D7FCEFEC(v121);
  if (__swift_getEnumTagSinglePayload(v95, 1, v59) == 1)
  {

    (*(v61 + 8))(v95, v125);
  }

  else
  {
    v96 = v120;
    v97 = v118;
    v98 = (*(v120 + 32))(v118, v95, v59);
    if (sub_1D7FCE678(v98, v99))
    {
      (*(*(v109 + 112) + 80))(v92, v97, *(v109 + 88));
      swift_unknownObjectRelease();
    }

    (*(v96 + 8))(v97, v59);
  }

  return sub_1D7FD5970(v2, v92);
}

void sub_1D7FD1064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a4;
  v35 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for PageBlueprint(0, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v31 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v33 = *(Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0x98));
    v22 = swift_allocObject();
    v32 = a8;
    v23 = v22;
    swift_unknownObjectWeakInit();
    (*(v17 + 16))(v19, a1, v16);
    v24 = (*(v17 + 80) + 72) & ~*(v17 + 80);
    v25 = swift_allocObject();
    v27 = v34;
    v26 = v35;
    *(v25 + 2) = a3;
    *(v25 + 3) = v27;
    *(v25 + 4) = v26;
    *(v25 + 5) = a6;
    v28 = v32;
    *(v25 + 6) = a7;
    *(v25 + 7) = v28;
    *(v25 + 8) = v23;
    (*(v17 + 32))(&v25[v24], v19, v16);
    aBlock[4] = sub_1D7FD6ED8;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D7E64940;
    aBlock[3] = &block_descriptor_30;
    v29 = _Block_copy(aBlock);
    v30 = v33;

    [v30 performWhenIdle_];
    _Block_release(v29);

    sub_1D818EF14();
  }
}

void sub_1D7FD1340(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1D7FD01F8(a2);
  }
}

void sub_1D7FD139C(void *a1, id a2)
{
  v3 = [a2 activeAppearance];
  v4 = [a1 traitCollection];
  v5 = [v4 activeAppearance];

  if (v3 != v5)
  {
    if (v5)
    {
      LOBYTE(v12[0]) = 2;
      sub_1D7FD1524(v12, 1.0);
      return;
    }

    if (sub_1D7FCEEE8() && (sub_1D7E194D0(), sub_1D7E0631C(0, &qword_1EDBBBB30, &protocol descriptor for PageViewable), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v10 + 1))
      {
        sub_1D7E05450(&v9, v12);
        v6 = (a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0xC0));
        v7 = v6[3];
        v8 = v6[4];
        __swift_project_boxed_opaque_existential_1(v6, v7);
        (*(v8 + 32))(v12, v7, v8);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
        return;
      }
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
    }

    sub_1D7FBDB74(&v9, &qword_1EDBBBB28, &qword_1EDBBBB30, &protocol descriptor for PageViewable);
  }
}

uint64_t sub_1D7FD1524(char *a1, double a2)
{
  v4 = *a1;
  result = sub_1D7FD5808();
  if ((result & 1) == 0)
  {
    return result;
  }

  if (!sub_1D7FCEEE8() || (sub_1D7E194D0(), sub_1D7E0631C(0, &qword_1EDBBBB30, &protocol descriptor for PageViewable), (swift_dynamicCast() & 1) == 0))
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    return sub_1D7FBDB74(&v12, &qword_1EDBBBB28, &qword_1EDBBBB30, &protocol descriptor for PageViewable);
  }

  if (!*(&v13 + 1))
  {
    return sub_1D7FBDB74(&v12, &qword_1EDBBBB28, &qword_1EDBBBB30, &protocol descriptor for PageViewable);
  }

  sub_1D7E05450(&v12, v15);
  v6 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0xC0));
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9 = (*(v8 + 40))(v15, v7, v8);
  v10 = v6[3];
  v11 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v10);
  if (v9)
  {
    (*(v11 + 24))(v15, v10, v11);
  }

  else
  {
    LOBYTE(v12) = v4;
    (*(v11 + 8))(v15, &v12, v10, v11, a2);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v15);
}

void sub_1D7FD16D0(void *a1)
{
  v1 = a1;
  sub_1D7FCFD3C();
}

uint64_t sub_1D7FD1718(char a1)
{
  OUTLINED_FUNCTION_7_20();
  v3 = MEMORY[0x1E69E7D40];
  v5 = (*MEMORY[0x1E69E7D40] & v4);
  v15 = OUTLINED_FUNCTION_20_14(v5[7], v6, v7, v8, v9, v10, v11, v12, v13, v5[6], v5[5].n128_i64[0], v5[5].n128_i64[1], v5[6].n128_i64[0], v5[6].n128_i64[1], v14);
  v18.receiver = v1;
  v18.super_class = v15;
  objc_msgSendSuper2(&v18, sel_viewDidAppear_, a1 & 1);
  *(v1 + *((*v3 & *v1) + 0xD0)) = 1;
  sub_1D7FD17D8();
  LOBYTE(v17) = 0;
  return sub_1D7FD1524(&v17, 0.0);
}

double sub_1D7FD17D8()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v0;
  sub_1D7FCF2B0();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v3 + 80);
  *(v5 + 32) = *((v2 & v1) + 0x60);
  *(v5 + 40) = *(v3 + 104);
  *(v5 + 56) = *((v2 & v1) + 0x78);
  *(v5 + 64) = v4;

  sub_1D7F19228(sub_1D7FD6EC4, v5);

  return result;
}

void sub_1D7FD191C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1D7FD1718(a3);
}

double sub_1D7FD1970(char a1)
{
  v2 = v1;
  v4 = (*MEMORY[0x1E69E7D40] & *v2);
  v5 = v4[6];
  v19[0] = v4[5];
  v19[1] = v5;
  v19[2] = v4[7];
  v6 = type metadata accessor for PageViewController(0, v19);
  v20.receiver = v2;
  v20.super_class = v6;
  objc_msgSendSuper2(&v20, sel_viewDidDisappear_, a1 & 1);
  v7 = [v2 ts_isVideoPlayerPresentedFullScreen];
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_10_19();
    *(v2 + *(v8 + 208)) = 0;
  }

  if (!sub_1D7FCEEE8() || (sub_1D7E194D0(), sub_1D7E0631C(0, &qword_1EDBBBB30, &protocol descriptor for PageViewable), (swift_dynamicCast() & 1) == 0))
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    goto LABEL_9;
  }

  if (!*(&v17 + 1))
  {
LABEL_9:
    sub_1D7FBDB74(&v16, &qword_1EDBBBB28, &qword_1EDBBBB30, &protocol descriptor for PageViewable);
    return sub_1D7FD1B7C();
  }

  sub_1D7E05450(&v16, v19);
  OUTLINED_FUNCTION_10_19();
  v10 = (v2 + *(v9 + 192));
  v11 = v10[3];
  v12 = v10[4];
  OUTLINED_FUNCTION_141(v10, v11);
  if (v7 & 1 | (((*(v12 + 40))(v19, v11, v12) & 1) == 0))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    return result;
  }

  v14 = v10[3];
  v15 = v10[4];
  OUTLINED_FUNCTION_141(v10, v14);
  (*(v15 + 32))(v19, v14, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  return sub_1D7FD1B7C();
}

double sub_1D7FD1B7C()
{
  sub_1D7FCF2B0();
  PageSheetPresentationObserver.endObserving()();

  return result;
}

void sub_1D7FD1BB8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1D7FD1970(a3);
}

void sub_1D7FD1C0C()
{
  OUTLINED_FUNCTION_7_20();
  v1 = MEMORY[0x1E69E7D40];
  v3 = (*MEMORY[0x1E69E7D40] & v2);
  v13 = OUTLINED_FUNCTION_20_14(v3[7], v4, v5, v6, v7, v8, v9, v10, v11, v3[6], v3[5].n128_i64[0], v3[5].n128_i64[1], v3[6].n128_i64[0], v3[6].n128_i64[1], v12);
  v21.receiver = v0;
  v21.super_class = v13;
  objc_msgSendSuper2(&v21, sel_viewWillLayoutSubviews);
  v14 = [*(v0 + *((*v1 & *v0) + 0x98)) view];
  if (v14)
  {
    v15 = v14;
    v16 = OUTLINED_FUNCTION_37_9();
    if (v16)
    {
      v17 = v16;
      [v16 bounds];
      OUTLINED_FUNCTION_9_0();

      v18 = OUTLINED_FUNCTION_8_0();
      [v19 v20];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1D7FD1D20(void *a1)
{
  v1 = a1;
  sub_1D7FD1C0C();
}

void sub_1D7FD1D68()
{
  OUTLINED_FUNCTION_120();
  v2 = v0;
  v112 = v3;
  v108 = v4;
  v6 = v5;
  v7 = (*MEMORY[0x1E69E7D40] & *v0);
  v8 = v7[13];
  v9 = v7[10];
  OUTLINED_FUNCTION_13_20();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1D8191E84();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_9();
  v105 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_94();
  v109 = v14;
  v117 = v9;
  v118 = v8;
  OUTLINED_FUNCTION_27_11();
  swift_getAssociatedConformanceWitness();
  v15 = OUTLINED_FUNCTION_31_0();
  v103 = v16;
  v18 = type metadata accessor for PageBlueprint(v15, AssociatedTypeWitness, v16, v17);
  OUTLINED_FUNCTION_9();
  v111 = v19;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_94();
  v110 = v21;
  OUTLINED_FUNCTION_2();
  v116 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_23();
  v106 = v24;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_24_1();
  v104 = v26;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_24_1();
  v113 = v28;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_24_1();
  v114 = v30;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_30_10();
  OUTLINED_FUNCTION_2();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_23();
  v102 = v35;
  OUTLINED_FUNCTION_77();
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v94 - v38;
  v107 = v6;
  v40 = [v6 visibleViewController];
  if (!v40)
  {
    goto LABEL_33;
  }

  v41 = v40;
  v100 = v18;
  sub_1D7FD28C4(v40, v1);
  OUTLINED_FUNCTION_43_0(v1, 1, AssociatedTypeWitness);
  if (v74)
  {

    (*(v116 + 8))(v1, v11);
    goto LABEL_33;
  }

  v98 = v11;
  v101 = v33;
  v42 = *(v33 + 32);
  v96 = v33 + 32;
  v95 = v42;
  v43 = (v42)(v39, v1, AssociatedTypeWitness);
  v45 = sub_1D7FCE678(v43, v44);
  v46 = v7;
  v47 = v108;
  if (v45)
  {
    OUTLINED_FUNCTION_14_17();
    OUTLINED_FUNCTION_21_14();
    v48();
    v49 = v110;
    sub_1D818F154();

    (*(v46[14] + 32))(v49, v39, v41, v47, v112, v46[11]);
    swift_unknownObjectRelease();
    (*(v111 + 8))(v49, v100);
  }

  OUTLINED_FUNCTION_14_17();
  (*(v46[15] + 24))(v39, v46[12]);
  if (v47)
  {
    v122 = v47;
    sub_1D7E194D0();
    sub_1D7E0631C(0, &qword_1EDBBBB30, &protocol descriptor for PageViewable);
    v50 = v47;
    v51 = swift_dynamicCast();
    v52 = v98;
    if (v51)
    {
      if (v121)
      {
        sub_1D7E05450(&v120, &v122);
        OUTLINED_FUNCTION_10_19();
        v54 = (v2 + *(v53 + 192));
        v56 = v54[3];
        v55 = v54[4];
        OUTLINED_FUNCTION_141(v54, v56);
        (*(v55 + 32))(&v122, v56, v55);
        __swift_destroy_boxed_opaque_existential_1Tm(&v122);
        goto LABEL_14;
      }
    }

    else
    {
      OUTLINED_FUNCTION_28_9();
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_9();
    v52 = v98;
  }

  sub_1D7FBDB74(&v120, &qword_1EDBBBB28, &qword_1EDBBBB30, &protocol descriptor for PageViewable);
LABEL_14:
  v119 = v41;
  sub_1D7E194D0();
  sub_1D7E0631C(0, &qword_1EDBBBB30, &protocol descriptor for PageViewable);
  v108 = v41;
  v57 = swift_dynamicCast();
  v99 = v46;
  if (v57)
  {
    sub_1D7E05450(&v120, &v122);
    OUTLINED_FUNCTION_10_19();
    v59 = (v2 + *(v58 + 192));
    v60 = v59[3];
    v61 = v59[4];
    __swift_project_boxed_opaque_existential_1(v59, v60);
    sub_1D7FD2B24(v2, v112, &v120);
    PageSessionManagerType.startSession(for:trigger:)(&v122, &v120, v60, v61);
    __swift_destroy_boxed_opaque_existential_1Tm(&v122);
  }

  else
  {
    OUTLINED_FUNCTION_28_9();
    sub_1D7FBDB74(&v120, &qword_1EDBBBB28, &qword_1EDBBBB30, &protocol descriptor for PageViewable);
  }

  v62 = v113;
  v63 = v114;
  sub_1D7FCEA94(v114);
  v64 = *(v101 + 16);
  v112 = v39;
  v98 = v101 + 16;
  v97 = v64;
  v64(v62, v39, AssociatedTypeWitness);
  OUTLINED_FUNCTION_102();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, AssociatedTypeWitness);
  v68 = v116;
  v69 = *(TupleTypeMetadata2 + 48);
  v70 = *(v116 + 16);
  v71 = v109;
  v70(v109, v63, v52);
  v70(v71 + v69, v62, v52);
  OUTLINED_FUNCTION_43_0(v71, 1, AssociatedTypeWitness);
  if (v74)
  {
    v72 = *(v68 + 8);
    v72(v62, v52);
    v72(v63, v52);
    OUTLINED_FUNCTION_43_0(v71 + v69, 1, AssociatedTypeWitness);
    if (v74)
    {
      v72(v71, v52);
      v7 = v99;
      (*(v101 + 8))(v112, AssociatedTypeWitness);
LABEL_30:

      goto LABEL_33;
    }
  }

  else
  {
    v73 = v104;
    v70(v104, v71, v52);
    OUTLINED_FUNCTION_43_0(v71 + v69, 1, AssociatedTypeWitness);
    if (!v74)
    {
      v90 = v102;
      v95(v102, v71 + v69, AssociatedTypeWitness);
      LODWORD(TupleTypeMetadata2) = sub_1D8190ED4();
      v91 = *(v101 + 8);
      v91(v90, AssociatedTypeWitness);
      v92 = *(v116 + 8);
      v92(v113, v52);
      v92(v114, v52);
      v91(v73, AssociatedTypeWitness);
      v92(v71, v52);
      v7 = v99;
      if (TupleTypeMetadata2)
      {
        v91(v112, AssociatedTypeWitness);
        goto LABEL_30;
      }

      goto LABEL_26;
    }

    v75 = *(v116 + 8);
    v75(v113, v52);
    v75(v114, v52);
    (*(v101 + 8))(v73, AssociatedTypeWitness);
  }

  v76 = OUTLINED_FUNCTION_134_0();
  v77(v76, TupleTypeMetadata2);
  v7 = v99;
LABEL_26:
  v78 = v106;
  v79 = v112;
  v97(v106, v112, AssociatedTypeWitness);
  OUTLINED_FUNCTION_102();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, AssociatedTypeWitness);
  sub_1D7FCEB64(v78);
  v83 = [v107 visibleViewController];
  sub_1D7FCED3C();
  if (sub_1D7FCE678(v84, v85))
  {
    OUTLINED_FUNCTION_14_17();
    OUTLINED_FUNCTION_21_14();
    v86();
    v87 = v110;
    sub_1D818F154();

    (*(v7[14] + 40))(v87, v79, v7[11]);

    swift_unknownObjectRelease();
    v88 = OUTLINED_FUNCTION_134_0();
    v89(v88, v100);
  }

  else
  {
  }

  (*(v101 + 8))(v79, AssociatedTypeWitness);
LABEL_33:
  OUTLINED_FUNCTION_10_19();
  OUTLINED_FUNCTION_15_2(v2 + *(v93 + 200), &v120);
  v122 = v117;
  v123 = *(v7 + 11);
  v124 = v118;
  v125 = *(v7 + 7);
  type metadata accessor for PageViewController.NavigationAction(0, &v122);
  OUTLINED_FUNCTION_52();
  sub_1D8191484();
  sub_1D8191474();
  swift_endAccess();
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7FD28C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x68);
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for PageBlueprint(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - v12;
  ObjectType = swift_getObjectType();
  v15 = dynamic_cast_existential_1_conditional(a1, ObjectType, MEMORY[0x1E69D6488]);
  if (v15)
  {
    v17 = v15;
    v23[1] = a2;
    v24 = v10;
    v18 = *(v5 + 24);
    v23[0] = v16;
    v19 = a1;
    v18(v6, v5);
    sub_1D818F154();

    swift_getObjectType();
    v25 = v17;
    v20 = sub_1D818EF94();
    v21 = v24;
    PageBlueprint.page(for:)(v20);

    return (*(v11 + 8))(v13, v21);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, AssociatedTypeWitness);
  }
}

uint64_t sub_1D7FD2B24@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = (*MEMORY[0x1E69E7D40] & *a1);
  sub_1D7FCF200(a1, a2);
  v11 = v6;
  v7 = v5[6];
  v10[0] = v5[5];
  v10[1] = v7;
  v10[2] = v5[7];
  type metadata accessor for PageViewController.NavigationAction(255, v10);
  sub_1D8191484();
  swift_getWitnessTable();
  sub_1D8190E74();

  if (LOBYTE(v10[0]) == 2 || (v10[0] & 1) != 0)
  {
    v9 = a2 != 0;
  }

  else
  {
    v9 = 3;
  }

  *a3 = v9;
  return result;
}

void sub_1D7FD2C30(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1D7FD1D68();
}

id sub_1D7FD2CD4(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E7D40] & *v2;
  v6 = sub_1D818E2D4();
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v30 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = v30 - v15;
  v17 = (*(v5 + 528))(a1, a2, v14);
  (*(v13 + 16))(v16, a1, AssociatedTypeWitness);
  sub_1D7E0631C(0, qword_1EDBB65E0, &protocol descriptor for AppEntityAnnotationProviding);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    sub_1D7FBDB74(&v34, &unk_1EDBB65D0, qword_1EDBB65E0, &protocol descriptor for AppEntityAnnotationProviding);
    return v17;
  }

  sub_1D7E05450(&v34, v37);
  v18 = v38;
  v19 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  (*(v19 + 8))(&v32, v18, v19);
  if (!v33)
  {
    sub_1D7FBDB74(&v32, &unk_1EDBBC730, &unk_1EDBBC740, MEMORY[0x1E6959DF8]);
    goto LABEL_7;
  }

  sub_1D7E05450(&v32, &v34);
  sub_1D818E284();
  result = [v17 view];
  if (result)
  {
    v21 = result;
    v22 = *(&v35 + 1);
    v30[1] = v36;
    v23 = __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
    v24 = sub_1D818FD34();
    v25 = MEMORY[0x1EEE9AC00](v24);
    (*(v27 + 16))(v30 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v22, v25);
    v28 = v31;
    (*(v31 + 16))(v8, v11, v6);
    v29 = sub_1D818FD24();
    sub_1D8191C64();

    (*(v28 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(&v34);
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    return v17;
  }

  __break(1u);
  return result;
}

id sub_1D7FD3128(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1D7FD2CBC(v8, v7);
  v10 = v9;

  return v10;
}

void sub_1D7FD31B0()
{
  OUTLINED_FUNCTION_120();
  v45 = v1;
  v3 = v2;
  OUTLINED_FUNCTION_10_19();
  v5 = *(v4 + 104);
  v8 = *((v7 & v6) + 0x50);
  OUTLINED_FUNCTION_41_6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = v8;
  swift_getAssociatedConformanceWitness();
  v10 = OUTLINED_FUNCTION_31_0();
  v40 = v11;
  type metadata accessor for PageBlueprint(v10, AssociatedTypeWitness, v11, v12);
  OUTLINED_FUNCTION_9();
  v43 = v14;
  v44 = v13;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_51();
  v16 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_23();
  v41 = v20;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v36 - v22;
  OUTLINED_FUNCTION_2();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_23();
  v39 = v27;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_30_10();
  sub_1D7FD28C4(v3, v23);
  OUTLINED_FUNCTION_43_0(v23, 1, AssociatedTypeWitness);
  if (v33)
  {
    (*(v18 + 8))(v23, v16);
  }

  else
  {
    v37 = v18;
    v38 = v16;
    v29 = v25;
    v36 = *(v25 + 32);
    v36(v8, v23, AssociatedTypeWitness);
    OUTLINED_FUNCTION_10_19();
    (*(v5 + 24))(v42, v5);
    sub_1D818F154();

    v30 = sub_1D818EF94();
    v31 = v41;
    v32 = v44;
    v45(v30);

    (*(v43 + 8))(v0, v32);
    OUTLINED_FUNCTION_43_0(v31, 1, AssociatedTypeWitness);
    if (v33)
    {
      (*(v29 + 8))(v8, AssociatedTypeWitness);
      (*(v37 + 8))(v31, v38);
    }

    else
    {
      v34 = v39;
      v36(v39, v31, AssociatedTypeWitness);
      sub_1D7FD2CD4(v34, 0);
      v35 = *(v29 + 8);
      v35(v34, AssociatedTypeWitness);
      v35(v8, AssociatedTypeWitness);
    }
  }

  OUTLINED_FUNCTION_100();
}

id sub_1D7FD3588(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1D7FD3198(v8, v7);
  v10 = v9;

  return v10;
}

void sub_1D7FD35F8()
{
  OUTLINED_FUNCTION_120();
  v46 = v1;
  v47 = v2;
  v4 = v3;
  v5 = *v0;
  v6 = *MEMORY[0x1E69E7D40];
  v45 = *MEMORY[0x1E69E7D40] & *v0;
  v7 = *((v6 & v5) + 0x68);
  v8 = *((v6 & v5) + 0x50);
  OUTLINED_FUNCTION_13_20();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = v7;
  v41 = v8;
  swift_getAssociatedConformanceWitness();
  v10 = OUTLINED_FUNCTION_29_8();
  v44 = type metadata accessor for PageBlueprint(v10, v11, v12, v13);
  OUTLINED_FUNCTION_9();
  v42 = v14;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_94();
  v40 = v16;
  sub_1D818E2D4();
  OUTLINED_FUNCTION_9();
  v48 = v18;
  v49 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v21 = v20 - v19;
  v22 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v24 = v23;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v40 - v26;
  OUTLINED_FUNCTION_2();
  v29 = v28;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v40 - v31;
  sub_1D7FD28C4(v4, v27);
  OUTLINED_FUNCTION_7_4(v27);
  if (v33)
  {
    (*(v24 + 8))(v27, v22);
LABEL_8:
    OUTLINED_FUNCTION_100();
    return;
  }

  (*(v29 + 32))(v32, v27, AssociatedTypeWitness);
  v34 = [v4 view];
  if (v34)
  {
    v35 = v34;
    sub_1D818E2B4();
    sub_1D8191C54();

    v36 = (*(v48 + 8))(v21, v49);
    if (sub_1D7FCE678(v36, v37))
    {
      OUTLINED_FUNCTION_21_14();
      v38(v41);
      v39 = v40;
      sub_1D818F154();

      (*(*(v45 + 112) + 56))(v39, v32, v46 & 1, v4, v47, *(v45 + 88));
      swift_unknownObjectRelease();
      (*(v42 + 8))(v39, v44);
    }

    (*(v29 + 8))(v32, AssociatedTypeWitness);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1D7FD39F0(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a1;
  sub_1D7FD35F8();
}

void sub_1D7FD3A88()
{
  OUTLINED_FUNCTION_120();
  v3 = v2;
  v4 = *v0;
  v5 = *MEMORY[0x1E69E7D40];
  v43 = *MEMORY[0x1E69E7D40] & *v0;
  v6 = *((v5 & v4) + 0x68);
  v7 = *((v5 & v4) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = v6;
  v40 = v7;
  OUTLINED_FUNCTION_39_6();
  swift_getAssociatedConformanceWitness();
  v9 = OUTLINED_FUNCTION_29_8();
  v41 = type metadata accessor for PageBlueprint(v9, v10, v11, v12);
  OUTLINED_FUNCTION_9();
  v39[1] = v13;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_94();
  v39[0] = v15;
  sub_1D818E2D4();
  OUTLINED_FUNCTION_9();
  v44 = v17;
  v45 = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  v20 = v19 - v18;
  v21 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v23 = v22;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v39 - v25;
  OUTLINED_FUNCTION_2();
  v28 = v27;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_51();
  sub_1D7FD28C4(v3, v26);
  OUTLINED_FUNCTION_7_4(v26);
  if (v30)
  {
    (*(v23 + 8))(v26, v21);
LABEL_8:
    OUTLINED_FUNCTION_100();
    return;
  }

  (*(v28 + 32))(v1, v26, AssociatedTypeWitness);
  v31 = [v3 view];
  if (v31)
  {
    v32 = v31;
    sub_1D818E284();
    sub_1D8191C54();

    v33 = (*(v44 + 8))(v20, v45);
    if (sub_1D7FCE678(v33, v34))
    {
      OUTLINED_FUNCTION_21_14();
      v35(v40);
      v36 = v39[0];
      sub_1D818F154();

      (*(*(v43 + 112) + 64))(v36, v1, *(v43 + 88));
      swift_unknownObjectRelease();
      v37 = OUTLINED_FUNCTION_134_0();
      v38(v37, v41);
    }

    (*(v28 + 8))(v1, AssociatedTypeWitness);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_1D7FD3E78(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1D7FD3A88();
}

uint64_t sub_1D7FD3EEC(void *a1, void *a2, uint64_t a3, double a4)
{
  v107 = a3;
  v97 = a1;
  v8 = *v4;
  v9 = *MEMORY[0x1E69E7D40];
  v106 = *MEMORY[0x1E69E7D40] & *v4;
  v10 = *((v9 & v8) + 0x68);
  v11 = *((v9 & v8) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1D8191E84();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_9();
  v95 = v14;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_51();
  v104 = v11;
  v105 = v10;
  swift_getAssociatedConformanceWitness();
  v16 = OUTLINED_FUNCTION_29_8();
  v93 = v17;
  v20 = type metadata accessor for PageBlueprint(v16, v18, v17, v19);
  OUTLINED_FUNCTION_9();
  v103 = v21;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_94();
  v102 = v23;
  OUTLINED_FUNCTION_2();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_23();
  v96 = v27;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_24_1();
  v94 = v29;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_24_1();
  v98 = v31;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_24_1();
  v99 = v33;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_30_10();
  OUTLINED_FUNCTION_2();
  v109 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_23();
  v92 = v37;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v38);
  v108 = v88 - v39;
  if (sub_1D8190B24())
  {
    ObjectType = swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(a2, ObjectType, &protocol descriptor for PageViewControllerParallaxing))
    {
      v42 = v41;
      v101 = v5;
      v91 = v20;
      v43 = a2;
      v44 = a2;
      v45 = [v97 visibleViewController];
      v46 = v45;
      if (v45)
      {

        v46 = v46 == v44;
      }

      v47 = swift_getObjectType();
      (*(v42 + 8))(v107, v46, v47, v42, a4);

      a2 = v43;
      v20 = v91;
      v5 = v101;
    }
  }

  sub_1D7FD28C4(a2, v10);
  OUTLINED_FUNCTION_7_4(v10);
  if (v68)
  {
    return (*(v25 + 8))(v10, v13);
  }

  v101 = v5;
  v97 = a2;
  v49 = v108;
  v50 = v109 + 32;
  OUTLINED_FUNCTION_39_6();
  v90 = v51;
  v52 = v51();
  if (sub_1D7FCE678(v52, v53))
  {
    OUTLINED_FUNCTION_21_14();
    v54();
    v55 = v102;
    sub_1D818F154();

    (*(*(v106 + 112) + 48))(v55, v49, v107, *(v106 + 88), a4);
    swift_unknownObjectRelease();
    (*(v103 + 8))(v55, v20);
  }

  if (a4 <= 0.5)
  {
    return (*(v109 + 8))(v108, AssociatedTypeWitness);
  }

  v88[1] = v50;
  v91 = v20;
  v56 = *(v109 + 16);
  v57 = v99;
  v107 = v109 + 16;
  v89 = v56;
  v56(v99, v108, AssociatedTypeWitness);
  OUTLINED_FUNCTION_102();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, AssociatedTypeWitness);
  v61 = v13;
  v62 = v98;
  sub_1D7FCEA94(v98);
  v63 = v101;
  v64 = *(TupleTypeMetadata2 + 48);
  v65 = *(v25 + 16);
  v65(v101, v57, v61);
  v65(v63 + v64, v62, v61);
  OUTLINED_FUNCTION_7_4(v63);
  if (v68)
  {
    v66 = *(v25 + 8);
    v66(v62, v61);
    v66(v57, v61);
    OUTLINED_FUNCTION_7_4(v63 + v64);
    if (v68)
    {
      v66(v63, v61);
      return (*(v109 + 8))(v108, AssociatedTypeWitness);
    }

    goto LABEL_21;
  }

  v67 = v94;
  v65(v94, v63, v61);
  OUTLINED_FUNCTION_7_4(v63 + v64);
  v69 = v61;
  if (v68)
  {
    v70 = *(v25 + 8);
    v70(v98, v61);
    v70(v99, v61);
    (*(v109 + 8))(v67, AssociatedTypeWitness);
LABEL_21:
    (*(v95 + 8))(v63, TupleTypeMetadata2);
    goto LABEL_22;
  }

  v83 = v92;
  (v90)(v92, v63 + v64, AssociatedTypeWitness);
  v84 = sub_1D8190ED4();
  v85 = *(v109 + 8);
  v85(v83, AssociatedTypeWitness);
  v86 = *(v25 + 8);
  v86(v98, v69);
  v86(v99, v69);
  v85(v67, AssociatedTypeWitness);
  v87 = OUTLINED_FUNCTION_90_0();
  (v86)(v87);
  if (v84)
  {
    return (v85)(v108, AssociatedTypeWitness);
  }

LABEL_22:
  v71 = v96;
  v72 = v108;
  v89(v96, v108, AssociatedTypeWitness);
  OUTLINED_FUNCTION_102();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, AssociatedTypeWitness);
  sub_1D7FCEB64(v71);
  v76 = v97;
  sub_1D7FCED3C();
  if (sub_1D7FCE678(v77, v78))
  {
    OUTLINED_FUNCTION_21_14();
    v79();
    v80 = v102;
    sub_1D818F154();

    (*(*(v106 + 112) + 40))(v80, v72, *(v106 + 88));
    swift_unknownObjectRelease();
    v81 = OUTLINED_FUNCTION_134_0();
    v82(v81, v91);
  }

  return (*(v109 + 8))(v72, AssociatedTypeWitness);
}

void sub_1D7FD4788(void *a1, double a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v10 = a4;
  v11 = a5;
  v12 = a1;
  sub_1D7FD3EEC(v10, v11, a6, a2);
}

uint64_t sub_1D7FD4824()
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_41_6();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1 = *(AssociatedConformanceWitness + 32);
  v2 = swift_checkMetadataState();
  return v1(v2, AssociatedConformanceWitness);
}

id PageViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1D8190EE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_1D7FD49A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_1D8190F14();
  }

  v5 = a4;
  PageViewController.init(nibName:bundle:)();
}

id PageViewController.__deallocating_deinit()
{
  OUTLINED_FUNCTION_7_20();
  v2 = (*MEMORY[0x1E69E7D40] & v1);
  v12 = OUTLINED_FUNCTION_20_14(v2[7], v3, v4, v5, v6, v7, v8, v9, v10, v2[6], v2[5].n128_i64[0], v2[5].n128_i64[1], v2[6].n128_i64[0], v2[6].n128_i64[1], v11);
  v14.receiver = v0;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, sel_dealloc);
}

double sub_1D7FD4A38()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  MEMORY[0x1DA715E30](&v0[*((*MEMORY[0x1E69E7D40] & *v0) + 0x80)]);
  OUTLINED_FUNCTION_1_71();
  v5 = *(v4 + 136);
  v6 = *((v3 & v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1D8191E84();
  OUTLINED_FUNCTION_8();
  (*(v8 + 8))(&v1[v5]);
  OUTLINED_FUNCTION_1_71();

  OUTLINED_FUNCTION_1_71();
  OUTLINED_FUNCTION_1_71();
  (*(*(v6 - 8) + 8))(&v1[*(v11 + 160)], v6);
  OUTLINED_FUNCTION_1_71();
  v13 = *(v12 + 168);
  OUTLINED_FUNCTION_41_6();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for PageBlueprint(255, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  OUTLINED_FUNCTION_52();
  sub_1D8191E84();
  OUTLINED_FUNCTION_8();
  (*(v16 + 8))(&v1[v13]);
  OUTLINED_FUNCTION_1_71();
  (*(*(*((v3 & v2) + 0x60) - 8) + 8))(&v1[*(v17 + 176)]);
  OUTLINED_FUNCTION_1_71();

  OUTLINED_FUNCTION_1_71();
  __swift_destroy_boxed_opaque_existential_1Tm(&v1[*(v18 + 192)]);
  OUTLINED_FUNCTION_1_71();

  OUTLINED_FUNCTION_1_71();
  OUTLINED_FUNCTION_100();

  return result;
}

void PageViewController.show(page:animated:)(uint64_t a1)
{
  v2 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x98));
  v3 = sub_1D7FD2CD4(a1, 1);
  [v2 setVisibleViewController_];
}

Swift::Bool __swiftcall PageViewController.showPage(for:animated:)(Swift::String a1, Swift::Bool animated)
{
  OUTLINED_FUNCTION_120();
  v3 = v2;
  v58 = v4;
  v61 = v5;
  v62 = v6;
  v7 = *v2;
  v8 = *MEMORY[0x1E69E7D40];
  v57 = (*MEMORY[0x1E69E7D40] & v7);
  v9 = *((v8 & v7) + 0x68);
  v10 = *((v8 & v7) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v49 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_94();
  v56 = v14;
  OUTLINED_FUNCTION_2();
  v52 = v15;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_94();
  v50 = v17;
  sub_1D818F5F4();
  OUTLINED_FUNCTION_9();
  v54 = v19;
  v55 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  v53 = v21 - v20;
  OUTLINED_FUNCTION_90_0();
  swift_getAssociatedConformanceWitness();
  v22 = OUTLINED_FUNCTION_31_0();
  v59 = AssociatedTypeWitness;
  v25 = type metadata accessor for PageBlueprint(v22, AssociatedTypeWitness, v23, v24);
  OUTLINED_FUNCTION_9();
  v27 = v26;
  OUTLINED_FUNCTION_44();
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v49 - v30;
  v32 = *(v9 + 24);
  v60 = v10;
  v32(v10, v9, v29);
  sub_1D818F154();

  swift_getWitnessTable();
  LOBYTE(v8) = sub_1D8191874();
  v33 = *(v27 + 8);
  v33(v31, v25);
  if (v8)
  {
    OUTLINED_FUNCTION_10_19();
    v34 = v53;
    sub_1D818F5E4();
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    *(v36 + 16) = v60;
    v37 = v57;
    *(v36 + 24) = v57[11];
    *(v36 + 32) = v37[12];
    *(v36 + 40) = v9;
    *(v36 + 48) = v37[14];
    *(v36 + 56) = v37[15];
    *(v36 + 64) = v35;
    v38 = v62;
    *(v36 + 72) = v61;
    *(v36 + 80) = v38;
    *(v36 + 88) = v58 & 1;

    sub_1D8190DB4();
    sub_1D818EF44();

    (*(v54 + 8))(v34, v55);
  }

  else
  {
    (v32)(v60, v9);
    sub_1D818F154();

    v39 = v56;
    PageBlueprint.page(for:)(v61);
    v33(v31, v25);
    v40 = v59;
    OUTLINED_FUNCTION_43_0(v39, 1, v59);
    if (v41)
    {
      (*(v49 + 8))(v39, v51);
    }

    else
    {
      v42 = v50;
      (*(v52 + 32))(v50, v39, v40);
      OUTLINED_FUNCTION_10_19();
      v44 = *(v3 + *(v43 + 152));
      v45 = sub_1D7FD2CD4(v42, 1);
      [v44 setVisibleViewController_];

      v46 = OUTLINED_FUNCTION_90_0();
      v47(v46);
    }
  }

  OUTLINED_FUNCTION_100();
  return result;
}

void sub_1D7FD527C(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9._countAndFlagsBits = a2;
    v9._object = a3;
    PageViewController.showPage(for:animated:)(v9, a4 & 1);
  }
}

id sub_1D7FD5314(uint64_t a1, SEL *a2)
{
  v4 = v2;
  OUTLINED_FUNCTION_7_20();
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40];
  v8 = (*MEMORY[0x1E69E7D40] & v7);
  v13[31] = v9;
  OUTLINED_FUNCTION_15_2(v4 + *((v6 & v7) + 0xC8), v13);
  v10 = v8[6];
  v12[0] = v8[5];
  v12[1] = v10;
  v12[2] = v8[7];
  type metadata accessor for PageViewController.NavigationAction(255, v12);
  OUTLINED_FUNCTION_52();
  sub_1D8191484();
  sub_1D8191434();
  swift_endAccess();
  return [*(v4 + *((*v5 & *v4) + 0x98)) *a2];
}

Swift::Void __swiftcall PageViewController.setHardPocket(for:)(UIRectEdge a1)
{
  OUTLINED_FUNCTION_34_0();
  v4 = [*(v2 + *((*MEMORY[0x1E69E7D40] & v3) + 0x98)) scrollView];
  [v4 _setPocketStyle_forEdge_];
}

uint64_t PageViewController.identifier.getter()
{
  if (!sub_1D7FCEEE8() || (sub_1D7E194D0(), sub_1D7E0631C(0, &qword_1EDBBC530, MEMORY[0x1E69D6488]), (swift_dynamicCast() & 1) == 0))
  {
    v4 = 0;
    v2 = 0u;
    v3 = 0u;
    goto LABEL_6;
  }

  if (!*(&v3 + 1))
  {
LABEL_6:
    sub_1D7FBDB74(&v2, &qword_1EDBBC520, &qword_1EDBBC530, MEMORY[0x1E69D6488]);
    return 0;
  }

  sub_1D7E05450(&v2, v5);
  OUTLINED_FUNCTION_141(v5, v5[3]);
  v0 = sub_1D818EF94();
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  return v0;
}

Swift::Void __swiftcall PageViewController.sceneWillResignActive()()
{
  v1 = sub_1D7FCEEE8();
  if (v1 && (v16[0] = v1, sub_1D7E194D0(), v2 = sub_1D7E0631C(0, &qword_1EDBBBB30, &protocol descriptor for PageViewable), (OUTLINED_FUNCTION_2_2(v2, v3, v4, v5, v6, v7, v8, v9, v13, *(&v13 + 1), v14, *(&v14 + 1), v15, v16[0]) & 1) != 0))
  {
    if (*(&v14 + 1))
    {
      sub_1D7E05450(&v13, v16);
      v10 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xC0));
      v11 = v10[3];
      v12 = v10[4];
      OUTLINED_FUNCTION_141(v10, v11);
      (*(v12 + 16))(v16, v11, v12);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      return;
    }
  }

  else
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
  }

  sub_1D7FBDB74(&v13, &qword_1EDBBBB28, &qword_1EDBBBB30, &protocol descriptor for PageViewable);
}

Swift::Void __swiftcall PageViewController.sceneDidEnterBackground()()
{
  v1 = sub_1D7FCEEE8();
  if (v1 && (v16[0] = v1, sub_1D7E194D0(), v2 = sub_1D7E0631C(0, &qword_1EDBBBB30, &protocol descriptor for PageViewable), (OUTLINED_FUNCTION_2_2(v2, v3, v4, v5, v6, v7, v8, v9, v13, *(&v13 + 1), v14, *(&v14 + 1), v15, v16[0]) & 1) != 0))
  {
    if (*(&v14 + 1))
    {
      sub_1D7E05450(&v13, v16);
      v10 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xC0));
      v11 = v10[3];
      v12 = v10[4];
      OUTLINED_FUNCTION_141(v10, v11);
      (*(v12 + 32))(v16, v11, v12);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      return;
    }
  }

  else
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
  }

  sub_1D7FBDB74(&v13, &qword_1EDBBBB28, &qword_1EDBBBB30, &protocol descriptor for PageViewable);
}

id sub_1D7FD5808()
{
  if (*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xD0)) != 1 || !sub_1D7FD5870())
  {
    return 0;
  }

  return sub_1D7FD58C4();
}

BOOL sub_1D7FD5870()
{
  v1 = [v0 traitCollection];
  v2 = [v1 activeAppearance];

  return v2 != 0;
}

id sub_1D7FD58C4()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [result window];

    if (v3 && (v4 = [v3 windowScene], v3, v4))
    {
      v5 = [v4 activationState];

      return (v5 == 0);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7FD5970(void *a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for PageBlueprint(255, AssociatedTypeWitness, AssociatedConformanceWitness, v5);
  v7 = sub_1D8191E84();
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v12 - v9;
  (*(*(v6 - 8) + 16))(&v12 - v9, a2, v6, v8);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v6);
  return sub_1D7FCF0F0(v10);
}

uint64_t sub_1D7FD5ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v71 = &v61[-v7];
  v8 = sub_1D8191E84();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v76 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v77 = &v61[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v61[-v11];
  v80 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v61[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v74 = &v61[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v75 = &v61[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v72 = &v61[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v61[-v21];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v61[-v24];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v81 = a2;
  result = static PageBlueprint.== infix(_:_:)(a1, a2, AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
    v69 = v6;
    v29 = type metadata accessor for PageBlueprint(0, AssociatedTypeWitness, AssociatedConformanceWitness, v28);
    swift_getWitnessTable();
    if (sub_1D8191874() & 1) == 0 || (sub_1D8191874())
    {
      v64 = *(AssociatedConformanceWitness + 8);
      v30 = *(v64 + 16);
      sub_1D818EF94();
      v68 = a1;
      PageBlueprint.page(before:)(v29, v25);

      sub_1D818EF94();
      v65 = v29;
      PageBlueprint.page(before:)(v29, v22);

      v31 = *(TupleTypeMetadata2 + 48);
      v32 = v80;
      v33 = *(v80 + 16);
      v34 = v73;
      v33(v73, v25, v8);
      v33(v34 + v31, v22, v8);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, 1, AssociatedTypeWitness);
      v66 = v33;
      if (EnumTagSinglePayload == 1)
      {
        v63 = v30;
        v36 = *(v32 + 8);
        v36(v22, v8);
        v36(v25, v8);
        v37 = __swift_getEnumTagSinglePayload(v34 + v31, 1, AssociatedTypeWitness);
        v67 = v36;
        if (v37 == 1)
        {
          v36(v34, v8);
          v38 = v77;
          v39 = v75;
          goto LABEL_15;
        }

        v38 = v77;
        v39 = v75;
      }

      else
      {
        v40 = v72;
        v33(v72, v34, v8);
        if (__swift_getEnumTagSinglePayload(v34 + v31, 1, AssociatedTypeWitness) != 1)
        {
          v50 = v34 + v31;
          v51 = v71;
          (*(v69 + 32))(v71, v50, AssociatedTypeWitness);
          v62 = sub_1D8190ED4();
          v52 = *(v69 + 8);
          v52(v51, AssociatedTypeWitness);
          v63 = v30;
          v53 = *(v80 + 8);
          v53(v22, v8);
          v53(v25, v8);
          v52(v72, AssociatedTypeWitness);
          v67 = v53;
          v53(v34, v8);
          v38 = v77;
          v39 = v75;
          if (v62)
          {
LABEL_15:
            sub_1D818EF94();
            v43 = v65;
            PageBlueprint.page(after:)(v65, v39);

            sub_1D818EF94();
            v44 = v74;
            PageBlueprint.page(after:)(v43, v74);

            v45 = *(TupleTypeMetadata2 + 48);
            v46 = v66;
            v66(v38, v39, v8);
            v46(v38 + v45, v44, v8);
            if (__swift_getEnumTagSinglePayload(v38, 1, AssociatedTypeWitness) == 1)
            {
              v47 = v67;
              v67(v44, v8);
              v47(v39, v8);
              if (__swift_getEnumTagSinglePayload(v38 + v45, 1, AssociatedTypeWitness) == 1)
              {
                return (v47)(v38, v8);
              }
            }

            else
            {
              v48 = v70;
              v46(v70, v38, v8);
              if (__swift_getEnumTagSinglePayload(v38 + v45, 1, AssociatedTypeWitness) != 1)
              {
                v54 = v44;
                v55 = v69;
                v56 = v71;
                (*(v69 + 32))(v71, v38 + v45, AssociatedTypeWitness);
                v57 = sub_1D8190ED4();
                v58 = *(v55 + 8);
                v58(v56, AssociatedTypeWitness);
                v59 = v54;
                v60 = v67;
                v67(v59, v8);
                v60(v39, v8);
                v58(v48, AssociatedTypeWitness);
                result = (v60)(v38, v8);
                if (v57)
                {
                  return result;
                }

                return [*(v78 + *((*MEMORY[0x1E69E7D40] & *v78) + 0x98)) reindexNextViewControllers];
              }

              v49 = v67;
              v67(v44, v8);
              v49(v39, v8);
              (*(v69 + 8))(v48, AssociatedTypeWitness);
            }

            (*(v76 + 8))(v38, TupleTypeMetadata2);
            return [*(v78 + *((*MEMORY[0x1E69E7D40] & *v78) + 0x98)) reindexNextViewControllers];
          }

LABEL_14:
          [*(v78 + *((*MEMORY[0x1E69E7D40] & *v78) + 0x98)) reindexPreviousViewControllers];
          goto LABEL_15;
        }

        v41 = *(v80 + 8);
        v41(v22, v8);
        v67 = v41;
        v41(v25, v8);
        (*(v69 + 8))(v40, AssociatedTypeWitness);
        v38 = v77;
        v39 = v75;
      }

      (*(v76 + 8))(v34, TupleTypeMetadata2);
      goto LABEL_14;
    }

    v42 = *(v78 + *((*MEMORY[0x1E69E7D40] & *v78) + 0x98));

    return [v42 reindexViewControllers];
  }

  return result;
}

void sub_1D7FD6498(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2)
    {
      LOBYTE(v11[0]) = 0;
      sub_1D7FD1524(v11, 0.0);

      return;
    }

    if (sub_1D7FCEEE8())
    {
      sub_1D7E194D0();
      sub_1D7E0631C(0, &qword_1EDBBBB30, &protocol descriptor for PageViewable);
      if (swift_dynamicCast())
      {
        if (*(&v9 + 1))
        {
          sub_1D7E05450(&v8, v11);
          v5 = (v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0xC0));
          v6 = v5[3];
          v7 = v5[4];
          __swift_project_boxed_opaque_existential_1(v5, v6);
          (*(v7 + 32))(v11, v6, v7);

          __swift_destroy_boxed_opaque_existential_1Tm(v11);
          return;
        }
      }

      else
      {
        v10 = 0;
        v8 = 0u;
        v9 = 0u;
      }
    }

    else
    {

      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }

    sub_1D7FBDB74(&v8, &qword_1EDBBBB28, &qword_1EDBBBB30, &protocol descriptor for PageViewable);
  }
}

id sub_1D7FD6620(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1D8190EE4();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithNibName:v5 bundle:a3];

  return v6;
}

_BYTE *sub_1D7FD6D24(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D7FD6DF0(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1D7FD6ED8()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_39_6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v1 = OUTLINED_FUNCTION_31_0();
  type metadata accessor for PageBlueprint(v1, AssociatedTypeWitness, v2, v3);
  OUTLINED_FUNCTION_100();

  sub_1D7FD1340(v4, v5);
}

uint64_t CloseButton.Style.hashValue.getter()
{
  v1 = *v0;
  sub_1D81927E4();
  MEMORY[0x1DA714A00](v1);
  return sub_1D8192824();
}

uint64_t sub_1D7FD7060()
{
  sub_1D7E9F44C();
  result = sub_1D8191CA4();
  qword_1EDBB1CB0 = result;
  return result;
}

uint64_t sub_1D7FD70A8()
{
  sub_1D7E9F44C();
  result = sub_1D8191CA4();
  qword_1EDBB1CC8 = result;
  return result;
}

id sub_1D7FD7110(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() effectWithStyle_];
  *a3 = result;
  return result;
}

Swift::Void __swiftcall CloseButton.transition(to:duration:)(TeaUI::CloseButton::Style to, Swift::Double duration)
{
  v4 = *to;
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v4;
  v9[4] = sub_1D7FD7B14;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D7E64940;
  v9[3] = &block_descriptor_31;
  v7 = _Block_copy(v9);
  v8 = v2;

  [v5 animateWithDuration:4 delay:v7 options:0 animations:duration completion:0.0];
  _Block_release(v7);
}

void sub_1D7FD729C(_BYTE *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5TeaUI11CloseButton_style);
  *(v1 + OBJC_IVAR____TtC5TeaUI11CloseButton_style) = *a1;
  v3 = v2;
  sub_1D7FD72D8(&v3);
}

void sub_1D7FD72D8(unsigned __int8 *result)
{
  if (*result != *(v1 + OBJC_IVAR____TtC5TeaUI11CloseButton_style))
  {
    sub_1D7FD7318();
  }
}

void sub_1D7FD7318()
{
  v1 = sub_1D7FD73C0();
  v2 = OBJC_IVAR____TtC5TeaUI11CloseButton_style;
  v6 = v0[OBJC_IVAR____TtC5TeaUI11CloseButton_style];
  v3 = sub_1D7FD74E4(&v6);
  [v1 setEffect_];

  v5 = v0[v2];
  v4 = sub_1D7FD7854(&v5);
  [v0 setTintColor_];
}

id sub_1D7FD73C0()
{
  v1 = OBJC_IVAR____TtC5TeaUI11CloseButton____lazy_storage___backing;
  v2 = *(v0 + OBJC_IVAR____TtC5TeaUI11CloseButton____lazy_storage___backing);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5TeaUI11CloseButton____lazy_storage___backing);
  }

  else
  {
    v11 = *(v0 + OBJC_IVAR____TtC5TeaUI11CloseButton_style);
    v4 = sub_1D7FD74E4(&v11);
    v5 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

    v6 = v5;
    [v6 setClipsToBounds_];
    v7 = [v6 layer];
    [v7 setCornerRadius_];

    [v6 setUserInteractionEnabled_];
    [v6 setFrame_];

    v8 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1D7FD74E4(_BYTE *a1)
{
  if (*a1)
  {
    if (qword_1EDBB1CF0 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EDBB1CF8;
  }

  else
  {
    if (qword_1EDBB1CD8 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EDBB1CE0;
  }

  v2 = *v1;

  return v2;
}

id CloseButton.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CloseButton.init()()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC5TeaUI11CloseButton_style] = 1;
  *&v0[OBJC_IVAR____TtC5TeaUI11CloseButton____lazy_storage___backing] = 0;
  v15.receiver = v0;
  v15.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v15, sel_initWithFrame_, 0.0, 0.0, 28.0, 28.0);
  OUTLINED_FUNCTION_3_2(v2, sel_setContentEdgeInsets_);
  OUTLINED_FUNCTION_3_2(v2, sel_setTitleEdgeInsets_);
  v3 = v2;
  OUTLINED_FUNCTION_3_2(v3, sel_setImageEdgeInsets_);
  [v3 setContentHorizontalAlignment_];
  [v3 setContentVerticalAlignment_];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_1D818E514();
  v8 = v7;

  sub_1D806B194(v6, v8, v3);
  v14 = *(v3 + OBJC_IVAR____TtC5TeaUI11CloseButton_style);
  v9 = sub_1D7FD7854(&v14);
  [v3 setTintColor_];

  if (qword_1EDBAE830 != -1)
  {
    swift_once();
  }

  v10 = [qword_1EDBC5F80 imageWithRenderingMode_];
  [v3 setImage:v10 forState:0];

  v11 = [v3 imageView];
  v12 = v3;
  if (v11)
  {
    v12 = sub_1D7FD73C0();
    [v3 insertSubview:v12 belowSubview:v11];
  }

  return v3;
}

id sub_1D7FD7854(_BYTE *a1)
{
  if (*a1)
  {
    if (qword_1EDBB1CC0 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EDBB1CC8;
  }

  else
  {
    if (qword_1EDBB1CA8 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EDBB1CB0;
  }

  v2 = *v1;

  return v2;
}

void sub_1D7FD791C()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI11CloseButton_style) = 1;
  *(v0 + OBJC_IVAR____TtC5TeaUI11CloseButton____lazy_storage___backing) = 0;
  sub_1D81923A4();
  __break(1u);
}

id CloseButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CloseButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D7FD7B24()
{
  result = qword_1ECA0EEB8;
  if (!qword_1ECA0EEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0EEB8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloseButton.Style(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

id GradientView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

uint64_t GradientView.gradientDescriptor.setter(const void *a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI12GradientView_gradientDescriptor;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), 0x49uLL);
  memcpy(v9, (v1 + v3), 0x49uLL);
  memcpy((v1 + v3), a1, 0x49uLL);
  OUTLINED_FUNCTION_0_94();
  sub_1D7E4B208(__dst, __src, v4, v5);
  sub_1D7FD7D80(v9);
  memcpy(__src, __dst, 0x49uLL);
  sub_1D7FD7FE4(__src);
  return sub_1D7FD7D80(__dst);
}

uint64_t sub_1D7FD7D80(uint64_t a1)
{
  sub_1D7E4B1B4(0, qword_1EDBB9F28, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GradientView.gradientLayer.getter()
{
  v1 = [v0 layer];
  objc_opt_self();
  OUTLINED_FUNCTION_1_73();

  return swift_dynamicCastObjCClassUnconditional();
}

uint64_t GradientView.gradientDescriptor.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5TeaUI12GradientView_gradientDescriptor;
  OUTLINED_FUNCTION_8_4(v1 + OBJC_IVAR____TtC5TeaUI12GradientView_gradientDescriptor, v8);
  memcpy(__dst, (v1 + v3), 0x49uLL);
  memcpy(a1, (v1 + v3), 0x49uLL);
  OUTLINED_FUNCTION_0_94();
  return sub_1D7E4B208(__dst, v7, v4, v5);
}

uint64_t sub_1D7FD7ED4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5TeaUI12GradientView_gradientDescriptor;
  swift_beginAccess();
  memcpy(__dst, (v3 + v4), 0x49uLL);
  memcpy(a2, (v3 + v4), 0x49uLL);
  return sub_1D7E4B208(__dst, v6, qword_1EDBB9F28, MEMORY[0x1E69E6720]);
}

uint64_t sub_1D7FD7F6C(void *__src)
{
  memcpy(__dst, __src, 0x49uLL);
  sub_1D7E4B208(__dst, &v3, qword_1EDBB9F28, MEMORY[0x1E69E6720]);
  return GradientView.gradientDescriptor.setter(__src);
}

id sub_1D7FD7FE4(void *__src)
{
  memcpy(__dst, __src, 0x49uLL);
  v2 = v1 + OBJC_IVAR____TtC5TeaUI12GradientView_gradientDescriptor;
  swift_beginAccess();
  memcpy(v20, v2, 0x49uLL);
  v3 = __dst[0];
  memcpy(v18, &__dst[1], sizeof(v18));
  v4 = v20[0];
  memcpy(v17, (v2 + 8), sizeof(v17));
  if (__dst[0])
  {
    __srca[0] = __dst[0];
    memcpy(&__srca[1], &__dst[1], 0x41uLL);
    memcpy(v14, __srca, 0x49uLL);
    if (v20[0])
    {
      memcpy(&v13[1], (v2 + 8), 0x41uLL);
      v13[0] = v20[0];
      v5 = MEMORY[0x1E69E6720];
      sub_1D7E4B208(v20, v12, qword_1EDBB9F28, MEMORY[0x1E69E6720]);
      sub_1D7E4B208(__dst, v12, qword_1EDBB9F28, v5);
      sub_1D7E4B208(__srca, v12, qword_1EDBB9F28, v5);
      v6 = static GradientDescriptor.== infix(_:_:)(v14, v13);
      memcpy(v11, v13, 0x49uLL);
      sub_1D7FD8CE4(v11);
      memcpy(v12, v14, 0x49uLL);
      sub_1D7FD8CE4(v12);
      v13[0] = v3;
      memcpy(&v13[1], v18, 0x41uLL);
      result = sub_1D7FD7D80(v13);
      if (v6)
      {
        return result;
      }

      return sub_1D7E4A6D8();
    }

    memcpy(v13, __srca, 0x49uLL);
    v9 = MEMORY[0x1E69E6720];
    sub_1D7E4B208(v20, v12, qword_1EDBB9F28, MEMORY[0x1E69E6720]);
    sub_1D7E4B208(__dst, v12, qword_1EDBB9F28, v9);
    sub_1D7E4B208(__srca, v12, qword_1EDBB9F28, v9);
    sub_1D7FD8CE4(v13);
  }

  else
  {
    if (!v20[0])
    {
      __srca[0] = 0;
      memcpy(&__srca[1], &__dst[1], 0x41uLL);
      v10 = MEMORY[0x1E69E6720];
      sub_1D7E4B208(v20, v14, qword_1EDBB9F28, MEMORY[0x1E69E6720]);
      sub_1D7E4B208(__dst, v14, qword_1EDBB9F28, v10);
      return sub_1D7FD7D80(__srca);
    }

    v8 = MEMORY[0x1E69E6720];
    sub_1D7E4B208(v20, __srca, qword_1EDBB9F28, MEMORY[0x1E69E6720]);
    sub_1D7E4B208(__dst, __srca, qword_1EDBB9F28, v8);
  }

  __srca[0] = v3;
  memcpy(&__srca[1], v18, 0x41uLL);
  __srca[10] = v4;
  memcpy(v16, v17, sizeof(v16));
  sub_1D7FD8730(__srca, sub_1D7FD8E1C);
  return sub_1D7E4A6D8();
}

void (*GradientView.gradientDescriptor.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x1B0uLL);
  *a1 = v3;
  v3[53] = v1;
  v4 = OBJC_IVAR____TtC5TeaUI12GradientView_gradientDescriptor;
  OUTLINED_FUNCTION_8_4(v1 + OBJC_IVAR____TtC5TeaUI12GradientView_gradientDescriptor, (v3 + 50));
  memcpy(v3, (v1 + v4), 0x49uLL);
  memcpy(v3 + 10, (v1 + v4), 0x49uLL);
  OUTLINED_FUNCTION_0_94();
  sub_1D7E4B208(v3, (v3 + 20), v5, v6);
  return sub_1D7FD83A8;
}

void sub_1D7FD83A8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_5_35((v2 + 240));
    OUTLINED_FUNCTION_5_35(v5);
    OUTLINED_FUNCTION_0_94();
    sub_1D7E4B208(v2 + 240, v2 + 320, v3, v4);
    GradientView.gradientDescriptor.setter(v5);
    OUTLINED_FUNCTION_5_35((v2 + 160));
    sub_1D7FD7D80(v2 + 160);
  }

  else
  {
    OUTLINED_FUNCTION_5_35(v5);
    GradientView.gradientDescriptor.setter(v5);
  }

  free(v2);
}

uint64_t GradientView.dynamicGradientDescriptor.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5TeaUI12GradientView_dynamicGradientDescriptor;
  OUTLINED_FUNCTION_8_4(v1 + OBJC_IVAR____TtC5TeaUI12GradientView_dynamicGradientDescriptor, v6);
  memcpy(__dst, (v1 + v3), 0x99uLL);
  memcpy(a1, (v1 + v3), 0x99uLL);
  return sub_1D7FD84B4(__dst, v5);
}

uint64_t sub_1D7FD84B4(uint64_t a1, uint64_t a2)
{
  sub_1D7FD8518(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D7FD8518(uint64_t a1)
{
  if (!qword_1EDBBBB38)
  {
    sub_1D7E4B1B4(255, qword_1EDBBBB40, type metadata accessor for DynamicValue);
    v1 = sub_1D8191E84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBBBB38);
    }
  }
}

uint64_t sub_1D7FD858C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5TeaUI12GradientView_dynamicGradientDescriptor;
  swift_beginAccess();
  memcpy(__dst, (v3 + v4), 0x99uLL);
  memcpy(a2, (v3 + v4), 0x99uLL);
  return sub_1D7FD84B4(__dst, v6);
}

uint64_t sub_1D7FD8608(void *__src)
{
  memcpy(__dst, __src, 0x99uLL);
  sub_1D7FD84B4(__dst, &v3);
  return GradientView.dynamicGradientDescriptor.setter(__src);
}

uint64_t GradientView.dynamicGradientDescriptor.setter(const void *a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI12GradientView_dynamicGradientDescriptor;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), 0x99uLL);
  memcpy(v7, (v1 + v3), 0x99uLL);
  memcpy((v1 + v3), a1, 0x99uLL);
  sub_1D7FD84B4(__dst, __src);
  sub_1D7FD8730(v7, sub_1D7FD8518);
  memcpy(__src, __dst, 0x99uLL);
  sub_1D7FD8790(__src);
  return sub_1D7FD8730(__dst, sub_1D7FD8518);
}

uint64_t sub_1D7FD8730(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1D7FD8790(void *__src)
{
  memcpy(__dst, __src, 0x99uLL);
  v2 = OBJC_IVAR____TtC5TeaUI12GradientView_dynamicGradientDescriptor;
  swift_beginAccess();
  memcpy(v12, (v1 + v2), 0x99uLL);
  memcpy(__srca, __dst, 0x99uLL);
  memcpy(&__srca[160], (v1 + v2), 0x99uLL);
  memcpy(v13, __dst, 0x99uLL);
  if (sub_1D7E4AFF8(v13) == 1)
  {
    memcpy(v8, &__srca[160], 0x99uLL);
    if (sub_1D7E4AFF8(v8) == 1)
    {
      memcpy(v10, __srca, 0x99uLL);
      sub_1D7FD84B4(v12, v7);
      sub_1D7FD84B4(__dst, v7);
      return sub_1D7FD8730(v10, sub_1D7FD8518);
    }

    goto LABEL_5;
  }

  memcpy(v7, &__srca[160], 0x99uLL);
  if (sub_1D7E4AFF8(v7) == 1)
  {
LABEL_5:
    memcpy(v8, __srca, 0x139uLL);
    sub_1D7FD84B4(v12, v10);
    sub_1D7FD84B4(__dst, v10);
    sub_1D7FD8730(v8, sub_1D7FD8D38);
    return sub_1D7E4A6D8();
  }

  memcpy(v5, &__srca[160], 0x99uLL);
  memcpy(v8, &__srca[160], 0x99uLL);
  memcpy(v10, __srca, 0x99uLL);
  sub_1D7FD84B4(v12, v6);
  sub_1D7FD84B4(v12, v6);
  sub_1D7FD84B4(__dst, v6);
  v4 = sub_1D7FD8D9C(v10, v8);
  sub_1D7FD8730(v12, sub_1D7FD8518);
  sub_1D7FD8730(v5, sub_1D7FD8518);
  memcpy(v6, __srca, 0x99uLL);
  result = sub_1D7FD8730(v6, sub_1D7FD8518);
  if (!v4)
  {
    return sub_1D7E4A6D8();
  }

  return result;
}

void (*GradientView.dynamicGradientDescriptor.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x340uLL);
  *a1 = v3;
  v3[103] = v1;
  v4 = OBJC_IVAR____TtC5TeaUI12GradientView_dynamicGradientDescriptor;
  OUTLINED_FUNCTION_8_4(v1 + OBJC_IVAR____TtC5TeaUI12GradientView_dynamicGradientDescriptor, (v3 + 100));
  memcpy(v3, (v1 + v4), 0x99uLL);
  memcpy(v3 + 20, (v1 + v4), 0x99uLL);
  sub_1D7FD84B4(v3, (v3 + 40));
  return sub_1D7FD8A5C;
}

void sub_1D7FD8A5C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_6_39((v2 + 480));
    OUTLINED_FUNCTION_6_39(v4);
    sub_1D7FD84B4(v2 + 480, v2 + 640);
    GradientView.dynamicGradientDescriptor.setter(v4);
    OUTLINED_FUNCTION_6_39((v2 + 320));
    OUTLINED_FUNCTION_2_63();
    sub_1D7FD8730(v2 + 320, v3);
  }

  else
  {
    OUTLINED_FUNCTION_6_39(v4);
    GradientView.dynamicGradientDescriptor.setter(v4);
  }

  free(v2);
}

id GradientView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void GradientView.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC5TeaUI12GradientView_gradientDescriptor);
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  v1[3] = 0u;
  *(v1 + 57) = 0u;
  v2 = OBJC_IVAR____TtC5TeaUI12GradientView_dynamicGradientDescriptor;
  sub_1D7E29424(__src);
  memcpy((v0 + v2), __src, 0x99uLL);
  sub_1D81923A4();
  __break(1u);
}

id GradientView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7FD8CA4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1D7FD8D38(uint64_t a1)
{
  if (!qword_1ECA0EED0)
  {
    sub_1D7FD8518(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA0EED0);
    }
  }
}

BOOL sub_1D7FD8D9C(void *__src, const void *a2)
{
  memcpy(__dst, __src, 0x99uLL);
  memcpy(v5, a2, 0x99uLL);
  return static GradientDescriptor.== infix(_:_:)(__dst, v5) && static GradientDescriptor.== infix(_:_:)(&__dst[80], &v5[80]);
}

void sub_1D7FD8E1C(uint64_t a1)
{
  if (!qword_1EDBB9F20)
  {
    sub_1D7E4B1B4(255, qword_1EDBB9F28, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBB9F20);
    }
  }
}

TeaUI::Menu __swiftcall Menu.init(remove:_:)(Swift::OpaquePointer remove, Swift::OpaquePointer _)
{
  v2->_rawValue = remove._rawValue;
  v2[1]._rawValue = _._rawValue;
  result.groups = _;
  result.groupsToRemove = remove;
  return result;
}

uint64_t Navigator.navigate(to:)()
{
  OUTLINED_FUNCTION_6_40();
  OUTLINED_FUNCTION_0_95();
  v1 = v0();
  return OUTLINED_FUNCTION_8_28(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t Navigator.navigate(to:context:)()
{
  OUTLINED_FUNCTION_3_60();
  OUTLINED_FUNCTION_5_36();
  v1 = v0();
  return OUTLINED_FUNCTION_8_28(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t Navigator.navigate(to:setup:)()
{
  OUTLINED_FUNCTION_2_64();
  OUTLINED_FUNCTION_1_74();
  v1 = v0();
  return OUTLINED_FUNCTION_8_28(v1, v2, v3, v4, v5, v6, v7, v8, v10);
}

uint64_t Navigator.navigateWithoutAnimation(to:)()
{
  OUTLINED_FUNCTION_6_40();
  OUTLINED_FUNCTION_0_95();
  Navigator.navigateWithoutAnimation(to:metadata:context:setup:)(v0, v1, v2, v3, v4, v5, v6, v7);
  return OUTLINED_FUNCTION_8_28(v8, v9, v10, v11, v12, v13, v14, v15, v17);
}

void Navigator.navigateWithoutAnimation(to:metadata:context:setup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = a8;
  v48 = a5;
  v49 = a6;
  v47 = a4;
  v51 = a3;
  v44 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = AssociatedTypeWitness;
  OUTLINED_FUNCTION_2();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  v43 = &v39 - v16;
  v40 = a7;
  OUTLINED_FUNCTION_2();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v42 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = 0;
  v50 = objc_opt_self();
  (*(v19 + 16))(&v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v45, a7);
  (*(v12 + 16))(v17, a1, AssociatedTypeWitness);
  sub_1D7E7B91C(v44, v53);
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = (v21 + v23 + *(v12 + 80)) & ~*(v12 + 80);
  v25 = (v14 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 39) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = v46;
  *(v28 + 16) = v40;
  *(v28 + 24) = v29;
  (*(v19 + 32))(v28 + v23, v42);
  (*(v12 + 32))(v28 + v24, v43, v41);
  v30 = (v28 + v25);
  v31 = v53[1];
  *v30 = v53[0];
  v30[1] = v31;
  v32 = (v28 + v26);
  v34 = v47;
  v33 = v48;
  *v32 = v51;
  v32[1] = v34;
  v35 = (v28 + v27);
  v36 = v49;
  *v35 = v33;
  v35[1] = v36;
  *(v28 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8)) = &v54;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1D7FD95C4;
  *(v37 + 24) = v28;
  aBlock[4] = sub_1D7E74D6C;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7E74D74;
  aBlock[3] = &block_descriptor_32;
  v38 = _Block_copy(aBlock);

  sub_1D7E19F24(v51, v34);
  sub_1D7E19F24(v33, v36);

  [v50 performWithoutAnimation_];
  _Block_release(v38);
  LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

  if (v38)
  {
    __break(1u);
  }

  else
  {
    if (v54)
    {
      swift_willThrow();
    }
  }
}

uint64_t Navigator.navigateWithoutAnimation(to:context:)()
{
  OUTLINED_FUNCTION_3_60();
  OUTLINED_FUNCTION_5_36();
  Navigator.navigateWithoutAnimation(to:metadata:context:setup:)(v0, v1, v2, v3, v4, v5, v6, v7);
  return OUTLINED_FUNCTION_8_28(v8, v9, v10, v11, v12, v13, v14, v15, v17);
}

uint64_t Navigator.navigateWithoutAnimation(to:setup:)()
{
  OUTLINED_FUNCTION_2_64();
  OUTLINED_FUNCTION_1_74();
  Navigator.navigateWithoutAnimation(to:metadata:context:setup:)(v0, v1, v2, v3, v4, v5, v6, v7);
  return OUTLINED_FUNCTION_8_28(v8, v9, v10, v11, v12, v13, v14, v15, v17);
}

uint64_t sub_1D7FD95C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_2();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (v4 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 39) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D7FD9528(v0 + v4, v0 + v8, v0 + v9, *(v0 + v10), *(v0 + v10 + 8), *(v0 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), v1, v2);
}

uint64_t Navigator.preview(for:)()
{
  OUTLINED_FUNCTION_6_40();
  OUTLINED_FUNCTION_0_95();
  v2 = v1();
  OUTLINED_FUNCTION_9_21(v2, v3, v4, v5, v6, v7, v8, v9, v11);
  return v0;
}

uint64_t Navigator.preview(for:context:)()
{
  OUTLINED_FUNCTION_3_60();
  OUTLINED_FUNCTION_5_36();
  v2 = v1();
  OUTLINED_FUNCTION_9_21(v2, v3, v4, v5, v6, v7, v8, v9, v11);
  return v0;
}

uint64_t Navigator.preview(for:setup:)()
{
  OUTLINED_FUNCTION_2_64();
  OUTLINED_FUNCTION_1_74();
  v2 = v1();
  OUTLINED_FUNCTION_9_21(v2, v3, v4, v5, v6, v7, v8, v9, v11);
  return v0;
}

uint64_t sub_1D7FD9958@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D7FD9B7C(a1, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = sub_1D7FD9BB4(v5);
  *a2 = Strong;
  return result;
}

uint64_t TraitEnvironmentBackgroundSelectionStyle.traitEnvironment.setter(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*TraitEnvironmentBackgroundSelectionStyle.traitEnvironment.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1D7FD9A34;
}

uint64_t sub_1D7FD9A34(uint64_t *a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t TraitEnvironmentBackgroundSelectionStyle.init(traitEnvironment:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

Swift::Bool __swiftcall TraitEnvironmentBackgroundSelectionStyle.shouldRenderSelection(isSelected:isHighlighted:)(Swift::Bool isSelected, Swift::Bool isHighlighted)
{
  if (!isHighlighted && isSelected)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return 0;
    }

    v3 = [Strong traitCollection];
    swift_unknownObjectRelease();
    v4 = [v3 horizontalSizeClass];
    v5 = [v3 verticalSizeClass];

    if (v4 == 1 || v5 == 1)
    {
      return 0;
    }

    else
    {
      return v4 == 2 || v5 == 2;
    }
  }

  return isHighlighted;
}

uint64_t static GradientSectionDecorationItem.Size.Value.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 1;
    }

    return OUTLINED_FUNCTION_0_2();
  }

  if (*(a2 + 8))
  {
    return OUTLINED_FUNCTION_0_2();
  }

  return *a1 == *a2;
}

uint64_t static GradientSectionDecorationItem.Size.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return OUTLINED_FUNCTION_0_2();
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return OUTLINED_FUNCTION_0_2();
    }
  }

  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      return OUTLINED_FUNCTION_0_2();
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return OUTLINED_FUNCTION_0_2();
    }
  }

  return 1;
}

uint64_t GradientSectionDecorationItem.gradientDescriptor.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_11_27(v4);
  OUTLINED_FUNCTION_11_27(a1);
  return sub_1D7FCE2A8(v4, &v3);
}

uint64_t GradientSectionDecorationItem.darkGradientDescriptor.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 80), 0x49uLL);
  memcpy(a1, (v1 + 80), 0x49uLL);
  OUTLINED_FUNCTION_3_61();
  return sub_1D7E4B274(__dst, &v5, v3);
}

void sub_1D7FD9D40()
{
  if (!qword_1EDBB9F28[0])
  {
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, qword_1EDBB9F28);
    }
  }
}

double GradientSectionDecorationItem.init(gradientDescriptor:ordering:pinTrait:)@<D0>(void *__src@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  memcpy(__dst, __src, 0x49uLL);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *a3;
  LOBYTE(a3) = *(a3 + 8);
  v10 = v8;
  memcpy(a4, __dst, 0x50uLL);
  result = 0.0;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 137) = 0u;
  *(a4 + 160) = 0;
  *(a4 + 168) = 1;
  *(a4 + 176) = 0;
  *(a4 + 184) = 1;
  *(a4 + 185) = 3;
  *(a4 + 192) = v7;
  *(a4 + 200) = v10;
  *(a4 + 208) = v9;
  *(a4 + 216) = a3;
  return result;
}

double GradientSectionDecorationItem.init(gradientDescriptor:gradientSize:ordering:pinTrait:)@<D0>(void *__src@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  memcpy(__dst, __src, 0x49uLL);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = a2[2];
  v12 = *(a2 + 24);
  v13 = *a3;
  v14 = *(a3 + 8);
  v15 = *a4;
  LOBYTE(a4) = *(a4 + 8);
  v16 = v12;
  v17 = v14;
  memcpy(a5, __dst, 0x50uLL);
  result = 0.0;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0u;
  *(a5 + 137) = 0u;
  *(a5 + 160) = v9;
  *(a5 + 168) = v10;
  *(a5 + 176) = v11;
  *(a5 + 184) = v16;
  *(a5 + 185) = 3;
  *(a5 + 192) = v13;
  *(a5 + 200) = v17;
  *(a5 + 208) = v15;
  *(a5 + 216) = a4;
  return result;
}

void *GradientSectionDecorationItem.init(gradientDescriptor:darkGradientDescriptor:gradientSize:overscrollPinPosition:ordering:pinTrait:)@<X0>(void *__src@<X0>, const void *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *a3;
  v10 = *(a3 + 8);
  v11 = a3[2];
  v12 = *(a3 + 24);
  v13 = *a4;
  v14 = *a5;
  v15 = *(a5 + 8);
  v16 = *a6;
  v18 = *(a6 + 8);
  memcpy(a7, __src, 0x49uLL);
  result = memcpy((a7 + 80), a2, 0x49uLL);
  *(a7 + 160) = v9;
  *(a7 + 168) = v10;
  *(a7 + 176) = v11;
  *(a7 + 184) = v12;
  *(a7 + 185) = v13;
  *(a7 + 192) = v14;
  *(a7 + 200) = v15;
  *(a7 + 208) = v16;
  *(a7 + 216) = v18;
  return result;
}

double GradientSectionDecorationItem.init(gradientDescriptor:gradientSize:overscrollPinPosition:ordering:pinTrait:)@<D0>(void *__src@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  memcpy(__dst, __src, 0x49uLL);
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = a2[2];
  v14 = *(a2 + 24);
  LOBYTE(a3) = *a3;
  v15 = *a4;
  v16 = *(a4 + 8);
  v17 = *a5;
  LOBYTE(a5) = *(a5 + 8);
  v18 = v14;
  v19 = v16;
  memcpy(a6, __dst, 0x50uLL);
  result = 0.0;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0u;
  *(a6 + 137) = 0u;
  *(a6 + 160) = v11;
  *(a6 + 168) = v12;
  *(a6 + 176) = v13;
  *(a6 + 184) = v18;
  *(a6 + 185) = a3;
  *(a6 + 192) = v15;
  *(a6 + 200) = v19;
  *(a6 + 208) = v17;
  *(a6 + 216) = a5;
  return result;
}

BOOL static GradientSectionDecorationItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_27(v78);
  memcpy(__dst, (a1 + 80), 0x49uLL);
  v4 = *(a1 + 160);
  v5 = *(a1 + 168);
  v6 = *(a1 + 176);
  v7 = *(a1 + 184);
  v8 = *(a1 + 185);
  memcpy(v80, a2, 0x49uLL);
  memcpy(v81, (a2 + 80), 0x49uLL);
  v9 = *(a2 + 160);
  v10 = *(a2 + 168);
  v11 = *(a2 + 176);
  v12 = *(a2 + 184);
  v13 = *(a2 + 185);
  OUTLINED_FUNCTION_11_27(v73);
  memcpy(__src, a2, 0x49uLL);
  sub_1D7FCE2A8(v78, v83);
  sub_1D7FCE2A8(v80, v83);
  v14 = static GradientDescriptor.== infix(_:_:)(v73, __src);
  memcpy(v82, __src, 0x49uLL);
  sub_1D7FD8CE4(v82);
  memcpy(v83, v73, 0x49uLL);
  sub_1D7FD8CE4(v83);
  if (!v14)
  {
    return 0;
  }

  HIDWORD(v65) = v8;
  v15 = __dst[0];
  memcpy(v76, &__dst[1], sizeof(v76));
  v16 = v81[0];
  v17 = memcpy(v75, &v81[1], sizeof(v75));
  if (__dst[0])
  {
    OUTLINED_FUNCTION_9_22(v17, v18, v19, v20, v21, v22, v23, v24, v65, v70[0], v70[1], v70[2], v70[3], v70[4], v70[5], v70[6], v70[7], v70[8], v70[9], v71[0], v71[1], v71[2], v71[3], v71[4], v71[5], v71[6], v71[7], v71[8], v71[9], v72[0], v72[1], v72[2], v72[3], v72[4], v72[5], v72[6], v72[7], v72[8], v72[9], __dst[0], v73[1]);
    memcpy(__src, v73, 0x49uLL);
    if (v16)
    {
      memcpy(&v72[1], &v81[1], 0x41uLL);
      v72[0] = v16;
      OUTLINED_FUNCTION_0_96();
      sub_1D7E4B274(__dst, v71, v25);
      OUTLINED_FUNCTION_13_21(v81, v26, v27, v28, v29, v30, v31, v32, v66, v70[0], v70[1], v70[2], v70[3], v70[4], v70[5], v70[6], v70[7], v70[8], v70[9]);
      OUTLINED_FUNCTION_13_21(v73, v33, v34, v35, v36, v37, v38, v39, v67, v70[0], v70[1], v70[2], v70[3], v70[4], v70[5], v70[6], v70[7], v70[8], v70[9]);
      v40 = static GradientDescriptor.== infix(_:_:)(__src, v72);
      memcpy(v70, v72, 0x49uLL);
      sub_1D7FD8CE4(v70);
      memcpy(v71, __src, 0x49uLL);
      sub_1D7FD8CE4(v71);
      v72[0] = v15;
      memcpy(&v72[1], v76, 0x41uLL);
      OUTLINED_FUNCTION_2_65();
      sub_1D7FDAE1C(v72, v41);
      if (!v40)
      {
        return 0;
      }

      if (v5)
      {
        goto LABEL_6;
      }

LABEL_14:
      if (v4 == v9)
      {
        v62 = v10;
      }

      else
      {
        v62 = 1;
      }

      v42 = v69;
      if (v62)
      {
        return 0;
      }

      goto LABEL_18;
    }

    memcpy(v72, v73, 0x49uLL);
    OUTLINED_FUNCTION_0_96();
    sub_1D7E4B274(__dst, v71, v44);
    OUTLINED_FUNCTION_13_21(v81, v45, v46, v47, v48, v49, v50, v51, v66, v70[0], v70[1], v70[2], v70[3], v70[4], v70[5], v70[6], v70[7], v70[8], v70[9]);
    OUTLINED_FUNCTION_13_21(v73, v52, v53, v54, v55, v56, v57, v58, v68, v70[0], v70[1], v70[2], v70[3], v70[4], v70[5], v70[6], v70[7], v70[8], v70[9]);
    sub_1D7FD8CE4(v72);
LABEL_11:
    v73[0] = v15;
    memcpy(&v73[1], v76, 0x41uLL);
    v73[10] = v16;
    memcpy(v74, v75, sizeof(v74));
    sub_1D7FDAE1C(v73, sub_1D7FD8E1C);
    return 0;
  }

  if (v81[0])
  {
    OUTLINED_FUNCTION_0_96();
    sub_1D7E4B274(__dst, v73, v43);
    sub_1D7E4B274(v81, v73, v14);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_9_22(v17, v18, v19, v20, v21, v22, v23, v24, v65, v70[0], v70[1], v70[2], v70[3], v70[4], v70[5], v70[6], v70[7], v70[8], v70[9], v71[0], v71[1], v71[2], v71[3], v71[4], v71[5], v71[6], v71[7], v71[8], v71[9], v72[0], v72[1], v72[2], v72[3], v72[4], v72[5], v72[6], v72[7], v72[8], v72[9], 0, v73[1]);
  OUTLINED_FUNCTION_0_96();
  sub_1D7E4B274(__dst, __src, v60);
  sub_1D7E4B274(v81, __src, v14);
  OUTLINED_FUNCTION_2_65();
  sub_1D7FDAE1C(v73, v61);
  if ((v5 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  v42 = v69;
  if (!v10)
  {
    return 0;
  }

LABEL_18:
  if ((v7 & 1) == 0)
  {
    if (v6 == v11)
    {
      v63 = v12;
    }

    else
    {
      v63 = 1;
    }

    if ((v63 & 1) == 0)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (!v12)
  {
    return 0;
  }

LABEL_25:
  if (v42 == 3)
  {
    return v13 == 3;
  }

  else
  {
    return v13 != 3 && v42 == v13;
  }
}

Swift::Void __swiftcall GradientSectionDecorationView.willMove(toSuperview:)(UIView_optional *toSuperview)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  [(UIView_optional *)&v3 willMoveToSuperview:toSuperview];
}

id GradientSectionDecorationView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

char *GradientSectionDecorationView.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_gradientView;
  v3 = objc_allocWithZone(type metadata accessor for GradientView());
  *(v0 + v2) = OUTLINED_FUNCTION_4(v3, sel_initWithFrame_);
  OUTLINED_FUNCTION_12_2(OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_gradientSize);
  *(v0 + OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_overscrollPinPosition) = 3;
  v4 = (v0 + OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_offset);
  *v4 = 0;
  v4[1] = 0;
  v5 = OUTLINED_FUNCTION_80();
  v8 = objc_msgSendSuper2(v6, v7, v5, v0, ObjectType);
  v9 = OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_gradientView;
  v10 = *&v8[OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_gradientView];
  v11 = v8;
  [v11 addSubview_];
  v12 = *&v8[v9];
  v15.origin.x = OUTLINED_FUNCTION_80();
  Width = CGRectGetWidth(v15);
  v16.origin.x = OUTLINED_FUNCTION_80();
  [v12 setFrame_];

  return v11;
}

id GradientSectionDecorationView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void GradientSectionDecorationView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_gradientView;
  v2 = objc_allocWithZone(type metadata accessor for GradientView());
  *(v0 + v1) = OUTLINED_FUNCTION_4(v2, sel_initWithFrame_);
  OUTLINED_FUNCTION_12_2(OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_gradientSize);
  *(v0 + OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_overscrollPinPosition) = 3;
  v3 = (v0 + OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_offset);
  *v3 = 0;
  v3[1] = 0;
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall GradientSectionDecorationView.layoutSubviews()()
{
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_gradientView;
  [*&v0[OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_gradientView] transform];
  v21 = 0x3FF0000000000000;
  v22 = 0;
  v23 = 0;
  v24 = 0x3FF0000000000000;
  v25 = 0;
  v26 = 0;
  if (sub_1D8191A34())
  {
    v2 = &v0[OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_offset];
    v3 = *&v0[OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_offset];
    v4 = *&v0[OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_offset + 8];
    v5 = &v0[OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_gradientSize];
    Width = *&v0[OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_gradientSize];
    v7 = v0[OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_gradientSize + 8];
    v8 = *&v0[v1];
    [v0 bounds];
    if (v7 == 1)
    {
      Width = CGRectGetWidth(*&v9);
    }

    v13 = *v2;
    Height = v5[2];
    v15 = *(v5 + 24);
    [v0 bounds];
    if (v15 == 1)
    {
      Height = CGRectGetHeight(*&v16);
    }

    [v8 setFrame_];
  }
}

Swift::Void __swiftcall GradientSectionDecorationView.apply(_:)(UICollectionViewLayoutAttributes *a1)
{
  v2 = v1;
  v25.receiver = v2;
  v25.super_class = swift_getObjectType();
  [(UICollectionViewLayoutAttributes *)&v25 applyLayoutAttributes:a1];
  type metadata accessor for BlueprintLayoutCollectionLayoutAttributes(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_model;
    swift_beginAccess();
    sub_1D7E4B274(v5 + v6, v23, sub_1D7FDAD68);
    if (v24)
    {
      sub_1D7FDADC0();
      v7 = a1;
      if (swift_dynamicCast())
      {
        memcpy(__dst, __src, 0xD9uLL);
        if (__dst[10])
        {
          v8 = *&v2[OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_gradientView];
          memcpy(v20, __src, 0x49uLL);
          memcpy(&v20[11], &__src[88], 0x41uLL);
          v20[10] = __dst[10];
          nullsub_1();
          memcpy(v19, v20, 0x99uLL);
          OUTLINED_FUNCTION_3_61();
          sub_1D7E4B274(&__dst[10], v18, v9);
          v10 = v8;
          sub_1D7FCE2A8(__dst, v18);
          GradientView.dynamicGradientDescriptor.setter(v19);
        }

        else
        {
          v11 = *&v2[OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_gradientView];
          memcpy(v20, __src, 0x49uLL);
          v10 = v11;
          sub_1D7FCE2A8(__dst, v19);
          GradientView.gradientDescriptor.setter(v20);
        }

        v12 = __dst[21];
        v13 = __dst[22];
        v14 = __dst[23];
        v15 = &v2[OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_gradientSize];
        *v15 = __dst[20];
        v15[8] = v12;
        *(v15 + 2) = v13;
        v15[24] = v14;
        v2[OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_overscrollPinPosition] = BYTE1(__dst[23]);
        sub_1D7FDAE7C(__dst);
        v16 = vdup_n_s32(LOBYTE(__dst[9]));
        v17.i64[0] = v16.u32[0];
        v17.i64[1] = v16.u32[1];
        *&v2[OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_offset] = vandq_s8(*&__dst[7], vcgezq_s64(vshlq_n_s64(v17, 0x3FuLL)));
      }

      else
      {
      }
    }

    else
    {
      sub_1D7FDAE1C(v23, sub_1D7FDAD68);
    }
  }
}

void GradientSectionDecorationView.blueprintViewportMonitor(_:viewportScrollDataDidChange:)(uint64_t a1, uint64_t a2)
{
  if (v2[OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_overscrollPinPosition] != 3)
  {
    v4 = *&v2[OBJC_IVAR____TtC5TeaUI29GradientSectionDecorationView_gradientView];
    sub_1D813FEE0(v4, v2, a2);
  }
}

void sub_1D7FDAD68(uint64_t a1)
{
  if (!qword_1EDBB44D0)
  {
    sub_1D7FDADC0();
    v1 = sub_1D8191E84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBB44D0);
    }
  }
}

unint64_t sub_1D7FDADC0()
{
  result = qword_1EDBB44D8[0];
  if (!qword_1EDBB44D8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDBB44D8);
  }

  return result;
}

uint64_t sub_1D7FDAE1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_5TeaUI18GradientDescriptorVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D7FDAED8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 217))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D7FDAF18(uint64_t result, int a2, int a3)
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
    *(result + 216) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 217) = 1;
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

    *(result + 217) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7FDAF90(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

double sub_1D7FDAFC8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5TeaUI12ProgressView_overrideHeight;
  OUTLINED_FUNCTION_1_0(a1);
  return *(v1 + v2);
}

void sub_1D7FDAFFC(double a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI12ProgressView_overrideHeight;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_1D7FDB0AC(double a1, double a2)
{
  v9.receiver = v2;
  v9.super_class = type metadata accessor for ProgressView();
  v5 = objc_msgSendSuper2(&v9, sel_sizeThatFits_, a1, a2);
  v7 = v6;
  OUTLINED_FUNCTION_1_0(v5);
  return v7;
}

id ProgressView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

id ProgressView.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  *(v0 + OBJC_IVAR____TtC5TeaUI12ProgressView_overrideHeight) = 0x4008000000000000;
  v5 = type metadata accessor for ProgressView();
  v1 = OUTLINED_FUNCTION_80();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id ProgressView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ProgressView.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC5TeaUI12ProgressView_overrideHeight] = 0x4008000000000000;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ProgressView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ProgressView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProgressView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D7FDB424(uint64_t a1)
{
  v11 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  for (i = (a1 + 32); v2; --v2)
  {
    v10 = *i;

    sub_1D7FDB5C4(&v10, v1, &v9);

    if (v9)
    {
      MEMORY[0x1DA713500](v4);
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D81913B4();
      }

      sub_1D8191404();
    }

    ++i;
  }

  v5 = sub_1D818FA14();
  sub_1D818FCB4();

  v6 = sub_1D818FA14();
  sub_1D7E1B668(0, &qword_1EDBB3330, MEMORY[0x1E69E62F8]);
  v7 = sub_1D818FAC4();

  return v7;
}

uint64_t sub_1D7FDB5C4@<X0>(unint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v88 = a2;
  v92 = a3;
  v5 = sub_1D818E644();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7FDD9B8(0, v7);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D818F5A4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  switch(*a1 >> 61)
  {
    case 1uLL:
      v41 = v17 & 0x1FFFFFFFFFFFFFFFLL;
      v42 = *(v41 + 56);
      v43 = *(v41 + 64);
      sub_1D7E0E768(v41 + 16, &v90);
      sub_1D7E1B668(0, &qword_1ECA0EF08, MEMORY[0x1E69D6B18]);
      sub_1D7E0E768(&v90, v89);
      v44 = swift_allocObject();
      v44[2] = v88;
      sub_1D7E05450(v89, (v44 + 3));
      v44[8] = v42;
      v44[9] = v43;

      sub_1D8190DB4();
      v45 = sub_1D818FAA4();
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v90);
      goto LABEL_8;
    case 2uLL:
      v29 = (v17 & 0x1FFFFFFFFFFFFFFFLL);
      v31 = v29[2];
      v30 = v29[3];
      v32 = v29[4];
      sub_1D7E1B668(0, &qword_1ECA0EF08, MEMORY[0x1E69D6B18]);
      v33 = swift_allocObject();
      v33[2] = v88;
      v33[3] = v31;
      v33[4] = v30;
      v33[5] = v32;

      sub_1D8190DB4();
      sub_1D8190DB4();
      goto LABEL_6;
    case 3uLL:
      v34 = (v17 & 0x1FFFFFFFFFFFFFFFLL);
      v35 = v34[2];
      v36 = v34[3];
      v38 = v34[4];
      v37 = v34[5];
      sub_1D7E1B668(0, &qword_1ECA0EF08, MEMORY[0x1E69D6B18]);
      v39 = swift_allocObject();
      v39[2] = v88;
      v39[3] = v35;
      v39[4] = v36;
      v39[5] = v38;
      v39[6] = v37;

      sub_1D8190DB4();
      sub_1D8190DB4();
      goto LABEL_6;
    case 4uLL:
      v21 = (v17 & 0x1FFFFFFFFFFFFFFFLL);
      v22 = v21[2];
      v23 = v21[3];
      v24 = v21[4];
      v25 = v21[5];
      v26 = v21[6];
      v27 = v21[7];
      sub_1D7E1B668(0, &qword_1ECA0EF08, MEMORY[0x1E69D6B18]);
      v28 = swift_allocObject();
      v28[2] = v88;
      v28[3] = v22;
      v28[4] = v23;
      v28[5] = v24;
      v28[6] = v25;
      v28[7] = v26;
      v28[8] = v27;

      sub_1D8190DB4();
      sub_1D8190DB4();
      sub_1D7F0731C(v22, v23);
      goto LABEL_6;
    case 5uLL:
      v46 = *((v17 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D7E0A1A8(0, &qword_1EDBBC7C0, 0x1E69E9610);
      v47 = sub_1D8191AB4();
      *(swift_allocObject() + 16) = v46;
      sub_1D7E0A1A8(0, &qword_1EDBB2F60, 0x1E69DCAB8);
      v48 = v46;
      sub_1D8191A64();

      v49 = v90;
      if (!v90)
      {
        if (qword_1ECA0C290 != -1)
        {
          goto LABEL_34;
        }

        goto LABEL_27;
      }

      sub_1D818E5D4();
      v50 = UIImageJPEGRepresentation(v49, 1.0);
      if (!v50)
      {
        if (qword_1ECA0C290 != -1)
        {
          swift_once();
        }

        v78 = qword_1ECA2C538;
        v79 = sub_1D81919C4();
        sub_1D818FD44("Failed to jpegData from image for radar", 39, 2, &dword_1D7DFF000, v78, v79, MEMORY[0x1E69E7CC0]);

        result = (*(v6 + 8))(v9, v5);
        goto LABEL_31;
      }

      v51 = v50;
      v52 = sub_1D818E684();
      v54 = v53;

      sub_1D7FDDDBC(v52, v54, v9);
      if (v3)
      {
        v88 = v54;
        if (qword_1ECA0C290 != -1)
        {
          swift_once();
        }

        v87 = qword_1ECA2C538;
        LODWORD(v86) = sub_1D81919C4();
        sub_1D7E1A4D0(0);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_1D819FAB0;
        v90 = 0;
        v91 = 0xE000000000000000;
        *&v89[0] = v3;
        sub_1D7E0631C(0, &qword_1EDBB2BC0, MEMORY[0x1E69E7280]);
        sub_1D8192334();
        v56 = v90;
        v57 = v91;
        *(v55 + 56) = MEMORY[0x1E69E6158];
        *(v55 + 64) = sub_1D7E13BF4();
        *(v55 + 32) = v56;
        *(v55 + 40) = v57;
        sub_1D818FD44("Failed to write screenshot data for attachment for radar with error %{public}@", 78, 2, &dword_1D7DFF000, v87, v86, v55);
        sub_1D7EF4CE0(v52, v88);

        result = (*(v6 + 8))(v9, v5);
        goto LABEL_31;
      }

      v90 = sub_1D818E614();
      v91 = v80;
      sub_1D7E1B668(0, &qword_1ECA0EF08, MEMORY[0x1E69D6B18]);
      swift_allocObject();
      v45 = sub_1D818FB44();
      sub_1D7EF4CE0(v52, v54);

      result = (*(v6 + 8))(v9, v5);
LABEL_8:
      *v92 = v45;
      return result;
    case 6uLL:
      v85 = v3;
      v58 = (v17 & 0x1FFFFFFFFFFFFFFFLL);
      v59 = v58[2];
      v60 = v58[3];
      v61 = v58[4];
      v62 = *(v59 + 16);
      v86 = (v14 + 32);
      v84 = v61;
      sub_1D8190DB4();
      v63 = 0;
      v87 = MEMORY[0x1E69E7CC0];
      break;
    default:
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      sub_1D7E1B668(0, &qword_1ECA0EF08, MEMORY[0x1E69D6B18]);
      v20 = swift_allocObject();
      v20[2] = v88;
      v20[3] = v18;
      v20[4] = v19;
      sub_1D8190DB4();

LABEL_6:
      result = sub_1D818FAA4();
      *v92 = result;
      return result;
  }

  while (1)
  {
    if (v62 == v63)
    {
      sub_1D7E1B668(0, &qword_1ECA0EF08, MEMORY[0x1E69D6B18]);
      v73 = swift_allocObject();
      v74 = v87;
      v73[2] = v88;
      v73[3] = v74;
      v75 = v84;
      v73[4] = v60;
      v73[5] = v75;

      result = sub_1D818FAA4();
      *v92 = result;
      return result;
    }

    if (v63 >= *(v59 + 16))
    {
      break;
    }

    v90 = *(v59 + 32 + 8 * v63);

    DiagnosticAttachment.init(from:)(&v90, v12, v64);
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
    {
      sub_1D7FDDA10(v12, v65);
      ++v63;
    }

    else
    {
      v82 = *v86;
      v82(v16, v12, v13);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = v60;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D7EE5254(0, *(v87 + 16) + 1, 1, v87);
        v87 = v71;
      }

      v68 = *(v87 + 16);
      v67 = *(v87 + 24);
      v69 = v68 + 1;
      if (v68 >= v67 >> 1)
      {
        v81 = v68 + 1;
        sub_1D7EE5254(v67 > 1, v68 + 1, 1, v87);
        v69 = v81;
        v87 = v72;
      }

      ++v63;
      v70 = v87;
      *(v87 + 16) = v69;
      v82((v70 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v68), v16, v13);
      v60 = v83;
    }
  }

  __break(1u);
LABEL_34:
  swift_once();
LABEL_27:
  v76 = qword_1ECA2C538;
  v77 = sub_1D81919C4();
  result = sub_1D818FD44("Failed to get snapshot from window for radar", 44, 2, &dword_1D7DFF000, v76, v77, MEMORY[0x1E69E7CC0]);
LABEL_31:
  *v92 = 0;
  return result;
}

uint64_t sub_1D7FDC04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v6 = sub_1D818F5A4();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7FDC110, 0, 0);
}

uint64_t sub_1D7FDC110()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v6 = (v0[3] + OBJC_IVAR____TtC5TeaUI23RadarAttachmentResolver_diagnosticAttachmentResolver);
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v4;
  *v1 = v9;
  (*(v2 + 104))(v1, *MEMORY[0x1E69D6800], v3);
  sub_1D8190DB4();
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_1D7FDC23C;
  v11 = OUTLINED_FUNCTION_10_32(v0[8]);

  return MEMORY[0x1EEE44CC8](v11, v7, v8);
}

uint64_t sub_1D7FDC23C()
{
  OUTLINED_FUNCTION_20_15();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_2_66();
  OUTLINED_FUNCTION_3_4();
  *v5 = v4;
  *v5 = *v2;
  v4[10] = v1;

  OUTLINED_FUNCTION_13_22();
  v7 = *(v6 + 64);
  v8 = v4[7];
  v9 = v4[6];
  if (!v1)
  {
    v4[11] = v0;
    v4[12] = v3;
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_6_41();
  OUTLINED_FUNCTION_19_14();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D7FDC39C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_18_17(*(v0 + 96));
  OUTLINED_FUNCTION_5_37();

  return v1();
}

uint64_t sub_1D7FDC3F8()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_10_6();

  return v0();
}

uint64_t sub_1D7FDC454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v6[5] = a4;
  v6[6] = a5;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v7 = sub_1D818F5A4();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7FDC51C, 0, 0);
}

uint64_t sub_1D7FDC51C()
{
  OUTLINED_FUNCTION_16_20();
  v3 = v1[8];
  v2 = v1[9];
  v5 = v1[6];
  v4 = v1[7];
  v7 = v1[4];
  v6 = v1[5];
  v8 = OUTLINED_FUNCTION_14_18(v1[3]);
  __swift_project_boxed_opaque_existential_1(v8, v0);
  OUTLINED_FUNCTION_15_17();
  v9 = swift_allocObject();
  sub_1D7E0E768(v7, v9 + 16);
  *(v9 + 56) = v6;
  *(v9 + 64) = v5;
  *v2 = v9;
  (*(v3 + 104))(v2, *MEMORY[0x1E69D67E8], v4);
  sub_1D8190DB4();
  v10 = swift_task_alloc();
  v1[10] = v10;
  *v10 = v1;
  v10[1] = sub_1D7FDC644;
  OUTLINED_FUNCTION_10_32(v1[9]);
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE44CC8](v11, v12, v13);
}

uint64_t sub_1D7FDC644()
{
  OUTLINED_FUNCTION_20_15();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_2_66();
  OUTLINED_FUNCTION_3_4();
  *v5 = v4;
  *v5 = *v2;
  v4[11] = v1;

  OUTLINED_FUNCTION_13_22();
  v7 = *(v6 + 72);
  v8 = v4[8];
  v9 = v4[7];
  if (!v1)
  {
    v4[12] = v0;
    v4[13] = v3;
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_6_41();
  OUTLINED_FUNCTION_19_14();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D7FDC7A4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_18_17(*(v0 + 104));
  OUTLINED_FUNCTION_5_37();

  return v1();
}

uint64_t sub_1D7FDC800()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_10_6();

  return v0();
}

uint64_t sub_1D7FDC85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v6[6] = a4;
  v6[7] = a5;
  v6[4] = a2;
  v6[5] = a3;
  v6[3] = a1;
  v7 = sub_1D818F5A4();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7FDC924, 0, 0);
}

uint64_t sub_1D7FDC924()
{
  v3 = v1[9];
  v2 = v1[10];
  v5 = v1[7];
  v4 = v1[8];
  v7 = v1[5];
  v6 = v1[6];
  v8 = OUTLINED_FUNCTION_14_18(v1[4]);
  v15 = v9;
  __swift_project_boxed_opaque_existential_1(v8, v0);
  OUTLINED_FUNCTION_21_0();
  v10 = swift_allocObject();
  v1[2] = v7;
  v10[2] = RadarText.description.getter();
  v10[3] = v11;
  v10[4] = v6;
  v10[5] = v5;
  *v2 = v10;
  (*(v3 + 104))(v2, *MEMORY[0x1E69D67D8], v4);
  sub_1D8190DB4();
  v12 = swift_task_alloc();
  v1[11] = v12;
  *v12 = v1;
  v12[1] = sub_1D7FDCA68;
  v13 = OUTLINED_FUNCTION_10_32(v1[10]);

  return MEMORY[0x1EEE44CC8](v13, v0, v15);
}

uint64_t sub_1D7FDCA68(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  OUTLINED_FUNCTION_3_4();
  *v7 = v6;
  v6[12] = v2;

  if (v2)
  {
    (*(v6[9] + 8))(v6[10], v6[8]);
    v8 = sub_1D7FDCC1C;
  }

  else
  {
    v10 = v6[9];
    v9 = v6[10];
    v11 = v6[8];
    v6[13] = a2;
    v6[14] = a1;
    (*(v10 + 8))(v9, v11);
    v8 = sub_1D7FDCBB8;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D7FDCBB8()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[13];
  v2 = v0[3];
  *v2 = v0[14];
  v2[1] = v1;

  OUTLINED_FUNCTION_5_37();

  return v3();
}

uint64_t sub_1D7FDCC1C()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_10_6();

  return v0();
}

uint64_t sub_1D7FDCC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v7[6] = a5;
  v7[7] = a6;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v8 = sub_1D818F5A4();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7FDCD40, 0, 0);
}

uint64_t sub_1D7FDCD40()
{
  OUTLINED_FUNCTION_16_20();
  v3 = v1[9];
  v2 = v1[10];
  v5 = v1[7];
  v4 = v1[8];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[4];
  v9 = OUTLINED_FUNCTION_14_18(v1[3]);
  __swift_project_boxed_opaque_existential_1(v9, v0);
  OUTLINED_FUNCTION_21_0();
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = v6;
  v10[4] = v7;
  v10[5] = v5;
  *v2 = v10;
  (*(v3 + 104))(v2, *MEMORY[0x1E69D67D8], v4);
  sub_1D8190DB4();
  sub_1D8190DB4();
  v11 = swift_task_alloc();
  v1[11] = v11;
  *v11 = v1;
  v11[1] = sub_1D7FDCE64;
  OUTLINED_FUNCTION_10_32(v1[10]);
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE44CC8](v12, v13, v14);
}

uint64_t sub_1D7FDCE64()
{
  OUTLINED_FUNCTION_20_15();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_2_66();
  OUTLINED_FUNCTION_3_4();
  *v5 = v4;
  *v5 = *v2;
  v4[12] = v1;

  OUTLINED_FUNCTION_13_22();
  v7 = *(v6 + 80);
  v8 = v4[9];
  v9 = v4[8];
  if (!v1)
  {
    v4[13] = v0;
    v4[14] = v3;
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_6_41();
  OUTLINED_FUNCTION_19_14();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D7FDCFC4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_18_17(*(v0 + 112));
  OUTLINED_FUNCTION_5_37();

  return v1();
}

uint64_t sub_1D7FDD020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v9[8] = a7;
  v9[9] = a8;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v9[2] = a1;
  v9[3] = a2;
  v10 = sub_1D818F5A4();
  v9[10] = v10;
  v9[11] = *(v10 - 8);
  v9[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7FDD0EC, 0, 0);
}

uint64_t sub_1D7FDD0EC()
{
  v2 = v1[11];
  v3 = v1[12];
  v4 = v1[9];
  v16 = v1[10];
  v6 = v1[7];
  v5 = v1[8];
  v8 = v1[5];
  v7 = v1[6];
  v9 = v1[4];
  v10 = OUTLINED_FUNCTION_14_18(v1[3]);
  v17 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v0);
  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = v8;
  v12[4] = v7;
  v12[5] = v6;
  v12[6] = v5;
  v12[7] = v4;
  *v3 = v12;
  (*(v2 + 104))(v3, *MEMORY[0x1E69D67E0], v16);
  sub_1D7F0731C(v9, v8);
  sub_1D8190DB4();
  sub_1D8190DB4();
  v13 = swift_task_alloc();
  v1[13] = v13;
  *v13 = v1;
  v13[1] = sub_1D7FDD244;
  v14 = OUTLINED_FUNCTION_10_32(v1[12]);

  return MEMORY[0x1EEE44CC8](v14, v0, v17);
}

uint64_t sub_1D7FDD244()
{
  OUTLINED_FUNCTION_20_15();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_2_66();
  OUTLINED_FUNCTION_3_4();
  *v5 = v4;
  *v5 = *v2;
  v4[14] = v1;

  OUTLINED_FUNCTION_13_22();
  v7 = *(v6 + 96);
  v8 = v4[11];
  v9 = v4[10];
  if (!v1)
  {
    v4[15] = v0;
    v4[16] = v3;
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_6_41();
  OUTLINED_FUNCTION_19_14();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D7FDD3A4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_18_17(*(v0 + 128));
  OUTLINED_FUNCTION_5_37();

  return v1();
}

uint64_t sub_1D7FDD400()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_10_6();

  return v0();
}

void DiagnosticAttachment.init(from:)(unint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_1D7FDD9B8(0, a3);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D818F5A4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v72 - v13);
  v15 = *a1;
  switch(*a1 >> 61)
  {
    case 1uLL:
      v47 = v15 & 0x1FFFFFFFFFFFFFFFLL;
      v48 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
      v49 = *(v47 + 64);
      OUTLINED_FUNCTION_15_17();
      v50 = swift_allocObject();
      sub_1D7E0E768(v47 + 16, v50 + 16);
      *(v50 + 56) = v48;
      *(v50 + 64) = v49;
      *v14 = v50;
      v51 = OUTLINED_FUNCTION_1_75();
      v52(v51);
      goto LABEL_7;
    case 2uLL:
      v31 = v15 & 0x1FFFFFFFFFFFFFFFLL;
      v32 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v33 = *(v31 + 24);
      v34 = *(v31 + 32);
      OUTLINED_FUNCTION_21_0();
      v35 = swift_allocObject();
      v81 = v32;
      sub_1D8190DB4();
      v35[2] = RadarText.description.getter();
      v35[3] = v36;
      v35[4] = v33;
      v35[5] = v34;
      *v14 = v35;
      v37 = OUTLINED_FUNCTION_1_75();
      v38(v37);
      goto LABEL_8;
    case 3uLL:
      v39 = (v15 & 0x1FFFFFFFFFFFFFFFLL);
      v40 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v41 = v39[3];
      v43 = v39[4];
      v42 = v39[5];
      OUTLINED_FUNCTION_21_0();
      v44 = swift_allocObject();
      v44[2] = v40;
      v44[3] = v41;
      v44[4] = v43;
      v44[5] = v42;
      *v14 = v44;
      v45 = OUTLINED_FUNCTION_1_75();
      v46(v45);
      sub_1D8190DB4();
      goto LABEL_7;
    case 4uLL:
      v21 = (v15 & 0x1FFFFFFFFFFFFFFFLL);
      v22 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v23 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v24 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v25 = v21[5];
      v79 = a2;
      v27 = v21[6];
      v26 = v21[7];
      v28 = swift_allocObject();
      v28[2] = v22;
      v28[3] = v23;
      v28[4] = v24;
      v28[5] = v25;
      v28[6] = v27;
      v28[7] = v26;
      a2 = v79;
      *v14 = v28;
      v29 = OUTLINED_FUNCTION_1_75();
      v30(v29);
      sub_1D7F0731C(v22, v23);
      sub_1D8190DB4();
LABEL_7:
      sub_1D8190DB4();
      goto LABEL_8;
    case 5uLL:

      __swift_storeEnumTagSinglePayload(a2, 1, 1, v8);
      return;
    case 6uLL:
      v79 = a2;
      v53 = v15 & 0x1FFFFFFFFFFFFFFFLL;
      v54 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v55 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v56 = *(v54 + 16);
      v77 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v78 = (v9 + 32);
      v76 = v55;
      sub_1D8190DB4();
      v57 = 0;
      v80 = MEMORY[0x1E69E7CC0];
      break;
    default:
      v17 = *(v15 + 16);
      v16 = *(v15 + 24);
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = v16;
      *v14 = v18;
      v19 = OUTLINED_FUNCTION_1_75();
      v20(v19);
      sub_1D8190DB4();
LABEL_8:

      goto LABEL_9;
  }

  while (v56 != v57)
  {
    if (v57 >= *(v54 + 16))
    {
      __break(1u);
      return;
    }

    v81 = *(v54 + 32 + 8 * v57);

    DiagnosticAttachment.init(from:)(&v81, v7, v58);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
    {
      sub_1D7FDDA10(v7, v59);
      ++v57;
    }

    else
    {
      v74 = *v78;
      v74(v11, v7, v8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v53;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D7EE5254(0, *(v80 + 16) + 1, 1, v80);
        v80 = v65;
      }

      v62 = *(v80 + 16);
      v61 = *(v80 + 24);
      v63 = v62 + 1;
      if (v62 >= v61 >> 1)
      {
        v73 = v62 + 1;
        sub_1D7EE5254(v61 > 1, v62 + 1, 1, v80);
        v63 = v73;
        v80 = v66;
      }

      ++v57;
      v64 = v80;
      *(v80 + 16) = v63;
      v74((v64 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v62), v11, v8);
      v53 = v75;
    }
  }

  v67 = swift_allocObject();
  v68 = v76;
  v69 = v77;
  v67[2] = v80;
  v67[3] = v69;
  v67[4] = v68;
  *v14 = v67;
  v70 = OUTLINED_FUNCTION_1_75();
  v71(v70);

  a2 = v79;
LABEL_9:
  (*(v9 + 32))(a2, v14, v8);
  __swift_storeEnumTagSinglePayload(a2, 0, 1, v8);
}

void sub_1D7FDD9B8(uint64_t a1, double a2)
{
  if (!qword_1ECA0EF00)
  {
    sub_1D818F5A4();
    v2 = sub_1D8191E84();
    if (!v3)
    {
      atomic_store(v2, &qword_1ECA0EF00);
    }
  }
}

uint64_t sub_1D7FDDA10(uint64_t a1, double a2)
{
  sub_1D7FDD9B8(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7FDDA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v6[5] = a4;
  v6[6] = a5;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v7 = sub_1D818F5A4();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D7FDDB34, 0, 0);
}

uint64_t sub_1D7FDDB34()
{
  OUTLINED_FUNCTION_16_20();
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  __swift_project_boxed_opaque_existential_1((v0[3] + OBJC_IVAR____TtC5TeaUI23RadarAttachmentResolver_diagnosticAttachmentResolver), *(v0[3] + OBJC_IVAR____TtC5TeaUI23RadarAttachmentResolver_diagnosticAttachmentResolver + 24));
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v6;
  v7[4] = v4;
  *v1 = v7;
  (*(v2 + 104))(v1, *MEMORY[0x1E69D67F8], v3);
  sub_1D8190DB4();
  sub_1D8190DB4();
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_1D7FDDC5C;
  OUTLINED_FUNCTION_10_32(v0[9]);
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE44CC8](v9, v10, v11);
}

uint64_t sub_1D7FDDC5C()
{
  OUTLINED_FUNCTION_20_15();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_2_66();
  OUTLINED_FUNCTION_3_4();
  *v5 = v4;
  *v5 = *v2;
  v4[11] = v1;

  OUTLINED_FUNCTION_13_22();
  v7 = *(v6 + 72);
  v8 = v4[8];
  v9 = v4[7];
  if (!v1)
  {
    v4[12] = v0;
    v4[13] = v3;
  }

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_6_41();
  OUTLINED_FUNCTION_19_14();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D7FDDDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1D818E644();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E5E4();
  v7 = [objc_opt_self() defaultManager];
  v8 = sub_1D818E5C4();
  v14[0] = 0;
  v9 = [v7 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:v14];

  if (v9)
  {
    v10 = v14[0];
    sub_1D818E694();
  }

  else
  {
    v11 = v14[0];
    sub_1D818E544();

    swift_willThrow();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D7FDDFC4()
{
  v1 = OBJC_IVAR____TtC5TeaUI23RadarAttachmentResolver_temporaryDirectory;
  v2 = sub_1D818E644();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC5TeaUI23RadarAttachmentResolver_diagnosticAttachmentResolver));

  return swift_deallocClassInstance();
}

void sub_1D7FDE094(void *a1@<X0>, UIImage **a2@<X8>)
{
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v5 = [objc_opt_self() sharedApplication];
    v4 = [v5 key_window];

    if (!v4)
    {
      v18 = 0;
      goto LABEL_8;
    }
  }

  v6 = v4;
  v7 = a1;
  [v6 bounds];
  v9 = v8;
  v11 = v10;
  v12 = [objc_opt_self() mainScreen];
  [v12 scale];
  v14 = v13;

  v19.width = v9;
  v19.height = v11;
  UIGraphicsBeginImageContextWithOptions(v19, 0, v14);
  v15 = UIGraphicsGetCurrentContext();
  if (v15)
  {
    v16 = v15;
    v17 = [v6 layer];

    [v17 renderInContext_];
    v18 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  else
  {
    v18 = 0;
    v16 = v6;
  }

LABEL_8:
  *a2 = v18;
}

uint64_t sub_1D7FDE234()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_12_23();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_14(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_97(v4);

  return sub_1D7FDDA6C(v6, v7, v8, v2, v1, v9);
}

uint64_t sub_1D7FDE2D4()
{
  OUTLINED_FUNCTION_12_23();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_2_14(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_0_97(v7);

  return sub_1D7FDD020(v9, v10, v11, v1, v2, v3, v4, v5, v12);
}

uint64_t sub_1D7FDE394()
{
  OUTLINED_FUNCTION_20_15();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_12_23();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_14(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_97(v1);
  OUTLINED_FUNCTION_19_14();

  return sub_1D7FDCC78(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_20Tm()
{

  OUTLINED_FUNCTION_21_0();

  return swift_deallocObject();
}

uint64_t sub_1D7FDE478()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_12_23();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_14(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_97(v4);

  return sub_1D7FDC85C(v6, v7, v8, v2, v1, v9);
}

uint64_t sub_1D7FDE518()
{
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[8];
  v5 = v0[9];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_2_14(v6);
  *v7 = v9;
  v7[1] = sub_1D7E94724;

  return sub_1D7FDC454(v2, v3, (v0 + 3), v4, v5, v8);
}

uint64_t sub_1D7FDE5CC()
{
  OUTLINED_FUNCTION_12_23();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_14(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_97(v3);

  return sub_1D7FDC04C(v5, v6, v7, v1, v8);
}

uint64_t sub_1D7FDE69C(uint64_t a1, uint64_t a2)
{
  sub_1D81905D4();
  sub_1D7FDEC8C(0);
  sub_1D7FDEEDC();
  return sub_1D8190AF4();
}

double sub_1D7FDE754@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a2;
  sub_1D7FDEFFC(0, &qword_1ECA0EF60, type metadata accessor for JSONSchemaValueArray, MEMORY[0x1E6981790]);
  v6 = sub_1D8190994();
  sub_1D7EFC4E4(v6, v7);
  v9 = v8;

  sub_1D7FDF254(v9);
  v11 = v10;

  v21[0] = v11;
  KeyPath = swift_getKeyPath();
  sub_1D7FDF528(0, &qword_1ECA0EF20, &qword_1ECA0EF28, type metadata accessor for JSONSchemaValue, MEMORY[0x1E69E62F8]);
  v14 = v13;
  v15 = sub_1D7FDEDB8();
  sub_1D8190AD4(v21, KeyPath, sub_1D7FDE994, 0, v14, MEMORY[0x1E6981148], v15, MEMORY[0x1E69E6540], MEMORY[0x1E6981138]);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1D7FDF43C;
  *(v17 + 24) = v16;
  sub_1D7FDEC8C(0);
  v19 = (a3 + *(v18 + 36));
  *v19 = sub_1D7FDF444;
  v19[1] = v17;

  return result;
}

uint64_t sub_1D7FDE928(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 96))(a1);
  sub_1D7E50D2C();
  return sub_1D8190814();
}

uint64_t sub_1D7FDE994@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D7FDE928(*a1, a1[1]);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

double sub_1D7FDE9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D8190B34();
  sub_1D8190384();

  return result;
}

double sub_1D7FDEA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D7FDEFFC(0, &qword_1ECA0EF60, type metadata accessor for JSONSchemaValueArray, MEMORY[0x1E6981790]);
  sub_1D8190994();
  swift_getKeyPath();
  sub_1D7FDF46C(&qword_1ECA0D7E8, type metadata accessor for JSONSchemaValueArray, &unk_1D81A1784);
  sub_1D818E9D4();

  swift_getKeyPath();
  sub_1D818E9F4();

  swift_beginAccess();
  sub_1D7FDEFFC(0, &qword_1ECA0D5D8, type metadata accessor for JSONSchemaValue, MEMORY[0x1E69E62F8]);
  sub_1D7FDF4B4(&qword_1ECA0EF68, MEMORY[0x1E69E6318]);
  sub_1D7FDF4B4(&qword_1ECA0EF70, MEMORY[0x1E69E6348]);
  sub_1D8191914();
  swift_endAccess();
  sub_1D7F02238();
  swift_getKeyPath();
  sub_1D818E9E4();

  return result;
}

void sub_1D7FDEC8C(uint64_t a1)
{
  if (!qword_1ECA0EF10)
  {
    sub_1D7FDECF4(255);
    sub_1D7FDEE48(255);
    v1 = sub_1D8190414();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA0EF10);
    }
  }
}

void sub_1D7FDECF4(uint64_t a1)
{
  if (!qword_1ECA0EF18)
  {
    sub_1D7FDF528(255, &qword_1ECA0EF20, &qword_1ECA0EF28, type metadata accessor for JSONSchemaValue, MEMORY[0x1E69E62F8]);
    sub_1D7FDEDB8();
    v1 = sub_1D8190AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA0EF18);
    }
  }
}

unint64_t sub_1D7FDEDB8()
{
  result = qword_1ECA0EF30;
  if (!qword_1ECA0EF30)
  {
    sub_1D7FDF528(255, &qword_1ECA0EF20, &qword_1ECA0EF28, type metadata accessor for JSONSchemaValue, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0EF30);
  }

  return result;
}

void sub_1D7FDEE48(uint64_t a1)
{
  if (!qword_1ECA0EF38)
  {
    sub_1D8190444();
    sub_1D7FDF46C(&qword_1ECA0EF40, MEMORY[0x1E697C230], MEMORY[0x1E697C228]);
    v1 = sub_1D81906D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA0EF38);
    }
  }
}

unint64_t sub_1D7FDEEDC()
{
  result = qword_1ECA0EF48;
  if (!qword_1ECA0EF48)
  {
    sub_1D7FDEC8C(255);
    sub_1D7FDEF8C();
    sub_1D7FDF46C(&qword_1ECA0EF58, sub_1D7FDEE48, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0EF48);
  }

  return result;
}

unint64_t sub_1D7FDEF8C()
{
  result = qword_1ECA0EF50;
  if (!qword_1ECA0EF50)
  {
    sub_1D7FDECF4(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0EF50);
  }

  return result;
}

void sub_1D7FDEFFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7FDF060(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  v23 = *(a1 + 16);
  v4 = (MEMORY[0x1E69E7CC0] + 32);
  v5 = (a1 + 56);
  while (v23 != v2)
  {
    v6 = *(v5 - 3);
    v7 = *(v5 - 2);
    v9 = *(v5 - 1);
    v8 = *v5;
    if (v1)
    {
      sub_1D8190DB4();
      sub_1D8190DB4();
      v10 = v3;
    }

    else
    {
      v11 = v3[3];
      if (((v11 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_26;
      }

      v22 = *(v5 - 3);
      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if (v12 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      sub_1D7FDF528(0, &qword_1ECA0EF80, &qword_1ECA0DBF0, sub_1D7EE5958, MEMORY[0x1E69E6F90]);
      v10 = swift_allocObject();
      v14 = (_swift_stdlib_malloc_size(v10) - 32) / 40;
      v10[2] = v13;
      v10[3] = 2 * v14;
      v15 = v10 + 4;
      v16 = v3[3] >> 1;
      v4 = &v10[5 * v16 + 4];
      v1 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;
      if (v3[2])
      {
        if (v10 != v3 || v15 >= &v3[5 * v16 + 4])
        {
          memmove(v15, v3 + 4, 40 * v16);
        }

        sub_1D8190DB4();
        sub_1D8190DB4();
        v3[2] = 0;
      }

      else
      {
        sub_1D8190DB4();
        sub_1D8190DB4();
      }

      v6 = v22;
    }

    v18 = __OFSUB__(v1--, 1);
    if (v18)
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    *v4 = v2;
    v4[1] = v6;
    v4[2] = v7;
    v4[3] = v9;
    v4[4] = v8;
    v4 += 5;
    v5 += 4;
    ++v2;
    v3 = v10;
  }

  v19 = v3[3];
  if (v19 < 2)
  {
    return;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v1);
  v21 = v20 - v1;
  if (!v18)
  {
    v3[2] = v21;
    return;
  }

LABEL_27:
  __break(1u);
}

void sub_1D7FDF254(uint64_t a1)
{
  v1 = a1;
  v2 = sub_1D7E36AB8(a1);
  v3 = 0;
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = (MEMORY[0x1E69E7CC0] + 32);
  v8 = v1 & 0xFFFFFFFFFFFFFF8;
  v25 = v1 & 0xFFFFFFFFFFFFFF8;
  v26 = v1;
  while (v2 != v3)
  {
    if (v5)
    {
      v9 = MEMORY[0x1DA714420](v3, v1);
    }

    else
    {
      if (v3 >= *(v8 + 16))
      {
        goto LABEL_29;
      }

      v9 = *(v1 + 8 * v3 + 32);
    }

    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (!v4)
    {
      v10 = v6[3];
      if (((v10 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_31;
      }

      v11 = v2;
      v12 = v5;
      v13 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (v13 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13;
      }

      sub_1D7FDF528(0, &qword_1ECA0EF78, &qword_1ECA0EF28, type metadata accessor for JSONSchemaValue, MEMORY[0x1E69E6F90]);
      v15 = swift_allocObject();
      v16 = (_swift_stdlib_malloc_size(v15) - 32) / 16;
      v15[2] = v14;
      v15[3] = 2 * v16;
      v17 = (v15 + 4);
      v18 = v6[3];
      v19 = v18 >> 1;
      if (v6[2])
      {
        if (v15 != v6 || v17 >= &v6[2 * v19 + 4])
        {
          memmove(v15 + 4, v6 + 4, 16 * v19);
        }

        v6[2] = 0;
      }

      v7 = (v17 + 16 * v19);
      v4 = (v16 & 0x7FFFFFFFFFFFFFFFLL) - (v18 >> 1);

      v6 = v15;
      v5 = v12;
      v2 = v11;
      v8 = v25;
      v1 = v26;
    }

    v21 = __OFSUB__(v4--, 1);
    if (v21)
    {
      goto LABEL_30;
    }

    *v7 = v3;
    v7[1] = v9;
    v7 += 2;
    ++v3;
  }

  v22 = v6[3];
  if (v22 < 2)
  {
    return;
  }

  v23 = v22 >> 1;
  v21 = __OFSUB__(v23, v4);
  v24 = v23 - v4;
  if (!v21)
  {
    v6[2] = v24;
    return;
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_1D7FDF46C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D7FDF4B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D7FDEFFC(255, &qword_1ECA0D5D8, type metadata accessor for JSONSchemaValue, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D7FDF528(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D7FDFA68(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D7FDF590(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  v5 = (MEMORY[0x1E69E7CC0] + 32);
  v6 = (a1 + 40);
  while (v3 != v2)
  {
    v8 = *(v6 - 1);
    v7 = *v6;
    if (v1)
    {
      sub_1D8190DB4();
      v9 = v4;
    }

    else
    {
      v10 = v4[3];
      if (((v10 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_26;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if (v11 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      sub_1D7FDEFFC(0, &qword_1ECA0EF98, sub_1D7FDFB50, MEMORY[0x1E69E6F90]);
      v9 = swift_allocObject();
      v13 = (_swift_stdlib_malloc_size(v9) - 32) / 24;
      v9[2] = v12;
      v9[3] = 2 * v13;
      v14 = v9 + 4;
      v15 = v4[3] >> 1;
      v5 = &v9[3 * v15 + 4];
      v1 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v15;
      if (v4[2])
      {
        if (v9 != v4 || v14 >= &v4[3 * v15 + 4])
        {
          memmove(v14, v4 + 4, 24 * v15);
        }

        sub_1D8190DB4();
        v4[2] = 0;
      }

      else
      {
        sub_1D8190DB4();
      }
    }

    v17 = __OFSUB__(v1--, 1);
    if (v17)
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    *v5 = v2;
    v5[1] = v8;
    v5[2] = v7;
    v5 += 3;
    v6 += 2;
    ++v2;
    v4 = v9;
  }

  v18 = v4[3];
  if (v18 < 2)
  {
    return;
  }

  v19 = v18 >> 1;
  v17 = __OFSUB__(v19, v1);
  v20 = v19 - v1;
  if (!v17)
  {
    v4[2] = v20;
    return;
  }

LABEL_27:
  __break(1u);
}

void sub_1D7FDF744(uint64_t a1)
{
  sub_1D7FDFA68(0, &qword_1ECA0EF88, MEMORY[0x1E69D6A58]);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  v9 = 0;
  v10 = 0;
  v45 = v11;
  v43 = *(v11 + 80);
  v12 = MEMORY[0x1E69E7CC0];
  v44 = (v43 + 32) & ~v43;
  v13 = MEMORY[0x1E69E7CC0] + v44;
  v14 = *(a1 + 16);
  v41 = v14;
  v42 = &v40 - v7;
  while (v14 != v10)
  {
    v15 = sub_1D818F824();
    v16 = *(v15 - 8);
    v17 = *(v16 + 16);
    v18 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v10;
    v19 = *(v3 + 48);
    *v5 = v10;
    v17(&v5[v19], v18, v15);
    sub_1D7FDFAD0(v5, v8);
    if (v9)
    {
      v20 = v12;
    }

    else
    {
      v21 = v12[3];
      if (((v21 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_32;
      }

      v22 = v3;
      v23 = a1;
      v24 = v21 & 0xFFFFFFFFFFFFFFFELL;
      if (v24 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v24;
      }

      sub_1D7FDF528(0, &qword_1ECA0EF90, &qword_1ECA0EF88, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6F90]);
      v26 = v44;
      v27 = *(v45 + 72);
      v20 = swift_allocObject();
      v28 = _swift_stdlib_malloc_size(v20);
      if (!v27)
      {
        goto LABEL_33;
      }

      v29 = v28 - v26;
      if (v28 - v26 == 0x8000000000000000 && v27 == -1)
      {
        goto LABEL_34;
      }

      v31 = v29 / v27;
      v20[2] = v25;
      v20[3] = 2 * (v29 / v27);
      v32 = v20 + v26;
      v33 = v12[3];
      v34 = (v33 >> 1) * v27;
      if (v12[2])
      {
        if (v20 < v12 || v32 >= v12 + v44 + v34)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v20 != v12)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v12[2] = 0;
      }

      v13 = &v32[v34];
      v9 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - (v33 >> 1);

      a1 = v23;
      v3 = v22;
      v14 = v41;
      v8 = v42;
    }

    v36 = __OFSUB__(v9--, 1);
    if (v36)
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    sub_1D7FDFAD0(v8, v13);
    v13 += *(v45 + 72);
    ++v10;
    v12 = v20;
  }

  v37 = v12[3];
  if (v37 < 2)
  {
    return;
  }

  v38 = v37 >> 1;
  v36 = __OFSUB__(v38, v9);
  v39 = v38 - v9;
  if (!v36)
  {
    v12[2] = v39;
    return;
  }

LABEL_35:
  __break(1u);
}

void sub_1D7FDFA68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_1D7FDFAD0(uint64_t a1, uint64_t a2)
{
  sub_1D7FDFA68(0, &qword_1ECA0EF88, MEMORY[0x1E69D6A58]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D7FDFB50()
{
  if (!qword_1ECA0EFA0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA0EFA0);
    }
  }
}

unint64_t sub_1D7FDFBB4()
{
  result = qword_1ECA0EFA8;
  if (!qword_1ECA0EFA8)
  {
    sub_1D7FDFC40(255);
    sub_1D7FDEEDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0EFA8);
  }

  return result;
}

void sub_1D7FDFC40(uint64_t a1)
{
  if (!qword_1ECA0EFB0)
  {
    sub_1D7FDEC8C(255);
    v1 = sub_1D8190B14();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA0EFB0);
    }
  }
}

id sub_1D7FDFCE4()
{
  v1 = qword_1EDBB62D0;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1D7FDFD38(uint64_t a1)
{
  v3 = qword_1EDBB62D0;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1D7FDFDB0()
{
  v1 = *(v0 + qword_1EDBB62E8);
  sub_1D7E19F24(v1, *(v0 + qword_1EDBB62E8 + 8));
  return v1;
}

uint64_t sub_1D7FDFDF0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_1EDBB62E8);
  v4 = *(v2 + qword_1EDBB62E8);
  v5 = *(v2 + qword_1EDBB62E8 + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1D7E0E10C(v4, v5);
}

id CompositionalListReusableView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

char *CompositionalListReusableView.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = qword_1EDBB62D0;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  *(v0 + qword_1EDBB62E0) = 0;
  v4 = (v0 + qword_1EDBB62E8);
  *v4 = 0;
  v4[1] = 0;
  v5 = *((v2 & v1) + 0x50);
  *(v0 + qword_1EDBB62D8) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  v17 = type metadata accessor for CompositionalListReusableView(0, v5, *((v2 & v1) + 0x58), v6);
  v7 = OUTLINED_FUNCTION_80();
  v10 = objc_msgSendSuper2(v8, v9, v7, v0, v17);
  v11 = qword_1EDBB62D8;
  v12 = *&v10[qword_1EDBB62D8];
  v13 = v10;
  [v13 addSubview_];
  v14 = *&v10[v11];
  [v13 bounds];
  [v14 setFrame_];

  v15 = [objc_opt_self() clearColor];
  [v13 setBackgroundColor_];

  return v13;
}

id CompositionalListReusableView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void CompositionalListReusableView.init(coder:)()
{
  v1 = qword_1EDBB62D0;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  *(v0 + qword_1EDBB62E0) = 0;
  v2 = (v0 + qword_1EDBB62E8);
  *v2 = 0;
  v2[1] = 0;
  sub_1D81923A4();
  __break(1u);
}

id sub_1D7FE0134()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_41(v2, v3, *(v1 + 88), v4);
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v5 = *&v0[qword_1EDBB62D8];
  [v0 bounds];
  return [v5 setFrame_];
}

void sub_1D7FE01C8(void *a1)
{
  v1 = a1;
  sub_1D7FE0134();
}

void sub_1D7FE0210(void *a1)
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_41(v4, v5, *(v3 + 88), v6);
  objc_msgSendSuper2(&v14, sel_applyLayoutAttributes_, a1);
  type metadata accessor for BlueprintLayoutCollectionLayoutAttributes(0);
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D7FDFDB0();
    if (v9)
    {
      v11 = v9;
      v12 = v10;
      v13 = a1;
      v11(v1, v8);
      sub_1D7E0E10C(v11, v12);
    }
  }
}

void sub_1D7FE02E8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1D7FE0210(v4);
}

uint64_t sub_1D7FE0350()
{
  OUTLINED_FUNCTION_2_0();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_2_0();
  v4 = *(v3 + 88);
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CompositionalListReusableView(0, v2, v4, v5);
  objc_msgSendSuper2(&v7, sel_prepareForReuse);
  sub_1D7FDFD38([objc_allocWithZone(MEMORY[0x1E69E58C0]) init]);
  sub_1D7FDFDF0(0, 0);
  return (*(v4 + 16))(v2, v4);
}

void sub_1D7FE0428(void *a1)
{
  v1 = a1;
  sub_1D7FE0350();
}

id sub_1D7FE0470(uint64_t a1)
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_41(v3, v4, *(v2 + 88), v5);
  v6 = objc_msgSendSuper2(&v8, sel_preferredLayoutAttributesFittingAttributes_, a1);
  [v6 frame];
  [v6 setFrame_];
  return v6;
}

id sub_1D7FE0538(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_1D7FE0470(v4);

  return v6;
}

id CompositionalListReusableView.__deallocating_deinit()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_41(v1, v2, *(v0 + 88), v3);
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1D7FE05F8(uint64_t a1)
{
  v2 = *(a1 + qword_1EDBB62E8);
  v3 = *(a1 + qword_1EDBB62E8 + 8);

  return sub_1D7E0E10C(v2, v3);
}

uint64_t CompositionalListReusableView.keyCommandBlocks.getter()
{
  v12 = MEMORY[0x1E69E7CC0];
  v8 = *(v0 + qword_1EDBB62D8);
  OUTLINED_FUNCTION_2_0();
  sub_1D7FE0778();
  v1 = v8;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v6, v9);
    v2 = v10;
    v3 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v4 = (*(v3 + 8))(v2, v3);
    sub_1D7F0A4EC(v4);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_1D7F0A44C(v6);
  }

  return v12;
}

unint64_t sub_1D7FE0778()
{
  result = qword_1EDBB6760;
  if (!qword_1EDBB6760)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBB6760);
  }

  return result;
}

void sub_1D7FE07D4(uint64_t a1)
{
  if (!qword_1EDBB6758)
  {
    sub_1D7FE0778();
    v1 = sub_1D8191E84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBB6758);
    }
  }
}

uint64_t CompositionalListReusableView.registerForChanges(block:)(uint64_t a1, uint64_t a2)
{

  return sub_1D7FDFDF0(a1, a2);
}

void TabBarDefaultCompressionAnimation.init(tabBar:)()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI33TabBarDefaultCompressionAnimation_topOffset) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI33TabBarDefaultCompressionAnimation_shouldCompressAtTop) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI33TabBarDefaultCompressionAnimation_shouldCloseGapOnScroll) = 1;
  sub_1D81923A4();
  __break(1u);
}

id TabBarDefaultCompressionAnimation.init(tabBarController:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5TeaUI33TabBarDefaultCompressionAnimation_topOffset] = 0;
  v1[OBJC_IVAR____TtC5TeaUI33TabBarDefaultCompressionAnimation_shouldCompressAtTop] = 0;
  v1[OBJC_IVAR____TtC5TeaUI33TabBarDefaultCompressionAnimation_shouldCloseGapOnScroll] = 1;
  *&v1[OBJC_IVAR____TtC5TeaUI33TabBarDefaultCompressionAnimation_tabBarController] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id TabBarDefaultCompressionAnimation.isCompressed.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI33TabBarDefaultCompressionAnimation_tabBarController);
  v2 = [v1 tabBar];
  [v2 frame];
  v4 = v3;

  result = [v1 view];
  if (result)
  {
    v6 = result;
    [result bounds];
    OUTLINED_FUNCTION_0_99();

    return (OUTLINED_FUNCTION_1_76() <= v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void TabBarDefaultCompressionAnimation.update(withPercentage:)()
{
  v1 = [*(v0 + OBJC_IVAR____TtC5TeaUI33TabBarDefaultCompressionAnimation_tabBarController) view];
  if (v1)
  {
    v2 = v1;
    [v1 frame];
    OUTLINED_FUNCTION_0_99();

    OUTLINED_FUNCTION_1_76();
    v3 = OUTLINED_FUNCTION_4_42();
    [v3 frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v14.origin.x = v5;
    v14.origin.y = v7;
    v14.size.width = v9;
    v14.size.height = v11;
    CGRectGetHeight(v14);
    v12 = OUTLINED_FUNCTION_4_42();
    [v12 frame];
    [v12 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

CGFloat TabBarDefaultCompressionAnimation.maximumBarHeight(for:)()
{
  v1 = [*(v0 + OBJC_IVAR____TtC5TeaUI33TabBarDefaultCompressionAnimation_tabBarController) tabBar];
  [v1 frame];
  OUTLINED_FUNCTION_9_0();

  v2 = OUTLINED_FUNCTION_8_0();

  return CGRectGetHeight(*&v2);
}

Swift::Void __swiftcall TabBarDefaultCompressionAnimation.reload(with:)(UITraitCollection_optional with)
{
  v2 = [*(v1 + OBJC_IVAR____TtC5TeaUI33TabBarDefaultCompressionAnimation_tabBarController) view];
  if (v2)
  {
    v3 = v2;
    [v2 frame];
    OUTLINED_FUNCTION_9_0();

    v7.origin.x = OUTLINED_FUNCTION_8_0();
    CGRectGetHeight(v7);
    v4 = OUTLINED_FUNCTION_4_42();
    [v4 frame];
    OUTLINED_FUNCTION_0_99();

    OUTLINED_FUNCTION_1_76();
    v5 = OUTLINED_FUNCTION_4_42();
    [v5 frame];
    [v5 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

id TabBarDefaultCompressionAnimation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TabBarDefaultCompressionAnimation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::tuple___C__NSRange_CGSize __swiftcall NSAttributedString.sizeAndRangeForString(constrainedTo:)(CGSize constrainedTo)
{
  height = constrainedTo.height;
  width = constrainedTo.width;
  v4 = CTFramesetterCreateWithAttributedString(v1);
  v5 = swift_slowAlloc();
  v18.location = 0;
  v18.length = 0;
  v19.width = width;
  v19.height = height;
  v6 = CTFramesetterSuggestFrameSizeWithConstraints(v4, v18, 0, v19, v5);
  v7 = [(__CFAttributedString *)v1 attributedSubstringFromRange:v5->location, v5->length, v6.width, v6.height];
  [v7 boundingRectWithSize:3 options:0 context:{width, height}];
  v9 = v8;
  v11 = v10;
  location = v5->location;
  length = v5->length;

  v14 = location;
  v15 = length;
  v16 = v9;
  v17 = v11;
  result._1.height = v17;
  result._1.width = v16;
  result._0.length = v15;
  result._0.location = v14;
  return result;
}

__C::CGRect __swiftcall NSAttributedString.boundingRect(with:)(CGSize with)
{
  [v1 boundingRectWithSize:35 options:0 context:{with.width, with.height}];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGSize __swiftcall NSAttributedString.integralSize()()
{
  [v0 size];
  v2 = ceil(v1);
  v4 = ceil(v3);
  result.height = v4;
  result.width = v2;
  return result;
}

uint64_t sub_1D7FE143C@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t BlueprintTableViewDataSource.delegate.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_8_4(v0 + *(v1 + 144), v3);
  return swift_unknownObjectWeakLoadStrong();
}

void BlueprintTableViewDataSource.delegate.setter()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_5_0(v1);
  swift_unknownObjectWeakAssign();
}

void (*BlueprintTableViewDataSource.delegate.modify(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_3_7();
  *(v5 + 40) = *(v4 + 144);
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1D7F3F78C;
}

double BlueprintTableViewDataSource.sectionCollapsibleStateManager.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_8_4(v0 + *(v1 + 152), v3);

  return result;
}

double BlueprintTableViewDataSource.sectionCollapsibleStateManager.setter()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  v3 = *(v2 + 152);
  OUTLINED_FUNCTION_5_0(v4);
  *(v1 + v3) = v0;

  return result;
}

uint64_t (*BlueprintTableViewDataSource.sectionCollapsibleStateManager.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7_1();
  return j_j__swift_endAccess;
}

double BlueprintTableViewDataSource.dragReorderDelegate.getter()
{
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_8_4(v0 + *(v1 + 160), v3);
  swift_unknownObjectRetain();
  return result;
}

uint64_t BlueprintTableViewDataSource.dragReorderDelegate.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_7();
  v6 = (v2 + *(v5 + 160));
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t (*BlueprintTableViewDataSource.dragReorderDelegate.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_7_1();
  return j__swift_endAccess;
}

double BlueprintTableViewDataSource.diffableReorderDataSource.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

id BlueprintTableViewDataSource.init(blueprintProvider:blueprintLayoutProvider:blueprintViewCellProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = *v4;
  v9 = *MEMORY[0x1E69E7D40];
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_1_77();
  *&v4[*(v10 + 152)] = 0;
  OUTLINED_FUNCTION_1_77();
  v12 = &v4[*(v11 + 160)];
  *v12 = 0;
  *(v12 + 1) = 0;
  OUTLINED_FUNCTION_1_77();
  *&v4[*(v13 + 192)] = 0;
  OUTLINED_FUNCTION_1_77();
  v14 = *((v9 & v8) + 0x50);
  OUTLINED_FUNCTION_48_0();
  v16 = v15;
  (*(v15 + 16))(&v4[v17], a1, v14);
  OUTLINED_FUNCTION_1_77();
  v18 = *((v9 & v8) + 0x58);
  OUTLINED_FUNCTION_48_0();
  v20 = v19;
  (*(v19 + 16))(&v4[v21], a2, v18);
  OUTLINED_FUNCTION_1_77();
  v22 = *((v9 & v8) + 0x60);
  OUTLINED_FUNCTION_48_0();
  v24 = v23;
  (*(v23 + 16))(&v4[v25], a3, v22);
  v30.receiver = v4;
  v30.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v30, sel_init);
  (*(v24 + 8))(a3, v22);
  (*(v20 + 8))(a2, v18);
  (*(v16 + 8))(a1, v14);
  return v26;
}

Swift::Void __swiftcall BlueprintTableViewDataSource.register(in:)(UITableView *in)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = (*MEMORY[0x1E69E7D40] & v4);
  [(UITableView *)in setDataSource:v2];
  OUTLINED_FUNCTION_1_77();
  v15[0] = in;
  v7 = *((v5 & v4) + 0x80);
  v8 = *((v5 & v4) + 0x60);
  (*(v7 + 56))(v15, v8, v7);
  OUTLINED_FUNCTION_1_77();
  v10 = *(v9 + 152);
  OUTLINED_FUNCTION_8_4(v2 + v10, v15);
  v11 = *(v2 + v10);
  if (v11)
  {

    sub_1D7FE1E88(0, 0, sub_1D7FE5454, sub_1D816D704);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    v13[2] = v6[11];
    v13[3] = v8;
    v13[4] = v6[13];
    v13[5] = v6[15];
    v13[6] = v7;
    v13[7] = v6[17];
    v13[8] = v12;
    v13[9] = v11;
    v13[10] = in;

    v14 = in;
    BlueprintSectionCollapsibleStateManager.onStateChange(_:)(sub_1D7FE23D4, v13);
  }
}

void sub_1D7FE1DBC(uint64_t a1, uint64_t a2)
{
  sub_1D7E0A1A8(0, &qword_1EDBAE530, 0x1E69DD028);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1D816D800(a1, a2);
  v6 = sub_1D8190EE4();

  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v6];
}

void sub_1D7FE1E88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  a3(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  a4(a1, a2);
  v9 = sub_1D8190EE4();

  [v4 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v9];
}

void sub_1D7FE1F58(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v31 = a4;
  v6 = *a3;
  v32 = sub_1D818E994();
  v7 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v6 + 88);
  v30[1] = a3;
  v11 = *(v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedConformanceWitness();
  v38 = AssociatedTypeWitness;
  v39 = v13;
  v33 = v15;
  v34 = AssociatedConformanceWitness;
  v40 = AssociatedConformanceWitness;
  v41 = v15;
  v16 = type metadata accessor for Blueprint(0, &v38);
  v35 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v30 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30[0] = Strong;
    BlueprintProviderType.blueprint.getter(v11, v10);
    swift_getWitnessTable();
    v38 = AssociatedTypeWitness;
    v39 = v13;
    v40 = v34;
    v41 = v33;
    type metadata accessor for BlueprintSection(255, &v38);
    swift_getWitnessTable();
    sub_1D81918C4();
    (*(v35 + 8))(v18, v16);
    if (v37 != 1)
    {
      v20 = v36;
      swift_checkMetadataState();
      swift_getWitnessTable();
      v21 = sub_1D8191834();
      if (v21 < 0)
      {
        __break(1u);
        return;
      }

      v22 = v21;
      if (v21)
      {
        v35 = a1;
        v38 = MEMORY[0x1E69E7CC0];
        sub_1D7EB0144();
        v23 = 0;
        v24 = v38;
        v25 = v32;
        do
        {
          MEMORY[0x1DA710B40](v23, v20);
          v38 = v24;
          v26 = *(v24 + 16);
          if (v26 >= *(v24 + 24) >> 1)
          {
            sub_1D7EB0144();
            v25 = v32;
            v24 = v38;
          }

          ++v23;
          *(v24 + 16) = v26 + 1;
          (*(v7 + 32))(v24 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v26, v9, v25);
        }

        while (v22 != v23);
        v27 = v31;
      }

      else
      {
        v27 = v31;
      }

      BlueprintSectionCollapsibleStateManager.state(for:)(&v38);
      v28 = v38;
      v29 = sub_1D8191304();

      if (v28)
      {
        [v27 insertRowsAtIndexPaths:v29 withRowAnimation:0];
      }

      else
      {
        [v27 deleteRowsAtIndexPaths:v29 withRowAnimation:0];
      }
    }
  }
}

double BlueprintTableViewDataSource.registerKeyCommandTraversal(observable:)()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  *(v1 + *(v2 + 192)) = v0;

  return result;
}

uint64_t sub_1D7FE2494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  v19[1] = a1;
  v19[2] = a2;
  v20 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for BlueprintItem(255, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  v19[0] = sub_1D8191E84();
  v9 = *(v19[0] - 8);
  MEMORY[0x1EEE9AC00](v19[0]);
  v11 = v19 - v10;
  v12 = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v21[0] = v12;
  v21[1] = AssociatedTypeWitness;
  v21[2] = v13;
  v21[3] = AssociatedConformanceWitness;
  type metadata accessor for Blueprint(0, v21);
  Blueprint.item(indexPath:)();
  if (__swift_getEnumTagSinglePayload(v11, 1, v8) == 1)
  {
    result = (*(v9 + 8))(v11, v19[0]);
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v15 = BlueprintItem.identifier.getter(v8);
    v16 = v17;
    result = (*(*(v8 - 8) + 8))(v11, v8);
  }

  v18 = v20;
  *v20 = v15;
  v18[1] = v16;
  return result;
}

void sub_1D7FE26F8()
{
  OUTLINED_FUNCTION_120();
  v17 = v1;
  v18 = v2;
  v16 = v3;
  v4 = *v0;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40] & *v0;
  v7 = *(v6 + 0x70);
  v8 = *(v6 + 0x50);
  OUTLINED_FUNCTION_10_8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_10_8();
  v10 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_67();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_67();
  v26[0] = AssociatedTypeWitness;
  v26[1] = v10;
  v26[2] = AssociatedConformanceWitness;
  v26[3] = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for Blueprint(0, v26);
  OUTLINED_FUNCTION_9();
  v14 = v13;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_12_24();
  BlueprintProviderType.blueprint.getter(v8, v7);
  v19[2] = v8;
  v20 = *(v6 + 88);
  v21 = *((v5 & v4) + 0x68);
  v22 = v7;
  v23 = *(v6 + 120);
  v24 = *((v5 & v4) + 0x88);
  v25 = AssociatedTypeWitness;
  v18(v17, v19, v16);
  (*(v14 + 8))(AssociatedTypeWitness, v12);
  OUTLINED_FUNCTION_100();
}

void sub_1D7FE2910(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[0] = swift_getAssociatedTypeWitness();
  v7[1] = swift_getAssociatedTypeWitness();
  v7[2] = swift_getAssociatedConformanceWitness();
  v7[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for Blueprint(0, v7);
  Blueprint.indexPath(for:)();
}

Swift::Int __swiftcall BlueprintTableViewDataSource.numberOfSections(in:)(UITableView *in)
{
  OUTLINED_FUNCTION_120();
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  OUTLINED_FUNCTION_35_10();
  OUTLINED_FUNCTION_35_10();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v4 = OUTLINED_FUNCTION_30_2();
  type metadata accessor for Blueprint(v4, v5);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v6);
  BlueprintProviderType.blueprint.getter(v3, v2);
  OUTLINED_FUNCTION_6_2();
  swift_getWitnessTable();
  sub_1D8191834();
  v7 = OUTLINED_FUNCTION_4_8();
  v8(v7);
  OUTLINED_FUNCTION_100();
  return result;
}

Swift::Int sub_1D7FE2BD4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = BlueprintTableViewDataSource.numberOfSections(in:)(v5);

  return v6;
}

Swift::Int __swiftcall BlueprintTableViewDataSource.tableView(_:numberOfRowsInSection:)(UITableView *_, Swift::Int numberOfRowsInSection)
{
  OUTLINED_FUNCTION_120();
  v3 = v2;
  v34 = v4;
  v31 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = OUTLINED_FUNCTION_34_9();
  v7 = OUTLINED_FUNCTION_34_9();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedConformanceWitness();
  v10 = OUTLINED_FUNCTION_30_2();
  type metadata accessor for BlueprintSection(v10, v11);
  OUTLINED_FUNCTION_9();
  v32 = v13;
  v33 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  v36[0] = v6;
  v36[1] = v7;
  v36[2] = AssociatedConformanceWitness;
  v36[3] = v9;
  v17 = OUTLINED_FUNCTION_30_2();
  v19 = type metadata accessor for Blueprint(v17, v18);
  OUTLINED_FUNCTION_9();
  v21 = v20;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_12_24();
  v23 = *((v5 & v31) + 0x98);
  OUTLINED_FUNCTION_8_4(v3 + v23, v36);
  if (!*(v3 + v23) || (, v24 = OUTLINED_FUNCTION_4_8(), BlueprintProviderType.blueprint.getter(v24, v25), OUTLINED_FUNCTION_37_0(), (*(v21 + 8))(AssociatedConformanceWitness, v19), BlueprintSectionCollapsibleStateManager.state(for:)(&v35), , (*(v32 + 8))(v16, v33), v35))
  {
    v26 = OUTLINED_FUNCTION_4_8();
    BlueprintProviderType.blueprint.getter(v26, v27);
    OUTLINED_FUNCTION_37_0();
    (*(v21 + 8))(AssociatedConformanceWitness, v19);
    OUTLINED_FUNCTION_7_5();
    v28 = v33;
    swift_getWitnessTable();
    sub_1D8191834();
    (*(v32 + 8))(v16, v28);
  }

  OUTLINED_FUNCTION_100();
  return result;
}

Swift::Int sub_1D7FE2F2C(void *a1, uint64_t a2, void *a3, Swift::Int a4)
{
  v6 = a3;
  v7 = a1;
  v8 = BlueprintTableViewDataSource.tableView(_:numberOfRowsInSection:)(v7, a4);

  return v8;
}

void BlueprintTableViewDataSource.tableView(_:cellForRowAt:)()
{
  OUTLINED_FUNCTION_120();
  v42 = v1;
  v48 = v2;
  v3 = *v0;
  v4 = *MEMORY[0x1E69E7D40];
  v41 = *((*MEMORY[0x1E69E7D40] & v3) + 0x78);
  v40 = *((v4 & v3) + 0x58);
  OUTLINED_FUNCTION_10_8();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = AssociatedTypeWitness;
  OUTLINED_FUNCTION_67();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for BlueprintLayoutItem(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  OUTLINED_FUNCTION_9();
  v46 = v8;
  v47 = v7;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_94();
  v43 = v10;
  v49 = v3;
  v37 = v4;
  v11 = *((v4 & v3) + 0x70);
  v12 = *((v4 & v3) + 0x50);
  v13 = OUTLINED_FUNCTION_91_0();
  v14 = OUTLINED_FUNCTION_91_0();
  v15 = swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedConformanceWitness();
  v51[0] = v13;
  v51[1] = v14;
  v51[2] = v15;
  v51[3] = v16;
  v17 = type metadata accessor for Blueprint(0, v51);
  OUTLINED_FUNCTION_9();
  v19 = v18;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - v21;
  type metadata accessor for BlueprintItem(0, v14, v16, v23);
  OUTLINED_FUNCTION_9();
  v38 = v25;
  v39 = v24;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v37 - v27;
  v29 = v37;
  BlueprintProviderType.blueprint.getter(v12, v11);
  v30 = v42;
  OUTLINED_FUNCTION_110();
  Blueprint.subscript.getter();
  (*(v19 + 8))(v22, v17);
  BlueprintLayoutProviderType.layoutBlueprint.getter(v40, v41);
  v31 = swift_getAssociatedTypeWitness();
  v32 = swift_getAssociatedConformanceWitness();
  v50[0] = v31;
  v50[1] = v44;
  v50[2] = v32;
  v50[3] = AssociatedConformanceWitness;
  v33 = type metadata accessor for BlueprintLayout(0, v50);
  v34 = v43;
  v35 = OUTLINED_FUNCTION_110();
  BlueprintLayout.subscript.getter(v35, v36);
  (*(*(v33 - 8) + 8))(v51, v33);
  v50[0] = v48;
  (*(*((v29 & v49) + 0x80) + 64))(v51, v28, v34, v50, v30, *((v29 & v49) + 0x60));
  (*(v46 + 8))(v34, v47);
  (*(v38 + 8))(v28, v39);
  OUTLINED_FUNCTION_100();
}

id sub_1D7FE3404(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_1D818E994();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v10 = a3;
  v11 = a1;
  BlueprintTableViewDataSource.tableView(_:cellForRowAt:)();
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

void BlueprintTableViewDataSource.tableView(_:canEditRowAt:)()
{
  OUTLINED_FUNCTION_120();
  v50 = v1;
  v46 = v2;
  v48 = *v0;
  v3 = *((*MEMORY[0x1E69E7D40] & v48) + 0x70);
  v4 = *((*MEMORY[0x1E69E7D40] & v48) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v49 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_23();
  v45 = v8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v44 - v10;
  v11 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_72_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_72_0();
  v13 = swift_getAssociatedConformanceWitness();
  v53[0] = v11;
  v53[1] = AssociatedTypeWitness;
  v53[2] = AssociatedConformanceWitness;
  v54 = v13;
  v14 = type metadata accessor for Blueprint(0, v53);
  OUTLINED_FUNCTION_9();
  v16 = v15;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - v18;
  v21 = type metadata accessor for BlueprintItem(0, AssociatedTypeWitness, v13, v20);
  OUTLINED_FUNCTION_9();
  v51 = v22;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v44 - v24;
  BlueprintProviderType.blueprint.getter(v4, v3);
  Blueprint.subscript.getter();
  (*(v16 + 8))(v19, v14);
  v26 = *(v49 + 16);
  v27 = v26(v47, v25, AssociatedTypeWitness);
  v28 = OUTLINED_FUNCTION_91(v27, &qword_1EDBB0730, &protocol descriptor for BlueprintViewActionable);
  if (OUTLINED_FUNCTION_11_28(v28))
  {
    v29 = v21;
    sub_1D7E05450(v52, v53);
    v30 = v54;
    v31 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    if ((*(v31 + 24))(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_9_23();
      v33(v32, v29);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      goto LABEL_11;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    v21 = v29;
  }

  else
  {
    OUTLINED_FUNCTION_90();
    sub_1D7FE3970(v52, &qword_1ECA0E650, &qword_1EDBB0730, &protocol descriptor for BlueprintViewActionable);
  }

  if ([v46 isEditing])
  {
    v34 = v26(v45, v25, AssociatedTypeWitness);
    v35 = OUTLINED_FUNCTION_91(v34, &qword_1ECA0EFE0, &protocol descriptor for Movable);
    if (OUTLINED_FUNCTION_11_28(v35))
    {
      v36 = OUTLINED_FUNCTION_14_19();
      v37(v36);
      v38 = OUTLINED_FUNCTION_9_23();
      v39(v38, v21);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
    }

    else
    {
      OUTLINED_FUNCTION_90();
      v42 = OUTLINED_FUNCTION_9_23();
      v43(v42, v21);
      sub_1D7FE3970(v52, &unk_1ECA0E640, &qword_1ECA0EFE0, &protocol descriptor for Movable);
    }
  }

  else
  {
    v40 = OUTLINED_FUNCTION_9_23();
    v41(v40, v21);
  }

LABEL_11:
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7FE3970(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7FE39D8(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_8();
  (*(v5 + 8))(a1);
  return a1;
}

void sub_1D7FE39D8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D7E069F0(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void BlueprintTableViewDataSource.tableView(_:commit:forRowAt:)()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v110 = v2;
  v4 = v3;
  v97 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = type metadata accessor for BlueprintViewAction.Action(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_15();
  v99 = v7 - v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v101 = v9;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_94();
  v102 = v11;
  OUTLINED_FUNCTION_5_38();
  sub_1D7E1ACFC(0, v12, v13);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_94();
  v104 = v15;
  v103 = type metadata accessor for BlueprintViewAction(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  v100 = v18 - v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for BlueprintItem(0, AssociatedTypeWitness, AssociatedConformanceWitness, v20);
  OUTLINED_FUNCTION_9();
  v105 = v22;
  v106 = v21;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_23();
  v98 = v23;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v24);
  v108 = &v91 - v25;
  v26 = swift_getAssociatedTypeWitness();
  v27 = swift_getAssociatedConformanceWitness();
  *&v111 = v26;
  *(&v111 + 1) = AssociatedTypeWitness;
  *&v112 = v27;
  *(&v112 + 1) = AssociatedConformanceWitness;
  v28 = type metadata accessor for BlueprintSection(0, &v111);
  OUTLINED_FUNCTION_9();
  v107 = v29;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_94();
  v109 = v31;
  *&v111 = v26;
  *(&v111 + 1) = AssociatedTypeWitness;
  *&v112 = v27;
  *(&v112 + 1) = AssociatedConformanceWitness;
  v32 = type metadata accessor for Blueprint(0, &v111);
  OUTLINED_FUNCTION_9();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_23();
  v96 = v36;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v91 - v38;
  if (v4 == 2 && sub_1D818E984() == 2)
  {
    v95 = v28;
    v94 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
    v40 = OUTLINED_FUNCTION_72_0();
    BlueprintProviderType.blueprint.getter(v40, v41);
    OUTLINED_FUNCTION_6_2();
    swift_getWitnessTable();
    v42 = v32;
    v43 = sub_1D8191834();
    if (sub_1D818E974() >= v43)
    {
      (*(v34 + 8))(v39, v42);
      goto LABEL_14;
    }

    v92 = v34;
    sub_1D818E974();
    Blueprint.subscript.getter();
    OUTLINED_FUNCTION_7_5();
    v93 = v39;
    v44 = v95;
    swift_getWitnessTable();
    v45 = sub_1D8191834();
    if (sub_1D818E964() >= v45)
    {
      v74 = OUTLINED_FUNCTION_13_23();
      v75(v74, v44);
      v76 = OUTLINED_FUNCTION_26_9();
      v78 = v42;
    }

    else
    {
      v91 = v42;
      v46 = sub_1D818E964();
      v47 = v108;
      BlueprintSection.subscript.getter(v46, v44, v48, v49);
      v50 = (*(v101 + 16))(v102, v47, AssociatedTypeWitness);
      OUTLINED_FUNCTION_91(v50, &qword_1EDBB0730, &protocol descriptor for BlueprintViewActionable);
      if (swift_dynamicCast())
      {
        v51 = *(&v112 + 1);
        v52 = v113;
        __swift_project_boxed_opaque_existential_1(&v111, *(&v112 + 1));
        v53 = v104;
        (*(v52 + 40))(2, v51, v52);
        __swift_destroy_boxed_opaque_existential_1Tm(&v111);
        if (__swift_getEnumTagSinglePayload(v53, 1, v103) != 1)
        {
          v54 = v53;
          v55 = v100;
          sub_1D7F9E368(v54, v100);
          type metadata accessor for BlueprintViewActionRequest(0, AssociatedTypeWitness, AssociatedConformanceWitness, v56);
          v57 = v105;
          (*(v105 + 16))(v98, v108, v106);
          BlueprintViewAction.action.getter(v99);
          LOBYTE(v111) = 1;
          v58 = OUTLINED_FUNCTION_4_8();
          v62 = BlueprintViewActionRequest.__allocating_init(item:action:source:sourceView:completion:)(v58, v59, v60, 0, v61, 0);
          OUTLINED_FUNCTION_8_4(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x90), &v111);
          Strong = swift_unknownObjectWeakLoadStrong();
          v64 = (v92 + 8);
          if (Strong)
          {
            v65 = Strong;
            v66 = v96;
            v67 = OUTLINED_FUNCTION_72_0();
            BlueprintProviderType.blueprint.getter(v67, v68);
            (*(*(v97 + 136) + 72))(v66, v62, *(v97 + 104));

            v69 = *v64;
            v70 = v55;
            v71 = v91;
            (*v64)(v66, v91);
            sub_1D7FE5230(v70);
            (*(v57 + 8))(v108, v106);
            v72 = OUTLINED_FUNCTION_13_23();
            v73(v72, v95);
            v69(v93, v71);
          }

          else
          {

            sub_1D7FE5230(v55);
            (*(v57 + 8))(v108, v106);
            v89 = OUTLINED_FUNCTION_13_23();
            v90(v89, v95);
            (*v64)(v93, v91);
          }

          goto LABEL_14;
        }
      }

      else
      {
        v113 = 0;
        v111 = 0u;
        v112 = 0u;
        sub_1D7FE3970(&v111, &qword_1ECA0E650, &qword_1EDBB0730, &protocol descriptor for BlueprintViewActionable);
        v53 = v104;
        __swift_storeEnumTagSinglePayload(v104, 1, 1, v103);
      }

      OUTLINED_FUNCTION_5_38();
      sub_1D7FE5400(v53, v79, v80);
      v81 = sub_1D81919C4();
      sub_1D7FE39D8(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_1D819FAB0;
      *&v111 = 0;
      *(&v111 + 1) = 0xE000000000000000;
      swift_getWitnessTable();
      OUTLINED_FUNCTION_110();
      sub_1D8192604();
      v83 = v111;
      *(v82 + 56) = MEMORY[0x1E69E6158];
      *(v82 + 64) = sub_1D7E13BF4();
      *(v82 + 32) = v83;
      sub_1D7E0A1A8(0, &qword_1EDBBE110, 0x1E69E9BF8);
      v84 = sub_1D8191E44();
      sub_1D818FD44("Failed to get insert view action for item '%@'", 46, 2, &dword_1D7DFF000, v84, v81, v82);

      v85 = OUTLINED_FUNCTION_110();
      v86(v85);
      v87 = OUTLINED_FUNCTION_13_23();
      v88(v87, v95);
      v76 = OUTLINED_FUNCTION_26_9();
      v78 = v91;
    }

    v77(v76, v78);
  }

LABEL_14:
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7FE43C4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1D818E994();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D818E924();
  v11 = a3;
  v12 = a1;
  BlueprintTableViewDataSource.tableView(_:commit:forRowAt:)();

  return (*(v8 + 8))(v10, v7);
}

void BlueprintTableViewDataSource.tableView(_:canMoveRowAt:)()
{
  OUTLINED_FUNCTION_120();
  v35 = v2;
  v36 = v1;
  v3 = *MEMORY[0x1E69E7D40];
  v33 = *v0;
  v34 = v3;
  v4 = *((v3 & v33) + 0x70);
  v5 = *((v3 & v33) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v31 = v7;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_94();
  v32 = v9;
  OUTLINED_FUNCTION_10_8();
  v10 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_67();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_67();
  v12 = swift_getAssociatedConformanceWitness();
  v38[0] = v10;
  v38[1] = AssociatedTypeWitness;
  v38[2] = AssociatedConformanceWitness;
  v38[3] = v12;
  v13 = type metadata accessor for Blueprint(0, v38);
  OUTLINED_FUNCTION_9();
  v15 = v14;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  type metadata accessor for BlueprintItem(0, AssociatedTypeWitness, v12, v19);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_12_24();
  BlueprintProviderType.blueprint.getter(v5, v4);
  Blueprint.subscript.getter();
  (*(v15 + 8))(v18, v13);
  if (sub_1D7FE4808(v36))
  {
    v21 = (*(v31 + 16))(v32, v10, AssociatedTypeWitness);
    v22 = OUTLINED_FUNCTION_91(v21, &qword_1ECA0EFE0, &protocol descriptor for Movable);
    if (OUTLINED_FUNCTION_11_28(v22))
    {
      v23 = OUTLINED_FUNCTION_14_19();
      v24(v23);
      v25 = OUTLINED_FUNCTION_19_15();
      v26(v25);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
    }

    else
    {
      OUTLINED_FUNCTION_90();
      v29 = OUTLINED_FUNCTION_19_15();
      v30(v29);
      sub_1D7FE3970(&v37, &unk_1ECA0E640, &qword_1ECA0EFE0, &protocol descriptor for Movable);
    }
  }

  else
  {
    v27 = OUTLINED_FUNCTION_19_15();
    v28(v27);
  }

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7FE4808(void *a1)
{
  v2 = [a1 window];
  if (v2 && (v3 = v2, v4 = [v2 traitCollection], v3, v4) && ((v5 = objc_msgSend(v4, sel_verticalSizeClass), v6 = objc_msgSend(v4, sel_horizontalSizeClass), v4, v5 == 2) ? (v7 = v6 == 2) : (v7 = 0), v7))
  {
    return 1;
  }

  else
  {
    return [a1 isEditing];
  }
}

uint64_t sub_1D7FE48D4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(id, uint64_t))
{
  sub_1D818E994();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v11 = v10 - v9;
  sub_1D818E924();
  v12 = a3;
  v13 = a1;
  LOBYTE(a5) = a5(v12, v11);

  v14 = OUTLINED_FUNCTION_110();
  v15(v14);
  return a5 & 1;
}

void BlueprintTableViewDataSource.tableView(_:moveRowAt:to:)()
{
  OUTLINED_FUNCTION_120();
  v28 = v2;
  v3 = *v0;
  v25 = v4;
  v26 = v3;
  v5 = *MEMORY[0x1E69E7D40];
  v24 = *MEMORY[0x1E69E7D40] & v3;
  v6 = *((v5 & v3) + 0x70);
  v7 = *((v5 & v3) + 0x50);
  v29 = OUTLINED_FUNCTION_36_8();
  v30 = OUTLINED_FUNCTION_36_8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = swift_getAssociatedConformanceWitness();
  v8 = OUTLINED_FUNCTION_30_2();
  v10 = type metadata accessor for Blueprint(v8, v9);
  OUTLINED_FUNCTION_9();
  v12 = v11;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12_24();
  v27 = type metadata accessor for BlueprintItem(0, v30, v32, v14);
  OUTLINED_FUNCTION_9();
  v16 = v15;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v23 - v18;
  v23 = v7;
  v26 = v6;
  BlueprintProviderType.blueprint.getter(v7, v6);
  Blueprint.subscript.getter();
  v20 = *(v12 + 8);
  v28 = v10;
  v20(v1, v10);
  OUTLINED_FUNCTION_8_4(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x90), &v29);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    BlueprintProviderType.blueprint.getter(v23, v26);
    (*(*(v24 + 136) + 168))(v1, v19, v25, *(v24 + 104));

    v20(v1, v28);
  }

  (*(v16 + 8))(v19, v27);
  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7FE4CBC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1D818E994();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  sub_1D818E924();
  sub_1D818E924();
  v14 = a3;
  v15 = a1;
  BlueprintTableViewDataSource.tableView(_:moveRowAt:to:)();

  v16 = *(v8 + 8);
  v16(v10, v7);
  return (v16)(v13, v7);
}

id BlueprintTableViewDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BlueprintTableViewDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1D7FE4EB0(char *a1)
{
  MEMORY[0x1DA715E30](&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x90)]);
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_1();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_48_0();
  (*(v2 + 8))(&a1[v3]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_48_0();
  (*(v4 + 8))(&a1[v5]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_48_0();
  (*(v6 + 8))(&a1[v7]);
  OUTLINED_FUNCTION_1();

  return result;
}

void (*sub_1D7FE5044(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = BlueprintTableViewDataSource.dragReorderDelegate.modify();
  return sub_1D7F4150C;
}

Swift::Void __swiftcall BlueprintTableViewDataSource.traitCollectionDidChange(_:traitCollection:)(UITraitCollection_optional _, UITraitCollection traitCollection)
{
  v3 = *&_.is_nil;
  isa = _.value.super.isa;
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  OUTLINED_FUNCTION_44();
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v10 + 16))(v14 - v11, &v2[*((v9 & v8) + 0xB8)], v5, v7);
  sub_1D7E069F0(0, qword_1EDBB62F8, &protocol descriptor for BlueprintViewTraitEnvironment, 0);
  if (swift_dynamicCast())
  {
    v12 = v14[1];
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(isa, v3, ObjectType, v12);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D7FE5230(uint64_t a1)
{
  v2 = type metadata accessor for BlueprintViewAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7FE528C(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1D7FE5400(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D7E1ACFC(0, a2, a3);
  OUTLINED_FUNCTION_8();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1D7FE5454(uint64_t a1)
{
  if (!qword_1ECA0EFE8)
  {
    v2 = type metadata accessor for HiddenView();
    v4 = type metadata accessor for TableViewCell(a1, v2, &protocol witness table for HiddenView, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1ECA0EFE8);
    }
  }
}

uint64_t sub_1D7FE54B4()
{

  return v0;
}

uint64_t sub_1D7FE54E4()
{
  sub_1D7FE54B4();

  return swift_deallocClassInstance();
}

void sub_1D7FE5548()
{
  if (!qword_1ECA0EFF0)
  {
    v0 = sub_1D818FD14();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0EFF0);
    }
  }
}

void UICollectionView.update(with:apply:response:animated:beforeCompletion:completion:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, void (*a8)(void), uint64_t a9)
{
  v10 = v9;
  v18 = [v10 dataSource];
  if (!v18)
  {
    a2();
    (a8)(0);
    return;
  }

  v19 = v18;
  v25 = a8;
  v20 = UICollectionView.transition.getter();
  if (!v20)
  {
    goto LABEL_9;
  }

  if (!BlueprintCollectionViewLayoutTransition.isTransitioning.getter(v20))
  {

LABEL_9:
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D7E0E768(a1, v27);
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = a2;
    *(v24 + 32) = a3;
    *(v24 + 40) = v25;
    *(v24 + 48) = a9;
    *(v24 + 56) = a4;
    *(v24 + 64) = a5 & 1;
    sub_1D7E05450(v27, v24 + 72);
    *(v24 + 112) = a6;
    *(v24 + 120) = a7;
    *(v24 + 128) = v19;

    swift_unknownObjectRetain();

    sub_1D7FE62A0(sub_1D7FE8108, v24);

    swift_unknownObjectRelease();
    return;
  }

  sub_1D7FE814C();
  v21 = swift_allocError();
  *v22 = 0xD00000000000002ELL;
  *(v22 + 8) = 0x80000001D81CDC70;
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = 3;
  a8();

  swift_unknownObjectRelease();
}

void sub_1D7FE57F8(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = UICollectionView.transition.getter();
    if (v19)
    {
      if (BlueprintCollectionViewLayoutTransition.isTransitioning.getter(v19))
      {
        sub_1D7FE814C();
        v20 = swift_allocError();
        *v21 = 0xD00000000000003ELL;
        *(v21 + 8) = 0x80000001D81CDCA0;
        *(v21 + 16) = 0;
        *(v21 + 24) = 0;
        *(v21 + 32) = 3;
        a4();

        return;
      }
    }

    v24 = a5;
    v25 = a7;
    if (a6)
    {
      v26 = 0;
      BlueprintViewActionResponse.complete(apply:)(&v26);
    }

    MEMORY[0x1EEE9AC00](v19);
    v22[2] = v18;
    v22[3] = a2;
    v22[4] = a3;
    v22[5] = a8;
    v22[6] = a9;
    v22[7] = a10;
    v22[8] = a6;
    v22[9] = a4;
    v22[10] = v24;
    v23 = v25 & 1;
    sub_1D817062C(v25 & 1, sub_1D7FE8428, v22);
    if (a6)
    {
      v26 = 1;
      BlueprintViewActionResponse.complete(apply:)(&v26);
    }
  }

  else
  {
    a2();
    (a4)(0);
  }
}

void sub_1D7FE59D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_1D7E0E768(a4, v31);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  sub_1D7E05450(v31, v16 + 40);
  *(v16 + 80) = a5;
  *(v16 + 88) = a6;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1D7EA99F0;
  *(v17 + 24) = v16;
  v29 = sub_1D7EA8F68;
  v30 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1D7E74D74;
  v28 = &block_descriptor_45;
  v18 = _Block_copy(&aBlock);
  v19 = a1;

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D7E0E768(a4, v31);
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = a7;
  *(v21 + 32) = a8;
  *(v21 + 40) = a9;
  sub_1D7E05450(v31, v21 + 48);
  *(v21 + 88) = a10;
  v29 = sub_1D7EB30C0;
  v30 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_1D7EB30D4;
  v28 = &block_descriptor_52;
  v22 = _Block_copy(&aBlock);

  [v19 performBatchUpdates:v18 completion:v22];
  _Block_release(v22);
  _Block_release(v18);

  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }
}

void sub_1D7FE5C88(void *a1, void *a2)
{
  v4 = sub_1D818E8B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  if ([a1 dataSource])
  {
    v15 = a2[3];
    v16 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v15);
    v17 = *(v16 + 40);
    v23 = a1;
    v17(v15, v16);
    v18 = a2[3];
    v19 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v18);
    (*(v19 + 32))(v18, v19);
    sub_1D7EDF944(v7, v14);
    v20 = *(v5 + 8);
    v20(v7, v4);
    v20(v10, v4);
    v21 = sub_1D818E814();
    v20(v14, v4);
    [v23 reloadSections_];
    swift_unknownObjectRelease();
  }
}

void sub_1D7FE5E94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D7E0E768(a2, v23);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  sub_1D7E05450(v23, v10 + 24);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1D7FE84C4;
  *(v11 + 24) = v10;
  v21 = sub_1D7EA8F68;
  v22 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1D7E74D74;
  v20 = &block_descriptor_90;
  v12 = _Block_copy(&aBlock);
  v13 = a1;

  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v21 = sub_1D7FE84D0;
  v22 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1D7EB30D4;
  v20 = &block_descriptor_96;
  v15 = _Block_copy(&aBlock);

  swift_unknownObjectRetain();

  [v13 performBatchUpdates:v12 completion:v15];
  _Block_release(v15);
  _Block_release(v12);

  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }
}

void sub_1D7FE60D4(void *a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  (*(v4 + 88))(v3, v4);
  sub_1D818E994();
  v5 = sub_1D8191304();

  [a1 reloadItemsAtIndexPaths_];
}

void sub_1D7FE6180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    LOBYTE(v9[0]) = 2;
    BlueprintViewActionResponse.complete(apply:)(v9);
  }

  v6 = [objc_opt_self() sharedApplication];
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v9[4] = sub_1D7EB38E4;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D7E64940;
  v9[3] = &block_descriptor_102;
  v8 = _Block_copy(v9);

  [v6 ts:v8 installCACommitCompletionBlock:?];
  _Block_release(v8);
}

void sub_1D7FE62A0(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v3, ObjectType, &protocol descriptor for BlueprintViewUpdateDeferring))
  {
    v12 = v3;
    SwipeActionCollectionView.deferUpdates(block:)(a1, a2, v7, v8, v9, v10, v11);
  }

  else
  {
    a1();
  }
}

void UICollectionView.invalidateLayout(animated:completion:)(char a1, void (*a2)(void), uint64_t a3)
{
  v7 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v13 = v12 - v11;
  LOBYTE(aBlock) = 0;
  v14 = UICollectionView.indexPaths(visibility:)(&aBlock);
  if (a1)
  {
    v43 = v3;
    v41 = a3;
    v15 = *(v14 + 16);
    v40 = v14;
    if (v15)
    {
      v18 = *(v9 + 16);
      v17 = v9 + 16;
      v16 = v18;
      v19 = v14 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
      v20 = *(v17 + 56);
      v42 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v16(v13, v19, v7);
        v21 = sub_1D818E8E4();
        v22 = [v43 cellForItemAtIndexPath_];

        (*(v17 - 8))(v13, v7);
        if (v22 && (*&aBlock = v22, sub_1D7E0A1A8(0, &qword_1EDBB3110, 0x1E69DC7F8), sub_1D7FE8218(), (swift_dynamicCast() & 1) != 0))
        {
          if (*(&v50 + 1))
          {
            sub_1D7E05450(&v49, &aBlock);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1D7EE5294(0, *(v42 + 16) + 1, 1, v42);
              v42 = v25;
            }

            v24 = *(v42 + 16);
            v23 = *(v42 + 24);
            if (v24 >= v23 >> 1)
            {
              v26 = OUTLINED_FUNCTION_2_10(v23);
              sub_1D7EE5294(v26, v24 + 1, 1, v42);
              v42 = v27;
            }

            *(v42 + 16) = v24 + 1;
            sub_1D7E05450(&aBlock, v42 + 40 * v24 + 32);
            goto LABEL_14;
          }
        }

        else
        {
          v51 = 0;
          v49 = 0u;
          v50 = 0u;
        }

        sub_1D7FE81A0(&v49);
LABEL_14:
        v19 += v20;
        if (!--v15)
        {
          goto LABEL_18;
        }
      }
    }

    v42 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v30 = *(v42 + 16);
    if (v30)
    {
      v31 = v42 + 32;
      do
      {
        sub_1D7E0E768(v31, &aBlock);
        v32 = v46;
        v33 = v47;
        __swift_project_boxed_opaque_existential_1(&aBlock, v46);
        v33[1](v32, v33);
        __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
        v31 += 40;
        --v30;
      }

      while (v30);
    }

    OUTLINED_FUNCTION_0_32();
    v34 = swift_allocObject();
    *(v34 + 16) = v43;
    *(v34 + 24) = v40;
    OUTLINED_FUNCTION_0_32();
    v35 = swift_allocObject();
    *(v35 + 16) = sub_1D7FE8274;
    *(v35 + 24) = v34;
    v47 = sub_1D7E74D6C;
    v48 = v35;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v45 = sub_1D7E74D74;
    v46 = &block_descriptor_33;
    v36 = _Block_copy(&aBlock);
    v37 = v43;

    OUTLINED_FUNCTION_1_63();
    v38 = swift_allocObject();
    v38[2] = v42;
    v38[3] = a2;
    v38[4] = v41;
    v47 = sub_1D7FE827C;
    v48 = v38;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v45 = sub_1D7EB30D4;
    v46 = &block_descriptor_15_0;
    v39 = _Block_copy(&aBlock);

    [v37 performBatchUpdates:v36 completion:v39];
    _Block_release(v39);
    _Block_release(v36);
  }

  else
  {
    v28 = sub_1D8191304();

    [v3 reconfigureItemsAtIndexPaths_];

    v29 = [v3 collectionViewLayout];
    [v29 invalidateLayout];

    a2();
  }
}

void sub_1D7FE67FC(void *a1, uint64_t a2)
{
  sub_1D818E994();
  v3 = sub_1D8191304();
  [a1 reconfigureItemsAtIndexPaths_];

  v4 = [a1 collectionViewLayout];
  [v4 invalidateLayout];
}

uint64_t sub_1D7FE6894(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = v5[3];
      v7 = v5[4];
      __swift_project_boxed_opaque_existential_1(v5, v6);
      a1 = (*(v7 + 16))(v6, v7);
      v5 += 5;
      --v4;
    }

    while (v4);
  }

  return a3(a1);
}

void UICollectionView.frame(at:)(uint64_t a1@<X8>)
{
  v3 = [v1 collectionViewLayout];
  v4 = sub_1D818E8E4();
  v5 = [v3 layoutAttributesForItemAtIndexPath_];

  if (v5)
  {
    [v5 frame];
    v13 = v6;
    v14 = v7;
    v12 = v8;
    v15 = v9;

    *&v11 = v12;
    *&v10 = v13;
    *(&v10 + 1) = v14;
    *(&v11 + 1) = v15;
  }

  else
  {
    v10 = 0uLL;
    v11 = 0uLL;
  }

  *a1 = v10;
  *(a1 + 16) = v11;
  *(a1 + 32) = v5 == 0;
}

void __swiftcall UICollectionView.sectionFrame(at:)(__C::CGRect_optional *__return_ptr retstr, Swift::Int at)
{
  v5 = [v2 collectionViewLayout];
  sub_1D7FE8288(0);
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
    sub_1D7FE72A0(v6);
    if (*(v18 + 16) && (v8 = sub_1D7E7E198(at), (v9 & 1) != 0))
    {
      v10 = (*(v18 + 56) + 32 * v8);
      v13 = v10[1];
      v14 = *v10;
      sub_1D7EAF9D8(v17, v15);
    }

    else
    {
      sub_1D7EAF9D8(v17, v15);
      v13 = 0;
      v14 = 0;
    }

    sub_1D7E598FC(v16);
    sub_1D7EAFC0C(v17);
    v12 = v13;
    v11 = v14;
  }

  else
  {

    v11 = 0;
    v12 = 0;
  }

  retstr->value.origin = v11;
  retstr->value.size = v12;
  retstr->is_nil = v7 == 0;
}

void UICollectionView.scroll(to:animated:)(uint64_t a1, char a2)
{
  v3 = v2;
  if (sub_1D7FE6C98(a1))
  {
    v5 = [v2 collectionViewLayout];
    sub_1D7FE8288(0);
    if (swift_dynamicCastClass())
    {
      sub_1D818F154();
      memcpy(__dst, __src, sizeof(__dst));
      sub_1D7E598FC(__dst);
      v6 = __dst[16];
      v7 = sub_1D818E8E4();
      if (v6)
      {
        v8 = 2;
      }

      else
      {
        v8 = 16;
      }

      [v3 scrollToItemAtIndexPath:v7 atScrollPosition:v8 animated:a2 & 1];
    }

    else
    {

      v9 = sub_1D818E8E4();
      [v2 scrollToItemAtIndexPath:v9 atScrollPosition:2 animated:a2 & 1];
    }
  }
}

BOOL sub_1D7FE6C98(uint64_t a1)
{
  result = 0;
  if ((sub_1D818E974() & 0x8000000000000000) == 0)
  {
    v2 = sub_1D818E974();
    if (v2 < [v1 numberOfSections] && (sub_1D818E964() & 0x8000000000000000) == 0)
    {
      v3 = sub_1D818E964();
      if (v3 < [v1 numberOfItemsInSection_])
      {
        return 1;
      }
    }
  }

  return result;
}

void UICollectionView.snap(to:direction:animated:)(uint64_t a1, unsigned __int8 *a2, char a3)
{
  v5 = *a2;
  if (sub_1D7FE6C98(a1))
  {
    v6 = sub_1D818E8E4();
    v8 = v6;
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = 8;
    }

    [v3 scrollToItemAtIndexPath:v6 atScrollPosition:v7 animated:a3 & 1];
  }
}

Swift::Void __swiftcall UICollectionView.setEditing(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  if (animated)
  {

    [v2 setEditing_];
  }

  else
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = _;
    OUTLINED_FUNCTION_0_32();
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1D7FE82E8;
    *(v6 + 24) = v5;
    v10[4] = sub_1D7EA8F68;
    v10[5] = v6;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1D7E74D74;
    v10[3] = &block_descriptor_25_1;
    v7 = _Block_copy(v10);
    v8 = v2;

    [v4 performWithoutAnimation_];
    _Block_release(v7);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D7FE6F98@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 indexPathForItemAtPoint_];
  if (v3)
  {
    v4 = v3;
    sub_1D818E924();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D818E994();

  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v6);
}

double sub_1D7FE7018@<D0>(uint64_t a1@<X8>)
{
  UICollectionView.frame(at:)(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

CGFloat sub_1D7FE705C@<D0>(Swift::Int a1@<X0>, uint64_t a2@<X8>)
{
  UICollectionView.sectionFrame(at:)(&v5, a1);
  result = v5.value.origin.x;
  size = v5.value.size;
  *a2 = v5.value.origin;
  *(a2 + 16) = size;
  *(a2 + 32) = v5.is_nil;
  return result;
}

id (*sub_1D7FE7114(uint64_t a1))(void **a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 allowsMultipleSelection];
  return sub_1D7FE7168;
}

id (*sub_1D7FE71BC(uint64_t a1))(void **a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 allowsSelection];
  return sub_1D7FE7210;
}

void sub_1D7FE722C(uint64_t a1, char a2)
{
  v4 = sub_1D818E8E4();
  [v2 deselectItemAtIndexPath:v4 animated:a2 & 1];
}

uint64_t sub_1D7FE72A0(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x90);
  memcpy(__dst, v1 + v5, sizeof(__dst));
  memcpy(v11, v1 + v5, 0x4E8uLL);
  if (sub_1D7E67500(v11) == 1)
  {
    v6 = *((*v4 & *v1) + 0x98);
    memcpy(v9, v1 + v6, sizeof(v9));
    memcpy(v3, v1 + v6, 0x4E8uLL);
    sub_1D7E6755C(v9, v8);
  }

  else
  {
    memcpy(v3, __dst, 0x4E8uLL);
  }

  return sub_1D7E9A440(__dst, v9, sub_1D7E54FF4);
}

uint64_t sub_1D7FE73EC(uint64_t result, uint64_t (*a2)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      a2(0);
      result = sub_1D81913D4();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v2;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1D7FE7460(uint64_t result, unint64_t *a2, void *a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      sub_1D7E0A1A8(0, a2, a3);
      result = sub_1D81913D4();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v3;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

void sub_1D7FE74E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v26 = a5;
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = a1 - a3;
    while (2)
    {
      v9 = *(v6 + 8 * v5);
      v10 = v8;
      v11 = v7;
      do
      {
        v12 = *v11;
        v13 = v9;
        v14 = v12;
        [v13 frame];
        v29 = v15;
        v30 = v16;
        [v14 frame];
        v27 = v17;
        v28 = v18;

        v19.f64[0] = v29;
        v20.f64[0] = v30;
        v19.f64[1] = v27;
        v20.f64[1] = v28;
        v21 = vsubq_f64(0, v19);
        v22 = vsubq_f64(0, v20);
        v23 = vsqrtq_f64(vaddq_f64(vmulq_f64(v21, v21), vmulq_f64(v22, v22)));
        if (vmovn_s64(vmvnq_s8(vcgeq_f64(vdupq_laneq_s64(v23, 1), v23))).u32[0])
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return;
        }

        v24 = *v11;
        v9 = *(v11 + 8);
        *v11 = v9;
        *(v11 + 8) = v24;
        v11 -= 8;
      }

      while (!__CFADD__(v10++, 1));
      ++v5;
      v7 += 8;
      --v8;
      if (v5 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1D7FE761C(double *a1, uint64_t a2, double *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = *(a3 + 1);
  v138 = a5;
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v143 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    v144 = v138;
    v137.i64[0] = v6;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_94:
      v123 = v10 + 2;
      v122 = v10[2];
      for (i = v10; ; v10 = i)
      {
        if (v122 < 2)
        {

          return;
        }

        v124 = *a3;
        if (!*a3)
        {
          goto LABEL_132;
        }

        v125 = &v10[2 * v122];
        v126 = *v125;
        v10 = v123;
        v127 = &v123[2 * v122];
        v128 = *(v127 + 1);
        v129 = (v124 + 8 * *v125);
        v154 = (v124 + 8 * *v127);
        v149 = (v124 + 8 * v128);
        v130 = v144;
        sub_1D7FE7E4C(v129, v154, v149, v143, v130);
        if (v137.i64[0])
        {
          break;
        }

        if (v128 < v126)
        {
          goto LABEL_120;
        }

        if (v122 - 2 >= *v10)
        {
          goto LABEL_121;
        }

        v123 = v10;
        *v125 = v126;
        v125[1] = v128;
        v131 = *v10 - v122;
        if (*v10 < v122)
        {
          goto LABEL_122;
        }

        v122 = *v10 - 1;
        sub_1D8120818(v127 + 16, v131, v127);
        *v10 = v122;
      }

LABEL_104:
      return;
    }

LABEL_129:
    v10 = sub_1D8120804(v10);
    goto LABEL_94;
  }

  v132 = a4;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v139 = v10;
      v13 = (*a3 + 8 * v9);
      v10 = (8 * v9);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = *(*a3 + 8 * v12);
      v17 = v12;
      v18 = v15;
      [v16 frame];
      v145 = v19;
      v150 = v20;
      [v18 frame];
      v143 = v21;
      v144 = v22;

      v12 = v17;
      v23.f64[0] = v145;
      *&v23.f64[1] = v143;
      v24.f64[0] = v150;
      *&v24.f64[1] = v144;
      v25 = vsubq_f64(0, v23);
      v26 = vsubq_f64(0, v24);
      v27 = vsqrtq_f64(vaddq_f64(vmulq_f64(v25, v25), vmulq_f64(v26, v26)));
      v137 = vcgeq_f64(vdupq_laneq_s64(v27, 1), v27);
      v135 = vmovn_s64(v137).u8[0];
      v28 = v11 + 2;
      while (1)
      {
        v29 = v28;
        v30 = v12 + 1;
        if (v30 >= v8)
        {
          break;
        }

        v31 = *(v14 - 1);
        v32 = *v14;
        v33 = v31;
        v34 = v30;
        v35 = v33;
        [v32 frame];
        v146 = v36;
        v151 = v37;
        [v35 frame];
        v143 = v38;
        v144 = v39;

        v12 = v34;
        v40.f64[0] = v146;
        *&v40.f64[1] = v143;
        v41 = vsubq_f64(0, v40);
        v42.f64[0] = v151;
        *&v42.f64[1] = v144;
        v43 = vsubq_f64(0, v42);
        v44 = vsqrtq_f64(vaddq_f64(vmulq_f64(v41, v41), vmulq_f64(v43, v43)));
        ++v14;
        v28 = v29 + 1;
        if ((vmovn_s64(vmvnq_s8(veorq_s8(vcgeq_f64(vdupq_laneq_s64(v44, 1), v44), v137))).u8[0] & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v12 = v8;
LABEL_9:
      if (v135)
      {
        if (v12 < v11)
        {
          goto LABEL_126;
        }

        if (v11 < v12)
        {
          if (v8 >= v29)
          {
            v45 = v29;
          }

          else
          {
            v45 = v8;
          }

          v46 = 8 * v45 - 8;
          v47 = v12;
          v48 = v11;
          do
          {
            if (v48 != --v47)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v50 = *(v10 + v49);
              *(v10 + v49) = *(v49 + v46);
              *(v49 + v46) = v50;
            }

            v48 = (v48 + 1);
            v46 -= 8;
            ++v10;
          }

          while (v48 < v47);
        }

        v10 = v139;
      }

      else
      {
        v10 = v139;
      }
    }

    v51 = *(a3 + 1);
    if (v12 < v51)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_125;
      }

      if (v12 - v11 < v132)
      {
        break;
      }
    }

LABEL_38:
    if (v12 < v11)
    {
      goto LABEL_124;
    }

    v143 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D7EE4840();
      v10 = v120;
    }

    v74 = v10[2];
    v75 = v74 + 1;
    if (v74 >= v10[3] >> 1)
    {
      sub_1D7EE4840();
      v10 = v121;
    }

    v10[2] = v75;
    v76 = v10 + 4;
    v77 = &v10[2 * v74 + 4];
    *v77 = v11;
    v77[1] = v143;
    v148 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    if (v74)
    {
      v141 = v10;
      v144 = v10 + 4;
      while (1)
      {
        v78 = v75 - 1;
        v79 = &v76[2 * v75 - 2];
        v80 = &v10[2 * v75];
        if (v75 >= 4)
        {
          break;
        }

        if (v75 == 3)
        {
          v81 = v10[4];
          v82 = v10[5];
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_59:
          if (v84)
          {
            goto LABEL_111;
          }

          v96 = *v80;
          v95 = v80[1];
          v97 = __OFSUB__(v95, v96);
          v98 = v95 - v96;
          v99 = v97;
          if (v97)
          {
            goto LABEL_114;
          }

          v100 = v79[1];
          v101 = v100 - *v79;
          if (__OFSUB__(v100, *v79))
          {
            goto LABEL_117;
          }

          if (__OFADD__(v98, v101))
          {
            goto LABEL_119;
          }

          if (v98 + v101 >= v83)
          {
            if (v83 < v101)
            {
              v78 = v75 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v75 < 2)
        {
          goto LABEL_113;
        }

        v103 = *v80;
        v102 = v80[1];
        v91 = __OFSUB__(v102, v103);
        v98 = v102 - v103;
        v99 = v91;
LABEL_74:
        if (v99)
        {
          goto LABEL_116;
        }

        v105 = *v79;
        v104 = v79[1];
        v91 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v91)
        {
          goto LABEL_118;
        }

        if (v106 < v98)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v78 - 1 >= v75)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
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
          goto LABEL_128;
        }

        v110 = *a3;
        if (!*a3)
        {
          goto LABEL_131;
        }

        v111 = &v76[2 * v78 - 2];
        v112 = *v111;
        v113 = v78;
        v114 = &v76[2 * v78];
        v115 = *(v114 + 1);
        v116 = (v110 + 8 * *v111);
        v117 = (v110 + 8 * *v114);
        v153 = (v110 + 8 * v115);
        v118 = v138;
        sub_1D7FE7E4C(v116, v117, v153, v148, v118);
        if (v6)
        {

          goto LABEL_104;
        }

        v10 = v141;
        if (v115 < v112)
        {
          goto LABEL_106;
        }

        v119 = v141[2];
        if (v113 > v119)
        {
          goto LABEL_107;
        }

        *v111 = v112;
        v111[1] = v115;
        if (v113 >= v119)
        {
          goto LABEL_108;
        }

        v75 = v119 - 1;
        sub_1D8120818(v114 + 16, v119 - 1 - v113, v114);
        v141[2] = v119 - 1;
        v76 = v144;
        if (v119 <= 2)
        {
          goto LABEL_88;
        }
      }

      v85 = &v76[2 * v75];
      v86 = *(v85 - 8);
      v87 = *(v85 - 7);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_109;
      }

      v90 = *(v85 - 6);
      v89 = *(v85 - 5);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_110;
      }

      v92 = v80[1];
      v93 = v92 - *v80;
      if (__OFSUB__(v92, *v80))
      {
        goto LABEL_112;
      }

      v91 = __OFADD__(v83, v93);
      v94 = v83 + v93;
      if (v91)
      {
        goto LABEL_115;
      }

      if (v94 >= v88)
      {
        v108 = *v79;
        v107 = v79[1];
        v91 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v91)
        {
          goto LABEL_123;
        }

        if (v83 < v109)
        {
          v78 = v75 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v8 = *(a3 + 1);
    v9 = v143;
    if (v143 >= v8)
    {
      goto LABEL_92;
    }
  }

  v52 = v11 + v132;
  if (__OFADD__(v11, v132))
  {
    goto LABEL_127;
  }

  if (v52 >= v51)
  {
    v52 = *(a3 + 1);
  }

  if (v52 < v11)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  if (v12 == v52)
  {
    goto LABEL_38;
  }

  v140 = v10;
  v137.i64[0] = v6;
  v53 = *a3;
  v54 = *a3 + 8 * v12 - 8;
  v133 = v11;
  v55 = v11 - v12;
  v136 = v52;
LABEL_31:
  v56 = v12;
  v57 = *(v53 + 8 * v12);
  v58 = v55;
  v59 = v54;
  while (1)
  {
    v60 = *v59;
    v61 = v57;
    v62 = v60;
    [v61 frame];
    v147 = v63;
    v152 = v64;
    [v62 frame];
    v143 = v65;
    v144 = v66;

    v67.f64[0] = v147;
    *&v67.f64[1] = v143;
    v68.f64[0] = v152;
    *&v68.f64[1] = v144;
    v69 = vsubq_f64(0, v67);
    v70 = vsubq_f64(0, v68);
    v71 = vsqrtq_f64(vaddq_f64(vmulq_f64(v69, v69), vmulq_f64(v70, v70)));
    if (vmovn_s64(vmvnq_s8(vcgeq_f64(vdupq_laneq_s64(v71, 1), v71))).u8[0])
    {
LABEL_36:
      v12 = v56 + 1;
      v54 += 8;
      --v55;
      if (v56 + 1 == v136)
      {
        v12 = v136;
        v6 = v137.i64[0];
        v10 = v140;
        v11 = v133;
        goto LABEL_38;
      }

      goto LABEL_31;
    }

    if (!v53)
    {
      break;
    }

    v72 = *v59;
    v57 = *(v59 + 8);
    *v59 = v57;
    *(v59 + 8) = v72;
    v59 -= 8;
    if (__CFADD__(v58++, 1))
    {
      goto LABEL_36;
    }
  }

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
}

uint64_t sub_1D7FE7E4C(char *a1, id *a2, id *a3, void **a4, void *a5)
{
  v49 = a5;
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 8;
  v10 = a3 - a2;
  if (v9 < v10)
  {
    sub_1D80E75B8(a1, (a2 - a1) / 8, a4);
    v12 = &v5[v9];
    while (1)
    {
      if (v5 >= v12 || v7 >= a3)
      {
        v7 = v8;
        goto LABEL_28;
      }

      v14 = *v5;
      v15 = *v7;
      v16 = v14;
      [v15 frame];
      v54 = v17;
      v56 = v18;
      [v16 frame];
      v50 = v19;
      v52 = v20;

      v21.f64[0] = v54;
      v22.f64[0] = v56;
      v21.f64[1] = v50;
      v22.f64[1] = v52;
      v23 = vsubq_f64(0, v21);
      v24 = vsubq_f64(0, v22);
      v25 = vsqrtq_f64(vaddq_f64(vmulq_f64(v23, v23), vmulq_f64(v24, v24)));
      if ((vmovn_s64(vmvnq_s8(vcgeq_f64(vdupq_laneq_s64(v25, 1), v25))).u8[0] & 1) == 0)
      {
        break;
      }

      v26 = v5;
      v27 = v8 == v5++;
      if (!v27)
      {
        goto LABEL_12;
      }

LABEL_13:
      v8 += 8;
    }

    v26 = v7;
    v27 = v8 == v7++;
    if (v27)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v26;
    goto LABEL_13;
  }

  sub_1D80E75B8(a2, a3 - a2, a4);
  v12 = &v5[v10];
  v58 = v5;
LABEL_15:
  v28 = v7 - 1;
  --v6;
  while (v12 > v5 && v7 > v8)
  {
    v30 = v7;
    v31 = v8;
    v32 = v28;
    v33 = *v28;
    v34 = *(v12 - 1);
    v35 = v33;
    [v34 frame];
    v55 = v36;
    v57 = v37;
    [v35 frame];
    v51 = v38;
    v53 = v39;

    v40.f64[0] = v55;
    v41.f64[0] = v57;
    v40.f64[1] = v51;
    v41.f64[1] = v53;
    v42 = vsubq_f64(0, v40);
    v43 = vsubq_f64(0, v41);
    v44 = vsqrtq_f64(vaddq_f64(vmulq_f64(v42, v42), vmulq_f64(v43, v43)));
    if ((vmovn_s64(vmvnq_s8(vcgeq_f64(vdupq_laneq_s64(v44, 1), v44))).u8[0] & 1) == 0)
    {
      v45 = v32;
      v7 = v32;
      v8 = v31;
      v5 = v58;
      if (v6 + 1 != v30)
      {
        *v6 = *v45;
        v7 = v45;
      }

      goto LABEL_15;
    }

    if (v12 != v6 + 1)
    {
      *v6 = *(v12 - 1);
    }

    --v6;
    --v12;
    v28 = v32;
    v8 = v31;
    v5 = v58;
  }

LABEL_28:
  v46 = v12 - v5;
  if (v7 != v5 || v7 >= &v5[v46])
  {
    memmove(v7, v5, 8 * v46);
  }

  return 1;
}

unint64_t sub_1D7FE814C()
{
  result = qword_1EDBB8CA0;
  if (!qword_1EDBB8CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB8CA0);
  }

  return result;
}

uint64_t sub_1D7FE81A0(uint64_t a1)
{
  sub_1D7E96ACC(0, &qword_1ECA0F068, sub_1D7FE8218);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D7FE8218()
{
  result = qword_1ECA0F070;
  if (!qword_1ECA0F070)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECA0F070);
  }

  return result;
}

void sub_1D7FE8288(uint64_t a1)
{
  if (!qword_1EDBAFA68)
  {
    v2 = type metadata accessor for BlueprintLayoutCollectionProvider();
    v4 = type metadata accessor for BlueprintCollectionViewLayout(a1, v2, &protocol witness table for BlueprintLayoutCollectionProvider, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EDBAFA68);
    }
  }
}

void (*sub_1D7FE82FC(void *a1))()
{
  if (UITableView.blueprintViewDataSource.getter())
  {
    v3 = v2;
    v4 = sub_1D8172CA8(a1);
    if (v4)
    {
      v5 = v4;
      ObjectType = swift_getObjectType();
      v7 = (*(v3 + 72))(v5, ObjectType, v3);

      OUTLINED_FUNCTION_0_32();
      v8 = swift_allocObject();
      *(v8 + 24) = &protocol witness table for UITableView;
      swift_unknownObjectWeakInit();

      OUTLINED_FUNCTION_0_32();
      v9 = swift_allocObject();
      *(v9 + 24) = v3;
      swift_unknownObjectWeakInit();
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_1_63();
      v10 = swift_allocObject();
      v10[2] = v8;
      v10[3] = v9;
      v10[4] = v7;
      return sub_1D7E93428;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t objectdestroy_60Tm()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D7FE84DC(uint64_t a1)
{
  sub_1D7E98BE0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t KeyboardObserver.__allocating_init()()
{
  v0 = swift_allocObject();
  KeyboardObserver.init()();
  return v0;
}

double KeyboardObserver.onWillHide(animationBlock:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);
  v4 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  OUTLINED_FUNCTION_1_79(v5, v4);

  return result;
}

double KeyboardObserver.onShow(animationBlock:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v4 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  OUTLINED_FUNCTION_1_79(v5, v4);

  return result;
}

double KeyboardObserver.onDidShow(animationBlock:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v4 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  OUTLINED_FUNCTION_1_79(v5, v4);

  return result;
}

double KeyboardObserver.onHide(animationBlock:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v4 = *(v2 + 88);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  OUTLINED_FUNCTION_1_79(v5, v4);

  return result;
}

uint64_t *KeyboardObserver.deinit()
{
  sub_1D7E0E10C(v0[2], v0[3]);
  sub_1D7E0E10C(v0[4], v0[5]);
  sub_1D7E0E10C(v0[6], v0[7]);
  sub_1D7E0E10C(v0[8], v0[9]);
  sub_1D7E0E10C(v0[10], v0[11]);
  sub_1D7E0E10C(v0[12], v0[13]);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t KeyboardObserver.__deallocating_deinit()
{
  KeyboardObserver.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D7FE8734(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1D7FE8774(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7FE8838()
{
  OUTLINED_FUNCTION_0_100();
  v0 = OUTLINED_FUNCTION_2_68();

  return sub_1D7E0E10C(v0, v1);
}

void sub_1D7FE8894(void *a1, void (*a2)(uint64_t, double), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!sub_1D7FE8F18(a1))
  {
    return;
  }

  v46 = sub_1D8190F14();
  v47 = v14;
  sub_1D8192124();
  sub_1D7EDF46C();
  sub_1D7F060D8(&aBlock);
  if (*(&v49 + 1))
  {
    sub_1D7E0A1A8(0, &unk_1EDBAE440, 0x1E696B098);
    if (swift_dynamicCast())
    {
      v15 = v46;
      [v46 CGRectValue];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v24 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    sub_1D7E7BAAC(&v48);
  }

  v24 = 1;
  v17 = 0.0;
  v19 = 0.0;
  v21 = 0.0;
  v23 = 0.0;
LABEL_7:
  v46 = sub_1D8190F14();
  v47 = v25;
  sub_1D8192124();
  sub_1D7EDF46C();
  sub_1D7F060D8(&aBlock);
  if (*(&v49 + 1))
  {
    sub_1D7E0A1A8(0, &qword_1EDBAE430, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v26 = v46;
      [v46 doubleValue];
      v28 = v27;

      goto LABEL_12;
    }
  }

  else
  {
    sub_1D7E7BAAC(&v48);
  }

  v28 = 0.0;
LABEL_12:
  v46 = sub_1D8190F14();
  v47 = v29;
  sub_1D8192124();
  sub_1D7EDF46C();

  sub_1D7F060D8(&aBlock);
  if (!*(&v49 + 1))
  {
    sub_1D7E7BAAC(&v48);
    goto LABEL_16;
  }

  sub_1D7E0A1A8(0, &qword_1EDBAE430, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v41 = 0;
    v30 = 0;
    goto LABEL_17;
  }

  v30 = v46;
  v41 = [v46 unsignedIntegerValue];
LABEL_17:
  Height = 0.0;
  if (v24)
  {
    goto LABEL_25;
  }

  v50.origin.x = v17;
  v50.origin.y = v19;
  v50.size.width = v21;
  v50.size.height = v23;
  Height = CGRectGetHeight(v50);
  if ([a1 object])
  {
    sub_1D8191F34();
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  aBlock = v48;
  v43 = v49;
  if (!*(&v49 + 1))
  {
    sub_1D7E7BAAC(&aBlock);
    goto LABEL_25;
  }

  sub_1D7E0A1A8(0, qword_1ECA0F078, 0x1E69DCEB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    v32 = a6;
    *(v7 + 112) = 0u;
    *(v7 + 128) = 0u;
    *(v7 + 144) = 0u;
    goto LABEL_26;
  }

  v32 = a6;
  v33 = v46;
  v34 = [v46 coordinateSpace];

  *(v7 + 112) = v17;
  *(v7 + 120) = v19;
  *(v7 + 128) = v21;
  *(v7 + 136) = v23;
  *(v7 + 144) = Height;
  *(v7 + 152) = v34;
LABEL_26:
  v35 = swift_unknownObjectRelease();
  if (a2)
  {
    a2(v35, Height);
  }

  v36 = objc_opt_self();
  v37 = swift_allocObject();
  *(v37 + 2) = a4;
  *(v37 + 3) = a5;
  v37[4] = Height;
  v44 = sub_1D7FE8F84;
  v45 = v37;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v43 = sub_1D7E64940;
  *(&v43 + 1) = &block_descriptor_34;
  v38 = _Block_copy(&aBlock);
  sub_1D7E38808(a4, a5);

  v39 = swift_allocObject();
  *(v39 + 2) = v32;
  *(v39 + 3) = a7;
  v39[4] = Height;
  v44 = sub_1D7FE8F84;
  v45 = v39;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v43 = sub_1D7EB30D4;
  *(&v43 + 1) = &block_descriptor_8;
  v40 = _Block_copy(&aBlock);
  sub_1D7E38808(v32, a7);

  [v36 animateWithDuration:v41 delay:v38 options:v40 animations:v28 completion:0.0];
  _Block_release(v40);
  _Block_release(v38);
}