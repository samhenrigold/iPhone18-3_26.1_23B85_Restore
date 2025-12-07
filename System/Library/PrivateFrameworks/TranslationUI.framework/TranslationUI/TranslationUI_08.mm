double VisualTranslationModel.updateTranslation(model:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_26F49D968();
  (*(*(v6 - 8) + 16))(a2, v2, v6);
  v7 = type metadata accessor for VisualTranslationModel(0);
  v8 = (v3 + v7[5]);
  v25 = v8[8];
  v26 = v8[9];
  v27 = *(v8 + 20);
  v21 = v8[4];
  v22 = v8[5];
  v23 = v8[6];
  v24 = v8[7];
  v19 = v8[2];
  v20 = v8[3];
  v17 = *v8;
  v18 = v8[1];
  v9 = v7[6];
  v10 = sub_26F49D918();
  (*(*(v10 - 8) + 16))(a2 + v9, v3 + v9, v10);
  v11 = *(a1 + v7[7]);
  v12 = *(a1 + v7[8]);
  v13 = *(a1 + v7[9]);
  v14 = *(a1 + v7[10]);
  v15 = a2 + v7[5];
  *(v15 + 128) = v25;
  *(v15 + 144) = v26;
  *(v15 + 160) = v27;
  *(v15 + 64) = v21;
  *(v15 + 80) = v22;
  *(v15 + 96) = v23;
  *(v15 + 112) = v24;
  *v15 = v17;
  *(v15 + 16) = v18;
  *(v15 + 32) = v19;
  *(v15 + 48) = v20;
  *(a2 + v7[7]) = v11;
  *(a2 + v7[8]) = v12;
  *(a2 + v7[9]) = v13;
  *(a2 + v7[10]) = v14;
  *(a2 + v7[11]) = 0;

  return result;
}

double VisualTranslationModel.updateBounds(bounds:boundsTimeStamp:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for VisualTranslationModel(0);
  sub_26F49D8F8();
  if (v9 <= 0.0)
  {
    v11 = sub_26F49D968();
    (*(*(v11 - 8) + 16))(a3, v4, v11);
    v12 = v8[6];
    v13 = sub_26F49D918();
    (*(*(v13 - 8) + 16))(a3 + v12, a2, v13);
    v14 = *(v4 + v8[7]);
    v15 = *(v4 + v8[8]);
    v16 = *(v4 + v8[9]);
    v17 = *(v4 + v8[10]);
    v18 = a3 + v8[5];
    v19 = *(a1 + 144);
    *(v18 + 128) = *(a1 + 128);
    *(v18 + 144) = v19;
    *(v18 + 160) = *(a1 + 160);
    v20 = *(a1 + 80);
    *(v18 + 64) = *(a1 + 64);
    *(v18 + 80) = v20;
    v21 = *(a1 + 112);
    *(v18 + 96) = *(a1 + 96);
    *(v18 + 112) = v21;
    v22 = *(a1 + 16);
    *v18 = *a1;
    *(v18 + 16) = v22;
    v23 = *(a1 + 48);
    *(v18 + 32) = *(a1 + 32);
    *(v18 + 48) = v23;
    *(a3 + v8[7]) = v14;
    *(a3 + v8[8]) = v15;
    *(a3 + v8[9]) = v16;
    *(a3 + v8[10]) = v17;
    *(a3 + v8[11]) = 0;
  }

  else
  {
    sub_26F448DA4(v4, a3, type metadata accessor for VisualTranslationModel);
  }

  return result;
}

uint64_t VisualTranslationModel.json.getter()
{
  sub_26F49D728();
  swift_allocObject();
  sub_26F49D718();
  type metadata accessor for VisualTranslationModel(0);
  sub_26F4749EC(&qword_2806E1370, type metadata accessor for VisualTranslationModel, &protocol conformance descriptor for VisualTranslationModel);
  v0 = sub_26F49D708();

  return v0;
}

uint64_t sub_26F470A30(unint64_t a1, void *a2)
{
  v9 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_26F4A01F8();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26F4A00A8())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x274390F80](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_26F4A01D8();
      sub_26F4A0208();
      sub_26F4A0218();
      sub_26F4A01E8();
      if (v7 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_26F4A00A8();
    sub_26F4A01F8();
  }

  return v9;
}

double sub_26F470B98(uint64_t *a1, id *a2, char a3, uint64_t a4, uint64_t a5)
{
  v117 = a4;
  v118 = a5;
  v116 = a1;
  v96 = sub_26F49D918();
  v120 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_26F49D968();
  v109 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_26F49DA98();
  v110 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v105 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF918, &qword_26F4A5810);
  MEMORY[0x28223BE20](v10 - 8);
  v103 = &v87 - v11;
  v12 = sub_26F49DAB8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v136 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v15 - 8);
  v92 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v87 - v18;
  MEMORY[0x28223BE20](v20);
  v123 = &v87 - v21;
  MEMORY[0x28223BE20](v22);
  v122 = &v87 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v87 - v25;
  v121 = type metadata accessor for VisualTranslationModel(0);
  v106 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v115 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v29 = MEMORY[0x28223BE20](v28).n128_u64[0];
  v114 = &v87 - v30;
  if (a3)
  {
    v31 = 4;
  }

  else
  {
    v31 = 8;
  }

  v32 = [*a2 getCROutputRegion];
  v33 = [v32 contentsWithTypes_];

  sub_26F3B0C24(0, &qword_280F669F8, 0x277D70098);
  v34 = sub_26F49FAF8();

  if ((a3 & 1) == 0 || !sub_26F470A30(v34, 0x277D700A0))
  {
    goto LABEL_9;
  }

  v35 = objc_opt_self();
  sub_26F3B0C24(0, &qword_280F669E0, 0x277D700A0);
  v36 = sub_26F49FAD8();

  v37 = [v35 groupedParagraphBlocksFromParagraphs_];

  sub_26F3B0C24(0, &qword_280F669E8, 0x277D70060);
  v38 = sub_26F49FAF8();

  if (v38 >> 62)
  {
    goto LABEL_59;
  }

  sub_26F4A0468();
  v34 = v38;
  while (1)
  {

LABEL_9:
    v39 = v121;
    if (v34 >> 62)
    {
      break;
    }

    v40 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v40)
    {
      goto LABEL_57;
    }

LABEL_11:
    if (v40 >= 1)
    {
      v41 = v34;
      v42 = 0;
      v119 = v41;
      v112 = v41 & 0xC000000000000001;
      v101 = v110 + 1;
      v102 = (v13 + 32);
      v90 = (v13 + 56);
      v91 = (v13 + 16);
      v88 = (v120 + 32);
      v89 = (v109 + 4);
      v109 = (v106 + 56);
      v110 = (v13 + 8);
      v107 = v12;
      v108 = (v106 + 48);
      v120 = v19;
      v113 = v40;
      v111 = (v13 + 48);
      while (1)
      {
        if (v112)
        {
          v43 = MEMORY[0x274390F80](v42, v119);
        }

        else
        {
          v43 = *(v119 + 8 * v42 + 32);
        }

        v44 = v43;
        sub_26F3E718C(v117, v122);
        v45 = v123;
        sub_26F3E718C(v118, v123);
        sub_26F3E718C(v45, v19);
        v46 = *v111;
        if ((*v111)(v19, 1, v12) == 1)
        {
          v47 = v44;
          _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
          if (v46(v19, 1, v12) != 1)
          {
            sub_26F3B6B4C(v19, &qword_2806DEFD8, &qword_26F4A3670);
          }
        }

        else
        {
          (*v102)(v136, v19, v12);
          v48 = v44;
        }

        if ([v44 layoutDirection] == 5)
        {
          v49 = v105;
          sub_26F49DAA8();
          v50 = v103;
          sub_26F49DA58();
          (*v101)(v49, v104);
          v51 = sub_26F49D9B8();
          v52 = *(v51 - 8);
          if ((*(v52 + 48))(v50, 1, v51) == 1)
          {
            sub_26F3B6B4C(v50, &qword_2806DF918, &qword_26F4A5810);
            v53 = 0;
            v19 = v120;
          }

          else
          {
            v54 = v50;
            v55 = sub_26F49D998();
            v57 = v56;
            (*(v52 + 8))(v54, v51);
            if (v55 == 24938 && v57 == 0xE200000000000000)
            {

              v53 = 1;
              v12 = v107;
              v19 = v120;
            }

            else
            {
              v58 = sub_26F4A0458();
              v19 = v120;
              if ((v58 & 1) != 0 || v55 == 26746 && v57 == 0xE200000000000000)
              {

                v53 = 1;
              }

              else
              {
                v53 = sub_26F4A0458();
              }

              v12 = v107;
            }
          }

          v39 = v121;
        }

        else
        {
          v53 = 0;
        }

        v59 = [v44 text];
        if (v59)
        {
          v60 = v59;
          v61 = sub_26F49F8C8();
          v63 = v62;

          v64 = HIBYTE(v63) & 0xF;
          if ((v63 & 0x2000000000000000) == 0)
          {
            v64 = v61 & 0xFFFFFFFFFFFFLL;
          }

          if (v64)
          {
            v65 = v44;
            sub_26F465CC0(v65, v124);
            v134 = v124[8];
            v135[0] = v125[0];
            *(v135 + 9) = *(v125 + 9);
            v130 = v124[4];
            v131 = v124[5];
            v132 = v124[6];
            v133 = v124[7];
            v126 = v124[0];
            v127 = v124[1];
            v128 = v124[2];
            v129 = v124[3];
            if (sub_26F476AC8(&v126) != 1)
            {
              v70 = v92;
              v71 = v136;
              (*v91)(v92, v136, v12);
              (*v90)(v70, 0, 1, v12);
              v100 = v53;
              v72 = v122;
              sub_26F474F3C(v65, v122, v70);
              v99 = v73;
              sub_26F3B6B4C(v70, &qword_2806DEFD8, &qword_26F4A3670);
              v74 = [v65 textAlignment];
              v75 = 0x2010003u >> (8 * v74);
              if (v74 >= 4)
              {
                v75 = 3;
              }

              v98 = v75;
              v76 = [v65 uuid];
              v77 = v93;
              sub_26F49D948();

              v78 = v95;
              sub_26F49D8E8();
              v97 = [v65 numberOfLines];

              (*v110)(v71, v107);
              sub_26F3B6B4C(v123, &qword_2806DEFD8, &qword_26F4A3670);
              sub_26F3B6B4C(v72, &qword_2806DEFD8, &qword_26F4A3670);
              v79 = v77;
              v12 = v107;
              (*v89)(v26, v79, v94);
              v39 = v121;
              v80 = &v26[*(v121 + 20)];
              v81 = v127;
              *v80 = v126;
              *(v80 + 1) = v81;
              v82 = v131;
              *(v80 + 4) = v130;
              *(v80 + 5) = v82;
              v83 = v129;
              *(v80 + 2) = v128;
              *(v80 + 3) = v83;
              *(v80 + 20) = *&v135[1];
              v84 = v135[0];
              *(v80 + 8) = v134;
              *(v80 + 9) = v84;
              v85 = v133;
              *(v80 + 6) = v132;
              *(v80 + 7) = v85;
              (*v88)(&v26[v39[6]], v78, v96);
              *&v26[v39[7]] = v99;
              *&v26[v39[8]] = v97;
              v26[v39[9]] = v100 & 1;
              v26[v39[10]] = v98;
              v26[v39[11]] = 0;
              (*v109)(v26, 0, 1, v39);
              v19 = v120;
              goto LABEL_46;
            }
          }

          else
          {
          }

          (*v110)(v136, v12);
          sub_26F3B6B4C(v123, &qword_2806DEFD8, &qword_26F4A3670);
          sub_26F3B6B4C(v122, &qword_2806DEFD8, &qword_26F4A3670);
          v19 = v120;
          v39 = v121;
        }

        else
        {

          (*v110)(v136, v12);
          sub_26F3B6B4C(v123, &qword_2806DEFD8, &qword_26F4A3670);
          sub_26F3B6B4C(v122, &qword_2806DEFD8, &qword_26F4A3670);
        }

        (*v109)(v26, 1, 1, v39);
LABEL_46:
        if ((*v108)(v26, 1, v39) == 1)
        {

          sub_26F3B6B4C(v26, &qword_2806E0908, &qword_26F4AB220);
        }

        else
        {
          v66 = v114;
          sub_26F476988(v26, v114, type metadata accessor for VisualTranslationModel);
          sub_26F448DA4(v66, v115, type metadata accessor for VisualTranslationModel);
          v67 = *v116;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v67 = sub_26F44650C(0, v67[2] + 1, 1, v67);
          }

          v69 = v67[2];
          v68 = v67[3];
          if (v69 >= v68 >> 1)
          {
            v67 = sub_26F44650C((v68 > 1), v69 + 1, 1, v67);
          }

          sub_26F475CB0(v114, type metadata accessor for VisualTranslationModel);
          v67[2] = v69 + 1;
          sub_26F476988(v115, v67 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v69, type metadata accessor for VisualTranslationModel);
          *v116 = v67;
          v19 = v120;
          v39 = v121;
        }

        if (v113 == ++v42)
        {
          goto LABEL_57;
        }
      }
    }

    __break(1u);
LABEL_59:

    v34 = sub_26F4A0248();
  }

  v40 = sub_26F4A00A8();
  if (v40)
  {
    goto LABEL_11;
  }

LABEL_57:

  return result;
}

void static VisualTranslationModel.models(from:currentModels:sourceLocale:targetLocale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5, __n128 a6)
{
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a4;
  sub_26F46C864(MEMORY[0x277D84F98], sub_26F475C90, a5, a6, v6, a1);
}

