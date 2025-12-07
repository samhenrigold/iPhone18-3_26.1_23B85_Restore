uint64_t sub_1C988A750(char a1)
{
  if (a1)
  {
    return 0x74616E6974736564;
  }

  else
  {
    return 0x656372756F73;
  }
}

uint64_t sub_1C988A78C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737475706E69 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7374757074756FLL && a2 == 0xE700000000000000;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6B63616264656566 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

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

uint64_t sub_1C988A898(char a1)
{
  if (!a1)
  {
    return 0x737475706E69;
  }

  if (a1 == 1)
  {
    return 0x7374757074756FLL;
  }

  return 0x6B63616264656566;
}

uint64_t sub_1C988A8EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475706E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74757074756FLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6B63616264656566 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

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

uint64_t sub_1C988A9F4(char a1)
{
  if (!a1)
  {
    return 0x7475706E69;
  }

  if (a1 == 1)
  {
    return 0x74757074756FLL;
  }

  return 0x6B63616264656566;
}

uint64_t sub_1C988AA7C()
{
  sub_1C9A93CC8();
  sub_1C979AF70(v2, *v0);
  return sub_1C9A93D18();
}

uint64_t sub_1C988AAD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C988A688(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C988AB28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C97AC288();
  *a1 = result;
  return result;
}

uint64_t sub_1C988AB54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C988ABA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C988AC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C988A78C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C988AC70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C97B0878();
  *a1 = result;
  return result;
}

uint64_t sub_1C988AC9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C988ACF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1C988AD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void, void))
{
  sub_1C9A93CC8();
  a4(v8, *v4, *(a2 + 16));
  return sub_1C9A93D18();
}

uint64_t sub_1C988ADA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C988A8EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C988ADD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C988AE28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

char *sub_1C988AE7C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = sub_1C97A2CEC(&qword_1EC3CA4A8, &qword_1C9AAAF18);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C98435A0();
  v11 = (v9 - v10);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (&v129 - v14);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v129 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v129 - v19;
  v21 = sub_1C97A2CEC(&qword_1EC3CA4B0, &qword_1C9AAAF20);
  MEMORY[0x1EEE9AC00](v21 - 8);
  sub_1C98435A0();
  v141 = (v22 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v137 = &v129 - v25;
  v156 = sub_1C97A2CEC(&qword_1EC3CA4B8, &qword_1C9AAAF28);
  v26 = MEMORY[0x1EEE9AC00](v156);
  v140 = &v129 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v133 = &v129 - v29;
  v30 = *(a1 + 16);
  v135 = a2;
  v142 = v30;
  v129 = a1;
  if (!v30)
  {
    v134 = MEMORY[0x1E69E7CC0];
    goto LABEL_34;
  }

  v31 = 0;
  v136 = a1 + 32;
  v155 = (v7 + 8);
  v146 = v28 + 8;
  v147 = v28 + 32;
  v150 = "onOptions24^@32";
  v130 = a2 + 40;
  v134 = MEMORY[0x1E69E7CC0];
  v132 = v18;
  v131 = v20;
  v139 = v5;
  do
  {
    v138 = v31;

    v154 = sub_1C97A2CEC(&qword_1EC3CA4C0, &qword_1C9AAAF30);
    sub_1C9A917E8();
    v153 = sub_1C988DC3C();
    sub_1C9A917D8();
    sub_1C988EA54();
    sub_1C988EB98();
    v32 = v137;
    sub_1C9A917F8();
    if (v4)
    {

      v33 = sub_1C988EAE4();
      v18(v33);
      v152 = v18;
      (v18)(v20, v5);
      v34 = v156;
      sub_1C97ACC50(v32, 1, 1, v156);
      v4 = 0;
    }

    else
    {

      v35 = sub_1C988EAE4();
      v18(v35);
      v152 = v18;
      (v18)(v20, v5);
      v34 = v156;
    }

    if (sub_1C97ABF20(v32, 1, v34) == 1)
    {
      sub_1C988DCA0(v32);

LABEL_22:
      v52 = v138;
      goto LABEL_30;
    }

    v36 = sub_1C988EB2C();
    v145 = v37;
    v37(v36);
    swift_getKeyPath();
    sub_1C9A91808();

    v144 = MEMORY[0x1CCA901C0](v157, v158, v159, v160);
    v39 = v38;

    v40 = sub_1C988EB2C();
    v143 = v41;
    v41(v40);

    v151 = *(v135 + 16);
    if (!v151)
    {

      v52 = v138;
      v18 = v132;
      goto LABEL_30;
    }

    v148 = v39;
    v20 = 0;
    v42 = v130;
    v18 = v141;
    while (1)
    {

      sub_1C9A917E8();
      sub_1C9A917D8();
      sub_1C988EA54();
      sub_1C988EB98();
      sub_1C9A917F8();
      if (v4)
      {

        v43 = sub_1C988EB04();
        v11(v43);
        (v11)(v15, v5);
        v44 = v156;
        sub_1C97ACC50(v18, 1, 1, v156);
        v4 = 0;
      }

      else
      {

        v45 = sub_1C988EB04();
        v11(v45);
        (v11)(v15, v5);
        v44 = v156;
      }

      if (sub_1C97ABF20(v18, 1, v44) == 1)
      {
        sub_1C988DCA0(v18);

        goto LABEL_20;
      }

      v149 = 0;
      v5 = v15;
      v15 = v11;
      v46 = v140;
      v145(v140, v18, v44);
      swift_getKeyPath();
      v18 = v44;
      sub_1C9A91808();

      v11 = v160;
      v47 = MEMORY[0x1CCA901C0](v157, v158, v159, v160);
      v49 = v48;

      v143(v46, v18);

      v50 = v47 == v144 && v49 == v148;
      if (v50)
      {
        break;
      }

      v51 = sub_1C9A93B18();

      sub_1C988EB64();
      v18 = v141;
      v4 = v149;
      if (v51)
      {
        goto LABEL_25;
      }

LABEL_20:
      ++v20;
      v42 += 16;
      if (v151 == v20)
      {

        sub_1C988EAC4();
        goto LABEL_22;
      }
    }

    sub_1C988EB64();
    v4 = v149;
LABEL_25:

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v53 = v134;
    }

    else
    {
      sub_1C97E5734(0, v134[2] + 1, 1, v134);
    }

    v55 = *(v53 + 16);
    v54 = *(v53 + 24);
    if (v55 >= v54 >> 1)
    {
      sub_1C97E5734(v54 > 1, v55 + 1, 1, v53);
    }

    *(v53 + 16) = v55 + 1;
    v134 = v53;
    v56 = v53 + 16 * v55;
    v57 = v138;
    *(v56 + 32) = v20;
    *(v56 + 40) = v57;
    sub_1C988EAC4();
LABEL_30:
    v31 = v52 + 1;
  }

  while (v31 != v142);
LABEL_34:
  sub_1C9A3C1EC(0, v142);
  v58 = v134;
  v59 = v134[2];
  if (v59)
  {
    v157 = MEMORY[0x1E69E7CC0];
    v60 = sub_1C988EA00();
    sub_1C97B7C28(v60, v61, v62);
    v63 = v157;
    v64 = v157[2];
    v65 = (v58 + 40);
    v66 = v59;
    do
    {
      v67 = *v65;
      v65 += 2;
      v58 = v67;
      v157 = v63;
      if (v64 >= *(v63 + 24) >> 1)
      {
        v68 = sub_1C988EA70();
        sub_1C97B7C28(v68, v64 + 1, 1);
        v63 = v157;
      }

      *(v63 + 16) = v64 + 1;
      *(v63 + 8 * v64++ + 32) = v58;
      --v59;
    }

    while (v59);
    v59 = v66;
  }

  v69 = sub_1C988EB2C();
  v71 = sub_1C9A1AFD0(v69, v70);

  v72 = sub_1C9A083E0(v71);
  sub_1C988EB58();
  v156 = *(v58 + 16);
  v73 = sub_1C9A3C1EC(0, v156);
  v74 = MEMORY[0x1E69E7CC0];
  v152 = v59;
  if (v59)
  {
    v157 = MEMORY[0x1E69E7CC0];
    v75 = sub_1C988EA00();
    sub_1C97B7C28(v75, v76, v77);
    v78 = v157;
    v79 = v134 + 4;
    v80 = v157[2];
    v81 = v59;
    do
    {
      v82 = *v79;
      v79 += 2;
      v58 = v82;
      v157 = v78;
      if (v80 >= *(v78 + 24) >> 1)
      {
        v83 = sub_1C988EA70();
        sub_1C97B7C28(v83, v80 + 1, 1);
        v78 = v157;
      }

      *(v78 + 16) = v80 + 1;
      *(v78 + 8 * v80++ + 32) = v58;
      --v81;
    }

    while (v81);
    sub_1C988EB58();
    v74 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v78 = MEMORY[0x1E69E7CC0];
  }

  v84 = sub_1C9A1AFD0(v78, v73);

  v85 = sub_1C9A083E0(v84);
  v157 = v72;

  sub_1C988D2BC(&v157);
  if (v4)
  {
    goto LABEL_78;
  }

  v86 = v157;
  v87 = v157[2];
  if (v87)
  {
    v154 = 0;
    v155 = v85;
    v157 = v74;
    sub_1C97B7B08(0, v87, 0);
    v88 = v157;
    v4 = (v129 + 32);
    v89 = 32;
    while (1)
    {
      v90 = *(v86 + v89);
      if (v90 >= v142)
      {
        break;
      }

      v91 = v86;
      v92 = &v4[2 * v90];
      v58 = *v92;
      v93 = v92[1];
      v157 = v88;
      v95 = *(v88 + 16);
      v94 = *(v88 + 24);
      v96 = v88;

      v88 = v96;
      if (v95 >= v94 >> 1)
      {
        v98 = sub_1C988EA70();
        sub_1C97B7B08(v98, v95 + 1, 1);
        v88 = v157;
      }

      *(v88 + 16) = v95 + 1;
      v97 = v88 + 16 * v95;
      *(v97 + 32) = v58;
      *(v97 + 40) = v93;
      v89 += 8;
      --v87;
      v86 = v91;
      if (!v87)
      {
        v151 = v88;

        sub_1C988EB58();
        v74 = MEMORY[0x1E69E7CC0];
        v4 = v154;
        v85 = v155;
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:

    __break(1u);
  }

  else
  {

    v151 = MEMORY[0x1E69E7CC0];
LABEL_56:
    v157 = v85;

    sub_1C988D2BC(&v157);
    if (v4)
    {
      goto LABEL_78;
    }

    v99 = v157;
    v100 = v157[2];
    if (v100)
    {
      v157 = v74;
      v101 = sub_1C988EA00();
      sub_1C97B7B08(v101, v102, v103);
      v4 = v157;
      v104 = v58 + 32;
      v105 = 32;
      while (1)
      {
        v106 = *(v99 + v105);
        if (v106 >= v156)
        {
          goto LABEL_75;
        }

        v107 = (v104 + 16 * v106);
        v58 = *v107;
        v108 = v107[1];
        v157 = v4;
        v110 = v4[2];
        v109 = v4[3];

        if (v110 >= v109 >> 1)
        {
          v112 = sub_1C988EA70();
          sub_1C97B7B08(v112, v110 + 1, 1);
          v4 = v157;
        }

        v4[2] = v110 + 1;
        v111 = &v4[2 * v110];
        v111[4] = v58;
        v111[5] = v108;
        v105 += 8;
        if (!--v100)
        {

          sub_1C988EB58();
          v74 = MEMORY[0x1E69E7CC0];
          goto LABEL_65;
        }
      }
    }

    v4 = MEMORY[0x1E69E7CC0];
LABEL_65:
    v113 = v152;
    if (v152)
    {
      v157 = v74;
      sub_1C97B7C08(0, v152, 0);
      v114 = v157;
      v154 = v58 + 32;
      v153 = v129 + 32;
      v115 = (v134 + 5);
      v155 = v4;
      do
      {
        v116 = *(v115 - 1);
        if (v116 >= v156)
        {
          goto LABEL_76;
        }

        if (*v115 >= v142)
        {
          goto LABEL_77;
        }

        v117 = v113;
        v118 = (v154 + 16 * v116);
        v120 = *v118;
        v119 = v118[1];
        v121 = (v153 + 16 * *v115);
        v123 = *v121;
        v122 = v121[1];
        v157 = v114;
        v124 = *(v114 + 16);
        v125 = *(v114 + 24);

        if (v124 >= v125 >> 1)
        {
          v127 = sub_1C988EA70();
          sub_1C97B7C08(v127, v124 + 1, 1);
          v114 = v157;
        }

        v115 += 2;
        *(v114 + 16) = v124 + 1;
        v126 = (v114 + 32 * v124);
        v126[4] = v120;
        v126[5] = v119;
        v126[6] = v123;
        v126[7] = v122;
        v113 = v117 - 1;
        v50 = v117 == 1;
        v4 = v155;
      }

      while (!v50);
    }

    return v151;
  }

  return result;
}

uint64_t sub_1C988BB40@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a1[2] == 1)
  {
    if (a2[2] == 1)
    {
      v4 = a1[5];
      v5 = a2[4];
      v6 = a2[5];
      *a4 = a1[4];
      a4[1] = v4;
      a4[2] = v5;
      a4[3] = v6;
      a4[4] = a3;
    }

    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  sub_1C988DBE8();
  swift_allocError();
  *v9 = v8;
  return swift_willThrow();
}

void sub_1C988BBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C97AEB94();
  v38 = v23;
  v39 = v24;
  v37[0] = v25;
  v37[1] = v26;
  v28 = v27;
  type metadata accessor for StreamingModelUtils.Connection.CodingKeys(255, *(v25 + 16), v26, v29);
  sub_1C988E974();
  swift_getWitnessTable();
  sub_1C988EB78();
  v30 = sub_1C9A93A78();
  sub_1C97AE9C8();
  v32 = v31;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v33);
  v35 = v37 - v34;
  sub_1C97A5A8C(v28, v28[3]);
  sub_1C9A93DD8();
  sub_1C988EB38();
  v36 = v39;
  sub_1C9A93A18();
  if (!v36)
  {
    sub_1C988EB38();
    sub_1C9A93A18();
  }

  (*(v32 + 8))(v35, v30);
  sub_1C97AEB5C();
}

void sub_1C988BD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C97AEB94();
  v66 = v23;
  v64 = v24;
  v26 = v25;
  v28 = v27;
  v59 = v29;
  sub_1C988EB84();
  v61 = v30;
  MEMORY[0x1EEE9AC00](v31);
  sub_1C98435A0();
  v60 = v32 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v63 = &v57 - v35;
  type metadata accessor for StreamingModelUtils.Connection.CodingKeys(255, v36, v37, v38);
  sub_1C988E974();
  swift_getWitnessTable();
  sub_1C9855104();
  v65 = sub_1C9A93978();
  sub_1C97AE9C8();
  v62 = v39;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v40);
  v43 = type metadata accessor for StreamingModelUtils.Connection(0, v26, v41, v42);
  sub_1C97AE9C8();
  v58 = v44;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v57 - v46;
  sub_1C97A5A8C(v28, v28[3]);
  v48 = v66;
  sub_1C9A93DB8();
  if (v48)
  {
    sub_1C97A592C(v28);
  }

  else
  {
    v49 = v47;
    v66 = v43;
    v50 = v60;
    v51 = v61;
    sub_1C9A938F8();
    v52 = v63;
    v63 = *(v51 + 32);
    (v63)(v49, v52, v26);
    sub_1C9A938F8();
    v53 = sub_1C988EA24();
    v54(v53);
    v55 = v66;
    (v63)(&v49[*(v66 + 28)], v50, v26);
    v56 = v58;
    (*(v58 + 16))(v59, v49, v55);
    sub_1C97A592C(v28);
    (*(v56 + 8))(v49, v55);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C988C090()
{
  sub_1C988EB4C();
  if ((sub_1C9A92438() & 1) == 0)
  {
    return 0;
  }

  v0 = sub_1C9855104();
  v4 = type metadata accessor for StreamingModelUtils.Connection(v0, v1, v2, v3);
  return sub_1C988EA7C(v4) & 1;
}

uint64_t sub_1C988C0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C988EB4C();
  sub_1C9A92398();
  return sub_1C9A92398();
}

