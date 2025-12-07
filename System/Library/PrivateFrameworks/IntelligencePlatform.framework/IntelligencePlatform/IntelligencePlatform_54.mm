void TriplesQuery.Clause.ContainsClause.sqlExpression(config:)()
{
  sub_1ABA7E2A8();
  v153 = v5;
  v154 = sub_1ABF22414();
  sub_1ABA7BB64();
  v152 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7C21C();
  v151 = v8;
  sub_1ABA8409C();
  v9 = sub_1ABF22424();
  sub_1ABA7BB64();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7C068();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA88E50();
  v147 = v14;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA88E50();
  v148 = v19;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABAA08DC();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA8C644();
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA99704();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v142 - v24;
  v26 = *(v0 + 8);
  v143 = *(v0 + 16);
  v149 = *(v0 + 24);
  v27 = *(v0 + 32);
  v28 = *(v0 + 40);
  v144 = *(v0 + 48);
  v155 = *(v0 + 56);
  v146 = *(v0 + 64);
  v150 = *(v0 + 72);
  if (v26)
  {
    HIDWORD(v142) = v27;
    if (*v0)
    {
      v157 = v26;
      v159 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v29 = sub_1ABE9EC74();
      sub_1ABA955D8(v29);
      v156 = sub_1ABF22D14();
      sub_1ABA97084(MEMORY[0x1E69A0050]);
      sub_1ABAA1640();
      v159 = v9;
      v30 = sub_1ABAA18DC(MEMORY[0x1E699FE60]);
      v1 = sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
      sub_1ABA8FCE0();
      sub_1ABAB47C4(v31, &unk_1EB4D2E60, &qword_1ABF4D8A0, v32);
      sub_1ABAA2434();
      sub_1ABF23EE4();
      sub_1ABAA3E50();
      sub_1ABF228D4();
      sub_1ABA84B54(v158);
      sub_1ABAA2094();
      sub_1ABAA063C();
      if (v34)
      {
        sub_1ABA819D0(v33);
        sub_1ABADC9D0();
        v30 = v128;
      }

      v25 = v4;
    }

    else
    {
      v157 = v26;
      v156 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v36 = sub_1ABE9EC74();
      sub_1ABEA590C(v36);
      v159 = sub_1ABF22D14();
      sub_1ABAA18DC(MEMORY[0x1E69A0050]);
      sub_1ABAB5950();
      v30 = &qword_1ABF4D8A0;
      sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
      sub_1ABA8FCE0();
      sub_1ABAB47C4(v37, &unk_1EB4D2E60, &qword_1ABF4D8A0, v38);
      sub_1ABA829B4();
      sub_1ABF23EE4();
      sub_1ABA84B54(v158);
      sub_1ABAA2094();
      sub_1ABAA063C();
      if (v34)
      {
        sub_1ABA819D0(v39);
        sub_1ABADC9D0();
        v30 = v129;
      }
    }

    v35 = v11;
    v30[2] = &unk_1EB4D2E60;
    sub_1ABA7EC68();
    v42(v40 + v41 * v1, v25, v9);
    LOBYTE(v27) = BYTE4(v142);
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
    v35 = v11;
  }

  if (!v28)
  {
    v47 = v149;
    v49 = v150;
    if (!v149)
    {
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  if (v27)
  {
    v157 = v28;
    v159 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
    v43 = sub_1ABE9EC74();
    sub_1ABEA58EC(v43);
    v44 = sub_1ABF22D14();
    sub_1ABA8AFDC(v44);
    sub_1ABAA1640();
    v159 = v9;
    sub_1ABAA18DC(MEMORY[0x1E699FE60]);
    sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
    sub_1ABA8FCE0();
    sub_1ABAB47C4(v45, &unk_1EB4D2E60, &qword_1ABF4D8A0, v46);
    sub_1ABAA2434();
    sub_1ABF23EE4();
    sub_1ABAA3E50();
    sub_1ABF228D4();
    sub_1ABAA55CC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA7FAB0();
      sub_1ABADC9D0();
      v30 = v130;
    }

    v47 = v149;
    sub_1ABA980C8();
    if (v34)
    {
      sub_1ABA819D0(v48);
      sub_1ABADC9D0();
      v30 = v131;
    }

    v2 = v3;
    v49 = v150;
  }

  else
  {
    v157 = v28;
    v156 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
    v50 = sub_1ABE9EC74();
    sub_1ABEA591C(v50);
    v51 = sub_1ABF22D14();
    sub_1ABA951C0(v51);
    sub_1ABAB5950();
    v52 = sub_1ABA7ABE4();
    sub_1ABAD219C(v52, v53);
    sub_1ABA8FCE0();
    sub_1ABAA0FE0(v54, v55, v56, v57);
    sub_1ABA829B4();
    sub_1ABF23EE4();
    sub_1ABAA55CC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA7FAB0();
      sub_1ABADC9D0();
      v30 = v132;
    }

    v47 = v149;
    v49 = v150;
    sub_1ABA980C8();
    if (v34)
    {
      sub_1ABA819D0(v58);
      sub_1ABADC9D0();
      v30 = v133;
    }
  }

  v30[2] = &unk_1EB4D2E60;
  sub_1ABA7EC68();
  v61(v59 + v60 * v11, v2, v9);
  if (v47)
  {
LABEL_24:
    if (v143)
    {
      v157 = v47;
      v159 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v62 = sub_1ABE9EC74();
      sub_1ABAABDA0(v62);
      v63 = sub_1ABF22D14();
      sub_1ABA8AFDC(v63);
      sub_1ABAA1640();
      v159 = v9;
      sub_1ABAA18DC(MEMORY[0x1E699FE60]);
      v64 = &unk_1EB4D2E60;
      v65 = sub_1ABA7ABE4();
      sub_1ABAD219C(v65, v66);
      sub_1ABA8FCE0();
      sub_1ABAA0FE0(v67, v68, v69, v70);
      sub_1ABAA2434();
      sub_1ABF23EE4();
      sub_1ABAA3E50();
      sub_1ABAB69BC();
      sub_1ABF228D4();
      sub_1ABAA55CC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7FAB0();
        sub_1ABADC9D0();
        v30 = v134;
      }

      sub_1ABA980C8();
      if (v34)
      {
        sub_1ABA819D0(v71);
        sub_1ABADC9D0();
        v30 = v135;
      }
    }

    else
    {
      v157 = v47;
      v156 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v72 = sub_1ABE9EC74();
      sub_1ABAB2C24(v72);
      v73 = sub_1ABF22D14();
      sub_1ABA951C0(v73);
      sub_1ABAB5950();
      v11 = &unk_1EB4D2E60;
      v64 = &qword_1ABF4D8A0;
      sub_1ABAB5B64();
      sub_1ABA8FCE0();
      sub_1ABA95410(v74, v75, v76, v77);
      sub_1ABA829B4();
      sub_1ABF23EE4();
      sub_1ABAA55CC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7FAB0();
        sub_1ABADC9D0();
        v30 = v136;
      }

      sub_1ABA980C8();
      if (v34)
      {
        sub_1ABA819D0(v78);
        sub_1ABADC9D0();
        v30 = v137;
      }
    }

    v30[2] = v64;
    sub_1ABA7EC68();
    v81(v79 + v80 * v11);
  }

LABEL_35:
  if (!v155)
  {
    goto LABEL_46;
  }

  if (v144)
  {
    v157 = v155;
    v159 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
    v82 = sub_1ABE9EC74();
    sub_1ABAB51E4(v82);
    v83 = sub_1ABF22D14();
    sub_1ABA8AFDC(v83);
    sub_1ABAA1640();
    v159 = v9;
    v84 = sub_1ABAA18DC(MEMORY[0x1E699FE60]);
    v85 = &unk_1EB4D2E60;
    v86 = &qword_1ABF4D8A0;
    v87 = sub_1ABA8CD18();
    sub_1ABAD219C(v87, v88);
    sub_1ABA8FCE0();
    sub_1ABA7FD88(v89, v90, v91, v92);
    sub_1ABA90BC0();
    sub_1ABF23EE4();
    sub_1ABAA3E50();
    sub_1ABAB69BC();
    sub_1ABF228D4();
    sub_1ABAA55CC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA7FAB0();
      sub_1ABADC9D0();
      v30 = v138;
    }

    sub_1ABAA6250();
    if (!v34)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v157 = v155;
    v156 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
    v95 = sub_1ABE9EC74();
    sub_1ABA9653C(v95);
    v96 = sub_1ABF22D14();
    sub_1ABA951C0(v96);
    sub_1ABAB5950();
    v84 = &unk_1EB4D2E60;
    v85 = &qword_1ABF4D8A0;
    sub_1ABAB5B64();
    sub_1ABA8FCE0();
    sub_1ABA95410(v97, v98, v99, v100);
    sub_1ABA829B4();
    sub_1ABF23EE4();
    sub_1ABAA55CC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA7FAB0();
      sub_1ABADC9D0();
      v30 = v139;
    }

    sub_1ABAA6250();
    v86 = v145;
    if (!v34)
    {
      goto LABEL_45;
    }
  }

  sub_1ABA7DC80(v93);
  sub_1ABADC9D0();
  v30 = v94;
LABEL_45:
  v30[2] = v84;
  sub_1ABA7EC68();
  v103(v101 + v102 * v85, v86, v9);
LABEL_46:
  if (v49)
  {
    if (v146)
    {
      v157 = v49;
      v159 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v104 = sub_1ABE9EC74();
      sub_1ABA90E44(v104);
      v105 = sub_1ABF22D14();
      sub_1ABA8AFDC(v105);
      sub_1ABAA1640();
      v159 = v9;
      v106 = sub_1ABAA18DC(MEMORY[0x1E699FE60]);
      v107 = &unk_1EB4D2E60;
      v108 = &qword_1ABF4D8A0;
      v109 = sub_1ABA8CD18();
      sub_1ABAD219C(v109, v110);
      sub_1ABA8FCE0();
      sub_1ABA7FD88(v111, v112, v113, v114);
      sub_1ABA90BC0();
      sub_1ABF23EE4();
      sub_1ABAA3E50();
      sub_1ABAB69BC();
      sub_1ABF228D4();
      sub_1ABAA55CC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7FAB0();
        sub_1ABADC9D0();
        v30 = v140;
      }

      sub_1ABAA6250();
      if (!v34)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v157 = v49;
      v156 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v117 = sub_1ABE9EC74();
      sub_1ABEA58FC(v117);
      v118 = sub_1ABF22D14();
      sub_1ABA951C0(v118);
      sub_1ABAB5950();
      v106 = &unk_1EB4D2E60;
      v107 = &qword_1ABF4D8A0;
      sub_1ABAB5B64();
      sub_1ABA8FCE0();
      sub_1ABA95410(v119, v120, v121, v122);
      sub_1ABA829B4();
      sub_1ABF23EE4();
      sub_1ABAA55CC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7FAB0();
        sub_1ABADC9D0();
        v30 = v141;
      }

      sub_1ABAA6250();
      v108 = v147;
      if (!v34)
      {
        goto LABEL_56;
      }
    }

    sub_1ABA7DC80(v115);
    sub_1ABADC9D0();
    v30 = v116;
LABEL_56:
    v30[2] = v106;
    v35[4](v30 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + v35[9] * v107, v108, v9);
  }

  v158[0] = v30;
  v123 = v151;
  sub_1ABF22404();
  sub_1ABAB5B64();
  sub_1ABA7D918();
  sub_1ABA95410(v124, v125, v126, v127);
  sub_1ABF23EF4();
  (*(v152 + 8))(v123, v154);

  sub_1ABA7BC1C();
}