void sub_26F471A28(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t, void, uint64_t, uint64_t), uint64_t a5)
{
  v224 = a5;
  v225 = a4;
  v222 = a3;
  v254 = a2;
  v223 = a1;
  v203 = sub_26F49D918();
  v202 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v201 = &v194 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = sub_26F49DAB8();
  v234 = *(v235 - 8);
  MEMORY[0x28223BE20](v235);
  v208 = &v194 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v204 = &v194 - v8;
  MEMORY[0x28223BE20](v9);
  v218 = &v194 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v11 - 8);
  v206 = &v194 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v214 = &v194 - v14;
  MEMORY[0x28223BE20](v15);
  v213 = &v194 - v16;
  MEMORY[0x28223BE20](v17);
  v205 = &v194 - v18;
  MEMORY[0x28223BE20](v19);
  v220 = &v194 - v20;
  MEMORY[0x28223BE20](v21);
  v216 = &v194 - v22;
  MEMORY[0x28223BE20](v23);
  v231 = (&v194 - v24);
  MEMORY[0x28223BE20](v25);
  v230 = (&v194 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220);
  MEMORY[0x28223BE20](v27 - 8);
  v200 = &v194 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v207 = &v194 - v30;
  MEMORY[0x28223BE20](v31);
  v217 = &v194 - v32;
  v226 = type metadata accessor for VisualTranslationModel(0);
  v227 = *(v226 - 8);
  MEMORY[0x28223BE20](v226);
  v209 = &v194 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v219 = &v194 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1470, &qword_26F4AB228);
  MEMORY[0x28223BE20](v36 - 8);
  v221 = &v194 - v37;
  v232 = sub_26F49D968();
  v236 = *(v232 - 8);
  MEMORY[0x28223BE20](v232);
  v199 = &v194 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v211 = &v194 - v40;
  MEMORY[0x28223BE20](v41);
  v212 = &v194 - v42;
  MEMORY[0x28223BE20](v43);
  v228 = &v194 - v44;
  MEMORY[0x28223BE20](v45);
  v229 = &v194 - v46;
  MEMORY[0x28223BE20](v47);
  v215 = &v194 - v48;
  MEMORY[0x28223BE20](v49);
  v233 = &v194 - v50;
  v51 = sub_26F49F7D8();
  v52 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v54 = &v194 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v57 = &v194 - v56;
  v58 = sub_26F49F728();
  v59 = *(v58 - 8);
  v60 = MEMORY[0x28223BE20](v58);
  v62 = &v194 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *(v52 + 16);
  v63(v57, v254, v51, v60);
  if ((*(v52 + 88))(v57, v51) != *MEMORY[0x277CE3090])
  {
    (*(v52 + 8))(v57, v51);
LABEL_7:
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v75 = sub_26F49DCA8();
    __swift_project_value_buffer(v75, qword_280F67ED0);
    v76 = sub_26F49DC88();
    v77 = sub_26F49FDD8();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_26F39E000, v76, v77, "Observation is not text as expected", v78, 2u);
      MEMORY[0x274391F70](v78, -1, -1);
    }

    return;
  }

  (*(v52 + 96))(v57, v51);
  (*(v59 + 32))(v62, v57, v58);
  v64 = sub_26F49F708();
  objc_opt_self();
  v65 = swift_dynamicCastObjCClass();
  if (!v65)
  {

    (*(v59 + 8))(v62, v58);
    goto LABEL_7;
  }

  v210 = v64;
  v196 = v62;
  v197 = v59;
  v198 = v58;
  v195 = v65;
  v66 = [v65 getCROutputRegion];
  (v63)(v54, v254, v51);
  v67 = [v66 trackingID];
  if (v67)
  {
    v68 = v215;
    v69 = v67;
    sub_26F49D948();

    v70 = v236;
    v71 = *(v236 + 32);
    v72 = v221;
    v73 = v232;
    v71(v221, v68, v232);
    (*(v70 + 56))(v72, 0, 1, v73);
    v74 = v233;
    v71(v233, v72, v73);
  }

  else
  {
    v79 = v236;
    v80 = v221;
    v73 = v232;
    (*(v236 + 56))(v221, 1, 1, v232);
    v81 = [v66 uuid];
    v74 = v233;
    sub_26F49D948();

    if ((*(v79 + 48))(v80, 1, v73) != 1)
    {
      sub_26F3B6B4C(v80, &qword_2806E1470, &qword_26F4AB228);
    }
  }

  v254 = v66;
  v82 = [v66 significantTranscriptChange];
  v83 = v222;
  if (*(v222 + 16))
  {
    v84 = sub_26F45FF48(v74);
    if (v85)
    {
      v86 = *(v83 + 56) + *(v227 + 72) * v84;
      v87 = v209;
      sub_26F448DA4(v86, v209, type metadata accessor for VisualTranslationModel);
      sub_26F476988(v87, v219, type metadata accessor for VisualTranslationModel);
      if (v82)
      {
        goto LABEL_45;
      }

      v88 = *(v219 + *(v226 + 28));
      v89 = *(v88 + 16);
      v231 = v88;
      if (v89)
      {
        v90 = type metadata accessor for TextModel(0);
        v91 = v88 + ((*(*(v90 - 8) + 80) + 32) & ~*(*(v90 - 8) + 80)) + *(v90 + 28);
        v92 = v205;
        sub_26F3E718C(v91, v205);
        if ((*(v234 + 48))(v92, 1, v235) != 1)
        {
          v241 = sub_26F49D988();
          v242 = v93;
          v239 = 45;
          v240 = 0xE100000000000000;
          v237 = 95;
          v238 = 0xE100000000000000;
          sub_26F3BDC0C();
          v94 = sub_26F49FFF8();
          v96 = v95;

          (*(v234 + 8))(v92, v235);
          goto LABEL_32;
        }
      }

      else
      {
        v92 = v205;
        (*(v234 + 56))(v205, 1, 1, v235);
      }

      sub_26F3B6B4C(v92, &qword_2806DEFD8, &qword_26F4A3670);
      v94 = 0;
      v96 = 0;
LABEL_32:
      v241 = sub_26F49D988();
      v242 = v128;
      v239 = 45;
      v240 = 0xE100000000000000;
      v237 = 95;
      v238 = 0xE100000000000000;
      sub_26F3BDC0C();
      v129 = sub_26F49FFF8();
      v131 = v130;

      if (!v96)
      {
        goto LABEL_44;
      }

      if (v94 == v129 && v96 == v131)
      {
      }

      else
      {
        v132 = sub_26F4A0458();

        v74 = v233;
        if ((v132 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      v133 = v231;
      if (*(v231 + 2))
      {
        v134 = type metadata accessor for TextModel(0);
        v135 = v234;
        v136 = v204;
        v137 = v235;
        (*(v234 + 16))(v204, v133 + ((*(*(v134 - 8) + 80) + 32) & ~*(*(v134 - 8) + 80)) + *(v134 + 36), v235);
        v241 = sub_26F49D988();
        v242 = v138;
        v239 = 45;
        v240 = 0xE100000000000000;
        v237 = 95;
        v238 = 0xE100000000000000;
        v230 = sub_26F49FFF8();
        v140 = v139;

        (*(v135 + 8))(v136, v137);
      }

      else
      {
        v230 = 0;
        v140 = 0;
      }

      v241 = sub_26F49D988();
      v242 = v141;
      v239 = 45;
      v240 = 0xE100000000000000;
      v237 = 95;
      v238 = 0xE100000000000000;
      v142 = sub_26F49FFF8();
      v144 = v143;

      if (!v140)
      {
LABEL_44:

        v74 = v233;
        goto LABEL_45;
      }

      if (v230 == v142 && v140 == v144)
      {

        v74 = v233;
LABEL_57:
        v179 = *(v236 + 16);
        v180 = v199;
        v179(v199, v74, v73);
        v181 = v201;
        sub_26F49D8E8();
        v182 = v226;
        v177 = v219;
        sub_26F49D8F8();
        if (v183 <= 0.0)
        {
          v184 = v200;
          v179(v200, v177, v73);
          (*(v202 + 32))(v184 + v182[6], v181, v203);
          v185 = *(v177 + v182[8]);
          v186 = *(v177 + v182[9]);
          v187 = *(v177 + v182[10]);
          v188 = v184 + v182[5];
          v189 = v252;
          *(v188 + 128) = v251;
          *(v188 + 144) = v189;
          *(v188 + 160) = v253;
          v190 = v248;
          *(v188 + 64) = v247;
          *(v188 + 80) = v190;
          v191 = v250;
          *(v188 + 96) = v249;
          *(v188 + 112) = v191;
          v192 = v244;
          *v188 = v243;
          *(v188 + 16) = v192;
          v193 = v246;
          *(v188 + 32) = v245;
          *(v188 + 48) = v193;
          *(v184 + v182[7]) = v231;
          *(v184 + v182[8]) = v185;
          *(v184 + v182[9]) = v186;
          *(v184 + v182[10]) = v187;
          *(v184 + v182[11]) = 0;
        }

        else
        {
          (*(v202 + 8))(v181, v203);
          v184 = v200;
          sub_26F448DA4(v177, v200, type metadata accessor for VisualTranslationModel);
        }

        (*(v227 + 56))(v184, 0, 1, v182);
        sub_26F48806C(v184, v180);

        (*(v236 + 8))(v233, v73);
LABEL_55:
        (*(v197 + 8))(v196, v198);
        sub_26F475CB0(v177, type metadata accessor for VisualTranslationModel);
        return;
      }

      v178 = sub_26F4A0458();

      v74 = v233;
      if (v178)
      {
        goto LABEL_57;
      }

LABEL_45:
      v145 = v235;
      v146 = *(v236 + 16);
      v146(v212, v74, v73);
      v231 = v146;
      v146(v211, v74, v73);
      v147 = v234;
      v148 = *(v234 + 16);
      v149 = v213;
      v148(v213, v225, v145);
      v150 = v147[7];
      (v150)(v149, 0, 1, v145);
      v151 = v214;
      v148(v214, v224, v145);
      v230 = v150;
      (v150)(v151, 0, 1, v145);
      v152 = v206;
      sub_26F3E718C(v151, v206);
      v153 = v147[6];
      if (v153(v152, 1, v145) == 1)
      {
        v154 = v210;
        v155 = v208;
        _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
        if (v153(v152, 1, v145) != 1)
        {
          sub_26F3B6B4C(v152, &qword_2806DEFD8, &qword_26F4A3670);
        }
      }

      else
      {
        v156 = v147[4];
        v155 = v208;
        v156(v208, v152, v145);
        v157 = v210;
      }

      v158 = [v195 getCROutputRegion];
      LODWORD(v229) = [v158 layoutDirection] == 5 && Locale.supportsVerticalText()();
      v159 = v220;
      v160 = v235;
      v148(v220, v155, v235);
      (v230)(v159, 0, 1, v160);
      v161 = v213;
      sub_26F474F3C(v158, v213, v159);
      v230 = v162;
      sub_26F3B6B4C(v159, &qword_2806DEFD8, &qword_26F4A3670);
      v228 = [v158 numberOfLines];
      v163 = [v158 textAlignment];
      v164 = 0x2010003u >> (8 * v163);
      if (v163 >= 4)
      {
        v164 = 3;
      }

      LODWORD(v225) = v164;
      v165 = v207;
      v166 = v211;
      v167 = v232;
      v231(v207, v211, v232);
      v168 = v226;
      sub_26F49D8E8();
      v169 = v210;

      (*(v234 + 8))(v155, v160);
      sub_26F3B6B4C(v214, &qword_2806DEFD8, &qword_26F4A3670);
      sub_26F3B6B4C(v161, &qword_2806DEFD8, &qword_26F4A3670);
      v170 = *(v236 + 8);
      v170(v166, v167);
      v171 = v165 + v168[5];
      v172 = v248;
      *(v171 + 64) = v247;
      *(v171 + 80) = v172;
      *(v171 + 160) = v253;
      v173 = v252;
      *(v171 + 128) = v251;
      *(v171 + 144) = v173;
      v174 = v250;
      *(v171 + 96) = v249;
      *(v171 + 112) = v174;
      v175 = v244;
      *v171 = v243;
      *(v171 + 16) = v175;
      v176 = v246;
      *(v171 + 32) = v245;
      *(v171 + 48) = v176;
      *(v165 + v168[7]) = v230;
      *(v165 + v168[8]) = v228;
      *(v165 + v168[9]) = v229 & 1;
      *(v165 + v168[10]) = v225;
      *(v165 + v168[11]) = 1;
      (*(v227 + 56))(v165, 0, 1, v168);
      sub_26F48806C(v165, v212);

      v170(v233, v167);
      v177 = v219;
      goto LABEL_55;
    }
  }

  LODWORD(v222) = v82;
  v97 = *(v236 + 16);
  v97(v229, v74, v73);
  v221 = v97;
  v97(v228, v74, v73);
  v98 = v234;
  v99 = *(v234 + 16);
  v100 = v230;
  v101 = v235;
  v99(v230, v225, v235);
  v102 = v98[7];
  v102(v100, 0, 1, v101);
  v103 = v231;
  v99(v231, v224, v101);
  v225 = v102;
  v102(v103, 0, 1, v101);
  v104 = v216;
  sub_26F3E718C(v103, v216);
  v105 = v98[6];
  if (v105(v104, 1, v101) == 1)
  {
    v106 = v210;
    v107 = v218;
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    if (v105(v104, 1, v235) != 1)
    {
      sub_26F3B6B4C(v104, &qword_2806DEFD8, &qword_26F4A3670);
    }
  }

  else
  {
    v108 = v98[4];
    v107 = v218;
    v108(v218, v104, v235);
    v109 = v210;
  }

  v110 = [v195 getCROutputRegion];
  LODWORD(v224) = [v110 layoutDirection] == 5 && Locale.supportsVerticalText()();
  v111 = v220;
  v112 = v235;
  v99(v220, v107, v235);
  v225(v111, 0, 1, v112);
  v113 = v230;
  sub_26F474F3C(v110, v230, v111);
  v225 = v114;
  sub_26F3B6B4C(v111, &qword_2806DEFD8, &qword_26F4A3670);
  v220 = [v110 numberOfLines];
  v115 = [v110 textAlignment];
  v116 = 0x2010003u >> (8 * v115);
  if (v115 >= 4)
  {
    v116 = 3;
  }

  LODWORD(v219) = v116;
  v117 = v217;
  v118 = v228;
  v119 = v232;
  (v221)(v217, v228, v232);
  v120 = v226;
  sub_26F49D8E8();

  (*(v234 + 8))(v107, v112);
  sub_26F3B6B4C(v231, &qword_2806DEFD8, &qword_26F4A3670);
  sub_26F3B6B4C(v113, &qword_2806DEFD8, &qword_26F4A3670);
  v121 = *(v236 + 8);
  v121(v118, v119);
  v122 = v117 + v120[5];
  v123 = v248;
  *(v122 + 64) = v247;
  *(v122 + 80) = v123;
  *(v122 + 160) = v253;
  v124 = v252;
  *(v122 + 128) = v251;
  *(v122 + 144) = v124;
  v125 = v250;
  *(v122 + 96) = v249;
  *(v122 + 112) = v125;
  v126 = v244;
  *v122 = v243;
  *(v122 + 16) = v126;
  v127 = v246;
  *(v122 + 32) = v245;
  *(v122 + 48) = v127;
  *(v117 + v120[7]) = v225;
  *(v117 + v120[8]) = v220;
  *(v117 + v120[9]) = v224 & 1;
  *(v117 + v120[10]) = v219;
  *(v117 + v120[11]) = v222;
  (*(v227 + 56))(v117, 0, 1, v120);
  sub_26F48806C(v117, v229);

  v121(v233, v119);
  (*(v197 + 8))(v196, v198);
}

uint64_t VisualTranslationModel.debugDescription.getter()
{
  v1 = type metadata accessor for VisualTranslationModel(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TextDiagnosticsModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F448DA4(v0, v3, type metadata accessor for VisualTranslationModel);
  TextDiagnosticsModel.init(model:)(v3, v6);
  v10[0] = TextDiagnosticsModel.json.getter();
  v10[1] = v7;
  MEMORY[0x2743907E0](10, 0xE100000000000000);
  v8 = v10[0];
  sub_26F475CB0(v6, type metadata accessor for TextDiagnosticsModel);
  return v8;
}

uint64_t VisualTranslationModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1378, &unk_26F4AA9A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F475D10();
  sub_26F4A0598();
  v30 = 0;
  sub_26F49D968();
  sub_26F4749EC(&qword_2806DEE68, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_26F4A03F8();
  if (!v2)
  {
    v9 = type metadata accessor for VisualTranslationModel(0);
    v10 = (v3 + v9[5]);
    v11 = v10[9];
    v27 = v10[8];
    v28 = v11;
    v29 = *(v10 + 20);
    v12 = v10[5];
    v23 = v10[4];
    v24 = v12;
    v13 = v10[7];
    v25 = v10[6];
    v26 = v13;
    v14 = v10[1];
    v19 = *v10;
    v20 = v14;
    v15 = v10[3];
    v21 = v10[2];
    v22 = v15;
    v18 = 1;
    sub_26F475D64();
    sub_26F4A03F8();
    LOBYTE(v19) = 2;
    sub_26F49D918();
    sub_26F4749EC(&qword_2806E1390, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_26F4A03F8();
    *&v19 = *(v3 + v9[7]);
    v18 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0AB8, &unk_26F4A8E10);
    sub_26F475E60(&qword_2806E1398, &qword_2806E13A0, &protocol conformance descriptor for TextModel, MEMORY[0x277D83948]);
    sub_26F4A03F8();
    LOBYTE(v19) = 4;
    sub_26F4A03D8();
    LOBYTE(v19) = 5;
    sub_26F4A03A8();
    LOBYTE(v19) = *(v3 + v9[10]);
    v18 = 6;
    sub_26F475DB8();
    sub_26F4A0388();
    LOBYTE(v19) = 7;
    sub_26F4A03A8();
  }

  return (*(v6 + 8))(v8, v5);
}

void VisualTranslationModel.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v33 = sub_26F49D918();
  v32 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26F49D968();
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v36 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E13B0, &qword_26F4AA9B0);
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v8 = v28 - v7;
  v9 = type metadata accessor for VisualTranslationModel(0);
  MEMORY[0x28223BE20](v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F475D10();
  v37 = v8;
  v12 = v52;
  sub_26F4A0588();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v13 = v4;
    v52 = v9;
    v29 = v11;
    v14 = v32;
    v15 = v33;
    LOBYTE(v41) = 0;
    sub_26F4749EC(&qword_2806DEE78, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_26F4A0348();
    v16 = v29;
    (*(v31 + 32))(v29, v36, v5);
    v40 = 1;
    sub_26F475E0C();
    sub_26F4A0348();
    v28[1] = v5;
    v17 = v52;
    v18 = &v16[v52[5]];
    v19 = v48;
    v20 = v50;
    *(v18 + 8) = v49;
    *(v18 + 9) = v20;
    *(v18 + 20) = v51;
    v21 = v46;
    *(v18 + 4) = v45;
    *(v18 + 5) = v21;
    *(v18 + 6) = v47;
    *(v18 + 7) = v19;
    v22 = v42;
    *v18 = v41;
    *(v18 + 1) = v22;
    v23 = v44;
    *(v18 + 2) = v43;
    *(v18 + 3) = v23;
    LOBYTE(v39) = 2;
    sub_26F4749EC(&qword_2806E13C0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_26F4A0348();
    (*(v14 + 32))(&v16[v17[6]], v13, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0AB8, &unk_26F4A8E10);
    v38 = 3;
    sub_26F475E60(&qword_2806E13C8, &qword_2806E13D0, &protocol conformance descriptor for TextModel, MEMORY[0x277D83978]);
    sub_26F4A0348();
    *&v16[v17[7]] = v39;
    LOBYTE(v39) = 4;
    *&v16[v17[8]] = sub_26F4A0328();
    LOBYTE(v39) = 5;
    v24 = sub_26F4A0308();
    v25 = v34;
    v16[v17[9]] = v24 & 1;
    v38 = 6;
    sub_26F475EFC();
    sub_26F4A02E8();
    v16[v17[10]] = v39;
    LOBYTE(v39) = 7;
    LOBYTE(v17) = sub_26F4A0308();
    (*(v25 + 8))(v37, v35);
    v26 = v17 & 1;
    v27 = v29;
    v29[v52[11]] = v26;
    sub_26F448DA4(v27, v30, type metadata accessor for VisualTranslationModel);
    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_26F475CB0(v27, type metadata accessor for VisualTranslationModel);
  }
}

uint64_t sub_26F474404(uint64_t a1)
{
  MEMORY[0x28223BE20](a1 - 8);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TextDiagnosticsModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F448DA4(v1, v3, type metadata accessor for VisualTranslationModel);
  TextDiagnosticsModel.init(model:)(v3, v6);
  v10[0] = TextDiagnosticsModel.json.getter();
  v10[1] = v7;
  MEMORY[0x2743907E0](10, 0xE100000000000000);
  v8 = v10[0];
  sub_26F475CB0(v6, type metadata accessor for TextDiagnosticsModel);
  return v8;
}

uint64_t sub_26F474520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for TextModel(0);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for VisualTranslationModel(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - v13;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v17 = *(v12 + 72);
    while (1)
    {
      sub_26F448DA4(v16, v10, type metadata accessor for VisualTranslationModel);
      v18 = *&v10[*(v8 + 28)];
      if (*(v18 + 16))
      {
        break;
      }

      v19 = sub_26F49DAB8();
      (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
      sub_26F3B6B4C(v7, &qword_2806DEFD8, &qword_26F4A3670);
      sub_26F475CB0(v10, type metadata accessor for VisualTranslationModel);
      v16 += v17;
      if (!--v15)
      {
        goto LABEL_5;
      }
    }

    v22 = v36;
    v23 = *(v36 + 36);
    v35 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v24 = v35 + v23;
    v25 = sub_26F49DAB8();
    v26 = *(v25 - 8);
    v33 = *(v26 + 16);
    v33(v7, v18 + v24, v25);
    v27 = *(v26 + 56);
    v27(v7, 0, 1, v25);
    sub_26F3B6B4C(v7, &qword_2806DEFD8, &qword_26F4A3670);
    sub_26F476988(v10, v14, type metadata accessor for VisualTranslationModel);
    v28 = *&v14[*(v8 + 28)];

    sub_26F475CB0(v14, type metadata accessor for VisualTranslationModel);
    if (*(v28 + 16))
    {
      v29 = v27;
      v30 = v34;
      sub_26F448DA4(v28 + v35, v34, type metadata accessor for TextModel);

      v31 = v37;
      v33(v37, v30 + *(v22 + 36), v25);
      sub_26F475CB0(v30, type metadata accessor for TextModel);
      return v29(v31, 0, 1, v25);
    }

    else
    {

      return (v27)(v37, 1, 1, v25);
    }
  }

  else
  {
LABEL_5:
    v20 = sub_26F49DAB8();
    return (*(*(v20 - 8) + 56))(v37, 1, 1, v20);
  }
}

unint64_t sub_26F474998()
{
  result = qword_2806E12F8;
  if (!qword_2806E12F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E12F8);
  }

  return result;
}

uint64_t sub_26F4749EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26F474A34()
{
  result = qword_2806E1328;
  if (!qword_2806E1328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1328);
  }

  return result;
}

unint64_t sub_26F474A88()
{
  result = qword_2806E1330;
  if (!qword_2806E1330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1330);
  }

  return result;
}

unint64_t sub_26F474ADC()
{
  result = qword_2806E1338;
  if (!qword_2806E1338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1338);
  }

  return result;
}

unint64_t sub_26F474B30()
{
  result = qword_2806E1340;
  if (!qword_2806E1340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1340);
  }

  return result;
}

uint64_t sub_26F474B84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_26F4A0458() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000 || (sub_26F4A0458() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6874737361507369 && a2 == 0xED00006867756F72 || (sub_26F4A0458() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7466654C706F74 && a2 == 0xE700000000000000 || (sub_26F4A0458() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7468676952706F74 && a2 == 0xE800000000000000 || (sub_26F4A0458() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x654C6D6F74746F62 && a2 == 0xEA00000000007466 || (sub_26F4A0458() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69526D6F74746F62 && a2 == 0xEB00000000746867)
  {

    return 6;
  }

  else
  {
    v6 = sub_26F4A0458();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_26F474DDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265746E6563 && a2 == 0xE600000000000000;
  if (v4 || (sub_26F4A0458() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696461656CLL && a2 == 0xE700000000000000 || (sub_26F4A0458() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696C69617274 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26F4A0458();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_26F474EF0(uint64_t a1, uint64_t a2)
{
  v2 = sub_26F4A02A8();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

void sub_26F474F3C(void *a1, uint64_t a2, uint64_t a3)
{
  v111 = a3;
  v109 = a2;
  v118 = sub_26F49DAB8();
  v99 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v5 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v91 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v9 - 8);
  v92 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v97 = &v91 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v91 - v14;
  MEMORY[0x28223BE20](v16);
  v117 = &v91 - v17;
  v110 = sub_26F49D968();
  v98 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v96 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v116 = &v91 - v20;
  v21 = type metadata accessor for TextModel(0);
  v107 = *(v21 - 8);
  v108 = v21;
  MEMORY[0x28223BE20](v21);
  v119 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1478, &unk_26F4AB230);
  v24 = *(v23 - 8);
  *&v25 = MEMORY[0x28223BE20](v23).n128_u64[0];
  v27 = &v91 - v26;
  v94 = a1;
  v28 = [a1 text];
  v93 = v5;
  v95 = v8;
  if (v28)
  {
    v29 = v28;
    v30 = sub_26F49F8C8();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0xE000000000000000;
  }

  v120 = v30;
  v121 = v32;
  sub_26F49DB68();
  sub_26F4769F0();
  sub_26F476A44();
  v33 = sub_26F49F838();
  (*(v24 + 8))(v27, v23);

  v34 = 0;
  v35 = *(v33 + 16);
  v36 = v33 + 24;
  v37 = MEMORY[0x277D84F90];
  v38 = MEMORY[0x277D84F90];
LABEL_5:
  v39 = (v36 + 32 * v34);
  while (v35 != v34)
  {
    if (v34 >= *(v33 + 16))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return;
    }

    ++v34;
    v40 = v39 + 4;
    v41 = v39[1];
    v42 = v39[2];
    v39 += 4;
    if ((v42 ^ v41) >= 0x4000)
    {
      v43 = *v40;
      v113 = *(v40 - 1);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v120 = v38;
      v114 = v43;
      v115 = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26F4034CC(0, v38[2] + 1, 1);
        v38 = v120;
      }

      v46 = v38[2];
      v45 = v38[3];
      if (v46 >= v45 >> 1)
      {
        sub_26F4034CC((v45 > 1), v46 + 1, 1);
        v38 = v120;
      }

      v38[2] = v46 + 1;
      v47 = &v38[4 * v46];
      v47[4] = v41;
      v47[5] = v42;
      v48 = v114;
      v47[6] = v113;
      v47[7] = v48;
      v36 = v115;
      goto LABEL_5;
    }
  }

  v49 = v38[2];
  if (v49)
  {
    v120 = v37;
    sub_26F403444(0, v49, 0);
    v50 = 0;
    v112 = (v99 + 32);
    v106 = v38[2];
    v101 = (v99 + 56);
    v102 = (v99 + 48);
    v100 = (v98 + 32);
    v51 = v38 + 7;
    v52 = v95;
    v53 = v119;
    v54 = v120;
    v104 = v38;
    v105 = v15;
    v103 = v49;
    while (v106 != v50)
    {
      if (v50 >= v38[2])
      {
        goto LABEL_39;
      }

      v115 = v54;
      v55 = *(v51 - 3);
      v56 = *(v51 - 2);
      v57 = *(v51 - 1);
      v58 = *v51;

      sub_26F49D958();
      v59 = MEMORY[0x274390760](v55, v56, v57, v58);
      v113 = v60;
      v114 = v59;
      sub_26F3E718C(v109, v117);
      sub_26F3E718C(v111, v15);
      v61 = *v102;
      if ((*v102)(v15, 1, v118) == 1)
      {
        _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
        if (v61(v15, 1, v118) != 1)
        {
          sub_26F3B6B4C(v15, &qword_2806DEFD8, &qword_26F4A3670);
        }
      }

      else
      {
        (*v112)(v52, v15, v118);
      }

      v62 = v108;
      v63 = v108[7];
      v64 = v118;
      (*v101)(v53 + v63, 1, 1, v118);
      v65 = (v53 + v62[8]);
      v67 = v62[11];
      v66 = v62[12];
      (*v100)(v119, v116, v110);
      *&v119[v62[5]] = v50;
      v68 = &v119[v62[6]];
      v69 = v113;
      *v68 = v114;
      *(v68 + 1) = v69;
      sub_26F3D27D4(v117, &v119[v63]);
      *v65 = 0;
      v65[1] = 0;
      (*v112)(&v119[v62[9]], v52, v64);

      *&v119[v62[10]] = 0;
      *&v119[v67] = 0;
      *&v119[v66] = 1;
      v53 = v119;
      v54 = v115;
      v120 = v115;
      v71 = *(v115 + 16);
      v70 = *(v115 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_26F403444((v70 > 1), v71 + 1, 1);
        v54 = v120;
      }

      ++v50;
      *(v54 + 16) = v71 + 1;
      sub_26F476988(v53, v54 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v71, type metadata accessor for TextModel);
      v51 += 4;
      v38 = v104;
      v15 = v105;
      if (v103 == v50)
      {

        goto LABEL_27;
      }
    }

    goto LABEL_38;
  }

  v54 = MEMORY[0x277D84F90];
LABEL_27:
  v72 = v99;
  if (!*(v54 + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0118, &qword_26F4ABEF0);
    v73 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_26F4A3150;
    v75 = v74 + v73;
    sub_26F49D958();
    v76 = [v94 text];
    if (v76)
    {
      v77 = v76;
      v119 = sub_26F49F8C8();
      v117 = v78;
    }

    else
    {
      v119 = 0;
      v117 = 0xE000000000000000;
    }

    v79 = v92;
    sub_26F3E718C(v109, v97);
    sub_26F3E718C(v111, v79);
    v80 = *(v72 + 48);
    if (v80(v79, 1, v118) == 1)
    {
      v81 = v93;
      _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
      if (v80(v79, 1, v118) != 1)
      {
        sub_26F3B6B4C(v79, &qword_2806DEFD8, &qword_26F4A3670);
      }
    }

    else
    {
      v81 = v93;
      (*(v72 + 32))(v93, v79, v118);
    }

    v82 = v108;
    v83 = v108[7];
    v84 = v118;
    (*(v72 + 56))(v75 + v83, 1, 1, v118);
    v85 = (v75 + v82[8]);
    v86 = v72;
    v87 = v82[11];
    v88 = v82[12];
    (*(v98 + 32))(v75, v96, v110);
    *(v75 + v82[5]) = 0;
    v89 = (v75 + v82[6]);
    v90 = v117;
    *v89 = v119;
    v89[1] = v90;
    sub_26F3D27D4(v97, v75 + v83);
    *v85 = 0;
    v85[1] = 0;
    (*(v86 + 32))(v75 + v82[9], v81, v84);
    *(v75 + v82[10]) = 0;
    *(v75 + v87) = 0;
    *(v75 + v88) = 1;
  }
}

uint64_t _s13TranslationUI06VisualA5ModelV6models4from5group12sourceLocale06targetI0SayACGSaySo27VNRecognizedTextObservationCG_Sb10Foundation0I0VSgAPtFZ_0(unint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26F470A30(a1, 0x277CE2DD8);
  if (v8)
  {
    v9 = v8;
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v10 = sub_26F49DCA8();
    __swift_project_value_buffer(v10, qword_280F67ED0);

    v11 = sub_26F49DC88();
    v12 = sub_26F49FDB8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134349056;
      if (v9 >> 62)
      {
        v14 = sub_26F4A00A8();
      }

      else
      {
        v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v13 + 4) = v14;

      _os_log_impl(&dword_26F39E000, v11, v12, "OCR observations unwrapped %{public}ld", v13, 0xCu);
      MEMORY[0x274391F70](v13, -1, -1);
    }

    else
    {
    }

    MEMORY[0x28223BE20](v15);
    v24[16] = a2 & 1;
    v25 = a3;
    v26 = a4;
    sub_26F46C73C(MEMORY[0x277D84F90], sub_26F476AA8, v24, v9);
    v22 = v21;
  }

  else
  {
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v16 = sub_26F49DCA8();
    __swift_project_value_buffer(v16, qword_280F67ED0);

    v17 = sub_26F49DC88();
    v18 = sub_26F49FDB8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134349056;
      if (a1 >> 62)
      {
        v20 = sub_26F4A00A8();
      }

      else
      {
        v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v19 + 4) = v20;

      _os_log_impl(&dword_26F39E000, v17, v18, "Failed to unwrap %{public}ld OCR observations", v19, 0xCu);
      MEMORY[0x274391F70](v19, -1, -1);
    }

    else
    {
    }

    return MEMORY[0x277D84F90];
  }

  return v22;
}

uint64_t sub_26F475CB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26F475D10()
{
  result = qword_2806E1380;
  if (!qword_2806E1380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1380);
  }

  return result;
}

unint64_t sub_26F475D64()
{
  result = qword_2806E1388;
  if (!qword_2806E1388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1388);
  }

  return result;
}

unint64_t sub_26F475DB8()
{
  result = qword_2806E13A8;
  if (!qword_2806E13A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E13A8);
  }

  return result;
}