void sub_1C988C138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  v23 = v22;
  v25 = v24;
  type metadata accessor for StreamingModelUtils.IODescription.CodingKeys(255, v22, v26, v27);
  sub_1C988E98C();
  swift_getWitnessTable();
  v28 = sub_1C9A93A78();
  sub_1C97AE9C8();
  v30 = v29;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C97AEA4C();
  sub_1C97A5A8C(v25, v25[3]);
  sub_1C9A93DD8();
  sub_1C988EB78();
  sub_1C9A928B8();
  sub_1C988E910();
  swift_getWitnessTable();
  sub_1C988EA38();
  sub_1C9A93A18();
  if (!v20)
  {
    sub_1C988EA38();
    sub_1C9A93A18();
    sub_1C988EAF8();
    type metadata accessor for StreamingModelUtils.Connection(255, v23, v32, v33);
    sub_1C9855104();
    sub_1C9A928B8();
    sub_1C988E95C();
    swift_getWitnessTable();
    sub_1C988E910();
    swift_getWitnessTable();
    sub_1C9A93A18();
  }

  (*(v30 + 8))(v21, v28);
  sub_1C97AEB5C();
}

void sub_1C988C374()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  type metadata accessor for StreamingModelUtils.IODescription.CodingKeys(255, v1, v5, v6);
  sub_1C988E98C();
  swift_getWitnessTable();
  sub_1C9855104();
  sub_1C9A93978();
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97A5A8C(v4, v4[3]);
  sub_1C9A93DB8();
  if (!v0)
  {
    v8 = sub_1C9A928B8();
    sub_1C988E928();
    swift_getWitnessTable();
    sub_1C988EAD8();
    sub_1C988EAA0(v8, v9);
    sub_1C988EAD8();
    sub_1C988EAA0(v8, v10);
    type metadata accessor for StreamingModelUtils.Connection(255, v2, v11, v12);
    sub_1C9855104();
    sub_1C9A928B8();
    sub_1C988EAF8();
    sub_1C988E9A4();
    swift_getWitnessTable();
    sub_1C988E928();
    swift_getWitnessTable();
    sub_1C988EAD8();
    sub_1C9A938F8();
    v13 = sub_1C988EA14();
    v14(v13);
  }

  sub_1C97A592C(v4);
  sub_1C97AEB5C();
}

uint64_t sub_1C988C5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (sub_1C9A928D8() & 1) != 0 && (sub_1C9A928D8())
  {
    type metadata accessor for StreamingModelUtils.Connection(0, a7, v9, v10);
    sub_1C988E940();
    swift_getWitnessTable();
    v11 = sub_1C9A928D8();
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1C988C6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C9A928C8();
  sub_1C9A928C8();
  v6 = sub_1C9855104();
  type metadata accessor for StreamingModelUtils.Connection(v6, v7, v8, v9);
  sub_1C988E9D4();
  return sub_1C9A928C8();
}

uint64_t sub_1C988C73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C97BE32C(a1);
  sub_1C988C6AC(v11, a1, a2, a3, a4, a5);
  return sub_1C9A93D18();
}

void sub_1C988C7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  v23 = v22;
  v25 = *(v24 + 16);
  type metadata accessor for StreamingModelUtils.FlowIODescription.CodingKeys(255, v25, v26, v27);
  sub_1C988E9BC();
  swift_getWitnessTable();
  sub_1C988EB78();
  v28 = sub_1C9A93A78();
  sub_1C97AE9C8();
  v30 = v29;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C97AEA4C();
  sub_1C97A5A8C(v23, v23[3]);
  sub_1C9A93DD8();
  sub_1C988EB18();
  sub_1C9A93A18();
  if (!v20)
  {
    sub_1C988EB18();
    sub_1C9A93A18();
    sub_1C988EAF8();
    type metadata accessor for StreamingModelUtils.Connection(255, v25, v32, v33);
    sub_1C9855104();
    sub_1C9A928B8();
    sub_1C988E95C();
    swift_getWitnessTable();
    sub_1C988E910();
    swift_getWitnessTable();
    sub_1C9A93A18();
  }

  (*(v30 + 8))(v21, v28);
  sub_1C97AEB5C();
}

void sub_1C988C984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  v70 = v20;
  v68 = v22;
  v24 = v23;
  v26 = v25;
  v62 = v27;
  sub_1C988EB84();
  v65 = v28;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C98435A0();
  v63 = (v30 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v66 = &v60 - v33;
  type metadata accessor for StreamingModelUtils.FlowIODescription.CodingKeys(255, v34, v35, v36);
  sub_1C988E9BC();
  swift_getWitnessTable();
  sub_1C9855104();
  v69 = sub_1C9A93978();
  sub_1C97AE9C8();
  v64 = v37;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v60 - v39;
  v41 = sub_1C988EB78();
  v45 = type metadata accessor for StreamingModelUtils.FlowIODescription(v41, v42, v43, v44);
  sub_1C97AE9C8();
  v61 = v46;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C97AEA4C();
  sub_1C97A5A8C(v26, v26[3]);
  v67 = v40;
  v48 = v70;
  sub_1C9A93DB8();
  if (v48)
  {
    sub_1C97A592C(v26);
  }

  else
  {
    v49 = v64;
    v50 = v65;
    v60 = v21;
    v70 = v26;
    sub_1C9A938F8();
    v51 = v24;
    v52 = *(v50 + 32);
    v52(v60, v66, v24);
    LOBYTE(a10) = 1;
    v53 = v63;
    sub_1C9A938F8();
    v52(v60 + *(v45 + 28), v53, v51);
    type metadata accessor for StreamingModelUtils.Connection(255, v51, v54, v55);
    sub_1C9855104();
    sub_1C9A928B8();
    sub_1C988EAF8();
    v72 = v68;
    sub_1C988E9A4();
    WitnessTable = swift_getWitnessTable();
    sub_1C988E928();
    swift_getWitnessTable();
    sub_1C988EAD8();
    v56 = v67;
    sub_1C9A938F8();
    (*(v49 + 8))(v56, v69);
    v57 = v60;
    *(v60 + *(v45 + 32)) = a10;
    (*(v61 + 16))(v62, v57, v45);
    sub_1C97A592C(v70);
    v58 = sub_1C988EB2C();
    v59(v58);
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C988CDAC()
{
  sub_1C988EB4C();
  if (sub_1C9A92438() & 1) != 0 && (v0 = sub_1C9855104(), v4 = type metadata accessor for StreamingModelUtils.FlowIODescription(v0, v1, v2, v3), (sub_1C988EA7C(v4)))
  {
    v5 = sub_1C9855104();
    type metadata accessor for StreamingModelUtils.Connection(v5, v6, v7, v8);
    sub_1C988E940();
    swift_getWitnessTable();
    v9 = sub_1C9A928D8();
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1C988CE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  sub_1C9A92398();
  sub_1C9A92398();
  type metadata accessor for StreamingModelUtils.Connection(0, v3, v4, v5);
  sub_1C988E9D4();
  return sub_1C9A928C8();
}

uint64_t sub_1C988CEEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, uint64_t, uint64_t))
{
  sub_1C988EB4C();
  sub_1C97BE32C(v6);
  a3(v8, v4, v3);
  return sub_1C9A93D18();
}

void sub_1C988D004(void *a1@<X8>)
{
  sub_1C988C374();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
  }
}

uint64_t sub_1C988D094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_1C9A93CC8();
  sub_1C988C6AC(v7, *v3, v3[1], v3[2], *(a2 + 16), v5);
  return sub_1C9A93D18();
}

