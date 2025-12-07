uint64_t sub_26AF24628@<X0>(void *a1@<X8>)
{
  v5 = a1;
  v8 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCCD8, qword_26B08B5E0);
  v4 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v7 = &v3 - v4;
  v8 = v1;
  sub_26AF246E8(v1, (&v3 - v4));
  sub_26B078A10();
  return sub_26AF247BC(v7);
}

void *sub_26AF246E8(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCCE0, &qword_26B08DE00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078E40();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_26AF247BC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCCE0, &qword_26B08DE00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078E40();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_26AF24894(uint64_t a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v4[0] = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCCD8, qword_26B08B5E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v5 = v4 - v4[0];
  v8 = v2;
  v7 = v1;
  sub_26AF246E8(v2, (v4 - v4[0]));
  sub_26AF2494C(v5, v4[1]);
  return sub_26AF247BC(v6);
}

void *sub_26AF2494C(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_26AF24A38(a2);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCCE0, &qword_26B08DE00);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_26B078E40();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

uint64_t sub_26AF24A38(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCCE0, &qword_26B08DE00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078E40();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_26AF24B28()
{
  type metadata accessor for ReleaseNotesSummaryView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0, &unk_26B08A850);
  sub_26B0798B0();

  return v1 & 1;
}

uint64_t type metadata accessor for ReleaseNotesSummaryView(uint64_t a1)
{
  v2 = qword_2803DCE88;
  if (!qword_2803DCE88)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_26AF24C34(char a1)
{
  v8 = 0;
  v9 = a1 & 1;
  v2 = (v1 + *(type metadata accessor for ReleaseNotesSummaryView(0) + 20));
  v4 = *v2;
  v5 = *(v2 + 1);

  v6[0] = v4;
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0, &unk_26B08A850);
  sub_26B0798C0();
  sub_26AE91DC8(v6);
}

void (*sub_26AF24CF8(void *a1))(uint64_t *a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x48uLL, 5596);
  *a1 = v1;
  v2 = (v4 + *(type metadata accessor for ReleaseNotesSummaryView(0) + 20));
  v5 = *v2;
  v1[67] = *v2 & 1;
  v6 = *(v2 + 1);
  *(v1 + 6) = v6;

  *v1 = v5;
  *(v1 + 1) = v6;
  *(v1 + 7) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0, &unk_26B08A850);
  sub_26B0798B0();
  return sub_26AF24DE4;
}

void sub_26AF24DE4(uint64_t *a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = *(v8 + 48);
    v2 = *(v8 + 67);
    v3 = *(v8 + 64);

    *(v8 + 16) = v2;
    *(v8 + 24) = v4;
    *(v8 + 65) = v3;
    sub_26B0798C0();
    sub_26AE91DC8(v8 + 16);
  }

  else
  {
    v7 = *(v8 + 48);
    v5 = *(v8 + 67);
    v6 = *(v8 + 64);

    *(v8 + 32) = v5;
    *(v8 + 40) = v7;
    *(v8 + 66) = v6;
    sub_26B0798C0();
    sub_26AE91DC8(v8 + 32);
  }

  free(v8);
}

uint64_t sub_26AF24EF8()
{
  type metadata accessor for ReleaseNotesSummaryView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0, &unk_26B08A850);
  sub_26B0798D0();

  return v1;
}

uint64_t sub_26AF24FA8()
{
  v2 = *(v0 + *(type metadata accessor for ReleaseNotesSummaryView(0) + 20));

  return v2 & 1;
}

uint64_t sub_26AF24FFC(char a1, uint64_t a2)
{

  v3 = v2 + *(type metadata accessor for ReleaseNotesSummaryView(0) + 20);
  *v3 = a1;
  *(v3 + 8) = a2;
}

uint64_t ReleaseNotesSummaryView.isContentReadyBinding.getter()
{
  v1 = (v0 + *(type metadata accessor for ReleaseNotesSummaryView(0) + 24));
  v3 = *v1;
  sub_26AEC1EF4(*v1, v1[1]);
  return v3;
}

uint64_t sub_26AF250D0()
{
  v2 = *(v0 + *(type metadata accessor for ReleaseNotesSummaryView(0) + 28));

  return v2;
}

uint64_t sub_26AF25114(uint64_t a1)
{

  *(v1 + *(type metadata accessor for ReleaseNotesSummaryView(0) + 28)) = a1;
}

BOOL sub_26AF25174()
{
  v14 = v0;
  type metadata accessor for ReleaseNotesSummaryView(0);

  KeyPath = swift_getKeyPath();
  ReactiveDescriptor.subscript.getter(KeyPath, &v13);
  v11 = v13;

  if (v11)
  {
    swift_getObjectType();
    v9 = [v11 releaseNotes];
    if (v9)
    {
      v5 = sub_26B0781D0();
      v6 = v1;
      MEMORY[0x277D82BD8](v9);
      v7 = v5;
      v8 = v6;
    }

    else
    {
      v7 = 0;
      v8 = 0xF000000000000000;
    }

    swift_unknownObjectRelease();

    v3 = v7;
    v4 = v8;
  }

  else
  {

    v3 = 0;
    v4 = 0xF000000000000000;
  }

  v12[0] = v3;
  v12[1] = v4;
  sub_26AF253C8(v12);
  return (v4 & 0xF000000000000000) != 0xF000000000000000;
}

uint64_t sub_26AF25344@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_unknownObjectRetain();
  swift_getObjectType();
  *a2 = [v3 documentation];
  return swift_unknownObjectRelease();
}

uint64_t sub_26AF253C8(uint64_t a1)
{
  if ((*(a1 + 8) & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_26AE96418(*a1, *(a1 + 8));
  }

  return a1;
}

uint64_t sub_26AF25418()
{
  v5 = v0;
  type metadata accessor for ReleaseNotesSummaryView(0);

  KeyPath = swift_getKeyPath();
  ReactiveDescriptor.subscript.getter(KeyPath, &v4);
  v3 = v4;

  return v3 & 1;
}

uint64_t sub_26AF254AC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_unknownObjectRetain();
  swift_getObjectType();
  *a2 = [v3 isSplomboUpdate];
  return swift_unknownObjectRelease();
}

CGFloat sub_26AF25528()
{
  v77 = 0;
  v76 = 0.0;
  v54 = sub_26B078E40();
  v51 = *(v54 - 8);
  v52 = v54 - 8;
  v45 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v54);
  v53 = (&v22 - v45);
  v77 = v0;
  v46 = [objc_opt_self() mainScreen];
  [v46 bounds];
  v72 = v1;
  v73 = v2;
  v74 = v3;
  v75 = v4;
  v47 = v1;
  v48 = v2;
  v49 = v3;
  v50 = v4;
  MEMORY[0x277D82BD8](v46);
  v76 = sub_26AEBCA9C(v47, v48, v49, v50) / 3.0;
  sub_26AF24628(v53);
  v55 = (*(v51 + 88))(v53, v54);
  if (v55 == *MEMORY[0x277CE0268] || v55 == *MEMORY[0x277CE0298] || v55 == *MEMORY[0x277CE02A0] || v55 == *MEMORY[0x277CE0290])
  {
    goto LABEL_14;
  }

  if (v55 == *MEMORY[0x277CE0260])
  {
LABEL_15:
    v34 = [objc_opt_self() mainScreen];
    [v34 bounds];
    v60 = v9;
    v61 = v10;
    v62 = v11;
    v63 = v12;
    v35 = v9;
    v36 = v10;
    v37 = v11;
    v38 = v12;
    MEMORY[0x277D82BD8](v34);
    return sub_26AEBCA9C(v35, v36, v37, v38) / 3.0;
  }

  if (v55 == *MEMORY[0x277CE0270] || v55 == *MEMORY[0x277CE0248])
  {
    goto LABEL_16;
  }

  if (v55 == *MEMORY[0x277CE0280] || v55 == *MEMORY[0x277CE0278])
  {
LABEL_14:
    v39 = [objc_opt_self() mainScreen];
    [v39 bounds];
    v56 = v5;
    v57 = v6;
    v58 = v7;
    v59 = v8;
    v40 = v5;
    v41 = v6;
    v42 = v7;
    v43 = v8;
    MEMORY[0x277D82BD8](v39);
    return sub_26AEBCA9C(v40, v41, v42, v43) / 4.0;
  }

  if (v55 == *MEMORY[0x277CE0288])
  {
    goto LABEL_15;
  }

  if (v55 == *MEMORY[0x277CE0250] || v55 == *MEMORY[0x277CE0258])
  {
LABEL_16:
    v29 = [objc_opt_self() mainScreen];
    [v29 bounds];
    v64 = v13;
    v65 = v14;
    v66 = v15;
    v67 = v16;
    v30 = v13;
    v31 = v14;
    v32 = v15;
    v33 = v16;
    MEMORY[0x277D82BD8](v29);
    return sub_26AEBCA9C(v30, v31, v32, v33) / 2.0;
  }

  v23 = [objc_opt_self() mainScreen];
  [v23 bounds];
  v68 = v17;
  v69 = v18;
  v70 = v19;
  v71 = v20;
  v24 = v17;
  v25 = v18;
  v26 = v19;
  v27 = v20;
  MEMORY[0x277D82BD8](v23);
  v28 = sub_26AEBCA9C(v24, v25, v26, v27) / 3.0;
  v76 = v28;
  (*(v51 + 8))(v53, v54);
  return v28;
}

uint64_t sub_26AF25BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v25 = a5;
  v29 = a1;
  v28 = a2;
  v26 = a3;
  v27 = a4;
  v35 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v24 = type metadata accessor for ReleaseNotesSummaryView(0);
  v21 = (*(*(v24 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29);
  v30 = (&v20 - v21);
  v35 = &v20 - v21;
  v34 = v5;
  v31 = v6;
  v32 = v7;
  v33 = v8;
  swift_getKeyPath();
  sub_26B078A30();
  v23 = v24[5];
  v22 = 1;
  v9 = sub_26AF24AD4(0);
  v10 = v30 + v23;
  *v10 = v9 & v22;
  *(v10 + 1) = v11;

  v12 = v28;
  v13 = v26;
  *(v30 + v24[7]) = v29;
  sub_26AEC1EF4(v12, v13);
  v14 = v25;
  v15 = v26;
  v16 = v27;
  v17 = v30;
  v18 = v30 + v24[6];
  *v18 = v28;
  *(v18 + 1) = v15;
  v18[16] = v16;
  sub_26AF29160(v17, v14);
  sub_26AED4828(v28, v26);

  return sub_26AF2933C(v30);
}

uint64_t ReleaseNotesSummaryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v7 = sub_26AF29448;
  v19 = 0;
  v18 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCCF0, &qword_26B08B688);
  v5 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v14 = &v4 - v5;
  v6 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v4 - v5);
  v15 = &v4 - v6;
  v19 = &v4 - v6;
  v18 = v1;
  v10 = sub_26B078E60();
  v8 = &v16;
  v17 = v1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCCF8, &qword_26B08B690);
  sub_26AF29450();
  sub_26B079980();
  v13 = sub_26AF294D8();
  sub_26AE9463C(v14, v12, v15);
  sub_26AF29560(v14);
  sub_26AF29964(v15, v14);
  sub_26AE94B4C(v14, v12, v11);
  sub_26AF29560(v14);
  return sub_26AF29560(v15);
}

uint64_t sub_26AF25EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v15 = a1;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD68, &qword_26B08B6F0);
  v8 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v18);
  v24 = &v7 - v8;
  v9 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v7 - v8);
  v27 = &v7 - v9;
  v38 = &v7 - v9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD58, &qword_26B08B6E0);
  v10 = (*(*(v17 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v25 = (&v7 - v10);
  v11 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](&v7 - v10);
  v28 = (&v7 - v11);
  v37 = &v7 - v11;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD70, &qword_26B08B6F8);
  v13 = *(*(v16 - 8) + 64);
  v12 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  v26 = &v7 - v12;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v29 = &v7 - v14;
  v36 = &v7 - v14;
  v35 = a1;
  sub_26AF2625C(a1);
  v19 = sub_26AF2AD80();
  sub_26AE9463C(v26, v16, v29);
  sub_26AF2AE28(v26);
  sub_26AF26EE0(v25);
  v20 = sub_26AF2BEFC();
  sub_26AE9463C(v25, v17, v28);
  sub_26AF2BAAC(v25);
  sub_26AF27568(v24);
  v21 = sub_26AF2CBF0();
  sub_26AE9463C(v24, v18, v27);
  sub_26AF2C644(v24);
  sub_26AF2AA28(v29, v26);
  v23 = v34;
  v34[0] = v26;
  sub_26AF2BD0C(v28, v25);
  v34[1] = v25;
  sub_26AF2C998(v27, v24);
  v34[2] = v24;
  v33[0] = v16;
  v33[1] = v17;
  v33[2] = v18;
  v30 = v19;
  v31 = v20;
  v32 = v21;
  sub_26AFD49C4(v23, 3uLL, v33, v22);
  sub_26AF2C644(v24);
  sub_26AF2BAAC(v25);
  sub_26AF2AE28(v26);
  sub_26AF2C644(v27);
  sub_26AF2BAAC(v28);
  return sub_26AF2AE28(v29);
}

uint64_t sub_26AF2625C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v101 = v2;
  v102 = v1;
  v103 = sub_26AF2A51C;
  v182 = 0;
  v181 = 0;
  v180 = 0;
  v179 = 0;
  v147 = 0;
  v148 = 0;
  v121 = type metadata accessor for ReleaseNotesSummaryView(0);
  v104 = *(v121 - 8);
  v105 = v104;
  v106 = *(v104 + 64);
  v107 = (v106 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v121);
  v108 = v16 - v107;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD20, &qword_26B08B6A8);
  v110 = (*(*(v109 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v109);
  v111 = v16 - v110;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD28, &qword_26B08B6B0);
  v113 = (*(*(v112 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v112);
  v114 = v16 - v113;
  v115 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16 - v113);
  v116 = v16 - v115;
  v182 = v16 - v115;
  v117 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v118 = v16 - v117;
  v119 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16 - v117);
  v120 = v16 - v119;
  v181 = v16 - v119;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD70, &qword_26B08B6F8);
  v123 = (*(*(v122 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v121);
  v124 = v16 - v123;
  v125 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  v126 = v16 - v125;
  v180 = v16 - v125;
  v179 = v1;
  v128 = *(v1 + *(v9 + 28));

  KeyPath = swift_getKeyPath();
  ReactiveDescriptor.subscript.getter(KeyPath, &v178);
  v129 = v178;

  if (v129)
  {
    v100 = v129;
    v98 = v129;
    swift_getObjectType();
    v99 = [v98 releaseNotesSummary];
    if (v99)
    {
      v97 = v99;
      v92 = v99;
      v93 = sub_26B0781D0();
      v94 = v10;
      MEMORY[0x277D82BD8](v92);
      v95 = v93;
      v96 = v94;
    }

    else
    {
      v95 = 0;
      v96 = 0xF000000000000000;
    }

    v89 = v96;
    v88 = v95;
    swift_unknownObjectRelease();

    v90 = v88;
    v91 = v89;
  }

  else
  {

    v90 = 0;
    v91 = 0xF000000000000000;
  }

  v86 = v91;
  v87 = v90;
  if ((v91 & 0xF000000000000000) == 0xF000000000000000)
  {
    v13 = sub_26B079780();
    v16[2] = v167;
    v167[0] = v13;
    v16[0] = MEMORY[0x277CE0F78];
    v16[1] = MEMORY[0x277CE0F70];
    sub_26AEC96D4();
    sub_26B0795F0();
    sub_26AEF8E10();
    v20 = v161;
    v161[0] = v167[1];
    v161[1] = v167[2];
    v162 = v168 & 1;
    v163 = v169;
    v164 = v170 & 1;
    v165 = v171;
    v166 = v172;
    sub_26AF29160(v102, v108);
    v17 = (*(v105 + 80) + 16) & ~*(v105 + 80);
    v19 = swift_allocObject();
    sub_26AF2A3F0(v108, (v19 + v17));
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD78, &qword_26B08B700);
    sub_26AF2A580();
    v21 = &v173;
    sub_26B0796C0();
    sub_26AEB3258(v103, v19);
    sub_26AF2A620();
    v22 = v175;
    v27 = 88;
    memcpy(v175, v21, sizeof(v175));
    v23 = v160;
    memcpy(v160, v175, sizeof(v160));
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD88, &qword_26B08B708);
    v29 = sub_26AF2A64C();
    v32 = v174;
    sub_26AE9463C(v23, v28, v174);
    sub_26AF2A6F0(v23);
    v24 = __dst;
    memcpy(__dst, v32, v27);
    sub_26AF2A75C(v24, v158);
    v25 = v157;
    memcpy(v157, v24, v27);
    v31 = v159;
    sub_26AE94B4C(v25, v28, v159);
    sub_26AF2A6F0(v25);
    v26 = v177;
    memcpy(v177, v31, v27);
    sub_26AF2A75C(v26, v156);
    v30 = v155;
    memcpy(v155, v26, v27);
    v14 = sub_26AF2A85C();
    sub_26AE94CA8(v30, v112, v28, v14, v29, v124);
    sub_26AF2A6F0(v30);
    sub_26AF2A8E4(v124, v126);
    sub_26AF2A6F0(v31);
    sub_26AF2A6F0(v32);
  }

  else
  {
    v84 = v87;
    v85 = v86;
    v51 = v86;
    v50 = v87;
    v147 = v87;
    v148 = v86;
    sub_26AE961DC(v87, v86);
    v52 = v140;
    UpdateRemoteContentView.init(data:)(v50, v51, v140);
    v53 = v149;
    v63 = 57;
    memcpy(v149, v52, 0x39uLL);
    v57 = v139;
    memcpy(v139, v149, 0x39uLL);
    v11 = v102 + *(v121 + 24);
    v54 = *v11;
    v55 = *(v11 + 1);
    v56 = v11[16];
    sub_26AEC1EF4(v54, v55);
    v58 = v141;
    UpdateRemoteContentView.reportLoading(to:)(v54, v55, v56, v141);
    sub_26AED4828(v54, v55);
    sub_26AE96494(v57);
    v59 = v150;
    memcpy(v150, v58, v63);
    v60 = v138;
    memcpy(v138, v59, v63);
    v61 = v142;
    UpdateRemoteContentView.adaptiveHeight()(v142);
    sub_26AE96494(v60);
    v62 = v151;
    memcpy(v151, v61, v63);
    v65 = v137;
    memcpy(v137, v62, v63);
    v64 = sub_26B079180();
    sub_26AE957D8();
    v66 = &v143;
    v75 = 0xC020000000000000;
    v76 = 0;
    sub_26B079680();
    sub_26AE96494(v65);
    v67 = v152;
    v68 = 105;
    memcpy(v152, v66, 0x69uLL);
    v71 = v136;
    memcpy(v136, v152, 0x69uLL);
    v70 = sub_26B0791A0();
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCDB0, &qword_26B08B710);
    sub_26AF2AF98();
    v72 = &v144;
    sub_26B079680();
    sub_26AF2B03C(v71);
    v73 = v153;
    v74 = 153;
    memcpy(v153, v72, 0x99uLL);
    v79 = v135;
    memcpy(v135, v153, 0x99uLL);
    v78 = sub_26B0791B0();
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCDC0, &qword_26B08B718);
    sub_26AF2B0A4();
    v80 = &v145;
    sub_26B079680();
    sub_26AF2B148(v79);
    v81 = v154;
    v82 = 201;
    memcpy(v154, v80, 0xC9uLL);
    memcpy(v134, v154, 0xC9uLL);
    v83 = sub_26B079190();
    if (sub_26AF25174())
    {
      v49 = 1;
    }

    else
    {
      v49 = sub_26AF25418();
    }

    if (v49)
    {
      v47 = 0xC020000000000000;
    }

    else
    {
      v47 = sub_26AF28B84()[2];
    }

    v48 = 0;
    v34 = 0;
    v33 = v47;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCDD0, &qword_26B08B720);
    sub_26AF2B1B0();
    v37 = &v146;
    v36 = v134;
    sub_26B079680();
    sub_26AF2B254(v36);
    v38 = v133;
    v39 = 249;
    memcpy(v133, v37, 0xF9uLL);
    v42 = v132;
    memcpy(v132, v133, 0xF9uLL);
    v41 = &v131;
    v131 = 4;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCDE0, &qword_26B08B728);
    sub_26AF2B2BC();
    View.suuiIdentifiable(_:)();
    sub_26AF2B360(v42);
    v44 = v130;
    v130[0] = v50;
    v130[1] = v51;
    v43 = sub_26AF2B3C8();
    sub_26AF2B470();
    sub_26B0795B0();
    sub_26AF2B4E8(v111);
    v46 = sub_26AF2A85C();
    sub_26AE9463C(v118, v112, v120);
    sub_26AF2B5AC(v118);
    sub_26AF2B69C(v120, v114);
    sub_26AE94B4C(v114, v112, v116);
    sub_26AF2B5AC(v114);
    sub_26AF2B69C(v116, v114);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD88, &qword_26B08B708);
    v12 = sub_26AF2A64C();
    sub_26AE94BB0(v114, v112, v45, v46, v12, v124);
    sub_26AF2B5AC(v114);
    sub_26AF2A8E4(v124, v126);
    sub_26AF2B5AC(v116);
    sub_26AF2B5AC(v120);
    sub_26AE96418(v50, v51);
  }

  sub_26AF2AA28(v126, v124);
  sub_26AF2AD80();
  sub_26AE94B4C(v124, v122, v101);
  sub_26AF2AE28(v124);
  return sub_26AF2AE28(v126);
}

uint64_t sub_26AF26EE0@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v63 = 0;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD38, &qword_26B08B6C0);
  v48 = *(v47 - 8);
  v49 = v47 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v47);
  v51 = v17 - v50;
  v52 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17 - v50);
  v53 = v17 - v52;
  v54 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17 - v52);
  v55 = v17 - v54;
  v100 = v17 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD58, &qword_26B08B6E0);
  v57 = (*(*(v56 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v56);
  v58 = v17 - v57;
  v59 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17 - v57);
  v60 = v17 - v59;
  v61 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17 - v59);
  v62 = v17 - v61;
  v99 = v17 - v61;
  v98 = v1;
  if (sub_26AF25418())
  {
    v32 = 1;
    sub_26B079D00("The latest available Background Security Improvement will also be installed.", 76, 1);
    v21 = sub_26B078E10();
    v17[1] = v6;
    v18 = v7;
    v19 = v8;
    v20 = *sub_26B02D0D0();
    MEMORY[0x277D82BE0](v20);
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v89 = v32 & 1;
    v82 = sub_26B0792C0();
    v83 = v9;
    v84 = v10;
    v85 = v11;
    v23 = v82;
    v24 = v9;
    v25 = v10;
    v26 = v11;
    v22 = *sub_26AF28BE4();

    v78 = v23;
    v79 = v24;
    v80 = v25 & 1 & v32;
    v81 = v26;
    v74 = sub_26B0792A0();
    v75 = v12;
    v76 = v13;
    v77 = v14;
    v27 = v74;
    v28 = v12;
    v29 = v13;
    v30 = v14;

    sub_26AE95AFC(v23, v24, v25 & 1);

    v31 = v71;
    v71[0] = v27;
    v71[1] = v28;
    v72 = v29 & 1 & v32;
    v73 = v30;
    sub_26B079700();
    sub_26AE95B40(v31);
    v38 = v66;
    v66[0] = v90;
    v66[1] = v91;
    v67 = v92 & 1 & v32;
    v68 = v93;
    v69 = v94;
    v70 = v95;
    v15 = sub_26AF28B84();
    v33 = *v15;
    v34 = v15[1];
    v35 = v15[2];
    v36 = v15[3];
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCE28, &unk_26B08B738);
    sub_26AF2BA0C();
    v39 = &v96;
    sub_26B079670();
    sub_26AF2BF94(v38);
    v40 = __dst;
    v41 = 81;
    memcpy(__dst, v39, 0x51uLL);
    v44 = v65;
    memcpy(v65, __dst, 0x51uLL);
    v43 = &v64;
    v64 = 6;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCE18, &qword_26B08B730);
    sub_26AF2B968();
    View.suuiIdentifiable(_:)();
    sub_26AF2BFDC(v44);
    v45 = sub_26AF2B8C0();
    sub_26AE9463C(v53, v47, v55);
    sub_26AF2C024(v53);
    v63 = v53;
    sub_26AF2C0C8(v55, v51);
    sub_26AE94B4C(v51, v47, v53);
    sub_26AF2C024(v51);
    sub_26AF2C0C8(v53, v58);
    (*(v48 + 56))(v58, 0, 1, v47);
    sub_26AF09CCC(v58, v47, v60);
    sub_26AF2BAAC(v58);
    sub_26AF2BB98(v60, v62);
    sub_26AF2C024(v53);
    sub_26AF2C024(v55);
  }

  else
  {
    (*(v48 + 56))(v58, 1, 1, v47);
    sub_26AF2B8C0();
    sub_26AF09CCC(v58, v47, v60);
    sub_26AF2BAAC(v58);
    sub_26AF2BB98(v60, v62);
  }

  sub_26AF2BD0C(v62, v60);
  sub_26AF2BEFC();
  sub_26AE94B4C(v60, v56, v46);
  sub_26AF2BAAC(v60);
  return sub_26AF2BAAC(v62);
}

