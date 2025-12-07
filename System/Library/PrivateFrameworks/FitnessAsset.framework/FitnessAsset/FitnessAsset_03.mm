uint64_t sub_20C450C1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, __n128, __n128))
{
  v6 = *(type metadata accessor for DynamicImageAssetView(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9.n128_u64[0] = *v8;
  v10.n128_u64[0] = v8[1];

  return a3(a1, a2, v3 + v7, v9, v10);
}

uint64_t objectdestroy_10Tm()
{
  v1 = type metadata accessor for DynamicImageAssetView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDB0, &qword_20C466A90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_20C460090();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDB8, &qword_20C466AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_20C460240();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  v10 = v1[6];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20C460240();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  else
  {
  }

  sub_20C414B30(*(v5 + v1[7]), *(v5 + v1[7] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20C450F94(uint64_t a1, double *a2)
{
  v5 = *(type metadata accessor for DynamicImageAssetView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_20C44FCE8(a1, a2, v6);
}

uint64_t sub_20C451014(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20C45105C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DynamicImageAssetView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20C460050() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_20C44DF50(v11, v12, a1, a2, v2 + v6, v2 + v9);
}

uint64_t sub_20C451170(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C4511D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C451238()
{
  v1 = *(type metadata accessor for DynamicImageAssetView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v0 + ((v3 + 87) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_20C44DBF0(v0 + v2, (v0 + v3), v5, v6);
}

uint64_t objectdestroy_36Tm()
{
  v1 = type metadata accessor for DynamicImageAssetView(0);
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  v18 = sub_20C460050();
  v4 = *(v18 - 8);
  v5 = *(v4 + 80);
  v17 = *(v4 + 64);
  v3 = (v2 + 32) & ~v2;
  v6 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDB0, &qword_20C466A90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_20C460090();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
  }

  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDB8, &qword_20C466AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_20C460240();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v6 + v8, 1, v9))
    {
      (*(v10 + 8))(v6 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[6];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_20C460240();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v6 + v11, 1, v12))
    {
      (*(v13 + 8))(v6 + v11, v12);
    }
  }

  else
  {
  }

  v14 = (((v2 + 32) & ~v2) + v16 + v5) & ~v5;
  sub_20C414B30(*(v6 + v1[7]), *(v6 + v1[7] + 8));

  (*(v4 + 8))(v0 + v14, v18);

  return MEMORY[0x2821FE8E8](v0, v14 + v17, v2 | v5 | 7);
}

uint64_t sub_20C451620()
{
  v1 = *(type metadata accessor for DynamicImageAssetView(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_20C460050() - 8);
  return sub_20C44E290(v0 + v2, v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)), *(v0 + 16), *(v0 + 24));
}

uint64_t sub_20C4516E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t DynamicPredicateComparisonDescriptor.makePredicateExpression<A>(using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v169 = a1;
  v190 = a3;
  v170 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v171 = &v165 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v4[1];
  v5 = v4[2];
  v176 = v4;
  v7 = v4[3];
  v175 = v8;
  v195 = v8;
  v196 = v6;
  v172 = v6;
  v173 = v5;
  v197 = v5;
  v198 = v7;
  v174 = v7;
  v9 = type metadata accessor for ArtworkPredicateValue(0, &v195);
  MEMORY[0x28223BE20](v9);
  v177 = &v165 - v10;
  WitnessTable = swift_getWitnessTable();
  v179 = v9;
  v178 = WitnessTable;
  v12 = type metadata accessor for ArtworkPredicateKeyPath(0, v9, MEMORY[0x277D83B88], WitnessTable);
  v181 = *(v12 - 8);
  v182 = v12;
  MEMORY[0x28223BE20](v12);
  v180 = &v165 - v13;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7E0, &qword_20C464A60);
  MEMORY[0x28223BE20](v192);
  v193 = &v165 - v14;
  v194 = sub_20C45FEF0();
  v15 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v17 = &v165 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v165 - v19;
  v191 = sub_20C45FF00();
  MEMORY[0x28223BE20](v191);
  v189 = &v165 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v188 = (&v165 - v23);
  MEMORY[0x28223BE20](v24);
  v187 = (&v165 - v25);
  MEMORY[0x28223BE20](v26);
  v168 = &v165 - v27;
  MEMORY[0x28223BE20](v28);
  v185 = (&v165 - v29);
  MEMORY[0x28223BE20](v30);
  v165 = &v165 - v31;
  MEMORY[0x28223BE20](v32);
  v166 = &v165 - v33;
  MEMORY[0x28223BE20](v34);
  v186 = &v165 - v35;
  MEMORY[0x28223BE20](v36);
  v167 = &v165 - v37;
  MEMORY[0x28223BE20](v38);
  v184 = &v165 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v165 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &v165 - v44;
  MEMORY[0x28223BE20](v46);
  v48 = &v165 - v47;
  MEMORY[0x28223BE20](v49);
  v51 = &v165 - v50;
  sub_20C45FFB0();
  sub_20C45FED0();
  v183 = v51;
  sub_20C452CB8(v51);
  sub_20C45FFC0();
  sub_20C45FED0();
  sub_20C452CB8(v48);
  LOBYTE(v48) = sub_20C45FEE0();
  v52 = *(v15 + 8);
  v53 = v194;
  v52(v17, v194);
  v52(v20, v53);
  if (v48)
  {
    v54 = sub_20C45FFA0();
    sub_20C45FFB0();
    sub_20C45FFC0();
    v55 = v193;
    v56 = (v193 + *(v192 + 48));
    sub_20C452D14(v45, v193);
    sub_20C452D14(v42, v56);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          LODWORD(v194) = v54;
          v58 = v186;
          sub_20C452D78(v55, v186);
          v59 = sub_20C45FF20();
          v60 = *(v59 - 8);
          v61 = *(v60 + 88);
          v62 = v61(v58, v59);
          v63 = v62;
          if (v62 == *MEMORY[0x277D0A918])
          {
            v64 = swift_getEnumCaseMultiPayload();
            if (v64 != 3)
            {
              if (!v64)
              {
                sub_20C452D78(v56, v183);
                v65 = v171;
                v66 = v175;
                (*(v170 + 16))(v171, v169, v175);
                v67 = v177;
                v68 = ArtworkPredicateValue.init(value:)(v65, v66, v177);
                MEMORY[0x28223BE20](v68);
                v69 = v176;
                *(&v165 - 2) = v66;
                *(&v165 - 1) = v69;
                KeyPath = swift_getKeyPath();
                v71 = v180;
                ArtworkPredicateKeyPath.init(root:keyPath:)(v67, KeyPath, v179, MEMORY[0x277D83B88], v178, v180);
                v201 = sub_20C45FE10();
LABEL_26:
                v200 = v194;
                v107 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BBE60, &qword_20C466D18);
                v108 = v182;
                v109 = swift_getWitnessTable();
                v110 = sub_20C452ED4();
                v195 = v108;
                v196 = v107;
                v197 = v109;
                v198 = v110;
                v111 = MEMORY[0x277D83BA0];
                v199 = MEMORY[0x277D83BA0];
                v112 = type metadata accessor for ArtworkPredicateComparison(0, &v195);
                v113 = v190;
                v190[3] = v112;
                v113[4] = &protocol witness table for ArtworkPredicateComparison<A, B>;
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v113);
                v115 = &v201;
                v116 = boxed_opaque_existential_1;
                v117 = v71;
                v118 = v108;
                v119 = v107;
LABEL_31:
                static ArtworkPredicate.makeComparison<A, B>(lhs:rhs:comparisonOperator:)(v117, v115, v118, v119, v109, v110, v111, v116);
                (*(v181 + 8))(v71, v108);
                goto LABEL_32;
              }

              goto LABEL_66;
            }

            v135 = v166;
            sub_20C452D78(v56, v166);
            if (v61(v135, v59) == v63)
            {
              if (qword_28110B658 != -1)
              {
                swift_once();
              }

              v136 = sub_20C460000();
              __swift_project_value_buffer(v136, qword_28110E2C0);
              v137 = sub_20C45FFE0();
              v138 = sub_20C460660();
              if (os_log_type_enabled(v137, v138))
              {
                v139 = swift_slowAlloc();
                v140 = swift_slowAlloc();
                v195 = v140;
                *v139 = 136315138;
                *(v139 + 4) = sub_20C43A260(0xD00000000000006BLL, 0x800000020C467850, &v195);
                _os_log_impl(&dword_20C404000, v137, v138, "%s", v139, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v140);
                MEMORY[0x20F2FB570](v140, -1, -1);
                MEMORY[0x20F2FB570](v139, -1, -1);
              }

LABEL_64:

              v153 = v190;
              v154 = v171;
              v155 = v175;
              (*(v170 + 16))(v171, v169, v175);
              v156 = v177;
              v157 = ArtworkPredicateValue.init(value:)(v154, v155, v177);
              MEMORY[0x28223BE20](v157);
              v158 = v176;
              *(&v165 - 2) = v155;
              *(&v165 - 1) = v158;
              v159 = swift_getKeyPath();
              v160 = v180;
              ArtworkPredicateKeyPath.init(root:keyPath:)(v156, v159, v179, MEMORY[0x277D83B88], v178, v180);
              LOBYTE(v201) = v194;
              v161 = v182;
              v162 = swift_getWitnessTable();
              v195 = v161;
              v196 = v161;
              v197 = v162;
              v198 = v162;
              v163 = MEMORY[0x277D83BA0];
              v199 = MEMORY[0x277D83BA0];
              v153[3] = type metadata accessor for ArtworkPredicateComparison(0, &v195);
              v153[4] = &protocol witness table for ArtworkPredicateComparison<A, B>;
              v164 = __swift_allocate_boxed_opaque_existential_1(v153);
              static ArtworkPredicate.makeComparison<A, B>(lhs:rhs:comparisonOperator:)(v160, v160, v161, v161, v162, v162, v163, v164);
              (*(v181 + 8))(v160, v161);
              sub_20C452CB8(v56);
              return sub_20C452CB8(v55);
            }

LABEL_65:
            (*(v60 + 8))(v135, v59);
LABEL_66:
            sub_20C452CB8(v56);
            sub_20C452CB8(v55);
            sub_20C43C430();
            swift_allocError();
            v73 = 5;
            goto LABEL_67;
          }

          if (v62 == *MEMORY[0x277D0A910])
          {
            v98 = swift_getEnumCaseMultiPayload();
            if (v98 != 3)
            {
              if (v98 == 1)
              {
                v99 = v183;
                sub_20C452D78(v56, v183);
                v100 = *v99;
                v101 = v171;
                v102 = v175;
                (*(v170 + 16))(v171, v169, v175);
                v103 = v177;
                v104 = ArtworkPredicateValue.init(value:)(v101, v102, v177);
                MEMORY[0x28223BE20](v104);
                v105 = v176;
                *(&v165 - 2) = v102;
                *(&v165 - 1) = v105;
                v106 = swift_getKeyPath();
                v71 = v180;
                ArtworkPredicateKeyPath.init(root:keyPath:)(v103, v106, v179, MEMORY[0x277D83B88], v178, v180);
                v201 = v100;
                goto LABEL_26;
              }

              goto LABEL_66;
            }

            v135 = v165;
            sub_20C452D78(v56, v165);
            if (v61(v135, v59) == v63)
            {
              if (qword_28110B658 != -1)
              {
                swift_once();
              }

              v149 = sub_20C460000();
              __swift_project_value_buffer(v149, qword_28110E2C0);
              v137 = sub_20C45FFE0();
              v150 = sub_20C460660();
              if (os_log_type_enabled(v137, v150))
              {
                v151 = swift_slowAlloc();
                v152 = swift_slowAlloc();
                v195 = v152;
                *v151 = 136315138;
                *(v151 + 4) = sub_20C43A260(0xD00000000000006BLL, 0x800000020C467850, &v195);
                _os_log_impl(&dword_20C404000, v137, v150, "%s", v151, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v152);
                MEMORY[0x20F2FB570](v152, -1, -1);
                MEMORY[0x20F2FB570](v151, -1, -1);
              }

              goto LABEL_64;
            }

            goto LABEL_65;
          }

LABEL_36:
          (*(v60 + 8))(v58, v59);
          goto LABEL_45;
        }

        v83 = v188;
        sub_20C452D78(v55, v188);
        v84 = v83[1];
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v85 = *v83;
          v86 = *v56;
          v87 = v56[1];
          v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7F0, &qword_20C464A68);
          v89 = v190;
          v190[3] = v88;
          v89[4] = &protocol witness table for ArtworkPredicateComparison<A, B>;
          v90 = swift_allocObject();
          *v89 = v90;
          *(v90 + 16) = v85;
          *(v90 + 24) = v84;
          *(v90 + 32) = v86;
          *(v90 + 40) = v87;
          *(v90 + 48) = v54;
          return sub_20C452CB8(v55);
        }

LABEL_45:
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v141 = v189;
          sub_20C452D78(v56, v189);
          v142 = sub_20C45FF20();
          v143 = *(v142 - 8);
          v144 = (*(v143 + 88))(v141, v142);
          if (v144 == *MEMORY[0x277D0A918] || v144 == *MEMORY[0x277D0A910])
          {
            goto LABEL_66;
          }

          (*(v143 + 8))(v141, v142);
        }

        v145 = swift_getEnumCaseMultiPayload();
        if (v145 < 3)
        {
          goto LABEL_55;
        }

        if (v145 == 3)
        {
          v146 = swift_getEnumCaseMultiPayload();
          if (v146 < 3)
          {
            v56 = v55;
LABEL_55:
            sub_20C452CB8(v56);
            sub_20C43C430();
            swift_allocError();
            v73 = 2;
            goto LABEL_67;
          }

          if (v146 == 3)
          {
            sub_20C43C430();
            swift_allocError();
            *v148 = 10;
            swift_willThrow();
            return sub_20C452DDC(v55);
          }

          v147 = v56;
          v56 = v55;
        }

        else
        {
          v147 = v55;
        }

        sub_20C452CB8(v147);
        goto LABEL_55;
      }

      v80 = v187;
      sub_20C452D78(v55, v187);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_45;
      }

      v81 = *v80;
      v82 = *v56;
LABEL_35:
      sub_20C452CB8(v55);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7F8, &qword_20C464A70);
      v134 = v190;
      v190[3] = result;
      v134[4] = &protocol witness table for ArtworkPredicateComparison<A, B>;
      *v134 = v81;
      v134[1] = v82;
      *(v134 + 16) = v54;
      return result;
    }

    if (EnumCaseMultiPayload)
    {
      v91 = v185;
      sub_20C452D78(v55, v185);
      v81 = *v91;
      v92 = swift_getEnumCaseMultiPayload();
      if (v92 == 1)
      {
        v133 = v183;
        sub_20C452D78(v56, v183);
        v82 = *v133;
        sub_20C452CB8(v56);
        goto LABEL_35;
      }

      if (v92 != 3)
      {
        goto LABEL_45;
      }

      v58 = v168;
      sub_20C452D78(v56, v168);
      v59 = sub_20C45FF20();
      v60 = *(v59 - 8);
      if ((*(v60 + 88))(v58, v59) != *MEMORY[0x277D0A910])
      {
        goto LABEL_36;
      }

      v201 = v81;
      v93 = v171;
      v94 = v175;
      (*(v170 + 16))(v171, v169, v175);
      v95 = v177;
      v96 = ArtworkPredicateValue.init(value:)(v93, v94, v177);
      MEMORY[0x28223BE20](v96);
      v97 = v176;
      *(&v165 - 2) = v94;
      *(&v165 - 1) = v97;
    }

    else
    {
      v74 = v184;
      sub_20C452D78(v55, v184);
      v75 = *v74;
      v76 = swift_getEnumCaseMultiPayload();
      if (v76 != 3)
      {
        if (!v76)
        {
          v77 = v183;
          sub_20C452D78(v56, v183);
          LOBYTE(v77) = *v77;
          v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB828, &qword_20C464AF8);
          v79 = v190;
          v190[3] = v78;
          v79[4] = &protocol witness table for ArtworkPredicateComparison<A, B>;
          *v79 = v75;
          *(v79 + 1) = v77;
          *(v79 + 2) = v54;
LABEL_32:
          sub_20C452CB8(v56);
          return sub_20C452CB8(v55);
        }

        goto LABEL_45;
      }

      v120 = v167;
      sub_20C452D78(v56, v167);
      v121 = sub_20C45FF20();
      v122 = *(v121 - 8);
      if ((*(v122 + 88))(v120, v121) != *MEMORY[0x277D0A918])
      {
        (*(v122 + 8))(v120, v121);
        goto LABEL_45;
      }

      v201 = sub_20C45FE10();
      v123 = v171;
      v124 = v175;
      (*(v170 + 16))(v171, v169, v175);
      v95 = v177;
      v125 = ArtworkPredicateValue.init(value:)(v123, v124, v177);
      MEMORY[0x28223BE20](v125);
      v126 = v176;
      *(&v165 - 2) = v124;
      *(&v165 - 1) = v126;
    }

    v127 = swift_getKeyPath();
    v128 = v54;
    v71 = v180;
    ArtworkPredicateKeyPath.init(root:keyPath:)(v95, v127, v179, MEMORY[0x277D83B88], v178, v180);
    v200 = v128;
    v129 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BBE60, &qword_20C466D18);
    v109 = sub_20C452ED4();
    v108 = v182;
    v110 = swift_getWitnessTable();
    v195 = v129;
    v196 = v108;
    v197 = v109;
    v198 = v110;
    v111 = MEMORY[0x277D83BA0];
    v199 = MEMORY[0x277D83BA0];
    v130 = type metadata accessor for ArtworkPredicateComparison(0, &v195);
    v131 = v190;
    v190[3] = v130;
    v131[4] = &protocol witness table for ArtworkPredicateComparison<A, B>;
    v116 = __swift_allocate_boxed_opaque_existential_1(v131);
    v117 = &v201;
    v115 = v71;
    v118 = v129;
    v119 = v108;
    goto LABEL_31;
  }

  sub_20C43C430();
  swift_allocError();
  v73 = 6;