uint64_t sub_1C988D188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  v6 = *(a3 - 8);
  sub_1C9A93CC8();
  a4(v8, a2, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C988D2BC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C98254C0(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C988D328(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C988D328(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C9A93A88();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1C9A92838();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C988D478(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C988D41C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C988D41C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C988D478(uint64_t **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v78 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v73 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 8 * v16);
                *(v17 + 8 * v16) = *(v17 + 8 * v15);
                *(v17 + 8 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (v23 >= *v25)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v75 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C97E510C(0, v7[2] + 1, 1, v7);
        v7 = v71;
      }

      v29 = v7[2];
      v28 = v7[3];
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        sub_1C97E510C(v28 > 1, v29 + 1, 1, v7);
        v7 = v72;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v76 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_1C988DA44((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v76);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v70 - 1 - v33));
          v69[2] = v70 - 1;
          v19 = v70 > 2;
          v7 = v69;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v75;
      a4 = v73;
      if (v75 >= v5)
      {
        v78 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_1C988D918(&v78, *result, a3);
LABEL_89:
}

uint64_t sub_1C988D918(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C984A014(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1C988DA44((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1C988DA44(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_1C97E842C(a1, a2 - a1, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6++;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
    }

    v12 = *v4;
    v13 = v7 == v4++;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_1C97E842C(a2, a3 - a2, a4);
  v10 = &v4[v9];
LABEL_15:
  v14 = v6 - 1;
  for (--v5; v10 > v4 && v6 > v7; --v5)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 1 == v6--;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 1)
    {
      *v5 = v16;
    }

    --v10;
  }

LABEL_28:
  v17 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

unint64_t sub_1C988DBE8()
{
  result = qword_1EC3CA4A0;
  if (!qword_1EC3CA4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA4A0);
  }

  return result;
}

unint64_t sub_1C988DC3C()
{
  result = qword_1EC3CA4C8[0];
  if (!qword_1EC3CA4C8[0])
  {
    sub_1C97AA4F0(&qword_1EC3CA4A8, &qword_1C9AAAF18);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3CA4C8);
  }

  return result;
}

uint64_t sub_1C988DCA0(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CA4B0, &qword_1C9AAAF20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for StreamingModelUtils.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C988DDF4(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C988DEC0(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C988DF8C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C988DFFC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v6;
  if (a2 <= v6)
  {
    return sub_1C97ABF20(a1, v6, v4);
  }

  v8 = ((*(*(v4 - 8) + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(*(v4 - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_19:
      if (v6)
      {
        return sub_1C97ABF20(a1, v6, v4);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_19;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    switch(v8)
    {
      case 2:
        LODWORD(v8) = *a1;
        break;
      case 3:
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v8) = *a1;
        break;
      default:
        LODWORD(v8) = *a1;
        break;
    }
  }

  return v6 + (v8 | v12) + 1;
}

void sub_1C988E14C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = (v9 + *(v7 + 80)) & ~*(v7 + 80);
  v11 = v10 + v9;
  v12 = 8 * (v10 + v9);
  v13 = a3 >= v8;
  v14 = a3 - v8;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v8 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_1C97ACC50(a1, a2, v8, v6);
        }

        break;
    }
  }

  else
  {
    v16 = ~v8 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C988E364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C988E3B8(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  v4 = v1;
  if (v5 <= 0x3F)
  {
    type metadata accessor for StreamingModelUtils.Connection(255, v1, v2, v3);
    v4 = sub_1C9A928B8();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1C988E45C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = *(v5 + 80);
  v10 = v7 + v9;
  v11 = v7 + 7;
  if (v8 >= a2)
  {
LABEL_26:
    if (v6 < 0x7FFFFFFF)
    {
      v20 = *((v11 + ((v10 + result) & ~v9)) & 0xFFFFFFFFFFFFFFF8);
      if (v20 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      return (v20 + 1);
    }

    else
    {
      return sub_1C97ABF20(result, v6, v4);
    }
  }

  else
  {
    v12 = ((v11 + (v10 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 8;
    v13 = a2 - v8;
    v14 = v12 & 0xFFFFFFF8;
    if ((v12 & 0xFFFFFFF8) != 0)
    {
      v15 = 2;
    }

    else
    {
      v15 = v13 + 1;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    switch(v17)
    {
      case 1:
        v18 = *(result + v12);
        if (!v18)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v18 = *(result + v12);
        if (!v18)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v18 = *(result + v12);
        if (!v18)
        {
          goto LABEL_26;
        }

LABEL_22:
        v19 = v18 - 1;
        if (v14)
        {
          v19 = 0;
          LODWORD(v14) = *result;
        }

        result = v8 + (v14 | v19) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C988E5B4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(*(v6 - 8) + 64);
  v11 = *(v7 + 80);
  v12 = v10 + v11;
  v13 = v10 + 7;
  v14 = ((v10 + 7 + ((v10 + v11) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v18 = 0;
  }

  else
  {
    v15 = a3 - v9;
    if (((v10 + 7 + ((v10 + v11) & ~v11)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v18)
    {
      case 1:
        a1[v14] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v14] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v14] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v8 < 0x7FFFFFFF)
          {
            v21 = ((v13 + (&a1[v12] & ~v11)) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v22 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v22 = (a2 - 1);
            }

            *v21 = v22;
          }

          else
          {

            sub_1C97ACC50(a1, a2, v8, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (v14)
    {
      v19 = 1;
    }

    else
    {
      v19 = a2 - v9;
    }

    if (v14)
    {
      v20 = ~v9 + a2;
      bzero(a1, v14);
      *a1 = v20;
    }

    switch(v18)
    {
      case 1:
        a1[v14] = v19;
        break;
      case 2:
        *&a1[v14] = v19;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v14] = v19;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C988E7FC()
{
  result = qword_1EC3CA7D0;
  if (!qword_1EC3CA7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA7D0);
  }

  return result;
}

uint64_t sub_1C988E9D4()
{

  return swift_getWitnessTable();
}

uint64_t sub_1C988EA7C(uint64_t a1)
{

  return sub_1C9A92438();
}

uint64_t sub_1C988EAA0(uint64_t a1, uint64_t a2)
{

  return sub_1C9A938F8();
}

uint64_t sub_1C988EB98()
{

  return sub_1C9A92628();
}

uint64_t sub_1C988EBB8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E65696C63 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9A93B18();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C988EC40(void *a1, uint64_t a2)
{
  v3 = sub_1C97A2CEC(&qword_1EC3CA800, &qword_1C9AAB5C0);
  sub_1C97AE9C8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C988F4EC();
  sub_1C9A93DD8();
  sub_1C9A93A58();
  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C988ED8C(uint64_t a1)
{
  sub_1C9A93CC8();
  sub_1C9A93CF8();
  return sub_1C9A93D18();
}

void *sub_1C988EDD4(void *a1)
{
  v3 = sub_1C97A2CEC(&qword_1EC3CA7F0, &qword_1C9AAB5B8);
  sub_1C97AE9C8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  v9 = sub_1C97A5A8C(a1, a1[3]);
  sub_1C988F4EC();
  sub_1C9A93DB8();
  if (!v1)
  {
    v9 = sub_1C9A93938();
    (*(v5 + 8))(v8, v3);
  }

  sub_1C97A592C(a1);
  return v9;
}

uint64_t sub_1C988EF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C988EBB8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C988EF4C(uint64_t a1)
{
  v2 = sub_1C988F4EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C988EF88(uint64_t a1)
{
  v2 = sub_1C988F4EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C988EFC4@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_1C988EDD4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C988F028()
{

  return v0;
}

uint64_t sub_1C988F058()
{
  sub_1C988F028();

  return swift_deallocClassInstance();
}

uint64_t sub_1C988F0B0()
{
  v1 = v0;
  v22[5] = *MEMORY[0x1E69E9840];
  v2 = sub_1C9A91748();
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCV13SoundAnalysis22SharedAOPResultsStream15AOPSubscription_trackingID;
  (*(v4 + 16))(v7, v0 + OBJC_IVAR____TtCV13SoundAnalysis22SharedAOPResultsStream15AOPSubscription_trackingID, v2);

  sub_1C98FC938(v7);

  v9 = *(v4 + 8);
  v10 = v9(v7, v2);
  v11 = *(v0 + OBJC_IVAR____TtCV13SoundAnalysis22SharedAOPResultsStream15AOPSubscription_connect);
  v22[3] = type metadata accessor for IOConnect(v10);
  v22[4] = &off_1F494BDB8;
  v12 = *(v1 + OBJC_IVAR____TtCV13SoundAnalysis22SharedAOPResultsStream15AOPSubscription_client);
  v22[0] = v11;
  v18 = v12;
  v19 = 1;
  v20 = 0;

  v13 = sub_1C98FBA38(&v18, &v21);
  v15 = v14;
  sub_1C98FE77C(v22, 35, v13, v14);
  sub_1C97A5978(v13, v15);
  sub_1C97A592C(v22);
  v9((v1 + v8), v2);

  return v1;
}

uint64_t sub_1C988F31C()
{
  sub_1C988F0B0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SharedAOPResultsStream.AOPSubscription(uint64_t a1)
{
  result = qword_1EC3CA7D8;
  if (!qword_1EC3CA7D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C988F3C8(uint64_t a1)
{
  result = sub_1C9A91748();
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

unint64_t sub_1C988F498()
{
  result = qword_1EC3CA7E8;
  if (!qword_1EC3CA7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA7E8);
  }

  return result;
}

unint64_t sub_1C988F4EC()
{
  result = qword_1EC3CA7F8;
  if (!qword_1EC3CA7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA7F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SharedAOPResultsStream.Configuration.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C988F5F0()
{
  result = qword_1EC3CA808;
  if (!qword_1EC3CA808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA808);
  }

  return result;
}

unint64_t sub_1C988F648()
{
  result = qword_1EC3CA810;
  if (!qword_1EC3CA810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA810);
  }

  return result;
}

unint64_t sub_1C988F6A0()
{
  result = qword_1EC3CA818[0];
  if (!qword_1EC3CA818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3CA818);
  }

  return result;
}

uint64_t sub_1C988F6F4()
{
  sub_1C97AA884();
  v0[20] = v1;
  v0[21] = v2;
  v0[18] = v3;
  v0[19] = v4;
  v0[22] = *(v1 - 8);
  v0[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C988F7A8, 0, 0);
}

uint64_t sub_1C988F7A8()
{
  sub_1C97DA934();
  v20 = *(v0 + 168);
  v1 = *(v0 + 152);
  v2 = *v1;
  *(v0 + 112) = *v1;
  type metadata accessor for XPCDataDecoder(*&v2);
  sub_1C97AA878();
  *(swift_allocObject() + 16) = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *(v0 + 16) = v3;
  *(v0 + 32) = v4;
  type metadata accessor for XPCProxyDecoder(*&v3);
  v5 = swift_allocObject();
  v6 = v1[2];
  *(v5 + 16) = v1[1];
  *(v5 + 32) = v6;
  type metadata accessor for XPCDecoder(*&v6);
  inited = swift_initStackObject();
  *(v0 + 192) = inited;
  sub_1C9890A64(inited, v8, v9, v10, v11, v12, v13, v14, v18, v19, v20);
  sub_1C981CD88(v0 + 112, v0 + 128, &unk_1EC3CAD30, &qword_1C9A9D550);
  sub_1C981CD88(v0 + 16, v0 + 80, &qword_1EC3C6930, &qword_1C9AADC80);
  v15 = swift_task_alloc();
  *(v0 + 200) = v15;
  *v15 = v0;
  v15[1] = sub_1C988F954;
  sub_1C9890A78();

  return v16();
}

uint64_t sub_1C988F954()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 208) = v0;

  if (v0)
  {
    v7 = sub_1C988FAF4;
  }

  else
  {
    v7 = sub_1C988FA54;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C988FA54()
{
  sub_1C97DA934();
  swift_setDeallocating();
  sub_1C9890968();
  sub_1C985DB04();
  swift_deallocClassInstance();
  v0 = sub_1C9890A8C();
  v1(v0);

  sub_1C97DA91C();

  return v2();
}

uint64_t sub_1C988FAF4()
{
  sub_1C97AA884();
  swift_setDeallocating();
  sub_1C9890968();
  sub_1C985DB04();
  swift_deallocClassInstance();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C988FB7C(double a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  type metadata accessor for XPCDataDecoder.SingleValueContainer(a1);
  sub_1C97AA878();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v7 = *(v2 + 24);
  sub_1C97DA2E8(v5, v4);
  v9 = v7[2];
  v8 = v7[3];
  v10 = v7[4];
  v11 = v7[5];
  type metadata accessor for XPCProxyDecoder.SingleValueContainer(v12);
  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = v8;
  v13[4] = v10;
  v13[5] = v11;

  sub_1C97A8F30(v9, v8, v10, v11);

  type metadata accessor for XPCDecoder.SingleValueContainer(v14);
  sub_1C97AA878();
  v15 = swift_allocObject();
  *(v15 + 16) = v6;
  *(v15 + 24) = v13;
  v16 = *(v1 + 8);

  return v16();
}

uint64_t sub_1C988FC94()
{
  sub_1C97AA95C();

  v0[3] = sub_1C9991E04();

  v0[4] = *(v0[2] + 24);

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1C988FD98;

  return sub_1C987B80C();
}

uint64_t sub_1C988FD98()
{
  sub_1C97AA95C();
  v3 = v2;
  sub_1C97AA890();
  v5 = v4;
  sub_1C97AA84C();
  *v6 = v5;
  v7 = *v1;
  sub_1C97AA83C();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (v0)
  {
    v9 = sub_1C988FF24;
  }

  else
  {

    *(v5 + 56) = v3;
    v9 = sub_1C988FEB4;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1C988FEB4()
{
  sub_1C97AA884();
  v1 = v0[7];
  v2 = v0[3];
  type metadata accessor for XPCDecoder.UnkeyedContainer(v3);
  sub_1C97AA878();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = v0[1];

  return v5();
}

uint64_t sub_1C988FF24()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C988FF8C(uint64_t a1)
{
  sub_1C9890968();
  sub_1C985DB04();

  return swift_deallocClassInstance();
}

uint64_t sub_1C988FFB8()
{
  sub_1C97AA884();
  v0[25] = v1;
  v0[26] = v2;
  v0[24] = v3;
  v0[27] = *(v1 - 8);
  v0[28] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[29] = v4;
  *v4 = v0;
  v4[1] = sub_1C98900A0;

  return sub_1C98905A0((v0 + 2));
}

uint64_t sub_1C98900A0()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97AA84C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C98901D8, 0, 0);
  }
}

uint64_t sub_1C98901D8()
{
  sub_1C97DA934();
  v21 = *(v0 + 208);
  v1 = *(v0 + 16);
  *(v0 + 160) = v1;
  type metadata accessor for XPCDataDecoder(*&v1);
  sub_1C97AA878();
  v2 = swift_allocObject();
  v3 = *(v0 + 32);
  *(v2 + 16) = *(v0 + 16);
  v4 = *(v0 + 48);
  *(v0 + 64) = v3;
  *(v0 + 80) = v4;
  type metadata accessor for XPCProxyDecoder(*&v4);
  v5 = swift_allocObject();
  v6 = *(v0 + 32);
  v7 = *(v0 + 48);
  *(v5 + 16) = v6;
  *(v5 + 32) = v7;
  type metadata accessor for XPCDecoder(*&v6);
  inited = swift_initStackObject();
  *(v0 + 240) = inited;
  sub_1C9890A64(inited, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21);
  sub_1C981CD88(v0 + 160, v0 + 176, &unk_1EC3CAD30, &qword_1C9A9D550);
  sub_1C981CD88(v0 + 64, v0 + 128, &qword_1EC3C6930, &qword_1C9AADC80);
  v16 = swift_task_alloc();
  *(v0 + 248) = v16;
  *v16 = v0;
  v16[1] = sub_1C9890380;
  sub_1C9890A78();

  return v17();
}

uint64_t sub_1C9890380()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 256) = v0;

  if (v0)
  {
    v7 = sub_1C9890524;
  }

  else
  {
    v7 = sub_1C9890480;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C9890480()
{
  sub_1C97DA934();
  swift_setDeallocating();
  sub_1C9890968();
  sub_1C985DB04();
  swift_deallocClassInstance();
  sub_1C97D9AA4(v0 + 16);
  v1 = sub_1C9890A8C();
  v2(v1);

  sub_1C97DA91C();

  return v3();
}

uint64_t sub_1C9890524()
{
  sub_1C97AA884();
  swift_setDeallocating();
  sub_1C9890968();
  sub_1C985DB04();
  swift_deallocClassInstance();
  sub_1C97D9AA4(v0 + 16);

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C98905A0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1C97DA66C();
}

uint64_t sub_1C98905B4()
{
  sub_1C97AA95C();
  sub_1C9991EB4();
  v0[4] = v1;
  v0[5] = v2;
  v0[6] = *(v0[3] + 24);

  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1C98906A8;

  return sub_1C987C5D8();
}

uint64_t sub_1C98906A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C97AA890();
  v11 = v10;
  sub_1C97AA84C();
  *v12 = v11;
  v13 = *v5;
  sub_1C97AA83C();
  *v14 = v13;
  v11[8] = v4;

  if (v4)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C989081C, 0, 0);
  }

  else
  {
    v15 = v11[5];
    v16 = v11[4];
    v17 = v11[2];

    *v17 = v16;
    v17[1] = v15;
    v17[2] = a1;
    v17[3] = a2;
    v17[4] = a3;
    v17[5] = a4;
    sub_1C97DA91C();

    return v18();
  }
}

uint64_t sub_1C989081C()
{
  sub_1C97AA884();
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);

  sub_1C97AA780(v2, v1);
  sub_1C97DA91C();

  return v3();
}

uint64_t sub_1C9890888(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1C97DA66C();
}

uint64_t sub_1C989089C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  sub_1C97DA2E8(v5, v6);
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];

  sub_1C97A8F30(v7, v8, v9, v10);

  *&v11 = v5;
  *(&v11 + 1) = v6;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  *v2 = v11;
  *(v2 + 16) = v12;
  *(v2 + 32) = v9;
  *(v2 + 40) = v10;
  sub_1C97DA91C();

  return v13();
}

uint64_t sub_1C9890968()
{

  return v0;
}

uint64_t sub_1C9890A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  return a11 + 8;
}

void *sub_1C9890AB8(void *a1, void *a2)
{
  sub_1C97A5A8C(a2, a2[3]);
  v4 = sub_1C9890FD4();
  v5(v4);
  if (v26)
  {
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    swift_willThrowTypedImpl();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_1C979B054(&v22, v27);
    sub_1C97A5A8C(v27, v28);
    sub_1C9A47EC4(a1, v6, v7, v8, v9, v10, v11, v12, v21, v22, SBYTE2(v22), SBYTE3(v22), SDWORD1(v22), *(&v22 + 1), v23, v24, v25, v26, v27[0], v27[1], v27[2], v28, v29);
    if (!v2)
    {
      v15 = v13;
      sub_1C9890FF0(v13, v14);
      sub_1C98719F4();
      v16 = swift_allocObject();
      v17 = sub_1C979B054(&v22, v16 + 16);
      *(v16 + 56) = v15;
      sub_1C9890FF0(v17, v18);
      sub_1C98719F4();
      v19 = swift_allocObject();
      sub_1C979B054(&v22, v19 + 16);
      *(v19 + 56) = v15;
      sub_1C97A2CEC(&qword_1EC3CA8A0, &qword_1C9AAB7E8);
      a1 = swift_allocObject();
      a1[2] = sub_1C9890C60;
      a1[3] = v16;
      a1[4] = sub_1C9890CD8;
      a1[5] = v19;
    }

    sub_1C97A592C(v27);
    return a1;
  }

  return result;
}

void *sub_1C9890CF8(void *a1, void *a2)
{
  sub_1C97A5A8C(a2, a2[3]);
  v4 = sub_1C9890FD4();
  v5(v4);
  if (v26)
  {
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    swift_willThrowTypedImpl();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_1C979B054(&v22, v27);
    sub_1C97A5A8C(v27, v28);
    sub_1C9A482F4(a1, v6, v7, v8, v9, v10, v11, v12, v21, v22, SBYTE2(v22), SBYTE3(v22), SDWORD1(v22), *(&v22 + 1), v23, v24, v25, v26, v27[0], v27[1], v27[2], v28, v29);
    if (!v2)
    {
      v15 = v13;
      sub_1C9890FF0(v13, v14);
      sub_1C98719F4();
      v16 = swift_allocObject();
      v17 = sub_1C979B054(&v22, v16 + 16);
      *(v16 + 56) = v15;
      sub_1C9890FF0(v17, v18);
      sub_1C98719F4();
      v19 = swift_allocObject();
      sub_1C979B054(&v22, v19 + 16);
      *(v19 + 56) = v15;
      sub_1C97A2CEC(&qword_1EC3CA8A0, &qword_1C9AAB7E8);
      a1 = swift_allocObject();
      a1[2] = sub_1C9890F00;
      a1[3] = v16;
      a1[4] = sub_1C9890FB4;
      a1[5] = v19;
    }

    sub_1C97A592C(v27);
    return a1;
  }

  return result;
}

uint64_t sub_1C9890EA0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, _BYTE *a4@<X8>)
{
  sub_1C97A5A8C(a1, a1[3]);
  result = a3(a2);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C9890F78()
{
  sub_1C97A592C((v0 + 16));

  sub_1C98719F4();

  return swift_deallocObject();
}

uint64_t sub_1C9890FF0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);

  return sub_1C97D9AF8(va1, va);
}

double sub_1C9891044@<D0>(_OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1C9A92478();
  v7 = [v4 valueForEntitlement_];

  if (v7)
  {
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

_BYTE *sub_1C989115C(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C9891208()
{
  result = qword_1EC3CA8A8;
  if (!qword_1EC3CA8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA8A8);
  }

  return result;
}

uint64_t sub_1C9891260(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CA8C0, &unk_1C9AABA58);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9892598();
  sub_1C9A93DD8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C9891374(uint64_t a1)
{
  v2 = sub_1C9892598();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98913B0(uint64_t a1)
{
  v2 = sub_1C9892598();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1C9891404(double a1)
{
  v1 = type metadata accessor for SNDiscoverFileServerRequest(a1);
  v4.receiver = objc_allocWithZone(v1);
  v4.super_class = v1;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v2;
}

uint64_t (*sub_1C9891490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v35 = a3;
  v36 = a2;
  v10 = sub_1C97A2CEC(&qword_1EC3CA8D0, &qword_1C9AA47B0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v37 = &v34 - v11;
  v12 = [objc_allocWithZone(MEMORY[0x1E69C6B70]) init];
  [v12 setDispatchQueue_];
  sub_1C97AA878();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v42 = sub_1C98925EC;
  v43 = v13;
  sub_1C98929AC();
  v39 = 1107296256;
  v40 = sub_1C98E5C5C;
  v41 = &unk_1F4937BE8;
  v14 = _Block_copy(&aBlock);

  [v12 setInterruptionHandler_];
  _Block_release(v14);
  v42 = sub_1C9891A0C;
  v43 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v39 = 1107296256;
  v40 = sub_1C98E5C5C;
  v41 = &unk_1F4937C10;
  v15 = _Block_copy(&aBlock);
  [v12 setInvalidationHandler_];
  _Block_release(v15);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a4;
  v17[4] = a5;
  sub_1C97AA878();
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  v42 = sub_1C989260C;
  v43 = v17;
  aBlock = MEMORY[0x1E69E9820];
  sub_1C9892998();
  v40 = v19;
  v41 = &unk_1F4937CB0;
  v20 = _Block_copy(&aBlock);
  swift_retain_n();

  [v12 setLocalDeviceUpdatedHandler_];
  _Block_release(v20);
  v42 = sub_1C9892618;
  v43 = v18;
  aBlock = MEMORY[0x1E69E9820];
  sub_1C9892998();
  v40 = v21;
  v41 = &unk_1F4937CD8;
  v22 = _Block_copy(&aBlock);

  [v12 setDeviceLostHandler_];
  _Block_release(v22);
  v42 = sub_1C989260C;
  v43 = v17;
  sub_1C98929AC();
  sub_1C9892998();
  v40 = v23;
  v41 = &unk_1F4937D00;
  v24 = _Block_copy(&aBlock);

  [v12 setDeviceFoundHandler_];
  _Block_release(v24);
  v42 = sub_1C9891F30;
  v43 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v39 = 1107296256;
  v40 = sub_1C9892088;
  v41 = &unk_1F4937D28;
  v25 = _Block_copy(&aBlock);
  [v12 setDeviceChangedHandler_];
  _Block_release(v25);
  v26 = sub_1C9A92988();
  sub_1C97ACC50(v37, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v28 = v36;
  v27[4] = v12;
  v27[5] = v28;
  v27[6] = v35;

  v29 = v12;
  sub_1C99A9128();
  v31 = v30;

  sub_1C97AA878();
  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  *(v32 + 24) = v31;

  return sub_1C98926D0;
}

void sub_1C9891968(void (*a1)(void), double a2)
{
  type metadata accessor for SNError(a2);
  v3 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 2, 0, 0xD000000000000028, 0x80000001C9AD7BB0);
  a1();
}

void sub_1C9891A0C()
{
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v0 = sub_1C9A91B58();
  sub_1C97BFF6C(v0, qword_1EC3D3108);
  oslog = sub_1C9A91B38();
  v1 = sub_1C9A92FC8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1C9788000, oslog, v1, "companion service connection invalidated", v2, 2u);
    MEMORY[0x1CCA93280](v2, -1, -1);
  }
}

uint64_t sub_1C9891AF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C97A2CEC(&qword_1EC3CA8D0, &qword_1C9AA47B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = sub_1C9A92988();
    sub_1C97ACC50(v9, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = a1;
    v13[5] = v11;
    v13[6] = a3;
    v13[7] = a4;
    v14 = a1;

    sub_1C99A9128();
  }

  return result;
}

uint64_t sub_1C9891C20(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  type metadata accessor for SNFileSharingUtils(a1);
  v11 = swift_task_alloc();
  v8[8] = v11;
  *v11 = v8;
  v11[1] = sub_1C9891CDC;

  return sub_1C983FFEC(a5, a6, 1.0);
}

uint64_t sub_1C9891CDC()
{
  sub_1C97AA884();
  *(*v0 + 72) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C9891DD8, 0, 0);
}

uint64_t sub_1C9891DD8(double a1)
{
  v2 = v1[9];
  if (v2)
  {
    v3 = v1[6];
    v4 = type metadata accessor for SNFileServerDiscoveryResult(a1);
    v1[2] = v2;
    v1[5] = v4;
    v5 = v2;
    v3(v1 + 2);

    sub_1C97A592C(v1 + 2);
  }

  sub_1C97DA91C();

  return v6();
}

uint64_t sub_1C9891E74(void *a1, void (*a2)(void *), double a3)
{
  type metadata accessor for SNFileSharingUtils(a3);
  v5 = sub_1C983FA80(1, a1);
  v9[3] = type metadata accessor for SNFileServerDiscoveryResult(v6);
  v9[0] = v5;
  v7 = v5;
  a2(v9);

  return sub_1C97A592C(v9);
}

void sub_1C9891F30(void *a1, int a2)
{
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v4 = sub_1C9A91B58();
  sub_1C97BFF6C(v4, qword_1EC3D3108);
  v5 = a1;
  oslog = sub_1C9A91B38();
  v6 = sub_1C9A92FC8();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v5;
    *v8 = v5;
    *(v7 + 12) = 1024;
    *(v7 + 14) = a2;
    v9 = v5;
    _os_log_impl(&dword_1C9788000, oslog, v6, "device updated: %@ with changes: %u", v7, 0x12u);
    sub_1C97BFFA4(v8);
    MEMORY[0x1CCA93280](v8, -1, -1);
    MEMORY[0x1CCA93280](v7, -1, -1);
  }
}

void sub_1C9892088(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1C98920FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C9892120, 0, 0);
}

uint64_t sub_1C9892120()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1C9892234;
  v2 = swift_continuation_init();
  v0[17] = sub_1C97A2CEC(&qword_1EC3CA050, &qword_1C9AA94A0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C9A1E374;
  v0[13] = &unk_1F4937DA0;
  v0[14] = v2;
  [v1 activateWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C9892234()
{
  sub_1C97AA884();
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1C98923A0;
  }

  else
  {
    v2 = sub_1C9892340;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C9892340()
{
  sub_1C97AA884();
  (*(v0 + 152))(0);
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C98923A0(uint64_t a1)
{
  v2 = *(v1 + 168);
  v3 = *(v1 + 152);
  swift_willThrow();
  v4 = v2;
  v3(v2);

  sub_1C97DA91C();

  return v5();
}

uint64_t sub_1C9892438(void *a1, uint64_t a2)
{
  [a1 invalidate];

  return sub_1C9A92A28();
}

id SNDiscoverFileServerRequest.__deallocating_deinit(double a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SNDiscoverFileServerRequest(a1);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1C9892544()
{
  result = qword_1EC3CA8B8;
  if (!qword_1EC3CA8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA8B8);
  }

  return result;
}

unint64_t sub_1C9892598()
{
  result = qword_1EC3CA8C8;
  if (!qword_1EC3CA8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA8C8);
  }

  return result;
}

uint64_t sub_1C98925F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C9892620()
{
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = sub_1C98929C8(v3);

  return sub_1C98920FC(v4, v5, v6, v7, v8, v2);
}

uint64_t sub_1C9892704()
{
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = sub_1C98929C8(v4);

  return sub_1C9891C20(v10, v5, v6, v7, v8, v9, v3, v2);
}

uint64_t sub_1C98927C0()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

unint64_t sub_1C98928C0()
{
  result = qword_1EC3CA8D8;
  if (!qword_1EC3CA8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA8D8);
  }

  return result;
}

unint64_t sub_1C9892918()
{
  result = qword_1EC3CA8E0;
  if (!qword_1EC3CA8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA8E0);
  }

  return result;
}

BOOL sub_1C98929E8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1C9A93B18() & 1) == 0 || ((*(a1 + 16) ^ *(a2 + 16)) & 1) != 0)
  {
    return 0;
  }

  v6 = *(a1 + 40);
  v7 = *(a2 + 40);
  if (v6 != 254)
  {
    if (v6 == 255)
    {
      if (v7 == 255)
      {
        return 1;
      }
    }

    else if (v7 <= 0xFD && *(a1 + 24) == *(a2 + 24))
    {
      v9 = a1[4];
      v10 = *(a2 + 32);
      if (*(a1 + 40))
      {
        if (v6 == 1)
        {
          if (v7 == 1 && (sub_1C9808E6C(v9, v10) & 1) != 0)
          {
            return 1;
          }
        }

        else if (v7 == 2 && !v10)
        {
          return 1;
        }
      }

      else if (!*(a2 + 40) && (sub_1C9808DF8(v9, v10) & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return v7 == 254;
}

uint64_t sub_1C9892AD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C616E6F6974706FLL && a2 == 0xE800000000000000;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x69617274736E6F63 && a2 == 0xEA0000000000746ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

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

uint64_t sub_1C9892BEC(char a1)
{
  if (!a1)
  {
    return 1701667182;
  }

  if (a1 == 1)
  {
    return 0x6C616E6F6974706FLL;
  }

  return 0x69617274736E6F63;
}

uint64_t sub_1C9892C40(void *a1)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CA928, &qword_1C9AABEC8);
  sub_1C97AE9C8();
  v6 = v5;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEA4C();
  sub_1C97BE20C(a1, a1[3]);
  sub_1C9897708();
  sub_1C9A93DD8();
  sub_1C9A939C8();
  if (!v1)
  {
    sub_1C9899580();
    sub_1C9A939D8();
    sub_1C98977B0();
    sub_1C9899580();
    sub_1C9A93A18();
  }

  return (*(v6 + 8))(v2, v4);
}

void sub_1C9892DC8(uint64_t a1)
{
  v2 = v1;
  sub_1C9A92528();
  sub_1C9A93CE8();
  v4 = *(v2 + 40);
  if (v4 == 254)
  {
    v5 = 2;
    goto LABEL_5;
  }

  if (v4 == 255)
  {
    v5 = 1;
LABEL_5:
    MEMORY[0x1CCA91980](v5);
    return;
  }

  v6 = *(v2 + 32);
  v7 = *(v2 + 24);
  MEMORY[0x1CCA91980](0);

  sub_1C9893FFC(a1, v7, v6, v4);
}

uint64_t sub_1C9892E6C(uint64_t a1)
{
  sub_1C97BE32C(a1);
  sub_1C9892DC8(v2);
  return sub_1C9A93D18();
}

void sub_1C9892EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C97AEB94();
  v26 = v25;
  v28 = v27;
  sub_1C97A2CEC(&qword_1EC3CA910, &qword_1C9AABEC0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C98021C4();
  sub_1C97BE20C(v26, v26[3]);
  sub_1C9897708();
  sub_1C9A93DB8();
  if (v24)
  {
    sub_1C97A592C(v26);
  }

  else
  {
    sub_1C989958C();
    v30 = sub_1C9A938A8();
    v32 = v31;
    LOBYTE(v35) = 1;
    sub_1C989958C();
    v38 = sub_1C9A938B8();
    sub_1C989775C();
    sub_1C9A938F8();
    v33 = sub_1C97FB2B8();
    v34(v33);
    sub_1C97A592C(v26);
    *v28 = v30;
    *(v28 + 8) = v32;
    *(v28 + 16) = v38 & 1;
    *(v28 + 24) = v35;
    *(v28 + 32) = v36;
    *(v28 + 40) = v37;
  }

  sub_1C97AEB5C();
}

uint64_t sub_1C989307C(uint64_t a1, uint64_t a2, unsigned __int8 a3, unsigned __int8 a4, uint64_t a5, unsigned __int8 a6)
{
  if (a3 == 254)
  {
    if (a6 == 254)
    {
      return 1;
    }
  }

  else if (a3 == 255)
  {
    if (a6 == 0xFF)
    {
      return 1;
    }
  }

  else if (a6 <= 0xFDu && a4 == a1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (a6 == 1)
        {
          v7 = sub_1C9899574(a1, a2);
          if (sub_1C9808E6C(v7, v8))
          {
            return 1;
          }
        }
      }

      else if (a6 == 2 && !a5)
      {
        return 1;
      }
    }

    else if (!a6)
    {
      v9 = sub_1C9899574(a1, a2);
      if (sub_1C9808DF8(v9, v10))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C9893138(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72724169746C756DLL && a2 == 0xEA00000000007961;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x616E6F6974636964 && a2 == 0xEA00000000007972;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

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

uint64_t sub_1C9893250(char a1)
{
  if (!a1)
  {
    return 0x72724169746C756DLL;
  }

  if (a1 == 1)
  {
    return 0x616E6F6974636964;
  }

  return 0x676E69727473;
}

void sub_1C98932A8()
{
  sub_1C97AEB94();
  v34 = v2;
  v32 = v3;
  v33 = v4;
  v6 = v5;
  sub_1C97A2CEC(&qword_1EC3CA980, &qword_1C9AABEF8);
  sub_1C97AE9C8();
  v30 = v8;
  v31 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97AC02C();
  v29 = v10;
  sub_1C97A2CEC(&qword_1EC3CA988, &qword_1C9AABF00);
  sub_1C97AE9C8();
  v27 = v12;
  v28 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = sub_1C97A2CEC(&qword_1EC3CA990, &qword_1C9AABF08);
  sub_1C97AE9C8();
  v26 = v17;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C98550DC();
  v19 = sub_1C97A2CEC(&qword_1EC3CA998, &qword_1C9AABF10);
  sub_1C97AE9C8();
  v21 = v20;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C97E86E4();
  sub_1C97BE20C(v6, v6[3]);
  sub_1C9897804();
  v23 = v34;
  sub_1C9A93DD8();
  if (v23 == 254)
  {
    v35 = 2;
    sub_1C9897858();
    v15 = v29;
    sub_1C98994B0();
    sub_1C9A93988();
    v25 = v30;
    v24 = v31;
  }

  else
  {
    if (v23 != 255)
    {
      v35 = 0;
      sub_1C9897900();
      sub_1C98994B0();
      sub_1C9A93988();
      v35 = v32;
      v36 = v33;
      LOBYTE(v37) = v23;
      sub_1C98979A8();
      sub_1C9A93A18();
      (*(v26 + 8))(v0, v16);
      (*(v21 + 8))(v1, v19);
      goto LABEL_7;
    }

    v35 = 1;
    sub_1C98978AC();
    sub_1C98994B0();
    sub_1C9A93988();
    v25 = v27;
    v24 = v28;
  }

  (*(v25 + 8))(v15, v24);
  (*(v21 + 8))(v1, v19);
LABEL_7:
  sub_1C98995A0();
  sub_1C97AEB5C();
}

void sub_1C9893610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 254)
  {
    v5 = 2;
    goto LABEL_5;
  }

  if (a4 == 255)
  {
    v5 = 1;
LABEL_5:
    MEMORY[0x1CCA91980](v5, a2, a3);
    return;
  }

  v6 = a4;
  v8 = a2;
  MEMORY[0x1CCA91980](0);

  sub_1C9893FFC(a1, v8, a3, v6);
}

uint64_t sub_1C98936A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1;
  sub_1C97BE32C(a1);
  if (v3 == 254)
  {
    v6 = 2;
  }

  else
  {
    if (v3 != 255)
    {
      MEMORY[0x1CCA91980](0);
      sub_1C9893FFC(v8, v5, a2, v3);
      return sub_1C9A93D18();
    }

    v6 = 1;
  }

  MEMORY[0x1CCA91980](v6);
  return sub_1C9A93D18();
}

void sub_1C989372C()
{
  sub_1C97AEB94();
  v3 = v2;
  v41 = sub_1C97A2CEC(&qword_1EC3CA938, &qword_1C9AABED0);
  sub_1C97AE9C8();
  v39 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AC02C();
  v40 = v6;
  v38 = sub_1C97A2CEC(&qword_1EC3CA940, &qword_1C9AABED8);
  sub_1C97AE9C8();
  v37 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C98021C4();
  sub_1C97A2CEC(&qword_1EC3CA948, &qword_1C9AABEE0);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97FB2C8();
  v10 = sub_1C97A2CEC(&qword_1EC3CA950, &unk_1C9AABEE8);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97AEA4C();
  sub_1C97BE20C(v3, v3[3]);
  sub_1C9897804();
  sub_1C9A93DB8();
  if (v0)
  {
    goto LABEL_10;
  }

  sub_1C9A93958();
  sub_1C98EE524();
  v13 = v10;
  if (v14 == v12 >> 1)
  {
LABEL_9:
    v25 = sub_1C9A93648();
    sub_1C97A7A80(v25);
    v27 = v26;
    sub_1C97A2CEC(&qword_1EC3C6F20, &qword_1C9AA0D80);
    *v27 = &type metadata for MLFeatureUtils.FeatureConstraint;
    v28 = sub_1C9A93868();
    sub_1C98994EC(v28);
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    swift_unknownObjectRelease();
    v29 = sub_1C9899488();
    v30(v29);
LABEL_10:
    sub_1C97A592C(v3);
    sub_1C98995A0();
    sub_1C97AEB5C();
    return;
  }

  sub_1C9899564();
  if (v16 < (v17 >> 1))
  {
    v20 = *(v19 + v18);
    sub_1C9899554(v15, v17 >> 1, v16, v17, v18);
    sub_1C98EE520();
    v22 = v21;
    v24 = v23;
    swift_unknownObjectRelease();
    if (v22 == v24 >> 1)
    {
      if (v20)
      {
        if (v20 == 1)
        {
          sub_1C98978AC();
          sub_1C98994B0();
          sub_1C9A93858();
          swift_unknownObjectRelease();
          (*(v37 + 8))(v1, v38);
        }

        else
        {
          sub_1C9897858();
          sub_1C98994B0();
          sub_1C9A93858();
          swift_unknownObjectRelease();
          (*(v39 + 8))(v40, v41);
        }

        v31 = sub_1C9899488();
        v32(v31);
      }

      else
      {
        sub_1C9897900();
        sub_1C98994B0();
        sub_1C9A93858();
        sub_1C9897954();
        sub_1C9A938F8();
        swift_unknownObjectRelease();
        v33 = sub_1C98994BC();
        v34(v33);
        v35 = sub_1C98995B8();
        v36(v35, v13);
      }

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  __break(1u);
}

BOOL sub_1C9893CF8(uint64_t a1, uint64_t a2, char a3, unsigned __int8 a4, uint64_t a5, char a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (!a3)
  {
    if (a6)
    {
      return 0;
    }

    v8 = sub_1C9899574(a1, a2);
    return (sub_1C9808DF8(v8, v9) & 1) != 0;
  }

  if (a3 != 1)
  {
    return a6 == 2 && !a5;
  }

  if (a6 == 1)
  {
    v6 = sub_1C9899574(a1, a2);
    if (sub_1C9808E6C(v6, v7))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1C9893D78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570795461746164 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F436570616873 && a2 == 0xEF746E6961727473)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

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

uint64_t sub_1C9893E48(char a1)
{
  if (a1)
  {
    return 0x6E6F436570616873;
  }

  else
  {
    return 0x6570795461746164;
  }
}

void sub_1C9893E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_1C97AEB94();
  v28 = v27;
  v29 = sub_1C97A2CEC(&qword_1EC3CAA38, qword_1C9AAC530);
  sub_1C97AE9C8();
  v31 = v30;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C97AEA4C();
  sub_1C97BE20C(v28, v28[3]);
  sub_1C9897F2C();
  sub_1C9A93DD8();
  sub_1C9898028();
  sub_1C9899580();
  sub_1C9A93A18();
  if (!v25)
  {
    sub_1C989807C();
    sub_1C9899580();
    sub_1C9A93A18();
  }

  (*(v31 + 8))(v26, v29);
  sub_1C97AEB5C();
}

void sub_1C9893FFC(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  MEMORY[0x1CCA91980](a2);
  if (a4)
  {
    if (a4 == 1)
    {
      MEMORY[0x1CCA91980](2);
      sub_1C97BE374();

      sub_1C97C7FD4();
    }

    else
    {
      MEMORY[0x1CCA91980](0);
    }
  }

  else
  {
    MEMORY[0x1CCA91980](1);
    sub_1C97BE374();

    sub_1C97C8084();
  }
}

uint64_t sub_1C98940A4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1C97BE32C(a1);
  MEMORY[0x1CCA91980](v4);
  if (a3)
  {
    if (a3 == 1)
    {
      v5 = MEMORY[0x1CCA91980](2);
      sub_1C98995AC(v5, v6, v7, v8, v9, v10, v11, v12, v22, v23);
      sub_1C97C7FD4();
    }

    else
    {
      MEMORY[0x1CCA91980](0);
    }
  }

  else
  {
    v13 = MEMORY[0x1CCA91980](1);
    sub_1C98995AC(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23);
    sub_1C97C8084();
  }

  return sub_1C9A93D18();
}

uint64_t sub_1C9894138(void *a1)
{
  v3 = sub_1C97A2CEC(&qword_1EC3CAA18, &qword_1C9AAC528);
  sub_1C97AE9C8();
  v5 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97FB2C8();
  sub_1C97BE20C(a1, a1[3]);
  sub_1C9897F2C();
  sub_1C9A93DB8();
  sub_1C9897F80();
  sub_1C98994B0();
  sub_1C9A938F8();
  sub_1C9897FD4();
  sub_1C98994B0();
  sub_1C9A938F8();
  (*(v5 + 8))(v1, v3);
  sub_1C97A592C(a1);
  return v8;
}

uint64_t sub_1C98942F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x363174616F6C66 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x323374616F6C66 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x343674616F6C66 && a2 == 0xE700000000000000;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x3233746E69 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C9A93B18();

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

uint64_t sub_1C989444C(char a1)
{
  result = 0x363174616F6C66;
  switch(a1)
  {
    case 1:
      result = 0x323374616F6C66;
      break;
    case 2:
      result = 0x343674616F6C66;
      break;
    case 3:
      result = 0x3233746E69;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C98944C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C97AEB94();
  a23 = v25;
  a24 = v26;
  v78 = v27;
  sub_1C97A2CEC(&qword_1EC3CAB38, &qword_1C9AAC8B8);
  sub_1C97AE9C8();
  v76 = v29;
  v77 = v28;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C97AC02C();
  v75 = v31;
  sub_1C97A2CEC(&qword_1EC3CAB40, &qword_1C9AAC8C0);
  sub_1C97AE9C8();
  v73 = v33;
  v74 = v32;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C97AC02C();
  v72 = v35;
  sub_1C97A2CEC(&qword_1EC3CAB48, &qword_1C9AAC8C8);
  sub_1C97AE9C8();
  v70 = v37;
  v71 = v36;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C97FB2C8();
  v39 = sub_1C97A2CEC(&qword_1EC3CAB50, &qword_1C9AAC8D0);
  sub_1C97AE9C8();
  v69 = v40;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C97E86E4();
  v42 = sub_1C97A2CEC(&qword_1EC3CAB58, &qword_1C9AAC8D8);
  sub_1C97AE9C8();
  v44 = v43;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v68 - v46;
  v48 = sub_1C97BE374();
  sub_1C97BE20C(v48, v49);
  sub_1C9898424();
  sub_1C9A93DD8();
  switch(v78)
  {
    case 1:
      a12 = 1;
      v62 = sub_1C9898520();
      sub_1C989950C(&type metadata for MLFeatureUtils.MultiArrayDataType.Float32CodingKeys, &a12, v63, v64, v62);
      v65 = sub_1C9899528();
      v67(v65, v66);
      break;
    case 2:
      a13 = 2;
      v53 = sub_1C98984CC();
      v54 = v72;
      sub_1C989950C(&type metadata for MLFeatureUtils.MultiArrayDataType.Float64CodingKeys, &a13, v55, v56, v53);
      v58 = v73;
      v57 = v74;
      goto LABEL_5;
    case 3:
      a14 = 3;
      v59 = sub_1C9898478();
      v54 = v75;
      sub_1C989950C(&type metadata for MLFeatureUtils.MultiArrayDataType.Int32CodingKeys, &a14, v60, v61, v59);
      v58 = v76;
      v57 = v77;
LABEL_5:
      (*(v58 + 8))(v54, v57);
      break;
    default:
      a11 = 0;
      v50 = sub_1C9898574();
      sub_1C989950C(&type metadata for MLFeatureUtils.MultiArrayDataType.Float16CodingKeys, &a11, v51, v52, v50);
      (*(v69 + 8))(v24, v39);
      break;
  }

  (*(v44 + 8))(v47, v42);
  sub_1C97AEB5C();
}

void sub_1C9894860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C97AEB94();
  a23 = v26;
  a24 = v27;
  v29 = v28;
  v63 = sub_1C97A2CEC(&qword_1EC3CAA78, &qword_1C9AAC850);
  sub_1C97AE9C8();
  v60 = v30;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C97AC02C();
  v62 = v32;
  sub_1C97A2CEC(&qword_1EC3CAA80, &qword_1C9AAC858);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C97AC02C();
  sub_1C97A2CEC(&qword_1EC3CAA88, &qword_1C9AAC860);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C97FB2C8();
  v35 = sub_1C97A2CEC(&qword_1EC3CAA90, &qword_1C9AAC868);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C98550DC();
  v37 = sub_1C97A2CEC(&qword_1EC3CAA98, &qword_1C9AAC870);
  sub_1C97AE9C8();
  v61 = v38;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C98021C4();
  sub_1C97BE20C(v29, v29[3]);
  sub_1C9898424();
  sub_1C9A93DB8();
  if (v24)
  {
    goto LABEL_8;
  }

  v64 = v29;
  v40 = v25;
  sub_1C9A93958();
  sub_1C98EE524();
  if (v42 == v41 >> 1)
  {
LABEL_7:
    v56 = sub_1C9A93648();
    sub_1C97A7A80(v56);
    v58 = v57;
    sub_1C97A2CEC(&qword_1EC3C6F20, &qword_1C9AA0D80);
    *v58 = &type metadata for MLFeatureUtils.MultiArrayDataType;
    v59 = sub_1C9A93868();
    sub_1C98994EC(v59);
    (*(*(v56 - 8) + 104))(v58, *MEMORY[0x1E69E6AF8], v56);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v61 + 8))(v40, v37);
    v29 = v64;
LABEL_8:
    sub_1C97A592C(v29);
LABEL_9:
    sub_1C98995A0();
    sub_1C97AEB5C();
    return;
  }

  sub_1C9899564();
  if (v44 < (v45 >> 1))
  {
    v48 = *(v47 + v46);
    sub_1C9899554(v43, v45 >> 1, v44, v45, v46);
    sub_1C98EE520();
    v50 = v49;
    v52 = v51;
    swift_unknownObjectRelease();
    if (v50 == v52 >> 1)
    {
      switch(v48)
      {
        case 1:
          a12 = 1;
          sub_1C9898520();
          sub_1C98994CC(&type metadata for MLFeatureUtils.MultiArrayDataType.Float32CodingKeys, &a12);
          swift_unknownObjectRelease();
          goto LABEL_13;
        case 2:
          a13 = 2;
          sub_1C98984CC();
          sub_1C98994CC(&type metadata for MLFeatureUtils.MultiArrayDataType.Float64CodingKeys, &a13);
          swift_unknownObjectRelease();
LABEL_13:
          v53 = sub_1C9899528();
          goto LABEL_14;
        case 3:
          a14 = 3;
          sub_1C9898478();
          sub_1C9A93858();
          swift_unknownObjectRelease();
          (*(v60 + 8))(v62, v63);
          goto LABEL_15;
        default:
          a11 = 0;
          sub_1C9898574();
          sub_1C98994CC(&type metadata for MLFeatureUtils.MultiArrayDataType.Float16CodingKeys, &a11);
          swift_unknownObjectRelease();
          v53 = sub_1C9899528();
          v55 = v35;
LABEL_14:
          v54(v53, v55);
LABEL_15:
          (*(v61 + 8))(v40, v37);
          sub_1C97A592C(v64);
          break;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1C9894DEC(int64x2_t *a1, char a2, int64x2_t *a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        return sub_1C9808E6C(a1, a3);
      }
    }

    else if (a4 == 2 && !a3)
    {
      return 1;
    }
  }

  else if (!a4)
  {
    return sub_1C9808DF8(a1, a3);
  }

  return 0;
}

uint64_t sub_1C9894E40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6669636570736E75 && a2 == 0xEB00000000646569;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746172656D756E65 && a2 == 0xEA00000000006465)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

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

uint64_t sub_1C9894F58(char a1)
{
  if (!a1)
  {
    return 0x6669636570736E75;
  }

  if (a1 == 1)
  {
    return 0x65676E6172;
  }

  return 0x746172656D756E65;
}

void sub_1C9894FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  v53 = v21;
  v52 = v22;
  v24 = v23;
  sub_1C97A2CEC(&qword_1EC3CAB60, &qword_1C9AAC8E0);
  sub_1C97AE9C8();
  v50 = v26;
  v51 = v25;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C97AC02C();
  v49 = v28;
  sub_1C97A2CEC(&qword_1EC3CAB68, &qword_1C9AAC8E8);
  sub_1C97AE9C8();
  v47 = v30;
  v48 = v29;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v46 - v32;
  v34 = sub_1C97A2CEC(&qword_1EC3CAB70, &qword_1C9AAC8F0);
  sub_1C97AE9C8();
  v46[1] = v35;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C97FB2C8();
  v37 = sub_1C97A2CEC(&qword_1EC3CAB78, &qword_1C9AAC8F8);
  sub_1C97AE9C8();
  v39 = v38;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C98550DC();
  sub_1C97BE20C(v24, v24[3]);
  sub_1C98985C8();
  sub_1C9A93DD8();
  if (v53)
  {
    if (v53 != 1)
    {
      sub_1C98987C8();
      sub_1C98994B0();
      sub_1C9A93988();
      v44 = sub_1C9899528();
      v45(v44, v34);
      (*(v39 + 8))(v20, v37);
      goto LABEL_7;
    }

    sub_1C989861C();
    v41 = v49;
    sub_1C98994B0();
    sub_1C9A93988();
    sub_1C97A2CEC(&qword_1EC3CAAF8, &unk_1C9AAC898);
    sub_1C989881C(&qword_1EC3CAB80, &qword_1EC3CAB88, MEMORY[0x1E69E6538], MEMORY[0x1E69E6300]);
    v42 = v51;
    sub_1C9A93A18();
    (*(v50 + 8))(v41, v42);
  }

  else
  {
    sub_1C9898670();
    sub_1C98994B0();
    sub_1C9A93988();
    sub_1C97A2CEC(&qword_1EC3CAB10, &qword_1C9AAC8A8);
    sub_1C9898904();
    v43 = v48;
    sub_1C9A93A18();
    (*(v47 + 8))(v33, v43);
  }

  (*(v39 + 8))(v20, v37);
LABEL_7:
  sub_1C98995A0();
  sub_1C97AEB5C();
}

void sub_1C98953A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x1CCA91980](2, a2);
      sub_1C97BE374();

      sub_1C97C7FD4();
    }

    else
    {
      MEMORY[0x1CCA91980](0, a2);
    }
  }

  else
  {
    MEMORY[0x1CCA91980](1, a2);
    sub_1C97BE374();

    sub_1C97C8084();
  }
}

uint64_t sub_1C9895434(uint64_t a1, char a2)
{
  sub_1C97BE32C(a1);
  if (a2)
  {
    if (a2 == 1)
    {
      v3 = MEMORY[0x1CCA91980](2);
      sub_1C98995AC(v3, v4, v5, v6, v7, v8, v9, v10, v20, v21);
      sub_1C97C7FD4();
    }

    else
    {
      MEMORY[0x1CCA91980](0);
    }
  }

  else
  {
    v11 = MEMORY[0x1CCA91980](1);
    sub_1C98995AC(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21);
    sub_1C97C8084();
  }

  return sub_1C9A93D18();
}

void sub_1C98954B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C97AEB94();
  v23 = v22;
  sub_1C97A2CEC(&qword_1EC3CAAC8, &qword_1C9AAC878);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C97AC02C();
  v61 = sub_1C97A2CEC(&qword_1EC3CAAD0, &qword_1C9AAC880);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C97FB2C8();
  v26 = sub_1C97A2CEC(&qword_1EC3CAAD8, &qword_1C9AAC888);
  sub_1C97AE9C8();
  v60 = v27;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C97E86E4();
  v29 = sub_1C97A2CEC(&qword_1EC3CAAE0, &qword_1C9AAC890);
  sub_1C97AE9C8();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C98550DC();
  sub_1C97BE20C(v23, v23[3]);
  sub_1C98985C8();
  sub_1C9A93DB8();
  if (v20)
  {
    goto LABEL_9;
  }

  sub_1C9A93958();
  sub_1C98EE524();
  if (v32 == v31 >> 1)
  {
LABEL_8:
    v43 = sub_1C9A93648();
    sub_1C97A7A80(v43);
    v45 = v44;
    sub_1C97A2CEC(&qword_1EC3C6F20, &qword_1C9AA0D80);
    *v45 = &type metadata for MLFeatureUtils.ShapeConstraint;
    v46 = sub_1C9A93868();
    sub_1C98994EC(v46);
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
    swift_willThrow();
    swift_unknownObjectRelease();
    v47 = sub_1C97BE374();
    v48(v47);
LABEL_9:
    v49 = v23;
    goto LABEL_10;
  }

  sub_1C9899564();
  if (v34 < (v35 >> 1))
  {
    v38 = *(v37 + v36);
    sub_1C9899554(v33, v35 >> 1, v34, v35, v36);
    sub_1C98EE520();
    v40 = v39;
    v42 = v41;
    swift_unknownObjectRelease();
    if (v40 == v42 >> 1)
    {
      if (!v38)
      {
        sub_1C98987C8();
        sub_1C9899544();
        sub_1C9A93858();
        swift_unknownObjectRelease();
        (*(v60 + 8))(v21, v26);
        v50 = sub_1C989949C();
        v51(v50);
        goto LABEL_13;
      }

      if (v38 == 1)
      {
        sub_1C9898670();
        sub_1C9899544();
        sub_1C9A93858();
        sub_1C97A2CEC(&qword_1EC3CAB10, &qword_1C9AAC8A8);
        sub_1C98986C4();
        sub_1C9A938F8();
        swift_unknownObjectRelease();
        v52 = sub_1C9899528();
        v53(v52, v61);
        v54 = sub_1C989949C();
        v55(v54);
LABEL_13:
        v49 = v23;
        goto LABEL_10;
      }

      sub_1C989861C();
      sub_1C9899544();
      sub_1C9A93858();
      v49 = v23;
      sub_1C97A2CEC(&qword_1EC3CAAF8, &unk_1C9AAC898);
      sub_1C989881C(&qword_1EC3CAB00, &qword_1EC3CE720, MEMORY[0x1E69E6560], MEMORY[0x1E69E6330]);
      sub_1C9A938F8();
      swift_unknownObjectRelease();
      v56 = sub_1C98994BC();
      v57(v56);
      v58 = sub_1C98995B8();
      v59(v58, v29);
LABEL_10:
      sub_1C97A592C(v49);
      sub_1C97AEB5C();
      return;
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1C9895B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9892AD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9895B94(uint64_t a1)
{
  v2 = sub_1C9897708();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9895BD0(uint64_t a1)
{
  v2 = sub_1C9897708();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9895C70()
{
  sub_1C9A93CC8();
  sub_1C9892DC8(v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C9895CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9893138(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9895CE0(uint64_t a1)
{
  v2 = sub_1C9897804();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9895D1C(uint64_t a1)
{
  v2 = sub_1C9897804();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9895D58(uint64_t a1)
{
  v2 = sub_1C98978AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9895D94(uint64_t a1)
{
  v2 = sub_1C98978AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9895DD0(uint64_t a1)
{
  v2 = sub_1C9897900();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9895E0C(uint64_t a1)
{
  v2 = sub_1C9897900();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9895E48(uint64_t a1)
{
  v2 = sub_1C9897858();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9895E84(uint64_t a1)
{
  v2 = sub_1C9897858();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C9895EC0(uint64_t a1@<X8>)
{
  sub_1C989372C();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
  }
}

uint64_t sub_1C9895F28()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1C9A93CC8();
  sub_1C9893610(v5, v1, v2, v3);
  return sub_1C9A93D18();
}

uint64_t sub_1C9895FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C9896008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9893D78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9896030(uint64_t a1)
{
  v2 = sub_1C9897F2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C989606C(uint64_t a1)
{
  v2 = sub_1C9897F2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98960A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C9894138(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1C9896120()
{
  v1 = *v0;
  v2 = v0[16];
  sub_1C9A93CC8();
  MEMORY[0x1CCA91980](v1);
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x1CCA91980](2);
      sub_1C97C7FD4();
    }

    else
    {
      MEMORY[0x1CCA91980](0);
    }
  }

  else
  {
    MEMORY[0x1CCA91980](1);
    sub_1C97C8084();
  }

  return sub_1C9A93D18();
}

uint64_t sub_1C98961E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98942F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C989620C(uint64_t a1)
{
  v2 = sub_1C9898424();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9896248(uint64_t a1)
{
  v2 = sub_1C9898424();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9896284(uint64_t a1)
{
  v2 = sub_1C9898574();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98962C0(uint64_t a1)
{
  v2 = sub_1C9898574();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98962FC(uint64_t a1)
{
  v2 = sub_1C9898520();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9896338(uint64_t a1)
{
  v2 = sub_1C9898520();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9896374(uint64_t a1)
{
  v2 = sub_1C98984CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98963B0(uint64_t a1)
{
  v2 = sub_1C98984CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98963EC(uint64_t a1)
{
  v2 = sub_1C9898478();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9896428(uint64_t a1)
{
  v2 = sub_1C9898478();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98964C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

uint64_t sub_1C9896518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9894E40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9896540(uint64_t a1)
{
  v2 = sub_1C98985C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C989657C(uint64_t a1)
{
  v2 = sub_1C98985C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98965B8(uint64_t a1)
{
  v2 = sub_1C989861C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98965F4(uint64_t a1)
{
  v2 = sub_1C989861C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9896630(uint64_t a1)
{
  v2 = sub_1C9898670();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C989666C(uint64_t a1)
{
  v2 = sub_1C9898670();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98966A8(uint64_t a1)
{
  v2 = sub_1C98987C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98966E4(uint64_t a1)
{
  v2 = sub_1C98987C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9896788()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1C9A93CC8();
  sub_1C98953A8(v4, v1, v2);
  return sub_1C9A93D18();
}

id sub_1C98967EC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C9A92478();
  v5 = [a1 featureValueForName_];

  if (!v5)
  {
    sub_1C97A8E8C();
    sub_1C97A7A80(&type metadata for OptionalUtils.DomainError);
    *v6 = 0;
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1C989687C(void *a1)
{
  v3 = [a1 inputDescriptionsByName];
  sub_1C97BD318(v4, 0, &qword_1EC3C54D0, 0x1E695FE50);
  v5 = sub_1C9A92328();

  v6 = sub_1C98969A4(v5);

  if (!v1)
  {
    v7 = [a1 outputDescriptionsByName];
    v8 = sub_1C9A92328();

    sub_1C98969A4(v8);
  }

  return v6;
}

uint64_t sub_1C98969A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v30 = MEMORY[0x1E69E7CC0];
  sub_1C97B8118(0, v2, 0);
  v3 = v30;
  result = sub_1C9887A94();
  v6 = result;
  v8 = v7;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    if (((*(a1 + 64 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      goto LABEL_23;
    }

    if (*(a1 + 36) != v8)
    {
      goto LABEL_24;
    }

    v9 = (*(a1 + 48) + 16 * v6);
    v10 = *v9;
    v11 = v9[1];
    v12 = *(*(a1 + 56) + 8 * v6);
    swift_bridgeObjectRetain_n();
    v13 = v12;
    sub_1C9896C4C();
    if (v1)
    {

      swift_bridgeObjectRelease_n();
      return v3;
    }

    v29 = v25;
    if (v10 == v25 && v11 == *(&v25 + 1))
    {

      swift_bridgeObjectRelease_n();
    }

    else
    {
      v15 = sub_1C9A93B18();

      if ((v15 & 1) == 0)
      {
        sub_1C9875E1C(&v29);
        v27 = *&v26[8];
        v28 = v26[24];
        sub_1C98973C4(&v27);
        type metadata accessor for SNError(v21);
        sub_1C98573F8();
        sub_1C9820900(v23, v22 | 8, v24);
        swift_willThrow();

        return v3;
      }
    }

    v30 = v3;
    v17 = *(v3 + 16);
    v16 = *(v3 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1C97B8118((v16 > 1), v17 + 1, 1);
      v3 = v30;
    }

    *(v3 + 16) = v17 + 1;
    v18 = (v3 + 48 * v17);
    *(v18 + 57) = *&v26[9];
    v18[2] = v25;
    v18[3] = *v26;
    result = sub_1C9887A8C();
    v6 = result;
    v8 = v19;
    if (!--v2)
    {
      sub_1C97FDD94(result, v19, v20 & 1);
      return v3;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_1C9896C4C()
{
  sub_1C97AEB94();
  v2 = v1;
  v4 = v3;
  v5 = [v1 type];
  if (v5 == 3)
  {
    v15 = 0;
    v12 = 0;
    v14 = -2;
    goto LABEL_9;
  }

  if (v5 == 6)
  {
    v15 = 0;
    v12 = 0;
    v14 = -1;
    goto LABEL_9;
  }

  if (v5 != 5)
  {
    type metadata accessor for SNError(v6);
    sub_1C98573F8();
    sub_1C9820900(v22, v21 + 1, v23);
LABEL_12:
    swift_willThrow();
    goto LABEL_13;
  }

  v7 = [v2 multiArrayConstraint];
  if (!v7)
  {
    sub_1C97A8E8C();
    sub_1C97A7A80(&type metadata for OptionalUtils.DomainError);
    *v24 = 0;
    goto LABEL_12;
  }

  v8 = v7;
  sub_1C9896DB8(v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if (!v0)
  {
    v15 = v10;
LABEL_9:
    v16 = [v2 name];
    v17 = sub_1C9A924A8();
    v19 = v18;

    v20 = [v2 isOptional];
    *v4 = v17;
    *(v4 + 8) = v19;
    *(v4 + 16) = v20;
    *(v4 + 24) = v15;
    *(v4 + 32) = v12;
    *(v4 + 40) = v14;
  }

LABEL_13:
  sub_1C97AEB5C();
}

void sub_1C9896DB8(void *a1)
{
  v3 = [a1 shapeConstraint];
  sub_1C9896E54(v3);

  if (!v1)
  {
    sub_1C9897320([a1 dataType]);
  }
}

void sub_1C9896E54(void *a1)
{
  v2 = [a1 type];
  if (v2 == 1)
  {
    return;
  }

  if (v2 != 2)
  {
    if (v2 != 3)
    {
      sub_1C98973F4();
      sub_1C97A7A80(&type metadata for MLFeatureUtils.DomainError);
      *v42 = 1;
      swift_willThrow();
      return;
    }

    v3 = [a1 sizeRangeForDimension];
    sub_1C97BD318(v4, 0, &qword_1EC3C5690, 0x1E696B098);
    v5 = sub_1C9A92798();

    v6 = sub_1C97BDEE0();
    v7 = MEMORY[0x1E69E7CC0];
    if (v6)
    {
      v8 = v6;
      v56 = v5;
      v59 = MEMORY[0x1E69E7CC0];
      sub_1C97B819C(0, v6 & ~(v6 >> 63), 0);
      if (v8 < 0)
      {
        goto LABEL_52;
      }

      v9 = 0;
      v10 = v59;
      v11 = v5 & 0xC000000000000001;
      do
      {
        if (v11)
        {
          v12 = MEMORY[0x1CCA912B0](v9, v5);
        }

        else
        {
          v12 = *(v5 + 8 * v9 + 32);
        }

        v13 = v12;
        v14 = [v12 rangeValue];
        v16 = v15;

        v18 = *(v59 + 16);
        v17 = *(v59 + 24);
        if (v18 >= v17 >> 1)
        {
          v20 = sub_1C9899534(v17);
          sub_1C97B819C(v20, v18 + 1, 1);
          v5 = v56;
        }

        ++v9;
        *(v59 + 16) = v18 + 1;
        v19 = v59 + 16 * v18;
        *(v19 + 32) = v14;
        *(v19 + 40) = v16;
      }

      while (v8 != v9);

      v7 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v10 = MEMORY[0x1E69E7CC0];
    }

    v43 = *(v10 + 16);
    if (v43)
    {
      sub_1C97B8158(0, v43, 0);
      v44 = v7;
      v45 = (v10 + 40);
      do
      {
        v46 = *(v45 - 1);
        v47 = v46 + *v45;
        if (__OFADD__(v46, *v45))
        {
          v47 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else if (v47 < v46)
        {
          goto LABEL_51;
        }

        v49 = *(v44 + 16);
        v48 = *(v44 + 24);
        if (v49 >= v48 >> 1)
        {
          v51 = sub_1C9899534(v48);
          sub_1C97B8158(v51, v49 + 1, 1);
        }

        v45 += 2;
        *(v44 + 16) = v49 + 1;
        v50 = v44 + 16 * v49;
        *(v50 + 32) = v46;
        *(v50 + 40) = v47;
        --v43;
      }

      while (v43);
    }

    goto LABEL_47;
  }

  v21 = [a1 enumeratedShapes];
  sub_1C97A2CEC(&qword_1EC3CBA20, &unk_1C9AA28D0);
  v22 = sub_1C9A92798();

  v23 = *(v22 + 16);
  if (!v23)
  {
LABEL_47:

    return;
  }

  v60 = MEMORY[0x1E69E7CC0];
  sub_1C97B8138(0, v23, 0);
  v24 = 0;
  v25 = v60;
  v53 = v22;
  v54 = v22 + 32;
  v52 = v23;
  while (v24 < *(v22 + 16))
  {
    v26 = *(v54 + 8 * v24);
    if (v26 >> 62)
    {
      v35 = v24;
      v36 = sub_1C9A934C8();
      v24 = v35;
      v27 = v36;
      if (!v36)
      {
LABEL_29:
        v29 = MEMORY[0x1E69E7CC0];
        goto LABEL_30;
      }
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
        goto LABEL_29;
      }
    }

    v55 = v24;
    v57 = v25;
    v58 = MEMORY[0x1E69E7CC0];

    sub_1C97B7C28(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      goto LABEL_50;
    }

    v28 = 0;
    v29 = v58;
    do
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x1CCA912B0](v28, v26);
      }

      else
      {
        v30 = *(v26 + 8 * v28 + 32);
      }

      v31 = v30;
      v32 = [v30 integerValue];

      v34 = *(v58 + 16);
      v33 = *(v58 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1C97B7C28(v33 > 1, v34 + 1, 1);
        v25 = v57;
      }

      ++v28;
      *(v58 + 16) = v34 + 1;
      *(v58 + 8 * v34 + 32) = v32;
    }

    while (v27 != v28);

    v23 = v52;
    v22 = v53;
    v24 = v55;
LABEL_30:
    v38 = *(v25 + 16);
    v37 = *(v25 + 24);
    if (v38 >= v37 >> 1)
    {
      v39 = sub_1C9899534(v37);
      v41 = v40;
      sub_1C97B8138(v39, v38 + 1, 1);
      v24 = v41;
    }

    ++v24;
    *(v25 + 16) = v38 + 1;
    *(v25 + 8 * v38 + 32) = v29;
    if (v24 == v23)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

uint64_t sub_1C9897320(uint64_t a1)
{
  switch(a1)
  {
    case 65552:
      return 0;
    case 131104:
      return 3;
    case 65600:
      return 2;
    case 65568:
      return 1;
  }

  sub_1C98973F4();
  sub_1C97A7A80(&type metadata for MLFeatureUtils.DomainError);
  *v2 = 0;
  return swift_willThrow();
}

unint64_t sub_1C98973F4()
{
  result = qword_1EC3CA8F0;
  if (!qword_1EC3CA8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA8F0);
  }

  return result;
}

uint64_t sub_1C9897458(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1C9897474(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C9897488(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C98974C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C9897534(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 > 2)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C989757C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -2 - a2;
    }
  }

  return result;
}

uint64_t sub_1C98975C8(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 16) = -a2;
  }

  return result;
}

unint64_t sub_1C9897604()
{
  result = qword_1EC3CA8F8;
  if (!qword_1EC3CA8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA8F8);
  }

  return result;
}

unint64_t sub_1C989765C()
{
  result = qword_1EC3CA900;
  if (!qword_1EC3CA900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA900);
  }

  return result;
}

unint64_t sub_1C98976B4()
{
  result = qword_1EC3CA908;
  if (!qword_1EC3CA908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA908);
  }

  return result;
}

unint64_t sub_1C9897708()
{
  result = qword_1EC3CA918;
  if (!qword_1EC3CA918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA918);
  }

  return result;
}

unint64_t sub_1C989775C()
{
  result = qword_1EC3CA920;
  if (!qword_1EC3CA920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA920);
  }

  return result;
}

unint64_t sub_1C98977B0()
{
  result = qword_1EC3CA930;
  if (!qword_1EC3CA930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA930);
  }

  return result;
}

unint64_t sub_1C9897804()
{
  result = qword_1EC3CA958;
  if (!qword_1EC3CA958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA958);
  }

  return result;
}

unint64_t sub_1C9897858()
{
  result = qword_1EC3CA960;
  if (!qword_1EC3CA960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA960);
  }

  return result;
}

unint64_t sub_1C98978AC()
{
  result = qword_1EC3CA968;
  if (!qword_1EC3CA968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA968);
  }

  return result;
}

unint64_t sub_1C9897900()
{
  result = qword_1EC3CA970;
  if (!qword_1EC3CA970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA970);
  }

  return result;
}

unint64_t sub_1C9897954()
{
  result = qword_1EC3CA978;
  if (!qword_1EC3CA978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA978);
  }

  return result;
}

unint64_t sub_1C98979A8()
{
  result = qword_1EC3CA9A0;
  if (!qword_1EC3CA9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA9A0);
  }

  return result;
}

unint64_t sub_1C9897A60()
{
  result = qword_1EC3CA9A8;
  if (!qword_1EC3CA9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA9A8);
  }

  return result;
}

unint64_t sub_1C9897AB8()
{
  result = qword_1EC3CA9B0;
  if (!qword_1EC3CA9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA9B0);
  }

  return result;
}

unint64_t sub_1C9897B10()
{
  result = qword_1EC3CA9B8;
  if (!qword_1EC3CA9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA9B8);
  }

  return result;
}

unint64_t sub_1C9897B68()
{
  result = qword_1EC3CA9C0;
  if (!qword_1EC3CA9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA9C0);
  }

  return result;
}

unint64_t sub_1C9897BC0()
{
  result = qword_1EC3CA9C8;
  if (!qword_1EC3CA9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA9C8);
  }

  return result;
}

unint64_t sub_1C9897C18()
{
  result = qword_1EC3CA9D0;
  if (!qword_1EC3CA9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA9D0);
  }

  return result;
}

unint64_t sub_1C9897C70()
{
  result = qword_1EC3CA9D8;
  if (!qword_1EC3CA9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA9D8);
  }

  return result;
}

unint64_t sub_1C9897CC8()
{
  result = qword_1EC3CA9E0;
  if (!qword_1EC3CA9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA9E0);
  }

  return result;
}

unint64_t sub_1C9897D20()
{
  result = qword_1EC3CA9E8;
  if (!qword_1EC3CA9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA9E8);
  }

  return result;
}

unint64_t sub_1C9897D78()
{
  result = qword_1EC3CA9F0;
  if (!qword_1EC3CA9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA9F0);
  }

  return result;
}

unint64_t sub_1C9897DD0()
{
  result = qword_1EC3CA9F8;
  if (!qword_1EC3CA9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA9F8);
  }

  return result;
}

unint64_t sub_1C9897E28()
{
  result = qword_1EC3CAA00;
  if (!qword_1EC3CAA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAA00);
  }

  return result;
}

unint64_t sub_1C9897E80()
{
  result = qword_1EC3CAA08;
  if (!qword_1EC3CAA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAA08);
  }

  return result;
}

unint64_t sub_1C9897ED8()
{
  result = qword_1EC3CAA10;
  if (!qword_1EC3CAA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAA10);
  }

  return result;
}

unint64_t sub_1C9897F2C()
{
  result = qword_1EC3CAA20;
  if (!qword_1EC3CAA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAA20);
  }

  return result;
}

unint64_t sub_1C9897F80()
{
  result = qword_1EC3CAA28;
  if (!qword_1EC3CAA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAA28);
  }

  return result;
}

unint64_t sub_1C9897FD4()
{
  result = qword_1EC3CAA30;
  if (!qword_1EC3CAA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAA30);
  }

  return result;
}

unint64_t sub_1C9898028()
{
  result = qword_1EC3CAA40;
  if (!qword_1EC3CAA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAA40);
  }

  return result;
}

unint64_t sub_1C989807C()
{
  result = qword_1EC3CAA48;
  if (!qword_1EC3CAA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAA48);
  }

  return result;
}

_BYTE *sub_1C98980D0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1C97BE3E4(result, v6);
        break;
      case 2:
        result = sub_1C97BE3D4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1C97BE3DC(result, v6);
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
          result = sub_1C97BE280(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C989819C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1C98981B0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C98981F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C9898234(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1C9898270()
{
  result = qword_1EC3CAA50;
  if (!qword_1EC3CAA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAA50);
  }

  return result;
}

unint64_t sub_1C98982C8()
{
  result = qword_1EC3CAA58;
  if (!qword_1EC3CAA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAA58);
  }

  return result;
}

unint64_t sub_1C9898320()
{
  result = qword_1EC3CAA60;
  if (!qword_1EC3CAA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAA60);
  }

  return result;
}

unint64_t sub_1C9898378()
{
  result = qword_1EC3CAA68;
  if (!qword_1EC3CAA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAA68);
  }

  return result;
}

unint64_t sub_1C98983D0()
{
  result = qword_1EC3CAA70;
  if (!qword_1EC3CAA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAA70);
  }

  return result;
}

unint64_t sub_1C9898424()
{
  result = qword_1EC3CAAA0;
  if (!qword_1EC3CAAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAAA0);
  }

  return result;
}

unint64_t sub_1C9898478()
{
  result = qword_1EC3CAAA8;
  if (!qword_1EC3CAAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAAA8);
  }

  return result;
}

unint64_t sub_1C98984CC()
{
  result = qword_1EC3CAAB0;
  if (!qword_1EC3CAAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAAB0);
  }

  return result;
}

unint64_t sub_1C9898520()
{
  result = qword_1EC3CAAB8;
  if (!qword_1EC3CAAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAAB8);
  }

  return result;
}

unint64_t sub_1C9898574()
{
  result = qword_1EC3CAAC0;
  if (!qword_1EC3CAAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAAC0);
  }

  return result;
}

unint64_t sub_1C98985C8()
{
  result = qword_1EC3CAAE8;
  if (!qword_1EC3CAAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAAE8);
  }

  return result;
}

unint64_t sub_1C989861C()
{
  result = qword_1EC3CAAF0;
  if (!qword_1EC3CAAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAAF0);
  }

  return result;
}

unint64_t sub_1C9898670()
{
  result = qword_1EC3CAB08;
  if (!qword_1EC3CAB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAB08);
  }

  return result;
}

unint64_t sub_1C98986C4()
{
  result = qword_1EC3CAB18;
  if (!qword_1EC3CAB18)
  {
    sub_1C97AA4F0(&qword_1EC3CAB10, &qword_1C9AAC8A8);
    sub_1C989876C(&qword_1EC3CAB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAB18);
  }

  return result;
}

uint64_t sub_1C989876C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v3 = sub_1C97AA4F0(&qword_1EC3CAB28, &qword_1C9AAC8B0);
    result = sub_1C97FB3F0(v3);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C98987C8()
{
  result = qword_1EC3CAB30;
  if (!qword_1EC3CAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAB30);
  }

  return result;
}

