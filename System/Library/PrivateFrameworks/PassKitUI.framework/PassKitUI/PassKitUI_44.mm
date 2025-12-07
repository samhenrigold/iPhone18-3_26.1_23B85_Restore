id sub_1BD4BC31C()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v6;
  v9 = *MEMORY[0x1E69B8068];
  v10 = *(v2 + 104);
  if (*v0 == 10)
  {
    v10(&v14 - v6, v9, v1, v7);
    result = PKPassKitBundle();
    if (result)
    {
      v12 = result;
      v13 = sub_1BE04B6F4();
LABEL_6:

      (*(v2 + 8))(v8, v1);
      return v13;
    }

    __break(1u);
  }

  else
  {
    v10(v4, v9, v1, v7);
    result = PKPassKitBundle();
    if (result)
    {
      v12 = result;
      v13 = sub_1BE04B6F4();
      v8 = v4;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD4BC4F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13[-v3];
  v5 = type metadata accessor for PaymentPassMethodSheet(0);
  v6 = *(a1 + v5[13]);
  v7 = type metadata accessor for AvailablePass(0);
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = (a1 + v5[39]);
  v9 = *v8;
  v10 = *(v8 + 1);
  v13[16] = v9;
  v14 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E78, &qword_1BE0DB128);
  sub_1BE0516A4();
  v6(v4, 0, v13[15]);
  v11 = sub_1BD0DE53C(v4, &qword_1EBD520A0, &qword_1BE0B9840);
  return (*(a1 + v5[23]))(v11);
}

uint64_t sub_1BD4BC658@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a1;
  v77 = a3;
  v5 = type metadata accessor for PaymentPassMethodSheet(0);
  v68 = *(v5 - 8);
  v66 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5 - 8);
  v69 = v6;
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B98, &qword_1BE0DAF10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v62 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47BA0, &qword_1BE0DAF18);
  v12 = *(v11 - 8);
  v71 = v11;
  v72 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v62 - v13;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47BA8, &qword_1BE0DAF20);
  MEMORY[0x1EEE9AC00](v73);
  v64 = &v62 - v14;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47BB0, &qword_1BE0DAF28);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v62 - v15;
  v63 = a2;
  v78 = a2;
  v79 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47BB8, &qword_1BE0DAF30);
  sub_1BD0DE4F4(&qword_1EBD47BC0, &qword_1EBD47BB8, &qword_1BE0DAF30, MEMORY[0x1E6981F48]);
  sub_1BE0504A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8, &qword_1BE0DAD48);
  sub_1BE0516C4();
  v70 = type metadata accessor for PaymentPassMethodSheet;
  v16 = v7;
  v65 = v7;
  sub_1BD4CCE58(a2, v7, type metadata accessor for PaymentPassMethodSheet);
  v17 = *(v68 + 80);
  v67 = (v17 + 16) & ~v17;
  v18 = swift_allocObject();
  v68 = type metadata accessor for PaymentPassMethodSheet;
  sub_1BD4CCEC0(v16, v18 + ((v17 + 16) & ~v17), type metadata accessor for PaymentPassMethodSheet);
  _s11DetailSheetOMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47BC8, &qword_1BE0DAF38);
  sub_1BD0DE4F4(&qword_1EBD47BD0, &qword_1EBD47BA0, &qword_1BE0DAF18, MEMORY[0x1E697CCF0]);
  sub_1BD4CD3A0(&qword_1EBD47BD8, _s11DetailSheetOMa, &unk_1BE0EE240);
  sub_1BD4CD3E8();
  v19 = v64;
  v20 = v10;
  v21 = v71;
  v22 = v62;
  sub_1BE051124();
  v18, v23, v24, v25, v26, v27, v28, v29;
  sub_1BD0DE53C(v20, &qword_1EBD47B98, &qword_1BE0DAF10);
  (*(v72 + 8))(v22, v21);
  sub_1BE051CD4();
  sub_1BE04EE54();
  v30 = (v19 + *(v73 + 36));
  v31 = v93;
  v30[4] = v92;
  v30[5] = v31;
  v30[6] = v94;
  v32 = v89;
  *v30 = v88;
  v30[1] = v32;
  v33 = v91;
  v30[2] = v90;
  v30[3] = v33;
  v34 = v63;
  v35 = v63 + *(v66 + 116);
  v36 = *(v35 + 48);
  v37 = *(v35 + 16);
  v95 = *v35;
  v96 = v37;
  v97 = *(v35 + 32);
  *&v98 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47C50, &qword_1BE0DAF78);
  sub_1BE0516C4();
  v80 = v84;
  v81 = v85;
  v82 = v86;
  v83 = v87;
  v38 = v65;
  sub_1BD4CCE58(v34, v65, v70);
  v39 = v67;
  v40 = swift_allocObject();
  sub_1BD4CCEC0(v38, v40 + v39, v68);
  sub_1BD4CD938();
  sub_1BD4CDAA8();
  sub_1BD459428();
  v41 = v74;
  sub_1BE050F74();
  v40, v42, v43, v44, v45, v46, v47, v48;
  v95 = v80;
  v96 = v81;
  v97 = v82;
  v98 = v83;
  sub_1BD0DE53C(&v95, &qword_1EBD47C68, &unk_1BE0DAF80);
  sub_1BD0DE53C(v19, &qword_1EBD47BA8, &qword_1BE0DAF20);
  v49 = sub_1BE051274();
  LOBYTE(v40) = sub_1BE0501D4();
  v50 = sub_1BE051CD4();
  v51 = v41 + *(v75 + 36);
  *v51 = v49;
  *(v51 + 8) = v40;
  *(v51 + 16) = v50;
  *(v51 + 24) = v52;
  sub_1BD4CDB04();
  sub_1BD4CDC28();
  sub_1BD4CDC7C();
  v53 = v76;
  sub_1BE048964();
  sub_1BE050D64();
  v53, v54, v55, v56, v57, v58, v59, v60;
  return sub_1BD0DE53C(v41, &qword_1EBD47BB0, &qword_1BE0DAF28);
}

id sub_1BD4BCD74@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v163 = a2;
  v162 = a3;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47C88, &qword_1BE0DAF90);
  v165 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v154 = &v137 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47C90, &qword_1BE0DAF98);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v153 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v152 = &v137 - v8;
  v9 = type metadata accessor for PaymentPassMethodSheet(0);
  v146 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v147 = v10;
  v148 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for PaymentPassBillingAddressSection(0);
  MEMORY[0x1EEE9AC00](v149);
  v151 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v150 = &v137 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47C98, &qword_1BE0DAFA0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v161 = &v137 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v166 = &v137 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47CA0, &qword_1BE0DAFA8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v160 = &v137 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v175 = &v137 - v21;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47CA8, &qword_1BE0DAFB0);
  v159 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v141 = &v137 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47CB0, &qword_1BE0DAFB8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v174 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v173 = &v137 - v26;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47CB8, &qword_1BE0DAFC0);
  MEMORY[0x1EEE9AC00](v158);
  v28 = &v137 - v27;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47CC0, &qword_1BE0DAFC8);
  MEMORY[0x1EEE9AC00](v157);
  v30 = &v137 - v29;
  v142 = sub_1BE04BD74();
  v140 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v139 = &v137 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47CC8, &qword_1BE0DAFD0);
  v138 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v137 = &v137 - v32;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47CD0, &unk_1BE0DAFD8);
  MEMORY[0x1EEE9AC00](v143);
  v34 = &v137 - v33;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD469C8, &qword_1BE0D7A30);
  v35 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v37 = &v137 - v36;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47CD8, &qword_1BE0DAFE8);
  MEMORY[0x1EEE9AC00](v156);
  v39 = &v137 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47CE0, &qword_1BE0DAFF0);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v172 = &v137 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v176 = &v137 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47CE8, &qword_1BE0DAFF8);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v171 = &v137 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v137 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47CF0, &qword_1BE0DB000);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v170 = &v137 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v168 = &v137 - v52;
  sub_1BD4BE2E4(&v137 - v52);
  v169 = v48;
  sub_1BD4BE8D4(v48);
  v53 = a1[*(v9 + 100)];
  v54 = v9;
  v55 = *(v9 + 24);
  v56 = a1;
  v57 = &a1[v55];
  v163 = type metadata accessor for Passes(0);
  v58 = *(*&v57[*(v163 + 28)] + 16);
  v145 = v53;
  if (v53 == 1)
  {
    if (v58 || PKOslo2024UIUpdatesEnabled() && *(*&v56[v54[22]] + 16))
    {
      sub_1BD4BED10(v37);
      sub_1BD0DE19C(v37, v34, &qword_1EBD469C8, &qword_1BE0D7A30);
      swift_storeEnumTagMultiPayload();
      sub_1BD462198();
      sub_1BD4CDDCC();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v37, &qword_1EBD469C8, &qword_1BE0D7A30);
    }

    else
    {
      v60 = v140;
      v61 = v139;
      (*(v140 + 104))(v139, *MEMORY[0x1E69B8068], v142);
      result = PKPassKitBundle();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v63 = result;
      v64 = sub_1BE04B6F4();
      v66 = v65;

      (*(v60 + 8))(v61, v142);
      *&v178 = v64;
      *(&v178 + 1) = v66;
      sub_1BD0DDEBC();
      *&v178 = sub_1BE0506C4();
      *(&v178 + 1) = v67;
      LOBYTE(v179) = v68 & 1;
      *(&v179 + 1) = v69;
      MEMORY[0x1EEE9AC00](v178);
      *(&v137 - 2) = v56;
      sub_1BD462198();
      v70 = v137;
      sub_1BE051A24();
      v71 = v138;
      v72 = v144;
      (*(v138 + 16))(v34, v70, v144);
      swift_storeEnumTagMultiPayload();
      sub_1BD4CDDCC();
      sub_1BE04F9A4();
      (*(v71 + 8))(v70, v72);
    }

    v73 = v173;
    sub_1BD0DE19C(v39, v30, &qword_1EBD47CD8, &qword_1BE0DAFE8);
    swift_storeEnumTagMultiPayload();
    sub_1BD4CDD40();
    sub_1BD4CDEF4(&qword_1EBD47D08, &qword_1EBD47CB8, &qword_1BE0DAFC0, sub_1BD462198);
    sub_1BE04F9A4();
    sub_1BD0DE53C(v39, &qword_1EBD47CD8, &qword_1BE0DAFE8);
  }

  else
  {
    if (v58 && !PKOslo2024UIUpdatesEnabled())
    {
      v59 = 1;
    }

    else
    {
      sub_1BD4BED10(v37);
      sub_1BD0DE204(v37, v28, &qword_1EBD469C8, &qword_1BE0D7A30);
      v59 = 0;
    }

    (*(v35 + 56))(v28, v59, 1, v155);
    sub_1BD0DE19C(v28, v30, &qword_1EBD47CB8, &qword_1BE0DAFC0);
    swift_storeEnumTagMultiPayload();
    sub_1BD4CDD40();
    sub_1BD4CDEF4(&qword_1EBD47D08, &qword_1EBD47CB8, &qword_1BE0DAFC0, sub_1BD462198);
    sub_1BE04F9A4();
    sub_1BD0DE53C(v28, &qword_1EBD47CB8, &qword_1BE0DAFC0);
    v73 = v173;
  }

  v74 = &v56[v54[6]];
  v75 = v159;
  if (*(v74 + *(v163 + 32)) != 1)
  {
    goto LABEL_19;
  }

  v76 = &v56[v54[36]];
  v78 = *v76;
  v77 = *(v76 + 1);
  *&v178 = v78;
  *(&v178 + 1) = v77;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B90, &qword_1BE0DAF08);
  sub_1BE0516A4();
  v79 = v177[2];
  v177, v80, v81, v82, v83, v84, v85, v86;
  v87 = v145 ^ 1;
  if (!v79)
  {
    v87 = 1;
  }

  if (v87)
  {
LABEL_19:
    v95 = 1;
    v94 = v164;
  }

  else
  {
    *&v178 = sub_1BD4BF034();
    *(&v178 + 1) = v88;
    sub_1BD0DDEBC();
    *&v178 = sub_1BE0506C4();
    *(&v178 + 1) = v89;
    LOBYTE(v179) = v90 & 1;
    *(&v179 + 1) = v91;
    MEMORY[0x1EEE9AC00](v178);
    *(&v137 - 2) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47D20, &qword_1BE0DB018);
    sub_1BD4CDEF4(&qword_1EBD47D28, &qword_1EBD47D20, &qword_1BE0DB018, sub_1BD4CDF70);
    v92 = v141;
    sub_1BE051A24();
    v93 = v164;
    (*(v75 + 32))(v73, v92, v164);
    v94 = v93;
    v95 = 0;
  }

  (*(v75 + 56))(v73, v95, 1, v94);
  sub_1BD6E251C(v175);
  if (PKOslo2024UIUpdatesEnabled())
  {
    v96 = v166;
    (*(v165 + 56))(v166, 1, 1, v167);
  }

  else
  {
    v97 = v56;
    v98 = v150;
    sub_1BD4CCE58(v74, v150, type metadata accessor for Passes);
    v99 = (v97 + v54[7]);
    v100 = v99[4];
    v181 = v99[3];
    v182 = v100;
    v101 = v99[2];
    v179 = v99[1];
    v180 = v101;
    v178 = *v99;
    v102 = (v97 + v54[14]);
    v104 = *v102;
    v103 = v102[1];
    v105 = (v97 + v54[15]);
    v106 = v105[1];
    v164 = *v105;
    v107 = (v97 + v54[16]);
    v108 = v107[1];
    v163 = *v107;
    v109 = v148;
    sub_1BD4CCE58(v97, v148, type metadata accessor for PaymentPassMethodSheet);
    v110 = v73;
    v111 = (*(v146 + 80) + 16) & ~*(v146 + 80);
    v112 = swift_allocObject();
    v113 = v112 + v111;
    v73 = v110;
    sub_1BD4CCEC0(v109, v113, type metadata accessor for PaymentPassMethodSheet);
    v114 = v149;
    v115 = (v98 + *(v149 + 20));
    v116 = v181;
    v115[2] = v180;
    v115[3] = v116;
    v115[4] = v182;
    v117 = v179;
    *v115 = v178;
    v115[1] = v117;
    v118 = (v98 + v114[6]);
    *v118 = v104;
    v118[1] = v103;
    v119 = (v98 + v114[7]);
    *v119 = v164;
    v119[1] = v106;
    v120 = (v98 + v114[8]);
    *v120 = v163;
    v120[1] = v108;
    v121 = (v98 + v114[9]);
    *v121 = sub_1BD4CDE64;
    v121[1] = v112;
    sub_1BD0DE19C(&v178, &v177, &qword_1EBD395E0, &qword_1BE0B8830);
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    v122 = v152;
    sub_1BD4BF6A4(v152);
    v123 = v151;
    sub_1BD4CCE58(v98, v151, type metadata accessor for PaymentPassBillingAddressSection);
    v124 = v153;
    sub_1BD0DE19C(v122, v153, &qword_1EBD47C90, &qword_1BE0DAF98);
    v125 = v154;
    sub_1BD4CCE58(v123, v154, type metadata accessor for PaymentPassBillingAddressSection);
    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47D10, &qword_1BE0DB008);
    sub_1BD0DE19C(v124, v125 + *(v126 + 48), &qword_1EBD47C90, &qword_1BE0DAF98);
    sub_1BD0DE53C(v122, &qword_1EBD47C90, &qword_1BE0DAF98);
    sub_1BD4CCF28(v98, type metadata accessor for PaymentPassBillingAddressSection);
    sub_1BD0DE53C(v124, &qword_1EBD47C90, &qword_1BE0DAF98);
    sub_1BD4CCF28(v123, type metadata accessor for PaymentPassBillingAddressSection);
    v96 = v166;
    sub_1BD0DE204(v125, v166, &qword_1EBD47C88, &qword_1BE0DAF90);
    (*(v165 + 56))(v96, 0, 1, v167);
  }

  v127 = v170;
  sub_1BD0DE19C(v168, v170, &qword_1EBD47CF0, &qword_1BE0DB000);
  v128 = v171;
  sub_1BD0DE19C(v169, v171, &qword_1EBD47CE8, &qword_1BE0DAFF8);
  v129 = v172;
  sub_1BD0DE19C(v176, v172, &qword_1EBD47CE0, &qword_1BE0DAFF0);
  v130 = v174;
  sub_1BD0DE19C(v73, v174, &qword_1EBD47CB0, &qword_1BE0DAFB8);
  v131 = v175;
  v132 = v160;
  sub_1BD0DE19C(v175, v160, &qword_1EBD47CA0, &qword_1BE0DAFA8);
  v133 = v161;
  sub_1BD0DE19C(v96, v161, &qword_1EBD47C98, &qword_1BE0DAFA0);
  v134 = v162;
  sub_1BD0DE19C(v127, v162, &qword_1EBD47CF0, &qword_1BE0DB000);
  v135 = v96;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47D18, &qword_1BE0DB010);
  sub_1BD0DE19C(v128, v134 + v136[12], &qword_1EBD47CE8, &qword_1BE0DAFF8);
  sub_1BD0DE19C(v129, v134 + v136[16], &qword_1EBD47CE0, &qword_1BE0DAFF0);
  sub_1BD0DE19C(v130, v134 + v136[20], &qword_1EBD47CB0, &qword_1BE0DAFB8);
  sub_1BD0DE19C(v132, v134 + v136[24], &qword_1EBD47CA0, &qword_1BE0DAFA8);
  sub_1BD0DE19C(v133, v134 + v136[28], &qword_1EBD47C98, &qword_1BE0DAFA0);
  sub_1BD0DE53C(v135, &qword_1EBD47C98, &qword_1BE0DAFA0);
  sub_1BD0DE53C(v131, &qword_1EBD47CA0, &qword_1BE0DAFA8);
  sub_1BD0DE53C(v173, &qword_1EBD47CB0, &qword_1BE0DAFB8);
  sub_1BD0DE53C(v176, &qword_1EBD47CE0, &qword_1BE0DAFF0);
  sub_1BD0DE53C(v169, &qword_1EBD47CE8, &qword_1BE0DAFF8);
  sub_1BD0DE53C(v168, &qword_1EBD47CF0, &qword_1BE0DB000);
  sub_1BD0DE53C(v133, &qword_1EBD47C98, &qword_1BE0DAFA0);
  sub_1BD0DE53C(v132, &qword_1EBD47CA0, &qword_1BE0DAFA8);
  sub_1BD0DE53C(v174, &qword_1EBD47CB0, &qword_1BE0DAFB8);
  sub_1BD0DE53C(v172, &qword_1EBD47CE0, &qword_1BE0DAFF0);
  sub_1BD0DE53C(v171, &qword_1EBD47CE8, &qword_1BE0DAFF8);
  return sub_1BD0DE53C(v170, &qword_1EBD47CF0, &qword_1BE0DB000);
}

uint64_t sub_1BD4BE2E4@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v2 = type metadata accessor for PeerPaymentModel(0);
  v70 = *(v2 - 8);
  v71 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v67 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for PeerPaymentToggleSection(0);
  v72 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PaymentPassMethodSheet(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v65 - v13;
  sub_1BD0DE19C(v1 + *(v6 + 40), &v65 - v13, &qword_1EBD45480, &unk_1BE0B8C30);
  sub_1BD4CCE58(v1, &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassMethodSheet);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_1BD4CCEC0(&v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for PaymentPassMethodSheet);
  sub_1BD4CCE58(v1, &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassMethodSheet);
  v17 = v68;
  v18 = swift_allocObject();
  v19 = v18 + v15;
  v20 = v69;
  v21 = v71;
  sub_1BD4CCEC0(&v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19, type metadata accessor for PaymentPassMethodSheet);
  v22 = v20[7];
  v23 = v70;
  v66 = *(v70 + 7);
  v66(&v17[v22], 1, 1, v21);
  sub_1BD0DE19C(v14, v11, &qword_1EBD45480, &unk_1BE0B8C30);
  if ((*(v23 + 48))(v11, 1, v21) == 1)
  {
    sub_1BD0DE53C(v14, &qword_1EBD45480, &unk_1BE0B8C30);
    v16, v24, v25, v26, v27, v28, v29, v30;
    v18, v31, v32, v33, v34, v35, v36, v37;
  }

  else
  {
    v65 = v16;
    v70 = v14;
    v38 = v67;
    sub_1BD4CCEC0(v11, v67, type metadata accessor for PeerPaymentModel);
    if (*(v38 + v21[12]))
    {
      v46 = v20;
      v47 = &v17[v20[8]];
      v48 = v17;
      v49 = &v17[v20[9]];
      *v48 = *(v38 + v21[7]);
      v50 = v21[5];
      v51 = v21;
      v52 = v46[6];
      sub_1BD4CCE58(v38 + v50, &v48[v46[5]], type metadata accessor for AvailablePass);
      *&v48[v52] = 0;
      sub_1BD0DE53C(&v48[v22], &qword_1EBD45480, &unk_1BE0B8C30);
      sub_1BD4CCE58(v38, &v48[v22], type metadata accessor for PeerPaymentModel);
      v66(&v48[v22], 0, 1, v51);
      *v49 = sub_1BD4D5884;
      v49[1] = v18;
      v53 = v65;
      *v47 = sub_1BD4D5820;
      v47[1] = v53;
      v54 = &v48[v46[10]];
      v74 = *(v38 + v51[10]);
      sub_1BE051694();
      sub_1BD4CCF28(v38, type metadata accessor for PeerPaymentModel);
      sub_1BD0DE53C(v70, &qword_1EBD45480, &unk_1BE0B8C30);
      v55 = v76;
      *v54 = v75;
      *(v54 + 1) = v55;
      v56 = v73;
      sub_1BD4CCE58(v48, v73, type metadata accessor for PeerPaymentToggleSection);
      (*(v72 + 56))(v56, 0, 1, v46);
      return sub_1BD4CCF28(v48, type metadata accessor for PeerPaymentToggleSection);
    }

    v65, v39, v40, v41, v42, v43, v44, v45;
    v18, v58, v59, v60, v61, v62, v63, v64;
    sub_1BD4CCF28(v38, type metadata accessor for PeerPaymentModel);
    v11 = v70;
  }

  sub_1BD0DE53C(v11, &qword_1EBD45480, &unk_1BE0B8C30);
  sub_1BD0DE53C(&v17[v22], &qword_1EBD45480, &unk_1BE0B8C30);
  return (*(v72 + 56))(v73, 1, 1, v20);
}

uint64_t sub_1BD4BE8D4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PaymentPassMethodSheet(0);
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E60, &qword_1BE0DB110);
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v24 - v7;
  v9 = v1 + v3[6];
  if (*(*(v9 + *(type metadata accessor for Passes(0) + 28)) + 16) || PKOslo2024UIUpdatesEnabled() && *(*(v1 + v3[22]) + 16))
  {
    v10 = (v1 + v3[18]);
    v27 = v4;
    v11 = v10[1];
    *&v33[0] = *v10;
    *(&v33[0] + 1) = v11;
    sub_1BD0DDEBC();
    v26 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1BE048C84();
    v35 = sub_1BE0506C4();
    v36 = v12;
    v37 = v13 & 1;
    v38 = v14;
    v15 = sub_1BD4C36DC(v33);
    v24[1] = v24;
    v29 = v33[0];
    v30 = v33[1];
    v31 = v33[2];
    v32 = v34;
    MEMORY[0x1EEE9AC00](v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E68, &qword_1BE0DB118);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39618, &qword_1BE0DB120);
    v25 = a1;
    sub_1BD0DE4F4(&qword_1EBD47E70, &qword_1EBD47E68, &qword_1BE0DB118, MEMORY[0x1E6981F48]);
    sub_1BD10E438();
    sub_1BE051A34();
    v16 = &v8[*(v6 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE0, &qword_1BE0DAD40);
    sub_1BE0516C4();
    v17 = v26;
    sub_1BD4CCE58(v1, v26, type metadata accessor for PaymentPassMethodSheet);
    v18 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v19 = swift_allocObject();
    sub_1BD4CCEC0(v17, v19 + v18, type metadata accessor for PaymentPassMethodSheet);
    v20 = &v16[*(type metadata accessor for PaymentPassDefaultConfirmationModifier(0) + 20)];
    *v20 = sub_1BD4CE798;
    v20[1] = v19;
    v21 = v25;
    sub_1BD0DE204(v8, v25, &qword_1EBD47E60, &qword_1BE0DB110);
    return (*(v28 + 56))(v21, 0, 1, v6);
  }

  else
  {
    v23 = *(v28 + 56);

    return v23(a1, 1, 1, v6);
  }
}

uint64_t sub_1BD4BED10@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PaymentPassMethodSheet(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD469C0, &qword_1BE0D7A28);
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v10 = v1 + *(v3 + 24);
  if (*(v10 + *(type metadata accessor for Passes(0) + 32)) == 1)
  {
    v11 = sub_1BD4C7A7C();
    v13 = v12;
    sub_1BD4CCE58(v1, &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassMethodSheet);
    v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v15 = swift_allocObject();
    sub_1BD4CCEC0(v6, v15 + v14, type metadata accessor for PaymentPassMethodSheet);
    v16 = v1 + *(v3 + 132);
    v17 = *v16;
    v18 = *(v16 + 8);
    LOBYTE(v35) = v17;
    *(&v35 + 1) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516C4();
    v19 = v39;
    v20 = v40;
    v21 = sub_1BE0511D4();
    *&v35 = v11;
    *(&v35 + 1) = v13;
    *&v36 = sub_1BD4CE184;
    *(&v36 + 1) = v15;
    v37 = v19;
    LOBYTE(v38) = v20;
    *(&v38 + 1) = v21;
    sub_1BE052434();
    v23 = v22;
    sub_1BD4622D8();
    sub_1BE050DE4();
    v23, v24, v25, v26, v27, v28, v29, v30;
    v39 = v35;
    v40 = v36;
    v41 = v37;
    v42 = v38;
    sub_1BD4623B4(&v39);
    sub_1BD0DE204(v9, a1, &qword_1EBD469C0, &qword_1BE0D7A28);
    return (*(v34 + 56))(a1, 0, 1, v7);
  }

  else
  {
    v32 = *(v34 + 56);

    return v32(a1, 1, 1, v7);
  }
}

id sub_1BD4BF034()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = sub_1BE04C884();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for PaymentPassMethodSheet(0);
  sub_1BD70A520(v13);
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == *MEMORY[0x1E69BC9B8])
  {
    (*(v1 + 104))(v9, *MEMORY[0x1E69B80D8], v0);
    result = PKPassKitBundle();
    if (result)
    {
      v16 = result;
      v17 = sub_1BE04B6F4();

      (*(v1 + 8))(v9, v0);
      return v17;
    }

    __break(1u);
    goto LABEL_12;
  }

  v18 = *MEMORY[0x1E69B80D8];
  v19 = *(v1 + 104);
  if (v14 == *MEMORY[0x1E69BC9C8])
  {
    v19(v6, v18, v0);
    result = PKPassKitBundle();
    if (result)
    {
      v20 = result;
      v17 = sub_1BE04B6F4();

      (*(v1 + 8))(v6, v0);
      return v17;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v19(v3, v18, v0);
  result = PKPassKitBundle();
  if (result)
  {
    v21 = result;
    v17 = sub_1BE04B6F4();

    (*(v1 + 8))(v3, v0);
    (*(v11 + 8))(v13, v10);
    return v17;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1BD4BF3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PaymentPassMethodSheet(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47D38, &qword_1BE0DB020);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27[-1] - v9;
  v27[3] = &type metadata for PaymentSheetFeatureFlag.Wallet;
  v27[4] = sub_1BD259180();
  LOBYTE(v27[0]) = 0;
  v11 = sub_1BE04C584();
  __swift_destroy_boxed_opaque_existential_0(v27, v12, v13, v14, v15, v16, v17, v18);
  if (v11)
  {
    v19 = a1 + *(v4 + 144);
    v21 = *v19;
    v20 = *(v19 + 8);
    v27[0] = v21;
    v27[1] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B90, &qword_1BE0DAF08);
    sub_1BE0516A4();
    sub_1BD4CCE58(a1, &v27[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassMethodSheet);
    v22 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v23 = swift_allocObject();
    sub_1BD4CCEC0(&v27[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for PaymentPassMethodSheet);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B60, &unk_1BE0DAD90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47D48, &qword_1BE0DB028);
    sub_1BD0DE4F4(&qword_1EBD47D70, &unk_1EBD43B60, &unk_1BE0DAD90, MEMORY[0x1E69E6338]);
    sub_1BD4CDFF4();
    sub_1BD4CDAA8();
    sub_1BE0519D4();
    (*(v8 + 32))(a2, v10, v7);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  return (*(v8 + 56))(a2, v24, 1, v7);
}

uint64_t sub_1BD4BF6A4@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v49 = type metadata accessor for AvailablePass(0);
  v2 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - v6;
  v43 = type metadata accessor for PaymentPassMethodSheet(0);
  v44 = v1;
  v8 = v1 + *(v43 + 24);
  result = type metadata accessor for Passes(0);
  v45 = result;
  v46 = v8;
  v17 = *(v8 + *(result + 28));
  v48 = *(v17 + 16);
  if (v48)
  {
    v18 = 0;
    v19 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v18 >= *(v17 + 16))
      {
        __break(1u);
        return result;
      }

      v20 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v21 = *(v2 + 72);
      sub_1BD4CCE58(v17 + v20 + v21 * v18, v7, type metadata accessor for AvailablePass);
      v22 = *&v7[*(v49 + 60)];
      if (v22 >> 62)
      {
        if (sub_1BE053704())
        {
LABEL_8:
          sub_1BD4CCEC0(v7, v4, type metadata accessor for AvailablePass);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v50 = v19;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1BD531A40(0, v19[2] + 1, 1);
            v19 = v50;
          }

          v25 = v19[2];
          v24 = v19[3];
          if (v25 >= v24 >> 1)
          {
            sub_1BD531A40((v24 > 1), v25 + 1, 1);
            v19 = v50;
          }

          v19[2] = v25 + 1;
          result = sub_1BD4CCEC0(v4, v19 + v20 + v25 * v21, type metadata accessor for AvailablePass);
          goto LABEL_4;
        }
      }

      else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_8;
      }

      result = sub_1BD4CCF28(v7, type metadata accessor for AvailablePass);
LABEL_4:
      if (v48 == ++v18)
      {
        goto LABEL_16;
      }
    }
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_16:
  if (*(*(v46 + *(v45 + 36)) + 16) || v19[2])
  {
    v26 = v44;
    v27 = (v44 + *(v43 + 76));
    v28 = v27[1];
    v50 = *v27;
    v51 = v28;
    sub_1BD0DDEBC();
    sub_1BE048C84();
    v50 = sub_1BE0506C4();
    v51 = v29;
    v52 = v30 & 1;
    v53 = v31;
    MEMORY[0x1EEE9AC00](v50);
    *(&v42 - 2) = v19;
    *(&v42 - 1) = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47DA0, &qword_1BE0DB068);
    sub_1BD0DE4F4(&qword_1EBD47DA8, &qword_1EBD47DA0, &qword_1BE0DB068, MEMORY[0x1E6981F48]);
    v32 = v47;
    sub_1BE051A24();
    v19, v33, v34, v35, v36, v37, v38, v39;
    v40 = 0;
  }

  else
  {
    v19, v10, v11, v12, v13, v14, v15, v16;
    v40 = 1;
    v32 = v47;
  }

  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47DB0, &qword_1BE0DB070);
  return (*(*(v41 - 8) + 56))(v32, v40, 1, v41);
}

id sub_1BD4BFAA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for PaymentPassMethodSheet(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v17 = *(a1 + 40);
  v10 = *(a2 + *(v9 + 48));
  sub_1BD4CCE58(a2, &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassMethodSheet);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  sub_1BD4CCEC0(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PaymentPassMethodSheet);
  *a3 = v17;
  a3[1] = v10;
  a3[2] = sub_1BD4CDCD0;
  a3[3] = v12;
  v13 = v10;
  v14 = v17;

  return v14;
}

void sub_1BD4BFBFC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentPassMethodSheet(0);
  v5 = a2 + *(v4 + 96);
  v6 = *v5;
  if (*v5)
  {
    v7 = v4;
    v8 = *(v5 + 8);
    sub_1BE048964();
    if ((v6(a1) & 1) == 0 && a1 && (v15 = [a1 paymentPass]) != 0)
    {
      v16 = v15;
      v17 = [v15 localizedDescription];
      sub_1BE052434();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42150, &unk_1BE0DAED0);
      sub_1BE0516B4();
      v18 = *(a2 + *(v7 + 152) + 8);
      sub_1BE048964();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
      sub_1BE0516B4();
      sub_1BD0D4744(v6, v8, v19, v20, v21, v22, v23, v24);
      v18, v25, v26, v27, v28, v29, v30, v31;
    }

    else
    {

      sub_1BD0D4744(v6, v8, v9, v10, v11, v12, v13, v14);
    }
  }
}

uint64_t sub_1BD4BFDA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v5;
  a2[3] = v4;
  a2[4] = v6;
  sub_1BE048964();
  sub_1BE048C84();

  return sub_1BE048C84();
}

void sub_1BD4BFDF4(uint64_t a1)
{
  v2 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v153 = v149 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v155);
  v5 = (v149 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for AvailablePass(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PaymentPassMethodSheet(0);
  v11 = *(a1 + *(v10 + 40));
  if (!v11)
  {
    return;
  }

  v151 = v10;
  v12 = a1 + *(v10 + 24);
  v13 = type metadata accessor for Passes(0);
  v14 = *(v12 + *(v13 + 28));
  MEMORY[0x1EEE9AC00](v13);
  v152 = a1;
  v149[-2] = a1;
  v149[-1] = v11;
  v15 = v11;
  sub_1BE048C84();
  sub_1BD1CE7CC(sub_1BD4CCE38, &v149[-4], v14);
  v17 = v16;
  v149[1] = 0;
  v150 = v15;

  v154 = v17[2];
  if (v154)
  {
    v25 = 0;
    v26 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v25 >= v17[2])
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        return;
      }

      sub_1BD4CCE58(v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v25, v9, type metadata accessor for AvailablePass);
      sub_1BD4CCE58(v9, v5, type metadata accessor for WrappedPass);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          v34 = v153;
          sub_1BD4CCEC0(v5, v153, type metadata accessor for PlaceholderPass);
          v31 = *(v34 + 16);
          v33 = *(v34 + 24);
          sub_1BE048C84();
          sub_1BD4CCF28(v34, type metadata accessor for PlaceholderPass);
          goto LABEL_12;
        }

        v28 = *v5;
        v29 = [*v5 passIdentifier];
        if (!v29)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v28 = *v5;
        v29 = [*v5 uniqueID];
        if (!v29)
        {
          goto LABEL_56;
        }
      }

      v30 = v29;
      v31 = sub_1BE052434();
      v33 = v32;

LABEL_12:
      sub_1BD4CCF28(v9, type metadata accessor for AvailablePass);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1BD03B038(0, *(v26 + 2) + 1, 1, v26, v21, v22, v23, v24);
      }

      v36 = *(v26 + 2);
      v35 = *(v26 + 3);
      if (v36 >= v35 >> 1)
      {
        v26 = sub_1BD03B038((v35 > 1), v36 + 1, 1, v26, v21, v22, v23, v24);
      }

      ++v25;
      *(v26 + 2) = v36 + 1;
      v37 = &v26[16 * v36];
      *(v37 + 4) = v31;
      *(v37 + 5) = v33;
      if (v154 == v25)
      {
        goto LABEL_19;
      }
    }
  }

  v26 = MEMORY[0x1E69E7CC0];
LABEL_19:
  v17, v18, v19, v20, v21, v22, v23, v24;
  v154 = sub_1BD537298(v26);
  v26, v38, v39, v40, v41, v42, v43, v44;
  v52 = *(v152 + *(v151 + 84));
  v53 = *(v52 + 16);
  if (v53)
  {
    v54 = 0;
    v55 = v52 + 40;
    v155 = *(v52 + 16);
    v152 = v53 - 1;
    v56 = MEMORY[0x1E69E7CC0];
    v153 = v52 + 40;
LABEL_21:
    v57 = (v55 + 16 * v54);
    v58 = v54;
    while (v58 < *(v52 + 16))
    {
      v59 = *(v57 - 8);
      v60 = *v57;
      v54 = v58 + 1;
      v61 = *v57;
      sub_1BD11285C(&unk_1F3B8E350);
      v63 = v62;
      v64 = sub_1BD6CC328(v59, v62);

      v63, v65, v66, v67, v68, v69, v70, v71;
      if (v64)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v156 = v56;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BD532168(0, v56[2] + 1, 1, v47, v48, v49, v50, v51);
          v56 = v156;
        }

        v74 = v56[2];
        v73 = v56[3];
        if (v74 >= v73 >> 1)
        {
          sub_1BD532168((v73 > 1), v74 + 1, 1, v47, v48, v49, v50, v51);
          v56 = v156;
        }

        v56[2] = v74 + 1;
        v75 = &v56[2 * v74];
        *(v75 + 32) = v59;
        v75[5] = v60;
        v55 = v153;
        if (v152 != v58)
        {
          goto LABEL_21;
        }

        goto LABEL_33;
      }

      v57 += 2;
      ++v58;
      if (v155 == v54)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_55;
  }

  v56 = MEMORY[0x1E69E7CC0];