unint64_t sub_26F475E0C()
{
  result = qword_2806E13B8;
  if (!qword_2806E13B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E13B8);
  }

  return result;
}

uint64_t sub_26F475E60(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0AB8, &unk_26F4A8E10);
    sub_26F4749EC(a2, type metadata accessor for TextModel, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26F475EFC()
{
  result = qword_2806E13D8;
  if (!qword_2806E13D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E13D8);
  }

  return result;
}

unint64_t sub_26F475F54()
{
  result = qword_2806E13E0;
  if (!qword_2806E13E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E13E0);
  }

  return result;
}

uint64_t sub_26F476018(uint64_t a1)
{
  result = sub_26F49D968();
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

void sub_26F476144(uint64_t a1)
{
  sub_26F49D968();
  if (v1 <= 0x3F)
  {
    sub_26F49D918();
    if (v2 <= 0x3F)
    {
      sub_26F476218(319);
      if (v3 <= 0x3F)
      {
        sub_26F476270();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26F476218(uint64_t a1)
{
  if (!qword_280F66A00)
  {
    type metadata accessor for TextModel(255);
    v1 = sub_26F49FB48();
    if (!v2)
    {
      atomic_store(v1, &qword_280F66A00);
    }
  }
}

void sub_26F476270()
{
  if (!qword_280F66B90)
  {
    v0 = sub_26F49FFC8();
    if (!v1)
    {
      atomic_store(v0, &qword_280F66B90);
    }
  }
}

uint64_t getEnumTagSinglePayload for VisualTranslationModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VisualTranslationModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26F476464()
{
  result = qword_2806E13F8;
  if (!qword_2806E13F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E13F8);
  }

  return result;
}

unint64_t sub_26F4764BC()
{
  result = qword_2806E1400;
  if (!qword_2806E1400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1400);
  }

  return result;
}

unint64_t sub_26F476514()
{
  result = qword_2806E1408;
  if (!qword_2806E1408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1408);
  }

  return result;
}

unint64_t sub_26F47656C()
{
  result = qword_2806E1410;
  if (!qword_2806E1410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1410);
  }

  return result;
}

unint64_t sub_26F4765C4()
{
  result = qword_2806E1418;
  if (!qword_2806E1418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1418);
  }

  return result;
}

unint64_t sub_26F47661C()
{
  result = qword_2806E1420;
  if (!qword_2806E1420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1420);
  }

  return result;
}

unint64_t sub_26F476674()
{
  result = qword_2806E1428;
  if (!qword_2806E1428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1428);
  }

  return result;
}

unint64_t sub_26F4766CC()
{
  result = qword_2806E1430;
  if (!qword_2806E1430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1430);
  }

  return result;
}

unint64_t sub_26F476724()
{
  result = qword_2806E1438;
  if (!qword_2806E1438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1438);
  }

  return result;
}

unint64_t sub_26F47677C()
{
  result = qword_2806E1440;
  if (!qword_2806E1440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1440);
  }

  return result;
}

unint64_t sub_26F4767D4()
{
  result = qword_2806E1448;
  if (!qword_2806E1448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1448);
  }

  return result;
}

unint64_t sub_26F47682C()
{
  result = qword_2806E1450;
  if (!qword_2806E1450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1450);
  }

  return result;
}

unint64_t sub_26F476884()
{
  result = qword_2806E1458;
  if (!qword_2806E1458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1458);
  }

  return result;
}

unint64_t sub_26F4768DC()
{
  result = qword_2806E1460;
  if (!qword_2806E1460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1460);
  }

  return result;
}

unint64_t sub_26F476934()
{
  result = qword_2806E1468;
  if (!qword_2806E1468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1468);
  }

  return result;
}

uint64_t sub_26F476988(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_26F4769F0()
{
  result = qword_280F66A10;
  if (!qword_280F66A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F66A10);
  }

  return result;
}

unint64_t sub_26F476A44()
{
  result = qword_280F66A18[0];
  if (!qword_280F66A18[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1478, &unk_26F4AB230);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280F66A18);
  }

  return result;
}

uint64_t sub_26F476AC8(uint64_t a1)
{
  if (*(a1 + 168))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_26F476AF8()
{
  result = qword_2806E1480;
  if (!qword_2806E1480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1480);
  }

  return result;
}

__n128 sub_26F476B60@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, CGFloat a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  CGAffineTransformMakeScale(&v24, a4, a4);
  a = v24.a;
  b = v24.b;
  c = v24.c;
  d = v24.d;
  tx = v24.tx;
  ty = v24.ty;
  CGAffineTransformMakeTranslation(&v24, (1.0 - a4) * (a2 * 0.5 + a5), (1.0 - a4) * (a3 * 0.5 + a6));
  v24.a = a;
  v24.b = b;
  v24.c = 0.0;
  v24.d = c;
  v24.tx = d;
  v24.ty = 0.0;
  v25 = tx;
  v26 = ty;
  v27 = 0x3FF0000000000000;
  sub_26F49E818();
  *(a1 + 32) = v21;
  *(a1 + 48) = v22;
  *(a1 + 64) = v23;
  result = v20;
  *a1 = v19;
  *(a1 + 16) = v20;
  return result;
}

__n128 sub_26F476C84@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  sub_26F476B60(v7, a2, a3, *v3, v3[1], v3[2]);
  v5 = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = v5;
  *(a1 + 64) = v8;
  result = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = result;
  return result;
}

double sub_26F476CE0@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double sub_26F476CEC(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*sub_26F476CF8(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_26F476D24;
}

double sub_26F476D24(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

uint64_t sub_26F476D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_26F47A550();

  return MEMORY[0x282130D98](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_26F476DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_26F47A550();

  return MEMORY[0x282130D80](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_26F476EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  sub_26F47A3EC();
  sub_26F49E118();
  MEMORY[0x2743903E0](1.2, 0.7, 0.0);
  sub_26F49E128();

  sub_26F49E0F8();
  MEMORY[0x2743903E0](0.4, 1.0, 0.0);
  sub_26F49E128();

  sub_26F49E108();
  sub_26F49E0F8();
  sub_26F49F5D8();
  sub_26F49E128();

  v8 = sub_26F49E0E8();

  return v8;
}

uint64_t VisualTranslationOverlay.init(models:zoomScale:systemTranslationDismissHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v23 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  type metadata accessor for CGRect(0);
  v24 = 0u;
  v25 = 0u;
  sub_26F49F338();
  v15 = v28;
  v16 = v27;
  *(a4 + 32) = v26;
  *(a4 + 48) = v16;
  *(a4 + 64) = v15;
  v17 = type metadata accessor for VisualTranslationOverlay(0);
  v18 = type metadata accessor for VisualTranslationModel(0);
  (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
  sub_26F3B8DD4(v14, v11, &qword_2806E0908, &qword_26F4AB220);
  sub_26F49F338();
  sub_26F3B6B4C(v14, &qword_2806E0908, &qword_26F4AB220);
  v19 = a4 + *(v17 + 36);
  result = swift_getKeyPath();
  *v19 = result;
  *(v19 + 8) = 0;
  *a4 = a1;
  *(a4 + 8) = a5;
  v21 = v23;
  *(a4 + 16) = a2;
  *(a4 + 24) = v21;
  return result;
}

uint64_t type metadata accessor for VisualTranslationOverlay(uint64_t a1)
{
  result = qword_2806E14A8;
  if (!qword_2806E14A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F47720C()
{
  v1 = sub_26F49E678();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for VisualTranslationOverlay(0) + 36);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26F49FDE8();
    v7 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();
    sub_26F3E1E08(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

void *sub_26F477364@<X0>(_BYTE *a1@<X8>)
{
  sub_26F456E0C();
  result = sub_26F49E688();
  *a1 = v3;
  return result;
}

uint64_t VisualTranslationOverlay.body.getter@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = type metadata accessor for VisualTranslationOverlay(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_26F47A124(v1, v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisualTranslationOverlay);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_26F47A18C(v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for VisualTranslationOverlay);
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1490, &qword_26F4AB398) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1488, &qword_26F4AB390);
  sub_26F49F368();
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v24[2] = *(v1 + 32);
  v24[3] = v10;
  v25 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1498, &qword_26F4AB3A0);
  sub_26F49F348();
  v11 = type metadata accessor for SystemWidePresentation(0);
  v12 = v24[1];
  v14 = *(v1 + 16);
  v13 = *(v1 + 24);
  v15 = &v8[*(v11 + 20)];
  *v15 = v24[0];
  *(v15 + 1) = v12;
  v16 = &v8[*(v11 + 24)];
  *v16 = v14;
  v16[1] = v13;
  *a1 = sub_26F477A64;
  a1[1] = v7;
  sub_26F3ACF68(v14, v13);
  v17 = sub_26F47720C();
  KeyPath = swift_getKeyPath();
  v19 = sub_26F49F5A8();
  v21 = v20;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E14A0, &qword_26F4AB3D8);
  v23 = a1 + *(result + 36);
  *v23 = KeyPath;
  v23[8] = 0;
  v23[9] = v17 & 1;
  *(v23 + 2) = v19;
  *(v23 + 3) = v21;
  return result;
}

uint64_t sub_26F477628@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = type metadata accessor for VisualTranslationOverlay(0);
  v26 = *(v5 - 8);
  v6 = *(v26 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_26F49E178();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1508, &qword_26F4AB478);
  v27 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = (v25 - v12);
  sub_26F49E158();
  if (v14 <= 0.0 || (sub_26F49E158(), v15 <= 0.0))
  {
    v23 = v28;
    v24 = *(v27 + 56);

    return v24(v23, 1, 1, v11);
  }

  else
  {
    *v13 = sub_26F49F578();
    v13[1] = v16;
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1510, &qword_26F4AB480) + 44);
    v25[0] = *a2;
    v25[1] = v17;
    v29 = v25[0];
    (*(v8 + 16))(v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
    sub_26F47A124(a2, v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisualTranslationOverlay);
    v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v19 = (v9 + *(v26 + 80) + v18) & ~*(v26 + 80);
    v20 = swift_allocObject();
    (*(v8 + 32))(v20 + v18, v10, v7);
    sub_26F47A18C(v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for VisualTranslationOverlay);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1518, &qword_26F4AB488);
    sub_26F49D968();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1520, &qword_26F4AB490);
    sub_26F3B18CC(&qword_280F65700, &qword_2806E1518, &qword_26F4AB488, MEMORY[0x277D83980]);
    sub_26F479C8C();
    sub_26F47A3A4(qword_280F66030, type metadata accessor for VisualTranslationModel, &protocol conformance descriptor for VisualTranslationModel);
    sub_26F49F4C8();
    v21 = v28;
    sub_26F3BBAEC(v13, v28, &qword_2806E1508, &qword_26F4AB478);
    return (*(v27 + 56))(v21, 0, 1, v11);
  }
}

uint64_t sub_26F477A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for VisualTranslationOverlay(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_26F477628(a1, v6, a2);
}

uint64_t sub_26F477AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v237 = a2;
  v227 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v4 - 8);
  v226 = &v184 - v5;
  v6 = type metadata accessor for VisualTranslationModel(0);
  v224 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v234 = v7;
  v235 = &v184 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VisualTranslationOverlay(0);
  v222 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v223 = v9;
  v233 = &v184 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26F49DA98();
  v186 = *(v10 - 8);
  v187 = v10;
  MEMORY[0x28223BE20](v10);
  v185 = &v184 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = COERCE_DOUBLE(sub_26F49DAB8());
  v231 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v184 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v184 = &v184 - v16;
  v203 = sub_26F49E2E8();
  v201 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  *&v200 = &v184 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  locked = type metadata accessor for TranslationOverlay.LockedMetrics(0);
  MEMORY[0x28223BE20](locked);
  v194 = &v184 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v193 = &v184 - v20;
  v21 = type metadata accessor for TranslationOverlay(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v184 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1588, &qword_26F4AB4D0);
  MEMORY[0x28223BE20](v196);
  *&v199 = &v184 - v24;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1590, &qword_26F4AB4D8);
  MEMORY[0x28223BE20](v198);
  v204 = &v184 - v25;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1598, &qword_26F4AB4E0);
  MEMORY[0x28223BE20](v202);
  v211 = &v184 - v26;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15A0, &qword_26F4AB4E8);
  MEMORY[0x28223BE20](v209);
  v212 = &v184 - v27;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15A8, &qword_26F4AB4F0);
  MEMORY[0x28223BE20](v210);
  v207 = &v184 - v28;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15B0, &qword_26F4AB4F8);
  MEMORY[0x28223BE20](v205);
  v208 = &v184 - v29;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1568, &qword_26F4AB4B0);
  MEMORY[0x28223BE20](v206);
  v213 = &v184 - v30;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1558, &qword_26F4AB4A8);
  MEMORY[0x28223BE20](v215);
  v214 = &v184 - v31;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1540, &qword_26F4AB4A0);
  MEMORY[0x28223BE20](v216);
  v217 = &v184 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15B8, &qword_26F4AB500);
  v219 = *(v33 - 8);
  v220 = v33;
  MEMORY[0x28223BE20](v33);
  v230 = &v184 - v34;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1538, &qword_26F4AB498);
  MEMORY[0x28223BE20](v218);
  v221 = &v184 - v35;
  v36 = a1 + v6[5];
  v37 = *(v36 + 16);
  v197 = (v36 + 16);
  v38 = *(v36 + 24);
  v39 = *(v36 + 32);
  v41 = *(v36 + 40);
  v40 = *(v36 + 48);
  v43 = *(v36 + 56);
  v42 = *(v36 + 64);
  v44 = *(v36 + 72);
  sub_26F49E158();
  v236 = v45;
  v232 = v46;
  v47 = *(a1 + v6[9]);
  LODWORD(v228) = v47;
  if (v47)
  {
    v48 = v40;
  }

  else
  {
    v48 = v37;
  }

  if (v47)
  {
    v49 = v43;
  }

  else
  {
    v49 = v38;
  }

  if (!v47)
  {
    v37 = v39;
  }

  v281 = v48;
  v282 = v49;
  if (v47)
  {
    v40 = v42;
    v43 = v44;
  }

  else
  {
    v38 = v41;
  }

  if (!v47)
  {
    v39 = v42;
  }

  v50 = v48;
  v283 = v37;
  v284 = v38;
  if (!v47)
  {
    v41 = v44;
  }

  v51 = v49;
  v285 = v40;
  v286 = v43;
  v287 = v39;
  v288 = v41;
  if (sub_26F465174())
  {
    *&v52.f64[0] = v236;
    sub_26F465208(&v244, v52, v232);
    v51 = v244.f64[1];
    v50 = v244.f64[0];
    v37 = v245;
    v38 = v246;
    v40 = v247;
    v43 = v248;
    v39 = v249;
    v41 = v250;
  }

  v53 = [objc_allocWithZone(MEMORY[0x277D78578]) initWithTopLeft:v50 topRight:v51 bottomLeft:v37 bottomRight:{v38, v40, v43, v39, v41}];
  [v53 minimumBoundingRectWithoutRotation];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;

  v62 = *(v36 + 152);
  sub_26F49E158();
  v272 = v62 / v63;
  v275 = 0;
  v273 = 0;
  v274 = 0;
  v276 = v62 / v63;
  v277 = 0;
  v278 = 0;
  v279 = 0;
  v280 = 0x3FF0000000000000;
  v258 = 1.0 / (v62 / v63);
  v261 = 0;
  v259 = 0;
  v260 = 0;
  v262 = v258;
  v263 = 0;
  v264 = 0;
  v265 = 0;
  v266 = 0x3FF0000000000000;
  CATransform3DMakeTranslation(&v238, v55, v57, 0.0);
  *&v238.m13 = *&v238.m14;
  v238.m21 = v238.m22;
  v238.m22 = v238.m24;
  *&v238.m23 = *&v238.m41;
  v238.m31 = v238.m44;
  sub_26F49E818();
  v64 = *(v36 + 128);
  v269 = *(v36 + 112);
  v270 = v64;
  v271 = *(v36 + 144);
  v65 = *(v36 + 80);
  v268 = *(v36 + 96);
  v267 = v65;
  sub_26F49E818();
  sub_26F49E818();
  v66 = sub_26F46D23C();
  v232 = *&v12;
  v225 = v14;
  if (v66)
  {
    v67 = Array<A>.targetParagraph.getter(*(a1 + v6[7]));
    v191 = v68;
    v192 = v67;
  }

  else
  {
    v191 = 0xE000000000000000;
    v192 = 0;
  }

  v229 = *(a1 + v6[7]);
  v69 = Array<A>.sourceParagraph.getter(v229);
  v189 = v70;
  v190 = v69;
  v188 = *(a1 + v6[8]);
  v71 = *(v237 + 8);
  v72 = v6[10];
  v236 = a1;
  v73 = *(a1 + v72);
  if (v73 == 3)
  {
    v74 = 1;
  }

  else
  {
    v74 = v73;
  }

  KeyPath = swift_getKeyPath();
  *&v23[v21[13]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0CC8, &qword_26F4A93E8);
  swift_storeEnumTagMultiPayload();
  *&v23[v21[14]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0CD0, &qword_26F4A93F0);
  swift_storeEnumTagMultiPayload();
  v76 = swift_getKeyPath();
  if (qword_2806DE7D0 != -1)
  {
    swift_once();
  }

  v77 = __swift_project_value_buffer(locked, qword_2806EA928);
  v78 = v193;
  sub_26F47A124(v77, v193, type metadata accessor for TranslationOverlay.LockedMetrics);
  *v23 = v59;
  *(v23 + 1) = v61;
  v79 = v191;
  *(v23 + 2) = v192;
  *(v23 + 3) = v79;
  v80 = v189;
  *(v23 + 4) = v190;
  *(v23 + 5) = v80;
  *(v23 + 6) = v188;
  *(v23 + 7) = v71;
  v23[64] = v228;
  v23[65] = v74;
  sub_26F49EE48();
  v81 = &v23[v21[12]];
  *v81 = KeyPath;
  v81[8] = 0;
  v82 = &v23[v21[15]];
  *v82 = v76;
  v82[8] = 0;
  sub_26F47A124(v78, v194, type metadata accessor for TranslationOverlay.LockedMetrics);
  sub_26F49F338();
  sub_26F4563CC(v78);
  v83 = v21[17];
  *&v23[v83] = sub_26F49DEF8();
  v84 = swift_getKeyPath();
  v85 = v229;
  v87 = v231;
  v86 = v232;
  if (*(v229 + 16) && (v88 = type metadata accessor for TextModel(0), v89 = v184, (*(v87 + 16))(v184, v85 + *(v88 + 36) + ((*(*(v88 - 8) + 80) + 32) & ~*(*(v88 - 8) + 80)), COERCE_FLOAT64_T(*&v86)), v90 = v185, sub_26F49DAA8(), v91 = sub_26F49DA78(), (*(v186 + 8))(v90, v187), (*(v87 + 8))(v89, COERCE_FLOAT64_T(*&v86)), v91 == 2))
  {
    v92 = MEMORY[0x277CDFA90];
  }

  else
  {
    v92 = MEMORY[0x277CDFA88];
  }

  v94 = v200;
  v93 = v201;
  v95 = v203;
  (*(v201 + 104))(COERCE_DOUBLE(*&v200), *v92, v203);
  v96 = *&v199;
  v97 = (*&v199 + *(v196 + 36));
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3E0, &qword_26F4A82B0);
  (*(v93 + 32))(v97 + *(v98 + 28), COERCE_DOUBLE(*&v94), v95);
  *v97 = v84;
  sub_26F47A18C(v23, v96, type metadata accessor for TranslationOverlay);
  v99 = v204;
  sub_26F3BBAEC(v96, v204, &qword_2806E1588, &qword_26F4AB4D0);
  *(v99 + *(v198 + 36)) = 0;
  if (*(v36 + 8))
  {
    v101 = *(v36 + 64);
    v100 = *(v36 + 72);
    v103 = *(v36 + 48);
    v102 = *(v36 + 56);
    v105 = *(v36 + 32);
    v104 = *(v36 + 40);
    v107 = *(v36 + 16);
    v106 = *(v36 + 24);
    v108 = v228;
    if (v228)
    {
      v109 = *(v36 + 48);
    }

    else
    {
      v109 = *(v36 + 16);
    }

    v200 = v55;
    v201 = v59;
    if (v228)
    {
      v110 = v102;
    }

    else
    {
      v110 = v106;
    }

    if (v228)
    {
      v111 = v107;
    }

    else
    {
      v111 = v105;
    }

    v199 = v57;
    if (v228)
    {
      v112 = v106;
    }

    else
    {
      v112 = v104;
    }

    if (v228)
    {
      v113 = v101;
    }

    else
    {
      v113 = v103;
    }

    if (v228)
    {
      v114 = v100;
    }

    else
    {
      v114 = v102;
    }

    if (v228)
    {
      v115 = v105;
    }

    else
    {
      v115 = v101;
    }

    v203 = v61;
    if (v228)
    {
      v116 = v104;
    }

    else
    {
      v116 = v100;
    }

    v117 = objc_allocWithZone(MEMORY[0x277D78578]);
    v118 = v110;
    v119 = v111;
    v55 = v200;
    v59 = v201;
    v120 = v112;
    v57 = v199;
    v121 = v116;
    v61 = v203;
    v122 = [v117 initWithTopLeft:v109 topRight:v118 bottomLeft:v119 bottomRight:{v120, v113, v114, v115, v121}];
    [v122 averagedAngleFromBottomAndTopEdges];
    v124 = v123;
  }

  else
  {
    v124 = *v36;
    v108 = v228;
  }

  if (v108)
  {
    v125 = v124 + -1.57079633;
  }

  else
  {
    v125 = v124;
  }

  sub_26F49F668();
  v127 = v126;
  v129 = v128;
  v130 = v211;
  sub_26F3BBAEC(v99, v211, &qword_2806E1590, &qword_26F4AB4D8);
  v131 = v130 + *(v202 + 36);
  *v131 = v125;
  *(v131 + 8) = v127;
  *(v131 + 16) = v129;
  sub_26F49F5A8();
  sub_26F49E0C8();
  v132 = v212;
  v133 = sub_26F3BBAEC(v130, v212, &qword_2806E1598, &qword_26F4AB4E0);
  v134 = (v132 + *(v209 + 36));
  v135 = v252;
  *v134 = v251;
  v134[1] = v135;
  v134[2] = v253;
  v141 = sub_26F476EA0(v133, v136, v137, v138, v139, v140, v55, v57);
  v142 = v132;
  v143 = v207;
  sub_26F3BBAEC(v142, v207, &qword_2806E15A0, &qword_26F4AB4E8);
  *(v143 + *(v210 + 36)) = v141;
  v144 = v208;
  sub_26F3BBAEC(v143, v208, &qword_2806E15A8, &qword_26F4AB4F0);
  v145 = v144 + *(v205 + 36);
  v146 = v242;
  *(v145 + 32) = v241;
  *(v145 + 48) = v146;
  *(v145 + 64) = v243;
  v147 = v240;
  *v145 = v239;
  *(v145 + 16) = v147;
  v148 = v213;
  sub_26F3BBAEC(v144, v213, &qword_2806E15B0, &qword_26F4AB4F8);
  v149 = *(v206 + 52);
  v150 = sub_26F49D968();
  v151 = v236;
  (*(*(v150 - 8) + 16))(v148 + v149, v236, v150);
  v152 = v229;
  v153 = *(v229 + 16);
  v154 = v197[1];
  v254 = *v197;
  v255 = v154;
  v155 = v197[3];
  v256 = v197[2];
  v257 = v155;
  v156 = sub_26F4650B4() / 10000.0 + v153;
  v157 = v214;
  sub_26F3BBAEC(v148, v214, &qword_2806E1568, &qword_26F4AB4B0);
  *(v157 + *(v215 + 36)) = v156;
  sub_26F479EC8();
  v158 = v217;
  sub_26F49F0C8();
  sub_26F3B6B4C(v157, &qword_2806E1558, &qword_26F4AB4A8);
  v159 = v233;
  sub_26F47A124(v237, v233, type metadata accessor for VisualTranslationOverlay);
  v160 = v235;
  sub_26F47A124(v151, v235, type metadata accessor for VisualTranslationModel);
  v161 = *(v222 + 80);
  v162 = (v161 + 16) & ~v161;
  v228 = v162 + v223;
  v163 = (v162 + v223 + 7) & 0xFFFFFFFFFFFFFFF8;
  v164 = *(v224 + 80);
  v223 = ~v164;
  v224 = v161 | v164;
  v165 = swift_allocObject();
  sub_26F47A18C(v159, v165 + v162, type metadata accessor for VisualTranslationOverlay);
  v166 = (v165 + v163);
  *v166 = v55;
  v166[1] = v57;
  *(v166 + 2) = v59;
  *(v166 + 3) = v61;
  sub_26F47A18C(v160, v165 + ((v164 + v163 + 32) & ~v164), type metadata accessor for VisualTranslationModel);
  sub_26F479E0C();
  sub_26F49EF98();

  sub_26F3B6B4C(v158, &qword_2806E1540, &qword_26F4AB4A0);
  v167 = swift_getKeyPath();
  if (*(v152 + 16))
  {
    v168 = type metadata accessor for TextModel(0);
    v170 = v231;
    v169 = v232;
    v171 = v226;
    (*(v231 + 16))(v226, v152 + *(v168 + 36) + ((*(*(v168 - 8) + 80) + 32) & ~*(*(v168 - 8) + 80)), COERCE_FLOAT64_T(*&v232));
    (*(v170 + 56))(v171, 0, 1, COERCE_FLOAT64_T(*&v169));
    v172 = v225;
    (*(v170 + 32))(v225, v171, COERCE_FLOAT64_T(*&v169));
  }

  else
  {
    v170 = v231;
    v169 = v232;
    v173 = v226;
    (*(v231 + 56))(v226, 1, 1, COERCE_FLOAT64_T(*&v232));
    v172 = v225;
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    if ((*(v170 + 48))(v173, 1, COERCE_FLOAT64_T(*&v169)) != 1)
    {
      sub_26F3B6B4C(v173, &qword_2806DEFD8, &qword_26F4A3670);
    }
  }

  v174 = v221;
  v175 = &v221[*(v218 + 36)];
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1580, &unk_26F4AB4C0);
  (*(v170 + 32))(v175 + *(v176 + 28), v172, COERCE_FLOAT64_T(*&v169));
  *v175 = v167;
  (*(v219 + 32))(v174, v230, v220);
  v177 = v233;
  sub_26F47A124(v237, v233, type metadata accessor for VisualTranslationOverlay);
  v178 = v235;
  sub_26F47A124(v236, v235, type metadata accessor for VisualTranslationModel);
  v179 = (v228 + v164) & v223;
  v180 = swift_allocObject();
  sub_26F47A18C(v177, v180 + v162, type metadata accessor for VisualTranslationOverlay);
  sub_26F47A18C(v178, v180 + v179, type metadata accessor for VisualTranslationModel);
  v181 = v227;
  sub_26F3BBAEC(v174, v227, &qword_2806E1538, &qword_26F4AB498);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1520, &qword_26F4AB490);
  v183 = (v181 + *(result + 36));
  *v183 = sub_26F47A2D8;
  v183[1] = v180;
  v183[2] = 0;
  v183[3] = 0;
  return result;
}