uint64_t sub_26AF27568@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v43 = sub_26AF2CE34;
  v44 = sub_26AF28750;
  v45 = sub_26AF2D044;
  v46 = MEMORY[0x277CDEE28];
  v47 = MEMORY[0x277CDE668];
  v109 = 0;
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v48 = 0;
  v49 = sub_26B078C10();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v53 = v13 - v52;
  v54 = type metadata accessor for ReleaseNotesSummaryView(v2);
  v55 = *(v54 - 8);
  v56 = v55;
  v57 = *(v55 + 64);
  v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v54);
  v59 = v13 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDD20, &qword_26B0881A0);
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60);
  v64 = v13 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCE40, &qword_26B08B748);
  v66 = *(v65 - 8);
  v67 = v65 - 8;
  v68 = (*(v66 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v65);
  v69 = v13 - v68;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD48, &qword_26B08B6D0);
  v71 = *(v70 - 8);
  v72 = v70 - 8;
  v73 = (*(v71 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v70);
  v74 = v13 - v73;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD50, &qword_26B08B6D8);
  v76 = (*(*(v75 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v75);
  v77 = v13 - v76;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD60, &qword_26B08B6E8);
  v79 = (*(*(v78 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v78);
  v80 = v13 - v79;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD40, &qword_26B08B6C8);
  v82 = *(v81 - 8);
  v83 = v81 - 8;
  v84 = (*(v82 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v81);
  v85 = v13 - v84;
  v86 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13 - v84);
  v87 = v13 - v86;
  v109 = v13 - v86;
  v88 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v89 = v13 - v88;
  v90 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13 - v88);
  v91 = v13 - v90;
  v108 = v13 - v90;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD68, &qword_26B08B6F0);
  v93 = (*(*(v92 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v92);
  v94 = v13 - v93;
  v95 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13 - v93);
  v96 = v13 - v95;
  v97 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13 - v95);
  v98 = v13 - v97;
  v107 = v13 - v97;
  v106 = v1;
  if (sub_26AF25174())
  {
    sub_26AF29160(v42, v59);
    v17 = *(v56 + 80);
    v15 = (v17 + 16) & ~v17;
    v18 = 7;
    v16 = swift_allocObject();
    sub_26AF2A3F0(v59, (v16 + v15));
    sub_26B079900();
    v22 = sub_26AF24EF8();
    v23 = v9;
    v20 = v10;
    sub_26AF29160(v42, v59);
    v19 = (v17 + 16) & ~v17;
    v21 = swift_allocObject();
    sub_26AF2A3F0(v59, (v21 + v19));
    v37 = 0;
    v24 = type metadata accessor for ReleaseNotesSheetView(0);
    v25 = sub_26AE9C224();
    v26 = sub_26AF2C4CC();
    sub_26B079610();

    (*(v61 + 8))(v64, v60);
    sub_26AF28B6C();
    v102 = v60;
    v103 = v24;
    v104 = v25;
    v105 = v26;
    v29 = 1;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v28 = sub_26AF2C54C();
    sub_26B079400();
    (*(v50 + 8))(v53, v49);
    (*(v66 + 8))(v69, v65);
    v30 = &v101;
    v101 = 5;
    v100[1] = v65;
    v100[2] = v49;
    v100[3] = OpaqueTypeConformance2;
    v100[4] = v28;
    swift_getOpaqueTypeConformance2();
    View.suuiIdentifiable(_:)();
    (*(v71 + 8))(v74, v70);
    v11 = sub_26AF28B84();
    v31 = *v11;
    v32 = v11[1];
    v33 = v11[2];
    v34 = v11[3];
    sub_26AF2C330();
    sub_26B079670();
    sub_26AF2D0B8(v77);
    v35 = *(v42 + *(v54 + 28));

    v36 = ReactiveDescriptor.role.getter();

    v40 = v100;
    v100[0] = v36;
    v38 = &v99;
    v99 = 0;
    v39 = type metadata accessor for SUUIStatefulDescriptorRole(v37);
    sub_26AF2D17C();
    if (sub_26B07A790())
    {
      v14 = 17;
    }

    else
    {
      v14 = 24;
    }

    v13[0] = v14;
    sub_26AF2C28C();
    View.analyticsForButtonTap(_:)(v13[0], v78);
    sub_26AF2D1FC(v80);
    v13[1] = sub_26AF2C1E4();
    sub_26AE9463C(v89, v81, v91);
    sub_26AF2D2C0(v89);
    sub_26AF2D3B8(v91, v85);
    sub_26AE94B4C(v85, v81, v87);
    sub_26AF2D2C0(v85);
    sub_26AF2D3B8(v87, v94);
    (*(v82 + 56))(v94, 0, 1, v81);
    sub_26AF09CCC(v94, v81, v96);
    sub_26AF2C644(v94);
    sub_26AF2C780(v96, v98);
    sub_26AF2D2C0(v87);
    sub_26AF2D2C0(v91);
  }

  else
  {
    (*(v82 + 56))(v94, 1, 1, v81);
    sub_26AF2C1E4();
    sub_26AF09CCC(v94, v81, v96);
    sub_26AF2C644(v94);
    sub_26AF2C780(v96, v98);
  }

  sub_26AF2C998(v98, v96);
  sub_26AF2CBF0();
  sub_26AE94B4C(v96, v92, v41);
  sub_26AF2C644(v96);
  return sub_26AF2C644(v98);
}

uint64_t sub_26AF28370(uint64_t a1)
{
  v25 = a1;
  v32 = 0;
  v41 = 0;
  v24 = 0;
  v26 = sub_26B078580();
  v27 = *(v26 - 8);
  v28 = v27;
  MEMORY[0x28223BE20](v25);
  v29 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v2;
  sub_26B078550();
  v34 = sub_26B078570();
  v30 = v34;
  v33 = sub_26B07A2A0();
  v31 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v35 = sub_26B07A760();
  if (os_log_type_enabled(v34, v33))
  {
    v3 = v24;
    v15 = sub_26B07A420();
    v11 = v15;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v13 = 0;
    v16 = sub_26AEA3B70(0, v12, v12);
    v14 = v16;
    v17 = sub_26AEA3B70(v13, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v39 = v15;
    v38 = v16;
    v37 = v17;
    v18 = 0;
    v19 = &v39;
    sub_26AEA3BC4(0, &v39);
    sub_26AEA3BC4(v18, v19);
    v36 = v35;
    v20 = &v6;
    MEMORY[0x28223BE20](&v6);
    v21 = &v6 - 6;
    *(&v6 - 4) = v4;
    *(&v6 - 3) = &v38;
    *(&v6 - 2) = &v37;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB10, &qword_26B088A50);
    sub_26AE9CC18();
    sub_26B079FF0();
    v23 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_26AE88000, v30, v31, "User Action: Clicked 'Learn More…' in ReleaseNotesSummaryView", v11, 2u);
      v9 = 0;
      sub_26AEA3C24(v14, 0, v12);
      sub_26AEA3C24(v17, v9, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();

      v10 = v23;
    }
  }

  else
  {

    v10 = v24;
  }

  (*(v28 + 8))(v29, v26);
  v7 = &v40;
  v8 = sub_26AF24CF8(&v40);
  sub_26B07A0B0();
  return (v8)(v7, 0);
}

uint64_t sub_26AF28750@<X0>(uint64_t a1@<X8>)
{
  v42 = 0u;
  v43 = 0u;
  HIBYTE(v17) = 1;
  sub_26B079D00("Learn more…", 13, 0);
  sub_26B078E10();
  v1 = sub_26B02D0D0();
  MEMORY[0x277D82BE0](*v1);
  v39 = 0;
  v40 = 0;
  v41 = v17 & 0x100;
  v35 = sub_26B0792C0();
  v36 = v2;
  v37 = v3;
  v38 = v4;
  v10 = v2;
  v9 = v3;
  v11 = v4;
  sub_26AF28A00();
  sub_26AF2DBE8();
  v31 = v35;
  v32 = v10;
  v33 = v9 & 1;
  v34 = v11;
  v27 = sub_26B079290();
  v28 = v5;
  v29 = v6;
  v30 = v7;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  sub_26AE95AFC(v35, v10, v9 & 1);

  v24[0] = v27;
  v24[1] = v12;
  v25 = v13 & 1;
  v26 = v14;
  v20 = MEMORY[0x277CE0BD8];
  sub_26AE9463C(v24, MEMORY[0x277CE0BD8], &v42);
  sub_26AE95B40(v24);
  v15 = v42;
  v16 = v43;
  v18 = *(&v43 + 1);
  sub_26AE95D28(v42, *(&v42 + 1), v43 & 1);
  sub_26B078640();
  v21 = v15;
  v22 = v16 & 1;
  v23 = v18;
  sub_26AE94B4C(&v21, v20, a1);
  sub_26AE95B40(&v21);
  return sub_26AE95B40(&v42);
}

uint64_t sub_26AF28A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v11 = a1;
  v19 = 0;
  v18 = 0;
  v7[1] = 0;
  v14 = type metadata accessor for ReleaseNotesSheetView(0);
  v9 = *(*(v14 - 8) + 64);
  v8 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v16 = (v7 - v8);
  v10 = v8;
  MEMORY[0x28223BE20](v2);
  v17 = (v7 - v10);
  v19 = v7 - v10;
  v18 = v3;
  v5 = type metadata accessor for ReleaseNotesSummaryView(v4);
  v12 = *(v11 + *(v5 + 28));

  sub_26B026538(v12, v16);
  v15 = sub_26AF2C4CC();
  sub_26AE9463C(v16, v14, v17);
  sub_26AF2DA30(v16);
  sub_26AF2DAE4(v17, v16);
  sub_26AE94B4C(v16, v14, v13);
  sub_26AF2DA30(v16);
  return sub_26AF2DA30(v17);
}

uint64_t *sub_26AF28B84()
{
  if (qword_2803DB400 != -1)
  {
    swift_once();
  }

  return &qword_2803DCCB8;
}

uint64_t *sub_26AF28BE4()
{
  if (qword_2803DB3C8 != -1)
  {
    swift_once();
  }

  return &qword_2803DCCB0;
}

uint64_t sub_26AF28C50(uint64_t a1)
{
  v8 = a1;
  v1 = a1 + *(type metadata accessor for ReleaseNotesSummaryView(0) + 24);
  v3 = *v1;
  v5 = *(v1 + 8);
  v4 = *(v1 + 16);
  result = sub_26AEC1EF4(*v1, v5);
  if (v5)
  {

    v6[0] = v3;
    v6[1] = v5;
    v7 = v4 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCEB0, &unk_26B088A20);
    sub_26B0799D0();
    sub_26AED3530(v6);
  }

  return result;
}

uint64_t sub_26AF28D74()
{
  result = sub_26B0791E0();
  qword_2803DCCB0 = result;
  return result;
}

uint64_t sub_26AF28D94()
{
  v1 = *sub_26AF28BE4();

  return v1;
}

void sub_26AF28E18()
{
  sub_26B078990();
  qword_2803DCCB8 = v0;
  qword_2803DCCC0 = v1;
  qword_2803DCCC8 = v2;
  qword_2803DCCD0 = v3;
}

uint64_t sub_26AF28EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v6 = a1;
  v4[1] = 0;
  v12 = sub_26B078E40();
  v8 = *(v12 - 8);
  v9 = v12 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v11 = v4 - v5;
  v15 = sub_26B078D30();
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v7 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v15);
  v16 = v4 - v7;
  (*(v13 + 16))(v4 - v7, v2);
  sub_26B078C80();
  (*(v8 + 32))(v10, v11, v12);
  return (*(v13 + 8))(v16, v15);
}

uint64_t sub_26AF29090(uint64_t a1)
{
  v4 = a1;
  v1 = sub_26B078E40();
  v6 = *(v1 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x28223BE20](v1);
  v7 = &v4 - v5;
  (*(v6 + 16))(v2);
  return sub_26B078C90();
}

void *sub_26AF29160(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCCE0, &qword_26B08DE00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078E40();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v14 = *a1;

    *a2 = v14;
  }

  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for ReleaseNotesSummaryView(0);
  v10 = a2 + v9[5];
  v3 = a1 + v9[5];
  *v10 = *v3;
  v11 = *(v3 + 1);

  *(v10 + 1) = v11;
  v12 = a2 + v9[6];
  v13 = a1 + v9[6];
  if (*(v13 + 1))
  {
    v7 = *v13;

    *v12 = v7;
    v8 = *(v13 + 1);

    *(v12 + 1) = v8;
  }

  else
  {
    *v12 = *v13;
  }

  v12[16] = v13[16];
  v5 = v9[7];
  v6 = *(a1 + v5);

  result = a2;
  *(a2 + v5) = v6;
  return result;
}

uint64_t sub_26AF2933C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCCE0, &qword_26B08DE00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078E40();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  v3 = type metadata accessor for ReleaseNotesSummaryView(0);

  if (*(a1 + *(v3 + 24) + 8))
  {
  }

  return a1;
}

unint64_t sub_26AF29450()
{
  v2 = qword_2803DCD00;
  if (!qword_2803DCD00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCCF8, &qword_26B08B690);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCD00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF294D8()
{
  v2 = qword_2803DCD08;
  if (!qword_2803DCD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCCF0, &qword_26B08B688);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCD08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF29560(uint64_t a1)
{
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD10, &qword_26B08B698) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD18, &qword_26B08B6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    if (*(a1 + v15 + 56))
    {
    }

    if (*(a1 + v15 + 72))
    {
    }
  }

  else
  {
    sub_26AE963D0(*(a1 + v15), *(a1 + v15 + 8), *(a1 + v15 + 16) & 1);
    if (*(a1 + v15 + 48))
    {
    }

    v14 = a1 + v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD20, &qword_26B08B6A8) + 36);
    v1 = sub_26B079100();
    (*(*(v1 - 8) + 8))(v14);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD28, &qword_26B08B6B0);
    sub_26AE96418(*(a1 + v15 + *(v2 + 52)), *(a1 + v15 + *(v2 + 52) + 8));
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD30, &qword_26B08B6B8);
  v12 = a1 + v15 + *(v11 + 48);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD38, &qword_26B08B6C0);
  if (!(*(*(v13 - 8) + 48))(v12, 1))
  {
    sub_26AE95AFC(*v12, *(v12 + 8), *(v12 + 16) & 1);

    v10 = v12 + *(v13 + 36);
    v3 = sub_26B079100();
    (*(*(v3 - 8) + 8))(v10);
  }

  v8 = a1 + v15 + *(v11 + 64);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD40, &qword_26B08B6C8);
  if (!(*(*(v9 - 8) + 48))(v8, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD48, &qword_26B08B6D0);
    (*(*(v4 - 8) + 8))(v8);
    v7 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD50, &qword_26B08B6D8) + 36);
    v5 = sub_26B079100();
    (*(*(v5 - 8) + 8))(v7);
    sub_26AF072D8();
  }

  return a1;
}

uint64_t sub_26AF29964(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD10, &qword_26B08B698) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD18, &qword_26B08B6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = a1 + v58;
    v41 = *(a1 + v58);

    v42 = a2 + v58;
    *(a2 + v58) = v41;
    memcpy((a2 + v58 + 8), (a1 + v58 + 8), 0x30uLL);
    if (*(a1 + v58 + 56))
    {
      v39 = *(v43 + 56);
      v40 = *(a1 + v58 + 64);

      *(v42 + 56) = v39;
      *(a2 + v58 + 64) = v40;
    }

    else
    {
      *(v42 + 56) = *(v43 + 56);
    }

    v37 = a2 + v58;
    v38 = a1 + v58;
    if (*(a1 + v58 + 72))
    {
      v35 = *(v38 + 72);
      v36 = *(a1 + v58 + 80);

      *(v37 + 72) = v35;
      *(a2 + v58 + 80) = v36;
    }

    else
    {
      *(v37 + 72) = *(v38 + 72);
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v55 = a1 + v58;
    v52 = *(a1 + v58);
    v53 = *(a1 + v58 + 8);
    v54 = *(a1 + v58 + 16);
    sub_26AE96194(v52, v53, v54 & 1);
    v56 = a2 + v58;
    *v56 = v52;
    *(v56 + 8) = v53;
    *(v56 + 16) = v54 & 1;
    *(v56 + 24) = *(a1 + v58 + 24);
    *(v56 + 32) = *(a1 + v58 + 32);
    if (*(a1 + v58 + 48))
    {
      v49 = *(v55 + 40);

      *(v56 + 40) = v49;
      v51 = a2 + v58;
      v50 = *(a1 + v58 + 48);

      *(v51 + 48) = v50;
      *(v51 + 56) = *(a1 + v58 + 56);
    }

    else
    {
      *(v56 + 40) = *(v55 + 40);
      *(a2 + v58 + 56) = *(a1 + v58 + 56);
    }

    memcpy((a2 + v58 + 64), (a1 + v58 + 64), 0x29uLL);
    memcpy((a2 + v58 + 112), (a1 + v58 + 112), 0x29uLL);
    memcpy((a2 + v58 + 160), (a1 + v58 + 160), 0x29uLL);
    memcpy((a2 + v58 + 208), (a1 + v58 + 208), 0x29uLL);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD20, &qword_26B08B6A8);
    v45 = a2 + v58 + *(v2 + 36);
    v44 = a1 + v58 + *(v2 + 36);
    v3 = sub_26B079100();
    (*(*(v3 - 8) + 16))(v45, v44);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD28, &qword_26B08B6B0);
    v47 = (a2 + v58 + *(v4 + 52));
    v5 = (a1 + v58 + *(v4 + 52));
    v46 = *v5;
    v48 = v5[1];
    sub_26AE961DC(*v5, v48);
    *v47 = v46;
    v47[1] = v48;
    swift_storeEnumTagMultiPayload();
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD30, &qword_26B08B6B8);
  __dst = (a2 + v58 + *(v30 + 48));
  __src = (a1 + v58 + *(v30 + 48));
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD38, &qword_26B08B6C0);
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(__src, 1))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD58, &qword_26B08B6E0);
    memcpy(__dst, __src, *(*(v7 - 8) + 64));
  }

  else
  {
    v24 = *__src;
    v25 = __src[1];
    v26 = *(__src + 16);
    sub_26AE95D28(*__src, v25, v26 & 1);
    *__dst = v24;
    __dst[1] = v25;
    *(__dst + 16) = v26 & 1;
    v27 = __src[3];
    sub_26B078640();
    __dst[3] = v27;
    *(__dst + 16) = *(__src + 16);
    memcpy(__dst + 5, __src + 5, 0x29uLL);
    v29 = __dst + *(v33 + 36);
    v28 = __src + *(v33 + 36);
    v6 = sub_26B079100();
    (*(*(v6 - 8) + 16))(v29, v28);
    (*(v34 + 56))(__dst, 0, 1, v33);
  }

  v20 = (a2 + v58 + *(v30 + 64));
  v21 = (a1 + v58 + *(v30 + 64));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD40, &qword_26B08B6C8);
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v21, 1))
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD68, &qword_26B08B6F0);
    memcpy(v20, v21, *(*(v13 - 8) + 64));
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD48, &qword_26B08B6D0);
    (*(*(v8 - 8) + 16))(v20, v21);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD50, &qword_26B08B6D8);
    v16 = &v20[*(v9 + 36)];
    v15 = &v21[*(v9 + 36)];
    v10 = sub_26B079100();
    (*(*(v10 - 8) + 16))(v16, v15);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD60, &qword_26B08B6E8);
    memcpy(&v20[*(v11 + 36)], &v21[*(v11 + 36)], 0x29uLL);
    v19 = &v20[*(v22 + 36)];
    v12 = &v21[*(v22 + 36)];
    *v19 = *v12;
    v17 = *(v12 + 1);
    v18 = v12[16];
    sub_26AF07734();
    *(v19 + 1) = v17;
    v19[16] = v18 & 1;
    (*(v23 + 56))(v20, 0);
  }

  return a2;
}

uint64_t sub_26AF2A244()
{
  v4 = type metadata accessor for ReleaseNotesSummaryView(0);
  v0 = *(*(v4 - 8) + 80);
  v5 = (v0 + 16) & ~v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCCE0, &qword_26B08DE00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078E40();
    (*(*(v1 - 8) + 8))(v3 + v5);
  }

  else
  {
  }

  if (*(v3 + v5 + *(v4 + 24) + 8))
  {
  }

  return swift_deallocObject();
}

__n128 sub_26AF2A3F0(char *a1, char *a2)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCCE0, &qword_26B08DE00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078E40();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v9 - 8) + 64));
  }

  v3 = type metadata accessor for ReleaseNotesSummaryView(0);
  *&a2[v3[5]] = *&a1[v3[5]];
  v4 = &a2[v3[6]];
  v5 = v3[6];
  result = *&a1[v5];
  *v4 = result;
  v4[1].n128_u8[0] = a1[v5 + 16];
  *&a2[v3[7]] = *&a1[v3[7]];
  return result;
}

uint64_t sub_26AF2A51C()
{
  v1 = *(type metadata accessor for ReleaseNotesSummaryView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26AF28C50(v2);
}

unint64_t sub_26AF2A580()
{
  v2 = qword_2803DCD80;
  if (!qword_2803DCD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCD78, &qword_26B08B700);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCD80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF2A64C()
{
  v2 = qword_2803DCD90;
  if (!qword_2803DCD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCD88, &qword_26B08B708);
    sub_26AF2A580();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCD90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF2A6F0(uint64_t a1)
{

  if (*(a1 + 56))
  {
  }

  if (*(a1 + 72))
  {
  }

  return a1;
}

void *sub_26AF2A75C(void *a1, void *a2)
{
  v7 = *a1;

  *a2 = v7;
  memcpy(a2 + 1, a1 + 1, 0x30uLL);
  if (a1[7])
  {
    v5 = a1[7];
    v6 = a1[8];

    a2[7] = v5;
    a2[8] = v6;
  }

  else
  {
    *(a2 + 7) = *(a1 + 7);
  }

  if (a1[9])
  {
    v3 = a1[9];
    v4 = a1[10];

    a2[9] = v3;
    a2[10] = v4;
  }

  else
  {
    *(a2 + 9) = *(a1 + 9);
  }

  return a2;
}

unint64_t sub_26AF2A85C()
{
  v2 = qword_2803DCD98;
  if (!qword_2803DCD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCD28, &qword_26B08B6B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCD98);
    return WitnessTable;
  }

  return v2;
}

char *sub_26AF2A8E4(char *a1, char *a2)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD18, &qword_26B08B6A0);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v10 - 8) + 64));
  }

  else
  {
    memcpy(a2, a1, 0xF9uLL);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD20, &qword_26B08B6A8);
    v7 = &a2[*(v2 + 36)];
    v6 = &a1[*(v2 + 36)];
    v3 = sub_26B079100();
    (*(*(v3 - 8) + 32))(v7, v6);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD28, &qword_26B08B6B0);
    *&a2[*(v4 + 52)] = *&a1[*(v4 + 52)];
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_26AF2AA28(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD18, &qword_26B08B6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *a1;

    *a2 = v11;
    memcpy((a2 + 8), (a1 + 8), 0x30uLL);
    if (*(a1 + 56))
    {
      v9 = *(a1 + 56);
      v10 = *(a1 + 64);

      *(a2 + 56) = v9;
      *(a2 + 64) = v10;
    }

    else
    {
      *(a2 + 56) = *(a1 + 56);
    }

    if (*(a1 + 72))
    {
      v7 = *(a1 + 72);
      v8 = *(a1 + 80);

      *(a2 + 72) = v7;
      *(a2 + 80) = v8;
    }

    else
    {
      *(a2 + 72) = *(a1 + 72);
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v19 = *a1;
    v20 = *(a1 + 8);
    v21 = *(a1 + 16);
    sub_26AE96194(*a1, v20, v21 & 1);
    *a2 = v19;
    *(a2 + 8) = v20;
    *(a2 + 16) = v21 & 1;
    *(a2 + 24) = *(a1 + 24);
    *(a2 + 32) = *(a1 + 32);
    if (*(a1 + 48))
    {
      v17 = *(a1 + 40);

      *(a2 + 40) = v17;
      v18 = *(a1 + 48);

      *(a2 + 48) = v18;
    }

    else
    {
      *(a2 + 40) = *(a1 + 40);
    }

    *(a2 + 56) = *(a1 + 56);
    memcpy((a2 + 64), (a1 + 64), 0x29uLL);
    memcpy((a2 + 112), (a1 + 112), 0x29uLL);
    memcpy((a2 + 160), (a1 + 160), 0x29uLL);
    memcpy((a2 + 208), (a1 + 208), 0x29uLL);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD20, &qword_26B08B6A8);
    v13 = a2 + *(v2 + 36);
    v12 = a1 + *(v2 + 36);
    v3 = sub_26B079100();
    (*(*(v3 - 8) + 16))(v13, v12);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD28, &qword_26B08B6B0);
    v15 = (a2 + *(v4 + 52));
    v5 = (a1 + *(v4 + 52));
    v14 = *v5;
    v16 = v5[1];
    sub_26AE961DC(*v5, v16);
    *v15 = v14;
    v15[1] = v16;
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

unint64_t sub_26AF2AD80()
{
  v2 = qword_2803DCDA0;
  if (!qword_2803DCDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCD70, &qword_26B08B6F8);
    sub_26AF2A85C();
    sub_26AF2A64C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCDA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF2AE28(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD18, &qword_26B08B6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    if (*(a1 + 56))
    {
    }

    if (*(a1 + 72))
    {
    }
  }

  else
  {
    sub_26AE963D0(*a1, *(a1 + 8), *(a1 + 16) & 1);
    if (*(a1 + 48))
    {
    }

    v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD20, &qword_26B08B6A8) + 36);
    v1 = sub_26B079100();
    (*(*(v1 - 8) + 8))(v4);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD28, &qword_26B08B6B0);
    sub_26AE96418(*(a1 + *(v2 + 52)), *(a1 + *(v2 + 52) + 8));
  }

  return a1;
}

unint64_t sub_26AF2AF98()
{
  v2 = qword_2803DCDB8;
  if (!qword_2803DCDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCDB0, &qword_26B08B710);
    sub_26AE957D8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCDB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF2B03C(uint64_t a1)
{
  sub_26AE963D0(*a1, *(a1 + 8), *(a1 + 16) & 1);
  if (*(a1 + 48))
  {
  }

  return a1;
}

unint64_t sub_26AF2B0A4()
{
  v2 = qword_2803DCDC8;
  if (!qword_2803DCDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCDC0, &qword_26B08B718);
    sub_26AF2AF98();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCDC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF2B148(uint64_t a1)
{
  sub_26AE963D0(*a1, *(a1 + 8), *(a1 + 16) & 1);
  if (*(a1 + 48))
  {
  }

  return a1;
}

unint64_t sub_26AF2B1B0()
{
  v2 = qword_2803DCDD8;
  if (!qword_2803DCDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCDD0, &qword_26B08B720);
    sub_26AF2B0A4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCDD8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF2B254(uint64_t a1)
{
  sub_26AE963D0(*a1, *(a1 + 8), *(a1 + 16) & 1);
  if (*(a1 + 48))
  {
  }

  return a1;
}

unint64_t sub_26AF2B2BC()
{
  v2 = qword_2803DCDE8;
  if (!qword_2803DCDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCDE0, &qword_26B08B728);
    sub_26AF2B1B0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCDE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF2B360(uint64_t a1)
{
  sub_26AE963D0(*a1, *(a1 + 8), *(a1 + 16) & 1);
  if (*(a1 + 48))
  {
  }

  return a1;
}

unint64_t sub_26AF2B3C8()
{
  v2 = qword_2803DCDF0;
  if (!qword_2803DCDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCD20, &qword_26B08B6A8);
    sub_26AF2B2BC();
    sub_26AE95850();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCDF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF2B470()
{
  v2 = qword_2803DCE00;
  if (!qword_2803DCE00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCE00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF2B4E8(uint64_t a1)
{
  sub_26AE963D0(*a1, *(a1 + 8), *(a1 + 16) & 1);
  if (*(a1 + 48))
  {
  }

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD20, &qword_26B08B6A8) + 36);
  v1 = sub_26B079100();
  (*(*(v1 - 8) + 8))(v3);
  return a1;
}

uint64_t sub_26AF2B5AC(uint64_t a1)
{
  sub_26AE963D0(*a1, *(a1 + 8), *(a1 + 16) & 1);
  if (*(a1 + 48))
  {
  }

  v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD20, &qword_26B08B6A8) + 36);
  v1 = sub_26B079100();
  (*(*(v1 - 8) + 8))(v4);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD28, &qword_26B08B6B0);
  sub_26AE96418(*(a1 + *(v2 + 52)), *(a1 + *(v2 + 52) + 8));
  return a1;
}

uint64_t sub_26AF2B69C(uint64_t a1, uint64_t a2)
{
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = *(a1 + 16);
  sub_26AE96194(*a1, v15, v16 & 1);
  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = v16 & 1;
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  if (*(a1 + 48))
  {
    v12 = *(a1 + 40);

    *(a2 + 40) = v12;
    v13 = *(a1 + 48);

    *(a2 + 48) = v13;
  }

  else
  {
    *(a2 + 40) = *(a1 + 40);
  }

  *(a2 + 56) = *(a1 + 56);
  memcpy((a2 + 64), (a1 + 64), 0x29uLL);
  memcpy((a2 + 112), (a1 + 112), 0x29uLL);
  memcpy((a2 + 160), (a1 + 160), 0x29uLL);
  memcpy((a2 + 208), (a1 + 208), 0x29uLL);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD20, &qword_26B08B6A8);
  v8 = a2 + *(v2 + 36);
  v7 = a1 + *(v2 + 36);
  v3 = sub_26B079100();
  (*(*(v3 - 8) + 16))(v8, v7);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD28, &qword_26B08B6B0);
  v10 = (a2 + *(v4 + 52));
  v5 = (a1 + *(v4 + 52));
  v9 = *v5;
  v11 = v5[1];
  sub_26AE961DC(*v5, v11);
  result = a2;
  *v10 = v9;
  v10[1] = v11;
  return result;
}