LABEL_33:
  v76 = 0;
  v77 = v56[2];
  v78 = MEMORY[0x1E69E7CC0];
LABEL_34:
  v79 = 16 * v76 + 40;
  while (v77 != v76)
  {
    if (v76 >= v56[2])
    {
      __break(1u);
      goto LABEL_54;
    }

    v80 = *(v56 + v79);
    v79 += 16;
    ++v76;
    if (v80)
    {
      v81 = v80;
      v82 = [v81 identifier];
      v83 = sub_1BE052434();
      v85 = v84;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_1BD03B038(0, *(v78 + 2) + 1, 1, v78, v48, v49, v50, v51);
      }

      v87 = *(v78 + 2);
      v86 = *(v78 + 3);
      if (v87 >= v86 >> 1)
      {
        v78 = sub_1BD03B038((v86 > 1), v87 + 1, 1, v78, v48, v49, v50, v51);
      }

      *(v78 + 2) = v87 + 1;
      v88 = &v78[16 * v87];
      *(v88 + 4) = v83;
      *(v88 + 5) = v85;
      goto LABEL_34;
    }
  }

  v56, v45, v46, v47, v48, v49, v50, v51;
  v89 = sub_1BD537298(v78);
  v78, v90, v91, v92, v93, v94, v95, v96;
  v97 = MEMORY[0x1E69E7CD0];
  v156 = MEMORY[0x1E69E7CD0];
  v98 = v154;
  v99 = sub_1BE052A24();
  v98, v100, v101, v102, v103, v104, v105, v106;
  v107 = v150;
  v108 = [v150 merchandisingIdentifiersForPassUniqueIDs_];

  if (v108)
  {
    v97 = sub_1BE052A34();
  }

  sub_1BD4C0580(v97, v109, v110, v111, v112, v113, v114, v115);
  v116 = sub_1BE052A24();
  v89, v117, v118, v119, v120, v121, v122, v123;
  v124 = [v107 merchandisingIdentifiersForCriteriaIdentifiers_];

  if (v124)
  {
    v132 = sub_1BE052A34();
  }

  else
  {
    v132 = MEMORY[0x1E69E7CD0];
  }

  sub_1BD4C0580(v132, v125, v126, v127, v128, v129, v130, v131);
  v140 = v156;
  if (v156[2])
  {
    v141 = sub_1BE052A24();
    v140, v142, v143, v144, v145, v146, v147, v148;
    [v107 updateMerchandisingDetailsIfNecessaryForMerchandisingIdentifiers_];
  }

  else
  {
    v156, v133, v134, v135, v136, v137, v138, v139;
  }
}

void sub_1BD4C0580(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = 0;
  v10 = a1 + 56;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 56);
  v14 = (v11 + 63) >> 6;
  if (v13)
  {
    while (1)
    {
      v15 = v9;
LABEL_9:
      v16 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v17 = (*(a1 + 48) + ((v15 << 10) | (16 * v16)));
      v18 = *v17;
      v19 = v17[1];
      sub_1BE048C84();
      sub_1BD2A5644(v27, v18, v19);
      v27[1], v20, v21, v22, v23, v24, v25, v26;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v15 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v15);
    ++v9;
    if (v13)
    {
      v9 = v15;
      goto LABEL_9;
    }
  }

  a1, a2, a3, a4, a5, a6, a7, a8;
}

id sub_1BD4C0684()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8, &qword_1BE0B8910);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v14 - v1;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x1E69B8068], v3, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v4 + 8))(v7, v3);
    v14[0] = v10;
    v14[1] = v12;
    sub_1BE04E1A4();
    v13 = sub_1BE04E1D4();
    (*(*(v13 - 8) + 56))(v2, 0, 1, v13);
    sub_1BD0DDEBC();
    return sub_1BE051724();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD4C0884@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  (*(v5 + 104))(v8, *MEMORY[0x1E69B8068], v4, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BE0B69E0;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1BD110550();
  *(v11 + 32) = v10;
  *(v11 + 40) = v9;
  sub_1BE048C84();
  v12 = sub_1BE04B714();
  v14 = v13;
  v11, v13, v15, v16, v17, v18, v19, v20;
  (*(v5 + 8))(v8, v4);
  v25[0] = v12;
  v25[1] = v14;
  sub_1BD0DDEBC();
  result = sub_1BE0506C4();
  *a2 = result;
  *(a2 + 8) = v22;
  *(a2 + 16) = v23 & 1;
  *(a2 + 24) = v24;
  return result;
}

uint64_t sub_1BD4C0A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a3;
  sub_1BE0528A4();
  v3[11] = sub_1BE052894();
  v5 = sub_1BE052844();
  v3[12] = v5;
  v3[13] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BD4C0AD0, v5, v4);
}

uint64_t sub_1BD4C0AD0()
{
  *(v0 + 40) = &type metadata for PaymentSheetFeatureFlag.Wallet;
  v1 = sub_1BD259180();
  *(v0 + 16) = 0;
  *(v0 + 48) = v1;
  v2 = sub_1BE04C584();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16), v3, v4, v5, v6, v7, v8, v9);
  if ((v2 & 1) != 0 && (v17 = *(v0 + 80), v18 = type metadata accessor for PaymentPassMethodSheet(0), *(v0 + 112) = v18, v19 = *(v17 + *(v18 + 104)), (*(v0 + 120) = v19) != 0))
  {
    sub_1BE048964();
    v20 = swift_task_alloc();
    *(v0 + 128) = v20;
    *v20 = v0;
    v20[1] = sub_1BD4C0BF8;

    return ProvisioningAvailableCredentialsProvider.availableCredentials()();
  }

  else
  {
    *(v0 + 88), v10, v11, v12, v13, v14, v15, v16;
    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_1BD4C0BF8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 136) = a1;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1BD4C0D20, v4, v3);
}

uint64_t sub_1BD4C0D20(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 136);
  v11 = *(v8 + 112);
  v10 = *(v8 + 120);
  v12 = *(v8 + 80);
  *(v8 + 88), a2, a3, a4, a5, a6, a7, a8;
  v13 = v12 + *(v11 + 144);
  v14 = *v13;
  v15 = *(v13 + 8);
  *(v8 + 56) = *v13;
  *(v8 + 64) = v15;
  *(v8 + 72) = v9;
  sub_1BE048964();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B90, &qword_1BE0DAF08);
  sub_1BE0516B4();
  v10, v16, v17, v18, v19, v20, v21, v22;
  v14, v23, v24, v25, v26, v27, v28, v29;
  v15, v30, v31, v32, v33, v34, v35, v36;
  v37 = *(v8 + 8);

  return v37();
}

uint64_t sub_1BD4C0E00@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = type metadata accessor for PaymentPassMethodSheet(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47D68, &qword_1BE0DB038);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - v11;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47D58, &qword_1BE0DB030);
  v13 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v15 = &v33 - v14;
  v16 = a1[1];
  v37 = *a1;
  v38 = v16;
  v39 = a1[2];
  sub_1BD4CCE58(a2, v8, type metadata accessor for PaymentPassMethodSheet);
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = (v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_1BD4CCEC0(v8, v19 + v17, type metadata accessor for PaymentPassMethodSheet);
  v20 = (v19 + v18);
  v21 = v38;
  *v20 = v37;
  v20[1] = v21;
  v20[2] = v39;
  v35 = &v37;
  sub_1BD4CE35C(&v37, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47D78, &qword_1BE0DB040);
  sub_1BD0DE4F4(&qword_1EBD47D80, &qword_1EBD47D78, &qword_1BE0DB040, MEMORY[0x1E69817F8]);
  sub_1BE051704();
  sub_1BE052434();
  v23 = v22;
  sub_1BD0DE4F4(&qword_1EBD47D60, &qword_1EBD47D68, &qword_1BE0DB038, MEMORY[0x1E697D680]);
  sub_1BE050DE4();
  v23, v24, v25, v26, v27, v28, v29, v30;
  (*(v10 + 8))(v12, v9);
  v31 = v34;
  sub_1BD0DE204(v15, v34, &qword_1EBD47D58, &qword_1BE0DB030);
  return (*(v13 + 56))(v31, 0, 1, v33);
}

void sub_1BD4C11B4(uint64_t a1, __int128 *a2)
{
  v23 = a2[1];
  v24 = *a2;
  v3 = *(a2 + 4);
  v4 = *(a2 + 5);
  v5 = (a1 + *(type metadata accessor for PaymentPassMethodSheet(0) + 108));
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  v10 = v5[4];
  v11 = v5[5];
  v12 = v5[6];
  v30 = *v5;
  v6 = v30;
  v31 = v7;
  v32 = v8;
  v33 = v9;
  v34 = v10;
  v35 = v11;
  v36 = v12;
  v26 = v24;
  v27 = v23;
  v28 = v3;
  v29 = v4;
  sub_1BD4CE35C(a2, v25);
  sub_1BD4CE3B8(v6, v7, v8, v9, v10, v11);
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47C50, &qword_1BE0DAF78);
  sub_1BE0516B4();
  v13 = v36;
  sub_1BD4CE414(v30, v31, v32, v33, v34, v35, v14, v15);
  v13, v16, v17, v18, v19, v20, v21, v22;
}

uint64_t sub_1BD4C12B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47D88, &unk_1BE0DB048);
  return sub_1BD4C1310(a1, a2 + *(v4 + 44));
}

uint64_t sub_1BD4C1310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v110 = sub_1BE04C894();
  v108 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v106 = &v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1BE04C764();
  v107 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v105 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v113 = &v104 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0, &qword_1BE0B7620);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v104 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v112 = &v104 - v10;
  v11 = sub_1BE051584();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 32);
  v16 = sub_1BE051544();
  (*(v12 + 104))(v14, *MEMORY[0x1E6981630], v11);
  v115 = sub_1BE0515E4();
  v16, v17, v18, v19, v20, v21, v22, v23;
  (*(v12 + 8))(v14, v11);
  sub_1BE051CD4();
  sub_1BE04E5E4();
  LOBYTE(v127) = 1;
  *&v117[6] = v119;
  *&v117[22] = v120;
  *&v117[38] = v121;
  v114 = sub_1BE050224();
  sub_1BE04E1F4();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = *a1;
  v33 = *(a1 + 8);
  v127 = v32;
  v128 = v33;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v34 = sub_1BE0506C4();
  v36 = v35;
  LOBYTE(v16) = v37;
  v39 = v38;
  v40 = sub_1BE051224();
  v41 = sub_1BE050564();
  v43 = v42;
  LOBYTE(v12) = v44;
  v46 = v45;
  v40, v42, v44, v45, v47, v48, v49, v50;
  sub_1BD0DDF10(v34, v36, (v16 & 1), v51, v52, v53, v54, v55);
  v39, v56, v57, v58, v59, v60, v61, v62;
  v127 = v41;
  v128 = v43;
  v63 = (v12 & 1);
  LOBYTE(v129) = v63;
  *(&v130 + 6) = v46;
  sub_1BE052434();
  v65 = v64;
  v66 = v112;
  sub_1BE050DE4();
  v65, v67, v68, v69, v70, v71, v72, v73;
  sub_1BD0DDF10(v41, v43, v63, v74, v75, v76, v77, v78);
  v46, v79, v80, v81, v82, v83, v84, v85;
  (*(v108 + 104))(v106, *MEMORY[0x1E69BCA00], v110);
  v86 = v113;
  sub_1BE04C754();
  v87 = v104;
  sub_1BD0DE19C(v66, v104, &qword_1EBD452C0, &qword_1BE0B7620);
  v116 = 1;
  v88 = v107;
  v89 = *(v107 + 16);
  v90 = v105;
  v91 = v109;
  v89(v105, v86, v109);
  v122 = v115;
  LOWORD(v123[0]) = 1;
  *(v123 + 2) = *v117;
  *(&v123[1] + 2) = *&v117[16];
  *(&v123[2] + 2) = *&v117[32];
  *&v123[3] = *&v117[46];
  BYTE8(v123[3]) = v114;
  *(&v123[3] + 9) = *v118;
  HIDWORD(v123[3]) = *&v118[3];
  *&v124 = v25;
  *(&v124 + 1) = v27;
  *&v125 = v29;
  *(&v125 + 1) = v31;
  v92 = v123[2];
  v93 = v124;
  v94 = v125;
  v95 = v111;
  *(v111 + 64) = v123[3];
  *(v95 + 80) = v93;
  v96 = v123[0];
  v97 = v123[1];
  *v95 = v122;
  *(v95 + 16) = v96;
  *(v95 + 32) = v97;
  *(v95 + 48) = v92;
  v126 = 0;
  *(v95 + 112) = 0;
  *(v95 + 96) = v94;
  v98 = v95;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47D90, &qword_1BE0DB058);
  sub_1BD0DE19C(v87, v98 + v99[12], &qword_1EBD452C0, &qword_1BE0B7620);
  v100 = v98 + v99[16];
  v101 = v116;
  *v100 = 0;
  *(v100 + 8) = v101;
  v89((v98 + v99[20]), v90, v91);
  sub_1BD0DE19C(&v122, &v127, &qword_1EBD47D98, &qword_1BE0DB060);
  v102 = *(v88 + 8);
  v102(v113, v91);
  sub_1BD0DE53C(v112, &qword_1EBD452C0, &qword_1BE0B7620);
  v102(v90, v91);
  sub_1BD0DE53C(v87, &qword_1EBD452C0, &qword_1BE0B7620);
  v130 = *v117;
  v127 = v115;
  v128 = 0;
  v129 = 1;
  v131 = *&v117[16];
  *v132 = *&v117[32];
  *&v132[14] = *&v117[46];
  v133 = v114;
  *v134 = *v118;
  *&v134[3] = *&v118[3];
  v135 = v25;
  v136 = v27;
  v137 = v29;
  v138 = v31;
  v139 = 0;
  return sub_1BD0DE53C(&v127, &qword_1EBD47D98, &qword_1BE0DB060);
}

double sub_1BD4C19B4(char a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04D084();
  v8 = sub_1BE04D204();
  v9 = sub_1BE052C54();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1BD026000, v8, v9, "Toggled peer payment", v10, 2u);
    MEMORY[0x1BFB45F20](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v11 = (v2 + *(type metadata accessor for PaymentPassMethodSheet(0) + 156));
  v12 = *v11;
  v13 = *(v11 + 1);
  v15[16] = v12;
  v16 = v13;
  v15[15] = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E78, &qword_1BE0DB128);
  sub_1BE0516B4();
  return result;
}

void sub_1BD4C1B48()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B20, &unk_1BE0DAD80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for PeerPaymentModel(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v30 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1BE04D214();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v16 = sub_1BE04D204();
  v17 = sub_1BE052C54();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1BD026000, v16, v17, "Tapped peer payment terms", v18, 2u);
    MEMORY[0x1BFB45F20](v18, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  v19 = type metadata accessor for PaymentPassMethodSheet(0);
  sub_1BD0DE19C(v1 + *(v19 + 32), v8, &qword_1EBD45480, &unk_1BE0B8C30);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1BD0DE53C(v8, &qword_1EBD45480, &unk_1BE0B8C30);
    return;
  }

  v20 = v30;
  sub_1BD4CCEC0(v8, v30, type metadata accessor for PeerPaymentModel);
  if (![*v20 termsAcceptanceRequired])
  {
    v25 = v28;
    sub_1BD4CCE58(v20 + *(v9 + 20), v28, type metadata accessor for AvailablePass);
    v26 = _s11DetailSheetOMa(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
    sub_1BD0DE19C(v25, v29, &unk_1EBD43B20, &unk_1BE0DAD80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8, &qword_1BE0DAD48);
    sub_1BE0516B4();
    sub_1BD0DE53C(v25, &unk_1EBD43B20, &unk_1BE0DAD80);
    goto LABEL_10;
  }

  v21 = [objc_opt_self() sharedService];
  if (!v21)
  {
    __break(1u);
    goto LABEL_13;
  }

  v22 = v21;
  v23 = [v21 targetDevice];

  if (!v23)
  {
LABEL_13:
    __break(1u);
    return;
  }

  aBlock[4] = sub_1BD4C818C;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD20815C;
  aBlock[3] = &block_descriptor_104_0;
  v24 = _Block_copy(aBlock);
  [v23 updateAccountWithCompletion_];
  _Block_release(v24);
  swift_unknownObjectRelease();
LABEL_10:
  sub_1BD4CCF28(v20, type metadata accessor for PeerPaymentModel);
}

uint64_t sub_1BD4C204C@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v88 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47F30, &unk_1BE0E6C30);
  v86 = *(v6 - 8);
  v87 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v73 - v7;
  v8 = type metadata accessor for PaymentPassMethodSheet(0);
  v79 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v80 = v9;
  v82 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AvailablePass(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v81 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v73 = &v73 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39738, &qword_1BE0DA100);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v73 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v74 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v73 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v73 - v24;
  v26 = *&a1[*(v10 + 56)];
  if (v26 >> 62)
  {
    v27 = sub_1BE053704();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v84 = a2;
  if (v27 > 1)
  {
    v28 = 0;
    v78 = 0;
    goto LABEL_11;
  }

  v29 = *&a1[*(v10 + 60)];
  if (v29 >> 62)
  {
    if (sub_1BE053704())
    {
      goto LABEL_7;
    }
  }

  else if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:
    v30 = a2;
    v28 = a2;
    v78 = a2;
    goto LABEL_11;
  }

  v78 = 0;
  v28 = a2;
LABEL_11:
  v75 = sub_1BD4C290C(a1, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE0, &qword_1BE0DAD40);
  v83 = v3;
  sub_1BE0516A4();
  sub_1BD4CCE58(a1, v22, type metadata accessor for AvailablePass);
  (*(v11 + 56))(v22, 0, 1, v10);
  v31 = *(v15 + 48);
  sub_1BD0DE19C(v25, v17, &qword_1EBD520A0, &qword_1BE0B9840);
  sub_1BD0DE19C(v22, &v17[v31], &qword_1EBD520A0, &qword_1BE0B9840);
  v76 = v11;
  v32 = *(v11 + 48);
  if (v32(v17, 1, v10) == 1)
  {
    sub_1BD0DE53C(v22, &qword_1EBD520A0, &qword_1BE0B9840);
    sub_1BD0DE53C(v25, &qword_1EBD520A0, &qword_1BE0B9840);
    v33 = v32(&v17[v31], 1, v10);
    v34 = v83;
    if (v33 == 1)
    {
      sub_1BD0DE53C(v17, &qword_1EBD520A0, &qword_1BE0B9840);
      v35 = 2;
      v36 = v78;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v37 = v74;
  sub_1BD0DE19C(v17, v74, &qword_1EBD520A0, &qword_1BE0B9840);
  if (v32(&v17[v31], 1, v10) == 1)
  {
    sub_1BD0DE53C(v22, &qword_1EBD520A0, &qword_1BE0B9840);
    sub_1BD0DE53C(v25, &qword_1EBD520A0, &qword_1BE0B9840);
    sub_1BD4CCF28(v37, type metadata accessor for AvailablePass);
    v34 = v83;
LABEL_16:
    sub_1BD0DE53C(v17, &qword_1EBD39738, &qword_1BE0DA100);
    v36 = v78;
LABEL_17:
    v35 = v75 & 1;
    goto LABEL_18;
  }

  v70 = v73;
  sub_1BD4CCEC0(&v17[v31], v73, type metadata accessor for AvailablePass);
  v71 = v37;
  v72 = sub_1BD498D50(v37, v70);
  sub_1BD4CCF28(v70, type metadata accessor for AvailablePass);
  sub_1BD0DE53C(v22, &qword_1EBD520A0, &qword_1BE0B9840);
  sub_1BD0DE53C(v25, &qword_1EBD520A0, &qword_1BE0B9840);
  sub_1BD4CCF28(v71, type metadata accessor for AvailablePass);
  sub_1BD0DE53C(v17, &qword_1EBD520A0, &qword_1BE0B9840);
  v34 = v83;
  v36 = v78;
  if ((v72 & 1) == 0)
  {
    goto LABEL_17;
  }

  v35 = 2;
LABEL_18:
  v38 = v82;
  sub_1BD4CCE58(v34, v82, type metadata accessor for PaymentPassMethodSheet);
  v39 = v81;
  sub_1BD4CCE58(a1, v81, type metadata accessor for AvailablePass);
  v40 = (*(v79 + 80) + 16) & ~*(v79 + 80);
  v41 = (v80 + *(v76 + 80) + v40) & ~*(v76 + 80);
  v42 = (v77 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  sub_1BD4CCEC0(v38, &v43[v40], type metadata accessor for PaymentPassMethodSheet);
  v44 = sub_1BD4CCEC0(v39, &v43[v41], type metadata accessor for AvailablePass);
  v45 = v84;
  *&v43[v42] = v84;
  MEMORY[0x1EEE9AC00](v44);
  *(&v73 - 4) = a1;
  *(&v73 - 3) = v36;
  *(&v73 - 16) = v35;
  type metadata accessor for PassRow(0);
  sub_1BD4CD3A0(&qword_1EBD397D8, type metadata accessor for PassRow, &unk_1BE0ED358);
  v46 = v45;
  sub_1BE048964();
  v47 = v85;
  sub_1BE051704();
  if (v35)
  {
    if (v35 != 1)
    {
      v58 = 1;
      v55 = 0xE700000000000000;
      v57 = v87;
      v56 = v88;
      goto LABEL_24;
    }

    v55 = 0xE90000000000006BLL;
  }

  else
  {
    v55 = 0xE400000000000000;
  }

  v57 = v87;
  v56 = v88;
  v58 = sub_1BE053B84();
LABEL_24:
  v43, v48, v49, v50, v51, v52, v53, v54;

  v55, v59, v60, v61, v62, v63, v64, v65;
  KeyPath = swift_getKeyPath();
  v67 = swift_allocObject();
  *(v67 + 16) = v58 & 1;
  (*(v86 + 32))(v56, v47, v57);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47F20, &qword_1BE0DB200);
  v69 = (v56 + *(result + 36));
  *v69 = KeyPath;
  v69[1] = sub_1BD10DF54;
  v69[2] = v67;
  return result;
}

uint64_t sub_1BD4C290C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v101 - v11;
  v13 = *(v2 + 8);
  if (v13 == 2)
  {
    v20 = sub_1BD492F00();
    v16 = v21;
    v17 = v2 + *(type metadata accessor for PaymentPassMethodSheet(0) + 24);
    sub_1BD0DE19C(v17, v9, &qword_1EBD520A0, &qword_1BE0B9840);
    v22 = type metadata accessor for AvailablePass(0);
    if ((*(*(v22 - 8) + 48))(v9, 1, v22) == 1)
    {
      v19 = v9;
      goto LABEL_7;
    }

    sub_1BD4CCE58(v9, v6, type metadata accessor for WrappedPass);
    sub_1BD4CCF28(v9, type metadata accessor for AvailablePass);
    v61 = sub_1BD492F00();
    v63 = v62;
    sub_1BD4CCF28(v6, type metadata accessor for WrappedPass);
    if (v20 == v61 && v16 == v63)
    {
      v16, v64, v65, v66, v67, v68, v69, v70;
      v63, v94, v95, v96, v97, v98, v99, v100;
      if (!a2)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v72 = sub_1BE053B84();
      v16, v73, v74, v75, v76, v77, v78, v79;
      v63, v80, v81, v82, v83, v84, v85, v86;
      if ((v72 & 1) == 0)
      {
        goto LABEL_8;
      }

      if (!a2)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    if (v13)
    {
      goto LABEL_8;
    }

    v14 = sub_1BD492F00();
    v16 = v15;
    v17 = v2 + *(type metadata accessor for PaymentPassMethodSheet(0) + 24);
    sub_1BD0DE19C(v17, v12, &qword_1EBD520A0, &qword_1BE0B9840);
    v18 = type metadata accessor for AvailablePass(0);
    if ((*(*(v18 - 8) + 48))(v12, 1, v18) == 1)
    {
      v19 = v12;
LABEL_7:
      sub_1BD0DE53C(v19, &qword_1EBD520A0, &qword_1BE0B9840);
      v16, v23, v24, v25, v26, v27, v28, v29;
      goto LABEL_8;
    }

    sub_1BD4CCE58(v12, v6, type metadata accessor for WrappedPass);
    sub_1BD4CCF28(v12, type metadata accessor for AvailablePass);
    v32 = sub_1BD492F00();
    v34 = v33;
    sub_1BD4CCF28(v6, type metadata accessor for WrappedPass);
    if (v14 != v32 || v16 != v34)
    {
      v43 = sub_1BE053B84();
      v16, v44, v45, v46, v47, v48, v49, v50;
      v34, v51, v52, v53, v54, v55, v56, v57;
      if ((v43 & 1) == 0)
      {
        goto LABEL_8;
      }

      if (a2)
      {
        goto LABEL_16;
      }

LABEL_24:
      v30 = 1;
      return v30 & 1;
    }

    v16, v35, v36, v37, v38, v39, v40, v41;
    v34, v87, v88, v89, v90, v91, v92, v93;
    if (!a2)
    {
      goto LABEL_24;
    }
  }

LABEL_16:
  v58 = *(v17 + *(type metadata accessor for Passes(0) + 20));
  if (v58)
  {
    sub_1BD0E5E8C(0, &qword_1EBD43BA0, 0x1E69B8B40);
    v59 = a2;
    v60 = v58;
    v30 = sub_1BE053074();

    return v30 & 1;
  }

LABEL_8:
  v30 = 0;
  return v30 & 1;
}

void sub_1BD4C2D30(uint64_t a1, void *a2)
{
  v108 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B20, &unk_1BE0DAD80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v98 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v98 - v11;
  v13 = type metadata accessor for AvailablePass(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PaymentPassMethodSheet(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD4CCE58(v2, v19, type metadata accessor for PaymentPassMethodSheet);
  sub_1BD4CCE58(a1, v16, type metadata accessor for AvailablePass);
  if (!PKOslo2024UIUpdatesEnabled())
  {
    v49 = *&v19[v17[13]];
    sub_1BD4CCE58(v16, v12, type metadata accessor for AvailablePass);
    (*(v14 + 56))(v12, 0, 1, v13);
LABEL_7:
    v50 = &v19[v17[39]];
    v51 = *v50;
    v52 = *(v50 + 1);
    v110 = v51;
    v111 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E78, &qword_1BE0DB128);
    sub_1BE0516A4();
    v49(v12, v108, v109);
    v53 = sub_1BD0DE53C(v12, &qword_1EBD520A0, &qword_1BE0B9840);
    (*&v19[v17[23]])(v53);
LABEL_8:
    sub_1BD4CCF28(v16, type metadata accessor for AvailablePass);
    sub_1BD4CCF28(v19, type metadata accessor for PaymentPassMethodSheet);
    return;
  }

  v107 = v14;
  v20 = *(v2 + v17[10]);
  if (!v20)
  {
    v49 = *&v19[v17[13]];
    sub_1BD4CCE58(v16, v12, type metadata accessor for AvailablePass);
    (*(v107 + 56))(v12, 0, 1, v13);
    goto LABEL_7;
  }

  v106 = v13;
  v103 = v6;
  v104 = v2;
  v21 = v20;
  v105 = a1;
  sub_1BD49C81C();
  v23 = v22;
  v24 = sub_1BE052404();
  v25 = [v21 eligiblePaymentOfferCriteriaForPassUniqueID_];

  v33 = v108;
  if (v25)
  {
    sub_1BD0E5E8C(0, &unk_1EBD496A0, 0x1E69B8C60);
    v34 = sub_1BE052744();
    v23, v35, v36, v37, v38, v39, v40, v41;
  }

  else
  {
    v23, v26, v27, v28, v29, v30, v31, v32;
    v34 = MEMORY[0x1E69E7CC0];
  }

  v99 = v34 >> 62;
  if (v34 >> 62)
  {
    goto LABEL_40;
  }

  v54 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v54)
  {
LABEL_41:
    v34, v42, v43, v44, v45, v46, v47, v48;
    v93 = *&v19[v17[13]];
    sub_1BD4CCE58(v16, v12, type metadata accessor for AvailablePass);
    (*(v107 + 56))(v12, 0, 1, v106);
    v94 = &v19[v17[39]];
    v95 = *v94;
    v96 = *(v94 + 1);
    v110 = v95;
    v111 = v96;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E78, &qword_1BE0DB128);
    sub_1BE0516A4();
    v93(v12, v33, v109);
    v97 = sub_1BD0DE53C(v12, &qword_1EBD520A0, &qword_1BE0B9840);
    (*&v19[v17[23]])(v97);

    goto LABEL_8;
  }

LABEL_13:
  v98 = v9;
  v101 = v17;
  v102 = v21;
  v100 = v16;
  v21 = 0;
  v33 = v34 & 0xC000000000000001;
  v17 = (v34 & 0xFFFFFFFFFFFFFF8);
  v9 = &selRef_thumbnailWidth;
  while (1)
  {
    if (v33)
    {
      v55 = MEMORY[0x1BFB40900](v21, v34);
    }

    else
    {
      if (v21 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v55 = *(v34 + 8 * v21 + 32);
    }

    v56 = v55;
    v16 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      v54 = sub_1BE053704();
      if (!v54)
      {
        goto LABEL_41;
      }

      goto LABEL_13;
    }

    if ([v55 type] == 1)
    {
      break;
    }

    v21 = v21 + 1;
    if (v16 == v54)
    {
      v34, v57, v58, v59, v60, v61, v62, v63;
      goto LABEL_33;
    }
  }

  objc_opt_self();
  v64 = swift_dynamicCastObjCClass();
  if (!v64)
  {
    v34, v65, v66, v67, v68, v69, v70, v71;
    goto LABEL_32;
  }

  v72 = v64;
  if (v99)
  {
    v73 = sub_1BE053704();
  }

  else
  {
    v73 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34, v65, v66, v67, v68, v69, v70, v71;
  if (v73 != 1)
  {
LABEL_32:

LABEL_33:
    v75 = v107;
    v76 = v108;
    v78 = v100;
    v77 = v101;
LABEL_34:
    v80 = *&v19[v77[13]];
    sub_1BD4CCE58(v78, v12, type metadata accessor for AvailablePass);
    (*(v75 + 56))(v12, 0, 1, v106);
    v81 = &v19[v77[39]];
    v82 = *v81;
    v83 = *(v81 + 1);
    v110 = v82;
    v111 = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E78, &qword_1BE0DB128);
    sub_1BE0516A4();
    v80(v12, v76, v109);
    sub_1BD0DE53C(v12, &qword_1EBD520A0, &qword_1BE0B9840);
    sub_1BD4CCF28(v78, type metadata accessor for AvailablePass);
    sub_1BD4CCF28(v19, type metadata accessor for PaymentPassMethodSheet);
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B60, &unk_1BE0DAEA8);
    v85 = *(v84 + 48);
    v86 = *(v84 + 64);
    v87 = v98;
    sub_1BD4CCE58(v105, v98, type metadata accessor for AvailablePass);
    *(v87 + v85) = v76;
    v88 = v104 + v77[39];
    v89 = *v88;
    v90 = *(v88 + 8);
    v110 = v89;
    v111 = v90;
    v91 = v76;
    sub_1BE0516A4();
    *(v87 + v86) = v109;
    v92 = _s11DetailSheetOMa(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v92 - 8) + 56))(v87, 0, 1, v92);
    sub_1BD0DE19C(v87, v103, &unk_1EBD43B20, &unk_1BE0DAD80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8, &qword_1BE0DAD48);
    sub_1BE0516B4();

    sub_1BD0DE53C(v87, &unk_1EBD43B20, &unk_1BE0DAD80);
    return;
  }

  v74 = [v72 suppressPayInFull];
  v75 = v107;
  v76 = v108;
  v78 = v100;
  v77 = v101;
  if (!v74)
  {

    goto LABEL_34;
  }

  sub_1BD4CCF28(v100, type metadata accessor for AvailablePass);
  sub_1BD4CCF28(v19, type metadata accessor for PaymentPassMethodSheet);
  v79 = v104;
  if ((sub_1BD4C290C(v105, 0) & 1) != 0 && *(v79 + v77[11]))
  {
    (*(v79 + v77[23]))();
  }

  else
  {
    sub_1BD6E27DC(v105, v76, v72);
  }
}

id sub_1BD4C3614@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD397E0, &qword_1BE0DB0D0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 64);
  sub_1BD4CCE58(a1, a4, type metadata accessor for AvailablePass);
  *(a4 + v8) = a2;
  *(a4 + v9) = 0;
  type metadata accessor for PassRow.Pass(0);
  swift_storeEnumTagMultiPayload();
  *(a4 + *(type metadata accessor for PassRow(0) + 20)) = a3;

  return a2;
}

_OWORD *sub_1BD4C36DC@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for PaymentPassMethodSheet(0);
  v4 = v3 - 8;
  v57 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v58 = v5;
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BD74();
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v15 = *(v4 + 40);
  v16 = v1;
  sub_1BD0DE19C(v1 + v15, &v53 - v13, &qword_1EBD45480, &unk_1BE0B8C30);
  v17 = type metadata accessor for PeerPaymentModel(0);
  v18 = *(*(v17 - 8) + 48);
  if (v18(v14, 1, v17) == 1)
  {
    sub_1BD0DE53C(v14, &qword_1EBD45480, &unk_1BE0B8C30);
    goto LABEL_11;
  }

  v53 = v6;
  v19 = v14[*(v17 + 64)];
  sub_1BD4CCF28(v14, type metadata accessor for PeerPaymentModel);
  if ((v19 & 1) == 0)
  {
    goto LABEL_11;
  }

  v20 = v16 + v15;
  v21 = v16;
  sub_1BD0DE19C(v20, v11, &qword_1EBD45480, &unk_1BE0B8C30);
  if (v18(v11, 1, v17) == 1)
  {
    sub_1BD0DE53C(v11, &qword_1EBD45480, &unk_1BE0B8C30);
    goto LABEL_11;
  }

  v22 = v11[*(v17 + 48)];
  sub_1BD4CCF28(v11, type metadata accessor for PeerPaymentModel);
  if (v22)
  {
    goto LABEL_11;
  }

  v24 = v54;
  v23 = v55;
  v25 = v56;
  (*(v55 + 104))(v54, *MEMORY[0x1E69B80A0], v56);
  result = PKPassKitBundle();
  if (result)
  {
    v27 = result;
    v28 = sub_1BE04B6F4();
    v30 = v29;

    (*(v23 + 8))(v24, v25);
    v31 = v53;
    sub_1BD4CCE58(v21, v53, type metadata accessor for PaymentPassMethodSheet);
    v32 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v33 = swift_allocObject();
    sub_1BD4CCEC0(v31, v33 + v32, type metadata accessor for PaymentPassMethodSheet);
    v34 = objc_allocWithZone(PKTextRangeHyperlink);
    v35 = sub_1BE052404();
    aBlock[4] = sub_1BD4D5E40;
    v60 = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_101_2;
    v36 = _Block_copy(aBlock);
    v60, v37, v38, v39, v40, v41, v42, v43;
    v44 = [v34 initWithLinkText:v35 action:v36];
    _Block_release(v36);

    if (v44)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
      result = swift_allocObject();
      result[1] = xmmword_1BE0B7020;
      *(result + 4) = v44;
      v52 = 4;
LABEL_12:
      *a1 = result;
      a1[1] = v52;
      a1[2] = 0;
      a1[3] = v28;
      a1[5] = 0;
      a1[6] = 0;
      a1[4] = v30;
      return result;
    }

    v30, v45, v46, v47, v48, v49, v50, v51;