uint64_t sub_1C989881C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3CAAF8, &unk_1C9AAC898);
    sub_1C98988A8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C98988A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v3 = sub_1C97AA4F0(&unk_1EC3CE7E0, &qword_1C9A9C9B0);
    result = sub_1C97FB3F0(v3);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C9898904()
{
  result = qword_1EC3CAB90;
  if (!qword_1EC3CAB90)
  {
    sub_1C97AA4F0(&qword_1EC3CAB10, &qword_1C9AAC8A8);
    sub_1C989876C(&qword_1EC3CAB98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAB90);
  }

  return result;
}

_BYTE *sub_1C98989AC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1C97BE3E4(result, v6);
        break;
      case 2:
        result = sub_1C97BE3D4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1C97BE3DC(result, v6);
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
          result = sub_1C97BE280(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C9898A98(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C9898B44(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1C97BE3EC(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return sub_1C97BE3EC((*a1 | (v4 << 8)) - 4);
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

      return sub_1C97BE3EC((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1C97BE3EC((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1C97BE3EC(v8);
}

_BYTE *sub_1C9898BC8(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1C97BE3E4(result, v6);
        break;
      case 2:
        result = sub_1C97BE3D4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1C97BE3DC(result, v6);
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
          result = sub_1C97BE280(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9898CD8()
{
  result = qword_1EC3CABA0;
  if (!qword_1EC3CABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CABA0);
  }

  return result;
}

unint64_t sub_1C9898D30()
{
  result = qword_1EC3CABA8;
  if (!qword_1EC3CABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CABA8);
  }

  return result;
}

unint64_t sub_1C9898D88()
{
  result = qword_1EC3CABB0;
  if (!qword_1EC3CABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CABB0);
  }

  return result;
}

unint64_t sub_1C9898DE0()
{
  result = qword_1EC3CABB8;
  if (!qword_1EC3CABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CABB8);
  }

  return result;
}

unint64_t sub_1C9898E38()
{
  result = qword_1EC3CABC0;
  if (!qword_1EC3CABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CABC0);
  }

  return result;
}

unint64_t sub_1C9898E90()
{
  result = qword_1EC3CABC8;
  if (!qword_1EC3CABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CABC8);
  }

  return result;
}

unint64_t sub_1C9898EE8()
{
  result = qword_1EC3CABD0;
  if (!qword_1EC3CABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CABD0);
  }

  return result;
}

unint64_t sub_1C9898F40()
{
  result = qword_1EC3CABD8;
  if (!qword_1EC3CABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CABD8);
  }

  return result;
}

unint64_t sub_1C9898F98()
{
  result = qword_1EC3CABE0;
  if (!qword_1EC3CABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CABE0);
  }

  return result;
}

