uint64_t sub_1CFC4D6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a2;
  v25 = a1;
  v5 = type metadata accessor for VoicemailDetailContainerView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF520, &qword_1CFCA6FD8);
  sub_1CFC9F408();
  v8 = v27;
  sub_1CFBE57FC(a1, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v6 + 80);
  v10 = swift_allocObject();
  v26 = v10;
  *(v10 + 16) = v8;
  v23 = type metadata accessor for VoicemailDetailContainerView;
  sub_1CFC5434C(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + ((v9 + 24) & ~v9), type metadata accessor for VoicemailDetailContainerView);
  v11 = objc_opt_self();

  v12 = [v11 currentDevice];
  v13 = [v12 userInterfaceIdiom];

  v14 = [v11 currentDevice];
  v15 = [v14 userInterfaceIdiom];

  sub_1CFC9DFA8();
  v17 = v16;
  sub_1CFC9CD28();
  v18 = v27;
  sub_1CFBE57FC(v25, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = swift_allocObject();
  result = sub_1CFC5434C(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + ((v9 + 16) & ~v9), v23);
  v21 = v26;
  *a3 = sub_1CFC54248;
  *(a3 + 8) = v21;
  *(a3 + 16) = v13 == 0;
  *(a3 + 24) = v15;
  *(a3 + 32) = v17;
  *(a3 + 40) = v18;
  *(a3 + 48) = sub_1CFC542CC;
  *(a3 + 56) = v19;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  return result;
}

uint64_t sub_1CFC4DA04()
{
  type metadata accessor for VoicemailDetailContainerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF520, &qword_1CFCA6FD8);
  sub_1CFC9F408();
  sub_1CFC2510C();
}

uint64_t sub_1CFC4DA68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CFC9EBF8();
  *a1 = result;
  return result;
}

uint64_t sub_1CFC4DA94@<X0>(_BYTE *a2@<X8>)
{
  v3 = sub_1CFC9EBA8();
  v4 = sub_1CFC9EBF8();
  sub_1CFC9EBF8();
  result = sub_1CFC9EBF8();
  if (result != v3)
  {
    result = sub_1CFC9EBF8();
    v4 = result;
  }

  *a2 = v4;
  a2[1] = 0;
  return result;
}

id sub_1CFC4DB0C@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() systemBackgroundColor];
  *a1 = result;
  return result;
}

id sub_1CFC4DB5C@<X0>(SEL *a1@<X0>, void *a2@<X8>)
{
  result = [objc_opt_self() *a1];
  *a2 = result;
  return result;
}

uint64_t sub_1CFC4DBA0()
{
  type metadata accessor for VoicemailDetailContainerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF520, &qword_1CFCA6FD8);
  sub_1CFC9F408();
  v0 = sub_1CFC213E4();

  if (!v0)
  {
    return 0;
  }

  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_1CFC9BE28();
  v5 = v4;

  MEMORY[0x1D3871D30](v3, v5);

  MEMORY[0x1D3871D30](41, 0xE100000000000000);
  return 40;
}

uint64_t sub_1CFC4DCE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a4;
  v7 = sub_1CFC9E7B8();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CFC9EA18();
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1CFC9E8E8();
  v11 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF550, &qword_1CFCA7070);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - v16;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF558, &qword_1CFCA7078);
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v19 = &v34 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF560, &qword_1CFCA7080);
  v40 = *(v20 - 8);
  v41 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v38 = &v34 - v21;
  v48 = a2;
  v49 = a3;
  v50 = a1;
  sub_1CFC9EB98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF568, &qword_1CFCA7088);
  v22 = v35;
  sub_1CFBA57C0(&qword_1EE04D150, &qword_1EC4EF568, &qword_1CFCA7088, MEMORY[0x1E6981F48]);
  sub_1CFC9DE38();
  v23 = sub_1CFC9EBD8();
  sub_1CFC9E8D8();
  v24 = sub_1CFBA57C0(&unk_1EE04D588, &qword_1EC4EF550, &qword_1CFCA7070, MEMORY[0x1E697BE60]);
  MEMORY[0x1D3871470](v23, 0x4049000000000000, 0, v13, v14, v24);
  (*(v11 + 8))(v13, v36);
  (*(v15 + 8))(v17, v14);
  sub_1CFC9E7A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF570, &qword_1CFCA7090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFCA1DC0;
  LOBYTE(v23) = sub_1CFC9EB98();
  *(inited + 32) = v23;
  v26 = sub_1CFC9EB78();
  *(inited + 33) = v26;
  sub_1CFC9EB88();
  sub_1CFC9EB88();
  if (sub_1CFC9EB88() != v23)
  {
    sub_1CFC9EB88();
  }

  sub_1CFC9EB88();
  if (sub_1CFC9EB88() != v26)
  {
    sub_1CFC9EB88();
  }

  v27 = v39;
  v28 = v38;
  v51 = v14;
  v52 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1CFC9EF58();
  (*(v42 + 8))(v22, v43);
  (*(v37 + 8))(v19, v27);
  v30 = v44;
  sub_1CFC9E7A8();
  v31 = sub_1CFC9EB98();
  sub_1CFC9EB88();
  sub_1CFC9EB88();
  if (sub_1CFC9EB88() != v31)
  {
    sub_1CFC9EB88();
  }

  v51 = v27;
  v52 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v32 = v41;
  sub_1CFC9EFD8();
  (*(v46 + 8))(v30, v47);
  return (*(v40 + 8))(v28, v32);
}

uint64_t sub_1CFC4E350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF578, &qword_1CFCA7098);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = *(a2 + *(type metadata accessor for VoicemailDetailContainerView(0) + 32));

  v13 = v12;
  sub_1CFC9DFA8();
  sub_1CFC45B6C(a1, v13, &v28, v14);
  *v11 = sub_1CFC9E688();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF580, &qword_1CFCA70A0);
  sub_1CFC4E5E0(a1, a2, &v11[*(v15 + 44)]);
  sub_1CFBA29FC(v11, v8, &qword_1EC4EF578, &qword_1CFCA7098);
  v16 = v37;
  v39[8] = v36;
  v39[9] = v37;
  v17 = v32;
  v18 = v33;
  v39[4] = v32;
  v39[5] = v33;
  v19 = v35;
  v20 = v34;
  v39[6] = v34;
  v39[7] = v35;
  v21 = v28;
  v22 = v29;
  v39[0] = v28;
  v39[1] = v29;
  v23 = v31;
  v24 = v30;
  v39[2] = v30;
  v39[3] = v31;
  *(a3 + 128) = v36;
  *(a3 + 144) = v16;
  *(a3 + 64) = v17;
  *(a3 + 80) = v18;
  *(a3 + 96) = v20;
  *(a3 + 112) = v19;
  *a3 = v21;
  *(a3 + 16) = v22;
  v40 = v38;
  *(a3 + 160) = v38;
  *(a3 + 32) = v24;
  *(a3 + 48) = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF588, &qword_1CFCA70A8);
  sub_1CFBA29FC(v8, a3 + *(v25 + 48), &qword_1EC4EF578, &qword_1CFCA7098);
  sub_1CFC45FA8(v39, v41);
  sub_1CFBC2FB0(v11, &qword_1EC4EF578, &qword_1CFCA7098);
  sub_1CFBC2FB0(v8, &qword_1EC4EF578, &qword_1CFCA7098);
  v41[8] = v36;
  v41[9] = v37;
  v42 = v38;
  v41[4] = v32;
  v41[5] = v33;
  v41[6] = v34;
  v41[7] = v35;
  v41[0] = v28;
  v41[1] = v29;
  v41[2] = v30;
  v41[3] = v31;
  return sub_1CFC542F0(v41);
}

uint64_t sub_1CFC4E5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v122 = a2;
  v119 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF590, &qword_1CFCA70B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v114 = &v106 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF598, &qword_1CFCA70B8);
  v117 = *(v6 - 8);
  v118 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v113 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v112 = &v106 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF5A0, &qword_1CFCA70C0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v120 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v126 = &v106 - v13;
  v106 = type metadata accessor for VoicemailCustomBannerView(0);
  MEMORY[0x1EEE9AC00](v106);
  v110 = (&v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF5A8, &qword_1CFCA70C8);
  MEMORY[0x1EEE9AC00](v107);
  v111 = &v106 - v15;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF5B0, &qword_1CFCA70D0);
  v116 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v109 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v108 = &v106 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF5B8, &qword_1CFCA70D8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v125 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v106 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF5C0, &qword_1CFCA70E0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v124 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v106 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF5C8, &qword_1CFCA70E8);
  v30 = *(*(v29 - 8) + 56);
  v31 = 1;
  v123 = v28;
  v30(v28, 1, 1, v29);
  swift_getKeyPath();
  v32 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel___observationRegistrar;
  *&v147[0] = a1;
  sub_1CFC55814(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  v115 = v32;
  sub_1CFC9C158();

  v33 = *(a1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__hasSmartActions);
  v127 = v23;
  if (v33 == 1)
  {
    v34 = type metadata accessor for VoicemailDetailContainerView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF528, &unk_1CFCA6FE0);
    sub_1CFC9F408();
    v35 = *&v147[0];
    swift_getKeyPath();
    *&v147[0] = v35;
    sub_1CFC55814(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel, &protocol conformance descriptor for VoicemailSmartActionsBannerViewModel);
    sub_1CFC9C158();
    v23 = v127;

    v36 = *(v35 + 48);

    v31 = 1;
    if (v36 == 1)
    {
      v37 = (v122 + *(v34 + 28));
      v39 = *v37;
      v38 = v37[1];

      sub_1CFC9F408();
      v40 = v110;
      *v110 = v39;
      *(v40 + 8) = v38;
      type metadata accessor for VoicemailSmartActionsBannerViewModel(0);
      sub_1CFC9F418();
      sub_1CFC9F538();
      sub_1CFC9E268();
      v41 = v111;
      sub_1CFC5434C(v40, v111, type metadata accessor for VoicemailCustomBannerView);
      v42 = (v41 + *(v107 + 36));
      v43 = v166;
      v42[4] = v165;
      v42[5] = v43;
      v42[6] = v167;
      v44 = v162;
      *v42 = v161;
      v42[1] = v44;
      v45 = v164;
      v42[2] = v163;
      v42[3] = v45;
      v46 = sub_1CFC9EBC8();
      v47 = v109;
      sub_1CFBCCE88(v41, v109, &qword_1EC4EF5A8, &qword_1CFCA70C8);
      v48 = v47 + *(v121 + 36);
      *v48 = v46;
      *(v48 + 8) = 0u;
      *(v48 + 24) = 0u;
      *(v48 + 40) = 1;
      v49 = v47;
      v50 = v108;
      sub_1CFBCCE88(v49, v108, &qword_1EC4EF5B0, &qword_1CFCA70D0);
      v23 = v127;
      sub_1CFBCCE88(v50, v127, &qword_1EC4EF5B0, &qword_1CFCA70D0);
      v31 = 0;
    }
  }

  v51 = 1;
  (*(v116 + 56))(v23, v31, 1, v121);
  swift_getKeyPath();
  *&v147[0] = a1;
  sub_1CFC9C158();

  v52 = v122;
  v53 = v118;
  if (*(a1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isUnknownCaller) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF570, &qword_1CFCA7090);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1CFCA1DC0;
    v55 = sub_1CFC9EB78();
    *(v54 + 32) = v55;
    v56 = sub_1CFC9EB98();
    *(v54 + 33) = v56;
    v57 = sub_1CFC9EB88();
    sub_1CFC9EB88();
    if (sub_1CFC9EB88() != v55)
    {
      v57 = sub_1CFC9EB88();
    }

    sub_1CFC9EB88();
    if (sub_1CFC9EB88() != v56)
    {
      v57 = sub_1CFC9EB88();
    }

    v58 = v114;
    *v114 = v57;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF5E8, &qword_1CFCA7150);
    sub_1CFC4FF74(v52, v58 + *(v59 + 44));
    v60 = sub_1CFC9EBC8();
    sub_1CFC9CD28();
    sub_1CFC9DE18();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v69 = v113;
    sub_1CFBCCE88(v58, v113, &qword_1EC4EF590, &qword_1CFCA70B0);
    v70 = v69 + *(v53 + 36);
    *v70 = v60;
    *(v70 + 8) = v62;
    *(v70 + 16) = v64;
    *(v70 + 24) = v66;
    *(v70 + 32) = v68;
    *(v70 + 40) = 0;
    v71 = v69;
    v72 = v112;
    sub_1CFBCCE88(v71, v112, &qword_1EC4EF598, &qword_1CFCA70B8);
    sub_1CFBCCE88(v72, v126, &qword_1EC4EF598, &qword_1CFCA70B8);
    v51 = 0;
  }

  v73 = v126;
  (*(v117 + 56))(v126, v51, 1, v53);
  sub_1CFC4F438(a1, &v128);
  LODWORD(v122) = sub_1CFC9EBC8();
  sub_1CFC9CD28();
  sub_1CFC9DE18();
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v134 = 0;
  LODWORD(v121) = sub_1CFC9EBA8();
  sub_1CFC9CD28();
  sub_1CFC9DE18();
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v89 = v88;
  LOBYTE(v135) = 0;
  v90 = v124;
  sub_1CFBA29FC(v123, v124, &qword_1EC4EF5C0, &qword_1CFCA70E0);
  v91 = v125;
  sub_1CFBA29FC(v127, v125, &qword_1EC4EF5B8, &qword_1CFCA70D8);
  v92 = v120;
  sub_1CFBA29FC(v73, v120, &qword_1EC4EF5A0, &qword_1CFCA70C0);
  v93 = v90;
  v94 = v119;
  sub_1CFBA29FC(v93, v119, &qword_1EC4EF5C0, &qword_1CFCA70E0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF5D8, &qword_1CFCA7140);
  sub_1CFBA29FC(v91, v94 + v95[12], &qword_1EC4EF5B8, &qword_1CFCA70D8);
  sub_1CFBA29FC(v92, v94 + v95[16], &qword_1EC4EF5A0, &qword_1CFCA70C0);
  v96 = v94 + v95[20];
  *&v140 = v133;
  v137 = v130;
  v138 = v131;
  v139 = v132;
  v135 = v128;
  v136 = v129;
  v97 = v122;
  BYTE8(v140) = v122;
  *&v141 = v75;
  *(&v141 + 1) = v77;
  *&v142 = v79;
  *(&v142 + 1) = v81;
  LOBYTE(v143) = 0;
  v98 = v121;
  BYTE8(v143) = v121;
  *&v144 = v83;
  *(&v144 + 1) = v85;
  *&v145 = v87;
  *(&v145 + 1) = v89;
  v146 = 0;
  *(v96 + 176) = 0;
  v99 = v136;
  *v96 = v135;
  *(v96 + 16) = v99;
  v100 = v138;
  *(v96 + 32) = v137;
  *(v96 + 48) = v100;
  v101 = v139;
  v102 = v140;
  v103 = v142;
  *(v96 + 96) = v141;
  *(v96 + 112) = v103;
  *(v96 + 64) = v101;
  *(v96 + 80) = v102;
  v104 = v144;
  *(v96 + 128) = v143;
  *(v96 + 144) = v104;
  *(v96 + 160) = v145;
  sub_1CFBA29FC(&v135, v147, &qword_1EC4EF5E0, &qword_1CFCA7148);
  sub_1CFBC2FB0(v126, &qword_1EC4EF5A0, &qword_1CFCA70C0);
  sub_1CFBC2FB0(v127, &qword_1EC4EF5B8, &qword_1CFCA70D8);
  sub_1CFBC2FB0(v123, &qword_1EC4EF5C0, &qword_1CFCA70E0);
  v147[2] = v130;
  v147[3] = v131;
  v147[4] = v132;
  v148 = v133;
  v147[0] = v128;
  v147[1] = v129;
  v149 = v97;
  v150 = v75;
  v151 = v77;
  v152 = v79;
  v153 = v81;
  v154 = 0;
  v155 = v98;
  v156 = v83;
  v157 = v85;
  v158 = v87;
  v159 = v89;
  v160 = 0;
  sub_1CFBC2FB0(v147, &qword_1EC4EF5E0, &qword_1CFCA7148);
  sub_1CFBC2FB0(v92, &qword_1EC4EF5A0, &qword_1CFCA70C0);
  sub_1CFBC2FB0(v125, &qword_1EC4EF5B8, &qword_1CFCA70D8);
  return sub_1CFBC2FB0(v124, &qword_1EC4EF5C0, &qword_1CFCA70E0);
}

double sub_1CFC4F438@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_1CFC1FB4C())
  {
    v4 = objc_allocWithZone(type metadata accessor for DDActionsResponder());

    v6 = sub_1CFC53AE0(v5);
    v7 = sub_1CFC9E688();
    LOBYTE(v15) = 0;
    sub_1CFC4FBCC(a1, v6, &v19);
    *&v12 = v7;
    *(&v12 + 1) = 0x4010000000000000;
    v13[0] = 0;
    *&v13[8] = v19;
    v13[24] = v20[0];
    *&v13[32] = *&v20[8];
    v14 = *&v20[24];
    *&v20[16] = *&v13[16];
    v21 = *&v13[32];
    *&v22 = v14;
    v19 = v12;
    *v20 = *v13;
    v18 = 1;
    HIBYTE(v23) = 1;
    sub_1CFBA29FC(&v12, &v15, &qword_1EC4EF688, &qword_1CFCA7238);
    sub_1CFBA29FC(&v12, &v15, &qword_1EC4EF688, &qword_1CFCA7238);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF680, &qword_1CFCA7230);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF688, &qword_1CFCA7238);
    sub_1CFBA57C0(&qword_1EE04D190, &qword_1EC4EF680, &qword_1CFCA7230, MEMORY[0x1E69817F8]);
    sub_1CFBA57C0(&qword_1EE04D178, &qword_1EC4EF688, &qword_1CFCA7238, MEMORY[0x1E6981870]);
    sub_1CFC9E798();

    sub_1CFBC2FB0(&v12, &qword_1EC4EF688, &qword_1CFCA7238);
    sub_1CFBC2FB0(&v12, &qword_1EC4EF688, &qword_1CFCA7238);
    *&v20[16] = *&v16[16];
    v21 = *&v16[32];
    v22 = *&v16[48];
    v23 = *&v16[64];
    v19 = v15;
    *v20 = *v16;
  }

  else
  {
    v8 = sub_1CFC9E588();
    LOBYTE(v19) = 1;
    sub_1CFC4F850(&v12);
    *&v17[48] = *&v13[25];
    *&v17[39] = *&v13[16];
    *&v17[23] = *v13;
    *&v17[7] = v12;
    *&v16[1] = *v17;
    *&v16[17] = *&v17[16];
    *&v16[33] = *&v17[32];
    v18 = 0;
    v15 = v8;
    v16[0] = v19;
    *&v16[49] = *&v17[48];
    v16[65] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF680, &qword_1CFCA7230);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF688, &qword_1CFCA7238);
    sub_1CFBA57C0(&qword_1EE04D190, &qword_1EC4EF680, &qword_1CFCA7230, MEMORY[0x1E69817F8]);
    sub_1CFBA57C0(&qword_1EE04D178, &qword_1EC4EF688, &qword_1CFCA7238, MEMORY[0x1E6981870]);
    sub_1CFC9E798();
  }

  v9 = v21;
  *(a2 + 32) = *&v20[16];
  *(a2 + 48) = v9;
  *(a2 + 64) = v22;
  *(a2 + 80) = v23;
  result = *&v19;
  v11 = *v20;
  *a2 = v19;
  *(a2 + 16) = v11;
  return result;
}

uint64_t sub_1CFC4F78C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  sub_1CFC55814(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v5 = 0x4038000000000000;
  if (*(a1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isUnknownCaller))
  {
    v5 = 0x4028000000000000;
  }

  *a2 = v5;
  *(a2 + 8) = 0;
  return result;
}

double sub_1CFC4F850@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1CFC9E5D8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1CFC9E5C8();
  sub_1CFC9E5B8();
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = objc_opt_self();
  v3 = [v27 bundleForClass_];
  sub_1CFC9BE28();

  sub_1CFC9E5A8();

  sub_1CFC9E5B8();
  sub_1CFC9E5F8();
  v4 = sub_1CFC9EDD8();
  v6 = v5;
  v8 = v7;
  sub_1CFC9E908();
  v9 = sub_1CFC9ED68();
  v11 = v10;
  v13 = v12;
  sub_1CFBB44C0(v4, v6, v8 & 1);

  sub_1CFC9EC58();
  v14 = sub_1CFC9EDC8();
  v16 = v15;
  v18 = v17;

  sub_1CFBB44C0(v9, v11, v13 & 1);

  v19 = [v27 bundleForClass_];
  sub_1CFC9BE28();

  sub_1CFBB4460();
  v20 = sub_1CFC9ED88();
  v22 = v21;
  LOBYTE(v9) = v23;
  v25 = v24;
  sub_1CFBB44C0(v14, v16, v18 & 1);

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v20;
  *(a1 + 24) = v22;
  *(a1 + 32) = v9 & 1;
  *(a1 + 40) = v25;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  sub_1CFBB45F4(v20, v22, v9 & 1);

  sub_1CFBB44C0(v20, v22, v9 & 1);

  return result;
}

double sub_1CFC4FBCC@<D0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = sub_1CFC9E5D8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1CFC9E5C8();
  sub_1CFC9E5B8();
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v31 = objc_opt_self();
  v5 = [v31 bundleForClass_];
  sub_1CFC9BE28();

  sub_1CFC9E5A8();

  sub_1CFC9E5B8();
  sub_1CFC4DBA0();
  sub_1CFC9E5A8();

  sub_1CFC9E5B8();
  sub_1CFC9E5F8();
  v6 = sub_1CFC9EDD8();
  v8 = v7;
  v10 = v9;
  sub_1CFC9E908();
  v11 = sub_1CFC9ED68();
  v13 = v12;
  v15 = v14;
  sub_1CFBB44C0(v6, v8, v10 & 1);

  sub_1CFC9EC48();
  v16 = sub_1CFC9EDC8();
  v18 = v17;
  v20 = v19;

  sub_1CFBB44C0(v11, v13, v15 & 1);

  v21 = [v31 bundleForClass_];
  sub_1CFC9BE28();

  sub_1CFBB4460();
  v22 = sub_1CFC9ED88();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_1CFBB44C0(v16, v18, v20 & 1);

  *a3 = v22;
  *(a3 + 8) = v24;
  *(a3 + 16) = v26 & 1;
  *(a3 + 24) = v28;
  *(a3 + 32) = a1;
  *(a3 + 40) = a2;
  v29 = a2;

  sub_1CFBB45F4(v22, v24, v26 & 1);

  sub_1CFBB44C0(v22, v24, v26 & 1);

  return result;
}

uint64_t sub_1CFC4FF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF5F8, &qword_1CFCA7180);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF600, &qword_1CFCA7188);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;
  *v15 = sub_1CFC9E588();
  *(v15 + 1) = 0x4024000000000000;
  v15[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF608, &qword_1CFCA7190);
  sub_1CFC50614(a1, &unk_1F4C6DCF8, sub_1CFC55864, &v15[*(v16 + 44)]);
  *v9 = sub_1CFC9E678();
  *(v9 + 1) = 0x4034000000000000;
  v9[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF610, &qword_1CFCA7198);
  sub_1CFC50614(a1, &unk_1F4C6DC58, sub_1CFC543B4, &v9[*(v17 + 44)]);
  sub_1CFBA29FC(v15, v12, &qword_1EC4EF600, &qword_1CFCA7188);
  sub_1CFBA29FC(v9, v6, &qword_1EC4EF5F8, &qword_1CFCA7180);
  sub_1CFBA29FC(v12, a2, &qword_1EC4EF600, &qword_1CFCA7188);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF618, &qword_1CFCA71A0);
  sub_1CFBA29FC(v6, a2 + *(v18 + 48), &qword_1EC4EF5F8, &qword_1CFCA7180);
  sub_1CFBC2FB0(v9, &qword_1EC4EF5F8, &qword_1CFCA7180);
  sub_1CFBC2FB0(v15, &qword_1EC4EF600, &qword_1CFCA7188);
  sub_1CFBC2FB0(v6, &qword_1EC4EF5F8, &qword_1CFCA7180);
  return sub_1CFBC2FB0(v12, &qword_1EC4EF600, &qword_1CFCA7188);
}

uint64_t sub_1CFC501F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25[1] = a1;
  v3 = type metadata accessor for VoicemailDetailContainerView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF650, &unk_1CFCA7208);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF638, &qword_1CFCA71C0);
  v25[0] = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - v11;
  sub_1CFC9DDF8();
  v13 = sub_1CFC9DE08();
  (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  sub_1CFBE57FC(v2, v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_1CFC5434C(v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for VoicemailDetailContainerView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF640, &unk_1CFCA71C8);
  sub_1CFC543CC();
  sub_1CFC9F288();
  *&v12[*(v10 + 36)] = sub_1CFC9F0F8();
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  v18 = sub_1CFC9BE28();
  v20 = v19;

  v28 = v18;
  v29 = v20;
  v21 = v2 + *(v4 + 48);
  v22 = *v21;
  v23 = *(v21 + 8);
  v26 = v22;
  v27 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE0, &qword_1CFCA5670);
  sub_1CFC9F258();
  v25[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF660, &unk_1CFCA7218);
  sub_1CFC544F8();
  sub_1CFBB4460();
  sub_1CFBA57C0(&qword_1EE04D148, &unk_1EC4EF660, &unk_1CFCA7218, MEMORY[0x1E6981F48]);
  sub_1CFC9EF78();

  return sub_1CFBC2FB0(v12, &qword_1EC4EF638, &qword_1CFCA71C0);
}