LABEL_11:
    result = 0;
    v52 = 0;
    v28 = 0;
    v30 = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD4C3BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v68 = a2;
  v73 = a3;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD469C8, &qword_1BE0D7A30);
  v4 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v69 = &v66 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47CB8, &qword_1BE0DAFC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v72 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v66 - v9;
  v11 = type metadata accessor for PaymentPassMethodSheet(0);
  v12 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v74 = v13;
  v75 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E80, &qword_1BE0DB130);
  v70 = *(v14 - 8);
  v71 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v79 = &v66 - v17;
  v18 = *(a1 + v11[10]);
  if (v18)
  {
    v19 = a1 + v11[6];
    v20 = type metadata accessor for Passes(0);
    v21 = *(v19 + *(v20 + 28));
    MEMORY[0x1EEE9AC00](v20);
    v64 = a1;
    v65 = v18;
    v22 = v18;
    sub_1BE048C84();
    sub_1BD1CE7CC(sub_1BD4D5E24, (&v66 - 4), v21);
    v24 = v23;
  }

  else
  {
    v25 = a1 + v11[6];
    v24 = *(v25 + *(type metadata accessor for Passes(0) + 28));
    sub_1BE048C84();
  }

  v80 = v24;
  v26 = v75;
  sub_1BD4CCE58(a1, v75, type metadata accessor for PaymentPassMethodSheet);
  v27 = *(v12 + 80);
  v28 = swift_allocObject();
  sub_1BD4CCEC0(v26, v28 + ((v27 + 16) & ~v27), type metadata accessor for PaymentPassMethodSheet);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47DC8, &qword_1BE0DB090);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E88, &qword_1BE0DB138);
  sub_1BD0DE4F4(&qword_1EBD47DD8, &qword_1EBD47DC8, &qword_1BE0DB090, MEMORY[0x1E69E6338]);
  sub_1BD4CE8A8();
  v64 = sub_1BD4CD3A0(&qword_1EBD47DE8, type metadata accessor for AvailablePass, &unk_1BE0D9F88);
  sub_1BE0519D4();
  if (PKOslo2024UIUpdatesEnabled())
  {
    v29 = 1;
  }

  else
  {
    v30 = v69;
    sub_1BD4BED10(v69);
    sub_1BD0DE204(v30, v10, &qword_1EBD469C8, &qword_1BE0D7A30);
    v29 = 0;
  }

  (*(v4 + 56))(v10, v29, 1, v76);
  v31 = PKOslo2024UIUpdatesEnabled();
  v77 = v10;
  if (v31 && (v32 = *(a1 + v11[22]), *(v32 + 16)))
  {
    v67 = sub_1BD4C628C();
    v76 = v33;
    v34 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
    v35 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v36 = [v34 stringFromNumber_];

    if (v36)
    {
      v69 = sub_1BE052434();
      v38 = v37;
    }

    else
    {

      v69 = 0;
      v38 = 0xE000000000000000;
    }

    v42 = v75;
    sub_1BD4CCE58(a1, v75, type metadata accessor for PaymentPassMethodSheet);
    v43 = (v27 + 24) & ~v27;
    v44 = (v74 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    *(v45 + 16) = v68;
    sub_1BD4CCEC0(v42, v45 + v43, type metadata accessor for PaymentPassMethodSheet);
    v75 = v45;
    v46 = (v45 + v44);
    v39 = v67;
    v47 = v76;
    *v46 = v67;
    v46[1] = v47;
    sub_1BE048964();
    sub_1BE048C84();
    v74 = sub_1BD4CE9A8;
    v40 = v69;
    v41 = v38;
  }

  else
  {
    v39 = 0;
    v75 = 0;
    v76 = 0;
    v40 = 0;
    v41 = 0;
    v74 = 0;
  }

  v48 = v70;
  v49 = v71;
  v50 = *(v70 + 16);
  v51 = v78;
  v50(v78, v79, v71);
  v52 = v72;
  sub_1BD0DE19C(v77, v72, &qword_1EBD47CB8, &qword_1BE0DAFC0);
  v53 = v73;
  v50(v73, v51, v49);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47EA8, &qword_1BE0DB148);
  sub_1BD0DE19C(v52, &v53[*(v54 + 48)], &qword_1EBD47CB8, &qword_1BE0DAFC0);
  v55 = &v53[*(v54 + 64)];
  v57 = v75;
  v56 = v76;
  *v55 = v39;
  v55[1] = v56;
  v55[2] = v40;
  v55[3] = v41;
  v58 = v41;
  v59 = v74;
  v55[4] = v74;
  v55[5] = v57;
  sub_1BD0EE87C(v39, v56, v40, v58, v59, v57);
  sub_1BD0DE53C(v77, &qword_1EBD47CB8, &qword_1BE0DAFC0);
  v60 = *(v48 + 8);
  v60(v79, v49);
  sub_1BD4CE958(v39, v56, v40, v58, v59, v57, v61, v62);
  sub_1BD0DE53C(v52, &qword_1EBD47CB8, &qword_1BE0DAFC0);
  return (v60)(v78, v49);
}

uint64_t sub_1BD4C4378@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v118 = a2;
  v121 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47EA0, &qword_1BE0DB140);
  v119 = *(v5 - 8);
  v120 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v117 = &KeyPath - v6;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47EB8, &qword_1BE0DB178);
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v93 = &KeyPath - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47EC0, &unk_1BE0DB180);
  v114 = *(v8 - 8);
  v115 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v94 = &KeyPath - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39FF0, &unk_1BE0B9CA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v106 = &KeyPath - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47EC8, &qword_1BE0DB190);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v116 = &KeyPath - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v112 = &KeyPath - v15;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47ED0, &qword_1BE0DB198);
  MEMORY[0x1EEE9AC00](v108);
  v110 = &KeyPath - v16;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47ED8, &qword_1BE0DB1A0);
  MEMORY[0x1EEE9AC00](v109);
  v105 = &KeyPath - v17;
  v18 = type metadata accessor for AvailablePass(0);
  v100 = *(v18 - 8);
  v19 = *(v100 + 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &KeyPath - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PaymentPassMethodSheet(0);
  v99 = *(v21 - 8);
  v22 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &KeyPath - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47EE0, &qword_1BE0DB1A8);
  v103 = *(v24 - 8);
  v104 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v102 = &KeyPath - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v98 = &KeyPath - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47EE8, &qword_1BE0DB1B0);
  MEMORY[0x1EEE9AC00](v28);
  v101 = &KeyPath - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &KeyPath - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47EF0, &qword_1BE0DB1B8);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v36.n128_f64[0] = MEMORY[0x1EEE9AC00](v34);
  v111 = &KeyPath - v37;
  v113 = v18;
  v38 = a1;
  v39 = *&a1[*(v18 + 56)];
  v40 = v39 >> 62;
  if (v39 >> 62)
  {
    v97 = v35;
    v86 = sub_1BE053704();
    v35 = v97;
    if (v86)
    {
LABEL_3:
      v97 = v35;
      if ((v39 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x1BFB40900](0, v39, v36);
      }

      else
      {
        if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_29;
        }

        v41 = *(v39 + 32);
      }

      v107 = v41;
      if (v40)
      {
        v42 = sub_1BE053704();
      }

      else
      {
        v42 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v42 < 2)
      {
        v62 = v38;
        sub_1BD4C204C(v38, v107, v32);
        v64 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47EF8, &qword_1BE0DB1C0) + 36)];
        *v64 = xmmword_1BE0D82B0;
        *(v64 + 1) = xmmword_1BE0D82B0;
        v64[32] = 0;
        v65 = sub_1BD4C52A4(v38);
        v66 = &v32[*(v28 + 36)];
        *v66 = v65;
        v66[1] = v67;
        v68 = type metadata accessor for ListRowGestureActionsModifier(0);
        v66[2] = 0;
        v66[3] = 0;
        v69 = *(v68 + 24);
        *(v66 + v69) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8, &qword_1BE0BAD40);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE19C(v32, v110, &qword_1EBD47EE8, &qword_1BE0DB1B0);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE4F4(&qword_1EBD47F00, &qword_1EBD47ED8, &qword_1BE0DB1A0, MEMORY[0x1E6981F48]);
        sub_1BD4CEA3C();
        v28 = v111;
        sub_1BE04F9A4();
      }

      else
      {
        v43 = v118;
        sub_1BD4C204C(v38, 0, v32);
        v44 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47EF8, &qword_1BE0DB1C0) + 36)];
        *v44 = xmmword_1BE0D82B0;
        *(v44 + 1) = xmmword_1BE0D82B0;
        v44[32] = 0;
        v91 = v38;
        v45 = sub_1BD4C52A4(v38);
        v92 = v28;
        v46 = &v32[*(v28 + 36)];
        *v46 = v45;
        v46[1] = v47;
        v48 = type metadata accessor for ListRowGestureActionsModifier(0);
        v46[2] = 0;
        v46[3] = 0;
        v49 = *(v48 + 24);
        *(v46 + v49) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8, &qword_1BE0BAD40);
        swift_storeEnumTagMultiPayload();
        v122 = v39;
        KeyPath = swift_getKeyPath();
        sub_1BD4CCE58(v43, &KeyPath - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassMethodSheet);
        sub_1BD4CCE58(v38, &KeyPath - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AvailablePass);
        v50 = (*(v99 + 80) + 16) & ~*(v99 + 80);
        v51 = (v22 + v100[80] + v50) & ~v100[80];
        v52 = swift_allocObject();
        sub_1BD4CCEC0(v23, v52 + v50, type metadata accessor for PaymentPassMethodSheet);
        sub_1BD4CCEC0(v20, v52 + v51, type metadata accessor for AvailablePass);
        sub_1BE048C84();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396A0, &qword_1BE0B88E0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47F40, &qword_1BE0DB210);
        sub_1BD0DE4F4(&qword_1EBD396B0, &qword_1EBD396A0, &qword_1BE0B88E0, MEMORY[0x1E69E6338]);
        sub_1BD10E640();
        sub_1BD4CECEC();
        v53 = v98;
        sub_1BE0519C4();
        v54 = v101;
        sub_1BD0DE19C(v32, v101, &qword_1EBD47EE8, &qword_1BE0DB1B0);
        v55 = v102;
        v56 = v103;
        v57 = *(v103 + 16);
        v58 = v104;
        v57(v102, v53, v104);
        v100 = v32;
        v59 = v105;
        sub_1BD0DE19C(v54, v105, &qword_1EBD47EE8, &qword_1BE0DB1B0);
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47F60, &unk_1BE0DB220);
        v57((v59 + *(v60 + 48)), v55, v58);
        v61 = *(v56 + 8);
        v61(v55, v58);
        sub_1BD0DE53C(v54, &qword_1EBD47EE8, &qword_1BE0DB1B0);
        sub_1BD0DE19C(v59, v110, &qword_1EBD47ED8, &qword_1BE0DB1A0);
        swift_storeEnumTagMultiPayload();
        sub_1BD0DE4F4(&qword_1EBD47F00, &qword_1EBD47ED8, &qword_1BE0DB1A0, MEMORY[0x1E6981F48]);
        sub_1BD4CEA3C();
        v28 = v111;
        v62 = v91;
        sub_1BE04F9A4();
        v63 = v59;
        v32 = v100;
        sub_1BD0DE53C(v63, &qword_1EBD47ED8, &qword_1BE0DB1A0);
        v61(v53, v58);
      }

      v22 = v112;
      sub_1BD0DE53C(v32, &qword_1EBD47EE8, &qword_1BE0DB1B0);
      if (v62[*(v113 + 20)] != 1)
      {
        goto LABEL_18;
      }

      v70 = v106;
      sub_1BD0DE19C(&v62[*(v113 + 28)], v106, &qword_1EBD39FF0, &unk_1BE0B9CA0);
      v71 = type metadata accessor for BalanceInfo(0);
      if ((*(*(v71 - 8) + 48))(v70, 1, v71) == 1)
      {
        sub_1BD0DE53C(v70, &qword_1EBD39FF0, &unk_1BE0B9CA0);
LABEL_18:
        v75 = 1;
LABEL_19:
        (*(v114 + 56))(v22, v75, 1, v115);
        v76 = v97;
        sub_1BD0DE19C(v28, v97, &qword_1EBD47EF0, &qword_1BE0DB1B8);
        v77 = v116;
        sub_1BD0DE19C(v22, v116, &qword_1EBD47EC8, &qword_1BE0DB190);
        v78 = v117;
        sub_1BD0DE19C(v76, v117, &qword_1EBD47EF0, &qword_1BE0DB1B8);
        v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47F38, &qword_1BE0DB208);
        sub_1BD0DE19C(v77, v78 + *(v79 + 48), &qword_1EBD47EC8, &qword_1BE0DB190);

        sub_1BD0DE53C(v22, &qword_1EBD47EC8, &qword_1BE0DB190);
        sub_1BD0DE53C(v28, &qword_1EBD47EF0, &qword_1BE0DB1B8);
        sub_1BD0DE53C(v77, &qword_1EBD47EC8, &qword_1BE0DB190);
        sub_1BD0DE53C(v76, &qword_1EBD47EF0, &qword_1BE0DB1B8);
        v80 = v121;
        sub_1BD0DE204(v78, v121, &qword_1EBD47EA0, &qword_1BE0DB140);
        return (*(v119 + 56))(v80, 0, 1, v120);
      }

      v72 = *(v70 + 8);
      sub_1BD4CCF28(v70, type metadata accessor for BalanceInfo);
      if (v72 != 1)
      {
        goto LABEL_18;
      }

      if (*v118 == 10)
      {
        v73 = 1;
        v39 = v96;
        v40 = v95;
        v74 = v94;
LABEL_22:
        (*(v40 + 56))(v74, v73, 1, v39);
        sub_1BD0DE204(v74, v22, &qword_1EBD47EC0, &unk_1BE0DB180);
        v75 = 0;
        goto LABEL_19;
      }

      v82 = v62;
      v3 = v93;
      sub_1BD4CCE58(v82, v93, type metadata accessor for AvailablePass);
      v39 = v96;
      v40 = v95;
      if (qword_1EBD36CF0 == -1)
      {
LABEL_21:
        v83 = *&qword_1EBDAB3C8 + 16.0 + 16.0;
        v84 = v3 + *(v39 + 36);
        *v84 = 0;
        *(v84 + 8) = v83;
        *(v84 + 16) = xmmword_1BE0D82B0;
        *(v84 + 32) = 0;
        v85 = v3;
        v74 = v94;
        sub_1BD0DE204(v85, v94, &qword_1EBD47EB8, &qword_1BE0DB178);
        v73 = 0;
        goto LABEL_22;
      }

LABEL_29:
      swift_once();
      goto LABEL_21;
    }
  }

  else if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v87 = v120;
  v88 = *(v119 + 56);
  v89 = v121;

  return v88(v89, 1, 1, v87, v36);
}

uint64_t (*sub_1BD4C52A4(uint64_t a1))()
{
  v3 = type metadata accessor for AvailablePass(0);
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = type metadata accessor for PaymentPassMethodSheet(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD4CCE58(a1, v13, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BD4CCF28(v13, type metadata accessor for WrappedPass);
      return 0;
    }

    sub_1BD4CCEC0(v13, v10, type metadata accessor for PlaceholderPass);
    v16 = [objc_allocWithZone(MEMORY[0x1E69B91E8]) init];
    [v16 setCardType_];
    sub_1BD4CCF28(v10, type metadata accessor for PlaceholderPass);
  }

  else
  {
    v15 = *v13;
    v16 = [*v13 secureElementPass];

    if (!v16)
    {
      return 0;
    }
  }

  if ([v16 supportsDefaultCardSelection])
  {
    v17 = [v16 contactlessActivationState];

    if (!v17)
    {
      sub_1BD4CCE58(v1, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassMethodSheet);
      sub_1BD4CCE58(a1, &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AvailablePass);
      v18 = (*(v6 + 80) + 16) & ~*(v6 + 80);
      v19 = (v7 + *(v23 + 80) + v18) & ~*(v23 + 80);
      v20 = swift_allocObject();
      sub_1BD4CCEC0(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v18, type metadata accessor for PaymentPassMethodSheet);
      sub_1BD4CCEC0(&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for AvailablePass);
      return sub_1BD4D2348;
    }
  }

  else
  {
  }

  return 0;
}

double sub_1BD4C565C@<D0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AvailablePass(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for PaymentPassMethodSheet(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v25[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *a1;
  sub_1BD4CCE58(a2, v15, type metadata accessor for PaymentPassMethodSheet);
  sub_1BD4CCE58(a3, v11, type metadata accessor for AvailablePass);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = (v14 + *(v9 + 80) + v17) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_1BD4CCEC0(v15, v20 + v17, type metadata accessor for PaymentPassMethodSheet);
  sub_1BD4CCEC0(v11, v20 + v18, type metadata accessor for AvailablePass);
  *(v20 + v19) = v16;
  v26 = v16;
  v27 = a2;
  v28 = a3;
  sub_1BD4CE73C();
  v21 = v16;
  sub_1BE051704();
  if (qword_1EBD36CF0 != -1)
  {
    swift_once();
  }

  v22 = *&qword_1EBDAB3C8 + 16.0 + 16.0;
  v23 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47F40, &qword_1BE0DB210) + 36);
  *v23 = 0;
  *(v23 + 8) = v22;
  result = 0.0;
  *(v23 + 16) = xmmword_1BE0D82B0;
  *(v23 + 32) = 0;
  return result;
}

void sub_1BD4C5934(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v61 - v4;
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD4CCE58(a1, v15, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BD4CCF28(v15, type metadata accessor for WrappedPass);
      return;
    }

    sub_1BD4CCEC0(v15, v12, type metadata accessor for PlaceholderPass);
    v18 = [objc_allocWithZone(MEMORY[0x1E69B91E8]) init];
    [v18 setCardType_];
    sub_1BD4CCF28(v12, type metadata accessor for PlaceholderPass);
  }

  else
  {
    v17 = *v15;
    v18 = [*v15 secureElementPass];

    if (!v18)
    {
      return;
    }
  }

  if (![v18 supportsDefaultCardSelection])
  {

    return;
  }

  v19 = [v18 contactlessActivationState];

  if (!v19)
  {
    v63 = v1;
    v20 = sub_1BD49C81C();
    v22 = v21;
    sub_1BE04D1E4();
    sub_1BE048C84();
    v23 = sub_1BE04D204();
    v24 = sub_1BE052C54();
    v22, v25, v26, v27, v28, v29, v30, v31;
    if (os_log_type_enabled(v23, v24))
    {
      v32 = swift_slowAlloc();
      v62 = v20;
      v33 = v32;
      v34 = swift_slowAlloc();
      v65[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_1BD123690(v62, v22, v65);
      _os_log_impl(&dword_1BD026000, v23, v24, "Updating default pass to pass with unique id: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34, v35, v36, v37, v38, v39, v40, v41);
      MEMORY[0x1BFB45F20](v34, -1, -1);
      MEMORY[0x1BFB45F20](v33, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    v42 = v63;
    v43 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
    v44 = sub_1BE052404();
    v22, v45, v46, v47, v48, v49, v50, v51;
    [v43 setDefaultPaymentPassUniqueIdentifier_];

    v52 = type metadata accessor for PaymentPassMethodSheet(0);
    v53 = *(v42 + *(v52 + 52));
    sub_1BD4CCE58(a1, v5, type metadata accessor for AvailablePass);
    v54 = type metadata accessor for AvailablePass(0);
    (*(*(v54 - 8) + 56))(v5, 0, 1, v54);
    v55 = *(a1 + *(v54 + 56));
    if (v55 >> 62)
    {
      if (sub_1BE053704())
      {
        goto LABEL_13;
      }
    }

    else if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_13:
      if ((v55 & 0xC000000000000001) != 0)
      {
        v56 = MEMORY[0x1BFB40900](0, v55);
      }

      else
      {
        if (!*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v56 = *(v55 + 32);
      }

      v57 = v56;
      goto LABEL_20;
    }

    v57 = 0;
LABEL_20:
    v58 = (v42 + *(v52 + 156));
    v59 = *v58;
    v60 = *(v58 + 1);
    LOBYTE(v65[0]) = v59;
    v65[1] = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E78, &qword_1BE0DB128);
    sub_1BE0516A4();
    v53(v5, v57, v64);

    sub_1BD0DE53C(v5, &qword_1EBD520A0, &qword_1BE0B9840);
  }
}

uint64_t sub_1BD4C5EA0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  sub_1BD4CCE58(a2, &v11 - v7, type metadata accessor for AvailablePass);
  v9 = type metadata accessor for AvailablePass(0);
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  type metadata accessor for PaymentPassMethodSheet(0);
  sub_1BD0DE19C(v8, v5, &qword_1EBD520A0, &qword_1BE0B9840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE0, &qword_1BE0DAD40);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v8, &qword_1EBD520A0, &qword_1BE0B9840);
}

uint64_t sub_1BD4C6004(uint64_t a1, uint64_t a2, void *a3)
{
  if (sub_1BD4C290C(a1, 0))
  {
    return 1;
  }

  sub_1BD49C81C();
  v5 = v4;
  v6 = sub_1BE052404();
  v7 = [a3 eligiblePaymentOfferCriteriaForPassUniqueID_];

  if (v7)
  {
    sub_1BD0E5E8C(0, &unk_1EBD496A0, 0x1E69B8C60);
    v15 = sub_1BE052744();
    v5, v16, v17, v18, v19, v20, v21, v22;
  }

  else
  {
    v5, v8, v9, v10, v11, v12, v13, v14;
    v15 = MEMORY[0x1E69E7CC0];
  }

  sub_1BD49C81C();
  v24 = v23;
  v25 = sub_1BE052404();
  v24, v26, v27, v28, v29, v30, v31, v32;
  v33 = [a3 paymentOfferCriteriaForPassUniqueID_];

  if (v33)
  {
    sub_1BD0E5E8C(0, &unk_1EBD496A0, 0x1E69B8C60);
    v41 = sub_1BE052744();

    if (!(v15 >> 62))
    {
LABEL_7:
      v42 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_8;
    }
  }

  else
  {
    v41 = 0;
    if (!(v15 >> 62))
    {
      goto LABEL_7;
    }
  }

  v42 = sub_1BE053704();
LABEL_8:
  v15, v34, v35, v36, v37, v38, v39, v40;
  if (v42)
  {
LABEL_9:
    v41, v43, v44, v45, v46, v47, v48, v49;
    return 1;
  }

  if (!v41)
  {
    return 1;
  }

  if (v41 >> 62)
  {
LABEL_30:
    v51 = sub_1BE053704();
    if (!v51)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v51 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v51)
    {
      goto LABEL_9;
    }
  }

  v52 = 0;
  while (1)
  {
    if ((v41 & 0xC000000000000001) != 0)
    {
      v53 = MEMORY[0x1BFB40900](v52, v41);
    }

    else
    {
      if (v52 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v53 = *(v41 + 8 * v52 + 32);
    }

    v54 = v53;
    v55 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if ([v53 type] == 1)
    {
      break;
    }

    ++v52;
    if (v55 == v51)
    {
      goto LABEL_9;
    }
  }

  v41, v56, v57, v58, v59, v60, v61, v62;
  objc_opt_self();
  v63 = swift_dynamicCastObjCClass();
  if (v63)
  {
    v64 = [v63 suppressPayInFull];

    return v64 ^ 1;
  }

  return 1;
}

id sub_1BD4C628C()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v9;
  v12 = *MEMORY[0x1E69B8068];
  v13 = *(v2 + 104);
  if (*v0 == 13)
  {
    v13(v7, v12, v1, v10);
    result = PKPassKitBundle();
    if (result)
    {
      v15 = result;
      v16 = sub_1BE04B6F4();
      v11 = v7;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (*v0 == 9)
  {
    v13(&v17 - v9, v12, v1, v10);
    result = PKPassKitBundle();
    if (result)
    {
      v15 = result;
      v16 = sub_1BE04B6F4();
LABEL_9:

      (*(v2 + 8))(v11, v1);
      return v16;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13(v4, v12, v1, v10);
  result = PKPassKitBundle();
  if (result)
  {
    v15 = result;
    v16 = sub_1BE04B6F4();
    v11 = v4;
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1BD4C64F0(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  sub_1BD6B2184(10, 2u, 0);
  v58 = *(a2 + *(type metadata accessor for PaymentPassMethodSheet(0) + 88));
  KeyPath = swift_getKeyPath();
  sub_1BD4CD3A0(&qword_1EBD47EB0, type metadata accessor for PushNavigationStackModel, &unk_1BE0E54CC);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1BE04B594();
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v14 = swift_getKeyPath();
  sub_1BE04B5B4();
  v14, v15, v16, v17, v18, v19, v20, v21;
  swift_beginAccess();
  sub_1BD4CDC28();
  sub_1BE04E904();
  swift_endAccess();
  a4, v22, v23, v24, v25, v26, v27, v28;
  v58, v29, v30, v31, v32, v33, v34, v35;
  v36 = swift_getKeyPath();
  sub_1BE04B5A4();
  a4, v37, v38, v39, v40, v41, v42, v43;
  v58, v44, v45, v46, v47, v48, v49, v50;
  v36, v51, v52, v53, v54, v55, v56, v57;
}

uint64_t sub_1BD4C66B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v50 = a2;
  v59 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47DB8, &qword_1BE0DB078);
  v60 = *(v5 - 8);
  v61 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8, &qword_1BE0DB080);
  v54 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v55 = v10;
  v56 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v49 - v12;
  v13 = type metadata accessor for PaymentPassMethodSheet(0);
  v14 = v13 - 8;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47DC0, &qword_1BE0DB088);
  v57 = *(v18 - 8);
  v58 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v62 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v49 - v21;
  v66 = a1;
  sub_1BD4CCE58(a2, v17, type metadata accessor for PaymentPassMethodSheet);
  v23 = *(v15 + 80);
  v24 = (v23 + 16) & ~v23;
  v51 = v24 + v16;
  v52 = v23 | 7;
  v25 = swift_allocObject();
  v53 = v24;
  sub_1BD4CCEC0(v17, v25 + v24, type metadata accessor for PaymentPassMethodSheet);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47DC8, &qword_1BE0DB090);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47DD0, &qword_1BE0DB098);
  sub_1BD0DE4F4(&qword_1EBD47DD8, &qword_1EBD47DC8, &qword_1BE0DB090, MEMORY[0x1E69E6338]);
  sub_1BD0DE4F4(&qword_1EBD47DE0, &qword_1EBD47DD0, &qword_1BE0DB098, MEMORY[0x1E6981F48]);
  sub_1BD4CD3A0(&qword_1EBD47DE8, type metadata accessor for AvailablePass, &unk_1BE0D9F88);
  v26 = v22;
  v27 = v50;
  sub_1BE0519D4();
  v28 = v27 + *(v14 + 32);
  v29 = type metadata accessor for Passes(0);
  v30 = *(v28 + *(v29 + 36));
  if (*(*(v28 + *(v29 + 28)) + 16))
  {
    v31 = type metadata accessor for UnavailablePass(0);
    (*(*(v31 - 8) + 56))(v65, 1, 1, v31);
    sub_1BE048C84();
  }

  else
  {
    sub_1BE048C84();
    sub_1BD4941F8(v65);
  }

  v66 = v30;
  sub_1BD4CCE58(v27, v17, type metadata accessor for PaymentPassMethodSheet);
  v32 = v56;
  sub_1BD0DE19C(v65, v56, &qword_1EBD3C3F8, &qword_1BE0DB080);
  v33 = (v51 + *(v54 + 80)) & ~*(v54 + 80);
  v34 = swift_allocObject();
  sub_1BD4CCEC0(v17, v34 + v53, type metadata accessor for PaymentPassMethodSheet);
  sub_1BD0DE204(v32, v34 + v33, &qword_1EBD3C3F8, &qword_1BE0DB080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47DF0, &qword_1BE0DB0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47DF8, &qword_1BE0E6360);
  sub_1BD0DE4F4(&qword_1EBD47E00, &qword_1EBD47DF0, &qword_1BE0DB0A0, MEMORY[0x1E69E6338]);
  sub_1BD4CE5A4();
  sub_1BD4CD3A0(&qword_1EBD47E10, type metadata accessor for UnavailablePass, &unk_1BE0DA060);
  v35 = v63;
  sub_1BE0519D4();
  v36 = v57;
  v37 = v58;
  v38 = *(v57 + 16);
  v39 = v62;
  v49 = v26;
  v38(v62, v26, v58);
  v41 = v60;
  v40 = v61;
  v42 = *(v60 + 16);
  v42(v64, v35, v61);
  v43 = v59;
  v38(v59, v39, v37);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E18, &qword_1BE0DB0A8);
  v45 = v64;
  v42(&v43[*(v44 + 48)], v64, v40);
  v46 = *(v41 + 8);
  v46(v63, v40);
  sub_1BD0DE53C(v65, &qword_1EBD3C3F8, &qword_1BE0DB080);
  v47 = *(v36 + 8);
  v47(v49, v37);
  v46(v45, v40);
  return (v47)(v62, v37);
}

uint64_t sub_1BD4C6E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E30, &qword_1BE0DB0C0);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E38, &qword_1BE0DB0C8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v43 = type metadata accessor for PassRow(0);
  MEMORY[0x1EEE9AC00](v43);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47DF8, &qword_1BE0E6360);
  MEMORY[0x1EEE9AC00](v14);
  v44 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v41 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v49 = &v41 - v20;
  v21 = a1;
  v22 = *(a1 + *(type metadata accessor for AvailablePass(0) + 60));
  v47 = v11;
  v48 = v8;
  if (!(v22 >> 62))
  {
    result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result == 1)
    {
      goto LABEL_3;
    }

LABEL_8:
    v24 = a2;
    v25 = 0;
    goto LABEL_9;
  }

  if (sub_1BE053704() > 1)
  {
    goto LABEL_8;
  }

  result = sub_1BE053704();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v22 & 0xC000000000000001) != 0)
  {
    v24 = a2;
    v25 = MEMORY[0x1BFB40900](0, v22);
  }

  else
  {
    if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v24 = a2;
    v25 = *(v22 + 32);
  }

LABEL_9:
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD397E0, &qword_1BE0DB0D0);
  v27 = *(v26 + 48);
  v28 = *(v26 + 64);
  sub_1BD4CCE58(v21, v13, type metadata accessor for AvailablePass);
  *&v13[v27] = v25;
  v13[v28] = 1;
  type metadata accessor for PassRow.Pass(0);
  swift_storeEnumTagMultiPayload();
  v13[*(v43 + 20)] = 0;
  sub_1BD4CCEC0(v13, v18, type metadata accessor for PassRow);
  v29 = &v18[*(v14 + 36)];
  *v29 = xmmword_1BE0D82B0;
  *(v29 + 1) = xmmword_1BE0D82B0;
  v29[32] = 0;
  v30 = v49;
  sub_1BD0DE204(v18, v49, &qword_1EBD47DF8, &qword_1BE0E6360);
  if (v22 >> 62)
  {
    v31 = sub_1BE053704();
  }

  else
  {
    v31 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = v24;
  v34 = v47;
  v33 = v48;
  if (v31 <= 1)
  {
    v38 = 1;
    v37 = v45;
    v36 = v46;
  }

  else
  {
    v50 = v22;
    swift_getKeyPath();
    sub_1BE048C84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396A0, &qword_1BE0B88E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E48, &qword_1BE0DB108);
    sub_1BD0DE4F4(&qword_1EBD396B0, &qword_1EBD396A0, &qword_1BE0B88E0, MEMORY[0x1E69E6338]);
    sub_1BD10E640();
    sub_1BD4CE68C(&qword_1EBD47E50, &qword_1EBD47E48, &qword_1BE0DB108, sub_1BD4CE73C);
    v35 = v42;
    v30 = v49;
    sub_1BE0519C4();
    v37 = v45;
    v36 = v46;
    (*(v45 + 32))(v34, v35, v46);
    v38 = 0;
  }

  v39 = v44;
  (*(v37 + 56))(v34, v38, 1, v36);
  sub_1BD0DE19C(v30, v39, &qword_1EBD47DF8, &qword_1BE0E6360);
  sub_1BD0DE19C(v34, v33, &qword_1EBD47E38, &qword_1BE0DB0C8);
  sub_1BD0DE19C(v39, v32, &qword_1EBD47DF8, &qword_1BE0E6360);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E40, &unk_1BE0DB0D8);
  sub_1BD0DE19C(v33, v32 + *(v40 + 48), &qword_1EBD47E38, &qword_1BE0DB0C8);
  sub_1BD0DE53C(v34, &qword_1EBD47E38, &qword_1BE0DB0C8);
  sub_1BD0DE53C(v30, &qword_1EBD47DF8, &qword_1BE0E6360);
  sub_1BD0DE53C(v33, &qword_1EBD47E38, &qword_1BE0DB0C8);
  return sub_1BD0DE53C(v39, &qword_1EBD47DF8, &qword_1BE0E6360);
}

id sub_1BD4C7404@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  if (qword_1EBD36CF0 != -1)
  {
    v6 = v2;
    v5 = a2;
    swift_once();
    v2 = v6;
    a2 = v5;
  }

  v3 = *&qword_1EBDAB3C8 + 16.0 + 16.0;
  *a2 = v2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = v3;
  *(a2 + 32) = xmmword_1BE0D82B0;
  *(a2 + 48) = 0;

  return v2;
}

double sub_1BD4C74B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a3;
  v80 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E20, &qword_1BE0DB0B0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v73 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8, &qword_1BE0DB080);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v75 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v73 - v13;
  v15 = type metadata accessor for UnavailablePass(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v74 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v73 - v19;
  v79 = type metadata accessor for PassRow(0);
  MEMORY[0x1EEE9AC00](v79);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v77 = v20;
  v78 = &v73 - v24;
  sub_1BD4CCE58(a1, v20, type metadata accessor for UnavailablePass);
  v25 = a2 + *(type metadata accessor for PaymentPassMethodSheet(0) + 24);
  v26 = *(v25 + *(type metadata accessor for Passes(0) + 40));
  sub_1BD4CCE58(a1, v14, type metadata accessor for UnavailablePass);
  (*(v16 + 56))(v14, 0, 1, v15);
  v27 = *(v7 + 56);
  sub_1BD0DE19C(v14, v9, &qword_1EBD3C3F8, &qword_1BE0DB080);
  sub_1BD0DE19C(v76, &v9[v27], &qword_1EBD3C3F8, &qword_1BE0DB080);
  v28 = *(v16 + 48);
  if (v28(v9, 1, v15) != 1)
  {
    v30 = v75;
    sub_1BD0DE19C(v9, v75, &qword_1EBD3C3F8, &qword_1BE0DB080);
    if (v28(&v9[v27], 1, v15) == 1)
    {
      sub_1BD0DE53C(v14, &qword_1EBD3C3F8, &qword_1BE0DB080);
      sub_1BD4CCF28(v30, type metadata accessor for UnavailablePass);
      goto LABEL_6;
    }

    v31 = v74;
    sub_1BD4CCEC0(&v9[v27], v74, type metadata accessor for UnavailablePass);
    v32 = sub_1BD492F00();
    v34 = v33;
    v36 = sub_1BD492F00();
    v42 = v35;
    if (v32 == v36 && v34 == v35)
    {
      v34, v35, v36, v37, v38, v39, v40, v41;
      v42, v43, v44, v45, v46, v47, v48, v49;
    }

    else
    {
      v50 = sub_1BE053B84();
      v34, v51, v52, v53, v54, v55, v56, v57;
      v42, v58, v59, v60, v61, v62, v63, v64;
      v29 = 0;
      if ((v50 & 1) == 0)
      {
LABEL_12:
        sub_1BD0DE53C(v14, &qword_1EBD3C3F8, &qword_1BE0DB080);
        sub_1BD4CCF28(v31, type metadata accessor for UnavailablePass);
        sub_1BD4CCF28(v30, type metadata accessor for UnavailablePass);
        sub_1BD0DE53C(v9, &qword_1EBD3C3F8, &qword_1BE0DB080);
        goto LABEL_13;
      }
    }

    v65 = *(v15 + 28);
    v29 = sub_1BD498408(*(v30 + v65), *(v30 + v65 + 8), *(v30 + v65 + 16), *(v31 + v65), *(v31 + v65 + 8), *(v31 + v65 + 16));
    goto LABEL_12;
  }

  sub_1BD0DE53C(v14, &qword_1EBD3C3F8, &qword_1BE0DB080);
  if (v28(&v9[v27], 1, v15) != 1)
  {
LABEL_6:
    sub_1BD0DE53C(v9, &qword_1EBD47E20, &qword_1BE0DB0B0);
    v29 = 0;
    goto LABEL_13;
  }

  sub_1BD0DE53C(v9, &qword_1EBD3C3F8, &qword_1BE0DB080);
  v29 = 1;
LABEL_13:
  v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E28, &qword_1BE0DB0B8) + 48);
  sub_1BD4CCEC0(v77, v22, type metadata accessor for UnavailablePass);
  v22[v66] = v26;
  type metadata accessor for PassRow.Pass(0);
  swift_storeEnumTagMultiPayload();
  v67 = v29 & 1;
  v68 = v78;
  v22[*(v79 + 20)] = v67;
  sub_1BD4CCEC0(v22, v68, type metadata accessor for PassRow);
  v69 = v68;
  v70 = v80;
  sub_1BD4CCEC0(v69, v80, type metadata accessor for PassRow);
  v71 = v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47DF8, &qword_1BE0E6360) + 36);
  result = 0.0;
  *v71 = xmmword_1BE0D82B0;
  *(v71 + 16) = xmmword_1BE0D82B0;
  *(v71 + 32) = 0;
  return result;
}