unint64_t sub_26AF2B8C0()
{
  v2 = qword_2803DCE08;
  if (!qword_2803DCE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCD38, &qword_26B08B6C0);
    sub_26AF2B968();
    sub_26AE95850();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCE08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF2B968()
{
  v2 = qword_2803DCE10;
  if (!qword_2803DCE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCE18, &qword_26B08B730);
    sub_26AF2BA0C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCE10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF2BA0C()
{
  v2 = qword_2803DCE20;
  if (!qword_2803DCE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCE28, &unk_26B08B738);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCE20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF2BAAC(uint64_t a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD38, &qword_26B08B6C0);
  if (!(*(*(v5 - 8) + 48))(a1, 1))
  {
    sub_26AE95AFC(*a1, *(a1 + 8), *(a1 + 16) & 1);

    v3 = a1 + *(v5 + 36);
    v1 = sub_26B079100();
    (*(*(v1 - 8) + 8))(v3);
  }

  return a1;
}

char *sub_26AF2BB98(char *a1, char *a2)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD38, &qword_26B08B6C0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD58, &qword_26B08B6E0);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    memcpy(a2, a1, 0x51uLL);
    v6 = &a2[*(v9 + 36)];
    v5 = &a1[*(v9 + 36)];
    v2 = sub_26B079100();
    (*(*(v2 - 8) + 32))(v6, v5);
    (*(v10 + 56))(a2, 0, 1, v9);
  }

  return a2;
}

void *sub_26AF2BD0C(uint64_t *a1, void *a2)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD38, &qword_26B08B6C0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD58, &qword_26B08B6E0);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v5 = *a1;
    v6 = a1[1];
    v7 = *(a1 + 16);
    sub_26AE95D28(*a1, v6, v7 & 1);
    *a2 = v5;
    a2[1] = v6;
    *(a2 + 16) = v7 & 1;
    v8 = a1[3];
    sub_26B078640();
    a2[3] = v8;
    *(a2 + 16) = *(a1 + 16);
    memcpy(a2 + 5, a1 + 5, 0x29uLL);
    v10 = a2 + *(v13 + 36);
    v9 = a1 + *(v13 + 36);
    v2 = sub_26B079100();
    (*(*(v2 - 8) + 16))(v10, v9);
    (*(v14 + 56))(a2, 0, 1, v13);
  }

  return a2;
}

unint64_t sub_26AF2BEFC()
{
  v2 = qword_2803DCE30;
  if (!qword_2803DCE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCD58, &qword_26B08B6E0);
    sub_26AF2B8C0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCE30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF2BF94(uint64_t a1)
{
  sub_26AE95AFC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

uint64_t sub_26AF2BFDC(uint64_t a1)
{
  sub_26AE95AFC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

uint64_t sub_26AF2C024(uint64_t a1)
{
  sub_26AE95AFC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD38, &qword_26B08B6C0) + 36);
  v1 = sub_26B079100();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_26AF2C0C8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  sub_26AE95D28(*a1, v5, v6 & 1);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  v7 = *(a1 + 24);
  sub_26B078640();
  *(a2 + 24) = v7;
  *(a2 + 32) = *(a1 + 32);
  memcpy((a2 + 40), (a1 + 40), 0x29uLL);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD38, &qword_26B08B6C0) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 16))(a2 + v8, a1 + v8);
  return a2;
}

unint64_t sub_26AF2C1E4()
{
  v2 = qword_2803DCE48;
  if (!qword_2803DCE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCD40, &qword_26B08B6C8);
    sub_26AF2C28C();
    sub_26AF2C5CC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCE48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF2C28C()
{
  v2 = qword_2803DCE50;
  if (!qword_2803DCE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCD60, &qword_26B08B6E8);
    sub_26AF2C330();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCE50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF2C330()
{
  v2 = qword_2803DCE58;
  if (!qword_2803DCE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCD50, &qword_26B08B6D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCE40, &qword_26B08B748);
    sub_26B078C10();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DDD20, &qword_26B0881A0);
    type metadata accessor for ReleaseNotesSheetView(255);
    sub_26AE9C224();
    sub_26AF2C4CC();
    swift_getOpaqueTypeConformance2();
    sub_26AF2C54C();
    swift_getOpaqueTypeConformance2();
    sub_26AE95850();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCE58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF2C4CC()
{
  v2 = qword_2803DCE68;
  if (!qword_2803DCE68)
  {
    type metadata accessor for ReleaseNotesSheetView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCE68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF2C54C()
{
  v2 = qword_2803DCE70;
  if (!qword_2803DCE70)
  {
    sub_26B078C10();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCE70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF2C5CC()
{
  v2 = qword_2803DCE78;
  if (!qword_2803DCE78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCE78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF2C644(uint64_t a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD40, &qword_26B08B6C8);
  if (!(*(*(v6 - 8) + 48))(a1, 1))
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD48, &qword_26B08B6D0);
    (*(*(v1 - 8) + 8))(a1);
    v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD50, &qword_26B08B6D8) + 36);
    v2 = sub_26B079100();
    (*(*(v2 - 8) + 8))(v4);
    sub_26AF072D8();
  }

  return a1;
}

char *sub_26AF2C780(char *a1, char *a2)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD40, &qword_26B08B6C8);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(a1, 1))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD68, &qword_26B08B6F0);
    memcpy(a2, a1, *(*(v8 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD48, &qword_26B08B6D0);
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD50, &qword_26B08B6D8);
    v11 = &a2[*(v3 + 36)];
    v10 = &a1[*(v3 + 36)];
    v4 = sub_26B079100();
    (*(*(v4 - 8) + 32))(v11, v10);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD60, &qword_26B08B6E8);
    memcpy(&a2[*(v5 + 36)], &a1[*(v5 + 36)], 0x29uLL);
    v6 = &a2[*(v14 + 36)];
    v7 = &a1[*(v14 + 36)];
    *v6 = *v7;
    v6[16] = v7[16];
    (*(v15 + 56))();
  }

  return a2;
}

char *sub_26AF2C998(char *a1, char *a2)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD40, &qword_26B08B6C8);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(a1, 1))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD68, &qword_26B08B6F0);
    memcpy(a2, a1, *(*(v7 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD48, &qword_26B08B6D0);
    (*(*(v2 - 8) + 16))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD50, &qword_26B08B6D8);
    v10 = &a2[*(v3 + 36)];
    v9 = &a1[*(v3 + 36)];
    v4 = sub_26B079100();
    (*(*(v4 - 8) + 16))(v10, v9);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD60, &qword_26B08B6E8);
    memcpy(&a2[*(v5 + 36)], &a1[*(v5 + 36)], 0x29uLL);
    v6 = *(v16 + 36);
    v13 = &a2[v6];
    *&a2[v6] = *&a1[v6];
    v11 = *&a1[v6 + 8];
    v12 = a1[v6 + 16];
    sub_26AF07734();
    *(v13 + 1) = v11;
    v13[16] = v12 & 1;
    (*(v17 + 56))(a2, 0);
  }

  return a2;
}

unint64_t sub_26AF2CBF0()
{
  v2 = qword_2803DCE80;
  if (!qword_2803DCE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCD68, &qword_26B08B6F0);
    sub_26AF2C1E4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCE80);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF2CC88()
{
  v4 = type metadata accessor for ReleaseNotesSummaryView(0);
  v0 = *(*(v4 - 8) + 80);
  v5 = (v0 + 16) & ~v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCCE0, &qword_26B08DE00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078E40();
    (*(*(v1 - 8) + 8))(v3 + v5);
  }

  else
  {
  }

  if (*(v3 + v5 + *(v4 + 24) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AF2CE34()
{
  v1 = *(type metadata accessor for ReleaseNotesSummaryView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26AF28370(v2);
}

uint64_t sub_26AF2CE98()
{
  v4 = type metadata accessor for ReleaseNotesSummaryView(0);
  v0 = *(*(v4 - 8) + 80);
  v5 = (v0 + 16) & ~v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCCE0, &qword_26B08DE00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078E40();
    (*(*(v1 - 8) + 8))(v3 + v5);
  }

  else
  {
  }

  if (*(v3 + v5 + *(v4 + 24) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AF2D044@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ReleaseNotesSummaryView(0);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_26AF28A18(v3, a1);
}

uint64_t sub_26AF2D0B8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD48, &qword_26B08B6D0);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD50, &qword_26B08B6D8) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

unint64_t sub_26AF2D17C()
{
  v2 = qword_2803DDD10;
  if (!qword_2803DDD10)
  {
    type metadata accessor for SUUIStatefulDescriptorRole(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DDD10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF2D1FC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD48, &qword_26B08B6D0);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD50, &qword_26B08B6D8) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_26AF2D2C0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD48, &qword_26B08B6D0);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD50, &qword_26B08B6D8) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 8))(a1 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD40, &qword_26B08B6C8);
  sub_26AF072D8();
  return a1;
}

uint64_t sub_26AF2D3B8(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD48, &qword_26B08B6D0);
  (*(*(v2 - 8) + 16))(a2, a1);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD50, &qword_26B08B6D8) + 36);
  v3 = sub_26B079100();
  (*(*(v3 - 8) + 16))(a2 + v8, a1 + v8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD60, &qword_26B08B6E8);
  memcpy((a2 + *(v4 + 36)), (a1 + *(v4 + 36)), 0x29uLL);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCD40, &qword_26B08B6C8);
  v6 = a1 + *(v5 + 36);
  v12 = a2 + *(v5 + 36);
  *v12 = *v6;
  v10 = *(v6 + 8);
  v11 = *(v6 + 16);
  sub_26AF07734();
  result = a2;
  *(v12 + 8) = v10;
  *(v12 + 16) = v11 & 1;
  return result;
}

uint64_t sub_26AF2D5A0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCCD8, qword_26B08B5E0);
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 28)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 28));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_26AF2D6EC(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCCD8, qword_26B08B5E0);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 28)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26AF2D7E8(uint64_t a1)
{
  v6 = sub_26AF2D920(319);
  if (v1 <= 0x3F)
  {
    v6 = sub_26AE96C84(319);
    if (v2 <= 0x3F)
    {
      v6 = sub_26AED57CC(319);
      if (v3 <= 0x3F)
      {
        v6 = type metadata accessor for ReactiveDescriptor(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v6;
}

unint64_t sub_26AF2D920(uint64_t a1)
{
  v5 = qword_2803DCE98;
  if (!qword_2803DCE98)
  {
    sub_26B078E40();
    v4 = sub_26B078A20();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_2803DCE98);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_26AF2DA30(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB520, &unk_26B086050);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078AD0();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  type metadata accessor for ReleaseNotesSheetView(0);

  return a1;
}

void *sub_26AF2DAE4(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB520, &unk_26B086050);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B078AD0();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v6 = *a1;

    *a2 = v6;
  }

  swift_storeEnumTagMultiPayload();
  v4 = *(type metadata accessor for ReleaseNotesSheetView(0) + 20);
  v5 = *(a1 + v4);

  result = a2;
  *(a2 + v4) = v5;
  return result;
}

unint64_t sub_26AF2DBE8()
{
  v2 = qword_2803DCEC0;
  if (!qword_2803DCEC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCEC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF2DC90()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_26AF2DCF8(uint64_t a1)
{

  swift_beginAccess();
  swift_weakAssign();

  swift_endAccess();
}

uint64_t sub_26AF2DD78()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_26AF2DDE0(uint64_t a1)
{

  swift_beginAccess();
  swift_weakAssign();

  swift_endAccess();
}

char *StatefulUIDelegateHandler.init(proxyOf:analyticsReporter:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v10 = a1;
  v9 = a2;
  v11 = v2;
  swift_weakInit();
  swift_weakInit();

  swift_beginAccess();
  swift_weakAssign();

  swift_endAccess();

  swift_beginAccess();
  swift_weakAssign();

  swift_endAccess();
  v8.receiver = v11;
  v8.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v8, sel_init);
  MEMORY[0x277D82BE0](v7);
  v11 = v7;

  MEMORY[0x277D82BD8](v11);
  return v7;
}

uint64_t StatefulUIDelegateHandler.operation(_:requestPurgeConfirmationFor:)(uint64_t a1, uint64_t a2)
{
  v3[13] = v2;
  v3[12] = a2;
  v3[5] = v3;
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = 0;
  v3[9] = 0;
  v3[10] = 0;
  v4 = sub_26B078580();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v3[6] = a1;
  v3[7] = a2;
  v3[8] = v2;
  v3[17] = sub_26B07A130();
  v3[18] = sub_26B07A120();
  v9 = sub_26B07A0C0();
  v3[19] = v9;
  v3[20] = v5;

  return MEMORY[0x2822009F8](sub_26AF2E1C0, v9, v5);
}

uint64_t sub_26AF2E1C0()
{
  v46 = v0;
  v39 = MEMORY[0x277D85700];
  *(v0 + 40) = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 168) = Strong;
  swift_endAccess();
  if (Strong)
  {
    v36 = v38[12];
    v38[9] = Strong;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v1 = [v36 descriptor];
    v37 = v1;
    v38[22] = v1;
    if (v1)
    {
      v31 = v38[12];
      v38[10] = v1;
      swift_unknownObjectRelease();
      v35 = sub_26B07A120();
      v38[23] = v35;
      v32 = sub_26B079D00("operation(_:requestPurgeConfirmationFor:)", 41, 1);
      v33 = v2;
      v38[24] = v2;

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v34 = swift_task_alloc();
      v38[25] = v34;
      v34[2] = Strong;
      v34[3] = v37;
      v34[4] = v31;
      v3 = swift_task_alloc();
      v38[26] = v3;
      v4 = type metadata accessor for SUUIUserInteractionResponse(0);
      *v3 = v38[5];
      v3[1] = sub_26AF2EE2C;

      return MEMORY[0x2822007B8](v38 + 11, v35, v39, v32, v33, sub_26AF3E3EC, v34, v4);
    }

    v17 = v38[13];
    swift_unknownObjectRelease();
    sub_26B078540();
    MEMORY[0x277D82BE0](v17);
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    oslog = sub_26B078570();
    v30 = sub_26B07A2C0();
    v22 = swift_allocObject();
    *(v22 + 16) = 32;
    v23 = swift_allocObject();
    *(v23 + 16) = 8;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_26AF2F2E4;
    *(v19 + 24) = v18;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_26AF3E248;
    *(v20 + 24) = v19;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_26AF3E294;
    *(v24 + 24) = v20;
    v25 = swift_allocObject();
    *(v25 + 16) = 32;
    v26 = swift_allocObject();
    *(v26 + 16) = 8;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_26AF2F2EC;
    *(v21 + 24) = 0;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_26AF3E394;
    *(v27 + 24) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
    sub_26B07A760();
    v28 = v5;

    *v28 = sub_26AF3E1CC;
    v28[1] = v22;

    v28[2] = sub_26AF3E200;
    v28[3] = v23;

    v28[4] = sub_26AF3E2E0;
    v28[5] = v24;

    v28[6] = sub_26AF3E318;
    v28[7] = v25;

    v28[8] = sub_26AF3E34C;
    v28[9] = v26;

    v28[10] = sub_26AF3E3E0;
    v28[11] = v27;
    sub_26AEA3B2C();

    if (os_log_type_enabled(oslog, v30))
    {
      buf = sub_26B07A420();
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
      v15 = sub_26AEA3B70(0, v13, v13);
      v16 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v41 = buf;
      v42 = v15;
      v43 = v16;
      sub_26AEA3BC4(2, &v41);
      sub_26AEA3BC4(2, &v41);
      v44 = sub_26AF3E1CC;
      v45 = v22;
      sub_26AEA3BD8(&v44, &v41, &v42, &v43);
      v44 = sub_26AF3E200;
      v45 = v23;
      sub_26AEA3BD8(&v44, &v41, &v42, &v43);
      v44 = sub_26AF3E2E0;
      v45 = v24;
      sub_26AEA3BD8(&v44, &v41, &v42, &v43);
      v44 = sub_26AF3E318;
      v45 = v25;
      sub_26AEA3BD8(&v44, &v41, &v42, &v43);
      v44 = sub_26AF3E34C;
      v45 = v26;
      sub_26AEA3BD8(&v44, &v41, &v42, &v43);
      v44 = sub_26AF3E3E0;
      v45 = v27;
      sub_26AEA3BD8(&v44, &v41, &v42, &v43);
      _os_log_impl(&dword_26AE88000, oslog, v30, "%s.%s: Invalid state - SUUIDownload.descriptor is nil", buf, 0x16u);
      sub_26AEA3C24(v15, 0, v13);
      sub_26AEA3C24(v16, 2, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();
    }

    else
    {
    }

    v11 = v38[16];
    v12 = v38[14];
    v10 = v38[15];
    v6 = MEMORY[0x277D82BD8](oslog);
    (*(v10 + 8))(v11, v12, v6);
  }

  else
  {
    v9 = v38[13];
    MEMORY[0x277D82BE0](v9);
    *(swift_task_alloc() + 16) = v9;
    sub_26B07A630();

    MEMORY[0x277D82BD8](v9);
  }

  v7 = *(v38[5] + 8);

  return v7(2);
}

uint64_t sub_26AF2EE2C()
{
  v4 = *v0;
  *(*v0 + 40) = *v0;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v1 = *(v4 + 160);
  v2 = *(v4 + 152);

  return MEMORY[0x2822009F8](sub_26AF2F02C, v2, v1);
}

uint64_t sub_26AF2F02C()
{
  *(v0 + 40) = v0;
  v3 = *(v0 + 88);
  swift_unknownObjectRelease();

  v1 = *(*(v0 + 40) + 8);

  return v1(v3);
}

uint64_t sub_26AF2F114(uint64_t a1)
{
  v9[0] = sub_26B07A740();
  v9[1] = v1;
  v2 = sub_26B079D00("", 0, 1);
  MEMORY[0x26D66D910](v2);

  ObjectType = swift_getObjectType();
  sub_26AF02FEC(ObjectType);
  v4 = sub_26B079D00(".", 1, 1);
  MEMORY[0x26D66D910](v4);

  v8[0] = sub_26B079D00("operation(_:requestPurgeConfirmationFor:)", 41, 1);
  v8[1] = v5;
  sub_26B07A720();
  sub_26AE9BCC0(v8);
  v6 = sub_26B079D00(": We have have encountered invalid UI state - could not find ReactiveManager (better to crash and force reset Settings app).", 124, 1);
  MEMORY[0x26D66D910](v6);

  sub_26B078640();
  sub_26AEB9F6C(v9);
  return sub_26B079EB0();
}

uint64_t sub_26AF2F31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  *&v19 = a3;
  *(&v19 + 1) = a4;
  v20 = sub_26AF4339C;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8);
  v14 = *(v18 - 8);
  v15 = v18 - 8;
  v12 = v14;
  v13 = *(v14 + 64);
  v10 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v17 = &v9 - v10;
  v30 = v5;
  v29 = a2;
  v28 = v6;
  v27 = v7;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  (*(v14 + 16))(v17, v11, v18);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = swift_allocObject();
  (*(v14 + 32))(v21 + v16, v17, v18);
  v22 = v19;
  v23 = v20;
  v24 = v21;
  v25 = 0;
  v26 = 0;
  return ReactiveUIManager.presentedDialog.setter(&v22);
}

uint64_t sub_26AF2F518(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v18 = a2;
  v28 = &unk_26B08BB48;
  v34 = 0;
  v33 = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8);
  v21 = *(v25 - 8);
  v22 = v25 - 8;
  v19 = v21;
  v20 = *(v21 + 64);
  v16 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v24 = &v15 - v16;
  v17 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00, &qword_26B087700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30);
  v31 = &v15 - v17;
  v34 = v2;
  v33 = v3;
  sub_26B07A140();
  v27 = 0;
  v4 = sub_26B07A160();
  (*(*(v4 - 8) + 56))(v31, 0, 1);
  (*(v21 + 16))(v24, v18, v25);
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v26 = (v23 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_allocObject();
  v6 = v21;
  v7 = v23;
  v8 = v24;
  v9 = v25;
  v29 = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  (*(v6 + 32))(v5 + v7, v8, v9);
  v10 = v27;
  v11 = v28;
  v12 = v29;
  v13 = v31;
  *(v29 + v26) = v30;
  v32 = sub_26AF449A0(v10, v10, v13, v11, v12, MEMORY[0x277D84F78] + 8);
  sub_26AEA08A4(v31);
}

uint64_t sub_26AF2F7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a5;
  v5[6] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[3] = a4;
  v5[4] = a5;
  return MEMORY[0x2822009F8](sub_26AF2F808, 0, 0);
}

uint64_t sub_26AF2F808()
{
  v1 = v0[7];
  v0[2] = v0;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8);
  sub_26B07A0E0();
  v2 = *(v0[2] + 8);

  return v2();
}

uint64_t sub_26AF2F980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v4[5] = a3;
  v4[4] = a2;
  v4[3] = a1;
  v4[2] = v4;
  sub_26B07A130();
  v4[7] = sub_26B07A120();
  v7 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26AF2FA30, v7, v5);
}

uint64_t sub_26AF2FA30()
{
  v6 = v0[6];
  aBlock = v0[5];
  v0[2] = v0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v0[8] = _Block_copy(aBlock);
  MEMORY[0x277D82BE0](v6);
  v1 = swift_task_alloc();
  v7[9] = v1;
  *v1 = v7[2];
  v1[1] = sub_26AF2FB2C;
  v2 = v7[4];
  v3 = v7[3];

  return StatefulUIDelegateHandler.operation(_:requestPurgeConfirmationFor:)(v3, v2);
}

uint64_t sub_26AF2FB2C(uint64_t a1)
{
  v7 = *v1;
  v6 = *(*v1 + 64);
  v4 = *(*v1 + 48);
  *(v7 + 16) = *v1;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v6[2](v6, a1);
  _Block_release(v6);

  v2 = *(*(v7 + 16) + 8);

  return v2();
}

uint64_t sub_26AF2FD0C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v18 = a2;
  v24 = &unk_26B08BB10;
  v27 = &unk_26B08BB20;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00, &qword_26B087700);
  v17 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v2);
  v26 = &v17 - v17;
  v25 = 0;
  v3 = sub_26B07A160();
  (*(*(v3 - 8) + 56))(v26, 1);
  v20 = 48;
  v21 = 7;
  v4 = swift_allocObject();
  v5 = v18;
  v6 = v4;
  v7 = v19;
  v28 = v6;
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v7;
  v6[5] = v5;
  v22 = v6[2];
  v23 = v6[3];
  swift_unknownObjectRetain();
  v8 = swift_allocObject();
  v9 = v23;
  v10 = v24;
  v11 = v25;
  v12 = v26;
  v13 = v27;
  v14 = v8;
  v15 = v28;
  v14[2] = v22;
  v14[3] = v9;
  v14[4] = v10;
  v14[5] = v15;
  sub_26AF3D850(v11, v11, v12, v13, v14);
}

uint64_t StatefulUIDelegateHandler.operation(_:requestDevicePasscodeFor:)(uint64_t a1, uint64_t a2)
{
  v3[14] = v2;
  v3[13] = a2;
  v3[8] = v3;
  v3[9] = 0;
  v3[10] = 0;
  v3[11] = 0;
  v3[12] = 0;
  v3[9] = a1;
  v3[10] = a2;
  v3[11] = v2;
  v3[15] = sub_26B07A130();
  v3[16] = sub_26B07A120();
  v6 = sub_26B07A0C0();
  v3[17] = v6;
  v3[18] = v4;

  return MEMORY[0x2822009F8](sub_26AF2FF94, v6, v4);
}

uint64_t sub_26AF2FF94()
{
  v13 = MEMORY[0x277D85700];
  *(v0 + 64) = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 152) = Strong;
  swift_endAccess();
  if (Strong)
  {
    v7 = v12[13];
    v12[12] = Strong;
    v8 = sub_26B07A120();
    v12[20] = v8;
    v9 = sub_26B079D00("operation(_:requestDevicePasscodeFor:)", 38, 1);
    v10 = v1;
    v12[21] = v1;

    swift_unknownObjectRetain();
    v11 = swift_task_alloc();
    v12[22] = v11;
    *(v11 + 16) = Strong;
    *(v11 + 24) = v7;
    v2 = swift_task_alloc();
    v12[23] = v2;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCEF0, &qword_26B08B9C0);
    *v2 = v12[8];
    v2[1] = sub_26AF302B4;

    return MEMORY[0x2822007B8](v12 + 5, v8, v13, v9, v10, sub_26AF3E684, v11, v3);
  }

  else
  {
    v6 = v12[14];
    MEMORY[0x277D82BE0](v6);
    *(swift_task_alloc() + 16) = v6;
    sub_26B07A630();

    MEMORY[0x277D82BD8](v6);

    v4 = *(v12[8] + 8);

    return v4(1, 0);
  }
}

uint64_t sub_26AF302B4()
{
  v4 = *v0;
  *(*v0 + 64) = *v0;

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v1 = *(v4 + 144);
  v2 = *(v4 + 136);

  return MEMORY[0x2822009F8](sub_26AF30494, v2, v1);
}

uint64_t sub_26AF30494()
{
  v0[8] = v0;
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];

  v1 = *(v0[8] + 8);

  return v1(v3, v4, v5);
}

uint64_t sub_26AF30570(uint64_t a1)
{
  v9[0] = sub_26B07A740();
  v9[1] = v1;
  v2 = sub_26B079D00("", 0, 1);
  MEMORY[0x26D66D910](v2);

  ObjectType = swift_getObjectType();
  sub_26AF02FEC(ObjectType);
  v4 = sub_26B079D00(".", 1, 1);
  MEMORY[0x26D66D910](v4);

  v8[0] = sub_26B079D00("operation(_:requestDevicePasscodeFor:)", 38, 1);
  v8[1] = v5;
  sub_26B07A720();
  sub_26AE9BCC0(v8);
  v6 = sub_26B079D00(": We have have encountered invalid UI state - could not find ReactiveManager (better to crash and force reset Settings app).", 124, 1);
  MEMORY[0x26D66D910](v6);

  sub_26B078640();
  sub_26AEB9F6C(v9);
  return sub_26B079EB0();
}

uint64_t sub_26AF306D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  *&v17 = a3;
  *(&v17 + 1) = sub_26AF424E0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD020, &qword_26B08BAF0);
  v12 = *(v16 - 8);
  v13 = v16 - 8;
  v10 = v12;
  v11 = *(v12 + 64);
  v8 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v15 = &v7 - v8;
  v26 = v4;
  v25 = a2;
  v24 = v5;
  swift_unknownObjectRetain();
  (*(v12 + 16))(v15, v9, v16);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  (*(v12 + 32))(v18 + v14, v15, v16);
  v19 = v17;
  v20 = v18;
  v21 = 0;
  v22 = 0;
  v23 = 1;
  return ReactiveUIManager.presentedDialog.setter(&v19);
}

uint64_t sub_26AF308BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a1;
  v35 = a2;
  v36 = a3;
  v25 = a4;
  v38 = &unk_26B08BB00;
  v46 = 0;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD020, &qword_26B08BAF0);
  v28 = *(v32 - 8);
  v29 = v32 - 8;
  v26 = v28;
  v27 = *(v28 + 64);
  v23 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v32);
  v31 = &v23 - v23;
  v24 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00, &qword_26B087700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v40);
  v41 = &v23 - v24;
  v46 = v4;
  v44 = v5;
  v45 = v6;
  v43 = v7;
  sub_26B07A140();
  v37 = 0;
  v8 = sub_26B07A160();
  (*(*(v8 - 8) + 56))(v41, 0, 1);
  (*(v28 + 16))(v31, v25, v32);
  sub_26B078640();
  v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v33 = (v30 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v10 = v28;
  v11 = v30;
  v12 = v31;
  v13 = v32;
  v39 = v9;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  (*(v10 + 32))(v9 + v11, v12, v13);
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = v37;
  v18 = v38;
  v19 = v39;
  v20 = v41;
  *(v39 + v33) = v40;
  v21 = (v19 + v14);
  *v21 = v15;
  v21[1] = v16;
  v42 = sub_26AF449A0(v17, v17, v20, v18, v19, MEMORY[0x277D84F78] + 8);
  sub_26AEA08A4(v41);
}