uint64_t sub_1CFC50614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43[1] = a2;
  v43[2] = a3;
  v51 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF620, &qword_1CFCA71A8);
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v43[0] = v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF628, &qword_1CFCA71B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v50 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v49 = v43 - v10;
  v44 = type metadata accessor for VoicemailDetailContainerView(0);
  v11 = *(v44 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF630, &qword_1CFCA71B8);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF638, &qword_1CFCA71C0);
  MEMORY[0x1EEE9AC00](v17);
  v45 = v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v43 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v43 - v23;
  v46 = a1;
  sub_1CFBE57FC(a1, v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v26 = swift_allocObject();
  sub_1CFC5434C(v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for VoicemailDetailContainerView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF640, &unk_1CFCA71C8);
  sub_1CFC543CC();
  sub_1CFC9F298();
  v27 = [objc_opt_self() currentDevice];
  v28 = [v27 userInterfaceIdiom];

  if (v28 == 5)
  {
    v29 = sub_1CFC9F108();
  }

  else
  {
    v29 = sub_1CFC9F0D8();
  }

  v30 = v29;
  (*(v14 + 32))(v21, v16, v13);
  *&v21[*(v17 + 36)] = v30;
  sub_1CFBCCE88(v21, v24, &qword_1EC4EF638, &qword_1CFCA71C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF520, &qword_1CFCA6FD8);
  sub_1CFC9F408();

  sub_1CFC9F408();
  v31 = v52;
  swift_getKeyPath();
  v52 = v31;
  sub_1CFC55814(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  LOBYTE(v30) = *(v31 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isDeletedMessage);

  if (v30)
  {
    v32 = 1;
    v33 = v48;
    v34 = v49;
    v35 = v47;
  }

  else
  {
    v36 = v43[0];
    sub_1CFC501F4(v43[0]);
    v35 = v47;
    v34 = v49;
    v37 = v36;
    v33 = v48;
    (*(v47 + 32))(v49, v37, v48);
    v32 = 0;
  }

  (*(v35 + 56))(v34, v32, 1, v33);
  v38 = v45;
  sub_1CFBA29FC(v24, v45, &qword_1EC4EF638, &qword_1CFCA71C0);
  v39 = v50;
  sub_1CFBA29FC(v34, v50, &qword_1EC4EF628, &qword_1CFCA71B0);
  v40 = v51;
  sub_1CFBA29FC(v38, v51, &qword_1EC4EF638, &qword_1CFCA71C0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF648, &qword_1CFCA7200);
  sub_1CFBA29FC(v39, v40 + *(v41 + 48), &qword_1EC4EF628, &qword_1CFCA71B0);
  sub_1CFBC2FB0(v34, &qword_1EC4EF628, &qword_1CFCA71B0);
  sub_1CFBC2FB0(v24, &qword_1EC4EF638, &qword_1CFCA71C0);
  sub_1CFBC2FB0(v39, &qword_1EC4EF628, &qword_1CFCA71B0);
  return sub_1CFBC2FB0(v38, &qword_1EC4EF638, &qword_1CFCA71C0);
}

uint64_t sub_1CFC50C2C()
{
  type metadata accessor for VoicemailDetailContainerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF520, &qword_1CFCA6FD8);
  sub_1CFC9F408();
  v0 = *(v3 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_createContactAction);

  v0(v1);
}

uint64_t sub_1CFC50D14@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1CFC9BE28();

  sub_1CFBB4460();
  result = sub_1CFC9EDF8();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_1CFC50E00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9F1A8();
  *a1 = result;
  return result;
}

uint64_t sub_1CFC50E40(uint64_t a1)
{
  type metadata accessor for VoicemailDetailContainerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE0, &qword_1CFCA5670);
  return sub_1CFC9F248();
}

uint64_t sub_1CFC50F08@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1CFC9BE28();

  sub_1CFBB4460();
  result = sub_1CFC9EDF8();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_1CFC50FF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9F1A8();
  *a1 = result;
  return result;
}

uint64_t sub_1CFC51034@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a1;
  v50 = a2;
  v3 = type metadata accessor for VoicemailDetailContainerView(0);
  v4 = *(v3 - 8);
  v45 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF650, &unk_1CFCA7208);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF670, &qword_1CFCA3640);
  v49 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v42 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v46 = &v42 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v51 = &v42 - v17;
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v44 = ObjCClassFromMetadata;
  v19 = objc_opt_self();
  v20 = [v19 bundleForClass_];
  v21 = sub_1CFC9BE28();
  v23 = v22;

  v52 = v21;
  v53 = v23;
  sub_1CFC9DDF8();
  v24 = sub_1CFC9DE08();
  (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
  sub_1CFBE57FC(a1, v6);
  v25 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v26 = swift_allocObject();
  sub_1CFC5434C(v6, v26 + v25, type metadata accessor for VoicemailDetailContainerView);
  sub_1CFBB4460();
  sub_1CFC9F2A8();
  v27 = [v19 bundleForClass_];
  v28 = sub_1CFC9BE28();
  v30 = v29;

  v52 = v28;
  v53 = v30;
  sub_1CFBE57FC(v43, v6);
  v31 = swift_allocObject();
  sub_1CFC5434C(v6, v31 + v25, type metadata accessor for VoicemailDetailContainerView);
  v32 = v46;
  sub_1CFC9F2C8();
  v33 = v49;
  v34 = *(v49 + 16);
  v35 = v47;
  v36 = v51;
  v34(v47, v51, v10);
  v37 = v48;
  v34(v48, v32, v10);
  v38 = v50;
  v34(v50, v35, v10);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF678, &qword_1CFCA7228);
  v34(&v38[*(v39 + 48)], v37, v10);
  v40 = *(v33 + 8);
  v40(v32, v10);
  v40(v36, v10);
  v40(v37, v10);
  return (v40)(v35, v10);
}

uint64_t sub_1CFC5158C()
{
  type metadata accessor for VoicemailDetailContainerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF520, &qword_1CFCA6FD8);
  sub_1CFC9F408();
  if (*(v3 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isDeletedMessage) == 1)
  {
    *(v3 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isDeletedMessage) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC55814(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();
  }

  sub_1CFC9F408();
  v1 = *(v3 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_reportSpamAction);

  v1(1);
}

uint64_t sub_1CFC51740()
{
  type metadata accessor for VoicemailDetailContainerView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF520, &qword_1CFCA6FD8);
  sub_1CFC9F408();
  v0 = *(v2 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_reportSpamAction);

  v0(0);
}

uint64_t sub_1CFC517D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF6A8, &qword_1CFCA75A0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v11 - v3;
  sub_1CFC9F538();
  sub_1CFC9E268();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF6B0, &qword_1CFCA75A8);
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  v6 = &v4[*(v2 + 36)];
  v7 = v11[5];
  *(v6 + 4) = v11[4];
  *(v6 + 5) = v7;
  *(v6 + 6) = v11[6];
  v8 = v11[1];
  *v6 = v11[0];
  *(v6 + 1) = v8;
  v9 = v11[3];
  *(v6 + 2) = v11[2];
  *(v6 + 3) = v9;
  sub_1CFC55178();
  sub_1CFC55230();
  sub_1CFC9EEA8();
  return sub_1CFBC2FB0(v4, &qword_1EC4EF6A8, &qword_1CFCA75A0);
}

uint64_t sub_1CFC5196C()
{
  v0 = sub_1CFC9E668();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9E658();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF6C0, &qword_1CFCA75B0);
  sub_1CFBA57C0(&qword_1EE04D2B8, &qword_1EC4EF6C0, &qword_1CFCA75B0, MEMORY[0x1E697FDF8]);
  sub_1CFC55814(&qword_1EE04D360, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
  sub_1CFC9EEC8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1CFC51B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v130 = a1;
  v129 = a3;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF6C8, &qword_1CFCA75B8);
  MEMORY[0x1EEE9AC00](v121);
  v122 = &v110 - v8;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF6D0, &qword_1CFCA75C0);
  MEMORY[0x1EEE9AC00](v128);
  v123 = &v110 - v9;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF6D8, &qword_1CFCA75C8);
  MEMORY[0x1EEE9AC00](v117);
  v118 = &v110 - v10;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF6E0, &qword_1CFCA75D0);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v110 - v11;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF6E8, &qword_1CFCA75D8);
  MEMORY[0x1EEE9AC00](v124);
  v112 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v113 = &v110 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v110 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v111 = &v110 - v19;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF6F0, &qword_1CFCA75E0);
  MEMORY[0x1EEE9AC00](v125);
  v127 = &v110 - v20;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF6F8, &qword_1CFCA75E8);
  MEMORY[0x1EEE9AC00](v114);
  v115 = &v110 - v21;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF700, &qword_1CFCA75F0);
  MEMORY[0x1EEE9AC00](v126);
  v116 = &v110 - v22;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF708, &qword_1CFCA75F8);
  MEMORY[0x1EEE9AC00](v131);
  v24 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v110 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v110 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v110 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v110 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v110 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v110 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v110 - v44;
  if (a2 <= 4)
  {
    if (!a2)
    {
      sub_1CFC9F538();
      sub_1CFC9E268();
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF710, &qword_1CFCA7600);
      (*(*(v93 - 8) + 16))(v39, v130, v93);
      v94 = &v39[*(v131 + 36)];
      v95 = v137;
      *(v94 + 4) = v136;
      *(v94 + 5) = v95;
      *(v94 + 6) = v138;
      v96 = v133;
      *v94 = v132;
      *(v94 + 1) = v96;
      v97 = v135;
      *(v94 + 2) = v134;
      *(v94 + 3) = v97;
      v98 = sub_1CFC9EBA8();
      sub_1CFC9DE18();
      v100 = v99;
      v102 = v101;
      v104 = v103;
      v106 = v105;
      sub_1CFBCCE88(v39, v17, &qword_1EC4EF708, &qword_1CFCA75F8);
      v107 = &v17[*(v124 + 36)];
      *v107 = v98;
      *(v107 + 1) = v100;
      *(v107 + 2) = v102;
      *(v107 + 3) = v104;
      *(v107 + 4) = v106;
      v107[40] = 0;
      v108 = v111;
      sub_1CFBCCE88(v17, v111, &qword_1EC4EF6E8, &qword_1CFCA75D8);
      sub_1CFBA29FC(v108, v115, &qword_1EC4EF6E8, &qword_1CFCA75D8);
      swift_storeEnumTagMultiPayload();
      sub_1CFC5539C();
      sub_1CFC55310();
      v109 = v116;
      sub_1CFC9E798();
      sub_1CFBA29FC(v109, v127, &qword_1EC4EF700, &qword_1CFCA75F0);
      swift_storeEnumTagMultiPayload();
      sub_1CFC55454();
      sub_1CFC554E0();
      sub_1CFC9E798();
      sub_1CFBC2FB0(v109, &qword_1EC4EF700, &qword_1CFCA75F0);
      v54 = v108;
      v90 = &qword_1EC4EF6E8;
      v91 = &qword_1CFCA75D8;
      return sub_1CFBC2FB0(v54, v90, v91);
    }

    if (a2 != 1)
    {
      goto LABEL_10;
    }

LABEL_8:
    v55 = dbl_1CFCA6FA0[a2 == 5] * a4;
    sub_1CFC9F538();
    if (v55 >= a5)
    {
      v83 = v131;
      v75 = v119;
      sub_1CFC9E268();
      v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF710, &qword_1CFCA7600);
      (*(*(v84 - 8) + 16))(v30, v130, v84);
      v85 = &v30[*(v83 + 36)];
      v86 = v137;
      *(v85 + 4) = v136;
      *(v85 + 5) = v86;
      *(v85 + 6) = v138;
      v87 = v133;
      *v85 = v132;
      *(v85 + 1) = v87;
      v88 = v135;
      *(v85 + 2) = v134;
      *(v85 + 3) = v88;
      v72 = &qword_1EC4EF708;
      v73 = &qword_1CFCA75F8;
      sub_1CFBCCE88(v30, v33, &qword_1EC4EF708, &qword_1CFCA75F8);
      sub_1CFBA29FC(v33, v118, &qword_1EC4EF708, &qword_1CFCA75F8);
      swift_storeEnumTagMultiPayload();
      sub_1CFC55310();
      sub_1CFC5539C();
      sub_1CFC9E798();
      v76 = v33;
    }

    else
    {
      sub_1CFC9E268();
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF710, &qword_1CFCA7600);
      (*(*(v56 - 8) + 16))(v36, v130, v56);
      v57 = &v36[*(v131 + 36)];
      v58 = v137;
      *(v57 + 4) = v136;
      *(v57 + 5) = v58;
      *(v57 + 6) = v138;
      v59 = v133;
      *v57 = v132;
      *(v57 + 1) = v59;
      v60 = v135;
      *(v57 + 2) = v134;
      *(v57 + 3) = v60;
      v61 = sub_1CFC9EBA8();
      sub_1CFC9CD28();
      sub_1CFC9DE18();
      v63 = v62;
      v65 = v64;
      v67 = v66;
      v69 = v68;
      v70 = v112;
      sub_1CFBCCE88(v36, v112, &qword_1EC4EF708, &qword_1CFCA75F8);
      v71 = v70 + *(v124 + 36);
      *v71 = v61;
      *(v71 + 8) = v63;
      *(v71 + 16) = v65;
      *(v71 + 24) = v67;
      *(v71 + 32) = v69;
      *(v71 + 40) = 0;
      v72 = &qword_1EC4EF6E8;
      v73 = &qword_1CFCA75D8;
      v74 = v113;
      sub_1CFBCCE88(v70, v113, &qword_1EC4EF6E8, &qword_1CFCA75D8);
      sub_1CFBA29FC(v74, v118, &qword_1EC4EF6E8, &qword_1CFCA75D8);
      swift_storeEnumTagMultiPayload();
      sub_1CFC55310();
      sub_1CFC5539C();
      v75 = v119;
      sub_1CFC9E798();
      v76 = v74;
    }

    sub_1CFBC2FB0(v76, v72, v73);
    v51 = &qword_1EC4EF6E0;
    v52 = &qword_1CFCA75D0;
    sub_1CFBA29FC(v75, v122, &qword_1EC4EF6E0, &qword_1CFCA75D0);
    swift_storeEnumTagMultiPayload();
    sub_1CFC55284();
    sub_1CFC5539C();
    v89 = v123;
    sub_1CFC9E798();
    sub_1CFBA29FC(v89, v127, &qword_1EC4EF6D0, &qword_1CFCA75C0);
    swift_storeEnumTagMultiPayload();
    sub_1CFC55454();
    sub_1CFC554E0();
    sub_1CFC9E798();
    sub_1CFBC2FB0(v89, &qword_1EC4EF6D0, &qword_1CFCA75C0);
    v54 = v75;
    goto LABEL_13;
  }

  if (a2 == 5)
  {
    goto LABEL_8;
  }

  if (a2 != 6)
  {
LABEL_10:
    sub_1CFC9F538();
    sub_1CFC9E268();
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF710, &qword_1CFCA7600);
    (*(*(v77 - 8) + 16))(v24, v130, v77);
    v78 = &v24[*(v131 + 36)];
    v79 = v137;
    *(v78 + 4) = v136;
    *(v78 + 5) = v79;
    *(v78 + 6) = v138;
    v80 = v133;
    *v78 = v132;
    *(v78 + 1) = v80;
    v81 = v135;
    *(v78 + 2) = v134;
    *(v78 + 3) = v81;
    v51 = &qword_1EC4EF708;
    v52 = &qword_1CFCA75F8;
    sub_1CFBCCE88(v24, v27, &qword_1EC4EF708, &qword_1CFCA75F8);
    sub_1CFBA29FC(v27, v122, &qword_1EC4EF708, &qword_1CFCA75F8);
    swift_storeEnumTagMultiPayload();
    sub_1CFC55284();
    sub_1CFC5539C();
    v82 = v123;
    sub_1CFC9E798();
    sub_1CFBA29FC(v82, v127, &qword_1EC4EF6D0, &qword_1CFCA75C0);
    swift_storeEnumTagMultiPayload();
    sub_1CFC55454();
    sub_1CFC554E0();
    sub_1CFC9E798();
    sub_1CFBC2FB0(v82, &qword_1EC4EF6D0, &qword_1CFCA75C0);
    v54 = v27;
    goto LABEL_13;
  }

  sub_1CFC9F538();
  sub_1CFC9E268();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF710, &qword_1CFCA7600);
  (*(*(v46 - 8) + 16))(v42, v130, v46);
  v47 = &v42[*(v131 + 36)];
  v48 = v137;
  *(v47 + 4) = v136;
  *(v47 + 5) = v48;
  *(v47 + 6) = v138;
  v49 = v133;
  *v47 = v132;
  *(v47 + 1) = v49;
  v50 = v135;
  *(v47 + 2) = v134;
  *(v47 + 3) = v50;
  v51 = &qword_1EC4EF708;
  v52 = &qword_1CFCA75F8;
  sub_1CFBCCE88(v42, v45, &qword_1EC4EF708, &qword_1CFCA75F8);
  sub_1CFBA29FC(v45, v115, &qword_1EC4EF708, &qword_1CFCA75F8);
  swift_storeEnumTagMultiPayload();
  sub_1CFC5539C();
  sub_1CFC55310();
  v53 = v116;
  sub_1CFC9E798();
  sub_1CFBA29FC(v53, v127, &qword_1EC4EF700, &qword_1CFCA75F0);
  swift_storeEnumTagMultiPayload();
  sub_1CFC55454();
  sub_1CFC554E0();
  sub_1CFC9E798();
  sub_1CFBC2FB0(v53, &qword_1EC4EF700, &qword_1CFCA75F0);
  v54 = v45;
LABEL_13:
  v90 = v51;
  v91 = v52;
  return sub_1CFBC2FB0(v54, v90, v91);
}

uint64_t sub_1CFC52BC8@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_1CFC9E988();
  v2 = *(v1 - 8);
  v30 = v1;
  v31 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF788, &qword_1CFCA7708);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF790, &unk_1CFCA7710);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  sub_1CFC9E978();
  v19 = &v18[*(v13 + 44)];
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF138, &qword_1CFCA63B0) + 28);
  v21 = *MEMORY[0x1E69816C8];
  v22 = sub_1CFC9F1D8();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = swift_getKeyPath();
  sub_1CFC9E998();
  sub_1CFC9EC98();
  sub_1CFC55814(&qword_1EE04D270, MEMORY[0x1E697C8A8], MEMORY[0x1E697C8A0]);
  v23 = v30;
  sub_1CFC9EE98();
  (*(v31 + 8))(v4, v23);
  KeyPath = swift_getKeyPath();
  v25 = &v11[*(v6 + 44)];
  *v25 = KeyPath;
  *(v25 + 1) = 1;
  v25[16] = 0;
  sub_1CFBA29FC(v18, v15, &qword_1EC4EF790, &unk_1CFCA7710);
  sub_1CFBA29FC(v11, v8, &qword_1EC4EF788, &qword_1CFCA7708);
  v26 = v32;
  sub_1CFBA29FC(v15, v32, &qword_1EC4EF790, &unk_1CFCA7710);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF798, &qword_1CFCA7780);
  sub_1CFBA29FC(v8, v26 + *(v27 + 48), &qword_1EC4EF788, &qword_1CFCA7708);
  sub_1CFBC2FB0(v11, &qword_1EC4EF788, &qword_1CFCA7708);
  sub_1CFBC2FB0(v18, &qword_1EC4EF790, &unk_1CFCA7710);
  sub_1CFBC2FB0(v8, &qword_1EC4EF788, &qword_1CFCA7708);
  return sub_1CFBC2FB0(v15, &qword_1EC4EF790, &unk_1CFCA7710);
}

uint64_t sub_1CFC52F5C@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1CFC9E588();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF780, &qword_1CFCA7700);
  return sub_1CFC52BC8(a2 + *(v3 + 44));
}

uint64_t sub_1CFC52FB4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF718, &qword_1CFCA7608);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF720, &qword_1CFCA7610);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  if (a2)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF728, &qword_1CFCA7618);
    (*(*(v12 - 8) + 16))(v8, a1, v12);
    swift_storeEnumTagMultiPayload();
    sub_1CFC5556C();
    sub_1CFBA57C0(&unk_1EE04D2A0, &qword_1EC4EF728, &qword_1CFCA7618, MEMORY[0x1E697FDF8]);
    return sub_1CFC9E798();
  }

  else
  {
    v14 = sub_1CFC9F538();
    v16 = v15;
    sub_1CFC5332C(&v33);
    v17 = v33;
    v19 = v34;
    v18 = v35;
    v26[1] = a3;
    v20 = *(&v35 + 1);
    v26[0] = v6;
    v21 = v36;
    *&v28 = v14;
    *(&v28 + 1) = v16;
    v29 = v33;
    v30 = v34;
    v31 = v35;
    v32 = v36;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF728, &qword_1CFCA7618);
    (*(*(v22 - 8) + 16))(v11, a1, v22);
    v23 = &v11[*(v9 + 36)];
    v24 = v31;
    *(v23 + 2) = v30;
    *(v23 + 3) = v24;
    v23[64] = v32;
    v25 = v29;
    *v23 = v28;
    *(v23 + 1) = v25;
    *&v33 = v14;
    *(&v33 + 1) = v16;
    v34 = v17;
    v35 = v19;
    v36 = v18;
    v37 = v20;
    v38 = v21;
    sub_1CFBA29FC(&v28, v27, &unk_1EC4EF730, &qword_1CFCA7620);
    sub_1CFBC2FB0(&v33, &unk_1EC4EF730, &qword_1CFCA7620);
    sub_1CFBA29FC(v11, v8, &qword_1EC4EF720, &qword_1CFCA7610);
    swift_storeEnumTagMultiPayload();
    sub_1CFC5556C();
    sub_1CFBA57C0(&unk_1EE04D2A0, &qword_1EC4EF728, &qword_1CFCA7618, MEMORY[0x1E697FDF8]);
    sub_1CFC9E798();
    return sub_1CFBC2FB0(v11, &qword_1EC4EF720, &qword_1CFCA7610);
  }
}

__n128 sub_1CFC5332C@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF740, &qword_1CFCA7628);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CFCA1DC0;
  sub_1CFC9F128();
  sub_1CFC9CD28();
  *(v2 + 32) = sub_1CFC9F478();
  *(v2 + 40) = v3;
  sub_1CFC9F138();
  sub_1CFC9CD28();
  *(v2 + 48) = sub_1CFC9F478();
  *(v2 + 56) = v4;
  sub_1CFC9F5B8();
  sub_1CFC9F5C8();
  sub_1CFC9F488();
  sub_1CFC9E058();
  v5 = sub_1CFC9E1E8();
  v6 = sub_1CFC9EBB8();
  *a1 = v8;
  result = v10;
  *(a1 + 8) = v9;
  *(a1 + 24) = v10;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1CFC535E0@<X0>(uint64_t a1@<X0>, double (**a2)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1CFBE57FC(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1CFC5434C(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for VoicemailDetailContainerView);
  *a2 = sub_1CFC541C8;
  a2[1] = v7;
  return result;
}

uint64_t sub_1CFC536E0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF758, &qword_1CFCA7690);
    v2 = sub_1CFCA0238();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF760, &qword_1CFCA7698);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1CFBCC9AC(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1CFBCC9AC(v29, v30);
    result = sub_1CFCA0048();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_1CFBCC9AC(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1CFC539F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFC55650();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1CFC53A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFC55650();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1CFC53AB8(uint64_t a1)
{
  sub_1CFC55650();
  sub_1CFC9E768();
  __break(1u);
}

id sub_1CFC53AE0(uint64_t a1)
{
  v2 = v1;
  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v4 = sub_1CFC9D938();
  __swift_project_value_buffer(v4, qword_1EE052308);
  v5 = sub_1CFC9D918();
  v6 = sub_1CFC9FAC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1CFB9F000, v5, v6, "DDActionsResponder init", v7, 2u);
    MEMORY[0x1D3873280](v7, -1, -1);
  }

  *&v2[OBJC_IVAR____TtC10CallsAppUI18DDActionsResponder_viewModel] = a1;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for DDActionsResponder();
  return objc_msgSendSuper2(&v9, sel_init);
}

id sub_1CFC53BF4()
{
  v1 = v0;
  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v2 = sub_1CFC9D938();
  __swift_project_value_buffer(v2, qword_1EE052308);
  v3 = sub_1CFC9D918();
  v4 = sub_1CFC9FAC8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1CFB9F000, v3, v4, "DDActionsResponder deiniting", v5, 2u);
    MEMORY[0x1D3873280](v5, -1, -1);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for DDActionsResponder();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t type metadata accessor for VoicemailDetailContainerView(uint64_t a1)
{
  result = qword_1EE04E508;
  if (!qword_1EE04E508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFC53F98(uint64_t a1)
{
  sub_1CFC54158(319, &unk_1EE050000, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1CFC54104(319, &qword_1EE04D170, type metadata accessor for VoicemailDetailContainerViewModel);
    if (v2 <= 0x3F)
    {
      sub_1CFC54104(319, &qword_1EE04D168, type metadata accessor for VoicemailSmartActionsBannerViewModel);
      if (v3 <= 0x3F)
      {
        sub_1CFBB02CC();
        if (v4 <= 0x3F)
        {
          sub_1CFBA2D80(319, &qword_1EE04CEF0, 0x1E69DC738);
          if (v5 <= 0x3F)
          {
            sub_1CFC54158(319, &qword_1EE04FFC0, MEMORY[0x1E6981790]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1CFC54104(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFC9F428();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1CFC54158(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_1CFC541C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for VoicemailDetailContainerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1CFC4D140(a1, v6, a2);
}

uint64_t sub_1CFC54248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for VoicemailDetailContainerView(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1CFC4DCE4(a1, v6, v7, a2);
}

uint64_t sub_1CFC5434C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1CFC543CC()
{
  result = qword_1EE04D4A8;
  if (!qword_1EE04D4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF640, &unk_1CFCA71C8);
    sub_1CFBA57C0(&qword_1EE04D200, &qword_1EC4ED840, &qword_1CFCA29B0, MEMORY[0x1E697D658]);
    sub_1CFC54484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D4A8);
  }

  return result;
}

unint64_t sub_1CFC54484()
{
  result = qword_1EE04E530;
  if (!qword_1EE04E530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04E530);
  }

  return result;
}

unint64_t sub_1CFC544F8()
{
  result = qword_1EE04D498;
  if (!qword_1EE04D498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF638, &qword_1CFCA71C0);
    sub_1CFBA57C0(&unk_1EE04D1F0, &qword_1EC4EF630, &qword_1CFCA71B8, MEMORY[0x1E697D680]);
    sub_1CFC545B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D498);
  }

  return result;
}

unint64_t sub_1CFC545B0()
{
  result = qword_1EE04E528;
  if (!qword_1EE04E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04E528);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = (type metadata accessor for VoicemailDetailContainerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_1CFC07CFC(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[7];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF520, &qword_1CFCA6FD8);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF528, &unk_1CFCA6FE0);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CFC547C8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for VoicemailDetailContainerView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

id sub_1CFC5483C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD168]) init];
  swift_getKeyPath();
  sub_1CFC55814(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v4 = *(a2 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message);
  if (v4)
  {
    v5 = v4;
    sub_1CFC9D618();
  }

  v6 = sub_1CFC9F728();

  [v3 setText_];

  v7 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 setFont_];

  [v3 setAdjustsFontForContentSizeCategory_];
  [v3 setDataDetectorTypes_];
  [v3 setEditable_];
  v8 = v3;
  [v8 setUserInteractionEnabled_];
  [v8 setScrollEnabled_];
  v9 = [objc_opt_self() clearColor];
  [v8 setBackgroundColor_];

  [v8 setTextContainerInset_];
  v10 = [v8 textContainer];
  [v10 setLineFragmentPadding_];

  return v8;
}

uint64_t sub_1CFC54AB4(uint64_t a1, char a2, int a3, int a4, id a5, double a6, double a7, double a8, double a9)
{
  v11 = *MEMORY[0x1E69DE090];
  if ((a2 & 1) == 0)
  {
    v11 = *&a1;
  }

  LODWORD(a8) = 1148846080;
  LODWORD(a9) = 1132068864;
  [a5 systemLayoutSizeFittingSize:v11 withHorizontalFittingPriority:*(MEMORY[0x1E69DE090] + 8) verticalFittingPriority:{a8, a9}];
  if ((a2 & 1) == 0)
  {
    return a1;
  }

  return v12;
}

void sub_1CFC54B40(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1CFC55814(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel, &protocol conformance descriptor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v5 = *(a3 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message);
  if (v5)
  {
    v6 = v5;
    sub_1CFC9D618();
  }

  v7 = sub_1CFC9F728();

  [a1 setText_];

  v8 = [a1 attributedText];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 mutableCopy];

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF748, &qword_1CFCA7658);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1CFCA1DD0;
      *(inited + 32) = sub_1CFC9F768();
      *(inited + 40) = v12;
      swift_getKeyPath();
      sub_1CFC9C158();

      *(inited + 48) = *(a3 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__smartActionCustomRanges);

      v13 = sub_1CFBE5A9C(inited);
      swift_setDeallocating();
      sub_1CFBC2FB0(inited + 32, &qword_1EC4EF750, &qword_1CFCA7688);
      sub_1CFC536E0(v13);

      v14 = sub_1CFC9F698();

      [v10 dd:-1 makeLinksForResultsInAttributesOfType:v14 context:?];

      v15 = [v10 copy];
      [a1 setAttributedText_];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CFC54DFC()
{
  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v0 = sub_1CFC9D938();
  __swift_project_value_buffer(v0, qword_1EE052308);
  v1 = sub_1CFC9D918();
  v2 = sub_1CFC9FAC8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1CFB9F000, v1, v2, "canHandleClientAction", v3, 2u);
    MEMORY[0x1D3873280](v3, -1, -1);
  }

  return 1;
}