LABEL_67:
  *v72 = v73;
  return swift_willThrow();
}

uint64_t sub_20C452CB8(uint64_t a1)
{
  v2 = sub_20C45FF00();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C452D14(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C45FF00();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C452D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C45FF00();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C452DDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB7E0, &qword_20C464A60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C452E44@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 32))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_20C452E8C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 40))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

unint64_t sub_20C452ED4()
{
  result = qword_27C7BBE68;
  if (!qword_27C7BBE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BBE60, &qword_20C466D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBE68);
  }

  return result;
}

uint64_t sub_20C452F50(uint64_t a1, char *a2)
{
  v50 = a1;
  v51 = a2;
  v2 = sub_20C45FCC0();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x28223BE20](v2);
  v45 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C45FC90();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF60, &unk_20C462050);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE80, &qword_20C466EB0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v44 - v20;
  v23 = &v44 + *(v22 + 56) - v20;
  sub_20C409B04(v50, &v44 - v20, &qword_27C7BAF10, &qword_20C4640D0);
  sub_20C409B04(v51, v23, &qword_27C7BAF10, &qword_20C4640D0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v30 = v12;
    v51 = v6;
    v31 = v9;
    v33 = v48;
    v32 = v49;
    sub_20C409B04(v21, v18, &qword_27C7BAF10, &qword_20C4640D0);
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF78, &unk_20C462060) + 48);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_20C409BD0(v23, v30, &qword_27C7BAF60, &unk_20C462050);
      v37 = *(v33 + 32);
      v50 = v31;
      v37(v31, &v18[v34], v32);
      v38 = v51;
      v37(v51, &v23[v34], v32);
      type metadata accessor for ImageAsset(0);
      sub_20C45A8F0(&qword_28110BC88, type metadata accessor for ImageAsset, &protocol conformance descriptor for ImageAsset);
      sub_20C406308();
      sub_20C45AFE0();
      v39 = sub_20C4609A0();
      sub_20C40B440(v18, &qword_27C7BAF60, &unk_20C462050);
      if (v39)
      {
        v40 = v50;
        v28 = sub_20C45FC70();
        v41 = *(v33 + 8);
        v41(v38, v32);
        v41(v40, v32);
        sub_20C40B440(v30, &qword_27C7BAF60, &unk_20C462050);
        goto LABEL_14;
      }

      v43 = *(v33 + 8);
      v43(v38, v32);
      v43(v50, v32);
      sub_20C40B440(v30, &qword_27C7BAF60, &unk_20C462050);
      v35 = &qword_27C7BAF10;
      v36 = &qword_20C4640D0;
      goto LABEL_11;
    }

    (*(v33 + 8))(&v18[v34], v32);
    sub_20C40B440(v18, &qword_27C7BAF60, &unk_20C462050);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_20C409B04(v21, v15, &qword_27C7BAF10, &qword_20C4640D0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v45;
      v25 = v46;
      v27 = v47;
      (*(v46 + 32))(v45, v23, v47);
      v28 = sub_20C45FCA0();
      v29 = *(v25 + 8);
      v29(v26, v27);
      v29(v15, v27);
LABEL_14:
      sub_20C40B440(v21, &qword_27C7BAF10, &qword_20C4640D0);
      return v28 & 1;
    }

    (*(v46 + 8))(v15, v47);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    v35 = &qword_27C7BBE80;
    v36 = &qword_20C466EB0;
LABEL_11:
    sub_20C40B440(v21, v35, v36);
    v28 = 0;
    return v28 & 1;
  }

  sub_20C40B440(v21, &qword_27C7BAF10, &qword_20C4640D0);
  v28 = 1;
  return v28 & 1;
}

uint64_t sub_20C453554(uint64_t a1, __int128 *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFB8, &unk_20C461F90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_20C40B440(a1, &qword_27C7BAFB8, &unk_20C461F90);
    sub_20C4591C0(a2, v7);
    sub_20C40C57C(a2);
    return sub_20C40B440(v7, &qword_27C7BAFB8, &unk_20C461F90);
  }

  else
  {
    sub_20C409BD0(a1, v11, &qword_27C7BAF10, &qword_20C4640D0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_20C459D30(v11, a2, isUniquelyReferenced_nonNull_native);
    result = sub_20C40C57C(a2);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_20C453718(uint64_t a1, void *a2)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v5 = &v42[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v45 = &v42[-v7];
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  v53 = a1;

  v13 = 0;
  v43 = a2;
  while (v11)
  {
LABEL_11:
    v16 = (*(v53 + 48) + 80 * (__clz(__rbit64(v11)) | (v13 << 6)));
    v48 = *v16;
    v17 = v16[4];
    v19 = v16[1];
    v18 = v16[2];
    v51 = v16[3];
    v52 = v17;
    v49 = v19;
    v50 = v18;
    v20 = v45;
    swift_storeEnumTagMultiPayload();
    v21 = v5;
    sub_20C409BD0(v20, v5, &qword_27C7BAF10, &qword_20C4640D0);
    sub_20C40C520(&v48, &v47);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = *a2;
    v23 = v47;
    v25 = sub_20C457E7C(&v48);
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_24;
    }

    v29 = v24;
    if (v23[3] >= v28)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v32 = v47;
        if (v24)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_20C45A1C0();
        v32 = v47;
        if (v29)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_20C4582F8(v28, isUniquelyReferenced_nonNull_native);
      v30 = sub_20C457E7C(&v48);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_26;
      }

      v25 = v30;
      v32 = v47;
      if (v29)
      {
LABEL_4:
        v14 = v32[7] + *(v44 + 72) * v25;
        v5 = v21;
        sub_20C45AF70(v21, v14);
        sub_20C40C57C(&v48);
        goto LABEL_5;
      }
    }

    v32[(v25 >> 6) + 8] |= 1 << v25;
    v33 = (v32[6] + 80 * v25);
    *v33 = v48;
    v34 = v49;
    v35 = v50;
    v36 = v52;
    v33[3] = v51;
    v33[4] = v36;
    v33[1] = v34;
    v33[2] = v35;
    v37 = v32[7] + *(v44 + 72) * v25;
    v5 = v21;
    sub_20C409BD0(v21, v37, &qword_27C7BAF10, &qword_20C4640D0);
    v38 = v32[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_25;
    }

    v32[2] = v40;
LABEL_5:
    v11 &= v11 - 1;
    a2 = v43;
    *v43 = v32;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
    }

    v11 = *(v8 + 8 * v15);
    ++v13;
    if (v11)
    {
      v13 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_20C4608E0();
  __break(1u);
  return result;
}

uint64_t sub_20C453A94(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_20C4608D0() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_20C453B24(uint64_t a1)
{
  v36 = sub_20C45FC30();
  v35 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v32 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v30 - v4;
  v5 = sub_20C45FD00();
  v33 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  v10 = type metadata accessor for ImageAsset(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C45FCC0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ImageAssetFeature.TaskIdentifier(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C458FD4(v37, v19, type metadata accessor for ImageAssetFeature.TaskIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120) + 48)];
    v21 = *(v20 + 4);
    v46 = *(v20 + 3);
    v47 = v21;
    v22 = *(v20 + 2);
    v44 = *(v20 + 1);
    v45 = v22;
    v43 = *v20;
    sub_20C45A6B4(v19, v12, type metadata accessor for ImageAsset);
    MEMORY[0x20F2FAEA0](1);
    sub_20C409B04(v12, v9, &qword_27C7BAC10, &qword_20C462070);
    v23 = v33;
    if ((*(v33 + 48))(v9, 1, v5) == 1)
    {
      sub_20C460950();
    }

    else
    {
      v25 = v31;
      (*(v23 + 32))(v31, v9, v5);
      sub_20C460950();
      sub_20C45A8F0(&qword_28110B4D8, MEMORY[0x277D09D68], MEMORY[0x277D09D78]);
      sub_20C460460();
      (*(v23 + 8))(v25, v5);
    }

    v26 = v36;
    v27 = v35;
    sub_20C4604F0();
    sub_20C4604F0();

    v28 = v34;
    sub_20C409B04(&v12[*(v10 + 28)], v34, &qword_27C7BAC18, &unk_20C464A00);
    if ((*(v27 + 48))(v28, 1, v26) == 1)
    {
      sub_20C460950();
    }

    else
    {
      v29 = v32;
      (*(v27 + 32))(v32, v28, v26);
      sub_20C460950();
      sub_20C45A8F0(&qword_28110BEB0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      sub_20C460460();
      (*(v27 + 8))(v29, v26);
    }

    v40 = v45;
    v41 = v46;
    v42 = v47;
    v38 = v43;
    v39 = v44;
    ImageAssetCacheKey.hash(into:)(a1);
    sub_20C40C57C(&v43);
    return sub_20C45903C(v12, type metadata accessor for ImageAsset);
  }

  else
  {
    (*(v14 + 32))(v16, v19, v13);
    MEMORY[0x20F2FAEA0](0);
    sub_20C45A8F0(&qword_28110BE90, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_20C460460();
    return (*(v14 + 8))(v16, v13);
  }
}

uint64_t sub_20C4541D8()
{
  sub_20C460930();
  sub_20C453B24(v1);
  return sub_20C460970();
}

uint64_t sub_20C45421C(uint64_t a1)
{
  sub_20C460930();
  sub_20C453B24(v2);
  return sub_20C460970();
}

void sub_20C45425C()
{
  qword_28110E2D8 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  v0 = qword_28110E2D8;
  [v0 setCountLimit_];
  [v0 baf:0 setEvictsObjectsWhenApplicationEntersBackground:?];
}

__n128 ImageAssetFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_20C45FCB0();
  v4 = (a2 + *(type metadata accessor for ImageAssetFeature(0) + 20));
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  v4[1] = v6;
  return result;
}

uint64_t ImageAssetFeature.dispose(localState:sharedState:)(uint64_t a1, uint64_t *a2)
{
  sub_20C43A808(sub_20C4544A8, &v5, *a2);
  sub_20C453718(v3, a2);
}

uint64_t sub_20C4543A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  v8 = sub_20C45FCC0();
  (*(*(v8 - 8) + 16))(v7, a3, v8);
  swift_storeEnumTagMultiPayload();
  LOBYTE(a3) = sub_20C452F50(a2, v7);
  sub_20C40B440(v7, &qword_27C7BAF10, &qword_20C4640D0);
  return a3 & 1;
}