uint64_t sub_26AF30BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a7;
  v7[12] = a6;
  v7[11] = a5;
  v7[10] = a4;
  v7[7] = v7;
  v7[8] = 0;
  v7[9] = 0;
  v7[5] = 0;
  v7[6] = 0;
  v7[8] = a4;
  v7[9] = a5;
  v7[5] = a6;
  v7[6] = a7;
  return MEMORY[0x2822009F8](sub_26AF30C20, 0, 0);
}

uint64_t sub_26AF30C20()
{
  v5 = v0[13];
  v4 = v0[12];
  v3 = v0[11];
  v0[7] = v0;
  sub_26B078640();
  v0[2] = v3;
  v0[3] = v4;
  v0[4] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD020, &qword_26B08BAF0);
  sub_26B07A0E0();
  v1 = *(v0[7] + 8);

  return v1();
}

uint64_t sub_26AF30DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v4[5] = a3;
  v4[4] = a2;
  v4[3] = a1;
  v4[2] = v4;
  sub_26B07A130();
  v4[7] = sub_26B07A120();
  v7 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26AF30E78, v7, v5);
}

uint64_t sub_26AF30E78()
{
  v6 = v0[6];
  aBlock = v0[5];
  v0[2] = v0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v0[8] = _Block_copy(aBlock);
  MEMORY[0x277D82BE0](v6);
  v1 = swift_task_alloc();
  v7[9] = v1;
  *v1 = v7[2];
  v1[1] = sub_26AF30F74;
  v2 = v7[4];
  v3 = v7[3];

  return StatefulUIDelegateHandler.operation(_:requestDevicePasscodeFor:)(v3, v2);
}

uint64_t sub_26AF30F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v11 = *(*v3 + 48);
  *(v4 + 16) = *v3;
  v9 = v4 + 16;
  v10 = v4 + 16;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_26B078640();
  v13 = 0;
  if (a3)
  {
    v8 = sub_26B079DF0();

    v13 = v8;
  }

  aBlock = *(v9 + 48);
  aBlock[2]();

  _Block_release(aBlock);

  v5 = *(*v10 + 8);

  return v5();
}

uint64_t StatefulUIDelegateHandler.operation(_:requestAgreementToTermsAndConditionsFor:)(uint64_t a1, uint64_t a2)
{
  v3[23] = v2;
  v3[22] = a2;
  v3[11] = v3;
  v3[12] = 0;
  v3[13] = 0;
  v3[14] = 0;
  v3[15] = 0;
  v3[16] = 0;
  v3[18] = 0;
  v4 = sub_26B078580();
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();
  v3[12] = a1;
  v3[13] = a2;
  v3[14] = v2;
  sub_26B07A130();
  v3[27] = sub_26B07A120();
  v9 = sub_26B07A0C0();
  v3[28] = v9;
  v3[29] = v5;

  return MEMORY[0x2822009F8](sub_26AF31328, v9, v5);
}

uint64_t sub_26AF31328()
{
  *(v0 + 88) = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 240) = Strong;
  swift_endAccess();
  if (Strong)
  {
    v6[15] = Strong;
    type metadata accessor for ReactiveTermsAndConditionsService();

    v6[31] = ReactiveTermsAndConditionsService.__allocating_init(manager:)(Strong);
    v1 = swift_task_alloc();
    v6[32] = v1;
    *v1 = v6[11];
    v1[1] = sub_26AF315B4;
    v2 = v6[22];

    return sub_26AFC8930(v2);
  }

  else
  {
    v5 = v6[23];
    MEMORY[0x277D82BE0](v5);
    *(swift_task_alloc() + 16) = v5;
    sub_26B07A630();

    MEMORY[0x277D82BD8](v5);

    v4 = *(v6[11] + 8);

    return v4(2);
  }
}

uint64_t sub_26AF315B4(uint64_t a1)
{
  v7 = *v2;
  v7[11] = *v2;
  v7[33] = a1;
  v7[34] = v1;

  if (v1)
  {
    v3 = v7[29];
    v4 = v7[28];
    v5 = sub_26AF319D8;
  }

  else
  {

    v3 = v7[29];
    v4 = v7[28];
    v5 = sub_26AF31740;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26AF31740()
{
  v1 = v0[33];
  v0[11] = v0;
  v0[18] = v1;
  swift_beginAccess();
  v0[19] = swift_weakLoadStrong();
  if (v0[19])
  {
    v6 = v7[33];

    sub_26AF3ED48();
    swift_endAccess();
    v7[20] = v6;
    v7[21] = 0;
    type metadata accessor for SUUIUserInteractionResponse(0);
    sub_26AF3ED74();
    if (sub_26B07A790())
    {
      v5 = 28;
    }

    else
    {
      v5 = 29;
    }

    ReactiveAnalyticsReporter.submitButtonTap(_:)(v5);
  }

  else
  {
    sub_26AF3ED48();
    swift_endAccess();
  }

  v4 = v7[33];

  v2 = *(v7[11] + 8);

  return v2(v4);
}

uint64_t sub_26AF319D8()
{
  v40 = v0;
  v15 = v0[34];
  v14 = v0[23];
  v0[11] = v0;

  MEMORY[0x26D66E1D0](v15);
  v0[16] = v15;
  sub_26B078540();
  MEMORY[0x277D82BE0](v14);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  MEMORY[0x26D66E1D0](v15);
  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  sub_26AED0174();

  v33 = sub_26B078570();
  v34 = sub_26B07A2C0();
  v23 = swift_allocObject();
  *(v23 + 16) = 32;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_26AF3E960;
  *(v17 + 24) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_26AF3EA58;
  *(v18 + 24) = v17;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_26AF3EAA4;
  *(v25 + 24) = v18;
  v26 = swift_allocObject();
  *(v26 + 16) = 32;
  v27 = swift_allocObject();
  *(v27 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26AF329B8;
  *(v19 + 24) = 0;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_26AF3EBA4;
  *(v28 + 24) = v19;
  v29 = swift_allocObject();
  *(v29 + 16) = 64;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_26AF3E9A8;
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_26AF3ECA4;
  *(v22 + 24) = v21;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_26AF3ECF0;
  *(v31 + 24) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  sub_26B07A760();
  v32 = v1;

  *v32 = sub_26AF3E9DC;
  v32[1] = v23;

  v32[2] = sub_26AF3EA10;
  v32[3] = v24;

  v32[4] = sub_26AF3EAF0;
  v32[5] = v25;

  v32[6] = sub_26AF3EB28;
  v32[7] = v26;

  v32[8] = sub_26AF3EB5C;
  v32[9] = v27;

  v32[10] = sub_26AF3EBF0;
  v32[11] = v28;

  v32[12] = sub_26AF3EC28;
  v32[13] = v29;

  v32[14] = sub_26AF3EC5C;
  v32[15] = v30;

  v32[16] = sub_26AF3ED3C;
  v32[17] = v31;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v33, v34))
  {
    buf = sub_26B07A420();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v11 = sub_26AEA3B70(1, v9, v9);
    v12 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v35 = buf;
    v36 = v11;
    v37 = v12;
    sub_26AEA3BC4(2, &v35);
    sub_26AEA3BC4(3, &v35);
    v38 = sub_26AF3E9DC;
    v39 = v23;
    sub_26AEA3BD8(&v38, &v35, &v36, &v37);
    v38 = sub_26AF3EA10;
    v39 = v24;
    sub_26AEA3BD8(&v38, &v35, &v36, &v37);
    v38 = sub_26AF3EAF0;
    v39 = v25;
    sub_26AEA3BD8(&v38, &v35, &v36, &v37);
    v38 = sub_26AF3EB28;
    v39 = v26;
    sub_26AEA3BD8(&v38, &v35, &v36, &v37);
    v38 = sub_26AF3EB5C;
    v39 = v27;
    sub_26AEA3BD8(&v38, &v35, &v36, &v37);
    v38 = sub_26AF3EBF0;
    v39 = v28;
    sub_26AEA3BD8(&v38, &v35, &v36, &v37);
    v38 = sub_26AF3EC28;
    v39 = v29;
    sub_26AEA3BD8(&v38, &v35, &v36, &v37);
    v38 = sub_26AF3EC5C;
    v39 = v30;
    sub_26AEA3BD8(&v38, &v35, &v36, &v37);
    v38 = sub_26AF3ED3C;
    v39 = v31;
    sub_26AEA3BD8(&v38, &v35, &v36, &v37);
    _os_log_impl(&dword_26AE88000, v33, v34, "%s.%s: Failed to present Terms and Conditions sheet: %@", buf, 0x20u);
    sub_26AEA3C24(v11, 1, v9);
    sub_26AEA3C24(v12, 2, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  v7 = v13[26];
  v8 = v13[24];
  v6 = v13[25];
  v2 = MEMORY[0x277D82BD8](v33);
  (*(v6 + 8))(v7, v8, v2);
  swift_beginAccess();
  v13[17] = swift_weakLoadStrong();
  if (v13[17])
  {

    sub_26AF3ED48();
    swift_endAccess();
    ReactiveAnalyticsReporter.submitButtonTap(_:)(29);
  }

  else
  {
    sub_26AF3ED48();
    swift_endAccess();
  }

  v5 = v13[34];

  v3 = *(v13[11] + 8);

  return v3(2);
}

uint64_t sub_26AF32838(uint64_t a1)
{
  v9[0] = sub_26B07A740();
  v9[1] = v1;
  v2 = sub_26B079D00("", 0, 1);
  MEMORY[0x26D66D910](v2);

  ObjectType = swift_getObjectType();
  sub_26AF02FEC(ObjectType);
  v4 = sub_26B079D00(".", 1, 1);
  MEMORY[0x26D66D910](v4);

  v8[0] = sub_26B079D00("operation(_:requestAgreementToTermsAndConditionsFor:)", 53, 1);
  v8[1] = v5;
  sub_26B07A720();
  sub_26AE9BCC0(v8);
  v6 = sub_26B079D00(": We have have encountered invalid UI state - could not find ReactiveManager (better to crash and force reset Settings app).", 124, 1);
  MEMORY[0x26D66D910](v6);

  sub_26B078640();
  sub_26AEB9F6C(v9);
  return sub_26B079EB0();
}

uint64_t sub_26AF32ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v4[5] = a3;
  v4[4] = a2;
  v4[3] = a1;
  v4[2] = v4;
  sub_26B07A130();
  v4[7] = sub_26B07A120();
  v7 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26AF32B7C, v7, v5);
}

uint64_t sub_26AF32B7C()
{
  v6 = v0[6];
  aBlock = v0[5];
  v0[2] = v0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v0[8] = _Block_copy(aBlock);
  MEMORY[0x277D82BE0](v6);
  v1 = swift_task_alloc();
  v7[9] = v1;
  *v1 = v7[2];
  v1[1] = sub_26AF32C78;
  v2 = v7[4];
  v3 = v7[3];

  return StatefulUIDelegateHandler.operation(_:requestAgreementToTermsAndConditionsFor:)(v3, v2);
}

uint64_t sub_26AF32C78(uint64_t a1)
{
  v7 = *v1;
  v6 = *(*v1 + 64);
  v4 = *(*v1 + 48);
  *(v7 + 16) = *v1;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v6[2](v6, a1);
  _Block_release(v6);

  v2 = *(*(v7 + 16) + 8);

  return v2();
}

uint64_t StatefulUIDelegateHandler.operation(_:requestApprovalForDownloadConstraints:downloadPolicy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = v3;
  v4[13] = a3;
  v4[12] = a2;
  v4[5] = v4;
  v4[6] = 0;
  v4[7] = 0;
  v4[8] = 0;
  v4[9] = 0;
  v4[10] = 0;
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = v3;
  v4[15] = sub_26B07A130();
  v4[16] = sub_26B07A120();
  v7 = sub_26B07A0C0();
  v4[17] = v7;
  v4[18] = v5;

  return MEMORY[0x2822009F8](sub_26AF32F54, v7, v5);
}

uint64_t sub_26AF32F54()
{
  v14 = MEMORY[0x277D85700];
  *(v0 + 40) = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 152) = Strong;
  swift_endAccess();
  if (Strong)
  {
    v8 = v13[13];
    v7 = v13[12];
    v13[10] = Strong;
    v12 = sub_26B07A120();
    v13[20] = v12;
    v9 = sub_26B079D00("operation(_:requestApprovalForDownloadConstraints:downloadPolicy:)", 66, 1);
    v10 = v1;
    v13[21] = v1;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v11 = swift_task_alloc();
    v13[22] = v11;
    v11[2] = Strong;
    v11[3] = v7;
    v11[4] = v8;
    v2 = swift_task_alloc();
    v13[23] = v2;
    v3 = type metadata accessor for SUUIUserInteractionResponse(0);
    *v2 = v13[5];
    v2[1] = sub_26AF33288;

    return MEMORY[0x2822007B8](v13 + 11, v12, v14, v9, v10, sub_26AF3F07C, v11, v3);
  }

  else
  {
    v6 = v13[14];
    MEMORY[0x277D82BE0](v6);
    *(swift_task_alloc() + 16) = v6;
    sub_26B07A630();

    MEMORY[0x277D82BD8](v6);

    v4 = *(v13[5] + 8);

    return v4(2);
  }
}

uint64_t sub_26AF33288()
{
  v4 = *v0;
  *(*v0 + 40) = *v0;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v1 = *(v4 + 144);
  v2 = *(v4 + 136);

  return MEMORY[0x2822009F8](sub_26AF33488, v2, v1);
}

uint64_t sub_26AF33488()
{
  *(v0 + 40) = v0;
  v3 = *(v0 + 88);

  v1 = *(*(v0 + 40) + 8);

  return v1(v3);
}

uint64_t sub_26AF33558(uint64_t a1)
{
  v9[0] = sub_26B07A740();
  v9[1] = v1;
  v2 = sub_26B079D00("", 0, 1);
  MEMORY[0x26D66D910](v2);

  ObjectType = swift_getObjectType();
  sub_26AF02FEC(ObjectType);
  v4 = sub_26B079D00(".", 1, 1);
  MEMORY[0x26D66D910](v4);

  v8[0] = sub_26B079D00("operation(_:requestApprovalForDownloadConstraints:downloadPolicy:)", 66, 1);
  v8[1] = v5;
  sub_26B07A720();
  sub_26AE9BCC0(v8);
  v6 = sub_26B079D00(": We have have encountered invalid UI state - could not find ReactiveManager (better to crash and force reset Settings app).", 124, 1);
  MEMORY[0x26D66D910](v6);

  sub_26B078640();
  sub_26AEB9F6C(v9);
  return sub_26B079EB0();
}

uint64_t sub_26AF336C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  *&v19 = a3;
  *(&v19 + 1) = a4;
  v20 = sub_26AF42000;
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8);
  v14 = *(v18 - 8);
  v15 = v18 - 8;
  v12 = v14;
  v13 = *(v14 + 64);
  v10 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19);
  v17 = &v9 - v10;
  v30 = v5;
  v29 = a2;
  v28 = v6;
  v27 = v7;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  (*(v14 + 16))(v17, v11, v18);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = swift_allocObject();
  (*(v14 + 32))(v21 + v16, v17, v18);
  v22 = v19;
  v23 = v20;
  v24 = v21;
  v25 = 0;
  v26 = 3;
  return ReactiveUIManager.presentedDialog.setter(&v22);
}

uint64_t sub_26AF338C0(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v18 = a2;
  v28 = &unk_26B08BAE8;
  v34 = 0;
  v33 = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8);
  v21 = *(v25 - 8);
  v22 = v25 - 8;
  v19 = v21;
  v20 = *(v21 + 64);
  v16 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v24 = &v15 - v16;
  v17 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00, &qword_26B087700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30);
  v31 = &v15 - v17;
  v34 = v2;
  v33 = v3;
  sub_26B07A140();
  v27 = 0;
  v4 = sub_26B07A160();
  (*(*(v4 - 8) + 56))(v31, 0, 1);
  (*(v21 + 16))(v24, v18, v25);
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v26 = (v23 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_allocObject();
  v6 = v21;
  v7 = v23;
  v8 = v24;
  v9 = v25;
  v29 = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  (*(v6 + 32))(v5 + v7, v8, v9);
  v10 = v27;
  v11 = v28;
  v12 = v29;
  v13 = v31;
  *(v29 + v26) = v30;
  v32 = sub_26AF449A0(v10, v10, v13, v11, v12, MEMORY[0x277D84F78] + 8);
  sub_26AEA08A4(v31);
}

uint64_t sub_26AF33B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a5;
  v5[6] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[3] = a4;
  v5[4] = a5;
  return MEMORY[0x2822009F8](sub_26AF33BB0, 0, 0);
}

uint64_t sub_26AF33BB0()
{
  v1 = v0[7];
  v0[2] = v0;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8);
  sub_26B07A0E0();
  v2 = *(v0[2] + 8);

  return v2();
}

uint64_t sub_26AF33D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a5;
  v5[6] = a4;
  v5[5] = a3;
  v5[4] = a2;
  v5[3] = a1;
  v5[2] = v5;
  sub_26B07A130();
  v5[8] = sub_26B07A120();
  v8 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26AF33DF0, v8, v6);
}

uint64_t sub_26AF33DF0()
{
  v7 = v0[7];
  aBlock = v0[6];
  v0[2] = v0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v0[9] = _Block_copy(aBlock);
  MEMORY[0x277D82BE0](v7);
  v1 = swift_task_alloc();
  v8[10] = v1;
  *v1 = v8[2];
  v1[1] = sub_26AF33F00;
  v2 = v8[5];
  v3 = v8[4];
  v4 = v8[3];

  return StatefulUIDelegateHandler.operation(_:requestApprovalForDownloadConstraints:downloadPolicy:)(v4, v3, v2);
}

uint64_t sub_26AF33F00(uint64_t a1)
{
  v7 = *v1;
  v6 = *(*v1 + 72);
  v4 = *(*v1 + 56);
  *(v7 + 16) = *v1;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v6[2](v6, a1);
  _Block_release(v6);

  v2 = *(*(v7 + 16) + 8);

  return v2();
}

uint64_t StatefulUIDelegateHandler.statefulUIManagerRequestRollbackRestartApproval(_:)(uint64_t a1)
{
  v2[10] = v1;
  v2[5] = v2;
  v2[6] = 0;
  v2[7] = 0;
  v2[8] = 0;
  v2[6] = a1;
  v2[7] = v1;
  v2[11] = sub_26B07A130();
  v2[12] = sub_26B07A120();
  v5 = sub_26B07A0C0();
  v2[13] = v5;
  v2[14] = v3;

  return MEMORY[0x2822009F8](sub_26AF341D4, v5, v3);
}

uint64_t sub_26AF341D4()
{
  v11 = MEMORY[0x277D85700];
  *(v0 + 40) = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 120) = Strong;
  swift_endAccess();
  if (Strong)
  {
    v10[8] = Strong;
    v9 = sub_26B07A120();
    v10[16] = v9;
    v7 = sub_26B079D00("statefulUIManagerRequestRollbackRestartApproval(_:)", 51, 1);
    v8 = v1;
    v10[17] = v1;

    v2 = swift_task_alloc();
    v10[18] = v2;
    v3 = type metadata accessor for SUUIUserInteractionResponse(0);
    *v2 = v10[5];
    v2[1] = sub_26AF34494;

    return MEMORY[0x2822007B8](v10 + 9, v9, v11, v7, v8, sub_26AF3F328, Strong, v3);
  }

  else
  {
    v6 = v10[10];
    MEMORY[0x277D82BE0](v6);
    *(swift_task_alloc() + 16) = v6;
    sub_26B07A630();

    MEMORY[0x277D82BD8](v6);

    v4 = *(v10[5] + 8);

    return v4(1);
  }
}

uint64_t sub_26AF34494()
{
  v4 = *v0;
  *(*v0 + 40) = *v0;

  swift_unknownObjectRelease();
  v1 = *(v4 + 112);
  v2 = *(v4 + 104);

  return MEMORY[0x2822009F8](sub_26AF34634, v2, v1);
}

uint64_t sub_26AF34634()
{
  *(v0 + 40) = v0;
  v3 = *(v0 + 72);

  v1 = *(*(v0 + 40) + 8);

  return v1(v3);
}

uint64_t sub_26AF346EC(uint64_t a1)
{
  v9[0] = sub_26B07A740();
  v9[1] = v1;
  v2 = sub_26B079D00("", 0, 1);
  MEMORY[0x26D66D910](v2);

  ObjectType = swift_getObjectType();
  sub_26AF02FEC(ObjectType);
  v4 = sub_26B079D00(".", 1, 1);
  MEMORY[0x26D66D910](v4);

  v8[0] = sub_26B079D00("statefulUIManagerRequestRollbackRestartApproval(_:)", 51, 1);
  v8[1] = v5;
  sub_26B07A720();
  sub_26AE9BCC0(v8);
  v6 = sub_26B079D00(": We have have encountered invalid UI state - could not find ReactiveManager (better to crash and force reset Settings app).", 124, 1);
  MEMORY[0x26D66D910](v6);

  sub_26B078640();
  sub_26AEB9F6C(v9);
  return sub_26B079EB0();
}

uint64_t sub_26AF34854(uint64_t a1, uint64_t a2)
{
  v6[1] = a1;
  *&v15 = sub_26AF41B20;
  v22 = 0;
  v21 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8);
  v10 = *(v14 - 8);
  v11 = v14 - 8;
  v8 = v10;
  v9 = *(v10 + 64);
  v7 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x28223BE20](v14);
  v13 = v6 - v7;
  v22 = v4;
  v21 = a2;
  (*(v10 + 16))(v3);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  *(&v15 + 1) = swift_allocObject();
  (*(v10 + 32))(*(&v15 + 1) + v12, v13, v14);
  v16 = v15;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 4;
  return ReactiveUIManager.presentedDialog.setter(&v16);
}

uint64_t sub_26AF34A14(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v18 = a2;
  v28 = &unk_26B08BAD8;
  v34 = 0;
  v33 = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8);
  v21 = *(v25 - 8);
  v22 = v25 - 8;
  v19 = v21;
  v20 = *(v21 + 64);
  v16 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v24 = &v15 - v16;
  v17 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00, &qword_26B087700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30);
  v31 = &v15 - v17;
  v34 = v2;
  v33 = v3;
  sub_26B07A140();
  v27 = 0;
  v4 = sub_26B07A160();
  (*(*(v4 - 8) + 56))(v31, 0, 1);
  (*(v21 + 16))(v24, v18, v25);
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v26 = (v23 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_allocObject();
  v6 = v21;
  v7 = v23;
  v8 = v24;
  v9 = v25;
  v29 = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  (*(v6 + 32))(v5 + v7, v8, v9);
  v10 = v27;
  v11 = v28;
  v12 = v29;
  v13 = v31;
  *(v29 + v26) = v30;
  v32 = sub_26AF449A0(v10, v10, v13, v11, v12, MEMORY[0x277D84F78] + 8);
  sub_26AEA08A4(v31);
}

uint64_t sub_26AF34CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a5;
  v5[6] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[3] = a4;
  v5[4] = a5;
  return MEMORY[0x2822009F8](sub_26AF34D04, 0, 0);
}

uint64_t sub_26AF34D04()
{
  v1 = v0[7];
  v0[2] = v0;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8);
  sub_26B07A0E0();
  v2 = *(v0[2] + 8);

  return v2();
}

uint64_t sub_26AF34E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  v3[4] = a2;
  v3[3] = a1;
  v3[2] = v3;
  sub_26B07A130();
  v3[6] = sub_26B07A120();
  v6 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26AF34F1C, v6, v4);
}

uint64_t sub_26AF34F1C()
{
  v6 = v0[5];
  aBlock = v0[4];
  v1 = v0[3];
  v0[2] = v0;
  MEMORY[0x277D82BE0](v1);
  v0[7] = _Block_copy(aBlock);
  MEMORY[0x277D82BE0](v6);
  v2 = swift_task_alloc();
  v7[8] = v2;
  *v2 = v7[2];
  v2[1] = sub_26AF3500C;
  v3 = v7[3];

  return StatefulUIDelegateHandler.statefulUIManagerRequestRollbackRestartApproval(_:)(v3);
}

uint64_t sub_26AF3500C(uint64_t a1)
{
  v8 = *v1;
  v7 = *(*v1 + 56);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  *(v8 + 16) = *v1;

  v7[2](v7, a1);
  _Block_release(v7);

  v2 = *(*(v8 + 16) + 8);

  return v2();
}

uint64_t StatefulUIDelegateHandler.statefulUIManager(_:requestPurgeConfirmationOfActiveDownload:toSwitchSelectedBetaProgram:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = v3;
  v4[14] = a3;
  v4[13] = a2;
  v4[5] = v4;
  v4[6] = 0;
  v4[7] = 0;
  v4[8] = 0;
  v4[9] = 0;
  v4[10] = 0;
  v4[11] = 0;
  v5 = sub_26B078580();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = v3;
  v4[19] = sub_26B07A130();
  v4[20] = sub_26B07A120();
  v11 = sub_26B07A0C0();
  v4[21] = v11;
  v4[22] = v6;

  return MEMORY[0x2822009F8](sub_26AF3536C, v11, v6);
}

