uint64_t sub_1BD6F4238(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlightWidgetStatusMessageContent.ContentType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD6F429C@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v67 = a3;
  v68 = a6;
  v66[1] = a4;
  v69 = a2;
  v70 = a1;
  v71 = a7;
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v66 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50A10, &unk_1BE0F1440);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v66 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v66 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = v66 - v26;
  v28 = [a5 status];
  v29 = [a5 currentGateTime];
  if (v29)
  {
    v30 = v29;
    sub_1BE04AEE4();

    v31 = sub_1BE04AF64();
    (*(*(v31 - 8) + 56))(v14, 0, 1, v31);
    v32 = sub_1BD0DE53C(v14, &unk_1EBD39970, &unk_1BE0B9F80);
    if (v28 == 1)
    {
      (v70)(v32);
      sub_1BD6F5480(v17, v27);
      v65 = v71;
    }

    else if (v28 == 3)
    {
      (v67)(v32);
      v33 = type metadata accessor for FlightWidgetStatusMessageContent.ContentType(0);
      v34 = *(v33 - 8);
      v35 = *(v34 + 48);
      if (v35(v20, 1, v33) == 1)
      {
        v70();
        v36 = v35(v20, 1, v33);
        v37 = v71;
        if (v36 != 1)
        {
          sub_1BD0DE53C(v20, &qword_1EBD50A10, &unk_1BE0F1440);
        }
      }

      else
      {
        sub_1BD6F4238(v20, v23);
        (*(v34 + 56))(v23, 0, 1, v33);
        v37 = v71;
      }

      sub_1BD6F5480(v23, v27);
      v65 = v37;
    }

    else
    {
      (v70)(v32);
      v65 = v71;
    }

    return sub_1BD6F5480(v27, v65);
  }

  else
  {
    v67 = v9;
    v38 = sub_1BE04AF64();
    (*(*(v38 - 8) + 56))(v14, 1, 1, v38);
    sub_1BD0DE53C(v14, &unk_1EBD39970, &unk_1BE0B9F80);
    sub_1BE04D1D4();
    v39 = v68;
    v40 = sub_1BE04D204();
    v41 = sub_1BE052C34();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v72 = v43;
      *v42 = 136315138;
      v44 = [v39 identifier];
      v45 = sub_1BE052434();
      v47 = v46;

      v48 = sub_1BD123690(v45, v47, &v72);
      v47, v49, v50, v51, v52, v53, v54, v55;
      *(v42 + 4) = v48;
      _os_log_impl(&dword_1BD026000, v40, v41, "Expected currentGateTime to be set. Falling back to onTime content | flightID=%s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43, v56, v57, v58, v59, v60, v61, v62);
      MEMORY[0x1BFB45F20](v43, -1, -1);
      MEMORY[0x1BFB45F20](v42, -1, -1);
    }

    v63 = (*(v67 + 8))(v11, v8);
    return (v70)(v63);
  }
}

uint64_t sub_1BD6F47DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04AF64();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = type metadata accessor for FlightWidgetStatusMessageContent.ContentType(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t sub_1BD6F489C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  sub_1BD15D62C(a1, &v14 - v7);
  v9 = sub_1BE04AF64();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v8, 1, v9) == 1)
  {
    (*(v10 + 16))(a3, a2, v9);
    if (v11(v8, 1, v9) != 1)
    {
      sub_1BD0DE53C(v8, &unk_1EBD39970, &unk_1BE0B9F80);
    }
  }

  else
  {
    (*(v10 + 32))(a3, v8, v9);
  }

  v12 = type metadata accessor for FlightWidgetStatusMessageContent.ContentType(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v12 - 8) + 56))(a3, 0, 1, v12);
}

uint64_t sub_1BD6F4A5C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50A18, &qword_1BE0F1690) + 48);
  v7 = [a1 scheduledGateTime];
  sub_1BE04AEE4();

  v8 = sub_1BE04AF64();
  (*(*(v8 - 8) + 16))(a3 + v6, a2, v8);
  v9 = type metadata accessor for FlightWidgetStatusMessageContent.ContentType(0);
  swift_storeEnumTagMultiPayload();
  v10 = *(*(v9 - 8) + 56);

  return v10(a3, 0, 1, v9);
}

unint64_t FlightWidgetStatusMessageContent.debugDescription.getter()
{
  v1 = v0;
  v2 = sub_1BE04AF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v126 - v7;
  v9 = type metadata accessor for FlightWidgetStatusMessageContent.ContentType(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v126 - v13;
  v128 = 0xD000000000000022;
  v129 = 0x80000001BE136450;
  sub_1BD6F5160(v1, &v126 - v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v3 + 32))(v8, v14, v2);
      v126 = 0;
      v127 = 0xE000000000000000;
      sub_1BE053834();
      v127, v96, v97, v98, v99, v100, v101, v102;
      v126 = 0xD000000000000026;
      v127 = 0x80000001BE136560;
      if (qword_1EBD36D50 != -1)
      {
        swift_once();
      }

      v103 = qword_1EBD50A08;
      v104 = sub_1BE04AE64();
      v105 = [v103 stringFromDate_];

      v106 = sub_1BE052434();
      v108 = v107;

      MEMORY[0x1BFB3F610](v106, v108);
      v108, v109, v110, v111, v112, v113, v114, v115;
      MEMORY[0x1BFB3F610](32034, 0xE200000000000000);
      v116 = v127;
      MEMORY[0x1BFB3F610](v126, v127);
      v116, v117, v118, v119, v120, v121, v122, v123;
      (*(v3 + 8))(v8, v2);
    }

    else
    {
      v44 = *v14;
      v45 = *(v14 + 1);
      v126 = 0;
      v127 = 0xE000000000000000;
      sub_1BE053834();
      v127, v46, v47, v48, v49, v50, v51, v52;
      v126 = 0xD00000000000001ALL;
      v127 = 0x80000001BE136590;
      MEMORY[0x1BFB3F610](v44, v45);
      v45, v53, v54, v55, v56, v57, v58, v59;
      MEMORY[0x1BFB3F610](32034, 0xE200000000000000);
      v60 = v127;
      MEMORY[0x1BFB3F610](v126, v127);
      v60, v61, v62, v63, v64, v65, v66, v67;
    }

    return v128;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1BD6F5160(v1, v11);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      (*(v3 + 32))(v5, v11, v2);
      if (qword_1EBD36D50 != -1)
      {
        swift_once();
      }

      v68 = qword_1EBD50A08;
      v69 = sub_1BE04AE64();
      v70 = [v68 stringFromDate_];

      v71 = sub_1BE052434();
      v73 = v72;

      (*(v3 + 8))(v5, v2);
      v126 = 0;
      v127 = 0xE000000000000000;
      sub_1BE053834();
      v127, v74, v75, v76, v77, v78, v79, v80;
      v126 = 0xD000000000000017;
      v127 = 0x80000001BE1364E0;
      MEMORY[0x1BFB3F610](v71, v73);
      v73, v81, v82, v83, v84, v85, v86, v87;
      MEMORY[0x1BFB3F610](32034, 0xE200000000000000);
      v88 = v127;
      MEMORY[0x1BFB3F610](v126, v127);
      v88, v89, v90, v91, v92, v93, v94, v95;
      sub_1BD6F51C4(v14);
      return v128;
    }

    sub_1BD6F51C4(v11);
    sub_1BD6F51C4(v14);
    return 0xD000000000000033;
  }

  else
  {
    if (EnumCaseMultiPayload != 3)
    {
      MEMORY[0x1BFB3F610](0xD00000000000001CLL, 0x80000001BE136480);
      return v128;
    }

    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50A18, &qword_1BE0F1690) + 48);
    v17 = sub_1BD6F1A68();
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      v126 = 0;
      v127 = 0xE000000000000000;
      sub_1BE053834();
      v127, v21, v22, v23, v24, v25, v26, v27;
      v126 = 0xD00000000000001DLL;
      v127 = 0x80000001BE136540;
      MEMORY[0x1BFB3F610](v19, v20);
      v20, v28, v29, v30, v31, v32, v33, v34;
      MEMORY[0x1BFB3F610](32034, 0xE200000000000000);
      v35 = v127;
      MEMORY[0x1BFB3F610](v126, v127);
      v35, v36, v37, v38, v39, v40, v41, v42;
      v43 = *(v3 + 8);
      v43(&v14[v16], v2);
      v43(v14, v2);
      return v128;
    }

    v125 = *(v3 + 8);
    v125(&v14[v16], v2);
    v125(v14, v2);
    return 0xD000000000000038;
  }
}

uint64_t sub_1BD6F5160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlightWidgetStatusMessageContent.ContentType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD6F51C4(uint64_t a1)
{
  v2 = type metadata accessor for FlightWidgetStatusMessageContent.ContentType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD6F5224()
{
  result = qword_1EBD50A20;
  if (!qword_1EBD50A20)
  {
    type metadata accessor for FlightWidgetStatusMessageView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50A20);
  }

  return result;
}

void sub_1BD6F52A8(uint64_t a1)
{
  type metadata accessor for FlightWidgetStatusMessageContent.ContentType(319);
  if (v1 <= 0x3F)
  {
    sub_1BD1C86BC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BD6F533C(uint64_t a1)
{
  sub_1BD6F53D0();
  if (v1 <= 0x3F)
  {
    sub_1BE04AF64();
    if (v2 <= 0x3F)
    {
      sub_1BD6F5418(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1BD6F53D0()
{
  if (!qword_1EBD50A48)
  {
    v0 = sub_1BE04AF64();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD50A48);
    }
  }
}

void sub_1BD6F5418(uint64_t a1)
{
  if (!qword_1EBD50A50)
  {
    sub_1BE04AF64();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBD50A50);
    }
  }
}

uint64_t sub_1BD6F5480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50A10, &unk_1BE0F1440);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FlightWidgetStatusMessageView.body.getter()
{
  sub_1BD6F57B4(__dst);
  v23 = __dst[4];
  *v24 = __dst[5];
  *&v24[12] = *(&__dst[5] + 12);
  v19 = __dst[0];
  v20 = __dst[1];
  v21 = __dst[2];
  v22 = __dst[3];
  KeyPath = swift_getKeyPath();
  LOBYTE(__src[0]) = 0;
  v3 = sub_1BD6F670C(v2);
  v4 = swift_getKeyPath();
  v5 = *(v0 + *(type metadata accessor for FlightWidgetStatusMessageContent(0) + 20));
  v6 = swift_getKeyPath();
  sub_1BE048964();
  sub_1BE051CD4();
  sub_1BE04E5E4();
  sub_1BE051CF4();
  sub_1BE04EE54();
  __src[4] = v23;
  __src[5] = *v24;
  __src[6] = *&v24[16];
  __src[0] = v19;
  __src[1] = v20;
  __src[2] = v21;
  __src[3] = v22;
  __src[12] = __dst[22];
  __src[13] = __dst[23];
  __src[11] = __dst[21];
  *&__src[7] = KeyPath;
  *(&__src[7] + 1) = 1;
  LOBYTE(__src[8]) = 0;
  *(&__src[8] + 1) = v4;
  *&__src[9] = v3;
  *(&__src[9] + 1) = v5;
  *&__src[10] = v6;
  *(&__src[10] + 1) = 0x3FE0000000000000;
  sub_1BE052434();
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50A58, &qword_1BE0F1580);
  sub_1BD6F6DEC();
  sub_1BE050DE4();
  v8, v9, v10, v11, v12, v13, v14, v15;
  memcpy(__dst, __src, 0x150uLL);
  return sub_1BD0DE53C(__dst, &qword_1EBD50A58, &qword_1BE0F1580);
}

void sub_1BD6F57B4(_OWORD *a1@<X8>)
{
  v151 = a1;
  v2 = sub_1BE04BD74();
  v143 = *(v2 - 8);
  v144 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v142 = &v136 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE050604();
  v146 = *(v4 - 8);
  v147 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v145 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE050624();
  v141 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE050654();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1BE04AF64();
  v149 = *(v12 - 8);
  v150 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v140 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v136 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v136 - v18;
  v20 = type metadata accessor for FlightWidgetStatusMessageContent.ContentType(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v136 - v24;
  sub_1BD6F7840(v1, &v136 - v24, type metadata accessor for FlightWidgetStatusMessageContent.ContentType);
  v148 = v25;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v143 = v11;
    v144 = v6;
    v53 = v145;
    v54 = v146;
    v55 = v147;
    if (EnumCaseMultiPayload)
    {
      v116 = v149;
      v117 = v150;
      (*(v149 + 32))(v19, v148, v150);
      v139 = v19;
      *&v191 = sub_1BD6F6A08(v19);
      *(&v191 + 1) = v118;
      sub_1BD0DDEBC();
      v148 = sub_1BE0506C4();
      v142 = v119;
      v138 = v120;
      v140 = v121;
      v137 = sub_1BE051CF4();
      v123 = v122;
      (*(v116 + 16))(v16, v19, v117);
      (*(v54 + 104))(v53, *MEMORY[0x1E69810E0], v55);
      sub_1BE050614();
      sub_1BE050644();
      (*(v141 + 8))(v8, v144);
      v124 = sub_1BE050684();
      v126 = v125;
      LOBYTE(v117) = v127;
      v129 = v128;
      KeyPath = swift_getKeyPath();
      *(&v153 + 1) = v179;
      DWORD1(v153) = *(&v179 + 3);
      *(&v154 + 9) = v165;
      HIDWORD(v154) = *(&v165 + 3);
      v171 = v117 & 1;
      *&v152 = v124;
      *(&v152 + 1) = v126;
      LOBYTE(v153) = v117 & 1;
      *(&v153 + 1) = v129;
      *&v154 = KeyPath;
      v172 = v138 & 1;
      BYTE8(v154) = 2;
      *&v155 = v137;
      *(&v155 + 1) = v123;
      *v193 = v154;
      *&v193[16] = v155;
      v191 = v152;
      v192 = v153;
      v156[0] = v124;
      v156[1] = v126;
      v157 = v117 & 1;
      *&v158[3] = *(&v179 + 3);
      *v158 = v179;
      v159 = v129;
      v160 = KeyPath;
      v161 = 2;
      *&v162[3] = *(&v165 + 3);
      *v162 = v165;
      v163 = v137;
      v164 = v123;
      sub_1BD0DE19C(&v152, &v173, &qword_1EBD50B10, &qword_1BE0F15E0);
      sub_1BD0DE53C(v156, &qword_1EBD50B10, &qword_1BE0F15E0);
      LOBYTE(v123) = v172;
      v131 = swift_getKeyPath();
      *&v165 = v148;
      *(&v165 + 1) = v142;
      LOBYTE(v166) = v123;
      *(&v166 + 1) = v140;
      v167 = v191;
      v168[0] = v192;
      v168[1] = *v193;
      *v169 = *&v193[16];
      *&v169[16] = v131;
      v169[24] = 2;
      *&v193[57] = *&v169[9];
      v191 = v165;
      v192 = v166;
      *&v193[32] = *v193;
      *&v193[48] = *&v193[16];
      *v193 = v167;
      *&v193[16] = v168[0];
      v170 = 1;
      v193[73] = 1;
      sub_1BD0DE19C(&v165, &v173, &qword_1EBD50AF0, &qword_1BE0F15C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50AF0, &qword_1BE0F15C8);
      sub_1BD6F7388();
      sub_1BE04F9A4();
      *&v193[32] = v176[1];
      *&v193[48] = *v177;
      *&v193[58] = *&v177[10];
      v191 = v173;
      v192 = v174;
      *v193 = v175;
      *&v193[16] = v176[0];
      v171 = 0;
      v193[74] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50AE0, &qword_1BE0F15C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8, &qword_1BE0BB6A0);
      sub_1BD6F72FC();
      sub_1BD170E70();
      sub_1BE04F9A4();
      v176[1] = v183;
      *v177 = v184[0];
      *&v177[11] = *(v184 + 11);
      v173 = v179;
      v174 = v180;
      v175 = v181;
      v176[0] = v182;
      v172 = 0;
      v178 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50AD0, &qword_1BE0F15B8);
      sub_1BD6F7270();
      sub_1BE04F9A4();
      sub_1BD0DE53C(&v165, &qword_1EBD50AF0, &qword_1BE0F15C8);
      v189 = *&v193[32];
      v190[0] = *&v193[48];
      *(v190 + 12) = *&v193[60];
      v185 = v191;
      v186 = v192;
      v187 = *v193;
      v188 = *&v193[16];
      (*(v149 + 8))(v139, v150);
    }

    else
    {
      v56 = *(v148 + 1);
      *&v191 = *v148;
      *(&v191 + 1) = v56;
      sub_1BD0DDEBC();
      v57 = sub_1BE0506C4();
      v59 = v58;
      v61 = v60;
      v63 = (v62 & 1);
      LOBYTE(v152) = v62 & 1;
      v172 = 0;
      *&v191 = v57;
      *(&v191 + 1) = v58;
      LOBYTE(v192) = v62 & 1;
      *(&v192 + 1) = v60;
      v193[73] = 0;
      sub_1BD0D7F18(v57, v58, v62 & 1);
      sub_1BE048C84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50AF0, &qword_1BE0F15C8);
      sub_1BD6F7388();
      sub_1BE04F9A4();
      *&v193[32] = v176[1];
      *&v193[48] = *v177;
      *&v193[58] = *&v177[10];
      v191 = v173;
      v192 = v174;
      *v193 = v175;
      *&v193[16] = v176[0];
      LOBYTE(v156[0]) = 0;
      v193[74] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50AE0, &qword_1BE0F15C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8, &qword_1BE0BB6A0);
      sub_1BD6F72FC();
      sub_1BD170E70();
      sub_1BE04F9A4();
      v176[1] = v183;
      *v177 = v184[0];
      *&v177[11] = *(v184 + 11);
      v173 = v179;
      v174 = v180;
      v175 = v181;
      v176[0] = v182;
      LOBYTE(v165) = 0;
      v178 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50AD0, &qword_1BE0F15B8);
      sub_1BD6F7270();
      sub_1BE04F9A4();
      sub_1BD0DDF10(v57, v59, v63, v64, v65, v66, v67, v68);
      v61, v69, v70, v71, v72, v73, v74, v75;
      v189 = *&v193[32];
      v190[0] = *&v193[48];
      *(v190 + 12) = *&v193[60];
      v185 = v191;
      v186 = v192;
      v187 = *v193;
      v188 = *&v193[16];
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1BD6F7840(v1, v22, type metadata accessor for FlightWidgetStatusMessageContent.ContentType);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v77 = v149;
      v76 = v150;
      v78 = v140;
      (*(v149 + 32))(v140, v22, v150);
      if (qword_1EBD36D50 != -1)
      {
        swift_once();
      }

      v79 = qword_1EBD50A08;
      v80 = sub_1BE04AE64();
      v81 = [v79 stringFromDate_];

      v82 = sub_1BE052434();
      v84 = v83;

      (*(v77 + 8))(v78, v76);
      *&v191 = v82;
      *(&v191 + 1) = v84;
      sub_1BD0DDEBC();
      v85 = sub_1BE0506C4();
      v87 = v86;
      v89 = v88;
      *&v173 = v85;
      *(&v173 + 1) = v86;
      v91 = (v90 & 1);
      *&v174 = v91;
      *(&v174 + 1) = v88;
      LOBYTE(v175) = 0;
      sub_1BD0D7F18(v85, v86, v90 & 1);
      sub_1BE048C84();
      sub_1BE04F9A4();
      *&v193[17] = v166;
      *&v193[33] = v167;
      LOBYTE(v152) = v193[0];
      v172 = 1;
      *&v193[49] = v168[0];
      *&v193[58] = *(v168 + 9);
      *&v193[1] = v165;
      v193[74] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50AE0, &qword_1BE0F15C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8, &qword_1BE0BB6A0);
      sub_1BD6F72FC();
      sub_1BD170E70();
      sub_1BE04F9A4();
      v176[1] = v183;
      *v177 = v184[0];
      *&v177[11] = *(v184 + 11);
      v173 = v179;
      v174 = v180;
      v175 = v181;
      v176[0] = v182;
      LOBYTE(v156[0]) = 0;
      v178 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50AD0, &qword_1BE0F15B8);
      sub_1BD6F7270();
      sub_1BE04F9A4();
      sub_1BD0DDF10(v85, v87, v91, v92, v93, v94, v95, v96);
      v89, v97, v98, v99, v100, v101, v102, v103;
      v189 = *&v193[32];
      v190[0] = *&v193[48];
      *(v190 + 12) = *&v193[60];
      v185 = v191;
      v186 = v192;
      v187 = *v193;
      v188 = *&v193[16];
      sub_1BD6F51C4(v148);
      goto LABEL_15;
    }

    sub_1BD6F51C4(v22);
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v27 = sub_1BD6F1A68();
    if (v28)
    {
      v29 = v27;
      v30 = v28;
      v147 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50A18, &qword_1BE0F1690) + 48);
      *&v191 = v29;
      *(&v191 + 1) = v30;
      sub_1BD0DDEBC();
      v31 = sub_1BE0506C4();
      v33 = v32;
      v35 = v34;
      v37 = (v36 & 1);
      *&v173 = v31;
      *(&v173 + 1) = v32;
      *&v174 = v37;
      *(&v174 + 1) = v34;
      LOBYTE(v175) = 1;
      sub_1BD0D7F18(v31, v32, v36 & 1);
      sub_1BE048C84();
      sub_1BE04F9A4();
      LOBYTE(v156[0]) = v193[0];
      LOBYTE(v152) = 1;
      v193[74] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50AE0, &qword_1BE0F15C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8, &qword_1BE0BB6A0);
      sub_1BD6F72FC();
      sub_1BD170E70();
      sub_1BE04F9A4();
      v176[1] = v183;
      *v177 = v184[0];
      *&v177[11] = *(v184 + 11);
      v173 = v179;
      v174 = v180;
      v175 = v181;
      v176[0] = v182;
      LOBYTE(v165) = 0;
      v178 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50AD0, &qword_1BE0F15B8);
      sub_1BD6F7270();
      sub_1BE04F9A4();
      sub_1BD0DDF10(v31, v33, v37, v38, v39, v40, v41, v42);
      v35, v43, v44, v45, v46, v47, v48, v49;
      v189 = *&v193[32];
      v190[0] = *&v193[48];
      *(v190 + 12) = *&v193[60];
      v185 = v191;
      v186 = v192;
      v187 = *v193;
      v188 = *&v193[16];
      v50 = v148;
      v51 = *(v149 + 8);
      v52 = v150;
      v51(&v148[v147], v150);
      v51(v50, v52);
LABEL_15:
      v132 = v190[0];
      v133 = v151;
      v151[4] = v189;
      v133[5] = v132;
      *(v133 + 92) = *(v190 + 12);
      v134 = v186;
      *v133 = v185;
      v133[1] = v134;
      v135 = v188;
      v133[2] = v187;
      v133[3] = v135;
      return;
    }

    goto LABEL_17;
  }

  v105 = v142;
  v104 = v143;
  v106 = v144;
  (v143[13])(v142, *MEMORY[0x1E69B80C0], v144);
  v107 = PKPassKitBundle();
  if (v107)
  {
    v108 = v107;
    v109 = sub_1BE04B6F4();
    v111 = v110;

    v104[1](v105, v106);
    *&v191 = v109;
    *(&v191 + 1) = v111;
    sub_1BD0DDEBC();
    v112 = sub_1BE0506C4();
    LOBYTE(v165) = v113 & 1;
    LOBYTE(v156[0]) = 1;
    *&v191 = v112;
    *(&v191 + 1) = v114;
    LOBYTE(v192) = v113 & 1;
    *(&v192 + 1) = v179;
    DWORD1(v192) = *(&v179 + 3);
    *(&v192 + 1) = v115;
    *&v193[32] = v175;
    *&v193[48] = v176[0];
    *&v193[59] = *(v176 + 11);
    *v193 = v173;
    *&v193[16] = v174;
    v193[75] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50AD0, &qword_1BE0F15B8);
    sub_1BD6F7270();
    sub_1BE04F9A4();
    goto LABEL_15;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_1BD6F670C(double a1)
{
  v2 = v1;
  v3 = sub_1BE050474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlightWidgetStatusMessageContent.ContentType(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130, &qword_1BE0C7180);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  sub_1BD6F7840(v2, v9, type metadata accessor for FlightWidgetStatusMessageContent.ContentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1BD6F51C4(v9);
  if (EnumCaseMultiPayload == 4)
  {
    v14 = *MEMORY[0x1E6980E28];
    v15 = sub_1BE050354();
    v16 = *(v15 - 8);
    (*(v16 + 104))(v12, v14, v15);
    (*(v16 + 56))(v12, 0, 1, v15);
  }

  else
  {
    v17 = sub_1BE050354();
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  }

  if (*(v2 + *(type metadata accessor for FlightWidgetStatusMessageContent(0) + 28)) >= 2u)
  {
    v18 = MEMORY[0x1E6980EF0];
  }

  else
  {
    v18 = MEMORY[0x1E6980F38];
  }

  (*(v4 + 104))(v6, *v18, v3);
  v19 = sub_1BE0503C4();
  (*(v4 + 8))(v6, v3);
  sub_1BD0DE53C(v12, &qword_1EBD49130, &qword_1BE0C7180);
  return v19;
}

uint64_t sub_1BD6F6A08(uint64_t a1)
{
  v1 = sub_1BE04AF64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1BE04AF54();
  sub_1BE04ADD4();
  sub_1BE04ADD4();
  sub_1BE04ADD4();
  sub_1BD6F78A8(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if (sub_1BE0522F4())
  {
    if (sub_1BE0522F4())
    {
      if (sub_1BE0522F4())
      {
        v14 = 27952;
      }

      else
      {
        v14 = 7155760;
      }
    }

    else
    {
      v14 = 0x6D3030206830;
    }
  }

  else
  {
    v14 = 0x6D303020683031;
  }

  v15 = *(v2 + 8);
  v15(v4, v1);
  v15(v7, v1);
  v15(v10, v1);
  v15(v13, v1);
  return v14;
}

uint64_t sub_1BD6F6CDC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1BE04F384();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1BD6F6D94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE04F294();
  *a1 = result;
  return result;
}

unint64_t sub_1BD6F6DEC()
{
  result = qword_1EBD50A60;
  if (!qword_1EBD50A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50A58, &qword_1BE0F1580);
    sub_1BD6F6E78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50A60);
  }

  return result;
}

unint64_t sub_1BD6F6E78()
{
  result = qword_1EBD50A68;
  if (!qword_1EBD50A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50A70, &qword_1BE0F1588);
    sub_1BD6F6F04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50A68);
  }

  return result;
}

unint64_t sub_1BD6F6F04()
{
  result = qword_1EBD50A78;
  if (!qword_1EBD50A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50A80, &qword_1BE0F1590);
    sub_1BD6F6FBC();
    sub_1BD0DE4F4(&qword_1EBD3A8B0, &qword_1EBD3A8B8, &qword_1BE0BB050, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50A78);
  }

  return result;
}

unint64_t sub_1BD6F6FBC()
{
  result = qword_1EBD50A88;
  if (!qword_1EBD50A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50A90, &qword_1BE0F1598);
    sub_1BD6F7074();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210, &qword_1BE0C5180, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50A88);
  }

  return result;
}

unint64_t sub_1BD6F7074()
{
  result = qword_1EBD50A98;
  if (!qword_1EBD50A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50AA0, &qword_1BE0F15A0);
    sub_1BD6F712C();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190, &unk_1BE0C5140, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50A98);
  }

  return result;
}

unint64_t sub_1BD6F712C()
{
  result = qword_1EBD50AA8;
  if (!qword_1EBD50AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50AB0, &qword_1BE0F15A8);
    sub_1BD6F71E4();
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0, &qword_1BE0B8230, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50AA8);
  }

  return result;
}

unint64_t sub_1BD6F71E4()
{
  result = qword_1EBD50AB8;
  if (!qword_1EBD50AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50AC0, &qword_1BE0F15B0);
    sub_1BD6F7270();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50AB8);
  }

  return result;
}

unint64_t sub_1BD6F7270()
{
  result = qword_1EBD50AC8;
  if (!qword_1EBD50AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50AD0, &qword_1BE0F15B8);
    sub_1BD6F72FC();
    sub_1BD170E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50AC8);
  }

  return result;
}

unint64_t sub_1BD6F72FC()
{
  result = qword_1EBD50AD8;
  if (!qword_1EBD50AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50AE0, &qword_1BE0F15C0);
    sub_1BD6F7388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50AD8);
  }

  return result;
}

unint64_t sub_1BD6F7388()
{
  result = qword_1EBD50AE8;
  if (!qword_1EBD50AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50AF0, &qword_1BE0F15C8);
    sub_1BD6F7440();
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0, &qword_1BE0C30D0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50AE8);
  }

  return result;
}

unint64_t sub_1BD6F7440()
{
  result = qword_1EBD50AF8;
  if (!qword_1EBD50AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50B00, &unk_1BE0F15D0);
    sub_1BD6F74F8();
    sub_1BD0DE4F4(&qword_1EBD50B08, &qword_1EBD50B10, &qword_1BE0F15E0, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50AF8);
  }

  return result;
}

unint64_t sub_1BD6F74F8()
{
  result = qword_1EBD42400;
  if (!qword_1EBD42400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD42408, &unk_1BE0CD458);
    sub_1BD33954C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD42400);
  }

  return result;
}

uint64_t sub_1BD6F7584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlightWidgetStatusMessageContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD6F7630(uint64_t a1)
{
  result = sub_1BD6F78A8(&qword_1EBD50B18, type metadata accessor for FlightWidgetStatusMessageView, &protocol conformance descriptor for FlightWidgetStatusMessageView);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for FlightWidgetStatusMessageView(uint64_t a1)
{
  result = qword_1EBD50B20;
  if (!qword_1EBD50B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD6F7718(uint64_t a1)
{
  result = type metadata accessor for FlightWidgetStatusMessageContent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BD6F7784()
{
  result = qword_1EBD50B30;
  if (!qword_1EBD50B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50B38, &unk_1BE0F1680);
    sub_1BD6F6DEC();
    sub_1BD6F78A8(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50B30);
  }

  return result;
}

uint64_t sub_1BD6F7840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD6F78A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *FlightWidgetPassSnapshotContent.snapshot.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t FlightWidgetPassSnapshotContent.__allocating_init(snapshot:context:)(uint64_t a1, char *a2)
{
  result = swift_allocObject();
  v5 = *a2;
  *(result + 24) = a1;
  *(result + 16) = v5;
  return result;
}

uint64_t FlightWidgetPassSnapshotContent.init(snapshot:context:)(uint64_t a1, char *a2)
{
  v3 = *a2;
  *(v2 + 24) = a1;
  *(v2 + 16) = v3;
  return v2;
}

uint64_t static FlightWidgetPassSnapshotContent.createContent(viewModel:context:)(uint64_t a1, char *a2)
{
  v2 = *a2;
  v3 = *(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_passSnapshot);
  v4 = swift_allocObject();
  *(v4 + 24) = v3;
  *(v4 + 16) = v2;
  v5 = v3;
  return v4;
}

uint64_t FlightWidgetPassSnapshotContent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1BD6F7A38()
{
  result = qword_1EBD50B40;
  if (!qword_1EBD50B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50B40);
  }

  return result;
}

id sub_1BD6F7A8C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a2;
  v7 = *(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_passSnapshot);
  v5 = swift_allocObject();
  *(v5 + 24) = v7;
  *(v5 + 16) = v4;
  *a3 = v5;

  return v7;
}

uint64_t FlightWidgetDetailsType.hashValue.getter()
{
  v1 = *v0;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v1);
  return sub_1BE053D64();
}

