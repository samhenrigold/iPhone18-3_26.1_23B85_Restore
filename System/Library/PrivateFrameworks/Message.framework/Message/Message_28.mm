uint64_t sub_1B08DFD34()
{
  v1 = sub_1B0E439A8();
  __swift_allocate_value_buffer(v1, qword_1EB6E2D20);
  __swift_project_value_buffer(v1, qword_1EB6E2D20);
  sub_1B0E44838();
  sub_1B0E44838();
  return sub_1B0E43998();
}

uint64_t sub_1B08DFDD8()
{
  if (qword_1EB6E0B58 != -1)
  {
    swift_once();
  }

  v0 = sub_1B0E439A8();
  return __swift_project_value_buffer(v0, qword_1EB6E2D20);
}

uint64_t sub_1B08DFE44()
{
  v2 = *(v0 + OBJC_IVAR___MFNanoServerFullMessageLoader2_implementation);

  return v2;
}

id sub_1B08DFE84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCallbackQueue:a1 mailMessageLibrary:a2 legacyLoader:a3];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  return v6;
}

id sub_1B08DFF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  v11 = a1;
  v10 = a2;
  v9 = a3;
  _s14ImplementationCMa_0();
  MEMORY[0x1E69E5928](a1);
  MEMORY[0x1E69E5928](a2);
  swift_unknownObjectRetain();
  *OBJC_IVAR___MFNanoServerFullMessageLoader2_implementation = sub_1B08E0050(a1, a2, a3);
  v8.receiver = v12;
  v8.super_class = MFNanoServerFullMessageLoader2;
  v7 = objc_msgSendSuper2(&v8, sel_init);
  MEMORY[0x1E69E5928](v7);
  v12 = v7;
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v12);
  return v7;
}

uint64_t sub_1B08E0120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v19 = a2;
  v20 = a3;
  v21 = sub_1B08E427C;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v23 = 0;
  v27 = sub_1B0E44238();
  v24 = *(v27 - 8);
  v25 = v27 - 8;
  v15 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v26 = &v14 - v15;
  v31 = sub_1B0E44288();
  v28 = *(v31 - 8);
  v29 = v31 - 8;
  v16 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v30 = &v14 - v16;
  v44 = v4;
  v42 = v5;
  v43 = v6;
  v41 = v3;
  v17 = *(v3 + OBJC_IVAR___MFNanoServerFullMessageLoader2_implementation);

  v33 = *(v17 + 16);
  MEMORY[0x1E69E5928](v33);

  MEMORY[0x1E69E5928](v18);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  v7 = swift_allocObject();
  v8 = v19;
  v9 = v20;
  v10 = v21;
  v11 = v7;
  v12 = v22;
  v11[2] = v18;
  v11[3] = v12;
  v11[4] = v8;
  v11[5] = v9;
  v39 = v10;
  v40 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = 0;
  v37 = sub_1B038C908;
  v38 = &block_descriptor_11;
  v32 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v23, v30, v26, v32);
  (*(v24 + 8))(v26, v27);
  (*(v28 + 8))(v30, v31);
  _Block_release(v32);

  return MEMORY[0x1E69E5920](v33);
}

uint64_t sub_1B08E046C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v22 = sub_1B08E0960;
  v23 = sub_1B08E430C;
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v24 = 0;
  v36 = 0;
  v33 = sub_1B0E44468();
  v31 = *(v33 - 8);
  v32 = v33 - 8;
  v28 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v34 = (v16 - v28);
  v42 = v4;
  v40 = v5;
  v41 = v6;
  v39 = v3;
  MEMORY[0x1E69E5928](v3);
  v29 = *(v3 + OBJC_IVAR___MFNanoServerFullMessageLoader2_implementation);

  v30 = *(v29 + 16);
  MEMORY[0x1E69E5928](v30);

  v7 = v31;
  *v34 = v30;
  (*(v7 + 104))();
  v35 = sub_1B0E44488();
  (*(v31 + 8))(v34, v33);
  result = v35;
  if (v35)
  {
    v9 = v24;
    MEMORY[0x1E69E5920](v21);
    v37[1] = v27;
    sub_1B08E4290();
    v10 = sub_1B0E44588();
    v20 = v37;
    v37[0] = v10;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
    sub_1B06E3764();
    result = sub_1B0E44FD8();
    if (!v9)
    {
      v17 = v38;
      v36 = v38;
      v16[2] = *(v21 + OBJC_IVAR___MFNanoServerFullMessageLoader2_implementation);

      v11 = swift_allocObject();
      v12 = v25;
      v13 = v23;
      v14 = v11;
      v15 = v17;
      v16[1] = v14;
      *(v14 + 16) = v26;
      *(v14 + 24) = v12;
      sub_1B08E0FC0(v15, v13, v14);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B08E087C(uint64_t a1, char a2, uint64_t a3)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D50, &qword_1B0EA0350);
    v5 = sub_1B0E44598();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v3 = sub_1B0E43368();
  (*(a3 + 16))(a3, v6, v3 & 1);
  return MEMORY[0x1E69E5920](v6);
}

uint64_t sub_1B08E0960(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B08E0A0C(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
  sub_1B0E454D8();
}

void sub_1B08E0A0C(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v9 = a2;
  v11 = 0;
  v10 = sub_1B08F3314;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v18 = 0;
  v19 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080);
  v6 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v7 = v4 - v6;
  v18 = v2;
  v19 = v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20 = v8;
  v21 = v9;
  sub_1B0E42E38();
  sub_1B039A570(v10, v11, v12, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7360], v13, &v16);
  sub_1B06E3800(v7);
  v14 = v16;
  v15 = v17 & 1;
  if (v17)
  {
    v5 = 0;
  }

  else
  {
    v5 = v14;
  }

  v4[1] = v5;
  v4[0] = &v20;
  v22 = v5;

  sub_1B03B1198(v4[0]);
}

uint64_t sub_1B08E0BDC(uint64_t a1, void (*a2)(uint64_t, uint64_t, __n128), uint64_t a3)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D50, &qword_1B0EA0350);
  v3 = sub_1B08E4290();
  if (MEMORY[0x1B27267E0](a1, &unk_1F26DF238, v11, v3))
  {

    (a2)(0, 0);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2DA8, &qword_1B0EA0380);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2ED0, &qword_1B0EA05F8);
    v5 = sub_1B08F6650();
    sub_1B039CA88(sub_1B08E0E18, 0, v7, v8, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2EE0, &qword_1B0EA0600);
    sub_1B08F66D8();
    v6 = sub_1B0E44718();

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    (a2)(v6, 1);
  }
}

uint64_t sub_1B08E0E18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v7 = a1[1];
  v9 = a1[3];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_unknownObjectRetain();
  v5 = sub_1B08E0EE8(v4, v7);
  v6 = v2;
  swift_unknownObjectRelease();
  *a2 = v5;
  a2[1] = v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_unknownObjectRetain();
  a2[2] = v9;
}

uint64_t sub_1B08E0EE8(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = a1;
  v6 = a2;

  sub_1B03B1198(&v5);
  return a1;
}

uint64_t sub_1B08E0F74@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v4 = *a1;
  result = swift_unknownObjectRetain();
  *a2 = v4;
  return result;
}

uint64_t sub_1B08E0FC0(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v123 = a1;
  v122 = a2;
  v121 = a3;
  v99 = sub_1B070B278;
  v100 = sub_1B039BC08;
  v101 = sub_1B08F362C;
  v102 = sub_1B03B0DF8;
  v103 = sub_1B08F362C;
  v104 = sub_1B03B0DF8;
  v105 = sub_1B0398F5C;
  v106 = sub_1B0398F5C;
  v107 = sub_1B03991EC;
  v108 = sub_1B0398F5C;
  v109 = sub_1B0398F5C;
  v110 = sub_1B0399260;
  v111 = sub_1B0398F5C;
  v112 = sub_1B0398F5C;
  v113 = sub_1B0399260;
  v144 = 0;
  v142 = 0;
  v143 = 0;
  v141 = 0;
  v139 = 0;
  v137 = 0;
  v114 = 0;
  v115 = 0;
  v116 = sub_1B0E439A8();
  v117 = *(v116 - 8);
  v118 = v116 - 8;
  v119 = (*(v117 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v120 = v44 - v119;
  v128 = sub_1B0E44468();
  v126 = *(v128 - 8);
  v127 = v128 - 8;
  v124 = (*(v126 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v123);
  v129 = (v44 - v124);
  v144 = v4;
  v142 = v5;
  v143 = v6;
  v141 = v3;

  v125 = *(v3 + 16);
  MEMORY[0x1E69E5928](v125);
  v7 = v126;
  *v129 = v125;
  (*(v7 + 104))();
  v130 = sub_1B0E44488();
  (*(v126 + 8))(v129, v128);
  result = v130;
  if (v130)
  {

    v97 = sub_1B08E4290();
    if (sub_1B0E454F8())
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D48, &qword_1B0EA0348);
      v44[0] = sub_1B0E46A48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D50, &qword_1B0EA0350);
      v44[1] = sub_1B0E445D8();
      v122();
    }

    else
    {
      v62 = v140;
      v63 = 0;
      swift_beginAccess();
      v9 = sub_1B08E443C(v123, v122, v121);
      v10 = v120;
      v70 = v9;
      swift_endAccess();
      v139 = v70;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v64 = v138;
      v79 = 32;
      swift_beginAccess();
      v66 = *(v98 + 40);
      v67 = *(v98 + 48);
      v68 = *(v98 + 56);
      v65 = *(v98 + 64);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      swift_endAccess();
      v69 = sub_1B08EBE30(v66, v67, v68, v65);

      v71 = sub_1B0E45418();

      v137 = v71;
      v11 = sub_1B08DFDD8();
      (*(v117 + 16))(v10, v11, v116);
      v80 = 7;
      v73 = swift_allocObject();
      *(v73 + 16) = v70;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v72 = 24;
      v75 = swift_allocObject();
      *(v75 + 16) = v71;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v81 = swift_allocObject();
      *(v81 + 16) = v123;
      v95 = sub_1B0E43988();
      v96 = sub_1B0E45908();
      v77 = 17;
      v83 = swift_allocObject();
      *(v83 + 16) = 0;
      v84 = swift_allocObject();
      *(v84 + 16) = 4;
      v12 = swift_allocObject();
      v13 = v73;
      v74 = v12;
      *(v12 + 16) = v99;
      *(v12 + 24) = v13;
      v14 = swift_allocObject();
      v15 = v74;
      v85 = v14;
      *(v14 + 16) = v100;
      *(v14 + 24) = v15;
      v86 = swift_allocObject();
      *(v86 + 16) = 0;
      v87 = swift_allocObject();
      v78 = 8;
      *(v87 + 16) = 8;
      v16 = swift_allocObject();
      v17 = v75;
      v76 = v16;
      *(v16 + 16) = v101;
      *(v16 + 24) = v17;
      v18 = swift_allocObject();
      v19 = v76;
      v88 = v18;
      *(v18 + 16) = v102;
      *(v18 + 24) = v19;
      v89 = swift_allocObject();
      *(v89 + 16) = 0;
      v90 = swift_allocObject();
      *(v90 + 16) = v78;
      v20 = swift_allocObject();
      v21 = v81;
      v82 = v20;
      *(v20 + 16) = v103;
      *(v20 + 24) = v21;
      v22 = swift_allocObject();
      v23 = v82;
      v92 = v22;
      *(v22 + 16) = v104;
      *(v22 + 24) = v23;
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v91 = sub_1B0E46A48();
      v93 = v24;

      v25 = v83;
      v26 = v93;
      *v93 = v105;
      v26[1] = v25;

      v27 = v84;
      v28 = v93;
      v93[2] = v106;
      v28[3] = v27;

      v29 = v85;
      v30 = v93;
      v93[4] = v107;
      v30[5] = v29;

      v31 = v86;
      v32 = v93;
      v93[6] = v108;
      v32[7] = v31;

      v33 = v87;
      v34 = v93;
      v93[8] = v109;
      v34[9] = v33;

      v35 = v88;
      v36 = v93;
      v93[10] = v110;
      v36[11] = v35;

      v37 = v89;
      v38 = v93;
      v93[12] = v111;
      v38[13] = v37;

      v39 = v90;
      v40 = v93;
      v93[14] = v112;
      v40[15] = v39;

      v41 = v92;
      v42 = v93;
      v93[16] = v113;
      v42[17] = v41;
      sub_1B0394964();

      if (os_log_type_enabled(v95, v96))
      {
        v43 = v114;
        v55 = sub_1B0E45D78();
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v54 = 0;
        v56 = sub_1B03949A8(0, v53, v53);
        v57 = sub_1B03949A8(v54, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v58 = &v135;
        v135 = v55;
        v59 = &v134;
        v134 = v56;
        v60 = &v133;
        v133 = v57;
        sub_1B0394A48(0, &v135);
        sub_1B0394A48(3, v58);
        v131 = v105;
        v132 = v83;
        sub_1B03949FC(&v131, v58, v59, v60);
        v61 = v43;
        if (v43)
        {

          __break(1u);
        }

        else
        {
          v131 = v106;
          v132 = v84;
          sub_1B03949FC(&v131, &v135, &v134, &v133);
          v52 = 0;
          v131 = v107;
          v132 = v85;
          sub_1B03949FC(&v131, &v135, &v134, &v133);
          v51 = 0;
          v131 = v108;
          v132 = v86;
          sub_1B03949FC(&v131, &v135, &v134, &v133);
          v50 = 0;
          v131 = v109;
          v132 = v87;
          sub_1B03949FC(&v131, &v135, &v134, &v133);
          v49 = 0;
          v131 = v110;
          v132 = v88;
          sub_1B03949FC(&v131, &v135, &v134, &v133);
          v48 = 0;
          v131 = v111;
          v132 = v89;
          sub_1B03949FC(&v131, &v135, &v134, &v133);
          v47 = 0;
          v131 = v112;
          v132 = v90;
          sub_1B03949FC(&v131, &v135, &v134, &v133);
          v46 = 0;
          v131 = v113;
          v132 = v92;
          sub_1B03949FC(&v131, &v135, &v134, &v133);
          _os_log_impl(&dword_1B0389000, v95, v96, "[%u] Requesting %ld message(s) (of %ld total).", v55, 0x1Cu);
          v45 = 0;
          sub_1B03998A8(v56, 0, v53);
          sub_1B03998A8(v57, v45, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v95);
      (*(v117 + 8))(v120, v116);
      sub_1B08EC054(v70, v71);
      v44[2] = v136;
      swift_beginAccess();
      sub_1B08E4AE0();
      swift_endAccess();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B08E2208(uint64_t a1)
{
  v21 = a1;
  v28 = 0;
  v27 = sub_1B08E0960;
  v14 = sub_1B08F4860;
  v43 = 0;
  v42 = 0;
  v39 = 0;
  v15 = 0;
  v16 = sub_1B0E44238();
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v20 = &v8 - v19;
  v22 = sub_1B0E44288();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v26 = &v8 - v25;
  v43 = v2;
  v42 = v1;
  v40[1] = v2;
  sub_1B08E4290();
  v3 = sub_1B0E44588();
  v31 = v40;
  v40[0] = v3;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
  sub_1B06E3764();
  sub_1B0E44FD8();
  v12 = v41;
  v39 = v41;
  v9 = *(v13 + OBJC_IVAR___MFNanoServerFullMessageLoader2_implementation);

  v11 = *(v9 + 16);
  MEMORY[0x1E69E5928](v11);

  MEMORY[0x1E69E5928](v13);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = swift_allocObject();
  v5 = v14;
  v6 = v12;
  *(v4 + 16) = v13;
  *(v4 + 24) = v6;
  v37 = v5;
  v38 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = 0;
  v35 = sub_1B038C908;
  v36 = &block_descriptor_65;
  v10 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](0, v26, v20, v10);
  (*(v17 + 8))(v20, v16);
  (*(v23 + 8))(v26, v22);
  _Block_release(v10);

  MEMORY[0x1E69E5920](v11);
}

uint64_t sub_1B08E25D0(uint64_t a1, uint64_t a2)
{

  sub_1B08E2634(a2);
}

uint64_t sub_1B08E2634(uint64_t a1)
{
  v56 = a1;
  v44 = sub_1B08F362C;
  v45 = sub_1B03B0DF8;
  v46 = sub_1B0398F5C;
  v47 = sub_1B0398F5C;
  v48 = sub_1B0399260;
  v73 = 0;
  v72 = 0;
  v49 = 0;
  v50 = 0;
  v51 = sub_1B0E439A8();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v55 = v19 - v54;
  v61 = sub_1B0E44468();
  v59 = *(v61 - 8);
  v60 = v61 - 8;
  v57 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v56);
  v62 = (v19 - v57);
  v73 = v2;
  v72 = v1;

  v58 = *(v1 + 16);
  MEMORY[0x1E69E5928](v58);
  v3 = v59;
  *v62 = v58;
  (*(v3 + 104))();
  v63 = sub_1B0E44488();
  (*(v59 + 8))(v62, v61);
  result = v63;
  if (v63)
  {
    v5 = v55;

    v6 = sub_1B08DFDD8();
    (*(v52 + 16))(v5, v6, v51);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v33 = 7;
    v34 = swift_allocObject();
    *(v34 + 16) = v56;
    v42 = sub_1B0E43988();
    v43 = sub_1B0E45908();
    v31 = 17;
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    v37 = swift_allocObject();
    *(v37 + 16) = 8;
    v32 = 32;
    v7 = swift_allocObject();
    v8 = v34;
    v35 = v7;
    *(v7 + 16) = v44;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v35;
    v39 = v9;
    *(v9 + 16) = v45;
    *(v9 + 24) = v10;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v38 = sub_1B0E46A48();
    v40 = v11;

    v12 = v36;
    v13 = v40;
    *v40 = v46;
    v13[1] = v12;

    v14 = v37;
    v15 = v40;
    v40[2] = v47;
    v15[3] = v14;

    v16 = v39;
    v17 = v40;
    v40[4] = v48;
    v17[5] = v16;
    sub_1B0394964();

    if (os_log_type_enabled(v42, v43))
    {
      v18 = v49;
      v24 = sub_1B0E45D78();
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v23 = 0;
      v25 = sub_1B03949A8(0, v22, v22);
      v26 = sub_1B03949A8(v23, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v27 = &v68;
      v68 = v24;
      v28 = &v67;
      v67 = v25;
      v29 = &v66;
      v66 = v26;
      sub_1B0394A48(0, &v68);
      sub_1B0394A48(1, v27);
      v64 = v46;
      v65 = v36;
      sub_1B03949FC(&v64, v27, v28, v29);
      v30 = v18;
      if (v18)
      {

        __break(1u);
      }

      else
      {
        v64 = v47;
        v65 = v37;
        sub_1B03949FC(&v64, &v68, &v67, &v66);
        v21 = 0;
        v64 = v48;
        v65 = v39;
        sub_1B03949FC(&v64, &v68, &v67, &v66);
        _os_log_impl(&dword_1B0389000, v42, v43, "Cancelling %ld message request(s).", v24, 0xCu);
        v20 = 0;
        sub_1B03998A8(v25, 0, v22);
        sub_1B03998A8(v26, v20, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v42);
    (*(v52 + 8))(v55, v51);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v19[1] = &v71;
    v71 = v56;
    v19[2] = v70;
    v19[3] = 33;
    v19[4] = 0;
    swift_beginAccess();
    v19[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
    sub_1B08F48D0();
    sub_1B0E45568();
    swift_endAccess();
    v19[5] = v69;
    swift_beginAccess();
    sub_1B08E4AE0();
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B08E2FA4()
{
  v9 = sub_1B08F4958;
  v28 = 0;
  v10 = 0;
  v14 = sub_1B0E44238();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v5 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v13 = &v4 - v5;
  v18 = sub_1B0E44288();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v6 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v17 = &v4 - v6;
  v28 = v0;
  v7 = *(v0 + OBJC_IVAR___MFNanoServerFullMessageLoader2_implementation);

  v20 = *(v7 + 16);
  MEMORY[0x1E69E5928](v20);

  MEMORY[0x1E69E5928](v8);
  v1 = swift_allocObject();
  v2 = v9;
  *(v1 + 16) = v8;
  v26 = v2;
  v27 = v1;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = 0;
  v24 = sub_1B038C908;
  v25 = &block_descriptor_90;
  v19 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v10, v17, v13, v19);
  (*(v11 + 8))(v13, v14);
  (*(v15 + 8))(v17, v18);
  _Block_release(v19);

  return MEMORY[0x1E69E5920](v20);
}

uint64_t sub_1B08E322C()
{

  sub_1B08E3280();
}

uint64_t sub_1B08E3280()
{
  v49 = sub_1B08F362C;
  v50 = sub_1B03B0DF8;
  v51 = sub_1B0398F5C;
  v52 = sub_1B0398F5C;
  v53 = sub_1B0399260;
  v78 = 0;
  v76 = 0;
  v54 = 0;
  v55 = 0;
  v56 = sub_1B0E439A8();
  v57 = *(v56 - 8);
  v58 = v56 - 8;
  v59 = (*(v57 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v60 = v17 - v59;
  v65 = sub_1B0E44468();
  v63 = *(v65 - 8);
  v64 = v65 - 8;
  v61 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v65);
  v66 = (v17 - v61);
  v78 = v0;

  v62 = *(v0 + 16);
  MEMORY[0x1E69E5928](v62);
  v1 = v63;
  *v66 = v62;
  (*(v1 + 104))();
  v67 = sub_1B0E44488();
  (*(v63 + 8))(v66, v65);
  result = v67;
  if (v67)
  {
    v3 = v60;

    v29 = v77;
    v36 = 32;
    swift_beginAccess();
    v31 = *(v48 + 40);
    v32 = *(v48 + 48);
    v33 = *(v48 + 56);
    v30 = *(v48 + 64);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    v34 = sub_1B08EBFA4(v31, v32, v33, v30);
    v76 = v34;

    v4 = sub_1B08DFDD8();
    (*(v57 + 16))(v3, v4, v56);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v37 = 7;
    v38 = swift_allocObject();
    *(v38 + 16) = v34;
    v46 = sub_1B0E43988();
    v47 = sub_1B0E45908();
    v35 = 17;
    v40 = swift_allocObject();
    *(v40 + 16) = 0;
    v41 = swift_allocObject();
    *(v41 + 16) = 8;
    v5 = swift_allocObject();
    v6 = v38;
    v39 = v5;
    *(v5 + 16) = v49;
    *(v5 + 24) = v6;
    v7 = swift_allocObject();
    v8 = v39;
    v43 = v7;
    *(v7 + 16) = v50;
    *(v7 + 24) = v8;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v42 = sub_1B0E46A48();
    v44 = v9;

    v10 = v40;
    v11 = v44;
    *v44 = v51;
    v11[1] = v10;

    v12 = v41;
    v13 = v44;
    v44[2] = v52;
    v13[3] = v12;

    v14 = v43;
    v15 = v44;
    v44[4] = v53;
    v15[5] = v14;
    sub_1B0394964();

    if (os_log_type_enabled(v46, v47))
    {
      v16 = v54;
      v22 = sub_1B0E45D78();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v21 = 0;
      v23 = sub_1B03949A8(0, v20, v20);
      v24 = sub_1B03949A8(v21, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v25 = &v72;
      v72 = v22;
      v26 = &v71;
      v71 = v23;
      v27 = &v70;
      v70 = v24;
      sub_1B0394A48(0, &v72);
      sub_1B0394A48(1, v25);
      v68 = v51;
      v69 = v40;
      sub_1B03949FC(&v68, v25, v26, v27);
      v28 = v16;
      if (v16)
      {

        __break(1u);
      }

      else
      {
        v68 = v52;
        v69 = v41;
        sub_1B03949FC(&v68, &v72, &v71, &v70);
        v19 = 0;
        v68 = v53;
        v69 = v43;
        sub_1B03949FC(&v68, &v72, &v71, &v70);
        _os_log_impl(&dword_1B0389000, v46, v47, "Cancelling %ld pending message request(s).", v22, 0xCu);
        v18 = 0;
        sub_1B03998A8(v23, 0, v20);
        sub_1B03998A8(v24, v18, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v46);
    (*(v57 + 8))(v60, v56);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v17[1] = &v75;
    v75 = v34;
    v17[2] = v74;
    v17[3] = 33;
    v17[4] = 0;
    swift_beginAccess();
    v17[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
    sub_1B08F48D0();
    sub_1B0E45568();
    swift_endAccess();
    v17[5] = v73;
    swift_beginAccess();
    sub_1B08E4AE0();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B08E3CB4()
{
  v2 = *(v0 + OBJC_IVAR___MFNanoServerFullMessageLoader2_implementation);

  v3 = *(v2 + 32);
  swift_unknownObjectRetain();

  swift_getObjectType();
  [v3 start];
  return swift_unknownObjectRelease();
}

uint64_t sub_1B08E3E40()
{
  v2 = *(v0 + 32);
  swift_unknownObjectRetain();
  return v2;
}

uint64_t sub_1B08E3E6C()
{
  v1 = sub_1B0E46A48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D48, &qword_1B0EA0348);
  sub_1B0E46A48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D50, &qword_1B0EA0350);
  sub_1B08E4290();
  sub_1B0E445D8();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E46A48();
  sub_1B0E45438();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  sub_1B08F6520();
  return v1;
}

uint64_t sub_1B08E3F90()
{
  swift_beginAccess();
  v2 = *(v0 + 40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v2;
}

uint64_t sub_1B08E4014(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_beginAccess();
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  *(v4 + 56) = a3;
  *(v4 + 64) = a4;

  swift_endAccess();
}

uint64_t sub_1B08E40D8()
{
  swift_beginAccess();
  v2 = *(v0 + 72);

  swift_endAccess();
  return v2;
}

uint64_t sub_1B08E4128(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 72) = a1;

  swift_endAccess();
}

void *sub_1B08E4188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = sub_1B08E3E6C();
  *(v3 + 48) = v4;
  *(v3 + 56) = v5;
  *(v3 + 64) = v6;
  type metadata accessor for Cache();
  Cache.__allocating_init()();
  v12[9] = v7;
  MEMORY[0x1E69E5928](a1);
  v12[2] = a1;
  MEMORY[0x1E69E5928](a2);
  v12[3] = a2;
  swift_unknownObjectRetain();
  v12[4] = a3;
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](a2);
  MEMORY[0x1E69E5920](a1);
  return v12;
}

unint64_t sub_1B08E4290()
{
  v2 = qword_1EB6DA670;
  if (!qword_1EB6DA670)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA670);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B08E4324()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  MEMORY[0x1E69E5920](*(v0 + 24));
  swift_unknownObjectRelease();
  sub_1B08F6520();

  return v2;
}

uint64_t sub_1B08E443C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 24);
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  *(v3 + 24) = v4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D68, &qword_1B0EA0358);
  sub_1B0E452E8();
  return v6;
}

uint64_t sub_1B08E4508(uint64_t a1, uint64_t a2, char a3)
{
  v51 = 0;
  memset(__b, 0, sizeof(__b));
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v56 = a1;
  v55 = a2;
  v54 = a3 & 1;
  v53 = v3;
  if ((a3 & 1) != 0 && (_s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0(), a2))
  {
    v51 = a2;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D50, &qword_1B0EA0350);
    sub_1B0E445C8();
    memcpy(__b, v57, sizeof(__b));
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D70, &qword_1B0EA0360);
      sub_1B0E446D8();
      v22 = v47;
      v23 = v48;
      if (!v48)
      {
        break;
      }

      v34 = v47;
      v35 = v48;
      v33 = v49;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B08E0A0C(v22, v23);
      v19 = v4;
      v20 = v5;
      v21 = v6;
      v30 = v4;
      v31 = v5;
      v32 = v6;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v28[0] = v19;
      v28[1] = v20;
      v28[2] = v21;
      sub_1B08E4290();
      sub_1B0E44778();
      sub_1B03B1198(v28);
      v27 = v29;
      v18 = v29 == 0;
      sub_1B03FD360(&v27);
      if (v18)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2DA8, &qword_1B0EA0380);
        sub_1B0E44788();
      }

      swift_unknownObjectRelease();
    }

    sub_1B06B91B0();
    v43[1] = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D78, &qword_1B0EA0368);
    v7 = sub_1B08F4A40();
    MEMORY[0x1B27270C0](v43, v10, v7);
    v11 = v43[0];

    v42 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D88, &qword_1B0EA0370);
    sub_1B08F4AC8();
    sub_1B0E46728();
    sub_1B039E440(&v42);
    v16 = v44;
    v12 = v45;
    v17 = v46;
    v39 = v44;
    v40 = v45;
    v41 = v46;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v38[0] = v16;
    v38[1] = v12;
    v38[2] = v17;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D98, &qword_1B0EA0378);
    v14 = sub_1B08E4290();
    v8 = sub_1B08F4B50();
    v15 = MEMORY[0x1B2727540](v38, a1, &unk_1F26DF238, v13, v14, v8);
    v37 = v15;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v36 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
    sub_1B08F48D0();
    sub_1B0E45568();
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v52 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
    sub_1B08F48D0();
    return sub_1B0E45568();
  }
}

void sub_1B08E4A80(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B08E0A0C(v5, v6);
  *a2 = v2;
  a2[1] = v3;
  a2[2] = v4;
}