id sub_1BD4C7A7C()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v9;
  v12 = *MEMORY[0x1E69B8068];
  v13 = *(v2 + 104);
  if (*v0 == 9)
  {
    v13(v7, v12, v1, v10);
    result = PKPassKitBundle();
    if (result)
    {
      v15 = result;
      v16 = sub_1BE04B6F4();
      v11 = v7;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (*v0 == 10)
  {
    v13(&v17 - v9, v12, v1, v10);
    result = PKPassKitBundle();
    if (result)
    {
      v15 = result;
      v16 = sub_1BE04B6F4();
LABEL_9:

      (*(v2 + 8))(v11, v1);
      return v16;
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13(v4, v12, v1, v10);
  result = PKPassKitBundle();
  if (result)
  {
    v15 = result;
    v16 = sub_1BE04B6F4();
    v11 = v4;
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1BD4C7CE4()
{
  v1 = v0;
  v2 = type metadata accessor for PaymentPassMethodSheet(0);
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = [objc_opt_self() sharedService];
  v6 = [objc_allocWithZone(MEMORY[0x1E69B8D48]) initWithWebService:v5 paymentOffersController:*(v1 + v2[10])];

  if (v6)
  {
    v7 = v1 + v2[33];
    v8 = *v7;
    v9 = *(v7 + 8);
    LOBYTE(aBlock) = v8;
    v26 = v9;
    v31 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516B4();
    sub_1BD6B2184(4, 2u, 0);
    v10 = v1 + v2[6];
    v11 = *(v10 + *(type metadata accessor for Passes(0) + 44));
    if (v11)
    {
      type metadata accessor for PKPaymentNetwork(0);
      v11 = sub_1BE052724();
    }

    [v6 setAllowedPaymentNetworks_];

    [v6 setIncludePendingVerificationCredentials_];
    sub_1BD4CCE58(v1, &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassMethodSheet);
    v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v13 = swift_allocObject();
    sub_1BD4CCEC0(&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for PaymentPassMethodSheet);
    *(v13 + ((v4 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
    v29 = sub_1BD4CE19C;
    v30 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = sub_1BD3CC8C0;
    v28 = &block_descriptor_106;
    v14 = _Block_copy(&aBlock);
    v15 = v30;
    v16 = v6;
    v15, v17, v18, v19, v20, v21, v22, v23;
    [v16 preflightWithCompletion_];
    _Block_release(v14);
  }
}

uint64_t sub_1BD4C7FB4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B20, &unk_1BE0DAD80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20[-v10 - 8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440, &qword_1BE0DAEA0);
  v13 = *(v12 + 48);
  v14 = &v11[*(v12 + 64)];
  sub_1BD0DE19C(a1, v11, &qword_1EBD520A0, &qword_1BE0B9840);
  *&v11[v13] = a2;
  *(v14 + 4) = *(a3 + 32);
  v15 = *(a3 + 16);
  *v14 = *a3;
  *(v14 + 1) = v15;
  v16 = _s11DetailSheetOMa(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
  type metadata accessor for PaymentPassMethodSheet(0);
  sub_1BD0DE19C(v11, v8, &unk_1EBD43B20, &unk_1BE0DAD80);
  v17 = a2;
  sub_1BD10D494(a3, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8, &qword_1BE0DAD48);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v11, &unk_1EBD43B20, &unk_1BE0DAD80);
}

void sub_1BD4C818C(uint64_t a1)
{
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v7 = [objc_opt_self() sharedInstance];
    if (v7)
    {
      v8 = v7;
      aBlock[4] = sub_1BD4C83BC;
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD3F08C0;
      aBlock[3] = &block_descriptor_107_1;
      v9 = _Block_copy(aBlock);
      v10 = v6;
      [v8 presentPeerPaymentTermsAndConditionsWithAccount:a1 orientation:v10 completion:v9];
      _Block_release(v9);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1BE04D084();
    v11 = sub_1BE04D204();
    v12 = sub_1BE052C54();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1BD026000, v11, v12, "Unable to present peer payment terms acceptance flow", v13, 2u);
      MEMORY[0x1BFB45F20](v13, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1BD4C83BC()
{
  v0 = sub_1BE04D214();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D084();
  v4 = sub_1BE04D204();
  v5 = sub_1BE052C54();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1BD026000, v4, v5, "Presented peer payment terms acceptance flow", v6, 2u);
    MEMORY[0x1BFB45F20](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_1BD4C84F0(char a1, void *a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B20, &unk_1BE0DAD80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27[-v12];
  v14 = (a3 + *(type metadata accessor for PaymentPassMethodSheet(0) + 132));
  v15 = *v14;
  v16 = *(v14 + 1);
  LOBYTE(v29) = v15;
  v30 = v16;
  LOBYTE(v28[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  if (a1)
  {
    *v13 = a4;
    v17 = _s11DetailSheetOMa(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v17 - 8) + 56))(v13, 0, 1, v17);
    sub_1BD0DE19C(v13, v10, &unk_1EBD43B20, &unk_1BE0DAD80);
    v18 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8, &qword_1BE0DAD48);
    sub_1BE0516B4();
    v19 = v13;
    v20 = &unk_1EBD43B20;
    v21 = &unk_1BE0DAD80;
LABEL_6:
    sub_1BD0DE53C(v19, v20, v21);
    return;
  }

  if (a2)
  {
    v22 = a2;
    sub_1BD2B1EAC(a2, &v29);
    v23 = v30;
    if (v30)
    {
      v24 = v29;
      v28[3] = &type metadata for AuthorizationError;
      v28[4] = sub_1BD1C2B14();
      v25 = swift_allocObject();
      v28[0] = v25;
      *(v25 + 16) = v24;
      *(v25 + 24) = v23;
      v26 = v32;
      *(v25 + 32) = v31;
      *(v25 + 48) = v26;
      sub_1BD0DE19C(v28, v27, &qword_1EBD51EC0, &qword_1BE0B7120);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80, &unk_1BE0DAEC0);
      sub_1BE0516B4();
      v19 = v28;
      v20 = &qword_1EBD51EC0;
      v21 = &qword_1BE0B7120;
      goto LABEL_6;
    }
  }
}

void sub_1BD4C876C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v41 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v37 - v7;
  v9 = sub_1BD4C8A54();
  v39 = v10;
  v47 = v9;
  v48 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B20, &qword_1BE0DADA8);
  MEMORY[0x1BFB3E970]();
  v12 = type metadata accessor for AvailablePass(0);
  v13 = (*(*(v12 - 8) + 48))(v8, 1, v12) != 1;
  sub_1BD0DE53C(v8, &qword_1EBD520A0, &qword_1BE0B9840);
  v43 = v13;
  sub_1BE051944();
  v14 = v45;
  v37[0] = v44;
  v38 = v46;
  MEMORY[0x1BFB3E970](v11);
  v37[1] = v37;
  v42 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47F68, &qword_1BE0DB268);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D80, &qword_1BE0C9780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47F70, &qword_1BE0ECF90);
  sub_1BD0DE4F4(&qword_1EBD47F78, &qword_1EBD47F68, &qword_1BE0DB268, MEMORY[0x1E697FDF8]);
  sub_1BD0DDEBC();
  sub_1BD0DE4F4(&qword_1EBD40D88, &qword_1EBD40D80, &qword_1BE0C9780, MEMORY[0x1E6981F48]);
  sub_1BD4D58A4();
  v15 = v37[0];
  sub_1BE050F14();
  v14, v16, v17, v18, v19, v20, v21, v22;
  v15, v23, v24, v25, v26, v27, v28, v29;
  sub_1BD0DE53C(v5, &qword_1EBD520A0, &qword_1BE0B9840);
  v39, v30, v31, v32, v33, v34, v35, v36;
}

id sub_1BD4C8A54()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v29 - v8;
  v10 = type metadata accessor for AvailablePass(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B20, &qword_1BE0DADA8);
  MEMORY[0x1BFB3E970](v14);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    sub_1BD4CCEC0(v9, v13, type metadata accessor for AvailablePass);
    (*(v1 + 104))(v6, *MEMORY[0x1E69B8068], v0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BE0B69E0;
    v19 = sub_1BD49C818(COERCE_DOUBLE(1));
    v21 = v20;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1BD110550();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    v17 = sub_1BE04B714();
    v18, v22, v23, v24, v25, v26, v27, v28;
    (*(v1 + 8))(v6, v0);
    sub_1BD4CCF28(v13, type metadata accessor for AvailablePass);
    return v17;
  }

  sub_1BD0DE53C(v9, &qword_1EBD520A0, &qword_1BE0B9840);
  (*(v1 + 104))(v3, *MEMORY[0x1E69B8068], v0);
  result = PKPassKitBundle();
  if (result)
  {
    v16 = result;
    v17 = sub_1BE04B6F4();

    (*(v1 + 8))(v3, v0);
    return v17;
  }

  __break(1u);
  return result;
}

id sub_1BD4C8DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v72 = a2;
  v68 = a1;
  v61 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8, &qword_1BE0B8910);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v56 - v4;
  v5 = type metadata accessor for AvailablePass(0);
  v66 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v67 = v6;
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PaymentPassDefaultConfirmationModifier(0);
  v64 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v65 = v9;
  v71 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v59 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v58 = &v56 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v57 = &v56 - v22;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v70 = &v56 - v25;
  v26 = *(v11 + 104);
  v63 = *MEMORY[0x1E69B80D0];
  v62 = v26;
  v26(v15, v24);
  result = PKPassKitBundle();
  if (result)
  {
    v28 = result;
    v29 = sub_1BE04B6F4();
    v31 = v30;

    v56 = *(v11 + 8);
    v56(v15, v10);
    v73 = v29;
    v74 = v31;
    v32 = v71;
    sub_1BD4CCE58(v72, v71, type metadata accessor for PaymentPassDefaultConfirmationModifier);
    sub_1BD4CCE58(v68, v7, type metadata accessor for AvailablePass);
    v33 = *(v64 + 80);
    v34 = (v33 + 16) & ~v33;
    v35 = v33 | 7;
    v36 = *(v66 + 80);
    v68 = v34 + v65;
    v37 = (v34 + v65 + v36) & ~v36;
    v67 = v35;
    v38 = swift_allocObject();
    sub_1BD4CCEC0(v32, v38 + v34, type metadata accessor for PaymentPassDefaultConfirmationModifier);
    sub_1BD4CCEC0(v7, v38 + v37, type metadata accessor for AvailablePass);
    sub_1BD0DDEBC();
    sub_1BE051744();
    v62(v69, v63, v10);
    result = PKPassKitBundle();
    if (result)
    {
      v39 = result;
      v40 = v69;
      v41 = sub_1BE04B6F4();
      v43 = v42;

      v56(v40, v10);
      v73 = v41;
      v74 = v43;
      v44 = v60;
      sub_1BE04E1B4();
      v45 = sub_1BE04E1D4();
      (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
      v46 = v71;
      sub_1BD4CCE58(v72, v71, type metadata accessor for PaymentPassDefaultConfirmationModifier);
      v47 = swift_allocObject();
      sub_1BD4CCEC0(v46, v47 + v34, type metadata accessor for PaymentPassDefaultConfirmationModifier);
      v48 = v57;
      sub_1BE051724();
      v49 = *(v17 + 16);
      v50 = v58;
      v51 = v70;
      v49(v58, v70, v16);
      v52 = v59;
      v49(v59, v48, v16);
      v53 = v61;
      v49(v61, v50, v16);
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D98, &unk_1BE0ECEC0);
      v49(&v53[*(v54 + 48)], v52, v16);
      v55 = *(v17 + 8);
      v55(v48, v16);
      v55(v51, v16);
      v55(v52, v16);
      return (v55)(v50, v16);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD4C94E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PaymentPassDefaultConfirmationModifier(0);
  (*(a1 + *(v10 + 20)))(a2);
  v11 = type metadata accessor for AvailablePass(0);
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_1BD0DE19C(v9, v6, &qword_1EBD520A0, &qword_1BE0B9840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B20, &qword_1BE0DADA8);
  sub_1BE0518F4();
  return sub_1BD0DE53C(v9, &qword_1EBD520A0, &qword_1BE0B9840);
}

uint64_t sub_1BD4C9648()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  v6 = type metadata accessor for AvailablePass(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1BD0DE19C(v5, v2, &qword_1EBD520A0, &qword_1BE0B9840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B20, &qword_1BE0DADA8);
  sub_1BE0518F4();
  return sub_1BD0DE53C(v5, &qword_1EBD520A0, &qword_1BE0B9840);
}

void *sub_1BD4C9778@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v12 = (v3 + 104);
  if (sub_1BD49500C())
  {
    (*v12)(v11, *MEMORY[0x1E69B80D8], v2);
    result = PKPassKitBundle();
    if (result)
    {
      v14 = result;
      v15 = sub_1BE04B6F4();
      v17 = v16;

      (*(v3 + 8))(v11, v2);
      *&v43 = v15;
      *(&v43 + 1) = v17;
      sub_1BD0DDEBC();
      *&v40 = sub_1BE0506C4();
      *(&v40 + 1) = v18;
      *&v41 = v19 & 1;
      *(&v41 + 1) = v20;
      v42 = 0;
LABEL_10:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8, &qword_1BE0BB6A0);
      sub_1BD170E70();
      result = sub_1BE04F9A4();
      v37 = v44;
      v38 = v45;
      v39 = v46;
      *a1 = v43;
      *(a1 + 16) = v37;
      *(a1 + 32) = v38;
      *(a1 + 33) = v39;
      return result;
    }

    __break(1u);
    goto LABEL_12;
  }

  v21 = sub_1BD495018();
  v22 = *v12;
  if (v21)
  {
    v22(v8, *MEMORY[0x1E69B80C8], v2);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v23 = result;
    v24 = sub_1BE04B6F4();
    v26 = v25;

    (*(v3 + 8))(v8, v2);
    *&v43 = v24;
    *(&v43 + 1) = v26;
    sub_1BD0DDEBC();
    *&v40 = sub_1BE0506C4();
    *(&v40 + 1) = v27;
    *&v41 = v28 & 1;
    *(&v41 + 1) = v29;
    LOBYTE(v42) = 0;
LABEL_9:
    sub_1BE04F9A4();
    v40 = v43;
    v41 = v44;
    LOBYTE(v42) = v45;
    HIBYTE(v42) = 1;
    goto LABEL_10;
  }

  v22(v5, *MEMORY[0x1E69B80D8], v2);
  result = PKPassKitBundle();
  if (result)
  {
    v30 = result;
    v31 = sub_1BE04B6F4();
    v33 = v32;

    (*(v3 + 8))(v5, v2);
    *&v43 = v31;
    *(&v43 + 1) = v33;
    sub_1BD0DDEBC();
    *&v40 = sub_1BE0506C4();
    *(&v40 + 1) = v35;
    *&v41 = v34 & 1;
    *(&v41 + 1) = v36;
    LOBYTE(v42) = 1;
    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t objectdestroyTm_48()
{
  v1 = type metadata accessor for PaymentPassMethodSheet(0);
  v1644 = *(*(v1 - 1) + 80);
  v2 = v0 + ((v1644 + 16) & ~v1644);
  v3 = (v2 + v1[6]);
  v4 = type metadata accessor for AvailablePass(0);
  v5 = *(*(v4 - 1) + 48);
  v1645 = v5;
  v1646 = v4;
  if (!v5(v3, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v3[1], v7, v8, v9, v10, v11, v12, v13;
      v3[3], v14, v15, v16, v17, v18, v19, v20;
      v21 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v22 = sub_1BE04CF34();
      (*(*(v22 - 8) + 8))(v3 + v21, v22);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v23 = (v3 + v4[6]);
    v24 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v24 - 1) + 48))(v23, 1, v24))
    {
      v23[1], v25, v26, v27, v28, v29, v30, v31;
      v32 = v24[5];
      v33 = sub_1BE04DA84();
      (*(*(v33 - 8) + 8))(v23 + v32, v33);
      *(v23 + v24[6] + 8), v34, v35, v36, v37, v38, v39, v40;
      *(v23 + v24[7] + 8), v41, v42, v43, v44, v45, v46, v47;
      *(v23 + v24[8] + 8), v48, v49, v50, v51, v52, v53, v54;
    }

    v55 = (v3 + v4[7]);
    v56 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v56 - 8) + 48))(v55, 1, v56))
    {

      v57 = *(v56 + 28);
      v58 = sub_1BE04AF64();
      v59 = *(v58 - 8);
      if (!(*(v59 + 48))(v55 + v57, 1, v58))
      {
        (*(v59 + 8))(v55 + v57, v58);
      }
    }

    v60 = v3 + v4[10];
    v61 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v61 - 8) + 48))(v60, 1, v61))
    {
      v69 = *(v60 + 2);
      if (v69 != 1)
      {
        v69, v62, v63, v64, v65, v66, v67, v68;
        *(v60 + 4), v70, v71, v72, v73, v74, v75, v76;
        *(v60 + 6), v77, v78, v79, v80, v81, v82, v83;
      }

      v84 = *(v60 + 9);
      if (v84 != 1)
      {
        v84, v62, v63, v64, v65, v66, v67, v68;
        *(v60 + 11), v85, v86, v87, v88, v89, v90, v91;
        *(v60 + 13), v92, v93, v94, v95, v96, v97, v98;
      }

      v99 = *(v61 + 28);
      v100 = sub_1BE04AF64();
      v101 = *(v100 - 8);
      v102 = *(v101 + 48);
      if (!v102(&v60[v99], 1, v100))
      {
        (*(v101 + 8))(&v60[v99], v100);
      }

      v103 = *(v61 + 32);
      v104 = v102(&v60[v103], 1, v100);
      v5 = v1645;
      v4 = v1646;
      if (!v104)
      {
        (*(v101 + 8))(&v60[v103], v100);
      }
    }

    v105 = (v3 + v4[12]);
    if (*v105)
    {

      v105[4], v106, v107, v108, v109, v110, v111, v112;
    }

    v113 = (v3 + v4[13]);
    if (*v113)
    {

      v113[2], v114, v115, v116, v117, v118, v119, v120;
    }

    *(v3 + v4[14]), v62, v63, v64, v65, v66, v67, v68;
    *(v3 + v4[15]), v121, v122, v123, v124, v125, v126, v127;
  }

  v128 = type metadata accessor for Passes(0);

  *(v3 + v128[7]), v129, v130, v131, v132, v133, v134, v135;
  *(v3 + v128[9]), v136, v137, v138, v139, v140, v141, v142;
  *(v3 + v128[11]), v143, v144, v145, v146, v147, v148, v149;
  v150 = v2 + v1[7];
  if (*(v150 + 48))
  {
    sub_1BD0D455C(*v150, *(v150 + 8), *(v150 + 16));

    *(v150 + 48), v151, v152, v153, v154, v155, v156, v157;
    *(v150 + 64), v158, v159, v160, v161, v162, v163, v164;
  }

  v165 = (v2 + v1[8]);
  v166 = type metadata accessor for PeerPaymentModel(0);
  v167 = *(*(v166 - 1) + 48);
  if (!v167(v165, 1, v166))
  {

    v168 = (v165 + v166[5]);
    type metadata accessor for WrappedPass(0);
    v169 = swift_getEnumCaseMultiPayload();
    v1634 = v128;
    if (v169 == 2)
    {
      v168[1], v170, v171, v172, v173, v174, v175, v176;
      v168[3], v177, v178, v179, v180, v181, v182, v183;
      v184 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v185 = sub_1BE04CF34();
      (*(*(v185 - 8) + 8))(v168 + v184, v185);
    }

    else if (v169 <= 1)
    {
    }

    v1629 = v167;
    v186 = (v168 + v4[6]);
    v187 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v187 - 1) + 48))(v186, 1, v187))
    {
      v186[1], v188, v189, v190, v191, v192, v193, v194;
      v195 = v187[5];
      v196 = sub_1BE04DA84();
      (*(*(v196 - 8) + 8))(v186 + v195, v196);
      *(v186 + v187[6] + 8), v197, v198, v199, v200, v201, v202, v203;
      *(v186 + v187[7] + 8), v204, v205, v206, v207, v208, v209, v210;
      *(v186 + v187[8] + 8), v211, v212, v213, v214, v215, v216, v217;
    }

    v218 = (v168 + v4[7]);
    v219 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v219 - 8) + 48))(v218, 1, v219))
    {

      v220 = *(v219 + 28);
      v221 = sub_1BE04AF64();
      v222 = *(v221 - 8);
      if (!(*(v222 + 48))(v218 + v220, 1, v221))
      {
        (*(v222 + 8))(v218 + v220, v221);
      }
    }

    v223 = v168 + v4[10];
    v224 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v224 - 8) + 48))(v223, 1, v224))
    {
      v232 = *(v223 + 2);
      if (v232 != 1)
      {
        v232, v225, v226, v227, v228, v229, v230, v231;
        *(v223 + 4), v233, v234, v235, v236, v237, v238, v239;
        *(v223 + 6), v240, v241, v242, v243, v244, v245, v246;
      }

      v1625 = v166;
      v247 = *(v223 + 9);
      if (v247 != 1)
      {
        v247, v225, v226, v227, v228, v229, v230, v231;
        *(v223 + 11), v248, v249, v250, v251, v252, v253, v254;
        *(v223 + 13), v255, v256, v257, v258, v259, v260, v261;
      }

      v262 = *(v224 + 28);
      v263 = sub_1BE04AF64();
      v1632 = *(v263 - 8);
      v264 = *(v1632 + 48);
      if (!v264(&v223[v262], 1, v263))
      {
        (*(v1632 + 8))(&v223[v262], v263);
      }

      v265 = *(v224 + 32);
      v166 = v1625;
      if (!v264(&v223[v265], 1, v263))
      {
        (*(v1632 + 8))(&v223[v265], v263);
      }
    }

    v4 = v1646;
    v266 = (v168 + v1646[12]);
    v128 = v1634;
    v167 = v1629;
    if (*v266)
    {

      v266[4], v267, v268, v269, v270, v271, v272, v273;
    }

    v274 = (v168 + v1646[13]);
    v5 = v1645;
    if (*v274)
    {

      v274[2], v275, v276, v277, v278, v279, v280, v281;
    }

    *(v168 + v1646[14]), v225, v226, v227, v228, v229, v230, v231;
    *(v168 + v1646[15]), v282, v283, v284, v285, v286, v287, v288;
    v289 = (v165 + v166[6]);
    if (*v289 != 1)
    {

      v297 = v289[3];
      if (v297)
      {
        v297, v290, v291, v292, v293, v294, v295, v296;
        v289[5], v298, v299, v300, v301, v302, v303, v304;
        v289[7], v305, v306, v307, v308, v309, v310, v311;
        v289[9], v312, v313, v314, v315, v316, v317, v318;
      }
    }
  }

  v319 = (v2 + v1[9]);
  v320 = _s14PaymentSummaryVMa(0);
  if (!(*(*(v320 - 8) + 48))(v319, 1, v320))
  {

    v319[4], v321, v322, v323, v324, v325, v326, v327;
    v319[6], v328, v329, v330, v331, v332, v333, v334;
    v1631 = _s11TotalAmountVMa(0);
    v335 = (v319 + *(v1631 + 40));
    _s22SummaryItemPricingTypeOMa(0);
    v336 = swift_getEnumCaseMultiPayload();
    v1628 = v320;
    v1633 = v319;
    if (v336 == 2)
    {
      v335[1], v337, v338, v339, v340, v341, v342, v343;
    }

    else if (v336 == 1)
    {
      v379 = sub_1BE04AF64();
      (*(*(v379 - 8) + 8))(v335, v379);
    }

    else
    {
      v344 = v1631;
      if (v336)
      {
LABEL_67:
        v380 = v5;
        v381 = v1633;

        v382 = (v1633 + v344[15]);
        v383 = v167(v382, 1, v166);
        v384 = v1646;
        if (!v383)
        {

          v1640 = v382;
          v385 = (v382 + v166[5]);
          type metadata accessor for WrappedPass(0);
          v386 = v385;
          v387 = swift_getEnumCaseMultiPayload();
          v1635 = v128;
          if (v387 == 2)
          {
            v385[1], v388, v389, v390, v391, v392, v393, v394;
            v385[3], v397, v398, v399, v400, v401, v402, v403;
            v404 = *(type metadata accessor for PlaceholderPass(0) + 28);
            v405 = sub_1BE04CF34();
            (*(*(v405 - 8) + 8))(v386 + v404, v405);
            v395 = v1646;
            v396 = v386;
          }

          else
          {
            v395 = v1646;
            if (v387 == 1)
            {
              v396 = v385;
            }

            else
            {
              v396 = v385;
              if (!v387)
              {
              }
            }
          }

          v1627 = v166;
          v406 = (v396 + v395[6]);
          v407 = type metadata accessor for IdentityCredential(0);
          if (!(*(*(v407 - 1) + 48))(v406, 1, v407))
          {
            v406[1], v408, v409, v410, v411, v412, v413, v414;
            v415 = v407[5];
            v416 = sub_1BE04DA84();
            (*(*(v416 - 8) + 8))(v406 + v415, v416);
            *(v406 + v407[6] + 8), v417, v418, v419, v420, v421, v422, v423;
            *(v406 + v407[7] + 8), v424, v425, v426, v427, v428, v429, v430;
            *(v406 + v407[8] + 8), v431, v432, v433, v434, v435, v436, v437;
          }

          v438 = (v396 + v395[7]);
          v439 = type metadata accessor for BalanceInfo(0);
          if (!(*(*(v439 - 8) + 48))(v438, 1, v439))
          {

            v440 = *(v439 + 28);
            v441 = sub_1BE04AF64();
            v442 = *(v441 - 8);
            if (!(*(v442 + 48))(v438 + v440, 1, v441))
            {
              (*(v442 + 8))(v438 + v440, v441);
            }
          }

          v443 = v396 + v395[10];
          v444 = type metadata accessor for PassEligibleRewardsInfo(0);
          if (!(*(*(v444 - 8) + 48))(v443, 1, v444))
          {
            v452 = *(v443 + 2);
            if (v452 != 1)
            {
              v452, v445, v446, v447, v448, v449, v450, v451;
              *(v443 + 4), v453, v454, v455, v456, v457, v458, v459;
              *(v443 + 6), v460, v461, v462, v463, v464, v465, v466;
            }

            v467 = *(v443 + 9);
            if (v467 != 1)
            {
              v467, v445, v446, v447, v448, v449, v450, v451;
              *(v443 + 11), v468, v469, v470, v471, v472, v473, v474;
              *(v443 + 13), v475, v476, v477, v478, v479, v480, v481;
            }

            v482 = *(v444 + 28);
            v483 = sub_1BE04AF64();
            v484 = *(v483 - 8);
            v485 = *(v484 + 48);
            if (!v485(&v443[v482], 1, v483))
            {
              (*(v484 + 8))(&v443[v482], v483);
            }

            v486 = *(v444 + 32);
            if (!v485(&v443[v486], 1, v483))
            {
              (*(v484 + 8))(&v443[v486], v483);
            }
          }

          v487 = (v396 + v1646[12]);
          v128 = v1635;
          if (*v487)
          {

            v487[4], v488, v489, v490, v491, v492, v493, v494;
          }

          v495 = (v396 + v1646[13]);
          if (*v495)
          {

            v495[2], v496, v497, v498, v499, v500, v501, v502;
          }

          *(v396 + v1646[14]), v445, v446, v447, v448, v449, v450, v451;
          *(v396 + v1646[15]), v503, v504, v505, v506, v507, v508, v509;
          v510 = (v1640 + v1627[6]);
          if (*v510 != 1)
          {

            v518 = v510[3];
            if (v518)
            {
              v518, v511, v512, v513, v514, v515, v516, v517;
              v510[5], v519, v520, v521, v522, v523, v524, v525;
              v510[7], v526, v527, v528, v529, v530, v531, v532;
              v510[9], v533, v534, v535, v536, v537, v538, v539;
            }
          }

          v384 = v1646;
          v380 = v1645;

          v344 = v1631;
          v381 = v1633;
        }

        v540 = (v381 + v344[16]);
        v5 = v380;
        v4 = v384;
        if (!(*(*(v128 - 1) + 48))(v540, 1, v128))
        {
          if (!v380(v540, 1, v384))
          {
            type metadata accessor for WrappedPass(0);
            v548 = swift_getEnumCaseMultiPayload();
            v1636 = v128;
            if (v548 == 2)
            {
              v540[1], v549, v550, v551, v552, v553, v554, v555;
              v540[3], v556, v557, v558, v559, v560, v561, v562;
              v563 = *(type metadata accessor for PlaceholderPass(0) + 28);
              v564 = sub_1BE04CF34();
              (*(*(v564 - 8) + 8))(v540 + v563, v564);
            }

            else if (v548 <= 1)
            {
            }

            v565 = (v540 + v384[6]);
            v566 = type metadata accessor for IdentityCredential(0);
            if (!(*(*(v566 - 1) + 48))(v565, 1, v566))
            {
              v565[1], v567, v568, v569, v570, v571, v572, v573;
              v574 = v566[5];
              v575 = sub_1BE04DA84();
              (*(*(v575 - 8) + 8))(v565 + v574, v575);
              *(v565 + v566[6] + 8), v576, v577, v578, v579, v580, v581, v582;
              *(v565 + v566[7] + 8), v583, v584, v585, v586, v587, v588, v589;
              *(v565 + v566[8] + 8), v590, v591, v592, v593, v594, v595, v596;
            }

            v597 = (v540 + v384[7]);
            v598 = type metadata accessor for BalanceInfo(0);
            if (!(*(*(v598 - 8) + 48))(v597, 1, v598))
            {

              v599 = *(v598 + 28);
              v600 = sub_1BE04AF64();
              v601 = *(v600 - 8);
              if (!(*(v601 + 48))(v597 + v599, 1, v600))
              {
                (*(v601 + 8))(v597 + v599, v600);
              }
            }

            v602 = v540 + v4[10];
            v603 = type metadata accessor for PassEligibleRewardsInfo(0);
            if (!(*(*(v603 - 8) + 48))(v602, 1, v603))
            {
              v611 = *(v602 + 2);
              if (v611 != 1)
              {
                v611, v604, v605, v606, v607, v608, v609, v610;
                *(v602 + 4), v612, v613, v614, v615, v616, v617, v618;
                *(v602 + 6), v619, v620, v621, v622, v623, v624, v625;
              }

              v626 = *(v602 + 9);
              if (v626 != 1)
              {
                v626, v604, v605, v606, v607, v608, v609, v610;
                *(v602 + 11), v627, v628, v629, v630, v631, v632, v633;
                *(v602 + 13), v634, v635, v636, v637, v638, v639, v640;
              }

              v641 = *(v603 + 28);
              v642 = sub_1BE04AF64();
              v643 = *(v642 - 8);
              v644 = *(v643 + 48);
              if (!v644(&v602[v641], 1, v642))
              {
                (*(v643 + 8))(&v602[v641], v642);
              }

              v645 = *(v603 + 32);
              if (!v644(&v602[v645], 1, v642))
              {
                (*(v643 + 8))(&v602[v645], v642);
              }
            }

            v4 = v1646;
            v646 = (v540 + v1646[12]);
            v128 = v1636;
            if (*v646)
            {

              v646[4], v647, v648, v649, v650, v651, v652, v653;
            }

            v654 = (v540 + v1646[13]);
            v5 = v1645;
            if (*v654)
            {

              v654[2], v655, v656, v657, v658, v659, v660, v661;
            }

            *(v540 + v1646[14]), v604, v605, v606, v607, v608, v609, v610;
            *(v540 + v1646[15]), v662, v663, v664, v665, v666, v667, v668;
          }

          *(v540 + v128[7]), v669, v670, v671, v672, v673, v674, v675;
          *(v540 + v128[9]), v676, v677, v678, v679, v680, v681, v682;
          *(v540 + v128[11]), v683, v684, v685, v686, v687, v688, v689;
          v381 = v1633;
        }

        v690 = v1628;
        *(v381 + v1628[5]), v541, v542, v543, v544, v545, v546, v547;
        *(v381 + v1628[6] + 8), v691, v692, v693, v694, v695, v696, v697;
        v705 = v381 + v1628[7];
        v706 = *(v705 + 8);
        if (v706)
        {
          v706, v698, v699, v700, v701, v702, v703, v704;
          *(v705 + 24), v707, v708, v709, v710, v711, v712, v713;
        }

        v714 = v381 + v1628[9];
        v715 = *(v714 + 8);
        if (v715)
        {
          v715, v698, v699, v700, v701, v702, v703, v704;
          *(v714 + 24), v716, v717, v718, v719, v720, v721, v722;
          *(v714 + 40), v723, v724, v725, v726, v727, v728, v729;
        }

        v730 = v381 + v1628[10];
        v731 = *(v730 + 8);
        if (v731)
        {
          v731, v698, v699, v700, v701, v702, v703, v704;
          *(v730 + 24), v732, v733, v734, v735, v736, v737, v738;
          *(v730 + 40), v739, v740, v741, v742, v743, v744, v745;
        }

        v746 = (v381 + v1628[11]);
        v747 = type metadata accessor for DeferredPaymentRequest(0);
        if (!(*(*(v747 - 1) + 48))(v746, 1, v747))
        {
          v746[1], v748, v749, v750, v751, v752, v753, v754;
          v746[3], v755, v756, v757, v758, v759, v760, v761;
          v746[5], v762, v763, v764, v765, v766, v767, v768;
          v769 = v747[7];
          v770 = sub_1BE04AF64();
          v771 = *(v770 - 8);
          if (!(*(v771 + 48))(v746 + v769, 1, v770))
          {
            (*(v771 + 8))(v746 + v769, v770);
          }

          v772 = v747[8];
          v773 = sub_1BE04B3B4();
          v774 = *(v773 - 8);
          if (!(*(v774 + 48))(v746 + v772, 1, v773))
          {
            (*(v774 + 8))(v746 + v772, v773);
          }

          v5 = v1645;
          v690 = v1628;
        }

        *(v381 + v690[12]), v748, v749, v750, v751, v752, v753, v754;
        goto LABEL_136;
      }

      v1630 = v167;
      v1626 = v166;
      v345 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
      v346 = v345[6];
      v347 = sub_1BE04AF64();
      v348 = *(v347 - 8);
      v349 = *(v348 + 48);
      if (!v349(v335 + v346, 1, v347))
      {
        (*(v348 + 8))(v335 + v346, v347);
      }

      v350 = v345[7];
      if (!v349(v335 + v350, 1, v347))
      {
        (*(v348 + 8))(v335 + v350, v347);
      }

      *(v335 + v345[9] + 8), v351, v352, v353, v354, v355, v356, v357;
      *(v335 + v345[10] + 8), v358, v359, v360, v361, v362, v363, v364;
      *(v335 + v345[11] + 8), v365, v366, v367, v368, v369, v370, v371;
      *(v335 + v345[12] + 8), v372, v373, v374, v375, v376, v377, v378;
      v5 = v1645;
      v166 = v1626;
      v167 = v1630;
    }

    v344 = v1631;
    goto LABEL_67;
  }