void static FlightWidgetDetailsContent.createContent(viewModel:context:)(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1;
    v12 = *a2;
    v14 = &off_1E80104D0;
    if ((*a2 & 0xFE) == 2)
    {
      v14 = &off_1E8010458;
    }

    v13 = *(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_extendedState);
    v15 = v14[v13];
    v16 = v15[2];
    if (v16)
    {
      v38 = *a2;
      v39 = a9;
      v37 = v10;
      v17 = MEMORY[0x1E69E7CC0];
      v18 = 32;
      v40 = v11;
      v41 = v15;
      do
      {
        v42 = *(v15 + v18);
        sub_1BD6F7DAC(&v42, v11, &v43);
        v29 = v43;
        v28 = v44;
        v31 = v45;
        v30 = v46;
        v33 = v47;
        v32 = v48;
        if (v44)
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v21 = v17;
          }

          else
          {
            v21 = sub_1BD1D8AA8(0, *(v17 + 2) + 1, 1, v17, v22, v23, v24, v25);
          }

          v35 = *(v21 + 2);
          v34 = *(v21 + 3);
          if (v35 >= v34 >> 1)
          {
            v21 = sub_1BD1D8AA8((v34 > 1), v35 + 1, 1, v21, v22, v23, v24, v25);
          }

          *(v21 + 2) = v35 + 1;
          v17 = v21;
          v36 = &v21[48 * v35];
          *(v36 + 4) = v29;
          *(v36 + 5) = v28;
          *(v36 + 6) = v31;
          *(v36 + 7) = v30;
          v36[64] = v33 & 1;
          *(v36 + 9) = v32;
          v11 = v40;
        }

        else
        {
          sub_1BD6F8578(v43, 0, v45, v46, v47, v48, v26, v27);
        }

        ++v18;
        --v16;
        v15 = v41;
      }

      while (v16);
      v41, v19, v20, v21, v22, v23, v24, v25;

      a9 = v39;
      v12 = v38;
    }

    else
    {
      v14[v13], a2, a3, a4, a5, a6, a7, a8;
      v17 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v17 = 0;
    v12 = 0;
  }

  *a9 = v17;
  *(a9 + 8) = v12;
}

void sub_1BD6F7DAC(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v93 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D178, &unk_1BE0C0AC0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v93 - v14;
  v16 = type metadata accessor for BoardingPassAttributes(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 + 16);
  if (!v20)
  {
    goto LABEL_4;
  }

  v98 = v12;
  v99 = v20;
  v100 = v19;
  v21 = *a1;
  sub_1BD6F86B4(a2 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_boardingPassAttributes, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1BD6F8724(v15);
LABEL_4:
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return;
  }

  sub_1BD6F878C(v15, v100);
  v93 = v9;
  if (v21 <= 3)
  {
    if (v21 <= 1)
    {
      if (v21)
      {
        v44 = [v99 departure];
        v45 = [v44 gate];

        if (v45)
        {
          v94 = sub_1BE052434();
          v47 = v46;
        }

        else
        {
          v94 = 0;
          v47 = 0;
        }

        v97 = v47;
        v29 = *MEMORY[0x1E69B96D8];
        v31 = "BEL_DEPARTURE_TIME";
        v32 = 0xD000000000000018;
      }

      else
      {
        v22 = [v99 departure];
        v23 = [v22 terminal];

        if (v23)
        {
          v94 = sub_1BE052434();
          v25 = v24;
        }

        else
        {
          v94 = 0;
          v25 = 0;
        }

        v97 = v25;
        v29 = *MEMORY[0x1E69B96E8];
        v31 = "FLIGHT_DETAIL_LABEL_GATE";
        v32 = 0xD00000000000001CLL;
      }

      goto LABEL_44;
    }

    if (v21 == 2)
    {
      v33 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_departureDate;
      v34 = OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_departureTimeZone;
      v35 = v99;
      sub_1BD3A9168(a2 + v33, a2 + v34);
      v94 = v36;
      v97 = v37;
      v29 = *MEMORY[0x1E69B96D0];
      v38 = "FLIGHT_DETAIL_LABEL_DEPARTURE_TIME";
LABEL_27:
      v31 = (v38 - 32);
      v32 = 0xD000000000000022;
      goto LABEL_44;
    }

    v26 = v100;
    v53 = v100[5];
    if (v53)
    {
      v94 = v100[4];
      v29 = *MEMORY[0x1E69B9558];
      v97 = v53;
      sub_1BE048C84();
      v54 = v99;
      v38 = "FLIGHT_DETAIL_LABEL_BOARDING_GROUP";
      goto LABEL_27;
    }

    v59 = v100[7];
    v60 = v99;
    if (v59)
    {
      v94 = v100[6];
      v29 = *MEMORY[0x1E69B9560];
      v97 = v59;
      sub_1BE048C84();
      v61 = v60;
      v31 = "FLIGHT_DETAIL_LABEL_SEAT_NUMBER";
LABEL_43:
      v32 = 0xD000000000000021;
      goto LABEL_44;
    }

LABEL_40:
    sub_1BD3AA664(v26);
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    return;
  }

  if (v21 > 5)
  {
    if (v21 != 6)
    {
      v55 = [v99 arrival];
      v56 = [v55 baggageClaim];

      if (v56)
      {
        v94 = sub_1BE052434();
        v58 = v57;
      }

      else
      {
        v94 = 0;
        v58 = 0;
      }

      v97 = v58;
      v31 = "FlightWidgetPassSnapshotContent";
      v29 = *MEMORY[0x1E69B94F8];
      goto LABEL_43;
    }

    v39 = v99;
    if ([v39 state] == 3 || (v40 = objc_msgSend(v39, sel_arrival), v41 = objc_msgSend(v40, sel_gate), v40, !v41))
    {
      v94 = 0;
      v43 = 0;
    }

    else
    {
      v94 = sub_1BE052434();
      v43 = v42;
    }

    v97 = v43;
    v29 = *MEMORY[0x1E69B9478];
    v31 = "BEL_BAGGAGE_CLAIM";
    v32 = 0xD000000000000020;
  }

  else
  {
    if (v21 == 4)
    {
      v27 = v99;
      v26 = v100;
      v28 = v100[3];
      if (v28)
      {
        v94 = v100[2];
        v29 = *MEMORY[0x1E69B9BD8];
        v97 = v28;
        sub_1BE048C84();
        v30 = v27;
        v31 = "BEL_ARRIVAL_TERMINAL";
        v32 = 0xD00000000000001FLL;
        goto LABEL_44;
      }

      goto LABEL_40;
    }

    v48 = v99;
    if ([v48 state] == 3 || (v49 = objc_msgSend(v48, sel_arrival), v50 = objc_msgSend(v49, sel_terminal), v49, !v50))
    {
      v94 = 0;
      v52 = 0;
    }

    else
    {
      v94 = sub_1BE052434();
      v52 = v51;
    }

    v97 = v52;
    v29 = *MEMORY[0x1E69B9488];
    v31 = "BEL_ARRIVAL_GATE";
    v32 = 0xD000000000000024;
  }

LABEL_44:
  v96 = v32;
  v62 = *MEMORY[0x1E69B80C0];
  v63 = *(v7 + 104);
  v64 = v98;
  v63(v98, v62, v6);
  v65 = v29;
  v66 = PKPassKitBundle();
  if (!v66)
  {
    __break(1u);
    goto LABEL_52;
  }

  v67 = v66;
  v68 = sub_1BE04B6F4();
  v95 = v69;
  v96 = v68;
  (v31 | 0x8000000000000000), v69, v70, v71, v72, v73, v74, v75;

  v76 = *(v7 + 8);
  v76(v64, v6);
  v77 = v97;
  if (!v97)
  {
    v88 = v93;
    v63(v93, v62, v6);
    v89 = PKPassKitBundle();
    if (v89)
    {
      v90 = v89;
      v87 = sub_1BE04B6F4();
      v86 = v91;

      v76(v88, v6);
      sub_1BD3AA664(v100);
      v85 = 0;
      v77 = v97;
      goto LABEL_49;
    }

LABEL_52:
    __break(1u);
    return;
  }

  sub_1BE048C84();

  sub_1BD3AA664(v100);
  v85 = v77;
  v86 = v77;
  v87 = v94;
LABEL_49:
  v85, v78, v79, v80, v81, v82, v83, v84;
  v92 = v95;
  *a3 = v96;
  *(a3 + 8) = v92;
  *(a3 + 16) = v87;
  *(a3 + 24) = v86;
  *(a3 + 32) = v77 == 0;
  *(a3 + 40) = v65;
}

void sub_1BD6F8578(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  if (a2)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    a4, v9, v10, v11, v12, v13, v14, v15;
  }
}

unint64_t sub_1BD6F85D8()
{
  result = qword_1EBD50B48;
  if (!qword_1EBD50B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50B48);
  }

  return result;
}

unint64_t sub_1BD6F8630()
{
  result = qword_1EBD50B50;
  if (!qword_1EBD50B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50B50);
  }

  return result;
}

uint64_t sub_1BD6F86B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D178, &unk_1BE0C0AC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD6F8724(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D178, &unk_1BE0C0AC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD6F878C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BoardingPassAttributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FlightWidgetArrivedContent.init(flight:destinationTemperature:destinationWeatherSymbol:destinationWeatherCondition:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v140 = a5;
  v141 = a2;
  v142 = a4;
  v133 = a3;
  v139 = a6;
  v7 = sub_1BE04BD74();
  v131 = *(v7 - 8);
  v132 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v130 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48448, &qword_1BE0F18A0);
  v128 = *(v9 - 8);
  v129 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v127 = &v114 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50B58, &qword_1BE0F18A8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v126 = &v114 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50B60, &qword_1BE0F18B0);
  v124 = *(v13 - 8);
  v125 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v121 = &v114 - v14;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50B68, &qword_1BE0F18B8);
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v120 = &v114 - v15;
  v119 = sub_1BE04A934();
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v17 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50B70, &unk_1BE0F18C0);
  v117 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v20 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v134 = &v114 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44018, &unk_1BE0D1200);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v114 - v24;
  v26 = sub_1BE04B564();
  v136 = *(v26 - 8);
  v137 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44010, &qword_1BE0F18D0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v114 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A090, &unk_1BE0DC030);
  v33 = *(v32 - 8);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v138 = &v114 - v35;
  if ([a1 state] != 4 && objc_msgSend(a1, sel_state) != 8)
  {

    v142, v60, v61, v62, v63, v64, v65, v66;
    sub_1BD0DE53C(v140, &qword_1EBD44018, &unk_1BE0D1200);
    v58 = &qword_1EBD44010;
    v59 = &qword_1BE0F18D0;
    v46 = v141;
    goto LABEL_10;
  }

  v36 = v141;
  sub_1BD0DE19C(v141, v31, &qword_1EBD44010, &qword_1BE0F18D0);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {

    v142, v37, v38, v39, v40, v41, v42, v43;
    sub_1BD0DE53C(v140, &qword_1EBD44018, &unk_1BE0D1200);
    v44 = &qword_1EBD44010;
    v45 = &qword_1BE0F18D0;
    sub_1BD0DE53C(v36, &qword_1EBD44010, &qword_1BE0F18D0);
    v46 = v31;
LABEL_8:
    v58 = v44;
    v59 = v45;
LABEL_10:
    result = sub_1BD0DE53C(v46, v58, v59);
LABEL_11:
    v68 = v139;
    v139[1] = 0u;
    v68[2] = 0u;
    *v68 = 0u;
    return result;
  }

  v116 = v28;
  v47 = v138;
  (*(v33 + 32))(v138, v31, v32);
  if (!v142)
  {

    sub_1BD0DE53C(v140, &qword_1EBD44018, &unk_1BE0D1200);
    sub_1BD0DE53C(v36, &qword_1EBD44010, &qword_1BE0F18D0);
    result = (*(v33 + 8))(v47, v32);
    goto LABEL_11;
  }

  v115 = v32;
  v114 = v33;
  v48 = v140;
  sub_1BD0DE19C(v140, v25, &qword_1EBD44018, &unk_1BE0D1200);
  v49 = v136;
  v50 = v137;
  if ((*(v136 + 48))(v25, 1, v137) == 1)
  {

    v142, v51, v52, v53, v54, v55, v56, v57;
    v44 = &qword_1EBD44018;
    v45 = &unk_1BE0D1200;
    sub_1BD0DE53C(v48, &qword_1EBD44018, &unk_1BE0D1200);
    sub_1BD0DE53C(v36, &qword_1EBD44010, &qword_1BE0F18D0);
    (*(v114 + 8))(v138, v115);
    v46 = v25;
    goto LABEL_8;
  }

  (*(v49 + 32))(v116, v25, v50);
  sub_1BE04B054();
  sub_1BD58F1D8();
  sub_1BE04A8A4();
  sub_1BE04A924();
  v70 = v134;
  v69 = v135;
  MEMORY[0x1BFB37960](v17, v135);
  v118[1](v17, v119);
  v71 = v117;
  v72 = *(v117 + 8);
  v119 = v117 + 8;
  v118 = v72;
  (v72)(v20, v69);
  sub_1BD6F94E4();
  v73 = v121;
  sub_1BE04A1E4();
  v74 = v126;
  (*(v71 + 16))(v126, v70, v69);
  (*(v71 + 56))(v74, 0, 1, v69);
  v75 = v127;
  sub_1BE04A8E4();
  v76 = v120;
  sub_1BE04A164();
  v128[1](v75, v129);
  sub_1BD0DE53C(v74, &qword_1EBD50B58, &qword_1BE0F18A8);
  (*(v124 + 8))(v73, v125);
  sub_1BD6F9530();
  v77 = v123;
  sub_1BE04A204();
  (*(v122 + 8))(v76, v77);
  v78 = v143;
  v79 = v144;
  v143 = sub_1BE04B544();
  v144 = v80;
  MEMORY[0x1BFB3F610](32, 0xE100000000000000);
  MEMORY[0x1BFB3F610](v78, v79);
  v79, v81, v82, v83, v84, v85, v86, v87;
  v128 = v144;
  v129 = v143;
  v88 = [a1 arrival];
  v89 = [v88 airport];

  v90 = [v89 city];
  if (v90 || (v90 = [v89 name]) != 0)
  {
    v91 = v89;
  }

  else
  {
    v91 = v89;
    v90 = [v89 code];
  }

  v92 = v114;
  v93 = v90;
  v94 = sub_1BE052434();
  v96 = v95;

  v97 = v130;
  v98 = v131;
  v99 = v132;
  (*(v131 + 104))(v130, *MEMORY[0x1E69B80C0], v132);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_1BE0B69E0;
  *(v100 + 56) = MEMORY[0x1E69E6158];
  *(v100 + 64) = sub_1BD110550();
  *(v100 + 32) = v94;
  *(v100 + 40) = v96;
  v101 = sub_1BE04B714();
  v103 = v102;

  v100, v104, v105, v106, v107, v108, v109, v110;
  sub_1BD0DE53C(v140, &qword_1EBD44018, &unk_1BE0D1200);
  sub_1BD0DE53C(v141, &qword_1EBD44010, &qword_1BE0F18D0);
  (*(v98 + 8))(v97, v99);
  (v118)(v134, v135);
  (*(v136 + 8))(v116, v137);
  result = (*(v92 + 8))(v138, v115);
  v111 = v139;
  *v139 = v101;
  v111[1] = v103;
  v112 = v142;
  v111[2] = v133;
  v111[3] = v112;
  v113 = v128;
  v111[4] = v129;
  v111[5] = v113;
  return result;
}

uint64_t FlightWidgetArrivedContent.title.getter()
{
  v1 = *v0;
  sub_1BE048C84();
  return v1;
}

void static FlightWidgetArrivedContent.createContent(viewModel:context:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = (a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent);
  v3 = *(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent);
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  sub_1BD3AA614(v3, v4, v5, v6, v7, v8);
}

void __swiftcall FlightWidgetArrivedContent.init(welcomeMessage:conditionsSymbol:weatherDescription:)(PassKitUI::FlightWidgetArrivedContent *__return_ptr retstr, Swift::String welcomeMessage, Swift::String conditionsSymbol, Swift::String weatherDescription)
{
  retstr->welcomeMessage = welcomeMessage;
  retstr->conditionsSymbol = conditionsSymbol;
  retstr->weatherDescription = weatherDescription;
}

void sub_1BD6F94B8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = (a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent);
  v3 = *(a1 + OBJC_IVAR____TtC9PassKitUI21FlightWidgetViewModel_arrivedContent);
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  sub_1BD3AA614(v3, v4, v5, v6, v7, v8);
}

unint64_t sub_1BD6F94E4()
{
  result = qword_1EBD48450;
  if (!qword_1EBD48450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD48450);
  }

  return result;
}

unint64_t sub_1BD6F9530()
{
  result = qword_1EBD50B78;
  if (!qword_1EBD50B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50B68, &qword_1BE0F18B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50B78);
  }

  return result;
}

unint64_t sub_1BD6F9598()
{
  result = qword_1EBD50B80;
  if (!qword_1EBD50B80)
  {
    type metadata accessor for FlightWidgetArrivedView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50B80);
  }

  return result;
}

uint64_t sub_1BD6F9674()
{
  v1 = type metadata accessor for FlightWidgetProgressView(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = 0x403A000000000000;
  sub_1BD0DBFDC();
  sub_1BE04E524();
  *&v3[v1[6]] = 0x4044000000000000;
  v12[0] = 0x402A000000000000;
  sub_1BE04E524();
  *&v3[v1[8]] = 0x403E000000000000;
  v12[0] = 0x4044000000000000;
  sub_1BE04E524();
  v12[0] = 0x4046800000000000;
  sub_1BE04E524();
  *&v3[v1[11]] = 0x4059000000000000;
  v4 = *(v0 + 208);
  *(v3 + 12) = *(v0 + 192);
  *(v3 + 13) = v4;
  *(v3 + 14) = *(v0 + 224);
  *(v3 + 30) = *(v0 + 240);
  v5 = *(v0 + 144);
  *(v3 + 8) = *(v0 + 128);
  *(v3 + 9) = v5;
  v6 = *(v0 + 176);
  *(v3 + 10) = *(v0 + 160);
  *(v3 + 11) = v6;
  v7 = *(v0 + 80);
  *(v3 + 4) = *(v0 + 64);
  *(v3 + 5) = v7;
  v8 = *(v0 + 112);
  *(v3 + 6) = *(v0 + 96);
  *(v3 + 7) = v8;
  v9 = *(v0 + 16);
  *v3 = *v0;
  *(v3 + 1) = v9;
  v10 = *(v0 + 48);
  *(v3 + 2) = *(v0 + 32);
  *(v3 + 3) = v10;
  sub_1BD0DBDF0(v0, v12);
  sub_1BD6FA11C(&qword_1EBD385B0, type metadata accessor for FlightWidgetProgressView, &protocol conformance descriptor for FlightWidgetProgressView);
  return sub_1BE0518D4();
}

uint64_t FlightWidgetElementContent.createView()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v4 + 16))(v6, v2, a1, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 40))(v6, AssociatedTypeWitness, AssociatedConformanceWitness);
  return sub_1BE0518D4();
}

uint64_t sub_1BD6F99CC()
{
  v1 = type metadata accessor for FlightWidgetPreflightView(0);
  MEMORY[0x1EEE9AC00](v1);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = sub_1BD6FA11C(&qword_1EBD4DAB0, type metadata accessor for FlightWidgetPreflightView, &protocol conformance descriptor for FlightWidgetPreflightView);
  v7 = *(v6 + 40);
  sub_1BE048C84();
  sub_1BE048C84();
  v7(v9, v1, v6);
  sub_1BD6FA11C(&qword_1EBD43D08, type metadata accessor for FlightWidgetPreflightView, &protocol conformance descriptor for FlightWidgetPreflightView);
  return sub_1BE0518D4();
}

uint64_t sub_1BD6F9B0C()
{
  v1 = type metadata accessor for FlightWidgetStatusSymbolAndMessageView(0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1BD6FA0B4(v0, &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FlightWidgetStatusSymbolAndMessageContent);
  sub_1BD6FA11C(&qword_1EBD50B90, type metadata accessor for FlightWidgetStatusSymbolAndMessageView, &protocol conformance descriptor for FlightWidgetStatusSymbolAndMessageView);
  return sub_1BE0518D4();
}

uint64_t sub_1BD6F9BE4()
{
  sub_1BD469CB4();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE0518D4();
}

uint64_t sub_1BD6F9C54()
{
  v1 = type metadata accessor for FlightWidgetStatusMessageView(0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1BD6FA0B4(v0, &v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FlightWidgetStatusMessageContent);
  sub_1BD6FA11C(&qword_1EBD50B18, type metadata accessor for FlightWidgetStatusMessageView, &protocol conformance descriptor for FlightWidgetStatusMessageView);
  return sub_1BE0518D4();
}

uint64_t sub_1BD6F9D2C()
{
  sub_1BD469E70();
  sub_1BE048964();
  return sub_1BE0518D4();
}

uint64_t sub_1BD6F9D7C()
{
  sub_1BD6CAA74();
  sub_1BE048C84();
  return sub_1BE0518D4();
}

uint64_t sub_1BD6F9DD4()
{
  v1 = type metadata accessor for FlightWidgetArrivedView(0);
  MEMORY[0x1EEE9AC00](v1);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v8 = sub_1BD6FA11C(&qword_1EBD50B80, type metadata accessor for FlightWidgetArrivedView, &protocol conformance descriptor for FlightWidgetArrivedView);
  v9 = *(v8 + 40);
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();
  v9(v11, v1, v8);
  sub_1BD6FA11C(&qword_1EBD50B88, type metadata accessor for FlightWidgetArrivedView, &protocol conformance descriptor for FlightWidgetArrivedView);
  return sub_1BE0518D4();
}

uint64_t AnyFlightWidgetElementView.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v8);
  v10 = sub_1BE0518D4();
  result = (*(v7 + 8))(a1, a2);
  *a4 = v10;
  return result;
}

uint64_t sub_1BD6FA0B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD6FA11C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 FlightWidgetStatusSymbolView.init(content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = v2;
  return result;
}

uint64_t FlightWidgetStatusSymbolView.content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  sub_1BE048C84();

  return sub_1BE048964();
}

double FlightWidgetStatusSymbolView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50B98, &qword_1BE0F1A40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v32[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50BA0, &qword_1BE0F1A48);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32[-v7];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50BA8, &qword_1BE0F1A50);
  MEMORY[0x1EEE9AC00](v36);
  v10 = &v32[-v9];
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  sub_1BE048C84();
  v35 = sub_1BE051574();
  if (v12 == 2)
  {
    v13 = sub_1BE0503E4();
    KeyPath = swift_getKeyPath();
    goto LABEL_5;
  }

  v13 = sub_1BE050464();
  KeyPath = swift_getKeyPath();
  if (v12)
  {
LABEL_5:
    v18 = sub_1BE04E354();
    (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
    goto LABEL_6;
  }

  v33 = *MEMORY[0x1E697DBA8];
  v15 = sub_1BE04E354();
  v16 = *(v15 - 8);
  v34 = a1;
  v17 = v16;
  (*(v16 + 104))(v5, v33, v15);
  (*(v17 + 56))(v5, 0, 1, v15);
  a1 = v34;
LABEL_6:
  sub_1BD0DE204(v5, v8 + *(v6 + 36), &qword_1EBD50B98, &qword_1BE0F1A40);
  *v8 = v35;
  v8[1] = KeyPath;
  v8[2] = v13;
  v8[3] = v11;
  sub_1BE048964();
  v19 = sub_1BE0501D4();
  sub_1BE04E1F4();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_1BD0DE204(v8, v10, &qword_1EBD50BA0, &qword_1BE0F1A48);
  v28 = &v10[*(v36 + 36)];
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  sub_1BE051CF4();
  sub_1BE04E5E4();
  sub_1BD0DE204(v10, a1, &qword_1EBD50BA8, &qword_1BE0F1A50);
  v29 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50BB0, &qword_1BE0F1A88) + 36));
  v30 = v38;
  *v29 = v37;
  v29[1] = v30;
  result = *&v39;
  v29[2] = v39;
  return result;
}

uint64_t sub_1BD6FA56C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  sub_1BE048C84();

  return sub_1BE048964();
}

__n128 sub_1BD6FA5B8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = v2;
  return result;
}

__n128 FlightWidgetStatusSymbolAndMessageView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50BB8, &qword_1BE0F1A90);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - v5;
  *v6 = sub_1BE04F504();
  *(v6 + 1) = 0x4008000000000000;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50BC0, &qword_1BE0F1A98);
  sub_1BD6FA7B4(v1, &v6[*(v7 + 44)]);
  KeyPath = swift_getKeyPath();
  v9 = &v6[*(v4 + 44)];
  *v9 = KeyPath;
  v9[1] = 0x3FE0000000000000;
  type metadata accessor for FlightWidgetStatusSymbolAndMessageContent(0);
  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0DE204(v6, a1, &qword_1EBD50BB8, &qword_1BE0F1A90);
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50BC8, &qword_1BE0F1AD0) + 36);
  v11 = v14[5];
  *(v10 + 64) = v14[4];
  *(v10 + 80) = v11;
  *(v10 + 96) = v14[6];
  v12 = v14[1];
  *v10 = v14[0];
  *(v10 + 16) = v12;
  result = v14[3];
  *(v10 + 32) = v14[2];
  *(v10 + 48) = result;
  return result;
}

void sub_1BD6FA7B4(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50C20, &unk_1BE0F1C50);
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD509C8, &qword_1BE0F1380);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - v6;
  v8 = type metadata accessor for FlightWidgetStatusMessageContent(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50C28, &qword_1BE0F1C60);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v18 = a1[1];
  v36 = *a1;
  v19 = a1[2];
  LODWORD(v20) = *(a1 + 24);
  v21 = type metadata accessor for FlightWidgetStatusSymbolAndMessageContent(0);
  sub_1BD0DE19C(a1 + *(v21 + 20), v7, &qword_1EBD509C8, &qword_1BE0F1380);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v22 = v36;
    sub_1BD6FB1DC(v36, v18);
    sub_1BD0DE53C(v7, &qword_1EBD509C8, &qword_1BE0F1380);
    (*(v37 + 56))(v17, 1, 1, v38);
  }

  else
  {
    sub_1BD6FB264(v7, v11, type metadata accessor for FlightWidgetStatusMessageContent);
    v23 = v11;
    v24 = v35;
    sub_1BD6FB264(v23, v35, type metadata accessor for FlightWidgetStatusMessageContent);
    v25 = v38;
    *(v24 + *(v38 + 36)) = 0x3FF0000000000000;
    sub_1BD0DE204(v24, v17, &qword_1EBD50C20, &unk_1BE0F1C50);
    (*(v37 + 56))(v17, 0, 1, v25);
    v22 = v36;
    sub_1BD6FB1DC(v36, v18);
  }

  if (v18)
  {
    v20 = v20;
  }

  else
  {
    v20 = 0;
  }

  if (v18)
  {
    v26 = v19;
  }

  else
  {
    v26 = 0;
  }

  if (v18)
  {
    v27 = v22;
  }

  else
  {
    v27 = 0;
  }

  sub_1BD0DE19C(v17, v14, &qword_1EBD50C28, &qword_1BE0F1C60);
  v28 = v39;
  *v39 = v27;
  v28[1] = v18;
  v28[2] = v26;
  *(v28 + 24) = v20;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50C30, &qword_1BE0F1C68);
  sub_1BD0DE19C(v14, v28 + *(v29 + 48), &qword_1EBD50C28, &qword_1BE0F1C60);
  sub_1BD6FB1DC(v27, v18);
  sub_1BD0DE53C(v17, &qword_1EBD50C28, &qword_1BE0F1C60);
  sub_1BD0DE53C(v14, &qword_1EBD50C28, &qword_1BE0F1C60);
  sub_1BD6FB220(v27, v18, v26, v20, v30, v31, v32, v33);
}

uint64_t sub_1BD6FABFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlightWidgetStatusSymbolAndMessageContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD6FAC64(uint64_t a1)
{
  result = sub_1BD469CB4();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BD6FACF0(uint64_t a1)
{
  result = sub_1BD6FAD48(&qword_1EBD50B90, type metadata accessor for FlightWidgetStatusSymbolAndMessageView, &protocol conformance descriptor for FlightWidgetStatusSymbolAndMessageView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BD6FAD48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for FlightWidgetStatusSymbolAndMessageView(uint64_t a1)
{
  result = qword_1EBD50BD0;
  if (!qword_1EBD50BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD6FAE30(uint64_t a1)
{
  result = type metadata accessor for FlightWidgetStatusSymbolAndMessageContent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BD6FAE9C()
{
  result = qword_1EBD50BE0;
  if (!qword_1EBD50BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50BB0, &qword_1BE0F1A88);
    sub_1BD6FAF28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50BE0);
  }

  return result;
}

unint64_t sub_1BD6FAF28()
{
  result = qword_1EBD50BE8;
  if (!qword_1EBD50BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50BA8, &qword_1BE0F1A50);
    sub_1BD6FAFB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50BE8);
  }

  return result;
}

unint64_t sub_1BD6FAFB4()
{
  result = qword_1EBD50BF0;
  if (!qword_1EBD50BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50BA0, &qword_1BE0F1A48);
    sub_1BD3A324C();
    sub_1BD0DE4F4(&unk_1EBD51150, &qword_1EBD50BF8, &qword_1BE0F28A0, MEMORY[0x1E6980758]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50BF0);
  }

  return result;
}

unint64_t sub_1BD6FB06C()
{
  result = qword_1EBD50C00;
  if (!qword_1EBD50C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50BC8, &qword_1BE0F1AD0);
    sub_1BD6FB0F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50C00);
  }

  return result;
}

unint64_t sub_1BD6FB0F8()
{
  result = qword_1EBD50C08;
  if (!qword_1EBD50C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50BB8, &qword_1BE0F1A90);
    sub_1BD0DE4F4(&qword_1EBD50C10, &qword_1EBD50C18, &unk_1BE0F1C40, MEMORY[0x1E69817F8]);
    sub_1BD0DE4F4(&qword_1EBD3A8B0, &qword_1EBD3A8B8, &qword_1BE0BB050, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50C08);
  }

  return result;
}

uint64_t sub_1BD6FB1DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1BE048C84();

    return sub_1BE048964();
  }

  return result;
}

void sub_1BD6FB220(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  if (a2)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;

    a3, v9, v10, v11, v12, v13, v14, v15;
  }
}

uint64_t sub_1BD6FB264(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1BD6FB2CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for PaymentOfferSetupProvisioningMetadata(0);
  sub_1BD0DE19C(v0 + *(v4 + 24), v3, &unk_1EBD3CF70, &qword_1BE0BA000);
  v5 = *(v0 + *(v4 + 28));
  v6 = sub_1BE052404();
  v7 = sub_1BE04AA64();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(v3, 1, v7) != 1)
  {
    v9 = sub_1BE04A9C4();
    (*(v8 + 8))(v3, v7);
  }

  v10 = objc_allocWithZone(MEMORY[0x1E69B8BF8]);
  v11 = sub_1BE052404();
  v12 = [v10 initWithSharingInstanceIdentifier:v6 passThumbnailImageURL:v9 criteriaIdentifier:v11 didSelectOffer:v5];

  if (!v12)
  {
    __break(1u);
  }
}

uint64_t sub_1BD6FB484(uint64_t a1, uint64_t a2)
{
  sub_1BD0DE19C(a1, v42, &qword_1EBD43CF0, &unk_1BE0CE1F0);
  v3 = v43;
  if (v43)
  {
    v4 = *&v42[0];
    v5 = sub_1BE04A844();

    swift_beginAccess();
    v6 = *(a2 + 16);
    *(a2 + 16) = v5;
    v7 = *(a2 + 24);
    *(a2 + 24) = 1;
LABEL_10:
    sub_1BD6FC040(v6, v7);
    return v3;
  }

  sub_1BD1B6140(v42, v41);
  sub_1BD038CD0(v41, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40E70, &unk_1BE0D6840);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v41, v8, v9, v10, v11, v12, v13, v14);
    return v3;
  }

  if (!(v39 >> 62))
  {
    result = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_13:
    __swift_destroy_boxed_opaque_existential_0(v41, v8, v9, v10, v11, v12, v13, v14);
    v39, v32, v33, v34, v35, v36, v37, v38;
    return v3;
  }

  result = sub_1BE053704();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((v39 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x1BFB40900](0);
    goto LABEL_9;
  }

  if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v39 + 32);
LABEL_9:
    v24 = v16;
    v39, v17, v18, v19, v20, v21, v22, v23;
    __swift_destroy_boxed_opaque_existential_0(v41, v25, v26, v27, v28, v29, v30, v31);
    swift_beginAccess();
    v6 = *(a2 + 16);
    *(a2 + 16) = v24;
    v7 = *(a2 + 24);
    *(a2 + 24) = 0;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_1BD6FB624(void (*a1)(id, void), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  if (v6 == 255)
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69BBBC8] code:-9005 userInfo:0];
    v8 = 1;
  }

  else
  {
    v7 = v5;
    v8 = v6;
  }

  sub_1BD6FC028(v5, v6);
  a1(v7, v8 & 1);
  sub_1BD528638(v7);
}