uint64_t ImageAssetFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v218 = a4;
  v212 = a3;
  v219 = a2;
  v5 = sub_20C45FCC0();
  v208 = *(v5 - 8);
  v209 = v5;
  MEMORY[0x28223BE20](v5);
  v192 = &v188 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ImageAssetFeature(0);
  v199 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v200 = v8;
  v201 = &v188 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for ImageAssetFeature.TaskIdentifier(0);
  MEMORY[0x28223BE20](v204);
  v195 = &v188 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v203 = &v188 - v11;
  MEMORY[0x28223BE20](v12);
  v198 = &v188 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB4D0, &unk_20C466D60);
  v205 = *(v14 - 8);
  v206 = v14;
  MEMORY[0x28223BE20](v14);
  v196 = &v188 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v207 = &v188 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFB8, &unk_20C461F90);
  MEMORY[0x28223BE20](v18 - 8);
  v211 = &v188 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v21 = *(v20 - 8);
  v214 = v20;
  v215 = v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v188 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v188 - v25;
  MEMORY[0x28223BE20](v27);
  v193 = &v188 - v28;
  MEMORY[0x28223BE20](v29);
  v210 = &v188 - v30;
  v190 = type metadata accessor for ImageAsset(0);
  v202 = *(v190 - 8);
  v31 = *(v202 + 64);
  MEMORY[0x28223BE20](v190);
  v194 = &v188 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v216 = &v188 - v33;
  MEMORY[0x28223BE20](v34);
  v189 = &v188 - v35;
  MEMORY[0x28223BE20](v36);
  v191 = &v188 - v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v188 - v39;
  MEMORY[0x28223BE20](v41);
  v197 = &v188 - v42;
  MEMORY[0x28223BE20](v43);
  v213 = &v188 - v44;
  v45 = type metadata accessor for ImageAssetAction(0);
  MEMORY[0x28223BE20](v45);
  v47 = &v188 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v50 = &v188 - v49;
  sub_20C458FD4(v218, &v188 - v49, type metadata accessor for ImageAssetAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      v73 = &v50[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120) + 48)];
      v74 = v73[4];
      v238[2] = v73[3];
      v238[3] = v74;
      v75 = v73[2];
      v238[0] = v73[1];
      v238[1] = v75;
      v237 = *v73;
      sub_20C45A6B4(v50, v40, type metadata accessor for ImageAsset);
      v76 = *v219;
      if (*(*v219 + 16))
      {
        v77 = sub_20C457E7C(&v237);
        if (v78)
        {
          sub_20C409B04(*(v76 + 56) + *(v215 + 72) * v77, v23, &qword_27C7BAF10, &qword_20C4640D0);
          v79 = v214;
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            sub_20C45903C(v40, type metadata accessor for ImageAsset);
            sub_20C40C57C(&v237);
            return sub_20C40B440(v23, &qword_27C7BAF10, &qword_20C4640D0);
          }

          (*(v208 + 8))(v23, v209);
          if (qword_28110B658 != -1)
          {
            swift_once();
          }

          v80 = sub_20C460000();
          __swift_project_value_buffer(v80, qword_28110E2C0);
          v81 = v191;
          sub_20C458FD4(v40, v191, type metadata accessor for ImageAsset);
          sub_20C40C520(&v237, &v257);
          v82 = sub_20C45FFE0();
          v83 = sub_20C460680();
          sub_20C40C57C(&v237);
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            *&v254[0] = v85;
            *v84 = 141558530;
            *(v84 + 4) = 1752392040;
            *(v84 + 12) = 2080;
            sub_20C458FD4(v81, v189, type metadata accessor for ImageAsset);
            v86 = sub_20C4604E0();
            v88 = v87;
            sub_20C45903C(v81, type metadata accessor for ImageAsset);
            v89 = sub_20C43A260(v86, v88, v254);

            *(v84 + 14) = v89;
            *(v84 + 22) = 2082;
            v259 = v238[1];
            v260 = v238[2];
            v261 = v238[3];
            v257 = v237;
            v258 = v238[0];
            sub_20C40C520(&v237, &v255);
            v90 = sub_20C4604E0();
            v92 = sub_20C43A260(v90, v91, v254);

            *(v84 + 24) = v92;
            _os_log_impl(&dword_20C404000, v82, v83, "Loaded %{mask.hash}s (%{public}s)", v84, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x20F2FB570](v85, -1, -1);
            MEMORY[0x20F2FB570](v84, -1, -1);
          }

          else
          {

            sub_20C45903C(v81, type metadata accessor for ImageAsset);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF78, &unk_20C462060);
          v186 = v211;
          sub_20C458FD4(v40, v211, type metadata accessor for ImageAsset);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF60, &unk_20C462050);
          swift_storeEnumTagMultiPayload();
          sub_20C45FC80();
          swift_storeEnumTagMultiPayload();
          (*(v215 + 56))(v186, 0, 1, v79);
          sub_20C453554(v186, &v237);
          v71 = type metadata accessor for ImageAsset;
          v72 = v40;
          return sub_20C45903C(v72, v71);
        }
      }

      sub_20C45903C(v40, type metadata accessor for ImageAsset);
      return sub_20C40C57C(&v237);
    }

    v60 = *v50;
    v59 = *(v50 + 1);
    *a1 = *v50;
    *(a1 + 8) = v59;
    *(a1 + 16) = 0;
    v61 = type metadata accessor for ImageAssetState(0);
    v62 = v216;
    sub_20C458FD4(v219 + *(v61 + 20), v216, type metadata accessor for ImageAsset);
    (*(v217 + *(v7 + 20) + 16))(&v255, v62, v60, v59);
    v259 = v256[1];
    v260 = v256[2];
    v261 = v256[3];
    v257 = v255;
    v258 = v256[0];
    v253 = v255;
    v107 = *&v256[0];
    v252 = *(&v256[3] + 1);
    v251 = *(&v256[2] + 8);
    v250 = *(&v256[1] + 8);
    v249 = *(v256 + 8);
    v108 = *(a1 + 24);
    v254[4] = *(a1 + 88);
    v109 = *(a1 + 56);
    v254[3] = *(a1 + 72);
    v254[2] = v109;
    v110 = *(a1 + 40);
    v254[0] = v108;
    v254[1] = v110;
    v248 = *(a1 + 24);
    v111 = v110;
    v112 = *(a1 + 64);
    v244 = *(a1 + 48);
    v245 = v112;
    v246 = *(a1 + 80);
    v247 = *(a1 + 96);
    if (*&v256[0])
    {
      v237 = v255;
      *(v238 + 8) = *(v256 + 8);
      *(&v238[1] + 8) = *(&v256[1] + 8);
      *(&v238[2] + 8) = *(&v256[2] + 8);
      *&v238[0] = *&v256[0];
      *(&v238[3] + 1) = *(&v256[3] + 1);
      v232 = v255;
      v233 = v238[0];
      v234 = v238[1];
      v235 = v238[2];
      v236 = v238[3];
      if (v111)
      {
        v226 = *(a1 + 24);
        v113 = *(a1 + 64);
        *(v227 + 8) = *(a1 + 48);
        *(&v227[1] + 8) = v113;
        *(&v227[2] + 8) = *(a1 + 80);
        *(&v227[3] + 1) = *(a1 + 96);
        *&v227[0] = v111;
        v114 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(&v232, &v226);
        v228[2] = v227[1];
        v228[3] = v227[2];
        v228[4] = v227[3];
        v228[0] = v226;
        v228[1] = v227[0];
        sub_20C40C520(&v257, v225);
        sub_20C40C520(&v257, v225);
        sub_20C409B04(v254, v225, &qword_27C7BAC68, &unk_20C464890);
        sub_20C409B04(&v237, v225, &qword_27C7BAC68, &unk_20C464890);
        sub_20C40C57C(v228);
        v229[2] = v234;
        v229[3] = v235;
        v229[4] = v236;
        v229[0] = v232;
        v229[1] = v233;
        sub_20C40C57C(v229);
        v230 = v255;
        *(v231 + 8) = *(v256 + 8);
        *(&v231[1] + 8) = *(&v256[1] + 8);
        *(&v231[2] + 8) = *(&v256[2] + 8);
        *&v231[0] = v107;
        *(&v231[3] + 1) = *(&v256[3] + 1);
        sub_20C40B440(&v230, &qword_27C7BAC68, &unk_20C464890);
        if (v114)
        {
          sub_20C40C57C(&v257);
          sub_20C40C57C(&v257);
LABEL_55:
          v72 = v216;
          v71 = type metadata accessor for ImageAsset;
          return sub_20C45903C(v72, v71);
        }

LABEL_46:
        v159 = v216;
        v160 = *(a1 + 40);
        v161 = *(a1 + 72);
        v238[1] = *(a1 + 56);
        v238[2] = v161;
        v238[3] = *(a1 + 88);
        v237 = *(a1 + 24);
        v238[0] = v160;
        sub_20C40B440(&v237, &qword_27C7BAC68, &unk_20C464890);
        *(a1 + 24) = v253;
        *(a1 + 40) = v107;
        v162 = v250;
        *(a1 + 48) = v249;
        *(a1 + 64) = v162;
        *(a1 + 80) = v251;
        *(a1 + 96) = v252;
        v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB498, &qword_20C4648A0);
        v219 = v163[12];
        v164 = v163[16];
        v165 = v163[20];
        v167 = v195;
        v166 = v196;
        v168 = &v196[v163[24]];
        (*(v208 + 16))(v195, v217, v209);
        swift_storeEnumTagMultiPayload();
        sub_20C458FD4(v167, v203, type metadata accessor for ImageAssetFeature.TaskIdentifier);
        sub_20C45A8F0(&qword_28110B9E0, type metadata accessor for ImageAssetFeature.TaskIdentifier, &unk_20C466E4C);
        sub_20C460720();
        sub_20C45903C(v167, type metadata accessor for ImageAssetFeature.TaskIdentifier);
        v169 = *MEMORY[0x277D04400];
        v170 = sub_20C460410();
        (*(*(v170 - 8) + 104))(&v166[v164], v169, v170);
        v171 = *MEMORY[0x277D043E0];
        v172 = sub_20C460400();
        (*(*(v172 - 8) + 104))(&v166[v165], v171, v172);
        v173 = v194;
        sub_20C458FD4(v159, v194, type metadata accessor for ImageAsset);
        v174 = (*(v202 + 80) + 16) & ~*(v202 + 80);
        v175 = (v31 + v174 + 7) & 0xFFFFFFFFFFFFFFF8;
        v176 = swift_allocObject();
        sub_20C45A6B4(v173, v176 + v174, type metadata accessor for ImageAsset);
        v177 = (v176 + v175);
        v178 = v260;
        v177[2] = v259;
        v177[3] = v178;
        v177[4] = v261;
        v179 = v258;
        *v177 = v257;
        v177[1] = v179;
        v180 = (v176 + ((v175 + 87) & 0xFFFFFFFFFFFFFFF8));
        *v180 = v60;
        v180[1] = v59;
        *v168 = &unk_20C466D78;
        *(v168 + 1) = v176;
        sub_20C4605F0();
        v182 = v205;
        v181 = v206;
        (*(v205 + 104))(v166, *MEMORY[0x277D043B0], v206);
        v155 = v212;
        v156 = *v212;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v156 = sub_20C426D20(0, v156[2] + 1, 1, v156);
        }

        v184 = v156[2];
        v183 = v156[3];
        v185 = v216;
        if (v184 >= v183 >> 1)
        {
          v187 = v216;
          v156 = sub_20C426D20((v183 > 1), v184 + 1, 1, v156);
          v185 = v187;
        }

        sub_20C45903C(v185, type metadata accessor for ImageAsset);
        v156[2] = v184 + 1;
        result = (*(v182 + 32))(v156 + ((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v184, v166, v181);
        goto LABEL_51;
      }

      v231[1] = v238[1];
      v231[2] = v238[2];
      v231[3] = v238[3];
      v230 = v237;
      v231[0] = v238[0];
      sub_20C40C520(&v257, v229);
      sub_20C40C520(&v257, v229);
      sub_20C409B04(v254, v229, &qword_27C7BAC68, &unk_20C464890);
      sub_20C409B04(&v237, v229, &qword_27C7BAC68, &unk_20C464890);
      sub_20C40C57C(&v230);
    }

    else
    {
      if (!v111)
      {
        v237 = v255;
        *(v238 + 8) = *(v256 + 8);
        *(&v238[1] + 8) = *(&v256[1] + 8);
        *(&v238[2] + 8) = *(&v256[2] + 8);
        *&v238[0] = 0;
        *(&v238[3] + 1) = *(&v256[3] + 1);
        sub_20C409B04(v254, &v232, &qword_27C7BAC68, &unk_20C464890);
        sub_20C40B440(&v237, &qword_27C7BAC68, &unk_20C464890);
        goto LABEL_55;
      }

      sub_20C40C520(&v257, &v237);
      sub_20C40C520(&v257, &v237);
      sub_20C409B04(v254, &v237, &qword_27C7BAC68, &unk_20C464890);
    }

    v237 = v255;
    *(v238 + 8) = *(v256 + 8);
    *(&v238[1] + 8) = *(&v256[1] + 8);
    *(&v238[2] + 8) = *(&v256[2] + 8);
    *&v238[0] = v107;
    *(&v238[3] + 1) = *(&v256[3] + 1);
    v238[4] = v248;
    v239 = v111;
    v243 = v247;
    v242 = v246;
    v241 = v245;
    v240 = v244;
    sub_20C40B440(&v237, &qword_27C7BACA0, &qword_20C463AC0);
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
      v53 = &v50[*(v52 + 48)];
      v54 = v53[4];
      v238[2] = v53[3];
      v238[3] = v54;
      v55 = v53[2];
      v238[0] = v53[1];
      v238[1] = v55;
      v237 = *v53;
      v222 = v55;
      v223 = v238[2];
      v224 = v54;
      v220 = v237;
      v221 = v238[0];
      v56 = &v50[*(v52 + 64)];
      v57 = *v56;
      v58 = v56[1];
      sub_20C45A6B4(v50, v213, type metadata accessor for ImageAsset);
      if ((*(a1 + 16) & 1) == 0 && v57 == *a1 && v58 == *(a1 + 8) || !*(a1 + 40))
      {
        v115 = *(a1 + 40);
        v116 = *(a1 + 72);
        v259 = *(a1 + 56);
        v260 = v116;
        v261 = *(a1 + 88);
        v257 = *(a1 + 24);
        v258 = v115;
        sub_20C40C520(&v237, &v255);
        sub_20C40B440(&v257, &qword_27C7BAC68, &unk_20C464890);
        v117 = v220;
        *(a1 + 40) = v221;
        v118 = v223;
        *(a1 + 56) = v222;
        *(a1 + 72) = v118;
        *(a1 + 88) = v224;
        *(a1 + 24) = v117;
      }

      v119 = *v219;
      v120 = v210;
      if (*(*v219 + 16) && (v121 = sub_20C457E7C(&v237), (v122 & 1) != 0))
      {
        v123 = v193;
        sub_20C409B04(*(v119 + 56) + *(v215 + 72) * v121, v193, &qword_27C7BAF10, &qword_20C4640D0);
        sub_20C409BD0(v123, v120, &qword_27C7BAF10, &qword_20C4640D0);
        v124 = v217;
        v125 = v214;
      }

      else
      {
        v125 = v214;
        swift_storeEnumTagMultiPayload();
        v124 = v217;
      }

      if (sub_20C42ED34())
      {
        v126 = v211;
        (*(v208 + 16))(v211, v124, v209);
        swift_storeEnumTagMultiPayload();
        (*(v215 + 56))(v126, 0, 1, v125);
        sub_20C40C520(&v237, &v257);
        sub_20C453554(v126, &v237);
        v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB498, &qword_20C4648A0);
        v128 = v127[16];
        v217 = v127[20];
        v129 = v207;
        v218 = &v207[v127[24]];
        v219 = v128;
        v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120);
        v131 = v198;
        v132 = (v198 + *(v130 + 48));
        v133 = v213;
        sub_20C458FD4(v213, v198, type metadata accessor for ImageAsset);
        v134 = v238[2];
        v132[2] = v238[1];
        v132[3] = v134;
        v132[4] = v238[3];
        v135 = v238[0];
        *v132 = v237;
        v132[1] = v135;
        swift_storeEnumTagMultiPayload();
        sub_20C458FD4(v131, v203, type metadata accessor for ImageAssetFeature.TaskIdentifier);
        sub_20C40C520(&v237, &v257);
        sub_20C45A8F0(&qword_28110B9E0, type metadata accessor for ImageAssetFeature.TaskIdentifier, &unk_20C466E4C);
        sub_20C460720();
        sub_20C45903C(v131, type metadata accessor for ImageAssetFeature.TaskIdentifier);
        sub_20C4605F0();
        v136 = *MEMORY[0x277D043E0];
        v137 = sub_20C460400();
        (*(*(v137 - 8) + 104))(&v129[v217], v136, v137);
        v138 = v133;
        v139 = v197;
        sub_20C458FD4(v138, v197, type metadata accessor for ImageAsset);
        v140 = v201;
        sub_20C458FD4(v124, v201, type metadata accessor for ImageAssetFeature);
        v141 = (*(v202 + 80) + 16) & ~*(v202 + 80);
        v142 = (v31 + v141 + 7) & 0xFFFFFFFFFFFFFFF8;
        v143 = (*(v199 + 80) + v142 + 16) & ~*(v199 + 80);
        v144 = (v200 + v143 + 7) & 0xFFFFFFFFFFFFFFF8;
        v145 = swift_allocObject();
        sub_20C45A6B4(v139, v145 + v141, type metadata accessor for ImageAsset);
        v146 = (v145 + v142);
        *v146 = v57;
        v146[1] = v58;
        sub_20C45A6B4(v140, v145 + v143, type metadata accessor for ImageAssetFeature);
        v147 = (v145 + v144);
        v148 = v238[2];
        v147[2] = v238[1];
        v147[3] = v148;
        v147[4] = v238[3];
        v149 = v238[0];
        *v147 = v237;
        v147[1] = v149;
        v150 = v218;
        *v218 = &unk_20C466D88;
        *(v150 + 1) = v145;
        v151 = *MEMORY[0x277D043F8];
        v152 = sub_20C460410();
        (*(*(v152 - 8) + 104))(&v129[v219], v151, v152);
        v154 = v205;
        v153 = v206;
        (*(v205 + 104))(v129, *MEMORY[0x277D043B0], v206);
        v155 = v212;
        v156 = *v212;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v156 = sub_20C426D20(0, v156[2] + 1, 1, v156);
        }

        v158 = v156[2];
        v157 = v156[3];
        if (v158 >= v157 >> 1)
        {
          v156 = sub_20C426D20((v157 > 1), v158 + 1, 1, v156);
        }

        sub_20C40B440(v210, &qword_27C7BAF10, &qword_20C4640D0);
        sub_20C45903C(v213, type metadata accessor for ImageAsset);
        v156[2] = v158 + 1;
        result = (*(v154 + 32))(v156 + ((*(v154 + 80) + 32) & ~*(v154 + 80)) + *(v154 + 72) * v158, v207, v153);
LABEL_51:
        *v155 = v156;
        return result;
      }

      sub_20C40C57C(&v237);
      sub_20C40B440(v120, &qword_27C7BAF10, &qword_20C4640D0);
      v71 = type metadata accessor for ImageAsset;
      v72 = v213;
      return sub_20C45903C(v72, v71);
    }

    v93 = *v50;
    v94 = *(v50 + 72);
    v95 = *(v50 + 40);
    v238[2] = *(v50 + 56);
    v238[3] = v94;
    v96 = *(v50 + 8);
    v238[0] = *(v50 + 24);
    v238[1] = v95;
    v237 = v96;
    v97 = *v219;
    if (*(*v219 + 16))
    {
      v98 = sub_20C457E7C(&v237);
      if (v99)
      {
        sub_20C409B04(*(v97 + 56) + *(v215 + 72) * v98, v26, &qword_27C7BAF10, &qword_20C4640D0);
        v100 = v214;
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_20C40C57C(&v237);
          return sub_20C40B440(v26, &qword_27C7BAF10, &qword_20C4640D0);
        }

        v101 = v208;
        v102 = v192;
        v103 = v26;
        v104 = v209;
        (*(v208 + 32))(v192, v103, v209);
        if (sub_20C45FCA0())
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF78, &unk_20C462060);
          v105 = v211;
          *v211 = v93;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF60, &unk_20C462050);
          swift_storeEnumTagMultiPayload();
          sub_20C45FC80();
          swift_storeEnumTagMultiPayload();
          (*(v215 + 56))(v105, 0, 1, v100);
          sub_20C453554(v105, &v237);
          return (*(v101 + 8))(v102, v104);
        }

        (*(v101 + 8))(v102, v104);
      }
    }

    return sub_20C40C57C(&v237);
  }

  v63 = *(v50 + 3);
  v238[1] = *(v50 + 2);
  v238[2] = v63;
  v238[3] = *(v50 + 4);
  v64 = *(v50 + 1);
  v237 = *v50;
  v238[0] = v64;
  v65 = *(v50 + 10);
  v66 = *(v50 + 11);
  v67 = v211;
  v68 = v214;
  swift_storeEnumTagMultiPayload();
  (*(v215 + 56))(v67, 0, 1, v68);
  v69 = v67;
  v70 = v219;
  sub_20C453554(v69, &v237);
  *v47 = v65;
  *(v47 + 1) = v66;
  swift_storeEnumTagMultiPayload();
  ImageAssetFeature.reduce(localState:sharedState:sideEffects:action:)(a1, v70, v212, v47);
  v71 = type metadata accessor for ImageAssetAction;
  v72 = v47;
  return sub_20C45903C(v72, v71);
}

uint64_t sub_20C455F40(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, double a5, double a6)
{
  *(v6 + 760) = a4;
  *(v6 + 752) = a3;
  *(v6 + 744) = a6;
  *(v6 + 736) = a5;
  *(v6 + 728) = a2;
  *(v6 + 720) = a1;
  v7 = a4[3];
  *(v6 + 224) = a4[2];
  *(v6 + 240) = v7;
  *(v6 + 256) = a4[4];
  v8 = a4[1];
  *(v6 + 192) = *a4;
  *(v6 + 208) = v8;
  v9 = sub_20C4605B0();
  *(v6 + 768) = v9;
  *(v6 + 776) = *(v9 - 8);
  *(v6 + 784) = swift_task_alloc();
  *(v6 + 792) = type metadata accessor for ImageAssetAction(0);
  *(v6 + 800) = swift_task_alloc();
  *(v6 + 808) = type metadata accessor for ImageAsset(0);
  *(v6 + 816) = swift_task_alloc();
  *(v6 + 824) = swift_task_alloc();
  *(v6 + 832) = swift_task_alloc();
  *(v6 + 840) = swift_task_alloc();
  sub_20C4605E0();
  *(v6 + 848) = sub_20C4605D0();
  v11 = sub_20C4605A0();
  *(v6 + 856) = v11;
  *(v6 + 864) = v10;

  return MEMORY[0x2822009F8](sub_20C4560E8, v11, v10);
}