uint64_t sub_26AF3536C()
{
  v47 = v0;
  v40 = MEMORY[0x277D85700];
  *(v0 + 40) = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 184) = Strong;
  swift_endAccess();
  if (Strong)
  {
    v37 = v39[13];
    v39[10] = Strong;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v1 = [v37 descriptor];
    v38 = v1;
    v39[24] = v1;
    if (v1)
    {
      v31 = v39[14];
      v32 = v39[13];
      v39[11] = v1;
      swift_unknownObjectRelease();
      v36 = sub_26B07A120();
      v39[25] = v36;
      v33 = sub_26B079D00("statefulUIManager(_:requestPurgeConfirmationOfActiveDownload:toSwitchSelectedBetaProgram:)", 90, 1);
      v34 = v2;
      v39[26] = v2;
      MEMORY[0x277D82BE0](v31);

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v35 = swift_task_alloc();
      v39[27] = v35;
      v35[2] = v31;
      v35[3] = Strong;
      v35[4] = v38;
      v35[5] = v32;
      v3 = swift_task_alloc();
      v39[28] = v3;
      v4 = type metadata accessor for SUUIUserInteractionResponse(0);
      *v3 = v39[5];
      v3[1] = sub_26AF3604C;

      return MEMORY[0x2822007B8](v39 + 12, v36, v40, v33, v34, sub_26AF3F848, v35, v4);
    }

    v17 = v39[15];
    swift_unknownObjectRelease();
    sub_26B078540();
    MEMORY[0x277D82BE0](v17);
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    oslog = sub_26B078570();
    v30 = sub_26B07A2C0();
    v22 = swift_allocObject();
    *(v22 + 16) = 32;
    v23 = swift_allocObject();
    *(v23 + 16) = 8;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_26AF3F5F4;
    *(v19 + 24) = v18;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_26AF3F6A4;
    *(v20 + 24) = v19;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_26AF3F6F0;
    *(v24 + 24) = v20;
    v25 = swift_allocObject();
    *(v25 + 16) = 32;
    v26 = swift_allocObject();
    *(v26 + 16) = 8;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_26AF364E0;
    *(v21 + 24) = 0;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_26AF3F7F0;
    *(v27 + 24) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
    sub_26B07A760();
    v28 = v5;

    *v28 = sub_26AF3F628;
    v28[1] = v22;

    v28[2] = sub_26AF3F65C;
    v28[3] = v23;

    v28[4] = sub_26AF3F73C;
    v28[5] = v24;

    v28[6] = sub_26AF3F774;
    v28[7] = v25;

    v28[8] = sub_26AF3F7A8;
    v28[9] = v26;

    v28[10] = sub_26AF3F83C;
    v28[11] = v27;
    sub_26AEA3B2C();

    if (os_log_type_enabled(oslog, v30))
    {
      buf = sub_26B07A420();
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
      v15 = sub_26AEA3B70(0, v13, v13);
      v16 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
      v42 = buf;
      v43 = v15;
      v44 = v16;
      sub_26AEA3BC4(2, &v42);
      sub_26AEA3BC4(2, &v42);
      v45 = sub_26AF3F628;
      v46 = v22;
      sub_26AEA3BD8(&v45, &v42, &v43, &v44);
      v45 = sub_26AF3F65C;
      v46 = v23;
      sub_26AEA3BD8(&v45, &v42, &v43, &v44);
      v45 = sub_26AF3F73C;
      v46 = v24;
      sub_26AEA3BD8(&v45, &v42, &v43, &v44);
      v45 = sub_26AF3F774;
      v46 = v25;
      sub_26AEA3BD8(&v45, &v42, &v43, &v44);
      v45 = sub_26AF3F7A8;
      v46 = v26;
      sub_26AEA3BD8(&v45, &v42, &v43, &v44);
      v45 = sub_26AF3F83C;
      v46 = v27;
      sub_26AEA3BD8(&v45, &v42, &v43, &v44);
      _os_log_impl(&dword_26AE88000, oslog, v30, "%s.%s: Invalid state - SUUIDownload.descriptor is nil", buf, 0x16u);
      sub_26AEA3C24(v15, 0, v13);
      sub_26AEA3C24(v16, 2, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();
    }

    else
    {
    }

    v11 = v39[18];
    v12 = v39[16];
    v10 = v39[17];
    v6 = MEMORY[0x277D82BD8](oslog);
    (*(v10 + 8))(v11, v12, v6);
  }

  else
  {
    v9 = v39[15];
    MEMORY[0x277D82BE0](v9);
    *(swift_task_alloc() + 16) = v9;
    sub_26B07A630();

    MEMORY[0x277D82BD8](v9);
  }

  v7 = *(v39[5] + 8);

  return v7(1);
}

uint64_t sub_26AF3604C()
{
  v5 = *v0;
  v4 = *(*v0 + 112);
  *(*v0 + 40) = *v0;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v1 = *(v5 + 176);
  v2 = *(v5 + 168);

  return MEMORY[0x2822009F8](sub_26AF3626C, v2, v1);
}

uint64_t sub_26AF3626C()
{
  *(v0 + 40) = v0;
  v3 = *(v0 + 96);
  swift_unknownObjectRelease();

  v1 = *(*(v0 + 40) + 8);

  return v1(v3);
}

uint64_t sub_26AF36360(uint64_t a1)
{
  v9[0] = sub_26B07A740();
  v9[1] = v1;
  v2 = sub_26B079D00("", 0, 1);
  MEMORY[0x26D66D910](v2);

  ObjectType = swift_getObjectType();
  sub_26AF02FEC(ObjectType);
  v4 = sub_26B079D00(".", 1, 1);
  MEMORY[0x26D66D910](v4);

  v8[0] = sub_26B079D00("statefulUIManager(_:requestPurgeConfirmationOfActiveDownload:toSwitchSelectedBetaProgram:)", 90, 1);
  v8[1] = v5;
  sub_26B07A720();
  sub_26AE9BCC0(v8);
  v6 = sub_26B079D00(": We have have encountered invalid UI state - could not find ReactiveManager (better to crash and force reset Settings app).", 124, 1);
  MEMORY[0x26D66D910](v6);

  sub_26B078640();
  sub_26AEB9F6C(v9);
  return sub_26B079EB0();
}

uint64_t sub_26AF36510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a1;
  v20 = a2;
  v18 = a3;
  *&v19 = a4;
  *(&v19 + 1) = a5;
  v31 = 0;
  v32 = sub_26AF36824;
  v17 = sub_26AF41530;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v38 = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8);
  v24 = *(v22 - 8);
  v23 = v22 - 8;
  v25 = v24;
  v26 = *(v24 + 64);
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21);
  v28 = &v12 - v27;
  v45 = v5;
  v44 = v6;
  v43 = v7;
  v42 = v8;
  v41 = v9;
  v39 = v6;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD010, &unk_26B08BAB0);
  v10 = type metadata accessor for ReactiveBetaProgram();
  sub_26AF36890(v32, v31, v29, MEMORY[0x277D84A98], v10, v30, &v40);
  v16 = v40;
  v38 = v40;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v13 = v25;
  (*(v24 + 16))(v28, v21, v22);
  v14 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v15 = swift_allocObject();
  (*(v24 + 32))(v15 + v14, v28, v22);
  v33 = v19;
  v34 = v16;
  v35 = v17;
  v36 = v15;
  v37 = 5;
  ReactiveUIManager.presentedDialog.setter(&v33);
}

uint64_t sub_26AF36824@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for ReactiveBetaProgram();
  MEMORY[0x277D82BE0](v3);
  result = ReactiveBetaProgram.__allocating_init(representing:)(v3);
  *a2 = result;
  return result;
}

uint64_t sub_26AF36890@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v18 = a7;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v25 = a6;
  v39 = a4;
  v38 = a5;
  v26 = *(a4 - 8);
  v27 = a4 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  v29 = v17 - v28;
  v35 = *(v8 + 16);
  v37 = v35;
  v33 = *(v35 - 8);
  v34 = v35 - 8;
  v30 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v31 = v17 - v30;
  v32 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v36 = v17 - v32;
  sub_26AF41938(v12, v17 - v32, v13, v14);
  if ((*(v33 + 48))(v36, 1, v35) == 1)
  {
    result = (*(*(v23 - 8) + 56))(v18, 1);
    v17[1] = v24;
  }

  else
  {
    (*(v33 + 32))(v31, v36, v35);
    v16 = v24;
    v19(v31, v29);
    v17[0] = v16;
    (*(v33 + 8))(v31, v35);
    if (v16)
    {
      return (*(v26 + 32))(v25, v29, v22);
    }

    else
    {
      (*(*(v23 - 8) + 56))(v18, 0, 1);
      return v17[0];
    }
  }

  return result;
}

uint64_t sub_26AF36BCC(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v18 = a2;
  v28 = &unk_26B08BAC8;
  v34 = 0;
  v33 = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8);
  v21 = *(v25 - 8);
  v22 = v25 - 8;
  v19 = v21;
  v20 = *(v21 + 64);
  v16 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v24 = &v15 - v16;
  v17 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00, &qword_26B087700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30);
  v31 = &v15 - v17;
  v34 = v2;
  v33 = v3;
  sub_26B07A140();
  v27 = 0;
  v4 = sub_26B07A160();
  (*(*(v4 - 8) + 56))(v31, 0, 1);
  (*(v21 + 16))(v24, v18, v25);
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v26 = (v23 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_allocObject();
  v6 = v21;
  v7 = v23;
  v8 = v24;
  v9 = v25;
  v29 = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  (*(v6 + 32))(v5 + v7, v8, v9);
  v10 = v27;
  v11 = v28;
  v12 = v29;
  v13 = v31;
  *(v29 + v26) = v30;
  v32 = sub_26AF449A0(v10, v10, v13, v11, v12, MEMORY[0x277D84F78] + 8);
  sub_26AEA08A4(v31);
}

uint64_t sub_26AF36E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a5;
  v5[6] = a4;
  v5[2] = v5;
  v5[3] = 0;
  v5[4] = 0;
  v5[3] = a4;
  v5[4] = a5;
  return MEMORY[0x2822009F8](sub_26AF36EBC, 0, 0);
}

uint64_t sub_26AF36EBC()
{
  v1 = v0[7];
  v0[2] = v0;
  v0[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8);
  sub_26B07A0E0();
  v2 = *(v0[2] + 8);

  return v2();
}

uint64_t sub_26AF37058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a5;
  v5[6] = a4;
  v5[5] = a3;
  v5[4] = a2;
  v5[3] = a1;
  v5[2] = v5;
  sub_26B07A130();
  v5[8] = sub_26B07A120();
  v8 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26AF3710C, v8, v6);
}

uint64_t sub_26AF3710C()
{
  v9 = v0[7];
  aBlock = v0[6];
  v7 = v0[5];
  v1 = v0[3];
  v0[2] = v0;
  MEMORY[0x277D82BE0](v1);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](v7);
  v0[9] = _Block_copy(aBlock);
  MEMORY[0x277D82BE0](v9);
  v2 = swift_task_alloc();
  v10[10] = v2;
  *v2 = v10[2];
  v2[1] = sub_26AF3722C;
  v3 = v10[5];
  v4 = v10[4];
  v5 = v10[3];

  return StatefulUIDelegateHandler.statefulUIManager(_:requestPurgeConfirmationOfActiveDownload:toSwitchSelectedBetaProgram:)(v5, v4, v3);
}

uint64_t sub_26AF3722C(uint64_t a1)
{
  v9 = *v1;
  v8 = *(*v1 + 72);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  *(v9 + 16) = *v1;

  swift_unknownObjectRelease();
  v8[2](v8, a1);
  _Block_release(v8);

  v2 = *(*(v9 + 16) + 8);

  return v2();
}

double StatefulUIDelegateHandler.statefulUIManager(_:didTransitionFrom:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v94 = a1;
  v101 = a2;
  v105 = a3;
  v102 = sub_26AF3FB7C;
  v106 = sub_26AF3FC4C;
  v108 = sub_26AF3FB48;
  v110 = sub_26AF3FD98;
  v112 = sub_26AF3FDE4;
  v114 = sub_26AF38898;
  v115 = sub_26AF3FEE4;
  v117 = sub_26AF3FBC4;
  v119 = sub_26AF3FFE4;
  v124 = sub_26AF3FC94;
  v128 = sub_26AF400E4;
  v130 = sub_26AF3FD1C;
  v132 = sub_26AF3FD50;
  v134 = sub_26AF3FE30;
  v136 = sub_26AF3FE68;
  v138 = sub_26AF3FE9C;
  v140 = sub_26AF3FF30;
  v142 = sub_26AF3FF68;
  v144 = sub_26AF3FF9C;
  v146 = sub_26AF40030;
  v148 = sub_26AF40068;
  v150 = sub_26AF4009C;
  v153 = sub_26AF40130;
  v81 = sub_26AF401E8;
  v174 = 0;
  v173 = 0;
  v172 = 0;
  v171 = 0;
  v82 = 0;
  v88 = 0;
  v83 = sub_26B079BE0();
  v84 = *(v83 - 8);
  v85 = v83 - 8;
  v86 = (*(v84 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v87 = &v59 - v86;
  v89 = sub_26B079C00();
  v90 = *(v89 - 8);
  v91 = v89 - 8;
  v92 = (*(v90 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v88);
  v93 = &v59 - v92;
  v95 = sub_26B078580();
  v96 = *(v95 - 8);
  v97 = v95 - 8;
  v98 = (*(v96 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v94);
  v99 = &v59 - v98;
  v174 = v3;
  v173 = v4;
  v172 = v5;
  v171 = v6;
  sub_26B078540();
  MEMORY[0x277D82BE0](v100);
  v104 = 24;
  v126 = 7;
  v109 = swift_allocObject();
  *(v109 + 16) = v100;
  v103 = swift_allocObject();
  *(v103 + 16) = v101;

  v125 = 32;
  v7 = swift_allocObject();
  v8 = v103;
  v118 = v7;
  *(v7 + 16) = v102;
  *(v7 + 24) = v8;

  v107 = swift_allocObject();
  *(v107 + 16) = v105;

  v9 = swift_allocObject();
  v10 = v107;
  v127 = v9;
  *(v9 + 16) = v106;
  *(v9 + 24) = v10;

  v157 = sub_26B078570();
  v158 = sub_26B07A2A0();
  v122 = 17;
  v131 = swift_allocObject();
  v121 = 32;
  *(v131 + 16) = 32;
  v133 = swift_allocObject();
  v123 = 8;
  *(v133 + 16) = 8;
  v11 = swift_allocObject();
  v12 = v109;
  v111 = v11;
  *(v11 + 16) = v108;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v111;
  v113 = v13;
  *(v13 + 16) = v110;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v113;
  v135 = v15;
  *(v15 + 16) = v112;
  *(v15 + 24) = v16;
  v137 = swift_allocObject();
  *(v137 + 16) = v121;
  v139 = swift_allocObject();
  *(v139 + 16) = v123;
  v17 = swift_allocObject();
  v116 = v17;
  *(v17 + 16) = v114;
  *(v17 + 24) = 0;
  v18 = swift_allocObject();
  v19 = v116;
  v141 = v18;
  *(v18 + 16) = v115;
  *(v18 + 24) = v19;
  v143 = swift_allocObject();
  *(v143 + 16) = v121;
  v145 = swift_allocObject();
  *(v145 + 16) = v123;
  v20 = swift_allocObject();
  v21 = v118;
  v120 = v20;
  *(v20 + 16) = v117;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  v23 = v120;
  v147 = v22;
  *(v22 + 16) = v119;
  *(v22 + 24) = v23;
  v149 = swift_allocObject();
  *(v149 + 16) = v121;
  v151 = swift_allocObject();
  *(v151 + 16) = v123;
  v24 = swift_allocObject();
  v25 = v127;
  v129 = v24;
  *(v24 + 16) = v124;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v129;
  v154 = v26;
  *(v26 + 16) = v128;
  *(v26 + 24) = v27;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v152 = sub_26B07A760();
  v155 = v28;

  v29 = v131;
  v30 = v155;
  *v155 = v130;
  v30[1] = v29;

  v31 = v133;
  v32 = v155;
  v155[2] = v132;
  v32[3] = v31;

  v33 = v135;
  v34 = v155;
  v155[4] = v134;
  v34[5] = v33;

  v35 = v137;
  v36 = v155;
  v155[6] = v136;
  v36[7] = v35;

  v37 = v139;
  v38 = v155;
  v155[8] = v138;
  v38[9] = v37;

  v39 = v141;
  v40 = v155;
  v155[10] = v140;
  v40[11] = v39;

  v41 = v143;
  v42 = v155;
  v155[12] = v142;
  v42[13] = v41;

  v43 = v145;
  v44 = v155;
  v155[14] = v144;
  v44[15] = v43;

  v45 = v147;
  v46 = v155;
  v155[16] = v146;
  v46[17] = v45;

  v47 = v149;
  v48 = v155;
  v155[18] = v148;
  v48[19] = v47;

  v49 = v151;
  v50 = v155;
  v155[20] = v150;
  v50[21] = v49;

  v51 = v154;
  v52 = v155;
  v155[22] = v153;
  v52[23] = v51;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v157, v158))
  {
    v53 = v82;
    v74 = sub_26B07A420();
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v75 = sub_26AEA3B70(0, v73, v73);
    v76 = sub_26AEA3B70(4, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v77 = &v163;
    v163 = v74;
    v78 = &v162;
    v162 = v75;
    v79 = &v161;
    v161 = v76;
    sub_26AEA3BC4(2, &v163);
    sub_26AEA3BC4(4, v77);
    v159 = v130;
    v160 = v131;
    sub_26AEA3BD8(&v159, v77, v78, v79);
    v80 = v53;
    if (v53)
    {

      __break(1u);
    }

    else
    {
      v159 = v132;
      v160 = v133;
      sub_26AEA3BD8(&v159, &v163, &v162, &v161);
      v72 = 0;
      v159 = v134;
      v160 = v135;
      sub_26AEA3BD8(&v159, &v163, &v162, &v161);
      v71 = 0;
      v159 = v136;
      v160 = v137;
      sub_26AEA3BD8(&v159, &v163, &v162, &v161);
      v70 = 0;
      v159 = v138;
      v160 = v139;
      sub_26AEA3BD8(&v159, &v163, &v162, &v161);
      v69 = 0;
      v159 = v140;
      v160 = v141;
      sub_26AEA3BD8(&v159, &v163, &v162, &v161);
      v68 = 0;
      v159 = v142;
      v160 = v143;
      sub_26AEA3BD8(&v159, &v163, &v162, &v161);
      v67 = 0;
      v159 = v144;
      v160 = v145;
      sub_26AEA3BD8(&v159, &v163, &v162, &v161);
      v66 = 0;
      v159 = v146;
      v160 = v147;
      sub_26AEA3BD8(&v159, &v163, &v162, &v161);
      v65 = 0;
      v159 = v148;
      v160 = v149;
      sub_26AEA3BD8(&v159, &v163, &v162, &v161);
      v64 = 0;
      v159 = v150;
      v160 = v151;
      sub_26AEA3BD8(&v159, &v163, &v162, &v161);
      v63 = 0;
      v159 = v153;
      v160 = v154;
      sub_26AEA3BD8(&v159, &v163, &v162, &v161);
      _os_log_impl(&dword_26AE88000, v157, v158, "%s.%s: ReactiveUI received UI transitioned from %s to %s", v74, 0x2Au);
      sub_26AEA3C24(v75, 0, v73);
      sub_26AEA3C24(v76, 4, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();
    }
  }

  else
  {
  }

  v54 = MEMORY[0x277D82BD8](v157);
  (*(v96 + 8))(v99, v95, v54);
  v60 = 0;
  sub_26AF4013C();
  v62 = sub_26B07A2E0();
  MEMORY[0x277D82BE0](v100);
  v55 = swift_allocObject();
  v56 = v105;
  v57 = v81;
  *(v55 + 16) = v100;
  *(v55 + 24) = v56;
  v169 = v57;
  v170 = v55;
  aBlock = MEMORY[0x277D85DD0];
  v165 = 1107296256;
  v166 = 0;
  v167 = sub_26AF38B10;
  v168 = &block_descriptor_1;
  v61 = _Block_copy(&aBlock);
  sub_26AF38B60();
  sub_26AF38B78();
  MEMORY[0x26D66D4D0](v60, v93, v87, v61);
  (*(v84 + 8))(v87, v83);
  (*(v90 + 8))(v93, v89);
  _Block_release(v61);

  *&result = MEMORY[0x277D82BD8](v62).n128_u64[0];
  return result;
}

uint64_t sub_26AF388D8(uint64_t a1, uint64_t a2)
{
  v3[5] = a1;
  v3[4] = a2;
  swift_beginAccess();
  v3[0] = swift_weakLoadStrong();
  if (v3[0])
  {

    sub_26AEECDD4(v3);
    swift_endAccess();

    sub_26B0788D0();
  }

  else
  {
    sub_26AEECDD4(v3);
    swift_endAccess();
  }

  return sub_26AF389D4();
}

uint64_t sub_26AF389D4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  if (!Strong)
  {
    return sub_26B07A630();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCF10, qword_26B08BA48);
  sub_26AF40258();
  sub_26B0788F0();
}

uint64_t sub_26AF38B10(uint64_t a1)
{
  v3 = *(a1 + 32);

  v3(v1);
}

uint64_t sub_26AF38B78()
{
  sub_26AF3E0B0(0);
  sub_26B079BE0();
  sub_26AF41350();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DCFF8, &qword_26B08BAA0);
  sub_26AF413D0();
  return sub_26B07A540();
}

double StatefulUIDelegateHandler.statefulUIManager(_:descriptor:didTransitionFrom:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v111 = a1;
  v118 = a2;
  v119 = a3;
  v123 = a4;
  v120 = sub_26AF403AC;
  v124 = sub_26AF404FC;
  v126 = sub_26AF40328;
  v128 = sub_26AF40648;
  v130 = sub_26AF40694;
  v132 = sub_26AF3A4D8;
  v133 = sub_26AF40794;
  v135 = sub_26AF40378;
  v137 = sub_26AF40894;
  v139 = sub_26AF403F4;
  v141 = sub_26AF40994;
  v146 = sub_26AF40544;
  v150 = sub_26AF40A94;
  v152 = sub_26AF405CC;
  v154 = sub_26AF40600;
  v156 = sub_26AF406E0;
  v158 = sub_26AF40718;
  v160 = sub_26AF4074C;
  v162 = sub_26AF407E0;
  v164 = sub_26AF40818;
  v166 = sub_26AF4084C;
  v168 = sub_26AF408E0;
  v170 = sub_26AF40918;
  v172 = sub_26AF4094C;
  v174 = sub_26AF409E0;
  v176 = sub_26AF40A18;
  v178 = sub_26AF40A4C;
  v181 = sub_26AF40AE0;
  v98 = sub_26AF40B44;
  v203 = 0;
  v202 = 0;
  v201 = 0;
  v200 = 0;
  v199 = 0;
  v99 = 0;
  v105 = 0;
  v100 = sub_26B079BE0();
  v101 = *(v100 - 8);
  v102 = v100 - 8;
  v103 = (*(v101 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v104 = &v74 - v103;
  v106 = sub_26B079C00();
  v107 = *(v106 - 8);
  v108 = v106 - 8;
  v109 = (*(v107 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v105);
  v110 = &v74 - v109;
  v112 = sub_26B078580();
  v113 = *(v112 - 8);
  v114 = v112 - 8;
  v115 = (*(v113 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v111);
  v116 = &v74 - v115;
  v203 = v4;
  v202 = v5;
  v201 = v6;
  v200 = v7;
  v199 = v8;
  sub_26B078540();
  MEMORY[0x277D82BE0](v117);
  v122 = 24;
  v148 = 7;
  v9 = swift_allocObject();
  v10 = v118;
  v127 = v9;
  *(v9 + 16) = v117;
  MEMORY[0x277D82BE0](v10);
  v136 = swift_allocObject();
  *(v136 + 16) = v118;
  v121 = swift_allocObject();
  *(v121 + 16) = v119;

  v147 = 32;
  v11 = swift_allocObject();
  v12 = v121;
  v140 = v11;
  *(v11 + 16) = v120;
  *(v11 + 24) = v12;

  v125 = swift_allocObject();
  *(v125 + 16) = v123;

  v13 = swift_allocObject();
  v14 = v125;
  v149 = v13;
  *(v13 + 16) = v124;
  *(v13 + 24) = v14;

  v185 = sub_26B078570();
  v186 = sub_26B07A2A0();
  v144 = 17;
  v153 = swift_allocObject();
  v143 = 32;
  *(v153 + 16) = 32;
  v155 = swift_allocObject();
  v145 = 8;
  *(v155 + 16) = 8;
  v15 = swift_allocObject();
  v16 = v127;
  v129 = v15;
  *(v15 + 16) = v126;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v129;
  v131 = v17;
  *(v17 + 16) = v128;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v131;
  v157 = v19;
  *(v19 + 16) = v130;
  *(v19 + 24) = v20;
  v159 = swift_allocObject();
  *(v159 + 16) = v143;
  v161 = swift_allocObject();
  *(v161 + 16) = v145;
  v21 = swift_allocObject();
  v134 = v21;
  *(v21 + 16) = v132;
  *(v21 + 24) = 0;
  v22 = swift_allocObject();
  v23 = v134;
  v163 = v22;
  *(v22 + 16) = v133;
  *(v22 + 24) = v23;
  v165 = swift_allocObject();
  *(v165 + 16) = v143;
  v167 = swift_allocObject();
  *(v167 + 16) = v145;
  v24 = swift_allocObject();
  v25 = v136;
  v138 = v24;
  *(v24 + 16) = v135;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v138;
  v169 = v26;
  *(v26 + 16) = v137;
  *(v26 + 24) = v27;
  v171 = swift_allocObject();
  *(v171 + 16) = v143;
  v173 = swift_allocObject();
  *(v173 + 16) = v145;
  v28 = swift_allocObject();
  v29 = v140;
  v142 = v28;
  *(v28 + 16) = v139;
  *(v28 + 24) = v29;
  v30 = swift_allocObject();
  v31 = v142;
  v175 = v30;
  *(v30 + 16) = v141;
  *(v30 + 24) = v31;
  v177 = swift_allocObject();
  *(v177 + 16) = v143;
  v179 = swift_allocObject();
  *(v179 + 16) = v145;
  v32 = swift_allocObject();
  v33 = v149;
  v151 = v32;
  *(v32 + 16) = v146;
  *(v32 + 24) = v33;
  v34 = swift_allocObject();
  v35 = v151;
  v182 = v34;
  *(v34 + 16) = v150;
  *(v34 + 24) = v35;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v180 = sub_26B07A760();
  v183 = v36;

  v37 = v153;
  v38 = v183;
  *v183 = v152;
  v38[1] = v37;

  v39 = v155;
  v40 = v183;
  v183[2] = v154;
  v40[3] = v39;

  v41 = v157;
  v42 = v183;
  v183[4] = v156;
  v42[5] = v41;

  v43 = v159;
  v44 = v183;
  v183[6] = v158;
  v44[7] = v43;

  v45 = v161;
  v46 = v183;
  v183[8] = v160;
  v46[9] = v45;

  v47 = v163;
  v48 = v183;
  v183[10] = v162;
  v48[11] = v47;

  v49 = v165;
  v50 = v183;
  v183[12] = v164;
  v50[13] = v49;

  v51 = v167;
  v52 = v183;
  v183[14] = v166;
  v52[15] = v51;

  v53 = v169;
  v54 = v183;
  v183[16] = v168;
  v54[17] = v53;

  v55 = v171;
  v56 = v183;
  v183[18] = v170;
  v56[19] = v55;

  v57 = v173;
  v58 = v183;
  v183[20] = v172;
  v58[21] = v57;

  v59 = v175;
  v60 = v183;
  v183[22] = v174;
  v60[23] = v59;

  v61 = v177;
  v62 = v183;
  v183[24] = v176;
  v62[25] = v61;

  v63 = v179;
  v64 = v183;
  v183[26] = v178;
  v64[27] = v63;

  v65 = v182;
  v66 = v183;
  v183[28] = v181;
  v66[29] = v65;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v185, v186))
  {
    v67 = v99;
    v91 = sub_26B07A420();
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v92 = sub_26AEA3B70(0, v90, v90);
    v93 = sub_26AEA3B70(5, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v94 = &v191;
    v191 = v91;
    v95 = &v190;
    v190 = v92;
    v96 = &v189;
    v189 = v93;
    sub_26AEA3BC4(2, &v191);
    sub_26AEA3BC4(5, v94);
    v187 = v152;
    v188 = v153;
    sub_26AEA3BD8(&v187, v94, v95, v96);
    v97 = v67;
    if (v67)
    {

      __break(1u);
    }

    else
    {
      v187 = v154;
      v188 = v155;
      sub_26AEA3BD8(&v187, &v191, &v190, &v189);
      v89 = 0;
      v187 = v156;
      v188 = v157;
      sub_26AEA3BD8(&v187, &v191, &v190, &v189);
      v88 = 0;
      v187 = v158;
      v188 = v159;
      sub_26AEA3BD8(&v187, &v191, &v190, &v189);
      v87 = 0;
      v187 = v160;
      v188 = v161;
      sub_26AEA3BD8(&v187, &v191, &v190, &v189);
      v86 = 0;
      v187 = v162;
      v188 = v163;
      sub_26AEA3BD8(&v187, &v191, &v190, &v189);
      v85 = 0;
      v187 = v164;
      v188 = v165;
      sub_26AEA3BD8(&v187, &v191, &v190, &v189);
      v84 = 0;
      v187 = v166;
      v188 = v167;
      sub_26AEA3BD8(&v187, &v191, &v190, &v189);
      v83 = 0;
      v187 = v168;
      v188 = v169;
      sub_26AEA3BD8(&v187, &v191, &v190, &v189);
      v82 = 0;
      v187 = v170;
      v188 = v171;
      sub_26AEA3BD8(&v187, &v191, &v190, &v189);
      v81 = 0;
      v187 = v172;
      v188 = v173;
      sub_26AEA3BD8(&v187, &v191, &v190, &v189);
      v80 = 0;
      v187 = v174;
      v188 = v175;
      sub_26AEA3BD8(&v187, &v191, &v190, &v189);
      v79 = 0;
      v187 = v176;
      v188 = v177;
      sub_26AEA3BD8(&v187, &v191, &v190, &v189);
      v78 = 0;
      v187 = v178;
      v188 = v179;
      sub_26AEA3BD8(&v187, &v191, &v190, &v189);
      v77 = 0;
      v187 = v181;
      v188 = v182;
      sub_26AEA3BD8(&v187, &v191, &v190, &v189);
      _os_log_impl(&dword_26AE88000, v185, v186, "%s.%s: ReactiveUI received UI descriptor %s transitioned from %s to %s", v91, 0x34u);
      sub_26AEA3C24(v92, 0, v90);
      sub_26AEA3C24(v93, 5, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();
    }
  }

  else
  {
  }

  v68 = MEMORY[0x277D82BD8](v185);
  (*(v113 + 8))(v116, v112, v68);
  v74 = 0;
  sub_26AF4013C();
  v76 = sub_26B07A2E0();
  MEMORY[0x277D82BE0](v117);
  MEMORY[0x277D82BE0](v118);
  v69 = swift_allocObject();
  v70 = v118;
  v71 = v123;
  v72 = v98;
  v69[2] = v117;
  v69[3] = v70;
  v69[4] = v71;
  v197 = v72;
  v198 = v69;
  aBlock = MEMORY[0x277D85DD0];
  v193 = 1107296256;
  v194 = 0;
  v195 = sub_26AF38B10;
  v196 = &block_descriptor_357;
  v75 = _Block_copy(&aBlock);
  sub_26AF38B60();
  sub_26AF38B78();
  MEMORY[0x26D66D4D0](v74, v110, v104, v75);
  (*(v101 + 8))(v104, v100);
  (*(v107 + 8))(v110, v106);
  _Block_release(v75);

  *&result = MEMORY[0x277D82BD8](v76).n128_u64[0];
  return result;
}

uint64_t sub_26AF3A508(void *a1)
{
  v2 = [a1 updateName];
  v3 = sub_26B079E00();
  MEMORY[0x277D82BD8](v2);
  return v3;
}

uint64_t sub_26AF3A574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[6] = a1;
  v7[5] = a2;
  v7[4] = a3;
  swift_beginAccess();
  v7[0] = swift_weakLoadStrong();
  if (v7[0])
  {

    sub_26AEECDD4(v7);
    swift_endAccess();

    MEMORY[0x277D82BE0](a2);
    v6[0] = a2;
    v6[1] = a3;
    sub_26B0788D0();
    sub_26AF4131C(v6);
  }

  else
  {
    sub_26AEECDD4(v7);
    swift_endAccess();
  }

  return sub_26AF389D4();
}

double StatefulUIDelegateHandler.statefulUIManagerDidRefreshBetaUpdates(_:)(uint64_t a1)
{
  v60 = a1;
  v67 = sub_26AF40C00;
  v69 = sub_26AF40CB0;
  v71 = sub_26AF40CFC;
  v76 = sub_26AF3B3AC;
  v79 = sub_26AF40DFC;
  v81 = sub_26AF40C34;
  v83 = sub_26AF40C68;
  v85 = sub_26AF40D48;
  v87 = sub_26AF40D80;
  v89 = sub_26AF40DB4;
  v92 = sub_26AF40E48;
  v47 = sub_26AF40E9C;
  v111 = 0;
  v110 = 0;
  v48 = 0;
  v54 = 0;
  v49 = sub_26B079BE0();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v53 = &v30 - v52;
  v55 = sub_26B079C00();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v54);
  v59 = &v30 - v58;
  v61 = sub_26B078580();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60);
  v65 = &v30 - v64;
  v111 = v1;
  v110 = v2;
  sub_26B078540();
  MEMORY[0x277D82BE0](v66);
  v78 = 7;
  v68 = swift_allocObject();
  *(v68 + 16) = v66;
  v96 = sub_26B078570();
  v97 = sub_26B07A2A0();
  v74 = 17;
  v82 = swift_allocObject();
  v73 = 32;
  *(v82 + 16) = 32;
  v84 = swift_allocObject();
  v75 = 8;
  *(v84 + 16) = 8;
  v77 = 32;
  v3 = swift_allocObject();
  v4 = v68;
  v70 = v3;
  *(v3 + 16) = v67;
  *(v3 + 24) = v4;
  v5 = swift_allocObject();
  v6 = v70;
  v72 = v5;
  *(v5 + 16) = v69;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v72;
  v86 = v7;
  *(v7 + 16) = v71;
  *(v7 + 24) = v8;
  v88 = swift_allocObject();
  *(v88 + 16) = v73;
  v90 = swift_allocObject();
  *(v90 + 16) = v75;
  v9 = swift_allocObject();
  v80 = v9;
  *(v9 + 16) = v76;
  *(v9 + 24) = 0;
  v10 = swift_allocObject();
  v11 = v80;
  v93 = v10;
  *(v10 + 16) = v79;
  *(v10 + 24) = v11;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v91 = sub_26B07A760();
  v94 = v12;

  v13 = v82;
  v14 = v94;
  *v94 = v81;
  v14[1] = v13;

  v15 = v84;
  v16 = v94;
  v94[2] = v83;
  v16[3] = v15;

  v17 = v86;
  v18 = v94;
  v94[4] = v85;
  v18[5] = v17;

  v19 = v88;
  v20 = v94;
  v94[6] = v87;
  v20[7] = v19;

  v21 = v90;
  v22 = v94;
  v94[8] = v89;
  v22[9] = v21;

  v23 = v93;
  v24 = v94;
  v94[10] = v92;
  v24[11] = v23;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v96, v97))
  {
    v25 = v48;
    v39 = sub_26B07A420();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v40 = sub_26AEA3B70(0, v38, v38);
    v41 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v43 = &v102;
    v102 = v39;
    v44 = &v101;
    v101 = v40;
    v45 = &v100;
    v100 = v41;
    v42 = 2;
    sub_26AEA3BC4(2, &v102);
    sub_26AEA3BC4(v42, v43);
    v98 = v81;
    v99 = v82;
    sub_26AEA3BD8(&v98, v43, v44, v45);
    v46 = v25;
    if (v25)
    {

      __break(1u);
    }

    else
    {
      v98 = v83;
      v99 = v84;
      sub_26AEA3BD8(&v98, &v102, &v101, &v100);
      v37 = 0;
      v98 = v85;
      v99 = v86;
      sub_26AEA3BD8(&v98, &v102, &v101, &v100);
      v36 = 0;
      v98 = v87;
      v99 = v88;
      sub_26AEA3BD8(&v98, &v102, &v101, &v100);
      v35 = 0;
      v98 = v89;
      v99 = v90;
      sub_26AEA3BD8(&v98, &v102, &v101, &v100);
      v34 = 0;
      v98 = v92;
      v99 = v93;
      sub_26AEA3BD8(&v98, &v102, &v101, &v100);
      _os_log_impl(&dword_26AE88000, v96, v97, "%s.%s: ReactiveUI received Beta Updates UI refresh request", v39, 0x16u);
      sub_26AEA3C24(v40, 0, v38);
      sub_26AEA3C24(v41, 2, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();
    }
  }

  else
  {
  }

  v26 = MEMORY[0x277D82BD8](v96);
  (*(v62 + 8))(v65, v61, v26);
  v31 = 0;
  sub_26AF4013C();
  v33 = sub_26B07A2E0();
  MEMORY[0x277D82BE0](v66);
  v27 = swift_allocObject();
  v28 = v47;
  *(v27 + 16) = v66;
  v108 = v28;
  v109 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v104 = 1107296256;
  v105 = 0;
  v106 = sub_26AF38B10;
  v107 = &block_descriptor_402;
  v32 = _Block_copy(&aBlock);
  sub_26AF38B60();
  sub_26AF38B78();
  MEMORY[0x26D66D4D0](v31, v59, v53, v32);
  (*(v50 + 8))(v53, v49);
  (*(v56 + 8))(v59, v55);
  _Block_release(v32);

  *&result = MEMORY[0x277D82BD8](v33).n128_u64[0];
  return result;
}

double StatefulUIDelegateHandler.statefulUIManagerDidRefreshState(_:)(uint64_t a1)
{
  v60 = a1;
  v67 = sub_26AF40F50;
  v69 = sub_26AF41000;
  v71 = sub_26AF4104C;
  v76 = sub_26AF3C0E8;
  v79 = sub_26AF4114C;
  v81 = sub_26AF40F84;
  v83 = sub_26AF40FB8;
  v85 = sub_26AF41098;
  v87 = sub_26AF410D0;
  v89 = sub_26AF41104;
  v92 = sub_26AF41198;
  v47 = sub_26AF411EC;
  v111 = 0;
  v110 = 0;
  v48 = 0;
  v54 = 0;
  v49 = sub_26B079BE0();
  v50 = *(v49 - 8);
  v51 = v49 - 8;
  v52 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v53 = &v30 - v52;
  v55 = sub_26B079C00();
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v54);
  v59 = &v30 - v58;
  v61 = sub_26B078580();
  v62 = *(v61 - 8);
  v63 = v61 - 8;
  v64 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v60);
  v65 = &v30 - v64;
  v111 = v1;
  v110 = v2;
  sub_26B078540();
  MEMORY[0x277D82BE0](v66);
  v78 = 7;
  v68 = swift_allocObject();
  *(v68 + 16) = v66;
  v96 = sub_26B078570();
  v97 = sub_26B07A2A0();
  v74 = 17;
  v82 = swift_allocObject();
  v73 = 32;
  *(v82 + 16) = 32;
  v84 = swift_allocObject();
  v75 = 8;
  *(v84 + 16) = 8;
  v77 = 32;
  v3 = swift_allocObject();
  v4 = v68;
  v70 = v3;
  *(v3 + 16) = v67;
  *(v3 + 24) = v4;
  v5 = swift_allocObject();
  v6 = v70;
  v72 = v5;
  *(v5 + 16) = v69;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v72;
  v86 = v7;
  *(v7 + 16) = v71;
  *(v7 + 24) = v8;
  v88 = swift_allocObject();
  *(v88 + 16) = v73;
  v90 = swift_allocObject();
  *(v90 + 16) = v75;
  v9 = swift_allocObject();
  v80 = v9;
  *(v9 + 16) = v76;
  *(v9 + 24) = 0;
  v10 = swift_allocObject();
  v11 = v80;
  v93 = v10;
  *(v10 + 16) = v79;
  *(v10 + 24) = v11;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v91 = sub_26B07A760();
  v94 = v12;

  v13 = v82;
  v14 = v94;
  *v94 = v81;
  v14[1] = v13;

  v15 = v84;
  v16 = v94;
  v94[2] = v83;
  v16[3] = v15;

  v17 = v86;
  v18 = v94;
  v94[4] = v85;
  v18[5] = v17;

  v19 = v88;
  v20 = v94;
  v94[6] = v87;
  v20[7] = v19;

  v21 = v90;
  v22 = v94;
  v94[8] = v89;
  v22[9] = v21;

  v23 = v93;
  v24 = v94;
  v94[10] = v92;
  v24[11] = v23;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v96, v97))
  {
    v25 = v48;
    v39 = sub_26B07A420();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v40 = sub_26AEA3B70(0, v38, v38);
    v41 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v43 = &v102;
    v102 = v39;
    v44 = &v101;
    v101 = v40;
    v45 = &v100;
    v100 = v41;
    v42 = 2;
    sub_26AEA3BC4(2, &v102);
    sub_26AEA3BC4(v42, v43);
    v98 = v81;
    v99 = v82;
    sub_26AEA3BD8(&v98, v43, v44, v45);
    v46 = v25;
    if (v25)
    {

      __break(1u);
    }

    else
    {
      v98 = v83;
      v99 = v84;
      sub_26AEA3BD8(&v98, &v102, &v101, &v100);
      v37 = 0;
      v98 = v85;
      v99 = v86;
      sub_26AEA3BD8(&v98, &v102, &v101, &v100);
      v36 = 0;
      v98 = v87;
      v99 = v88;
      sub_26AEA3BD8(&v98, &v102, &v101, &v100);
      v35 = 0;
      v98 = v89;
      v99 = v90;
      sub_26AEA3BD8(&v98, &v102, &v101, &v100);
      v34 = 0;
      v98 = v92;
      v99 = v93;
      sub_26AEA3BD8(&v98, &v102, &v101, &v100);
      _os_log_impl(&dword_26AE88000, v96, v97, "%s.%s: ReactiveUI received UI refresh request", v39, 0x16u);
      sub_26AEA3C24(v40, 0, v38);
      sub_26AEA3C24(v41, 2, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();
    }
  }

  else
  {
  }

  v26 = MEMORY[0x277D82BD8](v96);
  (*(v62 + 8))(v65, v61, v26);
  v31 = 0;
  sub_26AF4013C();
  v33 = sub_26B07A2E0();
  MEMORY[0x277D82BE0](v66);
  v27 = swift_allocObject();
  v28 = v47;
  *(v27 + 16) = v66;
  v108 = v28;
  v109 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v104 = 1107296256;
  v105 = 0;
  v106 = sub_26AF38B10;
  v107 = &block_descriptor_447;
  v32 = _Block_copy(&aBlock);
  sub_26AF38B60();
  sub_26AF38B78();
  MEMORY[0x26D66D4D0](v31, v59, v53, v32);
  (*(v50 + 8))(v53, v49);
  (*(v56 + 8))(v59, v55);
  _Block_release(v32);

  *&result = MEMORY[0x277D82BD8](v33).n128_u64[0];
  return result;
}