void sub_1CFC54ED8()
{
  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v0 = sub_1CFC9D938();
  __swift_project_value_buffer(v0, qword_1EE052308);
  oslog = sub_1CFC9D918();
  v1 = sub_1CFC9FAC8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1CFB9F000, oslog, v1, "handleClientAction", v2, 2u);
    MEMORY[0x1D3873280](v2, -1, -1);
  }
}

uint64_t getEnumTagSinglePayload for VoicemailDetailContainerView.ScrollViewMaskViewModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1CFC550B4()
{
  result = qword_1EE04E460;
  if (!qword_1EE04E460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04E460);
  }

  return result;
}

unint64_t sub_1CFC55178()
{
  result = qword_1EE04D518;
  if (!qword_1EE04D518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF6A8, &qword_1CFCA75A0);
    sub_1CFBA57C0(&qword_1EE04D2C0, &unk_1EC4EF6B0, &qword_1CFCA75A8, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D518);
  }

  return result;
}

unint64_t sub_1CFC55230()
{
  result = qword_1EE04E518;
  if (!qword_1EE04E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04E518);
  }

  return result;
}

unint64_t sub_1CFC55284()
{
  result = qword_1EE04D328;
  if (!qword_1EE04D328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF6E0, &qword_1CFCA75D0);
    sub_1CFC55310();
    sub_1CFC5539C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D328);
  }

  return result;
}

unint64_t sub_1CFC55310()
{
  result = qword_1EE04D450;
  if (!qword_1EE04D450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF6E8, &qword_1CFCA75D8);
    sub_1CFC5539C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D450);
  }

  return result;
}

unint64_t sub_1CFC5539C()
{
  result = qword_1EE04D508;
  if (!qword_1EE04D508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF708, &qword_1CFCA75F8);
    sub_1CFBA57C0(&qword_1EE04D2B0, &qword_1EC4EF710, &qword_1CFCA7600, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D508);
  }

  return result;
}

unint64_t sub_1CFC55454()
{
  result = qword_1EE04D348;
  if (!qword_1EE04D348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF700, &qword_1CFCA75F0);
    sub_1CFC5539C();
    sub_1CFC55310();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D348);
  }

  return result;
}

unint64_t sub_1CFC554E0()
{
  result = qword_1EE04D2F0;
  if (!qword_1EE04D2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF6D0, &qword_1CFCA75C0);
    sub_1CFC55284();
    sub_1CFC5539C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D2F0);
  }

  return result;
}

unint64_t sub_1CFC5556C()
{
  result = qword_1EE04D4F8;
  if (!qword_1EE04D4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF720, &qword_1CFCA7610);
    sub_1CFBA57C0(&unk_1EE04D2A0, &qword_1EC4EF728, &qword_1CFCA7618, MEMORY[0x1E697FDF8]);
    sub_1CFBA57C0(&qword_1EE04D2E8, &unk_1EC4EF730, &qword_1CFCA7620, MEMORY[0x1E697FB38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D4F8);
  }

  return result;
}

unint64_t sub_1CFC55650()
{
  result = qword_1EE04E458;
  if (!qword_1EE04E458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04E458);
  }

  return result;
}

unint64_t sub_1CFC556B4()
{
  result = qword_1EE04D310;
  if (!qword_1EE04D310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4EF768, &qword_1CFCA76B8);
    sub_1CFC55454();
    sub_1CFC554E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D310);
  }

  return result;
}

unint64_t sub_1CFC55740()
{
  result = qword_1EE04D340;
  if (!qword_1EE04D340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF778, &qword_1CFCA76C0);
    sub_1CFC5556C();
    sub_1CFBA57C0(&unk_1EE04D2A0, &qword_1EC4EF728, &qword_1CFCA7618, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04D340);
  }

  return result;
}

uint64_t sub_1CFC55814(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CFC55874(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  sub_1CFCA00E8();
  swift_getAssociatedConformanceWitness();
  return sub_1CFCA0078();
}

id SectionController.anyCell<A>(collectionView:for:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a1;
  v28 = a3;
  v29 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1CFC9FEB8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(AssociatedTypeWitness - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v27 - v20;
  (*(v22 + 16))(v16, a2, a5, v19);
  v23 = swift_dynamicCast();
  v24 = *(v17 + 56);
  if (v23)
  {
    v24(v13, 0, 1, AssociatedTypeWitness);
    (*(v17 + 32))(v21, v13, AssociatedTypeWitness);
    v25 = (*(a6 + 136))(v27, v21, v28, v29, a6);
    (*(v17 + 8))(v21, AssociatedTypeWitness);
    return v25;
  }

  else
  {
    v24(v13, 1, 1, AssociatedTypeWitness);
    (*(v11 + 8))(v13, v10);
    return [objc_allocWithZone(MEMORY[0x1E69DC7F8]) init];
  }
}

uint64_t SectionController.anyPerformPrimaryAction<A>(for:cell:deselect:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a3;
  v30 = a4;
  v28 = a2;
  v31 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1CFC9FEB8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(AssociatedTypeWitness - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v27 - v21;
  (*(v23 + 16))(v17, a1, a6, v20);
  v24 = swift_dynamicCast();
  v25 = *(v18 + 56);
  if (v24)
  {
    v25(v14, 0, 1, AssociatedTypeWitness);
    (*(v18 + 32))(v22, v14, AssociatedTypeWitness);
    (*(a7 + 176))(v22, v28, v29, v30, v31, a7);
    return (*(v18 + 8))(v22, AssociatedTypeWitness);
  }

  else
  {
    v25(v14, 1, 1, AssociatedTypeWitness);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t SectionController.anyContextMenu<A>(for:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a3;
  v27 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1CFC9FEB8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(AssociatedTypeWitness - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v26 - v19;
  (*(v21 + 16))(v15, a1, a4, v18);
  v22 = swift_dynamicCast();
  v23 = *(v16 + 56);
  if (v22)
  {
    v23(v12, 0, 1, AssociatedTypeWitness);
    (*(v16 + 32))(v20, v12, AssociatedTypeWitness);
    v24 = (*(a5 + 184))(v20, v27, v28, a5);
    (*(v16 + 8))(v20, AssociatedTypeWitness);
    return v24;
  }

  else
  {
    v23(v12, 1, 1, AssociatedTypeWitness);
    (*(v10 + 8))(v12, v9);
    return 0;
  }
}

uint64_t SectionDragDelegate.dragItems<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1CFC9FEB8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  (*(v18 + 16))(&v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3, v16);
  v19 = swift_dynamicCast();
  (*(*(AssociatedTypeWitness - 8) + 56))(v14, v19 ^ 1u, 1, AssociatedTypeWitness);
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v21 = v26;
  v20[4] = a4;
  v20[5] = v21;
  v20[6] = v5;
  swift_unknownObjectRetain();
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v31 = v21;
  v32 = sub_1CFC56EF4;
  v33 = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF7B0, &qword_1CFCA7790);
  sub_1CFC56454(sub_1CFC568B8, v27, MEMORY[0x1E69E73E0], v22, v23, &v34);

  (*(v12 + 8))(v14, v11);
  if (v34)
  {
    return v34;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1CFC56454@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v29 = a4;
  v28 = a1;
  v25 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v6, v19);
  v23 = 1;
  if ((*(v14 + 48))(v21, 1, v13) != 1)
  {
    (*(v14 + 32))(v17, v21, v13);
    v28(v17, v11);
    (*(v14 + 8))(v17, v13);
    if (v7)
    {
      return (*(v25 + 32))(v26, v11, a3);
    }

    v23 = 0;
  }

  return (*(*(v29 - 8) + 56))(a6, v23, 1);
}

uint64_t SectionController.contentUnavailableConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CFC9DBB8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1CFC567A0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CFC9DBB8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1CFC5680C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  return SectionDragDelegate.dragItems<A>(for:)(a1, a2, AssociatedTypeWitness, a3, AssociatedConformanceWitness);
}

uint64_t sub_1CFC568B8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 48))();
  *a1 = result;
  return result;
}

uint64_t sub_1CFC56B8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1CFC56BD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1CFC56C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF7C8, &unk_1CFCA78E0);
  swift_getAssociatedTypeWitness();
  sub_1CFC56E90();
  v5 = sub_1CFC9F868();
  sub_1CFC9F918();
  swift_getWitnessTable();
  if ((sub_1CFC9FA78() & 1) == 0)
  {
    (*(a2 + 64))(v5);
  }

  return result;
}

uint64_t sub_1CFC56D44@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  sub_1CFBB4598(a1, &v8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a4, v6 ^ 1u, 1, AssociatedTypeWitness);
}

uint64_t objectdestroyTm_5()
{

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

unint64_t sub_1CFC56E90()
{
  result = qword_1EC4EF7D0;
  if (!qword_1EC4EF7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EF7C8, &unk_1CFCA78E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EF7D0);
  }

  return result;
}

uint64_t sub_1CFC56F38(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1CFC56F7C()
{
  sub_1CFC9F768();
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1CFC9F728();

  v2 = [v0 initWithSuiteName_];

  qword_1EC4EF7E0 = v2;
}

id _s10CallsAppUI21RecentsViewControllerC14navigationItemSo012UINavigationH0Cvg_0()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage____navItem;
  v2 = *&v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage____navItem];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage____navItem];
  }

  else
  {
    v4 = [v0 title];
    if (v4)
    {
      v5 = v4;
      sub_1CFC9F768();
    }

    v6 = objc_allocWithZone(type metadata accessor for ObservingNavigationItem());
    v7 = sub_1CFC9F728();

    v8 = [v6 initWithTitle_];

    v9 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t RecentsViewController.hasLegacyUnreadVoicemails.getter()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_hasLegacyUnreadVoicemails;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t RecentsViewController.hasLegacyUnreadVoicemails.setter(char a1)
{
  v3 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_hasLegacyUnreadVoicemails;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id RecentsViewController.meCardSharingEnabled.getter()
{
  if (qword_1EC4ED028 != -1)
  {
    swift_once();
  }

  result = qword_1EC4EF7E0;
  if (qword_1EC4EF7E0)
  {
    return [qword_1EC4EF7E0 BOOLForKey_];
  }

  return result;
}

uint64_t sub_1CFC57250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v4[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CFC572EC, 0, 0);
}

uint64_t sub_1CFC572EC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = [objc_allocWithZone(MEMORY[0x1E69D8AF8]) init];
  v0[5] = v3;
  v4 = sub_1CFC9F998();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  sub_1CFC9F968();
  v5 = v3;
  v6 = v2;
  v7 = sub_1CFC9F958();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v5;
  v8[5] = v6;
  v10 = sub_1CFBDC644(0, 0, v1, &unk_1CFCA7BF0, v8);
  v0[6] = v10;
  v11 = swift_task_alloc();
  v0[7] = v11;
  v12 = sub_1CFBA2D80(0, &qword_1EE04CF78, 0x1E69D8AF8);
  *v11 = v0;
  v11[1] = sub_1CFC57494;
  v13 = v0[2];

  return MEMORY[0x1EEE6DA40](v13, v10, v12);
}

uint64_t sub_1CFC57494()
{

  return MEMORY[0x1EEE6DFA0](sub_1CFC575AC, 0, 0);
}

uint64_t sub_1CFC575AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CFC57614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_1CFC9F968();
  v5[5] = sub_1CFC9F958();
  v7 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFC576B0, v7, v6);
}

uint64_t sub_1CFC576B0()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  [v2 setDelegate_];
  v4 = *(v1 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController__configurationProvider);
  *(v1 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController__configurationProvider) = v2;

  *v3 = v2;
  v7 = v0[1];
  v5 = v2;

  return v7();
}

uint64_t sub_1CFC57758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1CFBA29FC(a3, v25 - v10, &qword_1EC4ED950, &qword_1CFCA2710);
  v12 = sub_1CFC9F998();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1CFBC2FB0(v11, &qword_1EC4ED950, &qword_1CFCA2710);
  }

  else
  {
    sub_1CFC9F988();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1CFC9F938();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1CFC9F7A8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_1CFBA2D80(0, &qword_1EE04CF78, 0x1E69D8AF8);

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_1CFBA2D80(0, &qword_1EE04CF78, 0x1E69D8AF8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1CFC57A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1CFBA29FC(a3, v25 - v10, &qword_1EC4ED950, &qword_1CFCA2710);
  v12 = sub_1CFC9F998();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1CFBC2FB0(v11, &qword_1EC4ED950, &qword_1CFCA2710);
  }

  else
  {
    sub_1CFC9F988();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1CFC9F938();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1CFC9F7A8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_1CFC57D08()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___searchController;
  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___searchController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___searchController);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCF10]) initWithSearchResultsController_];
    [v4 setSearchResultsUpdater_];
    [v4 setObscuresBackgroundDuringPresentation_];
    [v4 setDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1CFC57DC4()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___doneButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___doneButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___doneButtonItem);
  }

  else
  {
    sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
    sub_1CFBA2D80(0, &qword_1EE04CEF8, 0x1E69DC628);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = v0;
    sub_1CFC9FDF8();
    v5 = sub_1CFC9FB08();
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1CFC57EE8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1CFC9C138();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    RecentsViewController.setEditing(_:animated:)(0, 1);
    v7[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_isEditingFavorites] = 0;
    v8 = *&v7[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoriteSection];
    if (v8)
    {
      *(v8 + 40) = 0;
      v9 = *(v8 + 104);
      if (*(v9 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__isEditing))
      {
        KeyPath = swift_getKeyPath();
        v18[0] = v18;
        MEMORY[0x1EEE9AC00](KeyPath);
        v18[-2] = v9;
        LOBYTE(v18[-1]) = 0;
        v18[2] = v9;
        sub_1CFC6A6B0(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig, &unk_1CFCA69F8);

        sub_1CFC9C148();
      }

      else
      {
        *(v9 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__isEditing) = 0;
      }

      sub_1CFBCD8F8();
      sub_1CFC83538();
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v12 = v11;
        v13 = *(sub_1CFBAA4F8() + 16);

        if (v13)
        {
          v18[0] = v8;
          v14 = 0;
          v15 = (v3 + 8);
          do
          {
            MEMORY[0x1D386E620](v14, 0);
            v16 = sub_1CFC9C0C8();
            v17 = [v12 cellForItemAtIndexPath_];

            if (v17)
            {
              sub_1CFC9FD88();
            }

            ++v14;
            (*v15)(v5, v2);
          }

          while (v13 != v14);
        }
      }

      else
      {
      }
    }

    sub_1CFBAB5EC();
  }
}

Swift::Void __swiftcall RecentsViewController.setEditing(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v3 = v2;
  v17.receiver = v3;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_setEditing_animated_, _, animated);
  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 6)
  {
    v8 = *&v3[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterTitleButton];
    if (!v8)
    {
      goto LABEL_6;
    }

    v9 = v8;
    v10 = sub_1CFC9E118();
    sub_1CFC9CC78();
    v10(&v16, 0);
  }

  else
  {
    v9 = sub_1CFC585F4();
    [v9 setEnabled_];
  }

LABEL_6:
  sub_1CFBAB5EC();
  if ([v3 isEditing])
  {
    v11 = sub_1CFBC31CC()[2];

    v12 = sub_1CFC583A0();
    if (v11)
    {
      v13 = *&v3[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsSection];
      v14 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_items;
      swift_beginAccess();
      v15 = v11 == *(*(v13 + v14) + 16);
    }

    else
    {
      v15 = 1;
    }

    [v12 setEnabled_];
  }
}

id sub_1CFC583A0()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___clearAllButtonItem;
  v2 = *&v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___clearAllButtonItem];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___clearAllButtonItem];
  }

  else
  {
    ObjectType = swift_getObjectType();
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    sub_1CFC9BE28();

    v20[3] = ObjectType;
    v20[0] = v0;
    v7 = v0;
    v8 = sub_1CFC9F728();

    if (ObjectType)
    {
      v9 = __swift_project_boxed_opaque_existential_1(v20, ObjectType);
      v10 = *(ObjectType - 8);
      v11 = MEMORY[0x1EEE9AC00](v9);
      v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v13, v11);
      v14 = sub_1CFCA02A8();
      (*(v10 + 8))(v13, ObjectType);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
    }

    else
    {
      v14 = 0;
    }

    v15 = objc_allocWithZone(MEMORY[0x1E69DC708]);
    v16 = [v15 initWithTitle:v8 style:0 target:v14 action:{sel_showClearAllActionSheet, v20[0]}];

    swift_unknownObjectRelease();
    v17 = *&v0[v1];
    *&v0[v1] = v16;
    v3 = v16;

    v2 = 0;
  }

  v18 = v2;
  return v3;
}

id sub_1CFC585F4()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___filterButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___filterButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___filterButtonItem);
  }

  else
  {
    v4 = v0;
    sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
    v5 = sub_1CFC9F728();
    v6 = [objc_opt_self() systemImageNamed_];

    v7 = sub_1CFC9FB58();
    v8 = *(v0 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1CFC586DC()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___addFavoriteItem;
  v2 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___addFavoriteItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___addFavoriteItem);
  }

  else
  {
    sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
    v4 = sub_1CFC9F728();
    v5 = [objc_opt_self() systemImageNamed_];

    sub_1CFBA2D80(0, &qword_1EE04CEF8, 0x1E69DC628);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = v0;
    sub_1CFC9FDF8();
    v7 = sub_1CFC9FB58();
    v8 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_1CFC58848(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (*(Strong + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoritesDataSource))
    {
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      objc_allocWithZone(type metadata accessor for FavoritePickerViewController());
      v5 = swift_retain_n();
      v6 = sub_1CFC2AB48(v5, sub_1CFC6C0F0, v4);
      [v3 presentViewController:v6 animated:1 completion:0];
    }
  }
}

char *sub_1CFC5893C(uint64_t a1, void *a2)
{
  v6 = 1;
  v3 = objc_allocWithZone(type metadata accessor for PersonalNicknameMenuView());
  v4 = a2;
  return PersonalNicknameMenuView.init(displayContext:personalNicknameMenuViewDelegate:)(&v6, a2, &protocol witness table for RecentsViewController);
}

id sub_1CFC58994(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void sub_1CFC589FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
    [*&v3[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_snapController] startOnboardingOrEditForMode:1 fromViewController:v3];
  }
}

Swift::Void __swiftcall RecentsViewController.presentOnboardingViewController()()
{
  [v0 dismissViewControllerAnimated:1 completion:0];
  v1 = *&v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_snapController];

  [v1 startOnboardingOrEditForMode:1 fromViewController:v0];
}

void sub_1CFC58AD8(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = a3[3];
    v7 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v6);
    v8 = (*(v7 + 24))(v6, v7);
    [v5 presentViewController:v8 animated:1 completion:0];
  }
}

void sub_1CFC58B88()
{
  v2 = v0;
  v3 = sub_1CFC9C138();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoriteSection;
  if (!*&v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoriteSection] || !*&v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoritesDataSource])
  {
    return;
  }

  v8 = sub_1CFC9C718();

  v9 = *(v8 + 16);

  if (!v9)
  {
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    objc_allocWithZone(type metadata accessor for FavoritePickerViewController());
    v20 = swift_retain_n();
    v21 = sub_1CFC2AB48(v20, sub_1CFC6C1DC, v19);
    [v2 presentViewController:v21 animated:1 completion:0];

LABEL_23:

    return;
  }

  v39 = v4;
  v10 = sub_1CFC9C718();
  v11 = *(sub_1CFBAA4F8() + 16);

  v12 = sub_1CFBAA810(v11, v10);
  v16 = v15 >> 1;
  if (__OFSUB__(v15 >> 1, v14))
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v11 = v12;
  v4 = v15 >> 1;
  if ((v15 >> 1) - v14 >= 4)
  {
    v4 = v14 + 4;
    if (__OFADD__(v14, 4))
    {
      goto LABEL_46;
    }
  }

  if (v4 < v14)
  {
    goto LABEL_42;
  }

  if (v16 < v14)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v16 < v4)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v4 < 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if ((v15 & 1) == 0)
  {
LABEL_12:
    sub_1CFBAA740(v11, v13, v14, v15 & 1 | (2 * v4));
    v18 = v17;
    goto LABEL_20;
  }

  v37 = v13;
  v38 = v15;
  v1 = v14;
  sub_1CFCA02D8();
  swift_unknownObjectRetain_n();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    swift_unknownObjectRelease();
    v22 = MEMORY[0x1E69E7CC0];
  }

  v23 = *(v22 + 16);

  if (__OFSUB__(v4, v1))
  {
    goto LABEL_47;
  }

  if (v23 != v4 - v1)
  {
LABEL_48:
    swift_unknownObjectRelease();
    v14 = v1;
    v13 = v37;
    LOBYTE(v15) = v38;
    goto LABEL_12;
  }

  v18 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v18)
  {
    goto LABEL_21;
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_20:
  swift_unknownObjectRelease();
LABEL_21:
  v24 = *(v18 + 16);

  if (v24)
  {

    sub_1CFC8C8F8(v25, 1);

    goto LABEL_23;
  }

  v2[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_isEditingFavorites] = 1;
  v26 = *&v2[v7];
  if (v26)
  {
    *(v26 + 40) = 1;
    v27 = *(v26 + 104);
    if (*(v27 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__isEditing) == 1)
    {
      *(v27 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__isEditing) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v38 = &v36;
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v36 - 2) = v27;
      *(&v36 - 8) = 1;
      v40 = v27;
      sub_1CFC6A6B0(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig, &unk_1CFCA69F8);

      sub_1CFC9C148();
    }

    sub_1CFBCD8F8();
    sub_1CFC83538();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v30 = Strong;
      v31 = *(sub_1CFBAA4F8() + 16);

      if (v31)
      {
        v38 = v26;
        v32 = 0;
        v33 = (v39 + 8);
        do
        {
          MEMORY[0x1D386E620](v32, 0);
          v34 = sub_1CFC9C0C8();
          v35 = [v30 cellForItemAtIndexPath_];

          if (v35)
          {
            sub_1CFC9FD78();
          }

          ++v32;
          (*v33)(v6, v3);
        }

        while (v31 != v32);
      }
    }

    else
    {
    }
  }

  sub_1CFBAB5EC();
}

void sub_1CFC590EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    RecentsViewController.setEditing(_:animated:)(1, 1);
  }
}

char *RecentsViewController.__allocating_init(recentsDetailProvider:recentsDataSource:recentsRemindersDataSource:favoritesDataSource:legacyMailboxService:keypadViewController:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  sub_1CFBA29FC(a1, v43, &unk_1EC4EF810, &qword_1CFCA7900);
  v39 = a5;
  sub_1CFBA29FC(a5, v42, &qword_1EC4EE538, qword_1CFCA9BD0);
  sub_1CFBA29FC(v43, v41, &unk_1EC4EF810, &qword_1CFCA7900);
  v15 = objc_allocWithZone(v8);
  v16 = a2;
  sub_1CFC6A630(a6);
  v17 = sub_1CFC698E8(v41, v16, a4, 0, 0, 0, 0);

  sub_1CFBC2FB0(v43, &unk_1EC4EF810, &qword_1CFCA7900);
  v18 = &v17[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider];
  v19 = *&v17[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider];
  v20 = *&v17[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider + 8];
  v21 = *&v17[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider + 16];
  *v18 = a6;
  v18[1] = a7;
  v18[2] = a8;
  v22 = v17;
  sub_1CFC6A670(v19, v20, v21);
  v23 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_legacyMailboxService;
  swift_beginAccess();
  sub_1CFBA5808(v42, &v22[v23]);
  swift_endAccess();
  v24 = &v22[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDismissalAction];
  v25 = *&v22[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDismissalAction];
  v26 = *&v22[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDismissalAction + 8];
  *v24 = 0;
  *(v24 + 1) = 0;
  sub_1CFBABFA0(v25, v26);

  v27 = *&v22[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsRemindersDataSource];
  *&v22[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsRemindersDataSource] = a3;
  v37 = a3;

  v28 = *v18;
  v29 = v18[1];
  v30 = v18[2];
  *v18 = a6;
  v18[1] = a7;
  v18[2] = a8;
  sub_1CFC6A630(a6);
  sub_1CFC6A670(v28, v29, v30);
  if (a3)
  {
    v31 = *&v22[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_detailsPresenter];
    type metadata accessor for RecentsSectionController(0);
    swift_allocObject();
    v32 = v37;

    v33 = sub_1CFC748C0(v32, v31, 1);
    v34 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsRemindersSection;
    *&v22[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsRemindersSection] = v33;

    v35 = *&v22[v34];
    if (v35)
    {
      *(v35 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_delegate + 8) = &off_1F4C6E200;
      swift_unknownObjectWeakAssign();
      if (*&v22[v34])
      {

        sub_1CFBA5464();
      }
    }

    sub_1CFBA5878();

    sub_1CFC6A670(a6, a7, a8);

    sub_1CFBC2FB0(v39, &qword_1EC4EE538, qword_1CFCA9BD0);
    sub_1CFBC2FB0(a1, &unk_1EC4EF810, &qword_1CFCA7900);
  }

  else
  {
    sub_1CFC6A670(a6, a7, a8);

    sub_1CFBC2FB0(v39, &qword_1EC4EE538, qword_1CFCA9BD0);
    sub_1CFBC2FB0(a1, &unk_1EC4EF810, &qword_1CFCA7900);
    *&v22[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsRemindersSection] = 0;
  }

  return v22;
}