LABEL_136:

  *(v2 + v1[12] + 8), v775, v776, v777, v778, v779, v780, v781;
  *(v2 + v1[13] + 8), v782, v783, v784, v785, v786, v787, v788;
  *(v2 + v1[14] + 8), v789, v790, v791, v792, v793, v794, v795;
  *(v2 + v1[15] + 8), v796, v797, v798, v799, v800, v801, v802;
  *(v2 + v1[16] + 8), v803, v804, v805, v806, v807, v808, v809;
  *(v2 + v1[17] + 8), v810, v811, v812, v813, v814, v815, v816;
  *(v2 + v1[18] + 8), v817, v818, v819, v820, v821, v822, v823;
  *(v2 + v1[19] + 8), v824, v825, v826, v827, v828, v829, v830;
  *(v2 + v1[20] + 8), v831, v832, v833, v834, v835, v836, v837;
  *(v2 + v1[21]), v838, v839, v840, v841, v842, v843, v844;
  *(v2 + v1[22]), v845, v846, v847, v848, v849, v850, v851;
  *(v2 + v1[23] + 8), v852, v853, v854, v855, v856, v857, v858;
  v866 = v2 + v1[24];
  if (*v866)
  {
    *(v866 + 8), v859, v860, v861, v862, v863, v864, v865;
  }

  *(v2 + v1[26]), v859, v860, v861, v862, v863, v864, v865;
  v874 = v2 + v1[27];
  v875 = *(v874 + 8);
  if (v875)
  {
    v875, v867, v868, v869, v870, v871, v872, v873;
    *(v874 + 24), v876, v877, v878, v879, v880, v881, v882;
  }

  *(v874 + 48), v867, v868, v869, v870, v871, v872, v873;
  *(v2 + v1[28]), v883, v884, v885, v886, v887, v888, v889;
  v890 = (v2 + v1[29]);

  v890[1], v891, v892, v893, v894, v895, v896, v897;
  v898 = (v2 + v1[30]);
  if (!v5(v898, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    v899 = swift_getEnumCaseMultiPayload();
    if (v899 == 2)
    {
      v898[1], v900, v901, v902, v903, v904, v905, v906;
      v898[3], v907, v908, v909, v910, v911, v912, v913;
      v914 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v915 = sub_1BE04CF34();
      (*(*(v915 - 8) + 8))(v898 + v914, v915);
    }

    else if (v899 <= 1)
    {
    }

    v916 = (v898 + v4[6]);
    v917 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v917 - 1) + 48))(v916, 1, v917))
    {
      v916[1], v918, v919, v920, v921, v922, v923, v924;
      v925 = v917[5];
      v926 = sub_1BE04DA84();
      (*(*(v926 - 8) + 8))(v916 + v925, v926);
      *(v916 + v917[6] + 8), v927, v928, v929, v930, v931, v932, v933;
      *(v916 + v917[7] + 8), v934, v935, v936, v937, v938, v939, v940;
      *(v916 + v917[8] + 8), v941, v942, v943, v944, v945, v946, v947;
    }

    v948 = (v898 + v4[7]);
    v949 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v949 - 8) + 48))(v948, 1, v949))
    {

      v950 = *(v949 + 28);
      v951 = sub_1BE04AF64();
      v952 = *(v951 - 8);
      if (!(*(v952 + 48))(v948 + v950, 1, v951))
      {
        (*(v952 + 8))(v948 + v950, v951);
      }
    }

    v953 = v898 + v4[10];
    v954 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v954 - 8) + 48))(v953, 1, v954))
    {
      v962 = *(v953 + 2);
      if (v962 != 1)
      {
        v962, v955, v956, v957, v958, v959, v960, v961;
        *(v953 + 4), v963, v964, v965, v966, v967, v968, v969;
        *(v953 + 6), v970, v971, v972, v973, v974, v975, v976;
      }

      v977 = *(v953 + 9);
      if (v977 != 1)
      {
        v977, v955, v956, v957, v958, v959, v960, v961;
        *(v953 + 11), v978, v979, v980, v981, v982, v983, v984;
        *(v953 + 13), v985, v986, v987, v988, v989, v990, v991;
      }

      v992 = *(v954 + 28);
      v993 = sub_1BE04AF64();
      v994 = *(v993 - 8);
      v995 = *(v994 + 48);
      if (!v995(&v953[v992], 1, v993))
      {
        (*(v994 + 8))(&v953[v992], v993);
      }

      v996 = *(v954 + 32);
      v5 = v1645;
      v4 = v1646;
      if (!v995(&v953[v996], 1, v993))
      {
        (*(v994 + 8))(&v953[v996], v993);
      }
    }

    v997 = (v898 + v4[12]);
    if (*v997)
    {

      v997[4], v998, v999, v1000, v1001, v1002, v1003, v1004;
    }

    v1005 = (v898 + v4[13]);
    if (*v1005)
    {

      v1005[2], v1006, v1007, v1008, v1009, v1010, v1011, v1012;
    }

    *(v898 + v4[14]), v955, v956, v957, v958, v959, v960, v961;
    *(v898 + v4[15]), v1013, v1014, v1015, v1016, v1017, v1018, v1019;
  }

  v1020 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE0, &qword_1BE0DAD40);
  *(v898 + *(v1020 + 28)), v1021, v1022, v1023, v1024, v1025, v1026, v1027;
  v1028 = (v2 + v1[31]);

  v1028[1], v1029, v1030, v1031, v1032, v1033, v1034, v1035;
  v1036 = (v2 + v1[32]);
  v1037 = _s11DetailSheetOMa(0);
  if (!(*(*(v1037 - 8) + 48))(v1036, 1, v1037))
  {
    v1038 = swift_getEnumCaseMultiPayload();
    if (v1038 <= 1)
    {
      if (!v1038)
      {
        if (!v5(v1036, 1, v4))
        {
          type metadata accessor for WrappedPass(0);
          v1056 = swift_getEnumCaseMultiPayload();
          if (v1056 == 2)
          {
            v1036[1], v1057, v1058, v1059, v1060, v1061, v1062, v1063;
            v1036[3], v1290, v1291, v1292, v1293, v1294, v1295, v1296;
            v1297 = *(type metadata accessor for PlaceholderPass(0) + 28);
            v1298 = sub_1BE04CF34();
            (*(*(v1298 - 8) + 8))(v1036 + v1297, v1298);
          }

          else if (v1056 <= 1)
          {
          }

          v1299 = (v1036 + v4[6]);
          v1300 = type metadata accessor for IdentityCredential(0);
          if (!(*(*(v1300 - 1) + 48))(v1299, 1, v1300))
          {
            v1299[1], v1301, v1302, v1303, v1304, v1305, v1306, v1307;
            v1308 = v1300[5];
            v1309 = sub_1BE04DA84();
            (*(*(v1309 - 8) + 8))(v1299 + v1308, v1309);
            *(v1299 + v1300[6] + 8), v1310, v1311, v1312, v1313, v1314, v1315, v1316;
            *(v1299 + v1300[7] + 8), v1317, v1318, v1319, v1320, v1321, v1322, v1323;
            *(v1299 + v1300[8] + 8), v1324, v1325, v1326, v1327, v1328, v1329, v1330;
          }

          v1643 = v1020;
          v1331 = (v1036 + v4[7]);
          v1332 = type metadata accessor for BalanceInfo(0);
          if (!(*(*(v1332 - 8) + 48))(v1331, 1, v1332))
          {

            v1333 = *(v1332 + 28);
            v1334 = sub_1BE04AF64();
            v1335 = *(v1334 - 8);
            if (!(*(v1335 + 48))(v1331 + v1333, 1, v1334))
            {
              (*(v1335 + 8))(v1331 + v1333, v1334);
            }
          }

          v1336 = v1036 + v4[10];
          v1337 = type metadata accessor for PassEligibleRewardsInfo(0);
          if (!(*(*(v1337 - 8) + 48))(v1336, 1, v1337))
          {
            v1345 = *(v1336 + 2);
            if (v1345 != 1)
            {
              v1345, v1338, v1339, v1340, v1341, v1342, v1343, v1344;
              *(v1336 + 4), v1346, v1347, v1348, v1349, v1350, v1351, v1352;
              *(v1336 + 6), v1353, v1354, v1355, v1356, v1357, v1358, v1359;
            }

            v1360 = *(v1336 + 9);
            if (v1360 != 1)
            {
              v1360, v1338, v1339, v1340, v1341, v1342, v1343, v1344;
              *(v1336 + 11), v1361, v1362, v1363, v1364, v1365, v1366, v1367;
              *(v1336 + 13), v1368, v1369, v1370, v1371, v1372, v1373, v1374;
            }

            v1375 = *(v1337 + 28);
            v1376 = sub_1BE04AF64();
            v1377 = *(v1376 - 8);
            v1378 = *(v1377 + 48);
            if (!v1378(&v1336[v1375], 1, v1376))
            {
              (*(v1377 + 8))(&v1336[v1375], v1376);
            }

            v1639 = v1377;
            v1379 = *(v1337 + 32);
            v5 = v1645;
            v4 = v1646;
            if (!v1378(&v1336[v1379], 1, v1376))
            {
              (*(v1639 + 8))(&v1336[v1379], v1376);
            }
          }

          v1380 = (v1036 + v4[12]);
          if (*v1380)
          {

            v1380[4], v1381, v1382, v1383, v1384, v1385, v1386, v1387;
          }

          v1388 = (v1036 + v4[13]);
          v1020 = v1643;
          if (*v1388)
          {

            v1388[2], v1389, v1390, v1391, v1392, v1393, v1394, v1395;
          }

          *(v1036 + v4[14]), v1338, v1339, v1340, v1341, v1342, v1343, v1344;
          *(v1036 + v4[15]), v1396, v1397, v1398, v1399, v1400, v1401, v1402;
        }

        v1403 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440, &qword_1BE0DAEA0);

        v1404 = (v1036 + *(v1403 + 64));
        v1404[1], v1405, v1406, v1407, v1408, v1409, v1410, v1411;
        v1404[3], v1412, v1413, v1414, v1415, v1416, v1417, v1418;
        v1047 = v1404[4];
        goto LABEL_243;
      }

      if (v1038 != 1)
      {
        goto LABEL_244;
      }

LABEL_174:
      v1047 = *v1036;
LABEL_243:

      goto LABEL_244;
    }

    if (v1038 != 2)
    {
      if (v1038 != 3)
      {
        if (v1038 != 4)
        {
          goto LABEL_244;
        }

        type metadata accessor for WrappedPass(0);
        v1039 = swift_getEnumCaseMultiPayload();
        if (v1039 == 2)
        {
          v1036[1], v1040, v1041, v1042, v1043, v1044, v1045, v1046;
          v1036[3], v1177, v1178, v1179, v1180, v1181, v1182, v1183;
          v1184 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v1185 = sub_1BE04CF34();
          (*(*(v1185 - 8) + 8))(v1036 + v1184, v1185);
        }

        else if (v1039 <= 1)
        {
        }

        v1186 = (v1036 + v4[6]);
        v1187 = type metadata accessor for IdentityCredential(0);
        if (!(*(*(v1187 - 1) + 48))(v1186, 1, v1187))
        {
          v1186[1], v1188, v1189, v1190, v1191, v1192, v1193, v1194;
          v1195 = v1187[5];
          v1196 = sub_1BE04DA84();
          (*(*(v1196 - 8) + 8))(v1186 + v1195, v1196);
          *(v1186 + v1187[6] + 8), v1197, v1198, v1199, v1200, v1201, v1202, v1203;
          *(v1186 + v1187[7] + 8), v1204, v1205, v1206, v1207, v1208, v1209, v1210;
          *(v1186 + v1187[8] + 8), v1211, v1212, v1213, v1214, v1215, v1216, v1217;
        }

        v1642 = v1020;
        v1218 = (v1036 + v4[7]);
        v1219 = type metadata accessor for BalanceInfo(0);
        if (!(*(*(v1219 - 8) + 48))(v1218, 1, v1219))
        {

          v1220 = *(v1219 + 28);
          v1221 = sub_1BE04AF64();
          v1222 = *(v1221 - 8);
          if (!(*(v1222 + 48))(v1218 + v1220, 1, v1221))
          {
            (*(v1222 + 8))(v1218 + v1220, v1221);
          }
        }

        v1223 = v1036 + v4[10];
        v1224 = type metadata accessor for PassEligibleRewardsInfo(0);
        if (!(*(*(v1224 - 8) + 48))(v1223, 1, v1224))
        {
          v1232 = *(v1223 + 2);
          if (v1232 != 1)
          {
            v1232, v1225, v1226, v1227, v1228, v1229, v1230, v1231;
            *(v1223 + 4), v1233, v1234, v1235, v1236, v1237, v1238, v1239;
            *(v1223 + 6), v1240, v1241, v1242, v1243, v1244, v1245, v1246;
          }

          v1247 = *(v1223 + 9);
          if (v1247 != 1)
          {
            v1247, v1225, v1226, v1227, v1228, v1229, v1230, v1231;
            *(v1223 + 11), v1248, v1249, v1250, v1251, v1252, v1253, v1254;
            *(v1223 + 13), v1255, v1256, v1257, v1258, v1259, v1260, v1261;
          }

          v1262 = *(v1224 + 28);
          v1263 = sub_1BE04AF64();
          v1264 = *(v1263 - 8);
          v1265 = *(v1264 + 48);
          if (!v1265(&v1223[v1262], 1, v1263))
          {
            (*(v1264 + 8))(&v1223[v1262], v1263);
          }

          v1638 = v1264;
          v1266 = *(v1224 + 32);
          v5 = v1645;
          v4 = v1646;
          if (!v1265(&v1223[v1266], 1, v1263))
          {
            (*(v1638 + 8))(&v1223[v1266], v1263);
          }
        }

        v1267 = (v1036 + v4[12]);
        if (*v1267)
        {

          v1267[4], v1268, v1269, v1270, v1271, v1272, v1273, v1274;
        }

        v1275 = (v1036 + v4[13]);
        v1020 = v1642;
        if (*v1275)
        {

          v1275[2], v1276, v1277, v1278, v1279, v1280, v1281, v1282;
        }

        *(v1036 + v4[14]), v1225, v1226, v1227, v1228, v1229, v1230, v1231;
        *(v1036 + v4[15]), v1283, v1284, v1285, v1286, v1287, v1288, v1289;
        v1047 = *(v1036 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B60, &unk_1BE0DAEA8) + 48));
        goto LABEL_243;
      }

      goto LABEL_174;
    }

    type metadata accessor for WrappedPass(0);
    v1048 = swift_getEnumCaseMultiPayload();
    if (v1048 == 2)
    {
      v1036[1], v1049, v1050, v1051, v1052, v1053, v1054, v1055;
      v1036[3], v1064, v1065, v1066, v1067, v1068, v1069, v1070;
      v1071 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v1072 = sub_1BE04CF34();
      (*(*(v1072 - 8) + 8))(v1036 + v1071, v1072);
    }

    else if (v1048 <= 1)
    {
    }

    v1073 = (v1036 + v4[6]);
    v1074 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v1074 - 1) + 48))(v1073, 1, v1074))
    {
      v1073[1], v1075, v1076, v1077, v1078, v1079, v1080, v1081;
      v1082 = v1074[5];
      v1083 = sub_1BE04DA84();
      (*(*(v1083 - 8) + 8))(v1073 + v1082, v1083);
      *(v1073 + v1074[6] + 8), v1084, v1085, v1086, v1087, v1088, v1089, v1090;
      *(v1073 + v1074[7] + 8), v1091, v1092, v1093, v1094, v1095, v1096, v1097;
      *(v1073 + v1074[8] + 8), v1098, v1099, v1100, v1101, v1102, v1103, v1104;
    }

    v1641 = v1020;
    v1105 = (v1036 + v4[7]);
    v1106 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v1106 - 8) + 48))(v1105, 1, v1106))
    {

      v1107 = *(v1106 + 28);
      v1108 = sub_1BE04AF64();
      v1109 = *(v1108 - 8);
      if (!(*(v1109 + 48))(v1105 + v1107, 1, v1108))
      {
        (*(v1109 + 8))(v1105 + v1107, v1108);
      }
    }

    v1110 = v1036 + v4[10];
    v1111 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v1111 - 8) + 48))(v1110, 1, v1111))
    {
      v1119 = *(v1110 + 2);
      if (v1119 != 1)
      {
        v1119, v1112, v1113, v1114, v1115, v1116, v1117, v1118;
        *(v1110 + 4), v1120, v1121, v1122, v1123, v1124, v1125, v1126;
        *(v1110 + 6), v1127, v1128, v1129, v1130, v1131, v1132, v1133;
      }

      v1134 = *(v1110 + 9);
      if (v1134 != 1)
      {
        v1134, v1112, v1113, v1114, v1115, v1116, v1117, v1118;
        *(v1110 + 11), v1135, v1136, v1137, v1138, v1139, v1140, v1141;
        *(v1110 + 13), v1142, v1143, v1144, v1145, v1146, v1147, v1148;
      }

      v1149 = *(v1111 + 28);
      v1150 = sub_1BE04AF64();
      v1151 = *(v1150 - 8);
      v1152 = *(v1151 + 48);
      if (!v1152(&v1110[v1149], 1, v1150))
      {
        (*(v1151 + 8))(&v1110[v1149], v1150);
      }

      v1637 = v1151;
      v1153 = *(v1111 + 32);
      v5 = v1645;
      v4 = v1646;
      if (!v1152(&v1110[v1153], 1, v1150))
      {
        (*(v1637 + 8))(&v1110[v1153], v1150);
      }
    }

    v1154 = (v1036 + v4[12]);
    if (*v1154)
    {

      v1154[4], v1155, v1156, v1157, v1158, v1159, v1160, v1161;
    }

    v1162 = (v1036 + v4[13]);
    v1020 = v1641;
    if (*v1162)
    {

      v1162[2], v1163, v1164, v1165, v1166, v1167, v1168, v1169;
    }

    *(v1036 + v4[14]), v1112, v1113, v1114, v1115, v1116, v1117, v1118;
    *(v1036 + v4[15]), v1170, v1171, v1172, v1173, v1174, v1175, v1176;
  }

LABEL_244:
  v1419 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8, &qword_1BE0DAD48);
  *(v1036 + *(v1419 + 28)), v1420, v1421, v1422, v1423, v1424, v1425, v1426;
  *(v2 + v1[33] + 8), v1427, v1428, v1429, v1430, v1431, v1432, v1433;
  v1441 = v2 + v1[34];
  if (*(v1441 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + v1[34]), v1434, v1435, v1436, v1437, v1438, v1439, v1440);
  }

  *(v1441 + 40), v1434, v1435, v1436, v1437, v1438, v1439, v1440;
  v1442 = (v2 + v1[35]);
  if (!v5(v1442, 1, v4))
  {
    type metadata accessor for WrappedPass(0);
    v1450 = swift_getEnumCaseMultiPayload();
    if (v1450 == 2)
    {
      v1442[1], v1451, v1452, v1453, v1454, v1455, v1456, v1457;
      v1442[3], v1458, v1459, v1460, v1461, v1462, v1463, v1464;
      v1465 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v1466 = sub_1BE04CF34();
      (*(*(v1466 - 8) + 8))(v1442 + v1465, v1466);
    }

    else if (v1450 <= 1)
    {
    }

    v1467 = (v1442 + v4[6]);
    v1468 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v1468 - 1) + 48))(v1467, 1, v1468))
    {
      v1467[1], v1469, v1470, v1471, v1472, v1473, v1474, v1475;
      v1476 = v1468[5];
      v1477 = sub_1BE04DA84();
      (*(*(v1477 - 8) + 8))(v1467 + v1476, v1477);
      *(v1467 + v1468[6] + 8), v1478, v1479, v1480, v1481, v1482, v1483, v1484;
      *(v1467 + v1468[7] + 8), v1485, v1486, v1487, v1488, v1489, v1490, v1491;
      *(v1467 + v1468[8] + 8), v1492, v1493, v1494, v1495, v1496, v1497, v1498;
    }

    v1499 = (v1442 + v4[7]);
    v1500 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v1500 - 8) + 48))(v1499, 1, v1500))
    {

      v1501 = *(v1500 + 28);
      v1502 = sub_1BE04AF64();
      v1503 = *(v1502 - 8);
      if (!(*(v1503 + 48))(v1499 + v1501, 1, v1502))
      {
        (*(v1503 + 8))(v1499 + v1501, v1502);
      }
    }

    v1504 = v1442 + v4[10];
    v1505 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v1505 - 8) + 48))(v1504, 1, v1505))
    {
      v1513 = *(v1504 + 2);
      if (v1513 != 1)
      {
        v1513, v1506, v1507, v1508, v1509, v1510, v1511, v1512;
        *(v1504 + 4), v1514, v1515, v1516, v1517, v1518, v1519, v1520;
        *(v1504 + 6), v1521, v1522, v1523, v1524, v1525, v1526, v1527;
      }

      v1528 = *(v1504 + 9);
      if (v1528 != 1)
      {
        v1528, v1506, v1507, v1508, v1509, v1510, v1511, v1512;
        *(v1504 + 11), v1529, v1530, v1531, v1532, v1533, v1534, v1535;
        *(v1504 + 13), v1536, v1537, v1538, v1539, v1540, v1541, v1542;
      }

      v1543 = *(v1505 + 28);
      v1544 = sub_1BE04AF64();
      v1545 = *(v1544 - 8);
      v1546 = *(v1545 + 48);
      if (!v1546(&v1504[v1543], 1, v1544))
      {
        (*(v1545 + 8))(&v1504[v1543], v1544);
      }

      v1547 = *(v1505 + 32);
      v4 = v1646;
      if (!v1546(&v1504[v1547], 1, v1544))
      {
        (*(v1545 + 8))(&v1504[v1547], v1544);
      }
    }

    v1548 = (v1442 + v4[12]);
    if (*v1548)
    {

      v1548[4], v1549, v1550, v1551, v1552, v1553, v1554, v1555;
    }

    v1556 = (v1442 + v4[13]);
    if (*v1556)
    {

      v1556[2], v1557, v1558, v1559, v1560, v1561, v1562, v1563;
    }

    *(v1442 + v4[14]), v1506, v1507, v1508, v1509, v1510, v1511, v1512;
    *(v1442 + v4[15]), v1564, v1565, v1566, v1567, v1568, v1569, v1570;
  }

  *(v1442 + *(v1020 + 28)), v1443, v1444, v1445, v1446, v1447, v1448, v1449;
  v1571 = (v2 + v1[36]);
  *v1571, v1572, v1573, v1574, v1575, v1576, v1577, v1578;
  v1571[1], v1579, v1580, v1581, v1582, v1583, v1584, v1585;
  v1586 = v2 + v1[37];
  *(v1586 + 8), v1587, v1588, v1589, v1590, v1591, v1592, v1593;
  *(v1586 + 16), v1594, v1595, v1596, v1597, v1598, v1599, v1600;
  *(v2 + v1[38] + 8), v1601, v1602, v1603, v1604, v1605, v1606, v1607;
  *(v2 + v1[39] + 8), v1608, v1609, v1610, v1611, v1612, v1613, v1614;
  v1615 = v1[40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1623 = sub_1BE04C884();
    (*(*(v1623 - 8) + 8))(v2 + v1615, v1623);
  }

  else
  {
    *(v2 + v1615), v1616, v1617, v1618, v1619, v1620, v1621, v1622;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD4CCB7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD4BC658(a1, v6, a2);
}

uint64_t sub_1BD4CCC28(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_1BD4CCCA4()
{
  result = qword_1EBD47B78;
  if (!qword_1EBD47B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47B70, &qword_1BE0F22F0);
    sub_1BD0DE4F4(&qword_1EBD47B80, &qword_1EBD47B68, &qword_1BE0DAEB8, &unk_1BE0E6430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47B78);
  }

  return result;
}

uint64_t sub_1BD4CCD5C()
{
  v2 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BD0F985C;

  return sub_1BD4C0A38(v4, v5, v0 + v3);
}

uint64_t sub_1BD4CCE58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD4CCEC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD4CCF28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD4CCF88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD4CD3A0(&qword_1EBD47EB0, type metadata accessor for PushNavigationStackModel, &unk_1BE0E54CC);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtC9PassKitUI24PushNavigationStackModel__navigationPath;
  swift_beginAccess();
  v13 = sub_1BE04E924();
  return (*(*(v13 - 8) + 16))(a2, v3 + v12, v13);
}

uint64_t sub_1BD4CD080(uint64_t a1)
{
  v2 = sub_1BE04E924();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1BD5BC64C(v5);
}

id sub_1BD4CD14C()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  v7 = PKOslo2024UIUpdatesEnabled();
  v8 = *(v1 + 104);
  if (v7)
  {
    v8(v6, *MEMORY[0x1E69B80D8], v0);
    result = PKPassKitBundle();
    if (result)
    {
      v10 = result;
      v11 = sub_1BE04B6F4();
LABEL_6:

      (*(v1 + 8))(v6, v0);
      return v11;
    }

    __break(1u);
  }

  else
  {
    v8(v3, *MEMORY[0x1E69B8068], v0);
    result = PKPassKitBundle();
    if (result)
    {
      v10 = result;
      v11 = sub_1BE04B6F4();
      v6 = v3;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD4CD3A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD4CD3E8()
{
  result = qword_1EBD47BE0;
  if (!qword_1EBD47BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47BC8, &qword_1BE0DAF38);
    sub_1BD4CD4A4();
    sub_1BD4CD3A0(&qword_1EBD412C0, type metadata accessor for PaymentPassHubView, &unk_1BE0B8630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47BE0);
  }

  return result;
}

unint64_t sub_1BD4CD4A4()
{
  result = qword_1EBD47BE8;
  if (!qword_1EBD47BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47BF0, &qword_1BE0DAF40);
    sub_1BD4CD530();
    sub_1BD4CD6EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47BE8);
  }

  return result;
}

unint64_t sub_1BD4CD530()
{
  result = qword_1EBD47BF8;
  if (!qword_1EBD47BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47C00, &qword_1BE0DAF48);
    sub_1BD4CD3A0(&qword_1EBD39490, type metadata accessor for BillingAddressEditor, &unk_1BE1109C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47C08, &qword_1BE0DAF50);
    sub_1BD4CD630();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47BF8);
  }

  return result;
}

unint64_t sub_1BD4CD630()
{
  result = qword_1EBD47C10;
  if (!qword_1EBD47C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47C08, &qword_1BE0DAF50);
    sub_1BD4CD3A0(&qword_1EBD47AC0, type metadata accessor for PaymentSetupNavigationController, &unk_1BE0DAC64);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47C10);
  }

  return result;
}

unint64_t sub_1BD4CD6EC()
{
  result = qword_1EBD47C18;
  if (!qword_1EBD47C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47C20, &qword_1BE0DAF58);
    sub_1BD4CD778();
    sub_1BD4CD804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47C18);
  }

  return result;
}

unint64_t sub_1BD4CD778()
{
  result = qword_1EBD47C28;
  if (!qword_1EBD47C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47C30, &unk_1BE0DAF60);
    sub_1BD33E1D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47C28);
  }

  return result;
}

unint64_t sub_1BD4CD804()
{
  result = qword_1EBD47C38;
  if (!qword_1EBD47C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47C40, &qword_1BE0DAF70);
    sub_1BD4CD3A0(&qword_1EBD47C48, type metadata accessor for PaymentOfferInstallmentCriteriaSetupExplanationView, &unk_1BE100B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47C38);
  }

  return result;
}

id sub_1BD4CD8B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD4BFAA4(a1, v6, a2);
}

unint64_t sub_1BD4CD938()
{
  result = qword_1EBD47C58;
  if (!qword_1EBD47C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47BA8, &qword_1BE0DAF20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47BA0, &qword_1BE0DAF18);
    _s11DetailSheetOMa(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47BC8, &qword_1BE0DAF38);
    sub_1BD0DE4F4(&qword_1EBD47BD0, &qword_1EBD47BA0, &qword_1BE0DAF18, MEMORY[0x1E697CCF0]);
    sub_1BD4CD3A0(&qword_1EBD47BD8, _s11DetailSheetOMa, &unk_1BE0EE240);
    sub_1BD4CD3E8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47C58);
  }

  return result;
}

unint64_t sub_1BD4CDAA8()
{
  result = qword_1EBD47C60;
  if (!qword_1EBD47C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47C60);
  }

  return result;
}

unint64_t sub_1BD4CDB04()
{
  result = qword_1EBD47C70;
  if (!qword_1EBD47C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47BB0, &qword_1BE0DAF28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47BA8, &qword_1BE0DAF20);
    sub_1BD4CD938();
    sub_1BD4CDAA8();
    sub_1BD459428();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD39E18, &qword_1EBD39E20, &unk_1BE0E4C40, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47C70);
  }

  return result;
}

unint64_t sub_1BD4CDC28()
{
  result = qword_1EBD47C78;
  if (!qword_1EBD47C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47C78);
  }

  return result;
}

unint64_t sub_1BD4CDC7C()
{
  result = qword_1EBD47C80;
  if (!qword_1EBD47C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47C80);
  }

  return result;
}

void sub_1BD4CDCD0(void *a1)
{
  v3 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1BD4BFBFC(a1, v4);
}

unint64_t sub_1BD4CDD40()
{
  result = qword_1EBD47CF8;
  if (!qword_1EBD47CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47CD8, &qword_1BE0DAFE8);
    sub_1BD462198();
    sub_1BD4CDDCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47CF8);
  }

  return result;
}

unint64_t sub_1BD4CDDCC()
{
  result = qword_1EBD47D00;
  if (!qword_1EBD47D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47CC8, &qword_1BE0DAFD0);
    sub_1BD462198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47D00);
  }

  return result;
}

uint64_t sub_1BD4CDE64(uint64_t a1, void *a2, uint64_t a3)
{
  type metadata accessor for PaymentPassMethodSheet(0);

  return sub_1BD4C7FB4(a1, a2, a3);
}

uint64_t sub_1BD4CDEF4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BD4CDF70()
{
  result = qword_1EBD47D30;
  if (!qword_1EBD47D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47D38, &qword_1BE0DB020);
    sub_1BD4CDFF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47D30);
  }

  return result;
}

unint64_t sub_1BD4CDFF4()
{
  result = qword_1EBD47D40;
  if (!qword_1EBD47D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47D48, &qword_1BE0DB028);
    sub_1BD4CE078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47D40);
  }

  return result;
}

unint64_t sub_1BD4CE078()
{
  result = qword_1EBD47D50;
  if (!qword_1EBD47D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47D58, &qword_1BE0DB030);
    sub_1BD0DE4F4(&qword_1EBD47D60, &qword_1EBD47D68, &qword_1BE0DB038, MEMORY[0x1E697D680]);
    sub_1BD4CD3A0(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47D50);
  }

  return result;
}

void sub_1BD4CE19C(char a1, void *a2)
{
  v5 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BD4C84F0(a1, a2, v2 + v6, v7);
}

uint64_t sub_1BD4CE248@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD4C0E00(a1, v6, a2);
}

void sub_1BD4CE2C8()
{
  v1 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BD4C11B4(v0 + v2, v3);
}

void sub_1BD4CE3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (a2)
  {
    sub_1BE048C84();
    v8 = a5;
    v9 = a6;

    sub_1BE048C84();
  }
}

void sub_1BD4CE414(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  if (a2)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;

    a4, v11, v12, v13, v14, v15, v16, v17;
  }
}

void sub_1BD4CE490(void *a1, id a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  if (a3 == 2)
  {
  }

  else if (a3 == 1)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }
}

double sub_1BD4CE4B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8, &qword_1BE0DB080) - 8);
  v9 = v2 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1BD4C74B4(a1, v2 + v6, v9, a2);
}

unint64_t sub_1BD4CE5A4()
{
  result = qword_1EBD47E08;
  if (!qword_1EBD47E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47DF8, &qword_1BE0E6360);
    sub_1BD4CD3A0(&qword_1EBD397D8, type metadata accessor for PassRow, &unk_1BE0ED358);
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47E08);
  }

  return result;
}

uint64_t sub_1BD4CE68C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD4CE73C()
{
  result = qword_1EBD47E58;
  if (!qword_1EBD47E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47E58);
  }

  return result;
}

uint64_t sub_1BD4CE814(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1BD4CE8A8()
{
  result = qword_1EBD47E90;
  if (!qword_1EBD47E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47E88, &qword_1BE0DB138);
    sub_1BD0DE4F4(&qword_1EBD47E98, &qword_1EBD47EA0, &qword_1BE0DB140, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47E90);
  }

  return result;
}

void sub_1BD4CE958(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  if (a2)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    a6, v10, v11, v12, v13, v14, v15, v16;

    a4, v17, v18, v19, v20, v21, v22, v23;
  }
}

void sub_1BD4CE9A8()
{
  v1 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  sub_1BD4C64F0(v3, (v0 + v2), v5, v6);
}

unint64_t sub_1BD4CEA3C()
{
  result = qword_1EBD47F08;
  if (!qword_1EBD47F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47EE8, &qword_1BE0DB1B0);
    sub_1BD4CE68C(&qword_1EBD47F10, &qword_1EBD47EF8, &qword_1BE0DB1C0, sub_1BD4CEB24);
    sub_1BD4CD3A0(&qword_1EBD42A38, type metadata accessor for ListRowGestureActionsModifier, &unk_1BE0FCED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47F08);
  }

  return result;
}

unint64_t sub_1BD4CEB24()
{
  result = qword_1EBD47F18;
  if (!qword_1EBD47F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47F20, &qword_1BE0DB200);
    sub_1BD0DE4F4(&qword_1EBD47F28, &qword_1EBD47F30, &unk_1BE0E6C30, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0, &qword_1BE0B8740, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47F18);
  }

  return result;
}

double sub_1BD4CEC08@<D0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AvailablePass(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1BD4C565C(a1, v2 + v6, v9, a2);
}

unint64_t sub_1BD4CECEC()
{
  result = qword_1EBD47F48;
  if (!qword_1EBD47F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47F40, &qword_1BE0DB210);
    sub_1BD0DE4F4(&qword_1EBD47F50, &qword_1EBD47F58, &qword_1BE0DB218, MEMORY[0x1E697D680]);
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47F48);
  }

  return result;
}