id sub_1BD6FB724()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaymentOfferSetupProvisioningSheet.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD6FB818(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = objc_allocWithZone(type metadata accessor for PaymentOfferSetupProvisioningSheet.Coordinator());
  v9 = v3;
  v10 = v4;
  v11 = v7;
  sub_1BE048964();
  v12 = sub_1BD6FBA00(v9, v10, v11, v5, v6);

  v6, v13, v14, v15, v16, v17, v18, v19;
  *a1 = v12;
}

uint64_t sub_1BD6FB8BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD6FB9AC();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1BD6FB920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD6FB9AC();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1BD6FB984(uint64_t a1)
{
  sub_1BD6FB9AC();
  sub_1BE0500A4();
  __break(1u);
}

unint64_t sub_1BD6FB9AC()
{
  result = qword_1EBD50C60;
  if (!qword_1EBD50C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50C60);
  }

  return result;
}

id sub_1BD6FBA00(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1BE04BA14();
  v88 = *(v11 - 8);
  v89 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1BE04B9C4();
  v14 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v85 = v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE04BAC4();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v86 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &v5[OBJC_IVAR____TtCV9PassKitUI34PaymentOfferSetupProvisioningSheet11Coordinator_flowDelegate];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v5[OBJC_IVAR____TtCV9PassKitUI34PaymentOfferSetupProvisioningSheet11Coordinator_credential] = a1;
  *&v5[OBJC_IVAR____TtCV9PassKitUI34PaymentOfferSetupProvisioningSheet11Coordinator_paymentOffersController] = a2;
  *&v5[OBJC_IVAR____TtCV9PassKitUI34PaymentOfferSetupProvisioningSheet11Coordinator_navigationController] = a3;
  v84 = v5;
  v19 = &v5[OBJC_IVAR____TtCV9PassKitUI34PaymentOfferSetupProvisioningSheet11Coordinator_completion];
  v82 = a4;
  *v19 = a4;
  *(v19 + 1) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290, &qword_1BE0CC120);
  v20 = sub_1BE04C384();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v81 = xmmword_1BE0B69E0;
  *(v23 + 16) = xmmword_1BE0B69E0;
  *(v23 + v22) = a1;
  (*(v21 + 104))(v23 + v22, *MEMORY[0x1E69B82A8], v20);
  sub_1BE04C3D4();
  swift_allocObject();
  v24 = a1;
  v25 = a2;
  v80[1] = a3;
  v83 = a5;
  sub_1BE048964();
  v26 = sub_1BE04C394();
  v27 = [objc_opt_self() sharedService];
  v28 = [objc_allocWithZone(MEMORY[0x1E69B8D48]) initWithWebService:v27 paymentOffersController:v25];

  (*(v14 + 104))(v85, *MEMORY[0x1E69B7FB8], v87);
  v29 = *MEMORY[0x1E69B7FE0];
  v30 = sub_1BE04B9D4();
  (*(*(v30 - 8) + 104))(v13, v29, v30);
  (*(v88 + 104))(v13, *MEMORY[0x1E69B8020], v89);
  result = sub_1BE04BA94();
  if (v28)
  {
    sub_1BE04BC44();
    swift_allocObject();
    v32 = v28;
    v33 = sub_1BE04BC24();
    type metadata accessor for ProvisioningInAppPushProvFlowSection();
    v34 = swift_allocObject();
    v34[5] = 0;
    swift_unknownObjectWeakInit();
    v34[6] = 0xD000000000000018;
    v34[7] = 0x80000001BE124910;
    v34[8] = 0;
    v34[2] = v33;
    v34[3] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD38570, &unk_1BE0B6A50);
    v35 = swift_allocObject();
    *(v35 + 16) = v81;
    *(v35 + 32) = v34;
    *(v35 + 40) = &off_1F3BA8BB8;
    v36 = objc_allocWithZone(type metadata accessor for UIFlowManager());
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    v37 = sub_1BD3986F8(v35);
    *(*&v37[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_root] + 104) = &off_1F3BAE178;
    swift_unknownObjectWeakAssign();
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = -1;
    v39 = &v37[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
    v40 = *&v37[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler];
    v41 = *&v37[OBJC_IVAR____TtC9PassKitUI13UIFlowManager_resultHandler + 8];
    *v39 = sub_1BD6FC014;
    v39[1] = v38;
    sub_1BE048964();
    sub_1BD1107D8(v40, v41);
    v42 = swift_allocObject();
    v42[2] = v82;
    v42[3] = v83;
    v42[4] = v38;
    v42[5] = v37;
    sub_1BE048964();
    sub_1BE048964();
    v43 = v37;
    sub_1BD398318(sub_1BD6FC01C, v42);
    v26, v44, v45, v46, v47, v48, v49, v50;

    v33, v51, v52, v53, v54, v55, v56, v57;
    v34, v58, v59, v60, v61, v62, v63, v64;

    v38, v65, v66, v67, v68, v69, v70, v71;
    v42, v72, v73, v74, v75, v76, v77, v78;
    v79 = type metadata accessor for PaymentOfferSetupProvisioningSheet.Coordinator();
    v90.receiver = v84;
    v90.super_class = v79;
    return objc_msgSendSuper2(&v90, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD6FC028(id a1, char a2)
{
  if (a2 != -1)
  {
    return sub_1BD52862C(a1);
  }

  return a1;
}

void sub_1BD6FC040(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_1BD528638(a1);
  }
}

uint64_t type metadata accessor for PaymentOfferSelectorOverlay(uint64_t a1)
{
  result = qword_1EBD50C68;
  if (!qword_1EBD50C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD6FC0DC(uint64_t a1)
{
  sub_1BD6FC33C(319, &qword_1EBD4A468, type metadata accessor for PaymentOfferSelectorModel, MEMORY[0x1E6981790]);
  if (v1 <= 0x3F)
  {
    sub_1BD6FC3A0(319, &qword_1EBD50C78, &qword_1EBD50C80, &qword_1BE0F1E30, MEMORY[0x1E6981948]);
    if (v2 <= 0x3F)
    {
      sub_1BD6FC33C(319, &qword_1EBD3AB88, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1BD10EE48();
        if (v4 <= 0x3F)
        {
          sub_1BD6FC3A0(319, &qword_1EBD50C88, &qword_1EBD50C90, &unk_1BE0F1E38, MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            sub_1BD6FC3A0(319, &qword_1EBD39358, &unk_1EBD45160, &qword_1BE0C25A0, MEMORY[0x1E6981790]);
            if (v6 <= 0x3F)
            {
              sub_1BD6FC3A0(319, &qword_1EBD47B10, &qword_1EBD3A5C8, &qword_1BE0BAA50, MEMORY[0x1E6981790]);
              if (v7 <= 0x3F)
              {
                sub_1BD6FC3A0(319, &qword_1EBD39360, &qword_1EBD49710, &qword_1BE0B8580, MEMORY[0x1E6981790]);
                if (v8 <= 0x3F)
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

void sub_1BD6FC33C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BD6FC3A0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI27PaymentOfferSelectorOverlayV12DetailsSheet33_F3098C924C5659FC90F8BA8F11A2A37BLLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BD6FC41C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD6FC478(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1BD6FC4DC(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50F68, &unk_1BE0F2310);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F300, &qword_1BE0C5C38);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - v12;
  v20[0] = a1;
  v20[1] = a2;
  v20[2] = a3;
  type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0);
  sub_1BE048964();
  sub_1BE048964();
  v14 = a3;
  sub_1BE051974();
  v15 = v21;
  if (v21)
  {
    v16 = v22;
    v17 = v20[3];
    sub_1BD0DE19C(v4, v13, &qword_1EBD3F310, &unk_1BE0F2320);
    v18 = &v13[*(v11 + 36)];
    *v18 = v17;
    *(v18 + 1) = v15;
    *(v18 + 2) = v16;
    sub_1BD0DE19C(v13, v10, &qword_1EBD3F300, &qword_1BE0C5C38);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F310, &unk_1BE0F2320);
    sub_1BD259BD0();
    sub_1BD259C5C();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v13, &qword_1EBD3F300, &qword_1BE0C5C38);
  }

  else
  {
    sub_1BD0DE19C(v4, v10, &qword_1EBD3F310, &unk_1BE0F2320);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F310, &unk_1BE0F2320);
    sub_1BD259BD0();
    sub_1BD259C5C();
    return sub_1BE04F9A4();
  }
}

void *sub_1BD6FC744(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50F30, &unk_1BE0F22D0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47FA0, &unk_1BE0DB270);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - v12;
  v20[0] = a1;
  v20[1] = a2;
  v20[2] = a3;
  type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0);
  sub_1BE048964();
  sub_1BE048964();
  v14 = a3;
  sub_1BE051974();
  v15 = v21;
  if (v21)
  {
    v16 = v22;
    v17 = v20[3];
    sub_1BD0DE19C(v4, v13, &qword_1EBD47B48, &qword_1BE0DAE80);
    v18 = &v13[*(v11 + 36)];
    *v18 = v17;
    *(v18 + 1) = v15;
    *(v18 + 2) = v16;
    sub_1BD0DE19C(v13, v10, &qword_1EBD47FA0, &unk_1BE0DB270);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B48, &qword_1BE0DAE80);
    sub_1BD4D5B88();
    sub_1BD4D5C14();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v13, &qword_1EBD47FA0, &unk_1BE0DB270);
  }

  else
  {
    sub_1BD0DE19C(v4, v10, &qword_1EBD47B48, &qword_1BE0DAE80);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B48, &qword_1BE0DAE80);
    sub_1BD4D5B88();
    sub_1BD4D5C14();
    return sub_1BE04F9A4();
  }
}

void *sub_1BD6FC9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50F08, &qword_1BE0F22C0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50F10, &qword_1BE0F22C8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - v14;
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = a3;
  type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0);
  sub_1BE048964();
  sub_1BE048964();
  v16 = a3;
  sub_1BE051974();
  v17 = v23;
  if (v23)
  {
    v18 = v24;
    v22[1] = a4;
    v19 = v22[5];
    sub_1BD0DE19C(v5, v15, &qword_1EBD4C118, &qword_1BE0E57B0);
    v20 = &v15[*(v13 + 36)];
    *v20 = v19;
    *(v20 + 1) = v17;
    *(v20 + 2) = v18;
    sub_1BD0DE19C(v15, v12, &qword_1EBD50F10, &qword_1BE0F22C8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C118, &qword_1BE0E57B0);
    sub_1BD70BC44();
    sub_1BD70BCFC(&qword_1EBD50F20, &qword_1EBD4C118, &qword_1BE0E57B0, sub_1BD70BD78);
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v15, &qword_1EBD50F10, &qword_1BE0F22C8);
  }

  else
  {
    sub_1BD0DE19C(v5, v12, &qword_1EBD4C118, &qword_1BE0E57B0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4C118, &qword_1BE0E57B0);
    sub_1BD70BC44();
    sub_1BD70BCFC(&qword_1EBD50F20, &qword_1EBD4C118, &qword_1BE0E57B0, sub_1BD70BD78);
    return sub_1BE04F9A4();
  }
}

void *sub_1BD6FCC60(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50D88, &qword_1BE0F2068);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50D90, &qword_1BE0F2070);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - v12;
  v20[0] = a1;
  v20[1] = a2;
  v20[2] = a3;
  type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0);
  sub_1BE048964();
  sub_1BE048964();
  v14 = a3;
  sub_1BE051974();
  v15 = v21;
  if (v21)
  {
    v16 = v22;
    v17 = v20[3];
    sub_1BD0DE19C(v4, v13, &qword_1EBD50C98, &qword_1BE0F1F90);
    v18 = &v13[*(v11 + 36)];
    *v18 = v17;
    *(v18 + 1) = v15;
    *(v18 + 2) = v16;
    sub_1BD0DE19C(v13, v10, &qword_1EBD50D90, &qword_1BE0F2070);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50C98, &qword_1BE0F1F90);
    sub_1BD708D94();
    sub_1BD708E20();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v13, &qword_1EBD50D90, &qword_1BE0F2070);
  }

  else
  {
    sub_1BD0DE19C(v4, v10, &qword_1EBD50C98, &qword_1BE0F1F90);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50C98, &qword_1BE0F1F90);
    sub_1BD708D94();
    sub_1BD708E20();
    return sub_1BE04F9A4();
  }
}

void *sub_1BD6FCEC8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50F50, &qword_1BE0F2300);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50F58, &qword_1BE0F2308);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  v21[0] = a1;
  v21[1] = a2;
  v21[2] = a3;
  type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0);
  sub_1BE048964();
  sub_1BE048964();
  v15 = a3;
  sub_1BE051974();
  v16 = v22;
  if (v22)
  {
    v17 = v23;
    v18 = v21[3];
    sub_1BD70BF20(v5, v14, type metadata accessor for PaymentOfferActionExplanationView);
    v19 = &v14[*(v12 + 36)];
    *v19 = v18;
    *(v19 + 1) = v16;
    *(v19 + 2) = v17;
    sub_1BD0DE19C(v14, v11, &qword_1EBD50F58, &qword_1BE0F2308);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for PaymentOfferActionExplanationView(0);
    sub_1BD70BF88();
    sub_1BD70C044(&qword_1EBD57B20, type metadata accessor for PaymentOfferActionExplanationView, &unk_1BE0D53B8);
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v14, &qword_1EBD50F58, &qword_1BE0F2308);
  }

  else
  {
    sub_1BD70BF20(v5, v11, type metadata accessor for PaymentOfferActionExplanationView);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for PaymentOfferActionExplanationView(0);
    sub_1BD70BF88();
    sub_1BD70C044(&qword_1EBD57B20, type metadata accessor for PaymentOfferActionExplanationView, &unk_1BE0D53B8);
    return sub_1BE04F9A4();
  }
}

uint64_t sub_1BD6FD180@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v183 = a1;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37270, &qword_1BE0B1290) - 8;
  MEMORY[0x1EEE9AC00](v182);
  v187 = &v167 - v3;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50C98, &qword_1BE0F1F90) - 8;
  MEMORY[0x1EEE9AC00](v181);
  v175 = &v167 - v4;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50CA0, &qword_1BE0F1F98);
  v176 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v173 = &v167 - v5;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50CA8, &qword_1BE0F1FA0);
  MEMORY[0x1EEE9AC00](v184);
  v7 = &v167 - v6;
  *v7 = sub_1BE051CD4();
  *(v7 + 1) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50CB0, &qword_1BE0F1FA8);
  sub_1BD6FDD84(v1, &v7[*(v9 + 44)]);
  v10 = sub_1BE04EC64();
  v11 = sub_1BE0501D4();
  v12 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50CB8, &unk_1BE0F1FB0) + 36)];
  *v12 = v10;
  v12[8] = v11;
  v13 = type metadata accessor for PaymentOfferSelectorOverlay(0);
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v186 = (v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = v16;
  v185 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v167 - v185;
  v178 = type metadata accessor for PaymentOfferSelectorOverlay;
  sub_1BD70BF20(v2, &v167 - v185, type metadata accessor for PaymentOfferSelectorOverlay);
  v19 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v179 = *(v14 + 80);
  v20 = swift_allocObject();
  v180 = type metadata accessor for PaymentOfferSelectorOverlay;
  sub_1BD70B2E4(v18, v20 + v19, type metadata accessor for PaymentOfferSelectorOverlay);
  v21 = &v7[*(v184 + 36)];
  *v21 = sub_1BD708650;
  v21[1] = v20;
  v21[2] = 0;
  v21[3] = 0;
  v22 = (v2 + *(v15 + 44));
  v23 = v22[1];
  v198[0] = *v22;
  v198[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50CC0, &qword_1BE0F1FC0);
  v24 = sub_1BE0516C4();
  v167 = v200;
  v168 = v199;
  v170 = v201;
  v171 = *(&v200 + 1);
  v169 = *(&v201 + 1);
  v177 = v17;
  MEMORY[0x1EEE9AC00](v24);
  v25 = &v167 - v185;
  sub_1BD70BF20(v2, &v167 - v185, type metadata accessor for PaymentOfferSelectorOverlay);
  v26 = swift_allocObject();
  sub_1BD70B2E4(v25, v26 + v19, type metadata accessor for PaymentOfferSelectorOverlay);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50CC8, &qword_1BE0F1FC8);
  *&v172 = sub_1BD7086E0();
  *(&v172 + 1) = sub_1BD708824();
  v28 = sub_1BD708878();
  v29 = v173;
  v30 = v184;
  sub_1BE050F74();
  v167, v31, v32, v33, v34, v35, v36, v37;
  v26, v38, v39, v40, v41, v42, v43, v44;
  v168, v45, v46, v47, v48, v49, v50, v51;
  sub_1BD708C60(v171, v170, v169, v52, v53, v54, v55, v56);
  sub_1BD0DE53C(v7, &qword_1EBD50CA8, &qword_1BE0F1FA0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8, &qword_1BE0B8680);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v59 = &v167 - v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  v60 = v2;
  sub_1BE0516C4();
  type metadata accessor for MultiHyperLinkDetailSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394A0, &qword_1BE0B86F0);
  v199 = v30;
  *&v200 = &type metadata for PaymentOfferSelectorOverlay.DetailsSheet;
  *(&v200 + 1) = v27;
  v201 = v172;
  *&v202 = v28;
  swift_getOpaqueTypeConformance2();
  sub_1BD70C044(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet, &unk_1BE10751C);
  sub_1BD10CC54();
  v61 = v174;
  v62 = v175;
  sub_1BE050F74();
  sub_1BD0DE53C(v59, &qword_1EBD393E8, &qword_1BE0B8680);
  (*(v176 + 8))(v29, v61);
  v63 = sub_1BE051D74();
  v64 = *v2;
  v65 = v60[1];
  v199 = *v60;
  *&v200 = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
  sub_1BE0516A4();
  v66 = *&v198[0];
  sub_1BD228650(&v190);

  v67 = v197;
  *&v198[0] = v63;
  *(&v198[7] + 1) = v197;
  *(&v198[3] + 8) = v193;
  v69 = v192;
  v68 = v193;
  *(&v198[2] + 8) = v192;
  v70 = v190;
  *(&v198[1] + 8) = v191;
  *(&v198[6] + 8) = v196;
  v72 = v195;
  v71 = v196;
  *(&v198[5] + 8) = v195;
  v73 = v194;
  *(&v198[4] + 8) = v194;
  v74 = v191;
  *(v198 + 8) = v190;
  v75 = &v62[*(v181 + 44)];
  v76 = v62;
  v77 = v198[3];
  *(v75 + 2) = v198[2];
  *(v75 + 3) = v77;
  v78 = v198[1];
  *v75 = v198[0];
  *(v75 + 1) = v78;
  v79 = v198[7];
  *(v75 + 6) = v198[6];
  *(v75 + 7) = v79;
  v80 = v198[5];
  *(v75 + 4) = v198[4];
  *(v75 + 5) = v80;
  v203 = v68;
  v202 = v69;
  v201 = v74;
  v200 = v70;
  v199 = v63;
  v207 = v67;
  v206 = v71;
  v205 = v72;
  v204 = v73;
  sub_1BD0DE19C(v198, &v188, &qword_1EBD50D78, &qword_1BE0F2018);
  sub_1BD0DE53C(&v199, &qword_1EBD50D78, &qword_1BE0F2018);
  *&v190 = v64;
  *(&v190 + 1) = v65;
  sub_1BE0516C4();
  v81 = v188;
  v82 = v189;
  KeyPath = swift_getKeyPath();
  v188 = v81;
  v189 = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50D80, &unk_1BE0F2048);
  sub_1BE051904();
  KeyPath, v84, v85, v86, v87, v88, v89, v90;
  v91 = v190;
  v92 = v191;

  *(&v81 + 1), v93, v94, v95, v96, v97, v98, v99;
  v81, v100, v101, v102, v103, v104, v105, v106;
  v107 = v187;
  sub_1BD6FCC60(v91, *(&v91 + 1), v92);
  *(&v91 + 1), v108, v109, v110, v111, v112, v113, v114;
  v91, v115, v116, v117, v118, v119, v120, v121;

  sub_1BD0DE53C(v76, &qword_1EBD50C98, &qword_1BE0F1F90);
  v190 = *(v60 + *(v186 + 14));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0, &qword_1BE0DAEF0);
  v122 = sub_1BE0516C4();
  v123 = v189;
  v124 = v107 + *(v182 + 44);
  *v124 = v188;
  *(v124 + 16) = v123;
  MEMORY[0x1EEE9AC00](v122);
  v125 = &v167 - v185;
  *(v126 + 24) = 0;
  *(v126 + 32) = 0;
  sub_1BD70BF20(v60, v125, v178);
  sub_1BE0528A4();
  v127 = sub_1BE052894();
  v128 = (v179 + 32) & ~v179;
  v129 = swift_allocObject();
  v130 = MEMORY[0x1E69E85E0];
  *(v129 + 16) = v127;
  *(v129 + 24) = v130;
  sub_1BD70B2E4(v125, v129 + v128, v180);
  v131 = sub_1BE0528D4();
  v132 = *(v131 - 8);
  v133 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v131);
  v134 = (v133 + 15) & 0xFFFFFFFFFFFFFFF0;
  v135 = &v167 - v134;
  sub_1BE0528B4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v185 = sub_1BE04EAA4();
    v186 = &v167;
    v184 = *(v185 - 8);
    MEMORY[0x1EEE9AC00](v185);
    v182 = v131;
    v137 = &v167 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v188 = 0;
    *(&v188 + 1) = 0xE000000000000000;
    sub_1BE053834();
    *(&v188 + 1), v138, v139, v140, v141, v142, v143, v144;
    *&v188 = 0xD000000000000038;
    *(&v188 + 1) = 0x80000001BE1368F0;
    *&v190 = 65;
    v145 = sub_1BE053B24();
    v147 = v146;
    MEMORY[0x1BFB3F610](v145);
    v147, v148, v149, v150, v151, v152, v153, v154;
    v156 = MEMORY[0x1EEE9AC00](v155);
    v157 = &v167 - v134;
    v158 = &v167 - v134;
    v159 = v182;
    (*(v132 + 16))(v157, v158, v182, v156);
    sub_1BE04EA94();
    (*(v132 + 8))(v135, v159);
    v160 = v183;
    sub_1BD0A60F8(v187, v183);
    v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37278, &qword_1BE0B1298);
    return (*(v184 + 32))(v160 + *(v161 + 36), v137, v185);
  }

  else
  {
    v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37280, &unk_1BE0B12A0);
    v164 = v183;
    v165 = (v183 + *(v163 + 36));
    v166 = sub_1BE04E7B4();
    (*(v132 + 32))(&v165[*(v166 + 20)], &v167 - v134, v131);
    *v165 = &unk_1BE0F2060;
    *(v165 + 1) = v129;
    return sub_1BD0A60F8(v187, v164);
  }
}

uint64_t sub_1BD6FDD84@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v75 = a2;
  v3 = sub_1BE04EE04();
  v73 = *(v3 - 8);
  v74 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v72 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04FA44();
  v70 = *(v5 - 8);
  v71 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PaymentOfferSelectorOverlay(0);
  v57 = *(v7 - 8);
  v8 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50DE8, &qword_1BE0F2170);
  v58 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v55 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50DF0, &qword_1BE0F2178);
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v13 = &v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50DF8, &qword_1BE0F2180);
  v67 = *(v14 - 8);
  v68 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50E00, &qword_1BE0F2188);
  v65 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v66 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v76 = &v55 - v19;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50E08, &qword_1BE0F2190);
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v60 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v55 - v22;
  sub_1BD6FE5E0(&v55 - v22);
  v77 = a1;
  sub_1BE0501B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50E10, &qword_1BE0F2198);
  sub_1BD70A7CC();
  sub_1BE04E304();
  sub_1BD70BF20(a1, &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentOfferSelectorOverlay);
  v24 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v25 = swift_allocObject();
  sub_1BD70B2E4(&v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for PaymentOfferSelectorOverlay);
  v26 = sub_1BD0DE4F4(&qword_1EBD50E70, &qword_1EBD50DE8, &qword_1BE0F2170, MEMORY[0x1E697BE60]);
  sub_1BE0509D4();
  v27 = v25;
  v28 = v59;
  v27, v29, v30, v31, v32, v33, v34, v35;
  (*(v58 + 8))(v11, v9);
  sub_1BE04FA34();
  LOBYTE(v24) = sub_1BE0501B4();
  sub_1BE0501A4();
  sub_1BE0501A4();
  if (sub_1BE0501A4() != v24)
  {
    sub_1BE0501A4();
  }

  v78 = v9;
  v79 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v64;
  sub_1BE050D34();
  (*(v70 + 8))(v28, v71);
  (*(v62 + 8))(v13, v37);
  sub_1BE051EA4();
  v38 = v72;
  sub_1BE04EDF4();
  v78 = v37;
  v79 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v39 = v76;
  v40 = v68;
  sub_1BE050CF4();
  (*(v73 + 8))(v38, v74);
  (*(v67 + 8))(v16, v40);
  v41 = v61;
  v42 = *(v61 + 16);
  v43 = v60;
  v56 = v23;
  v44 = v23;
  v45 = v63;
  v42(v60, v44, v63);
  v47 = v65;
  v46 = v66;
  v74 = *(v65 + 16);
  v48 = v39;
  v49 = v69;
  v74(v66, v48, v69);
  v50 = v75;
  v42(v75, v43, v45);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50E78, &qword_1BE0F21D0);
  v74(&v50[*(v51 + 48)], v46, v49);
  v52 = *(v47 + 8);
  v52(v76, v49);
  v53 = *(v41 + 8);
  v53(v56, v45);
  v52(v46, v49);
  return (v53)(v43, v45);
}

uint64_t sub_1BD6FE5E0@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v2 = type metadata accessor for PaymentOfferSelectorOverlay(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_1BE051CD4();
  v7 = v6;
  sub_1BD705D4C(&v32);
  v28 = v35;
  v29 = v36;
  v26 = v33;
  v27 = v34;
  v25 = v32;
  v30[2] = v34;
  v30[3] = v35;
  v31 = v36;
  v30[0] = v32;
  v30[1] = v33;
  sub_1BD0DE19C(&v25, &v19, &qword_1EBD50EF0, &qword_1BE0F22A8);
  sub_1BD0DE53C(v30, &qword_1EBD50EF0, &qword_1BE0F22A8);
  v22 = v27;
  v23 = v28;
  v24 = v29;
  v21 = v26;
  v20 = v25;
  *&v19 = v5;
  *(&v19 + 1) = v7;
  sub_1BD70BF20(v1, &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentOfferSelectorOverlay);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_1BD70B2E4(&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for PaymentOfferSelectorOverlay);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50EF8, &unk_1BE0F22B0);
  sub_1BD0DE4F4(&qword_1EBD50F00, &qword_1EBD50EF8, &unk_1BE0F22B0, MEMORY[0x1E6981880]);
  sub_1BE0509D4();
  v9, v10, v11, v12, v13, v14, v15, v16;
  v34 = v21;
  v35 = v22;
  v36 = v23;
  v37 = v24;
  v32 = v19;
  v33 = v20;
  return sub_1BD0DE53C(&v32, &qword_1EBD50EF8, &unk_1BE0F22B0);
}

void sub_1BD6FE858(uint64_t a1)
{
  v1 = MEMORY[0x1BFB3EDF0](0.5, 0.55, 0.0);
  sub_1BE04E7D4();
  v1, v2, v3, v4, v5, v6, v7, v8;
  sub_1BD6FE9AC();
}

double sub_1BD6FE8DC(uint64_t a1)
{
  type metadata accessor for PaymentOfferSelectorOverlay(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150, &unk_1BE0DAED0);
  sub_1BE0516B4();
  return result;
}