void TriplesQuery.Clause.MatchClause.sqlExpression(config:)()
{
  sub_1ABA7E2A8();
  v190 = v4;
  v207 = v5;
  v6 = sub_1ABF22854();
  v7 = sub_1ABA7AB80(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7C21C();
  v210 = v8;
  sub_1ABA8409C();
  v195 = sub_1ABF22C24();
  sub_1ABA7BB64();
  v194 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7C068();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA972D4();
  v191 = v12;
  sub_1ABA8409C();
  v203 = sub_1ABF22414();
  sub_1ABA7BB64();
  v206 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C21C();
  v205 = v15;
  sub_1ABA8409C();
  v211 = sub_1ABF22D14();
  sub_1ABA7BB64();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7BC58();
  v21 = v20 - v19;
  v202 = sub_1ABF22424();
  sub_1ABA7BB64();
  v204 = v22;
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA7C068();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1ABA8BD74();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v186 - v35;
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA887B4();
  MEMORY[0x1EEE9AC00](v38);
  sub_1ABA99704();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v186 - v40;
  v42 = *v1;
  v43 = *(v1 + 1);
  v197 = v1[24];
  v44 = *(v1 + 4);
  v196 = v1[40];
  v45 = *(v1 + 6);
  v198 = v1[56];
  v208 = *(v1 + 8);
  v199 = v1[72];
  v209 = *(v1 + 10);
  v193 = v1[88];
  v192 = *(v1 + 12);
  v201 = v1[104];
  if (v43)
  {
    v200 = v45;
    if (v42)
    {
      v189 = v44;
      v213 = v43;
      v215 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v46 = sub_1ABE9EC74();
      sub_1ABA955D8(v46);
      v47 = v211;
      v212 = v211;
      sub_1ABA97084(MEMORY[0x1E69A0050]);
      sub_1ABAA1640();
      sub_1ABAA04E4();
      v215 = v42;
      sub_1ABAA18DC(MEMORY[0x1E699FE60]);
      v48 = sub_1ABA8CD18();
      sub_1ABAD219C(v48, v49);
      sub_1ABA8FCE0();
      sub_1ABA7FD88(v50, v51, v52, v53);
      sub_1ABB3E45C();
      sub_1ABA90BC0();
      sub_1ABF23EE4();
      sub_1ABAA3E50();
      sub_1ABF228D4();
      sub_1ABA84B54(v214);
      sub_1ABAA2094();
      v55 = v54;
      v56 = *(v54 + 16);
      sub_1ABAA2754();
      v58 = v204;
      if (v59)
      {
        sub_1ABA7DC80(v57);
        sub_1ABADC9D0();
        v55 = v170;
      }

      v60 = sub_1ABA7C8B0();
      v61(v60, v3, v42);
      v62 = v203;
      v44 = v189;
    }

    else
    {
      v213 = v43;
      v212 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v79 = sub_1ABE9EC74();
      sub_1ABEA590C(v79);
      v47 = v211;
      v215 = v211;
      sub_1ABAA18DC(MEMORY[0x1E69A0050]);
      sub_1ABAB5950();
      sub_1ABAB5B64();
      sub_1ABA8FCE0();
      sub_1ABA95410(v80, v81, v82, v83);
      sub_1ABB3E45C();
      sub_1ABAA36B4();
      sub_1ABF23EE4();
      sub_1ABA84B54(v214);
      sub_1ABAA2094();
      v55 = v84;
      v56 = *(v84 + 16);
      sub_1ABAA2754();
      v58 = v204;
      if (v59)
      {
        sub_1ABA7DC80(v85);
        sub_1ABADC9D0();
        v55 = v171;
      }

      v62 = v203;
      sub_1ABAA04E4();
      v86 = sub_1ABA7C8B0();
      v87(v86, v41, v42);
    }
  }

  else
  {
    v188 = v21;
    v187 = v17;
    v56 = *(v1 + 2);
    if (!v56)
    {
      v55 = MEMORY[0x1E69E7CC0];
      v62 = v203;
      v58 = v204;
      sub_1ABAA04E4();
      v47 = v211;
      if (!v88)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    v200 = v45;
    v189 = v44;
    v63 = *v190;
    v64 = v190[1];
    v65 = v190[2];
    v190 = v190[3];
    v215 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
    v216 = sub_1ABE9EC74();
    LOBYTE(v214[0]) = 1;
    sub_1ABAB69BC();
    v66 = sub_1ABF22D34();
    MEMORY[0x1EEE9AC00](v66);
    *(&v186 - 6) = v63;
    *(&v186 - 5) = v64;
    v67 = v190;
    *(&v186 - 4) = v65;
    *(&v186 - 3) = v67;
    *(&v186 - 2) = v17;
    sub_1ABE0F86C();
    v69 = v68;
    v214[0] = v68;
    v70 = v205;
    sub_1ABF223F4();
    v71 = sub_1ABA8CD18();
    sub_1ABAD219C(v71, v72);
    sub_1ABA7D918();
    sub_1ABA7FD88(v73, v74, v75, v76);
    v55 = MEMORY[0x1E699FE60];
    v56 = v214;
    sub_1ABF23EF4();
    v62 = v203;
    (*(v206 + 8))(v70, v203);

    if (v42)
    {
      sub_1ABAA04E4();
      v215 = v42;
      v216 = v55;
      v77 = sub_1ABA93DC0(v214);
      (*(v204 + 16))(v77, v2, v42);
      sub_1ABF228D4();
      sub_1ABA84B54(v214);
      sub_1ABAA2094();
      sub_1ABA8B988();
      if (v59)
      {
        sub_1ABA819D0(v78);
        sub_1ABADC9D0();
        v55 = v184;
      }

      v36 = v0;
    }

    else
    {
      v42 = v202;
      (*(v204 + 16))(v36, v2, v202);
      sub_1ABAA2094();
      sub_1ABA8B988();
      if (v59)
      {
        sub_1ABA819D0(v89);
        sub_1ABADC9D0();
        v55 = v185;
      }
    }

    v44 = v189;
    v90 = v187;
    v91 = v2;
    v58 = v204;
    (*(v204 + 8))(v91, v42);
    *(v55 + 16) = v214;
    (*(v58 + 32))(v55 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v69, v36, v42);
    v47 = v211;
    (*(v90 + 8))(v188, v211);
  }

  v88 = v200;
  if (!v200)
  {
    goto LABEL_31;
  }

LABEL_20:
  if (v196)
  {
    v213 = v88;
    v215 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
    v92 = sub_1ABE9EC74();
    sub_1ABEA58EC(v92);
    v212 = v47;
    sub_1ABA97084(MEMORY[0x1E69A0050]);
    sub_1ABAA1640();
    v215 = v42;
    sub_1ABAA18DC(MEMORY[0x1E699FE60]);
    v56 = &unk_1EB4D2E60;
    v93 = sub_1ABA7ABE4();
    sub_1ABAD219C(v93, v94);
    sub_1ABA8FCE0();
    sub_1ABAA0FE0(v95, v96, v97, v98);
    sub_1ABA90BC0();
    sub_1ABF23EE4();
    sub_1ABAA3E50();
    sub_1ABF228D4();
    if ((sub_1ABA82FD8() & 1) == 0)
    {
      sub_1ABA7BEF0();
      sub_1ABADC9D0();
      v55 = v172;
    }

    sub_1ABAA5B1C();
    v47 = v211;
    if (v59)
    {
      sub_1ABA7DC80(v99);
      sub_1ABADC9D0();
      v55 = v173;
    }
  }

  else
  {
    v213 = v88;
    v212 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
    v100 = sub_1ABE9EC74();
    sub_1ABEA591C(v100);
    v215 = v47;
    sub_1ABAA18DC(MEMORY[0x1E69A0050]);
    sub_1ABAB5950();
    v56 = &qword_1ABF4D8A0;
    sub_1ABAB5B64();
    sub_1ABA8FCE0();
    sub_1ABA95410(v101, v102, v103, v104);
    sub_1ABA829B4();
    sub_1ABAA11EC();
    sub_1ABF23EE4();
    if ((sub_1ABA82FD8() & 1) == 0)
    {
      sub_1ABA7BEF0();
      sub_1ABADC9D0();
      v55 = v174;
    }

    sub_1ABAA5B1C();
    if (v59)
    {
      sub_1ABA7DC80(v105);
      sub_1ABADC9D0();
      sub_1ABA8C854();
    }
  }

  v106 = sub_1ABA7C8B0();
  v107(v106);
LABEL_31:
  if (v44)
  {
    if (v197)
    {
      v213 = v44;
      v215 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v108 = sub_1ABE9EC74();
      sub_1ABAABDA0(v108);
      v212 = v47;
      sub_1ABA97084(MEMORY[0x1E69A0050]);
      sub_1ABAA1640();
      v215 = v42;
      sub_1ABAA18DC(MEMORY[0x1E699FE60]);
      v56 = &qword_1EB4DA310;
      v109 = sub_1ABA7ABE4();
      sub_1ABAD219C(v109, v110);
      sub_1ABA8FCE0();
      v44 = sub_1ABAA0FE0(v111, v112, v113, v114);
      sub_1ABB8EC34();
      sub_1ABA90BC0();
      sub_1ABF23EE4();
      sub_1ABAA3E50();
      sub_1ABF228D4();
      if ((sub_1ABA82FD8() & 1) == 0)
      {
        sub_1ABA7BEF0();
        sub_1ABADC9D0();
        v55 = v175;
      }

      sub_1ABAA5B1C();
      v47 = v211;
      if (v59)
      {
        sub_1ABA7DC80(v115);
        sub_1ABADC9D0();
        v55 = v176;
      }
    }

    else
    {
      v213 = v44;
      v212 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v116 = sub_1ABE9EC74();
      sub_1ABAB2C24(v116);
      v215 = v47;
      sub_1ABAA18DC(MEMORY[0x1E69A0050]);
      sub_1ABAB5950();
      v56 = &qword_1ABF656F0;
      v44 = sub_1ABAB5B64();
      sub_1ABA8FCE0();
      sub_1ABA95410(v117, v118, v119, v120);
      sub_1ABB8EC34();
      sub_1ABAA36B4();
      sub_1ABAA11EC();
      sub_1ABF23EE4();
      if ((sub_1ABA82FD8() & 1) == 0)
      {
        sub_1ABA7BEF0();
        sub_1ABADC9D0();
        v55 = v177;
      }

      sub_1ABAA5B1C();
      if (v59)
      {
        sub_1ABA7DC80(v121);
        sub_1ABADC9D0();
        sub_1ABA8C854();
      }
    }

    v122 = sub_1ABA7C8B0();
    v123(v122);
  }

  if (v208)
  {
    if (v198)
    {
      v213 = v208;
      v215 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v124 = sub_1ABE9EC74();
      sub_1ABAB51E4(v124);
      v212 = v47;
      sub_1ABA97084(MEMORY[0x1E69A0050]);
      sub_1ABAA1640();
      v215 = v42;
      sub_1ABAA18DC(MEMORY[0x1E699FE60]);
      v56 = &qword_1EB4DBE20;
      v125 = sub_1ABA7ABE4();
      sub_1ABAD219C(v125, v126);
      sub_1ABA8FCE0();
      v44 = sub_1ABAA0FE0(v127, v128, v129, v130);
      sub_1ABE40310();
      sub_1ABA90BC0();
      sub_1ABF23EE4();
      sub_1ABAA3E50();
      sub_1ABF228D4();
      if ((sub_1ABA82FD8() & 1) == 0)
      {
        sub_1ABA7BEF0();
        sub_1ABADC9D0();
        v55 = v178;
      }

      sub_1ABAA5B1C();
      v47 = v211;
      if (v59)
      {
        sub_1ABA7DC80(v131);
        sub_1ABADC9D0();
        v55 = v179;
      }
    }

    else
    {
      v213 = v208;
      v212 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v132 = sub_1ABE9EC74();
      sub_1ABA9653C(v132);
      v215 = v47;
      sub_1ABAA18DC(MEMORY[0x1E69A0050]);
      sub_1ABAB5950();
      v56 = &qword_1ABF71E10;
      v44 = sub_1ABAB5B64();
      sub_1ABA8FCE0();
      sub_1ABA95410(v133, v134, v135, v136);
      sub_1ABE40310();
      sub_1ABAA36B4();
      sub_1ABAA11EC();
      sub_1ABF23EE4();
      if ((sub_1ABA82FD8() & 1) == 0)
      {
        sub_1ABA7BEF0();
        sub_1ABADC9D0();
        v55 = v180;
      }

      sub_1ABAA5B1C();
      if (v59)
      {
        sub_1ABA7DC80(v137);
        sub_1ABADC9D0();
        sub_1ABA8C854();
      }
    }

    v138 = sub_1ABA7C8B0();
    v139(v138);
  }

  if (v209)
  {
    if (v199)
    {
      v213 = v209;
      v215 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v140 = sub_1ABE9EC74();
      sub_1ABA90E44(v140);
      v212 = v47;
      sub_1ABA97084(MEMORY[0x1E69A0050]);
      sub_1ABAA1640();
      v215 = v42;
      sub_1ABAA18DC(MEMORY[0x1E699FE60]);
      v56 = &qword_1EB4DA310;
      v141 = sub_1ABA7ABE4();
      sub_1ABAD219C(v141, v142);
      sub_1ABA8FCE0();
      v44 = sub_1ABAA0FE0(v143, v144, v145, v146);
      sub_1ABB8EC34();
      sub_1ABA90BC0();
      sub_1ABF23EE4();
      sub_1ABAA3E50();
      sub_1ABAA038C();
      sub_1ABF228D4();
      if ((sub_1ABA82FD8() & 1) == 0)
      {
        sub_1ABA7BEF0();
        sub_1ABADC9D0();
        v55 = v181;
      }

      sub_1ABAA5B1C();
      if (v59)
      {
        sub_1ABA7DC80(v147);
        sub_1ABADC9D0();
        v55 = v182;
      }
    }

    else
    {
      v213 = v209;
      v212 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v148 = sub_1ABE9EC74();
      sub_1ABEA58FC(v148);
      v215 = v47;
      sub_1ABAA18DC(MEMORY[0x1E69A0050]);
      sub_1ABAB5950();
      v56 = &qword_1ABF656F0;
      v44 = sub_1ABAB5B64();
      sub_1ABA8FCE0();
      sub_1ABA95410(v149, v150, v151, v152);
      sub_1ABB8EC34();
      sub_1ABAA36B4();
      sub_1ABAA11EC();
      sub_1ABF23EE4();
      if ((sub_1ABA82FD8() & 1) == 0)
      {
        sub_1ABA7BEF0();
        sub_1ABADC9D0();
        v55 = v183;
      }

      sub_1ABAA5B1C();
      if (v59)
      {
        sub_1ABA7DC80(v153);
        sub_1ABADC9D0();
        sub_1ABA8C854();
      }
    }

    v154 = sub_1ABA7C8B0();
    v155(v154);
  }

  if ((v201 & 1) == 0)
  {
    v156 = sub_1ABAD219C(&qword_1EB4D5820, &unk_1ABF39E30);
    v157 = sub_1ABA8E764(v156);
    v158 = MEMORY[0x1E69E7360];
    *(v157 + 16) = xmmword_1ABF34740;
    v159 = MEMORY[0x1E69A01D0];
    *(v157 + 56) = v158;
    *(v157 + 64) = v159;
    *(v157 + 32) = v192;
    v160 = sub_1ABF22834();
    v161 = (v194 + 8);
    if (v193)
    {
      sub_1ABA8CD9C(v160, 0x80000001ABF95140);
    }

    else
    {
      sub_1ABA8CD9C(v160, 0x80000001ABF95160);
    }

    sub_1ABAA038C();
    sub_1ABF22BE4();
    (*v161)(v56, v195);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA7BEF0();
      sub_1ABADC9D0();
      v55 = v168;
    }

    sub_1ABAA5B1C();
    if (v59)
    {
      sub_1ABA7DC80(v162);
      sub_1ABADC9D0();
      v55 = v169;
    }

    *(v55 + 16) = v161;
    (*(v58 + 32))(v55 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v56, v44, v42);
  }

  v214[0] = v55;
  v163 = v205;
  sub_1ABF22404();
  sub_1ABAB5B64();
  sub_1ABA7D918();
  sub_1ABA95410(v164, v165, v166, v167);
  sub_1ABF23EF4();
  (*(v206 + 8))(v163, v62);

  sub_1ABA7BC1C();
}

void TriplesQuery.Clause.FullTextSearchClause.sqlExpression(config:)()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v80 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  sub_1ABA7BB64();
  v84 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7C068();
  v77 = v8;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA88E50();
  v83 = v10;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA972D4();
  v76 = v12;
  v13 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  v14 = sub_1ABA7AB80(v13);
  MEMORY[0x1EEE9AC00](v14);
  v79 = &v75 - v15;
  v16 = sub_1ABAD219C(&qword_1EB4DBF80, qword_1ABF74140);
  v17 = sub_1ABA7AB80(v16);
  MEMORY[0x1EEE9AC00](v17);
  v78 = &v75 - v18;
  v82 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7AC18();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA972D4();
  if (*(v3 + 24))
  {
    v26 = v24;
    v81 = v25;
    v85 = v5;
    v27 = *v1;
    v28 = *(v1 + 8);
    switch(v28)
    {
      case 5:
        goto LABEL_4;
      default:
        v29 = sub_1ABF25054();

        if (v29)
        {
LABEL_4:

          v30 = v26;
          sub_1ABF22CE4();
          v31 = v78;
          v32 = v80;
          v33 = sub_1ABA7B9B4(v78, 1, 1, v80);
          MEMORY[0x1EEE9AC00](v33);
          v73 = v31;
          v74 = v30;
          sub_1ABE9F110(sub_1ABEA57C8, (&v75 - 4), v27);
          if (sub_1ABA7E1E0(v31, 1, v32))
          {
            v34 = sub_1ABF22424();
            v35 = v79;
            sub_1ABA7B9B4(v79, 1, 1, v34);
            v36 = sub_1ABAD219C(&qword_1EB4DB3F0, &unk_1ABF4C7B0);
            v37 = sub_1ABA8E764(v36);
            *(v37 + 16) = xmmword_1ABF34740;
            v38 = sub_1ABF22D14();
            v39 = MEMORY[0x1E69A0038];
            *(v37 + 56) = v38;
            *(v37 + 64) = v39;
            sub_1ABA93DC0((v37 + 32));
            sub_1ABF22D24();
            v41 = v82;
            v40 = v83;
            sub_1ABF22CB4();

            v89 = v38;
            v90 = MEMORY[0x1E69A0040];
            sub_1ABA93DC0(v88);
            sub_1ABF22D24();
            sub_1ABA9A770();
            sub_1ABAB47C4(v42, v43, v44, v45);
            sub_1ABAA0C48();
            sub_1ABF225D4();
            (*(v84 + 8))(v40, v32);
            sub_1ABA84B54(v88);
            if (sub_1ABA7E1E0(v35, 1, v34) != 1)
            {
              sub_1ABA925A4(v35, &qword_1EB4DB820, &qword_1ABF500A0);
            }
          }

          else
          {
            v59 = v84;
            (*(v84 + 16))(v83, v31, v32);
            v60 = sub_1ABAD219C(&qword_1EB4DB3F0, &unk_1ABF4C7B0);
            v61 = sub_1ABA8E764(v60);
            *(v61 + 16) = xmmword_1ABF34740;
            v62 = sub_1ABF22D14();
            v63 = MEMORY[0x1E69A0038];
            *(v61 + 56) = v62;
            *(v61 + 64) = v63;
            sub_1ABA93DC0((v61 + 32));
            sub_1ABF22D24();
            sub_1ABA96E44();
            sub_1ABAB47C4(v64, &qword_1EB4D50F0, &unk_1ABF3A620, v65);
            v66 = v76;
            sub_1ABF227D4();

            v67 = *(v59 + 8);
            v68 = sub_1ABA7ABE4();
            v67(v68);
            v89 = v62;
            v90 = MEMORY[0x1E69A0040];
            sub_1ABA93DC0(v88);
            sub_1ABAA1DD4();
            sub_1ABF22D24();
            sub_1ABA9A770();
            sub_1ABAB47C4(v69, &qword_1EB4D50F0, &unk_1ABF3A620, v70);
            v71 = v79;
            sub_1ABF225D4();
            (v67)(v66, v32);
            sub_1ABA84B54(v88);
            v72 = sub_1ABF22424();
            sub_1ABA7B9B4(v71, 0, 1, v72);
            (*(*(v72 - 8) + 32))(v85, v71, v72);
            v41 = v82;
          }

          sub_1ABA925A4(v31, &qword_1EB4DBF80, qword_1ABF74140);
          (*(v81 + 8))(v30, v41);
        }

        else
        {
          sub_1ABF22CE4();
          v87 = 5;
          v86 = v28;
          v89 = sub_1ABF22424();
          v90 = MEMORY[0x1E699FE60];
          sub_1ABA93DC0(v88);
          TriplesQuery.Clause.FullTextSearchClause.stringSetExpression(column:searchType:textSet:)();
          v46 = v77;
          v47 = v82;
          sub_1ABF22CA4();
          (*(v81 + 8))(v22, v47);
          sub_1ABA84B54(v88);
          v48 = sub_1ABAD219C(&qword_1EB4DB3F0, &unk_1ABF4C7B0);
          v49 = sub_1ABA8E764(v48);
          *(v49 + 16) = xmmword_1ABF34740;
          v50 = sub_1ABF22D14();
          v51 = MEMORY[0x1E69A0038];
          *(v49 + 56) = v50;
          *(v49 + 64) = v51;
          sub_1ABA93DC0((v49 + 32));
          sub_1ABF22D24();
          sub_1ABA96E44();
          sub_1ABAB47C4(v52, &qword_1EB4D50F0, &unk_1ABF3A620, v53);
          v54 = v83;
          v55 = v80;
          sub_1ABF227D4();

          v56 = *(v84 + 8);
          v56(v46, v55);
          v89 = v50;
          v90 = MEMORY[0x1E69A0040];
          sub_1ABA93DC0(v88);
          sub_1ABF22D24();
          sub_1ABA9A770();
          sub_1ABAB47C4(v57, &qword_1EB4D50F0, &unk_1ABF3A620, v58);
          sub_1ABAA0C48();
          sub_1ABF225D4();
          v56(v54, v55);
          sub_1ABA84B54(v88);
        }

        sub_1ABA7BC1C();
        break;
    }
  }

  else
  {
    sub_1ABF24CD4();
    __break(1u);
  }
}

uint64_t TriplesQuery.Clause.ComparisonClause.sqlExpression(config:)()
{
  v1 = sub_1ABF22D14();
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7BC58();
  v5 = v4 - v3;
  v7 = (v6 + 8);
  if (*v0)
  {
    sub_1ABEA5750();
    sub_1ABF22D34();
    sub_1ABA8BB78();
    TriplesQuery.ComparisonType.compare(numeric:_:)();
  }

  else
  {
    sub_1ABEA5750();
    sub_1ABF22D34();
    sub_1ABA8BB78();
    TriplesQuery.ComparisonType.compare(text:_:)();
  }

  return (*v7)(v5, v1);
}

uint64_t TriplesQuery.Clause.AllClause.sqlExpression(config:)()
{
  sub_1ABF22C24();
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v0);
  sub_1ABA7BC58();
  sub_1ABEA5944();
  sub_1ABF22BE4();
  v1 = sub_1ABA8CD18();
  return v2(v1);
}

void sub_1ABEA26F8()
{
  sub_1ABA7E2A8();
  v185 = v3;
  v186 = sub_1ABF22414();
  sub_1ABA7BB64();
  v184 = v4;
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7C21C();
  v183 = v6;
  sub_1ABA8409C();
  v187 = sub_1ABF22424();
  sub_1ABA7BB64();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7C068();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABAA0B28();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v171 - v19;
  v21 = *(v0 + 8);
  v182 = *(v0 + 16);
  v22 = *(v0 + 24);
  v23 = *(v0 + 32);
  v24 = *(v0 + 40);
  v177 = *(v0 + 48);
  v191 = *(v0 + 56);
  v178 = *(v0 + 64);
  v190 = *(v0 + 72);
  v25 = MEMORY[0x1E69A0050];
  v188 = v8;
  v189 = v22;
  if (v21)
  {
    v173 = v23;
    v174 = v24;
    v172 = *v0;
    p_Description = &v21[3].Description;
    sub_1ABA7D32C();
    v29 = v28 & v27;
    v8 = (v30 + 63) >> 6;

    v25 = 0;
    v31 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v32 = v25;
      if (!v29)
      {
        break;
      }

LABEL_7:
      sub_1ABA8B778();
      v34 = (v21[3].Kind + ((v25 << 10) | (16 * v33)));
      v0 = *v34;
      v2 = v34[1];

      EntityIdentifier.init(_:)(v0, v2, &v196);
      if ((v197 & 1) == 0)
      {
        v171 = v196;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_1ABA7FAB0();
          sub_1ABAD89C8(v36, v37, v38, v39);
          v31 = v40;
        }

        v2 = *(v31 + 16);
        v35 = *(v31 + 24);
        v0 = v2 + 1;
        if (v2 >= v35 >> 1)
        {
          sub_1ABAD89C8(v35 > 1, v2 + 1, 1, v31);
          v31 = v41;
        }

        *(v31 + 16) = v0;
        *(v31 + 8 * v2 + 32) = v171;
      }
    }

    while (1)
    {
      v25 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_76;
      }

      if (v25 >= v8)
      {
        break;
      }

      v29 = p_Description[v25];
      ++v32;
      if (v29)
      {
        goto LABEL_7;
      }
    }

    if (v172)
    {
      v195 = v31;
      v198 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v42 = sub_1ABE9EC74();
      sub_1ABA955D8(v42);
      v193 = sub_1ABF22D14();
      v25 = MEMORY[0x1E69A0050];
      v194 = MEMORY[0x1E69A0050];
      sub_1ABA93DC0(v192);
      sub_1ABAA1640();
      v43 = v187;
      v198 = v187;
      v44 = sub_1ABAA18DC(MEMORY[0x1E699FE60]);
      sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
      sub_1ABA7D918();
      sub_1ABAB47C4(v45, &qword_1EB4D1720, &qword_1ABF338B0, v46);
      sub_1ABB3E45C();
      sub_1ABA90BC0();
      sub_1ABF23EE4();
      sub_1ABA84B54(v192);

      sub_1ABF228D4();
      sub_1ABA84B54(&v196);
      sub_1ABAA2094();
      v48 = v47;
      v0 = *(v47 + 16);
      sub_1ABAA2754();
      v8 = v188;
      if (v50)
      {
        sub_1ABA7DC80(v49);
        sub_1ABADC9D0();
        v48 = v165;
      }

      v20 = v1;
      v51 = v43;
    }

    else
    {
      v195 = v31;
      v193 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v52 = sub_1ABE9EC74();
      sub_1ABEA590C(v52);
      v198 = sub_1ABF22D14();
      v25 = MEMORY[0x1E69A0050];
      v199 = MEMORY[0x1E69A0050];
      sub_1ABA93DC0(&v196);
      sub_1ABAB5950();
      sub_1ABAB5B64();
      sub_1ABA7D918();
      v44 = sub_1ABA95410(v53, v54, v55, v56);
      sub_1ABB3E45C();
      sub_1ABAA36B4();
      sub_1ABF23EE4();
      sub_1ABAA55CC();

      sub_1ABAA2094();
      v48 = v57;
      v0 = *(v57 + 16);
      sub_1ABAA2754();
      v51 = v187;
      v8 = v188;
      if (v50)
      {
        sub_1ABA7DC80(v58);
        sub_1ABADC9D0();
        v48 = v166;
      }
    }

    *(v48 + 16) = v44;
    sub_1ABA7EC68();
    v61(v59 + v60 * v0, v20, v51);
    v22 = v189;
    v24 = v174;
    LOBYTE(v23) = v173;
  }

  else
  {
    v48 = MEMORY[0x1E69E7CC0];
    v51 = v187;
  }

  v62 = v191;
  if (v24)
  {
    if (v23)
    {
      v195 = v24;
      v198 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v63 = sub_1ABE9EC74();
      sub_1ABEA58EC(v63);
      v193 = sub_1ABF22D14();
      v194 = v25;
      sub_1ABA93DC0(v192);
      sub_1ABAA1640();
      v198 = v51;
      v64 = sub_1ABAA18DC(MEMORY[0x1E699FE60]);
      v0 = &unk_1EB4D2E60;
      v65 = &qword_1ABF4D8A0;
      v66 = sub_1ABA7ABE4();
      sub_1ABAD219C(v66, v67);
      sub_1ABA8FCE0();
      sub_1ABAA0FE0(v68, v69, v70, v71);
      sub_1ABA90BC0();
      sub_1ABF23EE4();
      sub_1ABAA3E50();
      sub_1ABAA038C();
      sub_1ABF228D4();
      sub_1ABAA55CC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7FAB0();
        sub_1ABADC9D0();
        v48 = v161;
      }

      sub_1ABAA6250();
      if (!v50)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v195 = v24;
      v193 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v74 = sub_1ABE9EC74();
      sub_1ABEA591C(v74);
      v198 = sub_1ABF22D14();
      v199 = v25;
      sub_1ABA93DC0(&v196);
      sub_1ABAB5950();
      v64 = &unk_1EB4D2E60;
      v0 = &qword_1ABF4D8A0;
      sub_1ABAB5B64();
      sub_1ABA8FCE0();
      sub_1ABA95410(v75, v76, v77, v78);
      sub_1ABA829B4();
      sub_1ABAA11EC();
      sub_1ABF23EE4();
      sub_1ABAA55CC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7FAB0();
        sub_1ABADC9D0();
        v48 = v162;
      }

      sub_1ABAA6250();
      v65 = v180;
      if (!v50)
      {
        goto LABEL_31;
      }
    }

    sub_1ABA7DC80(v72);
    sub_1ABADC9D0();
    v48 = v73;
LABEL_31:
    *(v48 + 16) = v64;
    sub_1ABA7EC68();
    v81(v79 + v80 * v0, v65, v51);
    v22 = v189;
  }

  if (!v22)
  {
    goto LABEL_43;
  }

  if (v182)
  {
    v195 = v22;
    v198 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
    v82 = sub_1ABE9EC74();
    sub_1ABAABDA0(v82);
    v193 = sub_1ABF22D14();
    v194 = v25;
    sub_1ABA93DC0(v192);
    sub_1ABAA1640();
    v198 = v51;
    v83 = sub_1ABAA18DC(MEMORY[0x1E699FE60]);
    v0 = &unk_1EB4D2E60;
    v84 = &qword_1ABF4D8A0;
    v85 = sub_1ABA7ABE4();
    sub_1ABAD219C(v85, v86);
    sub_1ABA8FCE0();
    sub_1ABAA0FE0(v87, v88, v89, v90);
    sub_1ABA90BC0();
    sub_1ABF23EE4();
    sub_1ABAA3E50();
    sub_1ABAA038C();
    sub_1ABF228D4();
    sub_1ABAA55CC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA7FAB0();
      sub_1ABADC9D0();
      v48 = v163;
    }

    sub_1ABAA6250();
    if (!v50)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v195 = v22;
    v193 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
    v93 = sub_1ABE9EC74();
    sub_1ABAB2C24(v93);
    v198 = sub_1ABF22D14();
    v199 = v25;
    sub_1ABA93DC0(&v196);
    sub_1ABAB5950();
    v83 = &unk_1EB4D2E60;
    v0 = &qword_1ABF4D8A0;
    sub_1ABAB5B64();
    sub_1ABA8FCE0();
    sub_1ABA95410(v94, v95, v96, v97);
    sub_1ABA829B4();
    sub_1ABAA11EC();
    sub_1ABF23EE4();
    sub_1ABAA55CC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA7FAB0();
      sub_1ABADC9D0();
      v48 = v164;
    }

    sub_1ABAA6250();
    v84 = v181;
    if (!v50)
    {
      goto LABEL_42;
    }
  }

  sub_1ABA7DC80(v91);
  sub_1ABADC9D0();
  v48 = v92;
LABEL_42:
  *(v48 + 16) = v83;
  sub_1ABA7EC68();
  v100(v98 + v99 * v0, v84, v51);
