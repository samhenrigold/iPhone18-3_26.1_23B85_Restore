uint64_t FeedHeadlineClusteringService.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t FeedHeadlineClusteringService.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1D7036888()
{
  if (!qword_1EDF040B0)
  {
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF040B0);
    }
  }
}

uint64_t sub_1D7036930@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1D725BD1C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

unint64_t sub_1D70369DC()
{
  result = qword_1EC8996A0;
  if (!qword_1EC8996A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8996A0);
  }

  return result;
}

uint64_t sub_1D7036A40(void *a1)
{
  v3 = v1;
  sub_1D703A0E8(0, &qword_1EC899760, sub_1D703A094, &type metadata for J12_V1.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D703A094();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D70399DC(&qword_1EC8801E8, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5EF985C(0, &qword_1EDF04EE0, &type metadata for CoverIssueViewLayout.Attributes, MEMORY[0x1E69E62F8]);
    sub_1D5EF9DFC(&qword_1EC880BB0, sub_1D5EF9E8C, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D7036C9C(uint64_t a1)
{
  v2 = sub_1D703A094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7036CD8(uint64_t a1)
{
  v2 = sub_1D703A094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D7036D14@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D7039DE0(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D7036D74(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D7039AA4();

  return sub_1D725A24C();
}

uint64_t sub_1D7036DF0@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4(0);
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D703A0E8(0, &qword_1EDF18000, sub_1D5EF96F4, &type metadata for CoverIssueViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1D7036EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v50 = a2;
  v53 = a1;
  v41 = a3;
  v44 = sub_1D725895C();
  v6 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GroupLayoutContext(0);
  v54 = *(v10 - 8);
  v55 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v52 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v40 - v15;
  v48 = &v40 - v15;
  v51 = type metadata accessor for GroupLayoutBindingContext(0);
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v17);
  v46 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v3;
  v47 = *v3;
  v20 = *(v3 + 1);
  v21 = v3[16];
  v45 = type metadata accessor for GroupLayoutBindingContext;
  sub_1D5BE3F40(a1, v46, type metadata accessor for GroupLayoutBindingContext);
  sub_1D5BE3F40(a2, v16, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v43 = sub_1D725893C();
  v42 = v22;
  (*(v6 + 8))(v9, v44);
  v64 = &type metadata for J12_V1;
  v44 = sub_1D5ECE040();
  v65 = v44;
  LOBYTE(v62) = v19;
  *(&v62 + 1) = v20;
  v63 = v21;
  type metadata accessor for GroupLayoutKey(0);
  v23 = swift_allocObject();
  sub_1D5BEE8A0(v20, v21);
  v60 = sub_1D7264C5C();
  v61 = v24;
  v58 = 95;
  v59 = 0xE100000000000000;
  v56 = 45;
  v57 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v25 = sub_1D7263A6C();
  v27 = v26;

  *(v23 + 16) = v25;
  *(v23 + 24) = v27;
  v28 = (v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v29 = v42;
  *v28 = v43;
  v28[1] = v29;
  sub_1D5B68374(&v62, v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v30 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  v31 = v52;
  sub_1D5BDA89C(v46, v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, v45);
  (*(v49 + 56))(v23 + v30, 0, 1, v51);
  v32 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA89C(v48, v23 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  (*(v54 + 56))(v23 + v32, 0, 1, v55);
  __swift_destroy_boxed_opaque_existential_1(&v62);
  v64 = &type metadata for J12_V1;
  v65 = v44;
  LOBYTE(v62) = v47;
  *(&v62 + 1) = v20;
  v63 = v21;
  sub_1D5BE3F40(v50, v31, type metadata accessor for GroupLayoutContext);
  sub_1D5BEE8A0(v20, v21);
  v33 = v66;
  sub_1D6B97C40(&unk_1F5113B30, 0, 0, 0, 0, 0, 0, 0);
  if (v33)
  {
    sub_1D5EF8F94(v31);

    return __swift_destroy_boxed_opaque_existential_1(&v62);
  }

  else
  {
    v36 = v34;
    v37 = type metadata accessor for J12_V1.Bound(0);
    v38 = v41;
    v41[3] = v37;
    v38[4] = sub_1D70399DC(&qword_1EC8996B8, type metadata accessor for J12_V1.Bound, &unk_1D7383A24);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
    *boxed_opaque_existential_1 = v23;
    sub_1D5B63F14(&v62, (boxed_opaque_existential_1 + 1));
    result = sub_1D5BDA89C(v31, boxed_opaque_existential_1 + *(v37 + 24), type metadata accessor for GroupLayoutContext);
    *(boxed_opaque_existential_1 + *(v37 + 28)) = v36;
  }

  return result;
}

void sub_1D70373F0(_BYTE *a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = sub_1D725A36C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + *(type metadata accessor for J12_V1.Bound(0) + 28));
  v36 = v1;
  sub_1D5ECA874(sub_1D7039A24, v35, v8);
  *&v28 = 0;
  v10 = v9;
  *&v38 = v9;
  sub_1D5EF985C(0, &qword_1EDF04EC8, &type metadata for CoverIssueViewLayout.Context, MEMORY[0x1E69E62F8]);
  v12 = v11;
  sub_1D5BD4984(&qword_1EDF04EB8, &qword_1EDF04EC8, &type metadata for CoverIssueViewLayout.Context, MEMORY[0x1E69E6340]);
  v30 = v12;
  v13 = sub_1D7262C1C();
  v14 = *MEMORY[0x1E69D7130];
  v15 = sub_1D7259D1C();
  (*(*(v15 - 8) + 104))(v7, v14, v15);
  (*(v4 + 104))(v7, *MEMORY[0x1E69D7370], v3);
  v32 = v13;
  v33 = 4;
  v34 = v2;
  sub_1D7039BDC(0, &qword_1EC8996D8, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v16 = sub_1D725A4CC();

  v29 = v16;
  v17 = v28;
  sub_1D725A4DC();
  if (v17)
  {
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v18 = v40;
    v19 = MEMORY[0x1E69E62F8];
    sub_1D5EF985C(0, &qword_1EDF04EE0, &type metadata for CoverIssueViewLayout.Attributes, MEMORY[0x1E69E62F8]);
    v20 = MEMORY[0x1E69E6328];
    sub_1D5BD4984(&qword_1EDF04EC0, &qword_1EDF04EC8, &type metadata for CoverIssueViewLayout.Context, MEMORY[0x1E69E6328]);
    v21 = sub_1D5BD4984(&qword_1EDF04ED8, &qword_1EDF04EE0, &type metadata for CoverIssueViewLayout.Attributes, v20);
    v28 = v38;
    v27 = v39;
    v37 = v18;
    *&v38 = v10;
    MEMORY[0x1EEE9AC00](v21, v22);

    v23 = sub_1D725C00C();

    v24 = v31;
    *v31 = 0;
    *(v24 + 24) = v27;
    *(v24 + 8) = v28;
    *&v38 = v23;
    sub_1D5EF985C(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes, v19);
    sub_1D5BD4984(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes, v20);
    sub_1D5BDEFF8();
    v25 = sub_1D72623BC();

    v26 = MEMORY[0x1E69E7CC0];
    *(v24 + 5) = v25;
    *(v24 + 6) = v26;
  }
}

uint64_t sub_1D7037874@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D725891C();
  v7 = *(v6 - 8);
  v152 = v6;
  v153 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v151 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EF9748(0, &qword_1EDF45B00, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v143 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v142 = &v141 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v141 - v18;
  v150 = &v141 - v18;
  v20 = a1[7];
  v175 = a1[6];
  v176[0] = v20;
  *(v176 + 9) = *(a1 + 121);
  v21 = a1[3];
  v171 = a1[2];
  v172 = v21;
  v22 = a1[5];
  v173 = a1[4];
  v174 = v22;
  v23 = a1[1];
  v169 = *a1;
  v170 = v23;
  v24 = *a2;
  sub_1D5D62850(v177);
  v25 = a2 + *(type metadata accessor for J12_V1.Bound(0) + 24);
  v26 = type metadata accessor for GroupLayoutContext(0);
  v27 = *(*&v25[*(v26 + 40)] + 16);
  v28 = *&v25[*(v26 + 32)];
  sub_1D5B68374(v27 + 16, &v154);
  sub_1D5B68374(v27 + 56, &v165);
  v29 = v28 * *(v27 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  v30 = swift_allocObject();
  sub_1D5B63F14(&v154, v30 + 16);
  sub_1D5B63F14(&v165, v30 + 56);
  *(v30 + 96) = v29;
  sub_1D5ECF2C4(&v169, &v157);
  FeedLayoutStylerFactory.styler()(v168);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v30 + 16));
  __swift_destroy_boxed_opaque_existential_1((v30 + 56));
  swift_deallocClassInstance();
  v31 = v173;
  v32 = a3;
  *(a3 + 88) = v174;
  v33 = v176[0];
  *(a3 + 104) = v175;
  *(a3 + 120) = v33;
  *(a3 + 129) = *(v176 + 9);
  v34 = v169;
  *(a3 + 24) = v170;
  v35 = v172;
  *(a3 + 40) = v171;
  *(a3 + 56) = v35;
  *(a3 + 72) = v31;
  *(a3 + 8) = v34;
  v36 = v177[4];
  *(a3 + 232) = v177[5];
  v37 = v178[0];
  *(a3 + 248) = v177[6];
  *(a3 + 264) = v37;
  *(a3 + 273) = *(v178 + 9);
  v38 = v177[0];
  *(a3 + 168) = v177[1];
  v39 = v177[3];
  *(a3 + 184) = v177[2];
  *(a3 + 200) = v39;
  *(a3 + 216) = v36;
  *a3 = v24;
  *(a3 + 152) = v38;
  sub_1D5B68374(v168, a3 + 296);
  sub_1D5B68374(v168, &v165);
  v148 = *(v7 + 56);
  v149 = v7 + 56;
  v148(v19, 1, 1, v6);
  v40 = swift_allocObject();
  v41 = v176[0];
  v40[7] = v175;
  v40[8] = v41;
  *(v40 + 137) = *(v176 + 9);
  v42 = v172;
  v40[3] = v171;
  v40[4] = v42;
  v43 = v174;
  v40[5] = v173;
  v40[6] = v43;
  v44 = v170;
  v40[1] = v169;
  v40[2] = v44;
  sub_1D5EF9748(0, &qword_1EDF34760, sub_1D5BAA1F0, type metadata accessor for CachedText);
  v144 = v45;
  v46 = swift_allocObject();
  *(v46 + 2) = 0xC04E000000000000;
  v47 = v167;
  __swift_project_boxed_opaque_existential_1(&v165, v166);
  v163 = v175;
  v164[0] = v176[0];
  *(v164 + 9) = *(v176 + 9);
  v159 = v171;
  v160 = v172;
  v161 = v173;
  v162 = v174;
  v157 = v169;
  v158 = v170;
  sub_1D5ECF2C4(&v169, &v154);
  sub_1D5ECF2C4(&v169, &v154);

  v48 = sub_1D6CAFA6C();
  v49 = (*(v47 + 80))(v48);

  *&v46[*(*v46 + 120)] = v49;
  *&v46[*(*v46 + 136)] = v49;
  v50 = v49;
  v51 = v151;
  sub_1D725890C();
  v52 = *(*v46 + 128);
  v53 = v152;
  v54 = *(v153 + 32);
  v153 += 32;
  v145 = v54;
  v54(&v46[v52], v51, v152);
  v147 = objc_opt_self();
  LOBYTE(v51) = [v147 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v165);
  v46[qword_1EDF347F8] = v51;
  v55 = v150;
  sub_1D5DF42F8(v150, &v46[qword_1EDF347F0]);
  v56 = swift_allocObject();
  v56[2] = sub_1D5EF97AC;
  v56[3] = v40;
  v56[4] = v50;
  *(v46 + 3) = sub_1D5EF97B4;
  *(v46 + 4) = v56;
  *(v32 + 336) = v46;
  sub_1D5B68374(v168, &v165);
  v148(v55, 1, 1, v53);
  v57 = swift_allocObject();
  v58 = v176[0];
  v57[7] = v175;
  v57[8] = v58;
  *(v57 + 137) = *(v176 + 9);
  v59 = v172;
  v57[3] = v171;
  v57[4] = v59;
  v60 = v174;
  v57[5] = v173;
  v57[6] = v60;
  v61 = v170;
  v57[1] = v169;
  v57[2] = v61;
  v62 = swift_allocObject();
  *(v62 + 2) = 0xC04E000000000000;
  v63 = v167;
  __swift_project_boxed_opaque_existential_1(&v165, v166);
  v163 = v175;
  v164[0] = v176[0];
  *(v164 + 9) = *(v176 + 9);
  v159 = v171;
  v160 = v172;
  v161 = v173;
  v162 = v174;
  v157 = v169;
  v158 = v170;
  sub_1D5ECF2C4(&v169, &v154);
  v64 = sub_1D6CAFA6C();
  v65 = (*(v63 + 88))(v64);

  *&v62[*(*v62 + 120)] = v65;
  *&v62[*(*v62 + 136)] = v65;
  v66 = v65;
  v67 = v151;
  sub_1D725890C();
  v68 = v152;
  v145(&v62[*(*v62 + 128)], v67, v152);
  LOBYTE(v67) = [v147 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v165);
  v62[qword_1EDF347F8] = v67;
  sub_1D5DF42F8(v150, &v62[qword_1EDF347F0]);
  v69 = swift_allocObject();
  v69[2] = sub_1D5EF97C0;
  v69[3] = v57;
  v69[4] = v66;
  *(v62 + 3) = sub_1D5EF9FF8;
  *(v62 + 4) = v69;
  v146 = v32;
  *(v32 + 344) = v62;
  sub_1D5B68374(v168, &v154);
  v148(v142, 1, 1, v68);
  v70 = swift_allocObject();
  v71 = v176[0];
  v70[7] = v175;
  v70[8] = v71;
  *(v70 + 137) = *(v176 + 9);
  v72 = v172;
  v70[3] = v171;
  v70[4] = v72;
  v73 = v174;
  v70[5] = v173;
  v70[6] = v73;
  v74 = v170;
  v70[1] = v169;
  v70[2] = v74;
  v75 = swift_allocObject();
  *(v75 + 2) = 0xC04E000000000000;
  v77 = v155;
  v76 = v156;
  __swift_project_boxed_opaque_existential_1(&v154, v155);
  if (v174 == 1 || !v175)
  {
    v78 = v169;
    sub_1D5ECF2C4(&v169, &v157);
    v79 = [v78 coverDate];
    sub_1D726207C();
  }

  else
  {
    sub_1D5ECF2C4(&v169, &v157);
  }

  v80 = sub_1D726213C();
  v82 = v81;

  v83 = (*(v76 + 96))(v80, v82, v77, v76);

  *&v75[*(*v75 + 120)] = v83;
  *&v75[*(*v75 + 136)] = v83;
  v84 = v83;
  v85 = v151;
  sub_1D725890C();
  v86 = v152;
  v145(&v75[*(*v75 + 128)], v85, v152);
  LOBYTE(v85) = [v147 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v154);
  v75[qword_1EDF347F8] = v85;
  sub_1D5DF42F8(v142, &v75[qword_1EDF347F0]);
  v87 = swift_allocObject();
  v87[2] = sub_1D5EF97C8;
  v87[3] = v70;
  v87[4] = v84;
  *(v75 + 3) = sub_1D5EF9FF8;
  *(v75 + 4) = v87;
  v146[44] = v75;
  sub_1D5B68374(v168, &v154);
  v148(v143, 1, 1, v86);
  v88 = swift_allocObject();
  v89 = v176[0];
  v88[7] = v175;
  v88[8] = v89;
  *(v88 + 137) = *(v176 + 9);
  v90 = v172;
  v88[3] = v171;
  v88[4] = v90;
  v91 = v174;
  v88[5] = v173;
  v88[6] = v91;
  v92 = v170;
  v88[1] = v169;
  v88[2] = v92;
  v93 = swift_allocObject();
  *(v93 + 2) = 0xC04E000000000000;
  v94 = BYTE8(v170);
  v95 = v156;
  __swift_project_boxed_opaque_existential_1(&v154, v155);
  if (v94 == 2)
  {
    LOBYTE(v165) = 2;
    sub_1D5ECF2C4(&v169, &v157);
    v96 = sub_1D6CAFB7C();
    v97 = (*(v95 + 96))(v96);
  }

  else
  {
    LOBYTE(v165) = v94;
    sub_1D5ECF2C4(&v169, &v157);
    v98 = sub_1D6CAFB7C();
    v97 = (*(v95 + 104))(v98);
  }

  v99 = v97;

  *&v93[*(*v93 + 120)] = v99;
  *&v93[*(*v93 + 136)] = v99;
  v100 = v99;
  v101 = v151;
  sub_1D725890C();
  v102 = v152;
  v145(&v93[*(*v93 + 128)], v101, v152);
  LOBYTE(v101) = [v147 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v154);
  v93[qword_1EDF347F8] = v101;
  sub_1D5DF42F8(v143, &v93[qword_1EDF347F0]);
  v103 = swift_allocObject();
  v103[2] = sub_1D5EF97D0;
  v103[3] = v88;
  v103[4] = v100;
  *(v93 + 3) = sub_1D5EF9FF8;
  *(v93 + 4) = v103;
  v146[45] = v93;
  sub_1D5B68374(v168, &v157);
  v148(v150, 1, 1, v102);
  v104 = swift_allocObject();
  *(v104 + 2) = 0xC04E000000000000;
  v105 = *(&v158 + 1);
  v106 = v159;
  __swift_project_boxed_opaque_existential_1(&v157, *(&v158 + 1));
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v143 = ObjCClassFromMetadata;
  v142 = objc_opt_self();
  v108 = [v142 bundleForClass_];
  sub_1D725811C();

  v109 = sub_1D726213C();
  v111 = v110;

  v112 = (*(v106 + 112))(v109, v111, v105, v106);

  *&v104[*(*v104 + 120)] = v112;
  *&v104[*(*v104 + 136)] = v112;
  v113 = v112;
  v114 = v151;
  sub_1D725890C();
  v115 = v152;
  v145(&v104[*(*v104 + 128)], v114, v152);
  LOBYTE(v114) = [v147 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v157);
  v104[qword_1EDF347F8] = v114;
  v116 = v150;
  sub_1D5DF42F8(v150, &v104[qword_1EDF347F0]);
  v117 = swift_allocObject();
  v117[2] = sub_1D6EAD6D0;
  v117[3] = 0;
  v117[4] = v113;
  *(v104 + 3) = sub_1D5EF9FF8;
  *(v104 + 4) = v117;
  v146[46] = v104;
  sub_1D5B68374(v168, &v157);
  v148(v116, 1, 1, v115);
  v118 = swift_allocObject();
  *(v118 + 2) = 0xC04E000000000000;
  v119 = *(&v158 + 1);
  v120 = v159;
  __swift_project_boxed_opaque_existential_1(&v157, *(&v158 + 1));
  v121 = [v142 bundleForClass_];
  sub_1D725811C();

  v122 = sub_1D726213C();
  v124 = v123;

  v125 = (*(v120 + 120))(v122, v124, v119, v120);

  *&v118[*(*v118 + 120)] = v125;
  *&v118[*(*v118 + 136)] = v125;
  v126 = v125;
  v127 = v151;
  sub_1D725890C();
  v128 = v152;
  v129 = v145;
  v145(&v118[*(*v118 + 128)], v127, v152);
  LOBYTE(v122) = [v147 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v157);
  v118[qword_1EDF347F8] = v122;
  v130 = v150;
  sub_1D5DF42F8(v150, &v118[qword_1EDF347F0]);
  v131 = swift_allocObject();
  v131[2] = sub_1D6EAD7F8;
  v131[3] = 0;
  v131[4] = v126;
  *(v118 + 3) = sub_1D5EF9FF8;
  *(v118 + 4) = v131;
  v146[47] = v118;
  sub_1D5B68374(v168, &v154);
  v148(v130, 1, 1, v128);
  v132 = swift_allocObject();
  v133 = v176[0];
  v132[7] = v175;
  v132[8] = v133;
  *(v132 + 137) = *(v176 + 9);
  v134 = v172;
  v132[3] = v171;
  v132[4] = v134;
  v135 = v174;
  v132[5] = v173;
  v132[6] = v135;
  v136 = v170;
  v132[1] = v169;
  v132[2] = v136;
  sub_1D5EF97E0(0);
  v137 = swift_allocObject();
  *(v137 + 2) = 0xC04E000000000000;
  sub_1D5ECF2C4(&v169, &v157);
  sub_1D6EAD930(&v169, &v157);
  sub_1D5ECF320(&v169);
  v138 = v157;
  *&v137[*(*v137 + 120)] = v157;
  *&v137[*(*v137 + 136)] = v138;
  swift_bridgeObjectRetain_n();
  sub_1D725890C();
  v129(&v137[*(*v137 + 128)], v127, v128);
  LOBYTE(v130) = [v147 isMainThread];
  __swift_destroy_boxed_opaque_existential_1(&v154);
  v137[qword_1EDF347F8] = v130;
  sub_1D5DF42F8(v150, &v137[qword_1EDF347F0]);
  v139 = swift_allocObject();
  *(v139 + 16) = sub_1D5EF97D8;
  *(v139 + 24) = v132;
  *(v139 + 32) = v138;
  *(v137 + 3) = sub_1D5EF98AC;
  *(v137 + 4) = v139;
  result = __swift_destroy_boxed_opaque_existential_1(v168);
  v146[48] = v137;
  return result;
}

void sub_1D7038AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a1;
  v53 = a4;
  v42 = a3;
  sub_1D703A0E8(0, &qword_1EC8996F0, sub_1D7039A50, &type metadata for J12_V1.Layout, MEMORY[0x1E69D74B0]);
  v51 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v50 = (&v41 - v8);
  v54 = *(a2 + 16);
  v55 = a2;
  if (v54)
  {
    v9 = 0;
    v10 = *(v55 + 32);
    v55 += 32;
    v41 = v10 + 32;
    v48 = *MEMORY[0x1E69D7488];
    v46 = (v7 + 8);
    v47 = (v7 + 104);
    v45 = *MEMORY[0x1E69D74A8];
    v44 = *MEMORY[0x1E69D7098];
    p_cache = _TtC8NewsFeed15ManagerAssembly.cache;
    v43 = xmmword_1D7273AE0;
    v49 = v10;
    do
    {
      v27 = *(v55 + 8 * v9);
      v28 = *(v27 + 16);
      v29 = *(v10 + 16);
      v60 = v9;
      if (v28 == v29)
      {
        if (v28)
        {

          if (v27 != v10)
          {
            v30 = v27 + 32;

            v31 = v41;
            do
            {
              sub_1D5EF92B8(v30, v62);
              sub_1D5EF92B8(v31, v61);
              v33 = v62[0];
              v34 = v61[0];
              v35 = *(v62[0] + 16) == *(v61[0] + 16) && *(v62[0] + 24) == *(v61[0] + 24);
              if (!v35 && (sub_1D72646CC() & 1) == 0 || ((v36 = p_cache[155], v37 = *&v36[v33], v38 = *&v36[v33 + 8], v39 = &v36[v34], v37 == *v39) ? (v40 = v38 == *(v39 + 1)) : (v40 = 0), !v40 && (sub_1D72646CC() & 1) == 0))
              {
                sub_1D5EF93F0(v61);
                sub_1D5EF93F0(v62);
LABEL_29:

                v28 = *(v27 + 16);
                goto LABEL_26;
              }

              if (v62[2] == v61[2] && v62[3] == v61[3])
              {
                sub_1D5EF93F0(v61);
                sub_1D5EF93F0(v62);
              }

              else
              {
                v32 = sub_1D72646CC();
                sub_1D5EF93F0(v61);
                sub_1D5EF93F0(v62);
                if ((v32 & 1) == 0)
                {
                  goto LABEL_29;
                }
              }

              v30 += 392;
              v31 += 392;
              --v28;
            }

            while (v28);
          }
        }

        else
        {
        }
      }

      else
      {

LABEL_26:
        if (v28 != v42)
        {

          goto LABEL_5;
        }
      }

      v12 = v52;
      v62[0] = v52;
      v13 = swift_allocObject();
      *(v13 + 16) = 0x4024000000000000;
      v15 = v50;
      v14 = v51;
      *v50 = v13;
      v16 = *v47;
      (*v47)(v15, v48, v14);
      v17 = MEMORY[0x1E69D7150];
      v58 = v27;
      sub_1D7039BDC(0, &qword_1EC8996F8, MEMORY[0x1E69D7150]);
      v57 = v18;
      v56 = sub_1D7039B00(&qword_1EC899700, &qword_1EC8996F8, v17, MEMORY[0x1E69D7158]);
      sub_1D7259A9C();
      v59 = *v46;
      v59(v15, v14);
      v62[0] = v12;
      v16(v15, v45, v14);
      sub_1D7039B44(0);
      sub_1D703A0E8(0, &qword_1EC899710, sub_1D7039A50, &type metadata for J12_V1.Layout, MEMORY[0x1E69D70D8]);
      v20 = v19;
      v21 = p_cache;
      v22 = *(v19 - 8);
      v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = v43;
      v25 = (*(v22 + 104))(v24 + v23, v44, v20);
      p_cache = v21;
      MEMORY[0x1EEE9AC00](v25, v26);
      sub_1D72599EC();

      v10 = v49;
      v59(v15, v14);
LABEL_5:
      v9 = v60 + 1;
    }

    while (v60 + 1 != v54);
  }
}

void sub_1D7039068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v62 = sub_1D725A36C();
  v5 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v6);
  v61 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D703A0E8(0, &qword_1EC8996F0, sub_1D7039A50, &type metadata for J12_V1.Layout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (&v50 - v12);
  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = type metadata accessor for J12_V1.Bound(0);
    v60 = *(a3 + *(v15 + 24) + *(type metadata accessor for GroupLayoutContext(0) + 40));
    v16 = a2 + 32;
    v59 = *MEMORY[0x1E69D7200];
    v58 = *MEMORY[0x1E69D7208];
    v57 = *MEMORY[0x1E69D7468];
    v56 = (v10 + 104);
    v55 = *MEMORY[0x1E69D7050];
    v53 = (v10 + 8);
    v54 = (v5 + 104);
    v52 = *MEMORY[0x1E69D7080];
    v51 = *MEMORY[0x1E69D7378];
    v50 = xmmword_1D7273AE0;
    do
    {
      v65 = v16;
      v66 = v14;
      sub_1D5EF92B8(v16, v68);
      v67 = v63;
      KeyPath = swift_getKeyPath();
      sub_1D5EF9444(0);
      v18 = v17;
      v19 = swift_allocBox();
      v21 = v20;
      v22 = *(v18 + 48);
      sub_1D725993C();
      v23 = swift_allocBox();
      sub_1D725992C();
      *v21 = v23;
      v24 = sub_1D725A09C();
      v25 = *(*(v24 - 8) + 104);
      v25(v21, v59, v24);
      v25((v21 + v22), v58, v24);
      *v13 = v19;
      (*v56)(v13, v57, v9);
      sub_1D7039B44(0);
      sub_1D703A0E8(0, &qword_1EC899710, sub_1D7039A50, &type metadata for J12_V1.Layout, MEMORY[0x1E69D70D8]);
      v27 = v26;
      v28 = *(v26 - 8);
      v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = v50;
      sub_1D703A0E8(0, &qword_1EC899718, sub_1D7039A50, &type metadata for J12_V1.Layout, MEMORY[0x1E69D7078]);
      (*(*(v31 - 8) + 104))(v30 + v29, v55, v31);
      (*(v28 + 104))(v30 + v29, v52, v27);
      v32 = *(v60 + 24);
      v33 = v70;
      v34 = v71;
      __swift_project_boxed_opaque_existential_1(v69, v70);
      v35 = v9;
      v36 = *(v34 + 16);

      v37 = v36(v33, v34);
      if (qword_1EDF05CE0 != -1)
      {
        swift_once();
      }

      [qword_1EDFFC540 size];
      v40 = v37 * (v38 / v39);
      v41 = v70;
      v42 = v71;
      __swift_project_boxed_opaque_existential_1(v69, v70);
      (*(v42 + 48))(v41, v42);
      v43 = v70;
      v44 = v71;
      __swift_project_boxed_opaque_existential_1(v69, v70);
      v45 = (*(v44 + 56))(v43, v44);
      v47 = MEMORY[0x1EEE9AC00](v45, v46).n128_u64[0];
      *(&v50 - 6) = v32;
      *(&v50 - 5) = v68;
      *(&v50 - 4) = v40;
      *(&v50 - 3) = v37;
      v49 = v47;
      (*v54)(v61, v51, v62);
      sub_1D5EF94BC(0);
      swift_allocObject();
      sub_1D725A4CC();

      v48 = MEMORY[0x1E69D6F38];
      sub_1D7039BDC(0, &qword_1EC899720, MEMORY[0x1E69D6F38]);
      sub_1D7039B00(&qword_1EC899728, &qword_1EC899720, v48, MEMORY[0x1E69D6F40]);
      v49 = sub_1D5EF9664();
      sub_1D7259A4C();

      (*v53)(v13, v35);
      sub_1D5EF93F0(v68);
      v16 = v65 + 392;
      v14 = v66 - 1;
      v9 = v35;
    }

    while (v66 != 1);
  }
}

uint64_t sub_1D703975C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = swift_allocObject();
  sub_1D5EF92B8(a2, v10 + 16);
  memcpy((v10 + 408), a3, 0x180uLL);
  v11 = a4 + *(type metadata accessor for J12_V1.Bound(0) + 24);
  result = type metadata accessor for GroupLayoutContext(0);
  v13 = *(v11 + *(result + 28));
  v14 = __OFADD__(v13, a1);
  v15 = v13 + a1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(v10 + 792) = v15;
    *a5 = v10 | 0x5000000000000000;
  }

  return result;
}

unint64_t sub_1D7039838(uint64_t a1)
{
  *(a1 + 8) = sub_1D7039868();
  result = sub_1D70398BC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D7039868()
{
  result = qword_1EC8996A8;
  if (!qword_1EC8996A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8996A8);
  }

  return result;
}

unint64_t sub_1D70398BC()
{
  result = qword_1EC8996B0;
  if (!qword_1EC8996B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8996B0);
  }

  return result;
}

uint64_t type metadata accessor for J12_V1.Bound(uint64_t a1)
{
  result = qword_1EC8996C0;
  if (!qword_1EC8996C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7039984(uint64_t a1)
{
  result = sub_1D70399DC(&qword_1EC8996D0, type metadata accessor for J12_V1.Bound, &unk_1D73839FC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D70399DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D7039A50()
{
  result = qword_1EC8996E0;
  if (!qword_1EC8996E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8996E0);
  }

  return result;
}

unint64_t sub_1D7039AA4()
{
  result = qword_1EC8996E8;
  if (!qword_1EC8996E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8996E8);
  }

  return result;
}

uint64_t sub_1D7039B00(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D7039BDC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D7039B44(uint64_t a1)
{
  if (!qword_1EC899708)
  {
    sub_1D703A0E8(255, &qword_1EC899710, sub_1D7039A50, &type metadata for J12_V1.Layout, MEMORY[0x1E69D70D8]);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC899708);
    }
  }
}

void sub_1D7039BDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for J12_V1.Layout;
    v8[1] = &type metadata for J12_V1.Layout.Attributes;
    v8[2] = sub_1D7039A50();
    v8[3] = sub_1D7039AA4();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D7039C84()
{
  result = qword_1EC899730;
  if (!qword_1EC899730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899730);
  }

  return result;
}

unint64_t sub_1D7039CDC()
{
  result = qword_1EC899738;
  if (!qword_1EC899738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899738);
  }

  return result;
}

unint64_t sub_1D7039D34()
{
  result = qword_1EC899740;
  if (!qword_1EC899740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899740);
  }

  return result;
}

unint64_t sub_1D7039D8C()
{
  result = qword_1EC899748;
  if (!qword_1EC899748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899748);
  }

  return result;
}