uint64_t sub_1B08E4AE0()
{
  sub_1B08E4B84();
  sub_1B08E8684();
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v2 = *(v1 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B08E89A8(v3, v4, v5, v2);
}

uint64_t sub_1B08E4B84()
{
  v519 = 0;
  v518 = 0;
  v497 = 0;
  v515 = 0;
  v511 = 0u;
  v510 = 0u;
  v509 = 0;
  v485 = sub_1B0E439A8();
  v486 = *(v485 - 8);
  v487 = v486;
  v488 = *(v486 + 64);
  MEMORY[0x1EEE9AC00](v485 - 8);
  v490 = (v488 + 15) & 0xFFFFFFFFFFFFFFF0;
  v489 = &v104 - v490;
  MEMORY[0x1EEE9AC00](&v104 - v490);
  v491 = &v104 - v490;
  v519 = v0;
  v493 = *v0;
  v495 = *(v0 + 8);
  v496 = *(v0 + 16);
  v492 = *(v0 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v494 = sub_1B08EB604(v493, v495, v496, v492);
  v518 = v494;

  for (i = v497; ; i = v105)
  {
    v1 = i;
    v477 = *v484;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v516[0] = v477;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v481 = &v104;
    MEMORY[0x1EEE9AC00](&v104);
    v479 = &v104 - 4;
    *(&v104 - 2) = v2;
    v480 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D68, &qword_1B0EA0358);
    v478 = v480;
    sub_1B08F4C04();
    sub_1B0E456F8();
    v482 = v1;
    v483 = v481;
    if (v1)
    {
      break;
    }

    sub_1B039E440(v516);
    v476 = v516[1];
    if (v517)
    {
    }

    v475 = v476;
    v3 = v482;
    v515 = v476;
    sub_1B0E45308();
    v460 = v512;
    v458 = v512;
    v462 = v513;
    *&v469 = v513;
    v461 = *(&v514 + 1);
    v4 = v514;
    *(&v469 + 1) = v4 >> 64;
    v463 = v4;
    v459 = v514;
    LODWORD(v510) = v512;
    *(&v510 + 1) = v513;
    v511 = v514;
    v466 = v484[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    v470 = &v104;
    MEMORY[0x1EEE9AC00](&v104);
    v5 = v462;
    v6 = v463;
    v465 = &v104 - 6;
    *(&v104 - 8) = v7;
    *(&v104 - 3) = v5;
    *(&v104 - 2) = v6;
    *(&v104 - 1) = v8;
    v467 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D50, &qword_1B0EA0350);
    v464 = v467;
    v468 = sub_1B08E4290();
    v9 = sub_1B0E44688();
    v471 = v3;
    v472 = v9;
    v473 = v469;
    v474 = v470;
    if (v3)
    {
      goto LABEL_21;
    }

    v454 = v472;

    v509 = v454;
    v455 = &unk_1F26DF238;
    v457 = sub_1B0E44628();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v456 = sub_1B0E454A8();

    if (v457 == v456)
    {
      v69 = v489;
      v70 = sub_1B08DFDD8();
      (*(v487 + 16))(v69, v70, v485);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v177 = 48;
      v190 = 7;
      v71 = swift_allocObject();
      v72 = v459;
      v73 = *(&v469 + 1);
      v74 = v71;
      v75 = v469;
      v182 = v74;
      *(v74 + 16) = v458;
      *(v74 + 24) = v75;
      *(v74 + 32) = v72;
      *(v74 + 40) = v73;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v76 = swift_allocObject();
      v77 = v469;
      v78 = v459;
      v79 = *(&v469 + 1);
      v191 = v76;
      *(v76 + 16) = v458;
      *(v76 + 24) = v77;
      *(v76 + 32) = v78;
      *(v76 + 40) = v79;
      v204 = sub_1B0E43988();
      v178 = v204;
      v203 = sub_1B0E45908();
      v179 = v203;
      v186 = 17;
      v194 = swift_allocObject();
      v180 = v194;
      v185 = 0;
      *(v194 + 16) = 0;
      v195 = swift_allocObject();
      v181 = v195;
      *(v195 + 16) = 4;
      v189 = 32;
      v80 = swift_allocObject();
      v81 = v182;
      v183 = v80;
      *(v80 + 16) = sub_1B08F4CC4;
      *(v80 + 24) = v81;
      v82 = swift_allocObject();
      v83 = v183;
      v196 = v82;
      v184 = v82;
      *(v82 + 16) = sub_1B039BC08;
      *(v82 + 24) = v83;
      v197 = swift_allocObject();
      v187 = v197;
      *(v197 + 16) = v185;
      v198 = swift_allocObject();
      v188 = v198;
      *(v198 + 16) = 8;
      v84 = swift_allocObject();
      v85 = v191;
      v192 = v84;
      *(v84 + 16) = sub_1B08F4CD8;
      *(v84 + 24) = v85;
      v86 = swift_allocObject();
      v87 = v192;
      v201 = v86;
      v193 = v86;
      *(v86 + 16) = sub_1B03B0DF8;
      *(v86 + 24) = v87;
      v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v199 = sub_1B0E46A48();
      v200 = v88;

      v89 = v194;
      v90 = v200;
      *v200 = sub_1B0398F5C;
      v90[1] = v89;

      v91 = v195;
      v92 = v200;
      v200[2] = sub_1B0398F5C;
      v92[3] = v91;

      v93 = v196;
      v94 = v200;
      v200[4] = sub_1B03991EC;
      v94[5] = v93;

      v95 = v197;
      v96 = v200;
      v200[6] = sub_1B0398F5C;
      v96[7] = v95;

      v97 = v198;
      v98 = v200;
      v200[8] = sub_1B0398F5C;
      v98[9] = v97;

      v99 = v200;
      v100 = v201;
      v200[10] = sub_1B0399260;
      v99[11] = v100;
      sub_1B0394964();

      if (os_log_type_enabled(v204, v203))
      {
        v101 = v471;
        v165 = sub_1B0E45D78();
        v161 = v165;
        v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v163 = 0;
        v166 = sub_1B03949A8(0, v162, v162);
        v164 = v166;
        v167 = sub_1B03949A8(v163, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v508 = v165;
        v507 = v166;
        v506 = v167;
        v168 = &v508;
        sub_1B0394A48(0, &v508);
        sub_1B0394A48(2, v168);
        v504 = sub_1B0398F5C;
        v505 = v180;
        sub_1B03949FC(&v504, v168, &v507, &v506);
        v169 = v101;
        v170 = v180;
        v171 = v181;
        v172 = v184;
        v173 = v187;
        v174 = v188;
        v175 = v193;
        v176 = v101;
        if (v101)
        {
          v153 = v170;
          v154 = v171;
          v155 = v172;
          v156 = v173;
          v157 = v174;
          v158 = v175;
          v159 = 0;
          v111 = v175;
          v110 = v174;
          v109 = v173;
          v108 = v172;
          v107 = v171;

          __break(1u);
        }

        else
        {
          v504 = sub_1B0398F5C;
          v505 = v181;
          sub_1B03949FC(&v504, &v508, &v507, &v506);
          v145 = 0;
          v146 = v180;
          v147 = v181;
          v148 = v184;
          v149 = v187;
          v150 = v188;
          v151 = v193;
          v152 = 0;
          v504 = sub_1B03991EC;
          v505 = v184;
          sub_1B03949FC(&v504, &v508, &v507, &v506);
          v137 = 0;
          v138 = v180;
          v139 = v181;
          v140 = v184;
          v141 = v187;
          v142 = v188;
          v143 = v193;
          v144 = 0;
          v504 = sub_1B0398F5C;
          v505 = v187;
          sub_1B03949FC(&v504, &v508, &v507, &v506);
          v129 = 0;
          v130 = v180;
          v131 = v181;
          v132 = v184;
          v133 = v187;
          v134 = v188;
          v135 = v193;
          v136 = 0;
          v504 = sub_1B0398F5C;
          v505 = v188;
          sub_1B03949FC(&v504, &v508, &v507, &v506);
          v121 = 0;
          v122 = v180;
          v123 = v181;
          v124 = v184;
          v125 = v187;
          v126 = v188;
          v127 = v193;
          v128 = 0;
          v504 = sub_1B0399260;
          v505 = v193;
          sub_1B03949FC(&v504, &v508, &v507, &v506);
          v113 = 0;
          v114 = v180;
          v115 = v181;
          v116 = v184;
          v117 = v187;
          v118 = v188;
          v119 = v193;
          v120 = 0;
          _os_log_impl(&dword_1B0389000, v178, v179, "[%u] Calling completion handler for %ld messages.", v161, 0x12u);
          v112 = 0;
          sub_1B03998A8(v164, 0, v162);
          sub_1B03998A8(v167, v112, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();

          v160 = v113;
        }
      }

      else
      {
        v102 = v471;

        v160 = v102;
      }

      v106 = v160;

      (*(v487 + 8))(v489, v485);
      v206 = v106;
    }

    else
    {
      v10 = v491;
      v11 = sub_1B08DFDD8();
      (*(v487 + 16))(v10, v11, v485);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v409 = 48;
      v433 = 7;
      v12 = swift_allocObject();
      v13 = v459;
      v14 = *(&v469 + 1);
      v15 = v12;
      v16 = v469;
      v414 = v15;
      *(v15 + 16) = v458;
      *(v15 + 24) = v16;
      *(v15 + 32) = v13;
      *(v15 + 40) = v14;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v17 = swift_allocObject();
      v18 = v469;
      v19 = v459;
      v20 = *(&v469 + 1);
      v419 = v17;
      *(v17 + 16) = v458;
      *(v17 + 24) = v18;
      *(v17 + 32) = v19;
      *(v17 + 40) = v20;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v424 = swift_allocObject();
      *(v424 + 16) = v454;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v21 = swift_allocObject();
      v22 = v469;
      v23 = v459;
      v24 = *(&v469 + 1);
      v25 = v454;
      v434 = v21;
      *(v21 + 16) = v458;
      *(v21 + 24) = v22;
      *(v21 + 32) = v23;
      *(v21 + 40) = v24;
      *(v21 + 48) = v25;
      v453 = sub_1B0E43988();
      v410 = v453;
      v452 = sub_1B0E458E8();
      v411 = v452;
      v428 = 17;
      v437 = swift_allocObject();
      v412 = v437;
      v427 = 0;
      *(v437 + 16) = 0;
      v438 = swift_allocObject();
      v413 = v438;
      *(v438 + 16) = 4;
      v432 = 32;
      v26 = swift_allocObject();
      v27 = v414;
      v415 = v26;
      *(v26 + 16) = sub_1B08F4CC4;
      *(v26 + 24) = v27;
      v28 = swift_allocObject();
      v29 = v415;
      v439 = v28;
      v416 = v28;
      *(v28 + 16) = sub_1B039BC08;
      *(v28 + 24) = v29;
      v440 = swift_allocObject();
      v417 = v440;
      *(v440 + 16) = v427;
      v441 = swift_allocObject();
      v418 = v441;
      v430 = 8;
      *(v441 + 16) = 8;
      v30 = swift_allocObject();
      v31 = v419;
      v420 = v30;
      *(v30 + 16) = sub_1B08F4CD8;
      *(v30 + 24) = v31;
      v32 = swift_allocObject();
      v33 = v420;
      v442 = v32;
      v421 = v32;
      *(v32 + 16) = sub_1B03B0DF8;
      *(v32 + 24) = v33;
      v443 = swift_allocObject();
      v422 = v443;
      *(v443 + 16) = v427;
      v444 = swift_allocObject();
      v423 = v444;
      *(v444 + 16) = v430;
      v34 = swift_allocObject();
      v35 = v424;
      v425 = v34;
      *(v34 + 16) = sub_1B08F4CEC;
      *(v34 + 24) = v35;
      v36 = swift_allocObject();
      v37 = v425;
      v445 = v36;
      v426 = v36;
      *(v36 + 16) = sub_1B03B0DF8;
      *(v36 + 24) = v37;
      v446 = swift_allocObject();
      v429 = v446;
      *(v446 + 16) = v427;
      v447 = swift_allocObject();
      v431 = v447;
      *(v447 + 16) = v430;
      v38 = swift_allocObject();
      v39 = v434;
      v435 = v38;
      *(v38 + 16) = sub_1B08F4CF4;
      *(v38 + 24) = v39;
      v40 = swift_allocObject();
      v41 = v435;
      v450 = v40;
      v436 = v40;
      *(v40 + 16) = sub_1B03B0DF8;
      *(v40 + 24) = v41;
      v451 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v448 = sub_1B0E46A48();
      v449 = v42;

      v43 = v437;
      v44 = v449;
      *v449 = sub_1B0398F5C;
      v44[1] = v43;

      v45 = v438;
      v46 = v449;
      v449[2] = sub_1B0398F5C;
      v46[3] = v45;

      v47 = v439;
      v48 = v449;
      v449[4] = sub_1B03991EC;
      v48[5] = v47;

      v49 = v440;
      v50 = v449;
      v449[6] = sub_1B0398F5C;
      v50[7] = v49;

      v51 = v441;
      v52 = v449;
      v449[8] = sub_1B0398F5C;
      v52[9] = v51;

      v53 = v442;
      v54 = v449;
      v449[10] = sub_1B0399260;
      v54[11] = v53;

      v55 = v443;
      v56 = v449;
      v449[12] = sub_1B0398F5C;
      v56[13] = v55;

      v57 = v444;
      v58 = v449;
      v449[14] = sub_1B0398F5C;
      v58[15] = v57;

      v59 = v445;
      v60 = v449;
      v449[16] = sub_1B0399260;
      v60[17] = v59;

      v61 = v446;
      v62 = v449;
      v449[18] = sub_1B0398F5C;
      v62[19] = v61;

      v63 = v447;
      v64 = v449;
      v449[20] = sub_1B0398F5C;
      v64[21] = v63;

      v65 = v449;
      v66 = v450;
      v449[22] = sub_1B0399260;
      v65[23] = v66;
      sub_1B0394964();

      if (os_log_type_enabled(v453, v452))
      {
        v67 = v471;
        v391 = sub_1B0E45D78();
        v387 = v391;
        v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v389 = 0;
        v392 = sub_1B03949A8(0, v388, v388);
        v390 = v392;
        v393 = sub_1B03949A8(v389, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v503 = v391;
        v502 = v392;
        v501 = v393;
        v394 = &v503;
        sub_1B0394A48(0, &v503);
        sub_1B0394A48(4, v394);
        v499 = sub_1B0398F5C;
        v500 = v412;
        sub_1B03949FC(&v499, v394, &v502, &v501);
        v395 = v67;
        v396 = v412;
        v397 = v413;
        v398 = v416;
        v399 = v417;
        v400 = v418;
        v401 = v421;
        v402 = v422;
        v403 = v423;
        v404 = v426;
        v405 = v429;
        v406 = v431;
        v407 = v436;
        v408 = v67;
        if (v67)
        {
          v373 = v396;
          v374 = v397;
          v375 = v398;
          v376 = v399;
          v377 = v400;
          v378 = v401;
          v379 = v402;
          v380 = v403;
          v381 = v404;
          v382 = v405;
          v383 = v406;
          v384 = v407;
          v385 = 0;
          v217 = v407;
          v216 = v406;
          v215 = v405;
          v214 = v404;
          v213 = v403;
          v212 = v402;
          v211 = v401;
          v210 = v400;
          v209 = v399;
          v208 = v398;
          v207 = v397;

          __break(1u);
        }

        else
        {
          v499 = sub_1B0398F5C;
          v500 = v413;
          sub_1B03949FC(&v499, &v503, &v502, &v501);
          v359 = 0;
          v360 = v412;
          v361 = v413;
          v362 = v416;
          v363 = v417;
          v364 = v418;
          v365 = v421;
          v366 = v422;
          v367 = v423;
          v368 = v426;
          v369 = v429;
          v370 = v431;
          v371 = v436;
          v372 = 0;
          v499 = sub_1B03991EC;
          v500 = v416;
          sub_1B03949FC(&v499, &v503, &v502, &v501);
          v345 = 0;
          v346 = v412;
          v347 = v413;
          v348 = v416;
          v349 = v417;
          v350 = v418;
          v351 = v421;
          v352 = v422;
          v353 = v423;
          v354 = v426;
          v355 = v429;
          v356 = v431;
          v357 = v436;
          v358 = 0;
          v499 = sub_1B0398F5C;
          v500 = v417;
          sub_1B03949FC(&v499, &v503, &v502, &v501);
          v331 = 0;
          v332 = v412;
          v333 = v413;
          v334 = v416;
          v335 = v417;
          v336 = v418;
          v337 = v421;
          v338 = v422;
          v339 = v423;
          v340 = v426;
          v341 = v429;
          v342 = v431;
          v343 = v436;
          v344 = 0;
          v499 = sub_1B0398F5C;
          v500 = v418;
          sub_1B03949FC(&v499, &v503, &v502, &v501);
          v317 = 0;
          v318 = v412;
          v319 = v413;
          v320 = v416;
          v321 = v417;
          v322 = v418;
          v323 = v421;
          v324 = v422;
          v325 = v423;
          v326 = v426;
          v327 = v429;
          v328 = v431;
          v329 = v436;
          v330 = 0;
          v499 = sub_1B0399260;
          v500 = v421;
          sub_1B03949FC(&v499, &v503, &v502, &v501);
          v303 = 0;
          v304 = v412;
          v305 = v413;
          v306 = v416;
          v307 = v417;
          v308 = v418;
          v309 = v421;
          v310 = v422;
          v311 = v423;
          v312 = v426;
          v313 = v429;
          v314 = v431;
          v315 = v436;
          v316 = 0;
          v499 = sub_1B0398F5C;
          v500 = v422;
          sub_1B03949FC(&v499, &v503, &v502, &v501);
          v289 = 0;
          v290 = v412;
          v291 = v413;
          v292 = v416;
          v293 = v417;
          v294 = v418;
          v295 = v421;
          v296 = v422;
          v297 = v423;
          v298 = v426;
          v299 = v429;
          v300 = v431;
          v301 = v436;
          v302 = 0;
          v499 = sub_1B0398F5C;
          v500 = v423;
          sub_1B03949FC(&v499, &v503, &v502, &v501);
          v275 = 0;
          v276 = v412;
          v277 = v413;
          v278 = v416;
          v279 = v417;
          v280 = v418;
          v281 = v421;
          v282 = v422;
          v283 = v423;
          v284 = v426;
          v285 = v429;
          v286 = v431;
          v287 = v436;
          v288 = 0;
          v499 = sub_1B0399260;
          v500 = v426;
          sub_1B03949FC(&v499, &v503, &v502, &v501);
          v261 = 0;
          v262 = v412;
          v263 = v413;
          v264 = v416;
          v265 = v417;
          v266 = v418;
          v267 = v421;
          v268 = v422;
          v269 = v423;
          v270 = v426;
          v271 = v429;
          v272 = v431;
          v273 = v436;
          v274 = 0;
          v499 = sub_1B0398F5C;
          v500 = v429;
          sub_1B03949FC(&v499, &v503, &v502, &v501);
          v247 = 0;
          v248 = v412;
          v249 = v413;
          v250 = v416;
          v251 = v417;
          v252 = v418;
          v253 = v421;
          v254 = v422;
          v255 = v423;
          v256 = v426;
          v257 = v429;
          v258 = v431;
          v259 = v436;
          v260 = 0;
          v499 = sub_1B0398F5C;
          v500 = v431;
          sub_1B03949FC(&v499, &v503, &v502, &v501);
          v233 = 0;
          v234 = v412;
          v235 = v413;
          v236 = v416;
          v237 = v417;
          v238 = v418;
          v239 = v421;
          v240 = v422;
          v241 = v423;
          v242 = v426;
          v243 = v429;
          v244 = v431;
          v245 = v436;
          v246 = 0;
          v499 = sub_1B0399260;
          v500 = v436;
          sub_1B03949FC(&v499, &v503, &v502, &v501);
          v219 = 0;
          v220 = v412;
          v221 = v413;
          v222 = v416;
          v223 = v417;
          v224 = v418;
          v225 = v421;
          v226 = v422;
          v227 = v423;
          v228 = v426;
          v229 = v429;
          v230 = v431;
          v231 = v436;
          v232 = 0;
          _os_log_impl(&dword_1B0389000, v410, v411, "[%u] Calling completion handler for %ld messages, (%ld completed, %ld failed).", v387, 0x26u);
          v218 = 0;
          sub_1B03998A8(v390, 0, v388);
          sub_1B03998A8(v393, v218, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();

          v386 = v219;
        }
      }

      else
      {
        v68 = v471;

        v386 = v68;
      }

      v205 = v386;

      (*(v487 + 8))(v491, v485);
      v206 = v205;
    }

    v105 = v206;

    v459(v454);
  }

  __break(1u);
LABEL_21:
  v104 = *(&v473 + 1);

  __break(1u);
  return result;
}

uint64_t sub_1B08E8684()
{
  v34 = 0;
  v32 = 0;
  v27 = 0;
  v29 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v33 = v29;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D68, &qword_1B0EA0358);
  sub_1B08F4C04();
  v30 = sub_1B0E45748();

  if (v30)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D50, &qword_1B0EA0350);
    v9 = sub_1B08E4290();
    v8 = &unk_1F26DF238;
    v7 = sub_1B06A3D48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2DA8, &qword_1B0EA0380);
    sub_1B0E446F8();
    v10 = sub_1B041AF18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
    sub_1B0E45578();
    return v27;
  }

  else
  {
    v1 = v27;
    v15 = *v26;
    v17 = *(v26 + 8);
    v18 = *(v26 + 16);
    v14 = *(v26 + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v19 = sub_1B08EBA04(v15, v17, v18, v14);
    v16 = v19;
    v32 = v19;

    v22 = *(v26 + 8);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v20 = &v6;
    MEMORY[0x1EEE9AC00](v19);
    v21 = v5;
    v5[2] = v2;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D50, &qword_1B0EA0350);
    sub_1B08E4290();
    v3 = sub_1B0E44688();
    v24 = v1;
    v25 = v3;
    v11 = v3;

    *(v26 + 8) = v11;

    v31 = v16;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
    sub_1B08F48D0();
    sub_1B0E45468();

    return v24;
  }
}

uint64_t sub_1B08E89A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v352 = a4;
  v351 = a3;
  v353 = a2;
  v364 = a1;
  v388 = 0;
  v349 = 0;
  v387 = 0;
  v386 = 0;
  v385 = 0;
  v383 = 0;
  v382[1] = 0;
  v382[0] = 0;
  v377 = 0u;
  v376 = 0u;
  v375 = 0;
  v350 = 0;
  v354 = sub_1B0E439A8();
  v355 = *(v354 - 8);
  v356 = v355;
  v357 = *(v355 + 64);
  MEMORY[0x1EEE9AC00](v364);
  v359 = (v357 + 15) & 0xFFFFFFFFFFFFFFF0;
  v358 = &v65 - v359;
  MEMORY[0x1EEE9AC00](v4);
  v360 = &v65 - v359;
  v385 = v5;
  v386 = v6;
  v387 = v7;
  v388 = v8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v384 = v364;
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D68, &qword_1B0EA0358);
  v361 = v362;
  v363 = sub_1B08F4C04();
  v365 = sub_1B0E45748();

  if (v365)
  {
    v9 = v360;
    v10 = sub_1B08DFDD8();
    (*(v356 + 16))(v9, v10, v354);
    v347 = sub_1B0E43988();
    v344 = v347;
    v346 = sub_1B0E45908();
    v345 = v346;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v348 = sub_1B0E46A48();
    if (os_log_type_enabled(v347, v346))
    {
      v11 = v350;
      v335 = sub_1B0E45D78();
      v331 = v335;
      v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v333 = 0;
      v336 = sub_1B03949A8(0, v332, v332);
      v334 = v336;
      v337 = sub_1B03949A8(v333, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v369 = v335;
      v368 = v336;
      v367 = v337;
      v338 = 0;
      v339 = &v369;
      sub_1B0394A48(0, &v369);
      sub_1B0394A48(v338, v339);
      v366 = v348;
      v340 = &v65;
      MEMORY[0x1EEE9AC00](&v65);
      v341 = &v65 - 6;
      *(&v65 - 4) = v12;
      *(&v65 - 3) = &v368;
      *(&v65 - 2) = &v367;
      v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E17D0, &unk_1B0E99B60);
      sub_1B06D3AB0();
      sub_1B0E45018();
      v343 = v11;
      if (v11)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B0389000, v344, v345, "No remaining requests.", v331, 2u);
        v329 = 0;
        sub_1B03998A8(v334, 0, v332);
        sub_1B03998A8(v337, v329, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v330 = v343;
      }
    }

    else
    {

      v330 = v350;
    }

    v327 = v330;

    (*(v356 + 8))(v360, v354);
    return v327;
  }

  else
  {
    v325 = sub_1B08EB604(v364, v353, v351, v352);
    v383 = v325;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v381 = v364;
    sub_1B0E45798();
    for (i = v350; ; i = v66)
    {
      v321 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2DB8, &qword_1B0EA0388);
      sub_1B0E46518();
      v322 = v378;
      v323 = v379;
      v324 = v380;
      if (!v379)
      {
        break;
      }

      v318 = v322;
      v319 = v323;
      v320 = v324;
      v13 = v358;
      v271 = v324;
      v270 = v323;
      v269 = v322;
      LODWORD(v376) = v322;
      *(&v376 + 1) = v323;
      v377 = v324;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B08E4290();
      v273 = sub_1B0E45418();
      v267 = v273;
      v375 = v273;
      v14 = sub_1B08DFDD8();
      (*(v356 + 16))(v13, v14, v354);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v268 = 48;
      v297 = 7;
      v15 = swift_allocObject();
      v16 = v270;
      v17 = v271;
      v278 = v15;
      *(v15 + 16) = v269;
      *(v15 + 24) = v16;
      *(v15 + 32) = v17;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v272 = 24;
      v283 = swift_allocObject();
      *(v283 + 16) = v273;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v18 = swift_allocObject();
      v19 = v270;
      v20 = v271;
      v289 = v18;
      *(v18 + 16) = v269;
      *(v18 + 24) = v19;
      *(v18 + 32) = v20;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v298 = swift_allocObject();
      *(v298 + 16) = v273;
      v317 = sub_1B0E43988();
      v274 = v317;
      v316 = sub_1B0E458D8();
      v275 = v316;
      v292 = 17;
      v301 = swift_allocObject();
      v276 = v301;
      v286 = 0;
      *(v301 + 16) = 0;
      v302 = swift_allocObject();
      v277 = v302;
      *(v302 + 16) = 4;
      v296 = 32;
      v21 = swift_allocObject();
      v22 = v278;
      v279 = v21;
      *(v21 + 16) = sub_1B08F4CC4;
      *(v21 + 24) = v22;
      v23 = swift_allocObject();
      v24 = v279;
      v303 = v23;
      v280 = v23;
      *(v23 + 16) = sub_1B039BC08;
      *(v23 + 24) = v24;
      v304 = swift_allocObject();
      v281 = v304;
      *(v304 + 16) = v286;
      v305 = swift_allocObject();
      v282 = v305;
      v294 = 8;
      *(v305 + 16) = 8;
      v25 = swift_allocObject();
      v26 = v283;
      v284 = v25;
      *(v25 + 16) = sub_1B08F362C;
      *(v25 + 24) = v26;
      v27 = swift_allocObject();
      v28 = v284;
      v306 = v27;
      v285 = v27;
      *(v27 + 16) = sub_1B03B0DF8;
      *(v27 + 24) = v28;
      v307 = swift_allocObject();
      v287 = v307;
      *(v307 + 16) = v286;
      v308 = swift_allocObject();
      v288 = v308;
      *(v308 + 16) = v294;
      v29 = swift_allocObject();
      v30 = v289;
      v290 = v29;
      *(v29 + 16) = sub_1B08F4CD8;
      *(v29 + 24) = v30;
      v31 = swift_allocObject();
      v32 = v290;
      v309 = v31;
      v291 = v31;
      *(v31 + 16) = sub_1B03B0DF8;
      *(v31 + 24) = v32;
      v310 = swift_allocObject();
      v293 = v310;
      *(v310 + 16) = 34;
      v311 = swift_allocObject();
      v295 = v311;
      *(v311 + 16) = v294;
      v33 = swift_allocObject();
      v34 = v298;
      v299 = v33;
      *(v33 + 16) = sub_1B08F4D38;
      *(v33 + 24) = v34;
      v35 = swift_allocObject();
      v36 = v299;
      v314 = v35;
      v300 = v35;
      *(v35 + 16) = sub_1B039BCF8;
      *(v35 + 24) = v36;
      v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v312 = sub_1B0E46A48();
      v313 = v37;

      v38 = v301;
      v39 = v313;
      *v313 = sub_1B0398F5C;
      v39[1] = v38;

      v40 = v302;
      v41 = v313;
      v313[2] = sub_1B0398F5C;
      v41[3] = v40;

      v42 = v303;
      v43 = v313;
      v313[4] = sub_1B03991EC;
      v43[5] = v42;

      v44 = v304;
      v45 = v313;
      v313[6] = sub_1B0398F5C;
      v45[7] = v44;

      v46 = v305;
      v47 = v313;
      v313[8] = sub_1B0398F5C;
      v47[9] = v46;

      v48 = v306;
      v49 = v313;
      v313[10] = sub_1B0399260;
      v49[11] = v48;

      v50 = v307;
      v51 = v313;
      v313[12] = sub_1B0398F5C;
      v51[13] = v50;

      v52 = v308;
      v53 = v313;
      v313[14] = sub_1B0398F5C;
      v53[15] = v52;

      v54 = v309;
      v55 = v313;
      v313[16] = sub_1B0399260;
      v55[17] = v54;

      v56 = v310;
      v57 = v313;
      v313[18] = sub_1B0398F5C;
      v57[19] = v56;

      v58 = v311;
      v59 = v313;
      v313[20] = sub_1B0398F5C;
      v59[21] = v58;

      v60 = v313;
      v61 = v314;
      v313[22] = sub_1B039BCEC;
      v60[23] = v61;
      sub_1B0394964();

      if (os_log_type_enabled(v317, v316))
      {
        v62 = v321;
        v249 = sub_1B0E45D78();
        v246 = v249;
        v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v250 = sub_1B03949A8(0, v247, v247);
        v248 = v250;
        v251 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v374 = v249;
        v373 = v250;
        v372 = v251;
        v252 = &v374;
        sub_1B0394A48(2, &v374);
        sub_1B0394A48(4, v252);
        v370 = sub_1B0398F5C;
        v371 = v276;
        sub_1B03949FC(&v370, v252, &v373, &v372);
        v253 = v62;
        v254 = v276;
        v255 = v277;
        v256 = v280;
        v257 = v281;
        v258 = v282;
        v259 = v285;
        v260 = v287;
        v261 = v288;
        v262 = v291;
        v263 = v293;
        v264 = v295;
        v265 = v300;
        v266 = v62;
        if (v62)
        {
          v232 = v254;
          v233 = v255;
          v234 = v256;
          v235 = v257;
          v236 = v258;
          v237 = v259;
          v238 = v260;
          v239 = v261;
          v240 = v262;
          v241 = v263;
          v242 = v264;
          v243 = v265;
          v244 = 0;
          v77 = v265;
          v76 = v264;
          v75 = v263;
          v74 = v262;
          v73 = v261;
          v72 = v260;
          v71 = v259;
          v70 = v258;
          v69 = v257;
          v68 = v256;
          v67 = v255;

          __break(1u);
        }

        else
        {
          v370 = sub_1B0398F5C;
          v371 = v277;
          sub_1B03949FC(&v370, &v374, &v373, &v372);
          v218 = 0;
          v219 = v276;
          v220 = v277;
          v221 = v280;
          v222 = v281;
          v223 = v282;
          v224 = v285;
          v225 = v287;
          v226 = v288;
          v227 = v291;
          v228 = v293;
          v229 = v295;
          v230 = v300;
          v231 = 0;
          v370 = sub_1B03991EC;
          v371 = v280;
          sub_1B03949FC(&v370, &v374, &v373, &v372);
          v204 = 0;
          v205 = v276;
          v206 = v277;
          v207 = v280;
          v208 = v281;
          v209 = v282;
          v210 = v285;
          v211 = v287;
          v212 = v288;
          v213 = v291;
          v214 = v293;
          v215 = v295;
          v216 = v300;
          v217 = 0;
          v370 = sub_1B0398F5C;
          v371 = v281;
          sub_1B03949FC(&v370, &v374, &v373, &v372);
          v190 = 0;
          v191 = v276;
          v192 = v277;
          v193 = v280;
          v194 = v281;
          v195 = v282;
          v196 = v285;
          v197 = v287;
          v198 = v288;
          v199 = v291;
          v200 = v293;
          v201 = v295;
          v202 = v300;
          v203 = 0;
          v370 = sub_1B0398F5C;
          v371 = v282;
          sub_1B03949FC(&v370, &v374, &v373, &v372);
          v176 = 0;
          v177 = v276;
          v178 = v277;
          v179 = v280;
          v180 = v281;
          v181 = v282;
          v182 = v285;
          v183 = v287;
          v184 = v288;
          v185 = v291;
          v186 = v293;
          v187 = v295;
          v188 = v300;
          v189 = 0;
          v370 = sub_1B0399260;
          v371 = v285;
          sub_1B03949FC(&v370, &v374, &v373, &v372);
          v162 = 0;
          v163 = v276;
          v164 = v277;
          v165 = v280;
          v166 = v281;
          v167 = v282;
          v168 = v285;
          v169 = v287;
          v170 = v288;
          v171 = v291;
          v172 = v293;
          v173 = v295;
          v174 = v300;
          v175 = 0;
          v370 = sub_1B0398F5C;
          v371 = v287;
          sub_1B03949FC(&v370, &v374, &v373, &v372);
          v148 = 0;
          v149 = v276;
          v150 = v277;
          v151 = v280;
          v152 = v281;
          v153 = v282;
          v154 = v285;
          v155 = v287;
          v156 = v288;
          v157 = v291;
          v158 = v293;
          v159 = v295;
          v160 = v300;
          v161 = 0;
          v370 = sub_1B0398F5C;
          v371 = v288;
          sub_1B03949FC(&v370, &v374, &v373, &v372);
          v134 = 0;
          v135 = v276;
          v136 = v277;
          v137 = v280;
          v138 = v281;
          v139 = v282;
          v140 = v285;
          v141 = v287;
          v142 = v288;
          v143 = v291;
          v144 = v293;
          v145 = v295;
          v146 = v300;
          v147 = 0;
          v370 = sub_1B0399260;
          v371 = v291;
          sub_1B03949FC(&v370, &v374, &v373, &v372);
          v120 = 0;
          v121 = v276;
          v122 = v277;
          v123 = v280;
          v124 = v281;
          v125 = v282;
          v126 = v285;
          v127 = v287;
          v128 = v288;
          v129 = v291;
          v130 = v293;
          v131 = v295;
          v132 = v300;
          v133 = 0;
          v370 = sub_1B0398F5C;
          v371 = v293;
          sub_1B03949FC(&v370, &v374, &v373, &v372);
          v106 = 0;
          v107 = v276;
          v108 = v277;
          v109 = v280;
          v110 = v281;
          v111 = v282;
          v112 = v285;
          v113 = v287;
          v114 = v288;
          v115 = v291;
          v116 = v293;
          v117 = v295;
          v118 = v300;
          v119 = 0;
          v370 = sub_1B0398F5C;
          v371 = v295;
          sub_1B03949FC(&v370, &v374, &v373, &v372);
          v92 = 0;
          v93 = v276;
          v94 = v277;
          v95 = v280;
          v96 = v281;
          v97 = v282;
          v98 = v285;
          v99 = v287;
          v100 = v288;
          v101 = v291;
          v102 = v293;
          v103 = v295;
          v104 = v300;
          v105 = 0;
          v370 = sub_1B039BCEC;
          v371 = v300;
          sub_1B03949FC(&v370, &v374, &v373, &v372);
          v78 = 0;
          v79 = v276;
          v80 = v277;
          v81 = v280;
          v82 = v281;
          v83 = v282;
          v84 = v285;
          v85 = v287;
          v86 = v288;
          v87 = v291;
          v88 = v293;
          v89 = v295;
          v90 = v300;
          v91 = 0;
          _os_log_impl(&dword_1B0389000, v274, v275, "[%u] Still waiting for %ld (of %ld): {%{public}s}", v246, 0x26u);
          sub_1B03998A8(v248, 0, v247);
          sub_1B03998A8(v251, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();

          v245 = v78;
        }
      }

      else
      {
        v63 = v321;

        v245 = v63;
      }

      v66 = v245;

      (*(v356 + 8))(v358, v354);
    }

    sub_1B039E440(v382);

    return v321;
  }
}