LABEL_43:
  if (v62)
  {
    v21 = v51;
    v101 = v62;
    v102 = v25;
    v8 = v101 + 56;
    sub_1ABA7D32C();
    v105 = v104 & v103;
    v2 = (v106 + 63) >> 6;

    v25 = 0;
    p_Description = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v107 = v25;
      if (!v105)
      {
        break;
      }

LABEL_49:
      sub_1ABA8B778();
      v0 = *(*(v191 + 48) + ((v25 << 10) | (16 * v108)));

      v109 = sub_1ABA7ABE4();
      RelationshipIdentifier.init(_:)(v109, v110, v111);
      if ((v197 & 1) == 0)
      {
        v112 = v196;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA7BEF0();
          sub_1ABADC9BC();
          p_Description = v115;
        }

        v114 = p_Description[2];
        v113 = p_Description[3];
        v0 = v114 + 1;
        if (v114 >= v113 >> 1)
        {
          sub_1ABA819D0(v113);
          sub_1ABADC9BC();
          p_Description = v116;
        }

        p_Description[2] = v0;
        p_Description[v114 + 4] = v112;
        v21 = v187;
      }
    }

    while (1)
    {
      v25 = v107 + 1;
      if (__OFADD__(v107, 1))
      {
        break;
      }

      if (v25 >= v2)
      {

        v195 = p_Description;
        if (v177)
        {
          v198 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
          v117 = sub_1ABE9EC74();
          sub_1ABAB51E4(v117);
          v193 = sub_1ABF22D14();
          v194 = v102;
          v25 = v102;
          sub_1ABA93DC0(v192);
          sub_1ABAA1640();
          v198 = v21;
          sub_1ABAA18DC(MEMORY[0x1E699FE60]);
          v0 = &unk_1EB4DBF88;
          v118 = sub_1ABA7ABE4();
          sub_1ABAD219C(v118, v119);
          sub_1ABA7D918();
          sub_1ABAA0FE0(v120, v121, v122, v123);
          sub_1ABE40310();
          sub_1ABAA2434();
          sub_1ABF23EE4();
          sub_1ABA84B54(v192);

          v2 = v176;
          sub_1ABF228D4();
          sub_1ABA84B54(&v196);
        }

        else
        {
          v193 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
          v124 = sub_1ABE9EC74();
          sub_1ABA9653C(v124);
          v198 = sub_1ABF22D14();
          v199 = v102;
          v25 = v102;
          sub_1ABA93DC0(&v196);
          sub_1ABAB5950();
          v0 = &unk_1EB4DBF88;
          v125 = sub_1ABA8CD18();
          sub_1ABAD219C(v125, v126);
          sub_1ABA7D918();
          sub_1ABA7FD88(v127, v128, v129, v130);
          sub_1ABE40310();
          sub_1ABAA36B4();
          v2 = v175;
          sub_1ABF23EE4();
          sub_1ABA84B54(&v196);
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v8 = v188;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_77;
        }

        goto LABEL_59;
      }

      v105 = *(v8 + 8 * v25);
      ++v107;
      if (v105)
      {
        goto LABEL_49;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    sub_1ABA7FAB0();
    sub_1ABADC9D0();
    v48 = v159;
LABEL_59:
    sub_1ABAA6250();
    if (v50)
    {
      sub_1ABA7DC80(v132);
      sub_1ABADC9D0();
      v48 = v160;
    }

    *(v48 + 16) = p_Description;
    sub_1ABA7EC68();
    v135 = v2;
    v51 = v21;
    v136(v133 + v134 * v0, v135, v21);
  }

  if (v190)
  {
    if (v178)
    {
      v195 = v190;
      v198 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v137 = sub_1ABE9EC74();
      sub_1ABA90E44(v137);
      v193 = sub_1ABF22D14();
      v194 = v25;
      sub_1ABA93DC0(v192);
      sub_1ABAA1640();
      v198 = v51;
      v138 = sub_1ABAA18DC(MEMORY[0x1E699FE60]);
      v139 = &unk_1EB4D2E60;
      v140 = sub_1ABA8CD18();
      sub_1ABAD219C(v140, v141);
      sub_1ABA8FCE0();
      sub_1ABA7FD88(v142, v143, v144, v145);
      sub_1ABA90BC0();
      sub_1ABF23EE4();
      sub_1ABAA3E50();
      sub_1ABAB69BC();
      sub_1ABF228D4();
      sub_1ABAA55CC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7FAB0();
        sub_1ABADC9D0();
        v48 = v167;
      }

      sub_1ABAA6250();
      if (v50)
      {
        sub_1ABA7DC80(v146);
        sub_1ABADC9D0();
        v48 = v168;
      }

      v147 = &qword_1ABF4D8A0;
    }

    else
    {
      v195 = v190;
      v193 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v148 = sub_1ABE9EC74();
      sub_1ABEA58FC(v148);
      v198 = sub_1ABF22D14();
      v199 = v25;
      sub_1ABA93DC0(&v196);
      sub_1ABAB5950();
      v138 = &unk_1EB4D2E60;
      v139 = &qword_1ABF4D8A0;
      sub_1ABAB5B64();
      sub_1ABA8FCE0();
      sub_1ABA95410(v149, v150, v151, v152);
      sub_1ABA829B4();
      sub_1ABF23EE4();
      sub_1ABAA55CC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7FAB0();
        sub_1ABADC9D0();
        v48 = v169;
      }

      sub_1ABAA6250();
      v147 = v179;
      if (v50)
      {
        sub_1ABA7DC80(v153);
        sub_1ABADC9D0();
        v147 = v179;
        v48 = v170;
      }
    }

    *(v48 + 16) = v138;
    (*(v8 + 32))(v48 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v139, v147, v51);
  }

  v196 = v48;
  v154 = v183;
  sub_1ABF22404();
  sub_1ABAB5B64();
  sub_1ABA7D918();
  sub_1ABA95410(v155, v156, v157, v158);
  sub_1ABF23EF4();
  (*(v184 + 8))(v154, v186);

  sub_1ABA7BC1C();
}

uint64_t sub_1ABEA34EC@<X0>(const void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v35 = a6;
  v49 = a5;
  v38 = a7;
  v11 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - v13;
  v15 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  v36 = *(v15 - 8);
  v37 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v34 = &v32 - v19;
  memcpy(__dst, a1, 0x69uLL);
  if (((1 << (__dst[104] >> 5)) & 0x5C) != 0)
  {

    sub_1ABF22CE4();
    memcpy(v43, __dst, 0x69uLL);
    v39 = a2;
    v40 = a3;
    v41 = a4;
    v42 = v49;
    v49 = sub_1ABF22424();
    v45 = v49;
    v46 = MEMORY[0x1E699FE60];
    sub_1ABA93DC0(v44);
    sub_1ABE971E8(__dst, v47);
    TriplesQuery.Clause.Impl.sqlExpression(config:)(&v39);
  }

  else
  {

    sub_1ABF22CE4();
    memcpy(v43, __dst, 0x69uLL);
    v39 = a2;
    v40 = a3;
    v41 = a4;
    v42 = v49;
    v49 = sub_1ABF22424();
    v45 = v49;
    v46 = MEMORY[0x1E699FE60];
    sub_1ABA93DC0(v44);
    sub_1ABE971E8(__dst, v47);
    TriplesQuery.Clause.Impl.graphIdentifierSQLExpression(config:)(&v39);
  }

  memcpy(v47, v43, 0x69uLL);
  sub_1ABE4C0EC(v47);
  sub_1ABF22CA4();
  (*(v12 + 8))(v14, v11);
  sub_1ABA84B54(v44);
  sub_1ABAD219C(&qword_1EB4DB3F0, &unk_1ABF4C7B0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1ABF34740;
  v21 = sub_1ABF22D14();
  v22 = MEMORY[0x1E69A0038];
  *(v20 + 56) = v21;
  *(v20 + 64) = v22;
  v23 = sub_1ABA93DC0((v20 + 32));
  v33 = *(*(v21 - 8) + 16);
  v24 = v17;
  v25 = v35;
  v33(v23, v35, v21);
  sub_1ABAB47C4(&qword_1EB4D0218, &qword_1EB4D50F0, &unk_1ABF3A620, MEMORY[0x1E699FF88]);
  v26 = v34;
  v27 = v37;
  sub_1ABF227D4();

  v28 = *(v36 + 8);
  v28(v24, v27);
  v43[3] = v21;
  v43[4] = MEMORY[0x1E69A0040];
  v29 = sub_1ABA93DC0(v43);
  v33(v29, v25, v21);
  sub_1ABAB47C4(&qword_1EB4D0210, &qword_1EB4D50F0, &unk_1ABF3A620, MEMORY[0x1E699FF90]);
  v30 = v38;
  sub_1ABF225D4();
  v28(v26, v27);
  sub_1ABA84B54(v43);
  sub_1ABF22424();
  return sub_1ABA7B9B4(v30, 0, 1, v49);
}

void TriplesQuery.Clause.FullTextSearchClause.matchExpression(column:searchType:text:)()
{
  sub_1ABA7E2A8();
  v74 = v5;
  v75 = v6;
  v77 = v7;
  v78 = v8;
  v79 = v9;
  sub_1ABF22D14();
  sub_1ABA7BB64();
  v72 = v11;
  v73 = v10;
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7C21C();
  v71 = v12;
  v13 = sub_1ABAD219C(&qword_1EB4D3068, &unk_1ABF3A8A0);
  v14 = sub_1ABA7AB80(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7AC18();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABAA0B28();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA8BD74();
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA887B4();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v69 - v22;
  v76 = sub_1ABF22164();
  sub_1ABA7BB64();
  v70 = v24;
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7AC18();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA8C644();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABAA08DC();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v69 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v69 - v35;
  switch(*v78)
  {
    case 1:
      v44 = *v77;

      sub_1ABF22134();
      sub_1ABA82BB0(v0);
      if (!v38)
      {
        v66 = v70;
        (*(v70 + 32))(v3, v0, v1);
        v81 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
        v82 = sub_1ABE9EC74();
        v80 = v44;
        sub_1ABF22D34();
        sub_1ABAB6850();
        sub_1ABA9FF14(v3);
        v67 = sub_1ABAA2ACC();
        v68(v67);
        (*(v66 + 8))(v3, v1);
        goto LABEL_20;
      }

      v17 = v0;
      goto LABEL_15;
    case 2:
      sub_1ABAB66BC();
      sub_1ABA8CBBC();
      sub_1ABF22154();
      sub_1ABA82BB0(v23);
      if (!v38)
      {
        v58 = v70;
        (*(v70 + 32))(v36, v23, v1);
        v81 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
        v59 = sub_1ABE9EC74();
        sub_1ABAA1AF8(v59);
        sub_1ABAB6850();
        sub_1ABA9FF14(v36);
        v60 = sub_1ABAA2ACC();
        v61(v60);
        (*(v58 + 8))(v36, v1);
        goto LABEL_20;
      }

      v17 = v23;
      goto LABEL_15;
    case 3:
      v39 = *v77;
      v0 = v75;

      sub_1ABA8CBBC();
      sub_1ABF22114();
      v40 = v76;
      if (sub_1ABA7E1E0(v17, 1, v76) == 1)
      {
        goto LABEL_15;
      }

      v41 = v70;
      (*(v70 + 32))(v28, v17, v40);
      v81 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
      v82 = sub_1ABE9EC74();
      v80 = v39;
      sub_1ABF22D34();
      sub_1ABAB6850();
      sub_1ABF226F4();
      v42 = sub_1ABA7ABE4();
      v43(v42);
      (*(v41 + 8))(v28, v40);
      goto LABEL_20;
    case 4:
      sub_1ABAB66BC();
      sub_1ABA8CBBC();
      sub_1ABF22144();
      sub_1ABA82BB0(v4);
      if (!v38)
      {
        v54 = v70;
        (*(v70 + 32))(v33, v4, v1);
        v81 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
        v55 = sub_1ABE9EC74();
        sub_1ABAA1AF8(v55);
        sub_1ABAB6850();
        sub_1ABA9FF14(v33);
        v56 = sub_1ABAA2ACC();
        v57(v56);
        (*(v54 + 8))(v33, v1);
        goto LABEL_20;
      }

      v17 = v4;
      goto LABEL_15;
    case 5:
      sub_1ABF22424();
      sub_1ABA7BC1C();

      sub_1ABA7B9B4(v49, v50, v51, v52);
      return;
    default:
      sub_1ABAB66BC();
      sub_1ABA8CBBC();
      sub_1ABF22124();
      v37 = v76;
      if (sub_1ABA7E1E0(v1, 1, v76) == 1)
      {
        v17 = v1;
LABEL_15:
        v45 = v79;
        sub_1ABA925A4(v17, &qword_1EB4D3068, &unk_1ABF3A8A0);
        v46 = sub_1ABF22424();
        v47 = v45;
        v48 = 1;
      }

      else
      {
        v62 = v70;
        (*(v70 + 32))(v2, v1, v37);
        v81 = &type metadata for TriplesQuery.Clause.TableCodingKeys;
        v63 = sub_1ABE9EC74();
        sub_1ABAA1AF8(v63);
        sub_1ABAB6850();
        sub_1ABA9FF14(v2);
        v64 = sub_1ABAA2ACC();
        v65(v64);
        (*(v62 + 8))(v2, v37);
LABEL_20:
        v46 = sub_1ABF22424();
        v47 = v0;
        v48 = 0;
      }

      sub_1ABA7B9B4(v47, v48, 1, v46);
      sub_1ABA7BC1C();
      return;
  }
}

void TriplesQuery.Clause.FullTextSearchClause.stringSetExpression(column:searchType:textSet:)()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v42 = v6;
  v43 = sub_1ABF22414();
  sub_1ABA7BB64();
  v41 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7C21C();
  v40 = v9;
  v10 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  v11 = sub_1ABA7AB80(v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1ABF22424();
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7C21C();
  v39 = v16;
  v45 = *v5;
  v17 = *v3;
  sub_1ABA7D32C();
  v20 = v19 & v18;
  v22 = (v21 + 63) >> 6;
  v37 = v23;
  v38 = (v23 + 32);

  v24 = 0;
  v44 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v25 = v24;
    if (!v20)
    {
      break;
    }

LABEL_6:
    v20 &= v20 - 1;
    v48 = v45;
    v47 = v17;

    TriplesQuery.Clause.FullTextSearchClause.matchExpression(column:searchType:text:)();

    if (sub_1ABA7E1E0(v13, 1, v14) == 1)
    {
      sub_1ABA925A4(v13, &qword_1EB4DB820, &qword_1ABF500A0);
    }

    else
    {
      v36 = *v38;
      v36(v39, v13, v14);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABA7BEF0();
        sub_1ABADC9D0();
        v44 = v29;
      }

      v27 = *(v44 + 16);
      v26 = *(v44 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1ABA7DC80(v26);
        sub_1ABADC9D0();
        v44 = v30;
      }

      v28 = v44;
      *(v44 + 16) = v27 + 1;
      v36(v28 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v27, v39, v14);
    }
  }

  while (1)
  {
    v24 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v24 >= v22)
    {

      v46 = v44;
      v31 = v40;
      sub_1ABF223F4();
      sub_1ABAB5B64();
      sub_1ABA7D918();
      sub_1ABA95410(v32, v33, v34, v35);
      sub_1ABF23EF4();
      (*(v41 + 8))(v31, v43);

      sub_1ABA7BC1C();
      return;
    }

    v20 = *(v1 + 56 + 8 * v24);
    ++v25;
    if (v20)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_1ABEA4334(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v29[1] = a3;
  v5 = sub_1ABF22854();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1ABAD219C(&qword_1EB4DBF80, qword_1ABF74140);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v29 - v12;
  v14 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v29 - v19;
  v21 = *a1;
  v22 = a1[1];
  v30 = a2;
  v31 = v21;
  sub_1ABEA57F4(a2, v13);
  if (sub_1ABA7E1E0(v13, 1, v14) == 1)
  {
    sub_1ABA925A4(v13, &qword_1EB4DBF80, qword_1ABF74140);
    sub_1ABAD219C(&qword_1EB4D5820, &unk_1ABF39E30);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1ABF34740;
    v24 = MEMORY[0x1E69A0138];
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 64) = v24;
    *(v23 + 32) = v31;
    *(v23 + 40) = v22;

    sub_1ABF22834();
    sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
    sub_1ABF22C94();
    (*(v32 + 8))(v7, v33);
    sub_1ABA7B9B4(v10, 0, 1, v14);
    return sub_1ABEA5864(v10, v30);
  }

  else
  {
    (*(v15 + 32))(v20, v13, v14);
    sub_1ABAD219C(&qword_1EB4D5820, &unk_1ABF39E30);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1ABF34740;
    v27 = MEMORY[0x1E69A0138];
    *(v26 + 56) = MEMORY[0x1E69E6158];
    *(v26 + 64) = v27;
    *(v26 + 32) = v31;
    *(v26 + 40) = v22;

    sub_1ABF22834();
    sub_1ABAB47C4(&unk_1EB4D3AE8, &qword_1EB4D50F0, &unk_1ABF3A620, MEMORY[0x1E699FF70]);
    sub_1ABF22594();
    (*(v32 + 8))(v7, v33);
    v28 = *(v15 + 8);
    v28(v17, v14);
    return (v28)(v20, v14);
  }
}