char *RecentsViewController.__allocating_init(recentsDetailProvider:recentsDataSource:favoritesDataSource:legacyMailboxService:keypadViewController:recentsDismissalAction:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1CFBA29FC(a1, v30, &unk_1EC4EF810, &qword_1CFCA7900);
  v17 = objc_allocWithZone(v9);
  v18 = sub_1CFC698E8(v30, a2, a3, 0, 0, 0, 0);

  sub_1CFBC2FB0(a1, &unk_1EC4EF810, &qword_1CFCA7900);
  v19 = &v18[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider];
  v20 = *&v18[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider];
  v21 = *&v18[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider + 8];
  v22 = *&v18[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider + 16];
  *v19 = a5;
  *(v19 + 1) = a6;
  *(v19 + 2) = a7;
  v23 = v18;
  sub_1CFC6A670(v20, v21, v22);
  v24 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_legacyMailboxService;
  swift_beginAccess();
  sub_1CFBA5808(a4, &v23[v24]);
  swift_endAccess();
  v25 = &v23[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDismissalAction];
  v26 = *&v23[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDismissalAction];
  v27 = *&v23[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDismissalAction + 8];
  *v25 = a8;
  *(v25 + 1) = a9;
  sub_1CFBABFA0(v26, v27);

  return v23;
}

char *RecentsViewController.__allocating_init(recentsDetailProvider:recentsDataSource:favoritesDataSource:legacyMailboxService:keypadViewController:recentsDismissalAction:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1CFBA29FC(a1, v31, &unk_1EC4EF810, &qword_1CFCA7900);
  sub_1CFBA29FC(a4, v30, &qword_1EC4EE538, qword_1CFCA9BD0);
  if (a5)
  {
    v13 = nullsub_1;
  }

  else
  {
    v13 = 0;
  }

  v26 = v13;
  sub_1CFBA29FC(v31, v29, &unk_1EC4EF810, &qword_1CFCA7900);
  v14 = objc_allocWithZone(v7);
  v15 = sub_1CFC698E8(v29, a2, a3, 0, 0, 0, 0);

  sub_1CFBC2FB0(a4, &qword_1EC4EE538, qword_1CFCA9BD0);
  sub_1CFBC2FB0(a1, &unk_1EC4EF810, &qword_1CFCA7900);
  sub_1CFBC2FB0(v31, &unk_1EC4EF810, &qword_1CFCA7900);
  v16 = &v15[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider];
  v17 = *&v15[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider];
  v18 = *&v15[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider + 8];
  v19 = *&v15[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider + 16];
  *v16 = a5;
  *(v16 + 1) = v26;
  *(v16 + 2) = 0;
  v20 = v15;
  sub_1CFC6A670(v17, v18, v19);
  v21 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_legacyMailboxService;
  swift_beginAccess();
  sub_1CFBA5808(v30, &v20[v21]);
  swift_endAccess();
  v22 = &v20[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDismissalAction];
  v23 = *&v20[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDismissalAction];
  v24 = *&v20[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDismissalAction + 8];
  *v22 = a6;
  *(v22 + 1) = a7;
  sub_1CFBABFA0(v23, v24);

  return v20;
}

char *RecentsViewController.__allocating_init(recentsDetailProvider:recentsDataSource:favoritesDataSource:showDialer:addFavorite:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = sub_1CFC698E8(a1, a2, a3, a4, a5, a6, a7);

  return v16;
}

uint64_t sub_1CFC59868@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6995A70];
  v3 = sub_1CFC9CF08();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1CFC598DC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6995A88];
  v3 = sub_1CFC9CF08();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1CFC599B4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CFC9CF08();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_1CFC59A20(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    RecentsViewController.update(filterMode:animated:)(a1, 0);
  }
}

void RecentsViewController.update(filterMode:animated:)(uint64_t a1, int a2)
{
  v87 = a2;
  v3 = sub_1CFC9CF08();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v88 = &v71[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v71[-v7];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v71[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v86 = &v71[-v13];
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v71[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v89 = &v71[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v71[-v19];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v71[-v22];
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v71[-v26];
  v84 = *(v4 + 16);
  v84(&v71[-v26], a1, v3, v25);
  if ((*(v4 + 88))(v27, v3) == *MEMORY[0x1E6995A60])
  {
    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v28 = sub_1CFC9D938();
    __swift_project_value_buffer(v28, qword_1EE052308);
    v29 = sub_1CFC9D918();
    v30 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1CFB9F000, v29, v30, "Did tap call filtering button", v31, 2u);
      MEMORY[0x1D3873280](v31, -1, -1);
    }

    RecentsViewController.handleCallFilteringAction()();
    return;
  }

  v80 = v11;
  v81 = v20;
  v76 = v8;
  v32 = v4 + 8;
  v33 = *(v4 + 8);
  v33(v27, v3);
  v34 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel;
  v35 = *&v90[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel];
  sub_1CFC9CE88();

  sub_1CFC6A6B0(&qword_1EE04D668, MEMORY[0x1E6995AA8], MEMORY[0x1E6995AB8]);
  v83 = a1;
  LOBYTE(v35) = sub_1CFC9F6F8();
  v33(v23, v3);
  if ((v35 & 1) == 0)
  {
    v82 = v33;
    v74 = v34;
    v40 = *&v90[v34];
    sub_1CFC9CE88();

    v41 = *(v4 + 104);
    v72 = *MEMORY[0x1E6995A90];
    v78 = v4 + 104;
    v79 = v41;
    v41(v89);
    v42 = sub_1CFC6A6B0(&qword_1EE04D660, MEMORY[0x1E6995AA8], MEMORY[0x1E6995AC0]);
    sub_1CFC9F878();
    v73 = v42;
    sub_1CFC9F878();
    v75 = v4;
    if (aBlock == v97 && v92 == v98)
    {
      v43 = v82;
      v82(v89, v3);
      v43(v81, v3);
    }

    else
    {
      v44 = sub_1CFCA02B8();
      v43 = v82;
      v82(v89, v3);
      v43(v81, v3);

      if ((v44 & 1) == 0)
      {
        v45 = v90;
        v46 = v83;
        sub_1CFC9C788();
LABEL_19:
        v47 = *&v45[v74];
        v48 = v84;
        (v84)(v23, v46, v3);
        v49 = v47;
        sub_1CFC9CE98();

        v50 = v85;
        v48(v85, v46, v3);
        v51 = v86;
        v48(v86, v50, v3);
        v52 = v75;
        v53 = (*(v75 + 80) + 16) & ~*(v75 + 80);
        v54 = (v5 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
        v55 = swift_allocObject();
        (*(v52 + 32))(v55 + v53, v50, v3);
        *(v55 + v54) = v45;
        v56 = v45;
        v77 = v32;
        v90 = v55;
        if (v87)
        {
          sub_1CFC65230(v51, v56);
          v82(v51, v3);
          v57 = 0;
          v58 = 0;
        }

        else
        {
          v82(v51, v3);
          v59 = objc_opt_self();
          v58 = swift_allocObject();
          *(v58 + 16) = sub_1CFC6A6F8;
          *(v58 + 24) = v55;
          v60 = swift_allocObject();
          v57 = sub_1CFBF6EB4;
          *(v60 + 16) = sub_1CFBF6EB4;
          *(v60 + 24) = v58;
          v95 = sub_1CFBF6EB4;
          v96 = v60;
          aBlock = MEMORY[0x1E69E9820];
          v92 = 1107296256;
          v93 = sub_1CFC63D88;
          v94 = &block_descriptor_12;
          v61 = _Block_copy(&aBlock);

          [v59 performWithoutAnimation_];
          _Block_release(v61);
          LOBYTE(v59) = swift_isEscapingClosureAtFileLocation();

          if (v59)
          {
            __break(1u);
            return;
          }
        }

        sub_1CFBAD088();
        sub_1CFC5C900(0, 1);
        sub_1CFBAB5EC();
        v62 = *&v56[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterSegmentedControl];
        if (v62)
        {
          v89 = v57;
          v79(v80, *MEMORY[0x1E6995A70], v3);
          v63 = v62;
          sub_1CFC9F878();
          sub_1CFC9F878();
          if (aBlock == v97 && v92 == v98)
          {
            v82(v80, v3);

            v64 = *MEMORY[0x1E6995A78];
            goto LABEL_32;
          }

          v66 = sub_1CFCA02B8();
          v82(v80, v3);

          v64 = *MEMORY[0x1E6995A78];
          if (v66)
          {
            goto LABEL_32;
          }

          v79(v76, *MEMORY[0x1E6995A78], v3);
          sub_1CFC9F878();
          sub_1CFC9F878();
          if (aBlock == v97 && v92 == v98)
          {
            v82(v76, v3);

            goto LABEL_32;
          }

          v67 = sub_1CFCA02B8();
          v82(v76, v3);

          if (v67)
          {
LABEL_32:
            [v63 setHidden_];
            v79(v88, v64, v3);
            sub_1CFC9F878();
            sub_1CFC9F878();
            if (aBlock == v97 && v92 == v98)
            {
              v68 = 1;
            }

            else
            {
              v68 = sub_1CFCA02B8() & 1;
            }

            v69 = v89;
            v82(v88, v3);

            [v63 setSelectedSegmentIndex_];

            v65 = v69;
            goto LABEL_37;
          }

          v70 = v63;
          [v70 setHidden_];

          v65 = v89;
        }

        else
        {

          v65 = v57;
        }

LABEL_37:
        sub_1CFBABFA0(v65, v58);
        return;
      }
    }

    v45 = v90;
    v79(v23, v72, v3);
    sub_1CFC9C788();
    v43(v23, v3);
    v46 = v83;
    goto LABEL_19;
  }

  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v36 = sub_1CFC9D938();
  __swift_project_value_buffer(v36, qword_1EE052308);
  v37 = sub_1CFC9D918();
  v38 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1CFB9F000, v37, v38, "Filter mode did not change, not updating.", v39, 2u);
    MEMORY[0x1D3873280](v39, -1, -1);
  }
}

uint64_t sub_1CFC5A690(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v2 = result;
  if (*(result + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoriteSection))
  {

    sub_1CFC6ABDC(v2);
    if ((v3 & 1) == 0 && *&v2[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoritesDataSource])
    {

      v4 = sub_1CFC9C718();

      v5 = *(v4 + 16);

      v6 = v5 != 0;
      goto LABEL_8;
    }
  }

  v6 = 0;
LABEL_8:
  v7 = *&v2[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsRemindersSection];
  if (v7)
  {
    if (v6)
    {

      return 1;
    }

    else
    {
      v24 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsRemindersSection;
      v9 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
      swift_beginAccess();
      v25 = v2;
      v10 = *&v2[v9];
      v11 = *(v10 + 16);

      v26 = v11;
      if (v11)
      {
        v12 = 0;
        v13 = (v10 + 40);
        while (1)
        {
          if (v12 >= *(v10 + 16))
          {
            __break(1u);
            return result;
          }

          v14 = *v13;
          ObjectType = swift_getObjectType();
          v16 = *(v14 + 40);
          swift_unknownObjectRetain();
          v16(v27, ObjectType, v14);
          __swift_project_boxed_opaque_existential_1(v27, v27[3]);
          v17 = sub_1CFC9F6D8();
          LODWORD(v16) = *(v7 + 64);
          sub_1CFCA0338();
          v18 = v16 ? 3 : 1;
          MEMORY[0x1D3872880](v18);
          v19 = sub_1CFCA0378();
          swift_unknownObjectRelease();
          result = __swift_destroy_boxed_opaque_existential_1Tm(v27);
          if (v17 == v19)
          {
            break;
          }

          ++v12;
          v13 += 2;
          if (v26 == v12)
          {
            goto LABEL_20;
          }
        }

        v20 = *&v25[v24];

        if (!v20)
        {
          return 0;
        }

        v21 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_items;
        swift_beginAccess();
        v22 = *(v20 + v21);

        v23 = *(v22 + 16);

        return v23 != 0;
      }

      else
      {
LABEL_20:

        return 0;
      }
    }
  }

  else
  {
    v8 = v6;

    return v8;
  }
}

uint64_t sub_1CFC5A950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  *(v4 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CFC5A9EC, 0, 0);
}

uint64_t sub_1CFC5A9EC()
{
  if (qword_1EE04F6F0 != -1)
  {
    swift_once();
  }

  sub_1CFC9F968();
  v0[5] = sub_1CFC9F958();
  v2 = sub_1CFC9F938();
  v0[6] = v2;
  v0[7] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CFC5AAB0, v2, v1);
}

uint64_t sub_1CFC5AAB0()
{
  v1 = v0[3];
  if (*&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController__configurationProvider])
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[4];
    v5 = sub_1CFC9F998();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v1;
    v7 = v1;
    v8 = sub_1CFC57758(0, 0, v4, &unk_1CFCA7D50, v6);
    v0[8] = v8;
    sub_1CFBC2FB0(v4, &qword_1EC4ED950, &qword_1CFCA2710);
    v9 = swift_task_alloc();
    v0[9] = v9;
    v10 = sub_1CFBA2D80(0, &qword_1EE04CF78, 0x1E69D8AF8);
    *v9 = v0;
    v9[1] = sub_1CFC5AC78;

    return MEMORY[0x1EEE6DA40](v0 + 2, v8, v10);
  }
}

uint64_t sub_1CFC5AC78()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1CFC5ADBC, v3, v2);
}

uint64_t sub_1CFC5ADBC()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall RecentsViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF860, &qword_1CFCA4AD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v34 = &v33 - v4;
  v5 = sub_1CFC9FC18();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF868, &qword_1CFCA7908);
  v9 = *(v8 - 8);
  v37 = v8;
  v38 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v33 - v10;
  v11 = sub_1CFC9FC98();
  v12 = *(v11 - 8);
  *&v13 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41.receiver = v0;
  v41.super_class = ObjectType;
  objc_msgSendSuper2(&v41, sel_viewDidLoad, v13);
  sub_1CFC9C1D8();
  sub_1CFC9C1C8();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1CFC9C1E8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF870, &qword_1CFCA7920);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1CFCA1DD0;
  v17 = sub_1CFC9DC58();
  v18 = MEMORY[0x1E69DC2F0];
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  sub_1CFC9FBC8();
  swift_unknownObjectRelease();

  v19 = objc_opt_self();
  v20 = [v19 defaultCenter];
  v21 = sub_1CFC9F728();
  [v20 addObserver:v1 selector:sel_deleteAllRecents_ name:v21 object:0];

  v22 = [v19 defaultCenter];
  sub_1CFC9FCA8();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1CFC6A6B0(&qword_1EE04CF98, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1CFC9DDA8();

  (*(v12 + 8))(v15, v11);
  swift_beginAccess();
  sub_1CFC9DC88();
  swift_endAccess();

  sub_1CFC9C668();
  v23 = sub_1CFC9C658();
  v24 = sub_1CFC9C648();

  v40 = v24;
  sub_1CFC9FC08();
  sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
  v25 = sub_1CFC9FC28();
  v39 = v25;
  v26 = sub_1CFC9FBF8();
  v27 = v34;
  (*(*(v26 - 8) + 56))(v34, 1, 1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF890, &unk_1CFCA8270);
  sub_1CFBA57C0(&qword_1EC4EFD80, &qword_1EC4EF890, &unk_1CFCA8270, MEMORY[0x1E695BF88]);
  sub_1CFC18FBC();
  v28 = v33;
  sub_1CFC9DD98();
  sub_1CFBC2FB0(v27, &qword_1EC4EF860, &qword_1CFCA4AD0);

  (*(v35 + 8))(v7, v36);

  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1CFC6A81C;
  *(v30 + 24) = v29;
  sub_1CFBA57C0(&qword_1EC4EF898, &qword_1EC4EF868, &qword_1CFCA7908, MEMORY[0x1E695BE50]);
  v31 = v37;
  v32 = sub_1CFC9DDA8();

  (*(v38 + 8))(v28, v31);
  *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_acceptedContactsDidChangeSubscription] = v32;
}

double sub_1CFC5B528()
{
  v1 = [v0 traitCollection];
  v2 = [v1 splitViewControllerLayoutEnvironment];

  if (v2 == 1 && (v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_isSearching] & 1) == 0)
  {
    v4 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    swift_beginAccess();
    v5 = *&v0[v4];
    v6 = *(v5 + 16);
    v7 = v5 + 32;
    v8 = v6 + 1;
    while (--v8)
    {
      v9 = v7 + 16;
      type metadata accessor for FavoriteSectionController(0);
      v10 = swift_dynamicCastClass();
      v7 = v9;
      if (!v10)
      {
        v11 = *(v9 - 8);
        v12 = swift_unknownObjectRetain();
        sub_1CFBC5960(v12, v11);
        if (v13)
        {
          swift_unknownObjectRelease();
        }

        else
        {
          type metadata accessor for BundleClass();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v15 = [objc_opt_self() bundleForClass_];
          v16 = sub_1CFC9BE28();
          v18 = v17;

          sub_1CFC5F074(v16, v18);
          swift_unknownObjectRelease();
        }

        return result;
      }
    }
  }

  return result;
}

void sub_1CFC5B6D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDataSource);

    sub_1CFC9C8B8();
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    sub_1CFC5B778();
  }
}

void sub_1CFC5B778()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &aBlock - v2;
  v4 = *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_shouldShowScreeningTip);
  if (v4 == 2 || (v4 & 1) == 0)
  {
LABEL_6:
    v11 = sub_1CFC9F998();
    (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
    sub_1CFC9F968();
    v6 = v0;
    v12 = sub_1CFC9F958();
    v13 = swift_allocObject();
    v14 = MEMORY[0x1E69E85E0];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v6;
    sub_1CFBDC030(0, 0, v3, &unk_1CFCA7C50, v13);

    v15 = *(v6 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_shouldShowFilteringTip);
    if (v15 == 2 || (v15 & 1) == 0)
    {
      v21 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filteringTipSection;
      if (!*(v6 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filteringTipSection))
      {
        return;
      }

      v22 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
      swift_beginAccess();
      if (*(*(v6 + v22) + 16))
      {
        sub_1CFBCB5C4(0, 1);
        v23 = swift_endAccess();
        sub_1CFBA76C8(v23);
        *(v6 + v21) = 0;
        goto LABEL_14;
      }

      __break(1u);
    }

    else
    {
      v5 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filteringTipSection;
      if (*(v6 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filteringTipSection))
      {
        return;
      }

      type metadata accessor for CallFilteringTipSectionController(0);
      swift_allocObject();
      v0 = sub_1CFC473E0();
      v0[4] = &protocol witness table for RecentsViewController;
      swift_unknownObjectWeakAssign();
      v16 = objc_opt_self();
      v17 = swift_allocObject();
      *(v17 + 16) = v6;
      *(v17 + 24) = v0;
      v18 = swift_allocObject();
      *(v18 + 16) = sub_1CFC6BB4C;
      *(v18 + 24) = v17;
      v28 = sub_1CFC6C19C;
      v29 = v18;
      aBlock = MEMORY[0x1E69E9820];
      v25 = 1107296256;
      v26 = sub_1CFC63D88;
      v27 = &block_descriptor_214;
      v19 = _Block_copy(&aBlock);
      v20 = v6;

      [v16 performWithoutAnimation_];
      _Block_release(v19);
      LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

      if ((v16 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    return;
  }

  v5 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_screeningTipSection;
  if (*(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_screeningTipSection))
  {
    return;
  }

  type metadata accessor for CallScreeningTipSectionController(0);
  swift_allocObject();
  v6 = v0;
  v0 = sub_1CFC36200();
  v0[4] = &protocol witness table for RecentsViewController;
  swift_unknownObjectWeakAssign();
  v7 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 2) = v6;
  *(v3 + 3) = v0;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1CFC6BBD8;
  *(v8 + 24) = v3;
  v28 = sub_1CFC6C19C;
  v29 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1CFC63D88;
  v27 = &block_descriptor_224;
  v9 = _Block_copy(&aBlock);
  v10 = v6;

  [v7 performWithoutAnimation_];
  _Block_release(v9);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_10:
  *(v6 + v5) = v0;

LABEL_14:
}

void *sub_1CFC5BC50(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    sub_1CFC9C668();
    v3 = sub_1CFC9C658();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1CFC9C618();
  }

  return result;
}

uint64_t sub_1CFC5BD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1CFC9F968();
  v4[3] = sub_1CFC9F958();
  v6 = sub_1CFC9F938();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CFC5BDB0, v6, v5);
}

uint64_t sub_1CFC5BDB0()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel;
  v0[6] = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel;
  v3 = *(v1 + v2);
  v0[7] = v3;
  v4 = v3;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1CFC5BE60;

  return sub_1CFC5C050();
}

uint64_t sub_1CFC5BE60(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1CFC5BF88, v4, v3);
}

uint64_t sub_1CFC5BF88()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[2];

  sub_1CFC9CF38();

  v4 = *(v3 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_layoutManager);
  v5 = *(v3 + v2);
  [v4 current];
  sub_1CFC9CEC8();

  sub_1CFC5C900(0, 1);
  v6 = v0[1];

  return v6();
}

uint64_t sub_1CFC5C050()
{
  v1[3] = v0;
  v2 = sub_1CFC9CED8();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v1[7] = swift_task_alloc();
  v1[8] = sub_1CFC9F968();
  v1[9] = sub_1CFC9F958();
  v4 = sub_1CFC9F938();
  v1[10] = v4;
  v1[11] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1CFC5C180, v4, v3);
}

uint64_t sub_1CFC5C180()
{
  v1 = v0[3];
  v2 = [*(v1 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_layoutManager) current];
  v3 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController__configurationProvider;
  v0[12] = v2;
  v0[13] = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = v4;

    v6 = v5;
    if ([v6 isSilenceJunkCallingEnabled])
    {
      v7 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
      [v7 junkFilteringEnabled];
    }

    v10 = [v6 isFilterAsNewCallersEnabledForPhone];

    if (v10)
    {
      v11 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
      [v11 junkFilteringEnabled];
    }

    v12 = v0[6];
    v13 = v0[4];
    v14 = v0[5];
    sub_1CFC9CF48();
    (*(v14 + 104))(v12, *MEMORY[0x1E6995A50], v13);
    v15 = sub_1CFC9CEB8();

    (*(v14 + 8))(v12, v13);

    v16 = v0[1];

    return v16(v15);
  }

  else
  {
    v0[14] = sub_1CFC9F958();
    v9 = sub_1CFC9F938();
    v0[15] = v9;
    v0[16] = v8;

    return MEMORY[0x1EEE6DFA0](sub_1CFC5C3D4, v9, v8);
  }
}

uint64_t sub_1CFC5C3D4()
{
  v1 = v0[3];
  v2 = *&v1[v0[13]];
  if (v2)
  {
    v3 = v2;

    v0[19] = v3;
    v4 = v0[10];
    v5 = v0[11];

    return MEMORY[0x1EEE6DFA0](sub_1CFC5C754, v4, v5);
  }

  else
  {
    v6 = v0[7];
    v7 = sub_1CFC9F998();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v1;
    v9 = v1;
    v10 = sub_1CFC57758(0, 0, v6, &unk_1CFCA7C18, v8);
    v0[17] = v10;
    sub_1CFBC2FB0(v6, &qword_1EC4ED950, &qword_1CFCA2710);
    v11 = swift_task_alloc();
    v0[18] = v11;
    v12 = sub_1CFBA2D80(0, &qword_1EE04CF78, 0x1E69D8AF8);
    *v11 = v0;
    v11[1] = sub_1CFC5C5A4;

    return MEMORY[0x1EEE6DA40](v0 + 2, v10, v12);
  }
}

uint64_t sub_1CFC5C5A4()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1CFC5C6E8, v3, v2);
}

uint64_t sub_1CFC5C6E8()
{

  v0[19] = v0[2];
  v1 = v0[10];
  v2 = v0[11];

  return MEMORY[0x1EEE6DFA0](sub_1CFC5C754, v1, v2);
}

uint64_t sub_1CFC5C754()
{
  v1 = v0[19];

  v2 = v1;
  v3 = v0[19];
  if ([v3 isSilenceJunkCallingEnabled])
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
    [v4 junkFilteringEnabled];
  }

  v5 = [v3 isFilterAsNewCallersEnabledForPhone];

  if (v5)
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
    [v6 junkFilteringEnabled];
  }

  v7 = v0[6];
  v8 = v0[4];
  v9 = v0[5];
  sub_1CFC9CF48();
  (*(v9 + 104))(v7, *MEMORY[0x1E6995A50], v8);
  v10 = sub_1CFC9CEB8();

  (*(v9 + 8))(v7, v8);

  v11 = v0[1];

  return v11(v10);
}

void sub_1CFC5C900(uint64_t a1, int a2)
{
  v3 = v2;
  v53 = a2;
  v48 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFB00, &qword_1CFCA7C98);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v51 = &v45 - v5;
  v6 = sub_1CFC9FB38();
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CFC9CF08();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9CCB8();
  v12 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel;
  v13 = *(v2 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel);
  v14 = sub_1CFC9CCA8();

  v15 = [v14 children];
  sub_1CFBA2D80(0, &qword_1EE04D0E0, 0x1E69DCC78);
  v16 = sub_1CFC9F8A8();

  aBlock[6] = v16;
  v17 = [objc_opt_self() currentDevice];
  v18 = [v17 userInterfaceIdiom];

  v52 = v3;
  if (!v18)
  {
    v46 = v12;
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1CFC6BEAC;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CFC58994;
    aBlock[3] = &block_descriptor_273;
    v20 = _Block_copy(aBlock);
    v21 = objc_opt_self();

    v22 = [v21 elementWithViewProvider_];
    _Block_release(v20);

    sub_1CFBA2D80(0, &unk_1EE04CF40, 0x1E69DCC60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1CFCA2540;
    *(v23 + 32) = v22;
    v24 = v22;
    v25 = sub_1CFC9FD68();
    if (v16 >> 62 && sub_1CFC9FFD8() < 0)
    {
      __break(1u);
      return;
    }

    sub_1CFBB5308(0, 0, v25);

    v12 = v46;
    v3 = v52;
  }

  v26 = sub_1CFC585F4();
  v27 = sub_1CFC9F898();

  v28 = v3;
  v29 = [v14 menuByReplacingChildren_];

  [v26 setMenu_];
  v30 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___filterButtonItem;
  v31 = *(v28 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___filterButtonItem);
  v32 = *(v28 + v12);
  (*(v9 + 104))(v11, *MEMORY[0x1E6995A70], v8);
  v33 = v32;
  v34 = v31;
  LOBYTE(v29) = sub_1CFC9CE58();

  (*(v9 + 8))(v11, v8);
  [v34 setSelected_];

  v35 = v14;
  if (v53)
  {
  }

  else if (v48 < 1)
  {
    v43 = *(v52 + v30);
    (*(v49 + 56))(v51, 1, 1, v50);
    v44 = v43;
    sub_1CFC9FB48();
  }

  else
  {
    v36 = v47;
    sub_1CFC9FB28();
    v37 = [objc_opt_self() systemBlueColor];
    sub_1CFC9FB18();
    v38 = v51;
    v39 = *(v52 + v30);
    v41 = v49;
    v40 = v50;
    (*(v49 + 16))(v51, v36, v50);
    (*(v41 + 56))(v38, 0, 1, v40);
    v42 = v39;
    sub_1CFC9FB48();

    (*(v41 + 8))(v36, v40);
  }
}