void sub_1BD6FE9AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640, &qword_1BE0CC110);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BE0B6CA0;
  v1 = *MEMORY[0x1E69BB6C0];
  v2 = *MEMORY[0x1E69BB6F8];
  *(v0 + 32) = *MEMORY[0x1E69BB6C0];
  *(v0 + 40) = v2;
  type metadata accessor for PKAnalyticsSubject(0);
  v3 = v1;
  v4 = v2;
  v62 = sub_1BE052724();
  v0, v5, v6, v7, v8, v9, v10, v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B76F0;
  v13 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v14 = sub_1BE052434();
  v15 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v14;
  *(inited + 48) = v16;
  v17 = *v15;
  *(inited + 56) = *v15;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v18;
  v19 = *MEMORY[0x1E69BA9D0];
  *(inited + 80) = *MEMORY[0x1E69BA9D0];
  v20 = v13;
  v21 = v17;
  v22 = v19;
  sub_1BD709D1C();
  v61 = PKAnalyticsReportSwitchToggleResultValue();
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v23;
  v24 = *MEMORY[0x1E69BACF8];
  *(inited + 104) = *MEMORY[0x1E69BACF8];
  v25 = v24;
  sub_1BD709E44();
  v60 = PKAnalyticsReportSwitchToggleResultValue();
  *(inited + 112) = sub_1BE052434();
  *(inited + 120) = v26;
  v27 = *MEMORY[0x1E69BA9F8];
  *(inited + 128) = *MEMORY[0x1E69BA9F8];
  v28 = v27;
  sub_1BD709F64();
  v29 = PKAnalyticsReportSwitchToggleResultValue();
  *(inited + 136) = sub_1BE052434();
  *(inited + 144) = v30;
  v31 = *MEMORY[0x1E69BAC80];
  *(inited + 152) = *MEMORY[0x1E69BAC80];
  v32 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
  sub_1BE0516A4();
  v33 = *&v63[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass];

  v34 = [v33 organizationName];
  *(inited + 160) = sub_1BE052434();
  *(inited + 168) = v35;
  v36 = *MEMORY[0x1E69BAC78];
  *(inited + 176) = *MEMORY[0x1E69BAC78];
  v37 = v36;
  sub_1BE0516A4();
  v38 = *&v63[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass];

  v39 = [v38 issuerCountryCode];
  if (v39)
  {
    v40 = sub_1BE052434();
    v42 = v41;

    *(inited + 184) = v40;
    *(inited + 192) = v42;
    v43 = *MEMORY[0x1E69BAD48];
    *(inited + 200) = *MEMORY[0x1E69BAD48];
    v44 = v43;
    sub_1BE0516A4();
    v45 = *&v63[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass];

    v46 = PKDefaultPaymentNetworkNameForPaymentPass();
    if (v46)
    {

      v47 = objc_opt_self();
      v48 = sub_1BE052434();
      v50 = v49;

      *(inited + 208) = v48;
      *(inited + 216) = v50;
      v51 = sub_1BD1AAF50(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
      swift_arrayDestroy();
      type metadata accessor for PKAnalyticsKey(0);
      sub_1BD70C044(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
      v52 = sub_1BE052224();
      v51, v53, v54, v55, v56, v57, v58, v59;
      [v47 subjects:v62 sendEvent:v52];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD6FEDF4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v202 = a3;
  v201 = a2;
  v221 = a4;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50D70, &qword_1BE0F2008);
  v203 = *(v204 - 8);
  MEMORY[0x1EEE9AC00](v204);
  v200 = &v199 - v5;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50D60, &qword_1BE0F2000);
  MEMORY[0x1EEE9AC00](v212);
  v208 = &v199 - v6;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50DB0, &qword_1BE0F2078);
  MEMORY[0x1EEE9AC00](v210);
  v211 = &v199 - v7;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50D40, &qword_1BE0F1FF0);
  MEMORY[0x1EEE9AC00](v220);
  v9 = &v199 - v8;
  v207 = type metadata accessor for PaymentOfferSelectedInstallmentDetailView(0);
  v205 = *(v207 - 1);
  MEMORY[0x1EEE9AC00](v207);
  v11 = &v199 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v199 = &v199 - v13;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50D50, &qword_1BE0F1FF8);
  MEMORY[0x1EEE9AC00](v209);
  v206 = &v199 - v14;
  v15 = type metadata accessor for PaymentOfferRewardsAmountEntry(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v199 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50D28, &qword_1BE0F1FE8);
  MEMORY[0x1EEE9AC00](v215);
  v20 = &v199 - v19;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50DB8, &qword_1BE0F2080);
  MEMORY[0x1EEE9AC00](v217);
  v219 = &v199 - v21;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50DC0, &qword_1BE0F2088);
  MEMORY[0x1EEE9AC00](v213);
  v214 = (&v199 - v22);
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50D08, &qword_1BE0F1FD8);
  MEMORY[0x1EEE9AC00](v218);
  v216 = &v199 - v23;
  v24 = type metadata accessor for PaymentOfferSelectorOverlay(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v199 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v199 - v32;
  switch(a1)
  {
    case 0:
      v212 = v16;
      v208 = v30;
      v140 = *v222;
      v139 = v222[1];
      v223 = *v222;
      v224 = v139;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
      sub_1BE0516A4();
      v141 = v227;
      v142 = sub_1BD228C3C();

      v211 = v142;
      if (v142)
      {
        v223 = v140;
        v224 = v139;
        sub_1BE0516A4();
        v143 = v227;
        KeyPath = swift_getKeyPath();
        v223 = v143;
        sub_1BD70C044(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
        sub_1BE04B594();
        KeyPath, v145, v146, v147, v148, v149, v150, v151;
        v152 = *&v143[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance];
        v153 = v152;

        if (v152)
        {
          sub_1BD70BF20(v222, v33, type metadata accessor for PaymentOfferSelectorOverlay);
          v154 = (v208[80] + 16) & ~v208[80];
          v155 = swift_allocObject();
          sub_1BD70B2E4(v33, v155 + v154, type metadata accessor for PaymentOfferSelectorOverlay);
          v156 = *(v15 + 28);
          *(v18 + v156) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
          swift_storeEnumTagMultiPayload();
          *v18 = v211;
          v18[1] = v153;
          v18[2] = sub_1BD70A570;
          v18[3] = v155;
          sub_1BD70B2E4(v18, v20, type metadata accessor for PaymentOfferRewardsAmountEntry);
          v157 = 0;
LABEL_33:
          (v212)[7](v20, v157, 1, v15);
          v172 = &qword_1EBD50D28;
          v173 = &qword_1BE0F1FE8;
          sub_1BD0DE19C(v20, v214, &qword_1EBD50D28, &qword_1BE0F1FE8);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50D18, &qword_1BE0F1FE0);
          sub_1BD70BCFC(&qword_1EBD50D10, &qword_1EBD50D18, &qword_1BE0F1FE0, sub_1BD10CC00);
          sub_1BD7089BC();
          v174 = v216;
          sub_1BE04F9A4();
          sub_1BD0DE19C(v174, v219, &qword_1EBD50D08, &qword_1BE0F1FD8);
          swift_storeEnumTagMultiPayload();
          sub_1BD708904();
          sub_1BD708A70();
          sub_1BE04F9A4();
          sub_1BD0DE53C(v174, &qword_1EBD50D08, &qword_1BE0F1FD8);
LABEL_50:
          v195 = v20;
          v196 = v172;
          v197 = v173;
          goto LABEL_51;
        }
      }

      v157 = 1;
      goto LABEL_33;
    case 1:
      v87 = v31;
      v208 = v30;
      v215 = v11;
      v216 = v9;
      v88 = *v222;
      v89 = v222[1];
      v223 = *v222;
      v224 = v89;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
      sub_1BE0516A4();
      v90 = v227;
      v91 = *&v227[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController];
      v92 = v91;

      if (v91)
      {
        v223 = v88;
        v224 = v89;
        sub_1BE0516A4();
        v93 = v227;
        v94 = sub_1BD228AA4();

        if (v94)
        {
          v214 = v94;
          v223 = v88;
          v224 = v89;
          sub_1BE0516A4();
          v95 = v227;
          v96 = swift_getKeyPath();
          v223 = v95;
          sub_1BD70C044(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
          sub_1BE04B594();
          v96, v97, v98, v99, v100, v101, v102, v103;
          v104 = *&v95[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectedPaymentOffer];
          v105 = v104;

          if (v104)
          {
            objc_opt_self();
            v106 = swift_dynamicCastObjCClass();
            if (v106)
            {
              v204 = v106;
              v107 = [v106 selectedInstallmentOffer];
              v108 = v214;
              if (v107)
              {
                v109 = v107;
                v213 = [v107 installmentAmount];
                if (v213)
                {
                  v203 = v109;
                  v223 = v88;
                  v224 = v89;
                  sub_1BE0516A4();
                  v110 = v227;
                  v111 = *&v227[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass];

                  v112 = [v213 amount];
                  if (!v112)
                  {
LABEL_54:
                    __break(1u);
                    goto LABEL_55;
                  }

                  v113 = v112;
                  v114 = [v213 currency];
                  if (!v114)
                  {
LABEL_55:
                    __break(1u);
                    return;
                  }

                  v115 = v114;
                  v202 = sub_1BE052434();
                  v201 = v116;

                  sub_1BD70BF20(v222, v87, type metadata accessor for PaymentOfferSelectorOverlay);
                  v117 = (v208[80] + 16) & ~v208[80];
                  v118 = swift_allocObject();
                  sub_1BD70B2E4(v87, v118 + v117, type metadata accessor for PaymentOfferSelectorOverlay);
                  v119 = *(v207 + 13);
                  v120 = swift_getKeyPath();
                  v121 = v215;
                  *&v215[v119] = v120;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
                  swift_storeEnumTagMultiPayload();
                  *v121 = v111;
                  v121[1] = v113;
                  v122 = v201;
                  v121[2] = v202;
                  v121[3] = v122;
                  v123 = v214;
                  v121[4] = v92;
                  v121[5] = v123;
                  v227 = v204;
                  sub_1BD7098F8();
                  v124 = v92;
                  v125 = v105;
                  v126 = v111;
                  v127 = v123;
                  sub_1BE051694();
                  v128 = v224;
                  v121[6] = v223;
                  v121[7] = v128;
                  v121[8] = sub_1BD70C08C;
                  v121[9] = v118;
                  v121[11] = 0;
                  v121[12] = 0;
                  v121[10] = PKEdgeInsetsMake;
                  v129 = [v124 configuration];
                  v130 = [v129 context];

                  if (v130 == 1)
                  {
                    v131 = 96;
                  }

                  else
                  {
                    v131 = 64;
                  }

                  v223 = v126;
                  LOBYTE(v224) = v131;
                  v132 = objc_allocWithZone(type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0));
                  v133 = sub_1BD8D1EE0(&v223, v91, v123);

                  v134 = (v121 + *(v207 + 14));
                  v227 = v133;
                  v135 = v133;
                  sub_1BE051694();

                  v136 = v224;
                  *v134 = v223;
                  v134[1] = v136;
                  v137 = v199;
                  sub_1BD70B2E4(v121, v199, type metadata accessor for PaymentOfferSelectedInstallmentDetailView);
                  v20 = v206;
                  sub_1BD70B2E4(v137, v206, type metadata accessor for PaymentOfferSelectedInstallmentDetailView);
                  v138 = 0;
                  goto LABEL_49;
                }

                v92 = v105;
                v105 = v109;
              }

              else
              {
                v108 = v92;
                v92 = v214;
              }
            }

            else
            {
              v108 = v214;
            }

            v178 = v92;
            v92 = v105;
            v20 = v206;
          }

          else
          {
            v20 = v206;
            v178 = v214;
          }
        }

        else
        {
          v20 = v206;
        }

        v138 = 1;
      }

      else
      {
        v138 = 1;
        v20 = v206;
      }

LABEL_49:
      (*(v205 + 56))(v20, v138, 1, v207);
      v172 = &qword_1EBD50D50;
      v173 = &qword_1BE0F1FF8;
      sub_1BD0DE19C(v20, v211, &qword_1EBD50D50, &qword_1BE0F1FF8);
      swift_storeEnumTagMultiPayload();
      sub_1BD708AFC();
      sub_1BD708BB0();
      v198 = v216;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v198, v219, &qword_1EBD50D40, &qword_1BE0F1FF0);
      swift_storeEnumTagMultiPayload();
      sub_1BD708904();
      sub_1BD708A70();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v198, &qword_1EBD50D40, &qword_1BE0F1FF0);
      goto LABEL_50;
    case 2:
      v216 = v9;
      v34 = *v222;
      v35 = v222[1];
      v223 = *v222;
      v224 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
      sub_1BE0516A4();
      v36 = v227;
      v37 = swift_getKeyPath();
      v223 = v36;
      sub_1BD70C044(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
      sub_1BE04B594();
      v37, v38, v39, v40, v41, v42, v43, v44;
      v45 = *&v36[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__rewardsBalance];
      v46 = v45;

      if (v45)
      {
        v223 = v34;
        v224 = v35;
        sub_1BE0516A4();
        v47 = v227;
        v48 = *&v227[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_transactionSourceCollection];
        v49 = v48;

        v50 = v208;
        if (v48)
        {
          v223 = v34;
          v224 = v35;
          sub_1BE0516A4();
          v51 = v227;
          v52 = *&v227[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass];

          v53 = [v52 uniqueID];
          if (v53)
          {
            v54 = [v49 transactionSourceIdentifiers];
            v55 = MEMORY[0x1E69E6158];
            v56 = sub_1BE052A34();
            v215 = v49;
            v57 = v56;

            v58 = objc_allocWithZone(PKDashboardRewardsBalanceItem);
            v59 = v46;
            v60 = sub_1BE052A24();
            v57, v61, v62, v63, v64, v65, v66, v67;
            v68 = [v58 initWithPaymentRewardsBalance:v59 passUniqueIdentifier:v53 transactionSourceIdentifiers:v60];

            v214 = &v199;
            MEMORY[0x1EEE9AC00](v69);
            v70 = v222;
            *(&v199 - 2) = v68;
            *(&v199 - 1) = v70;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50DC8, &qword_1BE0F20B8);
            v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50DD0, &unk_1BE0F20C0);
            v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E9E8, &unk_1BE0E9E60);
            v73 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50DD8, &unk_1BE0F20D0);
            v74 = type metadata accessor for PKDashboardRewardsBalanceDetailsView(255);
            v75 = sub_1BD70C044(&qword_1EBD50DE0, type metadata accessor for PKDashboardRewardsBalanceDetailsView, &unk_1BE0EF408);
            v76 = sub_1BD0DDEBC();
            v223 = v74;
            v224 = v55;
            v225 = v75;
            v226 = v76;
            OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
            v223 = v73;
            v224 = OpaqueTypeConformance2;
            v78 = swift_getOpaqueTypeConformance2();
            v79 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E9F0, &qword_1BE0C41C0);
            v80 = sub_1BD0DE4F4(&qword_1EBD3E9F8, &qword_1EBD3E9F0, &qword_1BE0C41C0, MEMORY[0x1E697BEF0]);
            v223 = v79;
            v224 = v80;
            v81 = swift_getOpaqueTypeConformance2();
            v223 = v71;
            v224 = v72;
            v225 = v78;
            v226 = v81;
            swift_getOpaqueTypeConformance2();
            v82 = v200;
            sub_1BE04EC04();

            v83 = v203;
            v50 = v208;
            v84 = v82;
            v85 = v204;
            (*(v203 + 4))(v208, v84, v204);
            v86 = 0;
LABEL_36:
            v83[7](v50, v86, 1, v85);
            sub_1BD0DE19C(v50, v211, &qword_1EBD50D60, &qword_1BE0F2000);
            swift_storeEnumTagMultiPayload();
            sub_1BD708AFC();
            sub_1BD708BB0();
            v175 = v216;
            sub_1BE04F9A4();
            sub_1BD0DE19C(v175, v219, &qword_1EBD50D40, &qword_1BE0F1FF0);
            swift_storeEnumTagMultiPayload();
            sub_1BD708904();
            sub_1BD708A70();
            sub_1BE04F9A4();
            sub_1BD0DE53C(v175, &qword_1EBD50D40, &qword_1BE0F1FF0);
            sub_1BD0DE53C(v50, &qword_1EBD50D60, &qword_1BE0F2000);
            return;
          }

          __break(1u);
          goto LABEL_54;
        }

        v86 = 1;
      }

      else
      {
        v86 = 1;
        v50 = v208;
      }

      v85 = v204;
      v83 = v203;
      goto LABEL_36;
  }

  v208 = v30;
  v159 = *v222;
  v158 = v222[1];
  v223 = *v222;
  v224 = v158;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
  sub_1BE0516A4();
  v160 = v227;
  v161 = *&v227[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController];
  v162 = v161;

  if (v161)
  {
    v211 = v162;
    v223 = v159;
    v224 = v158;
    sub_1BE0516A4();
    v163 = v227;
    v164 = sub_1BD228C3C();

    v212 = v164;
    if (v164)
    {
      v210 = v161;
      v223 = v159;
      v224 = v158;
      sub_1BE0516A4();
      v165 = v227;
      v166 = *&v227[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController];
      v167 = v166;

      if (v166)
      {
        v168 = [v167 configuration];

        v209 = [v168 context];
      }

      else
      {
        v209 = 1;
      }

      v161 = v202;
      v207 = type metadata accessor for PaymentOfferSelectorOverlay;
      v179 = v222;
      sub_1BD70BF20(v222, v33, type metadata accessor for PaymentOfferSelectorOverlay);
      v180 = (v208[80] + 16) & ~v208[80];
      v181 = swift_allocObject();
      sub_1BD70B2E4(v33, v181 + v180, type metadata accessor for PaymentOfferSelectorOverlay);
      sub_1BD70BF20(v179, v28, v207);
      v182 = (v180 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v177 = swift_allocObject();
      sub_1BD70B2E4(v28, v177 + v180, type metadata accessor for PaymentOfferSelectorOverlay);
      *(v177 + v182) = v209;
      v183 = (v177 + ((v182 + 15) & 0xFFFFFFFFFFFFFFF8));
      v184 = v201;
      *v183 = a1;
      v183[1] = v184;
      v185 = v161;
      v186 = v211;
      v187 = v185;
      sub_1BE048964();
      v170 = v212;
      v188 = v212;
      v164 = v181;
      sub_1BE048964();
      sub_1BE048964();
      v176 = sub_1BD70A6C0;
      v171 = sub_1BD70C08C;
      v169 = v210;
      goto LABEL_42;
    }

    v169 = 0;
    v170 = 0;
    v161 = 0;
    v171 = 0;
  }

  else
  {
    v169 = 0;
    v170 = 0;
    v171 = 0;
    v164 = 0;
  }

  v176 = 0;
  v177 = 0;
LABEL_42:
  v212 = v170;
  v189 = v214;
  *v214 = v169;
  v189[1] = v170;
  v189[2] = v161;
  v189[3] = v171;
  v189[4] = v164;
  v189[5] = v176;
  v189[6] = v177;
  v222 = v177;
  v190 = v171;
  swift_storeEnumTagMultiPayload();
  sub_1BD70A5E0(v169, v170, v161);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50D18, &qword_1BE0F1FE0);
  sub_1BD70BCFC(&qword_1EBD50D10, &qword_1EBD50D18, &qword_1BE0F1FE0, sub_1BD10CC00);
  sub_1BD7089BC();
  v191 = v161;
  v192 = v216;
  sub_1BE04F9A4();
  sub_1BD0DE19C(v192, v219, &qword_1EBD50D08, &qword_1BE0F1FD8);
  swift_storeEnumTagMultiPayload();
  sub_1BD708904();
  sub_1BD708A70();
  sub_1BE04F9A4();
  v193 = v212;
  v194 = v222;
  sub_1BD70A650(v169, v212, v191, v190, v164, v176, v222);
  sub_1BD70A650(v169, v193, v191, v190, v164, v176, v194);
  v195 = v192;
  v196 = &qword_1EBD50D08;
  v197 = &qword_1BE0F1FD8;
LABEL_51:
  sub_1BD0DE53C(v195, v196, v197);
}

uint64_t sub_1BD7005D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a3;
  sub_1BE0528A4();
  *(v3 + 48) = sub_1BE052894();
  v5 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD70066C, v5, v4);
}

uint64_t sub_1BD70066C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 40);
  *(v8 + 48), a2, a3, a4, a5, a6, a7, a8;
  v10 = v9[1];
  *(v8 + 16) = *v9;
  *(v8 + 24) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
  sub_1BE0516A4();
  v11 = *(v8 + 32);
  sub_1BD2299B0(0);

  v12 = *(v8 + 8);

  return v12();
}

uint64_t sub_1BD700708@<X0>(const char **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PaymentOfferSelectorOverlay(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  *a2 = sub_1BE04F7B4();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50E80, &qword_1BE0F21D8);
  sub_1BD700970(a1, a2 + *(v8 + 44));
  v9 = a1 + *(v5 + 40);
  v10 = *v9;
  v11 = *(v9 + 1);
  v29[16] = v10;
  v30 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  LOBYTE(v5) = v29[15];
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50E48, &qword_1BE0F21B0) + 36);
  *v12 = 0;
  *(v12 + 8) = v5;
  LOBYTE(v5) = sub_1BE0501C4();
  sub_1BE04E1F4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50E38, &qword_1BE0F21A8) + 36);
  *v21 = v5;
  *(v21 + 8) = v14;
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50E28, &qword_1BE0F21A0) + 36)) = 0;
  v22 = sub_1BE051CD4();
  v24 = v23;
  sub_1BD70BF20(a1, &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PaymentOfferSelectorOverlay);
  v25 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v26 = swift_allocObject();
  sub_1BD70B2E4(&v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v26 + v25, type metadata accessor for PaymentOfferSelectorOverlay);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50E10, &qword_1BE0F2198);
  v28 = (a2 + *(result + 36));
  *v28 = sub_1BD70AAB4;
  v28[1] = v26;
  v28[2] = v22;
  v28[3] = v24;
  return result;
}

uint64_t sub_1BD700970@<X0>(const char **a1@<X0>, uint64_t a2@<X8>)
{
  v390 = a2;
  v405 = type metadata accessor for PaymentOfferSelectorOverlay(0);
  v393 = *(v405 - 8);
  MEMORY[0x1EEE9AC00](v405);
  v403 = v3;
  v395 = &v360 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v396 = type metadata accessor for PaymentOfferSelectorTile(0);
  MEMORY[0x1EEE9AC00](v396);
  v377 = &v360 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v376 = &v360 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v360 - v8;
  v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50EB0, &qword_1BE0F2208);
  MEMORY[0x1EEE9AC00](v397);
  v380 = &v360 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v384 = &v360 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v375 = &v360 - v14;
  v398 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50EB8, &qword_1BE0F2210);
  MEMORY[0x1EEE9AC00](v398);
  v381 = &v360 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v385 = (&v360 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v391 = (&v360 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50EC0, &qword_1BE0F2218);
  v404 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v378 = &v360 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v379 = &v360 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v382 = &v360 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v383 = (&v360 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v373 = &v360 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v374 = &v360 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50EE0, &qword_1BE0F2298);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v389 = &v360 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v388 = &v360 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v387 = &v360 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v360 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v360 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v360 - v45;
  v47 = *a1;
  v48 = a1[1];
  v406 = a1;
  *&v435 = v47;
  *(&v435 + 1) = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
  sub_1BE0516A4();
  v50 = v427;
  sub_1BD227C90(v413);

  v399 = v20;
  v400 = v49;
  v392 = v43;
  v401 = v46;
  v402 = v47;
  v394 = v48;
  v386 = v40;
  if (!*(&v413[0] + 1))
  {
    v63 = 1;
    v64 = v404;
    goto LABEL_21;
  }

  v435 = v413[0];
  v442 = v414;
  v440 = v413[5];
  v441 = v413[6];
  v438 = v413[3];
  v439 = v413[4];
  v436 = v413[1];
  v437 = v413[2];
  v51 = v406 + *(v405 + 32);
  v52 = *(v51 + 1);
  LODWORD(v372) = *v51;
  LOBYTE(v427) = v372;
  *(&v427 + 1) = v52;
  v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  LODWORD(v367) = v419;
  *&v427 = v47;
  *(&v427 + 1) = v48;
  sub_1BE0516A4();
  v366 = v419;
  v53 = sub_1BD70536C();
  v369 = v435;
  v370 = v52;
  v368 = *(&v435 + 1);
  v364 = v9;
  if (!v54)
  {
    sub_1BE048C84();
    goto LABEL_9;
  }

  v55 = v54;
  if (__PAIR128__(v54, v53) == v435)
  {
    sub_1BE048C84();
    v55, v56, v57, v58, v59, v60, v61, v62;
    goto LABEL_8;
  }

  v65 = sub_1BE053B84();
  sub_1BE048C84();
  v55, v66, v67, v68, v69, v70, v71, v72;
  if ((v65 & 1) == 0)
  {
LABEL_9:
    LODWORD(v365) = 1;
    goto LABEL_11;
  }

LABEL_8:
  LOBYTE(v427) = v372;
  *(&v427 + 1) = v52;
  sub_1BE0516A4();
  if (v419 == 1)
  {
    goto LABEL_9;
  }

  LODWORD(v365) = 0;
LABEL_11:
  v73 = v395;
  v363 = type metadata accessor for PaymentOfferSelectorOverlay;
  sub_1BD70BF20(v406, v395, type metadata accessor for PaymentOfferSelectorOverlay);
  sub_1BE0528A4();
  sub_1BD70AB6C(&v435, &v427);
  v74 = sub_1BE052894();
  v75 = *(v393 + 80);
  v76 = (v75 + 32) & ~v75;
  v77 = (v403 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  *(v78 + 16) = v74;
  *(v78 + 24) = MEMORY[0x1E69E85E0];
  v79 = v73;
  v360 = type metadata accessor for PaymentOfferSelectorOverlay;
  sub_1BD70B2E4(v73, v78 + v76, type metadata accessor for PaymentOfferSelectorOverlay);
  v80 = v78 + v77;
  v81 = v440;
  *(v80 + 64) = v439;
  *(v80 + 80) = v81;
  *(v80 + 96) = v441;
  *(v80 + 112) = v442;
  v82 = v436;
  *v80 = v435;
  *(v80 + 16) = v82;
  v83 = v438;
  *(v80 + 32) = v437;
  *(v80 + 48) = v83;
  sub_1BD70BF20(v406, v73, type metadata accessor for PaymentOfferSelectorOverlay);
  sub_1BD70AB6C(&v435, &v427);
  v84 = sub_1BE052894();
  v85 = swift_allocObject();
  *(v85 + 16) = v84;
  *(v85 + 24) = MEMORY[0x1E69E85E0];
  sub_1BD70B2E4(v73, v85 + v76, type metadata accessor for PaymentOfferSelectorOverlay);
  v86 = v85 + v77;
  v87 = v440;
  *(v86 + 64) = v439;
  *(v86 + 80) = v87;
  *(v86 + 96) = v441;
  *(v86 + 112) = v442;
  v88 = v436;
  *v86 = v435;
  *(v86 + 16) = v88;
  v89 = v438;
  *(v86 + 32) = v437;
  *(v86 + 48) = v89;
  sub_1BE051934();
  v361 = *(&v427 + 1);
  v362 = v427;
  LOBYTE(v77) = v428;
  v90 = v396;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  v91 = v364;
  sub_1BE0516C4();
  sub_1BD70BF20(v406, v73, v363);
  v92 = (v75 + 16) & ~v75;
  v93 = swift_allocObject();
  sub_1BD70B2E4(v79, v93 + v92, v360);
  *&v417[0] = v366;
  type metadata accessor for PaymentOfferSelectorModel(0);
  sub_1BE051694();
  v94 = *(&v419 + 1);
  *v91 = v419;
  *(v91 + 8) = v94;
  v95 = v440;
  *(v91 + 80) = v439;
  *(v91 + 96) = v95;
  *(v91 + 112) = v441;
  *(v91 + 128) = v442;
  v96 = v438;
  *(v91 + 48) = v437;
  *(v91 + 64) = v96;
  v97 = v436;
  *(v91 + 16) = v435;
  *(v91 + 32) = v97;
  *(v91 + 136) = v365;
  v98 = v361;
  v99 = v362;
  *(v91 + 144) = 0;
  *(v91 + 152) = v99;
  *(v91 + 160) = v98;
  *(v91 + 168) = v77;
  v100 = (v91 + v90[10]);
  *v100 = sub_1BD70C0B4;
  v100[1] = v93;
  v101 = (v91 + v90[11]);
  *v101 = 0;
  v101[1] = 0;
  v102 = (v91 + v90[12]);
  *v102 = PKEdgeInsetsMake;
  v102[1] = 0;
  sub_1BD70AB6C(&v435, &v427);
  v103 = sub_1BE051DF4();
  LODWORD(v92) = sub_1BE04FEE4();
  sub_1BE051EA4();
  v105 = v104;
  v107 = v106;
  v108 = v375;
  sub_1BD70B2E4(v91, v375, type metadata accessor for PaymentOfferSelectorTile);
  v109 = v108 + *(v397 + 36);
  v111 = v368;
  v110 = v369;
  *v109 = v369;
  *(v109 + 8) = v111;
  *(v109 + 16) = v103;
  *(v109 + 24) = v92;
  *(v109 + 32) = v105;
  *(v109 + 40) = v107;
  *(v109 + 48) = v367;
  v112 = sub_1BD70536C();
  v64 = v404;
  v48 = v394;
  if (!v113)
  {
    goto LABEL_17;
  }

  if (v112 != v110 || v113 != v111)
  {
    v120 = v113;
    v121 = sub_1BE053B84();
    v120, v122, v123, v124, v125, v126, v127, v128;
    if (v121)
    {
      goto LABEL_16;
    }

LABEL_17:
    *&v427 = v402;
    *(&v427 + 1) = v48;
    sub_1BE0516A4();
    v130 = v419;
    v131 = sub_1BD2289E8(v110, v111);
    v133 = v132;

    if (v133)
    {
      v129 = 0.0;
    }

    else
    {
      v129 = v131;
    }

    goto LABEL_20;
  }

  v113, v113, v114, v115, v116, v117, v118, v119;
LABEL_16:
  v129 = 100.0;
LABEL_20:
  v134 = v108;
  v135 = v391;
  sub_1BD0DE204(v134, v391, &qword_1EBD50EB0, &qword_1BE0F2208);
  *(v135 + *(v398 + 36)) = v129;
  LOBYTE(v427) = v372;
  *(&v427 + 1) = v370;
  sub_1BE0516A4();
  sub_1BD0DE53C(v413, &qword_1EBD3E550, &qword_1BE0C3260);
  v136 = v419;
  KeyPath = swift_getKeyPath();
  v138 = swift_allocObject();
  *(v138 + 16) = (v136 & 1) == 0;
  v139 = v373;
  sub_1BD0DE204(v135, v373, &qword_1EBD50EB8, &qword_1BE0F2210);
  v20 = v399;
  v140 = (v139 + *(v399 + 36));
  *v140 = KeyPath;
  v140[1] = sub_1BD185ABC;
  v140[2] = v138;
  v141 = v139;
  v142 = v374;
  sub_1BD0DE204(v141, v374, &qword_1EBD50EC0, &qword_1BE0F2218);
  v143 = v142;
  v46 = v401;
  sub_1BD0DE204(v143, v401, &qword_1EBD50EC0, &qword_1BE0F2218);
  v63 = 0;
LABEL_21:
  v144 = *(v64 + 56);
  v145 = 1;
  (v144)(v46, v63, 1, v20);
  v146 = v402;
  *&v427 = v402;
  *(&v427 + 1) = v48;
  sub_1BE0516A4();
  v147 = v419;
  sub_1BD227E5C(v415);

  v148 = *(&v415[0] + 1);
  v404 = v64 + 56;
  v391 = v144;
  if (!*(&v415[0] + 1))
  {
    v164 = v392;
    goto LABEL_42;
  }

  v149 = *&v415[0];
  v427 = v415[0];
  v434 = v416;
  v433 = v415[6];
  v432 = v415[5];
  v430 = v415[3];
  v431 = v415[4];
  v429 = v415[2];
  v428 = v415[1];
  v150 = v406 + *(v405 + 32);
  v152 = *(v150 + 1);
  LOBYTE(v419) = *v150;
  v151 = v419;
  *(&v419 + 1) = v152;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  LODWORD(v370) = LOBYTE(v417[0]);
  *&v419 = v146;
  *(&v419 + 1) = v48;
  sub_1BE0516A4();
  v369 = *&v417[0];
  v154 = sub_1BD70536C();
  v375 = v152;
  LODWORD(v374) = v151;
  v372 = v148;
  v373 = v153;
  v371 = v149;
  if (!v155)
  {
    sub_1BE048C84();
    goto LABEL_30;
  }

  v156 = v155;
  if (v154 == v149 && v155 == v148)
  {
    sub_1BE048C84();
    v156, v157, v158, v159, v160, v161, v162, v163;
    goto LABEL_29;
  }

  v165 = sub_1BE053B84();
  sub_1BE048C84();
  v156, v166, v167, v168, v169, v170, v171, v172;
  if ((v165 & 1) == 0)
  {
LABEL_30:
    LODWORD(v368) = 1;
    goto LABEL_32;
  }

LABEL_29:
  LOBYTE(v419) = v151;
  *(&v419 + 1) = v152;
  sub_1BE0516A4();
  if (LOBYTE(v417[0]) == 1)
  {
    goto LABEL_30;
  }

  LODWORD(v368) = 0;
LABEL_32:
  v173 = v406;
  v174 = v395;
  v367 = type metadata accessor for PaymentOfferSelectorOverlay;
  sub_1BD70BF20(v406, v395, type metadata accessor for PaymentOfferSelectorOverlay);
  sub_1BE0528A4();
  sub_1BD70AB6C(&v427, &v419);
  v175 = sub_1BE052894();
  v176 = *(v393 + 80);
  v177 = (v176 + 32) & ~v176;
  v178 = (v403 + v177 + 7) & 0xFFFFFFFFFFFFFFF8;
  v179 = swift_allocObject();
  *(v179 + 16) = v175;
  *(v179 + 24) = MEMORY[0x1E69E85E0];
  sub_1BD70B2E4(v174, v179 + v177, type metadata accessor for PaymentOfferSelectorOverlay);
  v180 = v179 + v178;
  v181 = v432;
  *(v180 + 64) = v431;
  *(v180 + 80) = v181;
  *(v180 + 96) = v433;
  *(v180 + 112) = v434;
  v182 = v428;
  *v180 = v427;
  *(v180 + 16) = v182;
  v183 = v430;
  *(v180 + 32) = v429;
  *(v180 + 48) = v183;
  sub_1BD70BF20(v173, v174, type metadata accessor for PaymentOfferSelectorOverlay);
  sub_1BD70AB6C(&v427, &v419);
  v184 = sub_1BE052894();
  v185 = swift_allocObject();
  *(v185 + 16) = v184;
  *(v185 + 24) = MEMORY[0x1E69E85E0];
  sub_1BD70B2E4(v174, v185 + v177, type metadata accessor for PaymentOfferSelectorOverlay);
  v186 = v185 + v178;
  v187 = v432;
  *(v186 + 64) = v431;
  *(v186 + 80) = v187;
  *(v186 + 96) = v433;
  *(v186 + 112) = v434;
  v188 = v428;
  *v186 = v427;
  *(v186 + 16) = v188;
  v189 = v430;
  *(v186 + 32) = v429;
  *(v186 + 48) = v189;
  sub_1BE051934();
  v365 = *(&v419 + 1);
  v366 = v419;
  LODWORD(v364) = v420;
  v190 = v396;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  v191 = v376;
  sub_1BE0516C4();
  sub_1BD70BF20(v173, v174, v367);
  v192 = swift_allocObject();
  sub_1BD70B2E4(v174, v192 + ((v176 + 16) & ~v176), type metadata accessor for PaymentOfferSelectorOverlay);
  v410 = v369;
  type metadata accessor for PaymentOfferSelectorModel(0);
  sub_1BE051694();
  v193 = *(&v417[0] + 1);
  *v191 = *&v417[0];
  *(v191 + 8) = v193;
  v194 = v432;
  *(v191 + 80) = v431;
  *(v191 + 96) = v194;
  *(v191 + 112) = v433;
  *(v191 + 128) = v434;
  v195 = v430;
  *(v191 + 48) = v429;
  *(v191 + 64) = v195;
  v196 = v428;
  *(v191 + 16) = v427;
  *(v191 + 32) = v196;
  *(v191 + 136) = v368;
  v197 = v365;
  v198 = v366;
  *(v191 + 144) = 0;
  *(v191 + 152) = v198;
  *(v191 + 160) = v197;
  *(v191 + 168) = v364;
  v199 = (v191 + v190[10]);
  *v199 = sub_1BD70C0B4;
  v199[1] = v192;
  v200 = (v191 + v190[11]);
  *v200 = 0;
  v200[1] = 0;
  v201 = (v191 + v190[12]);
  *v201 = PKEdgeInsetsMake;
  v201[1] = 0;
  sub_1BD70AB6C(&v427, &v419);
  v202 = sub_1BE051DF4();
  LODWORD(v175) = sub_1BE04FEE4();
  sub_1BE051EA4();
  v204 = v203;
  v206 = v205;
  v207 = v384;
  sub_1BD70B2E4(v191, v384, type metadata accessor for PaymentOfferSelectorTile);
  v208 = &v207[*(v397 + 36)];
  v209 = v371;
  v210 = v372;
  *v208 = v371;
  *(v208 + 1) = v210;
  *(v208 + 2) = v202;
  *(v208 + 6) = v175;
  *(v208 + 4) = v204;
  *(v208 + 5) = v206;
  v208[48] = v370;
  v211 = sub_1BD70536C();
  v20 = v399;
  v219 = v402;
  v48 = v394;
  v144 = v391;
  if (!v212)
  {
    goto LABEL_38;
  }

  if (v211 != v209 || v212 != v210)
  {
    v220 = v212;
    v221 = sub_1BE053B84();
    v220, v222, v223, v224, v225, v226, v227, v228;
    if (v221)
    {
      goto LABEL_37;
    }

LABEL_38:
    *&v419 = v219;
    *(&v419 + 1) = v48;
    sub_1BE0516A4();
    v230 = *&v417[0];
    v231 = sub_1BD2289E8(v209, v210);
    v233 = v232;

    if (v233)
    {
      v229 = 0.0;
    }

    else
    {
      v229 = v231;
    }

    goto LABEL_41;
  }

  v212, v212, v213, v214, v215, v216, v217, v218;
LABEL_37:
  v229 = 100.0;
LABEL_41:
  v234 = v207;
  v235 = v385;
  sub_1BD0DE204(v234, v385, &qword_1EBD50EB0, &qword_1BE0F2208);
  *(v235 + *(v398 + 36)) = v229;
  LOBYTE(v419) = v374;
  *(&v419 + 1) = v375;
  sub_1BE0516A4();
  sub_1BD0DE53C(v415, &qword_1EBD3E550, &qword_1BE0C3260);
  v236 = v417[0];
  v237 = swift_getKeyPath();
  v238 = swift_allocObject();
  *(v238 + 16) = (v236 & 1) == 0;
  v239 = v382;
  sub_1BD0DE204(v235, v382, &qword_1EBD50EB8, &qword_1BE0F2210);
  v240 = (v239 + *(v20 + 36));
  *v240 = v237;
  v240[1] = sub_1BD185ABC;
  v240[2] = v238;
  v241 = v239;
  v242 = v383;
  sub_1BD0DE204(v241, v383, &qword_1EBD50EC0, &qword_1BE0F2218);
  v164 = v392;
  sub_1BD0DE204(v242, v392, &qword_1EBD50EC0, &qword_1BE0F2218);
  v145 = 0;
  v146 = v402;
LABEL_42:
  v243 = 1;
  (v144)(v164, v145, 1, v20);
  *&v419 = v146;
  *(&v419 + 1) = v48;
  sub_1BE0516A4();
  v244 = *&v417[0];
  sub_1BD22826C(v417);

  v245 = *(&v417[0] + 1);
  if (*(&v417[0] + 1))
  {
    v246 = *&v417[0];
    v419 = v417[0];
    v426 = v418;
    v424 = v417[5];
    v425 = v417[6];
    v422 = v417[3];
    v423 = v417[4];
    v420 = v417[1];
    v421 = v417[2];
    v247 = v406 + *(v405 + 32);
    v248 = *(v247 + 1);
    LODWORD(v382) = *v247;
    LOBYTE(v410) = v382;
    v411 = v248;
    v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516A4();
    LODWORD(v372) = v408;
    v250 = sub_1BD70258C();
    v384 = v251;
    v385 = v250;
    v410 = v146;
    v411 = v48;
    sub_1BE0516A4();
    v371 = v408;
    v252 = sub_1BD70536C();
    v375 = v249;
    v376 = v248;
    v373 = v246;
    v374 = v245;
    if (v253)
    {
      v254 = v253;
      if (v252 == v246 && v253 == v245)
      {
        sub_1BE048C84();
        v254, v255, v256, v257, v258, v259, v260, v261;
        v262 = v382;
      }

      else
      {
        v264 = sub_1BE053B84();
        sub_1BE048C84();
        v254, v265, v266, v267, v268, v269, v270, v271;
        v262 = v382;
        if ((v264 & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      LOBYTE(v410) = v262;
      v411 = v248;
      sub_1BE0516A4();
      if (v408 != 1)
      {
        LODWORD(v370) = 0;
LABEL_53:
        v383 = type metadata accessor for PaymentOfferSelectorOverlay;
        v272 = v406;
        v273 = v395;
        sub_1BD70BF20(v406, v395, type metadata accessor for PaymentOfferSelectorOverlay);
        sub_1BE0528A4();
        sub_1BD70AB6C(&v419, &v410);
        v274 = sub_1BE052894();
        v275 = *(v393 + 80);
        v276 = (v275 + 32) & ~v275;
        v277 = (v403 + v276 + 7) & 0xFFFFFFFFFFFFFFF8;
        v278 = swift_allocObject();
        *(v278 + 16) = v274;
        *(v278 + 24) = MEMORY[0x1E69E85E0];
        v367 = type metadata accessor for PaymentOfferSelectorOverlay;
        sub_1BD70B2E4(v273, v278 + v276, type metadata accessor for PaymentOfferSelectorOverlay);
        v279 = v278 + v277;
        v280 = v424;
        *(v279 + 64) = v423;
        *(v279 + 80) = v280;
        *(v279 + 96) = v425;
        *(v279 + 112) = v426;
        v281 = v420;
        *v279 = v419;
        *(v279 + 16) = v281;
        v282 = v422;
        *(v279 + 32) = v421;
        *(v279 + 48) = v282;
        v283 = v272;
        v284 = v273;
        sub_1BD70BF20(v283, v273, v383);
        sub_1BD70AB6C(&v419, &v410);
        v285 = sub_1BE052894();
        v286 = swift_allocObject();
        *(v286 + 16) = v285;
        *(v286 + 24) = MEMORY[0x1E69E85E0];
        sub_1BD70B2E4(v273, v286 + v276, type metadata accessor for PaymentOfferSelectorOverlay);
        v287 = v286 + v277;
        v288 = v424;
        *(v287 + 64) = v423;
        *(v287 + 80) = v288;
        *(v287 + 96) = v425;
        *(v287 + 112) = v426;
        v289 = v420;
        *v287 = v419;
        *(v287 + 16) = v289;
        v290 = v422;
        *(v287 + 32) = v421;
        *(v287 + 48) = v290;
        sub_1BE051934();
        v393 = v410;
        v369 = v411;
        LODWORD(v368) = v412;
        v291 = v396;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
        v292 = v377;
        v293 = v406;
        sub_1BE0516C4();
        sub_1BD70BF20(v293, v273, v383);
        v294 = (v275 + 16) & ~v275;
        v295 = swift_allocObject();
        sub_1BD70B2E4(v284, v295 + v294, v367);
        v407 = v371;
        type metadata accessor for PaymentOfferSelectorModel(0);
        sub_1BE051694();
        v296 = v409;
        *v292 = v408;
        *(v292 + 8) = v296;
        v297 = v424;
        *(v292 + 80) = v423;
        *(v292 + 96) = v297;
        *(v292 + 112) = v425;
        *(v292 + 128) = v426;
        v298 = v422;
        *(v292 + 48) = v421;
        *(v292 + 64) = v298;
        v299 = v420;
        *(v292 + 16) = v419;
        *(v292 + 32) = v299;
        *(v292 + 136) = v370;
        v300 = v393;
        *(v292 + 144) = 0;
        *(v292 + 152) = v300;
        *(v292 + 160) = v369;
        *(v292 + 168) = v368;
        v301 = (v292 + v291[10]);
        *v301 = sub_1BD70C0B4;
        v301[1] = v295;
        v302 = (v292 + v291[11]);
        v304 = v384;
        v303 = v385;
        *v302 = v385;
        v302[1] = v304;
        v305 = (v292 + v291[12]);
        *v305 = PKEdgeInsetsMake;
        v305[1] = 0;
        sub_1BD0DE19C(v417, &v410, &qword_1EBD3E550, &qword_1BE0C3260);
        sub_1BD0D44B8(v303, v304);
        v306 = sub_1BE051DF4();
        LODWORD(v303) = sub_1BE04FEE4();
        sub_1BE051EA4();
        v308 = v307;
        v310 = v309;
        v311 = v380;
        sub_1BD70B2E4(v292, v380, type metadata accessor for PaymentOfferSelectorTile);
        v312 = v311 + *(v397 + 36);
        v313 = v373;
        v314 = v374;
        *v312 = v373;
        *(v312 + 8) = v314;
        *(v312 + 16) = v306;
        *(v312 + 24) = v303;
        *(v312 + 32) = v308;
        *(v312 + 40) = v310;
        *(v312 + 48) = v372;
        v315 = sub_1BD70536C();
        v144 = v391;
        v164 = v392;
        v323 = v402;
        v324 = v394;
        if (v316)
        {
          if (v315 == v313 && v316 == v314)
          {
            v316, v316, v317, v318, v319, v320, v321, v322;
LABEL_58:
            v334 = 100.0;
LABEL_62:
            v339 = v311;
            v340 = v381;
            sub_1BD0DE204(v339, v381, &qword_1EBD50EB0, &qword_1BE0F2208);
            *(v340 + *(v398 + 36)) = v334;
            LOBYTE(v410) = v382;
            v411 = v376;
            sub_1BE0516A4();
            sub_1BD0D4744(v385, v384, v341, v342, v343, v344, v345, v346);
            sub_1BD0DE53C(v417, &qword_1EBD3E550, &qword_1BE0C3260);
            v347 = v408;
            v348 = swift_getKeyPath();
            v349 = swift_allocObject();
            *(v349 + 16) = (v347 & 1) == 0;
            v350 = v378;
            sub_1BD0DE204(v340, v378, &qword_1EBD50EB8, &qword_1BE0F2210);
            v20 = v399;
            v351 = (v350 + *(v399 + 36));
            *v351 = v348;
            v351[1] = sub_1BD185ABC;
            v351[2] = v349;
            v352 = v350;
            v353 = v379;
            sub_1BD0DE204(v352, v379, &qword_1EBD50EC0, &qword_1BE0F2218);
            v263 = v386;
            sub_1BD0DE204(v353, v386, &qword_1EBD50EC0, &qword_1BE0F2218);
            v243 = 0;
            goto LABEL_63;
          }

          v325 = v316;
          v326 = sub_1BE053B84();
          v325, v327, v328, v329, v330, v331, v332, v333;
          if (v326)
          {
            goto LABEL_58;
          }
        }

        v410 = v323;
        v411 = v324;
        sub_1BE0516A4();
        v335 = v408;
        v336 = sub_1BD2289E8(v313, v314);
        v338 = v337;

        if (v338)
        {
          v334 = 0.0;
        }

        else
        {
          v334 = v336;
        }

        goto LABEL_62;
      }
    }

    else
    {
      sub_1BE048C84();
    }

LABEL_51:
    LODWORD(v370) = 1;
    goto LABEL_53;
  }

  v263 = v386;
LABEL_63:
  (v144)(v263, v243, 1, v20);
  v354 = v387;
  sub_1BD0DE19C(v401, v387, &qword_1EBD50EE0, &qword_1BE0F2298);
  v355 = v388;
  sub_1BD0DE19C(v164, v388, &qword_1EBD50EE0, &qword_1BE0F2298);
  v356 = v389;
  sub_1BD0DE19C(v263, v389, &qword_1EBD50EE0, &qword_1BE0F2298);
  v357 = v390;
  sub_1BD0DE19C(v354, v390, &qword_1EBD50EE0, &qword_1BE0F2298);
  v358 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50EE8, &qword_1BE0F22A0);
  sub_1BD0DE19C(v355, v357 + *(v358 + 48), &qword_1EBD50EE0, &qword_1BE0F2298);
  sub_1BD0DE19C(v356, v357 + *(v358 + 64), &qword_1EBD50EE0, &qword_1BE0F2298);
  sub_1BD0DE53C(v263, &qword_1EBD50EE0, &qword_1BE0F2298);
  sub_1BD0DE53C(v164, &qword_1EBD50EE0, &qword_1BE0F2298);
  sub_1BD0DE53C(v401, &qword_1EBD50EE0, &qword_1BE0F2298);
  sub_1BD0DE53C(v356, &qword_1EBD50EE0, &qword_1BE0F2298);
  sub_1BD0DE53C(v355, &qword_1EBD50EE0, &qword_1BE0F2298);
  return sub_1BD0DE53C(v354, &qword_1EBD50EE0, &qword_1BE0F2298);
}

double (*sub_1BD70258C())()
{
  v1 = v0;
  v2 = type metadata accessor for PaymentOfferSelectorOverlay(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v0[1];
  v13 = *v0;
  v14 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
  sub_1BE0516A4();
  v6 = *&v12[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_transactionSourceCollection];
  v7 = v6;

  if (!v6)
  {
    return 0;
  }

  sub_1BD70BF20(v1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentOfferSelectorOverlay);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_1BD70B2E4(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for PaymentOfferSelectorOverlay);
  return sub_1BD70B400;
}

void sub_1BD702714(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 48);
  v28 = *(a1 + 32);
  *&v29 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50E88, &qword_1BE0F21E0);
  MEMORY[0x1BFB3E970](&v27, v5);
  x = v27.origin.x;
  if (*&v27.origin.x)
  {
    *a2 = sub_1BE051CD4();
    a2[1] = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50E98, &qword_1BE0F21F0);
    sub_1BD702988(a1, a2 + *(v8 + 44));
    type metadata accessor for CGRect(0);
    sub_1BE04E6B4();
    CGRectGetWidth(v27);
    sub_1BE04E6B4();
    CGRectGetHeight(v26);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50EA0, &qword_1BE0F21F8) + 36));
    v10 = v29;
    *v9 = v28;
    v9[1] = v10;
    v9[2] = v30;
    sub_1BE04E6B4();
    MinX = CGRectGetMinX(v27);
    sub_1BE04E6B4();
    MinY = CGRectGetMinY(v26);
    v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50EA8, &qword_1BE0F2200) + 36));
    *v13 = MinX;
    v13[1] = MinY;
    v14 = sub_1BE04EC64();
    v15 = sub_1BE0501D4();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50E90, &qword_1BE0F21E8);
    v17 = a2 + *(v16 + 36);
    *v17 = v14;
    v17[8] = v15;
    (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
    *&x, v18, v19, v20, v21, v22, v23, v24;
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50E90, &qword_1BE0F21E8);
    (*(*(v25 - 8) + 56))(a2, 1, 1, v25);
  }
}