uint64_t sub_1D7039DE0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D703A0E8(0, &qword_1EC899750, sub_1D703A094, &type metadata for J12_V1.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D703A094();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D70399DC(&qword_1EDF1A740, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5EF985C(0, &qword_1EDF04EE0, &type metadata for CoverIssueViewLayout.Attributes, MEMORY[0x1E69E62F8]);
  v20 = 1;
  sub_1D5EF9DFC(&qword_1EDF04ED0, sub_1D5EF9D40, MEMORY[0x1E69E6330]);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D703A094()
{
  result = qword_1EC899758;
  if (!qword_1EC899758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899758);
  }

  return result;
}

void sub_1D703A0E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D703A164()
{
  result = qword_1EC899768;
  if (!qword_1EC899768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899768);
  }

  return result;
}

unint64_t sub_1D703A1BC()
{
  result = qword_1EC899770;
  if (!qword_1EC899770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899770);
  }

  return result;
}

unint64_t sub_1D703A214()
{
  result = qword_1EC899778;
  if (!qword_1EC899778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899778);
  }

  return result;
}

uint64_t sub_1D703A268(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = a1;
  v41 = a2;
  v4 = sub_1D725895C();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D703AAB0(0, &qword_1EDF04868, MEMORY[0x1E69E8798]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v34 - v11;
  sub_1D703AAB0(0, &qword_1EDF04860, MEMORY[0x1E69E87A0]);
  v36 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v34 - v16;
  sub_1D703AAB0(0, &qword_1EDF04850, MEMORY[0x1E69E87C8]);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v34 - v22;
  v34 = OBJC_IVAR____TtC8NewsFeed19WebEmbedImageStream_stream;
  v35 = OBJC_IVAR____TtC8NewsFeed19WebEmbedImageStream_continuation;
  type metadata accessor for WebEmbedImage(0);
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8790], v8);
  sub_1D7262A1C();
  (*(v9 + 8))(v12, v8);
  (*(v20 + 32))(v3 + v34, v23, v19);
  (*(v14 + 32))(v3 + v35, v17, v36);
  v24 = (v3 + OBJC_IVAR____TtC8NewsFeed19WebEmbedImageStream_identifier);
  v25 = v37;
  sub_1D725894C();
  v26 = sub_1D725893C();
  v28 = v27;
  (*(v38 + 8))(v25, v39);
  *v24 = v26;
  v24[1] = v28;
  swift_unknownObjectWeakInit();
  v29 = OBJC_IVAR____TtC8NewsFeed19WebEmbedImageStream__isTerminated;
  sub_1D703AB28(0);
  v30 = swift_allocObject();
  *(v30 + 20) = 0;
  *(v30 + 16) = 0;
  *(v3 + v29) = v30;
  v31 = (v3 + OBJC_IVAR____TtC8NewsFeed19WebEmbedImageStream_requeueBlock);
  v32 = v41;
  *v31 = v40;
  v31[1] = v32;
  return v3;
}

uint64_t WebEmbedImageStream.deinit(__n128 a1)
{
  v2 = OBJC_IVAR____TtC8NewsFeed19WebEmbedImageStream_stream;
  sub_1D703AAB0(0, &qword_1EDF04850, MEMORY[0x1E69E87C8]);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  v4 = OBJC_IVAR____TtC8NewsFeed19WebEmbedImageStream_continuation;
  sub_1D703AAB0(0, &qword_1EDF04860, MEMORY[0x1E69E87A0]);
  (*(*(v5 - 8) + 8))(v1 + v4, v5);

  MEMORY[0x1DA6FD660](v1 + OBJC_IVAR____TtC8NewsFeed19WebEmbedImageStream_operation);

  return v1;
}

uint64_t WebEmbedImageStream.__deallocating_deinit(__n128 a1)
{
  v2 = OBJC_IVAR____TtC8NewsFeed19WebEmbedImageStream_stream;
  sub_1D703AAB0(0, &qword_1EDF04850, MEMORY[0x1E69E87C8]);
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  v4 = OBJC_IVAR____TtC8NewsFeed19WebEmbedImageStream_continuation;
  sub_1D703AAB0(0, &qword_1EDF04860, MEMORY[0x1E69E87A0]);
  (*(*(v5 - 8) + 8))(v1 + v4, v5);

  MEMORY[0x1DA6FD660](v1 + OBJC_IVAR____TtC8NewsFeed19WebEmbedImageStream_operation);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WebEmbedImageStream(uint64_t a1)
{
  result = qword_1EDF0F540;
  if (!qword_1EDF0F540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D703A968(uint64_t a1, __n128 a2)
{
  sub_1D703AAB0(319, &qword_1EDF04850, MEMORY[0x1E69E87C8]);
  if (v2 <= 0x3F)
  {
    sub_1D703AAB0(319, &qword_1EDF04860, MEMORY[0x1E69E87A0]);
    if (v3 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D703AAB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for WebEmbedImage(255);
    v7 = sub_1D5BA6EF4();
    v8 = a3(a1, v6, v7, MEMORY[0x1E69E7288]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D703AB28(uint64_t a1)
{
  if (!qword_1EDF042B8)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_1D7263E4C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF042B8);
    }
  }
}

uint64_t sub_1D703AB88(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_layeredMediaView);
  if (v2)
  {
    v3 = *&v2[qword_1EDF11058];
    v4 = *(a1 + 16) == *(v3 + 16) && *(a1 + 24) == *(v3 + 24);
    if (v4 || (sub_1D72646CC() & 1) != 0)
    {
      v5 = *(v1 + OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_lastRenderedBounds);
      v6 = *(v1 + OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_lastRenderedBounds + 8);
      v7 = *(v1 + OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_lastRenderedBounds + 16);
      v8 = *(v1 + OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_lastRenderedBounds + 24);
      v9 = *(v1 + OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_lastRenderedBounds + 32);
      [v2 bounds];
      if ((v9 & 1) == 0)
      {
        v18.origin.x = v10;
        v18.origin.y = v11;
        v18.size.width = v12;
        v18.size.height = v13;
        v17.origin.x = v5;
        v17.origin.y = v6;
        v17.size.width = v7;
        v17.size.height = v8;
        if (CGRectEqualToRect(v17, v18))
        {
          v14 = 0;
LABEL_13:

          return v14;
        }
      }
    }

    else
    {
      v15 = v2;
    }

    sub_1D703ADC0();
    v14 = 1;
    goto LABEL_13;
  }

  return 1;
}

id sub_1D703AC7C(char *a1)
{
  v2 = v1;
  v4 = *&a1[qword_1EDF11060];
  swift_beginAccess();
  v5 = *(v4 + 17);
  *(v4 + 17) = 0;
  if (v5 > 0x3F || (v5 & 1) != 0)
  {
    LayeredMediaViewDisplayStateCoordinator.updateDisplay()();
  }

  v6 = *&v2[OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_layeredMediaView];
  *&v2[OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_layeredMediaView] = a1;

  v7 = a1;
  [v7 bounds];
  v8 = &v2[OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_lastRenderedBounds];
  *v8 = v9;
  *(v8 + 1) = v10;
  *(v8 + 2) = v11;
  *(v8 + 3) = v12;
  v8[32] = 0;
  return [v2 addSubview_];
}

double sub_1D703ADC0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_layeredMediaView;
  v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_layeredMediaView);
  if (v3)
  {
    v4 = *&v3[qword_1EDF11060];
    swift_beginAccess();
    v5 = *(v4 + 17);
    *(v4 + 17) = 0;
    if (v5 > 0x3F || (v5 & 1) != 0)
    {

      LayeredMediaViewDisplayStateCoordinator.updateDisplay()();
    }

    v6 = *(v1 + v2);
    if (v6)
    {
      [v6 removeFromSuperview];
      v3 = *(v1 + v2);
    }

    else
    {
      v3 = 0;
    }
  }

  *(v1 + v2) = 0;

  v7 = v1 + OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_lastRenderedBounds;
  result = 0.0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 1;
  return result;
}

id sub_1D703AF3C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_identifier];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  *&v1[OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_layeredMediaView] = 0;
  v5 = &v1[OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_lastRenderedBounds];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v5[32] = 1;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

uint64_t sub_1D703B07C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_identifier);

  return v1;
}

double sub_1D703B0EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_layeredMediaView);
  if (v1)
  {
    v2 = *(v1 + qword_1EDF11060);
    swift_beginAccess();
    v4 = *(v2 + 17);
    *(v2 + 17) = 1;
    if (v4 > 0x3F || (v4 & 1) == 0)
    {

      LayeredMediaViewDisplayStateCoordinator.updateDisplay()();
    }
  }

  return result;
}

double sub_1D703B170()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed22FormatLayeredMediaView_layeredMediaView);
  if (v1)
  {
    v2 = *(v1 + qword_1EDF11060);
    swift_beginAccess();
    v4 = *(v2 + 17);
    *(v2 + 17) = 0;
    if (v4 > 0x3F || (v4 & 1) != 0)
    {

      LayeredMediaViewDisplayStateCoordinator.updateDisplay()();
    }
  }

  return result;
}

uint64_t sub_1D703B1F0(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = [a1 asChannel];
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  if (![v6 supportsNotifications])
  {
    swift_unknownObjectRelease();
LABEL_10:
    sub_1D703B524();
    swift_allocObject();

    return sub_1D725BB1C();
  }

  if (a3)
  {
    goto LABEL_11;
  }

  v8 = [v7 identifier];
  if (!v8)
  {
    sub_1D726207C();
    v8 = sub_1D726203C();
  }

  v9 = [v4 subscribeNotificationPromptForTagID_];

  if (v9 == 2)
  {
    goto LABEL_11;
  }

  if (v9 == 1)
  {
    MEMORY[0x1EEE9AC00](v10, v11);
    sub_1D703B524();
    swift_allocObject();
    v12 = sub_1D725BBAC();
    swift_unknownObjectRelease();
    return v12;
  }

  if (!v9)
  {
LABEL_11:
    sub_1D703B524();
    swift_allocObject();

    v14 = sub_1D725BB1C();
    swift_unknownObjectRelease();
    return v14;
  }

  else
  {
    result = sub_1D72648EC();
    __break(1u);
  }

  return result;
}

unint64_t SubscribeNotificationPrompt.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t *sub_1D703B408@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

unint64_t NotificationPrompt.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D703B43C()
{
  result = qword_1EC8997A0;
  if (!qword_1EC8997A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8997A0);
  }

  return result;
}

unint64_t sub_1D703B494()
{
  result = qword_1EC8997A8;
  if (!qword_1EC8997A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8997A8);
  }

  return result;
}

unint64_t *sub_1D703B4E8@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

void sub_1D703B524()
{
  if (!qword_1EC8997B0)
  {
    v0 = sub_1D725BC0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8997B0);
    }
  }
}

double sub_1D703B574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = sub_1D703B65C;
  v13[4] = v12;
  v13[5] = a6;
  v13[6] = a7;

  swift_unknownObjectRetain();

  v14 = a5;
  sub_1D725BFFC();

  return result;
}

uint64_t sub_1D703B65C(__int16 a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a1 & 0xFF01;
  v6 = a2;
  return v3(&v5);
}

void sub_1D703B6A4(void *a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, void *), uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
    v9 = a1;
    v10 = [a5 name];
    sub_1D726207C();

    sub_1D703B898();
    sub_1D725F60C();
    swift_allocObject();
    sub_1D725F5CC();
    v11 = swift_allocObject();
    v11[2] = a2;
    v11[3] = a3;
    v11[4] = a4;

    sub_1D725F5EC();

    v12 = swift_allocObject();
    v12[2] = a2;
    v12[3] = a3;
    v12[4] = a4;

    sub_1D725F5FC();

    sub_1D725F5DC();
  }

  else
  {
    a2(768, a4, a3, a4, a5);
  }
}

unint64_t sub_1D703B898()
{
  result = qword_1EC8997B8;
  if (!qword_1EC8997B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8997B8);
  }

  return result;
}

unint64_t sub_1D703B978()
{
  result = qword_1EC8997C0;
  if (!qword_1EC8997C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8997C0);
  }

  return result;
}

uint64_t sub_1D703B9CC@<X0>(uint64_t *a1@<X8>)
{
  sub_1D7257EEC();
  result = sub_1D7257EDC();
  *a1 = result;
  return result;
}