void sub_1BD4CEDD0()
{
  v1 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AvailablePass(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  sub_1BD4C2D30(v0 + v5, *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

id sub_1BD4CEEBC@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + 16);
  v3 = sub_1BD4C290C(*(v1 + 32), v5);
  *a1 = v5;
  *(a1 + 8) = 1;
  *(a1 + 9) = v3 & 1;

  return v5;
}

uint64_t objectdestroy_78Tm()
{
  v1 = type metadata accessor for PaymentPassMethodSheet(0);
  v1773 = *(*(v1 - 1) + 80);
  v1771 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for AvailablePass(0);
  v3 = *(v2 - 1);
  v4 = *(v3 + 48);
  v5 = *(v3 + 80);
  v1772 = (v1773 + 16) & ~v1773;
  v1776 = v0;
  v6 = v0 + v1772;
  v7 = (v0 + v1772 + v1[6]);
  v1777 = v5;
  v1774 = v4;
  if (!v4(v7, 1, v2))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v7[1], v9, v10, v11, v12, v13, v14, v15;
      v7[3], v16, v17, v18, v19, v20, v21, v22;
      v23 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v24 = sub_1BE04CF34();
      (*(*(v24 - 8) + 8))(v7 + v23, v24);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v25 = (v7 + v2[6]);
    v26 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v26 - 1) + 48))(v25, 1, v26))
    {
      v25[1], v27, v28, v29, v30, v31, v32, v33;
      v34 = v26[5];
      v35 = sub_1BE04DA84();
      (*(*(v35 - 8) + 8))(v25 + v34, v35);
      *(v25 + v26[6] + 8), v36, v37, v38, v39, v40, v41, v42;
      *(v25 + v26[7] + 8), v43, v44, v45, v46, v47, v48, v49;
      *(v25 + v26[8] + 8), v50, v51, v52, v53, v54, v55, v56;
    }

    v57 = (v7 + v2[7]);
    v58 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v58 - 8) + 48))(v57, 1, v58))
    {

      v59 = *(v58 + 28);
      v60 = sub_1BE04AF64();
      v61 = *(v60 - 8);
      if (!(*(v61 + 48))(v57 + v59, 1, v60))
      {
        (*(v61 + 8))(v57 + v59, v60);
      }
    }

    v62 = v7 + v2[10];
    v63 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v63 - 8) + 48))(v62, 1, v63))
    {
      v71 = *(v62 + 2);
      if (v71 != 1)
      {
        v71, v64, v65, v66, v67, v68, v69, v70;
        *(v62 + 4), v72, v73, v74, v75, v76, v77, v78;
        *(v62 + 6), v79, v80, v81, v82, v83, v84, v85;
      }

      v86 = *(v62 + 9);
      if (v86 != 1)
      {
        v86, v64, v65, v66, v67, v68, v69, v70;
        *(v62 + 11), v87, v88, v89, v90, v91, v92, v93;
        *(v62 + 13), v94, v95, v96, v97, v98, v99, v100;
      }

      v101 = *(v63 + 28);
      v102 = sub_1BE04AF64();
      v1763 = *(v102 - 8);
      v103 = *(v1763 + 48);
      if (!v103(&v62[v101], 1, v102))
      {
        (*(v1763 + 8))(&v62[v101], v102);
      }

      v104 = *(v63 + 32);
      v105 = v103(&v62[v104], 1, v102);
      v5 = v1777;
      v4 = v1774;
      if (!v105)
      {
        (*(v1763 + 8))(&v62[v104], v102);
      }
    }

    v106 = (v7 + v2[12]);
    if (*v106)
    {

      v106[4], v107, v108, v109, v110, v111, v112, v113;
    }

    v114 = (v7 + v2[13]);
    if (*v114)
    {

      v114[2], v115, v116, v117, v118, v119, v120, v121;
    }

    *(v7 + v2[14]), v64, v65, v66, v67, v68, v69, v70;
    *(v7 + v2[15]), v122, v123, v124, v125, v126, v127, v128;
  }

  v129 = type metadata accessor for Passes(0);

  *(v7 + v129[7]), v130, v131, v132, v133, v134, v135, v136;
  *(v7 + v129[9]), v137, v138, v139, v140, v141, v142, v143;
  *(v7 + v129[11]), v144, v145, v146, v147, v148, v149, v150;
  v151 = v6 + v1[7];
  if (*(v151 + 48))
  {
    sub_1BD0D455C(*v151, *(v151 + 8), *(v151 + 16));

    *(v151 + 48), v152, v153, v154, v155, v156, v157, v158;
    *(v151 + 64), v159, v160, v161, v162, v163, v164, v165;
  }

  v166 = (v6 + v1[8]);
  v167 = type metadata accessor for PeerPaymentModel(0);
  v168 = *(*(v167 - 8) + 48);
  if (!v168(v166, 1, v167))
  {

    v169 = (v166 + *(v167 + 20));
    type metadata accessor for WrappedPass(0);
    v170 = swift_getEnumCaseMultiPayload();
    v1757 = v129;
    v1747 = v168;
    if (v170 == 2)
    {
      v169[1], v171, v172, v173, v174, v175, v176, v177;
      v169[3], v178, v179, v180, v181, v182, v183, v184;
      v185 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v186 = sub_1BE04CF34();
      (*(*(v186 - 8) + 8))(v169 + v185, v186);
    }

    else if (v170 <= 1)
    {
    }

    v1754 = v167;
    v187 = (v169 + v2[6]);
    v188 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v188 - 1) + 48))(v187, 1, v188))
    {
      v187[1], v189, v190, v191, v192, v193, v194, v195;
      v196 = v188[5];
      v197 = sub_1BE04DA84();
      (*(*(v197 - 8) + 8))(v187 + v196, v197);
      *(v187 + v188[6] + 8), v198, v199, v200, v201, v202, v203, v204;
      *(v187 + v188[7] + 8), v205, v206, v207, v208, v209, v210, v211;
      *(v187 + v188[8] + 8), v212, v213, v214, v215, v216, v217, v218;
    }

    v219 = (v169 + v2[7]);
    v220 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v220 - 8) + 48))(v219, 1, v220))
    {

      v221 = *(v220 + 28);
      v222 = sub_1BE04AF64();
      v223 = *(v222 - 8);
      if (!(*(v223 + 48))(v219 + v221, 1, v222))
      {
        (*(v223 + 8))(v219 + v221, v222);
      }
    }

    v224 = v169 + v2[10];
    v225 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v225 - 8) + 48))(v224, 1, v225))
    {
      v233 = *(v224 + 2);
      if (v233 != 1)
      {
        v233, v226, v227, v228, v229, v230, v231, v232;
        *(v224 + 4), v234, v235, v236, v237, v238, v239, v240;
        *(v224 + 6), v241, v242, v243, v244, v245, v246, v247;
      }

      v1752 = v2;
      v248 = *(v224 + 9);
      if (v248 != 1)
      {
        v248, v226, v227, v228, v229, v230, v231, v232;
        *(v224 + 11), v249, v250, v251, v252, v253, v254, v255;
        *(v224 + 13), v256, v257, v258, v259, v260, v261, v262;
      }

      v263 = *(v225 + 28);
      v264 = sub_1BE04AF64();
      v1750 = *(v264 - 8);
      v265 = *(v1750 + 48);
      if (!v265(&v224[v263], 1, v264))
      {
        (*(v1750 + 8))(&v224[v263], v264);
      }

      v266 = *(v225 + 32);
      v2 = v1752;
      if (!v265(&v224[v266], 1, v264))
      {
        (*(v1750 + 8))(&v224[v266], v264);
      }
    }

    v267 = (v169 + v2[12]);
    v167 = v1754;
    v129 = v1757;
    if (*v267)
    {

      v267[4], v268, v269, v270, v271, v272, v273, v274;
    }

    v275 = (v169 + v2[13]);
    v5 = v1777;
    v4 = v1774;
    if (*v275)
    {

      v275[2], v276, v277, v278, v279, v280, v281, v282;
    }

    *(v169 + v2[14]), v226, v227, v228, v229, v230, v231, v232;
    *(v169 + v2[15]), v283, v284, v285, v286, v287, v288, v289;
    v290 = (v166 + *(v1754 + 24));
    if (*v290 != 1)
    {

      v298 = v290[3];
      if (v298)
      {
        v298, v291, v292, v293, v294, v295, v296, v297;
        v290[5], v299, v300, v301, v302, v303, v304, v305;
        v290[7], v306, v307, v308, v309, v310, v311, v312;
        v290[9], v313, v314, v315, v316, v317, v318, v319;
      }
    }

    v168 = v1747;
  }

  v320 = (v6 + v1[9]);
  v321 = _s14PaymentSummaryVMa(0);
  if (!(*(*(v321 - 1) + 48))(v320, 1, v321))
  {

    v320[4], v322, v323, v324, v325, v326, v327, v328;
    v320[6], v329, v330, v331, v332, v333, v334, v335;
    v1746 = _s11TotalAmountVMa(0);
    v336 = (v320 + v1746[10]);
    _s22SummaryItemPricingTypeOMa(0);
    v337 = swift_getEnumCaseMultiPayload();
    v1751 = v320;
    switch(v337)
    {
      case 2:
        v336[1], v338, v339, v340, v341, v342, v343, v344;
        break;
      case 1:
        v379 = sub_1BE04AF64();
        (*(*(v379 - 8) + 8))(v336, v379);
        break;
      case 0:
        v1748 = v168;
        v1755 = v167;
        v1743 = v321;
        v345 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
        v346 = v345[6];
        v347 = sub_1BE04AF64();
        v348 = *(v347 - 8);
        v349 = *(v348 + 48);
        if (!v349(v336 + v346, 1, v347))
        {
          (*(v348 + 8))(v336 + v346, v347);
        }

        v350 = v345[7];
        if (!v349(v336 + v350, 1, v347))
        {
          (*(v348 + 8))(v336 + v350, v347);
        }

        *(v336 + v345[9] + 8), v351, v352, v353, v354, v355, v356, v357;
        *(v336 + v345[10] + 8), v358, v359, v360, v361, v362, v363, v364;
        *(v336 + v345[11] + 8), v365, v366, v367, v368, v369, v370, v371;
        *(v336 + v345[12] + 8), v372, v373, v374, v375, v376, v377, v378;
        v4 = v1774;
        v167 = v1755;
        v321 = v1743;
        v168 = v1748;
        break;
    }

    v1753 = v2;
    v380 = v4;
    v381 = v1746;
    v382 = v1751;

    v383 = (v1751 + v1746[15]);
    v384 = v168(v383, 1, v167);
    v385 = v1777;
    if (!v384)
    {
      v1758 = v129;

      v1764 = v383;
      v386 = (v383 + *(v167 + 20));
      type metadata accessor for WrappedPass(0);
      v387 = swift_getEnumCaseMultiPayload();
      v1744 = v321;
      if (v387 == 2)
      {
        v386[1], v388, v389, v390, v391, v392, v393, v394;
        v386[3], v396, v397, v398, v399, v400, v401, v402;
        v403 = *(type metadata accessor for PlaceholderPass(0) + 28);
        v404 = sub_1BE04CF34();
        (*(*(v404 - 8) + 8))(v386 + v403, v404);
        v395 = v1753;
      }

      else
      {
        v395 = v1753;
        if (v387 <= 1)
        {
        }
      }

      v1756 = v167;
      v405 = (v386 + v395[6]);
      v406 = type metadata accessor for IdentityCredential(0);
      if (!(*(*(v406 - 1) + 48))(v405, 1, v406))
      {
        v405[1], v407, v408, v409, v410, v411, v412, v413;
        v414 = v406[5];
        v415 = sub_1BE04DA84();
        (*(*(v415 - 8) + 8))(v405 + v414, v415);
        *(v405 + v406[6] + 8), v416, v417, v418, v419, v420, v421, v422;
        *(v405 + v406[7] + 8), v423, v424, v425, v426, v427, v428, v429;
        *(v405 + v406[8] + 8), v430, v431, v432, v433, v434, v435, v436;
      }

      v437 = (v386 + v395[7]);
      v438 = type metadata accessor for BalanceInfo(0);
      if (!(*(*(v438 - 8) + 48))(v437, 1, v438))
      {

        v439 = *(v438 + 28);
        v440 = sub_1BE04AF64();
        v441 = *(v440 - 8);
        if (!(*(v441 + 48))(v437 + v439, 1, v440))
        {
          (*(v441 + 8))(v437 + v439, v440);
        }
      }

      v442 = v386 + v395[10];
      v443 = type metadata accessor for PassEligibleRewardsInfo(0);
      if (!(*(*(v443 - 8) + 48))(v442, 1, v443))
      {
        v451 = *(v442 + 2);
        if (v451 != 1)
        {
          v451, v444, v445, v446, v447, v448, v449, v450;
          *(v442 + 4), v452, v453, v454, v455, v456, v457, v458;
          *(v442 + 6), v459, v460, v461, v462, v463, v464, v465;
        }

        v466 = *(v442 + 9);
        if (v466 != 1)
        {
          v466, v444, v445, v446, v447, v448, v449, v450;
          *(v442 + 11), v467, v468, v469, v470, v471, v472, v473;
          *(v442 + 13), v474, v475, v476, v477, v478, v479, v480;
        }

        v481 = *(v443 + 28);
        v482 = sub_1BE04AF64();
        v1749 = *(v482 - 8);
        v483 = *(v1749 + 48);
        if (!v483(&v442[v481], 1, v482))
        {
          (*(v1749 + 8))(&v442[v481], v482);
        }

        v484 = *(v443 + 32);
        if (!v483(&v442[v484], 1, v482))
        {
          (*(v1749 + 8))(&v442[v484], v482);
        }
      }

      v485 = (v386 + v395[12]);
      if (*v485)
      {

        v485[4], v486, v487, v488, v489, v490, v491, v492;
      }

      v493 = (v386 + v395[13]);
      v321 = v1744;
      if (*v493)
      {

        v493[2], v494, v495, v496, v497, v498, v499, v500;
      }

      *(v386 + v395[14]), v444, v445, v446, v447, v448, v449, v450;
      *(v386 + v395[15]), v501, v502, v503, v504, v505, v506, v507;
      v129 = v1758;
      v508 = v1764;
      v509 = (v1764 + *(v1756 + 24));
      if (*v509 != 1)
      {

        v517 = v509[3];
        if (v517)
        {
          v517, v510, v511, v512, v513, v514, v515, v516;
          v509[5], v518, v519, v520, v521, v522, v523, v524;
          v509[7], v525, v526, v527, v528, v529, v530, v531;
          v509[9], v532, v533, v534, v535, v536, v537, v538;
        }

        v508 = v1764;
      }

      v380 = v1774;
      v385 = v1777;

      v381 = v1746;
      v382 = v1751;
    }

    v539 = (v382 + v381[16]);
    v5 = v385;
    v4 = v380;
    v2 = v1753;
    if (!(*(*(v129 - 1) + 48))(v539, 1, v129))
    {
      if (!v4(v539, 1, v1753))
      {
        type metadata accessor for WrappedPass(0);
        v547 = swift_getEnumCaseMultiPayload();
        v1759 = v129;
        if (v547 == 2)
        {
          v539[1], v548, v549, v550, v551, v552, v553, v554;
          v539[3], v555, v556, v557, v558, v559, v560, v561;
          v562 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v563 = sub_1BE04CF34();
          (*(*(v563 - 8) + 8))(v539 + v562, v563);
        }

        else if (v547 <= 1)
        {
        }

        v564 = (v539 + v1753[6]);
        v565 = type metadata accessor for IdentityCredential(0);
        if (!(*(*(v565 - 1) + 48))(v564, 1, v565))
        {
          v564[1], v566, v567, v568, v569, v570, v571, v572;
          v573 = v565[5];
          v574 = sub_1BE04DA84();
          (*(*(v574 - 8) + 8))(v564 + v573, v574);
          *(v564 + v565[6] + 8), v575, v576, v577, v578, v579, v580, v581;
          *(v564 + v565[7] + 8), v582, v583, v584, v585, v586, v587, v588;
          *(v564 + v565[8] + 8), v589, v590, v591, v592, v593, v594, v595;
        }

        v1745 = v321;
        v596 = (v539 + v1753[7]);
        v597 = type metadata accessor for BalanceInfo(0);
        if (!(*(*(v597 - 8) + 48))(v596, 1, v597))
        {

          v598 = *(v597 + 28);
          v599 = sub_1BE04AF64();
          v600 = *(v599 - 8);
          if (!(*(v600 + 48))(v596 + v598, 1, v599))
          {
            (*(v600 + 8))(v596 + v598, v599);
          }
        }

        v601 = v539 + v1753[10];
        v602 = type metadata accessor for PassEligibleRewardsInfo(0);
        if (!(*(*(v602 - 8) + 48))(v601, 1, v602))
        {
          v610 = *(v601 + 2);
          if (v610 != 1)
          {
            v610, v603, v604, v605, v606, v607, v608, v609;
            *(v601 + 4), v611, v612, v613, v614, v615, v616, v617;
            *(v601 + 6), v618, v619, v620, v621, v622, v623, v624;
          }

          v625 = *(v601 + 9);
          if (v625 != 1)
          {
            v625, v603, v604, v605, v606, v607, v608, v609;
            *(v601 + 11), v626, v627, v628, v629, v630, v631, v632;
            *(v601 + 13), v633, v634, v635, v636, v637, v638, v639;
          }

          v640 = *(v602 + 28);
          v641 = sub_1BE04AF64();
          v1765 = *(v641 - 8);
          v642 = *(v1765 + 48);
          if (!v642(&v601[v640], 1, v641))
          {
            (*(v1765 + 8))(&v601[v640], v641);
          }

          v643 = *(v602 + 32);
          if (!v642(&v601[v643], 1, v641))
          {
            (*(v1765 + 8))(&v601[v643], v641);
          }
        }

        v644 = (v539 + v1753[12]);
        v129 = v1759;
        if (*v644)
        {

          v644[4], v645, v646, v647, v648, v649, v650, v651;
        }

        v652 = (v539 + v1753[13]);
        v5 = v1777;
        v4 = v1774;
        v321 = v1745;
        if (*v652)
        {

          v652[2], v653, v654, v655, v656, v657, v658, v659;
        }

        *(v539 + v1753[14]), v603, v604, v605, v606, v607, v608, v609;
        *(v539 + v1753[15]), v660, v661, v662, v663, v664, v665, v666;
      }

      *(v539 + v129[7]), v667, v668, v669, v670, v671, v672, v673;
      *(v539 + v129[9]), v674, v675, v676, v677, v678, v679, v680;
      *(v539 + v129[11]), v681, v682, v683, v684, v685, v686, v687;
      v382 = v1751;
    }

    *(v382 + v321[5]), v540, v541, v542, v543, v544, v545, v546;
    *(v382 + v321[6] + 8), v688, v689, v690, v691, v692, v693, v694;
    v702 = v382 + v321[7];
    v703 = *(v702 + 8);
    if (v703)
    {
      v703, v695, v696, v697, v698, v699, v700, v701;
      *(v702 + 24), v704, v705, v706, v707, v708, v709, v710;
    }

    v711 = v382 + v321[9];
    v712 = *(v711 + 8);
    if (v712)
    {
      v712, v695, v696, v697, v698, v699, v700, v701;
      *(v711 + 24), v713, v714, v715, v716, v717, v718, v719;
      *(v711 + 40), v720, v721, v722, v723, v724, v725, v726;
    }

    v727 = v382 + v321[10];
    v728 = *(v727 + 8);
    if (v728)
    {
      v728, v695, v696, v697, v698, v699, v700, v701;
      *(v727 + 24), v729, v730, v731, v732, v733, v734, v735;
      *(v727 + 40), v736, v737, v738, v739, v740, v741, v742;
    }

    v743 = (v382 + v321[11]);
    v744 = type metadata accessor for DeferredPaymentRequest(0);
    if (!(*(*(v744 - 1) + 48))(v743, 1, v744))
    {
      v752 = v321;
      v743[1], v745, v746, v747, v748, v749, v750, v751;
      v743[3], v753, v754, v755, v756, v757, v758, v759;
      v743[5], v760, v761, v762, v763, v764, v765, v766;
      v767 = v744[7];
      v768 = sub_1BE04AF64();
      v769 = *(v768 - 8);
      if (!(*(v769 + 48))(v743 + v767, 1, v768))
      {
        (*(v769 + 8))(v743 + v767, v768);
      }

      v770 = v744[8];
      v771 = sub_1BE04B3B4();
      v772 = *(v771 - 8);
      if (!(*(v772 + 48))(v743 + v770, 1, v771))
      {
        (*(v772 + 8))(v743 + v770, v771);
      }

      v4 = v1774;
      v321 = v752;
      v5 = v1777;
    }

    *(v382 + v321[12]), v745, v746, v747, v748, v749, v750, v751;
  }

  *(v6 + v1[12] + 8), v773, v774, v775, v776, v777, v778, v779;
  *(v6 + v1[13] + 8), v780, v781, v782, v783, v784, v785, v786;
  *(v6 + v1[14] + 8), v787, v788, v789, v790, v791, v792, v793;
  *(v6 + v1[15] + 8), v794, v795, v796, v797, v798, v799, v800;
  *(v6 + v1[16] + 8), v801, v802, v803, v804, v805, v806, v807;
  *(v6 + v1[17] + 8), v808, v809, v810, v811, v812, v813, v814;
  *(v6 + v1[18] + 8), v815, v816, v817, v818, v819, v820, v821;
  *(v6 + v1[19] + 8), v822, v823, v824, v825, v826, v827, v828;
  *(v6 + v1[20] + 8), v829, v830, v831, v832, v833, v834, v835;
  *(v6 + v1[21]), v836, v837, v838, v839, v840, v841, v842;
  *(v6 + v1[22]), v843, v844, v845, v846, v847, v848, v849;
  *(v6 + v1[23] + 8), v850, v851, v852, v853, v854, v855, v856;
  v864 = v6 + v1[24];
  if (*v864)
  {
    *(v864 + 8), v857, v858, v859, v860, v861, v862, v863;
  }

  *(v6 + v1[26]), v857, v858, v859, v860, v861, v862, v863;
  v872 = v6 + v1[27];
  v873 = *(v872 + 8);
  if (v873)
  {
    v873, v865, v866, v867, v868, v869, v870, v871;
    *(v872 + 24), v874, v875, v876, v877, v878, v879, v880;
  }

  *(v872 + 48), v865, v866, v867, v868, v869, v870, v871;
  *(v6 + v1[28]), v881, v882, v883, v884, v885, v886, v887;
  v888 = (v6 + v1[29]);

  v888[1], v889, v890, v891, v892, v893, v894, v895;
  v896 = (v6 + v1[30]);
  if (!v4(v896, 1, v2))
  {
    type metadata accessor for WrappedPass(0);
    v897 = swift_getEnumCaseMultiPayload();
    if (v897 == 2)
    {
      v896[1], v898, v899, v900, v901, v902, v903, v904;
      v896[3], v905, v906, v907, v908, v909, v910, v911;
      v912 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v913 = sub_1BE04CF34();
      (*(*(v913 - 8) + 8))(v896 + v912, v913);
    }

    else if (v897 <= 1)
    {
    }

    v914 = (v896 + v2[6]);
    v915 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v915 - 1) + 48))(v914, 1, v915))
    {
      v914[1], v916, v917, v918, v919, v920, v921, v922;
      v923 = v915[5];
      v924 = sub_1BE04DA84();
      (*(*(v924 - 8) + 8))(v914 + v923, v924);
      *(v914 + v915[6] + 8), v925, v926, v927, v928, v929, v930, v931;
      *(v914 + v915[7] + 8), v932, v933, v934, v935, v936, v937, v938;
      *(v914 + v915[8] + 8), v939, v940, v941, v942, v943, v944, v945;
    }

    v946 = (v896 + v2[7]);
    v947 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v947 - 8) + 48))(v946, 1, v947))
    {

      v948 = *(v947 + 28);
      v949 = sub_1BE04AF64();
      v950 = *(v949 - 8);
      if (!(*(v950 + 48))(v946 + v948, 1, v949))
      {
        (*(v950 + 8))(v946 + v948, v949);
      }
    }

    v951 = v896 + v2[10];
    v952 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v952 - 8) + 48))(v951, 1, v952))
    {
      v960 = *(v951 + 2);
      if (v960 != 1)
      {
        v960, v953, v954, v955, v956, v957, v958, v959;
        *(v951 + 4), v961, v962, v963, v964, v965, v966, v967;
        *(v951 + 6), v968, v969, v970, v971, v972, v973, v974;
      }

      v975 = *(v951 + 9);
      if (v975 != 1)
      {
        v975, v953, v954, v955, v956, v957, v958, v959;
        *(v951 + 11), v976, v977, v978, v979, v980, v981, v982;
        *(v951 + 13), v983, v984, v985, v986, v987, v988, v989;
      }

      v990 = *(v952 + 28);
      v991 = sub_1BE04AF64();
      v1766 = *(v991 - 8);
      v992 = *(v1766 + 48);
      if (!v992(&v951[v990], 1, v991))
      {
        (*(v1766 + 8))(&v951[v990], v991);
      }

      v993 = *(v952 + 32);
      v994 = v992(&v951[v993], 1, v991);
      v5 = v1777;
      v4 = v1774;
      if (!v994)
      {
        (*(v1766 + 8))(&v951[v993], v991);
      }
    }

    v995 = (v896 + v2[12]);
    if (*v995)
    {

      v995[4], v996, v997, v998, v999, v1000, v1001, v1002;
    }

    v1003 = (v896 + v2[13]);
    if (*v1003)
    {

      v1003[2], v1004, v1005, v1006, v1007, v1008, v1009, v1010;
    }

    *(v896 + v2[14]), v953, v954, v955, v956, v957, v958, v959;
    *(v896 + v2[15]), v1011, v1012, v1013, v1014, v1015, v1016, v1017;
  }

  v1018 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE0, &qword_1BE0DAD40);
  *(v896 + *(v1018 + 28)), v1019, v1020, v1021, v1022, v1023, v1024, v1025;
  v1026 = (v6 + v1[31]);

  v1026[1], v1027, v1028, v1029, v1030, v1031, v1032, v1033;
  v1034 = (v6 + v1[32]);
  v1035 = _s11DetailSheetOMa(0);
  if (!(*(*(v1035 - 8) + 48))(v1034, 1, v1035))
  {
    v1036 = swift_getEnumCaseMultiPayload();
    if (v1036 <= 1)
    {
      if (!v1036)
      {
        if (!v4(v1034, 1, v2))
        {
          type metadata accessor for WrappedPass(0);
          v1054 = swift_getEnumCaseMultiPayload();
          if (v1054 == 2)
          {
            v1034[1], v1055, v1056, v1057, v1058, v1059, v1060, v1061;
            v1034[3], v1286, v1287, v1288, v1289, v1290, v1291, v1292;
            v1293 = *(type metadata accessor for PlaceholderPass(0) + 28);
            v1294 = sub_1BE04CF34();
            (*(*(v1294 - 8) + 8))(v1034 + v1293, v1294);
          }

          else if (v1054 <= 1)
          {
          }

          v1295 = (v1034 + v2[6]);
          v1296 = type metadata accessor for IdentityCredential(0);
          if (!(*(*(v1296 - 1) + 48))(v1295, 1, v1296))
          {
            v1295[1], v1297, v1298, v1299, v1300, v1301, v1302, v1303;
            v1304 = v1296[5];
            v1305 = sub_1BE04DA84();
            (*(*(v1305 - 8) + 8))(v1295 + v1304, v1305);
            *(v1295 + v1296[6] + 8), v1306, v1307, v1308, v1309, v1310, v1311, v1312;
            *(v1295 + v1296[7] + 8), v1313, v1314, v1315, v1316, v1317, v1318, v1319;
            *(v1295 + v1296[8] + 8), v1320, v1321, v1322, v1323, v1324, v1325, v1326;
          }

          v1769 = v1018;
          v1327 = (v1034 + v2[7]);
          v1328 = type metadata accessor for BalanceInfo(0);
          if (!(*(*(v1328 - 8) + 48))(v1327, 1, v1328))
          {

            v1329 = *(v1328 + 28);
            v1330 = sub_1BE04AF64();
            v1331 = *(v1330 - 8);
            if (!(*(v1331 + 48))(v1327 + v1329, 1, v1330))
            {
              (*(v1331 + 8))(v1327 + v1329, v1330);
            }
          }

          v1332 = v1034 + v2[10];
          v1333 = type metadata accessor for PassEligibleRewardsInfo(0);
          if (!(*(*(v1333 - 8) + 48))(v1332, 1, v1333))
          {
            v1341 = *(v1332 + 2);
            if (v1341 != 1)
            {
              v1341, v1334, v1335, v1336, v1337, v1338, v1339, v1340;
              *(v1332 + 4), v1342, v1343, v1344, v1345, v1346, v1347, v1348;
              *(v1332 + 6), v1349, v1350, v1351, v1352, v1353, v1354, v1355;
            }

            v1356 = *(v1332 + 9);
            if (v1356 != 1)
            {
              v1356, v1334, v1335, v1336, v1337, v1338, v1339, v1340;
              *(v1332 + 11), v1357, v1358, v1359, v1360, v1361, v1362, v1363;
              *(v1332 + 13), v1364, v1365, v1366, v1367, v1368, v1369, v1370;
            }

            v1371 = *(v1333 + 28);
            v1372 = sub_1BE04AF64();
            v1762 = *(v1372 - 8);
            v1373 = *(v1762 + 48);
            if (!v1373(&v1332[v1371], 1, v1372))
            {
              (*(v1762 + 8))(&v1332[v1371], v1372);
            }

            v1374 = *(v1333 + 32);
            v5 = v1777;
            v4 = v1774;
            if (!v1373(&v1332[v1374], 1, v1372))
            {
              (*(v1762 + 8))(&v1332[v1374], v1372);
            }
          }

          v1375 = (v1034 + v2[12]);
          if (*v1375)
          {

            v1375[4], v1376, v1377, v1378, v1379, v1380, v1381, v1382;
          }

          v1383 = (v1034 + v2[13]);
          v1018 = v1769;
          if (*v1383)
          {

            v1383[2], v1384, v1385, v1386, v1387, v1388, v1389, v1390;
          }

          *(v1034 + v2[14]), v1334, v1335, v1336, v1337, v1338, v1339, v1340;
          *(v1034 + v2[15]), v1391, v1392, v1393, v1394, v1395, v1396, v1397;
        }

        v1398 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440, &qword_1BE0DAEA0);

        v1399 = (v1034 + *(v1398 + 64));
        v1399[1], v1400, v1401, v1402, v1403, v1404, v1405, v1406;
        v1399[3], v1407, v1408, v1409, v1410, v1411, v1412, v1413;
        v1045 = v1399[4];
        goto LABEL_240;
      }

      if (v1036 != 1)
      {
        goto LABEL_241;
      }

LABEL_171:
      v1045 = *v1034;
LABEL_240:

      goto LABEL_241;
    }

    if (v1036 != 2)
    {
      if (v1036 != 3)
      {
        if (v1036 != 4)
        {
          goto LABEL_241;
        }

        type metadata accessor for WrappedPass(0);
        v1037 = swift_getEnumCaseMultiPayload();
        if (v1037 == 2)
        {
          v1034[1], v1038, v1039, v1040, v1041, v1042, v1043, v1044;
          v1034[3], v1174, v1175, v1176, v1177, v1178, v1179, v1180;
          v1181 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v1182 = sub_1BE04CF34();
          (*(*(v1182 - 8) + 8))(v1034 + v1181, v1182);
        }

        else if (v1037 <= 1)
        {
        }

        v1183 = (v1034 + v2[6]);
        v1184 = type metadata accessor for IdentityCredential(0);
        if (!(*(*(v1184 - 1) + 48))(v1183, 1, v1184))
        {
          v1183[1], v1185, v1186, v1187, v1188, v1189, v1190, v1191;
          v1192 = v1184[5];
          v1193 = sub_1BE04DA84();
          (*(*(v1193 - 8) + 8))(v1183 + v1192, v1193);
          *(v1183 + v1184[6] + 8), v1194, v1195, v1196, v1197, v1198, v1199, v1200;
          *(v1183 + v1184[7] + 8), v1201, v1202, v1203, v1204, v1205, v1206, v1207;
          *(v1183 + v1184[8] + 8), v1208, v1209, v1210, v1211, v1212, v1213, v1214;
        }

        v1768 = v1018;
        v1215 = (v1034 + v2[7]);
        v1216 = type metadata accessor for BalanceInfo(0);
        if (!(*(*(v1216 - 8) + 48))(v1215, 1, v1216))
        {

          v1217 = *(v1216 + 28);
          v1218 = sub_1BE04AF64();
          v1219 = *(v1218 - 8);
          if (!(*(v1219 + 48))(v1215 + v1217, 1, v1218))
          {
            (*(v1219 + 8))(v1215 + v1217, v1218);
          }
        }

        v1220 = v1034 + v2[10];
        v1221 = type metadata accessor for PassEligibleRewardsInfo(0);
        if (!(*(*(v1221 - 8) + 48))(v1220, 1, v1221))
        {
          v1229 = *(v1220 + 2);
          if (v1229 != 1)
          {
            v1229, v1222, v1223, v1224, v1225, v1226, v1227, v1228;
            *(v1220 + 4), v1230, v1231, v1232, v1233, v1234, v1235, v1236;
            *(v1220 + 6), v1237, v1238, v1239, v1240, v1241, v1242, v1243;
          }

          v1244 = *(v1220 + 9);
          if (v1244 != 1)
          {
            v1244, v1222, v1223, v1224, v1225, v1226, v1227, v1228;
            *(v1220 + 11), v1245, v1246, v1247, v1248, v1249, v1250, v1251;
            *(v1220 + 13), v1252, v1253, v1254, v1255, v1256, v1257, v1258;
          }

          v1259 = *(v1221 + 28);
          v1260 = sub_1BE04AF64();
          v1761 = *(v1260 - 8);
          v1261 = *(v1761 + 48);
          if (!v1261(&v1220[v1259], 1, v1260))
          {
            (*(v1761 + 8))(&v1220[v1259], v1260);
          }

          v1262 = *(v1221 + 32);
          v5 = v1777;
          v4 = v1774;
          if (!v1261(&v1220[v1262], 1, v1260))
          {
            (*(v1761 + 8))(&v1220[v1262], v1260);
          }
        }

        v1263 = (v1034 + v2[12]);
        if (*v1263)
        {

          v1263[4], v1264, v1265, v1266, v1267, v1268, v1269, v1270;
        }

        v1271 = (v1034 + v2[13]);
        v1018 = v1768;
        if (*v1271)
        {

          v1271[2], v1272, v1273, v1274, v1275, v1276, v1277, v1278;
        }

        *(v1034 + v2[14]), v1222, v1223, v1224, v1225, v1226, v1227, v1228;
        *(v1034 + v2[15]), v1279, v1280, v1281, v1282, v1283, v1284, v1285;
        v1045 = *(v1034 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B60, &unk_1BE0DAEA8) + 48));
        goto LABEL_240;
      }

      goto LABEL_171;
    }

    type metadata accessor for WrappedPass(0);
    v1046 = swift_getEnumCaseMultiPayload();
    if (v1046 == 2)
    {
      v1034[1], v1047, v1048, v1049, v1050, v1051, v1052, v1053;
      v1034[3], v1062, v1063, v1064, v1065, v1066, v1067, v1068;
      v1069 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v1070 = sub_1BE04CF34();
      (*(*(v1070 - 8) + 8))(v1034 + v1069, v1070);
    }

    else if (v1046 <= 1)
    {
    }

    v1071 = (v1034 + v2[6]);
    v1072 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v1072 - 1) + 48))(v1071, 1, v1072))
    {
      v1071[1], v1073, v1074, v1075, v1076, v1077, v1078, v1079;
      v1080 = v1072[5];
      v1081 = sub_1BE04DA84();
      (*(*(v1081 - 8) + 8))(v1071 + v1080, v1081);
      *(v1071 + v1072[6] + 8), v1082, v1083, v1084, v1085, v1086, v1087, v1088;
      *(v1071 + v1072[7] + 8), v1089, v1090, v1091, v1092, v1093, v1094, v1095;
      *(v1071 + v1072[8] + 8), v1096, v1097, v1098, v1099, v1100, v1101, v1102;
    }

    v1767 = v1018;
    v1103 = (v1034 + v2[7]);
    v1104 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v1104 - 8) + 48))(v1103, 1, v1104))
    {

      v1105 = *(v1104 + 28);
      v1106 = sub_1BE04AF64();
      v1107 = *(v1106 - 8);
      if (!(*(v1107 + 48))(v1103 + v1105, 1, v1106))
      {
        (*(v1107 + 8))(v1103 + v1105, v1106);
      }
    }

    v1108 = v1034 + v2[10];
    v1109 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v1109 - 8) + 48))(v1108, 1, v1109))
    {
      v1117 = *(v1108 + 2);
      if (v1117 != 1)
      {
        v1117, v1110, v1111, v1112, v1113, v1114, v1115, v1116;
        *(v1108 + 4), v1118, v1119, v1120, v1121, v1122, v1123, v1124;
        *(v1108 + 6), v1125, v1126, v1127, v1128, v1129, v1130, v1131;
      }

      v1132 = *(v1108 + 9);
      if (v1132 != 1)
      {
        v1132, v1110, v1111, v1112, v1113, v1114, v1115, v1116;
        *(v1108 + 11), v1133, v1134, v1135, v1136, v1137, v1138, v1139;
        *(v1108 + 13), v1140, v1141, v1142, v1143, v1144, v1145, v1146;
      }

      v1147 = *(v1109 + 28);
      v1148 = sub_1BE04AF64();
      v1760 = *(v1148 - 8);
      v1149 = *(v1760 + 48);
      if (!v1149(&v1108[v1147], 1, v1148))
      {
        (*(v1760 + 8))(&v1108[v1147], v1148);
      }

      v1150 = *(v1109 + 32);
      v5 = v1777;
      v4 = v1774;
      if (!v1149(&v1108[v1150], 1, v1148))
      {
        (*(v1760 + 8))(&v1108[v1150], v1148);
      }
    }

    v1151 = (v1034 + v2[12]);
    if (*v1151)
    {

      v1151[4], v1152, v1153, v1154, v1155, v1156, v1157, v1158;
    }

    v1159 = (v1034 + v2[13]);
    v1018 = v1767;
    if (*v1159)
    {

      v1159[2], v1160, v1161, v1162, v1163, v1164, v1165, v1166;
    }

    *(v1034 + v2[14]), v1110, v1111, v1112, v1113, v1114, v1115, v1116;
    *(v1034 + v2[15]), v1167, v1168, v1169, v1170, v1171, v1172, v1173;
  }