uint64_t sub_26F478FBC(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v22 - v16;
  v26.origin.x = a3;
  v26.origin.y = a4;
  v26.size.width = a5;
  v26.size.height = a6;
  v27 = CGRectInset(v26, -5.0, -5.0);
  v18 = *(a1 + 64);
  v19 = *(a1 + 48);
  v23 = *(a1 + 32);
  v24 = v19;
  v25 = v18;
  v22 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1498, &qword_26F4AB3A0);
  sub_26F49F358();
  sub_26F47A124(a2, v17, type metadata accessor for VisualTranslationModel);
  v20 = type metadata accessor for VisualTranslationModel(0);
  (*(*(v20 - 8) + 56))(v17, 0, 1, v20);
  type metadata accessor for VisualTranslationOverlay(0);
  sub_26F3B8DD4(v17, v14, &qword_2806E0908, &qword_26F4AB220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1488, &qword_26F4AB390);
  sub_26F49F358();
  return sub_26F3B6B4C(v17, &qword_2806E0908, &qword_26F4AB220);
}

void sub_26F4791A4(uint64_t *a1, unint64_t a2)
{
  v4 = sub_26F49D968();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15C0, &unk_26F4AB5E0);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1470, &qword_26F4AB228);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - v18;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v35 = v13;
    v36 = a2;
    v34 = v7;
    v20 = *a1;
    if (*(*a1 + 16))
    {
      v21 = *(type metadata accessor for VisualTranslationModel(0) - 8);
      v22 = *(v5 + 16);
      v22(v19, v20 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v4);
      v23 = *(v5 + 56);
      v23(v19, 0, 1, v4);
    }

    else
    {
      v23 = *(v5 + 56);
      v23(v19, 1, 1, v4);
      v22 = *(v5 + 16);
    }

    v22(v16, v36, v4);
    v23(v16, 0, 1, v4);
    v24 = *(v8 + 48);
    sub_26F3B8DD4(v19, v10, &qword_2806E1470, &qword_26F4AB228);
    sub_26F3B8DD4(v16, &v10[v24], &qword_2806E1470, &qword_26F4AB228);
    v25 = *(v5 + 48);
    if (v25(v10, 1, v4) == 1)
    {
      sub_26F3B6B4C(v16, &qword_2806E1470, &qword_26F4AB228);
      sub_26F3B6B4C(v19, &qword_2806E1470, &qword_26F4AB228);
      if (v25(&v10[v24], 1, v4) == 1)
      {
        sub_26F3B6B4C(v10, &qword_2806E1470, &qword_26F4AB228);
LABEL_12:
        type metadata accessor for _BundleObject();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v31 = [objc_opt_self() bundleForClass_];
        sub_26F49D7D8();

        v32 = sub_26F49F898();

        UIAccessibilitySpeakAndDoNotBeInterrupted();

        return;
      }
    }

    else
    {
      v26 = v35;
      sub_26F3B8DD4(v10, v35, &qword_2806E1470, &qword_26F4AB228);
      if (v25(&v10[v24], 1, v4) != 1)
      {
        v27 = v34;
        (*(v5 + 32))(v34, &v10[v24], v4);
        sub_26F47A3A4(&qword_2806E1128, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v28 = sub_26F49F868();
        v29 = *(v5 + 8);
        v29(v27, v4);
        sub_26F3B6B4C(v16, &qword_2806E1470, &qword_26F4AB228);
        sub_26F3B6B4C(v19, &qword_2806E1470, &qword_26F4AB228);
        v29(v26, v4);
        sub_26F3B6B4C(v10, &qword_2806E1470, &qword_26F4AB228);
        if ((v28 & 1) == 0)
        {
          return;
        }

        goto LABEL_12;
      }

      sub_26F3B6B4C(v16, &qword_2806E1470, &qword_26F4AB228);
      sub_26F3B6B4C(v19, &qword_2806E1470, &qword_26F4AB228);
      (*(v5 + 8))(v26, v4);
    }

    sub_26F3B6B4C(v10, &qword_2806E15C0, &unk_26F4AB5E0);
  }
}

uint64_t sub_26F479754@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F49E578();
  *a1 = result & 1;
  return result;
}

void sub_26F4797C8(uint64_t a1)
{
  sub_26F479954(319, &qword_2806E14B8, type metadata accessor for VisualTranslationModel, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_26F3F1EF8(319, &qword_2806DF458, &qword_2806DF460, &unk_26F4A8340, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_26F479954(319, &qword_2806E14C0, type metadata accessor for CGRect, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_26F3F1EF8(319, &qword_2806E14C8, &qword_2806E0908, &qword_26F4AB220, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_26F4799B8();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26F479954(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26F4799B8()
{
  if (!qword_2806DF870)
  {
    v0 = sub_26F49DFE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2806DF870);
    }
  }
}

unint64_t sub_26F479A08()
{
  result = qword_2806E14D0;
  if (!qword_2806E14D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E14A0, &qword_26F4AB3D8);
    sub_26F479AC0();
    sub_26F3B18CC(&qword_2806E14F8, &qword_2806E1500, &qword_26F4AB470, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E14D0);
  }

  return result;
}

unint64_t sub_26F479AC0()
{
  result = qword_2806E14D8;
  if (!qword_2806E14D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1490, &qword_26F4AB398);
    sub_26F3B18CC(&qword_2806E14E0, &qword_2806E14E8, &qword_26F4AB468, MEMORY[0x277CDF7D8]);
    sub_26F47A3A4(&qword_2806E14F0, type metadata accessor for SystemWidePresentation, &unk_26F4A8568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E14D8);
  }

  return result;
}

uint64_t sub_26F479BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_26F49E178() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for VisualTranslationOverlay(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_26F477AE4(a1, v9, a2);
}

unint64_t sub_26F479C8C()
{
  result = qword_2806E1528;
  if (!qword_2806E1528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1520, &qword_26F4AB490);
    sub_26F479D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1528);
  }

  return result;
}

unint64_t sub_26F479D18()
{
  result = qword_2806E1530;
  if (!qword_2806E1530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1538, &qword_26F4AB498);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1540, &qword_26F4AB4A0);
    sub_26F479E0C();
    swift_getOpaqueTypeConformance2();
    sub_26F3B18CC(&qword_2806E1578, &qword_2806E1580, &unk_26F4AB4C0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1530);
  }

  return result;
}

unint64_t sub_26F479E0C()
{
  result = qword_2806E1548;
  if (!qword_2806E1548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1540, &qword_26F4AB4A0);
    sub_26F479EC8();
    sub_26F47A3A4(&qword_2806DF900, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1548);
  }

  return result;
}

unint64_t sub_26F479EC8()
{
  result = qword_2806E1550;
  if (!qword_2806E1550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1558, &qword_26F4AB4A8);
    sub_26F3B18CC(&qword_2806E1560, &qword_2806E1568, &qword_26F4AB4B0, MEMORY[0x277CE1148]);
    sub_26F3B18CC(&qword_280F65730, &qword_2806E1570, &qword_26F4AB4B8, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1550);
  }

  return result;
}

uint64_t sub_26F479FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_26F47A07C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0C90, &qword_26F4AB5F0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26F3B8DD4(a1, &v5 - v3, &qword_2806E0C90, &qword_26F4AB5F0);
  return sub_26F49E4D8();
}

uint64_t sub_26F47A124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F47A18C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F47A1F4()
{
  v1 = *(type metadata accessor for VisualTranslationOverlay(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for VisualTranslationModel(0) - 8);
  v5 = *(v0 + v3);
  v6 = *(v0 + v3 + 8);
  v7 = *(v0 + v3 + 16);
  v8 = *(v0 + v3 + 24);
  v9 = v0 + ((v3 + *(v4 + 80) + 32) & ~*(v4 + 80));

  return sub_26F478FBC(v0 + v2, v9, v5, v6, v7, v8);
}

void sub_26F47A2D8()
{
  v1 = *(type metadata accessor for VisualTranslationOverlay(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for VisualTranslationModel(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_26F4791A4((v0 + v2), v5);
}

uint64_t sub_26F47A3A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26F47A3EC()
{
  result = qword_2806E15C8;
  if (!qword_2806E15C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E15C8);
  }

  return result;
}

uint64_t _s19ScaleOffsetModifierVwet(uint64_t a1, int a2)
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

uint64_t _s19ScaleOffsetModifierVwst(uint64_t result, int a2, int a3)
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

unint64_t sub_26F47A4A0()
{
  result = qword_2806E15D0;
  if (!qword_2806E15D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E15D0);
  }

  return result;
}

unint64_t sub_26F47A4F8()
{
  result = qword_2806E15D8;
  if (!qword_2806E15D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E15D8);
  }

  return result;
}

unint64_t sub_26F47A550()
{
  result = qword_2806E15E0;
  if (!qword_2806E15E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E15E0);
  }

  return result;
}

uint64_t sub_26F47A5A4(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_26F4A0528();
  v4 = *a1;
  v5 = a1[1];
  sub_26F49F9A8();
  v6 = sub_26F4A0568();
  v7 = a2 + 56;
  v8 = -1 << *(a2 + 32);
  v9 = v6 & ~v8;
  if ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = a1[2];
    v12 = *(a1 + 24);
    v13 = *(a2 + 48);
    v19 = v11 == 0;
    v14 = v11 != 0;
    v15 = v19;
    v22 = v12 & v14;
    v21 = v12 & v15;
    do
    {
      v16 = v13 + 48 * v9;
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      v19 = *v16 == v4 && *(v16 + 8) == v5;
      if (v19 || (sub_26F4A0458() & 1) != 0)
      {
        if (v18)
        {
          if (v17)
          {
            if (v22)
            {
              return 1;
            }
          }

          else if (v21)
          {
            return 1;
          }
        }

        else if ((v12 & 1) == 0)
        {
          return 1;
        }
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return 0;
}

uint64_t sub_26F47A700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_26F4A0528();
  sub_26F49F9A8();
  v6 = sub_26F4A0568();
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
    if (v11 || (sub_26F4A0458() & 1) != 0)
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

uint64_t sub_26F47A7F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_26F49D968();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_26F480E80(&qword_280F663A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]), v7 = sub_26F49F818(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_26F480E80(&qword_2806E1128, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_26F49F868();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t static VisualTranslationService.isOCRLocale(_:)(uint64_t a1)
{
  v1 = sub_26F49D9F8();
  v2 = [v1 languageIdentifier];

  if (!v2)
  {
    sub_26F49F8C8();
    v2 = sub_26F49F898();
  }

  v3 = [objc_opt_self() baseLanguageFromLanguage_];

  v4 = sub_26F49F8C8();
  v6 = v5;

  if (qword_280F66B48 != -1)
  {
    swift_once();
  }

  v7 = qword_280F67EB0;

  v8 = sub_26F47A700(v4, v6, v7);

  return v8 & 1;
}

void sub_26F47AB44()
{
  sub_26F3B0C24(0, &qword_280F669F0, 0x277D78560);
  v0 = [swift_getObjCClassFromMetadata() supportedRecognitionLanguages];
  v1 = sub_26F49FAF8();

  v12[2] = MEMORY[0x277D84FA0];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 40;
    while (v3 < *(v1 + 16))
    {
      v5 = objc_opt_self();

      v6 = sub_26F49F898();
      v7 = [v5 baseLanguageFromLanguage_];

      v8 = sub_26F49F8C8();
      v10 = v9;

      v11 = v8 == 29281 && v10 == 0xE200000000000000;
      if (v11 || (sub_26F4A0458() & 1) != 0)
      {
      }

      else
      {
        sub_26F484E48(v12, v8, v10);
      }

      ++v3;
      v4 += 16;
      if (v2 == v3)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

uint64_t static VisualTranslationService.isTranslatable(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26F47AD90;

  return sub_26F47F388(a1);
}

uint64_t sub_26F47AD90(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t static VisualTranslationService.isTranslatable(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  v10 = sub_26F49FC08();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  v11[7] = v3;

  sub_26F40570C(0, 0, v9, &unk_26F4AB730, v11);
}

uint64_t sub_26F47AFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v6[5] = swift_task_alloc();
  v6[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F47B06C, 0, 0);
}

uint64_t sub_26F47B06C()
{
  v1 = v0[2];
  if (v1 >> 62)
  {
    if (sub_26F4A00A8())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v2 = v0[5];
    v3 = v0[6];
    v4 = v0[2];
    v5 = sub_26F49DAB8();
    v6 = *(*(v5 - 8) + 56);
    v6(v3, 1, 1, v5);
    v6(v2, 1, 1, v5);
    v7 = _s13TranslationUI06VisualA5ModelV6models4from5group12sourceLocale06targetI0SayACGSaySo27VNRecognizedTextObservationCG_Sb10Foundation0I0VSgAPtFZ_0(v4, 1, v3, v2);
    v0[7] = v7;
    sub_26F3B6B4C(v2, &qword_2806DEFD8, &qword_26F4A3670);
    sub_26F3B6B4C(v3, &qword_2806DEFD8, &qword_26F4A3670);
    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    v8[1] = sub_26F47B3D0;

    return sub_26F47F388(v7);
  }

  if (qword_280F66CB0 != -1)
  {
    swift_once();
  }

  v10 = sub_26F49DCA8();
  __swift_project_value_buffer(v10, qword_280F67ED0);
  v11 = sub_26F49DC88();
  v12 = sub_26F49FDD8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    sub_26F480E2C();
    v15 = swift_allocError();
    *v16 = 0;
    v17 = sub_26F49D7E8();

    *(v13 + 4) = v17;
    *v14 = v17;
    _os_log_impl(&dword_26F39E000, v11, v12, "Visual isTranslatable: NO; reason: observation failure: %@", v13, 0xCu);
    sub_26F3B6B4C(v14, &qword_2806DF258, &qword_26F4A6220);
    MEMORY[0x274391F70](v14, -1, -1);
    MEMORY[0x274391F70](v13, -1, -1);
  }

  sub_26F480E2C();
  v0[12] = swift_allocError();
  *v18 = 0;
  sub_26F49FBD8();
  v0[13] = sub_26F49FBC8();
  v20 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F47B7E4, v20, v19);
}

uint64_t sub_26F47B3D0(char a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_26F47B644;
  }

  else
  {
    *(v4 + 112) = a1 & 1;
    v5 = sub_26F47B520;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26F47B520()
{
  sub_26F49FBD8();
  *(v0 + 80) = sub_26F49FBC8();
  v2 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F47B5B4, v2, v1);
}

uint64_t sub_26F47B5B4()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 24);

  v2(v1, 0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_26F47B644()
{
  v1 = *(v0 + 72);
  sub_26F49FBD8();
  v2 = v1;
  *(v0 + 88) = sub_26F49FBC8();
  v4 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F47B6E4, v4, v3);
}

uint64_t sub_26F47B6E4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);

  v2(0, v1);

  return MEMORY[0x2822009F8](sub_26F47B774, 0, 0);
}

uint64_t sub_26F47B774()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26F47B7E4()
{
  v1 = v0[12];
  v2 = v0[3];

  v2(0, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_26F47B93C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, void *a6)
{
  v27 = a4;
  v28 = a5;
  v26 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - v15;
  v17 = sub_26F49FC08();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v10 + 16))(v13, a1, v9);
  v18 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v19 = v18 + v11;
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  v21 = v26;
  *(v20 + 4) = a2;
  *(v20 + 5) = v21;
  (*(v10 + 32))(&v20[v18], v13, v9);
  v22 = &v20[v19];
  v23 = v28;
  *v22 = v27;
  v22[1] = v23 & 1;
  *&v20[(v19 + 9) & 0xFFFFFFFFFFFFFFF8] = a6;

  v24 = a6;
  sub_26F480F28(0, 0, v16, &unk_26F4AB7E0, v20);
}