uint64_t FormatContentSlotItemAuxiliary.Resolved.init(items:options:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1D703BA18()
{
  if (*v0)
  {
    return 0x736E6F6974706FLL;
  }

  else
  {
    return 0x736D657469;
  }
}

void sub_1D703BA50(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736D657469 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D703BB28(uint64_t a1)
{
  v2 = sub_1D703BE20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D703BB64(uint64_t a1)
{
  v2 = sub_1D703BE20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContentSlotItemAuxiliary.Resolved.encode(to:)(void *a1)
{
  sub_1D703C1B0(0, &qword_1EDF02558, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - v8;
  v10 = *v1;
  v12 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D703BE20();

  sub_1D7264B5C();
  v14 = v10;
  v13 = 0;
  sub_1D703BE74(0, &qword_1EDF1AF70, type metadata accessor for FormatContentSlotItemResolution);
  sub_1D703C214(&qword_1EDF04B18, &qword_1EDF09430, &protocol conformance descriptor for FormatContentSlotItemResolution, MEMORY[0x1E69E6300]);
  sub_1D726443C();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_1D703BE74(0, &qword_1EDF3C920, type metadata accessor for FormatOption);
    sub_1D5CB5BAC(&qword_1EDF050B0, &qword_1EDF45940, &protocol conformance descriptor for FormatOption, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D703BE20()
{
  result = qword_1EDF09CE8;
  if (!qword_1EDF09CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09CE8);
  }

  return result;
}

void sub_1D703BE74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D72627FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void FormatContentSlotItemAuxiliary.Resolved.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D703C1B0(0, &qword_1EDF03950, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D703BE20();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_1D703BE74(0, &qword_1EDF1AF70, type metadata accessor for FormatContentSlotItemResolution);
    v14 = 0;
    sub_1D703C214(&qword_1EDF04B10, &qword_1EDF09428, &protocol conformance descriptor for FormatContentSlotItemResolution, MEMORY[0x1E69E6330]);
    sub_1D726431C();
    v11 = v15;
    sub_1D703BE74(0, &qword_1EDF3C920, type metadata accessor for FormatOption);
    v14 = 1;
    sub_1D5CB5BAC(&qword_1EDF1B350, &unk_1EDF45930, &protocol conformance descriptor for FormatOption, MEMORY[0x1E69E6330]);
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    v12 = v15;
    *a2 = v11;
    a2[1] = v12;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

void sub_1D703C1B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D703BE20();
    v7 = a3(a1, &_s8ResolvedV10CodingKeysON_4, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D703C214(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D703BE74(255, &qword_1EDF1AF70, type metadata accessor for FormatContentSlotItemResolution);
    sub_1D703C2C0(a2, type metadata accessor for FormatContentSlotItemResolution, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D703C2C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D703C34C()
{
  result = qword_1EC8997D0;
  if (!qword_1EC8997D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8997D0);
  }

  return result;
}

unint64_t sub_1D703C3A4()
{
  result = qword_1EDF09CD8;
  if (!qword_1EDF09CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09CD8);
  }

  return result;
}

unint64_t sub_1D703C3FC()
{
  result = qword_1EDF09CE0;
  if (!qword_1EDF09CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09CE0);
  }

  return result;
}

uint64_t FormatServiceResult.copy(adjustedContent:)(uint64_t a1)
{
  v2 = v1;
  v26 = a1;
  v3 = type metadata accessor for FormatContent.Resolved(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatContentPool(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v25 - v13;
  v15 = type metadata accessor for FormatContent(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FormatServiceOptions(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5CEB8F0(v2 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_options, v22, type metadata accessor for FormatServiceOptions);
  sub_1D5CEB8F0(v2 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_content, v18, type metadata accessor for FormatContent);
  sub_1D5CEB8F0(v2 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_contentPool, v14, type metadata accessor for FormatContentPool);
  sub_1D5CEB8F0(v26, v6, type metadata accessor for FormatContent.Resolved);
  sub_1D5CEB8F0(v2 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_resolvedPool, v10, type metadata accessor for FormatContentPool);
  v23 = swift_allocObject();
  sub_1D703D8C0(v22, v23 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_options, type metadata accessor for FormatServiceOptions);
  sub_1D703D8C0(v18, v23 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_content, type metadata accessor for FormatContent);
  sub_1D703D8C0(v14, v23 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_contentPool, type metadata accessor for FormatContentPool);
  sub_1D703D8C0(v6, v23 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_resolvedContent, type metadata accessor for FormatContent.Resolved);
  sub_1D703D8C0(v10, v23 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_resolvedPool, type metadata accessor for FormatContentPool);
  return v23;
}

uint64_t FormatServiceResult.deinit()
{
  sub_1D5CED850(v0 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_resolvedContent, type metadata accessor for FormatContent.Resolved);
  sub_1D5CED850(v0 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_resolvedPool, type metadata accessor for FormatContentPool);
  sub_1D5CED850(v0 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_content, type metadata accessor for FormatContent);
  sub_1D5CED850(v0 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_contentPool, type metadata accessor for FormatContentPool);
  sub_1D5CED850(v0 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_options, type metadata accessor for FormatServiceOptions);
  return v0;
}

uint64_t FormatServiceResult.__deallocating_deinit()
{
  sub_1D5CED850(v0 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_resolvedContent, type metadata accessor for FormatContent.Resolved);
  sub_1D5CED850(v0 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_resolvedPool, type metadata accessor for FormatContentPool);
  sub_1D5CED850(v0 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_content, type metadata accessor for FormatContent);
  sub_1D5CED850(v0 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_contentPool, type metadata accessor for FormatContentPool);
  sub_1D5CED850(v0 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_options, type metadata accessor for FormatServiceOptions);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FormatServiceResult(uint64_t a1)
{
  result = qword_1EDF2C098;
  if (!qword_1EDF2C098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D703CA0C(uint64_t a1)
{
  result = type metadata accessor for FormatContent.Resolved(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FormatContentPool(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for FormatContent(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for FormatServiceOptions(319);
        if (v5 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

void sub_1D703CB64(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v131 = a4;
  v130 = a3;
  v129 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  v6 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129, v7);
  v9 = (&v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v127 - v12;
  v14 = type metadata accessor for FormatWebEmbed(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FormatContentSlotItemObject(0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (&v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5CEB8F0(a1, v21, type metadata accessor for FormatContentSlotItemObject);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 9)
  {
    if ((EnumCaseMultiPayload - 12) >= 8)
    {
      if (EnumCaseMultiPayload == 10)
      {
        v35 = *(a2 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_resolvedPool + 80);
        if (*(v35 + 16))
        {
          v36 = sub_1D5B69D90(*v21, v21[1]);
          v38 = v37;

          if (v38)
          {
            v39 = *(*(v35 + 56) + 8 * v36);
            if (v39 >> 62)
            {
              v40 = sub_1D7263BFC();
            }

            else
            {
              v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v41 = MEMORY[0x1E69E7CC0];
            if (!v40)
            {
              goto LABEL_36;
            }

            v132 = MEMORY[0x1E69E7CC0];

            sub_1D7263ECC();
            if ((v40 & 0x8000000000000000) == 0)
            {
              v42 = 0;
              v44 = *v130;
              v43 = v130[1];
              do
              {
                if ((v39 & 0xC000000000000001) != 0)
                {
                  v46 = MEMORY[0x1DA6FB460](v42, v39);
                }

                else
                {
                  v46 = *(v39 + 8 * v42 + 32);
                }

                v47 = v46;

                v48 = [v47 scoreProfile];
                if (!v48)
                {
                  v48 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
                }

                ++v42;
                type metadata accessor for FeedGroupDebugCandidateItem();
                v45 = swift_allocObject();
                v45[2] = v44;
                v45[3] = v43;
                v45[4] = v47;
                v45[5] = v48;
                v45[6] = 0;
                sub_1D7263E9C();
                sub_1D7263EDC();
                sub_1D7263EEC();
                sub_1D7263EAC();
              }

              while (v40 != v42);
              goto LABEL_90;
            }

            __break(1u);
LABEL_108:
            __break(1u);
            goto LABEL_109;
          }

LABEL_35:
          v41 = MEMORY[0x1E69E7CC0];
LABEL_36:
          *v131 = v41;
          return;
        }
      }

      else
      {
        v76 = *(a2 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_resolvedPool + 88);
        if (*(v76 + 16))
        {
          v77 = sub_1D5B69D90(*v21, v21[1]);
          v79 = v78;

          v41 = MEMORY[0x1E69E7CC0];
          if (v79)
          {
            v80 = *(*(v76 + 56) + (v77 << 6) + 16);
            v132 = MEMORY[0x1E69E7CC0];
            v81 = *(v80 + 16);
            if (v81)
            {
              v82 = v80 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
              v83 = *(v6 + 72);
              v127 = v80;

              v128 = v83;
              do
              {
                sub_1D5CEB8F0(v82, v13, type metadata accessor for FormatContentSlotItemObject.Resolved);
                sub_1D5CEB8F0(v13, v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
                if (swift_getEnumCaseMultiPayload())
                {
                  sub_1D5CED850(v13, type metadata accessor for FormatContentSlotItemObject.Resolved);
                  sub_1D5CED850(v9, type metadata accessor for FormatContentSlotItemObject.Resolved);
                }

                else
                {
                  v84 = *v9;
                  v86 = *v130;
                  v85 = v130[1];

                  v87 = [swift_unknownObjectRetain() scoreProfile];
                  if (!v87)
                  {
                    v87 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
                  }

                  swift_unknownObjectRelease();
                  sub_1D5CED850(v13, type metadata accessor for FormatContentSlotItemObject.Resolved);
                  type metadata accessor for FeedGroupDebugCandidateItem();
                  v88 = swift_allocObject();
                  v88[2] = v86;
                  v88[3] = v85;
                  v88[4] = v84;
                  v88[5] = v87;
                  v88[6] = 0;
                  MEMORY[0x1DA6F9CE0]();
                  if (*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_1D726272C();
                  }

                  sub_1D726278C();
                  v41 = v132;
                  v83 = v128;
                }

                v82 += v83;
                --v81;
              }

              while (v81);
            }
          }

          goto LABEL_36;
        }
      }

      goto LABEL_35;
    }

    goto LABEL_33;
  }

  if (EnumCaseMultiPayload > 4)
  {
    if ((EnumCaseMultiPayload - 6) < 3)
    {
LABEL_33:
      v52 = type metadata accessor for FormatContentSlotItemObject;
      v53 = v21;
LABEL_34:
      sub_1D5CED850(v53, v52);
      goto LABEL_35;
    }

    if (EnumCaseMultiPayload == 5)
    {
      sub_1D703D8C0(v21, v17, type metadata accessor for FormatWebEmbed);
      v65 = *&v17[*(v14 + 28)];
      if (v65)
      {
        v66 = *(v65 + OBJC_IVAR____TtC8NewsFeed13FormatArticle_alternate);
        v67 = OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_contentPool;
        v68 = *(a2 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_resolvedPool);
        swift_retain_n();
        v69 = v65;
        if (!*(v68 + 16))
        {
          goto LABEL_52;
        }

LABEL_50:
        v70 = *(v69 + 16);
        v71 = *(v69 + 24);

        v72 = sub_1D5B69D90(v70, v71);
        if ((v73 & 1) == 0)
        {
          while (1)
          {
            v74 = *(a2 + v67);
            if (*(v74 + 16))
            {
              v72 = sub_1D5B69D90(*(v69 + 16), *(v69 + 24));
              if (v75)
              {
                break;
              }
            }

            if (!v66)
            {

              goto LABEL_96;
            }

            v69 = v66;
            v66 = *(v66 + OBJC_IVAR____TtC8NewsFeed13FormatArticle_alternate);
            if (*(v68 + 16))
            {
              goto LABEL_50;
            }

LABEL_52:
          }

          v68 = v74;
        }

        v122 = *(*(v68 + 56) + 8 * v72);
        swift_unknownObjectRetain();

        sub_1D5E42B34();
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_1D72816C0;
        v124 = *v130;
        v123 = v130[1];
        swift_unknownObjectRetain();

        v125 = [v122 scoreProfile];
        if (!v125)
        {
          v125 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
        }

        type metadata accessor for FeedGroupDebugCandidateItem();
        v126 = swift_allocObject();
        v126[2] = v124;
        v126[3] = v123;
        v126[4] = v122;
        v126[5] = v125;
        v126[6] = 0;
        *(v41 + 32) = v126;

        swift_unknownObjectRelease();

        sub_1D5CED850(v17, type metadata accessor for FormatWebEmbed);
        goto LABEL_36;
      }

LABEL_96:
      v52 = type metadata accessor for FormatWebEmbed;
      v53 = v17;
      goto LABEL_34;
    }

    v104 = *v21;
    v105 = *(a2 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_resolvedPool + 72);
    if (*(v105 + 16))
    {
      v106 = *(v104 + 16);
      v107 = *(v104 + 24);

      v108 = sub_1D5B69D90(v106, v107);
      v110 = v109;

      if (v110)
      {
        v111 = *(*(v105 + 56) + 8 * v108);
        sub_1D5E42B34();
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_1D72816C0;
        v113 = *v130;
        v112 = v130[1];
        v114 = v111;

        v115 = [v114 scoreProfile];
        if (!v115)
        {
          v115 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
        }

        type metadata accessor for FeedGroupDebugCandidateItem();
        v116 = swift_allocObject();
        v116[2] = v113;
        v116[3] = v112;
        v116[4] = v114;
        v116[5] = v115;
        v116[6] = 0;
        *(v41 + 32) = v116;

        goto LABEL_36;
      }
    }

    goto LABEL_106;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if ((EnumCaseMultiPayload - 2) >= 2)
    {
      v23 = *v21;
      v24 = *(a2 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_resolvedPool + 32);
      if (*(v24 + 16))
      {
        v25 = *(v23 + 16);
        v26 = *(v23 + 24);

        v27 = sub_1D5B69D90(v25, v26);
        v29 = v28;

        if (v29)
        {
          v30 = *(*(v24 + 56) + 8 * v27);
          if (v30 >> 62)
          {
            v31 = sub_1D7263BFC();
            if (v31)
            {
LABEL_9:
              v129 = v23;
              v132 = MEMORY[0x1E69E7CC0];

              sub_1D7263ECC();
              if ((v31 & 0x8000000000000000) == 0)
              {
                v32 = 0;
                v34 = *v130;
                v33 = v130[1];
                do
                {
                  if ((v30 & 0xC000000000000001) != 0)
                  {
                    v50 = MEMORY[0x1DA6FB460](v32, v30);
                  }

                  else
                  {
                    v50 = *(v30 + 8 * v32 + 32);
                    swift_unknownObjectRetain();
                  }

                  v51 = [swift_unknownObjectRetain() scoreProfile];
                  if (!v51)
                  {
                    v51 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
                  }

                  swift_unknownObjectRelease();
                  ++v32;
                  type metadata accessor for FeedGroupDebugCandidateItem();
                  v49 = swift_allocObject();
                  v49[2] = v34;
                  v49[3] = v33;
                  v49[4] = v50;
                  v49[5] = v51;
                  v49[6] = 0;
                  sub_1D7263E9C();
                  sub_1D7263EDC();
                  sub_1D7263EEC();
                  sub_1D7263EAC();
                }

                while (v31 != v32);
LABEL_89:

LABEL_90:

                v41 = v132;
                goto LABEL_36;
              }

              goto LABEL_108;
            }
          }

          else
          {
            v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v31)
            {
              goto LABEL_9;
            }
          }
        }
      }

      goto LABEL_106;
    }

    goto LABEL_33;
  }

  if (!EnumCaseMultiPayload)
  {
    v54 = *v21;
    v55 = *(*v21 + OBJC_IVAR____TtC8NewsFeed13FormatArticle_alternate);
    v56 = OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_contentPool;
    v57 = *(a2 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_resolvedPool);

    v58 = v54;
    if (!*(v57 + 16))
    {
      goto LABEL_41;
    }

LABEL_39:
    v59 = *(v58 + 16);
    v60 = *(v58 + 24);

    v61 = sub_1D5B69D90(v59, v60);
    if ((v62 & 1) == 0)
    {
      while (1)
      {
        v63 = *(a2 + v56);
        if (*(v63 + 16))
        {
          v61 = sub_1D5B69D90(*(v58 + 16), *(v58 + 24));
          if (v64)
          {
            break;
          }
        }

        if (!v55)
        {
          goto LABEL_106;
        }

        v58 = v55;
        v55 = *(v55 + OBJC_IVAR____TtC8NewsFeed13FormatArticle_alternate);
        if (*(v57 + 16))
        {
          goto LABEL_39;
        }

LABEL_41:
      }

      v57 = v63;
    }

    v117 = *(*(v57 + 56) + 8 * v61);
    sub_1D5E42B34();
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1D72816C0;
    v119 = *v130;
    v118 = v130[1];
    swift_unknownObjectRetain_n();

    v120 = [v117 scoreProfile];
    if (!v120)
    {
      v120 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
    }

    type metadata accessor for FeedGroupDebugCandidateItem();
    v121 = swift_allocObject();
    v121[2] = v119;
    v121[3] = v118;
    v121[4] = v117;
    v121[5] = v120;
    v121[6] = 0;
    *(v41 + 32) = v121;

    swift_unknownObjectRelease();

    goto LABEL_36;
  }

  v89 = *v21;
  v90 = *(a2 + OBJC_IVAR____TtC8NewsFeed19FormatServiceResult_resolvedPool + 8);
  if (!*(v90 + 16))
  {
    goto LABEL_106;
  }

  v91 = *(v89 + 16);
  v92 = *(v89 + 24);

  v93 = sub_1D5B69D90(v91, v92);
  v95 = v94;

  if ((v95 & 1) == 0)
  {
    goto LABEL_106;
  }

  v96 = *(*(v90 + 56) + 8 * v93);
  if (!(v96 >> 62))
  {
    v97 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v97)
    {
      goto LABEL_74;
    }

LABEL_106:

    goto LABEL_35;
  }

  v97 = sub_1D7263BFC();
  if (!v97)
  {
    goto LABEL_106;
  }

LABEL_74:
  v129 = v89;
  v132 = MEMORY[0x1E69E7CC0];

  sub_1D7263ECC();
  if ((v97 & 0x8000000000000000) == 0)
  {
    v98 = 0;
    v100 = *v130;
    v99 = v130[1];
    do
    {
      if ((v96 & 0xC000000000000001) != 0)
      {
        v102 = MEMORY[0x1DA6FB460](v98, v96);
      }

      else
      {
        v102 = *(v96 + 8 * v98 + 32);
        swift_unknownObjectRetain();
      }

      v103 = [swift_unknownObjectRetain() scoreProfile];
      if (!v103)
      {
        v103 = [objc_allocWithZone(MEMORY[0x1E69B52B8]) init];
      }

      swift_unknownObjectRelease();
      ++v98;
      type metadata accessor for FeedGroupDebugCandidateItem();
      v101 = swift_allocObject();
      v101[2] = v100;
      v101[3] = v99;
      v101[4] = v102;
      v101[5] = v103;
      v101[6] = 0;
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
    }

    while (v97 != v98);
    goto LABEL_89;
  }

LABEL_109:
  __break(1u);
}

uint64_t sub_1D703D8C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D703D928(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x1E69E7CC0];
  v27 = *(a1 + 16);
  sub_1D5BFC364(0, v1, 0);
  v2 = v28;
  v4 = a1 + 56;
  result = sub_1D7263B7C();
  v6 = v27;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_44;
    }

    v11 = *(a1 + 36);
    v12 = *(*(a1 + 48) + result);
    if (v12 > 5)
    {
      if (*(*(a1 + 48) + result) > 8u)
      {
        if (v12 == 9)
        {
          v13 = 0xE500000000000000;
          v14 = 0x6F65646976;
        }

        else if (v12 == 10)
        {
          v13 = 0xE400000000000000;
          v14 = 1953394534;
        }

        else
        {
          v14 = 0x616C506F65646976;
          v13 = 0xEB00000000726579;
        }
      }

      else if (v12 == 6)
      {
        v13 = 0xE300000000000000;
        v14 = 7107189;
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v12 == 7)
        {
          v14 = 0x726F6C6F63;
        }

        else
        {
          v14 = 0x6567616D69;
        }
      }
    }

    else if (*(*(a1 + 48) + result) > 2u)
    {
      if (v12 == 3)
      {
        v13 = 0xE500000000000000;
        v14 = 0x74616F6C66;
      }

      else if (v12 == 4)
      {
        v13 = 0xE700000000000000;
        v14 = 0x72656765746E69;
      }

      else
      {
        v13 = 0xE600000000000000;
        v14 = 0x676E69727473;
      }
    }

    else if (*(*(a1 + 48) + result))
    {
      v13 = 0xE400000000000000;
      if (v12 == 1)
      {
        v14 = 1702125924;
      }

      else
      {
        v14 = 1836412517;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      v14 = 0x6E61656C6F6F62;
    }

    v16 = *(v28 + 16);
    v15 = *(v28 + 24);
    if (v16 >= v15 >> 1)
    {
      v25 = *(a1 + 36);
      v26 = result;
      sub_1D5BFC364((v15 > 1), v16 + 1, 1);
      v6 = v27;
      v11 = v25;
      result = v26;
    }

    *(v28 + 16) = v16 + 1;
    v17 = v28 + 16 * v16;
    *(v17 + 32) = v14;
    *(v17 + 40) = v13;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_45;
    }

    v4 = a1 + 56;
    v18 = *(a1 + 56 + 8 * v9);
    if ((v18 & v10) == 0)
    {
      goto LABEL_46;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_47;
    }

    v19 = v18 & (-2 << (result & 0x3F));
    if (v19)
    {
      v8 = __clz(__rbit64(v19)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v9 << 6;
      v21 = v9 + 1;
      v22 = (a1 + 64 + 8 * v9);
      while (v21 < (v8 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          sub_1D5C25E1C(result, v11, 0);
          v6 = v27;
          v8 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      sub_1D5C25E1C(result, v11, 0);
      v6 = v27;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1D703DC88(void *a1, uint64_t a2)
{
  sub_1D703E680(0, &qword_1EC8997F8, sub_1D703E62C, &type metadata for FormatOptionValidator.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D703E62C();
  sub_1D7264B5C();
  v11[1] = a2;
  sub_1D703E680(0, &qword_1EC892EA0, sub_1D5E2A690, &type metadata for FormatOptionType, MEMORY[0x1E69E64E8]);
  sub_1D703E6E8(&qword_1EC899800, sub_1D6662C30, MEMORY[0x1E69E64F0]);
  sub_1D726443C();
  return (*(v6 + 8))(v9, v5);
}

void sub_1D703DE84(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365707974 && a2 == 0xE500000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D703DF08(uint64_t a1)
{
  v2 = sub_1D703E62C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D703DF44(uint64_t a1)
{
  v2 = sub_1D703E62C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D703DF80@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D703E400(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D703DFD4()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D6C37A40(v3, v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D703E024(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D6C37A40(v4, v2);
  return sub_1D7264A5C();
}

uint64_t sub_1D703E068()
{
  sub_1D703D928(*v0);
  v1 = MEMORY[0x1DA6F9D20]();

  return v1;
}

uint64_t sub_1D703E0C8(uint64_t *a1, char *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a2;
  v5 = *(v3 + 16);
  if (!v5)
  {

    sub_1D6057620();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    *(inited + 32) = v4;
    v13 = sub_1D5E26E28(inited);
    swift_setDeallocating();
    return v13;
  }

  v18 = *a1;
  v6 = *(v3 + 32);
  v7 = *(v3 + 32 + 8 * v5 - 8);
  v8 = FormatOptionType.rawValue.getter();
  v10 = v9;
  if (v8 == FormatOptionType.rawValue.getter() && v10 == v11)
  {

    goto LABEL_7;
  }

  v14 = sub_1D72646CC();

  if (v14)
  {
LABEL_7:

    if (v6)
    {
      v13 = sub_1D5E26E28(&unk_1F50F4588);
    }

    else
    {
      if (qword_1EDF1AD88 != -1)
      {
        swift_once();
      }

      v13 = qword_1EDF1AD90;
    }

    return v13;
  }

  type metadata accessor for FormatLayoutError(0);
  sub_1D5D285FC();
  swift_allocError();
  v16 = v15;
  v13 = 0xE000000000000000;

  sub_1D7263F9C();
  if (v7)
  {
  }

  sub_1D7263F9C();
  *v16 = v18;
  v16[1] = v2;
  v16[2] = 0;
  v16[3] = 0xE000000000000000;
  v16[4] = 0;
  v16[5] = 0xE000000000000000;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  return v13;
}

unint64_t sub_1D703E3AC()
{
  result = qword_1EC8997D8;
  if (!qword_1EC8997D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8997D8);
  }

  return result;
}

void *sub_1D703E400(void *a1)
{
  sub_1D703E680(0, &qword_1EC8997E0, sub_1D703E62C, &type metadata for FormatOptionValidator.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v12 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D703E62C();
  v10 = v9;
  sub_1D7264B0C();
  if (!v1)
  {
    sub_1D703E680(0, &qword_1EC892EA0, sub_1D5E2A690, &type metadata for FormatOptionType, MEMORY[0x1E69E64E8]);
    sub_1D703E6E8(&qword_1EC8997F0, sub_1D5C6115C, MEMORY[0x1E69E6510]);
    sub_1D726431C();
    (*(v5 + 8))(v8, v4);
    v10 = v12[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

unint64_t sub_1D703E62C()
{
  result = qword_1EC8997E8;
  if (!qword_1EC8997E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8997E8);
  }

  return result;
}

void sub_1D703E680(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D703E6E8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D703E680(255, &qword_1EC892EA0, sub_1D5E2A690, &type metadata for FormatOptionType, MEMORY[0x1E69E64E8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D703E7A0()
{
  result = qword_1EC899808;
  if (!qword_1EC899808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899808);
  }

  return result;
}

unint64_t sub_1D703E7F8()
{
  result = qword_1EC899810;
  if (!qword_1EC899810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899810);
  }

  return result;
}

unint64_t sub_1D703E850()
{
  result = qword_1EC899818;
  if (!qword_1EC899818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899818);
  }

  return result;
}

uint64_t type metadata accessor for FormatJson(uint64_t a1)
{
  result = qword_1EDF12A58;
  if (!qword_1EDF12A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D703E8F0(uint64_t a1)
{
  sub_1D703EA74(319);
  if (v1 <= 0x3F)
  {
    sub_1D703EADC(319, &qword_1EC899828, type metadata accessor for FormatJson, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1D72585BC();
      if (v3 <= 0x3F)
      {
        sub_1D703EADC(319, &qword_1EC899830, type metadata accessor for FormatJsonKeyValue, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1D703EB40(319);
          if (v5 <= 0x3F)
          {
            sub_1D703EADC(319, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D703EA74(uint64_t a1)
{
  if (!qword_1EC899820)
  {
    type metadata accessor for FormatJson(255);
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC899820);
    }
  }
}

void sub_1D703EADC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D703EB40(uint64_t a1)
{
  if (!qword_1EDF045C8[0])
  {
    sub_1D5B5A498(255, &qword_1EDF1AB50, 0x1E69B51B8);
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, qword_1EDF045C8);
    }
  }
}

uint64_t sub_1D703EBA8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D704086C(a1, a2);

  return v2;
}

id sub_1D703EBEC(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() traitCollectionWithUserInterfaceStyle_];

  return v1;
}

uint64_t sub_1D703EC38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *&v254 = a1;
  v245 = a2;
  v2 = MEMORY[0x1E69E6720];
  sub_1D703EADC(0, qword_1EDF12A28, type metadata accessor for FormatJson, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = (&v234 - v5);
  v7 = type metadata accessor for FormatOption(0);
  v249 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (&v234 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v239 = type metadata accessor for FormatJsonKeyValue(0);
  v244 = *(v239 - 8);
  MEMORY[0x1EEE9AC00](v239, v11);
  v242 = (&v234 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v241 = sub_1D72585BC();
  v13 = *(v241 - 1);
  MEMORY[0x1EEE9AC00](v241, v14);
  v16 = &v234 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D703EADC(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], v2);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v243 = (&v234 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v234 - v22);
  v24 = sub_1D725B76C();
  v248 = *(v24 - 1);
  MEMORY[0x1EEE9AC00](v24, v25);
  v247 = &v234 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v246 = (&v234 - v29);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v234 - v32;
  v34 = type metadata accessor for FormatJson(0);
  v250 = *(v34 - 1);
  MEMORY[0x1EEE9AC00](v34, v35);
  v240 = (&v234 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v37, v38);
  v238 = &v234 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v237 = (&v234 - v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  v252 = (&v234 - v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  v251 = &v234 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v234 - v51;
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = (&v234 - v55);
  sub_1D7040794(v253, &v234 - v55, type metadata accessor for FormatJson);
  v253 = v34;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v252 = v33;
    if (EnumCaseMultiPayload > 1)
    {
      v65 = v245;
      if (EnumCaseMultiPayload == 2)
      {
        v82 = v248;
        v83 = MEMORY[0x1E69D6A28];
        if (!*v56)
        {
          v83 = MEMORY[0x1E69D6A38];
        }

        (*(v248 + 104))(v245, *v83, v24);
        return (*(v82 + 56))(v65, 0, 1, v24);
      }

      else
      {
        if (EnumCaseMultiPayload == 3)
        {
          v66 = *v56;
          v67 = swift_allocObject();
          v255 = v66;
          sub_1D5E4049C();
          v68 = sub_1D7263ADC();
        }

        else
        {
          v67 = swift_allocObject();
          v68 = sub_1D7262A9C();
        }

        *(v67 + 16) = v68;
        *(v67 + 24) = v69;
        *v65 = v67;
        v119 = v248;
        (*(v248 + 104))(v65, *MEMORY[0x1E69D6A40], v24);
        return (*(v119 + 56))(v65, 0, 1, v24);
      }
    }

    v76 = v245;
    if (!EnumCaseMultiPayload)
    {
      v77 = *v56;
      v78 = v254;

      v79 = sub_1D703EBA8(v77, v78);

      if (*(v79 + 16))
      {
        v80 = swift_allocObject();
        *(v80 + 16) = v79;
        *v76 = v80;
        v81 = MEMORY[0x1E69D6A48];
LABEL_130:
        v227 = v248;
        (*(v248 + 104))(v76, *v81, v24);
        return (*(v227 + 56))(v76, 0, 1, v24);
      }

LABEL_138:

      v228 = *(v248 + 56);
      v229 = v76;
      return v228(v229, 1, 1, v24);
    }

    v120 = *v56;
    v121 = *(*v56 + 16);
    if (v121)
    {
      v122 = *(v250 + 80);
      v249 = *v56;
      v123 = v120 + ((v122 + 32) & ~v122);
      v124 = *(v250 + 72);
      v125 = (v248 + 48);
      v253 = (v248 + 32);
      v126 = MEMORY[0x1E69E7CC0];
      v127 = v252;
      v251 = v124;
      do
      {
        sub_1D7040794(v123, v52, type metadata accessor for FormatJson);
        sub_1D703EC38(v254, v23);
        sub_1D5D28BC4(v52, type metadata accessor for FormatJson);
        if ((*v125)(v23, 1, v24) == 1)
        {
          sub_1D70407FC(v23, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
        }

        else
        {
          v128 = *v253;
          (*v253)(v127, v23, v24);
          v129 = v24;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v126 = sub_1D698F488(0, v126[2] + 1, 1, v126);
          }

          v131 = v126[2];
          v130 = v126[3];
          if (v131 >= v130 >> 1)
          {
            v126 = sub_1D698F488((v130 > 1), v131 + 1, 1, v126);
          }

          v126[2] = v131 + 1;
          v132 = v126 + ((*(v248 + 80) + 32) & ~*(v248 + 80)) + *(v248 + 72) * v131;
          v127 = v252;
          v24 = v129;
          v128(v132, v252, v129);
          v124 = v251;
        }

        v123 += v124;
        --v121;
      }

      while (v121);

      v76 = v245;
      if (!v126[2])
      {
        goto LABEL_138;
      }
    }

    else
    {

      v126 = MEMORY[0x1E69E7CC0];
      if (!*(MEMORY[0x1E69E7CC0] + 16))
      {
        goto LABEL_138;
      }
    }

    v226 = swift_allocObject();
    *(v226 + 16) = v126;
    *v76 = v226;
    v81 = MEMORY[0x1E69D6A30];
    goto LABEL_130;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      v253 = v24;
      v90 = *v56;
      v91 = *(*v56 + 16);
      if (!v91)
      {
        v95 = MEMORY[0x1E69E7CC8];
LABEL_134:

        if (v95[2])
        {
          v230 = swift_allocObject();
          *(v230 + 16) = v95;
          v231 = v245;
          *v245 = v230;
          v232 = v248;
          v233 = v253;
          (*(v248 + 104))(v231, *MEMORY[0x1E69D6A48], v253);
          return (*(v232 + 56))(v231, 0, 1, v233);
        }

        else
        {

          return (*(v248 + 56))(v245, 1, 1, v253);
        }
      }

      v92 = 0;
      v93 = *(v239 + 20);
      v94 = v244;
      v252 = (v90 + ((*(v94 + 80) + 32) & ~*(v94 + 80)));
      v250 = v248 + 32;
      v251 = (v248 + 48);
      v240 = (v248 + 8);
      v241 = (v248 + 16);
      v239 = v248 + 40;
      v95 = MEMORY[0x1E69E7CC8];
      v97 = v242;
      v96 = v243;
      v238 = v91;
      v237 = v90;
      v98 = v253;
      while (v92 < v90[2])
      {
        sub_1D7040794(v252 + *(v94 + 72) * v92, v97, type metadata accessor for FormatJsonKeyValue);
        sub_1D703EC38(v254, v96);
        if ((*v251)(v96, 1, v98) == 1)
        {
          sub_1D5D28BC4(v97, type metadata accessor for FormatJsonKeyValue);
          sub_1D70407FC(v96, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
        }

        else
        {
          v99 = v93;
          v100 = v246;
          v249 = *v250;
          v249(v246, v96, v98);
          v102 = *v97;
          v101 = v97[1];
          (*v241)(v247, v100, v98);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v255 = v95;
          v104 = sub_1D5B69D90(v102, v101);
          v106 = v95[2];
          v107 = (v105 & 1) == 0;
          v108 = __OFADD__(v106, v107);
          v109 = v106 + v107;
          if (v108)
          {
            goto LABEL_146;
          }

          v110 = v105;
          if (v95[3] >= v109)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v118 = v104;
              sub_1D6D7F424();
              v104 = v118;
            }
          }

          else
          {
            sub_1D6D68568(v109, isUniquelyReferenced_nonNull_native);
            v104 = sub_1D5B69D90(v102, v101);
            if ((v110 & 1) != (v111 & 1))
            {
              goto LABEL_150;
            }
          }

          v93 = v99;
          v95 = v255;
          if (v110)
          {
            v112 = v248;
            (*(v248 + 40))(*(v255 + 56) + *(v248 + 72) * v104, v247, v98);
            (*(v112 + 8))(v246, v98);
          }

          else
          {
            *(v255 + 8 * (v104 >> 6) + 64) |= 1 << v104;
            v113 = (v95[6] + 16 * v104);
            *v113 = v102;
            v113[1] = v101;
            v114 = v248;
            v249((v95[7] + *(v248 + 72) * v104), v247, v98);
            v115 = *(v114 + 8);

            v115(v246, v98);
            v116 = v95[2];
            v108 = __OFADD__(v116, 1);
            v117 = v116 + 1;
            if (v108)
            {
              goto LABEL_147;
            }

            v95[2] = v117;
          }

          v97 = v242;
          sub_1D5D28BC4(v242, type metadata accessor for FormatJsonKeyValue);
          v96 = v243;
          v94 = v244;
          v90 = v237;
          v91 = v238;
        }

        if (v91 == ++v92)
        {
          goto LABEL_134;
        }
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 9)
      {
        v70 = *v56;
        if (v70)
        {
          v71 = swift_allocObject();
          v72 = [v70 remoteURL];
          sub_1D72584EC();

          v73 = sub_1D72583DC();
          v75 = v74;

          (*(v13 + 8))(v16, v241);
          *(v71 + 16) = v73;
          *(v71 + 24) = v75;
          v64 = v245;
          *v245 = v71;
          goto LABEL_24;
        }

        goto LABEL_132;
      }

      v255 = *v56;
      sub_1D703EADC(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
      sub_1D68CC118();
      v246 = v6;
      sub_1D5E2A690();
      v167 = v246;
      v168 = sub_1D72623DC();

      v170 = (v168 + 64);
      v169 = *(v168 + 64);
      v242 = v168;
      v171 = 1 << *(v168 + 32);
      v172 = -1;
      if (v171 < 64)
      {
        v172 = ~(-1 << v171);
      }

      v173 = v172 & v169;
      v174 = (v171 + 63) >> 6;
      v175 = (v250 + 48);
      v235 = MEMORY[0x1E69E7CC8];
      v176 = v249;
      v239 = v174;
      v177 = v245;
      v241 = v170;
      v178 = 0;
      if (v173)
      {
        while (1)
        {
          v179 = v178;
LABEL_62:
          v243 = v179;
          v244 = v173;
          v180 = __clz(__rbit64(v173)) | (v179 << 6);
          v181 = v242[7];
          v236 = *(v242[6] + v180);
          v182 = *(v181 + 8 * v180);
          v183 = *(v182 + 16);
          if (v183)
          {
            break;
          }

          v186 = MEMORY[0x1E69E7CC8];
LABEL_81:
          v203 = v243;
          v173 = (v244 - 1) & v244;
          if (v186[2])
          {
            v244 &= v244 - 1;
            v234 = v175;
            if (v236 > 5)
            {
              v204 = 1953394534;
              if (v236 != 10)
              {
                v204 = 0x616C506F65646976;
              }

              v205 = 0xE400000000000000;
              if (v236 != 10)
              {
                v205 = 0xEB00000000726579;
              }

              if (v236 == 9)
              {
                v204 = 0x6F65646976;
              }

              v207 = 0xE500000000000000;
              if (v236 == 9)
              {
                v205 = 0xE500000000000000;
              }

              v206 = 0x726F6C6F63;
              if (v236 != 7)
              {
                v206 = 0x6567616D69;
              }

              if (v236 == 6)
              {
                v206 = 7107189;
                v207 = 0xE300000000000000;
              }

              v208 = v236 <= 8;
            }

            else
            {
              v204 = 0x72656765746E69;
              if (v236 != 4)
              {
                v204 = 0x676E69727473;
              }

              v205 = 0xE600000000000000;
              if (v236 == 4)
              {
                v205 = 0xE700000000000000;
              }

              if (v236 == 3)
              {
                v204 = 0x74616F6C66;
                v205 = 0xE500000000000000;
              }

              v206 = 1702125924;
              if (v236 != 1)
              {
                v206 = 1836412517;
              }

              v207 = 0xE400000000000000;
              if (!v236)
              {
                v206 = 0x6E61656C6F6F62;
                v207 = 0xE700000000000000;
              }

              v208 = v236 <= 2;
            }

            if (v208)
            {
              v209 = v206;
            }

            else
            {
              v209 = v204;
            }

            if (v208)
            {
              v210 = v207;
            }

            else
            {
              v210 = v205;
            }

            v211 = v237;
            *v237 = v186;
            swift_storeEnumTagMultiPayload();
            sub_1D7040EA4(v211, v238, type metadata accessor for FormatJson);
            v212 = v235;
            v213 = swift_isUniquelyReferenced_nonNull_native();
            v255 = v212;
            v214 = sub_1D5B69D90(v209, v210);
            v216 = v212[2];
            v217 = (v215 & 1) == 0;
            v108 = __OFADD__(v216, v217);
            v218 = v216 + v217;
            if (v108)
            {
              goto LABEL_148;
            }

            v219 = v215;
            v170 = v241;
            if (v212[3] >= v218)
            {
              if ((v213 & 1) == 0)
              {
                v224 = v214;
                sub_1D6D7F3D0();
                v214 = v224;
              }
            }

            else
            {
              sub_1D6D68514(v218, v213);
              v214 = sub_1D5B69D90(v209, v210);
              if ((v219 & 1) != (v220 & 1))
              {
                goto LABEL_150;
              }
            }

            v167 = v246;
            v235 = v255;
            if (v219)
            {
              sub_1D7040730(v238, *(v255 + 56) + *(v250 + 72) * v214);
            }

            else
            {
              *(v255 + 8 * (v214 >> 6) + 64) |= 1 << v214;
              v221 = (v235[6] + 16 * v214);
              *v221 = v209;
              v221[1] = v210;
              sub_1D7040EA4(v238, v235[7] + *(v250 + 72) * v214, type metadata accessor for FormatJson);
              v222 = v235[2];
              v108 = __OFADD__(v222, 1);
              v223 = v222 + 1;
              if (v108)
              {
                goto LABEL_149;
              }

              v235[2] = v223;
            }

            v174 = v239;
            v175 = v234;
            v173 = v244;
            v178 = v203;
            if (!v244)
            {
              goto LABEL_59;
            }
          }

          else
          {

            v178 = v203;
            v170 = v241;
            v174 = v239;
            if (!v173)
            {
              goto LABEL_59;
            }
          }
        }

        v184 = (v182 + ((*(v176 + 80) + 32) & ~*(v176 + 80)));

        v185 = 0;
        v186 = MEMORY[0x1E69E7CC8];
        v247 = v184;
        v248 = v182;
        while (v185 < *(v182 + 16))
        {
          sub_1D7040794(&v184[v176[9] * v185], v10, type metadata accessor for FormatOption);
          v255 = v10[2];

          sub_1D6EAEDE4(v254, v167);

          if ((*v175)(v167, 1, v253) == 1)
          {
            sub_1D5D28BC4(v10, type metadata accessor for FormatOption);
            sub_1D70407FC(v167, qword_1EDF12A28, type metadata accessor for FormatJson);
          }

          else
          {
            v187 = v175;
            v188 = v251;
            sub_1D7040EA4(v167, v251, type metadata accessor for FormatJson);
            v189 = *v10;
            v190 = v10[1];
            sub_1D7040794(v188, v252, type metadata accessor for FormatJson);
            v191 = swift_isUniquelyReferenced_nonNull_native();
            v255 = v186;
            v192 = sub_1D5B69D90(v189, v190);
            v194 = v186[2];
            v195 = (v193 & 1) == 0;
            v108 = __OFADD__(v194, v195);
            v196 = v194 + v195;
            if (v108)
            {
              goto LABEL_142;
            }

            v197 = v193;
            if (v186[3] >= v196)
            {
              if ((v191 & 1) == 0)
              {
                v202 = v192;
                sub_1D6D7F3D0();
                v192 = v202;
              }
            }

            else
            {
              sub_1D6D68514(v196, v191);
              v192 = sub_1D5B69D90(v189, v190);
              if ((v197 & 1) != (v198 & 1))
              {
                goto LABEL_150;
              }
            }

            v176 = v249;
            v186 = v255;
            if (v197)
            {
              sub_1D7040730(v252, *(v255 + 56) + *(v250 + 72) * v192);
              sub_1D5D28BC4(v251, type metadata accessor for FormatJson);
            }

            else
            {
              *(v255 + 8 * (v192 >> 6) + 64) |= 1 << v192;
              v199 = (v186[6] + 16 * v192);
              *v199 = v189;
              v199[1] = v190;
              sub_1D7040EA4(v252, v186[7] + *(v250 + 72) * v192, type metadata accessor for FormatJson);

              sub_1D5D28BC4(v251, type metadata accessor for FormatJson);
              v200 = v186[2];
              v108 = __OFADD__(v200, 1);
              v201 = v200 + 1;
              if (v108)
              {
                goto LABEL_145;
              }

              v186[2] = v201;
            }

            sub_1D5D28BC4(v10, type metadata accessor for FormatOption);
            v175 = v187;
            v182 = v248;
            v167 = v246;
            v184 = v247;
          }

          if (v183 == ++v185)
          {

            v177 = v245;
            goto LABEL_81;
          }
        }

        __break(1u);
LABEL_142:
        __break(1u);
      }

      else
      {
LABEL_59:
        while (1)
        {
          v179 = v178 + 1;
          if (__OFADD__(v178, 1))
          {
            break;
          }

          if (v179 >= v174)
          {

            v225 = v240;
            *v240 = v235;
            swift_storeEnumTagMultiPayload();
            sub_1D703EC38(v254, v177);
            return sub_1D5D28BC4(v225, type metadata accessor for FormatJson);
          }

          v173 = v170[v179];
          v178 = (v178 + 1);
          if (v173)
          {
            goto LABEL_62;
          }
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    result = sub_1D726493C();
    __break(1u);
    return result;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v86 = *v56;
    v85 = v56[1];
    v87 = HIBYTE(v85) & 0xF;
    if ((v85 & 0x2000000000000000) == 0)
    {
      v87 = v86 & 0xFFFFFFFFFFFFLL;
    }

    if (v87)
    {
      v88 = swift_allocObject();
      *(v88 + 16) = v86;
      *(v88 + 24) = v85;
      v64 = v245;
      *v245 = v88;
      goto LABEL_24;
    }

LABEL_132:
    v228 = *(v248 + 56);
    v229 = v245;
    return v228(v229, 1, 1, v24);
  }

  if (EnumCaseMultiPayload == 6)
  {
    v59 = v241;
    (*(v13 + 32))(v16, v56, v241);
    v60 = swift_allocObject();
    v61 = sub_1D72583DC();
    v63 = v62;
    (*(v13 + 8))(v16, v59);
    *(v60 + 16) = v61;
    *(v60 + 24) = v63;
    v64 = v245;
    *v245 = v60;
LABEL_24:
    v89 = v248;
    (*(v248 + 104))(v64, *MEMORY[0x1E69D6A50], v24);
    return (*(v89 + 56))(v64, 0, 1, v24);
  }

  v252 = *v56;
  v255 = v252;
  v133 = FormatColor.color.getter(v58);
  sub_1D5E42B34();
  v134 = swift_allocObject();
  v254 = xmmword_1D72816D0;
  *(v134 + 16) = xmmword_1D72816D0;
  v135 = objc_opt_self();
  v136 = [v135 currentTraitCollection];
  v253 = v24;
  v137 = v136;
  v138 = [v136 userInterfaceLevel];

  *(v134 + 32) = [v135 traitCollectionWithUserInterfaceLevel_];
  *(v134 + 40) = [v135 traitCollectionWithUserInterfaceStyle_];
  sub_1D5B5A498(0, &qword_1EDF1AA18, 0x1E69DD1B8);
  v139 = sub_1D726265C();

  v140 = [v135 traitCollectionWithTraitsFromCollections_];

  v251 = v133;
  v249 = [(objc_class *)v133 resolvedColorWithTraitCollection:v140];

  v141 = swift_allocObject();
  *(v141 + 16) = v254;
  v142 = [v135 currentTraitCollection];
  v143 = [v142 userInterfaceLevel];

  *(v141 + 32) = [v135 traitCollectionWithUserInterfaceLevel_];
  *(v141 + 40) = [v135 traitCollectionWithUserInterfaceStyle_];
  v144 = sub_1D726265C();

  v145 = [v135 traitCollectionWithTraitsFromCollections_];

  *&v254 = [(objc_class *)v133 resolvedColorWithTraitCollection:v145];
  v250 = swift_allocObject();
  sub_1D703EADC(0, &qword_1EDF01E28, sub_1D5FC6FC4, MEMORY[0x1E69E6F90]);
  sub_1D5FC6FC4(0);
  v147 = v146;
  v148 = *(*(v146 - 1) + 72);
  v149 = (*(*(v146 - 1) + 80) + 32) & ~*(*(v146 - 1) + 80);
  v150 = swift_allocObject();
  *(v150 + 16) = xmmword_1D7270C10;
  v151 = (v150 + v149);
  v152 = *(v147 + 12);
  v247 = v147;
  *v151 = 0x746867696CLL;
  v151[1] = 0xE500000000000000;
  v153 = swift_allocObject();
  *(v153 + 16) = sub_1D68C0160();
  *(v153 + 24) = v154;
  *(v151 + v152) = v153;
  v155 = *MEMORY[0x1E69D6A50];
  v156 = v248;
  v246 = *(v248 + 104);
  v157 = v253;
  (v246)(v150 + v149 + v152, v155, v253);
  v158 = (v150 + v149 + v148);
  v159 = *(v147 + 12);
  *v158 = 1802658148;
  v158[1] = 0xE400000000000000;
  v160 = swift_allocObject();
  *(v160 + 16) = sub_1D68C0160();
  *(v160 + 24) = v161;
  *(v158 + v159) = v160;
  v162 = v158 + v159;
  v163 = v246;
  (v246)(v162, v155, v157);
  v164 = sub_1D605B068(v150);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  v165 = v250;
  *(v250 + 16) = v164;
  v166 = v245;
  *v245 = v165;
  (v163)(v166, *MEMORY[0x1E69D6A48], v157);
  return (*(v156 + 56))(v166, 0, 1, v157);
}

uint64_t sub_1D7040730(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatJson(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7040794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D70407FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D703EADC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D704086C(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  sub_1D703EADC(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = (&v60 - v5);
  v75 = sub_1D725B76C();
  v7 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75, v8);
  v66 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v67 = &v60 - v12;
  sub_1D7040E38(0);
  v74 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v68 = (&v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v60 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v71 = &v60 - v22;
  v69 = MEMORY[0x1E69E7CC8];
  v77 = MEMORY[0x1E69E7CC8];
  v23 = a1 + 64;
  v24 = 1 << *(a1 + 32);
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & *(a1 + 64);
  v27 = (v24 + 63) >> 6;
  v70 = (v7 + 48);
  v64 = v7;
  v65 = (v7 + 32);
  v76 = a1;

  v29 = 0;
  v72 = v6;
  while (1)
  {
    v30 = v29;
    if (!v26)
    {
      break;
    }

    v31 = v19;
LABEL_11:
    v32 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v33 = v32 | (v29 << 6);
    v34 = *(v76 + 56);
    v35 = (*(v76 + 48) + 16 * v33);
    v37 = *v35;
    v36 = v35[1];
    v38 = v34 + *(*(type metadata accessor for FormatJson(0) - 8) + 72) * v33;
    v39 = v71;
    sub_1D7040794(v38, &v71[*(v74 + 48)], type metadata accessor for FormatJson);
    *v39 = v37;
    v39[1] = v36;
    v19 = v31;
    sub_1D7040EA4(v39, v31, sub_1D7040E38);

    v40 = v72;
    sub_1D703EC38(v73, v72);
    if ((*v70)(v40, 1, v75) == 1)
    {
      sub_1D5D28BC4(v31, sub_1D7040E38);
      result = sub_1D70407FC(v40, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
    }

    else
    {
      v41 = *v65;
      v63 = v41;
      v42 = v75;
      v41(v67, v40, v75);
      sub_1D7040EA4(v19, v68, sub_1D7040E38);
      v41(v66, v67, v42);
      v43 = v69[2];
      if (v69[3] <= v43)
      {
        sub_1D6D68568(v43 + 1, 1);
      }

      v44 = v77;
      v45 = *v68;
      v46 = v68[1];
      sub_1D7264A0C();
      v62 = v45;
      v61 = v46;
      sub_1D72621EC();
      result = sub_1D7264A5C();
      v47 = v44 + 64;
      v69 = v44;
      v48 = -1 << *(v44 + 32);
      v49 = result & ~v48;
      v50 = v49 >> 6;
      if (((-1 << v49) & ~*(v44 + 64 + 8 * (v49 >> 6))) == 0)
      {
        v52 = 0;
        v53 = (63 - v48) >> 6;
        while (++v50 != v53 || (v52 & 1) == 0)
        {
          v54 = v50 == v53;
          if (v50 == v53)
          {
            v50 = 0;
          }

          v52 |= v54;
          v55 = *(v47 + 8 * v50);
          if (v55 != -1)
          {
            v51 = __clz(__rbit64(~v55)) + (v50 << 6);
            goto LABEL_25;
          }
        }

        goto LABEL_28;
      }

      v51 = __clz(__rbit64((-1 << v49) & ~*(v44 + 64 + 8 * (v49 >> 6)))) | v49 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      v56 = *(v74 + 48);
      *(v47 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      v57 = v69;
      v58 = (v69[6] + 16 * v51);
      v59 = v61;
      *v58 = v62;
      v58[1] = v59;
      v63(v57[7] + *(v64 + 72) * v51, v66, v75);
      ++v57[2];
      result = sub_1D5D28BC4(v68 + v56, type metadata accessor for FormatJson);
    }
  }

  while (1)
  {
    v29 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v29 >= v27)
    {

      return v69;
    }

    v26 = *(v23 + 8 * v29);
    ++v30;
    if (v26)
    {
      v31 = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_1D7040E38(uint64_t a1)
{
  if (!qword_1EDF05530)
  {
    type metadata accessor for FormatJson(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF05530);
    }
  }
}

uint64_t sub_1D7040EA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

Swift::Void __swiftcall ArticleThumbnailView.prepareForReuse(identifier:)(Swift::String_optional identifier)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_identifier) = identifier;

  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_staticContentView);
  sub_1D725FBBC();
  v4 = *(v2 + OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicContentView);
  v5 = [v4 subviews];
  sub_1D5E2B010();
  v6 = sub_1D726267C();

  if (v6 >> 62)
  {
    v7 = sub_1D7263BFC();
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v7; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1DA6FB460](i, v6);
    }

    else
    {
      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    [v9 removeFromSuperview];
  }

LABEL_10:

  [v4 setHidden_];
  [v3 setHidden_];
  v11 = *(v2 + OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicView);
  *(v2 + OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicView) = 0;

  v12 = OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_observingMotion;
  if (*(v2 + OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_observingMotion) == 1)
  {
    sub_1D725CF4C();
    sub_1D725CF3C();
    sub_1D7042204(&qword_1EC8830C8, &protocol conformance descriptor for ArticleThumbnailView);
    sub_1D725CF2C();

    *(v2 + v12) = 0;
  }
}

void ArticleThumbnailView.asStatic(identifier:block:)(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v4 = v3;
  v5 = (v3 + OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_identifier);
  v6 = *(v3 + OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_identifier + 8);
  if (v6)
  {
    v8 = *v5 == a1 && v6 == a2;
    if (v8 || (sub_1D72646CC() & 1) != 0)
    {
      v19 = a3;
      v9 = *(v4 + OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_staticContentView);
      sub_1D725FBBC();
      v10 = *(v4 + OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicContentView);
      v11 = [v10 subviews];
      sub_1D5E2B010();
      v12 = sub_1D726267C();

      if (v12 >> 62)
      {
        v13 = sub_1D7263BFC();
        if (v13)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13)
        {
LABEL_9:
          if (v13 < 1)
          {
            __break(1u);
            return;
          }

          for (i = 0; i != v13; ++i)
          {
            if ((v12 & 0xC000000000000001) != 0)
            {
              v15 = MEMORY[0x1DA6FB460](i, v12);
            }

            else
            {
              v15 = *(v12 + 8 * i + 32);
            }

            v16 = v15;
            [v15 removeFromSuperview];
          }
        }
      }

      [v10 setHidden_];
      [v9 setHidden_];
      v17 = *(v4 + OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicView);
      *(v4 + OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicView) = 0;

      v19(v9);
      v18 = OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_observingMotion;
      if (*(v4 + OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_observingMotion) == 1)
      {
        sub_1D725CF4C();
        sub_1D725CF3C();
        sub_1D7042204(&qword_1EC8830C8, &protocol conformance descriptor for ArticleThumbnailView);
        sub_1D725CF2C();

        *(v4 + v18) = 0;
      }
    }
  }
}

void ArticleThumbnailView.asDynamic<A>(identifier:dynamicView:block:)(uint64_t a1, uint64_t a2, id a3, uint64_t (*a4)(id))
{
  v6 = *(v4 + OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_identifier + 8);
  if (v6)
  {
    v7 = v4;
    v9 = *(v4 + OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_identifier) == a1 && v6 == a2;
    if (v9 || (sub_1D72646CC() & 1) != 0)
    {
      v10 = [a3 superview];
      v11 = *(v4 + OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicContentView);
      if (v10)
      {
        v12 = v10;
        sub_1D5E2B010();
        v13 = v11;
        v14 = sub_1D726370C();

        if (v14)
        {
LABEL_20:
          a4(a3);

          sub_1D7041968();
          return;
        }
      }

      v15 = [v11 subviews];
      sub_1D5E2B010();
      v16 = sub_1D726267C();

      if (v16 >> 62)
      {
        v17 = sub_1D7263BFC();
        if (v17)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
LABEL_11:
          if (v17 < 1)
          {
            __break(1u);
            return;
          }

          for (i = 0; i != v17; ++i)
          {
            if ((v16 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x1DA6FB460](i, v16);
            }

            else
            {
              v19 = *(v16 + 8 * i + 32);
            }

            v20 = v19;
            [v19 removeFromSuperview];
          }
        }
      }

      [v11 addSubview_];
      [v11 setHidden_];
      [*(v7 + OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_staticContentView) setHidden_];
      v21 = *(v7 + OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicView);
      *(v7 + OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicView) = a3;

      v22 = a3;
      goto LABEL_20;
    }
  }
}

id ArticleThumbnailView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *ArticleThumbnailView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_staticContentView;
  *&v4[v10] = [objc_allocWithZone(sub_1D725FBCC()) initWithFrame_];
  v11 = OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicContentView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicView] = 0;
  v4[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_observingMotion] = 0;
  v12 = &v4[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_identifier];
  *v12 = 0;
  v12[1] = 0;
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  [v13 setAccessibilityIgnoresInvertColors_];
  v14 = OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicContentView;
  [v13 addSubview_];
  [v13 addSubview_];
  [*&v13[v14] setHidden_];

  return v13;
}

id ArticleThumbnailView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall ArticleThumbnailView.layoutSubviews()()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_staticContentView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicContentView];
  [v0 bounds];
  [v2 setFrame_];
}

Swift::Void __swiftcall ArticleThumbnailView.didMoveToSuperview()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_didMoveToSuperview);
  if (([*&v0[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicContentView] isHidden] & 1) == 0)
  {
    sub_1D7041968();
  }
}

void sub_1D7041968()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_observingMotion;
  if ((*(v0 + OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_observingMotion) & 1) == 0)
  {
    sub_1D725CF4C();
    sub_1D725CF3C();
    sub_1D7042204(&qword_1EC8830C8, &protocol conformance descriptor for ArticleThumbnailView);
    sub_1D725CF1C();

    *(v0 + v1) = 1;
    if (qword_1EDF187E8 != -1)
    {
      swift_once();
    }

    sub_1D7042204(qword_1EDF0F470, &protocol conformance descriptor for ArticleThumbnailView);
    sub_1D725964C();
    if ((v2 & 1) == 0 && *(v0 + v1) == 1)
    {
      sub_1D725CF3C();
      sub_1D725CF2C();

      *(v0 + v1) = 0;
    }
  }
}

Swift::Void __swiftcall ArticleThumbnailView.removeFromSuperview()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_removeFromSuperview);
  if (([*&v0[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicContentView] isHidden] & 1) == 0)
  {
    v1 = OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_observingMotion;
    if (v0[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_observingMotion] == 1)
    {
      sub_1D725CF4C();
      sub_1D725CF3C();
      sub_1D7042204(&qword_1EC8830C8, &protocol conformance descriptor for ArticleThumbnailView);
      sub_1D725CF2C();

      v0[v1] = 0;
    }
  }
}

id ArticleThumbnailView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D7041D14()
{
  sub_1D7042204(&qword_1EC899868, &protocol conformance descriptor for ArticleThumbnailView);

  JUMPOUT(0x1DA6F6FC0);
}

void _s8NewsFeed20ArticleThumbnailViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_staticContentView;
  *(v0 + v1) = [objc_allocWithZone(sub_1D725FBCC()) initWithFrame_];
  v2 = OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicContentView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicView) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_observingMotion) = 0;
  v3 = (v0 + OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_identifier);
  *v3 = 0;
  v3[1] = 0;
  sub_1D726402C();
  __break(1u);
}

void sub_1D7041E5C(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicContentView);
  if ([v2 isHidden])
  {
    return;
  }

  v3 = [v2 subviews];
  sub_1D5E2B010();
  v4 = sub_1D726267C();

  if (v4 >> 62)
  {
    v5 = sub_1D7263BFC();
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_4:
      if (v5 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v5; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1DA6FB460](i, v4);
        }

        else
        {
          v7 = *(v4 + 8 * i + 32);
        }

        v8 = v7;
        sub_1D725DE7C();
        if (swift_dynamicCastClass())
        {
          sub_1D725DE4C();
        }
      }
    }
  }
}

void sub_1D7041FB8(uint64_t a1)
{
  [v1 bounds];
  if (CGRectGetWidth(v11) > 240.0)
  {
    v2 = *&v1[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicContentView];
    if ([v2 isHidden])
    {
      return;
    }

    v4 = [v2 subviews];
    sub_1D5E2B010();
    v5 = sub_1D726267C();

    if (v5 >> 62)
    {
      v6 = sub_1D7263BFC();
      if (v6)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_11:
        if (v6 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v6; ++i)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x1DA6FB460](i, v5);
          }

          else
          {
            v8 = *(v5 + 8 * i + 32);
          }

          v9 = v8;
          sub_1D725DE7C();
          if (swift_dynamicCastClass())
          {
            sub_1D725DE6C();
          }
        }
      }
    }

    return;
  }

  v3 = OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_observingMotion;
  if (v1[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_observingMotion] == 1)
  {
    sub_1D725CF4C();
    sub_1D725CF3C();
    sub_1D7042204(&qword_1EC8830C8, &protocol conformance descriptor for ArticleThumbnailView);
    sub_1D725CF2C();

    v1[v3] = 0;
  }

  sub_1D7041E5C(0);
}

uint64_t sub_1D7042204(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ArticleThumbnailView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t StubOfflineProvider.__allocating_init(offlineReason:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void FormatGroupNodeLayoutAttributes.flipRightToLeft(bounds:)(uint64_t a1@<X8>)
{
  v7 = *(v5 + 8);
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  v10 = *(v5 + 32);
  v11 = *(v5 + 40);
  v14 = *(v5 + 48);
  v12 = *(v5 + 56);
  v13 = *(v5 + 64);
  type metadata accessor for FormatLayoutAttributes();
  sub_1D7042D24(&qword_1EDF28608, type metadata accessor for FormatLayoutAttributes, &protocol conformance descriptor for FormatLayoutAttributes);
  sub_1D725A24C();
  *a1 = v15;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9;
  *(a1 + 24) = v8;
  *(a1 + 32) = v10;
  *(a1 + 40) = v11;
  *(a1 + 48) = v14;
  *(a1 + 56) = v12;
  *(a1 + 64) = v13;

  sub_1D5EB1500(v8);
}

uint64_t FormatGroupNodeLayoutAttributes.identifier.getter()
{
  v1 = *(*v0 + 48);

  return v1;
}

BOOL sub_1D7042538(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 56))
  {
    return 0;
  }

  v5 = *(a2 + 8);
  v6 = *(v2 + 8);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 48);
  if (*(v2 + 64))
  {

    v10 = sub_1D6008478();

    if (v10)
    {
      return 0;
    }
  }

  v12 = 0x8000000000000000;
  v13 = v7;
  sub_1D5EB1500(v7);
  v11 = static FormatVisibility.== infix(_:_:)(&v13, &v12);
  sub_1D5EB15C4(v13);
  result = 0;
  if ((v11 & v8 & 1) != 0 && !a1 && !v5 && !v6)
  {
    return v9 > 0xFD || (v9 & 0xC0) != 64;
  }

  return result;
}

double FormatGroupNodeLayoutAttributes.resizing.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 8);

  return result;
}

double FormatGroupNodeLayoutAttributes.visibility.getter@<D0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  return sub_1D5EB1500(v2);
}

void FormatGroupNodeLayoutAttributes.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t FormatGroupNodeLayoutAttributes.init(layoutAttributes:resizing:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:maskLayoutAttributes:style:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = *a2;
  v10 = *a4;
  v11 = *a6;
  v12 = *(a6 + 8);
  *a9 = result;
  *(a9 + 8) = v9;
  *(a9 + 16) = a3;
  *(a9 + 24) = v10;
  *(a9 + 32) = a5;
  *(a9 + 40) = v11;
  *(a9 + 48) = v12;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  return result;
}

uint64_t sub_1D70426D0()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000014;
    if (v1 != 6)
    {
      v5 = 0x656C797473;
    }

    v6 = 0xD000000000000011;
    if (v1 == 4)
    {
      v6 = 0xD000000000000018;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x676E697A69736572;
    v3 = 0x7865646E497ALL;
    if (v1 != 2)
    {
      v3 = 0x696C696269736976;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000010;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1D70427D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D70436DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D70427FC(uint64_t a1)
{
  v2 = sub_1D7042CD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7042838(uint64_t a1)
{
  v2 = sub_1D7042CD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatGroupNodeLayoutAttributes.encode(to:)(void *a1)
{
  sub_1D7043430(0, &qword_1EC899870, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v19 - v7;
  v10 = *v1;
  v9 = *(v1 + 8);
  v11 = *(v1 + 16);
  v24 = *(v1 + 24);
  v25 = v11;
  v20 = *(v1 + 32);
  v12 = *(v1 + 40);
  v29 = *(v1 + 48);
  v13 = *(v1 + 64);
  v22 = *(v1 + 56);
  v23 = v12;
  v21 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7042CD0();

  sub_1D7264B5C();
  v27 = v10;
  v30 = 0;
  type metadata accessor for FormatLayoutAttributes();
  sub_1D7042D24(&qword_1EDF28600, type metadata accessor for FormatLayoutAttributes, &protocol conformance descriptor for FormatLayoutAttributes);
  v14 = v26;
  sub_1D726443C();
  if (v14)
  {
  }

  else
  {
    v15 = v24;

    v27 = v9;
    v30 = 1;
    sub_1D5F8F3E0();

    sub_1D72643BC();

    LOBYTE(v27) = 2;
    sub_1D726442C();
    v27 = v15;
    v30 = 3;
    sub_1D5EB1500(v15);
    sub_1D5DF6A60();
    sub_1D726443C();
    sub_1D5EB15C4(v27);
    if ((v20 & 1) == 0)
    {
      LOBYTE(v27) = 4;
      v30 = 0;
      sub_1D7042D6C();
      sub_1D72647EC();
    }

    v17 = v21;
    v16 = v22;
    v27 = v23;
    v28 = v29;
    v30 = 5;
    sub_1D5F8F434();
    sub_1D72643BC();
    v27 = v16;
    v30 = 6;
    type metadata accessor for FormatGroupNodeMaskLayoutAttributes();
    sub_1D7042D24(&qword_1EC899888, type metadata accessor for FormatGroupNodeMaskLayoutAttributes, &protocol conformance descriptor for FormatGroupNodeMaskLayoutAttributes);
    sub_1D72643BC();
    v27 = v17;
    v30 = 7;
    type metadata accessor for FormatGroupNodeStyle();
    sub_1D7042D24(&qword_1EDF0F108, type metadata accessor for FormatGroupNodeStyle, &protocol conformance descriptor for FormatGroupNodeStyle);
    sub_1D72643BC();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D7042CD0()
{
  result = qword_1EC899878;
  if (!qword_1EC899878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899878);
  }

  return result;
}

uint64_t sub_1D7042D24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D7042D6C()
{
  result = qword_1EC899880;
  if (!qword_1EC899880)
  {
    sub_1D7043430(255, &qword_1EC899870, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899880);
  }

  return result;
}

void FormatGroupNodeLayoutAttributes.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7043430(0, &qword_1EC899890, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7042CD0();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    type metadata accessor for FormatLayoutAttributes();
    LOBYTE(v24) = 0;
    sub_1D7042D24(&qword_1EDF285F8, type metadata accessor for FormatLayoutAttributes, &protocol conformance descriptor for FormatLayoutAttributes);
    sub_1D726431C();
    v11 = v29;
    LOBYTE(v24) = 1;
    sub_1D5F8FC50();
    sub_1D726427C();
    v12 = v29;
    LOBYTE(v29) = 2;
    v44 = sub_1D72642FC();
    LOBYTE(v24) = 3;
    sub_1D5DF6A0C();
    sub_1D726431C();
    v23 = v29;
    LOBYTE(v29) = 4;
    if (sub_1D726434C())
    {
      LOBYTE(v24) = 4;
      sub_1D726431C();
      v13 = v41;
    }

    else
    {
      v13 = 1;
    }

    v22 = v13;
    LOBYTE(v24) = 5;
    sub_1D5C6F27C();
    sub_1D726427C();
    v21 = v29;
    v20 = v30;
    type metadata accessor for FormatGroupNodeMaskLayoutAttributes();
    LOBYTE(v24) = 6;
    sub_1D7042D24(&qword_1EC899898, type metadata accessor for FormatGroupNodeMaskLayoutAttributes, &protocol conformance descriptor for FormatGroupNodeMaskLayoutAttributes);
    sub_1D726427C();
    v19 = v29;
    type metadata accessor for FormatGroupNodeStyle();
    v40 = 7;
    sub_1D7042D24(&qword_1EDF2B240, type metadata accessor for FormatGroupNodeStyle, &protocol conformance descriptor for FormatGroupNodeStyle);
    sub_1D726427C();
    (*(v7 + 8))(v10, v6);
    v14 = v41;
    *&v24 = v11;
    v15 = v44;
    *(&v24 + 1) = v12;
    *&v25 = v44;
    v16 = v23;
    *(&v25 + 1) = v23;
    LOBYTE(v26) = v22;
    *(&v26 + 1) = v43[0];
    DWORD1(v26) = *(v43 + 3);
    *(&v26 + 1) = v21;
    LOBYTE(v27) = v20;
    *(&v27 + 1) = *v42;
    DWORD1(v27) = *&v42[3];
    *(&v27 + 1) = v19;
    v28 = v41;
    *(a2 + 64) = v41;
    v17 = v25;
    *a2 = v24;
    *(a2 + 16) = v17;
    v18 = v27;
    *(a2 + 32) = v26;
    *(a2 + 48) = v18;
    sub_1D6C5C0C4(&v24, &v29);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v29 = v11;
    v30 = v12;
    v31 = v15;
    v32 = v16;
    v33 = v22;
    *v34 = v43[0];
    *&v34[3] = *(v43 + 3);
    v35 = v21;
    v36 = v20;
    *v37 = *v42;
    *&v37[3] = *&v42[3];
    v38 = v19;
    v39 = v14;
    sub_1D6C5C120(&v29);
  }
}

void sub_1D7043430(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7042CD0();
    v7 = a3(a1, &type metadata for FormatGroupNodeLayoutAttributes.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7043498()
{
  result = qword_1EC8998A0;
  if (!qword_1EC8998A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8998A0);
  }

  return result;
}

uint64_t sub_1D70434EC()
{
  v1 = *(*v0 + 48);

  return v1;
}

unint64_t sub_1D704352C()
{
  result = qword_1EC8998A8;
  if (!qword_1EC8998A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8998A8);
  }

  return result;
}

unint64_t sub_1D70435D8()
{
  result = qword_1EC8998B0;
  if (!qword_1EC8998B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8998B0);
  }

  return result;
}

unint64_t sub_1D7043630()
{
  result = qword_1EC8998B8;
  if (!qword_1EC8998B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8998B8);
  }

  return result;
}

unint64_t sub_1D7043688()
{
  result = qword_1EC8998C0;
  if (!qword_1EC8998C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8998C0);
  }

  return result;
}

uint64_t sub_1D70436DC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D73C46E0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E697A69736572 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7865646E497ALL && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696C696269736976 && a2 == 0xEA00000000007974 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D73C48A0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C0340 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73E73C0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    return 7;
  }

  else
  {
    v5 = sub_1D72646CC();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t FormatSponsoredBannerSizing.filled.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_1D5C82CD8(v2);
}

unint64_t FormatSponsoredBannerSizing.unfilled.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  return sub_1D62B48BC(v2);
}

uint64_t sub_1D70439C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v33 = a2;
  v34 = a3;
  v32 = a4;
  v7 = sub_1D72608BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FeedSponsorshipBannerAd(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v4;
  v16 = v4[1];
  result = sub_1D67524A0(*(a1 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), v15);
  if (!v5)
  {
    v19 = a1;
    v20 = v32;
    v31 = 0;
    (*(v8 + 16))(v11, &v15[*(v12 + 20)], v7);
    v21 = (*(v8 + 88))(v11, v7);
    if (v21 == *MEMORY[0x1E69B40B0])
    {
      v35 = v17;
      sub_1D5C82CD8(v17);
      v22 = v31;
      sub_1D5BEB9F4(v19, v33, v34, v20);
      v31 = v22;
      sub_1D5C92A8C(v35);
      sub_1D7043FC8(v15);
    }

    else
    {
      if (v21 != *MEMORY[0x1E69B40A8])
      {
        result = sub_1D72646BC();
        __break(1u);
        return result;
      }

      v24 = v33;
      v23 = v34;
      if ((~v16 & 0xF000000000000007) != 0)
      {
        v35 = v16;
        sub_1D5C82CD8(v16);
        v30 = v16;
        v28 = v31;
        sub_1D5BEB9F4(v19, v24, v23, v20);
        v31 = v28;
        sub_1D7043FC8(v15);
        sub_1D62B48D0(v30);
      }

      else
      {
        sub_1D7043FC8(v15);
        v25 = swift_allocObject();
        *(v25 + 16) = 0x3FF0000000000000;
        *v20 = v25;
        v26 = *MEMORY[0x1E69D7488];
        sub_1D5EB51BC(0);
        (*(*(v27 - 8) + 104))(v20, v26, v27);
      }
    }

    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

BOOL _s8NewsFeed27FormatSponsoredBannerSizingV2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[1];
  v8 = *a2;
  v9 = v2;
  sub_1D5C82CD8(v2);
  sub_1D5C82CD8(v8);
  v5 = static FormatSize.== infix(_:_:)(&v9, &v8);
  sub_1D5C92A8C(v8);
  sub_1D5C92A8C(v9);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  if ((~v3 & 0xF000000000000007) == 0)
  {
    sub_1D62B48BC(v3);
    sub_1D62B48BC(v4);
    if ((~v4 & 0xF000000000000007) == 0)
    {
      sub_1D62B48D0(v3);
      return 1;
    }

    goto LABEL_7;
  }

  v9 = v3;
  if ((~v4 & 0xF000000000000007) == 0)
  {
    sub_1D62B48BC(v3);
    sub_1D62B48BC(v4);
    sub_1D62B48BC(v3);
    sub_1D5C92A8C(v3);
LABEL_7:
    sub_1D62B48D0(v3);
    sub_1D62B48D0(v4);
    return 0;
  }

  v8 = v4;
  sub_1D62B48BC(v3);
  sub_1D62B48BC(v4);
  sub_1D62B48BC(v3);
  v7 = static FormatSize.== infix(_:_:)(&v9, &v8);
  sub_1D5C92A8C(v8);
  sub_1D5C92A8C(v9);
  sub_1D62B48D0(v3);
  return (v7 & 1) != 0;
}

unint64_t sub_1D7043DD4(uint64_t a1)
{
  result = sub_1D7043DFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D7043DFC()
{
  result = qword_1EC8998C8;
  if (!qword_1EC8998C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8998C8);
  }

  return result;
}

unint64_t sub_1D7043E50(void *a1)
{
  a1[1] = sub_1D66B6A54();
  a1[2] = sub_1D66F8D5C();
  result = sub_1D7043E88();
  a1[3] = result;
  return result;
}

unint64_t sub_1D7043E88()
{
  result = qword_1EC8998D0;
  if (!qword_1EC8998D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8998D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed10FormatSizeOSg(void *a1)
{
  v1 = (((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x69)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D7043F0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x6A && *(a1 + 16))
  {
    return (*a1 + 106);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
  if (v3 >= 0x69)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D7043F68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x69)
  {
    *result = a2 - 106;
    *(result + 8) = 0;
    if (a3 >= 0x6A)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x6A)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D7043FC8(uint64_t a1)
{
  v2 = type metadata accessor for FeedSponsorshipBannerAd(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FeedGroupDebugFormat.__allocating_init(content:subgroup:)(uint64_t a1, _OWORD *a2)
{
  v4 = swift_allocObject();
  v5 = a2[3];
  *(v4 + 48) = a2[2];
  *(v4 + 64) = v5;
  *(v4 + 80) = a2[4];
  v6 = a2[1];
  *(v4 + 16) = *a2;
  *(v4 + 32) = v6;
  *(v4 + 96) = *(a1 + *(type metadata accessor for FormatContent.Resolved(0) + 32));
  sub_1D5D1E8C4(a1, v4 + OBJC_IVAR____TtC8NewsFeed20FeedGroupDebugFormat_content);

  return v4;
}

uint64_t FeedGroupDebugFormat.subgroup.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v9 = v1[3];
  v10 = v2;
  v11 = v1[5];
  v3 = v11;
  v4 = v1[2];
  v8[0] = v1[1];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_1D5CB7180(v8, &v7);
}

uint64_t FeedGroupDebugFormat.init(content:subgroup:)(uint64_t a1, _OWORD *a2)
{
  v4 = a2[3];
  *(v2 + 48) = a2[2];
  *(v2 + 64) = v4;
  *(v2 + 80) = a2[4];
  v5 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v5;
  *(v2 + 96) = *(a1 + *(type metadata accessor for FormatContent.Resolved(0) + 32));
  sub_1D5D1E8C4(a1, v2 + OBJC_IVAR____TtC8NewsFeed20FeedGroupDebugFormat_content);

  return v2;
}

uint64_t FeedGroupDebugFormat.deinit()
{

  sub_1D5D600E0(v0 + OBJC_IVAR____TtC8NewsFeed20FeedGroupDebugFormat_content);
  return v0;
}

uint64_t FeedGroupDebugFormat.__deallocating_deinit()
{

  sub_1D5D600E0(v0 + OBJC_IVAR____TtC8NewsFeed20FeedGroupDebugFormat_content);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FeedGroupDebugFormat(uint64_t a1)
{
  result = qword_1EDF37C28;
  if (!qword_1EDF37C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D704435C(uint64_t a1)
{
  result = type metadata accessor for FormatContent.Resolved(319);
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

uint64_t FeedGroupKnobsRepool.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v15 = a2;
  type metadata accessor for FeedGroupKnobsRepool.CodingKeys(255, a3, a4, a5);
  swift_getWitnessTable();
  v7 = sub_1D726435C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B0C();
  if (!v5)
  {
    v12 = v15;
    sub_1D7044628(0);
    sub_1D7044B2C(&qword_1EDF13E78, &protocol conformance descriptor for FeedGroupKnobsRuleValue<A>);
    sub_1D726427C();
    (*(v8 + 8))(v11, v7);
    *v12 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D7044628(uint64_t a1)
{
  if (!qword_1EDF13E70)
  {
    v4[0] = &type metadata for FeedGroupFreezing;
    v4[1] = sub_1D5B9E6D0();
    v4[2] = sub_1D6C4A710();
    v4[3] = sub_1D70446AC();
    v2 = type metadata accessor for FeedGroupKnobsRuleValue(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF13E70);
    }
  }
}

unint64_t sub_1D70446AC()
{
  result = qword_1EDF14EC8;
  if (!qword_1EDF14EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF14EC8);
  }

  return result;
}

void FeedGroupKnobsRepool.repooling(cursor:)(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (*v2)
  {
    sub_1D5E36474(a1 + *(*a1 + 176), &v5);
    v4 = v5;
  }

  else
  {
    v4 = 2;
  }

  *a2 = v4;
}

void FeedGroupKnobsRepool.repooling(context:)(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (*v2)
  {
    sub_1D5E36474(a1, &v5);
    v4 = v5;
  }

  else
  {
    v4 = 2;
  }

  *a2 = v4;
}

uint64_t static FeedGroupKnobsRepool.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      if (*(*a1 + 16) == *(v2 + 16))
      {

        v3 = sub_1D6709344();

        if (v3)
        {
          return 1;
        }
      }
    }
  }

  else if (!v2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D7044828(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x676E697A65657266 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D72646CC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D70448A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7044828(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D70448D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D7044928(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FeedGroupKnobsRepool.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FeedGroupKnobsRepool.CodingKeys(255, *(a2 + 16), *(a2 + 24), a4);
  swift_getWitnessTable();
  v6 = sub_1D726446C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v17 - v9;
  v11 = *v4;
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);

  sub_1D7264B5C();
  v17[3] = v11;
  sub_1D7044628(0);
  sub_1D7044B2C(&unk_1EDF13E80, &protocol conformance descriptor for FeedGroupKnobsRuleValue<A>);
  sub_1D72643BC();

  return (*(v7 + 8))(v10, v15);
}

uint64_t sub_1D7044B2C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D7044628(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D7044C04()
{
  sub_1D5BBE0A8();
  sub_1D5BB0AB8();
  return sub_1D7261F3C();
}

uint64_t sub_1D7044CB4@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v77 = a1;
  v76 = a2;
  v3 = sub_1D725891C();
  v74 = *(v3 - 8);
  v75 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D72585BC();
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60077D8(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v72 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v72 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v72 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v72 - v29;
  v31 = *(v2 + 8);
  v32 = *(v2 + 48);
  v33 = v32 >> 13;
  if (v32 >> 13 <= 1)
  {
    v39 = *v2;
    if (v33)
    {
      v51 = type metadata accessor for FormatVersionRequirement(0);
      (*(*(v51 - 8) + 56))(v26, 1, 1, v51);
      v52 = v78;
      sub_1D6D2EA3C(v77, v39);
      if (v52)
      {
        v30 = v26;
        return sub_1D7045E64(v30);
      }

      v68 = v53;
      v69 = swift_allocObject();
      *(v69 + 16) = v68;
      *(v69 + 24) = MEMORY[0x1E69E7CC0];
      v44 = v69 | 0x3000000000000000;
      v30 = v26;
    }

    else
    {
      v40 = type metadata accessor for FormatVersionRequirement(0);
      (*(*(v40 - 8) + 56))(v30, 1, 1, v40);
      v41 = v78;
      v42 = sub_1D7248E48(v77, v39, v31);
      if (v41)
      {
        return sub_1D7045E64(v30);
      }

      v43 = v42;
      v44 = swift_allocObject();
      *(v44 + 16) = v43 & 1;
      *(v44 + 24) = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v35 = *(v2 + 16);
    v34 = *(v2 + 24);
    if (v33 == 2)
    {
      v79 = *v2;
      v80 = v31;
      v81 = v35;
      v82 = v34;
      v83 = *(v2 + 32);
      v84 = v32 & 0x1FFF;
      v45 = type metadata accessor for FormatVersionRequirement(0);
      (*(*(v45 - 8) + 56))(v22, 1, 1, v45);
      v46 = v78;
      v47 = sub_1D68901F8(v77, 0);
      if (v46)
      {
        v30 = v22;
        return sub_1D7045E64(v30);
      }

      v55 = v47;
      v56 = v48;
      v57 = swift_allocObject();
      *(v57 + 16) = v55;
      *(v57 + 24) = v56;
      *(v57 + 32) = MEMORY[0x1E69E7CC0];
      v44 = v57 | 0x5000000000000000;
      v30 = v22;
    }

    else
    {
      v36 = *v2;
      if (v33 == 3)
      {
        v37 = type metadata accessor for FormatVersionRequirement(0);
        (*(*(v37 - 8) + 56))(v18, 1, 1, v37);
        v38 = v78;
        sub_1D6D4E524(v77, v36, v31, v35, v34, v10);
        if (v38)
        {
          v30 = v18;
          return sub_1D7045E64(v30);
        }

        sub_1D5C4E168(0);
        v59 = v58;
        v60 = swift_allocBox();
        v62 = v61;
        (*(v72 + 32))(v61, v10, v73);
        *(v62 + *(v59 + 36)) = MEMORY[0x1E69E7CC0];
        v44 = v60 | 0x6000000000000000;
        v30 = v18;
      }

      else
      {
        v49 = type metadata accessor for FormatVersionRequirement(0);
        (*(*(v49 - 8) + 56))(v14, 1, 1, v49);
        v50 = v78;
        sub_1D6F44504(v77, v36, v31, v35, v34, v6);
        if (v50)
        {
          v30 = v14;
          return sub_1D7045E64(v30);
        }

        sub_1D5C8E028(0);
        v64 = v63;
        v65 = swift_allocBox();
        v67 = v66;
        (*(v74 + 32))(v66, v6, v75);
        *(v67 + *(v64 + 36)) = MEMORY[0x1E69E7CC0];
        v44 = v65 | 0x2000000000000000;
        v30 = v14;
      }
    }
  }

  v70 = v76;
  *v76 = v44;
  v70[1] = 0;
  v71 = type metadata accessor for FormatOptionsNodeStatementResult(0);
  sub_1D5EA3AFC(v30, v70 + *(v71 + 24));
  return (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
}

uint64_t _s8NewsFeed33FormatOptionsNodeStatementBindingO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v64 = v4;
  v65 = *(a1 + 32);
  v7 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  v12 = a2[5];
  v13 = *(a2 + 24);
  v66 = *(a1 + 48);
  v14 = v66 >> 13;
  if (v66 >> 13 > 1)
  {
    if (v14 != 2)
    {
      if (v14 == 3)
      {
        if ((v13 & 0xE000) == 0x6000)
        {
          v73 = *a1;
          v74 = v3;
          v75 = v4;
          v61 = v5;
          LOBYTE(v76) = v5;
          *&v67 = v7;
          *(&v67 + 1) = v8;
          v68 = v10;
          LOBYTE(v69) = v9;
          v48 = v10;
          v50 = v3;
          v51 = v11;
          v53 = v8;
          v15 = v2;
          v46 = v9;
          v60 = v7;
          v16 = v8;
          v17 = v9;
          v54 = v12;
          v58 = v13;
          sub_1D7045E00(v7, v16, v10, v9, v11, v12, v13, sub_1D5E1DAEC, sub_1D5D27950);
          sub_1D7045E00(v15, v3, v4, v5, v65, v6, v66, sub_1D5E1DAEC, sub_1D5D27950);
          v18 = v51;
          sub_1D7045E00(v7, v53, v10, v17, v51, v12, v58, sub_1D5E1DAEC, sub_1D5D27950);
          v19 = v15;
          v20 = v15;
          v21 = v3;
          v22 = v4;
          v23 = v61;
          v24 = v65;
          v25 = v66;
          sub_1D7045E00(v20, v21, v22, v61, v65, v6, v66, sub_1D5E1DAEC, sub_1D5D27950);
          v26 = _s8NewsFeed16FormatURLBindingO2eeoiySbAC_ACtFZ_0(&v73, &v67);
LABEL_13:
          v31 = v26;
          sub_1D7045E00(v19, v21, v22, v23, v24, v6, v25, sub_1D5E1DF18, sub_1D5D28C84);
          sub_1D7045E00(v60, v53, v48, v46, v18, v54, v58, sub_1D5E1DF18, sub_1D5D28C84);
          sub_1D7045E00(v60, v53, v48, v46, v51, v54, v58, sub_1D5E1DF18, sub_1D5D28C84);
          sub_1D7045E00(v19, v50, v64, v61, v65, v6, v66, sub_1D5E1DF18, sub_1D5D28C84);
          return v31 & 1;
        }
      }

      else if ((v13 & 0xE000) == 0x8000)
      {
        v73 = *a1;
        v74 = v3;
        v75 = v4;
        v61 = v5;
        LOBYTE(v76) = v5;
        *&v67 = v7;
        *(&v67 + 1) = v8;
        v68 = v10;
        LOBYTE(v69) = v9;
        v48 = v10;
        v50 = v3;
        v51 = v11;
        v53 = v8;
        v38 = v2;
        v46 = v9;
        v60 = v7;
        v39 = v8;
        v40 = v9;
        v54 = v12;
        v58 = v13;
        sub_1D7045E00(v7, v39, v10, v9, v11, v12, v13, sub_1D5E1DAEC, sub_1D5D27950);
        sub_1D7045E00(v38, v3, v4, v5, v65, v6, v66, sub_1D5E1DAEC, sub_1D5D27950);
        v18 = v51;
        sub_1D7045E00(v7, v53, v10, v40, v51, v12, v58, sub_1D5E1DAEC, sub_1D5D27950);
        v19 = v38;
        v41 = v38;
        v21 = v3;
        v22 = v4;
        v23 = v61;
        v24 = v65;
        v25 = v66;
        sub_1D7045E00(v41, v21, v22, v61, v65, v6, v66, sub_1D5E1DAEC, sub_1D5D27950);
        v26 = _s8NewsFeed21FormatDateTimeBindingO2eeoiySbAC_ACtFZ_0(&v73, &v67);
        goto LABEL_13;
      }

      v27 = a2[4];
      v63 = *(a1 + 40);
      v28 = *(a1 + 8);
      v29 = *(a2 + 24);
      v30 = *a1;
      sub_1D5D27950(v2, v28, *(a1 + 16), v5);
      goto LABEL_23;
    }

    v63 = *(a1 + 40);
    if ((v13 & 0xE000) == 0x4000)
    {
      v73 = *a1;
      v74 = v3;
      v75 = v4;
      v76 = v5;
      v62 = v5;
      v77 = v65;
      v78 = v6;
      v79 = v66 & 0x1FFF;
      *&v67 = v7;
      *(&v67 + 1) = v8;
      v68 = v10;
      v69 = v9;
      v70 = v11;
      v71 = v12;
      v72 = v13 & 0x1FFF;
      v32 = v3;
      v33 = v8;
      v34 = v9;
      v47 = v9;
      v49 = v10;
      v35 = v2;
      v52 = v11;
      v36 = v10;
      v55 = v12;
      v56 = v2;
      v37 = v11;
      v59 = v13;
      sub_1D7045E00(v7, v33, v36, v47, v11, v12, v13, sub_1D5E1DAEC, sub_1D5D27950);
      sub_1D7045E00(v35, v32, v4, v62, v65, v6, v66, sub_1D5E1DAEC, sub_1D5D27950);
      sub_1D7045E00(v7, v33, v49, v34, v37, v12, v59, sub_1D5E1DAEC, sub_1D5D27950);
      sub_1D7045E00(v56, v32, v4, v62, v65, v6, v66, sub_1D5E1DAEC, sub_1D5D27950);
      v31 = _s8NewsFeed21FormatTextNodeBindingO2eeoiySbAC_ACtFZ_0(&v73, &v67);
      sub_1D7045E00(v56, v32, v4, v62, v65, v6, v66, sub_1D5E1DF18, sub_1D5D28C84);
      sub_1D7045E00(v7, v33, v49, v47, v52, v55, v59, sub_1D5E1DF18, sub_1D5D28C84);
      sub_1D7045E00(v7, v33, v49, v47, v52, v55, v59, sub_1D5E1DF18, sub_1D5D28C84);
      sub_1D7045E00(v56, v32, v4, v62, v65, v6, v66, sub_1D5E1DF18, sub_1D5D28C84);
      return v31 & 1;
    }

    v27 = a2[4];
    v73 = *a1;
    v74 = v3;
    v75 = v4;
    v76 = v5;
    v77 = v65;
    v78 = v6;
    v79 = v66 & 0x1FFF;
    v28 = v3;
    v29 = v13;
    v30 = v2;
    sub_1D5FD78CC(&v73, &v67);
LABEL_23:
    sub_1D7045E00(v7, v8, v10, v9, v27, v12, v29, sub_1D5E1DAEC, sub_1D5D27950);
    sub_1D7045E00(v30, v28, v64, v5, v65, v63, v66, sub_1D5E1DF18, sub_1D5D28C84);
    sub_1D7045E00(v7, v8, v10, v9, v27, v12, v29, sub_1D5E1DF18, sub_1D5D28C84);
LABEL_24:
    v31 = 0;
    return v31 & 1;
  }

  v27 = a2[4];
  v63 = *(a1 + 40);
  if (v14)
  {
    v28 = *(a1 + 8);
    v29 = *(a2 + 24);
    v30 = *a1;
    if ((v13 & 0xE000) == 0x2000)
    {
      v42 = v2;
      v57 = *a1;
      sub_1D7045E00(v2, v28, v64, v5, v65, v63, *(a1 + 48), sub_1D5E1DF18, sub_1D5D28C84);
      sub_1D7045E00(v7, v8, v10, v9, v27, v12, v29, sub_1D5E1DF18, sub_1D5D28C84);
      v43 = (v42 >> 5) & 3;
      v44 = v7 & 0x60;
      if (v43)
      {
        if (v43 == 1)
        {
          if (v44 != 32 || ((v7 ^ v57) & 0x9FLL) != 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v44 != 64)
          {
            goto LABEL_24;
          }

          if ((v42 & 0x80000000) != 0)
          {
            if ((v7 & 0x80) == 0 || ((v7 ^ v57) & 0x1F) != 0)
            {
              goto LABEL_24;
            }
          }

          else if ((v7 & 0x80) != 0 || ((v7 ^ v57) & 0x1F) != 0)
          {
            goto LABEL_24;
          }
        }
      }

      else if ((v7 & 0x60) != 0 || v7 != v57)
      {
        goto LABEL_24;
      }

      v31 = 1;
      return v31 & 1;
    }

    goto LABEL_23;
  }

  v28 = *(a1 + 8);
  v29 = *(a2 + 24);
  v30 = *a1;
  if (v13 >= 0x2000)
  {
    goto LABEL_23;
  }

  sub_1D7045E00(v2, v28, v64, v5, v65, v63, *(a1 + 48), sub_1D5E1DF18, sub_1D5D28C84);
  sub_1D7045E00(v7, v8, v10, v9, v27, v12, v29, sub_1D5E1DF18, sub_1D5D28C84);
  v73 = v30;
  LOWORD(v74) = v28;
  *&v67 = v7;
  WORD4(v67) = v8;
  v31 = _s8NewsFeed17FormatBoolBindingO2eeoiySbAC_ACtFZ_0(&v73, &v67);
  return v31 & 1;
}

unint64_t sub_1D7045C04(uint64_t a1)
{
  result = sub_1D7045C2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D7045C2C()
{
  result = qword_1EC8998D8;
  if (!qword_1EC8998D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8998D8);
  }

  return result;
}

unint64_t sub_1D7045C80(void *a1)
{
  a1[1] = sub_1D6D1C018();
  a1[2] = sub_1D66F44D4();
  result = sub_1D7045CB8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D7045CB8()
{
  result = qword_1EC8998E0;
  if (!qword_1EC8998E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8998E0);
  }

  return result;
}

uint64_t sub_1D7045D0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1C && *(a1 + 50))
  {
    return (*a1 + 28);
  }

  v3 = (HIBYTE(*(a1 + 48)) & 0x18 | (*(a1 + 48) >> 13)) ^ 0x1F;
  if (v3 >= 0x1B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D7045D60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1B)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 28;
    if (a3 >= 0x1C)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1C)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = (((-a2 >> 3) & 3) - 4 * a2) << 11;
    }
  }

  return result;
}

uint64_t sub_1D7045E00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void), uint64_t (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a7 >> 13;
  if (v9 == 4 || v9 == 3)
  {
    return a9(result, a2, a3, a4, a5, a6);
  }

  if (v9 == 2)
  {

    return a8(result, a2, a3, a4, a5, a6, a7, (a7 >> 8) & 0x1F);
  }

  return result;
}

uint64_t sub_1D7045E64(uint64_t a1)
{
  sub_1D60077D8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

NewsFeed::FormatIssueCoverTraits_optional __swiftcall FormatIssueCoverTraits.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D7045F24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4D6465726579616CLL;
  }

  else
  {
    v3 = 0x616C506F65646976;
  }

  if (v2)
  {
    v4 = 0xED00006B63616279;
  }

  else
  {
    v4 = 0xEC00000061696465;
  }

  if (*a2)
  {
    v5 = 0x4D6465726579616CLL;
  }

  else
  {
    v5 = 0x616C506F65646976;
  }

  if (*a2)
  {
    v6 = 0xEC00000061696465;
  }

  else
  {
    v6 = 0xED00006B63616279;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D7045FE0()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D7046078(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D70460FC(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D7046190(uint64_t *a1@<X8>)
{
  v2 = 0x616C506F65646976;
  if (*v1)
  {
    v2 = 0x4D6465726579616CLL;
  }

  v3 = 0xED00006B63616279;
  if (*v1)
  {
    v3 = 0xEC00000061696465;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FormatIssueCoverTraits.description.getter()
{
  if (*v0)
  {
    return 0x4D6465726579616CLL;
  }

  else
  {
    return 0x616C506F65646976;
  }
}

unint64_t sub_1D70462B0()
{
  result = qword_1EC8998E8;
  if (!qword_1EC8998E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8998E8);
  }

  return result;
}

unint64_t sub_1D7046304(uint64_t a1)
{
  *(a1 + 8) = sub_1D7046334();
  result = sub_1D7046388();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D7046334()
{
  result = qword_1EC8998F0;
  if (!qword_1EC8998F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8998F0);
  }

  return result;
}

unint64_t sub_1D7046388()
{
  result = qword_1EDF0DB08;
  if (!qword_1EDF0DB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DB08);
  }

  return result;
}

unint64_t sub_1D70463DC(uint64_t a1)
{
  result = sub_1D7046404();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D7046404()
{
  result = qword_1EC8998F8;
  if (!qword_1EC8998F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8998F8);
  }

  return result;
}

unint64_t sub_1D7046458(void *a1)
{
  a1[1] = sub_1D6669FF8();
  a1[2] = sub_1D6669C58();
  result = sub_1D70462B0();
  a1[3] = result;
  return result;
}

uint64_t sub_1D7046490()
{
  if (*v0)
  {
    return 0x4D6465726579616CLL;
  }

  else
  {
    return 0x616C506F65646976;
  }
}

void sub_1D7046504(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D7046BD8(0, &qword_1EDF03830, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7046B4C();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v32[0]) = 0;
    v11 = sub_1D72642BC();
    v28 = v12;
    LOBYTE(v32[0]) = 1;
    v13 = sub_1D72642BC();
    v27 = v14;
    v25 = v13;
    LOBYTE(v32[0]) = 2;
    v24 = sub_1D726422C();
    v26 = v15;
    sub_1D5F0E598();
    v34[0] = 3;
    sub_1D5F0E708(&qword_1EDF04A98, sub_1D5F0E5E8, MEMORY[0x1E69E6330]);
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    v23 = v35;
    v17 = v27;
    v16 = v28;
    *&v29 = v11;
    *(&v29 + 1) = v28;
    v18 = v24;
    v19 = v25;
    *&v30 = v25;
    *(&v30 + 1) = v27;
    v20 = v26;
    *v31 = v24;
    *&v31[8] = v26;
    *&v31[16] = v35;
    v31[24] = 4;
    v21 = v30;
    *a2 = v29;
    a2[1] = v21;
    a2[2] = *v31;
    *(a2 + 41) = *&v31[9];
    sub_1D7046BA0(&v29, v32);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v32[0] = v11;
    v32[1] = v16;
    v32[2] = v19;
    v32[3] = v17;
    v32[4] = v18;
    v32[5] = v20;
    v32[6] = v23;
    v33 = 4;
    sub_1D6794A44(v32);
  }
}

uint64_t sub_1D7046870(void *a1)
{
  sub_1D7046BD8(0, &qword_1EC899900, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v14 - v7;
  v9 = v1[2];
  v18 = v1[3];
  v19 = v9;
  v10 = v1[4];
  v16 = v1[5];
  v17 = v10;
  v15 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7046B4C();
  sub_1D7264B5C();
  v25 = 0;
  v11 = v20;
  sub_1D72643FC();
  if (!v11)
  {
    v12 = v15;
    v24 = 1;
    sub_1D72643FC();
    v23 = 2;
    sub_1D726437C();
    v21 = v12;
    v22 = 3;
    sub_1D5F0E598();
    sub_1D5F0E708(&qword_1EC880E68, sub_1D5F0E774, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D7046AA4(uint64_t a1)
{
  v2 = sub_1D7046B4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7046AE0(uint64_t a1)
{
  v2 = sub_1D7046B4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D7046B4C()
{
  result = qword_1EDF06150;
  if (!qword_1EDF06150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06150);
  }

  return result;
}

void sub_1D7046BD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7046B4C();
    v7 = a3(a1, &type metadata for SportsDataVisualizationResponseBoxScoreItem.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7046C50()
{
  result = qword_1EC899908;
  if (!qword_1EC899908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899908);
  }

  return result;
}

unint64_t sub_1D7046CA8()
{
  result = qword_1EDF06140;
  if (!qword_1EDF06140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06140);
  }

  return result;
}

unint64_t sub_1D7046D00()
{
  result = qword_1EDF06148;
  if (!qword_1EDF06148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06148);
  }

  return result;
}

__n128 sub_1D7046D54@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  result = *a2;
  v4 = a2[1].n128_u64[0];
  v5 = a2[1].n128_u64[1];
  *a3 = a1;
  *(a3 + 8) = result;
  *(a3 + 24) = v4;
  *(a3 + 32) = v5;
  return result;
}

uint64_t FeedItemFilterResult.journal.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t sub_1D7046DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1D7046E0C(uint64_t a1)
{
  v26 = *(a1 + 16);
  if (!v26)
  {
    return;
  }

  v1 = 0;
  v25 = a1 + 32;
  v2 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v3 = v25 + 24 * v1;
    v4 = *v3;
    v5 = *(v3 + 8);
    if (*(v3 + 16))
    {
      sub_1D7053C8C(v4, v5, 1);
      v6 = (v4)();
      sub_1D7053C9C(v4, v5, 1);
    }

    else
    {
      sub_1D7053E1C(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1D72816C0;
      *(v6 + 32) = v4;
      sub_1D7053C8C(v4, v5, 0);
    }

    v7 = v6 >> 62;
    if (v6 >> 62)
    {
      v8 = sub_1D7263BFC();
    }

    else
    {
      v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v2 >> 62;
    if (v2 >> 62)
    {
      v24 = sub_1D7263BFC();
      v11 = v24 + v8;
      if (__OFADD__(v24, v8))
      {
LABEL_35:
        __break(1u);
        return;
      }
    }

    else
    {
      v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v10 + v8;
      if (__OFADD__(v10, v8))
      {
        goto LABEL_35;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v9)
      {
        v12 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v11 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

LABEL_17:
      sub_1D7263BFC();
      goto LABEL_18;
    }

    if (v9)
    {
      goto LABEL_17;
    }

LABEL_18:
    v2 = sub_1D7263DDC();
    v12 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_19:
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v7)
    {
      break;
    }

    v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_23:
    if (((v14 >> 1) - v13) < v8)
    {
      goto LABEL_38;
    }

    v28 = v2;
    v30 = v1;
    v16 = v12 + 8 * v13 + 32;
    v27 = v8;
    if (v7)
    {
      if (v15 < 1)
      {
        goto LABEL_40;
      }

      sub_1D70517D8(0);
      sub_1D5BBB890(&unk_1EC899960, sub_1D70517D8, MEMORY[0x1E69E6340]);
      for (i = 0; i != v15; ++i)
      {
        v18 = sub_1D6D877E0(v29, i, v6);
        v20 = *v19;
        (v18)(v29, 0);
        *(v16 + 8 * i) = v20;
      }
    }

    else
    {
      sub_1D5B5A498(0, &unk_1EDF04400, 0x1E69DC5E8);
      swift_arrayInitWithCopy();
    }

    v2 = v28;
    v1 = v30;
    if (v27 >= 1)
    {
      v21 = *(v12 + 16);
      v22 = __OFADD__(v21, v27);
      v23 = v21 + v27;
      if (v22)
      {
        goto LABEL_39;
      }

      *(v12 + 16) = v23;
    }

LABEL_4:
    if (++v1 == v26)
    {
      return;
    }
  }

  v15 = sub_1D7263BFC();
  if (v15)
  {
    goto LABEL_23;
  }

LABEL_3:

  if (v8 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

void sub_1D7047188(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {

    sub_1D725A7EC();
    v6 = sub_1D725F64C();

    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = a1;
    v8[4] = a2;

    v9 = *(v3 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapGesture);
    if (v9)
    {
      v10 = v9;
      [v10 setEnabled_];
      sub_1D5B74328(a1, a2);
    }

    else
    {
      sub_1D5B74328(a1, a2);
    }
  }

  else
  {
    sub_1D725A7CC();
    if (v13)
    {
      v11 = sub_1D725F64C();
    }

    v12 = *(v2 + OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapGesture);
    if (v12)
    {
      [v12 setEnabled_];
    }
  }
}

id sub_1D704730C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (!*(v8 + 16))
  {
    goto LABEL_9;
  }

  v9 = sub_1D5B69D90(a1, a2);
  if ((v10 & 1) == 0)
  {
    goto LABEL_9;
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  v12 = *(v11 + 56);
  if (((v12 >> 59) & 0x1E | (v12 >> 2) & 1) != 0x10)
  {
LABEL_10:
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](a1, a2);
    MEMORY[0x1DA6F9910](0x616C69617661202CLL, 0xEC0000003D656C62);
    type metadata accessor for FormatLayoutViewContainer();

    v17 = sub_1D7261DBC();
    MEMORY[0x1DA6F9910](v17);

    result = sub_1D726402C();
    __break(1u);
    return result;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v14 = [v13 view];
  if (!v14)
  {
    __break(1u);
LABEL_9:
    swift_endAccess();
    goto LABEL_10;
  }

  v15 = v14;
  [v14 setAutoresizingMask_];
  if (v6)
  {
    [v15 setAutoresizingMask_];
  }

  return v13;
}

void sub_1D7047510(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v445 = a4;
  v444 = a3;
  v435 = a2;
  sub_1D5BB160C(0, &qword_1EDF343E0, type metadata accessor for SharedItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v441 = &v433 - v11;
  v12 = type metadata accessor for SharedItem(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v442 = &v433 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v449 = sub_1D7261B9C();
  v15 = *(v449 - 8);
  MEMORY[0x1EEE9AC00](v449, v16);
  v443 = (&v433 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for FormatShareAttributionData(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v433 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_allocWithZone(type metadata accessor for FormatLayoutViewToken()) init];
  v23 = *&v6[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_token];
  *&v6[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_token] = v22;
  v450 = v22;

  v24 = [v6 layer];
  v25 = [v24 sublayers];

  if (v25)
  {
    sub_1D5B5A498(0, &unk_1EDF1A700, 0x1E6979398);
    v26 = sub_1D726267C();
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  v446 = a5;
  v451 = v21;
  if (v26 >> 62)
  {
    v27 = sub_1D7263BFC();
    if (!v27)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v27)
    {
      goto LABEL_16;
    }
  }

  if (v27 < 1)
  {
    goto LABEL_324;
  }

  for (i = 0; i != v27; ++i)
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x1DA6FB460](i, v26);
    }

    else
    {
      v29 = *(v26 + 8 * i + 32);
    }

    v30 = v29;
    swift_getObjectType();
    if (swift_conformsToProtocol2() && v30)
    {
      [v30 removeFromSuperlayer];
    }
  }

LABEL_16:

  v31 = v6;
  v32 = *a1;
  if (v6[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_isDirty] != 1)
  {
    v33 = *&v6[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewKey];
    if (v33)
    {
      v34 = *(v33 + 16);
      v35 = *(*(a1 + *(v32 + 160)) + 16);

      sub_1D633F328(v34, v35);
      LOBYTE(v34) = v36;

      if (v34)
      {

        return;
      }

      v32 = *a1;
    }
  }

  sub_1D704CD80(v22, *(a1 + *(v32 + 160)));

  v37 = *&v6[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_visualEffectContainer];
  v38 = &off_1E84D3000;
  if (v37)
  {
    v39 = *(v37 + 16);

    [v39 removeFromSuperview];
    v40 = [objc_opt_self() clearColor];
    sub_1D726349C();

    [v6 addSubview_];
  }

  v455 = *(a1 + *(*a1 + 152));
  v460 = sub_1D60A7AA0();
  if (!v460)
  {
LABEL_316:
    sub_1D725A7CC();
    v432 = v462;
    if (v462)
    {
      [v31 v38[206]];
    }

    return;
  }

  v448 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewControllers;
  v41 = v455 & 0xC000000000000001;
  v454 = v455 & 0xFFFFFFFFFFFFFF8;
  v453 = v455 + 32;
  v42 = *MEMORY[0x1E69E8020];
  v43 = (v15 + 104);
  v434 = (v15 + 8);
  v44 = 0;
  v461 = v31;
  v458 = v455 & 0xC000000000000001;
  v457 = v42;
  v459 = v43;
  while (1)
  {
    if (v41)
    {
      v47 = MEMORY[0x1DA6FB460](v44, v455);
      v48 = __OFADD__(v44++, 1);
      if (v48)
      {
        goto LABEL_319;
      }
    }

    else
    {
      if (v44 >= *(v454 + 16))
      {
        goto LABEL_320;
      }

      v47 = *(v453 + 8 * v44);

      v48 = __OFADD__(v44++, 1);
      if (v48)
      {
LABEL_319:
        __break(1u);
LABEL_320:
        __break(1u);
LABEL_321:
        __break(1u);
LABEL_322:
        __break(1u);
LABEL_323:
        __break(1u);
LABEL_324:
        __break(1u);
LABEL_325:
        __break(1u);
LABEL_326:
        __break(1u);
LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
LABEL_337:
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
LABEL_340:
        __break(1u);
LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
LABEL_345:
        __break(1u);
LABEL_346:
        __break(1u);
LABEL_347:
        __break(1u);
LABEL_348:
        __break(1u);
LABEL_349:
        __break(1u);
LABEL_350:
        __break(1u);
        goto LABEL_351;
      }
    }

    v49 = v47[2];
    v50 = (v49 >> 59) & 0x1E | (v49 >> 2) & 1;
    if ((v50 - 4) < 0xF)
    {
      break;
    }

    if (v50 <= 1)
    {
      if (!v50)
      {
        v60 = *(v49 + 24);
        v62 = *(v60 + 152);
        v61 = *(v60 + 160);
        v63 = qword_1EDF223A8;

        if (v63 != -1)
        {
          swift_once();
        }

        v64 = *(qword_1EDFFCA38 + 32);
        swift_beginAccess();
        v65 = v64[2];
        v66 = v461;
        if (v65 >> 62)
        {
          if (!sub_1D7263BFC())
          {
            goto LABEL_227;
          }

LABEL_54:
          v67 = v47;

          v68 = sub_1D62096D4();
          if (!v68)
          {
            v69 = v64[2];
            if (v69 >> 62)
            {
              if (__OFSUB__(sub_1D7263BFC(), 1))
              {
                goto LABEL_341;
              }
            }

            else if (__OFSUB__(*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10), 1))
            {
              goto LABEL_341;
            }

            v68 = sub_1D5EC4C00();
          }

          v70 = v68;
          swift_endAccess();
        }

        else
        {
          if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_54;
          }

LABEL_227:
          swift_endAccess();
          v338 = v64[8];
          v48 = __OFADD__(v338, 1);
          v339 = v338 + 1;
          if (v48)
          {
            goto LABEL_329;
          }

          v67 = v47;
          v64[8] = v339;
          v340 = v64[5];

          v70 = v340(v341);
        }

        v342 = v66;
        sub_1D704D154(v62, v61, v70);

        [v70 setAccessibilityIgnoresInvertColors_];
        v344 = v67[3];
        v343 = v67[4];
        v345 = v67[5];
        v346 = v67[6];
        v347 = *(v67 + 56);
        v348 = swift_allocObject();
        *(v348 + 16) = v70;
        if (v345 >> 62 == 1)
        {
          v456 = v44;
          v349 = *((v345 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v462 = v344;
          v463 = v343;
          *&v464 = v345;
          *(&v464 + 1) = v346;
          LOBYTE(v465) = v347;

          sub_1D5F33D5C(v345);
          v45 = v70;
          v350 = v348 | 0x1000000000000000;
          goto LABEL_237;
        }

        v462 = v344;
        v463 = v343;
        *&v464 = v345;
        *(&v464 + 1) = v346;
        LOBYTE(v465) = v347;

        sub_1D5F33D5C(v345);
        v45 = v70;
        v46 = v348 | 0x1000000000000000;
LABEL_26:
        sub_1D704E5D4(&v462, v46);
        goto LABEL_27;
      }

      v81 = *((v49 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v83 = *(v81 + 152);
      v82 = *(v81 + 160);
      v84 = qword_1EDF223A8;

      if (v84 != -1)
      {
        swift_once();
      }

      v85 = *(qword_1EDFFCA38 + 40);
      swift_beginAccess();
      v86 = v85[2];
      v87 = v461;
      if (v86 >> 62)
      {
        if (!sub_1D7263BFC())
        {
          goto LABEL_233;
        }

LABEL_75:
        v88 = v47;

        v89 = sub_1D62096D4();
        if (!v89)
        {
          v90 = v85[2];
          if (v90 >> 62)
          {
            if (__OFSUB__(sub_1D7263BFC(), 1))
            {
              goto LABEL_340;
            }
          }

          else if (__OFSUB__(*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10), 1))
          {
            goto LABEL_340;
          }

          v89 = sub_1D5EC4C00();
        }

        v91 = v89;
        swift_endAccess();
      }

      else
      {
        if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_75;
        }

LABEL_233:
        swift_endAccess();
        v351 = v85[8];
        v48 = __OFADD__(v351, 1);
        v352 = v351 + 1;
        if (v48)
        {
          goto LABEL_328;
        }

        v88 = v47;
        v85[8] = v352;
        v353 = v85[5];

        v91 = v353(v354);
      }

      v342 = v87;
      sub_1D704D154(v83, v82, v91);

      v356 = v88[3];
      v355 = v88[4];
      v345 = v88[5];
      v357 = v88[6];
      v358 = *(v88 + 56);
      v359 = swift_allocObject();
      *(v359 + 16) = v91;
      if (v345 >> 62 != 1)
      {
        v462 = v356;
        v463 = v355;
        *&v464 = v345;
        *(&v464 + 1) = v357;
        LOBYTE(v465) = v358;

        sub_1D5F33D5C(v345);
        v45 = v91;
        v46 = v359 | 4;
        goto LABEL_26;
      }

      v456 = v44;
      v349 = *((v345 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v462 = v356;
      v463 = v355;
      *&v464 = v345;
      *(&v464 + 1) = v357;
      LOBYTE(v465) = v358;

      sub_1D5F33D5C(v345);
      v45 = v91;
      v350 = v359 | 4;
LABEL_237:
      v360 = v349;
      v44 = v456;
      sub_1D704DF94(&v462, v350, v360);
LABEL_27:

      sub_1D5F33D8C(v345);
      v38 = &off_1E84D3000;
      v42 = v457;
      v43 = v459;
      v31 = v342;
LABEL_28:
      v41 = v458;
      goto LABEL_29;
    }

    if (v50 == 2)
    {
      break;
    }

    sub_1D6CCCE18(0);
    v72 = *(swift_projectBox() + *(v71 + 48));
    v52 = *(v72 + 80);
    v51 = *(v72 + 88);

LABEL_61:
    if (qword_1EDF223A8 != -1)
    {
      swift_once();
    }

    v73 = *(qword_1EDFFCA38 + 24);
    swift_beginAccess();
    v74 = v73[2];
    v75 = v461;
    if (v74 >> 62)
    {
      v76 = sub_1D7263BFC();
    }

    else
    {
      v76 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v456 = v44;
    if (v76)
    {
      v77 = v47;

      v78 = sub_1D62096D4();
      if (!v78)
      {
        v79 = v73[2];
        if (v79 >> 62)
        {
          if (__OFSUB__(sub_1D7263BFC(), 1))
          {
            goto LABEL_327;
          }
        }

        else if (__OFSUB__(*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10), 1))
        {
          goto LABEL_327;
        }

        v78 = sub_1D5EC4C00();
      }

      v80 = v78;
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      v268 = v73[8];
      v48 = __OFADD__(v268, 1);
      v269 = v268 + 1;
      if (v48)
      {
        goto LABEL_323;
      }

      v77 = v47;
      v73[8] = v269;
      v270 = v73[5];

      v80 = v270(v271);
    }

    v272 = v75;
    sub_1D704D154(v52, v51, v80);

    v274 = v77[3];
    v273 = v77[4];
    v275 = v77[5];
    v276 = v77[6];
    v277 = *(v77 + 56);
    v278 = swift_allocObject();
    *(v278 + 16) = v80;
    if (v275 >> 62 == 1)
    {
      *&v447 = *((v275 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v462 = v274;
      v463 = v273;
      *&v464 = v275;
      *(&v464 + 1) = v276;
      LOBYTE(v465) = v277;

      sub_1D5F33D5C(v275);
      v279 = v80;
      v280 = v456;
      sub_1D704DF94(&v462, v278 | 0x1000000000000004, v447);

      v44 = v280;

      sub_1D5F33D8C(v275);
LABEL_208:
      v31 = v272;
LABEL_209:
      v38 = &off_1E84D3000;
LABEL_210:
      v41 = v458;
      v43 = v459;
LABEL_211:
      v42 = v457;
    }

    else
    {
      v462 = v274;
      v463 = v273;
      *&v464 = v275;
      *(&v464 + 1) = v276;
      LOBYTE(v465) = v277;

      sub_1D5F33D5C(v275);
      v281 = v80;
      sub_1D704E5D4(&v462, v278 | 0x1000000000000004);

      sub_1D5F33D8C(v275);
      v31 = v272;
      v38 = &off_1E84D3000;
      v41 = v458;
LABEL_218:
      v42 = v457;
      v43 = v459;
LABEL_246:
      v44 = v456;
    }

LABEL_29:
    if (v44 == v460)
    {
      goto LABEL_316;
    }
  }

  v51 = 0;
  v52 = 0;
  switch(v50)
  {
    case 3:
      goto LABEL_61;
    case 4:
      v167 = (v49 & 0xFFFFFFFFFFFFFFBLL);

      v169 = *((v49 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v168 = v167[3];
      v171 = v167[4];
      v170 = v167[5];
      v172 = v167[6];

      sub_1D5EBC314(v171, v170, v172);
      if (qword_1EDF223A8 != -1)
      {
        swift_once();
      }

      v173 = *(qword_1EDFFCA38 + 48);
      swift_beginAccess();
      v174 = v173[2];
      if (v174 >> 62)
      {
        v175 = sub_1D7263BFC();
      }

      else
      {
        v175 = *((v174 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v452 = v47;
      *&v447 = v167;
      if (v175)
      {

        v176 = sub_1D62096D4();
        if (!v176)
        {
          v177 = v173[2];
          if (v177 >> 62)
          {
            if (__OFSUB__(sub_1D7263BFC(), 1))
            {
              goto LABEL_344;
            }
          }

          else if (__OFSUB__(*((v177 & 0xFFFFFFFFFFFFFF8) + 0x10), 1))
          {
            goto LABEL_344;
          }

          v176 = sub_1D5EC4C00();
        }

        v178 = v176;
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        v309 = v173[8];
        v48 = __OFADD__(v309, 1);
        v310 = v309 + 1;
        if (v48)
        {
          goto LABEL_337;
        }

        v173[8] = v310;
        v311 = v173[5];

        v178 = v311(v312);
      }

      v462 = v169;
      v463 = v168;
      v437 = v168;
      *&v464 = v171;
      *(&v464 + 1) = v170;
      v465 = v172;
      v272 = v461;
      sub_1D704D2D0(v178, &v462);
      v439 = v171;
      v436 = v169;
      v313 = v452[3];
      v314 = v452[4];
      v440 = v172;
      v315 = v452[5];
      v316 = v452[6];
      v438 = v170;
      v317 = *(v452 + 56);
      v318 = swift_allocObject();
      *(v318 + 16) = v178;
      if (v315 >> 62 == 1)
      {
        v456 = v44;
        v319 = *((v315 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v462 = v313;
        v463 = v314;
        *&v464 = v315;
        *(&v464 + 1) = v316;
        LOBYTE(v465) = v317;

        sub_1D5F33D5C(v315);
        v320 = v178;
        v321 = v319;
        v44 = v456;
        sub_1D704DF94(&v462, v318 | 0x2000000000000000, v321);
      }

      else
      {
        v462 = v313;
        v463 = v314;
        *&v464 = v315;
        *(&v464 + 1) = v316;
        LOBYTE(v465) = v317;

        sub_1D5F33D5C(v315);
        v320 = v178;
        sub_1D704E5D4(&v462, v318 | 0x2000000000000000);
      }

      sub_1D5EBC358(v439, v438, v440);

      sub_1D5F33D8C(v315);

      goto LABEL_208;
    case 5:
      v200 = *((v49 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      if (*(v200 + 184))
      {
        v201 = v44;
        v202 = v47;
        v203 = qword_1EDF223A8;

        v31 = v461;
        if (v203 != -1)
        {
          swift_once();
        }

        v204 = *(qword_1EDFFCA38 + 136);
        swift_beginAccess();
        v205 = v204[2];
        if (v205 >> 62)
        {
          if (sub_1D7263BFC())
          {
LABEL_142:

            isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
            v204[2] = v205;
            if (v205 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
            {
              v205 = sub_1D5EC4BFC();
            }

            v207 = *((v205 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v207)
            {
              goto LABEL_338;
            }

            v208 = v207 - 1;
            v209 = *((v205 & 0xFFFFFFFFFFFFFF8) + 8 * v208 + 0x20);
            *((v205 & 0xFFFFFFFFFFFFFF8) + 0x10) = v208;
            v204[2] = v205;
            swift_endAccess();
            goto LABEL_282;
          }
        }

        else if (*((v205 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_142;
        }

        swift_endAccess();
        v415 = v204[8];
        v48 = __OFADD__(v415, 1);
        v416 = v415 + 1;
        if (v48)
        {
          goto LABEL_349;
        }

        v204[8] = v416;
        v417 = v204[5];

        v209 = v417(v418);
LABEL_282:

        sub_1D704D154(0, 0, v209);

        v419 = v202[4];
        v420 = *(v202 + 56);
        v462 = v202[3];
        v463 = v419;
        v447 = *(v202 + 5);
        v464 = v447;
        LOBYTE(v465) = v420;
        v421 = swift_allocObject();
        *(v421 + 16) = v209;

        sub_1D5F33D5C(v447);
        v422 = v209;
        sub_1D704D0EC(&v462, v421 | 0x3000000000000000);

        goto LABEL_288;
      }

      v452 = v47;
      v456 = v44;
      v282 = *((v49 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      v283 = sub_1D6A4BF94(v282, v461);
      v285 = *(v200 + 16);
      v284 = *(v200 + 24);
      v286 = &v283[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_layoutIdentifier];
      swift_beginAccess();
      *v286 = v285;
      *(v286 + 1) = v284;

      v287 = *&v283[OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_onReuse];
      v288 = sub_1D725F64C();

      v289 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v290 = swift_allocObject();
      swift_weakInit();
      v291 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v292 = swift_allocObject();
      swift_weakInit();
      v293 = swift_allocObject();
      v293[2] = v291;
      v293[3] = v292;
      v31 = v461;
      v293[4] = v289;
      v293[5] = v290;

      v294 = v448;
      swift_beginAccess();
      v295 = v283;
      MEMORY[0x1DA6F9CE0]();
      if (*((*(v31 + v294) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v31 + v294) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      swift_endAccess();
      v296 = v452[4];
      v297 = *(v452 + 56);
      v462 = v452[3];
      v463 = v296;
      v447 = *(v452 + 5);
      v464 = v447;
      LOBYTE(v465) = v297;
      v298 = swift_allocObject();
      *(v298 + 16) = v295;
      v299 = v295;

      sub_1D5F33D5C(v447);
      sub_1D704D0EC(&v462, v298 | 0x2000000000000004);

      v300 = v464;

      sub_1D5F33D8C(v300);
LABEL_189:

      v38 = &off_1E84D3000;
      v44 = v456;
      goto LABEL_210;
    case 6:

      if (qword_1EDF223A8 != -1)
      {
        swift_once();
      }

      v137 = *(qword_1EDFFCA38 + 56);
      swift_beginAccess();
      v138 = v137[2];
      if (v138 >> 62)
      {
        if (!sub_1D7263BFC())
        {
LABEL_248:
          swift_endAccess();
          v379 = v137[8];
          v48 = __OFADD__(v379, 1);
          v380 = v379 + 1;
          if (v48)
          {
            goto LABEL_336;
          }

          v139 = v47;
          v137[8] = v380;
          v381 = v137[5];

          v142 = v381(v382);
          goto LABEL_250;
        }
      }

      else if (!*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_248;
      }

      v139 = v47;

      v140 = sub_1D62096D4();
      if (!v140)
      {
        v141 = v137[2];
        if (v141 >> 62)
        {
          if (__OFSUB__(sub_1D7263BFC(), 1))
          {
            goto LABEL_342;
          }
        }

        else if (__OFSUB__(*((v141 & 0xFFFFFFFFFFFFFF8) + 0x10), 1))
        {
          goto LABEL_342;
        }

        v140 = sub_1D5EC4C00();
      }

      v142 = v140;
      swift_endAccess();
LABEL_250:

      v384 = v139[3];
      v383 = v139[4];
      v244 = v139[5];
      v385 = v139[6];
      v386 = *(v139 + 56);
      v387 = swift_allocObject();
      *(v387 + 16) = v142;
      if (v244 >> 62 == 1)
      {
        v248 = *((v244 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v462 = v384;
        v463 = v383;
        *&v464 = v244;
        *(&v464 + 1) = v385;
        LOBYTE(v465) = v386;

        sub_1D5F33D5C(v244);
        v249 = v142;
        v388 = v387 | 0x4000000000000000;
        goto LABEL_274;
      }

      v462 = v384;
      v463 = v383;
      *&v464 = v244;
      *(&v464 + 1) = v385;
      LOBYTE(v465) = v386;

      sub_1D5F33D5C(v244);
      v302 = v142;
      v389 = v387 | 0x4000000000000000;
      goto LABEL_276;
    case 7:

      *&v447 = v49 & 0xFFFFFFFFFFFFFFBLL;
      v216 = v47;
      v217 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
      v219 = v216[3];
      v218 = v216[4];
      v220 = v216[5];
      v221 = v216[6];
      v222 = *(v216 + 56);
      v223 = swift_allocObject();
      *(v223 + 16) = v217;
      if (v220 >> 62 == 1)
      {
        v224 = *((v220 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v462 = v219;
        v463 = v218;
        *&v464 = v220;
        *(&v464 + 1) = v221;
        LOBYTE(v465) = v222;

        sub_1D5F33D5C(v220);
        v225 = v217;
        v226 = v461;
        sub_1D704DF94(&v462, v223 | 0x5000000000000000, v224);

        v31 = v226;
      }

      else
      {
        v462 = v219;
        v463 = v218;
        *&v464 = v220;
        *(&v464 + 1) = v221;
        LOBYTE(v465) = v222;

        sub_1D5F33D5C(v220);
        v301 = v217;
        v31 = v461;
        sub_1D704E5D4(&v462, v223 | 0x5000000000000000);
      }

      sub_1D5F33D8C(v220);

      goto LABEL_209;
    case 8:

      v240 = v47;
      v241 = [objc_allocWithZone(type metadata accessor for FormatAdMetricsView()) initWithFrame_];
      v243 = v240[3];
      v242 = v240[4];
      v244 = v240[5];
      v245 = v240[6];
      v246 = *(v240 + 56);
      v247 = swift_allocObject();
      *(v247 + 16) = v241;
      if (v244 >> 62 == 1)
      {
        v248 = *((v244 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v462 = v243;
        v463 = v242;
        *&v464 = v244;
        *(&v464 + 1) = v245;
        LOBYTE(v465) = v246;

        sub_1D5F33D5C(v244);
        v249 = v241;
        v250 = 0x4000000000000004;
        goto LABEL_265;
      }

      v462 = v243;
      v463 = v242;
      *&v464 = v244;
      *(&v464 + 1) = v245;
      LOBYTE(v465) = v246;

      sub_1D5F33D5C(v244);
      v302 = v241;
      v303 = 0x4000000000000004;
      goto LABEL_267;
    case 9:

      if (qword_1EDF223A8 != -1)
      {
        swift_once();
      }

      v210 = *(qword_1EDFFCA38 + 80);
      swift_beginAccess();
      v211 = v210[2];
      if (v211 >> 62)
      {
        if (!sub_1D7263BFC())
        {
LABEL_261:
          swift_endAccess();
          v398 = v210[8];
          v48 = __OFADD__(v398, 1);
          v399 = v398 + 1;
          if (v48)
          {
            goto LABEL_330;
          }

          v212 = v47;
          v210[8] = v399;
          v400 = v210[5];

          v215 = v400(v401);
          goto LABEL_263;
        }
      }

      else if (!*((v211 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_261;
      }

      v212 = v47;

      v213 = sub_1D62096D4();
      if (!v213)
      {
        v214 = v210[2];
        if (v214 >> 62)
        {
          if (__OFSUB__(sub_1D7263BFC(), 1))
          {
            goto LABEL_347;
          }
        }

        else if (__OFSUB__(*((v214 & 0xFFFFFFFFFFFFFF8) + 0x10), 1))
        {
          goto LABEL_347;
        }

        v213 = sub_1D5EC4C00();
      }

      v215 = v213;
      swift_endAccess();
LABEL_263:

      v403 = v212[3];
      v402 = v212[4];
      v244 = v212[5];
      v404 = v212[6];
      v405 = *(v212 + 56);
      v247 = swift_allocObject();
      *(v247 + 16) = v215;
      if (v244 >> 62 == 1)
      {
        v248 = *((v244 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v462 = v403;
        v463 = v402;
        *&v464 = v244;
        *(&v464 + 1) = v404;
        LOBYTE(v465) = v405;

        sub_1D5F33D5C(v244);
        v249 = v215;
        v250 = 0x5000000000000004;
LABEL_265:
        v388 = v247 | v250;
        goto LABEL_274;
      }

      v462 = v403;
      v463 = v402;
      *&v464 = v244;
      *(&v464 + 1) = v404;
      LOBYTE(v465) = v405;

      sub_1D5F33D5C(v244);
      v302 = v215;
      v303 = 0x5000000000000004;
LABEL_267:
      v389 = v247 | v303;
      goto LABEL_276;
    case 10:

      if (qword_1EDF223A8 != -1)
      {
        swift_once();
      }

      v262 = *(qword_1EDFFCA38 + 64);
      swift_beginAccess();
      v263 = v262[2];
      if (v263 >> 62)
      {
        if (!sub_1D7263BFC())
        {
LABEL_270:
          swift_endAccess();
          v406 = v262[8];
          v48 = __OFADD__(v406, 1);
          v407 = v406 + 1;
          if (v48)
          {
            goto LABEL_333;
          }

          v264 = v47;
          v262[8] = v407;
          v408 = v262[5];

          v267 = v408(v409);
          goto LABEL_272;
        }
      }

      else if (!*((v263 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_270;
      }

      v264 = v47;

      v265 = sub_1D62096D4();
      if (!v265)
      {
        v266 = v262[2];
        if (v266 >> 62)
        {
          if (__OFSUB__(sub_1D7263BFC(), 1))
          {
            goto LABEL_346;
          }
        }

        else if (__OFSUB__(*((v266 & 0xFFFFFFFFFFFFFF8) + 0x10), 1))
        {
          goto LABEL_346;
        }

        v265 = sub_1D5EC4C00();
      }

      v267 = v265;
      swift_endAccess();
LABEL_272:

      v411 = v264[3];
      v410 = v264[4];
      v244 = v264[5];
      v412 = v264[6];
      v413 = *(v264 + 56);
      v414 = swift_allocObject();
      *(v414 + 16) = v267;
      if (v244 >> 62 == 1)
      {
        v248 = *((v244 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v462 = v411;
        v463 = v410;
        *&v464 = v244;
        *(&v464 + 1) = v412;
        LOBYTE(v465) = v413;

        sub_1D5F33D5C(v244);
        v249 = v267;
        v388 = v414 | 0x6000000000000000;
LABEL_274:
        v31 = v461;
        sub_1D704DF94(&v462, v388, v248);
      }

      else
      {
        v462 = v411;
        v463 = v410;
        *&v464 = v244;
        *(&v464 + 1) = v412;
        LOBYTE(v465) = v413;

        sub_1D5F33D5C(v244);
        v302 = v267;
        v389 = v414 | 0x6000000000000000;
LABEL_276:
        v31 = v461;
        sub_1D704E5D4(&v462, v389);
      }

      sub_1D5F33D8C(v244);
      v38 = &off_1E84D3000;
LABEL_278:
      v42 = v457;
      v43 = v459;
      goto LABEL_28;
    case 11:

      if (qword_1EDF223A8 != -1)
      {
        swift_once();
      }

      v161 = *(qword_1EDFFCA38 + 72);
      swift_beginAccess();
      v162 = v161[2];
      if (v162 >> 62)
      {
        if (!sub_1D7263BFC())
        {
LABEL_254:
          swift_endAccess();
          v390 = v161[8];
          v48 = __OFADD__(v390, 1);
          v391 = v390 + 1;
          if (v48)
          {
            goto LABEL_332;
          }

          v163 = v47;
          v161[8] = v391;
          v392 = v161[5];

          v166 = v392(v393);
          goto LABEL_256;
        }
      }

      else if (!*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_254;
      }

      v163 = v47;

      v164 = sub_1D62096D4();
      if (!v164)
      {
        v165 = v161[2];
        if (v165 >> 62)
        {
          if (__OFSUB__(sub_1D7263BFC(), 1))
          {
            goto LABEL_345;
          }
        }

        else if (__OFSUB__(*((v165 & 0xFFFFFFFFFFFFFF8) + 0x10), 1))
        {
          goto LABEL_345;
        }

        v164 = sub_1D5EC4C00();
      }

      v166 = v164;
      swift_endAccess();
LABEL_256:

      [v166 setAccessibilityIgnoresInvertColors_];
      v395 = v163[3];
      v394 = v163[4];
      v244 = v163[5];
      v396 = v163[6];
      v397 = *(v163 + 56);
      v247 = swift_allocObject();
      *(v247 + 16) = v166;
      if (v244 >> 62 == 1)
      {
        v248 = *((v244 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v462 = v395;
        v463 = v394;
        *&v464 = v244;
        *(&v464 + 1) = v396;
        LOBYTE(v465) = v397;

        sub_1D5F33D5C(v244);
        v249 = v166;
        v250 = 0x6000000000000004;
        goto LABEL_265;
      }

      v462 = v395;
      v463 = v394;
      *&v464 = v244;
      *(&v464 + 1) = v396;
      LOBYTE(v465) = v397;

      sub_1D5F33D5C(v244);
      v302 = v166;
      v303 = 0x6000000000000004;
      goto LABEL_267;
    case 12:
      v201 = v44;

      v251 = v47;
      if (*((v49 & 0xFFFFFFFFFFFFFFBLL) + 0x48) != 1)
      {
        v31 = v461;
        if (qword_1EDF223A8 != -1)
        {
          swift_once();
        }

        v304 = *(qword_1EDFFCA38 + 144);
        swift_beginAccess();
        v305 = v304[2];
        if (v305 >> 62)
        {
          if (sub_1D7263BFC())
          {
LABEL_197:

            v306 = swift_isUniquelyReferenced_nonNull_bridgeObject();
            v304[2] = v305;
            if (v305 >> 62 || (v306 & 1) == 0)
            {
              v305 = sub_1D5EC4BFC();
            }

            v307 = *((v305 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v307)
            {
              goto LABEL_339;
            }

            v308 = v307 - 1;
            v258 = *((v305 & 0xFFFFFFFFFFFFFF8) + 8 * v308 + 0x20);
            *((v305 & 0xFFFFFFFFFFFFFF8) + 0x10) = v308;
            v304[2] = v305;
            swift_endAccess();
            goto LABEL_287;
          }
        }

        else if (*((v305 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_197;
        }

        swift_endAccess();
        v423 = v304[8];
        v48 = __OFADD__(v423, 1);
        v424 = v423 + 1;
        if (v48)
        {
          goto LABEL_348;
        }

        v304[8] = v424;
        v425 = v304[5];

        v337 = v425(v426);
LABEL_286:
        v258 = v337;
LABEL_287:

        v427 = v251[4];
        v428 = *(v251 + 56);
        v462 = v251[3];
        v463 = v427;
        v447 = *(v251 + 5);
        v464 = v447;
        LOBYTE(v465) = v428;
        v429 = swift_allocObject();
        *(v429 + 16) = v258;
        v430 = v258;

        sub_1D5F33D5C(v447);
        sub_1D704D0EC(&v462, v429 | 0x7000000000000000);

LABEL_288:

        v431 = v464;

        sub_1D5F33D8C(v431);

        v43 = v459;
        v44 = v201;
        goto LABEL_28;
      }

      v252 = sub_1D5F8EABC();
      v253 = *(v252 + 16);
      v254 = (v252 + 32);
      v31 = v461;
      do
      {
        if (!v253)
        {

LABEL_220:
          if (qword_1EDF223A8 != -1)
          {
            swift_once();
          }

          v256 = *(qword_1EDFFCA38 + 144);
          swift_beginAccess();

          v258 = sub_1D6209084(v335);
          v259 = swift_endAccess();
          if (!v258)
          {
            v336 = *(v256 + 64);
            v48 = __OFADD__(v336, 1);
            v261 = v336 + 1;
            if (!v48)
            {
              goto LABEL_224;
            }

            goto LABEL_350;
          }

          goto LABEL_287;
        }

        v255 = *v254++;
        --v253;
      }

      while ((v255 & 1) == 0);

      if (UIAccessibilityIsReduceMotionEnabled())
      {
        goto LABEL_220;
      }

      if (qword_1EDF223A8 != -1)
      {
        swift_once();
      }

      v256 = *(qword_1EDFFCA38 + 152);
      swift_beginAccess();

      v258 = sub_1D6209084(v257);
      v259 = swift_endAccess();
      if (v258)
      {
        goto LABEL_287;
      }

      v260 = *(v256 + 64);
      v48 = __OFADD__(v260, 1);
      v261 = v260 + 1;
      if (!v48)
      {
LABEL_224:
        *(v256 + 64) = v261;
        v337 = (*(v256 + 40))(v259);
        goto LABEL_286;
      }

LABEL_351:
      __break(1u);
LABEL_352:
      __break(1u);
LABEL_353:
      __break(1u);
      return;
    case 13:
      v452 = v47;
      v456 = v44;

      sub_1D7053CCC(0);
      v108 = v107;
      v109 = swift_projectBox();
      v110 = *(v109 + *(v108 + 48));
      sub_1D7053D3C(v109, v451, type metadata accessor for FormatShareAttributionData);
      v111 = *(v110 + 72);
      *&v447 = *(v110 + 64);
      v112 = *(v444 + 24);
      v113 = sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
      v438 = v110;

      v440 = v113;
      v114 = sub_1D726308C();
      v115 = v443;
      *v443 = v114;
      v116 = *v43;
      v117 = v42;
      v118 = v449;
      (*v43)(v115, v117, v449);
      LOBYTE(v113) = sub_1D7261BBC();
      v439 = *v434;
      v439(v115, v118);
      if ((v113 & 1) == 0)
      {
        goto LABEL_321;
      }

      swift_beginAccess();
      v119 = v115;
      v120 = v442;
      sub_1D7053D3C(v451, v442, type metadata accessor for SharedItem);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v466 = *(v112 + 56);
      *(v112 + 56) = 0x8000000000000000;
      sub_1D6D7AAE8(v120, v447, v111, isUniquelyReferenced_nonNull_native);
      *(v112 + 56) = v466;
      swift_endAccess();
      sub_1D725DD6C();
      v122 = v462;
      *v119 = sub_1D726308C();
      v123 = v449;
      v116(v119, v457, v449);
      v124 = sub_1D7261BBC();
      v439(v119, v123);
      if ((v124 & 1) == 0)
      {
        goto LABEL_322;
      }

      swift_beginAccess();
      v125 = v441;
      sub_1D607EA44(v447, v111, v441);
      swift_endAccess();

      sub_1D7053DA4(v125, &qword_1EDF343E0, type metadata accessor for SharedItem, MEMORY[0x1E69E6720], sub_1D5BB160C);
      v126 = v122[6];
      v127 = swift_allocObject();
      v128 = v461;
      swift_unknownObjectWeakInit();
      v129 = swift_allocObject();
      swift_weakInit();
      v130 = swift_allocObject();
      swift_weakInit();
      v131 = swift_allocObject();
      v131[2] = v130;
      v131[3] = v127;
      v131[4] = v129;
      v132 = v126;

      v133 = v452[4];
      v134 = *(v452 + 56);
      v462 = v452[3];
      v463 = v133;
      v447 = *(v452 + 5);
      v464 = v447;
      LOBYTE(v465) = v134;
      v135 = swift_allocObject();
      *(v135 + 16) = v122;

      sub_1D5F33D5C(v447);

      sub_1D704D0EC(&v462, v135 | 0x7000000000000004);

      v136 = v464;

      sub_1D5F33D8C(v136);
      sub_1D5BCAB0C(v451, type metadata accessor for FormatShareAttributionData);

      v31 = v128;
      v38 = &off_1E84D3000;
      v44 = v456;
      v41 = v458;
      goto LABEL_211;
    case 14:
      v143 = v47;
      v144 = v44;
      v31 = v461;
      sub_1D725DD6C();
      v145 = v462;
      v146 = [v145 view];
      if (!v146)
      {
        goto LABEL_352;
      }

      v147 = v146;

      [v147 setAccessibilityIgnoresInvertColors_];

      v148 = *&v145[OBJC_IVAR____TtC8NewsFeed31FormatVideoPlayerViewController_onReuse];
      v149 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v150 = swift_allocObject();
      swift_weakInit();
      v151 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v152 = swift_allocObject();
      v152[2] = v151;
      v152[3] = v149;
      v152[4] = v150;
      v153 = v148;

      v154 = v448;
      v155 = swift_beginAccess();
      MEMORY[0x1DA6F9CE0](v155);
      if (*((*(v31 + v154) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v31 + v154) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      swift_endAccess();
      v156 = v143[4];
      v157 = *(v143 + 56);
      v462 = v143[3];
      v463 = v156;
      v447 = *(v143 + 5);
      v464 = v447;
      LOBYTE(v465) = v157;
      v158 = swift_allocObject();
      *(v158 + 16) = v145;
      v159 = v145;

      sub_1D5F33D5C(v447);
      sub_1D704D0EC(&v462, v158 | 0x8000000000000000);

      v160 = v464;

      sub_1D5F33D8C(v160);
      v38 = &off_1E84D3000;
      v44 = v144;
      goto LABEL_278;
    case 15:

      v227 = *((v49 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
      v467[0] = *((v49 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v467[1] = v227;
      v468 = *((v49 & 0xFFFFFFFFFFFFFFBLL) + 0x40);
      sub_1D704DAD8(v467, &v462);
      v228 = v462;
      v229 = v42;
      v230 = v38;
      v231 = v41;
      v232 = v44;
      v233 = v47;
      v234 = v47[3];
      v235 = v47[4];
      v236 = *(v233 + 56);
      v462 = v234;
      v463 = v235;
      v447 = *(v233 + 5);
      v464 = v447;
      LOBYTE(v465) = v236;
      v237 = swift_allocObject();
      *(v237 + 16) = v228;

      sub_1D5F33D5C(v447);
      v238 = (v228 & 0x3FFFFFFFFFFFFFFFLL);
      v31 = v461;
      sub_1D704D0EC(&v462, v237 | 0x8000000000000004);

      v44 = v232;
      v41 = v231;
      v38 = v230;
      v42 = v229;
      v43 = v459;

      v239 = v464;

      sub_1D5F33D8C(v239);

      goto LABEL_29;
    case 16:
      v456 = v44;
      v100 = v47;

      if (qword_1EDF223A8 != -1)
      {
        swift_once();
      }

      v101 = *(qword_1EDFFCA38 + 48);
      swift_beginAccess();
      v102 = v101[2];
      v31 = v461;
      if (v102 >> 62)
      {
        if (!sub_1D7263BFC())
        {
LABEL_243:
          swift_endAccess();
          v370 = v101[8];
          v48 = __OFADD__(v370, 1);
          v371 = v370 + 1;
          if (v48)
          {
            goto LABEL_334;
          }

          v101[8] = v371;
          v372 = v101[5];

          v106 = v372(v373);
          goto LABEL_245;
        }
      }

      else if (!*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_243;
      }

      v103 = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v101[2] = v102;
      if (v102 >> 62 || (v103 & 1) == 0)
      {
        v102 = sub_1D5EC4BFC();
      }

      v104 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v104)
      {
        goto LABEL_325;
      }

      v105 = v104 - 1;
      v106 = *((v102 & 0xFFFFFFFFFFFFFF8) + 8 * v105 + 0x20);
      *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) = v105;
      v101[2] = v102;
      swift_endAccess();
LABEL_245:

      v374 = v100[4];
      v375 = *(v100 + 56);
      v462 = v100[3];
      v463 = v374;
      v447 = *(v100 + 5);
      v464 = v447;
      LOBYTE(v465) = v375;
      v376 = swift_allocObject();
      *(v376 + 16) = v106;

      sub_1D5F33D5C(v447);
      v377 = v106;
      sub_1D704D0EC(&v462, v376 | 0x9000000000000000);

      v378 = v464;

      sub_1D5F33D8C(v378);
      goto LABEL_246;
    case 17:
      v179 = v47;
      v456 = v44;
      v180 = *((v49 & 0xFFFFFFFFFFFFFFBLL) + 0x18);

      v31 = v461;
      sub_1D725DD6C();
      v181 = v462;
      v182 = [v181 view];
      if (!v182)
      {
        goto LABEL_353;
      }

      v183 = v182;

      [v183 setAccessibilityIgnoresInvertColors_];

      v185 = *(v180 + 16);
      v184 = *(v180 + 24);
      v186 = &v181[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_layoutIdentifier];
      swift_beginAccess();
      *v186 = v185;
      *(v186 + 1) = v184;

      v187 = *&v181[OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_onReuse];
      v188 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v189 = swift_allocObject();
      swift_weakInit();
      v190 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v191 = swift_allocObject();
      v191[2] = v190;
      v191[3] = v188;
      v191[4] = v189;
      v192 = v187;

      v193 = v448;
      v194 = swift_beginAccess();
      MEMORY[0x1DA6F9CE0](v194);
      if (*((*(v31 + v193) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v31 + v193) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      swift_endAccess();
      v195 = v179[4];
      v196 = *(v179 + 56);
      v462 = v179[3];
      v463 = v195;
      v447 = *(v179 + 5);
      v464 = v447;
      LOBYTE(v465) = v196;
      v197 = swift_allocObject();
      *(v197 + 16) = v181;
      v198 = v181;

      sub_1D5F33D5C(v447);
      sub_1D704D0EC(&v462, v197 | 0x9000000000000004);

      v199 = v464;

      sub_1D5F33D8C(v199);
      goto LABEL_189;
    case 18:
      v92 = v44;
      v93 = v47;

      if (qword_1EDF223A8 != -1)
      {
        swift_once();
      }

      v94 = *(qword_1EDFFCA38 + 128);
      swift_beginAccess();
      v95 = v94[2];
      v31 = v461;
      if (v95 >> 62)
      {
        if (!sub_1D7263BFC())
        {
LABEL_239:
          swift_endAccess();
          v361 = v94[8];
          v48 = __OFADD__(v361, 1);
          v362 = v361 + 1;
          if (v48)
          {
            goto LABEL_335;
          }

          v94[8] = v362;
          v363 = v94[5];

          v99 = v363(v364);
          goto LABEL_241;
        }
      }

      else if (!*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_239;
      }

      v96 = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v94[2] = v95;
      if (v95 >> 62 || (v96 & 1) == 0)
      {
        v95 = sub_1D5EC4BFC();
      }

      v97 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v97)
      {
        goto LABEL_326;
      }

      v98 = v97 - 1;
      v99 = *((v95 & 0xFFFFFFFFFFFFFF8) + 8 * v98 + 0x20);
      *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) = v98;
      v94[2] = v95;
      swift_endAccess();
LABEL_241:

      v365 = v93[4];
      v366 = *(v93 + 56);
      v462 = v93[3];
      v463 = v365;
      v447 = *(v93 + 5);
      v464 = v447;
      LOBYTE(v465) = v366;
      v367 = swift_allocObject();
      *(v367 + 16) = v99;

      sub_1D5F33D5C(v447);
      v368 = v99;
      sub_1D704D0EC(&v462, v367 | 0xA000000000000000);

      v369 = v464;

      sub_1D5F33D8C(v369);
      v44 = v92;
      goto LABEL_28;
    default:

      if (qword_1EDF223A8 != -1)
      {
        swift_once();
      }

      v53 = *(qword_1EDFFCA38 + 16);
      swift_beginAccess();
      v54 = v53[2];
      if (v54 >> 62)
      {
        v55 = sub_1D7263BFC();
      }

      else
      {
        v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v456 = v44;
      if (v55)
      {
        v56 = v47;

        v57 = sub_1D62096D4();
        if (!v57)
        {
          v58 = v53[2];
          if (v58 >> 62)
          {
            if (__OFSUB__(sub_1D7263BFC(), 1))
            {
              goto LABEL_343;
            }
          }

          else if (__OFSUB__(*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10), 1))
          {
            goto LABEL_343;
          }

          v57 = sub_1D5EC4C00();
        }

        v59 = v57;
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        v322 = v53[8];
        v48 = __OFADD__(v322, 1);
        v323 = v322 + 1;
        if (v48)
        {
          goto LABEL_331;
        }

        v56 = v47;
        v53[8] = v323;
        v324 = v53[5];

        v59 = v324(v325);
      }

      v327 = v56[3];
      v326 = v56[4];
      v328 = v56[5];
      v329 = v56[6];
      v330 = *(v56 + 56);
      v331 = swift_allocObject();
      *(v331 + 16) = v59;
      if (v328 >> 62 == 1)
      {
        v332 = *((v328 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v462 = v327;
        v463 = v326;
        *&v464 = v328;
        *(&v464 + 1) = v329;
        LOBYTE(v465) = v330;

        sub_1D5F33D5C(v328);
        v333 = v59;
        v31 = v461;
        sub_1D704DF94(&v462, v331, v332);
      }

      else
      {
        v462 = v327;
        v463 = v326;
        *&v464 = v328;
        *(&v464 + 1) = v329;
        LOBYTE(v465) = v330;

        sub_1D5F33D5C(v328);
        v334 = v59;
        v31 = v461;
        sub_1D704E5D4(&v462, v331);
      }

      sub_1D5F33D8C(v328);
      v38 = &off_1E84D3000;
      goto LABEL_218;
  }
}

uint64_t sub_1D704A77C(char *a1)
{
  v3 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_scrollObservers;
  swift_beginAccess();
  if (!*(*&a1[v3] + 16))
  {
    v4 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewAnimations;
    swift_beginAccess();
    v5 = *&a1[v4];
    if (v5 >> 62)
    {
      result = sub_1D7263BFC();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }
  }

  v7 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_scrollObservers;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1D69931FC(0, v8[2] + 1, 1, v8);
    *(v1 + v7) = v8;
  }

  v12 = v8[2];
  v11 = v8[3];
  if (v12 >= v11 >> 1)
  {
    v8 = sub_1D69931FC((v11 > 1), v12 + 1, 1, v8);
  }

  v13 = sub_1D5BBB890(&qword_1EDF30360, type metadata accessor for FormatLayoutView, &protocol conformance descriptor for FormatLayoutView);
  v8[2] = v12 + 1;
  v14 = &v8[2 * v12];
  v14[4] = v9;
  v14[5] = v13;
  *(v1 + v7) = v8;
  return swift_endAccess();
}

id sub_1D704A8FC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (!*(v8 + 16))
  {
    goto LABEL_9;
  }

  v9 = sub_1D5B69D90(a1, a2);
  if ((v10 & 1) == 0)
  {
    goto LABEL_9;
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  v12 = *(v11 + 56);
  if (((v12 >> 59) & 0x1E | (v12 >> 2) & 1) != 5)
  {
LABEL_10:
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](a1, a2);
    MEMORY[0x1DA6F9910](0x616C69617661202CLL, 0xEC0000003D656C62);
    type metadata accessor for FormatLayoutViewContainer();

    v17 = sub_1D7261DBC();
    MEMORY[0x1DA6F9910](v17);

    result = sub_1D726402C();
    __break(1u);
    return result;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v14 = [v13 view];
  if (!v14)
  {
    __break(1u);
LABEL_9:
    swift_endAccess();
    goto LABEL_10;
  }

  v15 = v14;
  [v14 setAutoresizingMask_];
  if (v6)
  {
    [v15 setAutoresizingMask_];
  }

  return v13;
}

id sub_1D704AB00(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (!*(v8 + 16))
  {
    goto LABEL_9;
  }

  v9 = sub_1D5B69D90(a1, a2);
  if ((v10 & 1) == 0)
  {
    goto LABEL_9;
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  v12 = *(v11 + 56);
  if (((v12 >> 59) & 0x1E | (v12 >> 2) & 1) != 0x13)
  {
LABEL_10:
    sub_1D7263D4C();

    MEMORY[0x1DA6F9910](a1, a2);
    MEMORY[0x1DA6F9910](0x616C69617661202CLL, 0xEC0000003D656C62);
    type metadata accessor for FormatLayoutViewContainer();

    v17 = sub_1D7261DBC();
    MEMORY[0x1DA6F9910](v17);

    result = sub_1D726402C();
    __break(1u);
    return result;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
  v14 = [v13 view];
  if (!v14)
  {
    __break(1u);
LABEL_9:
    swift_endAccess();
    goto LABEL_10;
  }

  v15 = v14;
  [v14 setAutoresizingMask_];
  if (v6)
  {
    [v15 setAutoresizingMask_];
  }

  return v13;
}

Swift::Void __swiftcall FormatLayoutView.prepareForReuse()()
{
  v1 = v0;
  sub_1D5BB160C(0, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v39 - v4;
  v6 = *&v1[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_token];
  *&v1[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_token] = 0;

  v7 = type metadata accessor for FeedItem(0);
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_feedItem;
  swift_beginAccess();
  sub_1D61CAC28(v5, &v1[v8]);
  swift_endAccess();
  v9 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewAnimations;
  swift_beginAccess();
  *&v1[v9] = MEMORY[0x1E69E7CC0];

  sub_1D725A7CC();
  v10 = v39;
  if (v39)
  {
    v11 = sub_1D725F64C();
  }

  sub_1D725A7CC();
  v12 = v39;
  if (v39)
  {
    v13 = sub_1D725F64C();
  }

  v14 = *&v1[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_tapGesture];
  if (v14)
  {
    [v14 setEnabled_];
  }

  v15 = &v1[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onSizeInvalidation];
  v16 = *&v1[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onSizeInvalidation];
  v17 = *&v1[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onSizeInvalidation + 8];
  *v15 = 0;
  v15[1] = 0;
  sub_1D5B74328(v16, v17);
  v18 = &v1[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onKeyboardWillHide];
  v19 = *&v1[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onKeyboardWillHide];
  v20 = *&v1[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onKeyboardWillHide + 8];
  *v18 = 0;
  v18[1] = 0;
  sub_1D5B74328(v19, v20);
  v21 = &v1[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onKeyboardWillShow];
  v22 = *&v1[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onKeyboardWillShow];
  v23 = *&v1[OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_onKeyboardWillShow + 8];
  *v21 = 0;
  v21[1] = 0;
  sub_1D5B74328(v22, v23);
  v24 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewContainers;
  swift_beginAccess();
  v25 = *&v1[v24];
  v26 = 1 << *(v25 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v25 + 64);
  v29 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_isDirty;
  v30 = (v26 + 63) >> 6;

  v31 = 0;
  while (v28)
  {
LABEL_16:
    while (1)
    {
      v33 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v34 = *(*(v25 + 56) + ((v31 << 9) | (8 * v33)));
      v35 = *(v34 + 64);

      v36 = [v35 superview];
      if (v36)
      {
        v37 = v36;

        if (v37 == v1)
        {
          break;
        }
      }

      v1[v29] = 1;
      if (!v28)
      {
        goto LABEL_12;
      }
    }

    v38 = *(v34 + 56);

    sub_1D6C1447C(v38);
  }

LABEL_12:
  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v32 >= v30)
    {

      return;
    }

    v28 = *(v25 + 64 + 8 * v32);
    ++v31;
    if (v28)
    {
      v31 = v32;
      goto LABEL_16;
    }
  }

  __break(1u);
}

BOOL FormatLayoutView.shouldMonitorScroll.getter()
{
  v1 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_scrollObservers;
  swift_beginAccess();
  if (*(*(v0 + v1) + 16))
  {
    return 1;
  }

  v3 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewAnimations;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (v4 >> 62)
  {
    v5 = sub_1D7263BFC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5 != 0;
}

void FormatLayoutView.blueprintViewportMonitor(_:viewportScrollDataDidChange:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_scrollObservers;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = v5 + 40;
    do
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1D725F02C();
      swift_unknownObjectRelease();
      v7 += 16;
      --v6;
    }

    while (v6);
  }

  v8 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewAnimations;
  swift_beginAccess();
  v9 = *(v2 + v8);
  if (v9 >> 62)
  {
LABEL_111:
    if (!sub_1D7263BFC())
    {
      return;
    }
  }

  else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v8 = *(v3 + v8);
  v111[0] = MEMORY[0x1E69E7CC0];
  if (v8 >> 62)
  {
    v3 = sub_1D7263BFC();
  }

  else
  {
    v3 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v102 = v8;
  if (!v3)
  {
    v35 = MEMORY[0x1E69E7CC0];
    goto LABEL_55;
  }

  v10 = 0;
  v106 = v8 & 0xFFFFFFFFFFFFFF8;
  v108 = v8 & 0xC000000000000001;
  v104 = v8 + 32;
  while (!v108)
  {
    if (v10 >= *(v106 + 16))
    {
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    v11 = *(v104 + 8 * v10);

    v12 = __OFADD__(v10++, 1);
    if (v12)
    {
      goto LABEL_52;
    }

LABEL_16:
    v14 = v11[4];
    v13 = v11[5];
    v15 = v11[6];
    swift_beginAccess();
    v16 = v14[2];
    if (*(v16 + 16))
    {
      sub_1D7264A0C();

      sub_1D72621EC();
      v17 = sub_1D7264A5C();
      v18 = -1 << *(v16 + 32);
      v19 = v17 & ~v18;
      if ((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        v8 = ~v18;
        do
        {
          v20 = (*(v16 + 48) + 16 * v19);
          v21 = *v20 == v13 && v20[1] == v15;
          if (v21 || (sub_1D72646CC() & 1) != 0)
          {
            goto LABEL_11;
          }

          v19 = (v19 + 1) & v8;
        }

        while (((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
      }
    }

    swift_beginAccess();
    v22 = v14[3];
    if (*(v22 + 16))
    {
      sub_1D7264A0C();

      sub_1D72621EC();
      v23 = sub_1D7264A5C();
      v24 = -1 << *(v22 + 32);
      v25 = v23 & ~v24;
      if ((*(v22 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
      {
        v8 = ~v24;
        do
        {
          v26 = (*(v22 + 48) + 16 * v25);
          v27 = *v26 == v13 && v26[1] == v15;
          if (v27 || (sub_1D72646CC() & 1) != 0)
          {
            goto LABEL_11;
          }

          v25 = (v25 + 1) & v8;
        }

        while (((*(v22 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0);
      }
    }

    swift_beginAccess();
    v28 = v14[4];
    if (!*(v28 + 16))
    {
      goto LABEL_46;
    }

    sub_1D7264A0C();

    sub_1D72621EC();
    v29 = sub_1D7264A5C();
    v30 = -1 << *(v28 + 32);
    v31 = v29 & ~v30;
    if (((*(v28 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
    {
LABEL_45:

LABEL_46:
      v34 = *(v11[11] + 16);
      if (*(v34 + 84) == 255 || (*(v34 + 80) | (*(v34 + 84) << 32)) >> 33)
      {
      }

      else
      {
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
      }

      goto LABEL_12;
    }

    v8 = ~v30;
    while (1)
    {
      v32 = (*(v28 + 48) + 16 * v31);
      v33 = *v32 == v13 && v32[1] == v15;
      if (v33 || (sub_1D72646CC() & 1) != 0)
      {
        break;
      }

      v31 = (v31 + 1) & v8;
      if (((*(v28 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
      {
        goto LABEL_45;
      }
    }

LABEL_11:

LABEL_12:
    if (v10 == v3)
    {
      goto LABEL_53;
    }
  }

  v11 = MEMORY[0x1DA6FB460](v10, v102);
  v12 = __OFADD__(v10++, 1);
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  v35 = v111[0];
LABEL_55:

  v36 = v35 < 0 || (v35 & 0x4000000000000000) != 0;
  if (v36)
  {
    if (!sub_1D7263BFC())
    {
      goto LABEL_115;
    }

LABEL_60:
    v37 = objc_opt_self();
    [v37 begin];
    v101 = v37;
    if (v36)
    {
      v8 = sub_1D7263BFC();
      if (!v8)
      {
        goto LABEL_107;
      }
    }

    else
    {
      v8 = *(v35 + 16);
      if (!v8)
      {
LABEL_107:

        [v101 commit];
        return;
      }
    }

    v38 = 0;
    v39 = v35 & 0xC000000000000001;
    v107 = v8;
    v109 = v35 + 32;
    v103 = v35;
    v105 = v35 & 0xC000000000000001;
    while (1)
    {
      if (v39)
      {
        v40 = MEMORY[0x1DA6FB460](v38, v35);
        v12 = __OFADD__(v38++, 1);
        if (v12)
        {
          goto LABEL_109;
        }
      }

      else
      {
        if (v38 >= *(v35 + 16))
        {
          goto LABEL_110;
        }

        v40 = *(v109 + 8 * v38);

        v12 = __OFADD__(v38++, 1);
        if (v12)
        {
          goto LABEL_109;
        }
      }

      v41 = *(v40[11] + 16);
      if (*(v41 + 84) == 255)
      {
        goto LABEL_65;
      }

      v42 = *(v41 + 80);
      if (*(v41 + 84))
      {
        if (*(v41 + 84) == 1)
        {
          v43 = v40[4];
          v44 = v40[5];
          v45 = v40[6];
          v46 = v40[7];
          [v46 bounds];
          v47 = 0.0;
          if (CGRectGetHeight(v112) > 0.0)
          {
            v48 = sub_1D725EC1C();
            [v46 bounds];
            [v48 convertRect:v46 fromCoordinateSpace:?];
            v50 = v49;
            v52 = v51;
            v54 = v53;
            v56 = v55;

            v57 = sub_1D725EC1C();
            v3 = &off_1E84D3000;
            [v57 bounds];
            v59 = v58;
            v61 = v60;
            v63 = v62;
            v65 = v64;

            v113.origin.x = v59;
            v113.origin.y = v61;
            v113.size.width = v63;
            v113.size.height = v65;
            v120.origin.x = v50;
            v120.origin.y = v52;
            v120.size.width = v54;
            v120.size.height = v56;
            v114 = CGRectIntersection(v113, v120);
            Height = CGRectGetHeight(v114);
            [v46 bounds];
            v47 = Height / CGRectGetHeight(v115);
          }

          swift_beginAccess();
          v67 = *(v43 + 24);
          if (*(v67 + 16))
          {
            sub_1D7264A0C();

            sub_1D72621EC();
            v68 = sub_1D7264A5C();
            v69 = -1 << *(v67 + 32);
            v70 = v68 & ~v69;
            if ((*(v67 + 56 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70))
            {
              v3 = ~v69;
              while (1)
              {
                v71 = (*(v67 + 48) + 16 * v70);
                v72 = *v71 == v44 && v71[1] == v45;
                if (v72 || (sub_1D72646CC() & 1) != 0)
                {
                  break;
                }

                v70 = (v70 + 1) & v3;
                if (((*(v67 + 56 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
                {
                  goto LABEL_86;
                }
              }

LABEL_105:

              v35 = v103;
              goto LABEL_106;
            }

LABEL_86:

            v35 = v103;
          }

          if (v47 >= v42)
          {
            goto LABEL_102;
          }

          goto LABEL_103;
        }

LABEL_65:

        if (v38 == v8)
        {
          goto LABEL_107;
        }
      }

      else
      {
        v73 = v40[4];
        v44 = v40[5];
        v45 = v40[6];
        v74 = v40[7];
        [v74 bounds];
        v75 = 0.0;
        if (CGRectGetHeight(v116) > 0.0)
        {
          v76 = sub_1D725EC1C();
          [v74 bounds];
          [v76 convertRect:v74 fromCoordinateSpace:?];
          v78 = v77;
          v80 = v79;
          v82 = v81;
          v84 = v83;

          v85 = sub_1D725EC1C();
          v3 = &off_1E84D3000;
          [v85 bounds];
          v87 = v86;
          v89 = v88;
          v91 = v90;
          v93 = v92;

          v117.origin.x = v87;
          v117.origin.y = v89;
          v117.size.width = v91;
          v117.size.height = v93;
          v121.origin.x = v78;
          v121.origin.y = v80;
          v121.size.width = v82;
          v121.size.height = v84;
          v118 = CGRectIntersection(v117, v121);
          v94 = CGRectGetHeight(v118);
          [v74 bounds];
          v75 = v94 / CGRectGetHeight(v119);
        }

        swift_beginAccess();
        v95 = *(v73 + 32);
        if (*(v95 + 16))
        {
          sub_1D7264A0C();

          sub_1D72621EC();
          v96 = sub_1D7264A5C();
          v97 = -1 << *(v95 + 32);
          v98 = v96 & ~v97;
          if ((*(v95 + 56 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98))
          {
            v3 = ~v97;
            do
            {
              v99 = (*(v95 + 48) + 16 * v98);
              v100 = *v99 == v44 && v99[1] == v45;
              if (v100 || (sub_1D72646CC() & 1) != 0)
              {
                goto LABEL_105;
              }

              v98 = (v98 + 1) & v3;
            }

            while (((*(v95 + 56 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98) & 1) != 0);
          }

          v35 = v103;
        }

        if (v75 >= v42)
        {
LABEL_102:
          swift_beginAccess();

          sub_1D5B860D0(&v110, v44, v45);
          swift_endAccess();

          sub_1D721424C();
        }

LABEL_103:

LABEL_106:
        v39 = v105;
        v8 = v107;
        if (v38 == v107)
        {
          goto LABEL_107;
        }
      }
    }
  }

  if (*(v35 + 16))
  {
    goto LABEL_60;
  }

LABEL_115:
}