uint64_t sub_1BD702988@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v516 = a2;
  v521 = type metadata accessor for PaymentOfferSelectorTile(0);
  MEMORY[0x1EEE9AC00](v521);
  v497 = &v475[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v490 = &v475[-v5];
  MEMORY[0x1EEE9AC00](v6);
  v484 = &v475[-v7];
  v522 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50EB0, &qword_1BE0F2208);
  MEMORY[0x1EEE9AC00](v522);
  v499 = &v475[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v518 = &v475[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v487 = &v475[-v12];
  v524 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50EB8, &qword_1BE0F2210);
  MEMORY[0x1EEE9AC00](v524);
  v502 = &v475[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v494 = &v475[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v488 = &v475[-v17];
  v533 = type metadata accessor for PaymentOfferSelectorOverlay(0);
  v526 = *(v533 - 8);
  v18 = *(v526 + 64);
  MEMORY[0x1EEE9AC00](v533);
  v496 = &v475[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v489 = &v475[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v520 = &v475[-v22];
  MEMORY[0x1EEE9AC00](v23);
  v506 = &v475[-v24];
  v523 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50EC0, &qword_1BE0F2218);
  MEMORY[0x1EEE9AC00](v523);
  v498 = &v475[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v26);
  v503 = &v475[-v27];
  MEMORY[0x1EEE9AC00](v28);
  v491 = &v475[-v29];
  MEMORY[0x1EEE9AC00](v30);
  v495 = &v475[-v31];
  MEMORY[0x1EEE9AC00](v32);
  v483 = &v475[-v33];
  MEMORY[0x1EEE9AC00](v34);
  v517 = &v475[-v35];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50EC8, &qword_1BE0F2220);
  v531 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v501 = &v475[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v38);
  v500 = &v475[-v39];
  MEMORY[0x1EEE9AC00](v40);
  v493 = &v475[-v41];
  MEMORY[0x1EEE9AC00](v42);
  v492 = &v475[-v43];
  MEMORY[0x1EEE9AC00](v44);
  v486 = &v475[-v45];
  MEMORY[0x1EEE9AC00](v46);
  v485 = &v475[-v47];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50ED0, &qword_1BE0F2228);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v515 = &v475[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v50);
  v514 = &v475[-v51];
  MEMORY[0x1EEE9AC00](v52);
  v513 = &v475[-v53];
  MEMORY[0x1EEE9AC00](v54);
  v512 = &v475[-v55];
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v475[-v57];
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v475[-v60];
  v62 = a1[1];
  *&v563 = *a1;
  v63 = v563;
  *(&v563 + 1) = v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
  sub_1BE0516A4();
  v65 = v555;
  sub_1BD227C90(v541);

  v66 = a1;
  v534 = a1;
  v525 = v36;
  v527 = v58;
  v528 = v61;
  v529 = v64;
  v530 = v63;
  v519 = v62;
  v532 = v18;
  v67 = v526;
  if (!*(&v541[0] + 1))
  {
    v86 = 1;
    v87 = v63;
    goto LABEL_30;
  }

  v563 = v541[0];
  v570 = v542;
  v568 = v541[5];
  v569 = v541[6];
  v566 = v541[3];
  v567 = v541[4];
  v564 = v541[1];
  v565 = v541[2];
  v68 = v66 + *(v533 + 32);
  v69 = *v68;
  v70 = *(v68 + 1);
  LODWORD(v510) = v69;
  LOBYTE(v555) = v69;
  v511 = v70;
  *(&v555 + 1) = v70;
  v71 = v66;
  v509 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  v482 = v547 ^ 1;
  v481 = *MEMORY[0x1E69B9A10];
  v72 = v506;
  sub_1BD70BF20(v71, v506, type metadata accessor for PaymentOfferSelectorOverlay);
  v73 = *(v67 + 80);
  v477 = ~v73;
  v74 = (v73 + 16) & ~v73;
  v507 = v73;
  v508 = swift_allocObject();
  v480 = v74;
  sub_1BD70B2E4(v72, v508 + v74, type metadata accessor for PaymentOfferSelectorOverlay);
  *&v555 = v63;
  *(&v555 + 1) = v62;
  sub_1BE0516A4();
  v479 = v547;
  v75 = v71;
  v76 = sub_1BD70536C();
  v504 = *(&v563 + 1);
  v505 = v563;
  if (!v77)
  {
    sub_1BE048C84();
    goto LABEL_9;
  }

  v78 = v77;
  if (__PAIR128__(v77, v76) == v563)
  {
    sub_1BE048C84();
    v78, v79, v80, v81, v82, v83, v84, v85;
    goto LABEL_8;
  }

  v88 = sub_1BE053B84();
  sub_1BE048C84();
  v78, v89, v90, v91, v92, v93, v94, v95;
  if ((v88 & 1) == 0)
  {
LABEL_9:
    v478 = 1;
    goto LABEL_11;
  }

LABEL_8:
  LOBYTE(v555) = v510;
  *(&v555 + 1) = v511;
  sub_1BE0516A4();
  if (v547 == 1)
  {
    goto LABEL_9;
  }

  v478 = 0;
LABEL_11:
  v506 = type metadata accessor for PaymentOfferSelectorOverlay;
  v96 = v520;
  sub_1BD70BF20(v75, v520, type metadata accessor for PaymentOfferSelectorOverlay);
  sub_1BE0528A4();
  sub_1BD70AB6C(&v563, &v555);
  v97 = sub_1BE052894();
  v98 = (v507 + 32) & v477;
  v99 = &v18[v98 + 7] & 0xFFFFFFFFFFFFFFF8;
  v100 = swift_allocObject();
  *(v100 + 16) = v97;
  v101 = MEMORY[0x1E69E85E0];
  *(v100 + 24) = MEMORY[0x1E69E85E0];
  sub_1BD70B2E4(v96, v100 + v98, type metadata accessor for PaymentOfferSelectorOverlay);
  v102 = v100 + v99;
  v103 = v568;
  *(v102 + 64) = v567;
  *(v102 + 80) = v103;
  *(v102 + 96) = v569;
  *(v102 + 112) = v570;
  v104 = v564;
  *v102 = v563;
  *(v102 + 16) = v104;
  v105 = v566;
  *(v102 + 32) = v565;
  *(v102 + 48) = v105;
  sub_1BD70BF20(v534, v96, v506);
  sub_1BD70AB6C(&v563, &v555);
  v106 = sub_1BE052894();
  v107 = swift_allocObject();
  *(v107 + 16) = v106;
  *(v107 + 24) = v101;
  sub_1BD70B2E4(v96, v107 + v98, type metadata accessor for PaymentOfferSelectorOverlay);
  v108 = v107 + v99;
  v109 = v568;
  *(v108 + 64) = v567;
  *(v108 + 80) = v109;
  *(v108 + 96) = v569;
  *(v108 + 112) = v570;
  v110 = v564;
  *v108 = v563;
  *(v108 + 16) = v110;
  v111 = v566;
  *(v108 + 32) = v565;
  *(v108 + 48) = v111;
  sub_1BE051934();
  v477 = *(&v555 + 1);
  v112 = v555;
  v476 = v556;
  v113 = v521;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  v114 = v484;
  sub_1BE0516C4();
  sub_1BD70BF20(v534, v96, v506);
  v115 = v480;
  v116 = swift_allocObject();
  sub_1BD70B2E4(v96, v116 + v115, type metadata accessor for PaymentOfferSelectorOverlay);
  *&v545[0] = v479;
  type metadata accessor for PaymentOfferSelectorModel(0);
  sub_1BE051694();
  v117 = *(&v547 + 1);
  *v114 = v547;
  *(v114 + 8) = v117;
  v118 = v568;
  *(v114 + 80) = v567;
  *(v114 + 96) = v118;
  *(v114 + 112) = v569;
  *(v114 + 128) = v570;
  v119 = v566;
  *(v114 + 48) = v565;
  *(v114 + 64) = v119;
  v120 = v564;
  *(v114 + 16) = v563;
  *(v114 + 32) = v120;
  *(v114 + 136) = v478;
  v121 = v481;
  *(v114 + 144) = v481;
  *(v114 + 152) = v112;
  *(v114 + 160) = v477;
  *(v114 + 168) = v476;
  v122 = (v114 + v113[10]);
  *v122 = sub_1BD70C0B4;
  v122[1] = v116;
  v123 = (v114 + v113[11]);
  *v123 = 0;
  v123[1] = 0;
  v124 = (v114 + v113[12]);
  v125 = v508;
  *v124 = sub_1BD70AC00;
  v124[1] = v125;
  sub_1BD0DE19C(v541, &v555, &qword_1EBD3E550, &qword_1BE0C3260);
  v126 = v121;
  sub_1BE048964();
  v127 = sub_1BE051DF4();
  LODWORD(v112) = sub_1BE04FEE4();
  sub_1BE051EA4();
  v129 = v128;
  v131 = v130;
  LOBYTE(v125) = v482 & 1;
  v132 = v487;
  sub_1BD70B2E4(v114, v487, type metadata accessor for PaymentOfferSelectorTile);
  v133 = &v132[*(v522 + 36)];
  v135 = v504;
  v134 = v505;
  *v133 = v505;
  *(v133 + 1) = v135;
  *(v133 + 2) = v127;
  *(v133 + 6) = v112;
  *(v133 + 4) = v129;
  *(v133 + 5) = v131;
  v133[48] = v125;
  v136 = sub_1BD70536C();
  v144 = v519;
  if (v137)
  {
    if (v136 == v134 && v137 == v135)
    {
      v137, v137, v138, v139, v140, v141, v142, v143;
LABEL_16:
      v154 = 100.0;
      goto LABEL_20;
    }

    v145 = v137;
    v146 = sub_1BE053B84();
    v145, v147, v148, v149, v150, v151, v152, v153;
    if (v146)
    {
      goto LABEL_16;
    }
  }

  *&v555 = v530;
  *(&v555 + 1) = v144;
  sub_1BE0516A4();
  v155 = v547;
  v156 = sub_1BD2289E8(v134, v135);
  v158 = v157;

  if (v158)
  {
    v154 = 0.0;
  }

  else
  {
    v154 = v156;
  }

LABEL_20:
  v159 = v132;
  v160 = v488;
  sub_1BD0DE204(v159, v488, &qword_1EBD50EB0, &qword_1BE0F2208);
  *&v160[*(v524 + 36)] = v154;
  LOBYTE(v555) = v510;
  *(&v555 + 1) = v511;
  sub_1BE0516A4();
  v508, v161, v162, v163, v164, v165, v166, v167;
  v168 = v547;
  KeyPath = swift_getKeyPath();
  v170 = swift_allocObject();
  *(v170 + 16) = (v168 & 1) == 0;
  v171 = v483;
  sub_1BD0DE204(v160, v483, &qword_1EBD50EB8, &qword_1BE0F2210);
  v172 = &v171[*(v523 + 36)];
  *v172 = KeyPath;
  v172[1] = sub_1BD185ABC;
  v172[2] = v170;
  sub_1BD0DE204(v171, v517, &qword_1EBD50EC0, &qword_1BE0F2218);
  v173 = sub_1BD70536C();
  v58 = v527;
  v61 = v528;
  v179 = v530;
  v62 = v144;
  if (!v174)
  {
    goto LABEL_26;
  }

  if (v173 != v505 || v174 != v504)
  {
    v180 = v174;
    v181 = sub_1BE053B84();
    v180, v182, v183, v184, v185, v186, v187, v188;
    if (v181)
    {
      goto LABEL_25;
    }

LABEL_26:
    LOBYTE(v555) = v510;
    *(&v555 + 1) = v511;
    sub_1BE0516A4();
    sub_1BD0DE53C(v541, &qword_1EBD3E550, &qword_1BE0C3260);
    if (v547)
    {
      v189 = 1.0;
    }

    else
    {
      v189 = 0.0;
    }

    goto LABEL_29;
  }

  v174, v174, v505, v504, v175, v176, v177, v178;
LABEL_25:
  sub_1BD0DE53C(v541, &qword_1EBD3E550, &qword_1BE0C3260);
  v189 = 1.0;
LABEL_29:
  v190 = v486;
  sub_1BD0DE204(v517, v486, &qword_1EBD50EC0, &qword_1BE0F2218);
  v36 = v525;
  *(v190 + *(v525 + 36)) = v189;
  v191 = v190;
  v192 = v485;
  sub_1BD0DE204(v191, v485, &qword_1EBD50EC8, &qword_1BE0F2220);
  sub_1BD0DE204(v192, v61, &qword_1EBD50EC8, &qword_1BE0F2220);
  v86 = 0;
  v87 = v179;
LABEL_30:
  v194 = v531 + 56;
  v193 = *(v531 + 56);
  v195 = 1;
  (v193)(v61, v86, 1, v36);
  *&v555 = v87;
  *(&v555 + 1) = v62;
  v196 = v87;
  sub_1BE0516A4();
  v197 = v547;
  sub_1BD227E5C(v543);

  v531 = v194;
  v517 = v193;
  if (!*(&v543[0] + 1))
  {
    goto LABEL_58;
  }

  v555 = v543[0];
  v562 = v544;
  v561 = v543[6];
  v560 = v543[5];
  v558 = v543[3];
  v559 = v543[4];
  v557 = v543[2];
  v556 = v543[1];
  v198 = v62;
  v199 = v534;
  v200 = v534 + *(v533 + 32);
  v201 = *v200;
  v202 = *(v200 + 1);
  LODWORD(v511) = v201;
  LOBYTE(v547) = v201;
  v507 = v202;
  *(&v547 + 1) = v202;
  v510 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  LODWORD(v505) = LOBYTE(v545[0]) ^ 1;
  v504 = *MEMORY[0x1E69B9A18];
  v203 = v489;
  sub_1BD70BF20(v199, v489, type metadata accessor for PaymentOfferSelectorOverlay);
  v204 = v198;
  v205 = *(v526 + 80);
  v486 = ~v205;
  v206 = swift_allocObject();
  v488 = ((v205 + 16) & ~v205);
  sub_1BD70B2E4(v203, &v488[v206], type metadata accessor for PaymentOfferSelectorOverlay);
  *&v547 = v196;
  *(&v547 + 1) = v204;
  sub_1BE0516A4();
  v489 = *&v545[0];
  v207 = sub_1BD70536C();
  v508 = *(&v555 + 1);
  v509 = v555;
  v506 = v206;
  if (!v208)
  {
    sub_1BE048C84();
    goto LABEL_37;
  }

  v209 = v208;
  if (__PAIR128__(v208, v207) == v555)
  {
    sub_1BE048C84();
    v209, v210, v211, v212, v213, v214, v215, v216;
    goto LABEL_36;
  }

  v217 = sub_1BE053B84();
  sub_1BE048C84();
  v209, v218, v219, v220, v221, v222, v223, v224;
  if ((v217 & 1) == 0)
  {
LABEL_37:
    LODWORD(v487) = 1;
    goto LABEL_39;
  }

LABEL_36:
  LOBYTE(v547) = v511;
  *(&v547 + 1) = v507;
  sub_1BE0516A4();
  if (LOBYTE(v545[0]) == 1)
  {
    goto LABEL_37;
  }

  LODWORD(v487) = 0;
LABEL_39:
  v225 = v520;
  v485 = type metadata accessor for PaymentOfferSelectorOverlay;
  sub_1BD70BF20(v199, v520, type metadata accessor for PaymentOfferSelectorOverlay);
  sub_1BE0528A4();
  sub_1BD70AB6C(&v555, &v547);
  v226 = sub_1BE052894();
  v227 = (v205 + 32) & v486;
  v228 = &v532[v227 + 7] & 0xFFFFFFFFFFFFFFF8;
  v229 = swift_allocObject();
  *(v229 + 16) = v226;
  v230 = MEMORY[0x1E69E85E0];
  *(v229 + 24) = MEMORY[0x1E69E85E0];
  sub_1BD70B2E4(v225, v229 + v227, type metadata accessor for PaymentOfferSelectorOverlay);
  v231 = v229 + v228;
  v232 = v560;
  *(v231 + 64) = v559;
  *(v231 + 80) = v232;
  *(v231 + 96) = v561;
  *(v231 + 112) = v562;
  v233 = v556;
  *v231 = v555;
  *(v231 + 16) = v233;
  v234 = v558;
  *(v231 + 32) = v557;
  *(v231 + 48) = v234;
  sub_1BD70BF20(v534, v225, type metadata accessor for PaymentOfferSelectorOverlay);
  sub_1BD70AB6C(&v555, &v547);
  v235 = sub_1BE052894();
  v236 = swift_allocObject();
  *(v236 + 16) = v235;
  *(v236 + 24) = v230;
  sub_1BD70B2E4(v225, v236 + v227, type metadata accessor for PaymentOfferSelectorOverlay);
  v237 = v236 + v228;
  v238 = v560;
  *(v237 + 64) = v559;
  *(v237 + 80) = v238;
  *(v237 + 96) = v561;
  *(v237 + 112) = v562;
  v239 = v556;
  *v237 = v555;
  *(v237 + 16) = v239;
  v240 = v558;
  *(v237 + 32) = v557;
  *(v237 + 48) = v240;
  sub_1BE051934();
  v484 = *(&v547 + 1);
  v486 = v547;
  LOBYTE(v228) = v548;
  v241 = v521;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  v242 = v490;
  sub_1BE0516C4();
  sub_1BD70BF20(v534, v225, v485);
  v243 = v488;
  v244 = swift_allocObject();
  sub_1BD70B2E4(v225, &v243[v244], type metadata accessor for PaymentOfferSelectorOverlay);
  v538 = v489;
  type metadata accessor for PaymentOfferSelectorModel(0);
  sub_1BE051694();
  v245 = *(&v545[0] + 1);
  *v242 = *&v545[0];
  *(v242 + 8) = v245;
  v246 = v560;
  *(v242 + 80) = v559;
  *(v242 + 96) = v246;
  *(v242 + 112) = v561;
  *(v242 + 128) = v562;
  v247 = v558;
  *(v242 + 48) = v557;
  *(v242 + 64) = v247;
  v248 = v556;
  *(v242 + 16) = v555;
  *(v242 + 32) = v248;
  *(v242 + 136) = v487;
  v249 = v504;
  v250 = v486;
  *(v242 + 144) = v504;
  *(v242 + 152) = v250;
  *(v242 + 160) = v484;
  *(v242 + 168) = v228;
  v251 = (v242 + v241[10]);
  *v251 = sub_1BD70C0B4;
  v251[1] = v244;
  v252 = (v242 + v241[11]);
  *v252 = 0;
  v252[1] = 0;
  v253 = (v242 + v241[12]);
  v254 = v506;
  *v253 = sub_1BD70ABD4;
  v253[1] = v254;
  sub_1BD0DE19C(v543, &v547, &qword_1EBD3E550, &qword_1BE0C3260);
  v255 = v249;
  sub_1BE048964();
  v256 = sub_1BE051DF4();
  LODWORD(v249) = sub_1BE04FEE4();
  sub_1BE051EA4();
  v258 = v257;
  v260 = v259;
  LOBYTE(v241) = v505 & 1;
  v261 = v518;
  sub_1BD70B2E4(v242, v518, type metadata accessor for PaymentOfferSelectorTile);
  v262 = &v261[*(v522 + 36)];
  v264 = v508;
  v263 = v509;
  *v262 = v509;
  *(v262 + 1) = v264;
  *(v262 + 2) = v256;
  *(v262 + 6) = v249;
  *(v262 + 4) = v258;
  *(v262 + 5) = v260;
  v262[48] = v241;
  v265 = sub_1BD70536C();
  v273 = v530;
  v274 = v519;
  v275 = v507;
  if (v266)
  {
    if (v265 == v263 && v266 == v264)
    {
      v266, v266, v267, v268, v269, v270, v271, v272;
LABEL_44:
      v285 = 100.0;
      goto LABEL_48;
    }

    v276 = v266;
    v277 = sub_1BE053B84();
    v276, v278, v279, v280, v281, v282, v283, v284;
    v273 = v530;
    if (v277)
    {
      goto LABEL_44;
    }
  }

  *&v547 = v273;
  *(&v547 + 1) = v274;
  sub_1BE0516A4();
  v286 = *&v545[0];
  v287 = sub_1BD2289E8(v263, v264);
  v289 = v288;

  if (v289)
  {
    v285 = 0.0;
  }

  else
  {
    v285 = v287;
  }

LABEL_48:
  v290 = v494;
  sub_1BD0DE204(v518, v494, &qword_1EBD50EB0, &qword_1BE0F2208);
  *&v290[*(v524 + 36)] = v285;
  LOBYTE(v547) = v511;
  *(&v547 + 1) = v275;
  sub_1BE0516A4();
  v254, v291, v292, v293, v294, v295, v296, v297;
  v298 = v545[0];
  v299 = swift_getKeyPath();
  v300 = swift_allocObject();
  *(v300 + 16) = (v298 & 1) == 0;
  v301 = v491;
  sub_1BD0DE204(v290, v491, &qword_1EBD50EB8, &qword_1BE0F2210);
  v302 = (v301 + *(v523 + 36));
  *v302 = v299;
  v302[1] = sub_1BD185ABC;
  v302[2] = v300;
  v303 = v495;
  sub_1BD0DE204(v301, v495, &qword_1EBD50EC0, &qword_1BE0F2218);
  v304 = sub_1BD70536C();
  v36 = v525;
  v193 = v517;
  v62 = v274;
  if (!v305)
  {
    goto LABEL_54;
  }

  if (v304 != v509 || v305 != v508)
  {
    v312 = v305;
    v313 = sub_1BE053B84();
    v312, v314, v315, v316, v317, v318, v319, v320;
    if (v313)
    {
      goto LABEL_53;
    }

LABEL_54:
    LOBYTE(v547) = v511;
    *(&v547 + 1) = v275;
    sub_1BE0516A4();
    sub_1BD0DE53C(v543, &qword_1EBD3E550, &qword_1BE0C3260);
    if (LOBYTE(v545[0]))
    {
      v321 = 1.0;
    }

    else
    {
      v321 = 0.0;
    }

    goto LABEL_57;
  }

  v305, v305, v306, v307, v308, v309, v310, v311;
LABEL_53:
  sub_1BD0DE53C(v543, &qword_1EBD3E550, &qword_1BE0C3260);
  v321 = 1.0;
LABEL_57:
  v322 = v303;
  v323 = v493;
  sub_1BD0DE204(v322, v493, &qword_1EBD50EC0, &qword_1BE0F2218);
  *&v323[*(v36 + 36)] = v321;
  v324 = v323;
  v325 = v492;
  sub_1BD0DE204(v324, v492, &qword_1EBD50EC8, &qword_1BE0F2220);
  v58 = v527;
  sub_1BD0DE204(v325, v527, &qword_1EBD50EC8, &qword_1BE0F2220);
  v195 = 0;
LABEL_58:
  v326 = 1;
  (v193)(v58, v195, 1, v36);
  v327 = v530;
  *&v547 = v530;
  *(&v547 + 1) = v62;
  sub_1BE0516A4();
  v328 = *&v545[0];
  sub_1BD22826C(v545);

  v329 = v36;
  v330 = v62;
  v331 = *(&v545[0] + 1);
  if (*(&v545[0] + 1))
  {
    v332 = *&v545[0];
    v547 = v545[0];
    v554 = v546;
    v552 = v545[5];
    v553 = v545[6];
    v550 = v545[3];
    v551 = v545[4];
    v548 = v545[1];
    v549 = v545[2];
    v333 = v534;
    v334 = v534 + *(v533 + 32);
    v335 = *v334;
    v336 = *(v334 + 1);
    LODWORD(v511) = v335;
    LOBYTE(v538) = v335;
    v518 = v336;
    v539 = v336;
    v510 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516A4();
    LODWORD(v504) = v536 ^ 1;
    v495 = *MEMORY[0x1E69B9B90];
    v337 = sub_1BD70258C();
    v508 = v338;
    v509 = v337;
    v339 = v496;
    sub_1BD70BF20(v333, v496, type metadata accessor for PaymentOfferSelectorOverlay);
    v340 = *(v526 + 80);
    v491 = ~v340;
    v341 = (v340 + 16) & ~v340;
    v493 = &v532[v341];
    v526 = swift_allocObject();
    v494 = v341;
    sub_1BD70B2E4(v339, v526 + v341, type metadata accessor for PaymentOfferSelectorOverlay);
    v538 = v327;
    v539 = v330;
    sub_1BE0516A4();
    v496 = v536;
    v342 = sub_1BD70536C();
    v505 = v331;
    v506 = v332;
    if (v343)
    {
      v344 = v343;
      if (v342 == v332 && v343 == v331)
      {
        sub_1BE048C84();
        v344, v345, v346, v347, v348, v349, v350, v351;
      }

      else
      {
        v354 = sub_1BE053B84();
        sub_1BE048C84();
        v344, v355, v356, v357, v358, v359, v360, v361;
        if ((v354 & 1) == 0)
        {
          goto LABEL_67;
        }
      }

      LOBYTE(v538) = v511;
      v539 = v518;
      sub_1BE0516A4();
      if (v536 != 1)
      {
        LODWORD(v492) = 0;
LABEL_69:
        v507 = type metadata accessor for PaymentOfferSelectorOverlay;
        v362 = v520;
        sub_1BD70BF20(v333, v520, type metadata accessor for PaymentOfferSelectorOverlay);
        sub_1BE0528A4();
        sub_1BD70AB6C(&v547, &v538);
        v363 = sub_1BE052894();
        v364 = (v340 + 32) & v491;
        v365 = v340;
        v366 = &v532[v364 + 7] & 0xFFFFFFFFFFFFFFF8;
        v490 = v365;
        v367 = swift_allocObject();
        *(v367 + 16) = v363;
        v368 = MEMORY[0x1E69E85E0];
        *(v367 + 24) = MEMORY[0x1E69E85E0];
        sub_1BD70B2E4(v362, v367 + v364, type metadata accessor for PaymentOfferSelectorOverlay);
        v369 = v367 + v366;
        v370 = v552;
        *(v369 + 64) = v551;
        *(v369 + 80) = v370;
        *(v369 + 96) = v553;
        *(v369 + 112) = v554;
        v371 = v548;
        *v369 = v547;
        *(v369 + 16) = v371;
        v372 = v550;
        *(v369 + 32) = v549;
        *(v369 + 48) = v372;
        sub_1BD70BF20(v534, v362, v507);
        sub_1BD70AB6C(&v547, &v538);
        v373 = sub_1BE052894();
        v374 = swift_allocObject();
        *(v374 + 16) = v373;
        *(v374 + 24) = v368;
        sub_1BD70B2E4(v362, v374 + v364, type metadata accessor for PaymentOfferSelectorOverlay);
        v375 = v374 + v366;
        v376 = v552;
        *(v375 + 64) = v551;
        *(v375 + 80) = v376;
        *(v375 + 96) = v553;
        *(v375 + 112) = v554;
        v377 = v548;
        *v375 = v547;
        *(v375 + 16) = v377;
        v378 = v550;
        *(v375 + 32) = v549;
        *(v375 + 48) = v378;
        sub_1BE051934();
        v379 = v539;
        v532 = v538;
        LOBYTE(v366) = v540;
        v380 = v521;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
        v381 = v497;
        sub_1BE0516C4();
        sub_1BD70BF20(v534, v362, v507);
        v382 = swift_allocObject();
        sub_1BD70B2E4(v362, &v494[v382], type metadata accessor for PaymentOfferSelectorOverlay);
        v535 = v496;
        type metadata accessor for PaymentOfferSelectorModel(0);
        sub_1BE051694();
        v383 = v537;
        *v381 = v536;
        *(v381 + 8) = v383;
        v384 = v552;
        *(v381 + 80) = v551;
        *(v381 + 96) = v384;
        *(v381 + 112) = v553;
        *(v381 + 128) = v554;
        v385 = v550;
        *(v381 + 48) = v549;
        *(v381 + 64) = v385;
        v386 = v548;
        *(v381 + 16) = v547;
        *(v381 + 32) = v386;
        *(v381 + 136) = v492;
        v387 = v495;
        v388 = v532;
        *(v381 + 144) = v495;
        *(v381 + 152) = v388;
        *(v381 + 160) = v379;
        *(v381 + 168) = v366;
        v389 = (v381 + v380[10]);
        *v389 = sub_1BD70ABD0;
        v389[1] = v382;
        v390 = (v381 + v380[11]);
        v392 = v508;
        v391 = v509;
        *v390 = v509;
        v390[1] = v392;
        v393 = (v381 + v380[12]);
        v394 = v526;
        *v393 = sub_1BD70AB34;
        v393[1] = v394;
        sub_1BD0DE19C(v545, &v538, &qword_1EBD3E550, &qword_1BE0C3260);
        v395 = v387;
        sub_1BE048964();
        sub_1BD0D44B8(v391, v392);
        v396 = sub_1BE051DF4();
        LODWORD(v394) = sub_1BE04FEE4();
        sub_1BE051EA4();
        v398 = v397;
        v400 = v399;
        LOBYTE(v391) = v504 & 1;
        v401 = v499;
        sub_1BD70B2E4(v381, v499, type metadata accessor for PaymentOfferSelectorTile);
        v402 = &v401[*(v522 + 36)];
        v404 = v505;
        v403 = v506;
        *v402 = v506;
        *(v402 + 1) = v404;
        *(v402 + 2) = v396;
        *(v402 + 6) = v394;
        *(v402 + 4) = v398;
        *(v402 + 5) = v400;
        v402[48] = v391;
        v405 = sub_1BD70536C();
        v413 = v503;
        if (v406)
        {
          if (v405 == v403 && v406 == v404)
          {
            v406, v406, v407, v408, v409, v410, v411, v412;
LABEL_74:
            v423 = 100.0;
            goto LABEL_78;
          }

          v414 = v406;
          v415 = sub_1BE053B84();
          v414, v416, v417, v418, v419, v420, v421, v422;
          if (v415)
          {
            goto LABEL_74;
          }
        }

        v538 = v530;
        v539 = v519;
        sub_1BE0516A4();
        v424 = v536;
        v425 = sub_1BD2289E8(v403, v404);
        v427 = v426;

        if (v427)
        {
          v423 = 0.0;
        }

        else
        {
          v423 = v425;
        }

LABEL_78:
        v428 = v502;
        sub_1BD0DE204(v401, v502, &qword_1EBD50EB0, &qword_1BE0F2208);
        *&v428[*(v524 + 36)] = v423;
        LOBYTE(v538) = v511;
        v539 = v518;
        sub_1BE0516A4();
        v526, v429, v430, v431, v432, v433, v434, v435;
        sub_1BD0D4744(v509, v508, v436, v437, v438, v439, v440, v441);
        v442 = v536;
        v443 = swift_getKeyPath();
        v444 = swift_allocObject();
        *(v444 + 16) = (v442 & 1) == 0;
        v445 = v498;
        sub_1BD0DE204(v428, v498, &qword_1EBD50EB8, &qword_1BE0F2210);
        v446 = &v445[*(v523 + 36)];
        *v446 = v443;
        v446[1] = sub_1BD10DF54;
        v446[2] = v444;
        sub_1BD0DE204(v445, v413, &qword_1EBD50EC0, &qword_1BE0F2218);
        v447 = sub_1BD70536C();
        v353 = v525;
        v193 = v517;
        if (v448)
        {
          if (v447 == v506 && v448 == v404)
          {
            v448, v448, v449, v450, v451, v452, v453, v454;
LABEL_83:
            sub_1BD0DE53C(v545, &qword_1EBD3E550, &qword_1BE0C3260);
            v464 = 1.0;
LABEL_87:
            v465 = v501;
            sub_1BD0DE204(v413, v501, &qword_1EBD50EC0, &qword_1BE0F2218);
            *&v465[*(v353 + 36)] = v464;
            v466 = v465;
            v467 = v500;
            sub_1BD0DE204(v466, v500, &qword_1EBD50EC8, &qword_1BE0F2220);
            v352 = v512;
            sub_1BD0DE204(v467, v512, &qword_1EBD50EC8, &qword_1BE0F2220);
            v326 = 0;
            goto LABEL_88;
          }

          v455 = v448;
          v456 = sub_1BE053B84();
          v455, v457, v458, v459, v460, v461, v462, v463;
          if (v456)
          {
            goto LABEL_83;
          }
        }

        LOBYTE(v538) = v511;
        v539 = v518;
        sub_1BE0516A4();
        sub_1BD0DE53C(v545, &qword_1EBD3E550, &qword_1BE0C3260);
        if (v536)
        {
          v464 = 1.0;
        }

        else
        {
          v464 = 0.0;
        }

        goto LABEL_87;
      }
    }

    else
    {
      sub_1BE048C84();
    }

LABEL_67:
    LODWORD(v492) = 1;
    goto LABEL_69;
  }

  v352 = v512;
  v353 = v329;
LABEL_88:
  (v193)(v352, v326, 1, v353);
  v468 = v513;
  sub_1BD0DE19C(v528, v513, &qword_1EBD50ED0, &qword_1BE0F2228);
  v469 = v527;
  v470 = v514;
  sub_1BD0DE19C(v527, v514, &qword_1EBD50ED0, &qword_1BE0F2228);
  v471 = v515;
  sub_1BD0DE19C(v352, v515, &qword_1EBD50ED0, &qword_1BE0F2228);
  v472 = v516;
  sub_1BD0DE19C(v468, v516, &qword_1EBD50ED0, &qword_1BE0F2228);
  v473 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50ED8, &unk_1BE0F2230);
  sub_1BD0DE19C(v470, v472 + *(v473 + 48), &qword_1EBD50ED0, &qword_1BE0F2228);
  sub_1BD0DE19C(v471, v472 + *(v473 + 64), &qword_1EBD50ED0, &qword_1BE0F2228);
  sub_1BD0DE53C(v352, &qword_1EBD50ED0, &qword_1BE0F2228);
  sub_1BD0DE53C(v469, &qword_1EBD50ED0, &qword_1BE0F2228);
  sub_1BD0DE53C(v528, &qword_1EBD50ED0, &qword_1BE0F2228);
  sub_1BD0DE53C(v471, &qword_1EBD50ED0, &qword_1BE0F2228);
  sub_1BD0DE53C(v470, &qword_1EBD50ED0, &qword_1BE0F2228);
  return sub_1BD0DE53C(v468, &qword_1EBD50ED0, &qword_1BE0F2228);
}