uint64_t sub_26F47BB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, char a8)
{
  *(v8 + 120) = a6;
  *(v8 + 128) = v19;
  *(v8 + 449) = a8;
  *(v8 + 448) = a7;
  *(v8 + 112) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220);
  *(v8 + 136) = swift_task_alloc();
  v9 = type metadata accessor for TextModel(0);
  *(v8 + 144) = v9;
  *(v8 + 152) = *(v9 - 8);
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0AB0, &qword_26F4A8DF0);
  *(v8 + 176) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0A08, &unk_26F4A89F0);
  *(v8 + 184) = v10;
  *(v8 + 192) = *(v10 - 8);
  *(v8 + 200) = swift_task_alloc();
  v11 = sub_26F49D968();
  *(v8 + 208) = v11;
  *(v8 + 216) = *(v11 - 8);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0AD0, &qword_26F4A8E58);
  *(v8 + 240) = v12;
  *(v8 + 248) = *(v12 - 8);
  *(v8 + 256) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0AC8, &qword_26F4A8E50);
  *(v8 + 264) = v13;
  *(v8 + 272) = *(v13 - 8);
  *(v8 + 280) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1608, &qword_26F4AB8C0);
  *(v8 + 288) = v14;
  *(v8 + 296) = *(v14 - 8);
  *(v8 + 304) = swift_task_alloc();
  type metadata accessor for Signpost(0);
  *(v8 + 312) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  *(v8 + 320) = swift_task_alloc();
  v15 = sub_26F49DAB8();
  *(v8 + 328) = v15;
  *(v8 + 336) = *(v15 - 8);
  *(v8 + 344) = swift_task_alloc();
  v16 = type metadata accessor for VisualTranslationModel(0);
  *(v8 + 352) = v16;
  *(v8 + 360) = *(v16 - 8);
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F47C004, 0, 0);
}

uint64_t sub_26F47C004()
{
  v133 = v0;
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_23:
    *(v0 + 40) = &type metadata for TranslateFeatures;
    *(v0 + 48) = sub_26F3D3D60();
    *(v0 + 16) = 0;
    v31 = sub_26F49DB58();
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    if (v31)
    {
      if (v2)
      {
        sub_26F43762C(1, 0, *(v0 + 312));
        type metadata accessor for VisualTranslationBatch();
        *(v0 + 400) = swift_initStackObject();

        *(v0 + 408) = sub_26F463CBC(v32);

        v33 = sub_26F462218();
        v34 = *(v33 + 2);
        if (v34)
        {
          v35 = *(v0 + 360);
          v36 = v33 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
          v128 = *(v35 + 72);
          v37 = (*(v0 + 296) + 8);
          do
          {
            v38 = *(v0 + 376);
            v39 = *(v0 + 384);
            v40 = *(v0 + 304);
            v41 = *(v0 + 288);
            sub_26F480DC4(v36, v39, type metadata accessor for VisualTranslationModel);
            sub_26F480DC4(v39, v38, type metadata accessor for VisualTranslationModel);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
            sub_26F49FCC8();
            (*v37)(v40, v41);
            sub_26F480EC8(v39, type metadata accessor for VisualTranslationModel);
            v36 += v128;
            --v34;
          }

          while (v34);
        }

        v73 = *(v0 + 128);
        v74 = sub_26F462B94();
        *(v0 + 416) = v74;
        v75 = [v73 logIdentifier];
        sub_26F49D948();

        v76 = [objc_allocWithZone(MEMORY[0x277CE1C40]) init];
        v77 = sub_26F49D928();
        v78 = [v76 startTranslationSessionWithSELFLoggingInvocationId_];

        if (qword_280F66CB0 != -1)
        {
          swift_once();
        }

        v79 = sub_26F49DCA8();
        *(v0 + 424) = __swift_project_value_buffer(v79, qword_280F67ED0);

        v80 = sub_26F49DC88();
        v81 = sub_26F49FDB8();
        v126 = v78;
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v131 = v83;
          *v82 = 134349314;
          v84 = v74[2];
          *(v82 + 4) = v84;

          *(v82 + 12) = 2082;
          v85 = MEMORY[0x277D84F90];
          if (v84)
          {
            v116 = v83;
            v119 = v81;
            v122 = v82;
            v86 = *(v0 + 216);
            v87 = *(v0 + 152);
            v132 = MEMORY[0x277D84F90];
            sub_26F403488(0, v84, 0);
            v85 = v132;
            v88 = v74 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
            v129 = *(v87 + 72);
            do
            {
              v89 = *(v0 + 224);
              v90 = *(v0 + 208);
              v91 = *(v0 + 168);
              sub_26F480DC4(v88, v91, type metadata accessor for TextModel);
              (*(v86 + 16))(v89, v91, v90);
              sub_26F480EC8(v91, type metadata accessor for TextModel);
              v132 = v85;
              v93 = *(v85 + 16);
              v92 = *(v85 + 24);
              if (v93 >= v92 >> 1)
              {
                sub_26F403488((v92 > 1), v93 + 1, 1);
                v85 = v132;
              }

              v94 = *(v0 + 224);
              v95 = *(v0 + 208);
              *(v85 + 16) = v93 + 1;
              (*(v86 + 32))(v85 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v93, v94, v95);
              v88 += v129;
              --v84;
            }

            while (v84);
            v82 = v122;
            v81 = v119;
            v83 = v116;
          }

          v97 = MEMORY[0x274390900](v85, *(v0 + 208));
          v99 = v98;

          v100 = sub_26F3B38D0(v97, v99, &v131);

          *(v82 + 14) = v100;
          _os_log_impl(&dword_26F39E000, v80, v81, "Requested translating %{public}ld models: %{public}s", v82, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v83);
          MEMORY[0x274391F70](v83, -1, -1);
          MEMORY[0x274391F70](v82, -1, -1);

          v96 = v74;
        }

        else
        {

          v96 = v74;
        }

        v101 = *(v0 + 256);
        v130 = *(v0 + 248);
        v123 = *(v0 + 240);
        v102 = *(v0 + 216);
        v117 = *(v0 + 208);
        v120 = *(v0 + 232);
        v103 = *(v0 + 192);
        v104 = *(v0 + 200);
        v114 = *(v0 + 184);
        v105 = *(v0 + 449);
        v106 = *(v0 + 448);
        v107 = swift_task_alloc();
        *(v107 + 16) = v96;
        *(v107 + 24) = v106;
        *(v107 + 25) = v105 & 1;
        *(v107 + 32) = v126;
        (*(v103 + 104))(v104, *MEMORY[0x277D85778], v114);
        sub_26F49FC78();

        (*(v102 + 8))(v120, v117);
        sub_26F49FC58();
        (*(v130 + 8))(v101, v123);
        *(v0 + 432) = MEMORY[0x277D84F90];
        v108 = swift_task_alloc();
        *(v0 + 440) = v108;
        *v108 = v0;
        v108[1] = sub_26F47CFFC;
        v109 = *(v0 + 264);
        v110 = *(v0 + 176);

        return MEMORY[0x2822003E8](v110, 0, 0, v109);
      }

      if (qword_280F66CB0 != -1)
      {
        swift_once();
      }

      v63 = sub_26F49DCA8();
      __swift_project_value_buffer(v63, qword_280F67ED0);
      v64 = sub_26F49DC88();
      v65 = sub_26F49FDD8();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *v66 = 138412290;
        sub_26F442974();
        v68 = swift_allocError();
        *v69 = 0;
        v70 = sub_26F49D7E8();

        *(v66 + 4) = v70;
        *v67 = v70;
        _os_log_impl(&dword_26F39E000, v64, v65, "Failed to translate because models are empty: %@", v66, 0xCu);
        sub_26F3B6B4C(v67, &qword_2806DF258, &qword_26F4A6220);
        MEMORY[0x274391F70](v67, -1, -1);
        MEMORY[0x274391F70](v66, -1, -1);
      }

      sub_26F442974();
      swift_allocError();
      *v71 = 0;
    }

    else
    {
      if (qword_280F66CB0 != -1)
      {
        swift_once();
      }

      v56 = sub_26F49DCA8();
      __swift_project_value_buffer(v56, qword_280F67ED0);
      v57 = sub_26F49DC88();
      v58 = sub_26F49FDD8();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v59 = 138412290;
        sub_26F480D70();
        v61 = swift_allocError();
        v62 = sub_26F49D7E8();

        *(v59 + 4) = v62;
        *v60 = v62;
        _os_log_impl(&dword_26F39E000, v57, v58, "Failed to translate because visual translation is disabled: %@", v59, 0xCu);
        sub_26F3B6B4C(v60, &qword_2806DF258, &qword_26F4A6220);
        MEMORY[0x274391F70](v60, -1, -1);
        MEMORY[0x274391F70](v59, -1, -1);
      }

      sub_26F480D70();
      swift_allocError();
    }

    swift_willThrow();

    v55 = *(v0 + 8);
    goto LABEL_46;
  }

  v3 = 0;
  v4 = *(v0 + 392);
  v5 = *(v0 + 360);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v7 = *(v0 + 336);
  v8 = *(v0 + 144);
  v9 = *(v0 + 152);
  v10 = *(*(v0 + 352) + 28);
  v115 = v6;
  v118 = (v7 + 32);
  v121 = (v7 + 8);
  v124 = (v7 + 56);
  v125 = (v7 + 48);
  v127 = *(v5 + 72);
  v112 = v8;
  v113 = v9;
  v111 = v10;
  while (1)
  {
    sub_26F480DC4(v6 + v3 * v127, *(v0 + 392), type metadata accessor for VisualTranslationModel);
    v11 = *(v4 + v10);
    v13 = *(v0 + 320);
    v12 = *(v0 + 328);
    if (*(v11 + 16))
    {
      break;
    }

    (*v124)(*(v0 + 320), 1, 1, *(v0 + 328));
LABEL_4:
    sub_26F3B6B4C(*(v0 + 320), &qword_2806DEFD8, &qword_26F4A3670);
LABEL_5:
    ++v3;
    sub_26F480EC8(*(v0 + 392), type metadata accessor for VisualTranslationModel);
    if (v3 == v2)
    {
      goto LABEL_23;
    }
  }

  sub_26F3E718C(v11 + *(v8 + 28) + ((*(v9 + 80) + 32) & ~*(v9 + 80)), *(v0 + 320));
  if ((*v125)(v13, 1, v12) == 1)
  {
    goto LABEL_4;
  }

  (*v118)(*(v0 + 344), *(v0 + 320), *(v0 + 328));
  v14 = sub_26F49D9F8();
  v15 = [v14 languageIdentifier];

  if (!v15)
  {
    sub_26F49F8C8();
    v15 = sub_26F49F898();
  }

  v16 = [objc_opt_self() baseLanguageFromLanguage_];

  v17 = sub_26F49F8C8();
  v19 = v18;

  if (qword_280F66B48 != -1)
  {
    swift_once();
  }

  v20 = qword_280F67EB0;
  if (!*(qword_280F67EB0 + 16))
  {
    goto LABEL_30;
  }

  v21 = v2;
  v22 = v4;
  sub_26F4A0528();

  sub_26F49F9A8();
  v23 = sub_26F4A0568();
  v24 = -1 << *(v20 + 32);
  v25 = v23 & ~v24;
  if ((*(v20 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
  {
    v26 = ~v24;
    while (1)
    {
      v27 = (*(v20 + 48) + 16 * v25);
      v28 = *v27 == v17 && v27[1] == v19;
      if (v28 || (sub_26F4A0458() & 1) != 0)
      {
        break;
      }

      v25 = (v25 + 1) & v26;
      if (((*(v20 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v29 = *(v0 + 344);
    v30 = *(v0 + 328);

    (*v121)(v29, v30);
    v4 = v22;
    v2 = v21;
    v9 = v113;
    v6 = v115;
    v10 = v111;
    v8 = v112;
    goto LABEL_5;
  }

LABEL_29:

LABEL_30:
  v42 = *(v0 + 392);
  v43 = *(v0 + 344);
  v44 = *(v0 + 328);

  (*v121)(v43, v44);
  sub_26F480EC8(v42, type metadata accessor for VisualTranslationModel);
  if (qword_280F66CB0 != -1)
  {
    swift_once();
  }

  v45 = sub_26F49DCA8();
  __swift_project_value_buffer(v45, qword_280F67ED0);
  v46 = sub_26F49DC88();
  v47 = sub_26F49FDD8();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138412290;
    sub_26F480E2C();
    v50 = swift_allocError();
    *v51 = 1;
    v52 = sub_26F49D7E8();

    *(v48 + 4) = v52;
    *v49 = v52;
    _os_log_impl(&dword_26F39E000, v46, v47, "Failed to translate because OCR for source locale is unsupported: %@", v48, 0xCu);
    sub_26F3B6B4C(v49, &qword_2806DF258, &qword_26F4A6220);
    MEMORY[0x274391F70](v49, -1, -1);
    MEMORY[0x274391F70](v48, -1, -1);
  }

  sub_26F480E2C();
  v53 = swift_allocError();
  *v54 = 1;
  *(v0 + 104) = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
  sub_26F49FCD8();

  v55 = *(v0 + 8);
LABEL_46:

  return v55();
}

uint64_t sub_26F47CFFC()
{

  return MEMORY[0x2822009F8](sub_26F47D0F8, 0, 0);
}

uint64_t sub_26F47D0F8()
{
  v1 = v0[22];
  v2 = v0[18];
  if ((*(v0[19] + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[54];
    (*(v0[34] + 8))(v0[35], v0[33]);
    sub_26F437AD0();
    if (*(v3 + 16))
    {
      v4 = *(v0[54] + 32);
      v5 = *(v0[52] + 16);
      v6 = v4;

      v7 = *(v3 + 16);

      if (v5 == v7)
      {
        v8 = v4;
        v9 = sub_26F49DC88();
        v10 = sub_26F49FDD8();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          *v11 = 138412290;
          v13 = sub_26F49D7E8();
          *(v11 + 4) = v13;
          *v12 = v13;
          _os_log_impl(&dword_26F39E000, v9, v10, "Failed to translate: %@", v11, 0xCu);
          sub_26F3B6B4C(v12, &qword_2806DF258, &qword_26F4A6220);
          MEMORY[0x274391F70](v12, -1, -1);
          MEMORY[0x274391F70](v11, -1, -1);
        }

        v14 = v0[39];

        v0[12] = v4;
        v15 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
        sub_26F49FCD8();

        goto LABEL_22;
      }
    }

    else
    {
    }

    v14 = v0[39];
    v0[11] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
    sub_26F49FCD8();

LABEL_22:
    sub_26F480EC8(v14, type metadata accessor for Signpost);

    v36 = v0[1];

    return v36();
  }

  v16 = v0[20];
  sub_26F3BEF64(v1, v16, type metadata accessor for TextModel);
  v17 = *(v16 + *(v2 + 44));
  v18 = v0[54];
  if (v17)
  {
    v19 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = v0[54];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = sub_26F446710(0, v18[2] + 1, 1, v0[54]);
    }

    v22 = v18[2];
    v21 = v18[3];
    if (v22 >= v21 >> 1)
    {
      v18 = sub_26F446710((v21 > 1), v22 + 1, 1, v18);
    }

    v18[2] = v22 + 1;
    v18[v22 + 4] = v17;
  }

  v23 = v0[44];
  v24 = v0[45];
  v25 = v0[17];
  sub_26F462D80(v0[20], v25);
  if ((*(v24 + 48))(v25, 1, v23) == 1)
  {
    v26 = v0[17];
    sub_26F480EC8(v0[20], type metadata accessor for TextModel);
    sub_26F3B6B4C(v26, &qword_2806E0908, &qword_26F4AB220);
  }

  else
  {
    v27 = v0[46];
    v28 = v0[47];
    v30 = v0[37];
    v29 = v0[38];
    v31 = v0[36];
    v32 = v0[20];
    sub_26F3BEF64(v0[17], v27, type metadata accessor for VisualTranslationModel);
    sub_26F480DC4(v27, v28, type metadata accessor for VisualTranslationModel);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
    sub_26F49FCC8();
    (*(v30 + 8))(v29, v31);
    sub_26F480EC8(v27, type metadata accessor for VisualTranslationModel);
    sub_26F480EC8(v32, type metadata accessor for TextModel);
  }

  v0[54] = v18;
  v33 = swift_task_alloc();
  v0[55] = v33;
  *v33 = v0;
  v33[1] = sub_26F47CFFC;
  v34 = v0[33];
  v35 = v0[22];

  return MEMORY[0x2822003E8](v35, 0, 0, v34);
}

uint64_t static VisualTranslationService.translate(models:strictLocales:taskHint:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v8 = sub_26F49D968();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a3;
  sub_26F49D958();
  static VisualTranslationService.translate(models:strictLocales:taskHint:selfLoggingInvocationId:)(a1, v5, &v14, a4);
  return (*(v9 + 8))(v11, v8);
}

void static VisualTranslationService.translate(models:strictLocales:taskHint:selfLoggingInvocationId:)(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v17[1] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15E8, &qword_26F4AB800);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - v11;
  v13 = *a3;
  v14 = [objc_allocWithZone(MEMORY[0x277CE1C40]) init];
  v15 = sub_26F49D928();
  v16 = [v14 startTranslationSessionWithSELFLoggingInvocationId_];

  v17[4] = a1;
  v17[5] = v5;
  v18 = a2;
  v19 = v13;
  v20 = v16;
  type metadata accessor for VisualTranslationModel(0);
  (*(v10 + 104))(v12, *MEMORY[0x277D858A0], v9);
  sub_26F49FD08();
}

uint64_t static VisualTranslationService.translate(_:strictLocales:taskHint:)(uint64_t a1, char a2, _BYTE *a3)
{
  *(v4 + 152) = a2;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220);
  *(v4 + 32) = swift_task_alloc();
  v6 = type metadata accessor for VisualTranslationModel(0);
  *(v4 + 40) = v6;
  *(v4 + 48) = *(v6 - 8);
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15F0, &qword_26F4AB750);
  *(v4 + 72) = v7;
  *(v4 + 80) = *(v7 - 8);
  *(v4 + 88) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15F8, &unk_26F4AB8B0);
  *(v4 + 96) = v8;
  *(v4 + 104) = *(v8 - 8);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 153) = *a3;

  return MEMORY[0x2822009F8](sub_26F47DB50, 0, 0);
}

uint64_t sub_26F47DB50()
{
  v13 = v0;
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 152);
  v6 = *(v0 + 16);
  v12 = *(v0 + 153);
  static VisualTranslationService.translate(models:strictLocales:taskHint:)(v6, v5, &v12, v1);
  (*(v4 + 16))(v2, v1, v3);
  sub_26F3B18CC(&qword_280F656A8, &qword_2806E15F8, &unk_26F4AB8B0, MEMORY[0x277D858E0]);
  sub_26F49FCA8();
  *(v0 + 128) = MEMORY[0x277D84F90];
  v7 = sub_26F3B18CC(&qword_280F656B0, &qword_2806E15F0, &qword_26F4AB750, MEMORY[0x277D858D0]);
  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  *v8 = v0;
  v8[1] = sub_26F47DCD4;
  v9 = *(v0 + 72);
  v10 = *(v0 + 32);

  return MEMORY[0x282200308](v10, v9, v7);
}

uint64_t sub_26F47DCD4()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    (*(v2[10] + 8))(v2[11], v2[9]);

    v3 = sub_26F47E0E8;
  }

  else
  {
    v3 = sub_26F47DE0C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26F47DE0C()
{
  v1 = v0[4];
  if ((*(v0[6] + 48))(v1, 1, v0[5]) == 1)
  {
    v2 = v0[15];
    v3 = v0[12];
    v4 = v0[13];
    (*(v0[10] + 8))(v0[11], v0[9]);
    (*(v4 + 8))(v2, v3);
    sub_26F3B6B4C(v1, &qword_2806E0908, &qword_26F4AB220);

    v5 = v0[1];
    v6 = v0[16];

    return v5(v6);
  }

  else
  {
    v9 = v0[7];
    v8 = v0[8];
    sub_26F3BEF64(v1, v8, type metadata accessor for VisualTranslationModel);
    sub_26F480DC4(v8, v9, type metadata accessor for VisualTranslationModel);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = v0[16];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_26F44650C(0, v11[2] + 1, 1, v0[16]);
    }

    v13 = v11[2];
    v12 = v11[3];
    if (v13 >= v12 >> 1)
    {
      v11 = sub_26F44650C((v12 > 1), v13 + 1, 1, v11);
    }

    v14 = v0[7];
    v15 = v0[6];
    sub_26F480EC8(v0[8], type metadata accessor for VisualTranslationModel);
    v11[2] = v13 + 1;
    sub_26F3BEF64(v14, v11 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13, type metadata accessor for VisualTranslationModel);
    v0[16] = v11;
    v16 = sub_26F3B18CC(&qword_280F656B0, &qword_2806E15F0, &qword_26F4AB750, MEMORY[0x277D858D0]);
    v17 = swift_task_alloc();
    v0[17] = v17;
    *v17 = v0;
    v17[1] = sub_26F47DCD4;
    v18 = v0[9];
    v19 = v0[4];

    return MEMORY[0x282200308](v19, v18, v16);
  }
}

uint64_t sub_26F47E0E8()
{
  (*(v0[13] + 8))(v0[15], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t static VisualTranslationService.translate(_:sourceLocale:targetLocale:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[0] = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v27 - v17;
  v19 = sub_26F49FC08();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_26F3E718C(a2, v15);
  sub_26F3E718C(a3, v12);
  v20 = *(v10 + 80);
  v21 = (v20 + 40) & ~v20;
  v22 = (v11 + v20 + v21) & ~v20;
  v23 = (v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = a1;
  sub_26F3FA30C(v15, v24 + v21);
  sub_26F3FA30C(v12, v24 + v22);
  v25 = (v24 + v23);
  *v25 = v27[0];
  v25[1] = a5;
  *(v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8)) = v27[1];

  sub_26F40570C(0, 0, v18, &unk_26F4AB760, v24);
}

uint64_t sub_26F47E3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v13;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v9 = sub_26F49D968();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();
  v10 = type metadata accessor for VisualTranslationModel(0);
  v8[13] = v10;
  v8[14] = *(v10 - 8);
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F47E53C, 0, 0);
}