uint64_t TriplesQuery.ComparisonType.compare(numeric:_:)()
{
  switch(*v0)
  {
    case 1:
      v7 = sub_1ABF22D14();
      sub_1ABA8B390(v7, MEMORY[0x1E69A0050], v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
      sub_1ABA97860();
      sub_1ABA8C9D8();
      v8();
      sub_1ABAA4BF4();
      sub_1ABF22AE4();
      break;
    case 2:
      v3 = sub_1ABF22D14();
      sub_1ABA8B390(v3, MEMORY[0x1E69A0050], v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
      sub_1ABA97860();
      sub_1ABA8C9D8();
      v4();
      sub_1ABAA4BF4();
      sub_1ABF228C4();
      break;
    case 3:
      v5 = sub_1ABF22D14();
      sub_1ABA8B390(v5, MEMORY[0x1E69A0050], v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
      sub_1ABA97860();
      sub_1ABA8C9D8();
      v6();
      sub_1ABAA4BF4();
      sub_1ABF22AF4();
      break;
    default:
      v1 = sub_1ABF22D14();
      sub_1ABA8B390(v1, MEMORY[0x1E69A0050], v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
      sub_1ABA97860();
      sub_1ABA8C9D8();
      v2();
      sub_1ABAA4BF4();
      sub_1ABF228B4();
      break;
  }

  sub_1ABA84B54(&v10);
  return sub_1ABA84B54(&v15);
}

void TriplesQuery.ComparisonType.compare(text:_:)()
{
  sub_1ABA8AAB0();
  v1 = v0;
  v2 = sub_1ABF22C24();
  sub_1ABA7BB64();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BC58();
  v8 = v7 - v6;
  v9 = sub_1ABF227C4();
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BC58();
  sub_1ABF22794();
  sub_1ABA97E30();
  sub_1ABF22D14();
  sub_1ABA8C4A0();
  sub_1ABA997CC();
  sub_1ABA8C4A0();
  sub_1ABAA42E4();
  sub_1ABA8C4A0();
  sub_1ABF22784();
  v11[3] = MEMORY[0x1E69E63B0];
  v11[4] = MEMORY[0x1E69A0160];
  v11[0] = v1;
  sub_1ABF227A4();
  sub_1ABA925A4(v11, &unk_1EB4D3C40, &unk_1ABF3FCC0);
  sub_1ABF22784();
  sub_1ABF22C04();
  sub_1ABF22BE4();
  (*(v4 + 8))(v8, v2);
  sub_1ABA8B438();
}

void sub_1ABEA4C34()
{
  sub_1ABA8AAB0();
  v3 = v2;
  v52 = sub_1ABF22C24();
  sub_1ABA7BB64();
  v63 = v4;
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7C21C();
  v51 = v6;
  sub_1ABA8409C();
  v55 = sub_1ABF22414();
  sub_1ABA7BB64();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7C21C();
  v54 = v10;
  sub_1ABA8409C();
  v58 = sub_1ABF22D14();
  sub_1ABA7BB64();
  v49 = v11;
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7AC18();
  sub_1ABA887B4();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA88E50();
  v47 = v14;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA972D4();
  v57 = v16;
  sub_1ABA8409C();
  v53 = sub_1ABF22424();
  sub_1ABA7BB64();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7C21C();
  v64 = v20;
  v21 = *v0;
  v22 = *(v0 + 1);
  v23 = *(v22 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v45 = *v0;
    v46 = v1;
    v61 = v3[1];
    v62 = *v3;
    v59 = v3[3];
    v60 = v3[2];
    v79 = MEMORY[0x1E69E7CC0];
    sub_1ABADEC6C(0, v23, 0);
    v25 = (v22 + 32);
    v24 = v79;
    v48 = (v8 + 8);
    v56 = (v49 + 8);
    v50 = v8;
    v26 = v53;
    do
    {
      memcpy(v78, v25, 0x69uLL);
      switch(BYTE8(v78[6]) >> 5)
      {
        case 1:
          v70 = v78[0];
          v71 = v78[1];
          v72 = v78[2];
          v73 = v78[3];
          v74 = v78[4];
          sub_1ABEA26F8();
          break;
        case 2:
          v70 = v78[0];
          v71 = v78[1];
          v72 = v78[2];
          v73 = v78[3];
          v74 = v78[4];
          v75 = v78[5];
          v76 = *&v78[6];
          v77 = BYTE8(v78[6]) & 0x1F;
          v65 = v62;
          v66 = v61;
          v67 = v60;
          v68 = v59;
          TriplesQuery.Clause.MatchClause.sqlExpression(config:)();
          break;
        case 3:
          v65 = *&v78[0];
          LOBYTE(v66) = BYTE8(v78[0]);
          *&v70 = v62;
          *(&v70 + 1) = v61;
          *&v71 = v60;
          *(&v71 + 1) = v59;
          TriplesQuery.Clause.FullTextSearchClause.sqlExpression(config:)();
          break;
        case 4:
          v27 = BYTE1(v78[0]);
          if (v78[0])
          {
            v68 = &type metadata for TriplesQuery.ComparableColumn;
            v69 = sub_1ABEA5750();
            LOBYTE(v65) = 1;
            sub_1ABE10DCC(v78, &v70);
            sub_1ABF22D34();
            switch(v27)
            {
              case 1:
                *(&v71 + 1) = v58;
                sub_1ABAA00B4(MEMORY[0x1E69A0050]);
                sub_1ABAA2E78();
                v36();
                v68 = MEMORY[0x1E69E63B0];
                sub_1ABAA50D8(MEMORY[0x1E69A0160]);
                sub_1ABF22AE4();
                break;
              case 2:
                *(&v71 + 1) = v58;
                sub_1ABAA00B4(MEMORY[0x1E69A0050]);
                sub_1ABAA2E78();
                v34();
                v68 = MEMORY[0x1E69E63B0];
                sub_1ABAA50D8(MEMORY[0x1E69A0160]);
                sub_1ABF228C4();
                break;
              case 3:
                *(&v71 + 1) = v58;
                sub_1ABAA00B4(MEMORY[0x1E69A0050]);
                sub_1ABAA2E78();
                v35();
                v68 = MEMORY[0x1E69E63B0];
                sub_1ABAA50D8(MEMORY[0x1E69A0160]);
                sub_1ABF22AF4();
                break;
              default:
                *(&v71 + 1) = v58;
                sub_1ABAA00B4(MEMORY[0x1E69A0050]);
                sub_1ABAA2E78();
                v28();
                v68 = MEMORY[0x1E69E63B0];
                sub_1ABAA50D8(MEMORY[0x1E69A0160]);
                sub_1ABF228B4();
                break;
            }

            sub_1ABA84B54(&v65);
            sub_1ABA84B54(&v70);
            (*v56)(v46, v58);
          }

          else
          {
            v68 = &type metadata for TriplesQuery.ComparableColumn;
            v69 = sub_1ABEA5750();
            LOBYTE(v65) = 0;
            sub_1ABE10DCC(v78, &v70);
            sub_1ABF22D34();
            TriplesQuery.ComparisonType.compare(text:_:)();
            (*v56)(v47, v58);
          }

          goto LABEL_25;
        case 5:
          v29 = *(&v78[0] + 1);
          switch(LOBYTE(v78[0]))
          {
            case 1:
              *(&v71 + 1) = &type metadata for TriplesQuery.Clause.TableCodingKeys;
              *&v72 = sub_1ABE9EC74();
              v30 = 1;
              goto LABEL_19;
            case 2:
              *(&v71 + 1) = &type metadata for TriplesQuery.Clause.TableCodingKeys;
              *&v72 = sub_1ABE9EC74();
              v30 = 5;
              goto LABEL_19;
            case 3:
              *(&v71 + 1) = &type metadata for TriplesQuery.Clause.TableCodingKeys;
              *&v72 = sub_1ABE9EC74();
              v30 = 2;
              goto LABEL_19;
            case 4:
              *(&v71 + 1) = &type metadata for TriplesQuery.Clause.TableCodingKeys;
              *&v72 = sub_1ABE9EC74();
              v30 = 3;
LABEL_19:
              LOBYTE(v70) = v30;
              sub_1ABF22D34();
              break;
            default:
              sub_1ABAA1DD4();
              sub_1ABF22D24();
              break;
          }

          *&v70 = sub_1ABE9ED2C(v29, v62, v61, v60, v59, v57);
          sub_1ABF22404();
          sub_1ABAD219C(&qword_1EB4DBF78, &unk_1ABF74130);
          sub_1ABA7D918();
          sub_1ABA7FD88(&qword_1ED870670, v31, v32, v33);
          sub_1ABF23EF4();
          (*v48)(v54, v55);

          (*v56)(v57, v58);
          v8 = v50;
          v26 = v53;
          break;
        case 6:
          sub_1ABE10DCC(v78, &v70);
          sub_1ABEA5944();
          sub_1ABF22BE4();
          (*(v63 + 8))(v51, v52);
LABEL_25:
          sub_1ABE10E28(v78);
          break;
        default:
          LOBYTE(v65) = v78[0] & 1;
          v66 = *(&v78[0] + 1);
          *&v70 = v62;
          *(&v70 + 1) = v61;
          *&v71 = v60;
          *(&v71 + 1) = v59;
          sub_1ABEA4C34();
          break;
      }

      v79 = v24;
      v38 = *(v24 + 16);
      v37 = *(v24 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1ABADEC6C(v37 > 1, v38 + 1, 1);
        v24 = v79;
      }

      *(v24 + 16) = v38 + 1;
      (*(v18 + 32))(v24 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v38, v64, v26);
      v25 += 112;
      --v23;
    }

    while (v23);
    v21 = v45;
  }

  *&v78[0] = v24;
  if (v21)
  {
    sub_1ABF223F4();
  }

  else
  {
    sub_1ABF22404();
  }

  v39 = sub_1ABA8CD18();
  sub_1ABAD219C(v39, v40);
  sub_1ABA7D918();
  sub_1ABA7FD88(v41, v42, v43, v44);
  sub_1ABF23EF4();
  (*(v8 + 8))(v54, v55);

  sub_1ABA8B438();
}

void TriplesQuery.Clause.JoinClause.graphIdentifierSQLExpression(config:)()
{
  sub_1ABA7E2A8();
  v2 = v1;
  v27 = sub_1ABF22414();
  sub_1ABA7BB64();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BC58();
  v8 = v7 - v6;
  v26 = sub_1ABF22D14();
  sub_1ABA7BB64();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BC58();
  v14 = v13 - v12;
  v16 = *v2;
  v15 = v2[1];
  v17 = v2[2];
  v18 = v2[3];
  v19 = *(v0 + 8);
  switch(*v0)
  {
    case 1:
    case 2:
    case 3:
    case 4:
      sub_1ABE9EC74();
      sub_1ABF22D34();
      break;
    default:
      sub_1ABAA1DD4();
      sub_1ABF22D24();
      break;
  }

  sub_1ABE9ED2C(v19, v16, v15, v17, v18, v14);
  sub_1ABF22404();
  v20 = sub_1ABA7ABE4();
  sub_1ABAD219C(v20, v21);
  sub_1ABA7D918();
  sub_1ABAA0FE0(v22, v23, v24, v25);
  sub_1ABF23EF4();
  (*(v4 + 8))(v8, v27);

  (*(v10 + 8))(v14, v26);
  sub_1ABA7BC1C();
}

unint64_t sub_1ABEA5750()
{
  result = qword_1ED86B090;
  if (!qword_1ED86B090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B090);
  }

  return result;
}

uint64_t sub_1ABEA57F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4DBF80, qword_1ABF74140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABEA5864(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4DBF80, qword_1ABF74140);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABEA58EC(uint64_t result)
{
  *(v1 - 96) = result;
  *(v1 - 128) = 5;
  return result;
}

uint64_t sub_1ABEA58FC(uint64_t result)
{
  *(v1 - 144) = result;
  *(v1 - 176) = 4;
  return result;
}

uint64_t sub_1ABEA590C(uint64_t result)
{
  *(v1 - 144) = result;
  *(v1 - 176) = 1;
  return result;
}

uint64_t sub_1ABEA591C(uint64_t result)
{
  *(v1 - 144) = result;
  *(v1 - 176) = 5;
  return result;
}

void sub_1ABEA5944()
{

  JUMPOUT(0x1AC5A8250);
}

unsigned __int8 *static TriplesQuery.compare(column:matchType:value:)@<X0>(unsigned __int8 *result@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = *result | (*a2 << 8);
  *(a3 + 8) = a4;
  *(a3 + 88) = 0;
  *(a3 + 104) = 0x80;
  return result;
}

uint64_t static TriplesQuery.match(subjectMatchType:subjects:predicateMatchType:predicates:objectMatchType:objects:relationshipIdMatchType:relationshipIds:relationshipPredicateMatchType:relationshipPredicates:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1ABA7C8D8(a1, a2, a3);
  *(v4 + 16) = v5;
  *(v4 + 24) = v3;
  *(v4 + 32) = v7;
  *(v4 + 40) = v6;
  *(v4 + 48) = v9;
  *(v4 + 56) = v8;
  *(v4 + 64) = v11;
  *(v4 + 72) = v10;
  *(v4 + 88) = 0;
  *(v4 + 104) = 32;
}

{
  sub_1ABA7C8D8(a1, a2, a3);
  *(v3 + 16) = 0;
  *(v3 + 24) = v4;
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  *(v3 + 48) = v7;
  *(v3 + 56) = v8;
  *(v3 + 64) = v9;
  *(v3 + 72) = v10;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 80) = v11;
  *(v3 + 104) = 65;
}

uint64_t TriplesQuery.combine(query:)@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, __src, 0x69uLL);
  sub_1ABA7F968();
  memcpy(v4, v5, v6);
  sub_1ABAD219C(&qword_1EB4D10F8, &qword_1ABF33280);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1ABF34060;
  sub_1ABA7F968();
  memcpy(v8, v9, v10);
  memcpy((v7 + 144), __src, 0x69uLL);
  *a2 = 1;
  *(a2 + 8) = v7;
  *(a2 + 88) = 0;
  *(a2 + 104) = 0;
  sub_1ABE10DCC(__dst, v12);
  return sub_1ABE10DCC(v14, v12);
}

uint64_t TriplesQueryParameters.init(limit:sorting:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = *(a3 + 8);
  *a4 = result;
  *(a4 + 8) = a2 & 1;
  *(a4 + 16) = v4;
  *(a4 + 24) = v5;
  return result;
}

double sub_1ABEA5B7C@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = *v3;
  v8 = v7 | 0x100;
  v9 = v7 | 0x300;
  sub_1ABAD219C(&qword_1EB4D10F8, &qword_1ABF33280);
  v10 = swift_allocObject();
  *&result = 2;
  *(v10 + 16) = xmmword_1ABF34060;
  *(v10 + 32) = v8;
  *(v10 + 40) = a2;
  *(v10 + 120) = 0;
  *(v10 + 136) = 0x80;
  *(v10 + 144) = v9;
  *(v10 + 152) = a3;
  *(v10 + 232) = 0;
  *(v10 + 248) = 0x80;
  *a1 = 0;
  *(a1 + 8) = v10;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  return result;
}

IntelligencePlatform::TriplesQuery::FullTextSearchType_optional __swiftcall TriplesQuery.FullTextSearchType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t static TriplesQuery.fullTextSearch(objects:objectSearchType:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = a1;
  *(a3 + 8) = v3;
  *(a3 + 88) = 0;
  *(a3 + 104) = 96;
}

uint64_t TriplesQuery.clause.getter()
{
  sub_1ABA7F968();
  memcpy(v0, v1, v2);
  sub_1ABA7F968();
  memcpy(v3, v4, v5);
  return sub_1ABE10DCC(v8, v7);
}

uint64_t sub_1ABEA5CDC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x657375616C63 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABEA5D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEA5CDC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABEA5D94(uint64_t a1)
{
  v2 = sub_1ABEA5F78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEA5DD0(uint64_t a1)
{
  v2 = sub_1ABEA5F78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TriplesQuery.encode(to:)()
{
  sub_1ABA7BCA8();
  v1 = v0;
  v2 = sub_1ABAD219C(&qword_1EB4DBF98, &qword_1ABF74198);
  sub_1ABA7BB64();
  v4 = v3;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12[-v6 - 8];
  sub_1ABA7F968();
  memcpy(v8, v9, v10);
  sub_1ABA88DCC(v1, v1[3]);
  sub_1ABE10DCC(v14, v13);
  sub_1ABEA5F78();
  sub_1ABF252E4();
  memcpy(v13, v14, 0x69uLL);
  sub_1ABE9BE2C();
  sub_1ABF24F84();
  memcpy(v12, v13, 0x69uLL);
  sub_1ABE10E28(v12);
  (*(v4 + 8))(v7, v2);
  sub_1ABA7BC90();
}

unint64_t sub_1ABEA5F78()
{
  result = qword_1EB4D00C0;
  if (!qword_1EB4D00C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D00C0);
  }

  return result;
}

void TriplesQuery.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v5 = v4;
  v6 = sub_1ABAD219C(&qword_1EB4DBFA0, &qword_1ABF741A0);
  sub_1ABA7BB64();
  v8 = v7;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BCE0();
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABEA5F78();
  sub_1ABF252C4();
  if (!v0)
  {
    sub_1ABE9BF58();
    sub_1ABF24E64();
    (*(v8 + 8))(v1, v6);
    memcpy(v5, v10, 0x69uLL);
  }

  sub_1ABA84B54(v3);
  sub_1ABA7BC90();
}