uint64_t sub_1B08EB604(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D50, &qword_1B0EA0350);
  sub_1B08E4290();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2DC0, &qword_1B0EA0390);
  sub_1B08F4D40();
  sub_1B0E45598();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
  sub_1B08F48D0();
  return sub_1B0E454B8();
}

uint64_t sub_1B08EB744(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B08E4290();
  v3 = sub_1B0E45538();

  return v3 & 1;
}

uint64_t sub_1B08EB7C4(__int128 *a1, uint64_t *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B08E4290();
  v7 = sub_1B0E45528();

  return v7 & 1;
}

uint64_t sub_1B08EB8A8(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B08E4290();
  v3 = sub_1B0E454A8();

  return v3;
}

uint64_t sub_1B08EB900(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D50, &qword_1B0EA0350);
  sub_1B08E4290();
  return sub_1B0E44628();
}

uint64_t sub_1B08EB958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B08E4290();
  v8 = sub_1B0E454A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D50, &qword_1B0EA0350);
  v5 = sub_1B0E44628();
  result = v8;
  v9 = v8 - v5;
  if (!__OFSUB__(v8, v5))
  {
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B08EBA04(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6[0] = a1;
  sub_1B08E4290();
  sub_1B0E44588();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D68, &qword_1B0EA0358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
  sub_1B08F4DC8();
  sub_1B0E44FD8();
  sub_1B039E440(v6);
  return v6[1];
}

uint64_t sub_1B08EBBE4(uint64_t a1)
{
  v6[1] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
  v1 = sub_1B08F4ED8();
  v6[0] = sub_1B039CA88(sub_1B08EBD18, 0, v4, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v1, MEMORY[0x1E69E7410], v5);
  sub_1B0E44838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v3 = sub_1B0E448E8();

  sub_1B039E440(v6);
  return v3;
}

uint64_t sub_1B08EBD18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v8[2] = a1;
  v8[0] = sub_1B0E46A28();
  v8[1] = v2;
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  sub_1B0E469F8();
  v4 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v4);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v8);
  result = sub_1B0E44C88();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1B08EBE30(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D50, &qword_1B0EA0350);
  sub_1B08E4290();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2DC0, &qword_1B0EA0390);
  sub_1B08F4D40();
  return sub_1B0E45598();
}

uint64_t sub_1B08EBF14(uint64_t a1, uint64_t a2)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
  sub_1B08F48D0();
  return sub_1B0E45568();
}

uint64_t sub_1B08EBFA4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_1B08EBA04(a1, a2, a3, a4);
  sub_1B08EB604(a1, a2, a3, a4);
  sub_1B08E4290();
  v9 = sub_1B0E45418();

  return v9;
}

uint64_t sub_1B08EC054(unsigned int a1, uint64_t a2)
{
  v13 = 0;
  v14 = 0;
  v12[0] = 0;
  v12[1] = 0;
  v17 = a1;
  v16 = a2;
  v15 = v2;
  v6 = *(v2 + 24);
  MEMORY[0x1E69E5928](v6);
  v9 = sub_1B08EC214(a2);
  v8 = v3;
  MEMORY[0x1E69E5920](v6);
  v13 = v9;
  v14 = v8;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B08EC618(a1, v8);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2DD8, &qword_1B0EA0398);
  sub_1B08F4E50();
  sub_1B0E45798();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2DE8, &qword_1B0EA03A0);
    sub_1B0E46518();
    if (!v10)
    {
      break;
    }

    sub_1B08EDD3C(a1, v10, v11);

    (MEMORY[0x1E69E5920])();
  }

  sub_1B039E440(v12);
}

uint64_t sub_1B08EC214(uint64_t a1)
{
  v31 = 0;
  v29 = 0;
  v30 = 0;
  memset(__b, 0, sizeof(__b));
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v33 = a1;
  v32 = v1;
  v31 = sub_1B08F3F34(a1);
  v29 = sub_1B08F38D4();
  v30 = v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B08E4290();
  sub_1B0E45448();
  memcpy(__b, v34, sizeof(__b));
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2DF0, &qword_1B0EA03A8);
    sub_1B0E45508();
    v16 = v25;
    v17 = v26;
    v18 = v27;
    if (!v26)
    {
      break;
    }

    v22 = v25;
    v23 = v26;
    v24 = v27;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v20[0] = v16;
    v20[1] = v17;
    v20[2] = v18;
    sub_1B07F1AFC();
    sub_1B0E44778();
    sub_1B03B1198(v20);
    v15 = v21;
    MEMORY[0x1E69E5928](v21);
    if (v15)
    {
      v14 = [v15 account];
      MEMORY[0x1E69E5920](v15);
      if (v14)
      {
        v13 = v14;
      }

      else
      {
        LOBYTE(v4) = 2;
        v5 = 588;
        LODWORD(v6) = 0;
        sub_1B0E465A8();
        __break(1u);
      }

      v11 = [v13 taskManager];
      MEMORY[0x1E69E5920](v13);
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v12)
    {
      type metadata accessor for TaskManager(0);
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v9 = v10;
      }

      else
      {
        swift_unknownObjectRelease();
        v9 = 0;
      }

      v8 = v9;
    }

    else
    {
      v8 = 0;
    }

    sub_1B08F3984(v8, v16, v17, v18, v15);
    MEMORY[0x1E69E5920](v8);
    MEMORY[0x1E69E5920](v15);
  }

  sub_1B06B91B0();
  v7 = v29;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07F22C0();

  return v7;
}