uint64_t sub_26F47E53C()
{
  v1 = _s13TranslationUI06VisualA5ModelV6models4from5group12sourceLocale06targetI0SayACGSaySo27VNRecognizedTextObservationCG_Sb10Foundation0I0VSgAPtFZ_0(*(v0 + 32), 1, *(v0 + 40), *(v0 + 48));
  *(v0 + 144) = v1;
  *(v0 + 200) = 1;
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_26F47E604;

  return static VisualTranslationService.translate(_:strictLocales:taskHint:)(v1, 0, (v0 + 200));
}

uint64_t sub_26F47E604(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {

    v4 = sub_26F47EDA4;
  }

  else
  {
    v4 = sub_26F47E720;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26F47E720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 160);
  v58 = *(v4 + 16);
  if (v58)
  {
    v5 = 0;
    v56 = *(v3 + 104);
    v57 = *(v3 + 112);
    v6 = *(v3 + 88);
    v55 = v4 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
    v59 = (v6 + 16);
    v52 = v6;
    v54 = (v6 + 8);
    v7 = MEMORY[0x277D84F98];
    v53 = *(v3 + 160);
    while (v5 < *(v4 + 16))
    {
      v10 = *(v3 + 136);
      v11 = *(v3 + 120);
      v12 = *(v3 + 96);
      v13 = *(v3 + 80);
      sub_26F480DC4(v55 + *(v57 + 72) * v5, v10, type metadata accessor for VisualTranslationModel);
      v14 = *v59;
      (*v59)(v12, v10, v13);
      sub_26F480DC4(v10, v11, type metadata accessor for VisualTranslationModel);
      v15 = type metadata accessor for VisualTranslationResult(0);
      v16 = objc_allocWithZone(v15);
      v14(&v16[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_uuid], v11, v13);
      v17 = Array<A>.targetParagraph.getter(*(v11 + *(v56 + 28)));
      v18 = &v16[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_string];
      *v18 = v17;
      v18[1] = v19;
      v16[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_isPassthrough] = sub_26F46DC20() & 1;
      v20 = (v11 + *(v56 + 20));
      *&v16[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_topLeft] = v20[1];
      *&v16[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_topRight] = v20[2];
      *&v16[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_bottomLeft] = v20[3];
      *&v16[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_bottomRight] = v20[4];
      *(v3 + 16) = v16;
      *(v3 + 24) = v15;
      v21 = objc_msgSendSuper2((v3 + 16), sel_init);
      sub_26F480EC8(v11, type metadata accessor for VisualTranslationModel);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v7;
      v4 = sub_26F45FF48(v12);
      v23 = v7[2];
      v24 = (a2 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_36;
      }

      v27 = a2;
      if (v7[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = v4;
          sub_26F3C7AF8();
          v4 = v36;
          v7 = v60;
        }
      }

      else
      {
        v28 = *(v3 + 96);
        sub_26F3C67B4(v26, isUniquelyReferenced_nonNull_native);
        v4 = sub_26F45FF48(v28);
        if ((v27 & 1) != (v29 & 1))
        {

          return sub_26F4A04A8();
        }
      }

      v30 = *(v3 + 136);
      v31 = *(v3 + 96);
      v32 = *(v3 + 80);
      if (v27)
      {
        v8 = v7[7];
        v9 = *(v8 + 8 * v4);
        *(v8 + 8 * v4) = v21;

        (*v54)(v31, v32);
        sub_26F480EC8(v30, type metadata accessor for VisualTranslationModel);
      }

      else
      {
        v7[(v4 >> 6) + 8] |= 1 << v4;
        v33 = v4;
        v14(v7[6] + *(v52 + 72) * v4, v31, v32);
        *(v7[7] + 8 * v33) = v21;
        (*(v52 + 8))(v31, v32);
        v4 = sub_26F480EC8(v30, type metadata accessor for VisualTranslationModel);
        v34 = v7[2];
        v25 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v25)
        {
          goto LABEL_37;
        }

        v7[2] = v35;
      }

      ++v5;
      v4 = v53;
      if (v58 == v5)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    return MEMORY[0x2822009F8](v4, a2, a3);
  }

  v7 = MEMORY[0x277D84F98];
LABEL_17:
  v37 = *(v3 + 144);

  v61 = MEMORY[0x277D84F90];
  v38 = *(v37 + 16);
  if (!v38)
  {

    v42 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v39 = *(v3 + 112);
  v40 = *(v3 + 144) + ((*(v39 + 80) + 32) & ~*(v39 + 80));
  v41 = *(v39 + 72);
  v42 = MEMORY[0x277D84F90];
  do
  {
    sub_26F480DC4(v40, *(v3 + 128), type metadata accessor for VisualTranslationModel);
    v43 = *(v3 + 128);
    if (!v7[2])
    {
      goto LABEL_20;
    }

    v44 = sub_26F45FF48(v43);
    if ((v45 & 1) == 0)
    {
      v43 = *(v3 + 128);
LABEL_20:
      sub_26F480EC8(v43, type metadata accessor for VisualTranslationModel);
      goto LABEL_21;
    }

    v46 = *(v7[7] + 8 * v44);
    MEMORY[0x2743908C0]();
    if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_26F49FB18();
    }

    v47 = *(v3 + 128);
    sub_26F49FB38();

    sub_26F480EC8(v47, type metadata accessor for VisualTranslationModel);
    v42 = v61;
LABEL_21:
    v40 += v41;
    --v38;
  }

  while (v38);

LABEL_29:
  *(v3 + 176) = v42;
  sub_26F49FBD8();
  *(v3 + 184) = sub_26F49FBC8();
  v48 = sub_26F49FB68();
  v50 = v49;
  v4 = sub_26F47ECF8;
  a2 = v48;
  a3 = v50;

  return MEMORY[0x2822009F8](v4, a2, a3);
}

uint64_t sub_26F47ECF8()
{
  v1 = v0[22];
  v2 = v0[7];

  v2(v1, 0);

  v3 = v0[1];

  return v3();
}

uint64_t sub_26F47EDA4()
{
  v1 = *(v0 + 168);
  sub_26F49FBD8();
  v2 = v1;
  *(v0 + 192) = sub_26F49FBC8();
  v4 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F47EE44, v4, v3);
}

uint64_t sub_26F47EE44()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 56);

  v2(MEMORY[0x277D84F90], v1);

  return MEMORY[0x2822009F8](sub_26F47EED8, 0, 0);
}

uint64_t sub_26F47EED8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_26F47F1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for VisualTranslationResult(0);
  v5 = sub_26F49FAD8();
  if (a2)
  {
    v6 = sub_26F49D7E8();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

id VisualTranslationService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VisualTranslationService.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VisualTranslationService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26F47F348@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_26F49DD48();
  *a2 = result;
  return result;
}

uint64_t sub_26F47F388(uint64_t a1)
{
  v1[19] = a1;
  v1[20] = type metadata accessor for LocalePair(0);
  v1[21] = swift_task_alloc();
  v2 = type metadata accessor for VisualTranslationModel(0);
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  type metadata accessor for Signpost(0);
  v1[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v1[26] = swift_task_alloc();
  v3 = sub_26F49DAB8();
  v1[27] = v3;
  v1[28] = *(v3 - 8);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F47F568, 0, 0);
}

uint64_t sub_26F47F568()
{
  v0[5] = &type metadata for TranslateFeatures;
  v1 = sub_26F3D3D60();
  *(v0 + 16) = 0;
  v0[6] = v1;
  v2 = sub_26F49DB58();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if ((v2 & 1) == 0)
  {
    if (qword_280F66CB0 != -1)
    {
LABEL_43:
      swift_once();
    }

    v17 = sub_26F49DCA8();
    __swift_project_value_buffer(v17, qword_280F67ED0);
    v18 = sub_26F49DC88();
    v19 = sub_26F49FDD8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      sub_26F480D70();
      v22 = swift_allocError();
      v23 = sub_26F49D7E8();

      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_26F39E000, v18, v19, "Visual isTranslatable: NO; reason: visualTranslation is disabled: %@", v20, 0xCu);
      sub_26F3B6B4C(v21, &qword_2806DF258, &qword_26F4A6220);
      MEMORY[0x274391F70](v21, -1, -1);
      MEMORY[0x274391F70](v20, -1, -1);
    }

    sub_26F480D70();
    swift_allocError();
    goto LABEL_18;
  }

  v3 = v0[19];
  v4 = *(v3 + 16);
  v0[34] = v4;
  if (!v4)
  {
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v24 = sub_26F49DCA8();
    __swift_project_value_buffer(v24, qword_280F67ED0);
    v25 = sub_26F49DC88();
    v26 = sub_26F49FDD8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      sub_26F442974();
      v29 = swift_allocError();
      *v30 = 0;
      v31 = sub_26F49D7E8();

      *(v27 + 4) = v31;
      *v28 = v31;
      _os_log_impl(&dword_26F39E000, v25, v26, "Visual isTranslatable: NO; reason: the request was empty: %@", v27, 0xCu);
      sub_26F3B6B4C(v28, &qword_2806DF258, &qword_26F4A6220);
      MEMORY[0x274391F70](v28, -1, -1);
      MEMORY[0x274391F70](v27, -1, -1);
    }

    sub_26F442974();
    swift_allocError();
    *v32 = 0;
    goto LABEL_18;
  }

  v5 = v0[27];
  v6 = v0[28];
  v7 = v0[26];
  sub_26F474520(v3, v7);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_26F3B6B4C(v0[26], &qword_2806DEFD8, &qword_26F4A3670);
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v8 = sub_26F49DCA8();
    __swift_project_value_buffer(v8, qword_280F67ED0);
    v9 = sub_26F49DC88();
    v10 = sub_26F49FDD8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      sub_26F442974();
      v13 = swift_allocError();
      *v14 = 7;
      v15 = sub_26F49D7E8();

      *(v11 + 4) = v15;
      *v12 = v15;
      _os_log_impl(&dword_26F39E000, v9, v10, "Visual isTranslatable: NO; there's no targetLocale set: %@", v11, 0xCu);
      sub_26F3B6B4C(v12, &qword_2806DF258, &qword_26F4A6220);
      MEMORY[0x274391F70](v12, -1, -1);
      MEMORY[0x274391F70](v11, -1, -1);
    }

    sub_26F442974();
    swift_allocError();
    *v16 = 7;
LABEL_18:
    swift_willThrow();

    v33 = v0[1];

    return v33(0);
  }

  v35 = v0[25];
  v36 = v0[23];
  v58 = v0[24];
  v37 = v0[22];
  v38 = v0[19];
  (*(v0[28] + 32))(v0[33], v0[26], v0[27]);
  sub_26F43762C(0, 0, v35);
  v39 = *(v37 + 28);
  v40 = v38 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
  v41 = *(v36 + 72);
  v42 = MEMORY[0x277D84F90];
  do
  {
    v43 = v0[24];
    sub_26F480DC4(v40, v43, type metadata accessor for VisualTranslationModel);
    v44 = *(v58 + v39);

    sub_26F480EC8(v43, type metadata accessor for VisualTranslationModel);
    v45 = *(v44 + 16);
    v46 = v42[2];
    v47 = v46 + v45;
    if (__OFADD__(v46, v45))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v47 > v42[3] >> 1)
    {
      if (v46 <= v47)
      {
        v49 = v46 + v45;
      }

      else
      {
        v49 = v46;
      }

      v42 = sub_26F4464E4(isUniquelyReferenced_nonNull_native, v49, 1, v42);
    }

    v0[38] = v42;
    if (*(v44 + 16))
    {
      v50 = (v42[3] >> 1) - v42[2];
      type metadata accessor for TextModel(0);
      if (v50 < v45)
      {
        goto LABEL_41;
      }

      swift_arrayInitWithCopy();

      if (v45)
      {
        v51 = v42[2];
        v52 = __OFADD__(v51, v45);
        v53 = v51 + v45;
        if (v52)
        {
          goto LABEL_42;
        }

        v42[2] = v53;
      }
    }

    else
    {

      if (v45)
      {
        goto LABEL_40;
      }
    }

    v40 += v41;
    --v4;
  }

  while (v4);
  v54 = swift_task_alloc();
  v0[35] = v54;
  *(v54 + 16) = v42;
  v55 = swift_task_alloc();
  v0[36] = v55;
  *v55 = v0;
  v55[1] = sub_26F47FD60;
  v56 = v0[32];
  v57 = v0[27];

  return MEMORY[0x2822008A0](v56, 0, 0, 0x796669746E656469, 0xEC000000293A5F28, sub_26F442B90, v54, v57);
}

uint64_t sub_26F47FD60()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_26F480718;
  }

  else
  {

    v2 = sub_26F47FE88;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26F47FE88(uint64_t a1)
{
  v85 = v1;
  v2 = sub_26F49D9F8();
  v3 = [v2 languageIdentifier];

  if (!v3)
  {
    sub_26F49F8C8();
    v3 = sub_26F49F898();
  }

  v4 = [objc_opt_self() baseLanguageFromLanguage_];

  v5 = sub_26F49F8C8();
  v7 = v6;

  if (qword_280F66B48 != -1)
  {
    swift_once();
  }

  v8 = qword_280F67EB0;

  v9 = sub_26F47A700(v5, v7, v8);

  if (v9)
  {
    v10 = v1[33];
    v11 = v1[27];
    v13 = v1[20];
    v12 = v1[21];
    v14 = *(v1[28] + 16);
    v14(v12, v1[32], v11);
    v14(v12 + *(v13 + 20), v10, v11);
    v82 = _s13TranslationUI22LanguagesStatusServiceO25languagePairIsPassthroughySbAA06LocaleG0VFZ_0(v12) ^ 1;
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v15 = v1[32];
    v16 = v1[33];
    v18 = v1[30];
    v17 = v1[31];
    v19 = v1[27];
    v20 = sub_26F49DCA8();
    __swift_project_value_buffer(v20, qword_280F67ED0);
    v14(v17, v15, v19);
    v14(v18, v16, v19);

    v21 = sub_26F49DC88();
    v22 = sub_26F49FDB8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = v1[34];
      v24 = v1[31];
      v25 = v1[28];
      v75 = v1[27];
      v76 = v1[30];
      v79 = v1[21];
      v80 = v1[32];
      v78 = v22;
      v26 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v84 = v77;
      *v26 = 67240962;
      *(v26 + 4) = v82 & 1;
      *(v26 + 8) = 2050;
      *(v26 + 10) = v23;

      *(v26 + 18) = 2082;
      v1[7] = sub_26F49D988();
      v1[8] = v27;
      v1[9] = 45;
      v1[10] = 0xE100000000000000;
      v1[11] = 95;
      v1[12] = 0xE100000000000000;
      sub_26F3BDC0C();
      v28 = sub_26F49FFF8();
      v30 = v29;
      v74 = *(v25 + 8);
      v74(v24, v75);

      v31 = sub_26F3B38D0(v28, v30, &v84);

      *(v26 + 20) = v31;
      *(v26 + 28) = 2082;
      v1[13] = sub_26F49D988();
      v1[14] = v32;
      v1[15] = 45;
      v1[16] = 0xE100000000000000;
      v1[17] = 95;
      v1[18] = 0xE100000000000000;
      v33 = sub_26F49FFF8();
      v35 = v34;
      v74(v76, v75);

      v36 = sub_26F3B38D0(v33, v35, &v84);

      *(v26 + 30) = v36;
      _os_log_impl(&dword_26F39E000, v21, v78, "Visual isTranslatable: %{BOOL,public}d samples: %{public}ld source: %{public}s target: %{public}s", v26, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x274391F70](v77, -1, -1);
      MEMORY[0x274391F70](v26, -1, -1);

      sub_26F480EC8(v79, type metadata accessor for LocalePair);
      v74(v80, v75);
    }

    else
    {
      v61 = v1[31];
      v60 = v1[32];
      v62 = v1[30];
      v63 = v1[27];
      v64 = v1[28];
      v65 = v1[21];

      v66 = *(v64 + 8);
      v66(v62, v63);
      v66(v61, v63);
      sub_26F480EC8(v65, type metadata accessor for LocalePair);
      v66(v60, v63);
    }
  }

  else
  {
    v37 = qword_280F66CB0;

    if (v37 != -1)
    {
      swift_once();
    }

    v38 = v1[32];
    v40 = v1[28];
    v39 = v1[29];
    v41 = v1[27];
    v42 = sub_26F49DCA8();
    __swift_project_value_buffer(v42, qword_280F67ED0);
    (*(v40 + 16))(v39, v38, v41);

    v43 = sub_26F49DC88();
    v44 = sub_26F49FDB8();

    v45 = os_log_type_enabled(v43, v44);
    v46 = v1[32];
    v48 = v1[28];
    v47 = v1[29];
    v49 = v1[27];
    if (v45)
    {
      v50 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v84 = v83;
      *v50 = 136446466;
      sub_26F480E80(&unk_280F66398, MEMORY[0x277CC9788], MEMORY[0x277CC97B0]);
      v51 = sub_26F4A0428();
      v81 = v46;
      v53 = v52;
      v54 = *(v48 + 8);
      v54(v47, v49);
      v55 = sub_26F3B38D0(v51, v53, &v84);

      *(v50 + 4) = v55;
      *(v50 + 12) = 2082;
      v56 = sub_26F49FD48();
      v58 = v57;

      v59 = sub_26F3B38D0(v56, v58, &v84);

      *(v50 + 14) = v59;
      _os_log_impl(&dword_26F39E000, v43, v44, "Visual isTranslatable: NO; locale %{public}s not supported by VK OCR set %{public}s", v50, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x274391F70](v83, -1, -1);
      MEMORY[0x274391F70](v50, -1, -1);

      v54(v81, v49);
    }

    else
    {

      v67 = *(v48 + 8);
      v67(v47, v49);
      v67(v46, v49);
    }

    LOBYTE(v82) = 0;
  }

  v68 = v1[33];
  v69 = v1[28];
  v70 = v1[27];
  v71 = v1[25];
  sub_26F437AD0();
  sub_26F480EC8(v71, type metadata accessor for Signpost);
  (*(v69 + 8))(v68, v70);

  v72 = v1[1];

  return v72(v82 & 1);
}

uint64_t sub_26F480718()
{

  if (qword_280F66CB0 != -1)
  {
    swift_once();
  }

  v1 = v0[37];
  v2 = sub_26F49DCA8();
  __swift_project_value_buffer(v2, qword_280F67ED0);
  v3 = v1;
  v4 = sub_26F49DC88();
  v5 = sub_26F49FDD8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[37];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = sub_26F49D7E8();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_26F39E000, v4, v5, "Visual isTranslatable: NO; not offering translation: %@", v8, 0xCu);
    sub_26F3B6B4C(v9, &qword_2806DF258, &qword_26F4A6220);
    MEMORY[0x274391F70](v9, -1, -1);
    MEMORY[0x274391F70](v8, -1, -1);
  }

  else
  {
  }

  v11 = v0[33];
  v12 = v0[28];
  v13 = v0[27];
  v14 = v0[25];
  sub_26F437AD0();
  sub_26F480EC8(v14, type metadata accessor for Signpost);
  (*(v12 + 8))(v11, v13);

  v15 = v0[1];

  return v15(0);
}

uint64_t sub_26F48097C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26F3CEEAC;

  return sub_26F47AFC0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26F480A64(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670) - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = (v1 + ((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_26F3CF3AC;

  return sub_26F47E3F8(a1, v8, v9, v10, v1 + v5, v1 + v7, v12, v13);
}

uint64_t sub_26F480C0C(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1 + v4 + *(v3 + 64);
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_26F3CEEAC;

  return sub_26F47BB6C(a1, v5, v6, v7, v8, v1 + v4, v10, v11);
}

unint64_t sub_26F480D70()
{
  result = qword_2806E1610;
  if (!qword_2806E1610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1610);
  }

  return result;
}

uint64_t sub_26F480DC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_26F480E2C()
{
  result = qword_280F66CB8;
  if (!qword_280F66CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F66CB8);
  }

  return result;
}

uint64_t sub_26F480E80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26F480EC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26F480F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_26F3B8DD4(a3, v22 - v9, &unk_2806E0710, &qword_26F4A60A0);
  v11 = sub_26F49FC08();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_26F3B6B4C(v10, &unk_2806E0710, &qword_26F4A60A0);
  }

  else
  {
    sub_26F49FBF8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_26F49FB68();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_26F49F958() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_26F3B6B4C(a3, &unk_2806E0710, &qword_26F4A60A0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26F3B6B4C(a3, &unk_2806E0710, &qword_26F4A60A0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void *sub_26F4811D4(uint64_t a1)
{
  v3 = sub_26F49D968();
  v37 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = type metadata accessor for VisualTranslationModel(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  v19 = *(a1 + 16);
  v40 = v8;
  v41 = v1;
  v43 = v10;
  v38 = v3;
  v39 = v5;
  if (v19)
  {
    v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v21 = a1 + v20;
    swift_beginAccess();
    v22 = *(v10 + 72);
    v42 = MEMORY[0x277D84F90];
    do
    {
      sub_26F480DC4(v21, v18, type metadata accessor for VisualTranslationModel);
      if (sub_26F46D23C() & 1) != 0 || (v23 = *(v41 + 112), , v24 = sub_26F47A7F8(v18, v23), , (v24))
      {
        sub_26F487D48(v18, type metadata accessor for VisualTranslationModel);
      }

      else
      {
        sub_26F3BEF64(v18, v12, type metadata accessor for VisualTranslationModel);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_26F44650C(0, v42[2] + 1, 1, v42);
        }

        v26 = v42[2];
        v25 = v42[3];
        if (v26 >= v25 >> 1)
        {
          v42 = sub_26F44650C((v25 > 1), v26 + 1, 1, v42);
        }

        v27 = v42;
        v42[2] = v26 + 1;
        sub_26F3BEF64(v12, v27 + v20 + v26 * v22, type metadata accessor for VisualTranslationModel);
      }

      v21 += v22;
      --v19;
    }

    while (v19);
  }

  else
  {
    v42 = MEMORY[0x277D84F90];
  }

  v28 = v42[2];
  v29 = v38;
  v30 = v39;
  v31 = v40;
  if (v28)
  {
    v32 = v42 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
    v43 = *(v43 + 72);
    v33 = (v37 + 16);
    v34 = (v37 + 8);
    do
    {
      sub_26F480DC4(v32, v15, type metadata accessor for VisualTranslationModel);
      (*v33)(v30, v15, v29);
      sub_26F487D48(v15, type metadata accessor for VisualTranslationModel);
      swift_beginAccess();
      sub_26F485190(v31, v30);
      (*v34)(v31, v29);
      swift_endAccess();
      v32 += v43;
      --v28;
    }

    while (v28);
  }

  return v42;
}

uint64_t sub_26F4815E4()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t VisualTranslationStream.translate(models:taskHint:)(uint64_t a1, _BYTE *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15E8, &qword_26F4AB800);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  v9 = sub_26F49D968();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(a2) = *a2;
  sub_26F49D958();
  v15 = v2;
  v16 = a1;
  v17 = a2;
  v18 = v12;
  type metadata accessor for VisualTranslationModel(0);
  (*(v6 + 104))(v8, *MEMORY[0x277D858A0], v5);
  sub_26F49FD08();
  return (*(v10 + 8))(v12, v9);
}

uint64_t VisualTranslationStream.translate(models:taskHint:selfLoggingInvocationId:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15E8, &qword_26F4AB800);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12[-v9];
  LOBYTE(v9) = *a2;
  v13 = v3;
  v14 = a1;
  v15 = v9;
  v16 = a3;
  type metadata accessor for VisualTranslationModel(0);
  (*(v8 + 104))(v10, *MEMORY[0x277D858A0], v7);
  return sub_26F49FD08();
}

uint64_t sub_26F481928(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v29 = a5;
  v30 = a3;
  v31 = a4;
  v27 = a2;
  v28 = a1;
  v5 = sub_26F49D968();
  v25 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v26 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - v14;
  v16 = sub_26F49FC08();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  (*(v9 + 16))(v12, v28, v8);
  (*(v6 + 16))(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v5);
  v18 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v6 + 80) + v19 + 9) & ~*(v6 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = v17;
  (*(v9 + 32))(&v21[v18], v12, v8);
  v22 = &v21[v19];
  *v22 = v30;
  v22[8] = v31 & 1;
  (*(v6 + 32))(&v21[v20], v26, v25);

  sub_26F480F28(0, 0, v15, &unk_26F4AB8A0, v21);
}