void static TriplesQuery.isA(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34740;
  if (_Records_GDEntityPredicate_records)
  {
    v6 = inited;
    v7 = *(_Records_GDEntityPredicate_records + 40);
    v8 = *(_Records_GDEntityPredicate_records + 41);
    v9 = _Records_GDEntityPredicate_records[156];

    sub_1ABA91D48(v9, v7, v8, &v48);
    v10 = v49;
    v11 = v50;
    v12 = v51;
    *(v6 + 32) = v48;
    *(v6 + 48) = v10;
    *(v6 + 56) = v11;
    *(v6 + 64) = v12;
    sub_1ABB2CFA0(v6, v13, v14, v15, v16, v17, v18, v19, 1, 2, v32, *v34, *&v34[4], v36, v38, v40, v42, v44, v46, v48, *(&v48 + 1), v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
    v21 = v20;
    sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
    v22 = swift_initStackObject();
    *(v22 + 16) = v31;
    *(v22 + 32) = v4;
    *(v22 + 40) = v3;
    sub_1ABB2C7F4(v22, v23, v24, v25, v26, v27, v28, v29, v31, SBYTE8(v31), v33, v35, v37, v39, v41, v43, v45, v47, v48, *(&v48 + 1), v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = v21;
    *(a2 + 40) = 0;
    *(a2 + 48) = v30;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 65;
  }

  else
  {
    __break(1u);
  }
}

uint64_t TriplesQuery.description.getter()
{
  v2[0] = 0;
  v2[1] = 0xE000000000000000;
  sub_1ABF24AB4();
  v3 = 0;
  v4 = 0xE000000000000000;
  MEMORY[0x1AC5A9410](0xD000000000000011, 0x80000001ABF931A0);
  memcpy(v2, v0, 0x69uLL);
  sub_1ABF24C54();
  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return v3;
}

uint64_t sub_1ABEA6338(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365686374616DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4D746F4E73656F64 && a2 == 0xEC00000068637461)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABEA6404(char a1)
{
  if (a1)
  {
    return 0x4D746F4E73656F64;
  }

  else
  {
    return 0x7365686374616DLL;
  }
}

uint64_t sub_1ABEA6468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEA6338(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABEA6490(uint64_t a1)
{
  v2 = sub_1ABEA8908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEA64CC(uint64_t a1)
{
  v2 = sub_1ABEA8908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEA6508(uint64_t a1)
{
  v2 = sub_1ABEA895C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEA6544(uint64_t a1)
{
  v2 = sub_1ABEA895C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEA6580(uint64_t a1)
{
  v2 = sub_1ABEA89B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEA65BC(uint64_t a1)
{
  v2 = sub_1ABEA89B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TriplesQuery.MatchType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  a22 = v25;
  a23 = v26;
  v28 = v27;
  sub_1ABAD219C(&qword_1EB4DBFA8, &qword_1ABF741A8);
  sub_1ABA7BB64();
  v51 = v30;
  v52 = v29;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA8EDF4(v32, v49);
  sub_1ABAD219C(&qword_1EB4DBFB0, &qword_1ABF741B0);
  sub_1ABA7BB64();
  v49 = v34;
  v50 = v33;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v49 - v36;
  v38 = sub_1ABAD219C(&qword_1EB4DBFB8, &qword_1ABF741B8);
  sub_1ABA7BB64();
  v40 = v39;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v41);
  sub_1ABA8176C();
  v42 = *v23;
  sub_1ABA88DCC(v28, v28[3]);
  v43 = sub_1ABEA8908();
  sub_1ABAA36C4(&type metadata for TriplesQuery.MatchType.CodingKeys, v44, v43);
  v45 = (v40 + 8);
  if (v42)
  {
    sub_1ABA8B6EC();
    sub_1ABEA895C();
    sub_1ABA812CC(&type metadata for TriplesQuery.MatchType.DoesNotMatchCodingKeys, &a13);
    v46 = sub_1ABA90498();
  }

  else
  {
    a12 = 0;
    sub_1ABEA89B0();
    sub_1ABA812CC(&type metadata for TriplesQuery.MatchType.MatchesCodingKeys, &a12);
    v47 = v50;
    v48 = *(v49 + 8);
    v46 = v37;
  }

  v48(v46, v47);
  (*v45)(v24, v38);
  sub_1ABA7BC90();
}

void TriplesQuery.MatchType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  a22 = v25;
  a23 = v26;
  v65 = v24;
  v28 = v27;
  v63[6] = v29;
  v64 = sub_1ABAD219C(&qword_1EB4DBFC8, &qword_1ABF741C0);
  sub_1ABA7BB64();
  v63[5] = v30;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v63 - v32;
  v34 = sub_1ABAD219C(&qword_1EB4DBFD0, &qword_1ABF741C8);
  sub_1ABA7BB64();
  v63[4] = v35;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v36);
  sub_1ABA7BCE0();
  sub_1ABAD219C(&qword_1EB4DBFD8, &unk_1ABF741D0);
  sub_1ABA7BB64();
  v63[7] = v37;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v38);
  sub_1ABA7ED98();
  v39 = v28[3];
  sub_1ABA88DCC(v28, v39);
  v40 = sub_1ABEA8908();
  sub_1ABAA5B2C(&type metadata for TriplesQuery.MatchType.CodingKeys, v41, v40);
  if (!v24)
  {
    sub_1ABA84464();
    v42 = sub_1ABAD4EA4();
    if (v44 == v43 >> 1)
    {
      v64 = v42;
    }

    else
    {
      sub_1ABA9A788();
      if (v50 == v51)
      {
        __break(1u);
        return;
      }

      sub_1ABAA4310(v45, v46, v47, v48, v49);
      sub_1ABAD4E90();
      sub_1ABAA334C();
      if (!(v39 >> 1))
      {
        if (v28)
        {
          sub_1ABA8B6EC();
          sub_1ABEA895C();
          sub_1ABA7E518(&type metadata for TriplesQuery.MatchType.DoesNotMatchCodingKeys, &a13);
          sub_1ABAA4C0C();
          swift_unknownObjectRelease();
          v52 = sub_1ABA992D8();
          v54 = v34;
        }

        else
        {
          a12 = 0;
          sub_1ABEA89B0();
          sub_1ABA7E518(&type metadata for TriplesQuery.MatchType.MatchesCodingKeys, &a12);
          sub_1ABAA4C0C();
          swift_unknownObjectRelease();
          v52 = sub_1ABA992D8();
          v54 = v63[2];
        }

        v53(v52, v54);
        v61 = sub_1ABA81D80();
        v62(v61);
        *v33 = v28;
        sub_1ABA84B54(v65);
        goto LABEL_12;
      }

      v64 = v23;
    }

    v55 = sub_1ABF24B44();
    swift_allocError();
    v57 = v56;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v57 = &type metadata for TriplesQuery.MatchType;
    v58 = sub_1ABF24DA4();
    sub_1ABA835CC(v58);
    (*(*(v55 - 8) + 104))(v57, *MEMORY[0x1E69E6AF8], v55);
    swift_willThrow();
    swift_unknownObjectRelease();
    v59 = sub_1ABAA3E6C();
    v60(v59);
    v28 = v65;
  }

  sub_1ABA84B54(v28);
LABEL_12:
  sub_1ABA7BC90();
}

uint64_t TriplesQuery.FullTextSearchType.rawValue.getter()
{
  result = 0x6E656B6F54796E61;
  switch(*v0)
  {
    case 1:
      result = 0x6E656B6F546C6C61;
      break;
    case 2:
      result = 0x69666572506C6C61;
      break;
    case 3:
      result = 0x657361726870;
      break;
    case 4:
      result = 0x6850786966657270;
      break;
    case 5:
      result = 0x6E69727473627573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABEA6CF0@<X0>(uint64_t *a1@<X8>)
{
  result = TriplesQuery.FullTextSearchType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

IntelligencePlatform::TriplesQuery::ComparableColumn_optional __swiftcall TriplesQuery.ComparableColumn.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x7463656A626FLL && stringValue._object == 0xE600000000000000;
  if (v5 || (sub_1ABF25054() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x6D617473656D6974 && object == 0xE900000000000070)
  {

    v7 = 1;
  }

  else
  {
    v9 = sub_1ABF25054();

    if (v9)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t sub_1ABEA6ED4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656A626FLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABEA6FA0(char a1)
{
  if (a1)
  {
    return 0x6D617473656D6974;
  }

  else
  {
    return 0x7463656A626FLL;
  }
}

uint64_t sub_1ABEA6FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABEA702C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEA6ED4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABEA7054(uint64_t a1)
{
  v2 = sub_1ABEA8A04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEA7090(uint64_t a1)
{
  v2 = sub_1ABEA8A04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEA70CC(uint64_t a1)
{
  v2 = sub_1ABEA8AAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEA7108(uint64_t a1)
{
  v2 = sub_1ABEA8AAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEA7144(uint64_t a1)
{
  v2 = sub_1ABEA8A58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEA7180(uint64_t a1)
{
  v2 = sub_1ABEA8A58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TriplesQuery.ComparableColumn.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  a22 = v25;
  a23 = v26;
  v28 = v27;
  sub_1ABAD219C(&qword_1EB4DBFE0, &qword_1ABF741E0);
  sub_1ABA7BB64();
  v51 = v30;
  v52 = v29;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA8EDF4(v32, v49);
  sub_1ABAD219C(&qword_1EB4DBFE8, &qword_1ABF741E8);
  sub_1ABA7BB64();
  v49 = v34;
  v50 = v33;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v49 - v36;
  v38 = sub_1ABAD219C(&qword_1EB4DBFF0, &qword_1ABF741F0);
  sub_1ABA7BB64();
  v40 = v39;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v41);
  sub_1ABA8176C();
  v42 = *v23;
  sub_1ABA88DCC(v28, v28[3]);
  v43 = sub_1ABEA8A04();
  sub_1ABAA36C4(&type metadata for TriplesQuery.ComparableColumn.CodingKeys, v44, v43);
  v45 = (v40 + 8);
  if (v42)
  {
    sub_1ABA8B6EC();
    sub_1ABEA8A58();
    sub_1ABA812CC(&type metadata for TriplesQuery.ComparableColumn.TimestampCodingKeys, &a13);
    v46 = sub_1ABA90498();
  }

  else
  {
    a12 = 0;
    sub_1ABEA8AAC();
    sub_1ABA812CC(&type metadata for TriplesQuery.ComparableColumn.ObjectCodingKeys, &a12);
    v47 = v50;
    v48 = *(v49 + 8);
    v46 = v37;
  }

  v48(v46, v47);
  (*v45)(v24, v38);
  sub_1ABA7BC90();
}

uint64_t sub_1ABEA7414()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

void TriplesQuery.ComparableColumn.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  a22 = v25;
  a23 = v26;
  v65 = v24;
  v28 = v27;
  v63[6] = v29;
  v64 = sub_1ABAD219C(&qword_1EB4DC010, &qword_1ABF741F8);
  sub_1ABA7BB64();
  v63[5] = v30;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v63 - v32;
  v34 = sub_1ABAD219C(&qword_1EB4DC018, &qword_1ABF74200);
  sub_1ABA7BB64();
  v63[4] = v35;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v36);
  sub_1ABA7BCE0();
  sub_1ABAD219C(&qword_1EB4DC020, &qword_1ABF74208);
  sub_1ABA7BB64();
  v63[7] = v37;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v38);
  sub_1ABA7ED98();
  v39 = v28[3];
  sub_1ABA88DCC(v28, v39);
  v40 = sub_1ABEA8A04();
  sub_1ABAA5B2C(&type metadata for TriplesQuery.ComparableColumn.CodingKeys, v41, v40);
  if (!v24)
  {
    sub_1ABA84464();
    v42 = sub_1ABAD4EA4();
    if (v44 == v43 >> 1)
    {
      v64 = v42;
    }

    else
    {
      sub_1ABA9A788();
      if (v50 == v51)
      {
        __break(1u);
        return;
      }

      sub_1ABAA4310(v45, v46, v47, v48, v49);
      sub_1ABAD4E90();
      sub_1ABAA334C();
      if (!(v39 >> 1))
      {
        if (v28)
        {
          sub_1ABA8B6EC();
          sub_1ABEA8A58();
          sub_1ABA7E518(&type metadata for TriplesQuery.ComparableColumn.TimestampCodingKeys, &a13);
          sub_1ABAA4C0C();
          swift_unknownObjectRelease();
          v52 = sub_1ABA992D8();
          v54 = v34;
        }

        else
        {
          a12 = 0;
          sub_1ABEA8AAC();
          sub_1ABA7E518(&type metadata for TriplesQuery.ComparableColumn.ObjectCodingKeys, &a12);
          sub_1ABAA4C0C();
          swift_unknownObjectRelease();
          v52 = sub_1ABA992D8();
          v54 = v63[2];
        }

        v53(v52, v54);
        v61 = sub_1ABA81D80();
        v62(v61);
        *v33 = v28;
        sub_1ABA84B54(v65);
        goto LABEL_12;
      }

      v64 = v23;
    }

    v55 = sub_1ABF24B44();
    swift_allocError();
    v57 = v56;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v57 = &type metadata for TriplesQuery.ComparableColumn;
    v58 = sub_1ABF24DA4();
    sub_1ABA835CC(v58);
    (*(*(v55 - 8) + 104))(v57, *MEMORY[0x1E69E6AF8], v55);
    swift_willThrow();
    swift_unknownObjectRelease();
    v59 = sub_1ABAA3E6C();
    v60(v59);
    v28 = v65;
  }

  sub_1ABA84B54(v28);
LABEL_12:
  sub_1ABA7BC90();
}

uint64_t TriplesQuery.ComparableColumn.stringValue.getter()
{
  if (*v0)
  {
    return 0x6D617473656D6974;
  }

  else
  {
    return 0x7463656A626FLL;
  }
}

uint64_t sub_1ABEA7894(uint64_t a1)
{
  v2 = sub_1ABEA5750();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEA78D0(uint64_t a1)
{
  v2 = sub_1ABEA5750();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEA7920(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5472657461657267 && a2 == 0xEB000000006E6168;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001ABF95220 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6168547373656CLL && a2 == 0xE800000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E6168547373656CLL && a2 == 0xEF6C61757145724FLL)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1ABEA7A8C(char a1)
{
  result = 0x5472657461657267;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
    case 3:
      result = 0x6E6168547373656CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABEA7B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEA7920(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABEA7B48(uint64_t a1)
{
  v2 = sub_1ABEA8B00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEA7B84(uint64_t a1)
{
  v2 = sub_1ABEA8B00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEA7BC0(uint64_t a1)
{
  v2 = sub_1ABEA8C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEA7BFC(uint64_t a1)
{
  v2 = sub_1ABEA8C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEA7C38(uint64_t a1)
{
  v2 = sub_1ABEA8BFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEA7C74(uint64_t a1)
{
  v2 = sub_1ABEA8BFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEA7CB0(uint64_t a1)
{
  v2 = sub_1ABEA8BA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEA7CEC(uint64_t a1)
{
  v2 = sub_1ABEA8BA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEA7D28(uint64_t a1)
{
  v2 = sub_1ABEA8B54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEA7D64(uint64_t a1)
{
  v2 = sub_1ABEA8B54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TriplesQuery.ComparisonType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1ABA7BCA8();
  a23 = v27;
  a24 = v28;
  v30 = v29;
  sub_1ABAD219C(&qword_1EB4DC028, &qword_1ABF74210);
  sub_1ABA7BB64();
  v64 = v32;
  v65 = v31;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v33);
  sub_1ABA8EDF4(v34, v54);
  sub_1ABAD219C(&qword_1EB4DC030, &qword_1ABF74218);
  sub_1ABA7BB64();
  v61 = v36;
  v62 = v35;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA7FBE0();
  v60 = v38;
  sub_1ABAD219C(&qword_1EB4DC038, &qword_1ABF74220);
  sub_1ABA7BB64();
  v58 = v40;
  v59 = v39;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v41);
  sub_1ABA7FBE0();
  v57 = v42;
  sub_1ABAD219C(&qword_1EB4DC040, &qword_1ABF74228);
  sub_1ABA7BB64();
  v55 = v44;
  v56 = v43;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v45);
  sub_1ABA7ED98();
  v46 = sub_1ABAD219C(&qword_1EB4DC048, &qword_1ABF74230);
  sub_1ABA7BB64();
  v48 = v47;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v49);
  sub_1ABA8176C();
  v50 = *v24;
  sub_1ABA88DCC(v30, v30[3]);
  sub_1ABEA8B00();
  sub_1ABF252E4();
  switch(v50)
  {
    case 1:
      a12 = 1;
      sub_1ABEA8BFC();
      v51 = v57;
      sub_1ABA812CC(&type metadata for TriplesQuery.ComparisonType.GreaterThanOrEqualCodingKeys, &a12);
      v53 = v58;
      v52 = v59;
      goto LABEL_6;
    case 2:
      a13 = 2;
      sub_1ABEA8BA8();
      v51 = v60;
      sub_1ABA812CC(&type metadata for TriplesQuery.ComparisonType.LessThanCodingKeys, &a13);
      v53 = v61;
      v52 = v62;
      goto LABEL_6;
    case 3:
      a14 = 3;
      sub_1ABEA8B54();
      v51 = v63;
      sub_1ABA812CC(&type metadata for TriplesQuery.ComparisonType.LessThanOrEqualCodingKeys, &a14);
      v53 = v64;
      v52 = v65;
LABEL_6:
      (*(v53 + 8))(v51, v52);
      break;
    default:
      a11 = 0;
      sub_1ABEA8C50();
      sub_1ABA812CC(&type metadata for TriplesQuery.ComparisonType.GreaterThanCodingKeys, &a11);
      (*(v55 + 8))(v25, v56);
      break;
  }

  (*(v48 + 8))(v26, v46);
  sub_1ABA7BC90();
}

uint64_t TriplesQuery.ComparisonType.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

void TriplesQuery.ComparisonType.init(from:)()
{
  sub_1ABA7BCA8();
  v69 = v0;
  v4 = v3;
  v65 = v5;
  v68 = sub_1ABAD219C(&qword_1EB4DC078, &qword_1ABF74238);
  sub_1ABA7BB64();
  v64 = v6;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7FBE0();
  v67 = v8;
  sub_1ABAD219C(&qword_1EB4DC080, &qword_1ABF74240);
  sub_1ABA7BB64();
  v61 = v10;
  v62 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7FBE0();
  v63 = v12;
  sub_1ABAD219C(&qword_1EB4DC088, &qword_1ABF74248);
  sub_1ABA7BB64();
  v59 = v14;
  v60 = v13;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7BCE0();
  v16 = sub_1ABAD219C(&qword_1EB4DC090, &qword_1ABF74250);
  sub_1ABA7BB64();
  v58 = v17;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7ED98();
  v19 = sub_1ABAD219C(&qword_1EB4DC098, &qword_1ABF74258);
  sub_1ABA7BB64();
  v66 = v20;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v52 - v22;
  sub_1ABA88DCC(v4, v4[3]);
  sub_1ABEA8B00();
  v24 = v69;
  sub_1ABF252C4();
  if (v24)
  {
    goto LABEL_9;
  }

  v55 = v16;
  v56 = v1;
  v57 = v2;
  v25 = v67;
  v26 = v68;
  v69 = v4;
  v27 = v23;
  sub_1ABF24EA4();
  sub_1ABAD4EA4();
  if (v29 == v30 >> 1)
  {
LABEL_8:
    v44 = v66;
    v45 = sub_1ABF24B44();
    swift_allocError();
    v47 = v46;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v47 = &type metadata for TriplesQuery.ComparisonType;
    v48 = sub_1ABF24DA4();
    sub_1ABA835CC(v48);
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69E6AF8], v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v44 + 8))(v27, v19);
    v4 = v69;
LABEL_9:
    sub_1ABA84B54(v4);
LABEL_10:
    sub_1ABA7BC90();
    return;
  }

  v54 = 0;
  if (v29 < (v30 >> 1))
  {
    v31 = *(v28 + v29);
    sub_1ABAD4E90();
    v33 = v32;
    v35 = v34;
    swift_unknownObjectRelease();
    if (v33 == v35 >> 1)
    {
      v36 = v65;
      v37 = v66;
      v53 = v31;
      v38 = v31;
      v39 = v64;
      switch(v38)
      {
        case 1:
          sub_1ABEA8BFC();
          sub_1ABA94DDC();
          v51 = v54;
          sub_1ABF24D94();
          if (!v51)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        case 2:
          sub_1ABEA8BA8();
          sub_1ABA94DDC();
          v49 = v54;
          sub_1ABF24D94();
          if (v49)
          {
            goto LABEL_16;
          }

LABEL_17:
          swift_unknownObjectRelease();
          v41 = sub_1ABA90498();
          goto LABEL_18;
        case 3:
          sub_1ABEA8B54();
          sub_1ABA94DDC();
          v50 = v54;
          sub_1ABF24D94();
          if (v50)
          {
            goto LABEL_16;
          }

          swift_unknownObjectRelease();
          (*(v39 + 8))(v25, v26);
          goto LABEL_19;
        default:
          sub_1ABEA8C50();
          sub_1ABA94DDC();
          v40 = v54;
          sub_1ABF24D94();
          if (v40)
          {
LABEL_16:
            (*(v37 + 8))(v27, v19);
            swift_unknownObjectRelease();
            v4 = v69;
            goto LABEL_9;
          }

          swift_unknownObjectRelease();
          v41 = sub_1ABA90498();
          v43 = v55;
LABEL_18:
          v42(v41, v43);
LABEL_19:
          (*(v37 + 8))(v27, v19);
          *v36 = v53;
          sub_1ABA84B54(v69);
          break;
      }

      goto LABEL_10;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t TriplesQueryParameters.sorting.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t QueryableKnowledgeGraph.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t QueryableKnowledgeGraph.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1ABEA887C@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  result = QueryableKnowledgeGraph.init(rawValue:)(*a1).rawValue._countAndFlagsBits;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1ABEA88BC@<X0>(uint64_t *a1@<X8>)
{
  result = QueryableKnowledgeGraph.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1ABEA8908()
{
  result = qword_1EB4CF498;
  if (!qword_1EB4CF498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF498);
  }

  return result;
}

unint64_t sub_1ABEA895C()
{
  result = qword_1EB4DBFC0;
  if (!qword_1EB4DBFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBFC0);
  }

  return result;
}

unint64_t sub_1ABEA89B0()
{
  result = qword_1EB4CF480;
  if (!qword_1EB4CF480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF480);
  }

  return result;
}

unint64_t sub_1ABEA8A04()
{
  result = qword_1EB4DBFF8;
  if (!qword_1EB4DBFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DBFF8);
  }

  return result;
}

unint64_t sub_1ABEA8A58()
{
  result = qword_1EB4DC000;
  if (!qword_1EB4DC000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC000);
  }

  return result;
}

unint64_t sub_1ABEA8AAC()
{
  result = qword_1EB4DC008;
  if (!qword_1EB4DC008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC008);
  }

  return result;
}

unint64_t sub_1ABEA8B00()
{
  result = qword_1EB4DC050;
  if (!qword_1EB4DC050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC050);
  }

  return result;
}

unint64_t sub_1ABEA8B54()
{
  result = qword_1EB4DC058;
  if (!qword_1EB4DC058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC058);
  }

  return result;
}

unint64_t sub_1ABEA8BA8()
{
  result = qword_1EB4DC060;
  if (!qword_1EB4DC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC060);
  }

  return result;
}

unint64_t sub_1ABEA8BFC()
{
  result = qword_1EB4DC068;
  if (!qword_1EB4DC068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC068);
  }

  return result;
}

unint64_t sub_1ABEA8C50()
{
  result = qword_1EB4DC070;
  if (!qword_1EB4DC070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC070);
  }

  return result;
}

unint64_t sub_1ABEA8CA8()
{
  result = qword_1EB4DC0A0;
  if (!qword_1EB4DC0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC0A0);
  }

  return result;
}

unint64_t sub_1ABEA8D00()
{
  result = qword_1EB4DC0A8;
  if (!qword_1EB4DC0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC0A8);
  }

  return result;
}

unint64_t sub_1ABEA8D58()
{
  result = qword_1EB4DC0B0;
  if (!qword_1EB4DC0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC0B0);
  }

  return result;
}

unint64_t sub_1ABEA8DB0()
{
  result = qword_1ED86B098;
  if (!qword_1ED86B098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86B098);
  }

  return result;
}

unint64_t sub_1ABEA8E0C()
{
  result = qword_1EB4DC0B8;
  if (!qword_1EB4DC0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC0B8);
  }

  return result;
}

unint64_t sub_1ABEA8E64()
{
  result = qword_1EB4DC0C0;
  if (!qword_1EB4DC0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC0C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TriplesQuery.FullTextSearchType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABEA8FC0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABEA9014(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *sub_1ABEA9084(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          result = sub_1ABA8BE70(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABEA91CC(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_1ABA8BE70(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TriplesQuery.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABEA9374()
{
  result = qword_1EB4DC0C8;
  if (!qword_1EB4DC0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC0C8);
  }

  return result;
}

unint64_t sub_1ABEA93CC()
{
  result = qword_1EB4DC0D0;
  if (!qword_1EB4DC0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC0D0);
  }

  return result;
}

unint64_t sub_1ABEA9424()
{
  result = qword_1EB4DC0D8;
  if (!qword_1EB4DC0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC0D8);
  }

  return result;
}

unint64_t sub_1ABEA947C()
{
  result = qword_1EB4DC0E0;
  if (!qword_1EB4DC0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC0E0);
  }

  return result;
}

unint64_t sub_1ABEA94D4()
{
  result = qword_1EB4DC0E8;
  if (!qword_1EB4DC0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC0E8);
  }

  return result;
}

unint64_t sub_1ABEA952C()
{
  result = qword_1EB4DC0F0;
  if (!qword_1EB4DC0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC0F0);
  }

  return result;
}

unint64_t sub_1ABEA9584()
{
  result = qword_1EB4DC0F8;
  if (!qword_1EB4DC0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC0F8);
  }

  return result;
}

unint64_t sub_1ABEA95DC()
{
  result = qword_1EB4DC100;
  if (!qword_1EB4DC100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC100);
  }

  return result;
}

unint64_t sub_1ABEA9634()
{
  result = qword_1EB4DC108;
  if (!qword_1EB4DC108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC108);
  }

  return result;
}

unint64_t sub_1ABEA968C()
{
  result = qword_1EB4DC110;
  if (!qword_1EB4DC110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC110);
  }

  return result;
}

unint64_t sub_1ABEA96E4()
{
  result = qword_1EB4DC118;
  if (!qword_1EB4DC118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC118);
  }

  return result;
}

unint64_t sub_1ABEA973C()
{
  result = qword_1EB4DC120;
  if (!qword_1EB4DC120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC120);
  }

  return result;
}

unint64_t sub_1ABEA9794()
{
  result = qword_1EB4DC128;
  if (!qword_1EB4DC128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC128);
  }

  return result;
}

unint64_t sub_1ABEA97EC()
{
  result = qword_1EB4DC130;
  if (!qword_1EB4DC130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC130);
  }

  return result;
}

unint64_t sub_1ABEA9844()
{
  result = qword_1EB4DC138;
  if (!qword_1EB4DC138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC138);
  }

  return result;
}

unint64_t sub_1ABEA989C()
{
  result = qword_1EB4DC140;
  if (!qword_1EB4DC140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC140);
  }

  return result;
}

unint64_t sub_1ABEA98F4()
{
  result = qword_1EB4DC148;
  if (!qword_1EB4DC148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC148);
  }

  return result;
}

unint64_t sub_1ABEA994C()
{
  result = qword_1EB4DC150;
  if (!qword_1EB4DC150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC150);
  }

  return result;
}

unint64_t sub_1ABEA99A4()
{
  result = qword_1EB4DC158;
  if (!qword_1EB4DC158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC158);
  }

  return result;
}

unint64_t sub_1ABEA99FC()
{
  result = qword_1EB4DC160;
  if (!qword_1EB4DC160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC160);
  }

  return result;
}

unint64_t sub_1ABEA9A54()
{
  result = qword_1EB4CF470;
  if (!qword_1EB4CF470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF470);
  }

  return result;
}

unint64_t sub_1ABEA9AAC()
{
  result = qword_1EB4CF478;
  if (!qword_1EB4CF478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF478);
  }

  return result;
}

unint64_t sub_1ABEA9B04()
{
  result = qword_1EB4CF4A0;
  if (!qword_1EB4CF4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF4A0);
  }

  return result;
}

unint64_t sub_1ABEA9B5C()
{
  result = qword_1EB4CF4A8;
  if (!qword_1EB4CF4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF4A8);
  }

  return result;
}

unint64_t sub_1ABEA9BB4()
{
  result = qword_1EB4CF488;
  if (!qword_1EB4CF488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF488);
  }

  return result;
}

unint64_t sub_1ABEA9C0C()
{
  result = qword_1EB4CF490;
  if (!qword_1EB4CF490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF490);
  }

  return result;
}

unint64_t sub_1ABEA9C64()
{
  result = qword_1EB4D00B0;
  if (!qword_1EB4D00B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D00B0);
  }

  return result;
}

unint64_t sub_1ABEA9CBC()
{
  result = qword_1EB4D00B8;
  if (!qword_1EB4D00B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D00B8);
  }

  return result;
}

unint64_t sub_1ABEA9D10()
{
  result = qword_1EB4CF610;
  if (!qword_1EB4CF610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF610);
  }

  return result;
}