LABEL_241:
  v1414 = v1772 + v1771;
  v1415 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8, &qword_1BE0DAD48);
  *(v1034 + *(v1415 + 28)), v1416, v1417, v1418, v1419, v1420, v1421, v1422;
  *(v6 + v1[33] + 8), v1423, v1424, v1425, v1426, v1427, v1428, v1429;
  v1437 = v6 + v1[34];
  if (*(v1437 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0((v6 + v1[34]), v1430, v1431, v1432, v1433, v1434, v1435, v1436);
  }

  v1438 = v1414 + v5;
  *(v1437 + 40), v1430, v1431, v1432, v1433, v1434, v1435, v1436;
  v1439 = (v6 + v1[35]);
  if (!v4(v1439, 1, v2))
  {
    type metadata accessor for WrappedPass(0);
    v1447 = swift_getEnumCaseMultiPayload();
    v1775 = v1414 + v5;
    if (v1447 == 2)
    {
      v1439[1], v1448, v1449, v1450, v1451, v1452, v1453, v1454;
      v1439[3], v1455, v1456, v1457, v1458, v1459, v1460, v1461;
      v1462 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v1463 = sub_1BE04CF34();
      (*(*(v1463 - 8) + 8))(v1439 + v1462, v1463);
    }

    else if (v1447 <= 1)
    {
    }

    v1464 = (v1439 + v2[6]);
    v1465 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v1465 - 1) + 48))(v1464, 1, v1465))
    {
      v1464[1], v1466, v1467, v1468, v1469, v1470, v1471, v1472;
      v1473 = v1465[5];
      v1474 = sub_1BE04DA84();
      (*(*(v1474 - 8) + 8))(v1464 + v1473, v1474);
      *(v1464 + v1465[6] + 8), v1475, v1476, v1477, v1478, v1479, v1480, v1481;
      *(v1464 + v1465[7] + 8), v1482, v1483, v1484, v1485, v1486, v1487, v1488;
      *(v1464 + v1465[8] + 8), v1489, v1490, v1491, v1492, v1493, v1494, v1495;
    }

    v1770 = v1018;
    v1496 = (v1439 + v2[7]);
    v1497 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v1497 - 8) + 48))(v1496, 1, v1497))
    {

      v1498 = *(v1497 + 28);
      v1499 = sub_1BE04AF64();
      v1500 = *(v1499 - 8);
      if (!(*(v1500 + 48))(v1496 + v1498, 1, v1499))
      {
        (*(v1500 + 8))(v1496 + v1498, v1499);
      }
    }

    v1501 = v1439 + v2[10];
    v1502 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v1502 - 8) + 48))(v1501, 1, v1502))
    {
      v1510 = *(v1501 + 2);
      if (v1510 != 1)
      {
        v1510, v1503, v1504, v1505, v1506, v1507, v1508, v1509;
        *(v1501 + 4), v1511, v1512, v1513, v1514, v1515, v1516, v1517;
        *(v1501 + 6), v1518, v1519, v1520, v1521, v1522, v1523, v1524;
      }

      v1525 = *(v1501 + 9);
      if (v1525 != 1)
      {
        v1525, v1503, v1504, v1505, v1506, v1507, v1508, v1509;
        *(v1501 + 11), v1526, v1527, v1528, v1529, v1530, v1531, v1532;
        *(v1501 + 13), v1533, v1534, v1535, v1536, v1537, v1538, v1539;
      }

      v1540 = *(v1502 + 28);
      v1541 = sub_1BE04AF64();
      v1778 = *(v1541 - 8);
      v1542 = *(v1778 + 48);
      if (!v1542(&v1501[v1540], 1, v1541))
      {
        (*(v1778 + 8))(&v1501[v1540], v1541);
      }

      v1543 = *(v1502 + 32);
      v5 = v1777;
      if (!v1542(&v1501[v1543], 1, v1541))
      {
        (*(v1778 + 8))(&v1501[v1543], v1541);
      }
    }

    v1544 = (v1439 + v2[12]);
    if (*v1544)
    {

      v1544[4], v1545, v1546, v1547, v1548, v1549, v1550, v1551;
    }

    v1552 = (v1439 + v2[13]);
    v1018 = v1770;
    v1438 = v1775;
    if (*v1552)
    {

      v1552[2], v1553, v1554, v1555, v1556, v1557, v1558, v1559;
    }

    *(v1439 + v2[14]), v1503, v1504, v1505, v1506, v1507, v1508, v1509;
    *(v1439 + v2[15]), v1560, v1561, v1562, v1563, v1564, v1565, v1566;
  }

  *(v1439 + *(v1018 + 28)), v1440, v1441, v1442, v1443, v1444, v1445, v1446;
  v1567 = (v6 + v1[36]);
  *v1567, v1568, v1569, v1570, v1571, v1572, v1573, v1574;
  v1567[1], v1575, v1576, v1577, v1578, v1579, v1580, v1581;
  v1582 = v6 + v1[37];
  *(v1582 + 8), v1583, v1584, v1585, v1586, v1587, v1588, v1589;
  *(v1582 + 16), v1590, v1591, v1592, v1593, v1594, v1595, v1596;
  *(v6 + v1[38] + 8), v1597, v1598, v1599, v1600, v1601, v1602, v1603;
  *(v6 + v1[39] + 8), v1604, v1605, v1606, v1607, v1608, v1609, v1610;
  v1611 = v1[40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1619 = sub_1BE04C884();
    (*(*(v1619 - 8) + 8))(v6 + v1611, v1619);
  }

  else
  {
    *(v6 + v1611), v1612, v1613, v1614, v1615, v1616, v1617, v1618;
  }

  v1620 = (v1776 + (v1438 & ~v5));
  type metadata accessor for WrappedPass(0);
  v1621 = swift_getEnumCaseMultiPayload();
  if (v1621 == 2)
  {
    v1620[1], v1622, v1623, v1624, v1625, v1626, v1627, v1628;
    v1620[3], v1629, v1630, v1631, v1632, v1633, v1634, v1635;
    v1636 = *(type metadata accessor for PlaceholderPass(0) + 28);
    v1637 = sub_1BE04CF34();
    (*(*(v1637 - 8) + 8))(v1620 + v1636, v1637);
  }

  else if (v1621 <= 1)
  {
  }

  v1638 = (v1620 + v2[6]);
  v1639 = type metadata accessor for IdentityCredential(0);
  if (!(*(*(v1639 - 1) + 48))(v1638, 1, v1639))
  {
    v1638[1], v1640, v1641, v1642, v1643, v1644, v1645, v1646;
    v1647 = v1639[5];
    v1648 = sub_1BE04DA84();
    (*(*(v1648 - 8) + 8))(v1638 + v1647, v1648);
    *(v1638 + v1639[6] + 8), v1649, v1650, v1651, v1652, v1653, v1654, v1655;
    *(v1638 + v1639[7] + 8), v1656, v1657, v1658, v1659, v1660, v1661, v1662;
    *(v1638 + v1639[8] + 8), v1663, v1664, v1665, v1666, v1667, v1668, v1669;
  }

  v1670 = (v1620 + v2[7]);
  v1671 = type metadata accessor for BalanceInfo(0);
  if (!(*(*(v1671 - 8) + 48))(v1670, 1, v1671))
  {

    v1672 = *(v1671 + 28);
    v1673 = sub_1BE04AF64();
    v1674 = *(v1673 - 8);
    if (!(*(v1674 + 48))(v1670 + v1672, 1, v1673))
    {
      (*(v1674 + 8))(v1670 + v1672, v1673);
    }
  }

  v1675 = v1620 + v2[10];
  v1676 = type metadata accessor for PassEligibleRewardsInfo(0);
  if (!(*(*(v1676 - 8) + 48))(v1675, 1, v1676))
  {
    v1684 = *(v1675 + 2);
    if (v1684 != 1)
    {
      v1684, v1677, v1678, v1679, v1680, v1681, v1682, v1683;
      *(v1675 + 4), v1685, v1686, v1687, v1688, v1689, v1690, v1691;
      *(v1675 + 6), v1692, v1693, v1694, v1695, v1696, v1697, v1698;
    }

    v1699 = *(v1675 + 9);
    if (v1699 != 1)
    {
      v1699, v1677, v1678, v1679, v1680, v1681, v1682, v1683;
      *(v1675 + 11), v1700, v1701, v1702, v1703, v1704, v1705, v1706;
      *(v1675 + 13), v1707, v1708, v1709, v1710, v1711, v1712, v1713;
    }

    v1714 = *(v1676 + 28);
    v1715 = sub_1BE04AF64();
    v1716 = *(v1715 - 8);
    v1717 = *(v1716 + 48);
    if (!v1717(&v1675[v1714], 1, v1715))
    {
      (*(v1716 + 8))(&v1675[v1714], v1715);
    }

    v1718 = *(v1676 + 32);
    if (!v1717(&v1675[v1718], 1, v1715))
    {
      (*(v1716 + 8))(&v1675[v1718], v1715);
    }
  }

  v1719 = (v1620 + v2[12]);
  if (*v1719)
  {

    v1719[4], v1720, v1721, v1722, v1723, v1724, v1725, v1726;
  }

  v1727 = (v1620 + v2[13]);
  if (*v1727)
  {

    v1727[2], v1728, v1729, v1730, v1731, v1732, v1733, v1734;
  }

  *(v1620 + v2[14]), v1677, v1678, v1679, v1680, v1681, v1682, v1683;
  *(v1620 + v2[15]), v1735, v1736, v1737, v1738, v1739, v1740, v1741;

  return swift_deallocObject();
}

uint64_t objectdestroy_81Tm_0()
{
  v1 = type metadata accessor for PaymentPassMethodSheet(0);
  v1776 = *(*(v1 - 1) + 80);
  v1773 = *(*(v1 - 1) + 64);
  v2 = type metadata accessor for AvailablePass(0);
  v3 = *(v2 - 1);
  v4 = *(v3 + 48);
  v5 = *(v3 + 80);
  v1774 = (v1776 + 16) & ~v1776;
  v1775 = *(v3 + 64);
  v1779 = v0;
  v6 = v0 + v1774;
  v7 = (v0 + v1774 + v1[6]);
  v1780 = v5;
  v1777 = v4;
  if (!v4(v7, 1, v2))
  {
    type metadata accessor for WrappedPass(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v7[1], v9, v10, v11, v12, v13, v14, v15;
      v7[3], v16, v17, v18, v19, v20, v21, v22;
      v23 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v24 = sub_1BE04CF34();
      (*(*(v24 - 8) + 8))(v7 + v23, v24);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
    }

    v25 = (v7 + v2[6]);
    v26 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v26 - 1) + 48))(v25, 1, v26))
    {
      v25[1], v27, v28, v29, v30, v31, v32, v33;
      v34 = v26[5];
      v35 = sub_1BE04DA84();
      (*(*(v35 - 8) + 8))(v25 + v34, v35);
      *(v25 + v26[6] + 8), v36, v37, v38, v39, v40, v41, v42;
      *(v25 + v26[7] + 8), v43, v44, v45, v46, v47, v48, v49;
      *(v25 + v26[8] + 8), v50, v51, v52, v53, v54, v55, v56;
    }

    v57 = (v7 + v2[7]);
    v58 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v58 - 8) + 48))(v57, 1, v58))
    {

      v59 = *(v58 + 28);
      v60 = sub_1BE04AF64();
      v61 = *(v60 - 8);
      if (!(*(v61 + 48))(v57 + v59, 1, v60))
      {
        (*(v61 + 8))(v57 + v59, v60);
      }
    }

    v62 = v7 + v2[10];
    v63 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v63 - 8) + 48))(v62, 1, v63))
    {
      v71 = *(v62 + 2);
      if (v71 != 1)
      {
        v71, v64, v65, v66, v67, v68, v69, v70;
        *(v62 + 4), v72, v73, v74, v75, v76, v77, v78;
        *(v62 + 6), v79, v80, v81, v82, v83, v84, v85;
      }

      v86 = *(v62 + 9);
      if (v86 != 1)
      {
        v86, v64, v65, v66, v67, v68, v69, v70;
        *(v62 + 11), v87, v88, v89, v90, v91, v92, v93;
        *(v62 + 13), v94, v95, v96, v97, v98, v99, v100;
      }

      v101 = *(v63 + 28);
      v102 = sub_1BE04AF64();
      v1765 = *(v102 - 8);
      v103 = *(v1765 + 48);
      if (!v103(&v62[v101], 1, v102))
      {
        (*(v1765 + 8))(&v62[v101], v102);
      }

      v104 = *(v63 + 32);
      v105 = v103(&v62[v104], 1, v102);
      v5 = v1780;
      v4 = v1777;
      if (!v105)
      {
        (*(v1765 + 8))(&v62[v104], v102);
      }
    }

    v106 = (v7 + v2[12]);
    if (*v106)
    {

      v106[4], v107, v108, v109, v110, v111, v112, v113;
    }

    v114 = (v7 + v2[13]);
    if (*v114)
    {

      v114[2], v115, v116, v117, v118, v119, v120, v121;
    }

    *(v7 + v2[14]), v64, v65, v66, v67, v68, v69, v70;
    *(v7 + v2[15]), v122, v123, v124, v125, v126, v127, v128;
  }

  v129 = type metadata accessor for Passes(0);

  *(v7 + v129[7]), v130, v131, v132, v133, v134, v135, v136;
  *(v7 + v129[9]), v137, v138, v139, v140, v141, v142, v143;
  *(v7 + v129[11]), v144, v145, v146, v147, v148, v149, v150;
  v151 = v6 + v1[7];
  if (*(v151 + 48))
  {
    sub_1BD0D455C(*v151, *(v151 + 8), *(v151 + 16));

    *(v151 + 48), v152, v153, v154, v155, v156, v157, v158;
    *(v151 + 64), v159, v160, v161, v162, v163, v164, v165;
  }

  v166 = (v6 + v1[8]);
  v167 = type metadata accessor for PeerPaymentModel(0);
  v168 = *(*(v167 - 8) + 48);
  if (!v168(v166, 1, v167))
  {

    v169 = (v166 + *(v167 + 20));
    type metadata accessor for WrappedPass(0);
    v170 = swift_getEnumCaseMultiPayload();
    v1759 = v129;
    v1749 = v168;
    if (v170 == 2)
    {
      v169[1], v171, v172, v173, v174, v175, v176, v177;
      v169[3], v178, v179, v180, v181, v182, v183, v184;
      v185 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v186 = sub_1BE04CF34();
      (*(*(v186 - 8) + 8))(v169 + v185, v186);
    }

    else if (v170 <= 1)
    {
    }

    v1756 = v167;
    v187 = (v169 + v2[6]);
    v188 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v188 - 1) + 48))(v187, 1, v188))
    {
      v187[1], v189, v190, v191, v192, v193, v194, v195;
      v196 = v188[5];
      v197 = sub_1BE04DA84();
      (*(*(v197 - 8) + 8))(v187 + v196, v197);
      *(v187 + v188[6] + 8), v198, v199, v200, v201, v202, v203, v204;
      *(v187 + v188[7] + 8), v205, v206, v207, v208, v209, v210, v211;
      *(v187 + v188[8] + 8), v212, v213, v214, v215, v216, v217, v218;
    }

    v219 = (v169 + v2[7]);
    v220 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v220 - 8) + 48))(v219, 1, v220))
    {

      v221 = *(v220 + 28);
      v222 = sub_1BE04AF64();
      v223 = *(v222 - 8);
      if (!(*(v223 + 48))(v219 + v221, 1, v222))
      {
        (*(v223 + 8))(v219 + v221, v222);
      }
    }

    v224 = v169 + v2[10];
    v225 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v225 - 8) + 48))(v224, 1, v225))
    {
      v233 = *(v224 + 2);
      if (v233 != 1)
      {
        v233, v226, v227, v228, v229, v230, v231, v232;
        *(v224 + 4), v234, v235, v236, v237, v238, v239, v240;
        *(v224 + 6), v241, v242, v243, v244, v245, v246, v247;
      }

      v1754 = v2;
      v248 = *(v224 + 9);
      if (v248 != 1)
      {
        v248, v226, v227, v228, v229, v230, v231, v232;
        *(v224 + 11), v249, v250, v251, v252, v253, v254, v255;
        *(v224 + 13), v256, v257, v258, v259, v260, v261, v262;
      }

      v263 = *(v225 + 28);
      v264 = sub_1BE04AF64();
      v1752 = *(v264 - 8);
      v265 = *(v1752 + 48);
      if (!v265(&v224[v263], 1, v264))
      {
        (*(v1752 + 8))(&v224[v263], v264);
      }

      v266 = *(v225 + 32);
      v2 = v1754;
      if (!v265(&v224[v266], 1, v264))
      {
        (*(v1752 + 8))(&v224[v266], v264);
      }
    }

    v267 = (v169 + v2[12]);
    v167 = v1756;
    v129 = v1759;
    if (*v267)
    {

      v267[4], v268, v269, v270, v271, v272, v273, v274;
    }

    v275 = (v169 + v2[13]);
    v5 = v1780;
    v4 = v1777;
    if (*v275)
    {

      v275[2], v276, v277, v278, v279, v280, v281, v282;
    }

    *(v169 + v2[14]), v226, v227, v228, v229, v230, v231, v232;
    *(v169 + v2[15]), v283, v284, v285, v286, v287, v288, v289;
    v290 = (v166 + *(v1756 + 24));
    if (*v290 != 1)
    {

      v298 = v290[3];
      if (v298)
      {
        v298, v291, v292, v293, v294, v295, v296, v297;
        v290[5], v299, v300, v301, v302, v303, v304, v305;
        v290[7], v306, v307, v308, v309, v310, v311, v312;
        v290[9], v313, v314, v315, v316, v317, v318, v319;
      }
    }

    v168 = v1749;
  }

  v320 = (v6 + v1[9]);
  v321 = _s14PaymentSummaryVMa(0);
  if (!(*(*(v321 - 1) + 48))(v320, 1, v321))
  {

    v320[4], v322, v323, v324, v325, v326, v327, v328;
    v320[6], v329, v330, v331, v332, v333, v334, v335;
    v1748 = _s11TotalAmountVMa(0);
    v336 = (v320 + v1748[10]);
    _s22SummaryItemPricingTypeOMa(0);
    v337 = swift_getEnumCaseMultiPayload();
    v1753 = v320;
    switch(v337)
    {
      case 2:
        v336[1], v338, v339, v340, v341, v342, v343, v344;
        break;
      case 1:
        v379 = sub_1BE04AF64();
        (*(*(v379 - 8) + 8))(v336, v379);
        break;
      case 0:
        v1750 = v168;
        v1757 = v167;
        v1745 = v321;
        v345 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
        v346 = v345[6];
        v347 = sub_1BE04AF64();
        v348 = *(v347 - 8);
        v349 = *(v348 + 48);
        if (!v349(v336 + v346, 1, v347))
        {
          (*(v348 + 8))(v336 + v346, v347);
        }

        v350 = v345[7];
        if (!v349(v336 + v350, 1, v347))
        {
          (*(v348 + 8))(v336 + v350, v347);
        }

        *(v336 + v345[9] + 8), v351, v352, v353, v354, v355, v356, v357;
        *(v336 + v345[10] + 8), v358, v359, v360, v361, v362, v363, v364;
        *(v336 + v345[11] + 8), v365, v366, v367, v368, v369, v370, v371;
        *(v336 + v345[12] + 8), v372, v373, v374, v375, v376, v377, v378;
        v4 = v1777;
        v167 = v1757;
        v321 = v1745;
        v168 = v1750;
        break;
    }

    v1755 = v2;
    v380 = v4;
    v381 = v1748;
    v382 = v1753;

    v383 = (v1753 + v1748[15]);
    v384 = v168(v383, 1, v167);
    v385 = v1780;
    if (!v384)
    {
      v1760 = v129;

      v1766 = v383;
      v386 = (v383 + *(v167 + 20));
      type metadata accessor for WrappedPass(0);
      v387 = swift_getEnumCaseMultiPayload();
      v1746 = v321;
      if (v387 == 2)
      {
        v386[1], v388, v389, v390, v391, v392, v393, v394;
        v386[3], v396, v397, v398, v399, v400, v401, v402;
        v403 = *(type metadata accessor for PlaceholderPass(0) + 28);
        v404 = sub_1BE04CF34();
        (*(*(v404 - 8) + 8))(v386 + v403, v404);
        v395 = v1755;
      }

      else
      {
        v395 = v1755;
        if (v387 <= 1)
        {
        }
      }

      v1758 = v167;
      v405 = (v386 + v395[6]);
      v406 = type metadata accessor for IdentityCredential(0);
      if (!(*(*(v406 - 1) + 48))(v405, 1, v406))
      {
        v405[1], v407, v408, v409, v410, v411, v412, v413;
        v414 = v406[5];
        v415 = sub_1BE04DA84();
        (*(*(v415 - 8) + 8))(v405 + v414, v415);
        *(v405 + v406[6] + 8), v416, v417, v418, v419, v420, v421, v422;
        *(v405 + v406[7] + 8), v423, v424, v425, v426, v427, v428, v429;
        *(v405 + v406[8] + 8), v430, v431, v432, v433, v434, v435, v436;
      }

      v437 = (v386 + v395[7]);
      v438 = type metadata accessor for BalanceInfo(0);
      if (!(*(*(v438 - 8) + 48))(v437, 1, v438))
      {

        v439 = *(v438 + 28);
        v440 = sub_1BE04AF64();
        v441 = *(v440 - 8);
        if (!(*(v441 + 48))(v437 + v439, 1, v440))
        {
          (*(v441 + 8))(v437 + v439, v440);
        }
      }

      v442 = v386 + v395[10];
      v443 = type metadata accessor for PassEligibleRewardsInfo(0);
      if (!(*(*(v443 - 8) + 48))(v442, 1, v443))
      {
        v451 = *(v442 + 2);
        if (v451 != 1)
        {
          v451, v444, v445, v446, v447, v448, v449, v450;
          *(v442 + 4), v452, v453, v454, v455, v456, v457, v458;
          *(v442 + 6), v459, v460, v461, v462, v463, v464, v465;
        }

        v466 = *(v442 + 9);
        if (v466 != 1)
        {
          v466, v444, v445, v446, v447, v448, v449, v450;
          *(v442 + 11), v467, v468, v469, v470, v471, v472, v473;
          *(v442 + 13), v474, v475, v476, v477, v478, v479, v480;
        }

        v481 = *(v443 + 28);
        v482 = sub_1BE04AF64();
        v1751 = *(v482 - 8);
        v483 = *(v1751 + 48);
        if (!v483(&v442[v481], 1, v482))
        {
          (*(v1751 + 8))(&v442[v481], v482);
        }

        v484 = *(v443 + 32);
        if (!v483(&v442[v484], 1, v482))
        {
          (*(v1751 + 8))(&v442[v484], v482);
        }
      }

      v485 = (v386 + v395[12]);
      if (*v485)
      {

        v485[4], v486, v487, v488, v489, v490, v491, v492;
      }

      v493 = (v386 + v395[13]);
      v321 = v1746;
      if (*v493)
      {

        v493[2], v494, v495, v496, v497, v498, v499, v500;
      }

      *(v386 + v395[14]), v444, v445, v446, v447, v448, v449, v450;
      *(v386 + v395[15]), v501, v502, v503, v504, v505, v506, v507;
      v129 = v1760;
      v508 = v1766;
      v509 = (v1766 + *(v1758 + 24));
      if (*v509 != 1)
      {

        v517 = v509[3];
        if (v517)
        {
          v517, v510, v511, v512, v513, v514, v515, v516;
          v509[5], v518, v519, v520, v521, v522, v523, v524;
          v509[7], v525, v526, v527, v528, v529, v530, v531;
          v509[9], v532, v533, v534, v535, v536, v537, v538;
        }

        v508 = v1766;
      }

      v380 = v1777;
      v385 = v1780;

      v381 = v1748;
      v382 = v1753;
    }

    v539 = (v382 + v381[16]);
    v5 = v385;
    v4 = v380;
    v2 = v1755;
    if (!(*(*(v129 - 1) + 48))(v539, 1, v129))
    {
      if (!v4(v539, 1, v1755))
      {
        type metadata accessor for WrappedPass(0);
        v547 = swift_getEnumCaseMultiPayload();
        v1761 = v129;
        if (v547 == 2)
        {
          v539[1], v548, v549, v550, v551, v552, v553, v554;
          v539[3], v555, v556, v557, v558, v559, v560, v561;
          v562 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v563 = sub_1BE04CF34();
          (*(*(v563 - 8) + 8))(v539 + v562, v563);
        }

        else if (v547 <= 1)
        {
        }

        v564 = (v539 + v1755[6]);
        v565 = type metadata accessor for IdentityCredential(0);
        if (!(*(*(v565 - 1) + 48))(v564, 1, v565))
        {
          v564[1], v566, v567, v568, v569, v570, v571, v572;
          v573 = v565[5];
          v574 = sub_1BE04DA84();
          (*(*(v574 - 8) + 8))(v564 + v573, v574);
          *(v564 + v565[6] + 8), v575, v576, v577, v578, v579, v580, v581;
          *(v564 + v565[7] + 8), v582, v583, v584, v585, v586, v587, v588;
          *(v564 + v565[8] + 8), v589, v590, v591, v592, v593, v594, v595;
        }

        v1747 = v321;
        v596 = (v539 + v1755[7]);
        v597 = type metadata accessor for BalanceInfo(0);
        if (!(*(*(v597 - 8) + 48))(v596, 1, v597))
        {

          v598 = *(v597 + 28);
          v599 = sub_1BE04AF64();
          v600 = *(v599 - 8);
          if (!(*(v600 + 48))(v596 + v598, 1, v599))
          {
            (*(v600 + 8))(v596 + v598, v599);
          }
        }

        v601 = v539 + v1755[10];
        v602 = type metadata accessor for PassEligibleRewardsInfo(0);
        if (!(*(*(v602 - 8) + 48))(v601, 1, v602))
        {
          v610 = *(v601 + 2);
          if (v610 != 1)
          {
            v610, v603, v604, v605, v606, v607, v608, v609;
            *(v601 + 4), v611, v612, v613, v614, v615, v616, v617;
            *(v601 + 6), v618, v619, v620, v621, v622, v623, v624;
          }

          v625 = *(v601 + 9);
          if (v625 != 1)
          {
            v625, v603, v604, v605, v606, v607, v608, v609;
            *(v601 + 11), v626, v627, v628, v629, v630, v631, v632;
            *(v601 + 13), v633, v634, v635, v636, v637, v638, v639;
          }

          v640 = *(v602 + 28);
          v641 = sub_1BE04AF64();
          v1767 = *(v641 - 8);
          v642 = *(v1767 + 48);
          if (!v642(&v601[v640], 1, v641))
          {
            (*(v1767 + 8))(&v601[v640], v641);
          }

          v643 = *(v602 + 32);
          if (!v642(&v601[v643], 1, v641))
          {
            (*(v1767 + 8))(&v601[v643], v641);
          }
        }

        v644 = (v539 + v1755[12]);
        v129 = v1761;
        if (*v644)
        {

          v644[4], v645, v646, v647, v648, v649, v650, v651;
        }

        v652 = (v539 + v1755[13]);
        v5 = v1780;
        v4 = v1777;
        v321 = v1747;
        if (*v652)
        {

          v652[2], v653, v654, v655, v656, v657, v658, v659;
        }

        *(v539 + v1755[14]), v603, v604, v605, v606, v607, v608, v609;
        *(v539 + v1755[15]), v660, v661, v662, v663, v664, v665, v666;
      }

      *(v539 + v129[7]), v667, v668, v669, v670, v671, v672, v673;
      *(v539 + v129[9]), v674, v675, v676, v677, v678, v679, v680;
      *(v539 + v129[11]), v681, v682, v683, v684, v685, v686, v687;
      v382 = v1753;
    }

    *(v382 + v321[5]), v540, v541, v542, v543, v544, v545, v546;
    *(v382 + v321[6] + 8), v688, v689, v690, v691, v692, v693, v694;
    v702 = v382 + v321[7];
    v703 = *(v702 + 8);
    if (v703)
    {
      v703, v695, v696, v697, v698, v699, v700, v701;
      *(v702 + 24), v704, v705, v706, v707, v708, v709, v710;
    }

    v711 = v382 + v321[9];
    v712 = *(v711 + 8);
    if (v712)
    {
      v712, v695, v696, v697, v698, v699, v700, v701;
      *(v711 + 24), v713, v714, v715, v716, v717, v718, v719;
      *(v711 + 40), v720, v721, v722, v723, v724, v725, v726;
    }

    v727 = v382 + v321[10];
    v728 = *(v727 + 8);
    if (v728)
    {
      v728, v695, v696, v697, v698, v699, v700, v701;
      *(v727 + 24), v729, v730, v731, v732, v733, v734, v735;
      *(v727 + 40), v736, v737, v738, v739, v740, v741, v742;
    }

    v743 = (v382 + v321[11]);
    v744 = type metadata accessor for DeferredPaymentRequest(0);
    if (!(*(*(v744 - 1) + 48))(v743, 1, v744))
    {
      v752 = v321;
      v743[1], v745, v746, v747, v748, v749, v750, v751;
      v743[3], v753, v754, v755, v756, v757, v758, v759;
      v743[5], v760, v761, v762, v763, v764, v765, v766;
      v767 = v744[7];
      v768 = sub_1BE04AF64();
      v769 = *(v768 - 8);
      if (!(*(v769 + 48))(v743 + v767, 1, v768))
      {
        (*(v769 + 8))(v743 + v767, v768);
      }

      v770 = v744[8];
      v771 = sub_1BE04B3B4();
      v772 = *(v771 - 8);
      if (!(*(v772 + 48))(v743 + v770, 1, v771))
      {
        (*(v772 + 8))(v743 + v770, v771);
      }

      v4 = v1777;
      v321 = v752;
      v5 = v1780;
    }

    *(v382 + v321[12]), v745, v746, v747, v748, v749, v750, v751;
  }

  *(v6 + v1[12] + 8), v773, v774, v775, v776, v777, v778, v779;
  *(v6 + v1[13] + 8), v780, v781, v782, v783, v784, v785, v786;
  *(v6 + v1[14] + 8), v787, v788, v789, v790, v791, v792, v793;
  *(v6 + v1[15] + 8), v794, v795, v796, v797, v798, v799, v800;
  *(v6 + v1[16] + 8), v801, v802, v803, v804, v805, v806, v807;
  *(v6 + v1[17] + 8), v808, v809, v810, v811, v812, v813, v814;
  *(v6 + v1[18] + 8), v815, v816, v817, v818, v819, v820, v821;
  *(v6 + v1[19] + 8), v822, v823, v824, v825, v826, v827, v828;
  *(v6 + v1[20] + 8), v829, v830, v831, v832, v833, v834, v835;
  *(v6 + v1[21]), v836, v837, v838, v839, v840, v841, v842;
  *(v6 + v1[22]), v843, v844, v845, v846, v847, v848, v849;
  *(v6 + v1[23] + 8), v850, v851, v852, v853, v854, v855, v856;
  v864 = v6 + v1[24];
  if (*v864)
  {
    *(v864 + 8), v857, v858, v859, v860, v861, v862, v863;
  }

  *(v6 + v1[26]), v857, v858, v859, v860, v861, v862, v863;
  v872 = v6 + v1[27];
  v873 = *(v872 + 8);
  if (v873)
  {
    v873, v865, v866, v867, v868, v869, v870, v871;
    *(v872 + 24), v874, v875, v876, v877, v878, v879, v880;
  }

  *(v872 + 48), v865, v866, v867, v868, v869, v870, v871;
  *(v6 + v1[28]), v881, v882, v883, v884, v885, v886, v887;
  v888 = (v6 + v1[29]);

  v888[1], v889, v890, v891, v892, v893, v894, v895;
  v896 = (v6 + v1[30]);
  if (!v4(v896, 1, v2))
  {
    type metadata accessor for WrappedPass(0);
    v897 = swift_getEnumCaseMultiPayload();
    if (v897 == 2)
    {
      v896[1], v898, v899, v900, v901, v902, v903, v904;
      v896[3], v905, v906, v907, v908, v909, v910, v911;
      v912 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v913 = sub_1BE04CF34();
      (*(*(v913 - 8) + 8))(v896 + v912, v913);
    }

    else if (v897 <= 1)
    {
    }

    v914 = (v896 + v2[6]);
    v915 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v915 - 1) + 48))(v914, 1, v915))
    {
      v914[1], v916, v917, v918, v919, v920, v921, v922;
      v923 = v915[5];
      v924 = sub_1BE04DA84();
      (*(*(v924 - 8) + 8))(v914 + v923, v924);
      *(v914 + v915[6] + 8), v925, v926, v927, v928, v929, v930, v931;
      *(v914 + v915[7] + 8), v932, v933, v934, v935, v936, v937, v938;
      *(v914 + v915[8] + 8), v939, v940, v941, v942, v943, v944, v945;
    }

    v946 = (v896 + v2[7]);
    v947 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v947 - 8) + 48))(v946, 1, v947))
    {

      v948 = *(v947 + 28);
      v949 = sub_1BE04AF64();
      v950 = *(v949 - 8);
      if (!(*(v950 + 48))(v946 + v948, 1, v949))
      {
        (*(v950 + 8))(v946 + v948, v949);
      }
    }

    v951 = v896 + v2[10];
    v952 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v952 - 8) + 48))(v951, 1, v952))
    {
      v960 = *(v951 + 2);
      if (v960 != 1)
      {
        v960, v953, v954, v955, v956, v957, v958, v959;
        *(v951 + 4), v961, v962, v963, v964, v965, v966, v967;
        *(v951 + 6), v968, v969, v970, v971, v972, v973, v974;
      }

      v975 = *(v951 + 9);
      if (v975 != 1)
      {
        v975, v953, v954, v955, v956, v957, v958, v959;
        *(v951 + 11), v976, v977, v978, v979, v980, v981, v982;
        *(v951 + 13), v983, v984, v985, v986, v987, v988, v989;
      }

      v990 = *(v952 + 28);
      v991 = sub_1BE04AF64();
      v1768 = *(v991 - 8);
      v992 = *(v1768 + 48);
      if (!v992(&v951[v990], 1, v991))
      {
        (*(v1768 + 8))(&v951[v990], v991);
      }

      v993 = *(v952 + 32);
      v994 = v992(&v951[v993], 1, v991);
      v5 = v1780;
      v4 = v1777;
      if (!v994)
      {
        (*(v1768 + 8))(&v951[v993], v991);
      }
    }

    v995 = (v896 + v2[12]);
    if (*v995)
    {

      v995[4], v996, v997, v998, v999, v1000, v1001, v1002;
    }

    v1003 = (v896 + v2[13]);
    if (*v1003)
    {

      v1003[2], v1004, v1005, v1006, v1007, v1008, v1009, v1010;
    }

    *(v896 + v2[14]), v953, v954, v955, v956, v957, v958, v959;
    *(v896 + v2[15]), v1011, v1012, v1013, v1014, v1015, v1016, v1017;
  }

  v1018 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE0, &qword_1BE0DAD40);
  *(v896 + *(v1018 + 28)), v1019, v1020, v1021, v1022, v1023, v1024, v1025;
  v1026 = (v6 + v1[31]);

  v1026[1], v1027, v1028, v1029, v1030, v1031, v1032, v1033;
  v1034 = (v6 + v1[32]);
  v1035 = _s11DetailSheetOMa(0);
  if (!(*(*(v1035 - 8) + 48))(v1034, 1, v1035))
  {
    v1036 = swift_getEnumCaseMultiPayload();
    if (v1036 <= 1)
    {
      if (!v1036)
      {
        if (!v4(v1034, 1, v2))
        {
          type metadata accessor for WrappedPass(0);
          v1054 = swift_getEnumCaseMultiPayload();
          if (v1054 == 2)
          {
            v1034[1], v1055, v1056, v1057, v1058, v1059, v1060, v1061;
            v1034[3], v1286, v1287, v1288, v1289, v1290, v1291, v1292;
            v1293 = *(type metadata accessor for PlaceholderPass(0) + 28);
            v1294 = sub_1BE04CF34();
            (*(*(v1294 - 8) + 8))(v1034 + v1293, v1294);
          }

          else if (v1054 <= 1)
          {
          }

          v1295 = (v1034 + v2[6]);
          v1296 = type metadata accessor for IdentityCredential(0);
          if (!(*(*(v1296 - 1) + 48))(v1295, 1, v1296))
          {
            v1295[1], v1297, v1298, v1299, v1300, v1301, v1302, v1303;
            v1304 = v1296[5];
            v1305 = sub_1BE04DA84();
            (*(*(v1305 - 8) + 8))(v1295 + v1304, v1305);
            *(v1295 + v1296[6] + 8), v1306, v1307, v1308, v1309, v1310, v1311, v1312;
            *(v1295 + v1296[7] + 8), v1313, v1314, v1315, v1316, v1317, v1318, v1319;
            *(v1295 + v1296[8] + 8), v1320, v1321, v1322, v1323, v1324, v1325, v1326;
          }

          v1771 = v1018;
          v1327 = (v1034 + v2[7]);
          v1328 = type metadata accessor for BalanceInfo(0);
          if (!(*(*(v1328 - 8) + 48))(v1327, 1, v1328))
          {

            v1329 = *(v1328 + 28);
            v1330 = sub_1BE04AF64();
            v1331 = *(v1330 - 8);
            if (!(*(v1331 + 48))(v1327 + v1329, 1, v1330))
            {
              (*(v1331 + 8))(v1327 + v1329, v1330);
            }
          }

          v1332 = v1034 + v2[10];
          v1333 = type metadata accessor for PassEligibleRewardsInfo(0);
          if (!(*(*(v1333 - 8) + 48))(v1332, 1, v1333))
          {
            v1341 = *(v1332 + 2);
            if (v1341 != 1)
            {
              v1341, v1334, v1335, v1336, v1337, v1338, v1339, v1340;
              *(v1332 + 4), v1342, v1343, v1344, v1345, v1346, v1347, v1348;
              *(v1332 + 6), v1349, v1350, v1351, v1352, v1353, v1354, v1355;
            }

            v1356 = *(v1332 + 9);
            if (v1356 != 1)
            {
              v1356, v1334, v1335, v1336, v1337, v1338, v1339, v1340;
              *(v1332 + 11), v1357, v1358, v1359, v1360, v1361, v1362, v1363;
              *(v1332 + 13), v1364, v1365, v1366, v1367, v1368, v1369, v1370;
            }

            v1371 = *(v1333 + 28);
            v1372 = sub_1BE04AF64();
            v1764 = *(v1372 - 8);
            v1373 = *(v1764 + 48);
            if (!v1373(&v1332[v1371], 1, v1372))
            {
              (*(v1764 + 8))(&v1332[v1371], v1372);
            }

            v1374 = *(v1333 + 32);
            v5 = v1780;
            v4 = v1777;
            if (!v1373(&v1332[v1374], 1, v1372))
            {
              (*(v1764 + 8))(&v1332[v1374], v1372);
            }
          }

          v1375 = (v1034 + v2[12]);
          if (*v1375)
          {

            v1375[4], v1376, v1377, v1378, v1379, v1380, v1381, v1382;
          }

          v1383 = (v1034 + v2[13]);
          v1018 = v1771;
          if (*v1383)
          {

            v1383[2], v1384, v1385, v1386, v1387, v1388, v1389, v1390;
          }

          *(v1034 + v2[14]), v1334, v1335, v1336, v1337, v1338, v1339, v1340;
          *(v1034 + v2[15]), v1391, v1392, v1393, v1394, v1395, v1396, v1397;
        }

        v1398 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440, &qword_1BE0DAEA0);

        v1399 = (v1034 + *(v1398 + 64));
        v1399[1], v1400, v1401, v1402, v1403, v1404, v1405, v1406;
        v1399[3], v1407, v1408, v1409, v1410, v1411, v1412, v1413;
        v1045 = v1399[4];
        goto LABEL_240;
      }

      if (v1036 != 1)
      {
        goto LABEL_241;
      }

LABEL_171:
      v1045 = *v1034;
LABEL_240:

      goto LABEL_241;
    }

    if (v1036 != 2)
    {
      if (v1036 != 3)
      {
        if (v1036 != 4)
        {
          goto LABEL_241;
        }

        type metadata accessor for WrappedPass(0);
        v1037 = swift_getEnumCaseMultiPayload();
        if (v1037 == 2)
        {
          v1034[1], v1038, v1039, v1040, v1041, v1042, v1043, v1044;
          v1034[3], v1174, v1175, v1176, v1177, v1178, v1179, v1180;
          v1181 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v1182 = sub_1BE04CF34();
          (*(*(v1182 - 8) + 8))(v1034 + v1181, v1182);
        }

        else if (v1037 <= 1)
        {
        }

        v1183 = (v1034 + v2[6]);
        v1184 = type metadata accessor for IdentityCredential(0);
        if (!(*(*(v1184 - 1) + 48))(v1183, 1, v1184))
        {
          v1183[1], v1185, v1186, v1187, v1188, v1189, v1190, v1191;
          v1192 = v1184[5];
          v1193 = sub_1BE04DA84();
          (*(*(v1193 - 8) + 8))(v1183 + v1192, v1193);
          *(v1183 + v1184[6] + 8), v1194, v1195, v1196, v1197, v1198, v1199, v1200;
          *(v1183 + v1184[7] + 8), v1201, v1202, v1203, v1204, v1205, v1206, v1207;
          *(v1183 + v1184[8] + 8), v1208, v1209, v1210, v1211, v1212, v1213, v1214;
        }

        v1770 = v1018;
        v1215 = (v1034 + v2[7]);
        v1216 = type metadata accessor for BalanceInfo(0);
        if (!(*(*(v1216 - 8) + 48))(v1215, 1, v1216))
        {

          v1217 = *(v1216 + 28);
          v1218 = sub_1BE04AF64();
          v1219 = *(v1218 - 8);
          if (!(*(v1219 + 48))(v1215 + v1217, 1, v1218))
          {
            (*(v1219 + 8))(v1215 + v1217, v1218);
          }
        }

        v1220 = v1034 + v2[10];
        v1221 = type metadata accessor for PassEligibleRewardsInfo(0);
        if (!(*(*(v1221 - 8) + 48))(v1220, 1, v1221))
        {
          v1229 = *(v1220 + 2);
          if (v1229 != 1)
          {
            v1229, v1222, v1223, v1224, v1225, v1226, v1227, v1228;
            *(v1220 + 4), v1230, v1231, v1232, v1233, v1234, v1235, v1236;
            *(v1220 + 6), v1237, v1238, v1239, v1240, v1241, v1242, v1243;
          }

          v1244 = *(v1220 + 9);
          if (v1244 != 1)
          {
            v1244, v1222, v1223, v1224, v1225, v1226, v1227, v1228;
            *(v1220 + 11), v1245, v1246, v1247, v1248, v1249, v1250, v1251;
            *(v1220 + 13), v1252, v1253, v1254, v1255, v1256, v1257, v1258;
          }

          v1259 = *(v1221 + 28);
          v1260 = sub_1BE04AF64();
          v1763 = *(v1260 - 8);
          v1261 = *(v1763 + 48);
          if (!v1261(&v1220[v1259], 1, v1260))
          {
            (*(v1763 + 8))(&v1220[v1259], v1260);
          }

          v1262 = *(v1221 + 32);
          v5 = v1780;
          v4 = v1777;
          if (!v1261(&v1220[v1262], 1, v1260))
          {
            (*(v1763 + 8))(&v1220[v1262], v1260);
          }
        }

        v1263 = (v1034 + v2[12]);
        if (*v1263)
        {

          v1263[4], v1264, v1265, v1266, v1267, v1268, v1269, v1270;
        }

        v1271 = (v1034 + v2[13]);
        v1018 = v1770;
        if (*v1271)
        {

          v1271[2], v1272, v1273, v1274, v1275, v1276, v1277, v1278;
        }

        *(v1034 + v2[14]), v1222, v1223, v1224, v1225, v1226, v1227, v1228;
        *(v1034 + v2[15]), v1279, v1280, v1281, v1282, v1283, v1284, v1285;
        v1045 = *(v1034 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B60, &unk_1BE0DAEA8) + 48));
        goto LABEL_240;
      }

      goto LABEL_171;
    }

    type metadata accessor for WrappedPass(0);
    v1046 = swift_getEnumCaseMultiPayload();
    if (v1046 == 2)
    {
      v1034[1], v1047, v1048, v1049, v1050, v1051, v1052, v1053;
      v1034[3], v1062, v1063, v1064, v1065, v1066, v1067, v1068;
      v1069 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v1070 = sub_1BE04CF34();
      (*(*(v1070 - 8) + 8))(v1034 + v1069, v1070);
    }

    else if (v1046 <= 1)
    {
    }

    v1071 = (v1034 + v2[6]);
    v1072 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v1072 - 1) + 48))(v1071, 1, v1072))
    {
      v1071[1], v1073, v1074, v1075, v1076, v1077, v1078, v1079;
      v1080 = v1072[5];
      v1081 = sub_1BE04DA84();
      (*(*(v1081 - 8) + 8))(v1071 + v1080, v1081);
      *(v1071 + v1072[6] + 8), v1082, v1083, v1084, v1085, v1086, v1087, v1088;
      *(v1071 + v1072[7] + 8), v1089, v1090, v1091, v1092, v1093, v1094, v1095;
      *(v1071 + v1072[8] + 8), v1096, v1097, v1098, v1099, v1100, v1101, v1102;
    }

    v1769 = v1018;
    v1103 = (v1034 + v2[7]);
    v1104 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v1104 - 8) + 48))(v1103, 1, v1104))
    {

      v1105 = *(v1104 + 28);
      v1106 = sub_1BE04AF64();
      v1107 = *(v1106 - 8);
      if (!(*(v1107 + 48))(v1103 + v1105, 1, v1106))
      {
        (*(v1107 + 8))(v1103 + v1105, v1106);
      }
    }

    v1108 = v1034 + v2[10];
    v1109 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v1109 - 8) + 48))(v1108, 1, v1109))
    {
      v1117 = *(v1108 + 2);
      if (v1117 != 1)
      {
        v1117, v1110, v1111, v1112, v1113, v1114, v1115, v1116;
        *(v1108 + 4), v1118, v1119, v1120, v1121, v1122, v1123, v1124;
        *(v1108 + 6), v1125, v1126, v1127, v1128, v1129, v1130, v1131;
      }

      v1132 = *(v1108 + 9);
      if (v1132 != 1)
      {
        v1132, v1110, v1111, v1112, v1113, v1114, v1115, v1116;
        *(v1108 + 11), v1133, v1134, v1135, v1136, v1137, v1138, v1139;
        *(v1108 + 13), v1140, v1141, v1142, v1143, v1144, v1145, v1146;
      }

      v1147 = *(v1109 + 28);
      v1148 = sub_1BE04AF64();
      v1762 = *(v1148 - 8);
      v1149 = *(v1762 + 48);
      if (!v1149(&v1108[v1147], 1, v1148))
      {
        (*(v1762 + 8))(&v1108[v1147], v1148);
      }

      v1150 = *(v1109 + 32);
      v5 = v1780;
      v4 = v1777;
      if (!v1149(&v1108[v1150], 1, v1148))
      {
        (*(v1762 + 8))(&v1108[v1150], v1148);
      }
    }

    v1151 = (v1034 + v2[12]);
    if (*v1151)
    {

      v1151[4], v1152, v1153, v1154, v1155, v1156, v1157, v1158;
    }

    v1159 = (v1034 + v2[13]);
    v1018 = v1769;
    if (*v1159)
    {

      v1159[2], v1160, v1161, v1162, v1163, v1164, v1165, v1166;
    }

    *(v1034 + v2[14]), v1110, v1111, v1112, v1113, v1114, v1115, v1116;
    *(v1034 + v2[15]), v1167, v1168, v1169, v1170, v1171, v1172, v1173;
  }