uint64_t sub_26F481C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 628) = a7;
  *(v8 + 232) = a6;
  *(v8 + 240) = a8;
  *(v8 + 216) = a4;
  *(v8 + 224) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1470, &qword_26F4AB228);
  *(v8 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  v9 = type metadata accessor for TextModel(0);
  *(v8 + 272) = v9;
  *(v8 + 280) = *(v9 - 8);
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220);
  *(v8 + 304) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15F8, &unk_26F4AB8B0);
  *(v8 + 312) = v10;
  *(v8 + 320) = *(v10 - 8);
  *(v8 + 328) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15F0, &qword_26F4AB750);
  *(v8 + 336) = v11;
  *(v8 + 344) = *(v11 - 8);
  *(v8 + 352) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1608, &qword_26F4AB8C0);
  *(v8 + 360) = v12;
  *(v8 + 368) = *(v12 - 8);
  *(v8 + 376) = swift_task_alloc();
  v13 = sub_26F49D968();
  *(v8 + 384) = v13;
  *(v8 + 392) = *(v13 - 8);
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  v14 = type metadata accessor for VisualTranslationModel(0);
  *(v8 + 416) = v14;
  *(v8 + 424) = *(v14 - 8);
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  *(v8 + 456) = swift_task_alloc();
  type metadata accessor for Signpost(0);
  *(v8 + 464) = swift_task_alloc();
  *(v8 + 472) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F48202C, 0, 0);
}

uint64_t sub_26F48202C()
{
  v38 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 480) = Strong;
  if (Strong)
  {
    v2 = *(*(v0 + 232) + 16);
    *(v0 + 488) = v2;
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v3 = sub_26F49DCA8();
    *(v0 + 496) = __swift_project_value_buffer(v3, qword_280F67ED0);
    v4 = sub_26F49DC88();
    v5 = sub_26F49FDB8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v2;
      _os_log_impl(&dword_26F39E000, v4, v5, "Cache phase input: %ld", v6, 0xCu);
      MEMORY[0x274391F70](v6, -1, -1);
    }

    v7 = *(v0 + 472);

    sub_26F43762C(4, 0, v7);
    if (v2)
    {
      v8 = *(v0 + 424);
      *(v0 + 624) = *(v8 + 80);
      v9 = MEMORY[0x277D84F90];
      v10 = *(v8 + 72);
      *(v0 + 544) = MEMORY[0x277D84F90];
      *(v0 + 536) = v9;
      *(v0 + 504) = v10;
      *(v0 + 512) = 0;
      *(v0 + 528) = 0;
      *(v0 + 520) = 0;
      v11 = *(*(v0 + 480) + 16);
      *(v0 + 552) = v11;

      return MEMORY[0x2822009F8](sub_26F4826B0, v11, 0);
    }

    v13 = MEMORY[0x277D84F90];
    *(v0 + 576) = MEMORY[0x277D84F90];
    sub_26F437AD0();
    v14 = *(v13 + 16);
    *(v0 + 584) = v14;
    v15 = sub_26F49DC88();
    v16 = sub_26F49FDB8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 488);
      v18 = swift_slowAlloc();
      *v18 = 134218240;
      *(v18 + 4) = v17;
      *(v18 + 12) = 2048;
      *(v18 + 14) = v14;
      _os_log_impl(&dword_26F39E000, v15, v16, "Cache phase output: %ld missed %ld ", v18, 0x16u);
      MEMORY[0x274391F70](v18, -1, -1);
    }

    v19 = MEMORY[0x277D84F90];

    v20 = sub_26F49DC88();
    v21 = sub_26F49FDC8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 488);
      v23 = swift_slowAlloc();
      *v23 = 134218496;
      *(v23 + 4) = v22;

      *(v23 + 12) = 2048;
      *(v23 + 14) = *(v19 + 16);

      *(v23 + 22) = 2048;
      *(v23 + 24) = 0;
      _os_log_impl(&dword_26F39E000, v20, v21, "%ld observations. %ld to translate, preserving %ld", v23, 0x20u);
      MEMORY[0x274391F70](v23, -1, -1);
    }

    else
    {
    }

    if (*(v19 + 16))
    {
      v24 = sub_26F49DC88();
      v25 = sub_26F49FDB8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 134217984;
        *(v26 + 4) = v14;
        _os_log_impl(&dword_26F39E000, v24, v25, "Translate phase input: %ld", v26, 0xCu);
        MEMORY[0x274391F70](v26, -1, -1);
      }

      v27 = *(v0 + 464);
      v29 = *(v0 + 320);
      v28 = *(v0 + 328);
      v30 = *(v0 + 312);
      v31 = *(v0 + 628);

      sub_26F43762C(1, 0, v27);
      type metadata accessor for VisualTranslationService();
      v37 = v31 & 1;
      static VisualTranslationService.translate(models:strictLocales:taskHint:selfLoggingInvocationId:)(MEMORY[0x277D84F90], 1, &v37, v28);
      sub_26F49FC58();
      (*(v29 + 8))(v28, v30);
      v32 = swift_task_alloc();
      *(v0 + 592) = v32;
      *v32 = v0;
      v32[1] = sub_26F483C10;
      v33 = *(v0 + 336);
      v34 = *(v0 + 304);

      return MEMORY[0x2822005A8](v34, 0, 0, v33, v0 + 192);
    }

    v35 = *(v0 + 472);

    *(v0 + 208) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
    sub_26F49FCD8();

    sub_26F487D48(v35, type metadata accessor for Signpost);
  }

  else
  {
    *(v0 + 184) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
    sub_26F49FCD8();
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_26F4826B0()
{
  sub_26F448A60(*(v0 + 232) + ((*(v0 + 624) + 32) & ~*(v0 + 624)) + *(v0 + 504) * *(v0 + 528), 0, *(v0 + 456));

  return MEMORY[0x2822009F8](sub_26F482740, 0, 0);
}

uint64_t sub_26F482740()
{
  v42 = v0;
  if ((sub_26F46D23C() & 1) == 0)
  {
    v22 = *(v0 + 480);
    sub_26F437948(1);
    v23 = *(v22 + 24);
    *(v0 + 560) = v23;

    v24 = sub_26F482D78;
    v25 = v23;
LABEL_10:

    return MEMORY[0x2822009F8](v24, v25, 0);
  }

  v1 = *(v0 + 520);
  v2 = sub_26F437948(0);
  if (__OFADD__(v1, 1))
  {
    __break(1u);
    return MEMORY[0x2822005A8](v2, v3, v4, v5, v6);
  }

  v39 = v1 + 1;
  v40 = *(v0 + 536);
  v7 = *(v0 + 488);
  v8 = *(v0 + 456);
  v10 = *(v0 + 368);
  v9 = *(v0 + 376);
  v11 = *(v0 + 360);
  v12 = *(v0 + 528) + 1;
  sub_26F480DC4(v8, *(v0 + 440), type metadata accessor for VisualTranslationModel);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
  sub_26F49FCC8();
  (*(v10 + 8))(v9, v11);
  sub_26F487D48(v8, type metadata accessor for VisualTranslationModel);
  if (v12 != v7)
  {
    v26 = *(v0 + 528) + 1;
    *(v0 + 536) = v40;
    *(v0 + 528) = v26;
    *(v0 + 520) = v39;
    *(v0 + 512) = v39;
    v25 = *(*(v0 + 480) + 16);
    *(v0 + 552) = v25;
    v24 = sub_26F4826B0;
    goto LABEL_10;
  }

  *(v0 + 576) = v40;
  sub_26F437AD0();
  v13 = *(v40 + 16);
  *(v0 + 584) = v13;
  v14 = sub_26F49DC88();
  v15 = sub_26F49FDB8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 488);
    v17 = swift_slowAlloc();
    *v17 = 134218240;
    *(v17 + 4) = v16;
    *(v17 + 12) = 2048;
    *(v17 + 14) = v13;
    _os_log_impl(&dword_26F39E000, v14, v15, "Cache phase output: %ld missed %ld ", v17, 0x16u);
    MEMORY[0x274391F70](v17, -1, -1);
  }

  v18 = sub_26F49DC88();
  v19 = sub_26F49FDC8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 488);
    v21 = swift_slowAlloc();
    *v21 = 134218496;
    *(v21 + 4) = v20;

    *(v21 + 12) = 2048;
    *(v21 + 14) = *(v40 + 16);

    *(v21 + 22) = 2048;
    *(v21 + 24) = v39;
    _os_log_impl(&dword_26F39E000, v18, v19, "%ld observations. %ld to translate, preserving %ld", v21, 0x20u);
    MEMORY[0x274391F70](v21, -1, -1);
  }

  else
  {
  }

  if (*(v40 + 16))
  {
    v27 = sub_26F49DC88();
    v28 = sub_26F49FDB8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = v13;
      _os_log_impl(&dword_26F39E000, v27, v28, "Translate phase input: %ld", v29, 0xCu);
      MEMORY[0x274391F70](v29, -1, -1);
    }

    v30 = *(v0 + 464);
    v32 = *(v0 + 320);
    v31 = *(v0 + 328);
    v33 = *(v0 + 312);
    v34 = *(v0 + 628);

    sub_26F43762C(1, 0, v30);
    type metadata accessor for VisualTranslationService();
    v41 = v34 & 1;
    static VisualTranslationService.translate(models:strictLocales:taskHint:selfLoggingInvocationId:)(v40, 1, &v41, v31);
    sub_26F49FC58();
    (*(v32 + 8))(v31, v33);
    v35 = swift_task_alloc();
    *(v0 + 592) = v35;
    *v35 = v0;
    v35[1] = sub_26F483C10;
    v5 = *(v0 + 336);
    v2 = *(v0 + 304);
    v6 = v0 + 192;
    v3 = 0;
    v4 = 0;

    return MEMORY[0x2822005A8](v2, v3, v4, v5, v6);
  }

  v36 = *(v0 + 472);

  *(v0 + 208) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
  sub_26F49FCD8();

  sub_26F487D48(v36, type metadata accessor for Signpost);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_26F482D78()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 456);
  swift_beginAccess();
  v3 = *(v1 + 112);

  *(v0 + 629) = sub_26F47A7F8(v2, v3) & 1;

  return MEMORY[0x2822009F8](sub_26F482E2C, 0, 0);
}

uint64_t sub_26F482E2C(uint64_t a1)
{
  v43 = v1;
  v2 = (v1 + 536);
  if (*(v1 + 629) == 1)
  {
    v41 = *v2;
    v39 = *(v1 + 520);
    v40 = *(v1 + 512);
    v3 = *(v1 + 488);
    v4 = *(v1 + 456);
    v6 = *(v1 + 368);
    v5 = *(v1 + 376);
    v7 = *(v1 + 360);
    v8 = *(v1 + 528) + 1;
    sub_26F480DC4(v4, *(v1 + 440), type metadata accessor for VisualTranslationModel);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
    sub_26F49FCC8();
    (*(v6 + 8))(v5, v7);
    sub_26F487D48(v4, type metadata accessor for VisualTranslationModel);
    if (v8 == v3)
    {
      *(v1 + 576) = v41;
      sub_26F437AD0();
      v9 = *(v41 + 16);
      *(v1 + 584) = v9;
      v10 = sub_26F49DC88();
      v11 = sub_26F49FDB8();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = *(v1 + 488);
        v13 = swift_slowAlloc();
        *v13 = 134218240;
        *(v13 + 4) = v12;
        *(v13 + 12) = 2048;
        *(v13 + 14) = v9;
        _os_log_impl(&dword_26F39E000, v10, v11, "Cache phase output: %ld missed %ld ", v13, 0x16u);
        MEMORY[0x274391F70](v13, -1, -1);
      }

      v14 = sub_26F49DC88();
      v15 = sub_26F49FDC8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = *(v1 + 488);
        v17 = swift_slowAlloc();
        *v17 = 134218496;
        *(v17 + 4) = v16;

        *(v17 + 12) = 2048;
        *(v17 + 14) = *(v41 + 16);

        *(v17 + 22) = 2048;
        *(v17 + 24) = v40;
        _os_log_impl(&dword_26F39E000, v14, v15, "%ld observations. %ld to translate, preserving %ld", v17, 0x20u);
        MEMORY[0x274391F70](v17, -1, -1);
      }

      else
      {
      }

      if (*(v41 + 16))
      {
        v25 = sub_26F49DC88();
        v26 = sub_26F49FDB8();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 134217984;
          *(v27 + 4) = v9;
          _os_log_impl(&dword_26F39E000, v25, v26, "Translate phase input: %ld", v27, 0xCu);
          MEMORY[0x274391F70](v27, -1, -1);
        }

        v28 = *(v1 + 464);
        v30 = *(v1 + 320);
        v29 = *(v1 + 328);
        v31 = *(v1 + 312);
        v32 = *(v1 + 628);

        sub_26F43762C(1, 0, v28);
        type metadata accessor for VisualTranslationService();
        v42 = v32 & 1;
        static VisualTranslationService.translate(models:strictLocales:taskHint:selfLoggingInvocationId:)(v41, 1, &v42, v29);
        sub_26F49FC58();
        (*(v30 + 8))(v29, v31);
        v33 = swift_task_alloc();
        *(v1 + 592) = v33;
        *v33 = v1;
        v33[1] = sub_26F483C10;
        v34 = *(v1 + 336);
        v35 = *(v1 + 304);

        return MEMORY[0x2822005A8](v35, 0, 0, v34, v1 + 192);
      }

      else
      {
        v36 = *(v1 + 472);

        *(v1 + 208) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
        sub_26F49FCD8();

        sub_26F487D48(v36, type metadata accessor for Signpost);

        v37 = *(v1 + 8);

        return v37();
      }
    }

    v24 = *(v1 + 528) + 1;
    *v2 = v41;
    *(v1 + 528) = v24;
    *(v1 + 520) = v39;
    *(v1 + 512) = v40;
    v22 = *(*(v1 + 480) + 16);
    *(v1 + 552) = v22;
    v23 = sub_26F4826B0;
  }

  else
  {
    v18 = sub_26F49DC88();
    v19 = sub_26F49FDC8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_26F39E000, v18, v19, "Detected untranslated item", v20, 2u);
      MEMORY[0x274391F70](v20, -1, -1);
    }

    v21 = *(v1 + 480);

    v22 = *(v21 + 24);
    *(v1 + 568) = v22;
    v23 = sub_26F4834A8;
  }

  return MEMORY[0x2822009F8](v23, v22, 0);
}

uint64_t sub_26F4834A8()
{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[48];
  v4 = v0[49];
  (*(v4 + 16))(v2, v0[57], v3);
  swift_beginAccess();
  sub_26F485190(v1, v2);
  (*(v4 + 8))(v1, v3);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_26F483588, 0, 0);
}

uint64_t sub_26F483588()
{
  v43 = v0;
  sub_26F480DC4(*(v0 + 456), *(v0 + 448), type metadata accessor for VisualTranslationModel);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 544);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_26F44650C(0, v2[2] + 1, 1, *(v0 + 544));
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_26F44650C((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = *(v0 + 504);
  v6 = *(v0 + 624);
  v7 = *(v0 + 448);
  v2[2] = v4 + 1;
  sub_26F3BEF64(v7, v2 + ((v6 + 32) & ~v6) + v5 * v4, type metadata accessor for VisualTranslationModel);
  v41 = *(v0 + 512);
  v39 = *(v0 + 520);
  v40 = *(v0 + 488);
  v8 = *(v0 + 456);
  v10 = *(v0 + 368);
  v9 = *(v0 + 376);
  v11 = *(v0 + 360);
  v12 = *(v0 + 528) + 1;
  sub_26F480DC4(v8, *(v0 + 440), type metadata accessor for VisualTranslationModel);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
  sub_26F49FCC8();
  (*(v10 + 8))(v9, v11);
  sub_26F487D48(v8, type metadata accessor for VisualTranslationModel);
  if (v12 == v40)
  {
    *(v0 + 576) = v2;
    sub_26F437AD0();
    v13 = v2[2];
    *(v0 + 584) = v13;
    v14 = sub_26F49DC88();
    v15 = sub_26F49FDB8();
    v16 = v2;
    if (os_log_type_enabled(v14, v15))
    {
      v17 = *(v0 + 488);
      v18 = swift_slowAlloc();
      *v18 = 134218240;
      *(v18 + 4) = v17;
      *(v18 + 12) = 2048;
      *(v18 + 14) = v13;
      _os_log_impl(&dword_26F39E000, v14, v15, "Cache phase output: %ld missed %ld ", v18, 0x16u);
      MEMORY[0x274391F70](v18, -1, -1);
    }

    v19 = sub_26F49DC88();
    v20 = sub_26F49FDC8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 488);
      v22 = swift_slowAlloc();
      *v22 = 134218496;
      *(v22 + 4) = v21;

      *(v22 + 12) = 2048;
      *(v22 + 14) = *(v16 + 16);

      *(v22 + 22) = 2048;
      *(v22 + 24) = v41;
      _os_log_impl(&dword_26F39E000, v19, v20, "%ld observations. %ld to translate, preserving %ld", v22, 0x20u);
      MEMORY[0x274391F70](v22, -1, -1);
    }

    else
    {
    }

    if (*(v16 + 16))
    {
      v25 = sub_26F49DC88();
      v26 = sub_26F49FDB8();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 134217984;
        *(v27 + 4) = v13;
        _os_log_impl(&dword_26F39E000, v25, v26, "Translate phase input: %ld", v27, 0xCu);
        MEMORY[0x274391F70](v27, -1, -1);
      }

      v28 = *(v0 + 464);
      v29 = *(v0 + 320);
      v30 = *(v0 + 328);
      v31 = *(v0 + 312);
      v32 = *(v0 + 628);

      sub_26F43762C(1, 0, v28);
      type metadata accessor for VisualTranslationService();
      v42 = v32 & 1;
      static VisualTranslationService.translate(models:strictLocales:taskHint:selfLoggingInvocationId:)(v16, 1, &v42, v30);
      sub_26F49FC58();
      (*(v29 + 8))(v30, v31);
      v33 = swift_task_alloc();
      *(v0 + 592) = v33;
      *v33 = v0;
      v33[1] = sub_26F483C10;
      v34 = *(v0 + 336);
      v35 = *(v0 + 304);

      return MEMORY[0x2822005A8](v35, 0, 0, v34, v0 + 192);
    }

    else
    {
      v36 = *(v0 + 472);

      *(v0 + 208) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
      sub_26F49FCD8();

      sub_26F487D48(v36, type metadata accessor for Signpost);

      v37 = *(v0 + 8);

      return v37();
    }
  }

  else
  {
    v23 = *(v0 + 528) + 1;
    *(v0 + 544) = v2;
    *(v0 + 536) = v2;
    *(v0 + 528) = v23;
    *(v0 + 520) = v39;
    *(v0 + 512) = v41;
    v24 = *(*(v0 + 480) + 16);
    *(v0 + 552) = v24;

    return MEMORY[0x2822009F8](sub_26F4826B0, v24, 0);
  }
}