void sub_1BD704C18(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45640, &qword_1BE0CC110);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BE0B6CA0;
  v5 = *MEMORY[0x1E69BB6C0];
  v6 = *MEMORY[0x1E69BB6F8];
  *(v4 + 32) = *MEMORY[0x1E69BB6C0];
  *(v4 + 40) = v6;
  type metadata accessor for PKAnalyticsSubject(0);
  v7 = v5;
  v8 = v6;
  v68 = sub_1BE052724();
  v4, v9, v10, v11, v12, v13, v14, v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0F1DC0;
  v17 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v18 = sub_1BE052434();
  v19 = MEMORY[0x1E69BA440];
  *(inited + 40) = v18;
  *(inited + 48) = v20;
  v21 = *v19;
  *(inited + 56) = *v19;
  *(inited + 64) = a1;
  v22 = *MEMORY[0x1E69BABE8];
  *(inited + 72) = a2;
  *(inited + 80) = v22;
  *(inited + 88) = sub_1BE052434();
  *(inited + 96) = v23;
  v24 = *MEMORY[0x1E69BA9D0];
  *(inited + 104) = *MEMORY[0x1E69BA9D0];
  v25 = v17;
  v26 = v21;
  sub_1BE048C84();
  v27 = v22;
  v28 = v24;
  sub_1BD709D1C();
  v67 = PKAnalyticsReportSwitchToggleResultValue();
  *(inited + 112) = sub_1BE052434();
  *(inited + 120) = v29;
  v30 = *MEMORY[0x1E69BACF8];
  *(inited + 128) = *MEMORY[0x1E69BACF8];
  v31 = v30;
  sub_1BD709E44();
  v66 = PKAnalyticsReportSwitchToggleResultValue();
  *(inited + 136) = sub_1BE052434();
  *(inited + 144) = v32;
  v33 = *MEMORY[0x1E69BA9F8];
  *(inited + 152) = *MEMORY[0x1E69BA9F8];
  v34 = v33;
  sub_1BD709F64();
  v35 = PKAnalyticsReportSwitchToggleResultValue();
  *(inited + 160) = sub_1BE052434();
  *(inited + 168) = v36;
  v37 = *MEMORY[0x1E69BAC80];
  *(inited + 176) = *MEMORY[0x1E69BAC80];
  v38 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
  sub_1BE0516A4();
  v39 = *&v69[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass];

  v40 = [v39 organizationName];
  *(inited + 184) = sub_1BE052434();
  *(inited + 192) = v41;
  v42 = *MEMORY[0x1E69BAC78];
  *(inited + 200) = *MEMORY[0x1E69BAC78];
  v43 = v42;
  sub_1BE0516A4();
  v44 = *&v69[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass];

  v45 = [v44 issuerCountryCode];
  if (v45)
  {
    v46 = sub_1BE052434();
    v48 = v47;

    *(inited + 208) = v46;
    *(inited + 216) = v48;
    v49 = *MEMORY[0x1E69BAD48];
    *(inited + 224) = *MEMORY[0x1E69BAD48];
    v50 = v49;
    sub_1BE0516A4();
    v51 = *&v69[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass];

    v52 = PKDefaultPaymentNetworkNameForPaymentPass();
    if (v52)
    {

      v53 = objc_opt_self();
      v54 = sub_1BE052434();
      v56 = v55;

      *(inited + 232) = v54;
      *(inited + 240) = v56;
      v57 = sub_1BD1AAF50(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
      swift_arrayDestroy();
      type metadata accessor for PKAnalyticsKey(0);
      sub_1BD70C044(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
      v58 = sub_1BE052224();
      v57, v59, v60, v61, v62, v63, v64, v65;
      [v53 subjects:v68 sendEvent:v58];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BD705084()
{
  v1 = v0;
  v2 = sub_1BE04FFA4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PaymentOfferSelectorOverlay(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0[1];
  v42 = *v0;
  v43 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
  sub_1BE0516A4();
  v11 = v41;
  v12 = *&v41[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController];
  [v12 clearCurrentSelectedPaymentOfferDetails];
  if (v12)
  {
    v13 = [v12 configuration];
    [v13 removeTransactionAmount];
  }

  v14 = [v12 removeCachedPaymentOffers];
  sub_1BD2294F8(v14, v15, v16, v17, v18, v19, v20, v21);

  v22 = MEMORY[0x1BFB3EDF0](0.5, 0.55, 0.0);
  MEMORY[0x1EEE9AC00](v22);
  *(&v40 - 2) = v1;
  sub_1BD70BF20(v1, &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentOfferSelectorOverlay);
  v23 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v24 = swift_allocObject();
  sub_1BD70B2E4(v9, v24 + v23, type metadata accessor for PaymentOfferSelectorOverlay);
  sub_1BE04FF94();
  sub_1BE04E7C4();
  v22, v25, v26, v27, v28, v29, v30, v31;
  v24, v32, v33, v34, v35, v36, v37, v38;
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BD70536C()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  v13 = *v0;
  v14 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
  sub_1BE0516A4();
  v4 = v11[0];
  sub_1BD227E5C(v9);

  if (!v9[1])
  {
LABEL_5:
    v13 = v2;
    v14 = v3;
    sub_1BE0516A4();
    v6 = v11[0];
    sub_1BD22826C(v11);

    if (v11[1])
    {
      if (v12)
      {
        v5 = v11[0];
        sub_1BE048C84();
        sub_1BD0DE53C(v11, &qword_1EBD3E550, &qword_1BE0C3260);
        return v5;
      }

      sub_1BD0DE53C(v11, &qword_1EBD3E550, &qword_1BE0C3260);
    }

    v13 = v2;
    v14 = v3;
    sub_1BE0516A4();
    sub_1BD227C90(&v13);

    if (v14)
    {
      if (v15)
      {
        v5 = v13;
        sub_1BE048C84();
        sub_1BD0DE53C(&v13, &qword_1EBD3E550, &qword_1BE0C3260);
        return v5;
      }

      sub_1BD0DE53C(&v13, &qword_1EBD3E550, &qword_1BE0C3260);
    }

    v5 = v1[2];
    sub_1BE048C84();
    return v5;
  }

  if ((v10 & 1) == 0)
  {
    sub_1BD0DE53C(v9, &qword_1EBD3E550, &qword_1BE0C3260);
    goto LABEL_5;
  }

  v5 = v9[0];
  sub_1BE048C84();
  sub_1BD0DE53C(v9, &qword_1EBD3E550, &qword_1BE0C3260);
  return v5;
}

void sub_1BD70552C()
{
  v1 = v0;
  v2 = sub_1BE04FFA4();
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PaymentOfferSelectorOverlay(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v0;
  v10 = v0[1];
  v64 = *v0;
  v65 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
  sub_1BE0516A4();
  v11 = v63;
  v12 = sub_1BD228864();

  if (v12)
  {
LABEL_7:
    v26 = MEMORY[0x1BFB3EDF0](0.5, 1.0, 0.0);
    MEMORY[0x1EEE9AC00](v26);
    *(&v59 - 2) = v1;
    sub_1BE04E7D4();
    v26, v27, v28, v29, v30, v31, v32, v33;
    v34 = MEMORY[0x1BFB3EDF0](0.5, 0.55, 0.0);
    MEMORY[0x1EEE9AC00](v34);
    *(&v59 - 2) = v1;
    sub_1BD70BF20(v1, v8, type metadata accessor for PaymentOfferSelectorOverlay);
    v35 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v36 = swift_allocObject();
    sub_1BD70B2E4(v8, v36 + v35, type metadata accessor for PaymentOfferSelectorOverlay);
    sub_1BE04FF94();
    sub_1BE04E7C4();
    v34, v37, v38, v39, v40, v41, v42, v43;
    v36, v44, v45, v46, v47, v48, v49, v50;
    (*(v61 + 8))(v4, v62);
    return;
  }

  v60 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v9;
  v65 = v10;
  sub_1BE0516A4();
  v13 = v63;
  v14 = OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController;
  v15 = *&v63[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController];
  if (v15)
  {
    v16 = [v15 fallbackSelectedPaymentOfferForType_];
    if (v16)
    {
      v24 = v16;
      v25 = *&v13[v14];
      if (v25)
      {
        v25 = [v25 updateCurrentSelectedPaymentOffer:v24 updateReason:3];
      }

      sub_1BD2294F8(v25, v17, v18, v19, v20, v21, v22, v23);

      v8 = v60;
      goto LABEL_7;
    }
  }

  v51 = MEMORY[0x1BFB3EDF0](0.5, 1.0, 0.0);
  MEMORY[0x1EEE9AC00](v51);
  *(&v59 - 2) = v1;
  sub_1BE04E7D4();
  v51, v52, v53, v54, v55, v56, v57, v58;
}

void sub_1BD705918()
{
  v1 = v0;
  v2 = sub_1BE04FFA4();
  v58 = *(v2 - 8);
  v59 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PaymentOfferSelectorOverlay(0);
  v57 = *(v5 - 8);
  v6 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = *v0;
  v7 = v0[1];
  v61 = *v0;
  v62 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
  sub_1BE0516A4();
  v9 = v60;
  KeyPath = swift_getKeyPath();
  v61 = v9;
  sub_1BD70C044(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
  sub_1BE04B594();
  KeyPath, v11, v12, v13, v14, v15, v16, v17;
  v18 = *&v9[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__selectedPaymentOffer];
  if (!v18)
  {

LABEL_5:
    v61 = v8;
    v62 = v7;
    sub_1BE0516A4();
    v29 = v60;
    v30 = sub_1BD22B994();

    v31 = MEMORY[0x1BFB3EDF0](0.5, 1.0, 0.0);
    MEMORY[0x1EEE9AC00](v31);
    *(&v56 - 2) = v1;
    sub_1BE04E7D4();
    v31, v32, v33, v34, v35, v36, v37, v38;
    if ((v30 & 1) == 0)
    {
      return;
    }

    goto LABEL_6;
  }

  v19 = v18;
  v20 = [v19 type];

  if (v20 != 2)
  {
    goto LABEL_5;
  }

  v21 = MEMORY[0x1BFB3EDF0](0.5, 1.0, 0.0);
  MEMORY[0x1EEE9AC00](v21);
  *(&v56 - 2) = v1;
  sub_1BE04E7D4();
  v21, v22, v23, v24, v25, v26, v27, v28;
LABEL_6:
  v39 = MEMORY[0x1BFB3EDF0](0.5, 0.55, 0.0);
  MEMORY[0x1EEE9AC00](v39);
  *(&v56 - 2) = v1;
  sub_1BD70BF20(v1, &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentOfferSelectorOverlay);
  v40 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v41 = swift_allocObject();
  sub_1BD70B2E4(&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v41 + v40, type metadata accessor for PaymentOfferSelectorOverlay);
  sub_1BE04FF94();
  sub_1BE04E7C4();
  v39, v42, v43, v44, v45, v46, v47, v48;
  v41, v49, v50, v51, v52, v53, v54, v55;
  (*(v58 + 8))(v4, v59);
}

uint64_t sub_1BD705D4C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1BE04EC54();
  v4 = sub_1BE0501D4();
  type metadata accessor for PaymentOfferSelectorOverlay(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  if (v19)
  {
    v5 = 10.0;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = sub_1BE04EC54();
  v7 = sub_1BE0501D4();
  v8 = sub_1BE0513F4();
  sub_1BE0516A4();
  v9 = sub_1BE051454();
  v8, v10, v11, v12, v13, v14, v15, v16;
  v17 = sub_1BE04EC54();
  result = sub_1BE0501D4();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = 1;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v9;
  *(a2 + 56) = v17;
  *(a2 + 64) = result;
  return result;
}

uint64_t sub_1BD705E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30[1] = a4;
  v5 = sub_1BE04FFA4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PaymentOfferSelectorOverlay(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = MEMORY[0x1BFB3EDF0](0.5, 0.55, 0.0);
  v30[4] = a1;
  sub_1BD70BF20(a1, v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentOfferSelectorOverlay);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  sub_1BD70B2E4(v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for PaymentOfferSelectorOverlay);
  sub_1BE04FF94();
  sub_1BE04E7C4();
  v12, v15, v16, v17, v18, v19, v20, v21;
  v14, v22, v23, v24, v25, v26, v27, v28;
  return (*(v6 + 8))(v8, v5);
}

void sub_1BD7060A4(uint64_t a2@<X3>, _BYTE *a3@<X8>)
{
  type metadata accessor for PaymentOfferSelectorOverlay(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  if (v13 == 1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150, &unk_1BE0DAED0), sub_1BE0516A4(), v14))
  {
    v10 = *a2;
    v11 = *(a2 + 8);
    if (v13 == *a2 && v14 == v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_1BE053B84();
    }

    v14, v5, v10, v11, v6, v7, v8, v9;
  }

  else
  {
    v12 = 0;
  }

  *a3 = v12 & 1;
}

void sub_1BD7061BC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x1BFB3EDF0](0.5, 1.0, 0.0);
  sub_1BE04E7D4();
  v5, v6, v7, v8, v9, v10, v11, v12;
}

double sub_1BD706248(uint64_t a1, char a2, uint64_t *a3)
{
  if (a2)
  {
    sub_1BE048C84();
  }

  type metadata accessor for PaymentOfferSelectorOverlay(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150, &unk_1BE0DAED0);
  sub_1BE0516B4();
  return result;
}

void sub_1BD7062E4(uint64_t a1)
{
  v1 = a1;
  v2 = sub_1BD70632C(a1);
  v4 = v3;
  sub_1BD704C18(v2, v3);
  v4, v5, v6, v7, v8, v9, v10, v11;
  sub_1BD706344(v1);
}

void sub_1BD706344(unsigned __int8 a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v254 - v5;
  v7 = sub_1BE04FFA4();
  v260 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v254 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PaymentOfferSelectorOverlay(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v254 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v254 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v254 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v254 - v20;
  MEMORY[0x1EEE9AC00](v22);
  if (a1 <= 2u)
  {
    if (!a1)
    {
      v74 = v25;
      v75 = &v254 - v24;
      v76 = v2[1];
      *&v261 = *v2;
      *(&v261 + 1) = v76;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
      sub_1BE0516A4();
      v77 = v264;
      KeyPath = swift_getKeyPath();
      *&v261 = v77;
      sub_1BD70C044(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
      sub_1BE04B594();
      KeyPath, v79, v80, v81, v82, v83, v84, v85;
      v86 = *&v77[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__installmentPlanSelectionModel];
      v87 = v86;

      if (!v86)
      {
        return;
      }

      sub_1BD70BF20(v2, v75, type metadata accessor for PaymentOfferSelectorOverlay);
      v88 = (v74[80] + 16) & ~v74[80];
      v89 = swift_allocObject();
      sub_1BD70B2E4(v75, v89 + v88, type metadata accessor for PaymentOfferSelectorOverlay);
      v90 = sub_1BD70C0B8;
LABEL_32:
      sub_1BD8C1B80(0, 1, v90, v89);

      v89, v147, v148, v149, v150, v151, v152, v153;
      return;
    }

    v258 = &v254 - v24;
    v259 = v25;
    v257 = v2;
    if (a1 == 1)
    {
      v256 = v7;
      v35 = *v2;
      v36 = v2[1];
      *&v261 = v35;
      *(&v261 + 1) = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
      sub_1BE0516A4();
      v37 = v264;
      v38 = sub_1BD228AA4();

      if (v38)
      {
        *&v261 = v35;
        *(&v261 + 1) = v36;
        sub_1BE0516A4();
        v39 = v264;
        v40 = objc_opt_self();
        *&v261 = v35;
        *(&v261 + 1) = v36;
        sub_1BE0516A4();
        v41 = v264;
        v42 = *(v264 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass);

        v43 = [objc_allocWithZone(MEMORY[0x1E69B9208]) initWithPaymentPass_];
        v44 = [v40 postPurchaseFollowupWithCriteria:v38 passDetails:v43];

        v52 = *&v39[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController];
        if (v52)
        {
          v52 = [v52 updateCurrentSelectedPaymentOffer:v44 updateReason:3];
        }

        sub_1BD2294F8(v52, v45, v46, v47, v48, v49, v50, v51);

        v53 = MEMORY[0x1BFB3EDF0](0.5, 0.55, 0.0);
        MEMORY[0x1EEE9AC00](v53);
        v54 = v257;
        v55 = v258;
        *(&v254 - 2) = v257;
        sub_1BD70BF20(v54, v55, type metadata accessor for PaymentOfferSelectorOverlay);
        v56 = (v259[80] + 16) & ~v259[80];
        v57 = swift_allocObject();
        sub_1BD70B2E4(v55, v57 + v56, type metadata accessor for PaymentOfferSelectorOverlay);
        sub_1BE04FF94();
        sub_1BE04E7C4();

        v53, v58, v59, v60, v61, v62, v63, v64;
        v57, v65, v66, v67, v68, v69, v70, v71;
        (v260)[1](v9, v256);
      }
    }

    else
    {
      v256 = v23;
      sub_1BD70BF20(v2, v21, type metadata accessor for PaymentOfferSelectorOverlay);
      sub_1BD70BF20(v21, v18, type metadata accessor for PaymentOfferSelectorOverlay);
      v91 = v259[80];
      v260 = swift_allocObject();
      sub_1BD70B2E4(v21, v260 + ((v91 + 16) & ~v91), type metadata accessor for PaymentOfferSelectorOverlay);
      v92 = v2;
      v93 = *v2;
      v94 = v92[1];
      *&v261 = v93;
      *(&v261 + 1) = v94;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
      sub_1BE0516A4();
      v95 = v264;
      v96 = *(v264 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
      v97 = v96;

      if (v96)
      {
        v98 = [v97 configuration];

        [v98 context];
      }

      *&v261 = v93;
      *(&v261 + 1) = v94;
      sub_1BE0516A4();
      v154 = v264;
      v155 = *(v264 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass);

      v156 = [v155 uniqueID];
      LODWORD(v155) = PKHasSeenPaymentOfferRewardsExplanationScreen();

      if (v155)
      {
        v157 = &v18[*(v256 + 36)];
        v159 = *(v157 + 1);
        v160 = *(v157 + 2);
        v161 = *(v157 + 3);
        *&v261 = *v157;
        v158 = v261;
        *(&v261 + 1) = v159;
        *v262 = v160;
        *&v262[8] = v161;
        v264 = 0uLL;
        *&v265[0] = 0;
        sub_1BD70B22C(v261, v159, v160);
        sub_1BE048964();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50CC0, &qword_1BE0F1FC0);
        sub_1BE0516B4();
        v260, v162, v163, v164, v165, v166, v167, v168;
        sub_1BD708C60(v158, v159, v160, v169, v170, v171, v172, v173);
        v181 = v161;
      }

      else
      {
        v182 = sub_1BE0528D4();
        (*(*(v182 - 8) + 56))(v6, 1, 1, v182);
        v183 = v258;
        sub_1BD70BF20(v257, v258, type metadata accessor for PaymentOfferSelectorOverlay);
        sub_1BE0528A4();
        v184 = v260;
        sub_1BE048964();
        v185 = sub_1BE052894();
        v186 = (v91 + 32) & ~v91;
        v187 = swift_allocObject();
        v188 = MEMORY[0x1E69E85E0];
        v187[2] = v185;
        v187[3] = v188;
        sub_1BD70B2E4(v183, v187 + v186, type metadata accessor for PaymentOfferSelectorOverlay);
        v189 = (v187 + ((v11 + v186 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v189 = sub_1BD70AE3C;
        v189[1] = v184;
        v190 = sub_1BD122C00(0, 0, v6, &unk_1BE0F2288, v187);
        v184, v191, v192, v193, v194, v195, v196, v197;
        v181 = v190;
      }

      v181, v174, v175, v176, v177, v178, v179, v180;
      sub_1BD70B34C(v18, type metadata accessor for PaymentOfferSelectorOverlay);
    }
  }

  else
  {
    if (a1 <= 4u)
    {
      if (a1 == 3)
      {
        v256 = v7;
        v258 = &v254 - v24;
        v26 = v25;
        sub_1BD70BF20(v2, v15, type metadata accessor for PaymentOfferSelectorOverlay);
        sub_1BD70BF20(v15, v12, type metadata accessor for PaymentOfferSelectorOverlay);
        v27 = v26[80];
        v28 = (v27 + 16) & ~v27;
        v255 = v27;
        v259 = swift_allocObject();
        v254 = v28;
        sub_1BD70B2E4(v15, &v259[v28], type metadata accessor for PaymentOfferSelectorOverlay);
        v257 = v2;
        v29 = *v2;
        v30 = v2[1];
        *&v261 = v29;
        *(&v261 + 1) = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
        sub_1BE0516A4();
        v31 = v264;
        v32 = *(v264 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
        v33 = v32;

        if (v32)
        {
          v34 = [v33 configuration];

          [v34 context];
        }

        *&v261 = v29;
        *(&v261 + 1) = v30;
        sub_1BE0516A4();
        v198 = v264;
        v199 = *(v264 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass);

        v200 = [v199 uniqueID];
        LODWORD(v199) = PKHasSeenPaymentOfferRewardsExplanationScreen();

        if (v199)
        {
          v201 = v12[1];
          *&v261 = *v12;
          *(&v261 + 1) = v201;
          sub_1BE0516A4();
          v202 = v264;
          sub_1BD22B2AC(&v261);
          if ((v263 & 1) == 0)
          {
            v264 = v261;
            v265[0] = *v262;
            *(v265 + 9) = *&v262[9];
            sub_1BD22B534(&v264);
          }

          v203 = MEMORY[0x1BFB3EDF0](0.5, 0.55, 0.0);
          MEMORY[0x1EEE9AC00](v203);
          *(&v254 - 2) = v12;
          v204 = v258;
          sub_1BD70BF20(v12, v258, type metadata accessor for PaymentOfferSelectorOverlay);
          v205 = v254;
          v206 = swift_allocObject();
          sub_1BD70B2E4(v204, v206 + v205, type metadata accessor for PaymentOfferSelectorOverlay);
          sub_1BE04FF94();
          sub_1BE04E7C4();
          v259, v207, v208, v209, v210, v211, v212, v213;
          v203, v214, v215, v216, v217, v218, v219, v220;
          v206, v221, v222, v223, v224, v225, v226, v227;
          (v260)[1](v9, v256);
        }

        else
        {
          v228 = v255;
          v229 = sub_1BE0528D4();
          (*(*(v229 - 8) + 56))(v6, 1, 1, v229);
          v230 = v258;
          sub_1BD70BF20(v257, v258, type metadata accessor for PaymentOfferSelectorOverlay);
          sub_1BE0528A4();
          v231 = v259;
          sub_1BE048964();
          v232 = sub_1BE052894();
          v233 = (v228 + 32) & ~v228;
          v234 = swift_allocObject();
          v235 = MEMORY[0x1E69E85E0];
          v234[2] = v232;
          v234[3] = v235;
          sub_1BD70B2E4(v230, v234 + v233, type metadata accessor for PaymentOfferSelectorOverlay);
          v236 = (v234 + ((v11 + v233 + 7) & 0xFFFFFFFFFFFFFFF8));
          *v236 = sub_1BD70ACF4;
          v236[1] = v231;
          v237 = sub_1BD122C00(0, 0, v6, &unk_1BE0F2280, v234);
          v237, v238, v239, v240, v241, v242, v243, v244;
          v231, v245, v246, v247, v248, v249, v250, v251;
        }

        sub_1BD70B34C(v12, type metadata accessor for PaymentOfferSelectorOverlay);
        return;
      }

      v99 = v23;
      v100 = *v2;
      v101 = v2[1];
      *&v261 = *v2;
      *(&v261 + 1) = v101;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
      sub_1BE0516A4();
      v102 = v264;
      v103 = *(v264 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
      v104 = v103;

      if (!v103 || (v105 = v2, v106 = [v104 selectedOfferDetails], v104, v107 = objc_msgSend(v106, sel_selectedPaymentOffer), v106, v2 = v105, !v107))
      {
LABEL_46:
        v252 = (v2 + *(v99 + 36));
        v253 = v252[1];
        v261 = *v252;
        *v262 = v253;
        *&v265[0] = 0;
        v264 = 1uLL;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50CC0, &qword_1BE0F1FC0);
        sub_1BE0516B4();
        return;
      }

      *&v261 = v100;
      *(&v261 + 1) = v101;
      sub_1BE0516A4();
      v108 = v264;
      v109 = *(v264 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
      v110 = v109;

      if (!v109 || (v111 = [v110 configuration], v110, !v111))
      {
LABEL_45:
        v2 = v105;

        goto LABEL_46;
      }

      v112 = [v111 userEnteredAmount];
      if (v112)
      {
        v113 = v112;
        v114 = [v112 amount];
        if (v114)
        {
          v115 = v114;
          [v111 updateTransactionAmount_];

          v116 = [v113 currency];
          if (v116)
          {
            v117 = v116;
            [v111 updateCurrencyCode_];

            *&v261 = v100;
            *(&v261 + 1) = v101;
            sub_1BE0516A4();
            v125 = v264;
            v126 = *(v264 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
            if (v126)
            {
              v126 = [v126 updateCurrentSelectedPaymentOffer:v107 updateReason:3];
            }

            sub_1BD2294F8(v126, v118, v119, v120, v121, v122, v123, v124);

            goto LABEL_44;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }

      v113 = v107;
      v125 = v111;
LABEL_44:

      v107 = v125;
      goto LABEL_45;
    }

    if (a1 == 5)
    {
      v72 = v2[1];
      *&v261 = *v2;
      *(&v261 + 1) = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
      sub_1BE0516A4();
      v73 = v264;
      sub_1BD229120();

      return;
    }

    v259 = v25;
    v127 = &v254 - v24;
    v128 = *v2;
    v129 = v2[1];
    *&v261 = *v2;
    *(&v261 + 1) = v129;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
    sub_1BE0516A4();
    v130 = v264;
    v131 = *(v264 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);
    v132 = v131;

    if (v131)
    {
      v133 = [v132 configuration];

      [v133 removeTransactionAmount];
    }

    *&v261 = v128;
    *(&v261 + 1) = v129;
    sub_1BE0516A4();
    v134 = v264;
    v135 = *(v264 + OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController);

    [v135 removeCachedPaymentOffers];
    *&v261 = v128;
    *(&v261 + 1) = v129;
    sub_1BE0516A4();
    v136 = v264;
    v137 = swift_getKeyPath();
    *&v261 = v136;
    sub_1BD70C044(&qword_1EBD3E558, type metadata accessor for PaymentOfferSelectorModel, &unk_1BE0C3238);
    sub_1BE04B594();
    v137, v138, v139, v140, v141, v142, v143, v144;
    v145 = *&v136[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel__installmentPlanSelectionModel];
    v87 = v145;

    if (v145)
    {
      sub_1BD70BF20(v2, v127, type metadata accessor for PaymentOfferSelectorOverlay);
      v146 = (v259[80] + 16) & ~v259[80];
      v89 = swift_allocObject();
      sub_1BD70B2E4(v127, v89 + v146, type metadata accessor for PaymentOfferSelectorOverlay);
      v90 = sub_1BD70ACF0;
      goto LABEL_32;
    }
  }
}

double sub_1BD70751C(uint64_t a1)
{
  type metadata accessor for PaymentOfferSelectorOverlay(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150, &unk_1BE0DAED0);
  sub_1BE0516B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

uint64_t sub_1BD7075E0(uint64_t a1)
{
  v24 = sub_1BE04F3D4();
  v2 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v23 - v6);
  v8 = sub_1BE04E664();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PaymentOfferSelectorOverlay(0);
  sub_1BD0DE19C(a1 + *(v12 + 28), v7, &qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    v13 = *v7;
    sub_1BE052C44();
    v14 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    v13, v15, v16, v17, v18, v19, v20, v21;
    (*(v2 + 8))(v4, v24);
  }

  sub_1BE04E654();
  return (*(v9 + 8))(v11, v8);
}

double sub_1BD707868(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, void *))
{
  v3 = a1[1];
  v7 = *a1;
  v8 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
  v4 = sub_1BE0516A4();
  a2(&v7, v4);

  if (v8)
  {
    sub_1BE048C84();
    sub_1BD0DE53C(&v7, &qword_1EBD3E550, &qword_1BE0C3260);
  }

  type metadata accessor for PaymentOfferSelectorOverlay(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150, &unk_1BE0DAED0);
  sub_1BE0516B4();
  return result;
}

void sub_1BD70795C(uint64_t a1)
{
  v3 = sub_1BE04FFA4();
  v80 = *(v3 - 8);
  v81 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v79 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PaymentOfferSelectorOverlay(0);
  v78 = *(v5 - 8);
  v6 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C50, &qword_1BE0F2290);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v78 - v11);
  sub_1BD0DE19C(a1, &v78 - v11, &unk_1EBD57C50, &qword_1BE0F2290);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    if (*v12)
    {
      v14 = v13;
      v15 = sub_1BE04A844();

      v16 = (v1 + *(v5 + 48));
      v18 = v16[1];
      v83 = *v16;
      v17 = v83;
      v84 = v18;
      v82 = v15;
      sub_1BE048964();
      v19 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0, &qword_1BE0DAEF0);
      sub_1BE0516B4();

      v18, v20, v21, v22, v23, v24, v25, v26;
    }
  }

  else
  {
    sub_1BD70B2E4(v12, v9, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult);
    v27 = *(v9 + 1);
    v28 = v9;
    if (v27)
    {
      v29 = v1[1];
      v30 = v1;
      v83 = *v1;
      v84 = v29;
      v31 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
      sub_1BE0516A4();
      v39 = v82;
      v40 = *&v82[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController];
      if (v40)
      {
        v40 = [v40 updateCurrentSelectedPaymentOffer:v31 updateReason:3];
      }

      sub_1BD2294F8(v40, v32, v33, v34, v35, v36, v37, v38);

      v41 = MEMORY[0x1BFB3EDF0](0.5, 0.55, 0.0);
      MEMORY[0x1EEE9AC00](v41);
      *(&v78 - 2) = v30;
      sub_1BD70BF20(v30, &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentOfferSelectorOverlay);
      v42 = (*(v78 + 80) + 16) & ~*(v78 + 80);
      v43 = swift_allocObject();
      sub_1BD70B2E4(&v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v43 + v42, type metadata accessor for PaymentOfferSelectorOverlay);
      v44 = v79;
      sub_1BE04FF94();
      sub_1BE04E7C4();

      v41, v45, v46, v47, v48, v49, v50, v51;
      v43, v52, v53, v54, v55, v56, v57, v58;
      (*(v80 + 8))(v44, v81);
      sub_1BD70B34C(v28, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult);
    }

    else
    {
      v59 = *v1;
      v60 = v1[1];
      v83 = *v1;
      v84 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
      sub_1BE0516A4();
      v61 = v82;
      v62 = *&v82[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController];
      v63 = v62;

      if (v62)
      {
        v64 = [v63 configuration];

        [v64 removeTransactionAmount];
      }

      v83 = v59;
      v84 = v60;
      sub_1BE0516A4();
      v65 = v82;
      v66 = *&v82[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController];

      [v66 removeCachedPaymentOffers];
      v83 = v59;
      v84 = v60;
      sub_1BE0516A4();
      v67 = v82;
      v68 = *&v82[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController];
      [v68 clearCurrentSelectedPaymentOfferDetails];
      if (v68)
      {
        v69 = [v68 configuration];
        [v69 removeTransactionAmount];
      }

      v70 = [v68 removeCachedPaymentOffers];
      sub_1BD2294F8(v70, v71, v72, v73, v74, v75, v76, v77);

      sub_1BD70B34C(v28, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult);
    }
  }
}

double sub_1BD707F10(uint64_t a1)
{
  type metadata accessor for PaymentOfferSelectorOverlay(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50CC0, &qword_1BE0F1FC0);
  sub_1BE0516B4();
  return result;
}

uint64_t sub_1BD707F7C(void *a1)
{
  v2 = sub_1BE04FFA4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for PaymentOfferSelectorOverlay(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a1[1];
  *&v31 = *a1;
  *(&v31 + 1) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
  sub_1BE0516A4();
  v11 = v34;
  sub_1BD22B2AC(&v31);
  if ((v33 & 1) == 0)
  {
    v34 = v31;
    v35[0] = *v32;
    *(v35 + 9) = *&v32[9];
    sub_1BD22B534(&v34);
  }

  v12 = MEMORY[0x1BFB3EDF0](0.5, 0.55, 0.0);
  MEMORY[0x1EEE9AC00](v12);
  *&v30[-16] = a1;
  sub_1BD70BF20(a1, &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PaymentOfferSelectorOverlay);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  sub_1BD70B2E4(v9, v14 + v13, type metadata accessor for PaymentOfferSelectorOverlay);
  sub_1BE04FF94();
  sub_1BE04E7C4();
  v12, v15, v16, v17, v18, v19, v20, v21;
  v14, v22, v23, v24, v25, v26, v27, v28;
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BD708228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  sub_1BE0528A4();
  v6[15] = sub_1BE052894();
  v8 = sub_1BE052844();
  v6[16] = v8;
  v6[17] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BD7082C4, v8, v7);
}

uint64_t sub_1BD7082C4()
{
  v1 = v0[12];
  v3 = *v1;
  v2 = v1[1];
  v0[9] = v3;
  v0[10] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
  sub_1BE0516A4();
  v0[18] = v0[11];
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_1BD708388;

  return sub_1BD22BB48();
}

uint64_t sub_1BD708388(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  *(*v1 + 160) = a1;

  v4 = *(v2 + 136);
  v5 = *(v2 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1BD7084D0, v5, v4);
}

uint64_t sub_1BD7084D0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 160);
  v10 = *(v8 + 112);
  v11 = *(v8 + 96);
  v12 = *(v8 + 104);
  *(v8 + 120), a2, a3, a4, a5, a6, a7, a8;
  v13 = (v11 + *(type metadata accessor for PaymentOfferSelectorOverlay(0) + 36));
  v14 = v13[1];
  *(v8 + 16) = *v13;
  *(v8 + 32) = v14;
  *(v8 + 48) = v12;
  *(v8 + 56) = v10;
  *(v8 + 64) = v9;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50CC0, &qword_1BE0F1FC0);
  sub_1BE0516B4();
  v15 = *(v8 + 8);

  return v15();
}

void sub_1BD7085C0(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000012;
  v3 = *v1;
  v4 = "SELECT_PAYMENT_METHOD";
  v5 = 0xD000000000000019;
  if (!*v1)
  {
    v5 = 0xD000000000000012;
    v4 = "installmentPlanDetails";
  }

  if (v3 == 1)
  {
    v5 = 0xD000000000000016;
    v4 = "rewardsRedemptions";
  }

  if (v3 == 2)
  {
    v6 = "erSelectorOverlay.swift:";
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t sub_1BD7086E0()
{
  result = qword_1EBD50CD0;
  if (!qword_1EBD50CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50CA8, &qword_1BE0F1FA0);
    sub_1BD70876C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50CD0);
  }

  return result;
}

unint64_t sub_1BD70876C()
{
  result = qword_1EBD50CD8;
  if (!qword_1EBD50CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50CB8, &unk_1BE0F1FB0);
    sub_1BD0DE4F4(&qword_1EBD50CE0, &qword_1EBD50CE8, &qword_1BE0F1FD0, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50CD8);
  }

  return result;
}

unint64_t sub_1BD708824()
{
  result = qword_1EBD50CF0;
  if (!qword_1EBD50CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50CF0);
  }

  return result;
}

unint64_t sub_1BD708878()
{
  result = qword_1EBD50CF8;
  if (!qword_1EBD50CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50CC8, &qword_1BE0F1FC8);
    sub_1BD708904();
    sub_1BD708A70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50CF8);
  }

  return result;
}

unint64_t sub_1BD708904()
{
  result = qword_1EBD50D00;
  if (!qword_1EBD50D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50D08, &qword_1BE0F1FD8);
    sub_1BD70BCFC(&qword_1EBD50D10, &qword_1EBD50D18, &qword_1BE0F1FE0, sub_1BD10CC00);
    sub_1BD7089BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50D00);
  }

  return result;
}

unint64_t sub_1BD7089BC()
{
  result = qword_1EBD50D20;
  if (!qword_1EBD50D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50D28, &qword_1BE0F1FE8);
    sub_1BD70C044(&qword_1EBD50D30, type metadata accessor for PaymentOfferRewardsAmountEntry, &unk_1BE0C8830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50D20);
  }

  return result;
}