id StatefulUIDelegateHandler.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26AF3C378(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  sub_26B07A1F0();
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  sub_26B07A690();
  __break(1u);
LABEL_12:
  result = sub_26B07A650();
  __break(1u);
  return result;
}

uint64_t sub_26AF3C6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        MEMORY[0x28223BE20](v17);
        v15 = sub_26AF412D4;
        v16 = &v37;
        sub_26AF3C378(sub_26AF412F0, &v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      LOBYTE(v13) = 2;
      sub_26B07A650();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    LOBYTE(v13) = 2;
    sub_26B07A650();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        LOBYTE(v13) = 2;
        sub_26B07A650();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            LOBYTE(v13) = 2;
            sub_26B07A650();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    LOBYTE(v13) = 2;
                    sub_26B07A650();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  LOBYTE(v13) = 2;
                  sub_26B07A650();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                LOBYTE(v13) = 2;
                sub_26B07A650();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              LOBYTE(v13) = 2;
              sub_26B07A650();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            LOBYTE(v13) = 2;
            sub_26B07A650();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          LOBYTE(v13) = 2;
          sub_26B07A650();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        LOBYTE(v13) = 2;
        sub_26B07A650();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      LOBYTE(v13) = 2;
      sub_26B07A650();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    LOBYTE(v13) = 2;
    sub_26B07A690();
    __break(1u);
  }

  result = sub_26B07A650();
  __break(1u);
  return result;
}

uint64_t sub_26AF3CED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    sub_26B07A650();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        sub_26B07A650();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            sub_26B07A650();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                sub_26B07A650();
                __break(1u);
              }

              sub_26B07A650();
              __break(1u);
            }

            sub_26B07A650();
            __break(1u);
          }

          sub_26B07A650();
          __break(1u);
        }

        sub_26B07A650();
        __break(1u);
      }

      sub_26B07A650();
      __break(1u);
    }

    sub_26B07A650();
    __break(1u);
  }

  result = sub_26B07A650();
  __break(1u);
  return result;
}

uint64_t sub_26AF3D3E8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v7 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_26AF3D4F4;

  return v7();
}

uint64_t sub_26AF3D4F4()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AF3D61C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v8 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_26AF3D728;

  return v8();
}

uint64_t sub_26AF3D728()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AF3D850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a1;
  v46 = a2;
  v54 = a3;
  v47 = a4;
  v48 = a5;
  v49 = &unk_26B08BB38;
  v50 = "Fatal error";
  v51 = "Unexpectedly found nil while unwrapping an Optional value";
  v52 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v53 = &unk_26B08BB30;
  v55 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00, &qword_26B087700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v54);
  v56 = v16 - v55;
  sub_26AED6580(v5, v16 - v55);
  v57 = sub_26B07A160();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  if ((*(v58 + 48))(v56, 1) == 1)
  {
    sub_26AEA08A4(v56);
    v44 = 0;
  }

  else
  {
    v43 = sub_26B07A150();
    (*(v58 + 8))(v56, v57);
    v44 = v43;
  }

  v40 = v44 | 0x1C00;
  v42 = *(v48 + 16);
  v41 = *(v48 + 24);
  swift_unknownObjectRetain();
  if (v42)
  {
    v38 = v42;
    v39 = v41;
    v32 = v41;
    v33 = v42;
    swift_getObjectType();
    v34 = sub_26B07A0C0();
    v35 = v6;
    swift_unknownObjectRelease();
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v30 = v37;
  v31 = v36;
  sub_26B078640();
  if (v46)
  {
    v28 = v45;
    v29 = v46;
    v22 = v46;
    v23 = sub_26B079EA0();

    v24 = v23 + 32;

    v7 = swift_allocObject();
    v8 = v48;
    v9 = v31;
    v10 = v30;
    v25 = v7;
    *(v7 + 16) = v47;
    *(v7 + 24) = v8;
    v26 = 0;
    if (v9 != 0 || v10 != 0)
    {
      v63[0] = 0;
      v63[1] = 0;
      v63[2] = v31;
      v63[3] = v30;
      v26 = v63;
    }

    v60 = 7;
    v61 = v26;
    v62 = v24;
    v21 = swift_task_create();

    v27 = v21;
  }

  else
  {
    v27 = 0;
  }

  v20 = v27;
  if (v27)
  {
    v16[1] = v20;
    v16[0] = v20;
    sub_26AEA08A4(v54);

    return v16[0];
  }

  else
  {

    sub_26AEA08A4(v54);
    v11 = swift_allocObject();
    v12 = v48;
    v13 = v31;
    v14 = v30;
    v18 = v11;
    *(v11 + 16) = v47;
    *(v11 + 24) = v12;
    v19 = 0;
    if (v13 != 0 || v14 != 0)
    {
      v64[0] = 0;
      v64[1] = 0;
      v64[2] = v31;
      v64[3] = v30;
      v19 = v64;
    }

    return swift_task_create();
  }
}

uint64_t sub_26AF3DE70(uint64_t a1, int *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AF3DF84;

  return v6(a1);
}

uint64_t sub_26AF3DF84()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AF3E0B0(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      sub_26B079BE0();
      v1 = sub_26B07A080();
      sub_26B078640();
      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    sub_26B079BE0();
    return v2;
  }

  return result;
}

uint64_t sub_26AF3E3FC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 32));
  MEMORY[0x277D82BD8](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_26AF3E45C()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v8 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_26AF3E554;

  return sub_26AF2F980(v8, v5, v6, v7);
}

uint64_t sub_26AF3E554()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AF3E690()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 32));
  MEMORY[0x277D82BD8](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_26AF3E6F0()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v8 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_26AF3E7E8;

  return sub_26AF30DC8(v8, v5, v6, v7);
}

uint64_t sub_26AF3E7E8()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

unint64_t sub_26AF3ED74()
{
  v2 = qword_2803DCEF8;
  if (!qword_2803DCEF8)
  {
    type metadata accessor for SUUIUserInteractionResponse(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCEF8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF3EDF4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 32));
  MEMORY[0x277D82BD8](*(v0 + 40));
  return swift_deallocObject();
}

uint64_t sub_26AF3EE54()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v8 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_26AF3EF4C;

  return sub_26AF32ACC(v8, v5, v6, v7);
}

uint64_t sub_26AF3EF4C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AF3F08C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 40));
  MEMORY[0x277D82BD8](*(v0 + 48));
  return swift_deallocObject();
}

uint64_t sub_26AF3F0F4()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v9 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_26AF3F1F8;

  return sub_26AF33D3C(v9, v5, v6, v7, v8);
}

uint64_t sub_26AF3F1F8()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AF3F330()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  _Block_release(*(v0 + 24));
  MEMORY[0x277D82BD8](*(v0 + 32));
  return swift_deallocObject();
}

uint64_t sub_26AF3F390()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_26AF3F47C;

  return sub_26AF34E70(v7, v5, v6);
}

uint64_t sub_26AF3F47C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AF3F85C()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](*(v0 + 32));
  _Block_release(*(v0 + 40));
  MEMORY[0x277D82BD8](*(v0 + 48));
  return swift_deallocObject();
}

uint64_t sub_26AF3F8D4()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v9 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_26AF3F9D8;

  return sub_26AF37058(v9, v5, v6, v7, v8);
}

uint64_t sub_26AF3F9D8()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AF3FBC4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for SUUIStatefulUIState(0);
  v1 = sub_26AEB7134();

  return sub_26AEB6A60(v5, v3, v4, v1);
}

uint64_t sub_26AF3FC94()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for SUUIStatefulUIState(0);
  v1 = sub_26AEB7134();

  return sub_26AEB6A60(v5, v3, v4, v1);
}

unint64_t sub_26AF4013C()
{
  v2 = qword_2803DCF08;
  if (!qword_2803DCF08)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DCF08);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_26AF40258()
{
  v2 = qword_2803DCF18;
  if (!qword_2803DCF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCF10, qword_26B08BA48);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCF18);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF403F4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for SUUIStatefulDescriptorState(0);
  v1 = sub_26AF40450();

  return sub_26AEB6A60(v5, v3, v4, v1);
}

unint64_t sub_26AF40450()
{
  v2 = qword_2803DCF20;
  if (!qword_2803DCF20)
  {
    type metadata accessor for SUUIStatefulDescriptorState(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCF20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF40544()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for SUUIStatefulDescriptorState(0);
  v1 = sub_26AF40450();

  return sub_26AEB6A60(v5, v3, v4, v1);
}

uint64_t sub_26AF40AEC()
{
  MEMORY[0x277D82BD8](*(v0 + 16));
  MEMORY[0x277D82BD8](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t block_copy_helper_355(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_400(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_445(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_26AF41350()
{
  v2 = qword_2803DCFF0;
  if (!qword_2803DCFF0)
  {
    sub_26B079BE0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DCFF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF413D0()
{
  v2 = qword_2803DD000;
  if (!qword_2803DD000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCFF8, &qword_26B08BAA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD000);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF41458()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_26AF41530(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_26AF36BCC(a1, v3);
}

uint64_t sub_26AF415B4()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8);
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v4);
  return swift_deallocObject();
}

uint64_t sub_26AF416B8(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8) - 8);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + ((v9 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  *v3 = *(v6 + 16);
  v3[1] = sub_26AF41810;

  return sub_26AF36E70(a1, v7, v8, v1 + v9, v10);
}

uint64_t sub_26AF41810()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

void *sub_26AF41938(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

uint64_t sub_26AF41A48()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_26AF41B20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_26AF34A14(a1, v3);
}

uint64_t sub_26AF41BA4()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8);
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v4);
  return swift_deallocObject();
}

uint64_t sub_26AF41CA8(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8) - 8);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + ((v9 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  *v3 = *(v6 + 16);
  v3[1] = sub_26AF41E00;

  return sub_26AF34CB8(a1, v7, v8, v1 + v9, v10);
}

uint64_t sub_26AF41E00()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AF41F28()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_26AF42000(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_26AF338C0(a1, v3);
}

uint64_t sub_26AF42084()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8);
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v4);
  return swift_deallocObject();
}

uint64_t sub_26AF42188(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8) - 8);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + ((v9 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  *v3 = *(v6 + 16);
  v3[1] = sub_26AF422E0;

  return sub_26AF33B64(a1, v7, v8, v1 + v9, v10);
}

uint64_t sub_26AF422E0()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AF42408()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD020, &qword_26B08BAF0) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_26AF424E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD020, &qword_26B08BAF0);
  v5 = v3 + ((*(*(v4 - 8) + 80) + 16) & ~*(*(v4 - 8) + 80));

  return sub_26AF308BC(a1, a2, a3, v5);
}

uint64_t sub_26AF42574()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD020, &qword_26B08BAF0);
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_26AF426A0(uint64_t a1)
{
  v8 = v2;
  *(v2 + 16) = v2;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD020, &qword_26B08BAF0) - 8);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v3 = (v11 + *(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v12 = *(v1 + v3);
  v4 = (v1 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v4;
  v14 = v4[1];
  v5 = swift_task_alloc();
  *(v8 + 24) = v5;
  *v5 = *(v8 + 16);
  v5[1] = sub_26AF42824;

  return sub_26AF30BB8(a1, v9, v10, v1 + v11, v12, v13, v14);
}

uint64_t sub_26AF42824()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AF4294C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26AF42994()
{
  v4 = v1;
  *(v1 + 16) = v1;
  v7 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_26AF42A8C;

  return sub_26AF3D3E8(v7, v5, v6);
}

uint64_t sub_26AF42A8C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AF42BB4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26AF42BFC(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AF42CFC;

  return sub_26AF3D61C(a1, v6, v7, v8);
}

uint64_t sub_26AF42CFC()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AF42E64(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AF42F4C;

  return sub_26AF3DE70(a1, v6);
}

uint64_t sub_26AF42F4C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AF430B4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AF4319C;

  return sub_26AF3DE70(a1, v6);
}

uint64_t sub_26AF4319C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AF432C4()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_26AF4339C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_26AF2F518(a1, v3);
}

uint64_t sub_26AF43420()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8);
  v2 = *(v4 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v4);
  return swift_deallocObject();
}