uint64_t TriplesSort.sqlOrdering.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v0[8];
    v14 = MEMORY[0x1E69E7CC0];
    sub_1ABADECC4(0, v2, 0);
    v3 = v14;
    v5 = v1 + 32;
    v6 = MEMORY[0x1E699FDA8];
    do
    {
      sub_1ABA93E64(v5, v10);
      sub_1ABA93E20(v10, v10[3]);
      v12 = sub_1ABF22174();
      v13 = v6;
      sub_1ABA93DC0(&v11);
      if (v4)
      {
        sub_1ABF22974();
      }

      else
      {
        sub_1ABF22964();
      }

      sub_1ABA84B54(v10);
      v14 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1ABADECC4(v7 > 1, v8 + 1, 1);
        v3 = v14;
      }

      *(v3 + 16) = v8 + 1;
      sub_1ABA946C0(&v11, v3 + 40 * v8 + 32);
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t TriplesSort.init(columns:direction:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

uint64_t TriplesSort.SortDirection.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t TriplesSort.description.getter()
{
  v1 = *v0;
  sub_1ABF24AB4();

  v2 = sub_1ABF23C74();
  MEMORY[0x1AC5A9410](v2);

  MEMORY[0x1AC5A9410](3826464, 0xE300000000000000);
  v3 = sub_1ABAD219C(&qword_1EB4DC168, &qword_1ABF753C0);
  v4 = MEMORY[0x1AC5A9750](v1, v3);
  MEMORY[0x1AC5A9410](v4);

  MEMORY[0x1AC5A9410](62, 0xE100000000000000);
  return 0x73656C706972543CLL;
}

unint64_t sub_1ABEAA070()
{
  result = qword_1EB4DC170;
  if (!qword_1EB4DC170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC170);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TriplesSort.SortDirection(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1ABEAA1C0@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v4 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v12 = a2[8];
  v13 = a2[9];
  v14 = a2[10];
  v15 = a2[11];
  v16 = *(a2 + 104);
  v59 = a2[12];
  v37 = v12;
  v38 = v14;
  v35 = v6;
  v36 = v10;
  v34 = v4;
  if ((v16 & 0x10) != 0)
  {
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD000000000000028, 0x80000001ABF88250);
    v45 = v5;
    v46 = v34;
    v47 = v7;
    v48 = v35;
    v49 = v8;
    v50 = v9;
    v51 = v36;
    v52 = v11;
    v53 = v37;
    v54 = v13;
    v55 = v38;
    v56 = v15;
    v57 = v59;
    v58 = v16;
    sub_1ABF24C54();
LABEL_6:
    sub_1ABB50F70();
    swift_allocError();
    *v24 = 0;
    *(v24 + 8) = 0xE000000000000000;
    *(v24 + 16) = 1;
    return swift_willThrow();
  }

  else
  {
    v27 = v7;
    v28 = v8;
    v29 = v16;
    v30 = v11;
    v31 = v15;
    v17 = *a1;
    v18 = *(a1 + 1);
    sub_1ABAD219C(&unk_1EB4DB2A0, &unk_1ABF6DE90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1ABF34740;
    *(inited + 56) = &type metadata for ExtendedTripleColumn;
    *(inited + 64) = sub_1ABC3D560();
    *(inited + 32) = 0;
    switch(v17)
    {
      case 0:
      case 6:
        v20 = v3[3];
        v21 = v3[4];
        sub_1ABA93E20(v3, v20);
        __src[0] = v5;
        __src[1] = v34;
        __src[2] = v27;
        __src[3] = v35;
        __src[4] = v28;
        __src[5] = v9;
        __src[6] = v36;
        __src[7] = v30;
        __src[8] = v37;
        __src[9] = v13;
        __src[10] = v38;
        __src[11] = v31;
        __src[12] = v59;
        LOBYTE(__src[13]) = v29;
        v40 = v18 & ~(v18 >> 63);
        v41 = v18 >> 63;
        v42 = inited;
        v43 = 1;
        v22 = *(v21 + 40);
        v45 = v5;
        v46 = v34;
        v47 = v27;
        v48 = v35;
        v49 = v28;
        v50 = v9;
        v51 = v36;
        v52 = v30;
        v53 = v37;
        v54 = v13;
        v55 = v38;
        v56 = v31;
        v57 = v59;
        v58 = v29;
        sub_1ABB42048(&v45, __dst);
        v22(__src, &v40, v20, v21);
        sub_1ABEAADE0(v40, v41, v42);
        memcpy(__dst, __src, 0x69uLL);
        if (v33)
        {
          result = sub_1ABE3C2D0(__dst);
        }

        else
        {
          sub_1ABE3C2D0(__dst);
          swift_getAssociatedTypeWitness();
          sub_1ABAD219C(&qword_1EB4DC178, &unk_1ABF75500);
          v25 = sub_1ABF24C44();

          v26 = sub_1ABEAA5A8(v25);

          a3[1] = 0;
          a3[2] = 0;
          *a3 = v26;
        }

        break;
      case 2:
      case 5:

        result = sub_1ABEAA5A8(MEMORY[0x1E69E7CC0]);
        a3[1] = 0;
        a3[2] = 0;
        *a3 = result;
        break;
      default:

        sub_1ABF24AB4();
        MEMORY[0x1AC5A9410](0xD000000000000017, 0x80000001ABF95240);
        sub_1ABD7EAA4(v17);
        goto LABEL_6;
    }
  }

  return result;
}

uint64_t sub_1ABEAA5A8(uint64_t a1)
{
  v2 = sub_1ABF239C4();
  v3 = *(a1 + 16);
  if (!v3)
  {
    return sub_1ABB45484(v2);
  }

  v4 = a1 + 32;
  while (1)
  {
    v206 = v4;
    sub_1ABA93E64(v4, v235);
    sub_1ABA8FCF8();
    v5 = sub_1ABA7D1BC();
    v6(v5);
    v8 = __src[0];
    v7 = __src[1];

    v9 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v9 && (sub_1ABA8FCF8(), v10 = sub_1ABA7D1BC(), v11(v10), __src[0]))
    {
      sub_1ABA8FCF8();
      v12 = sub_1ABA7D1BC();
      v13(v12);
      v195 = EntityIdentifier.stringValue.getter();
      v15 = v14;
      sub_1ABA8FCF8();
      v16 = sub_1ABA7D1BC();
      v17(v16);
      v19 = __src[0];
      v18 = __src[1];

      sub_1ABA8FCF8();
      v20 = sub_1ABA7D1BC();
      v21(v20);
      __dst[0] = 3828082;
      __dst[1] = 0xE300000000000000;
      v214 = v225[0];
      v22 = sub_1ABF24FF4();
      MEMORY[0x1AC5A9410](v22);

      v23 = __dst[0];
      v24 = __dst[1];
      __dst[0] = v195;
      __dst[1] = v15;

      sub_1ABA812E8();
      sub_1ABA7FAC8(v25, v26, v27, v28, v29, v30, v31, v32, v176, v182, v188, v195, v206, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225[0], v225[1], v225[2], v225[3], v225[4], v225[5], v225[6], v225[7], v225[8], v225[9], v225[10], v226, v227, v228, v229, v230, v231, v232[0], v232[1], v232[2], v232[3], v232[4], v232[5], v232[6], v232[7], v232[8], v232[9], v232[10], __dst[0], __dst[1]);
      MEMORY[0x1AC5A9410](v19, v18);

      sub_1ABA7FAC8(v33, v34, v35, v36, v37, v38, v39, v40, v177, v183, v189, v196, v207, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225[0], v225[1], v225[2], v225[3], v225[4], v225[5], v225[6], v225[7], v225[8], v225[9], v225[10], v226, v227, v228, v229, v230, v231, v232[0], v232[1], v232[2], v232[3], v232[4], v232[5], v232[6], v232[7], v232[8], v232[9], v232[10], __dst[0], __dst[1]);
      sub_1ABA812E8();

      sub_1ABA7FAC8(v41, v42, v43, v44, v45, v46, v47, v48, v178, v184, v190, v197, v208, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225[0], v225[1], v225[2], v225[3], v225[4], v225[5], v225[6], v225[7], v225[8], v225[9], v225[10], v226, v227, v228, v229, v230, v231, v232[0], v232[1], v232[2], v232[3], v232[4], v232[5], v232[6], v232[7], v232[8], v232[9], v232[10], __dst[0], __dst[1]);
      MEMORY[0x1AC5A9410](v23, v24);

      v50 = __dst[0];
      v49 = __dst[1];
      __src[0] = __dst[0];
      __src[1] = __dst[1];
      __src[2] = 0;
      __src[3] = v198;
      __src[4] = v15;
      __src[5] = 0;
      __src[6] = v19;
      __src[7] = v18;
      __src[8] = v23;
      __src[9] = v24;
      __src[10] = MEMORY[0x1E69E7CC0];
      if (v2[2])
      {

        v51 = sub_1ABA7C5D0();
        sub_1ABA94FC8(v51, v52, v53, v54, v55, v56, v57, v58, v179, v185, v191, v198, v209, v214, v215, v216, v217, v218);
        v60 = v59;

        if (v60)
        {
          v199 = v3;
          v61 = v236;
          v62 = v237;
          sub_1ABA93E20(v235, v236);
          v63 = *(v62 + 24);
          v64 = *(v63 + 32);

          v64(&v227, v61, v63);
          v65 = v227;
          v66 = v228;

          sub_1ABA93E20(v235, v236);
          v67 = sub_1ABA7D1BC();
          v192 = v68(v67);
          v70 = v69;
          swift_isUniquelyReferenced_nonNull_native();
          v226 = v2;
          v71 = sub_1ABA7C5D0();
          v79 = sub_1ABA94FC8(v71, v72, v73, v74, v75, v76, v77, v78, v179, v185, v192, v199, v209, v214, v215, v216, v217, v218);
          if (__OFADD__(v2[2], (v80 & 1) == 0))
          {
            goto LABEL_39;
          }

          v81 = v79;
          v82 = v80;
          v182 = v65;
          sub_1ABAD219C(&qword_1EB4DADD8, &unk_1ABF6AA50);
          if (sub_1ABF24C64())
          {
            v83 = sub_1ABA7C5D0();
            v91 = sub_1ABA94FC8(v83, v84, v85, v86, v87, v88, v89, v90, v176, v65, v188, v200, v210, v214, v215, v216, v217, v218);
            v3 = v201;
            if ((v82 & 1) != (v92 & 1))
            {
              goto LABEL_41;
            }

            v81 = v91;
          }

          else
          {
            v3 = v200;
          }

          if ((v82 & 1) == 0)
          {
            goto LABEL_40;
          }

          memcpy(__dst, (v226[7] + 88 * v81), sizeof(__dst));
          if (!__dst[1])
          {
            goto LABEL_40;
          }

          memcpy(v232, __src, sizeof(v232));
          sub_1ABB24250(v232);
          v170._countAndFlagsBits = v182;
          v171._countAndFlagsBits = v188;
          v170._object = v66;
          v171._object = v70;
          KnosisInternalFact.addQualifier(qpid:qoid:)(v170, v171);

          v172 = __dst[1];
          if (__dst[1])
          {
            v173 = __dst[0];
            v225[0] = __dst[0];
            v225[1] = __dst[1];
            memcpy(&v225[2], &__dst[2], 0x48uLL);
            sub_1ABB242A4(v225, &v214);

            v2 = v226;
            v174 = (v226[7] + 88 * v81);
            *v174 = v173;
            v174[1] = v172;
            memcpy(v174 + 2, &__dst[2], 0x48uLL);
          }

          else
          {

            v2 = v226;
            sub_1ABAFEEA0(v226[6] + 16 * v81);
            sub_1ABF24C84();
          }

          v169 = v210;
          memcpy(v225, __dst, sizeof(v225));
          sub_1ABEAADF4(v225);
          goto LABEL_27;
        }
      }

      sub_1ABA8FCF8();
      v132 = sub_1ABA7D1BC();
      v133(v132);
      v134 = __dst[0];
      v135 = __dst[1];

      v137 = v236;
      v136 = v237;
      sub_1ABA93E20(v235, v236);
      v138._countAndFlagsBits = (*(*(v136 + 24) + 40))(v137);
      v140 = v139;
      v141._countAndFlagsBits = v134;
      v141._object = v135;
      v138._object = v140;
      KnosisInternalFact.addQualifier(qpid:qoid:)(v141, v138);
    }

    else
    {
      v202 = v3;
      sub_1ABA8FCF8();
      v93 = sub_1ABA7D1BC();
      v94(v93);
      v95 = (v232[0] & 0x80000000000000) != 0 ? 3826797 : 3828069;
      __src[0] = v95;
      __src[1] = 0xE300000000000000;
      __dst[0] = v232[0];
      v96 = sub_1ABF24FF4();
      MEMORY[0x1AC5A9410](v96);

      v97 = __src[0];
      v98 = __src[1];
      sub_1ABA8FCF8();
      v99 = sub_1ABA7D1BC();
      v100(v99);
      v101 = __src[0];
      v102 = __src[1];

      sub_1ABA93E20(v235, v236);
      v103 = sub_1ABA7D1BC();
      v105 = v104(v103);
      v107 = v106;
      __dst[0] = v97;
      __dst[1] = v98;

      sub_1ABA812E8();
      sub_1ABA7FAC8(v108, v109, v110, v111, v112, v113, v114, v115, v176, v182, v188, v202, v206, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225[0], v225[1], v225[2], v225[3], v225[4], v225[5], v225[6], v225[7], v225[8], v225[9], v225[10], v226, v227, v228, v229, v230, v231, v232[0], v232[1], v232[2], v232[3], v232[4], v232[5], v232[6], v232[7], v232[8], v232[9], v232[10], __dst[0], __dst[1]);
      MEMORY[0x1AC5A9410](v101, v102);

      sub_1ABA7FAC8(v116, v117, v118, v119, v120, v121, v122, v123, v180, v186, v193, v203, v211, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225[0], v225[1], v225[2], v225[3], v225[4], v225[5], v225[6], v225[7], v225[8], v225[9], v225[10], v226, v227, v228, v229, v230, v231, v232[0], v232[1], v232[2], v232[3], v232[4], v232[5], v232[6], v232[7], v232[8], v232[9], v232[10], __dst[0], __dst[1]);
      sub_1ABA812E8();

      sub_1ABA7FAC8(v124, v125, v126, v127, v128, v129, v130, v131, v181, v187, v194, v204, v212, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225[0], v225[1], v225[2], v225[3], v225[4], v225[5], v225[6], v225[7], v225[8], v225[9], v225[10], v226, v227, v228, v229, v230, v231, v232[0], v232[1], v232[2], v232[3], v232[4], v232[5], v232[6], v232[7], v232[8], v232[9], v232[10], __dst[0], __dst[1]);
      MEMORY[0x1AC5A9410](v105, v107);

      v50 = __dst[0];
      v49 = __dst[1];
      __src[0] = __dst[0];
      __src[1] = __dst[1];
      __src[2] = 0;
      __src[3] = v97;
      __src[4] = v98;
      __src[5] = 0;
      __src[6] = v101;
      __src[7] = v102;
      __src[8] = v105;
      __src[9] = v107;
      __src[10] = MEMORY[0x1E69E7CC0];
      v3 = v198;
    }

    memcpy(__dst, __src, sizeof(__dst));

    swift_isUniquelyReferenced_nonNull_native();
    v225[0] = v2;
    v142 = sub_1ABA7C5D0();
    v150 = sub_1ABA94FC8(v142, v143, v144, v145, v146, v147, v148, v149, v179, v185, v191, v198, v209, v214, v215, v216, v217, v218);
    if (__OFADD__(v2[2], (v151 & 1) == 0))
    {
      break;
    }

    v152 = v150;
    v153 = v151;
    sub_1ABAD219C(&qword_1EB4DADD8, &unk_1ABF6AA50);
    if (sub_1ABF24C64())
    {
      v154 = sub_1ABA7C5D0();
      v162 = sub_1ABA94FC8(v154, v155, v156, v157, v158, v159, v160, v161, v176, v182, v188, v205, v213, v214, v215, v216, v217, v218);
      if ((v153 & 1) != (v163 & 1))
      {
        goto LABEL_41;
      }

      v152 = v162;
    }

    if (v153)
    {
      v2 = v225[0];
      v164 = (*(v225[0] + 56) + 88 * v152);
      memcpy(v232, v164, sizeof(v232));
      memcpy(v164, __dst, 0x58uLL);
      sub_1ABB24250(v232);
    }

    else
    {
      v2 = v225[0];
      *(v225[0] + 8 * (v152 >> 6) + 64) |= 1 << v152;
      v165 = (v2[6] + 16 * v152);
      *v165 = v50;
      v165[1] = v49;
      memcpy((v2[7] + 88 * v152), __dst, 0x58uLL);
      v166 = v2[2];
      v167 = __OFADD__(v166, 1);
      v168 = v166 + 1;
      if (v167)
      {
        goto LABEL_38;
      }

      v2[2] = v168;
    }

    v169 = v213;
LABEL_27:
    sub_1ABA84B54(v235);
    v4 = v169 + 40;
    if (!--v3)
    {
      return sub_1ABB45484(v2);
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABEAADE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1ABEAADF4(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4DADE0, &unk_1ABF6AA60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t KTSQueryParams.init(startTime:endTime:inclusionType:distanceMinInMeters:distanceMaxInMeters:elevationGainMinInMeters:elevationGainMaxInMeters:durationMinInSeconds:durationMaxInSeconds:roadType:roadName:originId:destinationId:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, char *a19, uint64_t a20, uint64_t a21, uint64_t *a22, uint64_t *a23)
{
  v23 = *a5;
  v24 = *a19;
  v25 = *a22;
  v26 = *(a22 + 8);
  v27 = *a23;
  v28 = *(a23 + 8);
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 25) = v23;
  *(a9 + 32) = a6;
  result = a7 & 1;
  *(a9 + 40) = a7 & 1;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10 & 1;
  *(a9 + 64) = a11;
  *(a9 + 72) = a12 & 1;
  *(a9 + 80) = a13;
  *(a9 + 88) = a14 & 1;
  *(a9 + 96) = a15;
  *(a9 + 104) = a16 & 1;
  *(a9 + 112) = a17;
  *(a9 + 120) = a18 & 1;
  *(a9 + 121) = v24;
  *(a9 + 128) = a20;
  *(a9 + 136) = a21;
  *(a9 + 144) = v25;
  *(a9 + 152) = v26;
  *(a9 + 160) = v27;
  *(a9 + 168) = v28;
  return result;
}

uint64_t static KTSQueryParams.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v16 = *(a1 + 96);
  v85 = *(a1 + 104);
  v17 = *(a1 + 112);
  v18 = *(a1 + 120);
  v84 = *(a1 + 121);
  v20 = *(a1 + 128);
  v19 = *(a1 + 136);
  v21 = *(a1 + 144);
  v22 = *(a1 + 152);
  v81 = *(a1 + 160);
  v23 = *(a1 + 168);
  v24 = *(a2 + 8);
  v25 = *(a2 + 16);
  v26 = *(a2 + 24);
  v27 = *(a2 + 25);
  v28 = *(a2 + 32);
  v29 = *(a2 + 40);
  v30 = *(a2 + 48);
  v31 = *(a2 + 56);
  v32 = *(a2 + 64);
  v33 = *(a2 + 72);
  v34 = *(a2 + 80);
  v35 = *(a2 + 88);
  v36 = *(a2 + 96);
  v37 = *(a2 + 104);
  v38 = *(a2 + 112);
  v39 = *(a2 + 120);
  v83 = *(a2 + 121);
  v40 = *(a2 + 136);
  v82 = *(a2 + 128);
  v41 = *(a2 + 144);
  v42 = *(a2 + 152);
  v43 = *(a2 + 160);
  v44 = *(a2 + 168);
  if (v4)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v45 = v24;
    }

    else
    {
      v45 = 1;
    }

    if (v45)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v26)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == v25)
    {
      v46 = v26;
    }

    else
    {
      v46 = 1;
    }

    if (v46)
    {
      return 0;
    }
  }

  if (v7 == 8)
  {
    if (v27 != 8)
    {
      return 0;
    }
  }

  else
  {
    if (v27 == 8)
    {
      return 0;
    }

    v80 = v23;
    v79 = v21;
    v77 = *(a2 + 168);
    v78 = v22;
    v76 = v19;
    v75 = *(a2 + 160);
    v74 = *(a2 + 152);
    v72 = *(a2 + 136);
    v73 = *(a2 + 144);
    v71 = v17;
    v70 = v18;
    v68 = v14;
    v69 = v16;
    v67 = *(a2 + 112);
    v47 = sub_1ABAD07A8(v7, v27);
    v38 = v67;
    v14 = v68;
    v16 = v69;
    v18 = v70;
    v17 = v71;
    v40 = v72;
    v41 = v73;
    v42 = v74;
    v43 = v75;
    v19 = v76;
    v44 = v77;
    v22 = v78;
    v21 = v79;
    v23 = v80;
    if ((v47 & 1) == 0)
    {
      return 0;
    }
  }

  if (v9)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (v8 == v28)
    {
      v48 = v29;
    }

    else
    {
      v48 = 1;
    }

    if (v48)
    {
      return 0;
    }
  }

  if (v11)
  {
    if (!v31)
    {
      return 0;
    }
  }

  else
  {
    if (v10 == v30)
    {
      v49 = v31;
    }

    else
    {
      v49 = 1;
    }

    if (v49)
    {
      return 0;
    }
  }

  if (v13)
  {
    if (!v33)
    {
      return 0;
    }
  }

  else
  {
    if (v12 == v32)
    {
      v50 = v33;
    }

    else
    {
      v50 = 1;
    }

    if (v50)
    {
      return 0;
    }
  }

  if (v15)
  {
    if (!v35)
    {
      return 0;
    }
  }

  else
  {
    if (v14 == v34)
    {
      v51 = v35;
    }

    else
    {
      v51 = 1;
    }

    if (v51)
    {
      return 0;
    }
  }

  if (v85)
  {
    if (!v37)
    {
      return 0;
    }
  }

  else
  {
    if (v16 == v36)
    {
      v52 = v37;
    }

    else
    {
      v52 = 1;
    }

    if (v52)
    {
      return 0;
    }
  }

  if (v18)
  {
    if (!v39)
    {
      return 0;
    }
  }

  else
  {
    if (v17 == v38)
    {
      v53 = v39;
    }

    else
    {
      v53 = 1;
    }

    if (v53)
    {
      return 0;
    }
  }

  if (v84 == 5)
  {
    if (v83 != 5)
    {
      return 0;
    }
  }

  else if (v83 == 5 || v84 != v83)
  {
    return 0;
  }

  if (v19)
  {
    if (!v40)
    {
      return 0;
    }

    if (v20 != v82 || v19 != v40)
    {
      v56 = v44;
      v57 = v23;
      v58 = v21;
      v59 = v22;
      v60 = v43;
      v61 = v42;
      v62 = v41;
      v63 = sub_1ABF25054();
      v41 = v62;
      v42 = v61;
      v43 = v60;
      v44 = v56;
      v22 = v59;
      v21 = v58;
      v23 = v57;
      if ((v63 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v40)
  {
    return 0;
  }

  if (v22)
  {
    if (!v42)
    {
      return 0;
    }
  }

  else
  {
    if (v21 == v41)
    {
      v64 = v42;
    }

    else
    {
      v64 = 1;
    }

    if (v64)
    {
      return 0;
    }
  }

  if (v23)
  {
    if ((v44 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v81 == v43)
    {
      v66 = v44;
    }

    else
    {
      v66 = 1;
    }

    if (v66)
    {
      return 0;
    }
  }

  return 1;
}

IntelligencePlatform::InclusionType_optional __swiftcall InclusionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t InclusionType.rawValue.getter()
{
  result = 0xD000000000000011;
  switch(*v0)
  {
    case 1:
    case 2:
    case 5:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
    case 6:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABEAB3A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D6954646E65 && a2 == 0xE700000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F6973756C636E69 && a2 == 0xED0000657079546ELL;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001ABF95260 == a2;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000013 && 0x80000001ABF95280 == a2;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000018 && 0x80000001ABF952A0 == a2;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000018 && 0x80000001ABF952C0 == a2;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000014 && 0x80000001ABF952E0 == a2;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000014 && 0x80000001ABF95300 == a2;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6570795464616F72 && a2 == 0xE800000000000000;
                    if (v14 || (sub_1ABF25054() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x656D614E64616F72 && a2 == 0xE800000000000000;
                      if (v15 || (sub_1ABF25054() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x64496E696769726FLL && a2 == 0xE800000000000000;
                        if (v16 || (sub_1ABF25054() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x74616E6974736564 && a2 == 0xED000064496E6F69)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1ABF25054();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1ABEAB79C(char a1)
{
  result = 0x6D69547472617473;
  switch(a1)
  {
    case 1:
      result = 0x656D6954646E65;
      break;
    case 2:
      result = 0x6F6973756C636E69;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
    case 6:
      result = 0xD000000000000018;
      break;
    case 7:
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x6570795464616F72;
      break;
    case 10:
      result = 0x656D614E64616F72;
      break;
    case 11:
      result = 0x64496E696769726FLL;
      break;
    case 12:
      result = 0x74616E6974736564;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1ABEAB9EC@<X0>(unint64_t *a1@<X8>)
{
  result = InclusionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABEABA34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEAB3A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABEABA5C(uint64_t a1)
{
  v2 = sub_1ABEABED4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEABA98(uint64_t a1)
{
  v2 = sub_1ABEABED4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void KTSQueryParams.encode(to:)()
{
  sub_1ABA7BCA8();
  v46 = v1;
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4DC180, &qword_1ABF75510);
  sub_1ABA7BB64();
  v6 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v45 = *(v0 + 16);
  v49 = *(v0 + 24);
  v44 = *(v0 + 25);
  v43 = *(v0 + 32);
  v42 = *(v0 + 40);
  v41 = *(v0 + 48);
  v10 = *(v0 + 56);
  v38 = *(v0 + 64);
  v39 = *(v0 + 72);
  v40 = v10;
  v36 = *(v0 + 80);
  v37 = *(v0 + 88);
  v34 = *(v0 + 96);
  v35 = *(v0 + 104);
  v32 = *(v0 + 112);
  v33 = *(v0 + 120);
  v31 = *(v0 + 121);
  v11 = *(v0 + 136);
  v29 = *(v0 + 128);
  v30 = v11;
  v27 = *(v0 + 144);
  v28 = *(v0 + 152);
  v25 = *(v0 + 160);
  v26 = *(v0 + 168);
  sub_1ABA93E20(v3, v3[3]);
  sub_1ABEABED4();
  sub_1ABF252E4();
  LOBYTE(v47) = 0;
  v12 = v46;
  sub_1ABF24EF4();
  if (!v12)
  {
    v13 = v44;
    v14 = v42;
    v15 = v43;
    v16 = v40;
    v17 = v41;
    sub_1ABAA50F0(1);
    sub_1ABAA3E80(v45, v49, v18);
    LOBYTE(v47) = v13;
    sub_1ABEABF28();
    sub_1ABAA2E8C();
    sub_1ABF24F14();
    v46 = v6;
    sub_1ABAA50F0(3);
    sub_1ABAA3E80(v15, v14, v19);
    sub_1ABAA50F0(4);
    sub_1ABAA3E80(v17, v16, v20);
    sub_1ABAA50F0(5);
    sub_1ABAA3E80(v38, v39, v21);
    sub_1ABAA50F0(6);
    sub_1ABAA3E80(v36, v37, v22);
    sub_1ABAA50F0(7);
    sub_1ABAA3E80(v34, v35, v23);
    sub_1ABAA50F0(8);
    sub_1ABAA3E80(v32, v33, v24);
    LOBYTE(v47) = v31;
    sub_1ABDB53E0();
    sub_1ABAA2E8C();
    sub_1ABF24F14();
    sub_1ABAA50F0(10);
    sub_1ABF24ED4();
    v47 = v27;
    v48 = v28;
    sub_1ABAE8BC8();
    sub_1ABAA2E8C();
    sub_1ABA81934();
    sub_1ABF24F14();
    v47 = v25;
    v48 = v26;
    sub_1ABAA2E8C();
    sub_1ABA81934();
    sub_1ABF24F14();
  }

  (*(v6 + 8))(v9, v4);
  sub_1ABA7BC90();
}

unint64_t sub_1ABEABED4()
{
  result = qword_1EB4DC188;
  if (!qword_1EB4DC188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC188);
  }

  return result;
}

unint64_t sub_1ABEABF28()
{
  result = qword_1EB4DC190;
  if (!qword_1EB4DC190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC190);
  }

  return result;
}

uint64_t KTSQueryParams.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2[2];
  v5 = *(v2 + 25);
  v30 = v2[4];
  v35 = *(v2 + 24);
  v36 = *(v2 + 40);
  v37 = *(v2 + 56);
  v31 = v2[6];
  v32 = v2[8];
  v33 = v2[10];
  v38 = *(v2 + 72);
  v39 = *(v2 + 88);
  v34 = v2[12];
  v40 = *(v2 + 104);
  v6 = v2[14];
  v7 = *(v2 + 120);
  v8 = *(v2 + 121);
  v9 = v2[17];
  v10 = *(v2 + 152);
  v28 = v2[18];
  v29 = v2[20];
  v11 = *(v2 + 168);
  if (*(v2 + 8) == 1)
  {
    sub_1ABF25254();
  }

  else
  {
    v27 = *(v2 + 120);
    v12 = v2[14];
    v13 = *(v2 + 121);
    v14 = v2[17];
    v15 = *(v2 + 152);
    v16 = v2[2];
    v17 = *v2;
    sub_1ABF25254();
    if ((v17 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v4 = v16;
    v10 = v15;
    v9 = v14;
    v8 = v13;
    v6 = v12;
    v7 = v27;
    MEMORY[0x1AC5AA8D0](v18);
  }

  if (v35)
  {
    sub_1ABF25254();
  }

  else
  {
    sub_1ABF25254();
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v19 = v4;
    }

    else
    {
      v19 = 0;
    }

    MEMORY[0x1AC5AA8D0](v19);
  }

  sub_1ABF25254();
  if (v5 != 8)
  {
    sub_1ABBB677C(a1, v5);
  }

  sub_1ABF25254();
  if (!v36)
  {
    v20 = sub_1ABAA4324(v30);
    MEMORY[0x1AC5AA8D0](v20);
  }

  sub_1ABF25254();
  if (!v37)
  {
    v21 = sub_1ABAA4324(v31);
    MEMORY[0x1AC5AA8D0](v21);
  }

  sub_1ABF25254();
  if (!v38)
  {
    v22 = sub_1ABAA4324(v32);
    MEMORY[0x1AC5AA8D0](v22);
  }

  sub_1ABF25254();
  if (!v39)
  {
    v23 = sub_1ABAA4324(v33);
    MEMORY[0x1AC5AA8D0](v23);
  }

  if (!v40)
  {
    sub_1ABF25254();
    v25 = sub_1ABAA4324(v34);
    MEMORY[0x1AC5AA8D0](v25);
    if (!v7)
    {
      goto LABEL_25;
    }

LABEL_30:
    sub_1ABF25254();
    goto LABEL_31;
  }

  sub_1ABF25254();
  if (v7)
  {
    goto LABEL_30;
  }

LABEL_25:
  sub_1ABF25254();
  if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v24 = v6;
  }

  else
  {
    v24 = 0;
  }

  MEMORY[0x1AC5AA8D0](v24);
LABEL_31:
  if (v8 == 5)
  {
    sub_1ABF25254();
    if (v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    sub_1ABF25254();
    sub_1ABF25264();
    if (v9)
    {
LABEL_33:
      sub_1ABF25254();
      sub_1ABF23D34();
      if (v10)
      {
        goto LABEL_34;
      }

LABEL_38:
      sub_1ABF25254();
      MEMORY[0x1AC5AA8D0](v28);
      if (!v11)
      {
        goto LABEL_35;
      }

      return sub_1ABF25254();
    }
  }

  sub_1ABF25254();
  if (!v10)
  {
    goto LABEL_38;
  }

LABEL_34:
  sub_1ABF25254();
  if (!v11)
  {
LABEL_35:
    sub_1ABF25254();
    return MEMORY[0x1AC5AA8D0](v29);
  }

  return sub_1ABF25254();
}

uint64_t KTSQueryParams.hashValue.getter()
{
  sub_1ABA7AB5C();
  KTSQueryParams.hash(into:)(v1);
  return sub_1ABF25294();
}

void KTSQueryParams.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  sub_1ABAD219C(&qword_1EB4DC198, &qword_1ABF75518);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA8176C();
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABEABED4();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    v38 = v4;
    sub_1ABA81934();
    v6 = sub_1ABF24DD4();
    v98 = v7 & 1;
    v37 = sub_1ABA7E134(1);
    v96 = v8 & 1;
    sub_1ABEAC920();
    sub_1ABA81934();
    sub_1ABF24DF4();
    v36 = sub_1ABA7E134(3);
    v93 = v9 & 1;
    v35 = sub_1ABA7E134(4);
    v91 = v10 & 1;
    v34 = sub_1ABA7E134(5);
    v89 = v11 & 1;
    v33 = sub_1ABA7E134(6);
    v87 = v12 & 1;
    v32 = sub_1ABA7E134(7);
    v85 = v13 & 1;
    v31 = sub_1ABA7E134(8);
    v83 = v14 & 1;
    sub_1ABDB615C();
    sub_1ABA81934();
    sub_1ABF24DF4();
    LOBYTE(v40) = 10;
    sub_1ABA81934();
    v30 = sub_1ABF24DB4();
    v16 = v15;
    LOBYTE(v39[0]) = 11;
    sub_1ABAE8B74();
    sub_1ABA81934();
    sub_1ABF24DF4();
    v29 = v40;
    v80 = v41;
    v75 = 12;
    sub_1ABA81934();
    sub_1ABF24DF4();
    v17 = sub_1ABAA5B50();
    v18(v17);
    v99 = v76;
    v78 = v77;
    v39[0] = v6;
    v19 = v98;
    LOBYTE(v39[1]) = v98;
    v39[2] = v37;
    v20 = v96;
    LOWORD(v39[3]) = v96;
    v39[4] = v36;
    v21 = v93;
    LOBYTE(v39[5]) = v93;
    v39[6] = v35;
    v22 = v91;
    LOBYTE(v39[7]) = v91;
    v39[8] = v34;
    v23 = v89;
    LOBYTE(v39[9]) = v89;
    v39[10] = v33;
    v24 = v87;
    LOBYTE(v39[11]) = v87;
    v39[12] = v32;
    v25 = v85;
    LOBYTE(v39[13]) = v85;
    v39[14] = v31;
    v26 = v83;
    LOWORD(v39[15]) = v83;
    v39[16] = v30;
    v39[17] = v16;
    v39[18] = v29;
    v27 = v80;
    LOBYTE(v39[19]) = v80;
    v39[20] = v76;
    v28 = v77;
    LOBYTE(v39[21]) = v77;
    memcpy(v38, v39, 0xA9uLL);
    sub_1ABDD3560(v39, &v40);
    sub_1ABA84B54(v2);
    v40 = v6;
    v41 = v19;
    *v42 = *v97;
    *&v42[3] = *&v97[3];
    v43 = v37;
    v44 = v20;
    v45 = 0;
    v46 = v94;
    v47 = v95;
    v48 = v36;
    v49 = v21;
    *&v50[3] = *&v92[3];
    *v50 = *v92;
    v51 = v35;
    v52 = v22;
    *&v53[3] = *&v90[3];
    *v53 = *v90;
    v54 = v34;
    v55 = v23;
    *v56 = *v88;
    *&v56[3] = *&v88[3];
    v57 = v33;
    v58 = v24;
    *v59 = *v86;
    *&v59[3] = *&v86[3];
    v60 = v32;
    v61 = v25;
    *v62 = *v84;
    *&v62[3] = *&v84[3];
    v63 = v31;
    v64 = v26;
    v65 = 0;
    v66 = v81;
    v67 = v82;
    v68 = v30;
    v69 = v16;
    v70 = v29;
    v71 = v27;
    *&v72[3] = *&v79[3];
    *v72 = *v79;
    v73 = v99;
    v74 = v28;
    sub_1ABDD35BC(&v40);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABEAC8E4(uint64_t a1)
{
  sub_1ABF25234();
  KTSQueryParams.hash(into:)(v2);
  return sub_1ABF25294();
}

unint64_t sub_1ABEAC920()
{
  result = qword_1EB4DC1A0;
  if (!qword_1EB4DC1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC1A0);
  }

  return result;
}

BOOL static KTSQueryConstraint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v15[0] = *a1;
  v15[1] = v3;
  v15[2] = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  switch(v5 >> 13)
  {
    case 1u:
      if ((v9 & 0xE000) != 0x2000)
      {
        goto LABEL_24;
      }

      goto LABEL_13;
    case 2u:
      if ((v9 & 0xE000) != 0x4000)
      {
        goto LABEL_24;
      }

      goto LABEL_13;
    case 3u:
      if ((v9 & 0xE000) != 0x6000)
      {
        goto LABEL_24;
      }

LABEL_13:
      if (v3)
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else if ((v7 & 1) != 0 || *&v2 != v6)
      {
        goto LABEL_25;
      }

      if (v5)
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_29;
      }

      if ((v9 & 1) == 0 && *&v4 == v8)
      {
LABEL_29:
        v12 = (v5 >> 8) & 0x1F;
        v13 = (v9 >> 8) & 0x1F;
        goto LABEL_38;
      }

LABEL_25:
      sub_1ABEACB6C(v15);
      return 0;
    case 4u:
      if ((v9 & 0xE000) != 0x8000)
      {
        goto LABEL_24;
      }

      sub_1ABEACB6C(v15);
      return LOBYTE(v6) == v2;
    case 5u:
      if ((v9 & 0xE000) == 0xA000)
      {
        v11 = sub_1ABB4F410();
        sub_1ABA829C0();
        sub_1ABDDDB84(v2, v3, v4, v5);
        sub_1ABEACB6C(v15);
        return v11 & 1;
      }

LABEL_24:
      sub_1ABA829C0();
      goto LABEL_25;
    default:
      if (v9 >= 0x2000)
      {
        goto LABEL_24;
      }

      if (v3)
      {
        if ((v7 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else if ((v7 & 1) != 0 || *&v2 != v6)
      {
        goto LABEL_25;
      }

      if (v5)
      {
        if ((v9 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else if ((v9 & 1) != 0 || *&v4 != v8)
      {
        goto LABEL_25;
      }

      v13 = v9 >> 8;
      v12 = v5 >> 8;
LABEL_38:
      v14 = sub_1ABAD07A8(v12, v13);
      sub_1ABEACB6C(v15);
      return v14 & 1;
  }
}

uint64_t sub_1ABEACB6C(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4DC1A8, &qword_1ABF75520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABEACBD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6152656D6974 && a2 == 0xE900000000000065;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65636E6174736964 && a2 == 0xE800000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F69746176656C65 && a2 == 0xED00006E6961476ELL;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6570795464616F72 && a2 == 0xE800000000000000;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x746573627573 && a2 == 0xE600000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1ABF25054();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1ABEACDD0(char a1)
{
  result = 0x676E6152656D6974;
  switch(a1)
  {
    case 1:
      result = 0x65636E6174736964;
      break;
    case 2:
      result = 0x6F69746176656C65;
      break;
    case 3:
      result = 0x6E6F697461727564;
      break;
    case 4:
      result = 0x6570795464616F72;
      break;
    case 5:
      result = 0x746573627573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABEACE90(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001ABF95260 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001ABF95280 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F6973756C636E69 && a2 == 0xED0000657079546ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABEACFB8(char a1)
{
  if (!a1)
  {
    return 0xD000000000000013;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0x6F6973756C636E69;
}

uint64_t sub_1ABEAD024(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x80000001ABF952E0 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001ABF95300 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F6973756C636E69 && a2 == 0xED0000657079546ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABEAD14C(char a1)
{
  if (!a1)
  {
    return 0xD000000000000014;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x6F6973756C636E69;
}

uint64_t sub_1ABEAD1B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000018 && 0x80000001ABF952A0 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x80000001ABF952C0 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F6973756C636E69 && a2 == 0xED0000657079546ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABEAD2E0(char a1)
{
  if (!a1)
  {
    return 0xD000000000000018;
  }

  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return 0x6F6973756C636E69;
}

uint64_t sub_1ABEAD34C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6570795464616F72 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABEAD3DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D6954646E65 && a2 == 0xE700000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F6973756C636E69 && a2 == 0xED0000657079546ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABEAD4FC(char a1)
{
  if (!a1)
  {
    return 0x6D69547472617473;
  }

  if (a1 == 1)
  {
    return 0x656D6954646E65;
  }

  return 0x6F6973756C636E69;
}

uint64_t sub_1ABEAD56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEACBD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABEAD594(uint64_t a1)
{
  v2 = sub_1ABEAE178();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEAD5D0(uint64_t a1)
{
  v2 = sub_1ABEAE178();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEAD614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEACE90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABEAD63C(uint64_t a1)
{
  v2 = sub_1ABEAE31C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEAD678(uint64_t a1)
{
  v2 = sub_1ABEAE31C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEAD6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEAD024(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABEAD6E4(uint64_t a1)
{
  v2 = sub_1ABEAE274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEAD720(uint64_t a1)
{
  v2 = sub_1ABEAE274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEAD764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEAD1B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABEAD78C(uint64_t a1)
{
  v2 = sub_1ABEAE2C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEAD7C8(uint64_t a1)
{
  v2 = sub_1ABEAE2C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEAD808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEAD34C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABEAD834(uint64_t a1)
{
  v2 = sub_1ABEAE220();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEAD870(uint64_t a1)
{
  v2 = sub_1ABEAE220();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEAD8AC(uint64_t a1)
{
  v2 = sub_1ABEAE1CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEAD8E8(uint64_t a1)
{
  v2 = sub_1ABEAE1CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABEAD924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABEAD978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEAD3DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABEAD9A0(uint64_t a1)
{
  v2 = sub_1ABEAE370();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABEAD9DC(uint64_t a1)
{
  v2 = sub_1ABEAE370();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void KTSQueryConstraint.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v23;
  a20 = v24;
  v85 = v21;
  v26 = v25;
  sub_1ABAD219C(&qword_1EB4DC1B0, &qword_1ABF75528);
  sub_1ABA7BB64();
  v80 = v28;
  v81 = v27;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7FBE0();
  v78 = v30;
  v75 = sub_1ABAD219C(&qword_1EB4DC1B8, &qword_1ABF75530);
  sub_1ABA7BB64();
  v73 = v31;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA7FBE0();
  v71 = v33;
  v79 = sub_1ABAD219C(&qword_1EB4DC1C0, &qword_1ABF75538);
  sub_1ABA7BB64();
  v77 = v34;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v35);
  sub_1ABA7FBE0();
  v76 = v36;
  v74 = sub_1ABAD219C(&qword_1EB4DC1C8, &qword_1ABF75540);
  sub_1ABA7BB64();
  v72 = v37;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v38);
  sub_1ABA7FBE0();
  v70 = v39;
  sub_1ABAD219C(&qword_1EB4DC1D0, &qword_1ABF75548);
  sub_1ABA7BB64();
  v68 = v41;
  v69 = v40;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v42);
  sub_1ABA8176C();
  v43 = sub_1ABAD219C(&qword_1EB4DC1D8, &qword_1ABF75550);
  sub_1ABA7BB64();
  v67 = v44;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v67 - v46;
  v48 = sub_1ABAD219C(&qword_1EB4DC1E0, &unk_1ABF75558);
  sub_1ABA7BB64();
  v86 = v49;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v50);
  sub_1ABA7FBE0();
  v51 = *v20;
  v83 = *(v20 + 8);
  v84 = v51;
  v82 = *(v20 + 16);
  v52 = *(v20 + 24);
  sub_1ABA93E20(v26, v26[3]);
  sub_1ABEAE178();
  v53 = BYTE1(v52);
  sub_1ABF252E4();
  switch(v52 >> 13)
  {
    case 1u:
      LOBYTE(a10) = 1;
      sub_1ABEAE31C();
      v54 = v48;
      sub_1ABA8E550(&type metadata for KTSQueryConstraint.DistanceCodingKeys, &a10);
      sub_1ABA7EC84();
      v64 = v69;
      v65 = v85;
      sub_1ABF24EF4();
      if (!v65)
      {
        LOBYTE(a10) = 1;
        sub_1ABA81934();
        sub_1ABF24EF4();
        LOBYTE(a10) = v53 & 0x1F;
        sub_1ABAA55E8();
        sub_1ABEABF28();
        sub_1ABA81934();
        sub_1ABF24F84();
      }

      v66 = v68;
      goto LABEL_21;
    case 2u:
      LOBYTE(a10) = 2;
      sub_1ABEAE2C8();
      v56 = v70;
      sub_1ABA9A7A4(&type metadata for KTSQueryConstraint.ElevationGainCodingKeys, &a10);
      sub_1ABA7EC84();
      v57 = v74;
      sub_1ABAA336C();
      v59 = v85;
      sub_1ABF24EF4();
      if (!v59)
      {
        sub_1ABA904E0();
        sub_1ABAA336C();
        sub_1ABF24EF4();
        LOBYTE(a10) = v53 & 0x1F;
        sub_1ABAA55E8();
        sub_1ABEABF28();
        sub_1ABAA3AEC();
      }

      v58 = v72;
      goto LABEL_15;
    case 3u:
      LOBYTE(a10) = 3;
      sub_1ABEAE274();
      v56 = v76;
      sub_1ABA9A7A4(&type metadata for KTSQueryConstraint.DurationCodingKeys, &a10);
      sub_1ABA7EC84();
      v57 = v79;
      sub_1ABAA336C();
      v60 = v85;
      sub_1ABF24EF4();
      if (!v60)
      {
        sub_1ABA904E0();
        sub_1ABAA336C();
        sub_1ABF24EF4();
        LOBYTE(a10) = v53 & 0x1F;
        sub_1ABAA55E8();
        sub_1ABEABF28();
        sub_1ABAA3AEC();
      }

      v58 = v77;
      goto LABEL_15;
    case 4u:
      LOBYTE(a10) = 4;
      sub_1ABEAE220();
      v56 = v71;
      sub_1ABA9A7A4(&type metadata for KTSQueryConstraint.RoadTypeCodingKeys, &a10);
      LOBYTE(a10) = v84;
      sub_1ABDB53E0();
      v57 = v75;
      sub_1ABF24F84();
      v58 = v73;
LABEL_15:
      (*(v58 + 8))(v56, v57);
      v61 = sub_1ABA7C908();
      v63 = v43;
      goto LABEL_23;
    case 5u:
      LOBYTE(a10) = 5;
      sub_1ABEAE1CC();
      v22 = v78;
      v54 = v48;
      sub_1ABA8E550(&type metadata for KTSQueryConstraint.SubsetCodingKeys, &a10);
      a10 = v84;
      sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
      sub_1ABEAF3B0(&qword_1EB4D41A0, sub_1ABAE8BC8, MEMORY[0x1E69E6300]);
      v64 = v81;
      sub_1ABF24F84();
      v66 = v80;
LABEL_21:
      (*(v66 + 8))(v22, v64);
      goto LABEL_22;
    default:
      LOBYTE(a10) = 0;
      sub_1ABEAE370();
      v54 = v48;
      sub_1ABA8E550(&type metadata for KTSQueryConstraint.TimeRangeCodingKeys, &a10);
      sub_1ABA7EC84();
      v55 = v85;
      sub_1ABF24EF4();
      if (!v55)
      {
        sub_1ABA904E0();
        sub_1ABF24EF4();
        LOBYTE(a10) = BYTE1(v52);
        sub_1ABAA55E8();
        sub_1ABEABF28();
        sub_1ABF24F84();
      }

      (*(v67 + 8))(v47, v43);
LABEL_22:
      v61 = sub_1ABA7C908();
      v63 = v54;
LABEL_23:
      v62(v61, v63);
      sub_1ABA7BC90();
      return;
  }
}

unint64_t sub_1ABEAE178()
{
  result = qword_1EB4DC1E8;
  if (!qword_1EB4DC1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC1E8);
  }

  return result;
}

unint64_t sub_1ABEAE1CC()
{
  result = qword_1EB4DC1F0;
  if (!qword_1EB4DC1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC1F0);
  }

  return result;
}

unint64_t sub_1ABEAE220()
{
  result = qword_1EB4DC1F8;
  if (!qword_1EB4DC1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC1F8);
  }

  return result;
}

unint64_t sub_1ABEAE274()
{
  result = qword_1EB4DC200;
  if (!qword_1EB4DC200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC200);
  }

  return result;
}

unint64_t sub_1ABEAE2C8()
{
  result = qword_1EB4DC208;
  if (!qword_1EB4DC208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC208);
  }

  return result;
}

unint64_t sub_1ABEAE31C()
{
  result = qword_1EB4DC210;
  if (!qword_1EB4DC210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC210);
  }

  return result;
}

unint64_t sub_1ABEAE370()
{
  result = qword_1EB4DC218;
  if (!qword_1EB4DC218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC218);
  }

  return result;
}

void KTSQueryConstraint.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 12);
  switch(v5 >> 13)
  {
    case 1u:
      v8 = (v5 >> 8) & 0x1F;
      v9 = 1;
      goto LABEL_12;
    case 2u:
      v8 = (v5 >> 8) & 0x1F;
      v9 = 2;
      goto LABEL_12;
    case 3u:
      v8 = (v5 >> 8) & 0x1F;
      v9 = 3;
LABEL_12:
      MEMORY[0x1AC5AA8A0](v9);
      if (v3)
      {
        sub_1ABF25254();
        if ((v5 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1ABF25254();
        if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v11 = v2;
        }

        else
        {
          v11 = 0;
        }

        MEMORY[0x1AC5AA8D0](v11);
        if ((v5 & 1) == 0)
        {
LABEL_14:
          sub_1ABF25254();
          if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v10 = v4;
          }

          else
          {
            v10 = 0;
          }

          MEMORY[0x1AC5AA8D0](v10);
LABEL_23:
          v12 = a1;
          LOBYTE(v13) = v8;
          goto LABEL_33;
        }
      }

      sub_1ABF25254();
      goto LABEL_23;
    case 4u:
      MEMORY[0x1AC5AA8A0](4);
      sub_1ABF25264();
      return;
    case 5u:
      MEMORY[0x1AC5AA8A0](5);

      sub_1ABB4EC5C();
      return;
    default:
      MEMORY[0x1AC5AA8A0](0);
      if (v3)
      {
        sub_1ABF25254();
        if ((v5 & 1) == 0)
        {
          goto LABEL_4;
        }

LABEL_31:
        sub_1ABF25254();
        goto LABEL_32;
      }

      sub_1ABF25254();
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v14 = v2;
      }

      else
      {
        v14 = 0;
      }

      MEMORY[0x1AC5AA8D0](v14);
      if (v5)
      {
        goto LABEL_31;
      }

LABEL_4:
      sub_1ABF25254();
      if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v7 = v4;
      }

      else
      {
        v7 = 0;
      }

      MEMORY[0x1AC5AA8D0](v7);
LABEL_32:
      v13 = v5 >> 8;
      v12 = a1;
LABEL_33:

      sub_1ABBB677C(v12, v13);
      return;
  }
}

uint64_t KTSQueryConstraint.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 12);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_1ABA7AB5C();
  KTSQueryConstraint.hash(into:)(v4);
  return sub_1ABF25294();
}

void KTSQueryConstraint.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v22;
  a20 = v23;
  v121 = v20;
  v25 = v24;
  v117 = v26;
  v108 = sub_1ABAD219C(&qword_1EB4DC220, &qword_1ABF75568);
  sub_1ABA7BB64();
  v114 = v27;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA7FBE0();
  v116 = v29;
  v106 = sub_1ABAD219C(&qword_1EB4DC228, &qword_1ABF75570);
  sub_1ABA7BB64();
  v111 = v30;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA7FBE0();
  v115 = v32;
  v105[5] = sub_1ABAD219C(&qword_1EB4DC230, &qword_1ABF75578);
  sub_1ABA7BB64();
  v113 = v33;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v34);
  sub_1ABA7FBE0();
  v119 = v35;
  v107 = sub_1ABAD219C(&qword_1EB4DC238, &qword_1ABF75580);
  sub_1ABA7BB64();
  v112 = v36;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA7FBE0();
  v118 = v38;
  v105[4] = sub_1ABAD219C(&qword_1EB4DC240, &qword_1ABF75588);
  sub_1ABA7BB64();
  v110 = v39;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v40);
  v42 = v105 - v41;
  v43 = sub_1ABAD219C(&qword_1EB4DC248, &qword_1ABF75590);
  sub_1ABA7BB64();
  v109 = v44;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v45);
  sub_1ABA8176C();
  v46 = sub_1ABAD219C(&qword_1EB4DC250, &unk_1ABF75598);
  sub_1ABA7BB64();
  v48 = v47;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v49);
  v51 = v105 - v50;
  v52 = v25[3];
  v120 = v25;
  sub_1ABA93E20(v25, v52);
  sub_1ABEAE178();
  v53 = v121;
  sub_1ABF252C4();
  if (v53)
  {
    goto LABEL_8;
  }

  v105[2] = v21;
  v105[1] = v43;
  v105[3] = v42;
  v121 = v48;
  sub_1ABF24EA4();
  sub_1ABAD4EA4();
  if (v55 == v56 >> 1)
  {
LABEL_7:
    v64 = sub_1ABF24B44();
    swift_allocError();
    v66 = v65;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v66 = &type metadata for KTSQueryConstraint;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v64 - 8) + 104))(v66, *MEMORY[0x1E69E6AF8], v64);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1ABA836AC();
    v67(v51, v46);
LABEL_8:
    sub_1ABA84B54(v120);
LABEL_9:
    sub_1ABA7BC90();
    return;
  }

  v105[0] = 0;
  if (v55 < (v56 >> 1))
  {
    v57 = *(v54 + v55);
    sub_1ABAD4E90();
    v59 = v58;
    v61 = v60;
    swift_unknownObjectRelease();
    if (v59 == v61 >> 1)
    {
      v62 = v117;
      switch(v57)
      {
        case 1:
          LOBYTE(a10) = 1;
          sub_1ABEAE31C();
          sub_1ABA8EE08(&type metadata for KTSQueryConstraint.DistanceCodingKeys, &a10);
          sub_1ABAA2AE0();
          sub_1ABA9752C();
          v74 = sub_1ABF24DD4();
          sub_1ABA84488();
          sub_1ABA9752C();
          v82 = sub_1ABF24DD4();
          LODWORD(v119) = v84;
          sub_1ABAA55E8();
          sub_1ABEAC920();
          sub_1ABA959C0();
          sub_1ABF24E64();
          sub_1ABA90BD0();
          swift_unknownObjectRelease();
          v100 = sub_1ABA81304();
          v101(v100);
          v102 = sub_1ABA7FAE4();
          v103(v102, v46);
          sub_1ABA97E60();
          v99 = v104 | 0x2000;
          goto LABEL_16;
        case 2:
          LOBYTE(a10) = 2;
          sub_1ABEAE2C8();
          sub_1ABA8EE08(&type metadata for KTSQueryConstraint.ElevationGainCodingKeys, &a10);
          sub_1ABAA2AE0();
          v69 = v107;
          sub_1ABA9752C();
          v74 = sub_1ABF24DD4();
          sub_1ABA84488();
          v82 = sub_1ABF24DD4();
          LODWORD(v119) = v80;
          sub_1ABAA55E8();
          sub_1ABEAC920();
          sub_1ABA959C0();
          sub_1ABF24E64();
          sub_1ABA90BD0();
          swift_unknownObjectRelease();
          v85 = sub_1ABA8B474();
          v86(v85, v69);
          v87 = sub_1ABA7FAE4();
          v88(v87, v46);
          sub_1ABA97E60();
          v99 = v89 | 0x4000;
          goto LABEL_16;
        case 3:
          LOBYTE(a10) = 3;
          sub_1ABEAE274();
          sub_1ABA8EE08(&type metadata for KTSQueryConstraint.DurationCodingKeys, &a10);
          sub_1ABAA2AE0();
          v74 = sub_1ABF24DD4();
          sub_1ABA84488();
          v82 = sub_1ABF24DD4();
          LODWORD(v118) = v81;
          sub_1ABAA55E8();
          sub_1ABEAC920();
          sub_1ABA959C0();
          sub_1ABF24E64();
          sub_1ABA90BD0();
          swift_unknownObjectRelease();
          v90 = sub_1ABA81304();
          v91(v90);
          v92 = sub_1ABA7C908();
          v93(v92, v46);
          sub_1ABA97E60();
          v99 = v94 | 0x6000;
          goto LABEL_16;
        case 4:
          LOBYTE(a10) = 4;
          sub_1ABEAE220();
          sub_1ABA8EE08(&type metadata for KTSQueryConstraint.RoadTypeCodingKeys, &a10);
          sub_1ABDB615C();
          v68 = v106;
          sub_1ABA9752C();
          sub_1ABF24E64();
          v82 = 0;
          v105[0] = 0;
          swift_unknownObjectRelease();
          v70 = sub_1ABA992D8();
          v71(v70, v68);
          sub_1ABA836AC();
          v72 = sub_1ABAA2760();
          v73(v72);
          v98 = 0;
          v74 = a10;
          v99 = 0x8000;
          goto LABEL_15;
        case 5:
          LOBYTE(a10) = 5;
          sub_1ABEAE1CC();
          sub_1ABA8EE08(&type metadata for KTSQueryConstraint.SubsetCodingKeys, &a10);
          v82 = 0;
          sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
          sub_1ABEAF3B0(&qword_1EB4D41F0, sub_1ABAE8B74, MEMORY[0x1E69E6330]);
          sub_1ABF24E64();
          v105[0] = 0;
          swift_unknownObjectRelease();
          v75 = sub_1ABA7E5B0();
          v76(v75);
          v77 = sub_1ABAA2760();
          v78(v77);
          v98 = 0;
          v74 = a10;
          v99 = -24576;
LABEL_15:
          v79 = v120;
          break;
        default:
          LOBYTE(a10) = 0;
          sub_1ABEAE370();
          sub_1ABA8EE08(&type metadata for KTSQueryConstraint.TimeRangeCodingKeys, &a10);
          v63 = v51;
          sub_1ABAA2AE0();
          v74 = sub_1ABF24DD4();
          v119 = v46;
          sub_1ABA84488();
          v82 = sub_1ABF24DD4();
          LODWORD(v118) = v83;
          sub_1ABAA55E8();
          sub_1ABEAC920();
          sub_1ABA959C0();
          sub_1ABF24E64();
          sub_1ABA90BD0();
          swift_unknownObjectRelease();
          v95 = sub_1ABAA4758();
          v96(v95);
          sub_1ABA836AC();
          v97(v63, v119);
          sub_1ABA97E60();
LABEL_16:
          v79 = v120;
          v62 = v117;
          break;
      }

      *v62 = v74;
      *(v62 + 8) = v98;
      *(v62 + 16) = v82;
      *(v62 + 24) = v99;
      sub_1ABA84B54(v79);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1ABEAF358(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 12);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_1ABF25234();
  KTSQueryConstraint.hash(into:)(v5);
  return sub_1ABF25294();
}

uint64_t sub_1ABEAF3B0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D1720, &qword_1ABF338B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1ABEAF42C()
{
  result = qword_1EB4DC258;
  if (!qword_1EB4DC258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC258);
  }

  return result;
}

unint64_t sub_1ABEAF484()
{
  result = qword_1EB4DC260;
  if (!qword_1EB4DC260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC260);
  }

  return result;
}

unint64_t sub_1ABEAF4DC()
{
  result = qword_1EB4DC268;
  if (!qword_1EB4DC268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC268);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InclusionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABEAF610(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 169))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 136);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABEAF664(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 168) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 169) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 169) = 0;
    }

    if (a2)
    {
      *(result + 136) = a2;
    }
  }

  return result;
}

uint64_t sub_1ABEAF6FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 26))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1ABEAF744(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
      *(result + 24) = 0;
      return result;
    }

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABEAF7A4(uint64_t result, __int16 a2)
{
  v2 = *(result + 24) & 0x701 | (a2 << 13);
  *(result + 8) &= 1uLL;
  *(result + 24) = v2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for KTSQueryConstraint.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABEAF8E0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABEAF9CC(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for KTSQueryParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABEAFB58()
{
  result = qword_1EB4DC270;
  if (!qword_1EB4DC270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC270);
  }

  return result;
}

unint64_t sub_1ABEAFBB0()
{
  result = qword_1EB4DC278;
  if (!qword_1EB4DC278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC278);
  }

  return result;
}

unint64_t sub_1ABEAFC08()
{
  result = qword_1EB4DC280;
  if (!qword_1EB4DC280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC280);
  }

  return result;
}

unint64_t sub_1ABEAFC60()
{
  result = qword_1EB4DC288;
  if (!qword_1EB4DC288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC288);
  }

  return result;
}

unint64_t sub_1ABEAFCB8()
{
  result = qword_1EB4DC290;
  if (!qword_1EB4DC290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC290);
  }

  return result;
}