uint64_t sub_1CFC5CF08(uint64_t a1)
{
  *(v1 + 40) = a1;
  sub_1CFC9F968();
  *(v1 + 48) = sub_1CFC9F958();
  v3 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFC5CFA0, v3, v2);
}

uint64_t sub_1CFC5CFA0()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }

  v3 = *(v0 + 8);

  return v3();
}

Swift::Void __swiftcall RecentsViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewWillDisappear_, a1);
  v3 = [v1 presentedViewController];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for LayoutTipViewController(0);
    v5 = swift_dynamicCastClass();

    if (v5)
    {
      [v1 dismissViewControllerAnimated:1 completion:0];
    }
  }

  v6 = [objc_opt_self() defaultCenter];
  [v6 removeObserver:v1 name:*MEMORY[0x1E69DDBC8] object:0];
}

void RecentsViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v10[4] = sub_1CFC6A968;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1CFC5D3A0;
  v10[3] = &block_descriptor_27;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:v8 completion:0];
  _Block_release(v8);
}

uint64_t sub_1CFC5D3A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_1CFC5D538()
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  sub_1CFC9BE28();

  v3 = [v1 &:ObjCClassFromMetadata OBJC:0xE000000000000000 LABEL:? PROTOCOL:? :? :?UISearchControllerDelegate + 3];
  sub_1CFC9BE28();

  v4 = sub_1CFC9F728();

  v5 = sub_1CFC9F728();

  v6 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:{1, 0xE000000000000000}];

  v7 = [v1 bundleForClass_];
  sub_1CFC9BE28();

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9 = sub_1CFC9F728();

  v27 = sub_1CFC6BB20;
  v28 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1CFBDBE60;
  v26 = &block_descriptor_138_0;
  v10 = _Block_copy(&aBlock);

  v11 = objc_opt_self();
  v21 = [v11 actionWithTitle:v9 style:0 handler:{v10, 0xE000000000000000}];
  _Block_release(v10);

  v12 = [v1 bundleForClass_];
  sub_1CFC9BE28();

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v14 = sub_1CFC9F728();

  v27 = sub_1CFC6BB3C;
  v28 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1CFBDBE60;
  v26 = &block_descriptor_142;
  v15 = _Block_copy(&aBlock);

  v16 = [v11 actionWithTitle:v14 style:0 handler:{v15, 0xE000000000000000}];
  _Block_release(v15);

  v17 = [v1 bundleForClass_];
  sub_1CFC9BE28();

  v18 = sub_1CFC9F728();

  v27 = nullsub_1;
  v28 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1CFBDBE60;
  v26 = &block_descriptor_145;
  v19 = _Block_copy(&aBlock);

  v20 = [v11 actionWithTitle:v18 style:1 handler:{v19, 0xE000000000000000}];
  _Block_release(v19);

  [v6 addAction_];
  [v6 addAction_];
  [v6 addAction_];
  [v22 presentViewController:v6 animated:1 completion:0];
}

void sub_1CFC5DB50(uint64_t a1, uint64_t a2)
{
  v2 = sub_1CFC9CB88();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDataSource;
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDataSource);
    sub_1CFC9C7D8();

    sub_1CFC9C7F8();
    sub_1CFC9CB78();
    (*(v3 + 8))(v5, v2);
    v10 = *&v8[v7];
    sub_1CFC9C8C8();
  }
}

void sub_1CFC5DD6C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_1CFC5DDC8()
{
  v1 = *&v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider];
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v20 = v1;
      [v20 setModalPresentationStyle_];
      v3 = [v20 popoverPresentationController];
      if (v3)
      {
        v4 = v3;
        v5 = *&v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadButtonItem];
        [v4 setBarButtonItem_];
      }

      v6 = [v20 popoverPresentationController];
      if (v6)
      {
        v7 = v6;
        [v6 setDelegate_];
      }

      v8 = [v0 traitCollection];
      v9 = [v8 userInterfaceIdiom];

      v10 = 560.0;
      v11 = 310.0;
      v12 = 0.0;
      v13 = 310.0;
      if (v9 == 5)
      {
        v12 = 600.0;
      }

      else
      {
        v13 = 0.0;
      }

      if (v9 != 1)
      {
        v11 = v13;
        v10 = v12;
      }

      [v20 setPreferredContentSize_];
      v14 = [v20 popoverPresentationController];
      swift_unknownObjectWeakAssign();

      v15 = [v0 traitCollection];
      v16 = [v15 userInterfaceIdiom];

      if (v16 == 5)
      {
        v17 = [v20 view];
        if (!v17)
        {
          __break(1u);
          return;
        }

        v18 = v17;
        v19 = [objc_opt_self() clearColor];
        [v18 setBackgroundColor_];
      }

      [v0 presentViewController:v20 animated:1 completion:0];
      Strong = v20;
    }
  }
}

id sub_1CFC5E0B0(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFAB8, &unk_1CFCA7C40);
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1CFCA1DD0;
      v6 = *(v1 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsSection);
      v7 = &qword_1EE04F4F8;
      v8 = type metadata accessor for RecentsSectionController;
      v9 = &unk_1CFCA85E8;
    }

    else
    {
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_1CFCA1DD0;
      v6 = *(v1 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_voicemailsSection);
      if (!v6)
      {
        v12 = 0;
        goto LABEL_9;
      }

      v7 = &qword_1EC4EFAC0;
      v8 = type metadata accessor for VoicemailsSectionController;
      v9 = &protocol conformance descriptor for VoicemailsSectionController;
    }

    v12 = sub_1CFC6A6B0(v7, v8, v9);
LABEL_9:
    *(v5 + 32) = v6;
    *(v5 + 40) = v12;
LABEL_17:

    goto LABEL_18;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1CFCA1DC0;
  v10 = *(v1 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoriteSection);
  if (v10)
  {
    v11 = sub_1CFC6A6B0(qword_1EE04F018, type metadata accessor for FavoriteSectionController, &unk_1CFCA8D9C);
  }

  else
  {
    v11 = 0;
  }

  *(v5 + 32) = v10;
  *(v5 + 40) = v11;
  v13 = *(v1 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsSection);
  v14 = sub_1CFC6A6B0(&qword_1EE04F4F8, type metadata accessor for RecentsSectionController, &unk_1CFCA85E8);
  *(v5 + 48) = v13;
  *(v5 + 56) = v14;
  v3 = *(v1 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsRemindersSection);
  if (!v3 || (v2 = v14, v15 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_items, swift_beginAccess(), !*(*(v3 + v15) + 16)))
  {

    goto LABEL_17;
  }

  v16 = *(v5 + 16);
  if (!v16)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v17 = *(v5 + 24);

  v10 = v1;
  if (v16 >= v17 >> 1)
  {
LABEL_32:
    v5 = sub_1CFC7B4C4(1, v16 + 1, 1, v5);
  }

  sub_1CFBCC9BC(1uLL, 1, 1, v3, v2);

  v1 = v10;
LABEL_18:
  v18 = 0;
  v16 = *(v5 + 16);
  v10 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v19 = (v5 + 32 + 16 * v18);
  while (v16 != v18)
  {
    if (v18 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_31;
    }

    ++v18;
    v20 = v19 + 2;
    v2 = *v19;
    v19 += 2;
    if (v2)
    {
      v21 = *(v20 - 1);
      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1CFBA74A0(0, v10[2] + 1, 1, v10);
      }

      v23 = v10[2];
      v22 = v10[3];
      v3 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v10 = sub_1CFBA74A0((v22 > 1), v23 + 1, 1, v10);
      }

      v10[2] = v3;
      v24 = &v10[2 * v23];
      v24[4] = v2;
      v24[5] = v21;
      goto LABEL_19;
    }
  }

  v25 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  swift_beginAccess();
  *(v1 + v25) = v10;

  return sub_1CFBA76C8(v26);
}

Swift::Void __swiftcall RecentsViewController.makeSearchActive()()
{
  v0 = sub_1CFC57D08();
  v1 = [v0 searchBar];

  [v1 becomeFirstResponder];
}

Swift::Void __swiftcall RecentsViewController.selectedItemsDidChange()()
{
  v1 = v0;
  v2 = sub_1CFC9C608();
  v3 = *(v2 - 8);
  v86 = v2;
  v87 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v85 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF8E8, &qword_1CFCA7980);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v82 - v6;
  v8 = type metadata accessor for FavoriteSectionController.Item(0);
  v90 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v82 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EF8F0, &qword_1CFCA7988);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v82 - v14;
  v16 = type metadata accessor for VoicemailsSectionController.Item(0);
  v91 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v82 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE368, &unk_1CFCA4040);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v92 = &v82 - v23;
  v24 = sub_1CFC9C448();
  v93 = *(v24 - 8);
  v94 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v84 = &v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v27 = MEMORY[0x1EEE9AC00](v26).n128_u64[0];
  v89 = &v82 - v28;
  if ([v0 isEditing])
  {
    v29 = sub_1CFBC31CC()[2];

    v30 = sub_1CFC583A0();
    if (v29)
    {
      v82 = v21;
      v31 = v16;
      v32 = v15;
      v33 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsSection];
      v83 = v8;
      v34 = v7;
      v35 = v12;
      v36 = v18;
      v37 = v1;
      v38 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_items;
      swift_beginAccess();
      v39 = *(v33 + v38);
      v15 = v32;
      v16 = v31;
      v1 = v37;
      v18 = v36;
      v12 = v35;
      v7 = v34;
      v21 = v82;
      v8 = v83;
      v40 = v29 == *(v39 + 16);
    }

    else
    {
      v40 = 1;
    }

    [v30 setEnabled_];
  }

  v41 = [v1 traitCollection];
  v42 = [v41 splitViewControllerLayoutEnvironment];

  if (v42 != 2)
  {
    v43 = v15;
    v44 = sub_1CFBC31CC();
    v45 = v44[2];
    if (v45 >= 2)
    {

      type metadata accessor for BundleClass();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v47 = [objc_opt_self() bundleForClass_];
      sub_1CFC9BE28();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF900, &qword_1CFCA1FF8);
      v48 = swift_allocObject();
      v49 = MEMORY[0x1E69E6530];
      *(v48 + 16) = xmmword_1CFCA1DD0;
      v50 = MEMORY[0x1E69E65A8];
      *(v48 + 56) = v49;
      *(v48 + 64) = v50;
      *(v48 + 32) = v45;
      v51 = sub_1CFC9F778();
      v53 = v52;

      sub_1CFC5F074(v51, v53);
LABEL_22:

      return;
    }

    if (v45)
    {
      v82 = v18;
      v83 = v44;
      sub_1CFBB94B0((v44 + 4), v95);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5A0, &qword_1CFCA87C0);
      v54 = v92;
      v55 = v94;
      v56 = swift_dynamicCast();
      v57 = v93;
      (*(v93 + 56))(v54, v56 ^ 1u, 1, v55);
      if ((*(v57 + 48))(v54, 1, v55) != 1)
      {

        v64 = v89;
        (*(v57 + 32))(v89, v54, v55);
        sub_1CFC88EA4(v64);
        (*(v57 + 8))(v64, v55);
        return;
      }

      sub_1CFBC2FB0(v54, &qword_1EC4EE368, &unk_1CFCA4040);
      if (v83[2])
      {
        sub_1CFBB94B0((v83 + 4), v95);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5A0, &qword_1CFCA87C0);
        v58 = v43;
        v59 = swift_dynamicCast();
        v60 = v91;
        (*(v91 + 56))(v58, v59 ^ 1u, 1, v16);
        v61 = (*(v60 + 48))(v58, 1, v16);
        v62 = v82;
        if (v61 == 1)
        {
          sub_1CFBC2FB0(v58, &unk_1EC4EF8F0, &qword_1CFCA7988);
        }

        else
        {
          sub_1CFC6B824(v58, v21, type metadata accessor for VoicemailsSectionController.Item);
          sub_1CFC6B7BC(v21, v62, type metadata accessor for VoicemailsSectionController.Item);
          if (!swift_getEnumCaseMultiPayload())
          {

            v80 = v93;
            v79 = v94;
            v81 = v84;
            (*(v93 + 32))(v84, v62, v94);
            sub_1CFC88EA4(v81);
            (*(v80 + 8))(v81, v79);
            sub_1CFC6B88C(v21, type metadata accessor for VoicemailsSectionController.Item);
            return;
          }

          sub_1CFC6B88C(v21, type metadata accessor for VoicemailsSectionController.Item);
          sub_1CFC6B88C(v62, type metadata accessor for VoicemailsSectionController.Item);
        }

        if (v83[2])
        {
          sub_1CFBB94B0((v83 + 4), v95);

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5A0, &qword_1CFCA87C0);
          v65 = swift_dynamicCast();
          v66 = v90;
          (*(v90 + 56))(v7, v65 ^ 1u, 1, v8);
          if ((*(v66 + 48))(v7, 1, v8) != 1)
          {
            sub_1CFC6B824(v7, v12, type metadata accessor for FavoriteSectionController.Item);
            v72 = v88;
            sub_1CFC6B7BC(v12, v88, type metadata accessor for FavoriteSectionController.Item);
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              v74 = v86;
              v73 = v87;
              v75 = v85;
              (*(v87 + 32))(v85, v72, v86);
              v76 = sub_1CFC9C5E8();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
              v77 = swift_allocObject();
              *(v77 + 16) = xmmword_1CFCA2540;
              *(v77 + 32) = v76;
              v78 = v76;
              sub_1CFC8C10C(v77, 0);

              (*(v73 + 8))(v75, v74);
              sub_1CFC6B88C(v12, type metadata accessor for FavoriteSectionController.Item);
              return;
            }

            sub_1CFC6B88C(v12, type metadata accessor for FavoriteSectionController.Item);
            sub_1CFC6B88C(v72, type metadata accessor for FavoriteSectionController.Item);
            goto LABEL_21;
          }

LABEL_20:
          sub_1CFBC2FB0(v7, &qword_1EC4EF8E8, &qword_1CFCA7980);
LABEL_21:
          type metadata accessor for BundleClass();
          v67 = swift_getObjCClassFromMetadata();
          v68 = [objc_opt_self() bundleForClass_];
          v69 = sub_1CFC9BE28();
          v71 = v70;

          sub_1CFC5F074(v69, v71);
          goto LABEL_22;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    v63 = v92;
    (*(v93 + 56))(v92, 1, 1, v94);
    sub_1CFBC2FB0(v63, &qword_1EC4EE368, &unk_1CFCA4040);
    (*(v91 + 56))(v43, 1, 1, v16);
    sub_1CFBC2FB0(v43, &unk_1EC4EF8F0, &qword_1CFCA7988);

    (*(v90 + 56))(v7, 1, 1, v8);
    goto LABEL_20;
  }
}

void sub_1CFC5F074(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1CFC9DBB8();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v4).n128_u64[0];
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 traitCollection];
  v10 = [v9 splitViewControllerLayoutEnvironment];

  if (v10 != 2)
  {
    sub_1CFC9DB98();

    sub_1CFC9DB88();
    v11 = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
    v17[3] = v4;
    v17[4] = MEMORY[0x1E69DC1D0];
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v17);
    (*(v5 + 16))(boxed_opaque_existential_0Tm, v8, v4);
    sub_1CFC9FBD8();
    v13 = [v11 view];
    if (v13)
    {
      v14 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFAD0, &qword_1CFCA78D0);
      sub_1CFC9CD28();
      v15 = v17[0];
      [v14 setBackgroundColor_];

      [v3 showDetailViewController:v11 sender:v3];
      (*(v5 + 8))(v8, v4);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1CFC5F350()
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_1CFC9BE28();

  v4 = sub_1CFC9F728();

  v5 = [objc_opt_self() alertControllerWithTitle:0 message:v4 preferredStyle:{0, 0xE000000000000000}];

  v6 = [v2 bundleForClass_];
  sub_1CFC9BE28();

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v8 = sub_1CFC9F728();

  aBlock[4] = sub_1CFC6C1D8;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFBDBE60;
  aBlock[3] = &block_descriptor_134;
  v9 = _Block_copy(aBlock);

  v10 = [objc_opt_self() actionWithTitle:v8 style:2 handler:{v9, 0xE000000000000000}];
  _Block_release(v9);

  [v5 addAction_];
  v11 = [v5 popoverPresentationController];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1CFC583A0();
    [v12 setSourceItem_];
  }

  [v0 presentViewController:v5 animated:1 completion:0];
}

void sub_1CFC5F650(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDataSource;
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDataSource);
    sub_1CFC9C7D8();

    v6 = *&v4[v3];
    sub_1CFC9C8C8();
  }
}

void sub_1CFC5F750()
{
  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDetailProvider, &unk_1EC4EF810, &qword_1CFCA7900);

  sub_1CFBC2FB0(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_legacyMailboxService, &qword_1EC4EE538, qword_1CFCA9BD0);
  sub_1CFC6A670(*(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider), *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider + 8), *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider + 16));

  sub_1CFBABFA0(*(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDismissalAction), *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDismissalAction + 8));

  JUMPOUT(0x1D3873340);
}

id RecentsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1CFC5FCC4(char a1, uint64_t a2)
{
  v3 = sub_1CFC9C138();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      *(Strong + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_isEditingFavorites) = 1;
      v9 = *(Strong + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoriteSection);
      if (v9)
      {
        *(v9 + 40) = 1;
        v10 = *(v9 + 104);
        if (*(v10 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__isEditing) == 1)
        {
          *(v10 + OBJC_IVAR____TtC10CallsAppUI18FavoriteCellConfig__isEditing) = 1;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          v19[0] = v19;
          MEMORY[0x1EEE9AC00](KeyPath);
          v19[-2] = v10;
          LOBYTE(v19[-1]) = 1;
          v19[2] = v10;
          sub_1CFC6A6B0(&qword_1EE04F8D0, type metadata accessor for FavoriteCellConfig, &unk_1CFCA69F8);

          sub_1CFC9C148();
        }

        sub_1CFBCD8F8();
        sub_1CFC83538();
        v12 = swift_unknownObjectWeakLoadStrong();
        if (v12)
        {
          v13 = v12;
          v14 = *(sub_1CFBAA4F8() + 16);

          if (v14)
          {
            v19[0] = v8;
            v15 = 0;
            v16 = (v4 + 8);
            do
            {
              MEMORY[0x1D386E620](v15, 0);
              v17 = sub_1CFC9C0C8();
              v18 = [v13 cellForItemAtIndexPath_];

              if (v18)
              {
                sub_1CFC9FD78();
              }

              ++v15;
              (*v16)(v6, v3);
            }

            while (v14 != v15);

            v8 = v19[0];
          }

          else
          {
          }
        }

        else
        {
        }
      }

      sub_1CFBAB5EC();
    }
  }
}

Swift::Void __swiftcall RecentsViewController.itemsDidUpdate()()
{
  sub_1CFC9C668();
  v0 = sub_1CFC9C658();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1CFC9C618();

  sub_1CFC9C1D8();
  sub_1CFC9C1C8();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1CFC9C1E8();
}

uint64_t sub_1CFC600E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1CFC9F638();
  v17 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CFC9F658();
  v8 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
  v11 = sub_1CFC9FC28();
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1CFC6BB44;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFC56F38;
  aBlock[3] = &block_descriptor_198;
  v13 = _Block_copy(aBlock);

  sub_1CFC9F648();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1CFC6A6B0(&qword_1EE04D130, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5B0, &unk_1CFCA24A0);
  sub_1CFBA57C0(&qword_1EE04D110, &unk_1EC4ED5B0, &unk_1CFCA24A0, MEMORY[0x1E69E6328]);
  sub_1CFC9FF58();
  MEMORY[0x1D3872170](0, v10, v7, v13);
  _Block_release(v13);

  (*(v17 + 8))(v7, v5);
  (*(v8 + 8))(v10, v16);
}

void sub_1CFC603E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v5 = sub_1CFC9D938();
    __swift_project_value_buffer(v5, qword_1EE052308);
    v6 = sub_1CFC9D918();
    v7 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16[0] = v9;
      *v8 = 136315138;
      v10 = sub_1CFCA0288();
      v12 = sub_1CFBB531C(v10, v11, v16);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1CFB9F000, v6, v7, "Got unread request count %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1D3873280](v9, -1, -1);
      MEMORY[0x1D3873280](v8, -1, -1);
    }

    v13 = *&v4[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel];
    v14 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_hasLegacyUnreadVoicemails;
    swift_beginAccess();
    LODWORD(v14) = v4[v14];

    v15 = v13;
    sub_1CFC731C8(v15, v14, a2);

    sub_1CFC5C900(a2, 0);
    sub_1CFBAB5EC();
  }
}

uint64_t sub_1CFC605DC(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_1CFC9F638();
  v17 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CFC9F658();
  v8 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
  v11 = sub_1CFC9FC28();
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a2;
  aBlock[4] = sub_1CFC6BC7C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFC56F38;
  aBlock[3] = &block_descriptor_238;
  v13 = _Block_copy(aBlock);

  sub_1CFC9F648();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1CFC6A6B0(&qword_1EE04D130, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5B0, &unk_1CFCA24A0);
  sub_1CFBA57C0(&qword_1EE04D110, &unk_1EC4ED5B0, &unk_1CFCA24A0, MEMORY[0x1E69E6328]);
  sub_1CFC9FF58();
  MEMORY[0x1D3872170](0, v10, v7, v13);
  _Block_release(v13);

  (*(v17 + 8))(v7, v5);
  (*(v8 + 8))(v10, v16);
}

void sub_1CFC608D8(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v5 = sub_1CFC9D938();
    __swift_project_value_buffer(v5, qword_1EE052308);
    v6 = sub_1CFC9D918();
    v7 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      if (a2)
      {
        v10 = 1702195828;
      }

      else
      {
        v10 = 0x65736C6166;
      }

      if (a2)
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v11 = 0xE500000000000000;
      }

      v12 = sub_1CFBB531C(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1CFB9F000, v6, v7, "Request cache did change: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1D3873280](v9, -1, -1);
      MEMORY[0x1D3873280](v8, -1, -1);
    }

    if (a2)
    {

      sub_1CFC73EF4();
    }
  }
}

uint64_t sub_1CFC60AB8()
{
  v1[29] = v0;
  v1[30] = *(type metadata accessor for LegacyMailbox(0) - 8);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v2 = sub_1CFC9C448();
  v1[33] = v2;
  v1[34] = *(v2 - 8);
  v1[35] = swift_task_alloc();
  sub_1CFC9F968();
  v1[36] = sub_1CFC9F958();
  v4 = sub_1CFC9F938();
  v1[37] = v4;
  v1[38] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1CFC60C10, v4, v3);
}

void *sub_1CFC60C10()
{
  v34 = v0;
  result = [*(v0 + 232) view];
  if (result)
  {
    v2 = result;
    v3 = [result traitCollection];

    v4 = [v3 userInterfaceIdiom];
    *(v0 + 312) = v4;

    if (v4 || (v5 = *(v0 + 232), v6 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_hasLegacyUnreadVoicemails, swift_beginAccess(), *(v5 + v6) != 1))
    {
LABEL_13:

LABEL_14:
      v20 = *(v0 + 232);
      v21 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_voicemailsSection;
      if (*(v20 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_voicemailsSection))
      {
        v22 = *(v20 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_voicemailsSection);
      }

      else
      {
        v23 = *(v0 + 312);
        v24 = *(v20 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDataSource);
        v25 = *(v20 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_detailsPresenter);
        v26 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_legacyMailboxService;
        swift_beginAccess();
        sub_1CFBA29FC(v20 + v26, v0 + 16, &qword_1EC4EE538, qword_1CFCA9BD0);
        if (v23)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED560, &qword_1CFCA2460);
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_1CFCA1DC0;
          *(v27 + 32) = 2;
          *(v27 + 34) = 0;
          *(v27 + 40) = 0;
          *(v27 + 48) = 1;
          *(v27 + 50) = 0;
          *(v27 + 56) = 0;
        }

        else
        {
          v27 = 0;
        }

        v28 = *(v0 + 312) != 0;
        v32 = v27;
        v33 = v28;
        type metadata accessor for VoicemailsSectionController(0);
        swift_allocObject();
        v29 = v24;

        v22 = sub_1CFC16EEC(v29, v25, v0 + 16, &v32);
      }

      *(v22 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_delegate + 8) = &protocol witness table for RecentsViewController;
      swift_unknownObjectWeakAssign();
      *(v20 + v21) = v22;

      sub_1CFC5E0B0(2);

      v30 = *(v0 + 8);

      return v30();
    }

    else
    {
      v7 = *(v0 + 272);
      result = sub_1CFC9C7B8();
      v8 = result;
      v9 = 0;
      v10 = result[2];
      while (v10 != v9)
      {
        if (v9 >= v8[2])
        {
          __break(1u);
          goto LABEL_24;
        }

        v11 = *(v0 + 280);
        v12 = *(v0 + 264);
        (*(v7 + 16))(v11, v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v9++, v12);
        v13 = sub_1CFC9C408();
        result = (*(v7 + 8))(v11, v12);
        if (v13)
        {

          goto LABEL_14;
        }
      }

      v14 = *(v0 + 232);

      v15 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_legacyMailboxService;
      *(v0 + 320) = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_legacyMailboxService;
      v16 = v14 + v15;
      swift_beginAccess();
      if (!*(v16 + 24))
      {
        goto LABEL_13;
      }

      sub_1CFBB94B0(v16, v0 + 56);
      v17 = *(v0 + 80);
      v18 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v17);
      v31 = (*(v18 + 48) + **(v18 + 48));
      v19 = swift_task_alloc();
      *(v0 + 328) = v19;
      *v19 = v0;
      v19[1] = sub_1CFC610CC;

      return v31(v17, v18);
    }
  }

  else
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CFC610CC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 336) = a1;

  v3 = *(v2 + 304);
  v4 = *(v2 + 296);

  return MEMORY[0x1EEE6DFA0](sub_1CFC611F4, v4, v3);
}