unint64_t sub_1BD708A70()
{
  result = qword_1EBD50D38;
  if (!qword_1EBD50D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50D40, &qword_1BE0F1FF0);
    sub_1BD708AFC();
    sub_1BD708BB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50D38);
  }

  return result;
}

unint64_t sub_1BD708AFC()
{
  result = qword_1EBD50D48;
  if (!qword_1EBD50D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50D50, &qword_1BE0F1FF8);
    sub_1BD70C044(&qword_1EBD412A0, type metadata accessor for PaymentOfferSelectedInstallmentDetailView, &unk_1BE0B992C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50D48);
  }

  return result;
}

unint64_t sub_1BD708BB0()
{
  result = qword_1EBD50D58;
  if (!qword_1EBD50D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50D60, &qword_1BE0F2000);
    sub_1BD0DE4F4(&qword_1EBD50D68, &qword_1EBD50D70, &qword_1BE0F2008, MEMORY[0x1E697C1A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50D58);
  }

  return result;
}

void sub_1BD708C60(unint64_t result, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (result != 3)
  {
    sub_1BD708C70(result, a2, a3, a4, a5, a6, a7, a8);
  }
}

void sub_1BD708C70(unint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a1 >= 3)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }
}

uint64_t sub_1BD708CB8()
{
  v2 = *(type metadata accessor for PaymentOfferSelectorOverlay(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BD126968;

  return sub_1BD7005D4(v4, v5, v0 + v3);
}

unint64_t sub_1BD708D94()
{
  result = qword_1EBD50D98;
  if (!qword_1EBD50D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50D90, &qword_1BE0F2070);
    sub_1BD708E20();
    sub_1BD10EBB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50D98);
  }

  return result;
}

unint64_t sub_1BD708E20()
{
  result = qword_1EBD50DA0;
  if (!qword_1EBD50DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50C98, &qword_1BE0F1F90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50CA0, &qword_1BE0F1F98);
    type metadata accessor for MultiHyperLinkDetailSheet(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD394A0, &qword_1BE0B86F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50CA8, &qword_1BE0F1FA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50CC8, &qword_1BE0F1FC8);
    sub_1BD7086E0();
    sub_1BD708824();
    sub_1BD708878();
    swift_getOpaqueTypeConformance2();
    sub_1BD70C044(&qword_1EBD451C0, type metadata accessor for MultiHyperLinkDetailSheet, &unk_1BE10751C);
    sub_1BD10CC54();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD50DA8, &qword_1EBD50D78, &qword_1BE0F2018, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50DA0);
  }

  return result;
}

uint64_t sub_1BD709000(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
  sub_1BE0516A4();
  v4 = *&v8[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass];

  v5 = [v4 uniqueID];
  PKSetHasSeenPaymentOfferRewardsExplanationScreen();

  type metadata accessor for PaymentOfferSelectorOverlay(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50CC0, &qword_1BE0F1FC0);
  v6 = sub_1BE0516B4();
  return a3(v6);
}

uint64_t sub_1BD709114(uint64_t *a1, void *a2)
{
  v4 = sub_1BE04FFA4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for PaymentOfferSelectorOverlay(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v36[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a2[1];
  *&v41 = *a2;
  *(&v41 + 1) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
  sub_1BE0516A4();
  v14 = v38;
  sub_1BD22B534(a1);

  v15 = (a2 + *(v9 + 44));
  v16 = v15[1];
  v41 = *v15;
  v42 = v16;
  v39 = 0;
  v40 = 0;
  v38 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50CC0, &qword_1BE0F1FC0);
  v17 = sub_1BE0516B4();
  v18 = MEMORY[0x1BFB3EDF0](v17, 0.5, 0.55, 0.0);
  v37 = a2;
  sub_1BD70BF20(a2, v12, type metadata accessor for PaymentOfferSelectorOverlay);
  v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v20 = swift_allocObject();
  sub_1BD70B2E4(v12, v20 + v19, type metadata accessor for PaymentOfferSelectorOverlay);
  sub_1BE04FF94();
  sub_1BE04E7C4();
  v18, v21, v22, v23, v24, v25, v26, v27;
  v20, v28, v29, v30, v31, v32, v33, v34;
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1BD7093C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v45 = a3;
  v41 = sub_1BE04F434();
  v4 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PKDashboardRewardsBalanceDetailsView(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50DD8, &unk_1BE0F20D0);
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50DD0, &unk_1BE0F20C0);
  v14 = *(v13 - 8);
  v42 = v13;
  v43 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v39 = &v38 - v15;
  *(v9 + 2) = sub_1BD6BC230;
  *(v9 + 3) = 0;
  v9[32] = 0;
  v16 = *(v7 + 24);
  *&v9[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  swift_storeEnumTagMultiPayload();
  *v9 = a1;
  *(v9 + 1) = 0;
  v17 = [a1 programName];
  v18 = sub_1BE052434();
  v20 = v19;

  v47 = v18;
  v48 = v20;
  v21 = sub_1BD70C044(&qword_1EBD50DE0, type metadata accessor for PKDashboardRewardsBalanceDetailsView, &unk_1BE0EF408);
  v22 = sub_1BD0DDEBC();
  v23 = MEMORY[0x1E69E6158];
  sub_1BE050B74();
  v20, v24, v25, v26, v27, v28, v29, v30;
  sub_1BD70B34C(v9, type metadata accessor for PKDashboardRewardsBalanceDetailsView);
  v31 = v41;
  (*(v4 + 104))(v6, *MEMORY[0x1E697C428], v41);
  v47 = v7;
  v48 = v23;
  v49 = v21;
  v50 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v39;
  sub_1BE050E84();
  (*(v4 + 8))(v6, v31);
  (*(v40 + 8))(v12, v10);
  v46 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E9E8, &unk_1BE0E9E60);
  v47 = v10;
  v48 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3E9F0, &qword_1BE0C41C0);
  v35 = sub_1BD0DE4F4(&qword_1EBD3E9F8, &qword_1EBD3E9F0, &qword_1BE0C41C0, MEMORY[0x1E697BEF0]);
  v47 = v34;
  v48 = v35;
  swift_getOpaqueTypeConformance2();
  v36 = v42;
  sub_1BE051024();
  return (*(v43 + 8))(v33, v36);
}

unint64_t sub_1BD7098F8()
{
  result = qword_1EBD39DA8;
  if (!qword_1EBD39DA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD39DA8);
  }

  return result;
}

uint64_t sub_1BD709944(uint64_t a1)
{
  v2 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E9F0, &qword_1BE0C41C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  sub_1BE04FB04();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39500, &unk_1BE0C4310);
  sub_1BD0DE4F4(&qword_1EBD394F8, &qword_1EBD39500, &unk_1BE0C4310, MEMORY[0x1E697D680]);
  sub_1BE04E424();
  v7 = sub_1BD0DE4F4(&qword_1EBD3E9F8, &qword_1EBD3E9F0, &qword_1BE0C41C0, MEMORY[0x1E697BEF0]);
  MEMORY[0x1BFB3CC50](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1BD709B30(uint64_t a1)
{
  v2 = type metadata accessor for PaymentOfferSelectorOverlay(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_1BE04E1D4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04E1A4();
  sub_1BD70BF20(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentOfferSelectorOverlay);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_1BD70B2E4(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for PaymentOfferSelectorOverlay);
  return MEMORY[0x1BFB3E7A0](v7, sub_1BD70A7A0, v9);
}

double sub_1BD709CAC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PaymentOfferSelectorOverlay(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50CC0, &qword_1BE0F1FC0);
  sub_1BE0516B4();
  return result;
}

void sub_1BD709D1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
  sub_1BE0516A4();
  v0 = *&v16[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController];
  v1 = v0;

  if (v0)
  {
    sub_1BE0516A4();
    v2 = *&v16[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass];

    v3 = [v2 uniqueID];
    if (v3)
    {
      v4 = sub_1BE052434();
      v6 = v5;

      sub_1BD4808D8(v4, v6);
      v8 = v7;

      v6, v9, v10, v11, v12, v13, v14, v15;
      if (v8)
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BD709E44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
  sub_1BE0516A4();
  v0 = *&v6[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController];
  v1 = v0;

  if (v0)
  {
    sub_1BE0516A4();
    v2 = *&v6[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentPass];

    result = [v2 uniqueID];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = result;

    v5 = [v1 eligiblePaymentOfferCriteriaForPassUniqueID:v4 type:2];
    if (v5)
    {

      return 1;
    }
  }

  return 0;
}

uint64_t sub_1BD709F64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778, &qword_1BE0F2010);
  sub_1BE0516A4();
  v0 = *&v7[OBJC_IVAR____TtC9PassKitUI25PaymentOfferSelectorModel_paymentOffersController];
  v1 = v0;

  if (v0)
  {
    v2 = [v1 selectedOfferDetails];

    if (v2)
    {
      v3 = [v2 selectedPaymentOffer];
      if (v3)
      {
        v4 = v3;
        v5 = [v3 type];

        if (v5 == 1)
        {
          return 1;
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

uint64_t sub_1BD70A0A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = sub_1BE04F3D4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v28 - v15);
  sub_1BD0DE19C(v8, &v28 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    v19 = *v16;
    sub_1BE052C44();
    v20 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    v19, v21, v22, v23, v24, v25, v26, v27;
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_1BD70A2C8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04F3D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8, &qword_1BE0BAD40);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v21 - v9);
  sub_1BD0DE19C(v2, &v21 - v9, &qword_1EBD39CF8, &qword_1BE0BAD40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1BD0DE204(v10, a1, &qword_1EBD40450, &qword_1BE0D7250);
  }

  v12 = *v10;
  sub_1BE052C44();
  v13 = sub_1BE050174();
  sub_1BE04CF84();

  sub_1BE04F3C4();
  swift_getAtKeyPath();
  v12, v14, v15, v16, v17, v18, v19, v20;
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1BD70A570(uint64_t *a1)
{
  v3 = *(type metadata accessor for PaymentOfferSelectorOverlay(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1BD709114(a1, v4);
}

id sub_1BD70A5E0(id result, void *a2, void *a3)
{
  if (result)
  {
    v3 = result;
    v4 = a3;
    sub_1BE048964();
    sub_1BE048964();
    v5 = v3;

    return a2;
  }

  return result;
}

void sub_1BD70A650(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  if (a1)
  {

    a5, v10, v11, v12, v13, v14, v15, v16;
    a7, v17, v18, v19, v20, v21, v22, v23;
  }
}

uint64_t sub_1BD70A6C0()
{
  v1 = *(type metadata accessor for PaymentOfferSelectorOverlay(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BD709000((v0 + v2), v4, v5);
}

unint64_t sub_1BD70A7CC()
{
  result = qword_1EBD50E18;
  if (!qword_1EBD50E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50E10, &qword_1BE0F2198);
    sub_1BD70A884();
    sub_1BD0DE4F4(&qword_1EBD50E60, &qword_1EBD50E68, &qword_1BE0F21C8, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50E18);
  }

  return result;
}

unint64_t sub_1BD70A884()
{
  result = qword_1EBD50E20;
  if (!qword_1EBD50E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50E28, &qword_1BE0F21A0);
    sub_1BD70A910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50E20);
  }

  return result;
}

unint64_t sub_1BD70A910()
{
  result = qword_1EBD50E30;
  if (!qword_1EBD50E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50E38, &qword_1BE0F21A8);
    sub_1BD70A99C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50E30);
  }

  return result;
}

unint64_t sub_1BD70A99C()
{
  result = qword_1EBD50E40;
  if (!qword_1EBD50E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50E48, &qword_1BE0F21B0);
    sub_1BD0DE4F4(&qword_1EBD50E50, &qword_1EBD50E58, &unk_1BE0F21B8, MEMORY[0x1E6981870]);
    sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60, &qword_1BE0C3580, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50E40);
  }

  return result;
}