unint64_t sub_1C9898FF0()
{
  result = qword_1EC3CABE8;
  if (!qword_1EC3CABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CABE8);
  }

  return result;
}

unint64_t sub_1C9899048()
{
  result = qword_1EC3CABF0;
  if (!qword_1EC3CABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CABF0);
  }

  return result;
}

unint64_t sub_1C98990A0()
{
  result = qword_1EC3CABF8;
  if (!qword_1EC3CABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CABF8);
  }

  return result;
}

unint64_t sub_1C98990F8()
{
  result = qword_1EC3CAC00;
  if (!qword_1EC3CAC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAC00);
  }

  return result;
}

unint64_t sub_1C9899150()
{
  result = qword_1EC3CAC08;
  if (!qword_1EC3CAC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAC08);
  }

  return result;
}

unint64_t sub_1C98991A8()
{
  result = qword_1EC3CAC10;
  if (!qword_1EC3CAC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAC10);
  }

  return result;
}

unint64_t sub_1C9899200()
{
  result = qword_1EC3CAC18;
  if (!qword_1EC3CAC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAC18);
  }

  return result;
}

unint64_t sub_1C9899258()
{
  result = qword_1EC3CAC20;
  if (!qword_1EC3CAC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAC20);
  }

  return result;
}