uint64_t sub_26F483C10()
{

  if (v0)
  {
    v1 = sub_26F484658;
  }

  else
  {
    v1 = sub_26F483D20;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_26F483D20()
{
  v1 = v0[38];
  if ((*(v0[53] + 48))(v1, 1, v0[52]) == 1)
  {
    (*(v0[43] + 8))(v0[44], v0[42]);

    v2 = sub_26F49DC88();
    v3 = sub_26F49FDB8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = v0[73];
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = v4;
      _os_log_impl(&dword_26F39E000, v2, v3, "Translate phase output: %ld", v5, 0xCu);
      MEMORY[0x274391F70](v5, -1, -1);
    }

    v6 = v0[59];
    v7 = v0[58];

    sub_26F437AD0();
    v0[25] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
    sub_26F49FCD8();

    sub_26F487D48(v7, type metadata accessor for Signpost);
    sub_26F487D48(v6, type metadata accessor for Signpost);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v11 = v0[54];
    v10 = v0[55];
    v13 = v0[46];
    v12 = v0[47];
    v14 = v0[45];
    sub_26F3BEF64(v1, v11, type metadata accessor for VisualTranslationModel);
    v15 = sub_26F46D23C();
    sub_26F437948((v15 & 1) == 0);
    sub_26F480DC4(v11, v10, type metadata accessor for VisualTranslationModel);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
    sub_26F49FCC8();
    (*(v13 + 8))(v12, v14);
    v16 = sub_26F46D23C();
    v17 = v0[60];
    if (v16)
    {
      v18 = v0[54];
      v19 = v0[52];
      v20 = *(v17 + 16);
      v0[75] = v20;
      v0[76] = *(v18 + *(v19 + 28));
      v21 = sub_26F4840C4;
    }

    else
    {
      v20 = *(v17 + 24);
      v0[77] = v20;
      v21 = sub_26F4844D8;
    }

    return MEMORY[0x2822009F8](v21, v20, 0);
  }
}

uint64_t sub_26F4840C4()
{
  v1 = *(v0 + 608);
  v2 = *(v1 + 16);
  if (v2)
  {
    v33 = *(v0 + 600);
    v3 = *(v0 + 296);
    v4 = *(v0 + 280);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(*(v0 + 272) + 44);
    v38 = *(v4 + 72);
    v36 = v3;
    v37 = v6;
    do
    {
      sub_26F480DC4(v5, *(v0 + 296), type metadata accessor for TextModel);
      if (!*(v3 + v6))
      {
        v14 = *(v0 + 296);
        v15 = *(v0 + 272);
        v16 = (v14 + *(v15 + 24));
        v17 = *v16;
        v18 = v16[1];
        v19 = HIBYTE(v18) & 0xF;
        v20 = v17 & 0xFFFFFFFFFFFFLL;
        if ((v18 & 0x2000000000000000) == 0)
        {
          v19 = v20;
        }

        if (v19)
        {
          v21 = *(v0 + 264);
          v35 = *(v15 + 28);
          sub_26F3B8DD4(v14 + v35, v21, &qword_2806DEFD8, &qword_26F4A3670);
          v22 = sub_26F49DAB8();
          v34 = *(v22 - 8);
          v23 = *(v34 + 48);
          v24 = v23(v21, 1, v22);
          v25 = v21;
          v6 = v37;
          sub_26F3B6B4C(v25, &qword_2806DEFD8, &qword_26F4A3670);
          v26 = v24 == 1;
          v3 = v36;
          if (!v26)
          {
            v27 = (*(v0 + 296) + *(*(v0 + 272) + 32));
            v28 = v27[1];
            if (v28)
            {
              v29 = *v27 & 0xFFFFFFFFFFFFLL;
              if ((v28 & 0x2000000000000000) != 0 ? HIBYTE(v28) & 0xF : v29)
              {
                v31 = *(v0 + 256);
                sub_26F3B8DD4(v14 + v35, v31, &qword_2806DEFD8, &qword_26F4A3670);
                if (v23(v31, 1, v22) == 1)
                {
                  sub_26F3B6B4C(*(v0 + 256), &qword_2806DEFD8, &qword_26F4A3670);
                }

                else
                {
                  v8 = *(v0 + 288);
                  v7 = *(v0 + 296);
                  v9 = *(v0 + 256);
                  sub_26F49D988();
                  (*(v34 + 8))(v9, v22);
                  sub_26F4A0578();
                  sub_26F49F9A8();

                  sub_26F49D988();
                  sub_26F49F9A8();

                  sub_26F4A0548();
                  sub_26F49F9A8();
                  *(v0 + 48) = v41;
                  *(v0 + 64) = v42;
                  *(v0 + 80) = v43;
                  *(v0 + 16) = v39;
                  *(v0 + 32) = v40;
                  sub_26F4A0558();
                  v10 = *(v33 + 136);
                  sub_26F480DC4(v7, v8, type metadata accessor for TextModel);
                  type metadata accessor for TextModelContainer(0);
                  v11 = swift_allocObject();
                  sub_26F3BEF64(v8, v11 + OBJC_IVAR____TtC13TranslationUI18TextModelContainer_textModel, type metadata accessor for TextModel);
                  sub_26F404B4C();
                  v12 = v10;
                  v13 = sub_26F49FF28();
                  [v12 setObject:v11 forKey:v13];

                  v3 = v36;
                }

                v6 = v37;
              }
            }
          }
        }
      }

      sub_26F487D48(*(v0 + 296), type metadata accessor for TextModel);
      v5 += v38;
      --v2;
    }

    while (v2);
  }

  return MEMORY[0x2822009F8](sub_26F4844B4, 0, 0);
}

uint64_t sub_26F4844B4()
{
  v1 = *(*(v0 + 480) + 24);
  *(v0 + 616) = v1;
  return MEMORY[0x2822009F8](sub_26F4844D8, v1, 0);
}

uint64_t sub_26F4844D8()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 248);
  swift_beginAccess();
  sub_26F498FE8(v1, v2);
  sub_26F3B6B4C(v2, &qword_2806E1470, &qword_26F4AB228);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_26F484590, 0, 0);
}

uint64_t sub_26F484590()
{
  sub_26F487D48(v0[54], type metadata accessor for VisualTranslationModel);
  v1 = swift_task_alloc();
  v0[74] = v1;
  *v1 = v0;
  v1[1] = sub_26F483C10;
  v2 = v0[42];
  v3 = v0[38];

  return MEMORY[0x2822005A8](v3, 0, 0, v2, v0 + 24);
}

uint64_t sub_26F484658()
{
  v1 = v0[59];
  v2 = v0[58];
  v3 = v0[43];
  v4 = v0[44];
  v5 = v0[42];

  (*(v3 + 8))(v4, v5);
  sub_26F487D48(v2, type metadata accessor for Signpost);
  sub_26F487D48(v1, type metadata accessor for Signpost);

  v6 = v0[1];

  return v6();
}

uint64_t VisualTranslationStream.deinit()
{

  return v0;
}

uint64_t VisualTranslationStream.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_26F4848C0()
{
  type metadata accessor for TextTranslationCache();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[14] = 0;
  v1[15] = 0;
  v1[16] = 100;
  v1[17] = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v0 + 16) = v1;
  type metadata accessor for OngoingTranslationActor();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = MEMORY[0x277D84FA0];
  *(v0 + 24) = v2;
  return v0;
}

uint64_t sub_26F484950(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_26F4A00B8();

    if (v9)
    {

      sub_26F404B4C();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_26F4A00A8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_26F485470(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_26F485650(v20 + 1);
    }

    v18 = v8;
    sub_26F486424(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_26F404B4C();
  v11 = sub_26F49FF38();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_26F4864A8(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_26F49FF48();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_26F484B68(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_26F49DAB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_26F487DA8(&qword_2806DFC18, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  v33 = a2;
  v11 = sub_26F49F818();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_26F487DA8(qword_2806E07F0, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
      v21 = sub_26F49F868();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_26F486608(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_26F484E48(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_26F4A0528();
  sub_26F49F9A8();
  v8 = sub_26F4A0568();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_26F4A0458() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_26F4868AC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_26F484F98(uint64_t a1, uint64_t *a2)
{
  v4 = *v2;
  sub_26F4A0528();
  v5 = *a2;
  v6 = a2[1];
  sub_26F49F9A8();
  v7 = sub_26F4A0568();
  v8 = v4 + 56;
  v9 = -1 << *(v4 + 32);
  v10 = v7 & ~v9;
  v32 = a2;
  if ((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = a2[2];
    v13 = *(a2 + 24);
    v30 = v4;
    v14 = *(v4 + 48);
    v20 = v12 == 0;
    v15 = v12 != 0;
    v16 = v20;
    v35 = v13 & v15;
    v34 = v13 & v16;
    do
    {
      v17 = v14 + 48 * v10;
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      v20 = *v17 == v5 && *(v17 + 8) == v6;
      if (v20 || (sub_26F4A0458() & 1) != 0)
      {
        if (v19)
        {
          if (v18)
          {
            if (v35)
            {
              goto LABEL_18;
            }
          }

          else if (v34)
          {
LABEL_18:
            sub_26F487DF0(v32);
            v21 = *(v30 + 48) + 48 * v10;
            v22 = *(v21 + 8);
            v23 = *(v21 + 16);
            v24 = *(v21 + 24);
            v25 = *(v21 + 32);
            v26 = *(v21 + 40);
            *a1 = *v21;
            *(a1 + 8) = v22;
            *(a1 + 16) = v23;
            *(a1 + 24) = v24;
            *(a1 + 32) = v25;
            *(a1 + 40) = v26;

            return 0;
          }
        }

        else if ((v13 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v31;
  sub_26F3E2CA4(v32, v37);
  sub_26F486A2C(v32, v10, isUniquelyReferenced_nonNull_native);
  *v31 = v36;
  v29 = *(v32 + 1);
  *a1 = *v32;
  *(a1 + 16) = v29;
  *(a1 + 32) = *(v32 + 2);
  return 1;
}

uint64_t sub_26F485190(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_26F49D968();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_26F487DA8(&qword_280F663A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_26F49F818();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_26F487DA8(&qword_2806E1128, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_26F49F868();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_26F486C14(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_26F485470(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1638, &unk_26F4AB8E0);
    v2 = sub_26F4A0128();
    v15 = v2;
    sub_26F4A0098();
    if (sub_26F4A00C8())
    {
      sub_26F404B4C();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_26F485650(v9 + 1);
        }

        v2 = v15;
        result = sub_26F49FF38();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_26F4A00C8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_26F485650(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1638, &unk_26F4AB8E0);
  result = sub_26F4A0118();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_26F49FF38();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26F485878(uint64_t a1)
{
  v2 = v1;
  v36 = sub_26F49DAB8();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1628, &qword_26F4AB8D0);
  result = sub_26F4A0118();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_26F487DA8(&qword_2806DFC18, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
      result = sub_26F49F818();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_26F485BD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1620, &qword_26F4AB8C8);
  result = sub_26F4A0118();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_26F4A0528();
      sub_26F49F9A8();
      result = sub_26F4A0568();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26F485E34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1630, &qword_26F4AB8D8);
  result = sub_26F4A0118();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 48 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v33 = *(v18 + 24);
      v31 = *(v18 + 40);
      v32 = *(v18 + 32);
      sub_26F4A0528();
      sub_26F49F9A8();
      result = sub_26F4A0568();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 48 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      *(v14 + 24) = v33;
      *(v14 + 32) = v32;
      *(v14 + 40) = v31;
      ++*(v5 + 16);
      v3 = v30;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26F4860C8(uint64_t a1)
{
  v2 = v1;
  v36 = sub_26F49D968();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1618, &qword_26F4AB890);
  result = sub_26F4A0118();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_26F487DA8(&qword_280F663A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_26F49F818();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

unint64_t sub_26F486424(uint64_t a1, uint64_t a2)
{
  sub_26F49FF38();
  result = sub_26F4A0088();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_26F4864A8(unint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26F485650(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_26F498934();
      goto LABEL_12;
    }

    sub_26F486EB8(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_26F49FF38();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_26F404B4C();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_26F49FF48();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_26F4A0498();
  __break(1u);
}

uint64_t sub_26F486608(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_26F49DAB8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26F485878(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_26F498A84();
      goto LABEL_12;
    }

    sub_26F4870CC(v11 + 1);
  }

  v13 = *v3;
  sub_26F487DA8(&qword_2806DFC18, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
  v14 = sub_26F49F818();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_26F487DA8(qword_2806E07F0, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
      v22 = sub_26F49F868();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26F4A0498();
  __break(1u);
  return result;
}

void sub_26F4868AC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_26F485BD4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_26F498AAC();
      goto LABEL_16;
    }

    sub_26F4873E8(v8 + 1);
  }

  v10 = *v4;
  sub_26F4A0528();
  sub_26F49F9A8();
  v11 = sub_26F4A0568();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_26F4A0458() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_26F4A0498();
  __break(1u);
}

void sub_26F486A2C(uint64_t *result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_26;
  }

  if (a3)
  {
    sub_26F485E34(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_26F498C08();
      goto LABEL_26;
    }

    sub_26F487620(v6 + 1);
  }

  v8 = *v3;
  sub_26F4A0528();
  v9 = *result;
  v10 = result[1];
  sub_26F49F9A8();
  v11 = sub_26F4A0568();
  v12 = -1 << *(v8 + 32);
  a2 = v11 & ~v12;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    v14 = result[2];
    v15 = *(result + 24);
    v16 = *(v8 + 48);
    v22 = v14 == 0;
    v17 = v14 != 0;
    v18 = v22;
    v30 = v15 & v17;
    v29 = v15 & v18;
    do
    {
      v19 = v16 + 48 * a2;
      v20 = *(v19 + 16);
      v21 = *(v19 + 24);
      v22 = *v19 == v9 && *(v19 + 8) == v10;
      if (v22 || (sub_26F4A0458() & 1) != 0)
      {
        if (v21)
        {
          if (v20)
          {
            if (v30)
            {
              goto LABEL_25;
            }
          }

          else if (v29)
          {
LABEL_25:
            sub_26F4A0498();
            __break(1u);
            break;
          }
        }

        else if ((v15 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_26:
  v23 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v24 = (*(v23 + 48) + 48 * a2);
  v25 = *(result + 1);
  *v24 = *result;
  v24[1] = v25;
  v24[2] = *(result + 2);
  v26 = *(v23 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v23 + 16) = v28;
  }
}

uint64_t sub_26F486C14(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_26F49D968();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26F4860C8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_26F498D88();
      goto LABEL_12;
    }

    sub_26F487898(v11 + 1);
  }

  v13 = *v3;
  sub_26F487DA8(&qword_280F663A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v14 = sub_26F49F818();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_26F487DA8(&qword_2806E1128, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v22 = sub_26F49F868();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26F4A0498();
  __break(1u);
  return result;
}

uint64_t sub_26F486EB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1638, &unk_26F4AB8E0);
  result = sub_26F4A0118();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_26F49FF38();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_26F4870CC(uint64_t a1)
{
  v2 = v1;
  v33 = sub_26F49DAB8();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1628, &qword_26F4AB8D0);
  v7 = sub_26F4A0118();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_26F487DA8(&qword_2806DFC18, MEMORY[0x277CC9788], MEMORY[0x277CC9798]);
      result = sub_26F49F818();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_26F4873E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1620, &qword_26F4AB8C8);
  result = sub_26F4A0118();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_26F4A0528();

      sub_26F49F9A8();
      result = sub_26F4A0568();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_26F487620(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1630, &qword_26F4AB8D8);
  result = sub_26F4A0118();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 48 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v32 = *(v18 + 16);
      v31 = *(v18 + 24);
      v21 = *(v18 + 40);
      v30 = *(v18 + 32);
      sub_26F4A0528();

      sub_26F49F9A8();
      result = sub_26F4A0568();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 48 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v32;
      *(v14 + 24) = v31;
      v3 = v29;
      *(v14 + 32) = v30;
      *(v14 + 40) = v21;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_26F487898(uint64_t a1)
{
  v2 = v1;
  v33 = sub_26F49D968();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1618, &qword_26F4AB890);
  v7 = sub_26F4A0118();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_26F487DA8(&qword_280F663A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_26F49F818();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_26F487BB4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_26F49D968() - 8);
  v9 = (v7 + *(v8 + 80) + 9) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1 + v7;
  v14 = *(v1 + v7);
  v15 = v13[8];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_26F3CEEAC;

  return sub_26F481C4C(a1, v10, v11, v12, v1 + v6, v14, v15, v1 + v9);
}

uint64_t sub_26F487D48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26F487DA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26F487E48(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1130, &unk_26F4ABFF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED80, &qword_26F4A3660);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_26F3B6B4C(a1, &qword_2806E1130, &unk_26F4ABFF0);
    sub_26F497324(a2, v7);
    v13 = sub_26F49D968();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_26F3B6B4C(v7, &qword_2806E1130, &unk_26F4ABFF0);
  }

  else
  {
    sub_26F3BBAEC(a1, v11, &qword_2806DED80, &qword_26F4A3660);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_26F4982C8(v11, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_26F49D968();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_26F48806C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for VisualTranslationModel(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_26F3B6B4C(a1, &qword_2806E0908, &qword_26F4AB220);
    sub_26F4974DC(a2, v7);
    v13 = sub_26F49D968();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_26F3B6B4C(v7, &qword_2806E0908, &qword_26F4AB220);
  }

  else
  {
    sub_26F49C978(a1, v11, type metadata accessor for VisualTranslationModel);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_26F4984A4(v11, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_26F49D968();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_26F48828C(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t SecureHostingController.__allocating_init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_26F499A84(a1);
  (*(*(*(v2 + class metadata base offset for SecureHostingController) - 8) + 8))(a1);
  return v5;
}

void RecognizedItem.originalBounds.getter(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = sub_26F49F728();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v46 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v40 - v9;
  v11 = sub_26F49F7D8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v48 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v40 - v16;
  v18 = *(v12 + 16);
  v49 = v3;
  v47 = v18;
  (v18)(v40 - v16, v3, v11, v15);
  v19 = *(v12 + 88);
  v20 = v19(v17, v11);
  if (v20 != *MEMORY[0x277CE3090])
  {
    (*(v12 + 8))(v17, v11);
    goto LABEL_9;
  }

  v50 = a1;
  v45 = v20;
  v43 = *(v12 + 96);
  v44 = v12 + 96;
  v43(v17, v11);
  v41 = *(v6 + 32);
  v42 = v6 + 32;
  v41(v10, v17, v5);
  v21 = sub_26F49F708();
  objc_opt_self();
  v22 = swift_dynamicCastObjCClass();
  if (!v22)
  {

    (*(v6 + 8))(v10, v5);
    a1 = v50;
    goto LABEL_9;
  }

  v23 = [v22 getCROutputRegion];

  v24 = *(v6 + 8);
  v25 = v10;
  v26 = v5;
  v27 = v5;
  v40[1] = v6 + 8;
  v28 = v24;
  v24(v25, v27);
  a1 = v50;
  if (!v23)
  {
LABEL_9:
    v36 = sub_26F49F7B8();
    v37 = *(*(v36 - 8) + 56);
    v38 = a1;
    goto LABEL_10;
  }

  v29 = [v23 originalBoundingQuad];
  if (!v29)
  {
    v39 = sub_26F49F7B8();
    (*(*(v39 - 8) + 56))(v50, 1, 1, v39);

    return;
  }

  v30 = v29;
  v31 = v48;
  v47(v48, v49, v11);
  v32 = v19(v31, v11);
  if (v32 == v45)
  {
    v43(v31, v11);
    v33 = v46;
    v41(v46, v31, v26);
    v34 = v50;
    sub_26F49F718();
    [v30 bottomLeft];
    sub_26F49F748();
    [v30 bottomRight];
    sub_26F49F768();
    [v30 topLeft];
    sub_26F49F788();
    [v30 topRight];
    sub_26F49F7A8();

    v28(v33, v26);
    v35 = sub_26F49F7B8();
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    return;
  }

  (*(v12 + 8))(v31, v11);
  v36 = sub_26F49F7B8();
  v37 = *(*(v36 - 8) + 56);
  v38 = v50;
LABEL_10:
  v37(v38, 1, 1, v36);
}

void RecognizedItem.homography.getter(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = sub_26F49F728();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26F49F7D8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v3, v9, v11);
  if ((*(v10 + 88))(v13, v9) != *MEMORY[0x277CE3090])
  {
    (*(v10 + 8))(v13, v9);
LABEL_8:
    v17 = 0uLL;
    goto LABEL_9;
  }

  (*(v10 + 96))(v13, v9);
  (*(v6 + 32))(v8, v13, v5);
  v14 = sub_26F49F708();
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {

    (*(v6 + 8))(v8, v5);
    goto LABEL_8;
  }

  v16 = [v15 getCROutputRegion];

  (*(v6 + 8))(v8, v5);
  v17 = 0uLL;
  if (!v16)
  {
LABEL_9:
    v24 = 1;
    v22 = 0uLL;
    v23 = 0uLL;
    goto LABEL_10;
  }

  v18 = [v16 originalBoundingQuad];
  if (v18)
  {

    [v16 boundingQuadHomography];
    v26 = v20;
    v27 = v19;
    v25 = v21;

    v23 = v25;
    v22 = v26;
    v17 = v27;
    v24 = 0;
  }

  else
  {

    v24 = 1;
    v22 = 0uLL;
    v23 = 0uLL;
    v17 = 0uLL;
  }

LABEL_10:
  *a1 = v17;
  *(a1 + 16) = v22;
  *(a1 + 32) = v23;
  *(a1 + 48) = v24;
}

uint64_t RecognizedItem.baselineAngle.getter(__n128 a1)
{
  v2 = v1;
  v3 = sub_26F49F728();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26F49F7D8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v2, v7, v9);
  if ((*(v8 + 88))(v11, v7) == *MEMORY[0x277CE3090])
  {
    (*(v8 + 96))(v11, v7);
    (*(v4 + 32))(v6, v11, v3);
    v12 = sub_26F49F708();
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = [v13 getCROutputRegion];

      (*(v4 + 8))(v6, v3);
      if (v14)
      {
        v15 = [v14 originalBoundingQuad];
        if (v15)
        {
          v16 = v15;
          [v15 baselineAngle];
          v18 = v17;

          return v18;
        }
      }
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    (*(v8 + 8))(v11, v7);
  }

  return 0;
}

uint64_t RecognizedItem.homographySize.getter(__n128 a1)
{
  v2 = v1;
  v3 = sub_26F49F728();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26F49F7D8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v2, v7, v9);
  if ((*(v8 + 88))(v11, v7) == *MEMORY[0x277CE3090])
  {
    (*(v8 + 96))(v11, v7);
    (*(v4 + 32))(v6, v11, v3);
    v12 = sub_26F49F708();
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = [v13 getCROutputRegion];

      (*(v4 + 8))(v6, v3);
      if (v14)
      {
        v15 = [v14 originalBoundingQuad];
        if (v15)
        {
          v16 = v15;
          [v15 normalizationSize];
          v18 = v17;

          *&result = v18 * 0.25;
          return result;
        }
      }
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    (*(v8 + 8))(v11, v7);
  }

  *&result = 0.0;
  return result;
}

void sub_26F489090(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_26F49D7E8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_26F489100@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  *a2 = v4;
  return result;
}

uint64_t sub_26F489180(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26F49DDB8();
}

uint64_t sub_26F4891FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  return v1;
}

uint64_t sub_26F489270(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26F49DDB8();
}

uint64_t (*sub_26F4892E0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_26F49DD98();
  return sub_26F40EB7C;
}

uint64_t sub_26F489384(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1648, &qword_26F4AB940);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1640, &qword_26F4AB938);
  sub_26F49DD88();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_26F489524(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1648, &qword_26F4AB940);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1640, &qword_26F4AB938);
  sub_26F49DD88();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26F48965C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1648, &qword_26F4AB940);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable__models;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1640, &qword_26F4AB938);
  sub_26F49DD78();
  swift_endAccess();
  return sub_26F40EB80;
}