uint64_t sub_26AF43524(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDFE0, &qword_26B08BAA8) - 8);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v10 = *(v1 + ((v9 + *(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));
  v3 = swift_task_alloc();
  *(v6 + 24) = v3;
  *v3 = *(v6 + 16);
  v3[1] = sub_26AF4367C;

  return sub_26AF2F7BC(a1, v7, v8, v1 + v9, v10);
}

uint64_t sub_26AF4367C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

SoftwareUpdateUIKit::LoadingContentUnavailableView __swiftcall LoadingContentUnavailableView.init(_:secondaryText:)(Swift::String_optional _, Swift::String_optional secondaryText)
{
  v9 = v2;
  countAndFlagsBits = _.value._countAndFlagsBits;
  object = _.value._object;
  v8 = secondaryText.value._countAndFlagsBits;
  v10 = secondaryText.value._object;
  v12 = 0u;
  v13 = 0u;
  sub_26B078640();
  *&v12 = countAndFlagsBits;
  *(&v12 + 1) = object;
  sub_26B078640();
  *&v13 = v8;
  *(&v13 + 1) = v10;
  sub_26AF43888(&v12, v9);

  v3 = &v12;
  sub_26AF438F0(&v12);
  result.secondaryText.value._object = v6;
  result.secondaryText.value._countAndFlagsBits = v5;
  result.text.value._object = v4;
  result.text.value._countAndFlagsBits = v3;
  return result;
}

void *sub_26AF43888(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  sub_26B078640();
  a2[1] = v4;
  a2[2] = a1[2];
  v6 = a1[3];
  sub_26B078640();
  result = a2;
  a2[3] = v6;
  return result;
}

unint64_t static ContentUnavailableView<>.loading(_:secondaryText:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  secondaryText.value._countAndFlagsBits = a3;
  secondaryText.value._object = a4;
  sub_26B078640();
  sub_26B078640();
  v4.value._countAndFlagsBits = a1;
  v4.value._object = a2;
  return LoadingContentUnavailableView.init(_:secondaryText:)(v4, secondaryText);
}

unint64_t static ContentUnavailableView<>.loading(_:secondaryText:)@<X0>(const void *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v31 = a1;
  v26 = a2;
  v23 = "Fatal error";
  v24 = "Unexpectedly found nil while unwrapping an Optional value";
  v25 = "SoftwareUpdateUIKit/LoadingContentUnavailableView.swift";
  v36 = 0;
  v35 = 0;
  v27 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD030, &qword_26B08BB50) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v31);
  v28 = &v14 - v27;
  v29 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4);
  v30 = &v14 - v29;
  v36 = v5;
  v35 = v6;
  v32 = sub_26B078120();
  v7 = *(v32 - 8);
  v33 = *(v7 + 48);
  v34 = v7 + 48;
  if ((v33)(v31, 1) != 1)
  {
    sub_26AF43D08(v31, v30, v8);
    if (v33(v30, 1, v32) == 1)
    {
      sub_26B07A650();
      __break(1u);
    }

    v19 = sub_26B079E50();
    v20 = v9;
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  v17 = v20;
  v18 = v19;
  if ((v33)(v26, 1, v32) != 1)
  {
    sub_26AF43D08(v26, v28, v10);
    if (v33(v28, 1, v32) == 1)
    {
      sub_26B07A650();
      __break(1u);
    }

    v15.value._countAndFlagsBits = sub_26B079E50();
    v15.value._object = v11;
  }

  else
  {
    v15.value._countAndFlagsBits = 0;
    v15.value._object = 0;
  }

  v12.value._object = v17;
  v12.value._countAndFlagsBits = v18;
  return LoadingContentUnavailableView.init(_:secondaryText:)(v12, v15);
}

void *sub_26AF43D08(const void *a1, void *a2, double a3)
{
  v7 = sub_26B078120();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD030, &qword_26B08BB50);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(a2, a1, v7);
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  return a2;
}

uint64_t sub_26AF43E30()
{
  v2 = *v0;
  sub_26B078640();
  return v2;
}

uint64_t sub_26AF43E70()
{
  v2 = *(v0 + 16);
  sub_26B078640();
  return v2;
}

void *LoadingContentUnavailableView.makeUIView(context:)(uint64_t a1)
{
  v9 = a1;
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  v13 = 0;
  v4 = 0;
  v5 = (*(*(sub_26B0785C0() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v6 = &v4 - v5;
  v16 = v2;
  v7 = *v1;
  v8 = v1[1];
  v14 = v7;
  v15 = v8;
  sub_26AF43FD8();
  sub_26B0785B0();
  v10 = sub_26B07A360();
  v13 = v10;
  v11 = v7;
  v12 = v8;
  LoadingContentUnavailableView.updateUIView(_:context:)(v10, v9);
  return v10;
}

unint64_t sub_26AF43FD8()
{
  v2 = qword_2803DD038;
  if (!qword_2803DD038)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DD038);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t LoadingContentUnavailableView.updateUIView(_:context:)(void *a1, uint64_t a2)
{
  v17 = a1;
  v16 = a2;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v18 = sub_26B0785C0();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v22 = v9 - v21;
  v35 = v9 - v21;
  v34 = v3;
  v33 = v4;
  v23 = *v2;
  v26 = v2[1];
  v24 = v2[2];
  v25 = v2[3];
  v32 = v2;
  sub_26B0785B0();
  sub_26B078640();
  if (v26)
  {
    v14 = v23;
    v15 = v26;
    v27 = v23;
    v28 = v26;
    sub_26B0785A0();
  }

  sub_26B078640();
  if (v25)
  {
    v12 = v24;
    v13 = v25;
    v29 = v24;
    v30 = v25;
    sub_26B078590();
  }

  v9[1] = v31;
  v31[3] = v18;
  v31[4] = MEMORY[0x277D74D18];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  (*(v19 + 16))(boxed_opaque_existential_1, v22, v18);
  sub_26B07A350();
  v10 = qword_26B08B000;
  LODWORD(v6) = 1132068864;
  v11 = 0x1FBB83000uLL;
  [v17 0x1FBB8328ELL];
  LODWORD(v7) = *(v10 + 726);
  [v17 (v11 + 654)];
  return (*(v19 + 8))(v22, v18);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

unint64_t sub_26AF444C4()
{
  v2 = qword_2803DD040;
  if (!qword_2803DD040)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD040);
    return WitnessTable;
  }

  return v2;
}

void sub_26AF445A4(uint64_t a1)
{
  sub_26AF444C4();
  sub_26B078F00();
  __break(1u);
}

unint64_t sub_26AF445E4()
{
  v2 = qword_2803DD7B0;
  if (!qword_2803DD7B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD7B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF4466C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFE && *(a1 + 32))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v4 = *(a1 + 8);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26AF447B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26AF449A0(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a1;
  v45 = a2;
  v53 = a3;
  v54 = a4;
  v55 = a5;
  v46 = a6;
  v47 = "Fatal error";
  v48 = "Unexpectedly found nil while unwrapping an Optional value";
  v49 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v50 = &unk_26B089300;
  v51 = 0;
  v64 = a6;
  v52 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00, &qword_26B087700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55);
  v56 = &v15 - v52;

  v62 = v54;
  v63 = v55;
  sub_26AED6580(v53, v56);
  v57 = sub_26B07A160();
  v58 = *(v57 - 8);
  v59 = v57 - 8;
  if ((*(v58 + 48))(v56, 1) == 1)
  {
    sub_26AEA08A4(v56);
    v43 = 0;
  }

  else
  {
    v42 = sub_26B07A150();
    (*(v58 + 8))(v56, v57);
    v43 = v42;
  }

  v39 = v43 | 0x1000;
  v41 = *(v55 + 16);
  v40 = *(v55 + 24);
  swift_unknownObjectRetain();

  if (v41)
  {
    v37 = v41;
    v38 = v40;
    v31 = v40;
    v32 = v41;
    swift_getObjectType();
    v33 = sub_26B07A0C0();
    v34 = v6;
    swift_unknownObjectRelease();
    v35 = v33;
    v36 = v34;
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  v29 = v36;
  v30 = v35;
  if (v45)
  {
    v27 = v44;
    v28 = v45;
    v7 = v51;
    v25 = sub_26B079EA0();
    sub_26AF7F960(v25 + 32, &v62, v46, &v60);
    if (v7)
    {
      __break(1u);
    }

    v24 = v60;

    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  v23 = v26;
  if (v26)
  {
    v17 = v23;
    v18 = v23;
  }

  else
  {

    v19 = v62;
    v20 = v63;

    v8 = swift_allocObject();
    v9 = v19;
    v10 = v20;
    v11 = v30;
    v12 = v29;
    v21 = v8;
    v8[2] = v46;
    v8[3] = v9;
    v8[4] = v10;
    v22 = 0;
    if (v11 != 0 || v12 != 0)
    {
      v61[0] = 0;
      v61[1] = 0;
      v61[2] = v30;
      v61[3] = v29;
      v22 = v61;
    }

    v18 = swift_task_create();
  }

  sub_26AFF9248();
  v16 = v13;

  return v16;
}

uint64_t sub_26AF44F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = v4;
  v5[5] = a4;
  v5[4] = a3;
  v5[3] = a1;
  v5[2] = v5;
  return MEMORY[0x2822009F8](sub_26AF44FA0, 0, 0);
}

uint64_t sub_26AF44FA0(uint64_t a1)
{
  *(v1 + 16) = v1;
  *(v1 + 56) = sub_26B07A120();
  v4 = sub_26B07A0C0();

  return MEMORY[0x2822009F8](sub_26AF45038, v4, v2);
}

uint64_t sub_26AF45038()
{
  v4 = *(v0 + 32);
  *(v0 + 16) = v0;

  v4(v1);
  v2 = *(*(v0 + 16) + 8);

  return v2();
}

uint64_t SoftwareUpdateContentView.init(header:footer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v74 = a9;
  v72 = a1;
  v76 = a2;
  v73 = a3;
  v75 = a4;
  v69 = a5;
  v66 = a6;
  v67 = a7;
  v68 = a8;
  v91 = 0;
  v89 = 0;
  v90 = 0;
  v87 = 0;
  v88 = 0;
  v92[5] = a5;
  v92[4] = a6;
  v92[0] = a5;
  v92[1] = a6;
  v92[2] = a7;
  v92[3] = a8;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v92);
  v57[0] = (*(*(updated - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v72);
  v77 = (v57 - v57[0]);
  v91 = v57 - v57[0];
  v89 = v9;
  v90 = v10;
  v87 = v11;
  v88 = v12;
  swift_getKeyPath();
  sub_26B078A30();
  v13 = v77;
  v14 = updated;
  v15 = v86;
  *v77 = v85;
  v70 = 1;
  *(v13 + 8) = v15 & 1;
  v57[1] = v14[13];
  swift_getKeyPath();
  sub_26B078A30();
  v57[2] = updated[14];
  swift_getKeyPath();
  sub_26B078A30();
  v58 = updated[15];
  swift_getKeyPath();
  sub_26B078A30();
  v16 = v70;
  v17 = updated;
  v18 = v84;
  v19 = v77 + v58;
  *v19 = v83;
  v19[8] = v18 & 1 & v16;
  v59 = v17[16];
  swift_getKeyPath();
  sub_26B078A30();
  v20 = v70;
  v21 = updated;
  v22 = v82;
  v23 = v77 + v59;
  *v23 = v81;
  v23[8] = v22 & 1 & v20;
  v60 = v21[17];
  swift_getKeyPath();
  sub_26B078A30();
  v24 = v70;
  v25 = updated;
  v26 = v80;
  v27 = v77 + v60;
  *v27 = v79;
  v27[8] = v26 & 1 & v24;
  v61 = v25[18];
  swift_getKeyPath();
  sub_26B078A30();
  v62 = updated[19];
  swift_getKeyPath();
  sub_26B078A30();
  v63 = updated[20];
  v65 = 0;
  v28 = sub_26AF46554(0, v69, v66);
  v29 = v66;
  v30 = updated;
  v31 = v28;
  v32 = v65;
  v34 = v33;
  v35 = v69;
  v36 = v77 + v63;
  *v36 = v31 & v70;
  *(v36 + 1) = v34;
  v64 = v30[21];
  v37 = sub_26AF468B8(v32, v35, v29);
  v38 = v65;
  v39 = v66;
  v40 = v37;
  v41 = updated;
  v43 = v42;
  v44 = v69;
  v45 = v77 + v64;
  *v45 = v40;
  *(v45 + 1) = v43;
  v71 = v41[22];
  v46 = sub_26AF46C00(v38 & 1, v44, v39);
  v47 = v77 + v71;
  *v47 = v46 & v70;
  *(v47 + 1) = v48;

  v49 = v76;
  v50 = (v77 + updated[23]);
  *v50 = v72;
  v50[1] = v49;

  v51 = v77;
  v52 = v74;
  v53 = v75;
  v54 = updated;
  v55 = (v77 + updated[24]);
  *v55 = v73;
  v55[1] = v53;
  sub_26AEF6558(v51, v52, v54);

  return sub_26AEF6128(v77, updated);
}

uint64_t sub_26AF45650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v13 = a8;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v22 = a4;
  v21 = a5;
  v12 = (*(*(a5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x28223BE20](a1);
  v14 = &v11 - v12;
  v9(v8);
  return sub_26B078B90();
}

uint64_t sub_26AF45718(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFB8, &qword_26B088140);
  sub_26B078A10();

  return v2;
}

uint64_t sub_26AF457B8()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_26AF45810(uint64_t a1, char a2)
{

  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

uint64_t sub_26AF458A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = a2;
  v6 = a1;
  v13 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD070, &unk_26B08BE50);
  v7 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v10 = &v5 - v7;
  v13 = v2;
  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  sub_26AF67FB8((v2 + *(v3 + 52)), (&v5 - v7));
  sub_26B078A10();
  return sub_26AF6808C(v10);
}

uint64_t sub_26AF459C0(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  v7 = a2;
  v13 = 0;
  v12 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD070, &unk_26B08BE50) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v8 = &v6 - v6;
  v13 = v3;
  v12 = v2;
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  sub_26AF67FB8(v3, (&v6 - v6));
  sub_26AF68128(v8, (v2 + *(v7 + 52)));
  return sub_26AF6808C(v9);
}

void *sub_26AF45A94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = a2;
  v6 = a1;
  v13 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC130, &unk_26B088940);
  v7 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v10 = (&v5 - v7);
  v13 = v2;
  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  sub_26AEC26F8((v2 + *(v3 + 56)), (&v5 - v7));
  sub_26B078A10();
  return sub_26AEC27CC(v10);
}

void *sub_26AF45BB4(void *a1, uint64_t a2)
{
  v9 = a1;
  v7 = a2;
  v13 = 0;
  v12 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC130, &unk_26B088940) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v8 = (&v6 - v6);
  v13 = v3;
  v12 = v2;
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  sub_26AEC26F8(v3, (&v6 - v6));
  sub_26AEC2950(v8, (v2 + *(v7 + 56)));
  return sub_26AEC27CC(v9);
}

uint64_t sub_26AF45C88(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB510, &qword_26B086040);
  sub_26B078A10();

  return v2;
}

uint64_t sub_26AF45D2C(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 60));

  return v3;
}

uint64_t sub_26AF45D88(uint64_t a1, char a2, uint64_t a3)
{

  v4 = v3 + *(a3 + 60);
  *v4 = a1;
  *(v4 + 8) = a2 & 1;
}

uint64_t sub_26AF45E24(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC8E8, &qword_26B08A848);
  sub_26B078A10();

  return v2;
}

uint64_t sub_26AF45EC8(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 64));

  return v3;
}

uint64_t sub_26AF45F24(uint64_t a1, char a2, uint64_t a3)
{

  v4 = v3 + *(a3 + 64);
  *v4 = a1;
  *(v4 + 8) = a2 & 1;
}

uint64_t sub_26AF45FC0(uint64_t a1)
{
  sub_26AEF6B08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD080, &qword_26B08BE60);
  sub_26B078A10();
  sub_26AEF63EC();
  return v2;
}

uint64_t sub_26AF46070(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 68));
  sub_26AEF6B08();
  return v3;
}

uint64_t sub_26AF460D0(uint64_t a1, char a2, uint64_t a3)
{
  sub_26AEF6B08();
  v4 = v3 + *(a3 + 68);
  *v4 = a1;
  *(v4 + 8) = a2 & 1;
  sub_26AEF63EC();
  return sub_26AEF63EC();
}

uint64_t sub_26AF46180(uint64_t a1)
{
  v3 = v2 + *(a1 + 72);
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  sub_26AEF6B48(*v3, v6, v7 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD088, &qword_26B08BE68);
  sub_26B078A10();
  return sub_26AEF642C(v5, v6, v7 & 1);
}

uint64_t sub_26AF46280(uint64_t a1, uint64_t a2)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16) & 1;
  sub_26AEF6B48(*a1, v10, v11);
  v3 = v2 + *(a2 + 72);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *v3 = v9;
  *(v3 + 8) = v10;
  *(v3 + 16) = v11;
  sub_26AEF642C(v4, v5, v6 & 1);
  return sub_26AEF642C(v9, v10, v11);
}

uint64_t sub_26AF46360@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = a2;
  v6 = a1;
  v13 = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD090, &unk_26B08BE70);
  v7 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6);
  v10 = &v5 - v7;
  v13 = v2;
  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  sub_26AF68318((v2 + *(v3 + 76)), (&v5 - v7));
  sub_26B078A10();
  return sub_26AF683EC(v10);
}

uint64_t sub_26AF46480(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  v7 = a2;
  v13 = 0;
  v12 = 0;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD090, &unk_26B08BE70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v8 = &v6 - v6;
  v13 = v3;
  v12 = v2;
  v11 = *(v4 + 16);
  v10 = *(v4 + 24);
  sub_26AF68318(v3, (&v6 - v6));
  sub_26AF68488(v8, (v2 + *(v7 + 76)));
  return sub_26AF683EC(v9);
}

uint64_t sub_26AF465B0(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0, &unk_26B08A850);
  sub_26B0798B0();

  return v2 & 1;
}

uint64_t sub_26AF46650(char a1, uint64_t a2)
{
  v11 = 0;
  v12 = a1 & 1;
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v3 = (v2 + *(a2 + 80));
  v5 = *v3;
  v6 = *(v3 + 1);

  v7[0] = v5;
  v8 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0, &unk_26B08A850);
  sub_26B0798C0();
  sub_26AE91DC8(v7);
}

uint64_t sub_26AF4671C(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0, &unk_26B08A850);
  sub_26B0798D0();

  return v2;
}

uint64_t sub_26AF467D4(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 80));

  return v3 & 1;
}

uint64_t sub_26AF46830(char a1, uint64_t a2, uint64_t a3)
{

  v4 = v3 + *(a3 + 80);
  *v4 = a1;
  *(v4 + 8) = a2;
}

uint64_t sub_26AF4690C(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD0A0, &qword_26B08BE80);
  sub_26B0798B0();

  return v2;
}

uint64_t sub_26AF469A8(char a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD0A0, &qword_26B08BE80);
  sub_26B0798C0();
  sub_26AF68610();
}

uint64_t sub_26AF46A6C(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD0A0, &qword_26B08BE80);
  sub_26B0798D0();

  return v2;
}

uint64_t sub_26AF46B20(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 84));

  return v3;
}

uint64_t sub_26AF46B78(char a1, uint64_t a2, uint64_t a3)
{

  v4 = v3 + *(a3 + 84);
  *v4 = a1;
  *(v4 + 8) = a2;
}

uint64_t sub_26AF46C5C(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0, &unk_26B08A850);
  sub_26B0798B0();

  return v2 & 1;
}

uint64_t sub_26AF46CFC(char a1, uint64_t a2)
{
  v11 = 0;
  v12 = a1 & 1;
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v3 = (v2 + *(a2 + 88));
  v5 = *v3;
  v6 = *(v3 + 1);

  v7[0] = v5;
  v8 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0, &unk_26B08A850);
  sub_26B0798C0();
  sub_26AE91DC8(v7);
}

uint64_t sub_26AF46DC8(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC9D0, &unk_26B08A850);
  sub_26B0798D0();

  return v2;
}

uint64_t sub_26AF46E80(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 88));

  return v3 & 1;
}

uint64_t sub_26AF46EDC(char a1, uint64_t a2, uint64_t a3)
{

  v4 = v3 + *(a3 + 88);
  *v4 = a1;
  *(v4 + 8) = a2;
}

uint64_t sub_26AF46F64(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 92));

  return v3;
}

uint64_t sub_26AF46FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = (v3 + *(a3 + 92));
  *v4 = a1;
  v4[1] = a2;
}

uint64_t sub_26AF47048(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 96));

  return v3;
}

uint64_t sub_26AF470A0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v4 = (v3 + *(a3 + 96));
  *v4 = a1;
  v4[1] = a2;
}

uint64_t SoftwareUpdateContentView.body.getter@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v175 = a2;
  v157 = a1;
  v123 = 0;
  v76 = MEMORY[0x277CE14C0];
  v50 = MEMORY[0x277CDE580];
  v61 = MEMORY[0x277CE1198];
  v91 = MEMORY[0x277CDFAD8];
  v65 = MEMORY[0x277CDE800];
  v68 = MEMORY[0x277CDEB28];
  v71 = MEMORY[0x277CDDB50];
  v80 = &protocol conformance descriptor for AdaptiveScrollView<A>;
  v82 = MEMORY[0x277CDE820];
  v85 = MEMORY[0x277CDE700];
  v89 = MEMORY[0x277CE0E30];
  v109 = &unk_26B08BEE8;
  v122 = sub_26AF49A24;
  v135 = sub_26AF69490;
  v151 = sub_26AF698F0;
  v174 = MEMORY[0x277CE1148];
  v202 = 0;
  v201 = 0;
  v45 = *(a1 - 1);
  v106 = v45;
  v141 = *(v45 + 64);
  v46 = (v141 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v148 = &v45 - v46;
  v75 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0A8, &qword_26B08BE88);
  v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DD0B0, &unk_26B08BE90);
  v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCF10, qword_26B08BA48);
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DD0C0, &unk_26B08BEA0);
  v143 = *(v157 + 2);
  v254 = v143;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDC50, &unk_26B087430);
  v78 = 255;
  v47 = sub_26B078BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0D0, &unk_26B08BEB0);
  sub_26B079AB0();
  swift_getTupleTypeMetadata2();
  v49 = sub_26B079BB0();
  swift_getWitnessTable();
  v51 = sub_26B079250();
  swift_getWitnessTable();
  v52 = sub_26B079990();
  v53 = sub_26B078BF0();
  WitnessTable = swift_getWitnessTable();
  v253 = MEMORY[0x277CDFC48];
  v3 = swift_getWitnessTable();
  v250 = v53;
  v251 = v3;
  v163 = 0;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v55 = MEMORY[0x277CDF910];
  v54 = sub_26B078BF0();
  v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0D8, &qword_26B08D280);
  v58 = sub_26B078BF0();
  v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0E0, &qword_26B08BEC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0E8, &qword_26B08BEC8);
  v144 = *(v157 + 3);
  v249 = v144;
  swift_getTupleTypeMetadata2();
  sub_26B079BB0();
  sub_26B079810();
  sub_26B078BF0();
  sub_26B078BF0();
  swift_getTupleTypeMetadata3();
  v59 = sub_26B079BB0();
  swift_getWitnessTable();
  v60 = sub_26B079990();
  v63 = sub_26B078BF0();
  v62 = swift_getWitnessTable();
  v4 = sub_26AF0633C();
  v247 = v62;
  v248 = v4;
  v64 = swift_getWitnessTable();
  v245 = v63;
  v246 = v64;
  v94 = swift_getOpaqueTypeMetadata2();
  v66 = sub_26B078BF0();
  v243 = v63;
  v244 = v64;
  v154 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v242 = MEMORY[0x277CDFC60];
  v67 = swift_getWitnessTable();
  v239 = v66;
  v240 = v67;
  v92 = swift_getOpaqueTypeMetadata2();
  v70 = sub_26AF6863C();
  v237 = v66;
  v238 = v67;
  v5 = swift_getOpaqueTypeConformance2();
  v233 = v69;
  v234 = v92;
  v235 = v70;
  v236 = v5;
  v73 = sub_26B078C20();
  v74 = sub_26AEDE278();
  v6 = swift_getWitnessTable();
  v229 = v72;
  v230 = v73;
  v231 = v74;
  v232 = v6;
  sub_26B078C20();
  swift_getTupleTypeMetadata2();
  v77 = sub_26B079BB0();
  v7 = swift_getWitnessTable();
  v79 = type metadata accessor for AdaptiveScrollView(v78, v77, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC720, &qword_26B089FD0);
  v102 = sub_26B078BF0();
  v81 = swift_getWitnessTable();
  v9 = sub_26AEF9014();
  v227 = v81;
  v228 = v9;
  v103 = swift_getWitnessTable();
  v225 = v102;
  v226 = v103;
  v114 = swift_getOpaqueTypeMetadata2();
  v111 = *(v114 - 8);
  v112 = v114 - 8;
  v83 = (*(v111 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v114);
  v113 = &v45 - v83;
  v223 = v102;
  v224 = v10;
  v108 = swift_getOpaqueTypeConformance2();
  v221 = v114;
  v222 = v108;
  v130 = swift_getOpaqueTypeMetadata2();
  v128 = *(v130 - 8);
  v129 = v130 - 8;
  v84 = (*(v128 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v130);
  v131 = &v45 - v84;
  v124 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC5C8, &qword_26B089C58);
  v219 = v114;
  v220 = v108;
  v125 = swift_getOpaqueTypeConformance2();
  v126 = sub_26AEF4560();
  v215 = v130;
  v216 = v124;
  v217 = v125;
  v218 = v126;
  v178 = swift_getOpaqueTypeMetadata2();
  v137 = *(v178 - 8);
  v138 = v178 - 8;
  v86 = (*(v137 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v163);
  v139 = &v45 - v86;
  v87 = MEMORY[0x277CE07A0];
  v179 = sub_26B078BF0();
  v88 = (*(*(v179 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v163);
  v153 = &v45 - v88;
  v180 = sub_26B078BF0();
  MEMORY[0x28223BE20](v180);
  v173 = &v45 - v11;
  v211 = v130;
  v212 = v124;
  v213 = v125;
  v214 = v12;
  v134 = swift_getOpaqueTypeConformance2();
  v209 = v134;
  v90 = MEMORY[0x277CE0790];
  v210 = MEMORY[0x277CE0790];
  v150 = swift_getWitnessTable();
  v207 = v150;
  v208 = v90;
  v170 = swift_getWitnessTable();
  v203 = v180;
  v169 = MEMORY[0x277D837D0];
  v204 = MEMORY[0x277D837D0];
  v205 = v170;
  v171 = MEMORY[0x277D837E0];
  v206 = MEMORY[0x277D837E0];
  v181 = sub_26B079960();
  v96 = *(*(v181 - 8) + 64);
  v93 = (v96 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v163);
  v177 = &v45 - v93;
  swift_checkMetadataState();
  swift_checkMetadataState();
  swift_checkMetadataState();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD130, &unk_26B08BED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD138, &unk_26B08D440);
  v97 = (v96 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v157);
  v182 = &v45 - v97;
  v202 = &v45 - v97;
  v201 = v2;
  sub_26AF48318(v13, v197);
  v105 = v193;
  v193[0] = v197[0];
  v193[1] = v197[1];
  v194 = v198;
  v195 = v199;
  v196 = v200;
  v160 = type metadata accessor for SUUIStatefulUIState(v163);
  v98 = sub_26AF45C88(v157);
  v99 = ReactiveUIManager.currentState.getter();

  v101 = &v192;
  v192 = v99;
  v100 = &v191;
  v191 = v154;
  sub_26AEB6FE0();
  v104 = sub_26B079D50();
  swift_checkMetadataState();
  v164 = 1;
  sub_26B0794C0();
  sub_26AF686C4();
  sub_26AEF6558(v155, v148, v157);
  v140 = *(v106 + 80);
  v107 = (v140 + 48) & ~v140;
  v142 = 7;
  v14 = swift_allocObject();
  v15 = v107;
  v16 = v144;
  v17 = v157;
  v18 = v14;
  v19 = v148;
  v110 = v18;
  v18[2] = v143;
  v18[3] = v16;
  v145 = *(v17 + 4);
  v18[4] = v145;
  v146 = *(v17 + 5);
  v18[5] = v146;
  sub_26AF68AA4(v19, v18 + v15, v17);
  sub_26B079450();

  (*(v111 + 8))(v113, v114);
  v115 = sub_26AF45C88(v157);
  ReactiveUIManager.presentedDialog.getter(v189);
  v116 = v189[0];
  v117 = v189[1];
  v118 = v189[2];
  v119 = v189[3];
  v120 = v189[4];
  v121 = v190;

  v127 = v187;
  v187[0] = v116;
  v187[1] = v117;
  v187[2] = v118;
  v187[3] = v119;
  v187[4] = v120;
  v188 = v121;
  sub_26AEC69E0();
  sub_26B0796D0();
  sub_26AEA007C(v127);
  (*(v128 + 8))(v131, v130);
  sub_26AEF6558(v155, v148, v157);
  v132 = (v140 + 48) & ~v140;
  v20 = swift_allocObject();
  v21 = v132;
  v22 = v144;
  v23 = v145;
  v24 = v146;
  v25 = v157;
  v26 = v20;
  v27 = v148;
  v133 = v26;
  v26[2] = v143;
  v26[3] = v22;
  v26[4] = v23;
  v26[5] = v24;
  sub_26AF68AA4(v27, v26 + v21, v25);
  v136 = v133;
  sub_26B0796C0();
  sub_26AEB3258(v135, v136);
  (*(v137 + 8))(v139, v178);
  sub_26AEF6558(v155, v148, v157);
  v147 = (v140 + 48) & ~v140;
  v28 = swift_allocObject();
  v29 = v144;
  v30 = v145;
  v31 = v146;
  v32 = v147;
  v33 = v157;
  v34 = v28;
  v35 = v148;
  v149 = v34;
  v34[2] = v143;
  v34[3] = v29;
  v34[4] = v30;
  v34[5] = v31;
  sub_26AF68AA4(v35, v34 + v32, v33);
  v152 = v149;
  sub_26B079440();
  sub_26AEB3258(v151, v152);
  sub_26AF699A8(v153, v178, v179);
  v36 = sub_26B07A740();
  v166 = &v185;
  v185 = v36;
  v186 = v37;
  v162 = "";
  v38 = sub_26B079D00("", v163, v164 & 1);
  v156 = v39;
  MEMORY[0x26D66D910](v38);

  v158 = sub_26AF45C88(v157);
  v159 = ReactiveUIManager.currentState.getter();

  v161 = &v184;
  v184 = v159;
  sub_26AEB7134();
  sub_26B07A710();
  v40 = sub_26B079D00(v162, v163, v164 & 1);
  v165 = v41;
  MEMORY[0x26D66D910](v40);

  v168 = v185;
  v167 = v186;
  sub_26B078640();
  sub_26AEB9F6C(v166);
  v42 = sub_26B079EB0();
  v172 = v183;
  v183[0] = v42;
  v183[1] = v43;
  sub_26B0795B0();
  sub_26AE9BCC0(v172);
  sub_26AF69A5C(v173, v178, v179, v180);
  v176 = swift_getWitnessTable();
  sub_26AE9463C(v177, v181, v182);
  sub_26AF69B64(v177, v178, v179, v180, v181);
  sub_26AF69C88(v182, v177, v178, v179, v180, v181);
  sub_26AE94B4C(v177, v181, v175);
  sub_26AF69B64(v177, v178, v179, v180, v181);
  return sub_26AF69B64(v182, v178, v179, v180, v181);
}

void sub_26AF48318(int *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v49 = a1;
  v62 = 0;
  v65 = MEMORY[0x277CE14C0];
  v25 = MEMORY[0x277CDE580];
  v36 = MEMORY[0x277CE1198];
  v78 = MEMORY[0x277CDFAD8];
  v40 = MEMORY[0x277CDE800];
  v53 = MEMORY[0x277CDEB28];
  v58 = MEMORY[0x277CDDB50];
  v66 = sub_26AF6A2A4;
  v70 = &protocol conformance descriptor for AdaptiveScrollView<A>;
  v140 = 0;
  v20 = *(a1 - 1);
  v44 = v20;
  v45 = *(v20 + 64);
  v21 = (v45 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v50 = &v19 - v21;
  v140 = v2;
  v46 = *(v3 + 16);
  v139 = v46;
  v47 = *(v3 + 24);
  v138 = v47;
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DD0C0, &unk_26B08BEA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDC50, &unk_26B087430);
  v64 = 255;
  v22 = sub_26B078BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0D0, &unk_26B08BEB0);
  sub_26B079AB0();
  swift_getTupleTypeMetadata2();
  v24 = sub_26B079BB0();
  swift_getWitnessTable();
  v26 = sub_26B079250();
  swift_getWitnessTable();
  v27 = sub_26B079990();
  v28 = sub_26B078BF0();
  WitnessTable = swift_getWitnessTable();
  v137 = MEMORY[0x277CDFC48];
  v4 = swift_getWitnessTable();
  v134 = v28;
  v135 = v4;
  v76 = 0;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v30 = MEMORY[0x277CDF910];
  v29 = sub_26B078BF0();
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0D8, &qword_26B08D280);
  v33 = sub_26B078BF0();
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0E0, &qword_26B08BEC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0E8, &qword_26B08BEC8);
  swift_getTupleTypeMetadata2();
  sub_26B079BB0();
  sub_26B079810();
  sub_26B078BF0();
  sub_26B078BF0();
  swift_getTupleTypeMetadata3();
  v34 = sub_26B079BB0();
  swift_getWitnessTable();
  v35 = sub_26B079990();
  v38 = sub_26B078BF0();
  v37 = swift_getWitnessTable();
  v5 = sub_26AF0633C();
  v132 = v37;
  v133 = v5;
  v39 = swift_getWitnessTable();
  v130 = v38;
  v131 = v39;
  v41 = swift_getOpaqueTypeMetadata2();
  v51 = sub_26B078BF0();
  v128 = v38;
  v129 = v39;
  v54 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v127 = MEMORY[0x277CDFC60];
  v52 = swift_getWitnessTable();
  v124 = v51;
  v125 = v52;
  v56 = swift_getOpaqueTypeMetadata2();
  swift_checkMetadataState();
  swift_checkMetadataState();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD130, &unk_26B08BED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD138, &unk_26B08D440);
  sub_26AEF6558(v43, v50, v49);
  v48 = (*(v44 + 80) + 48) & ~*(v44 + 80);
  v6 = swift_allocObject();
  v7 = v47;
  v8 = v48;
  v9 = v49;
  v10 = v6;
  v11 = v50;
  v67 = v10;
  v10[2] = v46;
  v10[3] = v7;
  v10[4] = *(v9 + 4);
  v10[5] = *(v9 + 5);
  sub_26AF68AA4(v11, v10 + v8, v9);
  v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0A8, &qword_26B08BE88);
  v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DD0B0, &unk_26B08BE90);
  v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCF10, qword_26B08BA48);
  v57 = sub_26AF6863C();
  v111 = v51;
  v112 = v52;
  v12 = swift_getOpaqueTypeConformance2();
  v107 = v55;
  v108 = v56;
  v109 = v57;
  v110 = v12;
  v60 = sub_26B078C20();
  v61 = sub_26AEDE278();
  v13 = swift_getWitnessTable();
  v103 = v59;
  v104 = v60;
  v105 = v61;
  v106 = v13;
  sub_26B078C20();
  swift_getTupleTypeMetadata2();
  v68 = sub_26B079BB0();
  v69 = swift_getWitnessTable();
  v14 = sub_26AF44F30();
  AdaptiveScrollView.init(enabledWhen:content:)(v14 & 1, v66, v67, v68, v113);
  v74 = v101;
  v101[0] = v113[0];
  v101[1] = v113[1];
  v102 = v114;
  v15 = [objc_opt_self() systemGroupedBackgroundColor];
  v16 = sub_26B079750();
  v73 = &v100;
  v100 = v16;
  v75 = type metadata accessor for AdaptiveScrollView(v76, v68, v69, v17);
  v77 = swift_getWitnessTable();
  v71 = MEMORY[0x277CE0F78];
  v72 = MEMORY[0x277CE0F60];
  sub_26AEF8488(v75, MEMORY[0x277CE0F78]);
  sub_26B0793C0();
  sub_26AEF8E10();
  sub_26AF6A370();
  v79 = v96;
  v96[0] = v115;
  v96[1] = v116;
  v97 = v117;
  v98 = v118;
  v99 = v119;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC720, &qword_26B089FD0);
  v86 = sub_26B078BF0();
  v18 = sub_26AEF9014();
  v94 = v77;
  v95 = v18;
  v87 = swift_getWitnessTable();
  v89 = v120;
  sub_26AE9463C(v79, v86, v120);
  sub_26AF686C4();
  v80 = v120[0];
  v81 = v120[1];
  v82 = v121;
  v83 = v122;
  v84 = v123;

  v88 = v90;
  v90[0] = v80;
  v90[1] = v81;
  v91 = v82;
  v92 = v83;
  v93 = v84;
  sub_26AE94B4C(v90, v86, v85);
  sub_26AF686C4();
  sub_26AF686C4();
}