unint64_t sub_1C98992B0()
{
  result = qword_1EC3CAC28;
  if (!qword_1EC3CAC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAC28);
  }

  return result;
}

unint64_t sub_1C9899308()
{
  result = qword_1EC3CAC30;
  if (!qword_1EC3CAC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAC30);
  }

  return result;
}

unint64_t sub_1C9899360()
{
  result = qword_1EC3CAC38;
  if (!qword_1EC3CAC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAC38);
  }

  return result;
}

unint64_t sub_1C98993B8()
{
  result = qword_1EC3CAC40;
  if (!qword_1EC3CAC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAC40);
  }

  return result;
}

unint64_t sub_1C9899410()
{
  result = qword_1EC3CAC48;
  if (!qword_1EC3CAC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAC48);
  }

  return result;
}

uint64_t sub_1C98994CC(uint64_t a1, uint64_t a2)
{

  return sub_1C9A93858();
}

uint64_t sub_1C98994EC(uint64_t a1)
{

  return sub_1C9A93638();
}

uint64_t sub_1C989950C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C9A93988();
}

uint64_t sub_1C98995C4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F72446C65646F6DLL && a2 == 0xEA00000000003770)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C9A93B18();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C9899660(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CAC80, &qword_1C9AAD218);
  sub_1C97AE9C8();
  v4 = v3;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = sub_1C97A2CEC(&qword_1EC3CAC88, &unk_1C9AAD220);
  sub_1C97AE9C8();
  v10 = v9;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C989A4F0();
  sub_1C9A93DD8();
  sub_1C989A544();
  sub_1C9A93988();
  (*(v4 + 8))(v7, v2);
  return (*(v10 + 8))(v13, v8);
}