uint64_t sub_1B08EC618(unsigned int a1, uint64_t a2)
{
  v167 = a1;
  v175 = a2;
  v144 = sub_1B070B278;
  v145 = sub_1B039BC08;
  v146 = sub_1B08F362C;
  v147 = sub_1B03B0DF8;
  v148 = sub_1B0398F5C;
  v149 = sub_1B0398F5C;
  v150 = sub_1B03991EC;
  v151 = sub_1B0398F5C;
  v152 = sub_1B0398F5C;
  v153 = sub_1B0399260;
  v154 = sub_1B070B278;
  v155 = sub_1B039BC08;
  v156 = sub_1B08F4D38;
  v157 = sub_1B039BCF8;
  v158 = sub_1B0398F5C;
  v159 = sub_1B0398F5C;
  v160 = sub_1B03991EC;
  v161 = sub_1B0398F5C;
  v162 = sub_1B0398F5C;
  v163 = sub_1B039BCEC;
  v164 = sub_1B08F27B0;
  v165 = sub_1B08F4F60;
  v196 = 0;
  v195 = 0;
  v194 = 0;
  v166 = 0;
  v168 = sub_1B0E439A8();
  v169 = *(v168 - 8);
  v170 = v168 - 8;
  v171 = (v169[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v167);
  v172 = v64 - v171;
  v173 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v174 = v64 - v173;
  v196 = v5;
  v195 = v6;
  v194 = v2;
  sub_1B08E4290();
  result = sub_1B0E454F8();
  if ((result & 1) == 0)
  {
    v8 = v174;
    v9 = sub_1B08DFDD8();
    v123 = v169[2];
    v124 = v169 + 2;
    v123(v8, v9, v168);
    v129 = 7;
    v125 = swift_allocObject();
    *(v125 + 16) = v167;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v130 = swift_allocObject();
    *(v130 + 16) = v175;
    v141 = sub_1B0E43988();
    v142 = sub_1B0E45908();
    v127 = 17;
    v132 = swift_allocObject();
    *(v132 + 16) = 0;
    v133 = swift_allocObject();
    *(v133 + 16) = 4;
    v128 = 32;
    v10 = swift_allocObject();
    v11 = v125;
    v126 = v10;
    *(v10 + 16) = v144;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v126;
    v134 = v12;
    *(v12 + 16) = v145;
    *(v12 + 24) = v13;
    v135 = swift_allocObject();
    *(v135 + 16) = 0;
    v136 = swift_allocObject();
    *(v136 + 16) = 8;
    v14 = swift_allocObject();
    v15 = v130;
    v131 = v14;
    *(v14 + 16) = v146;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v131;
    v138 = v16;
    *(v16 + 16) = v147;
    *(v16 + 24) = v17;
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v137 = sub_1B0E46A48();
    v139 = v18;

    v19 = v132;
    v20 = v139;
    *v139 = v148;
    v20[1] = v19;

    v21 = v133;
    v22 = v139;
    v139[2] = v149;
    v22[3] = v21;

    v23 = v134;
    v24 = v139;
    v139[4] = v150;
    v24[5] = v23;

    v25 = v135;
    v26 = v139;
    v139[6] = v151;
    v26[7] = v25;

    v27 = v136;
    v28 = v139;
    v139[8] = v152;
    v28[9] = v27;

    v29 = v138;
    v30 = v139;
    v139[10] = v153;
    v30[11] = v29;
    sub_1B0394964();

    if (os_log_type_enabled(v141, v142))
    {
      v31 = v166;
      v116 = sub_1B0E45D78();
      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v115 = 0;
      v117 = sub_1B03949A8(0, v114, v114);
      v118 = sub_1B03949A8(v115, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v119 = &v180;
      v180 = v116;
      v120 = &v179;
      v179 = v117;
      v121 = &v178;
      v178 = v118;
      sub_1B0394A48(0, &v180);
      sub_1B0394A48(2, v119);
      v176 = v148;
      v177 = v132;
      sub_1B03949FC(&v176, v119, v120, v121);
      v122 = v31;
      if (v31)
      {

        __break(1u);
      }

      else
      {
        v176 = v149;
        v177 = v133;
        sub_1B03949FC(&v176, &v180, &v179, &v178);
        v111 = 0;
        v176 = v150;
        v177 = v134;
        sub_1B03949FC(&v176, &v180, &v179, &v178);
        v110 = 0;
        v176 = v151;
        v177 = v135;
        sub_1B03949FC(&v176, &v180, &v179, &v178);
        v109 = 0;
        v176 = v152;
        v177 = v136;
        sub_1B03949FC(&v176, &v180, &v179, &v178);
        v108 = 0;
        v176 = v153;
        v177 = v138;
        sub_1B03949FC(&v176, &v180, &v179, &v178);
        v107 = 0;
        _os_log_impl(&dword_1B0389000, v141, v142, "[%u] Requesting %ld message(s) from legacy loader.", v116, 0x12u);
        v106 = 0;
        sub_1B03998A8(v117, 0, v114);
        sub_1B03998A8(v118, v106, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v112 = v107;
      }
    }

    else
    {
      v32 = v166;

      v112 = v32;
    }

    v33 = v172;
    v86 = v112;
    MEMORY[0x1E69E5920](v141);
    v87 = v169[1];
    v88 = v169 + 1;
    v87(v174, v168);
    v34 = sub_1B08DFDD8();
    v123(v33, v34, v168);
    v93 = 7;
    v89 = swift_allocObject();
    *(v89 + 16) = v167;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v94 = swift_allocObject();
    *(v94 + 16) = v175;
    v104 = sub_1B0E43988();
    v105 = sub_1B0E458D8();
    v91 = 17;
    v96 = swift_allocObject();
    *(v96 + 16) = 0;
    v97 = swift_allocObject();
    *(v97 + 16) = 4;
    v92 = 32;
    v35 = swift_allocObject();
    v36 = v89;
    v90 = v35;
    *(v35 + 16) = v154;
    *(v35 + 24) = v36;
    v37 = swift_allocObject();
    v38 = v90;
    v98 = v37;
    *(v37 + 16) = v155;
    *(v37 + 24) = v38;
    v99 = swift_allocObject();
    *(v99 + 16) = 34;
    v100 = swift_allocObject();
    *(v100 + 16) = 8;
    v39 = swift_allocObject();
    v40 = v94;
    v95 = v39;
    *(v39 + 16) = v156;
    *(v39 + 24) = v40;
    v41 = swift_allocObject();
    v42 = v95;
    v102 = v41;
    *(v41 + 16) = v157;
    *(v41 + 24) = v42;
    v101 = sub_1B0E46A48();
    v103 = v43;

    v44 = v96;
    v45 = v103;
    *v103 = v158;
    v45[1] = v44;

    v46 = v97;
    v47 = v103;
    v103[2] = v159;
    v47[3] = v46;

    v48 = v98;
    v49 = v103;
    v103[4] = v160;
    v49[5] = v48;

    v50 = v99;
    v51 = v103;
    v103[6] = v161;
    v51[7] = v50;

    v52 = v100;
    v53 = v103;
    v103[8] = v162;
    v53[9] = v52;

    v54 = v102;
    v55 = v103;
    v103[10] = v163;
    v55[11] = v54;
    sub_1B0394964();

    if (os_log_type_enabled(v104, v105))
    {
      v56 = v86;
      v78 = sub_1B0E45D78();
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v79 = sub_1B03949A8(0, v77, v77);
      v80 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v82 = &v185;
      v185 = v78;
      v83 = &v184;
      v184 = v79;
      v84 = &v183;
      v183 = v80;
      v81 = 2;
      sub_1B0394A48(2, &v185);
      sub_1B0394A48(v81, v82);
      v181 = v158;
      v182 = v96;
      sub_1B03949FC(&v181, v82, v83, v84);
      v85 = v56;
      if (v56)
      {

        __break(1u);
      }

      else
      {
        v181 = v159;
        v182 = v97;
        sub_1B03949FC(&v181, &v185, &v184, &v183);
        v75 = 0;
        v181 = v160;
        v182 = v98;
        sub_1B03949FC(&v181, &v185, &v184, &v183);
        v74 = 0;
        v181 = v161;
        v182 = v99;
        sub_1B03949FC(&v181, &v185, &v184, &v183);
        v73 = 0;
        v181 = v162;
        v182 = v100;
        sub_1B03949FC(&v181, &v185, &v184, &v183);
        v72 = 0;
        v181 = v163;
        v182 = v102;
        sub_1B03949FC(&v181, &v185, &v184, &v183);
        v71 = 0;
        _os_log_impl(&dword_1B0389000, v104, v105, "[%u] {%{public}s}", v78, 0x12u);
        sub_1B03998A8(v79, 0, v77);
        sub_1B03998A8(v80, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v76 = v71;
      }
    }

    else
    {
      v57 = v86;

      v76 = v57;
    }

    v58 = v76;
    MEMORY[0x1E69E5920](v104);
    v87(v172, v168);
    v68 = *(v143 + 32);
    swift_unknownObjectRetain();
    swift_getObjectType();
    v193 = v175;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
    v59 = sub_1B08F4ED8();
    result = sub_1B039CA88(v164, 0, v69, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v59, MEMORY[0x1E69E7410], v113);
    v70 = result;
    if (v58)
    {
      __break(1u);
    }

    else
    {
      v64[1] = v70;
      v67 = sub_1B0E451A8();

      v64[4] = 7;
      v65 = swift_allocObject();
      v64[2] = v65 + 16;

      v64[3] = v143;
      swift_weakInit();

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v60 = swift_allocObject();
      v61 = v167;
      v62 = v175;
      v63 = v165;
      *(v60 + 16) = v65;
      *(v60 + 24) = v61;
      *(v60 + 32) = v62;
      v191 = v63;
      v192 = v60;
      aBlock = MEMORY[0x1E69E9820];
      v187 = 1107296256;
      v188 = 0;
      v189 = sub_1B08F3218;
      v190 = &block_descriptor_382;
      v66 = _Block_copy(&aBlock);

      [v68 loadFullMessagesForMessageIds:v67 completion:v66];
      _Block_release(v66);
      MEMORY[0x1E69E5920](v67);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1B08EDD3C(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v158 = a1;
  v161 = a2;
  v159 = a3;
  v146 = 0;
  v162 = sub_1B070B278;
  v164 = sub_1B039BC08;
  v166 = sub_1B08F4FD8;
  v168 = sub_1B03B0DF8;
  v172 = sub_1B08F4FE0;
  v176 = sub_1B039BCF8;
  v178 = sub_1B0398F5C;
  v180 = sub_1B0398F5C;
  v182 = sub_1B03991EC;
  v184 = sub_1B0398F5C;
  v186 = sub_1B0398F5C;
  v188 = sub_1B0399260;
  v190 = sub_1B0398F5C;
  v192 = sub_1B0398F5C;
  v195 = sub_1B039BCEC;
  v136 = sub_1B070B278;
  v137 = sub_1B039BC08;
  v138 = sub_1B08F4FE8;
  v139 = sub_1B039BCF8;
  v140 = sub_1B0398F5C;
  v141 = sub_1B0398F5C;
  v142 = sub_1B03991EC;
  v143 = sub_1B0398F5C;
  v144 = sub_1B0398F5C;
  v145 = sub_1B039BCEC;
  v224 = 0;
  v223 = 0;
  v222 = 0;
  v221 = 0;
  v220 = 0;
  memset(__b, 0, sizeof(__b));
  v212 = 0;
  v213 = 0;
  v214 = 0;
  v211 = 0;
  v147 = 0;
  v155 = sub_1B0E439A8();
  v153 = *(v155 - 8);
  v154 = v155 - 8;
  v149 = v153[8];
  v148 = (v149 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v158);
  v150 = &v68 - v148;
  v151 = v148;
  MEMORY[0x1EEE9AC00](v3);
  v4 = &v68 - v151;
  v152 = &v68 - v151;
  v224 = v5;
  v223 = v6;
  v222 = v7;
  v221 = v8;
  v220 = v6;
  v9 = sub_1B08DFDD8();
  v156 = v153[2];
  v157 = v153 + 2;
  v156(v4, v9, v155);
  v174 = 7;
  v163 = swift_allocObject();
  *(v163 + 16) = v158;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v160 = 24;
  v167 = swift_allocObject();
  *(v167 + 16) = v159;
  v175 = swift_allocObject();
  *(v175 + 16) = v161;
  v199 = sub_1B0E43988();
  v200 = sub_1B0E45908();
  v170 = 17;
  v179 = swift_allocObject();
  *(v179 + 16) = 0;
  v181 = swift_allocObject();
  *(v181 + 16) = 4;
  v173 = 32;
  v10 = swift_allocObject();
  v11 = v163;
  v165 = v10;
  *(v10 + 16) = v162;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v165;
  v183 = v12;
  *(v12 + 16) = v164;
  *(v12 + 24) = v13;
  v185 = swift_allocObject();
  *(v185 + 16) = 0;
  v187 = swift_allocObject();
  v171 = 8;
  *(v187 + 16) = 8;
  v14 = swift_allocObject();
  v15 = v167;
  v169 = v14;
  *(v14 + 16) = v166;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v169;
  v189 = v16;
  *(v16 + 16) = v168;
  *(v16 + 24) = v17;
  v191 = swift_allocObject();
  *(v191 + 16) = 32;
  v193 = swift_allocObject();
  *(v193 + 16) = v171;
  v18 = swift_allocObject();
  v19 = v175;
  v177 = v18;
  *(v18 + 16) = v172;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v177;
  v196 = v20;
  *(v20 + 16) = v176;
  *(v20 + 24) = v21;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v194 = sub_1B0E46A48();
  v197 = v22;

  v23 = v179;
  v24 = v197;
  *v197 = v178;
  v24[1] = v23;

  v25 = v181;
  v26 = v197;
  v197[2] = v180;
  v26[3] = v25;

  v27 = v183;
  v28 = v197;
  v197[4] = v182;
  v28[5] = v27;

  v29 = v185;
  v30 = v197;
  v197[6] = v184;
  v30[7] = v29;

  v31 = v187;
  v32 = v197;
  v197[8] = v186;
  v32[9] = v31;

  v33 = v189;
  v34 = v197;
  v197[10] = v188;
  v34[11] = v33;

  v35 = v191;
  v36 = v197;
  v197[12] = v190;
  v36[13] = v35;

  v37 = v193;
  v38 = v197;
  v197[14] = v192;
  v38[15] = v37;

  v39 = v196;
  v40 = v197;
  v197[16] = v195;
  v40[17] = v39;
  sub_1B0394964();

  if (os_log_type_enabled(v199, v200))
  {
    v41 = v147;
    v129 = sub_1B0E45D78();
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v130 = sub_1B03949A8(0, v128, v128);
    v131 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v132 = &v205;
    v205 = v129;
    v133 = &v204;
    v204 = v130;
    v134 = &v203;
    v203 = v131;
    sub_1B0394A48(2, &v205);
    sub_1B0394A48(3, v132);
    v201 = v178;
    v202 = v179;
    sub_1B03949FC(&v201, v132, v133, v134);
    v135 = v41;
    if (v41)
    {

      __break(1u);
    }

    else
    {
      v201 = v180;
      v202 = v181;
      sub_1B03949FC(&v201, &v205, &v204, &v203);
      v126 = 0;
      v201 = v182;
      v202 = v183;
      sub_1B03949FC(&v201, &v205, &v204, &v203);
      v125 = 0;
      v201 = v184;
      v202 = v185;
      sub_1B03949FC(&v201, &v205, &v204, &v203);
      v124 = 0;
      v201 = v186;
      v202 = v187;
      sub_1B03949FC(&v201, &v205, &v204, &v203);
      v123 = 0;
      v201 = v188;
      v202 = v189;
      sub_1B03949FC(&v201, &v205, &v204, &v203);
      v122 = 0;
      v201 = v190;
      v202 = v191;
      sub_1B03949FC(&v201, &v205, &v204, &v203);
      v121 = 0;
      v201 = v192;
      v202 = v193;
      sub_1B03949FC(&v201, &v205, &v204, &v203);
      v120 = 0;
      v201 = v195;
      v202 = v196;
      sub_1B03949FC(&v201, &v205, &v204, &v203);
      v119 = 0;
      _os_log_impl(&dword_1B0389000, v199, v200, "[%u] Requesting %ld message(s) from task manager %s.", v129, 0x1Cu);
      sub_1B03998A8(v130, 0, v128);
      sub_1B03998A8(v131, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();

      v127 = v119;
    }
  }

  else
  {
    v42 = v147;

    v127 = v42;
  }

  v43 = v150;
  v99 = v127;
  MEMORY[0x1E69E5920](v199);
  v100 = v153[1];
  v101 = v153 + 1;
  v100(v152, v155);
  v44 = sub_1B08DFDD8();
  v156(v43, v44, v155);
  v106 = 7;
  v102 = swift_allocObject();
  *(v102 + 16) = v158;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v107 = swift_allocObject();
  *(v107 + 16) = v159;
  v117 = sub_1B0E43988();
  v118 = sub_1B0E458D8();
  v104 = 17;
  v109 = swift_allocObject();
  *(v109 + 16) = 0;
  v110 = swift_allocObject();
  *(v110 + 16) = 4;
  v105 = 32;
  v45 = swift_allocObject();
  v46 = v102;
  v103 = v45;
  *(v45 + 16) = v136;
  *(v45 + 24) = v46;
  v47 = swift_allocObject();
  v48 = v103;
  v111 = v47;
  *(v47 + 16) = v137;
  *(v47 + 24) = v48;
  v112 = swift_allocObject();
  *(v112 + 16) = 34;
  v113 = swift_allocObject();
  *(v113 + 16) = 8;
  v49 = swift_allocObject();
  v50 = v107;
  v108 = v49;
  *(v49 + 16) = v138;
  *(v49 + 24) = v50;
  v51 = swift_allocObject();
  v52 = v108;
  v115 = v51;
  *(v51 + 16) = v139;
  *(v51 + 24) = v52;
  v114 = sub_1B0E46A48();
  v116 = v53;

  v54 = v109;
  v55 = v116;
  *v116 = v140;
  v55[1] = v54;

  v56 = v110;
  v57 = v116;
  v116[2] = v141;
  v57[3] = v56;

  v58 = v111;
  v59 = v116;
  v116[4] = v142;
  v59[5] = v58;

  v60 = v112;
  v61 = v116;
  v116[6] = v143;
  v61[7] = v60;

  v62 = v113;
  v63 = v116;
  v116[8] = v144;
  v63[9] = v62;

  v64 = v115;
  v65 = v116;
  v116[10] = v145;
  v65[11] = v64;
  sub_1B0394964();

  if (os_log_type_enabled(v117, v118))
  {
    v66 = v99;
    v91 = sub_1B0E45D78();
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v92 = sub_1B03949A8(0, v90, v90);
    v93 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v95 = &v210;
    v210 = v91;
    v96 = &v209;
    v209 = v92;
    v97 = &v208;
    v208 = v93;
    v94 = 2;
    sub_1B0394A48(2, &v210);
    sub_1B0394A48(v94, v95);
    v206 = v140;
    v207 = v109;
    sub_1B03949FC(&v206, v95, v96, v97);
    v98 = v66;
    if (v66)
    {

      __break(1u);
    }

    else
    {
      v206 = v141;
      v207 = v110;
      sub_1B03949FC(&v206, &v210, &v209, &v208);
      v88 = 0;
      v206 = v142;
      v207 = v111;
      sub_1B03949FC(&v206, &v210, &v209, &v208);
      v87 = 0;
      v206 = v143;
      v207 = v112;
      sub_1B03949FC(&v206, &v210, &v209, &v208);
      v86 = 0;
      v206 = v144;
      v207 = v113;
      sub_1B03949FC(&v206, &v210, &v209, &v208);
      v85 = 0;
      v206 = v145;
      v207 = v115;
      sub_1B03949FC(&v206, &v210, &v209, &v208);
      v84 = 0;
      _os_log_impl(&dword_1B0389000, v117, v118, "[%u] {%{public}s}", v91, 0x12u);
      sub_1B03998A8(v92, 0, v90);
      sub_1B03998A8(v93, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();

      v89 = v84;
    }
  }

  else
  {
    v67 = v99;

    v89 = v67;
  }

  v82 = v89;
  MEMORY[0x1E69E5920](v117);
  v100(v150, v155);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v80 = sub_1B07F1AFC();
  sub_1B08E4290();
  v81 = &v225;
  sub_1B0E445C8();
  memcpy(__b, v81, sizeof(__b));
  for (i = v82; ; i = v75)
  {
    v75 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2E08, &qword_1B0EA03B0);
    sub_1B0E446D8();
    v76 = v215;
    v77 = v216;
    v78 = v217;
    v79 = v218;
    if (!v216)
    {
      break;
    }

    v71 = v76;
    v72 = v77;
    v73 = v78;
    v74 = v79;
    v69 = v79;
    v70 = v77;
    v212 = v76;
    v213 = v77;
    v214 = v78;
    v211 = v79;
    sub_1B08EF338(v158, v161, v76, v77, v78, v79);
    MEMORY[0x1E69E5920](v69);
  }

  sub_1B06B91B0();
}

uint64_t sub_1B08EF08C(uint64_t a1)
{
  sub_1B07F1AFC();
  sub_1B08E4290();
  return sub_1B0E44628();
}

uint64_t sub_1B08EF0D8(uint64_t a1)
{
  v5[0] = sub_1B0E46A28();
  v5[1] = v1;
  v2 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v2);

  sub_1B0E469E8();
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v5);
  return sub_1B0E44C88();
}

uint64_t sub_1B08EF1C4()
{
  sub_1B07F1AFC();
  sub_1B08E4290();
  v7 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2EA8, &qword_1B0EA05E8);
  v0 = sub_1B08F65C8();
  v2 = sub_1B039CA88(sub_1B08EBD18, 0, v4, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v0, MEMORY[0x1E69E7410], v5);
  sub_1B039E440(&v7);
  v6 = v2;
  sub_1B0E44838();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v3 = sub_1B0E448E8();

  sub_1B039E440(&v6);
  return v3;
}

uint64_t sub_1B08EF338(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v17 = *(v7 + 16);
  MEMORY[0x1E69E5928](v17);
  v16 = swift_allocObject();

  swift_weakInit();

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](a6);
  v15 = swift_allocObject();
  *(v15 + 16) = v16;
  *(v15 + 24) = a1;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  *(v15 + 48) = a4;
  *(v15 + 56) = a5;
  *(v15 + 64) = a6;
  sub_1B0A47F1C(a6, v17, sub_1B08F4FF0, v15);

  return MEMORY[0x1E69E5920](v17);
}

uint64_t sub_1B08EF4F0(const void *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v19 = a1;
  v18 = a2 + 16;
  v17 = a3;
  v16[8] = a4;
  v16[5] = a5;
  v16[6] = a6;
  v16[7] = a7;
  v16[4] = a8;
  swift_beginAccess();
  v16[0] = swift_weakLoadStrong();
  if (v16[0])
  {

    sub_1B0391AD4(v16);
    swift_endAccess();
    sub_1B08EF610(a3, a4, a5, a6, a7, a8, a1);
  }

  else
  {
    sub_1B0391AD4(v16);
    return swift_endAccess();
  }
}

uint64_t sub_1B08EF610(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, const void *a7)
{
  v320 = a1;
  v319 = a2;
  v314 = a3;
  v315 = a4;
  v316 = a5;
  v317 = a6;
  v318 = a7;
  v251 = sub_1B070B278;
  v252 = sub_1B039BC08;
  v253 = sub_1B08F4FE0;
  v254 = sub_1B039BCF8;
  v255 = sub_1B08F5138;
  v256 = sub_1B06BCD8C;
  v257 = sub_1B0398F5C;
  v258 = sub_1B0398F5C;
  v259 = sub_1B03991EC;
  v260 = sub_1B0398F5C;
  v261 = sub_1B0398F5C;
  v262 = sub_1B039BCEC;
  v263 = sub_1B0398F5C;
  v264 = sub_1B0398F5C;
  v265 = sub_1B03992D4;
  v266 = sub_1B070B278;
  v267 = sub_1B039BC08;
  v268 = sub_1B08F4FE0;
  v269 = sub_1B039BCF8;
  v270 = sub_1B08F5138;
  v271 = sub_1B06BCD8C;
  v272 = sub_1B0398F5C;
  v273 = sub_1B0398F5C;
  v274 = sub_1B03991EC;
  v275 = sub_1B0398F5C;
  v276 = sub_1B0398F5C;
  v277 = sub_1B039BCEC;
  v278 = sub_1B0398F5C;
  v279 = sub_1B0398F5C;
  v280 = sub_1B03992D4;
  v281 = sub_1B070B278;
  v282 = sub_1B039BC08;
  v283 = sub_1B08F4FE0;
  v284 = sub_1B039BCF8;
  v285 = sub_1B08F5138;
  v286 = sub_1B06BCD8C;
  v287 = sub_1B0398F5C;
  v288 = sub_1B0398F5C;
  v289 = sub_1B03991EC;
  v290 = sub_1B0398F5C;
  v291 = sub_1B0398F5C;
  v292 = sub_1B039BCEC;
  v293 = sub_1B0398F5C;
  v294 = sub_1B0398F5C;
  v295 = sub_1B03992D4;
  v359 = 0;
  v358 = 0;
  v357 = 0;
  v354 = 0;
  v355 = 0;
  v356 = 0;
  v353 = 0;
  v352 = 0;
  v351 = 0;
  v296 = 0;
  v336 = 0;
  v308 = 0;
  v297 = sub_1B0E439A8();
  v298 = *(v297 - 8);
  v299 = v297 - 8;
  v300 = (*(v298 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v297);
  v301 = v131 - v300;
  v302 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v131 - v300);
  v303 = v131 - v302;
  v304 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v131 - v302);
  v305 = v131 - v304;
  v306 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2E10, &qword_1B0E9B598) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v308);
  v307 = v131 - v306;
  v309 = type metadata accessor for Message(v10);
  v310 = *(v309 - 8);
  v311 = v309 - 8;
  v312 = (*(v310 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v308);
  v313 = v131 - v312;
  v359 = v131 - v312;
  v325 = sub_1B0E44468();
  v323 = *(v325 - 8);
  v324 = v325 - 8;
  v321 = (*(v323 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v320);
  v326 = (v131 - v321);
  v358 = v11;
  v357 = v12;
  v354 = v13;
  v355 = v14;
  v356 = v15;
  v353 = v16;
  v352 = v17;
  v351 = v7;

  v322 = *(v7 + 16);
  MEMORY[0x1E69E5928](v322);
  v18 = v323;
  *v326 = v322;
  (*(v18 + 104))();
  v327 = sub_1B0E44488();
  (*(v323 + 8))(v326, v325);
  result = v327;
  if (v327)
  {

    sub_1B08F5010(v318, v307);
    if ((*(v310 + 48))(v307, 1, v309) == 1)
    {
      v94 = v301;
      sub_1B07AF920(v307);
      v95 = sub_1B08DFDD8();
      (*(v298 + 16))(v94, v95, v297);
      v147 = 7;
      v140 = swift_allocObject();
      *(v140 + 16) = v320;
      v142 = swift_allocObject();
      *(v142 + 16) = v319;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v96 = swift_allocObject();
      v97 = v315;
      v98 = v316;
      v148 = v96;
      v96[2] = v314;
      v96[3] = v97;
      v96[4] = v98;
      v162 = sub_1B0E43988();
      v163 = sub_1B0E458E8();
      v144 = 17;
      v150 = swift_allocObject();
      *(v150 + 16) = 0;
      v151 = swift_allocObject();
      *(v151 + 16) = 4;
      v146 = 32;
      v99 = swift_allocObject();
      v100 = v140;
      v141 = v99;
      *(v99 + 16) = v251;
      *(v99 + 24) = v100;
      v101 = swift_allocObject();
      v102 = v141;
      v152 = v101;
      *(v101 + 16) = v252;
      *(v101 + 24) = v102;
      v153 = swift_allocObject();
      *(v153 + 16) = 32;
      v154 = swift_allocObject();
      v145 = 8;
      *(v154 + 16) = 8;
      v103 = swift_allocObject();
      v104 = v142;
      v143 = v103;
      *(v103 + 16) = v253;
      *(v103 + 24) = v104;
      v105 = swift_allocObject();
      v106 = v143;
      v155 = v105;
      *(v105 + 16) = v254;
      *(v105 + 24) = v106;
      v156 = swift_allocObject();
      *(v156 + 16) = 0;
      v157 = swift_allocObject();
      *(v157 + 16) = v145;
      v107 = swift_allocObject();
      v108 = v148;
      v149 = v107;
      *(v107 + 16) = v255;
      *(v107 + 24) = v108;
      v109 = swift_allocObject();
      v110 = v149;
      v159 = v109;
      *(v109 + 16) = v256;
      *(v109 + 24) = v110;
      v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v158 = sub_1B0E46A48();
      v160 = v111;

      v112 = v150;
      v113 = v160;
      *v160 = v257;
      v113[1] = v112;

      v114 = v151;
      v115 = v160;
      v160[2] = v258;
      v115[3] = v114;

      v116 = v152;
      v117 = v160;
      v160[4] = v259;
      v117[5] = v116;

      v118 = v153;
      v119 = v160;
      v160[6] = v260;
      v119[7] = v118;

      v120 = v154;
      v121 = v160;
      v160[8] = v261;
      v121[9] = v120;

      v122 = v155;
      v123 = v160;
      v160[10] = v262;
      v123[11] = v122;

      v124 = v156;
      v125 = v160;
      v160[12] = v263;
      v125[13] = v124;

      v126 = v157;
      v127 = v160;
      v160[14] = v264;
      v127[15] = v126;

      v128 = v159;
      v129 = v160;
      v160[16] = v265;
      v129[17] = v128;
      sub_1B0394964();

      if (os_log_type_enabled(v162, v163))
      {
        v130 = v296;
        v133 = sub_1B0E45D78();
        v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v134 = sub_1B03949A8(0, v132, v132);
        v135 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v136 = &v348;
        v348 = v133;
        v137 = &v347;
        v347 = v134;
        v138 = &v346;
        v346 = v135;
        sub_1B0394A48(2, &v348);
        sub_1B0394A48(3, v136);
        v344 = v257;
        v345 = v150;
        sub_1B03949FC(&v344, v136, v137, v138);
        v139 = v130;
        if (v130)
        {

          __break(1u);
        }

        else
        {
          v344 = v258;
          v345 = v151;
          sub_1B03949FC(&v344, &v348, &v347, &v346);
          v131[8] = 0;
          v344 = v259;
          v345 = v152;
          sub_1B03949FC(&v344, &v348, &v347, &v346);
          v131[7] = 0;
          v344 = v260;
          v345 = v153;
          sub_1B03949FC(&v344, &v348, &v347, &v346);
          v131[6] = 0;
          v344 = v261;
          v345 = v154;
          sub_1B03949FC(&v344, &v348, &v347, &v346);
          v131[5] = 0;
          v344 = v262;
          v345 = v155;
          sub_1B03949FC(&v344, &v348, &v347, &v346);
          v131[4] = 0;
          v344 = v263;
          v345 = v156;
          sub_1B03949FC(&v344, &v348, &v347, &v346);
          v131[3] = 0;
          v344 = v264;
          v345 = v157;
          sub_1B03949FC(&v344, &v348, &v347, &v346);
          v131[2] = 0;
          v344 = v265;
          v345 = v159;
          sub_1B03949FC(&v344, &v348, &v347, &v346);
          _os_log_impl(&dword_1B0389000, v162, v163, "[%u] Task manager %s failed to download message %lld.", v133, 0x1Cu);
          sub_1B03998A8(v134, 0, v132);
          sub_1B03998A8(v135, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v162);
      (*(v298 + 8))(v301, v297);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v131[0] = v350;
      v350[0] = v314;
      v350[1] = v315;
      v350[2] = v316;
      v131[1] = &v349;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
      sub_1B0E454D8();
      swift_endAccess();

      return sub_1B08F1984(v250);
    }

    else
    {
      (*(v310 + 32))(v313, v307, v309);
      v249 = sub_1B08F19DC(v317, v313);
      if (v249)
      {
        v248 = v249;
        v20 = v305;
        v223 = v249;
        v336 = v249;
        v21 = sub_1B08DFDD8();
        (*(v298 + 16))(v20, v21, v297);
        v231 = 7;
        v224 = swift_allocObject();
        *(v224 + 16) = v320;
        v226 = swift_allocObject();
        *(v226 + 16) = v319;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v22 = swift_allocObject();
        v23 = v315;
        v24 = v316;
        v232 = v22;
        v22[2] = v314;
        v22[3] = v23;
        v22[4] = v24;
        v246 = sub_1B0E43988();
        v247 = sub_1B0E45908();
        v228 = 17;
        v234 = swift_allocObject();
        *(v234 + 16) = 0;
        v235 = swift_allocObject();
        *(v235 + 16) = 4;
        v230 = 32;
        v25 = swift_allocObject();
        v26 = v224;
        v225 = v25;
        *(v25 + 16) = v266;
        *(v25 + 24) = v26;
        v27 = swift_allocObject();
        v28 = v225;
        v236 = v27;
        *(v27 + 16) = v267;
        *(v27 + 24) = v28;
        v237 = swift_allocObject();
        *(v237 + 16) = 32;
        v238 = swift_allocObject();
        v229 = 8;
        *(v238 + 16) = 8;
        v29 = swift_allocObject();
        v30 = v226;
        v227 = v29;
        *(v29 + 16) = v268;
        *(v29 + 24) = v30;
        v31 = swift_allocObject();
        v32 = v227;
        v239 = v31;
        *(v31 + 16) = v269;
        *(v31 + 24) = v32;
        v240 = swift_allocObject();
        *(v240 + 16) = 0;
        v241 = swift_allocObject();
        *(v241 + 16) = v229;
        v33 = swift_allocObject();
        v34 = v232;
        v233 = v33;
        *(v33 + 16) = v270;
        *(v33 + 24) = v34;
        v35 = swift_allocObject();
        v36 = v233;
        v243 = v35;
        *(v35 + 16) = v271;
        *(v35 + 24) = v36;
        v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v242 = sub_1B0E46A48();
        v244 = v37;

        v38 = v234;
        v39 = v244;
        *v244 = v272;
        v39[1] = v38;

        v40 = v235;
        v41 = v244;
        v244[2] = v273;
        v41[3] = v40;

        v42 = v236;
        v43 = v244;
        v244[4] = v274;
        v43[5] = v42;

        v44 = v237;
        v45 = v244;
        v244[6] = v275;
        v45[7] = v44;

        v46 = v238;
        v47 = v244;
        v244[8] = v276;
        v47[9] = v46;

        v48 = v239;
        v49 = v244;
        v244[10] = v277;
        v49[11] = v48;

        v50 = v240;
        v51 = v244;
        v244[12] = v278;
        v51[13] = v50;

        v52 = v241;
        v53 = v244;
        v244[14] = v279;
        v53[15] = v52;

        v54 = v243;
        v55 = v244;
        v244[16] = v280;
        v55[17] = v54;
        sub_1B0394964();

        if (os_log_type_enabled(v246, v247))
        {
          v56 = v296;
          v216 = sub_1B0E45D78();
          v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v217 = sub_1B03949A8(0, v215, v215);
          v218 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v219 = &v332;
          v332 = v216;
          v220 = &v331;
          v331 = v217;
          v221 = &v330;
          v330 = v218;
          sub_1B0394A48(2, &v332);
          sub_1B0394A48(3, v219);
          v328 = v272;
          v329 = v234;
          sub_1B03949FC(&v328, v219, v220, v221);
          v222 = v56;
          if (v56)
          {

            __break(1u);
          }

          else
          {
            v328 = v273;
            v329 = v235;
            sub_1B03949FC(&v328, &v332, &v331, &v330);
            v214 = 0;
            v328 = v274;
            v329 = v236;
            sub_1B03949FC(&v328, &v332, &v331, &v330);
            v213 = 0;
            v328 = v275;
            v329 = v237;
            sub_1B03949FC(&v328, &v332, &v331, &v330);
            v212 = 0;
            v328 = v276;
            v329 = v238;
            sub_1B03949FC(&v328, &v332, &v331, &v330);
            v211 = 0;
            v328 = v277;
            v329 = v239;
            sub_1B03949FC(&v328, &v332, &v331, &v330);
            v210 = 0;
            v328 = v278;
            v329 = v240;
            sub_1B03949FC(&v328, &v332, &v331, &v330);
            v209 = 0;
            v328 = v279;
            v329 = v241;
            sub_1B03949FC(&v328, &v332, &v331, &v330);
            v208 = 0;
            v328 = v280;
            v329 = v243;
            sub_1B03949FC(&v328, &v332, &v331, &v330);
            _os_log_impl(&dword_1B0389000, v246, v247, "[%u] Task manager %s completed a message %lld.", v216, 0x1Cu);
            sub_1B03998A8(v217, 0, v215);
            sub_1B03998A8(v218, 1, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v246);
        (*(v298 + 8))(v305, v297);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        swift_unknownObjectRetain();
        v206 = &v335;
        v335 = v223;
        v205 = v334;
        v334[0] = v314;
        v334[1] = v315;
        v334[2] = v316;
        v207 = &v333;
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2DA8, &qword_1B0EA0380);
        sub_1B0E44788();
        swift_endAccess();
        swift_unknownObjectRelease();
        (*(v310 + 8))(v313, v309);
        return sub_1B08F1984(v250);
      }

      else
      {
        v57 = v303;
        v58 = sub_1B08DFDD8();
        (*(v298 + 16))(v57, v58, v297);
        v188 = 7;
        v181 = swift_allocObject();
        *(v181 + 16) = v320;
        v183 = swift_allocObject();
        *(v183 + 16) = v319;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v59 = swift_allocObject();
        v60 = v315;
        v61 = v316;
        v189 = v59;
        v59[2] = v314;
        v59[3] = v60;
        v59[4] = v61;
        v203 = sub_1B0E43988();
        v204 = sub_1B0E458E8();
        v185 = 17;
        v191 = swift_allocObject();
        *(v191 + 16) = 0;
        v192 = swift_allocObject();
        *(v192 + 16) = 4;
        v187 = 32;
        v62 = swift_allocObject();
        v63 = v181;
        v182 = v62;
        *(v62 + 16) = v281;
        *(v62 + 24) = v63;
        v64 = swift_allocObject();
        v65 = v182;
        v193 = v64;
        *(v64 + 16) = v282;
        *(v64 + 24) = v65;
        v194 = swift_allocObject();
        *(v194 + 16) = 32;
        v195 = swift_allocObject();
        v186 = 8;
        *(v195 + 16) = 8;
        v66 = swift_allocObject();
        v67 = v183;
        v184 = v66;
        *(v66 + 16) = v283;
        *(v66 + 24) = v67;
        v68 = swift_allocObject();
        v69 = v184;
        v196 = v68;
        *(v68 + 16) = v284;
        *(v68 + 24) = v69;
        v197 = swift_allocObject();
        *(v197 + 16) = 0;
        v198 = swift_allocObject();
        *(v198 + 16) = v186;
        v70 = swift_allocObject();
        v71 = v189;
        v190 = v70;
        *(v70 + 16) = v285;
        *(v70 + 24) = v71;
        v72 = swift_allocObject();
        v73 = v190;
        v200 = v72;
        *(v72 + 16) = v286;
        *(v72 + 24) = v73;
        v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v199 = sub_1B0E46A48();
        v201 = v74;

        v75 = v191;
        v76 = v201;
        *v201 = v287;
        v76[1] = v75;

        v77 = v192;
        v78 = v201;
        v201[2] = v288;
        v78[3] = v77;

        v79 = v193;
        v80 = v201;
        v201[4] = v289;
        v80[5] = v79;

        v81 = v194;
        v82 = v201;
        v201[6] = v290;
        v82[7] = v81;

        v83 = v195;
        v84 = v201;
        v201[8] = v291;
        v84[9] = v83;

        v85 = v196;
        v86 = v201;
        v201[10] = v292;
        v86[11] = v85;

        v87 = v197;
        v88 = v201;
        v201[12] = v293;
        v88[13] = v87;

        v89 = v198;
        v90 = v201;
        v201[14] = v294;
        v90[15] = v89;

        v91 = v200;
        v92 = v201;
        v201[16] = v295;
        v92[17] = v91;
        sub_1B0394964();

        if (os_log_type_enabled(v203, v204))
        {
          v93 = v296;
          v174 = sub_1B0E45D78();
          v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v175 = sub_1B03949A8(0, v173, v173);
          v176 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v177 = &v341;
          v341 = v174;
          v178 = &v340;
          v340 = v175;
          v179 = &v339;
          v339 = v176;
          sub_1B0394A48(2, &v341);
          sub_1B0394A48(3, v177);
          v337 = v287;
          v338 = v191;
          sub_1B03949FC(&v337, v177, v178, v179);
          v180 = v93;
          if (v93)
          {

            __break(1u);
          }

          else
          {
            v337 = v288;
            v338 = v192;
            sub_1B03949FC(&v337, &v341, &v340, &v339);
            v172 = 0;
            v337 = v289;
            v338 = v193;
            sub_1B03949FC(&v337, &v341, &v340, &v339);
            v171 = 0;
            v337 = v290;
            v338 = v194;
            sub_1B03949FC(&v337, &v341, &v340, &v339);
            v170 = 0;
            v337 = v291;
            v338 = v195;
            sub_1B03949FC(&v337, &v341, &v340, &v339);
            v169 = 0;
            v337 = v292;
            v338 = v196;
            sub_1B03949FC(&v337, &v341, &v340, &v339);
            v168 = 0;
            v337 = v293;
            v338 = v197;
            sub_1B03949FC(&v337, &v341, &v340, &v339);
            v167 = 0;
            v337 = v294;
            v338 = v198;
            sub_1B03949FC(&v337, &v341, &v340, &v339);
            v166 = 0;
            v337 = v295;
            v338 = v200;
            sub_1B03949FC(&v337, &v341, &v340, &v339);
            _os_log_impl(&dword_1B0389000, v203, v204, "[%u] Task manager %s: Unable to parse message %lld.", v174, 0x1Cu);
            sub_1B03998A8(v175, 0, v173);
            sub_1B03998A8(v176, 1, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v203);
        (*(v298 + 8))(v303, v297);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v164 = v343;
        v343[0] = v314;
        v343[1] = v315;
        v343[2] = v316;
        v165 = &v342;
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
        sub_1B0E454D8();
        swift_endAccess();

        (*(v310 + 8))(v313, v309);
        return sub_1B08F1984(v250);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B08F1984(uint64_t a1)
{
  swift_beginAccess();
  sub_1B08E4AE0();
  return swift_endAccess();
}

id sub_1B08F19DC(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v6 = *(v2 + 72);

  swift_endAccess();
  v7 = sub_1B08F1AAC(a1, a2, v6);

  return v7;
}

id sub_1B08F1AAC(void *a1, uint64_t a2, uint64_t a3)
{
  v58 = a1;
  v47 = a2;
  v46 = a3;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v63 = 0;
  v64 = 0;
  v44 = 0;
  v27 = type metadata accessor for Message(0);
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v17 - v30;
  v32 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2E20, &qword_1B0EA03B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44);
  v33 = &v17 - v32;
  v34 = type metadata accessor for WatchOSRender.Message(v4);
  v35 = *(v34 - 8);
  v36 = v34 - 8;
  v37 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v17 - v37;
  v71 = &v17 - v37;
  v39 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2E28, &qword_1B0EA03C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44);
  v61 = &v17 - v39;
  v62 = type metadata accessor for WatchOSRender.Message.InfoFromLibrary(v5);
  v59 = *(v62 - 8);
  v60 = v62 - 8;
  v40 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44);
  v41 = &v17 - v40;
  v42 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v17 - v42;
  v70 = &v17 - v42;
  v53 = sub_1B0E439A8();
  v51 = *(v53 - 8);
  v52 = v53 - 8;
  v45 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44);
  v56 = &v17 - v45;
  v48 = (*(*(_s6LoggerVMa_2(v8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v58);
  v49 = &v17 - v48;
  v50 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v17 - v50;
  v69 = &v17 - v50;
  v68 = v11;
  v67 = v12;
  v66 = v13;
  v65 = v3;
  v14 = sub_1B08DFDD8();
  (*(v51 + 16))(v56, v14, v53);
  v54 = [v58 persistedMessageID];
  v57 = [v54 databaseID];
  MEMORY[0x1E69E5920](v54);
  sub_1B0A6F674(v56, v57, v55);
  MEMORY[0x1E69E5928](v58);
  sub_1B0A7B704(v58, v61);
  if ((*(v59 + 48))(v61, 1, v62) == 1)
  {
    sub_1B08F5148(v61);
LABEL_9:
    sub_1B039480C(v55);
    return 0;
  }

  sub_1B08F524C(v61, v43);
  v23 = [v58 persistedMessageID];
  v24 = [v23 databaseID];
  MEMORY[0x1E69E5920](v23);
  v25 = sub_1B08F2210(v47, v43, v24, v46, v55);
  v26 = v15;
  if (!v15)
  {
    sub_1B08F533C(v43);
    goto LABEL_9;
  }

  v21 = v25;
  v22 = v26;
  v20 = v26;
  v19 = v25;
  v63 = v25;
  v64 = v26;
  (*(v28 + 16))(v31, v47, v27);
  sub_1B08F53FC(v43, v41);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  sub_1B08F5590(v55, v49);
  sub_1B0A7C898(v31, v41, v19, v20, v46, v49, v33);
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    sub_1B08F5618(v33);

    sub_1B08F533C(v43);
    goto LABEL_9;
  }

  sub_1B08F57EC(v33, v38);
  v17 = sub_1B0A7D9FC();
  sub_1B08F597C(v38);

  sub_1B08F533C(v43);
  sub_1B039480C(v55);
  return v17;
}

uint64_t sub_1B08F2210(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a1;
  v45 = a2;
  v43 = a3;
  v50 = a4;
  v44 = a5;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v41 = 0;
  v33 = (*(*(type metadata accessor for MessageSummary.Accumulator(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v34 = &v20 - v33;
  v35 = _s6ParserV4TextVMa(v6);
  v36 = (*(*(v35 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41);
  v37 = &v20 - v36;
  v69 = &v20 - v36;
  v38 = (*(*(type metadata accessor for WatchOSRender.Message.InfoFromLibrary(v7) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41);
  v39 = &v20 - v38;
  v8 = sub_1B0E431A8();
  v40 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v20 - v40;
  v42 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2E30, &unk_1B0EA0620) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41);
  v53 = &v20 - v42;
  v54 = _s6ParserVMa(v9);
  v51 = *(v54 - 8);
  v52 = v54 - 8;
  v47 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v20 - v47;
  v68 = &v20 - v47;
  v67 = v10;
  v66 = v11;
  v65 = v12;
  v64 = v13;
  v63 = v14;
  v62 = v5;
  sub_1B0E43198();

  sub_1B0A6FED8(100000, v49, v50, v53, 1000.0);
  if ((*(v51 + 48))(v53, 1, v54) == 1)
  {
    sub_1B08F5B10(v53);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    sub_1B08F5BEC(v53, v48);
    sub_1B08F53FC(v45, v39);
    v59 = sub_1B0A6A714(v43, v39);
    v60 = v15;
    v61 = v16;
    sub_1B0A7024C(v46, &v59, v44, v37);
    sub_1B08C49A4(&v37[*(v35 + 24)], v34);
    v31 = sub_1B08C4AC8(v34);
    v32 = v17;
    if (v17)
    {
      v29 = v31;
      v30 = v32;
      v26 = v32;
      v25 = v31;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      v27 = v25;
      v28 = v26;
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    v55 = v27;
    v56 = v28;
    if (v28)
    {
      v57 = v55;
      v58 = v56;
    }

    else
    {
      v57 = sub_1B0E44838();
      v58 = v18;
      if (v56)
      {
        sub_1B03B1198(&v55);
      }
    }

    v21 = v57;
    v22 = v58;
    sub_1B08F5CB4(v37);
    sub_1B039E440(&v59);
    sub_1B08F5DC8(v48);
    v23 = v21;
    v24 = v22;
  }

  return v23;
}

uint64_t sub_1B08F27B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = sub_1B08E0EE8(v4, v5);
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_1B08F282C(uint64_t a1, char a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v14 = a1;
  v13 = a2 & 1;
  v12 = a3 + 16;
  v11 = a4;
  v10[4] = a5;
  swift_beginAccess();
  v10[0] = swift_weakLoadStrong();
  if (v10[0])
  {

    sub_1B0391AD4(v10);
    swift_endAccess();
    sub_1B08F2928(a4, a5, a1, a2 & 1);
  }

  else
  {
    sub_1B0391AD4(v10);
    return swift_endAccess();
  }
}

uint64_t sub_1B08F2928(unsigned int a1, uint64_t a2, uint64_t a3, int a4)
{
  v65 = a1;
  v64 = a2;
  v62 = a3;
  v63 = a4;
  v50 = sub_1B070B278;
  v51 = sub_1B039BC08;
  v52 = sub_1B0398F5C;
  v53 = sub_1B0398F5C;
  v54 = sub_1B03991EC;
  v84 = 0;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v80 = 0;
  v55 = 0;
  v56 = 0;
  v57 = sub_1B0E439A8();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  v60 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v61 = v25 - v60;
  v70 = sub_1B0E44468();
  v68 = *(v70 - 8);
  v69 = v70 - 8;
  v66 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v65);
  v71 = (v25 - v66);
  v84 = v5;
  v83 = v6;
  v82 = v7;
  v81 = v8 & 1;
  v80 = v4;

  v67 = *(v4 + 16);
  MEMORY[0x1E69E5928](v67);
  v9 = v68;
  *v71 = v67;
  (*(v9 + 104))();
  v72 = sub_1B0E44488();
  (*(v68 + 8))(v71, v70);
  result = v72;
  if (v72)
  {
    v11 = v61;

    v12 = sub_1B08DFDD8();
    (*(v58 + 16))(v11, v12, v57);
    v39 = 7;
    v40 = swift_allocObject();
    *(v40 + 16) = v65;
    v48 = sub_1B0E43988();
    v49 = sub_1B0E45908();
    v37 = 17;
    v42 = swift_allocObject();
    *(v42 + 16) = 0;
    v43 = swift_allocObject();
    *(v43 + 16) = 4;
    v38 = 32;
    v13 = swift_allocObject();
    v14 = v40;
    v41 = v13;
    *(v13 + 16) = v50;
    *(v13 + 24) = v14;
    v15 = swift_allocObject();
    v16 = v41;
    v45 = v15;
    *(v15 + 16) = v51;
    *(v15 + 24) = v16;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v44 = sub_1B0E46A48();
    v46 = v17;

    v18 = v42;
    v19 = v46;
    *v46 = v52;
    v19[1] = v18;

    v20 = v43;
    v21 = v46;
    v46[2] = v53;
    v21[3] = v20;

    v22 = v45;
    v23 = v46;
    v46[4] = v54;
    v23[5] = v22;
    sub_1B0394964();

    if (os_log_type_enabled(v48, v49))
    {
      v24 = v55;
      v30 = sub_1B0E45D78();
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v29 = 0;
      v31 = sub_1B03949A8(0, v28, v28);
      v32 = sub_1B03949A8(v29, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v33 = &v77;
      v77 = v30;
      v34 = &v76;
      v76 = v31;
      v35 = &v75;
      v75 = v32;
      sub_1B0394A48(0, &v77);
      sub_1B0394A48(1, v33);
      v73 = v52;
      v74 = v42;
      sub_1B03949FC(&v73, v33, v34, v35);
      v36 = v24;
      if (v24)
      {

        __break(1u);
      }

      else
      {
        v73 = v53;
        v74 = v43;
        sub_1B03949FC(&v73, &v77, &v76, &v75);
        v27 = 0;
        v73 = v54;
        v74 = v45;
        sub_1B03949FC(&v73, &v77, &v76, &v75);
        _os_log_impl(&dword_1B0389000, v48, v49, "[%u] Legacy loader did complete.", v30, 8u);
        v26 = 0;
        sub_1B03998A8(v31, 0, v28);
        sub_1B03998A8(v32, v26, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v48);
    (*(v58 + 8))(v61, v57);
    v25[1] = v79;
    v25[2] = 33;
    v25[3] = 0;
    swift_beginAccess();
    sub_1B08E4508(v64, v62, v63 & 1);
    swift_endAccess();
    v25[4] = v78;
    swift_beginAccess();
    sub_1B08E4AE0();
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B08F3218(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  MEMORY[0x1E69E5928](a2);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D50, &qword_1B0EA0350);
    sub_1B0E445A8();
    MEMORY[0x1E69E5920](a2);
  }

  v3();
}

uint64_t sub_1B08F3314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = 0;
  v17 = 0;
  v13 = 0;
  v27 = a1;
  v9 = sub_1B0E42D28();
  v26 = v9;
  if (sub_1B0E452A8() != 2)
  {
    goto LABEL_18;
  }

  v25 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B0750598();
  sub_1B0E45728();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = sub_1B0E44838();
  v7 = v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v21[0] = v23;
  v21[1] = v24;
  *&v22 = v6;
  *(&v22 + 1) = v7;
  if (!v24)
  {
    if (!*(&v22 + 1))
    {
      sub_1B03B1198(v21);
      v5 = 1;
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1B070B280(v21, &v12);
  if (!*(&v22 + 1))
  {
    sub_1B03B1198(&v12);
LABEL_10:
    sub_1B06FF6F0(v21);
    v5 = 0;
    goto LABEL_8;
  }

  v11 = v12;
  v10 = v22;
  v4 = MEMORY[0x1B2726DE0](v12, *(&v12 + 1), v22, *(&v22 + 1));
  sub_1B03B1198(&v10);
  sub_1B03B1198(&v11);
  sub_1B03B1198(v21);
  v5 = v4;
LABEL_8:

  if (v5)
  {
    v20 = v9;
    sub_1B03B11C4();
    sub_1B0E44888();
    if (v19)
    {
      v16 = v18;
      v17 = v19;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B06BCD98();
      sub_1B0E46598();
      if ((v15 & 1) == 0)
      {
        v13 = v14;
        *a2 = v14;
        *(a2 + 8) = 0;
      }
    }
  }

LABEL_18:
  *a2 = 0;
  *(a2 + 8) = 1;
}

BOOL sub_1B08F3634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = MEMORY[0x1B2726DE0](a1, a2, a4, a5);

  return (v14 & 1) != 0 && a3 == a6;
}

uint64_t sub_1B08F3728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[5] = a1;
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7[0] = a2;
  v7[1] = a3;
  sub_1B0E46C48();
  sub_1B03B1198(v7);
  return sub_1B0E46C48();
}

uint64_t sub_1B08F38D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2EC0, &qword_1B0EA05F0);
  v1 = sub_1B0E46A48();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E46A48();
  sub_1B08E4290();
  sub_1B0E45438();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07F22C0();
  return v1;
}

void sub_1B08F3984(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v43 = a5;
  v44 = a4;
  v45 = a3;
  v46 = a2;
  v49 = a1;
  v47 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v48 = 0;
  v55 = 0;
  v67 = a1;
  v64 = a2;
  v65 = a3;
  v66 = a4;
  v63 = a5;
  v5 = a1;
  if (!v49)
  {
    goto LABEL_11;
  }

  v41 = v49;
  v40 = v49;
  v61 = v49;
  v6 = v43;
  if (!v43)
  {

LABEL_11:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
    sub_1B0E454D8();

    return;
  }

  v39 = v43;
  v7 = v48;
  v32 = v43;
  v60 = v43;
  v33 = *v42;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v58[0] = v33;
  v8 = v40;
  v34 = &v21;
  MEMORY[0x1EEE9AC00](&v21);
  v36 = v20;
  v20[2] = v9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2DD8, &qword_1B0EA0398);
  v35 = v37;
  sub_1B08F4E50();
  sub_1B0E456F8();
  v38 = v7;

  sub_1B039E440(v58);
  v31 = v58[1];
  if (v59)
  {
    v11 = v40;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2E38, &qword_1B0EA03C8);
    v24 = sub_1B0E46A48();
    v22 = v12;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v13 = v45;
    v14 = v44;
    v15 = v22;
    v16 = v32;
    *v22 = v46;
    v15[1] = v13;
    v15[2] = v14;
    v17 = v16;
    v22[3] = v32;
    sub_1B0394964();
    v26 = v18;
    v25 = sub_1B07F1AFC();
    sub_1B08E4290();
    v19 = sub_1B0E445D8();
    v56 = v40;
    v57 = v19;
    sub_1B0E452E8();
  }

  else
  {
    v30 = v31;
    v27 = v31;
    v55 = v31;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v10 = v32;
    v54 = v32;
    v51 = v46;
    v52 = v45;
    v53 = v44;
    v28 = &v50;
    v29 = sub_1B0E45398();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2E40, &qword_1B0EA03D0);
    sub_1B0E44788();
    v29(v28, 0);
  }

  v21 = v38;
}

uint64_t sub_1B08F3F34(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
  sub_1B08F5E90();
  sub_1B08F48D0();
  sub_1B0E44F58();
  v8 = sub_1B08C0C38();
  [v8 setCriterionType_];
  [v8 setAllCriteriaMustBeSatisfied_];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = sub_1B0E451A8();

  [v8 setCriteria_];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5928](v8);
  v9 = [v11 messagesMatchingCriterion:v8 options:6144];
  MEMORY[0x1E69E5920](v8);
  if (v9)
  {
    sub_1B07F1AFC();
    v5 = sub_1B0E451B8();
    MEMORY[0x1E69E5920](v9);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v3 = sub_1B08F4318(a1, v6);

    MEMORY[0x1E69E5920](v8);

    return v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2E38, &qword_1B0EA03C8);
    sub_1B0E46A48();
    sub_1B07F1AFC();
    sub_1B08E4290();
    v2 = sub_1B0E445D8();
    MEMORY[0x1E69E5920](v8);

    return v2;
  }
}

id sub_1B08F4228@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  sub_1B08F6564();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v2 = sub_1B08E0EE8(v6, v7);
  result = sub_1B08F6760(v2, v3);
  v8 = result;
  if (result)
  {
    *a2 = [result mf_messageCriterion];
    return MEMORY[0x1E69E5920](v8);
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1B08F4318(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v25 = 0;
  v36 = a1;
  v35 = a2;
  v34 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2D40, &qword_1B0EA0340);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2E50, &qword_1B0EA03D8);
  sub_1B08F48D0();
  v28 = 0;
  v29 = sub_1B0E44F58();
  v33 = v29;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2E58, &qword_1B0EA03E0);
  sub_1B08F5EF4();
  v22 = 0;
  v23 = sub_1B0E44718();
  v14 = v23;
  v32 = v23;
  v31 = v24;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v15 = &v6;
  MEMORY[0x1EEE9AC00](&v6);
  v16 = v5;
  v5[2] = v2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2620, &unk_1B0E9DD90);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2E38, &qword_1B0EA03C8);
  sub_1B07F1A74();
  v3 = sub_1B0E44F58();
  v19 = 0;
  v20 = v3;
  v8 = v3;

  v30 = v8;
  v9 = 0;
  v10 = sub_1B07F1AFC();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2E68, &qword_1B0EA03E8);
  v12 = sub_1B08E4290();
  sub_1B08F5FA4();
  v13 = sub_1B0E44718();
  v7 = v13;

  return v7;
}

void sub_1B08F460C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v5;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v5;
}

void sub_1B08F4684(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *a2 = v2;
  a2[1] = v3;
  a2[2] = v5;
}

uint64_t sub_1B08F4718@<X0>(void **a1@<X0>, void *a3@<X8>)
{
  v5 = *a1;
  [*a1 libraryID];
  result = sub_1B0E44778();
  if (v7)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1E69E5928](v5);
    *a3 = v6;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v5;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[3] = 0;
  }

  return result;
}

uint64_t block_copy_helper_63(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B08F48D0()
{
  v2 = qword_1EB6E2D58;
  if (!qword_1EB6E2D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2D40, &qword_1B0EA0340);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2D58);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_88(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B08F49C4()
{
  v2 = qword_1EB6E2D60;
  if (!qword_1EB6E2D60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2D60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08F4A40()
{
  v2 = qword_1EB6E2D80;
  if (!qword_1EB6E2D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2D78, &qword_1B0EA0368);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2D80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08F4AC8()
{
  v2 = qword_1EB6E2D90;
  if (!qword_1EB6E2D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2D88, &qword_1B0EA0370);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2D90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08F4B50()
{
  v2 = qword_1EB6E2DA0;
  if (!qword_1EB6E2DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2D98, &qword_1B0EA0378);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2DA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08F4C04()
{
  v2 = qword_1EB6E2DB0;
  if (!qword_1EB6E2DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2D68, &qword_1B0EA0358);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2DB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08F4D40()
{
  v2 = qword_1EB6E2DC8;
  if (!qword_1EB6E2DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2DC0, &qword_1B0EA0390);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2DC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08F4DC8()
{
  v2 = qword_1EB6E2DD0;
  if (!qword_1EB6E2DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2D68, &qword_1B0EA0358);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2DD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08F4E50()
{
  v2 = qword_1EB6E2DE0;
  if (!qword_1EB6E2DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2DD8, &qword_1B0EA0398);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2DE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08F4ED8()
{
  v2 = qword_1EB6E2E00;
  if (!qword_1EB6E2E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2D40, &qword_1B0EA0340);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2E00);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_380(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void *sub_1B08F5010(const void *a1, void *a2)
{
  v6 = type metadata accessor for Message(0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2E10, &qword_1B0E9B598);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1B08F5148(uint64_t a1)
{
  v5 = type metadata accessor for WatchOSRender.Message.InfoFromLibrary(0);
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {

    v3 = a1 + *(v5 + 40);
    v1 = sub_1B0E43108();
    (*(*(v1 - 8) + 8))(v3);
  }

  return a1;
}

char *sub_1B08F524C(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  *(a2 + 3) = *(a1 + 3);
  *(a2 + 4) = *(a1 + 4);
  *(a2 + 5) = *(a1 + 5);
  v5 = type metadata accessor for WatchOSRender.Message.InfoFromLibrary(0);
  v4 = v5[10];
  v2 = sub_1B0E43108();
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  result = a2;
  *&a2[v5[11]] = *&a1[v5[11]];
  *&a2[v5[12]] = *&a1[v5[12]];
  return result;
}

uint64_t sub_1B08F533C(uint64_t a1)
{

  v3 = *(type metadata accessor for WatchOSRender.Message.InfoFromLibrary(0) + 40);
  v1 = sub_1B0E43108();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

char *sub_1B08F53FC(char *a1, char *a2)
{
  *a2 = *a1;
  v4 = *(a1 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 1) = v4;
  *(a2 + 2) = *(a1 + 2);
  v5 = *(a1 + 3);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 3) = v5;
  *(a2 + 4) = *(a1 + 4);
  v6 = *(a1 + 5);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 5) = v6;
  *(a2 + 6) = *(a1 + 6);
  v7 = *(a1 + 7);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 7) = v7;
  *(a2 + 8) = *(a1 + 8);
  v8 = *(a1 + 9);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 9) = v8;
  *(a2 + 10) = *(a1 + 10);
  v9 = *(a1 + 11);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 11) = v9;
  v11 = type metadata accessor for WatchOSRender.Message.InfoFromLibrary(0);
  v10 = v11[10];
  v2 = sub_1B0E43108();
  (*(*(v2 - 8) + 16))(&a2[v10], &a1[v10]);
  result = a2;
  *&a2[v11[11]] = *&a1[v11[11]];
  *&a2[v11[12]] = *&a1[v11[12]];
  return result;
}

uint64_t sub_1B08F5590(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E439A8();
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = _s6LoggerVMa_2(0);
  result = a2;
  *(a2 + *(v3 + 20)) = *(a1 + *(v3 + 20));
  return result;
}

uint64_t sub_1B08F5618(uint64_t a1)
{
  v6 = type metadata accessor for WatchOSRender.Message(0);
  if (!(*(*(v6 - 8) + 48))(a1, 1))
  {

    v2 = a1 + *(v6 + 40);
    v3 = sub_1B0E43108();
    v4 = *(*(v3 - 8) + 8);
    (v4)(v2);
    v4(a1 + *(v6 + 44), v3);
  }

  return a1;
}

__n128 sub_1B08F57EC(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  *(a2 + 3) = *(a1 + 3);
  *(a2 + 4) = *(a1 + 4);
  *(a2 + 5) = *(a1 + 5);
  v6 = type metadata accessor for WatchOSRender.Message(0);
  v3 = v6[10];
  v4 = sub_1B0E43108();
  v5 = *(*(v4 - 8) + 32);
  v5(&a2[v3], &a1[v3]);
  (v5)(&a2[v6[11]], &a1[v6[11]], v4);
  *&a2[v6[12]] = *&a1[v6[12]];
  *&a2[v6[13]] = *&a1[v6[13]];
  *&a2[v6[14]] = *&a1[v6[14]];
  *&a2[v6[15]] = *&a1[v6[15]];
  *&a2[v6[16]] = *&a1[v6[16]];
  *&a2[v6[17]] = *&a1[v6[17]];
  result = *&a1[v6[18]];
  *&a2[v6[18]] = result;
  *&a2[v6[19]] = *&a1[v6[19]];
  return result;
}

uint64_t sub_1B08F597C(uint64_t a1)
{

  v5 = type metadata accessor for WatchOSRender.Message(0);
  v2 = *(v5 + 40);
  v3 = sub_1B0E43108();
  v4 = *(*(v3 - 8) + 8);
  v4(a1 + v2);
  (v4)(a1 + *(v5 + 44), v3);

  return a1;
}

uint64_t sub_1B08F5B10(uint64_t a1)
{
  v5 = _s6ParserVMa(0);
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {

    v3 = a1 + *(v5 + 28);
    v1 = sub_1B0E431A8();
    (*(*(v1 - 8) + 8))(v3);
  }

  return a1;
}

char *sub_1B08F5BEC(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  v5 = _s6ParserVMa(0);
  v4 = *(v5 + 28);
  v2 = sub_1B0E431A8();
  (*(*(v2 - 8) + 32))(&a2[v4], &a1[v4]);
  result = a2;
  *&a2[*(v5 + 32)] = *&a1[*(v5 + 32)];
  return result;
}

void *sub_1B08F5CB4(void *a1)
{
  MEMORY[0x1E69E5920](*a1);

  sub_1B0391D50(a1[4], a1[5]);
  v4 = a1 + *(_s6ParserV4TextVMa(0) + 24);

  v3 = *(type metadata accessor for MessageSummary.Accumulator(0) + 24);
  v1 = sub_1B0E431A8();
  (*(*(v1 - 8) + 8))(&v4[v3]);

  return a1;
}

uint64_t sub_1B08F5DC8(uint64_t a1)
{

  v3 = *(_s6ParserVMa(0) + 28);
  v1 = sub_1B0E431A8();
  (*(*(v1 - 8) + 8))(a1 + v3);

  return a1;
}

unint64_t sub_1B08F5E90()
{
  v2 = qword_1EB6DAA78;
  if (!qword_1EB6DAA78)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6DAA78);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B08F5EF4()
{
  v2 = qword_1EB6E2E60;
  if (!qword_1EB6E2E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2E58, &qword_1B0EA03E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2E60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08F5FA4()
{
  v2 = qword_1EB6E2E70;
  if (!qword_1EB6E2E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2E68, &qword_1B0EA03E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2E70);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for MFNanoServerFullMessageLoader2()
{
  v2 = qword_1EB6E2E80;
  if (!qword_1EB6E2E80)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E2E80);
    return ObjCClassMetadata;
  }

  return v2;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 12);
  *(a1 + 12) = result;
  return result;
}

uint64_t sub_1B08F60A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 28))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*a1))
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B08F61BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1B08F6410()
{
  v2 = qword_1EB6E2E88;
  if (!qword_1EB6E2E88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2E88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08F64A4()
{
  v2 = qword_1EB6DA660;
  if (!qword_1EB6DA660)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA660);
    return WitnessTable;
  }

  return v2;
}

void sub_1B08F6520()
{
}

unint64_t sub_1B08F6564()
{
  v2 = qword_1EB6E2E98;
  if (!qword_1EB6E2E98)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E2E98);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B08F65C8()
{
  v2 = qword_1EB6E2EB0;
  if (!qword_1EB6E2EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2EA8, &qword_1B0EA05E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2EB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08F6650()
{
  v2 = qword_1EB6E2ED8;
  if (!qword_1EB6E2ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2DA8, &qword_1B0EA0380);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2ED8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B08F66D8()
{
  v2 = qword_1EB6E2EE8;
  if (!qword_1EB6E2EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2EE0, &qword_1B0EA0600);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6E2EE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t MFNanoServerMessageContentLoader2.messageId.getter()
{
  v2 = *(v0 + OBJC_IVAR___MFNanoServerMessageContentLoader2_messageId);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t MFNanoServerMessageContentLoader2.highPriority.getter()
{
  v2 = (v0 + OBJC_IVAR___MFNanoServerMessageContentLoader2_highPriority);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t MFNanoServerMessageContentLoader2.highPriority.setter(char a1)
{
  v3 = (v1 + OBJC_IVAR___MFNanoServerMessageContentLoader2_highPriority);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1B08F6A3C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  [v3 highPriority];
  *a2 = sub_1B0E43378() & 1;
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1B08F6AB0(char *a1, void *a2)
{
  v3 = *a2;
  MEMORY[0x1E69E5928](*a2);
  [v3 setHighPriority_];
  return MEMORY[0x1E69E5920](v3);
}

uint64_t sub_1B08F6B2C()
{
  v2 = (v0 + OBJC_IVAR___MFNanoServerMessageContentLoader2_implementation);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1B08F6B94(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR___MFNanoServerMessageContentLoader2_implementation);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

id sub_1B08F6C14(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12 = sub_1B0E44AC8();
  v13 = [v9 initWithMessageId:a2 highPriority:? mailMessageLibrary:? maximumImageWidth:? workQueue:? delegate:?];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](a6);
  MEMORY[0x1E69E5920](a5);
  MEMORY[0x1E69E5920](v12);

  return v13;
}

_BYTE *sub_1B08F6CE8(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, double a7)
{
  v30 = 0;
  v28 = a1;
  v29 = a2;
  v27 = a3 & 1;
  v26 = a4;
  v25 = a7;
  v24 = a5;
  v23 = a6;
  *OBJC_IVAR___MFNanoServerMessageContentLoader2_implementation = 0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = &v30[OBJC_IVAR___MFNanoServerMessageContentLoader2_messageId];
  *v7 = a1;
  v7[1] = a2;
  v30[OBJC_IVAR___MFNanoServerMessageContentLoader2_highPriority] = a3;
  v22.receiver = v30;
  v22.super_class = MFNanoServerMessageContentLoader2;
  v19 = objc_msgSendSuper2(&v22, sel_init);
  MEMORY[0x1E69E5928](v19);
  v30 = v19;
  _s14ImplementationCMa_1(0);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](a5);
  swift_unknownObjectRetain();
  v21 = sub_1B08F7020(a1, a2, a3 & 1, a4, a5, v19, a6, a7);
  if (v21)
  {
    v9 = v30;

    v10 = &v9[OBJC_IVAR___MFNanoServerMessageContentLoader2_implementation];
    swift_beginAccess();
    *v10 = v21;

    swift_endAccess();

    v11 = v30;
    MEMORY[0x1E69E5928](v30);
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](a5);
    MEMORY[0x1E69E5920](a4);

    MEMORY[0x1E69E5920](v30);
    return v11;
  }

  else
  {
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](a5);
    MEMORY[0x1E69E5920](a4);

    MEMORY[0x1E69E5920](v30);
    return 0;
  }
}

uint64_t _s14ImplementationCMa_1(uint64_t a1)
{
  v2 = qword_1EB6E2F48;
  if (!qword_1EB6E2F48)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

Swift::Void __swiftcall MFNanoServerMessageContentLoader2.start()()
{
  v1 = (v0 + OBJC_IVAR___MFNanoServerMessageContentLoader2_implementation);
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  if (!v2)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  sub_1B08F728C();
}

uint64_t sub_1B08F728C()
{
  v66 = sub_1B08FA1F8;
  v68 = sub_1B08FA1E8;
  v69 = sub_1B06BCD8C;
  v72 = sub_1B07AB020;
  v76 = sub_1B039BC08;
  v78 = sub_1B0398F5C;
  v80 = sub_1B0398F5C;
  v82 = sub_1B03992D4;
  v84 = sub_1B0398F5C;
  v86 = sub_1B0398F5C;
  v89 = sub_1B03991EC;
  v46 = sub_1B0901DA0;
  v107 = 0;
  v47 = 0;
  v58 = 0;
  v48 = sub_1B0E44238();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v52 = &v30 - v51;
  v53 = sub_1B0E44288();
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v30 - v56;
  v64 = sub_1B0E439A8();
  v62 = *(v64 - 8);
  v63 = v64 - 8;
  v59 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v58);
  v0 = &v30 - v59;
  v60 = &v30 - v59;
  v2 = _s6LoggerVMa_2(v1);
  v61 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v65 = &v30 - v61;
  v107 = v3;
  sub_1B08F5590(v3 + OBJC_IVAR____TtCE7MessageCSo33MFNanoServerMessageContentLoader2P33_55FE1C6453F069120C6D9FDA5598804714Implementation_logger, &v30 - v61);
  (*(v62 + 16))(v0, v65, v64);
  sub_1B039480C(v65);

  v73 = 32;
  v74 = 7;
  v4 = swift_allocObject();
  v5 = v67;
  v75 = v4;
  *(v4 + 16) = v66;
  *(v4 + 24) = v5;

  v6 = sub_1B0E43988();
  v7 = v67;
  v93 = v6;
  v94 = sub_1B0E45908();
  v71 = 17;
  v79 = swift_allocObject();
  *(v79 + 16) = 0;
  v81 = swift_allocObject();
  *(v81 + 16) = 8;
  v8 = swift_allocObject();
  v70 = v8;
  *(v8 + 16) = v68;
  *(v8 + 24) = v7;
  v9 = swift_allocObject();
  v10 = v70;
  v83 = v9;
  *(v9 + 16) = v69;
  *(v9 + 24) = v10;
  v85 = swift_allocObject();
  *(v85 + 16) = 0;
  v87 = swift_allocObject();
  *(v87 + 16) = 4;
  v11 = swift_allocObject();
  v12 = v75;
  v77 = v11;
  *(v11 + 16) = v72;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v77;
  v90 = v13;
  *(v13 + 16) = v76;
  *(v13 + 24) = v14;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v88 = sub_1B0E46A48();
  v91 = v15;

  v16 = v79;
  v17 = v91;
  *v91 = v78;
  v17[1] = v16;

  v18 = v81;
  v19 = v91;
  v91[2] = v80;
  v19[3] = v18;

  v20 = v83;
  v21 = v91;
  v91[4] = v82;
  v21[5] = v20;

  v22 = v85;
  v23 = v91;
  v91[6] = v84;
  v23[7] = v22;

  v24 = v87;
  v25 = v91;
  v91[8] = v86;
  v25[9] = v24;

  v26 = v90;
  v27 = v91;
  v91[10] = v89;
  v27[11] = v26;
  sub_1B0394964();

  if (os_log_type_enabled(v93, v94))
  {
    v28 = v47;
    v39 = sub_1B0E45D78();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v38 = 0;
    v40 = sub_1B03949A8(0, v37, v37);
    v41 = sub_1B03949A8(v38, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v42 = &v99;
    v99 = v39;
    v43 = &v98;
    v98 = v40;
    v44 = &v97;
    v97 = v41;
    sub_1B0394A48(0, &v99);
    sub_1B0394A48(2, v42);
    v95 = v78;
    v96 = v79;
    sub_1B03949FC(&v95, v42, v43, v44);
    v45 = v28;
    if (v28)
    {

      __break(1u);
    }

    else
    {
      v95 = v80;
      v96 = v81;
      sub_1B03949FC(&v95, &v99, &v98, &v97);
      v36 = 0;
      v95 = v82;
      v96 = v83;
      sub_1B03949FC(&v95, &v99, &v98, &v97);
      v35 = 0;
      v95 = v84;
      v96 = v85;
      sub_1B03949FC(&v95, &v99, &v98, &v97);
      v34 = 0;
      v95 = v86;
      v96 = v87;
      sub_1B03949FC(&v95, &v99, &v98, &v97);
      v33 = 0;
      v95 = v89;
      v96 = v90;
      sub_1B03949FC(&v95, &v99, &v98, &v97);
      _os_log_impl(&dword_1B0389000, v93, v94, "[%lld] (%u) Starting instance.", v39, 0x12u);
      v32 = 0;
      sub_1B03998A8(v40, 0, v37);
      sub_1B03998A8(v41, v32, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v93);
  (*(v62 + 8))(v60, v64);
  v31 = *(v67 + 72);
  MEMORY[0x1E69E5928](v31);

  v105 = v46;
  v106 = v67;
  aBlock = MEMORY[0x1E69E9820];
  v101 = 1107296256;
  v102 = 0;
  v103 = sub_1B038C908;
  v104 = &block_descriptor_12;
  v30 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](0, v57, v52, v30);
  (*(v49 + 8))(v52, v48);
  (*(v54 + 8))(v57, v53);
  _Block_release(v30);

  return MEMORY[0x1E69E5920](v31);
}

uint64_t sub_1B08F8080()
{
  v2 = *(v0 + 32);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B08F80B4()
{
  v2 = *(v0 + 40);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B08F8100()
{
  v2 = *(v0 + 72);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B08F8134()
{
  v2 = *(v0 + 80);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B08F8168()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_1B08F81C0(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](a1);
  swift_endAccess();
  return MEMORY[0x1E69E5920](a1);
}

uint64_t sub_1B08F8268()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_1B08F82C8(uint64_t a1)
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void *sub_1B08F8338(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v238 = a1;
  v239 = a2;
  v221 = a3;
  v240 = a4;
  v222 = a8;
  v223 = a5;
  v224 = a6;
  v225 = a7;
  v237 = 0;
  v190 = sub_1B03F7AE0;
  v191 = sub_1B0901E30;
  v192 = sub_1B06BCD8C;
  v193 = sub_1B07AB020;
  v194 = sub_1B039BC08;
  v195 = sub_1B0398F5C;
  v196 = sub_1B0398F5C;
  v197 = sub_1B03992D4;
  v198 = sub_1B0398F5C;
  v199 = sub_1B0398F5C;
  v200 = sub_1B03991EC;
  v201 = sub_1B0901E30;
  v202 = sub_1B06BCD8C;
  v203 = sub_1B0398F5C;
  v204 = sub_1B0398F5C;
  v205 = sub_1B03992D4;
  v206 = sub_1B070B550;
  v207 = sub_1B039BCF8;
  v208 = sub_1B0398F5C;
  v209 = sub_1B0398F5C;
  v210 = sub_1B039BCEC;
  v211 = *v236;
  v274 = 0;
  v272 = 0;
  v273 = 0;
  v271 = 0;
  v270 = 0;
  v269 = 0.0;
  v268 = 0;
  v267 = 0;
  v266 = 0;
  v265 = 0;
  v212 = 0;
  v259 = 0;
  v250 = 0;
  v244 = 0;
  v213 = 0;
  v214 = *(_s6LoggerVMa_2(0) - 8);
  v215 = v214;
  v216 = *(v214 + 64);
  v217 = (v216 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v218 = v90 - v217;
  v219 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v220 = v90 - v219;
  v274 = v90 - v219;
  v226 = sub_1B0E439A8();
  v227 = *(v226 - 8);
  v228 = v226 - 8;
  v232 = *(v227 + 64);
  v229 = (v232 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v238);
  v230 = v90 - v229;
  v231 = (v232 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v233 = v90 - v231;
  v234 = (v232 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v235 = v90 - v234;
  v272 = v13;
  v273 = v239;
  v271 = v14 & 1;
  v270 = v15;
  v269 = v12;
  v268 = v16;
  v267 = v17;
  v266 = v18;
  v265 = v19;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v241 = sub_1B08F9AC8(v238, v239, v240);
  if (!v241)
  {
    sub_1B0A6F6F4(v235);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v177 = 32;
    v178 = 7;
    v20 = swift_allocObject();
    v21 = v239;
    v179 = v20;
    *(v20 + 16) = v238;
    *(v20 + 24) = v21;
    v187 = sub_1B0E43988();
    v188 = sub_1B0E458E8();
    v176 = 17;
    v181 = swift_allocObject();
    *(v181 + 16) = 32;
    v182 = swift_allocObject();
    *(v182 + 16) = 8;
    v22 = swift_allocObject();
    v23 = v179;
    v180 = v22;
    *(v22 + 16) = v206;
    *(v22 + 24) = v23;
    v24 = swift_allocObject();
    v25 = v180;
    v184 = v24;
    *(v24 + 16) = v207;
    *(v24 + 24) = v25;
    v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v183 = sub_1B0E46A48();
    v185 = v26;

    v27 = v181;
    v28 = v185;
    *v185 = v208;
    v28[1] = v27;

    v29 = v182;
    v30 = v185;
    v185[2] = v209;
    v30[3] = v29;

    v31 = v184;
    v32 = v185;
    v185[4] = v210;
    v32[5] = v31;
    sub_1B0394964();

    if (os_log_type_enabled(v187, v188))
    {
      v88 = v212;
      v92 = sub_1B0E45D78();
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v93 = sub_1B03949A8(0, v91, v91);
      v94 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v95 = &v264;
      v264 = v92;
      v96 = &v263;
      v263 = v93;
      v97 = &v262;
      v262 = v94;
      sub_1B0394A48(2, &v264);
      sub_1B0394A48(1, v95);
      v260 = v208;
      v261 = v181;
      sub_1B03949FC(&v260, v95, v96, v97);
      v98 = v88;
      if (v88)
      {

        __break(1u);
      }

      else
      {
        v260 = v209;
        v261 = v182;
        sub_1B03949FC(&v260, &v264, &v263, &v262);
        v90[2] = 0;
        v260 = v210;
        v261 = v184;
        sub_1B03949FC(&v260, &v264, &v263, &v262);
        _os_log_impl(&dword_1B0389000, v187, v188, "Failed to load library message for %s.", v92, 0xCu);
        sub_1B03998A8(v93, 0, v91);
        sub_1B03998A8(v94, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v187);
    (*(v227 + 8))(v235, v226);
    v110 = v236;
    goto LABEL_25;
  }

  v189 = v241;
  v172 = v241;
  v259 = v241;
  v33 = [v241 libraryID];
  sub_1B0A6F758(v33, v220);
  v34 = [v172 uid];
  v174 = &v256;
  v256 = v34;
  v173 = sub_1B041C1E8();
  v35 = sub_1B07467B8();
  MessageIdentifier.init<A>(exactly:)(v174, &type metadata for UID, MEMORY[0x1E69E7668], v173, v35, &v257);
  v175 = v257;
  if (v258)
  {
    (*(v227 + 16))(v233, v220, v226);
    sub_1B08F5590(v220, v218);
    v157 = (*(v215 + 80) + 16) & ~*(v215 + 80);
    v160 = 7;
    v161 = swift_allocObject();
    sub_1B0901DA8(v218, v161 + v157);
    v169 = sub_1B0E43988();
    v170 = sub_1B0E45908();
    v158 = 17;
    v163 = swift_allocObject();
    *(v163 + 16) = 0;
    v164 = swift_allocObject();
    *(v164 + 16) = 8;
    v159 = 32;
    v36 = swift_allocObject();
    v37 = v161;
    v162 = v36;
    *(v36 + 16) = v201;
    *(v36 + 24) = v37;
    v38 = swift_allocObject();
    v39 = v162;
    v166 = v38;
    *(v38 + 16) = v202;
    *(v38 + 24) = v39;
    v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v165 = sub_1B0E46A48();
    v167 = v40;

    v41 = v163;
    v42 = v167;
    *v167 = v203;
    v42[1] = v41;

    v43 = v164;
    v44 = v167;
    v167[2] = v204;
    v44[3] = v43;

    v45 = v166;
    v46 = v167;
    v167[4] = v205;
    v46[5] = v45;
    sub_1B0394964();

    if (os_log_type_enabled(v169, v170))
    {
      v87 = v212;
      v103 = sub_1B0E45D78();
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v102 = 0;
      v104 = sub_1B03949A8(0, v101, v101);
      v105 = sub_1B03949A8(v102, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v106 = &v255;
      v255 = v103;
      v107 = &v254;
      v254 = v104;
      v108 = &v253;
      v253 = v105;
      sub_1B0394A48(0, &v255);
      sub_1B0394A48(1, v106);
      v251 = v203;
      v252 = v163;
      sub_1B03949FC(&v251, v106, v107, v108);
      v109 = v87;
      if (v87)
      {

        __break(1u);
      }

      else
      {
        v251 = v204;
        v252 = v164;
        sub_1B03949FC(&v251, &v255, &v254, &v253);
        v100 = 0;
        v251 = v205;
        v252 = v166;
        sub_1B03949FC(&v251, &v255, &v254, &v253);
        _os_log_impl(&dword_1B0389000, v169, v170, "[%lld] Message has no UID.", v103, 0xCu);
        v99 = 0;
        sub_1B03998A8(v104, 0, v101);
        sub_1B03998A8(v105, v99, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v169);
    (*(v227 + 8))(v233, v226);
    sub_1B039480C(v220);
    MEMORY[0x1E69E5920](v172);
    v110 = v236;
    goto LABEL_25;
  }

  v171 = v175;
  v155 = v175;
  v250 = v175;
  v47 = sub_1B08F9DAC();
  v156 = v47;
  if (!v47)
  {
    (*(v227 + 16))(v230, v220, v226);
    sub_1B08F5590(v220, v218);
    v125 = (*(v215 + 80) + 16) & ~*(v215 + 80);
    v131 = 7;
    v127 = swift_allocObject();
    sub_1B0901DA8(v218, v127 + v125);
    v126 = swift_allocObject();
    *(v126 + 16) = v155;

    v130 = 32;
    v63 = swift_allocObject();
    v64 = v126;
    v132 = v63;
    *(v63 + 16) = v190;
    *(v63 + 24) = v64;

    v143 = sub_1B0E43988();
    v144 = sub_1B0E45908();
    v129 = 17;
    v134 = swift_allocObject();
    *(v134 + 16) = 0;
    v135 = swift_allocObject();
    *(v135 + 16) = 8;
    v65 = swift_allocObject();
    v66 = v127;
    v128 = v65;
    *(v65 + 16) = v191;
    *(v65 + 24) = v66;
    v67 = swift_allocObject();
    v68 = v128;
    v136 = v67;
    *(v67 + 16) = v192;
    *(v67 + 24) = v68;
    v137 = swift_allocObject();
    *(v137 + 16) = 0;
    v138 = swift_allocObject();
    *(v138 + 16) = 4;
    v69 = swift_allocObject();
    v70 = v132;
    v133 = v69;
    *(v69 + 16) = v193;
    *(v69 + 24) = v70;
    v71 = swift_allocObject();
    v72 = v133;
    v140 = v71;
    *(v71 + 16) = v194;
    *(v71 + 24) = v72;
    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v139 = sub_1B0E46A48();
    v141 = v73;

    v74 = v134;
    v75 = v141;
    *v141 = v195;
    v75[1] = v74;

    v76 = v135;
    v77 = v141;
    v141[2] = v196;
    v77[3] = v76;

    v78 = v136;
    v79 = v141;
    v141[4] = v197;
    v79[5] = v78;

    v80 = v137;
    v81 = v141;
    v141[6] = v198;
    v81[7] = v80;

    v82 = v138;
    v83 = v141;
    v141[8] = v199;
    v83[9] = v82;

    v84 = v140;
    v85 = v141;
    v141[10] = v200;
    v85[11] = v84;
    sub_1B0394964();

    if (os_log_type_enabled(v143, v144))
    {
      v86 = v212;
      v118 = sub_1B0E45D78();
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v117 = 0;
      v119 = sub_1B03949A8(0, v116, v116);
      v120 = sub_1B03949A8(v117, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v121 = &v249;
      v249 = v118;
      v122 = &v248;
      v248 = v119;
      v123 = &v247;
      v247 = v120;
      sub_1B0394A48(0, &v249);
      sub_1B0394A48(2, v121);
      v245 = v195;
      v246 = v134;
      sub_1B03949FC(&v245, v121, v122, v123);
      v124 = v86;
      if (v86)
      {

        __break(1u);
      }

      else
      {
        v245 = v196;
        v246 = v135;
        sub_1B03949FC(&v245, &v249, &v248, &v247);
        v115 = 0;
        v245 = v197;
        v246 = v136;
        sub_1B03949FC(&v245, &v249, &v248, &v247);
        v114 = 0;
        v245 = v198;
        v246 = v137;
        sub_1B03949FC(&v245, &v249, &v248, &v247);
        v113 = 0;
        v245 = v199;
        v246 = v138;
        sub_1B03949FC(&v245, &v249, &v248, &v247);
        v112 = 0;
        v245 = v200;
        v246 = v140;
        sub_1B03949FC(&v245, &v249, &v248, &v247);
        _os_log_impl(&dword_1B0389000, v143, v144, "[%lld] (%u) Message has no task manager.", v118, 0x12u);
        v111 = 0;
        sub_1B03998A8(v119, 0, v116);
        sub_1B03998A8(v120, v111, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v143);
    (*(v227 + 8))(v230, v226);
    sub_1B039480C(v220);
    MEMORY[0x1E69E5920](v172);
    v110 = v236;
LABEL_25:
    v90[1] = v110;
    MEMORY[0x1B272C2D0](v110 + 11);
    sub_1B06D56EC();
    swift_deallocPartialClassInstance();
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](v224);
    MEMORY[0x1E69E5920](v223);
    MEMORY[0x1E69E5920](v240);

    return 0;
  }

  v154 = v156;
  v151 = v156;
  v244 = v156;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v48 = v151;
  v49 = v236;
  v50 = v239;
  v236[2] = v238;
  v49[3] = v50;
  MEMORY[0x1E69E5928](v48);
  v51 = v218;
  v52 = v220;
  v236[10] = v151;
  sub_1B08F5590(v52, v51);
  sub_1B0901DA8(v218, v236 + OBJC_IVAR____TtCE7MessageCSo33MFNanoServerMessageContentLoader2P33_55FE1C6453F069120C6D9FDA5598804714Implementation_logger);
  MEMORY[0x1E69E5928](v240);
  v53 = v172;
  v236[4] = v240;
  MEMORY[0x1E69E5928](v53);
  v54 = v155;
  v55 = v236;
  v56 = v172;
  v236[5] = v172;
  *(v55 + 12) = v54;
  v57 = [v56 libraryID];
  v58 = v222;
  v59 = v236;
  v60 = v57;
  v61 = v223;
  v236[7] = v60;
  v59[8] = v58;
  MEMORY[0x1E69E5928](v61);
  v62 = v224;
  v236[9] = v223;
  MEMORY[0x1E69E5928](v62);
  v145 = v236 + 11;
  v146 = &v243;
  v147 = 33;
  v148 = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  MEMORY[0x1E69E5920](v224);
  swift_endAccess();
  swift_unknownObjectRetain();
  v149 = v236 + OBJC_IVAR____TtCE7MessageCSo33MFNanoServerMessageContentLoader2P33_55FE1C6453F069120C6D9FDA5598804714Implementation_delegate;
  v150 = &v242;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  MEMORY[0x1E69E5920](v151);
  sub_1B039480C(v220);
  MEMORY[0x1E69E5920](v172);
  v152 = v236;
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v224);
  MEMORY[0x1E69E5920](v223);
  MEMORY[0x1E69E5920](v240);

  return v152;
}

uint64_t sub_1B08F9AC8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1B08F6564();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = sub_1B08F6760(a1, a2);
  if (!v12)
  {
    return 0;
  }

  v7 = [v12 mf_messageCriterion];
  v8 = [a3 messagesMatchingCriterion_options_];
  if (v8)
  {
    sub_1B07F1AFC();
    v5 = sub_1B0E451B8();
    MEMORY[0x1E69E5920](v8);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2620, &unk_1B0E9DD90);
  sub_1B086F29C();
  sub_1B0E45728();

  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v12);
  if (v13)
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B08F9DAC()
{
  v8 = [v0 account];
  if (!v8)
  {
    return 0;
  }

  MEMORY[0x1E69E5928](v8);
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v7 = v1;
  }

  else
  {
    MEMORY[0x1E69E5920](v8);
    v7 = 0;
  }

  if (!v7)
  {
    MEMORY[0x1E69E5920](v8);
    return 0;
  }

  MEMORY[0x1E69E5928](v7);
  if (![v7 taskManager])
  {
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](v8);
    return 0;
  }

  MEMORY[0x1E69E5920](v7);
  swift_unknownObjectRetain();
  type metadata accessor for TaskManager(0);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    swift_unknownObjectRelease();
    v6 = 0;
  }

  if (!v6)
  {
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](v8);
    return 0;
  }

  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v8);
  return v6;
}

uint64_t sub_1B08FA034()
{
  sub_1B03B1198((v0 + 2));
  MEMORY[0x1E69E5920](v0[4]);
  MEMORY[0x1E69E5920](v0[5]);
  MEMORY[0x1E69E5920](v0[9]);
  MEMORY[0x1E69E5920](v0[10]);
  MEMORY[0x1B272C2D0](v0 + 11);
  sub_1B039480C(v0 + OBJC_IVAR____TtCE7MessageCSo33MFNanoServerMessageContentLoader2P33_55FE1C6453F069120C6D9FDA5598804714Implementation_logger);
  sub_1B06D56EC();
  return v2;
}

uint64_t sub_1B08FA13C(uint64_t a1)
{
  v4 = a1;
  v6 = _s6LoggerVMa_2(0);
  v5 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v3 - v5;
  sub_1B08F5590(v1 + OBJC_IVAR____TtCE7MessageCSo33MFNanoServerMessageContentLoader2P33_55FE1C6453F069120C6D9FDA5598804714Implementation_logger, &v3 - v5);
  v8 = *(v7 + *(v6 + 20));
  sub_1B039480C(v7);
  return v8;
}

uint64_t sub_1B08FA238()
{

  sub_1B08FCB1C(sub_1B0901E94, v0);
}

uint64_t sub_1B08FA2A4(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v10 = 0;
  v9 = 0;
  v5 = (*(*(_s6LoggerVMa_2(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v7 = &v5 - v5;
  v10 = v3;
  v9 = a2;
  v8 = *(a2 + 40);
  MEMORY[0x1E69E5928](v8);
  sub_1B08F5590(a2 + OBJC_IVAR____TtCE7MessageCSo33MFNanoServerMessageContentLoader2P33_55FE1C6453F069120C6D9FDA5598804714Implementation_logger, v7);
  sub_1B08FA394(v8, v6, v7);
  sub_1B039480C(v7);
  return MEMORY[0x1E69E5920](v8);
}

uint64_t sub_1B08FA394(void *a1, uint64_t a2, uint64_t a3)
{
  v356 = a1;
  v355 = a2;
  v354 = a3;
  v269 = sub_1B08FA1F8;
  v270 = sub_1B0901E30;
  v271 = sub_1B06BCD8C;
  v272 = sub_1B07AB020;
  v273 = sub_1B039BC08;
  v274 = sub_1B0398F5C;
  v275 = sub_1B0398F5C;
  v276 = sub_1B03992D4;
  v277 = sub_1B0398F5C;
  v278 = sub_1B0398F5C;
  v279 = sub_1B03991EC;
  v280 = sub_1B08FA1F8;
  v281 = sub_1B0901E30;
  v282 = sub_1B06BCD8C;
  v283 = sub_1B07AB020;
  v284 = sub_1B039BC08;
  v285 = sub_1B0398F5C;
  v286 = sub_1B0398F5C;
  v287 = sub_1B03992D4;
  v288 = sub_1B0398F5C;
  v289 = sub_1B0398F5C;
  v290 = sub_1B03991EC;
  v291 = sub_1B08FA1F8;
  v292 = sub_1B0901E30;
  v293 = sub_1B06BCD8C;
  v294 = sub_1B07AB020;
  v295 = sub_1B039BC08;
  v296 = sub_1B0398F5C;
  v297 = sub_1B0398F5C;
  v298 = sub_1B03992D4;
  v299 = sub_1B0398F5C;
  v300 = sub_1B0398F5C;
  v301 = sub_1B03991EC;
  v302 = sub_1B08FA1F8;
  v303 = sub_1B0901E30;
  v304 = sub_1B06BCD8C;
  v305 = sub_1B07AB020;
  v306 = sub_1B039BC08;
  v307 = sub_1B0398F5C;
  v308 = sub_1B0398F5C;
  v309 = sub_1B03992D4;
  v310 = sub_1B0398F5C;
  v311 = sub_1B0398F5C;
  v312 = sub_1B03991EC;
  v396 = 0;
  v395 = 0;
  v394 = 0;
  v393 = 0;
  v392 = 0;
  v391 = 0;
  v390 = 0;
  v389 = 0;
  v387 = 0;
  v385 = 0;
  v313 = 0;
  v348 = 0;
  v314 = *(_s6LoggerVMa_2(0) - 8);
  v315 = v314;
  v316 = *(v314 + 64);
  v317 = (v316 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v318 = &v121 - v317;
  v319 = sub_1B0E439A8();
  v320 = *(v319 - 8);
  v321 = v319 - 8;
  v322 = (*(v320 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v319);
  v323 = &v121 - v322;
  v324 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v121 - v322);
  v325 = &v121 - v324;
  v326 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v121 - v324);
  v327 = &v121 - v326;
  v328 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v121 - v326);
  v329 = &v121 - v328;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2F18, &qword_1B0EA0608);
  v330 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v331 = &v121 - v330;
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2F20, &unk_1B0EA0610);
  v333 = *(v332 - 8);
  v334 = v332 - 8;
  v335 = (*(v333 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v332);
  v336 = &v121 - v335;
  v396 = &v121 - v335;
  v337 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2E28, &qword_1B0EA03C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v348);
  v338 = &v121 - v337;
  v339 = type metadata accessor for WatchOSRender.Message.InfoFromLibrary(v8);
  v340 = *(v339 - 8);
  v341 = v339 - 8;
  v342 = (*(v340 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v348);
  v343 = &v121 - v342;
  v395 = &v121 - v342;
  v9 = sub_1B0E431A8();
  v344 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v345 = &v121 - v344;
  v346 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2E30, &unk_1B0EA0620) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v348);
  v347 = &v121 - v346;
  v349 = _s6ParserVMa(v10);
  v350 = *(v349 - 8);
  v351 = v349 - 8;
  v352 = (*(v350 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v348);
  v353 = &v121 - v352;
  v394 = &v121 - v352;
  v361 = sub_1B0E44468();
  v359 = *(v361 - 8);
  v360 = v361 - 8;
  v357 = (*(v359 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v356);
  v362 = (&v121 - v357);
  v393 = v11;
  v392 = v12;
  v391 = v13;
  v390 = v3;

  v358 = *(v3 + 72);
  MEMORY[0x1E69E5928](v358);
  v14 = v359;
  *v362 = v358;
  (*(v14 + 104))();
  v363 = sub_1B0E44488();
  (*(v359 + 8))(v362, v361);
  result = v363;
  if ((v363 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  type metadata accessor for Cache();
  Cache.__allocating_init()();
  v264 = v16;
  v389 = v16;
  v265 = v268 + OBJC_IVAR____TtCE7MessageCSo33MFNanoServerMessageContentLoader2P33_55FE1C6453F069120C6D9FDA5598804714Implementation_delegate;
  v266 = &v388;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (!Strong)
  {
  }

  v263 = Strong;
  v259 = Strong;
  v387 = Strong;
  v260 = v268 + 88;
  v261 = &v386;
  swift_beginAccess();
  v262 = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (!v262)
  {
    swift_unknownObjectRelease();
  }

  v258 = v262;
  v256 = v262;
  v385 = v262;
  v257 = *(v268 + 64);
  sub_1B0E43198();

  sub_1B0A6FED8(500000, v345, v264, v347, v257);
  v17 = (*(v350 + 48))(v347, 1, v349);
  if (v17 == 1)
  {
    v96 = v323;
    sub_1B08F5B10(v347);
    (*(v320 + 16))(v96, v354, v319);
    sub_1B08F5590(v354, v318);
    v136 = (*(v315 + 80) + 16) & ~*(v315 + 80);
    v141 = 7;
    v137 = swift_allocObject();
    sub_1B0901DA8(v318, v137 + v136);

    v140 = 32;
    v97 = swift_allocObject();
    v98 = v268;
    v142 = v97;
    *(v97 + 16) = v269;
    *(v97 + 24) = v98;

    v153 = sub_1B0E43988();
    v154 = sub_1B0E458E8();
    v139 = 17;
    v144 = swift_allocObject();
    *(v144 + 16) = 0;
    v145 = swift_allocObject();
    *(v145 + 16) = 8;
    v99 = swift_allocObject();
    v100 = v137;
    v138 = v99;
    *(v99 + 16) = v270;
    *(v99 + 24) = v100;
    v101 = swift_allocObject();
    v102 = v138;
    v146 = v101;
    *(v101 + 16) = v271;
    *(v101 + 24) = v102;
    v147 = swift_allocObject();
    *(v147 + 16) = 0;
    v148 = swift_allocObject();
    *(v148 + 16) = 4;
    v103 = swift_allocObject();
    v104 = v142;
    v143 = v103;
    *(v103 + 16) = v272;
    *(v103 + 24) = v104;
    v105 = swift_allocObject();
    v106 = v143;
    v150 = v105;
    *(v105 + 16) = v273;
    *(v105 + 24) = v106;
    v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v149 = sub_1B0E46A48();
    v151 = v107;

    v108 = v144;
    v109 = v151;
    *v151 = v274;
    v109[1] = v108;

    v110 = v145;
    v111 = v151;
    v151[2] = v275;
    v111[3] = v110;

    v112 = v146;
    v113 = v151;
    v151[4] = v276;
    v113[5] = v112;

    v114 = v147;
    v115 = v151;
    v151[6] = v277;
    v115[7] = v114;

    v116 = v148;
    v117 = v151;
    v151[8] = v278;
    v117[9] = v116;

    v118 = v150;
    v119 = v151;
    v151[10] = v279;
    v119[11] = v118;
    sub_1B0394964();

    if (os_log_type_enabled(v153, v154))
    {
      v120 = v313;
      v129 = sub_1B0E45D78();
      v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v128 = 0;
      v130 = sub_1B03949A8(0, v127, v127);
      v131 = sub_1B03949A8(v128, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v132 = &v384;
      v384 = v129;
      v133 = &v383;
      v383 = v130;
      v134 = &v382;
      v382 = v131;
      sub_1B0394A48(0, &v384);
      sub_1B0394A48(2, v132);
      v380 = v274;
      v381 = v144;
      sub_1B03949FC(&v380, v132, v133, v134);
      v135 = v120;
      if (v120)
      {

        __break(1u);
      }

      else
      {
        v380 = v275;
        v381 = v145;
        sub_1B03949FC(&v380, &v384, &v383, &v382);
        v126 = 0;
        v380 = v276;
        v381 = v146;
        sub_1B03949FC(&v380, &v384, &v383, &v382);
        v125 = 0;
        v380 = v277;
        v381 = v147;
        sub_1B03949FC(&v380, &v384, &v383, &v382);
        v124 = 0;
        v380 = v278;
        v381 = v148;
        sub_1B03949FC(&v380, &v384, &v383, &v382);
        v123 = 0;
        v380 = v279;
        v381 = v150;
        sub_1B03949FC(&v380, &v384, &v383, &v382);
        _os_log_impl(&dword_1B0389000, v153, v154, "[%lld] (%u) Unable to create parser.", v129, 0x12u);
        v122 = 0;
        sub_1B03998A8(v130, 0, v127);
        sub_1B03998A8(v131, v122, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v153);
    (*(v320 + 8))(v323, v319);
    swift_getObjectType();
    [v259 messageContentLoaderDidFailLoadingContent_];
    MEMORY[0x1E69E5920](v256);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B08F5BEC(v347, v353);
    MEMORY[0x1E69E5928](v356);
    sub_1B0A7B704(v356, v338);
    if ((*(v340 + 48))(v338, 1, v339) == 1)
    {
      v71 = v325;
      sub_1B08F5148(v338);
      (*(v320 + 16))(v71, v354, v319);
      sub_1B08F5590(v354, v318);
      v169 = (*(v315 + 80) + 16) & ~*(v315 + 80);
      v174 = 7;
      v170 = swift_allocObject();
      sub_1B0901DA8(v318, v170 + v169);

      v173 = 32;
      v72 = swift_allocObject();
      v73 = v268;
      v175 = v72;
      *(v72 + 16) = v280;
      *(v72 + 24) = v73;

      v186 = sub_1B0E43988();
      v187 = sub_1B0E458E8();
      v172 = 17;
      v177 = swift_allocObject();
      *(v177 + 16) = 0;
      v178 = swift_allocObject();
      *(v178 + 16) = 8;
      v74 = swift_allocObject();
      v75 = v170;
      v171 = v74;
      *(v74 + 16) = v281;
      *(v74 + 24) = v75;
      v76 = swift_allocObject();
      v77 = v171;
      v179 = v76;
      *(v76 + 16) = v282;
      *(v76 + 24) = v77;
      v180 = swift_allocObject();
      *(v180 + 16) = 0;
      v181 = swift_allocObject();
      *(v181 + 16) = 4;
      v78 = swift_allocObject();
      v79 = v175;
      v176 = v78;
      *(v78 + 16) = v283;
      *(v78 + 24) = v79;
      v80 = swift_allocObject();
      v81 = v176;
      v183 = v80;
      *(v80 + 16) = v284;
      *(v80 + 24) = v81;
      v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v182 = sub_1B0E46A48();
      v184 = v82;

      v83 = v177;
      v84 = v184;
      *v184 = v285;
      v84[1] = v83;

      v85 = v178;
      v86 = v184;
      v184[2] = v286;
      v86[3] = v85;

      v87 = v179;
      v88 = v184;
      v184[4] = v287;
      v88[5] = v87;

      v89 = v180;
      v90 = v184;
      v184[6] = v288;
      v90[7] = v89;

      v91 = v181;
      v92 = v184;
      v184[8] = v289;
      v92[9] = v91;

      v93 = v183;
      v94 = v184;
      v184[10] = v290;
      v94[11] = v93;
      sub_1B0394964();

      if (os_log_type_enabled(v186, v187))
      {
        v95 = v313;
        v162 = sub_1B0E45D78();
        v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v161 = 0;
        v163 = sub_1B03949A8(0, v160, v160);
        v164 = sub_1B03949A8(v161, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v165 = &v379;
        v379 = v162;
        v166 = &v378;
        v378 = v163;
        v167 = &v377;
        v377 = v164;
        sub_1B0394A48(0, &v379);
        sub_1B0394A48(2, v165);
        v375 = v285;
        v376 = v177;
        sub_1B03949FC(&v375, v165, v166, v167);
        v168 = v95;
        if (v95)
        {

          __break(1u);
        }

        else
        {
          v375 = v286;
          v376 = v178;
          sub_1B03949FC(&v375, &v379, &v378, &v377);
          v159 = 0;
          v375 = v287;
          v376 = v179;
          sub_1B03949FC(&v375, &v379, &v378, &v377);
          v158 = 0;
          v375 = v288;
          v376 = v180;
          sub_1B03949FC(&v375, &v379, &v378, &v377);
          v157 = 0;
          v375 = v289;
          v376 = v181;
          sub_1B03949FC(&v375, &v379, &v378, &v377);
          v156 = 0;
          v375 = v290;
          v376 = v183;
          sub_1B03949FC(&v375, &v379, &v378, &v377);
          _os_log_impl(&dword_1B0389000, v186, v187, "[%lld] (%u) Unable to get library info for message.", v162, 0x12u);
          v155 = 0;
          sub_1B03998A8(v163, 0, v160);
          sub_1B03998A8(v164, v155, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v186);
      (*(v320 + 8))(v325, v319);
      sub_1B08F5DC8(v353);
      MEMORY[0x1E69E5920](v256);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1B08F524C(v338, v343);
      v18 = [v356 libraryID];
      sub_1B0A704E4(v18, v355, v343, v354, v331);
      if ((*(v333 + 48))(v331, 1, v332) == 1)
      {
        v46 = v327;
        sub_1B0901E9C(v331);
        (*(v320 + 16))(v46, v354, v319);
        sub_1B08F5590(v354, v318);
        v202 = (*(v315 + 80) + 16) & ~*(v315 + 80);
        v207 = 7;
        v203 = swift_allocObject();
        sub_1B0901DA8(v318, v203 + v202);

        v206 = 32;
        v47 = swift_allocObject();
        v48 = v268;
        v208 = v47;
        *(v47 + 16) = v291;
        *(v47 + 24) = v48;

        v219 = sub_1B0E43988();
        v220 = sub_1B0E458E8();
        v205 = 17;
        v210 = swift_allocObject();
        *(v210 + 16) = 0;
        v211 = swift_allocObject();
        *(v211 + 16) = 8;
        v49 = swift_allocObject();
        v50 = v203;
        v204 = v49;
        *(v49 + 16) = v292;
        *(v49 + 24) = v50;
        v51 = swift_allocObject();
        v52 = v204;
        v212 = v51;
        *(v51 + 16) = v293;
        *(v51 + 24) = v52;
        v213 = swift_allocObject();
        *(v213 + 16) = 0;
        v214 = swift_allocObject();
        *(v214 + 16) = 4;
        v53 = swift_allocObject();
        v54 = v208;
        v209 = v53;
        *(v53 + 16) = v294;
        *(v53 + 24) = v54;
        v55 = swift_allocObject();
        v56 = v209;
        v216 = v55;
        *(v55 + 16) = v295;
        *(v55 + 24) = v56;
        v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v215 = sub_1B0E46A48();
        v217 = v57;

        v58 = v210;
        v59 = v217;
        *v217 = v296;
        v59[1] = v58;

        v60 = v211;
        v61 = v217;
        v217[2] = v297;
        v61[3] = v60;

        v62 = v212;
        v63 = v217;
        v217[4] = v298;
        v63[5] = v62;

        v64 = v213;
        v65 = v217;
        v217[6] = v299;
        v65[7] = v64;

        v66 = v214;
        v67 = v217;
        v217[8] = v300;
        v67[9] = v66;

        v68 = v216;
        v69 = v217;
        v217[10] = v301;
        v69[11] = v68;
        sub_1B0394964();

        if (os_log_type_enabled(v219, v220))
        {
          v70 = v313;
          v195 = sub_1B0E45D78();
          v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v194 = 0;
          v196 = sub_1B03949A8(0, v193, v193);
          v197 = sub_1B03949A8(v194, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v198 = &v374;
          v374 = v195;
          v199 = &v373;
          v373 = v196;
          v200 = &v372;
          v372 = v197;
          sub_1B0394A48(0, &v374);
          sub_1B0394A48(2, v198);
          v370 = v296;
          v371 = v210;
          sub_1B03949FC(&v370, v198, v199, v200);
          v201 = v70;
          if (v70)
          {

            __break(1u);
          }

          else
          {
            v370 = v297;
            v371 = v211;
            sub_1B03949FC(&v370, &v374, &v373, &v372);
            v192 = 0;
            v370 = v298;
            v371 = v212;
            sub_1B03949FC(&v370, &v374, &v373, &v372);
            v191 = 0;
            v370 = v299;
            v371 = v213;
            sub_1B03949FC(&v370, &v374, &v373, &v372);
            v190 = 0;
            v370 = v300;
            v371 = v214;
            sub_1B03949FC(&v370, &v374, &v373, &v372);
            v189 = 0;
            v370 = v301;
            v371 = v216;
            sub_1B03949FC(&v370, &v374, &v373, &v372);
            _os_log_impl(&dword_1B0389000, v219, v220, "[%lld] (%u) Parsing message failed.", v195, 0x12u);
            v188 = 0;
            sub_1B03998A8(v196, 0, v193);
            sub_1B03998A8(v197, v188, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v219);
        (*(v320 + 8))(v327, v319);
        swift_getObjectType();
        [v259 messageContentLoaderDidFailLoadingContent_];
        sub_1B08F533C(v343);
        sub_1B08F5DC8(v353);
        MEMORY[0x1E69E5920](v256);
        swift_unknownObjectRelease();
      }

      else
      {
        v19 = v329;
        sub_1B0902120(v331, v336);
        (*(v320 + 16))(v19, v354, v319);
        sub_1B08F5590(v354, v318);
        v237 = (*(v315 + 80) + 16) & ~*(v315 + 80);
        v242 = 7;
        v238 = swift_allocObject();
        sub_1B0901DA8(v318, v238 + v237);

        v241 = 32;
        v20 = swift_allocObject();
        v21 = v268;
        v243 = v20;
        *(v20 + 16) = v302;
        *(v20 + 24) = v21;

        v254 = sub_1B0E43988();
        v255 = sub_1B0E45908();
        v240 = 17;
        v245 = swift_allocObject();
        *(v245 + 16) = 0;
        v246 = swift_allocObject();
        *(v246 + 16) = 8;
        v22 = swift_allocObject();
        v23 = v238;
        v239 = v22;
        *(v22 + 16) = v303;
        *(v22 + 24) = v23;
        v24 = swift_allocObject();
        v25 = v239;
        v247 = v24;
        *(v24 + 16) = v304;
        *(v24 + 24) = v25;
        v248 = swift_allocObject();
        *(v248 + 16) = 0;
        v249 = swift_allocObject();
        *(v249 + 16) = 4;
        v26 = swift_allocObject();
        v27 = v243;
        v244 = v26;
        *(v26 + 16) = v305;
        *(v26 + 24) = v27;
        v28 = swift_allocObject();
        v29 = v244;
        v251 = v28;
        *(v28 + 16) = v306;
        *(v28 + 24) = v29;
        v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v250 = sub_1B0E46A48();
        v252 = v30;

        v31 = v245;
        v32 = v252;
        *v252 = v307;
        v32[1] = v31;

        v33 = v246;
        v34 = v252;
        v252[2] = v308;
        v34[3] = v33;

        v35 = v247;
        v36 = v252;
        v252[4] = v309;
        v36[5] = v35;

        v37 = v248;
        v38 = v252;
        v252[6] = v310;
        v38[7] = v37;

        v39 = v249;
        v40 = v252;
        v252[8] = v311;
        v40[9] = v39;

        v41 = v251;
        v42 = v252;
        v252[10] = v312;
        v42[11] = v41;
        sub_1B0394964();

        if (os_log_type_enabled(v254, v255))
        {
          v43 = v313;
          v230 = sub_1B0E45D78();
          v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v229 = 0;
          v231 = sub_1B03949A8(0, v228, v228);
          v232 = sub_1B03949A8(v229, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v233 = &v368;
          v368 = v230;
          v234 = &v367;
          v367 = v231;
          v235 = &v366;
          v366 = v232;
          sub_1B0394A48(0, &v368);
          sub_1B0394A48(2, v233);
          v364 = v307;
          v365 = v245;
          sub_1B03949FC(&v364, v233, v234, v235);
          v236 = v43;
          if (v43)
          {

            __break(1u);
          }

          else
          {
            v364 = v308;
            v365 = v246;
            sub_1B03949FC(&v364, &v368, &v367, &v366);
            v227 = 0;
            v364 = v309;
            v365 = v247;
            sub_1B03949FC(&v364, &v368, &v367, &v366);
            v226 = 0;
            v364 = v310;
            v365 = v248;
            sub_1B03949FC(&v364, &v368, &v367, &v366);
            v225 = 0;
            v364 = v311;
            v365 = v249;
            sub_1B03949FC(&v364, &v368, &v367, &v366);
            v224 = 0;
            v364 = v312;
            v365 = v251;
            sub_1B03949FC(&v364, &v368, &v367, &v366);
            _os_log_impl(&dword_1B0389000, v254, v255, "[%lld] (%u) Did parse message.", v230, 0x12u);
            v223 = 0;
            sub_1B03998A8(v231, 0, v228);
            sub_1B03998A8(v232, v223, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v254);
        (*(v320 + 8))(v329, v319);
        v44 = &v336[*(v332 + 48)];
        v221 = 80;
        memcpy(v369, v44, sizeof(v369));
        v45 = &v336[*(v332 + 48)];
        v222 = __dst;
        memcpy(__dst, v45, sizeof(__dst));
        sub_1B08FF308(v336, __dst);
        sub_1B09022F0(v336);
        sub_1B08F533C(v343);
        sub_1B08F5DC8(v353);
        MEMORY[0x1E69E5920](v256);
        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1B08FCB1C(uint64_t a1, uint64_t a2)
{
  v121 = a1;
  v120 = a2;
  v92 = sub_1B08FA1F8;
  v93 = sub_1B08FA1E8;
  v94 = sub_1B06BCD8C;
  v95 = sub_1B07AB020;
  v96 = sub_1B039BC08;
  v97 = sub_1B0398F5C;
  v98 = sub_1B0398F5C;
  v99 = sub_1B03992D4;
  v100 = sub_1B0398F5C;
  v101 = sub_1B0398F5C;
  v102 = sub_1B03991EC;
  v103 = sub_1B0902558;
  v139 = 0;
  v137 = 0;
  v138 = 0;
  v136 = 0;
  v104 = 0;
  v110 = 0;
  v105 = sub_1B0E439A8();
  v106 = *(v105 - 8);
  v107 = v105 - 8;
  v108 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v109 = v50 - v108;
  v111 = *(_s6LoggerVMa_2(v3) - 8);
  v112 = v111;
  v113 = *(v111 + 64);
  v114 = (v113 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v110);
  v115 = v50 - v114;
  v116 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v117 = v50 - v116;
  v139 = v50 - v116;
  v118 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v119 = v50 - v118;
  v126 = sub_1B0E44468();
  v124 = *(v126 - 8);
  v125 = v126 - 8;
  v122 = (*(v124 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v121);
  v127 = (v50 - v122);
  v137 = v8;
  v138 = v9;
  v136 = v2;

  v123 = *(v2 + 72);
  MEMORY[0x1E69E5928](v123);
  v10 = v124;
  *v127 = v123;
  (*(v10 + 104))();
  v128 = sub_1B0E44488();
  (*(v124 + 8))(v127, v126);
  result = v128;
  if (v128)
  {
    v12 = v109;

    sub_1B08F5590(v91 + OBJC_IVAR____TtCE7MessageCSo33MFNanoServerMessageContentLoader2P33_55FE1C6453F069120C6D9FDA5598804714Implementation_logger, v119);
    (*(v106 + 16))(v12, v119, v105);
    sub_1B039480C(v119);

    v76 = 32;
    v77 = 7;
    v13 = swift_allocObject();
    v14 = v91;
    v78 = v13;
    *(v13 + 16) = v92;
    *(v13 + 24) = v14;

    v89 = sub_1B0E43988();
    v90 = sub_1B0E458C8();
    v75 = 17;
    v80 = swift_allocObject();
    *(v80 + 16) = 0;
    v81 = swift_allocObject();
    *(v81 + 16) = 8;
    v15 = swift_allocObject();
    v16 = v91;
    v74 = v15;
    *(v15 + 16) = v93;
    *(v15 + 24) = v16;
    v17 = swift_allocObject();
    v18 = v74;
    v82 = v17;
    *(v17 + 16) = v94;
    *(v17 + 24) = v18;
    v83 = swift_allocObject();
    *(v83 + 16) = 0;
    v84 = swift_allocObject();
    *(v84 + 16) = 4;
    v19 = swift_allocObject();
    v20 = v78;
    v79 = v19;
    *(v19 + 16) = v95;
    *(v19 + 24) = v20;
    v21 = swift_allocObject();
    v22 = v79;
    v86 = v21;
    *(v21 + 16) = v96;
    *(v21 + 24) = v22;
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v85 = sub_1B0E46A48();
    v87 = v23;

    v24 = v80;
    v25 = v87;
    *v87 = v97;
    v25[1] = v24;

    v26 = v81;
    v27 = v87;
    v87[2] = v98;
    v27[3] = v26;

    v28 = v82;
    v29 = v87;
    v87[4] = v99;
    v29[5] = v28;

    v30 = v83;
    v31 = v87;
    v87[6] = v100;
    v31[7] = v30;

    v32 = v84;
    v33 = v87;
    v87[8] = v101;
    v33[9] = v32;

    v34 = v86;
    v35 = v87;
    v87[10] = v102;
    v35[11] = v34;
    sub_1B0394964();

    if (os_log_type_enabled(v89, v90))
    {
      v36 = v104;
      v67 = sub_1B0E45D78();
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v66 = 0;
      v68 = sub_1B03949A8(0, v65, v65);
      v69 = sub_1B03949A8(v66, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v70 = &v133;
      v133 = v67;
      v71 = &v132;
      v132 = v68;
      v72 = &v131;
      v131 = v69;
      sub_1B0394A48(0, &v133);
      sub_1B0394A48(2, v70);
      v129 = v97;
      v130 = v80;
      sub_1B03949FC(&v129, v70, v71, v72);
      v73 = v36;
      if (v36)
      {

        __break(1u);
      }

      else
      {
        v129 = v98;
        v130 = v81;
        sub_1B03949FC(&v129, &v133, &v132, &v131);
        v64 = 0;
        v129 = v99;
        v130 = v82;
        sub_1B03949FC(&v129, &v133, &v132, &v131);
        v63 = 0;
        v129 = v100;
        v130 = v83;
        sub_1B03949FC(&v129, &v133, &v132, &v131);
        v62 = 0;
        v129 = v101;
        v130 = v84;
        sub_1B03949FC(&v129, &v133, &v132, &v131);
        v61 = 0;
        v129 = v102;
        v130 = v86;
        sub_1B03949FC(&v129, &v133, &v132, &v131);
        _os_log_impl(&dword_1B0389000, v89, v90, "[%lld] (%u) Requesting download.", v67, 0x12u);
        v60 = 0;
        sub_1B03998A8(v68, 0, v65);
        sub_1B03998A8(v69, v60, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v89);
    (*(v106 + 8))(v109, v105);
    v59 = v91[10];
    MEMORY[0x1E69E5928](v59);
    v58 = v91[5];
    MEMORY[0x1E69E5928](v58);
    v57 = v91[9];
    MEMORY[0x1E69E5928](v57);
    v50[0] = v91 + OBJC_IVAR____TtCE7MessageCSo33MFNanoServerMessageContentLoader2P33_55FE1C6453F069120C6D9FDA5598804714Implementation_delegate;
    v50[1] = v135;
    v50[2] = 32;
    v50[3] = 0;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_endAccess();
    v50[4] = v91 + 11;
    v50[5] = v134;
    swift_beginAccess();
    v55 = swift_unknownObjectWeakLoadStrong();
    swift_endAccess();
    sub_1B08F5590(v91 + OBJC_IVAR____TtCE7MessageCSo33MFNanoServerMessageContentLoader2P33_55FE1C6453F069120C6D9FDA5598804714Implementation_logger, v117);
    swift_unknownObjectRetain();
    MEMORY[0x1E69E5928](v55);
    sub_1B08F5590(v117, v115);

    v51 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v52 = (v51 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    v38 = v51;
    v39 = v55;
    v40 = v37;
    v41 = v115;
    v54 = v40;
    *(v40 + 16) = Strong;
    *(v40 + 24) = v39;
    sub_1B0901DA8(v41, v40 + v38);
    v42 = v53;
    v43 = v121;
    v44 = v120;
    v45 = v103;
    v46 = v54;
    v47 = v57;
    v48 = v58;
    *(v54 + v52) = v91;
    v49 = (v46 + v42);
    *v49 = v43;
    v49[1] = v44;
    sub_1B0A480E4(v48, v47, v45, v46);

    sub_1B039480C(v117);
    MEMORY[0x1E69E5920](v55);
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](v57);
    MEMORY[0x1E69E5920](v58);
    return MEMORY[0x1E69E5920](v59);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B08FDB38(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7)
{
  v163 = a1;
  v174 = a2;
  v164 = a3;
  v165 = a4;
  v166 = a5;
  v167 = a6;
  v168 = a7;
  v130 = sub_1B08FA1F8;
  v131 = sub_1B08FA1E8;
  v132 = sub_1B06BCD8C;
  v133 = sub_1B07AB020;
  v134 = sub_1B039BC08;
  v135 = sub_1B0398F5C;
  v136 = sub_1B0398F5C;
  v137 = sub_1B03992D4;
  v138 = sub_1B0398F5C;
  v139 = sub_1B0398F5C;
  v140 = sub_1B03991EC;
  v141 = sub_1B08FA1F8;
  v142 = sub_1B08FA1E8;
  v143 = sub_1B06BCD8C;
  v144 = sub_1B07AB020;
  v145 = sub_1B039BC08;
  v146 = sub_1B0398F5C;
  v147 = sub_1B0398F5C;
  v148 = sub_1B03992D4;
  v149 = sub_1B0398F5C;
  v150 = sub_1B0398F5C;
  v151 = sub_1B03991EC;
  v194 = 0;
  v193 = 0;
  v192 = 0;
  v191 = 0;
  v190 = 0;
  v189 = 0;
  v187 = 0;
  v188 = 0;
  v186 = 0;
  v185 = 0;
  v152 = 0;
  v160 = 0;
  v153 = sub_1B0E439A8();
  v154 = *(v153 - 8);
  v155 = v153 - 8;
  v156 = (*(v154 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v153);
  v157 = v68 - v156;
  v158 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v68 - v156);
  v159 = v68 - v158;
  v161 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2E10, &qword_1B0E9B598) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v160);
  v162 = v68 - v161;
  v169 = type metadata accessor for Message(v8);
  v170 = *(v169 - 8);
  v171 = v169 - 8;
  v172 = (*(v170 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v174);
  v173 = v68 - v172;
  v194 = v68 - v172;
  v193 = v9;
  v192 = v10;
  v191 = v11;
  v190 = v12;
  v189 = v13;
  v187 = v14;
  v188 = v15;
  result = swift_unknownObjectRetain();
  if (v174)
  {
    v129 = v174;
    v128 = v174;
    v186 = v174;
    MEMORY[0x1E69E5928](v164);
    if (v164)
    {
      v127 = v164;
      v126 = v164;
      v185 = v164;
      sub_1B08F5010(v163, v162);
      v17 = (*(v170 + 48))(v162, 1, v169);
      if (v17 == 1)
      {
        v43 = v157;
        sub_1B07AF920(v162);
        (*(v154 + 16))(v43, v165, v153);

        v80 = 32;
        v81 = 7;
        v44 = swift_allocObject();
        v45 = v166;
        v82 = v44;
        *(v44 + 16) = v130;
        *(v44 + 24) = v45;

        v93 = sub_1B0E43988();
        v94 = sub_1B0E458E8();
        v79 = 17;
        v84 = swift_allocObject();
        *(v84 + 16) = 0;
        v85 = swift_allocObject();
        *(v85 + 16) = 8;
        v46 = swift_allocObject();
        v47 = v166;
        v78 = v46;
        *(v46 + 16) = v131;
        *(v46 + 24) = v47;
        v48 = swift_allocObject();
        v49 = v78;
        v86 = v48;
        *(v48 + 16) = v132;
        *(v48 + 24) = v49;
        v87 = swift_allocObject();
        *(v87 + 16) = 0;
        v88 = swift_allocObject();
        *(v88 + 16) = 4;
        v50 = swift_allocObject();
        v51 = v82;
        v83 = v50;
        *(v50 + 16) = v133;
        *(v50 + 24) = v51;
        v52 = swift_allocObject();
        v53 = v83;
        v90 = v52;
        *(v52 + 16) = v134;
        *(v52 + 24) = v53;
        v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v89 = sub_1B0E46A48();
        v91 = v54;

        v55 = v84;
        v56 = v91;
        *v91 = v135;
        v56[1] = v55;

        v57 = v85;
        v58 = v91;
        v91[2] = v136;
        v58[3] = v57;

        v59 = v86;
        v60 = v91;
        v91[4] = v137;
        v60[5] = v59;

        v61 = v87;
        v62 = v91;
        v91[6] = v138;
        v62[7] = v61;

        v63 = v88;
        v64 = v91;
        v91[8] = v139;
        v64[9] = v63;

        v65 = v90;
        v66 = v91;
        v91[10] = v140;
        v66[11] = v65;
        sub_1B0394964();

        if (os_log_type_enabled(v93, v94))
        {
          v67 = v152;
          v71 = sub_1B0E45D78();
          v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v70 = 0;
          v72 = sub_1B03949A8(0, v69, v69);
          v73 = sub_1B03949A8(v70, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v74 = &v184;
          v184 = v71;
          v75 = &v183;
          v183 = v72;
          v76 = &v182;
          v182 = v73;
          sub_1B0394A48(0, &v184);
          sub_1B0394A48(2, v74);
          v180 = v135;
          v181 = v84;
          sub_1B03949FC(&v180, v74, v75, v76);
          v77 = v67;
          if (v67)
          {

            __break(1u);
          }

          else
          {
            v180 = v136;
            v181 = v85;
            sub_1B03949FC(&v180, &v184, &v183, &v182);
            v68[4] = 0;
            v180 = v137;
            v181 = v86;
            sub_1B03949FC(&v180, &v184, &v183, &v182);
            v68[3] = 0;
            v180 = v138;
            v181 = v87;
            sub_1B03949FC(&v180, &v184, &v183, &v182);
            v68[2] = 0;
            v180 = v139;
            v181 = v88;
            sub_1B03949FC(&v180, &v184, &v183, &v182);
            v68[1] = 0;
            v180 = v140;
            v181 = v90;
            sub_1B03949FC(&v180, &v184, &v183, &v182);
            _os_log_impl(&dword_1B0389000, v93, v94, "[%lld] (%u) Download failed.", v71, 0x12u);
            v68[0] = 0;
            sub_1B03998A8(v72, 0, v69);
            sub_1B03998A8(v73, v68[0], MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v93);
        (*(v154 + 8))(v157, v153);
        swift_getObjectType();
        [v128 messageContentLoaderDidFailLoadingContent_];
        MEMORY[0x1E69E5920](v126);
        return swift_unknownObjectRelease();
      }

      else
      {
        v18 = v159;
        (*(v170 + 32))(v173, v162, v169);
        (*(v154 + 16))(v18, v165, v153);

        v111 = 32;
        v112 = 7;
        v19 = swift_allocObject();
        v20 = v166;
        v113 = v19;
        *(v19 + 16) = v141;
        *(v19 + 24) = v20;

        v124 = sub_1B0E43988();
        v125 = sub_1B0E45908();
        v110 = 17;
        v115 = swift_allocObject();
        *(v115 + 16) = 0;
        v116 = swift_allocObject();
        *(v116 + 16) = 8;
        v21 = swift_allocObject();
        v22 = v166;
        v109 = v21;
        *(v21 + 16) = v142;
        *(v21 + 24) = v22;
        v23 = swift_allocObject();
        v24 = v109;
        v117 = v23;
        *(v23 + 16) = v143;
        *(v23 + 24) = v24;
        v118 = swift_allocObject();
        *(v118 + 16) = 0;
        v119 = swift_allocObject();
        *(v119 + 16) = 4;
        v25 = swift_allocObject();
        v26 = v113;
        v114 = v25;
        *(v25 + 16) = v144;
        *(v25 + 24) = v26;
        v27 = swift_allocObject();
        v28 = v114;
        v121 = v27;
        *(v27 + 16) = v145;
        *(v27 + 24) = v28;
        v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v120 = sub_1B0E46A48();
        v122 = v29;

        v30 = v115;
        v31 = v122;
        *v122 = v146;
        v31[1] = v30;

        v32 = v116;
        v33 = v122;
        v122[2] = v147;
        v33[3] = v32;

        v34 = v117;
        v35 = v122;
        v122[4] = v148;
        v35[5] = v34;

        v36 = v118;
        v37 = v122;
        v122[6] = v149;
        v37[7] = v36;

        v38 = v119;
        v39 = v122;
        v122[8] = v150;
        v39[9] = v38;

        v40 = v121;
        v41 = v122;
        v122[10] = v151;
        v41[11] = v40;
        sub_1B0394964();

        if (os_log_type_enabled(v124, v125))
        {
          v42 = v152;
          v102 = sub_1B0E45D78();
          v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v101 = 0;
          v103 = sub_1B03949A8(0, v100, v100);
          v104 = sub_1B03949A8(v101, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v105 = &v179;
          v179 = v102;
          v106 = &v178;
          v178 = v103;
          v107 = &v177;
          v177 = v104;
          sub_1B0394A48(0, &v179);
          sub_1B0394A48(2, v105);
          v175 = v146;
          v176 = v115;
          sub_1B03949FC(&v175, v105, v106, v107);
          v108 = v42;
          if (v42)
          {

            __break(1u);
          }

          else
          {
            v175 = v147;
            v176 = v116;
            sub_1B03949FC(&v175, &v179, &v178, &v177);
            v99 = 0;
            v175 = v148;
            v176 = v117;
            sub_1B03949FC(&v175, &v179, &v178, &v177);
            v98 = 0;
            v175 = v149;
            v176 = v118;
            sub_1B03949FC(&v175, &v179, &v178, &v177);
            v97 = 0;
            v175 = v150;
            v176 = v119;
            sub_1B03949FC(&v175, &v179, &v178, &v177);
            v96 = 0;
            v175 = v151;
            v176 = v121;
            sub_1B03949FC(&v175, &v179, &v178, &v177);
            _os_log_impl(&dword_1B0389000, v124, v125, "[%lld] (%u) Did download.", v102, 0x12u);
            v95 = 0;
            sub_1B03998A8(v103, 0, v100);
            sub_1B03998A8(v104, v95, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v124);
        (*(v154 + 8))(v159, v153);

        v167(v173);

        (*(v170 + 8))(v173, v169);
        MEMORY[0x1E69E5920](v126);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1B08FF308(char *a1, uint64_t a2)
{
  v349 = a1;
  v348 = a2;
  v278 = sub_1B08FA1F8;
  v279 = sub_1B08FA1E8;
  v280 = sub_1B06BCD8C;
  v281 = sub_1B07AB020;
  v282 = sub_1B039BC08;
  v283 = sub_1B090297C;
  v284 = sub_1B039BCF8;
  v285 = sub_1B09029E0;
  v286 = sub_1B039BCF8;
  v287 = sub_1B0902A44;
  v288 = sub_1B039BCF8;
  v289 = sub_1B0398F5C;
  v290 = sub_1B0398F5C;
  v291 = sub_1B03992D4;
  v292 = sub_1B0398F5C;
  v293 = sub_1B0398F5C;
  v294 = sub_1B03991EC;
  v295 = sub_1B0398F5C;
  v296 = sub_1B0398F5C;
  v297 = sub_1B039BCEC;
  v298 = sub_1B0398F5C;
  v299 = sub_1B0398F5C;
  v300 = sub_1B039BCEC;
  v301 = sub_1B0398F5C;
  v302 = sub_1B0398F5C;
  v303 = sub_1B039BCEC;
  v304 = sub_1B08FA1F8;
  v305 = sub_1B08FA1E8;
  v306 = sub_1B06BCD8C;
  v307 = sub_1B07AB020;
  v308 = sub_1B039BC08;
  v309 = sub_1B0398F5C;
  v310 = sub_1B0398F5C;
  v311 = sub_1B03992D4;
  v312 = sub_1B0398F5C;
  v313 = sub_1B0398F5C;
  v314 = sub_1B03991EC;
  v315 = sub_1B08FA1F8;
  v316 = sub_1B08FA1E8;
  v317 = sub_1B06BCD8C;
  v318 = sub_1B07AB020;
  v319 = sub_1B039BC08;
  v320 = sub_1B0398F5C;
  v321 = sub_1B0398F5C;
  v322 = sub_1B03992D4;
  v323 = sub_1B0398F5C;
  v324 = sub_1B0398F5C;
  v325 = sub_1B03991EC;
  v389 = 0;
  v388 = 0;
  v387 = 0;
  v326 = 0;
  v380 = 0;
  v373 = 0;
  v372 = 0;
  v371 = 0;
  memset(v370, 0, sizeof(v370));
  v364 = 0;
  v365 = 0;
  v362 = 0;
  v363 = 0;
  v341 = 0;
  v327 = *(type metadata accessor for WatchOSRender.Message(0) - 8);
  v328 = v327;
  v329 = *(v327 + 64);
  v330 = (v329 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v331 = v124 - v330;
  v332 = sub_1B0E439A8();
  v333 = *(v332 - 8);
  v334 = v332 - 8;
  v335 = (*(v333 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v341);
  v336 = v124 - v335;
  v337 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v338 = v124 - v337;
  v339 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v340 = v124 - v339;
  v342 = (*(*(_s6LoggerVMa_2(v7) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v341);
  v343 = v124 - v342;
  v344 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v345 = v124 - v344;
  v346 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v347 = v124 - v346;
  v354 = sub_1B0E44468();
  v352 = *(v354 - 8);
  v353 = v354 - 8;
  v350 = (*(v352 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v349);
  v355 = (v124 - v350);
  v389 = v12;
  v388 = v13;
  v387 = v2;

  v351 = *(v2 + 72);
  MEMORY[0x1E69E5928](v351);
  v14 = v352;
  *v355 = v351;
  (*(v14 + 104))();
  v356 = sub_1B0E44488();
  (*(v352 + 8))(v355, v354);
  result = v356;
  if (v356)
  {

    v274 = v277 + OBJC_IVAR____TtCE7MessageCSo33MFNanoServerMessageContentLoader2P33_55FE1C6453F069120C6D9FDA5598804714Implementation_delegate;
    v275 = &v386;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_endAccess();
    if (Strong)
    {
      v273 = Strong;
      v269 = Strong;
      v380 = Strong;
      v270 = v277 + 88;
      v271 = &v379;
      swift_beginAccess();
      v272 = swift_unknownObjectWeakLoadStrong();
      swift_endAccess();
      if (v272)
      {
        v268 = v272;
        v225 = v272;
        v373 = v272;
        v226 = sub_1B0A7D9FC();
        v372 = v226;
        v227 = *(v277 + 16);
        v228 = *(v277 + 24);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v16 = sub_1B0A70B04(v227, v228);
        v17 = v340;
        v229 = v16;

        v371 = v229;
        sub_1B08F5590(v277 + OBJC_IVAR____TtCE7MessageCSo33MFNanoServerMessageContentLoader2P33_55FE1C6453F069120C6D9FDA5598804714Implementation_logger, v347);
        (*(v333 + 16))(v17, v347, v332);
        sub_1B039480C(v347);

        v244 = 32;
        v245 = 7;
        v18 = swift_allocObject();
        v19 = v277;
        v235 = v18;
        *(v18 + 16) = v278;
        *(v18 + 24) = v19;

        sub_1B0902624(v349, v331);
        v232 = *(v328 + 80);
        v230 = (v232 + 16) & ~v232;
        v237 = swift_allocObject();
        sub_1B08F57EC(v331, (v237 + v230));
        sub_1B0902624(v349, v331);
        v231 = (v232 + 16) & ~v232;
        v239 = swift_allocObject();
        sub_1B08F57EC(v331, (v239 + v231));
        sub_1B0902624(v349, v331);
        v233 = (v232 + 16) & ~v232;
        v246 = swift_allocObject();
        sub_1B08F57EC(v331, (v246 + v233));
        v266 = sub_1B0E43988();
        v267 = sub_1B0E458D8();
        v242 = 17;
        v248 = swift_allocObject();
        *(v248 + 16) = 0;
        v249 = swift_allocObject();
        v243 = 8;
        *(v249 + 16) = 8;
        v20 = swift_allocObject();
        v21 = v277;
        v234 = v20;
        *(v20 + 16) = v279;
        *(v20 + 24) = v21;
        v22 = swift_allocObject();
        v23 = v234;
        v250 = v22;
        *(v22 + 16) = v280;
        *(v22 + 24) = v23;
        v251 = swift_allocObject();
        *(v251 + 16) = 0;
        v252 = swift_allocObject();
        *(v252 + 16) = 4;
        v24 = swift_allocObject();
        v25 = v235;
        v236 = v24;
        *(v24 + 16) = v281;
        *(v24 + 24) = v25;
        v26 = swift_allocObject();
        v27 = v236;
        v253 = v26;
        *(v26 + 16) = v282;
        *(v26 + 24) = v27;
        v254 = swift_allocObject();
        v241 = 32;
        *(v254 + 16) = 32;
        v255 = swift_allocObject();
        *(v255 + 16) = v243;
        v28 = swift_allocObject();
        v29 = v237;
        v238 = v28;
        *(v28 + 16) = v283;
        *(v28 + 24) = v29;
        v30 = swift_allocObject();
        v31 = v238;
        v256 = v30;
        *(v30 + 16) = v284;
        *(v30 + 24) = v31;
        v257 = swift_allocObject();
        *(v257 + 16) = v241;
        v258 = swift_allocObject();
        *(v258 + 16) = v243;
        v32 = swift_allocObject();
        v33 = v239;
        v240 = v32;
        *(v32 + 16) = v285;
        *(v32 + 24) = v33;
        v34 = swift_allocObject();
        v35 = v240;
        v259 = v34;
        *(v34 + 16) = v286;
        *(v34 + 24) = v35;
        v260 = swift_allocObject();
        *(v260 + 16) = v241;
        v261 = swift_allocObject();
        *(v261 + 16) = v243;
        v36 = swift_allocObject();
        v37 = v246;
        v247 = v36;
        *(v36 + 16) = v287;
        *(v36 + 24) = v37;
        v38 = swift_allocObject();
        v39 = v247;
        v263 = v38;
        *(v38 + 16) = v288;
        *(v38 + 24) = v39;
        v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v262 = sub_1B0E46A48();
        v264 = v40;

        v41 = v248;
        v42 = v264;
        *v264 = v289;
        v42[1] = v41;

        v43 = v249;
        v44 = v264;
        v264[2] = v290;
        v44[3] = v43;

        v45 = v250;
        v46 = v264;
        v264[4] = v291;
        v46[5] = v45;

        v47 = v251;
        v48 = v264;
        v264[6] = v292;
        v48[7] = v47;

        v49 = v252;
        v50 = v264;
        v264[8] = v293;
        v50[9] = v49;

        v51 = v253;
        v52 = v264;
        v264[10] = v294;
        v52[11] = v51;

        v53 = v254;
        v54 = v264;
        v264[12] = v295;
        v54[13] = v53;

        v55 = v255;
        v56 = v264;
        v264[14] = v296;
        v56[15] = v55;

        v57 = v256;
        v58 = v264;
        v264[16] = v297;
        v58[17] = v57;

        v59 = v257;
        v60 = v264;
        v264[18] = v298;
        v60[19] = v59;

        v61 = v258;
        v62 = v264;
        v264[20] = v299;
        v62[21] = v61;

        v63 = v259;
        v64 = v264;
        v264[22] = v300;
        v64[23] = v63;

        v65 = v260;
        v66 = v264;
        v264[24] = v301;
        v66[25] = v65;

        v67 = v261;
        v68 = v264;
        v264[26] = v302;
        v68[27] = v67;

        v69 = v263;
        v70 = v264;
        v264[28] = v303;
        v70[29] = v69;
        sub_1B0394964();

        if (os_log_type_enabled(v266, v267))
        {
          v71 = v326;
          v218 = sub_1B0E45D78();
          v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v219 = sub_1B03949A8(0, v217, v217);
          v220 = sub_1B03949A8(3, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v221 = &v361;
          v361 = v218;
          v222 = &v360;
          v360 = v219;
          v223 = &v359;
          v359 = v220;
          sub_1B0394A48(2, &v361);
          sub_1B0394A48(5, v221);
          v357 = v289;
          v358 = v248;
          sub_1B03949FC(&v357, v221, v222, v223);
          v224 = v71;
          if (v71)
          {

            __break(1u);
          }

          else
          {
            v357 = v290;
            v358 = v249;
            sub_1B03949FC(&v357, &v361, &v360, &v359);
            v215 = 0;
            v357 = v291;
            v358 = v250;
            sub_1B03949FC(&v357, &v361, &v360, &v359);
            v214 = 0;
            v357 = v292;
            v358 = v251;
            sub_1B03949FC(&v357, &v361, &v360, &v359);
            v213 = 0;
            v357 = v293;
            v358 = v252;
            sub_1B03949FC(&v357, &v361, &v360, &v359);
            v212 = 0;
            v357 = v294;
            v358 = v253;
            sub_1B03949FC(&v357, &v361, &v360, &v359);
            v211 = 0;
            v357 = v295;
            v358 = v254;
            sub_1B03949FC(&v357, &v361, &v360, &v359);
            v210 = 0;
            v357 = v296;
            v358 = v255;
            sub_1B03949FC(&v357, &v361, &v360, &v359);
            v209 = 0;
            v357 = v297;
            v358 = v256;
            sub_1B03949FC(&v357, &v361, &v360, &v359);
            v208 = 0;
            v357 = v298;
            v358 = v257;
            sub_1B03949FC(&v357, &v361, &v360, &v359);
            v207 = 0;
            v357 = v299;
            v358 = v258;
            sub_1B03949FC(&v357, &v361, &v360, &v359);
            v206 = 0;
            v357 = v300;
            v358 = v259;
            sub_1B03949FC(&v357, &v361, &v360, &v359);
            v205 = 0;
            v357 = v301;
            v358 = v260;
            sub_1B03949FC(&v357, &v361, &v360, &v359);
            v204 = 0;
            v357 = v302;
            v358 = v261;
            sub_1B03949FC(&v357, &v361, &v360, &v359);
            v203 = 0;
            v357 = v303;
            v358 = v263;
            sub_1B03949FC(&v357, &v361, &v360, &v359);
            v202 = 0;
            _os_log_impl(&dword_1B0389000, v266, v267, "[%lld] (%u) Sending message, ID: '%s', account: '%s', mailbox: '%s'.", v218, 0x30u);
            sub_1B03998A8(v219, 0, v217);
            sub_1B03998A8(v220, 3, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();

            v216 = v202;
          }
        }

        else
        {
          v72 = v326;

          v216 = v72;
        }

        v200 = v216;
        MEMORY[0x1E69E5920](v266);
        (*(v333 + 8))(v340, v332);
        swift_getObjectType();
        [v269 messageContentLoader:v225 receivedMailContent:v229 forMessage:v226 loadedProtected:0];
        v198 = *(v348 + 72);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0902AA8();
        v199 = &v390;
        sub_1B0E445C8();
        memcpy(v370, v199, sizeof(v370));
        for (i = v200; ; i = v193)
        {
          v193 = i;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2F30, &unk_1B0EA0630);
          sub_1B0E446D8();
          v194 = v366;
          v195 = v367;
          v196 = v368;
          v197 = v369;
          if (!v367)
          {
            break;
          }

          v189 = v194;
          v190 = v195;
          v191 = v196;
          v192 = v197;
          v187 = v197;
          v186 = v196;
          v188 = v195;
          v182 = v194;
          v364 = v194;
          v365 = v195;
          v362 = v196;
          v363 = v197;
          swift_getObjectType();
          sub_1B03B2000(v186, v187);
          v185 = sub_1B0E42F18();
          sub_1B0391D50(v186, v187);
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          sub_1B0A6A7C8(v182, v188);
          v183 = v73;
          v184 = sub_1B0E44AC8();

          [v269 messageContentLoader:v225 receivedAttachmentData:v185 contentId:v184 loadedProtected:0];
          MEMORY[0x1E69E5920](v184);
          MEMORY[0x1E69E5920](v185);
          sub_1B0391D50(v186, v187);
        }

        sub_1B06B91B0();
        swift_getObjectType();
        [v269 messageContentLoaderDidFinishLoading_];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        MEMORY[0x1E69E5920](v225);
        return swift_unknownObjectRelease();
      }

      else
      {
        v74 = v338;
        sub_1B08F5590(v277 + OBJC_IVAR____TtCE7MessageCSo33MFNanoServerMessageContentLoader2P33_55FE1C6453F069120C6D9FDA5598804714Implementation_logger, v345);
        (*(v333 + 16))(v74, v345, v332);
        sub_1B039480C(v345);

        v167 = 32;
        v168 = 7;
        v75 = swift_allocObject();
        v76 = v277;
        v169 = v75;
        *(v75 + 16) = v304;
        *(v75 + 24) = v76;

        v180 = sub_1B0E43988();
        v181 = sub_1B0E458E8();
        v166 = 17;
        v171 = swift_allocObject();
        *(v171 + 16) = 0;
        v172 = swift_allocObject();
        *(v172 + 16) = 8;
        v77 = swift_allocObject();
        v78 = v277;
        v165 = v77;
        *(v77 + 16) = v305;
        *(v77 + 24) = v78;
        v79 = swift_allocObject();
        v80 = v165;
        v173 = v79;
        *(v79 + 16) = v306;
        *(v79 + 24) = v80;
        v174 = swift_allocObject();
        *(v174 + 16) = 0;
        v175 = swift_allocObject();
        *(v175 + 16) = 4;
        v81 = swift_allocObject();
        v82 = v169;
        v170 = v81;
        *(v81 + 16) = v307;
        *(v81 + 24) = v82;
        v83 = swift_allocObject();
        v84 = v170;
        v177 = v83;
        *(v83 + 16) = v308;
        *(v83 + 24) = v84;
        v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v176 = sub_1B0E46A48();
        v178 = v85;

        v86 = v171;
        v87 = v178;
        *v178 = v309;
        v87[1] = v86;

        v88 = v172;
        v89 = v178;
        v178[2] = v310;
        v89[3] = v88;

        v90 = v173;
        v91 = v178;
        v178[4] = v311;
        v91[5] = v90;

        v92 = v174;
        v93 = v178;
        v178[6] = v312;
        v93[7] = v92;

        v94 = v175;
        v95 = v178;
        v178[8] = v313;
        v95[9] = v94;

        v96 = v177;
        v97 = v178;
        v178[10] = v314;
        v97[11] = v96;
        sub_1B0394964();

        if (os_log_type_enabled(v180, v181))
        {
          v98 = v326;
          v158 = sub_1B0E45D78();
          v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v157 = 0;
          v159 = sub_1B03949A8(0, v156, v156);
          v160 = sub_1B03949A8(v157, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v161 = &v378;
          v378 = v158;
          v162 = &v377;
          v377 = v159;
          v163 = &v376;
          v376 = v160;
          sub_1B0394A48(0, &v378);
          sub_1B0394A48(2, v161);
          v374 = v309;
          v375 = v171;
          sub_1B03949FC(&v374, v161, v162, v163);
          v164 = v98;
          if (v98)
          {

            __break(1u);
          }

          else
          {
            v374 = v310;
            v375 = v172;
            sub_1B03949FC(&v374, &v378, &v377, &v376);
            v155 = 0;
            v374 = v311;
            v375 = v173;
            sub_1B03949FC(&v374, &v378, &v377, &v376);
            v154 = 0;
            v374 = v312;
            v375 = v174;
            sub_1B03949FC(&v374, &v378, &v377, &v376);
            v153 = 0;
            v374 = v313;
            v375 = v175;
            sub_1B03949FC(&v374, &v378, &v377, &v376);
            v152 = 0;
            v374 = v314;
            v375 = v177;
            sub_1B03949FC(&v374, &v378, &v377, &v376);
            _os_log_impl(&dword_1B0389000, v180, v181, "[%lld] (%u) Loader has been deallocated.", v158, 0x12u);
            v151 = 0;
            sub_1B03998A8(v159, 0, v156);
            sub_1B03998A8(v160, v151, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v180);
        (*(v333 + 8))(v338, v332);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      v99 = v336;
      sub_1B08F5590(v277 + OBJC_IVAR____TtCE7MessageCSo33MFNanoServerMessageContentLoader2P33_55FE1C6453F069120C6D9FDA5598804714Implementation_logger, v343);
      (*(v333 + 16))(v99, v343, v332);
      sub_1B039480C(v343);

      v136 = 32;
      v137 = 7;
      v100 = swift_allocObject();
      v101 = v277;
      v138 = v100;
      *(v100 + 16) = v315;
      *(v100 + 24) = v101;

      v149 = sub_1B0E43988();
      v150 = sub_1B0E458E8();
      v135 = 17;
      v140 = swift_allocObject();
      *(v140 + 16) = 0;
      v141 = swift_allocObject();
      *(v141 + 16) = 8;
      v102 = swift_allocObject();
      v103 = v277;
      v134 = v102;
      *(v102 + 16) = v316;
      *(v102 + 24) = v103;
      v104 = swift_allocObject();
      v105 = v134;
      v142 = v104;
      *(v104 + 16) = v317;
      *(v104 + 24) = v105;
      v143 = swift_allocObject();
      *(v143 + 16) = 0;
      v144 = swift_allocObject();
      *(v144 + 16) = 4;
      v106 = swift_allocObject();
      v107 = v138;
      v139 = v106;
      *(v106 + 16) = v318;
      *(v106 + 24) = v107;
      v108 = swift_allocObject();
      v109 = v139;
      v146 = v108;
      *(v108 + 16) = v319;
      *(v108 + 24) = v109;
      v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v145 = sub_1B0E46A48();
      v147 = v110;

      v111 = v140;
      v112 = v147;
      *v147 = v320;
      v112[1] = v111;

      v113 = v141;
      v114 = v147;
      v147[2] = v321;
      v114[3] = v113;

      v115 = v142;
      v116 = v147;
      v147[4] = v322;
      v116[5] = v115;

      v117 = v143;
      v118 = v147;
      v147[6] = v323;
      v118[7] = v117;

      v119 = v144;
      v120 = v147;
      v147[8] = v324;
      v120[9] = v119;

      v121 = v146;
      v122 = v147;
      v147[10] = v325;
      v122[11] = v121;
      sub_1B0394964();

      if (os_log_type_enabled(v149, v150))
      {
        v123 = v326;
        v127 = sub_1B0E45D78();
        v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v126 = 0;
        v128 = sub_1B03949A8(0, v125, v125);
        v129 = sub_1B03949A8(v126, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v130 = &v385;
        v385 = v127;
        v131 = &v384;
        v384 = v128;
        v132 = &v383;
        v383 = v129;
        sub_1B0394A48(0, &v385);
        sub_1B0394A48(2, v130);
        v381 = v320;
        v382 = v140;
        sub_1B03949FC(&v381, v130, v131, v132);
        v133 = v123;
        if (v123)
        {

          __break(1u);
        }

        else
        {
          v381 = v321;
          v382 = v141;
          sub_1B03949FC(&v381, &v385, &v384, &v383);
          v124[4] = 0;
          v381 = v322;
          v382 = v142;
          sub_1B03949FC(&v381, &v385, &v384, &v383);
          v124[3] = 0;
          v381 = v323;
          v382 = v143;
          sub_1B03949FC(&v381, &v385, &v384, &v383);
          v124[2] = 0;
          v381 = v324;
          v382 = v144;
          sub_1B03949FC(&v381, &v385, &v384, &v383);
          v124[1] = 0;
          v381 = v325;
          v382 = v146;
          sub_1B03949FC(&v381, &v385, &v384, &v383);
          _os_log_impl(&dword_1B0389000, v149, v150, "[%lld] (%u) Delegate has been deallocated.", v127, 0x12u);
          v124[0] = 0;
          sub_1B03998A8(v128, 0, v125);
          sub_1B03998A8(v129, v124[0], MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v149);
      return (*(v333 + 8))(v336, v332);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0901844(uint64_t *a1)
{
  v2 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B090187C(uint64_t a1)
{
  v2 = *(a1 + 48);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B09018B4(uint64_t a1)
{
  v2 = *(a1 + 80);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v2;
}

uint64_t sub_1B09018EC(void *a1)
{
  v29 = a1;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v37 = 0;
  v35 = 0;
  v36 = 0;
  v24 = sub_1B0E42E68();
  v25 = *(v24 - 8);
  v26 = v24 - 8;
  v27 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v7 - v27;
  v30 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v7 - v30;
  v32 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v33 = &v7 - v32;
  v37 = v4;
  v34 = [v4 mf_externalReference];
  if (v34)
  {
    v23 = v34;
    v22 = v34;
    sub_1B0E42DE8();
    (*(v25 + 32))(v31, v28, v24);
    (*(v25 + 56))(v31, 0, 1, v24);
    MEMORY[0x1E69E5920](v22);
  }

  else
  {
    (*(v25 + 56))(v31, 1, 1, v24);
  }

  sub_1B07C8260(v31, v33);
  if ((*(v25 + 48))(v33, 1, v24) == 1)
  {
    sub_1B06E3800(v33);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v18 = sub_1B0E42D18();
    v19 = v5;
    (*(v25 + 8))(v33, v24);
    v20 = v18;
    v21 = v19;
  }

  v16 = v21;
  v17 = v20;
  if (v21)
  {
    v14 = v17;
    v15 = v16;
    v9 = v16;
    v8 = v17;
    v35 = v17;
    v36 = v16;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v7 = &v38;
    v38 = v8;
    v39 = v9;
    MEMORY[0x1E69E5928](v29);
    v10 = [v29 messageSize];
    MEMORY[0x1E69E5920](v29);
    v40 = v10;

    MEMORY[0x1E69E5920](v29);
    sub_1B03B1198(v7);
    v11 = v8;
    v12 = v9;
    v13 = v10;
  }

  else
  {
    MEMORY[0x1E69E5920](v29);
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  return v11;
}

id sub_1B0901D3C(uint64_t a1)
{
  v3 = sub_1B0E44AC8();
  v4 = [v2 initWithString_];
  MEMORY[0x1E69E5920](v3);

  return v4;
}

uint64_t sub_1B0901DA8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E439A8();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = _s6LoggerVMa_2(0);
  result = a2;
  *(a2 + *(v3 + 20)) = *(a1 + *(v3 + 20));
  return result;
}

uint64_t sub_1B0901E30()
{
  v1 = *(_s6LoggerVMa_2(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B08F9D74(v2);
}

uint64_t sub_1B0901E9C(uint64_t a1)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2F20, &unk_1B0EA0610);
  if (!(*(*(v8 - 8) + 48))(a1, 1))
  {

    v5 = type metadata accessor for WatchOSRender.Message(0);
    v2 = a1 + *(v5 + 40);
    v3 = sub_1B0E43108();
    v4 = *(*(v3 - 8) + 8);
    (v4)(v2);
    v4(a1 + *(v5 + 44), v3);

    v6 = a1 + *(v8 + 48);
    if ((*(v6 + 16) & 0xF000000000000000) != 0xF000000000000000)
    {
      sub_1B0391D50(*(v6 + 8), *(v6 + 16));
    }

    if ((*(v6 + 32) & 0xF000000000000000) != 0xF000000000000000)
    {
      sub_1B0391D50(*(v6 + 24), *(v6 + 32));
    }
  }

  return a1;
}

char *sub_1B0902120(char *a1, char *a2)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  *(a2 + 2) = *(a1 + 2);
  *(a2 + 3) = *(a1 + 3);
  *(a2 + 4) = *(a1 + 4);
  *(a2 + 5) = *(a1 + 5);
  v7 = type metadata accessor for WatchOSRender.Message(0);
  v4 = v7[10];
  v5 = sub_1B0E43108();
  v6 = *(*(v5 - 8) + 32);
  v6(&a2[v4], &a1[v4]);
  (v6)(&a2[v7[11]], &a1[v7[11]], v5);
  *&a2[v7[12]] = *&a1[v7[12]];
  *&a2[v7[13]] = *&a1[v7[13]];
  *&a2[v7[14]] = *&a1[v7[14]];
  *&a2[v7[15]] = *&a1[v7[15]];
  *&a2[v7[16]] = *&a1[v7[16]];
  *&a2[v7[17]] = *&a1[v7[17]];
  *&a2[v7[18]] = *&a1[v7[18]];
  *&a2[v7[19]] = *&a1[v7[19]];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2F20, &unk_1B0EA0610);
  memcpy(&a2[*(v2 + 48)], &a1[*(v2 + 48)], 0x50uLL);
  return a2;
}

uint64_t sub_1B09022F0(uint64_t a1)
{

  v5 = type metadata accessor for WatchOSRender.Message(0);
  v2 = *(v5 + 40);
  v3 = sub_1B0E43108();
  v4 = *(*(v3 - 8) + 8);
  v4(a1 + v2);
  (v4)(a1 + *(v5 + 44), v3);

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2F20, &unk_1B0EA0610) + 48);
  if ((*(a1 + v7 + 16) & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_1B0391D50(*(a1 + v7 + 8), *(a1 + v7 + 16));
  }

  if ((*(a1 + v7 + 32) & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_1B0391D50(*(a1 + v7 + 24), *(a1 + v7 + 32));
  }

  return a1;
}

uint64_t sub_1B0902558(const void *a1)
{
  v12 = *(_s6LoggerVMa_2(0) - 8);
  v2 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v3 = (v2 + *(v12 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + v3);
  v7 = v1 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_1B08FDB38(a1, v4, v5, v1 + v2, v6, v8, v9);
}

char *sub_1B0902624(char *a1, char *a2)
{
  *a2 = *a1;
  v7 = *(a1 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 1) = v7;
  *(a2 + 2) = *(a1 + 2);
  v8 = *(a1 + 3);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 3) = v8;
  *(a2 + 4) = *(a1 + 4);
  v9 = *(a1 + 5);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 5) = v9;
  *(a2 + 6) = *(a1 + 6);
  v10 = *(a1 + 7);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 7) = v10;
  *(a2 + 8) = *(a1 + 8);
  v11 = *(a1 + 9);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 9) = v11;
  *(a2 + 10) = *(a1 + 10);
  v12 = *(a1 + 11);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + 11) = v12;
  v31 = type metadata accessor for WatchOSRender.Message(0);
  v13 = v31[10];
  v14 = sub_1B0E43108();
  v15 = *(*(v14 - 8) + 16);
  v15(&a2[v13], &a1[v13]);
  (v15)(&a2[v31[11]], &a1[v31[11]], v14);
  v2 = v31[12];
  v16 = &a2[v2];
  *&a2[v2] = *&a1[v2];
  v17 = *&a1[v2 + 8];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v16 + 1) = v17;
  v18 = v31[13];
  v19 = *&a1[v18];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *&a2[v18] = v19;
  v20 = v31[14];
  v21 = *&a1[v20];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *&a2[v20] = v21;
  v22 = v31[15];
  v23 = *&a1[v22];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *&a2[v22] = v23;
  v3 = v31[16];
  v24 = &a2[v3];
  *&a2[v3] = *&a1[v3];
  v25 = *&a1[v3 + 8];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v24 + 1) = v25;
  v4 = v31[17];
  v26 = &a2[v4];
  *&a2[v4] = *&a1[v4];
  v27 = *&a1[v4 + 8];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v26 + 1) = v27;
  v5 = v31[18];
  v29 = &a2[v5];
  *&a2[v5] = *&a1[v5];
  v30 = *&a1[v5 + 8];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(v29 + 1) = v30;
  *&a2[v31[19]] = *&a1[v31[19]];
  return result;
}