uint64_t sub_26AF48C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a5;
  v5[12] = a4;
  v5[11] = a3;
  v5[10] = a2;
  v5[9] = a1;
  v5[6] = v5;
  v5[7] = 0;
  v5[8] = 0;
  v6 = sub_26B078580();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v5[7] = a1;
  sub_26B07A130();
  v5[17] = sub_26B07A120();
  v10 = sub_26B07A0C0();
  v5[18] = v10;
  v5[19] = v7;

  return MEMORY[0x2822009F8](sub_26AF48D94, v10, v7);
}

uint64_t sub_26AF48D94()
{
  v1 = v0[13];
  v2 = v0[12];
  v3 = v0[11];
  v4 = v0[10];
  v0[6] = v0;
  v0[2] = v4;
  v0[3] = v3;
  v0[4] = v2;
  v0[5] = v1;
  updated = type metadata accessor for SoftwareUpdateContentView(0, (v0 + 2));
  v0[20] = sub_26AF45C88(updated);
  v6 = swift_task_alloc();
  *(v8 + 168) = v6;
  *v6 = *(v8 + 48);
  v6[1] = sub_26AF48E88;

  return ReactiveUIManager.checkForAvailableUpdatesInBackground(_:)(1);
}

uint64_t sub_26AF48E88(uint64_t a1)
{
  v7 = *v2;
  v7[6] = *v2;
  v7[22] = a1;
  v7[23] = v1;

  if (v1)
  {
    v3 = v7[19];
    v4 = v7[18];
    v5 = sub_26AF490C8;
  }

  else
  {

    v3 = v7[19];
    v4 = v7[18];
    v5 = sub_26AF49014;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26AF49014()
{
  v1 = *(v0 + 176);
  *(v0 + 48) = v0;
  MEMORY[0x277D82BD8](v1);

  v2 = *(*(v0 + 48) + 8);

  return v2();
}

uint64_t sub_26AF490C8()
{
  v33 = v0;
  v14 = v0[23];
  v0[6] = v0;

  MEMORY[0x26D66E1D0](v14);
  v0[8] = v14;
  sub_26B078550();
  MEMORY[0x26D66E1D0](v14);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  sub_26AED0174();

  v26 = sub_26B078570();
  v27 = sub_26B07A2C0();
  v19 = swift_allocObject();
  *(v19 + 16) = 32;
  v20 = swift_allocObject();
  *(v20 + 16) = 8;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_26AF499CC;
  *(v15 + 24) = 0;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_26AF8F530;
  *(v21 + 24) = v15;
  v22 = swift_allocObject();
  *(v22 + 16) = 64;
  v23 = swift_allocObject();
  *(v23 + 16) = 8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_26AF8F480;
  *(v17 + 24) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_26AF8F630;
  *(v18 + 24) = v17;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_26AF8F67C;
  *(v24 + 24) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  sub_26B07A760();
  v25 = v1;

  *v25 = sub_26AF8F4B4;
  v25[1] = v19;

  v25[2] = sub_26AF8F4E8;
  v25[3] = v20;

  v25[4] = sub_26AF8F57C;
  v25[5] = v21;

  v25[6] = sub_26AF8F5B4;
  v25[7] = v22;

  v25[8] = sub_26AF8F5E8;
  v25[9] = v23;

  v25[10] = sub_26AF8F6C8;
  v25[11] = v24;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v26, v27))
  {
    buf = sub_26B07A420();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v11 = sub_26AEA3B70(1, v9, v9);
    v12 = sub_26AEA3B70(1, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v28 = buf;
    v29 = v11;
    v30 = v12;
    sub_26AEA3BC4(2, &v28);
    sub_26AEA3BC4(2, &v28);
    v31 = sub_26AF8F4B4;
    v32 = v19;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    v31 = sub_26AF8F4E8;
    v32 = v20;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    v31 = sub_26AF8F57C;
    v32 = v21;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    v31 = sub_26AF8F5B4;
    v32 = v22;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    v31 = sub_26AF8F5E8;
    v32 = v23;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    v31 = sub_26AF8F6C8;
    v32 = v24;
    sub_26AEA3BD8(&v31, &v28, &v29, &v30);
    _os_log_impl(&dword_26AE88000, v26, v27, "SoftwareUpdateContentView.%s: Failed to execute manager.checkForAvailableUpdatesInBackground(true): %@", buf, 0x16u);
    sub_26AEA3C24(v11, 1, v9);
    sub_26AEA3C24(v12, 1, MEMORY[0x277D84F70] + 8);
    sub_26B07A400();
  }

  else
  {
  }

  v8 = v13[23];
  v6 = v13[16];
  v7 = v13[14];
  v5 = v13[15];
  v2 = MEMORY[0x277D82BD8](v26);
  (*(v5 + 8))(v6, v7, v2);

  v3 = *(v13[6] + 8);

  return v3();
}

uint64_t sub_26AF49A24(uint64_t a1, const void *a2)
{
  v38 = a1;
  v44 = a2;
  v49 = sub_26AF8F1C4;
  v51 = sub_26AF8F2E8;
  v56 = sub_26AF8F238;
  v60 = sub_26AF8F3E8;
  v62 = sub_26AF8F26C;
  v64 = sub_26AF8F2A0;
  v66 = sub_26AF8F334;
  v68 = sub_26AF8F36C;
  v70 = sub_26AF8F3A0;
  v73 = sub_26AF8F434;
  v37 = 0;
  v39 = sub_26B078580();
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  v42 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39);
  v43 = v27 - v42;
  v45 = __dst;
  v48 = 41;
  memcpy(__dst, v2, 0x29uLL);
  v47 = v86;
  memcpy(v86, v44, 0x29uLL);
  sub_26B078550();
  sub_26AE9FB6C(v45, &v85);
  v46 = 57;
  v58 = 7;
  v50 = swift_allocObject();
  memcpy((v50 + 16), v45, v48);
  sub_26AE9FB6C(v47, &v84);
  v59 = swift_allocObject();
  memcpy((v59 + 16), v47, v48);
  v77 = sub_26B078570();
  v78 = sub_26B07A2A0();
  v54 = 17;
  v63 = swift_allocObject();
  v53 = 32;
  *(v63 + 16) = 32;
  v65 = swift_allocObject();
  v55 = 8;
  *(v65 + 16) = 8;
  v57 = 32;
  v3 = swift_allocObject();
  v4 = v50;
  v52 = v3;
  *(v3 + 16) = v49;
  *(v3 + 24) = v4;
  v5 = swift_allocObject();
  v6 = v52;
  v67 = v5;
  *(v5 + 16) = v51;
  *(v5 + 24) = v6;
  v69 = swift_allocObject();
  *(v69 + 16) = v53;
  v71 = swift_allocObject();
  *(v71 + 16) = v55;
  v7 = swift_allocObject();
  v8 = v59;
  v61 = v7;
  *(v7 + 16) = v56;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v61;
  v74 = v9;
  *(v9 + 16) = v60;
  *(v9 + 24) = v10;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DBB00, &unk_26B088A40);
  v72 = sub_26B07A760();
  v75 = v11;

  v12 = v63;
  v13 = v75;
  *v75 = v62;
  v13[1] = v12;

  v14 = v65;
  v15 = v75;
  v75[2] = v64;
  v15[3] = v14;

  v16 = v67;
  v17 = v75;
  v75[4] = v66;
  v17[5] = v16;

  v18 = v69;
  v19 = v75;
  v75[6] = v68;
  v19[7] = v18;

  v20 = v71;
  v21 = v75;
  v75[8] = v70;
  v21[9] = v20;

  v22 = v74;
  v23 = v75;
  v75[10] = v73;
  v23[11] = v22;
  sub_26AEA3B2C();

  if (os_log_type_enabled(v77, v78))
  {
    v24 = v37;
    v29 = sub_26B07A420();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCED0, &unk_26B087440);
    v30 = sub_26AEA3B70(0, v28, v28);
    v31 = sub_26AEA3B70(2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84F70] + 8);
    v33 = &v83;
    v83 = v29;
    v34 = &v82;
    v82 = v30;
    v35 = &v81;
    v81 = v31;
    v32 = 2;
    sub_26AEA3BC4(2, &v83);
    sub_26AEA3BC4(v32, v33);
    v79 = v62;
    v80 = v63;
    sub_26AEA3BD8(&v79, v33, v34, v35);
    v36 = v24;
    if (v24)
    {

      __break(1u);
    }

    else
    {
      v79 = v64;
      v80 = v65;
      sub_26AEA3BD8(&v79, &v83, &v82, &v81);
      v27[4] = 0;
      v79 = v66;
      v80 = v67;
      sub_26AEA3BD8(&v79, &v83, &v82, &v81);
      v27[3] = 0;
      v79 = v68;
      v80 = v69;
      sub_26AEA3BD8(&v79, &v83, &v82, &v81);
      v27[2] = 0;
      v79 = v70;
      v80 = v71;
      sub_26AEA3BD8(&v79, &v83, &v82, &v81);
      v27[1] = 0;
      v79 = v73;
      v80 = v74;
      sub_26AEA3BD8(&v79, &v83, &v82, &v81);
      _os_log_impl(&dword_26AE88000, v77, v78, "presentedDialog changed: %s -> %s", v29, 0x16u);
      sub_26AEA3C24(v30, 0, v28);
      sub_26AEA3C24(v31, 2, MEMORY[0x277D84F70] + 8);
      sub_26B07A400();
    }
  }

  else
  {
  }

  v25 = MEMORY[0x277D82BD8](v77);
  return (*(v40 + 8))(v43, v39, v25);
}

uint64_t sub_26AF4A4F0(char *a1)
{
  sub_26AE9FB6C(a1, v4);
  memcpy(__dst, a1, sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC5C8, &qword_26B089C58);
  return sub_26B079E60();
}

uint64_t sub_26AF4A550(char *a1)
{
  sub_26AE9FB6C(a1, v4);
  memcpy(__dst, a1, sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC5C8, &qword_26B089C58);
  return sub_26B079E60();
}

uint64_t sub_26AF4A5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[6] = a2;
  v7[5] = a3;
  v7[4] = a1;
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v7);
  sub_26AF4A62C(updated);
  return sub_26AF4A8B8(updated);
}

uint64_t sub_26AF4A62C(int *a1)
{
  v25 = a1;
  v19 = &unk_26B08BF00;
  v32 = 0;
  v20 = *(a1 - 1);
  v21 = v20;
  v22 = *(v20 + 64);
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v24 = &v12[-v23];
  v26 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00, &qword_26B087700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v27 = &v12[-v26];
  v32 = v1;
  v28 = *(v2 + 16);
  v31 = v28;
  v29 = *(v2 + 24);
  v30 = v29;
  result = sub_26AF465B0(v2);
  if ((result & 1) == 0)
  {
    v13 = 1;
    sub_26AF46650(1, v25);
    sub_26B07A140();
    v15 = 0;
    v4 = sub_26B07A160();
    (*(*(v4 - 8) + 56))(v27, 0, v13);
    sub_26AEF6558(v18, v24, v25);
    v14 = (*(v21 + 80) + 64) & ~*(v21 + 80);
    v5 = swift_allocObject();
    v6 = v28;
    v7 = v29;
    v8 = v14;
    v9 = v25;
    v10 = v5;
    v11 = v24;
    v16 = v10;
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v6;
    v10[5] = v7;
    v10[6] = *(v9 + 4);
    v10[7] = *(v9 + 5);
    sub_26AF68AA4(v11, v10 + v8, v9);
    v17 = sub_26AF449A0(v15, v15, v27, v19, v16, MEMORY[0x277D84F78] + 8);
    sub_26AEA08A4(v27);
  }

  return result;
}

uint64_t sub_26AF4A8B8(int *a1)
{
  v22 = a1;
  v25 = &unk_26B08BF10;
  v31 = 0;
  v13 = *(a1 - 1);
  v17 = v13;
  v18 = *(v13 + 64);
  v14 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v23 = &v12 - v14;
  v15 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00, &qword_26B087700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v27 = &v12 - v15;
  v31 = v1;
  v19 = *(v2 + 16);
  v30 = v19;
  v20 = *(v2 + 24);
  v29 = v20;
  sub_26B07A140();
  v24 = 0;
  v3 = sub_26B07A160();
  (*(*(v3 - 8) + 56))(v27, 0, 1);
  sub_26AEF6558(v16, v23, v22);
  v21 = (*(v17 + 80) + 64) & ~*(v17 + 80);
  v4 = swift_allocObject();
  v5 = v19;
  v6 = v20;
  v7 = v21;
  v8 = v22;
  v9 = v4;
  v10 = v23;
  v26 = v9;
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v5;
  v9[5] = v6;
  v9[6] = *(v8 + 4);
  v9[7] = *(v8 + 5);
  sub_26AF68AA4(v10, v9 + v7, v8);
  v28 = sub_26AF449A0(v24, v24, v27, v25, v26, MEMORY[0x277D84F78] + 8);
  sub_26AEA08A4(v27);
}

uint64_t sub_26AF4AB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[6] = a2;
  v7[5] = a3;
  v7[4] = a1;
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v7);
  return sub_26AF4AB70(updated);
}

uint64_t sub_26AF4AB70(int *a1)
{
  v22 = a1;
  v25 = &unk_26B08BF20;
  v31 = 0;
  v13 = *(a1 - 1);
  v17 = v13;
  v18 = *(v13 + 64);
  v14 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](a1);
  v23 = &v12 - v14;
  v15 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DCC00, &qword_26B087700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v27 = &v12 - v15;
  v31 = v1;
  v19 = *(v2 + 16);
  v30 = v19;
  v20 = *(v2 + 24);
  v29 = v20;
  sub_26B07A140();
  v24 = 0;
  v3 = sub_26B07A160();
  (*(*(v3 - 8) + 56))(v27, 0, 1);
  sub_26AEF6558(v16, v23, v22);
  v21 = (*(v17 + 80) + 64) & ~*(v17 + 80);
  v4 = swift_allocObject();
  v5 = v19;
  v6 = v20;
  v7 = v21;
  v8 = v22;
  v9 = v4;
  v10 = v23;
  v26 = v9;
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v5;
  v9[5] = v6;
  v9[6] = *(v8 + 4);
  v9[7] = *(v8 + 5);
  sub_26AF68AA4(v10, v9 + v7, v8);
  v28 = sub_26AF449A0(v24, v24, v27, v25, v26, MEMORY[0x277D84F78] + 8);
  sub_26AEA08A4(v27);
}

void SoftwareUpdateContentView.headerView.getter(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v33 = a1;
  v7[2] = 0;
  v7[4] = MEMORY[0x277CE14C0];
  v7[6] = MEMORY[0x277CDE580];
  v9 = MEMORY[0x277CE1198];
  v43 = MEMORY[0x277CDFAD8];
  v36 = MEMORY[0x277CDE800];
  v16 = sub_26AF6B62C;
  v65 = 0;
  v64 = 0;
  v23 = 0;
  v28 = sub_26B078FF0();
  v25 = *(v28 - 8);
  v26 = v28 - 8;
  v7[0] = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v27 = v7 - v7[0];
  v7[3] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DD0C0, &unk_26B08BEA0);
  v15 = v33[2];
  v70 = v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDC50, &unk_26B087430);
  v11 = 255;
  v7[1] = sub_26B078BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0D0, &unk_26B08BEB0);
  sub_26B079AB0();
  swift_getTupleTypeMetadata2();
  v7[5] = sub_26B079BB0();
  swift_getWitnessTable();
  v30 = sub_26B079250();
  WitnessTable = swift_getWitnessTable();
  v32 = sub_26B079990();
  v8 = (*(*(v32 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23);
  v21 = v7 - v8;
  v34 = sub_26B078BF0();
  v10 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v9);
  v29 = v7 - v10;
  v20 = swift_getWitnessTable();
  v68 = v20;
  v69 = MEMORY[0x277CDFC48];
  v35 = swift_getWitnessTable();
  v66 = v34;
  v67 = v35;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v38 = *(OpaqueTypeMetadata2 - 8);
  v39 = OpaqueTypeMetadata2 - 8;
  v12 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v11);
  v40 = v7 - v12;
  v48 = sub_26B078BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0D8, &qword_26B08D280);
  v49 = sub_26B078BF0();
  v14 = *(*(v49 - 8) + 64);
  v13 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49);
  v46 = v7 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD130, &unk_26B08BED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD138, &unk_26B08D440);
  MEMORY[0x28223BE20](v30);
  v50 = v7 - v3;
  v65 = v7 - v3;
  v64 = v4;
  v63 = v33[3];
  v17 = &v51;
  v52 = v15;
  v53 = v63;
  v54 = v33[4];
  v55 = v33[5];
  v56 = v4;
  sub_26AF4D96C();
  v19 = 1;
  sub_26B079980();
  v24 = 0;
  sub_26B079700();
  v31 = sub_26B078B10();
  sub_26AF6B654(v21, v30, v31);
  v22 = sub_26B079190();
  sub_26AF0CF00();
  MEMORY[0x26D66C680](v22, v23, v24, v27, v34, v35);
  (*(v25 + 8))(v27, v28);
  sub_26AF6B6A8(v29, v30, v31);
  v37 = sub_26AF4D99C(v33);
  v61 = v34;
  v62 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v5 = sub_26AF4DBD4();
  View.visibilityTransition(when:duration:)(v37 & 1, OpaqueTypeMetadata2, OpaqueTypeConformance2, v46, v5);
  (*(v38 + 8))(v40, OpaqueTypeMetadata2);
  v59 = OpaqueTypeConformance2;
  v60 = MEMORY[0x277CDF900];
  v42 = swift_getWitnessTable();
  v6 = sub_26AF6B6FC();
  v57 = v42;
  v58 = v6;
  v45 = swift_getWitnessTable();
  sub_26AE9463C(v46, v49, v50);
  sub_26AF6B784(v46, OpaqueTypeMetadata2);
  sub_26AF6B7E8(v50, v46, OpaqueTypeMetadata2, v48, v49);
  sub_26AE94B4C(v46, v49, v44);
  sub_26AF6B784(v46, OpaqueTypeMetadata2);
  sub_26AF6B784(v50, OpaqueTypeMetadata2);
}

uint64_t sub_26AF4B6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a6;
  v20 = a1;
  v13 = a2;
  v18 = a3;
  v19 = a4;
  v14 = a5;
  v10[1] = 0;
  v10[4] = MEMORY[0x277CE14C0];
  v17 = sub_26AF8A708;
  v21 = MEMORY[0x277CDE580];
  v37 = 0;
  v36 = 0;
  v39 = a2;
  v38 = a3;
  v10[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DD0C0, &unk_26B08BEA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDC50, &unk_26B087430);
  v10[3] = 255;
  v10[0] = sub_26B078BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0D0, &unk_26B08BEB0);
  sub_26B079AB0();
  swift_getTupleTypeMetadata2();
  v15 = sub_26B079BB0();
  WitnessTable = swift_getWitnessTable();
  v28 = sub_26B079250();
  v22 = *(v28 - 8);
  v23 = v28 - 8;
  v12 = *(v22 + 64);
  v11 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28);
  v26 = v10 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD130, &unk_26B08BED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD138, &unk_26B08D440);
  MEMORY[0x28223BE20](v17);
  v27 = v10 - v6;
  v37 = v10 - v6;
  v36 = v20;
  v31 = v7;
  v32 = v18;
  v33 = v19;
  v34 = v8;
  v35 = v20;
  sub_26B079240();
  v25 = swift_getWitnessTable();
  sub_26AE9463C(v26, v28, v27);
  v30 = *(v22 + 8);
  v29 = v22 + 8;
  v30(v26, v28);
  (*(v22 + 16))(v26, v27, v28);
  sub_26AE94B4C(v26, v28, v24);
  v30(v26, v28);
  return (v30)(v27, v28);
}