void sub_1C9899818(void *a1)
{
  v3 = sub_1C97A2CEC(&qword_1EC3CAC60, &qword_1C9AAD200);
  sub_1C97AE9C8();
  v37 = v4;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - v6;
  v8 = sub_1C97A2CEC(&qword_1EC3CAC68, &unk_1C9AAD208);
  sub_1C97AE9C8();
  v38 = v9;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C989A4F0();
  sub_1C9A93DB8();
  if (v1)
  {
    goto LABEL_9;
  }

  v35 = v7;
  v36 = a1;
  v13 = sub_1C9A93958();
  sub_1C98ECCE8(v13, 0);
  v17 = v12;
  if (v15 == v16 >> 1)
  {
    v37 = v14;
LABEL_8:
    v28 = v8;
    v29 = v38;
    v30 = sub_1C9A93648();
    swift_allocError();
    v32 = v31;
    sub_1C97A2CEC(&qword_1EC3C6F20, &qword_1C9AA0D80);
    *v32 = &type metadata for SNLanguageAlignedAVFuser.FuserVersion;
    sub_1C9A93868();
    sub_1C9A93638();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v29 + 8))(v17, v28);
    a1 = v36;
LABEL_9:
    v33 = a1;
    goto LABEL_10;
  }

  if (v15 < (v16 >> 1))
  {
    v18 = sub_1C98EE520();
    v20 = v19;
    v22 = v21;
    swift_unknownObjectRelease();
    v23 = v20 == v22 >> 1;
    v24 = v36;
    v25 = v37;
    if (v23)
    {
      sub_1C989A544();
      v26 = v35;
      sub_1C9A93858();
      v27 = v38;
      swift_unknownObjectRelease();
      (*(v25 + 8))(v26, v3);
      (*(v27 + 8))(v17, v8);
      v33 = v24;
LABEL_10:
      sub_1C97A592C(v33);
      return;
    }

    v37 = v18;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1C9899BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C98995C4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C9899BD4(uint64_t a1)
{
  v2 = sub_1C989A4F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9899C10(uint64_t a1)
{
  v2 = sub_1C989A4F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9899C4C(uint64_t a1)
{
  v2 = sub_1C989A544();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9899C88(uint64_t a1)
{
  v2 = sub_1C989A544();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1C9899D60(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  ObjectType = swift_getObjectType();
  if (a1 != 7 || a2 != 7)
  {
    sub_1C989A5DC();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    return swift_deallocPartialClassInstance();
  }

  v10 = objc_autoreleasePoolPush();
  v11 = objc_autoreleasePoolPush();
  if (qword_1EC3C55D0 != -1)
  {
    swift_once();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = 40;
  v18 = 40;
  MEMORY[0x1EEE9AC00](v12);

  v13 = sub_1C97E2E88();
  if (v3)
  {

    objc_autoreleasePoolPop(v11);
    objc_autoreleasePoolPop(v10);
    return swift_deallocPartialClassInstance();
  }

  v15 = v13;

  objc_autoreleasePoolPop(v11);
  objc_autoreleasePoolPop(v10);
  v16 = &v4[OBJC_IVAR___SNLanguageAlignedAVFuser_model];
  *v16 = v15;
  v16[1] = &off_1F4937390;
  v17.receiver = v4;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_1C9899FF8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1C97A2CEC(&qword_1EC3C69E8, &unk_1C9A9D4A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C9AA3B60;
  *(inited + 32) = 0x6D655F6F69647561;
  *(inited + 40) = 0xEF676E6964646562;
  v8 = objc_opt_self();
  v9 = [v8 featureValueWithMultiArray_];
  v11 = sub_1C989A598(v10);
  *(inited + 48) = v9;
  *(inited + 72) = v11;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x80000001C9AD7C60;
  v12 = [v8 featureValueWithMultiArray_];
  *(inited + 120) = v11;
  *(inited + 96) = v12;
  v13 = sub_1C9A92348();
  v14 = objc_allocWithZone(MEMORY[0x1E695FE48]);
  v15 = sub_1C98B6EC8(v13);
  if (!v3)
  {
    v16 = v15;
    v17 = *(v4 + OBJC_IVAR___SNLanguageAlignedAVFuser_model + 8);
    ObjectType = swift_getObjectType();
    v19 = objc_allocWithZone(MEMORY[0x1E695FF08]);
    v20 = v16;
    v21 = [v19 init];
    v22 = (*(v17 + 24))(v20, v21, ObjectType, v17);

    v23 = [v22 featureNames];
    v24 = sub_1C9A92B28();

    v9 = sub_1C98BBD24(v24);
    v26 = v25;

    if (v26 && (v9 = sub_1C9A92478(), , v27 = [v22 featureValueForName_], v9, v27) && (v9 = objc_msgSend(v27, sel_multiArrayValue), v27, v9))
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1C989A5DC();
      swift_allocError();
      *v28 = 2;
      swift_willThrow();

      swift_unknownObjectRelease();
    }
  }

  return v9;
}

id SNLanguageAlignedAVFuser.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C989A49C()
{
  result = qword_1EC3CAC58;
  if (!qword_1EC3CAC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAC58);
  }

  return result;
}

unint64_t sub_1C989A4F0()
{
  result = qword_1EC3CAC70;
  if (!qword_1EC3CAC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAC70);
  }

  return result;
}

unint64_t sub_1C989A544()
{
  result = qword_1EC3CAC78;
  if (!qword_1EC3CAC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAC78);
  }

  return result;
}

unint64_t sub_1C989A598(double a1)
{
  result = qword_1EC3C54F8;
  if (!qword_1EC3C54F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC3C54F8);
  }

  return result;
}

unint64_t sub_1C989A5DC()
{
  result = qword_1EC3CAC90;
  if (!qword_1EC3CAC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAC90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SNLanguageAlignedAVFuser.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C989A70C(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C989A7CC()
{
  result = qword_1EC3CAC98;
  if (!qword_1EC3CAC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CAC98);
  }

  return result;
}

unint64_t sub_1C989A824()
{
  result = qword_1EC3CACA0;
  if (!qword_1EC3CACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CACA0);
  }

  return result;
}

unint64_t sub_1C989A87C()
{
  result = qword_1EC3CACA8;
  if (!qword_1EC3CACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CACA8);
  }

  return result;
}

unint64_t sub_1C989A8D4()
{
  result = qword_1EC3CACB0;
  if (!qword_1EC3CACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CACB0);
  }

  return result;
}

unint64_t sub_1C989A92C()
{
  result = qword_1EC3CACB8;
  if (!qword_1EC3CACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CACB8);
  }

  return result;
}

unint64_t sub_1C989A984()
{
  result = qword_1EC3CACC0;
  if (!qword_1EC3CACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CACC0);
  }

  return result;
}

BOOL sub_1C989A9E4()
{
  sub_1C97C2CD8();
  v3 = (v2 + 40);
  v4 = *(v2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = *v3;
    v9[0] = *(v3 - 1);
    v9[1] = v5;

    v6 = v1(v9);
    if (v0)
    {

      return v4 != 0;
    }

    v7 = v6;
    v3 += 2;
  }

  while ((v7 & 1) == 0);
  return v4 != 0;
}