void sub_1BD70AAB4(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for PaymentOfferSelectorOverlay(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1BD702714(v4, a1);
}

uint64_t sub_1BD70AC30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  type metadata accessor for PaymentOfferSelectorOverlay(0);
  sub_1BD704C18(a1, a2);
  return a3();
}

uint64_t sub_1BD70AD0C(uint64_t a1)
{
  v4 = *(type metadata accessor for PaymentOfferSelectorOverlay(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BD126968;

  return sub_1BD708228(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t objectdestroy_144Tm()
{
  v1 = type metadata accessor for PaymentOfferSelectorOverlay(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v2;

  *(v0 + v2 + 8), v5, v6, v7, v8, v9, v10, v11;
  *(v0 + v2 + 24), v12, v13, v14, v15, v16, v17, v18;
  *(v0 + v2 + 32), v19, v20, v21, v22, v23, v24, v25;
  *(v0 + v2 + 40), v26, v27, v28, v29, v30, v31, v32;
  *(v0 + v2 + 48), v33, v34, v35, v36, v37, v38, v39;
  v40 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = sub_1BE04E664();
    (*(*(v48 - 8) + 8))(v4 + v40, v48);
  }

  else
  {
    *(v4 + v40), v41, v42, v43, v44, v45, v46, v47;
  }

  *(v4 + v1[8] + 8), v49, v50, v51, v52, v53, v54, v55;
  v63 = v4 + v1[9];
  if (*v63 >= 4uLL)
  {
    *(v63 + 8), v56, v57, v58, v59, v60, v61, v62;
  }

  *(v63 + 24), v56, v57, v58, v59, v60, v61, v62;
  v64 = (v4 + v1[10]);
  v65 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  if (!(*(*(v65 - 8) + 48))(v64, 1, v65))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v66 = sub_1BE04AA64();
      (*(*(v66 - 8) + 8))(v64, v66);
    }

    else
    {

      v64[2], v67, v68, v69, v70, v71, v72, v73;
    }
  }

  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  *(v64 + *(v74 + 28)), v75, v76, v77, v78, v79, v80, v81;
  v82 = v4 + v1[11];
  *(v82 + 8), v83, v84, v85, v86, v87, v88, v89;
  *(v82 + 16), v90, v91, v92, v93, v94, v95, v96;
  v97 = (v4 + v1[12]);

  v97[1], v98, v99, v100, v101, v102, v103, v104;
  *(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), v105, v106, v107, v108, v109, v110, v111;

  return swift_deallocObject();
}

uint64_t sub_1BD70B0FC(uint64_t a1)
{
  v4 = *(type metadata accessor for PaymentOfferSelectorOverlay(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BD0F985C;

  return sub_1BD708228(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_1BD70B22C(uint64_t result, uint64_t a2, void *a3)
{
  if (result != 3)
  {
    return sub_1BD70B23C(result, a2, a3);
  }

  return result;
}

unint64_t sub_1BD70B23C(unint64_t result, uint64_t a2, void *a3)
{
  if (result >= 3)
  {
    v4 = a3;

    return sub_1BE048964();
  }

  return result;
}

uint64_t sub_1BD70B2E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD70B34C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BD70B408(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for PaymentOfferSelectorOverlay(0) - 8);
  v4 = v1 + ((*(v3 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);

  sub_1BD7060A4(v4, a1);
}

uint64_t objectdestroy_74Tm()
{
  v1 = type metadata accessor for PaymentOfferSelectorOverlay(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64) + v2;
  swift_unknownObjectRelease();
  v4 = v0 + v2;

  *(v0 + v2 + 8), v5, v6, v7, v8, v9, v10, v11;
  *(v0 + v2 + 24), v12, v13, v14, v15, v16, v17, v18;
  *(v0 + v2 + 32), v19, v20, v21, v22, v23, v24, v25;
  *(v0 + v2 + 40), v26, v27, v28, v29, v30, v31, v32;
  *(v0 + v2 + 48), v33, v34, v35, v36, v37, v38, v39;
  v40 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = sub_1BE04E664();
    (*(*(v48 - 8) + 8))(v4 + v40, v48);
  }

  else
  {
    *(v4 + v40), v41, v42, v43, v44, v45, v46, v47;
  }

  v56 = v3 + 7;
  *(v4 + v1[8] + 8), v49, v50, v51, v52, v53, v54, v55;
  v64 = v4 + v1[9];
  if (*v64 >= 4uLL)
  {
    *(v64 + 8), v57, v58, v59, v60, v61, v62, v63;
  }

  v65 = v56 & 0xFFFFFFFFFFFFFFF8;
  *(v64 + 24), v57, v58, v59, v60, v61, v62, v63;
  v66 = (v4 + v1[10]);
  v67 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  if (!(*(*(v67 - 8) + 48))(v66, 1, v67))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v68 = sub_1BE04AA64();
      (*(*(v68 - 8) + 8))(v66, v68);
    }

    else
    {

      v66[2], v69, v70, v71, v72, v73, v74, v75;
    }
  }

  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  *(v66 + *(v76 + 28)), v77, v78, v79, v80, v81, v82, v83;
  v84 = v4 + v1[11];
  *(v84 + 8), v85, v86, v87, v88, v89, v90, v91;
  *(v84 + 16), v92, v93, v94, v95, v96, v97, v98;
  v99 = (v4 + v1[12]);

  v99[1], v100, v101, v102, v103, v104, v105, v106;
  v107 = v0 + v65;
  *(v0 + v65 + 8), v108, v109, v110, v111, v112, v113, v114;
  *(v0 + v65 + 40), v115, v116, v117, v118, v119, v120, v121;
  *(v0 + v65 + 48), v122, v123, v124, v125, v126, v127, v128;
  *(v0 + v65 + 64), v129, v130, v131, v132, v133, v134, v135;
  *(v0 + v65 + 80), v136, v137, v138, v139, v140, v141, v142;
  if (*(v0 + v65 + 112))
  {

    *(v107 + 112), v143, v144, v145, v146, v147, v148, v149;
  }

  return swift_deallocObject();
}

void sub_1BD70B788(char *a1)
{
  v3 = *(type metadata accessor for PaymentOfferSelectorOverlay(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  sub_1BD7061BC(a1, v5, v6, v1 + v4, v7);
}

void sub_1BD70B828(uint64_t a1)
{
  type metadata accessor for PaymentOfferSelectorOverlay(0);

  sub_1BD7062E4(a1);
}

uint64_t objectdestroyTm_81()
{
  v1 = type metadata accessor for PaymentOfferSelectorOverlay(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  v2[1], v3, v4, v5, v6, v7, v8, v9;
  v2[3], v10, v11, v12, v13, v14, v15, v16;
  v2[4], v17, v18, v19, v20, v21, v22, v23;
  v2[5], v24, v25, v26, v27, v28, v29, v30;
  v2[6], v31, v32, v33, v34, v35, v36, v37;
  v38 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = sub_1BE04E664();
    (*(*(v46 - 8) + 8))(v2 + v38, v46);
  }

  else
  {
    *(v2 + v38), v39, v40, v41, v42, v43, v44, v45;
  }

  *(v2 + v1[8] + 8), v47, v48, v49, v50, v51, v52, v53;
  v61 = (v2 + v1[9]);
  if (*v61 >= 4)
  {
    v61[1], v54, v55, v56, v57, v58, v59, v60;
  }

  v61[3], v54, v55, v56, v57, v58, v59, v60;
  v62 = (v2 + v1[10]);
  v63 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  if (!(*(*(v63 - 8) + 48))(v62, 1, v63))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v64 = sub_1BE04AA64();
      (*(*(v64 - 8) + 8))(v62, v64);
    }

    else
    {

      v62[2], v65, v66, v67, v68, v69, v70, v71;
    }
  }

  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  *(v62 + *(v72 + 28)), v73, v74, v75, v76, v77, v78, v79;
  v80 = (v2 + v1[11]);
  v80[1], v81, v82, v83, v84, v85, v86, v87;
  v80[2], v88, v89, v90, v91, v92, v93, v94;
  v95 = (v2 + v1[12]);

  v95[1], v96, v97, v98, v99, v100, v101, v102;

  return swift_deallocObject();
}

uint64_t sub_1BD70BBD0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PaymentOfferSelectorOverlay(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1BD70BC44()
{
  result = qword_1EBD50F18;
  if (!qword_1EBD50F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50F10, &qword_1BE0F22C8);
    sub_1BD70BCFC(&qword_1EBD50F20, &qword_1EBD4C118, &qword_1BE0E57B0, sub_1BD70BD78);
    sub_1BD10EBB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50F18);
  }

  return result;
}

uint64_t sub_1BD70BCFC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD70BD78()
{
  result = qword_1EBD50F28;
  if (!qword_1EBD50F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4C1E0, &qword_1BE0E59A0);
    sub_1BD5C3678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50F28);
  }

  return result;
}

unint64_t sub_1BD70BE08()
{
  result = qword_1EBD50F38;
  if (!qword_1EBD50F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37270, &qword_1BE0B1290);
    sub_1BD70BE94();
    sub_1BD10EC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50F38);
  }

  return result;
}

unint64_t sub_1BD70BE94()
{
  result = qword_1EBD50F40;
  if (!qword_1EBD50F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50F48, &qword_1BE0F22F8);
    sub_1BD708D94();
    sub_1BD708E20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50F40);
  }

  return result;
}

uint64_t sub_1BD70BF20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD70BF88()
{
  result = qword_1EBD50F60;
  if (!qword_1EBD50F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50F58, &qword_1BE0F2308);
    sub_1BD70C044(&qword_1EBD57B20, type metadata accessor for PaymentOfferActionExplanationView, &unk_1BE0D53B8);
    sub_1BD10EBB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50F60);
  }

  return result;
}

uint64_t sub_1BD70C044(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD70C0FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v27 = a1;
  v30 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50F70, &qword_1BE0F2398);
  MEMORY[0x1EEE9AC00](v28);
  v3 = &v24 - v2;
  v4 = sub_1BE04F424();
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50F78, &qword_1BE0F23A0);
  v26 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v8 = &v24 - v7;
  v9 = sub_1BE04C884();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  sub_1BE04C794();
  (*(v10 + 104))(v12, *MEMORY[0x1E69BC9C8], v9);
  sub_1BD70C564();
  sub_1BE0526E4();
  sub_1BE0526E4();
  v16 = *(v10 + 8);
  v16(v12, v9);
  if (v31 == v33)
  {
    sub_1BE0501C4();
    sub_1BE04F404();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50F80, &qword_1BE0F23A8);
    v18 = sub_1BD70C5BC();
    sub_1BE0508F4();
    (*(v24 + 8))(v6, v25);
    v19 = v26;
    v20 = v29;
    (*(v26 + 16))(v3, v8, v29);
    swift_storeEnumTagMultiPayload();
    v31 = v17;
    v32 = v18;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    (*(v19 + 8))(v8, v20);
  }

  else
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50F80, &qword_1BE0F23A8);
    (*(*(v21 - 8) + 16))(v3, v27, v21);
    swift_storeEnumTagMultiPayload();
    v22 = sub_1BD70C5BC();
    v31 = v21;
    v32 = v22;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
  }

  return (v16)(v15, v9);
}

unint64_t sub_1BD70C564()
{
  result = qword_1EBD36A10;
  if (!qword_1EBD36A10)
  {
    sub_1BE04C884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36A10);
  }

  return result;
}

unint64_t sub_1BD70C5BC()
{
  result = qword_1EBD50F88;
  if (!qword_1EBD50F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50F80, &qword_1BE0F23A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50F88);
  }

  return result;
}

unint64_t sub_1BD70C620()
{
  result = qword_1EBD50F90;
  if (!qword_1EBD50F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50F98, &qword_1BE0F23B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50F80, &qword_1BE0F23A8);
    sub_1BD70C5BC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50F90);
  }

  return result;
}

uint64_t PassImage.init(wrappedPass:width:includeShadow:suppressedContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v6 = a2;
  PKPassFrontFaceContentSize();
  *(a4 + 24) = a5;
  *(a4 + 32) = v11 / v10 * a5;
  v12 = type metadata accessor for PassImage(0);
  result = sub_1BD70D22C(a1, a4 + v12[6], type metadata accessor for WrappedPass);
  *a4 = sub_1BD70C870;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + v12[7]) = v6;
  *(a4 + v12[8]) = a3;
  return result;
}

double PassImage.init(pass:width:includeShadow:suppressedContent:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = type metadata accessor for PassImage(0);
  *(a4 + v10[6]) = a1;
  type metadata accessor for WrappedPass(0);
  swift_storeEnumTagMultiPayload();
  PKPassFrontFaceContentSize();
  result = v12 / v11 * a5;
  *(a4 + 24) = a5;
  *(a4 + 32) = result;
  *a4 = sub_1BD70C870;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + v10[7]) = a2;
  *(a4 + v10[8]) = a3;
  return result;
}

uint64_t sub_1BD70C870()
{
  type metadata accessor for PassImage.Loader(0);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4AB00, &qword_1BE0C85C0);
  sub_1BE04D874();
  *(v0 + OBJC_IVAR____TtCV9PassKitUI9PassImageP33_A9E82E34821618C1D5CE6A59E077FD6D6Loader_cachedPass) = 0;
  v1 = v0 + OBJC_IVAR____TtCV9PassKitUI9PassImageP33_A9E82E34821618C1D5CE6A59E077FD6D6Loader_cachedSize;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  return v0;
}

void PassImage.body.getter(uint64_t *a1@<X8>)
{
  v149 = a1;
  v2 = sub_1BE04CF34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for PassImage(0);
  sub_1BD0E8EA0(v1 + v12[6], v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v37 = *v11;
    type metadata accessor for PassImage.Loader(0);
    sub_1BD70E2DC(&qword_1EBD50FE8, type metadata accessor for PassImage.Loader, &unk_1BE0F2508);
    v38 = sub_1BE04E3C4();
    v40 = v1[3];
    v39 = v1[4];
    v41 = v12[8];
    v148 = v1;
    sub_1BD70D640(v37, *(v1 + v41), v40, v39);
    v38, v42, v43, v44, v45, v46, v47, v48;
    v49 = sub_1BE04E3C4();
    KeyPath = swift_getKeyPath();
    v51 = swift_getKeyPath();
    sub_1BE04D8B4(&v150);
    KeyPath, v52, v53, v54, v55, v56, v57, v58;
    v51, v59, v60, v61, v62, v63, v64, v65;
    v49, v66, v67, v68, v69, v70, v71, v72;
    if (v150)
    {
      v147 = v37;
      v73 = v150;
      v74 = sub_1BE051544();
      sub_1BE051CD4();
      sub_1BE04E5E4();
      v75 = v178;
      v76 = v180;
      v78 = v182;
      v77 = v183;
      v177 = v179;
      v176 = v181;
      if (*(v148 + v12[7]) == 1)
      {
        v79 = sub_1BE0513F4();
        v80 = sub_1BE051454();
        v79, v81, v82, v83, v84, v85, v86, v87;
        v148 = v73;
        v88 = v177;
        v89 = v176;
        sub_1BE048964();
        v90 = sub_1BE0513F4();
        v146 = sub_1BE051454();
        v90, v91, v92, v93, v94, v95, v96, v97;
        *&v157 = v74;
        *(&v157 + 1) = v75;
        LOBYTE(v158) = v88;
        *(&v158 + 1) = v76;
        LOBYTE(v159[0]) = v89;
        *(&v159[0] + 1) = v78;
        *&v159[1] = v77;
        BYTE8(v159[1]) = 1;
        *(v160 + 8) = xmmword_1BE0CACB0;
        *&v160[0] = v80;
        *(&v160[1] + 1) = 0x3FF0000000000000;
        v161 = v74;
        v172 = v159[0];
        v173 = v159[1];
        v174 = v160[0];
        v175 = v160[1];
        v170 = v157;
        v171 = v158;
        v162 = v75;
        LOBYTE(v163) = v88;
        v164 = v76;
        LOBYTE(v165) = v89;
        *&v166 = v78;
        *(&v166 + 1) = v77;
        LOBYTE(v167) = 1;
        *&v168[8] = xmmword_1BE0CACB0;
        *v168 = v80;
        v169 = 0x3FF0000000000000;
        sub_1BD0DE19C(&v157, &v150, &qword_1EBD51018, &qword_1BE0F2460);
        sub_1BD0DE53C(&v161, &qword_1EBD51018, &qword_1BE0F2460);
        v152 = v172;
        v153 = v173;
        v154[0] = v174;
        v154[1] = v175;
        v150 = v170;
        v151 = v171;
        *v155 = v146;
        *&v155[8] = xmmword_1BE0CC060;
        v156 = 0x4000000000000000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51020, &qword_1BE0F2468);
        sub_1BD70DF74();
        v36 = sub_1BE0518D4();

        v74, v98, v99, v100, v101, v102, v103, v104;
      }

      else
      {
        *&v150 = v74;
        *(&v150 + 1) = v178;
        LOBYTE(v151) = v177;
        *(&v151 + 1) = v180;
        LOBYTE(v152) = v176;
        *(&v152 + 1) = v182;
        *&v153 = v183;
        BYTE8(v153) = 1;
        sub_1BE048964();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51008, &qword_1BE0F2458);
        sub_1BD70DEE8();
        v36 = sub_1BE0518D4();

        v74, v139, v140, v141, v142, v143, v144, v145;
      }

      goto LABEL_14;
    }

    v137 = sub_1BE051404();
    v138 = swift_getKeyPath();
    sub_1BE051CD4();
    sub_1BE04E5E4();
    *&v150 = v138;
    *(&v150 + 1) = v137;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50FF8, &qword_1BE0F2450);
    sub_1BD70DE5C();
    v129 = sub_1BE0518D4();

LABEL_12:
    *v149 = v129;
    return;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1BD70D22C(v11, v8, type metadata accessor for PlaceholderPass);
    (*(v3 + 16))(v5, &v8[*(v6 + 28)], v2);
    v105 = sub_1BE051604();
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v106 = v178;
    v107 = v179;
    v108 = v180;
    v109 = v181;
    v110 = v182;
    if (*(v1 + v12[7]) == 1)
    {
      v148 = v183;
      v111 = sub_1BE0513F4();
      v112 = sub_1BE051454();
      v111, v113, v114, v115, v116, v117, v118, v119;
      v177 = v107;
      v176 = v109;
      sub_1BE048964();
      v120 = sub_1BE0513F4();
      v121 = sub_1BE051454();
      v120, v122, v123, v124, v125, v126, v127, v128;
      *&v157 = v105;
      *(&v157 + 1) = v106;
      LOBYTE(v158) = v177;
      *(&v158 + 1) = v108;
      LOBYTE(v159[0]) = v176;
      *(&v159[0] + 1) = v110;
      *&v159[1] = v148;
      *(&v159[1] + 1) = v112;
      v160[0] = xmmword_1BE0CACB0;
      *&v160[1] = 0x3FF0000000000000;
      *&v175 = 0x3FF0000000000000;
      v173 = v159[1];
      v174 = xmmword_1BE0CACB0;
      v171 = v158;
      v172 = v159[0];
      v170 = v157;
      v161 = v105;
      v162 = v106;
      LOBYTE(v163) = v177;
      v164 = v108;
      LOBYTE(v165) = v176;
      *&v166 = v110;
      *(&v166 + 1) = v148;
      v167 = v112;
      *v168 = xmmword_1BE0CACB0;
      *&v168[16] = 0x3FF0000000000000;
      sub_1BD0DE19C(&v157, &v150, &qword_1EBD50FA0, &qword_1BE0F23B8);
      sub_1BD0DE53C(&v161, &qword_1EBD50FA0, &qword_1BE0F23B8);
      v152 = v172;
      v153 = v173;
      v154[0] = v174;
      v150 = v170;
      v151 = v171;
      *&v154[1] = v175;
      *(&v154[1] + 1) = v121;
      *v155 = xmmword_1BE0CC060;
      *&v155[16] = 0x4000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D138, &qword_1BE0E8280);
      sub_1BD70D2F0();
      v129 = sub_1BE0518D4();
      v105, v130, v131, v132, v133, v134, v135, v136;
    }

    else
    {
      *&v150 = v105;
      *(&v150 + 1) = v178;
      LOBYTE(v151) = v179;
      *(&v151 + 1) = v180;
      LOBYTE(v152) = v181;
      *(&v152 + 1) = v182;
      *&v153 = v183;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FC40, &qword_1BE0BD510);
      sub_1BD1A3410();
      v129 = sub_1BE0518D4();
    }

    sub_1BD70D294(v8);
    goto LABEL_12;
  }

  v14 = *(v1 + 3);
  v15 = *(v1 + 4);
  v16 = *v11;
  v17 = sub_1BE0513F4();
  v18 = sub_1BE051454();
  v17, v19, v20, v21, v22, v23, v24, v25;
  v26 = v16;
  v27 = sub_1BE0513F4();
  v28 = sub_1BE051454();
  v27, v29, v30, v31, v32, v33, v34, v35;

  *&v157 = v26;
  *(&v157 + 1) = v14;
  *&v158 = v15;
  WORD4(v158) = 257;
  *(v159 + 8) = xmmword_1BE0CACB0;
  *&v159[0] = v18;
  *(&v159[1] + 1) = 0x3FF0000000000000;
  v170 = v157;
  v171 = v158;
  v172 = v159[0];
  v173 = v159[1];
  v161 = v26;
  v162 = v14;
  v163 = v15;
  LOWORD(v164) = 257;
  v166 = xmmword_1BE0CACB0;
  v165 = v18;
  v167 = 0x3FF0000000000000;
  sub_1BD0DE19C(&v157, &v150, &qword_1EBD50FB8, &qword_1BE0F23C0);
  sub_1BD0DE53C(&v161, &qword_1EBD50FB8, &qword_1BE0F23C0);
  v150 = v170;
  v151 = v171;
  v152 = v172;
  v153 = v173;
  *&v154[0] = v28;
  *(v154 + 8) = xmmword_1BE0CC060;
  *(&v154[1] + 1) = 0x4000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50FC0, &qword_1BE0F23C8);
  sub_1BD70D408();
  v36 = sub_1BE0518D4();

LABEL_14:
  *v149 = v36;
}

uint64_t sub_1BD70D22C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD70D294(uint64_t a1)
{
  v2 = type metadata accessor for PlaceholderPass(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD70D2F0()
{
  result = qword_1EBD50FA8;
  if (!qword_1EBD50FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D138, &qword_1BE0E8280);
    sub_1BD70D37C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50FA8);
  }

  return result;
}

unint64_t sub_1BD70D37C()
{
  result = qword_1EBD50FB0;
  if (!qword_1EBD50FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50FA0, &qword_1BE0F23B8);
    sub_1BD1A3410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50FB0);
  }

  return result;
}

unint64_t sub_1BD70D408()
{
  result = qword_1EBD50FC8;
  if (!qword_1EBD50FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50FC0, &qword_1BE0F23C8);
    sub_1BD70D494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50FC8);
  }

  return result;
}

unint64_t sub_1BD70D494()
{
  result = qword_1EBD50FD0;
  if (!qword_1EBD50FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50FB8, &qword_1BE0F23C0);
    sub_1BD70D520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50FD0);
  }

  return result;
}

unint64_t sub_1BD70D520()
{
  result = qword_1EBD50FD8;
  if (!qword_1EBD50FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50FE0, &qword_1BE0F23D0);
    sub_1BD208348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50FD8);
  }

  return result;
}

uint64_t sub_1BD70D5CC()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

void sub_1BD70D640(void *a1, uint64_t a2, double a3, double a4)
{
  v9 = [a1 uniqueID];
  if (v9)
  {
    v17 = v9;
    v18 = sub_1BE052434();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = OBJC_IVAR____TtCV9PassKitUI9PassImageP33_A9E82E34821618C1D5CE6A59E077FD6D6Loader_cachedPass;
  v22 = *&v4[OBJC_IVAR____TtCV9PassKitUI9PassImageP33_A9E82E34821618C1D5CE6A59E077FD6D6Loader_cachedPass];
  if (v22)
  {
    v23 = [v22 uniqueID];
    if (v23)
    {
      v24 = v23;
      v25 = sub_1BE052434();
      v27 = v26;

      v28 = &qword_1EBD51000;
      if (!v20)
      {
        goto LABEL_7;
      }

LABEL_10:
      if (!v27)
      {
        goto LABEL_14;
      }

      if (v18 == v25 && v20 == v27)
      {
        v20, v10, v11, v12, v13, v14, v15, v16;
        v27, v29, v30, v31, v32, v33, v34, v35;
      }

      else
      {
        v36 = sub_1BE053B84();
        v20, v37, v38, v39, v40, v41, v42, v43;
        v27, v44, v45, v46, v47, v48, v49, v50;
        if ((v36 & 1) == 0)
        {
LABEL_21:
          v53 = *&v4[v21];
          *&v4[v21] = a1;
          v54 = a1;

          v55 = &v4[v28[11]];
          *v55 = a3;
          *(v55 + 1) = a4;
          v55[16] = 0;
          v56 = [objc_opt_self() sharedInstance];
          if (v56)
          {
            v57 = v56;
            v67[4] = sub_1BD70E2CC;
            v68 = v4;
            v67[0] = MEMORY[0x1E69E9820];
            v67[1] = 1107296256;
            v67[2] = sub_1BD20815C;
            v67[3] = &block_descriptor_166;
            v58 = _Block_copy(v67);
            v59 = v68;
            sub_1BE048964();
            v59, v60, v61, v62, v63, v64, v65, v66;
            [v57 snapshotWithPass:v54 size:a2 suppressedContent:v58 completion:{a3, a4}];
            _Block_release(v58);
          }

          return;
        }
      }

      goto LABEL_16;
    }
  }

  v25 = 0;
  v27 = 0;
  v28 = &qword_1EBD51000;
  if (v20)
  {
    goto LABEL_10;
  }

LABEL_7:
  if (v27)
  {
    v20 = v27;
LABEL_14:
    v20, v10, v11, v12, v13, v14, v15, v16;
    goto LABEL_21;
  }

LABEL_16:
  v51 = &v4[v28[11]];
  if (v51[16])
  {
    goto LABEL_21;
  }

  if (*v51 != a3 || *(v51 + 1) != a4)
  {
    goto LABEL_21;
  }
}

uint64_t sub_1BD70D8A8(void *a1, uint64_t a2)
{
  v4 = sub_1BE051F54();
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BE051FA4();
  v7 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v10 = sub_1BE052D54();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1BD70E2D4;
  v26 = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_24_2;
  v12 = _Block_copy(aBlock);
  v13 = v26;
  v14 = a1;
  sub_1BE048964();
  v13, v15, v16, v17, v18, v19, v20, v21;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD70E2DC(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v9, v6, v12);
  _Block_release(v12);

  (*(v24 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v23);
}

uint64_t sub_1BD70DB98(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a2;
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD70DC10()
{
  v1 = OBJC_IVAR____TtCV9PassKitUI9PassImageP33_A9E82E34821618C1D5CE6A59E077FD6D6Loader__image;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F770, &qword_1BE0ECB90);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD70DCC8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PassImage.Loader(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

void sub_1BD70DD0C(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD70DD8C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD70DE04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE04F0A4();
  *a1 = result;
  return result;
}

unint64_t sub_1BD70DE5C()
{
  result = qword_1EBD51000;
  if (!qword_1EBD51000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50FF8, &qword_1BE0F2450);
    sub_1BD306A90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51000);
  }

  return result;
}

unint64_t sub_1BD70DEE8()
{
  result = qword_1EBD51010;
  if (!qword_1EBD51010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51008, &qword_1BE0F2458);
    sub_1BD1A3410();
    sub_1BD389FD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51010);
  }

  return result;
}

unint64_t sub_1BD70DF74()
{
  result = qword_1EBD51028;
  if (!qword_1EBD51028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51020, &qword_1BE0F2468);
    sub_1BD70E000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51028);
  }

  return result;
}

unint64_t sub_1BD70E000()
{
  result = qword_1EBD51030;
  if (!qword_1EBD51030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51018, &qword_1BE0F2460);
    sub_1BD70DEE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51030);
  }

  return result;
}

void sub_1BD70E0D0(uint64_t a1)
{
  sub_1BD70E18C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for WrappedPass(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PKPassSuppressedContent(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD70E18C(uint64_t a1)
{
  if (!qword_1EBD51048)
  {
    type metadata accessor for PassImage.Loader(255);
    sub_1BD70E2DC(&qword_1EBD50FE8, type metadata accessor for PassImage.Loader, &unk_1BE0F2508);
    v1 = sub_1BE04E3E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD51048);
    }
  }
}

void sub_1BD70E228(uint64_t a1)
{
  sub_1BD2B01E4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BD70E2DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id AppleBalanceAddMoneyUIManager.__allocating_init(account:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController] = 0;
  *&v3[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_dtuModel] = 0;
  *&v3[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_account] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AppleBalanceAddMoneyUIManager.init(account:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_activeViewController] = 0;
  *&v1[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_dtuModel] = 0;
  *&v1[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_account] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppleBalanceAddMoneyUIManager();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_1BD70E480(void *a1, void *a2, void *a3)
{
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v3[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_account];
  if ([v12 supportsInStoreTopUp])
  {

    sub_1BD70EA58(a1, a2, a3);
    return;
  }

  if ([v12 supportsTopUp])
  {
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = 0;
    v14[4] = 0;
    v14[5] = 1;
    v14[6] = a1;
    v15 = OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_dtuModel;
    if (*&v3[OBJC_IVAR____PKAppleBalanceAddMoneyUIManager_dtuModel])
    {
      sub_1BE048964();
      v16 = a1;
      if (PKAppleBalanceDemoAccountEnabled())
      {
LABEL_8:
        sub_1BD70F0F4(v13, 0, 0, 1, a1);
        v14, v24, v25, v26, v27, v28, v29, v30;
        v38 = v13;
LABEL_21:

        v38, v31, v32, v33, v34, v35, v36, v37;
        return;
      }
    }

    else
    {
      objc_allocWithZone(type metadata accessor for DirectTopUpModel(0));
      v45 = a2;
      sub_1BE048964();
      v46 = a1;
      v47 = v3;
      v48 = sub_1BD7B27BC(a2, 0, v3);

      v49 = *&v3[v15];
      *&v3[v15] = v48;

      if (PKAppleBalanceDemoAccountEnabled())
      {
        goto LABEL_8;
      }
    }

    v13, v17, v18, v19, v20, v21, v22, v23;
    v50 = *&v3[v15];
    if (v50)
    {
      v51 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v52 = swift_allocObject();
      v52[2] = v51;
      v52[3] = a1;
      v52[4] = 0;
      v52[5] = 0;
      v52[6] = 1;
      v52[7] = sub_1BD713C4C;
      v52[8] = v14;
      v53 = *&v50[OBJC_IVAR____TtC9PassKitUI16DirectTopUpModel_amsController];
      aBlock[4] = sub_1BD713DBC;
      v87 = v52;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD3F08C0;
      aBlock[3] = &block_descriptor_167;
      v54 = _Block_copy(aBlock);
      v55 = v87;
      v56 = a1;
      v57 = v50;
      sub_1BE048964();
      sub_1BE048964();
      sub_1BE048964();
      v55, v58, v59, v60, v61, v62, v63, v64;
      [v53 requestDTUAvailable_];
      _Block_release(v54);

      v51, v65, v66, v67, v68, v69, v70, v71;
      v52, v72, v73, v74, v75, v76, v77, v78;
      v14, v79, v80, v81, v82, v83, v84, v85;
      return;
    }

    v38 = v14;
    goto LABEL_21;
  }

  if ([v12 supportsAMPTopUp])
  {

    sub_1BD710144(0, a1, 1uLL, 0, 0, 0, 0);
  }

  else
  {
    sub_1BE04D194();
    v39 = a1;
    v40 = sub_1BE04D204();
    v41 = sub_1BE052C34();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      *(v42 + 4) = v39;
      *v43 = v39;
      v44 = v39;
      _os_log_impl(&dword_1BD026000, v40, v41, "Error: tried to present direct top up without either supporting feature from presenting controller %@", v42, 0xCu);
      sub_1BD0DE53C(v43, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v43, -1, -1);
      MEMORY[0x1BFB45F20](v42, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
  }
}