unint64_t sub_1ABEAFD10()
{
  result = qword_1EB4DC298;
  if (!qword_1EB4DC298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC298);
  }

  return result;
}

unint64_t sub_1ABEAFD68()
{
  result = qword_1EB4DC2A0;
  if (!qword_1EB4DC2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC2A0);
  }

  return result;
}

unint64_t sub_1ABEAFDC0()
{
  result = qword_1EB4DC2A8;
  if (!qword_1EB4DC2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC2A8);
  }

  return result;
}

unint64_t sub_1ABEAFE18()
{
  result = qword_1EB4DC2B0;
  if (!qword_1EB4DC2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC2B0);
  }

  return result;
}

unint64_t sub_1ABEAFE70()
{
  result = qword_1EB4DC2B8;
  if (!qword_1EB4DC2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC2B8);
  }

  return result;
}

unint64_t sub_1ABEAFEC8()
{
  result = qword_1EB4DC2C0;
  if (!qword_1EB4DC2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC2C0);
  }

  return result;
}

unint64_t sub_1ABEAFF20()
{
  result = qword_1EB4DC2C8;
  if (!qword_1EB4DC2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC2C8);
  }

  return result;
}

unint64_t sub_1ABEAFF78()
{
  result = qword_1EB4DC2D0;
  if (!qword_1EB4DC2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC2D0);
  }

  return result;
}