uint64_t sub_1CFC611F4()
{
  v28 = v0;
  v1 = v0[42];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  if (*(v1 + 16) == 1)
  {
    v2 = v0[31];
    v3 = v0[32];
    v4 = *(v0[30] + 80);
    sub_1CFC6B7BC(v0[42] + ((v4 + 32) & ~v4), v2, type metadata accessor for LegacyMailbox);

    sub_1CFC6B824(v2, v3, type metadata accessor for LegacyMailbox);
    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v5 = sub_1CFC9D938();
    __swift_project_value_buffer(v5, qword_1EE052308);
    v6 = sub_1CFC9D918();
    v7 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1CFB9F000, v6, v7, "User tapped on voicemail tab, has legacy voicemails, but no visual voicemails, directly calling carrier instead of bringing to voicemail section", v8, 2u);
      MEMORY[0x1D3873280](v8, -1, -1);
    }

    v9 = v0[40];
    v10 = v0[29];

    swift_beginAccess();
    if (*(v10 + v9 + 24))
    {
      v11 = v0[32];
      sub_1CFBB94B0(v0[29] + v0[40], (v0 + 12));
      swift_endAccess();
      v12 = v0[15];
      v13 = v0[16];
      __swift_project_boxed_opaque_existential_1(v0 + 12, v12);
      (*(v13 + 56))(v11, v12, v13);
      sub_1CFC6B88C(v11, type metadata accessor for LegacyMailbox);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
    }

    else
    {
      sub_1CFC6B88C(v0[32], type metadata accessor for LegacyMailbox);
      swift_endAccess();
    }
  }

  else
  {

    v14 = v0[29];
    v15 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_voicemailsSection;
    if (*(v14 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_voicemailsSection))
    {
      v16 = *(v14 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_voicemailsSection);
    }

    else
    {
      v17 = v0[39];
      v18 = *(v14 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDataSource);
      v19 = *(v14 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_detailsPresenter);
      v20 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_legacyMailboxService;
      swift_beginAccess();
      sub_1CFBA29FC(v14 + v20, (v0 + 2), &qword_1EC4EE538, qword_1CFCA9BD0);
      if (v17)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED560, &qword_1CFCA2460);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1CFCA1DC0;
        *(v21 + 32) = 2;
        *(v21 + 34) = 0;
        *(v21 + 40) = 0;
        *(v21 + 48) = 1;
        *(v21 + 50) = 0;
        *(v21 + 56) = 0;
      }

      else
      {
        v21 = 0;
      }

      v22 = v0[39] != 0;
      v26 = v21;
      v27 = v22;
      type metadata accessor for VoicemailsSectionController(0);
      swift_allocObject();
      v23 = v18;

      v16 = sub_1CFC16EEC(v23, v19, (v0 + 2), &v26);
    }

    *(v16 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_delegate + 8) = &protocol witness table for RecentsViewController;
    swift_unknownObjectWeakAssign();
    *(v14 + v15) = v16;

    sub_1CFC5E0B0(2);
  }

  v24 = v0[1];

  return v24();
}

void RecentsViewController.presentVoicemails(mailbox:)(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_voicemailsSection];
  if (v2)
  {
    v4 = *(v2 + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_dataSource);
    v5 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_legacyMailboxService;
    swift_beginAccess();
    sub_1CFBA29FC(&v1[v5], v10, &qword_1EC4EE538, qword_1CFCA9BD0);
    objc_allocWithZone(type metadata accessor for VoicemailListViewController());

    v6 = v4;
    v7 = a1;
    v8 = v1;
    v9 = VoicemailListViewController.init(dataSource:legacyMailboxService:mailbox:)(v6, v10, v7);
    [v8 showDetailViewController:v9 sender:v8];
  }
}

Swift::Void __swiftcall RecentsViewController.startSearching(for:)(Swift::String_optional a1)
{
  v2 = v1;
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v5 = sub_1CFC9F638();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CFC9F658();
  v30 = *(v9 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 isViewLoaded])
  {
    v13 = [v1 view];
    if (!v13)
    {
      __break(1u);
      return;
    }

    v14 = v13;
    v15 = [v13 window];

    if (v15)
    {

      sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
      v29 = sub_1CFC9FC28();
      v16 = swift_allocObject();
      v16[2] = v2;
      v16[3] = countAndFlagsBits;
      v16[4] = object;
      aBlock[4] = sub_1CFC6A998;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CFC56F38;
      aBlock[3] = &block_descriptor_37_0;
      v17 = _Block_copy(aBlock);

      v18 = v2;
      sub_1CFC9F648();
      v31 = MEMORY[0x1E69E7CC0];
      sub_1CFC6A6B0(&qword_1EE04D130, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED5B0, &unk_1CFCA24A0);
      sub_1CFBA57C0(&qword_1EE04D110, &unk_1EC4ED5B0, &unk_1CFCA24A0, MEMORY[0x1E69E6328]);
      sub_1CFC9FF58();
      v19 = v29;
      MEMORY[0x1D3872170](0, v12, v8, v17);
      _Block_release(v17);

      (*(v6 + 8))(v8, v5);
      (*(v30 + 8))(v12, v9);

      return;
    }
  }

  v20 = sub_1CFC57D08();
  v21 = [v20 searchBar];

  [v21 becomeFirstResponder];
  v22 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___searchController;
  v23 = [*&v2[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___searchController] searchBar];
  if (object)
  {
    v24 = sub_1CFC9F728();
  }

  else
  {
    v24 = 0;
  }

  [v23 setText_];

  v25 = [*&v2[v22] searchResultsUpdater];
  if (v25)
  {
    v26 = v25;
    v27 = *&v2[v22];
    [v26 updateSearchResultsForSearchController_];

    swift_unknownObjectRelease();
  }
}

id sub_1CFC61B80(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1CFC57D08();
  v6 = [v5 searchBar];

  [v6 becomeFirstResponder];
  v7 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___searchController;
  v8 = [*(a1 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___searchController) isActive];
  v9 = *(a1 + v7);
  if (v8)
  {
    v10 = [v9 searchBar];
    if (a3)
    {
      a3 = sub_1CFC9F728();
    }

    [v10 setText_];

    result = [*(a1 + v7) searchResultsUpdater];
    if (result)
    {
      v12 = result;
      v13 = *(a1 + v7);
      [v12 updateSearchResultsForSearchController_];

      return swift_unknownObjectRelease();
    }
  }

  else
  {

    return [v9 setActive_];
  }

  return result;
}

Swift::Void __swiftcall RecentsViewController.handleCallFilteringAction()()
{
  v1 = sub_1CFC9CED8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isFilterAsNewCallersEnabledForPhone] & 1) != 0 || (TUFilterAsNewCallersSeenOnboardingScreenForPhone())
  {

    _s10CallsAppUI21RecentsViewControllerC27goToCallFilteringInSettingsyyF_0();
  }

  else
  {
    sub_1CFC9D098();
    (*(v2 + 104))(v4, *MEMORY[0x1E6995A50], v1);
    v5 = v0;
    v6 = sub_1CFC9D088();
    (*(v2 + 8))(v4, v1);
    [v5 presentViewController:v6 animated:1 completion:0];
    TUSetFilterAsNewCallersSeenOnboardingScreenForPhone();
    v7 = *&v5[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_callFilteringOnboardingViewController];
    *&v5[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_callFilteringOnboardingViewController] = v6;
  }
}

uint64_t sub_1CFC61E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v4[4] = swift_task_alloc();
  v4[5] = sub_1CFC9F968();
  v4[6] = sub_1CFC9F958();
  v6 = sub_1CFC9F938();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CFC61F6C, v6, v5);
}

uint64_t sub_1CFC61F6C()
{
  if ([*(v0[3] + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_featureFlags) deviceExpertMigrationEnabled])
  {
    v0[9] = sub_1CFC9F958();
    v2 = sub_1CFC9F938();
    v0[10] = v2;
    v0[11] = v1;

    return MEMORY[0x1EEE6DFA0](sub_1CFC6218C, v2, v1);
  }

  else
  {

    sub_1CFC9F768();
    v3 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v4 = sub_1CFC9F728();

    v5 = [v3 initWithSuiteName_];

    if (v5)
    {
      [v5 setBool:1 forKey:*MEMORY[0x1E69D8E88]];
    }

    v6 = v0[3];
    v7 = [objc_opt_self() defaultCenter];
    v8 = sub_1CFC9F728();
    [v7 postNotificationName:v8 object:0];

    v9 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_callFilteringOnboardingViewController;
    v10 = *(v6 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_callFilteringOnboardingViewController);
    if (v10)
    {
      [v10 dismissViewControllerAnimated:1 completion:0];
      v11 = *(v6 + v9);
    }

    else
    {
      v11 = 0;
    }

    *(v6 + v9) = 0;

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1CFC6218C()
{
  v1 = v0[3];
  v2 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController__configurationProvider];
  if (v2)
  {
    v3 = v2;

    v0[14] = v3;
    v4 = v0[7];
    v5 = v0[8];

    return MEMORY[0x1EEE6DFA0](sub_1CFC62510, v4, v5);
  }

  else
  {
    v6 = v0[4];
    v7 = sub_1CFC9F998();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v1;
    v9 = v1;
    v10 = sub_1CFC57758(0, 0, v6, &unk_1CFCA7BC8, v8);
    v0[12] = v10;
    sub_1CFBC2FB0(v6, &qword_1EC4ED950, &qword_1CFCA2710);
    v11 = swift_task_alloc();
    v0[13] = v11;
    v12 = sub_1CFBA2D80(0, &qword_1EE04CF78, 0x1E69D8AF8);
    *v11 = v0;
    v11[1] = sub_1CFC62360;

    return MEMORY[0x1EEE6DA40](v0 + 2, v10, v12);
  }
}

uint64_t sub_1CFC62360()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1CFC624A4, v3, v2);
}

uint64_t sub_1CFC624A4()
{

  v0[14] = v0[2];
  v1 = v0[7];
  v2 = v0[8];

  return MEMORY[0x1EEE6DFA0](sub_1CFC62510, v1, v2);
}

uint64_t sub_1CFC62510()
{
  v1 = v0[14];

  [v1 setFilterAsNewCallersEnabledForPhone_];

  v2 = v0[3];
  v3 = [objc_opt_self() defaultCenter];
  v4 = sub_1CFC9F728();
  [v3 postNotificationName:v4 object:0];

  v5 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_callFilteringOnboardingViewController;
  v6 = *(v2 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_callFilteringOnboardingViewController);
  if (v6)
  {
    [v6 dismissViewControllerAnimated:1 completion:0];
    v7 = *(v2 + v5);
  }

  else
  {
    v7 = 0;
  }

  *(v2 + v5) = 0;

  v8 = v0[1];

  return v8();
}

Swift::Void __swiftcall RecentsViewController.presentAccountProvisioning()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_legacyMailboxService;
  swift_beginAccess();
  sub_1CFBA29FC(v1 + v2, &v6, &qword_1EC4EE538, qword_1CFCA9BD0);
  if (v7)
  {
    sub_1CFBAD070(&v6, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 40))(v3, v4);
    [v1 presentViewController:v5 animated:1 completion:0];

    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  else
  {
    sub_1CFBC2FB0(&v6, &qword_1EC4EE538, qword_1CFCA9BD0);
  }
}

uint64_t sub_1CFC62964(uint64_t a1)
{
  v1[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v1[10] = swift_task_alloc();
  v1[11] = sub_1CFC9F968();
  v1[12] = sub_1CFC9F958();
  sub_1CFC9C1D8();
  v2 = swift_task_alloc();
  v1[13] = v2;
  *v2 = v1;
  v2[1] = sub_1CFC62A54;

  return MEMORY[0x1EEE48730]();
}

uint64_t sub_1CFC62A54(uint64_t a1)
{
  *(*v1 + 112) = a1;

  v3 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFC62B98, v3, v2);
}

uint64_t sub_1CFC62B98()
{
  v1 = v0[14];

  sub_1CFC9C1A8();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = v0[10];
    v5 = sub_1CFC9F998();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = v3;
    v7 = sub_1CFC9F958();
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E85E0];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v6;
    sub_1CFBDC030(0, 0, v4, &unk_1CFCA7C60, v8);

    if ((v6[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_hasSubscribedToTips] & 1) == 0)
    {
      v6[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_hasSubscribedToTips] = 1;
      sub_1CFC9D1B8();
      sub_1CFC9D1A8();
      v10 = sub_1CFC9D198();

      v0[8] = v10;
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      *(v12 + 16) = sub_1CFC6BD3C;
      *(v12 + 24) = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EFAF0, &qword_1CFCA7C68);
      sub_1CFBA57C0(&qword_1EE04D5B8, &unk_1EC4EFAF0, &qword_1CFCA7C68, MEMORY[0x1E695BED8]);
      sub_1CFC9DDA8();

      swift_beginAccess();
      sub_1CFC9DC88();
      swift_endAccess();
    }
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1CFC62E34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_1CFC9F998();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1CFC9F968();

  v6 = sub_1CFC9F958();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  sub_1CFBDC330(0, 0, v4, &unk_1CFCA7C78, v7);
}

uint64_t sub_1CFC62F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v4[7] = swift_task_alloc();
  v4[8] = sub_1CFC9F968();
  v4[9] = sub_1CFC9F958();
  v6 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFC6302C, v6, v5);
}

uint64_t sub_1CFC6302C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 56);
    v3 = sub_1CFC9F998();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = Strong;
    v5 = sub_1CFC9F958();
    v6 = swift_allocObject();
    v7 = MEMORY[0x1E69E85E0];
    v6[2] = v5;
    v6[3] = v7;
    v6[4] = v4;
    sub_1CFBDC030(0, 0, v2, &unk_1CFCA7C80, v6);
  }

  **(v0 + 40) = Strong == 0;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1CFC63184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v4[4] = swift_task_alloc();
  v4[5] = sub_1CFC9F968();
  v4[6] = sub_1CFC9F958();
  v6 = sub_1CFC9F938();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CFC63258, v6, v5);
}

uint64_t sub_1CFC63258()
{
  v0[9] = *(v0[3] + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDataSource);
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1CFC632FC;

  return MEMORY[0x1EEDF2A80]();
}

uint64_t sub_1CFC632FC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1CFC63424, v4, v3);
}

uint64_t sub_1CFC63424(uint64_t a1)
{
  v2 = v1[3];
  v3 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController__configurationProvider;
  v1[12] = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController__configurationProvider;
  v4 = *(v2 + v3);
  if (v4)
  {
    v5 = v4;

    v6 = v5;
    if (([v6 isReceptionistAvailable] & 1) == 0 || (objc_msgSend(v6, sel_isReceptionistEnabled) & 1) != 0 || (v7 = objc_msgSend(objc_opt_self(), sel_currentDevice), v8 = objc_msgSend(v7, sel_userInterfaceIdiom), v7, v8) || (sub_1CFC9D1B8(), sub_1CFC9D1A8(), v9 = sub_1CFC9D148(), , (v9 & 1) == 0))
    {
      v11 = 0;
    }

    else
    {
      v10 = v1[11];
      v11 = v10 >= sub_1CFC9D188();
    }

    *(v1[3] + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_shouldShowScreeningTip) = v11;
    v12 = [v6 isFilterAsNewCallersEnabledForPhone];

    if ((v12 & 1) != 0 || (sub_1CFC9D1B8(), sub_1CFC9D1A8(), v13 = sub_1CFC9D138(), , (v13 & 1) == 0))
    {
      v15 = 0;
    }

    else
    {
      v14 = sub_1CFC9C798();
      v15 = v14 >= sub_1CFC9D178();
    }

    *(v1[3] + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_shouldShowFilteringTip) = v15;
    sub_1CFC9D1B8();
    sub_1CFC9D1A8();
    v16 = sub_1CFC9D148();

    if ((v16 & 1) == 0)
    {
      v17 = v1[4];
      v18 = v1[3];
      v19 = sub_1CFC9F998();
      (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
      v20 = v18;
      v21 = sub_1CFC9F958();
      v22 = swift_allocObject();
      v23 = MEMORY[0x1E69E85E0];
      v22[2] = v21;
      v22[3] = v23;
      v22[4] = v20;
      sub_1CFBDC030(0, 0, v17, &unk_1CFCA7C90, v22);
    }

    v24 = v1[1];

    return v24();
  }

  else
  {
    v1[13] = sub_1CFC9F958();
    v27 = sub_1CFC9F938();
    v1[14] = v27;
    v1[15] = v26;

    return MEMORY[0x1EEE6DFA0](sub_1CFC63734, v27, v26);
  }
}

uint64_t sub_1CFC63734()
{
  v1 = v0[3];
  v2 = *&v1[v0[12]];
  if (v2)
  {
    v3 = v2;

    v0[18] = v3;
    v4 = v0[7];
    v5 = v0[8];

    return MEMORY[0x1EEE6DFA0](sub_1CFC63AB4, v4, v5);
  }

  else
  {
    v6 = v0[4];
    v7 = sub_1CFC9F998();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v1;
    v9 = v1;
    v10 = sub_1CFC57758(0, 0, v6, &unk_1CFCA7C88, v8);
    v0[16] = v10;
    sub_1CFBC2FB0(v6, &qword_1EC4ED950, &qword_1CFCA2710);
    v11 = swift_task_alloc();
    v0[17] = v11;
    v12 = sub_1CFBA2D80(0, &qword_1EE04CF78, 0x1E69D8AF8);
    *v11 = v0;
    v11[1] = sub_1CFC63904;

    return MEMORY[0x1EEE6DA40](v0 + 2, v10, v12);
  }
}

uint64_t sub_1CFC63904()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1CFC63A48, v3, v2);
}

uint64_t sub_1CFC63A48()
{

  v0[18] = v0[2];
  v1 = v0[7];
  v2 = v0[8];

  return MEMORY[0x1EEE6DFA0](sub_1CFC63AB4, v1, v2);
}

uint64_t sub_1CFC63AB4()
{
  v1 = v0[18];

  v2 = v1;
  v3 = v0[18];
  if (![v3 isReceptionistAvailable] || (objc_msgSend(v3, sel_isReceptionistEnabled) & 1) != 0 || (v4 = objc_msgSend(objc_opt_self(), sel_currentDevice), v5 = objc_msgSend(v4, sel_userInterfaceIdiom), v4, v5) || (sub_1CFC9D1B8(), sub_1CFC9D1A8(), v6 = sub_1CFC9D148(), , (v6 & 1) == 0))
  {
    v8 = 0;
  }

  else
  {
    v7 = v0[11];
    v8 = v7 >= sub_1CFC9D188();
  }

  *(v0[3] + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_shouldShowScreeningTip) = v8;
  v9 = [v3 isFilterAsNewCallersEnabledForPhone];

  if ((v9 & 1) != 0 || (sub_1CFC9D1B8(), sub_1CFC9D1A8(), v10 = sub_1CFC9D138(), , (v10 & 1) == 0))
  {
    v12 = 0;
  }

  else
  {
    v11 = sub_1CFC9C798();
    v12 = v11 >= sub_1CFC9D178();
  }

  *(v0[3] + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_shouldShowFilteringTip) = v12;
  sub_1CFC9D1B8();
  sub_1CFC9D1A8();
  v13 = sub_1CFC9D148();

  if ((v13 & 1) == 0)
  {
    v14 = v0[4];
    v15 = v0[3];
    v16 = sub_1CFC9F998();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
    v17 = v15;
    v18 = sub_1CFC9F958();
    v19 = swift_allocObject();
    v20 = MEMORY[0x1E69E85E0];
    v19[2] = v18;
    v19[3] = v20;
    v19[4] = v17;
    sub_1CFBDC030(0, 0, v14, &unk_1CFCA7C90, v19);
  }

  v21 = v0[1];

  return v21();
}

id sub_1CFC63DB0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v6 = sub_1CFC6A6B0(a3, a4, a5);
  swift_beginAccess();

  sub_1CFBA73C4(0, 0, a2, v6);
  swift_endAccess();

  return sub_1CFBA76C8(v7);
}

Swift::Void __swiftcall RecentsViewController.dismissCallFilteringTip()()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filteringTipSection;
  if (*(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filteringTipSection))
  {
    v2 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    swift_beginAccess();
    if (*(*(v0 + v2) + 16))
    {
      sub_1CFBCB5C4(0, 1);
      v3 = swift_endAccess();
      sub_1CFBA76C8(v3);
      *(v0 + v1) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall RecentsViewController.didTapTurnOnFiltering()()
{
  v1 = v0;
  RecentsViewController.handleCallFilteringAction()();
  v2 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filteringTipSection;
  if (*(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filteringTipSection))
  {
    v3 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    swift_beginAccess();
    if (*(*(v1 + v3) + 16))
    {
      sub_1CFBCB5C4(0, 1);
      v4 = swift_endAccess();
      sub_1CFBA76C8(v4);
      *(v1 + v2) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1CFC63F8C()
{
  v1 = v0;
  RecentsViewController.handleCallFilteringAction()();
  v2 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filteringTipSection;
  if (*(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filteringTipSection))
  {
    v3 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    swift_beginAccess();
    if (*(*(v1 + v3) + 16))
    {
      sub_1CFBCB5C4(0, 1);
      v4 = swift_endAccess();
      sub_1CFBA76C8(v4);
      *(v1 + v2) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1CFC6402C()
{
  v1 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filteringTipSection;
  if (*(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filteringTipSection))
  {
    v2 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    swift_beginAccess();
    if (*(*(v0 + v2) + 16))
    {
      sub_1CFBCB5C4(0, 1);
      v3 = swift_endAccess();
      sub_1CFBA76C8(v3);
      *(v0 + v1) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1CFC640E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = sub_1CFC9F998();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1CFC9F968();
  v8 = v2;
  v9 = sub_1CFC9F958();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  sub_1CFBDC030(0, 0, v6, a2, v10);
}

uint64_t sub_1CFC64208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v4[4] = swift_task_alloc();
  v4[5] = sub_1CFC9F968();
  v4[6] = sub_1CFC9F958();
  v6 = sub_1CFC9F938();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CFC642DC, v6, v5);
}

uint64_t sub_1CFC642DC()
{
  if (![*(v0[3] + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_featureFlags) deviceExpertMigrationEnabled])
  {

    sub_1CFC9F768();
    v6 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v7 = sub_1CFC9F728();

    v8 = [v6 initWithSuiteName_];

    if (v8)
    {
      [v8 setBool:0 forKey:*MEMORY[0x1E69D8FC0]];
      [v8 setBool:0 forKey:*MEMORY[0x1E69D8EE8]];
    }

    v9 = v0[4];
    v10 = v0[3];
    v11 = [objc_opt_self() defaultCenter];
    v12 = sub_1CFC9F728();
    [v11 postNotificationName:v12 object:0];

    v13 = sub_1CFC9F998();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    v14 = v10;
    v15 = sub_1CFC9F958();
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E85E0];
    v16[2] = v15;
    v16[3] = v17;
    v16[4] = v14;
    sub_1CFBDC030(0, 0, v9, &unk_1CFCA7C20, v16);

    goto LABEL_7;
  }

  v1 = v0[3];
  v2 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController__configurationProvider;
  v0[9] = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController__configurationProvider;
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v3;

    v5 = v4;
    [v5 setReceptionistEnabled_];
    [v5 setCallScreeningEnabled_];

LABEL_7:

    v18 = v0[1];

    return v18();
  }

  v0[10] = sub_1CFC9F958();
  v21 = sub_1CFC9F938();
  v0[11] = v21;
  v0[12] = v20;

  return MEMORY[0x1EEE6DFA0](sub_1CFC645F8, v21, v20);
}

uint64_t sub_1CFC645F8()
{
  v1 = v0[3];
  v2 = *&v1[v0[9]];
  if (v2)
  {
    v3 = v2;

    v0[15] = v3;
    v4 = v0[7];
    v5 = v0[8];

    return MEMORY[0x1EEE6DFA0](sub_1CFC64978, v4, v5);
  }

  else
  {
    v6 = v0[4];
    v7 = sub_1CFC9F998();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v1;
    v9 = v1;
    v10 = sub_1CFC57758(0, 0, v6, &unk_1CFCA7C28, v8);
    v0[13] = v10;
    sub_1CFBC2FB0(v6, &qword_1EC4ED950, &qword_1CFCA2710);
    v11 = swift_task_alloc();
    v0[14] = v11;
    v12 = sub_1CFBA2D80(0, &qword_1EE04CF78, 0x1E69D8AF8);
    *v11 = v0;
    v11[1] = sub_1CFC647C8;

    return MEMORY[0x1EEE6DA40](v0 + 2, v10, v12);
  }
}

uint64_t sub_1CFC647C8()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1CFC6490C, v3, v2);
}

uint64_t sub_1CFC6490C()
{

  v0[15] = v0[2];
  v1 = v0[7];
  v2 = v0[8];

  return MEMORY[0x1EEE6DFA0](sub_1CFC64978, v1, v2);
}

uint64_t sub_1CFC64978()
{
  v1 = *(v0 + 120);

  v2 = v1;
  v3 = *(v0 + 120);
  [v3 setReceptionistEnabled_];
  [v3 setCallScreeningEnabled_];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1CFC64A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v4[7] = swift_task_alloc();
  v4[8] = sub_1CFC9F968();
  v4[9] = sub_1CFC9F958();
  v6 = sub_1CFC9F938();
  v4[10] = v6;
  v4[11] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CFC64AF0, v6, v5);
}

uint64_t sub_1CFC64AF0()
{
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_screeningTipSection;
  if (*(v1 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_screeningTipSection))
  {
    v3 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
    v4 = swift_beginAccess();
    if (*(*(v1 + v3) + 16))
    {
      sub_1CFBCB5C4(0, 1);
      v7 = swift_endAccess();
      sub_1CFBA76C8(v7);
      *(v1 + v2) = 0;

      v0[12] = sub_1CFC9F958();
      v8 = sub_1CFC9F938();
      v6 = v9;
      v0[13] = v8;
      v0[14] = v9;
      v4 = sub_1CFC64C48;
      v5 = v8;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DFA0](v4, v5, v6);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1CFC64C48()
{
  v1 = v0[6];
  v2 = *&v1[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController__configurationProvider];
  if (v2)
  {
    v3 = v2;

    v0[17] = v3;
    v4 = v0[10];
    v5 = v0[11];

    return MEMORY[0x1EEE6DFA0](sub_1CFC64FCC, v4, v5);
  }

  else
  {
    v6 = v0[7];
    v7 = sub_1CFC9F998();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v1;
    v9 = v1;
    v10 = sub_1CFC57758(0, 0, v6, &unk_1CFCA7C30, v8);
    v0[15] = v10;
    sub_1CFBC2FB0(v6, &qword_1EC4ED950, &qword_1CFCA2710);
    v11 = swift_task_alloc();
    v0[16] = v11;
    v12 = sub_1CFBA2D80(0, &qword_1EE04CF78, 0x1E69D8AF8);
    *v11 = v0;
    v11[1] = sub_1CFC64E1C;

    return MEMORY[0x1EEE6DA40](v0 + 5, v10, v12);
  }
}

uint64_t sub_1CFC64E1C()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1CFC64F60, v3, v2);
}

uint64_t sub_1CFC64F60()
{

  v0[17] = v0[5];
  v1 = v0[10];
  v2 = v0[11];

  return MEMORY[0x1EEE6DFA0](sub_1CFC64FCC, v1, v2);
}

uint64_t sub_1CFC64FCC()
{
  v1 = *(v0 + 136);

  [v1 setEligibleForReceptionistOnboardingNotification_];

  v2 = objc_allocWithZone(MEMORY[0x1E6983308]);
  v3 = sub_1CFC9F728();
  v4 = [v2 initWithBundleIdentifier_];

  v5 = sub_1CFC9F898();
  [v4 removeDeliveredNotificationsWithIdentifiers_];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1CFC65110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_1CFC9F998();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1CFC9F968();
  v10 = v4;
  v11 = sub_1CFC9F958();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  sub_1CFBDC030(0, 0, v8, a4, v12);
}

id sub_1CFC65230(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v33 - v5;
  v7 = sub_1CFC9CF08();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v36 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v33 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v33 - v15;
  v17 = *MEMORY[0x1E6995AA0];
  v34 = *(v8 + 104);
  v34(v33 - v15, v17, v7, v14);
  sub_1CFC6A6B0(&qword_1EE04D668, MEMORY[0x1E6995AA8], MEMORY[0x1E6995AB8]);
  v18 = sub_1CFC9F6F8();
  v35 = *(v8 + 8);
  v35(v16, v7);
  if (v18)
  {
    v19 = sub_1CFC9F998();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    sub_1CFC9F968();
    v20 = a2;
    v21 = sub_1CFC9F958();
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E85E0];
    v22[2] = v21;
    v22[3] = v23;
    v22[4] = v20;
    sub_1CFBDC030(0, 0, v6, &unk_1CFCA7D10, v22);
  }

  else
  {
    v33[1] = a1;
    v33[2] = a2;
    v25 = *&a2[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsSection];
    v26 = *(v8 + 16);
    v26(v16, a1, v7);
    v27 = OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_currentFilterMode;
    swift_beginAccess();
    v26(v12, v25 + v27, v7);
    swift_beginAccess();
    v28 = v25 + v27;
    v29 = v36;
    (*(v8 + 24))(v28, v16, v7);
    swift_endAccess();
    sub_1CFC744A0(v12);
    v30 = v35;
    v35(v12, v7);
    v30(v16, v7);
    (v34)(v29, *MEMORY[0x1E6995A70], v7);
    sub_1CFC6A6B0(&qword_1EE04D660, MEMORY[0x1E6995AA8], MEMORY[0x1E6995AC0]);
    sub_1CFC9F878();
    sub_1CFC9F878();
    v31 = v30;
    if (v39 == v37 && v40 == v38)
    {
      v32 = 0;
    }

    else
    {
      v32 = sub_1CFCA02B8() ^ 1;
    }

    v31(v29, v7);

    return sub_1CFC5E0B0(v32 & 1);
  }
}

uint64_t sub_1CFC6569C()
{
  v0[2] = sub_1CFC9F968();
  v0[3] = sub_1CFC9F958();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1CFC0DFF4;

  return sub_1CFC60AB8();
}

id sub_1CFC65748(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  }

  v3 = Strong;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  KeyPath = swift_getKeyPath();
  v6 = v3;
  v7 = sub_1CFC9EBC8();
  sub_1CFC9DE18();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v24[0] = 0;
  v16 = sub_1CFC9EBD8();
  sub_1CFC9DE18();
  *&v32 = sub_1CFC6BEB4;
  *(&v32 + 1) = v4;
  *&v33 = KeyPath;
  BYTE8(v33) = 0;
  LOBYTE(v34) = v7;
  *(&v34 + 1) = v9;
  *&v35 = v11;
  *(&v35 + 1) = v13;
  *&v36 = v15;
  BYTE8(v36) = 0;
  LOBYTE(v37) = v16;
  *(&v37 + 1) = v17;
  *v38 = v18;
  *&v38[8] = v19;
  *&v38[16] = v20;
  v38[24] = 0;
  v29 = v36;
  v30 = v37;
  v31[0] = *v38;
  *(v31 + 9) = *&v38[9];
  v25 = v32;
  v26 = v33;
  v27 = v34;
  v28 = v35;
  v21 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFB08, &qword_1CFCA7CC8));
  sub_1CFBA29FC(&v32, v24, &unk_1EC4EFB10, &qword_1CFCA7CD0);
  v22 = sub_1CFC9E108();

  sub_1CFBC2FB0(&v32, &unk_1EC4EFB10, &qword_1CFCA7CD0);
  return v22;
}

