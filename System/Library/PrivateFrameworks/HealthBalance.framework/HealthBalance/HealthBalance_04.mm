uint64_t sub_1CFE04ED0(void *a1, void *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = sub_1CFE30314();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1E69E7CC8];
  v9 = [a1 currentDate];
  sub_1CFE302F4();

  v10 = sub_1CFE302D4();
  (*(v5 + 8))(v8, v4);
  *&v43 = 0;
  v11 = [a2 ageWithCurrentDate:v10 error:&v43];

  if (v11)
  {
    v12 = v43;
    v13 = [v11 integerValue];

    v14 = MEMORY[0x1E69E6530];
    v15 = MEMORY[0x1E69E6550];
    v44 = MEMORY[0x1E69E6530];
    v45 = MEMORY[0x1E69E6550];
    *&v43 = v13;
    sub_1CFDFDB80(&v43, v41);
    v16 = v40;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v16;
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
    MEMORY[0x1EEE9AC00](v18, v18);
    v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v20);
    sub_1CFE2A4AC(v20, 6645601, 0xE300000000000000, isUniquelyReferenced_nonNull_native, &v39, v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v40 = v39;
  }

  else
  {
    v22 = v43;
    v23 = sub_1CFE30184();

    swift_willThrow();
    sub_1CFE29EF0(6645601, 0xE300000000000000, &v43);
    sub_1CFE04470(&v43);
  }

  v41[0] = 0;
  v24 = [a2 biologicalSexWithError_];
  if (v24)
  {
    v25 = v24;
    v26 = v41[0];
    v27 = HKAnalyticsPropertyValueForBiologicalSex();

    v28 = sub_1CFE30924();
    v30 = v29;

    v44 = MEMORY[0x1E69E6158];
    v45 = MEMORY[0x1E69E6180];
    *&v43 = v28;
    *(&v43 + 1) = v30;
    sub_1CFDFDB80(&v43, v41);
    v31 = v40;
    LOBYTE(v27) = swift_isUniquelyReferenced_nonNull_native();
    v39 = v31;
    v32 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
    MEMORY[0x1EEE9AC00](v32, v32);
    v34 = (&v38 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v35 + 16))(v34);
    sub_1CFE2A158(*v34, v34[1], 0x6369676F6C6F6962, 0xED00007865536C61, v27, &v39);
    __swift_destroy_boxed_opaque_existential_1(v41);
    return v39;
  }

  else
  {
    v37 = v41[0];

    sub_1CFE30184();

    return swift_willThrow();
  }
}