void sub_1C989AA8C(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_1C97BDEE0();
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1CCA912B0](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

uint64_t sub_1C989AB80(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (*(a3 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v8)))));
      v14 = v13[1];
      v18[0] = *v13;
      v18[1] = v14;

      v15 = v19(v18);
      if (v3)
      {

        return v17 & 1;
      }

      v16 = v15;

      if (v16)
      {
        break;
      }

      v8 &= v8 - 1;
      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v17 = 1;
    return v17 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        v17 = 0;
        return v17 & 1;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1C989ACF0(char a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      v5 = qword_1EC3D3020 == -1;
      if (qword_1EC3D3020 == -1)
      {
        v6 = 0;
      }

      else
      {
        v6 = qword_1EC3D3020;
      }

      sub_1C9A924A8();
      sub_1C989C4AC();
      sub_1C97F07FC();
      v7 = swift_allocObject();
      v8 = &unk_1F4929CB0;
      *(v7 + 16) = &unk_1F4929CB0;
      v9 = sub_1C989C208;
      break;
    case 2:
      v5 = qword_1EC3D3030 == -1;
      if (qword_1EC3D3030 == -1)
      {
        v6 = 0;
      }

      else
      {
        v6 = qword_1EC3D3030;
      }

      sub_1C9A924A8();
      sub_1C989C4AC();
      sub_1C97F07FC();
      v7 = swift_allocObject();
      v8 = &unk_1F4929CD8;
      *(v7 + 16) = &unk_1F4929CD8;
      v9 = sub_1C989C4A8;
      break;
    case 3:
      v5 = qword_1EC3D3040 == -1;
      if (qword_1EC3D3040 == -1)
      {
        v6 = 0;
      }

      else
      {
        v6 = qword_1EC3D3040;
      }

      sub_1C97F07FC();
      swift_allocObject();
      sub_1C989C4B8();
      v8 = &unk_1F4929D00;
      *(v7 + 16) = &unk_1F4929D00;
      v9 = sub_1C989C4A8;
      break;
    case 4:
      v5 = qword_1EC3D3048 == -1;
      if (qword_1EC3D3048 == -1)
      {
        v6 = 0;
      }

      else
      {
        v6 = qword_1EC3D3048;
      }

      sub_1C97F07FC();
      swift_allocObject();
      sub_1C989C4B8();
      v8 = &unk_1F4929D28;
      *(v7 + 16) = &unk_1F4929D28;
      v9 = sub_1C989C4A8;
      break;
    case 5:
      v5 = qword_1EC3D3050 == -1;
      if (qword_1EC3D3050 == -1)
      {
        v6 = 0;
      }

      else
      {
        v6 = qword_1EC3D3050;
      }

      sub_1C9A924A8();
      sub_1C989C4AC();
      sub_1C97F07FC();
      v7 = swift_allocObject();
      v8 = &unk_1F4929D50;
      *(v7 + 16) = &unk_1F4929D50;
      v9 = sub_1C989C200;
      break;
    case 6:
      v5 = qword_1EC3D30D8 == -1;
      if (qword_1EC3D30D8 == -1)
      {
        v6 = 0;
      }

      else
      {
        v6 = qword_1EC3D30D8;
      }

      sub_1C97F07FC();
      swift_allocObject();
      sub_1C989C4B8();
      v8 = 0;
      *(v7 + 16) = 0;
      v9 = sub_1C989C1F8;
      break;
    case 7:
      v5 = qword_1EC3D30E0 == -1;
      if (qword_1EC3D30E0 == -1)
      {
        v6 = 0;
      }

      else
      {
        v6 = qword_1EC3D30E0;
      }

      sub_1C97F07FC();
      swift_allocObject();
      sub_1C989C4B8();
      v8 = &unk_1F4929DA0;
      *(v7 + 16) = &unk_1F4929DA0;
      v9 = sub_1C989C4A8;
      break;
    default:
      v5 = qword_1EC3D3010 == -1;
      if (qword_1EC3D3010 == -1)
      {
        v6 = 0;
      }

      else
      {
        v6 = qword_1EC3D3010;
      }

      sub_1C9A924A8();
      sub_1C989C4AC();
      sub_1C97F07FC();
      v7 = swift_allocObject();
      v8 = &unk_1F4929C88;
      *(v7 + 16) = &unk_1F4929C88;
      v9 = sub_1C989C4A8;
      break;
  }

  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v2;
  *(a2 + 24) = v3;
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
  *(a2 + 48) = v7;
}

uint64_t sub_1C989AFF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EC3C5E08 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &qword_1EC3D33B0, 0x41uLL);
  memcpy(a2, &qword_1EC3D33B0, 0x41uLL);
  *(a2 + 48) = 1;
  sub_1C97A6264(__dst, &v5);

  *(a2 + 40) = a1;
  return result;
}

uint64_t sub_1C989B0A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_1EC3C5E08 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &qword_1EC3D33B0, 0x41uLL);
  memcpy(a2, &qword_1EC3D33B0, 0x41uLL);
  *(a2 + 48) = 1;
  v4 = sub_1C9A924A8();
  v6 = v5;
  sub_1C97A6264(__dst, &v11);

  *a2 = v4;
  a2[1] = v6;
  v7 = sub_1C9A924A8();
  v9 = v8;

  a2[2] = v7;
  a2[3] = v9;

  a2[5] = a1;
  return result;
}

uint64_t sub_1C989B1B4()
{
  v15 = MEMORY[0x1E69E7CC0];
  sub_1C97B79DC(0, 8, 0);
  for (i = 0; ; ++i)
  {
    v1 = byte_1F4929C60[i + 32];
    sub_1C989ACF0(v1, &v16);
    v2 = v16;
    v3 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v8 = *(v15 + 16);
    v7 = *(v15 + 24);
    if (v8 >= v7 >> 1)
    {
      v11 = v20;
      v12 = v18;
      sub_1C97B79DC((v7 > 1), v8 + 1, 1);
      v6 = v11;
      v4 = v12;
    }

    *(v15 + 16) = v8 + 1;
    v9 = v15 + (v8 << 6);
    *(v9 + 32) = v1;
    *(v9 + 36) = *&v14[3];
    *(v9 + 33) = *v14;
    *(v9 + 40) = v2;
    *(v9 + 48) = v3;
    *(v9 + 52) = *&v13[3];
    *(v9 + 49) = *v13;
    *(v9 + 56) = v4;
    *(v9 + 72) = v5;
    *(v9 + 80) = v6;
    if (i == 7)
    {
      break;
    }
  }

  return sub_1C992C1E0(v15);
}

uint64_t sub_1C989B2F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_1C989B1B4();
  v5 = 0;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = v11 | (v5 << 6);
    v13 = *(result + 56) + 56 * v12;
    if ((*(v13 + 8) & 1) == 0 && *v13 == a1)
    {
      v15 = *(v13 + 40);
      v14 = *(v13 + 48);
      v17 = *(v13 + 24);
      v16 = *(v13 + 32);
      v18 = *(v13 + 16);
      v19 = *(*(result + 48) + v12);

LABEL_13:
      *a2 = v19;
      a2[1] = a1;
      a2[2] = 0;
      a2[3] = v18;
      a2[4] = v17;
      a2[5] = v16;
      a2[6] = v15;
      a2[7] = v14;
      return result;
    }
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      a1 = 0;
      v18 = 0;
      v17 = 0;
      v16 = 0;
      v15 = 0;
      v14 = 0;
      v19 = 0;
      goto LABEL_13;
    }

    v8 = *(result + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C989B454(char a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (a1 != 8)
  {
    sub_1C989ACF0(a1, v11);
    if (v11[3])
    {
      v4 = v11[2];
    }

    else
    {
      if (!a3)
      {
        v10[0] = v12;
        sub_1C97F9D3C(v10, &qword_1EC3C7DB8, &qword_1C9AA0740);

        goto LABEL_10;
      }

      v10[1] = 0xE300000000000000;
      MEMORY[0x1CCA90230](v4, a3);
      v4 = 4475201;
    }

    v10[0] = v12;
    sub_1C97F9D3C(v10, &qword_1EC3C7DB8, &qword_1C9AA0740);

    return v4;
  }

  if (a3)
  {
    MEMORY[0x1CCA90230](a2, a3);
    return 4475201;
  }

LABEL_10:
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v5 = sub_1C9A91B58();
  sub_1C97BFF6C(v5, qword_1EC3D3108);
  v6 = sub_1C9A91B38();
  v7 = sub_1C9A92FA8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1C9788000, v6, v7, "Unsupported product type", v8, 2u);
    MEMORY[0x1CCA93280](v8, -1, -1);
  }

  return v4;
}

__CFString *sub_1C989B614()
{
  v0 = off_1EC3D3008;
  v1 = MGCopyAnswer();

  if (!v1)
  {
    goto LABEL_5;
  }

  v3[1] = v1;
  swift_unknownObjectRetain();
  if (!swift_dynamicCast())
  {
    swift_unknownObjectRelease();
LABEL_5:
    sub_1C989C4B8();
    return v0;
  }

  v0 = v3;
  sub_1C9A93A98();
  sub_1C989C4AC();
  swift_unknownObjectRelease();
  return v0;
}

__CFString *sub_1C989B6E0()
{
  v0 = sub_1C989B614();
  v2 = v1;
  v3 = MGGetProductType();
  sub_1C989B2F8(v3, v6);
  if (v6[6])
  {
    v4 = v6[0];
  }

  else
  {
    v4 = 8;
  }

  sub_1C989B454(v4, v0, v2);
  sub_1C989C4AC();

  return v0;
}

uint64_t sub_1C989B780()
{
  sub_1C97C2CD8();
  if (sub_1C9A92538())
  {
    result = sub_1C98BBE10(v1, v0);
    if (v4)
    {
      v5 = sub_1C9A923B8();
      v7 = v6;

      sub_1C989B928(1uLL, v1, v0);
      sub_1C989C1A4();

      sub_1C9A92578();

      sub_1C9A935B8();

      MEMORY[0x1CCA90230](v5, v7);

      MEMORY[0x1CCA90230](0x6E41646E756F532FLL, 0xEE00736973796C61);
      return 0xD000000000000017;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    type metadata accessor for SNError(v2);
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD00000000000001ELL, 0x80000001C9AD7D30);
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1C989B928(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_1C9A92568();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_1C9A92628();

      return v7;
    }
  }

  __break(1u);
  return result;
}

BOOL static SNPlatformUtils.localhostIsVM()()
{
  v0 = swift_slowAlloc();
  sub_1C989BC08(0xD000000000000013, 0x80000001C9AD7CD0, v0);
  v1 = *v0;
  MEMORY[0x1CCA93280](v0, -1, -1);
  return v1 != 0;
}

uint64_t sub_1C989BA9C(const char *a1, void *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 4;
  v2 = sysctlbyname(a1, a2, v5, 0, 0);
  return sub_1C989BB10(v2, v3);
}

uint64_t sub_1C989BB10(uint64_t result, double a2)
{
  if (result)
  {
    type metadata accessor for SNError(a2);
    sub_1C9A935B8();

    v2 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v2);

    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD00000000000001FLL, 0x80000001C9AD7D50);

    return swift_willThrow();
  }

  return result;
}

void *sub_1C989BC08(uint64_t a2, uint64_t a3, void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = a1;
  if ((a3 & 0x1000000000000000) != 0)
  {
    return sub_1C9A935A8();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    *v11 = a2;
    v12 = a3 & 0xFFFFFFFFFFFFFFLL;
    v10 = 4;
    v5 = v11;
    v6 = &v10;
    goto LABEL_6;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    return sub_1C9A935A8();
  }

  *v11 = 4;
  v5 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
  v6 = v11;
LABEL_6:
  v7 = sysctlbyname(v5, a1, v6, 0, 0);
  return sub_1C989BB10(v7, v8);
}

_BYTE *storeEnumTagSinglePayload for SNPlatformUtils(_BYTE *result, int a2, int a3)
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

void sub_1C989BDBC()
{
  v7 = qword_1EC3D3058;
  v8 = qword_1EC3D3060;
  v9 = qword_1EC3D3068;
  v10 = qword_1EC3D3070;
  v11 = qword_1EC3D3098;
  v12 = qword_1EC3D30A0;
  v13 = qword_1EC3D30A8;
  v14 = qword_1EC3D30B0;
  v15 = qword_1EC3D30E0;
  v16 = qword_1EC3D30E8;
  v17 = qword_1EC3D3078;
  v18 = qword_1EC3D3080;
  v19 = qword_1EC3D3088;
  v20 = qword_1EC3D3090;
  v21 = qword_1EC3D30B8;
  v22 = qword_1EC3D30C0;
  v23 = qword_1EC3D30C8;
  v24 = qword_1EC3D30D0;
  v0 = 32;
  v1 = MEMORY[0x1E69E7CC0];
  do
  {
    v2 = *&v6[v0];
    if (v2 != -1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C97E5AB0();
        v1 = v4;
      }

      v3 = *(v1 + 16);
      if (v3 >= *(v1 + 24) >> 1)
      {
        sub_1C97E5AB0();
        v1 = v5;
      }

      *(v1 + 16) = v3 + 1;
      *(v1 + 8 * v3 + 32) = v2;
    }

    v0 += 8;
  }

  while (v0 != 176);
  qword_1EC3D31E8 = v1;
}

BOOL sub_1C989BF88(double a1)
{
  v1 = [objc_opt_self() mainBundle];
  v2 = sub_1C9A92478();
  v3 = [v1 objectForInfoDictionaryKey_];

  if (v3)
  {
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    sub_1C97F9D3C(v9, &unk_1EC3C5E60, qword_1C9A9AE10);
    return 0;
  }

  sub_1C97A2CEC(&qword_1EC3C7BF0, &unk_1C9AA0050);
  v4 = swift_dynamicCast();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  *&v9[0] = 0x69737365636F7270;
  *(&v9[0] + 1) = 0xEA0000000000676ELL;
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1C989A9E4();

  return v5;
}

uint64_t sub_1C989C12C()
{
  sub_1C97C2CD8();
  sub_1C9841D44(v0);
  return sub_1C9A931E8() & 1;
}

unint64_t sub_1C989C1A4()
{
  result = qword_1EC3CACC8;
  if (!qword_1EC3CACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CACC8);
  }

  return result;
}

__n128 sub_1C989C240(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C989C25C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C989C29C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1C989C2F4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C989C3D0()
{
  result = qword_1EC3CACD0;
  if (!qword_1EC3CACD0)
  {
    sub_1C97AA4F0(&qword_1EC3CACD8, qword_1C9AAD520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CACD0);
  }

  return result;
}

unint64_t sub_1C989C438()
{
  result = qword_1EC3C5668;
  if (!qword_1EC3C5668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C5668);
  }

  return result;
}

void sub_1C989C4C4(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, void *a8@<X7>, uint64_t x8_0@<X8>, unint64_t a9, uint64_t a10, unint64_t *a11, uint64_t a12, uint64_t a13)
{
  sub_1C97DFA9C();
  if (v21)
  {
    v25 = a4 - a3;
    if (__OFSUB__(a4, a3))
    {
      goto LABEL_18;
    }

    if ((v25 & 0x8000000000000000) != 0)
    {
      goto LABEL_19;
    }

    if (HIDWORD(v25))
    {
      goto LABEL_20;
    }

    v37 = v21;
    *v21 = v25;
    a4 = *a5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a5 = a4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v27 = *(a4 + 16);
      v36[0] = a4 + 32;
      v36[1] = v27;
      v28 = a5[3];
      v29 = a5[4];
      if (__OFSUB__(v29, v28))
      {
        break;
      }

      v30 = sub_1C97E4D08(v29 - v28, a5, v36);
      if (!v25)
      {
LABEL_14:
        v34 = a8;
        sub_1C989C804(a7, v34, v37, a9, a10, a11, a12, a13, x8_0);

        *a5 = a4;

        return;
      }

      if (v25 > *(v30 + 16))
      {
        goto LABEL_23;
      }

      v31 = v37 + 4;
      v32 = (v30 + 40);
      while (1)
      {
        v33 = a6 * *v32;
        if ((a6 * *v32) >> 64 != v33 >> 63)
        {
          break;
        }

        if (v33 < 0)
        {
          goto LABEL_16;
        }

        if (HIDWORD(v33))
        {
          goto LABEL_17;
        }

        sub_1C989D69C(v31);
        if (!--v25)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1C97E72E0(a4, v22, v23, v24);
      a4 = v35;
      *a5 = v35;
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  __break(1u);
}