void sub_1CFC65920(uint64_t a1, uint64_t a2)
{
  v3 = sub_1CFC9CF08();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    RecentsViewController.update(filterMode:animated:)(a1, 1);
    v9 = *&v8[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel];
    (*(v4 + 16))(v6, a1, v3);
    v10 = v9;
    sub_1CFC9CE98();
  }
}

uint64_t sub_1CFC65A48(uint64_t a1, void (*a2)(char *), uint64_t a3, unsigned int *a4)
{
  v6 = sub_1CFC9CF08();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *a4, v6, v8);
  a2(v10);
  return (*(v7 + 8))(v10, v6);
}

Swift::Void __swiftcall RecentsViewController.configurationChanged()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = sub_1CFC9F998();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_1CFC9F968();
  v6 = v0;

  v7 = sub_1CFC9F958();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  v8[5] = sub_1CFC6AB0C;
  v8[6] = v4;
  sub_1CFBDC030(0, 0, v3, &unk_1CFCA79C8, v8);
}

void sub_1CFC65CB4(uint64_t a1)
{
  v1 = sub_1CFC9CF08();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v24 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel;
    v13 = *(Strong + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel);
    sub_1CFC9CE88();

    v14 = *MEMORY[0x1E6995A90];
    v23 = *(v2 + 104);
    v23(v7, v14, v1);
    sub_1CFC6A6B0(&qword_1EE04D660, MEMORY[0x1E6995AA8], MEMORY[0x1E6995AC0]);
    sub_1CFC9F878();
    sub_1CFC9F878();
    v25 = v4;
    if (v28 == v26 && v29 == v27)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_1CFCA02B8();
    }

    v16 = *(v2 + 8);
    v16(v7, v1);
    v16(v10, v1);

    if (v15)
    {
      v17 = *MEMORY[0x1E6995A70];
      v18 = v25;
      v19 = v23;
      v23(v25, v17, v1);
      RecentsViewController.update(filterMode:animated:)(v18, 0);
      v16(v18, v1);
      v20 = *&v12[v24];
      v19(v18, v17, v1);
      v21 = v20;
      sub_1CFC9CE98();
    }

    sub_1CFC5C900(0, 1);
    v22 = *&v12[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDataSource];
    sub_1CFC9C8A8();
  }
}

uint64_t sub_1CFC65FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[15] = a4;
  v7 = sub_1CFC9CF08();
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v6[27] = swift_task_alloc();
  v6[28] = sub_1CFC9F968();
  v6[29] = sub_1CFC9F958();
  v9 = sub_1CFC9F938();
  v6[30] = v9;
  v6[31] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1CFC66130, v9, v8);
}

uint64_t sub_1CFC66130(uint64_t a1)
{
  v2 = v1[15];
  v3 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController__configurationProvider;
  v1[32] = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController__configurationProvider;
  v4 = *(v2 + v3);
  if (!v4)
  {
    v1[33] = sub_1CFC9F958();
    v26 = sub_1CFC9F938();
    v1[34] = v26;
    v1[35] = v25;

    return MEMORY[0x1EEE6DFA0](sub_1CFC66AD8, v26, v25);
  }

  v1[39] = v4;
  v5 = v1[26];
  v7 = v1[18];
  v6 = v1[19];
  v8 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel;
  v9 = *(v2 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel);
  v10 = v4;
  v11 = v9;
  v12 = sub_1CFC9CF28();

  v67 = *MEMORY[0x1E6995A90];
  v66 = *(v6 + 104);
  v66(v5);
  LOBYTE(v11) = sub_1CFC1D758(v5, v12);

  v65 = *(v6 + 8);
  v65(v5, v7);
  if ((v11 & 1) != 0 && ([v10 isFilterAsNewCallersEnabledForPhone] & 1) == 0)
  {

    if (qword_1EE050010 != -1)
    {
LABEL_59:
      swift_once();
    }

    v27 = sub_1CFC9D938();
    __swift_project_value_buffer(v27, qword_1EE052308);
    v28 = sub_1CFC9D918();
    v29 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1CFB9F000, v28, v29, "Requests toggled off, updating UI", v30, 2u);
      MEMORY[0x1D3873280](v30, -1, -1);
    }

    v56 = *(v2 + v8);
    v31 = sub_1CFC9CF18();
    v62 = v32;
    v8 = *v32;
    v57 = *(*v32 + 16);
    v55 = v31;
    if (!v57)
    {
      v2 = 0;
      v38 = 0;
      goto LABEL_31;
    }

    v54 = v10;
    v2 = 0;
    v59 = v1[19];
    while (1)
    {
      if (v2 >= *(v8 + 16))
      {
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v33 = v1[24];
      v34 = v1[18];
      v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v64 = *(v59 + 72);
      v63 = *(v59 + 16);
      v63(v1[25], v8 + v61 + v64 * v2, v34);
      (v66)(v33, v67, v34);
      sub_1CFC6A6B0(&qword_1EE04D660, MEMORY[0x1E6995AA8], MEMORY[0x1E6995AC0]);
      sub_1CFC9F878();
      sub_1CFC9F878();
      v36 = v1[24];
      v35 = v1[25];
      v37 = v1[18];
      if (v1[6] == v1[8] && v1[7] == v1[9])
      {
        break;
      }

      v10 = sub_1CFCA02B8();
      v65(v36, v37);
      v65(v35, v37);

      if (v10)
      {
        goto LABEL_29;
      }

      if (v57 == ++v2)
      {
        v2 = *(*v62 + 16);
        v38 = v2;
        goto LABEL_30;
      }
    }

    v65(v1[24], v1[18]);
    v65(v35, v37);

LABEL_29:
    v38 = v2 + 1;
    v39 = *v62;
    v40 = *(*v62 + 16);
    if (v40 - 1 == v2)
    {
LABEL_30:
      v10 = v54;
LABEL_31:
      v41 = v1[16];
      sub_1CFBCCBFC(v2, v38);
      v55();

      v41();
      goto LABEL_32;
    }

    v58 = (v1[19] + 40);
    v10 = v61 + v64 * v38;
    v8 = v63;
    while (1)
    {
      if (v38 >= v40)
      {
        goto LABEL_58;
      }

      v43 = v1[22];
      v44 = v1[18];
      (v8)(v1[23], v39 + v10, v44);
      (v66)(v43, v67, v44);
      sub_1CFC9F878();
      sub_1CFC9F878();
      v46 = v1[22];
      v45 = v1[23];
      v47 = v1[18];
      if (v1[10] == v1[12] && v1[11] == v1[13])
      {
        v65(v1[22], v1[18]);
        v65(v45, v47);
      }

      else
      {
        v60 = sub_1CFCA02B8();
        v65(v46, v47);
        v65(v45, v47);

        if ((v60 & 1) == 0)
        {
          v8 = v63;
          if (v38 != v2)
          {
            if ((v2 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
              goto LABEL_65;
            }

            v49 = *v62;
            v50 = *(*v62 + 16);
            if (v2 >= v50)
            {
              goto LABEL_61;
            }

            v63(v1[21], v49 + v61 + v2 * v64, v1[18]);
            if (v38 >= v50)
            {
              goto LABEL_62;
            }

            v63(v1[20], v49 + v10, v1[18]);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v62 = v49;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v49 = sub_1CFC829E8(v49);
              *v62 = v49;
            }

            if (v2 >= v49[2])
            {
              goto LABEL_63;
            }

            v52 = v49 + v61;
            v53 = *v58;
            (*v58)(&v52[v2 * v64], v1[20], v1[18]);
            if (v38 >= *(*v62 + 16))
            {
              goto LABEL_64;
            }

            v53(*v62 + v10, v1[21], v1[18]);
          }

          ++v2;
          goto LABEL_38;
        }
      }

      v8 = v63;
LABEL_38:
      ++v38;
      v39 = *v62;
      v40 = *(*v62 + 16);
      v10 += v64;
      if (v38 == v40)
      {
        v10 = v54;
        if (v38 >= v2)
        {
          goto LABEL_31;
        }

        __break(1u);
        goto LABEL_57;
      }
    }
  }

  v13 = v1[26];
  v14 = v1[18];
  v15 = *(v2 + v8);
  v16 = sub_1CFC9CF28();

  (v66)(v13, v67, v14);
  LOBYTE(v15) = sub_1CFC1D758(v13, v16);

  v65(v13, v14);
  if ((v15 & 1) != 0 || ![v10 isFilterAsNewCallersEnabledForPhone])
  {

LABEL_32:

    v42 = v1[1];

    return v42();
  }

  if (qword_1EE050010 != -1)
  {
LABEL_65:
    swift_once();
  }

  v17 = sub_1CFC9D938();
  __swift_project_value_buffer(v17, qword_1EE052308);
  v18 = sub_1CFC9D918();
  v19 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1CFB9F000, v18, v19, "Requests toggled on, updating UI", v20, 2u);
    MEMORY[0x1D3873280](v20, -1, -1);
  }

  v21 = *(v2 + v8);
  v1[40] = v21;
  v22 = v21;
  v23 = swift_task_alloc();
  v1[41] = v23;
  *v23 = v1;
  v23[1] = sub_1CFC67774;

  return sub_1CFC5C050();
}

uint64_t sub_1CFC66AD8()
{
  v1 = v0[15];
  v2 = *&v1[v0[32]];
  if (v2)
  {
    v3 = v2;

    v0[38] = v3;
    v4 = v0[30];
    v5 = v0[31];

    return MEMORY[0x1EEE6DFA0](sub_1CFC66E58, v4, v5);
  }

  else
  {
    v6 = v0[27];
    v7 = sub_1CFC9F998();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v1;
    v9 = v1;
    v10 = sub_1CFC57758(0, 0, v6, &unk_1CFCA7C08, v8);
    v0[36] = v10;
    sub_1CFBC2FB0(v6, &qword_1EC4ED950, &qword_1CFCA2710);
    v11 = swift_task_alloc();
    v0[37] = v11;
    v12 = sub_1CFBA2D80(0, &qword_1EE04CF78, 0x1E69D8AF8);
    *v11 = v0;
    v11[1] = sub_1CFC66CA8;

    return MEMORY[0x1EEE6DA40](v0 + 14, v10, v12);
  }
}

uint64_t sub_1CFC66CA8()
{
  v1 = *v0;

  v2 = *(v1 + 280);
  v3 = *(v1 + 272);

  return MEMORY[0x1EEE6DFA0](sub_1CFC66DEC, v3, v2);
}

uint64_t sub_1CFC66DEC()
{

  v0[38] = v0[14];
  v1 = v0[30];
  v2 = v0[31];

  return MEMORY[0x1EEE6DFA0](sub_1CFC66E58, v1, v2);
}

uint64_t sub_1CFC66E58()
{
  v1 = v0[38];
  v0[39] = v1;
  v2 = v0[26];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[15];
  v6 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel;
  v7 = *(v5 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel);
  v8 = sub_1CFC9CF28();

  v61 = *MEMORY[0x1E6995A90];
  v60 = *(v3 + 104);
  v60(v2);
  LOBYTE(v7) = sub_1CFC1D758(v2, v8);

  v59 = *(v3 + 8);
  v59(v2, v4);
  if ((v7 & 1) != 0 && ([v1 isFilterAsNewCallersEnabledForPhone] & 1) == 0)
  {

    if (qword_1EE050010 != -1)
    {
LABEL_55:
      swift_once();
    }

    v21 = sub_1CFC9D938();
    __swift_project_value_buffer(v21, qword_1EE052308);
    v22 = sub_1CFC9D918();
    v23 = sub_1CFC9FAF8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1CFB9F000, v22, v23, "Requests toggled off, updating UI", v24, 2u);
      MEMORY[0x1D3873280](v24, -1, -1);
    }

    v50 = *(v5 + v6);
    v25 = sub_1CFC9CF18();
    v56 = v26;
    v6 = *v26;
    v51 = *(*v26 + 16);
    v49 = v25;
    if (!v51)
    {
      v5 = 0;
      v32 = 0;
      goto LABEL_27;
    }

    v48 = v1;
    v5 = 0;
    v53 = v0[19];
    while (1)
    {
      if (v5 >= *(v6 + 16))
      {
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v27 = v0[24];
      v28 = v0[18];
      v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v58 = *(v53 + 72);
      v57 = *(v53 + 16);
      v57(v0[25], v6 + v55 + v58 * v5, v28);
      (v60)(v27, v61, v28);
      sub_1CFC6A6B0(&qword_1EE04D660, MEMORY[0x1E6995AA8], MEMORY[0x1E6995AC0]);
      sub_1CFC9F878();
      sub_1CFC9F878();
      v30 = v0[24];
      v29 = v0[25];
      v31 = v0[18];
      if (v0[6] == v0[8] && v0[7] == v0[9])
      {
        break;
      }

      v1 = sub_1CFCA02B8();
      v59(v30, v31);
      v59(v29, v31);

      if (v1)
      {
        goto LABEL_25;
      }

      if (v51 == ++v5)
      {
        v5 = *(*v56 + 16);
        v32 = v5;
        goto LABEL_26;
      }
    }

    v59(v0[24], v0[18]);
    v59(v29, v31);

LABEL_25:
    v32 = v5 + 1;
    v33 = *v56;
    v34 = *(*v56 + 16);
    if (v34 - 1 == v5)
    {
LABEL_26:
      v1 = v48;
LABEL_27:
      v35 = v0[16];
      sub_1CFBCCBFC(v5, v32);
      v49();

      v35();
      goto LABEL_28;
    }

    v52 = (v0[19] + 40);
    v1 = v55 + v58 * v32;
    v6 = v57;
    while (1)
    {
      if (v32 >= v34)
      {
        goto LABEL_54;
      }

      v37 = v0[22];
      v38 = v0[18];
      (v6)(v0[23], v33 + v1, v38);
      (v60)(v37, v61, v38);
      sub_1CFC9F878();
      sub_1CFC9F878();
      v40 = v0[22];
      v39 = v0[23];
      v41 = v0[18];
      if (v0[10] == v0[12] && v0[11] == v0[13])
      {
        v59(v0[22], v0[18]);
        v59(v39, v41);
      }

      else
      {
        v54 = sub_1CFCA02B8();
        v59(v40, v41);
        v59(v39, v41);

        if ((v54 & 1) == 0)
        {
          v6 = v57;
          if (v32 != v5)
          {
            if ((v5 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_57:
              __break(1u);
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
LABEL_60:
              __break(1u);
              goto LABEL_61;
            }

            v43 = *v56;
            v44 = *(*v56 + 16);
            if (v5 >= v44)
            {
              goto LABEL_57;
            }

            v57(v0[21], v43 + v55 + v5 * v58, v0[18]);
            if (v32 >= v44)
            {
              goto LABEL_58;
            }

            v57(v0[20], v43 + v1, v0[18]);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v56 = v43;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v43 = sub_1CFC829E8(v43);
              *v56 = v43;
            }

            if (v5 >= v43[2])
            {
              goto LABEL_59;
            }

            v46 = v43 + v55;
            v47 = *v52;
            (*v52)(&v46[v5 * v58], v0[20], v0[18]);
            if (v32 >= *(*v56 + 16))
            {
              goto LABEL_60;
            }

            v47(*v56 + v1, v0[21], v0[18]);
          }

          ++v5;
          goto LABEL_34;
        }
      }

      v6 = v57;
LABEL_34:
      ++v32;
      v33 = *v56;
      v34 = *(*v56 + 16);
      v1 += v58;
      if (v32 == v34)
      {
        v1 = v48;
        if (v32 >= v5)
        {
          goto LABEL_27;
        }

        __break(1u);
        goto LABEL_53;
      }
    }
  }

  v9 = v0[26];
  v10 = v0[18];
  v11 = *(v5 + v6);
  v12 = sub_1CFC9CF28();

  (v60)(v9, v61, v10);
  LOBYTE(v11) = sub_1CFC1D758(v9, v12);

  v59(v9, v10);
  if ((v11 & 1) != 0 || ![v1 isFilterAsNewCallersEnabledForPhone])
  {

LABEL_28:

    v36 = v0[1];

    return v36();
  }

  if (qword_1EE050010 != -1)
  {
LABEL_61:
    swift_once();
  }

  v13 = sub_1CFC9D938();
  __swift_project_value_buffer(v13, qword_1EE052308);
  v14 = sub_1CFC9D918();
  v15 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1CFB9F000, v14, v15, "Requests toggled on, updating UI", v16, 2u);
    MEMORY[0x1D3873280](v16, -1, -1);
  }

  v17 = *(v5 + v6);
  v0[40] = v17;
  v18 = v17;
  v19 = swift_task_alloc();
  v0[41] = v19;
  *v19 = v0;
  v19[1] = sub_1CFC67774;

  return sub_1CFC5C050();
}

uint64_t sub_1CFC67774(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 336) = a1;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);

  return MEMORY[0x1EEE6DFA0](sub_1CFC6789C, v4, v3);
}

uint64_t sub_1CFC6789C()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[16];

  sub_1CFC9CF38();

  v3();

  v4 = v0[1];

  return v4();
}

id sub_1CFC67A3C()
{
  [v0 dismissViewControllerAnimated:1 completion:0];
  v1 = *&v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_snapController];

  return [v1 startOnboardingOrEditForMode:1 fromViewController:v0];
}

uint64_t RecentsViewController.presentVoicemailDetails(uuid:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1CFC9F968();
  v2[4] = sub_1CFC9F958();
  v4 = sub_1CFC9F938();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1CFC67B2C, v4, v3);
}

uint64_t sub_1CFC67B2C()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1CFC67BD0;
  v2 = *(v0 + 16);

  return sub_1CFC8B30C(v2);
}

uint64_t sub_1CFC67BD0()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1CFC67CF0, v3, v2);
}

uint64_t sub_1CFC67CF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t RecentsViewController.presentCallHistoryDetails(uniqueID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1CFC9F968();
  v3[5] = sub_1CFC9F958();
  v5 = sub_1CFC9F938();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1CFC67DEC, v5, v4);
}

uint64_t sub_1CFC67DEC()
{
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1CFC67E90;
  v3 = v0[2];
  v2 = v0[3];

  return sub_1CFC8BC88(v3, v2);
}

uint64_t sub_1CFC67E90()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1CFC67FB0, v3, v2);
}

uint64_t sub_1CFC67FB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CFC68010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1CFC38B78;

  return RecentsDetailProvider.voicemailDetailViewController(for:deleteAction:callbackAction:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t RecentsDetailProvider.voicemailDetailViewController(for:deleteAction:callbackAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = 1;
  v17 = (*(a7 + 32) + **(a7 + 32));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1CFC38B78;

  return v17(a1, v7 + 24, a2, a3, a4, a5, a6, a7);
}

void sub_1CFC68300()
{
  v1 = *&v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_searchResultsController];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      v6 = [v5 view];
      if (v6)
      {
        v7 = v6;
        [v4 addSubview_];

        [v0 addChildViewController_];
        [v5 didMoveToParentViewController_];
        v8 = [v5 view];

        if (v8)
        {
          v9 = [v0 view];
          if (v9)
          {
            v10 = v9;
            [v9 bounds];
            v12 = v11;
            v14 = v13;
            v16 = v15;
            v18 = v17;

            [v8 setFrame_];
            v19 = [v0 collectionView];
            if (v19)
            {
              v20 = v19;
              [v19 setHidden_];

              type metadata accessor for BundleClass();
              ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
              v22 = [objc_opt_self() bundleForClass_];
              v23 = sub_1CFC9BE28();
              v25 = v24;

              sub_1CFC5F074(v23, v25);

              v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_isSearching] = 1;
              return;
            }

LABEL_13:
            __break(1u);
            return;
          }

LABEL_12:
          __break(1u);
          goto LABEL_13;
        }

LABEL_11:
        __break(1u);
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1CFC68564()
{
  v1 = *&v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_searchResultsController];
  if (!v1)
  {
    return;
  }

  v8 = v1;
  v2 = [v8 view];
  if (!v2)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  v4 = [v2 superview];

  if (!v4)
  {

    goto LABEL_9;
  }

  v5 = [v8 view];
  if (!v5)
  {
    goto LABEL_13;
  }

  [v5 removeFromSuperview];

  [v8 removeFromParentViewController];
  v6 = [v0 collectionView];
  if (!v6)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 setHidden_];

  v0[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_isSearching] = 0;
  RecentsViewController.selectedItemsDidChange()();
LABEL_9:
}

uint64_t sub_1CFC68864(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1CFC9BE98();
  if (a1)
  {
    sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
    v4 = sub_1CFC9F898();
  }

  else
  {
    v4 = 0;
  }

  v6.receiver = v2;
  v6.super_class = type metadata accessor for ObservingNavigationItem();
  objc_msgSendSuper2(&v6, sel_setRightBarButtonItems_, v4);

  v7 = v2;
  swift_getKeyPath();
  return sub_1CFC9BEA8();
}

void sub_1CFC68934(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 rightBarButtonItems];
  if (v3)
  {
    v4 = v3;
    sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
    v5 = sub_1CFC9F8A8();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_1CFC689B4(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
    v3 = sub_1CFC9F898();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setRightBarButtonItems_];
}