void sub_1CFE05364(void *a1)
{
  v3 = [a1 healthDataSource];
  if (v3)
  {
    v4 = v3;
    v5 = [a1 environmentDataSource];
    v6 = sub_1CFE04ED0(v5, v4);
    if (v1)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = v6;

      sub_1CFE025C4(v7);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1CFE02570();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t sub_1CFE05494()
{
  v1 = v0;
  v2 = [v0 minimum];
  v3 = sub_1CFE2D980();

  if ([v1 isMinimumInclusive])
  {
    v4 = 46;
  }

  else
  {
    v4 = 60;
  }

  MEMORY[0x1D3876060](v4, 0xE100000000000000);

  MEMORY[0x1D3876060](46, 0xE100000000000000);
  if ([v1 isMaximumInclusive])
  {
    v5 = 46;
  }

  else
  {
    v5 = 60;
  }

  MEMORY[0x1D3876060](v5, 0xE100000000000000);

  MEMORY[0x1D3876060](0, 0xE000000000000000);

  v6 = v3;
  v7 = [v1 maximum];
  v8 = sub_1CFE2D980();
  v10 = v9;

  MEMORY[0x1D3876060](v8, v10);

  return v6;
}

id static HealthBalanceUtilities.bundle.getter()
{
  v0 = sub_1CFE308F4();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  return v1;
}

Swift::String __swiftcall HKQuantityRange.formattedValue(for:unit:)(HealthBalance::SleepingSampleDataType a1, HKUnit unit)
{
  v3 = v2;
  v5 = *a1;
  v6 = [v2 minimum];
  LOBYTE(v21) = v5;
  v7 = HKQuantity.formattedValue(for:unit:)(&v21, unit);

  *&v21 = 0;
  *(&v21 + 1) = 0xE000000000000000;
  if ([v3 isMinimumInclusive])
  {
    v8 = 46;
  }

  else
  {
    v8 = 60;
  }

  MEMORY[0x1D3876060](v8, 0xE100000000000000);

  MEMORY[0x1D3876060](46, 0xE100000000000000);
  if ([v3 isMaximumInclusive])
  {
    v9 = 46;
  }

  else
  {
    v9 = 60;
  }

  MEMORY[0x1D3876060](v9, 0xE100000000000000);
  v10 = v21;
  v11 = *(&v21 + 1);
  v21 = v7;

  MEMORY[0x1D3876060](v10, v11);

  v14 = v21;
  object = v14._object;
  countAndFlagsBits = v14._countAndFlagsBits;
  v15 = [v3 maximum];
  LOBYTE(v21) = v5;
  v16 = HKQuantity.formattedValue(for:unit:)(&v21, unit);

  v21 = __PAIR128__(object, countAndFlagsBits);

  MEMORY[0x1D3876060](v16._countAndFlagsBits, v16._object);

  v19 = v21;
  v18 = v19._object;
  v17 = v19._countAndFlagsBits;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

uint64_t Optional<A>.formattedValue(for:unit:)(char *a1, HKUnit a2, uint64_t a3)
{
  if (!a3)
  {
    return 0x9380E29380E2;
  }

  v4 = *a1;
  return HKQuantityRange.formattedValue(for:unit:)(&v4, a2)._countAndFlagsBits;
}

uint64_t static Calendar.gregorianPacific.getter()
{
  sub_1CFE068C8(0, &qword_1EDC31988, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v11 - v2;
  v4 = sub_1CFE30404();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E6969868], v4);
  sub_1CFE30414();
  (*(v5 + 8))(v8, v4);
  sub_1CFE304C4();
  v9 = sub_1CFE304E4();
  result = (*(*(v9 - 8) + 48))(v3, 1, v9);
  if (result != 1)
  {
    return sub_1CFE304A4();
  }

  __break(1u);
  return result;
}

uint64_t Calendar.date(matching:onMorningIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v56 = a3;
  v4 = sub_1CFE30434();
  v68 = *(v4 - 8);
  v69 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v62 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CFE30444();
  v66 = *(v7 - 8);
  v67 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v65 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFE30424();
  v11 = *(v10 - 8);
  v72 = v10;
  v73 = v11;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE068C8(0, &qword_1EDC31988, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v55 - v17;
  sub_1CFE068C8(0, &qword_1EDC32910, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v55 - v21;
  v23 = sub_1CFE30134();
  v63 = *(v23 - 8);
  v64 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1CFE30314();
  v60 = *(v27 - 8);
  v61 = v27;
  MEMORY[0x1EEE9AC00](v27, v28);
  v71 = &v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE068C8(0, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v59 = &v55 - v32;
  v33 = objc_opt_self();
  v34 = sub_1CFE307A4();
  v35 = sub_1CFE30454();
  v36 = [v33 hk:v34 sleepDayStartForMorningIndex:v35 calendar:?];

  sub_1CFE302F4();
  v37 = sub_1CFE304B4();
  (*(*(v37 - 8) + 56))(v22, 1, 1, v37);
  v38 = sub_1CFE304E4();
  (*(*(v38 - 8) + 56))(v18, 1, 1, v38);
  v57 = a1;
  v58 = v26;
  sub_1CFE30124();
  (*(v73 + 104))(v14, *MEMORY[0x1E69698A0], v72);
  v39 = v65;
  v40 = v66;
  v41 = v67;
  (*(v66 + 104))(v65, *MEMORY[0x1E69699C8], v67);
  v43 = v68;
  v42 = v69;
  v44 = v62;
  (*(v68 + 104))(v62, *MEMORY[0x1E6969998], v69);
  v45 = v59;
  v46 = v14;
  v47 = v39;
  v48 = v44;
  sub_1CFE30484();
  v49 = v42;
  v51 = v60;
  v50 = v61;
  (*(v43 + 8))(v48, v49);
  (*(v40 + 8))(v47, v41);
  (*(v73 + 8))(v46, v72);
  (*(v63 + 8))(v58, v64);
  (*(v51 + 8))(v71, v50);
  if ((*(v51 + 48))(v45, 1, v50) != 1)
  {
    return (*(v51 + 32))(v56, v45, v50);
  }

  sub_1CFE0691C(v45);
  _s5ErrorOMa(0);
  sub_1CFE07870(&qword_1EC509850, _s5ErrorOMa, &unk_1CFE36C44);
  swift_allocError();
  v52 = v70;
  *v53 = v57;
  v53[1] = v52;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t Calendar.date(onMorningIndex:matchingHour:matchingMinute:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v51 = a2;
  v42[1] = a1;
  v54 = a3;
  v3 = sub_1CFE30434();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v44 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CFE30444();
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v48 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CFE30424();
  v55 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE068C8(0, &qword_1EDC31988, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v42 - v15;
  sub_1CFE068C8(0, &qword_1EDC32910, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = v42 - v19;
  v21 = sub_1CFE30134();
  v46 = *(v21 - 8);
  v47 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1CFE30314();
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v25);
  v27 = v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = objc_opt_self();
  v29 = sub_1CFE307A4();
  v30 = sub_1CFE30454();
  v31 = [v28 hk:v29 sleepDayStartForMorningIndex:v30 calendar:?];

  sub_1CFE302F4();
  v32 = sub_1CFE304B4();
  (*(*(v32 - 8) + 56))(v20, 1, 1, v32);
  v33 = sub_1CFE304E4();
  (*(*(v33 - 8) + 56))(v16, 1, 1, v33);
  v42[0] = v24;
  sub_1CFE30124();
  v34 = v9;
  (*(v55 + 104))(v12, *MEMORY[0x1E69698A0], v9);
  v36 = v48;
  v35 = v49;
  v37 = v50;
  (*(v49 + 104))(v48, *MEMORY[0x1E69699C8], v50);
  v39 = v52;
  v38 = v53;
  v40 = v44;
  (*(v52 + 104))(v44, *MEMORY[0x1E6969998], v53);
  sub_1CFE30484();
  (*(v39 + 8))(v40, v38);
  (*(v35 + 8))(v36, v37);
  (*(v55 + 8))(v12, v34);
  (*(v46 + 8))(v42[0], v47);
  return (*(v43 + 8))(v27, v45);
}

void sub_1CFE068C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFE30C74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1CFE0691C(uint64_t a1)
{
  sub_1CFE068C8(0, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s5ErrorOMa(uint64_t a1)
{
  result = qword_1EC509E70;
  if (!qword_1EC509E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Calendar.dateInterval(start:end:onMorningIndex:)@<X0>(void *a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(char *, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  v133 = a3;
  v134 = a4;
  v140 = a2;
  v106 = a6;
  v146 = sub_1CFE30434();
  v150 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146, v8);
  v145 = v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_1CFE30444();
  v149 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143, v10);
  v144 = v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1CFE30424();
  v152 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151, v12);
  v142 = v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE068C8(0, &qword_1EDC31988, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = v104 - v16;
  sub_1CFE068C8(0, &qword_1EDC32910, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = v104 - v20;
  v141 = sub_1CFE30134();
  v148 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141, v22);
  v24 = v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE068C8(0, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v131 = v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v135 = (v104 - v30);
  v138 = sub_1CFE30314();
  v136 = *(v138 - 8);
  v32 = MEMORY[0x1EEE9AC00](v138, v31);
  v105 = v104 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v107 = v104 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35, v37);
  v147 = v104 - v39;
  MEMORY[0x1EEE9AC00](v38, v40);
  v137 = v104 - v41;
  v42 = objc_opt_self();
  v132 = a5;
  v43 = sub_1CFE307A4();
  v44 = sub_1CFE30454();
  v127 = v42;
  v45 = [v42 hk:v43 sleepDayStartForMorningIndex:v44 calendar:?];

  sub_1CFE302F4();
  v46 = sub_1CFE304B4();
  v47 = *(v46 - 8);
  v48 = *(v47 + 56);
  v126 = v46;
  v125 = v48;
  v124 = v47 + 56;
  (v48)(v21, 1, 1);
  v49 = sub_1CFE304E4();
  v50 = *(v49 - 8);
  v51 = *(v50 + 56);
  v123 = v49;
  v122 = v51;
  v121 = v50 + 56;
  (v51)(v17, 1, 1);
  v129 = a1;
  v139 = v24;
  v128 = v21;
  v130 = v17;
  sub_1CFE30124();
  v52 = *(v152 + 104);
  v53 = v142;
  v119 = *MEMORY[0x1E69698A0];
  v120 = v152 + 104;
  v118 = v52;
  v52(v142);
  v54 = v149;
  v55 = *(v149 + 104);
  v56 = v144;
  v116 = *MEMORY[0x1E69699C8];
  v57 = v143;
  v117 = v149 + 104;
  v115 = v55;
  v55(v144);
  v58 = v150;
  v59 = *(v150 + 104);
  v60 = v145;
  v113 = *MEMORY[0x1E6969998];
  v61 = v146;
  v114 = v150 + 104;
  v112 = v59;
  v59(v145);
  v62 = v135;
  v63 = v53;
  v64 = v56;
  sub_1CFE30484();
  v65 = *(v58 + 8);
  v150 = v58 + 8;
  v111 = v65;
  v65(v60, v61);
  v66 = *(v54 + 8);
  v67 = v136;
  v149 = v54 + 8;
  v66(v64, v57);
  v68 = *(v152 + 8);
  v152 += 8;
  v110 = v68;
  v68(v63, v151);
  v69 = *(v148 + 8);
  v148 += 8;
  v69(v139, v141);
  v70 = v67 + 1;
  v71 = v67[1];
  v72 = v138;
  v71();
  v73 = v67[6];
  v109 = v67 + 6;
  v108 = v73;
  if (v73(v62, 1, v72) == 1)
  {
    sub_1CFE0691C(v62);
    _s5ErrorOMa(0);
    sub_1CFE07870(&qword_1EC509850, _s5ErrorOMa, &unk_1CFE36C44);
    swift_allocError();
    v74 = v140;
    *v75 = v129;
    v75[1] = v74;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    v77 = v67[4];
    v129 = v67 + 4;
    v104[0] = v77;
    v77(v137, v62, v72);
    v78 = sub_1CFE307A4();
    v79 = sub_1CFE30454();
    v80 = [v127 hk:v78 sleepDayStartForMorningIndex:v79 calendar:?];

    sub_1CFE302F4();
    v125(v128, 1, 1, v126);
    v122(v130, 1, 1, v123);
    v140 = v69;
    v81 = v139;
    sub_1CFE30124();
    v135 = v71;
    v82 = v142;
    v118(v142, v119, v151);
    v132 = v66;
    v83 = v143;
    v84 = v144;
    v115(v144, v116, v143);
    v104[1] = v70;
    v86 = v145;
    v85 = v146;
    v112(v145, v113, v146);
    v87 = v131;
    v88 = v147;
    sub_1CFE30484();
    v111(v86, v85);
    v132(v84, v83);
    v110(v82, v151);
    v89 = v81;
    v90 = v138;
    v140(v89, v141);
    v91 = v135;
    (v135)(v88, v90);
    if (v108(v87, 1, v90) == 1)
    {
      sub_1CFE0691C(v87);
      _s5ErrorOMa(0);
      sub_1CFE07870(&qword_1EC509850, _s5ErrorOMa, &unk_1CFE36C44);
      swift_allocError();
      v92 = v134;
      *v93 = v133;
      v93[1] = v92;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return (v91)(v137, v90);
    }

    else
    {
      v94 = v107;
      (v104[0])(v107, v87, v90);
      sub_1CFE07870(&qword_1EDC32030, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      if (sub_1CFE30874())
      {
        v95 = v137;
        v96 = v136[2];
        v96(v88, v137, v90);
        v96(v105, v94, v90);
        sub_1CFE2FFE4();
        (v91)(v94, v90);
        return (v91)(v95, v90);
      }

      else
      {
        v152 = _s5ErrorOMa(0);
        sub_1CFE07870(&qword_1EC509850, _s5ErrorOMa, &unk_1CFE36C44);
        swift_allocError();
        v98 = v97;
        sub_1CFE078B8(0);
        v100 = *(v99 + 48);
        v101 = v136[2];
        v102 = v91;
        v103 = v137;
        v101(v98, v137, v90);
        v101(v98 + v100, v94, v90);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (v102)(v94, v90);
        return (v102)(v103, v90);
      }
    }
  }
}

uint64_t sub_1CFE07870(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1CFE078B8(uint64_t a1)
{
  if (!qword_1EC509858)
  {
    sub_1CFE30314();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC509858);
    }
  }
}

void sub_1CFE07920(uint64_t a1)
{
  sub_1CFE078B8(319);
  if (v1 <= 0x3F)
  {
    sub_1CFE07994();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1CFE07994()
{
  if (!qword_1EC509E80)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC509E80);
    }
  }
}

HealthBalance::TrainingLoadBand __swiftcall TrainingLoadBand.init(fractionalDifferenceFromChronicBaseline:)(Swift::Double fractionalDifferenceFromChronicBaseline)
{
  if (qword_1EC509440 != -1)
  {
LABEL_19:
    v13 = v1;
    v14 = fractionalDifferenceFromChronicBaseline;
    result = swift_once();
    fractionalDifferenceFromChronicBaseline = v14;
    v1 = v13;
  }

  v2 = 0;
  v3 = 1 << *(off_1EC509E88 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(off_1EC509E88 + 8);
  v6 = (v3 + 63) >> 6;
  do
  {
    if (!v5)
    {
      while (1)
      {
        v7 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        if (v7 >= v6)
        {
          v12 = 4 * (fractionalDifferenceFromChronicBaseline > 0.0);
          goto LABEL_17;
        }

        v5 = *(off_1EC509E88 + v7 + 8);
        ++v2;
        if (v5)
        {
          v2 = v7;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

    v7 = v2;
LABEL_11:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v9 = v8 | (v7 << 6);
    v10 = (*(off_1EC509E88 + 7) + 16 * v9);
  }

  while (*v10 > fractionalDifferenceFromChronicBaseline || v10[1] <= fractionalDifferenceFromChronicBaseline);
  v12 = *(*(off_1EC509E88 + 6) + v9);
LABEL_17:
  *v1 = v12;
  return result;
}

HealthBalance::TrainingLoadBand __swiftcall TrainingLoadBand.init(value:baseline:)(Swift::Double value, Swift::Double baseline)
{
  v4 = v2;
  if (baseline == 0.0)
  {
    if (qword_1EDC32570 != -1)
    {
      swift_once();
    }

    v5 = sub_1CFE30624();
    __swift_project_value_buffer(v5, qword_1EDC32578);
    v6 = sub_1CFE30604();
    v7 = sub_1CFE30C04();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = value;
      _os_log_impl(&dword_1CFDA3000, v6, v7, "Tried to create a band with a baseline of 0 and value of %f", v8, 0xCu);
      MEMORY[0x1D3876FF0](v8, -1, -1);
    }

    result = TrainingLoadBand.init(fractionalDifferenceFromChronicBaseline:)(0.0);
    v10 = v11;
  }

  else
  {
    result = TrainingLoadBand.init(fractionalDifferenceFromChronicBaseline:)((value - baseline) / baseline);
    v10 = v12;
  }

  *v4 = v10;
  return result;
}

uint64_t TrainingLoadBand.valueRangeForBand(baseline:)(uint64_t a1, char a2)
{
  v5 = *v2;
  if (qword_1EC509440 != -1)
  {
    v13 = *v2;
    swift_once();
    v5 = v13;
  }

  v6 = off_1EC509E88;
  if (!*(off_1EC509E88 + 2))
  {
    goto LABEL_10;
  }

  result = sub_1CFDFC438(v5);
  if ((v8 & 1) == 0)
  {
    goto LABEL_10;
  }

  v9 = (v6[7] + 16 * result);
  v10 = 0.0;
  v11 = *v9 * *&a1 + *&a1;
  v12 = 1.0;
  if (a2)
  {
    v11 = *v9 + 0.0;
  }

  else
  {
    v12 = *&a1;
    v10 = *&a1;
  }

  if (v11 > v10 + v12 * v9[1])
  {
    __break(1u);
LABEL_10:
    result = sub_1CFE30ED4();
    __break(1u);
  }

  return result;
}

void *sub_1CFE07D64()
{
  result = sub_1CFDFD0EC(&unk_1F4C89F18);
  off_1EC509E88 = result;
  return result;
}

HealthBalance::TrainingLoadBand_optional __swiftcall TrainingLoadBand.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1CFE07E78()
{
  result = qword_1EC509E90;
  if (!qword_1EC509E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509E90);
  }

  return result;
}

unint64_t sub_1CFE07ED0()
{
  result = qword_1EC509E98;
  if (!qword_1EC509E98)
  {
    sub_1CFE07F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509E98);
  }

  return result;
}

void sub_1CFE07F28()
{
  if (!qword_1EC509EA0)
  {
    v0 = sub_1CFE30AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC509EA0);
    }
  }
}

unint64_t sub_1CFE07F94()
{
  result = qword_1EC509EA8;
  if (!qword_1EC509EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509EA8);
  }

  return result;
}

HealthBalance::TrainingLoadQueryType_optional __swiftcall TrainingLoadQueryType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t TrainingLoadDaySummaryQueryConfiguration.typeOfDataRequested.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_typeOfDataRequested;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

id TrainingLoadDaySummaryQueryConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TrainingLoadDaySummaryQueryConfiguration.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_gregorianCalendar;
  v3 = sub_1CFE304B4();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_morningIndexRange;
  sub_1CFDA7AD0(0);
  (*(*(v5 - 8) + 56))(&v0[v4], 1, 1, v5);
  v0[OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_typeOfDataRequested] = 3;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

_OWORD *TrainingLoadDaySummaryQueryConfiguration.copy(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = MEMORY[0x1E69E6720];
  sub_1CFDB6C90(0, &qword_1EDC320D8, sub_1CFDA7AD0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v26[-v10];
  sub_1CFDB6C90(0, &qword_1EDC32910, MEMORY[0x1E6969AE8], v7);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v26[-v14];
  v29.receiver = v3;
  v29.super_class = ObjectType;
  objc_msgSendSuper2(&v29, sel_copyWithZone_, a1);
  sub_1CFE30CE4();
  swift_unknownObjectRelease();
  sub_1CFDAC5F0(v30, v28);
  if (!swift_dynamicCast())
  {
    return sub_1CFDFDC04(v30, a2);
  }

  v16 = v27;
  v17 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_gregorianCalendar;
  swift_beginAccess();
  v18 = MEMORY[0x1E6969AE8];
  sub_1CFDA6188(v3 + v17, v15, &qword_1EDC32910, MEMORY[0x1E6969AE8]);
  v19 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_gregorianCalendar;
  swift_beginAccess();
  sub_1CFE08638(v15, v16 + v19, &qword_1EDC32910, v18);
  swift_endAccess();
  v20 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_morningIndexRange;
  swift_beginAccess();
  sub_1CFDA6188(v3 + v20, v11, &qword_1EDC320D8, sub_1CFDA7AD0);
  v21 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_morningIndexRange;
  swift_beginAccess();
  sub_1CFE08638(v11, v16 + v21, &qword_1EDC320D8, sub_1CFDA7AD0);
  swift_endAccess();
  v22 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_typeOfDataRequested;
  swift_beginAccess();
  v23 = *(v3 + v22);
  v24 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_typeOfDataRequested;
  swift_beginAccess();
  *(v16 + v24) = v23;
  *(a2 + 24) = ObjectType;
  *a2 = v16;
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t sub_1CFE08638(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1CFDB6C90(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

id TrainingLoadDaySummaryQueryConfiguration.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t TrainingLoadDaySummaryQueryConfiguration.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1CFDA7460(0);
  v67 = v4;
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v66 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v8);
  v62 = &v58 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1CFDB6C90(0, &qword_1EDC320D8, sub_1CFDA7AD0, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v70 = &v58 - v13;
  sub_1CFDB6C90(0, &qword_1EDC32910, MEMORY[0x1E6969AE8], v10);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v58 - v16;
  v71 = sub_1CFE307E4();
  v18 = *(v71 - 8);
  v20 = MEMORY[0x1EEE9AC00](v71, v19);
  v68 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v58 - v23;
  v25 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_gregorianCalendar;
  v26 = sub_1CFE304B4();
  v27 = *(*(v26 - 8) + 56);
  v27(&v1[v25], 1, 1, v26);
  v28 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_morningIndexRange;
  sub_1CFDA7AD0(0);
  v30 = *(v29 - 8);
  v64 = *(v30 + 56);
  v65 = v29;
  v63 = v30 + 56;
  v64(&v1[v28], 1, 1);
  v1[OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_typeOfDataRequested] = 3;
  v75.receiver = v1;
  v75.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v75, sel_initWithCoder_, a1);
  if (!v31)
  {

    return v31;
  }

  v69 = v18;
  v32 = sub_1CFE308F4();
  [a1 decodeIntegerForKey_];

  sub_1CFE30744();
  v33 = sub_1CFE308F4();
  v61 = [a1 decodeIntegerForKey_];

  sub_1CFDB6C90(0, &qword_1EDC316F0, sub_1CFE08EF8, MEMORY[0x1E69E6F90]);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1CFE324E0;
  *(v34 + 32) = sub_1CFE08F44();
  sub_1CFE30C44();

  if (!v74)
  {
    (*(v69 + 8))(v24, v71);

    sub_1CFE09528(v73, sub_1CFDC3B78);
    return 0;
  }

  v60 = a1;
  v35 = swift_dynamicCast();
  v36 = v71;
  if ((v35 & 1) == 0)
  {
    (*(v69 + 8))(v24, v71);

    return 0;
  }

  v59 = v72;
  sub_1CFE30474();
  v27(v17, 0, 1, v26);
  v37 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_gregorianCalendar;
  swift_beginAccess();
  sub_1CFE08638(v17, v31 + v37, &qword_1EDC32910, MEMORY[0x1E6969AE8]);
  swift_endAccess();
  v38 = v68;
  sub_1CFE30754();
  sub_1CFDA78C8(&qword_1EDC32CA8, MEMORY[0x1E696B430]);
  result = sub_1CFE30874();
  v40 = v69;
  if (result)
  {
    v41 = v62;
    (*(v69 + 16))(v62, v24, v36);
    v42 = v67;
    v43 = *(v40 + 32);
    v43(v41 + *(v67 + 48), v38, v36);
    v44 = v66;
    sub_1CFDE4928(v41, v66);
    v45 = *(v42 + 48);
    v68 = v24;
    v43(v70, v44, v36);
    v46 = *(v40 + 8);
    v46(v44 + v45, v36);
    sub_1CFDE49B0(v41, v44);
    v47 = *(v42 + 48);
    v48 = v65;
    v49 = v70;
    v43(&v70[*(v65 + 36)], (v44 + v47), v36);
    v50 = v44;
    v51 = v36;
    v46(v50, v36);
    (v64)(v49, 0, 1, v48);
    v52 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_morningIndexRange;
    swift_beginAccess();
    sub_1CFE08638(v49, v31 + v52, &qword_1EDC320D8, sub_1CFDA7AD0);
    swift_endAccess();
    v53 = sub_1CFE308F4();
    v54 = v60;
    v55 = [v60 decodeIntegerForKey_];

    v46(v68, v51);
    if (v55 >= 3)
    {
      v56 = 3;
    }

    else
    {
      v56 = v55;
    }

    v57 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_typeOfDataRequested;
    swift_beginAccess();
    *(v31 + v57) = v56;
    return v31;
  }

  __break(1u);
  return result;
}

unint64_t sub_1CFE08EF8()
{
  result = qword_1EDC316E0;
  if (!qword_1EDC316E0)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EDC316E0);
  }

  return result;
}

unint64_t sub_1CFE08F44()
{
  result = qword_1EDC31870;
  if (!qword_1EDC31870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC31870);
  }

  return result;
}

Swift::Void __swiftcall TrainingLoadDaySummaryQueryConfiguration.encode(with:)(NSCoder with)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1CFE307E4();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E6720];
  sub_1CFDB6C90(0, &qword_1EDC320D8, sub_1CFDA7AD0, MEMORY[0x1E69E6720]);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v45 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v43 - v15;
  v17 = MEMORY[0x1E6969AE8];
  sub_1CFDB6C90(0, &qword_1EDC32910, MEMORY[0x1E6969AE8], v9);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v43 - v20;
  v47.receiver = v2;
  v47.super_class = ObjectType;
  objc_msgSendSuper2(&v47, sel_encodeWithCoder_, with.super.isa);
  v22 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_gregorianCalendar;
  swift_beginAccess();
  sub_1CFDA6188(&v2[v22], v21, &qword_1EDC32910, v17);
  v23 = sub_1CFE304B4();
  v24 = *(v23 - 8);
  v25 = 0;
  if ((*(v24 + 48))(v21, 1, v23) != 1)
  {
    v25 = sub_1CFE30454();
    (*(v24 + 8))(v21, v23);
  }

  v26 = sub_1CFE308F4();
  [(objc_class *)with.super.isa encodeObject:v25 forKey:v26];
  swift_unknownObjectRelease();

  v27 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_morningIndexRange;
  swift_beginAccess();
  sub_1CFDA6188(&v2[v27], v16, &qword_1EDC320D8, sub_1CFDA7AD0);
  sub_1CFDA7AD0(0);
  v29 = v28;
  v30 = *(*(v28 - 8) + 48);
  if (v30(v16, 1, v28) == 1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v31 = v43;
  v32 = v8;
  v33 = v8;
  v34 = v44;
  (*(v43 + 16))(v33, v16, v44);
  sub_1CFE09528(v16, sub_1CFDA7AD0);
  v35 = sub_1CFE307A4();
  (*(v31 + 8))(v32, v34);
  v36 = sub_1CFE308F4();
  [(objc_class *)with.super.isa encodeInteger:v35 forKey:v36];

  v37 = v45;
  sub_1CFDA6188(&v2[v27], v45, &qword_1EDC320D8, sub_1CFDA7AD0);
  if (v30(v37, 1, v29) == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1CFDA78C8(&unk_1EDC31E78, MEMORY[0x1E696B448]);
  sub_1CFE30CA4();
  v38 = v46;
  sub_1CFE09528(v37, sub_1CFDA7AD0);
  v39 = sub_1CFE308F4();
  [(objc_class *)with.super.isa encodeInteger:v38 forKey:v39];

  v40 = OBJC_IVAR____TtC13HealthBalance40TrainingLoadDaySummaryQueryConfiguration_typeOfDataRequested;
  swift_beginAccess();
  v41 = v2[v40];
  if (v41 != 3)
  {
    v42 = sub_1CFE308F4();
    [(objc_class *)with.super.isa encodeInteger:v41 forKey:v42];

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_1CFE09528(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id TrainingLoadDaySummaryQueryConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1CFE0962C()
{
  result = qword_1EC509EB0;
  if (!qword_1EC509EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509EB0);
  }

  return result;
}

uint64_t type metadata accessor for TrainingLoadDaySummaryQueryConfiguration(uint64_t a1)
{
  result = qword_1EDC31E90;
  if (!qword_1EDC31E90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFE0975C(uint64_t a1)
{
  sub_1CFDB6C90(319, &qword_1EDC32910, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1CFDB6C90(319, &qword_1EDC320D8, sub_1CFDA7AD0, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1CFE0988C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1CFDB6C90(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1CFE098FC()
{
  result = qword_1EC509EB8;
  if (!qword_1EC509EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509EB8);
  }

  return result;
}

unint64_t sub_1CFE099A4()
{
  result = qword_1EC509EC0;
  if (!qword_1EC509EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509EC0);
  }

  return result;
}

unint64_t sub_1CFE099FC()
{
  result = qword_1EC509EC8;
  if (!qword_1EC509EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509EC8);
  }

  return result;
}

unint64_t sub_1CFE09A54()
{
  result = qword_1EC509ED0;
  if (!qword_1EC509ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509ED0);
  }

  return result;
}

unint64_t sub_1CFE09AAC()
{
  result = qword_1EC509ED8;
  if (!qword_1EC509ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509ED8);
  }

  return result;
}

uint64_t SleepingSampleAggregateDaySummary.morningIndex.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CFE307E4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for SleepingSampleAggregateDaySummary(uint64_t a1)
{
  result = qword_1EDC32720;
  if (!qword_1EDC32720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SleepingSampleAggregateDaySummary.init(morningIndex:heartRate:bloodOxygen:respiratoryRate:wristTemperature:timeAsleep:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_1CFE307E4();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v15 = type metadata accessor for SleepingSampleAggregateDaySummary(0);
  sub_1CFE09E34(a2, a7 + v15[5]);
  sub_1CFE09E34(a3, a7 + v15[6]);
  sub_1CFE09E34(a4, a7 + v15[7]);
  sub_1CFE09E34(a5, a7 + v15[8]);
  v16 = a7 + v15[9];

  return sub_1CFE09E34(a6, v16);
}

uint64_t sub_1CFE09E34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleAggregate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t SleepingSampleAggregateDaySummary.description.getter()
{
  sub_1CFE30DB4();

  sub_1CFE307A4();
  v0 = sub_1CFE31074();
  MEMORY[0x1D3876060](v0);

  MEMORY[0x1D3876060](0x203A7268202CLL, 0xE600000000000000);
  type metadata accessor for SleepingSampleAggregateDaySummary(0);
  v1 = SleepingSampleAggregate.description.getter();
  MEMORY[0x1D3876060](v1);

  MEMORY[0x1D3876060](0x203A8282E24F202CLL, 0xA800000000000000);
  v2 = SleepingSampleAggregate.description.getter();
  MEMORY[0x1D3876060](v2);

  MEMORY[0x1D3876060](0x203A7272202CLL, 0xE600000000000000);
  v3 = SleepingSampleAggregate.description.getter();
  MEMORY[0x1D3876060](v3);

  MEMORY[0x1D3876060](0x203A7477202CLL, 0xE600000000000000);
  v4 = SleepingSampleAggregate.description.getter();
  MEMORY[0x1D3876060](v4);

  MEMORY[0x1D3876060](0x203A7A7A20, 0xE500000000000000);
  v5 = SleepingSampleAggregate.description.getter();
  MEMORY[0x1D3876060](v5);

  MEMORY[0x1D3876060](41, 0xE100000000000000);
  return 0xD000000000000022;
}

uint64_t SleepingSampleAggregateDaySummary.latestSampleEnd.getter@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = sub_1CFE30314();
  v52 = *(v2 - 8);
  v53 = v2;
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v51 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v50 = &v47 - v7;
  v8 = sub_1CFE30014();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v49 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v48 = &v47 - v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v47 - v17;
  sub_1CFDDBC88(0);
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SleepingSampleAggregateDaySummary(0);
  v25 = v1 + *(v24 + 36);
  v26 = *(type metadata accessor for SleepingSampleAggregate(0) + 28);
  v27 = v1 + *(v24 + 32);
  v28 = *(v20 + 56);
  v29 = MEMORY[0x1E6968130];
  sub_1CFDA9A14(v25 + v26, v23, &qword_1EDC32C78, MEMORY[0x1E6968130]);
  sub_1CFDA9A14(v27 + v26, &v23[v28], &qword_1EDC32C78, v29);
  v30 = *(v9 + 48);
  LODWORD(v20) = v30(v23, 1, v8);
  v31 = v30(&v23[v28], 1, v8);
  if (v20 == 1)
  {
    if (v31 == 1)
    {
      v32 = 1;
      v33 = v54;
LABEL_8:
      v36 = v52;
      v35 = v53;
      return (*(v36 + 56))(v33, v32, 1, v35);
    }

    (*(v9 + 32))(v18, &v23[v28], v8);
LABEL_7:
    v33 = v54;
    sub_1CFE2FFD4();
    (*(v9 + 8))(v18, v8);
    v32 = 0;
    goto LABEL_8;
  }

  v34 = *(v9 + 32);
  if (v31 == 1)
  {
    v34(v18, v23, v8);
    goto LABEL_7;
  }

  v37 = v48;
  v34(v48, v23, v8);
  v38 = v49;
  v34(v49, &v23[v28], v8);
  v39 = v50;
  sub_1CFE2FFD4();
  v40 = v51;
  sub_1CFE2FFD4();
  sub_1CFE0CDF4(&qword_1EDC32030, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v41 = v53;
  v42 = sub_1CFE30864();
  v43 = *(v9 + 8);
  v43(v38, v8);
  v43(v37, v8);
  v36 = v52;
  if (v42)
  {
    v44 = v39;
  }

  else
  {
    v44 = v40;
  }

  if (v42)
  {
    v45 = v40;
  }

  else
  {
    v45 = v39;
  }

  (*(v52 + 8))(v44, v41);
  v33 = v54;
  (*(v36 + 32))(v54, v45, v41);
  v35 = v41;
  v32 = 0;
  return (*(v36 + 56))(v33, v32, 1, v35);
}

uint64_t sub_1CFE0A4F4()
{
  v1 = *v0;
  v2 = 0x49676E696E726F6DLL;
  v3 = 0x7461726970736572;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0x656C7341656D6974;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7461527472616568;
  if (v1 != 1)
  {
    v5 = 0x79784F646F6F6C62;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CFE0A5D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CFE0CBD0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CFE0A600(uint64_t a1)
{
  v2 = sub_1CFE0C790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFE0A63C(uint64_t a1)
{
  v2 = sub_1CFE0C790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SleepingSampleAggregateDaySummary.encode(to:)(void *a1)
{
  sub_1CFE0C848(0, &qword_1EC509EE0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFE0C790();
  sub_1CFE311A4();
  v16 = 0;
  sub_1CFE307E4();
  sub_1CFE0CDF4(&qword_1EDC318C8, MEMORY[0x1E696B418], MEMORY[0x1E696B420]);
  sub_1CFE31054();
  if (!v1)
  {
    type metadata accessor for SleepingSampleAggregateDaySummary(0);
    v15 = 1;
    type metadata accessor for SleepingSampleAggregate(0);
    sub_1CFE0CDF4(&qword_1EDC31950, type metadata accessor for SleepingSampleAggregate, &protocol conformance descriptor for SleepingSampleAggregate);
    sub_1CFE31054();
    v14 = 2;
    sub_1CFE31054();
    v13 = 3;
    sub_1CFE31054();
    v12 = 4;
    sub_1CFE31054();
    v11 = 5;
    sub_1CFE31054();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t SleepingSampleAggregateDaySummary.hash(into:)(uint64_t a1)
{
  v132 = sub_1CFE30314();
  v136 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132, v2);
  v134 = &v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1E69E6720];
  sub_1CFE0C7E4(0, &qword_1EDC32C70, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v130 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v128 = &v117 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v125 = &v117 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v122 = &v117 - v17;
  MEMORY[0x1EEE9AC00](v16, v18);
  v119 = &v117 - v19;
  v139 = sub_1CFE30014();
  v135 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139, v20);
  v133 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE0C7E4(0, &qword_1EDC32C78, MEMORY[0x1E6968130], v4);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v129 = &v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v126 = &v117 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v123 = &v117 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v120 = &v117 - v34;
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = &v117 - v36;
  sub_1CFDAC3A0(0);
  v39 = v38;
  v137 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v40);
  v42 = &v117 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE0C7E4(0, &qword_1EDC32CB0, sub_1CFDAC3A0, v4);
  v45 = MEMORY[0x1EEE9AC00](v43 - 8, v44);
  v127 = &v117 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v45, v47);
  v124 = &v117 - v49;
  v51 = MEMORY[0x1EEE9AC00](v48, v50);
  v121 = &v117 - v52;
  v54 = MEMORY[0x1EEE9AC00](v51, v53);
  v118 = &v117 - v55;
  MEMORY[0x1EEE9AC00](v54, v56);
  v58 = &v117 - v57;
  v59 = sub_1CFE307E4();
  v60 = sub_1CFE0CDF4(&qword_1EC509638, MEMORY[0x1E696B418], MEMORY[0x1E696B428]);
  sub_1CFE30834();
  v146 = type metadata accessor for SleepingSampleAggregateDaySummary(0);
  v147 = v60;
  v61 = v146[5];
  v148 = v59;
  v149 = v1;
  v62 = v1 + v61;
  sub_1CFE30834();
  v63 = type metadata accessor for SleepingSampleAggregate(0);
  v64 = sub_1CFE304B4();
  v65 = sub_1CFE0CDF4(&qword_1EC509640, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  v145 = v64;
  v142 = v65;
  sub_1CFE30834();
  v66 = v137;
  sub_1CFDA9A14(v62 + v63[6], v58, &qword_1EDC32CB0, sub_1CFDAC3A0);
  v143 = *(v66 + 48);
  v144 = v66 + 48;
  v67 = v143(v58, 1, v39);
  v131 = v42;
  if (v67 == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    (*(v66 + 32))(v42, v58, v39);
    sub_1CFE31164();
    sub_1CFDC6B88();
    sub_1CFE30834();
    (*(v66 + 8))(v42, v39);
  }

  sub_1CFDA9A14(v62 + v63[7], v37, &qword_1EDC32C78, MEMORY[0x1E6968130]);
  v68 = v135;
  v69 = v139;
  v140 = *(v135 + 48);
  v141 = v135 + 48;
  if (v140(v37, 1, v139) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v70 = v133;
    (*(v68 + 32))(v133, v37, v69);
    sub_1CFE31164();
    sub_1CFE0CDF4(&qword_1EC509648, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
    sub_1CFE30834();
    (*(v68 + 8))(v70, v69);
  }

  v71 = v119;
  sub_1CFDA9A14(v62 + v63[8], v119, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v72 = v136;
  v73 = v132;
  v138 = *(v136 + 48);
  v139 = v136 + 48;
  if (v138(v71, 1, v132) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v74 = v134;
    (*(v72 + 32))(v134, v71, v73);
    sub_1CFE31164();
    sub_1CFE0CDF4(&qword_1EC509650, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1CFE30834();
    v75 = v74;
    v68 = v135;
    (*(v72 + 8))(v75, v73);
  }

  v76 = v137;
  MEMORY[0x1D3876810](*(v62 + v63[9]));
  v77 = v149 + v146[6];
  sub_1CFE30834();
  sub_1CFE30834();
  v78 = v118;
  sub_1CFDA9A14(v77 + v63[6], v118, &qword_1EDC32CB0, sub_1CFDAC3A0);
  if (v143(v78, 1, v39) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v79 = v131;
    (*(v76 + 32))(v131, v78, v39);
    sub_1CFE31164();
    sub_1CFDC6B88();
    sub_1CFE30834();
    (*(v76 + 8))(v79, v39);
  }

  v80 = v132;
  v81 = v120;
  sub_1CFDA9A14(v77 + v63[7], v120, &qword_1EDC32C78, MEMORY[0x1E6968130]);
  if (v140(v81, 1, v69) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v82 = v133;
    (*(v68 + 32))(v133, v81, v69);
    sub_1CFE31164();
    sub_1CFE0CDF4(&qword_1EC509648, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
    sub_1CFE30834();
    v83 = v82;
    v76 = v137;
    (*(v68 + 8))(v83, v69);
  }

  v84 = v122;
  sub_1CFDA9A14(v77 + v63[8], v122, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  if (v138(v84, 1, v80) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v85 = v136;
    v86 = v134;
    (*(v136 + 32))(v134, v84, v80);
    sub_1CFE31164();
    sub_1CFE0CDF4(&qword_1EC509650, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1CFE30834();
    v87 = v86;
    v68 = v135;
    (*(v85 + 8))(v87, v80);
  }

  MEMORY[0x1D3876810](*(v77 + v63[9]));
  v88 = v149 + v146[7];
  sub_1CFE30834();
  sub_1CFE30834();
  v89 = v121;
  sub_1CFDA9A14(v88 + v63[6], v121, &qword_1EDC32CB0, sub_1CFDAC3A0);
  if (v143(v89, 1, v39) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v90 = v131;
    (*(v76 + 32))(v131, v89, v39);
    sub_1CFE31164();
    sub_1CFDC6B88();
    sub_1CFE30834();
    (*(v76 + 8))(v90, v39);
  }

  v91 = v123;
  sub_1CFDA9A14(v88 + v63[7], v123, &qword_1EDC32C78, MEMORY[0x1E6968130]);
  if (v140(v91, 1, v69) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v92 = v133;
    (*(v68 + 32))(v133, v91, v69);
    sub_1CFE31164();
    sub_1CFE0CDF4(&qword_1EC509648, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
    sub_1CFE30834();
    v93 = v92;
    v76 = v137;
    (*(v68 + 8))(v93, v69);
  }

  v94 = v125;
  sub_1CFDA9A14(v88 + v63[8], v125, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  if (v138(v94, 1, v80) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v95 = v136;
    v96 = v134;
    (*(v136 + 32))(v134, v94, v80);
    sub_1CFE31164();
    sub_1CFE0CDF4(&qword_1EC509650, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1CFE30834();
    v97 = v96;
    v68 = v135;
    (*(v95 + 8))(v97, v80);
  }

  MEMORY[0x1D3876810](*(v88 + v63[9]));
  v98 = v149 + v146[8];
  sub_1CFE30834();
  sub_1CFE30834();
  v99 = v124;
  sub_1CFDA9A14(v98 + v63[6], v124, &qword_1EDC32CB0, sub_1CFDAC3A0);
  if (v143(v99, 1, v39) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v100 = v131;
    (*(v76 + 32))(v131, v99, v39);
    sub_1CFE31164();
    sub_1CFDC6B88();
    sub_1CFE30834();
    (*(v76 + 8))(v100, v39);
  }

  v101 = v126;
  sub_1CFDA9A14(v98 + v63[7], v126, &qword_1EDC32C78, MEMORY[0x1E6968130]);
  if (v140(v101, 1, v69) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v102 = v133;
    (*(v68 + 32))(v133, v101, v69);
    sub_1CFE31164();
    sub_1CFE0CDF4(&qword_1EC509648, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
    sub_1CFE30834();
    v103 = v102;
    v76 = v137;
    (*(v68 + 8))(v103, v69);
  }

  v104 = v128;
  sub_1CFDA9A14(v98 + v63[8], v128, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  if (v138(v104, 1, v80) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v105 = v136;
    v106 = v134;
    (*(v136 + 32))(v134, v104, v80);
    sub_1CFE31164();
    sub_1CFE0CDF4(&qword_1EC509650, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1CFE30834();
    v107 = v106;
    v68 = v135;
    (*(v105 + 8))(v107, v80);
  }

  MEMORY[0x1D3876810](*(v98 + v63[9]));
  v108 = v149 + v146[9];
  sub_1CFE30834();
  sub_1CFE30834();
  v109 = v127;
  sub_1CFDA9A14(v108 + v63[6], v127, &qword_1EDC32CB0, sub_1CFDAC3A0);
  if (v143(v109, 1, v39) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v110 = v131;
    (*(v76 + 32))(v131, v109, v39);
    sub_1CFE31164();
    sub_1CFDC6B88();
    sub_1CFE30834();
    (*(v76 + 8))(v110, v39);
  }

  v111 = v129;
  sub_1CFDA9A14(v108 + v63[7], v129, &qword_1EDC32C78, MEMORY[0x1E6968130]);
  if (v140(v111, 1, v69) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v112 = v133;
    (*(v68 + 32))(v133, v111, v69);
    sub_1CFE31164();
    sub_1CFE0CDF4(&qword_1EC509648, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
    sub_1CFE30834();
    (*(v68 + 8))(v112, v69);
  }

  v113 = v130;
  sub_1CFDA9A14(v108 + v63[8], v130, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  if (v138(v113, 1, v80) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v114 = v136;
    v115 = v134;
    (*(v136 + 32))(v134, v113, v80);
    sub_1CFE31164();
    sub_1CFE0CDF4(&qword_1EC509650, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1CFE30834();
    (*(v114 + 8))(v115, v80);
  }

  return MEMORY[0x1D3876810](*(v108 + v63[9]));
}

uint64_t SleepingSampleAggregateDaySummary.hashValue.getter()
{
  sub_1CFE31144();
  SleepingSampleAggregateDaySummary.hash(into:)(v1);
  return sub_1CFE31184();
}

uint64_t SleepingSampleAggregateDaySummary.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v44 = type metadata accessor for SleepingSampleAggregate(0);
  v4 = MEMORY[0x1EEE9AC00](v44, v3);
  v41 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v42 = v39 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v43 = v39 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v46 = v39 - v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v39 - v16;
  v18 = sub_1CFE307E4();
  v45 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v49 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE0C848(0, &qword_1EC509EF0, MEMORY[0x1E69E6F48]);
  v47 = *(v21 - 8);
  v48 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v39 - v23;
  v25 = type metadata accessor for SleepingSampleAggregateDaySummary(0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CFE0C790();
  v50 = v24;
  v29 = v51;
  sub_1CFE31194();
  if (v29)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v17;
  v31 = v46;
  v57 = 0;
  sub_1CFE0CDF4(&qword_1EDC32108, MEMORY[0x1E696B418], MEMORY[0x1E696B440]);
  sub_1CFE30FD4();
  v32 = *(v45 + 32);
  v51 = v28;
  v33 = v49;
  v49 = v18;
  v32(v28, v33, v18);
  v56 = 1;
  sub_1CFE0CDF4(&qword_1EDC32450, type metadata accessor for SleepingSampleAggregate, &protocol conformance descriptor for SleepingSampleAggregate);
  sub_1CFE30FD4();
  sub_1CFE09E34(v30, &v51[v25[5]]);
  v55 = 2;
  v39[1] = 0;
  sub_1CFE30FD4();
  sub_1CFE09E34(v31, &v51[v25[6]]);
  v54 = 3;
  v34 = v43;
  sub_1CFE30FD4();
  sub_1CFE09E34(v34, &v51[v25[7]]);
  v53 = 4;
  v35 = v42;
  sub_1CFE30FD4();
  sub_1CFE09E34(v35, &v51[v25[8]]);
  v52 = 5;
  v36 = v41;
  sub_1CFE30FD4();
  (*(v47 + 8))(v50, v48);
  v38 = v51;
  sub_1CFE09E34(v36, &v51[v25[9]]);
  sub_1CFDB4818(v38, v40, type metadata accessor for SleepingSampleAggregateDaySummary);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1CFE0C8AC(v38, type metadata accessor for SleepingSampleAggregateDaySummary);
}

uint64_t sub_1CFE0C5FC()
{
  sub_1CFE31144();
  SleepingSampleAggregateDaySummary.hash(into:)(v1);
  return sub_1CFE31184();
}

uint64_t sub_1CFE0C640(uint64_t a1)
{
  sub_1CFE31144();
  SleepingSampleAggregateDaySummary.hash(into:)(v2);
  return sub_1CFE31184();
}

uint64_t _s13HealthBalance33SleepingSampleAggregateDaySummaryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1CFE307E4();
  sub_1CFE0CDF4(&qword_1EDC31AB0, MEMORY[0x1E696B418], MEMORY[0x1E696B438]);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SleepingSampleAggregateDaySummary(0);
  if ((static SleepingSampleAggregate.== infix(_:_:)(a1 + v4[5], a2 + v4[5]) & 1) == 0 || (static SleepingSampleAggregate.== infix(_:_:)(a1 + v4[6], a2 + v4[6]) & 1) == 0 || (static SleepingSampleAggregate.== infix(_:_:)(a1 + v4[7], a2 + v4[7]) & 1) == 0 || (static SleepingSampleAggregate.== infix(_:_:)(a1 + v4[8], a2 + v4[8]) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[9];

  return static SleepingSampleAggregate.== infix(_:_:)(a1 + v5, a2 + v5);
}

unint64_t sub_1CFE0C790()
{
  result = qword_1EC509EE8;
  if (!qword_1EC509EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509EE8);
  }

  return result;
}

void sub_1CFE0C7E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1CFE0C848(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1CFE0C790();
    v7 = a3(a1, &type metadata for SleepingSampleAggregateDaySummary.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1CFE0C8AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CFE0C90C(void *a1)
{
  a1[1] = sub_1CFE0CDF4(&qword_1EDC32730, type metadata accessor for SleepingSampleAggregateDaySummary, &protocol conformance descriptor for SleepingSampleAggregateDaySummary);
  a1[2] = sub_1CFE0CDF4(&qword_1EDC32748, type metadata accessor for SleepingSampleAggregateDaySummary, &protocol conformance descriptor for SleepingSampleAggregateDaySummary);
  result = sub_1CFE0CDF4(&qword_1EDC32740, type metadata accessor for SleepingSampleAggregateDaySummary, &protocol conformance descriptor for SleepingSampleAggregateDaySummary);
  a1[3] = result;
  return result;
}

uint64_t sub_1CFE0CA28(uint64_t a1)
{
  result = sub_1CFE307E4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SleepingSampleAggregate(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1CFE0CACC()
{
  result = qword_1EC509EF8;
  if (!qword_1EC509EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509EF8);
  }

  return result;
}

unint64_t sub_1CFE0CB24()
{
  result = qword_1EC509F00;
  if (!qword_1EC509F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509F00);
  }

  return result;
}

unint64_t sub_1CFE0CB7C()
{
  result = qword_1EC509F08;
  if (!qword_1EC509F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509F08);
  }

  return result;
}

uint64_t sub_1CFE0CBD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49676E696E726F6DLL && a2 == 0xEC0000007865646ELL;
  if (v4 || (sub_1CFE310B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461527472616568 && a2 == 0xE900000000000065 || (sub_1CFE310B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79784F646F6F6C62 && a2 == 0xEB000000006E6567 || (sub_1CFE310B4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461726970736572 && a2 == 0xEF6574615279726FLL || (sub_1CFE310B4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CFE39AD0 == a2 || (sub_1CFE310B4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C7341656D6974 && a2 == 0xEA00000000007065)
  {

    return 5;
  }

  else
  {
    v6 = sub_1CFE310B4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1CFE0CDF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SleepingSampleBaselineAvailability.required.getter()
{
  v1 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAF4D8(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return *v4;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1CFDAD680(0);
    v7 = *&v4[*(v6 + 64)];
    sub_1CFE0E6B8(v4, sub_1CFDA7AD0);
    return v7;
  }

  else
  {
    sub_1CFE0E6B8(v4, sub_1CFDA7AD0);
    return 6;
  }
}

uint64_t SleepingSampleBaselineAvailability.count.getter()
{
  v1 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAF4D8(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return 0;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1CFDAD680(0);
  }

  else
  {
    sub_1CFDCB868(0);
  }

  v7 = *&v4[*(v6 + 48)];
  sub_1CFE0E6B8(v4, sub_1CFDA7AD0);
  return v7;
}

uint64_t SleepingSampleBaselineAvailability.isInRefinement.getter()
{
  v1 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAF4D8(v0, v4);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      sub_1CFDAD680(0);
    }

    else
    {
      sub_1CFDCB868(0);
    }

    v7 = *&v4[*(v6 + 48)];
    sub_1CFE0E6B8(v4, sub_1CFDA7AD0);
    return (v7 - 6) < 0xE;
  }

  return result;
}

uint64_t SleepingSampleBaselineAvailability.isEqualToMinimumAvailability.getter()
{
  v1 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAF4D8(v0, v4);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      sub_1CFDAD680(0);
    }

    else
    {
      sub_1CFDCB868(0);
    }

    v7 = *&v4[*(v6 + 48)];
    sub_1CFE0E6B8(v4, sub_1CFDA7AD0);
    return v7 == 6;
  }

  return result;
}

uint64_t SleepingSampleBaselineAvailability.isGreaterThanMinimumAvailability.getter()
{
  v1 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAF4D8(v0, v4);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      sub_1CFDAD680(0);
    }

    else
    {
      sub_1CFDCB868(0);
    }

    v7 = *&v4[*(v6 + 48)];
    sub_1CFE0E6B8(v4, sub_1CFDA7AD0);
    return v7 > 6;
  }

  return result;
}

BOOL SleepingSampleBaselineAvailability.isAvailable.getter()
{
  v1 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAF4D8(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return 0;
  }

  v6 = EnumCaseMultiPayload != 1;
  sub_1CFE0E6B8(v4, sub_1CFDA7AD0);
  return v6;
}

uint64_t SleepingSampleBaselineAvailability.init(analyzedRange:count:required:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1CFDA7AD0(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  v26 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((*(v10 + 48))(a1, 1, v9) != 1)
  {
    sub_1CFDB46C8(a1, v13, sub_1CFDA7AD0);
    if (a2 >= a3)
    {
      sub_1CFDCB868(0);
      v24 = *(v23 + 48);
      sub_1CFDB46C8(v13, v17, sub_1CFDA7AD0);
      *(v17 + v24) = a2;
    }

    else
    {
      sub_1CFDAD680(0);
      v21 = *(v20 + 48);
      v22 = *(v20 + 64);
      sub_1CFDB46C8(v13, v17, sub_1CFDA7AD0);
      *(v17 + v21) = a2;
      *(v17 + v22) = a3;
    }

    goto LABEL_10;
  }

  sub_1CFE0E6B8(a1, sub_1CFE0D66C);
  if (!a2)
  {
    *v17 = a3;
LABEL_10:
    swift_storeEnumTagMultiPayload();
    sub_1CFDB46C8(v17, a4, type metadata accessor for SleepingSampleBaselineAvailability);
    return (*(v26 + 56))(a4, 0, 1, v14);
  }

  v18 = *(v26 + 56);

  return v18(a4, 1, 1, v14);
}

void sub_1CFE0D66C(uint64_t a1)
{
  if (!qword_1EDC320D8)
  {
    sub_1CFDA7AD0(255);
    v1 = sub_1CFE30C74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC320D8);
    }
  }
}

uint64_t SleepingSampleBaselineAvailability.analyzedRange.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDAF4D8(v2, v7);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1CFDB46C8(v7, a1, sub_1CFDA7AD0);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  sub_1CFDA7AD0(0);
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_1CFE0D7CC()
{
  if (*v0)
  {
    return 0x746E756F63;
  }

  else
  {
    return 0x64657A796C616E61;
  }
}

uint64_t sub_1CFE0D810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64657A796C616E61 && a2 == 0xED000065676E6152;
  if (v6 || (sub_1CFE310B4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CFE310B4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1CFE0D8F0(uint64_t a1)
{
  v2 = sub_1CFDB415C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFE0D92C(uint64_t a1)
{
  v2 = sub_1CFDB415C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFE0D968(uint64_t a1)
{
  v2 = sub_1CFDAF484();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFE0D9A4(uint64_t a1)
{
  v2 = sub_1CFDAF484();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFE0D9E0(uint64_t a1)
{
  v2 = sub_1CFDB4260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFE0DA1C(uint64_t a1)
{
  v2 = sub_1CFDB4260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CFE0DA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465726975716572 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CFE310B4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CFE0DAE0(uint64_t a1)
{
  v2 = sub_1CFDAF53C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFE0DB1C(uint64_t a1)
{
  v2 = sub_1CFDAF53C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SleepingSampleBaselineAvailability.hash(into:)(uint64_t a1)
{
  v2 = v1;
  sub_1CFDA7AD0(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CFDAF4D8(v2, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1CFDAD680(0);
      v13 = *(v10 + *(v12 + 48));
      v14 = *(v10 + *(v12 + 64));
      sub_1CFDB46C8(v10, v6, sub_1CFDA7AD0);
      MEMORY[0x1D3876810](1);
      sub_1CFE307E4();
      sub_1CFDA790C(&qword_1EC509638, MEMORY[0x1E696B418], MEMORY[0x1E696B428]);
      sub_1CFE30834();
      sub_1CFE30834();
      MEMORY[0x1D3876810](v13);
      v15 = v14;
    }

    else
    {
      sub_1CFDCB868(0);
      v19 = *(v10 + *(v18 + 48));
      sub_1CFDB46C8(v10, v6, sub_1CFDA7AD0);
      MEMORY[0x1D3876810](2);
      sub_1CFE307E4();
      sub_1CFDA790C(&qword_1EC509638, MEMORY[0x1E696B418], MEMORY[0x1E696B428]);
      sub_1CFE30834();
      sub_1CFE30834();
      v15 = v19;
    }

    MEMORY[0x1D3876810](v15);
    return sub_1CFE0E6B8(v6, sub_1CFDA7AD0);
  }

  else
  {
    v16 = *v10;
    MEMORY[0x1D3876810](0);
    return MEMORY[0x1D3876810](v16);
  }
}

uint64_t SleepingSampleBaselineAvailability.hashValue.getter()
{
  sub_1CFE31144();
  SleepingSampleBaselineAvailability.hash(into:)(v1);
  return sub_1CFE31184();
}

uint64_t sub_1CFE0DE4C()
{
  sub_1CFE31144();
  SleepingSampleBaselineAvailability.hash(into:)(v1);
  return sub_1CFE31184();
}

uint64_t sub_1CFE0DE90(uint64_t a1)
{
  sub_1CFE31144();
  SleepingSampleBaselineAvailability.hash(into:)(v2);
  return sub_1CFE31184();
}

uint64_t _s13HealthBalance34SleepingSampleBaselineAvailabilityO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1CFDA7AD0(0);
  v49[1] = v4;
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v49 - v10;
  v12 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = v49 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = (v49 - v22);
  sub_1CFE0E654(0);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v28 = v49 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = &v28[*(v26 + 56)];
  sub_1CFDAF4D8(a1, v28);
  sub_1CFDAF4D8(a2, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1CFDAF4D8(v28, v20);
      sub_1CFDAD680(0);
      v32 = *(v31 + 48);
      v33 = *&v20[v32];
      v34 = *(v31 + 64);
      v35 = *&v20[v34];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v36 = *&v29[v32];
        v37 = *&v29[v34];
        sub_1CFDB46C8(v29, v11, sub_1CFDA7AD0);
        sub_1CFE307E4();
        sub_1CFDA790C(&qword_1EDC31AB0, MEMORY[0x1E696B418], MEMORY[0x1E696B438]);
        if (sub_1CFE308B4())
        {
          v38 = sub_1CFE308B4();
          sub_1CFE0E6B8(v11, sub_1CFDA7AD0);
          sub_1CFE0E6B8(v20, sub_1CFDA7AD0);
          if (v35 == v37)
          {
            v39 = v38 & (v33 == v36);
          }

          else
          {
            v39 = 0;
          }

          goto LABEL_19;
        }

        sub_1CFE0E6B8(v11, sub_1CFDA7AD0);
        v47 = v20;
        goto LABEL_18;
      }

      v16 = v20;
      goto LABEL_14;
    }

    sub_1CFDAF4D8(v28, v16);
    sub_1CFDCB868(0);
    v43 = *(v42 + 48);
    v44 = *&v16[v43];
    if (swift_getEnumCaseMultiPayload() != 2)
    {
LABEL_14:
      sub_1CFE0E6B8(v16, sub_1CFDA7AD0);
      v39 = 0;
      v41 = sub_1CFE0E654;
      goto LABEL_20;
    }

    v45 = *&v29[v43];
    sub_1CFDB46C8(v29, v8, sub_1CFDA7AD0);
    sub_1CFE307E4();
    sub_1CFDA790C(&qword_1EDC31AB0, MEMORY[0x1E696B418], MEMORY[0x1E696B438]);
    if ((sub_1CFE308B4() & 1) == 0)
    {
      sub_1CFE0E6B8(v8, sub_1CFDA7AD0);
      v47 = v16;
LABEL_18:
      sub_1CFE0E6B8(v47, sub_1CFDA7AD0);
      v39 = 0;
      goto LABEL_19;
    }

    v46 = sub_1CFE308B4();
    sub_1CFE0E6B8(v8, sub_1CFDA7AD0);
    sub_1CFE0E6B8(v16, sub_1CFDA7AD0);
    v39 = v46 & (v44 == v45);
LABEL_19:
    v41 = type metadata accessor for SleepingSampleBaselineAvailability;
    goto LABEL_20;
  }

  sub_1CFDAF4D8(v28, v23);
  v40 = swift_getEnumCaseMultiPayload();
  v41 = sub_1CFE0E654;
  if (!v40)
  {
    v39 = *v23 == *v29;
    goto LABEL_19;
  }

  v39 = 0;
LABEL_20:
  sub_1CFE0E6B8(v28, v41);
  return v39;
}

void sub_1CFE0E3FC(uint64_t a1)
{
  sub_1CFE0E484();
  if (v1 <= 0x3F)
  {
    sub_1CFDAD680(319);
    if (v2 <= 0x3F)
    {
      sub_1CFDCB868(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_1CFE0E484()
{
  result = qword_1EDC32928;
  if (!qword_1EDC32928)
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], &qword_1EDC32928);
  }

  return result;
}

unint64_t sub_1CFE0E4F8()
{
  result = qword_1EC509F18;
  if (!qword_1EC509F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509F18);
  }

  return result;
}

unint64_t sub_1CFE0E550()
{
  result = qword_1EC509F20;
  if (!qword_1EC509F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509F20);
  }

  return result;
}

unint64_t sub_1CFE0E5A8()
{
  result = qword_1EC509F28;
  if (!qword_1EC509F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509F28);
  }

  return result;
}

unint64_t sub_1CFE0E600()
{
  result = qword_1EC509F30;
  if (!qword_1EC509F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509F30);
  }

  return result;
}

void sub_1CFE0E654(uint64_t a1)
{
  if (!qword_1EDC31900)
  {
    type metadata accessor for SleepingSampleBaselineAvailability(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC31900);
    }
  }
}

uint64_t sub_1CFE0E6B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id SleepingSampleDaySummaryQuery.__allocating_init(morningIndexRange:gregorianCalendar:continueAfterInitialResults:resultsHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  v11 = objc_allocWithZone(v5);
  v12 = sub_1CFE113A4(a1, a2, v8, a4, a5);

  return v12;
}

uint64_t SleepingSampleDaySummaryQuery.gregorianCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EDC36C28;
  v4 = sub_1CFE304B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id SleepingSampleDaySummaryQuery.init(morningIndexRange:gregorianCalendar:continueAfterInitialResults:resultsHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1CFE113A4(a1, a2, a3, a4, a5);

  return v5;
}

uint64_t sub_1CFE0E88C()
{
  static SleepingSampleDaySummaryQuery.configurationClass()();

  return swift_getObjCClassFromMetadata();
}

Swift::Void __swiftcall SleepingSampleDaySummaryQuery.queue_populateConfiguration(_:)(HKQueryServerConfiguration *a1)
{
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x1E69E6720];
  sub_1CFDA631C(0, &qword_1EDC32540, sub_1CFDA68BC, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v22 - v7;
  sub_1CFDA631C(0, &qword_1EDC32910, MEMORY[0x1E6969AE8], v4);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v22 - v11;
  v23.receiver = v1;
  v23.super_class = ObjectType;
  [(HKQueryServerConfiguration *)&v23 queue_populateConfiguration:a1];
  type metadata accessor for SleepingSampleDaySummaryQueryConfiguration(0);
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    v15 = qword_1EDC36C28;
    v16 = sub_1CFE304B4();
    v17 = *(v16 - 8);
    (*(v17 + 16))(v12, &v1[v15], v16);
    (*(v17 + 56))(v12, 0, 1, v16);
    v18 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration_gregorianCalendar;
    swift_beginAccess();
    v19 = a1;
    sub_1CFE115E4(v12, v14 + v18, &qword_1EDC32910, MEMORY[0x1E6969AE8]);
    swift_endAccess();
    sub_1CFDA6A74(&v1[qword_1EDC36C20], v8, sub_1CFDA68BC);
    sub_1CFDA68BC(0);
    (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
    v21 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration_morningIndexRange;
    swift_beginAccess();
    sub_1CFE115E4(v8, v14 + v21, &qword_1EDC32540, sub_1CFDA68BC);
    swift_endAccess();
  }
}

void sub_1CFE0EBA8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SleepingSampleDaySummaryQuery.queue_populateConfiguration(_:)(v4);
}

uint64_t SleepingSampleDaySummaryQuery.queue_deliverError(_:)(void *a1)
{
  v3 = sub_1CFE30634();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CFE30654();
  result = MEMORY[0x1EEE9AC00](v8, v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&v1[qword_1EDC32800];
  if (v14)
  {
    v25 = v11;
    v15 = *&v1[qword_1EDC32800 + 8];

    v16 = [v1 clientQueue];
    if (v16)
    {
      v17 = v16;
      v18 = swift_allocObject();
      v18[2] = v14;
      v18[3] = v15;
      v18[4] = v1;
      v18[5] = a1;
      aBlock[4] = sub_1CFE11664;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1CFDAA484;
      aBlock[3] = &block_descriptor_2;
      v19 = _Block_copy(aBlock);
      v24 = v8;
      v20 = v19;
      sub_1CFDA81D0(v14, v15);
      v21 = v1;
      v22 = a1;
      sub_1CFE30644();
      v26 = MEMORY[0x1E69E7CC0];
      sub_1CFDA7954(qword_1EDC32128, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      sub_1CFDA631C(0, &qword_1EDC32100, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1CFDAA3FC();
      sub_1CFE30D04();
      MEMORY[0x1D38762F0](0, v13, v7, v20);
      _Block_release(v20);

      sub_1CFDAC3D4(v14, v15);
      (*(v4 + 8))(v7, v3);
      (*(v25 + 8))(v13, v24);
    }

    else
    {

      return sub_1CFDAC3D4(v14, v15);
    }
  }

  return result;
}

void sub_1CFE0EF74(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = a1;
  SleepingSampleDaySummaryQuery.queue_deliverError(_:)(v5);
}

uint64_t SleepingSampleDaySummaryQuery.queue_queryDidDeactivate(_:)()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1CFE30334();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, sel_queue_queryDidDeactivate_, v3);

  v4 = &v1[qword_1EDC32800];
  v5 = *&v1[qword_1EDC32800];
  v6 = *&v1[qword_1EDC32800 + 8];
  *v4 = 0;
  *(v4 + 1) = 0;
  return sub_1CFDAC3D4(v5, v6);
}

uint64_t sub_1CFE0F048(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1CFE30354();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE30344();
  v9 = a1;
  SleepingSampleDaySummaryQuery.queue_queryDidDeactivate(_:)();

  return (*(v5 + 8))(v8, v4);
}

id static SleepingSampleDaySummaryQuery.clientInterfaceProtocol()()
{
  v0 = sub_1CFE11698();

  return v0;
}

id sub_1CFE0F19C(uint64_t a1)
{
  swift_getObjCClassMetadata();
  v1 = sub_1CFE11698();

  return v1;
}

void static SleepingSampleDaySummaryQuery.configureClientInterface(_:)(void *a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = (*MEMORY[0x1E69E7D40] & *v1);
  v30.receiver = ObjCClassFromMetadata;
  v30.super_class = v4;
  v23 = a1;
  objc_msgSendSuper2(&v30, sel_configureClientInterface_, a1);
  sub_1CFDE9D54();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFE35FE0;
  *(inited + 32) = sub_1CFDA6E64(0, &qword_1EDC324F0, 0x1E695DEC8);
  sub_1CFE116A4(0);
  *(inited + 40) = v6;
  sub_1CFE117A8(0);
  *(inited + 48) = v7;
  *&v27 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1D3876120]();
  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    swift_getObjCClassFromMetadata();
    v8 = sub_1CFE30AC4();
    MEMORY[0x1D3876120](v8);
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1CFE30A94();
    }

    swift_getObjCClassFromMetadata();
    sub_1CFE30AC4();

    MEMORY[0x1D3876120](v9);
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1CFE30A94();
    }

    swift_getObjCClassFromMetadata();
    sub_1CFE30AC4();
    v10 = v27;
    if (!(v27 >> 62))
    {
      v11 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        break;
      }

      goto LABEL_8;
    }

    v11 = sub_1CFE30EE4();
    if (!v11)
    {
      break;
    }

LABEL_8:
    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    v14 = MEMORY[0x1E69E69B8];
    while ((v10 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1D3876480](v12, v10);
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

LABEL_15:
      *&v27 = v15;
      if (swift_dynamicCast())
      {
        if (*(&v25 + 1))
        {
          v27 = v24;
          v28 = v25;
          v29 = v26;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_1CFDDDBE8(0, *(v13 + 2) + 1, 1, v13);
          }

          v18 = *(v13 + 2);
          v17 = *(v13 + 3);
          if (v18 >= v17 >> 1)
          {
            v13 = sub_1CFDDDBE8((v17 > 1), v18 + 1, 1, v13);
          }

          *(v13 + 2) = v18 + 1;
          v19 = &v13[40 * v18];
          v20 = v27;
          v21 = v28;
          *(v19 + 8) = v29;
          *(v19 + 2) = v20;
          *(v19 + 3) = v21;
          goto LABEL_11;
        }
      }

      else
      {
        v26 = 0;
        v24 = 0u;
        v25 = 0u;
      }

      sub_1CFE11978(&v24, &unk_1EC509A28, v14);
LABEL_11:
      ++v12;
      if (v16 == v11)
      {
        goto LABEL_29;
      }
    }

    if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    v15 = swift_unknownObjectRetain();
    v16 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      goto LABEL_15;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1CFE30A94();
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_29:

  sub_1CFDEA81C(v13);

  v22 = sub_1CFE30B74();

  [v23 setClasses:v22 forSelector:sel_client_deliverSleepingSampleDaySummaries_clearPending_isFinalBatch_queryUUID_ argumentIndex:0 ofReply:0];
}

void sub_1CFE0F5DC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getObjCClassMetadata();
  v4 = a3;
  static SleepingSampleDaySummaryQuery.configureClientInterface(_:)(v4);
}

uint64_t SleepingSampleDaySummaryQuery.client_logErrorAndKeepQueryActivated(error:queryUUID:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v34 = a1;
  ObjectType = swift_getObjectType();
  v31 = *v2;
  v32 = ObjectType;
  v30 = *MEMORY[0x1E69E7D40];
  v35 = sub_1CFE30634();
  v38 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CFE30654();
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CFE30354();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v17 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = [v2 queue];
  (*(v14 + 16))(v17, a2, v13);
  v18 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v22 = v30;
  v21 = v31;
  *(v20 + 2) = *((v30 & v31) + 0x50);
  *(v20 + 3) = *((v22 & v21) + 0x58);
  *(v20 + 4) = v3;
  (*(v14 + 32))(&v20[v18], v17, v13);
  v23 = v34;
  *&v20[v19] = v34;
  *&v20[(v19 + 15) & 0xFFFFFFFFFFFFFFF8] = v32;
  aBlock[4] = sub_1CFE118AC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFDAA484;
  aBlock[3] = &block_descriptor_12;
  v24 = _Block_copy(aBlock);
  v25 = v3;
  v26 = v23;
  sub_1CFE30644();
  v39 = MEMORY[0x1E69E7CC0];
  sub_1CFDA7954(qword_1EDC32128, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1CFDA631C(0, &qword_1EDC32100, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1CFDAA3FC();
  v27 = v35;
  sub_1CFE30D04();
  v28 = v33;
  MEMORY[0x1D38762F0](0, v12, v8, v24);
  _Block_release(v24);

  (*(v38 + 8))(v8, v27);
  (*(v36 + 8))(v12, v37);
}

void sub_1CFE0FA54(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_1CFE30354();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CFE30AA4();
  v14 = qword_1EDC327F0;
  swift_beginAccess();
  *(a1 + v14) = v13;

  if (qword_1EDC32570 != -1)
  {
    swift_once();
  }

  v15 = sub_1CFE30624();
  __swift_project_value_buffer(v15, qword_1EDC32578);
  (*(v9 + 16))(v12, a2, v8);
  v16 = a3;
  v17 = sub_1CFE30604();
  v18 = sub_1CFE30BF4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = a4;
    v20 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39[0] = v38;
    *v20 = 136446722;
    v39[4] = v19;
    swift_getMetatypeMetadata();
    v21 = sub_1CFE30944();
    v23 = sub_1CFDAAF6C(v21, v22, v39);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    v24 = sub_1CFE30324();
    v26 = v25;
    (*(v9 + 8))(v12, v8);
    v27 = sub_1CFDAAF6C(v24, v26, v39);

    *(v20 + 14) = v27;
    *(v20 + 22) = 2114;
    v28 = a3;
    v29 = a3;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 24) = v30;
    v31 = v37;
    *v37 = v30;
    _os_log_impl(&dword_1CFDA3000, v17, v18, "[%{public}s] Non-deactivating query error %s %{public}@", v20, 0x20u);
    sub_1CFE119D4(v31, sub_1CFDAB038);
    MEMORY[0x1D3876FF0](v31, -1, -1);
    v32 = v38;
    swift_arrayDestroy();
    MEMORY[0x1D3876FF0](v32, -1, -1);
    MEMORY[0x1D3876FF0](v20, -1, -1);
  }

  else
  {
    v29 = a3;

    (*(v9 + 8))(v12, v8);
  }

  v33 = a1 + qword_1EDC36C30;
  v34 = *(a1 + qword_1EDC36C30);
  if (v34)
  {
    v35 = *(v33 + 1);

    v34(v29);
    sub_1CFDAC3D4(v34, v35);
  }
}

uint64_t sub_1CFE0FDEC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_1CFE30354();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE30344();
  v11 = a3;
  v12 = a1;
  SleepingSampleDaySummaryQuery.client_logErrorAndKeepQueryActivated(error:queryUUID:)(v11, v10);

  return (*(v7 + 8))(v10, v6);
}

id SleepingSampleDaySummaryQuery.__allocating_init(queryDescriptors:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  sub_1CFDA6E64(0, &qword_1EDC320C0, 0x1E696C388);
  v3 = sub_1CFE30A74();

  v4 = [v2 initWithQueryDescriptors_];

  return v4;
}

uint64_t sub_1CFE0FFEC(uint64_t a1)
{
  sub_1CFE119D4(a1 + qword_1EDC36C20, sub_1CFDA68BC);
  v2 = qword_1EDC36C28;
  v3 = sub_1CFE304B4();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  sub_1CFDAC3D4(*(a1 + qword_1EDC32800), *(a1 + qword_1EDC32800 + 8));

  v4 = *(a1 + qword_1EDC36C30);
  v5 = *(a1 + qword_1EDC36C30 + 8);

  return sub_1CFDAC3D4(v4, v5);
}

id SleepingSampleDaySummaryQueryConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SleepingSampleDaySummaryQueryConfiguration.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration_gregorianCalendar;
  v3 = sub_1CFE304B4();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration_morningIndexRange;
  sub_1CFDA68BC(0);
  (*(*(v5 - 8) + 56))(&v0[v4], 1, 1, v5);
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

_OWORD *SleepingSampleDaySummaryQueryConfiguration.copy(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = MEMORY[0x1E69E6720];
  sub_1CFDA631C(0, &qword_1EDC32540, sub_1CFDA68BC, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v23[-v10];
  sub_1CFDA631C(0, &qword_1EDC32910, MEMORY[0x1E6969AE8], v7);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v23[-v14];
  v26.receiver = v3;
  v26.super_class = ObjectType;
  objc_msgSendSuper2(&v26, sel_copyWithZone_, a1);
  sub_1CFE30CE4();
  swift_unknownObjectRelease();
  sub_1CFDAC5F0(v27, v25);
  if (!swift_dynamicCast())
  {
    return sub_1CFDFDC04(v27, a2);
  }

  v16 = v24;
  v17 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration_gregorianCalendar;
  swift_beginAccess();
  v18 = MEMORY[0x1E6969AE8];
  sub_1CFDA6208(v3 + v17, v15, &qword_1EDC32910, MEMORY[0x1E6969AE8]);
  v19 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration_gregorianCalendar;
  swift_beginAccess();
  sub_1CFE115E4(v15, v16 + v19, &qword_1EDC32910, v18);
  swift_endAccess();
  v20 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration_morningIndexRange;
  swift_beginAccess();
  sub_1CFDA6208(v3 + v20, v11, &qword_1EDC32540, sub_1CFDA68BC);
  v21 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration_morningIndexRange;
  swift_beginAccess();
  sub_1CFE115E4(v11, v16 + v21, &qword_1EDC32540, sub_1CFDA68BC);
  swift_endAccess();
  *(a2 + 24) = ObjectType;
  *a2 = v16;
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

id SleepingSampleDaySummaryQueryConfiguration.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SleepingSampleDaySummaryQueryConfiguration.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1CFDA7460(0);
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v58 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v56 = &v51 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1CFDA631C(0, &qword_1EDC32540, sub_1CFDA68BC, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v57 = &v51 - v14;
  sub_1CFDA631C(0, &qword_1EDC32910, MEMORY[0x1E6969AE8], v11);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v60 = &v51 - v17;
  v18 = sub_1CFE307E4();
  v61 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v23);
  v25 = &v51 - v24;
  v26 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration_gregorianCalendar;
  v27 = sub_1CFE304B4();
  v59 = *(*(v27 - 8) + 56);
  v59(&v1[v26], 1, 1, v27);
  v28 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration_morningIndexRange;
  sub_1CFDA68BC(0);
  v30 = *(v29 - 8);
  v54 = *(v30 + 56);
  v55 = v29;
  v53 = v30 + 56;
  v54(&v1[v28], 1, 1);
  v65.receiver = v1;
  v65.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v65, sel_initWithCoder_, a1);
  if (!v31)
  {

    return;
  }

  v52 = v5;
  v32 = sub_1CFE308F4();
  [a1 decodeIntegerForKey_];

  sub_1CFE30744();
  v33 = sub_1CFE308F4();
  [a1 decodeIntegerForKey_];

  sub_1CFE30744();
  sub_1CFDA631C(0, &qword_1EDC316F0, sub_1CFE08EF8, MEMORY[0x1E69E6F90]);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1CFE324E0;
  *(v34 + 32) = sub_1CFDA6E64(0, &qword_1EDC31870, 0x1E695DEE8);
  sub_1CFE30C44();

  if (!v64)
  {

    v49 = *(v61 + 8);
    v49(v22, v18);
    v49(v25, v18);
    sub_1CFE11978(v63, &qword_1EC509598, MEMORY[0x1E69E7CA0] + 8);
LABEL_9:

    return;
  }

  v35 = v18;
  if ((swift_dynamicCast() & 1) == 0)
  {

    v50 = *(v61 + 8);
    v50(v22, v18);
    v50(v25, v18);
    goto LABEL_9;
  }

  v36 = v62;
  v37 = v60;
  sub_1CFE30474();
  v59(v37, 0, 1, v27);
  v38 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration_gregorianCalendar;
  swift_beginAccess();
  sub_1CFE115E4(v37, v31 + v38, &qword_1EDC32910, MEMORY[0x1E6969AE8]);
  swift_endAccess();
  sub_1CFDA7954(&qword_1EDC32CA8, MEMORY[0x1E696B418], MEMORY[0x1E696B430]);
  LOBYTE(v38) = sub_1CFE30874();

  if (v38)
  {
    v39 = v61;
    v40 = *(v61 + 32);
    v41 = v56;
    v40(v56, v25, v35);
    v42 = v52;
    v40((v41 + *(v52 + 48)), v22, v35);
    v43 = v58;
    sub_1CFDA6A74(v41, v58, sub_1CFDA7460);
    v60 = *(v42 + 48);
    v44 = v57;
    v40(v57, v43, v35);
    v45 = *(v39 + 8);
    v45(v43 + v60, v35);
    sub_1CFDE49B0(v41, v43);
    v46 = *(v42 + 48);
    v47 = v55;
    v40((v44 + *(v55 + 36)), (v43 + v46), v35);
    v45(v43, v35);
    (v54)(v44, 0, 1, v47);
    v48 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration_morningIndexRange;
    swift_beginAccess();
    sub_1CFE115E4(v44, v31 + v48, &qword_1EDC32540, sub_1CFDA68BC);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall SleepingSampleDaySummaryQueryConfiguration.encode(with:)(NSCoder with)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1CFE307E4();
  v44 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E6720];
  sub_1CFDA631C(0, &qword_1EDC32540, sub_1CFDA68BC, MEMORY[0x1E69E6720]);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v45 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v42 - v14;
  v16 = MEMORY[0x1E6969AE8];
  sub_1CFDA631C(0, &qword_1EDC32910, MEMORY[0x1E6969AE8], v8);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = v42 - v19;
  v47.receiver = v1;
  v47.super_class = ObjectType;
  objc_msgSendSuper2(&v47, sel_encodeWithCoder_, with.super.isa);
  v21 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration_gregorianCalendar;
  swift_beginAccess();
  v22 = v1;
  sub_1CFDA6208(v1 + v21, v20, &qword_1EDC32910, v16);
  v23 = sub_1CFE304B4();
  v24 = *(v23 - 8);
  v25 = 0;
  if ((*(v24 + 48))(v20, 1, v23) != 1)
  {
    v25 = sub_1CFE30454();
    (*(v24 + 8))(v20, v23);
  }

  v26 = v7;
  v27 = sub_1CFE308F4();
  [(objc_class *)with.super.isa encodeObject:v25 forKey:v27];
  swift_unknownObjectRelease();

  v28 = OBJC_IVAR____TtC13HealthBalance42SleepingSampleDaySummaryQueryConfiguration_morningIndexRange;
  v29 = v22;
  swift_beginAccess();
  sub_1CFDA6208(v22 + v28, v15, &qword_1EDC32540, sub_1CFDA68BC);
  sub_1CFDA68BC(0);
  v31 = v30;
  v32 = *(v30 - 8);
  v33 = *(v32 + 48);
  isa = with.super.isa;
  v42[1] = v32 + 48;
  v43 = v33;
  if (v33(v15, 1, v30) == 1)
  {
    __break(1u);
  }

  else
  {
    v34 = v44;
    v35 = v26;
    v42[0] = *(v44 + 16);
    (v42[0])(v26, v15, v4);
    sub_1CFE119D4(v15, sub_1CFDA68BC);
    v36 = sub_1CFE307A4();
    v37 = *(v34 + 8);
    v37(v35, v4);
    v38 = sub_1CFE308F4();
    [(objc_class *)isa encodeInteger:v36 forKey:v38];

    v39 = v45;
    sub_1CFDA6208(v29 + v28, v45, &qword_1EDC32540, sub_1CFDA68BC);
    if (v43(v39, 1, v31) != 1)
    {
      (v42[0])(v35, v39 + *(v31 + 36), v4);
      sub_1CFE119D4(v39, sub_1CFDA68BC);
      v40 = sub_1CFE307A4();
      v37(v35, v4);
      v41 = sub_1CFE308F4();
      [(objc_class *)isa encodeInteger:v40 forKey:v41];

      return;
    }
  }

  __break(1u);
}

id _s13HealthBalance29SleepingSampleDaySummaryQueryCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CFE113A4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v12 = &v6[qword_1EDC32800];
  *v12 = 0;
  v12[1] = 0;
  v13 = qword_1EDC327F0;
  *&v6[v13] = sub_1CFE30AA4();
  v14 = &v6[qword_1EDC36C30];
  *v14 = 0;
  v14[1] = 0;
  sub_1CFDA6A74(a1, &v6[qword_1EDC36C20], sub_1CFDA68BC);
  v15 = qword_1EDC36C28;
  v16 = sub_1CFE304B4();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v6[v15], a2, v16);
  v6[qword_1EDC36C18] = a3;
  v18 = *v12;
  v19 = v12[1];
  *v12 = a4;
  v12[1] = a5;

  sub_1CFDAC3D4(v18, v19);
  sub_1CFDA6E64(0, &qword_1EDC320C0, 0x1E696C388);
  v20 = sub_1CFE30A74();
  v24.receiver = v6;
  v24.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v24, sel_initWithQueryDescriptors_, v20);

  (*(v17 + 8))(a2, v16);
  sub_1CFE119D4(a1, sub_1CFDA68BC);
  return v21;
}

uint64_t type metadata accessor for SleepingSampleDaySummaryQueryConfiguration(uint64_t a1)
{
  result = qword_1EDC32590;
  if (!qword_1EDC32590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFE115E4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1CFDA631C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_1CFE116A4(uint64_t a1)
{
  if (!qword_1EDC32558)
  {
    type metadata accessor for SleepingSampleAggregateDaySummary(255);
    sub_1CFDA7954(&qword_1EDC32730, type metadata accessor for SleepingSampleAggregateDaySummary, &protocol conformance descriptor for SleepingSampleAggregateDaySummary);
    sub_1CFDA7954(&qword_1EDC32748, type metadata accessor for SleepingSampleAggregateDaySummary, &protocol conformance descriptor for SleepingSampleAggregateDaySummary);
    sub_1CFDA7954(&qword_1EDC32740, type metadata accessor for SleepingSampleAggregateDaySummary, &protocol conformance descriptor for SleepingSampleAggregateDaySummary);
    v1 = sub_1CFE306D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC32558);
    }
  }
}

void sub_1CFE117A8(uint64_t a1)
{
  if (!qword_1EDC32568)
  {
    type metadata accessor for SleepingSampleDaySummary(255);
    sub_1CFDA7954(&qword_1EDC32810, type metadata accessor for SleepingSampleDaySummary, &protocol conformance descriptor for SleepingSampleDaySummary);
    sub_1CFDA7954(&qword_1EDC32828, type metadata accessor for SleepingSampleDaySummary, &protocol conformance descriptor for SleepingSampleDaySummary);
    sub_1CFDA7954(&qword_1EDC32820, type metadata accessor for SleepingSampleDaySummary, &protocol conformance descriptor for SleepingSampleDaySummary);
    v1 = sub_1CFE306D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC32568);
    }
  }
}

void sub_1CFE118AC(uint64_t a1, uint64_t a2)
{
  v3 = *(sub_1CFE30354() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v2 + 32);
  v7 = *(v2 + v5);
  v8 = *(v2 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1CFE0FA54(v6, v2 + v4, v7, v8);
}

uint64_t sub_1CFE11978(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1CFDB73D8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1CFE119D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1CFE11A38(uint64_t a1)
{
  sub_1CFDA68BC(319);
  if (v1 <= 0x3F)
  {
    sub_1CFE304B4();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_1CFE11B74(uint64_t a1)
{
  sub_1CFDA631C(319, &qword_1EDC32910, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1CFDA631C(319, &qword_1EDC32540, sub_1CFDA68BC, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1CFE11C9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1CFDA631C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t DayIndex.formatted(dateStyle:gregorianCalendar:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1CFE30284();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CFE30314();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE307D4();
  sub_1CFE30264();
  v12 = sub_1CFE30304();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  return v12;
}

uint64_t static SleepingSampleAggregate.empty(in:calendar:)(uint64_t a1)
{
  sub_1CFDE4C00(0, &qword_1EDC32548, MEMORY[0x1E696B418], "lower upper ");
  v96 = v2;
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v95 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v94 = &v78 - v7;
  sub_1CFDA7AD0(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v109 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE17CD8(0, &qword_1EDC31988, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v78 - v14;
  v102 = sub_1CFE30404();
  v112 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v16);
  v101 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1CFE304B4();
  v106 = *(v100 - 8);
  v19 = MEMORY[0x1EEE9AC00](v100, v18);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v99 = &v78 - v23;
  v24 = type metadata accessor for SleepingSampleAggregate(0);
  v97 = *(v24 - 8);
  v98 = v24;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1CFE307E4();
  v111 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v32 = &v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v33);
  v35 = &v78 - v34;
  v93 = v9;
  v36 = *(v9 + 36);
  v92 = sub_1CFDA799C(&unk_1EDC31E78, MEMORY[0x1E696B418], MEMORY[0x1E696B448]);
  sub_1CFE30CA4();
  v37 = v114;
  result = MEMORY[0x1E69E7CC0];
  if (v114)
  {
    v114 = MEMORY[0x1E69E7CC0];
    sub_1CFDC4938(0, v37 & ~(v37 >> 63), 0);
    v110 = v114;
    v39 = v111;
    v107 = *(v111 + 16);
    v108 = v111 + 16;
    result = v107(v35, a1, v28);
    if ((v37 & 0x8000000000000000) == 0)
    {
      v40 = 0;
      v91 = (v112 + 13);
      v90 = (v112 + 1);
      v89 = *MEMORY[0x1E6969868];
      v86 = v106 + 4;
      v85 = v106 + 2;
      v112 = (v39 + 8);
      v84 = (v106 + 1);
      v106 = (v39 + 32);
      v88 = a1;
      v82 = v21;
      v81 = v27;
      v80 = v15;
      v79 = v35;
      v87 = v36;
      v78 = v37;
      v83 = v32;
      while (!__OFADD__(v40, 1))
      {
        v103 = v40 + 1;
        v104 = v40;
        v42 = v101;
        v41 = v102;
        (*v91)(v101, v89, v102);
        sub_1CFE30414();
        (*v90)(v42, v41);
        sub_1CFE304C4();
        v43 = sub_1CFE304E4();
        result = (*(*(v43 - 8) + 48))(v15, 1, v43);
        if (result == 1)
        {
          goto LABEL_19;
        }

        sub_1CFE304A4();
        v45 = v99;
        v44 = v100;
        (*v86)(v99, v21, v100);
        v46 = v107;
        v107(v32, v35, v28);
        v47 = v35;
        v48 = v98;
        (*v85)(&v27[v98[5]], v45, v44);
        v49 = v48[7];
        v50 = sub_1CFE30014();
        (*(*(v50 - 8) + 56))(&v27[v49], 1, 1, v50);
        v51 = v48[8];
        v52 = sub_1CFE30314();
        (*(*(v52 - 8) + 56))(&v27[v51], 1, 1, v52);
        v46(v27, v32, v28);
        v111 = *v112;
        (v111)(v32, v28);
        v53 = v48[6];
        sub_1CFE17CD8(0, qword_1EDC32CB8, sub_1CFDAD5CC, MEMORY[0x1E696B370]);
        (*(*(v54 - 8) + 56))(&v27[v53], 1, 1, v54);
        v27[v48[9]] = 0;
        (*v84)(v45, v44);
        v55 = v110;
        v114 = v110;
        v57 = *(v110 + 16);
        v56 = *(v110 + 24);
        v58 = v28;
        if (v57 >= v56 >> 1)
        {
          sub_1CFDC4938((v56 > 1), v57 + 1, 1);
          v55 = v114;
        }

        *(v55 + 16) = v57 + 1;
        v59 = (*(v97 + 80) + 32) & ~*(v97 + 80);
        v110 = v55;
        sub_1CFE09E34(v27, v55 + v59 + *(v97 + 72) * v57);
        v60 = *v106;
        (*v106)(v32, v47, v28);
        v61 = sub_1CFDA799C(&qword_1EDC32CA8, MEMORY[0x1E696B418], MEMORY[0x1E696B430]);
        v62 = v88;
        v63 = v87;
        result = sub_1CFE30874();
        if ((result & 1) == 0)
        {
          goto LABEL_15;
        }

        v64 = v94;
        v105 = v61;
        v65 = v107;
        v107(v94, v62, v28);
        v66 = v109;
        v67 = v63;
        v68 = v96;
        v65(v64 + *(v96 + 48), v62 + v67, v28);
        v69 = MEMORY[0x1E696B418];
        v70 = v95;
        sub_1CFE17D3C(v64, v95, &qword_1EDC32548, MEMORY[0x1E696B418], "lower upper ", sub_1CFDE4C00);
        v71 = *(v68 + 48);
        v60(v66, v70, v28);
        v72 = v60;
        v73 = v111;
        (v111)(v70 + v71, v58);
        sub_1CFE17C64(v64, v70, &qword_1EDC32548, v69, "lower upper ", sub_1CFDE4C00);
        v72(&v66[*(v93 + 36)], (v70 + *(v68 + 48)), v58);
        v74 = v70;
        v32 = v83;
        v73(v74, v58);
        result = sub_1CFE30874();
        if ((result & 1) == 0)
        {
          goto LABEL_16;
        }

        v28 = v58;
        v75 = v109;
        v76 = sub_1CFE30854();
        result = sub_1CFDA7A74(v75);
        if ((v76 & 1) == 0)
        {
          goto LABEL_17;
        }

        v113 = 1;
        v35 = v79;
        sub_1CFE30C94();
        v77 = v111;
        result = (v111)(v32, v58);
        v40 = v104 + 1;
        v15 = v80;
        v21 = v82;
        v27 = v81;
        if (v103 == v78)
        {
          v77(v35, v58);
          return v110;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t static SleepingSampleAggregate.empty(on:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v33 = a1;
  v34 = a2;
  v38 = MEMORY[0x1E6969530];
  v4 = MEMORY[0x1E69E6720];
  v36 = MEMORY[0x1E69E6720];
  sub_1CFE17CD8(0, &qword_1EDC32C70, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v35 = &v31 - v7;
  v37 = MEMORY[0x1E6968130];
  sub_1CFE17CD8(0, &qword_1EDC32C78, MEMORY[0x1E6968130], v4);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v31 - v10;
  v32 = &v31 - v10;
  v12 = sub_1CFE304B4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CFE307E4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v18 + 16);
  v22(v21, v33, v17);
  (*(v13 + 16))(v16, v34, v12);
  v23 = sub_1CFE30014();
  (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
  v24 = sub_1CFE30314();
  v25 = v35;
  (*(*(v24 - 8) + 56))(v35, 1, 1, v24);
  v22(a3, v21, v17);
  v26 = type metadata accessor for SleepingSampleAggregate(0);
  (*(v13 + 32))(&a3[v26[5]], v16, v12);
  (*(v18 + 8))(v21, v17);
  v27 = v26[6];
  sub_1CFE17CD8(0, qword_1EDC32CB8, sub_1CFDAD5CC, MEMORY[0x1E696B370]);
  (*(*(v28 - 8) + 56))(&a3[v27], 1, 1, v28);
  v29 = v36;
  sub_1CFE17C64(v32, &a3[v26[7]], &qword_1EDC32C78, v37, v36, sub_1CFE17CD8);
  result = sub_1CFE17C64(v25, &a3[v26[8]], &qword_1EDC32C70, v38, v29, sub_1CFE17CD8);
  a3[v26[9]] = 0;
  return result;
}

id static SleepingSampleAggregate.asleep(on:for:ending:created:calendar:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, char *a10)
{
  v152 = a8;
  v153 = a7;
  v154 = a6;
  v166 = a5;
  v167 = a4;
  v164 = a1;
  v173 = sub_1CFE30434();
  v13 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173, v14);
  v172 = v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_1CFE30444();
  v180 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171, v16);
  v170 = v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_1CFE30424();
  v181 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179, v18);
  v169 = v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1E69E6720];
  sub_1CFE17CD8(0, &qword_1EDC31988, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v161 = v122 - v23;
  sub_1CFE17CD8(0, &qword_1EDC32910, MEMORY[0x1E6969AE8], v20);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v160 = v122 - v26;
  v165 = sub_1CFE30134();
  v178 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165, v27);
  v163 = v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_1CFE30314();
  v151 = *(v162 - 8);
  v30 = MEMORY[0x1EEE9AC00](v162, v29);
  v122[1] = v122 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v122[0] = v122 - v34;
  MEMORY[0x1EEE9AC00](v33, v35);
  v155 = v122 - v36;
  sub_1CFE17CD8(0, &qword_1EDC32C70, MEMORY[0x1E6969530], v20);
  v39 = MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v168 = v122 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v150 = v122 - v43;
  MEMORY[0x1EEE9AC00](v42, v44);
  v176 = (v122 - v45);
  sub_1CFE17CD8(0, &qword_1EDC32C78, MEMORY[0x1E6968130], v20);
  MEMORY[0x1EEE9AC00](v46 - 8, v47);
  v174 = v122 - v48;
  v177 = sub_1CFE304B4();
  v159 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177, v49);
  v158 = v122 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1CFE307E4();
  v157 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v52);
  v156 = v122 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = objc_opt_self();
  v55 = objc_opt_self();
  result = [v55 minuteUnit];
  v57 = 60 * a2;
  if ((a2 * 60) >> 64 != (60 * a2) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v58 = __OFADD__(v57, a3);
  v59 = v57 + a3;
  if (v58)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v60 = result;
  v149 = a9;
  v61 = [v54 quantityWithUnit:result doubleValue:v59];

  v62 = [v55 secondUnit];
  [v61 doubleValueForUnit_];
  v64 = v63;

  v65 = *(v157 + 16);
  v147 = v51;
  v144 = v157 + 16;
  v143 = v65;
  v65(v156, v164, v51);
  v66 = v159;
  v67 = *(v159 + 16);
  v175 = a10;
  v68 = v177;
  v146 = v159 + 16;
  v145 = v67;
  v67(v158, a10, v177);
  v69 = [v55 secondUnit];
  v142 = [v54 quantityWithUnit:v69 doubleValue:v64];

  v70 = objc_opt_self();
  v71 = sub_1CFE307A4();
  v72 = sub_1CFE30454();
  v141 = v70;
  v73 = [v70 hk:v71 sleepDayStartForMorningIndex:v72 calendar:?];

  sub_1CFE302F4();
  v74 = *(v66 + 56);
  v75 = v13;
  v140 = v66 + 56;
  v139 = v74;
  v74(v160, 1, 1, v68);
  v76 = sub_1CFE304E4();
  v77 = *(v76 - 8);
  v78 = *(v77 + 56);
  v138 = v76;
  v137 = v78;
  v136 = v77 + 56;
  (v78)(v161, 1, 1);
  v79 = v163;
  sub_1CFE30124();
  v80 = *(v181 + 104);
  v81 = v169;
  v135 = *MEMORY[0x1E69698A0];
  v134 = v181 + 104;
  v133 = v80;
  v80(v169);
  v82 = v180;
  v83 = *(v180 + 104);
  v84 = v170;
  v132 = *MEMORY[0x1E69699C8];
  v85 = v171;
  v131 = v180 + 104;
  v130 = v83;
  v83(v170);
  v86 = *(v75 + 104);
  v87 = v172;
  v129 = *MEMORY[0x1E6969998];
  v88 = v173;
  v128 = v75 + 104;
  v127 = v86;
  v86(v172);
  v89 = v155;
  sub_1CFE30484();
  v90 = *(v75 + 8);
  v148 = v75 + 8;
  v126 = v90;
  v90(v87, v88);
  v91 = *(v82 + 8);
  v180 = v82 + 8;
  v125 = v91;
  v91(v84, v85);
  v92 = *(v181 + 8);
  v181 += 8;
  v124 = v92;
  v92(v81, v179);
  v93 = *(v178 + 8);
  v178 += 8;
  v123 = v93;
  v93(v79, v165);
  v94 = v151;
  v95 = *(v151 + 8);
  v96 = v162;
  v95(v89, v162);
  v97 = v150;
  sub_1CFE17D3C(v176, v150, &qword_1EDC32C70, MEMORY[0x1E6969530], MEMORY[0x1E69E6720], sub_1CFE17CD8);
  v98 = 1;
  if ((*(v94 + 48))(v97, 1, v96) != 1)
  {
    (*(v94 + 32))(v89, v97, v96);
    v99 = v122[0];
    (*(v94 + 16))(v122[0], v89, v96);
    sub_1CFE302C4();
    sub_1CFE2FFF4();
    v95(v99, v96);
    v95(v89, v96);
    v98 = 0;
  }

  sub_1CFE0691C(v176);
  v100 = sub_1CFE30014();
  (*(*(v100 - 8) + 56))(v174, v98, 1, v100);
  v176 = v95;
  v101 = sub_1CFE307A4();
  v102 = sub_1CFE30454();
  v103 = [v141 hk:v101 sleepDayStartForMorningIndex:v102 calendar:?];

  sub_1CFE302F4();
  v139(v160, 1, 1, v177);
  v137(v161, 1, 1, v138);
  v104 = v163;
  sub_1CFE30124();
  v105 = v169;
  v106 = v179;
  v133(v169, v135, v179);
  v108 = v170;
  v107 = v171;
  v130(v170, v132, v171);
  v109 = v89;
  v111 = v172;
  v110 = v173;
  v127(v172, v129, v173);
  sub_1CFE30484();
  v126(v111, v110);
  v125(v108, v107);
  v124(v105, v106);
  v123(v104, v165);
  v176(v109, v162);
  v112 = v149;
  v113 = v156;
  v114 = v147;
  v143(v149, v156, v147);
  v115 = type metadata accessor for SleepingSampleAggregate(0);
  v116 = v158;
  v117 = v177;
  v145(v112 + v115[5], v158, v177);
  v118 = v115[6];
  sub_1CFDAD5CC();
  v119 = v142;
  sub_1CFE306B4();
  sub_1CFE17CD8(0, qword_1EDC32CB8, sub_1CFDAD5CC, MEMORY[0x1E696B370]);
  (*(*(v120 - 8) + 56))(v112 + v118, 0, 1, v120);
  (*(v159 + 8))(v116, v117);
  (*(v157 + 8))(v113, v114);

  v121 = MEMORY[0x1E69E6720];
  sub_1CFE17C64(v174, v112 + v115[7], &qword_1EDC32C78, MEMORY[0x1E6968130], MEMORY[0x1E69E6720], sub_1CFE17CD8);
  result = sub_1CFE17C64(v168, v112 + v115[8], &qword_1EDC32C70, MEMORY[0x1E6969530], v121, sub_1CFE17CD8);
  *(v112 + v115[9]) = 4;
  return result;
}

uint64_t static SleepingSampleAggregate.asleep(on:seconds:ending:created:calendar:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t)@<X3>, uint64_t a5@<X4>, int a6@<W5>, char *a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v162 = a6;
  v163 = a5;
  v164 = a4;
  v166 = a3;
  v169 = a2;
  v165 = a8;
  v175 = sub_1CFE30434();
  v183 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175, v12);
  v174 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_1CFE30444();
  v182 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173, v14);
  v172 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_1CFE30424();
  v184 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181, v16);
  v171 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69E6720];
  sub_1CFE17CD8(0, &qword_1EDC31988, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v122 - v21;
  v146 = v18;
  sub_1CFE17CD8(0, &qword_1EDC32910, MEMORY[0x1E6969AE8], v18);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v122 - v25;
  v168 = sub_1CFE30134();
  v180 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168, v27);
  v179 = &v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_1CFE30314();
  v147 = *(v176 - 8);
  v30 = MEMORY[0x1EEE9AC00](v176, v29);
  v124 = &v122 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v123 = &v122 - v34;
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = &v122 - v36;
  v148 = MEMORY[0x1E6969530];
  sub_1CFE17CD8(0, &qword_1EDC32C70, MEMORY[0x1E6969530], v18);
  v40 = MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v170 = &v122 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v145 = &v122 - v44;
  MEMORY[0x1EEE9AC00](v43, v45);
  v141 = &v122 - v46;
  sub_1CFE17CD8(0, &qword_1EDC32C78, MEMORY[0x1E6968130], v18);
  MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v177 = &v122 - v49;
  v50 = sub_1CFE304B4();
  v51 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v52);
  v54 = &v122 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1CFE307E4();
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = &v122 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = v59;
  v60 = *(v59 + 16);
  v154 = v58;
  v156 = v61;
  v151 = v59 + 16;
  v150 = v60;
  v60();
  v62 = *(v51 + 16);
  v157 = v54;
  v178 = a7;
  v153 = v51 + 16;
  v152 = v62;
  v62(v54, a7, v50);
  v63 = objc_opt_self();
  v64 = [objc_opt_self() secondUnit];
  v149 = [v63 quantityWithUnit:v64 doubleValue:a9];

  v65 = objc_opt_self();
  v161 = a1;
  v66 = sub_1CFE307A4();
  v67 = sub_1CFE30454();
  v144 = v65;
  v68 = [v65 hk:v66 sleepDayStartForMorningIndex:v67 calendar:?];

  v69 = v37;
  sub_1CFE302F4();

  v158 = v51;
  v70 = *(v51 + 56);
  v167 = v50;
  v143 = v51 + 56;
  v142 = v70;
  v70(v26, 1, 1, v50);
  v71 = sub_1CFE304E4();
  v72 = *(v71 - 8);
  v73 = *(v72 + 56);
  v140 = v71;
  v139 = v73;
  v138 = v72 + 56;
  (v73)(v22, 1, 1);
  v159 = v26;
  v160 = v22;
  sub_1CFE30124();
  v74 = *(v184 + 104);
  v75 = v171;
  v137 = *MEMORY[0x1E69698A0];
  v136 = v184 + 104;
  v135 = v74;
  v74(v171);
  v76 = v182;
  v77 = *(v182 + 104);
  v78 = v172;
  v134 = *MEMORY[0x1E69699C8];
  v79 = v173;
  v133 = v182 + 104;
  v132 = v77;
  v77(v172);
  v80 = v183;
  v81 = *(v183 + 104);
  v82 = v174;
  v131 = *MEMORY[0x1E6969998];
  v83 = v175;
  v130 = v183 + 104;
  v129 = v81;
  v81(v174);
  v84 = v141;
  sub_1CFE30484();
  v85 = *(v80 + 8);
  v183 = v80 + 8;
  v128 = v85;
  v85(v82, v83);
  v86 = v76;
  v87 = v147;
  v88 = *(v86 + 8);
  v89 = v79;
  v90 = v145;
  v182 = v86 + 8;
  v127 = v88;
  v88(v78, v89);
  v91 = *(v184 + 8);
  v184 += 8;
  v126 = v91;
  v91(v75, v181);
  v92 = *(v180 + 8);
  v180 += 8;
  v125 = v92;
  v92(v179, v168);
  v93 = *(v87 + 8);
  v94 = v176;
  v93(v69, v176);
  sub_1CFE17D3C(v84, v90, &qword_1EDC32C70, v148, v146, sub_1CFE17CD8);
  v95 = (*(v87 + 48))(v90, 1, v94);
  v96 = 1;
  if (v95 != 1)
  {
    v97 = v90;
    v98 = v176;
    (*(v87 + 32))(v69, v97, v176);
    v99 = v123;
    (*(v87 + 16))(v123, v69, v98);
    sub_1CFE302C4();
    sub_1CFE2FFF4();
    v93(v99, v98);
    v93(v69, v98);
    v96 = 0;
  }

  sub_1CFE0691C(v84);
  v100 = sub_1CFE30014();
  (*(*(v100 - 8) + 56))(v177, v96, 1, v100);
  v101 = sub_1CFE307A4();
  v102 = sub_1CFE30454();
  v103 = [v144 hk:v101 sleepDayStartForMorningIndex:v102 calendar:?];

  sub_1CFE302F4();
  v142(v159, 1, 1, v167);
  v139(v160, 1, 1, v140);
  v104 = v179;
  sub_1CFE30124();
  v105 = v171;
  v169 = v93;
  v106 = v181;
  v135(v171, v137, v181);
  v108 = v172;
  v107 = v173;
  v132(v172, v134, v173);
  v110 = v174;
  v109 = v175;
  v129(v174, v131, v175);
  sub_1CFE30484();
  v128(v110, v109);
  v127(v108, v107);
  v126(v105, v106);
  v125(v104, v168);
  v169(v69, v176);
  v111 = v165;
  v112 = v154;
  v113 = v156;
  (v150)(v165, v154, v156);
  v114 = type metadata accessor for SleepingSampleAggregate(0);
  v115 = v157;
  v116 = v167;
  v152(v111 + v114[5], v157, v167);
  v117 = v114[6];
  sub_1CFDAD5CC();
  v118 = v149;
  sub_1CFE306B4();
  sub_1CFE17CD8(0, qword_1EDC32CB8, sub_1CFDAD5CC, MEMORY[0x1E696B370]);
  (*(*(v119 - 8) + 56))(v111 + v117, 0, 1, v119);

  (*(v158 + 8))(v115, v116);
  (*(v155 + 8))(v112, v113);
  v120 = MEMORY[0x1E69E6720];
  sub_1CFE17C64(v177, v111 + v114[7], &qword_1EDC32C78, MEMORY[0x1E6968130], MEMORY[0x1E69E6720], sub_1CFE17CD8);
  result = sub_1CFE17C64(v170, v111 + v114[8], &qword_1EDC32C70, MEMORY[0x1E6969530], v120, sub_1CFE17CD8);
  *(v111 + v114[9]) = 4;
  return result;
}

uint64_t sub_1CFE15024@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X3>, uint64_t a4@<X8>, double a5@<D0>)
{
  v111 = a2;
  v112 = a1;
  v118 = a4;
  v7 = sub_1CFE30434();
  v116 = *(v7 - 8);
  v117 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v113 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1CFE30444();
  v121 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110, v10);
  v103 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_1CFE30424();
  v122 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120, v12);
  v94 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E69E6720];
  sub_1CFE17CD8(0, &qword_1EDC31988, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v93 = &v86 - v17;
  v95 = v14;
  sub_1CFE17CD8(0, &qword_1EDC32910, MEMORY[0x1E6969AE8], v14);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v86 - v20;
  v22 = sub_1CFE30134();
  v104 = *(v22 - 8);
  v105 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1CFE30314();
  v99 = *(v97 - 8);
  v27 = MEMORY[0x1EEE9AC00](v97, v26);
  v87 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v86 - v30;
  v102 = MEMORY[0x1E6969530];
  sub_1CFE17CD8(0, &qword_1EDC32C70, MEMORY[0x1E6969530], v14);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v92 = &v86 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v36);
  v90 = &v86 - v37;
  sub_1CFE17CD8(0, &qword_1EDC32C78, MEMORY[0x1E6968130], v14);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v119 = &v86 - v40;
  v41 = sub_1CFE304B4();
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v43);
  v45 = &v86 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1CFE307E4();
  MEMORY[0x1EEE9AC00](v46, v47);
  v106 = &v86 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v49;
  v50 = *(v49 + 16);
  v108 = v51;
  v101 = v49 + 16;
  v100 = v50;
  v50();
  v52 = *(v42 + 16);
  v109 = v45;
  v89 = a3;
  v98 = v42 + 16;
  v96 = v52;
  v52(v45, a3, v41);
  v53 = objc_opt_self();
  v54 = [objc_opt_self() _countPerMinuteUnit];
  v91 = [v53 quantityWithUnit:v54 doubleValue:a5];

  v55 = objc_opt_self();
  v56 = sub_1CFE307A4();
  v57 = sub_1CFE30454();
  v58 = [v55 hk:v56 sleepDayStartForMorningIndex:v57 calendar:?];

  sub_1CFE302F4();
  v114 = v42;
  v115 = v41;
  v59 = 1;
  (*(v42 + 56))(v21, 1, 1, v41);
  v60 = sub_1CFE304E4();
  (*(*(v60 - 8) + 56))(v93, 1, 1, v60);
  v88 = v25;
  sub_1CFE30124();
  v61 = v94;
  (*(v122 + 104))(v94, *MEMORY[0x1E69698A0], v120);
  v62 = v103;
  v63 = v110;
  (*(v121 + 104))(v103, *MEMORY[0x1E69699C8], v110);
  v64 = v116;
  v65 = v117;
  v66 = v113;
  (*(v116 + 104))(v113, *MEMORY[0x1E6969998], v117);
  v67 = v90;
  v68 = v61;
  sub_1CFE30484();
  v69 = v64;
  v70 = v97;
  (*(v69 + 8))(v66, v65);
  v71 = v99;
  v72 = v92;
  (*(v121 + 8))(v62, v63);
  (*(v122 + 8))(v68, v120);
  (*(v104 + 8))(v88, v105);
  v73 = *(v71 + 8);
  v73(v31, v70);
  sub_1CFE17D3C(v67, v72, &qword_1EDC32C70, v102, v95, sub_1CFE17CD8);
  if ((*(v71 + 48))(v72, 1, v70) != 1)
  {
    (*(v71 + 32))(v31, v72, v70);
    (*(v71 + 16))(v87, v31, v70);
    sub_1CFE2FFF4();
    v73(v31, v70);
    v59 = 0;
  }

  sub_1CFE0691C(v67);
  v74 = sub_1CFE30014();
  v75 = v119;
  (*(*(v74 - 8) + 56))(v119, v59, 1, v74);
  v76 = type metadata accessor for SleepingSampleAggregate(0);
  v77 = v118;
  (*(v71 + 56))(v118 + v76[8], 1, 1, v70);
  v78 = v106;
  v79 = v108;
  (v100)(v77, v106, v108);
  v80 = v109;
  v81 = v115;
  v96(v77 + v76[5], v109, v115);
  v82 = v76[6];
  sub_1CFDAD5CC();
  v83 = v91;
  sub_1CFE306B4();
  sub_1CFE17CD8(0, qword_1EDC32CB8, sub_1CFDAD5CC, MEMORY[0x1E696B370]);
  (*(*(v84 - 8) + 56))(v77 + v82, 0, 1, v84);
  (*(v114 + 8))(v80, v81);
  (*(v107 + 8))(v78, v79);

  result = sub_1CFE17C64(v75, v77 + v76[7], &qword_1EDC32C78, MEMORY[0x1E6968130], MEMORY[0x1E69E6720], sub_1CFE17CD8);
  *(v77 + v76[9]) = 4;
  return result;
}

uint64_t static SleepingSampleAggregate.spO2(on:pct:time:calendar:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X3>, uint64_t a4@<X8>, double a5@<D0>)
{
  v115 = a2;
  v116 = a1;
  v122 = a4;
  v7 = sub_1CFE30434();
  v120 = *(v7 - 8);
  v121 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v117 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1CFE30444();
  v124 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v10);
  v107 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1CFE30424();
  v125 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123, v12);
  v97 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E69E6720];
  sub_1CFE17CD8(0, &qword_1EDC31988, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v89 - v17;
  v99 = v14;
  sub_1CFE17CD8(0, &qword_1EDC32910, MEMORY[0x1E6969AE8], v14);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v89 - v21;
  v23 = sub_1CFE30134();
  v108 = *(v23 - 8);
  v109 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1CFE30314();
  v102 = *(v106 - 8);
  v28 = MEMORY[0x1EEE9AC00](v106, v27);
  v90 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v30);
  v92 = &v89 - v31;
  v105 = MEMORY[0x1E6969530];
  sub_1CFE17CD8(0, &qword_1EDC32C70, MEMORY[0x1E6969530], v14);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v98 = &v89 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v36);
  v95 = &v89 - v37;
  sub_1CFE17CD8(0, &qword_1EDC32C78, MEMORY[0x1E6968130], v14);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v94 = &v89 - v40;
  v41 = sub_1CFE304B4();
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v43);
  v45 = &v89 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1CFE307E4();
  MEMORY[0x1EEE9AC00](v46, v47);
  v110 = &v89 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v49;
  v50 = *(v49 + 16);
  v112 = v51;
  v104 = v49 + 16;
  v103 = v50;
  v50();
  v52 = *(v42 + 16);
  v113 = v45;
  v93 = a3;
  v101 = v42 + 16;
  v100 = v52;
  v52(v45, a3, v41);
  v53 = objc_opt_self();
  v54 = [objc_opt_self() percentUnit];
  v96 = [v53 quantityWithUnit:v54 doubleValue:a5 / 100.0];

  v55 = objc_opt_self();
  v56 = sub_1CFE307A4();
  v57 = sub_1CFE30454();
  v58 = [v55 hk:v56 sleepDayStartForMorningIndex:v57 calendar:?];

  sub_1CFE302F4();
  v118 = v42;
  v119 = v41;
  v59 = 1;
  (*(v42 + 56))(v22, 1, 1, v41);
  v60 = sub_1CFE304E4();
  (*(*(v60 - 8) + 56))(v18, 1, 1, v60);
  v91 = v26;
  sub_1CFE30124();
  v61 = v97;
  (*(v125 + 104))(v97, *MEMORY[0x1E69698A0], v123);
  v62 = v107;
  v63 = v114;
  (*(v124 + 104))(v107, *MEMORY[0x1E69699C8], v114);
  v64 = v120;
  v65 = v121;
  v66 = v117;
  (*(v120 + 104))(v117, *MEMORY[0x1E6969998], v121);
  v67 = v95;
  v68 = v92;
  v69 = v61;
  sub_1CFE30484();
  v70 = v65;
  v71 = v94;
  (*(v64 + 8))(v66, v70);
  v72 = v102;
  v73 = v68;
  v74 = v63;
  v75 = v106;
  (*(v124 + 8))(v62, v74);
  v76 = v98;
  (*(v125 + 8))(v69, v123);
  (*(v108 + 8))(v91, v109);
  v77 = *(v72 + 8);
  v77(v73, v75);
  sub_1CFE17D3C(v67, v76, &qword_1EDC32C70, v105, v99, sub_1CFE17CD8);
  if ((*(v72 + 48))(v76, 1, v75) != 1)
  {
    (*(v72 + 32))(v73, v76, v75);
    (*(v72 + 16))(v90, v73, v75);
    sub_1CFE2FFF4();
    v77(v73, v75);
    v59 = 0;
  }

  sub_1CFE0691C(v67);
  v78 = sub_1CFE30014();
  (*(*(v78 - 8) + 56))(v71, v59, 1, v78);
  v79 = type metadata accessor for SleepingSampleAggregate(0);
  v80 = v122;
  (*(v72 + 56))(v122 + v79[8], 1, 1, v75);
  v81 = v110;
  v82 = v112;
  (v103)(v80, v110, v112);
  v83 = v113;
  v84 = v119;
  v100(v80 + v79[5], v113, v119);
  v85 = v79[6];
  sub_1CFDAD5CC();
  v86 = v96;
  sub_1CFE306B4();
  sub_1CFE17CD8(0, qword_1EDC32CB8, sub_1CFDAD5CC, MEMORY[0x1E696B370]);
  (*(*(v87 - 8) + 56))(v80 + v85, 0, 1, v87);

  (*(v118 + 8))(v83, v84);
  (*(v111 + 8))(v81, v82);
  result = sub_1CFE17C64(v71, v80 + v79[7], &qword_1EDC32C78, MEMORY[0x1E6968130], MEMORY[0x1E69E6720], sub_1CFE17CD8);
  *(v80 + v79[9]) = 4;
  return result;
}

uint64_t static SleepingSampleAggregate.wtr(on:degC:start:end:calendar:)@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v172 = a5;
  v171 = a4;
  v189 = a2;
  v190 = a3;
  v186 = a7;
  v196 = sub_1CFE30434();
  v203 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196, v11);
  v195 = v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_1CFE30444();
  v202 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194, v13);
  v193 = v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CFE30424();
  v16 = *(v15 - 8);
  v204 = v15;
  v205 = v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v192 = v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1E69E6720];
  sub_1CFE17CD8(0, &qword_1EDC31988, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = (v147 - v22);
  sub_1CFE17CD8(0, &qword_1EDC32910, MEMORY[0x1E6969AE8], v19);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = v147 - v26;
  v191 = sub_1CFE30134();
  v201 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191, v28);
  v200 = v147 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE17CD8(0, &qword_1EDC32C70, MEMORY[0x1E6969530], v19);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v169 = v147 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v34);
  v173 = v147 - v35;
  v188 = sub_1CFE30314();
  v198 = *(v188 - 8);
  v37 = MEMORY[0x1EEE9AC00](v188, v36);
  v148 = v147 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v149 = v147 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v45 = v147 - v44;
  MEMORY[0x1EEE9AC00](v43, v46);
  v187 = v147 - v47;
  sub_1CFE17CD8(0, &qword_1EDC32C78, MEMORY[0x1E6968130], v19);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v185 = v147 - v50;
  v51 = sub_1CFE304B4();
  v52 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v53);
  v55 = v147 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1CFE307E4();
  MEMORY[0x1EEE9AC00](v56, v57);
  v59 = v147 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = v60;
  v61 = *(v60 + 16);
  v180 = v59;
  v182 = v62;
  v179 = v60 + 16;
  v178 = v61;
  v61();
  v63 = *(v52 + 16);
  v183 = v55;
  v199 = a6;
  v177 = v52 + 16;
  v176 = v63;
  v63(v55, a6, v51);
  v64 = objc_opt_self();
  v65 = [objc_opt_self() _changeInDegreeCelsiusUnit];
  v175 = [v64 quantityWithUnit:v65 doubleValue:a8];

  v66 = objc_opt_self();
  v170 = a1;
  v67 = sub_1CFE307A4();
  v68 = sub_1CFE30454();
  v166 = v66;
  v69 = [v66 hk:v67 sleepDayStartForMorningIndex:v68 calendar:?];

  v70 = v45;
  sub_1CFE302F4();

  v184 = v52;
  v71 = *(v52 + 56);
  v197 = v51;
  v165 = v52 + 56;
  v164 = v71;
  v71(v27, 1, 1, v51);
  v72 = sub_1CFE304E4();
  v73 = *(v72 - 8);
  v74 = *(v73 + 56);
  v163 = v72;
  v162 = v74;
  v161 = v73 + 56;
  (v74)(v23, 1, 1);
  v167 = v27;
  v168 = v23;
  sub_1CFE30124();
  v75 = *(v205 + 104);
  v76 = v192;
  v159 = *MEMORY[0x1E69698A0];
  v160 = v205 + 104;
  v158 = v75;
  v75(v192);
  v77 = v202;
  v78 = *(v202 + 104);
  v79 = v193;
  v156 = *MEMORY[0x1E69699C8];
  v80 = v194;
  v157 = v202 + 104;
  v155 = v78;
  v78(v193);
  v81 = v203;
  v82 = *(v203 + 104);
  v83 = v195;
  v153 = *MEMORY[0x1E6969998];
  v84 = v196;
  v154 = v203 + 104;
  v152 = v82;
  v82(v195);
  v85 = v173;
  v86 = v76;
  v87 = v79;
  v88 = v83;
  sub_1CFE30484();
  v89 = v85;
  v90 = v81 + 8;
  v91 = *(v81 + 8);
  v203 = v90;
  v91(v88, v84);
  v92 = *(v77 + 8);
  v93 = v87;
  v94 = v198;
  v202 = v77 + 8;
  v92(v93, v80);
  v95 = *(v205 + 8);
  v205 += 8;
  v95(v86, v204);
  v96 = *(v201 + 8);
  v201 += 8;
  v96(v200, v191);
  v97 = v94 + 8;
  v98 = *(v94 + 8);
  v174 = v70;
  v99 = v70;
  v100 = v188;
  v98(v99, v188);
  v101 = *(v94 + 48);
  v102 = v100;
  v151 = v94 + 48;
  v150 = v101;
  if (v101(v89, 1, v100) == 1)
  {
    sub_1CFE0691C(v89);
    _s5ErrorOMa(0);
    sub_1CFDA799C(&qword_1EC509850, _s5ErrorOMa, &unk_1CFE36C44);
    v103 = swift_allocError();
    v104 = v190;
    *v105 = v189;
    v105[1] = v104;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v106 = v185;
    v107 = v102;
LABEL_8:

    v128 = 1;
    goto LABEL_9;
  }

  v108 = *(v94 + 32);
  v147[1] = v94 + 32;
  v147[0] = v108;
  v108(v187, v89, v100);
  v109 = sub_1CFE307A4();
  v110 = sub_1CFE30454();
  v111 = [v166 hk:v109 sleepDayStartForMorningIndex:v110 calendar:?];

  sub_1CFE302F4();
  v164(v167, 1, 1, v197);
  v162(v168, 1, 1, v163);
  v112 = v200;
  sub_1CFE30124();
  v113 = v192;
  v158(v192, v159, v204);
  v189 = v97;
  v173 = v96;
  v114 = v193;
  v170 = v95;
  v115 = v194;
  v155(v193, v156, v194);
  v190 = v98;
  v117 = v195;
  v116 = v196;
  v152(v195, v153, v196);
  v168 = v92;
  v118 = v169;
  v119 = v174;
  sub_1CFE30484();
  v120 = v117;
  v121 = v190;
  v91(v120, v116);
  v168(v114, v115);
  v170(v113, v204);
  (v173)(v112, v191);
  v107 = v188;
  v121(v119, v188);
  if (v150(v118, 1, v107) == 1)
  {
    sub_1CFE0691C(v118);
    _s5ErrorOMa(0);
    sub_1CFDA799C(&qword_1EC509850, _s5ErrorOMa, &unk_1CFE36C44);
    v103 = swift_allocError();
    v122 = v172;
    *v123 = v171;
    v123[1] = v122;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v121(v187, v107);
    v106 = v185;
    v94 = v198;
    goto LABEL_8;
  }

  v124 = v149;
  (v147[0])(v149, v118, v107);
  sub_1CFDA799C(&qword_1EDC32030, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if ((sub_1CFE30874() & 1) == 0)
  {
    v205 = _s5ErrorOMa(0);
    sub_1CFDA799C(&qword_1EC509850, _s5ErrorOMa, &unk_1CFE36C44);
    v103 = swift_allocError();
    v130 = v129;
    sub_1CFDE4C00(0, &qword_1EC509858, MEMORY[0x1E6969530], "start end ");
    v132 = *(v131 + 48);
    v94 = v198;
    v133 = *(v198 + 16);
    v134 = v187;
    v133(v130, v187, v107);
    v133(v130 + v132, v124, v107);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v135 = v190;
    v190(v124, v107);
    v135(v134, v107);
    v106 = v185;
    goto LABEL_8;
  }

  v94 = v198;
  v125 = *(v198 + 16);
  v126 = v187;
  v125(v119, v187, v107);
  v125(v148, v124, v107);
  v106 = v185;
  sub_1CFE2FFE4();
  v127 = v190;
  v190(v124, v107);
  v127(v126, v107);
  v128 = 0;
LABEL_9:
  v136 = sub_1CFE30014();
  (*(*(v136 - 8) + 56))(v106, v128, 1, v136);
  v137 = type metadata accessor for SleepingSampleAggregate(0);
  v138 = v186;
  (*(v94 + 56))(v186 + v137[8], 1, 1, v107);
  v139 = v180;
  v140 = v182;
  (v178)(v138, v180, v182);
  v141 = v183;
  v142 = v197;
  v176(v138 + v137[5], v183, v197);
  v143 = v137[6];
  sub_1CFDAD5CC();
  v144 = v175;
  sub_1CFE306B4();
  sub_1CFE17CD8(0, qword_1EDC32CB8, sub_1CFDAD5CC, MEMORY[0x1E696B370]);
  (*(*(v145 - 8) + 56))(v138 + v143, 0, 1, v145);
  (*(v184 + 8))(v141, v142);
  (*(v181 + 8))(v139, v140);

  result = sub_1CFE17C64(v106, v138 + v137[7], &qword_1EDC32C78, MEMORY[0x1E6968130], MEMORY[0x1E69E6720], sub_1CFE17CD8);
  *(v138 + v137[9]) = 4;
  return result;
}

uint64_t sub_1CFE17C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

void sub_1CFE17CD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1CFE17D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t static SleepingSampleBaselineComparison.heart(_:on:calendar:hasBaseline:baselineCount:)@<X0>(char *a1@<X0>, char *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v140 = a4;
  v169 = a3;
  v174 = a5;
  v173 = type metadata accessor for SleepingSampleBaseline(0);
  v170 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173, v9);
  v134 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB1824(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v141 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v172 = &v134 - v16;
  v138 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  MEMORY[0x1EEE9AC00](v138, v17);
  v171 = &v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_1CFE30434();
  v165 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168, v19);
  v167 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_1CFE30444();
  v178 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163, v21);
  v159 = &v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_1CFE30424();
  v179 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177, v23);
  v154 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB1824(0, &qword_1EDC31988, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v147 = &v134 - v27;
  sub_1CFDB1824(0, &qword_1EDC32910, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v134 - v30;
  v156 = sub_1CFE30134();
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156, v32);
  v176 = &v134 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_1CFE30314();
  v153 = *(v152 - 8);
  v35 = MEMORY[0x1EEE9AC00](v152, v34);
  v135 = &v134 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v37);
  v142 = &v134 - v38;
  sub_1CFDB1824(0, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v41 = MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v146 = &v134 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v43);
  v144 = &v134 - v44;
  sub_1CFDB1824(0, &qword_1EDC32C78, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v175 = &v134 - v47;
  v48 = sub_1CFE304B4();
  v49 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v50);
  v52 = &v134 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1CFE307E4();
  v54 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v55);
  v57 = &v134 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for SleepingSampleAggregate(0);
  MEMORY[0x1EEE9AC00](v158, v58);
  v180 = &v134 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v54;
  v60 = *(v54 + 16);
  v157 = v57;
  v161 = v53;
  v151 = v54 + 16;
  v150 = v60;
  v60(v57, a1, v53);
  v61 = *(v49 + 16);
  v162 = v52;
  v143 = a2;
  v149 = v49 + 16;
  v148 = v61;
  v61(v52, a2, v48);
  v62 = objc_opt_self();
  v136 = objc_opt_self();
  v63 = [v136 _countPerMinuteUnit];
  v137 = v62;
  v145 = [v62 quantityWithUnit:v63 doubleValue:a6 * 7.0 + 60.0];

  v64 = objc_opt_self();
  v139 = a1;
  v65 = sub_1CFE307A4();
  v66 = sub_1CFE30454();
  v67 = [v64 hk:v65 sleepDayStartForMorningIndex:v66 calendar:?];

  sub_1CFE302F4();
  v164 = v49;
  v68 = *(v49 + 56);
  v69 = 1;
  v166 = v48;
  v68(v31, 1, 1, v48);
  v70 = sub_1CFE304E4();
  (*(*(v70 - 8) + 56))(v147, 1, 1, v70);
  sub_1CFE30124();
  v71 = v154;
  (*(v179 + 104))(v154, *MEMORY[0x1E69698A0], v177);
  v72 = v159;
  v73 = v163;
  v178[13](v159, *MEMORY[0x1E69699C8], v163);
  v74 = v165;
  v75 = v167;
  v76 = v168;
  (*(v165 + 104))(v167, *MEMORY[0x1E6969998], v168);
  v77 = v144;
  v78 = v142;
  v79 = v71;
  sub_1CFE30484();
  v80 = v74;
  v81 = v152;
  (*(v80 + 8))(v75, v76);
  v82 = v146;
  v83 = v73;
  v84 = v153;
  (v178[1])(v72, v83);
  (*(v179 + 8))(v79, v177);
  (*(v155 + 8))(v176, v156);
  v85 = *(v84 + 8);
  v85(v78, v81);
  sub_1CFDE4AA4(v77, v82);
  if ((*(v84 + 48))(v82, 1, v81) != 1)
  {
    (*(v84 + 32))(v78, v82, v81);
    (*(v84 + 16))(v135, v78, v81);
    sub_1CFE2FFF4();
    v85(v78, v81);
    v69 = 0;
  }

  sub_1CFE1E458(v77, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v86 = sub_1CFE30014();
  v87 = v175;
  (*(*(v86 - 8) + 56))(v175, v69, 1, v86);
  v88 = v158;
  v89 = v180;
  (*(v84 + 56))(v180 + *(v158 + 32), 1, 1, v81);
  v90 = v157;
  v91 = v161;
  v150(v89, v157, v161);
  v92 = v162;
  v93 = v166;
  v148(v89 + v88[5], v162, v166);
  v94 = v88[6];
  v95 = sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
  v96 = v145;
  v179 = v95;
  sub_1CFE306B4();
  sub_1CFDAC3A0(0);
  (*(*(v97 - 8) + 56))(v89 + v94, 0, 1, v97);

  (*(v164 + 8))(v92, v93);
  (*(v160 + 8))(v90, v91);
  sub_1CFDE4B24(v87, v89 + v88[7]);
  *(v89 + v88[9]) = 4;
  if (v169)
  {
    v98 = v171;
    static SleepingSampleBaselineAvailability.available(on:count:)(v139, v140, v171);
    v99 = v136;
    v100 = [v136 _countPerMinuteUnit];
    v101 = v137;
    v178 = [v137 quantityWithUnit:v100 doubleValue:60.0];

    v102 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v103 = [v99 _countPerMinuteUnit];
    v104 = [v101 quantityWithUnit:v103 doubleValue:53.0];

    v105 = [v99 _countPerMinuteUnit];
    v106 = [v101 quantityWithUnit:v105 doubleValue:67.0];

    v107 = [v102 initWithMinimum:v104 maximum:v106 isMinimumInclusive:1 isMaximumInclusive:1];
    v108 = [v99 _countPerMinuteUnit];
    v109 = [v101 quantityWithUnit:v108 doubleValue:3.5];

    v110 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v111 = [v99 _countPerMinuteUnit];
    v112 = [v101 quantityWithUnit:v111 doubleValue:53.0];

    v113 = v178;
    v114 = [v99 _countPerMinuteUnit];
    v115 = [v101 quantityWithUnit:v114 doubleValue:67.0];

    v116 = [v110 initWithMinimum:v112 maximum:v115 isMinimumInclusive:1 isMaximumInclusive:1];
    if ([v107 containsQuantity_])
    {
      v117 = v113;
      v118 = v134;
      sub_1CFE306B4();
      v119 = v173;
      sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
      v120 = v107;
      sub_1CFE306B4();
      v121 = v109;
      sub_1CFE306B4();
      sub_1CFE306B4();

      v122 = v141;
      sub_1CFE1E4B4(v118, v141, type metadata accessor for SleepingSampleBaseline);
      v123 = 0;
    }

    else
    {

      v123 = 1;
      v119 = v173;
      v122 = v141;
    }

    v126 = v170;
    v124 = *(v170 + 56);
    v124(v122, v123, 1, v119);
    v127 = (*(v126 + 48))(v122, 1, v119);
    v125 = v172;
    if (v127)
    {
      sub_1CFE1E458(v122, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      v128 = v125;
      v129 = 1;
    }

    else
    {
      sub_1CFE1E4B4(v122, v172, type metadata accessor for SleepingSampleBaseline);
      v128 = v125;
      v129 = 0;
    }

    v124(v128, v129, 1, v119);
  }

  else
  {
    v98 = v171;
    *v171 = 6;
    swift_storeEnumTagMultiPayload();
    v124 = *(v170 + 56);
    v125 = v172;
    v119 = v173;
    v124(v172, 1, 1, v173);
  }

  v130 = type metadata accessor for SleepingSampleBaselineComparison(0);
  v131 = *(v130 + 24);
  v132 = v174;
  v124(v174 + v131, 1, 1, v119);
  sub_1CFE1E4B4(v180, v132, type metadata accessor for SleepingSampleAggregate);
  sub_1CFE1E4B4(v98, v132 + *(v130 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
  return sub_1CFDB4730(v125, v132 + v131);
}

uint64_t static SleepingSampleBaselineComparison.empty(on:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_1CFDB1824(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v30 - v8;
  v10 = sub_1CFE307E4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v11 + 16);
  v15(v14, a1, v10);
  v16 = type metadata accessor for SleepingSampleAggregate(0);
  v17 = v16[5];
  v18 = sub_1CFE304B4();
  (*(*(v18 - 8) + 16))(&a3[v17], a2, v18);
  v19 = v16[7];
  v20 = sub_1CFE30014();
  (*(*(v20 - 8) + 56))(&a3[v19], 1, 1, v20);
  v21 = v16[8];
  v22 = sub_1CFE30314();
  (*(*(v22 - 8) + 56))(&a3[v21], 1, 1, v22);
  v15(a3, v14, v10);
  (*(v11 + 8))(v14, v10);
  v23 = v16[6];
  sub_1CFDAC3A0(0);
  (*(*(v24 - 8) + 56))(&a3[v23], 1, 1, v24);
  a3[v16[9]] = 0;
  v25 = type metadata accessor for SleepingSampleBaselineComparison(0);
  *&a3[*(v25 + 20)] = 6;
  type metadata accessor for SleepingSampleBaselineAvailability(0);
  swift_storeEnumTagMultiPayload();
  v26 = type metadata accessor for SleepingSampleBaseline(0);
  v27 = *(*(v26 - 8) + 56);
  v27(v9, 1, 1, v26);
  v28 = *(v25 + 24);
  v27(&a3[v28], 1, 1, v26);
  return sub_1CFDB4730(v9, &a3[v28]);
}

uint64_t static SleepingSampleBaselineComparison.spO2(_:on:calendar:hasBaseline:)@<X0>(char *a1@<X0>, char *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v168 = a3;
  v173 = a4;
  v172 = type metadata accessor for SleepingSampleBaseline(0);
  v169 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172, v8);
  v134 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB1824(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v140 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v171 = &v133 - v15;
  v138 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  MEMORY[0x1EEE9AC00](v138, v16);
  v170 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_1CFE30434();
  v164 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167, v18);
  v166 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_1CFE30444();
  v177 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162, v20);
  v158 = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_1CFE30424();
  v178 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176, v22);
  v153 = &v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB1824(0, &qword_1EDC31988, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v146 = &v133 - v26;
  sub_1CFDB1824(0, &qword_1EDC32910, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v133 - v29;
  v155 = sub_1CFE30134();
  v154 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155, v31);
  v175 = &v133 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1CFE30314();
  v152 = *(v151 - 8);
  v34 = MEMORY[0x1EEE9AC00](v151, v33);
  v135 = &v133 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v36);
  v141 = &v133 - v37;
  sub_1CFDB1824(0, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v40 = MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v145 = &v133 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v42);
  v144 = &v133 - v43;
  sub_1CFDB1824(0, &qword_1EDC32C78, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v44 - 8, v45);
  v174 = &v133 - v46;
  v47 = sub_1CFE304B4();
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v49);
  v51 = &v133 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1CFE307E4();
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v54);
  v56 = &v133 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for SleepingSampleAggregate(0);
  MEMORY[0x1EEE9AC00](v157, v57);
  v179 = &v133 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = v53;
  v59 = *(v53 + 16);
  v156 = v56;
  v160 = v52;
  v150 = v53 + 16;
  v149 = v59;
  v59(v56, a1, v52);
  v60 = *(v48 + 16);
  v161 = v51;
  v142 = a2;
  v148 = v48 + 16;
  v147 = v60;
  v60(v51, a2, v47);
  v61 = objc_opt_self();
  v136 = objc_opt_self();
  v62 = [v136 percentUnit];
  v137 = v61;
  v143 = [v61 quantityWithUnit:v62 doubleValue:(a5 + 95.0) / 100.0];

  v63 = objc_opt_self();
  v139 = a1;
  v64 = sub_1CFE307A4();
  v65 = sub_1CFE30454();
  v66 = [v63 hk:v64 sleepDayStartForMorningIndex:v65 calendar:?];

  sub_1CFE302F4();
  v163 = v48;
  v67 = *(v48 + 56);
  v68 = 1;
  v165 = v47;
  v67(v30, 1, 1, v47);
  v69 = sub_1CFE304E4();
  (*(*(v69 - 8) + 56))(v146, 1, 1, v69);
  sub_1CFE30124();
  v70 = v153;
  (*(v178 + 104))(v153, *MEMORY[0x1E69698A0], v176);
  v71 = v158;
  v72 = v162;
  v177[13](v158, *MEMORY[0x1E69699C8], v162);
  v73 = v164;
  v74 = v166;
  v75 = v167;
  (*(v164 + 104))(v166, *MEMORY[0x1E6969998], v167);
  v76 = v144;
  v77 = v141;
  v78 = v70;
  sub_1CFE30484();
  v79 = v73;
  v80 = v151;
  (*(v79 + 8))(v74, v75);
  v81 = v145;
  v82 = v72;
  v83 = v152;
  (v177[1])(v71, v82);
  (*(v178 + 8))(v78, v176);
  (*(v154 + 8))(v175, v155);
  v84 = *(v83 + 8);
  v84(v77, v80);
  sub_1CFDE4AA4(v76, v81);
  if ((*(v83 + 48))(v81, 1, v80) != 1)
  {
    (*(v83 + 32))(v77, v81, v80);
    (*(v83 + 16))(v135, v77, v80);
    sub_1CFE2FFF4();
    v84(v77, v80);
    v68 = 0;
  }

  sub_1CFE1E458(v76, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v85 = sub_1CFE30014();
  v86 = v174;
  (*(*(v85 - 8) + 56))(v174, v68, 1, v85);
  v87 = v157;
  v88 = v179;
  (*(v83 + 56))(v179 + *(v157 + 32), 1, 1, v80);
  v89 = v156;
  v90 = v160;
  v149(v88, v156, v160);
  v91 = v161;
  v92 = v165;
  v147(v88 + v87[5], v161, v165);
  v93 = v87[6];
  v94 = sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
  v95 = v143;
  v178 = v94;
  sub_1CFE306B4();
  sub_1CFDAC3A0(0);
  (*(*(v96 - 8) + 56))(v88 + v93, 0, 1, v96);

  (*(v163 + 8))(v91, v92);
  (*(v159 + 8))(v89, v90);
  sub_1CFDE4B24(v86, v88 + v87[7]);
  *(v88 + v87[9]) = 4;
  if (v168)
  {
    v97 = v170;
    static SleepingSampleBaselineAvailability.available(on:count:)(v139, 49, v170);
    v98 = v136;
    v99 = [v136 percentUnit];
    v100 = v137;
    v177 = [v137 quantityWithUnit:v99 doubleValue:0.95];

    v101 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v102 = [v98 percentUnit];
    v103 = [v100 quantityWithUnit:v102 doubleValue:0.94];

    v104 = [v98 percentUnit];
    v105 = [v100 quantityWithUnit:v104 doubleValue:0.96];

    v106 = [v101 initWithMinimum:v103 maximum:v105 isMinimumInclusive:1 isMaximumInclusive:1];
    v107 = [v98 percentUnit];
    v108 = [v100 quantityWithUnit:v107 doubleValue:0.005];

    v109 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v110 = [v98 percentUnit];
    v111 = [v100 quantityWithUnit:v110 doubleValue:0.94];

    v112 = v177;
    v113 = [v98 percentUnit];
    v114 = [v100 quantityWithUnit:v113 doubleValue:0.96];

    v115 = [v109 initWithMinimum:v111 maximum:v114 isMinimumInclusive:1 isMaximumInclusive:1];
    if ([v106 containsQuantity_])
    {
      v116 = v112;
      v117 = v134;
      sub_1CFE306B4();
      v118 = v172;
      sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
      v119 = v106;
      sub_1CFE306B4();
      v120 = v108;
      sub_1CFE306B4();
      sub_1CFE306B4();

      v121 = v140;
      sub_1CFE1E4B4(v117, v140, type metadata accessor for SleepingSampleBaseline);
      v122 = 0;
    }

    else
    {

      v122 = 1;
      v118 = v172;
      v121 = v140;
    }

    v125 = v169;
    v123 = *(v169 + 56);
    v123(v121, v122, 1, v118);
    v126 = (*(v125 + 48))(v121, 1, v118);
    v124 = v171;
    if (v126)
    {
      sub_1CFE1E458(v121, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      v127 = v124;
      v128 = 1;
    }

    else
    {
      sub_1CFE1E4B4(v121, v171, type metadata accessor for SleepingSampleBaseline);
      v127 = v124;
      v128 = 0;
    }

    v123(v127, v128, 1, v118);
  }

  else
  {
    v97 = v170;
    *v170 = 6;
    swift_storeEnumTagMultiPayload();
    v123 = *(v169 + 56);
    v124 = v171;
    v118 = v172;
    v123(v171, 1, 1, v172);
  }

  v129 = type metadata accessor for SleepingSampleBaselineComparison(0);
  v130 = *(v129 + 24);
  v131 = v173;
  v123(v173 + v130, 1, 1, v118);
  sub_1CFE1E4B4(v179, v131, type metadata accessor for SleepingSampleAggregate);
  sub_1CFE1E4B4(v97, v131 + *(v129 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
  return sub_1CFDB4730(v124, v131 + v130);
}

uint64_t static SleepingSampleBaselineComparison.rr(_:on:calendar:hasBaseline:)@<X0>(char *a1@<X0>, char *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v168 = a3;
  v173 = a4;
  v172 = type metadata accessor for SleepingSampleBaseline(0);
  v169 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172, v8);
  v134 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB1824(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v140 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v171 = &v133 - v15;
  v138 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  MEMORY[0x1EEE9AC00](v138, v16);
  v170 = &v133 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_1CFE30434();
  v164 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167, v18);
  v166 = &v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_1CFE30444();
  v177 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162, v20);
  v158 = &v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_1CFE30424();
  v178 = *(v176 - 8);
  MEMORY[0x1EEE9AC00](v176, v22);
  v153 = &v133 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB1824(0, &qword_1EDC31988, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v146 = &v133 - v26;
  sub_1CFDB1824(0, &qword_1EDC32910, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v133 - v29;
  v155 = sub_1CFE30134();
  v154 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155, v31);
  v175 = &v133 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1CFE30314();
  v152 = *(v151 - 8);
  v34 = MEMORY[0x1EEE9AC00](v151, v33);
  v135 = &v133 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v36);
  v141 = &v133 - v37;
  sub_1CFDB1824(0, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v40 = MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v145 = &v133 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v42);
  v143 = &v133 - v43;
  sub_1CFDB1824(0, &qword_1EDC32C78, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v44 - 8, v45);
  v174 = &v133 - v46;
  v47 = sub_1CFE304B4();
  v48 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v49);
  v51 = &v133 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1CFE307E4();
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v54);
  v56 = &v133 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for SleepingSampleAggregate(0);
  MEMORY[0x1EEE9AC00](v157, v57);
  v179 = &v133 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = v53;
  v59 = *(v53 + 16);
  v156 = v56;
  v160 = v52;
  v150 = v53 + 16;
  v149 = v59;
  v59(v56, a1, v52);
  v60 = *(v48 + 16);
  v161 = v51;
  v142 = a2;
  v148 = v48 + 16;
  v147 = v60;
  v60(v51, a2, v47);
  v61 = objc_opt_self();
  v136 = objc_opt_self();
  v62 = [v136 _countPerMinuteUnit];
  v137 = v61;
  v144 = [v61 quantityWithUnit:v62 doubleValue:a5 + 15.0];

  v63 = objc_opt_self();
  v139 = a1;
  v64 = sub_1CFE307A4();
  v65 = sub_1CFE30454();
  v66 = [v63 hk:v64 sleepDayStartForMorningIndex:v65 calendar:?];

  sub_1CFE302F4();
  v163 = v48;
  v67 = *(v48 + 56);
  v68 = 1;
  v165 = v47;
  v67(v30, 1, 1, v47);
  v69 = sub_1CFE304E4();
  (*(*(v69 - 8) + 56))(v146, 1, 1, v69);
  sub_1CFE30124();
  v70 = v153;
  (*(v178 + 104))(v153, *MEMORY[0x1E69698A0], v176);
  v71 = v158;
  v72 = v162;
  v177[13](v158, *MEMORY[0x1E69699C8], v162);
  v73 = v164;
  v74 = v166;
  v75 = v167;
  (*(v164 + 104))(v166, *MEMORY[0x1E6969998], v167);
  v76 = v143;
  v77 = v141;
  v78 = v70;
  sub_1CFE30484();
  v79 = v73;
  v80 = v151;
  (*(v79 + 8))(v74, v75);
  v81 = v145;
  v82 = v72;
  v83 = v152;
  (v177[1])(v71, v82);
  (*(v178 + 8))(v78, v176);
  (*(v154 + 8))(v175, v155);
  v84 = *(v83 + 8);
  v84(v77, v80);
  sub_1CFDE4AA4(v76, v81);
  if ((*(v83 + 48))(v81, 1, v80) != 1)
  {
    (*(v83 + 32))(v77, v81, v80);
    (*(v83 + 16))(v135, v77, v80);
    sub_1CFE2FFF4();
    v84(v77, v80);
    v68 = 0;
  }

  sub_1CFE1E458(v76, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v85 = sub_1CFE30014();
  v86 = v174;
  (*(*(v85 - 8) + 56))(v174, v68, 1, v85);
  v87 = v157;
  v88 = v179;
  (*(v83 + 56))(v179 + *(v157 + 32), 1, 1, v80);
  v89 = v156;
  v90 = v160;
  v149(v88, v156, v160);
  v91 = v161;
  v92 = v165;
  v147(v88 + v87[5], v161, v165);
  v93 = v87[6];
  v94 = sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
  v95 = v144;
  v178 = v94;
  sub_1CFE306B4();
  sub_1CFDAC3A0(0);
  (*(*(v96 - 8) + 56))(v88 + v93, 0, 1, v96);

  (*(v163 + 8))(v91, v92);
  (*(v159 + 8))(v89, v90);
  sub_1CFDE4B24(v86, v88 + v87[7]);
  *(v88 + v87[9]) = 4;
  if (v168)
  {
    v97 = v170;
    static SleepingSampleBaselineAvailability.available(on:count:)(v139, 49, v170);
    v98 = v136;
    v99 = [v136 _countPerMinuteUnit];
    v100 = v137;
    v177 = [v137 quantityWithUnit:v99 doubleValue:15.0];

    v101 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v102 = [v98 _countPerMinuteUnit];
    v103 = [v100 quantityWithUnit:v102 doubleValue:14.0];

    v104 = [v98 _countPerMinuteUnit];
    v105 = [v100 quantityWithUnit:v104 doubleValue:16.0];

    v106 = [v101 initWithMinimum:v103 maximum:v105 isMinimumInclusive:1 isMaximumInclusive:1];
    v107 = [v98 _countPerMinuteUnit];
    v108 = [v100 quantityWithUnit:v107 doubleValue:0.5];

    v109 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v110 = [v98 _countPerMinuteUnit];
    v111 = [v100 quantityWithUnit:v110 doubleValue:14.0];

    v112 = v177;
    v113 = [v98 _countPerMinuteUnit];
    v114 = [v100 quantityWithUnit:v113 doubleValue:16.0];

    v115 = [v109 initWithMinimum:v111 maximum:v114 isMinimumInclusive:1 isMaximumInclusive:1];
    if ([v106 containsQuantity_])
    {
      v116 = v112;
      v117 = v134;
      sub_1CFE306B4();
      v118 = v172;
      sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
      v119 = v106;
      sub_1CFE306B4();
      v120 = v108;
      sub_1CFE306B4();
      sub_1CFE306B4();

      v121 = v140;
      sub_1CFE1E4B4(v117, v140, type metadata accessor for SleepingSampleBaseline);
      v122 = 0;
    }

    else
    {

      v122 = 1;
      v118 = v172;
      v121 = v140;
    }

    v125 = v169;
    v123 = *(v169 + 56);
    v123(v121, v122, 1, v118);
    v126 = (*(v125 + 48))(v121, 1, v118);
    v124 = v171;
    if (v126)
    {
      sub_1CFE1E458(v121, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      v127 = v124;
      v128 = 1;
    }

    else
    {
      sub_1CFE1E4B4(v121, v171, type metadata accessor for SleepingSampleBaseline);
      v127 = v124;
      v128 = 0;
    }

    v123(v127, v128, 1, v118);
  }

  else
  {
    v97 = v170;
    *v170 = 6;
    swift_storeEnumTagMultiPayload();
    v123 = *(v169 + 56);
    v124 = v171;
    v118 = v172;
    v123(v171, 1, 1, v172);
  }

  v129 = type metadata accessor for SleepingSampleBaselineComparison(0);
  v130 = *(v129 + 24);
  v131 = v173;
  v123(v173 + v130, 1, 1, v118);
  sub_1CFE1E4B4(v179, v131, type metadata accessor for SleepingSampleAggregate);
  sub_1CFE1E4B4(v97, v131 + *(v129 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
  return sub_1CFDB4730(v124, v131 + v130);
}

uint64_t static SleepingSampleBaselineComparison.wtr(_:on:calendar:hasBaseline:)@<X0>(char *a1@<X0>, char *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v224 = a3;
  v248 = a2;
  v229 = a4;
  v228 = type metadata accessor for SleepingSampleBaseline(0);
  v226 = *(v228 - 8);
  MEMORY[0x1EEE9AC00](v228, v7);
  v186 = v183 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB1824(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v210 = v183 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v227 = v183 - v14;
  v209 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  MEMORY[0x1EEE9AC00](v209, v15);
  v239 = v183 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = sub_1CFE30434();
  v247 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237, v17);
  v236 = v183 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = sub_1CFE30444();
  v246 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235, v19);
  v234 = v183 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_1CFE30424();
  v249 = *(v245 - 8);
  MEMORY[0x1EEE9AC00](v245, v21);
  v233 = v183 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB1824(0, &qword_1EDC31988, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = (v183 - v25);
  sub_1CFDB1824(0, &qword_1EDC32910, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = (v183 - v29);
  v232 = sub_1CFE30134();
  v244 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232, v31);
  v243 = v183 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB1824(0, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v206 = v183 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v37);
  v211 = v183 - v38;
  v231 = sub_1CFE30314();
  v242 = *(v231 - 8);
  v40 = MEMORY[0x1EEE9AC00](v231, v39);
  v184 = v183 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v185 = v183 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43, v45);
  v240 = v183 - v47;
  MEMORY[0x1EEE9AC00](v46, v48);
  v230 = v183 - v49;
  sub_1CFDB1824(0, &qword_1EDC32C78, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v50 - 8, v51);
  v223 = v183 - v52;
  v53 = sub_1CFE304B4();
  v54 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v55);
  v57 = v183 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1CFE307E4();
  v59 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v60);
  v62 = v183 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = type metadata accessor for SleepingSampleAggregate(0);
  MEMORY[0x1EEE9AC00](v218, v63);
  v241 = v183 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = v59;
  v65 = *(v59 + 16);
  v217 = v62;
  v220 = v58;
  v216 = v59 + 16;
  v215 = v65;
  v65(v62, a1, v58);
  v66 = *(v54 + 16);
  v221 = v57;
  v214 = v54 + 16;
  v213 = v66;
  v66(v57, v248, v53);
  v67 = objc_opt_self();
  v207 = objc_opt_self();
  v68 = [v207 _changeInDegreeCelsiusUnit];
  v208 = v67;
  v212 = [v67 quantityWithUnit:v68 doubleValue:a5];

  v69 = objc_opt_self();
  v225 = a1;
  v70 = sub_1CFE307A4();
  v71 = sub_1CFE30454();
  v203 = v69;
  v72 = [v69 hk:v70 sleepDayStartForMorningIndex:v71 calendar:?];

  sub_1CFE302F4();
  v222 = v54;
  v73 = *(v54 + 56);
  v238 = v53;
  v202 = (v54 + 56);
  v201 = v73;
  v73(v30, 1, 1, v53);
  v74 = sub_1CFE304E4();
  v75 = *(v74 - 8);
  v76 = *(v75 + 56);
  v200 = v74;
  v199 = v76;
  v198 = v75 + 56;
  (v76)(v26, 1, 1);
  v204 = v30;
  v205 = v26;
  sub_1CFE30124();
  v77 = *(v249 + 104);
  v78 = v233;
  v196 = *MEMORY[0x1E69698A0];
  v197 = v249 + 104;
  v195 = v77;
  v77(v233);
  v79 = v246;
  v80 = *(v246 + 104);
  v81 = v234;
  v193 = *MEMORY[0x1E69699C8];
  v82 = v235;
  v194 = v246 + 104;
  v192 = v80;
  v80(v234);
  v83 = v247;
  v84 = *(v247 + 104);
  v85 = v236;
  v190 = *MEMORY[0x1E6969998];
  v86 = v237;
  v191 = v247 + 104;
  v189 = v84;
  v84(v236);
  v87 = v211;
  v88 = v240;
  v89 = v78;
  v90 = v81;
  v91 = v85;
  sub_1CFE30484();
  v92 = v242;
  v93 = *(v83 + 8);
  v247 = v83 + 8;
  v188 = v93;
  v93(v91, v86);
  v94 = *(v79 + 8);
  v246 = v79 + 8;
  v187 = v94;
  v94(v90, v82);
  v95 = *(v249 + 8);
  v249 += 8;
  v95(v89, v245);
  v96 = *(v244 + 8);
  v244 += 8;
  v96(v243, v232);
  v97 = (v92 + 1);
  v98 = v92[1];
  v99 = v231;
  v98(v88, v231);
  v101 = v92 + 6;
  v100 = v92[6];
  if (v100(v87, 1, v99) == 1)
  {
    sub_1CFE1E458(v87, &qword_1EDC32C70, MEMORY[0x1E6969530]);
    _s5ErrorOMa(0);
    sub_1CFE07870(&qword_1EC509850, _s5ErrorOMa, &unk_1CFE36C44);
    v102 = swift_allocError();
    *v103 = xmmword_1CFE34CF0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v104 = v223;
    v105 = v99;
  }

  else
  {
    v106 = v92[4];
    v183[1] = v92 + 4;
    v183[0] = v106;
    v106(v230, v87, v99);
    v107 = sub_1CFE307A4();
    v108 = sub_1CFE30454();
    v109 = [v203 hk:v107 sleepDayStartForMorningIndex:v108 calendar:?];

    sub_1CFE302F4();
    v201(v204, 1, 1, v238);
    v199(v205, 1, 1, v200);
    v211 = v97;
    v203 = v98;
    v202 = v95;
    v110 = v243;
    sub_1CFE30124();
    v111 = v233;
    v204 = v96;
    v112 = v245;
    v195(v233, v196, v245);
    v113 = v234;
    v205 = v100;
    v114 = v235;
    v192(v234, v193, v235);
    v116 = v236;
    v115 = v237;
    v189(v236, v190, v237);
    v117 = v206;
    v201 = v101;
    v118 = v240;
    sub_1CFE30484();
    v188(v116, v115);
    v187(v113, v114);
    v202(v111, v112);
    v119 = v110;
    v120 = v203;
    v204(v119, v232);
    v105 = v231;
    v120(v118, v231);
    if (v205(v117, 1, v105) == 1)
    {
      sub_1CFE1E458(v117, &qword_1EDC32C70, MEMORY[0x1E6969530]);
      _s5ErrorOMa(0);
      sub_1CFE07870(&qword_1EC509850, _s5ErrorOMa, &unk_1CFE36C44);
      v102 = swift_allocError();
      *v121 = xmmword_1CFE34CE0;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v120(v230, v105);
    }

    else
    {
      v122 = v118;
      v123 = v185;
      (v183[0])(v185, v117, v105);
      sub_1CFE07870(&qword_1EDC32030, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      if (sub_1CFE30874())
      {
        v124 = v242;
        v125 = v242[2];
        v126 = v230;
        v125(v122, v230, v105);
        v125(v184, v123, v105);
        v104 = v223;
        sub_1CFE2FFE4();
        v120(v123, v105);
        v120(v126, v105);
        v127 = 0;
        goto LABEL_10;
      }

      v249 = _s5ErrorOMa(0);
      sub_1CFE07870(&qword_1EC509850, _s5ErrorOMa, &unk_1CFE36C44);
      v102 = swift_allocError();
      v129 = v128;
      sub_1CFE078B8(0);
      v131 = *(v130 + 48);
      v132 = v242[2];
      v133 = v120;
      v134 = v230;
      v132(v129, v230, v105);
      v132(v129 + v131, v123, v105);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v133(v123, v105);
      v133(v134, v105);
    }

    v104 = v223;
  }

  v127 = 1;
  v124 = v242;
LABEL_10:
  v135 = sub_1CFE30014();
  (*(*(v135 - 8) + 56))(v104, v127, 1, v135);
  v136 = v218;
  v137 = v241;
  (v124[7])(v241 + *(v218 + 32), 1, 1, v105);
  v138 = v217;
  v139 = v220;
  v215(v137, v217, v220);
  v140 = v221;
  v141 = v238;
  v213(v137 + v136[5], v221, v238);
  v142 = v136[6];
  v143 = sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
  v144 = v104;
  v145 = v212;
  v249 = v143;
  sub_1CFE306B4();
  sub_1CFDAC3A0(0);
  (*(*(v146 - 8) + 56))(v137 + v142, 0, 1, v146);

  (*(v222 + 8))(v140, v141);
  (*(v219 + 8))(v138, v139);
  sub_1CFDE4B24(v144, v137 + v136[7]);
  *(v137 + v136[9]) = 4;
  if (v224)
  {
    static SleepingSampleBaselineAvailability.available(on:count:)(v225, 49, v239);
    v147 = v207;
    v148 = [v207 _changeInDegreeCelsiusUnit];
    v149 = v208;
    v150 = [v208 quantityWithUnit:v148 doubleValue:0.0];

    v151 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v152 = [v147 _changeInDegreeCelsiusUnit];
    v153 = [v149 quantityWithUnit:v152 doubleValue:-1.0];

    v154 = [v147 _changeInDegreeCelsiusUnit];
    v155 = [v149 quantityWithUnit:v154 doubleValue:1.0];

    v156 = [v151 initWithMinimum:v153 maximum:v155 isMinimumInclusive:1 isMaximumInclusive:1];
    v157 = [v147 _changeInDegreeCelsiusUnit];
    v158 = [v149 quantityWithUnit:v157 doubleValue:0.5];

    v159 = objc_allocWithZone(MEMORY[0x1E696C350]);
    v160 = [v147 _changeInDegreeCelsiusUnit];
    v161 = [v149 quantityWithUnit:v160 doubleValue:-1.0];

    v162 = [v147 _changeInDegreeCelsiusUnit];
    v163 = [v149 quantityWithUnit:v162 doubleValue:1.0];

    v164 = [v159 initWithMinimum:v161 maximum:v163 isMinimumInclusive:1 isMaximumInclusive:1];
    if ([v156 containsQuantity_])
    {
      v165 = v150;
      v166 = v186;
      sub_1CFE306B4();
      v167 = v228;
      sub_1CFDA6E64(0, &qword_1EDC32918, 0x1E696C350);
      v168 = v156;
      sub_1CFE306B4();
      v169 = v158;
      sub_1CFE306B4();
      sub_1CFE306B4();

      v170 = v210;
      sub_1CFE1E4B4(v166, v210, type metadata accessor for SleepingSampleBaseline);
      v171 = 0;
    }

    else
    {

      v171 = 1;
      v170 = v210;
      v167 = v228;
    }

    v175 = v226;
    v173 = *(v226 + 56);
    v173(v170, v171, 1, v167);
    v176 = (*(v175 + 48))(v170, 1, v167);
    v174 = v227;
    v172 = v239;
    if (v176)
    {
      sub_1CFE1E458(v170, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
      v177 = v174;
      v178 = 1;
    }

    else
    {
      sub_1CFE1E4B4(v170, v227, type metadata accessor for SleepingSampleBaseline);
      v177 = v174;
      v178 = 0;
    }

    v173(v177, v178, 1, v167);
  }

  else
  {
    v172 = v239;
    *v239 = 6;
    swift_storeEnumTagMultiPayload();
    v173 = *(v226 + 56);
    v174 = v227;
    v167 = v228;
    v173(v227, 1, 1, v228);
  }

  v179 = type metadata accessor for SleepingSampleBaselineComparison(0);
  v180 = *(v179 + 24);
  v181 = v229;
  v173(v229 + v180, 1, 1, v167);
  sub_1CFE1E4B4(v241, v181, type metadata accessor for SleepingSampleAggregate);
  sub_1CFE1E4B4(v172, v181 + *(v179 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
  return sub_1CFDB4730(v174, v181 + v180);
}

uint64_t static SleepingSampleBaselineComparison.asleep(_:on:calendar:hasBaseline:)@<X0>(char *a1@<X0>, char *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v159 = a3;
  v181 = a2;
  v162 = a4;
  sub_1CFDB1824(0, qword_1EDC32C28, type metadata accessor for SleepingSampleBaseline);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v161 = v123 - v9;
  v124 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  MEMORY[0x1EEE9AC00](v124, v10);
  v160 = v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_1CFE30434();
  v180 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173, v12);
  v172 = v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_1CFE30444();
  v179 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171, v14);
  v170 = v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_1CFE30424();
  v182 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178, v16);
  v169 = v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDB1824(0, &qword_1EDC31988, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = (v123 - v20);
  sub_1CFDB1824(0, &qword_1EDC32910, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = v123 - v24;
  v168 = sub_1CFE30134();
  v177 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168, v26);
  v176 = v123 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_1CFE30314();
  v146 = *(v175 - 8);
  v29 = MEMORY[0x1EEE9AC00](v175, v28);
  v123[1] = v123 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v123[0] = v123 - v33;
  MEMORY[0x1EEE9AC00](v32, v34);
  v164 = v123 - v35;
  sub_1CFDB1824(0, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v145 = v123 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v40);
  v144 = v123 - v41;
  sub_1CFDB1824(0, &qword_1EDC32C78, MEMORY[0x1E6968130]);
  MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v174 = v123 - v44;
  v45 = sub_1CFE304B4();
  v46 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v47);
  v49 = v123 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1CFE307E4();
  v51 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v52);
  v54 = v123 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for SleepingSampleAggregate(0);
  MEMORY[0x1EEE9AC00](v165, v55);
  v167 = v123 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = v51;
  v57 = *(v51 + 16);
  v152 = v54;
  v154 = v50;
  v151 = v51 + 16;
  v150 = v57;
  v57(v54, a1, v50);
  v58 = *(v46 + 16);
  v155 = v49;
  v149 = v46 + 16;
  v148 = v58;
  v58(v49, v181, v45);
  v59 = objc_opt_self();
  v60 = [objc_opt_self() secondUnit];
  v147 = [v59 quantityWithUnit:v60 doubleValue:a5 * 3600.0 + 25200.0];

  v61 = objc_opt_self();
  v163 = a1;
  v62 = sub_1CFE307A4();
  v63 = sub_1CFE30454();
  v143 = v61;
  v64 = [v61 hk:v62 sleepDayStartForMorningIndex:v63 calendar:?];

  sub_1CFE302F4();
  v156 = v46;
  v65 = *(v46 + 56);
  v166 = v45;
  v142 = v46 + 56;
  v141 = v65;
  v65(v25, 1, 1, v45);
  v66 = sub_1CFE304E4();
  v67 = *(v66 - 8);
  v68 = *(v67 + 56);
  v140 = v66;
  v139 = v68;
  v138 = v67 + 56;
  (v68)(v21, 1, 1);
  v157 = v25;
  v158 = v21;
  sub_1CFE30124();
  v69 = *(v182 + 104);
  v70 = v169;
  v137 = *MEMORY[0x1E69698A0];
  v136 = v182 + 104;
  v135 = v69;
  v69(v169);
  v71 = v179;
  v72 = *(v179 + 104);
  v73 = v170;
  v134 = *MEMORY[0x1E69699C8];
  v74 = v171;
  v133 = v179 + 104;
  v132 = v72;
  v72(v170);
  v75 = v180;
  v76 = *(v180 + 104);
  v77 = v172;
  v131 = *MEMORY[0x1E6969998];
  v78 = v173;
  v130 = v180 + 104;
  v129 = v76;
  v76(v172);
  v79 = v144;
  v80 = v164;
  sub_1CFE30484();
  v81 = *(v75 + 8);
  v180 = v75 + 8;
  v128 = v81;
  v81(v77, v78);
  v82 = v71;
  v83 = v145;
  v84 = *(v82 + 8);
  v179 = v82 + 8;
  v127 = v84;
  v84(v73, v74);
  v85 = *(v182 + 8);
  v86 = v146;
  v182 += 8;
  v126 = v85;
  v85(v70, v178);
  v87 = *(v177 + 8);
  v177 += 8;
  v125 = v87;
  v87(v176, v168);
  v88 = *(v86 + 8);
  v89 = v175;
  v88(v80, v175);
  sub_1CFDE4AA4(v79, v83);
  v90 = 1;
  if ((*(v86 + 48))(v83, 1, v89) != 1)
  {
    v91 = v175;
    (*(v86 + 32))(v80, v83, v175);
    v92 = v123[0];
    (*(v86 + 16))(v123[0], v80, v91);
    sub_1CFE302C4();
    sub_1CFE2FFF4();
    v88(v92, v91);
    v88(v80, v91);
    v90 = 0;
  }

  sub_1CFE1E458(v79, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v93 = sub_1CFE30014();
  (*(*(v93 - 8) + 56))(v174, v90, 1, v93);
  v94 = sub_1CFE307A4();
  v95 = sub_1CFE30454();
  v96 = [v143 hk:v94 sleepDayStartForMorningIndex:v95 calendar:?];

  sub_1CFE302F4();
  v141(v157, 1, 1, v166);
  v139(v158, 1, 1, v140);
  v146 = v86 + 8;
  v97 = v176;
  sub_1CFE30124();
  v98 = v169;
  v99 = v178;
  v135(v169, v137, v178);
  v100 = v170;
  v158 = v88;
  v101 = v171;
  v132(v170, v134, v171);
  v103 = v172;
  v102 = v173;
  v129(v172, v131, v173);
  v104 = v164;
  v105 = v167;
  sub_1CFE30484();
  v128(v103, v102);
  v127(v100, v101);
  v126(v98, v99);
  v125(v97, v168);
  v158(v104, v175);
  v106 = v152;
  v107 = v154;
  v150(v105, v152, v154);
  v108 = v165;
  v109 = v166;
  v110 = v155;
  v148(v105 + *(v165 + 20), v155, v166);
  v111 = *(v108 + 24);
  v112 = v108;
  sub_1CFDA6E64(0, &qword_1EDC32C80, 0x1E696C348);
  v113 = v147;
  sub_1CFE306B4();
  sub_1CFDAC3A0(0);
  (*(*(v114 - 8) + 56))(v105 + v111, 0, 1, v114);

  (*(v156 + 8))(v110, v109);
  (*(v153 + 8))(v106, v107);
  sub_1CFDE4B24(v174, v105 + *(v112 + 28));
  *(v105 + *(v112 + 36)) = 4;
  v115 = v160;
  if (v159)
  {
    static SleepingSampleBaselineAvailability.available(on:count:)(v163, 49, v160);
    v116 = v161;
    SleepingSampleBaseline.init(s:_:_:)(v161, 21600.0, 25200.0, 28800.0);
  }

  else
  {
    *v160 = 6;
    swift_storeEnumTagMultiPayload();
    v117 = type metadata accessor for SleepingSampleBaseline(0);
    v116 = v161;
    (*(*(v117 - 8) + 56))(v161, 1, 1, v117);
  }

  v118 = type metadata accessor for SleepingSampleBaselineComparison(0);
  v119 = *(v118 + 24);
  v120 = type metadata accessor for SleepingSampleBaseline(0);
  v121 = v162;
  (*(*(v120 - 8) + 56))(v162 + v119, 1, 1, v120);
  sub_1CFE1E4B4(v167, v121, type metadata accessor for SleepingSampleAggregate);
  sub_1CFE1E4B4(v115, v121 + *(v118 + 20), type metadata accessor for SleepingSampleBaselineAvailability);
  return sub_1CFDB4730(v116, v121 + v119);
}

uint64_t sub_1CFE1E458(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1CFDB1824(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1CFE1E4B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t HealthBalanceAnalyticsError.hashValue.getter()
{
  sub_1CFE31144();
  MEMORY[0x1D3876810](0);
  return sub_1CFE31184();
}

uint64_t submitAnalytics(for:manager:)(void *a1, void *a2)
{
  sub_1CFDA9D60(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 notification];
  v9 = [v8 request];

  v10 = [v9 content];
  v11 = [v10 categoryIdentifier];

  sub_1CFE30924();
  v12 = sub_1CFE30F54();

  v13 = 0;
  if (!v12)
  {
LABEL_4:
    v14 = [a1 actionIdentifier];
    v15 = sub_1CFE30924();
    v17 = v16;

    if (v15 == sub_1CFE30924() && v17 == v18)
    {

      v19 = 2;
      if (!a2)
      {
LABEL_7:
        sub_1CFDD36C0();
        v20 = sub_1CFE30C64();
        v21 = [objc_allocWithZone(MEMORY[0x1E696C1C0]) init];
        v22 = [objc_allocWithZone(MEMORY[0x1E696BF00]) initWithLoggingCategory:v20 healthDataSource:v21];

LABEL_13:
        v24 = sub_1CFE30314();
        (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
        type metadata accessor for HealthBalanceNotificationsAnalyticsEvent(0);
        v25 = swift_allocObject();
        *(v25 + 16) = v12;
        *(v25 + 24) = v13;
        *(v25 + 25) = v19;
        sub_1CFDA9CFC(v7, v25 + OBJC_IVAR____TtC13HealthBalance40HealthBalanceNotificationsAnalyticsEvent_outOfRangeNotificationLastSentDate);
        aBlock[4] = nullsub_1;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1CFDD8A08;
        aBlock[3] = &block_descriptor_3;
        v26 = _Block_copy(aBlock);
        v27 = a2;
        [v22 submitEvent:v25 completion:v26];

        _Block_release(v26);

        return 1;
      }
    }

    else
    {
      v23 = sub_1CFE310B4();

      if (v23)
      {
        v19 = 2;
      }

      else
      {
        v19 = 1;
      }

      if (!a2)
      {
        goto LABEL_7;
      }
    }

    v22 = a2;
    goto LABEL_13;
  }

  if (v12 == 2)
  {
    v12 = 1;
    LOBYTE(v13) = 1;
    goto LABEL_4;
  }

  return v13;
}

unint64_t sub_1CFE1E92C()
{
  result = qword_1EC509F38;
  if (!qword_1EC509F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509F38);
  }

  return result;
}

uint64_t TrainingLoadSampleDaySummaryCollection.init(morningIndexRange:daySummaries:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1CFDF137C(a1, a3);
  result = type metadata accessor for TrainingLoadSampleDaySummaryCollection(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t TrainingLoadSampleDaySummaryCollection.daySummaries.getter()
{
  type metadata accessor for TrainingLoadSampleDaySummaryCollection(0);
}

uint64_t TrainingLoadSampleDaySummaryCollection.daySummaries.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TrainingLoadSampleDaySummaryCollection(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

void static TrainingLoadSampleDaySummaryCollection.fake(inDayRange:separateByActivityType:)(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v387 = a2;
  v334 = a3;
  BaselineComparison = type metadata accessor for TrainingLoadBaselineComparison(0);
  v5 = MEMORY[0x1EEE9AC00](BaselineComparison, v4);
  v349 = &v332 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v395 = &v332 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v348 = &v332 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v386 = &v332 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v347 = &v332 - v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v385 = &v332 - v20;
  ChronicBaseline = type metadata accessor for TrainingLoadChronicBaseline(0);
  v22 = MEMORY[0x1EEE9AC00](ChronicBaseline, v21);
  v346 = (&v332 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v345 = &v332 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v384 = (&v332 - v29);
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v383 = (&v332 - v32);
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v382 = &v332 - v35;
  MEMORY[0x1EEE9AC00](v34, v36);
  v381 = (&v332 - v37);
  sub_1CFDAD280(0);
  v40 = MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v335 = &v332 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v344 = &v332 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43, v45);
  v343 = &v332 - v47;
  MEMORY[0x1EEE9AC00](v46, v48);
  v342 = &v332 - v49;
  AcuteBaseline = type metadata accessor for TrainingLoadAcuteBaseline(0);
  v52 = MEMORY[0x1EEE9AC00](AcuteBaseline - 8, v51);
  v352 = &v332 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1EEE9AC00](v52, v54);
  v341 = &v332 - v56;
  v58 = MEMORY[0x1EEE9AC00](v55, v57);
  v380 = &v332 - v59;
  v61 = MEMORY[0x1EEE9AC00](v58, v60);
  v340 = &v332 - v62;
  v64 = MEMORY[0x1EEE9AC00](v61, v63);
  v379 = &v332 - v65;
  v67 = MEMORY[0x1EEE9AC00](v64, v66);
  v378 = &v332 - v68;
  v70 = MEMORY[0x1EEE9AC00](v67, v69);
  v339 = &v332 - v71;
  MEMORY[0x1EEE9AC00](v70, v72);
  v377 = &v332 - v73;
  v74 = sub_1CFE30404();
  v417 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v75);
  v404 = &v332 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v399 = sub_1CFE304B4();
  v415 = *(v399 - 8);
  v78 = MEMORY[0x1EEE9AC00](v399, v77);
  v376 = &v332 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = MEMORY[0x1EEE9AC00](v78, v80);
  v375 = &v332 - v82;
  MEMORY[0x1EEE9AC00](v81, v83);
  v374 = &v332 - v84;
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary(0);
  v373 = *(SampleDaySummary - 8);
  v86 = MEMORY[0x1EEE9AC00](SampleDaySummary, v85);
  v372 = &v332 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = MEMORY[0x1EEE9AC00](v86, v88);
  v371 = &v332 - v90;
  v92 = MEMORY[0x1EEE9AC00](v89, v91);
  v370 = &v332 - v93;
  v95 = MEMORY[0x1EEE9AC00](v92, v94);
  v369 = &v332 - v96;
  v98 = MEMORY[0x1EEE9AC00](v95, v97);
  v368 = &v332 - v99;
  MEMORY[0x1EEE9AC00](v98, v100);
  v338 = &v332 - v101;
  sub_1CFDA7460(0);
  v367 = v102;
  v104 = MEMORY[0x1EEE9AC00](v102, v103);
  v366 = &v332 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v104, v106);
  v365 = &v332 - v107;
  sub_1CFDA7600(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
  v364 = v108;
  v110 = MEMORY[0x1EEE9AC00](v108, v109);
  v351 = &v332 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = MEMORY[0x1EEE9AC00](v110, v112);
  v337 = &v332 - v114;
  v116 = MEMORY[0x1EEE9AC00](v113, v115);
  v336 = &v332 - v117;
  MEMORY[0x1EEE9AC00](v116, v118);
  v416 = &v332 - v119;
  v120 = sub_1CFE307E4();
  v121 = *(v120 - 8);
  v123 = MEMORY[0x1EEE9AC00](v120, v122);
  v394 = &v332 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = MEMORY[0x1EEE9AC00](v123, v125);
  v363 = &v332 - v127;
  v129 = MEMORY[0x1EEE9AC00](v126, v128);
  v362 = &v332 - v130;
  v132 = MEMORY[0x1EEE9AC00](v129, v131);
  v134 = &v332 - v133;
  v136 = MEMORY[0x1EEE9AC00](v132, v135);
  v138 = &v332 - v137;
  v140 = MEMORY[0x1EEE9AC00](v136, v139);
  v389 = &v332 - v141;
  MEMORY[0x1EEE9AC00](v140, v142);
  v396 = &v332 - v143;
  sub_1CFDF6B34(0);
  v393 = v144;
  MEMORY[0x1EEE9AC00](v144, v145);
  v147 = &v332 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDF6B98(0);
  v150 = MEMORY[0x1EEE9AC00](v148 - 8, v149);
  v390 = &v332 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = MEMORY[0x1EEE9AC00](v150, v152);
  v391 = &v332 - v154;
  v156 = MEMORY[0x1EEE9AC00](v153, v155);
  v350 = &v332 - v157;
  MEMORY[0x1EEE9AC00](v156, v158);
  v160 = &v332 - v159;
  sub_1CFDAA2DC(0, &qword_1EDC318C0, MEMORY[0x1E696B418], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v161 - 8, v162);
  v392 = &v332 - v163;
  sub_1CFE213AC(0);
  v165 = v164 - 8;
  MEMORY[0x1EEE9AC00](v164, v166);
  v168 = &v332 - ((v167 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA6ADC(a1, v168, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  v169 = *(v165 + 44);
  v170 = *(v121 + 16);
  v333 = a1;
  v403[1] = v121 + 16;
  v403[0] = v170;
  v170(&v168[v169], a1, v120);
  v171 = *(v121 + 56);
  v121 += 56;
  v411 = v169;
  v412 = v171;
  v171(&v168[v169], 0, 1, v120);
  v172 = (v121 - 8);
  v397 = (v121 - 24);
  v418 = (v121 - 48);
  v402 = *MEMORY[0x1E6969868];
  v401 = (v417 + 104);
  v400 = (v417 + 8);
  v398 = (v415 + 1);
  v415 = MEMORY[0x1E69E7CC0];
  v405 = v74;
  v410 = v121;
  v419 = v120;
  v388 = v134;
  v414 = v138;
  v361 = v147;
  v360 = v160;
  v409 = v168;
  v359 = (v121 - 8);
  while (1)
  {
    v412(v160, 1, 1, v120);
    v181 = *(v393 + 48);
    sub_1CFE217C8(&v168[v411], v147, sub_1CFDF6B98);
    sub_1CFE217C8(v160, &v147[v181], sub_1CFDF6B98);
    v182 = *v172;
    if ((*v172)(v147, 1, v120) == 1)
    {
      sub_1CFE214E4(v160, sub_1CFDF6B98);
      v183 = v182(&v147[v181], 1, v120);
      v184 = v392;
      if (v183 == 1)
      {
        sub_1CFE214E4(v168, sub_1CFE213AC);
        v329 = sub_1CFDF6B98;
        v330 = v147;
LABEL_59:
        sub_1CFE214E4(v330, v329);
        v412(v184, 1, 1, v120);
        v331 = v334;
        sub_1CFDA6ADC(v333, v334, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
        *(v331 + *(type metadata accessor for TrainingLoadSampleDaySummaryCollection(0) + 20)) = v415;
        return;
      }

      goto LABEL_12;
    }

    v185 = v350;
    sub_1CFE217C8(v147, v350, sub_1CFDF6B98);
    if (v182(&v147[v181], 1, v120) == 1)
    {
      sub_1CFE214E4(v160, sub_1CFDF6B98);
      (*v418)(v185, v120);
      v184 = v392;
LABEL_12:
      sub_1CFE214E4(v147, sub_1CFDF6B34);
      goto LABEL_14;
    }

    v186 = v396;
    (*v397)(v396, &v147[v181], v120);
    sub_1CFDA78C8(&qword_1EDC31AB0, MEMORY[0x1E696B438]);
    v187 = sub_1CFE308B4();
    v188 = *v418;
    (*v418)(v186, v419);
    sub_1CFE214E4(v160, sub_1CFDF6B98);
    v188(v185, v419);
    v120 = v419;
    sub_1CFE214E4(v147, sub_1CFDF6B98);
    v184 = v392;
    if (v187)
    {
      v329 = sub_1CFE213AC;
      v330 = v409;
      goto LABEL_59;
    }

LABEL_14:
    v189 = v409;
    v190 = v411;
    v191 = v391;
    sub_1CFE217C8(&v409[v411], v391, sub_1CFDF6B98);
    if (v182(v191, 1, v120) == 1)
    {
      goto LABEL_63;
    }

    v192 = *v397;
    (*v397)(v184, v191, v120);
    v193 = v390;
    sub_1CFE21830(&v189[v190], v390, sub_1CFDF6B98);
    if (v182(v193, 1, v120) == 1)
    {
      goto LABEL_62;
    }

    v194 = v389;
    v192(v389, v193, v120);
    sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
    sub_1CFDA78C8(&qword_1EDC31AB0, MEMORY[0x1E696B438]);
    if (sub_1CFE308B4())
    {
      v417 = *v418;
      v417(v194, v120);
      v195 = 1;
    }

    else
    {
      v423 = 1;
      sub_1CFDA78C8(&unk_1EDC31E78, MEMORY[0x1E696B448]);
      sub_1CFE30C94();
      v417 = *v418;
      v417(v194, v120);
      v195 = 0;
    }

    v196 = v412;
    v412(&v189[v190], v195, 1, v120);
    v196(v184, 0, 1, v120);
    v197 = v414;
    v192(v414, v184, v120);
    sub_1CFE21724(200.0, 250.0);
    v199 = v198;
    v200 = v198 * 0.5;
    if (v200 > v199 * 1.5)
    {
      break;
    }

    sub_1CFE21724(v200, v199 * 1.5);
    v202 = v201;
    v203 = v396;
    sub_1CFE307B4();
    v204 = v388;
    sub_1CFE307B4();
    sub_1CFDA78C8(&qword_1EDC32CA8, MEMORY[0x1E696B430]);
    if ((sub_1CFE30874() & 1) == 0)
    {
      goto LABEL_61;
    }

    v205 = v365;
    v192(v365, v203, v120);
    v206 = v367;
    v192((v205 + *(v367 + 48)), v204, v120);
    v207 = v366;
    sub_1CFE217C8(v205, v366, sub_1CFDA7460);
    v208 = *(v206 + 48);
    v209 = v416;
    v192(v416, v207, v419);
    v210 = v417;
    v417(v207 + v208, v419);
    sub_1CFE21830(v205, v207, sub_1CFDA7460);
    v211 = v419;
    v192((v209 + *(v364 + 36)), (v207 + *(v206 + 48)), v419);
    v210(v207, v211);
    v212 = objc_opt_self();
    v213 = [v212 kilocalorieUnit];
    v214 = *v401;
    v215 = v404;
    v216 = v405;
    (*v401)(v404, v402, v405);
    v407 = v213;
    if (v387)
    {
      sub_1CFE30414();
      v217 = *v400;
      (*v400)(v215, v216);
      v218 = objc_opt_self();
      v219 = [v218 quantityWithUnit:v213 doubleValue:v202];
      v220 = v342;
      v358 = v212;
      v357 = v214;
      v356 = v217;
      v355 = v218;
      if (v219)
      {
        v221 = v219;
        sub_1CFDAD5CC();
        v222 = v221;
        sub_1CFE306B4();
        sub_1CFDAC3A0(0);
        (*(*(v223 - 8) + 56))(v220, 0, 1, v223);
      }

      else
      {
        sub_1CFDAC3A0(0);
        (*(*(v229 - 8) + 56))(v220, 1, 1, v229);
      }

      v230 = v385;
      v231 = v339;
      sub_1CFE21830(v220, v339, sub_1CFDAD280);
      v232 = v231;
      v233 = v377;
      sub_1CFE21830(v232, v377, type metadata accessor for TrainingLoadAcuteBaseline);
      v234 = v381;
      *v381 = v199;
      swift_storeEnumTagMultiPayload();
      v235 = v378;
      sub_1CFE217C8(v233, v378, type metadata accessor for TrainingLoadAcuteBaseline);
      v236 = v382;
      sub_1CFE217C8(v234, v382, type metadata accessor for TrainingLoadChronicBaseline);
      TrainingLoadBaselineComparison.init(acuteBaseline:chronicBaseline:)(v235, v236, v230);
      v237 = v362;
      v238 = v197;
      v239 = v419;
      v240 = v403[0];
      (v403[0])(v362, v238, v419);
      v241 = MEMORY[0x1E69E66A8];
      v242 = v336;
      sub_1CFDA6ADC(v416, v336, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
      v243 = v347;
      sub_1CFE217C8(v230, v347, type metadata accessor for TrainingLoadBaselineComparison);
      v244 = SampleDaySummary;
      v245 = v368;
      v354 = *(SampleDaySummary + 28);
      v368[v354] = 5;
      v240(v245, v237, v239);
      sub_1CFDA6ADC(v242, &v245[*(v244 + 20)], &qword_1EDC32C90, v241);
      sub_1CFE217C8(v243, &v245[*(v244 + 32)], type metadata accessor for TrainingLoadBaselineComparison);
      v246 = v243 + *(BaselineComparison + 24);
      if (*(v246 + 8))
      {

        sub_1CFE214E4(v243, type metadata accessor for TrainingLoadBaselineComparison);
        sub_1CFDA7A74(v242);
        v417(v362, v419);
        sub_1CFE214E4(v385, type metadata accessor for TrainingLoadBaselineComparison);
        sub_1CFE214E4(v381, type metadata accessor for TrainingLoadChronicBaseline);
        sub_1CFE214E4(v377, type metadata accessor for TrainingLoadAcuteBaseline);
        v247 = *v398;
        (*v398)(v374, v399);
        v248 = 5;
      }

      else
      {
        TrainingLoadBand.init(fractionalDifferenceFromChronicBaseline:)(*v246);

        sub_1CFE214E4(v243, type metadata accessor for TrainingLoadBaselineComparison);
        sub_1CFDA7A74(v242);
        v417(v362, v419);
        sub_1CFE214E4(v385, type metadata accessor for TrainingLoadBaselineComparison);
        sub_1CFE214E4(v381, type metadata accessor for TrainingLoadChronicBaseline);
        sub_1CFE214E4(v377, type metadata accessor for TrainingLoadAcuteBaseline);
        v247 = *v398;
        (*v398)(v374, v399);
        v248 = v420;
      }

      v249 = v338;
      v250 = v415;
      v251 = v368;
      v368[v354] = v248;
      v252 = v251 + *(SampleDaySummary + 24);
      *v252 = 13;
      *(v252 + 8) = 0;
      sub_1CFE21830(v251, v249, type metadata accessor for TrainingLoadSampleDaySummary);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v254 = v383;
      v255 = v343;
      v256 = v414;
      v257 = v356;
      v258 = v355;
      v407 = v247;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v250 = sub_1CFDDDE34(0, v250[2] + 1, 1, v250);
      }

      v259 = v405;
      v261 = v250[2];
      v260 = v250[3];
      if (v261 >= v260 >> 1)
      {
        v250 = sub_1CFDDDE34((v260 > 1), v261 + 1, 1, v250);
      }

      v250[2] = v261 + 1;
      v262 = (*(v373 + 80) + 32) & ~*(v373 + 80);
      v415 = v250;
      v353 = *(v373 + 72);
      sub_1CFE21830(v249, v250 + v262 + v353 * v261, type metadata accessor for TrainingLoadSampleDaySummary);
      v263 = [v358 kilocalorieUnit];
      v264 = v404;
      (v357)(v404, v402, v259);
      sub_1CFE30414();
      v257(v264, v259);
      v358 = v263;
      v265 = [v258 quantityWithUnit:v263 doubleValue:v202];
      v354 = v262;
      if (v265)
      {
        v266 = v265;
        sub_1CFDAD5CC();
        v267 = v266;
        sub_1CFE306B4();
        sub_1CFDAC3A0(0);
        (*(*(v268 - 8) + 56))(v255, 0, 1, v268);
      }

      else
      {
        sub_1CFDAC3A0(0);
        (*(*(v301 - 8) + 56))(v255, 1, 1, v301);
      }

      v302 = v256;
      v303 = v340;
      sub_1CFE21830(v255, v340, sub_1CFDAD280);
      v304 = v303;
      v305 = v379;
      sub_1CFE21830(v304, v379, type metadata accessor for TrainingLoadAcuteBaseline);
      *v254 = v199;
      swift_storeEnumTagMultiPayload();
      v306 = v378;
      sub_1CFE217C8(v305, v378, type metadata accessor for TrainingLoadAcuteBaseline);
      v307 = v382;
      sub_1CFE217C8(v254, v382, type metadata accessor for TrainingLoadChronicBaseline);
      v308 = v386;
      TrainingLoadBaselineComparison.init(acuteBaseline:chronicBaseline:)(v306, v307, v386);
      v309 = v363;
      v310 = v419;
      v311 = v403[0];
      (v403[0])(v363, v302, v419);
      v312 = v337;
      v313 = MEMORY[0x1E69E66A8];
      sub_1CFDA6ADC(v416, v337, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
      v314 = v348;
      sub_1CFE217C8(v308, v348, type metadata accessor for TrainingLoadBaselineComparison);
      v315 = SampleDaySummary;
      v316 = v370;
      v357 = *(SampleDaySummary + 28);
      v357[v370] = 5;
      v311(v316, v309, v310);
      sub_1CFDA6ADC(v312, &v316[*(v315 + 20)], &qword_1EDC32C90, v313);
      sub_1CFE217C8(v314, &v316[*(v315 + 32)], type metadata accessor for TrainingLoadBaselineComparison);
      v317 = v314 + *(BaselineComparison + 24);
      if (*(v317 + 8))
      {

        sub_1CFE214E4(v314, type metadata accessor for TrainingLoadBaselineComparison);
        sub_1CFDA7A74(v312);
        v120 = v419;
        v417(v363, v419);
        sub_1CFE214E4(v386, type metadata accessor for TrainingLoadBaselineComparison);
        sub_1CFE214E4(v383, type metadata accessor for TrainingLoadChronicBaseline);
        sub_1CFE214E4(v379, type metadata accessor for TrainingLoadAcuteBaseline);
        (v407)(v375, v399);
        v173 = 5;
      }

      else
      {
        TrainingLoadBand.init(fractionalDifferenceFromChronicBaseline:)(*v317);

        sub_1CFE214E4(v314, type metadata accessor for TrainingLoadBaselineComparison);
        sub_1CFDA7A74(v312);
        v120 = v419;
        v417(v363, v419);
        sub_1CFE214E4(v386, type metadata accessor for TrainingLoadBaselineComparison);
        sub_1CFE214E4(v383, type metadata accessor for TrainingLoadChronicBaseline);
        sub_1CFE214E4(v379, type metadata accessor for TrainingLoadAcuteBaseline);
        (v407)(v375, v399);
        v173 = v421;
      }

      v147 = v361;
      v160 = v360;
      v168 = v409;
      v172 = v359;
      v174 = v370;
      v357[v370] = v173;
      v175 = v174 + *(SampleDaySummary + 24);
      *v175 = 37;
      *(v175 + 8) = 0;
      sub_1CFE21830(v174, v369, type metadata accessor for TrainingLoadSampleDaySummary);
      v176 = v415;
      v178 = v415[2];
      v177 = v415[3];
      if (v178 >= v177 >> 1)
      {
        v176 = sub_1CFDDDE34((v177 > 1), v178 + 1, 1, v415);
      }

      sub_1CFDA7A74(v416);
      v417(v414, v120);
      v176[2] = v178 + 1;
      v415 = v176;
      v179 = v176 + v354 + v178 * v353;
      v180 = &v401;
      goto LABEL_6;
    }

    sub_1CFE30414();
    (*v400)(v215, v216);
    v224 = [objc_opt_self() quantityWithUnit:v213 doubleValue:v202];
    if (v224)
    {
      v225 = v224;
      sub_1CFDAD5CC();
      v226 = v225;
      v227 = v344;
      sub_1CFE306B4();
      sub_1CFDAC3A0(0);
      (*(*(v228 - 8) + 56))(v227, 0, 1, v228);
    }

    else
    {
      sub_1CFDAC3A0(0);
      v227 = v344;
      (*(*(v269 - 8) + 56))(v344, 1, 1, v269);
    }

    v270 = v352;
    v271 = v341;
    sub_1CFE21830(v227, v341, sub_1CFDAD280);
    v272 = v380;
    sub_1CFE21830(v271, v380, type metadata accessor for TrainingLoadAcuteBaseline);
    v273 = v384;
    *v384 = v199;
    swift_storeEnumTagMultiPayload();
    sub_1CFE217C8(v272, v270, type metadata accessor for TrainingLoadAcuteBaseline);
    v274 = v273;
    v275 = v345;
    sub_1CFE217C8(v274, v345, type metadata accessor for TrainingLoadChronicBaseline);
    v276 = BaselineComparison;
    v277 = v395;
    v278 = v395 + *(BaselineComparison + 24);
    sub_1CFE217C8(v270, v395, type metadata accessor for TrainingLoadAcuteBaseline);
    v279 = v277;
    sub_1CFE217C8(v275, v277 + *(v276 + 20), type metadata accessor for TrainingLoadChronicBaseline);
    v280 = v346;
    sub_1CFE217C8(v275, v346, type metadata accessor for TrainingLoadChronicBaseline);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1CFE214E4(v275, type metadata accessor for TrainingLoadChronicBaseline);
      sub_1CFE214E4(v270, type metadata accessor for TrainingLoadAcuteBaseline);
      *v278 = 0;
      *(v278 + 8) = 1;
      sub_1CFE214E4(v280, type metadata accessor for TrainingLoadChronicBaseline);
      v283 = v351;
      v284 = v394;
      goto LABEL_42;
    }

    v281 = *v280;
    v282 = *v280 == 0.0;
    v283 = v351;
    v284 = v394;
    if (v282)
    {
      sub_1CFE214E4(v275, type metadata accessor for TrainingLoadChronicBaseline);
      sub_1CFE214E4(v352, type metadata accessor for TrainingLoadAcuteBaseline);
      *v278 = 0;
      *(v278 + 8) = 1;
LABEL_42:
      v285 = v414;
      goto LABEL_43;
    }

    v318 = v352;
    v319 = v335;
    sub_1CFE217C8(v352, v335, sub_1CFDAD280);
    sub_1CFDAC3A0(0);
    v321 = v320;
    v322 = *(v320 - 8);
    v323 = (*(v322 + 48))(v319, 1, v320);
    v324 = v414;
    if (v323 == 1)
    {
      sub_1CFE214E4(v319, sub_1CFDAD280);
      sub_1CFE214E4(v275, type metadata accessor for TrainingLoadChronicBaseline);
      sub_1CFE214E4(v318, type metadata accessor for TrainingLoadAcuteBaseline);
      *v278 = 0;
      *(v278 + 8) = 1;
    }

    else
    {
      v325 = v275;
      v326 = sub_1CFE30684();
      (*(v322 + 8))(v319, v321);
      [v326 _value];
      v328 = v327;

      sub_1CFE214E4(v325, type metadata accessor for TrainingLoadChronicBaseline);
      sub_1CFE214E4(v318, type metadata accessor for TrainingLoadAcuteBaseline);
      *v278 = (v328 - v281) / v281;
      *(v278 + 8) = 0;
    }

    v279 = v395;
    v283 = v351;
    v284 = v394;
    v285 = v324;
LABEL_43:
    v286 = v419;
    v287 = v403[0];
    (v403[0])(v284, v285, v419);
    v288 = MEMORY[0x1E69E66A8];
    sub_1CFDA6ADC(v416, v283, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
    v289 = v349;
    sub_1CFE217C8(v279, v349, type metadata accessor for TrainingLoadBaselineComparison);
    v290 = SampleDaySummary;
    v291 = v372;
    v358 = *(SampleDaySummary + 28);
    *(v358 + v372) = 5;
    v287(v291, v284, v286);
    sub_1CFDA6ADC(v283, &v291[*(v290 + 20)], &qword_1EDC32C90, v288);
    sub_1CFE217C8(v289, &v291[*(v290 + 32)], type metadata accessor for TrainingLoadBaselineComparison);
    v292 = v289 + *(BaselineComparison + 24);
    if (*(v292 + 8))
    {

      sub_1CFE214E4(v289, type metadata accessor for TrainingLoadBaselineComparison);
      sub_1CFDA7A74(v283);
      v120 = v419;
      v417(v394, v419);
      sub_1CFE214E4(v395, type metadata accessor for TrainingLoadBaselineComparison);
      sub_1CFE214E4(v384, type metadata accessor for TrainingLoadChronicBaseline);
      sub_1CFE214E4(v380, type metadata accessor for TrainingLoadAcuteBaseline);
      (*v398)(v376, v399);
      v293 = 5;
    }

    else
    {
      TrainingLoadBand.init(fractionalDifferenceFromChronicBaseline:)(*v292);

      sub_1CFE214E4(v289, type metadata accessor for TrainingLoadBaselineComparison);
      sub_1CFDA7A74(v283);
      v120 = v419;
      v417(v394, v419);
      sub_1CFE214E4(v395, type metadata accessor for TrainingLoadBaselineComparison);
      sub_1CFE214E4(v384, type metadata accessor for TrainingLoadChronicBaseline);
      sub_1CFE214E4(v380, type metadata accessor for TrainingLoadAcuteBaseline);
      (*v398)(v376, v399);
      v293 = v422;
    }

    v147 = v361;
    v168 = v409;
    v172 = v359;
    v294 = v372;
    *(v358 + v372) = v293;
    v295 = v294 + *(SampleDaySummary + 24);
    *v295 = 0;
    *(v295 + 8) = 1;
    sub_1CFE21830(v294, v371, type metadata accessor for TrainingLoadSampleDaySummary);
    v296 = v415;
    v297 = swift_isUniquelyReferenced_nonNull_native();
    v160 = v360;
    if ((v297 & 1) == 0)
    {
      v296 = sub_1CFDDDE34(0, v296[2] + 1, 1, v296);
    }

    v299 = v296[2];
    v298 = v296[3];
    if (v299 >= v298 >> 1)
    {
      v296 = sub_1CFDDDE34((v298 > 1), v299 + 1, 1, v296);
    }

    sub_1CFDA7A74(v416);
    v417(v414, v120);
    v296[2] = v299 + 1;
    v300 = (*(v373 + 80) + 32) & ~*(v373 + 80);
    v415 = v296;
    v179 = v296 + v300 + *(v373 + 72) * v299;
    v180 = v403;
LABEL_6:
    sub_1CFE21830(*(v180 - 32), v179, type metadata accessor for TrainingLoadSampleDaySummary);
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
}

void sub_1CFE213AC(uint64_t a1)
{
  if (!qword_1EC509F40)
  {
    sub_1CFDA7600(255, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
    sub_1CFE2142C();
    v1 = sub_1CFE30EC4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC509F40);
    }
  }
}

unint64_t sub_1CFE2142C()
{
  result = qword_1EC509B98;
  if (!qword_1EC509B98)
  {
    sub_1CFDA7600(255, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
    sub_1CFDA78C8(&unk_1EDC31E78, MEMORY[0x1E696B448]);
    sub_1CFDF32F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509B98);
  }

  return result;
}

uint64_t sub_1CFE214E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static TrainingLoadSampleDaySummaryCollection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1CFE307E4();
  sub_1CFDA78C8(&qword_1EDC31AB0, MEMORY[0x1E696B438]);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    return 0;
  }

  sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for TrainingLoadSampleDaySummaryCollection(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);

  return sub_1CFDD3AE4(v5, v6);
}

uint64_t sub_1CFE21630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CFE307E4();
  sub_1CFDA78C8(&qword_1EDC31AB0, MEMORY[0x1E696B438]);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    return 0;
  }

  sub_1CFDA7600(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_1CFDD3AE4(v7, v8);
}

void sub_1CFE21724(double a1, double a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = 0;
  MEMORY[0x1D3877000](&v5, 8);
  if (v4 * vcvtd_n_f64_u64(v5 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a1 == a2)
  {
    sub_1CFE21724(a1, a2);
  }
}

uint64_t sub_1CFE217C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFE21830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1CFE21898(uint64_t a1)
{
  sub_1CFDA7600(319, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
  if (v1 <= 0x3F)
  {
    sub_1CFDAA2DC(319, &qword_1EDC31A98, type metadata accessor for TrainingLoadSampleDaySummary, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id HKTableFormatter.init(_:)(uint64_t a1)
{
  v2 = type metadata accessor for SleepingSampleDaySummary(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = sub_1CFE30A74();
  v9 = [v7 initWithColumnTitles_];

  v10 = *(a1 + *(type metadata accessor for SleepingSampleDaySummaryCollection(0) + 20));
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = *(type metadata accessor for GregorianDayRange(0) + 20);
    v13 = v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    v15 = v9;
    do
    {
      sub_1CFE23EC4(v13, v6, type metadata accessor for SleepingSampleDaySummary);
      sub_1CFE21B14(v6, a1 + v12);
      sub_1CFE23F2C(v6, type metadata accessor for SleepingSampleDaySummary);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  sub_1CFE23F2C(a1, type metadata accessor for SleepingSampleDaySummaryCollection);
  return v9;
}

void sub_1CFE21B14(uint64_t a1, uint64_t a2)
{
  v278 = sub_1CFE31244();
  v277 = *(v278 - 8);
  MEMORY[0x1EEE9AC00](v278, v3);
  v276 = &v270 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE23C78(0, &qword_1EC5094F0, &qword_1EC5094F8, 0x1E696B080, MEMORY[0x1E6968048]);
  v275 = v5;
  v274 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v273 = &v270 - v7;
  sub_1CFE23C78(0, &qword_1EC509500, &qword_1EC5094F8, 0x1E696B080, MEMORY[0x1E6968070]);
  v272 = v8;
  v271 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v270 = &v270 - v10;
  v293 = sub_1CFE301E4();
  v292 = *(v293 - 8);
  MEMORY[0x1EEE9AC00](v293, v11);
  v291 = &v270 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDEEC00(0);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v287 = &v270 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v285 = &v270 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v283 = &v270 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v281 = &v270 - v25;
  MEMORY[0x1EEE9AC00](v24, v26);
  v280 = &v270 - v27;
  v306 = sub_1CFE30234();
  v312 = *(v306 - 8);
  MEMORY[0x1EEE9AC00](v306, v28);
  v308 = &v270 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDBCC54(0, &qword_1EC509508, sub_1CFDBCC00, MEMORY[0x1E69E63B0], MEMORY[0x1E6968E78]);
  v309 = v30;
  v297 = *(v30 - 8);
  v32 = MEMORY[0x1EEE9AC00](v30, v31);
  v290 = &v270 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v311 = &v270 - v36;
  MEMORY[0x1EEE9AC00](v35, v37);
  v305 = &v270 - v38;
  sub_1CFDAD280(0);
  v41 = MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v286 = &v270 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v41, v43);
  v284 = &v270 - v45;
  v47 = MEMORY[0x1EEE9AC00](v44, v46);
  v282 = &v270 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47, v49);
  v294 = &v270 - v51;
  MEMORY[0x1EEE9AC00](v50, v52);
  v307 = &v270 - v53;
  v313 = sub_1CFE30204();
  v304 = *(v313 - 1);
  MEMORY[0x1EEE9AC00](v313, v54);
  v303 = &v270 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1CFE303F4();
  MEMORY[0x1EEE9AC00](v56 - 8, v57);
  v310 = &v270 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDBCC54(0, &qword_1EC509518, sub_1CFDBCCBC, MEMORY[0x1E69E6530], MEMORY[0x1E6968900]);
  v60 = *(v59 - 1);
  v301 = v59;
  v302 = v60;
  v62 = MEMORY[0x1EEE9AC00](v59, v61);
  v299 = &v270 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62, v64);
  v300 = (&v270 - v65);
  v298 = sub_1CFE30284();
  v66 = *(v298 - 8);
  MEMORY[0x1EEE9AC00](v298, v67);
  v69 = &v270 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = sub_1CFE30314();
  v70 = *(v296 - 8);
  MEMORY[0x1EEE9AC00](v296, v71);
  v73 = &v270 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = sub_1CFE302B4();
  v74 = *(v295 - 8);
  MEMORY[0x1EEE9AC00](v295, v75);
  v77 = &v270 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE23E74();
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_1CFE37B90;
  sub_1CFE30274();
  sub_1CFE307D4();
  sub_1CFE30264();
  v79 = sub_1CFE30304();
  v81 = v80;
  (*(v66 + 8))(v69, v298);
  (*(v70 + 8))(v73, v296);
  v82 = v78;
  (*(v74 + 8))(v77, v295);
  *(v78 + 32) = v79;
  *(v78 + 40) = v81;
  v315 = sub_1CFE307A4();
  sub_1CFE303D4();
  sub_1CFDBCCBC();
  v83 = v299;
  sub_1CFE30144();
  v84 = v303;
  sub_1CFE301F4();
  v86 = v300;
  v85 = v301;
  MEMORY[0x1D3875810](v84, v301);
  (*(v304 + 8))(v84, v313);
  v87 = *(v302 + 8);
  v87(v83, v85);
  sub_1CFDBCD10();
  sub_1CFE30CD4();
  v88 = v307;
  v87(v86, v85);
  v304 = type metadata accessor for SleepingSampleDaySummary(0);
  v89 = *(v304 + 32);
  v296 = a1;
  v90 = a1 + v89;
  v303 = type metadata accessor for SleepingSampleAggregate(0);
  v91 = *(v303 + 6);
  v279 = v90;
  sub_1CFE23EC4(v90 + v91, v88, sub_1CFDAD280);
  sub_1CFE23C78(0, qword_1EDC32CB8, &qword_1EDC32C80, 0x1E696C348, MEMORY[0x1E696B370]);
  v93 = v92;
  v94 = *(v92 - 8);
  v301 = *(v94 + 48);
  v302 = v94 + 48;
  v95 = v301(v88, 1, v92);
  v96 = v308;
  v97 = v309;
  v98 = v305;
  v99 = v311;
  v313 = v82;
  v295 = v93;
  v289 = v94;
  if (v95 == 1)
  {
    sub_1CFE23F2C(v88, sub_1CFDAD280);
    v100 = 0xA600000000000000;
    v101 = 0x9380E29380E2;
  }

  else
  {
    v102 = sub_1CFE30684();
    v300 = v102;
    (*(v94 + 8))(v88, v93);
    v103 = [objc_opt_self() _countPerMinuteUnit];
    [v102 doubleValueForUnit_];
    v314 = v104;
    sub_1CFE303D4();
    sub_1CFDBCC00();
    sub_1CFE301A4();
    sub_1CFE30214();
    MEMORY[0x1D3875870](v96, v97);
    (*(v312 + 8))(v96, v306);
    v105 = *(v297 + 8);
    v105(v99, v97);
    sub_1CFDBCF44();
    v82 = v313;
    sub_1CFE307F4();

    v105(v98, v97);
    v101 = v315;
    v100 = v316;
  }

  v82[8] = v101;
  v82[9] = v100;
  v307 = objc_opt_self();
  v106 = [v307 _countPerMinuteUnit];
  v107 = type metadata accessor for SleepingSampleBaselineComparison(0);
  v108 = v280;
  sub_1CFE23EC4(v279 + v107[6], v280, sub_1CFDEEC00);
  v109 = type metadata accessor for SleepingSampleBaseline(0);
  v110 = *(v109 - 8);
  v111 = *(v110 + 48);
  v298 = v110 + 48;
  v299 = v111;
  v112 = (v111)(v108, 1, v109);
  v300 = v107;
  v113 = v281;
  if (v112 == 1)
  {
    sub_1CFE23F2C(v108, sub_1CFDEEC00);
    countAndFlagsBits = sub_1CFE23CE0();
    object = v115;
  }

  else
  {
    sub_1CFE23C78(0, qword_1EDC32930, &qword_1EDC32918, 0x1E696C350, MEMORY[0x1E696B370]);
    v117 = sub_1CFE30684();
    LOBYTE(v315) = 0;
    v118 = HKQuantityRange.formattedValue(for:unit:)(&v315, v106);
    countAndFlagsBits = v118._countAndFlagsBits;
    object = v118._object;

    sub_1CFE23F2C(v108, type metadata accessor for SleepingSampleBaseline);
  }

  v120 = v311;
  v119 = v312;
  v121 = v308;

  v82[10] = countAndFlagsBits;
  v82[11] = object;
  v122 = SleepingSampleBaselineComparison.relativeComparison.getter();
  if (v123)
  {
    v124 = 0xA600000000000000;
    v125 = 0x9380E29380E2;
  }

  else
  {
    v314 = v122;
    sub_1CFE303D4();
    sub_1CFDBCC00();
    v126 = v290;
    sub_1CFE301A4();
    sub_1CFE30214();
    v127 = v309;
    MEMORY[0x1D3875870](v121, v309);
    (*(v119 + 8))(v121, v306);
    v128 = *(v297 + 8);
    v128(v126, v127);
    v129 = v120;
    v130 = v291;
    sub_1CFE301D4();
    v131 = v305;
    MEMORY[0x1D3875850](v130, v127);
    (*(v292 + 8))(v130, v293);
    v128(v129, v127);
    sub_1CFDBCF44();
    sub_1CFE307F4();
    v132 = v131;
    v121 = v308;
    v133 = v127;
    v82 = v313;
    v128(v132, v133);
    v125 = v315;
    v124 = v316;
  }

  v134 = v294;
  v294 = v109;
  v82[12] = v125;
  v82[13] = v124;
  v135 = v296 + *(v304 + 36);
  sub_1CFE23EC4(v135 + *(v303 + 6), v134, sub_1CFDAD280);
  v136 = v295;
  if (v301(v134, 1, v295) == 1)
  {
    sub_1CFE23F2C(v134, sub_1CFDAD280);
    v137 = 0xA600000000000000;
    v138 = 0x9380E29380E2;
    v139 = v307;
  }

  else
  {
    v140 = sub_1CFE30684();
    (*(v289 + 8))(v134, v136);
    LOBYTE(v315) = 2;
    v139 = v307;
    v141 = [v307 percentUnit];
    v142 = HKQuantity.formattedValue(for:unit:)(&v315, v141);
    v138 = v142._countAndFlagsBits;
    v137 = v142._object;
  }

  v82[14] = v138;
  v82[15] = v137;
  v143 = [v139 percentUnit];
  sub_1CFE23EC4(v135 + v300[6], v113, sub_1CFDEEC00);
  v144 = v294;
  if ((v299)(v113, 1, v294) == 1)
  {
    sub_1CFE23F2C(v113, sub_1CFDEEC00);
    v145 = sub_1CFE23CE0();
    v147 = v146;
  }

  else
  {
    sub_1CFE23C78(0, qword_1EDC32930, &qword_1EDC32918, 0x1E696C350, MEMORY[0x1E696B370]);
    v148 = sub_1CFE30684();
    LOBYTE(v315) = 2;
    v149 = HKQuantityRange.formattedValue(for:unit:)(&v315, v143);
    v145 = v149._countAndFlagsBits;
    v147 = v149._object;

    sub_1CFE23F2C(v113, type metadata accessor for SleepingSampleBaseline);
  }

  v151 = v311;
  v150 = v312;

  v82[16] = v145;
  v82[17] = v147;
  v152 = SleepingSampleBaselineComparison.relativeComparison.getter();
  if (v153)
  {
    v154 = 0xA600000000000000;
    v155 = 0x9380E29380E2;
  }

  else
  {
    v314 = v152;
    sub_1CFE303D4();
    sub_1CFDBCC00();
    v156 = v290;
    sub_1CFE301A4();
    sub_1CFE30214();
    v157 = v309;
    MEMORY[0x1D3875870](v121, v309);
    (*(v150 + 8))(v121, v306);
    v158 = *(v297 + 8);
    v158(v156, v157);
    v159 = v291;
    sub_1CFE301D4();
    v160 = v305;
    MEMORY[0x1D3875850](v159, v157);
    v161 = v159;
    v151 = v311;
    (*(v292 + 8))(v161, v293);
    v158(v151, v157);
    sub_1CFDBCF44();
    sub_1CFE307F4();
    v162 = v157;
    v82 = v313;
    v158(v160, v162);
    v155 = v315;
    v154 = v316;
  }

  v163 = v307;
  v164 = v282;
  v82[18] = v155;
  v82[19] = v154;
  v165 = v296 + *(v304 + 40);
  sub_1CFE23EC4(v165 + *(v303 + 6), v164, sub_1CFDAD280);
  v166 = v295;
  if (v301(v164, 1, v295) == 1)
  {
    sub_1CFE23F2C(v164, sub_1CFDAD280);
    v167 = 0xA600000000000000;
    v168 = 0x9380E29380E2;
    v169 = v283;
    v170 = 0x1E83D0000;
  }

  else
  {
    v171 = sub_1CFE30684();
    v282 = v171;
    (*(v289 + 8))(v164, v166);
    v170 = 0x1E83D0000uLL;
    v281 = [v163 _countPerMinuteUnit];
    [v171 doubleValueForUnit_];
    v314 = v172;
    sub_1CFE303D4();
    sub_1CFDBCC00();
    sub_1CFE301A4();
    v315 = 1;
    sub_1CFDBCEEC();
    sub_1CFDA79E4(&qword_1EC509550, sub_1CFDBCEEC, MEMORY[0x1E69E6ED8]);
    v173 = v308;
    sub_1CFE30224();
    v174 = v305;
    v175 = v309;
    MEMORY[0x1D3875870](v173, v309);
    (*(v312 + 8))(v173, v306);
    v176 = *(v297 + 8);
    v176(v151, v175);
    sub_1CFDBCF44();
    sub_1CFE307F4();

    v176(v174, v175);
    v144 = v294;
    v163 = v307;
    v82 = v313;
    v168 = v315;
    v167 = v316;
    v169 = v283;
  }

  v82[20] = v168;
  v82[21] = v167;
  v177 = [v163 *(v170 + 3224)];
  sub_1CFE23EC4(v165 + v300[6], v169, sub_1CFDEEC00);
  if ((v299)(v169, 1, v144) == 1)
  {
    sub_1CFE23F2C(v169, sub_1CFDEEC00);
    v178 = sub_1CFE23CE0();
    v180 = v179;
  }

  else
  {
    sub_1CFE23C78(0, qword_1EDC32930, &qword_1EDC32918, 0x1E696C350, MEMORY[0x1E696B370]);
    v181 = sub_1CFE30684();
    LOBYTE(v315) = 1;
    v182 = HKQuantityRange.formattedValue(for:unit:)(&v315, v177);
    v178 = v182._countAndFlagsBits;
    v180 = v182._object;

    sub_1CFE23F2C(v169, type metadata accessor for SleepingSampleBaseline);
  }

  v183 = v312;

  v82[22] = v178;
  v82[23] = v180;
  v184 = SleepingSampleBaselineComparison.relativeComparison.getter();
  if (v185)
  {
    v186 = 0xA600000000000000;
    v187 = 0x9380E29380E2;
  }

  else
  {
    v314 = v184;
    sub_1CFE303D4();
    sub_1CFDBCC00();
    v188 = v290;
    sub_1CFE301A4();
    v189 = v308;
    sub_1CFE30214();
    v190 = v311;
    v191 = v309;
    MEMORY[0x1D3875870](v189, v309);
    (*(v183 + 8))(v189, v306);
    v192 = *(v297 + 8);
    v192(v188, v191);
    v193 = v291;
    sub_1CFE301D4();
    v194 = v305;
    MEMORY[0x1D3875850](v193, v191);
    (*(v292 + 8))(v193, v293);
    v192(v190, v191);
    sub_1CFDBCF44();
    sub_1CFE307F4();
    v195 = v191;
    v82 = v313;
    v192(v194, v195);
    v187 = v315;
    v186 = v316;
  }

  v196 = v296;
  v197 = v295;
  v198 = v284;
  v82[24] = v187;
  v82[25] = v186;
  v199 = v196 + *(v304 + 44);
  sub_1CFE23EC4(v199 + *(v303 + 6), v198, sub_1CFDAD280);
  if (v301(v198, 1, v197) == 1)
  {
    sub_1CFE23F2C(v198, sub_1CFDAD280);
    v200 = 0xA600000000000000;
    v201 = 0x9380E29380E2;
    v202 = v285;
    v203 = v300;
    v204 = v307;
  }

  else
  {
    v205 = sub_1CFE30684();
    (*(v289 + 8))(v198, v197);
    v204 = v307;
    v206 = [v307 _changeInDegreeFahrenheitUnit];
    v207 = v205;
    v208 = v206;
    v209 = v270;
    Measurement<>.init(wristTemperatureForFormatting:unit:)(v207, v208);
    v210 = v273;
    static FormatStyle<>.wristTemperature(unit:)(v208, v273);
    sub_1CFDBCE68();
    v211 = v272;
    v212 = v275;
    sub_1CFE2FFC4();

    v213 = v210;
    v144 = v294;
    (*(v274 + 8))(v213, v212);
    v214 = v211;
    v197 = v295;
    (*(v271 + 8))(v209, v214);
    v201 = v315;
    v200 = v316;
    v202 = v285;
    v203 = v300;
  }

  v82[26] = v201;
  v82[27] = v200;
  v215 = [v204 _changeInDegreeFahrenheitUnit];
  sub_1CFE23EC4(v199 + v203[6], v202, sub_1CFDEEC00);
  if ((v299)(v202, 1, v144) == 1)
  {
    sub_1CFE23F2C(v202, sub_1CFDEEC00);
    v216 = sub_1CFE23CE0();
    v218 = v217;
  }

  else
  {
    sub_1CFE23C78(0, qword_1EDC32930, &qword_1EDC32918, 0x1E696C350, MEMORY[0x1E696B370]);
    v219 = v202;
    v220 = sub_1CFE30684();
    LOBYTE(v315) = 3;
    v221 = HKQuantityRange.formattedValue(for:unit:)(&v315, v215);
    v216 = v221._countAndFlagsBits;
    v218 = v221._object;

    v222 = v219;
    v203 = v300;
    sub_1CFE23F2C(v222, type metadata accessor for SleepingSampleBaseline);
  }

  v82[28] = v216;
  v82[29] = v218;
  v223 = SleepingSampleBaselineComparison.relativeComparison.getter();
  if (v224)
  {
    v225 = 0xA600000000000000;
    v226 = 0x9380E29380E2;
  }

  else
  {
    v314 = v223;
    sub_1CFE303D4();
    sub_1CFDBCC00();
    v227 = v290;
    sub_1CFE301A4();
    v228 = v308;
    sub_1CFE30214();
    v229 = v311;
    v230 = v309;
    MEMORY[0x1D3875870](v228, v309);
    (*(v312 + 8))(v228, v306);
    v231 = *(v297 + 8);
    v231(v227, v230);
    v232 = v291;
    sub_1CFE301D4();
    v233 = v305;
    MEMORY[0x1D3875850](v232, v230);
    v234 = v232;
    v203 = v300;
    (*(v292 + 8))(v234, v293);
    v231(v229, v230);
    sub_1CFDBCF44();
    sub_1CFE307F4();
    v235 = v233;
    v196 = v296;
    v236 = v230;
    v82 = v313;
    v231(v235, v236);
    v226 = v315;
    v225 = v316;
  }

  v237 = v287;
  v82[30] = v226;
  v82[31] = v225;
  v238 = v196 + *(v304 + 48);
  v239 = v286;
  sub_1CFE23EC4(v238 + *(v303 + 6), v286, sub_1CFDAD280);
  if (v301(v239, 1, v197) == 1)
  {
    sub_1CFE23F2C(v239, sub_1CFDAD280);
    v240 = 0xA600000000000000;
    v241 = 0x9380E29380E2;
    v242 = v309;
    v243 = v306;
    v244 = v307;
  }

  else
  {
    v245 = sub_1CFE30684();
    (*(v289 + 8))(v239, v197);
    v244 = v307;

    v246 = v245;
    sub_1CFE2F0F4(v246);

    v247 = v276;
    static FormatStyle<>.sleepDuration.getter(v276);
    sub_1CFDA79E4(&qword_1EC509538, MEMORY[0x1E696A218], MEMORY[0x1E696A210]);
    v248 = v278;
    sub_1CFE31254();

    (*(v277 + 8))(v247, v248);
    v241 = v315;
    v240 = v316;
    v242 = v309;
    v243 = v306;
  }

  v249 = v313;
  v313[32] = v241;
  v249[33] = v240;
  v250 = [v244 secondUnit];
  sub_1CFE23EC4(v238 + v203[6], v237, sub_1CFDEEC00);
  if ((v299)(v237, 1, v294) == 1)
  {
    sub_1CFE23F2C(v237, sub_1CFDEEC00);
    v251 = sub_1CFE23CE0();
    v253 = v252;
  }

  else
  {
    sub_1CFE23C78(0, qword_1EDC32930, &qword_1EDC32918, 0x1E696C350, MEMORY[0x1E696B370]);
    v254 = sub_1CFE30684();
    LOBYTE(v315) = 4;
    v255 = HKQuantityRange.formattedValue(for:unit:)(&v315, v250);
    v251 = v255._countAndFlagsBits;
    v253 = v255._object;

    sub_1CFE23F2C(v237, type metadata accessor for SleepingSampleBaseline);
  }

  v256 = v312;

  v257 = v313;
  v313[34] = v251;
  v257[35] = v253;
  v258 = SleepingSampleBaselineComparison.relativeComparison.getter();
  v259 = 0x9380E29380E2;
  if (v260)
  {
    v261 = 0xA600000000000000;
  }

  else
  {
    v314 = v258;
    sub_1CFE303D4();
    sub_1CFDBCC00();
    v262 = v290;
    sub_1CFE301A4();
    v263 = v308;
    sub_1CFE30214();
    v264 = v311;
    MEMORY[0x1D3875870](v263, v242);
    (*(v256 + 8))(v263, v243);
    v265 = *(v297 + 8);
    v265(v262, v242);
    v266 = v291;
    sub_1CFE301D4();
    v267 = v305;
    MEMORY[0x1D3875850](v266, v242);
    (*(v292 + 8))(v266, v293);
    v265(v264, v242);
    sub_1CFDBCF44();
    sub_1CFE307F4();
    v265(v267, v242);
    v259 = v315;
    v261 = v316;
  }

  v268 = v313;
  v313[36] = v259;
  v268[37] = v261;
  v269 = sub_1CFE30A74();

  [v288 appendRow_];
}

void sub_1CFE23C78(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1CFDA6E64(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1CFE23CE0()
{
  v1 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE23EC4(v0, v4, type metadata accessor for SleepingSampleBaselineAvailability);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return 0x9380E29380E2;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1CFDAD680(0);
    v7 = *&v4[*(v6 + 64)];
    v13 = *&v4[*(v6 + 48)];
    v14 = sub_1CFE31074();
    v15 = v8;
    MEMORY[0x1D3876060](47, 0xE100000000000000);
    v13 = v7;
    v9 = sub_1CFE31074();
    MEMORY[0x1D3876060](v9);

    MEMORY[0x1D3876060](100, 0xE100000000000000);
    v10 = v14;
  }

  else
  {
    v10 = 0x6C62616C69617641;
  }

  sub_1CFE23F2C(v4, sub_1CFDA7AD0);
  return v10;
}

void sub_1CFE23E74()
{
  if (!qword_1EC509528)
  {
    v0 = sub_1CFE31084();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC509528);
    }
  }
}

uint64_t sub_1CFE23EC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFE23F2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DateInterval.range.getter@<X0>(char *a1@<X8>)
{
  sub_1CFE241CC(0);
  v3 = v2;
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v26 - v9;
  v11 = sub_1CFE30314();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v26 - v18;
  sub_1CFE30004();
  sub_1CFE2FFD4();
  sub_1CFE24234();
  result = sub_1CFE30874();
  if (result)
  {
    v21 = *(v12 + 32);
    v21(v10, v19, v11);
    v21(&v10[*(v3 + 48)], v16, v11);
    sub_1CFE2428C(v10, v7);
    v22 = *(v3 + 48);
    v21(a1, v7, v11);
    v23 = *(v12 + 8);
    v23(&v7[v22], v11);
    sub_1CFE242F0(v10, v7);
    v24 = *(v3 + 48);
    sub_1CFDDB714(0);
    v21(&a1[*(v25 + 36)], &v7[v24], v11);
    return (v23)(v7, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1CFE241CC(uint64_t a1)
{
  if (!qword_1EC509F48)
  {
    sub_1CFE30314();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC509F48);
    }
  }
}

unint64_t sub_1CFE24234()
{
  result = qword_1EDC32030;
  if (!qword_1EDC32030)
  {
    sub_1CFE30314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC32030);
  }

  return result;
}

uint64_t sub_1CFE2428C(uint64_t a1, uint64_t a2)
{
  sub_1CFE241CC(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE242F0(uint64_t a1, uint64_t a2)
{
  sub_1CFE241CC(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DateInterval.cappedToMaximumEnd(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[1] = a2;
  v3 = sub_1CFE30314();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = v27 - v11;
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v16 = v27 - v15;
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = v27 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  sub_1CFE30004();
  sub_1CFE30004();
  sub_1CFE2FFD4();
  sub_1CFE24234();
  if (sub_1CFE30854())
  {
    (*(v4 + 8))(v8, v3);
    (*(v4 + 16))(v12, a1, v3);
  }

  else
  {
    (*(v4 + 32))(v12, v8, v3);
  }

  v22 = sub_1CFE30864();
  v23 = (v22 & 1) == 0;
  if (v22)
  {
    v24 = v16;
  }

  else
  {
    v24 = v12;
  }

  if (v23)
  {
    v25 = v16;
  }

  else
  {
    v25 = v12;
  }

  (*(v4 + 8))(v24, v3);
  (*(v4 + 32))(v20, v25, v3);
  return sub_1CFE2FFE4();
}

uint64_t sub_1CFE24598(uint64_t a1)
{
  v40 = sub_1CFE30544();
  v3 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v4);
  v39 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v32[1] = v1;
    v47 = MEMORY[0x1E69E7CC0];
    sub_1CFDC4988(0, v6, 0);
    v43 = v47;
    v8 = a1 + 56;
    result = sub_1CFE30D14();
    v9 = result;
    v10 = 0;
    v37 = v3 + 8;
    v38 = v3 + 16;
    v33 = a1 + 64;
    v34 = v6;
    v35 = v3;
    v36 = a1 + 56;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v8 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_23;
      }

      v14 = *(a1 + 36);
      v41 = v10;
      v42 = v14;
      v16 = v39;
      v15 = v40;
      (*(v3 + 16))(v39, *(a1 + 48) + *(v3 + 72) * v9, v40);
      v44 = sub_1CFE30534();
      v45 = sub_1CFE31074();
      v46 = v17;
      MEMORY[0x1D3876060](32, 0xE100000000000000);
      v19 = v45;
      v18 = v46;
      result = (*(v3 + 8))(v16, v15);
      v20 = v43;
      v47 = v43;
      v22 = *(v43 + 16);
      v21 = *(v43 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_1CFDC4988((v21 > 1), v22 + 1, 1);
        v20 = v47;
      }

      *(v20 + 16) = v22 + 1;
      v23 = v20 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v18;
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_24;
      }

      v8 = v36;
      v24 = *(v36 + 8 * v13);
      if ((v24 & (1 << v9)) == 0)
      {
        goto LABEL_25;
      }

      v43 = v20;
      if (v42 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v25 = v24 & (-2 << (v9 & 0x3F));
      if (v25)
      {
        v11 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v3 = v35;
        v12 = v41;
      }

      else
      {
        v26 = v13 << 6;
        v27 = v13 + 1;
        v28 = (v33 + 8 * v13);
        v29 = v35;
        while (v27 < (v11 + 63) >> 6)
        {
          v31 = *v28++;
          v30 = v31;
          v26 += 64;
          ++v27;
          if (v31)
          {
            result = sub_1CFE2508C(v9, v42, 0);
            v11 = __clz(__rbit64(v30)) + v26;
            goto LABEL_19;
          }
        }

        result = sub_1CFE2508C(v9, v42, 0);
LABEL_19:
        v12 = v41;
        v3 = v29;
      }

      v10 = v12 + 1;
      v9 = v11;
      if (v10 == v34)
      {
        return v43;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

id HKTableFormatter.init(notificationSettings:)(uint64_t a1)
{
  sub_1CFE24F6C(0, &qword_1EC509F50, MEMORY[0x1E69D3718]);
  v66 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v65 = &v63 - v3;
  sub_1CFE24F6C(0, &qword_1EC509F58, MEMORY[0x1E69D36A8]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v63 - v6;
  sub_1CFE24F6C(0, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v64 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v63 - v14;
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v63 - v17;
  v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v20 = sub_1CFE30A74();
  v21 = [v19 initWithColumnTitles_];

  sub_1CFE25038(0, &qword_1EC509528, MEMORY[0x1E69E6F90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1CFE37BB0;
  v23 = v21;
  v24 = sub_1CFE305D4();
  if (v24 == 2)
  {
    v25 = 0xE300000000000000;
    v26 = 7104878;
  }

  else
  {
    LOBYTE(v69) = v24 & 1;
    v26 = sub_1CFE30944();
  }

  *(v22 + 32) = v26;
  *(v22 + 40) = v25;
  sub_1CFE305F4();
  v27 = sub_1CFE30314();
  v28 = *(*(v27 - 8) + 48);
  v67 = *(v27 - 8);
  v68 = v28;
  v29 = 0;
  if (v28(v18, 1, v27) != 1)
  {
    v29 = sub_1CFE302D4();
    (*(v67 + 8))(v18, v27);
  }

  v30 = [v23 stringFromDate_];

  v31 = sub_1CFE30924();
  v33 = v32;

  *(v22 + 48) = v31;
  *(v22 + 56) = v33;
  sub_1CFE305E4();
  if (v68(v15, 1, v27) == 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = sub_1CFE302D4();
    (*(v67 + 8))(v15, v27);
  }

  v35 = [v23 stringFromDate_];

  v36 = sub_1CFE30924();
  v38 = v37;

  *(v22 + 64) = v36;
  *(v22 + 72) = v38;
  v69 = sub_1CFE305C4();
  sub_1CFDBCCBC();
  *(v22 + 80) = sub_1CFE30CC4();
  *(v22 + 88) = v39;
  v40 = sub_1CFE305B4();
  v41 = 1702195828;
  if ((v40 & 1) == 0)
  {
    v41 = 0x65736C6166;
  }

  v42 = 0xE500000000000000;
  if (v40)
  {
    v42 = 0xE400000000000000;
  }

  *(v22 + 96) = v41;
  *(v22 + 104) = v42;
  sub_1CFE305A4();
  v43 = sub_1CFE30564();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v7, 1, v43) == 1)
  {
    sub_1CFE24FC0(v7);
    v45 = 0xE300000000000000;
    v46 = 7104878;
  }

  else
  {
    v47 = sub_1CFE30554();
    (*(v44 + 8))(v7, v43);
    v48 = sub_1CFE24598(v47);

    v69 = v48;
    sub_1CFE25038(0, &qword_1EC509830, MEMORY[0x1E69E62F8]);
    sub_1CFDDDFEC();
    v46 = sub_1CFE30844();
    v45 = v49;
  }

  *(v22 + 112) = v46;
  *(v22 + 120) = v45;
  v50 = sub_1CFE30574();
  if (v51)
  {
    v52 = 0xE300000000000000;
    v53 = 7104878;
  }

  else
  {
    v69 = v50;
    v53 = sub_1CFE30CC4();
  }

  *(v22 + 128) = v53;
  *(v22 + 136) = v52;
  sub_1CFE30584();
  *(v22 + 144) = sub_1CFE30944();
  *(v22 + 152) = v54;
  v55 = v64;
  sub_1CFE30594();
  if (v68(v55, 1, v27) == 1)
  {
    v56 = 0;
  }

  else
  {
    v56 = sub_1CFE302D4();
    (*(v67 + 8))(v55, v27);
  }

  v57 = [v23 stringFromDate_];

  v58 = sub_1CFE30924();
  v60 = v59;

  *(v22 + 160) = v58;
  *(v22 + 168) = v60;
  v61 = sub_1CFE30A74();

  [v23 appendRow_];

  return v23;
}

void sub_1CFE24F6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFE30C74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1CFE24FC0(uint64_t a1)
{
  sub_1CFE24F6C(0, &qword_1EC509F58, MEMORY[0x1E69D36A8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1CFE25038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1CFE2508C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t SleepingSampleDaySummary.baselineComparisons.getter()
{
  sub_1CFDA97E8(0, &qword_1EDC32038, type metadata accessor for SleepingSampleBaselineComparison, MEMORY[0x1E69E6F90]);
  v1 = *(type metadata accessor for SleepingSampleBaselineComparison(0) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1CFE33E10;
  v5 = v4 + v3;
  v6 = type metadata accessor for SleepingSampleDaySummary(0);
  sub_1CFDA9900(v0 + v6[8], v5, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v0 + v6[9], v5 + v2, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v0 + v6[10], v5 + 2 * v2, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v0 + v6[11], v5 + 3 * v2, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v0 + v6[12], v5 + 4 * v2, type metadata accessor for SleepingSampleBaselineComparison);
  return v4;
}

uint64_t SleepingSampleDaySummary.baselineComparison(for:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for SleepingSampleDaySummary(0);
  return sub_1CFDA9900(v2 + *(v5 + qword_1CFE380A0[v4]), a2, type metadata accessor for SleepingSampleBaselineComparison);
}

uint64_t sub_1CFE25280@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t SleepingSampleDaySummary.hasAnyBaselinesInRefinement.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SleepingSampleBaselineAvailability(0);
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v42 = (&v39 - v8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v39 - v10;
  v12 = type metadata accessor for SleepingSampleBaselineComparison(0);
  v13 = v12 - 8;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA97E8(0, &qword_1EDC32038, type metadata accessor for SleepingSampleBaselineComparison, MEMORY[0x1E69E6F90]);
  v18 = *(v14 + 72);
  v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v40 = 4 * v18;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1CFE33E10;
  v39 = v20;
  v21 = v20 + v19;
  v22 = type metadata accessor for SleepingSampleDaySummary(0);
  sub_1CFDA9900(v1 + v22[8], v21, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v1 + v22[9], v21 + v18, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v1 + v22[10], v21 + 2 * v18, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v1 + v22[11], v21 + 3 * v18, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v1 + v22[12], v21 + v40, type metadata accessor for SleepingSampleBaselineComparison);
  v23 = *(v13 + 28);
  v24 = 5;
  while (1)
  {
    sub_1CFDA9900(v21, v17, type metadata accessor for SleepingSampleBaselineComparison);
    sub_1CFDA9900(&v17[v23], v11, type metadata accessor for SleepingSampleBaselineAvailability);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      goto LABEL_2;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_1CFDAD680(0);
    }

    else
    {
      sub_1CFDCB868(0);
    }

    v27 = *&v11[*(v26 + 48)];
    sub_1CFDA7A74(v11);
    if ((v27 - 6) >= 0xE)
    {
LABEL_2:
      sub_1CFDA99B4(v17, type metadata accessor for SleepingSampleBaselineComparison);
      goto LABEL_3;
    }

    v28 = v17[*(type metadata accessor for SleepingSampleAggregate(0) + 36)] < 3u;
    sub_1CFDA9900(&v17[v23], v42, type metadata accessor for SleepingSampleBaselineAvailability);
    v29 = swift_getEnumCaseMultiPayload();
    if (v29)
    {
      if (v29 == 1)
      {
        sub_1CFDAD680(0);
        v31 = *(v42 + *(v30 + 64));
        sub_1CFDA7A74(v42);
      }

      else
      {
        sub_1CFDA7A74(v42);
        v31 = 6;
      }
    }

    else
    {
      v31 = *v42;
    }

    sub_1CFDA9900(&v17[v23], v41, type metadata accessor for SleepingSampleBaselineAvailability);
    sub_1CFDA99B4(v17, type metadata accessor for SleepingSampleBaselineComparison);
    result = swift_getEnumCaseMultiPayload();
    if (result)
    {
      if (result == 1)
      {
        sub_1CFDAD680(0);
      }

      else
      {
        sub_1CFDCB868(0);
      }

      v34 = *(v41 + *(v33 + 48));
      result = sub_1CFDA7A74(v41);
    }

    else
    {
      v34 = 0;
    }

    v35 = v31 - v34;
    if (__OFSUB__(v31, v34))
    {
      break;
    }

    v36 = __OFADD__(v35, v28);
    v37 = v35 + v28;
    if (v36)
    {
      goto LABEL_27;
    }

    if (v37 <= 0)
    {
      v38 = 1;
LABEL_25:

      return v38;
    }

LABEL_3:
    v21 += v18;
    if (!--v24)
    {
      v38 = 0;
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t SleepingSampleDaySummary.init(morningIndex:baselineRange:latestBaselineSampleEnd:heartRate:bloodOxygen:respiratoryRate:wristTemperature:timeAsleep:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = type metadata accessor for SleepingSampleDaySummary(0);
  v17 = v16[6];
  v18 = sub_1CFE30314();
  (*(*(v18 - 8) + 56))(a9 + v17, 1, 1, v18);
  v19 = a9 + v16[7];
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = sub_1CFE307E4();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  sub_1CFDF72E0(a2, a9 + v16[5]);
  sub_1CFDB1078(a3, a9 + v17);
  sub_1CFDB4880(a4, a9 + v16[8], type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDB4880(a5, a9 + v16[9], type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDB4880(a6, a9 + v16[10], type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDB4880(a7, a9 + v16[11], type metadata accessor for SleepingSampleBaselineComparison);
  return sub_1CFDB4880(a8, a9 + v16[12], type metadata accessor for SleepingSampleBaselineComparison);
}

uint64_t SleepingSampleDaySummary.morningIndex.setter(uint64_t a1)
{
  v3 = sub_1CFE307E4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SleepingSampleDaySummary.baselineRange.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SleepingSampleDaySummary(0) + 20);

  return sub_1CFDE895C(v3, a1);
}

uint64_t SleepingSampleDaySummary.baselineRange.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SleepingSampleDaySummary(0) + 20);

  return sub_1CFE27664(a1, v3);
}

uint64_t SleepingSampleDaySummary.latestBaselineSampleEnd.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SleepingSampleDaySummary(0) + 24);

  return sub_1CFDB1078(a1, v3);
}

uint64_t SleepingSampleDaySummary.outlierContext.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for SleepingSampleDaySummary(0);
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t SleepingSampleDaySummary.outlierContext.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for SleepingSampleDaySummary(0);
  v5 = v1 + *(result + 28);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t SleepingSampleDaySummary.heartRate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SleepingSampleDaySummary(0) + 32);

  return sub_1CFE276E4(a1, v3);
}

uint64_t SleepingSampleDaySummary.bloodOxygen.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SleepingSampleDaySummary(0) + 36);

  return sub_1CFE276E4(a1, v3);
}

uint64_t SleepingSampleDaySummary.respiratoryRate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SleepingSampleDaySummary(0) + 40);

  return sub_1CFE276E4(a1, v3);
}

uint64_t SleepingSampleDaySummary.wristTemperature.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SleepingSampleDaySummary(0) + 44);

  return sub_1CFE276E4(a1, v3);
}

uint64_t SleepingSampleDaySummary.timeAsleep.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SleepingSampleDaySummary(0) + 48);

  return sub_1CFE276E4(a1, v3);
}

uint64_t SleepingSampleDaySummary.init(morningIndex:baselineRange:heartRate:bloodOxygen:respiratoryRate:wristTemperature:timeAsleep:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v26 = a6;
  v27 = a7;
  v24 = a4;
  v25 = a5;
  v23 = a3;
  sub_1CFDA97E8(0, &qword_1EDC32C70, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v22 - v13;
  v15 = sub_1CFE30314();
  v16 = *(*(v15 - 8) + 56);
  v16(v14, 1, 1, v15);
  v17 = type metadata accessor for SleepingSampleDaySummary(0);
  v18 = v17[6];
  v16((a8 + v18), 1, 1, v15);
  v19 = a8 + v17[7];
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = sub_1CFE307E4();
  (*(*(v20 - 8) + 32))(a8, a1, v20);
  sub_1CFDF72E0(a2, a8 + v17[5]);
  sub_1CFDB1078(v14, a8 + v18);
  sub_1CFDB4880(v23, a8 + v17[8], type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDB4880(v24, a8 + v17[9], type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDB4880(v25, a8 + v17[10], type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDB4880(v26, a8 + v17[11], type metadata accessor for SleepingSampleBaselineComparison);
  return sub_1CFDB4880(v27, a8 + v17[12], type metadata accessor for SleepingSampleBaselineComparison);
}

uint64_t sub_1CFE26234@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CFE28058(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CFE26268(uint64_t a1)
{
  v2 = sub_1CFDAB17C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CFE262A4(uint64_t a1)
{
  v2 = sub_1CFDAB17C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SleepingSampleDaySummary.hash(into:)(uint64_t a1)
{
  v3 = sub_1CFE30314();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v18 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E6969530];
  sub_1CFDA97E8(0, &qword_1EDC32C70, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v17 - v10;
  sub_1CFE307E4();
  sub_1CFDA7A2C(&qword_1EC509638, MEMORY[0x1E696B418], MEMORY[0x1E696B428]);
  sub_1CFE30834();
  v12 = type metadata accessor for SleepingSampleDaySummary(0);
  sub_1CFE30834();
  sub_1CFDAB9C4(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
  sub_1CFE30834();
  sub_1CFDA9A94(v1 + *(v12 + 24), v11, &qword_1EDC32C70, v7);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v13 = v18;
    (*(v4 + 32))(v18, v11, v3);
    sub_1CFE31164();
    sub_1CFDA7A2C(&qword_1EC509650, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1CFE30834();
    (*(v4 + 8))(v13, v3);
  }

  v14 = (v1 + *(v12 + 28));
  if (*(v14 + 8) == 1)
  {
    sub_1CFE31164();
  }

  else
  {
    v15 = *v14;
    sub_1CFE31164();
    MEMORY[0x1D3876810](v15);
  }

  SleepingSampleBaselineComparison.hash(into:)(a1);
  SleepingSampleBaselineComparison.hash(into:)(a1);
  SleepingSampleBaselineComparison.hash(into:)(a1);
  SleepingSampleBaselineComparison.hash(into:)(a1);
  return SleepingSampleBaselineComparison.hash(into:)(a1);
}

uint64_t SleepingSampleDaySummary.hashValue.getter()
{
  sub_1CFE31144();
  SleepingSampleDaySummary.hash(into:)(v1);
  return sub_1CFE31184();
}

uint64_t sub_1CFE26680()
{
  sub_1CFE31144();
  SleepingSampleDaySummary.hash(into:)(v1);
  return sub_1CFE31184();
}

uint64_t sub_1CFE266C4(uint64_t a1)
{
  sub_1CFE31144();
  SleepingSampleDaySummary.hash(into:)(v2);
  return sub_1CFE31184();
}

uint64_t SleepingSampleDaySummary.morningIndexRange.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1CFDA7460(0);
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v22 - v11;
  v13 = sub_1CFE307E4();
  sub_1CFDA7A2C(&qword_1EDC32CA8, MEMORY[0x1E696B418], MEMORY[0x1E696B430]);
  result = sub_1CFE30874();
  if (result)
  {
    v15 = *(v13 - 8);
    v16 = v15[2];
    v16(v12, v2, v13);
    v16(&v12[*(v5 + 48)], v2, v13);
    sub_1CFDA9900(v12, v9, sub_1CFDA7460);
    v17 = *(v5 + 48);
    v18 = v15[4];
    v18(a1, v9, v13);
    v19 = v15[1];
    v19(&v9[v17], v13);
    sub_1CFDB4880(v12, v9, sub_1CFDA7460);
    v20 = *(v5 + 48);
    sub_1CFDAB9C4(0, &qword_1EDC32CA0, MEMORY[0x1E69E5F90]);
    v18(a1 + *(v21 + 36), &v9[v20], v13);
    return (v19)(v9, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SleepingSampleDaySummary.hasAnyRelativeComparison.getter()
{
  v1 = type metadata accessor for SleepingSampleBaselineComparison(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA97E8(0, &qword_1EDC32038, type metadata accessor for SleepingSampleBaselineComparison, MEMORY[0x1E69E6F90]);
  v6 = *(v2 + 72);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1CFE33E10;
  v9 = v8 + v7;
  v10 = type metadata accessor for SleepingSampleDaySummary(0);
  sub_1CFDA9900(v0 + v10[8], v9, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v0 + v10[9], v9 + v6, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v0 + v10[10], v9 + 2 * v6, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v0 + v10[11], v9 + 3 * v6, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v0 + v10[12], v9 + 4 * v6, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v9, v5, type metadata accessor for SleepingSampleBaselineComparison);
  SleepingSampleBaselineComparison.relativeComparison.getter();
  v12 = v11;
  sub_1CFDA99B4(v5, type metadata accessor for SleepingSampleBaselineComparison);
  if (v12 & 1) != 0 && (sub_1CFDA9900(v9 + v6, v5, type metadata accessor for SleepingSampleBaselineComparison), SleepingSampleBaselineComparison.relativeComparison.getter(), v14 = v13, sub_1CFDA99B4(v5, type metadata accessor for SleepingSampleBaselineComparison), (v14) && (sub_1CFDA9900(v9 + 2 * v6, v5, type metadata accessor for SleepingSampleBaselineComparison), SleepingSampleBaselineComparison.relativeComparison.getter(), v16 = v15, sub_1CFDA99B4(v5, type metadata accessor for SleepingSampleBaselineComparison), (v16) && (sub_1CFDA9900(v9 + 3 * v6, v5, type metadata accessor for SleepingSampleBaselineComparison), SleepingSampleBaselineComparison.relativeComparison.getter(), v18 = v17, sub_1CFDA99B4(v5, type metadata accessor for SleepingSampleBaselineComparison), (v18))
  {
    sub_1CFDA9900(v9 + 4 * v6, v5, type metadata accessor for SleepingSampleBaselineComparison);
    SleepingSampleBaselineComparison.relativeComparison.getter();
    v20 = v19;
    sub_1CFDA99B4(v5, type metadata accessor for SleepingSampleBaselineComparison);
    v21 = v20 ^ 1;
  }

  else
  {
    v21 = 1;
  }

  return v21 & 1;
}

uint64_t SleepingSampleDaySummary.baselineComparisons(for:)(char *a1)
{
  v2 = *a1;
  sub_1CFDA97E8(0, &qword_1EDC32038, type metadata accessor for SleepingSampleBaselineComparison, MEMORY[0x1E69E6F90]);
  v3 = *(type metadata accessor for SleepingSampleBaselineComparison(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1CFE324E0;
  v6 = type metadata accessor for SleepingSampleDaySummary(0);
  sub_1CFDA9900(v1 + *(v6 + qword_1CFE380A0[v2]), v5 + v4, type metadata accessor for SleepingSampleBaselineComparison);
  return v5;
}

uint64_t sub_1CFE26DB8(int *a1)
{
  sub_1CFDA97E8(0, &qword_1EDC32038, type metadata accessor for SleepingSampleBaselineComparison, MEMORY[0x1E69E6F90]);
  v3 = *(type metadata accessor for SleepingSampleBaselineComparison(0) - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1CFE33E10;
  v7 = v6 + v5;
  sub_1CFDA9900(v1 + a1[8], v7, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v1 + a1[9], v7 + v4, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v1 + a1[10], v7 + 2 * v4, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v1 + a1[11], v7 + 3 * v4, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v1 + a1[12], v7 + 4 * v4, type metadata accessor for SleepingSampleBaselineComparison);
  return v6;
}

uint64_t sub_1CFE26F38(char *a1, uint64_t a2)
{
  v4 = *a1;
  sub_1CFDA97E8(0, &qword_1EDC32038, type metadata accessor for SleepingSampleBaselineComparison, MEMORY[0x1E69E6F90]);
  v5 = *(type metadata accessor for SleepingSampleBaselineComparison(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1CFE324E0;
  sub_1CFDA9900(v2 + *(a2 + qword_1CFE380A0[v4]), v7 + v6, type metadata accessor for SleepingSampleBaselineComparison);
  return v7;
}

uint64_t _s13HealthBalance24SleepingSampleDaySummaryV21outOfRangeMetricCountSivg_0()
{
  v21 = type metadata accessor for SleepingSampleBaselineComparison(0);
  v1 = *(v21 - 8);
  v3 = MEMORY[0x1EEE9AC00](v21, v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v20 - v7;
  sub_1CFDA97E8(0, &qword_1EDC32038, type metadata accessor for SleepingSampleBaselineComparison, MEMORY[0x1E69E6F90]);
  v9 = *(v1 + 72);
  v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v11 = swift_allocObject() + v10;
  v12 = type metadata accessor for SleepingSampleDaySummary(0);
  sub_1CFDA9900(v0 + v12[8], v11, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v0 + v12[9], v11 + v9, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v0 + v12[10], v11 + 2 * v9, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v0 + v12[11], v11 + 3 * v9, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA9900(v0 + v12[12], v11 + 4 * v9, type metadata accessor for SleepingSampleBaselineComparison);
  v13 = 0;
  v14 = 5;
  v15 = v11;
  while (1)
  {
    sub_1CFDA9900(v15, v8, type metadata accessor for SleepingSampleBaselineComparison);
    sub_1CFDA9900(v8, v5, type metadata accessor for SleepingSampleBaselineComparison);
    SleepingSampleBaselineComparison.relativeComparison.getter();
    if (v16)
    {
      sub_1CFDA99B4(v5, type metadata accessor for SleepingSampleBaselineComparison);
      sub_1CFDA99B4(v8, type metadata accessor for SleepingSampleBaselineComparison);
      goto LABEL_3;
    }

    if (HKCompareDoubles() != -1)
    {
      break;
    }

    sub_1CFDA99B4(v5, type metadata accessor for SleepingSampleBaselineComparison);
    sub_1CFDA99B4(v8, type metadata accessor for SleepingSampleBaselineComparison);
    v18 = __OFADD__(v13++, 1);
    if (v18)
    {
      goto LABEL_12;
    }

LABEL_3:
    v15 += v9;
    if (!--v14)
    {
      goto LABEL_13;
    }
  }

  v17 = HKCompareDoubles();
  sub_1CFDA99B4(v5, type metadata accessor for SleepingSampleBaselineComparison);
  sub_1CFDA99B4(v8, type metadata accessor for SleepingSampleBaselineComparison);
  if (v17 != 1)
  {
    goto LABEL_3;
  }

  v18 = __OFADD__(v13++, 1);
  if (!v18)
  {
    goto LABEL_3;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v13;
}

unint64_t SleepingSampleDaySummary.OutlierContext.description.getter()
{
  v1 = *v0;
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1CFE30DB4();
  v20 = 0;
  v21 = 0xE000000000000000;
  MEMORY[0x1D3876060](0xD000000000000010, 0x80000001CFE39C90);
  v2 = sub_1CFE30AF4();
  v3 = HKSensitiveLogItem();

  sub_1CFE30CE4();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(&v17, v19);
  sub_1CFE31094();
  __swift_destroy_boxed_opaque_existential_1(&v17);
  MEMORY[0x1D3876060](8236, 0xE200000000000000);
  v17 = 0x437265696C74754FLL;
  v18 = 0xEF28747865746E6FLL;
  MEMORY[0x1D3876060](v20, v21);

  v5 = v17;
  v4 = v18;
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1CFE30DB4();

  v17 = 0xD000000000000013;
  v18 = 0x80000001CFE39CB0;
  if ((v1 & 2) != 0)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if ((v1 & 2) != 0)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x1D3876060](v6, v7);

  MEMORY[0x1D3876060](8236, 0xE200000000000000);
  v8 = v17;
  v9 = v18;
  v17 = v5;
  v18 = v4;

  MEMORY[0x1D3876060](v8, v9);

  v11 = v17;
  v10 = v18;
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1CFE30DB4();

  v17 = 0x6F69746176656C65;
  v18 = 0xEF203A6E6961476ELL;
  if ((v1 & 4) != 0)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if ((v1 & 4) != 0)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x1D3876060](v12, v13);

  MEMORY[0x1D3876060](41, 0xE100000000000000);
  v14 = v17;
  v15 = v18;
  v17 = v11;
  v18 = v10;

  MEMORY[0x1D3876060](v14, v15);

  return v17;
}

uint64_t sub_1CFE27664(uint64_t a1, uint64_t a2)
{
  sub_1CFDAB9C4(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFE276E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleBaselineComparison(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s13HealthBalance24SleepingSampleDaySummaryV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFE30314();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFDA97E8(0, &qword_1EDC32C70, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v34 - v11;
  sub_1CFDA887C(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFE307E4();
  sub_1CFDA7A2C(&qword_1EDC31AB0, MEMORY[0x1E696B418], MEMORY[0x1E696B438]);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    goto LABEL_10;
  }

  v37 = v5;
  v35 = type metadata accessor for SleepingSampleDaySummary(0);
  v36 = a2;
  if ((sub_1CFE308B4() & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_1CFDAB9C4(0, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
  if ((sub_1CFE308B4() & 1) == 0)
  {
    goto LABEL_10;
  }

  v18 = v35[6];
  v19 = *(v14 + 48);
  v20 = MEMORY[0x1E6969530];
  sub_1CFDA9A94(a1 + v18, v17, &qword_1EDC32C70, MEMORY[0x1E6969530]);
  sub_1CFDA9A94(v36 + v18, &v17[v19], &qword_1EDC32C70, v20);
  v21 = *(v37 + 48);
  if (v21(v17, 1, v4) != 1)
  {
    sub_1CFDA9A94(v17, v12, &qword_1EDC32C70, MEMORY[0x1E6969530]);
    if (v21(&v17[v19], 1, v4) != 1)
    {
      v24 = v37;
      (*(v37 + 32))(v8, &v17[v19], v4);
      sub_1CFDA7A2C(&qword_1EDC31998, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v25 = sub_1CFE308B4();
      v26 = *(v24 + 8);
      v26(v8, v4);
      v26(v12, v4);
      sub_1CFDA9B74(v17, &qword_1EDC32C70, MEMORY[0x1E6969530]);
      if ((v25 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    (*(v37 + 8))(v12, v4);
LABEL_9:
    sub_1CFDA99B4(v17, sub_1CFDA887C);
    goto LABEL_10;
  }

  if (v21(&v17[v19], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_1CFDA9B74(v17, &qword_1EDC32C70, MEMORY[0x1E6969530]);
LABEL_13:
  v28 = v35;
  v27 = v36;
  v29 = v35[7];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (v36 + v29);
  v33 = *(v36 + v29 + 8);
  if (v31)
  {
    if (!v33)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (*v30 != *v32)
    {
      LOBYTE(v33) = 1;
    }

    if (v33)
    {
      goto LABEL_10;
    }
  }

  if (_s13HealthBalance32SleepingSampleBaselineComparisonV2eeoiySbAC_ACtFZ_0(a1 + v35[8], v36 + v35[8]) & 1) != 0 && (_s13HealthBalance32SleepingSampleBaselineComparisonV2eeoiySbAC_ACtFZ_0(a1 + v28[9], v27 + v28[9]) & 1) != 0 && (_s13HealthBalance32SleepingSampleBaselineComparisonV2eeoiySbAC_ACtFZ_0(a1 + v28[10], v27 + v28[10]) & 1) != 0 && (_s13HealthBalance32SleepingSampleBaselineComparisonV2eeoiySbAC_ACtFZ_0(a1 + v28[11], v27 + v28[11]))
  {
    v22 = _s13HealthBalance32SleepingSampleBaselineComparisonV2eeoiySbAC_ACtFZ_0(a1 + v28[12], v27 + v28[12]);
    return v22 & 1;
  }

LABEL_10:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1CFE27C48(void *a1)
{
  a1[1] = sub_1CFDA7A2C(&qword_1EDC32810, type metadata accessor for SleepingSampleDaySummary, &protocol conformance descriptor for SleepingSampleDaySummary);
  a1[2] = sub_1CFDA7A2C(&qword_1EDC32828, type metadata accessor for SleepingSampleDaySummary, &protocol conformance descriptor for SleepingSampleDaySummary);
  result = sub_1CFDA7A2C(&qword_1EDC32820, type metadata accessor for SleepingSampleDaySummary, &protocol conformance descriptor for SleepingSampleDaySummary);
  a1[3] = result;
  return result;
}

unint64_t sub_1CFE27D44()
{
  result = qword_1EC509F60;
  if (!qword_1EC509F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC509F60);
  }

  return result;
}

unint64_t sub_1CFE27D98()
{
  result = qword_1EDC31940;
  if (!qword_1EDC31940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31940);
  }

  return result;
}

unint64_t sub_1CFE27DF0()
{
  result = qword_1EDC31938;
  if (!qword_1EDC31938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC31938);
  }

  return result;
}

void sub_1CFE27E6C(uint64_t a1)
{
  sub_1CFE307E4();
  if (v1 <= 0x3F)
  {
    sub_1CFDAB9C4(319, &qword_1EDC32C90, MEMORY[0x1E69E66A8]);
    if (v2 <= 0x3F)
    {
      sub_1CFDA97E8(319, &qword_1EDC32C70, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1CFE27F90();
        if (v4 <= 0x3F)
        {
          type metadata accessor for SleepingSampleBaselineComparison(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}