unint64_t sub_1ABEAFFD0()
{
  result = qword_1EB4DC2D8;
  if (!qword_1EB4DC2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC2D8);
  }

  return result;
}

unint64_t sub_1ABEB0028()
{
  result = qword_1EB4DC2E0;
  if (!qword_1EB4DC2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC2E0);
  }

  return result;
}

unint64_t sub_1ABEB0080()
{
  result = qword_1EB4DC2E8;
  if (!qword_1EB4DC2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC2E8);
  }

  return result;
}

unint64_t sub_1ABEB00D8()
{
  result = qword_1EB4DC2F0;
  if (!qword_1EB4DC2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC2F0);
  }

  return result;
}

unint64_t sub_1ABEB0130()
{
  result = qword_1EB4DC2F8;
  if (!qword_1EB4DC2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC2F8);
  }

  return result;
}

unint64_t sub_1ABEB0188()
{
  result = qword_1EB4DC300;
  if (!qword_1EB4DC300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC300);
  }

  return result;
}

unint64_t sub_1ABEB01E0()
{
  result = qword_1EB4DC308;
  if (!qword_1EB4DC308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC308);
  }

  return result;
}

unint64_t sub_1ABEB0238()
{
  result = qword_1EB4DC310;
  if (!qword_1EB4DC310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC310);
  }

  return result;
}

unint64_t sub_1ABEB0290()
{
  result = qword_1EB4DC318;
  if (!qword_1EB4DC318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC318);
  }

  return result;
}

unint64_t sub_1ABEB02E8()
{
  result = qword_1EB4DC320;
  if (!qword_1EB4DC320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC320);
  }

  return result;
}

unint64_t sub_1ABEB0340()
{
  result = qword_1EB4DC328;
  if (!qword_1EB4DC328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DC328);
  }

  return result;
}

unint64_t sub_1ABEB0394()
{
  result = qword_1EB4DC330[0];
  if (!qword_1EB4DC330[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4DC330);
  }

  return result;
}

uint64_t TypedEntityIdentifier.init(untyped:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v8 = *a1;
  EntityClass.init(intValue:)(HIBYTE(*a1), &v34);
  v9 = *(&v34 + 1);
  if (*(&v34 + 1))
  {
    v10 = v34;
    v11 = v35;
    HIDWORD(v42) = v36;
    static GraphObjectBase.entityClass.getter(a2, *(a3 + 8));
    v37 = v34;
    v38 = v35;
    v12 = v36;
    LOBYTE(v39) = v36;
    v13 = v35 == v11 && *(&v11 + 1) == *(&v35 + 1);
    if (v13 || (v14 = v34, v30 = v35, v32 = *(&v34 + 1), v28 = *(&v35 + 1), (sub_1ABF25054() & 1) != 0) || (*&v34 = v10, *(&v34 + 1) = v9, v35 = v11, LOBYTE(v36) = BYTE4(v42), EntityClass.ancestorClassesSet.getter(), sub_1ABAA6788(&v37, v15, v16, v17, v18, v19, v20, v21, v26, v14, v28, v30, v32, v34, *(&v34 + 1), v35, *(&v35 + 1), v36, v37, *(&v37 + 1), v38, *(&v38 + 1), v39, v40, v41, v42, v43, v44, v45, v46), LODWORD(v42) = v22, , (v42 & 1) != 0))
    {
      sub_1ABAA8FA8(v10, v9, v11, *(&v11 + 1));
      result = sub_1ABA88934(&v37);
      *a4 = v8;
      return result;
    }

    sub_1ABAEFC04();
    swift_allocError();
    *v25 = v27;
    *(v25 + 8) = v33;
    *(v25 + 16) = v31;
    *(v25 + 24) = v29;
    *(v25 + 32) = v12;
    *(v25 + 40) = v10;
    *(v25 + 48) = v9;
    *(v25 + 56) = v11;
    *(v25 + 72) = BYTE4(v42);
  }

  else
  {
    sub_1ABAEFC04();
    swift_allocError();
    *v24 = xmmword_1ABF34750;
    v24[1] = 0u;
    v24[2] = 0u;
    v24[3] = 0u;
    *(v24 + 57) = 0u;
  }

  return swift_willThrow();
}

uint64_t sub_1ABEB0604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
  type metadata accessor for TypedEntityIdentifier(0, a3, a4, v6);
  sub_1ABD5B86C();
  return sub_1ABF23F24();
}

void TypedEntityIdentifier<>.init(objectiveCGraphObjectEntityIdentifier:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = [a1 intValue];
  sub_1ABEB0898(&v8, a2, *(a3 + 8), &v9);

  *a4 = v9;
}

id TypedEntityIdentifier<>.objectiveCGraphObjectEntityIdentifier.getter()
{
  v1 = *v0;
  swift_getAssociatedTypeWitness();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t TypedEntityIdentifier.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  EntityIdentifier.init(_:)(a1, a2, &v12);
  if (v13 == 1)
  {
    sub_1ABAEFC04();
    swift_allocError();
    *v9 = 0u;
    v9[1] = 0u;
    v9[2] = 0u;
    v9[3] = 0u;
    *(v9 + 57) = 0u;
    return swift_willThrow();
  }

  else
  {
    v11 = v12;
    result = TypedEntityIdentifier.init(untyped:)(&v11, a3, a4, &v12);
    if (!v5)
    {
      *a5 = v12;
    }
  }

  return result;
}

uint64_t sub_1ABEB0898@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  result = TypedEntityIdentifier.init(untyped:)(&v7, a2, a3, &v8);
  *a4 = v8;
  return result;
}

uint64_t sub_1ABEB0A30(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x64657079746E75 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABEB0ACC(uint64_t a1)
{
  sub_1ABF25234();
  sub_1ABAB1278();
  return sub_1ABF25294();
}

uint64_t sub_1ABEB0B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABEB0A30(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABEB0B74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1ABEB0BC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t TypedEntityIdentifier.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TypedEntityIdentifier.CodingKeys(255, *(a2 + 16), *(a2 + 24), a4);
  sub_1ABA7E158();
  swift_getWitnessTable();
  sub_1ABF24FC4();
  sub_1ABA7BB64();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - v9;
  v11 = *v4;
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  sub_1ABA93E20(v13, v12);
  sub_1ABF252E4();
  v17[3] = v11;
  sub_1ABAE8BC8();
  sub_1ABF24F84();
  return (*(v7 + 8))(v10, v15);
}

uint64_t TypedEntityIdentifier.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8D0](v1);
  return sub_1ABF25294();
}

uint64_t TypedEntityIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v16 = a5;
  type metadata accessor for TypedEntityIdentifier.CodingKeys(255, a2, a3, a4);
  sub_1ABA7E158();
  swift_getWitnessTable();
  v7 = sub_1ABF24EB4();
  sub_1ABA7BB64();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABF252C4();
  if (!v5)
  {
    v13 = v16;
    sub_1ABAE8B74();
    sub_1ABF24E64();
    (*(v9 + 8))(v12, v7);
    *v13 = v17;
  }

  return sub_1ABA84B54(a1);
}

uint64_t sub_1ABEB0FA8(uint64_t a1)
{
  sub_1ABF25234();
  TypedEntityIdentifier.hash(into:)();
  return sub_1ABF25294();
}

void sub_1ABEB109C(uint64_t a1@<X3>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  TypedEntityIdentifier.cast<A>(as:)(a1, a2, &v6);
  if (v3)
  {

    v5 = 0;
  }

  else
  {
    v5 = v6;
  }

  *a3 = v5;
  *(a3 + 8) = v3 != 0;
}

void sub_1ABEB1150(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  EntityIdentifier.typed<A>(as:)(a1, a2, &v7);
  if (v4)
  {

    v6 = 0;
  }

  else
  {
    v6 = v7;
  }

  *a3 = v6;
  *(a3 + 8) = v4 != 0;
}

uint64_t EntityIdentifier.graphObject<A>(from:)()
{
  sub_1ABA8FD20();
  return GraphObjectContextProtocol.graphObject(forUntyped:)();
}

{
  sub_1ABA8FD20();
  return GraphObjectContextProtocol.graphObject<>(forUntyped:)();
}

uint64_t sub_1ABEB12BC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ABEB12D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 73))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABEB1328(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 57) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

double sub_1ABEB1390(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 72) = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1ABEB13D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_1ABEB1414(_BYTE *result, int a2, int a3)
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

uint64_t sub_1ABEB1524(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ABEB15B8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 40);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(*(v5 - 8) + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v8 + 80);
  v12 = *(*(v7 - 8) + 64);
  if (v10 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(v5 - 8) + 64) + v11;
  v15 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_27;
  }

  v16 = v12 + (v14 & ~v11) + 1;
  v17 = 8 * v16;
  if (v16 > 3)
  {
    goto LABEL_10;
  }

  v19 = ((v15 + ~(-1 << v17)) >> v17) + 1;
  if (HIWORD(v19))
  {
    v18 = *(a1 + v16);
    if (v18)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v19 <= 0xFF)
    {
      if (v19 < 2)
      {
        goto LABEL_27;
      }

LABEL_10:
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_27;
      }

LABEL_17:
      v20 = (v18 - 1) << v17;
      if (v16 > 3)
      {
        v20 = 0;
      }

      if (v12 + (v14 & ~v11) == -1)
      {
        v22 = 0;
      }

      else
      {
        if (v16 <= 3)
        {
          v21 = v12 + (v14 & ~v11) + 1;
        }

        else
        {
          v21 = 4;
        }

        switch(v21)
        {
          case 2:
            v22 = *a1;
            break;
          case 3:
            v22 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v22 = *a1;
            break;
          default:
            v22 = *a1;
            break;
        }
      }

      v25 = v13 + (v22 | v20);
      return (v25 + 1);
    }

    v18 = *(a1 + v16);
    if (*(a1 + v16))
    {
      goto LABEL_17;
    }
  }

LABEL_27:
  if (v6 == v13)
  {
    return sub_1ABA7E1E0(a1, v6, v5);
  }

  a1 = ((a1 + v14) & ~v11);
  if (v9 == v13)
  {
    v6 = v9;
    v5 = v7;
    return sub_1ABA7E1E0(a1, v6, v5);
  }

  v24 = *(a1 + v12);
  if (v24 < 2)
  {
    return 0;
  }

  v25 = (v24 + 2147483646) & 0x7FFFFFFF;
  return (v25 + 1);
}