uint64_t sub_1CFC68A3C(uint64_t a1, char a2)
{
  v3 = v2;
  swift_getKeyPath();
  sub_1CFC9BE98();
  if (a1)
  {
    sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
    v6 = sub_1CFC9F898();
  }

  else
  {
    v6 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ObservingNavigationItem();
  objc_msgSendSuper2(&v8, sel_setRightBarButtonItems_animated_, v6, a2 & 1);

  v9 = v3;
  swift_getKeyPath();
  return sub_1CFC9BEA8();
}

id sub_1CFC68C54(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ObservingNavigationItem();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1CFC68C88@<X0>(void *a1@<X8>)
{
  if (qword_1EE04F6F0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE052300;
  swift_getKeyPath();
  sub_1CFC6A6B0(&qword_1EE04F6E8, type metadata accessor for ObservableLayoutManager, &unk_1CFCA3850);

  sub_1CFC9C158();

  v3 = *(v2 + 16);

  *a1 = v3;
  return result;
}

uint64_t sub_1CFC68D80(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1CFC68DCC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1CFC68EC4;

  return v6(a1);
}

uint64_t sub_1CFC68EC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1CFC68FBC(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1CFC690B0;

  return v5(v2 + 16);
}

uint64_t sub_1CFC690B0()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

double sub_1CFC691E0(void *a1, void *a2)
{
  sub_1CFBAB5EC();
  sub_1CFBAD088();
  if (([a1 isEditing] & 1) == 0)
  {
    v5 = [a2 splitViewControllerLayoutEnvironment];
    v6 = [a1 traitCollection];
    v7 = [v6 splitViewControllerLayoutEnvironment];

    if (v5 == 2)
    {
      if (v7 == 1)
      {
        return sub_1CFC5B528();
      }
    }

    else if (v5 == 1 && v7 == 2)
    {
      sub_1CFBC5F74(0);
    }
  }

  return result;
}

void _s10CallsAppUI21RecentsViewControllerC27goToCallFilteringInSettingsyyF_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFAB0, &qword_1CFCA4DA0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v16 - v1;
  v3 = sub_1CFC9BF28();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v7 = sub_1CFC9D938();
  __swift_project_value_buffer(v7, qword_1EE052308);
  v8 = sub_1CFC9D918();
  v9 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1CFB9F000, v8, v9, "RecentsViewController: Did call  goToCallFilteringInSettings", v10, 2u);
    MEMORY[0x1D3873280](v10, -1, -1);
  }

  v11 = [objc_opt_self() currentDevice];
  v12 = [v11 userInterfaceIdiom];

  if (v12 == 5)
  {
    v13 = [objc_opt_self() defaultCenter];
    v17 = sub_1CFC9F728();
    [v13 postNotificationName:v17 object:0];

    v14 = v17;
  }

  else
  {
    sub_1CFC9BF08();
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      sub_1CFBC2FB0(v2, &qword_1EC4EFAB0, &qword_1CFCA4DA0);
    }

    else
    {
      (*(v4 + 32))(v6, v2, v3);
      v15 = sub_1CFC9BEE8();
      TUOpenSensitiveURL();

      (*(v4 + 8))(v6, v3);
    }
  }
}

uint64_t sub_1CFC695D0(uint64_t *a1, uint64_t a2)
{
  v35 = a2;
  v2 = *a1;
  v3 = *a1 + 16;
  v31 = *v3;
  if (!*v3)
  {
    return *v3;
  }

  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = v2;
    v7 = v2[v4 + 5];
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 40);
    swift_unknownObjectRetain();
    v9(v33, ObjectType, v7);
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v10 = sub_1CFC9F6D8();
    v11 = *(v35 + 64);
    sub_1CFCA0338();
    v12 = v11 ? 3 : 1;
    MEMORY[0x1D3872880](v12);
    v13 = sub_1CFCA0378();
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    result = swift_unknownObjectRelease();
    if (v10 == v13)
    {
      break;
    }

    ++v5;
    v4 += 2;
    v2 = v6;
    if (v31 == v5)
    {
      return *v3;
    }
  }

  v15 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    goto LABEL_34;
  }

  v16 = *v3;
  if (v15 == *v3)
  {
    return v5;
  }

  v17 = v6;
  while (v15 < v16)
  {
    v19 = v15;
    v32 = v17;
    v20 = v17[v4 + 7];
    v29 = &v17[v4];
    v21 = swift_getObjectType();
    v22 = *(v20 + 40);
    swift_unknownObjectRetain();
    v22(v33, v21, v20);
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v23 = sub_1CFC9F6D8();
    v24 = *(v35 + 64);
    sub_1CFCA0338();
    if (v24)
    {
      v25 = 3;
    }

    else
    {
      v25 = 1;
    }

    MEMORY[0x1D3872880](v25);
    v26 = sub_1CFCA0378();
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    result = swift_unknownObjectRelease();
    if (v23 == v26)
    {
      v17 = v32;
      v18 = v19;
    }

    else
    {
      v18 = v19;
      if (v19 == v5)
      {
        v17 = v32;
        ++v5;
      }

      else
      {
        v17 = v32;
        if ((v5 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }

        if (v5 >= *v3)
        {
          goto LABEL_31;
        }

        if (v19 >= *v3)
        {
          goto LABEL_32;
        }

        v28 = *&v32[2 * v5 + 4];
        v30 = *(v29 + 3);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1CFC829C0(v32);
        }

        *&v17[2 * v5 + 4] = v30;
        result = swift_unknownObjectRelease();
        if (v19 >= v17[2])
        {
          goto LABEL_33;
        }

        *&v17[v4 + 6] = v28;
        result = swift_unknownObjectRelease();
        *a1 = v17;
        ++v5;
      }
    }

    v15 = v18 + 1;
    v3 = (v17 + 2);
    v16 = v17[2];
    v4 += 2;
    if (v15 == v16)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

char *sub_1CFC698E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v86 = a7;
  v87 = a4;
  v84 = a6;
  v88 = a5;
  v90 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v85 = &v83 - v12;
  v13 = sub_1CFC9CC98();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v83 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1CFC9CF08();
  MEMORY[0x1EEE9AC00](v92);
  v91 = sub_1CFC9CED8();
  v15 = *(v91 - 1);
  MEMORY[0x1EEE9AC00](v91);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage____navItem) = 0;
  v18 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_featureFlags;
  *(v8 + v18) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v19 = v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDetailProvider;
  *(v19 + 32) = 0;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsRemindersDataSource) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsRemindersSection) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoriteSection) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_voicemailsSection) = 0;
  v20 = v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_legacyMailboxService;
  *(v20 + 32) = 0;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  v21 = (v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider);
  *v21 = 0;
  v21[1] = 0;
  v21[2] = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_callFilteringOnboardingViewController) = 0;
  v22 = (v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDismissalAction);
  *v22 = 0;
  v22[1] = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_hasLegacyUnreadVoicemails) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_hasSubscribedToTips) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_shouldShowScreeningTip) = 2;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_shouldShowFilteringTip) = 2;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filteringTipSection) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_screeningTipSection) = 0;
  v23 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_snapController;
  v24 = [objc_allocWithZone(MEMORY[0x1E695CE18]) &selRef_avatar];
  v25 = [objc_allocWithZone(MEMORY[0x1E695D1A0]) initWithContactStore_];

  *(v8 + v23) = v25;
  v26 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_layoutManager;
  *(v8 + v26) = [objc_opt_self() shared];
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_isEditingFavorites) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController__configurationProvider) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterSegmentedControl) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_acceptedContactsDidChangeSubscription) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_isSearching) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___searchController) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___doneButtonItem) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___clearAllButtonItem) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___filterButtonItem) = 0;
  p_prots = &OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate.prots;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterTitleButton) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadButtonItem) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___addFavoriteItem) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_cancellables) = MEMORY[0x1E69E7CD0];
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___keyPadPrototypeView) = 0;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keyPadKeysGenerated) = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  sub_1CFBA2AA8(a1, v19);
  swift_endAccess();
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDataSource) = a2;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoritesDataSource) = v90;
  v89 = a1;
  sub_1CFBA29FC(a1, v93, &unk_1EC4EF810, &qword_1CFCA7900);
  type metadata accessor for DetailsPresenter(0);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v28 + 72) = 0;
  v29 = OBJC_IVAR____TtC10CallsAppUI16DetailsPresenter_recentGroupCallItemInDetailsView;
  v30 = sub_1CFC9C448();
  (*(*(v30 - 8) + 56))(v28 + v29, 1, 1, v30);
  *(v28 + OBJC_IVAR____TtC10CallsAppUI16DetailsPresenter_contactDetailsCoordinator) = 0;
  *(v28 + 16) = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v31 = v93[1];
  *(v28 + 32) = v93[0];
  *(v28 + 48) = v31;
  *(v28 + 64) = v94;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_detailsPresenter) = v28;
  type metadata accessor for RecentsSectionController(0);
  swift_allocObject();

  v32 = a2;
  swift_retain_n();
  v33 = sub_1CFC748C0(v32, v28, 0);
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsSection) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFD60, &unk_1CFCA8700);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1CFCA1DD0;
  v35 = sub_1CFC6A6B0(&qword_1EE04F4F8, type metadata accessor for RecentsSectionController, &unk_1CFCA85E8);
  *(v34 + 32) = v33;
  *(v34 + 40) = v35;
  (*(v15 + 104))(v17, *MEMORY[0x1E6995A50], v91);

  sub_1CFC9CD28();
  sub_1CFBE5C7C(MEMORY[0x1E69E7CC0]);
  v36 = objc_allocWithZone(sub_1CFC9CF48());
  v37 = &OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate.prots;
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterMenuViewModel) = sub_1CFC9CEE8();
  sub_1CFBA2D80(0, &unk_1EE04D0D0, 0x1E69DC708);
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_editMenuButtonItem) = sub_1CFC9FB08();
  v38 = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
  result = [v38 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v40 = result;
  v41 = [objc_opt_self() secondarySystemBackgroundColor];
  [v40 setBackgroundColor_];

  v91 = objc_opt_self();
  v42 = [v91 currentDevice];
  v43 = [v42 userInterfaceIdiom];

  v92 = v38;
  if (!v43)
  {
    v57 = 0;
    goto LABEL_6;
  }

  v44 = [objc_opt_self() sharedControllerWithCoalescingStrategy:2 options:7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1CFCA3B60;
  *(v45 + 32) = [objc_allocWithZone(MEMORY[0x1E69D8A68]) init];
  *(v45 + 40) = [objc_allocWithZone(MEMORY[0x1E69D8C30]) init];
  *(v45 + 48) = [objc_allocWithZone(MEMORY[0x1E69D8D08]) init];
  *(v45 + 56) = [objc_allocWithZone(MEMORY[0x1E69D8BF8]) init];
  v46 = objc_allocWithZone(MEMORY[0x1E69D8C38]);
  sub_1CFBA2D80(0, &qword_1EC4EFB30, 0x1E69D8C40);
  v47 = sub_1CFC9F898();

  v48 = [v46 initWithDataProviders_];

  v49 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  v50 = objc_opt_self();
  result = [v50 contactStore];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v51 = result;
  v52 = [v50 suggestedContactStore];
  v53 = objc_allocWithZone(MEMORY[0x1E69BDD08]);
  v54 = v44;
  v55 = [v53 initWithCallHistoryController:v54 callProviderManager:v49 contactStore:v51 suggestedContactStore:v52 metadataCache:v48];

  v56 = objc_allocWithZone(type metadata accessor for SearchResultsViewController());
  v57 = sub_1CFC711E8(v55);

  p_prots = (&OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate + 16);
  v37 = (&OBJC_PROTOCOL___UIAdaptivePresentationControllerDelegate + 16);
LABEL_6:
  *(v8 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_searchResultsController) = v57;
  SectionnedCollectionViewController.init(sections:)(v34);
  v59 = v58;
  swift_unknownObjectWeakAssign();
  v60 = v37[266];
  v61 = *(&v60->count + v59);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v62 = v59;
  v63 = v61;

  sub_1CFC9CE68();

  v64 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsSection;
  *(*&v62[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsSection] + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_delegate + 8) = &off_1F4C6E200;
  swift_unknownObjectWeakAssign();
  v65 = *&v62[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_searchResultsController];
  if (v65)
  {
    *(v65 + OBJC_IVAR____TtC10CallsAppUI27SearchResultsViewController_delegate + 8) = &off_1F4C6E2C0;
    swift_unknownObjectWeakAssign();
  }

  v66 = *&v62[v64];
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v68 = (v66 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_needsHeader);
  v69 = *(v66 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_needsHeader);
  v70 = *(v66 + OBJC_IVAR____TtC10CallsAppUI24RecentsSectionController_needsHeader + 8);
  *v68 = sub_1CFC6BFD4;
  v68[1] = v67;

  sub_1CFBABFA0(v69, v70);

  v71 = [v91 currentDevice];
  v72 = [v71 userInterfaceIdiom];

  if (v72 == 6)
  {
    v73 = *(&v60->count + v59);
    sub_1CFC9CC88();
    v74 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFB38, &qword_1CFCA7D30));
    v75 = sub_1CFC9E108();
    v76 = p_prots[256];
    v77 = *(&v76->count + v62);
    *(&v76->count + v62) = v75;

    v78 = _s10CallsAppUI21RecentsViewControllerC14navigationItemSo012UINavigationH0Cvg_0();
    [v78 setTitleView_];
  }

  v79 = sub_1CFC9F998();
  v80 = v85;
  (*(*(v79 - 8) + 56))(v85, 1, 1, v79);
  v81 = swift_allocObject();
  v81[2] = 0;
  v81[3] = 0;
  v81[4] = v62;
  v82 = v62;
  sub_1CFC57A48(0, 0, v80, &unk_1CFCA7D28, v81);

  sub_1CFBABFA0(v84, v86);
  sub_1CFBABFA0(v87, v88);

  sub_1CFBC2FB0(v89, &unk_1EC4EF810, &qword_1CFCA7900);
  sub_1CFBC2FB0(v80, &qword_1EC4ED950, &qword_1CFCA2710);
  return v82;
}

double sub_1CFC6A630(void *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  return result;
}

void *sub_1CFC6A670(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CFC6A6B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1CFC6A6F8()
{
  v1 = *(sub_1CFC9CF08() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CFC65230(v0 + v2, v3);
}

uint64_t sub_1CFC6A784()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1CFBD4A14;

  return sub_1CFC62964(v0);
}

uint64_t sub_1CFC6A824(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFC5BD18(a1, v4, v5, v6);
}

uint64_t sub_1CFC6A8D8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1CFBD4A14;

  return sub_1CFC5CF08(v0);
}

uint64_t sub_1CFC6A9A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFC64A1C(a1, v4, v5, v6);
}

uint64_t sub_1CFC6AA58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFC64208(a1, v4, v5, v6);
}

uint64_t sub_1CFC6AB14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CFBD4A14;

  return sub_1CFC65FB4(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1CFC6ABDC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC10CallsAppUI34SectionnedCollectionViewController_sections;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = *(v3 + 16);

  v6 = 0;
  if (v4)
  {
    v7 = (v3 + 40);
    while (v6 < *(v3 + 16))
    {
      v8 = *v7;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 40);
      swift_unknownObjectRetain();
      v10(v13, ObjectType, v8);
      __swift_project_boxed_opaque_existential_1(v13, v13[3]);
      v11 = sub_1CFC9F6D8();
      sub_1CFCA0338();
      MEMORY[0x1D3872880](0);
      v12 = sub_1CFCA0378();
      swift_unknownObjectRelease();
      result = __swift_destroy_boxed_opaque_existential_1Tm(v13);
      if (v11 == v12)
      {
        goto LABEL_7;
      }

      ++v6;
      v7 += 2;
      if (v4 == v6)
      {
        v6 = 0;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    return v6;
  }

  return result;
}

void sub_1CFC6AD3C()
{
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage____navItem) = 0;
  v1 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_featureFlags;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v2 = v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDetailProvider;
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsRemindersDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsRemindersSection) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_favoriteSection) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_voicemailsSection) = 0;
  v3 = v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_legacyMailboxService;
  *(v3 + 32) = 0;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  v4 = (v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadViewControllerProvider);
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_callFilteringOnboardingViewController) = 0;
  v5 = (v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_recentsDismissalAction);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_hasLegacyUnreadVoicemails) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_hasSubscribedToTips) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_shouldShowScreeningTip) = 2;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_shouldShowFilteringTip) = 2;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filteringTipSection) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_screeningTipSection) = 0;
  v6 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_snapController;
  v7 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v8 = [objc_allocWithZone(MEMORY[0x1E695D1A0]) initWithContactStore_];

  *(v0 + v6) = v8;
  v9 = OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_layoutManager;
  *(v0 + v9) = [objc_opt_self() shared];
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_isEditingFavorites) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController__configurationProvider) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterSegmentedControl) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_acceptedContactsDidChangeSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_isSearching) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___searchController) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___doneButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___clearAllButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___filterButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_filterTitleButton) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keypadButtonItem) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___addFavoriteItem) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_cancellables) = MEMORY[0x1E69E7CD0];
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController____lazy_storage___keyPadPrototypeView) = 0;
  *(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_keyPadKeysGenerated) = 0;
  swift_unknownObjectWeakInit();
  sub_1CFCA01D8();
  __break(1u);
}

double _s10CallsAppUI21RecentsViewControllerC017willPresentSearchF0yySo08UISearchF0CF_0()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 6 || ([*(v0 + OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_featureFlags) communicationDetailsEnabled] & 1) == 0)
  {
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = sub_1CFC9BE28();
    v8 = v7;

    sub_1CFC5F074(v6, v8);
  }

  return result;
}

uint64_t dispatch thunk of RecentsDetailProvider.detailViewController(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1CFC6C1A0;

  return v9(a1, a2, a3);
}

{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1CFC6C1A0;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of RecentsDetailProvider.voicemailDetailViewController(for:deleteAction:callbackAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 24) + **(a7 + 24));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1CFC6C1A0;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of RecentsDetailProvider.voicemailDetailViewController(for:appType:deleteAction:callbackAction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 32) + **(a8 + 32));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1CFC6C1A0;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of RecentsDetailProvider.contactDetailViewController(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1CFC38B78;

  return v9(a1, a2, a3);
}

uint64_t sub_1CFC6B7BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFC6B824(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFC6B88C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFC6B8F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFC61E98(a1, v4, v5, v6);
}

uint64_t sub_1CFC6B9AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFC57250(a1, v4, v5, v6);
}

uint64_t sub_1CFC6BA60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CFBD4A14;

  return sub_1CFC57614(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_206Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1CFC6BC88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFC63184(a1, v4, v5, v6);
}

uint64_t sub_1CFC6BD44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFC62F58(a1, v4, v5, v6);
}

uint64_t sub_1CFC6BDF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD431C;

  return sub_1CFC63184(a1, v4, v5, v6);
}

id sub_1CFC6BEB4(uint64_t a1)
{
  v3 = *(v1 + 16);
  [v3 dismissViewControllerAnimated:1 completion:0];
  v4 = *&v3[OBJC_IVAR____TtC10CallsAppUI21RecentsViewController_layoutManager];

  return [v4 setLayout_];
}

uint64_t sub_1CFC6BF18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CFBD4A14;

  return sub_1CFC6569C();
}

uint64_t sub_1CFC6BFDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFC5A950(a1, v4, v5, v6);
}

uint64_t type metadata accessor for VoicemailCustomBannerView(uint64_t a1)
{
  result = qword_1EE04EC30;
  if (!qword_1EE04EC30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFC6C268(uint64_t a1)
{
  sub_1CFBB02CC();
  if (v1 <= 0x3F)
  {
    sub_1CFC6C2EC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CFC6C2EC(uint64_t a1)
{
  if (!qword_1EE04D168)
  {
    type metadata accessor for VoicemailSmartActionsBannerViewModel(255);
    v1 = sub_1CFC9F428();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE04D168);
    }
  }
}

uint64_t sub_1CFC6C360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a1;
  v89 = a2;
  v2 = type metadata accessor for VoicemailCustomBannerView(0);
  v83 = *(v2 - 8);
  v82 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v79 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED080, &unk_1CFCA1E20);
  v5 = *(v4 - 8);
  v85 = v4;
  v86 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v81 = &v72 - v6;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFBA0, &qword_1CFCA7E48) - 8;
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v72 - v9;
  v75 = sub_1CFC9E668();
  v95 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFBA8, &qword_1CFCA7E50);
  v13 = *(v12 - 8);
  v73 = v12;
  v74 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v72 - v14;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFBB0, &qword_1CFCA7E58) - 8;
  MEMORY[0x1EEE9AC00](v77);
  v84 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v90 = &v72 - v17;
  v18 = sub_1CFC9F1B8();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFBB8, &unk_1CFCA7E60);
  v23 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22);
  v94 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v72 - v26;

  sub_1CFC9F1A8();
  (*(v19 + 104))(v21, *MEMORY[0x1E6981630], v18);
  v28 = sub_1CFC9F1E8();

  (*(v19 + 8))(v21, v18);
  sub_1CFC9F538();
  sub_1CFC9DF68();
  LOBYTE(v102[0]) = 1;
  *&v98[3] = *&v98[27];
  *&v98[11] = *&v98[35];
  *&v98[19] = *&v98[43];
  v29 = &v27[*(v23 + 44)];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEED8, &qword_1CFCA5DF0);
  sub_1CFC9E278();
  *v29 = swift_getKeyPath();
  v93 = v27;
  *v27 = v28;
  *(v27 + 1) = 0;
  *(v27 + 8) = 257;
  v30 = *&v98[8];
  *(v27 + 18) = *v98;
  *(v27 + 34) = v30;
  *(v27 + 50) = *&v98[16];
  *(v27 + 8) = *&v98[23];
  v78 = sub_1CFC9E688();
  LOBYTE(v102[0]) = 1;
  v31 = v91;
  sub_1CFC6CF60(v99);
  *&v97[7] = v99[0];
  *&v97[23] = v99[1];
  *&v97[39] = v99[2];
  *&v97[55] = v99[3];
  v92 = LOBYTE(v102[0]);
  sub_1CFC9E5E8();
  v96 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFBC0, &qword_1CFCA7EA0);
  sub_1CFBA57C0(&qword_1EC4EFBC8, &qword_1EC4EFBC0, &qword_1CFCA7EA0, MEMORY[0x1E6981F48]);
  v32 = v72;
  sub_1CFC9ED18();
  sub_1CFC9E658();
  sub_1CFBA57C0(&qword_1EC4EFBD0, &qword_1EC4EFBA8, &qword_1CFCA7E50, MEMORY[0x1E697CD28]);
  sub_1CFC6EBF4(&qword_1EE04D360, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
  v33 = v90;
  v34 = v73;
  v35 = v75;
  sub_1CFC9EEC8();
  v36 = *(v95 + 8);
  v95 += 8;
  v36(v11, v35);
  (*(v74 + 8))(v32, v34);
  v37 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFBD8, &unk_1CFCA7EA8) + 36));
  v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEEE0, &qword_1CFCA3630) + 28);
  v39 = *MEMORY[0x1E697DC08];
  v40 = sub_1CFC9DE78();
  (*(*(v40 - 8) + 104))(v37 + v38, v39, v40);
  *v37 = swift_getKeyPath();
  v41 = sub_1CFC9F108();
  KeyPath = swift_getKeyPath();
  v43 = (v33 + *(v77 + 44));
  v44 = v33;
  *v43 = KeyPath;
  v43[1] = v41;
  v45 = v79;
  sub_1CFC6EAB0(v91, v79);
  v46 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v47 = swift_allocObject();
  sub_1CFC6EB14(v45, v47 + v46);
  v48 = v81;
  sub_1CFC9F298();
  sub_1CFC9E658();
  sub_1CFBA57C0(&qword_1EE04D1B8, &unk_1EC4ED080, &unk_1CFCA1E20, MEMORY[0x1E697D680]);
  v49 = v80;
  v50 = v85;
  sub_1CFC9EEC8();
  v36(v11, v35);
  (*(v86 + 8))(v48, v50);
  v51 = v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFBE0, &qword_1CFCA7F18) + 36);
  sub_1CFC9F4A8();
  LOBYTE(v11) = sub_1CFC9EBB8();
  *(v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFB88, &qword_1CFCA7E28) + 36)) = v11;
  v52 = sub_1CFC9F188();
  v53 = swift_getKeyPath();
  v54 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFBE8, &qword_1CFCA7F20) + 36));
  *v54 = v53;
  v54[1] = v52;
  v55 = (v49 + *(v87 + 44));
  v56 = v49;
  sub_1CFC9E278();
  *v55 = swift_getKeyPath();
  v57 = v94;
  sub_1CFBA29FC(v93, v94, &qword_1EC4EFBB8, &unk_1CFCA7E60);
  v58 = v84;
  sub_1CFBA29FC(v44, v84, &qword_1EC4EFBB0, &qword_1CFCA7E58);
  v59 = v88;
  sub_1CFBA29FC(v49, v88, &qword_1EC4EFBA0, &qword_1CFCA7E48);
  v60 = v57;
  v61 = v89;
  sub_1CFBA29FC(v60, v89, &qword_1EC4EFBB8, &unk_1CFCA7E60);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFBF0, &unk_1CFCA7F28);
  v63 = v61 + v62[12];
  v64 = v78;
  v100[0] = v78;
  v100[1] = 0;
  v101[0] = v92;
  *&v101[1] = *v97;
  *&v101[17] = *&v97[16];
  *&v101[33] = *&v97[32];
  *&v101[49] = *&v97[48];
  v65 = *&v97[63];
  *&v101[64] = *&v97[63];
  v66 = *v101;
  *v63 = v78;
  *(v63 + 16) = v66;
  v67 = *&v101[16];
  v68 = *&v101[32];
  v69 = *&v101[48];
  *(v63 + 80) = v65;
  *(v63 + 48) = v68;
  *(v63 + 64) = v69;
  *(v63 + 32) = v67;
  v70 = v61 + v62[16];
  *v70 = 0;
  *(v70 + 8) = 1;
  sub_1CFBA29FC(v58, v61 + v62[20], &qword_1EC4EFBB0, &qword_1CFCA7E58);
  sub_1CFBA29FC(v59, v61 + v62[24], &qword_1EC4EFBA0, &qword_1CFCA7E48);
  sub_1CFBA29FC(v100, v102, &qword_1EC4EEF80, &qword_1CFCA5EF0);
  sub_1CFBC2FB0(v56, &qword_1EC4EFBA0, &qword_1CFCA7E48);
  sub_1CFBC2FB0(v90, &qword_1EC4EFBB0, &qword_1CFCA7E58);
  sub_1CFBC2FB0(v93, &qword_1EC4EFBB8, &unk_1CFCA7E60);
  sub_1CFBC2FB0(v59, &qword_1EC4EFBA0, &qword_1CFCA7E48);
  sub_1CFBC2FB0(v58, &qword_1EC4EFBB0, &qword_1CFCA7E58);
  v102[0] = v64;
  v102[1] = 0;
  v103 = v92;
  v105 = *&v97[16];
  v106 = *&v97[32];
  *v107 = *&v97[48];
  *&v107[15] = *&v97[63];
  v104 = *v97;
  sub_1CFBC2FB0(v102, &qword_1EC4EEF80, &qword_1CFCA5EF0);
  return sub_1CFBC2FB0(v94, &qword_1EC4EFBB8, &unk_1CFCA7E60);
}