uint64_t sub_20C4560E8()
{
  v29 = v0;
  if (qword_28110B658 != -1)
  {
    swift_once();
  }

  v1 = v0[105];
  v2 = v0[91];
  v3 = sub_20C460000();
  v0[109] = __swift_project_value_buffer(v3, qword_28110E2C0);
  sub_20C458FD4(v2, v1, type metadata accessor for ImageAsset);
  v4 = sub_20C45FFE0();
  v5 = sub_20C460680();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[105];
  if (v6)
  {
    v8 = v0[104];
    v9 = v0[93];
    v10 = v0[92];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 141558530;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2080;
    sub_20C458FD4(v7, v8, type metadata accessor for ImageAsset);
    v13 = sub_20C4604E0();
    v15 = v14;
    sub_20C45903C(v7, type metadata accessor for ImageAsset);
    v16 = sub_20C43A260(v13, v15, &v28);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2082;
    v0[86] = v10;
    v0[87] = v9;
    type metadata accessor for CGSize();
    v17 = sub_20C4604E0();
    v19 = sub_20C43A260(v17, v18, &v28);

    *(v11 + 24) = v19;
    _os_log_impl(&dword_20C404000, v4, v5, "Fetching %{mask.hash}s (%{public}s)", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2FB570](v12, -1, -1);
    MEMORY[0x20F2FB570](v11, -1, -1);
  }

  else
  {

    sub_20C45903C(v7, type metadata accessor for ImageAsset);
  }

  v20 = v0[94];
  v21 = (v20 + *(type metadata accessor for ImageAssetFeature(0) + 20));
  v27 = (*v21 + **v21);
  v22 = swift_task_alloc();
  v0[110] = v22;
  *v22 = v0;
  v22[1] = sub_20C456438;
  v23.n128_u64[0] = v0[93];
  v24.n128_u64[0] = v0[92];
  v25 = v0[91];

  return v27(v25, v24, v23);
}

uint64_t sub_20C456438(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 888) = a1;
  *(v4 + 896) = v1;

  v5 = *(v3 + 864);
  v6 = *(v3 + 856);
  if (v1)
  {
    v7 = sub_20C457398;
  }

  else
  {
    v7 = sub_20C456580;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_20C456580()
{
  v76 = v0;
  v1 = *(v0 + 896);
  sub_20C460620();
  if (v1)
  {

    *(v0 + 912) = v1;
    *(v0 + 704) = v1;
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB508, &qword_20C463C78);
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 824);
      v4 = *(v0 + 728);

      sub_20C458FD4(v4, v3, type metadata accessor for ImageAsset);
      v5 = sub_20C45FFE0();
      v6 = sub_20C460660();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = *(v0 + 832);
        v8 = *(v0 + 824);
        v9 = *(v0 + 744);
        v10 = *(v0 + 736);
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v75[0] = v12;
        *v11 = 136315394;
        sub_20C458FD4(v8, v7, type metadata accessor for ImageAsset);
        v13 = sub_20C4604E0();
        v15 = v14;
        sub_20C45903C(v8, type metadata accessor for ImageAsset);
        v16 = sub_20C43A260(v13, v15, v75);

        *(v11 + 4) = v16;
        *(v11 + 12) = 2080;
        *(v0 + 672) = v10;
        *(v0 + 680) = v9;
        type metadata accessor for CGSize();
        v17 = sub_20C4604E0();
        v19 = sub_20C43A260(v17, v18, v75);

        *(v11 + 14) = v19;
        _os_log_impl(&dword_20C404000, v5, v6, "Fetching %s for %s cancelled", v11, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F2FB570](v12, -1, -1);
        MEMORY[0x20F2FB570](v11, -1, -1);
      }

      else
      {
        v52 = *(v0 + 824);

        sub_20C45903C(v52, type metadata accessor for ImageAsset);
      }

      (*(*(v0 + 776) + 8))(*(v0 + 784), *(v0 + 768));

      v53 = *(v0 + 8);

      return v53();
    }

    v37 = *(v0 + 816);
    v38 = *(v0 + 728);

    sub_20C458FD4(v38, v37, type metadata accessor for ImageAsset);
    v39 = v1;
    v40 = sub_20C45FFE0();
    v41 = sub_20C460660();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = *(v0 + 832);
      v43 = *(v0 + 816);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v75[0] = v74;
      *v44 = 136446466;
      sub_20C458FD4(v43, v42, type metadata accessor for ImageAsset);
      v46 = sub_20C4604E0();
      v48 = v47;
      sub_20C45903C(v43, type metadata accessor for ImageAsset);
      v49 = sub_20C43A260(v46, v48, v75);

      *(v44 + 4) = v49;
      *(v44 + 12) = 2114;
      v50 = v1;
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 14) = v51;
      *v45 = v51;
      _os_log_impl(&dword_20C404000, v40, v41, "Unable to fetch %{public}s: %{public}@", v44, 0x16u);
      sub_20C40B440(v45, &qword_27C7BB510, &unk_20C463C80);
      MEMORY[0x20F2FB570](v45, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x20F2FB570](v74, -1, -1);
      MEMORY[0x20F2FB570](v44, -1, -1);
    }

    else
    {
      v55 = *(v0 + 816);

      sub_20C45903C(v55, type metadata accessor for ImageAsset);
    }

    *(v0 + 712) = v1;
    v56 = v1;
    v57 = swift_dynamicCast();
    v58 = *(v0 + 800);
    v59 = *(v0 + 760);
    if (v57)
    {
      v60 = *(v0 + 103);
      v61 = *(v0 + 192);
      *(v0 + 127) = *(v0 + 208);
      v62 = *(v0 + 240);
      *(v0 + 143) = *(v0 + 224);
      *(v0 + 159) = v62;
      *(v0 + 175) = *(v0 + 256);
      *(v0 + 111) = v61;
      *v58 = v60;
      v63 = *(v0 + 104);
      *(v58 + 17) = *(v0 + 120);
      *(v58 + 1) = v63;
      v64 = *(v0 + 136);
      v65 = *(v0 + 152);
      v66 = *(v0 + 168);
      *(v58 + 80) = *(v0 + 183);
      *(v58 + 65) = v66;
      *(v58 + 49) = v65;
      *(v58 + 33) = v64;
      swift_storeEnumTagMultiPayload();
      sub_20C40C520(v59, v0 + 352);
      v34 = swift_task_alloc();
      *(v0 + 928) = v34;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE78, &unk_20C466EA0);
      *v34 = v0;
      v36 = sub_20C457240;
    }

    else
    {
      v67 = *(v0 + 192);
      *(v0 + 39) = *(v0 + 208);
      v68 = *(v0 + 240);
      *(v0 + 55) = *(v0 + 224);
      *(v0 + 71) = v68;
      *(v0 + 87) = *(v0 + 256);
      *(v0 + 23) = v67;
      *v58 = 0;
      v69 = *(v0 + 16);
      *(v58 + 17) = *(v0 + 32);
      *(v58 + 1) = v69;
      v70 = *(v0 + 48);
      v71 = *(v0 + 64);
      v72 = *(v0 + 80);
      *(v58 + 80) = *(v0 + 95);
      *(v58 + 65) = v72;
      *(v58 + 49) = v71;
      *(v58 + 33) = v70;
      swift_storeEnumTagMultiPayload();
      sub_20C40C520(v59, v0 + 272);
      v34 = swift_task_alloc();
      *(v0 + 920) = v34;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE78, &unk_20C466EA0);
      *v34 = v0;
      v36 = sub_20C457024;
    }
  }

  else
  {
    if (qword_28110B9E8 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 888);
    v21 = *(v0 + 800);
    v22 = *(v0 + 760);
    v23 = *(v0 + 728);
    v24 = qword_28110E2D8;
    *(v0 + 432) = *v22;
    v25 = v22[4];
    v27 = v22[1];
    v26 = v22[2];
    *(v0 + 480) = v22[3];
    *(v0 + 496) = v25;
    *(v0 + 448) = v27;
    *(v0 + 464) = v26;
    v28 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB030, &qword_20C464A30));
    sub_20C40C520(v22, v0 + 512);
    v29 = sub_20C45FE40();
    [v24 setObject:v20 forKey:v29];

    v30 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120) + 48));
    sub_20C458FD4(v23, v21, type metadata accessor for ImageAsset);
    *v30 = *v22;
    v31 = v22[4];
    v33 = v22[1];
    v32 = v22[2];
    v30[3] = v22[3];
    v30[4] = v31;
    v30[1] = v33;
    v30[2] = v32;
    swift_storeEnumTagMultiPayload();
    sub_20C40C520(v22, v0 + 592);
    v34 = swift_task_alloc();
    *(v0 + 904) = v34;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE78, &unk_20C466EA0);
    *v34 = v0;
    v36 = sub_20C456E0C;
  }

  v34[1] = v36;
  v73 = *(v0 + 800);

  return MEMORY[0x282159B08](v73, v35);
}

uint64_t sub_20C456E0C()
{
  v1 = *v0;
  v2 = *(*v0 + 800);

  sub_20C45903C(v2, type metadata accessor for ImageAssetAction);
  v3 = *(v1 + 864);
  v4 = *(v1 + 856);

  return MEMORY[0x2822009F8](sub_20C456F64, v4, v3);
}

uint64_t sub_20C456F64()
{
  v1 = *(v0 + 888);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20C457024()
{
  v1 = *v0;
  v2 = *(*v0 + 800);

  sub_20C45903C(v2, type metadata accessor for ImageAssetAction);
  v3 = *(v1 + 864);
  v4 = *(v1 + 856);

  return MEMORY[0x2822009F8](sub_20C45717C, v4, v3);
}

uint64_t sub_20C45717C()
{
  v1 = *(v0 + 912);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20C457240()
{
  v1 = *v0;
  v2 = *(*v0 + 800);

  sub_20C45903C(v2, type metadata accessor for ImageAssetAction);
  v3 = *(v1 + 864);
  v4 = *(v1 + 856);

  return MEMORY[0x2822009F8](sub_20C45717C, v4, v3);
}

uint64_t sub_20C457398()
{
  v62 = v0;
  v1 = *(v0 + 896);
  *(v0 + 912) = v1;
  *(v0 + 704) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB508, &qword_20C463C78);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 824);
    v4 = *(v0 + 728);

    sub_20C458FD4(v4, v3, type metadata accessor for ImageAsset);
    v5 = sub_20C45FFE0();
    v6 = sub_20C460660();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 832);
      v8 = *(v0 + 824);
      v9 = *(v0 + 744);
      v10 = *(v0 + 736);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v61 = v12;
      *v11 = 136315394;
      sub_20C458FD4(v8, v7, type metadata accessor for ImageAsset);
      v13 = sub_20C4604E0();
      v15 = v14;
      sub_20C45903C(v8, type metadata accessor for ImageAsset);
      v16 = sub_20C43A260(v13, v15, &v61);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2080;
      *(v0 + 672) = v10;
      *(v0 + 680) = v9;
      type metadata accessor for CGSize();
      v17 = sub_20C4604E0();
      v19 = sub_20C43A260(v17, v18, &v61);

      *(v11 + 14) = v19;
      _os_log_impl(&dword_20C404000, v5, v6, "Fetching %s for %s cancelled", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2FB570](v12, -1, -1);
      MEMORY[0x20F2FB570](v11, -1, -1);
    }

    else
    {
      v35 = *(v0 + 824);

      sub_20C45903C(v35, type metadata accessor for ImageAsset);
    }

    (*(*(v0 + 776) + 8))(*(v0 + 784), *(v0 + 768));

    v36 = *(v0 + 8);

    return v36();
  }

  else
  {
    v20 = *(v0 + 816);
    v21 = *(v0 + 728);

    sub_20C458FD4(v21, v20, type metadata accessor for ImageAsset);
    v22 = v1;
    v23 = sub_20C45FFE0();
    v24 = sub_20C460660();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 832);
      v26 = *(v0 + 816);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v61 = v60;
      *v27 = 136446466;
      sub_20C458FD4(v26, v25, type metadata accessor for ImageAsset);
      v29 = sub_20C4604E0();
      v31 = v30;
      sub_20C45903C(v26, type metadata accessor for ImageAsset);
      v32 = sub_20C43A260(v29, v31, &v61);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2114;
      v33 = v1;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v34;
      *v28 = v34;
      _os_log_impl(&dword_20C404000, v23, v24, "Unable to fetch %{public}s: %{public}@", v27, 0x16u);
      sub_20C40B440(v28, &qword_27C7BB510, &unk_20C463C80);
      MEMORY[0x20F2FB570](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v60);
      MEMORY[0x20F2FB570](v60, -1, -1);
      MEMORY[0x20F2FB570](v27, -1, -1);
    }

    else
    {
      v38 = *(v0 + 816);

      sub_20C45903C(v38, type metadata accessor for ImageAsset);
    }

    *(v0 + 712) = v1;
    v39 = v1;
    v40 = swift_dynamicCast();
    v41 = *(v0 + 800);
    v42 = *(v0 + 760);
    if (v40)
    {
      v43 = *(v0 + 103);
      v44 = *(v0 + 192);
      *(v0 + 127) = *(v0 + 208);
      v45 = *(v0 + 240);
      *(v0 + 143) = *(v0 + 224);
      *(v0 + 159) = v45;
      *(v0 + 175) = *(v0 + 256);
      *(v0 + 111) = v44;
      *v41 = v43;
      v46 = *(v0 + 104);
      *(v41 + 17) = *(v0 + 120);
      *(v41 + 1) = v46;
      v47 = *(v0 + 136);
      v48 = *(v0 + 152);
      v49 = *(v0 + 168);
      *(v41 + 80) = *(v0 + 183);
      *(v41 + 65) = v49;
      *(v41 + 49) = v48;
      *(v41 + 33) = v47;
      swift_storeEnumTagMultiPayload();
      sub_20C40C520(v42, v0 + 352);
      v50 = swift_task_alloc();
      *(v0 + 928) = v50;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE78, &unk_20C466EA0);
      *v50 = v0;
      v52 = sub_20C457240;
    }

    else
    {
      v53 = *(v0 + 192);
      *(v0 + 39) = *(v0 + 208);
      v54 = *(v0 + 240);
      *(v0 + 55) = *(v0 + 224);
      *(v0 + 71) = v54;
      *(v0 + 87) = *(v0 + 256);
      *(v0 + 23) = v53;
      *v41 = 0;
      v55 = *(v0 + 16);
      *(v41 + 17) = *(v0 + 32);
      *(v41 + 1) = v55;
      v56 = *(v0 + 48);
      v57 = *(v0 + 64);
      v58 = *(v0 + 80);
      *(v41 + 80) = *(v0 + 95);
      *(v41 + 65) = v58;
      *(v41 + 49) = v57;
      *(v41 + 33) = v56;
      swift_storeEnumTagMultiPayload();
      sub_20C40C520(v42, v0 + 272);
      v50 = swift_task_alloc();
      *(v0 + 920) = v50;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE78, &unk_20C466EA0);
      *v50 = v0;
      v52 = sub_20C457024;
    }

    v50[1] = v52;
    v59 = *(v0 + 800);

    return MEMORY[0x282159B08](v59, v51);
  }
}

uint64_t sub_20C457A90(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = a5;
  *(v5 + 104) = a2;
  *(v5 + 112) = a3;
  *(v5 + 96) = a1;
  *(v5 + 136) = type metadata accessor for ImageAssetAction(0);
  *(v5 + 144) = swift_task_alloc();
  sub_20C4605E0();
  *(v5 + 152) = sub_20C4605D0();
  v7 = sub_20C4605A0();
  *(v5 + 160) = v7;
  *(v5 + 168) = v6;

  return MEMORY[0x2822009F8](sub_20C457B60, v7, v6);
}

uint64_t sub_20C457B60()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
  v7 = (v1 + *(v6 + 48));
  v8 = (v1 + *(v6 + 64));
  sub_20C458FD4(v5, v1, type metadata accessor for ImageAsset);
  *v7 = *v4;
  v9 = v4[4];
  v11 = v4[1];
  v10 = v4[2];
  v7[3] = v4[3];
  v7[4] = v9;
  v7[1] = v11;
  v7[2] = v10;
  *v8 = v3;
  v8[1] = v2;
  swift_storeEnumTagMultiPayload();
  sub_20C40C520(v4, (v0 + 2));
  v12 = swift_task_alloc();
  v0[22] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE78, &unk_20C466EA0);
  *v12 = v0;
  v12[1] = sub_20C457CB4;
  v14 = v0[18];

  return MEMORY[0x282159B08](v14, v13);
}

uint64_t sub_20C457CB4()
{
  v1 = *v0;
  v2 = *(*v0 + 144);

  sub_20C45903C(v2, type metadata accessor for ImageAssetAction);
  v3 = *(v1 + 168);
  v4 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_20C4362C8, v4, v3);
}

uint64_t sub_20C457E10(uint64_t a1, uint64_t *a2)
{
  sub_20C43A808(sub_20C45B034, &v5, *a2);
  sub_20C453718(v3, a2);
}