LABEL_241:
  v1414 = v1774 + v1773;
  v1415 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8, &qword_1BE0DAD48);
  *(v1034 + *(v1415 + 28)), v1416, v1417, v1418, v1419, v1420, v1421, v1422;
  *(v6 + v1[33] + 8), v1423, v1424, v1425, v1426, v1427, v1428, v1429;
  v1437 = v6 + v1[34];
  if (*(v1437 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0((v6 + v1[34]), v1430, v1431, v1432, v1433, v1434, v1435, v1436);
  }

  v1438 = v1414 + v5;
  *(v1437 + 40), v1430, v1431, v1432, v1433, v1434, v1435, v1436;
  v1439 = (v6 + v1[35]);
  if (!v4(v1439, 1, v2))
  {
    type metadata accessor for WrappedPass(0);
    v1447 = swift_getEnumCaseMultiPayload();
    v1778 = v1414 + v5;
    if (v1447 == 2)
    {
      v1439[1], v1448, v1449, v1450, v1451, v1452, v1453, v1454;
      v1439[3], v1455, v1456, v1457, v1458, v1459, v1460, v1461;
      v1462 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v1463 = sub_1BE04CF34();
      (*(*(v1463 - 8) + 8))(v1439 + v1462, v1463);
    }

    else if (v1447 <= 1)
    {
    }

    v1464 = (v1439 + v2[6]);
    v1465 = type metadata accessor for IdentityCredential(0);
    if (!(*(*(v1465 - 1) + 48))(v1464, 1, v1465))
    {
      v1464[1], v1466, v1467, v1468, v1469, v1470, v1471, v1472;
      v1473 = v1465[5];
      v1474 = sub_1BE04DA84();
      (*(*(v1474 - 8) + 8))(v1464 + v1473, v1474);
      *(v1464 + v1465[6] + 8), v1475, v1476, v1477, v1478, v1479, v1480, v1481;
      *(v1464 + v1465[7] + 8), v1482, v1483, v1484, v1485, v1486, v1487, v1488;
      *(v1464 + v1465[8] + 8), v1489, v1490, v1491, v1492, v1493, v1494, v1495;
    }

    v1772 = v1018;
    v1496 = (v1439 + v2[7]);
    v1497 = type metadata accessor for BalanceInfo(0);
    if (!(*(*(v1497 - 8) + 48))(v1496, 1, v1497))
    {

      v1498 = *(v1497 + 28);
      v1499 = sub_1BE04AF64();
      v1500 = *(v1499 - 8);
      if (!(*(v1500 + 48))(v1496 + v1498, 1, v1499))
      {
        (*(v1500 + 8))(v1496 + v1498, v1499);
      }
    }

    v1501 = v1439 + v2[10];
    v1502 = type metadata accessor for PassEligibleRewardsInfo(0);
    if (!(*(*(v1502 - 8) + 48))(v1501, 1, v1502))
    {
      v1510 = *(v1501 + 2);
      if (v1510 != 1)
      {
        v1510, v1503, v1504, v1505, v1506, v1507, v1508, v1509;
        *(v1501 + 4), v1511, v1512, v1513, v1514, v1515, v1516, v1517;
        *(v1501 + 6), v1518, v1519, v1520, v1521, v1522, v1523, v1524;
      }

      v1525 = *(v1501 + 9);
      if (v1525 != 1)
      {
        v1525, v1503, v1504, v1505, v1506, v1507, v1508, v1509;
        *(v1501 + 11), v1526, v1527, v1528, v1529, v1530, v1531, v1532;
        *(v1501 + 13), v1533, v1534, v1535, v1536, v1537, v1538, v1539;
      }

      v1540 = *(v1502 + 28);
      v1541 = sub_1BE04AF64();
      v1781 = *(v1541 - 8);
      v1542 = *(v1781 + 48);
      if (!v1542(&v1501[v1540], 1, v1541))
      {
        (*(v1781 + 8))(&v1501[v1540], v1541);
      }

      v1543 = *(v1502 + 32);
      v5 = v1780;
      if (!v1542(&v1501[v1543], 1, v1541))
      {
        (*(v1781 + 8))(&v1501[v1543], v1541);
      }
    }

    v1544 = (v1439 + v2[12]);
    if (*v1544)
    {

      v1544[4], v1545, v1546, v1547, v1548, v1549, v1550, v1551;
    }

    v1552 = (v1439 + v2[13]);
    v1018 = v1772;
    v1438 = v1778;
    if (*v1552)
    {

      v1552[2], v1553, v1554, v1555, v1556, v1557, v1558, v1559;
    }

    *(v1439 + v2[14]), v1503, v1504, v1505, v1506, v1507, v1508, v1509;
    *(v1439 + v2[15]), v1560, v1561, v1562, v1563, v1564, v1565, v1566;
  }

  v1567 = v1438 & ~v5;
  *(v1439 + *(v1018 + 28)), v1440, v1441, v1442, v1443, v1444, v1445, v1446;
  v1568 = (v6 + v1[36]);
  *v1568, v1569, v1570, v1571, v1572, v1573, v1574, v1575;
  v1568[1], v1576, v1577, v1578, v1579, v1580, v1581, v1582;
  v1583 = v6 + v1[37];
  *(v1583 + 8), v1584, v1585, v1586, v1587, v1588, v1589, v1590;
  *(v1583 + 16), v1591, v1592, v1593, v1594, v1595, v1596, v1597;
  *(v6 + v1[38] + 8), v1598, v1599, v1600, v1601, v1602, v1603, v1604;
  *(v6 + v1[39] + 8), v1605, v1606, v1607, v1608, v1609, v1610, v1611;
  v1612 = v1[40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1620 = sub_1BE04C884();
    (*(*(v1620 - 8) + 8))(v6 + v1612, v1620);
  }

  else
  {
    *(v6 + v1612), v1613, v1614, v1615, v1616, v1617, v1618, v1619;
  }

  v1621 = v1779;
  v1622 = (v1779 + v1567);
  type metadata accessor for WrappedPass(0);
  v1623 = swift_getEnumCaseMultiPayload();
  if (v1623 == 2)
  {
    v1622[1], v1624, v1625, v1626, v1627, v1628, v1629, v1630;
    v1622[3], v1631, v1632, v1633, v1634, v1635, v1636, v1637;
    v1638 = *(type metadata accessor for PlaceholderPass(0) + 28);
    v1639 = sub_1BE04CF34();
    (*(*(v1639 - 8) + 8))(v1622 + v1638, v1639);
  }

  else if (v1623 <= 1)
  {
  }

  v1640 = (v1622 + v2[6]);
  v1641 = type metadata accessor for IdentityCredential(0);
  if (!(*(*(v1641 - 1) + 48))(v1640, 1, v1641))
  {
    v1640[1], v1642, v1643, v1644, v1645, v1646, v1647, v1648;
    v1649 = v1641[5];
    v1650 = sub_1BE04DA84();
    (*(*(v1650 - 8) + 8))(v1640 + v1649, v1650);
    *(v1640 + v1641[6] + 8), v1651, v1652, v1653, v1654, v1655, v1656, v1657;
    *(v1640 + v1641[7] + 8), v1658, v1659, v1660, v1661, v1662, v1663, v1664;
    *(v1640 + v1641[8] + 8), v1665, v1666, v1667, v1668, v1669, v1670, v1671;
  }

  v1672 = (v1622 + v2[7]);
  v1673 = type metadata accessor for BalanceInfo(0);
  if (!(*(*(v1673 - 8) + 48))(v1672, 1, v1673))
  {

    v1674 = *(v1673 + 28);
    v1675 = sub_1BE04AF64();
    v1676 = *(v1675 - 8);
    if (!(*(v1676 + 48))(v1672 + v1674, 1, v1675))
    {
      (*(v1676 + 8))(v1672 + v1674, v1675);
    }
  }

  v1677 = v1622 + v2[10];
  v1678 = type metadata accessor for PassEligibleRewardsInfo(0);
  if (!(*(*(v1678 - 8) + 48))(v1677, 1, v1678))
  {
    v1686 = *(v1677 + 2);
    if (v1686 != 1)
    {
      v1686, v1679, v1680, v1681, v1682, v1683, v1684, v1685;
      *(v1677 + 4), v1687, v1688, v1689, v1690, v1691, v1692, v1693;
      *(v1677 + 6), v1694, v1695, v1696, v1697, v1698, v1699, v1700;
    }

    v1701 = *(v1677 + 9);
    if (v1701 != 1)
    {
      v1701, v1679, v1680, v1681, v1682, v1683, v1684, v1685;
      *(v1677 + 11), v1702, v1703, v1704, v1705, v1706, v1707, v1708;
      *(v1677 + 13), v1709, v1710, v1711, v1712, v1713, v1714, v1715;
    }

    v1716 = *(v1678 + 28);
    v1717 = sub_1BE04AF64();
    v1718 = *(v1717 - 8);
    v1719 = *(v1718 + 48);
    if (!v1719(&v1677[v1716], 1, v1717))
    {
      (*(v1718 + 8))(&v1677[v1716], v1717);
    }

    v1720 = *(v1678 + 32);
    v1621 = v1779;
    if (!v1719(&v1677[v1720], 1, v1717))
    {
      (*(v1718 + 8))(&v1677[v1720], v1717);
    }
  }

  v1721 = (v1622 + v2[12]);
  if (*v1721)
  {

    v1721[4], v1722, v1723, v1724, v1725, v1726, v1727, v1728;
  }

  v1729 = (v1622 + v2[13]);
  if (*v1729)
  {

    v1729[2], v1730, v1731, v1732, v1733, v1734, v1735, v1736;
  }

  *(v1622 + v2[14]), v1679, v1680, v1681, v1682, v1683, v1684, v1685;
  *(v1622 + v2[15]), v1737, v1738, v1739, v1740, v1741, v1742, v1743;

  return swift_deallocObject();
}

unint64_t sub_1BD4D58A4()
{
  result = qword_1EBD47F80;
  if (!qword_1EBD47F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47F70, &qword_1BE0ECF90);
    sub_1BD170E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47F80);
  }

  return result;
}

uint64_t sub_1BD4D595C(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for AvailablePass(0) - 8);
  v7 = v2 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return a2(v2 + v4, v7);
}

unint64_t sub_1BD4D5A70()
{
  result = qword_1EBD47F88;
  if (!qword_1EBD47F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47B88, &qword_1BE0DAEF8);
    sub_1BD4D5AFC();
    sub_1BD10EC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47F88);
  }

  return result;
}

unint64_t sub_1BD4D5AFC()
{
  result = qword_1EBD47F90;
  if (!qword_1EBD47F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47B40, &qword_1BE0DAE78);
    sub_1BD4D5B88();
    sub_1BD4D5C14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47F90);
  }

  return result;
}

unint64_t sub_1BD4D5B88()
{
  result = qword_1EBD47F98;
  if (!qword_1EBD47F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47FA0, &unk_1BE0DB270);
    sub_1BD4D5C14();
    sub_1BD10EBB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47F98);
  }

  return result;
}

unint64_t sub_1BD4D5C14()
{
  result = qword_1EBD47FA8;
  if (!qword_1EBD47FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47B48, &qword_1BE0DAE80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37198, &unk_1BE0DAE90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47B58, &unk_1BE0F22E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3DF80, &qword_1BE0BB860);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47B70, &qword_1BE0F22F0);
    sub_1BD4CCCA4();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DDEBC();
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD4CD3A0(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47FA8);
  }

  return result;
}

uint64_t AddBankCredentialSheet.init(model:)@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1BE0492B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1BE051694();
  v10 = v22;
  *(a2 + 16) = v21;
  *(a2 + 32) = v10;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1BE051694();
  v11 = v22;
  *(a2 + 40) = v21;
  *(a2 + 56) = v11;
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1BE051694();
  v12 = v22;
  *(a2 + 64) = v21;
  *(a2 + 80) = v12;
  v13 = type metadata accessor for AddBankCredentialSheet(0);
  (*(v4 + 104))(v9, *MEMORY[0x1E6967720], v3);
  (*(v4 + 16))(v6, v9, v3);
  sub_1BE051694();
  (*(v4 + 8))(v9, v3);
  v14 = a2 + *(v13 + 36);
  LOBYTE(v19) = 0;
  sub_1BE051694();
  v15 = *(&v21 + 1);
  *v14 = v21;
  *(v14 + 8) = v15;
  type metadata accessor for CredentialCenterModel(0);
  sub_1BD324AE4();
  result = sub_1BE04E954();
  *a2 = result;
  *(a2 + 8) = v17;
  return result;
}

uint64_t type metadata accessor for AddBankCredentialSheet(uint64_t a1)
{
  result = qword_1EBD47FE8;
  if (!qword_1EBD47FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AddBankCredentialSheet.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47FB0, &qword_1BE0DB280);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25[-v3];
  v27 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47FB8, &qword_1BE0DB288);
  sub_1BD4D63F0();
  sub_1BE0504A4();
  v5 = (v0 + *(type metadata accessor for AddBankCredentialSheet(0) + 36));
  v6 = *v5;
  v7 = *(v5 + 1);
  v30 = v6;
  v31 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516C4();
  v8 = v28;
  v9 = v29;
  v26 = v0;
  sub_1BD0DE4F4(&qword_1EBD47FD8, &qword_1EBD47FB0, &qword_1BE0DB280, MEMORY[0x1E697CCF0]);
  sub_1BE050EE4();
  v9, v10, v11, v12, v13, v14, v15, v16;
  v8, v17, v18, v19, v20, v21, v22, v23;
  return (*(v2 + 8))(v4, v1);
}

void sub_1BD4D62B4(uint64_t a1)
{
  v1 = sub_1BE052404();
  v2 = PKLocalizedPaymentString(v1);

  if (v2)
  {
    sub_1BE052434();

    sub_1BD0DDEBC();
    sub_1BE0506C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47FD0, &unk_1BE0DB290);
    sub_1BD0DE4F4(&qword_1EBD47FC8, &qword_1EBD47FD0, &unk_1BE0DB290, MEMORY[0x1E6981F48]);
    sub_1BE051A24();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1BD4D63F0()
{
  result = qword_1EBD47FC0;
  if (!qword_1EBD47FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD47FB8, &qword_1BE0DB288);
    sub_1BD0DE4F4(&qword_1EBD47FC8, &qword_1EBD47FD0, &unk_1BE0DB290, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD47FC0);
  }

  return result;
}

void sub_1BD4D64B4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a1;
  v99 = a2;
  v2 = type metadata accessor for AddBankCredentialSheet(0);
  v94 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v95 = v3;
  v100 = v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v98 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v97 = v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v96 = v83 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48000, &qword_1BE0DB320);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v83 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48008, &unk_1BE0DB328);
  MEMORY[0x1EEE9AC00](v11);
  v89 = v83 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41590, &qword_1BE0CA980);
  v90 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v88 = v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v87 = v83 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v86 = v83 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v92 = v83 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v91 = v83 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v102 = v83 - v24;
  v25 = sub_1BE0492B4();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48010, &qword_1BE0DB338);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v93 = v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v83 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47FE0, &qword_1BE0DB2F8);
  sub_1BE0516A4();
  v34 = (*(v26 + 88))(v28, v25);
  v35 = *MEMORY[0x1E6967720];
  v101 = v33;
  if (v34 != v35)
  {
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD48018, &qword_1EBD48008, &unk_1BE0DB328, MEMORY[0x1E6981F48]);
    sub_1BE04F9A4();
    (*(v26 + 8))(v28, v25);
    goto LABEL_7;
  }

  v83[0] = v8;
  v83[1] = v11;
  v84 = v10;
  v85 = v4;
  v36 = sub_1BE052404();
  v37 = PKLocalizedPaymentString(v36);

  if (!v37)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v38 = sub_1BE052434();
  v40 = v39;

  v41 = v103;
  v42 = *(v103 + 32);
  v106 = *(v103 + 16);
  v107 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
  sub_1BE0516C4();
  v104 = v38;
  v105 = v40;
  sub_1BD0DDEBC();
  sub_1BE051E14();
  v43 = sub_1BE052404();
  v44 = PKLocalizedPaymentString(v43);

  if (!v44)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v45 = sub_1BE052434();
  v47 = v46;

  v48 = *(v41 + 56);
  v106 = *(v41 + 40);
  v107 = v48;
  sub_1BE0516C4();
  v104 = v45;
  v105 = v47;
  v49 = v91;
  sub_1BE051E14();
  v50 = sub_1BE052404();
  v51 = PKLocalizedPaymentString(v50);

  if (v51)
  {
    v52 = sub_1BE052434();
    v54 = v53;

    v55 = *(v41 + 80);
    v106 = *(v41 + 64);
    v107 = v55;
    sub_1BE0516C4();
    v104 = v52;
    v105 = v54;
    v56 = v92;
    sub_1BE051E14();
    v57 = v90;
    v58 = *(v90 + 16);
    v59 = v86;
    v58(v86, v102, v13);
    v60 = v87;
    v58(v87, v49, v13);
    v61 = v88;
    v58(v88, v56, v13);
    v62 = v89;
    v58(v89, v59, v13);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48028, &unk_1BE0DB350);
    v58((v62 + *(v63 + 48)), v60, v13);
    v58((v62 + *(v63 + 64)), v61, v13);
    v64 = *(v57 + 8);
    v64(v61, v13);
    v64(v60, v13);
    v64(v59, v13);
    sub_1BD0DE19C(v62, v84, &qword_1EBD48008, &unk_1BE0DB328);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD48018, &qword_1EBD48008, &unk_1BE0DB328, MEMORY[0x1E6981F48]);
    v65 = v49;
    v33 = v101;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v62, &qword_1EBD48008, &unk_1BE0DB328);
    v64(v92, v13);
    v64(v65, v13);
    v64(v102, v13);
    v4 = v85;
LABEL_7:
    v66 = v100;
    v67 = sub_1BE052404();
    v68 = PKLocalizedPaymentString(v67);

    if (v68)
    {
      v69 = sub_1BE052434();
      v71 = v70;

      v104 = v69;
      v105 = v71;
      sub_1BD4D8480(v103, v66);
      v72 = (*(v94 + 80) + 16) & ~*(v94 + 80);
      v73 = swift_allocObject();
      sub_1BD4D84E4(v66, v73 + v72);
      sub_1BD0DDEBC();
      v74 = v96;
      sub_1BE051744();
      v75 = v93;
      sub_1BD0DE19C(v33, v93, &qword_1EBD48010, &qword_1BE0DB338);
      v77 = v97;
      v76 = v98;
      v78 = *(v98 + 16);
      v79 = v4;
      v78(v97, v74, v4);
      v80 = v99;
      sub_1BD0DE19C(v75, v99, &qword_1EBD48010, &qword_1BE0DB338);
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48020, &unk_1BE0DB340);
      v78((v80 + *(v81 + 48)), v77, v79);
      v82 = *(v76 + 8);
      v82(v74, v79);
      sub_1BD0DE53C(v101, &qword_1EBD48010, &qword_1BE0DB338);
      v82(v77, v79);
      sub_1BD0DE53C(v75, &qword_1EBD48010, &qword_1BE0DB338);
      return;
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_12:
  __break(1u);
}

void sub_1BD4D7064(uint64_t a1)
{
  v2 = type metadata accessor for AddBankCredentialSheet(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_1BE0528D4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1BD4D8480(a1, v5);
  sub_1BE0528A4();
  v10 = sub_1BE052894();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v10;
  v12[3] = v13;
  sub_1BD4D84E4(v5, v12 + v11);
  v14 = sub_1BD122C00(0, 0, v8, &unk_1BE0DB368, v12);
  v14, v15, v16, v17, v18, v19, v20, v21;
}

uint64_t sub_1BD4D721C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a4;
  v5 = sub_1BE04D214();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v6 = sub_1BE049394();
  v4[27] = v6;
  v4[28] = *(v6 - 8);
  v4[29] = swift_task_alloc();
  v7 = sub_1BE049364();
  v4[30] = v7;
  v4[31] = *(v7 - 8);
  v4[32] = swift_task_alloc();
  v8 = sub_1BE0492B4();
  v4[33] = v8;
  v4[34] = *(v8 - 8);
  v4[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D450, &unk_1BE0BF570);
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  sub_1BE0528A4();
  v4[38] = sub_1BE052894();
  v10 = sub_1BE052844();
  v4[39] = v10;
  v4[40] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD4D7468, v10, v9);
}

uint64_t sub_1BD4D7468()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(*(v0 + 224) + 56);
  v4(*(v0 + 296), 1, 1, *(v0 + 216));
  *(v0 + 328) = type metadata accessor for AddBankCredentialSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47FE0, &qword_1BE0DB2F8);
  sub_1BE0516A4();
  if ((*(v2 + 88))(v1, v3) != *MEMORY[0x1E6967720])
  {
    v16 = *(v0 + 296);
    v18 = *(v0 + 272);
    v17 = *(v0 + 280);
    v19 = *(v0 + 264);
    *(v0 + 304), v5, v6, v7, v8, v9, v10, v11;
    sub_1BD4D8838();
    v20 = swift_allocError();
    swift_willThrow();
    sub_1BD0DE53C(v16, &unk_1EBD4D450, &unk_1BE0BF570);
    (*(v18 + 8))(v17, v19);
    sub_1BE04D1E4();
    v21 = v20;
    v22 = sub_1BE04D204();
    v23 = sub_1BE052C34();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = v20;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_1BD026000, v22, v23, "Error adding manually entered credential: %@", v24, 0xCu);
      sub_1BD0DE53C(v25, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v25, -1, -1);
      MEMORY[0x1BFB45F20](v24, -1, -1);
    }

    v28 = *(v0 + 328);
    v30 = *(v0 + 200);
    v29 = *(v0 + 208);
    v32 = *(v0 + 184);
    v31 = *(v0 + 192);

    (*(v30 + 8))(v29, v31);
    v33 = v32 + *(v28 + 36);
    v34 = *(v33 + 8);
    *(v0 + 120) = *v33;
    *(v0 + 128) = v34;
    *(v0 + 360) = 1;
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516B4();

    v34, v35, v36, v37, v38, v39, v40, v41;
    goto LABEL_6;
  }

  v12 = *(v0 + 184);
  v13 = *(v12 + 32);
  *(v0 + 48) = *(v12 + 16);
  *(v0 + 64) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8, &qword_1BE0C80C0);
  sub_1BE0516A4();
  v14 = *(v12 + 56);
  *(v0 + 72) = *(v12 + 40);
  *(v0 + 88) = v14;
  sub_1BE0516A4();
  v15 = *(v12 + 80);
  *(v0 + 96) = *(v12 + 64);
  *(v0 + 112) = v15;
  sub_1BE0516A4();
  sub_1BE049304();
  v44 = *(v0 + 288);
  v45 = *(v0 + 296);
  v47 = *(v0 + 248);
  v46 = *(v0 + 256);
  v48 = *(v0 + 240);
  v49 = *(v0 + 216);
  v50 = *(v0 + 224);
  sub_1BD0DE53C(v45, &unk_1EBD4D450, &unk_1BE0BF570);
  (*(v47 + 32))(v45, v46, v48);
  (*(v50 + 104))(v45, *MEMORY[0x1E6967770], v49);
  v4(v45, 0, 1, v49);
  sub_1BD0DE19C(v45, v44, &unk_1EBD4D450, &unk_1BE0BF570);
  if ((*(v50 + 48))(v44, 1, v49) == 1)
  {
    v51 = *(v0 + 304);
    v52 = *(v0 + 288);
    sub_1BD0DE53C(*(v0 + 296), &unk_1EBD4D450, &unk_1BE0BF570);
    v51, v53, v54, v55, v56, v57, v58, v59;
    sub_1BD0DE53C(v52, &unk_1EBD4D450, &unk_1BE0BF570);
LABEL_6:

    v42 = *(v0 + 8);

    return v42();
  }

  v60 = *(v0 + 184);
  (*(*(v0 + 224) + 32))(*(v0 + 232), *(v0 + 288), *(v0 + 216));
  *(v0 + 336) = *(v60 + 8);
  v61 = swift_task_alloc();
  *(v0 + 344) = v61;
  *v61 = v0;
  v61[1] = sub_1BD4D79F4;
  v62 = *(v0 + 232);

  return CredentialCenterModel.addCredential(bankCredential:)(v62);
}

uint64_t sub_1BD4D79F4()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  v3 = *(v2 + 320);
  v4 = *(v2 + 312);
  if (v0)
  {
    v5 = sub_1BD4D7D44;
  }

  else
  {
    v5 = sub_1BD4D7B30;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD4D7B30(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(v8 + 336);
  *(v8 + 304), a2, a3, a4, a5, a6, a7, a8;
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  v13 = sub_1BE04D8A4();
  v15 = *v14;
  if (!*(*v14 + 16))
  {
    __break(1u);
LABEL_8:
    result = sub_1BD4FFFE0(v15);
    v15 = result;
    v17 = *(result + 16);
    if (v17)
    {
      goto LABEL_4;
    }

LABEL_9:
    __break(1u);
    return result;
  }

  v10 = v13;
  v9 = v14;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_8;
  }

  v17 = v15[2];
  if (!v17)
  {
    goto LABEL_9;
  }

LABEL_4:
  v18 = *(v8 + 224);
  v38 = *(v8 + 232);
  v39 = *(v8 + 296);
  v19 = v10;
  v20 = v17 - 1;
  v21 = *(v8 + 216);
  v22 = *(type metadata accessor for CredentialCenterPathIdentifier(0) - 8);
  sub_1BD4D888C(v15 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v20);
  v15[2] = v20;
  *v9 = v15;
  v19(v8 + 16, 0);
  v12, v23, v24, v25, v26, v27, v28, v29;
  KeyPath, v30, v31, v32, v33, v34, v35, v36;
  (*(v18 + 8))(v38, v21);
  sub_1BD0DE53C(v39, &unk_1EBD4D450, &unk_1BE0BF570);

  v37 = *(v8 + 8);

  return v37();
}

uint64_t sub_1BD4D7D44(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 296);
  v11 = *(v8 + 224);
  v10 = *(v8 + 232);
  v12 = *(v8 + 216);
  *(v8 + 304), a2, a3, a4, a5, a6, a7, a8;
  (*(v11 + 8))(v10, v12);
  sub_1BD0DE53C(v9, &unk_1EBD4D450, &unk_1BE0BF570);
  v13 = *(v8 + 352);
  sub_1BE04D1E4();
  v14 = v13;
  v15 = sub_1BE04D204();
  v16 = sub_1BE052C34();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    v19 = v13;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v20;
    *v18 = v20;
    _os_log_impl(&dword_1BD026000, v15, v16, "Error adding manually entered credential: %@", v17, 0xCu);
    sub_1BD0DE53C(v18, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v18, -1, -1);
    MEMORY[0x1BFB45F20](v17, -1, -1);
  }

  v21 = *(v8 + 328);
  v23 = *(v8 + 200);
  v22 = *(v8 + 208);
  v25 = *(v8 + 184);
  v24 = *(v8 + 192);

  (*(v23 + 8))(v22, v24);
  v26 = v25 + *(v21 + 36);
  v27 = *(v26 + 8);
  *(v8 + 120) = *v26;
  *(v8 + 128) = v27;
  *(v8 + 360) = 1;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();

  v27, v28, v29, v30, v31, v32, v33, v34;

  v35 = *(v8 + 8);

  return v35();
}