uint64_t sub_20C457E7C(__int128 *a1)
{
  v2 = a1[3];
  v9 = a1[2];
  v10 = v2;
  v11 = a1[4];
  v3 = a1[1];
  v7 = *a1;
  v8 = v3;
  sub_20C460930();
  ImageAssetCacheKey.hash(into:)(v6);
  v4 = sub_20C460970();

  return sub_20C457F6C(a1, v4);
}

unint64_t sub_20C457F00(uint64_t a1)
{
  sub_20C460930();
  ImageAsset.hash(into:)(v4);
  v2 = sub_20C460970();

  return sub_20C458198(a1, v2);
}

uint64_t sub_20C457F6C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v32 = v2 + 64;
  if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
  {
    return v4;
  }

  v31 = ~v3;
  v5 = *a1;
  v29 = *(a1 + 16);
  v30 = *(a1 + 8);
  v25 = *(a1 + 40);
  v26 = *(a1 + 32);
  v22 = *(a1 + 64);
  v23 = *(a1 + 56);
  v24 = *(a1 + 48);
  v28 = *(a1 + 24);
  v21 = *(a1 + 72);
  v6 = *(v2 + 48);
  while (1)
  {
    v7 = v6 + 80 * v4;
    if (*v7 != v5)
    {
      goto LABEL_3;
    }

    result = *(v7 + 8);
    v9 = *(v7 + 24);
    v10 = *(v7 + 32);
    v11 = *(v7 + 40);
    v12 = *(v7 + 48);
    v14 = *(v7 + 56);
    v13 = *(v7 + 64);
    v27 = *(v7 + 72);
    if (result != v30 || *(v7 + 16) != v29)
    {
      result = sub_20C4608D0();
      if ((result & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v16 = *(v9 + 16);
    if (v16 != *(v28 + 16))
    {
      goto LABEL_3;
    }

    if (v16 && v9 != v28)
    {
      break;
    }

LABEL_16:
    if (v10 == v26 && v11 == v25 || (sub_20C4608D0()) && (v12 == v24 && v14 == v23 || (sub_20C4608D0()) && v13 == v22 && v27 == v21)
    {
      return v4;
    }

LABEL_3:
    v4 = (v4 + 1) & v31;
    if (((*(v32 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
    {
      return v4;
    }
  }

  v18 = (v9 + 40);
  v19 = (v28 + 40);
  while (v16)
  {
    result = *(v18 - 1);
    if (result != *(v19 - 1) || *v18 != *v19)
    {
      result = sub_20C4608D0();
      if ((result & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v18 += 2;
    v19 += 2;
    if (!--v16)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_20C458198(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ImageAsset(0) - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_20C458FD4(*(v2 + 48) + v12 * v10, v8, type metadata accessor for ImageAsset);
      v13 = _s12FitnessAsset05ImageB0V2eeoiySbAC_ACtFZ_0(v8, a1);
      sub_20C45903C(v8, type metadata accessor for ImageAsset);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_20C4582F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v57 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v63 = &v52 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB8B0, &qword_20C464C10);
  v58 = v4;
  v8 = sub_20C4607C0();
  v9 = v8;
  if (*(v7 + 16))
  {
    v52 = v2;
    v10 = 0;
    v11 = *(v7 + 64);
    v54 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & v11;
    v53 = (v12 + 63) >> 6;
    v15 = v8 + 64;
    v55 = v7;
    v56 = v8;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v21 = (v14 - 1) & v14;
LABEL_15:
      v25 = v20 | (v10 << 6);
      v62 = v21;
      if (v58)
      {
        v26 = *(v7 + 56);
        v27 = *(v7 + 48) + 80 * v25;
        v28 = *v27;
        v29 = *(v27 + 8);
        v64 = *(v27 + 16);
        v30 = *(v27 + 32);
        v31 = *(v27 + 40);
        v32 = *(v27 + 48);
        v33 = *(v27 + 56);
        v34 = *(v27 + 64);
        v35 = *(v27 + 72);
        v61 = *(v57 + 72);
        sub_20C409BD0(v26 + v61 * v25, v63, &qword_27C7BAF10, &qword_20C4640D0);
      }

      else
      {
        v36 = (*(v7 + 48) + 80 * v25);
        v38 = v36[1];
        v37 = v36[2];
        v39 = v36[4];
        v69 = v36[3];
        v70 = v39;
        v66 = *v36;
        v67 = v38;
        v68 = v37;
        v40 = *(v7 + 56);
        v61 = *(v57 + 72);
        sub_20C409B04(v40 + v61 * v25, v63, &qword_27C7BAF10, &qword_20C4640D0);
        v35 = *(&v70 + 1);
        v34 = v70;
        v33 = *(&v69 + 1);
        v32 = v69;
        v31 = *(&v68 + 1);
        v30 = v68;
        v29 = *(&v66 + 1);
        v64 = v67;
        v28 = v66;
        sub_20C40C520(&v66, v65);
      }

      *&v66 = v28;
      *(&v66 + 1) = v29;
      v67 = v64;
      v59 = v30;
      *&v68 = v30;
      *(&v68 + 1) = v31;
      v41 = v31;
      v42 = v32;
      *&v69 = v32;
      *(&v69 + 1) = v33;
      v60 = v33;
      *&v70 = v34;
      *(&v70 + 1) = v35;
      v43 = v35;
      v9 = v56;
      sub_20C460930();
      ImageAssetCacheKey.hash(into:)(v65);
      result = sub_20C460970();
      v44 = -1 << *(v9 + 32);
      v45 = result & ~v44;
      v46 = v45 >> 6;
      if (((-1 << v45) & ~*(v15 + 8 * (v45 >> 6))) == 0)
      {
        v47 = 0;
        v48 = (63 - v44) >> 6;
        v17 = v64;
        while (++v46 != v48 || (v47 & 1) == 0)
        {
          v49 = v46 == v48;
          if (v46 == v48)
          {
            v46 = 0;
          }

          v47 |= v49;
          v50 = *(v15 + 8 * v46);
          if (v50 != -1)
          {
            v16 = __clz(__rbit64(~v50)) + (v46 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v45) & ~*(v15 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
      v17 = v64;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = *(v9 + 48) + 80 * v16;
      *v18 = v28;
      *(v18 + 8) = v29;
      *(v18 + 16) = v17;
      *(v18 + 32) = v59;
      *(v18 + 40) = v41;
      v19 = v60;
      *(v18 + 48) = v42;
      *(v18 + 56) = v19;
      *(v18 + 64) = v34;
      *(v18 + 72) = v43;
      sub_20C409BD0(v63, *(v9 + 56) + v61 * v16, &qword_27C7BAF10, &qword_20C4640D0);
      ++*(v9 + 16);
      v7 = v55;
      v14 = v62;
    }

    v22 = v10;
    result = v54;
    while (1)
    {
      v10 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v53)
      {
        break;
      }

      v24 = v54[v10];
      ++v22;
      if (v24)
      {
        v20 = __clz(__rbit64(v24));
        v21 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v58 & 1) == 0)
    {

      v3 = v52;
      goto LABEL_34;
    }

    v51 = 1 << *(v7 + 32);
    v3 = v52;
    if (v51 >= 64)
    {
      bzero(v54, ((v51 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v54 = -1 << v51;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_20C4587FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_20C45FC30();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v59 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = &v52 - v9;
  v60 = sub_20C45FD00();
  v10 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  MEMORY[0x28223BE20](v12 - 8);
  v67 = &v52 - v13;
  v14 = type metadata accessor for ImageAsset(0);
  v65 = *(v14 - 8);
  v66 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE88, &qword_20C466EB8);
  v69 = v4;
  result = sub_20C4607C0();
  v19 = result;
  if (*(v17 + 16))
  {
    v64 = v5;
    v53 = v2;
    v20 = 0;
    v21 = v6;
    v22 = (v17 + 64);
    v23 = 1 << *(v17 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(v17 + 64);
    v26 = (v23 + 63) >> 6;
    v62 = (v10 + 48);
    v57 = (v10 + 32);
    v56 = (v10 + 8);
    v61 = (v21 + 48);
    v55 = (v21 + 32);
    v54 = (v21 + 8);
    v27 = result + 64;
    v28 = v60;
    v63 = v17;
    while (v25)
    {
      v30 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_15:
      v33 = v30 | (v20 << 6);
      v34 = *(v17 + 48);
      v71 = *(v65 + 72);
      v35 = v34 + v71 * v33;
      if (v69)
      {
        sub_20C45A6B4(v35, v16, type metadata accessor for ImageAsset);
        v70 = *(*(v17 + 56) + 8 * v33);
      }

      else
      {
        sub_20C458FD4(v35, v16, type metadata accessor for ImageAsset);
        v70 = *(*(v17 + 56) + 8 * v33);
      }

      sub_20C460930();
      v36 = v67;
      sub_20C409B04(v16, v67, &qword_27C7BAC10, &qword_20C462070);
      if ((*v62)(v36, 1, v28) == 1)
      {
        sub_20C460950();
      }

      else
      {
        v37 = v58;
        (*v57)(v58, v36, v28);
        sub_20C460950();
        sub_20C45A8F0(&qword_28110B4D8, MEMORY[0x277D09D68], MEMORY[0x277D09D78]);
        sub_20C460460();
        (*v56)(v37, v28);
      }

      v38 = v66;
      sub_20C4604F0();
      sub_20C4604F0();

      v39 = &v16[*(v38 + 28)];
      v40 = v68;
      sub_20C409B04(v39, v68, &qword_27C7BAC18, &unk_20C464A00);
      v41 = v64;
      if ((*v61)(v40, 1, v64) == 1)
      {
        sub_20C460950();
      }

      else
      {
        v42 = v59;
        (*v55)(v59, v40, v41);
        sub_20C460950();
        sub_20C45A8F0(&qword_28110BEB0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
        sub_20C460460();
        v43 = v42;
        v28 = v60;
        (*v54)(v43, v41);
      }

      v17 = v63;
      result = sub_20C460970();
      v44 = -1 << *(v19 + 32);
      v45 = result & ~v44;
      v46 = v45 >> 6;
      if (((-1 << v45) & ~*(v27 + 8 * (v45 >> 6))) == 0)
      {
        v47 = 0;
        v48 = (63 - v44) >> 6;
        while (++v46 != v48 || (v47 & 1) == 0)
        {
          v49 = v46 == v48;
          if (v46 == v48)
          {
            v46 = 0;
          }

          v47 |= v49;
          v50 = *(v27 + 8 * v46);
          if (v50 != -1)
          {
            v29 = __clz(__rbit64(~v50)) + (v46 << 6);
            goto LABEL_7;
          }
        }

LABEL_42:
        __break(1u);
        return result;
      }

      v29 = __clz(__rbit64((-1 << v45) & ~*(v27 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v27 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      result = sub_20C45A6B4(v16, *(v19 + 48) + v71 * v29, type metadata accessor for ImageAsset);
      *(*(v19 + 56) + 8 * v29) = v70;
      ++*(v19 + 16);
    }

    v31 = v20;
    while (1)
    {
      v20 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v20 >= v26)
      {
        break;
      }

      v32 = v22[v20];
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v25 = (v32 - 1) & v32;
        goto LABEL_15;
      }
    }

    if ((v69 & 1) == 0)
    {

      v3 = v53;
      goto LABEL_40;
    }

    v51 = 1 << *(v17 + 32);
    v3 = v53;
    if (v51 >= 64)
    {
      bzero(v22, ((v51 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v22 = -1 << v51;
    }

    *(v17 + 16) = 0;
  }

LABEL_40:
  *v3 = v19;
  return result;
}

uint64_t sub_20C458FD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C45903C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C45909C(uint64_t a1)
{
  v4 = *(type metadata accessor for ImageAsset(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + ((v6 + 87) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_20C413D30;

  return sub_20C457A90(a1, v1 + v5, v1 + v6, v8, v9);
}

uint64_t sub_20C4591C0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_20C457E7C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_20C45A1C0();
      v9 = v21;
    }

    v10 = (*(v9 + 48) + 80 * v7);
    v20[0] = *v10;
    v11 = v10[3];
    v12 = v10[4];
    v13 = v10[2];
    v20[1] = v10[1];
    v20[2] = v13;
    v20[3] = v11;
    v20[4] = v12;
    sub_20C40C57C(v20);
    v14 = *(v9 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
    v16 = *(v15 - 8);
    sub_20C409BD0(v14 + *(v16 + 72) * v7, a2, &qword_27C7BAF10, &qword_20C4640D0);
    sub_20C459390(v7, v9);
    *v3 = v9;
    return (*(v16 + 56))(a2, 0, 1, v15);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
    v19 = *(*(v18 - 8) + 56);

    return v19(a2, 1, 1, v18);
  }
}

unint64_t sub_20C459390(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v30 = v4;
    v8 = (sub_20C460700() + 1) & ~v5;
    while (1)
    {
      v9 = (*(a2 + 48) + 80 * v6);
      v32 = *v9;
      v10 = v9[4];
      v12 = v9[1];
      v11 = v9[2];
      v35 = v9[3];
      v36 = v10;
      v33 = v12;
      v34 = v11;
      sub_20C460930();
      v13 = *&v32;
      if (*&v32 == 0.0)
      {
        v13 = 0.0;
      }

      v14 = *(&v33 + 1);
      MEMORY[0x20F2FAEC0](*&v13);
      sub_20C40C520(&v32, v31);
      sub_20C4604F0();
      MEMORY[0x20F2FAEA0](*(v14 + 16));
      v15 = *(v14 + 16);
      if (v15)
      {
        v16 = v14 + 40;
        do
        {

          sub_20C4604F0();

          v16 += 16;
          --v15;
        }

        while (v15);
      }

      v17 = v36;
      sub_20C4604F0();
      sub_20C4604F0();
      MEMORY[0x20F2FAEA0](v17);
      MEMORY[0x20F2FAEA0](*(&v17 + 1));
      v18 = sub_20C460970();
      result = sub_20C40C57C(&v32);
      v19 = v18 & v7;
      if (v3 >= v8)
      {
        break;
      }

      v20 = v30;
      if (v19 < v8)
      {
        goto LABEL_15;
      }

LABEL_16:
      v21 = *(a2 + 48);
      v22 = (v21 + 80 * v3);
      v23 = (v21 + 80 * v6);
      if (v3 != v6 || v22 >= v23 + 80)
      {
        memmove(v22, v23, 0x50uLL);
      }

      v24 = *(a2 + 56);
      v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0) - 8) + 72);
      v26 = v25 * v3;
      result = v24 + v25 * v3;
      if (v25 * v3 < (v25 * v6) || result >= v24 + v25 * v6 + v25)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v26 == v25 * v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v20 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        *(v20 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
        goto LABEL_25;
      }
    }

    v20 = v30;
    if (v19 < v8)
    {
      goto LABEL_5;
    }

LABEL_15:
    if (v3 < v19)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
LABEL_25:
  v27 = *(a2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v29;
    ++*(a2 + 36);
  }

  return result;
}

void sub_20C45968C(int64_t a1, uint64_t a2)
{
  v4 = sub_20C45FC30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
  MEMORY[0x28223BE20](v7 - 8);
  v55 = &v41 - v8;
  v48 = sub_20C45FD00();
  v9 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  MEMORY[0x28223BE20](v11 - 8);
  v54 = &v41 - v12;
  v13 = type metadata accessor for ImageAsset(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2 + 64;
  v18 = -1 << *(a2 + 32);
  v19 = (a1 + 1) & ~v18;
  if ((*(a2 + 64 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v53 = v4;
    v20 = ~v18;
    v21 = sub_20C460700();
    v56 = v20;
    v51 = (v21 + 1) & v20;
    v22 = *(v14 + 72);
    v50 = (v9 + 48);
    v45 = (v9 + 32);
    v44 = (v9 + 8);
    v23 = v22;
    v49 = (v5 + 48);
    v43 = (v5 + 32);
    v42 = (v5 + 8);
    v24 = v48;
    v52 = a2 + 64;
    do
    {
      v25 = v23;
      v26 = v23 * v19;
      sub_20C458FD4(*(a2 + 48) + v23 * v19, v16, type metadata accessor for ImageAsset);
      sub_20C460930();
      v27 = v54;
      sub_20C409B04(v16, v54, &qword_27C7BAC10, &qword_20C462070);
      if ((*v50)(v27, 1, v24) == 1)
      {
        sub_20C460950();
      }

      else
      {
        v28 = v46;
        (*v45)(v46, v27, v24);
        sub_20C460950();
        sub_20C45A8F0(&qword_28110B4D8, MEMORY[0x277D09D68], MEMORY[0x277D09D78]);
        sub_20C460460();
        (*v44)(v28, v24);
      }

      sub_20C4604F0();
      sub_20C4604F0();

      v29 = v55;
      sub_20C409B04(&v16[*(v13 + 28)], v55, &qword_27C7BAC18, &unk_20C464A00);
      v30 = v53;
      if ((*v49)(v29, 1, v53) == 1)
      {
        sub_20C460950();
      }

      else
      {
        v31 = v47;
        (*v43)(v47, v29, v30);
        sub_20C460950();
        sub_20C45A8F0(&qword_28110BEB0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
        sub_20C460460();
        v32 = v31;
        v24 = v48;
        (*v42)(v32, v30);
      }

      v17 = v52;
      v33 = sub_20C460970();
      sub_20C45903C(v16, type metadata accessor for ImageAsset);
      v34 = v33 & v56;
      if (a1 >= v51)
      {
        v23 = v25;
        if (v34 < v51)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v23 = v25;
        if (v34 >= v51)
        {
          goto LABEL_16;
        }
      }

      if (a1 >= v34)
      {
LABEL_16:
        if (v23 * a1 < v26 || *(a2 + 48) + v23 * a1 >= (*(a2 + 48) + v26 + v23))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v23 * a1 != v26)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v35 = *(a2 + 56);
        v36 = (v35 + 8 * a1);
        v37 = (v35 + 8 * v19);
        if (a1 != v19 || v36 >= v37 + 1)
        {
          *v36 = *v37;
          a1 = v19;
        }
      }

LABEL_4:
      v19 = (v19 + 1) & v56;
    }

    while (((*(v17 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
  }

  *(v17 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v38 = *(a2 + 16);
  v39 = __OFSUB__(v38, 1);
  v40 = v38 - 1;
  if (v39)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v40;
    ++*(a2 + 36);
  }
}

uint64_t sub_20C459D30(uint64_t a1, __int128 *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_20C457E7C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_20C45A1C0();
      goto LABEL_7;
    }

    sub_20C4582F8(v13, a3 & 1);
    v20 = sub_20C457E7C(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_20C45A038(v10, a2, a1, v16);
      return sub_20C40C520(a2, &v22);
    }

LABEL_15:
    result = sub_20C4608E0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = v16[7];
  v18 = v17 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0) - 8) + 72) * v10;

  return sub_20C45AF70(a1, v18);
}

uint64_t sub_20C459E94(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ImageAsset(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_20C457F00(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_20C45A474();
      goto LABEL_7;
    }

    sub_20C4587FC(v16, a3 & 1);
    v21 = sub_20C457F00(a2);
    if ((v17 & 1) == (v22 & 1))
    {
      v13 = v21;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_20C458FD4(a2, v10, type metadata accessor for ImageAsset);
      return sub_20C45A10C(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_20C4608E0();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v19[7] + 8 * v13) = a1;
}

uint64_t sub_20C45A038(unint64_t a1, _OWORD *a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a4[6] + 80 * a1);
  v8 = a2[3];
  v7[2] = a2[2];
  v7[3] = v8;
  v7[4] = a2[4];
  v9 = a2[1];
  *v7 = *a2;
  v7[1] = v9;
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  result = sub_20C409BD0(a3, v10 + *(*(v11 - 8) + 72) * a1, &qword_27C7BAF10, &qword_20C4640D0);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_20C45A10C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ImageAsset(0);
  result = sub_20C45A6B4(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for ImageAsset);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_20C45A1C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v35 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = &v33 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB8B0, &qword_20C464C10);
  v4 = *v0;
  v5 = sub_20C4607B0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v33 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v36 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    v14 = *(v4 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 80 * v20;
        v22 = (*(v4 + 48) + 80 * v20);
        v24 = v22[1];
        v23 = v22[2];
        v25 = v22[4];
        v41 = v22[3];
        v42 = v25;
        v38 = *v22;
        v39 = v24;
        v40 = v23;
        v26 = *(v35 + 72) * v20;
        v27 = v34;
        sub_20C409B04(*(v4 + 56) + v26, v34, &qword_27C7BAF10, &qword_20C4640D0);
        v28 = v36;
        v29 = (*(v36 + 48) + v21);
        v30 = v39;
        v31 = v40;
        v32 = v42;
        v29[3] = v41;
        v29[4] = v32;
        v29[1] = v30;
        v29[2] = v31;
        *v29 = v38;
        sub_20C409BD0(v27, *(v28 + 56) + v26, &qword_27C7BAF10, &qword_20C4640D0);
        result = sub_20C40C520(&v38, v37);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v33;
        v6 = v36;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_20C45A474()
{
  v1 = v0;
  v2 = type metadata accessor for ImageAsset(0);
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE88, &qword_20C466EB8);
  v5 = *v0;
  v6 = sub_20C4607B0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(v24 + 72) * v20;
        sub_20C458FD4(*(v5 + 48) + v21, v4, type metadata accessor for ImageAsset);
        v22 = *(*(v5 + 56) + 8 * v20);
        sub_20C45A6B4(v4, *(v7 + 48) + v21, type metadata accessor for ImageAsset);
        *(*(v7 + 56) + 8 * v20) = v22;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_20C45A6B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C45A71C(uint64_t a1)
{
  v4 = *(type metadata accessor for ImageAsset(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(type metadata accessor for ImageAssetFeature(0) - 8);
  v8 = (v6 + *(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_20C414268;

  return sub_20C455F40(a1, v1 + v5, v1 + v8, (v1 + v9), v10, v11);
}

uint64_t sub_20C45A8F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20C45A9F4(uint64_t a1)
{
  result = sub_20C45FCC0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20C45AAB0(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v3 = type metadata accessor for ImageAsset(0);
  MEMORY[0x28223BE20](v3 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20C45FCC0();
  v5 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ImageAssetFeature.TaskIdentifier(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE70, &unk_20C466E90);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v30 - v15;
  v18 = &v30 + *(v17 + 56) - v15;
  sub_20C458FD4(a1, &v30 - v15, type metadata accessor for ImageAssetFeature.TaskIdentifier);
  sub_20C458FD4(v33, v18, type metadata accessor for ImageAssetFeature.TaskIdentifier);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20C458FD4(v16, v13, type metadata accessor for ImageAssetFeature.TaskIdentifier);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v27 = v32;
      (*(v5 + 32))(v7, v18, v32);
      v26 = sub_20C45FCA0();
      v28 = *(v5 + 8);
      v28(v7, v27);
      v28(v13, v27);
      goto LABEL_11;
    }

    (*(v5 + 8))(v13, v32);
    goto LABEL_8;
  }

  sub_20C458FD4(v16, v10, type metadata accessor for ImageAssetFeature.TaskIdentifier);
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120) + 48);
  v20 = *&v10[v19 + 64];
  v44 = *&v10[v19 + 48];
  v45 = v20;
  v21 = *&v10[v19 + 32];
  v42 = *&v10[v19 + 16];
  v43 = v21;
  v41 = *&v10[v19];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20C40C57C(&v41);
    sub_20C45903C(v10, type metadata accessor for ImageAsset);
LABEL_8:
    sub_20C40B440(v16, &qword_27C7BBE70, &unk_20C466E90);
    goto LABEL_9;
  }

  v22 = *&v18[v19 + 48];
  v38 = *&v18[v19 + 32];
  v39 = v22;
  v40 = *&v18[v19 + 64];
  v23 = *&v18[v19 + 16];
  v36 = *&v18[v19];
  v37 = v23;
  v24 = v31;
  sub_20C45A6B4(v18, v31, type metadata accessor for ImageAsset);
  v25 = static ImageAsset.== infix(_:_:)(v10, v24);
  sub_20C45903C(v10, type metadata accessor for ImageAsset);
  if (v25)
  {
    v35[2] = v43;
    v35[3] = v44;
    v35[4] = v45;
    v35[0] = v41;
    v35[1] = v42;
    v34[2] = v38;
    v34[3] = v39;
    v34[4] = v40;
    v34[0] = v36;
    v34[1] = v37;
    v26 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(v35, v34);
    sub_20C45903C(v24, type metadata accessor for ImageAsset);
    sub_20C40C57C(&v36);
    sub_20C40C57C(&v41);
LABEL_11:
    sub_20C45903C(v16, type metadata accessor for ImageAssetFeature.TaskIdentifier);
    return v26 & 1;
  }

  sub_20C45903C(v24, type metadata accessor for ImageAsset);
  sub_20C40C57C(&v41);
  sub_20C40C57C(&v36);
  sub_20C45903C(v16, type metadata accessor for ImageAssetFeature.TaskIdentifier);
LABEL_9:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_20C45AF70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C45AFE0()
{
  result = qword_28110B850;
  if (!qword_28110B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B850);
  }

  return result;
}

uint64_t static Monogram.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_20C4608D0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Monogram(0) + 20);

  return MEMORY[0x28211C778](a1 + v5, a2 + v5);
}

uint64_t sub_20C45B0B4()
{
  if (*v0)
  {
    return 0x706D6F43656D616ELL;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_20C45B100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_20C4608D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x706D6F43656D616ELL && a2 == 0xEE0073746E656E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C4608D0();

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

uint64_t sub_20C45B1EC(uint64_t a1)
{
  v2 = sub_20C45B41C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C45B228(uint64_t a1)
{
  v2 = sub_20C45B41C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Monogram.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBE90, &qword_20C466EC0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C45B41C();
  sub_20C4609C0();
  v8[15] = 0;
  sub_20C460890();
  if (!v1)
  {
    type metadata accessor for Monogram(0);
    v8[14] = 1;
    sub_20C45FC10();
    sub_20C45BBE0(&qword_27C7BBEA0, MEMORY[0x277CC8E50], MEMORY[0x277CC8E58]);
    sub_20C4608B0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_20C45B41C()
{
  result = qword_27C7BBE98;
  if (!qword_27C7BBE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBE98);
  }

  return result;
}

uint64_t Monogram.hash(into:)(uint64_t a1)
{
  sub_20C4604F0();
  type metadata accessor for Monogram(0);
  sub_20C45FC10();
  sub_20C45BBE0(&qword_27C7BBEA8, MEMORY[0x277CC8E50], MEMORY[0x277CC8E60]);
  return sub_20C460460();
}

uint64_t Monogram.hashValue.getter()
{
  sub_20C460930();
  sub_20C4604F0();
  type metadata accessor for Monogram(0);
  sub_20C45FC10();
  sub_20C45BBE0(&qword_27C7BBEA8, MEMORY[0x277CC8E50], MEMORY[0x277CC8E60]);
  sub_20C460460();
  return sub_20C460970();
}

uint64_t Monogram.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = sub_20C45FC10();
  v16 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBEB0, &qword_20C466EC8);
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Monogram(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C45B41C();
  sub_20C4609B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v8;
  v12 = v18;
  v11 = v19;
  v22 = 0;
  *v10 = sub_20C460820();
  v10[1] = v13;
  v21 = 1;
  sub_20C45BBE0(&qword_27C7BBEB8, MEMORY[0x277CC8E50], MEMORY[0x277CC8E70]);
  sub_20C460840();
  (*(v12 + 8))(v7, v20);
  (*(v16 + 32))(v10 + *(v15 + 20), v5, v11);
  sub_20C45BAD8(v10, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_20C45BB3C(v10);
}

uint64_t sub_20C45B900()
{
  sub_20C460930();
  sub_20C4604F0();
  sub_20C45FC10();
  sub_20C45BBE0(&qword_27C7BBEA8, MEMORY[0x277CC8E50], MEMORY[0x277CC8E60]);
  sub_20C460460();
  return sub_20C460970();
}

uint64_t sub_20C45B9A8(uint64_t a1)
{
  sub_20C4604F0();
  sub_20C45FC10();
  sub_20C45BBE0(&qword_27C7BBEA8, MEMORY[0x277CC8E50], MEMORY[0x277CC8E60]);
  return sub_20C460460();
}

uint64_t sub_20C45BA34(uint64_t a1)
{
  sub_20C460930();
  sub_20C4604F0();
  sub_20C45FC10();
  sub_20C45BBE0(&qword_27C7BBEA8, MEMORY[0x277CC8E50], MEMORY[0x277CC8E60]);
  sub_20C460460();
  return sub_20C460970();
}

uint64_t sub_20C45BAD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Monogram(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C45BB3C(uint64_t a1)
{
  v2 = type metadata accessor for Monogram(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C45BBE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20C45BC28(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_20C4608D0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);

  return MEMORY[0x28211C778](a1 + v7, a2 + v7);
}

unint64_t sub_20C45BCE8()
{
  result = qword_27C7BBEC0;
  if (!qword_27C7BBEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBEC0);
  }

  return result;
}

unint64_t sub_20C45BD40()
{
  result = qword_27C7BBEC8;
  if (!qword_27C7BBEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBEC8);
  }

  return result;
}

unint64_t sub_20C45BD98()
{
  result = qword_27C7BBED0;
  if (!qword_27C7BBED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBED0);
  }

  return result;
}

uint64_t DynamicArtworkLayoutEnvironment.init(dynamicTypeSize:horizontalSizeClass:platform:verticalSizeClass:viewWidth:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  *a5 = a1;
  a5[1] = sub_20C45FCE0();
  v10 = type metadata accessor for DynamicArtworkLayoutEnvironment(0);
  v11 = v10[6];
  v12 = sub_20C45FDF0();
  v15 = *(*(v12 - 8) + 32);
  (v15)((v12 - 8), &a5[v11], a2, v12);
  a5[v10[7]] = a3;
  v13 = &a5[v10[8]];

  return v15(v13, a4, v12);
}

uint64_t DynamicArtworkLayoutEnvironment.horizontalSizeClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DynamicArtworkLayoutEnvironment(0) + 24);
  v4 = sub_20C45FDF0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DynamicArtworkLayoutEnvironment.verticalSizeClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DynamicArtworkLayoutEnvironment(0) + 32);
  v4 = sub_20C45FDF0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_20C45C000(uint64_t a1)
{
  v2 = sub_20C45CBB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C45C03C(uint64_t a1)
{
  v2 = sub_20C45CBB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicArtworkLayoutEnvironment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBED8, &qword_20C4670B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C45CBB0();
  sub_20C4609C0();
  v19 = *v3;
  v18 = 0;
  sub_20C45CC04();
  sub_20C4608B0();
  if (!v2)
  {
    v17 = v3[1];
    v16 = 1;
    sub_20C45CC58();
    sub_20C4608B0();
    v9 = type metadata accessor for DynamicArtworkLayoutEnvironment(0);
    v15 = 2;
    sub_20C45FDF0();
    sub_20C45CF9C(&qword_27C7BBEF8, MEMORY[0x277D09E30], MEMORY[0x277D09E38]);
    sub_20C4608B0();
    v14 = v3[*(v9 + 28)];
    v13 = 3;
    sub_20C442E20();
    sub_20C4608B0();
    v12 = 4;
    sub_20C4608B0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DynamicArtworkLayoutEnvironment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v31 = sub_20C45FDF0();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v24 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBF00, &qword_20C4670B8);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v9 = v24 - v8;
  v10 = type metadata accessor for DynamicArtworkLayoutEnvironment(0);
  MEMORY[0x28223BE20](v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C45CBB0();
  v32 = v9;
  v13 = v34;
  sub_20C4609B0();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v7;
  v34 = v10;
  v27 = v4;
  v15 = v30;
  v16 = v31;
  v41 = 0;
  sub_20C45CCAC();
  sub_20C460840();
  *v12 = v42;
  v39 = 1;
  sub_20C45CD00();
  sub_20C460840();
  v26 = v12;
  v12[1] = v40;
  v38 = 2;
  sub_20C45CF9C(&qword_27C7BBF18, MEMORY[0x277D09E30], MEMORY[0x277D09E50]);
  sub_20C460840();
  v17 = v29 + 32;
  v18 = &v26[*(v34 + 24)];
  v25 = *(v29 + 32);
  v25(v18, v14, v16);
  v36 = 3;
  sub_20C443118();
  sub_20C460840();
  v19 = v16;
  v24[1] = v17;
  v20 = v34;
  v21 = v27;
  v26[*(v34 + 28)] = v37;
  v35 = 4;
  sub_20C460840();
  (*(v15 + 8))(v32, v33);
  v22 = v26;
  v25(&v26[*(v20 + 32)], v21, v19);
  sub_20C45CD54(v22, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_20C45CDB8(v22);
}

uint64_t DynamicArtworkLayoutEnvironment.hash(into:)(uint64_t a1)
{
  sub_20C45FD20();
  sub_20C45FCD0();
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x20F2FAEC0](*&v1);
  type metadata accessor for DynamicArtworkLayoutEnvironment(0);
  sub_20C45FDF0();
  sub_20C45CF9C(&qword_27C7BBF20, MEMORY[0x277D09E30], MEMORY[0x277D09E40]);
  sub_20C460460();
  sub_20C4604F0();

  return sub_20C460460();
}

uint64_t DynamicArtworkLayoutEnvironment.hashValue.getter()
{
  sub_20C460930();
  DynamicArtworkLayoutEnvironment.hash(into:)(v1);
  return sub_20C460970();
}

uint64_t sub_20C45C950()
{
  sub_20C460930();
  DynamicArtworkLayoutEnvironment.hash(into:)(v1);
  return sub_20C460970();
}

uint64_t sub_20C45C994(uint64_t a1)
{
  sub_20C460930();
  DynamicArtworkLayoutEnvironment.hash(into:)(v2);
  return sub_20C460970();
}

uint64_t _s12FitnessAsset31DynamicArtworkLayoutEnvironmentV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((sub_20C45FD10() & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_20C45FCD0();
  v5 = v4;
  sub_20C45FCD0();
  if (v5 != v6)
  {
    goto LABEL_11;
  }

  v7 = type metadata accessor for DynamicArtworkLayoutEnvironment(0);
  sub_20C45FDF0();
  sub_20C45CF9C(&qword_27C7BBF48, MEMORY[0x277D09E30], MEMORY[0x277D09E48]);
  sub_20C460520();
  sub_20C460520();
  if (v13 == v11 && v14 == v12)
  {
  }

  else
  {
    v8 = sub_20C4608D0();

    if ((v8 & 1) == 0)
    {
LABEL_11:
      v9 = 0;
      return v9 & 1;
    }
  }

  if ((sub_20C441194(a1[*(v7 + 28)], a2[*(v7 + 28)]) & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_20C460520();
  sub_20C460520();
  if (v13 == v11 && v14 == v12)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_20C4608D0();
  }

  return v9 & 1;
}

unint64_t sub_20C45CBB0()
{
  result = qword_27C7BBEE0;
  if (!qword_27C7BBEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBEE0);
  }

  return result;
}

unint64_t sub_20C45CC04()
{
  result = qword_27C7BBEE8;
  if (!qword_27C7BBEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBEE8);
  }

  return result;
}

unint64_t sub_20C45CC58()
{
  result = qword_27C7BBEF0;
  if (!qword_27C7BBEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBEF0);
  }

  return result;
}

unint64_t sub_20C45CCAC()
{
  result = qword_27C7BBF08;
  if (!qword_27C7BBF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBF08);
  }

  return result;
}

unint64_t sub_20C45CD00()
{
  result = qword_27C7BBF10;
  if (!qword_27C7BBF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBF10);
  }

  return result;
}

uint64_t sub_20C45CD54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicArtworkLayoutEnvironment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C45CDB8(uint64_t a1)
{
  v2 = type metadata accessor for DynamicArtworkLayoutEnvironment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20C45CE98()
{
  result = qword_27C7BBF30;
  if (!qword_27C7BBF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBF30);
  }

  return result;
}

unint64_t sub_20C45CEF0()
{
  result = qword_27C7BBF38;
  if (!qword_27C7BBF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBF38);
  }

  return result;
}

unint64_t sub_20C45CF48()
{
  result = qword_27C7BBF40;
  if (!qword_27C7BBF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBF40);
  }

  return result;
}

uint64_t sub_20C45CF9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *DynamicPredicateEqualityDescriptor.makePredicateExpression<A>(using:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v350 = a1;
  v361 = a4;
  v6 = a3[1];
  v5 = a3[2];
  v355 = a3;
  v7 = a3[3];
  v365 = a2;
  v366 = v6;
  v351 = v6;
  v352 = v5;
  v353 = v7;
  v367 = v5;
  v368 = v7;
  v8 = type metadata accessor for ArtworkPredicateValue(255, &v365);
  WitnessTable = swift_getWitnessTable();
  v328 = type metadata accessor for ArtworkPredicateKeyPath(0, v8, &type metadata for AssetPlatform, WitnessTable);
  v327 = *(v328 - 8);
  MEMORY[0x28223BE20](v328);
  v326 = &v320 - v10;
  v336 = type metadata accessor for ArtworkPredicateKeyPath(0, v8, MEMORY[0x277D837D0], WitnessTable);
  v335 = *(v336 - 8);
  MEMORY[0x28223BE20](v336);
  v334 = &v320 - v11;
  v354 = a2;
  v348 = *(a2 - 1);
  MEMORY[0x28223BE20](v12);
  v349 = &v320 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v356 = &v320 - v15;
  v357 = v8;
  v358 = WitnessTable;
  v339 = type metadata accessor for ArtworkPredicateKeyPath(0, v8, MEMORY[0x277D83B88], WitnessTable);
  v338 = *(v339 - 8);
  MEMORY[0x28223BE20](v339);
  v337 = &v320 - v16;
  v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB830, &qword_20C464B00);
  MEMORY[0x28223BE20](v363);
  v364 = &v320 - v17;
  v372 = sub_20C45FEB0();
  v18 = *(v372 - 8);
  MEMORY[0x28223BE20](v372);
  v20 = &v320 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v320 - v22;
  v362 = sub_20C45FEC0();
  MEMORY[0x28223BE20](v362);
  v359 = &v320 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v333 = &v320 - v26;
  MEMORY[0x28223BE20](v27);
  v346 = (&v320 - v28);
  MEMORY[0x28223BE20](v29);
  v347 = (&v320 - v30);
  MEMORY[0x28223BE20](v31);
  v332 = &v320 - v32;
  MEMORY[0x28223BE20](v33);
  v345 = &v320 - v34;
  MEMORY[0x28223BE20](v35);
  v344 = (&v320 - v36);
  MEMORY[0x28223BE20](v37);
  v331 = &v320 - v38;
  MEMORY[0x28223BE20](v39);
  v342 = (&v320 - v40);
  MEMORY[0x28223BE20](v41);
  v330 = &v320 - v42;
  MEMORY[0x28223BE20](v43);
  v341 = (&v320 - v44);
  MEMORY[0x28223BE20](v45);
  v321 = &v320 - v46;
  MEMORY[0x28223BE20](v47);
  v323 = &v320 - v48;
  MEMORY[0x28223BE20](v49);
  v322 = &v320 - v50;
  MEMORY[0x28223BE20](v51);
  v324 = &v320 - v52;
  MEMORY[0x28223BE20](v53);
  v325 = &v320 - v54;
  MEMORY[0x28223BE20](v55);
  v343 = &v320 - v56;
  MEMORY[0x28223BE20](v57);
  v329 = &v320 - v58;
  MEMORY[0x28223BE20](v59);
  v340 = &v320 - v60;
  MEMORY[0x28223BE20](v61);
  v63 = &v320 - v62;
  MEMORY[0x28223BE20](v64);
  v66 = &v320 - v65;
  MEMORY[0x28223BE20](v67);
  v69 = &v320 - v68;
  MEMORY[0x28223BE20](v70);
  v72 = &v320 - v71;
  sub_20C45FF70();
  sub_20C45FE90();
  v360 = v72;
  sub_20C45F7EC(v72);
  sub_20C45FF80();
  sub_20C45FE90();
  sub_20C45F7EC(v69);
  LOBYTE(v8) = sub_20C45FEA0();
  v73 = *(v18 + 8);
  v74 = v372;
  v73(v20, v372);
  v73(v23, v74);
  if (v8)
  {
    sub_20C45FF70();
    sub_20C45FF80();
    v75 = v364;
    v76 = (v364 + *(v363 + 48));
    sub_20C45F848(v66, v364);
    sub_20C45F848(v63, v76);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v78 = v340;
          sub_20C45F8AC(v75, v340);
          v79 = *v78;
          v80 = swift_getEnumCaseMultiPayload();
          if (v80 != 4)
          {
            if (!v80)
            {
              v81 = v360;
              sub_20C45F8AC(v76, v360);
              LOBYTE(v81) = *v81;
              v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB8A8, &qword_20C464C08);
              v83 = v361;
              v361[3] = v82;
              v83[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
              *v83 = v79;
              *(v83 + 1) = v81;
LABEL_58:
              sub_20C45F7EC(v76);
              return sub_20C45F7EC(v75);
            }

            goto LABEL_61;
          }

          v168 = v329;
          sub_20C45F8AC(v76, v329);
          v169 = sub_20C45FF10();
          v170 = *(v169 - 8);
          if ((*(v170 + 88))(v168, v169) == *MEMORY[0x277D0A8F0])
          {
            v370 = sub_20C45FE10();
            v171 = v349;
            v172 = v354;
            (*(v348 + 16))(v349, v350, v354);
            v124 = v356;
            v173 = ArtworkPredicateValue.init(value:)(v171, v172, v356);
            MEMORY[0x28223BE20](v173);
            v174 = v355;
            *(&v320 - 2) = v172;
            *(&v320 - 1) = v174;
            goto LABEL_42;
          }

          (*(v170 + 8))(v168, v169);
LABEL_61:
          if (swift_getEnumCaseMultiPayload() != 4)
          {
            goto LABEL_68;
          }

          v238 = v359;
          sub_20C45F8AC(v76, v359);
          v239 = sub_20C45FF10();
          v240 = *(v239 - 8);
          v241 = (*(v240 + 88))(v238, v239);
          if (v241 != *MEMORY[0x277D0A8F0] && v241 != *MEMORY[0x277D0A8E8] && v241 != *MEMORY[0x277D0A900] && v241 != *MEMORY[0x277D0A908] && v241 != *MEMORY[0x277D0A8F8])
          {
            (*(v240 + 8))(v238, v239);
LABEL_68:
            v242 = 1 << swift_getEnumCaseMultiPayload();
            if ((v242 & 0x2B) == 0)
            {
              if ((v242 & 0xC4) != 0)
              {
                v243 = v75;
              }

              else
              {
                v244 = 1 << swift_getEnumCaseMultiPayload();
                if ((v244 & 0x2B) != 0)
                {
                  v76 = v75;
                  goto LABEL_72;
                }

                if ((v244 & 0xC4) == 0)
                {
                  sub_20C43C430();
                  swift_allocError();
                  *v299 = 10;
                  swift_willThrow();
                  return sub_20C45F910(v75);
                }

                v243 = v76;
                v76 = v75;
              }

              sub_20C45F7EC(v243);
            }

LABEL_72:
            sub_20C45F7EC(v76);
            sub_20C43C430();
            swift_allocError();
            v85 = 2;
            goto LABEL_114;
          }

LABEL_113:
          sub_20C45F7EC(v76);
          sub_20C45F7EC(v75);
          sub_20C43C430();
          swift_allocError();
          v85 = 7;
          goto LABEL_114;
        }

        v116 = v341;
        sub_20C45F8AC(v75, v341);
        v117 = *v116;
        v118 = swift_getEnumCaseMultiPayload();
        if (v118 != 1)
        {
          if (v118 != 4)
          {
            goto LABEL_61;
          }

          v119 = v330;
          sub_20C45F8AC(v76, v330);
          v120 = sub_20C45FF10();
          v121 = *(v120 - 8);
          if ((*(v121 + 88))(v119, v120) == *MEMORY[0x277D0A8E8])
          {
            v370 = v117;
            v122 = v349;
            v123 = v354;
            (*(v348 + 16))(v349, v350, v354);
            v124 = v356;
            v125 = ArtworkPredicateValue.init(value:)(v122, v123, v356);
            MEMORY[0x28223BE20](v125);
            v126 = v355;
            *(&v320 - 2) = v123;
            *(&v320 - 1) = v126;
LABEL_42:
            KeyPath = swift_getKeyPath();
            v151 = v337;
            ArtworkPredicateKeyPath.init(root:keyPath:)(v124, KeyPath, v357, MEMORY[0x277D83B88], v358, v337);
            v176 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BBE60, &qword_20C466D18);
            v177 = sub_20C45FA50(&qword_27C7BBE68, &qword_27C7BBE60, &qword_20C466D18);
            v153 = v339;
            v178 = swift_getWitnessTable();
            v365 = v176;
            v366 = v153;
            v367 = v177;
            v368 = v178;
            v179 = MEMORY[0x277D83BA8];
            v369 = MEMORY[0x277D83BA8];
            v180 = type metadata accessor for ArtworkPredicateEquality(0, &v365);
            v181 = v361;
            v361[3] = v180;
            v181[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v181);
            v162 = &v370;
            v160 = v151;
            v163 = v176;
            v164 = v153;
            v165 = v177;
            v166 = v178;
            v167 = v179;
LABEL_43:
            static ArtworkPredicate.makeEquality<A, B>(lhs:rhs:)(v162, v160, v163, v164, v165, v166, v167, boxed_opaque_existential_1);
            v182 = &v369;
LABEL_57:
            (*(*(v182 - 32) + 8))(v151, v153);
            goto LABEL_58;
          }

LABEL_49:
          (*(v121 + 8))(v119, v120);
          goto LABEL_61;
        }

        v183 = v360;
        sub_20C45F8AC(v76, v360);
        v134 = *v183;
        sub_20C45F7EC(v76);
LABEL_45:
        sub_20C45F7EC(v75);
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB868, &qword_20C464B98);
        v184 = v361;
        v361[3] = result;
        v184[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
        *v184 = v117;
        v184[1] = v134;
        return result;
      }

      if (EnumCaseMultiPayload != 2)
      {
        v133 = v344;
        sub_20C45F8AC(v75, v344);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_61;
        }

        v117 = *v133;
        v134 = *v76;
        goto LABEL_45;
      }

      v106 = v342;
      sub_20C45F8AC(v75, v342);
      v108 = *v106;
      v107 = v106[1];
      v109 = swift_getEnumCaseMultiPayload();
      if (v109 != 2)
      {
        if (v109 == 4)
        {
          v110 = v331;
          sub_20C45F8AC(v76, v331);
          v111 = sub_20C45FF10();
          v112 = *(v111 - 8);
          if ((*(v112 + 88))(v110, v111) == *MEMORY[0x277D0A900])
          {
            goto LABEL_51;
          }

          goto LABEL_52;
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v113 = v347;
        sub_20C45F8AC(v75, v347);
        v107 = v113[1];
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          goto LABEL_35;
        }

        v108 = *v113;
        v114 = *v76;
        v115 = v76[1];
LABEL_34:
        sub_20C45F7EC(v75);
        v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB848, &qword_20C464B48);
        v139 = v361;
        v361[3] = v138;
        v139[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
        result = swift_allocObject();
        *v139 = result;
        result[2] = v108;
        result[3] = v107;
        result[4] = v114;
        result[5] = v115;
        return result;
      }

      v135 = v346;
      sub_20C45F8AC(v75, v346);
      v108 = *v135;
      v107 = v135[1];
      v136 = swift_getEnumCaseMultiPayload();
      if (v136 == 4)
      {
        v110 = v333;
        sub_20C45F8AC(v76, v333);
        v111 = sub_20C45FF10();
        v112 = *(v111 - 8);
        if ((*(v112 + 88))(v110, v111) == *MEMORY[0x277D0A8F8])
        {
LABEL_51:
          v370 = v108;
          v371 = v107;
          v205 = v349;
          v206 = v354;
          (*(v348 + 16))(v349, v350, v354);
          v207 = v356;
          v208 = ArtworkPredicateValue.init(value:)(v205, v206, v356);
          MEMORY[0x28223BE20](v208);
          v209 = v355;
          *(&v320 - 2) = v206;
          *(&v320 - 1) = v209;
          v210 = swift_getKeyPath();
          v211 = v334;
          ArtworkPredicateKeyPath.init(root:keyPath:)(v207, v210, v357, MEMORY[0x277D837D0], v358, v334);
          v212 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BBF50, &qword_20C467308);
          v213 = sub_20C45FA50(&qword_27C7BBF58, &qword_27C7BBF50, &qword_20C467308);
          v214 = v336;
          v215 = swift_getWitnessTable();
          v365 = v212;
          v366 = v214;
          v367 = v213;
          v368 = v215;
          v216 = MEMORY[0x277D837F8];
          v369 = MEMORY[0x277D837F8];
          v217 = type metadata accessor for ArtworkPredicateEquality(0, &v365);
          v218 = v361;
          v361[3] = v217;
          v218[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
          v219 = __swift_allocate_boxed_opaque_existential_1(v218);
          static ArtworkPredicate.makeEquality<A, B>(lhs:rhs:)(&v370, v211, v212, v214, v213, v215, v216, v219);
          (*(v335 + 8))(v211, v214);

          goto LABEL_58;
        }

LABEL_52:

        (*(v112 + 8))(v110, v111);
        goto LABEL_61;
      }

      if (v136 != 7)
      {
LABEL_35:

        goto LABEL_61;
      }

LABEL_33:
      v137 = v360;
      sub_20C45F8AC(v76, v360);
      v114 = *v137;
      v115 = v137[1];
      sub_20C45F7EC(v76);
      goto LABEL_34;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v86 = v343;
      sub_20C45F8AC(v75, v343);
      v87 = sub_20C45FF10();
      v88 = *(v87 - 8);
      v89 = *(v88 + 88);
      v90 = v89(v86, v87);
      if (v90 == *MEMORY[0x277D0A8F0])
      {
        if (!swift_getEnumCaseMultiPayload())
        {
          v91 = v349;
          v92 = v354;
          (*(v348 + 16))(v349, v350, v354);
          v93 = v356;
          v94 = ArtworkPredicateValue.init(value:)(v91, v92, v356);
          MEMORY[0x28223BE20](v94);
          v95 = v355;
          *(&v320 - 2) = v92;
          *(&v320 - 1) = v95;
          v96 = swift_getKeyPath();
          v97 = v337;
          ArtworkPredicateKeyPath.init(root:keyPath:)(v93, v96, v357, MEMORY[0x277D83B88], v358, v337);
          v370 = sub_20C45FE10();
          v98 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BBE60, &qword_20C466D18);
          v99 = v339;
          v100 = swift_getWitnessTable();
          v101 = sub_20C45FA50(&qword_27C7BBE68, &qword_27C7BBE60, &qword_20C466D18);
          v365 = v99;
          v366 = v98;
          v367 = v100;
          v368 = v101;
          v102 = MEMORY[0x277D83BA8];
          v369 = MEMORY[0x277D83BA8];
          v103 = type metadata accessor for ArtworkPredicateEquality(0, &v365);
          v104 = v361;
          v361[3] = v103;
          v104[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
          v105 = __swift_allocate_boxed_opaque_existential_1(v104);
          static ArtworkPredicate.makeEquality<A, B>(lhs:rhs:)(v97, &v370, v99, v98, v100, v101, v102, v105);
          (*(v338 + 8))(v97, v99);
          return sub_20C45F7EC(v75);
        }

        goto LABEL_113;
      }

      if (v90 == *MEMORY[0x277D0A8E8])
      {
        v141 = v90;
        v142 = swift_getEnumCaseMultiPayload();
        if (v142 != 4)
        {
          if (v142 != 1)
          {
            goto LABEL_113;
          }

          v143 = v360;
          sub_20C45F8AC(v76, v360);
          v144 = *v143;
          v145 = v349;
          v146 = v354;
          (*(v348 + 16))(v349, v350, v354);
          v147 = v356;
          v148 = ArtworkPredicateValue.init(value:)(v145, v146, v356);
          MEMORY[0x28223BE20](v148);
          v149 = v355;
          *(&v320 - 2) = v146;
          *(&v320 - 1) = v149;
          v150 = swift_getKeyPath();
          v151 = v337;
          ArtworkPredicateKeyPath.init(root:keyPath:)(v147, v150, v357, MEMORY[0x277D83B88], v358, v337);
          v370 = v144;
          v152 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BBE60, &qword_20C466D18);
          v153 = v339;
          v154 = swift_getWitnessTable();
          v155 = sub_20C45FA50(&qword_27C7BBE68, &qword_27C7BBE60, &qword_20C466D18);
          v365 = v153;
          v366 = v152;
          v367 = v154;
          v368 = v155;
          v156 = MEMORY[0x277D83BA8];
          v369 = MEMORY[0x277D83BA8];
          v157 = type metadata accessor for ArtworkPredicateEquality(0, &v365);
          v158 = v361;
          v361[3] = v157;
          v158[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
          v159 = __swift_allocate_boxed_opaque_existential_1(v158);
          v160 = &v370;
          boxed_opaque_existential_1 = v159;
          v162 = v151;
          v163 = v153;
          v164 = v152;
          v165 = v154;
          v166 = v155;
          v167 = v156;
          goto LABEL_43;
        }

        v261 = v325;
        sub_20C45F8AC(v76, v325);
        if (v89(v261, v87) == v141)
        {
          if (qword_28110B658 != -1)
          {
            swift_once();
          }

          v262 = sub_20C460000();
          __swift_project_value_buffer(v262, qword_28110E2C0);
          v263 = sub_20C45FFE0();
          v264 = sub_20C460660();
          if (os_log_type_enabled(v263, v264))
          {
            v265 = swift_slowAlloc();
            v266 = swift_slowAlloc();
            v365 = v266;
            *v265 = 136315138;
            *(v265 + 4) = sub_20C43A260(0xD00000000000006BLL, 0x800000020C467850, &v365);
            _os_log_impl(&dword_20C404000, v263, v264, "%s", v265, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v266);
            MEMORY[0x20F2FB570](v266, -1, -1);
            MEMORY[0x20F2FB570](v265, -1, -1);
          }

          v267 = v349;
          v268 = v354;
          (*(v348 + 16))(v349, v350, v354);
          v269 = v356;
          v270 = ArtworkPredicateValue.init(value:)(v267, v268, v356);
          MEMORY[0x28223BE20](v270);
          v271 = v355;
          *(&v320 - 2) = v268;
          *(&v320 - 1) = v271;
          v272 = swift_getKeyPath();
          v273 = v337;
          ArtworkPredicateKeyPath.init(root:keyPath:)(v269, v272, v357, MEMORY[0x277D83B88], v358, v337);
          v274 = v339;
          v275 = swift_getWitnessTable();
          v365 = v274;
          v366 = v274;
          v367 = v275;
          v368 = v275;
          v276 = MEMORY[0x277D83BA8];
          v369 = MEMORY[0x277D83BA8];
          v277 = type metadata accessor for ArtworkPredicateEquality(0, &v365);
          v278 = v361;
          v361[3] = v277;
          v278[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
          v279 = __swift_allocate_boxed_opaque_existential_1(v278);
          static ArtworkPredicate.makeEquality<A, B>(lhs:rhs:)(v273, v273, v274, v274, v275, v275, v276, v279);
          v280 = &v369;
          goto LABEL_105;
        }

LABEL_112:
        (*(v88 + 8))(v261, v87);
        goto LABEL_113;
      }

      if (v90 == *MEMORY[0x277D0A900])
      {
        v220 = v90;
        v221 = swift_getEnumCaseMultiPayload();
        if (v221 != 4)
        {
          if (v221 != 2)
          {
            goto LABEL_113;
          }

          goto LABEL_56;
        }

        v261 = v324;
        sub_20C45F8AC(v76, v324);
        if (v89(v261, v87) != v220)
        {
          goto LABEL_112;
        }

        if (qword_28110B658 != -1)
        {
          swift_once();
        }

        v283 = sub_20C460000();
        __swift_project_value_buffer(v283, qword_28110E2C0);
        v284 = sub_20C45FFE0();
        v285 = sub_20C460660();
        if (os_log_type_enabled(v284, v285))
        {
          v286 = swift_slowAlloc();
          v287 = swift_slowAlloc();
          v365 = v287;
          *v286 = 136315138;
          *(v286 + 4) = sub_20C43A260(0xD00000000000006BLL, 0x800000020C467850, &v365);
          _os_log_impl(&dword_20C404000, v284, v285, "%s", v286, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v287);
          MEMORY[0x20F2FB570](v287, -1, -1);
          MEMORY[0x20F2FB570](v286, -1, -1);
        }

        goto LABEL_96;
      }

      if (v90 != *MEMORY[0x277D0A908])
      {
        if (v90 != *MEMORY[0x277D0A8F8])
        {
          (*(v88 + 8))(v86, v87);
          goto LABEL_61;
        }

        v281 = v90;
        v282 = swift_getEnumCaseMultiPayload();
        if (v282 != 4)
        {
          if (v282 != 7)
          {
            goto LABEL_113;
          }

LABEL_56:
          v222 = v360;
          sub_20C45F8AC(v76, v360);
          v223 = *v222;
          v224 = v222[1];
          v225 = v349;
          v226 = v354;
          (*(v348 + 16))(v349, v350, v354);
          v227 = v356;
          v228 = ArtworkPredicateValue.init(value:)(v225, v226, v356);
          MEMORY[0x28223BE20](v228);
          v229 = v355;
          *(&v320 - 2) = v226;
          *(&v320 - 1) = v229;
          v230 = swift_getKeyPath();
          v151 = v334;
          ArtworkPredicateKeyPath.init(root:keyPath:)(v227, v230, v357, MEMORY[0x277D837D0], v358, v334);
          v370 = v223;
          v371 = v224;
          v231 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BBF50, &qword_20C467308);
          v153 = v336;
          v232 = swift_getWitnessTable();
          v233 = sub_20C45FA50(&qword_27C7BBF58, &qword_27C7BBF50, &qword_20C467308);
          v365 = v153;
          v366 = v231;
          v367 = v232;
          v368 = v233;
          v234 = MEMORY[0x277D837F8];
          v369 = MEMORY[0x277D837F8];
          v235 = type metadata accessor for ArtworkPredicateEquality(0, &v365);
          v236 = v361;
          v361[3] = v235;
          v236[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
          v237 = __swift_allocate_boxed_opaque_existential_1(v236);
          static ArtworkPredicate.makeEquality<A, B>(lhs:rhs:)(v151, &v370, v153, v231, v232, v233, v234, v237);

          v182 = &v366;
          goto LABEL_57;
        }

        v261 = v321;
        sub_20C45F8AC(v76, v321);
        if (v89(v261, v87) != v281)
        {
          goto LABEL_112;
        }

        if (qword_28110B658 != -1)
        {
          swift_once();
        }

        v316 = sub_20C460000();
        __swift_project_value_buffer(v316, qword_28110E2C0);
        v284 = sub_20C45FFE0();
        v317 = sub_20C460660();
        if (os_log_type_enabled(v284, v317))
        {
          v318 = swift_slowAlloc();
          v319 = swift_slowAlloc();
          v365 = v319;
          *v318 = 136315138;
          *(v318 + 4) = sub_20C43A260(0xD00000000000006BLL, 0x800000020C467850, &v365);
          _os_log_impl(&dword_20C404000, v284, v317, "%s", v318, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v319);
          MEMORY[0x20F2FB570](v319, -1, -1);
          MEMORY[0x20F2FB570](v318, -1, -1);
        }

LABEL_96:

        v288 = v349;
        v289 = v354;
        (*(v348 + 16))(v349, v350, v354);
        v290 = v356;
        v291 = ArtworkPredicateValue.init(value:)(v288, v289, v356);
        MEMORY[0x28223BE20](v291);
        v292 = v355;
        *(&v320 - 2) = v289;
        *(&v320 - 1) = v292;
        v293 = swift_getKeyPath();
        v273 = v334;
        ArtworkPredicateKeyPath.init(root:keyPath:)(v290, v293, v357, MEMORY[0x277D837D0], v358, v334);
        v274 = v336;
        v294 = swift_getWitnessTable();
        v365 = v274;
        v366 = v274;
        v367 = v294;
        v368 = v294;
        v295 = MEMORY[0x277D837F8];
        v369 = MEMORY[0x277D837F8];
        v296 = type metadata accessor for ArtworkPredicateEquality(0, &v365);
        v297 = v361;
        v361[3] = v296;
        v297[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
        v298 = __swift_allocate_boxed_opaque_existential_1(v297);
        static ArtworkPredicate.makeEquality<A, B>(lhs:rhs:)(v273, v273, v274, v274, v294, v294, v295, v298);
        v280 = &v366;
LABEL_105:
        (*(*(v280 - 32) + 8))(v273, v274);
        goto LABEL_58;
      }

      v245 = v90;
      v246 = swift_getEnumCaseMultiPayload();
      if (v246 == 4)
      {
        v261 = v323;
        sub_20C45F8AC(v76, v323);
        if (v89(v261, v87) == v245)
        {
          if (qword_28110B658 != -1)
          {
            swift_once();
          }

          v300 = sub_20C460000();
          __swift_project_value_buffer(v300, qword_28110E2C0);
          v301 = sub_20C45FFE0();
          v302 = sub_20C460660();
          if (os_log_type_enabled(v301, v302))
          {
            v303 = swift_slowAlloc();
            v304 = swift_slowAlloc();
            v365 = v304;
            *v303 = 136315138;
            *(v303 + 4) = sub_20C43A260(0xD00000000000006BLL, 0x800000020C467850, &v365);
            _os_log_impl(&dword_20C404000, v301, v302, "%s", v303, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v304);
            MEMORY[0x20F2FB570](v304, -1, -1);
            MEMORY[0x20F2FB570](v303, -1, -1);
          }

          v305 = v349;
          v306 = v354;
          (*(v348 + 16))(v349, v350, v354);
          v307 = v356;
          v308 = ArtworkPredicateValue.init(value:)(v305, v306, v356);
          MEMORY[0x28223BE20](v308);
          v309 = v355;
          *(&v320 - 2) = v306;
          *(&v320 - 1) = v309;
          v310 = swift_getKeyPath();
          v273 = v326;
          ArtworkPredicateKeyPath.init(root:keyPath:)(v307, v310, v357, &type metadata for AssetPlatform, v358, v326);
          v274 = v328;
          v311 = swift_getWitnessTable();
          v312 = sub_20C42E524();
          v365 = v274;
          v366 = v274;
          v367 = v311;
          v368 = v311;
          v369 = v312;
          v313 = type metadata accessor for ArtworkPredicateEquality(0, &v365);
          v314 = v361;
          v361[3] = v313;
          v314[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
          v315 = __swift_allocate_boxed_opaque_existential_1(v314);
          static ArtworkPredicate.makeEquality<A, B>(lhs:rhs:)(v273, v273, v274, v274, v311, v311, v312, v315);
          v280 = &v359;
          goto LABEL_105;
        }

        goto LABEL_112;
      }

      if (v246 != 5)
      {
        goto LABEL_113;
      }

      v247 = v322;
      sub_20C45F8AC(v76, v322);
      LOBYTE(v247) = *v247;
      v248 = v349;
      v249 = v354;
      (*(v348 + 16))(v349, v350, v354);
      v250 = v356;
      v251 = ArtworkPredicateValue.init(value:)(v248, v249, v356);
      MEMORY[0x28223BE20](v251);
      v252 = v355;
      *(&v320 - 2) = v249;
      *(&v320 - 1) = v252;
      v253 = swift_getKeyPath();
      v151 = v326;
      ArtworkPredicateKeyPath.init(root:keyPath:)(v250, v253, v357, &type metadata for AssetPlatform, v358, v326);
      LOBYTE(v370) = v247;
      v254 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BBF60, &qword_20C467340);
      v153 = v328;
      v255 = swift_getWitnessTable();
      v256 = sub_20C45FA50(&qword_27C7BBF68, &qword_27C7BBF60, &qword_20C467340);
      v257 = sub_20C42E524();
      v365 = v153;
      v366 = v254;
      v367 = v255;
      v368 = v256;
      v369 = v257;
      v258 = type metadata accessor for ArtworkPredicateEquality(0, &v365);
      v259 = v361;
      v361[3] = v258;
      v259[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
      v260 = __swift_allocate_boxed_opaque_existential_1(v259);
      v199 = &v370;
      v197 = v260;
      v198 = v151;
      v200 = v153;
      v201 = v254;
      v202 = v255;
      v203 = v256;
      v204 = v257;
    }

    else
    {
      v127 = v345;
      sub_20C45F8AC(v75, v345);
      v128 = *v127;
      v129 = swift_getEnumCaseMultiPayload();
      if (v129 != 4)
      {
        if (v129 == 5)
        {
          v130 = v360;
          sub_20C45F8AC(v76, v360);
          LOBYTE(v130) = *v130;
          v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB860, &qword_20C464B90);
          v132 = v361;
          v361[3] = v131;
          v132[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
          *v132 = v128;
          *(v132 + 1) = v130;
          goto LABEL_58;
        }

        goto LABEL_61;
      }

      v119 = v332;
      sub_20C45F8AC(v76, v332);
      v120 = sub_20C45FF10();
      v121 = *(v120 - 8);
      if ((*(v121 + 88))(v119, v120) != *MEMORY[0x277D0A908])
      {
        goto LABEL_49;
      }

      LOBYTE(v370) = v128;
      v185 = v349;
      v186 = v354;
      (*(v348 + 16))(v349, v350, v354);
      v187 = v356;
      v188 = ArtworkPredicateValue.init(value:)(v185, v186, v356);
      MEMORY[0x28223BE20](v188);
      v189 = v355;
      *(&v320 - 2) = v186;
      *(&v320 - 1) = v189;
      v190 = swift_getKeyPath();
      v151 = v326;
      ArtworkPredicateKeyPath.init(root:keyPath:)(v187, v190, v357, &type metadata for AssetPlatform, v358, v326);
      v191 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BBF60, &qword_20C467340);
      v192 = sub_20C45FA50(&qword_27C7BBF68, &qword_27C7BBF60, &qword_20C467340);
      v153 = v328;
      v193 = swift_getWitnessTable();
      v194 = sub_20C42E524();
      v365 = v191;
      v366 = v153;
      v367 = v192;
      v368 = v193;
      v369 = v194;
      v195 = type metadata accessor for ArtworkPredicateEquality(0, &v365);
      v196 = v361;
      v361[3] = v195;
      v196[4] = &protocol witness table for ArtworkPredicateEquality<A, B>;
      v197 = __swift_allocate_boxed_opaque_existential_1(v196);
      v198 = &v370;
      v199 = v151;
      v200 = v191;
      v201 = v153;
      v202 = v192;
      v203 = v193;
      v204 = v194;
    }

    static ArtworkPredicate.makeEquality<A, B>(lhs:rhs:)(v198, v199, v200, v201, v202, v203, v204, v197);
    v182 = &v359;
    goto LABEL_57;
  }

  sub_20C43C430();
  swift_allocError();
  v85 = 8;
LABEL_114:
  *v84 = v85;
  return swift_willThrow();
}

uint64_t sub_20C45F7EC(uint64_t a1)
{
  v2 = sub_20C45FEC0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C45F848(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C45FEC0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C45F8AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C45FEC0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C45F910(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB830, &qword_20C464B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C45F978@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 48))(*(a1 + a2 - 16));
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_20C45F9C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 56))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_20C45FA08@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 64))(*(a1 + a2 - 16));
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_20C45FA50(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AssetError.hashValue.getter()
{
  v1 = *v0;
  sub_20C460930();
  MEMORY[0x20F2FAEA0](v1);
  return sub_20C460970();
}

unint64_t sub_20C45FB48()
{
  result = qword_27C7BBF70;
  if (!qword_27C7BBF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BBF70);
  }

  return result;
}